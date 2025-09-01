# frozen_string_literal: true

# This is generated code!

module Aws::QConnect
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AIAgentAssociationConfigurationType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#AIAgentAssociationConfigurationType', name: 'AIAgentAssociationConfigurationType', traits: {"smithy.api#enum" => [{"value" => "KNOWLEDGE_BASE", "name" => "KNOWLEDGE_BASE"}]})
    AIAgentConfiguration = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.qconnect#AIAgentConfiguration', name: 'AIAgentConfiguration')
    AIAgentConfigurationData = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#AIAgentConfigurationData', name: 'AIAgentConfigurationData')
    AIAgentConfigurationMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.qconnect#AIAgentConfigurationMap', name: 'AIAgentConfigurationMap')
    AIAgentData = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#AIAgentData', name: 'AIAgentData', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.qconnect#AIAgent"}]})
    AIAgentSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#AIAgentSummary', name: 'AIAgentSummary', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.qconnect#AIAgent"}]})
    AIAgentSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qconnect#AIAgentSummaryList', name: 'AIAgentSummaryList')
    AIAgentType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#AIAgentType', name: 'AIAgentType', traits: {"smithy.api#enum" => [{"value" => "MANUAL_SEARCH", "name" => "MANUAL_SEARCH"}, {"value" => "ANSWER_RECOMMENDATION", "name" => "ANSWER_RECOMMENDATION"}, {"value" => "SELF_SERVICE", "name" => "SELF_SERVICE"}]})
    AIAgentVersionSummariesList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qconnect#AIAgentVersionSummariesList', name: 'AIAgentVersionSummariesList')
    AIAgentVersionSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#AIAgentVersionSummary', name: 'AIAgentVersionSummary')
    AIGuardrailBlockedMessaging = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#AIGuardrailBlockedMessaging', name: 'AIGuardrailBlockedMessaging', traits: {"smithy.api#length" => {"min" => 1, "max" => 500}, "smithy.api#sensitive" => {}})
    AIGuardrailContentPolicyConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#AIGuardrailContentPolicyConfig', name: 'AIGuardrailContentPolicyConfig')
    AIGuardrailContextualGroundingPolicyConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#AIGuardrailContextualGroundingPolicyConfig', name: 'AIGuardrailContextualGroundingPolicyConfig')
    AIGuardrailData = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#AIGuardrailData', name: 'AIGuardrailData', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.qconnect#AIGuardrail"}]})
    AIGuardrailDescription = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#AIGuardrailDescription', name: 'AIGuardrailDescription', traits: {"smithy.api#length" => {"min" => 1, "max" => 200}, "smithy.api#sensitive" => {}})
    AIGuardrailSensitiveInformationPolicyConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#AIGuardrailSensitiveInformationPolicyConfig', name: 'AIGuardrailSensitiveInformationPolicyConfig')
    AIGuardrailSummariesList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qconnect#AIGuardrailSummariesList', name: 'AIGuardrailSummariesList')
    AIGuardrailSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#AIGuardrailSummary', name: 'AIGuardrailSummary', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.qconnect#AIGuardrail"}]})
    AIGuardrailTopicPolicyConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#AIGuardrailTopicPolicyConfig', name: 'AIGuardrailTopicPolicyConfig')
    AIGuardrailVersionSummariesList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qconnect#AIGuardrailVersionSummariesList', name: 'AIGuardrailVersionSummariesList')
    AIGuardrailVersionSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#AIGuardrailVersionSummary', name: 'AIGuardrailVersionSummary')
    AIGuardrailWordPolicyConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#AIGuardrailWordPolicyConfig', name: 'AIGuardrailWordPolicyConfig')
    AIPromptAPIFormat = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#AIPromptAPIFormat', name: 'AIPromptAPIFormat', traits: {"smithy.api#enum" => [{"value" => "ANTHROPIC_CLAUDE_MESSAGES", "name" => "ANTHROPIC_CLAUDE_MESSAGES"}, {"value" => "ANTHROPIC_CLAUDE_TEXT_COMPLETIONS", "name" => "ANTHROPIC_CLAUDE_TEXT_COMPLETIONS"}, {"value" => "MESSAGES", "name" => "MESSAGES"}, {"value" => "TEXT_COMPLETIONS", "name" => "TEXT_COMPLETIONS"}]})
    AIPromptData = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#AIPromptData', name: 'AIPromptData', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.qconnect#AIPrompt"}]})
    AIPromptModelIdentifier = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#AIPromptModelIdentifier', name: 'AIPromptModelIdentifier', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    AIPromptSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#AIPromptSummary', name: 'AIPromptSummary', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.qconnect#AIPrompt"}]})
    AIPromptSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qconnect#AIPromptSummaryList', name: 'AIPromptSummaryList')
    AIPromptTemplateConfiguration = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.qconnect#AIPromptTemplateConfiguration', name: 'AIPromptTemplateConfiguration')
    AIPromptTemplateType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#AIPromptTemplateType', name: 'AIPromptTemplateType', traits: {"smithy.api#enum" => [{"value" => "TEXT", "name" => "TEXT"}]})
    AIPromptType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#AIPromptType', name: 'AIPromptType', traits: {"smithy.api#enum" => [{"value" => "ANSWER_GENERATION", "name" => "ANSWER_GENERATION"}, {"value" => "INTENT_LABELING_GENERATION", "name" => "INTENT_LABELING_GENERATION"}, {"value" => "QUERY_REFORMULATION", "name" => "QUERY_REFORMULATION"}, {"value" => "SELF_SERVICE_PRE_PROCESSING", "name" => "SELF_SERVICE_PRE_PROCESSING"}, {"value" => "SELF_SERVICE_ANSWER_GENERATION", "name" => "SELF_SERVICE_ANSWER_GENERATION"}]})
    AIPromptVersionSummariesList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qconnect#AIPromptVersionSummariesList', name: 'AIPromptVersionSummariesList')
    AIPromptVersionSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#AIPromptVersionSummary', name: 'AIPromptVersionSummary')
    AccessDeniedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#AccessDeniedException', name: 'AccessDeniedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    ActivateMessageTemplateRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#ActivateMessageTemplateRequest', name: 'ActivateMessageTemplateRequest')
    ActivateMessageTemplateResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#ActivateMessageTemplateResponse', name: 'ActivateMessageTemplateResponse')
    AgentAttributes = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#AgentAttributes', name: 'AgentAttributes')
    AmazonConnectGuideAssociationData = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#AmazonConnectGuideAssociationData', name: 'AmazonConnectGuideAssociationData')
    AndConditions = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qconnect#AndConditions', name: 'AndConditions')
    AnswerRecommendationAIAgentConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#AnswerRecommendationAIAgentConfiguration', name: 'AnswerRecommendationAIAgentConfiguration')
    AppIntegrationsConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#AppIntegrationsConfiguration', name: 'AppIntegrationsConfiguration')
    Arn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#Arn', name: 'Arn', traits: {"smithy.api#pattern" => "^arn:[a-z-]*?:wisdom:[a-z0-9-]*?:[0-9]{12}:[a-z-]*?/[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}(?:/[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}){0,2}$"})
    ArnWithQualifier = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#ArnWithQualifier', name: 'ArnWithQualifier', traits: {"smithy.api#pattern" => "^arn:[a-z-]*?:wisdom:[a-z0-9-]*?:[0-9]{12}:[a-z-]*?/[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}(?:/[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}){0,2}(:[A-Z0-9_$]+){0,1}$"})
    AssistantAssociationData = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#AssistantAssociationData', name: 'AssistantAssociationData', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.qconnect#AssistantAssociation"}]})
    AssistantAssociationInputData = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.qconnect#AssistantAssociationInputData', name: 'AssistantAssociationInputData')
    AssistantAssociationOutputData = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.qconnect#AssistantAssociationOutputData', name: 'AssistantAssociationOutputData')
    AssistantAssociationSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#AssistantAssociationSummary', name: 'AssistantAssociationSummary', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.qconnect#AssistantAssociation"}]})
    AssistantAssociationSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qconnect#AssistantAssociationSummaryList', name: 'AssistantAssociationSummaryList')
    AssistantCapabilityConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#AssistantCapabilityConfiguration', name: 'AssistantCapabilityConfiguration')
    AssistantCapabilityType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#AssistantCapabilityType', name: 'AssistantCapabilityType', traits: {"smithy.api#enum" => [{"value" => "V1", "name" => "V1"}, {"value" => "V2", "name" => "V2"}]})
    AssistantData = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#AssistantData', name: 'AssistantData')
    AssistantIntegrationConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#AssistantIntegrationConfiguration', name: 'AssistantIntegrationConfiguration')
    AssistantList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qconnect#AssistantList', name: 'AssistantList')
    AssistantStatus = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#AssistantStatus', name: 'AssistantStatus', traits: {"smithy.api#enum" => [{"value" => "CREATE_IN_PROGRESS", "name" => "CREATE_IN_PROGRESS"}, {"value" => "CREATE_FAILED", "name" => "CREATE_FAILED"}, {"value" => "ACTIVE", "name" => "ACTIVE"}, {"value" => "DELETE_IN_PROGRESS", "name" => "DELETE_IN_PROGRESS"}, {"value" => "DELETE_FAILED", "name" => "DELETE_FAILED"}, {"value" => "DELETED", "name" => "DELETED"}]})
    AssistantSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#AssistantSummary', name: 'AssistantSummary')
    AssistantType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#AssistantType', name: 'AssistantType', traits: {"smithy.api#enum" => [{"value" => "AGENT", "name" => "AGENT"}]})
    AssociationConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#AssociationConfiguration', name: 'AssociationConfiguration')
    AssociationConfigurationData = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.qconnect#AssociationConfigurationData', name: 'AssociationConfigurationData')
    AssociationConfigurationList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qconnect#AssociationConfigurationList', name: 'AssociationConfigurationList')
    AssociationType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#AssociationType', name: 'AssociationType', traits: {"smithy.api#enum" => [{"value" => "KNOWLEDGE_BASE", "name" => "KNOWLEDGE_BASE"}]})
    AttachmentFileName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#AttachmentFileName', name: 'AttachmentFileName', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[\\p{L}\\p{M}\\p{N}_\\s&@()+,;=\\-]+\\.[A-Za-z0-9]+$", "smithy.api#sensitive" => {}})
    BedrockFoundationModelConfigurationForParsing = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#BedrockFoundationModelConfigurationForParsing', name: 'BedrockFoundationModelConfigurationForParsing')
    BedrockModelArnForParsing = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#BedrockModelArnForParsing', name: 'BedrockModelArnForParsing', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^arn:aws(-[^:]+)?:bedrock:[a-z0-9-]{1,20}::foundation-model/anthropic.claude-3-haiku-20240307-v1:0$"})
    Channel = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#Channel', name: 'Channel', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}, "smithy.api#sensitive" => {}})
    ChannelSubtype = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#ChannelSubtype', name: 'ChannelSubtype', traits: {"smithy.api#enum" => [{"value" => "EMAIL", "name" => "EMAIL"}, {"value" => "SMS", "name" => "SMS"}]})
    Channels = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qconnect#Channels', name: 'Channels', traits: {"smithy.api#uniqueItems" => {}})
    ChunkingConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#ChunkingConfiguration', name: 'ChunkingConfiguration')
    ChunkingStrategy = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#ChunkingStrategy', name: 'ChunkingStrategy', traits: {"smithy.api#enum" => [{"value" => "FIXED_SIZE", "name" => "FIXED_SIZE"}, {"value" => "NONE", "name" => "NONE"}, {"value" => "HIERARCHICAL", "name" => "HIERARCHICAL"}, {"value" => "SEMANTIC", "name" => "SEMANTIC"}]})
    CitationSpan = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#CitationSpan', name: 'CitationSpan')
    CitationSpanOffset = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.qconnect#CitationSpanOffset', name: 'CitationSpanOffset', traits: {"smithy.api#default" => 0})
    ClientToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#ClientToken', name: 'ClientToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 4096}})
    Configuration = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.qconnect#Configuration', name: 'Configuration')
    ConflictException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#ConflictException', name: 'ConflictException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ConnectConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#ConnectConfiguration', name: 'ConnectConfiguration')
    ContactAttributeKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#ContactAttributeKey', name: 'ContactAttributeKey')
    ContactAttributeKeys = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qconnect#ContactAttributeKeys', name: 'ContactAttributeKeys', traits: {"smithy.api#sensitive" => {}, "smithy.api#uniqueItems" => {}})
    ContactAttributeValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#ContactAttributeValue', name: 'ContactAttributeValue')
    ContactAttributes = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.qconnect#ContactAttributes', name: 'ContactAttributes', traits: {"smithy.api#sensitive" => {}})
    ContentAssociationContents = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.qconnect#ContentAssociationContents', name: 'ContentAssociationContents')
    ContentAssociationData = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#ContentAssociationData', name: 'ContentAssociationData', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.qconnect#ContentAssociation"}]})
    ContentAssociationSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#ContentAssociationSummary', name: 'ContentAssociationSummary', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.qconnect#ContentAssociation"}]})
    ContentAssociationSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qconnect#ContentAssociationSummaryList', name: 'ContentAssociationSummaryList')
    ContentAssociationType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#ContentAssociationType', name: 'ContentAssociationType', traits: {"smithy.api#enum" => [{"value" => "AMAZON_CONNECT_GUIDE", "name" => "AMAZON_CONNECT_GUIDE"}]})
    ContentData = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#ContentData', name: 'ContentData', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.qconnect#Content"}, {"resource" => "com.amazonaws.qconnect#KnowledgeBase"}]})
    ContentDataDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#ContentDataDetails', name: 'ContentDataDetails')
    ContentDisposition = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#ContentDisposition', name: 'ContentDisposition', traits: {"smithy.api#enum" => [{"value" => "ATTACHMENT", "name" => "ATTACHMENT"}]})
    ContentFeedbackData = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.qconnect#ContentFeedbackData', name: 'ContentFeedbackData')
    ContentMetadata = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.qconnect#ContentMetadata', name: 'ContentMetadata', traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    ContentReference = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#ContentReference', name: 'ContentReference')
    ContentStatus = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#ContentStatus', name: 'ContentStatus', traits: {"smithy.api#enum" => [{"value" => "CREATE_IN_PROGRESS", "name" => "CREATE_IN_PROGRESS"}, {"value" => "CREATE_FAILED", "name" => "CREATE_FAILED"}, {"value" => "ACTIVE", "name" => "ACTIVE"}, {"value" => "DELETE_IN_PROGRESS", "name" => "DELETE_IN_PROGRESS"}, {"value" => "DELETE_FAILED", "name" => "DELETE_FAILED"}, {"value" => "DELETED", "name" => "DELETED"}, {"value" => "UPDATE_FAILED", "name" => "UPDATE_FAILED"}]})
    ContentSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#ContentSummary', name: 'ContentSummary', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.qconnect#Content"}, {"resource" => "com.amazonaws.qconnect#KnowledgeBase"}]})
    ContentSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qconnect#ContentSummaryList', name: 'ContentSummaryList')
    ContentTitle = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#ContentTitle', name: 'ContentTitle', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    ContentType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#ContentType', name: 'ContentType', traits: {"smithy.api#pattern" => "^(text/(plain|html|csv))|(application/(pdf|vnd\\.openxmlformats-officedocument\\.wordprocessingml\\.document))|(application/x\\.wisdom-json;source=(salesforce|servicenow|zendesk))$"})
    ConversationContext = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#ConversationContext', name: 'ConversationContext')
    ConversationState = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#ConversationState', name: 'ConversationState')
    ConversationStatus = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#ConversationStatus', name: 'ConversationStatus', traits: {"smithy.api#enum" => [{"value" => "CLOSED", "name" => "CLOSED"}, {"value" => "READY", "name" => "READY"}, {"value" => "PROCESSING", "name" => "PROCESSING"}]})
    ConversationStatusReason = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#ConversationStatusReason', name: 'ConversationStatusReason', traits: {"smithy.api#enum" => [{"value" => "SUCCESS", "name" => "SUCCESS"}, {"value" => "FAILED", "name" => "FAILED"}, {"value" => "REJECTED", "name" => "REJECTED"}]})
    CreateAIAgentRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#CreateAIAgentRequest', name: 'CreateAIAgentRequest')
    CreateAIAgentResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#CreateAIAgentResponse', name: 'CreateAIAgentResponse')
    CreateAIAgentVersionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#CreateAIAgentVersionRequest', name: 'CreateAIAgentVersionRequest')
    CreateAIAgentVersionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#CreateAIAgentVersionResponse', name: 'CreateAIAgentVersionResponse')
    CreateAIGuardrailRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#CreateAIGuardrailRequest', name: 'CreateAIGuardrailRequest')
    CreateAIGuardrailResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#CreateAIGuardrailResponse', name: 'CreateAIGuardrailResponse')
    CreateAIGuardrailVersionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#CreateAIGuardrailVersionRequest', name: 'CreateAIGuardrailVersionRequest')
    CreateAIGuardrailVersionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#CreateAIGuardrailVersionResponse', name: 'CreateAIGuardrailVersionResponse')
    CreateAIPromptRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#CreateAIPromptRequest', name: 'CreateAIPromptRequest')
    CreateAIPromptResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#CreateAIPromptResponse', name: 'CreateAIPromptResponse')
    CreateAIPromptVersionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#CreateAIPromptVersionRequest', name: 'CreateAIPromptVersionRequest')
    CreateAIPromptVersionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#CreateAIPromptVersionResponse', name: 'CreateAIPromptVersionResponse')
    CreateAssistantAssociationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#CreateAssistantAssociationInput', name: 'CreateAssistantAssociationInput')
    CreateAssistantAssociationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#CreateAssistantAssociationOutput', name: 'CreateAssistantAssociationOutput')
    CreateAssistantInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#CreateAssistantInput', name: 'CreateAssistantInput')
    CreateAssistantOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#CreateAssistantOutput', name: 'CreateAssistantOutput')
    CreateContentAssociationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#CreateContentAssociationRequest', name: 'CreateContentAssociationRequest')
    CreateContentAssociationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#CreateContentAssociationResponse', name: 'CreateContentAssociationResponse')
    CreateContentInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#CreateContentInput', name: 'CreateContentInput')
    CreateContentOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#CreateContentOutput', name: 'CreateContentOutput')
    CreateKnowledgeBaseInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#CreateKnowledgeBaseInput', name: 'CreateKnowledgeBaseInput')
    CreateKnowledgeBaseOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#CreateKnowledgeBaseOutput', name: 'CreateKnowledgeBaseOutput')
    CreateMessageTemplateAttachmentRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#CreateMessageTemplateAttachmentRequest', name: 'CreateMessageTemplateAttachmentRequest')
    CreateMessageTemplateAttachmentResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#CreateMessageTemplateAttachmentResponse', name: 'CreateMessageTemplateAttachmentResponse')
    CreateMessageTemplateRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#CreateMessageTemplateRequest', name: 'CreateMessageTemplateRequest')
    CreateMessageTemplateResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#CreateMessageTemplateResponse', name: 'CreateMessageTemplateResponse')
    CreateMessageTemplateVersionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#CreateMessageTemplateVersionRequest', name: 'CreateMessageTemplateVersionRequest')
    CreateMessageTemplateVersionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#CreateMessageTemplateVersionResponse', name: 'CreateMessageTemplateVersionResponse')
    CreateQuickResponseRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#CreateQuickResponseRequest', name: 'CreateQuickResponseRequest')
    CreateQuickResponseResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#CreateQuickResponseResponse', name: 'CreateQuickResponseResponse')
    CreateSessionInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#CreateSessionInput', name: 'CreateSessionInput')
    CreateSessionOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#CreateSessionOutput', name: 'CreateSessionOutput')
    CustomAttributes = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.qconnect#CustomAttributes', name: 'CustomAttributes', traits: {"smithy.api#sensitive" => {}})
    CustomerProfileAttributes = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#CustomerProfileAttributes', name: 'CustomerProfileAttributes')
    DataDetails = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.qconnect#DataDetails', name: 'DataDetails')
    DataReference = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.qconnect#DataReference', name: 'DataReference')
    DataSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#DataSummary', name: 'DataSummary')
    DataSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qconnect#DataSummaryList', name: 'DataSummaryList')
    DeactivateMessageTemplateRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#DeactivateMessageTemplateRequest', name: 'DeactivateMessageTemplateRequest')
    DeactivateMessageTemplateResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#DeactivateMessageTemplateResponse', name: 'DeactivateMessageTemplateResponse')
    DeleteAIAgentRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#DeleteAIAgentRequest', name: 'DeleteAIAgentRequest')
    DeleteAIAgentResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#DeleteAIAgentResponse', name: 'DeleteAIAgentResponse')
    DeleteAIAgentVersionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#DeleteAIAgentVersionRequest', name: 'DeleteAIAgentVersionRequest')
    DeleteAIAgentVersionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#DeleteAIAgentVersionResponse', name: 'DeleteAIAgentVersionResponse')
    DeleteAIGuardrailRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#DeleteAIGuardrailRequest', name: 'DeleteAIGuardrailRequest')
    DeleteAIGuardrailResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#DeleteAIGuardrailResponse', name: 'DeleteAIGuardrailResponse')
    DeleteAIGuardrailVersionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#DeleteAIGuardrailVersionRequest', name: 'DeleteAIGuardrailVersionRequest')
    DeleteAIGuardrailVersionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#DeleteAIGuardrailVersionResponse', name: 'DeleteAIGuardrailVersionResponse')
    DeleteAIPromptRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#DeleteAIPromptRequest', name: 'DeleteAIPromptRequest')
    DeleteAIPromptResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#DeleteAIPromptResponse', name: 'DeleteAIPromptResponse')
    DeleteAIPromptVersionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#DeleteAIPromptVersionRequest', name: 'DeleteAIPromptVersionRequest')
    DeleteAIPromptVersionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#DeleteAIPromptVersionResponse', name: 'DeleteAIPromptVersionResponse')
    DeleteAssistantAssociationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#DeleteAssistantAssociationInput', name: 'DeleteAssistantAssociationInput')
    DeleteAssistantAssociationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#DeleteAssistantAssociationOutput', name: 'DeleteAssistantAssociationOutput')
    DeleteAssistantInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#DeleteAssistantInput', name: 'DeleteAssistantInput')
    DeleteAssistantOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#DeleteAssistantOutput', name: 'DeleteAssistantOutput')
    DeleteContentAssociationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#DeleteContentAssociationRequest', name: 'DeleteContentAssociationRequest')
    DeleteContentAssociationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#DeleteContentAssociationResponse', name: 'DeleteContentAssociationResponse')
    DeleteContentInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#DeleteContentInput', name: 'DeleteContentInput')
    DeleteContentOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#DeleteContentOutput', name: 'DeleteContentOutput')
    DeleteImportJobRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#DeleteImportJobRequest', name: 'DeleteImportJobRequest')
    DeleteImportJobResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#DeleteImportJobResponse', name: 'DeleteImportJobResponse')
    DeleteKnowledgeBaseInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#DeleteKnowledgeBaseInput', name: 'DeleteKnowledgeBaseInput')
    DeleteKnowledgeBaseOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#DeleteKnowledgeBaseOutput', name: 'DeleteKnowledgeBaseOutput')
    DeleteMessageTemplateAttachmentRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#DeleteMessageTemplateAttachmentRequest', name: 'DeleteMessageTemplateAttachmentRequest')
    DeleteMessageTemplateAttachmentResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#DeleteMessageTemplateAttachmentResponse', name: 'DeleteMessageTemplateAttachmentResponse')
    DeleteMessageTemplateRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#DeleteMessageTemplateRequest', name: 'DeleteMessageTemplateRequest')
    DeleteMessageTemplateResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#DeleteMessageTemplateResponse', name: 'DeleteMessageTemplateResponse')
    DeleteQuickResponseRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#DeleteQuickResponseRequest', name: 'DeleteQuickResponseRequest')
    DeleteQuickResponseResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#DeleteQuickResponseResponse', name: 'DeleteQuickResponseResponse')
    Description = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#Description', name: 'Description', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z0-9\\s_.,-]+"})
    Document = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#Document', name: 'Document')
    DocumentText = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#DocumentText', name: 'DocumentText')
    EmailHeader = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#EmailHeader', name: 'EmailHeader')
    EmailHeaderKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#EmailHeaderKey', name: 'EmailHeaderKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 126}, "smithy.api#pattern" => "^[!-9;-@A-~]+$"})
    EmailHeaderValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#EmailHeaderValue', name: 'EmailHeaderValue', traits: {"smithy.api#length" => {"min" => 1, "max" => 870}, "smithy.api#pattern" => "[ -~]*", "smithy.api#sensitive" => {}})
    EmailHeaders = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qconnect#EmailHeaders', name: 'EmailHeaders', traits: {"smithy.api#length" => {"min" => 0, "max" => 15}})
    EmailMessageTemplateContent = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#EmailMessageTemplateContent', name: 'EmailMessageTemplateContent')
    EmailMessageTemplateContentBody = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#EmailMessageTemplateContentBody', name: 'EmailMessageTemplateContentBody')
    ExtendedMessageTemplateData = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#ExtendedMessageTemplateData', name: 'ExtendedMessageTemplateData')
    ExternalSource = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#ExternalSource', name: 'ExternalSource', traits: {"smithy.api#enum" => [{"value" => "AMAZON_CONNECT", "name" => "AMAZON_CONNECT"}]})
    ExternalSourceConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#ExternalSourceConfiguration', name: 'ExternalSourceConfiguration')
    FailureReason = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qconnect#FailureReason', name: 'FailureReason')
    Filter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#Filter', name: 'Filter')
    FilterField = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#FilterField', name: 'FilterField', traits: {"smithy.api#enum" => [{"value" => "NAME", "name" => "NAME"}]})
    FilterList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qconnect#FilterList', name: 'FilterList')
    FilterOperator = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#FilterOperator', name: 'FilterOperator', traits: {"smithy.api#enum" => [{"value" => "EQUALS", "name" => "EQUALS"}]})
    FixedSizeChunkingConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#FixedSizeChunkingConfiguration', name: 'FixedSizeChunkingConfiguration')
    GenerativeChunkDataDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#GenerativeChunkDataDetails', name: 'GenerativeChunkDataDetails')
    GenerativeContentFeedbackData = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#GenerativeContentFeedbackData', name: 'GenerativeContentFeedbackData')
    GenerativeDataDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#GenerativeDataDetails', name: 'GenerativeDataDetails')
    GenerativeReference = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#GenerativeReference', name: 'GenerativeReference')
    GenericArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#GenericArn', name: 'GenericArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^arn:[a-z-]+?:[a-z-]+?:[a-z0-9-]*?:([0-9]{12})?:[a-zA-Z0-9-:/]+$"})
    GetAIAgentRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#GetAIAgentRequest', name: 'GetAIAgentRequest')
    GetAIAgentResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#GetAIAgentResponse', name: 'GetAIAgentResponse')
    GetAIGuardrailRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#GetAIGuardrailRequest', name: 'GetAIGuardrailRequest')
    GetAIGuardrailResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#GetAIGuardrailResponse', name: 'GetAIGuardrailResponse')
    GetAIPromptRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#GetAIPromptRequest', name: 'GetAIPromptRequest')
    GetAIPromptResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#GetAIPromptResponse', name: 'GetAIPromptResponse')
    GetAssistantAssociationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#GetAssistantAssociationInput', name: 'GetAssistantAssociationInput')
    GetAssistantAssociationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#GetAssistantAssociationOutput', name: 'GetAssistantAssociationOutput')
    GetAssistantInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#GetAssistantInput', name: 'GetAssistantInput')
    GetAssistantOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#GetAssistantOutput', name: 'GetAssistantOutput')
    GetContentAssociationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#GetContentAssociationRequest', name: 'GetContentAssociationRequest')
    GetContentAssociationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#GetContentAssociationResponse', name: 'GetContentAssociationResponse')
    GetContentInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#GetContentInput', name: 'GetContentInput')
    GetContentOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#GetContentOutput', name: 'GetContentOutput')
    GetContentSummaryInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#GetContentSummaryInput', name: 'GetContentSummaryInput')
    GetContentSummaryOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#GetContentSummaryOutput', name: 'GetContentSummaryOutput')
    GetImportJobRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#GetImportJobRequest', name: 'GetImportJobRequest')
    GetImportJobResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#GetImportJobResponse', name: 'GetImportJobResponse')
    GetKnowledgeBaseInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#GetKnowledgeBaseInput', name: 'GetKnowledgeBaseInput')
    GetKnowledgeBaseOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#GetKnowledgeBaseOutput', name: 'GetKnowledgeBaseOutput')
    GetMessageTemplateRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#GetMessageTemplateRequest', name: 'GetMessageTemplateRequest')
    GetMessageTemplateResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#GetMessageTemplateResponse', name: 'GetMessageTemplateResponse')
    GetNextMessageRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#GetNextMessageRequest', name: 'GetNextMessageRequest')
    GetNextMessageResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#GetNextMessageResponse', name: 'GetNextMessageResponse')
    GetQuickResponseRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#GetQuickResponseRequest', name: 'GetQuickResponseRequest')
    GetQuickResponseResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#GetQuickResponseResponse', name: 'GetQuickResponseResponse')
    GetRecommendationsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#GetRecommendationsInput', name: 'GetRecommendationsInput')
    GetRecommendationsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#GetRecommendationsOutput', name: 'GetRecommendationsOutput')
    GetSessionInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#GetSessionInput', name: 'GetSessionInput')
    GetSessionOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#GetSessionOutput', name: 'GetSessionOutput')
    GroupingConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#GroupingConfiguration', name: 'GroupingConfiguration')
    GroupingCriteria = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#GroupingCriteria', name: 'GroupingCriteria', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#sensitive" => {}})
    GroupingValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#GroupingValue', name: 'GroupingValue', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#sensitive" => {}})
    GroupingValues = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qconnect#GroupingValues', name: 'GroupingValues', traits: {"smithy.api#uniqueItems" => {}})
    GuardrailContentFilterConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#GuardrailContentFilterConfig', name: 'GuardrailContentFilterConfig')
    GuardrailContentFilterType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#GuardrailContentFilterType', name: 'GuardrailContentFilterType', traits: {"smithy.api#enum" => [{"value" => "SEXUAL", "name" => "SEXUAL"}, {"value" => "VIOLENCE", "name" => "VIOLENCE"}, {"value" => "HATE", "name" => "HATE"}, {"value" => "INSULTS", "name" => "INSULTS"}, {"value" => "MISCONDUCT", "name" => "MISCONDUCT"}, {"value" => "PROMPT_ATTACK", "name" => "PROMPT_ATTACK"}], "smithy.api#sensitive" => {}})
    GuardrailContentFiltersConfig = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qconnect#GuardrailContentFiltersConfig', name: 'GuardrailContentFiltersConfig', traits: {"smithy.api#length" => {"min" => 1, "max" => 6}})
    GuardrailContextualGroundingFilterConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#GuardrailContextualGroundingFilterConfig', name: 'GuardrailContextualGroundingFilterConfig')
    GuardrailContextualGroundingFilterThreshold = Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.qconnect#GuardrailContextualGroundingFilterThreshold', name: 'GuardrailContextualGroundingFilterThreshold', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0}, "smithy.api#sensitive" => {}})
    GuardrailContextualGroundingFilterType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#GuardrailContextualGroundingFilterType', name: 'GuardrailContextualGroundingFilterType', traits: {"smithy.api#enum" => [{"value" => "GROUNDING", "name" => "GROUNDING"}, {"value" => "RELEVANCE", "name" => "RELEVANCE"}], "smithy.api#sensitive" => {}})
    GuardrailContextualGroundingFiltersConfig = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qconnect#GuardrailContextualGroundingFiltersConfig', name: 'GuardrailContextualGroundingFiltersConfig', traits: {"smithy.api#length" => {"min" => 1}})
    GuardrailFilterStrength = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#GuardrailFilterStrength', name: 'GuardrailFilterStrength', traits: {"smithy.api#enum" => [{"value" => "NONE", "name" => "NONE"}, {"value" => "LOW", "name" => "LOW"}, {"value" => "MEDIUM", "name" => "MEDIUM"}, {"value" => "HIGH", "name" => "HIGH"}], "smithy.api#sensitive" => {}})
    GuardrailManagedWordListsConfig = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qconnect#GuardrailManagedWordListsConfig', name: 'GuardrailManagedWordListsConfig')
    GuardrailManagedWordsConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#GuardrailManagedWordsConfig', name: 'GuardrailManagedWordsConfig')
    GuardrailManagedWordsType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#GuardrailManagedWordsType', name: 'GuardrailManagedWordsType', traits: {"smithy.api#enum" => [{"value" => "PROFANITY", "name" => "PROFANITY"}], "smithy.api#sensitive" => {}})
    GuardrailPiiEntitiesConfig = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qconnect#GuardrailPiiEntitiesConfig', name: 'GuardrailPiiEntitiesConfig', traits: {"smithy.api#length" => {"min" => 1}, "smithy.api#uniqueItems" => {}})
    GuardrailPiiEntityConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#GuardrailPiiEntityConfig', name: 'GuardrailPiiEntityConfig')
    GuardrailPiiEntityType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#GuardrailPiiEntityType', name: 'GuardrailPiiEntityType', traits: {"smithy.api#enum" => [{"value" => "ADDRESS", "name" => "ADDRESS"}, {"value" => "AGE", "name" => "AGE"}, {"value" => "AWS_ACCESS_KEY", "name" => "AWS_ACCESS_KEY"}, {"value" => "AWS_SECRET_KEY", "name" => "AWS_SECRET_KEY"}, {"value" => "CA_HEALTH_NUMBER", "name" => "CA_HEALTH_NUMBER"}, {"value" => "CA_SOCIAL_INSURANCE_NUMBER", "name" => "CA_SOCIAL_INSURANCE_NUMBER"}, {"value" => "CREDIT_DEBIT_CARD_CVV", "name" => "CREDIT_DEBIT_CARD_CVV"}, {"value" => "CREDIT_DEBIT_CARD_EXPIRY", "name" => "CREDIT_DEBIT_CARD_EXPIRY"}, {"value" => "CREDIT_DEBIT_CARD_NUMBER", "name" => "CREDIT_DEBIT_CARD_NUMBER"}, {"value" => "DRIVER_ID", "name" => "DRIVER_ID"}, {"value" => "EMAIL", "name" => "EMAIL"}, {"value" => "INTERNATIONAL_BANK_ACCOUNT_NUMBER", "name" => "INTERNATIONAL_BANK_ACCOUNT_NUMBER"}, {"value" => "IP_ADDRESS", "name" => "IP_ADDRESS"}, {"value" => "LICENSE_PLATE", "name" => "LICENSE_PLATE"}, {"value" => "MAC_ADDRESS", "name" => "MAC_ADDRESS"}, {"value" => "NAME", "name" => "NAME"}, {"value" => "PASSWORD", "name" => "PASSWORD"}, {"value" => "PHONE", "name" => "PHONE"}, {"value" => "PIN", "name" => "PIN"}, {"value" => "SWIFT_CODE", "name" => "SWIFT_CODE"}, {"value" => "UK_NATIONAL_HEALTH_SERVICE_NUMBER", "name" => "UK_NATIONAL_HEALTH_SERVICE_NUMBER"}, {"value" => "UK_NATIONAL_INSURANCE_NUMBER", "name" => "UK_NATIONAL_INSURANCE_NUMBER"}, {"value" => "UK_UNIQUE_TAXPAYER_REFERENCE_NUMBER", "name" => "UK_UNIQUE_TAXPAYER_REFERENCE_NUMBER"}, {"value" => "URL", "name" => "URL"}, {"value" => "USERNAME", "name" => "USERNAME"}, {"value" => "US_BANK_ACCOUNT_NUMBER", "name" => "US_BANK_ACCOUNT_NUMBER"}, {"value" => "US_BANK_ROUTING_NUMBER", "name" => "US_BANK_ROUTING_NUMBER"}, {"value" => "US_INDIVIDUAL_TAX_IDENTIFICATION_NUMBER", "name" => "US_INDIVIDUAL_TAX_IDENTIFICATION_NUMBER"}, {"value" => "US_PASSPORT_NUMBER", "name" => "US_PASSPORT_NUMBER"}, {"value" => "US_SOCIAL_SECURITY_NUMBER", "name" => "US_SOCIAL_SECURITY_NUMBER"}, {"value" => "VEHICLE_IDENTIFICATION_NUMBER", "name" => "VEHICLE_IDENTIFICATION_NUMBER"}], "smithy.api#sensitive" => {}})
    GuardrailRegexConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#GuardrailRegexConfig', name: 'GuardrailRegexConfig')
    GuardrailRegexDescription = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#GuardrailRegexDescription', name: 'GuardrailRegexDescription', traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}, "smithy.api#sensitive" => {}})
    GuardrailRegexName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#GuardrailRegexName', name: 'GuardrailRegexName', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#sensitive" => {}})
    GuardrailRegexPattern = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#GuardrailRegexPattern', name: 'GuardrailRegexPattern', traits: {"smithy.api#length" => {"min" => 1}, "smithy.api#sensitive" => {}})
    GuardrailRegexesConfig = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qconnect#GuardrailRegexesConfig', name: 'GuardrailRegexesConfig', traits: {"smithy.api#length" => {"min" => 1}})
    GuardrailSensitiveInformationAction = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#GuardrailSensitiveInformationAction', name: 'GuardrailSensitiveInformationAction', traits: {"smithy.api#enum" => [{"value" => "BLOCK", "name" => "BLOCK"}, {"value" => "ANONYMIZE", "name" => "ANONYMIZE"}], "smithy.api#sensitive" => {}})
    GuardrailTopicConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#GuardrailTopicConfig', name: 'GuardrailTopicConfig')
    GuardrailTopicDefinition = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#GuardrailTopicDefinition', name: 'GuardrailTopicDefinition', traits: {"smithy.api#length" => {"min" => 1, "max" => 200}, "smithy.api#sensitive" => {}})
    GuardrailTopicExample = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#GuardrailTopicExample', name: 'GuardrailTopicExample', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#sensitive" => {}})
    GuardrailTopicExamples = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qconnect#GuardrailTopicExamples', name: 'GuardrailTopicExamples', traits: {"smithy.api#length" => {"min" => 0}})
    GuardrailTopicName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#GuardrailTopicName', name: 'GuardrailTopicName', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[0-9a-zA-Z-_ !?.]+$", "smithy.api#sensitive" => {}})
    GuardrailTopicType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#GuardrailTopicType', name: 'GuardrailTopicType', traits: {"smithy.api#enum" => [{"value" => "DENY", "name" => "DENY"}], "smithy.api#sensitive" => {}})
    GuardrailTopicsConfig = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qconnect#GuardrailTopicsConfig', name: 'GuardrailTopicsConfig', traits: {"smithy.api#length" => {"min" => 1}})
    GuardrailWordConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#GuardrailWordConfig', name: 'GuardrailWordConfig')
    GuardrailWordText = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#GuardrailWordText', name: 'GuardrailWordText', traits: {"smithy.api#length" => {"min" => 1}, "smithy.api#sensitive" => {}})
    GuardrailWordsConfig = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qconnect#GuardrailWordsConfig', name: 'GuardrailWordsConfig', traits: {"smithy.api#length" => {"min" => 1}})
    Headers = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.qconnect#Headers', name: 'Headers')
    HierarchicalChunkingConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#HierarchicalChunkingConfiguration', name: 'HierarchicalChunkingConfiguration')
    HierarchicalChunkingLevelConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#HierarchicalChunkingLevelConfiguration', name: 'HierarchicalChunkingLevelConfiguration')
    HierarchicalChunkingLevelConfigurations = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qconnect#HierarchicalChunkingLevelConfigurations', name: 'HierarchicalChunkingLevelConfigurations', traits: {"smithy.api#length" => {"min" => 2, "max" => 2}})
    Highlight = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#Highlight', name: 'Highlight')
    HighlightOffset = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.qconnect#HighlightOffset', name: 'HighlightOffset', traits: {"smithy.api#default" => 0})
    Highlights = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qconnect#Highlights', name: 'Highlights')
    ImportJobData = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#ImportJobData', name: 'ImportJobData')
    ImportJobList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qconnect#ImportJobList', name: 'ImportJobList')
    ImportJobStatus = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#ImportJobStatus', name: 'ImportJobStatus', traits: {"smithy.api#enum" => [{"value" => "START_IN_PROGRESS", "name" => "START_IN_PROGRESS"}, {"value" => "FAILED", "name" => "FAILED"}, {"value" => "COMPLETE", "name" => "COMPLETE"}, {"value" => "DELETE_IN_PROGRESS", "name" => "DELETE_IN_PROGRESS"}, {"value" => "DELETE_FAILED", "name" => "DELETE_FAILED"}, {"value" => "DELETED", "name" => "DELETED"}]})
    ImportJobSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#ImportJobSummary', name: 'ImportJobSummary')
    ImportJobType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#ImportJobType', name: 'ImportJobType', traits: {"smithy.api#enum" => [{"value" => "QUICK_RESPONSES", "name" => "QUICK_RESPONSES"}]})
    IntentDetectedDataDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#IntentDetectedDataDetails', name: 'IntentDetectedDataDetails')
    IntentInputData = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#IntentInputData', name: 'IntentInputData')
    KnowledgeBaseAssociationConfigurationData = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#KnowledgeBaseAssociationConfigurationData', name: 'KnowledgeBaseAssociationConfigurationData')
    KnowledgeBaseAssociationData = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#KnowledgeBaseAssociationData', name: 'KnowledgeBaseAssociationData')
    KnowledgeBaseData = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#KnowledgeBaseData', name: 'KnowledgeBaseData', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.qconnect#KnowledgeBase"}]})
    KnowledgeBaseList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qconnect#KnowledgeBaseList', name: 'KnowledgeBaseList')
    KnowledgeBaseSearchType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#KnowledgeBaseSearchType', name: 'KnowledgeBaseSearchType', traits: {"smithy.api#enum" => [{"value" => "HYBRID", "name" => "HYBRID"}, {"value" => "SEMANTIC", "name" => "SEMANTIC"}]})
    KnowledgeBaseStatus = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#KnowledgeBaseStatus', name: 'KnowledgeBaseStatus', traits: {"smithy.api#enum" => [{"value" => "CREATE_IN_PROGRESS", "name" => "CREATE_IN_PROGRESS"}, {"value" => "CREATE_FAILED", "name" => "CREATE_FAILED"}, {"value" => "ACTIVE", "name" => "ACTIVE"}, {"value" => "DELETE_IN_PROGRESS", "name" => "DELETE_IN_PROGRESS"}, {"value" => "DELETE_FAILED", "name" => "DELETE_FAILED"}, {"value" => "DELETED", "name" => "DELETED"}]})
    KnowledgeBaseSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#KnowledgeBaseSummary', name: 'KnowledgeBaseSummary', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.qconnect#KnowledgeBase"}]})
    KnowledgeBaseType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#KnowledgeBaseType', name: 'KnowledgeBaseType', traits: {"smithy.api#enum" => [{"value" => "EXTERNAL", "name" => "EXTERNAL"}, {"value" => "CUSTOM", "name" => "CUSTOM"}, {"value" => "QUICK_RESPONSES", "name" => "QUICK_RESPONSES"}, {"value" => "MESSAGE_TEMPLATES", "name" => "MESSAGE_TEMPLATES"}, {"value" => "MANAGED", "name" => "MANAGED"}]})
    LanguageCode = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#LanguageCode', name: 'LanguageCode', traits: {"smithy.api#length" => {"min" => 2, "max" => 5}})
    ListAIAgentVersionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#ListAIAgentVersionsRequest', name: 'ListAIAgentVersionsRequest')
    ListAIAgentVersionsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#ListAIAgentVersionsResponse', name: 'ListAIAgentVersionsResponse')
    ListAIAgentsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#ListAIAgentsRequest', name: 'ListAIAgentsRequest')
    ListAIAgentsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#ListAIAgentsResponse', name: 'ListAIAgentsResponse')
    ListAIGuardrailVersionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#ListAIGuardrailVersionsRequest', name: 'ListAIGuardrailVersionsRequest')
    ListAIGuardrailVersionsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#ListAIGuardrailVersionsResponse', name: 'ListAIGuardrailVersionsResponse')
    ListAIGuardrailsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#ListAIGuardrailsRequest', name: 'ListAIGuardrailsRequest')
    ListAIGuardrailsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#ListAIGuardrailsResponse', name: 'ListAIGuardrailsResponse')
    ListAIPromptVersionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#ListAIPromptVersionsRequest', name: 'ListAIPromptVersionsRequest')
    ListAIPromptVersionsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#ListAIPromptVersionsResponse', name: 'ListAIPromptVersionsResponse')
    ListAIPromptsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#ListAIPromptsRequest', name: 'ListAIPromptsRequest')
    ListAIPromptsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#ListAIPromptsResponse', name: 'ListAIPromptsResponse')
    ListAssistantAssociationsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#ListAssistantAssociationsInput', name: 'ListAssistantAssociationsInput')
    ListAssistantAssociationsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#ListAssistantAssociationsOutput', name: 'ListAssistantAssociationsOutput')
    ListAssistantsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#ListAssistantsInput', name: 'ListAssistantsInput')
    ListAssistantsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#ListAssistantsOutput', name: 'ListAssistantsOutput')
    ListContentAssociationsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#ListContentAssociationsRequest', name: 'ListContentAssociationsRequest')
    ListContentAssociationsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#ListContentAssociationsResponse', name: 'ListContentAssociationsResponse')
    ListContentsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#ListContentsInput', name: 'ListContentsInput')
    ListContentsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#ListContentsOutput', name: 'ListContentsOutput')
    ListImportJobsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#ListImportJobsRequest', name: 'ListImportJobsRequest')
    ListImportJobsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#ListImportJobsResponse', name: 'ListImportJobsResponse')
    ListKnowledgeBasesInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#ListKnowledgeBasesInput', name: 'ListKnowledgeBasesInput')
    ListKnowledgeBasesOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#ListKnowledgeBasesOutput', name: 'ListKnowledgeBasesOutput')
    ListMessageTemplateVersionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#ListMessageTemplateVersionsRequest', name: 'ListMessageTemplateVersionsRequest')
    ListMessageTemplateVersionsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#ListMessageTemplateVersionsResponse', name: 'ListMessageTemplateVersionsResponse')
    ListMessageTemplatesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#ListMessageTemplatesRequest', name: 'ListMessageTemplatesRequest')
    ListMessageTemplatesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#ListMessageTemplatesResponse', name: 'ListMessageTemplatesResponse')
    ListMessagesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#ListMessagesRequest', name: 'ListMessagesRequest')
    ListMessagesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#ListMessagesResponse', name: 'ListMessagesResponse')
    ListQuickResponsesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#ListQuickResponsesRequest', name: 'ListQuickResponsesRequest')
    ListQuickResponsesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#ListQuickResponsesResponse', name: 'ListQuickResponsesResponse')
    ListTagsForResourceInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#ListTagsForResourceInput', name: 'ListTagsForResourceInput')
    ListTagsForResourceOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#ListTagsForResourceOutput', name: 'ListTagsForResourceOutput')
    LlmModelId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#LlmModelId', name: 'LlmModelId', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    ManagedSourceConfiguration = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.qconnect#ManagedSourceConfiguration', name: 'ManagedSourceConfiguration')
    ManualSearchAIAgentConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#ManualSearchAIAgentConfiguration', name: 'ManualSearchAIAgentConfiguration')
    MaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.qconnect#MaxResults', name: 'MaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    MessageConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#MessageConfiguration', name: 'MessageConfiguration')
    MessageData = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.qconnect#MessageData', name: 'MessageData')
    MessageInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#MessageInput', name: 'MessageInput')
    MessageList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qconnect#MessageList', name: 'MessageList')
    MessageOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#MessageOutput', name: 'MessageOutput')
    MessageTemplateAttachment = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#MessageTemplateAttachment', name: 'MessageTemplateAttachment')
    MessageTemplateAttachmentList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qconnect#MessageTemplateAttachmentList', name: 'MessageTemplateAttachmentList', traits: {"smithy.api#uniqueItems" => {}})
    MessageTemplateAttributeKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#MessageTemplateAttributeKey', name: 'MessageTemplateAttributeKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 32767}})
    MessageTemplateAttributeKeyList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qconnect#MessageTemplateAttributeKeyList', name: 'MessageTemplateAttributeKeyList', traits: {"smithy.api#sensitive" => {}, "smithy.api#uniqueItems" => {}})
    MessageTemplateAttributeType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#MessageTemplateAttributeType', name: 'MessageTemplateAttributeType', traits: {"smithy.api#enum" => [{"value" => "SYSTEM", "name" => "SYSTEM"}, {"value" => "AGENT", "name" => "AGENT"}, {"value" => "CUSTOMER_PROFILE", "name" => "CUSTOMER_PROFILE"}, {"value" => "CUSTOM", "name" => "CUSTOM"}]})
    MessageTemplateAttributeTypeList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qconnect#MessageTemplateAttributeTypeList', name: 'MessageTemplateAttributeTypeList', traits: {"smithy.api#uniqueItems" => {}})
    MessageTemplateAttributeValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#MessageTemplateAttributeValue', name: 'MessageTemplateAttributeValue', traits: {"smithy.api#length" => {"min" => 1, "max" => 32767}, "smithy.api#sensitive" => {}})
    MessageTemplateAttributes = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#MessageTemplateAttributes', name: 'MessageTemplateAttributes')
    MessageTemplateBodyContentProvider = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.qconnect#MessageTemplateBodyContentProvider', name: 'MessageTemplateBodyContentProvider')
    MessageTemplateContentProvider = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.qconnect#MessageTemplateContentProvider', name: 'MessageTemplateContentProvider')
    MessageTemplateContentSha256 = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#MessageTemplateContentSha256', name: 'MessageTemplateContentSha256', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9]+$"})
    MessageTemplateData = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#MessageTemplateData', name: 'MessageTemplateData', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.qconnect#MessageTemplate"}, {"resource" => "com.amazonaws.qconnect#KnowledgeBase"}]})
    MessageTemplateFilterField = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#MessageTemplateFilterField', name: 'MessageTemplateFilterField')
    MessageTemplateFilterFieldList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qconnect#MessageTemplateFilterFieldList', name: 'MessageTemplateFilterFieldList', traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    MessageTemplateFilterOperator = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#MessageTemplateFilterOperator', name: 'MessageTemplateFilterOperator', traits: {"smithy.api#enum" => [{"value" => "EQUALS", "name" => "EQUALS"}, {"value" => "PREFIX", "name" => "PREFIX"}]})
    MessageTemplateFilterValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#MessageTemplateFilterValue', name: 'MessageTemplateFilterValue', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    MessageTemplateFilterValueList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qconnect#MessageTemplateFilterValueList', name: 'MessageTemplateFilterValueList', traits: {"smithy.api#length" => {"min" => 1, "max" => 5}, "smithy.api#uniqueItems" => {}})
    MessageTemplateOrderField = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#MessageTemplateOrderField', name: 'MessageTemplateOrderField')
    MessageTemplateQueryField = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#MessageTemplateQueryField', name: 'MessageTemplateQueryField')
    MessageTemplateQueryFieldList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qconnect#MessageTemplateQueryFieldList', name: 'MessageTemplateQueryFieldList', traits: {"smithy.api#length" => {"min" => 0, "max" => 4}})
    MessageTemplateQueryOperator = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#MessageTemplateQueryOperator', name: 'MessageTemplateQueryOperator', traits: {"smithy.api#enum" => [{"value" => "CONTAINS", "name" => "CONTAINS"}, {"value" => "CONTAINS_AND_PREFIX", "name" => "CONTAINS_AND_PREFIX"}]})
    MessageTemplateQueryValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#MessageTemplateQueryValue', name: 'MessageTemplateQueryValue', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    MessageTemplateQueryValueList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qconnect#MessageTemplateQueryValueList', name: 'MessageTemplateQueryValueList', traits: {"smithy.api#length" => {"min" => 1, "max" => 5}, "smithy.api#uniqueItems" => {}})
    MessageTemplateSearchExpression = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#MessageTemplateSearchExpression', name: 'MessageTemplateSearchExpression')
    MessageTemplateSearchResultData = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#MessageTemplateSearchResultData', name: 'MessageTemplateSearchResultData', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.qconnect#MessageTemplate"}, {"resource" => "com.amazonaws.qconnect#KnowledgeBase"}]})
    MessageTemplateSearchResultsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qconnect#MessageTemplateSearchResultsList', name: 'MessageTemplateSearchResultsList')
    MessageTemplateSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#MessageTemplateSummary', name: 'MessageTemplateSummary', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.qconnect#MessageTemplate"}, {"resource" => "com.amazonaws.qconnect#KnowledgeBase"}]})
    MessageTemplateSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qconnect#MessageTemplateSummaryList', name: 'MessageTemplateSummaryList')
    MessageTemplateVersionSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#MessageTemplateVersionSummary', name: 'MessageTemplateVersionSummary')
    MessageTemplateVersionSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qconnect#MessageTemplateVersionSummaryList', name: 'MessageTemplateVersionSummaryList')
    MessageType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#MessageType', name: 'MessageType', traits: {"smithy.api#enum" => [{"value" => "TEXT", "name" => "TEXT"}]})
    Name = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#Name', name: 'Name', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z0-9\\s_.,-]+"})
    NextToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#NextToken', name: 'NextToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    NonEmptySensitiveString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#NonEmptySensitiveString', name: 'NonEmptySensitiveString', traits: {"smithy.api#length" => {"min" => 1, "max" => 4096}, "smithy.api#sensitive" => {}})
    NonEmptyString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#NonEmptyString', name: 'NonEmptyString', traits: {"smithy.api#length" => {"min" => 1, "max" => 4096}})
    NonEmptyUnlimitedString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#NonEmptyUnlimitedString', name: 'NonEmptyUnlimitedString', traits: {"smithy.api#length" => {"min" => 1}, "smithy.api#sensitive" => {}})
    NotifyRecommendationsReceivedError = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#NotifyRecommendationsReceivedError', name: 'NotifyRecommendationsReceivedError')
    NotifyRecommendationsReceivedErrorList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qconnect#NotifyRecommendationsReceivedErrorList', name: 'NotifyRecommendationsReceivedErrorList')
    NotifyRecommendationsReceivedErrorMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#NotifyRecommendationsReceivedErrorMessage', name: 'NotifyRecommendationsReceivedErrorMessage')
    NotifyRecommendationsReceivedInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#NotifyRecommendationsReceivedInput', name: 'NotifyRecommendationsReceivedInput')
    NotifyRecommendationsReceivedOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#NotifyRecommendationsReceivedOutput', name: 'NotifyRecommendationsReceivedOutput')
    ObjectFieldsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qconnect#ObjectFieldsList', name: 'ObjectFieldsList', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    OrCondition = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.qconnect#OrCondition', name: 'OrCondition')
    OrConditions = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qconnect#OrConditions', name: 'OrConditions')
    Order = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#Order', name: 'Order', traits: {"smithy.api#enum" => [{"value" => "ASC", "name" => "ASC"}, {"value" => "DESC", "name" => "DESC"}]})
    Origin = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#Origin', name: 'Origin', traits: {"smithy.api#enum" => [{"value" => "SYSTEM", "name" => "SYSTEM"}, {"value" => "CUSTOMER", "name" => "CUSTOMER"}]})
    ParsingConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#ParsingConfiguration', name: 'ParsingConfiguration')
    ParsingPrompt = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#ParsingPrompt', name: 'ParsingPrompt')
    ParsingPromptText = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#ParsingPromptText', name: 'ParsingPromptText', traits: {"smithy.api#length" => {"min" => 1, "max" => 10000}})
    ParsingStrategy = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#ParsingStrategy', name: 'ParsingStrategy', traits: {"smithy.api#enum" => [{"value" => "BEDROCK_FOUNDATION_MODEL", "name" => "BEDROCK_FOUNDATION_MODEL"}]})
    Participant = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#Participant', name: 'Participant', traits: {"smithy.api#enum" => [{"value" => "CUSTOMER", "name" => "CUSTOMER"}, {"value" => "AGENT", "name" => "AGENT"}, {"value" => "BOT", "name" => "BOT"}]})
    PreconditionFailedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#PreconditionFailedException', name: 'PreconditionFailedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 412})
    Priority = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#Priority', name: 'Priority', traits: {"smithy.api#enum" => [{"value" => "HIGH", "name" => "HIGH"}, {"value" => "MEDIUM", "name" => "MEDIUM"}, {"value" => "LOW", "name" => "LOW"}]})
    PutFeedbackRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#PutFeedbackRequest', name: 'PutFeedbackRequest')
    PutFeedbackResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#PutFeedbackResponse', name: 'PutFeedbackResponse')
    QueryAssistantInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#QueryAssistantInput', name: 'QueryAssistantInput')
    QueryAssistantOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#QueryAssistantOutput', name: 'QueryAssistantOutput')
    QueryCondition = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.qconnect#QueryCondition', name: 'QueryCondition')
    QueryConditionComparisonOperator = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#QueryConditionComparisonOperator', name: 'QueryConditionComparisonOperator', traits: {"smithy.api#enum" => [{"value" => "EQUALS", "name" => "EQUALS"}]})
    QueryConditionExpression = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qconnect#QueryConditionExpression', name: 'QueryConditionExpression', traits: {"smithy.api#length" => {"min" => 0, "max" => 1}})
    QueryConditionFieldName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#QueryConditionFieldName', name: 'QueryConditionFieldName', traits: {"smithy.api#enum" => [{"value" => "RESULT_TYPE", "name" => "RESULT_TYPE"}]})
    QueryConditionItem = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#QueryConditionItem', name: 'QueryConditionItem')
    QueryInputData = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.qconnect#QueryInputData', name: 'QueryInputData')
    QueryRecommendationTriggerData = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#QueryRecommendationTriggerData', name: 'QueryRecommendationTriggerData')
    QueryResultType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#QueryResultType', name: 'QueryResultType', traits: {"smithy.api#enum" => [{"value" => "KNOWLEDGE_CONTENT", "name" => "KNOWLEDGE_CONTENT"}, {"value" => "INTENT_ANSWER", "name" => "INTENT_ANSWER"}, {"value" => "GENERATIVE_ANSWER", "name" => "GENERATIVE_ANSWER"}, {"value" => "GENERATIVE_ANSWER_CHUNK", "name" => "GENERATIVE_ANSWER_CHUNK"}, {"value" => "BLOCKED_GENERATIVE_ANSWER_CHUNK", "name" => "BLOCKED_GENERATIVE_ANSWER_CHUNK"}, {"value" => "INTENT_ANSWER_CHUNK", "name" => "INTENT_ANSWER_CHUNK"}, {"value" => "BLOCKED_INTENT_ANSWER_CHUNK", "name" => "BLOCKED_INTENT_ANSWER_CHUNK"}]})
    QueryResultsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qconnect#QueryResultsList', name: 'QueryResultsList')
    QueryText = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#QueryText', name: 'QueryText', traits: {"smithy.api#length" => {"max" => 512}, "smithy.api#sensitive" => {}})
    QueryTextInputData = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#QueryTextInputData', name: 'QueryTextInputData')
    QuickResponseContent = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#QuickResponseContent', name: 'QuickResponseContent', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#sensitive" => {}})
    QuickResponseContentProvider = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.qconnect#QuickResponseContentProvider', name: 'QuickResponseContentProvider')
    QuickResponseContents = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#QuickResponseContents', name: 'QuickResponseContents')
    QuickResponseData = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#QuickResponseData', name: 'QuickResponseData', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.qconnect#QuickResponse"}, {"resource" => "com.amazonaws.qconnect#KnowledgeBase"}]})
    QuickResponseDataProvider = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.qconnect#QuickResponseDataProvider', name: 'QuickResponseDataProvider')
    QuickResponseDescription = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#QuickResponseDescription', name: 'QuickResponseDescription', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    QuickResponseFilterField = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#QuickResponseFilterField', name: 'QuickResponseFilterField')
    QuickResponseFilterFieldList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qconnect#QuickResponseFilterFieldList', name: 'QuickResponseFilterFieldList', traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    QuickResponseFilterOperator = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#QuickResponseFilterOperator', name: 'QuickResponseFilterOperator', traits: {"smithy.api#enum" => [{"value" => "EQUALS", "name" => "EQUALS"}, {"value" => "PREFIX", "name" => "PREFIX"}]})
    QuickResponseFilterValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#QuickResponseFilterValue', name: 'QuickResponseFilterValue', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    QuickResponseFilterValueList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qconnect#QuickResponseFilterValueList', name: 'QuickResponseFilterValueList', traits: {"smithy.api#length" => {"min" => 1, "max" => 5}, "smithy.api#uniqueItems" => {}})
    QuickResponseName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#QuickResponseName', name: 'QuickResponseName', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    QuickResponseOrderField = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#QuickResponseOrderField', name: 'QuickResponseOrderField')
    QuickResponseQueryField = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#QuickResponseQueryField', name: 'QuickResponseQueryField')
    QuickResponseQueryFieldList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qconnect#QuickResponseQueryFieldList', name: 'QuickResponseQueryFieldList', traits: {"smithy.api#length" => {"min" => 0, "max" => 4}})
    QuickResponseQueryOperator = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#QuickResponseQueryOperator', name: 'QuickResponseQueryOperator', traits: {"smithy.api#enum" => [{"value" => "CONTAINS", "name" => "CONTAINS"}, {"value" => "CONTAINS_AND_PREFIX", "name" => "CONTAINS_AND_PREFIX"}]})
    QuickResponseQueryValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#QuickResponseQueryValue', name: 'QuickResponseQueryValue', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    QuickResponseQueryValueList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qconnect#QuickResponseQueryValueList', name: 'QuickResponseQueryValueList', traits: {"smithy.api#length" => {"min" => 1, "max" => 5}, "smithy.api#uniqueItems" => {}})
    QuickResponseSearchExpression = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#QuickResponseSearchExpression', name: 'QuickResponseSearchExpression')
    QuickResponseSearchResultData = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#QuickResponseSearchResultData', name: 'QuickResponseSearchResultData', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.qconnect#QuickResponse"}, {"resource" => "com.amazonaws.qconnect#KnowledgeBase"}]})
    QuickResponseSearchResultsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qconnect#QuickResponseSearchResultsList', name: 'QuickResponseSearchResultsList')
    QuickResponseStatus = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#QuickResponseStatus', name: 'QuickResponseStatus', traits: {"smithy.api#enum" => [{"value" => "CREATE_IN_PROGRESS", "name" => "CREATE_IN_PROGRESS"}, {"value" => "CREATE_FAILED", "name" => "CREATE_FAILED"}, {"value" => "CREATED", "name" => "CREATED"}, {"value" => "DELETE_IN_PROGRESS", "name" => "DELETE_IN_PROGRESS"}, {"value" => "DELETE_FAILED", "name" => "DELETE_FAILED"}, {"value" => "DELETED", "name" => "DELETED"}, {"value" => "UPDATE_IN_PROGRESS", "name" => "UPDATE_IN_PROGRESS"}, {"value" => "UPDATE_FAILED", "name" => "UPDATE_FAILED"}]})
    QuickResponseSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#QuickResponseSummary', name: 'QuickResponseSummary', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.qconnect#QuickResponse"}, {"resource" => "com.amazonaws.qconnect#KnowledgeBase"}]})
    QuickResponseSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qconnect#QuickResponseSummaryList', name: 'QuickResponseSummaryList')
    QuickResponseType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#QuickResponseType', name: 'QuickResponseType', traits: {"smithy.api#pattern" => "^(application/x\\.quickresponse;format=(plain|markdown))$"})
    RankingData = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#RankingData', name: 'RankingData')
    RecommendationData = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#RecommendationData', name: 'RecommendationData')
    RecommendationId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#RecommendationId', name: 'RecommendationId', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    RecommendationIdList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qconnect#RecommendationIdList', name: 'RecommendationIdList', traits: {"smithy.api#length" => {"min" => 0, "max" => 25}})
    RecommendationList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qconnect#RecommendationList', name: 'RecommendationList')
    RecommendationSourceType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#RecommendationSourceType', name: 'RecommendationSourceType', traits: {"smithy.api#enum" => [{"value" => "ISSUE_DETECTION", "name" => "ISSUE_DETECTION"}, {"value" => "RULE_EVALUATION", "name" => "RULE_EVALUATION"}, {"value" => "OTHER", "name" => "OTHER"}]})
    RecommendationTrigger = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#RecommendationTrigger', name: 'RecommendationTrigger')
    RecommendationTriggerData = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.qconnect#RecommendationTriggerData', name: 'RecommendationTriggerData')
    RecommendationTriggerList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qconnect#RecommendationTriggerList', name: 'RecommendationTriggerList')
    RecommendationTriggerType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#RecommendationTriggerType', name: 'RecommendationTriggerType', traits: {"smithy.api#enum" => [{"value" => "QUERY", "name" => "QUERY"}, {"value" => "GENERATIVE", "name" => "GENERATIVE"}]})
    RecommendationType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#RecommendationType', name: 'RecommendationType', traits: {"smithy.api#enum" => [{"value" => "KNOWLEDGE_CONTENT", "name" => "KNOWLEDGE_CONTENT"}, {"value" => "GENERATIVE_RESPONSE", "name" => "GENERATIVE_RESPONSE"}, {"value" => "GENERATIVE_ANSWER", "name" => "GENERATIVE_ANSWER"}, {"value" => "DETECTED_INTENT", "name" => "DETECTED_INTENT"}, {"value" => "GENERATIVE_ANSWER_CHUNK", "name" => "GENERATIVE_ANSWER_CHUNK"}, {"value" => "BLOCKED_GENERATIVE_ANSWER_CHUNK", "name" => "BLOCKED_GENERATIVE_ANSWER_CHUNK"}, {"value" => "INTENT_ANSWER_CHUNK", "name" => "INTENT_ANSWER_CHUNK"}, {"value" => "BLOCKED_INTENT_ANSWER_CHUNK", "name" => "BLOCKED_INTENT_ANSWER_CHUNK"}]})
    ReferenceType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#ReferenceType', name: 'ReferenceType', traits: {"smithy.api#enum" => [{"value" => "WEB_CRAWLER", "name" => "WEB_CRAWLER"}, {"value" => "KNOWLEDGE_BASE", "name" => "KNOWLEDGE_BASE"}]})
    Relevance = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#Relevance', name: 'Relevance', traits: {"smithy.api#enum" => [{"value" => "HELPFUL", "name" => "HELPFUL"}, {"value" => "NOT_HELPFUL", "name" => "NOT_HELPFUL"}]})
    RelevanceLevel = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#RelevanceLevel', name: 'RelevanceLevel', traits: {"smithy.api#enum" => [{"value" => "HIGH", "name" => "HIGH"}, {"value" => "MEDIUM", "name" => "MEDIUM"}, {"value" => "LOW", "name" => "LOW"}]})
    RelevanceScore = Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.qconnect#RelevanceScore', name: 'RelevanceScore', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0.0}})
    RemoveAssistantAIAgentRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#RemoveAssistantAIAgentRequest', name: 'RemoveAssistantAIAgentRequest')
    RemoveAssistantAIAgentResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#RemoveAssistantAIAgentResponse', name: 'RemoveAssistantAIAgentResponse')
    RemoveKnowledgeBaseTemplateUriInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#RemoveKnowledgeBaseTemplateUriInput', name: 'RemoveKnowledgeBaseTemplateUriInput')
    RemoveKnowledgeBaseTemplateUriOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#RemoveKnowledgeBaseTemplateUriOutput', name: 'RemoveKnowledgeBaseTemplateUriOutput')
    RenderMessageTemplateRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#RenderMessageTemplateRequest', name: 'RenderMessageTemplateRequest')
    RenderMessageTemplateResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#RenderMessageTemplateResponse', name: 'RenderMessageTemplateResponse')
    RenderingConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#RenderingConfiguration', name: 'RenderingConfiguration')
    RequestTimeoutException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#RequestTimeoutException', name: 'RequestTimeoutException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 408, "smithy.api#retryable" => {}})
    ResourceNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResultData = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#ResultData', name: 'ResultData')
    RuntimeSessionData = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#RuntimeSessionData', name: 'RuntimeSessionData')
    RuntimeSessionDataList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qconnect#RuntimeSessionDataList', name: 'RuntimeSessionDataList', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    RuntimeSessionDataValue = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.qconnect#RuntimeSessionDataValue', name: 'RuntimeSessionDataValue')
    SMSMessageTemplateContent = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#SMSMessageTemplateContent', name: 'SMSMessageTemplateContent')
    SMSMessageTemplateContentBody = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#SMSMessageTemplateContentBody', name: 'SMSMessageTemplateContentBody')
    SearchContentInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#SearchContentInput', name: 'SearchContentInput')
    SearchContentOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#SearchContentOutput', name: 'SearchContentOutput')
    SearchExpression = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#SearchExpression', name: 'SearchExpression')
    SearchMessageTemplatesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#SearchMessageTemplatesRequest', name: 'SearchMessageTemplatesRequest')
    SearchMessageTemplatesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#SearchMessageTemplatesResponse', name: 'SearchMessageTemplatesResponse')
    SearchQuickResponsesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#SearchQuickResponsesRequest', name: 'SearchQuickResponsesRequest')
    SearchQuickResponsesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#SearchQuickResponsesResponse', name: 'SearchQuickResponsesResponse')
    SearchSessionsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#SearchSessionsInput', name: 'SearchSessionsInput')
    SearchSessionsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#SearchSessionsOutput', name: 'SearchSessionsOutput')
    SeedUrl = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#SeedUrl', name: 'SeedUrl')
    SeedUrls = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qconnect#SeedUrls', name: 'SeedUrls', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    SelfServiceAIAgentConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#SelfServiceAIAgentConfiguration', name: 'SelfServiceAIAgentConfiguration')
    SelfServiceConversationHistory = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#SelfServiceConversationHistory', name: 'SelfServiceConversationHistory')
    SelfServiceConversationHistoryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qconnect#SelfServiceConversationHistoryList', name: 'SelfServiceConversationHistoryList', traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    SemanticChunkingConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#SemanticChunkingConfiguration', name: 'SemanticChunkingConfiguration')
    SendMessageRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#SendMessageRequest', name: 'SendMessageRequest')
    SendMessageResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#SendMessageResponse', name: 'SendMessageResponse')
    SensitiveString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#SensitiveString', name: 'SensitiveString', traits: {"smithy.api#sensitive" => {}})
    ServerSideEncryptionConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#ServerSideEncryptionConfiguration', name: 'ServerSideEncryptionConfiguration')
    ServiceQuotaExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#ServiceQuotaExceededException', name: 'ServiceQuotaExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    SessionData = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#SessionData', name: 'SessionData')
    SessionDataNamespace = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#SessionDataNamespace', name: 'SessionDataNamespace', traits: {"smithy.api#enum" => [{"value" => "Custom", "name" => "Custom"}]})
    SessionIntegrationConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#SessionIntegrationConfiguration', name: 'SessionIntegrationConfiguration')
    SessionSummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qconnect#SessionSummaries', name: 'SessionSummaries')
    SessionSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#SessionSummary', name: 'SessionSummary')
    ShortCutKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#ShortCutKey', name: 'ShortCutKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    SourceConfiguration = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.qconnect#SourceConfiguration', name: 'SourceConfiguration')
    SourceContentDataDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#SourceContentDataDetails', name: 'SourceContentDataDetails')
    SourceContentType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#SourceContentType', name: 'SourceContentType', traits: {"smithy.api#enum" => [{"value" => "KNOWLEDGE_CONTENT", "name" => "KNOWLEDGE_CONTENT"}]})
    StartContentUploadInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#StartContentUploadInput', name: 'StartContentUploadInput')
    StartContentUploadOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#StartContentUploadOutput', name: 'StartContentUploadOutput')
    StartImportJobRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#StartImportJobRequest', name: 'StartImportJobRequest')
    StartImportJobResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#StartImportJobResponse', name: 'StartImportJobResponse')
    Status = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#Status', name: 'Status', traits: {"smithy.api#enum" => [{"value" => "CREATE_IN_PROGRESS", "name" => "CREATE_IN_PROGRESS"}, {"value" => "CREATE_FAILED", "name" => "CREATE_FAILED"}, {"value" => "ACTIVE", "name" => "ACTIVE"}, {"value" => "DELETE_IN_PROGRESS", "name" => "DELETE_IN_PROGRESS"}, {"value" => "DELETE_FAILED", "name" => "DELETE_FAILED"}, {"value" => "DELETED", "name" => "DELETED"}]})
    SyncStatus = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#SyncStatus', name: 'SyncStatus', traits: {"smithy.api#enum" => [{"value" => "SYNC_FAILED", "name" => "SYNC_FAILED"}, {"value" => "SYNCING_IN_PROGRESS", "name" => "SYNCING_IN_PROGRESS"}, {"value" => "SYNC_SUCCESS", "name" => "SYNC_SUCCESS"}, {"value" => "CREATE_IN_PROGRESS", "name" => "CREATE_IN_PROGRESS"}]})
    SystemAttributes = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#SystemAttributes', name: 'SystemAttributes')
    SystemEndpointAttributes = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#SystemEndpointAttributes', name: 'SystemEndpointAttributes')
    TagCondition = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#TagCondition', name: 'TagCondition')
    TagFilter = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.qconnect#TagFilter', name: 'TagFilter')
    TagKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^(?!aws:)[a-zA-Z+-=._:/]+$"})
    TagKeyList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qconnect#TagKeyList', name: 'TagKeyList', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    TagResourceInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#TagResourceInput', name: 'TagResourceInput')
    TagResourceOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#TagResourceOutput', name: 'TagResourceOutput')
    TagValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    Tags = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.qconnect#Tags', name: 'Tags')
    TargetType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#TargetType', name: 'TargetType', traits: {"smithy.api#enum" => [{"value" => "RECOMMENDATION", "name" => "RECOMMENDATION"}, {"value" => "RESULT", "name" => "RESULT"}]})
    TextAIPrompt = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#TextAIPrompt', name: 'TextAIPrompt', traits: {"smithy.api#length" => {"min" => 1, "max" => 1000000}, "smithy.api#sensitive" => {}})
    TextData = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#TextData', name: 'TextData')
    TextFullAIPromptEditTemplateConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#TextFullAIPromptEditTemplateConfiguration', name: 'TextFullAIPromptEditTemplateConfiguration')
    TextMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#TextMessage', name: 'TextMessage')
    ThrottlingException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#ThrottlingException', name: 'ThrottlingException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400, "smithy.api#retryable" => {}})
    TimeToLive = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.qconnect#TimeToLive', name: 'TimeToLive', traits: {"smithy.api#range" => {"min" => 1, "max" => 60}})
    TooManyTagsException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#TooManyTagsException', name: 'TooManyTagsException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    UnauthorizedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#UnauthorizedException', name: 'UnauthorizedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 401})
    UntagResourceInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#UntagResourceInput', name: 'UntagResourceInput')
    UntagResourceOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#UntagResourceOutput', name: 'UntagResourceOutput')
    UpdateAIAgentRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#UpdateAIAgentRequest', name: 'UpdateAIAgentRequest')
    UpdateAIAgentResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#UpdateAIAgentResponse', name: 'UpdateAIAgentResponse')
    UpdateAIGuardrailRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#UpdateAIGuardrailRequest', name: 'UpdateAIGuardrailRequest')
    UpdateAIGuardrailResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#UpdateAIGuardrailResponse', name: 'UpdateAIGuardrailResponse')
    UpdateAIPromptRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#UpdateAIPromptRequest', name: 'UpdateAIPromptRequest')
    UpdateAIPromptResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#UpdateAIPromptResponse', name: 'UpdateAIPromptResponse')
    UpdateAssistantAIAgentRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#UpdateAssistantAIAgentRequest', name: 'UpdateAssistantAIAgentRequest')
    UpdateAssistantAIAgentResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#UpdateAssistantAIAgentResponse', name: 'UpdateAssistantAIAgentResponse')
    UpdateContentInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#UpdateContentInput', name: 'UpdateContentInput')
    UpdateContentOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#UpdateContentOutput', name: 'UpdateContentOutput')
    UpdateKnowledgeBaseTemplateUriInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#UpdateKnowledgeBaseTemplateUriInput', name: 'UpdateKnowledgeBaseTemplateUriInput')
    UpdateKnowledgeBaseTemplateUriOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#UpdateKnowledgeBaseTemplateUriOutput', name: 'UpdateKnowledgeBaseTemplateUriOutput')
    UpdateMessageTemplateMetadataRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#UpdateMessageTemplateMetadataRequest', name: 'UpdateMessageTemplateMetadataRequest')
    UpdateMessageTemplateMetadataResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#UpdateMessageTemplateMetadataResponse', name: 'UpdateMessageTemplateMetadataResponse')
    UpdateMessageTemplateRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#UpdateMessageTemplateRequest', name: 'UpdateMessageTemplateRequest')
    UpdateMessageTemplateResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#UpdateMessageTemplateResponse', name: 'UpdateMessageTemplateResponse')
    UpdateQuickResponseRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#UpdateQuickResponseRequest', name: 'UpdateQuickResponseRequest')
    UpdateQuickResponseResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#UpdateQuickResponseResponse', name: 'UpdateQuickResponseResponse')
    UpdateSessionDataRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#UpdateSessionDataRequest', name: 'UpdateSessionDataRequest')
    UpdateSessionDataResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#UpdateSessionDataResponse', name: 'UpdateSessionDataResponse')
    UpdateSessionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#UpdateSessionRequest', name: 'UpdateSessionRequest')
    UpdateSessionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#UpdateSessionResponse', name: 'UpdateSessionResponse')
    UploadId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#UploadId', name: 'UploadId', traits: {"smithy.api#length" => {"min" => 1, "max" => 1200}})
    Uri = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#Uri', name: 'Uri', traits: {"smithy.api#length" => {"min" => 1, "max" => 4096}})
    Url = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#Url', name: 'Url', traits: {"smithy.api#length" => {"min" => 1, "max" => 4096}, "smithy.api#sensitive" => {}})
    UrlConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#UrlConfiguration', name: 'UrlConfiguration')
    UrlFilterList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qconnect#UrlFilterList', name: 'UrlFilterList', traits: {"smithy.api#length" => {"min" => 1, "max" => 25}, "smithy.api#sensitive" => {}})
    UrlFilterPattern = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#UrlFilterPattern', name: 'UrlFilterPattern', traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}, "smithy.api#sensitive" => {}})
    Uuid = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#Uuid', name: 'Uuid', traits: {"smithy.api#pattern" => "^[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}$"})
    UuidOrArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#UuidOrArn', name: 'UuidOrArn', traits: {"smithy.api#pattern" => "^[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}$|^arn:[a-z-]*?:wisdom:[a-z0-9-]*?:[0-9]{12}:[a-z-]*?/[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}(?:/[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}){0,2}$"})
    UuidOrArnOrEitherWithQualifier = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#UuidOrArnOrEitherWithQualifier', name: 'UuidOrArnOrEitherWithQualifier', traits: {"smithy.api#pattern" => "^[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}(:[A-Z0-9_$]+){0,1}$|^arn:[a-z-]*?:wisdom:[a-z0-9-]*?:[0-9]{12}:[a-z-]*?/[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}(?:/[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}){0,2}(:[A-Z0-9_$]+){0,1}$"})
    UuidWithQualifier = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#UuidWithQualifier', name: 'UuidWithQualifier', traits: {"smithy.api#pattern" => "^[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}(:[A-Z0-9_$]+){0,1}$"})
    ValidationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#ValidationException', name: 'ValidationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    VectorIngestionConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#VectorIngestionConfiguration', name: 'VectorIngestionConfiguration')
    Version = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.qconnect#Version', name: 'Version', traits: {"smithy.api#range" => {"min" => 1}})
    VisibilityStatus = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#VisibilityStatus', name: 'VisibilityStatus', traits: {"smithy.api#enum" => [{"value" => "SAVED", "name" => "SAVED"}, {"value" => "PUBLISHED", "name" => "PUBLISHED"}]})
    WaitTimeSeconds = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.qconnect#WaitTimeSeconds', name: 'WaitTimeSeconds', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 20}})
    WebCrawlerConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#WebCrawlerConfiguration', name: 'WebCrawlerConfiguration')
    WebCrawlerLimits = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qconnect#WebCrawlerLimits', name: 'WebCrawlerLimits')
    WebScopeType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#WebScopeType', name: 'WebScopeType', traits: {"smithy.api#enum" => [{"value" => "HOST_ONLY", "name" => "HOST_ONLY"}, {"value" => "SUBDOMAINS", "name" => "SUBDOMAINS"}]})
    WebUrl = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qconnect#WebUrl', name: 'WebUrl', traits: {"smithy.api#pattern" => "^https?://[A-Za-z0-9][^\\s]*$"})

    AIAgentConfiguration.add_member(:manual_search_ai_agent_configuration, Types::AIAgentConfiguration::ManualSearchAiAgentConfiguration, Smithy::Schema::Shapes::ShapeRef.new(shape: ManualSearchAIAgentConfiguration, location_name: 'manualSearchAIAgentConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration for AI Agents of type <code>MANUAL_SEARCH</code>.</p>"}))
    AIAgentConfiguration.add_member(:answer_recommendation_ai_agent_configuration, Types::AIAgentConfiguration::AnswerRecommendationAiAgentConfiguration, Smithy::Schema::Shapes::ShapeRef.new(shape: AnswerRecommendationAIAgentConfiguration, location_name: 'answerRecommendationAIAgentConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration for AI Agents of type <code>ANSWER_RECOMMENDATION</code>.</p>"}))
    AIAgentConfiguration.add_member(:self_service_ai_agent_configuration, Types::AIAgentConfiguration::SelfServiceAiAgentConfiguration, Smithy::Schema::Shapes::ShapeRef.new(shape: SelfServiceAIAgentConfiguration, location_name: 'selfServiceAIAgentConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration for AI Agents of type SELF_SERVICE.</p>"}))
    AIAgentConfiguration.add_member(:unknown, Types::AIAgentConfiguration::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    AIAgentConfiguration.type = Types::AIAgentConfiguration
    AIAgentConfigurationData.add_member(:ai_agent_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidWithQualifier, location_name: 'aiAgentId', traits: {"smithy.api#documentation" => "<p>The ID of the AI Agent to be configured.</p>", "smithy.api#required" => {}}))
    AIAgentConfigurationData.type = Types::AIAgentConfigurationData
    AIAgentConfigurationMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: AIAgentType)
    AIAgentConfigurationMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: AIAgentConfigurationData)
    AIAgentData.add_member(:assistant_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'assistantId', traits: {"smithy.api#documentation" => "<p>The identifier of the Amazon Q in Connect assistant. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>", "smithy.api#required" => {}}))
    AIAgentData.add_member(:assistant_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'assistantArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Amazon Q in Connect assistant.</p>", "smithy.api#required" => {}}))
    AIAgentData.add_member(:ai_agent_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'aiAgentId', traits: {"smithy.api#documentation" => "<p>The identifier of the AI Agent.</p>", "smithy.api#required" => {}}))
    AIAgentData.add_member(:ai_agent_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'aiAgentArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the AI agent.</p>", "smithy.api#required" => {}}))
    AIAgentData.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the AI Agent.</p>", "smithy.api#required" => {}}))
    AIAgentData.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: AIAgentType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The type of the AI Agent.</p>", "smithy.api#required" => {}}))
    AIAgentData.add_member(:configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: AIAgentConfiguration, location_name: 'configuration', traits: {"smithy.api#documentation" => "<p>Configuration for the AI Agent.</p>", "smithy.api#required" => {}}))
    AIAgentData.add_member(:modified_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'modifiedTime', traits: {"smithy.api#documentation" => "<p>The time the AI Agent was last modified.</p>"}))
    AIAgentData.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the AI Agent.</p>"}))
    AIAgentData.add_member(:visibility_status, Smithy::Schema::Shapes::ShapeRef.new(shape: VisibilityStatus, location_name: 'visibilityStatus', traits: {"smithy.api#documentation" => "<p>The visibility status of the AI Agent.</p>", "smithy.api#required" => {}}))
    AIAgentData.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags used to organize, track, or control access for this resource.</p>"}))
    AIAgentData.add_member(:origin, Smithy::Schema::Shapes::ShapeRef.new(shape: Origin, location_name: 'origin', traits: {"smithy.api#documentation" => "<p>Specifies the origin of the AI Agent. <code>SYSTEM</code> for a default AI Agent created by Q in Connect or <code>CUSTOMER</code> for an AI Agent created by calling AI Agent creation APIs. </p>"}))
    AIAgentData.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: Status, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the AI Agent.</p>"}))
    AIAgentData.type = Types::AIAgentData
    AIAgentSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the AI Agent.</p>", "smithy.api#required" => {}}))
    AIAgentSummary.add_member(:assistant_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'assistantId', traits: {"smithy.api#documentation" => "<p>The identifier of the Amazon Q in Connect assistant. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>", "smithy.api#required" => {}}))
    AIAgentSummary.add_member(:assistant_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'assistantArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Amazon Q in Connect assistant.</p>", "smithy.api#required" => {}}))
    AIAgentSummary.add_member(:ai_agent_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'aiAgentId', traits: {"smithy.api#documentation" => "<p>The identifier of the AI Agent.</p>", "smithy.api#required" => {}}))
    AIAgentSummary.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: AIAgentType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The type of the AI Agent.</p>", "smithy.api#required" => {}}))
    AIAgentSummary.add_member(:ai_agent_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'aiAgentArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the AI agent.</p>", "smithy.api#required" => {}}))
    AIAgentSummary.add_member(:modified_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'modifiedTime', traits: {"smithy.api#documentation" => "<p>The time the AI Agent was last modified.</p>"}))
    AIAgentSummary.add_member(:visibility_status, Smithy::Schema::Shapes::ShapeRef.new(shape: VisibilityStatus, location_name: 'visibilityStatus', traits: {"smithy.api#documentation" => "<p>The visibility status of the AI Agent.</p>", "smithy.api#required" => {}}))
    AIAgentSummary.add_member(:configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: AIAgentConfiguration, location_name: 'configuration', traits: {"smithy.api#documentation" => "<p>The configuration for the AI Agent.</p>"}))
    AIAgentSummary.add_member(:origin, Smithy::Schema::Shapes::ShapeRef.new(shape: Origin, location_name: 'origin', traits: {"smithy.api#documentation" => "<p>The origin of the AI Agent. <code>SYSTEM</code> for a default AI Agent created by Q in Connect or <code>CUSTOMER</code> for an AI Agent created by calling AI Agent creation APIs.</p>"}))
    AIAgentSummary.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the AI Agent.</p>"}))
    AIAgentSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: Status, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the AI Agent.</p>"}))
    AIAgentSummary.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags used to organize, track, or control access for this resource.</p>"}))
    AIAgentSummary.type = Types::AIAgentSummary
    AIAgentSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AIAgentSummary)
    AIAgentVersionSummariesList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AIAgentVersionSummary)
    AIAgentVersionSummary.add_member(:ai_agent_summary, Smithy::Schema::Shapes::ShapeRef.new(shape: AIAgentSummary, location_name: 'aiAgentSummary', traits: {"smithy.api#documentation" => "<p>The data for the summary of the AI Agent version.</p>"}))
    AIAgentVersionSummary.add_member(:version_number, Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'versionNumber', traits: {"smithy.api#documentation" => "<p>The version number for this AI Agent version.</p>"}))
    AIAgentVersionSummary.type = Types::AIAgentVersionSummary
    AIGuardrailContentPolicyConfig.add_member(:filters_config, Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailContentFiltersConfig, location_name: 'filtersConfig', traits: {"smithy.api#documentation" => "<p>Contains the type of the content filter and how strongly it should apply to prompts and model responses.</p>", "smithy.api#required" => {}}))
    AIGuardrailContentPolicyConfig.type = Types::AIGuardrailContentPolicyConfig
    AIGuardrailContextualGroundingPolicyConfig.add_member(:filters_config, Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailContextualGroundingFiltersConfig, location_name: 'filtersConfig', traits: {"smithy.api#documentation" => "<p>The filter configuration details for the AI Guardrails contextual grounding policy.</p>", "smithy.api#required" => {}}))
    AIGuardrailContextualGroundingPolicyConfig.type = Types::AIGuardrailContextualGroundingPolicyConfig
    AIGuardrailData.add_member(:assistant_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'assistantId', traits: {"smithy.api#documentation" => "<p>The identifier of the Amazon Q in Connect assistant. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>", "smithy.api#required" => {}}))
    AIGuardrailData.add_member(:assistant_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'assistantArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Amazon Q in Connect assistant.</p>", "smithy.api#required" => {}}))
    AIGuardrailData.add_member(:ai_guardrail_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'aiGuardrailArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the AI Guardrail.</p>", "smithy.api#required" => {}}))
    AIGuardrailData.add_member(:ai_guardrail_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'aiGuardrailId', traits: {"smithy.api#documentation" => "<p>The identifier of the Amazon Q in Connect AI Guardrail.</p>", "smithy.api#required" => {}}))
    AIGuardrailData.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the AI Guardrail.</p>", "smithy.api#required" => {}}))
    AIGuardrailData.add_member(:visibility_status, Smithy::Schema::Shapes::ShapeRef.new(shape: VisibilityStatus, location_name: 'visibilityStatus', traits: {"smithy.api#documentation" => "<p>The visibility status of the AI Guardrail.</p>", "smithy.api#required" => {}}))
    AIGuardrailData.add_member(:blocked_input_messaging, Smithy::Schema::Shapes::ShapeRef.new(shape: AIGuardrailBlockedMessaging, location_name: 'blockedInputMessaging', traits: {"smithy.api#documentation" => "<p>The message to return when the AI Guardrail blocks a prompt.</p>", "smithy.api#required" => {}}))
    AIGuardrailData.add_member(:blocked_outputs_messaging, Smithy::Schema::Shapes::ShapeRef.new(shape: AIGuardrailBlockedMessaging, location_name: 'blockedOutputsMessaging', traits: {"smithy.api#documentation" => "<p>The message to return when the AI Guardrail blocks a model response.</p>", "smithy.api#required" => {}}))
    AIGuardrailData.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: AIGuardrailDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A description of the AI Guardrail.</p>"}))
    AIGuardrailData.add_member(:topic_policy_config, Smithy::Schema::Shapes::ShapeRef.new(shape: AIGuardrailTopicPolicyConfig, location_name: 'topicPolicyConfig', traits: {"smithy.api#documentation" => "<p>Contains details about topics that the AI Guardrail should identify and deny.</p>"}))
    AIGuardrailData.add_member(:content_policy_config, Smithy::Schema::Shapes::ShapeRef.new(shape: AIGuardrailContentPolicyConfig, location_name: 'contentPolicyConfig', traits: {"smithy.api#documentation" => "<p>Contains details about how to handle harmful content.</p>"}))
    AIGuardrailData.add_member(:word_policy_config, Smithy::Schema::Shapes::ShapeRef.new(shape: AIGuardrailWordPolicyConfig, location_name: 'wordPolicyConfig', traits: {"smithy.api#documentation" => "<p>Contains details about the word policy to configured for the AI Guardrail.</p>"}))
    AIGuardrailData.add_member(:sensitive_information_policy_config, Smithy::Schema::Shapes::ShapeRef.new(shape: AIGuardrailSensitiveInformationPolicyConfig, location_name: 'sensitiveInformationPolicyConfig', traits: {"smithy.api#documentation" => "<p>Contains details about PII entities and regular expressions to configure for the AI Guardrail.</p>"}))
    AIGuardrailData.add_member(:contextual_grounding_policy_config, Smithy::Schema::Shapes::ShapeRef.new(shape: AIGuardrailContextualGroundingPolicyConfig, location_name: 'contextualGroundingPolicyConfig', traits: {"smithy.api#documentation" => "<p>The policy configuration details for the AI Guardrail's contextual grounding policy.</p>"}))
    AIGuardrailData.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags used to organize, track, or control access for this resource.</p>"}))
    AIGuardrailData.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: Status, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the AI Guardrail.</p>"}))
    AIGuardrailData.add_member(:modified_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'modifiedTime', traits: {"smithy.api#documentation" => "<p>The time the AI Guardrail was last modified.</p>"}))
    AIGuardrailData.type = Types::AIGuardrailData
    AIGuardrailSensitiveInformationPolicyConfig.add_member(:pii_entities_config, Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailPiiEntitiesConfig, location_name: 'piiEntitiesConfig', traits: {"smithy.api#documentation" => "<p>A list of PII entities to configure to the AI Guardrail.</p>"}))
    AIGuardrailSensitiveInformationPolicyConfig.add_member(:regexes_config, Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailRegexesConfig, location_name: 'regexesConfig', traits: {"smithy.api#documentation" => "<p>A list of regular expressions to configure to the AI Guardrail.</p>"}))
    AIGuardrailSensitiveInformationPolicyConfig.type = Types::AIGuardrailSensitiveInformationPolicyConfig
    AIGuardrailSummariesList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AIGuardrailSummary)
    AIGuardrailSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the AI Guardrail.</p>", "smithy.api#required" => {}}))
    AIGuardrailSummary.add_member(:assistant_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'assistantId', traits: {"smithy.api#documentation" => "<p>The identifier of the Amazon Q in Connect assistant. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>", "smithy.api#required" => {}}))
    AIGuardrailSummary.add_member(:assistant_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'assistantArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Amazon Q in Connect assistant.</p>", "smithy.api#required" => {}}))
    AIGuardrailSummary.add_member(:ai_guardrail_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'aiGuardrailId', traits: {"smithy.api#documentation" => "<p>The identifier of the Amazon Q in Connect AI Guardrail.</p>", "smithy.api#required" => {}}))
    AIGuardrailSummary.add_member(:ai_guardrail_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'aiGuardrailArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the AI Guardrail.</p>", "smithy.api#required" => {}}))
    AIGuardrailSummary.add_member(:modified_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'modifiedTime', traits: {"smithy.api#documentation" => "<p>The time the AI Guardrail was last modified.</p>"}))
    AIGuardrailSummary.add_member(:visibility_status, Smithy::Schema::Shapes::ShapeRef.new(shape: VisibilityStatus, location_name: 'visibilityStatus', traits: {"smithy.api#documentation" => "<p>The visibility status of the AI Guardrail.</p>", "smithy.api#required" => {}}))
    AIGuardrailSummary.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: AIGuardrailDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A description of the AI Guardrail.</p>"}))
    AIGuardrailSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: Status, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the AI Guardrail.</p>"}))
    AIGuardrailSummary.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags used to organize, track, or control access for this resource.</p>"}))
    AIGuardrailSummary.type = Types::AIGuardrailSummary
    AIGuardrailTopicPolicyConfig.add_member(:topics_config, Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailTopicsConfig, location_name: 'topicsConfig', traits: {"smithy.api#documentation" => "<p>A list of policies related to topics that the AI Guardrail should deny.</p>", "smithy.api#required" => {}}))
    AIGuardrailTopicPolicyConfig.type = Types::AIGuardrailTopicPolicyConfig
    AIGuardrailVersionSummariesList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AIGuardrailVersionSummary)
    AIGuardrailVersionSummary.add_member(:ai_guardrail_summary, Smithy::Schema::Shapes::ShapeRef.new(shape: AIGuardrailSummary, location_name: 'aiGuardrailSummary', traits: {"smithy.api#documentation" => "<p>The data for the summary of the AI Guardrail version.</p>"}))
    AIGuardrailVersionSummary.add_member(:version_number, Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'versionNumber', traits: {"smithy.api#documentation" => "<p>The version number for this AI Guardrail version.</p>"}))
    AIGuardrailVersionSummary.type = Types::AIGuardrailVersionSummary
    AIGuardrailWordPolicyConfig.add_member(:words_config, Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailWordsConfig, location_name: 'wordsConfig', traits: {"smithy.api#documentation" => "<p>A list of words to configure for the AI Guardrail.</p>"}))
    AIGuardrailWordPolicyConfig.add_member(:managed_word_lists_config, Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailManagedWordListsConfig, location_name: 'managedWordListsConfig', traits: {"smithy.api#documentation" => "<p>A list of managed words to configure for the AI Guardrail.</p>"}))
    AIGuardrailWordPolicyConfig.type = Types::AIGuardrailWordPolicyConfig
    AIPromptData.add_member(:assistant_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'assistantId', traits: {"smithy.api#documentation" => "<p>The identifier of the Amazon Q in Connect assistant. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>", "smithy.api#required" => {}}))
    AIPromptData.add_member(:assistant_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'assistantArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Amazon Q in Connect assistant.</p>", "smithy.api#required" => {}}))
    AIPromptData.add_member(:ai_prompt_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'aiPromptId', traits: {"smithy.api#documentation" => "<p>The identifier of the Amazon Q in Connect AI prompt.</p>", "smithy.api#required" => {}}))
    AIPromptData.add_member(:ai_prompt_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'aiPromptArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the AI Prompt.</p>", "smithy.api#required" => {}}))
    AIPromptData.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the AI Prompt</p>", "smithy.api#required" => {}}))
    AIPromptData.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: AIPromptType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The type of this AI Prompt.</p>", "smithy.api#required" => {}}))
    AIPromptData.add_member(:template_type, Smithy::Schema::Shapes::ShapeRef.new(shape: AIPromptTemplateType, location_name: 'templateType', traits: {"smithy.api#documentation" => "<p>The type of the prompt template for this AI Prompt.</p>", "smithy.api#required" => {}}))
    AIPromptData.add_member(:model_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AIPromptModelIdentifier, location_name: 'modelId', traits: {"smithy.api#documentation" => "<p>The identifier of the model used for this AI Prompt. The following model Ids are supported:</p> <ul> <li> <p> <code>anthropic.claude-3-haiku--v1:0</code> </p> </li> <li> <p> <code>apac.amazon.nova-lite-v1:0</code> </p> </li> <li> <p> <code>apac.amazon.nova-micro-v1:0</code> </p> </li> <li> <p> <code>apac.amazon.nova-pro-v1:0</code> </p> </li> <li> <p> <code>apac.anthropic.claude-3-5-sonnet--v2:0</code> </p> </li> <li> <p> <code>apac.anthropic.claude-3-haiku-20240307-v1:0</code> </p> </li> <li> <p> <code>eu.amazon.nova-lite-v1:0</code> </p> </li> <li> <p> <code>eu.amazon.nova-micro-v1:0</code> </p> </li> <li> <p> <code>eu.amazon.nova-pro-v1:0</code> </p> </li> <li> <p> <code>eu.anthropic.claude-3-7-sonnet-20250219-v1:0</code> </p> </li> <li> <p> <code>eu.anthropic.claude-3-haiku-20240307-v1:0</code> </p> </li> <li> <p> <code>us.amazon.nova-lite-v1:0</code> </p> </li> <li> <p> <code>us.amazon.nova-micro-v1:0</code> </p> </li> <li> <p> <code>us.amazon.nova-pro-v1:0</code> </p> </li> <li> <p> <code>us.anthropic.claude-3-5-haiku-20241022-v1:0</code> </p> </li> <li> <p> <code>us.anthropic.claude-3-7-sonnet-20250219-v1:0</code> </p> </li> <li> <p> <code>us.anthropic.claude-3-haiku-20240307-v1:0</code> </p> </li> </ul>", "smithy.api#required" => {}}))
    AIPromptData.add_member(:api_format, Smithy::Schema::Shapes::ShapeRef.new(shape: AIPromptAPIFormat, location_name: 'apiFormat', traits: {"smithy.api#documentation" => "<p>The API format used for this AI Prompt.</p>", "smithy.api#required" => {}}))
    AIPromptData.add_member(:template_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: AIPromptTemplateConfiguration, location_name: 'templateConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration of the prompt template for this AI Prompt.</p>", "smithy.api#required" => {}}))
    AIPromptData.add_member(:modified_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'modifiedTime', traits: {"smithy.api#documentation" => "<p>The time the AI Prompt was last modified.</p>"}))
    AIPromptData.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the AI Prompt.</p>"}))
    AIPromptData.add_member(:visibility_status, Smithy::Schema::Shapes::ShapeRef.new(shape: VisibilityStatus, location_name: 'visibilityStatus', traits: {"smithy.api#documentation" => "<p>The visibility status of the AI Prompt.</p>", "smithy.api#required" => {}}))
    AIPromptData.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags used to organize, track, or control access for this resource.</p>"}))
    AIPromptData.add_member(:origin, Smithy::Schema::Shapes::ShapeRef.new(shape: Origin, location_name: 'origin', traits: {"smithy.api#documentation" => "<p>The origin of the AI Prompt. <code>SYSTEM</code> for a default AI Prompt created by Q in Connect or <code>CUSTOMER</code> for an AI Prompt created by calling AI Prompt creation APIs. </p>"}))
    AIPromptData.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: Status, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the AI Prompt.</p>"}))
    AIPromptData.type = Types::AIPromptData
    AIPromptSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the AI Prompt.</p>", "smithy.api#required" => {}}))
    AIPromptSummary.add_member(:assistant_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'assistantId', traits: {"smithy.api#documentation" => "<p>The identifier of the Amazon Q in Connect assistant. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>", "smithy.api#required" => {}}))
    AIPromptSummary.add_member(:assistant_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'assistantArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Amazon Q in Connect assistant.</p>", "smithy.api#required" => {}}))
    AIPromptSummary.add_member(:ai_prompt_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'aiPromptId', traits: {"smithy.api#documentation" => "<p>The identifier of the Amazon Q in Connect AI prompt.</p>", "smithy.api#required" => {}}))
    AIPromptSummary.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: AIPromptType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The type of this AI Prompt.</p>", "smithy.api#required" => {}}))
    AIPromptSummary.add_member(:ai_prompt_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'aiPromptArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the AI Prompt.</p>", "smithy.api#required" => {}}))
    AIPromptSummary.add_member(:modified_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'modifiedTime', traits: {"smithy.api#documentation" => "<p>The time the AI Prompt was last modified.</p>"}))
    AIPromptSummary.add_member(:template_type, Smithy::Schema::Shapes::ShapeRef.new(shape: AIPromptTemplateType, location_name: 'templateType', traits: {"smithy.api#documentation" => "<p>The type of the prompt template for this AI Prompt.</p>", "smithy.api#required" => {}}))
    AIPromptSummary.add_member(:model_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AIPromptModelIdentifier, location_name: 'modelId', traits: {"smithy.api#documentation" => "<p>The identifier of the model used for this AI Prompt. Model Ids supported are: <code>anthropic.claude-3-haiku-20240307-v1:0</code>.</p>", "smithy.api#required" => {}}))
    AIPromptSummary.add_member(:api_format, Smithy::Schema::Shapes::ShapeRef.new(shape: AIPromptAPIFormat, location_name: 'apiFormat', traits: {"smithy.api#documentation" => "<p>The API format used for this AI Prompt.</p>", "smithy.api#required" => {}}))
    AIPromptSummary.add_member(:visibility_status, Smithy::Schema::Shapes::ShapeRef.new(shape: VisibilityStatus, location_name: 'visibilityStatus', traits: {"smithy.api#documentation" => "<p>The visibility status of the AI Prompt.</p>", "smithy.api#required" => {}}))
    AIPromptSummary.add_member(:origin, Smithy::Schema::Shapes::ShapeRef.new(shape: Origin, location_name: 'origin', traits: {"smithy.api#documentation" => "<p>The origin of the AI Prompt. <code>SYSTEM</code> for a default AI Prompt created by Q in Connect or <code>CUSTOMER</code> for an AI Prompt created by calling AI Prompt creation APIs. </p>"}))
    AIPromptSummary.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the AI Prompt.</p>"}))
    AIPromptSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: Status, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the AI Prompt.</p>"}))
    AIPromptSummary.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags used to organize, track, or control access for this resource.</p>"}))
    AIPromptSummary.type = Types::AIPromptSummary
    AIPromptSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AIPromptSummary)
    AIPromptTemplateConfiguration.add_member(:text_full_ai_prompt_edit_template_configuration, Types::AIPromptTemplateConfiguration::TextFullAiPromptEditTemplateConfiguration, Smithy::Schema::Shapes::ShapeRef.new(shape: TextFullAIPromptEditTemplateConfiguration, location_name: 'textFullAIPromptEditTemplateConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration for a prompt template that supports full textual prompt configuration using a YAML prompt.</p>"}))
    AIPromptTemplateConfiguration.add_member(:unknown, Types::AIPromptTemplateConfiguration::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    AIPromptTemplateConfiguration.type = Types::AIPromptTemplateConfiguration
    AIPromptVersionSummariesList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AIPromptVersionSummary)
    AIPromptVersionSummary.add_member(:ai_prompt_summary, Smithy::Schema::Shapes::ShapeRef.new(shape: AIPromptSummary, location_name: 'aiPromptSummary', traits: {"smithy.api#documentation" => "<p>The date for the summary of the AI Prompt version.</p>"}))
    AIPromptVersionSummary.add_member(:version_number, Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'versionNumber', traits: {"smithy.api#documentation" => "<p>The version number for this AI Prompt version.</p>"}))
    AIPromptVersionSummary.type = Types::AIPromptVersionSummary
    AccessDeniedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message'))
    AccessDeniedException.type = Types::AccessDeniedException
    ActivateMessageTemplateRequest.add_member(:knowledge_base_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'knowledgeBaseId', traits: {"smithy.api#documentation" => "<p>The identifier of the knowledge base. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ActivateMessageTemplateRequest.add_member(:message_template_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArnOrEitherWithQualifier, location_name: 'messageTemplateId', traits: {"smithy.api#documentation" => "<p>The identifier of the message template. Can be either the ID or the ARN. It cannot contain any qualifier.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ActivateMessageTemplateRequest.add_member(:version_number, Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'versionNumber', traits: {"smithy.api#documentation" => "<p>The version number of the message template version to activate.</p>", "smithy.api#required" => {}}))
    ActivateMessageTemplateRequest.type = Types::ActivateMessageTemplateRequest
    ActivateMessageTemplateResponse.add_member(:message_template_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ArnWithQualifier, location_name: 'messageTemplateArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the message template.</p>", "smithy.api#required" => {}}))
    ActivateMessageTemplateResponse.add_member(:message_template_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'messageTemplateId', traits: {"smithy.api#documentation" => "<p>The identifier of the message template.</p>", "smithy.api#required" => {}}))
    ActivateMessageTemplateResponse.add_member(:version_number, Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'versionNumber', traits: {"smithy.api#documentation" => "<p>The version number of the message template version that is activated.</p>", "smithy.api#required" => {}}))
    ActivateMessageTemplateResponse.type = Types::ActivateMessageTemplateResponse
    AgentAttributes.add_member(:first_name, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateAttributeValue, location_name: 'firstName', traits: {"smithy.api#documentation" => "<p>The agent’s first name as entered in their Amazon Connect user account.</p>"}))
    AgentAttributes.add_member(:last_name, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateAttributeValue, location_name: 'lastName', traits: {"smithy.api#documentation" => "<p>The agent’s last name as entered in their Amazon Connect user account.</p>"}))
    AgentAttributes.type = Types::AgentAttributes
    AmazonConnectGuideAssociationData.add_member(:flow_id, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericArn, location_name: 'flowId', traits: {"smithy.api#documentation" => "<p> The Amazon Resource Name (ARN) of an Amazon Connect flow. Step-by-step guides are a type of flow.</p>"}))
    AmazonConnectGuideAssociationData.type = Types::AmazonConnectGuideAssociationData
    AndConditions.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TagCondition)
    AnswerRecommendationAIAgentConfiguration.add_member(:intent_labeling_generation_ai_prompt_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidWithQualifier, location_name: 'intentLabelingGenerationAIPromptId', traits: {"smithy.api#documentation" => "<p>The AI Prompt identifier for the Intent Labeling prompt used by the <code>ANSWER_RECOMMENDATION</code> AI Agent.</p>"}))
    AnswerRecommendationAIAgentConfiguration.add_member(:query_reformulation_ai_prompt_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidWithQualifier, location_name: 'queryReformulationAIPromptId', traits: {"smithy.api#documentation" => "<p>The AI Prompt identifier for the Query Reformulation prompt used by the <code>ANSWER_RECOMMENDATION</code> AI Agent.</p>"}))
    AnswerRecommendationAIAgentConfiguration.add_member(:answer_generation_ai_prompt_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidWithQualifier, location_name: 'answerGenerationAIPromptId', traits: {"smithy.api#documentation" => "<p>The AI Prompt identifier for the Answer Generation prompt used by the <code>ANSWER_RECOMMENDATION</code> AI Agent.</p>"}))
    AnswerRecommendationAIAgentConfiguration.add_member(:answer_generation_ai_guardrail_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidWithQualifier, location_name: 'answerGenerationAIGuardrailId', traits: {"smithy.api#documentation" => "<p>The AI Guardrail identifier for the Answer Generation Guardrail used by the <code>ANSWER_RECOMMENDATION</code> AI Agent.</p>"}))
    AnswerRecommendationAIAgentConfiguration.add_member(:association_configurations, Smithy::Schema::Shapes::ShapeRef.new(shape: AssociationConfigurationList, location_name: 'associationConfigurations', traits: {"smithy.api#documentation" => "<p>The association configurations for overriding behavior on this AI Agent.</p>"}))
    AnswerRecommendationAIAgentConfiguration.add_member(:locale, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'locale', traits: {"smithy.api#documentation" => "<p>The locale to which specifies the language and region settings that determine the response language for <a href=\"https://docs.aws.amazon.com/connect/latest/APIReference/API_amazon-q-connect_QueryAssistant.html\">QueryAssistant</a>.</p> <note> <p>For more information on supported locales, see <a href=\"https://docs.aws.amazon.com/connect/latest/adminguide/supported-languages.html#qic-notes-languages\">Language support for Amazon Q in Connect</a>.</p> </note>"}))
    AnswerRecommendationAIAgentConfiguration.type = Types::AnswerRecommendationAIAgentConfiguration
    AppIntegrationsConfiguration.add_member(:app_integration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericArn, location_name: 'appIntegrationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the AppIntegrations DataIntegration to use for ingesting content.</p> <ul> <li> <p> For <a href=\"https://developer.salesforce.com/docs/atlas.en-us.knowledge_dev.meta/knowledge_dev/sforce_api_objects_knowledge__kav.htm\"> Salesforce</a>, your AppIntegrations DataIntegration must have an ObjectConfiguration if objectFields is not provided, including at least <code>Id</code>, <code>ArticleNumber</code>, <code>VersionNumber</code>, <code>Title</code>, <code>PublishStatus</code>, and <code>IsDeleted</code> as source fields. </p> </li> <li> <p> For <a href=\"https://developer.servicenow.com/dev.do#!/reference/api/rome/rest/knowledge-management-api\"> ServiceNow</a>, your AppIntegrations DataIntegration must have an ObjectConfiguration if objectFields is not provided, including at least <code>number</code>, <code>short_description</code>, <code>sys_mod_count</code>, <code>workflow_state</code>, and <code>active</code> as source fields. </p> </li> <li> <p> For <a href=\"https://developer.zendesk.com/api-reference/help_center/help-center-api/articles/\"> Zendesk</a>, your AppIntegrations DataIntegration must have an ObjectConfiguration if <code>objectFields</code> is not provided, including at least <code>id</code>, <code>title</code>, <code>updated_at</code>, and <code>draft</code> as source fields. </p> </li> <li> <p> For <a href=\"https://learn.microsoft.com/en-us/sharepoint/dev/sp-add-ins/sharepoint-net-server-csom-jsom-and-rest-api-index\">SharePoint</a>, your AppIntegrations DataIntegration must have a FileConfiguration, including only file extensions that are among <code>docx</code>, <code>pdf</code>, <code>html</code>, <code>htm</code>, and <code>txt</code>. </p> </li> <li> <p> For <a href=\"http://aws.amazon.com/s3/\">Amazon S3</a>, the ObjectConfiguration and FileConfiguration of your AppIntegrations DataIntegration must be null. The <code>SourceURI</code> of your DataIntegration must use the following format: <code>s3://your_s3_bucket_name</code>.</p> <important> <p>The bucket policy of the corresponding S3 bucket must allow the Amazon Web Services principal <code>app-integrations.amazonaws.com</code> to perform <code>s3:ListBucket</code>, <code>s3:GetObject</code>, and <code>s3:GetBucketLocation</code> against the bucket.</p> </important> </li> </ul>", "smithy.api#required" => {}}))
    AppIntegrationsConfiguration.add_member(:object_fields, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectFieldsList, location_name: 'objectFields', traits: {"smithy.api#documentation" => "<p>The fields from the source that are made available to your agents in Amazon Q in Connect. Optional if ObjectConfiguration is included in the provided DataIntegration. </p> <ul> <li> <p> For <a href=\"https://developer.salesforce.com/docs/atlas.en-us.knowledge_dev.meta/knowledge_dev/sforce_api_objects_knowledge__kav.htm\"> Salesforce</a>, you must include at least <code>Id</code>, <code>ArticleNumber</code>, <code>VersionNumber</code>, <code>Title</code>, <code>PublishStatus</code>, and <code>IsDeleted</code>. </p> </li> <li> <p>For <a href=\"https://developer.servicenow.com/dev.do#!/reference/api/rome/rest/knowledge-management-api\"> ServiceNow</a>, you must include at least <code>number</code>, <code>short_description</code>, <code>sys_mod_count</code>, <code>workflow_state</code>, and <code>active</code>. </p> </li> <li> <p>For <a href=\"https://developer.zendesk.com/api-reference/help_center/help-center-api/articles/\"> Zendesk</a>, you must include at least <code>id</code>, <code>title</code>, <code>updated_at</code>, and <code>draft</code>. </p> </li> </ul> <p>Make sure to include additional fields. These fields are indexed and used to source recommendations. </p>"}))
    AppIntegrationsConfiguration.type = Types::AppIntegrationsConfiguration
    AssistantAssociationData.add_member(:assistant_association_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'assistantAssociationId', traits: {"smithy.api#documentation" => "<p>The identifier of the assistant association.</p>", "smithy.api#required" => {}}))
    AssistantAssociationData.add_member(:assistant_association_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'assistantAssociationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the assistant association.</p>", "smithy.api#required" => {}}))
    AssistantAssociationData.add_member(:assistant_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'assistantId', traits: {"smithy.api#documentation" => "<p>The identifier of the Amazon Q in Connect assistant.</p>", "smithy.api#required" => {}}))
    AssistantAssociationData.add_member(:assistant_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'assistantArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Amazon Q in Connect assistant.</p>", "smithy.api#required" => {}}))
    AssistantAssociationData.add_member(:association_type, Smithy::Schema::Shapes::ShapeRef.new(shape: AssociationType, location_name: 'associationType', traits: {"smithy.api#documentation" => "<p>The type of association.</p>", "smithy.api#required" => {}}))
    AssistantAssociationData.add_member(:association_data, Smithy::Schema::Shapes::ShapeRef.new(shape: AssistantAssociationOutputData, location_name: 'associationData', traits: {"smithy.api#documentation" => "<p>A union type that currently has a single argument, the knowledge base ID.</p>", "smithy.api#required" => {}}))
    AssistantAssociationData.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags used to organize, track, or control access for this resource.</p>"}))
    AssistantAssociationData.type = Types::AssistantAssociationData
    AssistantAssociationInputData.add_member(:knowledge_base_id, Types::AssistantAssociationInputData::KnowledgeBaseId, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'knowledgeBaseId', traits: {"smithy.api#documentation" => "<p>The identifier of the knowledge base. This should not be a QUICK_RESPONSES type knowledge base.</p>"}))
    AssistantAssociationInputData.add_member(:unknown, Types::AssistantAssociationInputData::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    AssistantAssociationInputData.type = Types::AssistantAssociationInputData
    AssistantAssociationOutputData.add_member(:knowledge_base_association, Types::AssistantAssociationOutputData::KnowledgeBaseAssociation, Smithy::Schema::Shapes::ShapeRef.new(shape: KnowledgeBaseAssociationData, location_name: 'knowledgeBaseAssociation', traits: {"smithy.api#documentation" => "<p>The knowledge base where output data is sent.</p>"}))
    AssistantAssociationOutputData.add_member(:unknown, Types::AssistantAssociationOutputData::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    AssistantAssociationOutputData.type = Types::AssistantAssociationOutputData
    AssistantAssociationSummary.add_member(:assistant_association_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'assistantAssociationId', traits: {"smithy.api#documentation" => "<p>The identifier of the assistant association.</p>", "smithy.api#required" => {}}))
    AssistantAssociationSummary.add_member(:assistant_association_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'assistantAssociationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the assistant association.</p>", "smithy.api#required" => {}}))
    AssistantAssociationSummary.add_member(:assistant_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'assistantId', traits: {"smithy.api#documentation" => "<p>The identifier of the Amazon Q in Connect assistant.</p>", "smithy.api#required" => {}}))
    AssistantAssociationSummary.add_member(:assistant_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'assistantArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Amazon Q in Connect assistant.</p>", "smithy.api#required" => {}}))
    AssistantAssociationSummary.add_member(:association_type, Smithy::Schema::Shapes::ShapeRef.new(shape: AssociationType, location_name: 'associationType', traits: {"smithy.api#documentation" => "<p>The type of association.</p>", "smithy.api#required" => {}}))
    AssistantAssociationSummary.add_member(:association_data, Smithy::Schema::Shapes::ShapeRef.new(shape: AssistantAssociationOutputData, location_name: 'associationData', traits: {"smithy.api#documentation" => "<p>The association data.</p>", "smithy.api#required" => {}}))
    AssistantAssociationSummary.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags used to organize, track, or control access for this resource.</p>"}))
    AssistantAssociationSummary.type = Types::AssistantAssociationSummary
    AssistantAssociationSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AssistantAssociationSummary)
    AssistantCapabilityConfiguration.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: AssistantCapabilityType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The type of Amazon Q in Connect assistant capability. </p>"}))
    AssistantCapabilityConfiguration.type = Types::AssistantCapabilityConfiguration
    AssistantData.add_member(:assistant_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'assistantId', traits: {"smithy.api#documentation" => "<p>The identifier of the Amazon Q in Connect assistant.</p>", "smithy.api#required" => {}}))
    AssistantData.add_member(:assistant_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'assistantArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Amazon Q in Connect assistant.</p>", "smithy.api#required" => {}}))
    AssistantData.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name.</p>", "smithy.api#required" => {}}))
    AssistantData.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: AssistantType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The type of assistant.</p>", "smithy.api#required" => {}}))
    AssistantData.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: AssistantStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the assistant.</p>", "smithy.api#required" => {}}))
    AssistantData.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description.</p>"}))
    AssistantData.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags used to organize, track, or control access for this resource.</p>"}))
    AssistantData.add_member(:server_side_encryption_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ServerSideEncryptionConfiguration, location_name: 'serverSideEncryptionConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration information for the customer managed key used for encryption. </p> <p>This KMS key must have a policy that allows <code>kms:CreateGrant</code>, <code>kms:DescribeKey</code>, <code>kms:Decrypt</code>, and <code>kms:GenerateDataKey*</code> permissions to the IAM identity using the key to invoke Amazon Q in Connect. To use Amazon Q in Connect with chat, the key policy must also allow <code>kms:Decrypt</code>, <code>kms:GenerateDataKey*</code>, and <code>kms:DescribeKey</code> permissions to the <code>connect.amazonaws.com</code> service principal. </p> <p>For more information about setting up a customer managed key for Amazon Q in Connect, see <a href=\"https://docs.aws.amazon.com/connect/latest/adminguide/enable-q.html\">Enable Amazon Q in Connect for your instance</a>.</p>"}))
    AssistantData.add_member(:integration_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: AssistantIntegrationConfiguration, location_name: 'integrationConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration information for the Amazon Q in Connect assistant integration.</p>"}))
    AssistantData.add_member(:capability_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: AssistantCapabilityConfiguration, location_name: 'capabilityConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration information for the Amazon Q in Connect assistant capability. </p>"}))
    AssistantData.add_member(:ai_agent_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: AIAgentConfigurationMap, location_name: 'aiAgentConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration of the AI Agents (mapped by AI Agent Type to AI Agent version) that is set on the Amazon Q in Connect Assistant.</p>"}))
    AssistantData.type = Types::AssistantData
    AssistantIntegrationConfiguration.add_member(:topic_integration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericArn, location_name: 'topicIntegrationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the integrated Amazon SNS topic used for streaming chat messages.</p>"}))
    AssistantIntegrationConfiguration.type = Types::AssistantIntegrationConfiguration
    AssistantList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AssistantSummary)
    AssistantSummary.add_member(:assistant_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'assistantId', traits: {"smithy.api#documentation" => "<p>The identifier of the Amazon Q in Connect assistant.</p>", "smithy.api#required" => {}}))
    AssistantSummary.add_member(:assistant_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'assistantArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Amazon Q in Connect assistant.</p>", "smithy.api#required" => {}}))
    AssistantSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the assistant.</p>", "smithy.api#required" => {}}))
    AssistantSummary.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: AssistantType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The type of the assistant.</p>", "smithy.api#required" => {}}))
    AssistantSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: AssistantStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the assistant.</p>", "smithy.api#required" => {}}))
    AssistantSummary.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the assistant.</p>"}))
    AssistantSummary.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags used to organize, track, or control access for this resource.</p>"}))
    AssistantSummary.add_member(:server_side_encryption_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ServerSideEncryptionConfiguration, location_name: 'serverSideEncryptionConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration information for the customer managed key used for encryption. </p> <p>This KMS key must have a policy that allows <code>kms:CreateGrant</code>, <code>kms:DescribeKey</code>, <code>kms:Decrypt</code>, and <code>kms:GenerateDataKey*</code> permissions to the IAM identity using the key to invoke Amazon Q in Connect. To use Amazon Q in Connect with chat, the key policy must also allow <code>kms:Decrypt</code>, <code>kms:GenerateDataKey*</code>, and <code>kms:DescribeKey</code> permissions to the <code>connect.amazonaws.com</code> service principal. </p> <p>For more information about setting up a customer managed key for Amazon Q in Connect, see <a href=\"https://docs.aws.amazon.com/connect/latest/adminguide/enable-q.html\">Enable Amazon Q in Connect for your instance</a>.</p>"}))
    AssistantSummary.add_member(:integration_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: AssistantIntegrationConfiguration, location_name: 'integrationConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration information for the Amazon Q in Connect assistant integration.</p>"}))
    AssistantSummary.add_member(:capability_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: AssistantCapabilityConfiguration, location_name: 'capabilityConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration information for the Amazon Q in Connect assistant capability. </p>"}))
    AssistantSummary.add_member(:ai_agent_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: AIAgentConfigurationMap, location_name: 'aiAgentConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration of the AI Agents (mapped by AI Agent Type to AI Agent version) that is set on the Amazon Q in Connect Assistant.</p>"}))
    AssistantSummary.type = Types::AssistantSummary
    AssociationConfiguration.add_member(:association_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'associationId', traits: {"smithy.api#documentation" => "<p>The identifier of the association for this Association Configuration.</p>"}))
    AssociationConfiguration.add_member(:association_type, Smithy::Schema::Shapes::ShapeRef.new(shape: AIAgentAssociationConfigurationType, location_name: 'associationType', traits: {"smithy.api#documentation" => "<p>The type of the association for this Association Configuration.</p>"}))
    AssociationConfiguration.add_member(:association_configuration_data, Smithy::Schema::Shapes::ShapeRef.new(shape: AssociationConfigurationData, location_name: 'associationConfigurationData', traits: {"smithy.api#documentation" => "<p>The data of the configuration for an Amazon Q in Connect Assistant Association.</p>"}))
    AssociationConfiguration.type = Types::AssociationConfiguration
    AssociationConfigurationData.add_member(:knowledge_base_association_configuration_data, Types::AssociationConfigurationData::KnowledgeBaseAssociationConfigurationData, Smithy::Schema::Shapes::ShapeRef.new(shape: KnowledgeBaseAssociationConfigurationData, location_name: 'knowledgeBaseAssociationConfigurationData', traits: {"smithy.api#documentation" => "<p>The data of the configuration for a <code>KNOWLEDGE_BASE</code> type Amazon Q in Connect Assistant Association.</p>"}))
    AssociationConfigurationData.add_member(:unknown, Types::AssociationConfigurationData::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    AssociationConfigurationData.type = Types::AssociationConfigurationData
    AssociationConfigurationList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociationConfiguration)
    BedrockFoundationModelConfigurationForParsing.add_member(:model_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: BedrockModelArnForParsing, location_name: 'modelArn', traits: {"smithy.api#documentation" => "<p>The ARN of the foundation model.</p>", "smithy.api#required" => {}}))
    BedrockFoundationModelConfigurationForParsing.add_member(:parsing_prompt, Smithy::Schema::Shapes::ShapeRef.new(shape: ParsingPrompt, location_name: 'parsingPrompt', traits: {"smithy.api#documentation" => "<p>Instructions for interpreting the contents of a document.</p>"}))
    BedrockFoundationModelConfigurationForParsing.type = Types::BedrockFoundationModelConfigurationForParsing
    Channels.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Channel)
    ChunkingConfiguration.add_member(:chunking_strategy, Smithy::Schema::Shapes::ShapeRef.new(shape: ChunkingStrategy, location_name: 'chunkingStrategy', traits: {"smithy.api#documentation" => "<p>Knowledge base can split your source data into chunks. A chunk refers to an excerpt from a data source that is returned when the knowledge base that it belongs to is queried. You have the following options for chunking your data. If you opt for <code>NONE</code>, then you may want to pre-process your files by splitting them up such that each file corresponds to a chunk.</p>", "smithy.api#required" => {}}))
    ChunkingConfiguration.add_member(:fixed_size_chunking_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: FixedSizeChunkingConfiguration, location_name: 'fixedSizeChunkingConfiguration', traits: {"smithy.api#documentation" => "<p>Configurations for when you choose fixed-size chunking. If you set the <code>chunkingStrategy</code> as <code>NONE</code>, exclude this field.</p>"}))
    ChunkingConfiguration.add_member(:hierarchical_chunking_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: HierarchicalChunkingConfiguration, location_name: 'hierarchicalChunkingConfiguration', traits: {"smithy.api#documentation" => "<p>Settings for hierarchical document chunking for a data source. Hierarchical chunking splits documents into layers of chunks where the first layer contains large chunks, and the second layer contains smaller chunks derived from the first layer.</p>"}))
    ChunkingConfiguration.add_member(:semantic_chunking_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: SemanticChunkingConfiguration, location_name: 'semanticChunkingConfiguration', traits: {"smithy.api#documentation" => "<p>Settings for semantic document chunking for a data source. Semantic chunking splits a document into smaller documents based on groups of similar content derived from the text with natural language processing.</p>"}))
    ChunkingConfiguration.type = Types::ChunkingConfiguration
    CitationSpan.add_member(:begin_offset_inclusive, Smithy::Schema::Shapes::ShapeRef.new(shape: CitationSpanOffset, location_name: 'beginOffsetInclusive', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>Where the text with a citation starts in the generated output.</p>"}))
    CitationSpan.add_member(:end_offset_exclusive, Smithy::Schema::Shapes::ShapeRef.new(shape: CitationSpanOffset, location_name: 'endOffsetExclusive', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>Where the text with a citation ends in the generated output.</p>"}))
    CitationSpan.type = Types::CitationSpan
    Configuration.add_member(:connect_configuration, Types::Configuration::ConnectConfiguration, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectConfiguration, location_name: 'connectConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration information of the Amazon Connect data source.</p>"}))
    Configuration.add_member(:unknown, Types::Configuration::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    Configuration.type = Types::Configuration
    ConflictException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message'))
    ConflictException.type = Types::ConflictException
    ConnectConfiguration.add_member(:instance_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'instanceId', traits: {"smithy.api#documentation" => "<p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>"}))
    ConnectConfiguration.type = Types::ConnectConfiguration
    ContactAttributeKeys.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ContactAttributeKey)
    ContactAttributes.key = Smithy::Schema::Shapes::ShapeRef.new(shape: ContactAttributeKey)
    ContactAttributes.value = Smithy::Schema::Shapes::ShapeRef.new(shape: ContactAttributeValue)
    ContentAssociationContents.add_member(:amazon_connect_guide_association, Types::ContentAssociationContents::AmazonConnectGuideAssociation, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonConnectGuideAssociationData, location_name: 'amazonConnectGuideAssociation', traits: {"smithy.api#documentation" => "<p>The data of the step-by-step guide association.</p>"}))
    ContentAssociationContents.add_member(:unknown, Types::ContentAssociationContents::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    ContentAssociationContents.type = Types::ContentAssociationContents
    ContentAssociationData.add_member(:knowledge_base_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'knowledgeBaseId', traits: {"smithy.api#documentation" => "<p>The identifier of the knowledge base.</p>", "smithy.api#required" => {}}))
    ContentAssociationData.add_member(:knowledge_base_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'knowledgeBaseArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the knowledge base.</p>", "smithy.api#required" => {}}))
    ContentAssociationData.add_member(:content_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'contentId', traits: {"smithy.api#documentation" => "<p>The identifier of the content.</p>", "smithy.api#required" => {}}))
    ContentAssociationData.add_member(:content_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'contentArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the content.</p>", "smithy.api#required" => {}}))
    ContentAssociationData.add_member(:content_association_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'contentAssociationId', traits: {"smithy.api#documentation" => "<p>The identifier of the content association. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>", "smithy.api#required" => {}}))
    ContentAssociationData.add_member(:content_association_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'contentAssociationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the content association.</p>", "smithy.api#required" => {}}))
    ContentAssociationData.add_member(:association_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ContentAssociationType, location_name: 'associationType', traits: {"smithy.api#documentation" => "<p>The type of association.</p>", "smithy.api#required" => {}}))
    ContentAssociationData.add_member(:association_data, Smithy::Schema::Shapes::ShapeRef.new(shape: ContentAssociationContents, location_name: 'associationData', traits: {"smithy.api#documentation" => "<p>The content association.</p>", "smithy.api#required" => {}}))
    ContentAssociationData.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags used to organize, track, or control access for this resource.</p>"}))
    ContentAssociationData.type = Types::ContentAssociationData
    ContentAssociationSummary.add_member(:knowledge_base_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'knowledgeBaseId', traits: {"smithy.api#documentation" => "<p>The identifier of the knowledge base.</p>", "smithy.api#required" => {}}))
    ContentAssociationSummary.add_member(:knowledge_base_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'knowledgeBaseArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the knowledge base.</p>", "smithy.api#required" => {}}))
    ContentAssociationSummary.add_member(:content_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'contentId', traits: {"smithy.api#documentation" => "<p>The identifier of the content.</p>", "smithy.api#required" => {}}))
    ContentAssociationSummary.add_member(:content_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'contentArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the content.</p>", "smithy.api#required" => {}}))
    ContentAssociationSummary.add_member(:content_association_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'contentAssociationId', traits: {"smithy.api#documentation" => "<p>The identifier of the content association. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>", "smithy.api#required" => {}}))
    ContentAssociationSummary.add_member(:content_association_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'contentAssociationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the content association.</p>", "smithy.api#required" => {}}))
    ContentAssociationSummary.add_member(:association_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ContentAssociationType, location_name: 'associationType', traits: {"smithy.api#documentation" => "<p>The type of association.</p>", "smithy.api#required" => {}}))
    ContentAssociationSummary.add_member(:association_data, Smithy::Schema::Shapes::ShapeRef.new(shape: ContentAssociationContents, location_name: 'associationData', traits: {"smithy.api#documentation" => "<p>The content association.</p>", "smithy.api#required" => {}}))
    ContentAssociationSummary.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags used to organize, track, or control access for this resource.</p>"}))
    ContentAssociationSummary.type = Types::ContentAssociationSummary
    ContentAssociationSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ContentAssociationSummary)
    ContentData.add_member(:content_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'contentArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the content.</p>", "smithy.api#required" => {}}))
    ContentData.add_member(:content_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'contentId', traits: {"smithy.api#documentation" => "<p>The identifier of the content.</p>", "smithy.api#required" => {}}))
    ContentData.add_member(:knowledge_base_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'knowledgeBaseArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the knowledge base.</p>", "smithy.api#required" => {}}))
    ContentData.add_member(:knowledge_base_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'knowledgeBaseId', traits: {"smithy.api#documentation" => "<p>The identifier of the knowledge base.</p>", "smithy.api#required" => {}}))
    ContentData.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the content.</p>", "smithy.api#required" => {}}))
    ContentData.add_member(:revision_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'revisionId', traits: {"smithy.api#documentation" => "<p>The identifier of the content revision.</p>", "smithy.api#required" => {}}))
    ContentData.add_member(:title, Smithy::Schema::Shapes::ShapeRef.new(shape: ContentTitle, location_name: 'title', traits: {"smithy.api#documentation" => "<p>The title of the content.</p>", "smithy.api#required" => {}}))
    ContentData.add_member(:content_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ContentType, location_name: 'contentType', traits: {"smithy.api#documentation" => "<p>The media type of the content.</p>", "smithy.api#required" => {}}))
    ContentData.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ContentStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the content.</p>", "smithy.api#required" => {}}))
    ContentData.add_member(:metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: ContentMetadata, location_name: 'metadata', traits: {"smithy.api#documentation" => "<p>A key/value map to store attributes without affecting tagging or recommendations. For example, when synchronizing data between an external system and Amazon Q in Connect, you can store an external version identifier as metadata to utilize for determining drift.</p>", "smithy.api#required" => {}}))
    ContentData.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags used to organize, track, or control access for this resource.</p>"}))
    ContentData.add_member(:link_out_uri, Smithy::Schema::Shapes::ShapeRef.new(shape: Uri, location_name: 'linkOutUri', traits: {"smithy.api#documentation" => "<p>The URI of the content.</p>"}))
    ContentData.add_member(:url, Smithy::Schema::Shapes::ShapeRef.new(shape: Url, location_name: 'url', traits: {"smithy.api#documentation" => "<p>The URL of the content.</p>", "smithy.api#required" => {}}))
    ContentData.add_member(:url_expiry, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'urlExpiry', traits: {"smithy.api#documentation" => "<p>The expiration time of the URL as an epoch timestamp.</p>", "smithy.api#required" => {}, "smithy.api#timestampFormat" => "epoch-seconds"}))
    ContentData.type = Types::ContentData
    ContentDataDetails.add_member(:text_data, Smithy::Schema::Shapes::ShapeRef.new(shape: TextData, location_name: 'textData', traits: {"smithy.api#documentation" => "<p>Details about the content text data.</p>", "smithy.api#required" => {}}))
    ContentDataDetails.add_member(:ranking_data, Smithy::Schema::Shapes::ShapeRef.new(shape: RankingData, location_name: 'rankingData', traits: {"smithy.api#documentation" => "<p>Details about the content ranking data.</p>", "smithy.api#required" => {}}))
    ContentDataDetails.type = Types::ContentDataDetails
    ContentFeedbackData.add_member(:generative_content_feedback_data, Types::ContentFeedbackData::GenerativeContentFeedbackData, Smithy::Schema::Shapes::ShapeRef.new(shape: GenerativeContentFeedbackData, location_name: 'generativeContentFeedbackData', traits: {"smithy.api#documentation" => "<p>Information about the feedback for a generative target type.</p>"}))
    ContentFeedbackData.add_member(:unknown, Types::ContentFeedbackData::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    ContentFeedbackData.type = Types::ContentFeedbackData
    ContentMetadata.key = Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString)
    ContentMetadata.value = Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString)
    ContentReference.add_member(:knowledge_base_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'knowledgeBaseArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the knowledge base.</p>"}))
    ContentReference.add_member(:knowledge_base_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'knowledgeBaseId', traits: {"smithy.api#documentation" => "<p>The identifier of the knowledge base. This should not be a QUICK_RESPONSES type knowledge base.</p>"}))
    ContentReference.add_member(:content_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'contentArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the content.</p>"}))
    ContentReference.add_member(:content_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'contentId', traits: {"smithy.api#documentation" => "<p>The identifier of the content.</p>"}))
    ContentReference.add_member(:source_url, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'sourceURL', traits: {"smithy.api#documentation" => "<p>The web URL of the source content.</p>"}))
    ContentReference.add_member(:reference_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ReferenceType, location_name: 'referenceType', traits: {"smithy.api#documentation" => "<p>The type of reference content.</p>"}))
    ContentReference.type = Types::ContentReference
    ContentSummary.add_member(:content_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'contentArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the content.</p>", "smithy.api#required" => {}}))
    ContentSummary.add_member(:content_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'contentId', traits: {"smithy.api#documentation" => "<p>The identifier of the content.</p>", "smithy.api#required" => {}}))
    ContentSummary.add_member(:knowledge_base_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'knowledgeBaseArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the knowledge base.</p>", "smithy.api#required" => {}}))
    ContentSummary.add_member(:knowledge_base_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'knowledgeBaseId', traits: {"smithy.api#documentation" => "<p>The identifier of the knowledge base. This should not be a QUICK_RESPONSES type knowledge base.</p>", "smithy.api#required" => {}}))
    ContentSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the content.</p>", "smithy.api#required" => {}}))
    ContentSummary.add_member(:revision_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'revisionId', traits: {"smithy.api#documentation" => "<p>The identifier of the revision of the content.</p>", "smithy.api#required" => {}}))
    ContentSummary.add_member(:title, Smithy::Schema::Shapes::ShapeRef.new(shape: ContentTitle, location_name: 'title', traits: {"smithy.api#documentation" => "<p>The title of the content.</p>", "smithy.api#required" => {}}))
    ContentSummary.add_member(:content_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ContentType, location_name: 'contentType', traits: {"smithy.api#documentation" => "<p>The media type of the content.</p>", "smithy.api#required" => {}}))
    ContentSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ContentStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the content.</p>", "smithy.api#required" => {}}))
    ContentSummary.add_member(:metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: ContentMetadata, location_name: 'metadata', traits: {"smithy.api#documentation" => "<p>A key/value map to store attributes without affecting tagging or recommendations. For example, when synchronizing data between an external system and Amazon Q in Connect, you can store an external version identifier as metadata to utilize for determining drift.</p>", "smithy.api#required" => {}}))
    ContentSummary.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags used to organize, track, or control access for this resource.</p>"}))
    ContentSummary.type = Types::ContentSummary
    ContentSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ContentSummary)
    ConversationContext.add_member(:self_service_conversation_history, Smithy::Schema::Shapes::ShapeRef.new(shape: SelfServiceConversationHistoryList, location_name: 'selfServiceConversationHistory', traits: {"smithy.api#documentation" => "<p>The self service conversation history before the Amazon Q in Connect session.</p>", "smithy.api#required" => {}}))
    ConversationContext.type = Types::ConversationContext
    ConversationState.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ConversationStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the conversation state.</p>", "smithy.api#required" => {}}))
    ConversationState.add_member(:reason, Smithy::Schema::Shapes::ShapeRef.new(shape: ConversationStatusReason, location_name: 'reason', traits: {"smithy.api#documentation" => "<p>The reason of the conversation state.</p>"}))
    ConversationState.type = Types::ConversationState
    CreateAIAgentRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request. If not provided, the Amazon Web Services SDK populates this field. For more information about idempotency, see <a href=\"http://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/\">Making retries safe with idempotent APIs</a>..</p>", "smithy.api#idempotencyToken" => {}}))
    CreateAIAgentRequest.add_member(:assistant_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'assistantId', traits: {"smithy.api#documentation" => "<p>The identifier of the Amazon Q in Connect assistant. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateAIAgentRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the AI Agent.</p>", "smithy.api#required" => {}}))
    CreateAIAgentRequest.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: AIAgentType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The type of the AI Agent.</p>", "smithy.api#required" => {}}))
    CreateAIAgentRequest.add_member(:configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: AIAgentConfiguration, location_name: 'configuration', traits: {"smithy.api#documentation" => "<p>The configuration of the AI Agent.</p>", "smithy.api#required" => {}}))
    CreateAIAgentRequest.add_member(:visibility_status, Smithy::Schema::Shapes::ShapeRef.new(shape: VisibilityStatus, location_name: 'visibilityStatus', traits: {"smithy.api#documentation" => "<p>The visibility status of the AI Agent.</p>", "smithy.api#required" => {}}))
    CreateAIAgentRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags used to organize, track, or control access for this resource.</p>"}))
    CreateAIAgentRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the AI Agent.</p>"}))
    CreateAIAgentRequest.type = Types::CreateAIAgentRequest
    CreateAIAgentResponse.add_member(:ai_agent, Smithy::Schema::Shapes::ShapeRef.new(shape: AIAgentData, location_name: 'aiAgent', traits: {"smithy.api#documentation" => "<p>The data of the created AI Agent.</p>"}))
    CreateAIAgentResponse.type = Types::CreateAIAgentResponse
    CreateAIAgentVersionRequest.add_member(:assistant_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'assistantId', traits: {"smithy.api#documentation" => "<p>The identifier of the Amazon Q in Connect assistant. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateAIAgentVersionRequest.add_member(:ai_agent_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArnOrEitherWithQualifier, location_name: 'aiAgentId', traits: {"smithy.api#documentation" => "<p>The identifier of the Amazon Q in Connect AI Agent.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateAIAgentVersionRequest.add_member(:modified_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'modifiedTime', traits: {"smithy.api#documentation" => "<p>The modification time of the AI Agent should be tracked for version creation. This field should be specified to avoid version creation when simultaneous update to the underlying AI Agent are possible. The value should be the modifiedTime returned from the request to create or update an AI Agent so that version creation can fail if an update to the AI Agent post the specified modification time has been made.</p>"}))
    CreateAIAgentVersionRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request. If not provided, the Amazon Web Services SDK populates this field. For more information about idempotency, see <a href=\"http://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/\">Making retries safe with idempotent APIs</a>..</p>", "smithy.api#idempotencyToken" => {}}))
    CreateAIAgentVersionRequest.type = Types::CreateAIAgentVersionRequest
    CreateAIAgentVersionResponse.add_member(:ai_agent, Smithy::Schema::Shapes::ShapeRef.new(shape: AIAgentData, location_name: 'aiAgent', traits: {"smithy.api#documentation" => "<p>The data of the AI Agent version.</p>"}))
    CreateAIAgentVersionResponse.add_member(:version_number, Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'versionNumber', traits: {"smithy.api#documentation" => "<p>The version number of the AI Agent version.</p>"}))
    CreateAIAgentVersionResponse.type = Types::CreateAIAgentVersionResponse
    CreateAIGuardrailRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request. If not provided, the Amazon Web Services SDK populates this field. For more information about idempotency, see <a href=\"http://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/\">Making retries safe with idempotent APIs</a>..</p>", "smithy.api#idempotencyToken" => {}}))
    CreateAIGuardrailRequest.add_member(:assistant_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'assistantId', traits: {"smithy.api#documentation" => "<p>The identifier of the Amazon Q in Connect assistant. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateAIGuardrailRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the AI Guardrail.</p>", "smithy.api#required" => {}}))
    CreateAIGuardrailRequest.add_member(:blocked_input_messaging, Smithy::Schema::Shapes::ShapeRef.new(shape: AIGuardrailBlockedMessaging, location_name: 'blockedInputMessaging', traits: {"smithy.api#documentation" => "<p>The message to return when the AI Guardrail blocks a prompt.</p>", "smithy.api#required" => {}}))
    CreateAIGuardrailRequest.add_member(:blocked_outputs_messaging, Smithy::Schema::Shapes::ShapeRef.new(shape: AIGuardrailBlockedMessaging, location_name: 'blockedOutputsMessaging', traits: {"smithy.api#documentation" => "<p>The message to return when the AI Guardrail blocks a model response.</p>", "smithy.api#required" => {}}))
    CreateAIGuardrailRequest.add_member(:visibility_status, Smithy::Schema::Shapes::ShapeRef.new(shape: VisibilityStatus, location_name: 'visibilityStatus', traits: {"smithy.api#documentation" => "<p>The visibility status of the AI Guardrail.</p>", "smithy.api#required" => {}}))
    CreateAIGuardrailRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: AIGuardrailDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A description of the AI Guardrail.</p>"}))
    CreateAIGuardrailRequest.add_member(:topic_policy_config, Smithy::Schema::Shapes::ShapeRef.new(shape: AIGuardrailTopicPolicyConfig, location_name: 'topicPolicyConfig', traits: {"smithy.api#documentation" => "<p>The topic policies to configure for the AI Guardrail.</p>"}))
    CreateAIGuardrailRequest.add_member(:content_policy_config, Smithy::Schema::Shapes::ShapeRef.new(shape: AIGuardrailContentPolicyConfig, location_name: 'contentPolicyConfig', traits: {"smithy.api#documentation" => "<p>The content filter policies to configure for the AI Guardrail.</p>"}))
    CreateAIGuardrailRequest.add_member(:word_policy_config, Smithy::Schema::Shapes::ShapeRef.new(shape: AIGuardrailWordPolicyConfig, location_name: 'wordPolicyConfig', traits: {"smithy.api#documentation" => "<p>The word policy you configure for the AI Guardrail.</p>"}))
    CreateAIGuardrailRequest.add_member(:sensitive_information_policy_config, Smithy::Schema::Shapes::ShapeRef.new(shape: AIGuardrailSensitiveInformationPolicyConfig, location_name: 'sensitiveInformationPolicyConfig', traits: {"smithy.api#documentation" => "<p>The sensitive information policy to configure for the AI Guardrail.</p>"}))
    CreateAIGuardrailRequest.add_member(:contextual_grounding_policy_config, Smithy::Schema::Shapes::ShapeRef.new(shape: AIGuardrailContextualGroundingPolicyConfig, location_name: 'contextualGroundingPolicyConfig', traits: {"smithy.api#documentation" => "<p>The contextual grounding policy configuration used to create an AI Guardrail.</p>"}))
    CreateAIGuardrailRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags used to organize, track, or control access for this resource.</p>"}))
    CreateAIGuardrailRequest.type = Types::CreateAIGuardrailRequest
    CreateAIGuardrailResponse.add_member(:ai_guardrail, Smithy::Schema::Shapes::ShapeRef.new(shape: AIGuardrailData, location_name: 'aiGuardrail', traits: {"smithy.api#documentation" => "<p>The data of the AI Guardrail.</p>"}))
    CreateAIGuardrailResponse.type = Types::CreateAIGuardrailResponse
    CreateAIGuardrailVersionRequest.add_member(:assistant_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'assistantId', traits: {"smithy.api#documentation" => "<p>The identifier of the Amazon Q in Connect assistant. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateAIGuardrailVersionRequest.add_member(:ai_guardrail_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArnOrEitherWithQualifier, location_name: 'aiGuardrailId', traits: {"smithy.api#documentation" => "<p>The identifier of the Amazon Q in Connect AI Guardrail.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateAIGuardrailVersionRequest.add_member(:modified_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'modifiedTime', traits: {"smithy.api#documentation" => "<p>The time the AI Guardrail was last modified.</p>"}))
    CreateAIGuardrailVersionRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request. If not provided, the Amazon Web Services SDK populates this field. For more information about idempotency, see <a href=\"http://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/\">Making retries safe with idempotent APIs</a>..</p>", "smithy.api#idempotencyToken" => {}}))
    CreateAIGuardrailVersionRequest.type = Types::CreateAIGuardrailVersionRequest
    CreateAIGuardrailVersionResponse.add_member(:ai_guardrail, Smithy::Schema::Shapes::ShapeRef.new(shape: AIGuardrailData, location_name: 'aiGuardrail', traits: {"smithy.api#documentation" => "<p>The data of the AI Guardrail version.</p>"}))
    CreateAIGuardrailVersionResponse.add_member(:version_number, Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'versionNumber', traits: {"smithy.api#documentation" => "<p>The version number of the AI Guardrail version.</p>"}))
    CreateAIGuardrailVersionResponse.type = Types::CreateAIGuardrailVersionResponse
    CreateAIPromptRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request. If not provided, the Amazon Web Services SDK populates this field. For more information about idempotency, see <a href=\"http://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/\">Making retries safe with idempotent APIs</a>..</p>", "smithy.api#idempotencyToken" => {}}))
    CreateAIPromptRequest.add_member(:assistant_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'assistantId', traits: {"smithy.api#documentation" => "<p>The identifier of the Amazon Q in Connect assistant. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateAIPromptRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the AI Prompt.</p>", "smithy.api#required" => {}}))
    CreateAIPromptRequest.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: AIPromptType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The type of this AI Prompt.</p>", "smithy.api#required" => {}}))
    CreateAIPromptRequest.add_member(:template_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: AIPromptTemplateConfiguration, location_name: 'templateConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration of the prompt template for this AI Prompt.</p>", "smithy.api#required" => {}}))
    CreateAIPromptRequest.add_member(:visibility_status, Smithy::Schema::Shapes::ShapeRef.new(shape: VisibilityStatus, location_name: 'visibilityStatus', traits: {"smithy.api#documentation" => "<p>The visibility status of the AI Prompt.</p>", "smithy.api#required" => {}}))
    CreateAIPromptRequest.add_member(:template_type, Smithy::Schema::Shapes::ShapeRef.new(shape: AIPromptTemplateType, location_name: 'templateType', traits: {"smithy.api#documentation" => "<p>The type of the prompt template for this AI Prompt.</p>", "smithy.api#required" => {}}))
    CreateAIPromptRequest.add_member(:model_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AIPromptModelIdentifier, location_name: 'modelId', traits: {"smithy.api#documentation" => "<p>The identifier of the model used for this AI Prompt.</p>", "smithy.api#required" => {}}))
    CreateAIPromptRequest.add_member(:api_format, Smithy::Schema::Shapes::ShapeRef.new(shape: AIPromptAPIFormat, location_name: 'apiFormat', traits: {"smithy.api#documentation" => "<p>The API Format of the AI Prompt.</p> <p>Recommended values: <code>MESSAGES | TEXT_COMPLETIONS</code> </p> <note> <p>The values <code>ANTHROPIC_CLAUDE_MESSAGES | ANTHROPIC_CLAUDE_TEXT_COMPLETIONS</code> will be deprecated.</p> </note>", "smithy.api#required" => {}}))
    CreateAIPromptRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags used to organize, track, or control access for this resource.</p>"}))
    CreateAIPromptRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the AI Prompt.</p>"}))
    CreateAIPromptRequest.type = Types::CreateAIPromptRequest
    CreateAIPromptResponse.add_member(:ai_prompt, Smithy::Schema::Shapes::ShapeRef.new(shape: AIPromptData, location_name: 'aiPrompt', traits: {"smithy.api#documentation" => "<p>The data of the AI Prompt.</p>"}))
    CreateAIPromptResponse.type = Types::CreateAIPromptResponse
    CreateAIPromptVersionRequest.add_member(:assistant_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'assistantId', traits: {"smithy.api#documentation" => "<p>The identifier of the Amazon Q in Connect assistant. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateAIPromptVersionRequest.add_member(:ai_prompt_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArnOrEitherWithQualifier, location_name: 'aiPromptId', traits: {"smithy.api#documentation" => "<p>The identifier of the Amazon Q in Connect AI prompt.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateAIPromptVersionRequest.add_member(:modified_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'modifiedTime', traits: {"smithy.api#documentation" => "<p>The time the AI Prompt was last modified.</p>"}))
    CreateAIPromptVersionRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request. If not provided, the Amazon Web Services SDK populates this field. For more information about idempotency, see <a href=\"http://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/\">Making retries safe with idempotent APIs</a>..</p>", "smithy.api#idempotencyToken" => {}}))
    CreateAIPromptVersionRequest.type = Types::CreateAIPromptVersionRequest
    CreateAIPromptVersionResponse.add_member(:ai_prompt, Smithy::Schema::Shapes::ShapeRef.new(shape: AIPromptData, location_name: 'aiPrompt', traits: {"smithy.api#documentation" => "<p>The data of the AI Prompt version.</p>"}))
    CreateAIPromptVersionResponse.add_member(:version_number, Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'versionNumber', traits: {"smithy.api#documentation" => "<p>The version number of the AI Prompt version.</p>"}))
    CreateAIPromptVersionResponse.type = Types::CreateAIPromptVersionResponse
    CreateAssistantAssociationInput.add_member(:assistant_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'assistantId', traits: {"smithy.api#documentation" => "<p>The identifier of the Amazon Q in Connect assistant. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateAssistantAssociationInput.add_member(:association_type, Smithy::Schema::Shapes::ShapeRef.new(shape: AssociationType, location_name: 'associationType', traits: {"smithy.api#documentation" => "<p>The type of association.</p>", "smithy.api#required" => {}}))
    CreateAssistantAssociationInput.add_member(:association, Smithy::Schema::Shapes::ShapeRef.new(shape: AssistantAssociationInputData, location_name: 'association', traits: {"smithy.api#documentation" => "<p>The identifier of the associated resource.</p>", "smithy.api#required" => {}}))
    CreateAssistantAssociationInput.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request. If not provided, the Amazon Web Services SDK populates this field. For more information about idempotency, see <a href=\"http://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/\">Making retries safe with idempotent APIs</a>.</p>", "smithy.api#idempotencyToken" => {}}))
    CreateAssistantAssociationInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags used to organize, track, or control access for this resource.</p>"}))
    CreateAssistantAssociationInput.type = Types::CreateAssistantAssociationInput
    CreateAssistantAssociationOutput.add_member(:assistant_association, Smithy::Schema::Shapes::ShapeRef.new(shape: AssistantAssociationData, location_name: 'assistantAssociation', traits: {"smithy.api#documentation" => "<p>The assistant association.</p>"}))
    CreateAssistantAssociationOutput.type = Types::CreateAssistantAssociationOutput
    CreateAssistantInput.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request. If not provided, the Amazon Web Services SDK populates this field. For more information about idempotency, see <a href=\"http://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/\">Making retries safe with idempotent APIs</a>.</p>", "smithy.api#idempotencyToken" => {}}))
    CreateAssistantInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the assistant.</p>", "smithy.api#required" => {}}))
    CreateAssistantInput.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: AssistantType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The type of assistant.</p>", "smithy.api#required" => {}}))
    CreateAssistantInput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the assistant.</p>"}))
    CreateAssistantInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags used to organize, track, or control access for this resource.</p>"}))
    CreateAssistantInput.add_member(:server_side_encryption_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ServerSideEncryptionConfiguration, location_name: 'serverSideEncryptionConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration information for the customer managed key used for encryption. </p> <p>The customer managed key must have a policy that allows <code>kms:CreateGrant</code>, <code> kms:DescribeKey</code>, <code>kms:Decrypt</code>, and <code>kms:GenerateDataKey*</code> permissions to the IAM identity using the key to invoke Amazon Q in Connect. To use Amazon Q in Connect with chat, the key policy must also allow <code>kms:Decrypt</code>, <code>kms:GenerateDataKey*</code>, and <code>kms:DescribeKey</code> permissions to the <code>connect.amazonaws.com</code> service principal. </p> <p>For more information about setting up a customer managed key for Amazon Q in Connect, see <a href=\"https://docs.aws.amazon.com/connect/latest/adminguide/enable-q.html\">Enable Amazon Q in Connect for your instance</a>.</p>"}))
    CreateAssistantInput.type = Types::CreateAssistantInput
    CreateAssistantOutput.add_member(:assistant, Smithy::Schema::Shapes::ShapeRef.new(shape: AssistantData, location_name: 'assistant', traits: {"smithy.api#documentation" => "<p>Information about the assistant.</p>"}))
    CreateAssistantOutput.type = Types::CreateAssistantOutput
    CreateContentAssociationRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request. If not provided, the Amazon Web Services SDK populates this field. For more information about idempotency, see <a href=\"http://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/\">Making retries safe with idempotent APIs</a>.</p>", "smithy.api#idempotencyToken" => {}}))
    CreateContentAssociationRequest.add_member(:knowledge_base_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'knowledgeBaseId', traits: {"smithy.api#documentation" => "<p>The identifier of the knowledge base.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateContentAssociationRequest.add_member(:content_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'contentId', traits: {"smithy.api#documentation" => "<p>The identifier of the content.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateContentAssociationRequest.add_member(:association_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ContentAssociationType, location_name: 'associationType', traits: {"smithy.api#documentation" => "<p>The type of association.</p>", "smithy.api#required" => {}}))
    CreateContentAssociationRequest.add_member(:association, Smithy::Schema::Shapes::ShapeRef.new(shape: ContentAssociationContents, location_name: 'association', traits: {"smithy.api#documentation" => "<p>The identifier of the associated resource.</p>", "smithy.api#required" => {}}))
    CreateContentAssociationRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags used to organize, track, or control access for this resource.</p>"}))
    CreateContentAssociationRequest.type = Types::CreateContentAssociationRequest
    CreateContentAssociationResponse.add_member(:content_association, Smithy::Schema::Shapes::ShapeRef.new(shape: ContentAssociationData, location_name: 'contentAssociation', traits: {"smithy.api#documentation" => "<p>The association between Amazon Q in Connect content and another resource.</p>"}))
    CreateContentAssociationResponse.type = Types::CreateContentAssociationResponse
    CreateContentInput.add_member(:knowledge_base_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'knowledgeBaseId', traits: {"smithy.api#documentation" => "<p>The identifier of the knowledge base. This should not be a QUICK_RESPONSES type knowledge base. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateContentInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the content. Each piece of content in a knowledge base must have a unique name. You can retrieve a piece of content using only its knowledge base and its name with the <a href=\"https://docs.aws.amazon.com/amazon-q-connect/latest/APIReference/API_SearchContent.html\">SearchContent</a> API.</p>", "smithy.api#required" => {}}))
    CreateContentInput.add_member(:title, Smithy::Schema::Shapes::ShapeRef.new(shape: ContentTitle, location_name: 'title', traits: {"smithy.api#documentation" => "<p>The title of the content. If not set, the title is equal to the name.</p>"}))
    CreateContentInput.add_member(:override_link_out_uri, Smithy::Schema::Shapes::ShapeRef.new(shape: Uri, location_name: 'overrideLinkOutUri', traits: {"smithy.api#documentation" => "<p>The URI you want to use for the article. If the knowledge base has a templateUri, setting this argument overrides it for this piece of content.</p>"}))
    CreateContentInput.add_member(:metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: ContentMetadata, location_name: 'metadata', traits: {"smithy.api#documentation" => "<p>A key/value map to store attributes without affecting tagging or recommendations. For example, when synchronizing data between an external system and Amazon Q in Connect, you can store an external version identifier as metadata to utilize for determining drift.</p>"}))
    CreateContentInput.add_member(:upload_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UploadId, location_name: 'uploadId', traits: {"smithy.api#documentation" => "<p>A pointer to the uploaded asset. This value is returned by <a href=\"https://docs.aws.amazon.com/amazon-q-connect/latest/APIReference/API_StartContentUpload.html\">StartContentUpload</a>.</p>", "smithy.api#required" => {}}))
    CreateContentInput.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request. If not provided, the Amazon Web Services SDK populates this field. For more information about idempotency, see <a href=\"http://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/\">Making retries safe with idempotent APIs</a>.</p>", "smithy.api#idempotencyToken" => {}}))
    CreateContentInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags used to organize, track, or control access for this resource.</p>"}))
    CreateContentInput.type = Types::CreateContentInput
    CreateContentOutput.add_member(:content, Smithy::Schema::Shapes::ShapeRef.new(shape: ContentData, location_name: 'content', traits: {"smithy.api#documentation" => "<p>The content.</p>"}))
    CreateContentOutput.type = Types::CreateContentOutput
    CreateKnowledgeBaseInput.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request. If not provided, the Amazon Web Services SDK populates this field. For more information about idempotency, see <a href=\"http://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/\">Making retries safe with idempotent APIs</a>.</p>", "smithy.api#idempotencyToken" => {}}))
    CreateKnowledgeBaseInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the knowledge base.</p>", "smithy.api#required" => {}}))
    CreateKnowledgeBaseInput.add_member(:knowledge_base_type, Smithy::Schema::Shapes::ShapeRef.new(shape: KnowledgeBaseType, location_name: 'knowledgeBaseType', traits: {"smithy.api#documentation" => "<p>The type of knowledge base. Only CUSTOM knowledge bases allow you to upload your own content. EXTERNAL knowledge bases support integrations with third-party systems whose content is synchronized automatically. </p>", "smithy.api#required" => {}}))
    CreateKnowledgeBaseInput.add_member(:source_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceConfiguration, location_name: 'sourceConfiguration', traits: {"smithy.api#documentation" => "<p>The source of the knowledge base content. Only set this argument for EXTERNAL or Managed knowledge bases.</p>"}))
    CreateKnowledgeBaseInput.add_member(:rendering_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: RenderingConfiguration, location_name: 'renderingConfiguration', traits: {"smithy.api#documentation" => "<p>Information about how to render the content.</p>"}))
    CreateKnowledgeBaseInput.add_member(:vector_ingestion_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: VectorIngestionConfiguration, location_name: 'vectorIngestionConfiguration', traits: {"smithy.api#documentation" => "<p>Contains details about how to ingest the documents in a data source.</p>"}))
    CreateKnowledgeBaseInput.add_member(:server_side_encryption_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ServerSideEncryptionConfiguration, location_name: 'serverSideEncryptionConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration information for the customer managed key used for encryption. </p> <p>This KMS key must have a policy that allows <code>kms:CreateGrant</code>, <code>kms:DescribeKey</code>, <code>kms:Decrypt</code>, and <code>kms:GenerateDataKey*</code> permissions to the IAM identity using the key to invoke Amazon Q in Connect.</p> <p>For more information about setting up a customer managed key for Amazon Q in Connect, see <a href=\"https://docs.aws.amazon.com/connect/latest/adminguide/enable-q.html\">Enable Amazon Q in Connect for your instance</a>.</p>"}))
    CreateKnowledgeBaseInput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description.</p>"}))
    CreateKnowledgeBaseInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags used to organize, track, or control access for this resource.</p>"}))
    CreateKnowledgeBaseInput.type = Types::CreateKnowledgeBaseInput
    CreateKnowledgeBaseOutput.add_member(:knowledge_base, Smithy::Schema::Shapes::ShapeRef.new(shape: KnowledgeBaseData, location_name: 'knowledgeBase', traits: {"smithy.api#documentation" => "<p>The knowledge base.</p>"}))
    CreateKnowledgeBaseOutput.type = Types::CreateKnowledgeBaseOutput
    CreateMessageTemplateAttachmentRequest.add_member(:knowledge_base_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'knowledgeBaseId', traits: {"smithy.api#documentation" => "<p>The identifier of the knowledge base. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateMessageTemplateAttachmentRequest.add_member(:message_template_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArnOrEitherWithQualifier, location_name: 'messageTemplateId', traits: {"smithy.api#documentation" => "<p>The identifier of the message template. Can be either the ID or the ARN. It cannot contain any qualifier.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateMessageTemplateAttachmentRequest.add_member(:content_disposition, Smithy::Schema::Shapes::ShapeRef.new(shape: ContentDisposition, location_name: 'contentDisposition', traits: {"smithy.api#documentation" => "<p>The presentation information for the attachment file.</p>", "smithy.api#required" => {}}))
    CreateMessageTemplateAttachmentRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: AttachmentFileName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the attachment file being uploaded. The name should include the file extension.</p>", "smithy.api#required" => {}}))
    CreateMessageTemplateAttachmentRequest.add_member(:body, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyUnlimitedString, location_name: 'body', traits: {"smithy.api#documentation" => "<p>The body of the attachment file being uploaded. It should be encoded using base64 encoding.</p>", "smithy.api#required" => {}}))
    CreateMessageTemplateAttachmentRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request. If not provided, the Amazon Web Services SDK populates this field. For more information about idempotency, see <a href=\"http://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/\">Making retries safe with idempotent APIs</a>.</p>"}))
    CreateMessageTemplateAttachmentRequest.type = Types::CreateMessageTemplateAttachmentRequest
    CreateMessageTemplateAttachmentResponse.add_member(:attachment, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateAttachment, location_name: 'attachment', traits: {"smithy.api#documentation" => "<p>The message template attachment.</p>"}))
    CreateMessageTemplateAttachmentResponse.type = Types::CreateMessageTemplateAttachmentResponse
    CreateMessageTemplateRequest.add_member(:knowledge_base_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'knowledgeBaseId', traits: {"smithy.api#documentation" => "<p>The identifier of the knowledge base. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateMessageTemplateRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the message template.</p>", "smithy.api#required" => {}}))
    CreateMessageTemplateRequest.add_member(:content, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateContentProvider, location_name: 'content', traits: {"smithy.api#documentation" => "<p>The content of the message template.</p>", "smithy.api#required" => {}}))
    CreateMessageTemplateRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the message template.</p>"}))
    CreateMessageTemplateRequest.add_member(:channel_subtype, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelSubtype, location_name: 'channelSubtype', traits: {"smithy.api#documentation" => "<p>The channel subtype this message template applies to.</p>", "smithy.api#required" => {}}))
    CreateMessageTemplateRequest.add_member(:language, Smithy::Schema::Shapes::ShapeRef.new(shape: LanguageCode, location_name: 'language', traits: {"smithy.api#documentation" => "<p>The language code value for the language in which the quick response is written. The supported language codes include <code>de_DE</code>, <code>en_US</code>, <code>es_ES</code>, <code>fr_FR</code>, <code>id_ID</code>, <code>it_IT</code>, <code>ja_JP</code>, <code>ko_KR</code>, <code>pt_BR</code>, <code>zh_CN</code>, <code>zh_TW</code> </p>"}))
    CreateMessageTemplateRequest.add_member(:default_attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateAttributes, location_name: 'defaultAttributes', traits: {"smithy.api#documentation" => "<p>An object that specifies the default values to use for variables in the message template. This object contains different categories of key-value pairs. Each key defines a variable or placeholder in the message template. The corresponding value defines the default value for that variable.</p>"}))
    CreateMessageTemplateRequest.add_member(:grouping_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupingConfiguration, location_name: 'groupingConfiguration'))
    CreateMessageTemplateRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request. If not provided, the Amazon Web Services SDK populates this field. For more information about idempotency, see <a href=\"http://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/\">Making retries safe with idempotent APIs</a>.</p>", "smithy.api#idempotencyToken" => {}}))
    CreateMessageTemplateRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags used to organize, track, or control access for this resource.</p>"}))
    CreateMessageTemplateRequest.type = Types::CreateMessageTemplateRequest
    CreateMessageTemplateResponse.add_member(:message_template, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateData, location_name: 'messageTemplate', traits: {"smithy.api#documentation" => "<p>The message template.</p>"}))
    CreateMessageTemplateResponse.type = Types::CreateMessageTemplateResponse
    CreateMessageTemplateVersionRequest.add_member(:knowledge_base_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'knowledgeBaseId', traits: {"smithy.api#documentation" => "<p>The identifier of the knowledge base. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateMessageTemplateVersionRequest.add_member(:message_template_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArnOrEitherWithQualifier, location_name: 'messageTemplateId', traits: {"smithy.api#documentation" => "<p>The identifier of the message template. Can be either the ID or the ARN. It cannot contain any qualifier.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateMessageTemplateVersionRequest.add_member(:message_template_content_sha256, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateContentSha256, location_name: 'messageTemplateContentSha256', traits: {"smithy.api#documentation" => "<p>The checksum value of the message template content that is referenced by the <code>$LATEST</code> qualifier. It can be returned in <code>MessageTemplateData</code> or <code>ExtendedMessageTemplateData</code>. It’s calculated by content, language, <code>defaultAttributes</code> and <code>Attachments</code> of the message template. If not supplied, the message template version will be created based on the message template content that is referenced by the <code>$LATEST</code> qualifier by default.</p>"}))
    CreateMessageTemplateVersionRequest.type = Types::CreateMessageTemplateVersionRequest
    CreateMessageTemplateVersionResponse.add_member(:message_template, Smithy::Schema::Shapes::ShapeRef.new(shape: ExtendedMessageTemplateData, location_name: 'messageTemplate', traits: {"smithy.api#documentation" => "<p>The message template.</p>"}))
    CreateMessageTemplateVersionResponse.type = Types::CreateMessageTemplateVersionResponse
    CreateQuickResponseRequest.add_member(:knowledge_base_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'knowledgeBaseId', traits: {"smithy.api#documentation" => "<p>The identifier of the knowledge base. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateQuickResponseRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: QuickResponseName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the quick response.</p>", "smithy.api#required" => {}}))
    CreateQuickResponseRequest.add_member(:content, Smithy::Schema::Shapes::ShapeRef.new(shape: QuickResponseDataProvider, location_name: 'content', traits: {"smithy.api#documentation" => "<p>The content of the quick response.</p>", "smithy.api#required" => {}}))
    CreateQuickResponseRequest.add_member(:content_type, Smithy::Schema::Shapes::ShapeRef.new(shape: QuickResponseType, location_name: 'contentType', traits: {"smithy.api#documentation" => "<p>The media type of the quick response content.</p> <ul> <li> <p>Use <code>application/x.quickresponse;format=plain</code> for a quick response written in plain text.</p> </li> <li> <p>Use <code>application/x.quickresponse;format=markdown</code> for a quick response written in richtext.</p> </li> </ul>"}))
    CreateQuickResponseRequest.add_member(:grouping_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupingConfiguration, location_name: 'groupingConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration information of the user groups that the quick response is accessible to.</p>"}))
    CreateQuickResponseRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: QuickResponseDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the quick response.</p>"}))
    CreateQuickResponseRequest.add_member(:shortcut_key, Smithy::Schema::Shapes::ShapeRef.new(shape: ShortCutKey, location_name: 'shortcutKey', traits: {"smithy.api#documentation" => "<p>The shortcut key of the quick response. The value should be unique across the knowledge base. </p>"}))
    CreateQuickResponseRequest.add_member(:is_active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'isActive', traits: {"smithy.api#documentation" => "<p>Whether the quick response is active.</p>"}))
    CreateQuickResponseRequest.add_member(:channels, Smithy::Schema::Shapes::ShapeRef.new(shape: Channels, location_name: 'channels', traits: {"smithy.api#documentation" => "<p>The Amazon Connect channels this quick response applies to.</p>"}))
    CreateQuickResponseRequest.add_member(:language, Smithy::Schema::Shapes::ShapeRef.new(shape: LanguageCode, location_name: 'language', traits: {"smithy.api#documentation" => "<p>The language code value for the language in which the quick response is written. The supported language codes include <code>de_DE</code>, <code>en_US</code>, <code>es_ES</code>, <code>fr_FR</code>, <code>id_ID</code>, <code>it_IT</code>, <code>ja_JP</code>, <code>ko_KR</code>, <code>pt_BR</code>, <code>zh_CN</code>, <code>zh_TW</code> </p>"}))
    CreateQuickResponseRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request. If not provided, the Amazon Web Services SDK populates this field. For more information about idempotency, see <a href=\"http://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/\">Making retries safe with idempotent APIs</a>.</p>", "smithy.api#idempotencyToken" => {}}))
    CreateQuickResponseRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags used to organize, track, or control access for this resource.</p>"}))
    CreateQuickResponseRequest.type = Types::CreateQuickResponseRequest
    CreateQuickResponseResponse.add_member(:quick_response, Smithy::Schema::Shapes::ShapeRef.new(shape: QuickResponseData, location_name: 'quickResponse', traits: {"smithy.api#documentation" => "<p>The quick response.</p>"}))
    CreateQuickResponseResponse.type = Types::CreateQuickResponseResponse
    CreateSessionInput.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request. If not provided, the Amazon Web Services SDK populates this field. For more information about idempotency, see <a href=\"http://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/\">Making retries safe with idempotent APIs</a>.</p>", "smithy.api#idempotencyToken" => {}}))
    CreateSessionInput.add_member(:assistant_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'assistantId', traits: {"smithy.api#documentation" => "<p>The identifier of the Amazon Q in Connect assistant. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateSessionInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the session.</p>", "smithy.api#required" => {}}))
    CreateSessionInput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description.</p>"}))
    CreateSessionInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags used to organize, track, or control access for this resource.</p>"}))
    CreateSessionInput.add_member(:tag_filter, Smithy::Schema::Shapes::ShapeRef.new(shape: TagFilter, location_name: 'tagFilter', traits: {"smithy.api#documentation" => "<p>An object that can be used to specify Tag conditions. </p>"}))
    CreateSessionInput.add_member(:ai_agent_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: AIAgentConfigurationMap, location_name: 'aiAgentConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration of the AI Agents (mapped by AI Agent Type to AI Agent version) that should be used by Amazon Q in Connect for this Session.</p>"}))
    CreateSessionInput.type = Types::CreateSessionInput
    CreateSessionOutput.add_member(:session, Smithy::Schema::Shapes::ShapeRef.new(shape: SessionData, location_name: 'session', traits: {"smithy.api#documentation" => "<p>The session.</p>"}))
    CreateSessionOutput.type = Types::CreateSessionOutput
    CustomAttributes.key = Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateAttributeKey)
    CustomAttributes.value = Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateAttributeValue)
    CustomerProfileAttributes.add_member(:profile_id, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateAttributeValue, location_name: 'profileId', traits: {"smithy.api#documentation" => "<p>The unique identifier of a customer profile.</p>"}))
    CustomerProfileAttributes.add_member(:profile_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateAttributeValue, location_name: 'profileARN', traits: {"smithy.api#documentation" => "<p>The ARN of a customer profile.</p>"}))
    CustomerProfileAttributes.add_member(:first_name, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateAttributeValue, location_name: 'firstName', traits: {"smithy.api#documentation" => "<p>The customer's first name.</p>"}))
    CustomerProfileAttributes.add_member(:middle_name, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateAttributeValue, location_name: 'middleName', traits: {"smithy.api#documentation" => "<p>The customer's middle name.</p>"}))
    CustomerProfileAttributes.add_member(:last_name, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateAttributeValue, location_name: 'lastName', traits: {"smithy.api#documentation" => "<p>The customer's last name.</p>"}))
    CustomerProfileAttributes.add_member(:account_number, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateAttributeValue, location_name: 'accountNumber', traits: {"smithy.api#documentation" => "<p>A unique account number that you have given to the customer.</p>"}))
    CustomerProfileAttributes.add_member(:email_address, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateAttributeValue, location_name: 'emailAddress', traits: {"smithy.api#documentation" => "<p>The customer's email address, which has not been specified as a personal or business address.</p>"}))
    CustomerProfileAttributes.add_member(:phone_number, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateAttributeValue, location_name: 'phoneNumber', traits: {"smithy.api#documentation" => "<p>The customer's phone number, which has not been specified as a mobile, home, or business number.</p>"}))
    CustomerProfileAttributes.add_member(:additional_information, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateAttributeValue, location_name: 'additionalInformation', traits: {"smithy.api#documentation" => "<p>Any additional information relevant to the customer's profile.</p>"}))
    CustomerProfileAttributes.add_member(:party_type, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateAttributeValue, location_name: 'partyType', traits: {"smithy.api#documentation" => "<p>The customer's party type.</p>"}))
    CustomerProfileAttributes.add_member(:business_name, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateAttributeValue, location_name: 'businessName', traits: {"smithy.api#documentation" => "<p>The name of the customer's business.</p>"}))
    CustomerProfileAttributes.add_member(:birth_date, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateAttributeValue, location_name: 'birthDate', traits: {"smithy.api#documentation" => "<p>The customer's birth date.</p>"}))
    CustomerProfileAttributes.add_member(:gender, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateAttributeValue, location_name: 'gender', traits: {"smithy.api#documentation" => "<p>The customer's gender.</p>"}))
    CustomerProfileAttributes.add_member(:mobile_phone_number, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateAttributeValue, location_name: 'mobilePhoneNumber', traits: {"smithy.api#documentation" => "<p>The customer's mobile phone number.</p>"}))
    CustomerProfileAttributes.add_member(:home_phone_number, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateAttributeValue, location_name: 'homePhoneNumber', traits: {"smithy.api#documentation" => "<p>The customer's mobile phone number.</p>"}))
    CustomerProfileAttributes.add_member(:business_phone_number, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateAttributeValue, location_name: 'businessPhoneNumber', traits: {"smithy.api#documentation" => "<p>The customer's business phone number.</p>"}))
    CustomerProfileAttributes.add_member(:business_email_address, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateAttributeValue, location_name: 'businessEmailAddress', traits: {"smithy.api#documentation" => "<p>The customer's business email address.</p>"}))
    CustomerProfileAttributes.add_member(:address1, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateAttributeValue, location_name: 'address1', traits: {"smithy.api#documentation" => "<p>The first line of a customer address.</p>"}))
    CustomerProfileAttributes.add_member(:address2, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateAttributeValue, location_name: 'address2', traits: {"smithy.api#documentation" => "<p>The second line of a customer address.</p>"}))
    CustomerProfileAttributes.add_member(:address3, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateAttributeValue, location_name: 'address3', traits: {"smithy.api#documentation" => "<p>The third line of a customer address.</p>"}))
    CustomerProfileAttributes.add_member(:address4, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateAttributeValue, location_name: 'address4', traits: {"smithy.api#documentation" => "<p>The fourth line of a customer address.</p>"}))
    CustomerProfileAttributes.add_member(:city, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateAttributeValue, location_name: 'city', traits: {"smithy.api#documentation" => "<p>The city in which a customer lives.</p>"}))
    CustomerProfileAttributes.add_member(:county, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateAttributeValue, location_name: 'county', traits: {"smithy.api#documentation" => "<p>The county in which a customer lives.</p>"}))
    CustomerProfileAttributes.add_member(:country, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateAttributeValue, location_name: 'country', traits: {"smithy.api#documentation" => "<p>The country in which a customer lives.</p>"}))
    CustomerProfileAttributes.add_member(:postal_code, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateAttributeValue, location_name: 'postalCode', traits: {"smithy.api#documentation" => "<p>The postal code of a customer address.</p>"}))
    CustomerProfileAttributes.add_member(:province, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateAttributeValue, location_name: 'province', traits: {"smithy.api#documentation" => "<p>The province in which a customer lives.</p>"}))
    CustomerProfileAttributes.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateAttributeValue, location_name: 'state', traits: {"smithy.api#documentation" => "<p>The state in which a customer lives.</p>"}))
    CustomerProfileAttributes.add_member(:shipping_address1, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateAttributeValue, location_name: 'shippingAddress1', traits: {"smithy.api#documentation" => "<p>The first line of a customer’s shipping address.</p>"}))
    CustomerProfileAttributes.add_member(:shipping_address2, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateAttributeValue, location_name: 'shippingAddress2', traits: {"smithy.api#documentation" => "<p>The second line of a customer’s shipping address.</p>"}))
    CustomerProfileAttributes.add_member(:shipping_address3, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateAttributeValue, location_name: 'shippingAddress3', traits: {"smithy.api#documentation" => "<p>The third line of a customer’s shipping address.</p>"}))
    CustomerProfileAttributes.add_member(:shipping_address4, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateAttributeValue, location_name: 'shippingAddress4', traits: {"smithy.api#documentation" => "<p>The fourth line of a customer’s shipping address.</p>"}))
    CustomerProfileAttributes.add_member(:shipping_city, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateAttributeValue, location_name: 'shippingCity', traits: {"smithy.api#documentation" => "<p>The city of a customer’s shipping address.</p>"}))
    CustomerProfileAttributes.add_member(:shipping_county, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateAttributeValue, location_name: 'shippingCounty', traits: {"smithy.api#documentation" => "<p>The county of a customer’s shipping address.</p>"}))
    CustomerProfileAttributes.add_member(:shipping_country, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateAttributeValue, location_name: 'shippingCountry', traits: {"smithy.api#documentation" => "<p>The country of a customer’s shipping address.</p>"}))
    CustomerProfileAttributes.add_member(:shipping_postal_code, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateAttributeValue, location_name: 'shippingPostalCode', traits: {"smithy.api#documentation" => "<p>The postal code of a customer’s shipping address.</p>"}))
    CustomerProfileAttributes.add_member(:shipping_province, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateAttributeValue, location_name: 'shippingProvince', traits: {"smithy.api#documentation" => "<p>The province of a customer’s shipping address.</p>"}))
    CustomerProfileAttributes.add_member(:shipping_state, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateAttributeValue, location_name: 'shippingState', traits: {"smithy.api#documentation" => "<p>The state of a customer’s shipping address.</p>"}))
    CustomerProfileAttributes.add_member(:mailing_address1, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateAttributeValue, location_name: 'mailingAddress1', traits: {"smithy.api#documentation" => "<p>The first line of a customer’s mailing address.</p>"}))
    CustomerProfileAttributes.add_member(:mailing_address2, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateAttributeValue, location_name: 'mailingAddress2', traits: {"smithy.api#documentation" => "<p>The second line of a customer’s mailing address.</p>"}))
    CustomerProfileAttributes.add_member(:mailing_address3, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateAttributeValue, location_name: 'mailingAddress3', traits: {"smithy.api#documentation" => "<p>The third line of a customer’s mailing address.</p>"}))
    CustomerProfileAttributes.add_member(:mailing_address4, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateAttributeValue, location_name: 'mailingAddress4', traits: {"smithy.api#documentation" => "<p>The fourth line of a customer’s mailing address.</p>"}))
    CustomerProfileAttributes.add_member(:mailing_city, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateAttributeValue, location_name: 'mailingCity', traits: {"smithy.api#documentation" => "<p>The city of a customer’s mailing address.</p>"}))
    CustomerProfileAttributes.add_member(:mailing_county, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateAttributeValue, location_name: 'mailingCounty', traits: {"smithy.api#documentation" => "<p>The county of a customer’s mailing address.</p>"}))
    CustomerProfileAttributes.add_member(:mailing_country, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateAttributeValue, location_name: 'mailingCountry', traits: {"smithy.api#documentation" => "<p>The country of a customer’s mailing address.</p>"}))
    CustomerProfileAttributes.add_member(:mailing_postal_code, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateAttributeValue, location_name: 'mailingPostalCode', traits: {"smithy.api#documentation" => "<p>The postal code of a customer’s mailing address.</p>"}))
    CustomerProfileAttributes.add_member(:mailing_province, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateAttributeValue, location_name: 'mailingProvince', traits: {"smithy.api#documentation" => "<p>The province of a customer’s mailing address.</p>"}))
    CustomerProfileAttributes.add_member(:mailing_state, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateAttributeValue, location_name: 'mailingState', traits: {"smithy.api#documentation" => "<p>The state of a customer’s mailing address.</p>"}))
    CustomerProfileAttributes.add_member(:billing_address1, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateAttributeValue, location_name: 'billingAddress1', traits: {"smithy.api#documentation" => "<p>The first line of a customer’s billing address.</p>"}))
    CustomerProfileAttributes.add_member(:billing_address2, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateAttributeValue, location_name: 'billingAddress2', traits: {"smithy.api#documentation" => "<p>The second line of a customer’s billing address.</p>"}))
    CustomerProfileAttributes.add_member(:billing_address3, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateAttributeValue, location_name: 'billingAddress3', traits: {"smithy.api#documentation" => "<p>The third line of a customer’s billing address.</p>"}))
    CustomerProfileAttributes.add_member(:billing_address4, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateAttributeValue, location_name: 'billingAddress4', traits: {"smithy.api#documentation" => "<p>The fourth line of a customer’s billing address.</p>"}))
    CustomerProfileAttributes.add_member(:billing_city, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateAttributeValue, location_name: 'billingCity', traits: {"smithy.api#documentation" => "<p>The city of a customer’s billing address.</p>"}))
    CustomerProfileAttributes.add_member(:billing_county, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateAttributeValue, location_name: 'billingCounty', traits: {"smithy.api#documentation" => "<p>The county of a customer’s billing address.</p>"}))
    CustomerProfileAttributes.add_member(:billing_country, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateAttributeValue, location_name: 'billingCountry', traits: {"smithy.api#documentation" => "<p>The country of a customer’s billing address.</p>"}))
    CustomerProfileAttributes.add_member(:billing_postal_code, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateAttributeValue, location_name: 'billingPostalCode', traits: {"smithy.api#documentation" => "<p>The postal code of a customer’s billing address.</p>"}))
    CustomerProfileAttributes.add_member(:billing_province, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateAttributeValue, location_name: 'billingProvince', traits: {"smithy.api#documentation" => "<p>The province of a customer’s billing address.</p>"}))
    CustomerProfileAttributes.add_member(:billing_state, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateAttributeValue, location_name: 'billingState', traits: {"smithy.api#documentation" => "<p>The state of a customer’s billing address.</p>"}))
    CustomerProfileAttributes.add_member(:custom, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomAttributes, location_name: 'custom', traits: {"smithy.api#documentation" => "<p>The custom attributes in customer profile attributes.</p>"}))
    CustomerProfileAttributes.type = Types::CustomerProfileAttributes
    DataDetails.add_member(:content_data, Types::DataDetails::ContentData, Smithy::Schema::Shapes::ShapeRef.new(shape: ContentDataDetails, location_name: 'contentData', traits: {"smithy.api#documentation" => "<p>Details about the content data.</p>"}))
    DataDetails.add_member(:generative_data, Types::DataDetails::GenerativeData, Smithy::Schema::Shapes::ShapeRef.new(shape: GenerativeDataDetails, location_name: 'generativeData', traits: {"smithy.api#documentation" => "<p> Details about the generative data.</p>"}))
    DataDetails.add_member(:intent_detected_data, Types::DataDetails::IntentDetectedData, Smithy::Schema::Shapes::ShapeRef.new(shape: IntentDetectedDataDetails, location_name: 'intentDetectedData', traits: {"smithy.api#documentation" => "<p>Details about the intent data.</p>"}))
    DataDetails.add_member(:source_content_data, Types::DataDetails::SourceContentData, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceContentDataDetails, location_name: 'sourceContentData', traits: {"smithy.api#documentation" => "<p>Details about the content data.</p>"}))
    DataDetails.add_member(:generative_chunk_data, Types::DataDetails::GenerativeChunkData, Smithy::Schema::Shapes::ShapeRef.new(shape: GenerativeChunkDataDetails, location_name: 'generativeChunkData', traits: {"smithy.api#documentation" => "<p>Details about the generative chunk data.</p>"}))
    DataDetails.add_member(:unknown, Types::DataDetails::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    DataDetails.type = Types::DataDetails
    DataReference.add_member(:content_reference, Types::DataReference::ContentReference, Smithy::Schema::Shapes::ShapeRef.new(shape: ContentReference, location_name: 'contentReference'))
    DataReference.add_member(:generative_reference, Types::DataReference::GenerativeReference, Smithy::Schema::Shapes::ShapeRef.new(shape: GenerativeReference, location_name: 'generativeReference', traits: {"smithy.api#documentation" => "<p>Reference information about the generative content.</p>"}))
    DataReference.add_member(:unknown, Types::DataReference::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    DataReference.type = Types::DataReference
    DataSummary.add_member(:reference, Smithy::Schema::Shapes::ShapeRef.new(shape: DataReference, location_name: 'reference', traits: {"smithy.api#documentation" => "<p>Reference information about the content.</p>", "smithy.api#required" => {}}))
    DataSummary.add_member(:details, Smithy::Schema::Shapes::ShapeRef.new(shape: DataDetails, location_name: 'details', traits: {"smithy.api#documentation" => "<p>Details about the data.</p>", "smithy.api#required" => {}}))
    DataSummary.type = Types::DataSummary
    DataSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DataSummary)
    DeactivateMessageTemplateRequest.add_member(:knowledge_base_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'knowledgeBaseId', traits: {"smithy.api#documentation" => "<p>The identifier of the knowledge base. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeactivateMessageTemplateRequest.add_member(:message_template_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArnOrEitherWithQualifier, location_name: 'messageTemplateId', traits: {"smithy.api#documentation" => "<p>The identifier of the message template. Can be either the ID or the ARN. It cannot contain any qualifier.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeactivateMessageTemplateRequest.add_member(:version_number, Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'versionNumber', traits: {"smithy.api#documentation" => "<p>The version number of the message template version to deactivate.</p>", "smithy.api#required" => {}}))
    DeactivateMessageTemplateRequest.type = Types::DeactivateMessageTemplateRequest
    DeactivateMessageTemplateResponse.add_member(:message_template_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ArnWithQualifier, location_name: 'messageTemplateArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the message template.</p>", "smithy.api#required" => {}}))
    DeactivateMessageTemplateResponse.add_member(:message_template_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'messageTemplateId', traits: {"smithy.api#documentation" => "<p>The identifier of the message template.</p>", "smithy.api#required" => {}}))
    DeactivateMessageTemplateResponse.add_member(:version_number, Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'versionNumber', traits: {"smithy.api#documentation" => "<p>The version number of the message template version that has been deactivated.</p>", "smithy.api#required" => {}}))
    DeactivateMessageTemplateResponse.type = Types::DeactivateMessageTemplateResponse
    DeleteAIAgentRequest.add_member(:assistant_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'assistantId', traits: {"smithy.api#documentation" => "<p>The identifier of the Amazon Q in Connect assistant. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAIAgentRequest.add_member(:ai_agent_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArnOrEitherWithQualifier, location_name: 'aiAgentId', traits: {"smithy.api#documentation" => "<p>The identifier of the Amazon Q in Connect AI Agent. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAIAgentRequest.type = Types::DeleteAIAgentRequest
    DeleteAIAgentResponse.type = Types::DeleteAIAgentResponse
    DeleteAIAgentVersionRequest.add_member(:assistant_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'assistantId', traits: {"smithy.api#documentation" => "<p>The identifier of the Amazon Q in Connect assistant. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAIAgentVersionRequest.add_member(:ai_agent_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArnOrEitherWithQualifier, location_name: 'aiAgentId', traits: {"smithy.api#documentation" => "<p>The identifier of the Amazon Q in Connect AI Agent. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAIAgentVersionRequest.add_member(:version_number, Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'versionNumber', traits: {"smithy.api#documentation" => "<p>The version number of the AI Agent version.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAIAgentVersionRequest.type = Types::DeleteAIAgentVersionRequest
    DeleteAIAgentVersionResponse.type = Types::DeleteAIAgentVersionResponse
    DeleteAIGuardrailRequest.add_member(:assistant_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'assistantId', traits: {"smithy.api#documentation" => "<p>The identifier of the Amazon Q in Connect assistant. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAIGuardrailRequest.add_member(:ai_guardrail_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArnOrEitherWithQualifier, location_name: 'aiGuardrailId', traits: {"smithy.api#documentation" => "<p>The identifier of the Amazon Q in Connect AI Guardrail. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAIGuardrailRequest.type = Types::DeleteAIGuardrailRequest
    DeleteAIGuardrailResponse.type = Types::DeleteAIGuardrailResponse
    DeleteAIGuardrailVersionRequest.add_member(:assistant_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'assistantId', traits: {"smithy.api#documentation" => "<p>The identifier of the Amazon Q in Connect assistant. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAIGuardrailVersionRequest.add_member(:ai_guardrail_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArnOrEitherWithQualifier, location_name: 'aiGuardrailId', traits: {"smithy.api#documentation" => "<p>The identifier of the Amazon Q in Connect AI Guardrail.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAIGuardrailVersionRequest.add_member(:version_number, Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'versionNumber', traits: {"smithy.api#documentation" => "<p>The version number of the AI Guardrail version to be deleted.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAIGuardrailVersionRequest.type = Types::DeleteAIGuardrailVersionRequest
    DeleteAIGuardrailVersionResponse.type = Types::DeleteAIGuardrailVersionResponse
    DeleteAIPromptRequest.add_member(:assistant_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'assistantId', traits: {"smithy.api#documentation" => "<p>The identifier of the Amazon Q in Connect assistant. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAIPromptRequest.add_member(:ai_prompt_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArnOrEitherWithQualifier, location_name: 'aiPromptId', traits: {"smithy.api#documentation" => "<p>The identifier of the Amazon Q in Connect AI prompt. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAIPromptRequest.type = Types::DeleteAIPromptRequest
    DeleteAIPromptResponse.type = Types::DeleteAIPromptResponse
    DeleteAIPromptVersionRequest.add_member(:assistant_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'assistantId', traits: {"smithy.api#documentation" => "<p>The identifier of the Amazon Q in Connect assistant. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAIPromptVersionRequest.add_member(:ai_prompt_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArnOrEitherWithQualifier, location_name: 'aiPromptId', traits: {"smithy.api#documentation" => "<p>The identifier of the Amazon Q in Connect AI prompt.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAIPromptVersionRequest.add_member(:version_number, Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'versionNumber', traits: {"smithy.api#documentation" => "<p>The version number of the AI Prompt version to be deleted.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAIPromptVersionRequest.type = Types::DeleteAIPromptVersionRequest
    DeleteAIPromptVersionResponse.type = Types::DeleteAIPromptVersionResponse
    DeleteAssistantAssociationInput.add_member(:assistant_association_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'assistantAssociationId', traits: {"smithy.api#documentation" => "<p>The identifier of the assistant association. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAssistantAssociationInput.add_member(:assistant_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'assistantId', traits: {"smithy.api#documentation" => "<p>The identifier of the Amazon Q in Connect assistant. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAssistantAssociationInput.type = Types::DeleteAssistantAssociationInput
    DeleteAssistantAssociationOutput.type = Types::DeleteAssistantAssociationOutput
    DeleteAssistantInput.add_member(:assistant_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'assistantId', traits: {"smithy.api#documentation" => "<p>The identifier of the Amazon Q in Connect assistant. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAssistantInput.type = Types::DeleteAssistantInput
    DeleteAssistantOutput.type = Types::DeleteAssistantOutput
    DeleteContentAssociationRequest.add_member(:knowledge_base_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'knowledgeBaseId', traits: {"smithy.api#documentation" => "<p>The identifier of the knowledge base.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteContentAssociationRequest.add_member(:content_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'contentId', traits: {"smithy.api#documentation" => "<p>The identifier of the content.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteContentAssociationRequest.add_member(:content_association_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'contentAssociationId', traits: {"smithy.api#documentation" => "<p>The identifier of the content association. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteContentAssociationRequest.type = Types::DeleteContentAssociationRequest
    DeleteContentAssociationResponse.type = Types::DeleteContentAssociationResponse
    DeleteContentInput.add_member(:knowledge_base_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'knowledgeBaseId', traits: {"smithy.api#documentation" => "<p>The identifier of the knowledge base. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteContentInput.add_member(:content_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'contentId', traits: {"smithy.api#documentation" => "<p>The identifier of the content. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteContentInput.type = Types::DeleteContentInput
    DeleteContentOutput.type = Types::DeleteContentOutput
    DeleteImportJobRequest.add_member(:knowledge_base_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'knowledgeBaseId', traits: {"smithy.api#documentation" => "<p>The identifier of the knowledge base.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteImportJobRequest.add_member(:import_job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'importJobId', traits: {"smithy.api#documentation" => "<p>The identifier of the import job to be deleted.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteImportJobRequest.type = Types::DeleteImportJobRequest
    DeleteImportJobResponse.type = Types::DeleteImportJobResponse
    DeleteKnowledgeBaseInput.add_member(:knowledge_base_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'knowledgeBaseId', traits: {"smithy.api#documentation" => "<p>The knowledge base to delete content from. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteKnowledgeBaseInput.type = Types::DeleteKnowledgeBaseInput
    DeleteKnowledgeBaseOutput.type = Types::DeleteKnowledgeBaseOutput
    DeleteMessageTemplateAttachmentRequest.add_member(:knowledge_base_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'knowledgeBaseId', traits: {"smithy.api#documentation" => "<p>The identifier of the knowledge base. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteMessageTemplateAttachmentRequest.add_member(:message_template_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArnOrEitherWithQualifier, location_name: 'messageTemplateId', traits: {"smithy.api#documentation" => "<p>The identifier of the message template. Can be either the ID or the ARN. It cannot contain any qualifier.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteMessageTemplateAttachmentRequest.add_member(:attachment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'attachmentId', traits: {"smithy.api#documentation" => "<p>The identifier of the attachment file.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteMessageTemplateAttachmentRequest.type = Types::DeleteMessageTemplateAttachmentRequest
    DeleteMessageTemplateAttachmentResponse.type = Types::DeleteMessageTemplateAttachmentResponse
    DeleteMessageTemplateRequest.add_member(:knowledge_base_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'knowledgeBaseId', traits: {"smithy.api#documentation" => "<p>The identifier of the knowledge base. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteMessageTemplateRequest.add_member(:message_template_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArnOrEitherWithQualifier, location_name: 'messageTemplateId', traits: {"smithy.api#documentation" => "<p>The identifier of the message template. Can be either the ID or the ARN.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteMessageTemplateRequest.type = Types::DeleteMessageTemplateRequest
    DeleteMessageTemplateResponse.type = Types::DeleteMessageTemplateResponse
    DeleteQuickResponseRequest.add_member(:knowledge_base_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'knowledgeBaseId', traits: {"smithy.api#documentation" => "<p>The knowledge base from which the quick response is deleted. The identifier of the knowledge base.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteQuickResponseRequest.add_member(:quick_response_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'quickResponseId', traits: {"smithy.api#documentation" => "<p>The identifier of the quick response to delete.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteQuickResponseRequest.type = Types::DeleteQuickResponseRequest
    DeleteQuickResponseResponse.type = Types::DeleteQuickResponseResponse
    Document.add_member(:content_reference, Smithy::Schema::Shapes::ShapeRef.new(shape: ContentReference, location_name: 'contentReference', traits: {"smithy.api#documentation" => "<p>A reference to the content resource.</p>", "smithy.api#required" => {}}))
    Document.add_member(:title, Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentText, location_name: 'title', traits: {"smithy.api#documentation" => "<p>The title of the document.</p>"}))
    Document.add_member(:excerpt, Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentText, location_name: 'excerpt', traits: {"smithy.api#documentation" => "<p>The excerpt from the document.</p>"}))
    Document.type = Types::Document
    DocumentText.add_member(:text, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveString, location_name: 'text', traits: {"smithy.api#documentation" => "<p>Text in the document.</p>"}))
    DocumentText.add_member(:highlights, Smithy::Schema::Shapes::ShapeRef.new(shape: Highlights, location_name: 'highlights', traits: {"smithy.api#documentation" => "<p>Highlights in the document text.</p>"}))
    DocumentText.type = Types::DocumentText
    EmailHeader.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: EmailHeaderKey, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the email header.</p>"}))
    EmailHeader.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: EmailHeaderValue, location_name: 'value', traits: {"smithy.api#documentation" => "<p>The value of the email header.</p>"}))
    EmailHeader.type = Types::EmailHeader
    EmailHeaders.member = Smithy::Schema::Shapes::ShapeRef.new(shape: EmailHeader)
    EmailMessageTemplateContent.add_member(:subject, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyUnlimitedString, location_name: 'subject', traits: {"smithy.api#documentation" => "<p>The subject line, or title, to use in email messages.</p>"}))
    EmailMessageTemplateContent.add_member(:body, Smithy::Schema::Shapes::ShapeRef.new(shape: EmailMessageTemplateContentBody, location_name: 'body', traits: {"smithy.api#documentation" => "<p>The body to use in email messages.</p>"}))
    EmailMessageTemplateContent.add_member(:headers, Smithy::Schema::Shapes::ShapeRef.new(shape: EmailHeaders, location_name: 'headers', traits: {"smithy.api#documentation" => "<p>The email headers to include in email messages.</p>"}))
    EmailMessageTemplateContent.type = Types::EmailMessageTemplateContent
    EmailMessageTemplateContentBody.add_member(:plain_text, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateBodyContentProvider, location_name: 'plainText', traits: {"smithy.api#documentation" => "<p>The message body, in plain text format, to use in email messages that are based on the message template. We recommend using plain text format for email clients that don't render HTML content and clients that are connected to high-latency networks, such as mobile devices.</p>"}))
    EmailMessageTemplateContentBody.add_member(:html, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateBodyContentProvider, location_name: 'html', traits: {"smithy.api#documentation" => "<p>The message body, in HTML format, to use in email messages that are based on the message template. We recommend using HTML format for email clients that render HTML content. You can include links, formatted text, and more in an HTML message.</p>"}))
    EmailMessageTemplateContentBody.type = Types::EmailMessageTemplateContentBody
    ExtendedMessageTemplateData.add_member(:message_template_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ArnWithQualifier, location_name: 'messageTemplateArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the message template.</p>", "smithy.api#required" => {}}))
    ExtendedMessageTemplateData.add_member(:message_template_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'messageTemplateId', traits: {"smithy.api#documentation" => "<p>The identifier of the message template.</p>", "smithy.api#required" => {}}))
    ExtendedMessageTemplateData.add_member(:knowledge_base_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'knowledgeBaseArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the knowledge base.</p>", "smithy.api#required" => {}}))
    ExtendedMessageTemplateData.add_member(:knowledge_base_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'knowledgeBaseId', traits: {"smithy.api#documentation" => "<p>The identifier of the knowledge base.</p>", "smithy.api#required" => {}}))
    ExtendedMessageTemplateData.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the message template.</p>", "smithy.api#required" => {}}))
    ExtendedMessageTemplateData.add_member(:channel_subtype, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelSubtype, location_name: 'channelSubtype', traits: {"smithy.api#documentation" => "<p>The channel subtype this message template applies to.</p>", "smithy.api#required" => {}}))
    ExtendedMessageTemplateData.add_member(:created_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdTime', traits: {"smithy.api#documentation" => "<p>The timestamp when the message template was created.</p>", "smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    ExtendedMessageTemplateData.add_member(:last_modified_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'lastModifiedTime', traits: {"smithy.api#documentation" => "<p>The timestamp when the message template data was last modified.</p>", "smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    ExtendedMessageTemplateData.add_member(:last_modified_by, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericArn, location_name: 'lastModifiedBy', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the user who last updated the message template data.</p>", "smithy.api#required" => {}}))
    ExtendedMessageTemplateData.add_member(:content, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateContentProvider, location_name: 'content', traits: {"smithy.api#documentation" => "<p>The content of the message template.</p>", "smithy.api#required" => {}}))
    ExtendedMessageTemplateData.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the message template.</p>"}))
    ExtendedMessageTemplateData.add_member(:language, Smithy::Schema::Shapes::ShapeRef.new(shape: LanguageCode, location_name: 'language', traits: {"smithy.api#documentation" => "<p>The language code value for the language in which the quick response is written. The supported language codes include <code>de_DE</code>, <code>en_US</code>, <code>es_ES</code>, <code>fr_FR</code>, <code>id_ID</code>, <code>it_IT</code>, <code>ja_JP</code>, <code>ko_KR</code>, <code>pt_BR</code>, <code>zh_CN</code>, <code>zh_TW</code> </p>"}))
    ExtendedMessageTemplateData.add_member(:grouping_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupingConfiguration, location_name: 'groupingConfiguration'))
    ExtendedMessageTemplateData.add_member(:default_attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateAttributes, location_name: 'defaultAttributes', traits: {"smithy.api#documentation" => "<p>An object that specifies the default values to use for variables in the message template. This object contains different categories of key-value pairs. Each key defines a variable or placeholder in the message template. The corresponding value defines the default value for that variable.</p>"}))
    ExtendedMessageTemplateData.add_member(:attribute_types, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateAttributeTypeList, location_name: 'attributeTypes', traits: {"smithy.api#documentation" => "<p>The types of attributes contain the message template.</p>"}))
    ExtendedMessageTemplateData.add_member(:attachments, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateAttachmentList, location_name: 'attachments', traits: {"smithy.api#documentation" => "<p>The message template attachments.</p>"}))
    ExtendedMessageTemplateData.add_member(:is_active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'isActive', traits: {"smithy.api#documentation" => "<p>Whether the version of the message template is activated.</p>"}))
    ExtendedMessageTemplateData.add_member(:version_number, Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'versionNumber', traits: {"smithy.api#documentation" => "<p>The version number of the message template version.</p>"}))
    ExtendedMessageTemplateData.add_member(:message_template_content_sha256, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateContentSha256, location_name: 'messageTemplateContentSha256', traits: {"smithy.api#documentation" => "<p>The checksum value of the message template content that is referenced by the <code>$LATEST</code> qualifier. It can be returned in <code>MessageTemplateData</code> or <code>ExtendedMessageTemplateData</code>. It’s calculated by content, language, <code>defaultAttributes</code> and <code>Attachments</code> of the message template.</p>", "smithy.api#required" => {}}))
    ExtendedMessageTemplateData.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags used to organize, track, or control access for this resource.</p>"}))
    ExtendedMessageTemplateData.type = Types::ExtendedMessageTemplateData
    ExternalSourceConfiguration.add_member(:source, Smithy::Schema::Shapes::ShapeRef.new(shape: ExternalSource, location_name: 'source', traits: {"smithy.api#documentation" => "<p>The type of the external data source.</p>", "smithy.api#required" => {}}))
    ExternalSourceConfiguration.add_member(:configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: Configuration, location_name: 'configuration', traits: {"smithy.api#documentation" => "<p>The configuration information of the external data source.</p>", "smithy.api#required" => {}}))
    ExternalSourceConfiguration.type = Types::ExternalSourceConfiguration
    FailureReason.member = Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString)
    Filter.add_member(:field, Smithy::Schema::Shapes::ShapeRef.new(shape: FilterField, location_name: 'field', traits: {"smithy.api#documentation" => "<p>The field on which to filter.</p>", "smithy.api#required" => {}}))
    Filter.add_member(:operator, Smithy::Schema::Shapes::ShapeRef.new(shape: FilterOperator, location_name: 'operator', traits: {"smithy.api#documentation" => "<p>The operator to use for comparing the field’s value with the provided value.</p>", "smithy.api#required" => {}}))
    Filter.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'value', traits: {"smithy.api#documentation" => "<p>The desired field value on which to filter.</p>", "smithy.api#required" => {}}))
    Filter.type = Types::Filter
    FilterList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Filter)
    FixedSizeChunkingConfiguration.add_member(:max_tokens, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxTokens', traits: {"smithy.api#documentation" => "<p>The maximum number of tokens to include in a chunk.</p>", "smithy.api#range" => {"min" => 1}, "smithy.api#required" => {}}))
    FixedSizeChunkingConfiguration.add_member(:overlap_percentage, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'overlapPercentage', traits: {"smithy.api#documentation" => "<p>The percentage of overlap between adjacent chunks of a data source.</p>", "smithy.api#range" => {"min" => 1, "max" => 99}, "smithy.api#required" => {}}))
    FixedSizeChunkingConfiguration.type = Types::FixedSizeChunkingConfiguration
    GenerativeChunkDataDetails.add_member(:completion, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveString, location_name: 'completion', traits: {"smithy.api#documentation" => "<p>A chunk of the LLM response.</p>"}))
    GenerativeChunkDataDetails.add_member(:references, Smithy::Schema::Shapes::ShapeRef.new(shape: DataSummaryList, location_name: 'references', traits: {"smithy.api#documentation" => "<p>The references used to generate the LLM response.</p>"}))
    GenerativeChunkDataDetails.add_member(:next_chunk_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextChunkToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of chunks. Use the value returned in the previous response in the next request to retrieve the next set of chunks.</p>"}))
    GenerativeChunkDataDetails.type = Types::GenerativeChunkDataDetails
    GenerativeContentFeedbackData.add_member(:relevance, Smithy::Schema::Shapes::ShapeRef.new(shape: Relevance, location_name: 'relevance', traits: {"smithy.api#documentation" => "<p>The relevance of the feedback.</p>", "smithy.api#required" => {}}))
    GenerativeContentFeedbackData.type = Types::GenerativeContentFeedbackData
    GenerativeDataDetails.add_member(:completion, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveString, location_name: 'completion', traits: {"smithy.api#documentation" => "<p>The LLM response.</p>", "smithy.api#required" => {}}))
    GenerativeDataDetails.add_member(:references, Smithy::Schema::Shapes::ShapeRef.new(shape: DataSummaryList, location_name: 'references', traits: {"smithy.api#documentation" => "<p>The references used to generative the LLM response.</p>", "smithy.api#required" => {}}))
    GenerativeDataDetails.add_member(:ranking_data, Smithy::Schema::Shapes::ShapeRef.new(shape: RankingData, location_name: 'rankingData', traits: {"smithy.api#documentation" => "<p>Details about the generative content ranking data.</p>", "smithy.api#required" => {}}))
    GenerativeDataDetails.type = Types::GenerativeDataDetails
    GenerativeReference.add_member(:model_id, Smithy::Schema::Shapes::ShapeRef.new(shape: LlmModelId, location_name: 'modelId', traits: {"smithy.api#documentation" => "<p>The identifier of the LLM model. </p>"}))
    GenerativeReference.add_member(:generation_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'generationId', traits: {"smithy.api#documentation" => "<p> The identifier of the LLM model. </p>"}))
    GenerativeReference.type = Types::GenerativeReference
    GetAIAgentRequest.add_member(:assistant_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'assistantId', traits: {"smithy.api#documentation" => "<p>The identifier of the Amazon Q in Connect assistant. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAIAgentRequest.add_member(:ai_agent_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArnOrEitherWithQualifier, location_name: 'aiAgentId', traits: {"smithy.api#documentation" => "<p>The identifier of the Amazon Q in Connect AI Agent (with or without a version qualifier). Can be either the ID or the ARN. URLs cannot contain the ARN.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAIAgentRequest.type = Types::GetAIAgentRequest
    GetAIAgentResponse.add_member(:ai_agent, Smithy::Schema::Shapes::ShapeRef.new(shape: AIAgentData, location_name: 'aiAgent', traits: {"smithy.api#documentation" => "<p>The data of the AI Agent.</p>"}))
    GetAIAgentResponse.add_member(:version_number, Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'versionNumber', traits: {"smithy.api#documentation" => "<p>The version number of the AI Agent version (returned if an AI Agent version was specified via use of a qualifier for the <code>aiAgentId</code> on the request). </p>"}))
    GetAIAgentResponse.type = Types::GetAIAgentResponse
    GetAIGuardrailRequest.add_member(:assistant_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'assistantId', traits: {"smithy.api#documentation" => "<p>The identifier of the Amazon Q in Connect assistant. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAIGuardrailRequest.add_member(:ai_guardrail_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArnOrEitherWithQualifier, location_name: 'aiGuardrailId', traits: {"smithy.api#documentation" => "<p>The identifier of the Amazon Q in Connect AI Guardrail.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAIGuardrailRequest.type = Types::GetAIGuardrailRequest
    GetAIGuardrailResponse.add_member(:ai_guardrail, Smithy::Schema::Shapes::ShapeRef.new(shape: AIGuardrailData, location_name: 'aiGuardrail', traits: {"smithy.api#documentation" => "<p>The data of the AI Guardrail.</p>"}))
    GetAIGuardrailResponse.add_member(:version_number, Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'versionNumber', traits: {"smithy.api#documentation" => "<p>The version number of the AI Guardrail version (returned if an AI Guardrail version was specified via use of a qualifier for the <code>aiGuardrailId</code> on the request). </p>"}))
    GetAIGuardrailResponse.type = Types::GetAIGuardrailResponse
    GetAIPromptRequest.add_member(:assistant_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'assistantId', traits: {"smithy.api#documentation" => "<p>The identifier of the Amazon Q in Connect assistant. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAIPromptRequest.add_member(:ai_prompt_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArnOrEitherWithQualifier, location_name: 'aiPromptId', traits: {"smithy.api#documentation" => "<p>The identifier of the Amazon Q in Connect AI prompt.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAIPromptRequest.type = Types::GetAIPromptRequest
    GetAIPromptResponse.add_member(:ai_prompt, Smithy::Schema::Shapes::ShapeRef.new(shape: AIPromptData, location_name: 'aiPrompt', traits: {"smithy.api#documentation" => "<p>The data of the AI Prompt.</p>"}))
    GetAIPromptResponse.add_member(:version_number, Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'versionNumber', traits: {"smithy.api#documentation" => "<p>The version number of the AI Prompt version (returned if an AI Prompt version was specified via use of a qualifier for the <code>aiPromptId</code> on the request). </p>"}))
    GetAIPromptResponse.type = Types::GetAIPromptResponse
    GetAssistantAssociationInput.add_member(:assistant_association_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'assistantAssociationId', traits: {"smithy.api#documentation" => "<p>The identifier of the assistant association. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAssistantAssociationInput.add_member(:assistant_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'assistantId', traits: {"smithy.api#documentation" => "<p>The identifier of the Amazon Q in Connect assistant. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAssistantAssociationInput.type = Types::GetAssistantAssociationInput
    GetAssistantAssociationOutput.add_member(:assistant_association, Smithy::Schema::Shapes::ShapeRef.new(shape: AssistantAssociationData, location_name: 'assistantAssociation', traits: {"smithy.api#documentation" => "<p>The assistant association.</p>"}))
    GetAssistantAssociationOutput.type = Types::GetAssistantAssociationOutput
    GetAssistantInput.add_member(:assistant_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'assistantId', traits: {"smithy.api#documentation" => "<p>The identifier of the Amazon Q in Connect assistant. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAssistantInput.type = Types::GetAssistantInput
    GetAssistantOutput.add_member(:assistant, Smithy::Schema::Shapes::ShapeRef.new(shape: AssistantData, location_name: 'assistant', traits: {"smithy.api#documentation" => "<p>Information about the assistant.</p>"}))
    GetAssistantOutput.type = Types::GetAssistantOutput
    GetContentAssociationRequest.add_member(:knowledge_base_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'knowledgeBaseId', traits: {"smithy.api#documentation" => "<p>The identifier of the knowledge base.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetContentAssociationRequest.add_member(:content_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'contentId', traits: {"smithy.api#documentation" => "<p>The identifier of the content.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetContentAssociationRequest.add_member(:content_association_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'contentAssociationId', traits: {"smithy.api#documentation" => "<p>The identifier of the content association. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetContentAssociationRequest.type = Types::GetContentAssociationRequest
    GetContentAssociationResponse.add_member(:content_association, Smithy::Schema::Shapes::ShapeRef.new(shape: ContentAssociationData, location_name: 'contentAssociation', traits: {"smithy.api#documentation" => "<p>The association between Amazon Q in Connect content and another resource.</p>"}))
    GetContentAssociationResponse.type = Types::GetContentAssociationResponse
    GetContentInput.add_member(:content_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'contentId', traits: {"smithy.api#documentation" => "<p>The identifier of the content. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetContentInput.add_member(:knowledge_base_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'knowledgeBaseId', traits: {"smithy.api#documentation" => "<p>The identifier of the knowledge base. This should not be a QUICK_RESPONSES type knowledge base. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetContentInput.type = Types::GetContentInput
    GetContentOutput.add_member(:content, Smithy::Schema::Shapes::ShapeRef.new(shape: ContentData, location_name: 'content', traits: {"smithy.api#documentation" => "<p>The content.</p>"}))
    GetContentOutput.type = Types::GetContentOutput
    GetContentSummaryInput.add_member(:content_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'contentId', traits: {"smithy.api#documentation" => "<p>The identifier of the content. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetContentSummaryInput.add_member(:knowledge_base_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'knowledgeBaseId', traits: {"smithy.api#documentation" => "<p>The identifier of the knowledge base. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetContentSummaryInput.type = Types::GetContentSummaryInput
    GetContentSummaryOutput.add_member(:content_summary, Smithy::Schema::Shapes::ShapeRef.new(shape: ContentSummary, location_name: 'contentSummary', traits: {"smithy.api#documentation" => "<p>The content summary.</p>"}))
    GetContentSummaryOutput.type = Types::GetContentSummaryOutput
    GetImportJobRequest.add_member(:import_job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'importJobId', traits: {"smithy.api#documentation" => "<p>The identifier of the import job to retrieve.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetImportJobRequest.add_member(:knowledge_base_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'knowledgeBaseId', traits: {"smithy.api#documentation" => "<p>The identifier of the knowledge base that the import job belongs to.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetImportJobRequest.type = Types::GetImportJobRequest
    GetImportJobResponse.add_member(:import_job, Smithy::Schema::Shapes::ShapeRef.new(shape: ImportJobData, location_name: 'importJob', traits: {"smithy.api#documentation" => "<p>The import job.</p>"}))
    GetImportJobResponse.type = Types::GetImportJobResponse
    GetKnowledgeBaseInput.add_member(:knowledge_base_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'knowledgeBaseId', traits: {"smithy.api#documentation" => "<p>The identifier of the knowledge base. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetKnowledgeBaseInput.type = Types::GetKnowledgeBaseInput
    GetKnowledgeBaseOutput.add_member(:knowledge_base, Smithy::Schema::Shapes::ShapeRef.new(shape: KnowledgeBaseData, location_name: 'knowledgeBase', traits: {"smithy.api#documentation" => "<p>The knowledge base.</p>"}))
    GetKnowledgeBaseOutput.type = Types::GetKnowledgeBaseOutput
    GetMessageTemplateRequest.add_member(:message_template_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArnOrEitherWithQualifier, location_name: 'messageTemplateId', traits: {"smithy.api#documentation" => "<p>The identifier of the message template. Can be either the ID or the ARN.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetMessageTemplateRequest.add_member(:knowledge_base_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'knowledgeBaseId', traits: {"smithy.api#documentation" => "<p>The identifier of the knowledge base. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetMessageTemplateRequest.type = Types::GetMessageTemplateRequest
    GetMessageTemplateResponse.add_member(:message_template, Smithy::Schema::Shapes::ShapeRef.new(shape: ExtendedMessageTemplateData, location_name: 'messageTemplate', traits: {"smithy.api#documentation" => "<p>The message template.</p>"}))
    GetMessageTemplateResponse.type = Types::GetMessageTemplateResponse
    GetNextMessageRequest.add_member(:assistant_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'assistantId', traits: {"smithy.api#documentation" => "<p>The identifier of the Amazon Q in Connect assistant.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetNextMessageRequest.add_member(:session_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'sessionId', traits: {"smithy.api#documentation" => "<p>The identifier of the Amazon Q in Connect session.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetNextMessageRequest.add_member(:next_message_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextMessageToken', traits: {"smithy.api#documentation" => "<p>The token for the next message. Use the value returned in the SendMessage or previous response in the next request to retrieve the next message.</p>", "smithy.api#httpQuery" => "nextMessageToken", "smithy.api#required" => {}}))
    GetNextMessageRequest.type = Types::GetNextMessageRequest
    GetNextMessageResponse.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The type of message response.</p>", "smithy.api#required" => {}}))
    GetNextMessageResponse.add_member(:response, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageOutput, location_name: 'response', traits: {"smithy.api#documentation" => "<p>The message response to the requested message.</p>", "smithy.api#required" => {}}))
    GetNextMessageResponse.add_member(:request_message_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'requestMessageId', traits: {"smithy.api#documentation" => "<p>The identifier of the submitted message.</p>", "smithy.api#required" => {}}))
    GetNextMessageResponse.add_member(:conversation_state, Smithy::Schema::Shapes::ShapeRef.new(shape: ConversationState, location_name: 'conversationState', traits: {"smithy.api#documentation" => "<p>The state of current conversation.</p>", "smithy.api#required" => {}}))
    GetNextMessageResponse.add_member(:next_message_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextMessageToken', traits: {"smithy.api#documentation" => "<p>The token for the next message.</p>"}))
    GetNextMessageResponse.add_member(:conversation_session_data, Smithy::Schema::Shapes::ShapeRef.new(shape: RuntimeSessionDataList, location_name: 'conversationSessionData', traits: {"smithy.api#documentation" => "<p>The conversation data stored on an Amazon Q in Connect Session.</p>"}))
    GetNextMessageResponse.type = Types::GetNextMessageResponse
    GetQuickResponseRequest.add_member(:quick_response_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'quickResponseId', traits: {"smithy.api#documentation" => "<p>The identifier of the quick response.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetQuickResponseRequest.add_member(:knowledge_base_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'knowledgeBaseId', traits: {"smithy.api#documentation" => "<p>The identifier of the knowledge base. This should be a QUICK_RESPONSES type knowledge base.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetQuickResponseRequest.type = Types::GetQuickResponseRequest
    GetQuickResponseResponse.add_member(:quick_response, Smithy::Schema::Shapes::ShapeRef.new(shape: QuickResponseData, location_name: 'quickResponse', traits: {"smithy.api#documentation" => "<p>The quick response.</p>"}))
    GetQuickResponseResponse.type = Types::GetQuickResponseResponse
    GetRecommendationsInput.add_member(:assistant_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'assistantId', traits: {"smithy.api#documentation" => "<p>The identifier of the Amazon Q in Connect assistant. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetRecommendationsInput.add_member(:session_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'sessionId', traits: {"smithy.api#documentation" => "<p>The identifier of the session. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetRecommendationsInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return per page.</p>", "smithy.api#httpQuery" => "maxResults"}))
    GetRecommendationsInput.add_member(:wait_time_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: WaitTimeSeconds, location_name: 'waitTimeSeconds', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The duration (in seconds) for which the call waits for a recommendation to be made available before returning. If a recommendation is available, the call returns sooner than <code>WaitTimeSeconds</code>. If no messages are available and the wait time expires, the call returns successfully with an empty list.</p>", "smithy.api#httpQuery" => "waitTimeSeconds"}))
    GetRecommendationsInput.add_member(:next_chunk_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextChunkToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of chunks. Use the value returned in the previous response in the next request to retrieve the next set of chunks.</p>", "smithy.api#httpQuery" => "nextChunkToken"}))
    GetRecommendationsInput.type = Types::GetRecommendationsInput
    GetRecommendationsOutput.add_member(:recommendations, Smithy::Schema::Shapes::ShapeRef.new(shape: RecommendationList, location_name: 'recommendations', traits: {"smithy.api#documentation" => "<p>The recommendations.</p>", "smithy.api#required" => {}}))
    GetRecommendationsOutput.add_member(:triggers, Smithy::Schema::Shapes::ShapeRef.new(shape: RecommendationTriggerList, location_name: 'triggers', traits: {"smithy.api#documentation" => "<p>The triggers corresponding to recommendations.</p>"}))
    GetRecommendationsOutput.type = Types::GetRecommendationsOutput
    GetSessionInput.add_member(:assistant_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'assistantId', traits: {"smithy.api#documentation" => "<p>The identifier of the Amazon Q in Connect assistant. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSessionInput.add_member(:session_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'sessionId', traits: {"smithy.api#documentation" => "<p>The identifier of the session. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSessionInput.type = Types::GetSessionInput
    GetSessionOutput.add_member(:session, Smithy::Schema::Shapes::ShapeRef.new(shape: SessionData, location_name: 'session', traits: {"smithy.api#documentation" => "<p>The session.</p>"}))
    GetSessionOutput.type = Types::GetSessionOutput
    GroupingConfiguration.add_member(:criteria, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupingCriteria, location_name: 'criteria', traits: {"smithy.api#documentation" => "<p>The criteria used for grouping Amazon Q in Connect users.</p> <p>The following is the list of supported criteria values.</p> <ul> <li> <p> <code>RoutingProfileArn</code>: Grouping the users by their <a href=\"https://docs.aws.amazon.com/connect/latest/APIReference/API_RoutingProfile.html\">Amazon Connect routing profile ARN</a>. User should have <a href=\"https://docs.aws.amazon.com/connect/latest/APIReference/API_SearchRoutingProfiles.html\">SearchRoutingProfile</a> and <a href=\"https://docs.aws.amazon.com/connect/latest/APIReference/API_DescribeRoutingProfile.html\">DescribeRoutingProfile</a> permissions when setting criteria to this value.</p> </li> </ul>"}))
    GroupingConfiguration.add_member(:values, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupingValues, location_name: 'values', traits: {"smithy.api#documentation" => "<p>The list of values that define different groups of Amazon Q in Connect users.</p> <ul> <li> <p>When setting <code>criteria</code> to <code>RoutingProfileArn</code>, you need to provide a list of ARNs of <a href=\"https://docs.aws.amazon.com/connect/latest/APIReference/API_RoutingProfile.html\">Amazon Connect routing profiles</a> as values of this parameter.</p> </li> </ul>"}))
    GroupingConfiguration.type = Types::GroupingConfiguration
    GroupingValues.member = Smithy::Schema::Shapes::ShapeRef.new(shape: GroupingValue)
    GuardrailContentFilterConfig.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailContentFilterType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The harmful category that the content filter is applied to.</p>", "smithy.api#required" => {}}))
    GuardrailContentFilterConfig.add_member(:input_strength, Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailFilterStrength, location_name: 'inputStrength', traits: {"smithy.api#documentation" => "<p>The strength of the content filter to apply to prompts. As you increase the filter strength, the likelihood of filtering harmful content increases and the probability of seeing harmful content in your application reduces.</p>", "smithy.api#required" => {}}))
    GuardrailContentFilterConfig.add_member(:output_strength, Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailFilterStrength, location_name: 'outputStrength', traits: {"smithy.api#documentation" => "<p>The strength of the content filter to apply to model responses. As you increase the filter strength, the likelihood of filtering harmful content increases and the probability of seeing harmful content in your application reduces.</p>", "smithy.api#required" => {}}))
    GuardrailContentFilterConfig.type = Types::GuardrailContentFilterConfig
    GuardrailContentFiltersConfig.member = Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailContentFilterConfig)
    GuardrailContextualGroundingFilterConfig.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailContextualGroundingFilterType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The filter type for the AI Guardrail's contextual grounding filter.</p>", "smithy.api#required" => {}}))
    GuardrailContextualGroundingFilterConfig.add_member(:threshold, Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailContextualGroundingFilterThreshold, location_name: 'threshold', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The threshold details for the AI Guardrail's contextual grounding filter.</p>", "smithy.api#required" => {}}))
    GuardrailContextualGroundingFilterConfig.type = Types::GuardrailContextualGroundingFilterConfig
    GuardrailContextualGroundingFiltersConfig.member = Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailContextualGroundingFilterConfig)
    GuardrailManagedWordListsConfig.member = Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailManagedWordsConfig)
    GuardrailManagedWordsConfig.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailManagedWordsType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The managed word type to configure for the AI Guardrail.</p>", "smithy.api#required" => {}}))
    GuardrailManagedWordsConfig.type = Types::GuardrailManagedWordsConfig
    GuardrailPiiEntitiesConfig.member = Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailPiiEntityConfig)
    GuardrailPiiEntityConfig.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailPiiEntityType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>Configure AI Guardrail type when the PII entity is detected.</p> <p>The following PIIs are used to block or mask sensitive information:</p> <ul> <li> <p> <b>General</b> </p> <ul> <li> <p> <b>ADDRESS</b> </p> <p>A physical address, such as \"100 Main Street, Anytown, USA\" or \"Suite #12, Building 123\". An address can include information such as the street, building, location, city, state, country, county, zip code, precinct, and neighborhood. </p> </li> <li> <p> <b>AGE</b> </p> <p>An individual's age, including the quantity and unit of time. For example, in the phrase \"I am 40 years old,\" Guarrails recognizes \"40 years\" as an age. </p> </li> <li> <p> <b>NAME</b> </p> <p>An individual's name. This entity type does not include titles, such as Dr., Mr., Mrs., or Miss. AI Guardrail doesn't apply this entity type to names that are part of organizations or addresses. For example, AI Guardrail recognizes the \"John Doe Organization\" as an organization, and it recognizes \"Jane Doe Street\" as an address. </p> </li> <li> <p> <b>EMAIL</b> </p> <p>An email address, such as <i>marymajor@email.com</i>.</p> </li> <li> <p> <b>PHONE</b> </p> <p>A phone number. This entity type also includes fax and pager numbers. </p> </li> <li> <p> <b>USERNAME</b> </p> <p>A user name that identifies an account, such as a login name, screen name, nick name, or handle. </p> </li> <li> <p> <b>PASSWORD</b> </p> <p>An alphanumeric string that is used as a password, such as \"*<i> very20special#pass*</i>\". </p> </li> <li> <p> <b>DRIVER_ID</b> </p> <p>The number assigned to a driver's license, which is an official document permitting an individual to operate one or more motorized vehicles on a public road. A driver's license number consists of alphanumeric characters. </p> </li> <li> <p> <b>LICENSE_PLATE</b> </p> <p>A license plate for a vehicle is issued by the state or country where the vehicle is registered. The format for passenger vehicles is typically five to eight digits, consisting of upper-case letters and numbers. The format varies depending on the location of the issuing state or country. </p> </li> <li> <p> <b>VEHICLE_IDENTIFICATION_NUMBER</b> </p> <p>A Vehicle Identification Number (VIN) uniquely identifies a vehicle. VIN content and format are defined in the <i>ISO 3779</i> specification. Each country has specific codes and formats for VINs. </p> </li> </ul> </li> <li> <p> <b>Finance</b> </p> <ul> <li> <p> <b>CREDIT_DEBIT_CARD_CVV</b> </p> <p>A three-digit card verification code (CVV) that is present on VISA, MasterCard, and Discover credit and debit cards. For American Express credit or debit cards, the CVV is a four-digit numeric code. </p> </li> <li> <p> <b>CREDIT_DEBIT_CARD_EXPIRY</b> </p> <p>The expiration date for a credit or debit card. This number is usually four digits long and is often formatted as <i>month/year</i> or <i>MM/YY</i>. AI Guardrail recognizes expiration dates such as <i>01/21</i>, <i>01/2021</i>, and <i>Jan 2021</i>. </p> </li> <li> <p> <b>CREDIT_DEBIT_CARD_NUMBER</b> </p> <p>The number for a credit or debit card. These numbers can vary from 13 to 16 digits in length. However, Amazon Comprehend also recognizes credit or debit card numbers when only the last four digits are present. </p> </li> <li> <p> <b>PIN</b> </p> <p>A four-digit personal identification number (PIN) with which you can access your bank account. </p> </li> <li> <p> <b>INTERNATIONAL_BANK_ACCOUNT_NUMBER</b> </p> <p>An International Bank Account Number has specific formats in each country. For more information, see <a href=\"https://www.iban.com/structure\"> www.iban.com/structure</a>.</p> </li> <li> <p> <b>SWIFT_CODE</b> </p> <p>A SWIFT code is a standard format of Bank Identifier Code (BIC) used to specify a particular bank or branch. Banks use these codes for money transfers such as international wire transfers.</p> <p>SWIFT codes consist of eight or 11 characters. The 11-digit codes refer to specific branches, while eight-digit codes (or 11-digit codes ending in 'XXX') refer to the head or primary office.</p> </li> </ul> </li> <li> <p> <b>IT</b> </p> <ul> <li> <p> <b>IP_ADDRESS</b> </p> <p>An IPv4 address, such as <i>198.51.100.0</i>. </p> </li> <li> <p> <b>MAC_ADDRESS</b> </p> <p>A <i>media access control</i> (MAC) address is a unique identifier assigned to a network interface controller (NIC). </p> </li> <li> <p> <b>URL</b> </p> <p>A web address, such as <i>www.example.com</i>. </p> </li> <li> <p> <b>AWS_ACCESS_KEY</b> </p> <p>A unique identifier that's associated with a secret access key; you use the access key ID and secret access key to sign programmatic Amazon Web Services requests cryptographically. </p> </li> <li> <p> <b>AWS_SECRET_KEY</b> </p> <p>A unique identifier that's associated with an access key. You use the access key ID and secret access key to sign programmatic Amazon Web Services requests cryptographically. </p> </li> </ul> </li> <li> <p> <b>USA specific</b> </p> <ul> <li> <p> <b>US_BANK_ACCOUNT_NUMBER</b> </p> <p>A US bank account number, which is typically 10 to 12 digits long. </p> </li> <li> <p> <b>US_BANK_ROUTING_NUMBER</b> </p> <p>A US bank account routing number. These are typically nine digits long, </p> </li> <li> <p> <b>US_INDIVIDUAL_TAX_IDENTIFICATION_NUMBER</b> </p> <p>A US Individual Taxpayer Identification Number (ITIN) is a nine-digit number that starts with a \"9\" and contain a \"7\" or \"8\" as the fourth digit. An ITIN can be formatted with a space or a dash after the third and forth digits. </p> </li> <li> <p> <b>US_PASSPORT_NUMBER</b> </p> <p>A US passport number. Passport numbers range from six to nine alphanumeric characters. </p> </li> <li> <p> <b>US_SOCIAL_SECURITY_NUMBER</b> </p> <p>A US Social Security Number (SSN) is a nine-digit number that is issued to US citizens, permanent residents, and temporary working residents. </p> </li> </ul> </li> <li> <p> <b>Canada specific</b> </p> <ul> <li> <p> <b>CA_HEALTH_NUMBER</b> </p> <p>A Canadian Health Service Number is a 10-digit unique identifier, required for individuals to access healthcare benefits. </p> </li> <li> <p> <b>CA_SOCIAL_INSURANCE_NUMBER</b> </p> <p>A Canadian Social Insurance Number (SIN) is a nine-digit unique identifier, required for individuals to access government programs and benefits.</p> <p>The SIN is formatted as three groups of three digits, such as <i> 123-456-789</i>. A SIN can be validated through a simple check-digit process called the <a href=\"https://www.wikipedia.org/wiki/Luhn_algorithm\">Luhn algorithm</a> .</p> </li> </ul> </li> <li> <p> <b>UK Specific</b> </p> <ul> <li> <p> <b>UK_NATIONAL_HEALTH_SERVICE_NUMBER</b> </p> <p>A UK National Health Service Number is a 10-17 digit number, such as <i>485 555 3456</i>. The current system formats the 10-digit number with spaces after the third and sixth digits. The final digit is an error-detecting checksum.</p> </li> <li> <p> <b>UK_NATIONAL_INSURANCE_NUMBER</b> </p> <p>A UK National Insurance Number (NINO) provides individuals with access to National Insurance (social security) benefits. It is also used for some purposes in the UK tax system.</p> <p>The number is nine digits long and starts with two letters, followed by six numbers and one letter. A NINO can be formatted with a space or a dash after the two letters and after the second, forth, and sixth digits.</p> </li> <li> <p> <b>UK_UNIQUE_TAXPAYER_REFERENCE_NUMBER</b> </p> <p>A UK Unique Taxpayer Reference (UTR) is a 10-digit number that identifies a taxpayer or a business. </p> </li> </ul> </li> <li> <p> <b>Custom</b> </p> <ul> <li> <p> <b>Regex filter</b> - You can use a regular expressions to define patterns for an AI Guardrail to recognize and act upon such as serial number, booking ID etc..</p> </li> </ul> </li> </ul>", "smithy.api#required" => {}}))
    GuardrailPiiEntityConfig.add_member(:action, Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailSensitiveInformationAction, location_name: 'action', traits: {"smithy.api#documentation" => "<p>Configure AI Guardrail's action when the PII entity is detected.</p>", "smithy.api#required" => {}}))
    GuardrailPiiEntityConfig.type = Types::GuardrailPiiEntityConfig
    GuardrailRegexConfig.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailRegexName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the regular expression to configure for the AI Guardrail.</p>", "smithy.api#required" => {}}))
    GuardrailRegexConfig.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailRegexDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the regular expression to configure for the AI Guardrail.</p>"}))
    GuardrailRegexConfig.add_member(:pattern, Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailRegexPattern, location_name: 'pattern', traits: {"smithy.api#documentation" => "<p>The regular expression pattern to configure for the AI Guardrail.</p>", "smithy.api#required" => {}}))
    GuardrailRegexConfig.add_member(:action, Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailSensitiveInformationAction, location_name: 'action', traits: {"smithy.api#documentation" => "<p>The AI Guardrail action to configure when matching regular expression is detected.</p>", "smithy.api#required" => {}}))
    GuardrailRegexConfig.type = Types::GuardrailRegexConfig
    GuardrailRegexesConfig.member = Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailRegexConfig)
    GuardrailTopicConfig.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailTopicName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the topic to deny.</p>", "smithy.api#required" => {}}))
    GuardrailTopicConfig.add_member(:definition, Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailTopicDefinition, location_name: 'definition', traits: {"smithy.api#documentation" => "<p>A definition of the topic to deny.</p>", "smithy.api#required" => {}}))
    GuardrailTopicConfig.add_member(:examples, Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailTopicExamples, location_name: 'examples', traits: {"smithy.api#documentation" => "<p>A list of prompts, each of which is an example of a prompt that can be categorized as belonging to the topic.</p>"}))
    GuardrailTopicConfig.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailTopicType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>Specifies to deny the topic.</p>", "smithy.api#required" => {}}))
    GuardrailTopicConfig.type = Types::GuardrailTopicConfig
    GuardrailTopicExamples.member = Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailTopicExample)
    GuardrailTopicsConfig.member = Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailTopicConfig)
    GuardrailWordConfig.add_member(:text, Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailWordText, location_name: 'text', traits: {"smithy.api#documentation" => "<p>Text of the word configured for the AI Guardrail to block.</p>", "smithy.api#required" => {}}))
    GuardrailWordConfig.type = Types::GuardrailWordConfig
    GuardrailWordsConfig.member = Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailWordConfig)
    Headers.key = Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString)
    Headers.value = Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString)
    HierarchicalChunkingConfiguration.add_member(:level_configurations, Smithy::Schema::Shapes::ShapeRef.new(shape: HierarchicalChunkingLevelConfigurations, location_name: 'levelConfigurations', traits: {"smithy.api#documentation" => "<p>Token settings for each layer.</p>", "smithy.api#required" => {}}))
    HierarchicalChunkingConfiguration.add_member(:overlap_tokens, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'overlapTokens', traits: {"smithy.api#documentation" => "<p>The number of tokens to repeat across chunks in the same layer.</p>", "smithy.api#range" => {"min" => 1}, "smithy.api#required" => {}}))
    HierarchicalChunkingConfiguration.type = Types::HierarchicalChunkingConfiguration
    HierarchicalChunkingLevelConfiguration.add_member(:max_tokens, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxTokens', traits: {"smithy.api#documentation" => "<p>The maximum number of tokens that a chunk can contain in this layer.</p>", "smithy.api#range" => {"min" => 1, "max" => 8192}, "smithy.api#required" => {}}))
    HierarchicalChunkingLevelConfiguration.type = Types::HierarchicalChunkingLevelConfiguration
    HierarchicalChunkingLevelConfigurations.member = Smithy::Schema::Shapes::ShapeRef.new(shape: HierarchicalChunkingLevelConfiguration)
    Highlight.add_member(:begin_offset_inclusive, Smithy::Schema::Shapes::ShapeRef.new(shape: HighlightOffset, location_name: 'beginOffsetInclusive', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The offset for the start of the highlight.</p>"}))
    Highlight.add_member(:end_offset_exclusive, Smithy::Schema::Shapes::ShapeRef.new(shape: HighlightOffset, location_name: 'endOffsetExclusive', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The offset for the end of the highlight.</p>"}))
    Highlight.type = Types::Highlight
    Highlights.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Highlight)
    ImportJobData.add_member(:import_job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'importJobId', traits: {"smithy.api#documentation" => "<p>The identifier of the import job.</p>", "smithy.api#required" => {}}))
    ImportJobData.add_member(:knowledge_base_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'knowledgeBaseId', traits: {"smithy.api#documentation" => "<p>The identifier of the knowledge base.</p>", "smithy.api#required" => {}}))
    ImportJobData.add_member(:upload_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UploadId, location_name: 'uploadId', traits: {"smithy.api#documentation" => "<p>A pointer to the uploaded asset. This value is returned by <a href=\"https://docs.aws.amazon.com/wisdom/latest/APIReference/API_StartContentUpload.html\">StartContentUpload</a>.</p>", "smithy.api#required" => {}}))
    ImportJobData.add_member(:knowledge_base_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'knowledgeBaseArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the knowledge base.</p>", "smithy.api#required" => {}}))
    ImportJobData.add_member(:import_job_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ImportJobType, location_name: 'importJobType', traits: {"smithy.api#documentation" => "<p>The type of the import job.</p>", "smithy.api#required" => {}}))
    ImportJobData.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ImportJobStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the import job.</p>", "smithy.api#required" => {}}))
    ImportJobData.add_member(:url, Smithy::Schema::Shapes::ShapeRef.new(shape: Url, location_name: 'url', traits: {"smithy.api#documentation" => "<p>The download link to the resource file that is uploaded to the import job.</p>", "smithy.api#required" => {}}))
    ImportJobData.add_member(:failed_record_report, Smithy::Schema::Shapes::ShapeRef.new(shape: Url, location_name: 'failedRecordReport', traits: {"smithy.api#documentation" => "<p>The link to download the information of resource data that failed to be imported.</p>"}))
    ImportJobData.add_member(:url_expiry, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'urlExpiry', traits: {"smithy.api#documentation" => "<p>The expiration time of the URL as an epoch timestamp.</p>", "smithy.api#required" => {}, "smithy.api#timestampFormat" => "epoch-seconds"}))
    ImportJobData.add_member(:created_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdTime', traits: {"smithy.api#documentation" => "<p>The timestamp when the import job was created.</p>", "smithy.api#required" => {}, "smithy.api#timestampFormat" => "epoch-seconds"}))
    ImportJobData.add_member(:last_modified_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'lastModifiedTime', traits: {"smithy.api#documentation" => "<p>The timestamp when the import job data was last modified.</p>", "smithy.api#required" => {}, "smithy.api#timestampFormat" => "epoch-seconds"}))
    ImportJobData.add_member(:metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: ContentMetadata, location_name: 'metadata', traits: {"smithy.api#documentation" => "<p>The metadata fields of the imported Amazon Q in Connect resources.</p>"}))
    ImportJobData.add_member(:external_source_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ExternalSourceConfiguration, location_name: 'externalSourceConfiguration'))
    ImportJobData.type = Types::ImportJobData
    ImportJobList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ImportJobSummary)
    ImportJobSummary.add_member(:import_job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'importJobId', traits: {"smithy.api#documentation" => "<p>The identifier of the import job.</p>", "smithy.api#required" => {}}))
    ImportJobSummary.add_member(:knowledge_base_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'knowledgeBaseId', traits: {"smithy.api#documentation" => "<p>The identifier of the knowledge base.</p>", "smithy.api#required" => {}}))
    ImportJobSummary.add_member(:upload_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UploadId, location_name: 'uploadId', traits: {"smithy.api#documentation" => "<p>A pointer to the uploaded asset. This value is returned by <a href=\"https://docs.aws.amazon.com/wisdom/latest/APIReference/API_StartContentUpload.html\">StartContentUpload</a>.</p>", "smithy.api#required" => {}}))
    ImportJobSummary.add_member(:knowledge_base_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'knowledgeBaseArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the knowledge base.</p>", "smithy.api#required" => {}}))
    ImportJobSummary.add_member(:import_job_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ImportJobType, location_name: 'importJobType', traits: {"smithy.api#documentation" => "<p>The type of import job.</p>", "smithy.api#required" => {}}))
    ImportJobSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ImportJobStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the import job.</p>", "smithy.api#required" => {}}))
    ImportJobSummary.add_member(:created_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdTime', traits: {"smithy.api#documentation" => "<p>The timestamp when the import job was created.</p>", "smithy.api#required" => {}, "smithy.api#timestampFormat" => "epoch-seconds"}))
    ImportJobSummary.add_member(:last_modified_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'lastModifiedTime', traits: {"smithy.api#documentation" => "<p>The timestamp when the import job was last modified.</p>", "smithy.api#required" => {}, "smithy.api#timestampFormat" => "epoch-seconds"}))
    ImportJobSummary.add_member(:metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: ContentMetadata, location_name: 'metadata', traits: {"smithy.api#documentation" => "<p>The metadata fields of the imported Amazon Q in Connect resources.</p>"}))
    ImportJobSummary.add_member(:external_source_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ExternalSourceConfiguration, location_name: 'externalSourceConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration information of the external source that the resource data are imported from.</p>"}))
    ImportJobSummary.type = Types::ImportJobSummary
    IntentDetectedDataDetails.add_member(:intent, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveString, location_name: 'intent', traits: {"smithy.api#documentation" => "<p>The detected intent.</p>", "smithy.api#required" => {}}))
    IntentDetectedDataDetails.add_member(:intent_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'intentId', traits: {"smithy.api#documentation" => "<p>The identifier of the detected intent.</p>", "smithy.api#required" => {}}))
    IntentDetectedDataDetails.type = Types::IntentDetectedDataDetails
    IntentInputData.add_member(:intent_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'intentId', traits: {"smithy.api#documentation" => "<p>The identifier of the Amazon Q intent.</p>", "smithy.api#required" => {}}))
    IntentInputData.type = Types::IntentInputData
    KnowledgeBaseAssociationConfigurationData.add_member(:content_tag_filter, Smithy::Schema::Shapes::ShapeRef.new(shape: TagFilter, location_name: 'contentTagFilter'))
    KnowledgeBaseAssociationConfigurationData.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return per page.</p>"}))
    KnowledgeBaseAssociationConfigurationData.add_member(:override_knowledge_base_search_type, Smithy::Schema::Shapes::ShapeRef.new(shape: KnowledgeBaseSearchType, location_name: 'overrideKnowledgeBaseSearchType', traits: {"smithy.api#documentation" => "<p>The search type to be used against the Knowledge Base for this request. The values can be <code>SEMANTIC</code> which uses vector embeddings or <code>HYBRID</code> which use vector embeddings and raw text</p>"}))
    KnowledgeBaseAssociationConfigurationData.type = Types::KnowledgeBaseAssociationConfigurationData
    KnowledgeBaseAssociationData.add_member(:knowledge_base_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'knowledgeBaseId', traits: {"smithy.api#documentation" => "<p>The identifier of the knowledge base.</p>"}))
    KnowledgeBaseAssociationData.add_member(:knowledge_base_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'knowledgeBaseArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the knowledge base.</p>"}))
    KnowledgeBaseAssociationData.type = Types::KnowledgeBaseAssociationData
    KnowledgeBaseData.add_member(:knowledge_base_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'knowledgeBaseId', traits: {"smithy.api#documentation" => "<p>The identifier of the knowledge base.</p>", "smithy.api#required" => {}}))
    KnowledgeBaseData.add_member(:knowledge_base_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'knowledgeBaseArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the knowledge base.</p>", "smithy.api#required" => {}}))
    KnowledgeBaseData.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the knowledge base.</p>", "smithy.api#required" => {}}))
    KnowledgeBaseData.add_member(:knowledge_base_type, Smithy::Schema::Shapes::ShapeRef.new(shape: KnowledgeBaseType, location_name: 'knowledgeBaseType', traits: {"smithy.api#documentation" => "<p>The type of knowledge base.</p>", "smithy.api#required" => {}}))
    KnowledgeBaseData.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: KnowledgeBaseStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the knowledge base.</p>", "smithy.api#required" => {}}))
    KnowledgeBaseData.add_member(:last_content_modification_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'lastContentModificationTime', traits: {"smithy.api#documentation" => "<p>An epoch timestamp indicating the most recent content modification inside the knowledge base. If no content exists in a knowledge base, this value is unset.</p>", "smithy.api#timestampFormat" => "epoch-seconds"}))
    KnowledgeBaseData.add_member(:vector_ingestion_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: VectorIngestionConfiguration, location_name: 'vectorIngestionConfiguration', traits: {"smithy.api#documentation" => "<p>Contains details about how to ingest the documents in a data source.</p>"}))
    KnowledgeBaseData.add_member(:source_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceConfiguration, location_name: 'sourceConfiguration', traits: {"smithy.api#documentation" => "<p>Source configuration information about the knowledge base.</p>"}))
    KnowledgeBaseData.add_member(:rendering_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: RenderingConfiguration, location_name: 'renderingConfiguration', traits: {"smithy.api#documentation" => "<p>Information about how to render the content.</p>"}))
    KnowledgeBaseData.add_member(:server_side_encryption_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ServerSideEncryptionConfiguration, location_name: 'serverSideEncryptionConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration information for the customer managed key used for encryption. </p> <p>This KMS key must have a policy that allows <code>kms:CreateGrant</code>, <code>kms:DescribeKey</code>, <code>kms:Decrypt</code>, and <code>kms:GenerateDataKey*</code> permissions to the IAM identity using the key to invoke Amazon Q in Connect. </p> <p>For more information about setting up a customer managed key for Amazon Q in Connect, see <a href=\"https://docs.aws.amazon.com/connect/latest/adminguide/enable-q.html\">Enable Amazon Q in Connect for your instance</a>.</p>"}))
    KnowledgeBaseData.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description.</p>"}))
    KnowledgeBaseData.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags used to organize, track, or control access for this resource.</p>"}))
    KnowledgeBaseData.add_member(:ingestion_status, Smithy::Schema::Shapes::ShapeRef.new(shape: SyncStatus, location_name: 'ingestionStatus', traits: {"smithy.api#documentation" => "<p>Status of ingestion on data source.</p>"}))
    KnowledgeBaseData.add_member(:ingestion_failure_reasons, Smithy::Schema::Shapes::ShapeRef.new(shape: FailureReason, location_name: 'ingestionFailureReasons', traits: {"smithy.api#documentation" => "<p>List of failure reasons on ingestion per file.</p>"}))
    KnowledgeBaseData.type = Types::KnowledgeBaseData
    KnowledgeBaseList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: KnowledgeBaseSummary)
    KnowledgeBaseSummary.add_member(:knowledge_base_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'knowledgeBaseId', traits: {"smithy.api#documentation" => "<p>The identifier of the knowledge base.</p>", "smithy.api#required" => {}}))
    KnowledgeBaseSummary.add_member(:knowledge_base_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'knowledgeBaseArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the knowledge base.</p>", "smithy.api#required" => {}}))
    KnowledgeBaseSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the knowledge base.</p>", "smithy.api#required" => {}}))
    KnowledgeBaseSummary.add_member(:knowledge_base_type, Smithy::Schema::Shapes::ShapeRef.new(shape: KnowledgeBaseType, location_name: 'knowledgeBaseType', traits: {"smithy.api#documentation" => "<p>The type of knowledge base.</p>", "smithy.api#required" => {}}))
    KnowledgeBaseSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: KnowledgeBaseStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the knowledge base summary.</p>", "smithy.api#required" => {}}))
    KnowledgeBaseSummary.add_member(:source_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceConfiguration, location_name: 'sourceConfiguration', traits: {"smithy.api#documentation" => "<p>Configuration information about the external data source.</p>"}))
    KnowledgeBaseSummary.add_member(:vector_ingestion_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: VectorIngestionConfiguration, location_name: 'vectorIngestionConfiguration', traits: {"smithy.api#documentation" => "<p>Contains details about how to ingest the documents in a data source.</p>"}))
    KnowledgeBaseSummary.add_member(:rendering_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: RenderingConfiguration, location_name: 'renderingConfiguration', traits: {"smithy.api#documentation" => "<p>Information about how to render the content.</p>"}))
    KnowledgeBaseSummary.add_member(:server_side_encryption_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ServerSideEncryptionConfiguration, location_name: 'serverSideEncryptionConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration information for the customer managed key used for encryption. </p> <p>This KMS key must have a policy that allows <code>kms:CreateGrant</code>, <code>kms:DescribeKey</code>, <code>kms:Decrypt</code>, and <code>kms:GenerateDataKey*</code> permissions to the IAM identity using the key to invoke Amazon Q in Connect. </p> <p>For more information about setting up a customer managed key for Amazon Q in Connect, see <a href=\"https://docs.aws.amazon.com/connect/latest/adminguide/enable-q.html\">Enable Amazon Q in Connect for your instance</a>.</p>"}))
    KnowledgeBaseSummary.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the knowledge base.</p>"}))
    KnowledgeBaseSummary.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags used to organize, track, or control access for this resource.</p>"}))
    KnowledgeBaseSummary.type = Types::KnowledgeBaseSummary
    ListAIAgentVersionsRequest.add_member(:assistant_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'assistantId', traits: {"smithy.api#documentation" => "<p>The identifier of the Amazon Q in Connect assistant. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListAIAgentVersionsRequest.add_member(:ai_agent_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArnOrEitherWithQualifier, location_name: 'aiAgentId', traits: {"smithy.api#documentation" => "<p>The identifier of the Amazon Q in Connect AI Agent for which versions are to be listed.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListAIAgentVersionsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListAIAgentVersionsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return per page.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListAIAgentVersionsRequest.add_member(:origin, Smithy::Schema::Shapes::ShapeRef.new(shape: Origin, location_name: 'origin', traits: {"smithy.api#documentation" => "<p>The origin of the AI Agent versions to be listed. <code>SYSTEM</code> for a default AI Agent created by Q in Connect or <code>CUSTOMER</code> for an AI Agent created by calling AI Agent creation APIs. </p>", "smithy.api#httpQuery" => "origin"}))
    ListAIAgentVersionsRequest.type = Types::ListAIAgentVersionsRequest
    ListAIAgentVersionsResponse.add_member(:ai_agent_version_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: AIAgentVersionSummariesList, location_name: 'aiAgentVersionSummaries', traits: {"smithy.api#documentation" => "<p>The summaries of AI Agent versions.</p>", "smithy.api#required" => {}}))
    ListAIAgentVersionsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.</p>"}))
    ListAIAgentVersionsResponse.type = Types::ListAIAgentVersionsResponse
    ListAIAgentsRequest.add_member(:assistant_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'assistantId', traits: {"smithy.api#documentation" => "<p>The identifier of the Amazon Q in Connect assistant. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListAIAgentsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListAIAgentsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return per page.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListAIAgentsRequest.add_member(:origin, Smithy::Schema::Shapes::ShapeRef.new(shape: Origin, location_name: 'origin', traits: {"smithy.api#documentation" => "<p>The origin of the AI Agents to be listed. <code>SYSTEM</code> for a default AI Agent created by Q in Connect or <code>CUSTOMER</code> for an AI Agent created by calling AI Agent creation APIs. </p>", "smithy.api#httpQuery" => "origin"}))
    ListAIAgentsRequest.type = Types::ListAIAgentsRequest
    ListAIAgentsResponse.add_member(:ai_agent_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: AIAgentSummaryList, location_name: 'aiAgentSummaries', traits: {"smithy.api#documentation" => "<p>The summaries of AI Agents.</p>", "smithy.api#required" => {}}))
    ListAIAgentsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.</p>"}))
    ListAIAgentsResponse.type = Types::ListAIAgentsResponse
    ListAIGuardrailVersionsRequest.add_member(:assistant_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'assistantId', traits: {"smithy.api#documentation" => "<p>The identifier of the Amazon Q in Connect assistant. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListAIGuardrailVersionsRequest.add_member(:ai_guardrail_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArnOrEitherWithQualifier, location_name: 'aiGuardrailId', traits: {"smithy.api#documentation" => "<p>The identifier of the Amazon Q in Connect AI Guardrail for which versions are to be listed.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListAIGuardrailVersionsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListAIGuardrailVersionsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return per page.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListAIGuardrailVersionsRequest.type = Types::ListAIGuardrailVersionsRequest
    ListAIGuardrailVersionsResponse.add_member(:ai_guardrail_version_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: AIGuardrailVersionSummariesList, location_name: 'aiGuardrailVersionSummaries', traits: {"smithy.api#documentation" => "<p>The summaries of the AI Guardrail versions.</p>", "smithy.api#required" => {}}))
    ListAIGuardrailVersionsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.</p>"}))
    ListAIGuardrailVersionsResponse.type = Types::ListAIGuardrailVersionsResponse
    ListAIGuardrailsRequest.add_member(:assistant_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'assistantId', traits: {"smithy.api#documentation" => "<p>The identifier of the Amazon Q in Connect assistant. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListAIGuardrailsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListAIGuardrailsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return per page.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListAIGuardrailsRequest.type = Types::ListAIGuardrailsRequest
    ListAIGuardrailsResponse.add_member(:ai_guardrail_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: AIGuardrailSummariesList, location_name: 'aiGuardrailSummaries', traits: {"smithy.api#documentation" => "<p>The summaries of the AI Guardrails.</p>", "smithy.api#required" => {}}))
    ListAIGuardrailsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.</p>"}))
    ListAIGuardrailsResponse.type = Types::ListAIGuardrailsResponse
    ListAIPromptVersionsRequest.add_member(:assistant_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'assistantId', traits: {"smithy.api#documentation" => "<p>The identifier of the Amazon Q in Connect assistant. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListAIPromptVersionsRequest.add_member(:ai_prompt_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArnOrEitherWithQualifier, location_name: 'aiPromptId', traits: {"smithy.api#documentation" => "<p>The identifier of the Amazon Q in Connect AI prompt for which versions are to be listed.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListAIPromptVersionsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListAIPromptVersionsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return per page.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListAIPromptVersionsRequest.add_member(:origin, Smithy::Schema::Shapes::ShapeRef.new(shape: Origin, location_name: 'origin', traits: {"smithy.api#documentation" => "<p>The origin of the AI Prompt versions to be listed. <code>SYSTEM</code> for a default AI Agent created by Q in Connect or <code>CUSTOMER</code> for an AI Agent created by calling AI Agent creation APIs. </p>", "smithy.api#httpQuery" => "origin"}))
    ListAIPromptVersionsRequest.type = Types::ListAIPromptVersionsRequest
    ListAIPromptVersionsResponse.add_member(:ai_prompt_version_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: AIPromptVersionSummariesList, location_name: 'aiPromptVersionSummaries', traits: {"smithy.api#documentation" => "<p>The summaries of the AI Prompt versions.</p>", "smithy.api#required" => {}}))
    ListAIPromptVersionsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.</p>"}))
    ListAIPromptVersionsResponse.type = Types::ListAIPromptVersionsResponse
    ListAIPromptsRequest.add_member(:assistant_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'assistantId', traits: {"smithy.api#documentation" => "<p>The identifier of the Amazon Q in Connect assistant. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListAIPromptsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListAIPromptsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return per page.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListAIPromptsRequest.add_member(:origin, Smithy::Schema::Shapes::ShapeRef.new(shape: Origin, location_name: 'origin', traits: {"smithy.api#documentation" => "<p>The origin of the AI Prompts to be listed. <code>SYSTEM</code> for a default AI Agent created by Q in Connect or <code>CUSTOMER</code> for an AI Agent created by calling AI Agent creation APIs. </p>", "smithy.api#httpQuery" => "origin"}))
    ListAIPromptsRequest.type = Types::ListAIPromptsRequest
    ListAIPromptsResponse.add_member(:ai_prompt_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: AIPromptSummaryList, location_name: 'aiPromptSummaries', traits: {"smithy.api#documentation" => "<p>The summaries of the AI Prompts.</p>", "smithy.api#required" => {}}))
    ListAIPromptsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.</p>"}))
    ListAIPromptsResponse.type = Types::ListAIPromptsResponse
    ListAssistantAssociationsInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListAssistantAssociationsInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return per page.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListAssistantAssociationsInput.add_member(:assistant_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'assistantId', traits: {"smithy.api#documentation" => "<p>The identifier of the Amazon Q in Connect assistant. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListAssistantAssociationsInput.type = Types::ListAssistantAssociationsInput
    ListAssistantAssociationsOutput.add_member(:assistant_association_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: AssistantAssociationSummaryList, location_name: 'assistantAssociationSummaries', traits: {"smithy.api#documentation" => "<p>Summary information about assistant associations.</p>", "smithy.api#required" => {}}))
    ListAssistantAssociationsOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If there are additional results, this is the token for the next set of results.</p>"}))
    ListAssistantAssociationsOutput.type = Types::ListAssistantAssociationsOutput
    ListAssistantsInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListAssistantsInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return per page.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListAssistantsInput.type = Types::ListAssistantsInput
    ListAssistantsOutput.add_member(:assistant_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: AssistantList, location_name: 'assistantSummaries', traits: {"smithy.api#documentation" => "<p>Information about the assistants.</p>", "smithy.api#required" => {}}))
    ListAssistantsOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If there are additional results, this is the token for the next set of results.</p>"}))
    ListAssistantsOutput.type = Types::ListAssistantsOutput
    ListContentAssociationsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListContentAssociationsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return per page.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListContentAssociationsRequest.add_member(:knowledge_base_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'knowledgeBaseId', traits: {"smithy.api#documentation" => "<p>The identifier of the knowledge base.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListContentAssociationsRequest.add_member(:content_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'contentId', traits: {"smithy.api#documentation" => "<p>The identifier of the content.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListContentAssociationsRequest.type = Types::ListContentAssociationsRequest
    ListContentAssociationsResponse.add_member(:content_association_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: ContentAssociationSummaryList, location_name: 'contentAssociationSummaries', traits: {"smithy.api#documentation" => "<p>Summary information about content associations.</p>", "smithy.api#required" => {}}))
    ListContentAssociationsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If there are additional results, this is the token for the next set of results.</p>"}))
    ListContentAssociationsResponse.type = Types::ListContentAssociationsResponse
    ListContentsInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListContentsInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return per page.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListContentsInput.add_member(:knowledge_base_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'knowledgeBaseId', traits: {"smithy.api#documentation" => "<p>The identifier of the knowledge base. This should not be a QUICK_RESPONSES type knowledge base. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListContentsInput.type = Types::ListContentsInput
    ListContentsOutput.add_member(:content_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: ContentSummaryList, location_name: 'contentSummaries', traits: {"smithy.api#documentation" => "<p>Information about the content.</p>", "smithy.api#required" => {}}))
    ListContentsOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If there are additional results, this is the token for the next set of results.</p>"}))
    ListContentsOutput.type = Types::ListContentsOutput
    ListImportJobsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListImportJobsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return per page.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListImportJobsRequest.add_member(:knowledge_base_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'knowledgeBaseId', traits: {"smithy.api#documentation" => "<p>The identifier of the knowledge base. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListImportJobsRequest.type = Types::ListImportJobsRequest
    ListImportJobsResponse.add_member(:import_job_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: ImportJobList, location_name: 'importJobSummaries', traits: {"smithy.api#documentation" => "<p>Summary information about the import jobs.</p>", "smithy.api#required" => {}}))
    ListImportJobsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.</p>"}))
    ListImportJobsResponse.type = Types::ListImportJobsResponse
    ListKnowledgeBasesInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListKnowledgeBasesInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return per page.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListKnowledgeBasesInput.type = Types::ListKnowledgeBasesInput
    ListKnowledgeBasesOutput.add_member(:knowledge_base_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: KnowledgeBaseList, location_name: 'knowledgeBaseSummaries', traits: {"smithy.api#documentation" => "<p>Information about the knowledge bases.</p>", "smithy.api#required" => {}}))
    ListKnowledgeBasesOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If there are additional results, this is the token for the next set of results.</p>"}))
    ListKnowledgeBasesOutput.type = Types::ListKnowledgeBasesOutput
    ListMessageTemplateVersionsRequest.add_member(:knowledge_base_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'knowledgeBaseId', traits: {"smithy.api#documentation" => "<p>The identifier of the knowledge base. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListMessageTemplateVersionsRequest.add_member(:message_template_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArnOrEitherWithQualifier, location_name: 'messageTemplateId', traits: {"smithy.api#documentation" => "<p>The identifier of the message template. Can be either the ID or the ARN. It cannot contain any qualifier.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListMessageTemplateVersionsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListMessageTemplateVersionsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return per page.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListMessageTemplateVersionsRequest.type = Types::ListMessageTemplateVersionsRequest
    ListMessageTemplateVersionsResponse.add_member(:message_template_version_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateVersionSummaryList, location_name: 'messageTemplateVersionSummaries', traits: {"smithy.api#documentation" => "<p>Summary information about the versions of a message template.</p>", "smithy.api#required" => {}}))
    ListMessageTemplateVersionsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If there are additional results, this is the token for the next set of results.</p>"}))
    ListMessageTemplateVersionsResponse.type = Types::ListMessageTemplateVersionsResponse
    ListMessageTemplatesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListMessageTemplatesRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return per page.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListMessageTemplatesRequest.add_member(:knowledge_base_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'knowledgeBaseId', traits: {"smithy.api#documentation" => "<p>The identifier of the knowledge base. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListMessageTemplatesRequest.type = Types::ListMessageTemplatesRequest
    ListMessageTemplatesResponse.add_member(:message_template_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateSummaryList, location_name: 'messageTemplateSummaries', traits: {"smithy.api#documentation" => "<p>Summary information about the message template.</p>", "smithy.api#required" => {}}))
    ListMessageTemplatesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If there are additional results, this is the token for the next set of results.</p>"}))
    ListMessageTemplatesResponse.type = Types::ListMessageTemplatesResponse
    ListMessagesRequest.add_member(:assistant_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'assistantId', traits: {"smithy.api#documentation" => "<p>The identifier of the Amazon Q in Connect assistant.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListMessagesRequest.add_member(:session_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'sessionId', traits: {"smithy.api#documentation" => "<p>The identifier of the Amazon Q in Connect session.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListMessagesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListMessagesRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return per page.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListMessagesRequest.type = Types::ListMessagesRequest
    ListMessagesResponse.add_member(:messages, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageList, location_name: 'messages', traits: {"smithy.api#documentation" => "<p>The message information.</p>", "smithy.api#required" => {}}))
    ListMessagesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.</p>"}))
    ListMessagesResponse.type = Types::ListMessagesResponse
    ListQuickResponsesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListQuickResponsesRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return per page.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListQuickResponsesRequest.add_member(:knowledge_base_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'knowledgeBaseId', traits: {"smithy.api#documentation" => "<p>The identifier of the knowledge base. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListQuickResponsesRequest.type = Types::ListQuickResponsesRequest
    ListQuickResponsesResponse.add_member(:quick_response_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: QuickResponseSummaryList, location_name: 'quickResponseSummaries', traits: {"smithy.api#documentation" => "<p>Summary information about the quick responses.</p>", "smithy.api#required" => {}}))
    ListQuickResponsesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.</p>"}))
    ListQuickResponsesResponse.type = Types::ListQuickResponsesResponse
    ListTagsForResourceInput.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the resource.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceInput.type = Types::ListTagsForResourceInput
    ListTagsForResourceOutput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags used to organize, track, or control access for this resource.</p>"}))
    ListTagsForResourceOutput.type = Types::ListTagsForResourceOutput
    ManagedSourceConfiguration.add_member(:web_crawler_configuration, Types::ManagedSourceConfiguration::WebCrawlerConfiguration, Smithy::Schema::Shapes::ShapeRef.new(shape: WebCrawlerConfiguration, location_name: 'webCrawlerConfiguration', traits: {"smithy.api#documentation" => "<p>Configuration data for web crawler data source.</p>"}))
    ManagedSourceConfiguration.add_member(:unknown, Types::ManagedSourceConfiguration::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    ManagedSourceConfiguration.type = Types::ManagedSourceConfiguration
    ManualSearchAIAgentConfiguration.add_member(:answer_generation_ai_prompt_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidWithQualifier, location_name: 'answerGenerationAIPromptId', traits: {"smithy.api#documentation" => "<p>The AI Prompt identifier for the Answer Generation prompt used by the MANUAL_SEARCH AI Agent.</p>"}))
    ManualSearchAIAgentConfiguration.add_member(:answer_generation_ai_guardrail_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidWithQualifier, location_name: 'answerGenerationAIGuardrailId', traits: {"smithy.api#documentation" => "<p>The AI Guardrail identifier for the Answer Generation guardrail used by the MANUAL_SEARCH AI Agent.</p>"}))
    ManualSearchAIAgentConfiguration.add_member(:association_configurations, Smithy::Schema::Shapes::ShapeRef.new(shape: AssociationConfigurationList, location_name: 'associationConfigurations', traits: {"smithy.api#documentation" => "<p>The association configurations for overriding behavior on this AI Agent.</p>"}))
    ManualSearchAIAgentConfiguration.add_member(:locale, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'locale', traits: {"smithy.api#documentation" => "<p>The locale to which specifies the language and region settings that determine the response language for <a href=\"https://docs.aws.amazon.com/connect/latest/APIReference/API_amazon-q-connect_QueryAssistant.html\">QueryAssistant</a>.</p> <note> <p>For more information on supported locales, see <a href=\"https://docs.aws.amazon.com/connect/latest/adminguide/supported-languages.html#qic-notes-languages\">Language support for Amazon Q in Connect</a>.</p> </note>"}))
    ManualSearchAIAgentConfiguration.type = Types::ManualSearchAIAgentConfiguration
    MessageConfiguration.add_member(:generate_filler_message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'generateFillerMessage', traits: {"smithy.api#documentation" => "<p>Generates a filler response when tool selection is <code>QUESTION</code>.</p>"}))
    MessageConfiguration.type = Types::MessageConfiguration
    MessageData.add_member(:text, Types::MessageData::Text, Smithy::Schema::Shapes::ShapeRef.new(shape: TextMessage, location_name: 'text', traits: {"smithy.api#documentation" => "<p>The message data in text type.</p>"}))
    MessageData.add_member(:unknown, Types::MessageData::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    MessageData.type = Types::MessageData
    MessageInput.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageData, location_name: 'value', traits: {"smithy.api#documentation" => "<p>The message input value.</p>", "smithy.api#required" => {}}))
    MessageInput.type = Types::MessageInput
    MessageList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: MessageOutput)
    MessageOutput.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageData, location_name: 'value', traits: {"smithy.api#documentation" => "<p>The value of a message data.</p>", "smithy.api#required" => {}}))
    MessageOutput.add_member(:message_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'messageId', traits: {"smithy.api#documentation" => "<p>The identifier of a message.</p>", "smithy.api#required" => {}}))
    MessageOutput.add_member(:participant, Smithy::Schema::Shapes::ShapeRef.new(shape: Participant, location_name: 'participant', traits: {"smithy.api#documentation" => "<p>The participant of a message.</p>", "smithy.api#required" => {}}))
    MessageOutput.add_member(:timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'timestamp', traits: {"smithy.api#documentation" => "<p>The timestamp of a message.</p>", "smithy.api#required" => {}}))
    MessageOutput.type = Types::MessageOutput
    MessageTemplateAttachment.add_member(:content_disposition, Smithy::Schema::Shapes::ShapeRef.new(shape: ContentDisposition, location_name: 'contentDisposition', traits: {"smithy.api#documentation" => "<p>The presentation information for the attachment file.</p>", "smithy.api#required" => {}}))
    MessageTemplateAttachment.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: AttachmentFileName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the attachment file being uploaded. The name should include the file extension.</p>", "smithy.api#required" => {}}))
    MessageTemplateAttachment.add_member(:uploaded_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'uploadedTime', traits: {"smithy.api#documentation" => "<p>The timestamp when the attachment file was uploaded.</p>", "smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    MessageTemplateAttachment.add_member(:url, Smithy::Schema::Shapes::ShapeRef.new(shape: Url, location_name: 'url', traits: {"smithy.api#documentation" => "<p>A pre-signed Amazon S3 URL that can be used to download the attachment file.</p>", "smithy.api#required" => {}}))
    MessageTemplateAttachment.add_member(:url_expiry, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'urlExpiry', traits: {"smithy.api#documentation" => "<p>The expiration time of the pre-signed Amazon S3 URL.</p>", "smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    MessageTemplateAttachment.add_member(:attachment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'attachmentId', traits: {"smithy.api#documentation" => "<p>The identifier of the attachment file.</p>", "smithy.api#required" => {}}))
    MessageTemplateAttachment.type = Types::MessageTemplateAttachment
    MessageTemplateAttachmentList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateAttachment)
    MessageTemplateAttributeKeyList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateAttributeKey)
    MessageTemplateAttributeTypeList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateAttributeType)
    MessageTemplateAttributes.add_member(:system_attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: SystemAttributes, location_name: 'systemAttributes', traits: {"smithy.api#documentation" => "<p>The system attributes that are used with the message template.</p>"}))
    MessageTemplateAttributes.add_member(:agent_attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: AgentAttributes, location_name: 'agentAttributes', traits: {"smithy.api#documentation" => "<p>The agent attributes that are used with the message template.</p>"}))
    MessageTemplateAttributes.add_member(:customer_profile_attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomerProfileAttributes, location_name: 'customerProfileAttributes', traits: {"smithy.api#documentation" => "<p>The customer profile attributes that are used with the message template.</p>"}))
    MessageTemplateAttributes.add_member(:custom_attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomAttributes, location_name: 'customAttributes', traits: {"smithy.api#documentation" => "<p>The custom attributes that are used with the message template.</p>"}))
    MessageTemplateAttributes.type = Types::MessageTemplateAttributes
    MessageTemplateBodyContentProvider.add_member(:content, Types::MessageTemplateBodyContentProvider::Content, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyUnlimitedString, location_name: 'content', traits: {"smithy.api#documentation" => "<p>The content of the message template.</p>"}))
    MessageTemplateBodyContentProvider.add_member(:unknown, Types::MessageTemplateBodyContentProvider::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    MessageTemplateBodyContentProvider.type = Types::MessageTemplateBodyContentProvider
    MessageTemplateContentProvider.add_member(:email, Types::MessageTemplateContentProvider::Email, Smithy::Schema::Shapes::ShapeRef.new(shape: EmailMessageTemplateContent, location_name: 'email', traits: {"smithy.api#documentation" => "<p>The content of the message template that applies to the email channel subtype.</p>"}))
    MessageTemplateContentProvider.add_member(:sms, Types::MessageTemplateContentProvider::Sms, Smithy::Schema::Shapes::ShapeRef.new(shape: SMSMessageTemplateContent, location_name: 'sms', traits: {"smithy.api#documentation" => "<p>The content of the message template that applies to the SMS channel subtype.</p>"}))
    MessageTemplateContentProvider.add_member(:unknown, Types::MessageTemplateContentProvider::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    MessageTemplateContentProvider.type = Types::MessageTemplateContentProvider
    MessageTemplateData.add_member(:message_template_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ArnWithQualifier, location_name: 'messageTemplateArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the message template.</p>", "smithy.api#required" => {}}))
    MessageTemplateData.add_member(:message_template_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'messageTemplateId', traits: {"smithy.api#documentation" => "<p>The identifier of the message template.</p>", "smithy.api#required" => {}}))
    MessageTemplateData.add_member(:knowledge_base_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'knowledgeBaseArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the knowledge base.</p>", "smithy.api#required" => {}}))
    MessageTemplateData.add_member(:knowledge_base_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'knowledgeBaseId', traits: {"smithy.api#documentation" => "<p>The identifier of the knowledge base.</p>", "smithy.api#required" => {}}))
    MessageTemplateData.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the message template.</p>", "smithy.api#required" => {}}))
    MessageTemplateData.add_member(:channel_subtype, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelSubtype, location_name: 'channelSubtype', traits: {"smithy.api#documentation" => "<p>The channel subtype this message template applies to.</p>", "smithy.api#required" => {}}))
    MessageTemplateData.add_member(:created_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdTime', traits: {"smithy.api#documentation" => "<p>The timestamp when the message template was created.</p>", "smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    MessageTemplateData.add_member(:last_modified_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'lastModifiedTime', traits: {"smithy.api#documentation" => "<p>The timestamp when the message template data was last modified.</p>", "smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    MessageTemplateData.add_member(:last_modified_by, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericArn, location_name: 'lastModifiedBy', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the user who last updated the message template data.</p>", "smithy.api#required" => {}}))
    MessageTemplateData.add_member(:content, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateContentProvider, location_name: 'content', traits: {"smithy.api#documentation" => "<p>The content of the message template.</p>", "smithy.api#required" => {}}))
    MessageTemplateData.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the message template.</p>"}))
    MessageTemplateData.add_member(:language, Smithy::Schema::Shapes::ShapeRef.new(shape: LanguageCode, location_name: 'language', traits: {"smithy.api#documentation" => "<p>The language code value for the language in which the quick response is written. The supported language codes include <code>de_DE</code>, <code>en_US</code>, <code>es_ES</code>, <code>fr_FR</code>, <code>id_ID</code>, <code>it_IT</code>, <code>ja_JP</code>, <code>ko_KR</code>, <code>pt_BR</code>, <code>zh_CN</code>, <code>zh_TW</code> </p>"}))
    MessageTemplateData.add_member(:grouping_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupingConfiguration, location_name: 'groupingConfiguration'))
    MessageTemplateData.add_member(:default_attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateAttributes, location_name: 'defaultAttributes', traits: {"smithy.api#documentation" => "<p>An object that specifies the default values to use for variables in the message template. This object contains different categories of key-value pairs. Each key defines a variable or placeholder in the message template. The corresponding value defines the default value for that variable.</p>"}))
    MessageTemplateData.add_member(:attribute_types, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateAttributeTypeList, location_name: 'attributeTypes', traits: {"smithy.api#documentation" => "<p>The types of attributes that the message template contains.</p>"}))
    MessageTemplateData.add_member(:message_template_content_sha256, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateContentSha256, location_name: 'messageTemplateContentSha256', traits: {"smithy.api#documentation" => "<p>The checksum value of the message template content that is referenced by the <code>$LATEST</code> qualifier. It can be returned in <code>MessageTemplateData</code> or <code>ExtendedMessageTemplateData</code>. It’s calculated by content, language, <code>defaultAttributes</code> and <code>Attachments</code> of the message template.</p>", "smithy.api#required" => {}}))
    MessageTemplateData.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags used to organize, track, or control access for this resource.</p>"}))
    MessageTemplateData.type = Types::MessageTemplateData
    MessageTemplateFilterField.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the attribute field to filter the message templates by.</p>", "smithy.api#required" => {}}))
    MessageTemplateFilterField.add_member(:values, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateFilterValueList, location_name: 'values', traits: {"smithy.api#documentation" => "<p>The values of attribute field to filter the message template by.</p>"}))
    MessageTemplateFilterField.add_member(:operator, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateFilterOperator, location_name: 'operator', traits: {"smithy.api#documentation" => "<p>The operator to use for filtering.</p>", "smithy.api#required" => {}}))
    MessageTemplateFilterField.add_member(:include_no_existence, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'includeNoExistence', traits: {"smithy.api#documentation" => "<p>Whether to treat null value as a match for the attribute field.</p>"}))
    MessageTemplateFilterField.type = Types::MessageTemplateFilterField
    MessageTemplateFilterFieldList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateFilterField)
    MessageTemplateFilterValueList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateFilterValue)
    MessageTemplateOrderField.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the message template.</p>", "smithy.api#required" => {}}))
    MessageTemplateOrderField.add_member(:order, Smithy::Schema::Shapes::ShapeRef.new(shape: Order, location_name: 'order', traits: {"smithy.api#documentation" => "<p>The order at which the message templates are sorted by.</p>"}))
    MessageTemplateOrderField.type = Types::MessageTemplateOrderField
    MessageTemplateQueryField.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the attribute to query the message templates by.</p>", "smithy.api#required" => {}}))
    MessageTemplateQueryField.add_member(:values, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateQueryValueList, location_name: 'values', traits: {"smithy.api#documentation" => "<p>The values of the attribute to query the message templates by.</p>", "smithy.api#required" => {}}))
    MessageTemplateQueryField.add_member(:operator, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateQueryOperator, location_name: 'operator', traits: {"smithy.api#documentation" => "<p>The operator to use for matching attribute field values in the query.</p>", "smithy.api#required" => {}}))
    MessageTemplateQueryField.add_member(:allow_fuzziness, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'allowFuzziness', traits: {"smithy.api#documentation" => "<p>Whether the query expects only exact matches on the attribute field values. The results of the query will only include exact matches if this parameter is set to false.</p>"}))
    MessageTemplateQueryField.add_member(:priority, Smithy::Schema::Shapes::ShapeRef.new(shape: Priority, location_name: 'priority', traits: {"smithy.api#documentation" => "<p>The importance of the attribute field when calculating query result relevancy scores. The value set for this parameter affects the ordering of search results.</p>"}))
    MessageTemplateQueryField.type = Types::MessageTemplateQueryField
    MessageTemplateQueryFieldList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateQueryField)
    MessageTemplateQueryValueList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateQueryValue)
    MessageTemplateSearchExpression.add_member(:queries, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateQueryFieldList, location_name: 'queries', traits: {"smithy.api#documentation" => "<p>The message template query expressions.</p>"}))
    MessageTemplateSearchExpression.add_member(:filters, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateFilterFieldList, location_name: 'filters', traits: {"smithy.api#documentation" => "<p>The configuration of filtering rules applied to message template query results.</p>"}))
    MessageTemplateSearchExpression.add_member(:order_on_field, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateOrderField, location_name: 'orderOnField', traits: {"smithy.api#documentation" => "<p>The message template attribute fields on which the query results are ordered.</p>"}))
    MessageTemplateSearchExpression.type = Types::MessageTemplateSearchExpression
    MessageTemplateSearchResultData.add_member(:message_template_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ArnWithQualifier, location_name: 'messageTemplateArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the message template.</p>", "smithy.api#required" => {}}))
    MessageTemplateSearchResultData.add_member(:message_template_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'messageTemplateId', traits: {"smithy.api#documentation" => "<p>The identifier of the message template.</p>", "smithy.api#required" => {}}))
    MessageTemplateSearchResultData.add_member(:knowledge_base_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'knowledgeBaseArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the knowledge base.</p>", "smithy.api#required" => {}}))
    MessageTemplateSearchResultData.add_member(:knowledge_base_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'knowledgeBaseId', traits: {"smithy.api#documentation" => "<p>The identifier of the knowledge base.</p>", "smithy.api#required" => {}}))
    MessageTemplateSearchResultData.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the message template.</p>", "smithy.api#required" => {}}))
    MessageTemplateSearchResultData.add_member(:channel_subtype, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelSubtype, location_name: 'channelSubtype', traits: {"smithy.api#documentation" => "<p>The channel subtype this message template applies to.</p>", "smithy.api#required" => {}}))
    MessageTemplateSearchResultData.add_member(:created_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdTime', traits: {"smithy.api#documentation" => "<p>The timestamp when the message template was created.</p>", "smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    MessageTemplateSearchResultData.add_member(:last_modified_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'lastModifiedTime', traits: {"smithy.api#documentation" => "<p>The timestamp when the message template data was last modified.</p>", "smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    MessageTemplateSearchResultData.add_member(:last_modified_by, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericArn, location_name: 'lastModifiedBy', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the user who last updated the message template data.</p>", "smithy.api#required" => {}}))
    MessageTemplateSearchResultData.add_member(:is_active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'isActive', traits: {"smithy.api#documentation" => "<p>Whether the version of the message template is activated.</p>"}))
    MessageTemplateSearchResultData.add_member(:version_number, Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'versionNumber', traits: {"smithy.api#documentation" => "<p>The version number of the message template version.</p>"}))
    MessageTemplateSearchResultData.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the message template.</p>"}))
    MessageTemplateSearchResultData.add_member(:grouping_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupingConfiguration, location_name: 'groupingConfiguration'))
    MessageTemplateSearchResultData.add_member(:language, Smithy::Schema::Shapes::ShapeRef.new(shape: LanguageCode, location_name: 'language', traits: {"smithy.api#documentation" => "<p>The language code value for the language in which the quick response is written. The supported language codes include <code>de_DE</code>, <code>en_US</code>, <code>es_ES</code>, <code>fr_FR</code>, <code>id_ID</code>, <code>it_IT</code>, <code>ja_JP</code>, <code>ko_KR</code>, <code>pt_BR</code>, <code>zh_CN</code>, <code>zh_TW</code> </p>"}))
    MessageTemplateSearchResultData.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags used to organize, track, or control access for this resource.</p>"}))
    MessageTemplateSearchResultData.type = Types::MessageTemplateSearchResultData
    MessageTemplateSearchResultsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateSearchResultData)
    MessageTemplateSummary.add_member(:message_template_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ArnWithQualifier, location_name: 'messageTemplateArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the message template.</p>", "smithy.api#required" => {}}))
    MessageTemplateSummary.add_member(:message_template_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'messageTemplateId', traits: {"smithy.api#documentation" => "<p>The identifier of the message template.</p>", "smithy.api#required" => {}}))
    MessageTemplateSummary.add_member(:knowledge_base_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'knowledgeBaseArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the knowledge base.</p>", "smithy.api#required" => {}}))
    MessageTemplateSummary.add_member(:knowledge_base_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'knowledgeBaseId', traits: {"smithy.api#documentation" => "<p>The identifier of the knowledge base.</p>", "smithy.api#required" => {}}))
    MessageTemplateSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the message template.</p>", "smithy.api#required" => {}}))
    MessageTemplateSummary.add_member(:channel_subtype, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelSubtype, location_name: 'channelSubtype', traits: {"smithy.api#documentation" => "<p>The channel subtype this message template applies to.</p>", "smithy.api#required" => {}}))
    MessageTemplateSummary.add_member(:created_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdTime', traits: {"smithy.api#documentation" => "<p>The timestamp when the message template was created.</p>", "smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    MessageTemplateSummary.add_member(:last_modified_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'lastModifiedTime', traits: {"smithy.api#documentation" => "<p>The timestamp when the message template data was last modified.</p>", "smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    MessageTemplateSummary.add_member(:last_modified_by, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericArn, location_name: 'lastModifiedBy', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the user who last updated the message template data.</p>", "smithy.api#required" => {}}))
    MessageTemplateSummary.add_member(:active_version_number, Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'activeVersionNumber', traits: {"smithy.api#documentation" => "<p>The version number of the message template version that is activated.</p>"}))
    MessageTemplateSummary.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the message template.</p>"}))
    MessageTemplateSummary.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags used to organize, track, or control access for this resource.</p>"}))
    MessageTemplateSummary.type = Types::MessageTemplateSummary
    MessageTemplateSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateSummary)
    MessageTemplateVersionSummary.add_member(:message_template_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ArnWithQualifier, location_name: 'messageTemplateArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the message template.</p>", "smithy.api#required" => {}}))
    MessageTemplateVersionSummary.add_member(:message_template_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'messageTemplateId', traits: {"smithy.api#documentation" => "<p>The identifier of the message template.</p>", "smithy.api#required" => {}}))
    MessageTemplateVersionSummary.add_member(:knowledge_base_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'knowledgeBaseArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the knowledge base.</p>", "smithy.api#required" => {}}))
    MessageTemplateVersionSummary.add_member(:knowledge_base_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'knowledgeBaseId', traits: {"smithy.api#documentation" => "<p>The identifier of the knowledge base.</p>", "smithy.api#required" => {}}))
    MessageTemplateVersionSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the message template.</p>", "smithy.api#required" => {}}))
    MessageTemplateVersionSummary.add_member(:channel_subtype, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelSubtype, location_name: 'channelSubtype', traits: {"smithy.api#documentation" => "<p>The channel subtype this message template applies to.</p>", "smithy.api#required" => {}}))
    MessageTemplateVersionSummary.add_member(:is_active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'isActive', traits: {"smithy.api#documentation" => "<p>Whether the version of the message template is activated.</p>", "smithy.api#required" => {}}))
    MessageTemplateVersionSummary.add_member(:version_number, Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'versionNumber', traits: {"smithy.api#documentation" => "<p>The version number of the message template version.</p>", "smithy.api#required" => {}}))
    MessageTemplateVersionSummary.type = Types::MessageTemplateVersionSummary
    MessageTemplateVersionSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateVersionSummary)
    NotifyRecommendationsReceivedError.add_member(:recommendation_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RecommendationId, location_name: 'recommendationId', traits: {"smithy.api#documentation" => "<p>The identifier of the recommendation that is in error.</p>"}))
    NotifyRecommendationsReceivedError.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: NotifyRecommendationsReceivedErrorMessage, location_name: 'message', traits: {"smithy.api#documentation" => "<p>A recommendation is causing an error.</p>"}))
    NotifyRecommendationsReceivedError.type = Types::NotifyRecommendationsReceivedError
    NotifyRecommendationsReceivedErrorList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: NotifyRecommendationsReceivedError)
    NotifyRecommendationsReceivedInput.add_member(:assistant_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'assistantId', traits: {"smithy.api#documentation" => "<p>The identifier of the Amazon Q in Connect assistant. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    NotifyRecommendationsReceivedInput.add_member(:session_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'sessionId', traits: {"smithy.api#documentation" => "<p>The identifier of the session. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    NotifyRecommendationsReceivedInput.add_member(:recommendation_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: RecommendationIdList, location_name: 'recommendationIds', traits: {"smithy.api#documentation" => "<p>The identifiers of the recommendations.</p>", "smithy.api#required" => {}}))
    NotifyRecommendationsReceivedInput.type = Types::NotifyRecommendationsReceivedInput
    NotifyRecommendationsReceivedOutput.add_member(:recommendation_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: RecommendationIdList, location_name: 'recommendationIds', traits: {"smithy.api#documentation" => "<p>The identifiers of the recommendations.</p>"}))
    NotifyRecommendationsReceivedOutput.add_member(:errors, Smithy::Schema::Shapes::ShapeRef.new(shape: NotifyRecommendationsReceivedErrorList, location_name: 'errors', traits: {"smithy.api#documentation" => "<p>The identifiers of recommendations that are causing errors.</p>"}))
    NotifyRecommendationsReceivedOutput.type = Types::NotifyRecommendationsReceivedOutput
    ObjectFieldsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString)
    OrCondition.add_member(:and_conditions, Types::OrCondition::AndConditions, Smithy::Schema::Shapes::ShapeRef.new(shape: AndConditions, location_name: 'andConditions', traits: {"smithy.api#documentation" => "<p>A list of conditions which would be applied together with an <code>AND</code> condition.</p>"}))
    OrCondition.add_member(:tag_condition, Types::OrCondition::TagCondition, Smithy::Schema::Shapes::ShapeRef.new(shape: TagCondition, location_name: 'tagCondition', traits: {"smithy.api#documentation" => "<p>A leaf node condition which can be used to specify a tag condition.</p>"}))
    OrCondition.add_member(:unknown, Types::OrCondition::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    OrCondition.type = Types::OrCondition
    OrConditions.member = Smithy::Schema::Shapes::ShapeRef.new(shape: OrCondition)
    ParsingConfiguration.add_member(:parsing_strategy, Smithy::Schema::Shapes::ShapeRef.new(shape: ParsingStrategy, location_name: 'parsingStrategy', traits: {"smithy.api#documentation" => "<p>The parsing strategy for the data source.</p>", "smithy.api#required" => {}}))
    ParsingConfiguration.add_member(:bedrock_foundation_model_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: BedrockFoundationModelConfigurationForParsing, location_name: 'bedrockFoundationModelConfiguration', traits: {"smithy.api#documentation" => "<p>Settings for a foundation model used to parse documents for a data source.</p>"}))
    ParsingConfiguration.type = Types::ParsingConfiguration
    ParsingPrompt.add_member(:parsing_prompt_text, Smithy::Schema::Shapes::ShapeRef.new(shape: ParsingPromptText, location_name: 'parsingPromptText', traits: {"smithy.api#documentation" => "<p>Instructions for interpreting the contents of a document.</p>", "smithy.api#required" => {}}))
    ParsingPrompt.type = Types::ParsingPrompt
    PreconditionFailedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message'))
    PreconditionFailedException.type = Types::PreconditionFailedException
    PutFeedbackRequest.add_member(:assistant_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'assistantId', traits: {"smithy.api#documentation" => "<p>The identifier of the Amazon Q in Connect assistant.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutFeedbackRequest.add_member(:target_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'targetId', traits: {"smithy.api#documentation" => "<p>The identifier of the feedback target.</p>", "smithy.api#required" => {}}))
    PutFeedbackRequest.add_member(:target_type, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetType, location_name: 'targetType', traits: {"smithy.api#documentation" => "<p>The type of the feedback target.</p>", "smithy.api#required" => {}}))
    PutFeedbackRequest.add_member(:content_feedback, Smithy::Schema::Shapes::ShapeRef.new(shape: ContentFeedbackData, location_name: 'contentFeedback', traits: {"smithy.api#documentation" => "<p>Information about the feedback provided.</p>", "smithy.api#required" => {}}))
    PutFeedbackRequest.type = Types::PutFeedbackRequest
    PutFeedbackResponse.add_member(:assistant_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'assistantId', traits: {"smithy.api#documentation" => "<p>The identifier of the Amazon Q in Connect assistant.</p>", "smithy.api#required" => {}}))
    PutFeedbackResponse.add_member(:assistant_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'assistantArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Amazon Q in Connect assistant.</p>", "smithy.api#required" => {}}))
    PutFeedbackResponse.add_member(:target_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'targetId', traits: {"smithy.api#documentation" => "<p>The identifier of the feedback target.</p>", "smithy.api#required" => {}}))
    PutFeedbackResponse.add_member(:target_type, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetType, location_name: 'targetType', traits: {"smithy.api#documentation" => "<p>The type of the feedback target.</p>", "smithy.api#required" => {}}))
    PutFeedbackResponse.add_member(:content_feedback, Smithy::Schema::Shapes::ShapeRef.new(shape: ContentFeedbackData, location_name: 'contentFeedback', traits: {"smithy.api#documentation" => "<p>Information about the feedback provided.</p>", "smithy.api#required" => {}}))
    PutFeedbackResponse.type = Types::PutFeedbackResponse
    QueryAssistantInput.add_member(:assistant_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'assistantId', traits: {"smithy.api#documentation" => "<p>The identifier of the Amazon Q in Connect assistant. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    QueryAssistantInput.add_member(:query_text, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryText, location_name: 'queryText', traits: {"smithy.api#documentation" => "<p>The text to search for.</p>"}))
    QueryAssistantInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.</p>"}))
    QueryAssistantInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return per page.</p>"}))
    QueryAssistantInput.add_member(:session_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'sessionId', traits: {"smithy.api#documentation" => "<p>The identifier of the Amazon Q in Connect session. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>"}))
    QueryAssistantInput.add_member(:query_condition, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryConditionExpression, location_name: 'queryCondition', traits: {"smithy.api#documentation" => "<p>Information about how to query content.</p>"}))
    QueryAssistantInput.add_member(:query_input_data, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryInputData, location_name: 'queryInputData', traits: {"smithy.api#documentation" => "<p>Information about the query.</p>"}))
    QueryAssistantInput.add_member(:override_knowledge_base_search_type, Smithy::Schema::Shapes::ShapeRef.new(shape: KnowledgeBaseSearchType, location_name: 'overrideKnowledgeBaseSearchType', traits: {"smithy.api#documentation" => "<p>The search type to be used against the Knowledge Base for this request. The values can be <code>SEMANTIC</code> which uses vector embeddings or <code>HYBRID</code> which use vector embeddings and raw text.</p>"}))
    QueryAssistantInput.type = Types::QueryAssistantInput
    QueryAssistantOutput.add_member(:results, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryResultsList, location_name: 'results', traits: {"smithy.api#documentation" => "<p>The results of the query.</p>", "smithy.api#required" => {}}))
    QueryAssistantOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If there are additional results, this is the token for the next set of results.</p>"}))
    QueryAssistantOutput.type = Types::QueryAssistantOutput
    QueryCondition.add_member(:single, Types::QueryCondition::Single, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryConditionItem, location_name: 'single', traits: {"smithy.api#documentation" => "<p>The condition for the query.</p>"}))
    QueryCondition.add_member(:unknown, Types::QueryCondition::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    QueryCondition.type = Types::QueryCondition
    QueryConditionExpression.member = Smithy::Schema::Shapes::ShapeRef.new(shape: QueryCondition)
    QueryConditionItem.add_member(:field, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryConditionFieldName, location_name: 'field', traits: {"smithy.api#documentation" => "<p> The name of the field for query condition to query on.</p>", "smithy.api#required" => {}}))
    QueryConditionItem.add_member(:comparator, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryConditionComparisonOperator, location_name: 'comparator', traits: {"smithy.api#documentation" => "<p>The comparison operator for query condition to query on.</p>", "smithy.api#required" => {}}))
    QueryConditionItem.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'value', traits: {"smithy.api#documentation" => "<p>The value for the query condition to query on.</p>", "smithy.api#required" => {}}))
    QueryConditionItem.type = Types::QueryConditionItem
    QueryInputData.add_member(:query_text_input_data, Types::QueryInputData::QueryTextInputData, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryTextInputData, location_name: 'queryTextInputData', traits: {"smithy.api#documentation" => "<p>Input information for the query.</p>"}))
    QueryInputData.add_member(:intent_input_data, Types::QueryInputData::IntentInputData, Smithy::Schema::Shapes::ShapeRef.new(shape: IntentInputData, location_name: 'intentInputData', traits: {"smithy.api#documentation" => "<p>Input information for the intent.</p>"}))
    QueryInputData.add_member(:unknown, Types::QueryInputData::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    QueryInputData.type = Types::QueryInputData
    QueryRecommendationTriggerData.add_member(:text, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryText, location_name: 'text', traits: {"smithy.api#documentation" => "<p>The text associated with the recommendation trigger.</p>"}))
    QueryRecommendationTriggerData.type = Types::QueryRecommendationTriggerData
    QueryResultsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ResultData)
    QueryTextInputData.add_member(:text, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryText, location_name: 'text', traits: {"smithy.api#documentation" => "<p>The text to search for.</p>", "smithy.api#required" => {}}))
    QueryTextInputData.type = Types::QueryTextInputData
    QuickResponseContentProvider.add_member(:content, Types::QuickResponseContentProvider::Content, Smithy::Schema::Shapes::ShapeRef.new(shape: QuickResponseContent, location_name: 'content', traits: {"smithy.api#documentation" => "<p>The content of the quick response.</p>"}))
    QuickResponseContentProvider.add_member(:unknown, Types::QuickResponseContentProvider::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    QuickResponseContentProvider.type = Types::QuickResponseContentProvider
    QuickResponseContents.add_member(:plain_text, Smithy::Schema::Shapes::ShapeRef.new(shape: QuickResponseContentProvider, location_name: 'plainText'))
    QuickResponseContents.add_member(:markdown, Smithy::Schema::Shapes::ShapeRef.new(shape: QuickResponseContentProvider, location_name: 'markdown'))
    QuickResponseContents.type = Types::QuickResponseContents
    QuickResponseData.add_member(:quick_response_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'quickResponseArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the quick response.</p>", "smithy.api#required" => {}}))
    QuickResponseData.add_member(:quick_response_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'quickResponseId', traits: {"smithy.api#documentation" => "<p>The identifier of the quick response.</p>", "smithy.api#required" => {}}))
    QuickResponseData.add_member(:knowledge_base_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'knowledgeBaseArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the knowledge base.</p>", "smithy.api#required" => {}}))
    QuickResponseData.add_member(:knowledge_base_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'knowledgeBaseId', traits: {"smithy.api#documentation" => "<p>The identifier of the knowledge base. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>", "smithy.api#required" => {}}))
    QuickResponseData.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: QuickResponseName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the quick response.</p>", "smithy.api#required" => {}}))
    QuickResponseData.add_member(:content_type, Smithy::Schema::Shapes::ShapeRef.new(shape: QuickResponseType, location_name: 'contentType', traits: {"smithy.api#documentation" => "<p>The media type of the quick response content.</p> <ul> <li> <p>Use <code>application/x.quickresponse;format=plain</code> for quick response written in plain text.</p> </li> <li> <p>Use <code>application/x.quickresponse;format=markdown</code> for quick response written in richtext.</p> </li> </ul>", "smithy.api#required" => {}}))
    QuickResponseData.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: QuickResponseStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the quick response data.</p>", "smithy.api#required" => {}}))
    QuickResponseData.add_member(:created_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdTime', traits: {"smithy.api#documentation" => "<p>The timestamp when the quick response was created.</p>", "smithy.api#required" => {}, "smithy.api#timestampFormat" => "epoch-seconds"}))
    QuickResponseData.add_member(:last_modified_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'lastModifiedTime', traits: {"smithy.api#documentation" => "<p>The timestamp when the quick response data was last modified.</p>", "smithy.api#required" => {}, "smithy.api#timestampFormat" => "epoch-seconds"}))
    QuickResponseData.add_member(:contents, Smithy::Schema::Shapes::ShapeRef.new(shape: QuickResponseContents, location_name: 'contents', traits: {"smithy.api#documentation" => "<p>The contents of the quick response.</p>"}))
    QuickResponseData.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: QuickResponseDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the quick response.</p>"}))
    QuickResponseData.add_member(:grouping_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupingConfiguration, location_name: 'groupingConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration information of the user groups that the quick response is accessible to.</p>"}))
    QuickResponseData.add_member(:shortcut_key, Smithy::Schema::Shapes::ShapeRef.new(shape: ShortCutKey, location_name: 'shortcutKey', traits: {"smithy.api#documentation" => "<p>The shortcut key of the quick response. The value should be unique across the knowledge base.</p>"}))
    QuickResponseData.add_member(:last_modified_by, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericArn, location_name: 'lastModifiedBy', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the user who last updated the quick response data.</p>"}))
    QuickResponseData.add_member(:is_active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'isActive', traits: {"smithy.api#documentation" => "<p>Whether the quick response is active.</p>"}))
    QuickResponseData.add_member(:channels, Smithy::Schema::Shapes::ShapeRef.new(shape: Channels, location_name: 'channels', traits: {"smithy.api#documentation" => "<p>The Amazon Connect contact channels this quick response applies to. The supported contact channel types include <code>Chat</code>.</p>"}))
    QuickResponseData.add_member(:language, Smithy::Schema::Shapes::ShapeRef.new(shape: LanguageCode, location_name: 'language', traits: {"smithy.api#documentation" => "<p>The language code value for the language in which the quick response is written. The supported language codes include <code>de_DE</code>, <code>en_US</code>, <code>es_ES</code>, <code>fr_FR</code>, <code>id_ID</code>, <code>it_IT</code>, <code>ja_JP</code>, <code>ko_KR</code>, <code>pt_BR</code>, <code>zh_CN</code>, <code>zh_TW</code> </p>"}))
    QuickResponseData.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags used to organize, track, or control access for this resource.</p>"}))
    QuickResponseData.type = Types::QuickResponseData
    QuickResponseDataProvider.add_member(:content, Types::QuickResponseDataProvider::Content, Smithy::Schema::Shapes::ShapeRef.new(shape: QuickResponseContent, location_name: 'content', traits: {"smithy.api#documentation" => "<p>The content of the quick response.</p>"}))
    QuickResponseDataProvider.add_member(:unknown, Types::QuickResponseDataProvider::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    QuickResponseDataProvider.type = Types::QuickResponseDataProvider
    QuickResponseFilterField.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the attribute field to filter the quick responses by.</p>", "smithy.api#required" => {}}))
    QuickResponseFilterField.add_member(:values, Smithy::Schema::Shapes::ShapeRef.new(shape: QuickResponseFilterValueList, location_name: 'values', traits: {"smithy.api#documentation" => "<p>The values of attribute field to filter the quick response by.</p>"}))
    QuickResponseFilterField.add_member(:operator, Smithy::Schema::Shapes::ShapeRef.new(shape: QuickResponseFilterOperator, location_name: 'operator', traits: {"smithy.api#documentation" => "<p>The operator to use for filtering.</p>", "smithy.api#required" => {}}))
    QuickResponseFilterField.add_member(:include_no_existence, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'includeNoExistence', traits: {"smithy.api#documentation" => "<p>Whether to treat null value as a match for the attribute field.</p>"}))
    QuickResponseFilterField.type = Types::QuickResponseFilterField
    QuickResponseFilterFieldList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: QuickResponseFilterField)
    QuickResponseFilterValueList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: QuickResponseFilterValue)
    QuickResponseOrderField.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the attribute to order the quick response query results by.</p>", "smithy.api#required" => {}}))
    QuickResponseOrderField.add_member(:order, Smithy::Schema::Shapes::ShapeRef.new(shape: Order, location_name: 'order', traits: {"smithy.api#documentation" => "<p>The order at which the quick responses are sorted by.</p>"}))
    QuickResponseOrderField.type = Types::QuickResponseOrderField
    QuickResponseQueryField.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the attribute to query the quick responses by.</p>", "smithy.api#required" => {}}))
    QuickResponseQueryField.add_member(:values, Smithy::Schema::Shapes::ShapeRef.new(shape: QuickResponseQueryValueList, location_name: 'values', traits: {"smithy.api#documentation" => "<p>The values of the attribute to query the quick responses by.</p>", "smithy.api#required" => {}}))
    QuickResponseQueryField.add_member(:operator, Smithy::Schema::Shapes::ShapeRef.new(shape: QuickResponseQueryOperator, location_name: 'operator', traits: {"smithy.api#documentation" => "<p>The operator to use for matching attribute field values in the query.</p>", "smithy.api#required" => {}}))
    QuickResponseQueryField.add_member(:allow_fuzziness, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'allowFuzziness', traits: {"smithy.api#documentation" => "<p>Whether the query expects only exact matches on the attribute field values. The results of the query will only include exact matches if this parameter is set to false.</p>"}))
    QuickResponseQueryField.add_member(:priority, Smithy::Schema::Shapes::ShapeRef.new(shape: Priority, location_name: 'priority', traits: {"smithy.api#documentation" => "<p>The importance of the attribute field when calculating query result relevancy scores. The value set for this parameter affects the ordering of search results.</p>"}))
    QuickResponseQueryField.type = Types::QuickResponseQueryField
    QuickResponseQueryFieldList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: QuickResponseQueryField)
    QuickResponseQueryValueList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: QuickResponseQueryValue)
    QuickResponseSearchExpression.add_member(:queries, Smithy::Schema::Shapes::ShapeRef.new(shape: QuickResponseQueryFieldList, location_name: 'queries', traits: {"smithy.api#documentation" => "<p>The quick response query expressions.</p>"}))
    QuickResponseSearchExpression.add_member(:filters, Smithy::Schema::Shapes::ShapeRef.new(shape: QuickResponseFilterFieldList, location_name: 'filters', traits: {"smithy.api#documentation" => "<p>The configuration of filtering rules applied to quick response query results.</p>"}))
    QuickResponseSearchExpression.add_member(:order_on_field, Smithy::Schema::Shapes::ShapeRef.new(shape: QuickResponseOrderField, location_name: 'orderOnField', traits: {"smithy.api#documentation" => "<p>The quick response attribute fields on which the query results are ordered.</p>"}))
    QuickResponseSearchExpression.type = Types::QuickResponseSearchExpression
    QuickResponseSearchResultData.add_member(:quick_response_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'quickResponseArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the quick response.</p>", "smithy.api#required" => {}}))
    QuickResponseSearchResultData.add_member(:quick_response_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'quickResponseId', traits: {"smithy.api#documentation" => "<p>The identifier of the quick response.</p>", "smithy.api#required" => {}}))
    QuickResponseSearchResultData.add_member(:knowledge_base_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'knowledgeBaseArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the knowledge base.</p>", "smithy.api#required" => {}}))
    QuickResponseSearchResultData.add_member(:knowledge_base_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'knowledgeBaseId', traits: {"smithy.api#documentation" => "<p>The identifier of the knowledge base. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>", "smithy.api#required" => {}}))
    QuickResponseSearchResultData.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: QuickResponseName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the quick response.</p>", "smithy.api#required" => {}}))
    QuickResponseSearchResultData.add_member(:content_type, Smithy::Schema::Shapes::ShapeRef.new(shape: QuickResponseType, location_name: 'contentType', traits: {"smithy.api#documentation" => "<p>The media type of the quick response content.</p> <ul> <li> <p>Use <code>application/x.quickresponse;format=plain</code> for quick response written in plain text.</p> </li> <li> <p>Use <code>application/x.quickresponse;format=markdown</code> for quick response written in richtext.</p> </li> </ul>", "smithy.api#required" => {}}))
    QuickResponseSearchResultData.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: QuickResponseStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The resource status of the quick response.</p>", "smithy.api#required" => {}}))
    QuickResponseSearchResultData.add_member(:contents, Smithy::Schema::Shapes::ShapeRef.new(shape: QuickResponseContents, location_name: 'contents', traits: {"smithy.api#documentation" => "<p>The contents of the quick response.</p>", "smithy.api#required" => {}}))
    QuickResponseSearchResultData.add_member(:created_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdTime', traits: {"smithy.api#documentation" => "<p>The timestamp when the quick response was created.</p>", "smithy.api#required" => {}, "smithy.api#timestampFormat" => "epoch-seconds"}))
    QuickResponseSearchResultData.add_member(:last_modified_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'lastModifiedTime', traits: {"smithy.api#documentation" => "<p>The timestamp when the quick response search result data was last modified.</p>", "smithy.api#required" => {}, "smithy.api#timestampFormat" => "epoch-seconds"}))
    QuickResponseSearchResultData.add_member(:is_active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'isActive', traits: {"smithy.api#documentation" => "<p>Whether the quick response is active.</p>", "smithy.api#required" => {}}))
    QuickResponseSearchResultData.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: QuickResponseDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the quick response.</p>"}))
    QuickResponseSearchResultData.add_member(:grouping_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupingConfiguration, location_name: 'groupingConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration information of the user groups that the quick response is accessible to.</p>"}))
    QuickResponseSearchResultData.add_member(:shortcut_key, Smithy::Schema::Shapes::ShapeRef.new(shape: ShortCutKey, location_name: 'shortcutKey', traits: {"smithy.api#documentation" => "<p>The shortcut key of the quick response. The value should be unique across the knowledge base.</p>"}))
    QuickResponseSearchResultData.add_member(:last_modified_by, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericArn, location_name: 'lastModifiedBy', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the user who last updated the quick response search result data.</p>"}))
    QuickResponseSearchResultData.add_member(:channels, Smithy::Schema::Shapes::ShapeRef.new(shape: Channels, location_name: 'channels', traits: {"smithy.api#documentation" => "<p>The Amazon Connect contact channels this quick response applies to. The supported contact channel types include <code>Chat</code>.</p>"}))
    QuickResponseSearchResultData.add_member(:language, Smithy::Schema::Shapes::ShapeRef.new(shape: LanguageCode, location_name: 'language', traits: {"smithy.api#documentation" => "<p>The language code value for the language in which the quick response is written.</p>"}))
    QuickResponseSearchResultData.add_member(:attributes_not_interpolated, Smithy::Schema::Shapes::ShapeRef.new(shape: ContactAttributeKeys, location_name: 'attributesNotInterpolated', traits: {"smithy.api#documentation" => "<p>The user defined contact attributes that are not resolved when the search result is returned.</p>"}))
    QuickResponseSearchResultData.add_member(:attributes_interpolated, Smithy::Schema::Shapes::ShapeRef.new(shape: ContactAttributeKeys, location_name: 'attributesInterpolated', traits: {"smithy.api#documentation" => "<p>The user defined contact attributes that are resolved when the search result is returned.</p>"}))
    QuickResponseSearchResultData.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags used to organize, track, or control access for this resource.</p>"}))
    QuickResponseSearchResultData.type = Types::QuickResponseSearchResultData
    QuickResponseSearchResultsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: QuickResponseSearchResultData)
    QuickResponseSummary.add_member(:quick_response_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'quickResponseArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the quick response.</p>", "smithy.api#required" => {}}))
    QuickResponseSummary.add_member(:quick_response_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'quickResponseId', traits: {"smithy.api#documentation" => "<p>The identifier of the quick response.</p>", "smithy.api#required" => {}}))
    QuickResponseSummary.add_member(:knowledge_base_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'knowledgeBaseArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the knowledge base.</p>", "smithy.api#required" => {}}))
    QuickResponseSummary.add_member(:knowledge_base_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'knowledgeBaseId', traits: {"smithy.api#documentation" => "<p>The identifier of the knowledge base.</p>", "smithy.api#required" => {}}))
    QuickResponseSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: QuickResponseName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the quick response.</p>", "smithy.api#required" => {}}))
    QuickResponseSummary.add_member(:content_type, Smithy::Schema::Shapes::ShapeRef.new(shape: QuickResponseType, location_name: 'contentType', traits: {"smithy.api#documentation" => "<p>The media type of the quick response content.</p> <ul> <li> <p>Use <code>application/x.quickresponse;format=plain</code> for quick response written in plain text.</p> </li> <li> <p>Use <code>application/x.quickresponse;format=markdown</code> for quick response written in richtext.</p> </li> </ul>", "smithy.api#required" => {}}))
    QuickResponseSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: QuickResponseStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The resource status of the quick response.</p>", "smithy.api#required" => {}}))
    QuickResponseSummary.add_member(:created_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdTime', traits: {"smithy.api#documentation" => "<p>The timestamp when the quick response was created.</p>", "smithy.api#required" => {}, "smithy.api#timestampFormat" => "epoch-seconds"}))
    QuickResponseSummary.add_member(:last_modified_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'lastModifiedTime', traits: {"smithy.api#documentation" => "<p>The timestamp when the quick response summary was last modified.</p>", "smithy.api#required" => {}, "smithy.api#timestampFormat" => "epoch-seconds"}))
    QuickResponseSummary.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: QuickResponseDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the quick response.</p>"}))
    QuickResponseSummary.add_member(:last_modified_by, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericArn, location_name: 'lastModifiedBy', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the user who last updated the quick response data.</p>"}))
    QuickResponseSummary.add_member(:is_active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'isActive', traits: {"smithy.api#documentation" => "<p>Whether the quick response is active.</p>"}))
    QuickResponseSummary.add_member(:channels, Smithy::Schema::Shapes::ShapeRef.new(shape: Channels, location_name: 'channels', traits: {"smithy.api#documentation" => "<p>The Amazon Connect contact channels this quick response applies to. The supported contact channel types include <code>Chat</code>.</p>"}))
    QuickResponseSummary.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags used to organize, track, or control access for this resource.</p>"}))
    QuickResponseSummary.type = Types::QuickResponseSummary
    QuickResponseSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: QuickResponseSummary)
    RankingData.add_member(:relevance_score, Smithy::Schema::Shapes::ShapeRef.new(shape: RelevanceScore, location_name: 'relevanceScore', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The relevance level of the recommendation.</p>"}))
    RankingData.add_member(:relevance_level, Smithy::Schema::Shapes::ShapeRef.new(shape: RelevanceLevel, location_name: 'relevanceLevel', traits: {"smithy.api#documentation" => "<p>The relevance score of the content.</p>"}))
    RankingData.type = Types::RankingData
    RecommendationData.add_member(:recommendation_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RecommendationId, location_name: 'recommendationId', traits: {"smithy.api#documentation" => "<p>The identifier of the recommendation.</p>", "smithy.api#required" => {}}))
    RecommendationData.add_member(:document, Smithy::Schema::Shapes::ShapeRef.new(shape: Document, location_name: 'document', traits: {"smithy.api#documentation" => "<p>The recommended document.</p>"}))
    RecommendationData.add_member(:relevance_score, Smithy::Schema::Shapes::ShapeRef.new(shape: RelevanceScore, location_name: 'relevanceScore', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The relevance score of the recommendation.</p>"}))
    RecommendationData.add_member(:relevance_level, Smithy::Schema::Shapes::ShapeRef.new(shape: RelevanceLevel, location_name: 'relevanceLevel', traits: {"smithy.api#documentation" => "<p>The relevance level of the recommendation.</p>"}))
    RecommendationData.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: RecommendationType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The type of recommendation.</p>"}))
    RecommendationData.add_member(:data, Smithy::Schema::Shapes::ShapeRef.new(shape: DataSummary, location_name: 'data', traits: {"smithy.api#documentation" => "<p> Summary of the recommended content.</p>"}))
    RecommendationData.type = Types::RecommendationData
    RecommendationIdList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RecommendationId)
    RecommendationList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RecommendationData)
    RecommendationTrigger.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The identifier of the recommendation trigger.</p>", "smithy.api#required" => {}}))
    RecommendationTrigger.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: RecommendationTriggerType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The type of recommendation trigger.</p>", "smithy.api#required" => {}}))
    RecommendationTrigger.add_member(:source, Smithy::Schema::Shapes::ShapeRef.new(shape: RecommendationSourceType, location_name: 'source', traits: {"smithy.api#documentation" => "<p>The source of the recommendation trigger.</p> <ul> <li> <p>ISSUE_DETECTION: The corresponding recommendations were triggered by a Contact Lens issue.</p> </li> <li> <p>RULE_EVALUATION: The corresponding recommendations were triggered by a Contact Lens rule.</p> </li> </ul>", "smithy.api#required" => {}}))
    RecommendationTrigger.add_member(:data, Smithy::Schema::Shapes::ShapeRef.new(shape: RecommendationTriggerData, location_name: 'data', traits: {"smithy.api#documentation" => "<p>A union type containing information related to the trigger.</p>", "smithy.api#required" => {}}))
    RecommendationTrigger.add_member(:recommendation_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: RecommendationIdList, location_name: 'recommendationIds', traits: {"smithy.api#documentation" => "<p>The identifiers of the recommendations.</p>", "smithy.api#required" => {}}))
    RecommendationTrigger.type = Types::RecommendationTrigger
    RecommendationTriggerData.add_member(:query, Types::RecommendationTriggerData::Query, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryRecommendationTriggerData, location_name: 'query', traits: {"smithy.api#documentation" => "<p>Data associated with the QUERY RecommendationTriggerType.</p>"}))
    RecommendationTriggerData.add_member(:unknown, Types::RecommendationTriggerData::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    RecommendationTriggerData.type = Types::RecommendationTriggerData
    RecommendationTriggerList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RecommendationTrigger)
    RemoveAssistantAIAgentRequest.add_member(:assistant_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'assistantId', traits: {"smithy.api#documentation" => "<p>The identifier of the Amazon Q in Connect assistant. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RemoveAssistantAIAgentRequest.add_member(:ai_agent_type, Smithy::Schema::Shapes::ShapeRef.new(shape: AIAgentType, location_name: 'aiAgentType', traits: {"smithy.api#documentation" => "<p>The type of the AI Agent being removed for use by default from the Amazon Q in Connect Assistant.</p>", "smithy.api#httpQuery" => "aiAgentType", "smithy.api#required" => {}}))
    RemoveAssistantAIAgentRequest.type = Types::RemoveAssistantAIAgentRequest
    RemoveAssistantAIAgentResponse.type = Types::RemoveAssistantAIAgentResponse
    RemoveKnowledgeBaseTemplateUriInput.add_member(:knowledge_base_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'knowledgeBaseId', traits: {"smithy.api#documentation" => "<p>The identifier of the knowledge base. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RemoveKnowledgeBaseTemplateUriInput.type = Types::RemoveKnowledgeBaseTemplateUriInput
    RemoveKnowledgeBaseTemplateUriOutput.type = Types::RemoveKnowledgeBaseTemplateUriOutput
    RenderMessageTemplateRequest.add_member(:knowledge_base_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'knowledgeBaseId', traits: {"smithy.api#documentation" => "<p>The identifier of the knowledge base. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RenderMessageTemplateRequest.add_member(:message_template_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArnOrEitherWithQualifier, location_name: 'messageTemplateId', traits: {"smithy.api#documentation" => "<p>The identifier of the message template. Can be either the ID or the ARN.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RenderMessageTemplateRequest.add_member(:attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateAttributes, location_name: 'attributes', traits: {"smithy.api#documentation" => "<p>An object that specifies the values to use for variables in the message template. This object contains different categories of key-value pairs. Each key defines a variable or placeholder in the message template. The corresponding value defines the value for that variable.</p>", "smithy.api#required" => {}}))
    RenderMessageTemplateRequest.type = Types::RenderMessageTemplateRequest
    RenderMessageTemplateResponse.add_member(:content, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateContentProvider, location_name: 'content', traits: {"smithy.api#documentation" => "<p>The content of the message template.</p>", "smithy.api#required" => {}}))
    RenderMessageTemplateResponse.add_member(:attributes_not_interpolated, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateAttributeKeyList, location_name: 'attributesNotInterpolated', traits: {"smithy.api#documentation" => "<p>The attribute keys that are not resolved.</p>"}))
    RenderMessageTemplateResponse.add_member(:attachments, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateAttachmentList, location_name: 'attachments', traits: {"smithy.api#documentation" => "<p>The message template attachments.</p>"}))
    RenderMessageTemplateResponse.type = Types::RenderMessageTemplateResponse
    RenderingConfiguration.add_member(:template_uri, Smithy::Schema::Shapes::ShapeRef.new(shape: Uri, location_name: 'templateUri', traits: {"smithy.api#documentation" => "<p>A URI template containing exactly one variable in <code>${variableName} </code>format. This can only be set for <code>EXTERNAL</code> knowledge bases. For Salesforce, ServiceNow, and Zendesk, the variable must be one of the following:</p> <ul> <li> <p>Salesforce: <code>Id</code>, <code>ArticleNumber</code>, <code>VersionNumber</code>, <code>Title</code>, <code>PublishStatus</code>, or <code>IsDeleted</code> </p> </li> <li> <p>ServiceNow: <code>number</code>, <code>short_description</code>, <code>sys_mod_count</code>, <code>workflow_state</code>, or <code>active</code> </p> </li> <li> <p>Zendesk: <code>id</code>, <code>title</code>, <code>updated_at</code>, or <code>draft</code> </p> </li> </ul> <p>The variable is replaced with the actual value for a piece of content when calling <a href=\"https://docs.aws.amazon.com/amazon-q-connect/latest/APIReference/API_GetContent.html\">GetContent</a>. </p>"}))
    RenderingConfiguration.type = Types::RenderingConfiguration
    RequestTimeoutException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message'))
    RequestTimeoutException.type = Types::RequestTimeoutException
    ResourceNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message'))
    ResourceNotFoundException.add_member(:resource_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceName', traits: {"smithy.api#documentation" => "<p>The specified resource name.</p>"}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResultData.add_member(:result_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'resultId', traits: {"smithy.api#documentation" => "<p>The identifier of the result data.</p>", "smithy.api#required" => {}}))
    ResultData.add_member(:document, Smithy::Schema::Shapes::ShapeRef.new(shape: Document, location_name: 'document', traits: {"smithy.api#documentation" => "<p>The document.</p>"}))
    ResultData.add_member(:relevance_score, Smithy::Schema::Shapes::ShapeRef.new(shape: RelevanceScore, location_name: 'relevanceScore', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The relevance score of the results.</p>"}))
    ResultData.add_member(:data, Smithy::Schema::Shapes::ShapeRef.new(shape: DataSummary, location_name: 'data', traits: {"smithy.api#documentation" => "<p> Summary of the recommended content.</p>"}))
    ResultData.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryResultType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The type of the query result.</p>"}))
    ResultData.type = Types::ResultData
    RuntimeSessionData.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptySensitiveString, location_name: 'key', traits: {"smithy.api#documentation" => "<p>The key of the data stored on the session.</p>", "smithy.api#required" => {}}))
    RuntimeSessionData.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: RuntimeSessionDataValue, location_name: 'value', traits: {"smithy.api#documentation" => "<p>The value of the data stored on the session.</p>", "smithy.api#required" => {}}))
    RuntimeSessionData.type = Types::RuntimeSessionData
    RuntimeSessionDataList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RuntimeSessionData)
    RuntimeSessionDataValue.add_member(:string_value, Types::RuntimeSessionDataValue::StringValue, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptySensitiveString, location_name: 'stringValue', traits: {"smithy.api#documentation" => "<p>The string value of the data stored on the session.</p>"}))
    RuntimeSessionDataValue.add_member(:unknown, Types::RuntimeSessionDataValue::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    RuntimeSessionDataValue.type = Types::RuntimeSessionDataValue
    SMSMessageTemplateContent.add_member(:body, Smithy::Schema::Shapes::ShapeRef.new(shape: SMSMessageTemplateContentBody, location_name: 'body', traits: {"smithy.api#documentation" => "<p>The body to use in SMS messages.</p>"}))
    SMSMessageTemplateContent.type = Types::SMSMessageTemplateContent
    SMSMessageTemplateContentBody.add_member(:plain_text, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateBodyContentProvider, location_name: 'plainText', traits: {"smithy.api#documentation" => "<p>The message body to use in SMS messages.</p>"}))
    SMSMessageTemplateContentBody.type = Types::SMSMessageTemplateContentBody
    SearchContentInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    SearchContentInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return per page.</p>", "smithy.api#httpQuery" => "maxResults"}))
    SearchContentInput.add_member(:knowledge_base_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'knowledgeBaseId', traits: {"smithy.api#documentation" => "<p>The identifier of the knowledge base. This should not be a QUICK_RESPONSES type knowledge base. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    SearchContentInput.add_member(:search_expression, Smithy::Schema::Shapes::ShapeRef.new(shape: SearchExpression, location_name: 'searchExpression', traits: {"smithy.api#documentation" => "<p>The search expression to filter results.</p>", "smithy.api#required" => {}}))
    SearchContentInput.type = Types::SearchContentInput
    SearchContentOutput.add_member(:content_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: ContentSummaryList, location_name: 'contentSummaries', traits: {"smithy.api#documentation" => "<p>Summary information about the content.</p>", "smithy.api#required" => {}}))
    SearchContentOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If there are additional results, this is the token for the next set of results.</p>"}))
    SearchContentOutput.type = Types::SearchContentOutput
    SearchExpression.add_member(:filters, Smithy::Schema::Shapes::ShapeRef.new(shape: FilterList, location_name: 'filters', traits: {"smithy.api#documentation" => "<p>The search expression filters.</p>", "smithy.api#required" => {}}))
    SearchExpression.type = Types::SearchExpression
    SearchMessageTemplatesRequest.add_member(:knowledge_base_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'knowledgeBaseId', traits: {"smithy.api#documentation" => "<p>The identifier of the knowledge base. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    SearchMessageTemplatesRequest.add_member(:search_expression, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateSearchExpression, location_name: 'searchExpression', traits: {"smithy.api#documentation" => "<p>The search expression for querying the message template.</p>", "smithy.api#required" => {}}))
    SearchMessageTemplatesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    SearchMessageTemplatesRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return per page.</p>", "smithy.api#httpQuery" => "maxResults"}))
    SearchMessageTemplatesRequest.type = Types::SearchMessageTemplatesRequest
    SearchMessageTemplatesResponse.add_member(:results, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateSearchResultsList, location_name: 'results', traits: {"smithy.api#documentation" => "<p>The results of the message template search.</p>", "smithy.api#required" => {}}))
    SearchMessageTemplatesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If there are additional results, this is the token for the next set of results.</p>"}))
    SearchMessageTemplatesResponse.type = Types::SearchMessageTemplatesResponse
    SearchQuickResponsesRequest.add_member(:knowledge_base_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'knowledgeBaseId', traits: {"smithy.api#documentation" => "<p>The identifier of the knowledge base. This should be a QUICK_RESPONSES type knowledge base. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    SearchQuickResponsesRequest.add_member(:search_expression, Smithy::Schema::Shapes::ShapeRef.new(shape: QuickResponseSearchExpression, location_name: 'searchExpression', traits: {"smithy.api#documentation" => "<p>The search expression for querying the quick response.</p>", "smithy.api#required" => {}}))
    SearchQuickResponsesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    SearchQuickResponsesRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return per page.</p>", "smithy.api#httpQuery" => "maxResults"}))
    SearchQuickResponsesRequest.add_member(:attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: ContactAttributes, location_name: 'attributes', traits: {"smithy.api#documentation" => "<p>The <a href=\"https://docs.aws.amazon.com/connect/latest/adminguide/connect-attrib-list.html#user-defined-attributes\">user-defined Amazon Connect contact attributes</a> to be resolved when search results are returned.</p>"}))
    SearchQuickResponsesRequest.type = Types::SearchQuickResponsesRequest
    SearchQuickResponsesResponse.add_member(:results, Smithy::Schema::Shapes::ShapeRef.new(shape: QuickResponseSearchResultsList, location_name: 'results', traits: {"smithy.api#documentation" => "<p>The results of the quick response search.</p>", "smithy.api#required" => {}}))
    SearchQuickResponsesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.</p>"}))
    SearchQuickResponsesResponse.type = Types::SearchQuickResponsesResponse
    SearchSessionsInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    SearchSessionsInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return per page.</p>", "smithy.api#httpQuery" => "maxResults"}))
    SearchSessionsInput.add_member(:assistant_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'assistantId', traits: {"smithy.api#documentation" => "<p>The identifier of the Amazon Q in Connect assistant. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    SearchSessionsInput.add_member(:search_expression, Smithy::Schema::Shapes::ShapeRef.new(shape: SearchExpression, location_name: 'searchExpression', traits: {"smithy.api#documentation" => "<p>The search expression to filter results.</p>", "smithy.api#required" => {}}))
    SearchSessionsInput.type = Types::SearchSessionsInput
    SearchSessionsOutput.add_member(:session_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: SessionSummaries, location_name: 'sessionSummaries', traits: {"smithy.api#documentation" => "<p>Summary information about the sessions.</p>", "smithy.api#required" => {}}))
    SearchSessionsOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If there are additional results, this is the token for the next set of results.</p>"}))
    SearchSessionsOutput.type = Types::SearchSessionsOutput
    SeedUrl.add_member(:url, Smithy::Schema::Shapes::ShapeRef.new(shape: WebUrl, location_name: 'url', traits: {"smithy.api#documentation" => "<p>URL for crawling</p>"}))
    SeedUrl.type = Types::SeedUrl
    SeedUrls.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SeedUrl)
    SelfServiceAIAgentConfiguration.add_member(:self_service_pre_processing_ai_prompt_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidWithQualifier, location_name: 'selfServicePreProcessingAIPromptId', traits: {"smithy.api#documentation" => "<p>The AI Prompt identifier for the Self Service Pre-Processing prompt used by the SELF_SERVICE AI Agent</p>"}))
    SelfServiceAIAgentConfiguration.add_member(:self_service_answer_generation_ai_prompt_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidWithQualifier, location_name: 'selfServiceAnswerGenerationAIPromptId', traits: {"smithy.api#documentation" => "<p>The AI Prompt identifier for the Self Service Answer Generation prompt used by the SELF_SERVICE AI Agent</p>"}))
    SelfServiceAIAgentConfiguration.add_member(:self_service_ai_guardrail_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidWithQualifier, location_name: 'selfServiceAIGuardrailId', traits: {"smithy.api#documentation" => "<p>The AI Guardrail identifier used by the SELF_SERVICE AI Agent.</p>"}))
    SelfServiceAIAgentConfiguration.add_member(:association_configurations, Smithy::Schema::Shapes::ShapeRef.new(shape: AssociationConfigurationList, location_name: 'associationConfigurations', traits: {"smithy.api#documentation" => "<p>The association configurations for overriding behavior on this AI Agent.</p>"}))
    SelfServiceAIAgentConfiguration.type = Types::SelfServiceAIAgentConfiguration
    SelfServiceConversationHistory.add_member(:turn_number, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'turnNumber', traits: {"smithy.api#documentation" => "<p>The number of turn of the conversation history data.</p>", "smithy.api#required" => {}}))
    SelfServiceConversationHistory.add_member(:input_transcript, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveString, location_name: 'inputTranscript', traits: {"smithy.api#documentation" => "<p>The input transcript of the conversation history data.</p>"}))
    SelfServiceConversationHistory.add_member(:bot_response, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveString, location_name: 'botResponse', traits: {"smithy.api#documentation" => "<p>The bot response of the conversation history data.</p>"}))
    SelfServiceConversationHistory.type = Types::SelfServiceConversationHistory
    SelfServiceConversationHistoryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SelfServiceConversationHistory)
    SemanticChunkingConfiguration.add_member(:max_tokens, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxTokens', traits: {"smithy.api#documentation" => "<p>The maximum number of tokens that a chunk can contain.</p>", "smithy.api#range" => {"min" => 1}, "smithy.api#required" => {}}))
    SemanticChunkingConfiguration.add_member(:buffer_size, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'bufferSize', traits: {"smithy.api#documentation" => "<p>The buffer size.</p>", "smithy.api#range" => {"min" => 0, "max" => 1}, "smithy.api#required" => {}}))
    SemanticChunkingConfiguration.add_member(:breakpoint_percentile_threshold, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'breakpointPercentileThreshold', traits: {"smithy.api#documentation" => "<p>The dissimilarity threshold for splitting chunks.</p>", "smithy.api#range" => {"min" => 50, "max" => 99}, "smithy.api#required" => {}}))
    SemanticChunkingConfiguration.type = Types::SemanticChunkingConfiguration
    SendMessageRequest.add_member(:assistant_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'assistantId', traits: {"smithy.api#documentation" => "<p>The identifier of the Amazon Q in Connect assistant.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    SendMessageRequest.add_member(:session_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'sessionId', traits: {"smithy.api#documentation" => "<p>The identifier of the Amazon Q in Connect session.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    SendMessageRequest.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The message type.</p>", "smithy.api#required" => {}}))
    SendMessageRequest.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageInput, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message data to submit to the Amazon Q in Connect session.</p>", "smithy.api#required" => {}}))
    SendMessageRequest.add_member(:conversation_context, Smithy::Schema::Shapes::ShapeRef.new(shape: ConversationContext, location_name: 'conversationContext', traits: {"smithy.api#documentation" => "<p>The conversation context before the Amazon Q in Connect session.</p>"}))
    SendMessageRequest.add_member(:configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageConfiguration, location_name: 'configuration', traits: {"smithy.api#documentation" => "<p>The configuration of the <a href=\"https://docs.aws.amazon.com/connect/latest/APIReference/API_amazon-q-connect_SendMessage.html\">SendMessage</a> request.</p>"}))
    SendMessageRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request. If not provided, the AWS SDK populates this field.For more information about idempotency, see Making retries safe with idempotent APIs.</p>", "smithy.api#idempotencyToken" => {}}))
    SendMessageRequest.type = Types::SendMessageRequest
    SendMessageResponse.add_member(:request_message_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'requestMessageId', traits: {"smithy.api#documentation" => "<p>The identifier of the submitted message.</p>", "smithy.api#required" => {}}))
    SendMessageResponse.add_member(:configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageConfiguration, location_name: 'configuration', traits: {"smithy.api#documentation" => "<p>The configuration of the <a href=\"https://docs.aws.amazon.com/connect/latest/APIReference/API_amazon-q-connect_SendMessage.html\">SendMessage</a> request.</p>"}))
    SendMessageResponse.add_member(:next_message_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextMessageToken', traits: {"smithy.api#documentation" => "<p>The token for the next message, used by GetNextMessage.</p>", "smithy.api#required" => {}}))
    SendMessageResponse.type = Types::SendMessageResponse
    ServerSideEncryptionConfiguration.add_member(:kms_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'kmsKeyId', traits: {"smithy.api#documentation" => "<p>The customer managed key used for encryption. For more information about setting up a customer managed key for Amazon Q in Connect, see <a href=\"https://docs.aws.amazon.com/connect/latest/adminguide/enable-q.html\">Enable Amazon Q in Connect for your instance</a>. For information about valid ID values, see <a href=\"https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-id\">Key identifiers (KeyId)</a>.</p>"}))
    ServerSideEncryptionConfiguration.type = Types::ServerSideEncryptionConfiguration
    ServiceQuotaExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message'))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    SessionData.add_member(:session_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'sessionArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the session.</p>", "smithy.api#required" => {}}))
    SessionData.add_member(:session_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'sessionId', traits: {"smithy.api#documentation" => "<p>The identifier of the session.</p>", "smithy.api#required" => {}}))
    SessionData.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the session.</p>", "smithy.api#required" => {}}))
    SessionData.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the session.</p>"}))
    SessionData.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags used to organize, track, or control access for this resource.</p>"}))
    SessionData.add_member(:integration_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: SessionIntegrationConfiguration, location_name: 'integrationConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration information for the session integration.</p>"}))
    SessionData.add_member(:tag_filter, Smithy::Schema::Shapes::ShapeRef.new(shape: TagFilter, location_name: 'tagFilter', traits: {"smithy.api#documentation" => "<p>An object that can be used to specify Tag conditions.</p>"}))
    SessionData.add_member(:ai_agent_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: AIAgentConfigurationMap, location_name: 'aiAgentConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration of the AI Agents (mapped by AI Agent Type to AI Agent version) that should be used by Amazon Q in Connect for this Session.</p>"}))
    SessionData.add_member(:origin, Smithy::Schema::Shapes::ShapeRef.new(shape: Origin, location_name: 'origin', traits: {"smithy.api#documentation" => "<p>The origin of the Session to be listed. <code>SYSTEM</code> for a default Session created by Amazon Q in Connect or <code>CUSTOMER</code> for a Session created by calling <a href=\"https://docs.aws.amazon.com/connect/latest/APIReference/API_amazon-q-connect_CreateSession.html\">CreateSession</a> API.</p>"}))
    SessionData.type = Types::SessionData
    SessionIntegrationConfiguration.add_member(:topic_integration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericArn, location_name: 'topicIntegrationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the integrated Amazon SNS topic used for streaming chat messages.</p>"}))
    SessionIntegrationConfiguration.type = Types::SessionIntegrationConfiguration
    SessionSummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SessionSummary)
    SessionSummary.add_member(:session_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'sessionId', traits: {"smithy.api#documentation" => "<p>The identifier of the session.</p>", "smithy.api#required" => {}}))
    SessionSummary.add_member(:session_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'sessionArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the session.</p>", "smithy.api#required" => {}}))
    SessionSummary.add_member(:assistant_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'assistantId', traits: {"smithy.api#documentation" => "<p>The identifier of the Amazon Q in Connect assistant.</p>", "smithy.api#required" => {}}))
    SessionSummary.add_member(:assistant_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'assistantArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Amazon Q in Connect assistant.</p>", "smithy.api#required" => {}}))
    SessionSummary.type = Types::SessionSummary
    SourceConfiguration.add_member(:app_integrations, Types::SourceConfiguration::AppIntegrations, Smithy::Schema::Shapes::ShapeRef.new(shape: AppIntegrationsConfiguration, location_name: 'appIntegrations', traits: {"smithy.api#documentation" => "<p>Configuration information for Amazon AppIntegrations to automatically ingest content.</p>"}))
    SourceConfiguration.add_member(:managed_source_configuration, Types::SourceConfiguration::ManagedSourceConfiguration, Smithy::Schema::Shapes::ShapeRef.new(shape: ManagedSourceConfiguration, location_name: 'managedSourceConfiguration', traits: {"smithy.api#documentation" => "<p>Source configuration for managed resources.</p>"}))
    SourceConfiguration.add_member(:unknown, Types::SourceConfiguration::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    SourceConfiguration.type = Types::SourceConfiguration
    SourceContentDataDetails.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The identifier of the source content.</p>", "smithy.api#required" => {}}))
    SourceContentDataDetails.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceContentType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The type of the source content.</p>", "smithy.api#required" => {}}))
    SourceContentDataDetails.add_member(:text_data, Smithy::Schema::Shapes::ShapeRef.new(shape: TextData, location_name: 'textData', traits: {"smithy.api#documentation" => "<p> Details about the source content text data.</p>", "smithy.api#required" => {}}))
    SourceContentDataDetails.add_member(:ranking_data, Smithy::Schema::Shapes::ShapeRef.new(shape: RankingData, location_name: 'rankingData', traits: {"smithy.api#documentation" => "<p>Details about the source content ranking data.</p>", "smithy.api#required" => {}}))
    SourceContentDataDetails.add_member(:citation_span, Smithy::Schema::Shapes::ShapeRef.new(shape: CitationSpan, location_name: 'citationSpan', traits: {"smithy.api#documentation" => "<p>Contains information about where the text with a citation begins and ends in the generated output.</p>"}))
    SourceContentDataDetails.type = Types::SourceContentDataDetails
    StartContentUploadInput.add_member(:knowledge_base_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'knowledgeBaseId', traits: {"smithy.api#documentation" => "<p>The identifier of the knowledge base. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartContentUploadInput.add_member(:content_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ContentType, location_name: 'contentType', traits: {"smithy.api#documentation" => "<p>The type of content to upload.</p>", "smithy.api#required" => {}}))
    StartContentUploadInput.add_member(:presigned_url_time_to_live, Smithy::Schema::Shapes::ShapeRef.new(shape: TimeToLive, location_name: 'presignedUrlTimeToLive', traits: {"smithy.api#documentation" => "<p>The expected expiration time of the generated presigned URL, specified in minutes.</p>"}))
    StartContentUploadInput.type = Types::StartContentUploadInput
    StartContentUploadOutput.add_member(:upload_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UploadId, location_name: 'uploadId', traits: {"smithy.api#documentation" => "<p>The identifier of the upload.</p>", "smithy.api#required" => {}}))
    StartContentUploadOutput.add_member(:url, Smithy::Schema::Shapes::ShapeRef.new(shape: Url, location_name: 'url', traits: {"smithy.api#documentation" => "<p>The URL of the upload.</p>", "smithy.api#required" => {}}))
    StartContentUploadOutput.add_member(:url_expiry, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'urlExpiry', traits: {"smithy.api#documentation" => "<p>The expiration time of the URL as an epoch timestamp.</p>", "smithy.api#required" => {}, "smithy.api#timestampFormat" => "epoch-seconds"}))
    StartContentUploadOutput.add_member(:headers_to_include, Smithy::Schema::Shapes::ShapeRef.new(shape: Headers, location_name: 'headersToInclude', traits: {"smithy.api#documentation" => "<p>The headers to include in the upload.</p>", "smithy.api#required" => {}}))
    StartContentUploadOutput.type = Types::StartContentUploadOutput
    StartImportJobRequest.add_member(:knowledge_base_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'knowledgeBaseId', traits: {"smithy.api#documentation" => "<p>The identifier of the knowledge base. Can be either the ID or the ARN. URLs cannot contain the ARN.</p> <ul> <li> <p>For importing Amazon Q in Connect quick responses, this should be a <code>QUICK_RESPONSES</code> type knowledge base.</p> </li> </ul>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartImportJobRequest.add_member(:import_job_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ImportJobType, location_name: 'importJobType', traits: {"smithy.api#documentation" => "<p>The type of the import job.</p> <ul> <li> <p>For importing quick response resource, set the value to <code>QUICK_RESPONSES</code>.</p> </li> </ul>", "smithy.api#required" => {}}))
    StartImportJobRequest.add_member(:upload_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UploadId, location_name: 'uploadId', traits: {"smithy.api#documentation" => "<p>A pointer to the uploaded asset. This value is returned by <a href=\"https://docs.aws.amazon.com/wisdom/latest/APIReference/API_StartContentUpload.html\">StartContentUpload</a>.</p>", "smithy.api#required" => {}}))
    StartImportJobRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>The tags used to organize, track, or control access for this resource.</p>", "smithy.api#idempotencyToken" => {}}))
    StartImportJobRequest.add_member(:metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: ContentMetadata, location_name: 'metadata', traits: {"smithy.api#documentation" => "<p>The metadata fields of the imported Amazon Q in Connect resources.</p>"}))
    StartImportJobRequest.add_member(:external_source_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ExternalSourceConfiguration, location_name: 'externalSourceConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration information of the external source that the resource data are imported from.</p>"}))
    StartImportJobRequest.type = Types::StartImportJobRequest
    StartImportJobResponse.add_member(:import_job, Smithy::Schema::Shapes::ShapeRef.new(shape: ImportJobData, location_name: 'importJob', traits: {"smithy.api#documentation" => "<p>The import job.</p>"}))
    StartImportJobResponse.type = Types::StartImportJobResponse
    SystemAttributes.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateAttributeValue, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the task.</p>"}))
    SystemAttributes.add_member(:customer_endpoint, Smithy::Schema::Shapes::ShapeRef.new(shape: SystemEndpointAttributes, location_name: 'customerEndpoint', traits: {"smithy.api#documentation" => "<p>The CustomerEndpoint attribute.</p>"}))
    SystemAttributes.add_member(:system_endpoint, Smithy::Schema::Shapes::ShapeRef.new(shape: SystemEndpointAttributes, location_name: 'systemEndpoint', traits: {"smithy.api#documentation" => "<p>The SystemEndpoint attribute.</p>"}))
    SystemAttributes.type = Types::SystemAttributes
    SystemEndpointAttributes.add_member(:address, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateAttributeValue, location_name: 'address', traits: {"smithy.api#documentation" => "<p>The customer's phone number if used with <code>customerEndpoint</code>, or the number the customer dialed to call your contact center if used with <code>systemEndpoint</code>.</p>"}))
    SystemEndpointAttributes.type = Types::SystemEndpointAttributes
    TagCondition.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey, location_name: 'key', traits: {"smithy.api#documentation" => "<p>The tag key in the tag condition.</p>", "smithy.api#required" => {}}))
    TagCondition.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue, location_name: 'value', traits: {"smithy.api#documentation" => "<p>The tag value in the tag condition.</p>"}))
    TagCondition.type = Types::TagCondition
    TagFilter.add_member(:tag_condition, Types::TagFilter::TagCondition, Smithy::Schema::Shapes::ShapeRef.new(shape: TagCondition, location_name: 'tagCondition', traits: {"smithy.api#documentation" => "<p>A leaf node condition which can be used to specify a tag condition.</p>"}))
    TagFilter.add_member(:and_conditions, Types::TagFilter::AndConditions, Smithy::Schema::Shapes::ShapeRef.new(shape: AndConditions, location_name: 'andConditions', traits: {"smithy.api#documentation" => "<p>A list of conditions which would be applied together with an <code>AND</code> condition.</p>"}))
    TagFilter.add_member(:or_conditions, Types::TagFilter::OrConditions, Smithy::Schema::Shapes::ShapeRef.new(shape: OrConditions, location_name: 'orConditions', traits: {"smithy.api#documentation" => "<p>A list of conditions which would be applied together with an <code>OR</code> condition.</p>"}))
    TagFilter.add_member(:unknown, Types::TagFilter::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    TagFilter.type = Types::TagFilter
    TagKeyList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagResourceInput.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the resource.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags used to organize, track, or control access for this resource.</p>", "smithy.api#required" => {}}))
    TagResourceInput.type = Types::TagResourceInput
    TagResourceOutput.type = Types::TagResourceOutput
    Tags.key = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    Tags.value = Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue)
    TextData.add_member(:title, Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentText, location_name: 'title'))
    TextData.add_member(:excerpt, Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentText, location_name: 'excerpt'))
    TextData.type = Types::TextData
    TextFullAIPromptEditTemplateConfiguration.add_member(:text, Smithy::Schema::Shapes::ShapeRef.new(shape: TextAIPrompt, location_name: 'text', traits: {"smithy.api#documentation" => "<p>The YAML text for the AI Prompt template.</p>", "smithy.api#required" => {}}))
    TextFullAIPromptEditTemplateConfiguration.type = Types::TextFullAIPromptEditTemplateConfiguration
    TextMessage.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveString, location_name: 'value', traits: {"smithy.api#documentation" => "<p>The value of the message data in text type.</p>", "smithy.api#length" => {"min" => 1, "max" => 1024}}))
    TextMessage.type = Types::TextMessage
    ThrottlingException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message'))
    ThrottlingException.type = Types::ThrottlingException
    TooManyTagsException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message'))
    TooManyTagsException.add_member(:resource_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceName', traits: {"smithy.api#documentation" => "<p>The specified resource name.</p>"}))
    TooManyTagsException.type = Types::TooManyTagsException
    UnauthorizedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message'))
    UnauthorizedException.type = Types::UnauthorizedException
    UntagResourceInput.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the resource.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceInput.add_member(:tag_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'tagKeys', traits: {"smithy.api#documentation" => "<p>The tag keys.</p>", "smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceInput.type = Types::UntagResourceInput
    UntagResourceOutput.type = Types::UntagResourceOutput
    UpdateAIAgentRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request. If not provided, the Amazon Web Services SDK populates this field. For more information about idempotency, see <a href=\"http://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/\">Making retries safe with idempotent APIs</a>..</p>", "smithy.api#idempotencyToken" => {}}))
    UpdateAIAgentRequest.add_member(:assistant_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'assistantId', traits: {"smithy.api#documentation" => "<p>The identifier of the Amazon Q in Connect assistant. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateAIAgentRequest.add_member(:ai_agent_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArnOrEitherWithQualifier, location_name: 'aiAgentId', traits: {"smithy.api#documentation" => "<p>The identifier of the Amazon Q in Connect AI Agent.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateAIAgentRequest.add_member(:visibility_status, Smithy::Schema::Shapes::ShapeRef.new(shape: VisibilityStatus, location_name: 'visibilityStatus', traits: {"smithy.api#documentation" => "<p>The visbility status of the Amazon Q in Connect AI Agent.</p>", "smithy.api#required" => {}}))
    UpdateAIAgentRequest.add_member(:configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: AIAgentConfiguration, location_name: 'configuration', traits: {"smithy.api#documentation" => "<p>The configuration of the Amazon Q in Connect AI Agent.</p>"}))
    UpdateAIAgentRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the Amazon Q in Connect AI Agent.</p>"}))
    UpdateAIAgentRequest.type = Types::UpdateAIAgentRequest
    UpdateAIAgentResponse.add_member(:ai_agent, Smithy::Schema::Shapes::ShapeRef.new(shape: AIAgentData, location_name: 'aiAgent', traits: {"smithy.api#documentation" => "<p>The data of the updated Amazon Q in Connect AI Agent.</p>"}))
    UpdateAIAgentResponse.type = Types::UpdateAIAgentResponse
    UpdateAIGuardrailRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request. If not provided, the Amazon Web Services SDK populates this field. For more information about idempotency, see <a href=\"http://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/\">Making retries safe with idempotent APIs</a>..</p>", "smithy.api#idempotencyToken" => {}}))
    UpdateAIGuardrailRequest.add_member(:assistant_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'assistantId', traits: {"smithy.api#documentation" => "<p>The identifier of the Amazon Q in Connect assistant. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateAIGuardrailRequest.add_member(:ai_guardrail_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArnOrEitherWithQualifier, location_name: 'aiGuardrailId', traits: {"smithy.api#documentation" => "<p>The identifier of the Amazon Q in Connect AI Guardrail.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateAIGuardrailRequest.add_member(:visibility_status, Smithy::Schema::Shapes::ShapeRef.new(shape: VisibilityStatus, location_name: 'visibilityStatus', traits: {"smithy.api#documentation" => "<p>The visibility status of the Amazon Q in Connect AI Guardrail.</p>", "smithy.api#required" => {}}))
    UpdateAIGuardrailRequest.add_member(:blocked_input_messaging, Smithy::Schema::Shapes::ShapeRef.new(shape: AIGuardrailBlockedMessaging, location_name: 'blockedInputMessaging', traits: {"smithy.api#documentation" => "<p>The message to return when the AI Guardrail blocks a prompt.</p>", "smithy.api#required" => {}}))
    UpdateAIGuardrailRequest.add_member(:blocked_outputs_messaging, Smithy::Schema::Shapes::ShapeRef.new(shape: AIGuardrailBlockedMessaging, location_name: 'blockedOutputsMessaging', traits: {"smithy.api#documentation" => "<p>The message to return when the AI Guardrail blocks a model response.</p>", "smithy.api#required" => {}}))
    UpdateAIGuardrailRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: AIGuardrailDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A description of the AI Guardrail.</p>"}))
    UpdateAIGuardrailRequest.add_member(:topic_policy_config, Smithy::Schema::Shapes::ShapeRef.new(shape: AIGuardrailTopicPolicyConfig, location_name: 'topicPolicyConfig', traits: {"smithy.api#documentation" => "<p>The topic policies to configure for the AI Guardrail.</p>"}))
    UpdateAIGuardrailRequest.add_member(:content_policy_config, Smithy::Schema::Shapes::ShapeRef.new(shape: AIGuardrailContentPolicyConfig, location_name: 'contentPolicyConfig', traits: {"smithy.api#documentation" => "<p>The content filter policies to configure for the AI Guardrail.</p>"}))
    UpdateAIGuardrailRequest.add_member(:word_policy_config, Smithy::Schema::Shapes::ShapeRef.new(shape: AIGuardrailWordPolicyConfig, location_name: 'wordPolicyConfig', traits: {"smithy.api#documentation" => "<p>The word policy you configure for the AI Guardrail.</p>"}))
    UpdateAIGuardrailRequest.add_member(:sensitive_information_policy_config, Smithy::Schema::Shapes::ShapeRef.new(shape: AIGuardrailSensitiveInformationPolicyConfig, location_name: 'sensitiveInformationPolicyConfig', traits: {"smithy.api#documentation" => "<p>The sensitive information policy to configure for the AI Guardrail.</p>"}))
    UpdateAIGuardrailRequest.add_member(:contextual_grounding_policy_config, Smithy::Schema::Shapes::ShapeRef.new(shape: AIGuardrailContextualGroundingPolicyConfig, location_name: 'contextualGroundingPolicyConfig', traits: {"smithy.api#documentation" => "<p>The contextual grounding policy configuration used to create an AI Guardrail.</p>"}))
    UpdateAIGuardrailRequest.type = Types::UpdateAIGuardrailRequest
    UpdateAIGuardrailResponse.add_member(:ai_guardrail, Smithy::Schema::Shapes::ShapeRef.new(shape: AIGuardrailData, location_name: 'aiGuardrail', traits: {"smithy.api#documentation" => "<p>The data of the updated Amazon Q in Connect AI Guardrail.</p>"}))
    UpdateAIGuardrailResponse.type = Types::UpdateAIGuardrailResponse
    UpdateAIPromptRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request. If not provided, the Amazon Web Services SDK populates this field. For more information about idempotency, see <a href=\"http://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/\">Making retries safe with idempotent APIs</a>..</p>", "smithy.api#idempotencyToken" => {}}))
    UpdateAIPromptRequest.add_member(:assistant_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'assistantId', traits: {"smithy.api#documentation" => "<p>The identifier of the Amazon Q in Connect assistant. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateAIPromptRequest.add_member(:ai_prompt_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArnOrEitherWithQualifier, location_name: 'aiPromptId', traits: {"smithy.api#documentation" => "<p>The identifier of the Amazon Q in Connect AI Prompt.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateAIPromptRequest.add_member(:visibility_status, Smithy::Schema::Shapes::ShapeRef.new(shape: VisibilityStatus, location_name: 'visibilityStatus', traits: {"smithy.api#documentation" => "<p>The visibility status of the Amazon Q in Connect AI prompt.</p>", "smithy.api#required" => {}}))
    UpdateAIPromptRequest.add_member(:template_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: AIPromptTemplateConfiguration, location_name: 'templateConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration of the prompt template for this AI Prompt.</p>"}))
    UpdateAIPromptRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the Amazon Q in Connect AI Prompt.</p>"}))
    UpdateAIPromptRequest.type = Types::UpdateAIPromptRequest
    UpdateAIPromptResponse.add_member(:ai_prompt, Smithy::Schema::Shapes::ShapeRef.new(shape: AIPromptData, location_name: 'aiPrompt', traits: {"smithy.api#documentation" => "<p>The data of the updated Amazon Q in Connect AI Prompt.</p>"}))
    UpdateAIPromptResponse.type = Types::UpdateAIPromptResponse
    UpdateAssistantAIAgentRequest.add_member(:assistant_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'assistantId', traits: {"smithy.api#documentation" => "<p>The identifier of the Amazon Q in Connect assistant. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateAssistantAIAgentRequest.add_member(:ai_agent_type, Smithy::Schema::Shapes::ShapeRef.new(shape: AIAgentType, location_name: 'aiAgentType', traits: {"smithy.api#documentation" => "<p>The type of the AI Agent being updated for use by default on the Amazon Q in Connect Assistant.</p>", "smithy.api#required" => {}}))
    UpdateAssistantAIAgentRequest.add_member(:configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: AIAgentConfigurationData, location_name: 'configuration', traits: {"smithy.api#documentation" => "<p>The configuration of the AI Agent being updated for use by default on the Amazon Q in Connect Assistant.</p>", "smithy.api#required" => {}}))
    UpdateAssistantAIAgentRequest.type = Types::UpdateAssistantAIAgentRequest
    UpdateAssistantAIAgentResponse.add_member(:assistant, Smithy::Schema::Shapes::ShapeRef.new(shape: AssistantData, location_name: 'assistant'))
    UpdateAssistantAIAgentResponse.type = Types::UpdateAssistantAIAgentResponse
    UpdateContentInput.add_member(:knowledge_base_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'knowledgeBaseId', traits: {"smithy.api#documentation" => "<p>The identifier of the knowledge base. This should not be a QUICK_RESPONSES type knowledge base. Can be either the ID or the ARN</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateContentInput.add_member(:content_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'contentId', traits: {"smithy.api#documentation" => "<p>The identifier of the content. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateContentInput.add_member(:revision_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'revisionId', traits: {"smithy.api#documentation" => "<p>The <code>revisionId</code> of the content resource to update, taken from an earlier call to <code>GetContent</code>, <code>GetContentSummary</code>, <code>SearchContent</code>, or <code>ListContents</code>. If included, this argument acts as an optimistic lock to ensure content was not modified since it was last read. If it has been modified, this API throws a <code>PreconditionFailedException</code>.</p>"}))
    UpdateContentInput.add_member(:title, Smithy::Schema::Shapes::ShapeRef.new(shape: ContentTitle, location_name: 'title', traits: {"smithy.api#documentation" => "<p>The title of the content.</p>"}))
    UpdateContentInput.add_member(:override_link_out_uri, Smithy::Schema::Shapes::ShapeRef.new(shape: Uri, location_name: 'overrideLinkOutUri', traits: {"smithy.api#documentation" => "<p>The URI for the article. If the knowledge base has a templateUri, setting this argument overrides it for this piece of content. To remove an existing <code>overrideLinkOurUri</code>, exclude this argument and set <code>removeOverrideLinkOutUri</code> to true.</p>"}))
    UpdateContentInput.add_member(:remove_override_link_out_uri, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'removeOverrideLinkOutUri', traits: {"smithy.api#documentation" => "<p>Unset the existing <code>overrideLinkOutUri</code> if it exists.</p>"}))
    UpdateContentInput.add_member(:metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: ContentMetadata, location_name: 'metadata', traits: {"smithy.api#documentation" => "<p>A key/value map to store attributes without affecting tagging or recommendations. For example, when synchronizing data between an external system and Amazon Q in Connect, you can store an external version identifier as metadata to utilize for determining drift.</p>"}))
    UpdateContentInput.add_member(:upload_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UploadId, location_name: 'uploadId', traits: {"smithy.api#documentation" => "<p>A pointer to the uploaded asset. This value is returned by <a href=\"https://docs.aws.amazon.com/amazon-q-connect/latest/APIReference/API_StartContentUpload.html\">StartContentUpload</a>. </p>"}))
    UpdateContentInput.type = Types::UpdateContentInput
    UpdateContentOutput.add_member(:content, Smithy::Schema::Shapes::ShapeRef.new(shape: ContentData, location_name: 'content', traits: {"smithy.api#documentation" => "<p>The content.</p>"}))
    UpdateContentOutput.type = Types::UpdateContentOutput
    UpdateKnowledgeBaseTemplateUriInput.add_member(:knowledge_base_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'knowledgeBaseId', traits: {"smithy.api#documentation" => "<p>The identifier of the knowledge base. This should not be a QUICK_RESPONSES type knowledge base. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateKnowledgeBaseTemplateUriInput.add_member(:template_uri, Smithy::Schema::Shapes::ShapeRef.new(shape: Uri, location_name: 'templateUri', traits: {"smithy.api#documentation" => "<p>The template URI to update.</p>", "smithy.api#required" => {}}))
    UpdateKnowledgeBaseTemplateUriInput.type = Types::UpdateKnowledgeBaseTemplateUriInput
    UpdateKnowledgeBaseTemplateUriOutput.add_member(:knowledge_base, Smithy::Schema::Shapes::ShapeRef.new(shape: KnowledgeBaseData, location_name: 'knowledgeBase', traits: {"smithy.api#documentation" => "<p>The knowledge base to update.</p>"}))
    UpdateKnowledgeBaseTemplateUriOutput.type = Types::UpdateKnowledgeBaseTemplateUriOutput
    UpdateMessageTemplateMetadataRequest.add_member(:knowledge_base_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'knowledgeBaseId', traits: {"smithy.api#documentation" => "<p>The identifier of the knowledge base. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateMessageTemplateMetadataRequest.add_member(:message_template_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArnOrEitherWithQualifier, location_name: 'messageTemplateId', traits: {"smithy.api#documentation" => "<p>The identifier of the message template. Can be either the ID or the ARN. It cannot contain any qualifier.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateMessageTemplateMetadataRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the message template.</p>"}))
    UpdateMessageTemplateMetadataRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the message template.</p>"}))
    UpdateMessageTemplateMetadataRequest.add_member(:grouping_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupingConfiguration, location_name: 'groupingConfiguration'))
    UpdateMessageTemplateMetadataRequest.type = Types::UpdateMessageTemplateMetadataRequest
    UpdateMessageTemplateMetadataResponse.add_member(:message_template, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateData, location_name: 'messageTemplate', traits: {"smithy.api#documentation" => "<p>The message template.</p>"}))
    UpdateMessageTemplateMetadataResponse.type = Types::UpdateMessageTemplateMetadataResponse
    UpdateMessageTemplateRequest.add_member(:knowledge_base_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'knowledgeBaseId', traits: {"smithy.api#documentation" => "<p>The identifier of the knowledge base. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateMessageTemplateRequest.add_member(:message_template_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArnOrEitherWithQualifier, location_name: 'messageTemplateId', traits: {"smithy.api#documentation" => "<p>The identifier of the message template. Can be either the ID or the ARN. It cannot contain any qualifier.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateMessageTemplateRequest.add_member(:content, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateContentProvider, location_name: 'content', traits: {"smithy.api#documentation" => "<p>The content of the message template.</p>"}))
    UpdateMessageTemplateRequest.add_member(:language, Smithy::Schema::Shapes::ShapeRef.new(shape: LanguageCode, location_name: 'language', traits: {"smithy.api#documentation" => "<p>The language code value for the language in which the quick response is written. The supported language codes include <code>de_DE</code>, <code>en_US</code>, <code>es_ES</code>, <code>fr_FR</code>, <code>id_ID</code>, <code>it_IT</code>, <code>ja_JP</code>, <code>ko_KR</code>, <code>pt_BR</code>, <code>zh_CN</code>, <code>zh_TW</code> </p>"}))
    UpdateMessageTemplateRequest.add_member(:default_attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateAttributes, location_name: 'defaultAttributes', traits: {"smithy.api#documentation" => "<p>An object that specifies the default values to use for variables in the message template. This object contains different categories of key-value pairs. Each key defines a variable or placeholder in the message template. The corresponding value defines the default value for that variable.</p>"}))
    UpdateMessageTemplateRequest.type = Types::UpdateMessageTemplateRequest
    UpdateMessageTemplateResponse.add_member(:message_template, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateData, location_name: 'messageTemplate', traits: {"smithy.api#documentation" => "<p>The message template.</p>"}))
    UpdateMessageTemplateResponse.type = Types::UpdateMessageTemplateResponse
    UpdateQuickResponseRequest.add_member(:knowledge_base_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'knowledgeBaseId', traits: {"smithy.api#documentation" => "<p>The identifier of the knowledge base. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateQuickResponseRequest.add_member(:quick_response_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'quickResponseId', traits: {"smithy.api#documentation" => "<p>The identifier of the quick response.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateQuickResponseRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: QuickResponseName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the quick response.</p>"}))
    UpdateQuickResponseRequest.add_member(:content, Smithy::Schema::Shapes::ShapeRef.new(shape: QuickResponseDataProvider, location_name: 'content', traits: {"smithy.api#documentation" => "<p>The updated content of the quick response.</p>"}))
    UpdateQuickResponseRequest.add_member(:content_type, Smithy::Schema::Shapes::ShapeRef.new(shape: QuickResponseType, location_name: 'contentType', traits: {"smithy.api#documentation" => "<p>The media type of the quick response content.</p> <ul> <li> <p>Use <code>application/x.quickresponse;format=plain</code> for quick response written in plain text.</p> </li> <li> <p>Use <code>application/x.quickresponse;format=markdown</code> for quick response written in richtext.</p> </li> </ul>"}))
    UpdateQuickResponseRequest.add_member(:grouping_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupingConfiguration, location_name: 'groupingConfiguration', traits: {"smithy.api#documentation" => "<p>The updated grouping configuration of the quick response.</p>"}))
    UpdateQuickResponseRequest.add_member(:remove_grouping_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'removeGroupingConfiguration', traits: {"smithy.api#documentation" => "<p>Whether to remove the grouping configuration of the quick response.</p>"}))
    UpdateQuickResponseRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: QuickResponseDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The updated description of the quick response.</p>"}))
    UpdateQuickResponseRequest.add_member(:remove_description, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'removeDescription', traits: {"smithy.api#documentation" => "<p>Whether to remove the description from the quick response.</p>"}))
    UpdateQuickResponseRequest.add_member(:shortcut_key, Smithy::Schema::Shapes::ShapeRef.new(shape: ShortCutKey, location_name: 'shortcutKey', traits: {"smithy.api#documentation" => "<p>The shortcut key of the quick response. The value should be unique across the knowledge base.</p>"}))
    UpdateQuickResponseRequest.add_member(:remove_shortcut_key, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'removeShortcutKey', traits: {"smithy.api#documentation" => "<p>Whether to remove the shortcut key of the quick response.</p>"}))
    UpdateQuickResponseRequest.add_member(:is_active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'isActive', traits: {"smithy.api#documentation" => "<p>Whether the quick response is active. </p>"}))
    UpdateQuickResponseRequest.add_member(:channels, Smithy::Schema::Shapes::ShapeRef.new(shape: Channels, location_name: 'channels', traits: {"smithy.api#documentation" => "<p>The Amazon Connect contact channels this quick response applies to. The supported contact channel types include <code>Chat</code>.</p>"}))
    UpdateQuickResponseRequest.add_member(:language, Smithy::Schema::Shapes::ShapeRef.new(shape: LanguageCode, location_name: 'language', traits: {"smithy.api#documentation" => "<p>The language code value for the language in which the quick response is written. The supported language codes include <code>de_DE</code>, <code>en_US</code>, <code>es_ES</code>, <code>fr_FR</code>, <code>id_ID</code>, <code>it_IT</code>, <code>ja_JP</code>, <code>ko_KR</code>, <code>pt_BR</code>, <code>zh_CN</code>, <code>zh_TW</code> </p>"}))
    UpdateQuickResponseRequest.type = Types::UpdateQuickResponseRequest
    UpdateQuickResponseResponse.add_member(:quick_response, Smithy::Schema::Shapes::ShapeRef.new(shape: QuickResponseData, location_name: 'quickResponse', traits: {"smithy.api#documentation" => "<p>The quick response.</p>"}))
    UpdateQuickResponseResponse.type = Types::UpdateQuickResponseResponse
    UpdateSessionDataRequest.add_member(:assistant_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'assistantId', traits: {"smithy.api#documentation" => "<p>The identifier of the Amazon Q in Connect assistant. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateSessionDataRequest.add_member(:session_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'sessionId', traits: {"smithy.api#documentation" => "<p>The identifier of the session. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateSessionDataRequest.add_member(:namespace, Smithy::Schema::Shapes::ShapeRef.new(shape: SessionDataNamespace, location_name: 'namespace', traits: {"smithy.api#documentation" => "<p>The namespace into which the session data is stored. Supported namespaces are: Custom</p>"}))
    UpdateSessionDataRequest.add_member(:data, Smithy::Schema::Shapes::ShapeRef.new(shape: RuntimeSessionDataList, location_name: 'data', traits: {"smithy.api#documentation" => "<p>The data stored on the Amazon Q in Connect Session.</p>", "smithy.api#required" => {}}))
    UpdateSessionDataRequest.type = Types::UpdateSessionDataRequest
    UpdateSessionDataResponse.add_member(:session_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'sessionArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the session.</p>", "smithy.api#required" => {}}))
    UpdateSessionDataResponse.add_member(:session_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'sessionId', traits: {"smithy.api#documentation" => "<p>The identifier of the session.</p>", "smithy.api#required" => {}}))
    UpdateSessionDataResponse.add_member(:namespace, Smithy::Schema::Shapes::ShapeRef.new(shape: SessionDataNamespace, location_name: 'namespace', traits: {"smithy.api#documentation" => "<p>The namespace into which the session data is stored. Supported namespaces are: Custom</p>", "smithy.api#required" => {}}))
    UpdateSessionDataResponse.add_member(:data, Smithy::Schema::Shapes::ShapeRef.new(shape: RuntimeSessionDataList, location_name: 'data', traits: {"smithy.api#documentation" => "<p>Data stored in the session.</p>", "smithy.api#required" => {}}))
    UpdateSessionDataResponse.type = Types::UpdateSessionDataResponse
    UpdateSessionRequest.add_member(:assistant_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'assistantId', traits: {"smithy.api#documentation" => "<p>The identifier of the Amazon Q in Connect assistant. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateSessionRequest.add_member(:session_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UuidOrArn, location_name: 'sessionId', traits: {"smithy.api#documentation" => "<p>The identifier of the session. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateSessionRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description.</p>"}))
    UpdateSessionRequest.add_member(:tag_filter, Smithy::Schema::Shapes::ShapeRef.new(shape: TagFilter, location_name: 'tagFilter', traits: {"smithy.api#documentation" => "<p>An object that can be used to specify Tag conditions.</p>"}))
    UpdateSessionRequest.add_member(:ai_agent_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: AIAgentConfigurationMap, location_name: 'aiAgentConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration of the AI Agents (mapped by AI Agent Type to AI Agent version) that should be used by Amazon Q in Connect for this Session.</p>"}))
    UpdateSessionRequest.type = Types::UpdateSessionRequest
    UpdateSessionResponse.add_member(:session, Smithy::Schema::Shapes::ShapeRef.new(shape: SessionData, location_name: 'session'))
    UpdateSessionResponse.type = Types::UpdateSessionResponse
    UrlConfiguration.add_member(:seed_urls, Smithy::Schema::Shapes::ShapeRef.new(shape: SeedUrls, location_name: 'seedUrls', traits: {"smithy.api#documentation" => "<p>List of URLs for crawling.</p>"}))
    UrlConfiguration.type = Types::UrlConfiguration
    UrlFilterList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: UrlFilterPattern)
    ValidationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message'))
    ValidationException.type = Types::ValidationException
    VectorIngestionConfiguration.add_member(:chunking_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ChunkingConfiguration, location_name: 'chunkingConfiguration', traits: {"smithy.api#documentation" => "<p>Details about how to chunk the documents in the data source. A chunk refers to an excerpt from a data source that is returned when the knowledge base that it belongs to is queried.</p>"}))
    VectorIngestionConfiguration.add_member(:parsing_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ParsingConfiguration, location_name: 'parsingConfiguration', traits: {"smithy.api#documentation" => "<p>A custom parser for data source documents.</p>"}))
    VectorIngestionConfiguration.type = Types::VectorIngestionConfiguration
    WebCrawlerConfiguration.add_member(:url_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: UrlConfiguration, location_name: 'urlConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration of the URL/URLs for the web content that you want to crawl. You should be authorized to crawl the URLs.</p>", "smithy.api#required" => {}}))
    WebCrawlerConfiguration.add_member(:crawler_limits, Smithy::Schema::Shapes::ShapeRef.new(shape: WebCrawlerLimits, location_name: 'crawlerLimits', traits: {"smithy.api#documentation" => "<p>The configuration of crawl limits for the web URLs.</p>"}))
    WebCrawlerConfiguration.add_member(:inclusion_filters, Smithy::Schema::Shapes::ShapeRef.new(shape: UrlFilterList, location_name: 'inclusionFilters', traits: {"smithy.api#documentation" => "<p>A list of one or more inclusion regular expression patterns to include certain URLs. If you specify an inclusion and exclusion filter/pattern and both match a URL, the exclusion filter takes precedence and the web content of the URL isn’t crawled.</p>"}))
    WebCrawlerConfiguration.add_member(:exclusion_filters, Smithy::Schema::Shapes::ShapeRef.new(shape: UrlFilterList, location_name: 'exclusionFilters', traits: {"smithy.api#documentation" => "<p>A list of one or more exclusion regular expression patterns to exclude certain URLs. If you specify an inclusion and exclusion filter/pattern and both match a URL, the exclusion filter takes precedence and the web content of the URL isn’t crawled.</p>"}))
    WebCrawlerConfiguration.add_member(:scope, Smithy::Schema::Shapes::ShapeRef.new(shape: WebScopeType, location_name: 'scope', traits: {"smithy.api#documentation" => "<p>The scope of what is crawled for your URLs. You can choose to crawl only web pages that belong to the same host or primary domain. For example, only web pages that contain the seed URL <code>https://docs.aws.amazon.com/bedrock/latest/userguide/</code> and no other domains. You can choose to include sub domains in addition to the host or primary domain. For example, web pages that contain <code>aws.amazon.com</code> can also include sub domain <code>docs.aws.amazon.com</code>.</p>"}))
    WebCrawlerConfiguration.type = Types::WebCrawlerConfiguration
    WebCrawlerLimits.add_member(:rate_limit, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'rateLimit', traits: {"smithy.api#documentation" => "<p>Rate of web URLs retrieved per minute.</p>", "smithy.api#range" => {"min" => 1, "max" => 300}}))
    WebCrawlerLimits.type = Types::WebCrawlerLimits

    WisdomService = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.qconnect#WisdomService"
      service.name = "WisdomService"
      service.version = "2020-10-19"
      service.traits = {"aws.api#service" => {"sdkId" => "QConnect", "arnNamespace" => "wisdom", "cloudFormationName" => "Wisdom"}, "aws.auth#sigv4" => {"name" => "wisdom"}, "aws.protocols#restJson1" => {}, "smithy.api#cors" => {}, "smithy.api#title" => "Amazon Q Connect"}
      service.add_operation(:activate_message_template, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#ActivateMessageTemplate"
        operation.name = "ActivateMessageTemplate"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ActivateMessageTemplateRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ActivateMessageTemplateResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/knowledgeBases/{knowledgeBaseId}/messageTemplates/{messageTemplateId}/activate", "method" => "POST"}}
      end)
      service.add_operation(:create_ai_agent, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#CreateAIAgent"
        operation.name = "CreateAIAgent"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAIAgentRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAIAgentResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/assistants/{assistantId}/aiagents", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_ai_agent_version, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#CreateAIAgentVersion"
        operation.name = "CreateAIAgentVersion"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAIAgentVersionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAIAgentVersionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/assistants/{assistantId}/aiagents/{aiAgentId}/versions", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_ai_guardrail, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#CreateAIGuardrail"
        operation.name = "CreateAIGuardrail"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAIGuardrailRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAIGuardrailResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/assistants/{assistantId}/aiguardrails", "method" => "POST"}, "smithy.api#idempotent" => {}, "smithy.api#private" => {}}
      end)
      service.add_operation(:create_ai_guardrail_version, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#CreateAIGuardrailVersion"
        operation.name = "CreateAIGuardrailVersion"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAIGuardrailVersionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAIGuardrailVersionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/assistants/{assistantId}/aiguardrails/{aiGuardrailId}/versions", "method" => "POST"}, "smithy.api#idempotent" => {}, "smithy.api#private" => {}}
      end)
      service.add_operation(:create_ai_prompt, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#CreateAIPrompt"
        operation.name = "CreateAIPrompt"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAIPromptRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAIPromptResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/assistants/{assistantId}/aiprompts", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_ai_prompt_version, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#CreateAIPromptVersion"
        operation.name = "CreateAIPromptVersion"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAIPromptVersionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAIPromptVersionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/assistants/{assistantId}/aiprompts/{aiPromptId}/versions", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_assistant, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#CreateAssistant"
        operation.name = "CreateAssistant"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAssistantInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAssistantOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/assistants", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_assistant_association, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#CreateAssistantAssociation"
        operation.name = "CreateAssistantAssociation"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAssistantAssociationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAssistantAssociationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/assistants/{assistantId}/associations", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_content, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#CreateContent"
        operation.name = "CreateContent"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateContentInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateContentOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/knowledgeBases/{knowledgeBaseId}/contents", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_content_association, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#CreateContentAssociation"
        operation.name = "CreateContentAssociation"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateContentAssociationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateContentAssociationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/knowledgeBases/{knowledgeBaseId}/contents/{contentId}/associations", "method" => "POST"}}
      end)
      service.add_operation(:create_knowledge_base, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#CreateKnowledgeBase"
        operation.name = "CreateKnowledgeBase"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateKnowledgeBaseInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateKnowledgeBaseOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/knowledgeBases", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_message_template, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#CreateMessageTemplate"
        operation.name = "CreateMessageTemplate"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateMessageTemplateRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateMessageTemplateResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/knowledgeBases/{knowledgeBaseId}/messageTemplates", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_message_template_attachment, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#CreateMessageTemplateAttachment"
        operation.name = "CreateMessageTemplateAttachment"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateMessageTemplateAttachmentRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateMessageTemplateAttachmentResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/knowledgeBases/{knowledgeBaseId}/messageTemplates/{messageTemplateId}/attachments", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_message_template_version, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#CreateMessageTemplateVersion"
        operation.name = "CreateMessageTemplateVersion"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateMessageTemplateVersionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateMessageTemplateVersionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/knowledgeBases/{knowledgeBaseId}/messageTemplates/{messageTemplateId}/versions", "method" => "POST"}}
      end)
      service.add_operation(:create_quick_response, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#CreateQuickResponse"
        operation.name = "CreateQuickResponse"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateQuickResponseRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateQuickResponseResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/knowledgeBases/{knowledgeBaseId}/quickResponses", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_session, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#CreateSession"
        operation.name = "CreateSession"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSessionInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSessionOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/assistants/{assistantId}/sessions", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:deactivate_message_template, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#DeactivateMessageTemplate"
        operation.name = "DeactivateMessageTemplate"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeactivateMessageTemplateRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeactivateMessageTemplateResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/knowledgeBases/{knowledgeBaseId}/messageTemplates/{messageTemplateId}/deactivate", "method" => "POST"}}
      end)
      service.add_operation(:delete_ai_agent, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#DeleteAIAgent"
        operation.name = "DeleteAIAgent"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAIAgentRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAIAgentResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/assistants/{assistantId}/aiagents/{aiAgentId}", "method" => "DELETE", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_ai_agent_version, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#DeleteAIAgentVersion"
        operation.name = "DeleteAIAgentVersion"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAIAgentVersionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAIAgentVersionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/assistants/{assistantId}/aiagents/{aiAgentId}/versions/{versionNumber}", "method" => "DELETE", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_ai_guardrail, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#DeleteAIGuardrail"
        operation.name = "DeleteAIGuardrail"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAIGuardrailRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAIGuardrailResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/assistants/{assistantId}/aiguardrails/{aiGuardrailId}", "method" => "DELETE", "code" => 202}, "smithy.api#idempotent" => {}, "smithy.api#private" => {}}
      end)
      service.add_operation(:delete_ai_guardrail_version, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#DeleteAIGuardrailVersion"
        operation.name = "DeleteAIGuardrailVersion"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAIGuardrailVersionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAIGuardrailVersionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/assistants/{assistantId}/aiguardrails/{aiGuardrailId}/versions/{versionNumber}", "method" => "DELETE", "code" => 202}, "smithy.api#idempotent" => {}, "smithy.api#private" => {}}
      end)
      service.add_operation(:delete_ai_prompt, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#DeleteAIPrompt"
        operation.name = "DeleteAIPrompt"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAIPromptRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAIPromptResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/assistants/{assistantId}/aiprompts/{aiPromptId}", "method" => "DELETE", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_ai_prompt_version, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#DeleteAIPromptVersion"
        operation.name = "DeleteAIPromptVersion"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAIPromptVersionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAIPromptVersionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/assistants/{assistantId}/aiprompts/{aiPromptId}/versions/{versionNumber}", "method" => "DELETE", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_assistant, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#DeleteAssistant"
        operation.name = "DeleteAssistant"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAssistantInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAssistantOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/assistants/{assistantId}", "method" => "DELETE", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_assistant_association, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#DeleteAssistantAssociation"
        operation.name = "DeleteAssistantAssociation"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAssistantAssociationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAssistantAssociationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/assistants/{assistantId}/associations/{assistantAssociationId}", "method" => "DELETE", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_content, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#DeleteContent"
        operation.name = "DeleteContent"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteContentInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteContentOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/knowledgeBases/{knowledgeBaseId}/contents/{contentId}", "method" => "DELETE", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_content_association, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#DeleteContentAssociation"
        operation.name = "DeleteContentAssociation"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteContentAssociationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteContentAssociationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/knowledgeBases/{knowledgeBaseId}/contents/{contentId}/associations/{contentAssociationId}", "method" => "DELETE", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_import_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#DeleteImportJob"
        operation.name = "DeleteImportJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteImportJobRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteImportJobResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/knowledgeBases/{knowledgeBaseId}/importJobs/{importJobId}", "method" => "DELETE", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_knowledge_base, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#DeleteKnowledgeBase"
        operation.name = "DeleteKnowledgeBase"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteKnowledgeBaseInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteKnowledgeBaseOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/knowledgeBases/{knowledgeBaseId}", "method" => "DELETE", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_message_template, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#DeleteMessageTemplate"
        operation.name = "DeleteMessageTemplate"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteMessageTemplateRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteMessageTemplateResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/knowledgeBases/{knowledgeBaseId}/messageTemplates/{messageTemplateId}", "method" => "DELETE", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_message_template_attachment, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#DeleteMessageTemplateAttachment"
        operation.name = "DeleteMessageTemplateAttachment"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteMessageTemplateAttachmentRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteMessageTemplateAttachmentResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/knowledgeBases/{knowledgeBaseId}/messageTemplates/{messageTemplateId}/attachments/{attachmentId}", "method" => "DELETE", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_quick_response, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#DeleteQuickResponse"
        operation.name = "DeleteQuickResponse"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteQuickResponseRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteQuickResponseResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/knowledgeBases/{knowledgeBaseId}/quickResponses/{quickResponseId}", "method" => "DELETE", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_ai_agent, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#GetAIAgent"
        operation.name = "GetAIAgent"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAIAgentRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAIAgentResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/assistants/{assistantId}/aiagents/{aiAgentId}", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_ai_guardrail, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#GetAIGuardrail"
        operation.name = "GetAIGuardrail"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAIGuardrailRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAIGuardrailResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/assistants/{assistantId}/aiguardrails/{aiGuardrailId}", "method" => "GET"}, "smithy.api#private" => {}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_ai_prompt, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#GetAIPrompt"
        operation.name = "GetAIPrompt"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAIPromptRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAIPromptResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/assistants/{assistantId}/aiprompts/{aiPromptId}", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_assistant, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#GetAssistant"
        operation.name = "GetAssistant"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAssistantInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAssistantOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/assistants/{assistantId}", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_assistant_association, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#GetAssistantAssociation"
        operation.name = "GetAssistantAssociation"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAssistantAssociationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAssistantAssociationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/assistants/{assistantId}/associations/{assistantAssociationId}", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_content, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#GetContent"
        operation.name = "GetContent"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetContentInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetContentOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/knowledgeBases/{knowledgeBaseId}/contents/{contentId}", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_content_association, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#GetContentAssociation"
        operation.name = "GetContentAssociation"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetContentAssociationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetContentAssociationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/knowledgeBases/{knowledgeBaseId}/contents/{contentId}/associations/{contentAssociationId}", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_content_summary, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#GetContentSummary"
        operation.name = "GetContentSummary"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetContentSummaryInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetContentSummaryOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/knowledgeBases/{knowledgeBaseId}/contents/{contentId}/summary", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_import_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#GetImportJob"
        operation.name = "GetImportJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetImportJobRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetImportJobResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/knowledgeBases/{knowledgeBaseId}/importJobs/{importJobId}", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_knowledge_base, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#GetKnowledgeBase"
        operation.name = "GetKnowledgeBase"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetKnowledgeBaseInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetKnowledgeBaseOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/knowledgeBases/{knowledgeBaseId}", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_message_template, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#GetMessageTemplate"
        operation.name = "GetMessageTemplate"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetMessageTemplateRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetMessageTemplateResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/knowledgeBases/{knowledgeBaseId}/messageTemplates/{messageTemplateId}", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_next_message, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#GetNextMessage"
        operation.name = "GetNextMessage"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetNextMessageRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetNextMessageResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/assistants/{assistantId}/sessions/{sessionId}/messages/next", "method" => "GET"}, "smithy.api#private" => {}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_quick_response, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#GetQuickResponse"
        operation.name = "GetQuickResponse"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetQuickResponseRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetQuickResponseResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/knowledgeBases/{knowledgeBaseId}/quickResponses/{quickResponseId}", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_recommendations, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#GetRecommendations"
        operation.name = "GetRecommendations"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetRecommendationsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetRecommendationsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#deprecated" => {"message" => "GetRecommendations API will be discontinued starting June 1, 2024. To receive generative responses after March 1, 2024 you will need to create a new Assistant in the Connect console and integrate the Amazon Q in Connect JavaScript library (amazon-q-connectjs) into your applications."}, "smithy.api#http" => {"uri" => "/assistants/{assistantId}/sessions/{sessionId}/recommendations", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_session, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#GetSession"
        operation.name = "GetSession"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetSessionInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetSessionOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/assistants/{assistantId}/sessions/{sessionId}", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_ai_agent_versions, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#ListAIAgentVersions"
        operation.name = "ListAIAgentVersions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAIAgentVersionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAIAgentVersionsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/assistants/{assistantId}/aiagents/{aiAgentId}/versions", "method" => "GET"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListAIAgentVersions.new
      end)
      service.add_operation(:list_ai_agents, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#ListAIAgents"
        operation.name = "ListAIAgents"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAIAgentsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAIAgentsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/assistants/{assistantId}/aiagents", "method" => "GET"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListAIAgents.new
      end)
      service.add_operation(:list_ai_guardrail_versions, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#ListAIGuardrailVersions"
        operation.name = "ListAIGuardrailVersions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAIGuardrailVersionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAIGuardrailVersionsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/assistants/{assistantId}/aiguardrails/{aiGuardrailId}/versions", "method" => "GET"}, "smithy.api#private" => {}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListAIGuardrailVersions.new
      end)
      service.add_operation(:list_ai_guardrails, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#ListAIGuardrails"
        operation.name = "ListAIGuardrails"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAIGuardrailsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAIGuardrailsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/assistants/{assistantId}/aiguardrails", "method" => "GET"}, "smithy.api#private" => {}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListAIGuardrails.new
      end)
      service.add_operation(:list_ai_prompt_versions, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#ListAIPromptVersions"
        operation.name = "ListAIPromptVersions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAIPromptVersionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAIPromptVersionsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/assistants/{assistantId}/aiprompts/{aiPromptId}/versions", "method" => "GET"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListAIPromptVersions.new
      end)
      service.add_operation(:list_ai_prompts, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#ListAIPrompts"
        operation.name = "ListAIPrompts"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAIPromptsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAIPromptsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/assistants/{assistantId}/aiprompts", "method" => "GET"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListAIPrompts.new
      end)
      service.add_operation(:list_assistant_associations, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#ListAssistantAssociations"
        operation.name = "ListAssistantAssociations"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAssistantAssociationsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAssistantAssociationsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/assistants/{assistantId}/associations", "method" => "GET"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListAssistantAssociations.new
      end)
      service.add_operation(:list_assistants, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#ListAssistants"
        operation.name = "ListAssistants"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAssistantsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAssistantsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/assistants", "method" => "GET"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListAssistants.new
      end)
      service.add_operation(:list_content_associations, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#ListContentAssociations"
        operation.name = "ListContentAssociations"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListContentAssociationsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListContentAssociationsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/knowledgeBases/{knowledgeBaseId}/contents/{contentId}/associations", "method" => "GET"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListContentAssociations.new
      end)
      service.add_operation(:list_contents, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#ListContents"
        operation.name = "ListContents"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListContentsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListContentsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/knowledgeBases/{knowledgeBaseId}/contents", "method" => "GET"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListContents.new
      end)
      service.add_operation(:list_import_jobs, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#ListImportJobs"
        operation.name = "ListImportJobs"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListImportJobsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListImportJobsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/knowledgeBases/{knowledgeBaseId}/importJobs", "method" => "GET"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListImportJobs.new
      end)
      service.add_operation(:list_knowledge_bases, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#ListKnowledgeBases"
        operation.name = "ListKnowledgeBases"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListKnowledgeBasesInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListKnowledgeBasesOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/knowledgeBases", "method" => "GET"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListKnowledgeBases.new
      end)
      service.add_operation(:list_message_template_versions, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#ListMessageTemplateVersions"
        operation.name = "ListMessageTemplateVersions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListMessageTemplateVersionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListMessageTemplateVersionsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/knowledgeBases/{knowledgeBaseId}/messageTemplates/{messageTemplateId}/versions", "method" => "GET"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListMessageTemplateVersions.new
      end)
      service.add_operation(:list_message_templates, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#ListMessageTemplates"
        operation.name = "ListMessageTemplates"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListMessageTemplatesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListMessageTemplatesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/knowledgeBases/{knowledgeBaseId}/messageTemplates", "method" => "GET"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListMessageTemplates.new
      end)
      service.add_operation(:list_messages, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#ListMessages"
        operation.name = "ListMessages"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListMessagesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListMessagesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/assistants/{assistantId}/sessions/{sessionId}/messages", "method" => "GET"}, "smithy.api#private" => {}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListMessages.new
      end)
      service.add_operation(:list_quick_responses, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#ListQuickResponses"
        operation.name = "ListQuickResponses"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListQuickResponsesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListQuickResponsesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/knowledgeBases/{knowledgeBaseId}/quickResponses", "method" => "GET"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListQuickResponses.new
      end)
      service.add_operation(:list_tags_for_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"uri" => "/tags/{resourceArn}", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:notify_recommendations_received, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#NotifyRecommendationsReceived"
        operation.name = "NotifyRecommendationsReceived"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: NotifyRecommendationsReceivedInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: NotifyRecommendationsReceivedOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/assistants/{assistantId}/sessions/{sessionId}/recommendations/notify", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:put_feedback, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#PutFeedback"
        operation.name = "PutFeedback"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutFeedbackRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutFeedbackResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/assistants/{assistantId}/feedback", "method" => "PUT"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:query_assistant, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#QueryAssistant"
        operation.name = "QueryAssistant"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: QueryAssistantInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: QueryAssistantOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RequestTimeoutException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#deprecated" => {"message" => "QueryAssistant API will be discontinued starting June 1, 2024. To receive generative responses after March 1, 2024 you will need to create a new Assistant in the Connect console and integrate the Amazon Q in Connect JavaScript library (amazon-q-connectjs) into your applications."}, "smithy.api#http" => {"uri" => "/assistants/{assistantId}/query", "method" => "POST"}, "smithy.api#readonly" => {}, "smithy.api#suppress" => ["HttpMethodSemantics"]}
        operation[:paginator] = Paginators::QueryAssistant.new
      end)
      service.add_operation(:remove_assistant_ai_agent, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#RemoveAssistantAIAgent"
        operation.name = "RemoveAssistantAIAgent"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: RemoveAssistantAIAgentRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: RemoveAssistantAIAgentResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/assistants/{assistantId}/aiagentConfiguration", "method" => "DELETE", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:remove_knowledge_base_template_uri, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#RemoveKnowledgeBaseTemplateUri"
        operation.name = "RemoveKnowledgeBaseTemplateUri"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: RemoveKnowledgeBaseTemplateUriInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: RemoveKnowledgeBaseTemplateUriOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/knowledgeBases/{knowledgeBaseId}/templateUri", "method" => "DELETE", "code" => 204}}
      end)
      service.add_operation(:render_message_template, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#RenderMessageTemplate"
        operation.name = "RenderMessageTemplate"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: RenderMessageTemplateRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: RenderMessageTemplateResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/knowledgeBases/{knowledgeBaseId}/messageTemplates/{messageTemplateId}/render", "method" => "POST"}}
      end)
      service.add_operation(:search_content, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#SearchContent"
        operation.name = "SearchContent"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: SearchContentInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: SearchContentOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/knowledgeBases/{knowledgeBaseId}/search", "method" => "POST"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::SearchContent.new
      end)
      service.add_operation(:search_message_templates, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#SearchMessageTemplates"
        operation.name = "SearchMessageTemplates"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: SearchMessageTemplatesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: SearchMessageTemplatesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/knowledgeBases/{knowledgeBaseId}/search/messageTemplates", "method" => "POST"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::SearchMessageTemplates.new
      end)
      service.add_operation(:search_quick_responses, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#SearchQuickResponses"
        operation.name = "SearchQuickResponses"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: SearchQuickResponsesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: SearchQuickResponsesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RequestTimeoutException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/knowledgeBases/{knowledgeBaseId}/search/quickResponses", "method" => "POST"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::SearchQuickResponses.new
      end)
      service.add_operation(:search_sessions, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#SearchSessions"
        operation.name = "SearchSessions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: SearchSessionsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: SearchSessionsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/assistants/{assistantId}/searchSessions", "method" => "POST"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::SearchSessions.new
      end)
      service.add_operation(:send_message, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#SendMessage"
        operation.name = "SendMessage"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: SendMessageRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: SendMessageResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RequestTimeoutException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/assistants/{assistantId}/sessions/{sessionId}/message", "method" => "POST"}, "smithy.api#idempotent" => {}, "smithy.api#private" => {}}
      end)
      service.add_operation(:start_content_upload, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#StartContentUpload"
        operation.name = "StartContentUpload"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartContentUploadInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartContentUploadOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/knowledgeBases/{knowledgeBaseId}/upload", "method" => "POST"}}
      end)
      service.add_operation(:start_import_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#StartImportJob"
        operation.name = "StartImportJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartImportJobRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartImportJobResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/knowledgeBases/{knowledgeBaseId}/importJobs", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:tag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#TagResource"
        operation.name = "TagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyTagsException)
        operation.traits = {"smithy.api#http" => {"uri" => "/tags/{resourceArn}", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:untag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#UntagResource"
        operation.name = "UntagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"uri" => "/tags/{resourceArn}", "method" => "DELETE"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_ai_agent, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#UpdateAIAgent"
        operation.name = "UpdateAIAgent"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAIAgentRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAIAgentResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/assistants/{assistantId}/aiagents/{aiAgentId}", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_ai_guardrail, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#UpdateAIGuardrail"
        operation.name = "UpdateAIGuardrail"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAIGuardrailRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAIGuardrailResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/assistants/{assistantId}/aiguardrails/{aiGuardrailId}", "method" => "POST"}, "smithy.api#idempotent" => {}, "smithy.api#private" => {}}
      end)
      service.add_operation(:update_ai_prompt, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#UpdateAIPrompt"
        operation.name = "UpdateAIPrompt"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAIPromptRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAIPromptResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/assistants/{assistantId}/aiprompts/{aiPromptId}", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_assistant_ai_agent, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#UpdateAssistantAIAgent"
        operation.name = "UpdateAssistantAIAgent"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAssistantAIAgentRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAssistantAIAgentResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/assistants/{assistantId}/aiagentConfiguration", "method" => "POST"}}
      end)
      service.add_operation(:update_content, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#UpdateContent"
        operation.name = "UpdateContent"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateContentInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateContentOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PreconditionFailedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/knowledgeBases/{knowledgeBaseId}/contents/{contentId}", "method" => "POST"}}
      end)
      service.add_operation(:update_knowledge_base_template_uri, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#UpdateKnowledgeBaseTemplateUri"
        operation.name = "UpdateKnowledgeBaseTemplateUri"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateKnowledgeBaseTemplateUriInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateKnowledgeBaseTemplateUriOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/knowledgeBases/{knowledgeBaseId}/templateUri", "method" => "POST"}}
      end)
      service.add_operation(:update_message_template, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#UpdateMessageTemplate"
        operation.name = "UpdateMessageTemplate"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateMessageTemplateRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateMessageTemplateResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/knowledgeBases/{knowledgeBaseId}/messageTemplates/{messageTemplateId}", "method" => "POST"}}
      end)
      service.add_operation(:update_message_template_metadata, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#UpdateMessageTemplateMetadata"
        operation.name = "UpdateMessageTemplateMetadata"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateMessageTemplateMetadataRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateMessageTemplateMetadataResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/knowledgeBases/{knowledgeBaseId}/messageTemplates/{messageTemplateId}/metadata", "method" => "POST"}}
      end)
      service.add_operation(:update_quick_response, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#UpdateQuickResponse"
        operation.name = "UpdateQuickResponse"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateQuickResponseRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateQuickResponseResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PreconditionFailedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/knowledgeBases/{knowledgeBaseId}/quickResponses/{quickResponseId}", "method" => "POST"}}
      end)
      service.add_operation(:update_session, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#UpdateSession"
        operation.name = "UpdateSession"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSessionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSessionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/assistants/{assistantId}/sessions/{sessionId}", "method" => "POST"}}
      end)
      service.add_operation(:update_session_data, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#UpdateSessionData"
        operation.name = "UpdateSessionData"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSessionDataRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSessionDataResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/assistants/{assistantId}/sessions/{sessionId}/data", "method" => "PATCH"}}
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
