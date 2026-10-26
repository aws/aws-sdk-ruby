# frozen_string_literal: true

# This is generated code!

module Aws::QConnect
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AIAgentAssociationConfigurationType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qconnect#AIAgentAssociationConfigurationType", name: "AIAgentAssociationConfigurationType", traits: {"smithy.api#enum" => [{"value" => "KNOWLEDGE_BASE", "name" => "KNOWLEDGE_BASE"}]})
    AIAgentConfiguration = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.qconnect#AIAgentConfiguration", name: "AIAgentConfiguration")
    AIAgentConfigurationData = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#AIAgentConfigurationData", name: "AIAgentConfigurationData")
    AIAgentConfigurationMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.qconnect#AIAgentConfigurationMap", name: "AIAgentConfigurationMap")
    AIAgentData = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#AIAgentData", name: "AIAgentData", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.qconnect#AIAgent"}]})
    AIAgentSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#AIAgentSummary", name: "AIAgentSummary", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.qconnect#AIAgent"}]})
    AIAgentSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.qconnect#AIAgentSummaryList", name: "AIAgentSummaryList")
    AIAgentType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qconnect#AIAgentType", name: "AIAgentType", traits: {"smithy.api#enum" => [{"value" => "MANUAL_SEARCH", "name" => "MANUAL_SEARCH"}, {"value" => "ANSWER_RECOMMENDATION", "name" => "ANSWER_RECOMMENDATION"}, {"value" => "SELF_SERVICE", "name" => "SELF_SERVICE"}, {"value" => "EMAIL_RESPONSE", "name" => "EMAIL_RESPONSE"}, {"value" => "EMAIL_OVERVIEW", "name" => "EMAIL_OVERVIEW"}, {"value" => "EMAIL_GENERATIVE_ANSWER", "name" => "EMAIL_GENERATIVE_ANSWER"}, {"value" => "ORCHESTRATION", "name" => "ORCHESTRATION"}, {"value" => "NOTE_TAKING", "name" => "NOTE_TAKING"}, {"value" => "CASE_SUMMARIZATION", "name" => "CASE_SUMMARIZATION"}]})
    AIAgentVersionSummariesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.qconnect#AIAgentVersionSummariesList", name: "AIAgentVersionSummariesList")
    AIAgentVersionSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#AIAgentVersionSummary", name: "AIAgentVersionSummary")
    AIGuardrailAssessment = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#AIGuardrailAssessment", name: "AIGuardrailAssessment")
    AIGuardrailBlockedMessaging = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qconnect#AIGuardrailBlockedMessaging", name: "AIGuardrailBlockedMessaging", traits: {"smithy.api#length" => {"min" => 1, "max" => 500}, "smithy.api#sensitive" => {}})
    AIGuardrailContentPolicyConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#AIGuardrailContentPolicyConfig", name: "AIGuardrailContentPolicyConfig")
    AIGuardrailContextualGroundingPolicyConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#AIGuardrailContextualGroundingPolicyConfig", name: "AIGuardrailContextualGroundingPolicyConfig")
    AIGuardrailData = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#AIGuardrailData", name: "AIGuardrailData", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.qconnect#AIGuardrail"}]})
    AIGuardrailDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qconnect#AIGuardrailDescription", name: "AIGuardrailDescription", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}, "smithy.api#sensitive" => {}})
    AIGuardrailSensitiveInformationPolicyConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#AIGuardrailSensitiveInformationPolicyConfig", name: "AIGuardrailSensitiveInformationPolicyConfig")
    AIGuardrailSummariesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.qconnect#AIGuardrailSummariesList", name: "AIGuardrailSummariesList")
    AIGuardrailSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#AIGuardrailSummary", name: "AIGuardrailSummary", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.qconnect#AIGuardrail"}]})
    AIGuardrailTopicPolicyConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#AIGuardrailTopicPolicyConfig", name: "AIGuardrailTopicPolicyConfig")
    AIGuardrailVersionSummariesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.qconnect#AIGuardrailVersionSummariesList", name: "AIGuardrailVersionSummariesList")
    AIGuardrailVersionSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#AIGuardrailVersionSummary", name: "AIGuardrailVersionSummary")
    AIGuardrailWordPolicyConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#AIGuardrailWordPolicyConfig", name: "AIGuardrailWordPolicyConfig")
    AIPromptAPIFormat = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qconnect#AIPromptAPIFormat", name: "AIPromptAPIFormat", traits: {"smithy.api#enum" => [{"value" => "ANTHROPIC_CLAUDE_MESSAGES", "name" => "ANTHROPIC_CLAUDE_MESSAGES"}, {"value" => "ANTHROPIC_CLAUDE_TEXT_COMPLETIONS", "name" => "ANTHROPIC_CLAUDE_TEXT_COMPLETIONS"}, {"value" => "MESSAGES", "name" => "MESSAGES"}, {"value" => "TEXT_COMPLETIONS", "name" => "TEXT_COMPLETIONS"}]})
    AIPromptData = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#AIPromptData", name: "AIPromptData", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.qconnect#AIPrompt"}]})
    AIPromptInferenceConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#AIPromptInferenceConfiguration", name: "AIPromptInferenceConfiguration")
    AIPromptModelIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qconnect#AIPromptModelIdentifier", name: "AIPromptModelIdentifier", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    AIPromptSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#AIPromptSummary", name: "AIPromptSummary", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.qconnect#AIPrompt"}]})
    AIPromptSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.qconnect#AIPromptSummaryList", name: "AIPromptSummaryList")
    AIPromptTemplateConfiguration = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.qconnect#AIPromptTemplateConfiguration", name: "AIPromptTemplateConfiguration")
    AIPromptTemplateType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qconnect#AIPromptTemplateType", name: "AIPromptTemplateType", traits: {"smithy.api#enum" => [{"value" => "TEXT", "name" => "TEXT"}]})
    AIPromptType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qconnect#AIPromptType", name: "AIPromptType", traits: {"smithy.api#enum" => [{"value" => "ANSWER_GENERATION", "name" => "ANSWER_GENERATION"}, {"value" => "INTENT_LABELING_GENERATION", "name" => "INTENT_LABELING_GENERATION"}, {"value" => "QUERY_REFORMULATION", "name" => "QUERY_REFORMULATION"}, {"value" => "SELF_SERVICE_PRE_PROCESSING", "name" => "SELF_SERVICE_PRE_PROCESSING"}, {"value" => "SELF_SERVICE_ANSWER_GENERATION", "name" => "SELF_SERVICE_ANSWER_GENERATION"}, {"value" => "EMAIL_RESPONSE", "name" => "EMAIL_RESPONSE"}, {"value" => "EMAIL_OVERVIEW", "name" => "EMAIL_OVERVIEW"}, {"value" => "EMAIL_GENERATIVE_ANSWER", "name" => "EMAIL_GENERATIVE_ANSWER"}, {"value" => "EMAIL_QUERY_REFORMULATION", "name" => "EMAIL_QUERY_REFORMULATION"}, {"value" => "ORCHESTRATION", "name" => "ORCHESTRATION"}, {"value" => "NOTE_TAKING", "name" => "NOTE_TAKING"}, {"value" => "CASE_SUMMARIZATION", "name" => "CASE_SUMMARIZATION"}]})
    AIPromptTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.qconnect#AIPromptTypeList", name: "AIPromptTypeList")
    AIPromptVersionSummariesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.qconnect#AIPromptVersionSummariesList", name: "AIPromptVersionSummariesList")
    AIPromptVersionSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#AIPromptVersionSummary", name: "AIPromptVersionSummary")
    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AccessRoleArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qconnect#AccessRoleArn", name: "AccessRoleArn", traits: {"smithy.api#length" => {"min" => 32, "max" => 2048}, "smithy.api#pattern" => "^arn:aws:iam::[0-9]{12}:role/(?:service-role/)?[a-zA-Z0-9_+=,.@-]{1,64}$"})
    ActivateMessageTemplateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#ActivateMessageTemplateRequest", name: "ActivateMessageTemplateRequest")
    ActivateMessageTemplateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#ActivateMessageTemplateResponse", name: "ActivateMessageTemplateResponse")
    AgentAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#AgentAttributes", name: "AgentAttributes")
    AgentTarget = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.qconnect#AgentTarget", name: "AgentTarget")
    AmazonConnectGuideAssociationData = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#AmazonConnectGuideAssociationData", name: "AmazonConnectGuideAssociationData")
    AndConditions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.qconnect#AndConditions", name: "AndConditions")
    Annotation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#Annotation", name: "Annotation", traits: {"smithy.api#sensitive" => {}})
    AnswerRecommendationAIAgentConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#AnswerRecommendationAIAgentConfiguration", name: "AnswerRecommendationAIAgentConfiguration")
    AppIntegrationsConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#AppIntegrationsConfiguration", name: "AppIntegrationsConfiguration")
    Arn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qconnect#Arn", name: "Arn", traits: {"smithy.api#pattern" => "^arn:[a-z-]*?:wisdom:[a-z0-9-]*?:[0-9]{12}:[a-z-]*?/[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}(?:/[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}){0,2}$"})
    ArnWithQualifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qconnect#ArnWithQualifier", name: "ArnWithQualifier", traits: {"smithy.api#pattern" => "^arn:[a-z-]*?:wisdom:[a-z0-9-]*?:[0-9]{12}:[a-z-]*?/[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}(?:/[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}){0,2}(:[A-Z0-9_$]+){0,1}$"})
    AssistantAssociationData = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#AssistantAssociationData", name: "AssistantAssociationData", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.qconnect#AssistantAssociation"}]})
    AssistantAssociationIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.qconnect#AssistantAssociationIdList", name: "AssistantAssociationIdList", traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    AssistantAssociationInputData = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.qconnect#AssistantAssociationInputData", name: "AssistantAssociationInputData")
    AssistantAssociationOutputData = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.qconnect#AssistantAssociationOutputData", name: "AssistantAssociationOutputData")
    AssistantAssociationSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#AssistantAssociationSummary", name: "AssistantAssociationSummary", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.qconnect#AssistantAssociation"}]})
    AssistantAssociationSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.qconnect#AssistantAssociationSummaryList", name: "AssistantAssociationSummaryList")
    AssistantCapabilityConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#AssistantCapabilityConfiguration", name: "AssistantCapabilityConfiguration")
    AssistantCapabilityType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qconnect#AssistantCapabilityType", name: "AssistantCapabilityType", traits: {"smithy.api#enum" => [{"value" => "V1", "name" => "V1"}, {"value" => "V2", "name" => "V2"}]})
    AssistantData = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#AssistantData", name: "AssistantData")
    AssistantIntegrationConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#AssistantIntegrationConfiguration", name: "AssistantIntegrationConfiguration")
    AssistantList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.qconnect#AssistantList", name: "AssistantList")
    AssistantStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qconnect#AssistantStatus", name: "AssistantStatus", traits: {"smithy.api#enum" => [{"value" => "CREATE_IN_PROGRESS", "name" => "CREATE_IN_PROGRESS"}, {"value" => "CREATE_FAILED", "name" => "CREATE_FAILED"}, {"value" => "ACTIVE", "name" => "ACTIVE"}, {"value" => "DELETE_IN_PROGRESS", "name" => "DELETE_IN_PROGRESS"}, {"value" => "DELETE_FAILED", "name" => "DELETE_FAILED"}, {"value" => "DELETED", "name" => "DELETED"}]})
    AssistantSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#AssistantSummary", name: "AssistantSummary")
    AssistantType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qconnect#AssistantType", name: "AssistantType", traits: {"smithy.api#enum" => [{"value" => "AGENT", "name" => "AGENT"}]})
    AssociationConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#AssociationConfiguration", name: "AssociationConfiguration")
    AssociationConfigurationData = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.qconnect#AssociationConfigurationData", name: "AssociationConfigurationData")
    AssociationConfigurationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.qconnect#AssociationConfigurationList", name: "AssociationConfigurationList")
    AssociationType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qconnect#AssociationType", name: "AssociationType", traits: {"smithy.api#enum" => [{"value" => "KNOWLEDGE_BASE", "name" => "KNOWLEDGE_BASE"}, {"value" => "EXTERNAL_BEDROCK_KNOWLEDGE_BASE", "name" => "EXTERNAL_BEDROCK_KNOWLEDGE_BASE"}]})
    AttachmentFileName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qconnect#AttachmentFileName", name: "AttachmentFileName", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[\\p{L}\\p{M}\\p{N}_\\s&@()+,;=\\-]+\\.[A-Za-z0-9]+$", "smithy.api#sensitive" => {}})
    BedrockFoundationModelConfigurationForParsing = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#BedrockFoundationModelConfigurationForParsing", name: "BedrockFoundationModelConfigurationForParsing")
    BedrockKnowledgeBaseArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qconnect#BedrockKnowledgeBaseArn", name: "BedrockKnowledgeBaseArn", traits: {"smithy.api#length" => {"min" => 47, "max" => 128}, "smithy.api#pattern" => "^arn:aws(|-cn|-us-gov):bedrock:[a-zA-Z0-9-]*:[0-9]{12}:knowledge-base/[0-9a-zA-Z]+$"})
    BedrockModelArnForParsing = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qconnect#BedrockModelArnForParsing", name: "BedrockModelArnForParsing", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^arn:aws(-[^:]+)?:bedrock:[a-z0-9-]{1,20}::foundation-model/anthropic.claude-3-haiku-20240307-v1:0$"})
    CaseArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qconnect#CaseArn", name: "CaseArn", traits: {"smithy.api#pattern" => "^arn:[a-z-]*?:cases:[a-z0-9-]*?:[0-9]{12}:domain/.{1,500}/case/[A-Za-z0-9\\-._/:#=+-]{1,500}$"})
    CaseSummarizationAIAgentConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#CaseSummarizationAIAgentConfiguration", name: "CaseSummarizationAIAgentConfiguration")
    CaseSummarizationChunkDataDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#CaseSummarizationChunkDataDetails", name: "CaseSummarizationChunkDataDetails")
    CaseSummarizationInputData = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#CaseSummarizationInputData", name: "CaseSummarizationInputData")
    Channel = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qconnect#Channel", name: "Channel", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}, "smithy.api#sensitive" => {}})
    ChannelSubtype = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qconnect#ChannelSubtype", name: "ChannelSubtype", traits: {"smithy.api#enum" => [{"value" => "EMAIL", "name" => "EMAIL"}, {"value" => "SMS", "name" => "SMS"}, {"value" => "WHATSAPP", "name" => "WHATSAPP"}, {"value" => "PUSH", "name" => "PUSH"}]})
    Channels = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.qconnect#Channels", name: "Channels", traits: {"smithy.api#uniqueItems" => {}})
    ChunkingConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#ChunkingConfiguration", name: "ChunkingConfiguration")
    ChunkingStrategy = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qconnect#ChunkingStrategy", name: "ChunkingStrategy", traits: {"smithy.api#enum" => [{"value" => "FIXED_SIZE", "name" => "FIXED_SIZE"}, {"value" => "NONE", "name" => "NONE"}, {"value" => "HIERARCHICAL", "name" => "HIERARCHICAL"}, {"value" => "SEMANTIC", "name" => "SEMANTIC"}]})
    Citation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#Citation", name: "Citation")
    CitationSpan = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#CitationSpan", name: "CitationSpan")
    CitationSpanOffset = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.qconnect#CitationSpanOffset", name: "CitationSpanOffset", traits: {"smithy.api#default" => 0})
    Citations = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.qconnect#Citations", name: "Citations")
    ClientToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qconnect#ClientToken", name: "ClientToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 4096}})
    Configuration = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.qconnect#Configuration", name: "Configuration")
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ConnectConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#ConnectConfiguration", name: "ConnectConfiguration")
    ContactAttributeKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qconnect#ContactAttributeKey", name: "ContactAttributeKey")
    ContactAttributeKeys = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.qconnect#ContactAttributeKeys", name: "ContactAttributeKeys", traits: {"smithy.api#sensitive" => {}, "smithy.api#uniqueItems" => {}})
    ContactAttributeValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qconnect#ContactAttributeValue", name: "ContactAttributeValue")
    ContactAttributes = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.qconnect#ContactAttributes", name: "ContactAttributes", traits: {"smithy.api#sensitive" => {}})
    ContentAssociationContents = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.qconnect#ContentAssociationContents", name: "ContentAssociationContents")
    ContentAssociationData = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#ContentAssociationData", name: "ContentAssociationData", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.qconnect#ContentAssociation"}]})
    ContentAssociationSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#ContentAssociationSummary", name: "ContentAssociationSummary", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.qconnect#ContentAssociation"}]})
    ContentAssociationSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.qconnect#ContentAssociationSummaryList", name: "ContentAssociationSummaryList")
    ContentAssociationType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qconnect#ContentAssociationType", name: "ContentAssociationType", traits: {"smithy.api#enum" => [{"value" => "AMAZON_CONNECT_GUIDE", "name" => "AMAZON_CONNECT_GUIDE"}]})
    ContentData = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#ContentData", name: "ContentData", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.qconnect#Content"}, {"resource" => "com.amazonaws.qconnect#KnowledgeBase"}]})
    ContentDataDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#ContentDataDetails", name: "ContentDataDetails")
    ContentDisposition = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qconnect#ContentDisposition", name: "ContentDisposition", traits: {"smithy.api#enum" => [{"value" => "ATTACHMENT", "name" => "ATTACHMENT"}]})
    ContentFeedbackData = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.qconnect#ContentFeedbackData", name: "ContentFeedbackData")
    ContentMetadata = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.qconnect#ContentMetadata", name: "ContentMetadata", traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    ContentReference = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#ContentReference", name: "ContentReference")
    ContentStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qconnect#ContentStatus", name: "ContentStatus", traits: {"smithy.api#enum" => [{"value" => "CREATE_IN_PROGRESS", "name" => "CREATE_IN_PROGRESS"}, {"value" => "CREATE_FAILED", "name" => "CREATE_FAILED"}, {"value" => "ACTIVE", "name" => "ACTIVE"}, {"value" => "DELETE_IN_PROGRESS", "name" => "DELETE_IN_PROGRESS"}, {"value" => "DELETE_FAILED", "name" => "DELETE_FAILED"}, {"value" => "DELETED", "name" => "DELETED"}, {"value" => "UPDATE_FAILED", "name" => "UPDATE_FAILED"}]})
    ContentSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#ContentSummary", name: "ContentSummary", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.qconnect#Content"}, {"resource" => "com.amazonaws.qconnect#KnowledgeBase"}]})
    ContentSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.qconnect#ContentSummaryList", name: "ContentSummaryList")
    ContentTitle = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qconnect#ContentTitle", name: "ContentTitle", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    ContentType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qconnect#ContentType", name: "ContentType", traits: {"smithy.api#pattern" => "^(text/(plain|html|csv))|(application/(pdf|vnd\\.openxmlformats-officedocument\\.wordprocessingml\\.document))|(application/x\\.wisdom-json;source=(salesforce|servicenow|zendesk))$"})
    ConversationContext = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#ConversationContext", name: "ConversationContext")
    ConversationState = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#ConversationState", name: "ConversationState")
    ConversationStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qconnect#ConversationStatus", name: "ConversationStatus", traits: {"smithy.api#enum" => [{"value" => "CLOSED", "name" => "CLOSED"}, {"value" => "READY", "name" => "READY"}, {"value" => "PROCESSING", "name" => "PROCESSING"}]})
    ConversationStatusReason = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qconnect#ConversationStatusReason", name: "ConversationStatusReason", traits: {"smithy.api#enum" => [{"value" => "SUCCESS", "name" => "SUCCESS"}, {"value" => "FAILED", "name" => "FAILED"}, {"value" => "REJECTED", "name" => "REJECTED"}]})
    CreateAIAgentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#CreateAIAgentRequest", name: "CreateAIAgentRequest")
    CreateAIAgentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#CreateAIAgentResponse", name: "CreateAIAgentResponse")
    CreateAIAgentVersionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#CreateAIAgentVersionRequest", name: "CreateAIAgentVersionRequest")
    CreateAIAgentVersionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#CreateAIAgentVersionResponse", name: "CreateAIAgentVersionResponse")
    CreateAIGuardrailRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#CreateAIGuardrailRequest", name: "CreateAIGuardrailRequest")
    CreateAIGuardrailResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#CreateAIGuardrailResponse", name: "CreateAIGuardrailResponse")
    CreateAIGuardrailVersionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#CreateAIGuardrailVersionRequest", name: "CreateAIGuardrailVersionRequest")
    CreateAIGuardrailVersionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#CreateAIGuardrailVersionResponse", name: "CreateAIGuardrailVersionResponse")
    CreateAIPromptRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#CreateAIPromptRequest", name: "CreateAIPromptRequest")
    CreateAIPromptResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#CreateAIPromptResponse", name: "CreateAIPromptResponse")
    CreateAIPromptVersionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#CreateAIPromptVersionRequest", name: "CreateAIPromptVersionRequest")
    CreateAIPromptVersionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#CreateAIPromptVersionResponse", name: "CreateAIPromptVersionResponse")
    CreateAssistantAssociationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#CreateAssistantAssociationInput", name: "CreateAssistantAssociationInput")
    CreateAssistantAssociationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#CreateAssistantAssociationOutput", name: "CreateAssistantAssociationOutput")
    CreateAssistantInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#CreateAssistantInput", name: "CreateAssistantInput")
    CreateAssistantOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#CreateAssistantOutput", name: "CreateAssistantOutput")
    CreateContentAssociationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#CreateContentAssociationRequest", name: "CreateContentAssociationRequest")
    CreateContentAssociationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#CreateContentAssociationResponse", name: "CreateContentAssociationResponse")
    CreateContentInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#CreateContentInput", name: "CreateContentInput")
    CreateContentOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#CreateContentOutput", name: "CreateContentOutput")
    CreateKnowledgeBaseInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#CreateKnowledgeBaseInput", name: "CreateKnowledgeBaseInput")
    CreateKnowledgeBaseOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#CreateKnowledgeBaseOutput", name: "CreateKnowledgeBaseOutput")
    CreateMessageTemplateAttachmentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#CreateMessageTemplateAttachmentRequest", name: "CreateMessageTemplateAttachmentRequest")
    CreateMessageTemplateAttachmentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#CreateMessageTemplateAttachmentResponse", name: "CreateMessageTemplateAttachmentResponse")
    CreateMessageTemplateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#CreateMessageTemplateRequest", name: "CreateMessageTemplateRequest")
    CreateMessageTemplateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#CreateMessageTemplateResponse", name: "CreateMessageTemplateResponse")
    CreateMessageTemplateVersionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#CreateMessageTemplateVersionRequest", name: "CreateMessageTemplateVersionRequest")
    CreateMessageTemplateVersionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#CreateMessageTemplateVersionResponse", name: "CreateMessageTemplateVersionResponse")
    CreateQuickResponseRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#CreateQuickResponseRequest", name: "CreateQuickResponseRequest")
    CreateQuickResponseResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#CreateQuickResponseResponse", name: "CreateQuickResponseResponse")
    CreateSessionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#CreateSessionInput", name: "CreateSessionInput")
    CreateSessionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#CreateSessionOutput", name: "CreateSessionOutput")
    CrossRegionStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qconnect#CrossRegionStatus", name: "CrossRegionStatus", traits: {"smithy.api#enum" => [{"value" => "NONE", "name" => "NONE"}, {"value" => "REGIONAL", "name" => "REGIONAL"}, {"value" => "GLOBAL", "name" => "GLOBAL"}]})
    CustomAttributes = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.qconnect#CustomAttributes", name: "CustomAttributes", traits: {"smithy.api#sensitive" => {}})
    CustomerProfileAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#CustomerProfileAttributes", name: "CustomerProfileAttributes")
    DataDetails = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.qconnect#DataDetails", name: "DataDetails")
    DataReference = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.qconnect#DataReference", name: "DataReference")
    DataSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#DataSummary", name: "DataSummary")
    DataSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.qconnect#DataSummaryList", name: "DataSummaryList")
    DeactivateMessageTemplateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#DeactivateMessageTemplateRequest", name: "DeactivateMessageTemplateRequest")
    DeactivateMessageTemplateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#DeactivateMessageTemplateResponse", name: "DeactivateMessageTemplateResponse")
    DelegateAgentConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#DelegateAgentConfiguration", name: "DelegateAgentConfiguration")
    DeleteAIAgentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#DeleteAIAgentRequest", name: "DeleteAIAgentRequest")
    DeleteAIAgentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#DeleteAIAgentResponse", name: "DeleteAIAgentResponse")
    DeleteAIAgentVersionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#DeleteAIAgentVersionRequest", name: "DeleteAIAgentVersionRequest")
    DeleteAIAgentVersionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#DeleteAIAgentVersionResponse", name: "DeleteAIAgentVersionResponse")
    DeleteAIGuardrailRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#DeleteAIGuardrailRequest", name: "DeleteAIGuardrailRequest")
    DeleteAIGuardrailResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#DeleteAIGuardrailResponse", name: "DeleteAIGuardrailResponse")
    DeleteAIGuardrailVersionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#DeleteAIGuardrailVersionRequest", name: "DeleteAIGuardrailVersionRequest")
    DeleteAIGuardrailVersionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#DeleteAIGuardrailVersionResponse", name: "DeleteAIGuardrailVersionResponse")
    DeleteAIPromptRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#DeleteAIPromptRequest", name: "DeleteAIPromptRequest")
    DeleteAIPromptResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#DeleteAIPromptResponse", name: "DeleteAIPromptResponse")
    DeleteAIPromptVersionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#DeleteAIPromptVersionRequest", name: "DeleteAIPromptVersionRequest")
    DeleteAIPromptVersionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#DeleteAIPromptVersionResponse", name: "DeleteAIPromptVersionResponse")
    DeleteAssistantAssociationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#DeleteAssistantAssociationInput", name: "DeleteAssistantAssociationInput")
    DeleteAssistantAssociationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#DeleteAssistantAssociationOutput", name: "DeleteAssistantAssociationOutput")
    DeleteAssistantInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#DeleteAssistantInput", name: "DeleteAssistantInput")
    DeleteAssistantOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#DeleteAssistantOutput", name: "DeleteAssistantOutput")
    DeleteContentAssociationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#DeleteContentAssociationRequest", name: "DeleteContentAssociationRequest")
    DeleteContentAssociationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#DeleteContentAssociationResponse", name: "DeleteContentAssociationResponse")
    DeleteContentInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#DeleteContentInput", name: "DeleteContentInput")
    DeleteContentOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#DeleteContentOutput", name: "DeleteContentOutput")
    DeleteImportJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#DeleteImportJobRequest", name: "DeleteImportJobRequest")
    DeleteImportJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#DeleteImportJobResponse", name: "DeleteImportJobResponse")
    DeleteKnowledgeBaseInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#DeleteKnowledgeBaseInput", name: "DeleteKnowledgeBaseInput")
    DeleteKnowledgeBaseOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#DeleteKnowledgeBaseOutput", name: "DeleteKnowledgeBaseOutput")
    DeleteMessageTemplateAttachmentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#DeleteMessageTemplateAttachmentRequest", name: "DeleteMessageTemplateAttachmentRequest")
    DeleteMessageTemplateAttachmentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#DeleteMessageTemplateAttachmentResponse", name: "DeleteMessageTemplateAttachmentResponse")
    DeleteMessageTemplateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#DeleteMessageTemplateRequest", name: "DeleteMessageTemplateRequest")
    DeleteMessageTemplateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#DeleteMessageTemplateResponse", name: "DeleteMessageTemplateResponse")
    DeleteQuickResponseRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#DeleteQuickResponseRequest", name: "DeleteQuickResponseRequest")
    DeleteQuickResponseResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#DeleteQuickResponseResponse", name: "DeleteQuickResponseResponse")
    DependencyFailedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#DependencyFailedException", name: "DependencyFailedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 424})
    Description = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qconnect#Description", name: "Description", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z0-9\\s_.,-]+"})
    Document = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#Document", name: "Document")
    DocumentText = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#DocumentText", name: "DocumentText")
    EmailGenerativeAnswerAIAgentConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#EmailGenerativeAnswerAIAgentConfiguration", name: "EmailGenerativeAnswerAIAgentConfiguration")
    EmailGenerativeAnswerChunkDataDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#EmailGenerativeAnswerChunkDataDetails", name: "EmailGenerativeAnswerChunkDataDetails")
    EmailHeader = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#EmailHeader", name: "EmailHeader")
    EmailHeaderKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qconnect#EmailHeaderKey", name: "EmailHeaderKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 126}, "smithy.api#pattern" => "^[!-9;-@A-~]+$"})
    EmailHeaderValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qconnect#EmailHeaderValue", name: "EmailHeaderValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 870}, "smithy.api#pattern" => "[ -~]*", "smithy.api#sensitive" => {}})
    EmailHeaders = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.qconnect#EmailHeaders", name: "EmailHeaders", traits: {"smithy.api#length" => {"min" => 0, "max" => 15}})
    EmailMessageTemplateContent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#EmailMessageTemplateContent", name: "EmailMessageTemplateContent")
    EmailMessageTemplateContentBody = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#EmailMessageTemplateContentBody", name: "EmailMessageTemplateContentBody")
    EmailOverviewAIAgentConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#EmailOverviewAIAgentConfiguration", name: "EmailOverviewAIAgentConfiguration")
    EmailOverviewChunkDataDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#EmailOverviewChunkDataDetails", name: "EmailOverviewChunkDataDetails")
    EmailResponseAIAgentConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#EmailResponseAIAgentConfiguration", name: "EmailResponseAIAgentConfiguration")
    EmailResponseChunkDataDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#EmailResponseChunkDataDetails", name: "EmailResponseChunkDataDetails")
    ExtendedMessageTemplateData = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#ExtendedMessageTemplateData", name: "ExtendedMessageTemplateData")
    ExternalBedrockKnowledgeBaseConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#ExternalBedrockKnowledgeBaseConfig", name: "ExternalBedrockKnowledgeBaseConfig")
    ExternalSource = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qconnect#ExternalSource", name: "ExternalSource", traits: {"smithy.api#enum" => [{"value" => "AMAZON_CONNECT", "name" => "AMAZON_CONNECT"}]})
    ExternalSourceConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#ExternalSourceConfiguration", name: "ExternalSourceConfiguration")
    FailureReason = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.qconnect#FailureReason", name: "FailureReason")
    Filter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#Filter", name: "Filter")
    FilterAttribute = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#FilterAttribute", name: "FilterAttribute")
    FilterAttributeKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qconnect#FilterAttributeKey", name: "FilterAttributeKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    FilterField = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qconnect#FilterField", name: "FilterField", traits: {"smithy.api#enum" => [{"value" => "NAME", "name" => "NAME"}]})
    FilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.qconnect#FilterList", name: "FilterList")
    FilterOperator = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qconnect#FilterOperator", name: "FilterOperator", traits: {"smithy.api#enum" => [{"value" => "EQUALS", "name" => "EQUALS"}]})
    FixedSizeChunkingConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#FixedSizeChunkingConfiguration", name: "FixedSizeChunkingConfiguration")
    GenerativeChunkDataDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#GenerativeChunkDataDetails", name: "GenerativeChunkDataDetails")
    GenerativeContentFeedbackData = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#GenerativeContentFeedbackData", name: "GenerativeContentFeedbackData")
    GenerativeDataDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#GenerativeDataDetails", name: "GenerativeDataDetails")
    GenerativeReference = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#GenerativeReference", name: "GenerativeReference")
    GenericArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qconnect#GenericArn", name: "GenericArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^arn:[a-z-]+?:[a-z-]+?:[a-z0-9-]*?:([0-9]{12})?:[a-zA-Z0-9-:/]+$"})
    GetAIAgentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#GetAIAgentRequest", name: "GetAIAgentRequest")
    GetAIAgentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#GetAIAgentResponse", name: "GetAIAgentResponse")
    GetAIGuardrailRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#GetAIGuardrailRequest", name: "GetAIGuardrailRequest")
    GetAIGuardrailResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#GetAIGuardrailResponse", name: "GetAIGuardrailResponse")
    GetAIPromptRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#GetAIPromptRequest", name: "GetAIPromptRequest")
    GetAIPromptResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#GetAIPromptResponse", name: "GetAIPromptResponse")
    GetAssistantAssociationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#GetAssistantAssociationInput", name: "GetAssistantAssociationInput")
    GetAssistantAssociationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#GetAssistantAssociationOutput", name: "GetAssistantAssociationOutput")
    GetAssistantInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#GetAssistantInput", name: "GetAssistantInput")
    GetAssistantOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#GetAssistantOutput", name: "GetAssistantOutput")
    GetContentAssociationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#GetContentAssociationRequest", name: "GetContentAssociationRequest")
    GetContentAssociationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#GetContentAssociationResponse", name: "GetContentAssociationResponse")
    GetContentInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#GetContentInput", name: "GetContentInput")
    GetContentOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#GetContentOutput", name: "GetContentOutput")
    GetContentSummaryInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#GetContentSummaryInput", name: "GetContentSummaryInput")
    GetContentSummaryOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#GetContentSummaryOutput", name: "GetContentSummaryOutput")
    GetImportJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#GetImportJobRequest", name: "GetImportJobRequest")
    GetImportJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#GetImportJobResponse", name: "GetImportJobResponse")
    GetKnowledgeBaseInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#GetKnowledgeBaseInput", name: "GetKnowledgeBaseInput")
    GetKnowledgeBaseOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#GetKnowledgeBaseOutput", name: "GetKnowledgeBaseOutput")
    GetMessageTemplateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#GetMessageTemplateRequest", name: "GetMessageTemplateRequest")
    GetMessageTemplateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#GetMessageTemplateResponse", name: "GetMessageTemplateResponse")
    GetNextMessageRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#GetNextMessageRequest", name: "GetNextMessageRequest")
    GetNextMessageResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#GetNextMessageResponse", name: "GetNextMessageResponse")
    GetQuickResponseRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#GetQuickResponseRequest", name: "GetQuickResponseRequest")
    GetQuickResponseResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#GetQuickResponseResponse", name: "GetQuickResponseResponse")
    GetRecommendationsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#GetRecommendationsInput", name: "GetRecommendationsInput")
    GetRecommendationsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#GetRecommendationsOutput", name: "GetRecommendationsOutput")
    GetSessionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#GetSessionInput", name: "GetSessionInput")
    GetSessionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#GetSessionOutput", name: "GetSessionOutput")
    GroupingConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#GroupingConfiguration", name: "GroupingConfiguration")
    GroupingCriteria = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qconnect#GroupingCriteria", name: "GroupingCriteria", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#sensitive" => {}})
    GroupingValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qconnect#GroupingValue", name: "GroupingValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#sensitive" => {}})
    GroupingValues = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.qconnect#GroupingValues", name: "GroupingValues", traits: {"smithy.api#uniqueItems" => {}})
    GuardrailAction = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qconnect#GuardrailAction", name: "GuardrailAction", traits: {"smithy.api#enum" => [{"value" => "NONE", "name" => "NONE"}, {"value" => "BLOCKED", "name" => "BLOCKED"}, {"value" => "MASKED", "name" => "MASKED"}]})
    GuardrailContentFilterConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#GuardrailContentFilterConfig", name: "GuardrailContentFilterConfig")
    GuardrailContentFilterType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qconnect#GuardrailContentFilterType", name: "GuardrailContentFilterType", traits: {"smithy.api#enum" => [{"value" => "SEXUAL", "name" => "SEXUAL"}, {"value" => "VIOLENCE", "name" => "VIOLENCE"}, {"value" => "HATE", "name" => "HATE"}, {"value" => "INSULTS", "name" => "INSULTS"}, {"value" => "MISCONDUCT", "name" => "MISCONDUCT"}, {"value" => "PROMPT_ATTACK", "name" => "PROMPT_ATTACK"}], "smithy.api#sensitive" => {}})
    GuardrailContentFiltersConfig = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.qconnect#GuardrailContentFiltersConfig", name: "GuardrailContentFiltersConfig", traits: {"smithy.api#length" => {"min" => 1, "max" => 6}})
    GuardrailContextualGroundingFilterConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#GuardrailContextualGroundingFilterConfig", name: "GuardrailContextualGroundingFilterConfig")
    GuardrailContextualGroundingFilterThreshold = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.qconnect#GuardrailContextualGroundingFilterThreshold", name: "GuardrailContextualGroundingFilterThreshold", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0}, "smithy.api#sensitive" => {}})
    GuardrailContextualGroundingFilterType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qconnect#GuardrailContextualGroundingFilterType", name: "GuardrailContextualGroundingFilterType", traits: {"smithy.api#enum" => [{"value" => "GROUNDING", "name" => "GROUNDING"}, {"value" => "RELEVANCE", "name" => "RELEVANCE"}], "smithy.api#sensitive" => {}})
    GuardrailContextualGroundingFiltersConfig = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.qconnect#GuardrailContextualGroundingFiltersConfig", name: "GuardrailContextualGroundingFiltersConfig", traits: {"smithy.api#length" => {"min" => 1}})
    GuardrailFilterStrength = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qconnect#GuardrailFilterStrength", name: "GuardrailFilterStrength", traits: {"smithy.api#enum" => [{"value" => "NONE", "name" => "NONE"}, {"value" => "LOW", "name" => "LOW"}, {"value" => "MEDIUM", "name" => "MEDIUM"}, {"value" => "HIGH", "name" => "HIGH"}], "smithy.api#sensitive" => {}})
    GuardrailManagedWordListsConfig = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.qconnect#GuardrailManagedWordListsConfig", name: "GuardrailManagedWordListsConfig")
    GuardrailManagedWordsConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#GuardrailManagedWordsConfig", name: "GuardrailManagedWordsConfig")
    GuardrailManagedWordsType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qconnect#GuardrailManagedWordsType", name: "GuardrailManagedWordsType", traits: {"smithy.api#enum" => [{"value" => "PROFANITY", "name" => "PROFANITY"}], "smithy.api#sensitive" => {}})
    GuardrailPiiEntitiesConfig = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.qconnect#GuardrailPiiEntitiesConfig", name: "GuardrailPiiEntitiesConfig", traits: {"smithy.api#length" => {"min" => 1}, "smithy.api#uniqueItems" => {}})
    GuardrailPiiEntityConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#GuardrailPiiEntityConfig", name: "GuardrailPiiEntityConfig")
    GuardrailPiiEntityType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qconnect#GuardrailPiiEntityType", name: "GuardrailPiiEntityType", traits: {"smithy.api#enum" => [{"value" => "ADDRESS", "name" => "ADDRESS"}, {"value" => "AGE", "name" => "AGE"}, {"value" => "AWS_ACCESS_KEY", "name" => "AWS_ACCESS_KEY"}, {"value" => "AWS_SECRET_KEY", "name" => "AWS_SECRET_KEY"}, {"value" => "CA_HEALTH_NUMBER", "name" => "CA_HEALTH_NUMBER"}, {"value" => "CA_SOCIAL_INSURANCE_NUMBER", "name" => "CA_SOCIAL_INSURANCE_NUMBER"}, {"value" => "CREDIT_DEBIT_CARD_CVV", "name" => "CREDIT_DEBIT_CARD_CVV"}, {"value" => "CREDIT_DEBIT_CARD_EXPIRY", "name" => "CREDIT_DEBIT_CARD_EXPIRY"}, {"value" => "CREDIT_DEBIT_CARD_NUMBER", "name" => "CREDIT_DEBIT_CARD_NUMBER"}, {"value" => "DRIVER_ID", "name" => "DRIVER_ID"}, {"value" => "EMAIL", "name" => "EMAIL"}, {"value" => "INTERNATIONAL_BANK_ACCOUNT_NUMBER", "name" => "INTERNATIONAL_BANK_ACCOUNT_NUMBER"}, {"value" => "IP_ADDRESS", "name" => "IP_ADDRESS"}, {"value" => "LICENSE_PLATE", "name" => "LICENSE_PLATE"}, {"value" => "MAC_ADDRESS", "name" => "MAC_ADDRESS"}, {"value" => "NAME", "name" => "NAME"}, {"value" => "PASSWORD", "name" => "PASSWORD"}, {"value" => "PHONE", "name" => "PHONE"}, {"value" => "PIN", "name" => "PIN"}, {"value" => "SWIFT_CODE", "name" => "SWIFT_CODE"}, {"value" => "UK_NATIONAL_HEALTH_SERVICE_NUMBER", "name" => "UK_NATIONAL_HEALTH_SERVICE_NUMBER"}, {"value" => "UK_NATIONAL_INSURANCE_NUMBER", "name" => "UK_NATIONAL_INSURANCE_NUMBER"}, {"value" => "UK_UNIQUE_TAXPAYER_REFERENCE_NUMBER", "name" => "UK_UNIQUE_TAXPAYER_REFERENCE_NUMBER"}, {"value" => "URL", "name" => "URL"}, {"value" => "USERNAME", "name" => "USERNAME"}, {"value" => "US_BANK_ACCOUNT_NUMBER", "name" => "US_BANK_ACCOUNT_NUMBER"}, {"value" => "US_BANK_ROUTING_NUMBER", "name" => "US_BANK_ROUTING_NUMBER"}, {"value" => "US_INDIVIDUAL_TAX_IDENTIFICATION_NUMBER", "name" => "US_INDIVIDUAL_TAX_IDENTIFICATION_NUMBER"}, {"value" => "US_PASSPORT_NUMBER", "name" => "US_PASSPORT_NUMBER"}, {"value" => "US_SOCIAL_SECURITY_NUMBER", "name" => "US_SOCIAL_SECURITY_NUMBER"}, {"value" => "VEHICLE_IDENTIFICATION_NUMBER", "name" => "VEHICLE_IDENTIFICATION_NUMBER"}], "smithy.api#sensitive" => {}})
    GuardrailPolicyResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#GuardrailPolicyResult", name: "GuardrailPolicyResult")
    GuardrailPolicyResultList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.qconnect#GuardrailPolicyResultList", name: "GuardrailPolicyResultList", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    GuardrailPolicyType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qconnect#GuardrailPolicyType", name: "GuardrailPolicyType", traits: {"smithy.api#enum" => [{"value" => "CONTENT_FILTER", "name" => "CONTENT_FILTER"}, {"value" => "TOPIC", "name" => "TOPIC"}, {"value" => "WORD", "name" => "WORD"}, {"value" => "SENSITIVE_INFORMATION_PII", "name" => "SENSITIVE_INFORMATION_PII"}, {"value" => "SENSITIVE_INFORMATION_REGEX", "name" => "SENSITIVE_INFORMATION_REGEX"}, {"value" => "CONTEXTUAL_GROUNDING", "name" => "CONTEXTUAL_GROUNDING"}]})
    GuardrailRegexConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#GuardrailRegexConfig", name: "GuardrailRegexConfig")
    GuardrailRegexDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qconnect#GuardrailRegexDescription", name: "GuardrailRegexDescription", traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}, "smithy.api#sensitive" => {}})
    GuardrailRegexName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qconnect#GuardrailRegexName", name: "GuardrailRegexName", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#sensitive" => {}})
    GuardrailRegexPattern = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qconnect#GuardrailRegexPattern", name: "GuardrailRegexPattern", traits: {"smithy.api#length" => {"min" => 1}, "smithy.api#sensitive" => {}})
    GuardrailRegexesConfig = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.qconnect#GuardrailRegexesConfig", name: "GuardrailRegexesConfig", traits: {"smithy.api#length" => {"min" => 1}})
    GuardrailSensitiveInformationAction = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qconnect#GuardrailSensitiveInformationAction", name: "GuardrailSensitiveInformationAction", traits: {"smithy.api#enum" => [{"value" => "BLOCK", "name" => "BLOCK"}, {"value" => "ANONYMIZE", "name" => "ANONYMIZE"}], "smithy.api#sensitive" => {}})
    GuardrailSource = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qconnect#GuardrailSource", name: "GuardrailSource", traits: {"smithy.api#enum" => [{"value" => "INPUT", "name" => "INPUT"}, {"value" => "OUTPUT", "name" => "OUTPUT"}]})
    GuardrailTopicConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#GuardrailTopicConfig", name: "GuardrailTopicConfig")
    GuardrailTopicDefinition = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qconnect#GuardrailTopicDefinition", name: "GuardrailTopicDefinition", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}, "smithy.api#sensitive" => {}})
    GuardrailTopicExample = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qconnect#GuardrailTopicExample", name: "GuardrailTopicExample", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#sensitive" => {}})
    GuardrailTopicExamples = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.qconnect#GuardrailTopicExamples", name: "GuardrailTopicExamples", traits: {"smithy.api#length" => {"min" => 0}})
    GuardrailTopicName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qconnect#GuardrailTopicName", name: "GuardrailTopicName", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[0-9a-zA-Z-_ !?.]+$", "smithy.api#sensitive" => {}})
    GuardrailTopicType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qconnect#GuardrailTopicType", name: "GuardrailTopicType", traits: {"smithy.api#enum" => [{"value" => "DENY", "name" => "DENY"}], "smithy.api#sensitive" => {}})
    GuardrailTopicsConfig = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.qconnect#GuardrailTopicsConfig", name: "GuardrailTopicsConfig", traits: {"smithy.api#length" => {"min" => 1}})
    GuardrailWordConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#GuardrailWordConfig", name: "GuardrailWordConfig")
    GuardrailWordText = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qconnect#GuardrailWordText", name: "GuardrailWordText", traits: {"smithy.api#length" => {"min" => 1}, "smithy.api#sensitive" => {}})
    GuardrailWordsConfig = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.qconnect#GuardrailWordsConfig", name: "GuardrailWordsConfig", traits: {"smithy.api#length" => {"min" => 1}})
    HandoffAgentConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#HandoffAgentConfiguration", name: "HandoffAgentConfiguration")
    Headers = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.qconnect#Headers", name: "Headers")
    HierarchicalChunkingConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#HierarchicalChunkingConfiguration", name: "HierarchicalChunkingConfiguration")
    HierarchicalChunkingLevelConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#HierarchicalChunkingLevelConfiguration", name: "HierarchicalChunkingLevelConfiguration")
    HierarchicalChunkingLevelConfigurations = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.qconnect#HierarchicalChunkingLevelConfigurations", name: "HierarchicalChunkingLevelConfigurations", traits: {"smithy.api#length" => {"min" => 2, "max" => 2}})
    Highlight = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#Highlight", name: "Highlight")
    HighlightOffset = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.qconnect#HighlightOffset", name: "HighlightOffset", traits: {"smithy.api#default" => 0})
    Highlights = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.qconnect#Highlights", name: "Highlights")
    ImportJobData = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#ImportJobData", name: "ImportJobData")
    ImportJobList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.qconnect#ImportJobList", name: "ImportJobList")
    ImportJobStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qconnect#ImportJobStatus", name: "ImportJobStatus", traits: {"smithy.api#enum" => [{"value" => "START_IN_PROGRESS", "name" => "START_IN_PROGRESS"}, {"value" => "FAILED", "name" => "FAILED"}, {"value" => "COMPLETE", "name" => "COMPLETE"}, {"value" => "DELETE_IN_PROGRESS", "name" => "DELETE_IN_PROGRESS"}, {"value" => "DELETE_FAILED", "name" => "DELETE_FAILED"}, {"value" => "DELETED", "name" => "DELETED"}]})
    ImportJobSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#ImportJobSummary", name: "ImportJobSummary")
    ImportJobType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qconnect#ImportJobType", name: "ImportJobType", traits: {"smithy.api#enum" => [{"value" => "QUICK_RESPONSES", "name" => "QUICK_RESPONSES"}]})
    IntentDetectedDataDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#IntentDetectedDataDetails", name: "IntentDetectedDataDetails")
    IntentInputData = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#IntentInputData", name: "IntentInputData")
    InteractionMode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qconnect#InteractionMode", name: "InteractionMode", traits: {"smithy.api#enum" => [{"value" => "DELEGATE", "name" => "DELEGATE"}, {"value" => "HANDOFF", "name" => "HANDOFF"}]})
    JSONDocument = ::Smithy::Schema::Shapes::DocumentShape.new(id: "com.amazonaws.qconnect#JSONDocument", name: "JSONDocument", traits: {"smithy.api#sensitive" => {}})
    JSONDocumentList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.qconnect#JSONDocumentList", name: "JSONDocumentList")
    KnowledgeBaseAssociationConfigurationData = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#KnowledgeBaseAssociationConfigurationData", name: "KnowledgeBaseAssociationConfigurationData")
    KnowledgeBaseAssociationData = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#KnowledgeBaseAssociationData", name: "KnowledgeBaseAssociationData")
    KnowledgeBaseData = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#KnowledgeBaseData", name: "KnowledgeBaseData", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.qconnect#KnowledgeBase"}]})
    KnowledgeBaseList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.qconnect#KnowledgeBaseList", name: "KnowledgeBaseList")
    KnowledgeBaseSearchType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qconnect#KnowledgeBaseSearchType", name: "KnowledgeBaseSearchType", traits: {"smithy.api#enum" => [{"value" => "HYBRID", "name" => "HYBRID"}, {"value" => "SEMANTIC", "name" => "SEMANTIC"}]})
    KnowledgeBaseStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qconnect#KnowledgeBaseStatus", name: "KnowledgeBaseStatus", traits: {"smithy.api#enum" => [{"value" => "CREATE_IN_PROGRESS", "name" => "CREATE_IN_PROGRESS"}, {"value" => "CREATE_FAILED", "name" => "CREATE_FAILED"}, {"value" => "ACTIVE", "name" => "ACTIVE"}, {"value" => "DELETE_IN_PROGRESS", "name" => "DELETE_IN_PROGRESS"}, {"value" => "DELETE_FAILED", "name" => "DELETE_FAILED"}, {"value" => "DELETED", "name" => "DELETED"}]})
    KnowledgeBaseSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#KnowledgeBaseSummary", name: "KnowledgeBaseSummary", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.qconnect#KnowledgeBase"}]})
    KnowledgeBaseType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qconnect#KnowledgeBaseType", name: "KnowledgeBaseType", traits: {"smithy.api#enum" => [{"value" => "EXTERNAL", "name" => "EXTERNAL"}, {"value" => "CUSTOM", "name" => "CUSTOM"}, {"value" => "QUICK_RESPONSES", "name" => "QUICK_RESPONSES"}, {"value" => "MESSAGE_TEMPLATES", "name" => "MESSAGE_TEMPLATES"}, {"value" => "MANAGED", "name" => "MANAGED"}]})
    KnowledgeSource = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.qconnect#KnowledgeSource", name: "KnowledgeSource")
    LanguageCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qconnect#LanguageCode", name: "LanguageCode", traits: {"smithy.api#length" => {"min" => 2, "max" => 5}})
    ListAIAgentVersionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#ListAIAgentVersionsRequest", name: "ListAIAgentVersionsRequest")
    ListAIAgentVersionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#ListAIAgentVersionsResponse", name: "ListAIAgentVersionsResponse")
    ListAIAgentsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#ListAIAgentsRequest", name: "ListAIAgentsRequest")
    ListAIAgentsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#ListAIAgentsResponse", name: "ListAIAgentsResponse")
    ListAIGuardrailVersionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#ListAIGuardrailVersionsRequest", name: "ListAIGuardrailVersionsRequest")
    ListAIGuardrailVersionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#ListAIGuardrailVersionsResponse", name: "ListAIGuardrailVersionsResponse")
    ListAIGuardrailsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#ListAIGuardrailsRequest", name: "ListAIGuardrailsRequest")
    ListAIGuardrailsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#ListAIGuardrailsResponse", name: "ListAIGuardrailsResponse")
    ListAIPromptVersionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#ListAIPromptVersionsRequest", name: "ListAIPromptVersionsRequest")
    ListAIPromptVersionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#ListAIPromptVersionsResponse", name: "ListAIPromptVersionsResponse")
    ListAIPromptsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#ListAIPromptsRequest", name: "ListAIPromptsRequest")
    ListAIPromptsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#ListAIPromptsResponse", name: "ListAIPromptsResponse")
    ListAssistantAssociationsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#ListAssistantAssociationsInput", name: "ListAssistantAssociationsInput")
    ListAssistantAssociationsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#ListAssistantAssociationsOutput", name: "ListAssistantAssociationsOutput")
    ListAssistantsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#ListAssistantsInput", name: "ListAssistantsInput")
    ListAssistantsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#ListAssistantsOutput", name: "ListAssistantsOutput")
    ListContentAssociationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#ListContentAssociationsRequest", name: "ListContentAssociationsRequest")
    ListContentAssociationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#ListContentAssociationsResponse", name: "ListContentAssociationsResponse")
    ListContentsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#ListContentsInput", name: "ListContentsInput")
    ListContentsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#ListContentsOutput", name: "ListContentsOutput")
    ListImportJobsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#ListImportJobsRequest", name: "ListImportJobsRequest")
    ListImportJobsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#ListImportJobsResponse", name: "ListImportJobsResponse")
    ListKnowledgeBasesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#ListKnowledgeBasesInput", name: "ListKnowledgeBasesInput")
    ListKnowledgeBasesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#ListKnowledgeBasesOutput", name: "ListKnowledgeBasesOutput")
    ListMessageTemplateVersionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#ListMessageTemplateVersionsRequest", name: "ListMessageTemplateVersionsRequest")
    ListMessageTemplateVersionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#ListMessageTemplateVersionsResponse", name: "ListMessageTemplateVersionsResponse")
    ListMessageTemplatesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#ListMessageTemplatesRequest", name: "ListMessageTemplatesRequest")
    ListMessageTemplatesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#ListMessageTemplatesResponse", name: "ListMessageTemplatesResponse")
    ListMessagesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#ListMessagesRequest", name: "ListMessagesRequest")
    ListMessagesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#ListMessagesResponse", name: "ListMessagesResponse")
    ListModelsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#ListModelsRequest", name: "ListModelsRequest")
    ListModelsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#ListModelsResponse", name: "ListModelsResponse")
    ListQuickResponsesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#ListQuickResponsesRequest", name: "ListQuickResponsesRequest")
    ListQuickResponsesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#ListQuickResponsesResponse", name: "ListQuickResponsesResponse")
    ListSpansRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#ListSpansRequest", name: "ListSpansRequest")
    ListSpansResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#ListSpansResponse", name: "ListSpansResponse")
    ListTagsForResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#ListTagsForResourceInput", name: "ListTagsForResourceInput")
    ListTagsForResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#ListTagsForResourceOutput", name: "ListTagsForResourceOutput")
    LlmModelId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qconnect#LlmModelId", name: "LlmModelId", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    ManagedSourceConfiguration = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.qconnect#ManagedSourceConfiguration", name: "ManagedSourceConfiguration")
    ManualSearchAIAgentConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#ManualSearchAIAgentConfiguration", name: "ManualSearchAIAgentConfiguration")
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.qconnect#MaxResults", name: "MaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    MaxTokensToSample = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.qconnect#MaxTokensToSample", name: "MaxTokensToSample", traits: {"smithy.api#range" => {"min" => 1, "max" => 4096}, "smithy.api#sensitive" => {}})
    MessageConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#MessageConfiguration", name: "MessageConfiguration")
    MessageData = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.qconnect#MessageData", name: "MessageData")
    MessageFilterType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qconnect#MessageFilterType", name: "MessageFilterType", traits: {"smithy.api#enum" => [{"value" => "ALL", "name" => "ALL"}, {"value" => "TEXT_ONLY", "name" => "TEXT_ONLY"}]})
    MessageInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#MessageInput", name: "MessageInput")
    MessageList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.qconnect#MessageList", name: "MessageList")
    MessageMetadata = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.qconnect#MessageMetadata", name: "MessageMetadata")
    MessageOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#MessageOutput", name: "MessageOutput")
    MessageTemplateAttachment = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#MessageTemplateAttachment", name: "MessageTemplateAttachment")
    MessageTemplateAttachmentList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.qconnect#MessageTemplateAttachmentList", name: "MessageTemplateAttachmentList", traits: {"smithy.api#uniqueItems" => {}})
    MessageTemplateAttributeKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qconnect#MessageTemplateAttributeKey", name: "MessageTemplateAttributeKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 32767}})
    MessageTemplateAttributeKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.qconnect#MessageTemplateAttributeKeyList", name: "MessageTemplateAttributeKeyList", traits: {"smithy.api#sensitive" => {}, "smithy.api#uniqueItems" => {}})
    MessageTemplateAttributeType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qconnect#MessageTemplateAttributeType", name: "MessageTemplateAttributeType", traits: {"smithy.api#enum" => [{"value" => "SYSTEM", "name" => "SYSTEM"}, {"value" => "AGENT", "name" => "AGENT"}, {"value" => "CUSTOMER_PROFILE", "name" => "CUSTOMER_PROFILE"}, {"value" => "CUSTOM", "name" => "CUSTOM"}]})
    MessageTemplateAttributeTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.qconnect#MessageTemplateAttributeTypeList", name: "MessageTemplateAttributeTypeList", traits: {"smithy.api#uniqueItems" => {}})
    MessageTemplateAttributeValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qconnect#MessageTemplateAttributeValue", name: "MessageTemplateAttributeValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 32767}, "smithy.api#sensitive" => {}})
    MessageTemplateAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#MessageTemplateAttributes", name: "MessageTemplateAttributes")
    MessageTemplateBodyContentProvider = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.qconnect#MessageTemplateBodyContentProvider", name: "MessageTemplateBodyContentProvider")
    MessageTemplateContentProvider = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.qconnect#MessageTemplateContentProvider", name: "MessageTemplateContentProvider")
    MessageTemplateContentSha256 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qconnect#MessageTemplateContentSha256", name: "MessageTemplateContentSha256", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9]+$"})
    MessageTemplateData = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#MessageTemplateData", name: "MessageTemplateData", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.qconnect#MessageTemplate"}, {"resource" => "com.amazonaws.qconnect#KnowledgeBase"}]})
    MessageTemplateFilterField = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#MessageTemplateFilterField", name: "MessageTemplateFilterField")
    MessageTemplateFilterFieldList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.qconnect#MessageTemplateFilterFieldList", name: "MessageTemplateFilterFieldList", traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    MessageTemplateFilterOperator = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qconnect#MessageTemplateFilterOperator", name: "MessageTemplateFilterOperator", traits: {"smithy.api#enum" => [{"value" => "EQUALS", "name" => "EQUALS"}, {"value" => "PREFIX", "name" => "PREFIX"}]})
    MessageTemplateFilterValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qconnect#MessageTemplateFilterValue", name: "MessageTemplateFilterValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    MessageTemplateFilterValueList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.qconnect#MessageTemplateFilterValueList", name: "MessageTemplateFilterValueList", traits: {"smithy.api#length" => {"min" => 1, "max" => 5}, "smithy.api#uniqueItems" => {}})
    MessageTemplateOrderField = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#MessageTemplateOrderField", name: "MessageTemplateOrderField")
    MessageTemplateQueryField = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#MessageTemplateQueryField", name: "MessageTemplateQueryField")
    MessageTemplateQueryFieldList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.qconnect#MessageTemplateQueryFieldList", name: "MessageTemplateQueryFieldList", traits: {"smithy.api#length" => {"min" => 0, "max" => 4}})
    MessageTemplateQueryOperator = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qconnect#MessageTemplateQueryOperator", name: "MessageTemplateQueryOperator", traits: {"smithy.api#enum" => [{"value" => "CONTAINS", "name" => "CONTAINS"}, {"value" => "CONTAINS_AND_PREFIX", "name" => "CONTAINS_AND_PREFIX"}]})
    MessageTemplateQueryValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qconnect#MessageTemplateQueryValue", name: "MessageTemplateQueryValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    MessageTemplateQueryValueList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.qconnect#MessageTemplateQueryValueList", name: "MessageTemplateQueryValueList", traits: {"smithy.api#length" => {"min" => 1, "max" => 5}, "smithy.api#uniqueItems" => {}})
    MessageTemplateSearchExpression = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#MessageTemplateSearchExpression", name: "MessageTemplateSearchExpression")
    MessageTemplateSearchResultData = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#MessageTemplateSearchResultData", name: "MessageTemplateSearchResultData", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.qconnect#MessageTemplate"}, {"resource" => "com.amazonaws.qconnect#KnowledgeBase"}]})
    MessageTemplateSearchResultsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.qconnect#MessageTemplateSearchResultsList", name: "MessageTemplateSearchResultsList")
    MessageTemplateSourceConfiguration = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.qconnect#MessageTemplateSourceConfiguration", name: "MessageTemplateSourceConfiguration")
    MessageTemplateSourceConfigurationSummary = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.qconnect#MessageTemplateSourceConfigurationSummary", name: "MessageTemplateSourceConfigurationSummary")
    MessageTemplateSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#MessageTemplateSummary", name: "MessageTemplateSummary", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.qconnect#MessageTemplate"}, {"resource" => "com.amazonaws.qconnect#KnowledgeBase"}]})
    MessageTemplateSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.qconnect#MessageTemplateSummaryList", name: "MessageTemplateSummaryList")
    MessageTemplateVersionSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#MessageTemplateVersionSummary", name: "MessageTemplateVersionSummary")
    MessageTemplateVersionSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.qconnect#MessageTemplateVersionSummaryList", name: "MessageTemplateVersionSummaryList")
    MessageType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qconnect#MessageType", name: "MessageType", traits: {"smithy.api#enum" => [{"value" => "TEXT", "name" => "TEXT"}, {"value" => "TOOL_USE_RESULT", "name" => "TOOL_USE_RESULT"}, {"value" => "DATA", "name" => "DATA"}]})
    ModelDisplayName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qconnect#ModelDisplayName", name: "ModelDisplayName", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    ModelId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qconnect#ModelId", name: "ModelId", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    ModelLifecycle = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qconnect#ModelLifecycle", name: "ModelLifecycle", traits: {"smithy.api#enum" => [{"value" => "ACTIVE", "name" => "ACTIVE"}, {"value" => "LEGACY", "name" => "LEGACY"}]})
    ModelSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#ModelSummary", name: "ModelSummary")
    ModelSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.qconnect#ModelSummaryList", name: "ModelSummaryList")
    MultiAgentConfiguration = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.qconnect#MultiAgentConfiguration", name: "MultiAgentConfiguration")
    MultiAgentConfigurationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.qconnect#MultiAgentConfigurationList", name: "MultiAgentConfigurationList")
    MultiAgentExampleList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.qconnect#MultiAgentExampleList", name: "MultiAgentExampleList")
    MultiAgentInstruction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#MultiAgentInstruction", name: "MultiAgentInstruction", traits: {"smithy.api#sensitive" => {}})
    Name = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qconnect#Name", name: "Name", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z0-9\\s_.,-]+"})
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qconnect#NextToken", name: "NextToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    NonEmptySensitiveString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qconnect#NonEmptySensitiveString", name: "NonEmptySensitiveString", traits: {"smithy.api#length" => {"min" => 1, "max" => 4096}, "smithy.api#sensitive" => {}})
    NonEmptyString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qconnect#NonEmptyString", name: "NonEmptyString", traits: {"smithy.api#length" => {"min" => 1, "max" => 4096}})
    NonEmptyUnlimitedString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qconnect#NonEmptyUnlimitedString", name: "NonEmptyUnlimitedString", traits: {"smithy.api#length" => {"min" => 1}, "smithy.api#sensitive" => {}})
    NoteTakingAIAgentConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#NoteTakingAIAgentConfiguration", name: "NoteTakingAIAgentConfiguration")
    NotesChunkDataDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#NotesChunkDataDetails", name: "NotesChunkDataDetails")
    NotesDataDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#NotesDataDetails", name: "NotesDataDetails")
    NotifyRecommendationsReceivedError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#NotifyRecommendationsReceivedError", name: "NotifyRecommendationsReceivedError")
    NotifyRecommendationsReceivedErrorList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.qconnect#NotifyRecommendationsReceivedErrorList", name: "NotifyRecommendationsReceivedErrorList")
    NotifyRecommendationsReceivedErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qconnect#NotifyRecommendationsReceivedErrorMessage", name: "NotifyRecommendationsReceivedErrorMessage")
    NotifyRecommendationsReceivedInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#NotifyRecommendationsReceivedInput", name: "NotifyRecommendationsReceivedInput")
    NotifyRecommendationsReceivedOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#NotifyRecommendationsReceivedOutput", name: "NotifyRecommendationsReceivedOutput")
    ObjectFieldsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.qconnect#ObjectFieldsList", name: "ObjectFieldsList", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    OrCondition = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.qconnect#OrCondition", name: "OrCondition")
    OrConditions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.qconnect#OrConditions", name: "OrConditions")
    OrchestrationAIAgentConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#OrchestrationAIAgentConfiguration", name: "OrchestrationAIAgentConfiguration")
    OrchestratorConfigurationEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#OrchestratorConfigurationEntry", name: "OrchestratorConfigurationEntry")
    OrchestratorConfigurationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.qconnect#OrchestratorConfigurationList", name: "OrchestratorConfigurationList")
    Order = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qconnect#Order", name: "Order", traits: {"smithy.api#enum" => [{"value" => "ASC", "name" => "ASC"}, {"value" => "DESC", "name" => "DESC"}]})
    Origin = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qconnect#Origin", name: "Origin", traits: {"smithy.api#enum" => [{"value" => "SYSTEM", "name" => "SYSTEM"}, {"value" => "CUSTOMER", "name" => "CUSTOMER"}]})
    ParsingConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#ParsingConfiguration", name: "ParsingConfiguration")
    ParsingPrompt = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#ParsingPrompt", name: "ParsingPrompt")
    ParsingPromptText = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qconnect#ParsingPromptText", name: "ParsingPromptText", traits: {"smithy.api#length" => {"min" => 1, "max" => 10000}})
    ParsingStrategy = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qconnect#ParsingStrategy", name: "ParsingStrategy", traits: {"smithy.api#enum" => [{"value" => "BEDROCK_FOUNDATION_MODEL", "name" => "BEDROCK_FOUNDATION_MODEL"}]})
    Participant = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qconnect#Participant", name: "Participant", traits: {"smithy.api#enum" => [{"value" => "CUSTOMER", "name" => "CUSTOMER"}, {"value" => "AGENT", "name" => "AGENT"}, {"value" => "BOT", "name" => "BOT"}]})
    PreconditionFailedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#PreconditionFailedException", name: "PreconditionFailedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 412})
    Priority = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qconnect#Priority", name: "Priority", traits: {"smithy.api#enum" => [{"value" => "HIGH", "name" => "HIGH"}, {"value" => "MEDIUM", "name" => "MEDIUM"}, {"value" => "LOW", "name" => "LOW"}]})
    ProactiveRecommendationDataDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#ProactiveRecommendationDataDetails", name: "ProactiveRecommendationDataDetails")
    Probability = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.qconnect#Probability", name: "Probability", traits: {"smithy.api#range" => {"min" => 0, "max" => 1}, "smithy.api#sensitive" => {}})
    PushADMMessageTemplateContent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#PushADMMessageTemplateContent", name: "PushADMMessageTemplateContent")
    PushAPNSMessageTemplateContent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#PushAPNSMessageTemplateContent", name: "PushAPNSMessageTemplateContent")
    PushBaiduMessageTemplateContent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#PushBaiduMessageTemplateContent", name: "PushBaiduMessageTemplateContent")
    PushFCMMessageTemplateContent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#PushFCMMessageTemplateContent", name: "PushFCMMessageTemplateContent")
    PushMessageAction = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qconnect#PushMessageAction", name: "PushMessageAction", traits: {"smithy.api#enum" => [{"value" => "OPEN_APP", "name" => "OPEN_APP"}, {"value" => "DEEP_LINK", "name" => "DEEP_LINK"}, {"value" => "URL", "name" => "URL"}]})
    PushMessageTemplateContent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#PushMessageTemplateContent", name: "PushMessageTemplateContent")
    PutFeedbackRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#PutFeedbackRequest", name: "PutFeedbackRequest")
    PutFeedbackResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#PutFeedbackResponse", name: "PutFeedbackResponse")
    QueryAssistantInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#QueryAssistantInput", name: "QueryAssistantInput")
    QueryAssistantOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#QueryAssistantOutput", name: "QueryAssistantOutput")
    QueryCondition = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.qconnect#QueryCondition", name: "QueryCondition")
    QueryConditionComparisonOperator = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qconnect#QueryConditionComparisonOperator", name: "QueryConditionComparisonOperator", traits: {"smithy.api#enum" => [{"value" => "EQUALS", "name" => "EQUALS"}]})
    QueryConditionExpression = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.qconnect#QueryConditionExpression", name: "QueryConditionExpression", traits: {"smithy.api#length" => {"min" => 0, "max" => 1}})
    QueryConditionFieldName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qconnect#QueryConditionFieldName", name: "QueryConditionFieldName", traits: {"smithy.api#enum" => [{"value" => "RESULT_TYPE", "name" => "RESULT_TYPE"}]})
    QueryConditionItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#QueryConditionItem", name: "QueryConditionItem")
    QueryInputData = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.qconnect#QueryInputData", name: "QueryInputData")
    QueryRecommendationTriggerData = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#QueryRecommendationTriggerData", name: "QueryRecommendationTriggerData")
    QueryResultType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qconnect#QueryResultType", name: "QueryResultType", traits: {"smithy.api#enum" => [{"value" => "KNOWLEDGE_CONTENT", "name" => "KNOWLEDGE_CONTENT"}, {"value" => "INTENT_ANSWER", "name" => "INTENT_ANSWER"}, {"value" => "GENERATIVE_ANSWER", "name" => "GENERATIVE_ANSWER"}, {"value" => "GENERATIVE_ANSWER_CHUNK", "name" => "GENERATIVE_ANSWER_CHUNK"}, {"value" => "BLOCKED_GENERATIVE_ANSWER_CHUNK", "name" => "BLOCKED_GENERATIVE_ANSWER_CHUNK"}, {"value" => "INTENT_ANSWER_CHUNK", "name" => "INTENT_ANSWER_CHUNK"}, {"value" => "BLOCKED_INTENT_ANSWER_CHUNK", "name" => "BLOCKED_INTENT_ANSWER_CHUNK"}, {"value" => "EMAIL_RESPONSE_CHUNK", "name" => "EMAIL_RESPONSE_CHUNK"}, {"value" => "EMAIL_OVERVIEW_CHUNK", "name" => "EMAIL_OVERVIEW_CHUNK"}, {"value" => "EMAIL_GENERATIVE_ANSWER_CHUNK", "name" => "EMAIL_GENERATIVE_ANSWER_CHUNK"}, {"value" => "CASE_SUMMARIZATION_CHUNK", "name" => "CASE_SUMMARIZATION_CHUNK"}, {"value" => "BLOCKED_CASE_SUMMARIZATION_CHUNK", "name" => "BLOCKED_CASE_SUMMARIZATION_CHUNK"}, {"value" => "NOTES", "name" => "NOTES"}, {"value" => "NOTES_CHUNK", "name" => "NOTES_CHUNK"}, {"value" => "BLOCKED_NOTES_CHUNK", "name" => "BLOCKED_NOTES_CHUNK"}]})
    QueryResultsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.qconnect#QueryResultsList", name: "QueryResultsList")
    QueryText = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qconnect#QueryText", name: "QueryText", traits: {"smithy.api#length" => {"max" => 512}, "smithy.api#sensitive" => {}})
    QueryTextInputData = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#QueryTextInputData", name: "QueryTextInputData")
    QuickResponseContent = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qconnect#QuickResponseContent", name: "QuickResponseContent", traits: {"smithy.api#length" => {"min" => 1, "max" => 4000}, "smithy.api#sensitive" => {}})
    QuickResponseContentProvider = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.qconnect#QuickResponseContentProvider", name: "QuickResponseContentProvider")
    QuickResponseContents = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#QuickResponseContents", name: "QuickResponseContents")
    QuickResponseData = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#QuickResponseData", name: "QuickResponseData", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.qconnect#QuickResponse"}, {"resource" => "com.amazonaws.qconnect#KnowledgeBase"}]})
    QuickResponseDataProvider = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.qconnect#QuickResponseDataProvider", name: "QuickResponseDataProvider")
    QuickResponseDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qconnect#QuickResponseDescription", name: "QuickResponseDescription", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    QuickResponseFilterField = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#QuickResponseFilterField", name: "QuickResponseFilterField")
    QuickResponseFilterFieldList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.qconnect#QuickResponseFilterFieldList", name: "QuickResponseFilterFieldList", traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    QuickResponseFilterOperator = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qconnect#QuickResponseFilterOperator", name: "QuickResponseFilterOperator", traits: {"smithy.api#enum" => [{"value" => "EQUALS", "name" => "EQUALS"}, {"value" => "PREFIX", "name" => "PREFIX"}]})
    QuickResponseFilterValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qconnect#QuickResponseFilterValue", name: "QuickResponseFilterValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    QuickResponseFilterValueList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.qconnect#QuickResponseFilterValueList", name: "QuickResponseFilterValueList", traits: {"smithy.api#length" => {"min" => 1, "max" => 5}, "smithy.api#uniqueItems" => {}})
    QuickResponseName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qconnect#QuickResponseName", name: "QuickResponseName", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    QuickResponseOrderField = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#QuickResponseOrderField", name: "QuickResponseOrderField")
    QuickResponseQueryField = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#QuickResponseQueryField", name: "QuickResponseQueryField")
    QuickResponseQueryFieldList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.qconnect#QuickResponseQueryFieldList", name: "QuickResponseQueryFieldList", traits: {"smithy.api#length" => {"min" => 0, "max" => 4}})
    QuickResponseQueryOperator = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qconnect#QuickResponseQueryOperator", name: "QuickResponseQueryOperator", traits: {"smithy.api#enum" => [{"value" => "CONTAINS", "name" => "CONTAINS"}, {"value" => "CONTAINS_AND_PREFIX", "name" => "CONTAINS_AND_PREFIX"}]})
    QuickResponseQueryValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qconnect#QuickResponseQueryValue", name: "QuickResponseQueryValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    QuickResponseQueryValueList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.qconnect#QuickResponseQueryValueList", name: "QuickResponseQueryValueList", traits: {"smithy.api#length" => {"min" => 1, "max" => 5}, "smithy.api#uniqueItems" => {}})
    QuickResponseSearchExpression = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#QuickResponseSearchExpression", name: "QuickResponseSearchExpression")
    QuickResponseSearchResultData = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#QuickResponseSearchResultData", name: "QuickResponseSearchResultData", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.qconnect#QuickResponse"}, {"resource" => "com.amazonaws.qconnect#KnowledgeBase"}]})
    QuickResponseSearchResultsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.qconnect#QuickResponseSearchResultsList", name: "QuickResponseSearchResultsList")
    QuickResponseStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qconnect#QuickResponseStatus", name: "QuickResponseStatus", traits: {"smithy.api#enum" => [{"value" => "CREATE_IN_PROGRESS", "name" => "CREATE_IN_PROGRESS"}, {"value" => "CREATE_FAILED", "name" => "CREATE_FAILED"}, {"value" => "CREATED", "name" => "CREATED"}, {"value" => "DELETE_IN_PROGRESS", "name" => "DELETE_IN_PROGRESS"}, {"value" => "DELETE_FAILED", "name" => "DELETE_FAILED"}, {"value" => "DELETED", "name" => "DELETED"}, {"value" => "UPDATE_IN_PROGRESS", "name" => "UPDATE_IN_PROGRESS"}, {"value" => "UPDATE_FAILED", "name" => "UPDATE_FAILED"}]})
    QuickResponseSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#QuickResponseSummary", name: "QuickResponseSummary", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.qconnect#QuickResponse"}, {"resource" => "com.amazonaws.qconnect#KnowledgeBase"}]})
    QuickResponseSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.qconnect#QuickResponseSummaryList", name: "QuickResponseSummaryList")
    QuickResponseType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qconnect#QuickResponseType", name: "QuickResponseType", traits: {"smithy.api#pattern" => "^(application/x\\.quickresponse;format=(plain|markdown))$"})
    RankingData = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#RankingData", name: "RankingData")
    RecommendationData = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#RecommendationData", name: "RecommendationData")
    RecommendationId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qconnect#RecommendationId", name: "RecommendationId", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    RecommendationIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.qconnect#RecommendationIdList", name: "RecommendationIdList", traits: {"smithy.api#length" => {"min" => 0, "max" => 25}})
    RecommendationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.qconnect#RecommendationList", name: "RecommendationList")
    RecommendationSourceType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qconnect#RecommendationSourceType", name: "RecommendationSourceType", traits: {"smithy.api#enum" => [{"value" => "ISSUE_DETECTION", "name" => "ISSUE_DETECTION"}, {"value" => "RULE_EVALUATION", "name" => "RULE_EVALUATION"}, {"value" => "OTHER", "name" => "OTHER"}]})
    RecommendationTrigger = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#RecommendationTrigger", name: "RecommendationTrigger")
    RecommendationTriggerData = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.qconnect#RecommendationTriggerData", name: "RecommendationTriggerData")
    RecommendationTriggerList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.qconnect#RecommendationTriggerList", name: "RecommendationTriggerList")
    RecommendationTriggerType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qconnect#RecommendationTriggerType", name: "RecommendationTriggerType", traits: {"smithy.api#enum" => [{"value" => "QUERY", "name" => "QUERY"}, {"value" => "GENERATIVE", "name" => "GENERATIVE"}]})
    RecommendationType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qconnect#RecommendationType", name: "RecommendationType", traits: {"smithy.api#enum" => [{"value" => "KNOWLEDGE_CONTENT", "name" => "KNOWLEDGE_CONTENT"}, {"value" => "GENERATIVE_RESPONSE", "name" => "GENERATIVE_RESPONSE"}, {"value" => "GENERATIVE_ANSWER", "name" => "GENERATIVE_ANSWER"}, {"value" => "DETECTED_INTENT", "name" => "DETECTED_INTENT"}, {"value" => "GENERATIVE_ANSWER_CHUNK", "name" => "GENERATIVE_ANSWER_CHUNK"}, {"value" => "BLOCKED_GENERATIVE_ANSWER_CHUNK", "name" => "BLOCKED_GENERATIVE_ANSWER_CHUNK"}, {"value" => "INTENT_ANSWER_CHUNK", "name" => "INTENT_ANSWER_CHUNK"}, {"value" => "BLOCKED_INTENT_ANSWER_CHUNK", "name" => "BLOCKED_INTENT_ANSWER_CHUNK"}, {"value" => "EMAIL_RESPONSE_CHUNK", "name" => "EMAIL_RESPONSE_CHUNK"}, {"value" => "EMAIL_OVERVIEW_CHUNK", "name" => "EMAIL_OVERVIEW_CHUNK"}, {"value" => "EMAIL_GENERATIVE_ANSWER_CHUNK", "name" => "EMAIL_GENERATIVE_ANSWER_CHUNK"}, {"value" => "CASE_SUMMARIZATION_CHUNK", "name" => "CASE_SUMMARIZATION_CHUNK"}, {"value" => "BLOCKED_CASE_SUMMARIZATION_CHUNK", "name" => "BLOCKED_CASE_SUMMARIZATION_CHUNK"}, {"value" => "SUGGESTED_MESSAGE", "name" => "SUGGESTED_MESSAGE"}, {"value" => "NOTES_CHUNK", "name" => "NOTES_CHUNK"}, {"value" => "BLOCKED_NOTES_CHUNK", "name" => "BLOCKED_NOTES_CHUNK"}, {"value" => "PROACTIVE_RECOMMENDATION", "name" => "PROACTIVE_RECOMMENDATION"}]})
    ReferenceType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qconnect#ReferenceType", name: "ReferenceType", traits: {"smithy.api#enum" => [{"value" => "WEB_CRAWLER", "name" => "WEB_CRAWLER"}, {"value" => "KNOWLEDGE_BASE", "name" => "KNOWLEDGE_BASE"}, {"value" => "BEDROCK_KB_S3", "name" => "BEDROCK_KB_S3"}, {"value" => "BEDROCK_KB_WEB", "name" => "BEDROCK_KB_WEB"}, {"value" => "BEDROCK_KB_CONFLUENCE", "name" => "BEDROCK_KB_CONFLUENCE"}, {"value" => "BEDROCK_KB_SALESFORCE", "name" => "BEDROCK_KB_SALESFORCE"}, {"value" => "BEDROCK_KB_SHAREPOINT", "name" => "BEDROCK_KB_SHAREPOINT"}, {"value" => "BEDROCK_KB_KENDRA", "name" => "BEDROCK_KB_KENDRA"}, {"value" => "BEDROCK_KB_CUSTOM_DOCUMENT", "name" => "BEDROCK_KB_CUSTOM_DOCUMENT"}, {"value" => "BEDROCK_KB_SQL", "name" => "BEDROCK_KB_SQL"}]})
    Relevance = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qconnect#Relevance", name: "Relevance", traits: {"smithy.api#enum" => [{"value" => "HELPFUL", "name" => "HELPFUL"}, {"value" => "NOT_HELPFUL", "name" => "NOT_HELPFUL"}]})
    RelevanceLevel = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qconnect#RelevanceLevel", name: "RelevanceLevel", traits: {"smithy.api#enum" => [{"value" => "HIGH", "name" => "HIGH"}, {"value" => "MEDIUM", "name" => "MEDIUM"}, {"value" => "LOW", "name" => "LOW"}]})
    RelevanceScore = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.qconnect#RelevanceScore", name: "RelevanceScore", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0.0}})
    RemoveAssistantAIAgentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#RemoveAssistantAIAgentRequest", name: "RemoveAssistantAIAgentRequest")
    RemoveAssistantAIAgentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#RemoveAssistantAIAgentResponse", name: "RemoveAssistantAIAgentResponse")
    RemoveKnowledgeBaseTemplateUriInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#RemoveKnowledgeBaseTemplateUriInput", name: "RemoveKnowledgeBaseTemplateUriInput")
    RemoveKnowledgeBaseTemplateUriOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#RemoveKnowledgeBaseTemplateUriOutput", name: "RemoveKnowledgeBaseTemplateUriOutput")
    RenderMessageTemplateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#RenderMessageTemplateRequest", name: "RenderMessageTemplateRequest")
    RenderMessageTemplateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#RenderMessageTemplateResponse", name: "RenderMessageTemplateResponse")
    RenderingConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#RenderingConfiguration", name: "RenderingConfiguration")
    RequestTimeoutException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#RequestTimeoutException", name: "RequestTimeoutException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 408, "smithy.api#retryable" => {}})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResultData = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#ResultData", name: "ResultData")
    RetrievalConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#RetrievalConfiguration", name: "RetrievalConfiguration")
    RetrievalFilterConfiguration = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.qconnect#RetrievalFilterConfiguration", name: "RetrievalFilterConfiguration")
    RetrievalFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.qconnect#RetrievalFilterList", name: "RetrievalFilterList", traits: {"smithy.api#length" => {"min" => 2}})
    RetrieveError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#RetrieveError", name: "RetrieveError")
    RetrieveErrorCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qconnect#RetrieveErrorCode", name: "RetrieveErrorCode", traits: {"smithy.api#enum" => [{"value" => "ACCESS_DENIED", "name" => "ACCESS_DENIED"}, {"value" => "RESOURCE_NOT_FOUND", "name" => "RESOURCE_NOT_FOUND"}, {"value" => "VALIDATION_ERROR", "name" => "VALIDATION_ERROR"}, {"value" => "THROTTLED", "name" => "THROTTLED"}, {"value" => "DEPENDENCY_FAILED", "name" => "DEPENDENCY_FAILED"}, {"value" => "INTERNAL_SERVER_ERROR", "name" => "INTERNAL_SERVER_ERROR"}]})
    RetrieveErrorList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.qconnect#RetrieveErrorList", name: "RetrieveErrorList", traits: {"smithy.api#length" => {"max" => 5}})
    RetrieveRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#RetrieveRequest", name: "RetrieveRequest")
    RetrieveResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#RetrieveResponse", name: "RetrieveResponse")
    RetrieveResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#RetrieveResult", name: "RetrieveResult")
    RetrieveResultList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.qconnect#RetrieveResultList", name: "RetrieveResultList")
    ReturnReason = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qconnect#ReturnReason", name: "ReturnReason", traits: {"smithy.api#enum" => [{"value" => "COMPLETE", "name" => "COMPLETE"}, {"value" => "COMPLETE_WITH_ERROR", "name" => "COMPLETE_WITH_ERROR"}, {"value" => "ESCALATE", "name" => "ESCALATE"}, {"value" => "OUT_OF_DOMAIN", "name" => "OUT_OF_DOMAIN"}]})
    RuntimeSessionData = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#RuntimeSessionData", name: "RuntimeSessionData")
    RuntimeSessionDataList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.qconnect#RuntimeSessionDataList", name: "RuntimeSessionDataList", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    RuntimeSessionDataValue = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.qconnect#RuntimeSessionDataValue", name: "RuntimeSessionDataValue")
    SMSMessageTemplateContent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#SMSMessageTemplateContent", name: "SMSMessageTemplateContent")
    SMSMessageTemplateContentBody = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#SMSMessageTemplateContentBody", name: "SMSMessageTemplateContentBody")
    SearchContentInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#SearchContentInput", name: "SearchContentInput")
    SearchContentOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#SearchContentOutput", name: "SearchContentOutput")
    SearchExpression = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#SearchExpression", name: "SearchExpression")
    SearchMessageTemplatesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#SearchMessageTemplatesRequest", name: "SearchMessageTemplatesRequest")
    SearchMessageTemplatesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#SearchMessageTemplatesResponse", name: "SearchMessageTemplatesResponse")
    SearchQuickResponsesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#SearchQuickResponsesRequest", name: "SearchQuickResponsesRequest")
    SearchQuickResponsesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#SearchQuickResponsesResponse", name: "SearchQuickResponsesResponse")
    SearchSessionsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#SearchSessionsInput", name: "SearchSessionsInput")
    SearchSessionsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#SearchSessionsOutput", name: "SearchSessionsOutput")
    SeedUrl = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#SeedUrl", name: "SeedUrl")
    SeedUrls = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.qconnect#SeedUrls", name: "SeedUrls", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    SelfServiceAIAgentConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#SelfServiceAIAgentConfiguration", name: "SelfServiceAIAgentConfiguration")
    SelfServiceConversationHistory = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#SelfServiceConversationHistory", name: "SelfServiceConversationHistory")
    SelfServiceConversationHistoryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.qconnect#SelfServiceConversationHistoryList", name: "SelfServiceConversationHistoryList", traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    SemanticChunkingConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#SemanticChunkingConfiguration", name: "SemanticChunkingConfiguration")
    SendMessageRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#SendMessageRequest", name: "SendMessageRequest")
    SendMessageResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#SendMessageResponse", name: "SendMessageResponse")
    SensitiveString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qconnect#SensitiveString", name: "SensitiveString", traits: {"smithy.api#sensitive" => {}})
    ServerSideEncryptionConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#ServerSideEncryptionConfiguration", name: "ServerSideEncryptionConfiguration")
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#ServiceQuotaExceededException", name: "ServiceQuotaExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    SessionData = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#SessionData", name: "SessionData")
    SessionDataNamespace = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qconnect#SessionDataNamespace", name: "SessionDataNamespace", traits: {"smithy.api#enum" => [{"value" => "Custom", "name" => "Custom"}]})
    SessionIntegrationConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#SessionIntegrationConfiguration", name: "SessionIntegrationConfiguration")
    SessionSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.qconnect#SessionSummaries", name: "SessionSummaries")
    SessionSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#SessionSummary", name: "SessionSummary")
    ShortCutKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qconnect#ShortCutKey", name: "ShortCutKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    SourceConfiguration = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.qconnect#SourceConfiguration", name: "SourceConfiguration")
    SourceContentDataDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#SourceContentDataDetails", name: "SourceContentDataDetails")
    SourceContentType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qconnect#SourceContentType", name: "SourceContentType", traits: {"smithy.api#enum" => [{"value" => "KNOWLEDGE_CONTENT", "name" => "KNOWLEDGE_CONTENT"}]})
    Span = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#Span", name: "Span")
    SpanAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#SpanAttributes", name: "SpanAttributes")
    SpanCitation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#SpanCitation", name: "SpanCitation")
    SpanCitationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.qconnect#SpanCitationList", name: "SpanCitationList")
    SpanFinishReasonList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.qconnect#SpanFinishReasonList", name: "SpanFinishReasonList", traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    SpanGuardrailAssessment = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#SpanGuardrailAssessment", name: "SpanGuardrailAssessment")
    SpanGuardrailAssessmentList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.qconnect#SpanGuardrailAssessmentList", name: "SpanGuardrailAssessmentList", traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    SpanList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.qconnect#SpanList", name: "SpanList", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    SpanMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#SpanMessage", name: "SpanMessage")
    SpanMessageList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.qconnect#SpanMessageList", name: "SpanMessageList", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    SpanMessageValue = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.qconnect#SpanMessageValue", name: "SpanMessageValue")
    SpanMessageValueList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.qconnect#SpanMessageValueList", name: "SpanMessageValueList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    SpanReasoningValue = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#SpanReasoningValue", name: "SpanReasoningValue")
    SpanStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qconnect#SpanStatus", name: "SpanStatus", traits: {"smithy.api#enum" => [{"value" => "OK", "name" => "OK"}, {"value" => "ERROR", "name" => "ERROR"}, {"value" => "TIMEOUT", "name" => "TIMEOUT"}]})
    SpanTextValue = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#SpanTextValue", name: "SpanTextValue")
    SpanToolResultValue = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#SpanToolResultValue", name: "SpanToolResultValue")
    SpanToolUseValue = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#SpanToolUseValue", name: "SpanToolUseValue")
    SpanType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qconnect#SpanType", name: "SpanType", traits: {"smithy.api#enum" => [{"value" => "CLIENT", "name" => "CLIENT"}, {"value" => "SERVER", "name" => "SERVER"}, {"value" => "INTERNAL", "name" => "INTERNAL"}]})
    StartContentUploadInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#StartContentUploadInput", name: "StartContentUploadInput")
    StartContentUploadOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#StartContentUploadOutput", name: "StartContentUploadOutput")
    StartImportJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#StartImportJobRequest", name: "StartImportJobRequest")
    StartImportJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#StartImportJobResponse", name: "StartImportJobResponse")
    Status = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qconnect#Status", name: "Status", traits: {"smithy.api#enum" => [{"value" => "CREATE_IN_PROGRESS", "name" => "CREATE_IN_PROGRESS"}, {"value" => "CREATE_FAILED", "name" => "CREATE_FAILED"}, {"value" => "ACTIVE", "name" => "ACTIVE"}, {"value" => "DELETE_IN_PROGRESS", "name" => "DELETE_IN_PROGRESS"}, {"value" => "DELETE_FAILED", "name" => "DELETE_FAILED"}, {"value" => "DELETED", "name" => "DELETED"}]})
    SuggestedMessageDataDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#SuggestedMessageDataDetails", name: "SuggestedMessageDataDetails")
    SuggestedMessageReference = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#SuggestedMessageReference", name: "SuggestedMessageReference")
    SuggestedMessagesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.qconnect#SuggestedMessagesList", name: "SuggestedMessagesList")
    SyncStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qconnect#SyncStatus", name: "SyncStatus", traits: {"smithy.api#enum" => [{"value" => "SYNC_FAILED", "name" => "SYNC_FAILED"}, {"value" => "SYNCING_IN_PROGRESS", "name" => "SYNCING_IN_PROGRESS"}, {"value" => "SYNC_SUCCESS", "name" => "SYNC_SUCCESS"}, {"value" => "CREATE_IN_PROGRESS", "name" => "CREATE_IN_PROGRESS"}]})
    SystemAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#SystemAttributes", name: "SystemAttributes")
    SystemEndpointAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#SystemEndpointAttributes", name: "SystemEndpointAttributes")
    TagCondition = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#TagCondition", name: "TagCondition")
    TagFilter = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.qconnect#TagFilter", name: "TagFilter")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qconnect#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^(?!aws:)[a-zA-Z+-=._:/]+$"})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.qconnect#TagKeyList", name: "TagKeyList", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    TagResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#TagResourceInput", name: "TagResourceInput")
    TagResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#TagResourceOutput", name: "TagResourceOutput")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qconnect#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    Tags = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.qconnect#Tags", name: "Tags")
    TargetType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qconnect#TargetType", name: "TargetType", traits: {"smithy.api#enum" => [{"value" => "RECOMMENDATION", "name" => "RECOMMENDATION"}, {"value" => "RESULT", "name" => "RESULT"}, {"value" => "MESSAGE", "name" => "MESSAGE"}]})
    TextAIPrompt = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qconnect#TextAIPrompt", name: "TextAIPrompt", traits: {"smithy.api#length" => {"min" => 1, "max" => 1000000}, "smithy.api#sensitive" => {}})
    TextData = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#TextData", name: "TextData")
    TextFullAIPromptEditTemplateConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#TextFullAIPromptEditTemplateConfiguration", name: "TextFullAIPromptEditTemplateConfiguration")
    TextMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#TextMessage", name: "TextMessage")
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400, "smithy.api#retryable" => {}})
    TimeToLive = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.qconnect#TimeToLive", name: "TimeToLive", traits: {"smithy.api#range" => {"min" => 1, "max" => 60}})
    TooManyTagsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#TooManyTagsException", name: "TooManyTagsException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ToolConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#ToolConfiguration", name: "ToolConfiguration")
    ToolConfigurationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.qconnect#ToolConfigurationList", name: "ToolConfigurationList")
    ToolExampleList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.qconnect#ToolExampleList", name: "ToolExampleList")
    ToolInstruction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#ToolInstruction", name: "ToolInstruction", traits: {"smithy.api#sensitive" => {}})
    ToolOutputConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#ToolOutputConfiguration", name: "ToolOutputConfiguration")
    ToolOutputFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#ToolOutputFilter", name: "ToolOutputFilter")
    ToolOutputFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.qconnect#ToolOutputFilterList", name: "ToolOutputFilterList", traits: {"smithy.api#sensitive" => {}})
    ToolOverrideConstantInputValue = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#ToolOverrideConstantInputValue", name: "ToolOverrideConstantInputValue")
    ToolOverrideInputValue = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#ToolOverrideInputValue", name: "ToolOverrideInputValue")
    ToolOverrideInputValueConfiguration = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.qconnect#ToolOverrideInputValueConfiguration", name: "ToolOverrideInputValueConfiguration")
    ToolOverrideInputValueList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.qconnect#ToolOverrideInputValueList", name: "ToolOverrideInputValueList", traits: {"smithy.api#sensitive" => {}})
    ToolOverrideInputValueType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qconnect#ToolOverrideInputValueType", name: "ToolOverrideInputValueType", traits: {"smithy.api#enum" => [{"value" => "STRING", "name" => "STRING"}, {"value" => "NUMBER", "name" => "NUMBER"}, {"value" => "JSON_STRING", "name" => "JSON_STRING"}]})
    ToolType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qconnect#ToolType", name: "ToolType", traits: {"smithy.api#enum" => [{"value" => "MODEL_CONTEXT_PROTOCOL", "name" => "MODEL_CONTEXT_PROTOCOL"}, {"value" => "RETURN_TO_CONTROL", "name" => "RETURN_TO_CONTROL"}, {"value" => "CONSTANT", "name" => "CONSTANT"}]})
    ToolUseResultData = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#ToolUseResultData", name: "ToolUseResultData")
    TopK = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.qconnect#TopK", name: "TopK", traits: {"smithy.api#range" => {"min" => 0, "max" => 200}, "smithy.api#sensitive" => {}})
    UnauthorizedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#UnauthorizedException", name: "UnauthorizedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 401})
    UnprocessableContentException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#UnprocessableContentException", name: "UnprocessableContentException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 422})
    UntagResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#UntagResourceInput", name: "UntagResourceInput")
    UntagResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#UntagResourceOutput", name: "UntagResourceOutput")
    UpdateAIAgentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#UpdateAIAgentRequest", name: "UpdateAIAgentRequest")
    UpdateAIAgentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#UpdateAIAgentResponse", name: "UpdateAIAgentResponse")
    UpdateAIGuardrailRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#UpdateAIGuardrailRequest", name: "UpdateAIGuardrailRequest")
    UpdateAIGuardrailResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#UpdateAIGuardrailResponse", name: "UpdateAIGuardrailResponse")
    UpdateAIPromptRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#UpdateAIPromptRequest", name: "UpdateAIPromptRequest")
    UpdateAIPromptResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#UpdateAIPromptResponse", name: "UpdateAIPromptResponse")
    UpdateAssistantAIAgentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#UpdateAssistantAIAgentRequest", name: "UpdateAssistantAIAgentRequest")
    UpdateAssistantAIAgentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#UpdateAssistantAIAgentResponse", name: "UpdateAssistantAIAgentResponse")
    UpdateContentInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#UpdateContentInput", name: "UpdateContentInput")
    UpdateContentOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#UpdateContentOutput", name: "UpdateContentOutput")
    UpdateKnowledgeBaseTemplateUriInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#UpdateKnowledgeBaseTemplateUriInput", name: "UpdateKnowledgeBaseTemplateUriInput")
    UpdateKnowledgeBaseTemplateUriOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#UpdateKnowledgeBaseTemplateUriOutput", name: "UpdateKnowledgeBaseTemplateUriOutput")
    UpdateMessageTemplateMetadataRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#UpdateMessageTemplateMetadataRequest", name: "UpdateMessageTemplateMetadataRequest")
    UpdateMessageTemplateMetadataResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#UpdateMessageTemplateMetadataResponse", name: "UpdateMessageTemplateMetadataResponse")
    UpdateMessageTemplateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#UpdateMessageTemplateRequest", name: "UpdateMessageTemplateRequest")
    UpdateMessageTemplateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#UpdateMessageTemplateResponse", name: "UpdateMessageTemplateResponse")
    UpdateQuickResponseRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#UpdateQuickResponseRequest", name: "UpdateQuickResponseRequest")
    UpdateQuickResponseResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#UpdateQuickResponseResponse", name: "UpdateQuickResponseResponse")
    UpdateSessionDataRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#UpdateSessionDataRequest", name: "UpdateSessionDataRequest")
    UpdateSessionDataResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#UpdateSessionDataResponse", name: "UpdateSessionDataResponse")
    UpdateSessionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#UpdateSessionRequest", name: "UpdateSessionRequest")
    UpdateSessionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#UpdateSessionResponse", name: "UpdateSessionResponse")
    UploadId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qconnect#UploadId", name: "UploadId", traits: {"smithy.api#length" => {"min" => 1, "max" => 1200}})
    Uri = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qconnect#Uri", name: "Uri", traits: {"smithy.api#length" => {"min" => 1, "max" => 4096}})
    Url = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qconnect#Url", name: "Url", traits: {"smithy.api#length" => {"min" => 1, "max" => 4096}, "smithy.api#sensitive" => {}})
    UrlConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#UrlConfiguration", name: "UrlConfiguration")
    UrlFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.qconnect#UrlFilterList", name: "UrlFilterList", traits: {"smithy.api#length" => {"min" => 1, "max" => 25}, "smithy.api#sensitive" => {}})
    UrlFilterPattern = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qconnect#UrlFilterPattern", name: "UrlFilterPattern", traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}, "smithy.api#sensitive" => {}})
    UserInteractionConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#UserInteractionConfiguration", name: "UserInteractionConfiguration")
    Uuid = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qconnect#Uuid", name: "Uuid", traits: {"smithy.api#pattern" => "^[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}$"})
    UuidOrArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qconnect#UuidOrArn", name: "UuidOrArn", traits: {"smithy.api#pattern" => "^[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}$|^arn:[a-z-]*?:wisdom:[a-z0-9-]*?:[0-9]{12}:[a-z-]*?/[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}(?:/[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}){0,2}$"})
    UuidOrArnOrEitherWithQualifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qconnect#UuidOrArnOrEitherWithQualifier", name: "UuidOrArnOrEitherWithQualifier", traits: {"smithy.api#pattern" => "^[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}(:[A-Z0-9_$]+){0,1}$|^arn:[a-z-]*?:wisdom:[a-z0-9-]*?:[0-9]{12}:[a-z-]*?/[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}(?:/[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}){0,2}(:[A-Z0-9_$]+){0,1}$"})
    UuidWithQualifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qconnect#UuidWithQualifier", name: "UuidWithQualifier", traits: {"smithy.api#pattern" => "^[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}(:[A-Z0-9_$]+){0,1}$"})
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    VectorIngestionConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#VectorIngestionConfiguration", name: "VectorIngestionConfiguration")
    Version = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.qconnect#Version", name: "Version", traits: {"smithy.api#range" => {"min" => 1}})
    VisibilityStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qconnect#VisibilityStatus", name: "VisibilityStatus", traits: {"smithy.api#enum" => [{"value" => "SAVED", "name" => "SAVED"}, {"value" => "PUBLISHED", "name" => "PUBLISHED"}]})
    WaitTimeSeconds = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.qconnect#WaitTimeSeconds", name: "WaitTimeSeconds", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 20}})
    WebCrawlerConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#WebCrawlerConfiguration", name: "WebCrawlerConfiguration")
    WebCrawlerLimits = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#WebCrawlerLimits", name: "WebCrawlerLimits")
    WebScopeType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qconnect#WebScopeType", name: "WebScopeType", traits: {"smithy.api#enum" => [{"value" => "HOST_ONLY", "name" => "HOST_ONLY"}, {"value" => "SUBDOMAINS", "name" => "SUBDOMAINS"}]})
    WebUrl = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qconnect#WebUrl", name: "WebUrl", traits: {"smithy.api#pattern" => "^https?://[A-Za-z0-9][^\\s]*$"})
    WhatsAppBusinessAccountId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qconnect#WhatsAppBusinessAccountId", name: "WhatsAppBusinessAccountId", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "(^waba-[0-9a-zA-Z]+$)|(^arn:.*:waba/[0-9a-zA-Z]+$)"})
    WhatsAppMessageTemplateComponent = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qconnect#WhatsAppMessageTemplateComponent", name: "WhatsAppMessageTemplateComponent", traits: {"smithy.api#length" => {"min" => 1, "max" => 5000}})
    WhatsAppMessageTemplateComponents = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.qconnect#WhatsAppMessageTemplateComponents", name: "WhatsAppMessageTemplateComponents")
    WhatsAppMessageTemplateContent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#WhatsAppMessageTemplateContent", name: "WhatsAppMessageTemplateContent")
    WhatsAppMessageTemplateContentData = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qconnect#WhatsAppMessageTemplateContentData", name: "WhatsAppMessageTemplateContentData", traits: {"smithy.api#length" => {"min" => 1, "max" => 6000}})
    WhatsAppMessageTemplateId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qconnect#WhatsAppMessageTemplateId", name: "WhatsAppMessageTemplateId", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[0-9]+$"})
    WhatsAppMessageTemplateLanguage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qconnect#WhatsAppMessageTemplateLanguage", name: "WhatsAppMessageTemplateLanguage", traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    WhatsAppMessageTemplateName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qconnect#WhatsAppMessageTemplateName", name: "WhatsAppMessageTemplateName", traits: {"smithy.api#length" => {"min" => 1, "max" => 512}})
    WhatsAppMessageTemplateSourceConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#WhatsAppMessageTemplateSourceConfiguration", name: "WhatsAppMessageTemplateSourceConfiguration")
    WhatsAppMessageTemplateSourceConfigurationSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qconnect#WhatsAppMessageTemplateSourceConfigurationSummary", name: "WhatsAppMessageTemplateSourceConfigurationSummary")
    WhatsAppSourceConfigurationStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qconnect#WhatsAppSourceConfigurationStatus", name: "WhatsAppSourceConfigurationStatus", traits: {"smithy.api#enum" => [{"value" => "VALID", "name" => "VALID"}, {"value" => "INVALID", "name" => "INVALID"}, {"value" => "REJECTED", "name" => "REJECTED"}]})

    AIAgentConfiguration.add_member(:manual_search_ai_agent_configuration, Types::AIAgentConfiguration::ManualSearchAIAgentConfiguration, ::Smithy::Schema::Shapes::MemberShape.new(target: ManualSearchAIAgentConfiguration, name: "manualSearchAIAgentConfiguration"))
    AIAgentConfiguration.add_member(:answer_recommendation_ai_agent_configuration, Types::AIAgentConfiguration::AnswerRecommendationAIAgentConfiguration, ::Smithy::Schema::Shapes::MemberShape.new(target: AnswerRecommendationAIAgentConfiguration, name: "answerRecommendationAIAgentConfiguration"))
    AIAgentConfiguration.add_member(:self_service_ai_agent_configuration, Types::AIAgentConfiguration::SelfServiceAIAgentConfiguration, ::Smithy::Schema::Shapes::MemberShape.new(target: SelfServiceAIAgentConfiguration, name: "selfServiceAIAgentConfiguration"))
    AIAgentConfiguration.add_member(:email_response_ai_agent_configuration, Types::AIAgentConfiguration::EmailResponseAIAgentConfiguration, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailResponseAIAgentConfiguration, name: "emailResponseAIAgentConfiguration"))
    AIAgentConfiguration.add_member(:email_overview_ai_agent_configuration, Types::AIAgentConfiguration::EmailOverviewAIAgentConfiguration, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailOverviewAIAgentConfiguration, name: "emailOverviewAIAgentConfiguration"))
    AIAgentConfiguration.add_member(:email_generative_answer_ai_agent_configuration, Types::AIAgentConfiguration::EmailGenerativeAnswerAIAgentConfiguration, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailGenerativeAnswerAIAgentConfiguration, name: "emailGenerativeAnswerAIAgentConfiguration"))
    AIAgentConfiguration.add_member(:orchestration_ai_agent_configuration, Types::AIAgentConfiguration::OrchestrationAIAgentConfiguration, ::Smithy::Schema::Shapes::MemberShape.new(target: OrchestrationAIAgentConfiguration, name: "orchestrationAIAgentConfiguration"))
    AIAgentConfiguration.add_member(:note_taking_ai_agent_configuration, Types::AIAgentConfiguration::NoteTakingAIAgentConfiguration, ::Smithy::Schema::Shapes::MemberShape.new(target: NoteTakingAIAgentConfiguration, name: "noteTakingAIAgentConfiguration"))
    AIAgentConfiguration.add_member(:case_summarization_ai_agent_configuration, Types::AIAgentConfiguration::CaseSummarizationAIAgentConfiguration, ::Smithy::Schema::Shapes::MemberShape.new(target: CaseSummarizationAIAgentConfiguration, name: "caseSummarizationAIAgentConfiguration"))
    AIAgentConfiguration.add_member(:unknown, Types::AIAgentConfiguration::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    AIAgentConfiguration.type = Types::AIAgentConfiguration
    AIAgentConfigurationData.add_member(:ai_agent_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidWithQualifier, name: "aiAgentId", traits: {"smithy.api#required" => {}}))
    AIAgentConfigurationData.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "enabled", traits: {"smithy.api#default" => nil}))
    AIAgentConfigurationData.type = Types::AIAgentConfigurationData
    AIAgentConfigurationMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: AIAgentType, name: "key"))
    AIAgentConfigurationMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: AIAgentConfigurationData, name: "value"))
    AIAgentData.add_member(:assistant_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "assistantId", traits: {"smithy.api#required" => {}}))
    AIAgentData.add_member(:assistant_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "assistantArn", traits: {"smithy.api#required" => {}}))
    AIAgentData.add_member(:ai_agent_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "aiAgentId", traits: {"smithy.api#required" => {}}))
    AIAgentData.add_member(:ai_agent_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "aiAgentArn", traits: {"smithy.api#required" => {}}))
    AIAgentData.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "name", traits: {"smithy.api#required" => {}}))
    AIAgentData.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: AIAgentType, name: "type", traits: {"smithy.api#required" => {}}))
    AIAgentData.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AIAgentConfiguration, name: "configuration", traits: {"smithy.api#required" => {}}))
    AIAgentData.add_member(:modified_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "modifiedTime"))
    AIAgentData.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    AIAgentData.add_member(:visibility_status, ::Smithy::Schema::Shapes::MemberShape.new(target: VisibilityStatus, name: "visibilityStatus", traits: {"smithy.api#required" => {}}))
    AIAgentData.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    AIAgentData.add_member(:origin, ::Smithy::Schema::Shapes::MemberShape.new(target: Origin, name: "origin"))
    AIAgentData.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: Status, name: "status"))
    AIAgentData.type = Types::AIAgentData
    AIAgentSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "name", traits: {"smithy.api#required" => {}}))
    AIAgentSummary.add_member(:assistant_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "assistantId", traits: {"smithy.api#required" => {}}))
    AIAgentSummary.add_member(:assistant_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "assistantArn", traits: {"smithy.api#required" => {}}))
    AIAgentSummary.add_member(:ai_agent_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "aiAgentId", traits: {"smithy.api#required" => {}}))
    AIAgentSummary.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: AIAgentType, name: "type", traits: {"smithy.api#required" => {}}))
    AIAgentSummary.add_member(:ai_agent_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "aiAgentArn", traits: {"smithy.api#required" => {}}))
    AIAgentSummary.add_member(:modified_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "modifiedTime"))
    AIAgentSummary.add_member(:visibility_status, ::Smithy::Schema::Shapes::MemberShape.new(target: VisibilityStatus, name: "visibilityStatus", traits: {"smithy.api#required" => {}}))
    AIAgentSummary.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AIAgentConfiguration, name: "configuration"))
    AIAgentSummary.add_member(:origin, ::Smithy::Schema::Shapes::MemberShape.new(target: Origin, name: "origin"))
    AIAgentSummary.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    AIAgentSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: Status, name: "status"))
    AIAgentSummary.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    AIAgentSummary.type = Types::AIAgentSummary
    AIAgentSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AIAgentSummary, name: "member"))
    AIAgentVersionSummariesList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AIAgentVersionSummary, name: "member"))
    AIAgentVersionSummary.add_member(:ai_agent_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: AIAgentSummary, name: "aiAgentSummary"))
    AIAgentVersionSummary.add_member(:version_number, ::Smithy::Schema::Shapes::MemberShape.new(target: Version, name: "versionNumber"))
    AIAgentVersionSummary.type = Types::AIAgentVersionSummary
    AIGuardrailAssessment.add_member(:blocked, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "blocked", traits: {"smithy.api#required" => {}}))
    AIGuardrailAssessment.type = Types::AIGuardrailAssessment
    AIGuardrailContentPolicyConfig.add_member(:filters_config, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailContentFiltersConfig, name: "filtersConfig", traits: {"smithy.api#required" => {}}))
    AIGuardrailContentPolicyConfig.type = Types::AIGuardrailContentPolicyConfig
    AIGuardrailContextualGroundingPolicyConfig.add_member(:filters_config, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailContextualGroundingFiltersConfig, name: "filtersConfig", traits: {"smithy.api#required" => {}}))
    AIGuardrailContextualGroundingPolicyConfig.type = Types::AIGuardrailContextualGroundingPolicyConfig
    AIGuardrailData.add_member(:assistant_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "assistantId", traits: {"smithy.api#required" => {}}))
    AIGuardrailData.add_member(:assistant_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "assistantArn", traits: {"smithy.api#required" => {}}))
    AIGuardrailData.add_member(:ai_guardrail_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "aiGuardrailArn", traits: {"smithy.api#required" => {}}))
    AIGuardrailData.add_member(:ai_guardrail_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "aiGuardrailId", traits: {"smithy.api#required" => {}}))
    AIGuardrailData.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "name", traits: {"smithy.api#required" => {}}))
    AIGuardrailData.add_member(:visibility_status, ::Smithy::Schema::Shapes::MemberShape.new(target: VisibilityStatus, name: "visibilityStatus", traits: {"smithy.api#required" => {}}))
    AIGuardrailData.add_member(:blocked_input_messaging, ::Smithy::Schema::Shapes::MemberShape.new(target: AIGuardrailBlockedMessaging, name: "blockedInputMessaging", traits: {"smithy.api#required" => {}}))
    AIGuardrailData.add_member(:blocked_outputs_messaging, ::Smithy::Schema::Shapes::MemberShape.new(target: AIGuardrailBlockedMessaging, name: "blockedOutputsMessaging", traits: {"smithy.api#required" => {}}))
    AIGuardrailData.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: AIGuardrailDescription, name: "description"))
    AIGuardrailData.add_member(:topic_policy_config, ::Smithy::Schema::Shapes::MemberShape.new(target: AIGuardrailTopicPolicyConfig, name: "topicPolicyConfig"))
    AIGuardrailData.add_member(:content_policy_config, ::Smithy::Schema::Shapes::MemberShape.new(target: AIGuardrailContentPolicyConfig, name: "contentPolicyConfig"))
    AIGuardrailData.add_member(:word_policy_config, ::Smithy::Schema::Shapes::MemberShape.new(target: AIGuardrailWordPolicyConfig, name: "wordPolicyConfig"))
    AIGuardrailData.add_member(:sensitive_information_policy_config, ::Smithy::Schema::Shapes::MemberShape.new(target: AIGuardrailSensitiveInformationPolicyConfig, name: "sensitiveInformationPolicyConfig"))
    AIGuardrailData.add_member(:contextual_grounding_policy_config, ::Smithy::Schema::Shapes::MemberShape.new(target: AIGuardrailContextualGroundingPolicyConfig, name: "contextualGroundingPolicyConfig"))
    AIGuardrailData.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    AIGuardrailData.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: Status, name: "status"))
    AIGuardrailData.add_member(:modified_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "modifiedTime"))
    AIGuardrailData.type = Types::AIGuardrailData
    AIGuardrailSensitiveInformationPolicyConfig.add_member(:pii_entities_config, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailPiiEntitiesConfig, name: "piiEntitiesConfig"))
    AIGuardrailSensitiveInformationPolicyConfig.add_member(:regexes_config, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailRegexesConfig, name: "regexesConfig"))
    AIGuardrailSensitiveInformationPolicyConfig.type = Types::AIGuardrailSensitiveInformationPolicyConfig
    AIGuardrailSummariesList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AIGuardrailSummary, name: "member"))
    AIGuardrailSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "name", traits: {"smithy.api#required" => {}}))
    AIGuardrailSummary.add_member(:assistant_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "assistantId", traits: {"smithy.api#required" => {}}))
    AIGuardrailSummary.add_member(:assistant_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "assistantArn", traits: {"smithy.api#required" => {}}))
    AIGuardrailSummary.add_member(:ai_guardrail_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "aiGuardrailId", traits: {"smithy.api#required" => {}}))
    AIGuardrailSummary.add_member(:ai_guardrail_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "aiGuardrailArn", traits: {"smithy.api#required" => {}}))
    AIGuardrailSummary.add_member(:modified_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "modifiedTime"))
    AIGuardrailSummary.add_member(:visibility_status, ::Smithy::Schema::Shapes::MemberShape.new(target: VisibilityStatus, name: "visibilityStatus", traits: {"smithy.api#required" => {}}))
    AIGuardrailSummary.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: AIGuardrailDescription, name: "description"))
    AIGuardrailSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: Status, name: "status"))
    AIGuardrailSummary.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    AIGuardrailSummary.type = Types::AIGuardrailSummary
    AIGuardrailTopicPolicyConfig.add_member(:topics_config, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailTopicsConfig, name: "topicsConfig", traits: {"smithy.api#required" => {}}))
    AIGuardrailTopicPolicyConfig.type = Types::AIGuardrailTopicPolicyConfig
    AIGuardrailVersionSummariesList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AIGuardrailVersionSummary, name: "member"))
    AIGuardrailVersionSummary.add_member(:ai_guardrail_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: AIGuardrailSummary, name: "aiGuardrailSummary"))
    AIGuardrailVersionSummary.add_member(:version_number, ::Smithy::Schema::Shapes::MemberShape.new(target: Version, name: "versionNumber"))
    AIGuardrailVersionSummary.type = Types::AIGuardrailVersionSummary
    AIGuardrailWordPolicyConfig.add_member(:words_config, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailWordsConfig, name: "wordsConfig"))
    AIGuardrailWordPolicyConfig.add_member(:managed_word_lists_config, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailManagedWordListsConfig, name: "managedWordListsConfig"))
    AIGuardrailWordPolicyConfig.type = Types::AIGuardrailWordPolicyConfig
    AIPromptData.add_member(:assistant_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "assistantId", traits: {"smithy.api#required" => {}}))
    AIPromptData.add_member(:assistant_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "assistantArn", traits: {"smithy.api#required" => {}}))
    AIPromptData.add_member(:ai_prompt_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "aiPromptId", traits: {"smithy.api#required" => {}}))
    AIPromptData.add_member(:ai_prompt_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "aiPromptArn", traits: {"smithy.api#required" => {}}))
    AIPromptData.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "name", traits: {"smithy.api#required" => {}}))
    AIPromptData.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: AIPromptType, name: "type", traits: {"smithy.api#required" => {}}))
    AIPromptData.add_member(:template_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AIPromptTemplateType, name: "templateType", traits: {"smithy.api#required" => {}}))
    AIPromptData.add_member(:model_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AIPromptModelIdentifier, name: "modelId", traits: {"smithy.api#required" => {}}))
    AIPromptData.add_member(:api_format, ::Smithy::Schema::Shapes::MemberShape.new(target: AIPromptAPIFormat, name: "apiFormat", traits: {"smithy.api#required" => {}}))
    AIPromptData.add_member(:template_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AIPromptTemplateConfiguration, name: "templateConfiguration", traits: {"smithy.api#required" => {}}))
    AIPromptData.add_member(:inference_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AIPromptInferenceConfiguration, name: "inferenceConfiguration"))
    AIPromptData.add_member(:modified_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "modifiedTime"))
    AIPromptData.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    AIPromptData.add_member(:visibility_status, ::Smithy::Schema::Shapes::MemberShape.new(target: VisibilityStatus, name: "visibilityStatus", traits: {"smithy.api#required" => {}}))
    AIPromptData.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    AIPromptData.add_member(:origin, ::Smithy::Schema::Shapes::MemberShape.new(target: Origin, name: "origin"))
    AIPromptData.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: Status, name: "status"))
    AIPromptData.type = Types::AIPromptData
    AIPromptInferenceConfiguration.add_member(:temperature, ::Smithy::Schema::Shapes::MemberShape.new(target: Probability, name: "temperature"))
    AIPromptInferenceConfiguration.add_member(:top_p, ::Smithy::Schema::Shapes::MemberShape.new(target: Probability, name: "topP"))
    AIPromptInferenceConfiguration.add_member(:top_k, ::Smithy::Schema::Shapes::MemberShape.new(target: TopK, name: "topK"))
    AIPromptInferenceConfiguration.add_member(:max_tokens_to_sample, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxTokensToSample, name: "maxTokensToSample"))
    AIPromptInferenceConfiguration.type = Types::AIPromptInferenceConfiguration
    AIPromptSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "name", traits: {"smithy.api#required" => {}}))
    AIPromptSummary.add_member(:assistant_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "assistantId", traits: {"smithy.api#required" => {}}))
    AIPromptSummary.add_member(:assistant_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "assistantArn", traits: {"smithy.api#required" => {}}))
    AIPromptSummary.add_member(:ai_prompt_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "aiPromptId", traits: {"smithy.api#required" => {}}))
    AIPromptSummary.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: AIPromptType, name: "type", traits: {"smithy.api#required" => {}}))
    AIPromptSummary.add_member(:ai_prompt_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "aiPromptArn", traits: {"smithy.api#required" => {}}))
    AIPromptSummary.add_member(:modified_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "modifiedTime"))
    AIPromptSummary.add_member(:template_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AIPromptTemplateType, name: "templateType", traits: {"smithy.api#required" => {}}))
    AIPromptSummary.add_member(:model_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AIPromptModelIdentifier, name: "modelId", traits: {"smithy.api#required" => {}}))
    AIPromptSummary.add_member(:api_format, ::Smithy::Schema::Shapes::MemberShape.new(target: AIPromptAPIFormat, name: "apiFormat", traits: {"smithy.api#required" => {}}))
    AIPromptSummary.add_member(:visibility_status, ::Smithy::Schema::Shapes::MemberShape.new(target: VisibilityStatus, name: "visibilityStatus", traits: {"smithy.api#required" => {}}))
    AIPromptSummary.add_member(:origin, ::Smithy::Schema::Shapes::MemberShape.new(target: Origin, name: "origin"))
    AIPromptSummary.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    AIPromptSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: Status, name: "status"))
    AIPromptSummary.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    AIPromptSummary.type = Types::AIPromptSummary
    AIPromptSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AIPromptSummary, name: "member"))
    AIPromptTemplateConfiguration.add_member(:text_full_ai_prompt_edit_template_configuration, Types::AIPromptTemplateConfiguration::TextFullAIPromptEditTemplateConfiguration, ::Smithy::Schema::Shapes::MemberShape.new(target: TextFullAIPromptEditTemplateConfiguration, name: "textFullAIPromptEditTemplateConfiguration"))
    AIPromptTemplateConfiguration.add_member(:unknown, Types::AIPromptTemplateConfiguration::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    AIPromptTemplateConfiguration.type = Types::AIPromptTemplateConfiguration
    AIPromptTypeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AIPromptType, name: "member"))
    AIPromptVersionSummariesList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AIPromptVersionSummary, name: "member"))
    AIPromptVersionSummary.add_member(:ai_prompt_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: AIPromptSummary, name: "aiPromptSummary"))
    AIPromptVersionSummary.add_member(:version_number, ::Smithy::Schema::Shapes::MemberShape.new(target: Version, name: "versionNumber"))
    AIPromptVersionSummary.type = Types::AIPromptVersionSummary
    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message"))
    AccessDeniedException.type = Types::AccessDeniedException
    ActivateMessageTemplateRequest.add_member(:knowledge_base_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArn, name: "knowledgeBaseId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ActivateMessageTemplateRequest.add_member(:message_template_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArnOrEitherWithQualifier, name: "messageTemplateId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ActivateMessageTemplateRequest.add_member(:version_number, ::Smithy::Schema::Shapes::MemberShape.new(target: Version, name: "versionNumber", traits: {"smithy.api#required" => {}}))
    ActivateMessageTemplateRequest.type = Types::ActivateMessageTemplateRequest
    ActivateMessageTemplateResponse.add_member(:message_template_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnWithQualifier, name: "messageTemplateArn", traits: {"smithy.api#required" => {}}))
    ActivateMessageTemplateResponse.add_member(:message_template_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "messageTemplateId", traits: {"smithy.api#required" => {}}))
    ActivateMessageTemplateResponse.add_member(:version_number, ::Smithy::Schema::Shapes::MemberShape.new(target: Version, name: "versionNumber", traits: {"smithy.api#required" => {}}))
    ActivateMessageTemplateResponse.type = Types::ActivateMessageTemplateResponse
    AgentAttributes.add_member(:first_name, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageTemplateAttributeValue, name: "firstName"))
    AgentAttributes.add_member(:last_name, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageTemplateAttributeValue, name: "lastName"))
    AgentAttributes.type = Types::AgentAttributes
    AgentTarget.add_member(:ai_agent_id, Types::AgentTarget::AiAgentId, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "aiAgentId"))
    AgentTarget.add_member(:application_id, Types::AgentTarget::ApplicationId, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "applicationId"))
    AgentTarget.add_member(:unknown, Types::AgentTarget::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    AgentTarget.type = Types::AgentTarget
    AmazonConnectGuideAssociationData.add_member(:flow_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericArn, name: "flowId"))
    AmazonConnectGuideAssociationData.type = Types::AmazonConnectGuideAssociationData
    AndConditions.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TagCondition, name: "member"))
    Annotation.add_member(:title, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "title"))
    Annotation.add_member(:destructive_hint, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "destructiveHint"))
    Annotation.type = Types::Annotation
    AnswerRecommendationAIAgentConfiguration.add_member(:intent_labeling_generation_ai_prompt_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidWithQualifier, name: "intentLabelingGenerationAIPromptId"))
    AnswerRecommendationAIAgentConfiguration.add_member(:query_reformulation_ai_prompt_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidWithQualifier, name: "queryReformulationAIPromptId"))
    AnswerRecommendationAIAgentConfiguration.add_member(:answer_generation_ai_prompt_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidWithQualifier, name: "answerGenerationAIPromptId"))
    AnswerRecommendationAIAgentConfiguration.add_member(:answer_generation_ai_guardrail_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidWithQualifier, name: "answerGenerationAIGuardrailId"))
    AnswerRecommendationAIAgentConfiguration.add_member(:association_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociationConfigurationList, name: "associationConfigurations"))
    AnswerRecommendationAIAgentConfiguration.add_member(:locale, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "locale"))
    AnswerRecommendationAIAgentConfiguration.add_member(:suggested_messages, ::Smithy::Schema::Shapes::MemberShape.new(target: SuggestedMessagesList, name: "suggestedMessages"))
    AnswerRecommendationAIAgentConfiguration.type = Types::AnswerRecommendationAIAgentConfiguration
    AppIntegrationsConfiguration.add_member(:app_integration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericArn, name: "appIntegrationArn", traits: {"smithy.api#required" => {}}))
    AppIntegrationsConfiguration.add_member(:object_fields, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectFieldsList, name: "objectFields"))
    AppIntegrationsConfiguration.type = Types::AppIntegrationsConfiguration
    AssistantAssociationData.add_member(:assistant_association_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "assistantAssociationId", traits: {"smithy.api#required" => {}}))
    AssistantAssociationData.add_member(:assistant_association_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "assistantAssociationArn", traits: {"smithy.api#required" => {}}))
    AssistantAssociationData.add_member(:assistant_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "assistantId", traits: {"smithy.api#required" => {}}))
    AssistantAssociationData.add_member(:assistant_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "assistantArn", traits: {"smithy.api#required" => {}}))
    AssistantAssociationData.add_member(:association_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociationType, name: "associationType", traits: {"smithy.api#required" => {}}))
    AssistantAssociationData.add_member(:association_data, ::Smithy::Schema::Shapes::MemberShape.new(target: AssistantAssociationOutputData, name: "associationData", traits: {"smithy.api#required" => {}}))
    AssistantAssociationData.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    AssistantAssociationData.type = Types::AssistantAssociationData
    AssistantAssociationIdList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArn, name: "member"))
    AssistantAssociationInputData.add_member(:knowledge_base_id, Types::AssistantAssociationInputData::KnowledgeBaseId, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "knowledgeBaseId"))
    AssistantAssociationInputData.add_member(:external_bedrock_knowledge_base_config, Types::AssistantAssociationInputData::ExternalBedrockKnowledgeBaseConfig, ::Smithy::Schema::Shapes::MemberShape.new(target: ExternalBedrockKnowledgeBaseConfig, name: "externalBedrockKnowledgeBaseConfig"))
    AssistantAssociationInputData.add_member(:unknown, Types::AssistantAssociationInputData::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    AssistantAssociationInputData.type = Types::AssistantAssociationInputData
    AssistantAssociationOutputData.add_member(:knowledge_base_association, Types::AssistantAssociationOutputData::KnowledgeBaseAssociation, ::Smithy::Schema::Shapes::MemberShape.new(target: KnowledgeBaseAssociationData, name: "knowledgeBaseAssociation"))
    AssistantAssociationOutputData.add_member(:external_bedrock_knowledge_base_config, Types::AssistantAssociationOutputData::ExternalBedrockKnowledgeBaseConfig, ::Smithy::Schema::Shapes::MemberShape.new(target: ExternalBedrockKnowledgeBaseConfig, name: "externalBedrockKnowledgeBaseConfig"))
    AssistantAssociationOutputData.add_member(:unknown, Types::AssistantAssociationOutputData::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    AssistantAssociationOutputData.type = Types::AssistantAssociationOutputData
    AssistantAssociationSummary.add_member(:assistant_association_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "assistantAssociationId", traits: {"smithy.api#required" => {}}))
    AssistantAssociationSummary.add_member(:assistant_association_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "assistantAssociationArn", traits: {"smithy.api#required" => {}}))
    AssistantAssociationSummary.add_member(:assistant_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "assistantId", traits: {"smithy.api#required" => {}}))
    AssistantAssociationSummary.add_member(:assistant_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "assistantArn", traits: {"smithy.api#required" => {}}))
    AssistantAssociationSummary.add_member(:association_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociationType, name: "associationType", traits: {"smithy.api#required" => {}}))
    AssistantAssociationSummary.add_member(:association_data, ::Smithy::Schema::Shapes::MemberShape.new(target: AssistantAssociationOutputData, name: "associationData", traits: {"smithy.api#required" => {}}))
    AssistantAssociationSummary.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    AssistantAssociationSummary.type = Types::AssistantAssociationSummary
    AssistantAssociationSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AssistantAssociationSummary, name: "member"))
    AssistantCapabilityConfiguration.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: AssistantCapabilityType, name: "type"))
    AssistantCapabilityConfiguration.type = Types::AssistantCapabilityConfiguration
    AssistantData.add_member(:assistant_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "assistantId", traits: {"smithy.api#required" => {}}))
    AssistantData.add_member(:assistant_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "assistantArn", traits: {"smithy.api#required" => {}}))
    AssistantData.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "name", traits: {"smithy.api#required" => {}}))
    AssistantData.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: AssistantType, name: "type", traits: {"smithy.api#required" => {}}))
    AssistantData.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: AssistantStatus, name: "status", traits: {"smithy.api#required" => {}}))
    AssistantData.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    AssistantData.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    AssistantData.add_member(:server_side_encryption_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerSideEncryptionConfiguration, name: "serverSideEncryptionConfiguration"))
    AssistantData.add_member(:integration_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AssistantIntegrationConfiguration, name: "integrationConfiguration"))
    AssistantData.add_member(:capability_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AssistantCapabilityConfiguration, name: "capabilityConfiguration"))
    AssistantData.add_member(:ai_agent_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AIAgentConfigurationMap, name: "aiAgentConfiguration"))
    AssistantData.add_member(:orchestrator_configuration_list, ::Smithy::Schema::Shapes::MemberShape.new(target: OrchestratorConfigurationList, name: "orchestratorConfigurationList"))
    AssistantData.type = Types::AssistantData
    AssistantIntegrationConfiguration.add_member(:topic_integration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericArn, name: "topicIntegrationArn"))
    AssistantIntegrationConfiguration.type = Types::AssistantIntegrationConfiguration
    AssistantList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AssistantSummary, name: "member"))
    AssistantSummary.add_member(:assistant_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "assistantId", traits: {"smithy.api#required" => {}}))
    AssistantSummary.add_member(:assistant_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "assistantArn", traits: {"smithy.api#required" => {}}))
    AssistantSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "name", traits: {"smithy.api#required" => {}}))
    AssistantSummary.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: AssistantType, name: "type", traits: {"smithy.api#required" => {}}))
    AssistantSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: AssistantStatus, name: "status", traits: {"smithy.api#required" => {}}))
    AssistantSummary.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    AssistantSummary.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    AssistantSummary.add_member(:server_side_encryption_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerSideEncryptionConfiguration, name: "serverSideEncryptionConfiguration"))
    AssistantSummary.add_member(:integration_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AssistantIntegrationConfiguration, name: "integrationConfiguration"))
    AssistantSummary.add_member(:capability_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AssistantCapabilityConfiguration, name: "capabilityConfiguration"))
    AssistantSummary.add_member(:ai_agent_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AIAgentConfigurationMap, name: "aiAgentConfiguration"))
    AssistantSummary.add_member(:orchestrator_configuration_list, ::Smithy::Schema::Shapes::MemberShape.new(target: OrchestratorConfigurationList, name: "orchestratorConfigurationList"))
    AssistantSummary.type = Types::AssistantSummary
    AssociationConfiguration.add_member(:association_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "associationId"))
    AssociationConfiguration.add_member(:association_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AIAgentAssociationConfigurationType, name: "associationType"))
    AssociationConfiguration.add_member(:association_configuration_data, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociationConfigurationData, name: "associationConfigurationData"))
    AssociationConfiguration.type = Types::AssociationConfiguration
    AssociationConfigurationData.add_member(:knowledge_base_association_configuration_data, Types::AssociationConfigurationData::KnowledgeBaseAssociationConfigurationData, ::Smithy::Schema::Shapes::MemberShape.new(target: KnowledgeBaseAssociationConfigurationData, name: "knowledgeBaseAssociationConfigurationData"))
    AssociationConfigurationData.add_member(:unknown, Types::AssociationConfigurationData::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    AssociationConfigurationData.type = Types::AssociationConfigurationData
    AssociationConfigurationList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociationConfiguration, name: "member"))
    BedrockFoundationModelConfigurationForParsing.add_member(:model_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: BedrockModelArnForParsing, name: "modelArn", traits: {"smithy.api#required" => {}}))
    BedrockFoundationModelConfigurationForParsing.add_member(:parsing_prompt, ::Smithy::Schema::Shapes::MemberShape.new(target: ParsingPrompt, name: "parsingPrompt"))
    BedrockFoundationModelConfigurationForParsing.type = Types::BedrockFoundationModelConfigurationForParsing
    CaseSummarizationAIAgentConfiguration.add_member(:case_summarization_ai_prompt_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidWithQualifier, name: "caseSummarizationAIPromptId"))
    CaseSummarizationAIAgentConfiguration.add_member(:case_summarization_ai_guardrail_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidWithQualifier, name: "caseSummarizationAIGuardrailId"))
    CaseSummarizationAIAgentConfiguration.add_member(:locale, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "locale"))
    CaseSummarizationAIAgentConfiguration.type = Types::CaseSummarizationAIAgentConfiguration
    CaseSummarizationChunkDataDetails.add_member(:completion, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptySensitiveString, name: "completion"))
    CaseSummarizationChunkDataDetails.add_member(:next_chunk_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextChunkToken"))
    CaseSummarizationChunkDataDetails.type = Types::CaseSummarizationChunkDataDetails
    CaseSummarizationInputData.add_member(:case_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CaseArn, name: "caseArn", traits: {"smithy.api#required" => {}}))
    CaseSummarizationInputData.type = Types::CaseSummarizationInputData
    Channels.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Channel, name: "member"))
    ChunkingConfiguration.add_member(:chunking_strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: ChunkingStrategy, name: "chunkingStrategy", traits: {"smithy.api#required" => {}}))
    ChunkingConfiguration.add_member(:fixed_size_chunking_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: FixedSizeChunkingConfiguration, name: "fixedSizeChunkingConfiguration"))
    ChunkingConfiguration.add_member(:hierarchical_chunking_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: HierarchicalChunkingConfiguration, name: "hierarchicalChunkingConfiguration"))
    ChunkingConfiguration.add_member(:semantic_chunking_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: SemanticChunkingConfiguration, name: "semanticChunkingConfiguration"))
    ChunkingConfiguration.type = Types::ChunkingConfiguration
    Citation.add_member(:content_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "contentId"))
    Citation.add_member(:title, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "title"))
    Citation.add_member(:knowledge_base_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "knowledgeBaseId"))
    Citation.add_member(:citation_span, ::Smithy::Schema::Shapes::MemberShape.new(target: CitationSpan, name: "citationSpan", traits: {"smithy.api#required" => {}}))
    Citation.add_member(:source_url, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "sourceURL"))
    Citation.add_member(:reference_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ReferenceType, name: "referenceType", traits: {"smithy.api#required" => {}}))
    Citation.type = Types::Citation
    CitationSpan.add_member(:begin_offset_inclusive, ::Smithy::Schema::Shapes::MemberShape.new(target: CitationSpanOffset, name: "beginOffsetInclusive", traits: {"smithy.api#default" => 0}))
    CitationSpan.add_member(:end_offset_exclusive, ::Smithy::Schema::Shapes::MemberShape.new(target: CitationSpanOffset, name: "endOffsetExclusive", traits: {"smithy.api#default" => 0}))
    CitationSpan.type = Types::CitationSpan
    Citations.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Citation, name: "member"))
    Configuration.add_member(:connect_configuration, Types::Configuration::ConnectConfiguration, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectConfiguration, name: "connectConfiguration"))
    Configuration.add_member(:unknown, Types::Configuration::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    Configuration.type = Types::Configuration
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message"))
    ConflictException.type = Types::ConflictException
    ConnectConfiguration.add_member(:instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "instanceId"))
    ConnectConfiguration.type = Types::ConnectConfiguration
    ContactAttributeKeys.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ContactAttributeKey, name: "member"))
    ContactAttributes.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ContactAttributeKey, name: "key"))
    ContactAttributes.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ContactAttributeValue, name: "value"))
    ContentAssociationContents.add_member(:amazon_connect_guide_association, Types::ContentAssociationContents::AmazonConnectGuideAssociation, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonConnectGuideAssociationData, name: "amazonConnectGuideAssociation"))
    ContentAssociationContents.add_member(:unknown, Types::ContentAssociationContents::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    ContentAssociationContents.type = Types::ContentAssociationContents
    ContentAssociationData.add_member(:knowledge_base_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "knowledgeBaseId", traits: {"smithy.api#required" => {}}))
    ContentAssociationData.add_member(:knowledge_base_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "knowledgeBaseArn", traits: {"smithy.api#required" => {}}))
    ContentAssociationData.add_member(:content_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "contentId", traits: {"smithy.api#required" => {}}))
    ContentAssociationData.add_member(:content_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "contentArn", traits: {"smithy.api#required" => {}}))
    ContentAssociationData.add_member(:content_association_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "contentAssociationId", traits: {"smithy.api#required" => {}}))
    ContentAssociationData.add_member(:content_association_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "contentAssociationArn", traits: {"smithy.api#required" => {}}))
    ContentAssociationData.add_member(:association_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentAssociationType, name: "associationType", traits: {"smithy.api#required" => {}}))
    ContentAssociationData.add_member(:association_data, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentAssociationContents, name: "associationData", traits: {"smithy.api#required" => {}}))
    ContentAssociationData.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    ContentAssociationData.type = Types::ContentAssociationData
    ContentAssociationSummary.add_member(:knowledge_base_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "knowledgeBaseId", traits: {"smithy.api#required" => {}}))
    ContentAssociationSummary.add_member(:knowledge_base_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "knowledgeBaseArn", traits: {"smithy.api#required" => {}}))
    ContentAssociationSummary.add_member(:content_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "contentId", traits: {"smithy.api#required" => {}}))
    ContentAssociationSummary.add_member(:content_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "contentArn", traits: {"smithy.api#required" => {}}))
    ContentAssociationSummary.add_member(:content_association_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "contentAssociationId", traits: {"smithy.api#required" => {}}))
    ContentAssociationSummary.add_member(:content_association_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "contentAssociationArn", traits: {"smithy.api#required" => {}}))
    ContentAssociationSummary.add_member(:association_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentAssociationType, name: "associationType", traits: {"smithy.api#required" => {}}))
    ContentAssociationSummary.add_member(:association_data, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentAssociationContents, name: "associationData", traits: {"smithy.api#required" => {}}))
    ContentAssociationSummary.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    ContentAssociationSummary.type = Types::ContentAssociationSummary
    ContentAssociationSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentAssociationSummary, name: "member"))
    ContentData.add_member(:content_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "contentArn", traits: {"smithy.api#required" => {}}))
    ContentData.add_member(:content_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "contentId", traits: {"smithy.api#required" => {}}))
    ContentData.add_member(:knowledge_base_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "knowledgeBaseArn", traits: {"smithy.api#required" => {}}))
    ContentData.add_member(:knowledge_base_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "knowledgeBaseId", traits: {"smithy.api#required" => {}}))
    ContentData.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "name", traits: {"smithy.api#required" => {}}))
    ContentData.add_member(:revision_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "revisionId", traits: {"smithy.api#required" => {}}))
    ContentData.add_member(:title, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentTitle, name: "title", traits: {"smithy.api#required" => {}}))
    ContentData.add_member(:content_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentType, name: "contentType", traits: {"smithy.api#required" => {}}))
    ContentData.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentStatus, name: "status", traits: {"smithy.api#required" => {}}))
    ContentData.add_member(:metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentMetadata, name: "metadata", traits: {"smithy.api#required" => {}}))
    ContentData.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    ContentData.add_member(:link_out_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: Uri, name: "linkOutUri"))
    ContentData.add_member(:url, ::Smithy::Schema::Shapes::MemberShape.new(target: Url, name: "url", traits: {"smithy.api#required" => {}}))
    ContentData.add_member(:url_expiry, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "urlExpiry", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "epoch-seconds"}))
    ContentData.type = Types::ContentData
    ContentDataDetails.add_member(:text_data, ::Smithy::Schema::Shapes::MemberShape.new(target: TextData, name: "textData", traits: {"smithy.api#required" => {}}))
    ContentDataDetails.add_member(:ranking_data, ::Smithy::Schema::Shapes::MemberShape.new(target: RankingData, name: "rankingData", traits: {"smithy.api#required" => {}}))
    ContentDataDetails.type = Types::ContentDataDetails
    ContentFeedbackData.add_member(:generative_content_feedback_data, Types::ContentFeedbackData::GenerativeContentFeedbackData, ::Smithy::Schema::Shapes::MemberShape.new(target: GenerativeContentFeedbackData, name: "generativeContentFeedbackData"))
    ContentFeedbackData.add_member(:unknown, Types::ContentFeedbackData::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    ContentFeedbackData.type = Types::ContentFeedbackData
    ContentMetadata.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "key"))
    ContentMetadata.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "value"))
    ContentReference.add_member(:knowledge_base_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "knowledgeBaseArn"))
    ContentReference.add_member(:knowledge_base_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "knowledgeBaseId"))
    ContentReference.add_member(:content_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "contentArn"))
    ContentReference.add_member(:content_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "contentId"))
    ContentReference.add_member(:source_url, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "sourceURL"))
    ContentReference.add_member(:reference_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ReferenceType, name: "referenceType"))
    ContentReference.type = Types::ContentReference
    ContentSummary.add_member(:content_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "contentArn", traits: {"smithy.api#required" => {}}))
    ContentSummary.add_member(:content_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "contentId", traits: {"smithy.api#required" => {}}))
    ContentSummary.add_member(:knowledge_base_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "knowledgeBaseArn", traits: {"smithy.api#required" => {}}))
    ContentSummary.add_member(:knowledge_base_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "knowledgeBaseId", traits: {"smithy.api#required" => {}}))
    ContentSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "name", traits: {"smithy.api#required" => {}}))
    ContentSummary.add_member(:revision_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "revisionId", traits: {"smithy.api#required" => {}}))
    ContentSummary.add_member(:title, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentTitle, name: "title", traits: {"smithy.api#required" => {}}))
    ContentSummary.add_member(:content_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentType, name: "contentType", traits: {"smithy.api#required" => {}}))
    ContentSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentStatus, name: "status", traits: {"smithy.api#required" => {}}))
    ContentSummary.add_member(:metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentMetadata, name: "metadata", traits: {"smithy.api#required" => {}}))
    ContentSummary.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    ContentSummary.type = Types::ContentSummary
    ContentSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentSummary, name: "member"))
    ConversationContext.add_member(:self_service_conversation_history, ::Smithy::Schema::Shapes::MemberShape.new(target: SelfServiceConversationHistoryList, name: "selfServiceConversationHistory", traits: {"smithy.api#required" => {}}))
    ConversationContext.type = Types::ConversationContext
    ConversationState.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ConversationStatus, name: "status", traits: {"smithy.api#required" => {}}))
    ConversationState.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ConversationStatusReason, name: "reason"))
    ConversationState.type = Types::ConversationState
    CreateAIAgentRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateAIAgentRequest.add_member(:assistant_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArn, name: "assistantId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateAIAgentRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "name", traits: {"smithy.api#required" => {}}))
    CreateAIAgentRequest.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: AIAgentType, name: "type", traits: {"smithy.api#required" => {}}))
    CreateAIAgentRequest.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AIAgentConfiguration, name: "configuration", traits: {"smithy.api#required" => {}}))
    CreateAIAgentRequest.add_member(:visibility_status, ::Smithy::Schema::Shapes::MemberShape.new(target: VisibilityStatus, name: "visibilityStatus", traits: {"smithy.api#required" => {}}))
    CreateAIAgentRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    CreateAIAgentRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    CreateAIAgentRequest.type = Types::CreateAIAgentRequest
    CreateAIAgentResponse.add_member(:ai_agent, ::Smithy::Schema::Shapes::MemberShape.new(target: AIAgentData, name: "aiAgent"))
    CreateAIAgentResponse.type = Types::CreateAIAgentResponse
    CreateAIAgentVersionRequest.add_member(:assistant_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArn, name: "assistantId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateAIAgentVersionRequest.add_member(:ai_agent_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArnOrEitherWithQualifier, name: "aiAgentId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateAIAgentVersionRequest.add_member(:modified_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "modifiedTime"))
    CreateAIAgentVersionRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateAIAgentVersionRequest.type = Types::CreateAIAgentVersionRequest
    CreateAIAgentVersionResponse.add_member(:ai_agent, ::Smithy::Schema::Shapes::MemberShape.new(target: AIAgentData, name: "aiAgent"))
    CreateAIAgentVersionResponse.add_member(:version_number, ::Smithy::Schema::Shapes::MemberShape.new(target: Version, name: "versionNumber"))
    CreateAIAgentVersionResponse.type = Types::CreateAIAgentVersionResponse
    CreateAIGuardrailRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateAIGuardrailRequest.add_member(:assistant_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArn, name: "assistantId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateAIGuardrailRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "name", traits: {"smithy.api#required" => {}}))
    CreateAIGuardrailRequest.add_member(:blocked_input_messaging, ::Smithy::Schema::Shapes::MemberShape.new(target: AIGuardrailBlockedMessaging, name: "blockedInputMessaging", traits: {"smithy.api#required" => {}}))
    CreateAIGuardrailRequest.add_member(:blocked_outputs_messaging, ::Smithy::Schema::Shapes::MemberShape.new(target: AIGuardrailBlockedMessaging, name: "blockedOutputsMessaging", traits: {"smithy.api#required" => {}}))
    CreateAIGuardrailRequest.add_member(:visibility_status, ::Smithy::Schema::Shapes::MemberShape.new(target: VisibilityStatus, name: "visibilityStatus", traits: {"smithy.api#required" => {}}))
    CreateAIGuardrailRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: AIGuardrailDescription, name: "description"))
    CreateAIGuardrailRequest.add_member(:topic_policy_config, ::Smithy::Schema::Shapes::MemberShape.new(target: AIGuardrailTopicPolicyConfig, name: "topicPolicyConfig"))
    CreateAIGuardrailRequest.add_member(:content_policy_config, ::Smithy::Schema::Shapes::MemberShape.new(target: AIGuardrailContentPolicyConfig, name: "contentPolicyConfig"))
    CreateAIGuardrailRequest.add_member(:word_policy_config, ::Smithy::Schema::Shapes::MemberShape.new(target: AIGuardrailWordPolicyConfig, name: "wordPolicyConfig"))
    CreateAIGuardrailRequest.add_member(:sensitive_information_policy_config, ::Smithy::Schema::Shapes::MemberShape.new(target: AIGuardrailSensitiveInformationPolicyConfig, name: "sensitiveInformationPolicyConfig"))
    CreateAIGuardrailRequest.add_member(:contextual_grounding_policy_config, ::Smithy::Schema::Shapes::MemberShape.new(target: AIGuardrailContextualGroundingPolicyConfig, name: "contextualGroundingPolicyConfig"))
    CreateAIGuardrailRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    CreateAIGuardrailRequest.type = Types::CreateAIGuardrailRequest
    CreateAIGuardrailResponse.add_member(:ai_guardrail, ::Smithy::Schema::Shapes::MemberShape.new(target: AIGuardrailData, name: "aiGuardrail"))
    CreateAIGuardrailResponse.type = Types::CreateAIGuardrailResponse
    CreateAIGuardrailVersionRequest.add_member(:assistant_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArn, name: "assistantId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateAIGuardrailVersionRequest.add_member(:ai_guardrail_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArnOrEitherWithQualifier, name: "aiGuardrailId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateAIGuardrailVersionRequest.add_member(:modified_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "modifiedTime"))
    CreateAIGuardrailVersionRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateAIGuardrailVersionRequest.type = Types::CreateAIGuardrailVersionRequest
    CreateAIGuardrailVersionResponse.add_member(:ai_guardrail, ::Smithy::Schema::Shapes::MemberShape.new(target: AIGuardrailData, name: "aiGuardrail"))
    CreateAIGuardrailVersionResponse.add_member(:version_number, ::Smithy::Schema::Shapes::MemberShape.new(target: Version, name: "versionNumber"))
    CreateAIGuardrailVersionResponse.type = Types::CreateAIGuardrailVersionResponse
    CreateAIPromptRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateAIPromptRequest.add_member(:assistant_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArn, name: "assistantId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateAIPromptRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "name", traits: {"smithy.api#required" => {}}))
    CreateAIPromptRequest.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: AIPromptType, name: "type", traits: {"smithy.api#required" => {}}))
    CreateAIPromptRequest.add_member(:template_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AIPromptTemplateConfiguration, name: "templateConfiguration", traits: {"smithy.api#required" => {}}))
    CreateAIPromptRequest.add_member(:visibility_status, ::Smithy::Schema::Shapes::MemberShape.new(target: VisibilityStatus, name: "visibilityStatus", traits: {"smithy.api#required" => {}}))
    CreateAIPromptRequest.add_member(:template_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AIPromptTemplateType, name: "templateType", traits: {"smithy.api#required" => {}}))
    CreateAIPromptRequest.add_member(:model_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AIPromptModelIdentifier, name: "modelId", traits: {"smithy.api#required" => {}}))
    CreateAIPromptRequest.add_member(:api_format, ::Smithy::Schema::Shapes::MemberShape.new(target: AIPromptAPIFormat, name: "apiFormat", traits: {"smithy.api#required" => {}}))
    CreateAIPromptRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    CreateAIPromptRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    CreateAIPromptRequest.add_member(:inference_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AIPromptInferenceConfiguration, name: "inferenceConfiguration"))
    CreateAIPromptRequest.type = Types::CreateAIPromptRequest
    CreateAIPromptResponse.add_member(:ai_prompt, ::Smithy::Schema::Shapes::MemberShape.new(target: AIPromptData, name: "aiPrompt"))
    CreateAIPromptResponse.type = Types::CreateAIPromptResponse
    CreateAIPromptVersionRequest.add_member(:assistant_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArn, name: "assistantId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateAIPromptVersionRequest.add_member(:ai_prompt_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArnOrEitherWithQualifier, name: "aiPromptId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateAIPromptVersionRequest.add_member(:modified_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "modifiedTime"))
    CreateAIPromptVersionRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateAIPromptVersionRequest.type = Types::CreateAIPromptVersionRequest
    CreateAIPromptVersionResponse.add_member(:ai_prompt, ::Smithy::Schema::Shapes::MemberShape.new(target: AIPromptData, name: "aiPrompt"))
    CreateAIPromptVersionResponse.add_member(:version_number, ::Smithy::Schema::Shapes::MemberShape.new(target: Version, name: "versionNumber"))
    CreateAIPromptVersionResponse.type = Types::CreateAIPromptVersionResponse
    CreateAssistantAssociationInput.add_member(:assistant_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArn, name: "assistantId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateAssistantAssociationInput.add_member(:association_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociationType, name: "associationType", traits: {"smithy.api#required" => {}}))
    CreateAssistantAssociationInput.add_member(:association, ::Smithy::Schema::Shapes::MemberShape.new(target: AssistantAssociationInputData, name: "association", traits: {"smithy.api#required" => {}}))
    CreateAssistantAssociationInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateAssistantAssociationInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    CreateAssistantAssociationInput.type = Types::CreateAssistantAssociationInput
    CreateAssistantAssociationOutput.add_member(:assistant_association, ::Smithy::Schema::Shapes::MemberShape.new(target: AssistantAssociationData, name: "assistantAssociation"))
    CreateAssistantAssociationOutput.type = Types::CreateAssistantAssociationOutput
    CreateAssistantInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateAssistantInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "name", traits: {"smithy.api#required" => {}}))
    CreateAssistantInput.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: AssistantType, name: "type", traits: {"smithy.api#required" => {}}))
    CreateAssistantInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    CreateAssistantInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    CreateAssistantInput.add_member(:server_side_encryption_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerSideEncryptionConfiguration, name: "serverSideEncryptionConfiguration"))
    CreateAssistantInput.type = Types::CreateAssistantInput
    CreateAssistantOutput.add_member(:assistant, ::Smithy::Schema::Shapes::MemberShape.new(target: AssistantData, name: "assistant"))
    CreateAssistantOutput.type = Types::CreateAssistantOutput
    CreateContentAssociationRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateContentAssociationRequest.add_member(:knowledge_base_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArn, name: "knowledgeBaseId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateContentAssociationRequest.add_member(:content_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArn, name: "contentId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateContentAssociationRequest.add_member(:association_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentAssociationType, name: "associationType", traits: {"smithy.api#required" => {}}))
    CreateContentAssociationRequest.add_member(:association, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentAssociationContents, name: "association", traits: {"smithy.api#required" => {}}))
    CreateContentAssociationRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    CreateContentAssociationRequest.type = Types::CreateContentAssociationRequest
    CreateContentAssociationResponse.add_member(:content_association, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentAssociationData, name: "contentAssociation"))
    CreateContentAssociationResponse.type = Types::CreateContentAssociationResponse
    CreateContentInput.add_member(:knowledge_base_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArn, name: "knowledgeBaseId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateContentInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "name", traits: {"smithy.api#required" => {}}))
    CreateContentInput.add_member(:title, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentTitle, name: "title"))
    CreateContentInput.add_member(:override_link_out_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: Uri, name: "overrideLinkOutUri"))
    CreateContentInput.add_member(:metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentMetadata, name: "metadata"))
    CreateContentInput.add_member(:upload_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UploadId, name: "uploadId", traits: {"smithy.api#required" => {}}))
    CreateContentInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateContentInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    CreateContentInput.type = Types::CreateContentInput
    CreateContentOutput.add_member(:content, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentData, name: "content"))
    CreateContentOutput.type = Types::CreateContentOutput
    CreateKnowledgeBaseInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateKnowledgeBaseInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "name", traits: {"smithy.api#required" => {}}))
    CreateKnowledgeBaseInput.add_member(:knowledge_base_type, ::Smithy::Schema::Shapes::MemberShape.new(target: KnowledgeBaseType, name: "knowledgeBaseType", traits: {"smithy.api#required" => {}}))
    CreateKnowledgeBaseInput.add_member(:source_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceConfiguration, name: "sourceConfiguration"))
    CreateKnowledgeBaseInput.add_member(:rendering_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: RenderingConfiguration, name: "renderingConfiguration"))
    CreateKnowledgeBaseInput.add_member(:vector_ingestion_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: VectorIngestionConfiguration, name: "vectorIngestionConfiguration"))
    CreateKnowledgeBaseInput.add_member(:server_side_encryption_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerSideEncryptionConfiguration, name: "serverSideEncryptionConfiguration"))
    CreateKnowledgeBaseInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    CreateKnowledgeBaseInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    CreateKnowledgeBaseInput.type = Types::CreateKnowledgeBaseInput
    CreateKnowledgeBaseOutput.add_member(:knowledge_base, ::Smithy::Schema::Shapes::MemberShape.new(target: KnowledgeBaseData, name: "knowledgeBase"))
    CreateKnowledgeBaseOutput.type = Types::CreateKnowledgeBaseOutput
    CreateMessageTemplateAttachmentRequest.add_member(:knowledge_base_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArn, name: "knowledgeBaseId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateMessageTemplateAttachmentRequest.add_member(:message_template_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArnOrEitherWithQualifier, name: "messageTemplateId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateMessageTemplateAttachmentRequest.add_member(:content_disposition, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentDisposition, name: "contentDisposition", traits: {"smithy.api#required" => {}}))
    CreateMessageTemplateAttachmentRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: AttachmentFileName, name: "name", traits: {"smithy.api#required" => {}}))
    CreateMessageTemplateAttachmentRequest.add_member(:body, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyUnlimitedString, name: "body", traits: {"smithy.api#required" => {}}))
    CreateMessageTemplateAttachmentRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken"))
    CreateMessageTemplateAttachmentRequest.type = Types::CreateMessageTemplateAttachmentRequest
    CreateMessageTemplateAttachmentResponse.add_member(:attachment, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageTemplateAttachment, name: "attachment"))
    CreateMessageTemplateAttachmentResponse.type = Types::CreateMessageTemplateAttachmentResponse
    CreateMessageTemplateRequest.add_member(:knowledge_base_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArn, name: "knowledgeBaseId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateMessageTemplateRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "name"))
    CreateMessageTemplateRequest.add_member(:content, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageTemplateContentProvider, name: "content"))
    CreateMessageTemplateRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    CreateMessageTemplateRequest.add_member(:channel_subtype, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelSubtype, name: "channelSubtype", traits: {"smithy.api#required" => {}}))
    CreateMessageTemplateRequest.add_member(:language, ::Smithy::Schema::Shapes::MemberShape.new(target: LanguageCode, name: "language"))
    CreateMessageTemplateRequest.add_member(:source_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageTemplateSourceConfiguration, name: "sourceConfiguration"))
    CreateMessageTemplateRequest.add_member(:default_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageTemplateAttributes, name: "defaultAttributes"))
    CreateMessageTemplateRequest.add_member(:grouping_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupingConfiguration, name: "groupingConfiguration"))
    CreateMessageTemplateRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateMessageTemplateRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    CreateMessageTemplateRequest.type = Types::CreateMessageTemplateRequest
    CreateMessageTemplateResponse.add_member(:message_template, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageTemplateData, name: "messageTemplate"))
    CreateMessageTemplateResponse.type = Types::CreateMessageTemplateResponse
    CreateMessageTemplateVersionRequest.add_member(:knowledge_base_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArn, name: "knowledgeBaseId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateMessageTemplateVersionRequest.add_member(:message_template_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArnOrEitherWithQualifier, name: "messageTemplateId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateMessageTemplateVersionRequest.add_member(:message_template_content_sha256, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageTemplateContentSha256, name: "messageTemplateContentSha256"))
    CreateMessageTemplateVersionRequest.type = Types::CreateMessageTemplateVersionRequest
    CreateMessageTemplateVersionResponse.add_member(:message_template, ::Smithy::Schema::Shapes::MemberShape.new(target: ExtendedMessageTemplateData, name: "messageTemplate"))
    CreateMessageTemplateVersionResponse.type = Types::CreateMessageTemplateVersionResponse
    CreateQuickResponseRequest.add_member(:knowledge_base_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArn, name: "knowledgeBaseId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateQuickResponseRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: QuickResponseName, name: "name", traits: {"smithy.api#required" => {}}))
    CreateQuickResponseRequest.add_member(:content, ::Smithy::Schema::Shapes::MemberShape.new(target: QuickResponseDataProvider, name: "content", traits: {"smithy.api#required" => {}}))
    CreateQuickResponseRequest.add_member(:content_type, ::Smithy::Schema::Shapes::MemberShape.new(target: QuickResponseType, name: "contentType"))
    CreateQuickResponseRequest.add_member(:grouping_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupingConfiguration, name: "groupingConfiguration"))
    CreateQuickResponseRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: QuickResponseDescription, name: "description"))
    CreateQuickResponseRequest.add_member(:shortcut_key, ::Smithy::Schema::Shapes::MemberShape.new(target: ShortCutKey, name: "shortcutKey"))
    CreateQuickResponseRequest.add_member(:is_active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "isActive"))
    CreateQuickResponseRequest.add_member(:channels, ::Smithy::Schema::Shapes::MemberShape.new(target: Channels, name: "channels"))
    CreateQuickResponseRequest.add_member(:language, ::Smithy::Schema::Shapes::MemberShape.new(target: LanguageCode, name: "language"))
    CreateQuickResponseRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateQuickResponseRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    CreateQuickResponseRequest.type = Types::CreateQuickResponseRequest
    CreateQuickResponseResponse.add_member(:quick_response, ::Smithy::Schema::Shapes::MemberShape.new(target: QuickResponseData, name: "quickResponse"))
    CreateQuickResponseResponse.type = Types::CreateQuickResponseResponse
    CreateSessionInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateSessionInput.add_member(:assistant_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArn, name: "assistantId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateSessionInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "name", traits: {"smithy.api#required" => {}}))
    CreateSessionInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    CreateSessionInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    CreateSessionInput.add_member(:tag_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: TagFilter, name: "tagFilter"))
    CreateSessionInput.add_member(:ai_agent_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AIAgentConfigurationMap, name: "aiAgentConfiguration"))
    CreateSessionInput.add_member(:contact_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericArn, name: "contactArn"))
    CreateSessionInput.add_member(:orchestrator_configuration_list, ::Smithy::Schema::Shapes::MemberShape.new(target: OrchestratorConfigurationList, name: "orchestratorConfigurationList"))
    CreateSessionInput.add_member(:remove_orchestrator_configuration_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "removeOrchestratorConfigurationList", traits: {"smithy.api#default" => nil}))
    CreateSessionInput.type = Types::CreateSessionInput
    CreateSessionOutput.add_member(:session, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionData, name: "session"))
    CreateSessionOutput.type = Types::CreateSessionOutput
    CustomAttributes.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageTemplateAttributeKey, name: "key"))
    CustomAttributes.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageTemplateAttributeValue, name: "value"))
    CustomerProfileAttributes.add_member(:profile_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageTemplateAttributeValue, name: "profileId"))
    CustomerProfileAttributes.add_member(:profile_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageTemplateAttributeValue, name: "profileARN"))
    CustomerProfileAttributes.add_member(:first_name, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageTemplateAttributeValue, name: "firstName"))
    CustomerProfileAttributes.add_member(:middle_name, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageTemplateAttributeValue, name: "middleName"))
    CustomerProfileAttributes.add_member(:last_name, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageTemplateAttributeValue, name: "lastName"))
    CustomerProfileAttributes.add_member(:account_number, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageTemplateAttributeValue, name: "accountNumber"))
    CustomerProfileAttributes.add_member(:email_address, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageTemplateAttributeValue, name: "emailAddress"))
    CustomerProfileAttributes.add_member(:phone_number, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageTemplateAttributeValue, name: "phoneNumber"))
    CustomerProfileAttributes.add_member(:additional_information, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageTemplateAttributeValue, name: "additionalInformation"))
    CustomerProfileAttributes.add_member(:party_type, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageTemplateAttributeValue, name: "partyType"))
    CustomerProfileAttributes.add_member(:business_name, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageTemplateAttributeValue, name: "businessName"))
    CustomerProfileAttributes.add_member(:birth_date, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageTemplateAttributeValue, name: "birthDate"))
    CustomerProfileAttributes.add_member(:gender, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageTemplateAttributeValue, name: "gender"))
    CustomerProfileAttributes.add_member(:mobile_phone_number, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageTemplateAttributeValue, name: "mobilePhoneNumber"))
    CustomerProfileAttributes.add_member(:home_phone_number, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageTemplateAttributeValue, name: "homePhoneNumber"))
    CustomerProfileAttributes.add_member(:business_phone_number, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageTemplateAttributeValue, name: "businessPhoneNumber"))
    CustomerProfileAttributes.add_member(:business_email_address, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageTemplateAttributeValue, name: "businessEmailAddress"))
    CustomerProfileAttributes.add_member(:address1, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageTemplateAttributeValue, name: "address1"))
    CustomerProfileAttributes.add_member(:address2, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageTemplateAttributeValue, name: "address2"))
    CustomerProfileAttributes.add_member(:address3, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageTemplateAttributeValue, name: "address3"))
    CustomerProfileAttributes.add_member(:address4, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageTemplateAttributeValue, name: "address4"))
    CustomerProfileAttributes.add_member(:city, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageTemplateAttributeValue, name: "city"))
    CustomerProfileAttributes.add_member(:county, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageTemplateAttributeValue, name: "county"))
    CustomerProfileAttributes.add_member(:country, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageTemplateAttributeValue, name: "country"))
    CustomerProfileAttributes.add_member(:postal_code, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageTemplateAttributeValue, name: "postalCode"))
    CustomerProfileAttributes.add_member(:province, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageTemplateAttributeValue, name: "province"))
    CustomerProfileAttributes.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageTemplateAttributeValue, name: "state"))
    CustomerProfileAttributes.add_member(:shipping_address1, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageTemplateAttributeValue, name: "shippingAddress1"))
    CustomerProfileAttributes.add_member(:shipping_address2, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageTemplateAttributeValue, name: "shippingAddress2"))
    CustomerProfileAttributes.add_member(:shipping_address3, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageTemplateAttributeValue, name: "shippingAddress3"))
    CustomerProfileAttributes.add_member(:shipping_address4, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageTemplateAttributeValue, name: "shippingAddress4"))
    CustomerProfileAttributes.add_member(:shipping_city, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageTemplateAttributeValue, name: "shippingCity"))
    CustomerProfileAttributes.add_member(:shipping_county, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageTemplateAttributeValue, name: "shippingCounty"))
    CustomerProfileAttributes.add_member(:shipping_country, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageTemplateAttributeValue, name: "shippingCountry"))
    CustomerProfileAttributes.add_member(:shipping_postal_code, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageTemplateAttributeValue, name: "shippingPostalCode"))
    CustomerProfileAttributes.add_member(:shipping_province, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageTemplateAttributeValue, name: "shippingProvince"))
    CustomerProfileAttributes.add_member(:shipping_state, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageTemplateAttributeValue, name: "shippingState"))
    CustomerProfileAttributes.add_member(:mailing_address1, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageTemplateAttributeValue, name: "mailingAddress1"))
    CustomerProfileAttributes.add_member(:mailing_address2, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageTemplateAttributeValue, name: "mailingAddress2"))
    CustomerProfileAttributes.add_member(:mailing_address3, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageTemplateAttributeValue, name: "mailingAddress3"))
    CustomerProfileAttributes.add_member(:mailing_address4, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageTemplateAttributeValue, name: "mailingAddress4"))
    CustomerProfileAttributes.add_member(:mailing_city, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageTemplateAttributeValue, name: "mailingCity"))
    CustomerProfileAttributes.add_member(:mailing_county, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageTemplateAttributeValue, name: "mailingCounty"))
    CustomerProfileAttributes.add_member(:mailing_country, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageTemplateAttributeValue, name: "mailingCountry"))
    CustomerProfileAttributes.add_member(:mailing_postal_code, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageTemplateAttributeValue, name: "mailingPostalCode"))
    CustomerProfileAttributes.add_member(:mailing_province, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageTemplateAttributeValue, name: "mailingProvince"))
    CustomerProfileAttributes.add_member(:mailing_state, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageTemplateAttributeValue, name: "mailingState"))
    CustomerProfileAttributes.add_member(:billing_address1, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageTemplateAttributeValue, name: "billingAddress1"))
    CustomerProfileAttributes.add_member(:billing_address2, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageTemplateAttributeValue, name: "billingAddress2"))
    CustomerProfileAttributes.add_member(:billing_address3, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageTemplateAttributeValue, name: "billingAddress3"))
    CustomerProfileAttributes.add_member(:billing_address4, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageTemplateAttributeValue, name: "billingAddress4"))
    CustomerProfileAttributes.add_member(:billing_city, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageTemplateAttributeValue, name: "billingCity"))
    CustomerProfileAttributes.add_member(:billing_county, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageTemplateAttributeValue, name: "billingCounty"))
    CustomerProfileAttributes.add_member(:billing_country, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageTemplateAttributeValue, name: "billingCountry"))
    CustomerProfileAttributes.add_member(:billing_postal_code, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageTemplateAttributeValue, name: "billingPostalCode"))
    CustomerProfileAttributes.add_member(:billing_province, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageTemplateAttributeValue, name: "billingProvince"))
    CustomerProfileAttributes.add_member(:billing_state, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageTemplateAttributeValue, name: "billingState"))
    CustomerProfileAttributes.add_member(:custom, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomAttributes, name: "custom"))
    CustomerProfileAttributes.type = Types::CustomerProfileAttributes
    DataDetails.add_member(:content_data, Types::DataDetails::ContentData, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentDataDetails, name: "contentData"))
    DataDetails.add_member(:generative_data, Types::DataDetails::GenerativeData, ::Smithy::Schema::Shapes::MemberShape.new(target: GenerativeDataDetails, name: "generativeData"))
    DataDetails.add_member(:intent_detected_data, Types::DataDetails::IntentDetectedData, ::Smithy::Schema::Shapes::MemberShape.new(target: IntentDetectedDataDetails, name: "intentDetectedData"))
    DataDetails.add_member(:source_content_data, Types::DataDetails::SourceContentData, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceContentDataDetails, name: "sourceContentData"))
    DataDetails.add_member(:generative_chunk_data, Types::DataDetails::GenerativeChunkData, ::Smithy::Schema::Shapes::MemberShape.new(target: GenerativeChunkDataDetails, name: "generativeChunkData"))
    DataDetails.add_member(:email_response_chunk_data, Types::DataDetails::EmailResponseChunkData, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailResponseChunkDataDetails, name: "emailResponseChunkData"))
    DataDetails.add_member(:email_overview_chunk_data, Types::DataDetails::EmailOverviewChunkData, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailOverviewChunkDataDetails, name: "emailOverviewChunkData"))
    DataDetails.add_member(:email_generative_answer_chunk_data, Types::DataDetails::EmailGenerativeAnswerChunkData, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailGenerativeAnswerChunkDataDetails, name: "emailGenerativeAnswerChunkData"))
    DataDetails.add_member(:case_summarization_chunk_data, Types::DataDetails::CaseSummarizationChunkData, ::Smithy::Schema::Shapes::MemberShape.new(target: CaseSummarizationChunkDataDetails, name: "caseSummarizationChunkData"))
    DataDetails.add_member(:suggested_message_data, Types::DataDetails::SuggestedMessageData, ::Smithy::Schema::Shapes::MemberShape.new(target: SuggestedMessageDataDetails, name: "suggestedMessageData"))
    DataDetails.add_member(:notes_data, Types::DataDetails::NotesData, ::Smithy::Schema::Shapes::MemberShape.new(target: NotesDataDetails, name: "notesData"))
    DataDetails.add_member(:notes_chunk_data, Types::DataDetails::NotesChunkData, ::Smithy::Schema::Shapes::MemberShape.new(target: NotesChunkDataDetails, name: "notesChunkData"))
    DataDetails.add_member(:proactive_recommendation_data, Types::DataDetails::ProactiveRecommendationData, ::Smithy::Schema::Shapes::MemberShape.new(target: ProactiveRecommendationDataDetails, name: "proactiveRecommendationData"))
    DataDetails.add_member(:unknown, Types::DataDetails::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    DataDetails.type = Types::DataDetails
    DataReference.add_member(:content_reference, Types::DataReference::ContentReference, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentReference, name: "contentReference"))
    DataReference.add_member(:generative_reference, Types::DataReference::GenerativeReference, ::Smithy::Schema::Shapes::MemberShape.new(target: GenerativeReference, name: "generativeReference"))
    DataReference.add_member(:suggested_message_reference, Types::DataReference::SuggestedMessageReference, ::Smithy::Schema::Shapes::MemberShape.new(target: SuggestedMessageReference, name: "suggestedMessageReference"))
    DataReference.add_member(:unknown, Types::DataReference::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    DataReference.type = Types::DataReference
    DataSummary.add_member(:reference, ::Smithy::Schema::Shapes::MemberShape.new(target: DataReference, name: "reference", traits: {"smithy.api#required" => {}}))
    DataSummary.add_member(:details, ::Smithy::Schema::Shapes::MemberShape.new(target: DataDetails, name: "details", traits: {"smithy.api#required" => {}}))
    DataSummary.type = Types::DataSummary
    DataSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSummary, name: "member"))
    DeactivateMessageTemplateRequest.add_member(:knowledge_base_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArn, name: "knowledgeBaseId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeactivateMessageTemplateRequest.add_member(:message_template_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArnOrEitherWithQualifier, name: "messageTemplateId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeactivateMessageTemplateRequest.add_member(:version_number, ::Smithy::Schema::Shapes::MemberShape.new(target: Version, name: "versionNumber", traits: {"smithy.api#required" => {}}))
    DeactivateMessageTemplateRequest.type = Types::DeactivateMessageTemplateRequest
    DeactivateMessageTemplateResponse.add_member(:message_template_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnWithQualifier, name: "messageTemplateArn", traits: {"smithy.api#required" => {}}))
    DeactivateMessageTemplateResponse.add_member(:message_template_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "messageTemplateId", traits: {"smithy.api#required" => {}}))
    DeactivateMessageTemplateResponse.add_member(:version_number, ::Smithy::Schema::Shapes::MemberShape.new(target: Version, name: "versionNumber", traits: {"smithy.api#required" => {}}))
    DeactivateMessageTemplateResponse.type = Types::DeactivateMessageTemplateResponse
    DelegateAgentConfiguration.add_member(:agent_target, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentTarget, name: "agentTarget", traits: {"smithy.api#required" => {}}))
    DelegateAgentConfiguration.add_member(:instruction, ::Smithy::Schema::Shapes::MemberShape.new(target: MultiAgentInstruction, name: "instruction"))
    DelegateAgentConfiguration.type = Types::DelegateAgentConfiguration
    DeleteAIAgentRequest.add_member(:assistant_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArn, name: "assistantId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAIAgentRequest.add_member(:ai_agent_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArnOrEitherWithQualifier, name: "aiAgentId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAIAgentRequest.type = Types::DeleteAIAgentRequest
    DeleteAIAgentResponse.type = Types::DeleteAIAgentResponse
    DeleteAIAgentVersionRequest.add_member(:assistant_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArn, name: "assistantId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAIAgentVersionRequest.add_member(:ai_agent_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArnOrEitherWithQualifier, name: "aiAgentId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAIAgentVersionRequest.add_member(:version_number, ::Smithy::Schema::Shapes::MemberShape.new(target: Version, name: "versionNumber", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAIAgentVersionRequest.type = Types::DeleteAIAgentVersionRequest
    DeleteAIAgentVersionResponse.type = Types::DeleteAIAgentVersionResponse
    DeleteAIGuardrailRequest.add_member(:assistant_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArn, name: "assistantId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAIGuardrailRequest.add_member(:ai_guardrail_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArnOrEitherWithQualifier, name: "aiGuardrailId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAIGuardrailRequest.type = Types::DeleteAIGuardrailRequest
    DeleteAIGuardrailResponse.type = Types::DeleteAIGuardrailResponse
    DeleteAIGuardrailVersionRequest.add_member(:assistant_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArn, name: "assistantId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAIGuardrailVersionRequest.add_member(:ai_guardrail_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArnOrEitherWithQualifier, name: "aiGuardrailId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAIGuardrailVersionRequest.add_member(:version_number, ::Smithy::Schema::Shapes::MemberShape.new(target: Version, name: "versionNumber", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAIGuardrailVersionRequest.type = Types::DeleteAIGuardrailVersionRequest
    DeleteAIGuardrailVersionResponse.type = Types::DeleteAIGuardrailVersionResponse
    DeleteAIPromptRequest.add_member(:assistant_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArn, name: "assistantId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAIPromptRequest.add_member(:ai_prompt_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArnOrEitherWithQualifier, name: "aiPromptId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAIPromptRequest.type = Types::DeleteAIPromptRequest
    DeleteAIPromptResponse.type = Types::DeleteAIPromptResponse
    DeleteAIPromptVersionRequest.add_member(:assistant_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArn, name: "assistantId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAIPromptVersionRequest.add_member(:ai_prompt_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArnOrEitherWithQualifier, name: "aiPromptId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAIPromptVersionRequest.add_member(:version_number, ::Smithy::Schema::Shapes::MemberShape.new(target: Version, name: "versionNumber", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAIPromptVersionRequest.type = Types::DeleteAIPromptVersionRequest
    DeleteAIPromptVersionResponse.type = Types::DeleteAIPromptVersionResponse
    DeleteAssistantAssociationInput.add_member(:assistant_association_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArn, name: "assistantAssociationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAssistantAssociationInput.add_member(:assistant_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArn, name: "assistantId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAssistantAssociationInput.type = Types::DeleteAssistantAssociationInput
    DeleteAssistantAssociationOutput.type = Types::DeleteAssistantAssociationOutput
    DeleteAssistantInput.add_member(:assistant_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArn, name: "assistantId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAssistantInput.type = Types::DeleteAssistantInput
    DeleteAssistantOutput.type = Types::DeleteAssistantOutput
    DeleteContentAssociationRequest.add_member(:knowledge_base_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArn, name: "knowledgeBaseId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteContentAssociationRequest.add_member(:content_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArn, name: "contentId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteContentAssociationRequest.add_member(:content_association_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArn, name: "contentAssociationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteContentAssociationRequest.type = Types::DeleteContentAssociationRequest
    DeleteContentAssociationResponse.type = Types::DeleteContentAssociationResponse
    DeleteContentInput.add_member(:knowledge_base_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArn, name: "knowledgeBaseId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteContentInput.add_member(:content_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArn, name: "contentId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteContentInput.type = Types::DeleteContentInput
    DeleteContentOutput.type = Types::DeleteContentOutput
    DeleteImportJobRequest.add_member(:knowledge_base_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArn, name: "knowledgeBaseId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteImportJobRequest.add_member(:import_job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "importJobId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteImportJobRequest.type = Types::DeleteImportJobRequest
    DeleteImportJobResponse.type = Types::DeleteImportJobResponse
    DeleteKnowledgeBaseInput.add_member(:knowledge_base_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArn, name: "knowledgeBaseId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteKnowledgeBaseInput.type = Types::DeleteKnowledgeBaseInput
    DeleteKnowledgeBaseOutput.type = Types::DeleteKnowledgeBaseOutput
    DeleteMessageTemplateAttachmentRequest.add_member(:knowledge_base_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArn, name: "knowledgeBaseId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteMessageTemplateAttachmentRequest.add_member(:message_template_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArnOrEitherWithQualifier, name: "messageTemplateId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteMessageTemplateAttachmentRequest.add_member(:attachment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "attachmentId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteMessageTemplateAttachmentRequest.type = Types::DeleteMessageTemplateAttachmentRequest
    DeleteMessageTemplateAttachmentResponse.type = Types::DeleteMessageTemplateAttachmentResponse
    DeleteMessageTemplateRequest.add_member(:knowledge_base_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArn, name: "knowledgeBaseId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteMessageTemplateRequest.add_member(:message_template_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArnOrEitherWithQualifier, name: "messageTemplateId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteMessageTemplateRequest.type = Types::DeleteMessageTemplateRequest
    DeleteMessageTemplateResponse.type = Types::DeleteMessageTemplateResponse
    DeleteQuickResponseRequest.add_member(:knowledge_base_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArn, name: "knowledgeBaseId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteQuickResponseRequest.add_member(:quick_response_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArn, name: "quickResponseId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteQuickResponseRequest.type = Types::DeleteQuickResponseRequest
    DeleteQuickResponseResponse.type = Types::DeleteQuickResponseResponse
    DependencyFailedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message"))
    DependencyFailedException.type = Types::DependencyFailedException
    Document.add_member(:content_reference, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentReference, name: "contentReference", traits: {"smithy.api#required" => {}}))
    Document.add_member(:title, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentText, name: "title"))
    Document.add_member(:excerpt, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentText, name: "excerpt"))
    Document.type = Types::Document
    DocumentText.add_member(:text, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "text"))
    DocumentText.add_member(:highlights, ::Smithy::Schema::Shapes::MemberShape.new(target: Highlights, name: "highlights"))
    DocumentText.type = Types::DocumentText
    EmailGenerativeAnswerAIAgentConfiguration.add_member(:email_generative_answer_ai_prompt_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidWithQualifier, name: "emailGenerativeAnswerAIPromptId"))
    EmailGenerativeAnswerAIAgentConfiguration.add_member(:email_query_reformulation_ai_prompt_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidWithQualifier, name: "emailQueryReformulationAIPromptId"))
    EmailGenerativeAnswerAIAgentConfiguration.add_member(:locale, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "locale"))
    EmailGenerativeAnswerAIAgentConfiguration.add_member(:association_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociationConfigurationList, name: "associationConfigurations"))
    EmailGenerativeAnswerAIAgentConfiguration.type = Types::EmailGenerativeAnswerAIAgentConfiguration
    EmailGenerativeAnswerChunkDataDetails.add_member(:completion, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptySensitiveString, name: "completion"))
    EmailGenerativeAnswerChunkDataDetails.add_member(:references, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSummaryList, name: "references"))
    EmailGenerativeAnswerChunkDataDetails.add_member(:next_chunk_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextChunkToken"))
    EmailGenerativeAnswerChunkDataDetails.type = Types::EmailGenerativeAnswerChunkDataDetails
    EmailHeader.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailHeaderKey, name: "name"))
    EmailHeader.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailHeaderValue, name: "value"))
    EmailHeader.type = Types::EmailHeader
    EmailHeaders.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailHeader, name: "member"))
    EmailMessageTemplateContent.add_member(:subject, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyUnlimitedString, name: "subject"))
    EmailMessageTemplateContent.add_member(:body, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailMessageTemplateContentBody, name: "body"))
    EmailMessageTemplateContent.add_member(:headers, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailHeaders, name: "headers"))
    EmailMessageTemplateContent.type = Types::EmailMessageTemplateContent
    EmailMessageTemplateContentBody.add_member(:plain_text, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageTemplateBodyContentProvider, name: "plainText"))
    EmailMessageTemplateContentBody.add_member(:html, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageTemplateBodyContentProvider, name: "html"))
    EmailMessageTemplateContentBody.type = Types::EmailMessageTemplateContentBody
    EmailOverviewAIAgentConfiguration.add_member(:email_overview_ai_prompt_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidWithQualifier, name: "emailOverviewAIPromptId"))
    EmailOverviewAIAgentConfiguration.add_member(:locale, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "locale"))
    EmailOverviewAIAgentConfiguration.type = Types::EmailOverviewAIAgentConfiguration
    EmailOverviewChunkDataDetails.add_member(:completion, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptySensitiveString, name: "completion"))
    EmailOverviewChunkDataDetails.add_member(:next_chunk_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextChunkToken"))
    EmailOverviewChunkDataDetails.type = Types::EmailOverviewChunkDataDetails
    EmailResponseAIAgentConfiguration.add_member(:email_response_ai_prompt_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidWithQualifier, name: "emailResponseAIPromptId"))
    EmailResponseAIAgentConfiguration.add_member(:email_query_reformulation_ai_prompt_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidWithQualifier, name: "emailQueryReformulationAIPromptId"))
    EmailResponseAIAgentConfiguration.add_member(:locale, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "locale"))
    EmailResponseAIAgentConfiguration.add_member(:association_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociationConfigurationList, name: "associationConfigurations"))
    EmailResponseAIAgentConfiguration.type = Types::EmailResponseAIAgentConfiguration
    EmailResponseChunkDataDetails.add_member(:completion, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptySensitiveString, name: "completion"))
    EmailResponseChunkDataDetails.add_member(:next_chunk_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextChunkToken"))
    EmailResponseChunkDataDetails.type = Types::EmailResponseChunkDataDetails
    ExtendedMessageTemplateData.add_member(:message_template_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnWithQualifier, name: "messageTemplateArn", traits: {"smithy.api#required" => {}}))
    ExtendedMessageTemplateData.add_member(:message_template_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "messageTemplateId", traits: {"smithy.api#required" => {}}))
    ExtendedMessageTemplateData.add_member(:knowledge_base_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "knowledgeBaseArn", traits: {"smithy.api#required" => {}}))
    ExtendedMessageTemplateData.add_member(:knowledge_base_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "knowledgeBaseId", traits: {"smithy.api#required" => {}}))
    ExtendedMessageTemplateData.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "name", traits: {"smithy.api#required" => {}}))
    ExtendedMessageTemplateData.add_member(:channel, ::Smithy::Schema::Shapes::MemberShape.new(target: Channel, name: "channel"))
    ExtendedMessageTemplateData.add_member(:channel_subtype, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelSubtype, name: "channelSubtype", traits: {"smithy.api#required" => {}}))
    ExtendedMessageTemplateData.add_member(:created_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdTime", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    ExtendedMessageTemplateData.add_member(:last_modified_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "lastModifiedTime", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    ExtendedMessageTemplateData.add_member(:last_modified_by, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericArn, name: "lastModifiedBy", traits: {"smithy.api#required" => {}}))
    ExtendedMessageTemplateData.add_member(:content, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageTemplateContentProvider, name: "content"))
    ExtendedMessageTemplateData.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    ExtendedMessageTemplateData.add_member(:language, ::Smithy::Schema::Shapes::MemberShape.new(target: LanguageCode, name: "language"))
    ExtendedMessageTemplateData.add_member(:source_configuration_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageTemplateSourceConfigurationSummary, name: "sourceConfigurationSummary"))
    ExtendedMessageTemplateData.add_member(:grouping_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupingConfiguration, name: "groupingConfiguration"))
    ExtendedMessageTemplateData.add_member(:default_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageTemplateAttributes, name: "defaultAttributes"))
    ExtendedMessageTemplateData.add_member(:attribute_types, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageTemplateAttributeTypeList, name: "attributeTypes"))
    ExtendedMessageTemplateData.add_member(:attachments, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageTemplateAttachmentList, name: "attachments"))
    ExtendedMessageTemplateData.add_member(:is_active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "isActive"))
    ExtendedMessageTemplateData.add_member(:version_number, ::Smithy::Schema::Shapes::MemberShape.new(target: Version, name: "versionNumber"))
    ExtendedMessageTemplateData.add_member(:message_template_content_sha256, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageTemplateContentSha256, name: "messageTemplateContentSha256", traits: {"smithy.api#required" => {}}))
    ExtendedMessageTemplateData.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    ExtendedMessageTemplateData.type = Types::ExtendedMessageTemplateData
    ExternalBedrockKnowledgeBaseConfig.add_member(:bedrock_knowledge_base_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: BedrockKnowledgeBaseArn, name: "bedrockKnowledgeBaseArn", traits: {"smithy.api#required" => {}}))
    ExternalBedrockKnowledgeBaseConfig.add_member(:access_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessRoleArn, name: "accessRoleArn", traits: {"smithy.api#required" => {}}))
    ExternalBedrockKnowledgeBaseConfig.type = Types::ExternalBedrockKnowledgeBaseConfig
    ExternalSourceConfiguration.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: ExternalSource, name: "source", traits: {"smithy.api#required" => {}}))
    ExternalSourceConfiguration.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: Configuration, name: "configuration", traits: {"smithy.api#required" => {}}))
    ExternalSourceConfiguration.type = Types::ExternalSourceConfiguration
    FailureReason.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "member"))
    Filter.add_member(:field, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterField, name: "field", traits: {"smithy.api#required" => {}}))
    Filter.add_member(:operator, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterOperator, name: "operator", traits: {"smithy.api#required" => {}}))
    Filter.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "value", traits: {"smithy.api#required" => {}}))
    Filter.type = Types::Filter
    FilterAttribute.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterAttributeKey, name: "key", traits: {"smithy.api#required" => {}}))
    FilterAttribute.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: JSONDocument, name: "value", traits: {"smithy.api#required" => {}}))
    FilterAttribute.type = Types::FilterAttribute
    FilterList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Filter, name: "member"))
    FixedSizeChunkingConfiguration.add_member(:max_tokens, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxTokens", traits: {"smithy.api#range" => {"min" => 1}, "smithy.api#required" => {}}))
    FixedSizeChunkingConfiguration.add_member(:overlap_percentage, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "overlapPercentage", traits: {"smithy.api#range" => {"min" => 1, "max" => 99}, "smithy.api#required" => {}}))
    FixedSizeChunkingConfiguration.type = Types::FixedSizeChunkingConfiguration
    GenerativeChunkDataDetails.add_member(:completion, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "completion"))
    GenerativeChunkDataDetails.add_member(:references, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSummaryList, name: "references"))
    GenerativeChunkDataDetails.add_member(:next_chunk_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextChunkToken"))
    GenerativeChunkDataDetails.type = Types::GenerativeChunkDataDetails
    GenerativeContentFeedbackData.add_member(:relevance, ::Smithy::Schema::Shapes::MemberShape.new(target: Relevance, name: "relevance", traits: {"smithy.api#required" => {}}))
    GenerativeContentFeedbackData.type = Types::GenerativeContentFeedbackData
    GenerativeDataDetails.add_member(:completion, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "completion", traits: {"smithy.api#required" => {}}))
    GenerativeDataDetails.add_member(:references, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSummaryList, name: "references", traits: {"smithy.api#required" => {}}))
    GenerativeDataDetails.add_member(:ranking_data, ::Smithy::Schema::Shapes::MemberShape.new(target: RankingData, name: "rankingData", traits: {"smithy.api#required" => {}}))
    GenerativeDataDetails.type = Types::GenerativeDataDetails
    GenerativeReference.add_member(:model_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LlmModelId, name: "modelId"))
    GenerativeReference.add_member(:generation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "generationId"))
    GenerativeReference.type = Types::GenerativeReference
    GetAIAgentRequest.add_member(:assistant_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArn, name: "assistantId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAIAgentRequest.add_member(:ai_agent_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArnOrEitherWithQualifier, name: "aiAgentId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAIAgentRequest.type = Types::GetAIAgentRequest
    GetAIAgentResponse.add_member(:ai_agent, ::Smithy::Schema::Shapes::MemberShape.new(target: AIAgentData, name: "aiAgent"))
    GetAIAgentResponse.add_member(:version_number, ::Smithy::Schema::Shapes::MemberShape.new(target: Version, name: "versionNumber"))
    GetAIAgentResponse.type = Types::GetAIAgentResponse
    GetAIGuardrailRequest.add_member(:assistant_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArn, name: "assistantId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAIGuardrailRequest.add_member(:ai_guardrail_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArnOrEitherWithQualifier, name: "aiGuardrailId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAIGuardrailRequest.type = Types::GetAIGuardrailRequest
    GetAIGuardrailResponse.add_member(:ai_guardrail, ::Smithy::Schema::Shapes::MemberShape.new(target: AIGuardrailData, name: "aiGuardrail"))
    GetAIGuardrailResponse.add_member(:version_number, ::Smithy::Schema::Shapes::MemberShape.new(target: Version, name: "versionNumber"))
    GetAIGuardrailResponse.type = Types::GetAIGuardrailResponse
    GetAIPromptRequest.add_member(:assistant_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArn, name: "assistantId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAIPromptRequest.add_member(:ai_prompt_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArnOrEitherWithQualifier, name: "aiPromptId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAIPromptRequest.type = Types::GetAIPromptRequest
    GetAIPromptResponse.add_member(:ai_prompt, ::Smithy::Schema::Shapes::MemberShape.new(target: AIPromptData, name: "aiPrompt"))
    GetAIPromptResponse.add_member(:version_number, ::Smithy::Schema::Shapes::MemberShape.new(target: Version, name: "versionNumber"))
    GetAIPromptResponse.type = Types::GetAIPromptResponse
    GetAssistantAssociationInput.add_member(:assistant_association_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArn, name: "assistantAssociationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAssistantAssociationInput.add_member(:assistant_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArn, name: "assistantId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAssistantAssociationInput.type = Types::GetAssistantAssociationInput
    GetAssistantAssociationOutput.add_member(:assistant_association, ::Smithy::Schema::Shapes::MemberShape.new(target: AssistantAssociationData, name: "assistantAssociation"))
    GetAssistantAssociationOutput.type = Types::GetAssistantAssociationOutput
    GetAssistantInput.add_member(:assistant_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArn, name: "assistantId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAssistantInput.type = Types::GetAssistantInput
    GetAssistantOutput.add_member(:assistant, ::Smithy::Schema::Shapes::MemberShape.new(target: AssistantData, name: "assistant"))
    GetAssistantOutput.type = Types::GetAssistantOutput
    GetContentAssociationRequest.add_member(:knowledge_base_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArn, name: "knowledgeBaseId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetContentAssociationRequest.add_member(:content_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArn, name: "contentId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetContentAssociationRequest.add_member(:content_association_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArn, name: "contentAssociationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetContentAssociationRequest.type = Types::GetContentAssociationRequest
    GetContentAssociationResponse.add_member(:content_association, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentAssociationData, name: "contentAssociation"))
    GetContentAssociationResponse.type = Types::GetContentAssociationResponse
    GetContentInput.add_member(:content_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArn, name: "contentId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetContentInput.add_member(:knowledge_base_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArn, name: "knowledgeBaseId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetContentInput.type = Types::GetContentInput
    GetContentOutput.add_member(:content, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentData, name: "content"))
    GetContentOutput.type = Types::GetContentOutput
    GetContentSummaryInput.add_member(:content_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArn, name: "contentId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetContentSummaryInput.add_member(:knowledge_base_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArn, name: "knowledgeBaseId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetContentSummaryInput.type = Types::GetContentSummaryInput
    GetContentSummaryOutput.add_member(:content_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentSummary, name: "contentSummary"))
    GetContentSummaryOutput.type = Types::GetContentSummaryOutput
    GetImportJobRequest.add_member(:import_job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "importJobId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetImportJobRequest.add_member(:knowledge_base_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArn, name: "knowledgeBaseId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetImportJobRequest.type = Types::GetImportJobRequest
    GetImportJobResponse.add_member(:import_job, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportJobData, name: "importJob"))
    GetImportJobResponse.type = Types::GetImportJobResponse
    GetKnowledgeBaseInput.add_member(:knowledge_base_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArn, name: "knowledgeBaseId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetKnowledgeBaseInput.type = Types::GetKnowledgeBaseInput
    GetKnowledgeBaseOutput.add_member(:knowledge_base, ::Smithy::Schema::Shapes::MemberShape.new(target: KnowledgeBaseData, name: "knowledgeBase"))
    GetKnowledgeBaseOutput.type = Types::GetKnowledgeBaseOutput
    GetMessageTemplateRequest.add_member(:message_template_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArnOrEitherWithQualifier, name: "messageTemplateId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetMessageTemplateRequest.add_member(:knowledge_base_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArn, name: "knowledgeBaseId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetMessageTemplateRequest.type = Types::GetMessageTemplateRequest
    GetMessageTemplateResponse.add_member(:message_template, ::Smithy::Schema::Shapes::MemberShape.new(target: ExtendedMessageTemplateData, name: "messageTemplate"))
    GetMessageTemplateResponse.type = Types::GetMessageTemplateResponse
    GetNextMessageRequest.add_member(:assistant_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArn, name: "assistantId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetNextMessageRequest.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArn, name: "sessionId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetNextMessageRequest.add_member(:next_message_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextMessageToken", traits: {"smithy.api#httpQuery" => "nextMessageToken", "smithy.api#required" => {}}))
    GetNextMessageRequest.type = Types::GetNextMessageRequest
    GetNextMessageResponse.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageType, name: "type", traits: {"smithy.api#required" => {}}))
    GetNextMessageResponse.add_member(:response, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageOutput, name: "response", traits: {"smithy.api#required" => {}}))
    GetNextMessageResponse.add_member(:request_message_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "requestMessageId", traits: {"smithy.api#required" => {}}))
    GetNextMessageResponse.add_member(:conversation_state, ::Smithy::Schema::Shapes::MemberShape.new(target: ConversationState, name: "conversationState", traits: {"smithy.api#required" => {}}))
    GetNextMessageResponse.add_member(:next_message_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextMessageToken"))
    GetNextMessageResponse.add_member(:conversation_session_data, ::Smithy::Schema::Shapes::MemberShape.new(target: RuntimeSessionDataList, name: "conversationSessionData"))
    GetNextMessageResponse.add_member(:chunked_response_terminated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "chunkedResponseTerminated"))
    GetNextMessageResponse.type = Types::GetNextMessageResponse
    GetQuickResponseRequest.add_member(:quick_response_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArn, name: "quickResponseId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetQuickResponseRequest.add_member(:knowledge_base_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArn, name: "knowledgeBaseId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetQuickResponseRequest.type = Types::GetQuickResponseRequest
    GetQuickResponseResponse.add_member(:quick_response, ::Smithy::Schema::Shapes::MemberShape.new(target: QuickResponseData, name: "quickResponse"))
    GetQuickResponseResponse.type = Types::GetQuickResponseResponse
    GetRecommendationsInput.add_member(:assistant_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArn, name: "assistantId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetRecommendationsInput.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArn, name: "sessionId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetRecommendationsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    GetRecommendationsInput.add_member(:wait_time_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: WaitTimeSeconds, name: "waitTimeSeconds", traits: {"smithy.api#default" => 0, "smithy.api#httpQuery" => "waitTimeSeconds"}))
    GetRecommendationsInput.add_member(:next_chunk_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextChunkToken", traits: {"smithy.api#httpQuery" => "nextChunkToken"}))
    GetRecommendationsInput.add_member(:recommendation_type, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationType, name: "recommendationType", traits: {"smithy.api#httpQuery" => "recommendationType"}))
    GetRecommendationsInput.type = Types::GetRecommendationsInput
    GetRecommendationsOutput.add_member(:recommendations, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationList, name: "recommendations", traits: {"smithy.api#required" => {}}))
    GetRecommendationsOutput.add_member(:triggers, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationTriggerList, name: "triggers"))
    GetRecommendationsOutput.type = Types::GetRecommendationsOutput
    GetSessionInput.add_member(:assistant_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArn, name: "assistantId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSessionInput.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArn, name: "sessionId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSessionInput.type = Types::GetSessionInput
    GetSessionOutput.add_member(:session, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionData, name: "session"))
    GetSessionOutput.type = Types::GetSessionOutput
    GroupingConfiguration.add_member(:criteria, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupingCriteria, name: "criteria"))
    GroupingConfiguration.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupingValues, name: "values"))
    GroupingConfiguration.type = Types::GroupingConfiguration
    GroupingValues.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupingValue, name: "member"))
    GuardrailContentFilterConfig.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailContentFilterType, name: "type", traits: {"smithy.api#required" => {}}))
    GuardrailContentFilterConfig.add_member(:input_strength, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailFilterStrength, name: "inputStrength", traits: {"smithy.api#required" => {}}))
    GuardrailContentFilterConfig.add_member(:output_strength, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailFilterStrength, name: "outputStrength", traits: {"smithy.api#required" => {}}))
    GuardrailContentFilterConfig.type = Types::GuardrailContentFilterConfig
    GuardrailContentFiltersConfig.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailContentFilterConfig, name: "member"))
    GuardrailContextualGroundingFilterConfig.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailContextualGroundingFilterType, name: "type", traits: {"smithy.api#required" => {}}))
    GuardrailContextualGroundingFilterConfig.add_member(:threshold, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailContextualGroundingFilterThreshold, name: "threshold", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    GuardrailContextualGroundingFilterConfig.type = Types::GuardrailContextualGroundingFilterConfig
    GuardrailContextualGroundingFiltersConfig.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailContextualGroundingFilterConfig, name: "member"))
    GuardrailManagedWordListsConfig.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailManagedWordsConfig, name: "member"))
    GuardrailManagedWordsConfig.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailManagedWordsType, name: "type", traits: {"smithy.api#required" => {}}))
    GuardrailManagedWordsConfig.type = Types::GuardrailManagedWordsConfig
    GuardrailPiiEntitiesConfig.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailPiiEntityConfig, name: "member"))
    GuardrailPiiEntityConfig.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailPiiEntityType, name: "type", traits: {"smithy.api#required" => {}}))
    GuardrailPiiEntityConfig.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailSensitiveInformationAction, name: "action", traits: {"smithy.api#required" => {}}))
    GuardrailPiiEntityConfig.type = Types::GuardrailPiiEntityConfig
    GuardrailPolicyResult.add_member(:policy_type, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailPolicyType, name: "policyType", traits: {"smithy.api#required" => {}}))
    GuardrailPolicyResult.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailAction, name: "action", traits: {"smithy.api#required" => {}}))
    GuardrailPolicyResult.add_member(:details, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "details"))
    GuardrailPolicyResult.type = Types::GuardrailPolicyResult
    GuardrailPolicyResultList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailPolicyResult, name: "member"))
    GuardrailRegexConfig.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailRegexName, name: "name", traits: {"smithy.api#required" => {}}))
    GuardrailRegexConfig.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailRegexDescription, name: "description"))
    GuardrailRegexConfig.add_member(:pattern, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailRegexPattern, name: "pattern", traits: {"smithy.api#required" => {}}))
    GuardrailRegexConfig.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailSensitiveInformationAction, name: "action", traits: {"smithy.api#required" => {}}))
    GuardrailRegexConfig.type = Types::GuardrailRegexConfig
    GuardrailRegexesConfig.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailRegexConfig, name: "member"))
    GuardrailTopicConfig.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailTopicName, name: "name", traits: {"smithy.api#required" => {}}))
    GuardrailTopicConfig.add_member(:definition, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailTopicDefinition, name: "definition", traits: {"smithy.api#required" => {}}))
    GuardrailTopicConfig.add_member(:examples, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailTopicExamples, name: "examples"))
    GuardrailTopicConfig.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailTopicType, name: "type", traits: {"smithy.api#required" => {}}))
    GuardrailTopicConfig.type = Types::GuardrailTopicConfig
    GuardrailTopicExamples.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailTopicExample, name: "member"))
    GuardrailTopicsConfig.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailTopicConfig, name: "member"))
    GuardrailWordConfig.add_member(:text, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailWordText, name: "text", traits: {"smithy.api#required" => {}}))
    GuardrailWordConfig.type = Types::GuardrailWordConfig
    GuardrailWordsConfig.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailWordConfig, name: "member"))
    HandoffAgentConfiguration.add_member(:agent_target, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentTarget, name: "agentTarget", traits: {"smithy.api#required" => {}}))
    HandoffAgentConfiguration.add_member(:instruction, ::Smithy::Schema::Shapes::MemberShape.new(target: MultiAgentInstruction, name: "instruction"))
    HandoffAgentConfiguration.add_member(:audio_streaming_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "audioStreamingEnabled"))
    HandoffAgentConfiguration.add_member(:immediate_handoff, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "immediateHandoff"))
    HandoffAgentConfiguration.type = Types::HandoffAgentConfiguration
    Headers.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "key"))
    Headers.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "value"))
    HierarchicalChunkingConfiguration.add_member(:level_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: HierarchicalChunkingLevelConfigurations, name: "levelConfigurations", traits: {"smithy.api#required" => {}}))
    HierarchicalChunkingConfiguration.add_member(:overlap_tokens, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "overlapTokens", traits: {"smithy.api#range" => {"min" => 1}, "smithy.api#required" => {}}))
    HierarchicalChunkingConfiguration.type = Types::HierarchicalChunkingConfiguration
    HierarchicalChunkingLevelConfiguration.add_member(:max_tokens, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxTokens", traits: {"smithy.api#range" => {"min" => 1, "max" => 8192}, "smithy.api#required" => {}}))
    HierarchicalChunkingLevelConfiguration.type = Types::HierarchicalChunkingLevelConfiguration
    HierarchicalChunkingLevelConfigurations.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: HierarchicalChunkingLevelConfiguration, name: "member"))
    Highlight.add_member(:begin_offset_inclusive, ::Smithy::Schema::Shapes::MemberShape.new(target: HighlightOffset, name: "beginOffsetInclusive", traits: {"smithy.api#default" => 0}))
    Highlight.add_member(:end_offset_exclusive, ::Smithy::Schema::Shapes::MemberShape.new(target: HighlightOffset, name: "endOffsetExclusive", traits: {"smithy.api#default" => 0}))
    Highlight.type = Types::Highlight
    Highlights.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Highlight, name: "member"))
    ImportJobData.add_member(:import_job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "importJobId", traits: {"smithy.api#required" => {}}))
    ImportJobData.add_member(:knowledge_base_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "knowledgeBaseId", traits: {"smithy.api#required" => {}}))
    ImportJobData.add_member(:upload_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UploadId, name: "uploadId", traits: {"smithy.api#required" => {}}))
    ImportJobData.add_member(:knowledge_base_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "knowledgeBaseArn", traits: {"smithy.api#required" => {}}))
    ImportJobData.add_member(:import_job_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportJobType, name: "importJobType", traits: {"smithy.api#required" => {}}))
    ImportJobData.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportJobStatus, name: "status", traits: {"smithy.api#required" => {}}))
    ImportJobData.add_member(:url, ::Smithy::Schema::Shapes::MemberShape.new(target: Url, name: "url", traits: {"smithy.api#required" => {}}))
    ImportJobData.add_member(:failed_record_report, ::Smithy::Schema::Shapes::MemberShape.new(target: Url, name: "failedRecordReport"))
    ImportJobData.add_member(:url_expiry, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "urlExpiry", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "epoch-seconds"}))
    ImportJobData.add_member(:created_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdTime", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "epoch-seconds"}))
    ImportJobData.add_member(:last_modified_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "lastModifiedTime", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "epoch-seconds"}))
    ImportJobData.add_member(:metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentMetadata, name: "metadata"))
    ImportJobData.add_member(:external_source_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ExternalSourceConfiguration, name: "externalSourceConfiguration"))
    ImportJobData.type = Types::ImportJobData
    ImportJobList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportJobSummary, name: "member"))
    ImportJobSummary.add_member(:import_job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "importJobId", traits: {"smithy.api#required" => {}}))
    ImportJobSummary.add_member(:knowledge_base_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "knowledgeBaseId", traits: {"smithy.api#required" => {}}))
    ImportJobSummary.add_member(:upload_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UploadId, name: "uploadId", traits: {"smithy.api#required" => {}}))
    ImportJobSummary.add_member(:knowledge_base_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "knowledgeBaseArn", traits: {"smithy.api#required" => {}}))
    ImportJobSummary.add_member(:import_job_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportJobType, name: "importJobType", traits: {"smithy.api#required" => {}}))
    ImportJobSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportJobStatus, name: "status", traits: {"smithy.api#required" => {}}))
    ImportJobSummary.add_member(:created_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdTime", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "epoch-seconds"}))
    ImportJobSummary.add_member(:last_modified_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "lastModifiedTime", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "epoch-seconds"}))
    ImportJobSummary.add_member(:metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentMetadata, name: "metadata"))
    ImportJobSummary.add_member(:external_source_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ExternalSourceConfiguration, name: "externalSourceConfiguration"))
    ImportJobSummary.type = Types::ImportJobSummary
    IntentDetectedDataDetails.add_member(:intent, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "intent", traits: {"smithy.api#required" => {}}))
    IntentDetectedDataDetails.add_member(:intent_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "intentId", traits: {"smithy.api#required" => {}}))
    IntentDetectedDataDetails.add_member(:relevance_level, ::Smithy::Schema::Shapes::MemberShape.new(target: RelevanceLevel, name: "relevanceLevel"))
    IntentDetectedDataDetails.type = Types::IntentDetectedDataDetails
    IntentInputData.add_member(:intent_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "intentId", traits: {"smithy.api#required" => {}}))
    IntentInputData.type = Types::IntentInputData
    JSONDocumentList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: JSONDocument, name: "member"))
    KnowledgeBaseAssociationConfigurationData.add_member(:content_tag_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: TagFilter, name: "contentTagFilter"))
    KnowledgeBaseAssociationConfigurationData.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults"))
    KnowledgeBaseAssociationConfigurationData.add_member(:override_knowledge_base_search_type, ::Smithy::Schema::Shapes::MemberShape.new(target: KnowledgeBaseSearchType, name: "overrideKnowledgeBaseSearchType"))
    KnowledgeBaseAssociationConfigurationData.type = Types::KnowledgeBaseAssociationConfigurationData
    KnowledgeBaseAssociationData.add_member(:knowledge_base_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "knowledgeBaseId"))
    KnowledgeBaseAssociationData.add_member(:knowledge_base_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "knowledgeBaseArn"))
    KnowledgeBaseAssociationData.type = Types::KnowledgeBaseAssociationData
    KnowledgeBaseData.add_member(:knowledge_base_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "knowledgeBaseId", traits: {"smithy.api#required" => {}}))
    KnowledgeBaseData.add_member(:knowledge_base_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "knowledgeBaseArn", traits: {"smithy.api#required" => {}}))
    KnowledgeBaseData.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "name", traits: {"smithy.api#required" => {}}))
    KnowledgeBaseData.add_member(:knowledge_base_type, ::Smithy::Schema::Shapes::MemberShape.new(target: KnowledgeBaseType, name: "knowledgeBaseType", traits: {"smithy.api#required" => {}}))
    KnowledgeBaseData.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: KnowledgeBaseStatus, name: "status", traits: {"smithy.api#required" => {}}))
    KnowledgeBaseData.add_member(:last_content_modification_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "lastContentModificationTime", traits: {"smithy.api#timestampFormat" => "epoch-seconds"}))
    KnowledgeBaseData.add_member(:vector_ingestion_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: VectorIngestionConfiguration, name: "vectorIngestionConfiguration"))
    KnowledgeBaseData.add_member(:source_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceConfiguration, name: "sourceConfiguration"))
    KnowledgeBaseData.add_member(:rendering_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: RenderingConfiguration, name: "renderingConfiguration"))
    KnowledgeBaseData.add_member(:server_side_encryption_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerSideEncryptionConfiguration, name: "serverSideEncryptionConfiguration"))
    KnowledgeBaseData.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    KnowledgeBaseData.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    KnowledgeBaseData.add_member(:ingestion_status, ::Smithy::Schema::Shapes::MemberShape.new(target: SyncStatus, name: "ingestionStatus"))
    KnowledgeBaseData.add_member(:ingestion_failure_reasons, ::Smithy::Schema::Shapes::MemberShape.new(target: FailureReason, name: "ingestionFailureReasons"))
    KnowledgeBaseData.type = Types::KnowledgeBaseData
    KnowledgeBaseList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: KnowledgeBaseSummary, name: "member"))
    KnowledgeBaseSummary.add_member(:knowledge_base_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "knowledgeBaseId", traits: {"smithy.api#required" => {}}))
    KnowledgeBaseSummary.add_member(:knowledge_base_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "knowledgeBaseArn", traits: {"smithy.api#required" => {}}))
    KnowledgeBaseSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "name", traits: {"smithy.api#required" => {}}))
    KnowledgeBaseSummary.add_member(:knowledge_base_type, ::Smithy::Schema::Shapes::MemberShape.new(target: KnowledgeBaseType, name: "knowledgeBaseType", traits: {"smithy.api#required" => {}}))
    KnowledgeBaseSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: KnowledgeBaseStatus, name: "status", traits: {"smithy.api#required" => {}}))
    KnowledgeBaseSummary.add_member(:source_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceConfiguration, name: "sourceConfiguration"))
    KnowledgeBaseSummary.add_member(:vector_ingestion_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: VectorIngestionConfiguration, name: "vectorIngestionConfiguration"))
    KnowledgeBaseSummary.add_member(:rendering_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: RenderingConfiguration, name: "renderingConfiguration"))
    KnowledgeBaseSummary.add_member(:server_side_encryption_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerSideEncryptionConfiguration, name: "serverSideEncryptionConfiguration"))
    KnowledgeBaseSummary.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    KnowledgeBaseSummary.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    KnowledgeBaseSummary.type = Types::KnowledgeBaseSummary
    KnowledgeSource.add_member(:assistant_association_ids, Types::KnowledgeSource::AssistantAssociationIds, ::Smithy::Schema::Shapes::MemberShape.new(target: AssistantAssociationIdList, name: "assistantAssociationIds"))
    KnowledgeSource.add_member(:unknown, Types::KnowledgeSource::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    KnowledgeSource.type = Types::KnowledgeSource
    ListAIAgentVersionsRequest.add_member(:assistant_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArn, name: "assistantId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListAIAgentVersionsRequest.add_member(:ai_agent_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArnOrEitherWithQualifier, name: "aiAgentId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListAIAgentVersionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListAIAgentVersionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListAIAgentVersionsRequest.add_member(:origin, ::Smithy::Schema::Shapes::MemberShape.new(target: Origin, name: "origin", traits: {"smithy.api#httpQuery" => "origin"}))
    ListAIAgentVersionsRequest.type = Types::ListAIAgentVersionsRequest
    ListAIAgentVersionsResponse.add_member(:ai_agent_version_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: AIAgentVersionSummariesList, name: "aiAgentVersionSummaries", traits: {"smithy.api#required" => {}}))
    ListAIAgentVersionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListAIAgentVersionsResponse.type = Types::ListAIAgentVersionsResponse
    ListAIAgentsRequest.add_member(:assistant_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArn, name: "assistantId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListAIAgentsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListAIAgentsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListAIAgentsRequest.add_member(:origin, ::Smithy::Schema::Shapes::MemberShape.new(target: Origin, name: "origin", traits: {"smithy.api#httpQuery" => "origin"}))
    ListAIAgentsRequest.type = Types::ListAIAgentsRequest
    ListAIAgentsResponse.add_member(:ai_agent_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: AIAgentSummaryList, name: "aiAgentSummaries", traits: {"smithy.api#required" => {}}))
    ListAIAgentsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListAIAgentsResponse.type = Types::ListAIAgentsResponse
    ListAIGuardrailVersionsRequest.add_member(:assistant_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArn, name: "assistantId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListAIGuardrailVersionsRequest.add_member(:ai_guardrail_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArnOrEitherWithQualifier, name: "aiGuardrailId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListAIGuardrailVersionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListAIGuardrailVersionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListAIGuardrailVersionsRequest.type = Types::ListAIGuardrailVersionsRequest
    ListAIGuardrailVersionsResponse.add_member(:ai_guardrail_version_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: AIGuardrailVersionSummariesList, name: "aiGuardrailVersionSummaries", traits: {"smithy.api#required" => {}}))
    ListAIGuardrailVersionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListAIGuardrailVersionsResponse.type = Types::ListAIGuardrailVersionsResponse
    ListAIGuardrailsRequest.add_member(:assistant_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArn, name: "assistantId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListAIGuardrailsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListAIGuardrailsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListAIGuardrailsRequest.type = Types::ListAIGuardrailsRequest
    ListAIGuardrailsResponse.add_member(:ai_guardrail_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: AIGuardrailSummariesList, name: "aiGuardrailSummaries", traits: {"smithy.api#required" => {}}))
    ListAIGuardrailsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListAIGuardrailsResponse.type = Types::ListAIGuardrailsResponse
    ListAIPromptVersionsRequest.add_member(:assistant_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArn, name: "assistantId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListAIPromptVersionsRequest.add_member(:ai_prompt_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArnOrEitherWithQualifier, name: "aiPromptId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListAIPromptVersionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListAIPromptVersionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListAIPromptVersionsRequest.add_member(:origin, ::Smithy::Schema::Shapes::MemberShape.new(target: Origin, name: "origin", traits: {"smithy.api#httpQuery" => "origin"}))
    ListAIPromptVersionsRequest.type = Types::ListAIPromptVersionsRequest
    ListAIPromptVersionsResponse.add_member(:ai_prompt_version_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: AIPromptVersionSummariesList, name: "aiPromptVersionSummaries", traits: {"smithy.api#required" => {}}))
    ListAIPromptVersionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListAIPromptVersionsResponse.type = Types::ListAIPromptVersionsResponse
    ListAIPromptsRequest.add_member(:assistant_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArn, name: "assistantId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListAIPromptsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListAIPromptsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListAIPromptsRequest.add_member(:origin, ::Smithy::Schema::Shapes::MemberShape.new(target: Origin, name: "origin", traits: {"smithy.api#httpQuery" => "origin"}))
    ListAIPromptsRequest.type = Types::ListAIPromptsRequest
    ListAIPromptsResponse.add_member(:ai_prompt_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: AIPromptSummaryList, name: "aiPromptSummaries", traits: {"smithy.api#required" => {}}))
    ListAIPromptsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListAIPromptsResponse.type = Types::ListAIPromptsResponse
    ListAssistantAssociationsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListAssistantAssociationsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListAssistantAssociationsInput.add_member(:assistant_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArn, name: "assistantId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListAssistantAssociationsInput.type = Types::ListAssistantAssociationsInput
    ListAssistantAssociationsOutput.add_member(:assistant_association_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: AssistantAssociationSummaryList, name: "assistantAssociationSummaries", traits: {"smithy.api#required" => {}}))
    ListAssistantAssociationsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListAssistantAssociationsOutput.type = Types::ListAssistantAssociationsOutput
    ListAssistantsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListAssistantsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListAssistantsInput.type = Types::ListAssistantsInput
    ListAssistantsOutput.add_member(:assistant_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: AssistantList, name: "assistantSummaries", traits: {"smithy.api#required" => {}}))
    ListAssistantsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListAssistantsOutput.type = Types::ListAssistantsOutput
    ListContentAssociationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListContentAssociationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListContentAssociationsRequest.add_member(:knowledge_base_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArn, name: "knowledgeBaseId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListContentAssociationsRequest.add_member(:content_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArn, name: "contentId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListContentAssociationsRequest.type = Types::ListContentAssociationsRequest
    ListContentAssociationsResponse.add_member(:content_association_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentAssociationSummaryList, name: "contentAssociationSummaries", traits: {"smithy.api#required" => {}}))
    ListContentAssociationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListContentAssociationsResponse.type = Types::ListContentAssociationsResponse
    ListContentsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListContentsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListContentsInput.add_member(:knowledge_base_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArn, name: "knowledgeBaseId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListContentsInput.type = Types::ListContentsInput
    ListContentsOutput.add_member(:content_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentSummaryList, name: "contentSummaries", traits: {"smithy.api#required" => {}}))
    ListContentsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListContentsOutput.type = Types::ListContentsOutput
    ListImportJobsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListImportJobsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListImportJobsRequest.add_member(:knowledge_base_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArn, name: "knowledgeBaseId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListImportJobsRequest.type = Types::ListImportJobsRequest
    ListImportJobsResponse.add_member(:import_job_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportJobList, name: "importJobSummaries", traits: {"smithy.api#required" => {}}))
    ListImportJobsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "nextToken"))
    ListImportJobsResponse.type = Types::ListImportJobsResponse
    ListKnowledgeBasesInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListKnowledgeBasesInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListKnowledgeBasesInput.type = Types::ListKnowledgeBasesInput
    ListKnowledgeBasesOutput.add_member(:knowledge_base_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: KnowledgeBaseList, name: "knowledgeBaseSummaries", traits: {"smithy.api#required" => {}}))
    ListKnowledgeBasesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "nextToken"))
    ListKnowledgeBasesOutput.type = Types::ListKnowledgeBasesOutput
    ListMessageTemplateVersionsRequest.add_member(:knowledge_base_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArn, name: "knowledgeBaseId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListMessageTemplateVersionsRequest.add_member(:message_template_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArnOrEitherWithQualifier, name: "messageTemplateId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListMessageTemplateVersionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListMessageTemplateVersionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListMessageTemplateVersionsRequest.type = Types::ListMessageTemplateVersionsRequest
    ListMessageTemplateVersionsResponse.add_member(:message_template_version_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageTemplateVersionSummaryList, name: "messageTemplateVersionSummaries", traits: {"smithy.api#required" => {}}))
    ListMessageTemplateVersionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListMessageTemplateVersionsResponse.type = Types::ListMessageTemplateVersionsResponse
    ListMessageTemplatesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListMessageTemplatesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListMessageTemplatesRequest.add_member(:knowledge_base_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArn, name: "knowledgeBaseId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListMessageTemplatesRequest.type = Types::ListMessageTemplatesRequest
    ListMessageTemplatesResponse.add_member(:message_template_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageTemplateSummaryList, name: "messageTemplateSummaries", traits: {"smithy.api#required" => {}}))
    ListMessageTemplatesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListMessageTemplatesResponse.type = Types::ListMessageTemplatesResponse
    ListMessagesRequest.add_member(:assistant_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArn, name: "assistantId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListMessagesRequest.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArn, name: "sessionId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListMessagesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListMessagesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListMessagesRequest.add_member(:filter, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageFilterType, name: "filter", traits: {"smithy.api#httpQuery" => "filter"}))
    ListMessagesRequest.type = Types::ListMessagesRequest
    ListMessagesResponse.add_member(:messages, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageList, name: "messages", traits: {"smithy.api#required" => {}}))
    ListMessagesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListMessagesResponse.type = Types::ListMessagesResponse
    ListModelsRequest.add_member(:assistant_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArn, name: "assistantId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListModelsRequest.add_member(:ai_prompt_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AIPromptType, name: "aiPromptType", traits: {"smithy.api#httpQuery" => "aiPromptType"}))
    ListModelsRequest.add_member(:model_lifecycle, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelLifecycle, name: "modelLifecycle", traits: {"smithy.api#httpQuery" => "modelLifecycle"}))
    ListModelsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListModelsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListModelsRequest.type = Types::ListModelsRequest
    ListModelsResponse.add_member(:model_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelSummaryList, name: "modelSummaries", traits: {"smithy.api#required" => {}}))
    ListModelsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListModelsResponse.type = Types::ListModelsResponse
    ListQuickResponsesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListQuickResponsesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListQuickResponsesRequest.add_member(:knowledge_base_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArn, name: "knowledgeBaseId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListQuickResponsesRequest.type = Types::ListQuickResponsesRequest
    ListQuickResponsesResponse.add_member(:quick_response_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: QuickResponseSummaryList, name: "quickResponseSummaries", traits: {"smithy.api#required" => {}}))
    ListQuickResponsesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "nextToken"))
    ListQuickResponsesResponse.type = Types::ListQuickResponsesResponse
    ListSpansRequest.add_member(:assistant_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArn, name: "assistantId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListSpansRequest.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArn, name: "sessionId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListSpansRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListSpansRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListSpansRequest.type = Types::ListSpansRequest
    ListSpansResponse.add_member(:spans, ::Smithy::Schema::Shapes::MemberShape.new(target: SpanList, name: "spans", traits: {"smithy.api#required" => {}}))
    ListSpansResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListSpansResponse.type = Types::ListSpansResponse
    ListTagsForResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceInput.type = Types::ListTagsForResourceInput
    ListTagsForResourceOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    ListTagsForResourceOutput.type = Types::ListTagsForResourceOutput
    ManagedSourceConfiguration.add_member(:web_crawler_configuration, Types::ManagedSourceConfiguration::WebCrawlerConfiguration, ::Smithy::Schema::Shapes::MemberShape.new(target: WebCrawlerConfiguration, name: "webCrawlerConfiguration"))
    ManagedSourceConfiguration.add_member(:unknown, Types::ManagedSourceConfiguration::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    ManagedSourceConfiguration.type = Types::ManagedSourceConfiguration
    ManualSearchAIAgentConfiguration.add_member(:answer_generation_ai_prompt_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidWithQualifier, name: "answerGenerationAIPromptId"))
    ManualSearchAIAgentConfiguration.add_member(:answer_generation_ai_guardrail_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidWithQualifier, name: "answerGenerationAIGuardrailId"))
    ManualSearchAIAgentConfiguration.add_member(:association_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociationConfigurationList, name: "associationConfigurations"))
    ManualSearchAIAgentConfiguration.add_member(:locale, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "locale"))
    ManualSearchAIAgentConfiguration.type = Types::ManualSearchAIAgentConfiguration
    MessageConfiguration.add_member(:generate_filler_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "generateFillerMessage"))
    MessageConfiguration.add_member(:generate_chunked_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "generateChunkedMessage"))
    MessageConfiguration.type = Types::MessageConfiguration
    MessageData.add_member(:text, Types::MessageData::Text, ::Smithy::Schema::Shapes::MemberShape.new(target: TextMessage, name: "text"))
    MessageData.add_member(:tool_use_result, Types::MessageData::ToolUseResult, ::Smithy::Schema::Shapes::MemberShape.new(target: ToolUseResultData, name: "toolUseResult"))
    MessageData.add_member(:data, Types::MessageData::Data, ::Smithy::Schema::Shapes::MemberShape.new(target: JSONDocument, name: "data"))
    MessageData.add_member(:unknown, Types::MessageData::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    MessageData.type = Types::MessageData
    MessageInput.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageData, name: "value", traits: {"smithy.api#required" => {}}))
    MessageInput.type = Types::MessageInput
    MessageList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageOutput, name: "member"))
    MessageMetadata.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "key"))
    MessageMetadata.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "value"))
    MessageOutput.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageData, name: "value", traits: {"smithy.api#required" => {}}))
    MessageOutput.add_member(:message_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "messageId", traits: {"smithy.api#required" => {}}))
    MessageOutput.add_member(:participant, ::Smithy::Schema::Shapes::MemberShape.new(target: Participant, name: "participant", traits: {"smithy.api#required" => {}}))
    MessageOutput.add_member(:timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "timestamp", traits: {"smithy.api#required" => {}}))
    MessageOutput.type = Types::MessageOutput
    MessageTemplateAttachment.add_member(:content_disposition, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentDisposition, name: "contentDisposition", traits: {"smithy.api#required" => {}}))
    MessageTemplateAttachment.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: AttachmentFileName, name: "name", traits: {"smithy.api#required" => {}}))
    MessageTemplateAttachment.add_member(:uploaded_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "uploadedTime", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    MessageTemplateAttachment.add_member(:url, ::Smithy::Schema::Shapes::MemberShape.new(target: Url, name: "url", traits: {"smithy.api#required" => {}}))
    MessageTemplateAttachment.add_member(:url_expiry, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "urlExpiry", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    MessageTemplateAttachment.add_member(:attachment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "attachmentId", traits: {"smithy.api#required" => {}}))
    MessageTemplateAttachment.type = Types::MessageTemplateAttachment
    MessageTemplateAttachmentList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageTemplateAttachment, name: "member"))
    MessageTemplateAttributeKeyList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageTemplateAttributeKey, name: "member"))
    MessageTemplateAttributeTypeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageTemplateAttributeType, name: "member"))
    MessageTemplateAttributes.add_member(:system_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: SystemAttributes, name: "systemAttributes"))
    MessageTemplateAttributes.add_member(:agent_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentAttributes, name: "agentAttributes"))
    MessageTemplateAttributes.add_member(:customer_profile_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomerProfileAttributes, name: "customerProfileAttributes"))
    MessageTemplateAttributes.add_member(:custom_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomAttributes, name: "customAttributes"))
    MessageTemplateAttributes.type = Types::MessageTemplateAttributes
    MessageTemplateBodyContentProvider.add_member(:content, Types::MessageTemplateBodyContentProvider::Content, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyUnlimitedString, name: "content"))
    MessageTemplateBodyContentProvider.add_member(:unknown, Types::MessageTemplateBodyContentProvider::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    MessageTemplateBodyContentProvider.type = Types::MessageTemplateBodyContentProvider
    MessageTemplateContentProvider.add_member(:email, Types::MessageTemplateContentProvider::Email, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailMessageTemplateContent, name: "email"))
    MessageTemplateContentProvider.add_member(:sms, Types::MessageTemplateContentProvider::Sms, ::Smithy::Schema::Shapes::MemberShape.new(target: SMSMessageTemplateContent, name: "sms"))
    MessageTemplateContentProvider.add_member(:whats_app, Types::MessageTemplateContentProvider::WhatsApp, ::Smithy::Schema::Shapes::MemberShape.new(target: WhatsAppMessageTemplateContent, name: "whatsApp"))
    MessageTemplateContentProvider.add_member(:push, Types::MessageTemplateContentProvider::Push, ::Smithy::Schema::Shapes::MemberShape.new(target: PushMessageTemplateContent, name: "push"))
    MessageTemplateContentProvider.add_member(:unknown, Types::MessageTemplateContentProvider::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    MessageTemplateContentProvider.type = Types::MessageTemplateContentProvider
    MessageTemplateData.add_member(:message_template_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnWithQualifier, name: "messageTemplateArn", traits: {"smithy.api#required" => {}}))
    MessageTemplateData.add_member(:message_template_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "messageTemplateId", traits: {"smithy.api#required" => {}}))
    MessageTemplateData.add_member(:knowledge_base_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "knowledgeBaseArn", traits: {"smithy.api#required" => {}}))
    MessageTemplateData.add_member(:knowledge_base_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "knowledgeBaseId", traits: {"smithy.api#required" => {}}))
    MessageTemplateData.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "name", traits: {"smithy.api#required" => {}}))
    MessageTemplateData.add_member(:channel, ::Smithy::Schema::Shapes::MemberShape.new(target: Channel, name: "channel"))
    MessageTemplateData.add_member(:channel_subtype, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelSubtype, name: "channelSubtype", traits: {"smithy.api#required" => {}}))
    MessageTemplateData.add_member(:created_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdTime", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    MessageTemplateData.add_member(:last_modified_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "lastModifiedTime", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    MessageTemplateData.add_member(:last_modified_by, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericArn, name: "lastModifiedBy", traits: {"smithy.api#required" => {}}))
    MessageTemplateData.add_member(:content, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageTemplateContentProvider, name: "content"))
    MessageTemplateData.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    MessageTemplateData.add_member(:language, ::Smithy::Schema::Shapes::MemberShape.new(target: LanguageCode, name: "language"))
    MessageTemplateData.add_member(:source_configuration_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageTemplateSourceConfigurationSummary, name: "sourceConfigurationSummary"))
    MessageTemplateData.add_member(:grouping_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupingConfiguration, name: "groupingConfiguration"))
    MessageTemplateData.add_member(:default_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageTemplateAttributes, name: "defaultAttributes"))
    MessageTemplateData.add_member(:attribute_types, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageTemplateAttributeTypeList, name: "attributeTypes"))
    MessageTemplateData.add_member(:message_template_content_sha256, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageTemplateContentSha256, name: "messageTemplateContentSha256", traits: {"smithy.api#required" => {}}))
    MessageTemplateData.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    MessageTemplateData.type = Types::MessageTemplateData
    MessageTemplateFilterField.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "name", traits: {"smithy.api#required" => {}}))
    MessageTemplateFilterField.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageTemplateFilterValueList, name: "values"))
    MessageTemplateFilterField.add_member(:operator, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageTemplateFilterOperator, name: "operator", traits: {"smithy.api#required" => {}}))
    MessageTemplateFilterField.add_member(:include_no_existence, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "includeNoExistence"))
    MessageTemplateFilterField.type = Types::MessageTemplateFilterField
    MessageTemplateFilterFieldList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageTemplateFilterField, name: "member"))
    MessageTemplateFilterValueList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageTemplateFilterValue, name: "member"))
    MessageTemplateOrderField.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "name", traits: {"smithy.api#required" => {}}))
    MessageTemplateOrderField.add_member(:order, ::Smithy::Schema::Shapes::MemberShape.new(target: Order, name: "order"))
    MessageTemplateOrderField.type = Types::MessageTemplateOrderField
    MessageTemplateQueryField.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "name", traits: {"smithy.api#required" => {}}))
    MessageTemplateQueryField.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageTemplateQueryValueList, name: "values", traits: {"smithy.api#required" => {}}))
    MessageTemplateQueryField.add_member(:operator, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageTemplateQueryOperator, name: "operator", traits: {"smithy.api#required" => {}}))
    MessageTemplateQueryField.add_member(:allow_fuzziness, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "allowFuzziness"))
    MessageTemplateQueryField.add_member(:priority, ::Smithy::Schema::Shapes::MemberShape.new(target: Priority, name: "priority"))
    MessageTemplateQueryField.type = Types::MessageTemplateQueryField
    MessageTemplateQueryFieldList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageTemplateQueryField, name: "member"))
    MessageTemplateQueryValueList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageTemplateQueryValue, name: "member"))
    MessageTemplateSearchExpression.add_member(:queries, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageTemplateQueryFieldList, name: "queries"))
    MessageTemplateSearchExpression.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageTemplateFilterFieldList, name: "filters"))
    MessageTemplateSearchExpression.add_member(:order_on_field, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageTemplateOrderField, name: "orderOnField"))
    MessageTemplateSearchExpression.type = Types::MessageTemplateSearchExpression
    MessageTemplateSearchResultData.add_member(:message_template_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnWithQualifier, name: "messageTemplateArn", traits: {"smithy.api#required" => {}}))
    MessageTemplateSearchResultData.add_member(:message_template_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "messageTemplateId", traits: {"smithy.api#required" => {}}))
    MessageTemplateSearchResultData.add_member(:knowledge_base_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "knowledgeBaseArn", traits: {"smithy.api#required" => {}}))
    MessageTemplateSearchResultData.add_member(:knowledge_base_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "knowledgeBaseId", traits: {"smithy.api#required" => {}}))
    MessageTemplateSearchResultData.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "name", traits: {"smithy.api#required" => {}}))
    MessageTemplateSearchResultData.add_member(:channel, ::Smithy::Schema::Shapes::MemberShape.new(target: Channel, name: "channel"))
    MessageTemplateSearchResultData.add_member(:channel_subtype, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelSubtype, name: "channelSubtype", traits: {"smithy.api#required" => {}}))
    MessageTemplateSearchResultData.add_member(:created_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdTime", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    MessageTemplateSearchResultData.add_member(:last_modified_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "lastModifiedTime", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    MessageTemplateSearchResultData.add_member(:last_modified_by, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericArn, name: "lastModifiedBy", traits: {"smithy.api#required" => {}}))
    MessageTemplateSearchResultData.add_member(:is_active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "isActive"))
    MessageTemplateSearchResultData.add_member(:version_number, ::Smithy::Schema::Shapes::MemberShape.new(target: Version, name: "versionNumber"))
    MessageTemplateSearchResultData.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    MessageTemplateSearchResultData.add_member(:source_configuration_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageTemplateSourceConfigurationSummary, name: "sourceConfigurationSummary"))
    MessageTemplateSearchResultData.add_member(:grouping_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupingConfiguration, name: "groupingConfiguration"))
    MessageTemplateSearchResultData.add_member(:language, ::Smithy::Schema::Shapes::MemberShape.new(target: LanguageCode, name: "language"))
    MessageTemplateSearchResultData.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    MessageTemplateSearchResultData.type = Types::MessageTemplateSearchResultData
    MessageTemplateSearchResultsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageTemplateSearchResultData, name: "member"))
    MessageTemplateSourceConfiguration.add_member(:whats_app, Types::MessageTemplateSourceConfiguration::WhatsApp, ::Smithy::Schema::Shapes::MemberShape.new(target: WhatsAppMessageTemplateSourceConfiguration, name: "whatsApp"))
    MessageTemplateSourceConfiguration.add_member(:unknown, Types::MessageTemplateSourceConfiguration::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    MessageTemplateSourceConfiguration.type = Types::MessageTemplateSourceConfiguration
    MessageTemplateSourceConfigurationSummary.add_member(:whats_app, Types::MessageTemplateSourceConfigurationSummary::WhatsApp, ::Smithy::Schema::Shapes::MemberShape.new(target: WhatsAppMessageTemplateSourceConfigurationSummary, name: "whatsApp"))
    MessageTemplateSourceConfigurationSummary.add_member(:unknown, Types::MessageTemplateSourceConfigurationSummary::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    MessageTemplateSourceConfigurationSummary.type = Types::MessageTemplateSourceConfigurationSummary
    MessageTemplateSummary.add_member(:message_template_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnWithQualifier, name: "messageTemplateArn", traits: {"smithy.api#required" => {}}))
    MessageTemplateSummary.add_member(:message_template_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "messageTemplateId", traits: {"smithy.api#required" => {}}))
    MessageTemplateSummary.add_member(:knowledge_base_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "knowledgeBaseArn", traits: {"smithy.api#required" => {}}))
    MessageTemplateSummary.add_member(:knowledge_base_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "knowledgeBaseId", traits: {"smithy.api#required" => {}}))
    MessageTemplateSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "name", traits: {"smithy.api#required" => {}}))
    MessageTemplateSummary.add_member(:channel, ::Smithy::Schema::Shapes::MemberShape.new(target: Channel, name: "channel"))
    MessageTemplateSummary.add_member(:channel_subtype, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelSubtype, name: "channelSubtype", traits: {"smithy.api#required" => {}}))
    MessageTemplateSummary.add_member(:created_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdTime", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    MessageTemplateSummary.add_member(:last_modified_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "lastModifiedTime", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    MessageTemplateSummary.add_member(:last_modified_by, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericArn, name: "lastModifiedBy", traits: {"smithy.api#required" => {}}))
    MessageTemplateSummary.add_member(:source_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageTemplateSourceConfiguration, name: "sourceConfiguration"))
    MessageTemplateSummary.add_member(:active_version_number, ::Smithy::Schema::Shapes::MemberShape.new(target: Version, name: "activeVersionNumber"))
    MessageTemplateSummary.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    MessageTemplateSummary.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    MessageTemplateSummary.type = Types::MessageTemplateSummary
    MessageTemplateSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageTemplateSummary, name: "member"))
    MessageTemplateVersionSummary.add_member(:message_template_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnWithQualifier, name: "messageTemplateArn", traits: {"smithy.api#required" => {}}))
    MessageTemplateVersionSummary.add_member(:message_template_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "messageTemplateId", traits: {"smithy.api#required" => {}}))
    MessageTemplateVersionSummary.add_member(:knowledge_base_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "knowledgeBaseArn", traits: {"smithy.api#required" => {}}))
    MessageTemplateVersionSummary.add_member(:knowledge_base_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "knowledgeBaseId", traits: {"smithy.api#required" => {}}))
    MessageTemplateVersionSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "name", traits: {"smithy.api#required" => {}}))
    MessageTemplateVersionSummary.add_member(:channel, ::Smithy::Schema::Shapes::MemberShape.new(target: Channel, name: "channel"))
    MessageTemplateVersionSummary.add_member(:channel_subtype, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelSubtype, name: "channelSubtype", traits: {"smithy.api#required" => {}}))
    MessageTemplateVersionSummary.add_member(:is_active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "isActive", traits: {"smithy.api#required" => {}}))
    MessageTemplateVersionSummary.add_member(:version_number, ::Smithy::Schema::Shapes::MemberShape.new(target: Version, name: "versionNumber", traits: {"smithy.api#required" => {}}))
    MessageTemplateVersionSummary.type = Types::MessageTemplateVersionSummary
    MessageTemplateVersionSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageTemplateVersionSummary, name: "member"))
    ModelSummary.add_member(:model_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelId, name: "modelId", traits: {"smithy.api#required" => {}}))
    ModelSummary.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelDisplayName, name: "displayName", traits: {"smithy.api#required" => {}}))
    ModelSummary.add_member(:cross_region_status, ::Smithy::Schema::Shapes::MemberShape.new(target: CrossRegionStatus, name: "crossRegionStatus"))
    ModelSummary.add_member(:supports_prompt_caching, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "supportsPromptCaching"))
    ModelSummary.add_member(:supported_ai_prompt_types, ::Smithy::Schema::Shapes::MemberShape.new(target: AIPromptTypeList, name: "supportedAIPromptTypes"))
    ModelSummary.add_member(:model_lifecycle, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelLifecycle, name: "modelLifecycle"))
    ModelSummary.add_member(:legacy_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "legacyTimestamp"))
    ModelSummary.add_member(:end_of_life_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "endOfLifeTimestamp"))
    ModelSummary.type = Types::ModelSummary
    ModelSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelSummary, name: "member"))
    MultiAgentConfiguration.add_member(:delegate_agent_configuration, Types::MultiAgentConfiguration::DelegateAgentConfiguration, ::Smithy::Schema::Shapes::MemberShape.new(target: DelegateAgentConfiguration, name: "delegateAgentConfiguration"))
    MultiAgentConfiguration.add_member(:handoff_agent_configuration, Types::MultiAgentConfiguration::HandoffAgentConfiguration, ::Smithy::Schema::Shapes::MemberShape.new(target: HandoffAgentConfiguration, name: "handoffAgentConfiguration"))
    MultiAgentConfiguration.add_member(:unknown, Types::MultiAgentConfiguration::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    MultiAgentConfiguration.type = Types::MultiAgentConfiguration
    MultiAgentConfigurationList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: MultiAgentConfiguration, name: "member"))
    MultiAgentExampleList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "member"))
    MultiAgentInstruction.add_member(:instruction, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "instruction"))
    MultiAgentInstruction.add_member(:examples, ::Smithy::Schema::Shapes::MemberShape.new(target: MultiAgentExampleList, name: "examples"))
    MultiAgentInstruction.type = Types::MultiAgentInstruction
    NoteTakingAIAgentConfiguration.add_member(:note_taking_ai_prompt_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidWithQualifier, name: "noteTakingAIPromptId"))
    NoteTakingAIAgentConfiguration.add_member(:note_taking_ai_guardrail_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidWithQualifier, name: "noteTakingAIGuardrailId"))
    NoteTakingAIAgentConfiguration.add_member(:locale, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "locale"))
    NoteTakingAIAgentConfiguration.type = Types::NoteTakingAIAgentConfiguration
    NotesChunkDataDetails.add_member(:completion, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptySensitiveString, name: "completion"))
    NotesChunkDataDetails.add_member(:next_chunk_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextChunkToken"))
    NotesChunkDataDetails.type = Types::NotesChunkDataDetails
    NotesDataDetails.add_member(:completion, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptySensitiveString, name: "completion"))
    NotesDataDetails.type = Types::NotesDataDetails
    NotifyRecommendationsReceivedError.add_member(:recommendation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationId, name: "recommendationId"))
    NotifyRecommendationsReceivedError.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: NotifyRecommendationsReceivedErrorMessage, name: "message"))
    NotifyRecommendationsReceivedError.type = Types::NotifyRecommendationsReceivedError
    NotifyRecommendationsReceivedErrorList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: NotifyRecommendationsReceivedError, name: "member"))
    NotifyRecommendationsReceivedInput.add_member(:assistant_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArn, name: "assistantId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    NotifyRecommendationsReceivedInput.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArn, name: "sessionId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    NotifyRecommendationsReceivedInput.add_member(:recommendation_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationIdList, name: "recommendationIds", traits: {"smithy.api#required" => {}}))
    NotifyRecommendationsReceivedInput.type = Types::NotifyRecommendationsReceivedInput
    NotifyRecommendationsReceivedOutput.add_member(:recommendation_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationIdList, name: "recommendationIds"))
    NotifyRecommendationsReceivedOutput.add_member(:errors, ::Smithy::Schema::Shapes::MemberShape.new(target: NotifyRecommendationsReceivedErrorList, name: "errors"))
    NotifyRecommendationsReceivedOutput.type = Types::NotifyRecommendationsReceivedOutput
    ObjectFieldsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "member"))
    OrCondition.add_member(:and_conditions, Types::OrCondition::AndConditions, ::Smithy::Schema::Shapes::MemberShape.new(target: AndConditions, name: "andConditions"))
    OrCondition.add_member(:tag_condition, Types::OrCondition::TagCondition, ::Smithy::Schema::Shapes::MemberShape.new(target: TagCondition, name: "tagCondition"))
    OrCondition.add_member(:unknown, Types::OrCondition::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    OrCondition.type = Types::OrCondition
    OrConditions.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: OrCondition, name: "member"))
    OrchestrationAIAgentConfiguration.add_member(:orchestration_ai_prompt_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidWithQualifier, name: "orchestrationAIPromptId"))
    OrchestrationAIAgentConfiguration.add_member(:orchestration_ai_guardrail_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidWithQualifier, name: "orchestrationAIGuardrailId"))
    OrchestrationAIAgentConfiguration.add_member(:tool_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: ToolConfigurationList, name: "toolConfigurations"))
    OrchestrationAIAgentConfiguration.add_member(:multi_agent_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: MultiAgentConfigurationList, name: "multiAgentConfigurations"))
    OrchestrationAIAgentConfiguration.add_member(:connect_instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericArn, name: "connectInstanceArn"))
    OrchestrationAIAgentConfiguration.add_member(:locale, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "locale"))
    OrchestrationAIAgentConfiguration.add_member(:input_schemas, ::Smithy::Schema::Shapes::MemberShape.new(target: JSONDocumentList, name: "inputSchemas", traits: {"smithy.api#length" => {"min" => 0, "max" => 1}}))
    OrchestrationAIAgentConfiguration.add_member(:output_schemas, ::Smithy::Schema::Shapes::MemberShape.new(target: JSONDocumentList, name: "outputSchemas", traits: {"smithy.api#length" => {"min" => 0, "max" => 1}}))
    OrchestrationAIAgentConfiguration.type = Types::OrchestrationAIAgentConfiguration
    OrchestratorConfigurationEntry.add_member(:ai_agent_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArnOrEitherWithQualifier, name: "aiAgentId"))
    OrchestratorConfigurationEntry.add_member(:orchestrator_use_case, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "orchestratorUseCase", traits: {"smithy.api#required" => {}}))
    OrchestratorConfigurationEntry.type = Types::OrchestratorConfigurationEntry
    OrchestratorConfigurationList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: OrchestratorConfigurationEntry, name: "member"))
    ParsingConfiguration.add_member(:parsing_strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: ParsingStrategy, name: "parsingStrategy", traits: {"smithy.api#required" => {}}))
    ParsingConfiguration.add_member(:bedrock_foundation_model_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: BedrockFoundationModelConfigurationForParsing, name: "bedrockFoundationModelConfiguration"))
    ParsingConfiguration.type = Types::ParsingConfiguration
    ParsingPrompt.add_member(:parsing_prompt_text, ::Smithy::Schema::Shapes::MemberShape.new(target: ParsingPromptText, name: "parsingPromptText", traits: {"smithy.api#required" => {}}))
    ParsingPrompt.type = Types::ParsingPrompt
    PreconditionFailedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message"))
    PreconditionFailedException.type = Types::PreconditionFailedException
    ProactiveRecommendationDataDetails.add_member(:next_message_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextMessageToken", traits: {"smithy.api#required" => {}}))
    ProactiveRecommendationDataDetails.type = Types::ProactiveRecommendationDataDetails
    PushADMMessageTemplateContent.add_member(:title, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyUnlimitedString, name: "title"))
    PushADMMessageTemplateContent.add_member(:body, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageTemplateBodyContentProvider, name: "body"))
    PushADMMessageTemplateContent.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: PushMessageAction, name: "action"))
    PushADMMessageTemplateContent.add_member(:sound, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyUnlimitedString, name: "sound"))
    PushADMMessageTemplateContent.add_member(:url, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyUnlimitedString, name: "url"))
    PushADMMessageTemplateContent.add_member(:image_url, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyUnlimitedString, name: "imageUrl"))
    PushADMMessageTemplateContent.add_member(:image_icon_url, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyUnlimitedString, name: "imageIconUrl"))
    PushADMMessageTemplateContent.add_member(:small_image_icon_url, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyUnlimitedString, name: "smallImageIconUrl"))
    PushADMMessageTemplateContent.add_member(:raw_content, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageTemplateBodyContentProvider, name: "rawContent"))
    PushADMMessageTemplateContent.type = Types::PushADMMessageTemplateContent
    PushAPNSMessageTemplateContent.add_member(:title, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyUnlimitedString, name: "title"))
    PushAPNSMessageTemplateContent.add_member(:body, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageTemplateBodyContentProvider, name: "body"))
    PushAPNSMessageTemplateContent.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: PushMessageAction, name: "action"))
    PushAPNSMessageTemplateContent.add_member(:sound, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyUnlimitedString, name: "sound"))
    PushAPNSMessageTemplateContent.add_member(:url, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyUnlimitedString, name: "url"))
    PushAPNSMessageTemplateContent.add_member(:media_url, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyUnlimitedString, name: "mediaUrl"))
    PushAPNSMessageTemplateContent.add_member(:raw_content, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageTemplateBodyContentProvider, name: "rawContent"))
    PushAPNSMessageTemplateContent.type = Types::PushAPNSMessageTemplateContent
    PushBaiduMessageTemplateContent.add_member(:title, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyUnlimitedString, name: "title"))
    PushBaiduMessageTemplateContent.add_member(:body, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageTemplateBodyContentProvider, name: "body"))
    PushBaiduMessageTemplateContent.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: PushMessageAction, name: "action"))
    PushBaiduMessageTemplateContent.add_member(:sound, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyUnlimitedString, name: "sound"))
    PushBaiduMessageTemplateContent.add_member(:url, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyUnlimitedString, name: "url"))
    PushBaiduMessageTemplateContent.add_member(:image_url, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyUnlimitedString, name: "imageUrl"))
    PushBaiduMessageTemplateContent.add_member(:image_icon_url, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyUnlimitedString, name: "imageIconUrl"))
    PushBaiduMessageTemplateContent.add_member(:small_image_icon_url, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyUnlimitedString, name: "smallImageIconUrl"))
    PushBaiduMessageTemplateContent.add_member(:raw_content, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageTemplateBodyContentProvider, name: "rawContent"))
    PushBaiduMessageTemplateContent.type = Types::PushBaiduMessageTemplateContent
    PushFCMMessageTemplateContent.add_member(:title, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyUnlimitedString, name: "title"))
    PushFCMMessageTemplateContent.add_member(:body, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageTemplateBodyContentProvider, name: "body"))
    PushFCMMessageTemplateContent.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: PushMessageAction, name: "action"))
    PushFCMMessageTemplateContent.add_member(:sound, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyUnlimitedString, name: "sound"))
    PushFCMMessageTemplateContent.add_member(:url, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyUnlimitedString, name: "url"))
    PushFCMMessageTemplateContent.add_member(:image_url, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyUnlimitedString, name: "imageUrl"))
    PushFCMMessageTemplateContent.add_member(:image_icon_url, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyUnlimitedString, name: "imageIconUrl"))
    PushFCMMessageTemplateContent.add_member(:small_image_icon_url, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyUnlimitedString, name: "smallImageIconUrl"))
    PushFCMMessageTemplateContent.add_member(:raw_content, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageTemplateBodyContentProvider, name: "rawContent"))
    PushFCMMessageTemplateContent.type = Types::PushFCMMessageTemplateContent
    PushMessageTemplateContent.add_member(:adm, ::Smithy::Schema::Shapes::MemberShape.new(target: PushADMMessageTemplateContent, name: "adm"))
    PushMessageTemplateContent.add_member(:apns, ::Smithy::Schema::Shapes::MemberShape.new(target: PushAPNSMessageTemplateContent, name: "apns"))
    PushMessageTemplateContent.add_member(:fcm, ::Smithy::Schema::Shapes::MemberShape.new(target: PushFCMMessageTemplateContent, name: "fcm"))
    PushMessageTemplateContent.add_member(:baidu, ::Smithy::Schema::Shapes::MemberShape.new(target: PushBaiduMessageTemplateContent, name: "baidu"))
    PushMessageTemplateContent.type = Types::PushMessageTemplateContent
    PutFeedbackRequest.add_member(:assistant_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArn, name: "assistantId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutFeedbackRequest.add_member(:target_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "targetId", traits: {"smithy.api#required" => {}}))
    PutFeedbackRequest.add_member(:target_type, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetType, name: "targetType", traits: {"smithy.api#required" => {}}))
    PutFeedbackRequest.add_member(:content_feedback, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentFeedbackData, name: "contentFeedback", traits: {"smithy.api#required" => {}}))
    PutFeedbackRequest.type = Types::PutFeedbackRequest
    PutFeedbackResponse.add_member(:assistant_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "assistantId", traits: {"smithy.api#required" => {}}))
    PutFeedbackResponse.add_member(:assistant_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArn, name: "assistantArn", traits: {"smithy.api#required" => {}}))
    PutFeedbackResponse.add_member(:target_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "targetId", traits: {"smithy.api#required" => {}}))
    PutFeedbackResponse.add_member(:target_type, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetType, name: "targetType", traits: {"smithy.api#required" => {}}))
    PutFeedbackResponse.add_member(:content_feedback, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentFeedbackData, name: "contentFeedback", traits: {"smithy.api#required" => {}}))
    PutFeedbackResponse.type = Types::PutFeedbackResponse
    QueryAssistantInput.add_member(:assistant_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArn, name: "assistantId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    QueryAssistantInput.add_member(:query_text, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryText, name: "queryText"))
    QueryAssistantInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    QueryAssistantInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults"))
    QueryAssistantInput.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArn, name: "sessionId"))
    QueryAssistantInput.add_member(:query_condition, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryConditionExpression, name: "queryCondition"))
    QueryAssistantInput.add_member(:query_input_data, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryInputData, name: "queryInputData"))
    QueryAssistantInput.add_member(:override_knowledge_base_search_type, ::Smithy::Schema::Shapes::MemberShape.new(target: KnowledgeBaseSearchType, name: "overrideKnowledgeBaseSearchType"))
    QueryAssistantInput.type = Types::QueryAssistantInput
    QueryAssistantOutput.add_member(:results, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryResultsList, name: "results", traits: {"smithy.api#required" => {}}))
    QueryAssistantOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    QueryAssistantOutput.type = Types::QueryAssistantOutput
    QueryCondition.add_member(:single, Types::QueryCondition::Single, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryConditionItem, name: "single"))
    QueryCondition.add_member(:unknown, Types::QueryCondition::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    QueryCondition.type = Types::QueryCondition
    QueryConditionExpression.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryCondition, name: "member"))
    QueryConditionItem.add_member(:field, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryConditionFieldName, name: "field", traits: {"smithy.api#required" => {}}))
    QueryConditionItem.add_member(:comparator, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryConditionComparisonOperator, name: "comparator", traits: {"smithy.api#required" => {}}))
    QueryConditionItem.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "value", traits: {"smithy.api#required" => {}}))
    QueryConditionItem.type = Types::QueryConditionItem
    QueryInputData.add_member(:query_text_input_data, Types::QueryInputData::QueryTextInputData, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryTextInputData, name: "queryTextInputData"))
    QueryInputData.add_member(:intent_input_data, Types::QueryInputData::IntentInputData, ::Smithy::Schema::Shapes::MemberShape.new(target: IntentInputData, name: "intentInputData"))
    QueryInputData.add_member(:case_summarization_input_data, Types::QueryInputData::CaseSummarizationInputData, ::Smithy::Schema::Shapes::MemberShape.new(target: CaseSummarizationInputData, name: "caseSummarizationInputData"))
    QueryInputData.add_member(:unknown, Types::QueryInputData::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    QueryInputData.type = Types::QueryInputData
    QueryRecommendationTriggerData.add_member(:text, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryText, name: "text"))
    QueryRecommendationTriggerData.type = Types::QueryRecommendationTriggerData
    QueryResultsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ResultData, name: "member"))
    QueryTextInputData.add_member(:text, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryText, name: "text", traits: {"smithy.api#required" => {}}))
    QueryTextInputData.type = Types::QueryTextInputData
    QuickResponseContentProvider.add_member(:content, Types::QuickResponseContentProvider::Content, ::Smithy::Schema::Shapes::MemberShape.new(target: QuickResponseContent, name: "content"))
    QuickResponseContentProvider.add_member(:unknown, Types::QuickResponseContentProvider::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    QuickResponseContentProvider.type = Types::QuickResponseContentProvider
    QuickResponseContents.add_member(:plain_text, ::Smithy::Schema::Shapes::MemberShape.new(target: QuickResponseContentProvider, name: "plainText"))
    QuickResponseContents.add_member(:markdown, ::Smithy::Schema::Shapes::MemberShape.new(target: QuickResponseContentProvider, name: "markdown"))
    QuickResponseContents.type = Types::QuickResponseContents
    QuickResponseData.add_member(:quick_response_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "quickResponseArn", traits: {"smithy.api#required" => {}}))
    QuickResponseData.add_member(:quick_response_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "quickResponseId", traits: {"smithy.api#required" => {}}))
    QuickResponseData.add_member(:knowledge_base_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "knowledgeBaseArn", traits: {"smithy.api#required" => {}}))
    QuickResponseData.add_member(:knowledge_base_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "knowledgeBaseId", traits: {"smithy.api#required" => {}}))
    QuickResponseData.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: QuickResponseName, name: "name", traits: {"smithy.api#required" => {}}))
    QuickResponseData.add_member(:content_type, ::Smithy::Schema::Shapes::MemberShape.new(target: QuickResponseType, name: "contentType", traits: {"smithy.api#required" => {}}))
    QuickResponseData.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: QuickResponseStatus, name: "status", traits: {"smithy.api#required" => {}}))
    QuickResponseData.add_member(:created_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdTime", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "epoch-seconds"}))
    QuickResponseData.add_member(:last_modified_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "lastModifiedTime", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "epoch-seconds"}))
    QuickResponseData.add_member(:contents, ::Smithy::Schema::Shapes::MemberShape.new(target: QuickResponseContents, name: "contents"))
    QuickResponseData.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: QuickResponseDescription, name: "description"))
    QuickResponseData.add_member(:grouping_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupingConfiguration, name: "groupingConfiguration"))
    QuickResponseData.add_member(:shortcut_key, ::Smithy::Schema::Shapes::MemberShape.new(target: ShortCutKey, name: "shortcutKey"))
    QuickResponseData.add_member(:last_modified_by, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericArn, name: "lastModifiedBy"))
    QuickResponseData.add_member(:is_active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "isActive"))
    QuickResponseData.add_member(:channels, ::Smithy::Schema::Shapes::MemberShape.new(target: Channels, name: "channels"))
    QuickResponseData.add_member(:language, ::Smithy::Schema::Shapes::MemberShape.new(target: LanguageCode, name: "language"))
    QuickResponseData.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    QuickResponseData.type = Types::QuickResponseData
    QuickResponseDataProvider.add_member(:content, Types::QuickResponseDataProvider::Content, ::Smithy::Schema::Shapes::MemberShape.new(target: QuickResponseContent, name: "content"))
    QuickResponseDataProvider.add_member(:unknown, Types::QuickResponseDataProvider::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    QuickResponseDataProvider.type = Types::QuickResponseDataProvider
    QuickResponseFilterField.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "name", traits: {"smithy.api#required" => {}}))
    QuickResponseFilterField.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: QuickResponseFilterValueList, name: "values"))
    QuickResponseFilterField.add_member(:operator, ::Smithy::Schema::Shapes::MemberShape.new(target: QuickResponseFilterOperator, name: "operator", traits: {"smithy.api#required" => {}}))
    QuickResponseFilterField.add_member(:include_no_existence, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "includeNoExistence"))
    QuickResponseFilterField.type = Types::QuickResponseFilterField
    QuickResponseFilterFieldList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: QuickResponseFilterField, name: "member"))
    QuickResponseFilterValueList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: QuickResponseFilterValue, name: "member"))
    QuickResponseOrderField.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "name", traits: {"smithy.api#required" => {}}))
    QuickResponseOrderField.add_member(:order, ::Smithy::Schema::Shapes::MemberShape.new(target: Order, name: "order"))
    QuickResponseOrderField.type = Types::QuickResponseOrderField
    QuickResponseQueryField.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "name", traits: {"smithy.api#required" => {}}))
    QuickResponseQueryField.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: QuickResponseQueryValueList, name: "values", traits: {"smithy.api#required" => {}}))
    QuickResponseQueryField.add_member(:operator, ::Smithy::Schema::Shapes::MemberShape.new(target: QuickResponseQueryOperator, name: "operator", traits: {"smithy.api#required" => {}}))
    QuickResponseQueryField.add_member(:allow_fuzziness, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "allowFuzziness"))
    QuickResponseQueryField.add_member(:priority, ::Smithy::Schema::Shapes::MemberShape.new(target: Priority, name: "priority"))
    QuickResponseQueryField.type = Types::QuickResponseQueryField
    QuickResponseQueryFieldList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: QuickResponseQueryField, name: "member"))
    QuickResponseQueryValueList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: QuickResponseQueryValue, name: "member"))
    QuickResponseSearchExpression.add_member(:queries, ::Smithy::Schema::Shapes::MemberShape.new(target: QuickResponseQueryFieldList, name: "queries"))
    QuickResponseSearchExpression.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: QuickResponseFilterFieldList, name: "filters"))
    QuickResponseSearchExpression.add_member(:order_on_field, ::Smithy::Schema::Shapes::MemberShape.new(target: QuickResponseOrderField, name: "orderOnField"))
    QuickResponseSearchExpression.type = Types::QuickResponseSearchExpression
    QuickResponseSearchResultData.add_member(:quick_response_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "quickResponseArn", traits: {"smithy.api#required" => {}}))
    QuickResponseSearchResultData.add_member(:quick_response_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "quickResponseId", traits: {"smithy.api#required" => {}}))
    QuickResponseSearchResultData.add_member(:knowledge_base_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "knowledgeBaseArn", traits: {"smithy.api#required" => {}}))
    QuickResponseSearchResultData.add_member(:knowledge_base_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "knowledgeBaseId", traits: {"smithy.api#required" => {}}))
    QuickResponseSearchResultData.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: QuickResponseName, name: "name", traits: {"smithy.api#required" => {}}))
    QuickResponseSearchResultData.add_member(:content_type, ::Smithy::Schema::Shapes::MemberShape.new(target: QuickResponseType, name: "contentType", traits: {"smithy.api#required" => {}}))
    QuickResponseSearchResultData.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: QuickResponseStatus, name: "status", traits: {"smithy.api#required" => {}}))
    QuickResponseSearchResultData.add_member(:contents, ::Smithy::Schema::Shapes::MemberShape.new(target: QuickResponseContents, name: "contents", traits: {"smithy.api#required" => {}}))
    QuickResponseSearchResultData.add_member(:created_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdTime", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "epoch-seconds"}))
    QuickResponseSearchResultData.add_member(:last_modified_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "lastModifiedTime", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "epoch-seconds"}))
    QuickResponseSearchResultData.add_member(:is_active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "isActive", traits: {"smithy.api#required" => {}}))
    QuickResponseSearchResultData.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: QuickResponseDescription, name: "description"))
    QuickResponseSearchResultData.add_member(:grouping_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupingConfiguration, name: "groupingConfiguration"))
    QuickResponseSearchResultData.add_member(:shortcut_key, ::Smithy::Schema::Shapes::MemberShape.new(target: ShortCutKey, name: "shortcutKey"))
    QuickResponseSearchResultData.add_member(:last_modified_by, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericArn, name: "lastModifiedBy"))
    QuickResponseSearchResultData.add_member(:channels, ::Smithy::Schema::Shapes::MemberShape.new(target: Channels, name: "channels"))
    QuickResponseSearchResultData.add_member(:language, ::Smithy::Schema::Shapes::MemberShape.new(target: LanguageCode, name: "language"))
    QuickResponseSearchResultData.add_member(:attributes_not_interpolated, ::Smithy::Schema::Shapes::MemberShape.new(target: ContactAttributeKeys, name: "attributesNotInterpolated"))
    QuickResponseSearchResultData.add_member(:attributes_interpolated, ::Smithy::Schema::Shapes::MemberShape.new(target: ContactAttributeKeys, name: "attributesInterpolated"))
    QuickResponseSearchResultData.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    QuickResponseSearchResultData.type = Types::QuickResponseSearchResultData
    QuickResponseSearchResultsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: QuickResponseSearchResultData, name: "member"))
    QuickResponseSummary.add_member(:quick_response_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "quickResponseArn", traits: {"smithy.api#required" => {}}))
    QuickResponseSummary.add_member(:quick_response_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "quickResponseId", traits: {"smithy.api#required" => {}}))
    QuickResponseSummary.add_member(:knowledge_base_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "knowledgeBaseArn", traits: {"smithy.api#required" => {}}))
    QuickResponseSummary.add_member(:knowledge_base_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "knowledgeBaseId", traits: {"smithy.api#required" => {}}))
    QuickResponseSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: QuickResponseName, name: "name", traits: {"smithy.api#required" => {}}))
    QuickResponseSummary.add_member(:content_type, ::Smithy::Schema::Shapes::MemberShape.new(target: QuickResponseType, name: "contentType", traits: {"smithy.api#required" => {}}))
    QuickResponseSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: QuickResponseStatus, name: "status", traits: {"smithy.api#required" => {}}))
    QuickResponseSummary.add_member(:created_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdTime", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "epoch-seconds"}))
    QuickResponseSummary.add_member(:last_modified_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "lastModifiedTime", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "epoch-seconds"}))
    QuickResponseSummary.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: QuickResponseDescription, name: "description"))
    QuickResponseSummary.add_member(:last_modified_by, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericArn, name: "lastModifiedBy"))
    QuickResponseSummary.add_member(:is_active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "isActive"))
    QuickResponseSummary.add_member(:channels, ::Smithy::Schema::Shapes::MemberShape.new(target: Channels, name: "channels"))
    QuickResponseSummary.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    QuickResponseSummary.type = Types::QuickResponseSummary
    QuickResponseSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: QuickResponseSummary, name: "member"))
    RankingData.add_member(:relevance_score, ::Smithy::Schema::Shapes::MemberShape.new(target: RelevanceScore, name: "relevanceScore", traits: {"smithy.api#default" => 0}))
    RankingData.add_member(:relevance_level, ::Smithy::Schema::Shapes::MemberShape.new(target: RelevanceLevel, name: "relevanceLevel"))
    RankingData.type = Types::RankingData
    RecommendationData.add_member(:recommendation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationId, name: "recommendationId", traits: {"smithy.api#required" => {}}))
    RecommendationData.add_member(:document, ::Smithy::Schema::Shapes::MemberShape.new(target: Document, name: "document"))
    RecommendationData.add_member(:relevance_score, ::Smithy::Schema::Shapes::MemberShape.new(target: RelevanceScore, name: "relevanceScore", traits: {"smithy.api#default" => 0}))
    RecommendationData.add_member(:relevance_level, ::Smithy::Schema::Shapes::MemberShape.new(target: RelevanceLevel, name: "relevanceLevel"))
    RecommendationData.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationType, name: "type"))
    RecommendationData.add_member(:data, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSummary, name: "data"))
    RecommendationData.type = Types::RecommendationData
    RecommendationIdList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationId, name: "member"))
    RecommendationList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationData, name: "member"))
    RecommendationTrigger.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "id", traits: {"smithy.api#required" => {}}))
    RecommendationTrigger.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationTriggerType, name: "type", traits: {"smithy.api#required" => {}}))
    RecommendationTrigger.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationSourceType, name: "source", traits: {"smithy.api#required" => {}}))
    RecommendationTrigger.add_member(:data, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationTriggerData, name: "data", traits: {"smithy.api#required" => {}}))
    RecommendationTrigger.add_member(:recommendation_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationIdList, name: "recommendationIds", traits: {"smithy.api#required" => {}}))
    RecommendationTrigger.type = Types::RecommendationTrigger
    RecommendationTriggerData.add_member(:query, Types::RecommendationTriggerData::Query, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryRecommendationTriggerData, name: "query"))
    RecommendationTriggerData.add_member(:unknown, Types::RecommendationTriggerData::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    RecommendationTriggerData.type = Types::RecommendationTriggerData
    RecommendationTriggerList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationTrigger, name: "member"))
    RemoveAssistantAIAgentRequest.add_member(:assistant_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArn, name: "assistantId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RemoveAssistantAIAgentRequest.add_member(:ai_agent_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AIAgentType, name: "aiAgentType", traits: {"smithy.api#httpQuery" => "aiAgentType", "smithy.api#required" => {}}))
    RemoveAssistantAIAgentRequest.add_member(:orchestrator_use_case, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "orchestratorUseCase", traits: {"smithy.api#httpQuery" => "orchestratorUseCase"}))
    RemoveAssistantAIAgentRequest.type = Types::RemoveAssistantAIAgentRequest
    RemoveAssistantAIAgentResponse.type = Types::RemoveAssistantAIAgentResponse
    RemoveKnowledgeBaseTemplateUriInput.add_member(:knowledge_base_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArn, name: "knowledgeBaseId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RemoveKnowledgeBaseTemplateUriInput.type = Types::RemoveKnowledgeBaseTemplateUriInput
    RemoveKnowledgeBaseTemplateUriOutput.type = Types::RemoveKnowledgeBaseTemplateUriOutput
    RenderMessageTemplateRequest.add_member(:knowledge_base_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArn, name: "knowledgeBaseId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RenderMessageTemplateRequest.add_member(:message_template_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArnOrEitherWithQualifier, name: "messageTemplateId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RenderMessageTemplateRequest.add_member(:attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageTemplateAttributes, name: "attributes", traits: {"smithy.api#required" => {}}))
    RenderMessageTemplateRequest.type = Types::RenderMessageTemplateRequest
    RenderMessageTemplateResponse.add_member(:content, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageTemplateContentProvider, name: "content"))
    RenderMessageTemplateResponse.add_member(:source_configuration_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageTemplateSourceConfigurationSummary, name: "sourceConfigurationSummary"))
    RenderMessageTemplateResponse.add_member(:attributes_not_interpolated, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageTemplateAttributeKeyList, name: "attributesNotInterpolated"))
    RenderMessageTemplateResponse.add_member(:attachments, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageTemplateAttachmentList, name: "attachments"))
    RenderMessageTemplateResponse.type = Types::RenderMessageTemplateResponse
    RenderingConfiguration.add_member(:template_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: Uri, name: "templateUri"))
    RenderingConfiguration.type = Types::RenderingConfiguration
    RequestTimeoutException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message"))
    RequestTimeoutException.type = Types::RequestTimeoutException
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message"))
    ResourceNotFoundException.add_member(:resource_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourceName"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResultData.add_member(:result_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "resultId", traits: {"smithy.api#required" => {}}))
    ResultData.add_member(:document, ::Smithy::Schema::Shapes::MemberShape.new(target: Document, name: "document"))
    ResultData.add_member(:relevance_score, ::Smithy::Schema::Shapes::MemberShape.new(target: RelevanceScore, name: "relevanceScore", traits: {"smithy.api#default" => 0}))
    ResultData.add_member(:data, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSummary, name: "data"))
    ResultData.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryResultType, name: "type"))
    ResultData.type = Types::ResultData
    RetrievalConfiguration.add_member(:knowledge_source, ::Smithy::Schema::Shapes::MemberShape.new(target: KnowledgeSource, name: "knowledgeSource", traits: {"smithy.api#required" => {}}))
    RetrievalConfiguration.add_member(:filter, ::Smithy::Schema::Shapes::MemberShape.new(target: RetrievalFilterConfiguration, name: "filter"))
    RetrievalConfiguration.add_member(:number_of_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "numberOfResults"))
    RetrievalConfiguration.add_member(:override_knowledge_base_search_type, ::Smithy::Schema::Shapes::MemberShape.new(target: KnowledgeBaseSearchType, name: "overrideKnowledgeBaseSearchType"))
    RetrievalConfiguration.type = Types::RetrievalConfiguration
    RetrievalFilterConfiguration.add_member(:and_all, Types::RetrievalFilterConfiguration::AndAll, ::Smithy::Schema::Shapes::MemberShape.new(target: RetrievalFilterList, name: "andAll"))
    RetrievalFilterConfiguration.add_member(:equals, Types::RetrievalFilterConfiguration::Equals, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterAttribute, name: "equals"))
    RetrievalFilterConfiguration.add_member(:greater_than, Types::RetrievalFilterConfiguration::GreaterThan, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterAttribute, name: "greaterThan"))
    RetrievalFilterConfiguration.add_member(:greater_than_or_equals, Types::RetrievalFilterConfiguration::GreaterThanOrEquals, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterAttribute, name: "greaterThanOrEquals"))
    RetrievalFilterConfiguration.add_member(:in, Types::RetrievalFilterConfiguration::In, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterAttribute, name: "in"))
    RetrievalFilterConfiguration.add_member(:less_than, Types::RetrievalFilterConfiguration::LessThan, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterAttribute, name: "lessThan"))
    RetrievalFilterConfiguration.add_member(:less_than_or_equals, Types::RetrievalFilterConfiguration::LessThanOrEquals, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterAttribute, name: "lessThanOrEquals"))
    RetrievalFilterConfiguration.add_member(:list_contains, Types::RetrievalFilterConfiguration::ListContains, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterAttribute, name: "listContains"))
    RetrievalFilterConfiguration.add_member(:not_equals, Types::RetrievalFilterConfiguration::NotEquals, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterAttribute, name: "notEquals"))
    RetrievalFilterConfiguration.add_member(:not_in, Types::RetrievalFilterConfiguration::NotIn, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterAttribute, name: "notIn"))
    RetrievalFilterConfiguration.add_member(:or_all, Types::RetrievalFilterConfiguration::OrAll, ::Smithy::Schema::Shapes::MemberShape.new(target: RetrievalFilterList, name: "orAll"))
    RetrievalFilterConfiguration.add_member(:starts_with, Types::RetrievalFilterConfiguration::StartsWith, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterAttribute, name: "startsWith"))
    RetrievalFilterConfiguration.add_member(:string_contains, Types::RetrievalFilterConfiguration::StringContains, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterAttribute, name: "stringContains"))
    RetrievalFilterConfiguration.add_member(:unknown, Types::RetrievalFilterConfiguration::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    RetrievalFilterConfiguration.type = Types::RetrievalFilterConfiguration
    RetrievalFilterList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RetrievalFilterConfiguration, name: "member"))
    RetrieveError.add_member(:association_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "associationId", traits: {"smithy.api#required" => {}}))
    RetrieveError.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: RetrieveErrorCode, name: "code", traits: {"smithy.api#required" => {}}))
    RetrieveError.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#length" => {"max" => 1024}, "smithy.api#required" => {}}))
    RetrieveError.type = Types::RetrieveError
    RetrieveErrorList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RetrieveError, name: "member"))
    RetrieveRequest.add_member(:assistant_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArn, name: "assistantId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RetrieveRequest.add_member(:retrieval_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: RetrievalConfiguration, name: "retrievalConfiguration", traits: {"smithy.api#required" => {}}))
    RetrieveRequest.add_member(:retrieval_query, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptySensitiveString, name: "retrievalQuery", traits: {"smithy.api#required" => {}}))
    RetrieveRequest.type = Types::RetrieveRequest
    RetrieveResponse.add_member(:results, ::Smithy::Schema::Shapes::MemberShape.new(target: RetrieveResultList, name: "results", traits: {"smithy.api#required" => {}}))
    RetrieveResponse.add_member(:errors, ::Smithy::Schema::Shapes::MemberShape.new(target: RetrieveErrorList, name: "errors"))
    RetrieveResponse.type = Types::RetrieveResponse
    RetrieveResult.add_member(:association_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "associationId", traits: {"smithy.api#required" => {}}))
    RetrieveResult.add_member(:source_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "sourceId", traits: {"smithy.api#required" => {}}))
    RetrieveResult.add_member(:reference_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ReferenceType, name: "referenceType", traits: {"smithy.api#required" => {}}))
    RetrieveResult.add_member(:content_text, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "contentText", traits: {"smithy.api#required" => {}}))
    RetrieveResult.type = Types::RetrieveResult
    RetrieveResultList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RetrieveResult, name: "member"))
    RuntimeSessionData.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptySensitiveString, name: "key", traits: {"smithy.api#required" => {}}))
    RuntimeSessionData.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: RuntimeSessionDataValue, name: "value", traits: {"smithy.api#required" => {}}))
    RuntimeSessionData.type = Types::RuntimeSessionData
    RuntimeSessionDataList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RuntimeSessionData, name: "member"))
    RuntimeSessionDataValue.add_member(:string_value, Types::RuntimeSessionDataValue::StringValue, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptySensitiveString, name: "stringValue"))
    RuntimeSessionDataValue.add_member(:unknown, Types::RuntimeSessionDataValue::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    RuntimeSessionDataValue.type = Types::RuntimeSessionDataValue
    SMSMessageTemplateContent.add_member(:body, ::Smithy::Schema::Shapes::MemberShape.new(target: SMSMessageTemplateContentBody, name: "body"))
    SMSMessageTemplateContent.type = Types::SMSMessageTemplateContent
    SMSMessageTemplateContentBody.add_member(:plain_text, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageTemplateBodyContentProvider, name: "plainText"))
    SMSMessageTemplateContentBody.type = Types::SMSMessageTemplateContentBody
    SearchContentInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    SearchContentInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    SearchContentInput.add_member(:knowledge_base_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArn, name: "knowledgeBaseId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    SearchContentInput.add_member(:search_expression, ::Smithy::Schema::Shapes::MemberShape.new(target: SearchExpression, name: "searchExpression", traits: {"smithy.api#required" => {}}))
    SearchContentInput.type = Types::SearchContentInput
    SearchContentOutput.add_member(:content_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentSummaryList, name: "contentSummaries", traits: {"smithy.api#required" => {}}))
    SearchContentOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    SearchContentOutput.type = Types::SearchContentOutput
    SearchExpression.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterList, name: "filters", traits: {"smithy.api#required" => {}}))
    SearchExpression.type = Types::SearchExpression
    SearchMessageTemplatesRequest.add_member(:knowledge_base_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArn, name: "knowledgeBaseId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    SearchMessageTemplatesRequest.add_member(:search_expression, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageTemplateSearchExpression, name: "searchExpression", traits: {"smithy.api#required" => {}}))
    SearchMessageTemplatesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    SearchMessageTemplatesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    SearchMessageTemplatesRequest.type = Types::SearchMessageTemplatesRequest
    SearchMessageTemplatesResponse.add_member(:results, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageTemplateSearchResultsList, name: "results", traits: {"smithy.api#required" => {}}))
    SearchMessageTemplatesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    SearchMessageTemplatesResponse.type = Types::SearchMessageTemplatesResponse
    SearchQuickResponsesRequest.add_member(:knowledge_base_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArn, name: "knowledgeBaseId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    SearchQuickResponsesRequest.add_member(:search_expression, ::Smithy::Schema::Shapes::MemberShape.new(target: QuickResponseSearchExpression, name: "searchExpression", traits: {"smithy.api#required" => {}}))
    SearchQuickResponsesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    SearchQuickResponsesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    SearchQuickResponsesRequest.add_member(:attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: ContactAttributes, name: "attributes"))
    SearchQuickResponsesRequest.type = Types::SearchQuickResponsesRequest
    SearchQuickResponsesResponse.add_member(:results, ::Smithy::Schema::Shapes::MemberShape.new(target: QuickResponseSearchResultsList, name: "results", traits: {"smithy.api#required" => {}}))
    SearchQuickResponsesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "nextToken"))
    SearchQuickResponsesResponse.type = Types::SearchQuickResponsesResponse
    SearchSessionsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    SearchSessionsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    SearchSessionsInput.add_member(:assistant_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArn, name: "assistantId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    SearchSessionsInput.add_member(:search_expression, ::Smithy::Schema::Shapes::MemberShape.new(target: SearchExpression, name: "searchExpression", traits: {"smithy.api#required" => {}}))
    SearchSessionsInput.type = Types::SearchSessionsInput
    SearchSessionsOutput.add_member(:session_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionSummaries, name: "sessionSummaries", traits: {"smithy.api#required" => {}}))
    SearchSessionsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    SearchSessionsOutput.type = Types::SearchSessionsOutput
    SeedUrl.add_member(:url, ::Smithy::Schema::Shapes::MemberShape.new(target: WebUrl, name: "url"))
    SeedUrl.type = Types::SeedUrl
    SeedUrls.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SeedUrl, name: "member"))
    SelfServiceAIAgentConfiguration.add_member(:self_service_pre_processing_ai_prompt_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidWithQualifier, name: "selfServicePreProcessingAIPromptId"))
    SelfServiceAIAgentConfiguration.add_member(:self_service_answer_generation_ai_prompt_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidWithQualifier, name: "selfServiceAnswerGenerationAIPromptId"))
    SelfServiceAIAgentConfiguration.add_member(:self_service_ai_guardrail_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidWithQualifier, name: "selfServiceAIGuardrailId"))
    SelfServiceAIAgentConfiguration.add_member(:association_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociationConfigurationList, name: "associationConfigurations"))
    SelfServiceAIAgentConfiguration.type = Types::SelfServiceAIAgentConfiguration
    SelfServiceConversationHistory.add_member(:turn_number, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "turnNumber", traits: {"smithy.api#addedDefault" => {}, "smithy.api#default" => 0}))
    SelfServiceConversationHistory.add_member(:input_transcript, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "inputTranscript"))
    SelfServiceConversationHistory.add_member(:bot_response, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "botResponse"))
    SelfServiceConversationHistory.add_member(:timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "timestamp"))
    SelfServiceConversationHistory.type = Types::SelfServiceConversationHistory
    SelfServiceConversationHistoryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SelfServiceConversationHistory, name: "member"))
    SemanticChunkingConfiguration.add_member(:max_tokens, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxTokens", traits: {"smithy.api#range" => {"min" => 1}, "smithy.api#required" => {}}))
    SemanticChunkingConfiguration.add_member(:buffer_size, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "bufferSize", traits: {"smithy.api#range" => {"min" => 0, "max" => 1}, "smithy.api#required" => {}}))
    SemanticChunkingConfiguration.add_member(:breakpoint_percentile_threshold, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "breakpointPercentileThreshold", traits: {"smithy.api#range" => {"min" => 50, "max" => 99}, "smithy.api#required" => {}}))
    SemanticChunkingConfiguration.type = Types::SemanticChunkingConfiguration
    SendMessageRequest.add_member(:assistant_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArn, name: "assistantId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    SendMessageRequest.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArn, name: "sessionId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    SendMessageRequest.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageType, name: "type", traits: {"smithy.api#required" => {}}))
    SendMessageRequest.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageInput, name: "message", traits: {"smithy.api#required" => {}}))
    SendMessageRequest.add_member(:ai_agent_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArnOrEitherWithQualifier, name: "aiAgentId"))
    SendMessageRequest.add_member(:conversation_context, ::Smithy::Schema::Shapes::MemberShape.new(target: ConversationContext, name: "conversationContext"))
    SendMessageRequest.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageConfiguration, name: "configuration"))
    SendMessageRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    SendMessageRequest.add_member(:orchestrator_use_case, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "orchestratorUseCase"))
    SendMessageRequest.add_member(:metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageMetadata, name: "metadata"))
    SendMessageRequest.add_member(:origin_request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "originRequestId", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}}))
    SendMessageRequest.type = Types::SendMessageRequest
    SendMessageResponse.add_member(:request_message_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "requestMessageId", traits: {"smithy.api#required" => {}}))
    SendMessageResponse.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageConfiguration, name: "configuration"))
    SendMessageResponse.add_member(:next_message_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextMessageToken", traits: {"smithy.api#required" => {}}))
    SendMessageResponse.type = Types::SendMessageResponse
    ServerSideEncryptionConfiguration.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "kmsKeyId"))
    ServerSideEncryptionConfiguration.type = Types::ServerSideEncryptionConfiguration
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message"))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    SessionData.add_member(:session_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "sessionArn", traits: {"smithy.api#required" => {}}))
    SessionData.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "sessionId", traits: {"smithy.api#required" => {}}))
    SessionData.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "name", traits: {"smithy.api#required" => {}}))
    SessionData.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    SessionData.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    SessionData.add_member(:integration_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionIntegrationConfiguration, name: "integrationConfiguration"))
    SessionData.add_member(:tag_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: TagFilter, name: "tagFilter"))
    SessionData.add_member(:ai_agent_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AIAgentConfigurationMap, name: "aiAgentConfiguration"))
    SessionData.add_member(:origin, ::Smithy::Schema::Shapes::MemberShape.new(target: Origin, name: "origin"))
    SessionData.add_member(:orchestrator_configuration_list, ::Smithy::Schema::Shapes::MemberShape.new(target: OrchestratorConfigurationList, name: "orchestratorConfigurationList"))
    SessionData.type = Types::SessionData
    SessionIntegrationConfiguration.add_member(:topic_integration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericArn, name: "topicIntegrationArn"))
    SessionIntegrationConfiguration.type = Types::SessionIntegrationConfiguration
    SessionSummaries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionSummary, name: "member"))
    SessionSummary.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "sessionId", traits: {"smithy.api#required" => {}}))
    SessionSummary.add_member(:session_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "sessionArn", traits: {"smithy.api#required" => {}}))
    SessionSummary.add_member(:assistant_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "assistantId", traits: {"smithy.api#required" => {}}))
    SessionSummary.add_member(:assistant_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "assistantArn", traits: {"smithy.api#required" => {}}))
    SessionSummary.type = Types::SessionSummary
    SourceConfiguration.add_member(:app_integrations, Types::SourceConfiguration::AppIntegrations, ::Smithy::Schema::Shapes::MemberShape.new(target: AppIntegrationsConfiguration, name: "appIntegrations"))
    SourceConfiguration.add_member(:managed_source_configuration, Types::SourceConfiguration::ManagedSourceConfiguration, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedSourceConfiguration, name: "managedSourceConfiguration"))
    SourceConfiguration.add_member(:unknown, Types::SourceConfiguration::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    SourceConfiguration.type = Types::SourceConfiguration
    SourceContentDataDetails.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "id", traits: {"smithy.api#required" => {}}))
    SourceContentDataDetails.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceContentType, name: "type", traits: {"smithy.api#required" => {}}))
    SourceContentDataDetails.add_member(:text_data, ::Smithy::Schema::Shapes::MemberShape.new(target: TextData, name: "textData", traits: {"smithy.api#required" => {}}))
    SourceContentDataDetails.add_member(:ranking_data, ::Smithy::Schema::Shapes::MemberShape.new(target: RankingData, name: "rankingData", traits: {"smithy.api#required" => {}}))
    SourceContentDataDetails.add_member(:citation_span, ::Smithy::Schema::Shapes::MemberShape.new(target: CitationSpan, name: "citationSpan"))
    SourceContentDataDetails.type = Types::SourceContentDataDetails
    Span.add_member(:span_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "spanId", traits: {"smithy.api#required" => {}}))
    Span.add_member(:assistant_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "assistantId", traits: {"smithy.api#required" => {}}))
    Span.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "sessionId", traits: {"smithy.api#required" => {}}))
    Span.add_member(:parent_span_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "parentSpanId"))
    Span.add_member(:span_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "spanName", traits: {"smithy.api#required" => {}}))
    Span.add_member(:span_type, ::Smithy::Schema::Shapes::MemberShape.new(target: SpanType, name: "spanType", traits: {"smithy.api#required" => {}}))
    Span.add_member(:start_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "startTimestamp", traits: {"smithy.api#required" => {}}))
    Span.add_member(:end_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "endTimestamp", traits: {"smithy.api#required" => {}}))
    Span.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: SpanStatus, name: "status", traits: {"smithy.api#required" => {}}))
    Span.add_member(:status_description, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "statusDescription", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}}))
    Span.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "requestId", traits: {"smithy.api#required" => {}}))
    Span.add_member(:origin_request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "originRequestId", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}}))
    Span.add_member(:attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: SpanAttributes, name: "attributes", traits: {"smithy.api#required" => {}}))
    Span.type = Types::Span
    SpanAttributes.add_member(:operation_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "operationName"))
    SpanAttributes.add_member(:provider_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "providerName"))
    SpanAttributes.add_member(:error_type, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "errorType"))
    SpanAttributes.add_member(:agent_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "agentId"))
    SpanAttributes.add_member(:instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericArn, name: "instanceArn"))
    SpanAttributes.add_member(:contact_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "contactId"))
    SpanAttributes.add_member(:initial_contact_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "initialContactId"))
    SpanAttributes.add_member(:session_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "sessionName"))
    SpanAttributes.add_member(:ai_agent_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnWithQualifier, name: "aiAgentArn"))
    SpanAttributes.add_member(:ai_agent_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AIAgentType, name: "aiAgentType"))
    SpanAttributes.add_member(:ai_agent_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "aiAgentName"))
    SpanAttributes.add_member(:ai_agent_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "aiAgentId"))
    SpanAttributes.add_member(:ai_agent_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "aiAgentVersion"))
    SpanAttributes.add_member(:ai_agent_invoker, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "aiAgentInvoker"))
    SpanAttributes.add_member(:ai_agent_orchestrator_use_case, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "aiAgentOrchestratorUseCase"))
    SpanAttributes.add_member(:interaction_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: InteractionMode, name: "interactionMode"))
    SpanAttributes.add_member(:target_agent_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "targetAgentId"))
    SpanAttributes.add_member(:return_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ReturnReason, name: "returnReason"))
    SpanAttributes.add_member(:request_model, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "requestModel"))
    SpanAttributes.add_member(:request_max_tokens, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "requestMaxTokens"))
    SpanAttributes.add_member(:temperature, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Float, name: "temperature", traits: {"smithy.api#range" => {"min" => 0.0, "max" => 1.0}}))
    SpanAttributes.add_member(:top_p, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Float, name: "topP", traits: {"smithy.api#range" => {"min" => 0.0, "max" => 1.0}}))
    SpanAttributes.add_member(:response_model, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "responseModel"))
    SpanAttributes.add_member(:response_finish_reasons, ::Smithy::Schema::Shapes::MemberShape.new(target: SpanFinishReasonList, name: "responseFinishReasons"))
    SpanAttributes.add_member(:usage_input_tokens, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "usageInputTokens"))
    SpanAttributes.add_member(:usage_output_tokens, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "usageOutputTokens"))
    SpanAttributes.add_member(:usage_total_tokens, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "usageTotalTokens"))
    SpanAttributes.add_member(:cache_read_input_tokens, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "cacheReadInputTokens"))
    SpanAttributes.add_member(:cache_write_input_tokens, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "cacheWriteInputTokens"))
    SpanAttributes.add_member(:input_messages, ::Smithy::Schema::Shapes::MemberShape.new(target: SpanMessageList, name: "inputMessages"))
    SpanAttributes.add_member(:output_messages, ::Smithy::Schema::Shapes::MemberShape.new(target: SpanMessageList, name: "outputMessages"))
    SpanAttributes.add_member(:system_instructions, ::Smithy::Schema::Shapes::MemberShape.new(target: SpanMessageValueList, name: "systemInstructions"))
    SpanAttributes.add_member(:prompt_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnWithQualifier, name: "promptArn"))
    SpanAttributes.add_member(:prompt_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "promptId"))
    SpanAttributes.add_member(:prompt_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AIPromptType, name: "promptType"))
    SpanAttributes.add_member(:prompt_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "promptName"))
    SpanAttributes.add_member(:prompt_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "promptVersion"))
    SpanAttributes.add_member(:time_to_first_token_ms, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "timeToFirstTokenMs"))
    SpanAttributes.add_member(:guardrail_assessments, ::Smithy::Schema::Shapes::MemberShape.new(target: SpanGuardrailAssessmentList, name: "guardrailAssessments"))
    SpanAttributes.type = Types::SpanAttributes
    SpanCitation.add_member(:content_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "contentId"))
    SpanCitation.add_member(:title, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "title"))
    SpanCitation.add_member(:knowledge_base_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "knowledgeBaseId"))
    SpanCitation.add_member(:knowledge_base_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "knowledgeBaseArn"))
    SpanCitation.type = Types::SpanCitation
    SpanCitationList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SpanCitation, name: "member"))
    SpanFinishReasonList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "member"))
    SpanGuardrailAssessment.add_member(:guardrail_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "guardrailId", traits: {"smithy.api#required" => {}}))
    SpanGuardrailAssessment.add_member(:guardrail_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "guardrailName", traits: {"smithy.api#required" => {}}))
    SpanGuardrailAssessment.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailSource, name: "source", traits: {"smithy.api#required" => {}}))
    SpanGuardrailAssessment.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailAction, name: "action", traits: {"smithy.api#required" => {}}))
    SpanGuardrailAssessment.add_member(:policies, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailPolicyResultList, name: "policies"))
    SpanGuardrailAssessment.type = Types::SpanGuardrailAssessment
    SpanGuardrailAssessmentList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SpanGuardrailAssessment, name: "member"))
    SpanList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Span, name: "member"))
    SpanMessage.add_member(:message_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "messageId", traits: {"smithy.api#required" => {}}))
    SpanMessage.add_member(:participant, ::Smithy::Schema::Shapes::MemberShape.new(target: Participant, name: "participant", traits: {"smithy.api#required" => {}}))
    SpanMessage.add_member(:timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "timestamp", traits: {"smithy.api#required" => {}}))
    SpanMessage.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: SpanMessageValueList, name: "values", traits: {"smithy.api#required" => {}}))
    SpanMessage.type = Types::SpanMessage
    SpanMessageList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SpanMessage, name: "member"))
    SpanMessageValue.add_member(:text, Types::SpanMessageValue::Text, ::Smithy::Schema::Shapes::MemberShape.new(target: SpanTextValue, name: "text"))
    SpanMessageValue.add_member(:tool_use, Types::SpanMessageValue::ToolUse, ::Smithy::Schema::Shapes::MemberShape.new(target: SpanToolUseValue, name: "toolUse"))
    SpanMessageValue.add_member(:tool_result, Types::SpanMessageValue::ToolResult, ::Smithy::Schema::Shapes::MemberShape.new(target: SpanToolResultValue, name: "toolResult"))
    SpanMessageValue.add_member(:reasoning, Types::SpanMessageValue::Reasoning, ::Smithy::Schema::Shapes::MemberShape.new(target: SpanReasoningValue, name: "reasoning"))
    SpanMessageValue.add_member(:unknown, Types::SpanMessageValue::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    SpanMessageValue.type = Types::SpanMessageValue
    SpanMessageValueList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SpanMessageValue, name: "member"))
    SpanReasoningValue.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptySensitiveString, name: "value", traits: {"smithy.api#required" => {}}))
    SpanReasoningValue.type = Types::SpanReasoningValue
    SpanTextValue.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptySensitiveString, name: "value", traits: {"smithy.api#required" => {}}))
    SpanTextValue.add_member(:citations, ::Smithy::Schema::Shapes::MemberShape.new(target: SpanCitationList, name: "citations"))
    SpanTextValue.add_member(:ai_guardrail_assessment, ::Smithy::Schema::Shapes::MemberShape.new(target: AIGuardrailAssessment, name: "aiGuardrailAssessment"))
    SpanTextValue.type = Types::SpanTextValue
    SpanToolResultValue.add_member(:tool_use_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "toolUseId", traits: {"smithy.api#required" => {}}))
    SpanToolResultValue.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: SpanMessageValueList, name: "values", traits: {"smithy.api#required" => {}}))
    SpanToolResultValue.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "error"))
    SpanToolResultValue.type = Types::SpanToolResultValue
    SpanToolUseValue.add_member(:tool_use_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "toolUseId", traits: {"smithy.api#required" => {}}))
    SpanToolUseValue.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "name", traits: {"smithy.api#required" => {}}))
    SpanToolUseValue.add_member(:arguments, ::Smithy::Schema::Shapes::MemberShape.new(target: JSONDocument, name: "arguments", traits: {"smithy.api#required" => {}}))
    SpanToolUseValue.type = Types::SpanToolUseValue
    StartContentUploadInput.add_member(:knowledge_base_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArn, name: "knowledgeBaseId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartContentUploadInput.add_member(:content_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentType, name: "contentType", traits: {"smithy.api#required" => {}}))
    StartContentUploadInput.add_member(:presigned_url_time_to_live, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeToLive, name: "presignedUrlTimeToLive"))
    StartContentUploadInput.type = Types::StartContentUploadInput
    StartContentUploadOutput.add_member(:upload_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UploadId, name: "uploadId", traits: {"smithy.api#required" => {}}))
    StartContentUploadOutput.add_member(:url, ::Smithy::Schema::Shapes::MemberShape.new(target: Url, name: "url", traits: {"smithy.api#required" => {}}))
    StartContentUploadOutput.add_member(:url_expiry, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "urlExpiry", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "epoch-seconds"}))
    StartContentUploadOutput.add_member(:headers_to_include, ::Smithy::Schema::Shapes::MemberShape.new(target: Headers, name: "headersToInclude", traits: {"smithy.api#required" => {}}))
    StartContentUploadOutput.type = Types::StartContentUploadOutput
    StartImportJobRequest.add_member(:knowledge_base_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArn, name: "knowledgeBaseId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartImportJobRequest.add_member(:import_job_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportJobType, name: "importJobType", traits: {"smithy.api#required" => {}}))
    StartImportJobRequest.add_member(:upload_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UploadId, name: "uploadId", traits: {"smithy.api#required" => {}}))
    StartImportJobRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    StartImportJobRequest.add_member(:metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentMetadata, name: "metadata"))
    StartImportJobRequest.add_member(:external_source_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ExternalSourceConfiguration, name: "externalSourceConfiguration"))
    StartImportJobRequest.type = Types::StartImportJobRequest
    StartImportJobResponse.add_member(:import_job, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportJobData, name: "importJob"))
    StartImportJobResponse.type = Types::StartImportJobResponse
    SuggestedMessageDataDetails.add_member(:message_text, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptySensitiveString, name: "messageText", traits: {"smithy.api#required" => {}}))
    SuggestedMessageDataDetails.type = Types::SuggestedMessageDataDetails
    SuggestedMessageReference.add_member(:ai_agent_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "aiAgentId", traits: {"smithy.api#required" => {}}))
    SuggestedMessageReference.add_member(:ai_agent_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "aiAgentArn", traits: {"smithy.api#required" => {}}))
    SuggestedMessageReference.type = Types::SuggestedMessageReference
    SuggestedMessagesList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptySensitiveString, name: "member"))
    SystemAttributes.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageTemplateAttributeValue, name: "name"))
    SystemAttributes.add_member(:customer_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: SystemEndpointAttributes, name: "customerEndpoint"))
    SystemAttributes.add_member(:system_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: SystemEndpointAttributes, name: "systemEndpoint"))
    SystemAttributes.type = Types::SystemAttributes
    SystemEndpointAttributes.add_member(:address, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageTemplateAttributeValue, name: "address"))
    SystemEndpointAttributes.type = Types::SystemEndpointAttributes
    TagCondition.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "key", traits: {"smithy.api#required" => {}}))
    TagCondition.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "value"))
    TagCondition.type = Types::TagCondition
    TagFilter.add_member(:tag_condition, Types::TagFilter::TagCondition, ::Smithy::Schema::Shapes::MemberShape.new(target: TagCondition, name: "tagCondition"))
    TagFilter.add_member(:and_conditions, Types::TagFilter::AndConditions, ::Smithy::Schema::Shapes::MemberShape.new(target: AndConditions, name: "andConditions"))
    TagFilter.add_member(:or_conditions, Types::TagFilter::OrConditions, ::Smithy::Schema::Shapes::MemberShape.new(target: OrConditions, name: "orConditions"))
    TagFilter.add_member(:unknown, Types::TagFilter::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    TagFilter.type = Types::TagFilter
    TagKeyList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "member"))
    TagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags", traits: {"smithy.api#required" => {}}))
    TagResourceInput.type = Types::TagResourceInput
    TagResourceOutput.type = Types::TagResourceOutput
    Tags.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "key"))
    Tags.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "value"))
    TextData.add_member(:title, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentText, name: "title"))
    TextData.add_member(:excerpt, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentText, name: "excerpt"))
    TextData.type = Types::TextData
    TextFullAIPromptEditTemplateConfiguration.add_member(:text, ::Smithy::Schema::Shapes::MemberShape.new(target: TextAIPrompt, name: "text", traits: {"smithy.api#required" => {}}))
    TextFullAIPromptEditTemplateConfiguration.type = Types::TextFullAIPromptEditTemplateConfiguration
    TextMessage.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "value", traits: {"smithy.api#length" => {"min" => 0, "max" => 25000}}))
    TextMessage.add_member(:citations, ::Smithy::Schema::Shapes::MemberShape.new(target: Citations, name: "citations"))
    TextMessage.add_member(:ai_guardrail_assessment, ::Smithy::Schema::Shapes::MemberShape.new(target: AIGuardrailAssessment, name: "aiGuardrailAssessment"))
    TextMessage.type = Types::TextMessage
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message"))
    ThrottlingException.type = Types::ThrottlingException
    TooManyTagsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message"))
    TooManyTagsException.add_member(:resource_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourceName"))
    TooManyTagsException.type = Types::TooManyTagsException
    ToolConfiguration.add_member(:tool_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "toolName", traits: {"smithy.api#required" => {}}))
    ToolConfiguration.add_member(:tool_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ToolType, name: "toolType", traits: {"smithy.api#required" => {}}))
    ToolConfiguration.add_member(:title, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptySensitiveString, name: "title"))
    ToolConfiguration.add_member(:tool_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "toolId"))
    ToolConfiguration.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptySensitiveString, name: "description"))
    ToolConfiguration.add_member(:instruction, ::Smithy::Schema::Shapes::MemberShape.new(target: ToolInstruction, name: "instruction"))
    ToolConfiguration.add_member(:override_input_values, ::Smithy::Schema::Shapes::MemberShape.new(target: ToolOverrideInputValueList, name: "overrideInputValues"))
    ToolConfiguration.add_member(:output_filters, ::Smithy::Schema::Shapes::MemberShape.new(target: ToolOutputFilterList, name: "outputFilters"))
    ToolConfiguration.add_member(:input_schema, ::Smithy::Schema::Shapes::MemberShape.new(target: JSONDocument, name: "inputSchema"))
    ToolConfiguration.add_member(:output_schema, ::Smithy::Schema::Shapes::MemberShape.new(target: JSONDocument, name: "outputSchema"))
    ToolConfiguration.add_member(:annotations, ::Smithy::Schema::Shapes::MemberShape.new(target: Annotation, name: "annotations"))
    ToolConfiguration.add_member(:user_interaction_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: UserInteractionConfiguration, name: "userInteractionConfiguration"))
    ToolConfiguration.type = Types::ToolConfiguration
    ToolConfigurationList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ToolConfiguration, name: "member"))
    ToolExampleList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "member"))
    ToolInstruction.add_member(:instruction, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "instruction"))
    ToolInstruction.add_member(:examples, ::Smithy::Schema::Shapes::MemberShape.new(target: ToolExampleList, name: "examples"))
    ToolInstruction.type = Types::ToolInstruction
    ToolOutputConfiguration.add_member(:output_variable_name_override, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "outputVariableNameOverride"))
    ToolOutputConfiguration.add_member(:session_data_namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "sessionDataNamespace"))
    ToolOutputConfiguration.type = Types::ToolOutputConfiguration
    ToolOutputFilter.add_member(:json_path, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "jsonPath", traits: {"smithy.api#required" => {}}))
    ToolOutputFilter.add_member(:output_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ToolOutputConfiguration, name: "outputConfiguration"))
    ToolOutputFilter.type = Types::ToolOutputFilter
    ToolOutputFilterList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ToolOutputFilter, name: "member"))
    ToolOverrideConstantInputValue.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ToolOverrideInputValueType, name: "type", traits: {"smithy.api#required" => {}}))
    ToolOverrideConstantInputValue.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptySensitiveString, name: "value", traits: {"smithy.api#required" => {}}))
    ToolOverrideConstantInputValue.type = Types::ToolOverrideConstantInputValue
    ToolOverrideInputValue.add_member(:json_path, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "jsonPath", traits: {"smithy.api#required" => {}}))
    ToolOverrideInputValue.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ToolOverrideInputValueConfiguration, name: "value", traits: {"smithy.api#required" => {}}))
    ToolOverrideInputValue.type = Types::ToolOverrideInputValue
    ToolOverrideInputValueConfiguration.add_member(:constant, Types::ToolOverrideInputValueConfiguration::Constant, ::Smithy::Schema::Shapes::MemberShape.new(target: ToolOverrideConstantInputValue, name: "constant"))
    ToolOverrideInputValueConfiguration.add_member(:unknown, Types::ToolOverrideInputValueConfiguration::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    ToolOverrideInputValueConfiguration.type = Types::ToolOverrideInputValueConfiguration
    ToolOverrideInputValueList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ToolOverrideInputValue, name: "member"))
    ToolUseResultData.add_member(:tool_use_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "toolUseId", traits: {"smithy.api#required" => {}}))
    ToolUseResultData.add_member(:tool_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "toolName", traits: {"smithy.api#required" => {}}))
    ToolUseResultData.add_member(:tool_result, ::Smithy::Schema::Shapes::MemberShape.new(target: JSONDocument, name: "toolResult", traits: {"smithy.api#required" => {}}))
    ToolUseResultData.add_member(:input_schema, ::Smithy::Schema::Shapes::MemberShape.new(target: JSONDocument, name: "inputSchema"))
    ToolUseResultData.type = Types::ToolUseResultData
    UnauthorizedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message"))
    UnauthorizedException.type = Types::UnauthorizedException
    UnprocessableContentException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message"))
    UnprocessableContentException.type = Types::UnprocessableContentException
    UntagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceInput.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, name: "tagKeys", traits: {"smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceInput.type = Types::UntagResourceInput
    UntagResourceOutput.type = Types::UntagResourceOutput
    UpdateAIAgentRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    UpdateAIAgentRequest.add_member(:assistant_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArn, name: "assistantId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateAIAgentRequest.add_member(:ai_agent_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArnOrEitherWithQualifier, name: "aiAgentId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateAIAgentRequest.add_member(:visibility_status, ::Smithy::Schema::Shapes::MemberShape.new(target: VisibilityStatus, name: "visibilityStatus", traits: {"smithy.api#required" => {}}))
    UpdateAIAgentRequest.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AIAgentConfiguration, name: "configuration"))
    UpdateAIAgentRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    UpdateAIAgentRequest.type = Types::UpdateAIAgentRequest
    UpdateAIAgentResponse.add_member(:ai_agent, ::Smithy::Schema::Shapes::MemberShape.new(target: AIAgentData, name: "aiAgent"))
    UpdateAIAgentResponse.type = Types::UpdateAIAgentResponse
    UpdateAIGuardrailRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    UpdateAIGuardrailRequest.add_member(:assistant_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArn, name: "assistantId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateAIGuardrailRequest.add_member(:ai_guardrail_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArnOrEitherWithQualifier, name: "aiGuardrailId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateAIGuardrailRequest.add_member(:visibility_status, ::Smithy::Schema::Shapes::MemberShape.new(target: VisibilityStatus, name: "visibilityStatus", traits: {"smithy.api#required" => {}}))
    UpdateAIGuardrailRequest.add_member(:blocked_input_messaging, ::Smithy::Schema::Shapes::MemberShape.new(target: AIGuardrailBlockedMessaging, name: "blockedInputMessaging", traits: {"smithy.api#required" => {}}))
    UpdateAIGuardrailRequest.add_member(:blocked_outputs_messaging, ::Smithy::Schema::Shapes::MemberShape.new(target: AIGuardrailBlockedMessaging, name: "blockedOutputsMessaging", traits: {"smithy.api#required" => {}}))
    UpdateAIGuardrailRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: AIGuardrailDescription, name: "description"))
    UpdateAIGuardrailRequest.add_member(:topic_policy_config, ::Smithy::Schema::Shapes::MemberShape.new(target: AIGuardrailTopicPolicyConfig, name: "topicPolicyConfig"))
    UpdateAIGuardrailRequest.add_member(:content_policy_config, ::Smithy::Schema::Shapes::MemberShape.new(target: AIGuardrailContentPolicyConfig, name: "contentPolicyConfig"))
    UpdateAIGuardrailRequest.add_member(:word_policy_config, ::Smithy::Schema::Shapes::MemberShape.new(target: AIGuardrailWordPolicyConfig, name: "wordPolicyConfig"))
    UpdateAIGuardrailRequest.add_member(:sensitive_information_policy_config, ::Smithy::Schema::Shapes::MemberShape.new(target: AIGuardrailSensitiveInformationPolicyConfig, name: "sensitiveInformationPolicyConfig"))
    UpdateAIGuardrailRequest.add_member(:contextual_grounding_policy_config, ::Smithy::Schema::Shapes::MemberShape.new(target: AIGuardrailContextualGroundingPolicyConfig, name: "contextualGroundingPolicyConfig"))
    UpdateAIGuardrailRequest.type = Types::UpdateAIGuardrailRequest
    UpdateAIGuardrailResponse.add_member(:ai_guardrail, ::Smithy::Schema::Shapes::MemberShape.new(target: AIGuardrailData, name: "aiGuardrail"))
    UpdateAIGuardrailResponse.type = Types::UpdateAIGuardrailResponse
    UpdateAIPromptRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    UpdateAIPromptRequest.add_member(:assistant_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArn, name: "assistantId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateAIPromptRequest.add_member(:ai_prompt_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArnOrEitherWithQualifier, name: "aiPromptId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateAIPromptRequest.add_member(:visibility_status, ::Smithy::Schema::Shapes::MemberShape.new(target: VisibilityStatus, name: "visibilityStatus", traits: {"smithy.api#required" => {}}))
    UpdateAIPromptRequest.add_member(:template_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AIPromptTemplateConfiguration, name: "templateConfiguration"))
    UpdateAIPromptRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    UpdateAIPromptRequest.add_member(:model_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AIPromptModelIdentifier, name: "modelId"))
    UpdateAIPromptRequest.add_member(:inference_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AIPromptInferenceConfiguration, name: "inferenceConfiguration"))
    UpdateAIPromptRequest.type = Types::UpdateAIPromptRequest
    UpdateAIPromptResponse.add_member(:ai_prompt, ::Smithy::Schema::Shapes::MemberShape.new(target: AIPromptData, name: "aiPrompt"))
    UpdateAIPromptResponse.type = Types::UpdateAIPromptResponse
    UpdateAssistantAIAgentRequest.add_member(:assistant_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArn, name: "assistantId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateAssistantAIAgentRequest.add_member(:ai_agent_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AIAgentType, name: "aiAgentType", traits: {"smithy.api#required" => {}}))
    UpdateAssistantAIAgentRequest.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AIAgentConfigurationData, name: "configuration", traits: {"smithy.api#required" => {}}))
    UpdateAssistantAIAgentRequest.add_member(:orchestrator_use_case, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "orchestratorUseCase"))
    UpdateAssistantAIAgentRequest.type = Types::UpdateAssistantAIAgentRequest
    UpdateAssistantAIAgentResponse.add_member(:assistant, ::Smithy::Schema::Shapes::MemberShape.new(target: AssistantData, name: "assistant"))
    UpdateAssistantAIAgentResponse.type = Types::UpdateAssistantAIAgentResponse
    UpdateContentInput.add_member(:knowledge_base_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArn, name: "knowledgeBaseId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateContentInput.add_member(:content_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArn, name: "contentId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateContentInput.add_member(:revision_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "revisionId"))
    UpdateContentInput.add_member(:title, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentTitle, name: "title"))
    UpdateContentInput.add_member(:override_link_out_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: Uri, name: "overrideLinkOutUri"))
    UpdateContentInput.add_member(:remove_override_link_out_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "removeOverrideLinkOutUri"))
    UpdateContentInput.add_member(:metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentMetadata, name: "metadata"))
    UpdateContentInput.add_member(:upload_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UploadId, name: "uploadId"))
    UpdateContentInput.type = Types::UpdateContentInput
    UpdateContentOutput.add_member(:content, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentData, name: "content"))
    UpdateContentOutput.type = Types::UpdateContentOutput
    UpdateKnowledgeBaseTemplateUriInput.add_member(:knowledge_base_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArn, name: "knowledgeBaseId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateKnowledgeBaseTemplateUriInput.add_member(:template_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: Uri, name: "templateUri", traits: {"smithy.api#required" => {}}))
    UpdateKnowledgeBaseTemplateUriInput.type = Types::UpdateKnowledgeBaseTemplateUriInput
    UpdateKnowledgeBaseTemplateUriOutput.add_member(:knowledge_base, ::Smithy::Schema::Shapes::MemberShape.new(target: KnowledgeBaseData, name: "knowledgeBase"))
    UpdateKnowledgeBaseTemplateUriOutput.type = Types::UpdateKnowledgeBaseTemplateUriOutput
    UpdateMessageTemplateMetadataRequest.add_member(:knowledge_base_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArn, name: "knowledgeBaseId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateMessageTemplateMetadataRequest.add_member(:message_template_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArnOrEitherWithQualifier, name: "messageTemplateId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateMessageTemplateMetadataRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "name"))
    UpdateMessageTemplateMetadataRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    UpdateMessageTemplateMetadataRequest.add_member(:grouping_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupingConfiguration, name: "groupingConfiguration"))
    UpdateMessageTemplateMetadataRequest.type = Types::UpdateMessageTemplateMetadataRequest
    UpdateMessageTemplateMetadataResponse.add_member(:message_template, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageTemplateData, name: "messageTemplate"))
    UpdateMessageTemplateMetadataResponse.type = Types::UpdateMessageTemplateMetadataResponse
    UpdateMessageTemplateRequest.add_member(:knowledge_base_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArn, name: "knowledgeBaseId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateMessageTemplateRequest.add_member(:message_template_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArnOrEitherWithQualifier, name: "messageTemplateId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateMessageTemplateRequest.add_member(:content, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageTemplateContentProvider, name: "content"))
    UpdateMessageTemplateRequest.add_member(:language, ::Smithy::Schema::Shapes::MemberShape.new(target: LanguageCode, name: "language"))
    UpdateMessageTemplateRequest.add_member(:source_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageTemplateSourceConfiguration, name: "sourceConfiguration"))
    UpdateMessageTemplateRequest.add_member(:default_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageTemplateAttributes, name: "defaultAttributes"))
    UpdateMessageTemplateRequest.type = Types::UpdateMessageTemplateRequest
    UpdateMessageTemplateResponse.add_member(:message_template, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageTemplateData, name: "messageTemplate"))
    UpdateMessageTemplateResponse.type = Types::UpdateMessageTemplateResponse
    UpdateQuickResponseRequest.add_member(:knowledge_base_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArn, name: "knowledgeBaseId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateQuickResponseRequest.add_member(:quick_response_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArn, name: "quickResponseId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateQuickResponseRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: QuickResponseName, name: "name"))
    UpdateQuickResponseRequest.add_member(:content, ::Smithy::Schema::Shapes::MemberShape.new(target: QuickResponseDataProvider, name: "content"))
    UpdateQuickResponseRequest.add_member(:content_type, ::Smithy::Schema::Shapes::MemberShape.new(target: QuickResponseType, name: "contentType"))
    UpdateQuickResponseRequest.add_member(:grouping_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupingConfiguration, name: "groupingConfiguration"))
    UpdateQuickResponseRequest.add_member(:remove_grouping_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "removeGroupingConfiguration"))
    UpdateQuickResponseRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: QuickResponseDescription, name: "description"))
    UpdateQuickResponseRequest.add_member(:remove_description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "removeDescription"))
    UpdateQuickResponseRequest.add_member(:shortcut_key, ::Smithy::Schema::Shapes::MemberShape.new(target: ShortCutKey, name: "shortcutKey"))
    UpdateQuickResponseRequest.add_member(:remove_shortcut_key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "removeShortcutKey"))
    UpdateQuickResponseRequest.add_member(:is_active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "isActive"))
    UpdateQuickResponseRequest.add_member(:channels, ::Smithy::Schema::Shapes::MemberShape.new(target: Channels, name: "channels"))
    UpdateQuickResponseRequest.add_member(:language, ::Smithy::Schema::Shapes::MemberShape.new(target: LanguageCode, name: "language"))
    UpdateQuickResponseRequest.type = Types::UpdateQuickResponseRequest
    UpdateQuickResponseResponse.add_member(:quick_response, ::Smithy::Schema::Shapes::MemberShape.new(target: QuickResponseData, name: "quickResponse"))
    UpdateQuickResponseResponse.type = Types::UpdateQuickResponseResponse
    UpdateSessionDataRequest.add_member(:assistant_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArn, name: "assistantId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateSessionDataRequest.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArn, name: "sessionId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateSessionDataRequest.add_member(:namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionDataNamespace, name: "namespace"))
    UpdateSessionDataRequest.add_member(:data, ::Smithy::Schema::Shapes::MemberShape.new(target: RuntimeSessionDataList, name: "data", traits: {"smithy.api#required" => {}}))
    UpdateSessionDataRequest.type = Types::UpdateSessionDataRequest
    UpdateSessionDataResponse.add_member(:session_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "sessionArn", traits: {"smithy.api#required" => {}}))
    UpdateSessionDataResponse.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "sessionId", traits: {"smithy.api#required" => {}}))
    UpdateSessionDataResponse.add_member(:namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionDataNamespace, name: "namespace", traits: {"smithy.api#required" => {}}))
    UpdateSessionDataResponse.add_member(:data, ::Smithy::Schema::Shapes::MemberShape.new(target: RuntimeSessionDataList, name: "data", traits: {"smithy.api#required" => {}}))
    UpdateSessionDataResponse.type = Types::UpdateSessionDataResponse
    UpdateSessionRequest.add_member(:assistant_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArn, name: "assistantId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateSessionRequest.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidOrArn, name: "sessionId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateSessionRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    UpdateSessionRequest.add_member(:tag_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: TagFilter, name: "tagFilter"))
    UpdateSessionRequest.add_member(:ai_agent_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AIAgentConfigurationMap, name: "aiAgentConfiguration"))
    UpdateSessionRequest.add_member(:orchestrator_configuration_list, ::Smithy::Schema::Shapes::MemberShape.new(target: OrchestratorConfigurationList, name: "orchestratorConfigurationList"))
    UpdateSessionRequest.add_member(:remove_orchestrator_configuration_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "removeOrchestratorConfigurationList", traits: {"smithy.api#default" => nil}))
    UpdateSessionRequest.type = Types::UpdateSessionRequest
    UpdateSessionResponse.add_member(:session, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionData, name: "session"))
    UpdateSessionResponse.type = Types::UpdateSessionResponse
    UrlConfiguration.add_member(:seed_urls, ::Smithy::Schema::Shapes::MemberShape.new(target: SeedUrls, name: "seedUrls"))
    UrlConfiguration.type = Types::UrlConfiguration
    UrlFilterList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: UrlFilterPattern, name: "member"))
    UserInteractionConfiguration.add_member(:is_user_confirmation_required, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "isUserConfirmationRequired"))
    UserInteractionConfiguration.type = Types::UserInteractionConfiguration
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message"))
    ValidationException.type = Types::ValidationException
    VectorIngestionConfiguration.add_member(:chunking_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ChunkingConfiguration, name: "chunkingConfiguration"))
    VectorIngestionConfiguration.add_member(:parsing_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ParsingConfiguration, name: "parsingConfiguration"))
    VectorIngestionConfiguration.type = Types::VectorIngestionConfiguration
    WebCrawlerConfiguration.add_member(:url_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: UrlConfiguration, name: "urlConfiguration", traits: {"smithy.api#required" => {}}))
    WebCrawlerConfiguration.add_member(:crawler_limits, ::Smithy::Schema::Shapes::MemberShape.new(target: WebCrawlerLimits, name: "crawlerLimits"))
    WebCrawlerConfiguration.add_member(:inclusion_filters, ::Smithy::Schema::Shapes::MemberShape.new(target: UrlFilterList, name: "inclusionFilters"))
    WebCrawlerConfiguration.add_member(:exclusion_filters, ::Smithy::Schema::Shapes::MemberShape.new(target: UrlFilterList, name: "exclusionFilters"))
    WebCrawlerConfiguration.add_member(:scope, ::Smithy::Schema::Shapes::MemberShape.new(target: WebScopeType, name: "scope"))
    WebCrawlerConfiguration.type = Types::WebCrawlerConfiguration
    WebCrawlerLimits.add_member(:rate_limit, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "rateLimit", traits: {"smithy.api#range" => {"min" => 1, "max" => 300}}))
    WebCrawlerLimits.type = Types::WebCrawlerLimits
    WhatsAppMessageTemplateComponents.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: WhatsAppMessageTemplateComponent, name: "member"))
    WhatsAppMessageTemplateContent.add_member(:data, ::Smithy::Schema::Shapes::MemberShape.new(target: WhatsAppMessageTemplateContentData, name: "data"))
    WhatsAppMessageTemplateContent.type = Types::WhatsAppMessageTemplateContent
    WhatsAppMessageTemplateSourceConfiguration.add_member(:business_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WhatsAppBusinessAccountId, name: "businessAccountId", traits: {"smithy.api#required" => {}}))
    WhatsAppMessageTemplateSourceConfiguration.add_member(:template_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WhatsAppMessageTemplateId, name: "templateId", traits: {"smithy.api#required" => {}}))
    WhatsAppMessageTemplateSourceConfiguration.add_member(:components, ::Smithy::Schema::Shapes::MemberShape.new(target: WhatsAppMessageTemplateComponents, name: "components"))
    WhatsAppMessageTemplateSourceConfiguration.type = Types::WhatsAppMessageTemplateSourceConfiguration
    WhatsAppMessageTemplateSourceConfigurationSummary.add_member(:business_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WhatsAppBusinessAccountId, name: "businessAccountId", traits: {"smithy.api#required" => {}}))
    WhatsAppMessageTemplateSourceConfigurationSummary.add_member(:template_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WhatsAppMessageTemplateId, name: "templateId", traits: {"smithy.api#required" => {}}))
    WhatsAppMessageTemplateSourceConfigurationSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: WhatsAppMessageTemplateName, name: "name"))
    WhatsAppMessageTemplateSourceConfigurationSummary.add_member(:language, ::Smithy::Schema::Shapes::MemberShape.new(target: WhatsAppMessageTemplateLanguage, name: "language"))
    WhatsAppMessageTemplateSourceConfigurationSummary.add_member(:components, ::Smithy::Schema::Shapes::MemberShape.new(target: WhatsAppMessageTemplateComponents, name: "components"))
    WhatsAppMessageTemplateSourceConfigurationSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: WhatsAppSourceConfigurationStatus, name: "status"))
    WhatsAppMessageTemplateSourceConfigurationSummary.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyUnlimitedString, name: "statusReason"))
    WhatsAppMessageTemplateSourceConfigurationSummary.type = Types::WhatsAppMessageTemplateSourceConfigurationSummary

    WisdomService = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.qconnect#WisdomService"
      service.name = "WisdomService"
      service.version = "2020-10-19"
      service.traits = {"aws.api#service" => {"sdkId" => "QConnect", "arnNamespace" => "wisdom", "cloudFormationName" => "Wisdom"}, "aws.auth#sigv4" => {"name" => "wisdom"}, "aws.protocols#restJson1" => {}, "smithy.api#cors" => {}, "smithy.api#title" => "Amazon Q Connect", "smithy.rules#endpointBdd" => {"version" => "1.1", "parameters" => {"Region" => {"builtIn" => "AWS::Region", "required" => false, "documentation" => "The AWS region used to dispatch the request.", "type" => "string"}, "UseDualStack" => {"builtIn" => "AWS::UseDualStack", "required" => true, "default" => false, "documentation" => "When true, use the dual-stack endpoint. If the configured endpoint does not support dual-stack, dispatching the request MAY return an error.", "type" => "boolean"}, "UseFIPS" => {"builtIn" => "AWS::UseFIPS", "required" => true, "default" => false, "documentation" => "When true, send this request to the FIPS-compliant regional endpoint. If the configured endpoint does not have a FIPS compliant endpoint, dispatching the request will return an error.", "type" => "boolean"}, "Endpoint" => {"builtIn" => "SDK::Endpoint", "required" => false, "documentation" => "Override the endpoint used to send this request", "type" => "string"}}, "conditions" => [{"fn" => "isSet", "argv" => [{"ref" => "Endpoint"}]}, {"fn" => "isSet", "argv" => [{"ref" => "Region"}]}, {"fn" => "aws.partition", "argv" => [{"ref" => "Region"}], "assign" => "PartitionResult"}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseFIPS"}, true]}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseDualStack"}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsDualStack"]}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsFIPS"]}, true]}], "results" => [{"conditions" => [], "error" => "Invalid Configuration: FIPS and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "error" => "Invalid Configuration: Dualstack and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => {"ref" => "Endpoint"}, "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://wisdom-fips.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS and DualStack are enabled, but this partition does not support one or both", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://wisdom-fips.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS is enabled but this partition does not support FIPS", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://wisdom.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "DualStack is enabled but this partition does not support DualStack", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://wisdom.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "Invalid Configuration: Missing Region", "type" => "error"}], "root" => 2, "nodeCount" => 13, "nodes" => "/////wAAAAH/////AAAAAAAAAAwAAAADAAAAAQAAAAQF9eELAAAAAgAAAAUF9eELAAAAAwAAAAgAAAAGAAAABAAAAAcF9eEKAAAABQX14QgF9eEJAAAABAAAAAoAAAAJAAAABgX14QYF9eEHAAAABQAAAAsF9eEFAAAABgX14QQF9eEFAAAAAwX14QEAAAANAAAABAX14QIF9eED"}}
      service.add_operation(:activate_message_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#ActivateMessageTemplate"
        operation.name = "ActivateMessageTemplate"
        operation.input = ActivateMessageTemplateRequest
        operation.output = ActivateMessageTemplateResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/knowledgeBases/{knowledgeBaseId}/messageTemplates/{messageTemplateId}/activate", "method" => "POST"}}
      end)
      service.add_operation(:create_ai_agent, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#CreateAIAgent"
        operation.name = "CreateAIAgent"
        operation.input = CreateAIAgentRequest
        operation.output = CreateAIAgentResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << UnauthorizedException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/assistants/{assistantId}/aiagents", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_ai_agent_version, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#CreateAIAgentVersion"
        operation.name = "CreateAIAgentVersion"
        operation.input = CreateAIAgentVersionRequest
        operation.output = CreateAIAgentVersionResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << UnauthorizedException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/assistants/{assistantId}/aiagents/{aiAgentId}/versions", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_ai_guardrail, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#CreateAIGuardrail"
        operation.name = "CreateAIGuardrail"
        operation.input = CreateAIGuardrailRequest
        operation.output = CreateAIGuardrailResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << UnauthorizedException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/assistants/{assistantId}/aiguardrails", "method" => "POST"}, "smithy.api#idempotent" => {}, "smithy.api#private" => {}}
      end)
      service.add_operation(:create_ai_guardrail_version, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#CreateAIGuardrailVersion"
        operation.name = "CreateAIGuardrailVersion"
        operation.input = CreateAIGuardrailVersionRequest
        operation.output = CreateAIGuardrailVersionResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << UnauthorizedException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/assistants/{assistantId}/aiguardrails/{aiGuardrailId}/versions", "method" => "POST"}, "smithy.api#idempotent" => {}, "smithy.api#private" => {}}
      end)
      service.add_operation(:create_ai_prompt, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#CreateAIPrompt"
        operation.name = "CreateAIPrompt"
        operation.input = CreateAIPromptRequest
        operation.output = CreateAIPromptResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << UnauthorizedException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/assistants/{assistantId}/aiprompts", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_ai_prompt_version, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#CreateAIPromptVersion"
        operation.name = "CreateAIPromptVersion"
        operation.input = CreateAIPromptVersionRequest
        operation.output = CreateAIPromptVersionResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << UnauthorizedException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/assistants/{assistantId}/aiprompts/{aiPromptId}/versions", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_assistant, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#CreateAssistant"
        operation.name = "CreateAssistant"
        operation.input = CreateAssistantInput
        operation.output = CreateAssistantOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << ServiceQuotaExceededException
        operation.errors << UnauthorizedException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/assistants", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_assistant_association, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#CreateAssistantAssociation"
        operation.name = "CreateAssistantAssociation"
        operation.input = CreateAssistantAssociationInput
        operation.output = CreateAssistantAssociationOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/assistants/{assistantId}/associations", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_content, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#CreateContent"
        operation.name = "CreateContent"
        operation.input = CreateContentInput
        operation.output = CreateContentOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << UnauthorizedException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/knowledgeBases/{knowledgeBaseId}/contents", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_content_association, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#CreateContentAssociation"
        operation.name = "CreateContentAssociation"
        operation.input = CreateContentAssociationRequest
        operation.output = CreateContentAssociationResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << UnauthorizedException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/knowledgeBases/{knowledgeBaseId}/contents/{contentId}/associations", "method" => "POST"}}
      end)
      service.add_operation(:create_knowledge_base, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#CreateKnowledgeBase"
        operation.name = "CreateKnowledgeBase"
        operation.input = CreateKnowledgeBaseInput
        operation.output = CreateKnowledgeBaseOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << ServiceQuotaExceededException
        operation.errors << UnauthorizedException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/knowledgeBases", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_message_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#CreateMessageTemplate"
        operation.name = "CreateMessageTemplate"
        operation.input = CreateMessageTemplateRequest
        operation.output = CreateMessageTemplateResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/knowledgeBases/{knowledgeBaseId}/messageTemplates", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_message_template_attachment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#CreateMessageTemplateAttachment"
        operation.name = "CreateMessageTemplateAttachment"
        operation.input = CreateMessageTemplateAttachmentRequest
        operation.output = CreateMessageTemplateAttachmentResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << UnauthorizedException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/knowledgeBases/{knowledgeBaseId}/messageTemplates/{messageTemplateId}/attachments", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_message_template_version, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#CreateMessageTemplateVersion"
        operation.name = "CreateMessageTemplateVersion"
        operation.input = CreateMessageTemplateVersionRequest
        operation.output = CreateMessageTemplateVersionResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/knowledgeBases/{knowledgeBaseId}/messageTemplates/{messageTemplateId}/versions", "method" => "POST"}}
      end)
      service.add_operation(:create_quick_response, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#CreateQuickResponse"
        operation.name = "CreateQuickResponse"
        operation.input = CreateQuickResponseRequest
        operation.output = CreateQuickResponseResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << UnauthorizedException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/knowledgeBases/{knowledgeBaseId}/quickResponses", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_session, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#CreateSession"
        operation.name = "CreateSession"
        operation.input = CreateSessionInput
        operation.output = CreateSessionOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << DependencyFailedException
        operation.errors << ResourceNotFoundException
        operation.errors << UnauthorizedException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/assistants/{assistantId}/sessions", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:deactivate_message_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#DeactivateMessageTemplate"
        operation.name = "DeactivateMessageTemplate"
        operation.input = DeactivateMessageTemplateRequest
        operation.output = DeactivateMessageTemplateResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/knowledgeBases/{knowledgeBaseId}/messageTemplates/{messageTemplateId}/deactivate", "method" => "POST"}}
      end)
      service.add_operation(:delete_ai_agent, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#DeleteAIAgent"
        operation.name = "DeleteAIAgent"
        operation.input = DeleteAIAgentRequest
        operation.output = DeleteAIAgentResponse
        operation.errors << AccessDeniedException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << UnauthorizedException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/assistants/{assistantId}/aiagents/{aiAgentId}", "method" => "DELETE", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_ai_agent_version, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#DeleteAIAgentVersion"
        operation.name = "DeleteAIAgentVersion"
        operation.input = DeleteAIAgentVersionRequest
        operation.output = DeleteAIAgentVersionResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << UnauthorizedException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/assistants/{assistantId}/aiagents/{aiAgentId}/versions/{versionNumber}", "method" => "DELETE", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_ai_guardrail, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#DeleteAIGuardrail"
        operation.name = "DeleteAIGuardrail"
        operation.input = DeleteAIGuardrailRequest
        operation.output = DeleteAIGuardrailResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << UnauthorizedException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/assistants/{assistantId}/aiguardrails/{aiGuardrailId}", "method" => "DELETE", "code" => 202}, "smithy.api#idempotent" => {}, "smithy.api#private" => {}}
      end)
      service.add_operation(:delete_ai_guardrail_version, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#DeleteAIGuardrailVersion"
        operation.name = "DeleteAIGuardrailVersion"
        operation.input = DeleteAIGuardrailVersionRequest
        operation.output = DeleteAIGuardrailVersionResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << UnauthorizedException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/assistants/{assistantId}/aiguardrails/{aiGuardrailId}/versions/{versionNumber}", "method" => "DELETE", "code" => 202}, "smithy.api#idempotent" => {}, "smithy.api#private" => {}}
      end)
      service.add_operation(:delete_ai_prompt, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#DeleteAIPrompt"
        operation.name = "DeleteAIPrompt"
        operation.input = DeleteAIPromptRequest
        operation.output = DeleteAIPromptResponse
        operation.errors << AccessDeniedException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << UnauthorizedException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/assistants/{assistantId}/aiprompts/{aiPromptId}", "method" => "DELETE", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_ai_prompt_version, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#DeleteAIPromptVersion"
        operation.name = "DeleteAIPromptVersion"
        operation.input = DeleteAIPromptVersionRequest
        operation.output = DeleteAIPromptVersionResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << UnauthorizedException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/assistants/{assistantId}/aiprompts/{aiPromptId}/versions/{versionNumber}", "method" => "DELETE", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_assistant, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#DeleteAssistant"
        operation.name = "DeleteAssistant"
        operation.input = DeleteAssistantInput
        operation.output = DeleteAssistantOutput
        operation.errors << AccessDeniedException
        operation.errors << ResourceNotFoundException
        operation.errors << UnauthorizedException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/assistants/{assistantId}", "method" => "DELETE", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_assistant_association, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#DeleteAssistantAssociation"
        operation.name = "DeleteAssistantAssociation"
        operation.input = DeleteAssistantAssociationInput
        operation.output = DeleteAssistantAssociationOutput
        operation.errors << AccessDeniedException
        operation.errors << ResourceNotFoundException
        operation.errors << UnauthorizedException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/assistants/{assistantId}/associations/{assistantAssociationId}", "method" => "DELETE", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_content, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#DeleteContent"
        operation.name = "DeleteContent"
        operation.input = DeleteContentInput
        operation.output = DeleteContentOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << UnauthorizedException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/knowledgeBases/{knowledgeBaseId}/contents/{contentId}", "method" => "DELETE", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_content_association, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#DeleteContentAssociation"
        operation.name = "DeleteContentAssociation"
        operation.input = DeleteContentAssociationRequest
        operation.output = DeleteContentAssociationResponse
        operation.errors << AccessDeniedException
        operation.errors << ResourceNotFoundException
        operation.errors << UnauthorizedException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/knowledgeBases/{knowledgeBaseId}/contents/{contentId}/associations/{contentAssociationId}", "method" => "DELETE", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_import_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#DeleteImportJob"
        operation.name = "DeleteImportJob"
        operation.input = DeleteImportJobRequest
        operation.output = DeleteImportJobResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << UnauthorizedException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/knowledgeBases/{knowledgeBaseId}/importJobs/{importJobId}", "method" => "DELETE", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_knowledge_base, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#DeleteKnowledgeBase"
        operation.name = "DeleteKnowledgeBase"
        operation.input = DeleteKnowledgeBaseInput
        operation.output = DeleteKnowledgeBaseOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << UnauthorizedException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/knowledgeBases/{knowledgeBaseId}", "method" => "DELETE", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_message_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#DeleteMessageTemplate"
        operation.name = "DeleteMessageTemplate"
        operation.input = DeleteMessageTemplateRequest
        operation.output = DeleteMessageTemplateResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/knowledgeBases/{knowledgeBaseId}/messageTemplates/{messageTemplateId}", "method" => "DELETE", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_message_template_attachment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#DeleteMessageTemplateAttachment"
        operation.name = "DeleteMessageTemplateAttachment"
        operation.input = DeleteMessageTemplateAttachmentRequest
        operation.output = DeleteMessageTemplateAttachmentResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/knowledgeBases/{knowledgeBaseId}/messageTemplates/{messageTemplateId}/attachments/{attachmentId}", "method" => "DELETE", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_quick_response, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#DeleteQuickResponse"
        operation.name = "DeleteQuickResponse"
        operation.input = DeleteQuickResponseRequest
        operation.output = DeleteQuickResponseResponse
        operation.errors << AccessDeniedException
        operation.errors << ResourceNotFoundException
        operation.errors << UnauthorizedException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/knowledgeBases/{knowledgeBaseId}/quickResponses/{quickResponseId}", "method" => "DELETE", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_ai_agent, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#GetAIAgent"
        operation.name = "GetAIAgent"
        operation.input = GetAIAgentRequest
        operation.output = GetAIAgentResponse
        operation.errors << AccessDeniedException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << UnauthorizedException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/assistants/{assistantId}/aiagents/{aiAgentId}", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_ai_guardrail, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#GetAIGuardrail"
        operation.name = "GetAIGuardrail"
        operation.input = GetAIGuardrailRequest
        operation.output = GetAIGuardrailResponse
        operation.errors << AccessDeniedException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << UnauthorizedException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/assistants/{assistantId}/aiguardrails/{aiGuardrailId}", "method" => "GET"}, "smithy.api#private" => {}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_ai_prompt, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#GetAIPrompt"
        operation.name = "GetAIPrompt"
        operation.input = GetAIPromptRequest
        operation.output = GetAIPromptResponse
        operation.errors << AccessDeniedException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << UnauthorizedException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/assistants/{assistantId}/aiprompts/{aiPromptId}", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_assistant, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#GetAssistant"
        operation.name = "GetAssistant"
        operation.input = GetAssistantInput
        operation.output = GetAssistantOutput
        operation.errors << AccessDeniedException
        operation.errors << ResourceNotFoundException
        operation.errors << UnauthorizedException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/assistants/{assistantId}", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_assistant_association, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#GetAssistantAssociation"
        operation.name = "GetAssistantAssociation"
        operation.input = GetAssistantAssociationInput
        operation.output = GetAssistantAssociationOutput
        operation.errors << AccessDeniedException
        operation.errors << ResourceNotFoundException
        operation.errors << UnauthorizedException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/assistants/{assistantId}/associations/{assistantAssociationId}", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_content, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#GetContent"
        operation.name = "GetContent"
        operation.input = GetContentInput
        operation.output = GetContentOutput
        operation.errors << AccessDeniedException
        operation.errors << ResourceNotFoundException
        operation.errors << UnauthorizedException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/knowledgeBases/{knowledgeBaseId}/contents/{contentId}", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_content_association, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#GetContentAssociation"
        operation.name = "GetContentAssociation"
        operation.input = GetContentAssociationRequest
        operation.output = GetContentAssociationResponse
        operation.errors << AccessDeniedException
        operation.errors << ResourceNotFoundException
        operation.errors << UnauthorizedException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/knowledgeBases/{knowledgeBaseId}/contents/{contentId}/associations/{contentAssociationId}", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_content_summary, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#GetContentSummary"
        operation.name = "GetContentSummary"
        operation.input = GetContentSummaryInput
        operation.output = GetContentSummaryOutput
        operation.errors << AccessDeniedException
        operation.errors << ResourceNotFoundException
        operation.errors << UnauthorizedException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/knowledgeBases/{knowledgeBaseId}/contents/{contentId}/summary", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_import_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#GetImportJob"
        operation.name = "GetImportJob"
        operation.input = GetImportJobRequest
        operation.output = GetImportJobResponse
        operation.errors << AccessDeniedException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/knowledgeBases/{knowledgeBaseId}/importJobs/{importJobId}", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_knowledge_base, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#GetKnowledgeBase"
        operation.name = "GetKnowledgeBase"
        operation.input = GetKnowledgeBaseInput
        operation.output = GetKnowledgeBaseOutput
        operation.errors << AccessDeniedException
        operation.errors << ResourceNotFoundException
        operation.errors << UnauthorizedException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/knowledgeBases/{knowledgeBaseId}", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_message_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#GetMessageTemplate"
        operation.name = "GetMessageTemplate"
        operation.input = GetMessageTemplateRequest
        operation.output = GetMessageTemplateResponse
        operation.errors << AccessDeniedException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << UnauthorizedException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/knowledgeBases/{knowledgeBaseId}/messageTemplates/{messageTemplateId}", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_next_message, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#GetNextMessage"
        operation.name = "GetNextMessage"
        operation.input = GetNextMessageRequest
        operation.output = GetNextMessageResponse
        operation.errors << AccessDeniedException
        operation.errors << ResourceNotFoundException
        operation.errors << UnprocessableContentException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/assistants/{assistantId}/sessions/{sessionId}/messages/next", "method" => "GET"}, "smithy.api#private" => {}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_quick_response, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#GetQuickResponse"
        operation.name = "GetQuickResponse"
        operation.input = GetQuickResponseRequest
        operation.output = GetQuickResponseResponse
        operation.errors << AccessDeniedException
        operation.errors << ResourceNotFoundException
        operation.errors << UnauthorizedException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/knowledgeBases/{knowledgeBaseId}/quickResponses/{quickResponseId}", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_recommendations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#GetRecommendations"
        operation.name = "GetRecommendations"
        operation.input = GetRecommendationsInput
        operation.output = GetRecommendationsOutput
        operation.errors << AccessDeniedException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#deprecated" => {"message" => "GetRecommendations API will be discontinued starting June 1, 2024. To receive generative responses after March 1, 2024 you will need to create a new Assistant in the Connect console and integrate the Amazon Q in Connect JavaScript library (amazon-q-connectjs) into your applications."}, "smithy.api#http" => {"uri" => "/assistants/{assistantId}/sessions/{sessionId}/recommendations", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_session, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#GetSession"
        operation.name = "GetSession"
        operation.input = GetSessionInput
        operation.output = GetSessionOutput
        operation.errors << AccessDeniedException
        operation.errors << ResourceNotFoundException
        operation.errors << UnauthorizedException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/assistants/{assistantId}/sessions/{sessionId}", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_ai_agent_versions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#ListAIAgentVersions"
        operation.name = "ListAIAgentVersions"
        operation.input = ListAIAgentVersionsRequest
        operation.output = ListAIAgentVersionsResponse
        operation.errors << AccessDeniedException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << UnauthorizedException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/assistants/{assistantId}/aiagents/{aiAgentId}/versions", "method" => "GET"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListAIAgentVersions.new
      end)
      service.add_operation(:list_ai_agents, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#ListAIAgents"
        operation.name = "ListAIAgents"
        operation.input = ListAIAgentsRequest
        operation.output = ListAIAgentsResponse
        operation.errors << AccessDeniedException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << UnauthorizedException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/assistants/{assistantId}/aiagents", "method" => "GET"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListAIAgents.new
      end)
      service.add_operation(:list_ai_guardrail_versions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#ListAIGuardrailVersions"
        operation.name = "ListAIGuardrailVersions"
        operation.input = ListAIGuardrailVersionsRequest
        operation.output = ListAIGuardrailVersionsResponse
        operation.errors << AccessDeniedException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << UnauthorizedException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/assistants/{assistantId}/aiguardrails/{aiGuardrailId}/versions", "method" => "GET"}, "smithy.api#private" => {}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListAIGuardrailVersions.new
      end)
      service.add_operation(:list_ai_guardrails, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#ListAIGuardrails"
        operation.name = "ListAIGuardrails"
        operation.input = ListAIGuardrailsRequest
        operation.output = ListAIGuardrailsResponse
        operation.errors << AccessDeniedException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << UnauthorizedException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/assistants/{assistantId}/aiguardrails", "method" => "GET"}, "smithy.api#private" => {}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListAIGuardrails.new
      end)
      service.add_operation(:list_ai_prompt_versions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#ListAIPromptVersions"
        operation.name = "ListAIPromptVersions"
        operation.input = ListAIPromptVersionsRequest
        operation.output = ListAIPromptVersionsResponse
        operation.errors << AccessDeniedException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << UnauthorizedException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/assistants/{assistantId}/aiprompts/{aiPromptId}/versions", "method" => "GET"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListAIPromptVersions.new
      end)
      service.add_operation(:list_ai_prompts, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#ListAIPrompts"
        operation.name = "ListAIPrompts"
        operation.input = ListAIPromptsRequest
        operation.output = ListAIPromptsResponse
        operation.errors << AccessDeniedException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << UnauthorizedException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/assistants/{assistantId}/aiprompts", "method" => "GET"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListAIPrompts.new
      end)
      service.add_operation(:list_assistant_associations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#ListAssistantAssociations"
        operation.name = "ListAssistantAssociations"
        operation.input = ListAssistantAssociationsInput
        operation.output = ListAssistantAssociationsOutput
        operation.errors << AccessDeniedException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/assistants/{assistantId}/associations", "method" => "GET"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListAssistantAssociations.new
      end)
      service.add_operation(:list_assistants, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#ListAssistants"
        operation.name = "ListAssistants"
        operation.input = ListAssistantsInput
        operation.output = ListAssistantsOutput
        operation.errors << AccessDeniedException
        operation.errors << UnauthorizedException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/assistants", "method" => "GET"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListAssistants.new
      end)
      service.add_operation(:list_content_associations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#ListContentAssociations"
        operation.name = "ListContentAssociations"
        operation.input = ListContentAssociationsRequest
        operation.output = ListContentAssociationsResponse
        operation.errors << AccessDeniedException
        operation.errors << ResourceNotFoundException
        operation.errors << UnauthorizedException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/knowledgeBases/{knowledgeBaseId}/contents/{contentId}/associations", "method" => "GET"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListContentAssociations.new
      end)
      service.add_operation(:list_contents, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#ListContents"
        operation.name = "ListContents"
        operation.input = ListContentsInput
        operation.output = ListContentsOutput
        operation.errors << AccessDeniedException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/knowledgeBases/{knowledgeBaseId}/contents", "method" => "GET"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListContents.new
      end)
      service.add_operation(:list_import_jobs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#ListImportJobs"
        operation.name = "ListImportJobs"
        operation.input = ListImportJobsRequest
        operation.output = ListImportJobsResponse
        operation.errors << AccessDeniedException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/knowledgeBases/{knowledgeBaseId}/importJobs", "method" => "GET"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListImportJobs.new
      end)
      service.add_operation(:list_knowledge_bases, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#ListKnowledgeBases"
        operation.name = "ListKnowledgeBases"
        operation.input = ListKnowledgeBasesInput
        operation.output = ListKnowledgeBasesOutput
        operation.errors << AccessDeniedException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/knowledgeBases", "method" => "GET"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListKnowledgeBases.new
      end)
      service.add_operation(:list_message_template_versions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#ListMessageTemplateVersions"
        operation.name = "ListMessageTemplateVersions"
        operation.input = ListMessageTemplateVersionsRequest
        operation.output = ListMessageTemplateVersionsResponse
        operation.errors << AccessDeniedException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/knowledgeBases/{knowledgeBaseId}/messageTemplates/{messageTemplateId}/versions", "method" => "GET"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListMessageTemplateVersions.new
      end)
      service.add_operation(:list_message_templates, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#ListMessageTemplates"
        operation.name = "ListMessageTemplates"
        operation.input = ListMessageTemplatesRequest
        operation.output = ListMessageTemplatesResponse
        operation.errors << AccessDeniedException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/knowledgeBases/{knowledgeBaseId}/messageTemplates", "method" => "GET"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListMessageTemplates.new
      end)
      service.add_operation(:list_messages, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#ListMessages"
        operation.name = "ListMessages"
        operation.input = ListMessagesRequest
        operation.output = ListMessagesResponse
        operation.errors << AccessDeniedException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/assistants/{assistantId}/sessions/{sessionId}/messages", "method" => "GET"}, "smithy.api#private" => {}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListMessages.new
      end)
      service.add_operation(:list_models, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#ListModels"
        operation.name = "ListModels"
        operation.input = ListModelsRequest
        operation.output = ListModelsResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << UnauthorizedException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/assistants/{assistantId}/models", "method" => "GET"}, "smithy.api#private" => {}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListModels.new
      end)
      service.add_operation(:list_quick_responses, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#ListQuickResponses"
        operation.name = "ListQuickResponses"
        operation.input = ListQuickResponsesRequest
        operation.output = ListQuickResponsesResponse
        operation.errors << AccessDeniedException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/knowledgeBases/{knowledgeBaseId}/quickResponses", "method" => "GET"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListQuickResponses.new
      end)
      service.add_operation(:list_spans, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#ListSpans"
        operation.name = "ListSpans"
        operation.input = ListSpansRequest
        operation.output = ListSpansResponse
        operation.errors << AccessDeniedException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/assistants/{assistantId}/sessions/{sessionId}/spans", "method" => "GET"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListSpans.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceInput
        operation.output = ListTagsForResourceOutput
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#http" => {"uri" => "/tags/{resourceArn}", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:notify_recommendations_received, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#NotifyRecommendationsReceived"
        operation.name = "NotifyRecommendationsReceived"
        operation.input = NotifyRecommendationsReceivedInput
        operation.output = NotifyRecommendationsReceivedOutput
        operation.errors << AccessDeniedException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/assistants/{assistantId}/sessions/{sessionId}/recommendations/notify", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:put_feedback, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#PutFeedback"
        operation.name = "PutFeedback"
        operation.input = PutFeedbackRequest
        operation.output = PutFeedbackResponse
        operation.errors << AccessDeniedException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/assistants/{assistantId}/feedback", "method" => "PUT"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:query_assistant, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#QueryAssistant"
        operation.name = "QueryAssistant"
        operation.input = QueryAssistantInput
        operation.output = QueryAssistantOutput
        operation.errors << AccessDeniedException
        operation.errors << RequestTimeoutException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#deprecated" => {"message" => "QueryAssistant API will be discontinued starting June 1, 2024. To receive generative responses after March 1, 2024 you will need to create a new Assistant in the Connect console and integrate the Amazon Q in Connect JavaScript library (amazon-q-connectjs) into your applications."}, "smithy.api#http" => {"uri" => "/assistants/{assistantId}/query", "method" => "POST"}, "smithy.api#readonly" => {}, "smithy.api#suppress" => ["HttpMethodSemantics"]}
        operation[:paginator] = Paginators::QueryAssistant.new
      end)
      service.add_operation(:remove_assistant_ai_agent, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#RemoveAssistantAIAgent"
        operation.name = "RemoveAssistantAIAgent"
        operation.input = RemoveAssistantAIAgentRequest
        operation.output = RemoveAssistantAIAgentResponse
        operation.errors << AccessDeniedException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/assistants/{assistantId}/aiagentConfiguration", "method" => "DELETE", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:remove_knowledge_base_template_uri, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#RemoveKnowledgeBaseTemplateUri"
        operation.name = "RemoveKnowledgeBaseTemplateUri"
        operation.input = RemoveKnowledgeBaseTemplateUriInput
        operation.output = RemoveKnowledgeBaseTemplateUriOutput
        operation.errors << AccessDeniedException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/knowledgeBases/{knowledgeBaseId}/templateUri", "method" => "DELETE", "code" => 204}}
      end)
      service.add_operation(:render_message_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#RenderMessageTemplate"
        operation.name = "RenderMessageTemplate"
        operation.input = RenderMessageTemplateRequest
        operation.output = RenderMessageTemplateResponse
        operation.errors << AccessDeniedException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/knowledgeBases/{knowledgeBaseId}/messageTemplates/{messageTemplateId}/render", "method" => "POST"}}
      end)
      service.add_operation(:retrieve, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#Retrieve"
        operation.name = "Retrieve"
        operation.input = RetrieveRequest
        operation.output = RetrieveResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << DependencyFailedException
        operation.errors << RequestTimeoutException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/assistants/{assistantId}/retrieve", "method" => "POST"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:search_content, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#SearchContent"
        operation.name = "SearchContent"
        operation.input = SearchContentInput
        operation.output = SearchContentOutput
        operation.errors << AccessDeniedException
        operation.errors << ResourceNotFoundException
        operation.errors << UnauthorizedException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/knowledgeBases/{knowledgeBaseId}/search", "method" => "POST"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::SearchContent.new
      end)
      service.add_operation(:search_message_templates, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#SearchMessageTemplates"
        operation.name = "SearchMessageTemplates"
        operation.input = SearchMessageTemplatesRequest
        operation.output = SearchMessageTemplatesResponse
        operation.errors << AccessDeniedException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << UnauthorizedException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/knowledgeBases/{knowledgeBaseId}/search/messageTemplates", "method" => "POST"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::SearchMessageTemplates.new
      end)
      service.add_operation(:search_quick_responses, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#SearchQuickResponses"
        operation.name = "SearchQuickResponses"
        operation.input = SearchQuickResponsesRequest
        operation.output = SearchQuickResponsesResponse
        operation.errors << AccessDeniedException
        operation.errors << RequestTimeoutException
        operation.errors << ResourceNotFoundException
        operation.errors << UnauthorizedException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/knowledgeBases/{knowledgeBaseId}/search/quickResponses", "method" => "POST"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::SearchQuickResponses.new
      end)
      service.add_operation(:search_sessions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#SearchSessions"
        operation.name = "SearchSessions"
        operation.input = SearchSessionsInput
        operation.output = SearchSessionsOutput
        operation.errors << AccessDeniedException
        operation.errors << ResourceNotFoundException
        operation.errors << UnauthorizedException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/assistants/{assistantId}/searchSessions", "method" => "POST"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::SearchSessions.new
      end)
      service.add_operation(:send_message, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#SendMessage"
        operation.name = "SendMessage"
        operation.input = SendMessageRequest
        operation.output = SendMessageResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << DependencyFailedException
        operation.errors << RequestTimeoutException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/assistants/{assistantId}/sessions/{sessionId}/message", "method" => "POST"}, "smithy.api#idempotent" => {}, "smithy.api#private" => {}}
      end)
      service.add_operation(:start_content_upload, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#StartContentUpload"
        operation.name = "StartContentUpload"
        operation.input = StartContentUploadInput
        operation.output = StartContentUploadOutput
        operation.errors << AccessDeniedException
        operation.errors << ResourceNotFoundException
        operation.errors << UnauthorizedException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/knowledgeBases/{knowledgeBaseId}/upload", "method" => "POST"}}
      end)
      service.add_operation(:start_import_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#StartImportJob"
        operation.name = "StartImportJob"
        operation.input = StartImportJobRequest
        operation.output = StartImportJobResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << UnauthorizedException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/knowledgeBases/{knowledgeBaseId}/importJobs", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceInput
        operation.output = TagResourceOutput
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyTagsException
        operation.traits = {"smithy.api#http" => {"uri" => "/tags/{resourceArn}", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceInput
        operation.output = UntagResourceOutput
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#http" => {"uri" => "/tags/{resourceArn}", "method" => "DELETE"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_ai_agent, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#UpdateAIAgent"
        operation.name = "UpdateAIAgent"
        operation.input = UpdateAIAgentRequest
        operation.output = UpdateAIAgentResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << UnauthorizedException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/assistants/{assistantId}/aiagents/{aiAgentId}", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_ai_guardrail, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#UpdateAIGuardrail"
        operation.name = "UpdateAIGuardrail"
        operation.input = UpdateAIGuardrailRequest
        operation.output = UpdateAIGuardrailResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << UnauthorizedException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/assistants/{assistantId}/aiguardrails/{aiGuardrailId}", "method" => "POST"}, "smithy.api#idempotent" => {}, "smithy.api#private" => {}}
      end)
      service.add_operation(:update_ai_prompt, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#UpdateAIPrompt"
        operation.name = "UpdateAIPrompt"
        operation.input = UpdateAIPromptRequest
        operation.output = UpdateAIPromptResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << UnauthorizedException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/assistants/{assistantId}/aiprompts/{aiPromptId}", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_assistant_ai_agent, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#UpdateAssistantAIAgent"
        operation.name = "UpdateAssistantAIAgent"
        operation.input = UpdateAssistantAIAgentRequest
        operation.output = UpdateAssistantAIAgentResponse
        operation.errors << AccessDeniedException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/assistants/{assistantId}/aiagentConfiguration", "method" => "POST"}}
      end)
      service.add_operation(:update_content, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#UpdateContent"
        operation.name = "UpdateContent"
        operation.input = UpdateContentInput
        operation.output = UpdateContentOutput
        operation.errors << AccessDeniedException
        operation.errors << PreconditionFailedException
        operation.errors << ResourceNotFoundException
        operation.errors << UnauthorizedException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/knowledgeBases/{knowledgeBaseId}/contents/{contentId}", "method" => "POST"}}
      end)
      service.add_operation(:update_knowledge_base_template_uri, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#UpdateKnowledgeBaseTemplateUri"
        operation.name = "UpdateKnowledgeBaseTemplateUri"
        operation.input = UpdateKnowledgeBaseTemplateUriInput
        operation.output = UpdateKnowledgeBaseTemplateUriOutput
        operation.errors << AccessDeniedException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/knowledgeBases/{knowledgeBaseId}/templateUri", "method" => "POST"}}
      end)
      service.add_operation(:update_message_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#UpdateMessageTemplate"
        operation.name = "UpdateMessageTemplate"
        operation.input = UpdateMessageTemplateRequest
        operation.output = UpdateMessageTemplateResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/knowledgeBases/{knowledgeBaseId}/messageTemplates/{messageTemplateId}", "method" => "POST"}}
      end)
      service.add_operation(:update_message_template_metadata, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#UpdateMessageTemplateMetadata"
        operation.name = "UpdateMessageTemplateMetadata"
        operation.input = UpdateMessageTemplateMetadataRequest
        operation.output = UpdateMessageTemplateMetadataResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/knowledgeBases/{knowledgeBaseId}/messageTemplates/{messageTemplateId}/metadata", "method" => "POST"}}
      end)
      service.add_operation(:update_quick_response, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#UpdateQuickResponse"
        operation.name = "UpdateQuickResponse"
        operation.input = UpdateQuickResponseRequest
        operation.output = UpdateQuickResponseResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << PreconditionFailedException
        operation.errors << ResourceNotFoundException
        operation.errors << UnauthorizedException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/knowledgeBases/{knowledgeBaseId}/quickResponses/{quickResponseId}", "method" => "POST"}}
      end)
      service.add_operation(:update_session, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#UpdateSession"
        operation.name = "UpdateSession"
        operation.input = UpdateSessionRequest
        operation.output = UpdateSessionResponse
        operation.errors << AccessDeniedException
        operation.errors << ResourceNotFoundException
        operation.errors << UnauthorizedException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/assistants/{assistantId}/sessions/{sessionId}", "method" => "POST"}}
      end)
      service.add_operation(:update_session_data, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qconnect#UpdateSessionData"
        operation.name = "UpdateSessionData"
        operation.input = UpdateSessionDataRequest
        operation.output = UpdateSessionDataResponse
        operation.errors << AccessDeniedException
        operation.errors << ResourceNotFoundException
        operation.errors << UnauthorizedException
        operation.errors << ValidationException
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
