# frozen_string_literal: true

# This is generated code!

module Aws::QBusiness
  # This module contains a schema composed of shapes used by the client.
  module Schema

    APISchema = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.qbusiness#APISchema", name: "APISchema")
    APISchemaType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.qbusiness#APISchemaType", name: "APISchemaType")
    AccessConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#AccessConfiguration", name: "AccessConfiguration")
    AccessControl = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#AccessControl", name: "AccessControl")
    AccessControls = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.qbusiness#AccessControls", name: "AccessControls")
    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    ActionConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#ActionConfiguration", name: "ActionConfiguration")
    ActionConfigurationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.qbusiness#ActionConfigurationList", name: "ActionConfigurationList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    ActionExecution = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#ActionExecution", name: "ActionExecution")
    ActionExecutionEvent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#ActionExecutionEvent", name: "ActionExecutionEvent")
    ActionExecutionPayload = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.qbusiness#ActionExecutionPayload", name: "ActionExecutionPayload")
    ActionExecutionPayloadField = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#ActionExecutionPayloadField", name: "ActionExecutionPayloadField")
    ActionFilterConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#ActionFilterConfiguration", name: "ActionFilterConfiguration")
    ActionPayloadFieldKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qbusiness#ActionPayloadFieldKey", name: "ActionPayloadFieldKey", traits: {"smithy.api#length" => {"min" => 1}})
    ActionPayloadFieldNameSeparator = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qbusiness#ActionPayloadFieldNameSeparator", name: "ActionPayloadFieldNameSeparator", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    ActionPayloadFieldType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.qbusiness#ActionPayloadFieldType", name: "ActionPayloadFieldType")
    ActionPayloadFieldValue = ::Smithy::Schema::Shapes::DocumentShape.new(id: "com.amazonaws.qbusiness#ActionPayloadFieldValue", name: "ActionPayloadFieldValue")
    ActionReview = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#ActionReview", name: "ActionReview")
    ActionReviewEvent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#ActionReviewEvent", name: "ActionReviewEvent")
    ActionReviewPayload = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.qbusiness#ActionReviewPayload", name: "ActionReviewPayload")
    ActionReviewPayloadField = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#ActionReviewPayloadField", name: "ActionReviewPayloadField")
    ActionReviewPayloadFieldAllowedValue = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#ActionReviewPayloadFieldAllowedValue", name: "ActionReviewPayloadFieldAllowedValue")
    ActionReviewPayloadFieldAllowedValues = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.qbusiness#ActionReviewPayloadFieldAllowedValues", name: "ActionReviewPayloadFieldAllowedValues")
    ActionReviewPayloadFieldArrayItemJsonSchema = ::Smithy::Schema::Shapes::DocumentShape.new(id: "com.amazonaws.qbusiness#ActionReviewPayloadFieldArrayItemJsonSchema", name: "ActionReviewPayloadFieldArrayItemJsonSchema")
    ActionSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#ActionSummary", name: "ActionSummary")
    Actions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.qbusiness#Actions", name: "Actions")
    AmazonResourceName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qbusiness#AmazonResourceName", name: "AmazonResourceName", traits: {"smithy.api#length" => {"min" => 1, "max" => 1011}})
    Application = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#Application", name: "Application")
    ApplicationArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qbusiness#ApplicationArn", name: "ApplicationArn", traits: {"smithy.api#length" => {"min" => 0, "max" => 1284}, "smithy.api#pattern" => "^arn:[a-z0-9-\\.]{1,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[^/].{0,1023}$"})
    ApplicationId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qbusiness#ApplicationId", name: "ApplicationId", traits: {"smithy.api#length" => {"min" => 36, "max" => 36}, "smithy.api#pattern" => "^[a-zA-Z0-9][a-zA-Z0-9-]{35}$"})
    ApplicationName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qbusiness#ApplicationName", name: "ApplicationName", traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}, "smithy.api#pattern" => "^[a-zA-Z0-9][a-zA-Z0-9_-]*$"})
    ApplicationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.qbusiness#ApplicationStatus", name: "ApplicationStatus")
    Applications = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.qbusiness#Applications", name: "Applications")
    AppliedAttachmentsConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#AppliedAttachmentsConfiguration", name: "AppliedAttachmentsConfiguration")
    AppliedCreatorModeConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#AppliedCreatorModeConfiguration", name: "AppliedCreatorModeConfiguration")
    AppliedOrchestrationConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#AppliedOrchestrationConfiguration", name: "AppliedOrchestrationConfiguration")
    AssociatePermissionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#AssociatePermissionRequest", name: "AssociatePermissionRequest")
    AssociatePermissionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#AssociatePermissionResponse", name: "AssociatePermissionResponse")
    AssociatedGroup = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#AssociatedGroup", name: "AssociatedGroup")
    AssociatedGroups = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.qbusiness#AssociatedGroups", name: "AssociatedGroups")
    AssociatedUser = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#AssociatedUser", name: "AssociatedUser")
    AssociatedUsers = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.qbusiness#AssociatedUsers", name: "AssociatedUsers")
    Attachment = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#Attachment", name: "Attachment")
    AttachmentId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qbusiness#AttachmentId", name: "AttachmentId", traits: {"smithy.api#pattern" => "^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$"})
    AttachmentInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#AttachmentInput", name: "AttachmentInput")
    AttachmentInputEvent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#AttachmentInputEvent", name: "AttachmentInputEvent")
    AttachmentList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.qbusiness#AttachmentList", name: "AttachmentList")
    AttachmentName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qbusiness#AttachmentName", name: "AttachmentName", traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}, "smithy.api#pattern" => "^\\P{C}*$"})
    AttachmentOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#AttachmentOutput", name: "AttachmentOutput")
    AttachmentStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.qbusiness#AttachmentStatus", name: "AttachmentStatus")
    AttachmentsConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#AttachmentsConfiguration", name: "AttachmentsConfiguration")
    AttachmentsControlMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.qbusiness#AttachmentsControlMode", name: "AttachmentsControlMode")
    AttachmentsInput = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.qbusiness#AttachmentsInput", name: "AttachmentsInput", traits: {"smithy.api#length" => {"min" => 1}})
    AttachmentsOutput = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.qbusiness#AttachmentsOutput", name: "AttachmentsOutput")
    AttributeFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#AttributeFilter", name: "AttributeFilter")
    AttributeFilters = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.qbusiness#AttributeFilters", name: "AttributeFilters")
    AttributeType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.qbusiness#AttributeType", name: "AttributeType")
    AttributeValueOperator = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.qbusiness#AttributeValueOperator", name: "AttributeValueOperator")
    AudioExtractionConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#AudioExtractionConfiguration", name: "AudioExtractionConfiguration")
    AudioExtractionStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.qbusiness#AudioExtractionStatus", name: "AudioExtractionStatus")
    AudioExtractionType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.qbusiness#AudioExtractionType", name: "AudioExtractionType")
    AudioSourceDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#AudioSourceDetails", name: "AudioSourceDetails")
    AuthChallengeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#AuthChallengeRequest", name: "AuthChallengeRequest")
    AuthChallengeRequestEvent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#AuthChallengeRequestEvent", name: "AuthChallengeRequestEvent")
    AuthChallengeResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#AuthChallengeResponse", name: "AuthChallengeResponse")
    AuthChallengeResponseEvent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#AuthChallengeResponseEvent", name: "AuthChallengeResponseEvent")
    AuthResponseKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qbusiness#AuthResponseKey", name: "AuthResponseKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    AuthResponseValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qbusiness#AuthResponseValue", name: "AuthResponseValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    AuthorizationResponseMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.qbusiness#AuthorizationResponseMap", name: "AuthorizationResponseMap")
    AutoSubscriptionConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#AutoSubscriptionConfiguration", name: "AutoSubscriptionConfiguration")
    AutoSubscriptionStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.qbusiness#AutoSubscriptionStatus", name: "AutoSubscriptionStatus")
    BasicAuthConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#BasicAuthConfiguration", name: "BasicAuthConfiguration")
    BatchDeleteDocumentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#BatchDeleteDocumentRequest", name: "BatchDeleteDocumentRequest")
    BatchDeleteDocumentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#BatchDeleteDocumentResponse", name: "BatchDeleteDocumentResponse")
    BatchPutDocumentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#BatchPutDocumentRequest", name: "BatchPutDocumentRequest")
    BatchPutDocumentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#BatchPutDocumentResponse", name: "BatchPutDocumentResponse")
    Blob = ::Smithy::Schema::Shapes::BlobShape.new(id: "com.amazonaws.qbusiness#Blob", name: "Blob")
    BlockedPhrase = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qbusiness#BlockedPhrase", name: "BlockedPhrase", traits: {"smithy.api#length" => {"max" => 36}, "smithy.api#pattern" => "^\\P{C}*$"})
    BlockedPhrases = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.qbusiness#BlockedPhrases", name: "BlockedPhrases")
    BlockedPhrasesConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#BlockedPhrasesConfiguration", name: "BlockedPhrasesConfiguration")
    BlockedPhrasesConfigurationUpdate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#BlockedPhrasesConfigurationUpdate", name: "BlockedPhrasesConfigurationUpdate")
    BoostingDurationInSeconds = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.qbusiness#BoostingDurationInSeconds", name: "BoostingDurationInSeconds", traits: {"smithy.api#range" => {"min" => 0, "max" => 999999999}})
    BrowserExtension = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qbusiness#BrowserExtension", name: "BrowserExtension", traits: {"smithy.api#enum" => [{"value" => "FIREFOX", "name" => "FIREFOX"}, {"value" => "CHROME", "name" => "CHROME"}]})
    BrowserExtensionConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#BrowserExtensionConfiguration", name: "BrowserExtensionConfiguration")
    BrowserExtensionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.qbusiness#BrowserExtensionList", name: "BrowserExtensionList", traits: {"smithy.api#length" => {"min" => 0, "max" => 2}, "smithy.api#uniqueItems" => {}})
    CancelSubscriptionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#CancelSubscriptionRequest", name: "CancelSubscriptionRequest")
    CancelSubscriptionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#CancelSubscriptionResponse", name: "CancelSubscriptionResponse")
    ChatInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#ChatInput", name: "ChatInput")
    ChatInputStream = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.qbusiness#ChatInputStream", name: "ChatInputStream", traits: {"smithy.api#streaming" => {}})
    ChatMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.qbusiness#ChatMode", name: "ChatMode")
    ChatModeConfiguration = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.qbusiness#ChatModeConfiguration", name: "ChatModeConfiguration")
    ChatOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#ChatOutput", name: "ChatOutput")
    ChatOutputStream = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.qbusiness#ChatOutputStream", name: "ChatOutputStream", traits: {"smithy.api#streaming" => {}})
    ChatResponseConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#ChatResponseConfiguration", name: "ChatResponseConfiguration")
    ChatResponseConfigurationArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qbusiness#ChatResponseConfigurationArn", name: "ChatResponseConfigurationArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 1284}, "smithy.api#pattern" => "^arn:[a-z0-9-\\.]{1,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[^/].{0,1023}$"})
    ChatResponseConfigurationDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#ChatResponseConfigurationDetail", name: "ChatResponseConfigurationDetail")
    ChatResponseConfigurationId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qbusiness#ChatResponseConfigurationId", name: "ChatResponseConfigurationId", traits: {"smithy.api#length" => {"min" => 36, "max" => 36}, "smithy.api#pattern" => "^[a-zA-Z0-9][a-zA-Z0-9-]{35}$"})
    ChatResponseConfigurationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.qbusiness#ChatResponseConfigurationStatus", name: "ChatResponseConfigurationStatus")
    ChatResponseConfigurations = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.qbusiness#ChatResponseConfigurations", name: "ChatResponseConfigurations")
    ChatSyncInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#ChatSyncInput", name: "ChatSyncInput")
    ChatSyncOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#ChatSyncOutput", name: "ChatSyncOutput")
    CheckDocumentAccessRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#CheckDocumentAccessRequest", name: "CheckDocumentAccessRequest")
    CheckDocumentAccessResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#CheckDocumentAccessResponse", name: "CheckDocumentAccessResponse")
    ClientIdForOIDC = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qbusiness#ClientIdForOIDC", name: "ClientIdForOIDC", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z0-9_.:/()*?=-]*$"})
    ClientIdsForOIDC = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.qbusiness#ClientIdsForOIDC", name: "ClientIdsForOIDC")
    ClientNamespace = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qbusiness#ClientNamespace", name: "ClientNamespace", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9._-]*$"})
    ClientToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qbusiness#ClientToken", name: "ClientToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    ConfigurationEvent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#ConfigurationEvent", name: "ConfigurationEvent")
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ContentBlockerRule = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#ContentBlockerRule", name: "ContentBlockerRule")
    ContentRetrievalRule = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#ContentRetrievalRule", name: "ContentRetrievalRule")
    ContentSource = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.qbusiness#ContentSource", name: "ContentSource")
    ContentType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.qbusiness#ContentType", name: "ContentType")
    Conversation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#Conversation", name: "Conversation")
    ConversationId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qbusiness#ConversationId", name: "ConversationId", traits: {"smithy.api#length" => {"min" => 36, "max" => 36}, "smithy.api#pattern" => "^[a-zA-Z0-9][a-zA-Z0-9-]{35}$"})
    ConversationSource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#ConversationSource", name: "ConversationSource")
    ConversationTitle = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qbusiness#ConversationTitle", name: "ConversationTitle")
    Conversations = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.qbusiness#Conversations", name: "Conversations")
    CopyFromSource = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.qbusiness#CopyFromSource", name: "CopyFromSource")
    CreateAnonymousWebExperienceUrlRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#CreateAnonymousWebExperienceUrlRequest", name: "CreateAnonymousWebExperienceUrlRequest")
    CreateAnonymousWebExperienceUrlResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#CreateAnonymousWebExperienceUrlResponse", name: "CreateAnonymousWebExperienceUrlResponse")
    CreateApplicationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#CreateApplicationRequest", name: "CreateApplicationRequest")
    CreateApplicationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#CreateApplicationResponse", name: "CreateApplicationResponse")
    CreateChatResponseConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#CreateChatResponseConfigurationRequest", name: "CreateChatResponseConfigurationRequest")
    CreateChatResponseConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#CreateChatResponseConfigurationResponse", name: "CreateChatResponseConfigurationResponse")
    CreateDataAccessorRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#CreateDataAccessorRequest", name: "CreateDataAccessorRequest")
    CreateDataAccessorResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#CreateDataAccessorResponse", name: "CreateDataAccessorResponse")
    CreateDataSourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#CreateDataSourceRequest", name: "CreateDataSourceRequest")
    CreateDataSourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#CreateDataSourceResponse", name: "CreateDataSourceResponse")
    CreateIndexRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#CreateIndexRequest", name: "CreateIndexRequest")
    CreateIndexResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#CreateIndexResponse", name: "CreateIndexResponse")
    CreatePluginRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#CreatePluginRequest", name: "CreatePluginRequest")
    CreatePluginResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#CreatePluginResponse", name: "CreatePluginResponse")
    CreateRetrieverRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#CreateRetrieverRequest", name: "CreateRetrieverRequest")
    CreateRetrieverResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#CreateRetrieverResponse", name: "CreateRetrieverResponse")
    CreateSubscriptionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#CreateSubscriptionRequest", name: "CreateSubscriptionRequest")
    CreateSubscriptionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#CreateSubscriptionResponse", name: "CreateSubscriptionResponse")
    CreateUserRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#CreateUserRequest", name: "CreateUserRequest")
    CreateUserResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#CreateUserResponse", name: "CreateUserResponse")
    CreateWebExperienceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#CreateWebExperienceRequest", name: "CreateWebExperienceRequest")
    CreateWebExperienceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#CreateWebExperienceResponse", name: "CreateWebExperienceResponse")
    CreatorModeConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#CreatorModeConfiguration", name: "CreatorModeConfiguration")
    CreatorModeControl = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.qbusiness#CreatorModeControl", name: "CreatorModeControl")
    CustomCSSUrl = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qbusiness#CustomCSSUrl", name: "CustomCSSUrl", traits: {"smithy.api#length" => {"min" => 0, "max" => 1284}, "smithy.api#pattern" => "^(https?://[a-zA-Z0-9-_.+%/]+\\.css)?$"})
    CustomPluginConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#CustomPluginConfiguration", name: "CustomPluginConfiguration")
    CustomizationConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#CustomizationConfiguration", name: "CustomizationConfiguration")
    DataAccessor = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#DataAccessor", name: "DataAccessor")
    DataAccessorArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qbusiness#DataAccessorArn", name: "DataAccessorArn", traits: {"smithy.api#length" => {"min" => 0, "max" => 1284}, "smithy.api#pattern" => "^arn:[a-z0-9-\\.]{1,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[^/].{0,1023}$"})
    DataAccessorAuthenticationConfiguration = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.qbusiness#DataAccessorAuthenticationConfiguration", name: "DataAccessorAuthenticationConfiguration")
    DataAccessorAuthenticationDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#DataAccessorAuthenticationDetail", name: "DataAccessorAuthenticationDetail")
    DataAccessorAuthenticationType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.qbusiness#DataAccessorAuthenticationType", name: "DataAccessorAuthenticationType")
    DataAccessorExternalId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qbusiness#DataAccessorExternalId", name: "DataAccessorExternalId", traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}, "smithy.api#pattern" => "^[a-zA-Z0-9][a-zA-Z0-9_-]*$"})
    DataAccessorExternalIds = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.qbusiness#DataAccessorExternalIds", name: "DataAccessorExternalIds", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    DataAccessorId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qbusiness#DataAccessorId", name: "DataAccessorId", traits: {"smithy.api#length" => {"min" => 36, "max" => 36}, "smithy.api#pattern" => "^[a-zA-Z0-9][a-zA-Z0-9-]{35}$"})
    DataAccessorIdcTrustedTokenIssuerConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#DataAccessorIdcTrustedTokenIssuerConfiguration", name: "DataAccessorIdcTrustedTokenIssuerConfiguration")
    DataAccessorName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qbusiness#DataAccessorName", name: "DataAccessorName", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[a-zA-Z0-9][a-zA-Z0-9_-]*$", "smithy.api#sensitive" => {}})
    DataAccessors = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.qbusiness#DataAccessors", name: "DataAccessors")
    DataSource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#DataSource", name: "DataSource")
    DataSourceArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qbusiness#DataSourceArn", name: "DataSourceArn", traits: {"smithy.api#length" => {"min" => 0, "max" => 1284}, "smithy.api#pattern" => "^arn:[a-z0-9-\\.]{1,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[^/].{0,1023}$"})
    DataSourceConfiguration = ::Smithy::Schema::Shapes::DocumentShape.new(id: "com.amazonaws.qbusiness#DataSourceConfiguration", name: "DataSourceConfiguration")
    DataSourceId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qbusiness#DataSourceId", name: "DataSourceId", traits: {"smithy.api#length" => {"min" => 36, "max" => 36}, "smithy.api#pattern" => "^[a-zA-Z0-9][a-zA-Z0-9-]{35}$"})
    DataSourceIds = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.qbusiness#DataSourceIds", name: "DataSourceIds", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    DataSourceName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qbusiness#DataSourceName", name: "DataSourceName", traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}, "smithy.api#pattern" => "^[a-zA-Z0-9][a-zA-Z0-9_-]*$"})
    DataSourceStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.qbusiness#DataSourceStatus", name: "DataSourceStatus")
    DataSourceSyncJob = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#DataSourceSyncJob", name: "DataSourceSyncJob")
    DataSourceSyncJobMetrics = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#DataSourceSyncJobMetrics", name: "DataSourceSyncJobMetrics")
    DataSourceSyncJobStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.qbusiness#DataSourceSyncJobStatus", name: "DataSourceSyncJobStatus")
    DataSourceSyncJobs = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.qbusiness#DataSourceSyncJobs", name: "DataSourceSyncJobs")
    DataSourceUserId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qbusiness#DataSourceUserId", name: "DataSourceUserId", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^\\P{C}*$"})
    DataSourceVpcConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#DataSourceVpcConfiguration", name: "DataSourceVpcConfiguration")
    DataSources = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.qbusiness#DataSources", name: "DataSources")
    DateAttributeBoostingConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#DateAttributeBoostingConfiguration", name: "DateAttributeBoostingConfiguration")
    DeleteApplicationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#DeleteApplicationRequest", name: "DeleteApplicationRequest")
    DeleteApplicationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#DeleteApplicationResponse", name: "DeleteApplicationResponse")
    DeleteAttachmentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#DeleteAttachmentRequest", name: "DeleteAttachmentRequest")
    DeleteAttachmentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#DeleteAttachmentResponse", name: "DeleteAttachmentResponse")
    DeleteChatControlsConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#DeleteChatControlsConfigurationRequest", name: "DeleteChatControlsConfigurationRequest")
    DeleteChatControlsConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#DeleteChatControlsConfigurationResponse", name: "DeleteChatControlsConfigurationResponse")
    DeleteChatResponseConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#DeleteChatResponseConfigurationRequest", name: "DeleteChatResponseConfigurationRequest")
    DeleteChatResponseConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#DeleteChatResponseConfigurationResponse", name: "DeleteChatResponseConfigurationResponse")
    DeleteConversationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#DeleteConversationRequest", name: "DeleteConversationRequest")
    DeleteConversationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#DeleteConversationResponse", name: "DeleteConversationResponse")
    DeleteDataAccessorRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#DeleteDataAccessorRequest", name: "DeleteDataAccessorRequest")
    DeleteDataAccessorResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#DeleteDataAccessorResponse", name: "DeleteDataAccessorResponse")
    DeleteDataSourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#DeleteDataSourceRequest", name: "DeleteDataSourceRequest")
    DeleteDataSourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#DeleteDataSourceResponse", name: "DeleteDataSourceResponse")
    DeleteDocument = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#DeleteDocument", name: "DeleteDocument")
    DeleteDocuments = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.qbusiness#DeleteDocuments", name: "DeleteDocuments")
    DeleteGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#DeleteGroupRequest", name: "DeleteGroupRequest")
    DeleteGroupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#DeleteGroupResponse", name: "DeleteGroupResponse")
    DeleteIndexRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#DeleteIndexRequest", name: "DeleteIndexRequest")
    DeleteIndexResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#DeleteIndexResponse", name: "DeleteIndexResponse")
    DeletePluginRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#DeletePluginRequest", name: "DeletePluginRequest")
    DeletePluginResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#DeletePluginResponse", name: "DeletePluginResponse")
    DeleteRetrieverRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#DeleteRetrieverRequest", name: "DeleteRetrieverRequest")
    DeleteRetrieverResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#DeleteRetrieverResponse", name: "DeleteRetrieverResponse")
    DeleteUserRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#DeleteUserRequest", name: "DeleteUserRequest")
    DeleteUserResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#DeleteUserResponse", name: "DeleteUserResponse")
    DeleteWebExperienceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#DeleteWebExperienceRequest", name: "DeleteWebExperienceRequest")
    DeleteWebExperienceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#DeleteWebExperienceResponse", name: "DeleteWebExperienceResponse")
    Description = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qbusiness#Description", name: "Description", traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}, "smithy.api#pattern" => "^[\\s\\S]*$"})
    DisassociatePermissionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#DisassociatePermissionRequest", name: "DisassociatePermissionRequest")
    DisassociatePermissionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#DisassociatePermissionResponse", name: "DisassociatePermissionResponse")
    DisplayName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qbusiness#DisplayName", name: "DisplayName", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    Document = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#Document", name: "Document")
    DocumentAcl = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#DocumentAcl", name: "DocumentAcl")
    DocumentAclCondition = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#DocumentAclCondition", name: "DocumentAclCondition")
    DocumentAclConditions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.qbusiness#DocumentAclConditions", name: "DocumentAclConditions")
    DocumentAclGroup = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#DocumentAclGroup", name: "DocumentAclGroup")
    DocumentAclGroups = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.qbusiness#DocumentAclGroups", name: "DocumentAclGroups")
    DocumentAclMembership = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#DocumentAclMembership", name: "DocumentAclMembership")
    DocumentAclUser = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#DocumentAclUser", name: "DocumentAclUser")
    DocumentAclUsers = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.qbusiness#DocumentAclUsers", name: "DocumentAclUsers")
    DocumentAttribute = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#DocumentAttribute", name: "DocumentAttribute")
    DocumentAttributeBoostingConfiguration = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.qbusiness#DocumentAttributeBoostingConfiguration", name: "DocumentAttributeBoostingConfiguration")
    DocumentAttributeBoostingLevel = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.qbusiness#DocumentAttributeBoostingLevel", name: "DocumentAttributeBoostingLevel")
    DocumentAttributeBoostingOverrideMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.qbusiness#DocumentAttributeBoostingOverrideMap", name: "DocumentAttributeBoostingOverrideMap", traits: {"smithy.api#length" => {"min" => 1}})
    DocumentAttributeCondition = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#DocumentAttributeCondition", name: "DocumentAttributeCondition")
    DocumentAttributeConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#DocumentAttributeConfiguration", name: "DocumentAttributeConfiguration")
    DocumentAttributeConfigurations = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.qbusiness#DocumentAttributeConfigurations", name: "DocumentAttributeConfigurations", traits: {"smithy.api#length" => {"min" => 1, "max" => 500}})
    DocumentAttributeKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qbusiness#DocumentAttributeKey", name: "DocumentAttributeKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}, "smithy.api#pattern" => "^[a-zA-Z0-9_][a-zA-Z0-9_-]*$"})
    DocumentAttributeStringListValue = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.qbusiness#DocumentAttributeStringListValue", name: "DocumentAttributeStringListValue")
    DocumentAttributeStringValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qbusiness#DocumentAttributeStringValue", name: "DocumentAttributeStringValue", traits: {"smithy.api#length" => {"max" => 2048}})
    DocumentAttributeTarget = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#DocumentAttributeTarget", name: "DocumentAttributeTarget")
    DocumentAttributeValue = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.qbusiness#DocumentAttributeValue", name: "DocumentAttributeValue")
    DocumentAttributes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.qbusiness#DocumentAttributes", name: "DocumentAttributes", traits: {"smithy.api#length" => {"min" => 1, "max" => 500}})
    DocumentContent = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.qbusiness#DocumentContent", name: "DocumentContent")
    DocumentContentOperator = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.qbusiness#DocumentContentOperator", name: "DocumentContentOperator")
    DocumentDetailList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.qbusiness#DocumentDetailList", name: "DocumentDetailList")
    DocumentDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#DocumentDetails", name: "DocumentDetails")
    DocumentEnrichmentConditionOperator = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.qbusiness#DocumentEnrichmentConditionOperator", name: "DocumentEnrichmentConditionOperator")
    DocumentEnrichmentConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#DocumentEnrichmentConfiguration", name: "DocumentEnrichmentConfiguration")
    DocumentId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qbusiness#DocumentId", name: "DocumentId", traits: {"smithy.api#length" => {"min" => 1, "max" => 1825}, "smithy.api#pattern" => "^\\P{C}*$"})
    DocumentMetadataConfigurationName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qbusiness#DocumentMetadataConfigurationName", name: "DocumentMetadataConfigurationName", traits: {"smithy.api#length" => {"min" => 1, "max" => 30}, "smithy.api#pattern" => "^[a-zA-Z0-9_][a-zA-Z0-9_-]*$"})
    DocumentStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.qbusiness#DocumentStatus", name: "DocumentStatus")
    Documents = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.qbusiness#Documents", name: "Documents", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    EligibleDataSource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#EligibleDataSource", name: "EligibleDataSource")
    EligibleDataSources = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.qbusiness#EligibleDataSources", name: "EligibleDataSources", traits: {"smithy.api#length" => {"max" => 5}})
    EncryptionConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#EncryptionConfiguration", name: "EncryptionConfiguration")
    EndOfInputEvent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#EndOfInputEvent", name: "EndOfInputEvent")
    ErrorCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.qbusiness#ErrorCode", name: "ErrorCode")
    ErrorDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#ErrorDetail", name: "ErrorDetail")
    ErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qbusiness#ErrorMessage", name: "ErrorMessage", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^[\\s\\S]*$"})
    ExampleChatMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qbusiness#ExampleChatMessage", name: "ExampleChatMessage", traits: {"smithy.api#length" => {"max" => 350}, "smithy.api#pattern" => "^\\P{C}*$"})
    ExampleChatMessages = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.qbusiness#ExampleChatMessages", name: "ExampleChatMessages", traits: {"smithy.api#length" => {"max" => 5}})
    ExecutionId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qbusiness#ExecutionId", name: "ExecutionId", traits: {"smithy.api#length" => {"min" => 36, "max" => 36}, "smithy.api#pattern" => "^[a-zA-Z0-9][a-zA-Z0-9-]{35}$"})
    ExternalResourceException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#ExternalResourceException", name: "ExternalResourceException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 424})
    FailedAttachmentEvent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#FailedAttachmentEvent", name: "FailedAttachmentEvent")
    FailedDocument = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#FailedDocument", name: "FailedDocument")
    FailedDocuments = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.qbusiness#FailedDocuments", name: "FailedDocuments")
    FaviconUrl = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qbusiness#FaviconUrl", name: "FaviconUrl", traits: {"smithy.api#length" => {"min" => 0, "max" => 1284}, "smithy.api#pattern" => "^(https?://[a-zA-Z0-9-_.+%/]+\\.(svg|ico))?$"})
    FontUrl = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qbusiness#FontUrl", name: "FontUrl", traits: {"smithy.api#length" => {"min" => 0, "max" => 1284}, "smithy.api#pattern" => "^(https?://[a-zA-Z0-9-_.+%/]+\\.(ttf|woff|woff2|otf))?$"})
    GetApplicationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#GetApplicationRequest", name: "GetApplicationRequest")
    GetApplicationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#GetApplicationResponse", name: "GetApplicationResponse")
    GetChatControlsConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#GetChatControlsConfigurationRequest", name: "GetChatControlsConfigurationRequest")
    GetChatControlsConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#GetChatControlsConfigurationResponse", name: "GetChatControlsConfigurationResponse")
    GetChatResponseConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#GetChatResponseConfigurationRequest", name: "GetChatResponseConfigurationRequest")
    GetChatResponseConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#GetChatResponseConfigurationResponse", name: "GetChatResponseConfigurationResponse")
    GetDataAccessorRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#GetDataAccessorRequest", name: "GetDataAccessorRequest")
    GetDataAccessorResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#GetDataAccessorResponse", name: "GetDataAccessorResponse")
    GetDataSourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#GetDataSourceRequest", name: "GetDataSourceRequest")
    GetDataSourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#GetDataSourceResponse", name: "GetDataSourceResponse")
    GetDocumentContentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#GetDocumentContentRequest", name: "GetDocumentContentRequest")
    GetDocumentContentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#GetDocumentContentResponse", name: "GetDocumentContentResponse")
    GetGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#GetGroupRequest", name: "GetGroupRequest")
    GetGroupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#GetGroupResponse", name: "GetGroupResponse")
    GetIndexRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#GetIndexRequest", name: "GetIndexRequest")
    GetIndexResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#GetIndexResponse", name: "GetIndexResponse")
    GetMediaRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#GetMediaRequest", name: "GetMediaRequest")
    GetMediaResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#GetMediaResponse", name: "GetMediaResponse")
    GetPluginRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#GetPluginRequest", name: "GetPluginRequest")
    GetPluginResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#GetPluginResponse", name: "GetPluginResponse")
    GetPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#GetPolicyRequest", name: "GetPolicyRequest")
    GetPolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#GetPolicyResponse", name: "GetPolicyResponse")
    GetRetrieverRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#GetRetrieverRequest", name: "GetRetrieverRequest")
    GetRetrieverResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#GetRetrieverResponse", name: "GetRetrieverResponse")
    GetUserRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#GetUserRequest", name: "GetUserRequest")
    GetUserResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#GetUserResponse", name: "GetUserResponse")
    GetWebExperienceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#GetWebExperienceRequest", name: "GetWebExperienceRequest")
    GetWebExperienceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#GetWebExperienceResponse", name: "GetWebExperienceResponse")
    GroupIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qbusiness#GroupIdentifier", name: "GroupIdentifier", traits: {"smithy.api#length" => {"min" => 1, "max" => 47}, "smithy.api#pattern" => "^([0-9a-f]{10}-|)[A-Fa-f0-9]{8}-[A-Fa-f0-9]{4}-[A-Fa-f0-9]{4}-[A-Fa-f0-9]{4}-[A-Fa-f0-9]{12}$"})
    GroupMembers = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#GroupMembers", name: "GroupMembers")
    GroupName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qbusiness#GroupName", name: "GroupName", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^\\P{C}*$"})
    GroupStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.qbusiness#GroupStatus", name: "GroupStatus")
    GroupStatusDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#GroupStatusDetail", name: "GroupStatusDetail")
    GroupStatusDetails = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.qbusiness#GroupStatusDetails", name: "GroupStatusDetails")
    GroupSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#GroupSummary", name: "GroupSummary")
    GroupSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.qbusiness#GroupSummaryList", name: "GroupSummaryList")
    HallucinationReductionConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#HallucinationReductionConfiguration", name: "HallucinationReductionConfiguration")
    HallucinationReductionControl = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.qbusiness#HallucinationReductionControl", name: "HallucinationReductionControl")
    HookConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#HookConfiguration", name: "HookConfiguration")
    IAMIdentityProviderArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qbusiness#IAMIdentityProviderArn", name: "IAMIdentityProviderArn", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:aws:iam::\\d{12}:(oidc-provider|saml-provider)/[a-zA-Z0-9_\\.\\/@\\-]+$"})
    IdcApplicationArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qbusiness#IdcApplicationArn", name: "IdcApplicationArn", traits: {"smithy.api#length" => {"min" => 10, "max" => 1224}, "smithy.api#pattern" => "^arn:(aws|aws-us-gov|aws-cn|aws-iso|aws-iso-b):sso::\\d{12}:application/(sso)?ins-[a-zA-Z0-9-.]{16}/apl-[a-zA-Z0-9]{16}$"})
    IdcAuthConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#IdcAuthConfiguration", name: "IdcAuthConfiguration")
    IdcTrustedTokenIssuerArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qbusiness#IdcTrustedTokenIssuerArn", name: "IdcTrustedTokenIssuerArn", traits: {"smithy.api#length" => {"min" => 0, "max" => 1284}, "smithy.api#pattern" => "^arn:aws:sso::[0-9]{12}:trustedTokenIssuer/(sso)?ins-[a-zA-Z0-9-.]{16}/tti-[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$"})
    IdentityProviderConfiguration = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.qbusiness#IdentityProviderConfiguration", name: "IdentityProviderConfiguration")
    IdentityType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.qbusiness#IdentityType", name: "IdentityType")
    ImageExtractionConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#ImageExtractionConfiguration", name: "ImageExtractionConfiguration")
    ImageExtractionStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.qbusiness#ImageExtractionStatus", name: "ImageExtractionStatus")
    ImageSourceDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#ImageSourceDetails", name: "ImageSourceDetails")
    Index = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#Index", name: "Index")
    IndexArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qbusiness#IndexArn", name: "IndexArn", traits: {"smithy.api#length" => {"min" => 0, "max" => 1284}, "smithy.api#pattern" => "^arn:[a-z0-9-\\.]{1,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[^/].{0,1023}$"})
    IndexCapacityConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#IndexCapacityConfiguration", name: "IndexCapacityConfiguration")
    IndexCapacityInteger = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.qbusiness#IndexCapacityInteger", name: "IndexCapacityInteger", traits: {"smithy.api#range" => {"min" => 1}})
    IndexId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qbusiness#IndexId", name: "IndexId", traits: {"smithy.api#length" => {"min" => 36, "max" => 36}, "smithy.api#pattern" => "^[a-zA-Z0-9][a-zA-Z0-9-]{35}$"})
    IndexName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qbusiness#IndexName", name: "IndexName", traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}, "smithy.api#pattern" => "^[a-zA-Z0-9][a-zA-Z0-9_-]*$"})
    IndexStatistics = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#IndexStatistics", name: "IndexStatistics")
    IndexStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.qbusiness#IndexStatus", name: "IndexStatus")
    IndexType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.qbusiness#IndexType", name: "IndexType")
    IndexedTextBytes = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.qbusiness#IndexedTextBytes", name: "IndexedTextBytes", traits: {"smithy.api#range" => {"min" => 0}})
    IndexedTextDocument = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.qbusiness#IndexedTextDocument", name: "IndexedTextDocument", traits: {"smithy.api#range" => {"min" => 0}})
    Indices = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.qbusiness#Indices", name: "Indices")
    InlineDocumentEnrichmentConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#InlineDocumentEnrichmentConfiguration", name: "InlineDocumentEnrichmentConfiguration")
    InlineDocumentEnrichmentConfigurations = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.qbusiness#InlineDocumentEnrichmentConfigurations", name: "InlineDocumentEnrichmentConfigurations", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    InstanceArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qbusiness#InstanceArn", name: "InstanceArn", traits: {"smithy.api#length" => {"min" => 10, "max" => 1224}, "smithy.api#pattern" => "^arn:(aws|aws-us-gov|aws-cn|aws-iso|aws-iso-b):sso:::instance/(sso)?ins-[a-zA-Z0-9-.]{16}$"})
    Instruction = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qbusiness#Instruction", name: "Instruction", traits: {"smithy.api#length" => {"min" => 5, "max" => 1000}, "smithy.api#pattern" => "^[\\s\\S]*$"})
    InstructionCollection = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#InstructionCollection", name: "InstructionCollection")
    Integer = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.qbusiness#Integer", name: "Integer")
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    KendraIndexConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#KendraIndexConfiguration", name: "KendraIndexConfiguration")
    KendraIndexId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qbusiness#KendraIndexId", name: "KendraIndexId", traits: {"smithy.api#length" => {"min" => 36, "max" => 36}, "smithy.api#pattern" => "^[a-zA-Z0-9][a-zA-Z0-9-]{35}$"})
    KmsKeyId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qbusiness#KmsKeyId", name: "KmsKeyId", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#sensitive" => {}})
    LambdaArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qbusiness#LambdaArn", name: "LambdaArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^arn:aws[a-zA-Z-]*:lambda:[a-z-]*-[0-9]:[0-9]{12}:function:[a-zA-Z0-9-_]+(/[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12})?(:[a-zA-Z0-9-_]+)?$"})
    LicenseNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#LicenseNotFoundException", name: "LicenseNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ListApplicationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#ListApplicationsRequest", name: "ListApplicationsRequest")
    ListApplicationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#ListApplicationsResponse", name: "ListApplicationsResponse")
    ListAttachmentsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#ListAttachmentsRequest", name: "ListAttachmentsRequest")
    ListAttachmentsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#ListAttachmentsResponse", name: "ListAttachmentsResponse")
    ListChatResponseConfigurationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#ListChatResponseConfigurationsRequest", name: "ListChatResponseConfigurationsRequest")
    ListChatResponseConfigurationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#ListChatResponseConfigurationsResponse", name: "ListChatResponseConfigurationsResponse")
    ListConversationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#ListConversationsRequest", name: "ListConversationsRequest")
    ListConversationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#ListConversationsResponse", name: "ListConversationsResponse")
    ListDataAccessorsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#ListDataAccessorsRequest", name: "ListDataAccessorsRequest")
    ListDataAccessorsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#ListDataAccessorsResponse", name: "ListDataAccessorsResponse")
    ListDataSourceSyncJobsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#ListDataSourceSyncJobsRequest", name: "ListDataSourceSyncJobsRequest")
    ListDataSourceSyncJobsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#ListDataSourceSyncJobsResponse", name: "ListDataSourceSyncJobsResponse")
    ListDataSourcesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#ListDataSourcesRequest", name: "ListDataSourcesRequest")
    ListDataSourcesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#ListDataSourcesResponse", name: "ListDataSourcesResponse")
    ListDocumentsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#ListDocumentsRequest", name: "ListDocumentsRequest")
    ListDocumentsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#ListDocumentsResponse", name: "ListDocumentsResponse")
    ListGroupsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#ListGroupsRequest", name: "ListGroupsRequest")
    ListGroupsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#ListGroupsResponse", name: "ListGroupsResponse")
    ListIndicesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#ListIndicesRequest", name: "ListIndicesRequest")
    ListIndicesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#ListIndicesResponse", name: "ListIndicesResponse")
    ListMessagesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#ListMessagesRequest", name: "ListMessagesRequest")
    ListMessagesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#ListMessagesResponse", name: "ListMessagesResponse")
    ListPluginActionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#ListPluginActionsRequest", name: "ListPluginActionsRequest")
    ListPluginActionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#ListPluginActionsResponse", name: "ListPluginActionsResponse")
    ListPluginTypeActionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#ListPluginTypeActionsRequest", name: "ListPluginTypeActionsRequest")
    ListPluginTypeActionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#ListPluginTypeActionsResponse", name: "ListPluginTypeActionsResponse")
    ListPluginTypeMetadataRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#ListPluginTypeMetadataRequest", name: "ListPluginTypeMetadataRequest")
    ListPluginTypeMetadataResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#ListPluginTypeMetadataResponse", name: "ListPluginTypeMetadataResponse")
    ListPluginTypeMetadataSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.qbusiness#ListPluginTypeMetadataSummaries", name: "ListPluginTypeMetadataSummaries")
    ListPluginsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#ListPluginsRequest", name: "ListPluginsRequest")
    ListPluginsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#ListPluginsResponse", name: "ListPluginsResponse")
    ListRetrieversRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#ListRetrieversRequest", name: "ListRetrieversRequest")
    ListRetrieversResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#ListRetrieversResponse", name: "ListRetrieversResponse")
    ListSubscriptionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#ListSubscriptionsRequest", name: "ListSubscriptionsRequest")
    ListSubscriptionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#ListSubscriptionsResponse", name: "ListSubscriptionsResponse")
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#ListTagsForResourceRequest", name: "ListTagsForResourceRequest")
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#ListTagsForResourceResponse", name: "ListTagsForResourceResponse")
    ListWebExperiencesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#ListWebExperiencesRequest", name: "ListWebExperiencesRequest")
    ListWebExperiencesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#ListWebExperiencesResponse", name: "ListWebExperiencesResponse")
    LogoUrl = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qbusiness#LogoUrl", name: "LogoUrl", traits: {"smithy.api#length" => {"min" => 0, "max" => 1284}, "smithy.api#pattern" => "^(https?://[a-zA-Z0-9-_.+%/]+\\.(svg|png))?$"})
    Long = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.qbusiness#Long", name: "Long")
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.qbusiness#MaxResults", name: "MaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    MaxResultsIntegerForGetTopicConfigurations = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.qbusiness#MaxResultsIntegerForGetTopicConfigurations", name: "MaxResultsIntegerForGetTopicConfigurations", traits: {"smithy.api#range" => {"min" => 1, "max" => 50}})
    MaxResultsIntegerForListApplications = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.qbusiness#MaxResultsIntegerForListApplications", name: "MaxResultsIntegerForListApplications", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    MaxResultsIntegerForListAttachments = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.qbusiness#MaxResultsIntegerForListAttachments", name: "MaxResultsIntegerForListAttachments", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    MaxResultsIntegerForListConversations = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.qbusiness#MaxResultsIntegerForListConversations", name: "MaxResultsIntegerForListConversations", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    MaxResultsIntegerForListDataAccessors = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.qbusiness#MaxResultsIntegerForListDataAccessors", name: "MaxResultsIntegerForListDataAccessors", traits: {"smithy.api#range" => {"min" => 1, "max" => 10}})
    MaxResultsIntegerForListDataSources = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.qbusiness#MaxResultsIntegerForListDataSources", name: "MaxResultsIntegerForListDataSources", traits: {"smithy.api#range" => {"min" => 1, "max" => 10}})
    MaxResultsIntegerForListDataSourcesSyncJobs = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.qbusiness#MaxResultsIntegerForListDataSourcesSyncJobs", name: "MaxResultsIntegerForListDataSourcesSyncJobs", traits: {"smithy.api#range" => {"min" => 1, "max" => 10}})
    MaxResultsIntegerForListDocuments = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.qbusiness#MaxResultsIntegerForListDocuments", name: "MaxResultsIntegerForListDocuments", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    MaxResultsIntegerForListGroupsRequest = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.qbusiness#MaxResultsIntegerForListGroupsRequest", name: "MaxResultsIntegerForListGroupsRequest", traits: {"smithy.api#range" => {"min" => 1, "max" => 10}})
    MaxResultsIntegerForListIndices = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.qbusiness#MaxResultsIntegerForListIndices", name: "MaxResultsIntegerForListIndices", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    MaxResultsIntegerForListMessages = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.qbusiness#MaxResultsIntegerForListMessages", name: "MaxResultsIntegerForListMessages", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    MaxResultsIntegerForListPluginActions = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.qbusiness#MaxResultsIntegerForListPluginActions", name: "MaxResultsIntegerForListPluginActions", traits: {"smithy.api#range" => {"min" => 1, "max" => 50}})
    MaxResultsIntegerForListPluginTypeActions = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.qbusiness#MaxResultsIntegerForListPluginTypeActions", name: "MaxResultsIntegerForListPluginTypeActions", traits: {"smithy.api#range" => {"min" => 1, "max" => 50}})
    MaxResultsIntegerForListPluginTypeMetadata = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.qbusiness#MaxResultsIntegerForListPluginTypeMetadata", name: "MaxResultsIntegerForListPluginTypeMetadata", traits: {"smithy.api#range" => {"min" => 1, "max" => 50}})
    MaxResultsIntegerForListPlugins = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.qbusiness#MaxResultsIntegerForListPlugins", name: "MaxResultsIntegerForListPlugins", traits: {"smithy.api#range" => {"min" => 1, "max" => 50}})
    MaxResultsIntegerForListRetrieversRequest = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.qbusiness#MaxResultsIntegerForListRetrieversRequest", name: "MaxResultsIntegerForListRetrieversRequest", traits: {"smithy.api#range" => {"min" => 1, "max" => 50}})
    MaxResultsIntegerForListSubscriptions = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.qbusiness#MaxResultsIntegerForListSubscriptions", name: "MaxResultsIntegerForListSubscriptions", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    MaxResultsIntegerForListWebExperiencesRequest = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.qbusiness#MaxResultsIntegerForListWebExperiencesRequest", name: "MaxResultsIntegerForListWebExperiencesRequest", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    MediaExtractionConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#MediaExtractionConfiguration", name: "MediaExtractionConfiguration")
    MediaId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qbusiness#MediaId", name: "MediaId", traits: {"smithy.api#length" => {"min" => 36, "max" => 36}, "smithy.api#pattern" => "^[a-zA-Z0-9][a-zA-Z0-9-]{35}$"})
    MediaTooLargeException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#MediaTooLargeException", name: "MediaTooLargeException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    MemberGroup = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#MemberGroup", name: "MemberGroup")
    MemberGroups = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.qbusiness#MemberGroups", name: "MemberGroups")
    MemberRelation = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.qbusiness#MemberRelation", name: "MemberRelation")
    MemberUser = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#MemberUser", name: "MemberUser")
    MemberUsers = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.qbusiness#MemberUsers", name: "MemberUsers")
    MembershipType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.qbusiness#MembershipType", name: "MembershipType")
    Message = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#Message", name: "Message")
    MessageBody = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qbusiness#MessageBody", name: "MessageBody", traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}, "smithy.api#pattern" => "^\\P{C}*$}$"})
    MessageId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qbusiness#MessageId", name: "MessageId", traits: {"smithy.api#length" => {"min" => 36, "max" => 36}, "smithy.api#pattern" => "^[a-zA-Z0-9][a-zA-Z0-9-]{35}$"})
    MessageType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.qbusiness#MessageType", name: "MessageType")
    MessageUsefulness = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.qbusiness#MessageUsefulness", name: "MessageUsefulness")
    MessageUsefulnessComment = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qbusiness#MessageUsefulnessComment", name: "MessageUsefulnessComment", traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}, "smithy.api#pattern" => "^\\P{C}*$"})
    MessageUsefulnessFeedback = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#MessageUsefulnessFeedback", name: "MessageUsefulnessFeedback")
    MessageUsefulnessReason = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.qbusiness#MessageUsefulnessReason", name: "MessageUsefulnessReason")
    Messages = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.qbusiness#Messages", name: "Messages")
    MetadataEvent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#MetadataEvent", name: "MetadataEvent")
    MetricValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qbusiness#MetricValue", name: "MetricValue", traits: {"smithy.api#pattern" => "^(([1-9][0-9]*)|0)$"})
    NativeIndexConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#NativeIndexConfiguration", name: "NativeIndexConfiguration")
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qbusiness#NextToken", name: "NextToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 800}})
    NextToken1500 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qbusiness#NextToken1500", name: "NextToken1500", traits: {"smithy.api#length" => {"min" => 1, "max" => 1500}})
    NoAuthConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#NoAuthConfiguration", name: "NoAuthConfiguration")
    NumberAttributeBoostingConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#NumberAttributeBoostingConfiguration", name: "NumberAttributeBoostingConfiguration")
    NumberAttributeBoostingType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.qbusiness#NumberAttributeBoostingType", name: "NumberAttributeBoostingType")
    OAuth2ClientCredentialConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#OAuth2ClientCredentialConfiguration", name: "OAuth2ClientCredentialConfiguration")
    OpenIDConnectProviderConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#OpenIDConnectProviderConfiguration", name: "OpenIDConnectProviderConfiguration")
    OrchestrationConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#OrchestrationConfiguration", name: "OrchestrationConfiguration")
    OrchestrationControl = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.qbusiness#OrchestrationControl", name: "OrchestrationControl")
    Origin = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qbusiness#Origin", name: "Origin", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^(http://|https://)[a-zA-Z0-9-_.]+(?::[0-9]{1,5})?$"})
    OutputFormat = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.qbusiness#OutputFormat", name: "OutputFormat")
    Payload = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qbusiness#Payload", name: "Payload", traits: {"smithy.api#sensitive" => {}})
    PermissionCondition = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#PermissionCondition", name: "PermissionCondition")
    PermissionConditionKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qbusiness#PermissionConditionKey", name: "PermissionConditionKey", traits: {"smithy.api#pattern" => "^aws:PrincipalTag/qbusiness-dataaccessor:[a-zA-Z]+"})
    PermissionConditionOperator = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.qbusiness#PermissionConditionOperator", name: "PermissionConditionOperator")
    PermissionConditionValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qbusiness#PermissionConditionValue", name: "PermissionConditionValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}, "smithy.api#pattern" => "^[a-zA-Z0-9][a-zA-Z0-9_-]*$"})
    PermissionConditionValues = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.qbusiness#PermissionConditionValues", name: "PermissionConditionValues", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    PermissionConditions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.qbusiness#PermissionConditions", name: "PermissionConditions", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    PersonalizationConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#PersonalizationConfiguration", name: "PersonalizationConfiguration")
    PersonalizationControlMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.qbusiness#PersonalizationControlMode", name: "PersonalizationControlMode")
    Plugin = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#Plugin", name: "Plugin")
    PluginArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qbusiness#PluginArn", name: "PluginArn", traits: {"smithy.api#length" => {"min" => 0, "max" => 1284}, "smithy.api#pattern" => "^arn:[a-z0-9-\\.]{1,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[^/].{0,1023}$"})
    PluginAuthConfiguration = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.qbusiness#PluginAuthConfiguration", name: "PluginAuthConfiguration")
    PluginBuildStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.qbusiness#PluginBuildStatus", name: "PluginBuildStatus")
    PluginConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#PluginConfiguration", name: "PluginConfiguration")
    PluginDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qbusiness#PluginDescription", name: "PluginDescription", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}})
    PluginId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qbusiness#PluginId", name: "PluginId", traits: {"smithy.api#length" => {"min" => 36, "max" => 36}, "smithy.api#pattern" => "^[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}$"})
    PluginName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qbusiness#PluginName", name: "PluginName", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[a-zA-Z0-9][a-zA-Z0-9_-]*$"})
    PluginState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.qbusiness#PluginState", name: "PluginState")
    PluginType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.qbusiness#PluginType", name: "PluginType")
    PluginTypeCategory = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.qbusiness#PluginTypeCategory", name: "PluginTypeCategory")
    PluginTypeMetadataSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#PluginTypeMetadataSummary", name: "PluginTypeMetadataSummary")
    Plugins = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.qbusiness#Plugins", name: "Plugins")
    Principal = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.qbusiness#Principal", name: "Principal")
    PrincipalGroup = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#PrincipalGroup", name: "PrincipalGroup")
    PrincipalRoleArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qbusiness#PrincipalRoleArn", name: "PrincipalRoleArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 1284}, "smithy.api#pattern" => "^arn:aws:iam::[0-9]{12}:role/[a-zA-Z0-9_/+=,.@-]+$"})
    PrincipalUser = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#PrincipalUser", name: "PrincipalUser")
    Principals = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.qbusiness#Principals", name: "Principals")
    PutFeedbackRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#PutFeedbackRequest", name: "PutFeedbackRequest")
    PutGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#PutGroupRequest", name: "PutGroupRequest")
    PutGroupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#PutGroupResponse", name: "PutGroupResponse")
    QAppsConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#QAppsConfiguration", name: "QAppsConfiguration")
    QAppsControlMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.qbusiness#QAppsControlMode", name: "QAppsControlMode")
    QIamAction = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qbusiness#QIamAction", name: "QIamAction", traits: {"smithy.api#pattern" => "^qbusiness:[a-zA-Z]+$"})
    QIamActions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.qbusiness#QIamActions", name: "QIamActions", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    QueryText = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qbusiness#QueryText", name: "QueryText")
    QuickSightConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#QuickSightConfiguration", name: "QuickSightConfiguration")
    ReadAccessType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.qbusiness#ReadAccessType", name: "ReadAccessType")
    RelevantContent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#RelevantContent", name: "RelevantContent")
    RelevantContentList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.qbusiness#RelevantContentList", name: "RelevantContentList")
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResponseConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#ResponseConfiguration", name: "ResponseConfiguration")
    ResponseConfigurationSummary = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qbusiness#ResponseConfigurationSummary", name: "ResponseConfigurationSummary", traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}})
    ResponseConfigurationType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.qbusiness#ResponseConfigurationType", name: "ResponseConfigurationType")
    ResponseConfigurations = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.qbusiness#ResponseConfigurations", name: "ResponseConfigurations", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    ResponseScope = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.qbusiness#ResponseScope", name: "ResponseScope")
    Retriever = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#Retriever", name: "Retriever")
    RetrieverArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qbusiness#RetrieverArn", name: "RetrieverArn", traits: {"smithy.api#length" => {"min" => 0, "max" => 1284}, "smithy.api#pattern" => "^arn:[a-z0-9-\\.]{1,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[^/].{0,1023}$"})
    RetrieverConfiguration = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.qbusiness#RetrieverConfiguration", name: "RetrieverConfiguration")
    RetrieverContentSource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#RetrieverContentSource", name: "RetrieverContentSource")
    RetrieverId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qbusiness#RetrieverId", name: "RetrieverId", traits: {"smithy.api#length" => {"min" => 36, "max" => 36}, "smithy.api#pattern" => "^[a-zA-Z0-9][a-zA-Z0-9-]{35}$"})
    RetrieverName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qbusiness#RetrieverName", name: "RetrieverName", traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}, "smithy.api#pattern" => "^[a-zA-Z0-9][a-zA-Z0-9_-]*$"})
    RetrieverStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.qbusiness#RetrieverStatus", name: "RetrieverStatus")
    RetrieverType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.qbusiness#RetrieverType", name: "RetrieverType")
    Retrievers = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.qbusiness#Retrievers", name: "Retrievers")
    RoleArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qbusiness#RoleArn", name: "RoleArn", traits: {"smithy.api#length" => {"min" => 0, "max" => 1284}, "smithy.api#pattern" => "^arn:[a-z0-9-\\.]{1,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[^/].{0,1023}$"})
    Rule = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#Rule", name: "Rule")
    RuleConfiguration = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.qbusiness#RuleConfiguration", name: "RuleConfiguration")
    RuleType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.qbusiness#RuleType", name: "RuleType")
    Rules = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.qbusiness#Rules", name: "Rules", traits: {"smithy.api#length" => {"max" => 10}})
    S3 = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#S3", name: "S3")
    S3BucketName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qbusiness#S3BucketName", name: "S3BucketName", traits: {"smithy.api#length" => {"min" => 1, "max" => 63}, "smithy.api#pattern" => "^[a-z0-9][\\.\\-a-z0-9]{1,61}[a-z0-9]$"})
    S3ObjectKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qbusiness#S3ObjectKey", name: "S3ObjectKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    SamlAttribute = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qbusiness#SamlAttribute", name: "SamlAttribute", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    SamlAuthenticationUrl = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qbusiness#SamlAuthenticationUrl", name: "SamlAuthenticationUrl", traits: {"smithy.api#length" => {"min" => 1, "max" => 1284}, "smithy.api#pattern" => "^https://.*$"})
    SamlConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#SamlConfiguration", name: "SamlConfiguration")
    SamlMetadataXML = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qbusiness#SamlMetadataXML", name: "SamlMetadataXML", traits: {"smithy.api#length" => {"min" => 1000, "max" => 10000000}, "smithy.api#pattern" => "^.*$"})
    SamlProviderConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#SamlProviderConfiguration", name: "SamlProviderConfiguration")
    ScoreAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#ScoreAttributes", name: "ScoreAttributes")
    ScoreConfidence = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.qbusiness#ScoreConfidence", name: "ScoreConfidence")
    SearchRelevantContentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#SearchRelevantContentRequest", name: "SearchRelevantContentRequest")
    SearchRelevantContentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#SearchRelevantContentResponse", name: "SearchRelevantContentResponse")
    SecretArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qbusiness#SecretArn", name: "SecretArn", traits: {"smithy.api#length" => {"min" => 0, "max" => 1284}, "smithy.api#pattern" => "^arn:[a-z0-9-\\.]{1,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[^/].{0,1023}$"})
    SecurityGroupId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qbusiness#SecurityGroupId", name: "SecurityGroupId", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}, "smithy.api#pattern" => "^[-0-9a-zA-Z]+$"})
    SecurityGroupIds = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.qbusiness#SecurityGroupIds", name: "SecurityGroupIds", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#ServiceQuotaExceededException", name: "ServiceQuotaExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    SessionDurationInMinutes = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.qbusiness#SessionDurationInMinutes", name: "SessionDurationInMinutes", traits: {"smithy.api#range" => {"min" => 15, "max" => 60}})
    SnippetExcerpt = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#SnippetExcerpt", name: "SnippetExcerpt")
    SnippetExcerptText = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qbusiness#SnippetExcerptText", name: "SnippetExcerptText")
    SourceAttribution = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#SourceAttribution", name: "SourceAttribution")
    SourceAttributionMediaId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qbusiness#SourceAttributionMediaId", name: "SourceAttributionMediaId", traits: {"smithy.api#length" => {"min" => 36, "max" => 36}, "smithy.api#pattern" => "^[a-zA-Z0-9][a-zA-Z0-9-]{35}$"})
    SourceAttributions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.qbusiness#SourceAttributions", name: "SourceAttributions", traits: {"smithy.api#sparse" => {}})
    SourceDetails = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.qbusiness#SourceDetails", name: "SourceDetails")
    StartDataSourceSyncJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#StartDataSourceSyncJobRequest", name: "StartDataSourceSyncJobRequest")
    StartDataSourceSyncJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#StartDataSourceSyncJobResponse", name: "StartDataSourceSyncJobResponse")
    StatementId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qbusiness#StatementId", name: "StatementId", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[a-zA-Z0-9_-]+$"})
    Status = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.qbusiness#Status", name: "Status")
    StopDataSourceSyncJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#StopDataSourceSyncJobRequest", name: "StopDataSourceSyncJobRequest")
    StopDataSourceSyncJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#StopDataSourceSyncJobResponse", name: "StopDataSourceSyncJobResponse")
    String = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qbusiness#String", name: "String", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    StringAttributeBoostingConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#StringAttributeBoostingConfiguration", name: "StringAttributeBoostingConfiguration")
    StringAttributeValueBoosting = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.qbusiness#StringAttributeValueBoosting", name: "StringAttributeValueBoosting", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    StringAttributeValueBoostingLevel = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.qbusiness#StringAttributeValueBoostingLevel", name: "StringAttributeValueBoostingLevel")
    StringListAttributeBoostingConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#StringListAttributeBoostingConfiguration", name: "StringListAttributeBoostingConfiguration")
    SubnetId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qbusiness#SubnetId", name: "SubnetId", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}, "smithy.api#pattern" => "^[-0-9a-zA-Z]+$"})
    SubnetIds = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.qbusiness#SubnetIds", name: "SubnetIds")
    Subscription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#Subscription", name: "Subscription")
    SubscriptionArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qbusiness#SubscriptionArn", name: "SubscriptionArn", traits: {"smithy.api#length" => {"min" => 10, "max" => 1224}, "smithy.api#pattern" => "^arn:[a-z0-9-\\.]{1,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[^/].{0,1023}$"})
    SubscriptionDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#SubscriptionDetails", name: "SubscriptionDetails")
    SubscriptionId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qbusiness#SubscriptionId", name: "SubscriptionId", traits: {"smithy.api#length" => {"min" => 0, "max" => 1224}})
    SubscriptionPrincipal = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.qbusiness#SubscriptionPrincipal", name: "SubscriptionPrincipal")
    SubscriptionType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.qbusiness#SubscriptionType", name: "SubscriptionType")
    Subscriptions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.qbusiness#Subscriptions", name: "Subscriptions")
    SyncSchedule = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qbusiness#SyncSchedule", name: "SyncSchedule", traits: {"smithy.api#length" => {"max" => 998}, "smithy.api#pattern" => "^[\\s\\S]*$"})
    SystemMessageId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qbusiness#SystemMessageId", name: "SystemMessageId", traits: {"smithy.api#length" => {"min" => 36, "max" => 36}, "smithy.api#pattern" => "^[a-zA-Z0-9][a-zA-Z0-9-]{35}$"})
    SystemMessageOverride = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qbusiness#SystemMessageOverride", name: "SystemMessageOverride", traits: {"smithy.api#length" => {"max" => 350}, "smithy.api#pattern" => "^\\P{C}*$"})
    SystemMessageType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.qbusiness#SystemMessageType", name: "SystemMessageType")
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#Tag", name: "Tag")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qbusiness#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    TagKeys = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.qbusiness#TagKeys", name: "TagKeys", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#TagResourceRequest", name: "TagResourceRequest")
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#TagResourceResponse", name: "TagResourceResponse")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qbusiness#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    Tags = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.qbusiness#Tags", name: "Tags", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TextDocumentStatistics = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#TextDocumentStatistics", name: "TextDocumentStatistics")
    TextInputEvent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#TextInputEvent", name: "TextInputEvent")
    TextOutputEvent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#TextOutputEvent", name: "TextOutputEvent")
    TextSegment = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#TextSegment", name: "TextSegment")
    TextSegmentList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.qbusiness#TextSegmentList", name: "TextSegmentList")
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    Timestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.qbusiness#Timestamp", name: "Timestamp")
    Title = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qbusiness#Title", name: "Title", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    TopicConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#TopicConfiguration", name: "TopicConfiguration")
    TopicConfigurationName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qbusiness#TopicConfigurationName", name: "TopicConfigurationName", traits: {"smithy.api#length" => {"min" => 1, "max" => 36}, "smithy.api#pattern" => "^[a-zA-Z0-9][a-zA-Z0-9-]{0,35}$"})
    TopicConfigurations = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.qbusiness#TopicConfigurations", name: "TopicConfigurations", traits: {"smithy.api#length" => {"max" => 10}})
    TopicDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qbusiness#TopicDescription", name: "TopicDescription", traits: {"smithy.api#length" => {"min" => 0, "max" => 350}, "smithy.api#pattern" => "^\\P{C}*$"})
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#UntagResourceRequest", name: "UntagResourceRequest")
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#UntagResourceResponse", name: "UntagResourceResponse")
    UpdateApplicationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#UpdateApplicationRequest", name: "UpdateApplicationRequest")
    UpdateApplicationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#UpdateApplicationResponse", name: "UpdateApplicationResponse")
    UpdateChatControlsConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#UpdateChatControlsConfigurationRequest", name: "UpdateChatControlsConfigurationRequest")
    UpdateChatControlsConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#UpdateChatControlsConfigurationResponse", name: "UpdateChatControlsConfigurationResponse")
    UpdateChatResponseConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#UpdateChatResponseConfigurationRequest", name: "UpdateChatResponseConfigurationRequest")
    UpdateChatResponseConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#UpdateChatResponseConfigurationResponse", name: "UpdateChatResponseConfigurationResponse")
    UpdateDataAccessorRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#UpdateDataAccessorRequest", name: "UpdateDataAccessorRequest")
    UpdateDataAccessorResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#UpdateDataAccessorResponse", name: "UpdateDataAccessorResponse")
    UpdateDataSourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#UpdateDataSourceRequest", name: "UpdateDataSourceRequest")
    UpdateDataSourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#UpdateDataSourceResponse", name: "UpdateDataSourceResponse")
    UpdateIndexRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#UpdateIndexRequest", name: "UpdateIndexRequest")
    UpdateIndexResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#UpdateIndexResponse", name: "UpdateIndexResponse")
    UpdatePluginRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#UpdatePluginRequest", name: "UpdatePluginRequest")
    UpdatePluginResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#UpdatePluginResponse", name: "UpdatePluginResponse")
    UpdateRetrieverRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#UpdateRetrieverRequest", name: "UpdateRetrieverRequest")
    UpdateRetrieverResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#UpdateRetrieverResponse", name: "UpdateRetrieverResponse")
    UpdateSubscriptionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#UpdateSubscriptionRequest", name: "UpdateSubscriptionRequest")
    UpdateSubscriptionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#UpdateSubscriptionResponse", name: "UpdateSubscriptionResponse")
    UpdateUserRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#UpdateUserRequest", name: "UpdateUserRequest")
    UpdateUserResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#UpdateUserResponse", name: "UpdateUserResponse")
    UpdateWebExperienceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#UpdateWebExperienceRequest", name: "UpdateWebExperienceRequest")
    UpdateWebExperienceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#UpdateWebExperienceResponse", name: "UpdateWebExperienceResponse")
    Url = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qbusiness#Url", name: "Url", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^(https?|ftp|file)://([^\\s]*)$"})
    UserAlias = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#UserAlias", name: "UserAlias")
    UserAliases = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.qbusiness#UserAliases", name: "UserAliases")
    UserGroups = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.qbusiness#UserGroups", name: "UserGroups")
    UserId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qbusiness#UserId", name: "UserId", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^\\P{C}*$"})
    UserIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qbusiness#UserIdentifier", name: "UserIdentifier", traits: {"smithy.api#length" => {"min" => 1, "max" => 47}, "smithy.api#pattern" => "^([0-9a-f]{10}-|)[A-Fa-f0-9]{8}-[A-Fa-f0-9]{4}-[A-Fa-f0-9]{4}-[A-Fa-f0-9]{4}-[A-Fa-f0-9]{12}$"})
    UserIds = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.qbusiness#UserIds", name: "UserIds")
    UserMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qbusiness#UserMessage", name: "UserMessage")
    UsersAndGroups = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#UsersAndGroups", name: "UsersAndGroups")
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ValidationExceptionField = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#ValidationExceptionField", name: "ValidationExceptionField")
    ValidationExceptionFields = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.qbusiness#ValidationExceptionFields", name: "ValidationExceptionFields")
    ValidationExceptionReason = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.qbusiness#ValidationExceptionReason", name: "ValidationExceptionReason")
    VideoExtractionConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#VideoExtractionConfiguration", name: "VideoExtractionConfiguration")
    VideoExtractionStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.qbusiness#VideoExtractionStatus", name: "VideoExtractionStatus")
    VideoExtractionType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.qbusiness#VideoExtractionType", name: "VideoExtractionType")
    VideoSourceDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#VideoSourceDetails", name: "VideoSourceDetails")
    WebExperience = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qbusiness#WebExperience", name: "WebExperience")
    WebExperienceArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qbusiness#WebExperienceArn", name: "WebExperienceArn", traits: {"smithy.api#length" => {"min" => 0, "max" => 1284}, "smithy.api#pattern" => "^arn:[a-z0-9-\\.]{1,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[^/].{0,1023}$"})
    WebExperienceAuthConfiguration = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.qbusiness#WebExperienceAuthConfiguration", name: "WebExperienceAuthConfiguration")
    WebExperienceId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qbusiness#WebExperienceId", name: "WebExperienceId", traits: {"smithy.api#length" => {"min" => 36, "max" => 36}, "smithy.api#pattern" => "^[a-zA-Z0-9][a-zA-Z0-9-]*$"})
    WebExperienceOrigins = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.qbusiness#WebExperienceOrigins", name: "WebExperienceOrigins", traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    WebExperienceSamplePromptsControlMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.qbusiness#WebExperienceSamplePromptsControlMode", name: "WebExperienceSamplePromptsControlMode")
    WebExperienceStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.qbusiness#WebExperienceStatus", name: "WebExperienceStatus")
    WebExperienceSubtitle = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qbusiness#WebExperienceSubtitle", name: "WebExperienceSubtitle", traits: {"smithy.api#length" => {"min" => 0, "max" => 500}, "smithy.api#pattern" => "^[\\s\\S]*$"})
    WebExperienceTitle = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qbusiness#WebExperienceTitle", name: "WebExperienceTitle", traits: {"smithy.api#length" => {"min" => 0, "max" => 500}, "smithy.api#pattern" => "^[\\s\\S]*$"})
    WebExperienceWelcomeMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qbusiness#WebExperienceWelcomeMessage", name: "WebExperienceWelcomeMessage", traits: {"smithy.api#length" => {"min" => 0, "max" => 300}})
    WebExperiences = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.qbusiness#WebExperiences", name: "WebExperiences")

    APISchema.add_member(:payload, Types::APISchema::Payload, ::Smithy::Schema::Shapes::MemberShape.new(target: Payload, location_name: "payload"))
    APISchema.add_member(:s3, Types::APISchema::S3, ::Smithy::Schema::Shapes::MemberShape.new(target: S3, location_name: "s3"))
    APISchema.add_member(:unknown, Types::APISchema::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    APISchema.type = Types::APISchema
    APISchemaType.add_member(:open_api_v3, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "OPEN_API_V3", traits: {"smithy.api#enumValue" => "OPEN_API_V3"}))
    AccessConfiguration.add_member(:access_controls, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessControls, location_name: "accessControls", traits: {"smithy.api#required" => {}}))
    AccessConfiguration.add_member(:member_relation, ::Smithy::Schema::Shapes::MemberShape.new(target: MemberRelation, location_name: "memberRelation"))
    AccessConfiguration.type = Types::AccessConfiguration
    AccessControl.add_member(:principals, ::Smithy::Schema::Shapes::MemberShape.new(target: Principals, location_name: "principals", traits: {"smithy.api#required" => {}}))
    AccessControl.add_member(:member_relation, ::Smithy::Schema::Shapes::MemberShape.new(target: MemberRelation, location_name: "memberRelation"))
    AccessControl.type = Types::AccessControl
    AccessControls.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AccessControl)
    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "message", traits: {"smithy.api#required" => {}}))
    AccessDeniedException.type = Types::AccessDeniedException
    ActionConfiguration.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: QIamAction, location_name: "action", traits: {"smithy.api#required" => {}}))
    ActionConfiguration.add_member(:filter_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionFilterConfiguration, location_name: "filterConfiguration"))
    ActionConfiguration.type = Types::ActionConfiguration
    ActionConfigurationList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ActionConfiguration)
    ActionExecution.add_member(:plugin_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PluginId, location_name: "pluginId", traits: {"smithy.api#required" => {}}))
    ActionExecution.add_member(:payload, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionExecutionPayload, location_name: "payload", traits: {"smithy.api#required" => {}}))
    ActionExecution.add_member(:payload_field_name_separator, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionPayloadFieldNameSeparator, location_name: "payloadFieldNameSeparator", traits: {"smithy.api#required" => {}}))
    ActionExecution.type = Types::ActionExecution
    ActionExecutionEvent.add_member(:plugin_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PluginId, location_name: "pluginId", traits: {"smithy.api#required" => {}}))
    ActionExecutionEvent.add_member(:payload, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionExecutionPayload, location_name: "payload", traits: {"smithy.api#required" => {}}))
    ActionExecutionEvent.add_member(:payload_field_name_separator, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionPayloadFieldNameSeparator, location_name: "payloadFieldNameSeparator", traits: {"smithy.api#required" => {}}))
    ActionExecutionEvent.type = Types::ActionExecutionEvent
    ActionExecutionPayload.key = ::Smithy::Schema::Shapes::MemberShape.new(target: ActionPayloadFieldKey)
    ActionExecutionPayload.value = ::Smithy::Schema::Shapes::MemberShape.new(target: ActionExecutionPayloadField)
    ActionExecutionPayloadField.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionPayloadFieldValue, location_name: "value", traits: {"smithy.api#required" => {}}))
    ActionExecutionPayloadField.type = Types::ActionExecutionPayloadField
    ActionFilterConfiguration.add_member(:document_attribute_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeFilter, location_name: "documentAttributeFilter", traits: {"smithy.api#required" => {}}))
    ActionFilterConfiguration.type = Types::ActionFilterConfiguration
    ActionPayloadFieldType.add_member(:string, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "STRING", traits: {"smithy.api#enumValue" => "STRING"}))
    ActionPayloadFieldType.add_member(:number, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NUMBER", traits: {"smithy.api#enumValue" => "NUMBER"}))
    ActionPayloadFieldType.add_member(:array, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ARRAY", traits: {"smithy.api#enumValue" => "ARRAY"}))
    ActionPayloadFieldType.add_member(:boolean, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BOOLEAN", traits: {"smithy.api#enumValue" => "BOOLEAN"}))
    ActionReview.add_member(:plugin_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PluginId, location_name: "pluginId"))
    ActionReview.add_member(:plugin_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PluginType, location_name: "pluginType"))
    ActionReview.add_member(:payload, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionReviewPayload, location_name: "payload"))
    ActionReview.add_member(:payload_field_name_separator, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionPayloadFieldNameSeparator, location_name: "payloadFieldNameSeparator"))
    ActionReview.type = Types::ActionReview
    ActionReviewEvent.add_member(:conversation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ConversationId, location_name: "conversationId"))
    ActionReviewEvent.add_member(:user_message_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageId, location_name: "userMessageId"))
    ActionReviewEvent.add_member(:system_message_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageId, location_name: "systemMessageId"))
    ActionReviewEvent.add_member(:plugin_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PluginId, location_name: "pluginId"))
    ActionReviewEvent.add_member(:plugin_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PluginType, location_name: "pluginType"))
    ActionReviewEvent.add_member(:payload, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionReviewPayload, location_name: "payload"))
    ActionReviewEvent.add_member(:payload_field_name_separator, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionPayloadFieldNameSeparator, location_name: "payloadFieldNameSeparator"))
    ActionReviewEvent.type = Types::ActionReviewEvent
    ActionReviewPayload.key = ::Smithy::Schema::Shapes::MemberShape.new(target: ActionPayloadFieldKey)
    ActionReviewPayload.value = ::Smithy::Schema::Shapes::MemberShape.new(target: ActionReviewPayloadField)
    ActionReviewPayloadField.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "displayName"))
    ActionReviewPayloadField.add_member(:display_order, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, location_name: "displayOrder"))
    ActionReviewPayloadField.add_member(:display_description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "displayDescription"))
    ActionReviewPayloadField.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionPayloadFieldType, location_name: "type"))
    ActionReviewPayloadField.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionPayloadFieldValue, location_name: "value"))
    ActionReviewPayloadField.add_member(:allowed_values, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionReviewPayloadFieldAllowedValues, location_name: "allowedValues"))
    ActionReviewPayloadField.add_member(:allowed_format, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "allowedFormat"))
    ActionReviewPayloadField.add_member(:array_item_json_schema, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionReviewPayloadFieldArrayItemJsonSchema, location_name: "arrayItemJsonSchema"))
    ActionReviewPayloadField.add_member(:required, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "required"))
    ActionReviewPayloadField.type = Types::ActionReviewPayloadField
    ActionReviewPayloadFieldAllowedValue.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionPayloadFieldValue, location_name: "value"))
    ActionReviewPayloadFieldAllowedValue.add_member(:display_value, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionPayloadFieldValue, location_name: "displayValue"))
    ActionReviewPayloadFieldAllowedValue.type = Types::ActionReviewPayloadFieldAllowedValue
    ActionReviewPayloadFieldAllowedValues.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ActionReviewPayloadFieldAllowedValue)
    ActionSummary.add_member(:action_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "actionIdentifier"))
    ActionSummary.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "displayName"))
    ActionSummary.add_member(:instruction_example, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "instructionExample"))
    ActionSummary.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "description"))
    ActionSummary.type = Types::ActionSummary
    Actions.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ActionSummary)
    Application.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationName, location_name: "displayName"))
    Application.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationId, location_name: "applicationId"))
    Application.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "createdAt"))
    Application.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "updatedAt"))
    Application.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationStatus, location_name: "status"))
    Application.add_member(:identity_type, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityType, location_name: "identityType"))
    Application.add_member(:quick_sight_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: QuickSightConfiguration, location_name: "quickSightConfiguration"))
    Application.type = Types::Application
    ApplicationStatus.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CREATING", traits: {"smithy.api#enumValue" => "CREATING"}))
    ApplicationStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    ApplicationStatus.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    ApplicationStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    ApplicationStatus.add_member(:updating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UPDATING", traits: {"smithy.api#enumValue" => "UPDATING"}))
    Applications.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Application)
    AppliedAttachmentsConfiguration.add_member(:attachments_control_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: AttachmentsControlMode, location_name: "attachmentsControlMode"))
    AppliedAttachmentsConfiguration.type = Types::AppliedAttachmentsConfiguration
    AppliedCreatorModeConfiguration.add_member(:creator_mode_control, ::Smithy::Schema::Shapes::MemberShape.new(target: CreatorModeControl, location_name: "creatorModeControl", traits: {"smithy.api#required" => {}}))
    AppliedCreatorModeConfiguration.type = Types::AppliedCreatorModeConfiguration
    AppliedOrchestrationConfiguration.add_member(:control, ::Smithy::Schema::Shapes::MemberShape.new(target: OrchestrationControl, location_name: "control", traits: {"smithy.api#required" => {}}))
    AppliedOrchestrationConfiguration.type = Types::AppliedOrchestrationConfiguration
    AssociatePermissionRequest.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationId, location_name: "applicationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AssociatePermissionRequest.add_member(:statement_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StatementId, location_name: "statementId", traits: {"smithy.api#required" => {}}))
    AssociatePermissionRequest.add_member(:actions, ::Smithy::Schema::Shapes::MemberShape.new(target: QIamActions, location_name: "actions", traits: {"smithy.api#required" => {}}))
    AssociatePermissionRequest.add_member(:conditions, ::Smithy::Schema::Shapes::MemberShape.new(target: PermissionConditions, location_name: "conditions"))
    AssociatePermissionRequest.add_member(:principal, ::Smithy::Schema::Shapes::MemberShape.new(target: PrincipalRoleArn, location_name: "principal", traits: {"smithy.api#required" => {}}))
    AssociatePermissionRequest.type = Types::AssociatePermissionRequest
    AssociatePermissionResponse.add_member(:statement, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "statement"))
    AssociatePermissionResponse.type = Types::AssociatePermissionResponse
    AssociatedGroup.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupName, location_name: "name"))
    AssociatedGroup.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: MembershipType, location_name: "type"))
    AssociatedGroup.type = Types::AssociatedGroup
    AssociatedGroups.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AssociatedGroup)
    AssociatedUser.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "id"))
    AssociatedUser.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: MembershipType, location_name: "type"))
    AssociatedUser.type = Types::AssociatedUser
    AssociatedUsers.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AssociatedUser)
    Attachment.add_member(:attachment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AttachmentId, location_name: "attachmentId"))
    Attachment.add_member(:conversation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ConversationId, location_name: "conversationId"))
    Attachment.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: AttachmentName, location_name: "name"))
    Attachment.add_member(:copy_from, ::Smithy::Schema::Shapes::MemberShape.new(target: CopyFromSource, location_name: "copyFrom"))
    Attachment.add_member(:file_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "fileType"))
    Attachment.add_member(:file_size, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, location_name: "fileSize"))
    Attachment.add_member(:md5chksum, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "md5chksum"))
    Attachment.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "createdAt"))
    Attachment.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: AttachmentStatus, location_name: "status"))
    Attachment.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorDetail, location_name: "error"))
    Attachment.type = Types::Attachment
    AttachmentInput.add_member(:data, ::Smithy::Schema::Shapes::MemberShape.new(target: Blob, location_name: "data"))
    AttachmentInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: AttachmentName, location_name: "name"))
    AttachmentInput.add_member(:copy_from, ::Smithy::Schema::Shapes::MemberShape.new(target: CopyFromSource, location_name: "copyFrom"))
    AttachmentInput.type = Types::AttachmentInput
    AttachmentInputEvent.add_member(:attachment, ::Smithy::Schema::Shapes::MemberShape.new(target: AttachmentInput, location_name: "attachment"))
    AttachmentInputEvent.type = Types::AttachmentInputEvent
    AttachmentList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Attachment)
    AttachmentOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: AttachmentName, location_name: "name"))
    AttachmentOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: AttachmentStatus, location_name: "status"))
    AttachmentOutput.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorDetail, location_name: "error"))
    AttachmentOutput.add_member(:attachment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AttachmentId, location_name: "attachmentId"))
    AttachmentOutput.add_member(:conversation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ConversationId, location_name: "conversationId"))
    AttachmentOutput.type = Types::AttachmentOutput
    AttachmentStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    AttachmentStatus.add_member(:success, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SUCCESS", traits: {"smithy.api#enumValue" => "SUCCESS"}))
    AttachmentsConfiguration.add_member(:attachments_control_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: AttachmentsControlMode, location_name: "attachmentsControlMode", traits: {"smithy.api#required" => {}}))
    AttachmentsConfiguration.type = Types::AttachmentsConfiguration
    AttachmentsControlMode.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    AttachmentsControlMode.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    AttachmentsInput.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AttachmentInput)
    AttachmentsOutput.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AttachmentOutput)
    AttributeFilter.add_member(:and_all_filters, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeFilters, location_name: "andAllFilters"))
    AttributeFilter.add_member(:or_all_filters, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeFilters, location_name: "orAllFilters"))
    AttributeFilter.add_member(:not_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeFilter, location_name: "notFilter"))
    AttributeFilter.add_member(:equals_to, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentAttribute, location_name: "equalsTo"))
    AttributeFilter.add_member(:contains_all, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentAttribute, location_name: "containsAll"))
    AttributeFilter.add_member(:contains_any, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentAttribute, location_name: "containsAny"))
    AttributeFilter.add_member(:greater_than, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentAttribute, location_name: "greaterThan"))
    AttributeFilter.add_member(:greater_than_or_equals, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentAttribute, location_name: "greaterThanOrEquals"))
    AttributeFilter.add_member(:less_than, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentAttribute, location_name: "lessThan"))
    AttributeFilter.add_member(:less_than_or_equals, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentAttribute, location_name: "lessThanOrEquals"))
    AttributeFilter.type = Types::AttributeFilter
    AttributeFilters.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeFilter)
    AttributeType.add_member(:string, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "STRING", traits: {"smithy.api#enumValue" => "STRING"}))
    AttributeType.add_member(:string_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "STRING_LIST", traits: {"smithy.api#enumValue" => "STRING_LIST"}))
    AttributeType.add_member(:number, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NUMBER", traits: {"smithy.api#enumValue" => "NUMBER"}))
    AttributeType.add_member(:date, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DATE", traits: {"smithy.api#enumValue" => "DATE"}))
    AttributeValueOperator.add_member(:delete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DELETE", traits: {"smithy.api#enumValue" => "DELETE"}))
    AudioExtractionConfiguration.add_member(:audio_extraction_status, ::Smithy::Schema::Shapes::MemberShape.new(target: AudioExtractionStatus, location_name: "audioExtractionStatus", traits: {"smithy.api#required" => {}}))
    AudioExtractionConfiguration.type = Types::AudioExtractionConfiguration
    AudioExtractionStatus.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    AudioExtractionStatus.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    AudioExtractionType.add_member(:transcript, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TRANSCRIPT", traits: {"smithy.api#enumValue" => "TRANSCRIPT"}))
    AudioExtractionType.add_member(:summary, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SUMMARY", traits: {"smithy.api#enumValue" => "SUMMARY"}))
    AudioSourceDetails.add_member(:media_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MediaId, location_name: "mediaId"))
    AudioSourceDetails.add_member(:media_mime_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "mediaMimeType"))
    AudioSourceDetails.add_member(:start_time_milliseconds, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, location_name: "startTimeMilliseconds"))
    AudioSourceDetails.add_member(:end_time_milliseconds, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, location_name: "endTimeMilliseconds"))
    AudioSourceDetails.add_member(:audio_extraction_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AudioExtractionType, location_name: "audioExtractionType"))
    AudioSourceDetails.type = Types::AudioSourceDetails
    AuthChallengeRequest.add_member(:authorization_url, ::Smithy::Schema::Shapes::MemberShape.new(target: Url, location_name: "authorizationUrl", traits: {"smithy.api#required" => {}}))
    AuthChallengeRequest.type = Types::AuthChallengeRequest
    AuthChallengeRequestEvent.add_member(:authorization_url, ::Smithy::Schema::Shapes::MemberShape.new(target: Url, location_name: "authorizationUrl", traits: {"smithy.api#required" => {}}))
    AuthChallengeRequestEvent.type = Types::AuthChallengeRequestEvent
    AuthChallengeResponse.add_member(:response_map, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthorizationResponseMap, location_name: "responseMap", traits: {"smithy.api#required" => {}}))
    AuthChallengeResponse.type = Types::AuthChallengeResponse
    AuthChallengeResponseEvent.add_member(:response_map, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthorizationResponseMap, location_name: "responseMap", traits: {"smithy.api#required" => {}}))
    AuthChallengeResponseEvent.type = Types::AuthChallengeResponseEvent
    AuthorizationResponseMap.key = ::Smithy::Schema::Shapes::MemberShape.new(target: AuthResponseKey)
    AuthorizationResponseMap.value = ::Smithy::Schema::Shapes::MemberShape.new(target: AuthResponseValue)
    AutoSubscriptionConfiguration.add_member(:auto_subscribe, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoSubscriptionStatus, location_name: "autoSubscribe", traits: {"smithy.api#required" => {}}))
    AutoSubscriptionConfiguration.add_member(:default_subscription_type, ::Smithy::Schema::Shapes::MemberShape.new(target: SubscriptionType, location_name: "defaultSubscriptionType"))
    AutoSubscriptionConfiguration.type = Types::AutoSubscriptionConfiguration
    AutoSubscriptionStatus.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    AutoSubscriptionStatus.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    BasicAuthConfiguration.add_member(:secret_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretArn, location_name: "secretArn", traits: {"smithy.api#required" => {}}))
    BasicAuthConfiguration.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, location_name: "roleArn", traits: {"smithy.api#required" => {}}))
    BasicAuthConfiguration.type = Types::BasicAuthConfiguration
    BatchDeleteDocumentRequest.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationId, location_name: "applicationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    BatchDeleteDocumentRequest.add_member(:index_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexId, location_name: "indexId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    BatchDeleteDocumentRequest.add_member(:documents, ::Smithy::Schema::Shapes::MemberShape.new(target: DeleteDocuments, location_name: "documents", traits: {"smithy.api#required" => {}}))
    BatchDeleteDocumentRequest.add_member(:data_source_sync_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutionId, location_name: "dataSourceSyncId"))
    BatchDeleteDocumentRequest.type = Types::BatchDeleteDocumentRequest
    BatchDeleteDocumentResponse.add_member(:failed_documents, ::Smithy::Schema::Shapes::MemberShape.new(target: FailedDocuments, location_name: "failedDocuments"))
    BatchDeleteDocumentResponse.type = Types::BatchDeleteDocumentResponse
    BatchPutDocumentRequest.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationId, location_name: "applicationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    BatchPutDocumentRequest.add_member(:index_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexId, location_name: "indexId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    BatchPutDocumentRequest.add_member(:documents, ::Smithy::Schema::Shapes::MemberShape.new(target: Documents, location_name: "documents", traits: {"smithy.api#required" => {}}))
    BatchPutDocumentRequest.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, location_name: "roleArn"))
    BatchPutDocumentRequest.add_member(:data_source_sync_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutionId, location_name: "dataSourceSyncId"))
    BatchPutDocumentRequest.type = Types::BatchPutDocumentRequest
    BatchPutDocumentResponse.add_member(:failed_documents, ::Smithy::Schema::Shapes::MemberShape.new(target: FailedDocuments, location_name: "failedDocuments"))
    BatchPutDocumentResponse.type = Types::BatchPutDocumentResponse
    BlockedPhrases.member = ::Smithy::Schema::Shapes::MemberShape.new(target: BlockedPhrase)
    BlockedPhrasesConfiguration.add_member(:blocked_phrases, ::Smithy::Schema::Shapes::MemberShape.new(target: BlockedPhrases, location_name: "blockedPhrases"))
    BlockedPhrasesConfiguration.add_member(:system_message_override, ::Smithy::Schema::Shapes::MemberShape.new(target: SystemMessageOverride, location_name: "systemMessageOverride"))
    BlockedPhrasesConfiguration.type = Types::BlockedPhrasesConfiguration
    BlockedPhrasesConfigurationUpdate.add_member(:blocked_phrases_to_create_or_update, ::Smithy::Schema::Shapes::MemberShape.new(target: BlockedPhrases, location_name: "blockedPhrasesToCreateOrUpdate"))
    BlockedPhrasesConfigurationUpdate.add_member(:blocked_phrases_to_delete, ::Smithy::Schema::Shapes::MemberShape.new(target: BlockedPhrases, location_name: "blockedPhrasesToDelete"))
    BlockedPhrasesConfigurationUpdate.add_member(:system_message_override, ::Smithy::Schema::Shapes::MemberShape.new(target: SystemMessageOverride, location_name: "systemMessageOverride"))
    BlockedPhrasesConfigurationUpdate.type = Types::BlockedPhrasesConfigurationUpdate
    BrowserExtensionConfiguration.add_member(:enabled_browser_extensions, ::Smithy::Schema::Shapes::MemberShape.new(target: BrowserExtensionList, location_name: "enabledBrowserExtensions", traits: {"smithy.api#required" => {}}))
    BrowserExtensionConfiguration.type = Types::BrowserExtensionConfiguration
    BrowserExtensionList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: BrowserExtension)
    CancelSubscriptionRequest.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationId, location_name: "applicationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CancelSubscriptionRequest.add_member(:subscription_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SubscriptionId, location_name: "subscriptionId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CancelSubscriptionRequest.type = Types::CancelSubscriptionRequest
    CancelSubscriptionResponse.add_member(:subscription_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SubscriptionArn, location_name: "subscriptionArn"))
    CancelSubscriptionResponse.add_member(:current_subscription, ::Smithy::Schema::Shapes::MemberShape.new(target: SubscriptionDetails, location_name: "currentSubscription"))
    CancelSubscriptionResponse.add_member(:next_subscription, ::Smithy::Schema::Shapes::MemberShape.new(target: SubscriptionDetails, location_name: "nextSubscription"))
    CancelSubscriptionResponse.type = Types::CancelSubscriptionResponse
    ChatInput.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationId, location_name: "applicationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ChatInput.add_member(:user_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserId, location_name: "userId", traits: {"smithy.api#httpQuery" => "userId"}))
    ChatInput.add_member(:user_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: UserGroups, location_name: "userGroups", traits: {"smithy.api#httpQuery" => "userGroups"}))
    ChatInput.add_member(:conversation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ConversationId, location_name: "conversationId", traits: {"smithy.api#httpQuery" => "conversationId"}))
    ChatInput.add_member(:parent_message_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageId, location_name: "parentMessageId", traits: {"smithy.api#httpQuery" => "parentMessageId"}))
    ChatInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, location_name: "clientToken", traits: {"smithy.api#httpQuery" => "clientToken", "smithy.api#idempotencyToken" => {}}))
    ChatInput.add_member(:input_stream, ::Smithy::Schema::Shapes::MemberShape.new(target: ChatInputStream, location_name: "inputStream", traits: {"smithy.api#httpPayload" => {}}))
    ChatInput[:http_payload] = :input_stream
    ChatInput[:http_payload_member] = ChatInput.member(:input_stream)
    ChatInput.type = Types::ChatInput
    ChatInputStream.add_member(:configuration_event, Types::ChatInputStream::ConfigurationEvent, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationEvent, location_name: "configurationEvent"))
    ChatInputStream.add_member(:text_event, Types::ChatInputStream::TextEvent, ::Smithy::Schema::Shapes::MemberShape.new(target: TextInputEvent, location_name: "textEvent"))
    ChatInputStream.add_member(:attachment_event, Types::ChatInputStream::AttachmentEvent, ::Smithy::Schema::Shapes::MemberShape.new(target: AttachmentInputEvent, location_name: "attachmentEvent"))
    ChatInputStream.add_member(:action_execution_event, Types::ChatInputStream::ActionExecutionEvent, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionExecutionEvent, location_name: "actionExecutionEvent"))
    ChatInputStream.add_member(:end_of_input_event, Types::ChatInputStream::EndOfInputEvent, ::Smithy::Schema::Shapes::MemberShape.new(target: EndOfInputEvent, location_name: "endOfInputEvent"))
    ChatInputStream.add_member(:auth_challenge_response_event, Types::ChatInputStream::AuthChallengeResponseEvent, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthChallengeResponseEvent, location_name: "authChallengeResponseEvent"))
    ChatInputStream.add_member(:unknown, Types::ChatInputStream::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    ChatInputStream.type = Types::ChatInputStream
    ChatMode.add_member(:retrieval_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RETRIEVAL_MODE", traits: {"smithy.api#enumValue" => "RETRIEVAL_MODE"}))
    ChatMode.add_member(:creator_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CREATOR_MODE", traits: {"smithy.api#enumValue" => "CREATOR_MODE"}))
    ChatMode.add_member(:plugin_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PLUGIN_MODE", traits: {"smithy.api#enumValue" => "PLUGIN_MODE"}))
    ChatModeConfiguration.add_member(:plugin_configuration, Types::ChatModeConfiguration::PluginConfiguration, ::Smithy::Schema::Shapes::MemberShape.new(target: PluginConfiguration, location_name: "pluginConfiguration"))
    ChatModeConfiguration.add_member(:unknown, Types::ChatModeConfiguration::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    ChatModeConfiguration.type = Types::ChatModeConfiguration
    ChatOutput.add_member(:output_stream, ::Smithy::Schema::Shapes::MemberShape.new(target: ChatOutputStream, location_name: "outputStream", traits: {"smithy.api#httpPayload" => {}}))
    ChatOutput[:http_payload] = :output_stream
    ChatOutput[:http_payload_member] = ChatOutput.member(:output_stream)
    ChatOutput.type = Types::ChatOutput
    ChatOutputStream.add_member(:text_event, Types::ChatOutputStream::TextEvent, ::Smithy::Schema::Shapes::MemberShape.new(target: TextOutputEvent, location_name: "textEvent"))
    ChatOutputStream.add_member(:metadata_event, Types::ChatOutputStream::MetadataEvent, ::Smithy::Schema::Shapes::MemberShape.new(target: MetadataEvent, location_name: "metadataEvent"))
    ChatOutputStream.add_member(:action_review_event, Types::ChatOutputStream::ActionReviewEvent, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionReviewEvent, location_name: "actionReviewEvent"))
    ChatOutputStream.add_member(:failed_attachment_event, Types::ChatOutputStream::FailedAttachmentEvent, ::Smithy::Schema::Shapes::MemberShape.new(target: FailedAttachmentEvent, location_name: "failedAttachmentEvent"))
    ChatOutputStream.add_member(:auth_challenge_request_event, Types::ChatOutputStream::AuthChallengeRequestEvent, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthChallengeRequestEvent, location_name: "authChallengeRequestEvent"))
    ChatOutputStream.add_member(:unknown, Types::ChatOutputStream::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    ChatOutputStream.type = Types::ChatOutputStream
    ChatResponseConfiguration.add_member(:chat_response_configuration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ChatResponseConfigurationId, location_name: "chatResponseConfigurationId", traits: {"smithy.api#required" => {}}))
    ChatResponseConfiguration.add_member(:chat_response_configuration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ChatResponseConfigurationArn, location_name: "chatResponseConfigurationArn", traits: {"smithy.api#required" => {}}))
    ChatResponseConfiguration.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DisplayName, location_name: "displayName", traits: {"smithy.api#required" => {}}))
    ChatResponseConfiguration.add_member(:response_configuration_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseConfigurationSummary, location_name: "responseConfigurationSummary"))
    ChatResponseConfiguration.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ChatResponseConfigurationStatus, location_name: "status", traits: {"smithy.api#required" => {}}))
    ChatResponseConfiguration.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "createdAt"))
    ChatResponseConfiguration.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "updatedAt"))
    ChatResponseConfiguration.type = Types::ChatResponseConfiguration
    ChatResponseConfigurationDetail.add_member(:response_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseConfigurations, location_name: "responseConfigurations"))
    ChatResponseConfigurationDetail.add_member(:response_configuration_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "responseConfigurationSummary"))
    ChatResponseConfigurationDetail.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ChatResponseConfigurationStatus, location_name: "status"))
    ChatResponseConfigurationDetail.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorDetail, location_name: "error"))
    ChatResponseConfigurationDetail.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "updatedAt"))
    ChatResponseConfigurationDetail.type = Types::ChatResponseConfigurationDetail
    ChatResponseConfigurationStatus.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CREATING", traits: {"smithy.api#enumValue" => "CREATING"}))
    ChatResponseConfigurationStatus.add_member(:updating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UPDATING", traits: {"smithy.api#enumValue" => "UPDATING"}))
    ChatResponseConfigurationStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    ChatResponseConfigurationStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    ChatResponseConfigurations.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ChatResponseConfiguration)
    ChatSyncInput.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationId, location_name: "applicationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ChatSyncInput.add_member(:user_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserId, location_name: "userId", traits: {"smithy.api#httpQuery" => "userId"}))
    ChatSyncInput.add_member(:user_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: UserGroups, location_name: "userGroups", traits: {"smithy.api#httpQuery" => "userGroups"}))
    ChatSyncInput.add_member(:user_message, ::Smithy::Schema::Shapes::MemberShape.new(target: UserMessage, location_name: "userMessage"))
    ChatSyncInput.add_member(:attachments, ::Smithy::Schema::Shapes::MemberShape.new(target: AttachmentsInput, location_name: "attachments"))
    ChatSyncInput.add_member(:action_execution, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionExecution, location_name: "actionExecution"))
    ChatSyncInput.add_member(:auth_challenge_response, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthChallengeResponse, location_name: "authChallengeResponse"))
    ChatSyncInput.add_member(:conversation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ConversationId, location_name: "conversationId"))
    ChatSyncInput.add_member(:parent_message_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageId, location_name: "parentMessageId"))
    ChatSyncInput.add_member(:attribute_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeFilter, location_name: "attributeFilter"))
    ChatSyncInput.add_member(:chat_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: ChatMode, location_name: "chatMode"))
    ChatSyncInput.add_member(:chat_mode_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ChatModeConfiguration, location_name: "chatModeConfiguration"))
    ChatSyncInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, location_name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    ChatSyncInput.type = Types::ChatSyncInput
    ChatSyncOutput.add_member(:conversation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ConversationId, location_name: "conversationId"))
    ChatSyncOutput.add_member(:system_message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "systemMessage"))
    ChatSyncOutput.add_member(:system_message_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageId, location_name: "systemMessageId"))
    ChatSyncOutput.add_member(:user_message_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageId, location_name: "userMessageId"))
    ChatSyncOutput.add_member(:action_review, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionReview, location_name: "actionReview"))
    ChatSyncOutput.add_member(:auth_challenge_request, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthChallengeRequest, location_name: "authChallengeRequest"))
    ChatSyncOutput.add_member(:source_attributions, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceAttributions, location_name: "sourceAttributions"))
    ChatSyncOutput.add_member(:failed_attachments, ::Smithy::Schema::Shapes::MemberShape.new(target: AttachmentsOutput, location_name: "failedAttachments"))
    ChatSyncOutput.type = Types::ChatSyncOutput
    CheckDocumentAccessRequest.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationId, location_name: "applicationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CheckDocumentAccessRequest.add_member(:index_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexId, location_name: "indexId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CheckDocumentAccessRequest.add_member(:user_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "userId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CheckDocumentAccessRequest.add_member(:document_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentId, location_name: "documentId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CheckDocumentAccessRequest.add_member(:data_source_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceId, location_name: "dataSourceId", traits: {"smithy.api#httpQuery" => "dataSourceId"}))
    CheckDocumentAccessRequest.type = Types::CheckDocumentAccessRequest
    CheckDocumentAccessResponse.add_member(:user_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociatedGroups, location_name: "userGroups"))
    CheckDocumentAccessResponse.add_member(:user_aliases, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociatedUsers, location_name: "userAliases"))
    CheckDocumentAccessResponse.add_member(:has_access, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "hasAccess"))
    CheckDocumentAccessResponse.add_member(:document_acl, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentAcl, location_name: "documentAcl"))
    CheckDocumentAccessResponse.type = Types::CheckDocumentAccessResponse
    ClientIdsForOIDC.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ClientIdForOIDC)
    ConfigurationEvent.add_member(:chat_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: ChatMode, location_name: "chatMode"))
    ConfigurationEvent.add_member(:chat_mode_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ChatModeConfiguration, location_name: "chatModeConfiguration"))
    ConfigurationEvent.add_member(:attribute_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeFilter, location_name: "attributeFilter"))
    ConfigurationEvent.type = Types::ConfigurationEvent
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "message", traits: {"smithy.api#required" => {}}))
    ConflictException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "resourceId", traits: {"smithy.api#required" => {}}))
    ConflictException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "resourceType", traits: {"smithy.api#required" => {}}))
    ConflictException.type = Types::ConflictException
    ContentBlockerRule.add_member(:system_message_override, ::Smithy::Schema::Shapes::MemberShape.new(target: SystemMessageOverride, location_name: "systemMessageOverride"))
    ContentBlockerRule.type = Types::ContentBlockerRule
    ContentRetrievalRule.add_member(:eligible_data_sources, ::Smithy::Schema::Shapes::MemberShape.new(target: EligibleDataSources, location_name: "eligibleDataSources"))
    ContentRetrievalRule.type = Types::ContentRetrievalRule
    ContentSource.add_member(:retriever, Types::ContentSource::Retriever, ::Smithy::Schema::Shapes::MemberShape.new(target: RetrieverContentSource, location_name: "retriever"))
    ContentSource.add_member(:unknown, Types::ContentSource::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    ContentSource.type = Types::ContentSource
    ContentType.add_member(:pdf, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PDF", traits: {"smithy.api#enumValue" => "PDF"}))
    ContentType.add_member(:html, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "HTML", traits: {"smithy.api#enumValue" => "HTML"}))
    ContentType.add_member(:ms_word, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MS_WORD", traits: {"smithy.api#enumValue" => "MS_WORD"}))
    ContentType.add_member(:plain_text, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PLAIN_TEXT", traits: {"smithy.api#enumValue" => "PLAIN_TEXT"}))
    ContentType.add_member(:ppt, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PPT", traits: {"smithy.api#enumValue" => "PPT"}))
    ContentType.add_member(:rtf, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RTF", traits: {"smithy.api#enumValue" => "RTF"}))
    ContentType.add_member(:xml, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "XML", traits: {"smithy.api#enumValue" => "XML"}))
    ContentType.add_member(:xslt, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "XSLT", traits: {"smithy.api#enumValue" => "XSLT"}))
    ContentType.add_member(:ms_excel, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MS_EXCEL", traits: {"smithy.api#enumValue" => "MS_EXCEL"}))
    ContentType.add_member(:csv, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CSV", traits: {"smithy.api#enumValue" => "CSV"}))
    ContentType.add_member(:json, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "JSON", traits: {"smithy.api#enumValue" => "JSON"}))
    ContentType.add_member(:md, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MD", traits: {"smithy.api#enumValue" => "MD"}))
    Conversation.add_member(:conversation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ConversationId, location_name: "conversationId"))
    Conversation.add_member(:title, ::Smithy::Schema::Shapes::MemberShape.new(target: ConversationTitle, location_name: "title"))
    Conversation.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "startTime"))
    Conversation.type = Types::Conversation
    ConversationSource.add_member(:conversation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ConversationId, location_name: "conversationId", traits: {"smithy.api#required" => {}}))
    ConversationSource.add_member(:attachment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AttachmentId, location_name: "attachmentId", traits: {"smithy.api#required" => {}}))
    ConversationSource.type = Types::ConversationSource
    Conversations.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Conversation)
    CopyFromSource.add_member(:conversation, Types::CopyFromSource::Conversation, ::Smithy::Schema::Shapes::MemberShape.new(target: ConversationSource, location_name: "conversation"))
    CopyFromSource.add_member(:unknown, Types::CopyFromSource::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    CopyFromSource.type = Types::CopyFromSource
    CreateAnonymousWebExperienceUrlRequest.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationId, location_name: "applicationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateAnonymousWebExperienceUrlRequest.add_member(:web_experience_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WebExperienceId, location_name: "webExperienceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateAnonymousWebExperienceUrlRequest.add_member(:session_duration_in_minutes, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionDurationInMinutes, location_name: "sessionDurationInMinutes"))
    CreateAnonymousWebExperienceUrlRequest.type = Types::CreateAnonymousWebExperienceUrlRequest
    CreateAnonymousWebExperienceUrlResponse.add_member(:anonymous_url, ::Smithy::Schema::Shapes::MemberShape.new(target: Url, location_name: "anonymousUrl"))
    CreateAnonymousWebExperienceUrlResponse.type = Types::CreateAnonymousWebExperienceUrlResponse
    CreateApplicationRequest.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationName, location_name: "displayName", traits: {"smithy.api#required" => {}}))
    CreateApplicationRequest.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, location_name: "roleArn"))
    CreateApplicationRequest.add_member(:identity_type, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityType, location_name: "identityType"))
    CreateApplicationRequest.add_member(:iam_identity_provider_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IAMIdentityProviderArn, location_name: "iamIdentityProviderArn"))
    CreateApplicationRequest.add_member(:identity_center_instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceArn, location_name: "identityCenterInstanceArn"))
    CreateApplicationRequest.add_member(:client_ids_for_oidc, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientIdsForOIDC, location_name: "clientIdsForOIDC"))
    CreateApplicationRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, location_name: "description"))
    CreateApplicationRequest.add_member(:encryption_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionConfiguration, location_name: "encryptionConfiguration"))
    CreateApplicationRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, location_name: "tags", traits: {"aws.cloudformation#cfnMutability" => "full"}))
    CreateApplicationRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, location_name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateApplicationRequest.add_member(:attachments_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AttachmentsConfiguration, location_name: "attachmentsConfiguration", traits: {"aws.cloudformation#cfnMutability" => "full"}))
    CreateApplicationRequest.add_member(:q_apps_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: QAppsConfiguration, location_name: "qAppsConfiguration"))
    CreateApplicationRequest.add_member(:personalization_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: PersonalizationConfiguration, location_name: "personalizationConfiguration"))
    CreateApplicationRequest.add_member(:quick_sight_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: QuickSightConfiguration, location_name: "quickSightConfiguration"))
    CreateApplicationRequest.type = Types::CreateApplicationRequest
    CreateApplicationResponse.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationId, location_name: "applicationId"))
    CreateApplicationResponse.add_member(:application_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationArn, location_name: "applicationArn"))
    CreateApplicationResponse.type = Types::CreateApplicationResponse
    CreateChatResponseConfigurationRequest.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationId, location_name: "applicationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateChatResponseConfigurationRequest.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DisplayName, location_name: "displayName", traits: {"smithy.api#required" => {}}))
    CreateChatResponseConfigurationRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateChatResponseConfigurationRequest.add_member(:response_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseConfigurations, location_name: "responseConfigurations", traits: {"smithy.api#required" => {}}))
    CreateChatResponseConfigurationRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, location_name: "tags", traits: {"aws.cloudformation#cfnMutability" => "full"}))
    CreateChatResponseConfigurationRequest.type = Types::CreateChatResponseConfigurationRequest
    CreateChatResponseConfigurationResponse.add_member(:chat_response_configuration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ChatResponseConfigurationId, location_name: "chatResponseConfigurationId", traits: {"smithy.api#required" => {}}))
    CreateChatResponseConfigurationResponse.add_member(:chat_response_configuration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ChatResponseConfigurationArn, location_name: "chatResponseConfigurationArn", traits: {"smithy.api#required" => {}}))
    CreateChatResponseConfigurationResponse.type = Types::CreateChatResponseConfigurationResponse
    CreateDataAccessorRequest.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationId, location_name: "applicationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateDataAccessorRequest.add_member(:principal, ::Smithy::Schema::Shapes::MemberShape.new(target: PrincipalRoleArn, location_name: "principal", traits: {"smithy.api#required" => {}}))
    CreateDataAccessorRequest.add_member(:action_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionConfigurationList, location_name: "actionConfigurations", traits: {"smithy.api#required" => {}}))
    CreateDataAccessorRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, location_name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateDataAccessorRequest.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DataAccessorName, location_name: "displayName", traits: {"smithy.api#required" => {}}))
    CreateDataAccessorRequest.add_member(:authentication_detail, ::Smithy::Schema::Shapes::MemberShape.new(target: DataAccessorAuthenticationDetail, location_name: "authenticationDetail"))
    CreateDataAccessorRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, location_name: "tags", traits: {"aws.cloudformation#cfnMutability" => "full"}))
    CreateDataAccessorRequest.type = Types::CreateDataAccessorRequest
    CreateDataAccessorResponse.add_member(:data_accessor_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DataAccessorId, location_name: "dataAccessorId", traits: {"smithy.api#required" => {}}))
    CreateDataAccessorResponse.add_member(:idc_application_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IdcApplicationArn, location_name: "idcApplicationArn", traits: {"smithy.api#required" => {}}))
    CreateDataAccessorResponse.add_member(:data_accessor_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DataAccessorArn, location_name: "dataAccessorArn", traits: {"smithy.api#required" => {}}))
    CreateDataAccessorResponse.type = Types::CreateDataAccessorResponse
    CreateDataSourceRequest.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationId, location_name: "applicationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateDataSourceRequest.add_member(:index_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexId, location_name: "indexId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateDataSourceRequest.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceName, location_name: "displayName", traits: {"aws.cloudformation#cfnMutability" => "full", "smithy.api#required" => {}}))
    CreateDataSourceRequest.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceConfiguration, location_name: "configuration", traits: {"smithy.api#required" => {}}))
    CreateDataSourceRequest.add_member(:vpc_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceVpcConfiguration, location_name: "vpcConfiguration"))
    CreateDataSourceRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, location_name: "description"))
    CreateDataSourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, location_name: "tags", traits: {"aws.cloudformation#cfnMutability" => "full"}))
    CreateDataSourceRequest.add_member(:sync_schedule, ::Smithy::Schema::Shapes::MemberShape.new(target: SyncSchedule, location_name: "syncSchedule"))
    CreateDataSourceRequest.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, location_name: "roleArn"))
    CreateDataSourceRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, location_name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateDataSourceRequest.add_member(:document_enrichment_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentEnrichmentConfiguration, location_name: "documentEnrichmentConfiguration"))
    CreateDataSourceRequest.add_member(:media_extraction_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: MediaExtractionConfiguration, location_name: "mediaExtractionConfiguration"))
    CreateDataSourceRequest.type = Types::CreateDataSourceRequest
    CreateDataSourceResponse.add_member(:data_source_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceId, location_name: "dataSourceId"))
    CreateDataSourceResponse.add_member(:data_source_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceArn, location_name: "dataSourceArn"))
    CreateDataSourceResponse.type = Types::CreateDataSourceResponse
    CreateIndexRequest.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationId, location_name: "applicationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateIndexRequest.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexName, location_name: "displayName", traits: {"aws.cloudformation#cfnMutability" => "full", "smithy.api#required" => {}}))
    CreateIndexRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, location_name: "description"))
    CreateIndexRequest.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexType, location_name: "type"))
    CreateIndexRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, location_name: "tags", traits: {"aws.cloudformation#cfnMutability" => "full"}))
    CreateIndexRequest.add_member(:capacity_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexCapacityConfiguration, location_name: "capacityConfiguration"))
    CreateIndexRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, location_name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateIndexRequest.type = Types::CreateIndexRequest
    CreateIndexResponse.add_member(:index_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexId, location_name: "indexId"))
    CreateIndexResponse.add_member(:index_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexArn, location_name: "indexArn"))
    CreateIndexResponse.type = Types::CreateIndexResponse
    CreatePluginRequest.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationId, location_name: "applicationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreatePluginRequest.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PluginName, location_name: "displayName", traits: {"smithy.api#required" => {}}))
    CreatePluginRequest.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: PluginType, location_name: "type", traits: {"smithy.api#required" => {}}))
    CreatePluginRequest.add_member(:auth_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: PluginAuthConfiguration, location_name: "authConfiguration", traits: {"smithy.api#required" => {}}))
    CreatePluginRequest.add_member(:server_url, ::Smithy::Schema::Shapes::MemberShape.new(target: Url, location_name: "serverUrl"))
    CreatePluginRequest.add_member(:custom_plugin_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomPluginConfiguration, location_name: "customPluginConfiguration"))
    CreatePluginRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, location_name: "tags", traits: {"aws.cloudformation#cfnMutability" => "full"}))
    CreatePluginRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, location_name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreatePluginRequest.type = Types::CreatePluginRequest
    CreatePluginResponse.add_member(:plugin_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PluginId, location_name: "pluginId"))
    CreatePluginResponse.add_member(:plugin_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: PluginArn, location_name: "pluginArn"))
    CreatePluginResponse.add_member(:build_status, ::Smithy::Schema::Shapes::MemberShape.new(target: PluginBuildStatus, location_name: "buildStatus"))
    CreatePluginResponse.type = Types::CreatePluginResponse
    CreateRetrieverRequest.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationId, location_name: "applicationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateRetrieverRequest.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: RetrieverType, location_name: "type", traits: {"aws.cloudformation#cfnMutability" => "create-and-read", "smithy.api#required" => {}}))
    CreateRetrieverRequest.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RetrieverName, location_name: "displayName", traits: {"smithy.api#required" => {}}))
    CreateRetrieverRequest.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: RetrieverConfiguration, location_name: "configuration", traits: {"smithy.api#required" => {}}))
    CreateRetrieverRequest.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, location_name: "roleArn"))
    CreateRetrieverRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, location_name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateRetrieverRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, location_name: "tags", traits: {"aws.cloudformation#cfnMutability" => "full"}))
    CreateRetrieverRequest.type = Types::CreateRetrieverRequest
    CreateRetrieverResponse.add_member(:retriever_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RetrieverId, location_name: "retrieverId"))
    CreateRetrieverResponse.add_member(:retriever_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RetrieverArn, location_name: "retrieverArn"))
    CreateRetrieverResponse.type = Types::CreateRetrieverResponse
    CreateSubscriptionRequest.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationId, location_name: "applicationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateSubscriptionRequest.add_member(:principal, ::Smithy::Schema::Shapes::MemberShape.new(target: SubscriptionPrincipal, location_name: "principal", traits: {"smithy.api#required" => {}}))
    CreateSubscriptionRequest.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: SubscriptionType, location_name: "type", traits: {"smithy.api#required" => {}}))
    CreateSubscriptionRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, location_name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateSubscriptionRequest.type = Types::CreateSubscriptionRequest
    CreateSubscriptionResponse.add_member(:subscription_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SubscriptionId, location_name: "subscriptionId"))
    CreateSubscriptionResponse.add_member(:subscription_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SubscriptionArn, location_name: "subscriptionArn"))
    CreateSubscriptionResponse.add_member(:current_subscription, ::Smithy::Schema::Shapes::MemberShape.new(target: SubscriptionDetails, location_name: "currentSubscription"))
    CreateSubscriptionResponse.add_member(:next_subscription, ::Smithy::Schema::Shapes::MemberShape.new(target: SubscriptionDetails, location_name: "nextSubscription"))
    CreateSubscriptionResponse.type = Types::CreateSubscriptionResponse
    CreateUserRequest.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationId, location_name: "applicationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateUserRequest.add_member(:user_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "userId", traits: {"smithy.api#required" => {}}))
    CreateUserRequest.add_member(:user_aliases, ::Smithy::Schema::Shapes::MemberShape.new(target: UserAliases, location_name: "userAliases", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}}))
    CreateUserRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, location_name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateUserRequest.type = Types::CreateUserRequest
    CreateUserResponse.type = Types::CreateUserResponse
    CreateWebExperienceRequest.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationId, location_name: "applicationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateWebExperienceRequest.add_member(:title, ::Smithy::Schema::Shapes::MemberShape.new(target: WebExperienceTitle, location_name: "title"))
    CreateWebExperienceRequest.add_member(:subtitle, ::Smithy::Schema::Shapes::MemberShape.new(target: WebExperienceSubtitle, location_name: "subtitle"))
    CreateWebExperienceRequest.add_member(:welcome_message, ::Smithy::Schema::Shapes::MemberShape.new(target: WebExperienceWelcomeMessage, location_name: "welcomeMessage"))
    CreateWebExperienceRequest.add_member(:sample_prompts_control_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: WebExperienceSamplePromptsControlMode, location_name: "samplePromptsControlMode"))
    CreateWebExperienceRequest.add_member(:origins, ::Smithy::Schema::Shapes::MemberShape.new(target: WebExperienceOrigins, location_name: "origins"))
    CreateWebExperienceRequest.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, location_name: "roleArn"))
    CreateWebExperienceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, location_name: "tags", traits: {"aws.cloudformation#cfnMutability" => "full"}))
    CreateWebExperienceRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, location_name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateWebExperienceRequest.add_member(:identity_provider_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityProviderConfiguration, location_name: "identityProviderConfiguration"))
    CreateWebExperienceRequest.add_member(:browser_extension_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: BrowserExtensionConfiguration, location_name: "browserExtensionConfiguration"))
    CreateWebExperienceRequest.add_member(:customization_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomizationConfiguration, location_name: "customizationConfiguration"))
    CreateWebExperienceRequest.type = Types::CreateWebExperienceRequest
    CreateWebExperienceResponse.add_member(:web_experience_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WebExperienceId, location_name: "webExperienceId"))
    CreateWebExperienceResponse.add_member(:web_experience_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: WebExperienceArn, location_name: "webExperienceArn"))
    CreateWebExperienceResponse.type = Types::CreateWebExperienceResponse
    CreatorModeConfiguration.add_member(:creator_mode_control, ::Smithy::Schema::Shapes::MemberShape.new(target: CreatorModeControl, location_name: "creatorModeControl", traits: {"smithy.api#required" => {}}))
    CreatorModeConfiguration.type = Types::CreatorModeConfiguration
    CreatorModeControl.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    CreatorModeControl.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    CustomPluginConfiguration.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: PluginDescription, location_name: "description", traits: {"smithy.api#required" => {}}))
    CustomPluginConfiguration.add_member(:api_schema_type, ::Smithy::Schema::Shapes::MemberShape.new(target: APISchemaType, location_name: "apiSchemaType", traits: {"smithy.api#required" => {}}))
    CustomPluginConfiguration.add_member(:api_schema, ::Smithy::Schema::Shapes::MemberShape.new(target: APISchema, location_name: "apiSchema"))
    CustomPluginConfiguration.type = Types::CustomPluginConfiguration
    CustomizationConfiguration.add_member(:custom_css_url, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomCSSUrl, location_name: "customCSSUrl"))
    CustomizationConfiguration.add_member(:logo_url, ::Smithy::Schema::Shapes::MemberShape.new(target: LogoUrl, location_name: "logoUrl"))
    CustomizationConfiguration.add_member(:font_url, ::Smithy::Schema::Shapes::MemberShape.new(target: FontUrl, location_name: "fontUrl"))
    CustomizationConfiguration.add_member(:favicon_url, ::Smithy::Schema::Shapes::MemberShape.new(target: FaviconUrl, location_name: "faviconUrl"))
    CustomizationConfiguration.type = Types::CustomizationConfiguration
    DataAccessor.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DataAccessorName, location_name: "displayName"))
    DataAccessor.add_member(:data_accessor_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DataAccessorId, location_name: "dataAccessorId"))
    DataAccessor.add_member(:data_accessor_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DataAccessorArn, location_name: "dataAccessorArn"))
    DataAccessor.add_member(:idc_application_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IdcApplicationArn, location_name: "idcApplicationArn"))
    DataAccessor.add_member(:principal, ::Smithy::Schema::Shapes::MemberShape.new(target: PrincipalRoleArn, location_name: "principal"))
    DataAccessor.add_member(:authentication_detail, ::Smithy::Schema::Shapes::MemberShape.new(target: DataAccessorAuthenticationDetail, location_name: "authenticationDetail"))
    DataAccessor.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "createdAt"))
    DataAccessor.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "updatedAt"))
    DataAccessor.type = Types::DataAccessor
    DataAccessorAuthenticationConfiguration.add_member(:idc_trusted_token_issuer_configuration, Types::DataAccessorAuthenticationConfiguration::IdcTrustedTokenIssuerConfiguration, ::Smithy::Schema::Shapes::MemberShape.new(target: DataAccessorIdcTrustedTokenIssuerConfiguration, location_name: "idcTrustedTokenIssuerConfiguration"))
    DataAccessorAuthenticationConfiguration.add_member(:unknown, Types::DataAccessorAuthenticationConfiguration::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    DataAccessorAuthenticationConfiguration.type = Types::DataAccessorAuthenticationConfiguration
    DataAccessorAuthenticationDetail.add_member(:authentication_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DataAccessorAuthenticationType, location_name: "authenticationType", traits: {"smithy.api#required" => {}}))
    DataAccessorAuthenticationDetail.add_member(:authentication_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: DataAccessorAuthenticationConfiguration, location_name: "authenticationConfiguration"))
    DataAccessorAuthenticationDetail.add_member(:external_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: DataAccessorExternalIds, location_name: "externalIds"))
    DataAccessorAuthenticationDetail.type = Types::DataAccessorAuthenticationDetail
    DataAccessorAuthenticationType.add_member(:aws_iam_idc_tti, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AWS_IAM_IDC_TTI", traits: {"smithy.api#enumValue" => "AWS_IAM_IDC_TTI"}))
    DataAccessorAuthenticationType.add_member(:aws_iam_idc_auth_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AWS_IAM_IDC_AUTH_CODE", traits: {"smithy.api#enumValue" => "AWS_IAM_IDC_AUTH_CODE"}))
    DataAccessorExternalIds.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DataAccessorExternalId)
    DataAccessorIdcTrustedTokenIssuerConfiguration.add_member(:idc_trusted_token_issuer_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IdcTrustedTokenIssuerArn, location_name: "idcTrustedTokenIssuerArn", traits: {"smithy.api#required" => {}}))
    DataAccessorIdcTrustedTokenIssuerConfiguration.type = Types::DataAccessorIdcTrustedTokenIssuerConfiguration
    DataAccessors.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DataAccessor)
    DataSource.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceName, location_name: "displayName"))
    DataSource.add_member(:data_source_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceId, location_name: "dataSourceId"))
    DataSource.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "type"))
    DataSource.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "createdAt"))
    DataSource.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "updatedAt"))
    DataSource.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceStatus, location_name: "status"))
    DataSource.type = Types::DataSource
    DataSourceIds.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceId)
    DataSourceStatus.add_member(:pending_creation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PENDING_CREATION", traits: {"smithy.api#enumValue" => "PENDING_CREATION"}))
    DataSourceStatus.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CREATING", traits: {"smithy.api#enumValue" => "CREATING"}))
    DataSourceStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    DataSourceStatus.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    DataSourceStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    DataSourceStatus.add_member(:updating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UPDATING", traits: {"smithy.api#enumValue" => "UPDATING"}))
    DataSourceSyncJob.add_member(:execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutionId, location_name: "executionId"))
    DataSourceSyncJob.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "startTime"))
    DataSourceSyncJob.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "endTime"))
    DataSourceSyncJob.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceSyncJobStatus, location_name: "status"))
    DataSourceSyncJob.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorDetail, location_name: "error"))
    DataSourceSyncJob.add_member(:data_source_error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "dataSourceErrorCode"))
    DataSourceSyncJob.add_member(:metrics, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceSyncJobMetrics, location_name: "metrics"))
    DataSourceSyncJob.type = Types::DataSourceSyncJob
    DataSourceSyncJobMetrics.add_member(:documents_added, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricValue, location_name: "documentsAdded"))
    DataSourceSyncJobMetrics.add_member(:documents_modified, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricValue, location_name: "documentsModified"))
    DataSourceSyncJobMetrics.add_member(:documents_deleted, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricValue, location_name: "documentsDeleted"))
    DataSourceSyncJobMetrics.add_member(:documents_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricValue, location_name: "documentsFailed"))
    DataSourceSyncJobMetrics.add_member(:documents_scanned, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricValue, location_name: "documentsScanned"))
    DataSourceSyncJobMetrics.type = Types::DataSourceSyncJobMetrics
    DataSourceSyncJobStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    DataSourceSyncJobStatus.add_member(:succeeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SUCCEEDED", traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    DataSourceSyncJobStatus.add_member(:syncing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SYNCING", traits: {"smithy.api#enumValue" => "SYNCING"}))
    DataSourceSyncJobStatus.add_member(:incomplete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INCOMPLETE", traits: {"smithy.api#enumValue" => "INCOMPLETE"}))
    DataSourceSyncJobStatus.add_member(:stopping, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "STOPPING", traits: {"smithy.api#enumValue" => "STOPPING"}))
    DataSourceSyncJobStatus.add_member(:aborted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ABORTED", traits: {"smithy.api#enumValue" => "ABORTED"}))
    DataSourceSyncJobStatus.add_member(:syncing_indexing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SYNCING_INDEXING", traits: {"smithy.api#enumValue" => "SYNCING_INDEXING"}))
    DataSourceSyncJobs.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceSyncJob)
    DataSourceVpcConfiguration.add_member(:subnet_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetIds, location_name: "subnetIds", traits: {"smithy.api#required" => {}}))
    DataSourceVpcConfiguration.add_member(:security_group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroupIds, location_name: "securityGroupIds", traits: {"smithy.api#required" => {}}))
    DataSourceVpcConfiguration.type = Types::DataSourceVpcConfiguration
    DataSources.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DataSource)
    DateAttributeBoostingConfiguration.add_member(:boosting_level, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentAttributeBoostingLevel, location_name: "boostingLevel", traits: {"smithy.api#required" => {}}))
    DateAttributeBoostingConfiguration.add_member(:boosting_duration_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: BoostingDurationInSeconds, location_name: "boostingDurationInSeconds"))
    DateAttributeBoostingConfiguration.type = Types::DateAttributeBoostingConfiguration
    DeleteApplicationRequest.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationId, location_name: "applicationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteApplicationRequest.type = Types::DeleteApplicationRequest
    DeleteApplicationResponse.type = Types::DeleteApplicationResponse
    DeleteAttachmentRequest.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationId, location_name: "applicationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAttachmentRequest.add_member(:conversation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ConversationId, location_name: "conversationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAttachmentRequest.add_member(:attachment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AttachmentId, location_name: "attachmentId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAttachmentRequest.add_member(:user_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserId, location_name: "userId", traits: {"smithy.api#httpQuery" => "userId"}))
    DeleteAttachmentRequest.type = Types::DeleteAttachmentRequest
    DeleteAttachmentResponse.type = Types::DeleteAttachmentResponse
    DeleteChatControlsConfigurationRequest.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationId, location_name: "applicationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteChatControlsConfigurationRequest.type = Types::DeleteChatControlsConfigurationRequest
    DeleteChatControlsConfigurationResponse.type = Types::DeleteChatControlsConfigurationResponse
    DeleteChatResponseConfigurationRequest.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationId, location_name: "applicationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteChatResponseConfigurationRequest.add_member(:chat_response_configuration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ChatResponseConfigurationId, location_name: "chatResponseConfigurationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteChatResponseConfigurationRequest.type = Types::DeleteChatResponseConfigurationRequest
    DeleteChatResponseConfigurationResponse.type = Types::DeleteChatResponseConfigurationResponse
    DeleteConversationRequest.add_member(:conversation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ConversationId, location_name: "conversationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteConversationRequest.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationId, location_name: "applicationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteConversationRequest.add_member(:user_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserId, location_name: "userId", traits: {"smithy.api#httpQuery" => "userId"}))
    DeleteConversationRequest.type = Types::DeleteConversationRequest
    DeleteConversationResponse.type = Types::DeleteConversationResponse
    DeleteDataAccessorRequest.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationId, location_name: "applicationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteDataAccessorRequest.add_member(:data_accessor_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DataAccessorId, location_name: "dataAccessorId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteDataAccessorRequest.type = Types::DeleteDataAccessorRequest
    DeleteDataAccessorResponse.type = Types::DeleteDataAccessorResponse
    DeleteDataSourceRequest.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationId, location_name: "applicationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteDataSourceRequest.add_member(:index_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexId, location_name: "indexId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteDataSourceRequest.add_member(:data_source_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceId, location_name: "dataSourceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteDataSourceRequest.type = Types::DeleteDataSourceRequest
    DeleteDataSourceResponse.type = Types::DeleteDataSourceResponse
    DeleteDocument.add_member(:document_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentId, location_name: "documentId", traits: {"smithy.api#required" => {}}))
    DeleteDocument.type = Types::DeleteDocument
    DeleteDocuments.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DeleteDocument)
    DeleteGroupRequest.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationId, location_name: "applicationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteGroupRequest.add_member(:index_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexId, location_name: "indexId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteGroupRequest.add_member(:group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupName, location_name: "groupName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteGroupRequest.add_member(:data_source_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceId, location_name: "dataSourceId", traits: {"smithy.api#httpQuery" => "dataSourceId"}))
    DeleteGroupRequest.type = Types::DeleteGroupRequest
    DeleteGroupResponse.type = Types::DeleteGroupResponse
    DeleteIndexRequest.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationId, location_name: "applicationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteIndexRequest.add_member(:index_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexId, location_name: "indexId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteIndexRequest.type = Types::DeleteIndexRequest
    DeleteIndexResponse.type = Types::DeleteIndexResponse
    DeletePluginRequest.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationId, location_name: "applicationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeletePluginRequest.add_member(:plugin_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PluginId, location_name: "pluginId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeletePluginRequest.type = Types::DeletePluginRequest
    DeletePluginResponse.type = Types::DeletePluginResponse
    DeleteRetrieverRequest.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationId, location_name: "applicationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteRetrieverRequest.add_member(:retriever_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RetrieverId, location_name: "retrieverId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteRetrieverRequest.type = Types::DeleteRetrieverRequest
    DeleteRetrieverResponse.type = Types::DeleteRetrieverResponse
    DeleteUserRequest.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationId, location_name: "applicationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteUserRequest.add_member(:user_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "userId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteUserRequest.type = Types::DeleteUserRequest
    DeleteUserResponse.type = Types::DeleteUserResponse
    DeleteWebExperienceRequest.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationId, location_name: "applicationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteWebExperienceRequest.add_member(:web_experience_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WebExperienceId, location_name: "webExperienceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteWebExperienceRequest.type = Types::DeleteWebExperienceRequest
    DeleteWebExperienceResponse.type = Types::DeleteWebExperienceResponse
    DisassociatePermissionRequest.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationId, location_name: "applicationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociatePermissionRequest.add_member(:statement_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "statementId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociatePermissionRequest.type = Types::DisassociatePermissionRequest
    DisassociatePermissionResponse.type = Types::DisassociatePermissionResponse
    Document.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentId, location_name: "id", traits: {"smithy.api#required" => {}}))
    Document.add_member(:attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentAttributes, location_name: "attributes"))
    Document.add_member(:content, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentContent, location_name: "content"))
    Document.add_member(:content_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentType, location_name: "contentType"))
    Document.add_member(:title, ::Smithy::Schema::Shapes::MemberShape.new(target: Title, location_name: "title"))
    Document.add_member(:access_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessConfiguration, location_name: "accessConfiguration"))
    Document.add_member(:document_enrichment_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentEnrichmentConfiguration, location_name: "documentEnrichmentConfiguration"))
    Document.add_member(:media_extraction_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: MediaExtractionConfiguration, location_name: "mediaExtractionConfiguration"))
    Document.type = Types::Document
    DocumentAcl.add_member(:allowlist, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentAclMembership, location_name: "allowlist"))
    DocumentAcl.add_member(:deny_list, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentAclMembership, location_name: "denyList"))
    DocumentAcl.type = Types::DocumentAcl
    DocumentAclCondition.add_member(:member_relation, ::Smithy::Schema::Shapes::MemberShape.new(target: MemberRelation, location_name: "memberRelation"))
    DocumentAclCondition.add_member(:users, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentAclUsers, location_name: "users"))
    DocumentAclCondition.add_member(:groups, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentAclGroups, location_name: "groups"))
    DocumentAclCondition.type = Types::DocumentAclCondition
    DocumentAclConditions.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentAclCondition)
    DocumentAclGroup.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupName, location_name: "name"))
    DocumentAclGroup.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: MembershipType, location_name: "type"))
    DocumentAclGroup.type = Types::DocumentAclGroup
    DocumentAclGroups.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentAclGroup)
    DocumentAclMembership.add_member(:member_relation, ::Smithy::Schema::Shapes::MemberShape.new(target: MemberRelation, location_name: "memberRelation"))
    DocumentAclMembership.add_member(:conditions, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentAclConditions, location_name: "conditions"))
    DocumentAclMembership.type = Types::DocumentAclMembership
    DocumentAclUser.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "id"))
    DocumentAclUser.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: MembershipType, location_name: "type"))
    DocumentAclUser.type = Types::DocumentAclUser
    DocumentAclUsers.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentAclUser)
    DocumentAttribute.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentAttributeKey, location_name: "name", traits: {"smithy.api#required" => {}}))
    DocumentAttribute.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentAttributeValue, location_name: "value", traits: {"smithy.api#required" => {}}))
    DocumentAttribute.type = Types::DocumentAttribute
    DocumentAttributeBoostingConfiguration.add_member(:number_configuration, Types::DocumentAttributeBoostingConfiguration::NumberConfiguration, ::Smithy::Schema::Shapes::MemberShape.new(target: NumberAttributeBoostingConfiguration, location_name: "numberConfiguration"))
    DocumentAttributeBoostingConfiguration.add_member(:string_configuration, Types::DocumentAttributeBoostingConfiguration::StringConfiguration, ::Smithy::Schema::Shapes::MemberShape.new(target: StringAttributeBoostingConfiguration, location_name: "stringConfiguration"))
    DocumentAttributeBoostingConfiguration.add_member(:date_configuration, Types::DocumentAttributeBoostingConfiguration::DateConfiguration, ::Smithy::Schema::Shapes::MemberShape.new(target: DateAttributeBoostingConfiguration, location_name: "dateConfiguration"))
    DocumentAttributeBoostingConfiguration.add_member(:string_list_configuration, Types::DocumentAttributeBoostingConfiguration::StringListConfiguration, ::Smithy::Schema::Shapes::MemberShape.new(target: StringListAttributeBoostingConfiguration, location_name: "stringListConfiguration"))
    DocumentAttributeBoostingConfiguration.add_member(:unknown, Types::DocumentAttributeBoostingConfiguration::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    DocumentAttributeBoostingConfiguration.type = Types::DocumentAttributeBoostingConfiguration
    DocumentAttributeBoostingLevel.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))
    DocumentAttributeBoostingLevel.add_member(:low, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LOW", traits: {"smithy.api#enumValue" => "LOW"}))
    DocumentAttributeBoostingLevel.add_member(:medium, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MEDIUM", traits: {"smithy.api#enumValue" => "MEDIUM"}))
    DocumentAttributeBoostingLevel.add_member(:high, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "HIGH", traits: {"smithy.api#enumValue" => "HIGH"}))
    DocumentAttributeBoostingLevel.add_member(:very_high, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "VERY_HIGH", traits: {"smithy.api#enumValue" => "VERY_HIGH"}))
    DocumentAttributeBoostingLevel.add_member(:one, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ONE", traits: {"smithy.api#enumValue" => "ONE"}))
    DocumentAttributeBoostingLevel.add_member(:two, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TWO", traits: {"smithy.api#enumValue" => "TWO"}))
    DocumentAttributeBoostingOverrideMap.key = ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentAttributeKey)
    DocumentAttributeBoostingOverrideMap.value = ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentAttributeBoostingConfiguration)
    DocumentAttributeCondition.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentAttributeKey, location_name: "key", traits: {"smithy.api#required" => {}}))
    DocumentAttributeCondition.add_member(:operator, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentEnrichmentConditionOperator, location_name: "operator", traits: {"smithy.api#required" => {}}))
    DocumentAttributeCondition.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentAttributeValue, location_name: "value"))
    DocumentAttributeCondition.type = Types::DocumentAttributeCondition
    DocumentAttributeConfiguration.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentMetadataConfigurationName, location_name: "name"))
    DocumentAttributeConfiguration.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeType, location_name: "type"))
    DocumentAttributeConfiguration.add_member(:search, ::Smithy::Schema::Shapes::MemberShape.new(target: Status, location_name: "search"))
    DocumentAttributeConfiguration.type = Types::DocumentAttributeConfiguration
    DocumentAttributeConfigurations.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentAttributeConfiguration)
    DocumentAttributeStringListValue.member = ::Smithy::Schema::Shapes::MemberShape.new(target: String)
    DocumentAttributeTarget.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentAttributeKey, location_name: "key", traits: {"smithy.api#required" => {}}))
    DocumentAttributeTarget.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentAttributeValue, location_name: "value"))
    DocumentAttributeTarget.add_member(:attribute_value_operator, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeValueOperator, location_name: "attributeValueOperator"))
    DocumentAttributeTarget.type = Types::DocumentAttributeTarget
    DocumentAttributeValue.add_member(:string_value, Types::DocumentAttributeValue::StringValue, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentAttributeStringValue, location_name: "stringValue", traits: {"smithy.api#length" => {"max" => 2048}}))
    DocumentAttributeValue.add_member(:string_list_value, Types::DocumentAttributeValue::StringListValue, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentAttributeStringListValue, location_name: "stringListValue"))
    DocumentAttributeValue.add_member(:long_value, Types::DocumentAttributeValue::LongValue, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, location_name: "longValue"))
    DocumentAttributeValue.add_member(:date_value, Types::DocumentAttributeValue::DateValue, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "dateValue"))
    DocumentAttributeValue.add_member(:unknown, Types::DocumentAttributeValue::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    DocumentAttributeValue.type = Types::DocumentAttributeValue
    DocumentAttributes.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentAttribute)
    DocumentContent.add_member(:blob, Types::DocumentContent::Blob, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Blob, location_name: "blob"))
    DocumentContent.add_member(:s3, Types::DocumentContent::S3, ::Smithy::Schema::Shapes::MemberShape.new(target: S3, location_name: "s3"))
    DocumentContent.add_member(:unknown, Types::DocumentContent::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    DocumentContent.type = Types::DocumentContent
    DocumentContentOperator.add_member(:delete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DELETE", traits: {"smithy.api#enumValue" => "DELETE"}))
    DocumentDetailList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentDetails)
    DocumentDetails.add_member(:document_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentId, location_name: "documentId"))
    DocumentDetails.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentStatus, location_name: "status"))
    DocumentDetails.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorDetail, location_name: "error"))
    DocumentDetails.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "createdAt"))
    DocumentDetails.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "updatedAt"))
    DocumentDetails.type = Types::DocumentDetails
    DocumentEnrichmentConditionOperator.add_member(:greater_than, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GREATER_THAN", traits: {"smithy.api#enumValue" => "GREATER_THAN"}))
    DocumentEnrichmentConditionOperator.add_member(:greater_than_or_equals, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GREATER_THAN_OR_EQUALS", traits: {"smithy.api#enumValue" => "GREATER_THAN_OR_EQUALS"}))
    DocumentEnrichmentConditionOperator.add_member(:less_than, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LESS_THAN", traits: {"smithy.api#enumValue" => "LESS_THAN"}))
    DocumentEnrichmentConditionOperator.add_member(:less_than_or_equals, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LESS_THAN_OR_EQUALS", traits: {"smithy.api#enumValue" => "LESS_THAN_OR_EQUALS"}))
    DocumentEnrichmentConditionOperator.add_member(:equals, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "EQUALS", traits: {"smithy.api#enumValue" => "EQUALS"}))
    DocumentEnrichmentConditionOperator.add_member(:not_equals, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NOT_EQUALS", traits: {"smithy.api#enumValue" => "NOT_EQUALS"}))
    DocumentEnrichmentConditionOperator.add_member(:contains, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CONTAINS", traits: {"smithy.api#enumValue" => "CONTAINS"}))
    DocumentEnrichmentConditionOperator.add_member(:not_contains, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NOT_CONTAINS", traits: {"smithy.api#enumValue" => "NOT_CONTAINS"}))
    DocumentEnrichmentConditionOperator.add_member(:exists, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "EXISTS", traits: {"smithy.api#enumValue" => "EXISTS"}))
    DocumentEnrichmentConditionOperator.add_member(:not_exists, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NOT_EXISTS", traits: {"smithy.api#enumValue" => "NOT_EXISTS"}))
    DocumentEnrichmentConditionOperator.add_member(:begins_with, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BEGINS_WITH", traits: {"smithy.api#enumValue" => "BEGINS_WITH"}))
    DocumentEnrichmentConfiguration.add_member(:inline_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: InlineDocumentEnrichmentConfigurations, location_name: "inlineConfigurations"))
    DocumentEnrichmentConfiguration.add_member(:pre_extraction_hook_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: HookConfiguration, location_name: "preExtractionHookConfiguration"))
    DocumentEnrichmentConfiguration.add_member(:post_extraction_hook_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: HookConfiguration, location_name: "postExtractionHookConfiguration"))
    DocumentEnrichmentConfiguration.type = Types::DocumentEnrichmentConfiguration
    DocumentStatus.add_member(:received, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RECEIVED", traits: {"smithy.api#enumValue" => "RECEIVED"}))
    DocumentStatus.add_member(:processing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PROCESSING", traits: {"smithy.api#enumValue" => "PROCESSING"}))
    DocumentStatus.add_member(:indexed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INDEXED", traits: {"smithy.api#enumValue" => "INDEXED"}))
    DocumentStatus.add_member(:updated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UPDATED", traits: {"smithy.api#enumValue" => "UPDATED"}))
    DocumentStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    DocumentStatus.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    DocumentStatus.add_member(:deleted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DELETED", traits: {"smithy.api#enumValue" => "DELETED"}))
    DocumentStatus.add_member(:document_failed_to_index, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DOCUMENT_FAILED_TO_INDEX", traits: {"smithy.api#enumValue" => "DOCUMENT_FAILED_TO_INDEX"}))
    Documents.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Document)
    EligibleDataSource.add_member(:index_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexId, location_name: "indexId"))
    EligibleDataSource.add_member(:data_source_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceId, location_name: "dataSourceId"))
    EligibleDataSource.type = Types::EligibleDataSource
    EligibleDataSources.member = ::Smithy::Schema::Shapes::MemberShape.new(target: EligibleDataSource)
    EncryptionConfiguration.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyId, location_name: "kmsKeyId"))
    EncryptionConfiguration.type = Types::EncryptionConfiguration
    EndOfInputEvent.type = Types::EndOfInputEvent
    ErrorCode.add_member(:internal_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INTERNAL_ERROR", traits: {"smithy.api#enumValue" => "InternalError"}))
    ErrorCode.add_member(:invalid_request, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INVALID_REQUEST", traits: {"smithy.api#enumValue" => "InvalidRequest"}))
    ErrorCode.add_member(:resource_inactive, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RESOURCE_INACTIVE", traits: {"smithy.api#enumValue" => "ResourceInactive"}))
    ErrorCode.add_member(:resource_not_found, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RESOURCE_NOT_FOUND", traits: {"smithy.api#enumValue" => "ResourceNotFound"}))
    ErrorDetail.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "errorMessage"))
    ErrorDetail.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, location_name: "errorCode"))
    ErrorDetail.type = Types::ErrorDetail
    ExampleChatMessages.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ExampleChatMessage)
    ExternalResourceException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "message", traits: {"smithy.api#required" => {}}))
    ExternalResourceException.type = Types::ExternalResourceException
    FailedAttachmentEvent.add_member(:conversation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ConversationId, location_name: "conversationId"))
    FailedAttachmentEvent.add_member(:user_message_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageId, location_name: "userMessageId"))
    FailedAttachmentEvent.add_member(:system_message_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageId, location_name: "systemMessageId"))
    FailedAttachmentEvent.add_member(:attachment, ::Smithy::Schema::Shapes::MemberShape.new(target: AttachmentOutput, location_name: "attachment"))
    FailedAttachmentEvent.type = Types::FailedAttachmentEvent
    FailedDocument.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentId, location_name: "id"))
    FailedDocument.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorDetail, location_name: "error"))
    FailedDocument.add_member(:data_source_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceId, location_name: "dataSourceId"))
    FailedDocument.type = Types::FailedDocument
    FailedDocuments.member = ::Smithy::Schema::Shapes::MemberShape.new(target: FailedDocument)
    GetApplicationRequest.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationId, location_name: "applicationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetApplicationRequest.type = Types::GetApplicationRequest
    GetApplicationResponse.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationName, location_name: "displayName"))
    GetApplicationResponse.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationId, location_name: "applicationId"))
    GetApplicationResponse.add_member(:application_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationArn, location_name: "applicationArn"))
    GetApplicationResponse.add_member(:identity_type, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityType, location_name: "identityType"))
    GetApplicationResponse.add_member(:iam_identity_provider_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IAMIdentityProviderArn, location_name: "iamIdentityProviderArn"))
    GetApplicationResponse.add_member(:identity_center_application_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IdcApplicationArn, location_name: "identityCenterApplicationArn"))
    GetApplicationResponse.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, location_name: "roleArn"))
    GetApplicationResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationStatus, location_name: "status"))
    GetApplicationResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, location_name: "description"))
    GetApplicationResponse.add_member(:encryption_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionConfiguration, location_name: "encryptionConfiguration", traits: {"aws.cloudformation#cfnMutability" => "create-and-read"}))
    GetApplicationResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "createdAt"))
    GetApplicationResponse.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "updatedAt"))
    GetApplicationResponse.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorDetail, location_name: "error", traits: {"aws.cloudformation#cfnExcludeProperty" => {}}))
    GetApplicationResponse.add_member(:attachments_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AppliedAttachmentsConfiguration, location_name: "attachmentsConfiguration", traits: {"aws.cloudformation#cfnExcludeProperty" => {}}))
    GetApplicationResponse.add_member(:q_apps_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: QAppsConfiguration, location_name: "qAppsConfiguration"))
    GetApplicationResponse.add_member(:personalization_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: PersonalizationConfiguration, location_name: "personalizationConfiguration"))
    GetApplicationResponse.add_member(:auto_subscription_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoSubscriptionConfiguration, location_name: "autoSubscriptionConfiguration"))
    GetApplicationResponse.add_member(:client_ids_for_oidc, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientIdsForOIDC, location_name: "clientIdsForOIDC"))
    GetApplicationResponse.add_member(:quick_sight_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: QuickSightConfiguration, location_name: "quickSightConfiguration"))
    GetApplicationResponse.type = Types::GetApplicationResponse
    GetChatControlsConfigurationRequest.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationId, location_name: "applicationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetChatControlsConfigurationRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResultsIntegerForGetTopicConfigurations, location_name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    GetChatControlsConfigurationRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    GetChatControlsConfigurationRequest.type = Types::GetChatControlsConfigurationRequest
    GetChatControlsConfigurationResponse.add_member(:response_scope, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseScope, location_name: "responseScope"))
    GetChatControlsConfigurationResponse.add_member(:orchestration_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AppliedOrchestrationConfiguration, location_name: "orchestrationConfiguration"))
    GetChatControlsConfigurationResponse.add_member(:blocked_phrases, ::Smithy::Schema::Shapes::MemberShape.new(target: BlockedPhrasesConfiguration, location_name: "blockedPhrases"))
    GetChatControlsConfigurationResponse.add_member(:topic_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: TopicConfigurations, location_name: "topicConfigurations"))
    GetChatControlsConfigurationResponse.add_member(:creator_mode_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AppliedCreatorModeConfiguration, location_name: "creatorModeConfiguration"))
    GetChatControlsConfigurationResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken"))
    GetChatControlsConfigurationResponse.add_member(:hallucination_reduction_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: HallucinationReductionConfiguration, location_name: "hallucinationReductionConfiguration"))
    GetChatControlsConfigurationResponse.type = Types::GetChatControlsConfigurationResponse
    GetChatResponseConfigurationRequest.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationId, location_name: "applicationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetChatResponseConfigurationRequest.add_member(:chat_response_configuration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ChatResponseConfigurationId, location_name: "chatResponseConfigurationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetChatResponseConfigurationRequest.type = Types::GetChatResponseConfigurationRequest
    GetChatResponseConfigurationResponse.add_member(:chat_response_configuration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ChatResponseConfigurationId, location_name: "chatResponseConfigurationId"))
    GetChatResponseConfigurationResponse.add_member(:chat_response_configuration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ChatResponseConfigurationArn, location_name: "chatResponseConfigurationArn"))
    GetChatResponseConfigurationResponse.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DisplayName, location_name: "displayName"))
    GetChatResponseConfigurationResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "createdAt"))
    GetChatResponseConfigurationResponse.add_member(:in_use_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ChatResponseConfigurationDetail, location_name: "inUseConfiguration"))
    GetChatResponseConfigurationResponse.add_member(:last_update_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ChatResponseConfigurationDetail, location_name: "lastUpdateConfiguration"))
    GetChatResponseConfigurationResponse.type = Types::GetChatResponseConfigurationResponse
    GetDataAccessorRequest.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationId, location_name: "applicationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDataAccessorRequest.add_member(:data_accessor_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DataAccessorId, location_name: "dataAccessorId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDataAccessorRequest.type = Types::GetDataAccessorRequest
    GetDataAccessorResponse.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DataAccessorName, location_name: "displayName"))
    GetDataAccessorResponse.add_member(:data_accessor_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DataAccessorId, location_name: "dataAccessorId"))
    GetDataAccessorResponse.add_member(:data_accessor_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DataAccessorArn, location_name: "dataAccessorArn"))
    GetDataAccessorResponse.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationId, location_name: "applicationId"))
    GetDataAccessorResponse.add_member(:idc_application_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IdcApplicationArn, location_name: "idcApplicationArn"))
    GetDataAccessorResponse.add_member(:principal, ::Smithy::Schema::Shapes::MemberShape.new(target: PrincipalRoleArn, location_name: "principal"))
    GetDataAccessorResponse.add_member(:action_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionConfigurationList, location_name: "actionConfigurations"))
    GetDataAccessorResponse.add_member(:authentication_detail, ::Smithy::Schema::Shapes::MemberShape.new(target: DataAccessorAuthenticationDetail, location_name: "authenticationDetail"))
    GetDataAccessorResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "createdAt"))
    GetDataAccessorResponse.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "updatedAt"))
    GetDataAccessorResponse.type = Types::GetDataAccessorResponse
    GetDataSourceRequest.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationId, location_name: "applicationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDataSourceRequest.add_member(:index_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexId, location_name: "indexId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDataSourceRequest.add_member(:data_source_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceId, location_name: "dataSourceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDataSourceRequest.type = Types::GetDataSourceRequest
    GetDataSourceResponse.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationId, location_name: "applicationId"))
    GetDataSourceResponse.add_member(:index_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexId, location_name: "indexId"))
    GetDataSourceResponse.add_member(:data_source_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceId, location_name: "dataSourceId"))
    GetDataSourceResponse.add_member(:data_source_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceArn, location_name: "dataSourceArn"))
    GetDataSourceResponse.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceName, location_name: "displayName"))
    GetDataSourceResponse.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "type"))
    GetDataSourceResponse.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceConfiguration, location_name: "configuration"))
    GetDataSourceResponse.add_member(:vpc_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceVpcConfiguration, location_name: "vpcConfiguration"))
    GetDataSourceResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "createdAt"))
    GetDataSourceResponse.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "updatedAt"))
    GetDataSourceResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, location_name: "description"))
    GetDataSourceResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceStatus, location_name: "status"))
    GetDataSourceResponse.add_member(:sync_schedule, ::Smithy::Schema::Shapes::MemberShape.new(target: SyncSchedule, location_name: "syncSchedule"))
    GetDataSourceResponse.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, location_name: "roleArn"))
    GetDataSourceResponse.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorDetail, location_name: "error", traits: {"aws.cloudformation#cfnExcludeProperty" => {}}))
    GetDataSourceResponse.add_member(:document_enrichment_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentEnrichmentConfiguration, location_name: "documentEnrichmentConfiguration"))
    GetDataSourceResponse.add_member(:media_extraction_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: MediaExtractionConfiguration, location_name: "mediaExtractionConfiguration"))
    GetDataSourceResponse.type = Types::GetDataSourceResponse
    GetDocumentContentRequest.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationId, location_name: "applicationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDocumentContentRequest.add_member(:index_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexId, location_name: "indexId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDocumentContentRequest.add_member(:data_source_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceId, location_name: "dataSourceId", traits: {"smithy.api#httpQuery" => "dataSourceId"}))
    GetDocumentContentRequest.add_member(:document_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentId, location_name: "documentId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDocumentContentRequest.add_member(:output_format, ::Smithy::Schema::Shapes::MemberShape.new(target: OutputFormat, location_name: "outputFormat", traits: {"smithy.api#httpQuery" => "outputFormat"}))
    GetDocumentContentRequest.type = Types::GetDocumentContentRequest
    GetDocumentContentResponse.add_member(:presigned_url, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "presignedUrl", traits: {"smithy.api#required" => {}}))
    GetDocumentContentResponse.add_member(:mime_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "mimeType", traits: {"smithy.api#required" => {}}))
    GetDocumentContentResponse.type = Types::GetDocumentContentResponse
    GetGroupRequest.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationId, location_name: "applicationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetGroupRequest.add_member(:index_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexId, location_name: "indexId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetGroupRequest.add_member(:group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupName, location_name: "groupName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetGroupRequest.add_member(:data_source_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceId, location_name: "dataSourceId", traits: {"smithy.api#httpQuery" => "dataSourceId"}))
    GetGroupRequest.type = Types::GetGroupRequest
    GetGroupResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupStatusDetail, location_name: "status"))
    GetGroupResponse.add_member(:status_history, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupStatusDetails, location_name: "statusHistory"))
    GetGroupResponse.type = Types::GetGroupResponse
    GetIndexRequest.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationId, location_name: "applicationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetIndexRequest.add_member(:index_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexId, location_name: "indexId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetIndexRequest.type = Types::GetIndexRequest
    GetIndexResponse.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationId, location_name: "applicationId"))
    GetIndexResponse.add_member(:index_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexId, location_name: "indexId"))
    GetIndexResponse.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexName, location_name: "displayName"))
    GetIndexResponse.add_member(:index_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexArn, location_name: "indexArn"))
    GetIndexResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexStatus, location_name: "status"))
    GetIndexResponse.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexType, location_name: "type"))
    GetIndexResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, location_name: "description"))
    GetIndexResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "createdAt"))
    GetIndexResponse.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "updatedAt"))
    GetIndexResponse.add_member(:capacity_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexCapacityConfiguration, location_name: "capacityConfiguration"))
    GetIndexResponse.add_member(:document_attribute_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentAttributeConfigurations, location_name: "documentAttributeConfigurations"))
    GetIndexResponse.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorDetail, location_name: "error", traits: {"aws.cloudformation#cfnExcludeProperty" => {}}))
    GetIndexResponse.add_member(:index_statistics, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexStatistics, location_name: "indexStatistics"))
    GetIndexResponse.type = Types::GetIndexResponse
    GetMediaRequest.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationId, location_name: "applicationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetMediaRequest.add_member(:conversation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ConversationId, location_name: "conversationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetMediaRequest.add_member(:message_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageId, location_name: "messageId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetMediaRequest.add_member(:media_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MediaId, location_name: "mediaId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetMediaRequest.type = Types::GetMediaRequest
    GetMediaResponse.add_member(:media_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: Blob, location_name: "mediaBytes"))
    GetMediaResponse.add_member(:media_mime_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "mediaMimeType"))
    GetMediaResponse.type = Types::GetMediaResponse
    GetPluginRequest.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationId, location_name: "applicationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetPluginRequest.add_member(:plugin_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PluginId, location_name: "pluginId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetPluginRequest.type = Types::GetPluginRequest
    GetPluginResponse.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationId, location_name: "applicationId"))
    GetPluginResponse.add_member(:plugin_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PluginId, location_name: "pluginId"))
    GetPluginResponse.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PluginName, location_name: "displayName"))
    GetPluginResponse.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: PluginType, location_name: "type"))
    GetPluginResponse.add_member(:server_url, ::Smithy::Schema::Shapes::MemberShape.new(target: Url, location_name: "serverUrl"))
    GetPluginResponse.add_member(:auth_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: PluginAuthConfiguration, location_name: "authConfiguration"))
    GetPluginResponse.add_member(:custom_plugin_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomPluginConfiguration, location_name: "customPluginConfiguration"))
    GetPluginResponse.add_member(:build_status, ::Smithy::Schema::Shapes::MemberShape.new(target: PluginBuildStatus, location_name: "buildStatus"))
    GetPluginResponse.add_member(:plugin_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: PluginArn, location_name: "pluginArn"))
    GetPluginResponse.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: PluginState, location_name: "state"))
    GetPluginResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "createdAt"))
    GetPluginResponse.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "updatedAt"))
    GetPluginResponse.type = Types::GetPluginResponse
    GetPolicyRequest.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationId, location_name: "applicationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetPolicyRequest.type = Types::GetPolicyRequest
    GetPolicyResponse.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "policy"))
    GetPolicyResponse.type = Types::GetPolicyResponse
    GetRetrieverRequest.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationId, location_name: "applicationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetRetrieverRequest.add_member(:retriever_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RetrieverId, location_name: "retrieverId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetRetrieverRequest.type = Types::GetRetrieverRequest
    GetRetrieverResponse.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationId, location_name: "applicationId"))
    GetRetrieverResponse.add_member(:retriever_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RetrieverId, location_name: "retrieverId"))
    GetRetrieverResponse.add_member(:retriever_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RetrieverArn, location_name: "retrieverArn"))
    GetRetrieverResponse.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: RetrieverType, location_name: "type"))
    GetRetrieverResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: RetrieverStatus, location_name: "status"))
    GetRetrieverResponse.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RetrieverName, location_name: "displayName"))
    GetRetrieverResponse.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: RetrieverConfiguration, location_name: "configuration"))
    GetRetrieverResponse.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, location_name: "roleArn"))
    GetRetrieverResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "createdAt"))
    GetRetrieverResponse.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "updatedAt"))
    GetRetrieverResponse.type = Types::GetRetrieverResponse
    GetUserRequest.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationId, location_name: "applicationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetUserRequest.add_member(:user_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "userId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetUserRequest.type = Types::GetUserRequest
    GetUserResponse.add_member(:user_aliases, ::Smithy::Schema::Shapes::MemberShape.new(target: UserAliases, location_name: "userAliases"))
    GetUserResponse.type = Types::GetUserResponse
    GetWebExperienceRequest.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationId, location_name: "applicationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetWebExperienceRequest.add_member(:web_experience_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WebExperienceId, location_name: "webExperienceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetWebExperienceRequest.type = Types::GetWebExperienceRequest
    GetWebExperienceResponse.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationId, location_name: "applicationId"))
    GetWebExperienceResponse.add_member(:web_experience_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WebExperienceId, location_name: "webExperienceId"))
    GetWebExperienceResponse.add_member(:web_experience_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: WebExperienceArn, location_name: "webExperienceArn"))
    GetWebExperienceResponse.add_member(:default_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: Url, location_name: "defaultEndpoint"))
    GetWebExperienceResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: WebExperienceStatus, location_name: "status"))
    GetWebExperienceResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "createdAt"))
    GetWebExperienceResponse.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "updatedAt"))
    GetWebExperienceResponse.add_member(:title, ::Smithy::Schema::Shapes::MemberShape.new(target: WebExperienceTitle, location_name: "title"))
    GetWebExperienceResponse.add_member(:subtitle, ::Smithy::Schema::Shapes::MemberShape.new(target: WebExperienceSubtitle, location_name: "subtitle"))
    GetWebExperienceResponse.add_member(:welcome_message, ::Smithy::Schema::Shapes::MemberShape.new(target: WebExperienceWelcomeMessage, location_name: "welcomeMessage"))
    GetWebExperienceResponse.add_member(:sample_prompts_control_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: WebExperienceSamplePromptsControlMode, location_name: "samplePromptsControlMode"))
    GetWebExperienceResponse.add_member(:origins, ::Smithy::Schema::Shapes::MemberShape.new(target: WebExperienceOrigins, location_name: "origins"))
    GetWebExperienceResponse.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, location_name: "roleArn"))
    GetWebExperienceResponse.add_member(:identity_provider_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityProviderConfiguration, location_name: "identityProviderConfiguration"))
    GetWebExperienceResponse.add_member(:authentication_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: WebExperienceAuthConfiguration, location_name: "authenticationConfiguration", traits: {"smithy.api#deprecated" => {"message" => "Property associated with legacy SAML IdP flow. Deprecated in favor of using AWS IAM Identity Center for user management."}}))
    GetWebExperienceResponse.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorDetail, location_name: "error", traits: {"aws.cloudformation#cfnExcludeProperty" => {}}))
    GetWebExperienceResponse.add_member(:browser_extension_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: BrowserExtensionConfiguration, location_name: "browserExtensionConfiguration"))
    GetWebExperienceResponse.add_member(:customization_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomizationConfiguration, location_name: "customizationConfiguration"))
    GetWebExperienceResponse.type = Types::GetWebExperienceResponse
    GroupMembers.add_member(:member_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: MemberGroups, location_name: "memberGroups"))
    GroupMembers.add_member(:member_users, ::Smithy::Schema::Shapes::MemberShape.new(target: MemberUsers, location_name: "memberUsers"))
    GroupMembers.add_member(:s3_path_for_group_members, ::Smithy::Schema::Shapes::MemberShape.new(target: S3, location_name: "s3PathForGroupMembers"))
    GroupMembers.type = Types::GroupMembers
    GroupStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    GroupStatus.add_member(:succeeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SUCCEEDED", traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    GroupStatus.add_member(:processing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PROCESSING", traits: {"smithy.api#enumValue" => "PROCESSING"}))
    GroupStatus.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    GroupStatus.add_member(:deleted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DELETED", traits: {"smithy.api#enumValue" => "DELETED"}))
    GroupStatusDetail.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupStatus, location_name: "status"))
    GroupStatusDetail.add_member(:last_updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "lastUpdatedAt"))
    GroupStatusDetail.add_member(:error_detail, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorDetail, location_name: "errorDetail"))
    GroupStatusDetail.type = Types::GroupStatusDetail
    GroupStatusDetails.member = ::Smithy::Schema::Shapes::MemberShape.new(target: GroupStatusDetail)
    GroupSummary.add_member(:group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupName, location_name: "groupName"))
    GroupSummary.type = Types::GroupSummary
    GroupSummaryList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: GroupSummary)
    HallucinationReductionConfiguration.add_member(:hallucination_reduction_control, ::Smithy::Schema::Shapes::MemberShape.new(target: HallucinationReductionControl, location_name: "hallucinationReductionControl"))
    HallucinationReductionConfiguration.type = Types::HallucinationReductionConfiguration
    HallucinationReductionControl.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    HallucinationReductionControl.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    HookConfiguration.add_member(:invocation_condition, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentAttributeCondition, location_name: "invocationCondition"))
    HookConfiguration.add_member(:lambda_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LambdaArn, location_name: "lambdaArn"))
    HookConfiguration.add_member(:s3_bucket_name, ::Smithy::Schema::Shapes::MemberShape.new(target: S3BucketName, location_name: "s3BucketName"))
    HookConfiguration.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, location_name: "roleArn"))
    HookConfiguration.type = Types::HookConfiguration
    IdcAuthConfiguration.add_member(:idc_application_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IdcApplicationArn, location_name: "idcApplicationArn", traits: {"smithy.api#required" => {}}))
    IdcAuthConfiguration.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, location_name: "roleArn", traits: {"smithy.api#required" => {}}))
    IdcAuthConfiguration.type = Types::IdcAuthConfiguration
    IdentityProviderConfiguration.add_member(:saml_configuration, Types::IdentityProviderConfiguration::SamlConfiguration, ::Smithy::Schema::Shapes::MemberShape.new(target: SamlProviderConfiguration, location_name: "samlConfiguration"))
    IdentityProviderConfiguration.add_member(:open_id_connect_configuration, Types::IdentityProviderConfiguration::OpenIDConnectConfiguration, ::Smithy::Schema::Shapes::MemberShape.new(target: OpenIDConnectProviderConfiguration, location_name: "openIDConnectConfiguration"))
    IdentityProviderConfiguration.add_member(:unknown, Types::IdentityProviderConfiguration::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    IdentityProviderConfiguration.type = Types::IdentityProviderConfiguration
    IdentityType.add_member(:aws_iam_idp_saml, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AWS_IAM_IDP_SAML", traits: {"smithy.api#enumValue" => "AWS_IAM_IDP_SAML"}))
    IdentityType.add_member(:aws_iam_idp_oidc, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AWS_IAM_IDP_OIDC", traits: {"smithy.api#enumValue" => "AWS_IAM_IDP_OIDC"}))
    IdentityType.add_member(:aws_iam_idc, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AWS_IAM_IDC", traits: {"smithy.api#enumValue" => "AWS_IAM_IDC"}))
    IdentityType.add_member(:aws_quicksight_idp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AWS_QUICKSIGHT_IDP", traits: {"smithy.api#enumValue" => "AWS_QUICKSIGHT_IDP"}))
    IdentityType.add_member(:anonymous, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ANONYMOUS", traits: {"smithy.api#enumValue" => "ANONYMOUS"}))
    ImageExtractionConfiguration.add_member(:image_extraction_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageExtractionStatus, location_name: "imageExtractionStatus", traits: {"smithy.api#required" => {}}))
    ImageExtractionConfiguration.type = Types::ImageExtractionConfiguration
    ImageExtractionStatus.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    ImageExtractionStatus.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    ImageSourceDetails.add_member(:media_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MediaId, location_name: "mediaId"))
    ImageSourceDetails.add_member(:media_mime_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "mediaMimeType"))
    ImageSourceDetails.type = Types::ImageSourceDetails
    Index.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexName, location_name: "displayName"))
    Index.add_member(:index_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexId, location_name: "indexId"))
    Index.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "createdAt"))
    Index.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "updatedAt"))
    Index.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexStatus, location_name: "status"))
    Index.type = Types::Index
    IndexCapacityConfiguration.add_member(:units, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexCapacityInteger, location_name: "units"))
    IndexCapacityConfiguration.type = Types::IndexCapacityConfiguration
    IndexStatistics.add_member(:text_document_statistics, ::Smithy::Schema::Shapes::MemberShape.new(target: TextDocumentStatistics, location_name: "textDocumentStatistics"))
    IndexStatistics.type = Types::IndexStatistics
    IndexStatus.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CREATING", traits: {"smithy.api#enumValue" => "CREATING"}))
    IndexStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    IndexStatus.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    IndexStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    IndexStatus.add_member(:updating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UPDATING", traits: {"smithy.api#enumValue" => "UPDATING"}))
    IndexType.add_member(:enterprise, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ENTERPRISE", traits: {"smithy.api#enumValue" => "ENTERPRISE"}))
    IndexType.add_member(:starter, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "STARTER", traits: {"smithy.api#enumValue" => "STARTER"}))
    Indices.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Index)
    InlineDocumentEnrichmentConfiguration.add_member(:condition, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentAttributeCondition, location_name: "condition"))
    InlineDocumentEnrichmentConfiguration.add_member(:target, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentAttributeTarget, location_name: "target"))
    InlineDocumentEnrichmentConfiguration.add_member(:document_content_operator, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentContentOperator, location_name: "documentContentOperator"))
    InlineDocumentEnrichmentConfiguration.type = Types::InlineDocumentEnrichmentConfiguration
    InlineDocumentEnrichmentConfigurations.member = ::Smithy::Schema::Shapes::MemberShape.new(target: InlineDocumentEnrichmentConfiguration)
    InstructionCollection.add_member(:response_length, ::Smithy::Schema::Shapes::MemberShape.new(target: Instruction, location_name: "responseLength"))
    InstructionCollection.add_member(:target_audience, ::Smithy::Schema::Shapes::MemberShape.new(target: Instruction, location_name: "targetAudience"))
    InstructionCollection.add_member(:perspective, ::Smithy::Schema::Shapes::MemberShape.new(target: Instruction, location_name: "perspective"))
    InstructionCollection.add_member(:output_style, ::Smithy::Schema::Shapes::MemberShape.new(target: Instruction, location_name: "outputStyle"))
    InstructionCollection.add_member(:identity, ::Smithy::Schema::Shapes::MemberShape.new(target: Instruction, location_name: "identity"))
    InstructionCollection.add_member(:tone, ::Smithy::Schema::Shapes::MemberShape.new(target: Instruction, location_name: "tone"))
    InstructionCollection.add_member(:custom_instructions, ::Smithy::Schema::Shapes::MemberShape.new(target: Instruction, location_name: "customInstructions"))
    InstructionCollection.add_member(:examples, ::Smithy::Schema::Shapes::MemberShape.new(target: Instruction, location_name: "examples"))
    InstructionCollection.type = Types::InstructionCollection
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "message", traits: {"smithy.api#required" => {}}))
    InternalServerException.type = Types::InternalServerException
    KendraIndexConfiguration.add_member(:index_id, ::Smithy::Schema::Shapes::MemberShape.new(target: KendraIndexId, location_name: "indexId", traits: {"smithy.api#required" => {}}))
    KendraIndexConfiguration.type = Types::KendraIndexConfiguration
    LicenseNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "message", traits: {"smithy.api#required" => {}}))
    LicenseNotFoundException.type = Types::LicenseNotFoundException
    ListApplicationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListApplicationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResultsIntegerForListApplications, location_name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListApplicationsRequest.type = Types::ListApplicationsRequest
    ListApplicationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken"))
    ListApplicationsResponse.add_member(:applications, ::Smithy::Schema::Shapes::MemberShape.new(target: Applications, location_name: "applications"))
    ListApplicationsResponse.type = Types::ListApplicationsResponse
    ListAttachmentsRequest.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationId, location_name: "applicationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListAttachmentsRequest.add_member(:conversation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ConversationId, location_name: "conversationId", traits: {"smithy.api#httpQuery" => "conversationId"}))
    ListAttachmentsRequest.add_member(:user_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserId, location_name: "userId", traits: {"smithy.api#httpQuery" => "userId"}))
    ListAttachmentsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListAttachmentsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResultsIntegerForListAttachments, location_name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListAttachmentsRequest.type = Types::ListAttachmentsRequest
    ListAttachmentsResponse.add_member(:attachments, ::Smithy::Schema::Shapes::MemberShape.new(target: AttachmentList, location_name: "attachments"))
    ListAttachmentsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken"))
    ListAttachmentsResponse.type = Types::ListAttachmentsResponse
    ListChatResponseConfigurationsRequest.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationId, location_name: "applicationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListChatResponseConfigurationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, location_name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListChatResponseConfigurationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListChatResponseConfigurationsRequest.type = Types::ListChatResponseConfigurationsRequest
    ListChatResponseConfigurationsResponse.add_member(:chat_response_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: ChatResponseConfigurations, location_name: "chatResponseConfigurations"))
    ListChatResponseConfigurationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken"))
    ListChatResponseConfigurationsResponse.type = Types::ListChatResponseConfigurationsResponse
    ListConversationsRequest.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationId, location_name: "applicationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListConversationsRequest.add_member(:user_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserId, location_name: "userId", traits: {"smithy.api#httpQuery" => "userId"}))
    ListConversationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListConversationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResultsIntegerForListConversations, location_name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListConversationsRequest.type = Types::ListConversationsRequest
    ListConversationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken"))
    ListConversationsResponse.add_member(:conversations, ::Smithy::Schema::Shapes::MemberShape.new(target: Conversations, location_name: "conversations"))
    ListConversationsResponse.type = Types::ListConversationsResponse
    ListDataAccessorsRequest.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationId, location_name: "applicationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListDataAccessorsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken1500, location_name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListDataAccessorsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResultsIntegerForListDataAccessors, location_name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListDataAccessorsRequest.type = Types::ListDataAccessorsRequest
    ListDataAccessorsResponse.add_member(:data_accessors, ::Smithy::Schema::Shapes::MemberShape.new(target: DataAccessors, location_name: "dataAccessors"))
    ListDataAccessorsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken1500, location_name: "nextToken"))
    ListDataAccessorsResponse.type = Types::ListDataAccessorsResponse
    ListDataSourceSyncJobsRequest.add_member(:data_source_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceId, location_name: "dataSourceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListDataSourceSyncJobsRequest.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationId, location_name: "applicationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListDataSourceSyncJobsRequest.add_member(:index_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexId, location_name: "indexId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListDataSourceSyncJobsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListDataSourceSyncJobsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResultsIntegerForListDataSourcesSyncJobs, location_name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListDataSourceSyncJobsRequest.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "startTime", traits: {"smithy.api#httpQuery" => "startTime"}))
    ListDataSourceSyncJobsRequest.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "endTime", traits: {"smithy.api#httpQuery" => "endTime"}))
    ListDataSourceSyncJobsRequest.add_member(:status_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceSyncJobStatus, location_name: "statusFilter", traits: {"smithy.api#httpQuery" => "syncStatus"}))
    ListDataSourceSyncJobsRequest.type = Types::ListDataSourceSyncJobsRequest
    ListDataSourceSyncJobsResponse.add_member(:history, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceSyncJobs, location_name: "history"))
    ListDataSourceSyncJobsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken"))
    ListDataSourceSyncJobsResponse.type = Types::ListDataSourceSyncJobsResponse
    ListDataSourcesRequest.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationId, location_name: "applicationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListDataSourcesRequest.add_member(:index_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexId, location_name: "indexId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListDataSourcesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListDataSourcesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResultsIntegerForListDataSources, location_name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListDataSourcesRequest.type = Types::ListDataSourcesRequest
    ListDataSourcesResponse.add_member(:data_sources, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSources, location_name: "dataSources"))
    ListDataSourcesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken"))
    ListDataSourcesResponse.type = Types::ListDataSourcesResponse
    ListDocumentsRequest.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationId, location_name: "applicationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListDocumentsRequest.add_member(:index_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexId, location_name: "indexId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListDocumentsRequest.add_member(:data_source_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceIds, location_name: "dataSourceIds", traits: {"smithy.api#httpQuery" => "dataSourceIds"}))
    ListDocumentsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListDocumentsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResultsIntegerForListDocuments, location_name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListDocumentsRequest.type = Types::ListDocumentsRequest
    ListDocumentsResponse.add_member(:document_detail_list, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentDetailList, location_name: "documentDetailList"))
    ListDocumentsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken"))
    ListDocumentsResponse.type = Types::ListDocumentsResponse
    ListGroupsRequest.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationId, location_name: "applicationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListGroupsRequest.add_member(:index_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexId, location_name: "indexId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListGroupsRequest.add_member(:updated_earlier_than, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "updatedEarlierThan", traits: {"smithy.api#httpQuery" => "updatedEarlierThan", "smithy.api#required" => {}}))
    ListGroupsRequest.add_member(:data_source_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceId, location_name: "dataSourceId", traits: {"smithy.api#httpQuery" => "dataSourceId"}))
    ListGroupsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListGroupsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResultsIntegerForListGroupsRequest, location_name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListGroupsRequest.type = Types::ListGroupsRequest
    ListGroupsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken"))
    ListGroupsResponse.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupSummaryList, location_name: "items"))
    ListGroupsResponse.type = Types::ListGroupsResponse
    ListIndicesRequest.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationId, location_name: "applicationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListIndicesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListIndicesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResultsIntegerForListIndices, location_name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListIndicesRequest.type = Types::ListIndicesRequest
    ListIndicesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken"))
    ListIndicesResponse.add_member(:indices, ::Smithy::Schema::Shapes::MemberShape.new(target: Indices, location_name: "indices"))
    ListIndicesResponse.type = Types::ListIndicesResponse
    ListMessagesRequest.add_member(:conversation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ConversationId, location_name: "conversationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListMessagesRequest.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationId, location_name: "applicationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListMessagesRequest.add_member(:user_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserId, location_name: "userId", traits: {"smithy.api#httpQuery" => "userId"}))
    ListMessagesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListMessagesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResultsIntegerForListMessages, location_name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListMessagesRequest.type = Types::ListMessagesRequest
    ListMessagesResponse.add_member(:messages, ::Smithy::Schema::Shapes::MemberShape.new(target: Messages, location_name: "messages"))
    ListMessagesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken"))
    ListMessagesResponse.type = Types::ListMessagesResponse
    ListPluginActionsRequest.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationId, location_name: "applicationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListPluginActionsRequest.add_member(:plugin_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PluginId, location_name: "pluginId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListPluginActionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListPluginActionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResultsIntegerForListPluginActions, location_name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListPluginActionsRequest.type = Types::ListPluginActionsRequest
    ListPluginActionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken"))
    ListPluginActionsResponse.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: Actions, location_name: "items"))
    ListPluginActionsResponse.type = Types::ListPluginActionsResponse
    ListPluginTypeActionsRequest.add_member(:plugin_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PluginType, location_name: "pluginType", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListPluginTypeActionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListPluginTypeActionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResultsIntegerForListPluginTypeActions, location_name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListPluginTypeActionsRequest.type = Types::ListPluginTypeActionsRequest
    ListPluginTypeActionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken"))
    ListPluginTypeActionsResponse.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: Actions, location_name: "items"))
    ListPluginTypeActionsResponse.type = Types::ListPluginTypeActionsResponse
    ListPluginTypeMetadataRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListPluginTypeMetadataRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResultsIntegerForListPluginTypeMetadata, location_name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListPluginTypeMetadataRequest.type = Types::ListPluginTypeMetadataRequest
    ListPluginTypeMetadataResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken"))
    ListPluginTypeMetadataResponse.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: ListPluginTypeMetadataSummaries, location_name: "items"))
    ListPluginTypeMetadataResponse.type = Types::ListPluginTypeMetadataResponse
    ListPluginTypeMetadataSummaries.member = ::Smithy::Schema::Shapes::MemberShape.new(target: PluginTypeMetadataSummary)
    ListPluginsRequest.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationId, location_name: "applicationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListPluginsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListPluginsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResultsIntegerForListPlugins, location_name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListPluginsRequest.type = Types::ListPluginsRequest
    ListPluginsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken"))
    ListPluginsResponse.add_member(:plugins, ::Smithy::Schema::Shapes::MemberShape.new(target: Plugins, location_name: "plugins"))
    ListPluginsResponse.type = Types::ListPluginsResponse
    ListRetrieversRequest.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationId, location_name: "applicationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListRetrieversRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListRetrieversRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResultsIntegerForListRetrieversRequest, location_name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListRetrieversRequest.type = Types::ListRetrieversRequest
    ListRetrieversResponse.add_member(:retrievers, ::Smithy::Schema::Shapes::MemberShape.new(target: Retrievers, location_name: "retrievers"))
    ListRetrieversResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken"))
    ListRetrieversResponse.type = Types::ListRetrieversResponse
    ListSubscriptionsRequest.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationId, location_name: "applicationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListSubscriptionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListSubscriptionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResultsIntegerForListSubscriptions, location_name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListSubscriptionsRequest.type = Types::ListSubscriptionsRequest
    ListSubscriptionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken"))
    ListSubscriptionsResponse.add_member(:subscriptions, ::Smithy::Schema::Shapes::MemberShape.new(target: Subscriptions, location_name: "subscriptions"))
    ListSubscriptionsResponse.type = Types::ListSubscriptionsResponse
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, location_name: "resourceARN", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, location_name: "tags"))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    ListWebExperiencesRequest.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationId, location_name: "applicationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListWebExperiencesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListWebExperiencesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResultsIntegerForListWebExperiencesRequest, location_name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListWebExperiencesRequest.type = Types::ListWebExperiencesRequest
    ListWebExperiencesResponse.add_member(:web_experiences, ::Smithy::Schema::Shapes::MemberShape.new(target: WebExperiences, location_name: "webExperiences"))
    ListWebExperiencesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken"))
    ListWebExperiencesResponse.type = Types::ListWebExperiencesResponse
    MediaExtractionConfiguration.add_member(:image_extraction_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageExtractionConfiguration, location_name: "imageExtractionConfiguration"))
    MediaExtractionConfiguration.add_member(:audio_extraction_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AudioExtractionConfiguration, location_name: "audioExtractionConfiguration"))
    MediaExtractionConfiguration.add_member(:video_extraction_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: VideoExtractionConfiguration, location_name: "videoExtractionConfiguration"))
    MediaExtractionConfiguration.type = Types::MediaExtractionConfiguration
    MediaTooLargeException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "message", traits: {"smithy.api#required" => {}}))
    MediaTooLargeException.type = Types::MediaTooLargeException
    MemberGroup.add_member(:group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupName, location_name: "groupName", traits: {"smithy.api#required" => {}}))
    MemberGroup.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: MembershipType, location_name: "type"))
    MemberGroup.type = Types::MemberGroup
    MemberGroups.member = ::Smithy::Schema::Shapes::MemberShape.new(target: MemberGroup)
    MemberRelation.add_member(:and, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AND", traits: {"smithy.api#enumValue" => "AND"}))
    MemberRelation.add_member(:or, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "OR", traits: {"smithy.api#enumValue" => "OR"}))
    MemberUser.add_member(:user_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceUserId, location_name: "userId", traits: {"smithy.api#required" => {}}))
    MemberUser.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: MembershipType, location_name: "type"))
    MemberUser.type = Types::MemberUser
    MemberUsers.member = ::Smithy::Schema::Shapes::MemberShape.new(target: MemberUser)
    MembershipType.add_member(:index, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INDEX", traits: {"smithy.api#enumValue" => "INDEX"}))
    MembershipType.add_member(:datasource, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DATASOURCE", traits: {"smithy.api#enumValue" => "DATASOURCE"}))
    Message.add_member(:message_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "messageId"))
    Message.add_member(:body, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageBody, location_name: "body"))
    Message.add_member(:time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "time"))
    Message.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageType, location_name: "type"))
    Message.add_member(:attachments, ::Smithy::Schema::Shapes::MemberShape.new(target: AttachmentsOutput, location_name: "attachments"))
    Message.add_member(:source_attribution, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceAttributions, location_name: "sourceAttribution"))
    Message.add_member(:action_review, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionReview, location_name: "actionReview"))
    Message.add_member(:action_execution, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionExecution, location_name: "actionExecution"))
    Message.type = Types::Message
    MessageType.add_member(:user, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "USER", traits: {"smithy.api#enumValue" => "USER"}))
    MessageType.add_member(:system, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SYSTEM", traits: {"smithy.api#enumValue" => "SYSTEM"}))
    MessageUsefulness.add_member(:useful, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "USEFUL", traits: {"smithy.api#enumValue" => "USEFUL"}))
    MessageUsefulness.add_member(:not_useful, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NOT_USEFUL", traits: {"smithy.api#enumValue" => "NOT_USEFUL"}))
    MessageUsefulnessFeedback.add_member(:usefulness, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageUsefulness, location_name: "usefulness", traits: {"smithy.api#required" => {}}))
    MessageUsefulnessFeedback.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageUsefulnessReason, location_name: "reason"))
    MessageUsefulnessFeedback.add_member(:comment, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageUsefulnessComment, location_name: "comment"))
    MessageUsefulnessFeedback.add_member(:submitted_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "submittedAt", traits: {"smithy.api#required" => {}}))
    MessageUsefulnessFeedback.type = Types::MessageUsefulnessFeedback
    MessageUsefulnessReason.add_member(:not_factually_correct, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NOT_FACTUALLY_CORRECT", traits: {"smithy.api#enumValue" => "NOT_FACTUALLY_CORRECT"}))
    MessageUsefulnessReason.add_member(:harmful_or_unsafe, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "HARMFUL_OR_UNSAFE", traits: {"smithy.api#enumValue" => "HARMFUL_OR_UNSAFE"}))
    MessageUsefulnessReason.add_member(:incorrect_or_missing_sources, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INCORRECT_OR_MISSING_SOURCES", traits: {"smithy.api#enumValue" => "INCORRECT_OR_MISSING_SOURCES"}))
    MessageUsefulnessReason.add_member(:not_helpful, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NOT_HELPFUL", traits: {"smithy.api#enumValue" => "NOT_HELPFUL"}))
    MessageUsefulnessReason.add_member(:factually_correct, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FACTUALLY_CORRECT", traits: {"smithy.api#enumValue" => "FACTUALLY_CORRECT"}))
    MessageUsefulnessReason.add_member(:complete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "COMPLETE", traits: {"smithy.api#enumValue" => "COMPLETE"}))
    MessageUsefulnessReason.add_member(:relevant_sources, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RELEVANT_SOURCES", traits: {"smithy.api#enumValue" => "RELEVANT_SOURCES"}))
    MessageUsefulnessReason.add_member(:helpful, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "HELPFUL", traits: {"smithy.api#enumValue" => "HELPFUL"}))
    MessageUsefulnessReason.add_member(:not_based_on_documents, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NOT_BASED_ON_DOCUMENTS", traits: {"smithy.api#enumValue" => "NOT_BASED_ON_DOCUMENTS"}))
    MessageUsefulnessReason.add_member(:not_complete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NOT_COMPLETE", traits: {"smithy.api#enumValue" => "NOT_COMPLETE"}))
    MessageUsefulnessReason.add_member(:not_concise, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NOT_CONCISE", traits: {"smithy.api#enumValue" => "NOT_CONCISE"}))
    MessageUsefulnessReason.add_member(:other, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "OTHER", traits: {"smithy.api#enumValue" => "OTHER"}))
    Messages.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Message)
    MetadataEvent.add_member(:conversation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ConversationId, location_name: "conversationId"))
    MetadataEvent.add_member(:user_message_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageId, location_name: "userMessageId"))
    MetadataEvent.add_member(:system_message_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageId, location_name: "systemMessageId"))
    MetadataEvent.add_member(:source_attributions, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceAttributions, location_name: "sourceAttributions"))
    MetadataEvent.add_member(:final_text_message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "finalTextMessage"))
    MetadataEvent.type = Types::MetadataEvent
    NativeIndexConfiguration.add_member(:index_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexId, location_name: "indexId", traits: {"smithy.api#required" => {}}))
    NativeIndexConfiguration.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, location_name: "version"))
    NativeIndexConfiguration.add_member(:boosting_override, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentAttributeBoostingOverrideMap, location_name: "boostingOverride"))
    NativeIndexConfiguration.type = Types::NativeIndexConfiguration
    NoAuthConfiguration.type = Types::NoAuthConfiguration
    NumberAttributeBoostingConfiguration.add_member(:boosting_level, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentAttributeBoostingLevel, location_name: "boostingLevel", traits: {"smithy.api#required" => {}}))
    NumberAttributeBoostingConfiguration.add_member(:boosting_type, ::Smithy::Schema::Shapes::MemberShape.new(target: NumberAttributeBoostingType, location_name: "boostingType"))
    NumberAttributeBoostingConfiguration.type = Types::NumberAttributeBoostingConfiguration
    NumberAttributeBoostingType.add_member(:prioritize_larger_values, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PRIORITIZE_LARGER_VALUES", traits: {"smithy.api#enumValue" => "PRIORITIZE_LARGER_VALUES"}))
    NumberAttributeBoostingType.add_member(:prioritize_smaller_values, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PRIORITIZE_SMALLER_VALUES", traits: {"smithy.api#enumValue" => "PRIORITIZE_SMALLER_VALUES"}))
    OAuth2ClientCredentialConfiguration.add_member(:secret_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretArn, location_name: "secretArn", traits: {"smithy.api#required" => {}}))
    OAuth2ClientCredentialConfiguration.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, location_name: "roleArn", traits: {"smithy.api#required" => {}}))
    OAuth2ClientCredentialConfiguration.add_member(:authorization_url, ::Smithy::Schema::Shapes::MemberShape.new(target: Url, location_name: "authorizationUrl"))
    OAuth2ClientCredentialConfiguration.add_member(:token_url, ::Smithy::Schema::Shapes::MemberShape.new(target: Url, location_name: "tokenUrl"))
    OAuth2ClientCredentialConfiguration.type = Types::OAuth2ClientCredentialConfiguration
    OpenIDConnectProviderConfiguration.add_member(:secrets_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretArn, location_name: "secretsArn", traits: {"smithy.api#required" => {}}))
    OpenIDConnectProviderConfiguration.add_member(:secrets_role, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, location_name: "secretsRole", traits: {"smithy.api#required" => {}}))
    OpenIDConnectProviderConfiguration.type = Types::OpenIDConnectProviderConfiguration
    OrchestrationConfiguration.add_member(:control, ::Smithy::Schema::Shapes::MemberShape.new(target: OrchestrationControl, location_name: "control", traits: {"smithy.api#required" => {}}))
    OrchestrationConfiguration.type = Types::OrchestrationConfiguration
    OrchestrationControl.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    OrchestrationControl.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    OutputFormat.add_member(:raw, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RAW", traits: {"smithy.api#enumValue" => "RAW"}))
    OutputFormat.add_member(:extracted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "EXTRACTED", traits: {"smithy.api#enumValue" => "EXTRACTED"}))
    PermissionCondition.add_member(:condition_operator, ::Smithy::Schema::Shapes::MemberShape.new(target: PermissionConditionOperator, location_name: "conditionOperator", traits: {"smithy.api#required" => {}}))
    PermissionCondition.add_member(:condition_key, ::Smithy::Schema::Shapes::MemberShape.new(target: PermissionConditionKey, location_name: "conditionKey", traits: {"smithy.api#required" => {}}))
    PermissionCondition.add_member(:condition_values, ::Smithy::Schema::Shapes::MemberShape.new(target: PermissionConditionValues, location_name: "conditionValues", traits: {"smithy.api#required" => {}}))
    PermissionCondition.type = Types::PermissionCondition
    PermissionConditionOperator.add_member(:string_equals, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "STRING_EQUALS", traits: {"smithy.api#enumValue" => "StringEquals"}))
    PermissionConditionValues.member = ::Smithy::Schema::Shapes::MemberShape.new(target: PermissionConditionValue)
    PermissionConditions.member = ::Smithy::Schema::Shapes::MemberShape.new(target: PermissionCondition)
    PersonalizationConfiguration.add_member(:personalization_control_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: PersonalizationControlMode, location_name: "personalizationControlMode", traits: {"smithy.api#required" => {}}))
    PersonalizationConfiguration.type = Types::PersonalizationConfiguration
    PersonalizationControlMode.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    PersonalizationControlMode.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    Plugin.add_member(:plugin_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PluginId, location_name: "pluginId"))
    Plugin.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PluginName, location_name: "displayName"))
    Plugin.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: PluginType, location_name: "type"))
    Plugin.add_member(:server_url, ::Smithy::Schema::Shapes::MemberShape.new(target: Url, location_name: "serverUrl"))
    Plugin.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: PluginState, location_name: "state"))
    Plugin.add_member(:build_status, ::Smithy::Schema::Shapes::MemberShape.new(target: PluginBuildStatus, location_name: "buildStatus"))
    Plugin.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "createdAt"))
    Plugin.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "updatedAt"))
    Plugin.type = Types::Plugin
    PluginAuthConfiguration.add_member(:basic_auth_configuration, Types::PluginAuthConfiguration::BasicAuthConfiguration, ::Smithy::Schema::Shapes::MemberShape.new(target: BasicAuthConfiguration, location_name: "basicAuthConfiguration"))
    PluginAuthConfiguration.add_member(:o_auth2_client_credential_configuration, Types::PluginAuthConfiguration::OAuth2ClientCredentialConfiguration, ::Smithy::Schema::Shapes::MemberShape.new(target: OAuth2ClientCredentialConfiguration, location_name: "oAuth2ClientCredentialConfiguration"))
    PluginAuthConfiguration.add_member(:no_auth_configuration, Types::PluginAuthConfiguration::NoAuthConfiguration, ::Smithy::Schema::Shapes::MemberShape.new(target: NoAuthConfiguration, location_name: "noAuthConfiguration"))
    PluginAuthConfiguration.add_member(:idc_auth_configuration, Types::PluginAuthConfiguration::IdcAuthConfiguration, ::Smithy::Schema::Shapes::MemberShape.new(target: IdcAuthConfiguration, location_name: "idcAuthConfiguration"))
    PluginAuthConfiguration.add_member(:unknown, Types::PluginAuthConfiguration::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    PluginAuthConfiguration.type = Types::PluginAuthConfiguration
    PluginBuildStatus.add_member(:ready, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "READY", traits: {"smithy.api#enumValue" => "READY"}))
    PluginBuildStatus.add_member(:create_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CREATE_IN_PROGRESS", traits: {"smithy.api#enumValue" => "CREATE_IN_PROGRESS"}))
    PluginBuildStatus.add_member(:create_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CREATE_FAILED", traits: {"smithy.api#enumValue" => "CREATE_FAILED"}))
    PluginBuildStatus.add_member(:update_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UPDATE_IN_PROGRESS", traits: {"smithy.api#enumValue" => "UPDATE_IN_PROGRESS"}))
    PluginBuildStatus.add_member(:update_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UPDATE_FAILED", traits: {"smithy.api#enumValue" => "UPDATE_FAILED"}))
    PluginBuildStatus.add_member(:delete_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DELETE_IN_PROGRESS", traits: {"smithy.api#enumValue" => "DELETE_IN_PROGRESS"}))
    PluginBuildStatus.add_member(:delete_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DELETE_FAILED", traits: {"smithy.api#enumValue" => "DELETE_FAILED"}))
    PluginConfiguration.add_member(:plugin_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PluginId, location_name: "pluginId", traits: {"smithy.api#required" => {}}))
    PluginConfiguration.type = Types::PluginConfiguration
    PluginState.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    PluginState.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    PluginType.add_member(:service_now, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SERVICE_NOW", traits: {"smithy.api#enumValue" => "SERVICE_NOW"}))
    PluginType.add_member(:salesforce, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SALESFORCE", traits: {"smithy.api#enumValue" => "SALESFORCE"}))
    PluginType.add_member(:jira, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "JIRA", traits: {"smithy.api#enumValue" => "JIRA"}))
    PluginType.add_member(:zendesk, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ZENDESK", traits: {"smithy.api#enumValue" => "ZENDESK"}))
    PluginType.add_member(:custom, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CUSTOM", traits: {"smithy.api#enumValue" => "CUSTOM"}))
    PluginType.add_member(:quicksight, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "QUICKSIGHT", traits: {"smithy.api#enumValue" => "QUICKSIGHT"}))
    PluginType.add_member(:servicenow_now_platform, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SERVICENOW_NOW_PLATFORM", traits: {"smithy.api#enumValue" => "SERVICENOW_NOW_PLATFORM"}))
    PluginType.add_member(:jira_cloud, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "JIRA_CLOUD", traits: {"smithy.api#enumValue" => "JIRA_CLOUD"}))
    PluginType.add_member(:salesforce_crm, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SALESFORCE_CRM", traits: {"smithy.api#enumValue" => "SALESFORCE_CRM"}))
    PluginType.add_member(:zendesk_suite, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ZENDESK_SUITE", traits: {"smithy.api#enumValue" => "ZENDESK_SUITE"}))
    PluginType.add_member(:atlassian_confluence, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ATLASSIAN_CONFLUENCE", traits: {"smithy.api#enumValue" => "ATLASSIAN_CONFLUENCE"}))
    PluginType.add_member(:google_calendar, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GOOGLE_CALENDAR", traits: {"smithy.api#enumValue" => "GOOGLE_CALENDAR"}))
    PluginType.add_member(:microsoft_teams, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MICROSOFT_TEAMS", traits: {"smithy.api#enumValue" => "MICROSOFT_TEAMS"}))
    PluginType.add_member(:microsoft_exchange, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MICROSOFT_EXCHANGE", traits: {"smithy.api#enumValue" => "MICROSOFT_EXCHANGE"}))
    PluginType.add_member(:pagerduty_advance, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PAGERDUTY_ADVANCE", traits: {"smithy.api#enumValue" => "PAGERDUTY_ADVANCE"}))
    PluginType.add_member(:smartsheet, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SMARTSHEET", traits: {"smithy.api#enumValue" => "SMARTSHEET"}))
    PluginType.add_member(:asana, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ASANA", traits: {"smithy.api#enumValue" => "ASANA"}))
    PluginTypeCategory.add_member(:crm, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CRM", traits: {"smithy.api#enumValue" => "Customer relationship management (CRM)"}))
    PluginTypeCategory.add_member(:project_management, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PROJECT_MANAGEMENT", traits: {"smithy.api#enumValue" => "Project management"}))
    PluginTypeCategory.add_member(:communication, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "COMMUNICATION", traits: {"smithy.api#enumValue" => "Communication"}))
    PluginTypeCategory.add_member(:productivity, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PRODUCTIVITY", traits: {"smithy.api#enumValue" => "Productivity"}))
    PluginTypeCategory.add_member(:ticketing_management, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TICKETING_MANAGEMENT", traits: {"smithy.api#enumValue" => "Ticketing and incident management"}))
    PluginTypeMetadataSummary.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: PluginType, location_name: "type"))
    PluginTypeMetadataSummary.add_member(:category, ::Smithy::Schema::Shapes::MemberShape.new(target: PluginTypeCategory, location_name: "category"))
    PluginTypeMetadataSummary.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "description"))
    PluginTypeMetadataSummary.type = Types::PluginTypeMetadataSummary
    Plugins.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Plugin)
    Principal.add_member(:user, Types::Principal::User, ::Smithy::Schema::Shapes::MemberShape.new(target: PrincipalUser, location_name: "user"))
    Principal.add_member(:group, Types::Principal::Group, ::Smithy::Schema::Shapes::MemberShape.new(target: PrincipalGroup, location_name: "group"))
    Principal.add_member(:unknown, Types::Principal::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    Principal.type = Types::Principal
    PrincipalGroup.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupName, location_name: "name"))
    PrincipalGroup.add_member(:access, ::Smithy::Schema::Shapes::MemberShape.new(target: ReadAccessType, location_name: "access", traits: {"smithy.api#required" => {}}))
    PrincipalGroup.add_member(:membership_type, ::Smithy::Schema::Shapes::MemberShape.new(target: MembershipType, location_name: "membershipType"))
    PrincipalGroup.type = Types::PrincipalGroup
    PrincipalUser.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserId, location_name: "id"))
    PrincipalUser.add_member(:access, ::Smithy::Schema::Shapes::MemberShape.new(target: ReadAccessType, location_name: "access", traits: {"smithy.api#required" => {}}))
    PrincipalUser.add_member(:membership_type, ::Smithy::Schema::Shapes::MemberShape.new(target: MembershipType, location_name: "membershipType"))
    PrincipalUser.type = Types::PrincipalUser
    Principals.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Principal)
    PutFeedbackRequest.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationId, location_name: "applicationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutFeedbackRequest.add_member(:user_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserId, location_name: "userId", traits: {"smithy.api#httpQuery" => "userId"}))
    PutFeedbackRequest.add_member(:conversation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ConversationId, location_name: "conversationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutFeedbackRequest.add_member(:message_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SystemMessageId, location_name: "messageId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutFeedbackRequest.add_member(:message_copied_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "messageCopiedAt"))
    PutFeedbackRequest.add_member(:message_usefulness, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageUsefulnessFeedback, location_name: "messageUsefulness"))
    PutFeedbackRequest.type = Types::PutFeedbackRequest
    PutGroupRequest.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationId, location_name: "applicationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutGroupRequest.add_member(:index_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexId, location_name: "indexId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutGroupRequest.add_member(:group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupName, location_name: "groupName", traits: {"smithy.api#required" => {}}))
    PutGroupRequest.add_member(:data_source_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceId, location_name: "dataSourceId"))
    PutGroupRequest.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: MembershipType, location_name: "type", traits: {"smithy.api#required" => {}}))
    PutGroupRequest.add_member(:group_members, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupMembers, location_name: "groupMembers", traits: {"smithy.api#required" => {}}))
    PutGroupRequest.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, location_name: "roleArn"))
    PutGroupRequest.type = Types::PutGroupRequest
    PutGroupResponse.type = Types::PutGroupResponse
    QAppsConfiguration.add_member(:q_apps_control_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: QAppsControlMode, location_name: "qAppsControlMode", traits: {"smithy.api#required" => {}}))
    QAppsConfiguration.type = Types::QAppsConfiguration
    QAppsControlMode.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    QAppsControlMode.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    QIamActions.member = ::Smithy::Schema::Shapes::MemberShape.new(target: QIamAction)
    QuickSightConfiguration.add_member(:client_namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientNamespace, location_name: "clientNamespace", traits: {"smithy.api#required" => {}}))
    QuickSightConfiguration.type = Types::QuickSightConfiguration
    ReadAccessType.add_member(:allow, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ALLOW", traits: {"smithy.api#enumValue" => "ALLOW"}))
    ReadAccessType.add_member(:deny, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DENY", traits: {"smithy.api#enumValue" => "DENY"}))
    RelevantContent.add_member(:content, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "content"))
    RelevantContent.add_member(:document_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentId, location_name: "documentId"))
    RelevantContent.add_member(:document_title, ::Smithy::Schema::Shapes::MemberShape.new(target: Title, location_name: "documentTitle"))
    RelevantContent.add_member(:document_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: Url, location_name: "documentUri"))
    RelevantContent.add_member(:document_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentAttributes, location_name: "documentAttributes"))
    RelevantContent.add_member(:score_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: ScoreAttributes, location_name: "scoreAttributes"))
    RelevantContent.type = Types::RelevantContent
    RelevantContentList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: RelevantContent)
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "message", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "resourceId", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "resourceType", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResponseConfiguration.add_member(:instruction_collection, ::Smithy::Schema::Shapes::MemberShape.new(target: InstructionCollection, location_name: "instructionCollection"))
    ResponseConfiguration.type = Types::ResponseConfiguration
    ResponseConfigurationType.add_member(:all, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ALL", traits: {"smithy.api#enumValue" => "ALL"}))
    ResponseConfigurations.key = ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseConfigurationType)
    ResponseConfigurations.value = ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseConfiguration)
    ResponseScope.add_member(:enterprise_content_only, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ENTERPRISE_CONTENT_ONLY", traits: {"smithy.api#enumValue" => "ENTERPRISE_CONTENT_ONLY"}))
    ResponseScope.add_member(:extended_knowledge_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "EXTENDED_KNOWLEDGE_ENABLED", traits: {"smithy.api#enumValue" => "EXTENDED_KNOWLEDGE_ENABLED"}))
    Retriever.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationId, location_name: "applicationId"))
    Retriever.add_member(:retriever_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RetrieverId, location_name: "retrieverId"))
    Retriever.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: RetrieverType, location_name: "type"))
    Retriever.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: RetrieverStatus, location_name: "status"))
    Retriever.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RetrieverName, location_name: "displayName"))
    Retriever.type = Types::Retriever
    RetrieverConfiguration.add_member(:native_index_configuration, Types::RetrieverConfiguration::NativeIndexConfiguration, ::Smithy::Schema::Shapes::MemberShape.new(target: NativeIndexConfiguration, location_name: "nativeIndexConfiguration"))
    RetrieverConfiguration.add_member(:kendra_index_configuration, Types::RetrieverConfiguration::KendraIndexConfiguration, ::Smithy::Schema::Shapes::MemberShape.new(target: KendraIndexConfiguration, location_name: "kendraIndexConfiguration"))
    RetrieverConfiguration.add_member(:unknown, Types::RetrieverConfiguration::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    RetrieverConfiguration.type = Types::RetrieverConfiguration
    RetrieverContentSource.add_member(:retriever_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RetrieverId, location_name: "retrieverId", traits: {"smithy.api#required" => {}}))
    RetrieverContentSource.type = Types::RetrieverContentSource
    RetrieverStatus.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CREATING", traits: {"smithy.api#enumValue" => "CREATING"}))
    RetrieverStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    RetrieverStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    RetrieverType.add_member(:native_index, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NATIVE_INDEX", traits: {"smithy.api#enumValue" => "NATIVE_INDEX"}))
    RetrieverType.add_member(:kendra_index, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "KENDRA_INDEX", traits: {"smithy.api#enumValue" => "KENDRA_INDEX"}))
    Retrievers.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Retriever)
    Rule.add_member(:included_users_and_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: UsersAndGroups, location_name: "includedUsersAndGroups"))
    Rule.add_member(:excluded_users_and_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: UsersAndGroups, location_name: "excludedUsersAndGroups"))
    Rule.add_member(:rule_type, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleType, location_name: "ruleType", traits: {"smithy.api#required" => {}}))
    Rule.add_member(:rule_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleConfiguration, location_name: "ruleConfiguration"))
    Rule.type = Types::Rule
    RuleConfiguration.add_member(:content_blocker_rule, Types::RuleConfiguration::ContentBlockerRule, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentBlockerRule, location_name: "contentBlockerRule"))
    RuleConfiguration.add_member(:content_retrieval_rule, Types::RuleConfiguration::ContentRetrievalRule, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentRetrievalRule, location_name: "contentRetrievalRule"))
    RuleConfiguration.add_member(:unknown, Types::RuleConfiguration::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    RuleConfiguration.type = Types::RuleConfiguration
    RuleType.add_member(:content_blocker_rule, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CONTENT_BLOCKER_RULE", traits: {"smithy.api#enumValue" => "CONTENT_BLOCKER_RULE"}))
    RuleType.add_member(:content_retrieval_rule, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CONTENT_RETRIEVAL_RULE", traits: {"smithy.api#enumValue" => "CONTENT_RETRIEVAL_RULE"}))
    Rules.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Rule)
    S3.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: S3BucketName, location_name: "bucket", traits: {"smithy.api#required" => {}}))
    S3.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: S3ObjectKey, location_name: "key", traits: {"smithy.api#required" => {}}))
    S3.type = Types::S3
    SamlConfiguration.add_member(:metadata_xml, ::Smithy::Schema::Shapes::MemberShape.new(target: SamlMetadataXML, location_name: "metadataXML", traits: {"smithy.api#required" => {}}))
    SamlConfiguration.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, location_name: "roleArn", traits: {"smithy.api#required" => {}}))
    SamlConfiguration.add_member(:user_id_attribute, ::Smithy::Schema::Shapes::MemberShape.new(target: SamlAttribute, location_name: "userIdAttribute", traits: {"smithy.api#required" => {}}))
    SamlConfiguration.add_member(:user_group_attribute, ::Smithy::Schema::Shapes::MemberShape.new(target: SamlAttribute, location_name: "userGroupAttribute"))
    SamlConfiguration.type = Types::SamlConfiguration
    SamlProviderConfiguration.add_member(:authentication_url, ::Smithy::Schema::Shapes::MemberShape.new(target: SamlAuthenticationUrl, location_name: "authenticationUrl", traits: {"smithy.api#required" => {}}))
    SamlProviderConfiguration.type = Types::SamlProviderConfiguration
    ScoreAttributes.add_member(:score_confidence, ::Smithy::Schema::Shapes::MemberShape.new(target: ScoreConfidence, location_name: "scoreConfidence"))
    ScoreAttributes.type = Types::ScoreAttributes
    ScoreConfidence.add_member(:very_high, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "VERY_HIGH", traits: {"smithy.api#enumValue" => "VERY_HIGH"}))
    ScoreConfidence.add_member(:high, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "HIGH", traits: {"smithy.api#enumValue" => "HIGH"}))
    ScoreConfidence.add_member(:medium, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MEDIUM", traits: {"smithy.api#enumValue" => "MEDIUM"}))
    ScoreConfidence.add_member(:low, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LOW", traits: {"smithy.api#enumValue" => "LOW"}))
    ScoreConfidence.add_member(:not_available, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NOT_AVAILABLE", traits: {"smithy.api#enumValue" => "NOT_AVAILABLE"}))
    SearchRelevantContentRequest.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationId, location_name: "applicationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    SearchRelevantContentRequest.add_member(:query_text, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryText, location_name: "queryText", traits: {"smithy.api#required" => {}}))
    SearchRelevantContentRequest.add_member(:content_source, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentSource, location_name: "contentSource", traits: {"smithy.api#required" => {}}))
    SearchRelevantContentRequest.add_member(:attribute_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeFilter, location_name: "attributeFilter"))
    SearchRelevantContentRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, location_name: "maxResults", traits: {"smithy.api#addedDefault" => {}, "smithy.api#default" => 10}))
    SearchRelevantContentRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken"))
    SearchRelevantContentRequest.type = Types::SearchRelevantContentRequest
    SearchRelevantContentResponse.add_member(:relevant_content, ::Smithy::Schema::Shapes::MemberShape.new(target: RelevantContentList, location_name: "relevantContent"))
    SearchRelevantContentResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken"))
    SearchRelevantContentResponse.type = Types::SearchRelevantContentResponse
    SecurityGroupIds.member = ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroupId)
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "message", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "resourceId", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "resourceType", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    SnippetExcerpt.add_member(:text, ::Smithy::Schema::Shapes::MemberShape.new(target: SnippetExcerptText, location_name: "text"))
    SnippetExcerpt.type = Types::SnippetExcerpt
    SourceAttribution.add_member(:title, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "title"))
    SourceAttribution.add_member(:snippet, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "snippet"))
    SourceAttribution.add_member(:url, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "url"))
    SourceAttribution.add_member(:citation_number, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, location_name: "citationNumber"))
    SourceAttribution.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "updatedAt"))
    SourceAttribution.add_member(:text_message_segments, ::Smithy::Schema::Shapes::MemberShape.new(target: TextSegmentList, location_name: "textMessageSegments"))
    SourceAttribution.add_member(:document_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "documentId"))
    SourceAttribution.add_member(:index_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "indexId"))
    SourceAttribution.add_member(:datasource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "datasourceId"))
    SourceAttribution.type = Types::SourceAttribution
    SourceAttributions.member = ::Smithy::Schema::Shapes::MemberShape.new(target: SourceAttribution)
    SourceDetails.add_member(:image_source_details, Types::SourceDetails::ImageSourceDetails, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageSourceDetails, location_name: "imageSourceDetails"))
    SourceDetails.add_member(:audio_source_details, Types::SourceDetails::AudioSourceDetails, ::Smithy::Schema::Shapes::MemberShape.new(target: AudioSourceDetails, location_name: "audioSourceDetails"))
    SourceDetails.add_member(:video_source_details, Types::SourceDetails::VideoSourceDetails, ::Smithy::Schema::Shapes::MemberShape.new(target: VideoSourceDetails, location_name: "videoSourceDetails"))
    SourceDetails.add_member(:unknown, Types::SourceDetails::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    SourceDetails.type = Types::SourceDetails
    StartDataSourceSyncJobRequest.add_member(:data_source_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceId, location_name: "dataSourceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartDataSourceSyncJobRequest.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationId, location_name: "applicationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartDataSourceSyncJobRequest.add_member(:index_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexId, location_name: "indexId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartDataSourceSyncJobRequest.type = Types::StartDataSourceSyncJobRequest
    StartDataSourceSyncJobResponse.add_member(:execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutionId, location_name: "executionId"))
    StartDataSourceSyncJobResponse.type = Types::StartDataSourceSyncJobResponse
    Status.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    Status.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    StopDataSourceSyncJobRequest.add_member(:data_source_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceId, location_name: "dataSourceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StopDataSourceSyncJobRequest.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationId, location_name: "applicationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StopDataSourceSyncJobRequest.add_member(:index_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexId, location_name: "indexId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StopDataSourceSyncJobRequest.type = Types::StopDataSourceSyncJobRequest
    StopDataSourceSyncJobResponse.type = Types::StopDataSourceSyncJobResponse
    StringAttributeBoostingConfiguration.add_member(:boosting_level, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentAttributeBoostingLevel, location_name: "boostingLevel", traits: {"smithy.api#required" => {}}))
    StringAttributeBoostingConfiguration.add_member(:attribute_value_boosting, ::Smithy::Schema::Shapes::MemberShape.new(target: StringAttributeValueBoosting, location_name: "attributeValueBoosting"))
    StringAttributeBoostingConfiguration.type = Types::StringAttributeBoostingConfiguration
    StringAttributeValueBoosting.key = ::Smithy::Schema::Shapes::MemberShape.new(target: String)
    StringAttributeValueBoosting.value = ::Smithy::Schema::Shapes::MemberShape.new(target: StringAttributeValueBoostingLevel)
    StringAttributeValueBoostingLevel.add_member(:low, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LOW", traits: {"smithy.api#enumValue" => "LOW"}))
    StringAttributeValueBoostingLevel.add_member(:medium, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MEDIUM", traits: {"smithy.api#enumValue" => "MEDIUM"}))
    StringAttributeValueBoostingLevel.add_member(:high, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "HIGH", traits: {"smithy.api#enumValue" => "HIGH"}))
    StringAttributeValueBoostingLevel.add_member(:very_high, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "VERY_HIGH", traits: {"smithy.api#enumValue" => "VERY_HIGH"}))
    StringAttributeValueBoostingLevel.add_member(:one, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ONE", traits: {"smithy.api#enumValue" => "ONE"}))
    StringAttributeValueBoostingLevel.add_member(:two, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TWO", traits: {"smithy.api#enumValue" => "TWO"}))
    StringAttributeValueBoostingLevel.add_member(:three, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "THREE", traits: {"smithy.api#enumValue" => "THREE"}))
    StringAttributeValueBoostingLevel.add_member(:four, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FOUR", traits: {"smithy.api#enumValue" => "FOUR"}))
    StringAttributeValueBoostingLevel.add_member(:five, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FIVE", traits: {"smithy.api#enumValue" => "FIVE"}))
    StringListAttributeBoostingConfiguration.add_member(:boosting_level, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentAttributeBoostingLevel, location_name: "boostingLevel", traits: {"smithy.api#required" => {}}))
    StringListAttributeBoostingConfiguration.type = Types::StringListAttributeBoostingConfiguration
    SubnetIds.member = ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetId)
    Subscription.add_member(:subscription_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SubscriptionId, location_name: "subscriptionId"))
    Subscription.add_member(:subscription_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SubscriptionArn, location_name: "subscriptionArn"))
    Subscription.add_member(:principal, ::Smithy::Schema::Shapes::MemberShape.new(target: SubscriptionPrincipal, location_name: "principal"))
    Subscription.add_member(:current_subscription, ::Smithy::Schema::Shapes::MemberShape.new(target: SubscriptionDetails, location_name: "currentSubscription"))
    Subscription.add_member(:next_subscription, ::Smithy::Schema::Shapes::MemberShape.new(target: SubscriptionDetails, location_name: "nextSubscription"))
    Subscription.type = Types::Subscription
    SubscriptionDetails.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: SubscriptionType, location_name: "type"))
    SubscriptionDetails.type = Types::SubscriptionDetails
    SubscriptionPrincipal.add_member(:user, Types::SubscriptionPrincipal::User, ::Smithy::Schema::Shapes::MemberShape.new(target: UserIdentifier, location_name: "user"))
    SubscriptionPrincipal.add_member(:group, Types::SubscriptionPrincipal::Group, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupIdentifier, location_name: "group"))
    SubscriptionPrincipal.add_member(:unknown, Types::SubscriptionPrincipal::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    SubscriptionPrincipal.type = Types::SubscriptionPrincipal
    SubscriptionType.add_member(:q_lite, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Q_LITE", traits: {"smithy.api#enumValue" => "Q_LITE"}))
    SubscriptionType.add_member(:q_business, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Q_BUSINESS", traits: {"smithy.api#enumValue" => "Q_BUSINESS"}))
    Subscriptions.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Subscription)
    SystemMessageType.add_member(:response, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RESPONSE", traits: {"smithy.api#enumValue" => "RESPONSE"}))
    SystemMessageType.add_member(:grounded_response, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GROUNDED_RESPONSE", traits: {"smithy.api#enumValue" => "GROUNDED_RESPONSE"}))
    Tag.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, location_name: "key", traits: {"smithy.api#required" => {}}))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, location_name: "value", traits: {"smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagKeys.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey)
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, location_name: "resourceARN", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, location_name: "tags", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    Tags.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Tag)
    TextDocumentStatistics.add_member(:indexed_text_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexedTextBytes, location_name: "indexedTextBytes"))
    TextDocumentStatistics.add_member(:indexed_text_document_count, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexedTextDocument, location_name: "indexedTextDocumentCount"))
    TextDocumentStatistics.type = Types::TextDocumentStatistics
    TextInputEvent.add_member(:user_message, ::Smithy::Schema::Shapes::MemberShape.new(target: UserMessage, location_name: "userMessage", traits: {"smithy.api#required" => {}}))
    TextInputEvent.type = Types::TextInputEvent
    TextOutputEvent.add_member(:system_message_type, ::Smithy::Schema::Shapes::MemberShape.new(target: SystemMessageType, location_name: "systemMessageType"))
    TextOutputEvent.add_member(:conversation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ConversationId, location_name: "conversationId"))
    TextOutputEvent.add_member(:user_message_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageId, location_name: "userMessageId"))
    TextOutputEvent.add_member(:system_message_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageId, location_name: "systemMessageId"))
    TextOutputEvent.add_member(:system_message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "systemMessage"))
    TextOutputEvent.type = Types::TextOutputEvent
    TextSegment.add_member(:begin_offset, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, location_name: "beginOffset"))
    TextSegment.add_member(:end_offset, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, location_name: "endOffset"))
    TextSegment.add_member(:snippet_excerpt, ::Smithy::Schema::Shapes::MemberShape.new(target: SnippetExcerpt, location_name: "snippetExcerpt"))
    TextSegment.add_member(:media_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceAttributionMediaId, location_name: "mediaId", traits: {"smithy.api#deprecated" => {"since" => "2025-02-28", "message" => "Deprecated in favor of using mediaId within the respective sourceDetails field."}}))
    TextSegment.add_member(:media_mime_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "mediaMimeType", traits: {"smithy.api#deprecated" => {"since" => "2025-02-28", "message" => "Deprecated in favor of using mediaMimeType within the respective sourceDetails field."}}))
    TextSegment.add_member(:source_details, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceDetails, location_name: "sourceDetails"))
    TextSegment.type = Types::TextSegment
    TextSegmentList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TextSegment)
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "message", traits: {"smithy.api#required" => {}}))
    ThrottlingException.type = Types::ThrottlingException
    TopicConfiguration.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: TopicConfigurationName, location_name: "name", traits: {"smithy.api#required" => {}}))
    TopicConfiguration.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: TopicDescription, location_name: "description"))
    TopicConfiguration.add_member(:example_chat_messages, ::Smithy::Schema::Shapes::MemberShape.new(target: ExampleChatMessages, location_name: "exampleChatMessages"))
    TopicConfiguration.add_member(:rules, ::Smithy::Schema::Shapes::MemberShape.new(target: Rules, location_name: "rules", traits: {"smithy.api#required" => {}}))
    TopicConfiguration.type = Types::TopicConfiguration
    TopicConfigurations.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TopicConfiguration)
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, location_name: "resourceARN", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeys, location_name: "tagKeys", traits: {"smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateApplicationRequest.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationId, location_name: "applicationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateApplicationRequest.add_member(:identity_center_instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceArn, location_name: "identityCenterInstanceArn"))
    UpdateApplicationRequest.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationName, location_name: "displayName"))
    UpdateApplicationRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, location_name: "description"))
    UpdateApplicationRequest.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, location_name: "roleArn"))
    UpdateApplicationRequest.add_member(:attachments_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AttachmentsConfiguration, location_name: "attachmentsConfiguration"))
    UpdateApplicationRequest.add_member(:q_apps_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: QAppsConfiguration, location_name: "qAppsConfiguration"))
    UpdateApplicationRequest.add_member(:personalization_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: PersonalizationConfiguration, location_name: "personalizationConfiguration"))
    UpdateApplicationRequest.add_member(:auto_subscription_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoSubscriptionConfiguration, location_name: "autoSubscriptionConfiguration"))
    UpdateApplicationRequest.type = Types::UpdateApplicationRequest
    UpdateApplicationResponse.type = Types::UpdateApplicationResponse
    UpdateChatControlsConfigurationRequest.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationId, location_name: "applicationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateChatControlsConfigurationRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, location_name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    UpdateChatControlsConfigurationRequest.add_member(:response_scope, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseScope, location_name: "responseScope"))
    UpdateChatControlsConfigurationRequest.add_member(:orchestration_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: OrchestrationConfiguration, location_name: "orchestrationConfiguration"))
    UpdateChatControlsConfigurationRequest.add_member(:blocked_phrases_configuration_update, ::Smithy::Schema::Shapes::MemberShape.new(target: BlockedPhrasesConfigurationUpdate, location_name: "blockedPhrasesConfigurationUpdate"))
    UpdateChatControlsConfigurationRequest.add_member(:topic_configurations_to_create_or_update, ::Smithy::Schema::Shapes::MemberShape.new(target: TopicConfigurations, location_name: "topicConfigurationsToCreateOrUpdate"))
    UpdateChatControlsConfigurationRequest.add_member(:topic_configurations_to_delete, ::Smithy::Schema::Shapes::MemberShape.new(target: TopicConfigurations, location_name: "topicConfigurationsToDelete"))
    UpdateChatControlsConfigurationRequest.add_member(:creator_mode_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: CreatorModeConfiguration, location_name: "creatorModeConfiguration"))
    UpdateChatControlsConfigurationRequest.add_member(:hallucination_reduction_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: HallucinationReductionConfiguration, location_name: "hallucinationReductionConfiguration"))
    UpdateChatControlsConfigurationRequest.type = Types::UpdateChatControlsConfigurationRequest
    UpdateChatControlsConfigurationResponse.type = Types::UpdateChatControlsConfigurationResponse
    UpdateChatResponseConfigurationRequest.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationId, location_name: "applicationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateChatResponseConfigurationRequest.add_member(:chat_response_configuration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ChatResponseConfigurationId, location_name: "chatResponseConfigurationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateChatResponseConfigurationRequest.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DisplayName, location_name: "displayName"))
    UpdateChatResponseConfigurationRequest.add_member(:response_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseConfigurations, location_name: "responseConfigurations", traits: {"smithy.api#required" => {}}))
    UpdateChatResponseConfigurationRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    UpdateChatResponseConfigurationRequest.type = Types::UpdateChatResponseConfigurationRequest
    UpdateChatResponseConfigurationResponse.type = Types::UpdateChatResponseConfigurationResponse
    UpdateDataAccessorRequest.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationId, location_name: "applicationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateDataAccessorRequest.add_member(:data_accessor_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DataAccessorId, location_name: "dataAccessorId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateDataAccessorRequest.add_member(:action_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionConfigurationList, location_name: "actionConfigurations", traits: {"smithy.api#required" => {}}))
    UpdateDataAccessorRequest.add_member(:authentication_detail, ::Smithy::Schema::Shapes::MemberShape.new(target: DataAccessorAuthenticationDetail, location_name: "authenticationDetail"))
    UpdateDataAccessorRequest.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DataAccessorName, location_name: "displayName"))
    UpdateDataAccessorRequest.type = Types::UpdateDataAccessorRequest
    UpdateDataAccessorResponse.type = Types::UpdateDataAccessorResponse
    UpdateDataSourceRequest.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationId, location_name: "applicationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateDataSourceRequest.add_member(:index_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexId, location_name: "indexId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateDataSourceRequest.add_member(:data_source_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceId, location_name: "dataSourceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateDataSourceRequest.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceName, location_name: "displayName"))
    UpdateDataSourceRequest.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceConfiguration, location_name: "configuration"))
    UpdateDataSourceRequest.add_member(:vpc_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceVpcConfiguration, location_name: "vpcConfiguration"))
    UpdateDataSourceRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, location_name: "description"))
    UpdateDataSourceRequest.add_member(:sync_schedule, ::Smithy::Schema::Shapes::MemberShape.new(target: SyncSchedule, location_name: "syncSchedule"))
    UpdateDataSourceRequest.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, location_name: "roleArn"))
    UpdateDataSourceRequest.add_member(:document_enrichment_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentEnrichmentConfiguration, location_name: "documentEnrichmentConfiguration"))
    UpdateDataSourceRequest.add_member(:media_extraction_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: MediaExtractionConfiguration, location_name: "mediaExtractionConfiguration"))
    UpdateDataSourceRequest.type = Types::UpdateDataSourceRequest
    UpdateDataSourceResponse.type = Types::UpdateDataSourceResponse
    UpdateIndexRequest.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationId, location_name: "applicationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateIndexRequest.add_member(:index_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexId, location_name: "indexId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateIndexRequest.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationName, location_name: "displayName"))
    UpdateIndexRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, location_name: "description"))
    UpdateIndexRequest.add_member(:capacity_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexCapacityConfiguration, location_name: "capacityConfiguration"))
    UpdateIndexRequest.add_member(:document_attribute_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentAttributeConfigurations, location_name: "documentAttributeConfigurations"))
    UpdateIndexRequest.type = Types::UpdateIndexRequest
    UpdateIndexResponse.type = Types::UpdateIndexResponse
    UpdatePluginRequest.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationId, location_name: "applicationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdatePluginRequest.add_member(:plugin_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PluginId, location_name: "pluginId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdatePluginRequest.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PluginName, location_name: "displayName"))
    UpdatePluginRequest.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: PluginState, location_name: "state"))
    UpdatePluginRequest.add_member(:server_url, ::Smithy::Schema::Shapes::MemberShape.new(target: Url, location_name: "serverUrl"))
    UpdatePluginRequest.add_member(:custom_plugin_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomPluginConfiguration, location_name: "customPluginConfiguration"))
    UpdatePluginRequest.add_member(:auth_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: PluginAuthConfiguration, location_name: "authConfiguration"))
    UpdatePluginRequest.type = Types::UpdatePluginRequest
    UpdatePluginResponse.type = Types::UpdatePluginResponse
    UpdateRetrieverRequest.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationId, location_name: "applicationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateRetrieverRequest.add_member(:retriever_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RetrieverId, location_name: "retrieverId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateRetrieverRequest.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: RetrieverConfiguration, location_name: "configuration"))
    UpdateRetrieverRequest.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RetrieverName, location_name: "displayName"))
    UpdateRetrieverRequest.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, location_name: "roleArn"))
    UpdateRetrieverRequest.type = Types::UpdateRetrieverRequest
    UpdateRetrieverResponse.type = Types::UpdateRetrieverResponse
    UpdateSubscriptionRequest.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationId, location_name: "applicationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateSubscriptionRequest.add_member(:subscription_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SubscriptionId, location_name: "subscriptionId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateSubscriptionRequest.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: SubscriptionType, location_name: "type", traits: {"smithy.api#required" => {}}))
    UpdateSubscriptionRequest.type = Types::UpdateSubscriptionRequest
    UpdateSubscriptionResponse.add_member(:subscription_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SubscriptionArn, location_name: "subscriptionArn"))
    UpdateSubscriptionResponse.add_member(:current_subscription, ::Smithy::Schema::Shapes::MemberShape.new(target: SubscriptionDetails, location_name: "currentSubscription"))
    UpdateSubscriptionResponse.add_member(:next_subscription, ::Smithy::Schema::Shapes::MemberShape.new(target: SubscriptionDetails, location_name: "nextSubscription"))
    UpdateSubscriptionResponse.type = Types::UpdateSubscriptionResponse
    UpdateUserRequest.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationId, location_name: "applicationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateUserRequest.add_member(:user_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "userId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateUserRequest.add_member(:user_aliases_to_update, ::Smithy::Schema::Shapes::MemberShape.new(target: UserAliases, location_name: "userAliasesToUpdate"))
    UpdateUserRequest.add_member(:user_aliases_to_delete, ::Smithy::Schema::Shapes::MemberShape.new(target: UserAliases, location_name: "userAliasesToDelete"))
    UpdateUserRequest.type = Types::UpdateUserRequest
    UpdateUserResponse.add_member(:user_aliases_added, ::Smithy::Schema::Shapes::MemberShape.new(target: UserAliases, location_name: "userAliasesAdded"))
    UpdateUserResponse.add_member(:user_aliases_updated, ::Smithy::Schema::Shapes::MemberShape.new(target: UserAliases, location_name: "userAliasesUpdated"))
    UpdateUserResponse.add_member(:user_aliases_deleted, ::Smithy::Schema::Shapes::MemberShape.new(target: UserAliases, location_name: "userAliasesDeleted"))
    UpdateUserResponse.type = Types::UpdateUserResponse
    UpdateWebExperienceRequest.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationId, location_name: "applicationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateWebExperienceRequest.add_member(:web_experience_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WebExperienceId, location_name: "webExperienceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateWebExperienceRequest.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, location_name: "roleArn"))
    UpdateWebExperienceRequest.add_member(:authentication_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: WebExperienceAuthConfiguration, location_name: "authenticationConfiguration", traits: {"smithy.api#deprecated" => {"message" => "Property associated with legacy SAML IdP flow. Deprecated in favor of using AWS IAM Identity Center for user management."}}))
    UpdateWebExperienceRequest.add_member(:title, ::Smithy::Schema::Shapes::MemberShape.new(target: WebExperienceTitle, location_name: "title"))
    UpdateWebExperienceRequest.add_member(:subtitle, ::Smithy::Schema::Shapes::MemberShape.new(target: WebExperienceSubtitle, location_name: "subtitle"))
    UpdateWebExperienceRequest.add_member(:welcome_message, ::Smithy::Schema::Shapes::MemberShape.new(target: WebExperienceWelcomeMessage, location_name: "welcomeMessage"))
    UpdateWebExperienceRequest.add_member(:sample_prompts_control_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: WebExperienceSamplePromptsControlMode, location_name: "samplePromptsControlMode"))
    UpdateWebExperienceRequest.add_member(:identity_provider_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityProviderConfiguration, location_name: "identityProviderConfiguration"))
    UpdateWebExperienceRequest.add_member(:origins, ::Smithy::Schema::Shapes::MemberShape.new(target: WebExperienceOrigins, location_name: "origins"))
    UpdateWebExperienceRequest.add_member(:browser_extension_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: BrowserExtensionConfiguration, location_name: "browserExtensionConfiguration"))
    UpdateWebExperienceRequest.add_member(:customization_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomizationConfiguration, location_name: "customizationConfiguration"))
    UpdateWebExperienceRequest.type = Types::UpdateWebExperienceRequest
    UpdateWebExperienceResponse.type = Types::UpdateWebExperienceResponse
    UserAlias.add_member(:index_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexId, location_name: "indexId"))
    UserAlias.add_member(:data_source_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceId, location_name: "dataSourceId"))
    UserAlias.add_member(:user_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "userId", traits: {"smithy.api#required" => {}}))
    UserAlias.type = Types::UserAlias
    UserAliases.member = ::Smithy::Schema::Shapes::MemberShape.new(target: UserAlias)
    UserGroups.member = ::Smithy::Schema::Shapes::MemberShape.new(target: String)
    UserIds.member = ::Smithy::Schema::Shapes::MemberShape.new(target: String)
    UsersAndGroups.add_member(:user_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: UserIds, location_name: "userIds"))
    UsersAndGroups.add_member(:user_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: UserGroups, location_name: "userGroups"))
    UsersAndGroups.type = Types::UsersAndGroups
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "message", traits: {"smithy.api#required" => {}}))
    ValidationException.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionReason, location_name: "reason", traits: {"smithy.api#required" => {}}))
    ValidationException.add_member(:fields, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionFields, location_name: "fields"))
    ValidationException.type = Types::ValidationException
    ValidationExceptionField.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "name", traits: {"smithy.api#required" => {}}))
    ValidationExceptionField.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "message", traits: {"smithy.api#required" => {}}))
    ValidationExceptionField.type = Types::ValidationExceptionField
    ValidationExceptionFields.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionField)
    ValidationExceptionReason.add_member(:cannot_parse, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CANNOT_PARSE", traits: {"smithy.api#enumValue" => "CANNOT_PARSE"}))
    ValidationExceptionReason.add_member(:field_validation_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FIELD_VALIDATION_FAILED", traits: {"smithy.api#enumValue" => "FIELD_VALIDATION_FAILED"}))
    ValidationExceptionReason.add_member(:unknown_operation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UNKNOWN_OPERATION", traits: {"smithy.api#enumValue" => "UNKNOWN_OPERATION"}))
    VideoExtractionConfiguration.add_member(:video_extraction_status, ::Smithy::Schema::Shapes::MemberShape.new(target: VideoExtractionStatus, location_name: "videoExtractionStatus", traits: {"smithy.api#required" => {}}))
    VideoExtractionConfiguration.type = Types::VideoExtractionConfiguration
    VideoExtractionStatus.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    VideoExtractionStatus.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    VideoExtractionType.add_member(:transcript, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TRANSCRIPT", traits: {"smithy.api#enumValue" => "TRANSCRIPT"}))
    VideoExtractionType.add_member(:summary, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SUMMARY", traits: {"smithy.api#enumValue" => "SUMMARY"}))
    VideoSourceDetails.add_member(:media_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MediaId, location_name: "mediaId"))
    VideoSourceDetails.add_member(:media_mime_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "mediaMimeType"))
    VideoSourceDetails.add_member(:start_time_milliseconds, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, location_name: "startTimeMilliseconds"))
    VideoSourceDetails.add_member(:end_time_milliseconds, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, location_name: "endTimeMilliseconds"))
    VideoSourceDetails.add_member(:video_extraction_type, ::Smithy::Schema::Shapes::MemberShape.new(target: VideoExtractionType, location_name: "videoExtractionType"))
    VideoSourceDetails.type = Types::VideoSourceDetails
    WebExperience.add_member(:web_experience_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WebExperienceId, location_name: "webExperienceId"))
    WebExperience.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "createdAt"))
    WebExperience.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "updatedAt"))
    WebExperience.add_member(:default_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: Url, location_name: "defaultEndpoint"))
    WebExperience.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: WebExperienceStatus, location_name: "status"))
    WebExperience.type = Types::WebExperience
    WebExperienceAuthConfiguration.add_member(:saml_configuration, Types::WebExperienceAuthConfiguration::SamlConfiguration, ::Smithy::Schema::Shapes::MemberShape.new(target: SamlConfiguration, location_name: "samlConfiguration"))
    WebExperienceAuthConfiguration.add_member(:unknown, Types::WebExperienceAuthConfiguration::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    WebExperienceAuthConfiguration.type = Types::WebExperienceAuthConfiguration
    WebExperienceOrigins.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Origin)
    WebExperienceSamplePromptsControlMode.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    WebExperienceSamplePromptsControlMode.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    WebExperienceStatus.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CREATING", traits: {"smithy.api#enumValue" => "CREATING"}))
    WebExperienceStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    WebExperienceStatus.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    WebExperienceStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    WebExperienceStatus.add_member(:pending_auth_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PENDING_AUTH_CONFIG", traits: {"smithy.api#enumValue" => "PENDING_AUTH_CONFIG"}))
    WebExperiences.member = ::Smithy::Schema::Shapes::MemberShape.new(target: WebExperience)

    ExpertQ = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.qbusiness#ExpertQ"
      service.name = "ExpertQ"
      service.version = "2023-11-27"
      service.traits = {"aws.api#service" => {"sdkId" => "QBusiness", "cloudFormationName" => "QBusiness", "arnNamespace" => "qbusiness", "cloudTrailEventSource" => "qbusiness.amazonaws.com"}, "aws.auth#sigv4" => {"name" => "qbusiness"}, "aws.protocols#restJson1" => {"http" => ["h2", "http/1.1"], "eventStreamHttp" => ["h2"]}, "smithy.api#title" => "QBusiness"}
      service.add_operation(:associate_permission, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qbusiness#AssociatePermission"
        operation.name = "AssociatePermission"
        operation.input = AssociatePermissionRequest
        operation.output = AssociatePermissionResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/applications/{applicationId}/policy", "method" => "POST"}}
      end)
      service.add_operation(:batch_delete_document, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qbusiness#BatchDeleteDocument"
        operation.name = "BatchDeleteDocument"
        operation.input = BatchDeleteDocumentRequest
        operation.output = BatchDeleteDocumentResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/applications/{applicationId}/indices/{indexId}/documents/delete"}}
      end)
      service.add_operation(:batch_put_document, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qbusiness#BatchPutDocument"
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
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/applications/{applicationId}/indices/{indexId}/documents"}}
      end)
      service.add_operation(:cancel_subscription, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qbusiness#CancelSubscription"
        operation.name = "CancelSubscription"
        operation.input = CancelSubscriptionRequest
        operation.output = CancelSubscriptionResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/applications/{applicationId}/subscriptions/{subscriptionId}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:chat, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qbusiness#Chat"
        operation.name = "Chat"
        operation.input = ChatInput
        operation.output = ChatOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << ExternalResourceException
        operation.errors << InternalServerException
        operation.errors << LicenseNotFoundException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/applications/{applicationId}/conversations", "method" => "POST"}}
      end)
      service.add_operation(:chat_sync, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qbusiness#ChatSync"
        operation.name = "ChatSync"
        operation.input = ChatSyncInput
        operation.output = ChatSyncOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << ExternalResourceException
        operation.errors << InternalServerException
        operation.errors << LicenseNotFoundException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/applications/{applicationId}/conversations?sync", "method" => "POST"}}
      end)
      service.add_operation(:check_document_access, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qbusiness#CheckDocumentAccess"
        operation.name = "CheckDocumentAccess"
        operation.input = CheckDocumentAccessRequest
        operation.output = CheckDocumentAccessResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/applications/{applicationId}/index/{indexId}/users/{userId}/documents/{documentId}/check-document-access"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:create_anonymous_web_experience_url, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qbusiness#CreateAnonymousWebExperienceUrl"
        operation.name = "CreateAnonymousWebExperienceUrl"
        operation.input = CreateAnonymousWebExperienceUrlRequest
        operation.output = CreateAnonymousWebExperienceUrlResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/applications/{applicationId}/experiences/{webExperienceId}/anonymous-url", "method" => "POST"}}
      end)
      service.add_operation(:create_application, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qbusiness#CreateApplication"
        operation.name = "CreateApplication"
        operation.input = CreateApplicationRequest
        operation.output = CreateApplicationResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["aws:RequestTag/${TagKey}", "aws:TagKeys"], "aws.iam#requiredActions" => ["qbusiness:GetApplication", "qbusiness:UpdateApplication", "qbusiness:TagResource", "qbusiness:ListTagsForResource", "iam:PassRole", "kms:DescribeKey", "kms:CreateGrant", "sso:CreateApplication", "sso:PutApplicationAuthenticationMethod", "sso:PutApplicationAccessScope", "sso:PutApplicationGrant", "sso:DeleteApplication", "sso:DescribeInstance", "iam:GetSAMLProvider", "quicksight:DescribeAccountSubscription", "quicksight:ListNamespaces"], "smithy.api#http" => {"uri" => "/applications", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_chat_response_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qbusiness#CreateChatResponseConfiguration"
        operation.name = "CreateChatResponseConfiguration"
        operation.input = CreateChatResponseConfigurationRequest
        operation.output = CreateChatResponseConfigurationResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["aws:RequestTag/${TagKey}", "aws:TagKeys"], "aws.iam#iamAction" => {"requiredActions" => ["qbusiness:GetChatResponseConfiguration", "qbusiness:TagResource", "qbusiness:ListTagsForResource"]}, "smithy.api#http" => {"method" => "POST", "uri" => "/applications/{applicationId}/chatresponseconfigurations"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_data_accessor, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qbusiness#CreateDataAccessor"
        operation.name = "CreateDataAccessor"
        operation.input = CreateDataAccessorRequest
        operation.output = CreateDataAccessorResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["aws:RequestTag/${TagKey}", "aws:TagKeys"], "aws.iam#requiredActions" => ["qbusiness:GetDataAccessor", "qbusiness:TagResource", "qbusiness:ListTagsForResource"], "smithy.api#http" => {"uri" => "/applications/{applicationId}/dataaccessors", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_data_source, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qbusiness#CreateDataSource"
        operation.name = "CreateDataSource"
        operation.input = CreateDataSourceRequest
        operation.output = CreateDataSourceResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["aws:RequestTag/${TagKey}", "aws:TagKeys"], "aws.iam#requiredActions" => ["qbusiness:GetDataSource", "qbusiness:TagResource", "qbusiness:ListTagsForResource", "iam:PassRole"], "smithy.api#http" => {"uri" => "/applications/{applicationId}/indices/{indexId}/datasources", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_index, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qbusiness#CreateIndex"
        operation.name = "CreateIndex"
        operation.input = CreateIndexRequest
        operation.output = CreateIndexResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["aws:RequestTag/${TagKey}", "aws:TagKeys"], "aws.iam#requiredActions" => ["qbusiness:GetIndex", "qbusiness:TagResource", "qbusiness:ListTagsForResource"], "smithy.api#http" => {"uri" => "/applications/{applicationId}/indices", "method" => "POST"}}
      end)
      service.add_operation(:create_plugin, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qbusiness#CreatePlugin"
        operation.name = "CreatePlugin"
        operation.input = CreatePluginRequest
        operation.output = CreatePluginResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["aws:RequestTag/${TagKey}", "aws:TagKeys"], "aws.iam#requiredActions" => ["qbusiness:GetPlugin", "qbusiness:TagResource", "qbusiness:ListTagsForResource", "iam:PassRole"], "smithy.api#http" => {"method" => "POST", "uri" => "/applications/{applicationId}/plugins"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_retriever, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qbusiness#CreateRetriever"
        operation.name = "CreateRetriever"
        operation.input = CreateRetrieverRequest
        operation.output = CreateRetrieverResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["aws:RequestTag/${TagKey}", "aws:TagKeys"], "aws.iam#requiredActions" => ["qbusiness:TagResource", "qbusiness:ListTagsForResource", "qbusiness:GetRetriever", "iam:PassRole"], "smithy.api#http" => {"method" => "POST", "uri" => "/applications/{applicationId}/retrievers"}}
      end)
      service.add_operation(:create_subscription, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qbusiness#CreateSubscription"
        operation.name = "CreateSubscription"
        operation.input = CreateSubscriptionRequest
        operation.output = CreateSubscriptionResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/applications/{applicationId}/subscriptions"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_user, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qbusiness#CreateUser"
        operation.name = "CreateUser"
        operation.input = CreateUserRequest
        operation.output = CreateUserResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/applications/{applicationId}/users"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_web_experience, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qbusiness#CreateWebExperience"
        operation.name = "CreateWebExperience"
        operation.input = CreateWebExperienceRequest
        operation.output = CreateWebExperienceResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["aws:RequestTag/${TagKey}", "aws:TagKeys"], "aws.iam#requiredActions" => ["qbusiness:GetWebExperience", "qbusiness:TagResource", "qbusiness:ListTagsForResource", "iam:PassRole", "sso:PutApplicationGrant", "sso:UpdateApplication"], "smithy.api#http" => {"uri" => "/applications/{applicationId}/experiences", "method" => "POST"}}
      end)
      service.add_operation(:delete_application, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qbusiness#DeleteApplication"
        operation.name = "DeleteApplication"
        operation.input = DeleteApplicationRequest
        operation.output = DeleteApplicationResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#requiredActions" => ["qbusiness:GetApplication", "kms:RetireGrant", "sso:DeleteApplication"], "smithy.api#http" => {"uri" => "/applications/{applicationId}", "method" => "DELETE"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_attachment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qbusiness#DeleteAttachment"
        operation.name = "DeleteAttachment"
        operation.input = DeleteAttachmentRequest
        operation.output = DeleteAttachmentResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << LicenseNotFoundException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/applications/{applicationId}/conversations/{conversationId}/attachments/{attachmentId}", "method" => "DELETE"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_chat_controls_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qbusiness#DeleteChatControlsConfiguration"
        operation.name = "DeleteChatControlsConfiguration"
        operation.input = DeleteChatControlsConfigurationRequest
        operation.output = DeleteChatControlsConfigurationResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/applications/{applicationId}/chatcontrols", "method" => "DELETE", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_chat_response_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qbusiness#DeleteChatResponseConfiguration"
        operation.name = "DeleteChatResponseConfiguration"
        operation.input = DeleteChatResponseConfigurationRequest
        operation.output = DeleteChatResponseConfigurationResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"requiredActions" => ["qbusiness:GetChatResponseConfiguration"]}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/applications/{applicationId}/chatresponseconfigurations/{chatResponseConfigurationId}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_conversation, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qbusiness#DeleteConversation"
        operation.name = "DeleteConversation"
        operation.input = DeleteConversationRequest
        operation.output = DeleteConversationResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << LicenseNotFoundException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/applications/{applicationId}/conversations/{conversationId}", "method" => "DELETE"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_data_accessor, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qbusiness#DeleteDataAccessor"
        operation.name = "DeleteDataAccessor"
        operation.input = DeleteDataAccessorRequest
        operation.output = DeleteDataAccessorResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#requiredActions" => ["qbusiness:GetDataAccessor"], "smithy.api#http" => {"uri" => "/applications/{applicationId}/dataaccessors/{dataAccessorId}", "method" => "DELETE"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_data_source, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qbusiness#DeleteDataSource"
        operation.name = "DeleteDataSource"
        operation.input = DeleteDataSourceRequest
        operation.output = DeleteDataSourceResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#requiredActions" => ["qbusiness:GetDataSource"], "smithy.api#http" => {"uri" => "/applications/{applicationId}/indices/{indexId}/datasources/{dataSourceId}", "method" => "DELETE"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qbusiness#DeleteGroup"
        operation.name = "DeleteGroup"
        operation.input = DeleteGroupRequest
        operation.output = DeleteGroupResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/applications/{applicationId}/indices/{indexId}/groups/{groupName}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_index, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qbusiness#DeleteIndex"
        operation.name = "DeleteIndex"
        operation.input = DeleteIndexRequest
        operation.output = DeleteIndexResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#requiredActions" => ["qbusiness:GetIndex"], "smithy.api#http" => {"uri" => "/applications/{applicationId}/indices/{indexId}", "method" => "DELETE"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_plugin, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qbusiness#DeletePlugin"
        operation.name = "DeletePlugin"
        operation.input = DeletePluginRequest
        operation.output = DeletePluginResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#requiredActions" => ["qbusiness:GetPlugin"], "smithy.api#http" => {"method" => "DELETE", "uri" => "/applications/{applicationId}/plugins/{pluginId}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_retriever, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qbusiness#DeleteRetriever"
        operation.name = "DeleteRetriever"
        operation.input = DeleteRetrieverRequest
        operation.output = DeleteRetrieverResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#requiredActions" => ["qbusiness:GetRetriever"], "smithy.api#http" => {"method" => "DELETE", "uri" => "/applications/{applicationId}/retrievers/{retrieverId}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_user, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qbusiness#DeleteUser"
        operation.name = "DeleteUser"
        operation.input = DeleteUserRequest
        operation.output = DeleteUserResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/applications/{applicationId}/users/{userId}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_web_experience, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qbusiness#DeleteWebExperience"
        operation.name = "DeleteWebExperience"
        operation.input = DeleteWebExperienceRequest
        operation.output = DeleteWebExperienceResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#requiredActions" => ["qbusiness:GetWebExperience"], "smithy.api#http" => {"uri" => "/applications/{applicationId}/experiences/{webExperienceId}", "method" => "DELETE"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:disassociate_permission, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qbusiness#DisassociatePermission"
        operation.name = "DisassociatePermission"
        operation.input = DisassociatePermissionRequest
        operation.output = DisassociatePermissionResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/applications/{applicationId}/policy/{statementId}", "method" => "DELETE"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_application, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qbusiness#GetApplication"
        operation.name = "GetApplication"
        operation.input = GetApplicationRequest
        operation.output = GetApplicationResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#requiredActions" => ["qbusiness:ListTagsForResource"], "smithy.api#http" => {"uri" => "/applications/{applicationId}", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_chat_controls_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qbusiness#GetChatControlsConfiguration"
        operation.name = "GetChatControlsConfiguration"
        operation.input = GetChatControlsConfigurationRequest
        operation.output = GetChatControlsConfigurationResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/applications/{applicationId}/chatcontrols", "method" => "GET", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::GetChatControlsConfiguration.new
      end)
      service.add_operation(:get_chat_response_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qbusiness#GetChatResponseConfiguration"
        operation.name = "GetChatResponseConfiguration"
        operation.input = GetChatResponseConfigurationRequest
        operation.output = GetChatResponseConfigurationResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"requiredActions" => ["qbusiness:ListTagsForResource"]}, "smithy.api#http" => {"method" => "GET", "uri" => "/applications/{applicationId}/chatresponseconfigurations/{chatResponseConfigurationId}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_data_accessor, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qbusiness#GetDataAccessor"
        operation.name = "GetDataAccessor"
        operation.input = GetDataAccessorRequest
        operation.output = GetDataAccessorResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#requiredActions" => ["qbusiness:ListTagsForResource"], "smithy.api#http" => {"uri" => "/applications/{applicationId}/dataaccessors/{dataAccessorId}", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_data_source, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qbusiness#GetDataSource"
        operation.name = "GetDataSource"
        operation.input = GetDataSourceRequest
        operation.output = GetDataSourceResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#requiredActions" => ["qbusiness:ListTagsForResource"], "smithy.api#http" => {"uri" => "/applications/{applicationId}/indices/{indexId}/datasources/{dataSourceId}", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_document_content, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qbusiness#GetDocumentContent"
        operation.name = "GetDocumentContent"
        operation.input = GetDocumentContentRequest
        operation.output = GetDocumentContentResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/applications/{applicationId}/index/{indexId}/documents/{documentId}/content", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qbusiness#GetGroup"
        operation.name = "GetGroup"
        operation.input = GetGroupRequest
        operation.output = GetGroupResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/applications/{applicationId}/indices/{indexId}/groups/{groupName}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_index, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qbusiness#GetIndex"
        operation.name = "GetIndex"
        operation.input = GetIndexRequest
        operation.output = GetIndexResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#requiredActions" => ["qbusiness:ListTagsForResource"], "smithy.api#http" => {"uri" => "/applications/{applicationId}/indices/{indexId}", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_media, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qbusiness#GetMedia"
        operation.name = "GetMedia"
        operation.input = GetMediaRequest
        operation.output = GetMediaResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << LicenseNotFoundException
        operation.errors << MediaTooLargeException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/applications/{applicationId}/conversations/{conversationId}/messages/{messageId}/media/{mediaId}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_plugin, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qbusiness#GetPlugin"
        operation.name = "GetPlugin"
        operation.input = GetPluginRequest
        operation.output = GetPluginResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#requiredActions" => ["qbusiness:ListTagsForResource"], "smithy.api#http" => {"method" => "GET", "uri" => "/applications/{applicationId}/plugins/{pluginId}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qbusiness#GetPolicy"
        operation.name = "GetPolicy"
        operation.input = GetPolicyRequest
        operation.output = GetPolicyResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/applications/{applicationId}/policy", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_retriever, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qbusiness#GetRetriever"
        operation.name = "GetRetriever"
        operation.input = GetRetrieverRequest
        operation.output = GetRetrieverResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#requiredActions" => ["qbusiness:ListTagsForResource"], "smithy.api#http" => {"method" => "GET", "uri" => "/applications/{applicationId}/retrievers/{retrieverId}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_user, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qbusiness#GetUser"
        operation.name = "GetUser"
        operation.input = GetUserRequest
        operation.output = GetUserResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/applications/{applicationId}/users/{userId}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_web_experience, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qbusiness#GetWebExperience"
        operation.name = "GetWebExperience"
        operation.input = GetWebExperienceRequest
        operation.output = GetWebExperienceResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#requiredActions" => ["qbusiness:ListTagsForResource"], "smithy.api#http" => {"uri" => "/applications/{applicationId}/experiences/{webExperienceId}", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_applications, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qbusiness#ListApplications"
        operation.name = "ListApplications"
        operation.input = ListApplicationsRequest
        operation.output = ListApplicationsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/applications", "method" => "GET"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListApplications.new
      end)
      service.add_operation(:list_attachments, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qbusiness#ListAttachments"
        operation.name = "ListAttachments"
        operation.input = ListAttachmentsRequest
        operation.output = ListAttachmentsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << LicenseNotFoundException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/applications/{applicationId}/attachments", "method" => "GET"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListAttachments.new
      end)
      service.add_operation(:list_chat_response_configurations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qbusiness#ListChatResponseConfigurations"
        operation.name = "ListChatResponseConfigurations"
        operation.input = ListChatResponseConfigurationsRequest
        operation.output = ListChatResponseConfigurationsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/applications/{applicationId}/chatresponseconfigurations"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListChatResponseConfigurations.new
      end)
      service.add_operation(:list_conversations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qbusiness#ListConversations"
        operation.name = "ListConversations"
        operation.input = ListConversationsRequest
        operation.output = ListConversationsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << LicenseNotFoundException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/applications/{applicationId}/conversations", "method" => "GET"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListConversations.new
      end)
      service.add_operation(:list_data_accessors, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qbusiness#ListDataAccessors"
        operation.name = "ListDataAccessors"
        operation.input = ListDataAccessorsRequest
        operation.output = ListDataAccessorsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/applications/{applicationId}/dataaccessors", "method" => "GET"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListDataAccessors.new
      end)
      service.add_operation(:list_data_source_sync_jobs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qbusiness#ListDataSourceSyncJobs"
        operation.name = "ListDataSourceSyncJobs"
        operation.input = ListDataSourceSyncJobsRequest
        operation.output = ListDataSourceSyncJobsResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/applications/{applicationId}/indices/{indexId}/datasources/{dataSourceId}/syncjobs", "method" => "GET"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListDataSourceSyncJobs.new
      end)
      service.add_operation(:list_data_sources, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qbusiness#ListDataSources"
        operation.name = "ListDataSources"
        operation.input = ListDataSourcesRequest
        operation.output = ListDataSourcesResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/applications/{applicationId}/indices/{indexId}/datasources", "method" => "GET"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListDataSources.new
      end)
      service.add_operation(:list_documents, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qbusiness#ListDocuments"
        operation.name = "ListDocuments"
        operation.input = ListDocumentsRequest
        operation.output = ListDocumentsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/applications/{applicationId}/index/{indexId}/documents", "method" => "GET"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListDocuments.new
      end)
      service.add_operation(:list_groups, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qbusiness#ListGroups"
        operation.name = "ListGroups"
        operation.input = ListGroupsRequest
        operation.output = ListGroupsResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/applications/{applicationId}/indices/{indexId}/groups"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListGroups.new
      end)
      service.add_operation(:list_indices, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qbusiness#ListIndices"
        operation.name = "ListIndices"
        operation.input = ListIndicesRequest
        operation.output = ListIndicesResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/applications/{applicationId}/indices", "method" => "GET"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListIndices.new
      end)
      service.add_operation(:list_messages, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qbusiness#ListMessages"
        operation.name = "ListMessages"
        operation.input = ListMessagesRequest
        operation.output = ListMessagesResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << LicenseNotFoundException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/applications/{applicationId}/conversations/{conversationId}", "method" => "GET"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListMessages.new
      end)
      service.add_operation(:list_plugin_actions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qbusiness#ListPluginActions"
        operation.name = "ListPluginActions"
        operation.input = ListPluginActionsRequest
        operation.output = ListPluginActionsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/applications/{applicationId}/plugins/{pluginId}/actions"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListPluginActions.new
      end)
      service.add_operation(:list_plugin_type_actions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qbusiness#ListPluginTypeActions"
        operation.name = "ListPluginTypeActions"
        operation.input = ListPluginTypeActionsRequest
        operation.output = ListPluginTypeActionsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/pluginTypes/{pluginType}/actions"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListPluginTypeActions.new
      end)
      service.add_operation(:list_plugin_type_metadata, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qbusiness#ListPluginTypeMetadata"
        operation.name = "ListPluginTypeMetadata"
        operation.input = ListPluginTypeMetadataRequest
        operation.output = ListPluginTypeMetadataResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/pluginTypeMetadata"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListPluginTypeMetadata.new
      end)
      service.add_operation(:list_plugins, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qbusiness#ListPlugins"
        operation.name = "ListPlugins"
        operation.input = ListPluginsRequest
        operation.output = ListPluginsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/applications/{applicationId}/plugins"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListPlugins.new
      end)
      service.add_operation(:list_retrievers, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qbusiness#ListRetrievers"
        operation.name = "ListRetrievers"
        operation.input = ListRetrieversRequest
        operation.output = ListRetrieversResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/applications/{applicationId}/retrievers", "method" => "GET"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListRetrievers.new
      end)
      service.add_operation(:list_subscriptions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qbusiness#ListSubscriptions"
        operation.name = "ListSubscriptions"
        operation.input = ListSubscriptionsRequest
        operation.output = ListSubscriptionsResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/applications/{applicationId}/subscriptions"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListSubscriptions.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qbusiness#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceRequest
        operation.output = ListTagsForResourceResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/v1/tags/{resourceARN}", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_web_experiences, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qbusiness#ListWebExperiences"
        operation.name = "ListWebExperiences"
        operation.input = ListWebExperiencesRequest
        operation.output = ListWebExperiencesResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/applications/{applicationId}/experiences", "method" => "GET"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListWebExperiences.new
      end)
      service.add_operation(:put_feedback, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qbusiness#PutFeedback"
        operation.name = "PutFeedback"
        operation.input = PutFeedbackRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/applications/{applicationId}/conversations/{conversationId}/messages/{messageId}/feedback", "method" => "POST"}}
      end)
      service.add_operation(:put_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qbusiness#PutGroup"
        operation.name = "PutGroup"
        operation.input = PutGroupRequest
        operation.output = PutGroupResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/applications/{applicationId}/indices/{indexId}/groups"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:search_relevant_content, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qbusiness#SearchRelevantContent"
        operation.name = "SearchRelevantContent"
        operation.input = SearchRelevantContentRequest
        operation.output = SearchRelevantContentResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << LicenseNotFoundException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/applications/{applicationId}/relevant-content", "method" => "POST"}}
        operation[:paginator] = Paginators::SearchRelevantContent.new
      end)
      service.add_operation(:start_data_source_sync_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qbusiness#StartDataSourceSyncJob"
        operation.name = "StartDataSourceSyncJob"
        operation.input = StartDataSourceSyncJobRequest
        operation.output = StartDataSourceSyncJobResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/applications/{applicationId}/indices/{indexId}/datasources/{dataSourceId}/startsync", "method" => "POST"}}
      end)
      service.add_operation(:stop_data_source_sync_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qbusiness#StopDataSourceSyncJob"
        operation.name = "StopDataSourceSyncJob"
        operation.input = StopDataSourceSyncJobRequest
        operation.output = StopDataSourceSyncJobResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/applications/{applicationId}/indices/{indexId}/datasources/{dataSourceId}/stopsync", "method" => "POST"}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qbusiness#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceRequest
        operation.output = TagResourceResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["aws:RequestTag/${TagKey}", "aws:TagKeys"], "smithy.api#http" => {"uri" => "/v1/tags/{resourceARN}", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qbusiness#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceRequest
        operation.output = UntagResourceResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["aws:TagKeys"], "smithy.api#http" => {"uri" => "/v1/tags/{resourceARN}", "method" => "DELETE"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_application, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qbusiness#UpdateApplication"
        operation.name = "UpdateApplication"
        operation.input = UpdateApplicationRequest
        operation.output = UpdateApplicationResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#requiredActions" => ["qbusiness:GetApplication", "qbusiness:TagResource", "qbusiness:UntagResource", "qbusiness:ListTagsForResource", "iam:PassRole", "sso:CreateApplication", "sso:PutApplicationAuthenticationMethod", "sso:PutApplicationAccessScope", "sso:PutApplicationGrant", "sso:DeleteApplication", "sso:DescribeInstance"], "smithy.api#http" => {"uri" => "/applications/{applicationId}", "method" => "PUT"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_chat_controls_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qbusiness#UpdateChatControlsConfiguration"
        operation.name = "UpdateChatControlsConfiguration"
        operation.input = UpdateChatControlsConfigurationRequest
        operation.output = UpdateChatControlsConfigurationResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/applications/{applicationId}/chatcontrols", "method" => "PATCH", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_chat_response_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qbusiness#UpdateChatResponseConfiguration"
        operation.name = "UpdateChatResponseConfiguration"
        operation.input = UpdateChatResponseConfigurationRequest
        operation.output = UpdateChatResponseConfigurationResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"requiredActions" => ["qbusiness:GetChatResponseConfiguration", "qbusiness:TagResource", "qbusiness:UntagResource", "qbusiness:ListTagsForResource"]}, "smithy.api#http" => {"method" => "PUT", "uri" => "/applications/{applicationId}/chatresponseconfigurations/{chatResponseConfigurationId}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_data_accessor, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qbusiness#UpdateDataAccessor"
        operation.name = "UpdateDataAccessor"
        operation.input = UpdateDataAccessorRequest
        operation.output = UpdateDataAccessorResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#requiredActions" => ["qbusiness:GetDataAccessor", "qbusiness:TagResource", "qbusiness:UntagResource", "qbusiness:ListTagsForResource"], "smithy.api#http" => {"uri" => "/applications/{applicationId}/dataaccessors/{dataAccessorId}", "method" => "PUT"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_data_source, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qbusiness#UpdateDataSource"
        operation.name = "UpdateDataSource"
        operation.input = UpdateDataSourceRequest
        operation.output = UpdateDataSourceResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#requiredActions" => ["qbusiness:GetDataSource", "qbusiness:TagResource", "qbusiness:UntagResource", "qbusiness:ListTagsForResource", "iam:PassRole"], "smithy.api#http" => {"uri" => "/applications/{applicationId}/indices/{indexId}/datasources/{dataSourceId}", "method" => "PUT"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_index, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qbusiness#UpdateIndex"
        operation.name = "UpdateIndex"
        operation.input = UpdateIndexRequest
        operation.output = UpdateIndexResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#requiredActions" => ["qbusiness:GetIndex", "qbusiness:TagResource", "qbusiness:UntagResource", "qbusiness:ListTagsForResource"], "smithy.api#http" => {"uri" => "/applications/{applicationId}/indices/{indexId}", "method" => "PUT"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_plugin, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qbusiness#UpdatePlugin"
        operation.name = "UpdatePlugin"
        operation.input = UpdatePluginRequest
        operation.output = UpdatePluginResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#requiredActions" => ["qbusiness:GetPlugin", "qbusiness:TagResource", "qbusiness:UntagResource", "qbusiness:ListTagsForResource", "iam:PassRole"], "smithy.api#http" => {"method" => "PUT", "uri" => "/applications/{applicationId}/plugins/{pluginId}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_retriever, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qbusiness#UpdateRetriever"
        operation.name = "UpdateRetriever"
        operation.input = UpdateRetrieverRequest
        operation.output = UpdateRetrieverResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#requiredActions" => ["qbusiness:TagResource", "qbusiness:UntagResource", "qbusiness:ListTagsForResource", "qbusiness:GetRetriever", "iam:PassRole"], "smithy.api#http" => {"method" => "PUT", "uri" => "/applications/{applicationId}/retrievers/{retrieverId}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_subscription, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qbusiness#UpdateSubscription"
        operation.name = "UpdateSubscription"
        operation.input = UpdateSubscriptionRequest
        operation.output = UpdateSubscriptionResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/applications/{applicationId}/subscriptions/{subscriptionId}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_user, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qbusiness#UpdateUser"
        operation.name = "UpdateUser"
        operation.input = UpdateUserRequest
        operation.output = UpdateUserResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/applications/{applicationId}/users/{userId}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_web_experience, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qbusiness#UpdateWebExperience"
        operation.name = "UpdateWebExperience"
        operation.input = UpdateWebExperienceRequest
        operation.output = UpdateWebExperienceResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#requiredActions" => ["qbusiness:GetWebExperience", "qbusiness:TagResource", "qbusiness:UntagResource", "qbusiness:ListTagsForResource", "iam:PassRole", "sso:PutApplicationGrant", "sso:UpdateApplication"], "smithy.api#http" => {"uri" => "/applications/{applicationId}/experiences/{webExperienceId}", "method" => "PUT"}, "smithy.api#idempotent" => {}}
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
