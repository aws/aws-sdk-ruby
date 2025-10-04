# frozen_string_literal: true

# This is generated code!

module Aws::QConnect
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AIAgentAssociationConfigurationType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#AIAgentAssociationConfigurationType', name: 'AIAgentAssociationConfigurationType', traits: {"smithy.api#enum" => [{"value" => "KNOWLEDGE_BASE", "name" => "KNOWLEDGE_BASE"}]})
    AIAgentConfiguration = ::Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.qconnect#AIAgentConfiguration', name: 'AIAgentConfiguration')
    AIAgentConfigurationData = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#AIAgentConfigurationData', name: 'AIAgentConfigurationData')
    AIAgentConfigurationMap = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.qconnect#AIAgentConfigurationMap', name: 'AIAgentConfigurationMap')
    AIAgentData = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#AIAgentData', name: 'AIAgentData', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.qconnect#AIAgent"}]})
    AIAgentSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#AIAgentSummary', name: 'AIAgentSummary', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.qconnect#AIAgent"}]})
    AIAgentSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qconnect#AIAgentSummaryList', name: 'AIAgentSummaryList')
    AIAgentType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#AIAgentType', name: 'AIAgentType', traits: {"smithy.api#enum" => [{"value" => "MANUAL_SEARCH", "name" => "MANUAL_SEARCH"}, {"value" => "ANSWER_RECOMMENDATION", "name" => "ANSWER_RECOMMENDATION"}, {"value" => "SELF_SERVICE", "name" => "SELF_SERVICE"}, {"value" => "EMAIL_RESPONSE", "name" => "EMAIL_RESPONSE"}, {"value" => "EMAIL_OVERVIEW", "name" => "EMAIL_OVERVIEW"}, {"value" => "EMAIL_GENERATIVE_ANSWER", "name" => "EMAIL_GENERATIVE_ANSWER"}]})
    AIAgentVersionSummariesList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qconnect#AIAgentVersionSummariesList', name: 'AIAgentVersionSummariesList')
    AIAgentVersionSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#AIAgentVersionSummary', name: 'AIAgentVersionSummary')
    AIGuardrailBlockedMessaging = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#AIGuardrailBlockedMessaging', name: 'AIGuardrailBlockedMessaging', traits: {"smithy.api#length" => {"min" => 1, "max" => 500}, "smithy.api#sensitive" => {}})
    AIGuardrailContentPolicyConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#AIGuardrailContentPolicyConfig', name: 'AIGuardrailContentPolicyConfig')
    AIGuardrailContextualGroundingPolicyConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#AIGuardrailContextualGroundingPolicyConfig', name: 'AIGuardrailContextualGroundingPolicyConfig')
    AIGuardrailData = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#AIGuardrailData', name: 'AIGuardrailData', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.qconnect#AIGuardrail"}]})
    AIGuardrailDescription = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#AIGuardrailDescription', name: 'AIGuardrailDescription', traits: {"smithy.api#length" => {"min" => 1, "max" => 200}, "smithy.api#sensitive" => {}})
    AIGuardrailSensitiveInformationPolicyConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#AIGuardrailSensitiveInformationPolicyConfig', name: 'AIGuardrailSensitiveInformationPolicyConfig')
    AIGuardrailSummariesList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qconnect#AIGuardrailSummariesList', name: 'AIGuardrailSummariesList')
    AIGuardrailSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#AIGuardrailSummary', name: 'AIGuardrailSummary', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.qconnect#AIGuardrail"}]})
    AIGuardrailTopicPolicyConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#AIGuardrailTopicPolicyConfig', name: 'AIGuardrailTopicPolicyConfig')
    AIGuardrailVersionSummariesList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qconnect#AIGuardrailVersionSummariesList', name: 'AIGuardrailVersionSummariesList')
    AIGuardrailVersionSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#AIGuardrailVersionSummary', name: 'AIGuardrailVersionSummary')
    AIGuardrailWordPolicyConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#AIGuardrailWordPolicyConfig', name: 'AIGuardrailWordPolicyConfig')
    AIPromptAPIFormat = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#AIPromptAPIFormat', name: 'AIPromptAPIFormat', traits: {"smithy.api#enum" => [{"value" => "ANTHROPIC_CLAUDE_MESSAGES", "name" => "ANTHROPIC_CLAUDE_MESSAGES"}, {"value" => "ANTHROPIC_CLAUDE_TEXT_COMPLETIONS", "name" => "ANTHROPIC_CLAUDE_TEXT_COMPLETIONS"}, {"value" => "MESSAGES", "name" => "MESSAGES"}, {"value" => "TEXT_COMPLETIONS", "name" => "TEXT_COMPLETIONS"}]})
    AIPromptData = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#AIPromptData', name: 'AIPromptData', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.qconnect#AIPrompt"}]})
    AIPromptModelIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#AIPromptModelIdentifier', name: 'AIPromptModelIdentifier', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    AIPromptSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#AIPromptSummary', name: 'AIPromptSummary', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.qconnect#AIPrompt"}]})
    AIPromptSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qconnect#AIPromptSummaryList', name: 'AIPromptSummaryList')
    AIPromptTemplateConfiguration = ::Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.qconnect#AIPromptTemplateConfiguration', name: 'AIPromptTemplateConfiguration')
    AIPromptTemplateType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#AIPromptTemplateType', name: 'AIPromptTemplateType', traits: {"smithy.api#enum" => [{"value" => "TEXT", "name" => "TEXT"}]})
    AIPromptType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#AIPromptType', name: 'AIPromptType', traits: {"smithy.api#enum" => [{"value" => "ANSWER_GENERATION", "name" => "ANSWER_GENERATION"}, {"value" => "INTENT_LABELING_GENERATION", "name" => "INTENT_LABELING_GENERATION"}, {"value" => "QUERY_REFORMULATION", "name" => "QUERY_REFORMULATION"}, {"value" => "SELF_SERVICE_PRE_PROCESSING", "name" => "SELF_SERVICE_PRE_PROCESSING"}, {"value" => "SELF_SERVICE_ANSWER_GENERATION", "name" => "SELF_SERVICE_ANSWER_GENERATION"}, {"value" => "EMAIL_RESPONSE", "name" => "EMAIL_RESPONSE"}, {"value" => "EMAIL_OVERVIEW", "name" => "EMAIL_OVERVIEW"}, {"value" => "EMAIL_GENERATIVE_ANSWER", "name" => "EMAIL_GENERATIVE_ANSWER"}, {"value" => "EMAIL_QUERY_REFORMULATION", "name" => "EMAIL_QUERY_REFORMULATION"}]})
    AIPromptVersionSummariesList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qconnect#AIPromptVersionSummariesList', name: 'AIPromptVersionSummariesList')
    AIPromptVersionSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#AIPromptVersionSummary', name: 'AIPromptVersionSummary')
    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#AccessDeniedException', name: 'AccessDeniedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    ActivateMessageTemplateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#ActivateMessageTemplateRequest', name: 'ActivateMessageTemplateRequest')
    ActivateMessageTemplateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#ActivateMessageTemplateResponse', name: 'ActivateMessageTemplateResponse')
    AgentAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#AgentAttributes', name: 'AgentAttributes')
    AmazonConnectGuideAssociationData = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#AmazonConnectGuideAssociationData', name: 'AmazonConnectGuideAssociationData')
    AndConditions = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qconnect#AndConditions', name: 'AndConditions')
    AnswerRecommendationAIAgentConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#AnswerRecommendationAIAgentConfiguration', name: 'AnswerRecommendationAIAgentConfiguration')
    AppIntegrationsConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#AppIntegrationsConfiguration', name: 'AppIntegrationsConfiguration')
    Arn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#Arn', name: 'Arn', traits: {"smithy.api#pattern" => "^arn:[a-z-]*?:wisdom:[a-z0-9-]*?:[0-9]{12}:[a-z-]*?/[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}(?:/[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}){0,2}$"})
    ArnWithQualifier = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#ArnWithQualifier', name: 'ArnWithQualifier', traits: {"smithy.api#pattern" => "^arn:[a-z-]*?:wisdom:[a-z0-9-]*?:[0-9]{12}:[a-z-]*?/[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}(?:/[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}){0,2}(:[A-Z0-9_$]+){0,1}$"})
    AssistantAssociationData = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#AssistantAssociationData', name: 'AssistantAssociationData', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.qconnect#AssistantAssociation"}]})
    AssistantAssociationInputData = ::Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.qconnect#AssistantAssociationInputData', name: 'AssistantAssociationInputData')
    AssistantAssociationOutputData = ::Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.qconnect#AssistantAssociationOutputData', name: 'AssistantAssociationOutputData')
    AssistantAssociationSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#AssistantAssociationSummary', name: 'AssistantAssociationSummary', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.qconnect#AssistantAssociation"}]})
    AssistantAssociationSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qconnect#AssistantAssociationSummaryList', name: 'AssistantAssociationSummaryList')
    AssistantCapabilityConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#AssistantCapabilityConfiguration', name: 'AssistantCapabilityConfiguration')
    AssistantCapabilityType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#AssistantCapabilityType', name: 'AssistantCapabilityType', traits: {"smithy.api#enum" => [{"value" => "V1", "name" => "V1"}, {"value" => "V2", "name" => "V2"}]})
    AssistantData = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#AssistantData', name: 'AssistantData')
    AssistantIntegrationConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#AssistantIntegrationConfiguration', name: 'AssistantIntegrationConfiguration')
    AssistantList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qconnect#AssistantList', name: 'AssistantList')
    AssistantStatus = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#AssistantStatus', name: 'AssistantStatus', traits: {"smithy.api#enum" => [{"value" => "CREATE_IN_PROGRESS", "name" => "CREATE_IN_PROGRESS"}, {"value" => "CREATE_FAILED", "name" => "CREATE_FAILED"}, {"value" => "ACTIVE", "name" => "ACTIVE"}, {"value" => "DELETE_IN_PROGRESS", "name" => "DELETE_IN_PROGRESS"}, {"value" => "DELETE_FAILED", "name" => "DELETE_FAILED"}, {"value" => "DELETED", "name" => "DELETED"}]})
    AssistantSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#AssistantSummary', name: 'AssistantSummary')
    AssistantType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#AssistantType', name: 'AssistantType', traits: {"smithy.api#enum" => [{"value" => "AGENT", "name" => "AGENT"}]})
    AssociationConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#AssociationConfiguration', name: 'AssociationConfiguration')
    AssociationConfigurationData = ::Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.qconnect#AssociationConfigurationData', name: 'AssociationConfigurationData')
    AssociationConfigurationList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qconnect#AssociationConfigurationList', name: 'AssociationConfigurationList')
    AssociationType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#AssociationType', name: 'AssociationType', traits: {"smithy.api#enum" => [{"value" => "KNOWLEDGE_BASE", "name" => "KNOWLEDGE_BASE"}]})
    AttachmentFileName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#AttachmentFileName', name: 'AttachmentFileName', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[\\p{L}\\p{M}\\p{N}_\\s&@()+,;=\\-]+\\.[A-Za-z0-9]+$", "smithy.api#sensitive" => {}})
    BedrockFoundationModelConfigurationForParsing = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#BedrockFoundationModelConfigurationForParsing', name: 'BedrockFoundationModelConfigurationForParsing')
    BedrockModelArnForParsing = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#BedrockModelArnForParsing', name: 'BedrockModelArnForParsing', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^arn:aws(-[^:]+)?:bedrock:[a-z0-9-]{1,20}::foundation-model/anthropic.claude-3-haiku-20240307-v1:0$"})
    Channel = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#Channel', name: 'Channel', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}, "smithy.api#sensitive" => {}})
    ChannelSubtype = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#ChannelSubtype', name: 'ChannelSubtype', traits: {"smithy.api#enum" => [{"value" => "EMAIL", "name" => "EMAIL"}, {"value" => "SMS", "name" => "SMS"}]})
    Channels = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qconnect#Channels', name: 'Channels', traits: {"smithy.api#uniqueItems" => {}})
    ChunkingConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#ChunkingConfiguration', name: 'ChunkingConfiguration')
    ChunkingStrategy = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#ChunkingStrategy', name: 'ChunkingStrategy', traits: {"smithy.api#enum" => [{"value" => "FIXED_SIZE", "name" => "FIXED_SIZE"}, {"value" => "NONE", "name" => "NONE"}, {"value" => "HIERARCHICAL", "name" => "HIERARCHICAL"}, {"value" => "SEMANTIC", "name" => "SEMANTIC"}]})
    CitationSpan = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#CitationSpan', name: 'CitationSpan')
    CitationSpanOffset = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.qconnect#CitationSpanOffset', name: 'CitationSpanOffset', traits: {"smithy.api#default" => 0})
    ClientToken = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#ClientToken', name: 'ClientToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 4096}})
    Configuration = ::Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.qconnect#Configuration', name: 'Configuration')
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#ConflictException', name: 'ConflictException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ConnectConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#ConnectConfiguration', name: 'ConnectConfiguration')
    ContactAttributeKey = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#ContactAttributeKey', name: 'ContactAttributeKey')
    ContactAttributeKeys = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qconnect#ContactAttributeKeys', name: 'ContactAttributeKeys', traits: {"smithy.api#sensitive" => {}, "smithy.api#uniqueItems" => {}})
    ContactAttributeValue = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#ContactAttributeValue', name: 'ContactAttributeValue')
    ContactAttributes = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.qconnect#ContactAttributes', name: 'ContactAttributes', traits: {"smithy.api#sensitive" => {}})
    ContentAssociationContents = ::Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.qconnect#ContentAssociationContents', name: 'ContentAssociationContents')
    ContentAssociationData = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#ContentAssociationData', name: 'ContentAssociationData', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.qconnect#ContentAssociation"}]})
    ContentAssociationSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#ContentAssociationSummary', name: 'ContentAssociationSummary', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.qconnect#ContentAssociation"}]})
    ContentAssociationSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qconnect#ContentAssociationSummaryList', name: 'ContentAssociationSummaryList')
    ContentAssociationType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#ContentAssociationType', name: 'ContentAssociationType', traits: {"smithy.api#enum" => [{"value" => "AMAZON_CONNECT_GUIDE", "name" => "AMAZON_CONNECT_GUIDE"}]})
    ContentData = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#ContentData', name: 'ContentData', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.qconnect#Content"}, {"resource" => "com.amazonaws.qconnect#KnowledgeBase"}]})
    ContentDataDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#ContentDataDetails', name: 'ContentDataDetails')
    ContentDisposition = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#ContentDisposition', name: 'ContentDisposition', traits: {"smithy.api#enum" => [{"value" => "ATTACHMENT", "name" => "ATTACHMENT"}]})
    ContentFeedbackData = ::Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.qconnect#ContentFeedbackData', name: 'ContentFeedbackData')
    ContentMetadata = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.qconnect#ContentMetadata', name: 'ContentMetadata', traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    ContentReference = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#ContentReference', name: 'ContentReference')
    ContentStatus = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#ContentStatus', name: 'ContentStatus', traits: {"smithy.api#enum" => [{"value" => "CREATE_IN_PROGRESS", "name" => "CREATE_IN_PROGRESS"}, {"value" => "CREATE_FAILED", "name" => "CREATE_FAILED"}, {"value" => "ACTIVE", "name" => "ACTIVE"}, {"value" => "DELETE_IN_PROGRESS", "name" => "DELETE_IN_PROGRESS"}, {"value" => "DELETE_FAILED", "name" => "DELETE_FAILED"}, {"value" => "DELETED", "name" => "DELETED"}, {"value" => "UPDATE_FAILED", "name" => "UPDATE_FAILED"}]})
    ContentSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#ContentSummary', name: 'ContentSummary', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.qconnect#Content"}, {"resource" => "com.amazonaws.qconnect#KnowledgeBase"}]})
    ContentSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qconnect#ContentSummaryList', name: 'ContentSummaryList')
    ContentTitle = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#ContentTitle', name: 'ContentTitle', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    ContentType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#ContentType', name: 'ContentType', traits: {"smithy.api#pattern" => "^(text/(plain|html|csv))|(application/(pdf|vnd\\.openxmlformats-officedocument\\.wordprocessingml\\.document))|(application/x\\.wisdom-json;source=(salesforce|servicenow|zendesk))$"})
    ConversationContext = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#ConversationContext', name: 'ConversationContext')
    ConversationState = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#ConversationState', name: 'ConversationState')
    ConversationStatus = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#ConversationStatus', name: 'ConversationStatus', traits: {"smithy.api#enum" => [{"value" => "CLOSED", "name" => "CLOSED"}, {"value" => "READY", "name" => "READY"}, {"value" => "PROCESSING", "name" => "PROCESSING"}]})
    ConversationStatusReason = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#ConversationStatusReason', name: 'ConversationStatusReason', traits: {"smithy.api#enum" => [{"value" => "SUCCESS", "name" => "SUCCESS"}, {"value" => "FAILED", "name" => "FAILED"}, {"value" => "REJECTED", "name" => "REJECTED"}]})
    CreateAIAgentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#CreateAIAgentRequest', name: 'CreateAIAgentRequest')
    CreateAIAgentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#CreateAIAgentResponse', name: 'CreateAIAgentResponse')
    CreateAIAgentVersionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#CreateAIAgentVersionRequest', name: 'CreateAIAgentVersionRequest')
    CreateAIAgentVersionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#CreateAIAgentVersionResponse', name: 'CreateAIAgentVersionResponse')
    CreateAIGuardrailRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#CreateAIGuardrailRequest', name: 'CreateAIGuardrailRequest')
    CreateAIGuardrailResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#CreateAIGuardrailResponse', name: 'CreateAIGuardrailResponse')
    CreateAIGuardrailVersionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#CreateAIGuardrailVersionRequest', name: 'CreateAIGuardrailVersionRequest')
    CreateAIGuardrailVersionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#CreateAIGuardrailVersionResponse', name: 'CreateAIGuardrailVersionResponse')
    CreateAIPromptRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#CreateAIPromptRequest', name: 'CreateAIPromptRequest')
    CreateAIPromptResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#CreateAIPromptResponse', name: 'CreateAIPromptResponse')
    CreateAIPromptVersionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#CreateAIPromptVersionRequest', name: 'CreateAIPromptVersionRequest')
    CreateAIPromptVersionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#CreateAIPromptVersionResponse', name: 'CreateAIPromptVersionResponse')
    CreateAssistantAssociationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#CreateAssistantAssociationInput', name: 'CreateAssistantAssociationInput')
    CreateAssistantAssociationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#CreateAssistantAssociationOutput', name: 'CreateAssistantAssociationOutput')
    CreateAssistantInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#CreateAssistantInput', name: 'CreateAssistantInput')
    CreateAssistantOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#CreateAssistantOutput', name: 'CreateAssistantOutput')
    CreateContentAssociationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#CreateContentAssociationRequest', name: 'CreateContentAssociationRequest')
    CreateContentAssociationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#CreateContentAssociationResponse', name: 'CreateContentAssociationResponse')
    CreateContentInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#CreateContentInput', name: 'CreateContentInput')
    CreateContentOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#CreateContentOutput', name: 'CreateContentOutput')
    CreateKnowledgeBaseInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#CreateKnowledgeBaseInput', name: 'CreateKnowledgeBaseInput')
    CreateKnowledgeBaseOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#CreateKnowledgeBaseOutput', name: 'CreateKnowledgeBaseOutput')
    CreateMessageTemplateAttachmentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#CreateMessageTemplateAttachmentRequest', name: 'CreateMessageTemplateAttachmentRequest')
    CreateMessageTemplateAttachmentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#CreateMessageTemplateAttachmentResponse', name: 'CreateMessageTemplateAttachmentResponse')
    CreateMessageTemplateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#CreateMessageTemplateRequest', name: 'CreateMessageTemplateRequest')
    CreateMessageTemplateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#CreateMessageTemplateResponse', name: 'CreateMessageTemplateResponse')
    CreateMessageTemplateVersionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#CreateMessageTemplateVersionRequest', name: 'CreateMessageTemplateVersionRequest')
    CreateMessageTemplateVersionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#CreateMessageTemplateVersionResponse', name: 'CreateMessageTemplateVersionResponse')
    CreateQuickResponseRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#CreateQuickResponseRequest', name: 'CreateQuickResponseRequest')
    CreateQuickResponseResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#CreateQuickResponseResponse', name: 'CreateQuickResponseResponse')
    CreateSessionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#CreateSessionInput', name: 'CreateSessionInput')
    CreateSessionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#CreateSessionOutput', name: 'CreateSessionOutput')
    CustomAttributes = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.qconnect#CustomAttributes', name: 'CustomAttributes', traits: {"smithy.api#sensitive" => {}})
    CustomerProfileAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#CustomerProfileAttributes', name: 'CustomerProfileAttributes')
    DataDetails = ::Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.qconnect#DataDetails', name: 'DataDetails')
    DataReference = ::Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.qconnect#DataReference', name: 'DataReference')
    DataSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#DataSummary', name: 'DataSummary')
    DataSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qconnect#DataSummaryList', name: 'DataSummaryList')
    DeactivateMessageTemplateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#DeactivateMessageTemplateRequest', name: 'DeactivateMessageTemplateRequest')
    DeactivateMessageTemplateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#DeactivateMessageTemplateResponse', name: 'DeactivateMessageTemplateResponse')
    DeleteAIAgentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#DeleteAIAgentRequest', name: 'DeleteAIAgentRequest')
    DeleteAIAgentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#DeleteAIAgentResponse', name: 'DeleteAIAgentResponse')
    DeleteAIAgentVersionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#DeleteAIAgentVersionRequest', name: 'DeleteAIAgentVersionRequest')
    DeleteAIAgentVersionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#DeleteAIAgentVersionResponse', name: 'DeleteAIAgentVersionResponse')
    DeleteAIGuardrailRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#DeleteAIGuardrailRequest', name: 'DeleteAIGuardrailRequest')
    DeleteAIGuardrailResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#DeleteAIGuardrailResponse', name: 'DeleteAIGuardrailResponse')
    DeleteAIGuardrailVersionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#DeleteAIGuardrailVersionRequest', name: 'DeleteAIGuardrailVersionRequest')
    DeleteAIGuardrailVersionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#DeleteAIGuardrailVersionResponse', name: 'DeleteAIGuardrailVersionResponse')
    DeleteAIPromptRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#DeleteAIPromptRequest', name: 'DeleteAIPromptRequest')
    DeleteAIPromptResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#DeleteAIPromptResponse', name: 'DeleteAIPromptResponse')
    DeleteAIPromptVersionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#DeleteAIPromptVersionRequest', name: 'DeleteAIPromptVersionRequest')
    DeleteAIPromptVersionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#DeleteAIPromptVersionResponse', name: 'DeleteAIPromptVersionResponse')
    DeleteAssistantAssociationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#DeleteAssistantAssociationInput', name: 'DeleteAssistantAssociationInput')
    DeleteAssistantAssociationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#DeleteAssistantAssociationOutput', name: 'DeleteAssistantAssociationOutput')
    DeleteAssistantInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#DeleteAssistantInput', name: 'DeleteAssistantInput')
    DeleteAssistantOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#DeleteAssistantOutput', name: 'DeleteAssistantOutput')
    DeleteContentAssociationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#DeleteContentAssociationRequest', name: 'DeleteContentAssociationRequest')
    DeleteContentAssociationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#DeleteContentAssociationResponse', name: 'DeleteContentAssociationResponse')
    DeleteContentInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#DeleteContentInput', name: 'DeleteContentInput')
    DeleteContentOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#DeleteContentOutput', name: 'DeleteContentOutput')
    DeleteImportJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#DeleteImportJobRequest', name: 'DeleteImportJobRequest')
    DeleteImportJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#DeleteImportJobResponse', name: 'DeleteImportJobResponse')
    DeleteKnowledgeBaseInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#DeleteKnowledgeBaseInput', name: 'DeleteKnowledgeBaseInput')
    DeleteKnowledgeBaseOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#DeleteKnowledgeBaseOutput', name: 'DeleteKnowledgeBaseOutput')
    DeleteMessageTemplateAttachmentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#DeleteMessageTemplateAttachmentRequest', name: 'DeleteMessageTemplateAttachmentRequest')
    DeleteMessageTemplateAttachmentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#DeleteMessageTemplateAttachmentResponse', name: 'DeleteMessageTemplateAttachmentResponse')
    DeleteMessageTemplateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#DeleteMessageTemplateRequest', name: 'DeleteMessageTemplateRequest')
    DeleteMessageTemplateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#DeleteMessageTemplateResponse', name: 'DeleteMessageTemplateResponse')
    DeleteQuickResponseRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#DeleteQuickResponseRequest', name: 'DeleteQuickResponseRequest')
    DeleteQuickResponseResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#DeleteQuickResponseResponse', name: 'DeleteQuickResponseResponse')
    DependencyFailedException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#DependencyFailedException', name: 'DependencyFailedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 424})
    Description = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#Description', name: 'Description', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z0-9\\s_.,-]+"})
    Document = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#Document', name: 'Document')
    DocumentText = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#DocumentText', name: 'DocumentText')
    EmailGenerativeAnswerAIAgentConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#EmailGenerativeAnswerAIAgentConfiguration', name: 'EmailGenerativeAnswerAIAgentConfiguration')
    EmailGenerativeAnswerChunkDataDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#EmailGenerativeAnswerChunkDataDetails', name: 'EmailGenerativeAnswerChunkDataDetails')
    EmailHeader = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#EmailHeader', name: 'EmailHeader')
    EmailHeaderKey = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#EmailHeaderKey', name: 'EmailHeaderKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 126}, "smithy.api#pattern" => "^[!-9;-@A-~]+$"})
    EmailHeaderValue = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#EmailHeaderValue', name: 'EmailHeaderValue', traits: {"smithy.api#length" => {"min" => 1, "max" => 870}, "smithy.api#pattern" => "[ -~]*", "smithy.api#sensitive" => {}})
    EmailHeaders = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qconnect#EmailHeaders', name: 'EmailHeaders', traits: {"smithy.api#length" => {"min" => 0, "max" => 15}})
    EmailMessageTemplateContent = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#EmailMessageTemplateContent', name: 'EmailMessageTemplateContent')
    EmailMessageTemplateContentBody = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#EmailMessageTemplateContentBody', name: 'EmailMessageTemplateContentBody')
    EmailOverviewAIAgentConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#EmailOverviewAIAgentConfiguration', name: 'EmailOverviewAIAgentConfiguration')
    EmailOverviewChunkDataDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#EmailOverviewChunkDataDetails', name: 'EmailOverviewChunkDataDetails')
    EmailResponseAIAgentConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#EmailResponseAIAgentConfiguration', name: 'EmailResponseAIAgentConfiguration')
    EmailResponseChunkDataDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#EmailResponseChunkDataDetails', name: 'EmailResponseChunkDataDetails')
    ExtendedMessageTemplateData = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#ExtendedMessageTemplateData', name: 'ExtendedMessageTemplateData')
    ExternalSource = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#ExternalSource', name: 'ExternalSource', traits: {"smithy.api#enum" => [{"value" => "AMAZON_CONNECT", "name" => "AMAZON_CONNECT"}]})
    ExternalSourceConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#ExternalSourceConfiguration', name: 'ExternalSourceConfiguration')
    FailureReason = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qconnect#FailureReason', name: 'FailureReason')
    Filter = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#Filter', name: 'Filter')
    FilterField = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#FilterField', name: 'FilterField', traits: {"smithy.api#enum" => [{"value" => "NAME", "name" => "NAME"}]})
    FilterList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qconnect#FilterList', name: 'FilterList')
    FilterOperator = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#FilterOperator', name: 'FilterOperator', traits: {"smithy.api#enum" => [{"value" => "EQUALS", "name" => "EQUALS"}]})
    FixedSizeChunkingConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#FixedSizeChunkingConfiguration', name: 'FixedSizeChunkingConfiguration')
    GenerativeChunkDataDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#GenerativeChunkDataDetails', name: 'GenerativeChunkDataDetails')
    GenerativeContentFeedbackData = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#GenerativeContentFeedbackData', name: 'GenerativeContentFeedbackData')
    GenerativeDataDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#GenerativeDataDetails', name: 'GenerativeDataDetails')
    GenerativeReference = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#GenerativeReference', name: 'GenerativeReference')
    GenericArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#GenericArn', name: 'GenericArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^arn:[a-z-]+?:[a-z-]+?:[a-z0-9-]*?:([0-9]{12})?:[a-zA-Z0-9-:/]+$"})
    GetAIAgentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#GetAIAgentRequest', name: 'GetAIAgentRequest')
    GetAIAgentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#GetAIAgentResponse', name: 'GetAIAgentResponse')
    GetAIGuardrailRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#GetAIGuardrailRequest', name: 'GetAIGuardrailRequest')
    GetAIGuardrailResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#GetAIGuardrailResponse', name: 'GetAIGuardrailResponse')
    GetAIPromptRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#GetAIPromptRequest', name: 'GetAIPromptRequest')
    GetAIPromptResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#GetAIPromptResponse', name: 'GetAIPromptResponse')
    GetAssistantAssociationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#GetAssistantAssociationInput', name: 'GetAssistantAssociationInput')
    GetAssistantAssociationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#GetAssistantAssociationOutput', name: 'GetAssistantAssociationOutput')
    GetAssistantInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#GetAssistantInput', name: 'GetAssistantInput')
    GetAssistantOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#GetAssistantOutput', name: 'GetAssistantOutput')
    GetContentAssociationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#GetContentAssociationRequest', name: 'GetContentAssociationRequest')
    GetContentAssociationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#GetContentAssociationResponse', name: 'GetContentAssociationResponse')
    GetContentInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#GetContentInput', name: 'GetContentInput')
    GetContentOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#GetContentOutput', name: 'GetContentOutput')
    GetContentSummaryInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#GetContentSummaryInput', name: 'GetContentSummaryInput')
    GetContentSummaryOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#GetContentSummaryOutput', name: 'GetContentSummaryOutput')
    GetImportJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#GetImportJobRequest', name: 'GetImportJobRequest')
    GetImportJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#GetImportJobResponse', name: 'GetImportJobResponse')
    GetKnowledgeBaseInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#GetKnowledgeBaseInput', name: 'GetKnowledgeBaseInput')
    GetKnowledgeBaseOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#GetKnowledgeBaseOutput', name: 'GetKnowledgeBaseOutput')
    GetMessageTemplateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#GetMessageTemplateRequest', name: 'GetMessageTemplateRequest')
    GetMessageTemplateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#GetMessageTemplateResponse', name: 'GetMessageTemplateResponse')
    GetNextMessageRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#GetNextMessageRequest', name: 'GetNextMessageRequest')
    GetNextMessageResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#GetNextMessageResponse', name: 'GetNextMessageResponse')
    GetQuickResponseRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#GetQuickResponseRequest', name: 'GetQuickResponseRequest')
    GetQuickResponseResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#GetQuickResponseResponse', name: 'GetQuickResponseResponse')
    GetRecommendationsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#GetRecommendationsInput', name: 'GetRecommendationsInput')
    GetRecommendationsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#GetRecommendationsOutput', name: 'GetRecommendationsOutput')
    GetSessionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#GetSessionInput', name: 'GetSessionInput')
    GetSessionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#GetSessionOutput', name: 'GetSessionOutput')
    GroupingConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#GroupingConfiguration', name: 'GroupingConfiguration')
    GroupingCriteria = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#GroupingCriteria', name: 'GroupingCriteria', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#sensitive" => {}})
    GroupingValue = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#GroupingValue', name: 'GroupingValue', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#sensitive" => {}})
    GroupingValues = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qconnect#GroupingValues', name: 'GroupingValues', traits: {"smithy.api#uniqueItems" => {}})
    GuardrailContentFilterConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#GuardrailContentFilterConfig', name: 'GuardrailContentFilterConfig')
    GuardrailContentFilterType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#GuardrailContentFilterType', name: 'GuardrailContentFilterType', traits: {"smithy.api#enum" => [{"value" => "SEXUAL", "name" => "SEXUAL"}, {"value" => "VIOLENCE", "name" => "VIOLENCE"}, {"value" => "HATE", "name" => "HATE"}, {"value" => "INSULTS", "name" => "INSULTS"}, {"value" => "MISCONDUCT", "name" => "MISCONDUCT"}, {"value" => "PROMPT_ATTACK", "name" => "PROMPT_ATTACK"}], "smithy.api#sensitive" => {}})
    GuardrailContentFiltersConfig = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qconnect#GuardrailContentFiltersConfig', name: 'GuardrailContentFiltersConfig', traits: {"smithy.api#length" => {"min" => 1, "max" => 6}})
    GuardrailContextualGroundingFilterConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#GuardrailContextualGroundingFilterConfig', name: 'GuardrailContextualGroundingFilterConfig')
    GuardrailContextualGroundingFilterThreshold = ::Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.qconnect#GuardrailContextualGroundingFilterThreshold', name: 'GuardrailContextualGroundingFilterThreshold', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0}, "smithy.api#sensitive" => {}})
    GuardrailContextualGroundingFilterType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#GuardrailContextualGroundingFilterType', name: 'GuardrailContextualGroundingFilterType', traits: {"smithy.api#enum" => [{"value" => "GROUNDING", "name" => "GROUNDING"}, {"value" => "RELEVANCE", "name" => "RELEVANCE"}], "smithy.api#sensitive" => {}})
    GuardrailContextualGroundingFiltersConfig = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qconnect#GuardrailContextualGroundingFiltersConfig', name: 'GuardrailContextualGroundingFiltersConfig', traits: {"smithy.api#length" => {"min" => 1}})
    GuardrailFilterStrength = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#GuardrailFilterStrength', name: 'GuardrailFilterStrength', traits: {"smithy.api#enum" => [{"value" => "NONE", "name" => "NONE"}, {"value" => "LOW", "name" => "LOW"}, {"value" => "MEDIUM", "name" => "MEDIUM"}, {"value" => "HIGH", "name" => "HIGH"}], "smithy.api#sensitive" => {}})
    GuardrailManagedWordListsConfig = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qconnect#GuardrailManagedWordListsConfig', name: 'GuardrailManagedWordListsConfig')
    GuardrailManagedWordsConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#GuardrailManagedWordsConfig', name: 'GuardrailManagedWordsConfig')
    GuardrailManagedWordsType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#GuardrailManagedWordsType', name: 'GuardrailManagedWordsType', traits: {"smithy.api#enum" => [{"value" => "PROFANITY", "name" => "PROFANITY"}], "smithy.api#sensitive" => {}})
    GuardrailPiiEntitiesConfig = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qconnect#GuardrailPiiEntitiesConfig', name: 'GuardrailPiiEntitiesConfig', traits: {"smithy.api#length" => {"min" => 1}, "smithy.api#uniqueItems" => {}})
    GuardrailPiiEntityConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#GuardrailPiiEntityConfig', name: 'GuardrailPiiEntityConfig')
    GuardrailPiiEntityType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#GuardrailPiiEntityType', name: 'GuardrailPiiEntityType', traits: {"smithy.api#enum" => [{"value" => "ADDRESS", "name" => "ADDRESS"}, {"value" => "AGE", "name" => "AGE"}, {"value" => "AWS_ACCESS_KEY", "name" => "AWS_ACCESS_KEY"}, {"value" => "AWS_SECRET_KEY", "name" => "AWS_SECRET_KEY"}, {"value" => "CA_HEALTH_NUMBER", "name" => "CA_HEALTH_NUMBER"}, {"value" => "CA_SOCIAL_INSURANCE_NUMBER", "name" => "CA_SOCIAL_INSURANCE_NUMBER"}, {"value" => "CREDIT_DEBIT_CARD_CVV", "name" => "CREDIT_DEBIT_CARD_CVV"}, {"value" => "CREDIT_DEBIT_CARD_EXPIRY", "name" => "CREDIT_DEBIT_CARD_EXPIRY"}, {"value" => "CREDIT_DEBIT_CARD_NUMBER", "name" => "CREDIT_DEBIT_CARD_NUMBER"}, {"value" => "DRIVER_ID", "name" => "DRIVER_ID"}, {"value" => "EMAIL", "name" => "EMAIL"}, {"value" => "INTERNATIONAL_BANK_ACCOUNT_NUMBER", "name" => "INTERNATIONAL_BANK_ACCOUNT_NUMBER"}, {"value" => "IP_ADDRESS", "name" => "IP_ADDRESS"}, {"value" => "LICENSE_PLATE", "name" => "LICENSE_PLATE"}, {"value" => "MAC_ADDRESS", "name" => "MAC_ADDRESS"}, {"value" => "NAME", "name" => "NAME"}, {"value" => "PASSWORD", "name" => "PASSWORD"}, {"value" => "PHONE", "name" => "PHONE"}, {"value" => "PIN", "name" => "PIN"}, {"value" => "SWIFT_CODE", "name" => "SWIFT_CODE"}, {"value" => "UK_NATIONAL_HEALTH_SERVICE_NUMBER", "name" => "UK_NATIONAL_HEALTH_SERVICE_NUMBER"}, {"value" => "UK_NATIONAL_INSURANCE_NUMBER", "name" => "UK_NATIONAL_INSURANCE_NUMBER"}, {"value" => "UK_UNIQUE_TAXPAYER_REFERENCE_NUMBER", "name" => "UK_UNIQUE_TAXPAYER_REFERENCE_NUMBER"}, {"value" => "URL", "name" => "URL"}, {"value" => "USERNAME", "name" => "USERNAME"}, {"value" => "US_BANK_ACCOUNT_NUMBER", "name" => "US_BANK_ACCOUNT_NUMBER"}, {"value" => "US_BANK_ROUTING_NUMBER", "name" => "US_BANK_ROUTING_NUMBER"}, {"value" => "US_INDIVIDUAL_TAX_IDENTIFICATION_NUMBER", "name" => "US_INDIVIDUAL_TAX_IDENTIFICATION_NUMBER"}, {"value" => "US_PASSPORT_NUMBER", "name" => "US_PASSPORT_NUMBER"}, {"value" => "US_SOCIAL_SECURITY_NUMBER", "name" => "US_SOCIAL_SECURITY_NUMBER"}, {"value" => "VEHICLE_IDENTIFICATION_NUMBER", "name" => "VEHICLE_IDENTIFICATION_NUMBER"}], "smithy.api#sensitive" => {}})
    GuardrailRegexConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#GuardrailRegexConfig', name: 'GuardrailRegexConfig')
    GuardrailRegexDescription = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#GuardrailRegexDescription', name: 'GuardrailRegexDescription', traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}, "smithy.api#sensitive" => {}})
    GuardrailRegexName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#GuardrailRegexName', name: 'GuardrailRegexName', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#sensitive" => {}})
    GuardrailRegexPattern = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#GuardrailRegexPattern', name: 'GuardrailRegexPattern', traits: {"smithy.api#length" => {"min" => 1}, "smithy.api#sensitive" => {}})
    GuardrailRegexesConfig = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qconnect#GuardrailRegexesConfig', name: 'GuardrailRegexesConfig', traits: {"smithy.api#length" => {"min" => 1}})
    GuardrailSensitiveInformationAction = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#GuardrailSensitiveInformationAction', name: 'GuardrailSensitiveInformationAction', traits: {"smithy.api#enum" => [{"value" => "BLOCK", "name" => "BLOCK"}, {"value" => "ANONYMIZE", "name" => "ANONYMIZE"}], "smithy.api#sensitive" => {}})
    GuardrailTopicConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#GuardrailTopicConfig', name: 'GuardrailTopicConfig')
    GuardrailTopicDefinition = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#GuardrailTopicDefinition', name: 'GuardrailTopicDefinition', traits: {"smithy.api#length" => {"min" => 1, "max" => 200}, "smithy.api#sensitive" => {}})
    GuardrailTopicExample = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#GuardrailTopicExample', name: 'GuardrailTopicExample', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#sensitive" => {}})
    GuardrailTopicExamples = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qconnect#GuardrailTopicExamples', name: 'GuardrailTopicExamples', traits: {"smithy.api#length" => {"min" => 0}})
    GuardrailTopicName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#GuardrailTopicName', name: 'GuardrailTopicName', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[0-9a-zA-Z-_ !?.]+$", "smithy.api#sensitive" => {}})
    GuardrailTopicType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#GuardrailTopicType', name: 'GuardrailTopicType', traits: {"smithy.api#enum" => [{"value" => "DENY", "name" => "DENY"}], "smithy.api#sensitive" => {}})
    GuardrailTopicsConfig = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qconnect#GuardrailTopicsConfig', name: 'GuardrailTopicsConfig', traits: {"smithy.api#length" => {"min" => 1}})
    GuardrailWordConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#GuardrailWordConfig', name: 'GuardrailWordConfig')
    GuardrailWordText = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#GuardrailWordText', name: 'GuardrailWordText', traits: {"smithy.api#length" => {"min" => 1}, "smithy.api#sensitive" => {}})
    GuardrailWordsConfig = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qconnect#GuardrailWordsConfig', name: 'GuardrailWordsConfig', traits: {"smithy.api#length" => {"min" => 1}})
    Headers = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.qconnect#Headers', name: 'Headers')
    HierarchicalChunkingConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#HierarchicalChunkingConfiguration', name: 'HierarchicalChunkingConfiguration')
    HierarchicalChunkingLevelConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#HierarchicalChunkingLevelConfiguration', name: 'HierarchicalChunkingLevelConfiguration')
    HierarchicalChunkingLevelConfigurations = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qconnect#HierarchicalChunkingLevelConfigurations', name: 'HierarchicalChunkingLevelConfigurations', traits: {"smithy.api#length" => {"min" => 2, "max" => 2}})
    Highlight = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#Highlight', name: 'Highlight')
    HighlightOffset = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.qconnect#HighlightOffset', name: 'HighlightOffset', traits: {"smithy.api#default" => 0})
    Highlights = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qconnect#Highlights', name: 'Highlights')
    ImportJobData = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#ImportJobData', name: 'ImportJobData')
    ImportJobList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qconnect#ImportJobList', name: 'ImportJobList')
    ImportJobStatus = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#ImportJobStatus', name: 'ImportJobStatus', traits: {"smithy.api#enum" => [{"value" => "START_IN_PROGRESS", "name" => "START_IN_PROGRESS"}, {"value" => "FAILED", "name" => "FAILED"}, {"value" => "COMPLETE", "name" => "COMPLETE"}, {"value" => "DELETE_IN_PROGRESS", "name" => "DELETE_IN_PROGRESS"}, {"value" => "DELETE_FAILED", "name" => "DELETE_FAILED"}, {"value" => "DELETED", "name" => "DELETED"}]})
    ImportJobSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#ImportJobSummary', name: 'ImportJobSummary')
    ImportJobType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#ImportJobType', name: 'ImportJobType', traits: {"smithy.api#enum" => [{"value" => "QUICK_RESPONSES", "name" => "QUICK_RESPONSES"}]})
    IntentDetectedDataDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#IntentDetectedDataDetails', name: 'IntentDetectedDataDetails')
    IntentInputData = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#IntentInputData', name: 'IntentInputData')
    KnowledgeBaseAssociationConfigurationData = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#KnowledgeBaseAssociationConfigurationData', name: 'KnowledgeBaseAssociationConfigurationData')
    KnowledgeBaseAssociationData = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#KnowledgeBaseAssociationData', name: 'KnowledgeBaseAssociationData')
    KnowledgeBaseData = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#KnowledgeBaseData', name: 'KnowledgeBaseData', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.qconnect#KnowledgeBase"}]})
    KnowledgeBaseList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qconnect#KnowledgeBaseList', name: 'KnowledgeBaseList')
    KnowledgeBaseSearchType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#KnowledgeBaseSearchType', name: 'KnowledgeBaseSearchType', traits: {"smithy.api#enum" => [{"value" => "HYBRID", "name" => "HYBRID"}, {"value" => "SEMANTIC", "name" => "SEMANTIC"}]})
    KnowledgeBaseStatus = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#KnowledgeBaseStatus', name: 'KnowledgeBaseStatus', traits: {"smithy.api#enum" => [{"value" => "CREATE_IN_PROGRESS", "name" => "CREATE_IN_PROGRESS"}, {"value" => "CREATE_FAILED", "name" => "CREATE_FAILED"}, {"value" => "ACTIVE", "name" => "ACTIVE"}, {"value" => "DELETE_IN_PROGRESS", "name" => "DELETE_IN_PROGRESS"}, {"value" => "DELETE_FAILED", "name" => "DELETE_FAILED"}, {"value" => "DELETED", "name" => "DELETED"}]})
    KnowledgeBaseSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#KnowledgeBaseSummary', name: 'KnowledgeBaseSummary', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.qconnect#KnowledgeBase"}]})
    KnowledgeBaseType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#KnowledgeBaseType', name: 'KnowledgeBaseType', traits: {"smithy.api#enum" => [{"value" => "EXTERNAL", "name" => "EXTERNAL"}, {"value" => "CUSTOM", "name" => "CUSTOM"}, {"value" => "QUICK_RESPONSES", "name" => "QUICK_RESPONSES"}, {"value" => "MESSAGE_TEMPLATES", "name" => "MESSAGE_TEMPLATES"}, {"value" => "MANAGED", "name" => "MANAGED"}]})
    LanguageCode = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#LanguageCode', name: 'LanguageCode', traits: {"smithy.api#length" => {"min" => 2, "max" => 5}})
    ListAIAgentVersionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#ListAIAgentVersionsRequest', name: 'ListAIAgentVersionsRequest')
    ListAIAgentVersionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#ListAIAgentVersionsResponse', name: 'ListAIAgentVersionsResponse')
    ListAIAgentsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#ListAIAgentsRequest', name: 'ListAIAgentsRequest')
    ListAIAgentsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#ListAIAgentsResponse', name: 'ListAIAgentsResponse')
    ListAIGuardrailVersionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#ListAIGuardrailVersionsRequest', name: 'ListAIGuardrailVersionsRequest')
    ListAIGuardrailVersionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#ListAIGuardrailVersionsResponse', name: 'ListAIGuardrailVersionsResponse')
    ListAIGuardrailsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#ListAIGuardrailsRequest', name: 'ListAIGuardrailsRequest')
    ListAIGuardrailsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#ListAIGuardrailsResponse', name: 'ListAIGuardrailsResponse')
    ListAIPromptVersionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#ListAIPromptVersionsRequest', name: 'ListAIPromptVersionsRequest')
    ListAIPromptVersionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#ListAIPromptVersionsResponse', name: 'ListAIPromptVersionsResponse')
    ListAIPromptsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#ListAIPromptsRequest', name: 'ListAIPromptsRequest')
    ListAIPromptsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#ListAIPromptsResponse', name: 'ListAIPromptsResponse')
    ListAssistantAssociationsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#ListAssistantAssociationsInput', name: 'ListAssistantAssociationsInput')
    ListAssistantAssociationsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#ListAssistantAssociationsOutput', name: 'ListAssistantAssociationsOutput')
    ListAssistantsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#ListAssistantsInput', name: 'ListAssistantsInput')
    ListAssistantsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#ListAssistantsOutput', name: 'ListAssistantsOutput')
    ListContentAssociationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#ListContentAssociationsRequest', name: 'ListContentAssociationsRequest')
    ListContentAssociationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#ListContentAssociationsResponse', name: 'ListContentAssociationsResponse')
    ListContentsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#ListContentsInput', name: 'ListContentsInput')
    ListContentsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#ListContentsOutput', name: 'ListContentsOutput')
    ListImportJobsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#ListImportJobsRequest', name: 'ListImportJobsRequest')
    ListImportJobsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#ListImportJobsResponse', name: 'ListImportJobsResponse')
    ListKnowledgeBasesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#ListKnowledgeBasesInput', name: 'ListKnowledgeBasesInput')
    ListKnowledgeBasesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#ListKnowledgeBasesOutput', name: 'ListKnowledgeBasesOutput')
    ListMessageTemplateVersionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#ListMessageTemplateVersionsRequest', name: 'ListMessageTemplateVersionsRequest')
    ListMessageTemplateVersionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#ListMessageTemplateVersionsResponse', name: 'ListMessageTemplateVersionsResponse')
    ListMessageTemplatesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#ListMessageTemplatesRequest', name: 'ListMessageTemplatesRequest')
    ListMessageTemplatesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#ListMessageTemplatesResponse', name: 'ListMessageTemplatesResponse')
    ListMessagesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#ListMessagesRequest', name: 'ListMessagesRequest')
    ListMessagesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#ListMessagesResponse', name: 'ListMessagesResponse')
    ListQuickResponsesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#ListQuickResponsesRequest', name: 'ListQuickResponsesRequest')
    ListQuickResponsesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#ListQuickResponsesResponse', name: 'ListQuickResponsesResponse')
    ListTagsForResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#ListTagsForResourceInput', name: 'ListTagsForResourceInput')
    ListTagsForResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#ListTagsForResourceOutput', name: 'ListTagsForResourceOutput')
    LlmModelId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#LlmModelId', name: 'LlmModelId', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    ManagedSourceConfiguration = ::Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.qconnect#ManagedSourceConfiguration', name: 'ManagedSourceConfiguration')
    ManualSearchAIAgentConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#ManualSearchAIAgentConfiguration', name: 'ManualSearchAIAgentConfiguration')
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.qconnect#MaxResults', name: 'MaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    MessageConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#MessageConfiguration', name: 'MessageConfiguration')
    MessageData = ::Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.qconnect#MessageData', name: 'MessageData')
    MessageInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#MessageInput', name: 'MessageInput')
    MessageList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qconnect#MessageList', name: 'MessageList')
    MessageOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#MessageOutput', name: 'MessageOutput')
    MessageTemplateAttachment = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#MessageTemplateAttachment', name: 'MessageTemplateAttachment')
    MessageTemplateAttachmentList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qconnect#MessageTemplateAttachmentList', name: 'MessageTemplateAttachmentList', traits: {"smithy.api#uniqueItems" => {}})
    MessageTemplateAttributeKey = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#MessageTemplateAttributeKey', name: 'MessageTemplateAttributeKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 32767}})
    MessageTemplateAttributeKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qconnect#MessageTemplateAttributeKeyList', name: 'MessageTemplateAttributeKeyList', traits: {"smithy.api#sensitive" => {}, "smithy.api#uniqueItems" => {}})
    MessageTemplateAttributeType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#MessageTemplateAttributeType', name: 'MessageTemplateAttributeType', traits: {"smithy.api#enum" => [{"value" => "SYSTEM", "name" => "SYSTEM"}, {"value" => "AGENT", "name" => "AGENT"}, {"value" => "CUSTOMER_PROFILE", "name" => "CUSTOMER_PROFILE"}, {"value" => "CUSTOM", "name" => "CUSTOM"}]})
    MessageTemplateAttributeTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qconnect#MessageTemplateAttributeTypeList', name: 'MessageTemplateAttributeTypeList', traits: {"smithy.api#uniqueItems" => {}})
    MessageTemplateAttributeValue = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#MessageTemplateAttributeValue', name: 'MessageTemplateAttributeValue', traits: {"smithy.api#length" => {"min" => 1, "max" => 32767}, "smithy.api#sensitive" => {}})
    MessageTemplateAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#MessageTemplateAttributes', name: 'MessageTemplateAttributes')
    MessageTemplateBodyContentProvider = ::Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.qconnect#MessageTemplateBodyContentProvider', name: 'MessageTemplateBodyContentProvider')
    MessageTemplateContentProvider = ::Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.qconnect#MessageTemplateContentProvider', name: 'MessageTemplateContentProvider')
    MessageTemplateContentSha256 = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#MessageTemplateContentSha256', name: 'MessageTemplateContentSha256', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9]+$"})
    MessageTemplateData = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#MessageTemplateData', name: 'MessageTemplateData', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.qconnect#MessageTemplate"}, {"resource" => "com.amazonaws.qconnect#KnowledgeBase"}]})
    MessageTemplateFilterField = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#MessageTemplateFilterField', name: 'MessageTemplateFilterField')
    MessageTemplateFilterFieldList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qconnect#MessageTemplateFilterFieldList', name: 'MessageTemplateFilterFieldList', traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    MessageTemplateFilterOperator = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#MessageTemplateFilterOperator', name: 'MessageTemplateFilterOperator', traits: {"smithy.api#enum" => [{"value" => "EQUALS", "name" => "EQUALS"}, {"value" => "PREFIX", "name" => "PREFIX"}]})
    MessageTemplateFilterValue = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#MessageTemplateFilterValue', name: 'MessageTemplateFilterValue', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    MessageTemplateFilterValueList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qconnect#MessageTemplateFilterValueList', name: 'MessageTemplateFilterValueList', traits: {"smithy.api#length" => {"min" => 1, "max" => 5}, "smithy.api#uniqueItems" => {}})
    MessageTemplateOrderField = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#MessageTemplateOrderField', name: 'MessageTemplateOrderField')
    MessageTemplateQueryField = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#MessageTemplateQueryField', name: 'MessageTemplateQueryField')
    MessageTemplateQueryFieldList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qconnect#MessageTemplateQueryFieldList', name: 'MessageTemplateQueryFieldList', traits: {"smithy.api#length" => {"min" => 0, "max" => 4}})
    MessageTemplateQueryOperator = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#MessageTemplateQueryOperator', name: 'MessageTemplateQueryOperator', traits: {"smithy.api#enum" => [{"value" => "CONTAINS", "name" => "CONTAINS"}, {"value" => "CONTAINS_AND_PREFIX", "name" => "CONTAINS_AND_PREFIX"}]})
    MessageTemplateQueryValue = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#MessageTemplateQueryValue', name: 'MessageTemplateQueryValue', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    MessageTemplateQueryValueList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qconnect#MessageTemplateQueryValueList', name: 'MessageTemplateQueryValueList', traits: {"smithy.api#length" => {"min" => 1, "max" => 5}, "smithy.api#uniqueItems" => {}})
    MessageTemplateSearchExpression = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#MessageTemplateSearchExpression', name: 'MessageTemplateSearchExpression')
    MessageTemplateSearchResultData = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#MessageTemplateSearchResultData', name: 'MessageTemplateSearchResultData', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.qconnect#MessageTemplate"}, {"resource" => "com.amazonaws.qconnect#KnowledgeBase"}]})
    MessageTemplateSearchResultsList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qconnect#MessageTemplateSearchResultsList', name: 'MessageTemplateSearchResultsList')
    MessageTemplateSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#MessageTemplateSummary', name: 'MessageTemplateSummary', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.qconnect#MessageTemplate"}, {"resource" => "com.amazonaws.qconnect#KnowledgeBase"}]})
    MessageTemplateSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qconnect#MessageTemplateSummaryList', name: 'MessageTemplateSummaryList')
    MessageTemplateVersionSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#MessageTemplateVersionSummary', name: 'MessageTemplateVersionSummary')
    MessageTemplateVersionSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qconnect#MessageTemplateVersionSummaryList', name: 'MessageTemplateVersionSummaryList')
    MessageType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#MessageType', name: 'MessageType', traits: {"smithy.api#enum" => [{"value" => "TEXT", "name" => "TEXT"}]})
    Name = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#Name', name: 'Name', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z0-9\\s_.,-]+"})
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#NextToken', name: 'NextToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    NonEmptySensitiveString = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#NonEmptySensitiveString', name: 'NonEmptySensitiveString', traits: {"smithy.api#length" => {"min" => 1, "max" => 4096}, "smithy.api#sensitive" => {}})
    NonEmptyString = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#NonEmptyString', name: 'NonEmptyString', traits: {"smithy.api#length" => {"min" => 1, "max" => 4096}})
    NonEmptyUnlimitedString = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#NonEmptyUnlimitedString', name: 'NonEmptyUnlimitedString', traits: {"smithy.api#length" => {"min" => 1}, "smithy.api#sensitive" => {}})
    NotifyRecommendationsReceivedError = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#NotifyRecommendationsReceivedError', name: 'NotifyRecommendationsReceivedError')
    NotifyRecommendationsReceivedErrorList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qconnect#NotifyRecommendationsReceivedErrorList', name: 'NotifyRecommendationsReceivedErrorList')
    NotifyRecommendationsReceivedErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#NotifyRecommendationsReceivedErrorMessage', name: 'NotifyRecommendationsReceivedErrorMessage')
    NotifyRecommendationsReceivedInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#NotifyRecommendationsReceivedInput', name: 'NotifyRecommendationsReceivedInput')
    NotifyRecommendationsReceivedOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#NotifyRecommendationsReceivedOutput', name: 'NotifyRecommendationsReceivedOutput')
    ObjectFieldsList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qconnect#ObjectFieldsList', name: 'ObjectFieldsList', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    OrCondition = ::Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.qconnect#OrCondition', name: 'OrCondition')
    OrConditions = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qconnect#OrConditions', name: 'OrConditions')
    Order = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#Order', name: 'Order', traits: {"smithy.api#enum" => [{"value" => "ASC", "name" => "ASC"}, {"value" => "DESC", "name" => "DESC"}]})
    Origin = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#Origin', name: 'Origin', traits: {"smithy.api#enum" => [{"value" => "SYSTEM", "name" => "SYSTEM"}, {"value" => "CUSTOMER", "name" => "CUSTOMER"}]})
    ParsingConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#ParsingConfiguration', name: 'ParsingConfiguration')
    ParsingPrompt = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#ParsingPrompt', name: 'ParsingPrompt')
    ParsingPromptText = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#ParsingPromptText', name: 'ParsingPromptText', traits: {"smithy.api#length" => {"min" => 1, "max" => 10000}})
    ParsingStrategy = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#ParsingStrategy', name: 'ParsingStrategy', traits: {"smithy.api#enum" => [{"value" => "BEDROCK_FOUNDATION_MODEL", "name" => "BEDROCK_FOUNDATION_MODEL"}]})
    Participant = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#Participant', name: 'Participant', traits: {"smithy.api#enum" => [{"value" => "CUSTOMER", "name" => "CUSTOMER"}, {"value" => "AGENT", "name" => "AGENT"}, {"value" => "BOT", "name" => "BOT"}]})
    PreconditionFailedException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#PreconditionFailedException', name: 'PreconditionFailedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 412})
    Priority = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#Priority', name: 'Priority', traits: {"smithy.api#enum" => [{"value" => "HIGH", "name" => "HIGH"}, {"value" => "MEDIUM", "name" => "MEDIUM"}, {"value" => "LOW", "name" => "LOW"}]})
    PutFeedbackRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#PutFeedbackRequest', name: 'PutFeedbackRequest')
    PutFeedbackResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#PutFeedbackResponse', name: 'PutFeedbackResponse')
    QueryAssistantInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#QueryAssistantInput', name: 'QueryAssistantInput')
    QueryAssistantOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#QueryAssistantOutput', name: 'QueryAssistantOutput')
    QueryCondition = ::Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.qconnect#QueryCondition', name: 'QueryCondition')
    QueryConditionComparisonOperator = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#QueryConditionComparisonOperator', name: 'QueryConditionComparisonOperator', traits: {"smithy.api#enum" => [{"value" => "EQUALS", "name" => "EQUALS"}]})
    QueryConditionExpression = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qconnect#QueryConditionExpression', name: 'QueryConditionExpression', traits: {"smithy.api#length" => {"min" => 0, "max" => 1}})
    QueryConditionFieldName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#QueryConditionFieldName', name: 'QueryConditionFieldName', traits: {"smithy.api#enum" => [{"value" => "RESULT_TYPE", "name" => "RESULT_TYPE"}]})
    QueryConditionItem = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#QueryConditionItem', name: 'QueryConditionItem')
    QueryInputData = ::Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.qconnect#QueryInputData', name: 'QueryInputData')
    QueryRecommendationTriggerData = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#QueryRecommendationTriggerData', name: 'QueryRecommendationTriggerData')
    QueryResultType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#QueryResultType', name: 'QueryResultType', traits: {"smithy.api#enum" => [{"value" => "KNOWLEDGE_CONTENT", "name" => "KNOWLEDGE_CONTENT"}, {"value" => "INTENT_ANSWER", "name" => "INTENT_ANSWER"}, {"value" => "GENERATIVE_ANSWER", "name" => "GENERATIVE_ANSWER"}, {"value" => "GENERATIVE_ANSWER_CHUNK", "name" => "GENERATIVE_ANSWER_CHUNK"}, {"value" => "BLOCKED_GENERATIVE_ANSWER_CHUNK", "name" => "BLOCKED_GENERATIVE_ANSWER_CHUNK"}, {"value" => "INTENT_ANSWER_CHUNK", "name" => "INTENT_ANSWER_CHUNK"}, {"value" => "BLOCKED_INTENT_ANSWER_CHUNK", "name" => "BLOCKED_INTENT_ANSWER_CHUNK"}, {"value" => "EMAIL_RESPONSE_CHUNK", "name" => "EMAIL_RESPONSE_CHUNK"}, {"value" => "EMAIL_OVERVIEW_CHUNK", "name" => "EMAIL_OVERVIEW_CHUNK"}, {"value" => "EMAIL_GENERATIVE_ANSWER_CHUNK", "name" => "EMAIL_GENERATIVE_ANSWER_CHUNK"}]})
    QueryResultsList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qconnect#QueryResultsList', name: 'QueryResultsList')
    QueryText = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#QueryText', name: 'QueryText', traits: {"smithy.api#length" => {"max" => 512}, "smithy.api#sensitive" => {}})
    QueryTextInputData = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#QueryTextInputData', name: 'QueryTextInputData')
    QuickResponseContent = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#QuickResponseContent', name: 'QuickResponseContent', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#sensitive" => {}})
    QuickResponseContentProvider = ::Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.qconnect#QuickResponseContentProvider', name: 'QuickResponseContentProvider')
    QuickResponseContents = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#QuickResponseContents', name: 'QuickResponseContents')
    QuickResponseData = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#QuickResponseData', name: 'QuickResponseData', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.qconnect#QuickResponse"}, {"resource" => "com.amazonaws.qconnect#KnowledgeBase"}]})
    QuickResponseDataProvider = ::Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.qconnect#QuickResponseDataProvider', name: 'QuickResponseDataProvider')
    QuickResponseDescription = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#QuickResponseDescription', name: 'QuickResponseDescription', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    QuickResponseFilterField = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#QuickResponseFilterField', name: 'QuickResponseFilterField')
    QuickResponseFilterFieldList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qconnect#QuickResponseFilterFieldList', name: 'QuickResponseFilterFieldList', traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    QuickResponseFilterOperator = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#QuickResponseFilterOperator', name: 'QuickResponseFilterOperator', traits: {"smithy.api#enum" => [{"value" => "EQUALS", "name" => "EQUALS"}, {"value" => "PREFIX", "name" => "PREFIX"}]})
    QuickResponseFilterValue = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#QuickResponseFilterValue', name: 'QuickResponseFilterValue', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    QuickResponseFilterValueList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qconnect#QuickResponseFilterValueList', name: 'QuickResponseFilterValueList', traits: {"smithy.api#length" => {"min" => 1, "max" => 5}, "smithy.api#uniqueItems" => {}})
    QuickResponseName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#QuickResponseName', name: 'QuickResponseName', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    QuickResponseOrderField = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#QuickResponseOrderField', name: 'QuickResponseOrderField')
    QuickResponseQueryField = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#QuickResponseQueryField', name: 'QuickResponseQueryField')
    QuickResponseQueryFieldList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qconnect#QuickResponseQueryFieldList', name: 'QuickResponseQueryFieldList', traits: {"smithy.api#length" => {"min" => 0, "max" => 4}})
    QuickResponseQueryOperator = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#QuickResponseQueryOperator', name: 'QuickResponseQueryOperator', traits: {"smithy.api#enum" => [{"value" => "CONTAINS", "name" => "CONTAINS"}, {"value" => "CONTAINS_AND_PREFIX", "name" => "CONTAINS_AND_PREFIX"}]})
    QuickResponseQueryValue = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#QuickResponseQueryValue', name: 'QuickResponseQueryValue', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    QuickResponseQueryValueList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qconnect#QuickResponseQueryValueList', name: 'QuickResponseQueryValueList', traits: {"smithy.api#length" => {"min" => 1, "max" => 5}, "smithy.api#uniqueItems" => {}})
    QuickResponseSearchExpression = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#QuickResponseSearchExpression', name: 'QuickResponseSearchExpression')
    QuickResponseSearchResultData = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#QuickResponseSearchResultData', name: 'QuickResponseSearchResultData', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.qconnect#QuickResponse"}, {"resource" => "com.amazonaws.qconnect#KnowledgeBase"}]})
    QuickResponseSearchResultsList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qconnect#QuickResponseSearchResultsList', name: 'QuickResponseSearchResultsList')
    QuickResponseStatus = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#QuickResponseStatus', name: 'QuickResponseStatus', traits: {"smithy.api#enum" => [{"value" => "CREATE_IN_PROGRESS", "name" => "CREATE_IN_PROGRESS"}, {"value" => "CREATE_FAILED", "name" => "CREATE_FAILED"}, {"value" => "CREATED", "name" => "CREATED"}, {"value" => "DELETE_IN_PROGRESS", "name" => "DELETE_IN_PROGRESS"}, {"value" => "DELETE_FAILED", "name" => "DELETE_FAILED"}, {"value" => "DELETED", "name" => "DELETED"}, {"value" => "UPDATE_IN_PROGRESS", "name" => "UPDATE_IN_PROGRESS"}, {"value" => "UPDATE_FAILED", "name" => "UPDATE_FAILED"}]})
    QuickResponseSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#QuickResponseSummary', name: 'QuickResponseSummary', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.qconnect#QuickResponse"}, {"resource" => "com.amazonaws.qconnect#KnowledgeBase"}]})
    QuickResponseSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qconnect#QuickResponseSummaryList', name: 'QuickResponseSummaryList')
    QuickResponseType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#QuickResponseType', name: 'QuickResponseType', traits: {"smithy.api#pattern" => "^(application/x\\.quickresponse;format=(plain|markdown))$"})
    RankingData = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#RankingData', name: 'RankingData')
    RecommendationData = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#RecommendationData', name: 'RecommendationData')
    RecommendationId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#RecommendationId', name: 'RecommendationId', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    RecommendationIdList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qconnect#RecommendationIdList', name: 'RecommendationIdList', traits: {"smithy.api#length" => {"min" => 0, "max" => 25}})
    RecommendationList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qconnect#RecommendationList', name: 'RecommendationList')
    RecommendationSourceType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#RecommendationSourceType', name: 'RecommendationSourceType', traits: {"smithy.api#enum" => [{"value" => "ISSUE_DETECTION", "name" => "ISSUE_DETECTION"}, {"value" => "RULE_EVALUATION", "name" => "RULE_EVALUATION"}, {"value" => "OTHER", "name" => "OTHER"}]})
    RecommendationTrigger = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#RecommendationTrigger', name: 'RecommendationTrigger')
    RecommendationTriggerData = ::Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.qconnect#RecommendationTriggerData', name: 'RecommendationTriggerData')
    RecommendationTriggerList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qconnect#RecommendationTriggerList', name: 'RecommendationTriggerList')
    RecommendationTriggerType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#RecommendationTriggerType', name: 'RecommendationTriggerType', traits: {"smithy.api#enum" => [{"value" => "QUERY", "name" => "QUERY"}, {"value" => "GENERATIVE", "name" => "GENERATIVE"}]})
    RecommendationType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#RecommendationType', name: 'RecommendationType', traits: {"smithy.api#enum" => [{"value" => "KNOWLEDGE_CONTENT", "name" => "KNOWLEDGE_CONTENT"}, {"value" => "GENERATIVE_RESPONSE", "name" => "GENERATIVE_RESPONSE"}, {"value" => "GENERATIVE_ANSWER", "name" => "GENERATIVE_ANSWER"}, {"value" => "DETECTED_INTENT", "name" => "DETECTED_INTENT"}, {"value" => "GENERATIVE_ANSWER_CHUNK", "name" => "GENERATIVE_ANSWER_CHUNK"}, {"value" => "BLOCKED_GENERATIVE_ANSWER_CHUNK", "name" => "BLOCKED_GENERATIVE_ANSWER_CHUNK"}, {"value" => "INTENT_ANSWER_CHUNK", "name" => "INTENT_ANSWER_CHUNK"}, {"value" => "BLOCKED_INTENT_ANSWER_CHUNK", "name" => "BLOCKED_INTENT_ANSWER_CHUNK"}, {"value" => "EMAIL_RESPONSE_CHUNK", "name" => "EMAIL_RESPONSE_CHUNK"}, {"value" => "EMAIL_OVERVIEW_CHUNK", "name" => "EMAIL_OVERVIEW_CHUNK"}, {"value" => "EMAIL_GENERATIVE_ANSWER_CHUNK", "name" => "EMAIL_GENERATIVE_ANSWER_CHUNK"}]})
    ReferenceType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#ReferenceType', name: 'ReferenceType', traits: {"smithy.api#enum" => [{"value" => "WEB_CRAWLER", "name" => "WEB_CRAWLER"}, {"value" => "KNOWLEDGE_BASE", "name" => "KNOWLEDGE_BASE"}]})
    Relevance = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#Relevance', name: 'Relevance', traits: {"smithy.api#enum" => [{"value" => "HELPFUL", "name" => "HELPFUL"}, {"value" => "NOT_HELPFUL", "name" => "NOT_HELPFUL"}]})
    RelevanceLevel = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#RelevanceLevel', name: 'RelevanceLevel', traits: {"smithy.api#enum" => [{"value" => "HIGH", "name" => "HIGH"}, {"value" => "MEDIUM", "name" => "MEDIUM"}, {"value" => "LOW", "name" => "LOW"}]})
    RelevanceScore = ::Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.qconnect#RelevanceScore', name: 'RelevanceScore', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0.0}})
    RemoveAssistantAIAgentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#RemoveAssistantAIAgentRequest', name: 'RemoveAssistantAIAgentRequest')
    RemoveAssistantAIAgentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#RemoveAssistantAIAgentResponse', name: 'RemoveAssistantAIAgentResponse')
    RemoveKnowledgeBaseTemplateUriInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#RemoveKnowledgeBaseTemplateUriInput', name: 'RemoveKnowledgeBaseTemplateUriInput')
    RemoveKnowledgeBaseTemplateUriOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#RemoveKnowledgeBaseTemplateUriOutput', name: 'RemoveKnowledgeBaseTemplateUriOutput')
    RenderMessageTemplateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#RenderMessageTemplateRequest', name: 'RenderMessageTemplateRequest')
    RenderMessageTemplateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#RenderMessageTemplateResponse', name: 'RenderMessageTemplateResponse')
    RenderingConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#RenderingConfiguration', name: 'RenderingConfiguration')
    RequestTimeoutException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#RequestTimeoutException', name: 'RequestTimeoutException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 408, "smithy.api#retryable" => {}})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResultData = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#ResultData', name: 'ResultData')
    RuntimeSessionData = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#RuntimeSessionData', name: 'RuntimeSessionData')
    RuntimeSessionDataList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qconnect#RuntimeSessionDataList', name: 'RuntimeSessionDataList', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    RuntimeSessionDataValue = ::Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.qconnect#RuntimeSessionDataValue', name: 'RuntimeSessionDataValue')
    SMSMessageTemplateContent = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#SMSMessageTemplateContent', name: 'SMSMessageTemplateContent')
    SMSMessageTemplateContentBody = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#SMSMessageTemplateContentBody', name: 'SMSMessageTemplateContentBody')
    SearchContentInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#SearchContentInput', name: 'SearchContentInput')
    SearchContentOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#SearchContentOutput', name: 'SearchContentOutput')
    SearchExpression = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#SearchExpression', name: 'SearchExpression')
    SearchMessageTemplatesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#SearchMessageTemplatesRequest', name: 'SearchMessageTemplatesRequest')
    SearchMessageTemplatesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#SearchMessageTemplatesResponse', name: 'SearchMessageTemplatesResponse')
    SearchQuickResponsesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#SearchQuickResponsesRequest', name: 'SearchQuickResponsesRequest')
    SearchQuickResponsesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#SearchQuickResponsesResponse', name: 'SearchQuickResponsesResponse')
    SearchSessionsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#SearchSessionsInput', name: 'SearchSessionsInput')
    SearchSessionsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#SearchSessionsOutput', name: 'SearchSessionsOutput')
    SeedUrl = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#SeedUrl', name: 'SeedUrl')
    SeedUrls = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qconnect#SeedUrls', name: 'SeedUrls', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    SelfServiceAIAgentConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#SelfServiceAIAgentConfiguration', name: 'SelfServiceAIAgentConfiguration')
    SelfServiceConversationHistory = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#SelfServiceConversationHistory', name: 'SelfServiceConversationHistory')
    SelfServiceConversationHistoryList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qconnect#SelfServiceConversationHistoryList', name: 'SelfServiceConversationHistoryList', traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    SemanticChunkingConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#SemanticChunkingConfiguration', name: 'SemanticChunkingConfiguration')
    SendMessageRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#SendMessageRequest', name: 'SendMessageRequest')
    SendMessageResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#SendMessageResponse', name: 'SendMessageResponse')
    SensitiveString = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#SensitiveString', name: 'SensitiveString', traits: {"smithy.api#sensitive" => {}})
    ServerSideEncryptionConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#ServerSideEncryptionConfiguration', name: 'ServerSideEncryptionConfiguration')
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#ServiceQuotaExceededException', name: 'ServiceQuotaExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    SessionData = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#SessionData', name: 'SessionData')
    SessionDataNamespace = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#SessionDataNamespace', name: 'SessionDataNamespace', traits: {"smithy.api#enum" => [{"value" => "Custom", "name" => "Custom"}]})
    SessionIntegrationConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#SessionIntegrationConfiguration', name: 'SessionIntegrationConfiguration')
    SessionSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qconnect#SessionSummaries', name: 'SessionSummaries')
    SessionSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#SessionSummary', name: 'SessionSummary')
    ShortCutKey = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#ShortCutKey', name: 'ShortCutKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    SourceConfiguration = ::Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.qconnect#SourceConfiguration', name: 'SourceConfiguration')
    SourceContentDataDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#SourceContentDataDetails', name: 'SourceContentDataDetails')
    SourceContentType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#SourceContentType', name: 'SourceContentType', traits: {"smithy.api#enum" => [{"value" => "KNOWLEDGE_CONTENT", "name" => "KNOWLEDGE_CONTENT"}]})
    StartContentUploadInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#StartContentUploadInput', name: 'StartContentUploadInput')
    StartContentUploadOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#StartContentUploadOutput', name: 'StartContentUploadOutput')
    StartImportJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#StartImportJobRequest', name: 'StartImportJobRequest')
    StartImportJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#StartImportJobResponse', name: 'StartImportJobResponse')
    Status = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#Status', name: 'Status', traits: {"smithy.api#enum" => [{"value" => "CREATE_IN_PROGRESS", "name" => "CREATE_IN_PROGRESS"}, {"value" => "CREATE_FAILED", "name" => "CREATE_FAILED"}, {"value" => "ACTIVE", "name" => "ACTIVE"}, {"value" => "DELETE_IN_PROGRESS", "name" => "DELETE_IN_PROGRESS"}, {"value" => "DELETE_FAILED", "name" => "DELETE_FAILED"}, {"value" => "DELETED", "name" => "DELETED"}]})
    SyncStatus = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#SyncStatus', name: 'SyncStatus', traits: {"smithy.api#enum" => [{"value" => "SYNC_FAILED", "name" => "SYNC_FAILED"}, {"value" => "SYNCING_IN_PROGRESS", "name" => "SYNCING_IN_PROGRESS"}, {"value" => "SYNC_SUCCESS", "name" => "SYNC_SUCCESS"}, {"value" => "CREATE_IN_PROGRESS", "name" => "CREATE_IN_PROGRESS"}]})
    SystemAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#SystemAttributes', name: 'SystemAttributes')
    SystemEndpointAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#SystemEndpointAttributes', name: 'SystemEndpointAttributes')
    TagCondition = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#TagCondition', name: 'TagCondition')
    TagFilter = ::Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.qconnect#TagFilter', name: 'TagFilter')
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^(?!aws:)[a-zA-Z+-=._:/]+$"})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qconnect#TagKeyList', name: 'TagKeyList', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    TagResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#TagResourceInput', name: 'TagResourceInput')
    TagResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#TagResourceOutput', name: 'TagResourceOutput')
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    Tags = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.qconnect#Tags', name: 'Tags')
    TargetType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#TargetType', name: 'TargetType', traits: {"smithy.api#enum" => [{"value" => "RECOMMENDATION", "name" => "RECOMMENDATION"}, {"value" => "RESULT", "name" => "RESULT"}]})
    TextAIPrompt = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#TextAIPrompt', name: 'TextAIPrompt', traits: {"smithy.api#length" => {"min" => 1, "max" => 1000000}, "smithy.api#sensitive" => {}})
    TextData = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#TextData', name: 'TextData')
    TextFullAIPromptEditTemplateConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#TextFullAIPromptEditTemplateConfiguration', name: 'TextFullAIPromptEditTemplateConfiguration')
    TextMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#TextMessage', name: 'TextMessage')
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#ThrottlingException', name: 'ThrottlingException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400, "smithy.api#retryable" => {}})
    TimeToLive = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.qconnect#TimeToLive', name: 'TimeToLive', traits: {"smithy.api#range" => {"min" => 1, "max" => 60}})
    TooManyTagsException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#TooManyTagsException', name: 'TooManyTagsException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    UnauthorizedException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#UnauthorizedException', name: 'UnauthorizedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 401})
    UntagResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#UntagResourceInput', name: 'UntagResourceInput')
    UntagResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#UntagResourceOutput', name: 'UntagResourceOutput')
    UpdateAIAgentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#UpdateAIAgentRequest', name: 'UpdateAIAgentRequest')
    UpdateAIAgentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#UpdateAIAgentResponse', name: 'UpdateAIAgentResponse')
    UpdateAIGuardrailRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#UpdateAIGuardrailRequest', name: 'UpdateAIGuardrailRequest')
    UpdateAIGuardrailResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#UpdateAIGuardrailResponse', name: 'UpdateAIGuardrailResponse')
    UpdateAIPromptRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#UpdateAIPromptRequest', name: 'UpdateAIPromptRequest')
    UpdateAIPromptResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#UpdateAIPromptResponse', name: 'UpdateAIPromptResponse')
    UpdateAssistantAIAgentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#UpdateAssistantAIAgentRequest', name: 'UpdateAssistantAIAgentRequest')
    UpdateAssistantAIAgentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#UpdateAssistantAIAgentResponse', name: 'UpdateAssistantAIAgentResponse')
    UpdateContentInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#UpdateContentInput', name: 'UpdateContentInput')
    UpdateContentOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#UpdateContentOutput', name: 'UpdateContentOutput')
    UpdateKnowledgeBaseTemplateUriInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#UpdateKnowledgeBaseTemplateUriInput', name: 'UpdateKnowledgeBaseTemplateUriInput')
    UpdateKnowledgeBaseTemplateUriOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#UpdateKnowledgeBaseTemplateUriOutput', name: 'UpdateKnowledgeBaseTemplateUriOutput')
    UpdateMessageTemplateMetadataRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#UpdateMessageTemplateMetadataRequest', name: 'UpdateMessageTemplateMetadataRequest')
    UpdateMessageTemplateMetadataResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#UpdateMessageTemplateMetadataResponse', name: 'UpdateMessageTemplateMetadataResponse')
    UpdateMessageTemplateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#UpdateMessageTemplateRequest', name: 'UpdateMessageTemplateRequest')
    UpdateMessageTemplateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#UpdateMessageTemplateResponse', name: 'UpdateMessageTemplateResponse')
    UpdateQuickResponseRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#UpdateQuickResponseRequest', name: 'UpdateQuickResponseRequest')
    UpdateQuickResponseResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#UpdateQuickResponseResponse', name: 'UpdateQuickResponseResponse')
    UpdateSessionDataRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#UpdateSessionDataRequest', name: 'UpdateSessionDataRequest')
    UpdateSessionDataResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#UpdateSessionDataResponse', name: 'UpdateSessionDataResponse')
    UpdateSessionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#UpdateSessionRequest', name: 'UpdateSessionRequest')
    UpdateSessionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#UpdateSessionResponse', name: 'UpdateSessionResponse')
    UploadId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#UploadId', name: 'UploadId', traits: {"smithy.api#length" => {"min" => 1, "max" => 1200}})
    Uri = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#Uri', name: 'Uri', traits: {"smithy.api#length" => {"min" => 1, "max" => 4096}})
    Url = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#Url', name: 'Url', traits: {"smithy.api#length" => {"min" => 1, "max" => 4096}, "smithy.api#sensitive" => {}})
    UrlConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#UrlConfiguration', name: 'UrlConfiguration')
    UrlFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qconnect#UrlFilterList', name: 'UrlFilterList', traits: {"smithy.api#length" => {"min" => 1, "max" => 25}, "smithy.api#sensitive" => {}})
    UrlFilterPattern = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#UrlFilterPattern', name: 'UrlFilterPattern', traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}, "smithy.api#sensitive" => {}})
    Uuid = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#Uuid', name: 'Uuid', traits: {"smithy.api#pattern" => "^[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}$"})
    UuidOrArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#UuidOrArn', name: 'UuidOrArn', traits: {"smithy.api#pattern" => "^[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}$|^arn:[a-z-]*?:wisdom:[a-z0-9-]*?:[0-9]{12}:[a-z-]*?/[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}(?:/[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}){0,2}$"})
    UuidOrArnOrEitherWithQualifier = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#UuidOrArnOrEitherWithQualifier', name: 'UuidOrArnOrEitherWithQualifier', traits: {"smithy.api#pattern" => "^[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}(:[A-Z0-9_$]+){0,1}$|^arn:[a-z-]*?:wisdom:[a-z0-9-]*?:[0-9]{12}:[a-z-]*?/[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}(?:/[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}){0,2}(:[A-Z0-9_$]+){0,1}$"})
    UuidWithQualifier = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#UuidWithQualifier', name: 'UuidWithQualifier', traits: {"smithy.api#pattern" => "^[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}(:[A-Z0-9_$]+){0,1}$"})
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#ValidationException', name: 'ValidationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    VectorIngestionConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#VectorIngestionConfiguration', name: 'VectorIngestionConfiguration')
    Version = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.qconnect#Version', name: 'Version', traits: {"smithy.api#range" => {"min" => 1}})
    VisibilityStatus = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#VisibilityStatus', name: 'VisibilityStatus', traits: {"smithy.api#enum" => [{"value" => "SAVED", "name" => "SAVED"}, {"value" => "PUBLISHED", "name" => "PUBLISHED"}]})
    WaitTimeSeconds = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.qconnect#WaitTimeSeconds', name: 'WaitTimeSeconds', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 20}})
    WebCrawlerConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#WebCrawlerConfiguration', name: 'WebCrawlerConfiguration')
    WebCrawlerLimits = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#WebCrawlerLimits', name: 'WebCrawlerLimits')
    WebScopeType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#WebScopeType', name: 'WebScopeType', traits: {"smithy.api#enum" => [{"value" => "HOST_ONLY", "name" => "HOST_ONLY"}, {"value" => "SUBDOMAINS", "name" => "SUBDOMAINS"}]})
    WebUrl = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#WebUrl', name: 'WebUrl', traits: {"smithy.api#pattern" => "^https?://[A-Za-z0-9][^\\s]*$"})

    AIAgentConfiguration.add_member(:manual_search_ai_agent_configuration, Types::AIAgentConfiguration::ManualSearchAIAgentConfiguration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ManualSearchAIAgentConfiguration, location_name: 'manualSearchAIAgentConfiguration'))
    AIAgentConfiguration.add_member(:answer_recommendation_ai_agent_configuration, Types::AIAgentConfiguration::AnswerRecommendationAIAgentConfiguration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AnswerRecommendationAIAgentConfiguration, location_name: 'answerRecommendationAIAgentConfiguration'))
    AIAgentConfiguration.add_member(:self_service_ai_agent_configuration, Types::AIAgentConfiguration::SelfServiceAIAgentConfiguration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SelfServiceAIAgentConfiguration, location_name: 'selfServiceAIAgentConfiguration'))
    AIAgentConfiguration.add_member(:email_response_ai_agent_configuration, Types::AIAgentConfiguration::EmailResponseAIAgentConfiguration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EmailResponseAIAgentConfiguration, location_name: 'emailResponseAIAgentConfiguration'))
    AIAgentConfiguration.add_member(:email_overview_ai_agent_configuration, Types::AIAgentConfiguration::EmailOverviewAIAgentConfiguration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EmailOverviewAIAgentConfiguration, location_name: 'emailOverviewAIAgentConfiguration'))
    AIAgentConfiguration.add_member(:email_generative_answer_ai_agent_configuration, Types::AIAgentConfiguration::EmailGenerativeAnswerAIAgentConfiguration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EmailGenerativeAnswerAIAgentConfiguration, location_name: 'emailGenerativeAnswerAIAgentConfiguration'))
    AIAgentConfiguration.add_member(:unknown, Types::AIAgentConfiguration::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    AIAgentConfiguration.type = Types::AIAgentConfiguration
    AIAgentConfigurationData.add_member(:ai_agent_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UuidWithQualifier, location_name: 'aiAgentId', traits: {"smithy.api#required" => {}}))
    AIAgentConfigurationData.type = Types::AIAgentConfigurationData
    AIAgentConfigurationMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AIAgentType)
    AIAgentConfigurationMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AIAgentConfigurationData)
    AIAgentData.add_member(:assistant_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'assistantId', traits: {"smithy.api#required" => {}}))
    AIAgentData.add_member(:assistant_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'assistantArn', traits: {"smithy.api#required" => {}}))
    AIAgentData.add_member(:ai_agent_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'aiAgentId', traits: {"smithy.api#required" => {}}))
    AIAgentData.add_member(:ai_agent_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'aiAgentArn', traits: {"smithy.api#required" => {}}))
    AIAgentData.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#required" => {}}))
    AIAgentData.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AIAgentType, location_name: 'type', traits: {"smithy.api#required" => {}}))
    AIAgentData.add_member(:configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AIAgentConfiguration, location_name: 'configuration', traits: {"smithy.api#required" => {}}))
    AIAgentData.add_member(:modified_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'modifiedTime'))
    AIAgentData.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description'))
    AIAgentData.add_member(:visibility_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VisibilityStatus, location_name: 'visibilityStatus', traits: {"smithy.api#required" => {}}))
    AIAgentData.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags'))
    AIAgentData.add_member(:origin, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Origin, location_name: 'origin'))
    AIAgentData.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Status, location_name: 'status'))
    AIAgentData.type = Types::AIAgentData
    AIAgentSummary.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#required" => {}}))
    AIAgentSummary.add_member(:assistant_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'assistantId', traits: {"smithy.api#required" => {}}))
    AIAgentSummary.add_member(:assistant_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'assistantArn', traits: {"smithy.api#required" => {}}))
    AIAgentSummary.add_member(:ai_agent_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'aiAgentId', traits: {"smithy.api#required" => {}}))
    AIAgentSummary.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AIAgentType, location_name: 'type', traits: {"smithy.api#required" => {}}))
    AIAgentSummary.add_member(:ai_agent_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'aiAgentArn', traits: {"smithy.api#required" => {}}))
    AIAgentSummary.add_member(:modified_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'modifiedTime'))
    AIAgentSummary.add_member(:visibility_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VisibilityStatus, location_name: 'visibilityStatus', traits: {"smithy.api#required" => {}}))
    AIAgentSummary.add_member(:configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AIAgentConfiguration, location_name: 'configuration'))
    AIAgentSummary.add_member(:origin, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Origin, location_name: 'origin'))
    AIAgentSummary.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description'))
    AIAgentSummary.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Status, location_name: 'status'))
    AIAgentSummary.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags'))
    AIAgentSummary.type = Types::AIAgentSummary
    AIAgentSummaryList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AIAgentSummary)
    AIAgentVersionSummariesList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AIAgentVersionSummary)
    AIAgentVersionSummary.add_member(:ai_agent_summary, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AIAgentSummary, location_name: 'aiAgentSummary'))
    AIAgentVersionSummary.add_member(:version_number, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'versionNumber'))
    AIAgentVersionSummary.type = Types::AIAgentVersionSummary
    AIGuardrailContentPolicyConfig.add_member(:filters_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailContentFiltersConfig, location_name: 'filtersConfig', traits: {"smithy.api#required" => {}}))
    AIGuardrailContentPolicyConfig.type = Types::AIGuardrailContentPolicyConfig
    AIGuardrailContextualGroundingPolicyConfig.add_member(:filters_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailContextualGroundingFiltersConfig, location_name: 'filtersConfig', traits: {"smithy.api#required" => {}}))
    AIGuardrailContextualGroundingPolicyConfig.type = Types::AIGuardrailContextualGroundingPolicyConfig
    AIGuardrailData.add_member(:assistant_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'assistantId', traits: {"smithy.api#required" => {}}))
    AIGuardrailData.add_member(:assistant_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'assistantArn', traits: {"smithy.api#required" => {}}))
    AIGuardrailData.add_member(:ai_guardrail_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'aiGuardrailArn', traits: {"smithy.api#required" => {}}))
    AIGuardrailData.add_member(:ai_guardrail_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'aiGuardrailId', traits: {"smithy.api#required" => {}}))
    AIGuardrailData.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#required" => {}}))
    AIGuardrailData.add_member(:visibility_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VisibilityStatus, location_name: 'visibilityStatus', traits: {"smithy.api#required" => {}}))
    AIGuardrailData.add_member(:blocked_input_messaging, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AIGuardrailBlockedMessaging, location_name: 'blockedInputMessaging', traits: {"smithy.api#required" => {}}))
    AIGuardrailData.add_member(:blocked_outputs_messaging, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AIGuardrailBlockedMessaging, location_name: 'blockedOutputsMessaging', traits: {"smithy.api#required" => {}}))
    AIGuardrailData.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AIGuardrailDescription, location_name: 'description'))
    AIGuardrailData.add_member(:topic_policy_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AIGuardrailTopicPolicyConfig, location_name: 'topicPolicyConfig'))
    AIGuardrailData.add_member(:content_policy_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AIGuardrailContentPolicyConfig, location_name: 'contentPolicyConfig'))
    AIGuardrailData.add_member(:word_policy_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AIGuardrailWordPolicyConfig, location_name: 'wordPolicyConfig'))
    AIGuardrailData.add_member(:sensitive_information_policy_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AIGuardrailSensitiveInformationPolicyConfig, location_name: 'sensitiveInformationPolicyConfig'))
    AIGuardrailData.add_member(:contextual_grounding_policy_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AIGuardrailContextualGroundingPolicyConfig, location_name: 'contextualGroundingPolicyConfig'))
    AIGuardrailData.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags'))
    AIGuardrailData.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Status, location_name: 'status'))
    AIGuardrailData.add_member(:modified_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'modifiedTime'))
    AIGuardrailData.type = Types::AIGuardrailData
    AIGuardrailSensitiveInformationPolicyConfig.add_member(:pii_entities_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailPiiEntitiesConfig, location_name: 'piiEntitiesConfig'))
    AIGuardrailSensitiveInformationPolicyConfig.add_member(:regexes_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailRegexesConfig, location_name: 'regexesConfig'))
    AIGuardrailSensitiveInformationPolicyConfig.type = Types::AIGuardrailSensitiveInformationPolicyConfig
    AIGuardrailSummariesList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AIGuardrailSummary)
    AIGuardrailSummary.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#required" => {}}))
    AIGuardrailSummary.add_member(:assistant_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'assistantId', traits: {"smithy.api#required" => {}}))
    AIGuardrailSummary.add_member(:assistant_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'assistantArn', traits: {"smithy.api#required" => {}}))
    AIGuardrailSummary.add_member(:ai_guardrail_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'aiGuardrailId', traits: {"smithy.api#required" => {}}))
    AIGuardrailSummary.add_member(:ai_guardrail_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'aiGuardrailArn', traits: {"smithy.api#required" => {}}))
    AIGuardrailSummary.add_member(:modified_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'modifiedTime'))
    AIGuardrailSummary.add_member(:visibility_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VisibilityStatus, location_name: 'visibilityStatus', traits: {"smithy.api#required" => {}}))
    AIGuardrailSummary.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AIGuardrailDescription, location_name: 'description'))
    AIGuardrailSummary.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Status, location_name: 'status'))
    AIGuardrailSummary.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags'))
    AIGuardrailSummary.type = Types::AIGuardrailSummary
    AIGuardrailTopicPolicyConfig.add_member(:topics_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailTopicsConfig, location_name: 'topicsConfig', traits: {"smithy.api#required" => {}}))
    AIGuardrailTopicPolicyConfig.type = Types::AIGuardrailTopicPolicyConfig
    AIGuardrailVersionSummariesList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AIGuardrailVersionSummary)
    AIGuardrailVersionSummary.add_member(:ai_guardrail_summary, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AIGuardrailSummary, location_name: 'aiGuardrailSummary'))
    AIGuardrailVersionSummary.add_member(:version_number, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'versionNumber'))
    AIGuardrailVersionSummary.type = Types::AIGuardrailVersionSummary
    AIGuardrailWordPolicyConfig.add_member(:words_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailWordsConfig, location_name: 'wordsConfig'))
    AIGuardrailWordPolicyConfig.add_member(:managed_word_lists_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailManagedWordListsConfig, location_name: 'managedWordListsConfig'))
    AIGuardrailWordPolicyConfig.type = Types::AIGuardrailWordPolicyConfig
    AIPromptData.add_member(:assistant_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'assistantId', traits: {"smithy.api#required" => {}}))
    AIPromptData.add_member(:assistant_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'assistantArn', traits: {"smithy.api#required" => {}}))
    AIPromptData.add_member(:ai_prompt_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'aiPromptId', traits: {"smithy.api#required" => {}}))
    AIPromptData.add_member(:ai_prompt_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'aiPromptArn', traits: {"smithy.api#required" => {}}))
    AIPromptData.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#required" => {}}))
    AIPromptData.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AIPromptType, location_name: 'type', traits: {"smithy.api#required" => {}}))
    AIPromptData.add_member(:template_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AIPromptTemplateType, location_name: 'templateType', traits: {"smithy.api#required" => {}}))
    AIPromptData.add_member(:model_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AIPromptModelIdentifier, location_name: 'modelId', traits: {"smithy.api#required" => {}}))
    AIPromptData.add_member(:api_format, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AIPromptAPIFormat, location_name: 'apiFormat', traits: {"smithy.api#required" => {}}))
    AIPromptData.add_member(:template_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AIPromptTemplateConfiguration, location_name: 'templateConfiguration', traits: {"smithy.api#required" => {}}))
    AIPromptData.add_member(:modified_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'modifiedTime'))
    AIPromptData.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description'))
    AIPromptData.add_member(:visibility_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VisibilityStatus, location_name: 'visibilityStatus', traits: {"smithy.api#required" => {}}))
    AIPromptData.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags'))
    AIPromptData.add_member(:origin, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Origin, location_name: 'origin'))
    AIPromptData.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Status, location_name: 'status'))
    AIPromptData.type = Types::AIPromptData
    AIPromptSummary.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#required" => {}}))
    AIPromptSummary.add_member(:assistant_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'assistantId', traits: {"smithy.api#required" => {}}))
    AIPromptSummary.add_member(:assistant_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'assistantArn', traits: {"smithy.api#required" => {}}))
    AIPromptSummary.add_member(:ai_prompt_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'aiPromptId', traits: {"smithy.api#required" => {}}))
    AIPromptSummary.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AIPromptType, location_name: 'type', traits: {"smithy.api#required" => {}}))
    AIPromptSummary.add_member(:ai_prompt_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'aiPromptArn', traits: {"smithy.api#required" => {}}))
    AIPromptSummary.add_member(:modified_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'modifiedTime'))
    AIPromptSummary.add_member(:template_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AIPromptTemplateType, location_name: 'templateType', traits: {"smithy.api#required" => {}}))
    AIPromptSummary.add_member(:model_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AIPromptModelIdentifier, location_name: 'modelId', traits: {"smithy.api#required" => {}}))
    AIPromptSummary.add_member(:api_format, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AIPromptAPIFormat, location_name: 'apiFormat', traits: {"smithy.api#required" => {}}))
    AIPromptSummary.add_member(:visibility_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VisibilityStatus, location_name: 'visibilityStatus', traits: {"smithy.api#required" => {}}))
    AIPromptSummary.add_member(:origin, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Origin, location_name: 'origin'))
    AIPromptSummary.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description'))
    AIPromptSummary.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Status, location_name: 'status'))
    AIPromptSummary.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags'))
    AIPromptSummary.type = Types::AIPromptSummary
    AIPromptSummaryList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AIPromptSummary)
    AIPromptTemplateConfiguration.add_member(:text_full_ai_prompt_edit_template_configuration, Types::AIPromptTemplateConfiguration::TextFullAIPromptEditTemplateConfiguration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TextFullAIPromptEditTemplateConfiguration, location_name: 'textFullAIPromptEditTemplateConfiguration'))
    AIPromptTemplateConfiguration.add_member(:unknown, Types::AIPromptTemplateConfiguration::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    AIPromptTemplateConfiguration.type = Types::AIPromptTemplateConfiguration
    AIPromptVersionSummariesList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AIPromptVersionSummary)
    AIPromptVersionSummary.add_member(:ai_prompt_summary, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AIPromptSummary, location_name: 'aiPromptSummary'))
    AIPromptVersionSummary.add_member(:version_number, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'versionNumber'))
    AIPromptVersionSummary.type = Types::AIPromptVersionSummary
    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message'))
    AccessDeniedException.type = Types::AccessDeniedException
    ActivateMessageTemplateRequest.add_member(:knowledge_base_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'knowledgeBaseId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ActivateMessageTemplateRequest.add_member(:message_template_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArnOrEitherWithQualifier, location_name: 'messageTemplateId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ActivateMessageTemplateRequest.add_member(:version_number, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'versionNumber', traits: {"smithy.api#required" => {}}))
    ActivateMessageTemplateRequest.type = Types::ActivateMessageTemplateRequest
    ActivateMessageTemplateResponse.add_member(:message_template_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ArnWithQualifier, location_name: 'messageTemplateArn', traits: {"smithy.api#required" => {}}))
    ActivateMessageTemplateResponse.add_member(:message_template_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'messageTemplateId', traits: {"smithy.api#required" => {}}))
    ActivateMessageTemplateResponse.add_member(:version_number, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'versionNumber', traits: {"smithy.api#required" => {}}))
    ActivateMessageTemplateResponse.type = Types::ActivateMessageTemplateResponse
    AgentAttributes.add_member(:first_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateAttributeValue, location_name: 'firstName'))
    AgentAttributes.add_member(:last_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateAttributeValue, location_name: 'lastName'))
    AgentAttributes.type = Types::AgentAttributes
    AmazonConnectGuideAssociationData.add_member(:flow_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericArn, location_name: 'flowId'))
    AmazonConnectGuideAssociationData.type = Types::AmazonConnectGuideAssociationData
    AndConditions.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagCondition)
    AnswerRecommendationAIAgentConfiguration.add_member(:intent_labeling_generation_ai_prompt_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UuidWithQualifier, location_name: 'intentLabelingGenerationAIPromptId'))
    AnswerRecommendationAIAgentConfiguration.add_member(:query_reformulation_ai_prompt_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UuidWithQualifier, location_name: 'queryReformulationAIPromptId'))
    AnswerRecommendationAIAgentConfiguration.add_member(:answer_generation_ai_prompt_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UuidWithQualifier, location_name: 'answerGenerationAIPromptId'))
    AnswerRecommendationAIAgentConfiguration.add_member(:answer_generation_ai_guardrail_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UuidWithQualifier, location_name: 'answerGenerationAIGuardrailId'))
    AnswerRecommendationAIAgentConfiguration.add_member(:association_configurations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssociationConfigurationList, location_name: 'associationConfigurations'))
    AnswerRecommendationAIAgentConfiguration.add_member(:locale, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'locale'))
    AnswerRecommendationAIAgentConfiguration.type = Types::AnswerRecommendationAIAgentConfiguration
    AppIntegrationsConfiguration.add_member(:app_integration_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericArn, location_name: 'appIntegrationArn', traits: {"smithy.api#required" => {}}))
    AppIntegrationsConfiguration.add_member(:object_fields, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectFieldsList, location_name: 'objectFields'))
    AppIntegrationsConfiguration.type = Types::AppIntegrationsConfiguration
    AssistantAssociationData.add_member(:assistant_association_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'assistantAssociationId', traits: {"smithy.api#required" => {}}))
    AssistantAssociationData.add_member(:assistant_association_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'assistantAssociationArn', traits: {"smithy.api#required" => {}}))
    AssistantAssociationData.add_member(:assistant_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'assistantId', traits: {"smithy.api#required" => {}}))
    AssistantAssociationData.add_member(:assistant_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'assistantArn', traits: {"smithy.api#required" => {}}))
    AssistantAssociationData.add_member(:association_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssociationType, location_name: 'associationType', traits: {"smithy.api#required" => {}}))
    AssistantAssociationData.add_member(:association_data, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssistantAssociationOutputData, location_name: 'associationData', traits: {"smithy.api#required" => {}}))
    AssistantAssociationData.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags'))
    AssistantAssociationData.type = Types::AssistantAssociationData
    AssistantAssociationInputData.add_member(:knowledge_base_id, Types::AssistantAssociationInputData::KnowledgeBaseId, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'knowledgeBaseId'))
    AssistantAssociationInputData.add_member(:unknown, Types::AssistantAssociationInputData::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    AssistantAssociationInputData.type = Types::AssistantAssociationInputData
    AssistantAssociationOutputData.add_member(:knowledge_base_association, Types::AssistantAssociationOutputData::KnowledgeBaseAssociation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KnowledgeBaseAssociationData, location_name: 'knowledgeBaseAssociation'))
    AssistantAssociationOutputData.add_member(:unknown, Types::AssistantAssociationOutputData::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    AssistantAssociationOutputData.type = Types::AssistantAssociationOutputData
    AssistantAssociationSummary.add_member(:assistant_association_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'assistantAssociationId', traits: {"smithy.api#required" => {}}))
    AssistantAssociationSummary.add_member(:assistant_association_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'assistantAssociationArn', traits: {"smithy.api#required" => {}}))
    AssistantAssociationSummary.add_member(:assistant_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'assistantId', traits: {"smithy.api#required" => {}}))
    AssistantAssociationSummary.add_member(:assistant_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'assistantArn', traits: {"smithy.api#required" => {}}))
    AssistantAssociationSummary.add_member(:association_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssociationType, location_name: 'associationType', traits: {"smithy.api#required" => {}}))
    AssistantAssociationSummary.add_member(:association_data, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssistantAssociationOutputData, location_name: 'associationData', traits: {"smithy.api#required" => {}}))
    AssistantAssociationSummary.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags'))
    AssistantAssociationSummary.type = Types::AssistantAssociationSummary
    AssistantAssociationSummaryList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssistantAssociationSummary)
    AssistantCapabilityConfiguration.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssistantCapabilityType, location_name: 'type'))
    AssistantCapabilityConfiguration.type = Types::AssistantCapabilityConfiguration
    AssistantData.add_member(:assistant_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'assistantId', traits: {"smithy.api#required" => {}}))
    AssistantData.add_member(:assistant_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'assistantArn', traits: {"smithy.api#required" => {}}))
    AssistantData.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#required" => {}}))
    AssistantData.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssistantType, location_name: 'type', traits: {"smithy.api#required" => {}}))
    AssistantData.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssistantStatus, location_name: 'status', traits: {"smithy.api#required" => {}}))
    AssistantData.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description'))
    AssistantData.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags'))
    AssistantData.add_member(:server_side_encryption_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerSideEncryptionConfiguration, location_name: 'serverSideEncryptionConfiguration'))
    AssistantData.add_member(:integration_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssistantIntegrationConfiguration, location_name: 'integrationConfiguration'))
    AssistantData.add_member(:capability_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssistantCapabilityConfiguration, location_name: 'capabilityConfiguration'))
    AssistantData.add_member(:ai_agent_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AIAgentConfigurationMap, location_name: 'aiAgentConfiguration'))
    AssistantData.type = Types::AssistantData
    AssistantIntegrationConfiguration.add_member(:topic_integration_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericArn, location_name: 'topicIntegrationArn'))
    AssistantIntegrationConfiguration.type = Types::AssistantIntegrationConfiguration
    AssistantList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssistantSummary)
    AssistantSummary.add_member(:assistant_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'assistantId', traits: {"smithy.api#required" => {}}))
    AssistantSummary.add_member(:assistant_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'assistantArn', traits: {"smithy.api#required" => {}}))
    AssistantSummary.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#required" => {}}))
    AssistantSummary.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssistantType, location_name: 'type', traits: {"smithy.api#required" => {}}))
    AssistantSummary.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssistantStatus, location_name: 'status', traits: {"smithy.api#required" => {}}))
    AssistantSummary.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description'))
    AssistantSummary.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags'))
    AssistantSummary.add_member(:server_side_encryption_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerSideEncryptionConfiguration, location_name: 'serverSideEncryptionConfiguration'))
    AssistantSummary.add_member(:integration_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssistantIntegrationConfiguration, location_name: 'integrationConfiguration'))
    AssistantSummary.add_member(:capability_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssistantCapabilityConfiguration, location_name: 'capabilityConfiguration'))
    AssistantSummary.add_member(:ai_agent_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AIAgentConfigurationMap, location_name: 'aiAgentConfiguration'))
    AssistantSummary.type = Types::AssistantSummary
    AssociationConfiguration.add_member(:association_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'associationId'))
    AssociationConfiguration.add_member(:association_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AIAgentAssociationConfigurationType, location_name: 'associationType'))
    AssociationConfiguration.add_member(:association_configuration_data, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssociationConfigurationData, location_name: 'associationConfigurationData'))
    AssociationConfiguration.type = Types::AssociationConfiguration
    AssociationConfigurationData.add_member(:knowledge_base_association_configuration_data, Types::AssociationConfigurationData::KnowledgeBaseAssociationConfigurationData, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KnowledgeBaseAssociationConfigurationData, location_name: 'knowledgeBaseAssociationConfigurationData'))
    AssociationConfigurationData.add_member(:unknown, Types::AssociationConfigurationData::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    AssociationConfigurationData.type = Types::AssociationConfigurationData
    AssociationConfigurationList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssociationConfiguration)
    BedrockFoundationModelConfigurationForParsing.add_member(:model_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BedrockModelArnForParsing, location_name: 'modelArn', traits: {"smithy.api#required" => {}}))
    BedrockFoundationModelConfigurationForParsing.add_member(:parsing_prompt, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ParsingPrompt, location_name: 'parsingPrompt'))
    BedrockFoundationModelConfigurationForParsing.type = Types::BedrockFoundationModelConfigurationForParsing
    Channels.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Channel)
    ChunkingConfiguration.add_member(:chunking_strategy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChunkingStrategy, location_name: 'chunkingStrategy', traits: {"smithy.api#required" => {}}))
    ChunkingConfiguration.add_member(:fixed_size_chunking_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FixedSizeChunkingConfiguration, location_name: 'fixedSizeChunkingConfiguration'))
    ChunkingConfiguration.add_member(:hierarchical_chunking_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HierarchicalChunkingConfiguration, location_name: 'hierarchicalChunkingConfiguration'))
    ChunkingConfiguration.add_member(:semantic_chunking_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SemanticChunkingConfiguration, location_name: 'semanticChunkingConfiguration'))
    ChunkingConfiguration.type = Types::ChunkingConfiguration
    CitationSpan.add_member(:begin_offset_inclusive, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CitationSpanOffset, location_name: 'beginOffsetInclusive', traits: {"smithy.api#default" => 0}))
    CitationSpan.add_member(:end_offset_exclusive, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CitationSpanOffset, location_name: 'endOffsetExclusive', traits: {"smithy.api#default" => 0}))
    CitationSpan.type = Types::CitationSpan
    Configuration.add_member(:connect_configuration, Types::Configuration::ConnectConfiguration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectConfiguration, location_name: 'connectConfiguration'))
    Configuration.add_member(:unknown, Types::Configuration::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    Configuration.type = Types::Configuration
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message'))
    ConflictException.type = Types::ConflictException
    ConnectConfiguration.add_member(:instance_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'instanceId'))
    ConnectConfiguration.type = Types::ConnectConfiguration
    ContactAttributeKeys.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContactAttributeKey)
    ContactAttributes.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContactAttributeKey)
    ContactAttributes.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContactAttributeValue)
    ContentAssociationContents.add_member(:amazon_connect_guide_association, Types::ContentAssociationContents::AmazonConnectGuideAssociation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonConnectGuideAssociationData, location_name: 'amazonConnectGuideAssociation'))
    ContentAssociationContents.add_member(:unknown, Types::ContentAssociationContents::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    ContentAssociationContents.type = Types::ContentAssociationContents
    ContentAssociationData.add_member(:knowledge_base_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'knowledgeBaseId', traits: {"smithy.api#required" => {}}))
    ContentAssociationData.add_member(:knowledge_base_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'knowledgeBaseArn', traits: {"smithy.api#required" => {}}))
    ContentAssociationData.add_member(:content_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'contentId', traits: {"smithy.api#required" => {}}))
    ContentAssociationData.add_member(:content_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'contentArn', traits: {"smithy.api#required" => {}}))
    ContentAssociationData.add_member(:content_association_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'contentAssociationId', traits: {"smithy.api#required" => {}}))
    ContentAssociationData.add_member(:content_association_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'contentAssociationArn', traits: {"smithy.api#required" => {}}))
    ContentAssociationData.add_member(:association_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContentAssociationType, location_name: 'associationType', traits: {"smithy.api#required" => {}}))
    ContentAssociationData.add_member(:association_data, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContentAssociationContents, location_name: 'associationData', traits: {"smithy.api#required" => {}}))
    ContentAssociationData.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags'))
    ContentAssociationData.type = Types::ContentAssociationData
    ContentAssociationSummary.add_member(:knowledge_base_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'knowledgeBaseId', traits: {"smithy.api#required" => {}}))
    ContentAssociationSummary.add_member(:knowledge_base_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'knowledgeBaseArn', traits: {"smithy.api#required" => {}}))
    ContentAssociationSummary.add_member(:content_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'contentId', traits: {"smithy.api#required" => {}}))
    ContentAssociationSummary.add_member(:content_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'contentArn', traits: {"smithy.api#required" => {}}))
    ContentAssociationSummary.add_member(:content_association_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'contentAssociationId', traits: {"smithy.api#required" => {}}))
    ContentAssociationSummary.add_member(:content_association_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'contentAssociationArn', traits: {"smithy.api#required" => {}}))
    ContentAssociationSummary.add_member(:association_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContentAssociationType, location_name: 'associationType', traits: {"smithy.api#required" => {}}))
    ContentAssociationSummary.add_member(:association_data, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContentAssociationContents, location_name: 'associationData', traits: {"smithy.api#required" => {}}))
    ContentAssociationSummary.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags'))
    ContentAssociationSummary.type = Types::ContentAssociationSummary
    ContentAssociationSummaryList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContentAssociationSummary)
    ContentData.add_member(:content_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'contentArn', traits: {"smithy.api#required" => {}}))
    ContentData.add_member(:content_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'contentId', traits: {"smithy.api#required" => {}}))
    ContentData.add_member(:knowledge_base_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'knowledgeBaseArn', traits: {"smithy.api#required" => {}}))
    ContentData.add_member(:knowledge_base_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'knowledgeBaseId', traits: {"smithy.api#required" => {}}))
    ContentData.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#required" => {}}))
    ContentData.add_member(:revision_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'revisionId', traits: {"smithy.api#required" => {}}))
    ContentData.add_member(:title, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContentTitle, location_name: 'title', traits: {"smithy.api#required" => {}}))
    ContentData.add_member(:content_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContentType, location_name: 'contentType', traits: {"smithy.api#required" => {}}))
    ContentData.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContentStatus, location_name: 'status', traits: {"smithy.api#required" => {}}))
    ContentData.add_member(:metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContentMetadata, location_name: 'metadata', traits: {"smithy.api#required" => {}}))
    ContentData.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags'))
    ContentData.add_member(:link_out_uri, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Uri, location_name: 'linkOutUri'))
    ContentData.add_member(:url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Url, location_name: 'url', traits: {"smithy.api#required" => {}}))
    ContentData.add_member(:url_expiry, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'urlExpiry', traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "epoch-seconds"}))
    ContentData.type = Types::ContentData
    ContentDataDetails.add_member(:text_data, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TextData, location_name: 'textData', traits: {"smithy.api#required" => {}}))
    ContentDataDetails.add_member(:ranking_data, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RankingData, location_name: 'rankingData', traits: {"smithy.api#required" => {}}))
    ContentDataDetails.type = Types::ContentDataDetails
    ContentFeedbackData.add_member(:generative_content_feedback_data, Types::ContentFeedbackData::GenerativeContentFeedbackData, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenerativeContentFeedbackData, location_name: 'generativeContentFeedbackData'))
    ContentFeedbackData.add_member(:unknown, Types::ContentFeedbackData::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    ContentFeedbackData.type = Types::ContentFeedbackData
    ContentMetadata.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString)
    ContentMetadata.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString)
    ContentReference.add_member(:knowledge_base_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'knowledgeBaseArn'))
    ContentReference.add_member(:knowledge_base_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'knowledgeBaseId'))
    ContentReference.add_member(:content_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'contentArn'))
    ContentReference.add_member(:content_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'contentId'))
    ContentReference.add_member(:source_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'sourceURL'))
    ContentReference.add_member(:reference_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReferenceType, location_name: 'referenceType'))
    ContentReference.type = Types::ContentReference
    ContentSummary.add_member(:content_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'contentArn', traits: {"smithy.api#required" => {}}))
    ContentSummary.add_member(:content_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'contentId', traits: {"smithy.api#required" => {}}))
    ContentSummary.add_member(:knowledge_base_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'knowledgeBaseArn', traits: {"smithy.api#required" => {}}))
    ContentSummary.add_member(:knowledge_base_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'knowledgeBaseId', traits: {"smithy.api#required" => {}}))
    ContentSummary.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#required" => {}}))
    ContentSummary.add_member(:revision_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'revisionId', traits: {"smithy.api#required" => {}}))
    ContentSummary.add_member(:title, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContentTitle, location_name: 'title', traits: {"smithy.api#required" => {}}))
    ContentSummary.add_member(:content_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContentType, location_name: 'contentType', traits: {"smithy.api#required" => {}}))
    ContentSummary.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContentStatus, location_name: 'status', traits: {"smithy.api#required" => {}}))
    ContentSummary.add_member(:metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContentMetadata, location_name: 'metadata', traits: {"smithy.api#required" => {}}))
    ContentSummary.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags'))
    ContentSummary.type = Types::ContentSummary
    ContentSummaryList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContentSummary)
    ConversationContext.add_member(:self_service_conversation_history, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SelfServiceConversationHistoryList, location_name: 'selfServiceConversationHistory', traits: {"smithy.api#required" => {}}))
    ConversationContext.type = Types::ConversationContext
    ConversationState.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConversationStatus, location_name: 'status', traits: {"smithy.api#required" => {}}))
    ConversationState.add_member(:reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConversationStatusReason, location_name: 'reason'))
    ConversationState.type = Types::ConversationState
    CreateAIAgentRequest.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#idempotencyToken" => {}}))
    CreateAIAgentRequest.add_member(:assistant_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'assistantId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateAIAgentRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#required" => {}}))
    CreateAIAgentRequest.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AIAgentType, location_name: 'type', traits: {"smithy.api#required" => {}}))
    CreateAIAgentRequest.add_member(:configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AIAgentConfiguration, location_name: 'configuration', traits: {"smithy.api#required" => {}}))
    CreateAIAgentRequest.add_member(:visibility_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VisibilityStatus, location_name: 'visibilityStatus', traits: {"smithy.api#required" => {}}))
    CreateAIAgentRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags'))
    CreateAIAgentRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description'))
    CreateAIAgentRequest.type = Types::CreateAIAgentRequest
    CreateAIAgentResponse.add_member(:ai_agent, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AIAgentData, location_name: 'aiAgent'))
    CreateAIAgentResponse.type = Types::CreateAIAgentResponse
    CreateAIAgentVersionRequest.add_member(:assistant_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'assistantId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateAIAgentVersionRequest.add_member(:ai_agent_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArnOrEitherWithQualifier, location_name: 'aiAgentId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateAIAgentVersionRequest.add_member(:modified_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'modifiedTime'))
    CreateAIAgentVersionRequest.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#idempotencyToken" => {}}))
    CreateAIAgentVersionRequest.type = Types::CreateAIAgentVersionRequest
    CreateAIAgentVersionResponse.add_member(:ai_agent, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AIAgentData, location_name: 'aiAgent'))
    CreateAIAgentVersionResponse.add_member(:version_number, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'versionNumber'))
    CreateAIAgentVersionResponse.type = Types::CreateAIAgentVersionResponse
    CreateAIGuardrailRequest.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#idempotencyToken" => {}}))
    CreateAIGuardrailRequest.add_member(:assistant_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'assistantId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateAIGuardrailRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#required" => {}}))
    CreateAIGuardrailRequest.add_member(:blocked_input_messaging, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AIGuardrailBlockedMessaging, location_name: 'blockedInputMessaging', traits: {"smithy.api#required" => {}}))
    CreateAIGuardrailRequest.add_member(:blocked_outputs_messaging, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AIGuardrailBlockedMessaging, location_name: 'blockedOutputsMessaging', traits: {"smithy.api#required" => {}}))
    CreateAIGuardrailRequest.add_member(:visibility_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VisibilityStatus, location_name: 'visibilityStatus', traits: {"smithy.api#required" => {}}))
    CreateAIGuardrailRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AIGuardrailDescription, location_name: 'description'))
    CreateAIGuardrailRequest.add_member(:topic_policy_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AIGuardrailTopicPolicyConfig, location_name: 'topicPolicyConfig'))
    CreateAIGuardrailRequest.add_member(:content_policy_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AIGuardrailContentPolicyConfig, location_name: 'contentPolicyConfig'))
    CreateAIGuardrailRequest.add_member(:word_policy_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AIGuardrailWordPolicyConfig, location_name: 'wordPolicyConfig'))
    CreateAIGuardrailRequest.add_member(:sensitive_information_policy_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AIGuardrailSensitiveInformationPolicyConfig, location_name: 'sensitiveInformationPolicyConfig'))
    CreateAIGuardrailRequest.add_member(:contextual_grounding_policy_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AIGuardrailContextualGroundingPolicyConfig, location_name: 'contextualGroundingPolicyConfig'))
    CreateAIGuardrailRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags'))
    CreateAIGuardrailRequest.type = Types::CreateAIGuardrailRequest
    CreateAIGuardrailResponse.add_member(:ai_guardrail, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AIGuardrailData, location_name: 'aiGuardrail'))
    CreateAIGuardrailResponse.type = Types::CreateAIGuardrailResponse
    CreateAIGuardrailVersionRequest.add_member(:assistant_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'assistantId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateAIGuardrailVersionRequest.add_member(:ai_guardrail_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArnOrEitherWithQualifier, location_name: 'aiGuardrailId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateAIGuardrailVersionRequest.add_member(:modified_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'modifiedTime'))
    CreateAIGuardrailVersionRequest.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#idempotencyToken" => {}}))
    CreateAIGuardrailVersionRequest.type = Types::CreateAIGuardrailVersionRequest
    CreateAIGuardrailVersionResponse.add_member(:ai_guardrail, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AIGuardrailData, location_name: 'aiGuardrail'))
    CreateAIGuardrailVersionResponse.add_member(:version_number, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'versionNumber'))
    CreateAIGuardrailVersionResponse.type = Types::CreateAIGuardrailVersionResponse
    CreateAIPromptRequest.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#idempotencyToken" => {}}))
    CreateAIPromptRequest.add_member(:assistant_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'assistantId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateAIPromptRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#required" => {}}))
    CreateAIPromptRequest.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AIPromptType, location_name: 'type', traits: {"smithy.api#required" => {}}))
    CreateAIPromptRequest.add_member(:template_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AIPromptTemplateConfiguration, location_name: 'templateConfiguration', traits: {"smithy.api#required" => {}}))
    CreateAIPromptRequest.add_member(:visibility_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VisibilityStatus, location_name: 'visibilityStatus', traits: {"smithy.api#required" => {}}))
    CreateAIPromptRequest.add_member(:template_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AIPromptTemplateType, location_name: 'templateType', traits: {"smithy.api#required" => {}}))
    CreateAIPromptRequest.add_member(:model_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AIPromptModelIdentifier, location_name: 'modelId', traits: {"smithy.api#required" => {}}))
    CreateAIPromptRequest.add_member(:api_format, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AIPromptAPIFormat, location_name: 'apiFormat', traits: {"smithy.api#required" => {}}))
    CreateAIPromptRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags'))
    CreateAIPromptRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description'))
    CreateAIPromptRequest.type = Types::CreateAIPromptRequest
    CreateAIPromptResponse.add_member(:ai_prompt, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AIPromptData, location_name: 'aiPrompt'))
    CreateAIPromptResponse.type = Types::CreateAIPromptResponse
    CreateAIPromptVersionRequest.add_member(:assistant_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'assistantId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateAIPromptVersionRequest.add_member(:ai_prompt_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArnOrEitherWithQualifier, location_name: 'aiPromptId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateAIPromptVersionRequest.add_member(:modified_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'modifiedTime'))
    CreateAIPromptVersionRequest.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#idempotencyToken" => {}}))
    CreateAIPromptVersionRequest.type = Types::CreateAIPromptVersionRequest
    CreateAIPromptVersionResponse.add_member(:ai_prompt, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AIPromptData, location_name: 'aiPrompt'))
    CreateAIPromptVersionResponse.add_member(:version_number, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'versionNumber'))
    CreateAIPromptVersionResponse.type = Types::CreateAIPromptVersionResponse
    CreateAssistantAssociationInput.add_member(:assistant_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'assistantId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateAssistantAssociationInput.add_member(:association_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssociationType, location_name: 'associationType', traits: {"smithy.api#required" => {}}))
    CreateAssistantAssociationInput.add_member(:association, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssistantAssociationInputData, location_name: 'association', traits: {"smithy.api#required" => {}}))
    CreateAssistantAssociationInput.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#idempotencyToken" => {}}))
    CreateAssistantAssociationInput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags'))
    CreateAssistantAssociationInput.type = Types::CreateAssistantAssociationInput
    CreateAssistantAssociationOutput.add_member(:assistant_association, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssistantAssociationData, location_name: 'assistantAssociation'))
    CreateAssistantAssociationOutput.type = Types::CreateAssistantAssociationOutput
    CreateAssistantInput.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#idempotencyToken" => {}}))
    CreateAssistantInput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#required" => {}}))
    CreateAssistantInput.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssistantType, location_name: 'type', traits: {"smithy.api#required" => {}}))
    CreateAssistantInput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description'))
    CreateAssistantInput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags'))
    CreateAssistantInput.add_member(:server_side_encryption_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerSideEncryptionConfiguration, location_name: 'serverSideEncryptionConfiguration'))
    CreateAssistantInput.type = Types::CreateAssistantInput
    CreateAssistantOutput.add_member(:assistant, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssistantData, location_name: 'assistant'))
    CreateAssistantOutput.type = Types::CreateAssistantOutput
    CreateContentAssociationRequest.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#idempotencyToken" => {}}))
    CreateContentAssociationRequest.add_member(:knowledge_base_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'knowledgeBaseId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateContentAssociationRequest.add_member(:content_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'contentId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateContentAssociationRequest.add_member(:association_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContentAssociationType, location_name: 'associationType', traits: {"smithy.api#required" => {}}))
    CreateContentAssociationRequest.add_member(:association, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContentAssociationContents, location_name: 'association', traits: {"smithy.api#required" => {}}))
    CreateContentAssociationRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags'))
    CreateContentAssociationRequest.type = Types::CreateContentAssociationRequest
    CreateContentAssociationResponse.add_member(:content_association, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContentAssociationData, location_name: 'contentAssociation'))
    CreateContentAssociationResponse.type = Types::CreateContentAssociationResponse
    CreateContentInput.add_member(:knowledge_base_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'knowledgeBaseId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateContentInput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#required" => {}}))
    CreateContentInput.add_member(:title, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContentTitle, location_name: 'title'))
    CreateContentInput.add_member(:override_link_out_uri, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Uri, location_name: 'overrideLinkOutUri'))
    CreateContentInput.add_member(:metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContentMetadata, location_name: 'metadata'))
    CreateContentInput.add_member(:upload_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UploadId, location_name: 'uploadId', traits: {"smithy.api#required" => {}}))
    CreateContentInput.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'clientToken', traits: {"smithy.api#idempotencyToken" => {}}))
    CreateContentInput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags'))
    CreateContentInput.type = Types::CreateContentInput
    CreateContentOutput.add_member(:content, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContentData, location_name: 'content'))
    CreateContentOutput.type = Types::CreateContentOutput
    CreateKnowledgeBaseInput.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'clientToken', traits: {"smithy.api#idempotencyToken" => {}}))
    CreateKnowledgeBaseInput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#required" => {}}))
    CreateKnowledgeBaseInput.add_member(:knowledge_base_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KnowledgeBaseType, location_name: 'knowledgeBaseType', traits: {"smithy.api#required" => {}}))
    CreateKnowledgeBaseInput.add_member(:source_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SourceConfiguration, location_name: 'sourceConfiguration'))
    CreateKnowledgeBaseInput.add_member(:rendering_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RenderingConfiguration, location_name: 'renderingConfiguration'))
    CreateKnowledgeBaseInput.add_member(:vector_ingestion_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VectorIngestionConfiguration, location_name: 'vectorIngestionConfiguration'))
    CreateKnowledgeBaseInput.add_member(:server_side_encryption_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerSideEncryptionConfiguration, location_name: 'serverSideEncryptionConfiguration'))
    CreateKnowledgeBaseInput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description'))
    CreateKnowledgeBaseInput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags'))
    CreateKnowledgeBaseInput.type = Types::CreateKnowledgeBaseInput
    CreateKnowledgeBaseOutput.add_member(:knowledge_base, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KnowledgeBaseData, location_name: 'knowledgeBase'))
    CreateKnowledgeBaseOutput.type = Types::CreateKnowledgeBaseOutput
    CreateMessageTemplateAttachmentRequest.add_member(:knowledge_base_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'knowledgeBaseId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateMessageTemplateAttachmentRequest.add_member(:message_template_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArnOrEitherWithQualifier, location_name: 'messageTemplateId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateMessageTemplateAttachmentRequest.add_member(:content_disposition, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContentDisposition, location_name: 'contentDisposition', traits: {"smithy.api#required" => {}}))
    CreateMessageTemplateAttachmentRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttachmentFileName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    CreateMessageTemplateAttachmentRequest.add_member(:body, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyUnlimitedString, location_name: 'body', traits: {"smithy.api#required" => {}}))
    CreateMessageTemplateAttachmentRequest.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken'))
    CreateMessageTemplateAttachmentRequest.type = Types::CreateMessageTemplateAttachmentRequest
    CreateMessageTemplateAttachmentResponse.add_member(:attachment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateAttachment, location_name: 'attachment'))
    CreateMessageTemplateAttachmentResponse.type = Types::CreateMessageTemplateAttachmentResponse
    CreateMessageTemplateRequest.add_member(:knowledge_base_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'knowledgeBaseId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateMessageTemplateRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#required" => {}}))
    CreateMessageTemplateRequest.add_member(:content, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateContentProvider, location_name: 'content', traits: {"smithy.api#required" => {}}))
    CreateMessageTemplateRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description'))
    CreateMessageTemplateRequest.add_member(:channel_subtype, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelSubtype, location_name: 'channelSubtype', traits: {"smithy.api#required" => {}}))
    CreateMessageTemplateRequest.add_member(:language, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LanguageCode, location_name: 'language'))
    CreateMessageTemplateRequest.add_member(:default_attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateAttributes, location_name: 'defaultAttributes'))
    CreateMessageTemplateRequest.add_member(:grouping_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GroupingConfiguration, location_name: 'groupingConfiguration'))
    CreateMessageTemplateRequest.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#idempotencyToken" => {}}))
    CreateMessageTemplateRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags'))
    CreateMessageTemplateRequest.type = Types::CreateMessageTemplateRequest
    CreateMessageTemplateResponse.add_member(:message_template, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateData, location_name: 'messageTemplate'))
    CreateMessageTemplateResponse.type = Types::CreateMessageTemplateResponse
    CreateMessageTemplateVersionRequest.add_member(:knowledge_base_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'knowledgeBaseId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateMessageTemplateVersionRequest.add_member(:message_template_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArnOrEitherWithQualifier, location_name: 'messageTemplateId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateMessageTemplateVersionRequest.add_member(:message_template_content_sha256, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateContentSha256, location_name: 'messageTemplateContentSha256'))
    CreateMessageTemplateVersionRequest.type = Types::CreateMessageTemplateVersionRequest
    CreateMessageTemplateVersionResponse.add_member(:message_template, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExtendedMessageTemplateData, location_name: 'messageTemplate'))
    CreateMessageTemplateVersionResponse.type = Types::CreateMessageTemplateVersionResponse
    CreateQuickResponseRequest.add_member(:knowledge_base_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'knowledgeBaseId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateQuickResponseRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QuickResponseName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    CreateQuickResponseRequest.add_member(:content, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QuickResponseDataProvider, location_name: 'content', traits: {"smithy.api#required" => {}}))
    CreateQuickResponseRequest.add_member(:content_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QuickResponseType, location_name: 'contentType'))
    CreateQuickResponseRequest.add_member(:grouping_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GroupingConfiguration, location_name: 'groupingConfiguration'))
    CreateQuickResponseRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QuickResponseDescription, location_name: 'description'))
    CreateQuickResponseRequest.add_member(:shortcut_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ShortCutKey, location_name: 'shortcutKey'))
    CreateQuickResponseRequest.add_member(:is_active, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'isActive'))
    CreateQuickResponseRequest.add_member(:channels, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Channels, location_name: 'channels'))
    CreateQuickResponseRequest.add_member(:language, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LanguageCode, location_name: 'language'))
    CreateQuickResponseRequest.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'clientToken', traits: {"smithy.api#idempotencyToken" => {}}))
    CreateQuickResponseRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags'))
    CreateQuickResponseRequest.type = Types::CreateQuickResponseRequest
    CreateQuickResponseResponse.add_member(:quick_response, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QuickResponseData, location_name: 'quickResponse'))
    CreateQuickResponseResponse.type = Types::CreateQuickResponseResponse
    CreateSessionInput.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#idempotencyToken" => {}}))
    CreateSessionInput.add_member(:assistant_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'assistantId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateSessionInput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#required" => {}}))
    CreateSessionInput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description'))
    CreateSessionInput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags'))
    CreateSessionInput.add_member(:tag_filter, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagFilter, location_name: 'tagFilter'))
    CreateSessionInput.add_member(:ai_agent_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AIAgentConfigurationMap, location_name: 'aiAgentConfiguration'))
    CreateSessionInput.add_member(:contact_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericArn, location_name: 'contactArn'))
    CreateSessionInput.type = Types::CreateSessionInput
    CreateSessionOutput.add_member(:session, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SessionData, location_name: 'session'))
    CreateSessionOutput.type = Types::CreateSessionOutput
    CustomAttributes.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateAttributeKey)
    CustomAttributes.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateAttributeValue)
    CustomerProfileAttributes.add_member(:profile_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateAttributeValue, location_name: 'profileId'))
    CustomerProfileAttributes.add_member(:profile_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateAttributeValue, location_name: 'profileARN'))
    CustomerProfileAttributes.add_member(:first_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateAttributeValue, location_name: 'firstName'))
    CustomerProfileAttributes.add_member(:middle_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateAttributeValue, location_name: 'middleName'))
    CustomerProfileAttributes.add_member(:last_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateAttributeValue, location_name: 'lastName'))
    CustomerProfileAttributes.add_member(:account_number, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateAttributeValue, location_name: 'accountNumber'))
    CustomerProfileAttributes.add_member(:email_address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateAttributeValue, location_name: 'emailAddress'))
    CustomerProfileAttributes.add_member(:phone_number, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateAttributeValue, location_name: 'phoneNumber'))
    CustomerProfileAttributes.add_member(:additional_information, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateAttributeValue, location_name: 'additionalInformation'))
    CustomerProfileAttributes.add_member(:party_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateAttributeValue, location_name: 'partyType'))
    CustomerProfileAttributes.add_member(:business_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateAttributeValue, location_name: 'businessName'))
    CustomerProfileAttributes.add_member(:birth_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateAttributeValue, location_name: 'birthDate'))
    CustomerProfileAttributes.add_member(:gender, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateAttributeValue, location_name: 'gender'))
    CustomerProfileAttributes.add_member(:mobile_phone_number, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateAttributeValue, location_name: 'mobilePhoneNumber'))
    CustomerProfileAttributes.add_member(:home_phone_number, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateAttributeValue, location_name: 'homePhoneNumber'))
    CustomerProfileAttributes.add_member(:business_phone_number, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateAttributeValue, location_name: 'businessPhoneNumber'))
    CustomerProfileAttributes.add_member(:business_email_address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateAttributeValue, location_name: 'businessEmailAddress'))
    CustomerProfileAttributes.add_member(:address1, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateAttributeValue, location_name: 'address1'))
    CustomerProfileAttributes.add_member(:address2, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateAttributeValue, location_name: 'address2'))
    CustomerProfileAttributes.add_member(:address3, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateAttributeValue, location_name: 'address3'))
    CustomerProfileAttributes.add_member(:address4, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateAttributeValue, location_name: 'address4'))
    CustomerProfileAttributes.add_member(:city, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateAttributeValue, location_name: 'city'))
    CustomerProfileAttributes.add_member(:county, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateAttributeValue, location_name: 'county'))
    CustomerProfileAttributes.add_member(:country, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateAttributeValue, location_name: 'country'))
    CustomerProfileAttributes.add_member(:postal_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateAttributeValue, location_name: 'postalCode'))
    CustomerProfileAttributes.add_member(:province, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateAttributeValue, location_name: 'province'))
    CustomerProfileAttributes.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateAttributeValue, location_name: 'state'))
    CustomerProfileAttributes.add_member(:shipping_address1, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateAttributeValue, location_name: 'shippingAddress1'))
    CustomerProfileAttributes.add_member(:shipping_address2, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateAttributeValue, location_name: 'shippingAddress2'))
    CustomerProfileAttributes.add_member(:shipping_address3, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateAttributeValue, location_name: 'shippingAddress3'))
    CustomerProfileAttributes.add_member(:shipping_address4, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateAttributeValue, location_name: 'shippingAddress4'))
    CustomerProfileAttributes.add_member(:shipping_city, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateAttributeValue, location_name: 'shippingCity'))
    CustomerProfileAttributes.add_member(:shipping_county, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateAttributeValue, location_name: 'shippingCounty'))
    CustomerProfileAttributes.add_member(:shipping_country, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateAttributeValue, location_name: 'shippingCountry'))
    CustomerProfileAttributes.add_member(:shipping_postal_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateAttributeValue, location_name: 'shippingPostalCode'))
    CustomerProfileAttributes.add_member(:shipping_province, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateAttributeValue, location_name: 'shippingProvince'))
    CustomerProfileAttributes.add_member(:shipping_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateAttributeValue, location_name: 'shippingState'))
    CustomerProfileAttributes.add_member(:mailing_address1, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateAttributeValue, location_name: 'mailingAddress1'))
    CustomerProfileAttributes.add_member(:mailing_address2, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateAttributeValue, location_name: 'mailingAddress2'))
    CustomerProfileAttributes.add_member(:mailing_address3, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateAttributeValue, location_name: 'mailingAddress3'))
    CustomerProfileAttributes.add_member(:mailing_address4, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateAttributeValue, location_name: 'mailingAddress4'))
    CustomerProfileAttributes.add_member(:mailing_city, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateAttributeValue, location_name: 'mailingCity'))
    CustomerProfileAttributes.add_member(:mailing_county, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateAttributeValue, location_name: 'mailingCounty'))
    CustomerProfileAttributes.add_member(:mailing_country, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateAttributeValue, location_name: 'mailingCountry'))
    CustomerProfileAttributes.add_member(:mailing_postal_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateAttributeValue, location_name: 'mailingPostalCode'))
    CustomerProfileAttributes.add_member(:mailing_province, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateAttributeValue, location_name: 'mailingProvince'))
    CustomerProfileAttributes.add_member(:mailing_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateAttributeValue, location_name: 'mailingState'))
    CustomerProfileAttributes.add_member(:billing_address1, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateAttributeValue, location_name: 'billingAddress1'))
    CustomerProfileAttributes.add_member(:billing_address2, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateAttributeValue, location_name: 'billingAddress2'))
    CustomerProfileAttributes.add_member(:billing_address3, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateAttributeValue, location_name: 'billingAddress3'))
    CustomerProfileAttributes.add_member(:billing_address4, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateAttributeValue, location_name: 'billingAddress4'))
    CustomerProfileAttributes.add_member(:billing_city, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateAttributeValue, location_name: 'billingCity'))
    CustomerProfileAttributes.add_member(:billing_county, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateAttributeValue, location_name: 'billingCounty'))
    CustomerProfileAttributes.add_member(:billing_country, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateAttributeValue, location_name: 'billingCountry'))
    CustomerProfileAttributes.add_member(:billing_postal_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateAttributeValue, location_name: 'billingPostalCode'))
    CustomerProfileAttributes.add_member(:billing_province, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateAttributeValue, location_name: 'billingProvince'))
    CustomerProfileAttributes.add_member(:billing_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateAttributeValue, location_name: 'billingState'))
    CustomerProfileAttributes.add_member(:custom, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomAttributes, location_name: 'custom'))
    CustomerProfileAttributes.type = Types::CustomerProfileAttributes
    DataDetails.add_member(:content_data, Types::DataDetails::ContentData, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContentDataDetails, location_name: 'contentData'))
    DataDetails.add_member(:generative_data, Types::DataDetails::GenerativeData, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenerativeDataDetails, location_name: 'generativeData'))
    DataDetails.add_member(:intent_detected_data, Types::DataDetails::IntentDetectedData, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntentDetectedDataDetails, location_name: 'intentDetectedData'))
    DataDetails.add_member(:source_content_data, Types::DataDetails::SourceContentData, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SourceContentDataDetails, location_name: 'sourceContentData'))
    DataDetails.add_member(:generative_chunk_data, Types::DataDetails::GenerativeChunkData, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenerativeChunkDataDetails, location_name: 'generativeChunkData'))
    DataDetails.add_member(:email_response_chunk_data, Types::DataDetails::EmailResponseChunkData, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EmailResponseChunkDataDetails, location_name: 'emailResponseChunkData'))
    DataDetails.add_member(:email_overview_chunk_data, Types::DataDetails::EmailOverviewChunkData, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EmailOverviewChunkDataDetails, location_name: 'emailOverviewChunkData'))
    DataDetails.add_member(:email_generative_answer_chunk_data, Types::DataDetails::EmailGenerativeAnswerChunkData, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EmailGenerativeAnswerChunkDataDetails, location_name: 'emailGenerativeAnswerChunkData'))
    DataDetails.add_member(:unknown, Types::DataDetails::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    DataDetails.type = Types::DataDetails
    DataReference.add_member(:content_reference, Types::DataReference::ContentReference, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContentReference, location_name: 'contentReference'))
    DataReference.add_member(:generative_reference, Types::DataReference::GenerativeReference, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenerativeReference, location_name: 'generativeReference'))
    DataReference.add_member(:unknown, Types::DataReference::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    DataReference.type = Types::DataReference
    DataSummary.add_member(:reference, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataReference, location_name: 'reference', traits: {"smithy.api#required" => {}}))
    DataSummary.add_member(:details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataDetails, location_name: 'details', traits: {"smithy.api#required" => {}}))
    DataSummary.type = Types::DataSummary
    DataSummaryList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataSummary)
    DeactivateMessageTemplateRequest.add_member(:knowledge_base_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'knowledgeBaseId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeactivateMessageTemplateRequest.add_member(:message_template_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArnOrEitherWithQualifier, location_name: 'messageTemplateId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeactivateMessageTemplateRequest.add_member(:version_number, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'versionNumber', traits: {"smithy.api#required" => {}}))
    DeactivateMessageTemplateRequest.type = Types::DeactivateMessageTemplateRequest
    DeactivateMessageTemplateResponse.add_member(:message_template_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ArnWithQualifier, location_name: 'messageTemplateArn', traits: {"smithy.api#required" => {}}))
    DeactivateMessageTemplateResponse.add_member(:message_template_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'messageTemplateId', traits: {"smithy.api#required" => {}}))
    DeactivateMessageTemplateResponse.add_member(:version_number, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'versionNumber', traits: {"smithy.api#required" => {}}))
    DeactivateMessageTemplateResponse.type = Types::DeactivateMessageTemplateResponse
    DeleteAIAgentRequest.add_member(:assistant_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'assistantId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAIAgentRequest.add_member(:ai_agent_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArnOrEitherWithQualifier, location_name: 'aiAgentId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAIAgentRequest.type = Types::DeleteAIAgentRequest
    DeleteAIAgentResponse.type = Types::DeleteAIAgentResponse
    DeleteAIAgentVersionRequest.add_member(:assistant_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'assistantId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAIAgentVersionRequest.add_member(:ai_agent_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArnOrEitherWithQualifier, location_name: 'aiAgentId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAIAgentVersionRequest.add_member(:version_number, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'versionNumber', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAIAgentVersionRequest.type = Types::DeleteAIAgentVersionRequest
    DeleteAIAgentVersionResponse.type = Types::DeleteAIAgentVersionResponse
    DeleteAIGuardrailRequest.add_member(:assistant_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'assistantId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAIGuardrailRequest.add_member(:ai_guardrail_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArnOrEitherWithQualifier, location_name: 'aiGuardrailId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAIGuardrailRequest.type = Types::DeleteAIGuardrailRequest
    DeleteAIGuardrailResponse.type = Types::DeleteAIGuardrailResponse
    DeleteAIGuardrailVersionRequest.add_member(:assistant_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'assistantId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAIGuardrailVersionRequest.add_member(:ai_guardrail_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArnOrEitherWithQualifier, location_name: 'aiGuardrailId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAIGuardrailVersionRequest.add_member(:version_number, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'versionNumber', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAIGuardrailVersionRequest.type = Types::DeleteAIGuardrailVersionRequest
    DeleteAIGuardrailVersionResponse.type = Types::DeleteAIGuardrailVersionResponse
    DeleteAIPromptRequest.add_member(:assistant_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'assistantId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAIPromptRequest.add_member(:ai_prompt_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArnOrEitherWithQualifier, location_name: 'aiPromptId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAIPromptRequest.type = Types::DeleteAIPromptRequest
    DeleteAIPromptResponse.type = Types::DeleteAIPromptResponse
    DeleteAIPromptVersionRequest.add_member(:assistant_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'assistantId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAIPromptVersionRequest.add_member(:ai_prompt_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArnOrEitherWithQualifier, location_name: 'aiPromptId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAIPromptVersionRequest.add_member(:version_number, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'versionNumber', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAIPromptVersionRequest.type = Types::DeleteAIPromptVersionRequest
    DeleteAIPromptVersionResponse.type = Types::DeleteAIPromptVersionResponse
    DeleteAssistantAssociationInput.add_member(:assistant_association_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'assistantAssociationId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAssistantAssociationInput.add_member(:assistant_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'assistantId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAssistantAssociationInput.type = Types::DeleteAssistantAssociationInput
    DeleteAssistantAssociationOutput.type = Types::DeleteAssistantAssociationOutput
    DeleteAssistantInput.add_member(:assistant_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'assistantId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAssistantInput.type = Types::DeleteAssistantInput
    DeleteAssistantOutput.type = Types::DeleteAssistantOutput
    DeleteContentAssociationRequest.add_member(:knowledge_base_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'knowledgeBaseId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteContentAssociationRequest.add_member(:content_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'contentId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteContentAssociationRequest.add_member(:content_association_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'contentAssociationId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteContentAssociationRequest.type = Types::DeleteContentAssociationRequest
    DeleteContentAssociationResponse.type = Types::DeleteContentAssociationResponse
    DeleteContentInput.add_member(:knowledge_base_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'knowledgeBaseId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteContentInput.add_member(:content_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'contentId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteContentInput.type = Types::DeleteContentInput
    DeleteContentOutput.type = Types::DeleteContentOutput
    DeleteImportJobRequest.add_member(:knowledge_base_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'knowledgeBaseId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteImportJobRequest.add_member(:import_job_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'importJobId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteImportJobRequest.type = Types::DeleteImportJobRequest
    DeleteImportJobResponse.type = Types::DeleteImportJobResponse
    DeleteKnowledgeBaseInput.add_member(:knowledge_base_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'knowledgeBaseId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteKnowledgeBaseInput.type = Types::DeleteKnowledgeBaseInput
    DeleteKnowledgeBaseOutput.type = Types::DeleteKnowledgeBaseOutput
    DeleteMessageTemplateAttachmentRequest.add_member(:knowledge_base_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'knowledgeBaseId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteMessageTemplateAttachmentRequest.add_member(:message_template_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArnOrEitherWithQualifier, location_name: 'messageTemplateId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteMessageTemplateAttachmentRequest.add_member(:attachment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'attachmentId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteMessageTemplateAttachmentRequest.type = Types::DeleteMessageTemplateAttachmentRequest
    DeleteMessageTemplateAttachmentResponse.type = Types::DeleteMessageTemplateAttachmentResponse
    DeleteMessageTemplateRequest.add_member(:knowledge_base_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'knowledgeBaseId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteMessageTemplateRequest.add_member(:message_template_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArnOrEitherWithQualifier, location_name: 'messageTemplateId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteMessageTemplateRequest.type = Types::DeleteMessageTemplateRequest
    DeleteMessageTemplateResponse.type = Types::DeleteMessageTemplateResponse
    DeleteQuickResponseRequest.add_member(:knowledge_base_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'knowledgeBaseId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteQuickResponseRequest.add_member(:quick_response_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'quickResponseId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteQuickResponseRequest.type = Types::DeleteQuickResponseRequest
    DeleteQuickResponseResponse.type = Types::DeleteQuickResponseResponse
    DependencyFailedException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message'))
    DependencyFailedException.type = Types::DependencyFailedException
    Document.add_member(:content_reference, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContentReference, location_name: 'contentReference', traits: {"smithy.api#required" => {}}))
    Document.add_member(:title, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentText, location_name: 'title'))
    Document.add_member(:excerpt, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentText, location_name: 'excerpt'))
    Document.type = Types::Document
    DocumentText.add_member(:text, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveString, location_name: 'text'))
    DocumentText.add_member(:highlights, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Highlights, location_name: 'highlights'))
    DocumentText.type = Types::DocumentText
    EmailGenerativeAnswerAIAgentConfiguration.add_member(:email_generative_answer_ai_prompt_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UuidWithQualifier, location_name: 'emailGenerativeAnswerAIPromptId'))
    EmailGenerativeAnswerAIAgentConfiguration.add_member(:email_query_reformulation_ai_prompt_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UuidWithQualifier, location_name: 'emailQueryReformulationAIPromptId'))
    EmailGenerativeAnswerAIAgentConfiguration.add_member(:locale, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'locale'))
    EmailGenerativeAnswerAIAgentConfiguration.add_member(:association_configurations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssociationConfigurationList, location_name: 'associationConfigurations'))
    EmailGenerativeAnswerAIAgentConfiguration.type = Types::EmailGenerativeAnswerAIAgentConfiguration
    EmailGenerativeAnswerChunkDataDetails.add_member(:completion, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptySensitiveString, location_name: 'completion'))
    EmailGenerativeAnswerChunkDataDetails.add_member(:references, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataSummaryList, location_name: 'references'))
    EmailGenerativeAnswerChunkDataDetails.add_member(:next_chunk_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextChunkToken'))
    EmailGenerativeAnswerChunkDataDetails.type = Types::EmailGenerativeAnswerChunkDataDetails
    EmailHeader.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EmailHeaderKey, location_name: 'name'))
    EmailHeader.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EmailHeaderValue, location_name: 'value'))
    EmailHeader.type = Types::EmailHeader
    EmailHeaders.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EmailHeader)
    EmailMessageTemplateContent.add_member(:subject, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyUnlimitedString, location_name: 'subject'))
    EmailMessageTemplateContent.add_member(:body, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EmailMessageTemplateContentBody, location_name: 'body'))
    EmailMessageTemplateContent.add_member(:headers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EmailHeaders, location_name: 'headers'))
    EmailMessageTemplateContent.type = Types::EmailMessageTemplateContent
    EmailMessageTemplateContentBody.add_member(:plain_text, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateBodyContentProvider, location_name: 'plainText'))
    EmailMessageTemplateContentBody.add_member(:html, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateBodyContentProvider, location_name: 'html'))
    EmailMessageTemplateContentBody.type = Types::EmailMessageTemplateContentBody
    EmailOverviewAIAgentConfiguration.add_member(:email_overview_ai_prompt_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UuidWithQualifier, location_name: 'emailOverviewAIPromptId'))
    EmailOverviewAIAgentConfiguration.add_member(:locale, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'locale'))
    EmailOverviewAIAgentConfiguration.type = Types::EmailOverviewAIAgentConfiguration
    EmailOverviewChunkDataDetails.add_member(:completion, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptySensitiveString, location_name: 'completion'))
    EmailOverviewChunkDataDetails.add_member(:next_chunk_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextChunkToken'))
    EmailOverviewChunkDataDetails.type = Types::EmailOverviewChunkDataDetails
    EmailResponseAIAgentConfiguration.add_member(:email_response_ai_prompt_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UuidWithQualifier, location_name: 'emailResponseAIPromptId'))
    EmailResponseAIAgentConfiguration.add_member(:email_query_reformulation_ai_prompt_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UuidWithQualifier, location_name: 'emailQueryReformulationAIPromptId'))
    EmailResponseAIAgentConfiguration.add_member(:locale, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'locale'))
    EmailResponseAIAgentConfiguration.add_member(:association_configurations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssociationConfigurationList, location_name: 'associationConfigurations'))
    EmailResponseAIAgentConfiguration.type = Types::EmailResponseAIAgentConfiguration
    EmailResponseChunkDataDetails.add_member(:completion, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptySensitiveString, location_name: 'completion'))
    EmailResponseChunkDataDetails.add_member(:next_chunk_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextChunkToken'))
    EmailResponseChunkDataDetails.type = Types::EmailResponseChunkDataDetails
    ExtendedMessageTemplateData.add_member(:message_template_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ArnWithQualifier, location_name: 'messageTemplateArn', traits: {"smithy.api#required" => {}}))
    ExtendedMessageTemplateData.add_member(:message_template_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'messageTemplateId', traits: {"smithy.api#required" => {}}))
    ExtendedMessageTemplateData.add_member(:knowledge_base_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'knowledgeBaseArn', traits: {"smithy.api#required" => {}}))
    ExtendedMessageTemplateData.add_member(:knowledge_base_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'knowledgeBaseId', traits: {"smithy.api#required" => {}}))
    ExtendedMessageTemplateData.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#required" => {}}))
    ExtendedMessageTemplateData.add_member(:channel_subtype, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelSubtype, location_name: 'channelSubtype', traits: {"smithy.api#required" => {}}))
    ExtendedMessageTemplateData.add_member(:created_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdTime', traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    ExtendedMessageTemplateData.add_member(:last_modified_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'lastModifiedTime', traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    ExtendedMessageTemplateData.add_member(:last_modified_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericArn, location_name: 'lastModifiedBy', traits: {"smithy.api#required" => {}}))
    ExtendedMessageTemplateData.add_member(:content, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateContentProvider, location_name: 'content', traits: {"smithy.api#required" => {}}))
    ExtendedMessageTemplateData.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description'))
    ExtendedMessageTemplateData.add_member(:language, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LanguageCode, location_name: 'language'))
    ExtendedMessageTemplateData.add_member(:grouping_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GroupingConfiguration, location_name: 'groupingConfiguration'))
    ExtendedMessageTemplateData.add_member(:default_attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateAttributes, location_name: 'defaultAttributes'))
    ExtendedMessageTemplateData.add_member(:attribute_types, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateAttributeTypeList, location_name: 'attributeTypes'))
    ExtendedMessageTemplateData.add_member(:attachments, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateAttachmentList, location_name: 'attachments'))
    ExtendedMessageTemplateData.add_member(:is_active, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'isActive'))
    ExtendedMessageTemplateData.add_member(:version_number, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'versionNumber'))
    ExtendedMessageTemplateData.add_member(:message_template_content_sha256, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateContentSha256, location_name: 'messageTemplateContentSha256', traits: {"smithy.api#required" => {}}))
    ExtendedMessageTemplateData.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags'))
    ExtendedMessageTemplateData.type = Types::ExtendedMessageTemplateData
    ExternalSourceConfiguration.add_member(:source, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExternalSource, location_name: 'source', traits: {"smithy.api#required" => {}}))
    ExternalSourceConfiguration.add_member(:configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Configuration, location_name: 'configuration', traits: {"smithy.api#required" => {}}))
    ExternalSourceConfiguration.type = Types::ExternalSourceConfiguration
    FailureReason.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString)
    Filter.add_member(:field, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterField, location_name: 'field', traits: {"smithy.api#required" => {}}))
    Filter.add_member(:operator, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterOperator, location_name: 'operator', traits: {"smithy.api#required" => {}}))
    Filter.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'value', traits: {"smithy.api#required" => {}}))
    Filter.type = Types::Filter
    FilterList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Filter)
    FixedSizeChunkingConfiguration.add_member(:max_tokens, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxTokens', traits: {"smithy.api#range" => {"min" => 1}, "smithy.api#required" => {}}))
    FixedSizeChunkingConfiguration.add_member(:overlap_percentage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'overlapPercentage', traits: {"smithy.api#range" => {"min" => 1, "max" => 99}, "smithy.api#required" => {}}))
    FixedSizeChunkingConfiguration.type = Types::FixedSizeChunkingConfiguration
    GenerativeChunkDataDetails.add_member(:completion, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveString, location_name: 'completion'))
    GenerativeChunkDataDetails.add_member(:references, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataSummaryList, location_name: 'references'))
    GenerativeChunkDataDetails.add_member(:next_chunk_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextChunkToken'))
    GenerativeChunkDataDetails.type = Types::GenerativeChunkDataDetails
    GenerativeContentFeedbackData.add_member(:relevance, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Relevance, location_name: 'relevance', traits: {"smithy.api#required" => {}}))
    GenerativeContentFeedbackData.type = Types::GenerativeContentFeedbackData
    GenerativeDataDetails.add_member(:completion, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveString, location_name: 'completion', traits: {"smithy.api#required" => {}}))
    GenerativeDataDetails.add_member(:references, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataSummaryList, location_name: 'references', traits: {"smithy.api#required" => {}}))
    GenerativeDataDetails.add_member(:ranking_data, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RankingData, location_name: 'rankingData', traits: {"smithy.api#required" => {}}))
    GenerativeDataDetails.type = Types::GenerativeDataDetails
    GenerativeReference.add_member(:model_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LlmModelId, location_name: 'modelId'))
    GenerativeReference.add_member(:generation_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'generationId'))
    GenerativeReference.type = Types::GenerativeReference
    GetAIAgentRequest.add_member(:assistant_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'assistantId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAIAgentRequest.add_member(:ai_agent_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArnOrEitherWithQualifier, location_name: 'aiAgentId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAIAgentRequest.type = Types::GetAIAgentRequest
    GetAIAgentResponse.add_member(:ai_agent, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AIAgentData, location_name: 'aiAgent'))
    GetAIAgentResponse.add_member(:version_number, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'versionNumber'))
    GetAIAgentResponse.type = Types::GetAIAgentResponse
    GetAIGuardrailRequest.add_member(:assistant_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'assistantId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAIGuardrailRequest.add_member(:ai_guardrail_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArnOrEitherWithQualifier, location_name: 'aiGuardrailId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAIGuardrailRequest.type = Types::GetAIGuardrailRequest
    GetAIGuardrailResponse.add_member(:ai_guardrail, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AIGuardrailData, location_name: 'aiGuardrail'))
    GetAIGuardrailResponse.add_member(:version_number, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'versionNumber'))
    GetAIGuardrailResponse.type = Types::GetAIGuardrailResponse
    GetAIPromptRequest.add_member(:assistant_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'assistantId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAIPromptRequest.add_member(:ai_prompt_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArnOrEitherWithQualifier, location_name: 'aiPromptId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAIPromptRequest.type = Types::GetAIPromptRequest
    GetAIPromptResponse.add_member(:ai_prompt, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AIPromptData, location_name: 'aiPrompt'))
    GetAIPromptResponse.add_member(:version_number, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'versionNumber'))
    GetAIPromptResponse.type = Types::GetAIPromptResponse
    GetAssistantAssociationInput.add_member(:assistant_association_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'assistantAssociationId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAssistantAssociationInput.add_member(:assistant_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'assistantId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAssistantAssociationInput.type = Types::GetAssistantAssociationInput
    GetAssistantAssociationOutput.add_member(:assistant_association, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssistantAssociationData, location_name: 'assistantAssociation'))
    GetAssistantAssociationOutput.type = Types::GetAssistantAssociationOutput
    GetAssistantInput.add_member(:assistant_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'assistantId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAssistantInput.type = Types::GetAssistantInput
    GetAssistantOutput.add_member(:assistant, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssistantData, location_name: 'assistant'))
    GetAssistantOutput.type = Types::GetAssistantOutput
    GetContentAssociationRequest.add_member(:knowledge_base_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'knowledgeBaseId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetContentAssociationRequest.add_member(:content_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'contentId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetContentAssociationRequest.add_member(:content_association_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'contentAssociationId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetContentAssociationRequest.type = Types::GetContentAssociationRequest
    GetContentAssociationResponse.add_member(:content_association, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContentAssociationData, location_name: 'contentAssociation'))
    GetContentAssociationResponse.type = Types::GetContentAssociationResponse
    GetContentInput.add_member(:content_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'contentId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetContentInput.add_member(:knowledge_base_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'knowledgeBaseId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetContentInput.type = Types::GetContentInput
    GetContentOutput.add_member(:content, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContentData, location_name: 'content'))
    GetContentOutput.type = Types::GetContentOutput
    GetContentSummaryInput.add_member(:content_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'contentId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetContentSummaryInput.add_member(:knowledge_base_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'knowledgeBaseId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetContentSummaryInput.type = Types::GetContentSummaryInput
    GetContentSummaryOutput.add_member(:content_summary, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContentSummary, location_name: 'contentSummary'))
    GetContentSummaryOutput.type = Types::GetContentSummaryOutput
    GetImportJobRequest.add_member(:import_job_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'importJobId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetImportJobRequest.add_member(:knowledge_base_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'knowledgeBaseId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetImportJobRequest.type = Types::GetImportJobRequest
    GetImportJobResponse.add_member(:import_job, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImportJobData, location_name: 'importJob'))
    GetImportJobResponse.type = Types::GetImportJobResponse
    GetKnowledgeBaseInput.add_member(:knowledge_base_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'knowledgeBaseId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetKnowledgeBaseInput.type = Types::GetKnowledgeBaseInput
    GetKnowledgeBaseOutput.add_member(:knowledge_base, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KnowledgeBaseData, location_name: 'knowledgeBase'))
    GetKnowledgeBaseOutput.type = Types::GetKnowledgeBaseOutput
    GetMessageTemplateRequest.add_member(:message_template_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArnOrEitherWithQualifier, location_name: 'messageTemplateId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetMessageTemplateRequest.add_member(:knowledge_base_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'knowledgeBaseId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetMessageTemplateRequest.type = Types::GetMessageTemplateRequest
    GetMessageTemplateResponse.add_member(:message_template, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExtendedMessageTemplateData, location_name: 'messageTemplate'))
    GetMessageTemplateResponse.type = Types::GetMessageTemplateResponse
    GetNextMessageRequest.add_member(:assistant_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'assistantId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetNextMessageRequest.add_member(:session_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'sessionId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetNextMessageRequest.add_member(:next_message_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextMessageToken', traits: {"smithy.api#httpQuery" => "nextMessageToken", "smithy.api#required" => {}}))
    GetNextMessageRequest.type = Types::GetNextMessageRequest
    GetNextMessageResponse.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageType, location_name: 'type', traits: {"smithy.api#required" => {}}))
    GetNextMessageResponse.add_member(:response, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageOutput, location_name: 'response', traits: {"smithy.api#required" => {}}))
    GetNextMessageResponse.add_member(:request_message_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'requestMessageId', traits: {"smithy.api#required" => {}}))
    GetNextMessageResponse.add_member(:conversation_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConversationState, location_name: 'conversationState', traits: {"smithy.api#required" => {}}))
    GetNextMessageResponse.add_member(:next_message_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextMessageToken'))
    GetNextMessageResponse.add_member(:conversation_session_data, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RuntimeSessionDataList, location_name: 'conversationSessionData'))
    GetNextMessageResponse.type = Types::GetNextMessageResponse
    GetQuickResponseRequest.add_member(:quick_response_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'quickResponseId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetQuickResponseRequest.add_member(:knowledge_base_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'knowledgeBaseId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetQuickResponseRequest.type = Types::GetQuickResponseRequest
    GetQuickResponseResponse.add_member(:quick_response, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QuickResponseData, location_name: 'quickResponse'))
    GetQuickResponseResponse.type = Types::GetQuickResponseResponse
    GetRecommendationsInput.add_member(:assistant_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'assistantId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetRecommendationsInput.add_member(:session_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'sessionId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetRecommendationsInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#httpQuery" => "maxResults"}))
    GetRecommendationsInput.add_member(:wait_time_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WaitTimeSeconds, location_name: 'waitTimeSeconds', traits: {"smithy.api#default" => 0, "smithy.api#httpQuery" => "waitTimeSeconds"}))
    GetRecommendationsInput.add_member(:next_chunk_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextChunkToken', traits: {"smithy.api#httpQuery" => "nextChunkToken"}))
    GetRecommendationsInput.type = Types::GetRecommendationsInput
    GetRecommendationsOutput.add_member(:recommendations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecommendationList, location_name: 'recommendations', traits: {"smithy.api#required" => {}}))
    GetRecommendationsOutput.add_member(:triggers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecommendationTriggerList, location_name: 'triggers'))
    GetRecommendationsOutput.type = Types::GetRecommendationsOutput
    GetSessionInput.add_member(:assistant_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'assistantId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSessionInput.add_member(:session_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'sessionId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSessionInput.type = Types::GetSessionInput
    GetSessionOutput.add_member(:session, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SessionData, location_name: 'session'))
    GetSessionOutput.type = Types::GetSessionOutput
    GroupingConfiguration.add_member(:criteria, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GroupingCriteria, location_name: 'criteria'))
    GroupingConfiguration.add_member(:values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GroupingValues, location_name: 'values'))
    GroupingConfiguration.type = Types::GroupingConfiguration
    GroupingValues.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GroupingValue)
    GuardrailContentFilterConfig.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailContentFilterType, location_name: 'type', traits: {"smithy.api#required" => {}}))
    GuardrailContentFilterConfig.add_member(:input_strength, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailFilterStrength, location_name: 'inputStrength', traits: {"smithy.api#required" => {}}))
    GuardrailContentFilterConfig.add_member(:output_strength, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailFilterStrength, location_name: 'outputStrength', traits: {"smithy.api#required" => {}}))
    GuardrailContentFilterConfig.type = Types::GuardrailContentFilterConfig
    GuardrailContentFiltersConfig.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailContentFilterConfig)
    GuardrailContextualGroundingFilterConfig.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailContextualGroundingFilterType, location_name: 'type', traits: {"smithy.api#required" => {}}))
    GuardrailContextualGroundingFilterConfig.add_member(:threshold, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailContextualGroundingFilterThreshold, location_name: 'threshold', traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    GuardrailContextualGroundingFilterConfig.type = Types::GuardrailContextualGroundingFilterConfig
    GuardrailContextualGroundingFiltersConfig.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailContextualGroundingFilterConfig)
    GuardrailManagedWordListsConfig.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailManagedWordsConfig)
    GuardrailManagedWordsConfig.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailManagedWordsType, location_name: 'type', traits: {"smithy.api#required" => {}}))
    GuardrailManagedWordsConfig.type = Types::GuardrailManagedWordsConfig
    GuardrailPiiEntitiesConfig.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailPiiEntityConfig)
    GuardrailPiiEntityConfig.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailPiiEntityType, location_name: 'type', traits: {"smithy.api#required" => {}}))
    GuardrailPiiEntityConfig.add_member(:action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailSensitiveInformationAction, location_name: 'action', traits: {"smithy.api#required" => {}}))
    GuardrailPiiEntityConfig.type = Types::GuardrailPiiEntityConfig
    GuardrailRegexConfig.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailRegexName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    GuardrailRegexConfig.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailRegexDescription, location_name: 'description'))
    GuardrailRegexConfig.add_member(:pattern, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailRegexPattern, location_name: 'pattern', traits: {"smithy.api#required" => {}}))
    GuardrailRegexConfig.add_member(:action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailSensitiveInformationAction, location_name: 'action', traits: {"smithy.api#required" => {}}))
    GuardrailRegexConfig.type = Types::GuardrailRegexConfig
    GuardrailRegexesConfig.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailRegexConfig)
    GuardrailTopicConfig.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailTopicName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    GuardrailTopicConfig.add_member(:definition, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailTopicDefinition, location_name: 'definition', traits: {"smithy.api#required" => {}}))
    GuardrailTopicConfig.add_member(:examples, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailTopicExamples, location_name: 'examples'))
    GuardrailTopicConfig.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailTopicType, location_name: 'type', traits: {"smithy.api#required" => {}}))
    GuardrailTopicConfig.type = Types::GuardrailTopicConfig
    GuardrailTopicExamples.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailTopicExample)
    GuardrailTopicsConfig.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailTopicConfig)
    GuardrailWordConfig.add_member(:text, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailWordText, location_name: 'text', traits: {"smithy.api#required" => {}}))
    GuardrailWordConfig.type = Types::GuardrailWordConfig
    GuardrailWordsConfig.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailWordConfig)
    Headers.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString)
    Headers.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString)
    HierarchicalChunkingConfiguration.add_member(:level_configurations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HierarchicalChunkingLevelConfigurations, location_name: 'levelConfigurations', traits: {"smithy.api#required" => {}}))
    HierarchicalChunkingConfiguration.add_member(:overlap_tokens, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'overlapTokens', traits: {"smithy.api#range" => {"min" => 1}, "smithy.api#required" => {}}))
    HierarchicalChunkingConfiguration.type = Types::HierarchicalChunkingConfiguration
    HierarchicalChunkingLevelConfiguration.add_member(:max_tokens, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxTokens', traits: {"smithy.api#range" => {"min" => 1, "max" => 8192}, "smithy.api#required" => {}}))
    HierarchicalChunkingLevelConfiguration.type = Types::HierarchicalChunkingLevelConfiguration
    HierarchicalChunkingLevelConfigurations.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: HierarchicalChunkingLevelConfiguration)
    Highlight.add_member(:begin_offset_inclusive, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HighlightOffset, location_name: 'beginOffsetInclusive', traits: {"smithy.api#default" => 0}))
    Highlight.add_member(:end_offset_exclusive, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HighlightOffset, location_name: 'endOffsetExclusive', traits: {"smithy.api#default" => 0}))
    Highlight.type = Types::Highlight
    Highlights.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Highlight)
    ImportJobData.add_member(:import_job_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'importJobId', traits: {"smithy.api#required" => {}}))
    ImportJobData.add_member(:knowledge_base_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'knowledgeBaseId', traits: {"smithy.api#required" => {}}))
    ImportJobData.add_member(:upload_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UploadId, location_name: 'uploadId', traits: {"smithy.api#required" => {}}))
    ImportJobData.add_member(:knowledge_base_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'knowledgeBaseArn', traits: {"smithy.api#required" => {}}))
    ImportJobData.add_member(:import_job_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImportJobType, location_name: 'importJobType', traits: {"smithy.api#required" => {}}))
    ImportJobData.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImportJobStatus, location_name: 'status', traits: {"smithy.api#required" => {}}))
    ImportJobData.add_member(:url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Url, location_name: 'url', traits: {"smithy.api#required" => {}}))
    ImportJobData.add_member(:failed_record_report, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Url, location_name: 'failedRecordReport'))
    ImportJobData.add_member(:url_expiry, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'urlExpiry', traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "epoch-seconds"}))
    ImportJobData.add_member(:created_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdTime', traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "epoch-seconds"}))
    ImportJobData.add_member(:last_modified_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'lastModifiedTime', traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "epoch-seconds"}))
    ImportJobData.add_member(:metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContentMetadata, location_name: 'metadata'))
    ImportJobData.add_member(:external_source_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExternalSourceConfiguration, location_name: 'externalSourceConfiguration'))
    ImportJobData.type = Types::ImportJobData
    ImportJobList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImportJobSummary)
    ImportJobSummary.add_member(:import_job_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'importJobId', traits: {"smithy.api#required" => {}}))
    ImportJobSummary.add_member(:knowledge_base_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'knowledgeBaseId', traits: {"smithy.api#required" => {}}))
    ImportJobSummary.add_member(:upload_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UploadId, location_name: 'uploadId', traits: {"smithy.api#required" => {}}))
    ImportJobSummary.add_member(:knowledge_base_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'knowledgeBaseArn', traits: {"smithy.api#required" => {}}))
    ImportJobSummary.add_member(:import_job_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImportJobType, location_name: 'importJobType', traits: {"smithy.api#required" => {}}))
    ImportJobSummary.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImportJobStatus, location_name: 'status', traits: {"smithy.api#required" => {}}))
    ImportJobSummary.add_member(:created_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdTime', traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "epoch-seconds"}))
    ImportJobSummary.add_member(:last_modified_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'lastModifiedTime', traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "epoch-seconds"}))
    ImportJobSummary.add_member(:metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContentMetadata, location_name: 'metadata'))
    ImportJobSummary.add_member(:external_source_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExternalSourceConfiguration, location_name: 'externalSourceConfiguration'))
    ImportJobSummary.type = Types::ImportJobSummary
    IntentDetectedDataDetails.add_member(:intent, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveString, location_name: 'intent', traits: {"smithy.api#required" => {}}))
    IntentDetectedDataDetails.add_member(:intent_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'intentId', traits: {"smithy.api#required" => {}}))
    IntentDetectedDataDetails.type = Types::IntentDetectedDataDetails
    IntentInputData.add_member(:intent_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'intentId', traits: {"smithy.api#required" => {}}))
    IntentInputData.type = Types::IntentInputData
    KnowledgeBaseAssociationConfigurationData.add_member(:content_tag_filter, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagFilter, location_name: 'contentTagFilter'))
    KnowledgeBaseAssociationConfigurationData.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults'))
    KnowledgeBaseAssociationConfigurationData.add_member(:override_knowledge_base_search_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KnowledgeBaseSearchType, location_name: 'overrideKnowledgeBaseSearchType'))
    KnowledgeBaseAssociationConfigurationData.type = Types::KnowledgeBaseAssociationConfigurationData
    KnowledgeBaseAssociationData.add_member(:knowledge_base_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'knowledgeBaseId'))
    KnowledgeBaseAssociationData.add_member(:knowledge_base_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'knowledgeBaseArn'))
    KnowledgeBaseAssociationData.type = Types::KnowledgeBaseAssociationData
    KnowledgeBaseData.add_member(:knowledge_base_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'knowledgeBaseId', traits: {"smithy.api#required" => {}}))
    KnowledgeBaseData.add_member(:knowledge_base_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'knowledgeBaseArn', traits: {"smithy.api#required" => {}}))
    KnowledgeBaseData.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#required" => {}}))
    KnowledgeBaseData.add_member(:knowledge_base_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KnowledgeBaseType, location_name: 'knowledgeBaseType', traits: {"smithy.api#required" => {}}))
    KnowledgeBaseData.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KnowledgeBaseStatus, location_name: 'status', traits: {"smithy.api#required" => {}}))
    KnowledgeBaseData.add_member(:last_content_modification_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'lastContentModificationTime', traits: {"smithy.api#timestampFormat" => "epoch-seconds"}))
    KnowledgeBaseData.add_member(:vector_ingestion_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VectorIngestionConfiguration, location_name: 'vectorIngestionConfiguration'))
    KnowledgeBaseData.add_member(:source_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SourceConfiguration, location_name: 'sourceConfiguration'))
    KnowledgeBaseData.add_member(:rendering_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RenderingConfiguration, location_name: 'renderingConfiguration'))
    KnowledgeBaseData.add_member(:server_side_encryption_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerSideEncryptionConfiguration, location_name: 'serverSideEncryptionConfiguration'))
    KnowledgeBaseData.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description'))
    KnowledgeBaseData.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags'))
    KnowledgeBaseData.add_member(:ingestion_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SyncStatus, location_name: 'ingestionStatus'))
    KnowledgeBaseData.add_member(:ingestion_failure_reasons, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FailureReason, location_name: 'ingestionFailureReasons'))
    KnowledgeBaseData.type = Types::KnowledgeBaseData
    KnowledgeBaseList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: KnowledgeBaseSummary)
    KnowledgeBaseSummary.add_member(:knowledge_base_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'knowledgeBaseId', traits: {"smithy.api#required" => {}}))
    KnowledgeBaseSummary.add_member(:knowledge_base_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'knowledgeBaseArn', traits: {"smithy.api#required" => {}}))
    KnowledgeBaseSummary.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#required" => {}}))
    KnowledgeBaseSummary.add_member(:knowledge_base_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KnowledgeBaseType, location_name: 'knowledgeBaseType', traits: {"smithy.api#required" => {}}))
    KnowledgeBaseSummary.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KnowledgeBaseStatus, location_name: 'status', traits: {"smithy.api#required" => {}}))
    KnowledgeBaseSummary.add_member(:source_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SourceConfiguration, location_name: 'sourceConfiguration'))
    KnowledgeBaseSummary.add_member(:vector_ingestion_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VectorIngestionConfiguration, location_name: 'vectorIngestionConfiguration'))
    KnowledgeBaseSummary.add_member(:rendering_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RenderingConfiguration, location_name: 'renderingConfiguration'))
    KnowledgeBaseSummary.add_member(:server_side_encryption_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerSideEncryptionConfiguration, location_name: 'serverSideEncryptionConfiguration'))
    KnowledgeBaseSummary.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description'))
    KnowledgeBaseSummary.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags'))
    KnowledgeBaseSummary.type = Types::KnowledgeBaseSummary
    ListAIAgentVersionsRequest.add_member(:assistant_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'assistantId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListAIAgentVersionsRequest.add_member(:ai_agent_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArnOrEitherWithQualifier, location_name: 'aiAgentId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListAIAgentVersionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListAIAgentVersionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListAIAgentVersionsRequest.add_member(:origin, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Origin, location_name: 'origin', traits: {"smithy.api#httpQuery" => "origin"}))
    ListAIAgentVersionsRequest.type = Types::ListAIAgentVersionsRequest
    ListAIAgentVersionsResponse.add_member(:ai_agent_version_summaries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AIAgentVersionSummariesList, location_name: 'aiAgentVersionSummaries', traits: {"smithy.api#required" => {}}))
    ListAIAgentVersionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    ListAIAgentVersionsResponse.type = Types::ListAIAgentVersionsResponse
    ListAIAgentsRequest.add_member(:assistant_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'assistantId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListAIAgentsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListAIAgentsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListAIAgentsRequest.add_member(:origin, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Origin, location_name: 'origin', traits: {"smithy.api#httpQuery" => "origin"}))
    ListAIAgentsRequest.type = Types::ListAIAgentsRequest
    ListAIAgentsResponse.add_member(:ai_agent_summaries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AIAgentSummaryList, location_name: 'aiAgentSummaries', traits: {"smithy.api#required" => {}}))
    ListAIAgentsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    ListAIAgentsResponse.type = Types::ListAIAgentsResponse
    ListAIGuardrailVersionsRequest.add_member(:assistant_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'assistantId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListAIGuardrailVersionsRequest.add_member(:ai_guardrail_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArnOrEitherWithQualifier, location_name: 'aiGuardrailId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListAIGuardrailVersionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListAIGuardrailVersionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListAIGuardrailVersionsRequest.type = Types::ListAIGuardrailVersionsRequest
    ListAIGuardrailVersionsResponse.add_member(:ai_guardrail_version_summaries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AIGuardrailVersionSummariesList, location_name: 'aiGuardrailVersionSummaries', traits: {"smithy.api#required" => {}}))
    ListAIGuardrailVersionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    ListAIGuardrailVersionsResponse.type = Types::ListAIGuardrailVersionsResponse
    ListAIGuardrailsRequest.add_member(:assistant_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'assistantId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListAIGuardrailsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListAIGuardrailsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListAIGuardrailsRequest.type = Types::ListAIGuardrailsRequest
    ListAIGuardrailsResponse.add_member(:ai_guardrail_summaries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AIGuardrailSummariesList, location_name: 'aiGuardrailSummaries', traits: {"smithy.api#required" => {}}))
    ListAIGuardrailsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    ListAIGuardrailsResponse.type = Types::ListAIGuardrailsResponse
    ListAIPromptVersionsRequest.add_member(:assistant_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'assistantId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListAIPromptVersionsRequest.add_member(:ai_prompt_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArnOrEitherWithQualifier, location_name: 'aiPromptId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListAIPromptVersionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListAIPromptVersionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListAIPromptVersionsRequest.add_member(:origin, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Origin, location_name: 'origin', traits: {"smithy.api#httpQuery" => "origin"}))
    ListAIPromptVersionsRequest.type = Types::ListAIPromptVersionsRequest
    ListAIPromptVersionsResponse.add_member(:ai_prompt_version_summaries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AIPromptVersionSummariesList, location_name: 'aiPromptVersionSummaries', traits: {"smithy.api#required" => {}}))
    ListAIPromptVersionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    ListAIPromptVersionsResponse.type = Types::ListAIPromptVersionsResponse
    ListAIPromptsRequest.add_member(:assistant_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'assistantId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListAIPromptsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListAIPromptsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListAIPromptsRequest.add_member(:origin, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Origin, location_name: 'origin', traits: {"smithy.api#httpQuery" => "origin"}))
    ListAIPromptsRequest.type = Types::ListAIPromptsRequest
    ListAIPromptsResponse.add_member(:ai_prompt_summaries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AIPromptSummaryList, location_name: 'aiPromptSummaries', traits: {"smithy.api#required" => {}}))
    ListAIPromptsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    ListAIPromptsResponse.type = Types::ListAIPromptsResponse
    ListAssistantAssociationsInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListAssistantAssociationsInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListAssistantAssociationsInput.add_member(:assistant_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'assistantId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListAssistantAssociationsInput.type = Types::ListAssistantAssociationsInput
    ListAssistantAssociationsOutput.add_member(:assistant_association_summaries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssistantAssociationSummaryList, location_name: 'assistantAssociationSummaries', traits: {"smithy.api#required" => {}}))
    ListAssistantAssociationsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    ListAssistantAssociationsOutput.type = Types::ListAssistantAssociationsOutput
    ListAssistantsInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListAssistantsInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListAssistantsInput.type = Types::ListAssistantsInput
    ListAssistantsOutput.add_member(:assistant_summaries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssistantList, location_name: 'assistantSummaries', traits: {"smithy.api#required" => {}}))
    ListAssistantsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    ListAssistantsOutput.type = Types::ListAssistantsOutput
    ListContentAssociationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListContentAssociationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListContentAssociationsRequest.add_member(:knowledge_base_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'knowledgeBaseId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListContentAssociationsRequest.add_member(:content_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'contentId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListContentAssociationsRequest.type = Types::ListContentAssociationsRequest
    ListContentAssociationsResponse.add_member(:content_association_summaries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContentAssociationSummaryList, location_name: 'contentAssociationSummaries', traits: {"smithy.api#required" => {}}))
    ListContentAssociationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    ListContentAssociationsResponse.type = Types::ListContentAssociationsResponse
    ListContentsInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListContentsInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListContentsInput.add_member(:knowledge_base_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'knowledgeBaseId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListContentsInput.type = Types::ListContentsInput
    ListContentsOutput.add_member(:content_summaries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContentSummaryList, location_name: 'contentSummaries', traits: {"smithy.api#required" => {}}))
    ListContentsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    ListContentsOutput.type = Types::ListContentsOutput
    ListImportJobsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListImportJobsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListImportJobsRequest.add_member(:knowledge_base_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'knowledgeBaseId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListImportJobsRequest.type = Types::ListImportJobsRequest
    ListImportJobsResponse.add_member(:import_job_summaries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImportJobList, location_name: 'importJobSummaries', traits: {"smithy.api#required" => {}}))
    ListImportJobsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'nextToken'))
    ListImportJobsResponse.type = Types::ListImportJobsResponse
    ListKnowledgeBasesInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListKnowledgeBasesInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListKnowledgeBasesInput.type = Types::ListKnowledgeBasesInput
    ListKnowledgeBasesOutput.add_member(:knowledge_base_summaries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KnowledgeBaseList, location_name: 'knowledgeBaseSummaries', traits: {"smithy.api#required" => {}}))
    ListKnowledgeBasesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'nextToken'))
    ListKnowledgeBasesOutput.type = Types::ListKnowledgeBasesOutput
    ListMessageTemplateVersionsRequest.add_member(:knowledge_base_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'knowledgeBaseId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListMessageTemplateVersionsRequest.add_member(:message_template_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArnOrEitherWithQualifier, location_name: 'messageTemplateId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListMessageTemplateVersionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListMessageTemplateVersionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListMessageTemplateVersionsRequest.type = Types::ListMessageTemplateVersionsRequest
    ListMessageTemplateVersionsResponse.add_member(:message_template_version_summaries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateVersionSummaryList, location_name: 'messageTemplateVersionSummaries', traits: {"smithy.api#required" => {}}))
    ListMessageTemplateVersionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    ListMessageTemplateVersionsResponse.type = Types::ListMessageTemplateVersionsResponse
    ListMessageTemplatesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListMessageTemplatesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListMessageTemplatesRequest.add_member(:knowledge_base_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'knowledgeBaseId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListMessageTemplatesRequest.type = Types::ListMessageTemplatesRequest
    ListMessageTemplatesResponse.add_member(:message_template_summaries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateSummaryList, location_name: 'messageTemplateSummaries', traits: {"smithy.api#required" => {}}))
    ListMessageTemplatesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    ListMessageTemplatesResponse.type = Types::ListMessageTemplatesResponse
    ListMessagesRequest.add_member(:assistant_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'assistantId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListMessagesRequest.add_member(:session_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'sessionId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListMessagesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListMessagesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListMessagesRequest.type = Types::ListMessagesRequest
    ListMessagesResponse.add_member(:messages, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageList, location_name: 'messages', traits: {"smithy.api#required" => {}}))
    ListMessagesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    ListMessagesResponse.type = Types::ListMessagesResponse
    ListQuickResponsesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListQuickResponsesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListQuickResponsesRequest.add_member(:knowledge_base_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'knowledgeBaseId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListQuickResponsesRequest.type = Types::ListQuickResponsesRequest
    ListQuickResponsesResponse.add_member(:quick_response_summaries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QuickResponseSummaryList, location_name: 'quickResponseSummaries', traits: {"smithy.api#required" => {}}))
    ListQuickResponsesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'nextToken'))
    ListQuickResponsesResponse.type = Types::ListQuickResponsesResponse
    ListTagsForResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'resourceArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceInput.type = Types::ListTagsForResourceInput
    ListTagsForResourceOutput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags'))
    ListTagsForResourceOutput.type = Types::ListTagsForResourceOutput
    ManagedSourceConfiguration.add_member(:web_crawler_configuration, Types::ManagedSourceConfiguration::WebCrawlerConfiguration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WebCrawlerConfiguration, location_name: 'webCrawlerConfiguration'))
    ManagedSourceConfiguration.add_member(:unknown, Types::ManagedSourceConfiguration::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    ManagedSourceConfiguration.type = Types::ManagedSourceConfiguration
    ManualSearchAIAgentConfiguration.add_member(:answer_generation_ai_prompt_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UuidWithQualifier, location_name: 'answerGenerationAIPromptId'))
    ManualSearchAIAgentConfiguration.add_member(:answer_generation_ai_guardrail_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UuidWithQualifier, location_name: 'answerGenerationAIGuardrailId'))
    ManualSearchAIAgentConfiguration.add_member(:association_configurations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssociationConfigurationList, location_name: 'associationConfigurations'))
    ManualSearchAIAgentConfiguration.add_member(:locale, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'locale'))
    ManualSearchAIAgentConfiguration.type = Types::ManualSearchAIAgentConfiguration
    MessageConfiguration.add_member(:generate_filler_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'generateFillerMessage'))
    MessageConfiguration.type = Types::MessageConfiguration
    MessageData.add_member(:text, Types::MessageData::Text, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TextMessage, location_name: 'text'))
    MessageData.add_member(:unknown, Types::MessageData::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    MessageData.type = Types::MessageData
    MessageInput.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageData, location_name: 'value', traits: {"smithy.api#required" => {}}))
    MessageInput.type = Types::MessageInput
    MessageList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageOutput)
    MessageOutput.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageData, location_name: 'value', traits: {"smithy.api#required" => {}}))
    MessageOutput.add_member(:message_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'messageId', traits: {"smithy.api#required" => {}}))
    MessageOutput.add_member(:participant, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Participant, location_name: 'participant', traits: {"smithy.api#required" => {}}))
    MessageOutput.add_member(:timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'timestamp', traits: {"smithy.api#required" => {}}))
    MessageOutput.type = Types::MessageOutput
    MessageTemplateAttachment.add_member(:content_disposition, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContentDisposition, location_name: 'contentDisposition', traits: {"smithy.api#required" => {}}))
    MessageTemplateAttachment.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttachmentFileName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    MessageTemplateAttachment.add_member(:uploaded_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'uploadedTime', traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    MessageTemplateAttachment.add_member(:url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Url, location_name: 'url', traits: {"smithy.api#required" => {}}))
    MessageTemplateAttachment.add_member(:url_expiry, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'urlExpiry', traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    MessageTemplateAttachment.add_member(:attachment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'attachmentId', traits: {"smithy.api#required" => {}}))
    MessageTemplateAttachment.type = Types::MessageTemplateAttachment
    MessageTemplateAttachmentList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateAttachment)
    MessageTemplateAttributeKeyList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateAttributeKey)
    MessageTemplateAttributeTypeList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateAttributeType)
    MessageTemplateAttributes.add_member(:system_attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SystemAttributes, location_name: 'systemAttributes'))
    MessageTemplateAttributes.add_member(:agent_attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AgentAttributes, location_name: 'agentAttributes'))
    MessageTemplateAttributes.add_member(:customer_profile_attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomerProfileAttributes, location_name: 'customerProfileAttributes'))
    MessageTemplateAttributes.add_member(:custom_attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomAttributes, location_name: 'customAttributes'))
    MessageTemplateAttributes.type = Types::MessageTemplateAttributes
    MessageTemplateBodyContentProvider.add_member(:content, Types::MessageTemplateBodyContentProvider::Content, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyUnlimitedString, location_name: 'content'))
    MessageTemplateBodyContentProvider.add_member(:unknown, Types::MessageTemplateBodyContentProvider::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    MessageTemplateBodyContentProvider.type = Types::MessageTemplateBodyContentProvider
    MessageTemplateContentProvider.add_member(:email, Types::MessageTemplateContentProvider::Email, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EmailMessageTemplateContent, location_name: 'email'))
    MessageTemplateContentProvider.add_member(:sms, Types::MessageTemplateContentProvider::Sms, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SMSMessageTemplateContent, location_name: 'sms'))
    MessageTemplateContentProvider.add_member(:unknown, Types::MessageTemplateContentProvider::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    MessageTemplateContentProvider.type = Types::MessageTemplateContentProvider
    MessageTemplateData.add_member(:message_template_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ArnWithQualifier, location_name: 'messageTemplateArn', traits: {"smithy.api#required" => {}}))
    MessageTemplateData.add_member(:message_template_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'messageTemplateId', traits: {"smithy.api#required" => {}}))
    MessageTemplateData.add_member(:knowledge_base_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'knowledgeBaseArn', traits: {"smithy.api#required" => {}}))
    MessageTemplateData.add_member(:knowledge_base_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'knowledgeBaseId', traits: {"smithy.api#required" => {}}))
    MessageTemplateData.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#required" => {}}))
    MessageTemplateData.add_member(:channel_subtype, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelSubtype, location_name: 'channelSubtype', traits: {"smithy.api#required" => {}}))
    MessageTemplateData.add_member(:created_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdTime', traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    MessageTemplateData.add_member(:last_modified_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'lastModifiedTime', traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    MessageTemplateData.add_member(:last_modified_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericArn, location_name: 'lastModifiedBy', traits: {"smithy.api#required" => {}}))
    MessageTemplateData.add_member(:content, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateContentProvider, location_name: 'content', traits: {"smithy.api#required" => {}}))
    MessageTemplateData.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description'))
    MessageTemplateData.add_member(:language, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LanguageCode, location_name: 'language'))
    MessageTemplateData.add_member(:grouping_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GroupingConfiguration, location_name: 'groupingConfiguration'))
    MessageTemplateData.add_member(:default_attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateAttributes, location_name: 'defaultAttributes'))
    MessageTemplateData.add_member(:attribute_types, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateAttributeTypeList, location_name: 'attributeTypes'))
    MessageTemplateData.add_member(:message_template_content_sha256, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateContentSha256, location_name: 'messageTemplateContentSha256', traits: {"smithy.api#required" => {}}))
    MessageTemplateData.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags'))
    MessageTemplateData.type = Types::MessageTemplateData
    MessageTemplateFilterField.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'name', traits: {"smithy.api#required" => {}}))
    MessageTemplateFilterField.add_member(:values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateFilterValueList, location_name: 'values'))
    MessageTemplateFilterField.add_member(:operator, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateFilterOperator, location_name: 'operator', traits: {"smithy.api#required" => {}}))
    MessageTemplateFilterField.add_member(:include_no_existence, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'includeNoExistence'))
    MessageTemplateFilterField.type = Types::MessageTemplateFilterField
    MessageTemplateFilterFieldList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateFilterField)
    MessageTemplateFilterValueList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateFilterValue)
    MessageTemplateOrderField.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'name', traits: {"smithy.api#required" => {}}))
    MessageTemplateOrderField.add_member(:order, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Order, location_name: 'order'))
    MessageTemplateOrderField.type = Types::MessageTemplateOrderField
    MessageTemplateQueryField.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'name', traits: {"smithy.api#required" => {}}))
    MessageTemplateQueryField.add_member(:values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateQueryValueList, location_name: 'values', traits: {"smithy.api#required" => {}}))
    MessageTemplateQueryField.add_member(:operator, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateQueryOperator, location_name: 'operator', traits: {"smithy.api#required" => {}}))
    MessageTemplateQueryField.add_member(:allow_fuzziness, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'allowFuzziness'))
    MessageTemplateQueryField.add_member(:priority, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Priority, location_name: 'priority'))
    MessageTemplateQueryField.type = Types::MessageTemplateQueryField
    MessageTemplateQueryFieldList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateQueryField)
    MessageTemplateQueryValueList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateQueryValue)
    MessageTemplateSearchExpression.add_member(:queries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateQueryFieldList, location_name: 'queries'))
    MessageTemplateSearchExpression.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateFilterFieldList, location_name: 'filters'))
    MessageTemplateSearchExpression.add_member(:order_on_field, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateOrderField, location_name: 'orderOnField'))
    MessageTemplateSearchExpression.type = Types::MessageTemplateSearchExpression
    MessageTemplateSearchResultData.add_member(:message_template_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ArnWithQualifier, location_name: 'messageTemplateArn', traits: {"smithy.api#required" => {}}))
    MessageTemplateSearchResultData.add_member(:message_template_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'messageTemplateId', traits: {"smithy.api#required" => {}}))
    MessageTemplateSearchResultData.add_member(:knowledge_base_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'knowledgeBaseArn', traits: {"smithy.api#required" => {}}))
    MessageTemplateSearchResultData.add_member(:knowledge_base_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'knowledgeBaseId', traits: {"smithy.api#required" => {}}))
    MessageTemplateSearchResultData.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#required" => {}}))
    MessageTemplateSearchResultData.add_member(:channel_subtype, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelSubtype, location_name: 'channelSubtype', traits: {"smithy.api#required" => {}}))
    MessageTemplateSearchResultData.add_member(:created_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdTime', traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    MessageTemplateSearchResultData.add_member(:last_modified_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'lastModifiedTime', traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    MessageTemplateSearchResultData.add_member(:last_modified_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericArn, location_name: 'lastModifiedBy', traits: {"smithy.api#required" => {}}))
    MessageTemplateSearchResultData.add_member(:is_active, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'isActive'))
    MessageTemplateSearchResultData.add_member(:version_number, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'versionNumber'))
    MessageTemplateSearchResultData.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description'))
    MessageTemplateSearchResultData.add_member(:grouping_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GroupingConfiguration, location_name: 'groupingConfiguration'))
    MessageTemplateSearchResultData.add_member(:language, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LanguageCode, location_name: 'language'))
    MessageTemplateSearchResultData.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags'))
    MessageTemplateSearchResultData.type = Types::MessageTemplateSearchResultData
    MessageTemplateSearchResultsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateSearchResultData)
    MessageTemplateSummary.add_member(:message_template_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ArnWithQualifier, location_name: 'messageTemplateArn', traits: {"smithy.api#required" => {}}))
    MessageTemplateSummary.add_member(:message_template_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'messageTemplateId', traits: {"smithy.api#required" => {}}))
    MessageTemplateSummary.add_member(:knowledge_base_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'knowledgeBaseArn', traits: {"smithy.api#required" => {}}))
    MessageTemplateSummary.add_member(:knowledge_base_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'knowledgeBaseId', traits: {"smithy.api#required" => {}}))
    MessageTemplateSummary.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#required" => {}}))
    MessageTemplateSummary.add_member(:channel_subtype, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelSubtype, location_name: 'channelSubtype', traits: {"smithy.api#required" => {}}))
    MessageTemplateSummary.add_member(:created_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdTime', traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    MessageTemplateSummary.add_member(:last_modified_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'lastModifiedTime', traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    MessageTemplateSummary.add_member(:last_modified_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericArn, location_name: 'lastModifiedBy', traits: {"smithy.api#required" => {}}))
    MessageTemplateSummary.add_member(:active_version_number, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'activeVersionNumber'))
    MessageTemplateSummary.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description'))
    MessageTemplateSummary.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags'))
    MessageTemplateSummary.type = Types::MessageTemplateSummary
    MessageTemplateSummaryList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateSummary)
    MessageTemplateVersionSummary.add_member(:message_template_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ArnWithQualifier, location_name: 'messageTemplateArn', traits: {"smithy.api#required" => {}}))
    MessageTemplateVersionSummary.add_member(:message_template_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'messageTemplateId', traits: {"smithy.api#required" => {}}))
    MessageTemplateVersionSummary.add_member(:knowledge_base_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'knowledgeBaseArn', traits: {"smithy.api#required" => {}}))
    MessageTemplateVersionSummary.add_member(:knowledge_base_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'knowledgeBaseId', traits: {"smithy.api#required" => {}}))
    MessageTemplateVersionSummary.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#required" => {}}))
    MessageTemplateVersionSummary.add_member(:channel_subtype, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelSubtype, location_name: 'channelSubtype', traits: {"smithy.api#required" => {}}))
    MessageTemplateVersionSummary.add_member(:is_active, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'isActive', traits: {"smithy.api#required" => {}}))
    MessageTemplateVersionSummary.add_member(:version_number, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'versionNumber', traits: {"smithy.api#required" => {}}))
    MessageTemplateVersionSummary.type = Types::MessageTemplateVersionSummary
    MessageTemplateVersionSummaryList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateVersionSummary)
    NotifyRecommendationsReceivedError.add_member(:recommendation_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecommendationId, location_name: 'recommendationId'))
    NotifyRecommendationsReceivedError.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotifyRecommendationsReceivedErrorMessage, location_name: 'message'))
    NotifyRecommendationsReceivedError.type = Types::NotifyRecommendationsReceivedError
    NotifyRecommendationsReceivedErrorList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotifyRecommendationsReceivedError)
    NotifyRecommendationsReceivedInput.add_member(:assistant_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'assistantId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    NotifyRecommendationsReceivedInput.add_member(:session_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'sessionId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    NotifyRecommendationsReceivedInput.add_member(:recommendation_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecommendationIdList, location_name: 'recommendationIds', traits: {"smithy.api#required" => {}}))
    NotifyRecommendationsReceivedInput.type = Types::NotifyRecommendationsReceivedInput
    NotifyRecommendationsReceivedOutput.add_member(:recommendation_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecommendationIdList, location_name: 'recommendationIds'))
    NotifyRecommendationsReceivedOutput.add_member(:errors, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotifyRecommendationsReceivedErrorList, location_name: 'errors'))
    NotifyRecommendationsReceivedOutput.type = Types::NotifyRecommendationsReceivedOutput
    ObjectFieldsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString)
    OrCondition.add_member(:and_conditions, Types::OrCondition::AndConditions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AndConditions, location_name: 'andConditions'))
    OrCondition.add_member(:tag_condition, Types::OrCondition::TagCondition, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagCondition, location_name: 'tagCondition'))
    OrCondition.add_member(:unknown, Types::OrCondition::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    OrCondition.type = Types::OrCondition
    OrConditions.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrCondition)
    ParsingConfiguration.add_member(:parsing_strategy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ParsingStrategy, location_name: 'parsingStrategy', traits: {"smithy.api#required" => {}}))
    ParsingConfiguration.add_member(:bedrock_foundation_model_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BedrockFoundationModelConfigurationForParsing, location_name: 'bedrockFoundationModelConfiguration'))
    ParsingConfiguration.type = Types::ParsingConfiguration
    ParsingPrompt.add_member(:parsing_prompt_text, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ParsingPromptText, location_name: 'parsingPromptText', traits: {"smithy.api#required" => {}}))
    ParsingPrompt.type = Types::ParsingPrompt
    PreconditionFailedException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message'))
    PreconditionFailedException.type = Types::PreconditionFailedException
    PutFeedbackRequest.add_member(:assistant_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'assistantId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutFeedbackRequest.add_member(:target_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'targetId', traits: {"smithy.api#required" => {}}))
    PutFeedbackRequest.add_member(:target_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TargetType, location_name: 'targetType', traits: {"smithy.api#required" => {}}))
    PutFeedbackRequest.add_member(:content_feedback, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContentFeedbackData, location_name: 'contentFeedback', traits: {"smithy.api#required" => {}}))
    PutFeedbackRequest.type = Types::PutFeedbackRequest
    PutFeedbackResponse.add_member(:assistant_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'assistantId', traits: {"smithy.api#required" => {}}))
    PutFeedbackResponse.add_member(:assistant_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'assistantArn', traits: {"smithy.api#required" => {}}))
    PutFeedbackResponse.add_member(:target_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'targetId', traits: {"smithy.api#required" => {}}))
    PutFeedbackResponse.add_member(:target_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TargetType, location_name: 'targetType', traits: {"smithy.api#required" => {}}))
    PutFeedbackResponse.add_member(:content_feedback, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContentFeedbackData, location_name: 'contentFeedback', traits: {"smithy.api#required" => {}}))
    PutFeedbackResponse.type = Types::PutFeedbackResponse
    QueryAssistantInput.add_member(:assistant_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'assistantId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    QueryAssistantInput.add_member(:query_text, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueryText, location_name: 'queryText'))
    QueryAssistantInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    QueryAssistantInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults'))
    QueryAssistantInput.add_member(:session_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'sessionId'))
    QueryAssistantInput.add_member(:query_condition, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueryConditionExpression, location_name: 'queryCondition'))
    QueryAssistantInput.add_member(:query_input_data, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueryInputData, location_name: 'queryInputData'))
    QueryAssistantInput.add_member(:override_knowledge_base_search_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KnowledgeBaseSearchType, location_name: 'overrideKnowledgeBaseSearchType'))
    QueryAssistantInput.type = Types::QueryAssistantInput
    QueryAssistantOutput.add_member(:results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueryResultsList, location_name: 'results', traits: {"smithy.api#required" => {}}))
    QueryAssistantOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    QueryAssistantOutput.type = Types::QueryAssistantOutput
    QueryCondition.add_member(:single, Types::QueryCondition::Single, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueryConditionItem, location_name: 'single'))
    QueryCondition.add_member(:unknown, Types::QueryCondition::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    QueryCondition.type = Types::QueryCondition
    QueryConditionExpression.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueryCondition)
    QueryConditionItem.add_member(:field, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueryConditionFieldName, location_name: 'field', traits: {"smithy.api#required" => {}}))
    QueryConditionItem.add_member(:comparator, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueryConditionComparisonOperator, location_name: 'comparator', traits: {"smithy.api#required" => {}}))
    QueryConditionItem.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'value', traits: {"smithy.api#required" => {}}))
    QueryConditionItem.type = Types::QueryConditionItem
    QueryInputData.add_member(:query_text_input_data, Types::QueryInputData::QueryTextInputData, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueryTextInputData, location_name: 'queryTextInputData'))
    QueryInputData.add_member(:intent_input_data, Types::QueryInputData::IntentInputData, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntentInputData, location_name: 'intentInputData'))
    QueryInputData.add_member(:unknown, Types::QueryInputData::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    QueryInputData.type = Types::QueryInputData
    QueryRecommendationTriggerData.add_member(:text, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueryText, location_name: 'text'))
    QueryRecommendationTriggerData.type = Types::QueryRecommendationTriggerData
    QueryResultsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResultData)
    QueryTextInputData.add_member(:text, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueryText, location_name: 'text', traits: {"smithy.api#required" => {}}))
    QueryTextInputData.type = Types::QueryTextInputData
    QuickResponseContentProvider.add_member(:content, Types::QuickResponseContentProvider::Content, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QuickResponseContent, location_name: 'content'))
    QuickResponseContentProvider.add_member(:unknown, Types::QuickResponseContentProvider::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    QuickResponseContentProvider.type = Types::QuickResponseContentProvider
    QuickResponseContents.add_member(:plain_text, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QuickResponseContentProvider, location_name: 'plainText'))
    QuickResponseContents.add_member(:markdown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QuickResponseContentProvider, location_name: 'markdown'))
    QuickResponseContents.type = Types::QuickResponseContents
    QuickResponseData.add_member(:quick_response_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'quickResponseArn', traits: {"smithy.api#required" => {}}))
    QuickResponseData.add_member(:quick_response_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'quickResponseId', traits: {"smithy.api#required" => {}}))
    QuickResponseData.add_member(:knowledge_base_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'knowledgeBaseArn', traits: {"smithy.api#required" => {}}))
    QuickResponseData.add_member(:knowledge_base_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'knowledgeBaseId', traits: {"smithy.api#required" => {}}))
    QuickResponseData.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QuickResponseName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    QuickResponseData.add_member(:content_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QuickResponseType, location_name: 'contentType', traits: {"smithy.api#required" => {}}))
    QuickResponseData.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QuickResponseStatus, location_name: 'status', traits: {"smithy.api#required" => {}}))
    QuickResponseData.add_member(:created_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdTime', traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "epoch-seconds"}))
    QuickResponseData.add_member(:last_modified_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'lastModifiedTime', traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "epoch-seconds"}))
    QuickResponseData.add_member(:contents, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QuickResponseContents, location_name: 'contents'))
    QuickResponseData.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QuickResponseDescription, location_name: 'description'))
    QuickResponseData.add_member(:grouping_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GroupingConfiguration, location_name: 'groupingConfiguration'))
    QuickResponseData.add_member(:shortcut_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ShortCutKey, location_name: 'shortcutKey'))
    QuickResponseData.add_member(:last_modified_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericArn, location_name: 'lastModifiedBy'))
    QuickResponseData.add_member(:is_active, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'isActive'))
    QuickResponseData.add_member(:channels, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Channels, location_name: 'channels'))
    QuickResponseData.add_member(:language, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LanguageCode, location_name: 'language'))
    QuickResponseData.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags'))
    QuickResponseData.type = Types::QuickResponseData
    QuickResponseDataProvider.add_member(:content, Types::QuickResponseDataProvider::Content, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QuickResponseContent, location_name: 'content'))
    QuickResponseDataProvider.add_member(:unknown, Types::QuickResponseDataProvider::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    QuickResponseDataProvider.type = Types::QuickResponseDataProvider
    QuickResponseFilterField.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'name', traits: {"smithy.api#required" => {}}))
    QuickResponseFilterField.add_member(:values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QuickResponseFilterValueList, location_name: 'values'))
    QuickResponseFilterField.add_member(:operator, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QuickResponseFilterOperator, location_name: 'operator', traits: {"smithy.api#required" => {}}))
    QuickResponseFilterField.add_member(:include_no_existence, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'includeNoExistence'))
    QuickResponseFilterField.type = Types::QuickResponseFilterField
    QuickResponseFilterFieldList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: QuickResponseFilterField)
    QuickResponseFilterValueList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: QuickResponseFilterValue)
    QuickResponseOrderField.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'name', traits: {"smithy.api#required" => {}}))
    QuickResponseOrderField.add_member(:order, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Order, location_name: 'order'))
    QuickResponseOrderField.type = Types::QuickResponseOrderField
    QuickResponseQueryField.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'name', traits: {"smithy.api#required" => {}}))
    QuickResponseQueryField.add_member(:values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QuickResponseQueryValueList, location_name: 'values', traits: {"smithy.api#required" => {}}))
    QuickResponseQueryField.add_member(:operator, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QuickResponseQueryOperator, location_name: 'operator', traits: {"smithy.api#required" => {}}))
    QuickResponseQueryField.add_member(:allow_fuzziness, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'allowFuzziness'))
    QuickResponseQueryField.add_member(:priority, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Priority, location_name: 'priority'))
    QuickResponseQueryField.type = Types::QuickResponseQueryField
    QuickResponseQueryFieldList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: QuickResponseQueryField)
    QuickResponseQueryValueList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: QuickResponseQueryValue)
    QuickResponseSearchExpression.add_member(:queries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QuickResponseQueryFieldList, location_name: 'queries'))
    QuickResponseSearchExpression.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QuickResponseFilterFieldList, location_name: 'filters'))
    QuickResponseSearchExpression.add_member(:order_on_field, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QuickResponseOrderField, location_name: 'orderOnField'))
    QuickResponseSearchExpression.type = Types::QuickResponseSearchExpression
    QuickResponseSearchResultData.add_member(:quick_response_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'quickResponseArn', traits: {"smithy.api#required" => {}}))
    QuickResponseSearchResultData.add_member(:quick_response_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'quickResponseId', traits: {"smithy.api#required" => {}}))
    QuickResponseSearchResultData.add_member(:knowledge_base_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'knowledgeBaseArn', traits: {"smithy.api#required" => {}}))
    QuickResponseSearchResultData.add_member(:knowledge_base_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'knowledgeBaseId', traits: {"smithy.api#required" => {}}))
    QuickResponseSearchResultData.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QuickResponseName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    QuickResponseSearchResultData.add_member(:content_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QuickResponseType, location_name: 'contentType', traits: {"smithy.api#required" => {}}))
    QuickResponseSearchResultData.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QuickResponseStatus, location_name: 'status', traits: {"smithy.api#required" => {}}))
    QuickResponseSearchResultData.add_member(:contents, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QuickResponseContents, location_name: 'contents', traits: {"smithy.api#required" => {}}))
    QuickResponseSearchResultData.add_member(:created_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdTime', traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "epoch-seconds"}))
    QuickResponseSearchResultData.add_member(:last_modified_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'lastModifiedTime', traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "epoch-seconds"}))
    QuickResponseSearchResultData.add_member(:is_active, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'isActive', traits: {"smithy.api#required" => {}}))
    QuickResponseSearchResultData.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QuickResponseDescription, location_name: 'description'))
    QuickResponseSearchResultData.add_member(:grouping_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GroupingConfiguration, location_name: 'groupingConfiguration'))
    QuickResponseSearchResultData.add_member(:shortcut_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ShortCutKey, location_name: 'shortcutKey'))
    QuickResponseSearchResultData.add_member(:last_modified_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericArn, location_name: 'lastModifiedBy'))
    QuickResponseSearchResultData.add_member(:channels, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Channels, location_name: 'channels'))
    QuickResponseSearchResultData.add_member(:language, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LanguageCode, location_name: 'language'))
    QuickResponseSearchResultData.add_member(:attributes_not_interpolated, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContactAttributeKeys, location_name: 'attributesNotInterpolated'))
    QuickResponseSearchResultData.add_member(:attributes_interpolated, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContactAttributeKeys, location_name: 'attributesInterpolated'))
    QuickResponseSearchResultData.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags'))
    QuickResponseSearchResultData.type = Types::QuickResponseSearchResultData
    QuickResponseSearchResultsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: QuickResponseSearchResultData)
    QuickResponseSummary.add_member(:quick_response_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'quickResponseArn', traits: {"smithy.api#required" => {}}))
    QuickResponseSummary.add_member(:quick_response_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'quickResponseId', traits: {"smithy.api#required" => {}}))
    QuickResponseSummary.add_member(:knowledge_base_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'knowledgeBaseArn', traits: {"smithy.api#required" => {}}))
    QuickResponseSummary.add_member(:knowledge_base_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'knowledgeBaseId', traits: {"smithy.api#required" => {}}))
    QuickResponseSummary.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QuickResponseName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    QuickResponseSummary.add_member(:content_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QuickResponseType, location_name: 'contentType', traits: {"smithy.api#required" => {}}))
    QuickResponseSummary.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QuickResponseStatus, location_name: 'status', traits: {"smithy.api#required" => {}}))
    QuickResponseSummary.add_member(:created_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdTime', traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "epoch-seconds"}))
    QuickResponseSummary.add_member(:last_modified_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'lastModifiedTime', traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "epoch-seconds"}))
    QuickResponseSummary.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QuickResponseDescription, location_name: 'description'))
    QuickResponseSummary.add_member(:last_modified_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericArn, location_name: 'lastModifiedBy'))
    QuickResponseSummary.add_member(:is_active, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'isActive'))
    QuickResponseSummary.add_member(:channels, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Channels, location_name: 'channels'))
    QuickResponseSummary.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags'))
    QuickResponseSummary.type = Types::QuickResponseSummary
    QuickResponseSummaryList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: QuickResponseSummary)
    RankingData.add_member(:relevance_score, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RelevanceScore, location_name: 'relevanceScore', traits: {"smithy.api#default" => 0}))
    RankingData.add_member(:relevance_level, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RelevanceLevel, location_name: 'relevanceLevel'))
    RankingData.type = Types::RankingData
    RecommendationData.add_member(:recommendation_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecommendationId, location_name: 'recommendationId', traits: {"smithy.api#required" => {}}))
    RecommendationData.add_member(:document, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Document, location_name: 'document'))
    RecommendationData.add_member(:relevance_score, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RelevanceScore, location_name: 'relevanceScore', traits: {"smithy.api#default" => 0}))
    RecommendationData.add_member(:relevance_level, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RelevanceLevel, location_name: 'relevanceLevel'))
    RecommendationData.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecommendationType, location_name: 'type'))
    RecommendationData.add_member(:data, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataSummary, location_name: 'data'))
    RecommendationData.type = Types::RecommendationData
    RecommendationIdList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecommendationId)
    RecommendationList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecommendationData)
    RecommendationTrigger.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'id', traits: {"smithy.api#required" => {}}))
    RecommendationTrigger.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecommendationTriggerType, location_name: 'type', traits: {"smithy.api#required" => {}}))
    RecommendationTrigger.add_member(:source, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecommendationSourceType, location_name: 'source', traits: {"smithy.api#required" => {}}))
    RecommendationTrigger.add_member(:data, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecommendationTriggerData, location_name: 'data', traits: {"smithy.api#required" => {}}))
    RecommendationTrigger.add_member(:recommendation_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecommendationIdList, location_name: 'recommendationIds', traits: {"smithy.api#required" => {}}))
    RecommendationTrigger.type = Types::RecommendationTrigger
    RecommendationTriggerData.add_member(:query, Types::RecommendationTriggerData::Query, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueryRecommendationTriggerData, location_name: 'query'))
    RecommendationTriggerData.add_member(:unknown, Types::RecommendationTriggerData::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    RecommendationTriggerData.type = Types::RecommendationTriggerData
    RecommendationTriggerList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecommendationTrigger)
    RemoveAssistantAIAgentRequest.add_member(:assistant_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'assistantId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RemoveAssistantAIAgentRequest.add_member(:ai_agent_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AIAgentType, location_name: 'aiAgentType', traits: {"smithy.api#httpQuery" => "aiAgentType", "smithy.api#required" => {}}))
    RemoveAssistantAIAgentRequest.type = Types::RemoveAssistantAIAgentRequest
    RemoveAssistantAIAgentResponse.type = Types::RemoveAssistantAIAgentResponse
    RemoveKnowledgeBaseTemplateUriInput.add_member(:knowledge_base_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'knowledgeBaseId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RemoveKnowledgeBaseTemplateUriInput.type = Types::RemoveKnowledgeBaseTemplateUriInput
    RemoveKnowledgeBaseTemplateUriOutput.type = Types::RemoveKnowledgeBaseTemplateUriOutput
    RenderMessageTemplateRequest.add_member(:knowledge_base_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'knowledgeBaseId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RenderMessageTemplateRequest.add_member(:message_template_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArnOrEitherWithQualifier, location_name: 'messageTemplateId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RenderMessageTemplateRequest.add_member(:attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateAttributes, location_name: 'attributes', traits: {"smithy.api#required" => {}}))
    RenderMessageTemplateRequest.type = Types::RenderMessageTemplateRequest
    RenderMessageTemplateResponse.add_member(:content, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateContentProvider, location_name: 'content', traits: {"smithy.api#required" => {}}))
    RenderMessageTemplateResponse.add_member(:attributes_not_interpolated, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateAttributeKeyList, location_name: 'attributesNotInterpolated'))
    RenderMessageTemplateResponse.add_member(:attachments, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateAttachmentList, location_name: 'attachments'))
    RenderMessageTemplateResponse.type = Types::RenderMessageTemplateResponse
    RenderingConfiguration.add_member(:template_uri, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Uri, location_name: 'templateUri'))
    RenderingConfiguration.type = Types::RenderingConfiguration
    RequestTimeoutException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message'))
    RequestTimeoutException.type = Types::RequestTimeoutException
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message'))
    ResourceNotFoundException.add_member(:resource_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceName'))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResultData.add_member(:result_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'resultId', traits: {"smithy.api#required" => {}}))
    ResultData.add_member(:document, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Document, location_name: 'document'))
    ResultData.add_member(:relevance_score, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RelevanceScore, location_name: 'relevanceScore', traits: {"smithy.api#default" => 0}))
    ResultData.add_member(:data, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataSummary, location_name: 'data'))
    ResultData.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueryResultType, location_name: 'type'))
    ResultData.type = Types::ResultData
    RuntimeSessionData.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptySensitiveString, location_name: 'key', traits: {"smithy.api#required" => {}}))
    RuntimeSessionData.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RuntimeSessionDataValue, location_name: 'value', traits: {"smithy.api#required" => {}}))
    RuntimeSessionData.type = Types::RuntimeSessionData
    RuntimeSessionDataList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RuntimeSessionData)
    RuntimeSessionDataValue.add_member(:string_value, Types::RuntimeSessionDataValue::StringValue, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptySensitiveString, location_name: 'stringValue'))
    RuntimeSessionDataValue.add_member(:unknown, Types::RuntimeSessionDataValue::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    RuntimeSessionDataValue.type = Types::RuntimeSessionDataValue
    SMSMessageTemplateContent.add_member(:body, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SMSMessageTemplateContentBody, location_name: 'body'))
    SMSMessageTemplateContent.type = Types::SMSMessageTemplateContent
    SMSMessageTemplateContentBody.add_member(:plain_text, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateBodyContentProvider, location_name: 'plainText'))
    SMSMessageTemplateContentBody.type = Types::SMSMessageTemplateContentBody
    SearchContentInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    SearchContentInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#httpQuery" => "maxResults"}))
    SearchContentInput.add_member(:knowledge_base_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'knowledgeBaseId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    SearchContentInput.add_member(:search_expression, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SearchExpression, location_name: 'searchExpression', traits: {"smithy.api#required" => {}}))
    SearchContentInput.type = Types::SearchContentInput
    SearchContentOutput.add_member(:content_summaries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContentSummaryList, location_name: 'contentSummaries', traits: {"smithy.api#required" => {}}))
    SearchContentOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    SearchContentOutput.type = Types::SearchContentOutput
    SearchExpression.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterList, location_name: 'filters', traits: {"smithy.api#required" => {}}))
    SearchExpression.type = Types::SearchExpression
    SearchMessageTemplatesRequest.add_member(:knowledge_base_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'knowledgeBaseId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    SearchMessageTemplatesRequest.add_member(:search_expression, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateSearchExpression, location_name: 'searchExpression', traits: {"smithy.api#required" => {}}))
    SearchMessageTemplatesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    SearchMessageTemplatesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#httpQuery" => "maxResults"}))
    SearchMessageTemplatesRequest.type = Types::SearchMessageTemplatesRequest
    SearchMessageTemplatesResponse.add_member(:results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateSearchResultsList, location_name: 'results', traits: {"smithy.api#required" => {}}))
    SearchMessageTemplatesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    SearchMessageTemplatesResponse.type = Types::SearchMessageTemplatesResponse
    SearchQuickResponsesRequest.add_member(:knowledge_base_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'knowledgeBaseId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    SearchQuickResponsesRequest.add_member(:search_expression, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QuickResponseSearchExpression, location_name: 'searchExpression', traits: {"smithy.api#required" => {}}))
    SearchQuickResponsesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    SearchQuickResponsesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#httpQuery" => "maxResults"}))
    SearchQuickResponsesRequest.add_member(:attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContactAttributes, location_name: 'attributes'))
    SearchQuickResponsesRequest.type = Types::SearchQuickResponsesRequest
    SearchQuickResponsesResponse.add_member(:results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QuickResponseSearchResultsList, location_name: 'results', traits: {"smithy.api#required" => {}}))
    SearchQuickResponsesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'nextToken'))
    SearchQuickResponsesResponse.type = Types::SearchQuickResponsesResponse
    SearchSessionsInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    SearchSessionsInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#httpQuery" => "maxResults"}))
    SearchSessionsInput.add_member(:assistant_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'assistantId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    SearchSessionsInput.add_member(:search_expression, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SearchExpression, location_name: 'searchExpression', traits: {"smithy.api#required" => {}}))
    SearchSessionsInput.type = Types::SearchSessionsInput
    SearchSessionsOutput.add_member(:session_summaries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SessionSummaries, location_name: 'sessionSummaries', traits: {"smithy.api#required" => {}}))
    SearchSessionsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    SearchSessionsOutput.type = Types::SearchSessionsOutput
    SeedUrl.add_member(:url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WebUrl, location_name: 'url'))
    SeedUrl.type = Types::SeedUrl
    SeedUrls.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SeedUrl)
    SelfServiceAIAgentConfiguration.add_member(:self_service_pre_processing_ai_prompt_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UuidWithQualifier, location_name: 'selfServicePreProcessingAIPromptId'))
    SelfServiceAIAgentConfiguration.add_member(:self_service_answer_generation_ai_prompt_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UuidWithQualifier, location_name: 'selfServiceAnswerGenerationAIPromptId'))
    SelfServiceAIAgentConfiguration.add_member(:self_service_ai_guardrail_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UuidWithQualifier, location_name: 'selfServiceAIGuardrailId'))
    SelfServiceAIAgentConfiguration.add_member(:association_configurations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssociationConfigurationList, location_name: 'associationConfigurations'))
    SelfServiceAIAgentConfiguration.type = Types::SelfServiceAIAgentConfiguration
    SelfServiceConversationHistory.add_member(:turn_number, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'turnNumber', traits: {"smithy.api#required" => {}}))
    SelfServiceConversationHistory.add_member(:input_transcript, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveString, location_name: 'inputTranscript'))
    SelfServiceConversationHistory.add_member(:bot_response, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveString, location_name: 'botResponse'))
    SelfServiceConversationHistory.type = Types::SelfServiceConversationHistory
    SelfServiceConversationHistoryList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SelfServiceConversationHistory)
    SemanticChunkingConfiguration.add_member(:max_tokens, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxTokens', traits: {"smithy.api#range" => {"min" => 1}, "smithy.api#required" => {}}))
    SemanticChunkingConfiguration.add_member(:buffer_size, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'bufferSize', traits: {"smithy.api#range" => {"min" => 0, "max" => 1}, "smithy.api#required" => {}}))
    SemanticChunkingConfiguration.add_member(:breakpoint_percentile_threshold, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'breakpointPercentileThreshold', traits: {"smithy.api#range" => {"min" => 50, "max" => 99}, "smithy.api#required" => {}}))
    SemanticChunkingConfiguration.type = Types::SemanticChunkingConfiguration
    SendMessageRequest.add_member(:assistant_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'assistantId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    SendMessageRequest.add_member(:session_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'sessionId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    SendMessageRequest.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageType, location_name: 'type', traits: {"smithy.api#required" => {}}))
    SendMessageRequest.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageInput, location_name: 'message', traits: {"smithy.api#required" => {}}))
    SendMessageRequest.add_member(:conversation_context, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConversationContext, location_name: 'conversationContext'))
    SendMessageRequest.add_member(:configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageConfiguration, location_name: 'configuration'))
    SendMessageRequest.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#idempotencyToken" => {}}))
    SendMessageRequest.type = Types::SendMessageRequest
    SendMessageResponse.add_member(:request_message_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'requestMessageId', traits: {"smithy.api#required" => {}}))
    SendMessageResponse.add_member(:configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageConfiguration, location_name: 'configuration'))
    SendMessageResponse.add_member(:next_message_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextMessageToken', traits: {"smithy.api#required" => {}}))
    SendMessageResponse.type = Types::SendMessageResponse
    ServerSideEncryptionConfiguration.add_member(:kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'kmsKeyId'))
    ServerSideEncryptionConfiguration.type = Types::ServerSideEncryptionConfiguration
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message'))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    SessionData.add_member(:session_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'sessionArn', traits: {"smithy.api#required" => {}}))
    SessionData.add_member(:session_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'sessionId', traits: {"smithy.api#required" => {}}))
    SessionData.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#required" => {}}))
    SessionData.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description'))
    SessionData.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags'))
    SessionData.add_member(:integration_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SessionIntegrationConfiguration, location_name: 'integrationConfiguration'))
    SessionData.add_member(:tag_filter, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagFilter, location_name: 'tagFilter'))
    SessionData.add_member(:ai_agent_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AIAgentConfigurationMap, location_name: 'aiAgentConfiguration'))
    SessionData.add_member(:origin, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Origin, location_name: 'origin'))
    SessionData.type = Types::SessionData
    SessionIntegrationConfiguration.add_member(:topic_integration_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericArn, location_name: 'topicIntegrationArn'))
    SessionIntegrationConfiguration.type = Types::SessionIntegrationConfiguration
    SessionSummaries.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SessionSummary)
    SessionSummary.add_member(:session_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'sessionId', traits: {"smithy.api#required" => {}}))
    SessionSummary.add_member(:session_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'sessionArn', traits: {"smithy.api#required" => {}}))
    SessionSummary.add_member(:assistant_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'assistantId', traits: {"smithy.api#required" => {}}))
    SessionSummary.add_member(:assistant_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'assistantArn', traits: {"smithy.api#required" => {}}))
    SessionSummary.type = Types::SessionSummary
    SourceConfiguration.add_member(:app_integrations, Types::SourceConfiguration::AppIntegrations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AppIntegrationsConfiguration, location_name: 'appIntegrations'))
    SourceConfiguration.add_member(:managed_source_configuration, Types::SourceConfiguration::ManagedSourceConfiguration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ManagedSourceConfiguration, location_name: 'managedSourceConfiguration'))
    SourceConfiguration.add_member(:unknown, Types::SourceConfiguration::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    SourceConfiguration.type = Types::SourceConfiguration
    SourceContentDataDetails.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'id', traits: {"smithy.api#required" => {}}))
    SourceContentDataDetails.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SourceContentType, location_name: 'type', traits: {"smithy.api#required" => {}}))
    SourceContentDataDetails.add_member(:text_data, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TextData, location_name: 'textData', traits: {"smithy.api#required" => {}}))
    SourceContentDataDetails.add_member(:ranking_data, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RankingData, location_name: 'rankingData', traits: {"smithy.api#required" => {}}))
    SourceContentDataDetails.add_member(:citation_span, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CitationSpan, location_name: 'citationSpan'))
    SourceContentDataDetails.type = Types::SourceContentDataDetails
    StartContentUploadInput.add_member(:knowledge_base_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'knowledgeBaseId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartContentUploadInput.add_member(:content_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContentType, location_name: 'contentType', traits: {"smithy.api#required" => {}}))
    StartContentUploadInput.add_member(:presigned_url_time_to_live, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimeToLive, location_name: 'presignedUrlTimeToLive'))
    StartContentUploadInput.type = Types::StartContentUploadInput
    StartContentUploadOutput.add_member(:upload_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UploadId, location_name: 'uploadId', traits: {"smithy.api#required" => {}}))
    StartContentUploadOutput.add_member(:url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Url, location_name: 'url', traits: {"smithy.api#required" => {}}))
    StartContentUploadOutput.add_member(:url_expiry, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'urlExpiry', traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "epoch-seconds"}))
    StartContentUploadOutput.add_member(:headers_to_include, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Headers, location_name: 'headersToInclude', traits: {"smithy.api#required" => {}}))
    StartContentUploadOutput.type = Types::StartContentUploadOutput
    StartImportJobRequest.add_member(:knowledge_base_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'knowledgeBaseId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartImportJobRequest.add_member(:import_job_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImportJobType, location_name: 'importJobType', traits: {"smithy.api#required" => {}}))
    StartImportJobRequest.add_member(:upload_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UploadId, location_name: 'uploadId', traits: {"smithy.api#required" => {}}))
    StartImportJobRequest.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'clientToken', traits: {"smithy.api#idempotencyToken" => {}}))
    StartImportJobRequest.add_member(:metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContentMetadata, location_name: 'metadata'))
    StartImportJobRequest.add_member(:external_source_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExternalSourceConfiguration, location_name: 'externalSourceConfiguration'))
    StartImportJobRequest.type = Types::StartImportJobRequest
    StartImportJobResponse.add_member(:import_job, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImportJobData, location_name: 'importJob'))
    StartImportJobResponse.type = Types::StartImportJobResponse
    SystemAttributes.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateAttributeValue, location_name: 'name'))
    SystemAttributes.add_member(:customer_endpoint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SystemEndpointAttributes, location_name: 'customerEndpoint'))
    SystemAttributes.add_member(:system_endpoint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SystemEndpointAttributes, location_name: 'systemEndpoint'))
    SystemAttributes.type = Types::SystemAttributes
    SystemEndpointAttributes.add_member(:address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateAttributeValue, location_name: 'address'))
    SystemEndpointAttributes.type = Types::SystemEndpointAttributes
    TagCondition.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey, location_name: 'key', traits: {"smithy.api#required" => {}}))
    TagCondition.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue, location_name: 'value'))
    TagCondition.type = Types::TagCondition
    TagFilter.add_member(:tag_condition, Types::TagFilter::TagCondition, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagCondition, location_name: 'tagCondition'))
    TagFilter.add_member(:and_conditions, Types::TagFilter::AndConditions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AndConditions, location_name: 'andConditions'))
    TagFilter.add_member(:or_conditions, Types::TagFilter::OrConditions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrConditions, location_name: 'orConditions'))
    TagFilter.add_member(:unknown, Types::TagFilter::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    TagFilter.type = Types::TagFilter
    TagKeyList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'resourceArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceInput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#required" => {}}))
    TagResourceInput.type = Types::TagResourceInput
    TagResourceOutput.type = Types::TagResourceOutput
    Tags.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    Tags.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue)
    TextData.add_member(:title, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentText, location_name: 'title'))
    TextData.add_member(:excerpt, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentText, location_name: 'excerpt'))
    TextData.type = Types::TextData
    TextFullAIPromptEditTemplateConfiguration.add_member(:text, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TextAIPrompt, location_name: 'text', traits: {"smithy.api#required" => {}}))
    TextFullAIPromptEditTemplateConfiguration.type = Types::TextFullAIPromptEditTemplateConfiguration
    TextMessage.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveString, location_name: 'value', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}}))
    TextMessage.type = Types::TextMessage
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message'))
    ThrottlingException.type = Types::ThrottlingException
    TooManyTagsException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message'))
    TooManyTagsException.add_member(:resource_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceName'))
    TooManyTagsException.type = Types::TooManyTagsException
    UnauthorizedException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message'))
    UnauthorizedException.type = Types::UnauthorizedException
    UntagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'resourceArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceInput.add_member(:tag_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'tagKeys', traits: {"smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceInput.type = Types::UntagResourceInput
    UntagResourceOutput.type = Types::UntagResourceOutput
    UpdateAIAgentRequest.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#idempotencyToken" => {}}))
    UpdateAIAgentRequest.add_member(:assistant_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'assistantId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateAIAgentRequest.add_member(:ai_agent_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArnOrEitherWithQualifier, location_name: 'aiAgentId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateAIAgentRequest.add_member(:visibility_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VisibilityStatus, location_name: 'visibilityStatus', traits: {"smithy.api#required" => {}}))
    UpdateAIAgentRequest.add_member(:configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AIAgentConfiguration, location_name: 'configuration'))
    UpdateAIAgentRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description'))
    UpdateAIAgentRequest.type = Types::UpdateAIAgentRequest
    UpdateAIAgentResponse.add_member(:ai_agent, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AIAgentData, location_name: 'aiAgent'))
    UpdateAIAgentResponse.type = Types::UpdateAIAgentResponse
    UpdateAIGuardrailRequest.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#idempotencyToken" => {}}))
    UpdateAIGuardrailRequest.add_member(:assistant_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'assistantId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateAIGuardrailRequest.add_member(:ai_guardrail_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArnOrEitherWithQualifier, location_name: 'aiGuardrailId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateAIGuardrailRequest.add_member(:visibility_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VisibilityStatus, location_name: 'visibilityStatus', traits: {"smithy.api#required" => {}}))
    UpdateAIGuardrailRequest.add_member(:blocked_input_messaging, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AIGuardrailBlockedMessaging, location_name: 'blockedInputMessaging', traits: {"smithy.api#required" => {}}))
    UpdateAIGuardrailRequest.add_member(:blocked_outputs_messaging, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AIGuardrailBlockedMessaging, location_name: 'blockedOutputsMessaging', traits: {"smithy.api#required" => {}}))
    UpdateAIGuardrailRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AIGuardrailDescription, location_name: 'description'))
    UpdateAIGuardrailRequest.add_member(:topic_policy_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AIGuardrailTopicPolicyConfig, location_name: 'topicPolicyConfig'))
    UpdateAIGuardrailRequest.add_member(:content_policy_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AIGuardrailContentPolicyConfig, location_name: 'contentPolicyConfig'))
    UpdateAIGuardrailRequest.add_member(:word_policy_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AIGuardrailWordPolicyConfig, location_name: 'wordPolicyConfig'))
    UpdateAIGuardrailRequest.add_member(:sensitive_information_policy_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AIGuardrailSensitiveInformationPolicyConfig, location_name: 'sensitiveInformationPolicyConfig'))
    UpdateAIGuardrailRequest.add_member(:contextual_grounding_policy_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AIGuardrailContextualGroundingPolicyConfig, location_name: 'contextualGroundingPolicyConfig'))
    UpdateAIGuardrailRequest.type = Types::UpdateAIGuardrailRequest
    UpdateAIGuardrailResponse.add_member(:ai_guardrail, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AIGuardrailData, location_name: 'aiGuardrail'))
    UpdateAIGuardrailResponse.type = Types::UpdateAIGuardrailResponse
    UpdateAIPromptRequest.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#idempotencyToken" => {}}))
    UpdateAIPromptRequest.add_member(:assistant_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'assistantId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateAIPromptRequest.add_member(:ai_prompt_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArnOrEitherWithQualifier, location_name: 'aiPromptId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateAIPromptRequest.add_member(:visibility_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VisibilityStatus, location_name: 'visibilityStatus', traits: {"smithy.api#required" => {}}))
    UpdateAIPromptRequest.add_member(:template_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AIPromptTemplateConfiguration, location_name: 'templateConfiguration'))
    UpdateAIPromptRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description'))
    UpdateAIPromptRequest.add_member(:model_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AIPromptModelIdentifier, location_name: 'modelId'))
    UpdateAIPromptRequest.type = Types::UpdateAIPromptRequest
    UpdateAIPromptResponse.add_member(:ai_prompt, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AIPromptData, location_name: 'aiPrompt'))
    UpdateAIPromptResponse.type = Types::UpdateAIPromptResponse
    UpdateAssistantAIAgentRequest.add_member(:assistant_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'assistantId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateAssistantAIAgentRequest.add_member(:ai_agent_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AIAgentType, location_name: 'aiAgentType', traits: {"smithy.api#required" => {}}))
    UpdateAssistantAIAgentRequest.add_member(:configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AIAgentConfigurationData, location_name: 'configuration', traits: {"smithy.api#required" => {}}))
    UpdateAssistantAIAgentRequest.type = Types::UpdateAssistantAIAgentRequest
    UpdateAssistantAIAgentResponse.add_member(:assistant, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssistantData, location_name: 'assistant'))
    UpdateAssistantAIAgentResponse.type = Types::UpdateAssistantAIAgentResponse
    UpdateContentInput.add_member(:knowledge_base_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'knowledgeBaseId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateContentInput.add_member(:content_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'contentId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateContentInput.add_member(:revision_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'revisionId'))
    UpdateContentInput.add_member(:title, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContentTitle, location_name: 'title'))
    UpdateContentInput.add_member(:override_link_out_uri, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Uri, location_name: 'overrideLinkOutUri'))
    UpdateContentInput.add_member(:remove_override_link_out_uri, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'removeOverrideLinkOutUri'))
    UpdateContentInput.add_member(:metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContentMetadata, location_name: 'metadata'))
    UpdateContentInput.add_member(:upload_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UploadId, location_name: 'uploadId'))
    UpdateContentInput.type = Types::UpdateContentInput
    UpdateContentOutput.add_member(:content, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContentData, location_name: 'content'))
    UpdateContentOutput.type = Types::UpdateContentOutput
    UpdateKnowledgeBaseTemplateUriInput.add_member(:knowledge_base_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'knowledgeBaseId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateKnowledgeBaseTemplateUriInput.add_member(:template_uri, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Uri, location_name: 'templateUri', traits: {"smithy.api#required" => {}}))
    UpdateKnowledgeBaseTemplateUriInput.type = Types::UpdateKnowledgeBaseTemplateUriInput
    UpdateKnowledgeBaseTemplateUriOutput.add_member(:knowledge_base, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KnowledgeBaseData, location_name: 'knowledgeBase'))
    UpdateKnowledgeBaseTemplateUriOutput.type = Types::UpdateKnowledgeBaseTemplateUriOutput
    UpdateMessageTemplateMetadataRequest.add_member(:knowledge_base_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'knowledgeBaseId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateMessageTemplateMetadataRequest.add_member(:message_template_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArnOrEitherWithQualifier, location_name: 'messageTemplateId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateMessageTemplateMetadataRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name'))
    UpdateMessageTemplateMetadataRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description'))
    UpdateMessageTemplateMetadataRequest.add_member(:grouping_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GroupingConfiguration, location_name: 'groupingConfiguration'))
    UpdateMessageTemplateMetadataRequest.type = Types::UpdateMessageTemplateMetadataRequest
    UpdateMessageTemplateMetadataResponse.add_member(:message_template, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateData, location_name: 'messageTemplate'))
    UpdateMessageTemplateMetadataResponse.type = Types::UpdateMessageTemplateMetadataResponse
    UpdateMessageTemplateRequest.add_member(:knowledge_base_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'knowledgeBaseId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateMessageTemplateRequest.add_member(:message_template_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArnOrEitherWithQualifier, location_name: 'messageTemplateId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateMessageTemplateRequest.add_member(:content, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateContentProvider, location_name: 'content'))
    UpdateMessageTemplateRequest.add_member(:language, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LanguageCode, location_name: 'language'))
    UpdateMessageTemplateRequest.add_member(:default_attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateAttributes, location_name: 'defaultAttributes'))
    UpdateMessageTemplateRequest.type = Types::UpdateMessageTemplateRequest
    UpdateMessageTemplateResponse.add_member(:message_template, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateData, location_name: 'messageTemplate'))
    UpdateMessageTemplateResponse.type = Types::UpdateMessageTemplateResponse
    UpdateQuickResponseRequest.add_member(:knowledge_base_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'knowledgeBaseId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateQuickResponseRequest.add_member(:quick_response_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'quickResponseId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateQuickResponseRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QuickResponseName, location_name: 'name'))
    UpdateQuickResponseRequest.add_member(:content, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QuickResponseDataProvider, location_name: 'content'))
    UpdateQuickResponseRequest.add_member(:content_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QuickResponseType, location_name: 'contentType'))
    UpdateQuickResponseRequest.add_member(:grouping_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GroupingConfiguration, location_name: 'groupingConfiguration'))
    UpdateQuickResponseRequest.add_member(:remove_grouping_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'removeGroupingConfiguration'))
    UpdateQuickResponseRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QuickResponseDescription, location_name: 'description'))
    UpdateQuickResponseRequest.add_member(:remove_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'removeDescription'))
    UpdateQuickResponseRequest.add_member(:shortcut_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ShortCutKey, location_name: 'shortcutKey'))
    UpdateQuickResponseRequest.add_member(:remove_shortcut_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'removeShortcutKey'))
    UpdateQuickResponseRequest.add_member(:is_active, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'isActive'))
    UpdateQuickResponseRequest.add_member(:channels, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Channels, location_name: 'channels'))
    UpdateQuickResponseRequest.add_member(:language, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LanguageCode, location_name: 'language'))
    UpdateQuickResponseRequest.type = Types::UpdateQuickResponseRequest
    UpdateQuickResponseResponse.add_member(:quick_response, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QuickResponseData, location_name: 'quickResponse'))
    UpdateQuickResponseResponse.type = Types::UpdateQuickResponseResponse
    UpdateSessionDataRequest.add_member(:assistant_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'assistantId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateSessionDataRequest.add_member(:session_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'sessionId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateSessionDataRequest.add_member(:namespace, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SessionDataNamespace, location_name: 'namespace'))
    UpdateSessionDataRequest.add_member(:data, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RuntimeSessionDataList, location_name: 'data', traits: {"smithy.api#required" => {}}))
    UpdateSessionDataRequest.type = Types::UpdateSessionDataRequest
    UpdateSessionDataResponse.add_member(:session_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'sessionArn', traits: {"smithy.api#required" => {}}))
    UpdateSessionDataResponse.add_member(:session_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'sessionId', traits: {"smithy.api#required" => {}}))
    UpdateSessionDataResponse.add_member(:namespace, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SessionDataNamespace, location_name: 'namespace', traits: {"smithy.api#required" => {}}))
    UpdateSessionDataResponse.add_member(:data, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RuntimeSessionDataList, location_name: 'data', traits: {"smithy.api#required" => {}}))
    UpdateSessionDataResponse.type = Types::UpdateSessionDataResponse
    UpdateSessionRequest.add_member(:assistant_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'assistantId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateSessionRequest.add_member(:session_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'sessionId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateSessionRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description'))
    UpdateSessionRequest.add_member(:tag_filter, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagFilter, location_name: 'tagFilter'))
    UpdateSessionRequest.add_member(:ai_agent_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AIAgentConfigurationMap, location_name: 'aiAgentConfiguration'))
    UpdateSessionRequest.type = Types::UpdateSessionRequest
    UpdateSessionResponse.add_member(:session, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SessionData, location_name: 'session'))
    UpdateSessionResponse.type = Types::UpdateSessionResponse
    UrlConfiguration.add_member(:seed_urls, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SeedUrls, location_name: 'seedUrls'))
    UrlConfiguration.type = Types::UrlConfiguration
    UrlFilterList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UrlFilterPattern)
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message'))
    ValidationException.type = Types::ValidationException
    VectorIngestionConfiguration.add_member(:chunking_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChunkingConfiguration, location_name: 'chunkingConfiguration'))
    VectorIngestionConfiguration.add_member(:parsing_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ParsingConfiguration, location_name: 'parsingConfiguration'))
    VectorIngestionConfiguration.type = Types::VectorIngestionConfiguration
    WebCrawlerConfiguration.add_member(:url_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UrlConfiguration, location_name: 'urlConfiguration', traits: {"smithy.api#required" => {}}))
    WebCrawlerConfiguration.add_member(:crawler_limits, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WebCrawlerLimits, location_name: 'crawlerLimits'))
    WebCrawlerConfiguration.add_member(:inclusion_filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UrlFilterList, location_name: 'inclusionFilters'))
    WebCrawlerConfiguration.add_member(:exclusion_filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UrlFilterList, location_name: 'exclusionFilters'))
    WebCrawlerConfiguration.add_member(:scope, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WebScopeType, location_name: 'scope'))
    WebCrawlerConfiguration.type = Types::WebCrawlerConfiguration
    WebCrawlerLimits.add_member(:rate_limit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'rateLimit', traits: {"smithy.api#range" => {"min" => 1, "max" => 300}}))
    WebCrawlerLimits.type = Types::WebCrawlerLimits

    WisdomService = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.qconnect#WisdomService"
      service.name = "WisdomService"
      service.version = "2020-10-19"
      service.traits = {"aws.api#service" => {"sdkId" => "QConnect", "arnNamespace" => "wisdom", "cloudFormationName" => "Wisdom"}, "aws.auth#sigv4" => {"name" => "wisdom"}, "aws.protocols#restJson1" => {}, "smithy.api#cors" => {}, "smithy.api#title" => "Amazon Q Connect"}
      service.add_operation(:activate_message_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#ActivateMessageTemplate"
        operation.name = "ActivateMessageTemplate"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ActivateMessageTemplateRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ActivateMessageTemplateResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/knowledgeBases/{knowledgeBaseId}/messageTemplates/{messageTemplateId}/activate", "method" => "POST"}}
      end)
      service.add_operation(:create_ai_agent, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#CreateAIAgent"
        operation.name = "CreateAIAgent"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAIAgentRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAIAgentResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/assistants/{assistantId}/aiagents", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_ai_agent_version, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#CreateAIAgentVersion"
        operation.name = "CreateAIAgentVersion"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAIAgentVersionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAIAgentVersionResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/assistants/{assistantId}/aiagents/{aiAgentId}/versions", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_ai_guardrail, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#CreateAIGuardrail"
        operation.name = "CreateAIGuardrail"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAIGuardrailRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAIGuardrailResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/assistants/{assistantId}/aiguardrails", "method" => "POST"}, "smithy.api#idempotent" => {}, "smithy.api#private" => {}}
      end)
      service.add_operation(:create_ai_guardrail_version, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#CreateAIGuardrailVersion"
        operation.name = "CreateAIGuardrailVersion"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAIGuardrailVersionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAIGuardrailVersionResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/assistants/{assistantId}/aiguardrails/{aiGuardrailId}/versions", "method" => "POST"}, "smithy.api#idempotent" => {}, "smithy.api#private" => {}}
      end)
      service.add_operation(:create_ai_prompt, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#CreateAIPrompt"
        operation.name = "CreateAIPrompt"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAIPromptRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAIPromptResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/assistants/{assistantId}/aiprompts", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_ai_prompt_version, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#CreateAIPromptVersion"
        operation.name = "CreateAIPromptVersion"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAIPromptVersionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAIPromptVersionResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/assistants/{assistantId}/aiprompts/{aiPromptId}/versions", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_assistant, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#CreateAssistant"
        operation.name = "CreateAssistant"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAssistantInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAssistantOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/assistants", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_assistant_association, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#CreateAssistantAssociation"
        operation.name = "CreateAssistantAssociation"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAssistantAssociationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAssistantAssociationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/assistants/{assistantId}/associations", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_content, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#CreateContent"
        operation.name = "CreateContent"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateContentInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateContentOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/knowledgeBases/{knowledgeBaseId}/contents", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_content_association, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#CreateContentAssociation"
        operation.name = "CreateContentAssociation"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateContentAssociationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateContentAssociationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/knowledgeBases/{knowledgeBaseId}/contents/{contentId}/associations", "method" => "POST"}}
      end)
      service.add_operation(:create_knowledge_base, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#CreateKnowledgeBase"
        operation.name = "CreateKnowledgeBase"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateKnowledgeBaseInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateKnowledgeBaseOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/knowledgeBases", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_message_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#CreateMessageTemplate"
        operation.name = "CreateMessageTemplate"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateMessageTemplateRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateMessageTemplateResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/knowledgeBases/{knowledgeBaseId}/messageTemplates", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_message_template_attachment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#CreateMessageTemplateAttachment"
        operation.name = "CreateMessageTemplateAttachment"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateMessageTemplateAttachmentRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateMessageTemplateAttachmentResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/knowledgeBases/{knowledgeBaseId}/messageTemplates/{messageTemplateId}/attachments", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_message_template_version, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#CreateMessageTemplateVersion"
        operation.name = "CreateMessageTemplateVersion"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateMessageTemplateVersionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateMessageTemplateVersionResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/knowledgeBases/{knowledgeBaseId}/messageTemplates/{messageTemplateId}/versions", "method" => "POST"}}
      end)
      service.add_operation(:create_quick_response, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#CreateQuickResponse"
        operation.name = "CreateQuickResponse"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateQuickResponseRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateQuickResponseResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/knowledgeBases/{knowledgeBaseId}/quickResponses", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_session, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#CreateSession"
        operation.name = "CreateSession"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSessionInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSessionOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DependencyFailedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/assistants/{assistantId}/sessions", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:deactivate_message_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#DeactivateMessageTemplate"
        operation.name = "DeactivateMessageTemplate"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeactivateMessageTemplateRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeactivateMessageTemplateResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/knowledgeBases/{knowledgeBaseId}/messageTemplates/{messageTemplateId}/deactivate", "method" => "POST"}}
      end)
      service.add_operation(:delete_ai_agent, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#DeleteAIAgent"
        operation.name = "DeleteAIAgent"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAIAgentRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAIAgentResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/assistants/{assistantId}/aiagents/{aiAgentId}", "method" => "DELETE", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_ai_agent_version, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#DeleteAIAgentVersion"
        operation.name = "DeleteAIAgentVersion"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAIAgentVersionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAIAgentVersionResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/assistants/{assistantId}/aiagents/{aiAgentId}/versions/{versionNumber}", "method" => "DELETE", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_ai_guardrail, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#DeleteAIGuardrail"
        operation.name = "DeleteAIGuardrail"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAIGuardrailRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAIGuardrailResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/assistants/{assistantId}/aiguardrails/{aiGuardrailId}", "method" => "DELETE", "code" => 202}, "smithy.api#idempotent" => {}, "smithy.api#private" => {}}
      end)
      service.add_operation(:delete_ai_guardrail_version, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#DeleteAIGuardrailVersion"
        operation.name = "DeleteAIGuardrailVersion"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAIGuardrailVersionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAIGuardrailVersionResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/assistants/{assistantId}/aiguardrails/{aiGuardrailId}/versions/{versionNumber}", "method" => "DELETE", "code" => 202}, "smithy.api#idempotent" => {}, "smithy.api#private" => {}}
      end)
      service.add_operation(:delete_ai_prompt, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#DeleteAIPrompt"
        operation.name = "DeleteAIPrompt"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAIPromptRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAIPromptResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/assistants/{assistantId}/aiprompts/{aiPromptId}", "method" => "DELETE", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_ai_prompt_version, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#DeleteAIPromptVersion"
        operation.name = "DeleteAIPromptVersion"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAIPromptVersionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAIPromptVersionResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/assistants/{assistantId}/aiprompts/{aiPromptId}/versions/{versionNumber}", "method" => "DELETE", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_assistant, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#DeleteAssistant"
        operation.name = "DeleteAssistant"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAssistantInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAssistantOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/assistants/{assistantId}", "method" => "DELETE", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_assistant_association, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#DeleteAssistantAssociation"
        operation.name = "DeleteAssistantAssociation"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAssistantAssociationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAssistantAssociationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/assistants/{assistantId}/associations/{assistantAssociationId}", "method" => "DELETE", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_content, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#DeleteContent"
        operation.name = "DeleteContent"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteContentInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteContentOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/knowledgeBases/{knowledgeBaseId}/contents/{contentId}", "method" => "DELETE", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_content_association, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#DeleteContentAssociation"
        operation.name = "DeleteContentAssociation"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteContentAssociationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteContentAssociationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/knowledgeBases/{knowledgeBaseId}/contents/{contentId}/associations/{contentAssociationId}", "method" => "DELETE", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_import_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#DeleteImportJob"
        operation.name = "DeleteImportJob"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteImportJobRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteImportJobResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/knowledgeBases/{knowledgeBaseId}/importJobs/{importJobId}", "method" => "DELETE", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_knowledge_base, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#DeleteKnowledgeBase"
        operation.name = "DeleteKnowledgeBase"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteKnowledgeBaseInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteKnowledgeBaseOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/knowledgeBases/{knowledgeBaseId}", "method" => "DELETE", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_message_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#DeleteMessageTemplate"
        operation.name = "DeleteMessageTemplate"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteMessageTemplateRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteMessageTemplateResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/knowledgeBases/{knowledgeBaseId}/messageTemplates/{messageTemplateId}", "method" => "DELETE", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_message_template_attachment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#DeleteMessageTemplateAttachment"
        operation.name = "DeleteMessageTemplateAttachment"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteMessageTemplateAttachmentRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteMessageTemplateAttachmentResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/knowledgeBases/{knowledgeBaseId}/messageTemplates/{messageTemplateId}/attachments/{attachmentId}", "method" => "DELETE", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_quick_response, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#DeleteQuickResponse"
        operation.name = "DeleteQuickResponse"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteQuickResponseRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteQuickResponseResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/knowledgeBases/{knowledgeBaseId}/quickResponses/{quickResponseId}", "method" => "DELETE", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_ai_agent, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#GetAIAgent"
        operation.name = "GetAIAgent"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetAIAgentRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetAIAgentResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/assistants/{assistantId}/aiagents/{aiAgentId}", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_ai_guardrail, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#GetAIGuardrail"
        operation.name = "GetAIGuardrail"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetAIGuardrailRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetAIGuardrailResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/assistants/{assistantId}/aiguardrails/{aiGuardrailId}", "method" => "GET"}, "smithy.api#private" => {}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_ai_prompt, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#GetAIPrompt"
        operation.name = "GetAIPrompt"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetAIPromptRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetAIPromptResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/assistants/{assistantId}/aiprompts/{aiPromptId}", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_assistant, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#GetAssistant"
        operation.name = "GetAssistant"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetAssistantInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetAssistantOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/assistants/{assistantId}", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_assistant_association, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#GetAssistantAssociation"
        operation.name = "GetAssistantAssociation"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetAssistantAssociationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetAssistantAssociationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/assistants/{assistantId}/associations/{assistantAssociationId}", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_content, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#GetContent"
        operation.name = "GetContent"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetContentInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetContentOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/knowledgeBases/{knowledgeBaseId}/contents/{contentId}", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_content_association, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#GetContentAssociation"
        operation.name = "GetContentAssociation"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetContentAssociationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetContentAssociationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/knowledgeBases/{knowledgeBaseId}/contents/{contentId}/associations/{contentAssociationId}", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_content_summary, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#GetContentSummary"
        operation.name = "GetContentSummary"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetContentSummaryInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetContentSummaryOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/knowledgeBases/{knowledgeBaseId}/contents/{contentId}/summary", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_import_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#GetImportJob"
        operation.name = "GetImportJob"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetImportJobRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetImportJobResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/knowledgeBases/{knowledgeBaseId}/importJobs/{importJobId}", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_knowledge_base, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#GetKnowledgeBase"
        operation.name = "GetKnowledgeBase"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetKnowledgeBaseInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetKnowledgeBaseOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/knowledgeBases/{knowledgeBaseId}", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_message_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#GetMessageTemplate"
        operation.name = "GetMessageTemplate"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetMessageTemplateRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetMessageTemplateResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/knowledgeBases/{knowledgeBaseId}/messageTemplates/{messageTemplateId}", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_next_message, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#GetNextMessage"
        operation.name = "GetNextMessage"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetNextMessageRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetNextMessageResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/assistants/{assistantId}/sessions/{sessionId}/messages/next", "method" => "GET"}, "smithy.api#private" => {}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_quick_response, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#GetQuickResponse"
        operation.name = "GetQuickResponse"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetQuickResponseRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetQuickResponseResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/knowledgeBases/{knowledgeBaseId}/quickResponses/{quickResponseId}", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_recommendations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#GetRecommendations"
        operation.name = "GetRecommendations"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetRecommendationsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetRecommendationsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#deprecated" => {"message" => "GetRecommendations API will be discontinued starting June 1, 2024. To receive generative responses after March 1, 2024 you will need to create a new Assistant in the Connect console and integrate the Amazon Q in Connect JavaScript library (amazon-q-connectjs) into your applications."}, "smithy.api#http" => {"uri" => "/assistants/{assistantId}/sessions/{sessionId}/recommendations", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_session, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#GetSession"
        operation.name = "GetSession"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetSessionInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetSessionOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/assistants/{assistantId}/sessions/{sessionId}", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_ai_agent_versions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#ListAIAgentVersions"
        operation.name = "ListAIAgentVersions"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAIAgentVersionsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAIAgentVersionsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/assistants/{assistantId}/aiagents/{aiAgentId}/versions", "method" => "GET"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListAIAgentVersions.new
      end)
      service.add_operation(:list_ai_agents, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#ListAIAgents"
        operation.name = "ListAIAgents"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAIAgentsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAIAgentsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/assistants/{assistantId}/aiagents", "method" => "GET"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListAIAgents.new
      end)
      service.add_operation(:list_ai_guardrail_versions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#ListAIGuardrailVersions"
        operation.name = "ListAIGuardrailVersions"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAIGuardrailVersionsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAIGuardrailVersionsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/assistants/{assistantId}/aiguardrails/{aiGuardrailId}/versions", "method" => "GET"}, "smithy.api#private" => {}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListAIGuardrailVersions.new
      end)
      service.add_operation(:list_ai_guardrails, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#ListAIGuardrails"
        operation.name = "ListAIGuardrails"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAIGuardrailsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAIGuardrailsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/assistants/{assistantId}/aiguardrails", "method" => "GET"}, "smithy.api#private" => {}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListAIGuardrails.new
      end)
      service.add_operation(:list_ai_prompt_versions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#ListAIPromptVersions"
        operation.name = "ListAIPromptVersions"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAIPromptVersionsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAIPromptVersionsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/assistants/{assistantId}/aiprompts/{aiPromptId}/versions", "method" => "GET"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListAIPromptVersions.new
      end)
      service.add_operation(:list_ai_prompts, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#ListAIPrompts"
        operation.name = "ListAIPrompts"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAIPromptsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAIPromptsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/assistants/{assistantId}/aiprompts", "method" => "GET"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListAIPrompts.new
      end)
      service.add_operation(:list_assistant_associations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#ListAssistantAssociations"
        operation.name = "ListAssistantAssociations"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAssistantAssociationsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAssistantAssociationsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/assistants/{assistantId}/associations", "method" => "GET"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListAssistantAssociations.new
      end)
      service.add_operation(:list_assistants, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#ListAssistants"
        operation.name = "ListAssistants"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAssistantsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAssistantsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/assistants", "method" => "GET"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListAssistants.new
      end)
      service.add_operation(:list_content_associations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#ListContentAssociations"
        operation.name = "ListContentAssociations"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListContentAssociationsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListContentAssociationsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/knowledgeBases/{knowledgeBaseId}/contents/{contentId}/associations", "method" => "GET"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListContentAssociations.new
      end)
      service.add_operation(:list_contents, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#ListContents"
        operation.name = "ListContents"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListContentsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListContentsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/knowledgeBases/{knowledgeBaseId}/contents", "method" => "GET"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListContents.new
      end)
      service.add_operation(:list_import_jobs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#ListImportJobs"
        operation.name = "ListImportJobs"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListImportJobsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListImportJobsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/knowledgeBases/{knowledgeBaseId}/importJobs", "method" => "GET"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListImportJobs.new
      end)
      service.add_operation(:list_knowledge_bases, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#ListKnowledgeBases"
        operation.name = "ListKnowledgeBases"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListKnowledgeBasesInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListKnowledgeBasesOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/knowledgeBases", "method" => "GET"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListKnowledgeBases.new
      end)
      service.add_operation(:list_message_template_versions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#ListMessageTemplateVersions"
        operation.name = "ListMessageTemplateVersions"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListMessageTemplateVersionsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListMessageTemplateVersionsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/knowledgeBases/{knowledgeBaseId}/messageTemplates/{messageTemplateId}/versions", "method" => "GET"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListMessageTemplateVersions.new
      end)
      service.add_operation(:list_message_templates, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#ListMessageTemplates"
        operation.name = "ListMessageTemplates"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListMessageTemplatesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListMessageTemplatesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/knowledgeBases/{knowledgeBaseId}/messageTemplates", "method" => "GET"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListMessageTemplates.new
      end)
      service.add_operation(:list_messages, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#ListMessages"
        operation.name = "ListMessages"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListMessagesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListMessagesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/assistants/{assistantId}/sessions/{sessionId}/messages", "method" => "GET"}, "smithy.api#private" => {}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListMessages.new
      end)
      service.add_operation(:list_quick_responses, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#ListQuickResponses"
        operation.name = "ListQuickResponses"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListQuickResponsesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListQuickResponsesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/knowledgeBases/{knowledgeBaseId}/quickResponses", "method" => "GET"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListQuickResponses.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"uri" => "/tags/{resourceArn}", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:notify_recommendations_received, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#NotifyRecommendationsReceived"
        operation.name = "NotifyRecommendationsReceived"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotifyRecommendationsReceivedInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotifyRecommendationsReceivedOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/assistants/{assistantId}/sessions/{sessionId}/recommendations/notify", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:put_feedback, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#PutFeedback"
        operation.name = "PutFeedback"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutFeedbackRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutFeedbackResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/assistants/{assistantId}/feedback", "method" => "PUT"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:query_assistant, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#QueryAssistant"
        operation.name = "QueryAssistant"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueryAssistantInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueryAssistantOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestTimeoutException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#deprecated" => {"message" => "QueryAssistant API will be discontinued starting June 1, 2024. To receive generative responses after March 1, 2024 you will need to create a new Assistant in the Connect console and integrate the Amazon Q in Connect JavaScript library (amazon-q-connectjs) into your applications."}, "smithy.api#http" => {"uri" => "/assistants/{assistantId}/query", "method" => "POST"}, "smithy.api#readonly" => {}, "smithy.api#suppress" => ["HttpMethodSemantics"]}
        operation[:paginator] = Paginators::QueryAssistant.new
      end)
      service.add_operation(:remove_assistant_ai_agent, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#RemoveAssistantAIAgent"
        operation.name = "RemoveAssistantAIAgent"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RemoveAssistantAIAgentRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RemoveAssistantAIAgentResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/assistants/{assistantId}/aiagentConfiguration", "method" => "DELETE", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:remove_knowledge_base_template_uri, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#RemoveKnowledgeBaseTemplateUri"
        operation.name = "RemoveKnowledgeBaseTemplateUri"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RemoveKnowledgeBaseTemplateUriInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RemoveKnowledgeBaseTemplateUriOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/knowledgeBases/{knowledgeBaseId}/templateUri", "method" => "DELETE", "code" => 204}}
      end)
      service.add_operation(:render_message_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#RenderMessageTemplate"
        operation.name = "RenderMessageTemplate"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RenderMessageTemplateRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RenderMessageTemplateResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/knowledgeBases/{knowledgeBaseId}/messageTemplates/{messageTemplateId}/render", "method" => "POST"}}
      end)
      service.add_operation(:search_content, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#SearchContent"
        operation.name = "SearchContent"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SearchContentInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SearchContentOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/knowledgeBases/{knowledgeBaseId}/search", "method" => "POST"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::SearchContent.new
      end)
      service.add_operation(:search_message_templates, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#SearchMessageTemplates"
        operation.name = "SearchMessageTemplates"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SearchMessageTemplatesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SearchMessageTemplatesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/knowledgeBases/{knowledgeBaseId}/search/messageTemplates", "method" => "POST"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::SearchMessageTemplates.new
      end)
      service.add_operation(:search_quick_responses, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#SearchQuickResponses"
        operation.name = "SearchQuickResponses"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SearchQuickResponsesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SearchQuickResponsesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestTimeoutException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/knowledgeBases/{knowledgeBaseId}/search/quickResponses", "method" => "POST"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::SearchQuickResponses.new
      end)
      service.add_operation(:search_sessions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#SearchSessions"
        operation.name = "SearchSessions"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SearchSessionsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SearchSessionsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/assistants/{assistantId}/searchSessions", "method" => "POST"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::SearchSessions.new
      end)
      service.add_operation(:send_message, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#SendMessage"
        operation.name = "SendMessage"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SendMessageRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SendMessageResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestTimeoutException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/assistants/{assistantId}/sessions/{sessionId}/message", "method" => "POST"}, "smithy.api#idempotent" => {}, "smithy.api#private" => {}}
      end)
      service.add_operation(:start_content_upload, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#StartContentUpload"
        operation.name = "StartContentUpload"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartContentUploadInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartContentUploadOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/knowledgeBases/{knowledgeBaseId}/upload", "method" => "POST"}}
      end)
      service.add_operation(:start_import_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#StartImportJob"
        operation.name = "StartImportJob"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartImportJobRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartImportJobResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/knowledgeBases/{knowledgeBaseId}/importJobs", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#TagResource"
        operation.name = "TagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyTagsException)
        operation.traits = {"smithy.api#http" => {"uri" => "/tags/{resourceArn}", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#UntagResource"
        operation.name = "UntagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"uri" => "/tags/{resourceArn}", "method" => "DELETE"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_ai_agent, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#UpdateAIAgent"
        operation.name = "UpdateAIAgent"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAIAgentRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAIAgentResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/assistants/{assistantId}/aiagents/{aiAgentId}", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_ai_guardrail, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#UpdateAIGuardrail"
        operation.name = "UpdateAIGuardrail"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAIGuardrailRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAIGuardrailResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/assistants/{assistantId}/aiguardrails/{aiGuardrailId}", "method" => "POST"}, "smithy.api#idempotent" => {}, "smithy.api#private" => {}}
      end)
      service.add_operation(:update_ai_prompt, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#UpdateAIPrompt"
        operation.name = "UpdateAIPrompt"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAIPromptRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAIPromptResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/assistants/{assistantId}/aiprompts/{aiPromptId}", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_assistant_ai_agent, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#UpdateAssistantAIAgent"
        operation.name = "UpdateAssistantAIAgent"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAssistantAIAgentRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAssistantAIAgentResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/assistants/{assistantId}/aiagentConfiguration", "method" => "POST"}}
      end)
      service.add_operation(:update_content, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#UpdateContent"
        operation.name = "UpdateContent"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateContentInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateContentOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PreconditionFailedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/knowledgeBases/{knowledgeBaseId}/contents/{contentId}", "method" => "POST"}}
      end)
      service.add_operation(:update_knowledge_base_template_uri, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#UpdateKnowledgeBaseTemplateUri"
        operation.name = "UpdateKnowledgeBaseTemplateUri"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateKnowledgeBaseTemplateUriInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateKnowledgeBaseTemplateUriOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/knowledgeBases/{knowledgeBaseId}/templateUri", "method" => "POST"}}
      end)
      service.add_operation(:update_message_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#UpdateMessageTemplate"
        operation.name = "UpdateMessageTemplate"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateMessageTemplateRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateMessageTemplateResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/knowledgeBases/{knowledgeBaseId}/messageTemplates/{messageTemplateId}", "method" => "POST"}}
      end)
      service.add_operation(:update_message_template_metadata, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#UpdateMessageTemplateMetadata"
        operation.name = "UpdateMessageTemplateMetadata"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateMessageTemplateMetadataRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateMessageTemplateMetadataResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/knowledgeBases/{knowledgeBaseId}/messageTemplates/{messageTemplateId}/metadata", "method" => "POST"}}
      end)
      service.add_operation(:update_quick_response, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#UpdateQuickResponse"
        operation.name = "UpdateQuickResponse"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateQuickResponseRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateQuickResponseResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PreconditionFailedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/knowledgeBases/{knowledgeBaseId}/quickResponses/{quickResponseId}", "method" => "POST"}}
      end)
      service.add_operation(:update_session, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#UpdateSession"
        operation.name = "UpdateSession"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSessionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSessionResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/assistants/{assistantId}/sessions/{sessionId}", "method" => "POST"}}
      end)
      service.add_operation(:update_session_data, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#UpdateSessionData"
        operation.name = "UpdateSessionData"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSessionDataRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSessionDataResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/assistants/{assistantId}/sessions/{sessionId}/data", "method" => "PATCH"}}
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
