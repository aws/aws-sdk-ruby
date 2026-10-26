# frozen_string_literal: true

# This is generated code!

module Aws::BedrockAgentRuntime
  # This module contains a schema composed of shapes used by the client.
  module Schema

    APISchema = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.bedrockagentruntime#APISchema", name: "APISchema")
    AWSResourceARN = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentruntime#AWSResourceARN", name: "AWSResourceARN", traits: {"smithy.api#length" => {"max" => 2048}, "smithy.api#pattern" => "^arn:aws(-[^:]+)?:bedrock:[a-z0-9-]{1,20}:[0-9]{12}:agent/[0-9a-zA-Z]{10}$"})
    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    ActionGroupExecutor = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.bedrockagentruntime#ActionGroupExecutor", name: "ActionGroupExecutor")
    ActionGroupInvocationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#ActionGroupInvocationInput", name: "ActionGroupInvocationInput")
    ActionGroupInvocationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#ActionGroupInvocationOutput", name: "ActionGroupInvocationOutput")
    ActionGroupName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentruntime#ActionGroupName", name: "ActionGroupName", traits: {"smithy.api#sensitive" => {}})
    ActionGroupOutputString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentruntime#ActionGroupOutputString", name: "ActionGroupOutputString", traits: {"smithy.api#sensitive" => {}})
    ActionGroupSignature = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockagentruntime#ActionGroupSignature", name: "ActionGroupSignature")
    ActionGroupSignatureParams = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.bedrockagentruntime#ActionGroupSignatureParams", name: "ActionGroupSignatureParams")
    ActionInvocationType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockagentruntime#ActionInvocationType", name: "ActionInvocationType")
    AdditionalModelRequestFields = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.bedrockagentruntime#AdditionalModelRequestFields", name: "AdditionalModelRequestFields")
    AdditionalModelRequestFieldsKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentruntime#AdditionalModelRequestFieldsKey", name: "AdditionalModelRequestFieldsKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    AdditionalModelRequestFieldsValue = ::Smithy::Schema::Shapes::DocumentShape.new(id: "com.amazonaws.bedrockagentruntime#AdditionalModelRequestFieldsValue", name: "AdditionalModelRequestFieldsValue")
    AgentActionGroup = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#AgentActionGroup", name: "AgentActionGroup")
    AgentActionGroups = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockagentruntime#AgentActionGroups", name: "AgentActionGroups")
    AgentAliasArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentruntime#AgentAliasArn", name: "AgentAliasArn", traits: {"smithy.api#length" => {"max" => 2048}, "smithy.api#pattern" => "^arn:aws(-[^:]+)?:bedrock:[a-z0-9-]{1,20}:[0-9]{12}:agent-alias/[0-9a-zA-Z]{10}/[0-9a-zA-Z]{10}$"})
    AgentAliasId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentruntime#AgentAliasId", name: "AgentAliasId", traits: {"smithy.api#length" => {"max" => 10}, "smithy.api#pattern" => "^[0-9a-zA-Z]+$"})
    AgentCollaboration = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockagentruntime#AgentCollaboration", name: "AgentCollaboration")
    AgentCollaboratorInputPayload = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#AgentCollaboratorInputPayload", name: "AgentCollaboratorInputPayload")
    AgentCollaboratorInvocationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#AgentCollaboratorInvocationInput", name: "AgentCollaboratorInvocationInput")
    AgentCollaboratorInvocationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#AgentCollaboratorInvocationOutput", name: "AgentCollaboratorInvocationOutput")
    AgentCollaboratorOutputPayload = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#AgentCollaboratorOutputPayload", name: "AgentCollaboratorOutputPayload")
    AgentCollaboratorPayloadString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentruntime#AgentCollaboratorPayloadString", name: "AgentCollaboratorPayloadString", traits: {"smithy.api#sensitive" => {}})
    AgentCoreMemoryActorId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentruntime#AgentCoreMemoryActorId", name: "AgentCoreMemoryActorId", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z0-9][a-zA-Z0-9\\-_/]*(?::[a-zA-Z0-9\\-_/]+)*[a-zA-Z0-9\\-_/]*$"})
    AgentCoreMemoryId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentruntime#AgentCoreMemoryId", name: "AgentCoreMemoryId", traits: {"smithy.api#length" => {"min" => 12, "max" => 111}, "smithy.api#pattern" => "^[a-zA-Z][a-zA-Z0-9\\-_]{0,99}-[a-zA-Z0-9]{10}$"})
    AgentCoreMemorySessionId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentruntime#AgentCoreMemorySessionId", name: "AgentCoreMemorySessionId", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[a-zA-Z0-9][a-zA-Z0-9\\-_]*$"})
    AgentId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentruntime#AgentId", name: "AgentId", traits: {"smithy.api#length" => {"max" => 10}, "smithy.api#pattern" => "^[0-9a-zA-Z]+$"})
    AgentTraces = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockagentruntime#AgentTraces", name: "AgentTraces")
    AgentVersion = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentruntime#AgentVersion", name: "AgentVersion", traits: {"smithy.api#length" => {"min" => 1, "max" => 5}, "smithy.api#pattern" => "^(DRAFT|[0-9]{0,4}[1-9][0-9]{0,4})$"})
    AgenticRetrieveAction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#AgenticRetrieveAction", name: "AgenticRetrieveAction")
    AgenticRetrieveActionDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#AgenticRetrieveActionDetails", name: "AgenticRetrieveActionDetails")
    AgenticRetrieveActions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockagentruntime#AgenticRetrieveActions", name: "AgenticRetrieveActions")
    AgenticRetrieveBedrockGuardrailConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#AgenticRetrieveBedrockGuardrailConfiguration", name: "AgenticRetrieveBedrockGuardrailConfiguration")
    AgenticRetrieveBedrockRerankingConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#AgenticRetrieveBedrockRerankingConfiguration", name: "AgenticRetrieveBedrockRerankingConfiguration")
    AgenticRetrieveBedrockRerankingModelConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#AgenticRetrieveBedrockRerankingModelConfiguration", name: "AgenticRetrieveBedrockRerankingModelConfiguration")
    AgenticRetrieveCitation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#AgenticRetrieveCitation", name: "AgenticRetrieveCitation")
    AgenticRetrieveCitationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockagentruntime#AgenticRetrieveCitationList", name: "AgenticRetrieveCitationList")
    AgenticRetrieveCitationReference = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#AgenticRetrieveCitationReference", name: "AgenticRetrieveCitationReference")
    AgenticRetrieveCitationReferenceList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockagentruntime#AgenticRetrieveCitationReferenceList", name: "AgenticRetrieveCitationReferenceList")
    AgenticRetrieveConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#AgenticRetrieveConfiguration", name: "AgenticRetrieveConfiguration")
    AgenticRetrieveFailure = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#AgenticRetrieveFailure", name: "AgenticRetrieveFailure")
    AgenticRetrieveFailures = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockagentruntime#AgenticRetrieveFailures", name: "AgenticRetrieveFailures", traits: {"smithy.api#length" => {"min" => 1}})
    AgenticRetrieveFullDocExpansionDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#AgenticRetrieveFullDocExpansionDetails", name: "AgenticRetrieveFullDocExpansionDetails")
    AgenticRetrieveGeneratedResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#AgenticRetrieveGeneratedResponse", name: "AgenticRetrieveGeneratedResponse")
    AgenticRetrieveGuardrailWarning = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#AgenticRetrieveGuardrailWarning", name: "AgenticRetrieveGuardrailWarning")
    AgenticRetrieveMemoryConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#AgenticRetrieveMemoryConfiguration", name: "AgenticRetrieveMemoryConfiguration")
    AgenticRetrieveMemoryMetadataFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#AgenticRetrieveMemoryMetadataFilter", name: "AgenticRetrieveMemoryMetadataFilter")
    AgenticRetrieveMemoryMetadataFilterLeft = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.bedrockagentruntime#AgenticRetrieveMemoryMetadataFilterLeft", name: "AgenticRetrieveMemoryMetadataFilterLeft")
    AgenticRetrieveMemoryMetadataFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockagentruntime#AgenticRetrieveMemoryMetadataFilterList", name: "AgenticRetrieveMemoryMetadataFilterList")
    AgenticRetrieveMemoryMetadataFilterOperator = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockagentruntime#AgenticRetrieveMemoryMetadataFilterOperator", name: "AgenticRetrieveMemoryMetadataFilterOperator")
    AgenticRetrieveMemoryMetadataFilterRight = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.bedrockagentruntime#AgenticRetrieveMemoryMetadataFilterRight", name: "AgenticRetrieveMemoryMetadataFilterRight")
    AgenticRetrieveMemoryMetadataKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentruntime#AgenticRetrieveMemoryMetadataKey", name: "AgenticRetrieveMemoryMetadataKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9\\s._:/=+@-]*$"})
    AgenticRetrieveMemoryMetadataStringList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockagentruntime#AgenticRetrieveMemoryMetadataStringList", name: "AgenticRetrieveMemoryMetadataStringList")
    AgenticRetrieveMemoryMetadataStringListItem = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentruntime#AgenticRetrieveMemoryMetadataStringListItem", name: "AgenticRetrieveMemoryMetadataStringListItem", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9\\s._:/=+@-]*$"})
    AgenticRetrieveMemoryMetadataStringValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentruntime#AgenticRetrieveMemoryMetadataStringValue", name: "AgenticRetrieveMemoryMetadataStringValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9\\s._:/=+@-]*$"})
    AgenticRetrieveMemoryMetadataValue = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.bedrockagentruntime#AgenticRetrieveMemoryMetadataValue", name: "AgenticRetrieveMemoryMetadataValue")
    AgenticRetrieveMemoryPersistenceMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockagentruntime#AgenticRetrieveMemoryPersistenceMode", name: "AgenticRetrieveMemoryPersistenceMode")
    AgenticRetrieveMemoryRetrievalConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#AgenticRetrieveMemoryRetrievalConfig", name: "AgenticRetrieveMemoryRetrievalConfig")
    AgenticRetrieveMemoryRetrievalConfigList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockagentruntime#AgenticRetrieveMemoryRetrievalConfigList", name: "AgenticRetrieveMemoryRetrievalConfigList")
    AgenticRetrieveMemoryRetrieveDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#AgenticRetrieveMemoryRetrieveDetails", name: "AgenticRetrieveMemoryRetrieveDetails")
    AgenticRetrieveMemorySessionBinding = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#AgenticRetrieveMemorySessionBinding", name: "AgenticRetrieveMemorySessionBinding")
    AgenticRetrieveMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#AgenticRetrieveMessage", name: "AgenticRetrieveMessage")
    AgenticRetrieveMessageContent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#AgenticRetrieveMessageContent", name: "AgenticRetrieveMessageContent", traits: {"smithy.api#sensitive" => {}})
    AgenticRetrieveMessages = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockagentruntime#AgenticRetrieveMessages", name: "AgenticRetrieveMessages")
    AgenticRetrieveMetadata = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.bedrockagentruntime#AgenticRetrieveMetadata", name: "AgenticRetrieveMetadata")
    AgenticRetrievePolicyConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#AgenticRetrievePolicyConfiguration", name: "AgenticRetrievePolicyConfiguration")
    AgenticRetrieveRerankingConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#AgenticRetrieveRerankingConfiguration", name: "AgenticRetrieveRerankingConfiguration")
    AgenticRetrieveRerankingConfigurationType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockagentruntime#AgenticRetrieveRerankingConfigurationType", name: "AgenticRetrieveRerankingConfigurationType")
    AgenticRetrieveRerankingModelType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockagentruntime#AgenticRetrieveRerankingModelType", name: "AgenticRetrieveRerankingModelType")
    AgenticRetrieveResponseEvent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#AgenticRetrieveResponseEvent", name: "AgenticRetrieveResponseEvent")
    AgenticRetrieveResultEvent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#AgenticRetrieveResultEvent", name: "AgenticRetrieveResultEvent")
    AgenticRetrieveResultItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#AgenticRetrieveResultItem", name: "AgenticRetrieveResultItem")
    AgenticRetrieveResults = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockagentruntime#AgenticRetrieveResults", name: "AgenticRetrieveResults")
    AgenticRetrieveSourceMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#AgenticRetrieveSourceMetadata", name: "AgenticRetrieveSourceMetadata")
    AgenticRetrieveSourceMetadataList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockagentruntime#AgenticRetrieveSourceMetadataList", name: "AgenticRetrieveSourceMetadataList")
    AgenticRetrieveSourceRetriever = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#AgenticRetrieveSourceRetriever", name: "AgenticRetrieveSourceRetriever")
    AgenticRetrieveSourceRetrieverList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockagentruntime#AgenticRetrieveSourceRetrieverList", name: "AgenticRetrieveSourceRetrieverList")
    AgenticRetrieveStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockagentruntime#AgenticRetrieveStatus", name: "AgenticRetrieveStatus")
    AgenticRetrieveStep = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockagentruntime#AgenticRetrieveStep", name: "AgenticRetrieveStep")
    AgenticRetrieveStreamRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#AgenticRetrieveStreamRequest", name: "AgenticRetrieveStreamRequest")
    AgenticRetrieveStreamResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#AgenticRetrieveStreamResponse", name: "AgenticRetrieveStreamResponse")
    AgenticRetrieveStreamResponseOutput = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.bedrockagentruntime#AgenticRetrieveStreamResponseOutput", name: "AgenticRetrieveStreamResponseOutput", traits: {"smithy.api#streaming" => {}})
    AgenticRetrieveTraceEvent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#AgenticRetrieveTraceEvent", name: "AgenticRetrieveTraceEvent")
    AgenticRetrieveTraceEventAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#AgenticRetrieveTraceEventAttributes", name: "AgenticRetrieveTraceEventAttributes")
    AgenticRetrieveTraceResultItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#AgenticRetrieveTraceResultItem", name: "AgenticRetrieveTraceResultItem")
    AgenticRetrieveTraceResults = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockagentruntime#AgenticRetrieveTraceResults", name: "AgenticRetrieveTraceResults")
    AgenticRetrieveType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockagentruntime#AgenticRetrieveType", name: "AgenticRetrieveType")
    AgenticRetrieveWarning = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.bedrockagentruntime#AgenticRetrieveWarning", name: "AgenticRetrieveWarning")
    AgenticRetrieveWarningMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#AgenticRetrieveWarningMessage", name: "AgenticRetrieveWarningMessage")
    AgenticRetrieveWarnings = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockagentruntime#AgenticRetrieveWarnings", name: "AgenticRetrieveWarnings", traits: {"smithy.api#length" => {"min" => 1}})
    AgenticRetriever = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#AgenticRetriever", name: "AgenticRetriever")
    AgenticRetrievers = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockagentruntime#AgenticRetrievers", name: "AgenticRetrievers")
    AnalyzePromptEvent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#AnalyzePromptEvent", name: "AnalyzePromptEvent", traits: {"smithy.api#sensitive" => {}})
    ApiContentMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.bedrockagentruntime#ApiContentMap", name: "ApiContentMap")
    ApiInvocationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#ApiInvocationInput", name: "ApiInvocationInput")
    ApiParameter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#ApiParameter", name: "ApiParameter")
    ApiParameters = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockagentruntime#ApiParameters", name: "ApiParameters")
    ApiPath = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentruntime#ApiPath", name: "ApiPath", traits: {"smithy.api#sensitive" => {}})
    ApiRequestBody = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#ApiRequestBody", name: "ApiRequestBody")
    ApiResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#ApiResult", name: "ApiResult")
    AttributeType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockagentruntime#AttributeType", name: "AttributeType")
    Attribution = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#Attribution", name: "Attribution")
    AudioSegment = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#AudioSegment", name: "AudioSegment")
    BadGatewayException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#BadGatewayException", name: "BadGatewayException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 502})
    BasePromptTemplate = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentruntime#BasePromptTemplate", name: "BasePromptTemplate", traits: {"smithy.api#length" => {"min" => 1, "max" => 100000}, "smithy.api#sensitive" => {}})
    BedrockFoundationModelConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#BedrockFoundationModelConfiguration", name: "BedrockFoundationModelConfiguration")
    BedrockFoundationModelModelConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#BedrockFoundationModelModelConfiguration", name: "BedrockFoundationModelModelConfiguration")
    BedrockModelArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentruntime#BedrockModelArn", name: "BedrockModelArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^(arn:aws(-[^:]+)?:(bedrock|sagemaker):[a-z0-9-]{1,20}:([0-9]{12})?:([a-z-]+/)?)?([a-z0-9.-]{1,63}){0,2}(([:][a-z0-9-]{1,63}){0,2})?(/[a-z0-9]{1,12})?$"})
    BedrockModelConfigurations = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#BedrockModelConfigurations", name: "BedrockModelConfigurations")
    BedrockRerankingConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#BedrockRerankingConfiguration", name: "BedrockRerankingConfiguration")
    BedrockRerankingModelArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentruntime#BedrockRerankingModelArn", name: "BedrockRerankingModelArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^(arn:aws(-[^:]+)?:bedrock:[a-z0-9-]{1,20}::foundation-model/(.*))?$"})
    BedrockRerankingModelConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#BedrockRerankingModelConfiguration", name: "BedrockRerankingModelConfiguration")
    BedrockSessionContentBlock = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.bedrockagentruntime#BedrockSessionContentBlock", name: "BedrockSessionContentBlock", traits: {"smithy.api#sensitive" => {}})
    BedrockSessionContentBlocks = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockagentruntime#BedrockSessionContentBlocks", name: "BedrockSessionContentBlocks", traits: {"smithy.api#length" => {"min" => 1}})
    ByteContentBlob = ::Smithy::Schema::Shapes::BlobShape.new(id: "com.amazonaws.bedrockagentruntime#ByteContentBlob", name: "ByteContentBlob", traits: {"smithy.api#length" => {"min" => 1, "max" => 10485760}, "smithy.api#sensitive" => {}})
    ByteContentDoc = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#ByteContentDoc", name: "ByteContentDoc")
    ByteContentFile = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#ByteContentFile", name: "ByteContentFile")
    Caller = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.bedrockagentruntime#Caller", name: "Caller")
    CallerChain = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockagentruntime#CallerChain", name: "CallerChain")
    CheckIngestedDocumentAclRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#CheckIngestedDocumentAclRequest", name: "CheckIngestedDocumentAclRequest")
    CheckIngestedDocumentAclResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#CheckIngestedDocumentAclResponse", name: "CheckIngestedDocumentAclResponse")
    Citation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#Citation", name: "Citation")
    CitationEvent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#CitationEvent", name: "CitationEvent")
    Citations = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockagentruntime#Citations", name: "Citations")
    CodeInterpreterInvocationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#CodeInterpreterInvocationInput", name: "CodeInterpreterInvocationInput")
    CodeInterpreterInvocationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#CodeInterpreterInvocationOutput", name: "CodeInterpreterInvocationOutput")
    CollaborationInstruction = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentruntime#CollaborationInstruction", name: "CollaborationInstruction", traits: {"smithy.api#length" => {"min" => 1, "max" => 4000}, "smithy.api#sensitive" => {}})
    Collaborator = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#Collaborator", name: "Collaborator")
    CollaboratorConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#CollaboratorConfiguration", name: "CollaboratorConfiguration")
    CollaboratorConfigurations = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockagentruntime#CollaboratorConfigurations", name: "CollaboratorConfigurations")
    Collaborators = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockagentruntime#Collaborators", name: "Collaborators")
    ConditionResultEvent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#ConditionResultEvent", name: "ConditionResultEvent", traits: {"smithy.api#sensitive" => {}})
    ConfirmationState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockagentruntime#ConfirmationState", name: "ConfirmationState")
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ContentBlock = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.bedrockagentruntime#ContentBlock", name: "ContentBlock", traits: {"smithy.api#sensitive" => {}})
    ContentBlocks = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockagentruntime#ContentBlocks", name: "ContentBlocks")
    ContentBody = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#ContentBody", name: "ContentBody")
    ContentMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.bedrockagentruntime#ContentMap", name: "ContentMap")
    ContentType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentruntime#ContentType", name: "ContentType", traits: {"smithy.api#pattern" => "[a-z]{1,20}/.{1,20}"})
    ConversationHistory = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#ConversationHistory", name: "ConversationHistory")
    ConversationRole = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockagentruntime#ConversationRole", name: "ConversationRole")
    CreateInvocationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#CreateInvocationRequest", name: "CreateInvocationRequest")
    CreateInvocationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#CreateInvocationResponse", name: "CreateInvocationResponse")
    CreateSessionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#CreateSessionRequest", name: "CreateSessionRequest")
    CreateSessionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#CreateSessionResponse", name: "CreateSessionResponse")
    CreationMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockagentruntime#CreationMode", name: "CreationMode")
    CustomControlMethod = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockagentruntime#CustomControlMethod", name: "CustomControlMethod")
    CustomOrchestration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#CustomOrchestration", name: "CustomOrchestration")
    CustomOrchestrationTrace = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#CustomOrchestrationTrace", name: "CustomOrchestrationTrace", traits: {"smithy.api#sensitive" => {}})
    CustomOrchestrationTraceEvent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#CustomOrchestrationTraceEvent", name: "CustomOrchestrationTraceEvent", traits: {"smithy.api#sensitive" => {}})
    DataSourceId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentruntime#DataSourceId", name: "DataSourceId", traits: {"smithy.api#length" => {"max" => 10}, "smithy.api#pattern" => "^[0-9a-zA-Z]+$"})
    DateTimestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.bedrockagentruntime#DateTimestamp", name: "DateTimestamp", traits: {"smithy.api#timestampFormat" => "date-time"})
    DeleteAgentMemoryRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#DeleteAgentMemoryRequest", name: "DeleteAgentMemoryRequest")
    DeleteAgentMemoryResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#DeleteAgentMemoryResponse", name: "DeleteAgentMemoryResponse")
    DeleteSessionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#DeleteSessionRequest", name: "DeleteSessionRequest")
    DeleteSessionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#DeleteSessionResponse", name: "DeleteSessionResponse")
    DependencyFailedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#DependencyFailedException", name: "DependencyFailedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 424})
    DocumentAcl = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#DocumentAcl", name: "DocumentAcl", traits: {"smithy.api#sensitive" => {}})
    DocumentAclCondition = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#DocumentAclCondition", name: "DocumentAclCondition")
    DocumentAclConditionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockagentruntime#DocumentAclConditionList", name: "DocumentAclConditionList")
    DocumentAclGroup = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#DocumentAclGroup", name: "DocumentAclGroup")
    DocumentAclGroupList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockagentruntime#DocumentAclGroupList", name: "DocumentAclGroupList")
    DocumentAclMemberRelation = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockagentruntime#DocumentAclMemberRelation", name: "DocumentAclMemberRelation")
    DocumentAclMembership = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#DocumentAclMembership", name: "DocumentAclMembership")
    DocumentAclMembershipType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockagentruntime#DocumentAclMembershipType", name: "DocumentAclMembershipType")
    DocumentAclUser = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#DocumentAclUser", name: "DocumentAclUser")
    DocumentAclUserList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockagentruntime#DocumentAclUserList", name: "DocumentAclUserList")
    DocumentId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentruntime#DocumentId", name: "DocumentId", traits: {"smithy.api#length" => {"min" => 1, "max" => 1825}, "smithy.api#pattern" => "^\\P{C}*$"})
    DocumentOutputFormat = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockagentruntime#DocumentOutputFormat", name: "DocumentOutputFormat")
    EndSessionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#EndSessionRequest", name: "EndSessionRequest")
    EndSessionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#EndSessionResponse", name: "EndSessionResponse")
    ExecutionType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockagentruntime#ExecutionType", name: "ExecutionType")
    ExternalSource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#ExternalSource", name: "ExternalSource")
    ExternalSourceType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockagentruntime#ExternalSourceType", name: "ExternalSourceType")
    ExternalSources = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockagentruntime#ExternalSources", name: "ExternalSources", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    ExternalSourcesGenerationConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#ExternalSourcesGenerationConfiguration", name: "ExternalSourcesGenerationConfiguration")
    ExternalSourcesRetrieveAndGenerateConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#ExternalSourcesRetrieveAndGenerateConfiguration", name: "ExternalSourcesRetrieveAndGenerateConfiguration")
    FailureReasonString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentruntime#FailureReasonString", name: "FailureReasonString", traits: {"smithy.api#sensitive" => {}})
    FailureTrace = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#FailureTrace", name: "FailureTrace", traits: {"smithy.api#sensitive" => {}})
    FieldForReranking = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#FieldForReranking", name: "FieldForReranking")
    FieldsForReranking = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockagentruntime#FieldsForReranking", name: "FieldsForReranking", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#sensitive" => {}})
    FileBody = ::Smithy::Schema::Shapes::BlobShape.new(id: "com.amazonaws.bedrockagentruntime#FileBody", name: "FileBody", traits: {"smithy.api#length" => {"max" => 1000000}, "smithy.api#sensitive" => {}})
    FilePart = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#FilePart", name: "FilePart")
    FileSource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#FileSource", name: "FileSource")
    FileSourceType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockagentruntime#FileSourceType", name: "FileSourceType")
    FileUseCase = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockagentruntime#FileUseCase", name: "FileUseCase")
    Files = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockagentruntime#Files", name: "Files")
    FilterAttribute = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#FilterAttribute", name: "FilterAttribute")
    FilterKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentruntime#FilterKey", name: "FilterKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    FilterValue = ::Smithy::Schema::Shapes::DocumentShape.new(id: "com.amazonaws.bedrockagentruntime#FilterValue", name: "FilterValue")
    FinalResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#FinalResponse", name: "FinalResponse")
    FinalResponseString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentruntime#FinalResponseString", name: "FinalResponseString", traits: {"smithy.api#sensitive" => {}})
    FlowAliasIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentruntime#FlowAliasIdentifier", name: "FlowAliasIdentifier", traits: {"smithy.api#length" => {"max" => 2048}, "smithy.api#pattern" => "^(arn:aws:bedrock:[a-z0-9-]{1,20}:[0-9]{12}:flow/[0-9a-zA-Z]{10}/alias/[0-9a-zA-Z]{10})|(\\bTSTALIASID\\b|[0-9a-zA-Z]+)$"})
    FlowCompletionEvent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#FlowCompletionEvent", name: "FlowCompletionEvent", traits: {"smithy.api#sensitive" => {}})
    FlowCompletionReason = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockagentruntime#FlowCompletionReason", name: "FlowCompletionReason")
    FlowControlNodeType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockagentruntime#FlowControlNodeType", name: "FlowControlNodeType")
    FlowErrorCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockagentruntime#FlowErrorCode", name: "FlowErrorCode")
    FlowExecutionContent = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.bedrockagentruntime#FlowExecutionContent", name: "FlowExecutionContent", traits: {"smithy.api#sensitive" => {}})
    FlowExecutionError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#FlowExecutionError", name: "FlowExecutionError")
    FlowExecutionErrorType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockagentruntime#FlowExecutionErrorType", name: "FlowExecutionErrorType")
    FlowExecutionErrors = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockagentruntime#FlowExecutionErrors", name: "FlowExecutionErrors")
    FlowExecutionEvent = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.bedrockagentruntime#FlowExecutionEvent", name: "FlowExecutionEvent")
    FlowExecutionEventType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockagentruntime#FlowExecutionEventType", name: "FlowExecutionEventType")
    FlowExecutionEvents = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockagentruntime#FlowExecutionEvents", name: "FlowExecutionEvents", traits: {"smithy.api#length" => {"max" => 10}})
    FlowExecutionId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentruntime#FlowExecutionId", name: "FlowExecutionId", traits: {"smithy.api#length" => {"min" => 2, "max" => 100}, "smithy.api#pattern" => "^[0-9a-zA-Z._:-]+$"})
    FlowExecutionIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentruntime#FlowExecutionIdentifier", name: "FlowExecutionIdentifier", traits: {"smithy.api#length" => {"max" => 2048}, "smithy.api#pattern" => "^[a-zA-Z0-9-]{1,36}$|^(arn:aws:bedrock:[a-z0-9-]{1,20}:[0-9]{12}:flow/[0-9a-zA-Z]{10}/alias/[0-9a-zA-Z]{10}/execution/[a-zA-Z0-9-]{1,36})$"})
    FlowExecutionInputEvent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#FlowExecutionInputEvent", name: "FlowExecutionInputEvent", traits: {"smithy.api#sensitive" => {}})
    FlowExecutionName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentruntime#FlowExecutionName", name: "FlowExecutionName", traits: {"smithy.api#length" => {"max" => 36}, "smithy.api#pattern" => "^[a-zA-Z0-9-]{1,36}$"})
    FlowExecutionOutputEvent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#FlowExecutionOutputEvent", name: "FlowExecutionOutputEvent", traits: {"smithy.api#sensitive" => {}})
    FlowExecutionRoleArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentruntime#FlowExecutionRoleArn", name: "FlowExecutionRoleArn", traits: {"smithy.api#length" => {"max" => 2048}, "smithy.api#pattern" => "^arn:aws(-[^:]+)?:iam::([0-9]{12})?:role/(service-role/)?.+$"})
    FlowExecutionStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockagentruntime#FlowExecutionStatus", name: "FlowExecutionStatus")
    FlowExecutionSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockagentruntime#FlowExecutionSummaries", name: "FlowExecutionSummaries", traits: {"smithy.api#length" => {"max" => 10}})
    FlowExecutionSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#FlowExecutionSummary", name: "FlowExecutionSummary")
    FlowFailureEvent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#FlowFailureEvent", name: "FlowFailureEvent", traits: {"smithy.api#sensitive" => {}})
    FlowIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentruntime#FlowIdentifier", name: "FlowIdentifier", traits: {"smithy.api#length" => {"max" => 2048}, "smithy.api#pattern" => "^(arn:aws:bedrock:[a-z0-9-]{1,20}:[0-9]{12}:flow/[0-9a-zA-Z]{10})|([0-9a-zA-Z]{10})$"})
    FlowInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#FlowInput", name: "FlowInput")
    FlowInputContent = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.bedrockagentruntime#FlowInputContent", name: "FlowInputContent", traits: {"smithy.api#sensitive" => {}})
    FlowInputField = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#FlowInputField", name: "FlowInputField", traits: {"smithy.api#sensitive" => {}})
    FlowInputFields = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockagentruntime#FlowInputFields", name: "FlowInputFields", traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    FlowInputs = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockagentruntime#FlowInputs", name: "FlowInputs", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    FlowMultiTurnInputContent = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.bedrockagentruntime#FlowMultiTurnInputContent", name: "FlowMultiTurnInputContent")
    FlowMultiTurnInputRequestEvent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#FlowMultiTurnInputRequestEvent", name: "FlowMultiTurnInputRequestEvent", traits: {"smithy.api#sensitive" => {}})
    FlowNodeIODataType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockagentruntime#FlowNodeIODataType", name: "FlowNodeIODataType")
    FlowNodeInputCategory = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockagentruntime#FlowNodeInputCategory", name: "FlowNodeInputCategory")
    FlowNodeInputExpression = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentruntime#FlowNodeInputExpression", name: "FlowNodeInputExpression", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#sensitive" => {}})
    FlowNodeInputName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentruntime#FlowNodeInputName", name: "FlowNodeInputName", traits: {"smithy.api#pattern" => "^[a-zA-Z]([_]?[0-9a-zA-Z]){1,50}$"})
    FlowNodeOutputName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentruntime#FlowNodeOutputName", name: "FlowNodeOutputName", traits: {"smithy.api#pattern" => "^[a-zA-Z]([_]?[0-9a-zA-Z]){1,50}$"})
    FlowOutputContent = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.bedrockagentruntime#FlowOutputContent", name: "FlowOutputContent")
    FlowOutputEvent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#FlowOutputEvent", name: "FlowOutputEvent", traits: {"smithy.api#sensitive" => {}})
    FlowOutputField = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#FlowOutputField", name: "FlowOutputField", traits: {"smithy.api#sensitive" => {}})
    FlowOutputFields = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockagentruntime#FlowOutputFields", name: "FlowOutputFields", traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    FlowResponseStream = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.bedrockagentruntime#FlowResponseStream", name: "FlowResponseStream", traits: {"smithy.api#streaming" => {}})
    FlowTrace = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.bedrockagentruntime#FlowTrace", name: "FlowTrace", traits: {"smithy.api#sensitive" => {}})
    FlowTraceCondition = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#FlowTraceCondition", name: "FlowTraceCondition", traits: {"smithy.api#sensitive" => {}})
    FlowTraceConditionNodeResultEvent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#FlowTraceConditionNodeResultEvent", name: "FlowTraceConditionNodeResultEvent", traits: {"smithy.api#sensitive" => {}})
    FlowTraceConditions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockagentruntime#FlowTraceConditions", name: "FlowTraceConditions", traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    FlowTraceDependencyEvent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#FlowTraceDependencyEvent", name: "FlowTraceDependencyEvent", traits: {"smithy.api#sensitive" => {}})
    FlowTraceEvent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#FlowTraceEvent", name: "FlowTraceEvent")
    FlowTraceNodeActionEvent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#FlowTraceNodeActionEvent", name: "FlowTraceNodeActionEvent", traits: {"smithy.api#sensitive" => {}})
    FlowTraceNodeInputContent = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.bedrockagentruntime#FlowTraceNodeInputContent", name: "FlowTraceNodeInputContent", traits: {"smithy.api#sensitive" => {}})
    FlowTraceNodeInputEvent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#FlowTraceNodeInputEvent", name: "FlowTraceNodeInputEvent", traits: {"smithy.api#sensitive" => {}})
    FlowTraceNodeInputExecutionChain = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockagentruntime#FlowTraceNodeInputExecutionChain", name: "FlowTraceNodeInputExecutionChain", traits: {"smithy.api#sensitive" => {}})
    FlowTraceNodeInputExecutionChainItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#FlowTraceNodeInputExecutionChainItem", name: "FlowTraceNodeInputExecutionChainItem", traits: {"smithy.api#sensitive" => {}})
    FlowTraceNodeInputField = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#FlowTraceNodeInputField", name: "FlowTraceNodeInputField", traits: {"smithy.api#sensitive" => {}})
    FlowTraceNodeInputFields = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockagentruntime#FlowTraceNodeInputFields", name: "FlowTraceNodeInputFields", traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    FlowTraceNodeInputSource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#FlowTraceNodeInputSource", name: "FlowTraceNodeInputSource", traits: {"smithy.api#sensitive" => {}})
    FlowTraceNodeOutputContent = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.bedrockagentruntime#FlowTraceNodeOutputContent", name: "FlowTraceNodeOutputContent")
    FlowTraceNodeOutputEvent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#FlowTraceNodeOutputEvent", name: "FlowTraceNodeOutputEvent", traits: {"smithy.api#sensitive" => {}})
    FlowTraceNodeOutputField = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#FlowTraceNodeOutputField", name: "FlowTraceNodeOutputField", traits: {"smithy.api#sensitive" => {}})
    FlowTraceNodeOutputFields = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockagentruntime#FlowTraceNodeOutputFields", name: "FlowTraceNodeOutputFields", traits: {"smithy.api#length" => {"min" => 1, "max" => 2}})
    FlowTraceNodeOutputNext = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#FlowTraceNodeOutputNext", name: "FlowTraceNodeOutputNext", traits: {"smithy.api#sensitive" => {}})
    FlowTraceNodeOutputNextList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockagentruntime#FlowTraceNodeOutputNextList", name: "FlowTraceNodeOutputNextList")
    FoundationModelConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#FoundationModelConfiguration", name: "FoundationModelConfiguration")
    FoundationModelConfigurationType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockagentruntime#FoundationModelConfigurationType", name: "FoundationModelConfigurationType")
    FoundationModelType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockagentruntime#FoundationModelType", name: "FoundationModelType")
    Function = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentruntime#Function", name: "Function", traits: {"smithy.api#sensitive" => {}})
    FunctionDefinition = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#FunctionDefinition", name: "FunctionDefinition")
    FunctionDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentruntime#FunctionDescription", name: "FunctionDescription", traits: {"smithy.api#length" => {"min" => 1, "max" => 1200}})
    FunctionInvocationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#FunctionInvocationInput", name: "FunctionInvocationInput")
    FunctionParameter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#FunctionParameter", name: "FunctionParameter")
    FunctionParameters = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockagentruntime#FunctionParameters", name: "FunctionParameters")
    FunctionResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#FunctionResult", name: "FunctionResult")
    FunctionSchema = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.bedrockagentruntime#FunctionSchema", name: "FunctionSchema")
    Functions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockagentruntime#Functions", name: "Functions")
    GenerateQueryRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#GenerateQueryRequest", name: "GenerateQueryRequest")
    GenerateQueryResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#GenerateQueryResponse", name: "GenerateQueryResponse")
    GeneratedQueries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockagentruntime#GeneratedQueries", name: "GeneratedQueries", traits: {"smithy.api#length" => {"min" => 0}})
    GeneratedQuery = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#GeneratedQuery", name: "GeneratedQuery", traits: {"smithy.api#sensitive" => {}})
    GeneratedQueryType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockagentruntime#GeneratedQueryType", name: "GeneratedQueryType")
    GeneratedResponsePart = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#GeneratedResponsePart", name: "GeneratedResponsePart")
    GenerationConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#GenerationConfiguration", name: "GenerationConfiguration")
    GetAgentMemoryRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#GetAgentMemoryRequest", name: "GetAgentMemoryRequest")
    GetAgentMemoryResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#GetAgentMemoryResponse", name: "GetAgentMemoryResponse")
    GetDocumentContentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#GetDocumentContentRequest", name: "GetDocumentContentRequest")
    GetDocumentContentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#GetDocumentContentResponse", name: "GetDocumentContentResponse")
    GetExecutionFlowSnapshotRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#GetExecutionFlowSnapshotRequest", name: "GetExecutionFlowSnapshotRequest")
    GetExecutionFlowSnapshotResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#GetExecutionFlowSnapshotResponse", name: "GetExecutionFlowSnapshotResponse")
    GetFlowExecutionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#GetFlowExecutionRequest", name: "GetFlowExecutionRequest")
    GetFlowExecutionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#GetFlowExecutionResponse", name: "GetFlowExecutionResponse")
    GetIngestedDocumentAclRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#GetIngestedDocumentAclRequest", name: "GetIngestedDocumentAclRequest")
    GetIngestedDocumentAclResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#GetIngestedDocumentAclResponse", name: "GetIngestedDocumentAclResponse")
    GetInvocationStepRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#GetInvocationStepRequest", name: "GetInvocationStepRequest")
    GetInvocationStepResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#GetInvocationStepResponse", name: "GetInvocationStepResponse")
    GetSessionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#GetSessionRequest", name: "GetSessionRequest")
    GetSessionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#GetSessionResponse", name: "GetSessionResponse")
    GuadrailAction = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockagentruntime#GuadrailAction", name: "GuadrailAction")
    GuardrailAction = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockagentruntime#GuardrailAction", name: "GuardrailAction")
    GuardrailAssessment = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#GuardrailAssessment", name: "GuardrailAssessment", traits: {"smithy.api#sensitive" => {}})
    GuardrailAssessmentList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockagentruntime#GuardrailAssessmentList", name: "GuardrailAssessmentList")
    GuardrailConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#GuardrailConfiguration", name: "GuardrailConfiguration")
    GuardrailConfigurationWithArn = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#GuardrailConfigurationWithArn", name: "GuardrailConfigurationWithArn")
    GuardrailContentFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#GuardrailContentFilter", name: "GuardrailContentFilter", traits: {"smithy.api#sensitive" => {}})
    GuardrailContentFilterConfidence = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockagentruntime#GuardrailContentFilterConfidence", name: "GuardrailContentFilterConfidence")
    GuardrailContentFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockagentruntime#GuardrailContentFilterList", name: "GuardrailContentFilterList", traits: {"smithy.api#sensitive" => {}})
    GuardrailContentFilterType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockagentruntime#GuardrailContentFilterType", name: "GuardrailContentFilterType")
    GuardrailContentPolicyAction = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockagentruntime#GuardrailContentPolicyAction", name: "GuardrailContentPolicyAction")
    GuardrailContentPolicyAssessment = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#GuardrailContentPolicyAssessment", name: "GuardrailContentPolicyAssessment", traits: {"smithy.api#sensitive" => {}})
    GuardrailCustomWord = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#GuardrailCustomWord", name: "GuardrailCustomWord", traits: {"smithy.api#sensitive" => {}})
    GuardrailCustomWordList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockagentruntime#GuardrailCustomWordList", name: "GuardrailCustomWordList", traits: {"smithy.api#sensitive" => {}})
    GuardrailEvent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#GuardrailEvent", name: "GuardrailEvent")
    GuardrailIdentifierWithArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentruntime#GuardrailIdentifierWithArn", name: "GuardrailIdentifierWithArn", traits: {"smithy.api#length" => {"max" => 2048}, "smithy.api#pattern" => "^(([a-z0-9]+)|(arn:aws(-[^:]+)?:bedrock:[a-z0-9-]{1,20}:[0-9]{12}:guardrail/[a-z0-9]+))$"})
    GuardrailManagedWord = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#GuardrailManagedWord", name: "GuardrailManagedWord", traits: {"smithy.api#sensitive" => {}})
    GuardrailManagedWordList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockagentruntime#GuardrailManagedWordList", name: "GuardrailManagedWordList", traits: {"smithy.api#sensitive" => {}})
    GuardrailManagedWordType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockagentruntime#GuardrailManagedWordType", name: "GuardrailManagedWordType")
    GuardrailPiiEntityFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#GuardrailPiiEntityFilter", name: "GuardrailPiiEntityFilter", traits: {"smithy.api#sensitive" => {}})
    GuardrailPiiEntityFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockagentruntime#GuardrailPiiEntityFilterList", name: "GuardrailPiiEntityFilterList", traits: {"smithy.api#sensitive" => {}})
    GuardrailPiiEntityType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockagentruntime#GuardrailPiiEntityType", name: "GuardrailPiiEntityType")
    GuardrailRegexFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#GuardrailRegexFilter", name: "GuardrailRegexFilter", traits: {"smithy.api#sensitive" => {}})
    GuardrailRegexFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockagentruntime#GuardrailRegexFilterList", name: "GuardrailRegexFilterList", traits: {"smithy.api#sensitive" => {}})
    GuardrailSensitiveInformationPolicyAction = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockagentruntime#GuardrailSensitiveInformationPolicyAction", name: "GuardrailSensitiveInformationPolicyAction")
    GuardrailSensitiveInformationPolicyAssessment = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#GuardrailSensitiveInformationPolicyAssessment", name: "GuardrailSensitiveInformationPolicyAssessment", traits: {"smithy.api#sensitive" => {}})
    GuardrailTopic = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#GuardrailTopic", name: "GuardrailTopic", traits: {"smithy.api#sensitive" => {}})
    GuardrailTopicList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockagentruntime#GuardrailTopicList", name: "GuardrailTopicList", traits: {"smithy.api#sensitive" => {}})
    GuardrailTopicPolicyAction = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockagentruntime#GuardrailTopicPolicyAction", name: "GuardrailTopicPolicyAction")
    GuardrailTopicPolicyAssessment = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#GuardrailTopicPolicyAssessment", name: "GuardrailTopicPolicyAssessment", traits: {"smithy.api#sensitive" => {}})
    GuardrailTopicType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockagentruntime#GuardrailTopicType", name: "GuardrailTopicType")
    GuardrailTrace = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#GuardrailTrace", name: "GuardrailTrace", traits: {"smithy.api#sensitive" => {}})
    GuardrailVersion = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentruntime#GuardrailVersion", name: "GuardrailVersion", traits: {"smithy.api#length" => {"min" => 1, "max" => 5}, "smithy.api#pattern" => "^(([1-9][0-9]{0,7})|(DRAFT))$"})
    GuardrailWordPolicyAction = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockagentruntime#GuardrailWordPolicyAction", name: "GuardrailWordPolicyAction")
    GuardrailWordPolicyAssessment = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#GuardrailWordPolicyAssessment", name: "GuardrailWordPolicyAssessment", traits: {"smithy.api#sensitive" => {}})
    Identifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentruntime#Identifier", name: "Identifier", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#sensitive" => {}})
    ImageBlock = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#ImageBlock", name: "ImageBlock")
    ImageFormat = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockagentruntime#ImageFormat", name: "ImageFormat")
    ImageInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#ImageInput", name: "ImageInput")
    ImageInputFormat = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockagentruntime#ImageInputFormat", name: "ImageInputFormat")
    ImageInputSource = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.bedrockagentruntime#ImageInputSource", name: "ImageInputSource")
    ImageInputs = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockagentruntime#ImageInputs", name: "ImageInputs")
    ImageSource = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.bedrockagentruntime#ImageSource", name: "ImageSource")
    ImplicitFilterConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#ImplicitFilterConfiguration", name: "ImplicitFilterConfiguration")
    InferenceConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#InferenceConfig", name: "InferenceConfig")
    InferenceConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#InferenceConfiguration", name: "InferenceConfiguration")
    InlineAgentFilePart = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#InlineAgentFilePart", name: "InlineAgentFilePart")
    InlineAgentPayloadPart = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#InlineAgentPayloadPart", name: "InlineAgentPayloadPart", traits: {"smithy.api#sensitive" => {}})
    InlineAgentResponseStream = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.bedrockagentruntime#InlineAgentResponseStream", name: "InlineAgentResponseStream", traits: {"smithy.api#streaming" => {}})
    InlineAgentReturnControlPayload = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#InlineAgentReturnControlPayload", name: "InlineAgentReturnControlPayload", traits: {"smithy.api#sensitive" => {}})
    InlineAgentTracePart = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#InlineAgentTracePart", name: "InlineAgentTracePart", traits: {"smithy.api#sensitive" => {}})
    InlineBedrockModelConfigurations = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#InlineBedrockModelConfigurations", name: "InlineBedrockModelConfigurations")
    InlineSessionState = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#InlineSessionState", name: "InlineSessionState")
    InputFile = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#InputFile", name: "InputFile")
    InputFiles = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockagentruntime#InputFiles", name: "InputFiles")
    InputImage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#InputImage", name: "InputImage")
    InputImageFormat = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockagentruntime#InputImageFormat", name: "InputImageFormat")
    InputPrompt = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.bedrockagentruntime#InputPrompt", name: "InputPrompt")
    InputQueryType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockagentruntime#InputQueryType", name: "InputQueryType")
    InputText = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentruntime#InputText", name: "InputText", traits: {"smithy.api#length" => {"max" => 25000000}, "smithy.api#sensitive" => {}})
    Instruction = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentruntime#Instruction", name: "Instruction", traits: {"smithy.api#length" => {"min" => 40}, "smithy.api#sensitive" => {}})
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    InvocationDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentruntime#InvocationDescription", name: "InvocationDescription", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}})
    InvocationIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentruntime#InvocationIdentifier", name: "InvocationIdentifier", traits: {"smithy.api#pattern" => "^[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}$"})
    InvocationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#InvocationInput", name: "InvocationInput", traits: {"smithy.api#sensitive" => {}})
    InvocationInputMember = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.bedrockagentruntime#InvocationInputMember", name: "InvocationInputMember")
    InvocationInputs = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockagentruntime#InvocationInputs", name: "InvocationInputs", traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    InvocationResultMember = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.bedrockagentruntime#InvocationResultMember", name: "InvocationResultMember")
    InvocationStep = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#InvocationStep", name: "InvocationStep")
    InvocationStepPayload = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.bedrockagentruntime#InvocationStepPayload", name: "InvocationStepPayload")
    InvocationStepSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockagentruntime#InvocationStepSummaries", name: "InvocationStepSummaries")
    InvocationStepSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#InvocationStepSummary", name: "InvocationStepSummary")
    InvocationSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockagentruntime#InvocationSummaries", name: "InvocationSummaries")
    InvocationSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#InvocationSummary", name: "InvocationSummary")
    InvocationType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockagentruntime#InvocationType", name: "InvocationType")
    InvokeAgentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#InvokeAgentRequest", name: "InvokeAgentRequest")
    InvokeAgentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#InvokeAgentResponse", name: "InvokeAgentResponse")
    InvokeFlowRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#InvokeFlowRequest", name: "InvokeFlowRequest")
    InvokeFlowResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#InvokeFlowResponse", name: "InvokeFlowResponse")
    InvokeInlineAgentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#InvokeInlineAgentRequest", name: "InvokeInlineAgentRequest")
    InvokeInlineAgentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#InvokeInlineAgentResponse", name: "InvokeInlineAgentResponse")
    KmsKeyArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentruntime#KmsKeyArn", name: "KmsKeyArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^arn:aws(|-cn|-us-gov):kms:[a-zA-Z0-9-]*:[0-9]{12}:key/[a-zA-Z0-9-]{36}$"})
    KnowledgeBase = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#KnowledgeBase", name: "KnowledgeBase")
    KnowledgeBaseArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentruntime#KnowledgeBaseArn", name: "KnowledgeBaseArn", traits: {"smithy.api#length" => {"max" => 128}, "smithy.api#pattern" => "^arn:aws(|-cn|-us-gov):bedrock:[a-zA-Z0-9-]*:[0-9]{12}:knowledge-base/[0-9a-zA-Z]+$"})
    KnowledgeBaseConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#KnowledgeBaseConfiguration", name: "KnowledgeBaseConfiguration")
    KnowledgeBaseConfigurations = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockagentruntime#KnowledgeBaseConfigurations", name: "KnowledgeBaseConfigurations", traits: {"smithy.api#length" => {"min" => 1}})
    KnowledgeBaseId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentruntime#KnowledgeBaseId", name: "KnowledgeBaseId", traits: {"smithy.api#length" => {"max" => 10}, "smithy.api#pattern" => "^[0-9a-zA-Z]+$"})
    KnowledgeBaseIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentruntime#KnowledgeBaseIdentifier", name: "KnowledgeBaseIdentifier", traits: {"smithy.api#length" => {"min" => 10, "max" => 2048}, "smithy.api#pattern" => "^[0-9a-zA-Z]{10}$|^arn:aws(-[^:]+)?:bedrock:[a-z0-9-]{1,20}:[0-9]{12}:knowledge-base/[0-9a-zA-Z]{10}$"})
    KnowledgeBaseLookupInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#KnowledgeBaseLookupInput", name: "KnowledgeBaseLookupInput")
    KnowledgeBaseLookupInputString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentruntime#KnowledgeBaseLookupInputString", name: "KnowledgeBaseLookupInputString", traits: {"smithy.api#sensitive" => {}})
    KnowledgeBaseLookupOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#KnowledgeBaseLookupOutput", name: "KnowledgeBaseLookupOutput")
    KnowledgeBaseQuery = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#KnowledgeBaseQuery", name: "KnowledgeBaseQuery", traits: {"smithy.api#sensitive" => {}})
    KnowledgeBaseQueryType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockagentruntime#KnowledgeBaseQueryType", name: "KnowledgeBaseQueryType")
    KnowledgeBaseRetrievalConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#KnowledgeBaseRetrievalConfiguration", name: "KnowledgeBaseRetrievalConfiguration")
    KnowledgeBaseRetrievalResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#KnowledgeBaseRetrievalResult", name: "KnowledgeBaseRetrievalResult")
    KnowledgeBaseRetrievalResults = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockagentruntime#KnowledgeBaseRetrievalResults", name: "KnowledgeBaseRetrievalResults", traits: {"smithy.api#sensitive" => {}})
    KnowledgeBaseRetrieveAndGenerateConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#KnowledgeBaseRetrieveAndGenerateConfiguration", name: "KnowledgeBaseRetrieveAndGenerateConfiguration")
    KnowledgeBaseRetrieverConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#KnowledgeBaseRetrieverConfiguration", name: "KnowledgeBaseRetrieverConfiguration")
    KnowledgeBaseVectorSearchConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#KnowledgeBaseVectorSearchConfiguration", name: "KnowledgeBaseVectorSearchConfiguration")
    KnowledgeBases = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockagentruntime#KnowledgeBases", name: "KnowledgeBases")
    LambdaArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentruntime#LambdaArn", name: "LambdaArn")
    LambdaResourceArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentruntime#LambdaResourceArn", name: "LambdaResourceArn", traits: {"smithy.api#length" => {"max" => 2048}, "smithy.api#pattern" => "^arn:(aws[a-zA-Z-]*)?:lambda:[a-z]{2}(-gov)?-[a-z]+-\\d{1}:\\d{12}:function:[a-zA-Z0-9-_\\.]+(:(\\$LATEST|[a-zA-Z0-9-_]+))?$"})
    ListFlowExecutionEventsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#ListFlowExecutionEventsRequest", name: "ListFlowExecutionEventsRequest")
    ListFlowExecutionEventsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#ListFlowExecutionEventsResponse", name: "ListFlowExecutionEventsResponse")
    ListFlowExecutionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#ListFlowExecutionsRequest", name: "ListFlowExecutionsRequest")
    ListFlowExecutionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#ListFlowExecutionsResponse", name: "ListFlowExecutionsResponse")
    ListInvocationStepsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#ListInvocationStepsRequest", name: "ListInvocationStepsRequest")
    ListInvocationStepsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#ListInvocationStepsResponse", name: "ListInvocationStepsResponse")
    ListInvocationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#ListInvocationsRequest", name: "ListInvocationsRequest")
    ListInvocationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#ListInvocationsResponse", name: "ListInvocationsResponse")
    ListSessionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#ListSessionsRequest", name: "ListSessionsRequest")
    ListSessionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#ListSessionsResponse", name: "ListSessionsResponse")
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#ListTagsForResourceRequest", name: "ListTagsForResourceRequest")
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#ListTagsForResourceResponse", name: "ListTagsForResourceResponse")
    ManagedSearchBedrockRerankingConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#ManagedSearchBedrockRerankingConfiguration", name: "ManagedSearchBedrockRerankingConfiguration")
    ManagedSearchBedrockRerankingModelConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#ManagedSearchBedrockRerankingModelConfiguration", name: "ManagedSearchBedrockRerankingModelConfiguration")
    ManagedSearchConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#ManagedSearchConfiguration", name: "ManagedSearchConfiguration")
    ManagedSearchRerankingConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#ManagedSearchRerankingConfiguration", name: "ManagedSearchRerankingConfiguration")
    ManagedSearchRerankingConfigurationType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockagentruntime#ManagedSearchRerankingConfigurationType", name: "ManagedSearchRerankingConfigurationType")
    MantleFoundationModelConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#MantleFoundationModelConfiguration", name: "MantleFoundationModelConfiguration")
    MantleFoundationModelModelConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#MantleFoundationModelModelConfiguration", name: "MantleFoundationModelModelConfiguration")
    MantleProjectId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentruntime#MantleProjectId", name: "MantleProjectId", traits: {"smithy.api#length" => {"max" => 128}, "smithy.api#pattern" => "^(proj_[a-zA-Z0-9]+|default)$"})
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.bedrockagentruntime#MaxResults", name: "MaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}})
    MaxTokens = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.bedrockagentruntime#MaxTokens", name: "MaxTokens", traits: {"smithy.api#range" => {"min" => 0, "max" => 65536}})
    MaximumLength = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.bedrockagentruntime#MaximumLength", name: "MaximumLength", traits: {"smithy.api#range" => {"min" => 0, "max" => 8192}})
    Memories = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockagentruntime#Memories", name: "Memories")
    Memory = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.bedrockagentruntime#Memory", name: "Memory")
    MemoryId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentruntime#MemoryId", name: "MemoryId", traits: {"smithy.api#length" => {"min" => 2, "max" => 100}, "smithy.api#pattern" => "^[0-9a-zA-Z._:-]+$"})
    MemoryNamespace = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentruntime#MemoryNamespace", name: "MemoryNamespace", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^[a-zA-Z0-9/*][a-zA-Z0-9\\-_/*]*(?::[a-zA-Z0-9\\-_/*]+)*[a-zA-Z0-9\\-_/*]*$"})
    MemorySessionSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#MemorySessionSummary", name: "MemorySessionSummary")
    MemoryStrategyId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentruntime#MemoryStrategyId", name: "MemoryStrategyId", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[a-zA-Z0-9][a-zA-Z0-9\\-_]*$"})
    MemoryType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockagentruntime#MemoryType", name: "MemoryType")
    Message = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#Message", name: "Message")
    Messages = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockagentruntime#Messages", name: "Messages")
    Metadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#Metadata", name: "Metadata", traits: {"smithy.api#sensitive" => {}})
    MetadataAttributeSchema = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#MetadataAttributeSchema", name: "MetadataAttributeSchema", traits: {"smithy.api#sensitive" => {}})
    MetadataAttributeSchemaList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockagentruntime#MetadataAttributeSchemaList", name: "MetadataAttributeSchemaList", traits: {"smithy.api#length" => {"min" => 1, "max" => 25}})
    MetadataConfigurationForReranking = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#MetadataConfigurationForReranking", name: "MetadataConfigurationForReranking")
    MimeType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentruntime#MimeType", name: "MimeType")
    ModelIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentruntime#ModelIdentifier", name: "ModelIdentifier", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "(^arn:aws(-[^:]+)?:bedrock:[a-z0-9-]{1,20}:(([0-9]{12}:custom-model/[a-z0-9-]{1,63}[.]{1}[a-z0-9-]{1,63}(([:][a-z0-9-]{1,63}){0,2})?/[a-z0-9]{12})|(:foundation-model/([a-z0-9-]{1,63}[.]{1}[a-z0-9-]{1,63}([.]?[a-z0-9-]{1,63})([:][a-z0-9-]{1,63}){0,2})))|(([a-z0-9-]{1,63}[.]{1}[a-z0-9-]{1,63}([.]?[a-z0-9-]{1,63})([:][a-z0-9-]{1,63}){0,2}))|(([0-9a-zA-Z][_-]?)+))$|(^arn:aws(|-us-gov|-cn|-iso|-iso-b):bedrock:(|[0-9a-z-]{1,20}):(|[0-9]{12}):inference-profile/[a-zA-Z0-9-:.]+)$"})
    ModelInvocationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#ModelInvocationInput", name: "ModelInvocationInput", traits: {"smithy.api#sensitive" => {}})
    ModelNotReadyException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#ModelNotReadyException", name: "ModelNotReadyException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 424})
    ModelPerformanceConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#ModelPerformanceConfiguration", name: "ModelPerformanceConfiguration")
    Name = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentruntime#Name", name: "Name", traits: {"smithy.api#pattern" => "^([0-9a-zA-Z][_-]?){1,100}$", "smithy.api#sensitive" => {}})
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentruntime#NextToken", name: "NextToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^\\S*$"})
    NodeActionEvent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#NodeActionEvent", name: "NodeActionEvent", traits: {"smithy.api#sensitive" => {}})
    NodeDependencyEvent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#NodeDependencyEvent", name: "NodeDependencyEvent", traits: {"smithy.api#sensitive" => {}})
    NodeErrorCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockagentruntime#NodeErrorCode", name: "NodeErrorCode")
    NodeExecutionContent = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.bedrockagentruntime#NodeExecutionContent", name: "NodeExecutionContent", traits: {"smithy.api#sensitive" => {}})
    NodeFailureEvent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#NodeFailureEvent", name: "NodeFailureEvent", traits: {"smithy.api#sensitive" => {}})
    NodeInputEvent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#NodeInputEvent", name: "NodeInputEvent", traits: {"smithy.api#sensitive" => {}})
    NodeInputExecutionChain = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockagentruntime#NodeInputExecutionChain", name: "NodeInputExecutionChain")
    NodeInputExecutionChainItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#NodeInputExecutionChainItem", name: "NodeInputExecutionChainItem")
    NodeInputField = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#NodeInputField", name: "NodeInputField", traits: {"smithy.api#sensitive" => {}})
    NodeInputFields = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockagentruntime#NodeInputFields", name: "NodeInputFields", traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    NodeInputName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentruntime#NodeInputName", name: "NodeInputName", traits: {"smithy.api#pattern" => "^[a-zA-Z]([_]?[0-9a-zA-Z]){0,99}$"})
    NodeInputSource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#NodeInputSource", name: "NodeInputSource")
    NodeName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentruntime#NodeName", name: "NodeName", traits: {"smithy.api#pattern" => "^[a-zA-Z]([_]?[0-9a-zA-Z]){0,99}$"})
    NodeOutputEvent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#NodeOutputEvent", name: "NodeOutputEvent", traits: {"smithy.api#sensitive" => {}})
    NodeOutputField = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#NodeOutputField", name: "NodeOutputField", traits: {"smithy.api#sensitive" => {}})
    NodeOutputFields = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockagentruntime#NodeOutputFields", name: "NodeOutputFields", traits: {"smithy.api#length" => {"min" => 1, "max" => 2}})
    NodeOutputName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentruntime#NodeOutputName", name: "NodeOutputName", traits: {"smithy.api#pattern" => "^[a-zA-Z]([_]?[0-9a-zA-Z]){0,99}$"})
    NodeOutputNext = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#NodeOutputNext", name: "NodeOutputNext", traits: {"smithy.api#sensitive" => {}})
    NodeOutputNextList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockagentruntime#NodeOutputNextList", name: "NodeOutputNextList")
    NodeTraceElements = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.bedrockagentruntime#NodeTraceElements", name: "NodeTraceElements", traits: {"smithy.api#sensitive" => {}})
    NodeType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockagentruntime#NodeType", name: "NodeType")
    NonBlankString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentruntime#NonBlankString", name: "NonBlankString", traits: {"smithy.api#pattern" => "^[\\s\\S]*$"})
    Observation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#Observation", name: "Observation", traits: {"smithy.api#sensitive" => {}})
    OptimizePromptRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#OptimizePromptRequest", name: "OptimizePromptRequest")
    OptimizePromptResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#OptimizePromptResponse", name: "OptimizePromptResponse")
    OptimizedPrompt = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.bedrockagentruntime#OptimizedPrompt", name: "OptimizedPrompt")
    OptimizedPromptEvent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#OptimizedPromptEvent", name: "OptimizedPromptEvent", traits: {"smithy.api#sensitive" => {}})
    OptimizedPromptStream = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.bedrockagentruntime#OptimizedPromptStream", name: "OptimizedPromptStream", traits: {"smithy.api#streaming" => {}})
    OrchestrationConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#OrchestrationConfiguration", name: "OrchestrationConfiguration")
    OrchestrationExecutor = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.bedrockagentruntime#OrchestrationExecutor", name: "OrchestrationExecutor")
    OrchestrationModelInvocationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#OrchestrationModelInvocationOutput", name: "OrchestrationModelInvocationOutput", traits: {"smithy.api#sensitive" => {}})
    OrchestrationTrace = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.bedrockagentruntime#OrchestrationTrace", name: "OrchestrationTrace", traits: {"smithy.api#sensitive" => {}})
    OrchestrationType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockagentruntime#OrchestrationType", name: "OrchestrationType")
    OutputFile = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#OutputFile", name: "OutputFile", traits: {"smithy.api#sensitive" => {}})
    OutputFiles = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockagentruntime#OutputFiles", name: "OutputFiles", traits: {"smithy.api#length" => {"min" => 0, "max" => 5}})
    OutputString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentruntime#OutputString", name: "OutputString", traits: {"smithy.api#sensitive" => {}})
    Parameter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#Parameter", name: "Parameter")
    ParameterDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentruntime#ParameterDescription", name: "ParameterDescription", traits: {"smithy.api#length" => {"min" => 1, "max" => 500}})
    ParameterDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#ParameterDetail", name: "ParameterDetail")
    ParameterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockagentruntime#ParameterList", name: "ParameterList")
    ParameterMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.bedrockagentruntime#ParameterMap", name: "ParameterMap")
    ParameterName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentruntime#ParameterName", name: "ParameterName", traits: {"smithy.api#pattern" => "^([0-9a-zA-Z][_-]?){1,100}$"})
    ParameterType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockagentruntime#ParameterType", name: "ParameterType")
    Parameters = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockagentruntime#Parameters", name: "Parameters")
    PartBody = ::Smithy::Schema::Shapes::BlobShape.new(id: "com.amazonaws.bedrockagentruntime#PartBody", name: "PartBody", traits: {"smithy.api#length" => {"max" => 1000000}, "smithy.api#sensitive" => {}})
    Payload = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentruntime#Payload", name: "Payload", traits: {"smithy.api#sensitive" => {}})
    PayloadPart = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#PayloadPart", name: "PayloadPart", traits: {"smithy.api#sensitive" => {}})
    PayloadType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockagentruntime#PayloadType", name: "PayloadType")
    PerformanceConfigLatency = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockagentruntime#PerformanceConfigLatency", name: "PerformanceConfigLatency")
    PerformanceConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#PerformanceConfiguration", name: "PerformanceConfiguration")
    PostProcessingModelInvocationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#PostProcessingModelInvocationOutput", name: "PostProcessingModelInvocationOutput", traits: {"smithy.api#sensitive" => {}})
    PostProcessingParsedResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#PostProcessingParsedResponse", name: "PostProcessingParsedResponse", traits: {"smithy.api#sensitive" => {}})
    PostProcessingTrace = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.bedrockagentruntime#PostProcessingTrace", name: "PostProcessingTrace", traits: {"smithy.api#sensitive" => {}})
    PreProcessingModelInvocationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#PreProcessingModelInvocationOutput", name: "PreProcessingModelInvocationOutput", traits: {"smithy.api#sensitive" => {}})
    PreProcessingParsedResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#PreProcessingParsedResponse", name: "PreProcessingParsedResponse", traits: {"smithy.api#sensitive" => {}})
    PreProcessingTrace = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.bedrockagentruntime#PreProcessingTrace", name: "PreProcessingTrace", traits: {"smithy.api#sensitive" => {}})
    PresignedUrl = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentruntime#PresignedUrl", name: "PresignedUrl", traits: {"smithy.api#sensitive" => {}})
    PromptConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#PromptConfiguration", name: "PromptConfiguration")
    PromptConfigurations = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockagentruntime#PromptConfigurations", name: "PromptConfigurations", traits: {"smithy.api#length" => {"max" => 10}})
    PromptCreationConfigurations = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#PromptCreationConfigurations", name: "PromptCreationConfigurations")
    PromptOverrideConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#PromptOverrideConfiguration", name: "PromptOverrideConfiguration", traits: {"smithy.api#sensitive" => {}})
    PromptSessionAttributesMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.bedrockagentruntime#PromptSessionAttributesMap", name: "PromptSessionAttributesMap")
    PromptState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockagentruntime#PromptState", name: "PromptState")
    PromptTemplate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#PromptTemplate", name: "PromptTemplate")
    PromptText = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentruntime#PromptText", name: "PromptText", traits: {"smithy.api#sensitive" => {}})
    PromptType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockagentruntime#PromptType", name: "PromptType")
    PropertyParameters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#PropertyParameters", name: "PropertyParameters")
    PutInvocationStepRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#PutInvocationStepRequest", name: "PutInvocationStepRequest")
    PutInvocationStepResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#PutInvocationStepResponse", name: "PutInvocationStepResponse")
    QueryGenerationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#QueryGenerationInput", name: "QueryGenerationInput", traits: {"smithy.api#sensitive" => {}})
    QueryTransformationConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#QueryTransformationConfiguration", name: "QueryTransformationConfiguration")
    QueryTransformationMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockagentruntime#QueryTransformationMode", name: "QueryTransformationMode")
    QueryTransformationType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockagentruntime#QueryTransformationType", name: "QueryTransformationType")
    RAGStopSequences = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockagentruntime#RAGStopSequences", name: "RAGStopSequences", traits: {"smithy.api#length" => {"min" => 0, "max" => 4}})
    Rationale = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#Rationale", name: "Rationale", traits: {"smithy.api#sensitive" => {}})
    RationaleString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentruntime#RationaleString", name: "RationaleString", traits: {"smithy.api#sensitive" => {}})
    RawResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#RawResponse", name: "RawResponse", traits: {"smithy.api#sensitive" => {}})
    ReasoningContentBlock = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.bedrockagentruntime#ReasoningContentBlock", name: "ReasoningContentBlock", traits: {"smithy.api#sensitive" => {}})
    ReasoningTextBlock = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#ReasoningTextBlock", name: "ReasoningTextBlock", traits: {"smithy.api#sensitive" => {}})
    RelayConversationHistory = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockagentruntime#RelayConversationHistory", name: "RelayConversationHistory")
    RepromptResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#RepromptResponse", name: "RepromptResponse", traits: {"smithy.api#sensitive" => {}})
    RequestBody = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#RequestBody", name: "RequestBody")
    RequireConfirmation = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockagentruntime#RequireConfirmation", name: "RequireConfirmation")
    RerankDocument = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#RerankDocument", name: "RerankDocument", traits: {"smithy.api#sensitive" => {}})
    RerankDocumentType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockagentruntime#RerankDocumentType", name: "RerankDocumentType")
    RerankQueriesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockagentruntime#RerankQueriesList", name: "RerankQueriesList", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}, "smithy.api#sensitive" => {}})
    RerankQuery = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#RerankQuery", name: "RerankQuery", traits: {"smithy.api#sensitive" => {}})
    RerankQueryContentType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockagentruntime#RerankQueryContentType", name: "RerankQueryContentType")
    RerankRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#RerankRequest", name: "RerankRequest")
    RerankResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#RerankResponse", name: "RerankResponse")
    RerankResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#RerankResult", name: "RerankResult")
    RerankResultsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockagentruntime#RerankResultsList", name: "RerankResultsList")
    RerankSource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#RerankSource", name: "RerankSource", traits: {"smithy.api#sensitive" => {}})
    RerankSourceType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockagentruntime#RerankSourceType", name: "RerankSourceType")
    RerankSourcesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockagentruntime#RerankSourcesList", name: "RerankSourcesList", traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}, "smithy.api#sensitive" => {}})
    RerankTextDocument = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#RerankTextDocument", name: "RerankTextDocument", traits: {"smithy.api#sensitive" => {}})
    RerankingConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#RerankingConfiguration", name: "RerankingConfiguration")
    RerankingConfigurationType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockagentruntime#RerankingConfigurationType", name: "RerankingConfigurationType")
    RerankingMetadataSelectionMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockagentruntime#RerankingMetadataSelectionMode", name: "RerankingMetadataSelectionMode")
    RerankingMetadataSelectiveModeConfiguration = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.bedrockagentruntime#RerankingMetadataSelectiveModeConfiguration", name: "RerankingMetadataSelectiveModeConfiguration")
    RerankingModelType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockagentruntime#RerankingModelType", name: "RerankingModelType")
    ResourceDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentruntime#ResourceDescription", name: "ResourceDescription", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}, "smithy.api#sensitive" => {}})
    ResourceName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentruntime#ResourceName", name: "ResourceName", traits: {"smithy.api#pattern" => "^([0-9a-zA-Z][_-]?){1,100}$", "smithy.api#sensitive" => {}})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResponseBody = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.bedrockagentruntime#ResponseBody", name: "ResponseBody")
    ResponseState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockagentruntime#ResponseState", name: "ResponseState")
    ResponseStream = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.bedrockagentruntime#ResponseStream", name: "ResponseStream", traits: {"smithy.api#streaming" => {}})
    RetrievalContent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#RetrievalContent", name: "RetrievalContent")
    RetrievalFilter = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.bedrockagentruntime#RetrievalFilter", name: "RetrievalFilter", traits: {"smithy.api#sensitive" => {}})
    RetrievalFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockagentruntime#RetrievalFilterList", name: "RetrievalFilterList", traits: {"smithy.api#length" => {"min" => 2}})
    RetrievalOverrides = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#RetrievalOverrides", name: "RetrievalOverrides")
    RetrievalResultConfluenceLocation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#RetrievalResultConfluenceLocation", name: "RetrievalResultConfluenceLocation")
    RetrievalResultContent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#RetrievalResultContent", name: "RetrievalResultContent", traits: {"smithy.api#sensitive" => {}})
    RetrievalResultContentColumn = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#RetrievalResultContentColumn", name: "RetrievalResultContentColumn", traits: {"smithy.api#sensitive" => {}})
    RetrievalResultContentColumnType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockagentruntime#RetrievalResultContentColumnType", name: "RetrievalResultContentColumnType")
    RetrievalResultContentRow = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockagentruntime#RetrievalResultContentRow", name: "RetrievalResultContentRow", traits: {"smithy.api#sensitive" => {}})
    RetrievalResultContentType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockagentruntime#RetrievalResultContentType", name: "RetrievalResultContentType")
    RetrievalResultCustomDocumentLocation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#RetrievalResultCustomDocumentLocation", name: "RetrievalResultCustomDocumentLocation")
    RetrievalResultGoogleDriveLocation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#RetrievalResultGoogleDriveLocation", name: "RetrievalResultGoogleDriveLocation")
    RetrievalResultKendraDocumentLocation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#RetrievalResultKendraDocumentLocation", name: "RetrievalResultKendraDocumentLocation")
    RetrievalResultLocation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#RetrievalResultLocation", name: "RetrievalResultLocation", traits: {"smithy.api#sensitive" => {}})
    RetrievalResultLocationType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockagentruntime#RetrievalResultLocationType", name: "RetrievalResultLocationType")
    RetrievalResultMetadata = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.bedrockagentruntime#RetrievalResultMetadata", name: "RetrievalResultMetadata", traits: {"smithy.api#length" => {"min" => 1}, "smithy.api#sensitive" => {}})
    RetrievalResultMetadataKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentruntime#RetrievalResultMetadataKey", name: "RetrievalResultMetadataKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    RetrievalResultMetadataValue = ::Smithy::Schema::Shapes::DocumentShape.new(id: "com.amazonaws.bedrockagentruntime#RetrievalResultMetadataValue", name: "RetrievalResultMetadataValue")
    RetrievalResultOneDriveLocation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#RetrievalResultOneDriveLocation", name: "RetrievalResultOneDriveLocation")
    RetrievalResultS3Location = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#RetrievalResultS3Location", name: "RetrievalResultS3Location")
    RetrievalResultSalesforceLocation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#RetrievalResultSalesforceLocation", name: "RetrievalResultSalesforceLocation")
    RetrievalResultSharePointLocation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#RetrievalResultSharePointLocation", name: "RetrievalResultSharePointLocation")
    RetrievalResultSqlLocation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#RetrievalResultSqlLocation", name: "RetrievalResultSqlLocation")
    RetrievalResultWebLocation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#RetrievalResultWebLocation", name: "RetrievalResultWebLocation")
    RetrieveAndGenerateConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#RetrieveAndGenerateConfiguration", name: "RetrieveAndGenerateConfiguration")
    RetrieveAndGenerateInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#RetrieveAndGenerateInput", name: "RetrieveAndGenerateInput", traits: {"smithy.api#sensitive" => {}})
    RetrieveAndGenerateOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#RetrieveAndGenerateOutput", name: "RetrieveAndGenerateOutput", traits: {"smithy.api#sensitive" => {}})
    RetrieveAndGenerateOutputEvent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#RetrieveAndGenerateOutputEvent", name: "RetrieveAndGenerateOutputEvent", traits: {"smithy.api#sensitive" => {}})
    RetrieveAndGenerateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#RetrieveAndGenerateRequest", name: "RetrieveAndGenerateRequest")
    RetrieveAndGenerateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#RetrieveAndGenerateResponse", name: "RetrieveAndGenerateResponse")
    RetrieveAndGenerateSessionConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#RetrieveAndGenerateSessionConfiguration", name: "RetrieveAndGenerateSessionConfiguration")
    RetrieveAndGenerateStreamRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#RetrieveAndGenerateStreamRequest", name: "RetrieveAndGenerateStreamRequest")
    RetrieveAndGenerateStreamResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#RetrieveAndGenerateStreamResponse", name: "RetrieveAndGenerateStreamResponse")
    RetrieveAndGenerateStreamResponseOutput = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.bedrockagentruntime#RetrieveAndGenerateStreamResponseOutput", name: "RetrieveAndGenerateStreamResponseOutput", traits: {"smithy.api#streaming" => {}})
    RetrieveAndGenerateType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockagentruntime#RetrieveAndGenerateType", name: "RetrieveAndGenerateType")
    RetrieveRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#RetrieveRequest", name: "RetrieveRequest")
    RetrieveResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#RetrieveResponse", name: "RetrieveResponse")
    RetrievedReference = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#RetrievedReference", name: "RetrievedReference")
    RetrievedReferences = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockagentruntime#RetrievedReferences", name: "RetrievedReferences")
    RetrieverConfiguration = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.bedrockagentruntime#RetrieverConfiguration", name: "RetrieverConfiguration")
    ReturnControlInvocationResults = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockagentruntime#ReturnControlInvocationResults", name: "ReturnControlInvocationResults", traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    ReturnControlPayload = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#ReturnControlPayload", name: "ReturnControlPayload", traits: {"smithy.api#sensitive" => {}})
    ReturnControlResults = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#ReturnControlResults", name: "ReturnControlResults")
    RoutingClassifierModelInvocationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#RoutingClassifierModelInvocationOutput", name: "RoutingClassifierModelInvocationOutput", traits: {"smithy.api#sensitive" => {}})
    RoutingClassifierTrace = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.bedrockagentruntime#RoutingClassifierTrace", name: "RoutingClassifierTrace", traits: {"smithy.api#sensitive" => {}})
    S3BucketName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentruntime#S3BucketName", name: "S3BucketName", traits: {"smithy.api#length" => {"min" => 3, "max" => 63}, "smithy.api#pattern" => "^[a-z0-9][\\.\\-a-z0-9]{1,61}[a-z0-9]$"})
    S3Identifier = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#S3Identifier", name: "S3Identifier")
    S3Location = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#S3Location", name: "S3Location")
    S3ObjectDoc = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#S3ObjectDoc", name: "S3ObjectDoc")
    S3ObjectFile = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#S3ObjectFile", name: "S3ObjectFile")
    S3ObjectKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentruntime#S3ObjectKey", name: "S3ObjectKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^[\\.\\-\\!\\*\\_\\'\\(\\)a-zA-Z0-9][\\.\\-\\!\\*\\_\\'\\(\\)\\/a-zA-Z0-9]*$"})
    S3Uri = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentruntime#S3Uri", name: "S3Uri", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^s3://[a-z0-9][a-z0-9.-]{1,61}[a-z0-9]/.{1,1024}$"})
    SatisfiedCondition = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#SatisfiedCondition", name: "SatisfiedCondition", traits: {"smithy.api#sensitive" => {}})
    SatisfiedConditions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockagentruntime#SatisfiedConditions", name: "SatisfiedConditions", traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    SearchType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockagentruntime#SearchType", name: "SearchType")
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#ServiceQuotaExceededException", name: "ServiceQuotaExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    SessionArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentruntime#SessionArn", name: "SessionArn", traits: {"smithy.api#pattern" => "^arn:aws(-[^:]+)?:bedrock:[a-z0-9-]+:[0-9]{12}:session/[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}$"})
    SessionAttributesMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.bedrockagentruntime#SessionAttributesMap", name: "SessionAttributesMap")
    SessionId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentruntime#SessionId", name: "SessionId", traits: {"smithy.api#length" => {"min" => 2, "max" => 100}, "smithy.api#pattern" => "^[0-9a-zA-Z._:-]+$"})
    SessionIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentruntime#SessionIdentifier", name: "SessionIdentifier", traits: {"smithy.api#pattern" => "^(arn:aws(-[^:]+)?:bedrock:[a-z0-9-]+:[0-9]{12}:session/[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12})|([a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12})$"})
    SessionMetadataKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentruntime#SessionMetadataKey", name: "SessionMetadataKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    SessionMetadataMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.bedrockagentruntime#SessionMetadataMap", name: "SessionMetadataMap", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    SessionMetadataValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentruntime#SessionMetadataValue", name: "SessionMetadataValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 5000}})
    SessionState = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#SessionState", name: "SessionState")
    SessionStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockagentruntime#SessionStatus", name: "SessionStatus")
    SessionSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockagentruntime#SessionSummaries", name: "SessionSummaries")
    SessionSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#SessionSummary", name: "SessionSummary")
    SessionTTL = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.bedrockagentruntime#SessionTTL", name: "SessionTTL", traits: {"smithy.api#range" => {"min" => 60, "max" => 3600}})
    Source = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockagentruntime#Source", name: "Source", traits: {"smithy.api#sensitive" => {}})
    Span = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#Span", name: "Span")
    StartFlowExecutionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#StartFlowExecutionRequest", name: "StartFlowExecutionRequest")
    StartFlowExecutionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#StartFlowExecutionResponse", name: "StartFlowExecutionResponse")
    StopFlowExecutionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#StopFlowExecutionRequest", name: "StopFlowExecutionRequest")
    StopFlowExecutionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#StopFlowExecutionResponse", name: "StopFlowExecutionResponse")
    StopSequences = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockagentruntime#StopSequences", name: "StopSequences", traits: {"smithy.api#length" => {"min" => 0, "max" => 4}})
    StreamingConfigurations = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#StreamingConfigurations", name: "StreamingConfigurations")
    SummaryText = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentruntime#SummaryText", name: "SummaryText", traits: {"smithy.api#length" => {"min" => 0, "max" => 25000000}})
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentruntime#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9\\s._:/=+@-]*$"})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockagentruntime#TagKeyList", name: "TagKeyList", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}})
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#TagResourceRequest", name: "TagResourceRequest")
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#TagResourceResponse", name: "TagResourceResponse")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentruntime#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9\\s._:/=+@-]*$"})
    TaggableResourcesArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentruntime#TaggableResourcesArn", name: "TaggableResourcesArn", traits: {"smithy.api#length" => {"min" => 20, "max" => 1011}, "smithy.api#pattern" => "(^arn:aws(-[^:]+)?:bedrock:[a-zA-Z0-9-]+:[0-9]{12}:(session)/[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}$)"})
    TagsMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.bedrockagentruntime#TagsMap", name: "TagsMap", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}})
    Temperature = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.bedrockagentruntime#Temperature", name: "Temperature", traits: {"smithy.api#range" => {"min" => 0, "max" => 1}})
    TextInferenceConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#TextInferenceConfig", name: "TextInferenceConfig")
    TextPrompt = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#TextPrompt", name: "TextPrompt", traits: {"smithy.api#sensitive" => {}})
    TextPromptTemplate = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentruntime#TextPromptTemplate", name: "TextPromptTemplate", traits: {"smithy.api#length" => {"min" => 1, "max" => 4000}, "smithy.api#sensitive" => {}})
    TextResponsePart = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#TextResponsePart", name: "TextResponsePart", traits: {"smithy.api#sensitive" => {}})
    TextToSqlConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#TextToSqlConfiguration", name: "TextToSqlConfiguration")
    TextToSqlConfigurationType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockagentruntime#TextToSqlConfigurationType", name: "TextToSqlConfigurationType")
    TextToSqlKnowledgeBaseConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#TextToSqlKnowledgeBaseConfiguration", name: "TextToSqlKnowledgeBaseConfiguration")
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    TopK = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.bedrockagentruntime#TopK", name: "TopK", traits: {"smithy.api#range" => {"min" => 0, "max" => 500}})
    TopP = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.bedrockagentruntime#TopP", name: "TopP", traits: {"smithy.api#range" => {"min" => 0, "max" => 1}})
    Trace = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.bedrockagentruntime#Trace", name: "Trace", traits: {"smithy.api#sensitive" => {}})
    TraceElements = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.bedrockagentruntime#TraceElements", name: "TraceElements", traits: {"smithy.api#sensitive" => {}})
    TraceId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentruntime#TraceId", name: "TraceId", traits: {"smithy.api#length" => {"min" => 2, "max" => 16}})
    TraceKnowledgeBaseId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentruntime#TraceKnowledgeBaseId", name: "TraceKnowledgeBaseId", traits: {"smithy.api#sensitive" => {}})
    TracePart = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#TracePart", name: "TracePart", traits: {"smithy.api#sensitive" => {}})
    TransformationConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#TransformationConfiguration", name: "TransformationConfiguration")
    Type = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockagentruntime#Type", name: "Type")
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#UntagResourceRequest", name: "UntagResourceRequest")
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#UntagResourceResponse", name: "UntagResourceResponse")
    UpdateSessionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#UpdateSessionRequest", name: "UpdateSessionRequest")
    UpdateSessionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#UpdateSessionResponse", name: "UpdateSessionResponse")
    Usage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#Usage", name: "Usage", traits: {"smithy.api#sensitive" => {}})
    UserContext = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#UserContext", name: "UserContext", traits: {"smithy.api#sensitive" => {}})
    Uuid = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentruntime#Uuid", name: "Uuid", traits: {"smithy.api#pattern" => "^[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}$"})
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    VectorSearchBedrockRerankingConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#VectorSearchBedrockRerankingConfiguration", name: "VectorSearchBedrockRerankingConfiguration")
    VectorSearchBedrockRerankingModelConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#VectorSearchBedrockRerankingModelConfiguration", name: "VectorSearchBedrockRerankingModelConfiguration")
    VectorSearchRerankingConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#VectorSearchRerankingConfiguration", name: "VectorSearchRerankingConfiguration")
    VectorSearchRerankingConfigurationType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockagentruntime#VectorSearchRerankingConfigurationType", name: "VectorSearchRerankingConfigurationType")
    Verb = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentruntime#Verb", name: "Verb", traits: {"smithy.api#sensitive" => {}})
    Version = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentruntime#Version", name: "Version", traits: {"smithy.api#length" => {"min" => 1, "max" => 5}, "smithy.api#pattern" => "^(DRAFT|[0-9]{0,4}[1-9][0-9]{0,4})$"})
    VideoSegment = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentruntime#VideoSegment", name: "VideoSegment")

    APISchema.add_member(:s3, Types::APISchema::S3, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Identifier, name: "s3"))
    APISchema.add_member(:payload, Types::APISchema::Payload, ::Smithy::Schema::Shapes::MemberShape.new(target: Payload, name: "payload"))
    APISchema.add_member(:unknown, Types::APISchema::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    APISchema.type = Types::APISchema
    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: NonBlankString, name: "message"))
    AccessDeniedException.type = Types::AccessDeniedException
    ActionGroupExecutor.add_member(:lambda, Types::ActionGroupExecutor::Lambda, ::Smithy::Schema::Shapes::MemberShape.new(target: LambdaResourceArn, name: "lambda"))
    ActionGroupExecutor.add_member(:custom_control, Types::ActionGroupExecutor::CustomControl, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomControlMethod, name: "customControl"))
    ActionGroupExecutor.add_member(:unknown, Types::ActionGroupExecutor::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    ActionGroupExecutor.type = Types::ActionGroupExecutor
    ActionGroupInvocationInput.add_member(:action_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionGroupName, name: "actionGroupName"))
    ActionGroupInvocationInput.add_member(:verb, ::Smithy::Schema::Shapes::MemberShape.new(target: Verb, name: "verb"))
    ActionGroupInvocationInput.add_member(:api_path, ::Smithy::Schema::Shapes::MemberShape.new(target: ApiPath, name: "apiPath"))
    ActionGroupInvocationInput.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: Parameters, name: "parameters"))
    ActionGroupInvocationInput.add_member(:request_body, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestBody, name: "requestBody"))
    ActionGroupInvocationInput.add_member(:function, ::Smithy::Schema::Shapes::MemberShape.new(target: Function, name: "function"))
    ActionGroupInvocationInput.add_member(:execution_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutionType, name: "executionType"))
    ActionGroupInvocationInput.add_member(:invocation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "invocationId"))
    ActionGroupInvocationInput.type = Types::ActionGroupInvocationInput
    ActionGroupInvocationOutput.add_member(:text, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionGroupOutputString, name: "text"))
    ActionGroupInvocationOutput.add_member(:metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: Metadata, name: "metadata"))
    ActionGroupInvocationOutput.type = Types::ActionGroupInvocationOutput
    ActionGroupSignature.add_member(:amazon_userinput, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AMAZON_USERINPUT", traits: {"smithy.api#enumValue" => "AMAZON.UserInput"}))
    ActionGroupSignature.add_member(:amazon_codeinterpreter, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AMAZON_CODEINTERPRETER", traits: {"smithy.api#enumValue" => "AMAZON.CodeInterpreter"}))
    ActionGroupSignature.add_member(:anthropic_computer, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ANTHROPIC_COMPUTER", traits: {"smithy.api#enumValue" => "ANTHROPIC.Computer"}))
    ActionGroupSignature.add_member(:anthropic_bash, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ANTHROPIC_BASH", traits: {"smithy.api#enumValue" => "ANTHROPIC.Bash"}))
    ActionGroupSignature.add_member(:anthropic_texteditor, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ANTHROPIC_TEXTEDITOR", traits: {"smithy.api#enumValue" => "ANTHROPIC.TextEditor"}))
    ActionGroupSignatureParams.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "key", traits: {"smithy.api#length" => {"max" => 100}}))
    ActionGroupSignatureParams.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "value", traits: {"smithy.api#length" => {"max" => 100}}))
    ActionInvocationType.add_member(:result, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RESULT", traits: {"smithy.api#enumValue" => "RESULT"}))
    ActionInvocationType.add_member(:user_confirmation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "USER_CONFIRMATION", traits: {"smithy.api#enumValue" => "USER_CONFIRMATION"}))
    ActionInvocationType.add_member(:user_confirmation_and_result, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "USER_CONFIRMATION_AND_RESULT", traits: {"smithy.api#enumValue" => "USER_CONFIRMATION_AND_RESULT"}))
    AdditionalModelRequestFields.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: AdditionalModelRequestFieldsKey, name: "key"))
    AdditionalModelRequestFields.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: AdditionalModelRequestFieldsValue, name: "value"))
    AgentActionGroup.add_member(:action_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "actionGroupName", traits: {"smithy.api#required" => {}}))
    AgentActionGroup.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDescription, name: "description"))
    AgentActionGroup.add_member(:parent_action_group_signature, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionGroupSignature, name: "parentActionGroupSignature"))
    AgentActionGroup.add_member(:action_group_executor, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionGroupExecutor, name: "actionGroupExecutor"))
    AgentActionGroup.add_member(:api_schema, ::Smithy::Schema::Shapes::MemberShape.new(target: APISchema, name: "apiSchema"))
    AgentActionGroup.add_member(:function_schema, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionSchema, name: "functionSchema"))
    AgentActionGroup.add_member(:parent_action_group_signature_params, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionGroupSignatureParams, name: "parentActionGroupSignatureParams"))
    AgentActionGroup.type = Types::AgentActionGroup
    AgentActionGroups.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentActionGroup, name: "member"))
    AgentCollaboration.add_member(:supervisor, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUPERVISOR", traits: {"smithy.api#enumValue" => "SUPERVISOR"}))
    AgentCollaboration.add_member(:supervisor_router, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUPERVISOR_ROUTER", traits: {"smithy.api#enumValue" => "SUPERVISOR_ROUTER"}))
    AgentCollaboration.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    AgentCollaboratorInputPayload.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: PayloadType, name: "type"))
    AgentCollaboratorInputPayload.add_member(:text, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentCollaboratorPayloadString, name: "text"))
    AgentCollaboratorInputPayload.add_member(:return_control_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ReturnControlResults, name: "returnControlResults"))
    AgentCollaboratorInputPayload.type = Types::AgentCollaboratorInputPayload
    AgentCollaboratorInvocationInput.add_member(:agent_collaborator_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "agentCollaboratorName"))
    AgentCollaboratorInvocationInput.add_member(:agent_collaborator_alias_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentAliasArn, name: "agentCollaboratorAliasArn"))
    AgentCollaboratorInvocationInput.add_member(:input, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentCollaboratorInputPayload, name: "input"))
    AgentCollaboratorInvocationInput.type = Types::AgentCollaboratorInvocationInput
    AgentCollaboratorInvocationOutput.add_member(:agent_collaborator_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "agentCollaboratorName"))
    AgentCollaboratorInvocationOutput.add_member(:agent_collaborator_alias_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentAliasArn, name: "agentCollaboratorAliasArn"))
    AgentCollaboratorInvocationOutput.add_member(:output, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentCollaboratorOutputPayload, name: "output"))
    AgentCollaboratorInvocationOutput.add_member(:metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: Metadata, name: "metadata"))
    AgentCollaboratorInvocationOutput.type = Types::AgentCollaboratorInvocationOutput
    AgentCollaboratorOutputPayload.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: PayloadType, name: "type"))
    AgentCollaboratorOutputPayload.add_member(:text, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentCollaboratorPayloadString, name: "text"))
    AgentCollaboratorOutputPayload.add_member(:return_control_payload, ::Smithy::Schema::Shapes::MemberShape.new(target: ReturnControlPayload, name: "returnControlPayload"))
    AgentCollaboratorOutputPayload.type = Types::AgentCollaboratorOutputPayload
    AgentTraces.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TracePart, name: "member"))
    AgenticRetrieveAction.add_member(:retrieve, ::Smithy::Schema::Shapes::MemberShape.new(target: AgenticRetrieveActionDetails, name: "retrieve"))
    AgenticRetrieveAction.add_member(:full_document_expansion, ::Smithy::Schema::Shapes::MemberShape.new(target: AgenticRetrieveFullDocExpansionDetails, name: "fullDocumentExpansion"))
    AgenticRetrieveAction.add_member(:memory_retrieve, ::Smithy::Schema::Shapes::MemberShape.new(target: AgenticRetrieveMemoryRetrieveDetails, name: "memoryRetrieve"))
    AgenticRetrieveAction.type = Types::AgenticRetrieveAction
    AgenticRetrieveActionDetails.add_member(:input_query, ::Smithy::Schema::Shapes::MemberShape.new(target: AgenticRetrieveMessageContent, name: "inputQuery", traits: {"smithy.api#required" => {}}))
    AgenticRetrieveActionDetails.add_member(:source_retrievers, ::Smithy::Schema::Shapes::MemberShape.new(target: AgenticRetrieveSourceRetrieverList, name: "sourceRetrievers", traits: {"smithy.api#required" => {}}))
    AgenticRetrieveActionDetails.type = Types::AgenticRetrieveActionDetails
    AgenticRetrieveActions.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AgenticRetrieveAction, name: "member"))
    AgenticRetrieveBedrockGuardrailConfiguration.add_member(:guardrail_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "guardrailId", traits: {"smithy.api#length" => {"max" => 64}, "smithy.api#pattern" => "^[a-z0-9]+$", "smithy.api#required" => {}}))
    AgenticRetrieveBedrockGuardrailConfiguration.add_member(:guardrail_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "guardrailVersion", traits: {"smithy.api#length" => {"min" => 1, "max" => 5}, "smithy.api#pattern" => "^(([1-9][0-9]{0,7})|(DRAFT))$", "smithy.api#required" => {}}))
    AgenticRetrieveBedrockGuardrailConfiguration.type = Types::AgenticRetrieveBedrockGuardrailConfiguration
    AgenticRetrieveBedrockRerankingConfiguration.add_member(:model_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AgenticRetrieveBedrockRerankingModelConfiguration, name: "modelConfiguration", traits: {"smithy.api#required" => {}}))
    AgenticRetrieveBedrockRerankingConfiguration.type = Types::AgenticRetrieveBedrockRerankingConfiguration
    AgenticRetrieveBedrockRerankingModelConfiguration.add_member(:model_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: BedrockModelArn, name: "modelArn", traits: {"smithy.api#required" => {}}))
    AgenticRetrieveBedrockRerankingModelConfiguration.type = Types::AgenticRetrieveBedrockRerankingModelConfiguration
    AgenticRetrieveCitation.add_member(:start_index, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "startIndex", traits: {"smithy.api#required" => {}}))
    AgenticRetrieveCitation.add_member(:end_index, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "endIndex", traits: {"smithy.api#required" => {}}))
    AgenticRetrieveCitation.add_member(:references, ::Smithy::Schema::Shapes::MemberShape.new(target: AgenticRetrieveCitationReferenceList, name: "references", traits: {"smithy.api#required" => {}}))
    AgenticRetrieveCitation.type = Types::AgenticRetrieveCitation
    AgenticRetrieveCitationList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AgenticRetrieveCitation, name: "member"))
    AgenticRetrieveCitationReference.add_member(:result_index, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "resultIndex", traits: {"smithy.api#required" => {}}))
    AgenticRetrieveCitationReference.type = Types::AgenticRetrieveCitationReference
    AgenticRetrieveCitationReferenceList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AgenticRetrieveCitationReference, name: "member"))
    AgenticRetrieveConfiguration.add_member(:foundation_model_type, ::Smithy::Schema::Shapes::MemberShape.new(target: FoundationModelType, name: "foundationModelType", traits: {"smithy.api#default" => "MANAGED"}))
    AgenticRetrieveConfiguration.add_member(:foundation_model_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: FoundationModelConfiguration, name: "foundationModelConfiguration"))
    AgenticRetrieveConfiguration.add_member(:reranking_model_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AgenticRetrieveRerankingModelType, name: "rerankingModelType"))
    AgenticRetrieveConfiguration.add_member(:reranking_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AgenticRetrieveRerankingConfiguration, name: "rerankingConfiguration"))
    AgenticRetrieveConfiguration.add_member(:max_agent_iteration, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxAgentIteration", traits: {"smithy.api#default" => 5, "smithy.api#range" => {"min" => 0}}))
    AgenticRetrieveConfiguration.type = Types::AgenticRetrieveConfiguration
    AgenticRetrieveFailure.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    AgenticRetrieveFailure.type = Types::AgenticRetrieveFailure
    AgenticRetrieveFailures.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AgenticRetrieveFailure, name: "member"))
    AgenticRetrieveFullDocExpansionDetails.add_member(:document_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "documentId"))
    AgenticRetrieveFullDocExpansionDetails.add_member(:source_retriever, ::Smithy::Schema::Shapes::MemberShape.new(target: AgenticRetrieveSourceRetriever, name: "sourceRetriever"))
    AgenticRetrieveFullDocExpansionDetails.type = Types::AgenticRetrieveFullDocExpansionDetails
    AgenticRetrieveGeneratedResponse.add_member(:answer, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "answer", traits: {"smithy.api#required" => {}}))
    AgenticRetrieveGeneratedResponse.add_member(:citations, ::Smithy::Schema::Shapes::MemberShape.new(target: AgenticRetrieveCitationList, name: "citations"))
    AgenticRetrieveGeneratedResponse.type = Types::AgenticRetrieveGeneratedResponse
    AgenticRetrieveGuardrailWarning.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "id", traits: {"smithy.api#required" => {}}))
    AgenticRetrieveGuardrailWarning.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "version", traits: {"smithy.api#required" => {}}))
    AgenticRetrieveGuardrailWarning.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailAction, name: "action", traits: {"smithy.api#required" => {}}))
    AgenticRetrieveGuardrailWarning.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message"))
    AgenticRetrieveGuardrailWarning.type = Types::AgenticRetrieveGuardrailWarning
    AgenticRetrieveMemoryConfiguration.add_member(:memory_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentCoreMemoryId, name: "memoryId", traits: {"smithy.api#required" => {}}))
    AgenticRetrieveMemoryConfiguration.add_member(:session_binding, ::Smithy::Schema::Shapes::MemberShape.new(target: AgenticRetrieveMemorySessionBinding, name: "sessionBinding"))
    AgenticRetrieveMemoryConfiguration.add_member(:retrieval_configs, ::Smithy::Schema::Shapes::MemberShape.new(target: AgenticRetrieveMemoryRetrievalConfigList, name: "retrievalConfigs"))
    AgenticRetrieveMemoryConfiguration.add_member(:persistence_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: AgenticRetrieveMemoryPersistenceMode, name: "persistenceMode"))
    AgenticRetrieveMemoryConfiguration.type = Types::AgenticRetrieveMemoryConfiguration
    AgenticRetrieveMemoryMetadataFilter.add_member(:left, ::Smithy::Schema::Shapes::MemberShape.new(target: AgenticRetrieveMemoryMetadataFilterLeft, name: "left", traits: {"smithy.api#required" => {}}))
    AgenticRetrieveMemoryMetadataFilter.add_member(:operator, ::Smithy::Schema::Shapes::MemberShape.new(target: AgenticRetrieveMemoryMetadataFilterOperator, name: "operator", traits: {"smithy.api#required" => {}}))
    AgenticRetrieveMemoryMetadataFilter.add_member(:right, ::Smithy::Schema::Shapes::MemberShape.new(target: AgenticRetrieveMemoryMetadataFilterRight, name: "right"))
    AgenticRetrieveMemoryMetadataFilter.type = Types::AgenticRetrieveMemoryMetadataFilter
    AgenticRetrieveMemoryMetadataFilterLeft.add_member(:metadata_key, Types::AgenticRetrieveMemoryMetadataFilterLeft::MetadataKey, ::Smithy::Schema::Shapes::MemberShape.new(target: AgenticRetrieveMemoryMetadataKey, name: "metadataKey"))
    AgenticRetrieveMemoryMetadataFilterLeft.add_member(:unknown, Types::AgenticRetrieveMemoryMetadataFilterLeft::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    AgenticRetrieveMemoryMetadataFilterLeft.type = Types::AgenticRetrieveMemoryMetadataFilterLeft
    AgenticRetrieveMemoryMetadataFilterList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AgenticRetrieveMemoryMetadataFilter, name: "member"))
    AgenticRetrieveMemoryMetadataFilterOperator.add_member(:equals_to, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EQUALS_TO", traits: {"smithy.api#enumValue" => "EQUALS_TO"}))
    AgenticRetrieveMemoryMetadataFilterOperator.add_member(:exists, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EXISTS", traits: {"smithy.api#enumValue" => "EXISTS"}))
    AgenticRetrieveMemoryMetadataFilterOperator.add_member(:not_exists, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NOT_EXISTS", traits: {"smithy.api#enumValue" => "NOT_EXISTS"}))
    AgenticRetrieveMemoryMetadataFilterOperator.add_member(:before, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BEFORE", traits: {"smithy.api#enumValue" => "BEFORE"}))
    AgenticRetrieveMemoryMetadataFilterOperator.add_member(:after, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AFTER", traits: {"smithy.api#enumValue" => "AFTER"}))
    AgenticRetrieveMemoryMetadataFilterOperator.add_member(:contains, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONTAINS", traits: {"smithy.api#enumValue" => "CONTAINS"}))
    AgenticRetrieveMemoryMetadataFilterOperator.add_member(:greater_than, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GREATER_THAN", traits: {"smithy.api#enumValue" => "GREATER_THAN"}))
    AgenticRetrieveMemoryMetadataFilterOperator.add_member(:greater_than_or_equals, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GREATER_THAN_OR_EQUALS", traits: {"smithy.api#enumValue" => "GREATER_THAN_OR_EQUALS"}))
    AgenticRetrieveMemoryMetadataFilterOperator.add_member(:less_than, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LESS_THAN", traits: {"smithy.api#enumValue" => "LESS_THAN"}))
    AgenticRetrieveMemoryMetadataFilterOperator.add_member(:less_than_or_equals, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LESS_THAN_OR_EQUALS", traits: {"smithy.api#enumValue" => "LESS_THAN_OR_EQUALS"}))
    AgenticRetrieveMemoryMetadataFilterRight.add_member(:metadata_value, Types::AgenticRetrieveMemoryMetadataFilterRight::MetadataValue, ::Smithy::Schema::Shapes::MemberShape.new(target: AgenticRetrieveMemoryMetadataValue, name: "metadataValue"))
    AgenticRetrieveMemoryMetadataFilterRight.add_member(:unknown, Types::AgenticRetrieveMemoryMetadataFilterRight::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    AgenticRetrieveMemoryMetadataFilterRight.type = Types::AgenticRetrieveMemoryMetadataFilterRight
    AgenticRetrieveMemoryMetadataStringList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AgenticRetrieveMemoryMetadataStringListItem, name: "member"))
    AgenticRetrieveMemoryMetadataValue.add_member(:string_value, Types::AgenticRetrieveMemoryMetadataValue::StringValue, ::Smithy::Schema::Shapes::MemberShape.new(target: AgenticRetrieveMemoryMetadataStringValue, name: "stringValue"))
    AgenticRetrieveMemoryMetadataValue.add_member(:number_value, Types::AgenticRetrieveMemoryMetadataValue::NumberValue, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, name: "numberValue"))
    AgenticRetrieveMemoryMetadataValue.add_member(:string_list_value, Types::AgenticRetrieveMemoryMetadataValue::StringListValue, ::Smithy::Schema::Shapes::MemberShape.new(target: AgenticRetrieveMemoryMetadataStringList, name: "stringListValue"))
    AgenticRetrieveMemoryMetadataValue.add_member(:date_time_value, Types::AgenticRetrieveMemoryMetadataValue::DateTimeValue, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "dateTimeValue"))
    AgenticRetrieveMemoryMetadataValue.add_member(:unknown, Types::AgenticRetrieveMemoryMetadataValue::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    AgenticRetrieveMemoryMetadataValue.type = Types::AgenticRetrieveMemoryMetadataValue
    AgenticRetrieveMemoryPersistenceMode.add_member(:default, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEFAULT", traits: {"smithy.api#enumValue" => "DEFAULT"}))
    AgenticRetrieveMemoryPersistenceMode.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))
    AgenticRetrieveMemoryRetrievalConfig.add_member(:namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: MemoryNamespace, name: "namespace"))
    AgenticRetrieveMemoryRetrievalConfig.add_member(:namespace_path, ::Smithy::Schema::Shapes::MemberShape.new(target: MemoryNamespace, name: "namespacePath"))
    AgenticRetrieveMemoryRetrievalConfig.add_member(:strategy_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MemoryStrategyId, name: "strategyId"))
    AgenticRetrieveMemoryRetrievalConfig.add_member(:metadata_filters, ::Smithy::Schema::Shapes::MemberShape.new(target: AgenticRetrieveMemoryMetadataFilterList, name: "metadataFilters"))
    AgenticRetrieveMemoryRetrievalConfig.type = Types::AgenticRetrieveMemoryRetrievalConfig
    AgenticRetrieveMemoryRetrievalConfigList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AgenticRetrieveMemoryRetrievalConfig, name: "member"))
    AgenticRetrieveMemoryRetrieveDetails.add_member(:input_query, ::Smithy::Schema::Shapes::MemberShape.new(target: AgenticRetrieveMessageContent, name: "inputQuery", traits: {"smithy.api#required" => {}}))
    AgenticRetrieveMemoryRetrieveDetails.add_member(:memory_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "memoryId", traits: {"smithy.api#required" => {}}))
    AgenticRetrieveMemoryRetrieveDetails.add_member(:namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "namespace"))
    AgenticRetrieveMemoryRetrieveDetails.add_member(:namespace_path, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "namespacePath"))
    AgenticRetrieveMemoryRetrieveDetails.add_member(:strategy_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "strategyId"))
    AgenticRetrieveMemoryRetrieveDetails.type = Types::AgenticRetrieveMemoryRetrieveDetails
    AgenticRetrieveMemorySessionBinding.add_member(:actor_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentCoreMemoryActorId, name: "actorId", traits: {"smithy.api#required" => {}}))
    AgenticRetrieveMemorySessionBinding.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentCoreMemorySessionId, name: "sessionId", traits: {"smithy.api#required" => {}}))
    AgenticRetrieveMemorySessionBinding.type = Types::AgenticRetrieveMemorySessionBinding
    AgenticRetrieveMessage.add_member(:content, ::Smithy::Schema::Shapes::MemberShape.new(target: AgenticRetrieveMessageContent, name: "content", traits: {"smithy.api#required" => {}}))
    AgenticRetrieveMessage.add_member(:role, ::Smithy::Schema::Shapes::MemberShape.new(target: ConversationRole, name: "role", traits: {"smithy.api#required" => {}}))
    AgenticRetrieveMessage.type = Types::AgenticRetrieveMessage
    AgenticRetrieveMessageContent.add_member(:text, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "text"))
    AgenticRetrieveMessageContent.type = Types::AgenticRetrieveMessageContent
    AgenticRetrieveMessages.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AgenticRetrieveMessage, name: "member"))
    AgenticRetrieveMetadata.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "key"))
    AgenticRetrieveMetadata.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Document, name: "value"))
    AgenticRetrievePolicyConfiguration.add_member(:bedrock_guardrail_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AgenticRetrieveBedrockGuardrailConfiguration, name: "bedrockGuardrailConfiguration"))
    AgenticRetrievePolicyConfiguration.type = Types::AgenticRetrievePolicyConfiguration
    AgenticRetrieveRerankingConfiguration.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: AgenticRetrieveRerankingConfigurationType, name: "type", traits: {"smithy.api#required" => {}}))
    AgenticRetrieveRerankingConfiguration.add_member(:bedrock_reranking_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AgenticRetrieveBedrockRerankingConfiguration, name: "bedrockRerankingConfiguration"))
    AgenticRetrieveRerankingConfiguration.type = Types::AgenticRetrieveRerankingConfiguration
    AgenticRetrieveRerankingConfigurationType.add_member(:bedrock_reranking_model, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BEDROCK_RERANKING_MODEL", traits: {"smithy.api#enumValue" => "BEDROCK_RERANKING_MODEL"}))
    AgenticRetrieveRerankingModelType.add_member(:custom, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CUSTOM", traits: {"smithy.api#enumValue" => "CUSTOM"}))
    AgenticRetrieveRerankingModelType.add_member(:managed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MANAGED", traits: {"smithy.api#enumValue" => "MANAGED"}))
    AgenticRetrieveRerankingModelType.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))
    AgenticRetrieveResponseEvent.add_member(:text, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "text", traits: {"smithy.api#required" => {}}))
    AgenticRetrieveResponseEvent.type = Types::AgenticRetrieveResponseEvent
    AgenticRetrieveResultEvent.add_member(:results, ::Smithy::Schema::Shapes::MemberShape.new(target: AgenticRetrieveResults, name: "results", traits: {"smithy.api#required" => {}}))
    AgenticRetrieveResultEvent.add_member(:generated_response, ::Smithy::Schema::Shapes::MemberShape.new(target: AgenticRetrieveGeneratedResponse, name: "generatedResponse"))
    AgenticRetrieveResultEvent.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    AgenticRetrieveResultEvent.type = Types::AgenticRetrieveResultEvent
    AgenticRetrieveResultItem.add_member(:content, ::Smithy::Schema::Shapes::MemberShape.new(target: RetrievalContent, name: "content", traits: {"smithy.api#required" => {}}))
    AgenticRetrieveResultItem.add_member(:metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: AgenticRetrieveMetadata, name: "metadata"))
    AgenticRetrieveResultItem.add_member(:source_retriever, ::Smithy::Schema::Shapes::MemberShape.new(target: AgenticRetrieveSourceRetriever, name: "sourceRetriever", traits: {"smithy.api#required" => {}}))
    AgenticRetrieveResultItem.type = Types::AgenticRetrieveResultItem
    AgenticRetrieveResults.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AgenticRetrieveResultItem, name: "member"))
    AgenticRetrieveSourceMetadata.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "identifier"))
    AgenticRetrieveSourceMetadata.add_member(:retrieval_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AgenticRetrieveType, name: "retrievalType"))
    AgenticRetrieveSourceMetadata.type = Types::AgenticRetrieveSourceMetadata
    AgenticRetrieveSourceMetadataList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AgenticRetrieveSourceMetadata, name: "member"))
    AgenticRetrieveSourceRetriever.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "identifier", traits: {"smithy.api#required" => {}}))
    AgenticRetrieveSourceRetriever.type = Types::AgenticRetrieveSourceRetriever
    AgenticRetrieveSourceRetrieverList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AgenticRetrieveSourceRetriever, name: "member"))
    AgenticRetrieveStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    AgenticRetrieveStatus.add_member(:succeeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUCCEEDED", traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    AgenticRetrieveStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    AgenticRetrieveStep.add_member(:planning, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PLANNING", traits: {"smithy.api#enumValue" => "Planning"}))
    AgenticRetrieveStep.add_member(:retrieval, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RETRIEVAL", traits: {"smithy.api#enumValue" => "Retrieval"}))
    AgenticRetrieveStep.add_member(:speculative_retrieval, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SPECULATIVE_RETRIEVAL", traits: {"smithy.api#enumValue" => "SpeculativeRetrieval"}))
    AgenticRetrieveStep.add_member(:full_document_expansion, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FULL_DOCUMENT_EXPANSION", traits: {"smithy.api#enumValue" => "FullDocumentExpansion"}))
    AgenticRetrieveStep.add_member(:session_history_load, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SESSION_HISTORY_LOAD", traits: {"smithy.api#enumValue" => "SessionHistoryLoad"}))
    AgenticRetrieveStreamRequest.add_member(:messages, ::Smithy::Schema::Shapes::MemberShape.new(target: AgenticRetrieveMessages, name: "messages", traits: {"smithy.api#length" => {"min" => 1}, "smithy.api#required" => {}}))
    AgenticRetrieveStreamRequest.add_member(:retrievers, ::Smithy::Schema::Shapes::MemberShape.new(target: AgenticRetrievers, name: "retrievers", traits: {"smithy.api#length" => {"min" => 1}, "smithy.api#required" => {}}))
    AgenticRetrieveStreamRequest.add_member(:agentic_retrieve_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AgenticRetrieveConfiguration, name: "agenticRetrieveConfiguration", traits: {"smithy.api#required" => {}}))
    AgenticRetrieveStreamRequest.add_member(:policy_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AgenticRetrievePolicyConfiguration, name: "policyConfiguration"))
    AgenticRetrieveStreamRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    AgenticRetrieveStreamRequest.add_member(:user_context, ::Smithy::Schema::Shapes::MemberShape.new(target: UserContext, name: "userContext"))
    AgenticRetrieveStreamRequest.add_member(:memory_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AgenticRetrieveMemoryConfiguration, name: "memoryConfiguration"))
    AgenticRetrieveStreamRequest.add_member(:generate_response, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "generateResponse", traits: {"smithy.api#default" => true}))
    AgenticRetrieveStreamRequest.type = Types::AgenticRetrieveStreamRequest
    AgenticRetrieveStreamResponse.add_member(:stream, ::Smithy::Schema::Shapes::MemberShape.new(target: AgenticRetrieveStreamResponseOutput, name: "stream", traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    AgenticRetrieveStreamResponse[:http_payload] = :stream
    AgenticRetrieveStreamResponse[:http_payload_member] = AgenticRetrieveStreamResponse.member(:stream)
    AgenticRetrieveStreamResponse.type = Types::AgenticRetrieveStreamResponse
    AgenticRetrieveStreamResponseOutput.add_member(:result, Types::AgenticRetrieveStreamResponseOutput::Result, ::Smithy::Schema::Shapes::MemberShape.new(target: AgenticRetrieveResultEvent, name: "result"))
    AgenticRetrieveStreamResponseOutput.add_member(:trace_event, Types::AgenticRetrieveStreamResponseOutput::TraceEvent, ::Smithy::Schema::Shapes::MemberShape.new(target: AgenticRetrieveTraceEvent, name: "traceEvent"))
    AgenticRetrieveStreamResponseOutput.add_member(:response_event, Types::AgenticRetrieveStreamResponseOutput::ResponseEvent, ::Smithy::Schema::Shapes::MemberShape.new(target: AgenticRetrieveResponseEvent, name: "responseEvent"))
    AgenticRetrieveStreamResponseOutput.add_member(:internal_server_exception, Types::AgenticRetrieveStreamResponseOutput::InternalServerException, ::Smithy::Schema::Shapes::MemberShape.new(target: InternalServerException, name: "internalServerException"))
    AgenticRetrieveStreamResponseOutput.add_member(:validation_exception, Types::AgenticRetrieveStreamResponseOutput::ValidationException, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationException, name: "validationException"))
    AgenticRetrieveStreamResponseOutput.add_member(:resource_not_found_exception, Types::AgenticRetrieveStreamResponseOutput::ResourceNotFoundException, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceNotFoundException, name: "resourceNotFoundException"))
    AgenticRetrieveStreamResponseOutput.add_member(:service_quota_exceeded_exception, Types::AgenticRetrieveStreamResponseOutput::ServiceQuotaExceededException, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceQuotaExceededException, name: "serviceQuotaExceededException"))
    AgenticRetrieveStreamResponseOutput.add_member(:throttling_exception, Types::AgenticRetrieveStreamResponseOutput::ThrottlingException, ::Smithy::Schema::Shapes::MemberShape.new(target: ThrottlingException, name: "throttlingException"))
    AgenticRetrieveStreamResponseOutput.add_member(:access_denied_exception, Types::AgenticRetrieveStreamResponseOutput::AccessDeniedException, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessDeniedException, name: "accessDeniedException"))
    AgenticRetrieveStreamResponseOutput.add_member(:conflict_exception, Types::AgenticRetrieveStreamResponseOutput::ConflictException, ::Smithy::Schema::Shapes::MemberShape.new(target: ConflictException, name: "conflictException"))
    AgenticRetrieveStreamResponseOutput.add_member(:dependency_failed_exception, Types::AgenticRetrieveStreamResponseOutput::DependencyFailedException, ::Smithy::Schema::Shapes::MemberShape.new(target: DependencyFailedException, name: "dependencyFailedException"))
    AgenticRetrieveStreamResponseOutput.add_member(:bad_gateway_exception, Types::AgenticRetrieveStreamResponseOutput::BadGatewayException, ::Smithy::Schema::Shapes::MemberShape.new(target: BadGatewayException, name: "badGatewayException"))
    AgenticRetrieveStreamResponseOutput.add_member(:unknown, Types::AgenticRetrieveStreamResponseOutput::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    AgenticRetrieveStreamResponseOutput.type = Types::AgenticRetrieveStreamResponseOutput
    AgenticRetrieveTraceEvent.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "id", traits: {"smithy.api#required" => {}}))
    AgenticRetrieveTraceEvent.add_member(:timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "timestamp", traits: {"smithy.api#required" => {}}))
    AgenticRetrieveTraceEvent.add_member(:attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: AgenticRetrieveTraceEventAttributes, name: "attributes", traits: {"smithy.api#required" => {}}))
    AgenticRetrieveTraceEvent.type = Types::AgenticRetrieveTraceEvent
    AgenticRetrieveTraceEventAttributes.add_member(:step, ::Smithy::Schema::Shapes::MemberShape.new(target: AgenticRetrieveStep, name: "step", traits: {"smithy.api#required" => {}}))
    AgenticRetrieveTraceEventAttributes.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: AgenticRetrieveStatus, name: "status", traits: {"smithy.api#required" => {}}))
    AgenticRetrieveTraceEventAttributes.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    AgenticRetrieveTraceEventAttributes.add_member(:actions, ::Smithy::Schema::Shapes::MemberShape.new(target: AgenticRetrieveActions, name: "actions"))
    AgenticRetrieveTraceEventAttributes.add_member(:warnings, ::Smithy::Schema::Shapes::MemberShape.new(target: AgenticRetrieveWarnings, name: "warnings"))
    AgenticRetrieveTraceEventAttributes.add_member(:failures, ::Smithy::Schema::Shapes::MemberShape.new(target: AgenticRetrieveFailures, name: "failures"))
    AgenticRetrieveTraceEventAttributes.add_member(:retrieval_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: AgenticRetrieveSourceMetadataList, name: "retrievalMetadata"))
    AgenticRetrieveTraceEventAttributes.add_member(:retrieval_response, ::Smithy::Schema::Shapes::MemberShape.new(target: AgenticRetrieveTraceResults, name: "retrievalResponse"))
    AgenticRetrieveTraceEventAttributes.type = Types::AgenticRetrieveTraceEventAttributes
    AgenticRetrieveTraceResultItem.add_member(:content, ::Smithy::Schema::Shapes::MemberShape.new(target: RetrievalContent, name: "content"))
    AgenticRetrieveTraceResultItem.add_member(:metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: AgenticRetrieveMetadata, name: "metadata"))
    AgenticRetrieveTraceResultItem.add_member(:source_retriever, ::Smithy::Schema::Shapes::MemberShape.new(target: AgenticRetrieveSourceRetriever, name: "sourceRetriever"))
    AgenticRetrieveTraceResultItem.type = Types::AgenticRetrieveTraceResultItem
    AgenticRetrieveTraceResults.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AgenticRetrieveTraceResultItem, name: "member"))
    AgenticRetrieveType.add_member(:bedrock_knowledge_base, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BEDROCK_KNOWLEDGE_BASE", traits: {"smithy.api#enumValue" => "BedrockKnowledgeBase"}))
    AgenticRetrieveType.add_member(:bedrock_agent_core_memory, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BEDROCK_AGENT_CORE_MEMORY", traits: {"smithy.api#enumValue" => "BedrockAgentCoreMemory"}))
    AgenticRetrieveWarning.add_member(:message, Types::AgenticRetrieveWarning::Message, ::Smithy::Schema::Shapes::MemberShape.new(target: AgenticRetrieveWarningMessage, name: "message"))
    AgenticRetrieveWarning.add_member(:guardrail, Types::AgenticRetrieveWarning::Guardrail, ::Smithy::Schema::Shapes::MemberShape.new(target: AgenticRetrieveGuardrailWarning, name: "guardrail"))
    AgenticRetrieveWarning.add_member(:unknown, Types::AgenticRetrieveWarning::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    AgenticRetrieveWarning.type = Types::AgenticRetrieveWarning
    AgenticRetrieveWarningMessage.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    AgenticRetrieveWarningMessage.type = Types::AgenticRetrieveWarningMessage
    AgenticRetrieveWarnings.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AgenticRetrieveWarning, name: "member"))
    AgenticRetriever.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "description"))
    AgenticRetriever.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: RetrieverConfiguration, name: "configuration", traits: {"smithy.api#required" => {}}))
    AgenticRetriever.type = Types::AgenticRetriever
    AgenticRetrievers.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AgenticRetriever, name: "member"))
    AnalyzePromptEvent.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message"))
    AnalyzePromptEvent.type = Types::AnalyzePromptEvent
    ApiContentMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "key"))
    ApiContentMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: PropertyParameters, name: "value"))
    ApiInvocationInput.add_member(:action_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "actionGroup", traits: {"smithy.api#required" => {}}))
    ApiInvocationInput.add_member(:http_method, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "httpMethod"))
    ApiInvocationInput.add_member(:api_path, ::Smithy::Schema::Shapes::MemberShape.new(target: ApiPath, name: "apiPath"))
    ApiInvocationInput.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: ApiParameters, name: "parameters"))
    ApiInvocationInput.add_member(:request_body, ::Smithy::Schema::Shapes::MemberShape.new(target: ApiRequestBody, name: "requestBody"))
    ApiInvocationInput.add_member(:action_invocation_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionInvocationType, name: "actionInvocationType"))
    ApiInvocationInput.add_member(:agent_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "agentId"))
    ApiInvocationInput.add_member(:collaborator_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "collaboratorName"))
    ApiInvocationInput.type = Types::ApiInvocationInput
    ApiParameter.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "name"))
    ApiParameter.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "type"))
    ApiParameter.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "value"))
    ApiParameter.type = Types::ApiParameter
    ApiParameters.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ApiParameter, name: "member"))
    ApiRequestBody.add_member(:content, ::Smithy::Schema::Shapes::MemberShape.new(target: ApiContentMap, name: "content"))
    ApiRequestBody.type = Types::ApiRequestBody
    ApiResult.add_member(:action_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "actionGroup", traits: {"smithy.api#required" => {}}))
    ApiResult.add_member(:http_method, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "httpMethod"))
    ApiResult.add_member(:api_path, ::Smithy::Schema::Shapes::MemberShape.new(target: ApiPath, name: "apiPath"))
    ApiResult.add_member(:confirmation_state, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfirmationState, name: "confirmationState"))
    ApiResult.add_member(:response_state, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseState, name: "responseState"))
    ApiResult.add_member(:http_status_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "httpStatusCode"))
    ApiResult.add_member(:response_body, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseBody, name: "responseBody"))
    ApiResult.add_member(:agent_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "agentId"))
    ApiResult.type = Types::ApiResult
    AttributeType.add_member(:string, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STRING", traits: {"smithy.api#enumValue" => "STRING"}))
    AttributeType.add_member(:number, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NUMBER", traits: {"smithy.api#enumValue" => "NUMBER"}))
    AttributeType.add_member(:boolean, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BOOLEAN", traits: {"smithy.api#enumValue" => "BOOLEAN"}))
    AttributeType.add_member(:string_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STRING_LIST", traits: {"smithy.api#enumValue" => "STRING_LIST"}))
    Attribution.add_member(:citations, ::Smithy::Schema::Shapes::MemberShape.new(target: Citations, name: "citations"))
    Attribution.type = Types::Attribution
    AudioSegment.add_member(:s3_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "s3Uri", traits: {"smithy.api#length" => {"min" => 1}, "smithy.api#required" => {}}))
    AudioSegment.add_member(:transcription, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "transcription"))
    AudioSegment.type = Types::AudioSegment
    BadGatewayException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: NonBlankString, name: "message"))
    BadGatewayException.add_member(:resource_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NonBlankString, name: "resourceName"))
    BadGatewayException.type = Types::BadGatewayException
    BedrockFoundationModelConfiguration.add_member(:model_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: BedrockFoundationModelModelConfiguration, name: "modelConfiguration", traits: {"smithy.api#required" => {}}))
    BedrockFoundationModelConfiguration.type = Types::BedrockFoundationModelConfiguration
    BedrockFoundationModelModelConfiguration.add_member(:model_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: BedrockModelArn, name: "modelArn", traits: {"smithy.api#required" => {}}))
    BedrockFoundationModelModelConfiguration.type = Types::BedrockFoundationModelModelConfiguration
    BedrockModelConfigurations.add_member(:performance_config, ::Smithy::Schema::Shapes::MemberShape.new(target: PerformanceConfiguration, name: "performanceConfig"))
    BedrockModelConfigurations.type = Types::BedrockModelConfigurations
    BedrockRerankingConfiguration.add_member(:number_of_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "numberOfResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}}))
    BedrockRerankingConfiguration.add_member(:model_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: BedrockRerankingModelConfiguration, name: "modelConfiguration", traits: {"smithy.api#required" => {}}))
    BedrockRerankingConfiguration.type = Types::BedrockRerankingConfiguration
    BedrockRerankingModelConfiguration.add_member(:model_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: BedrockModelArn, name: "modelArn", traits: {"smithy.api#required" => {}}))
    BedrockRerankingModelConfiguration.add_member(:additional_model_request_fields, ::Smithy::Schema::Shapes::MemberShape.new(target: AdditionalModelRequestFields, name: "additionalModelRequestFields"))
    BedrockRerankingModelConfiguration.type = Types::BedrockRerankingModelConfiguration
    BedrockSessionContentBlock.add_member(:text, Types::BedrockSessionContentBlock::Text, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "text", traits: {"smithy.api#length" => {"min" => 1}}))
    BedrockSessionContentBlock.add_member(:image, Types::BedrockSessionContentBlock::Image, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageBlock, name: "image"))
    BedrockSessionContentBlock.add_member(:unknown, Types::BedrockSessionContentBlock::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    BedrockSessionContentBlock.type = Types::BedrockSessionContentBlock
    BedrockSessionContentBlocks.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BedrockSessionContentBlock, name: "member"))
    ByteContentDoc.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: Identifier, name: "identifier", traits: {"smithy.api#required" => {}}))
    ByteContentDoc.add_member(:content_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentType, name: "contentType", traits: {"smithy.api#required" => {}}))
    ByteContentDoc.add_member(:data, ::Smithy::Schema::Shapes::MemberShape.new(target: ByteContentBlob, name: "data", traits: {"smithy.api#required" => {}}))
    ByteContentDoc.type = Types::ByteContentDoc
    ByteContentFile.add_member(:media_type, ::Smithy::Schema::Shapes::MemberShape.new(target: MimeType, name: "mediaType", traits: {"smithy.api#required" => {}}))
    ByteContentFile.add_member(:data, ::Smithy::Schema::Shapes::MemberShape.new(target: ByteContentBlob, name: "data", traits: {"smithy.api#required" => {}}))
    ByteContentFile.type = Types::ByteContentFile
    Caller.add_member(:agent_alias_arn, Types::Caller::AgentAliasArn, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentAliasArn, name: "agentAliasArn"))
    Caller.add_member(:unknown, Types::Caller::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    Caller.type = Types::Caller
    CallerChain.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Caller, name: "member"))
    CheckIngestedDocumentAclRequest.add_member(:knowledge_base_id, ::Smithy::Schema::Shapes::MemberShape.new(target: KnowledgeBaseIdentifier, name: "knowledgeBaseId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CheckIngestedDocumentAclRequest.add_member(:data_source_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceId, name: "dataSourceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CheckIngestedDocumentAclRequest.add_member(:document_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentId, name: "documentId", traits: {"smithy.api#required" => {}}))
    CheckIngestedDocumentAclRequest.add_member(:user_context, ::Smithy::Schema::Shapes::MemberShape.new(target: UserContext, name: "userContext", traits: {"smithy.api#required" => {}}))
    CheckIngestedDocumentAclRequest.type = Types::CheckIngestedDocumentAclRequest
    CheckIngestedDocumentAclResponse.add_member(:has_access, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "hasAccess", traits: {"smithy.api#required" => {}}))
    CheckIngestedDocumentAclResponse.type = Types::CheckIngestedDocumentAclResponse
    Citation.add_member(:generated_response_part, ::Smithy::Schema::Shapes::MemberShape.new(target: GeneratedResponsePart, name: "generatedResponsePart"))
    Citation.add_member(:retrieved_references, ::Smithy::Schema::Shapes::MemberShape.new(target: RetrievedReferences, name: "retrievedReferences"))
    Citation.type = Types::Citation
    CitationEvent.add_member(:citation, ::Smithy::Schema::Shapes::MemberShape.new(target: Citation, name: "citation", traits: {"smithy.api#deprecated" => {"since" => "2024-12-17", "message" => "Citation is deprecated. Please use GeneratedResponsePart and RetrievedReferences for citation event."}}))
    CitationEvent.add_member(:generated_response_part, ::Smithy::Schema::Shapes::MemberShape.new(target: GeneratedResponsePart, name: "generatedResponsePart"))
    CitationEvent.add_member(:retrieved_references, ::Smithy::Schema::Shapes::MemberShape.new(target: RetrievedReferences, name: "retrievedReferences"))
    CitationEvent.type = Types::CitationEvent
    Citations.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Citation, name: "member"))
    CodeInterpreterInvocationInput.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "code"))
    CodeInterpreterInvocationInput.add_member(:files, ::Smithy::Schema::Shapes::MemberShape.new(target: Files, name: "files"))
    CodeInterpreterInvocationInput.type = Types::CodeInterpreterInvocationInput
    CodeInterpreterInvocationOutput.add_member(:execution_output, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "executionOutput"))
    CodeInterpreterInvocationOutput.add_member(:execution_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "executionError"))
    CodeInterpreterInvocationOutput.add_member(:files, ::Smithy::Schema::Shapes::MemberShape.new(target: Files, name: "files"))
    CodeInterpreterInvocationOutput.add_member(:execution_timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "executionTimeout"))
    CodeInterpreterInvocationOutput.add_member(:metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: Metadata, name: "metadata"))
    CodeInterpreterInvocationOutput.type = Types::CodeInterpreterInvocationOutput
    Collaborator.add_member(:customer_encryption_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyArn, name: "customerEncryptionKeyArn"))
    Collaborator.add_member(:foundation_model, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelIdentifier, name: "foundationModel", traits: {"smithy.api#required" => {}}))
    Collaborator.add_member(:instruction, ::Smithy::Schema::Shapes::MemberShape.new(target: Instruction, name: "instruction", traits: {"smithy.api#required" => {}}))
    Collaborator.add_member(:idle_session_ttl_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionTTL, name: "idleSessionTTLInSeconds"))
    Collaborator.add_member(:action_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentActionGroups, name: "actionGroups"))
    Collaborator.add_member(:knowledge_bases, ::Smithy::Schema::Shapes::MemberShape.new(target: KnowledgeBases, name: "knowledgeBases"))
    Collaborator.add_member(:guardrail_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailConfigurationWithArn, name: "guardrailConfiguration"))
    Collaborator.add_member(:prompt_override_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: PromptOverrideConfiguration, name: "promptOverrideConfiguration"))
    Collaborator.add_member(:agent_collaboration, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentCollaboration, name: "agentCollaboration"))
    Collaborator.add_member(:collaborator_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: CollaboratorConfigurations, name: "collaboratorConfigurations"))
    Collaborator.add_member(:agent_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "agentName"))
    Collaborator.type = Types::Collaborator
    CollaboratorConfiguration.add_member(:collaborator_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "collaboratorName", traits: {"smithy.api#required" => {}}))
    CollaboratorConfiguration.add_member(:collaborator_instruction, ::Smithy::Schema::Shapes::MemberShape.new(target: CollaborationInstruction, name: "collaboratorInstruction", traits: {"smithy.api#required" => {}}))
    CollaboratorConfiguration.add_member(:agent_alias_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentAliasArn, name: "agentAliasArn"))
    CollaboratorConfiguration.add_member(:relay_conversation_history, ::Smithy::Schema::Shapes::MemberShape.new(target: RelayConversationHistory, name: "relayConversationHistory"))
    CollaboratorConfiguration.type = Types::CollaboratorConfiguration
    CollaboratorConfigurations.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CollaboratorConfiguration, name: "member"))
    Collaborators.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Collaborator, name: "member"))
    ConditionResultEvent.add_member(:node_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeName, name: "nodeName", traits: {"smithy.api#required" => {}}))
    ConditionResultEvent.add_member(:timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimestamp, name: "timestamp", traits: {"smithy.api#required" => {}}))
    ConditionResultEvent.add_member(:satisfied_conditions, ::Smithy::Schema::Shapes::MemberShape.new(target: SatisfiedConditions, name: "satisfiedConditions", traits: {"smithy.api#required" => {}}))
    ConditionResultEvent.type = Types::ConditionResultEvent
    ConfirmationState.add_member(:confirm, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONFIRM", traits: {"smithy.api#enumValue" => "CONFIRM"}))
    ConfirmationState.add_member(:deny, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DENY", traits: {"smithy.api#enumValue" => "DENY"}))
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: NonBlankString, name: "message"))
    ConflictException.type = Types::ConflictException
    ContentBlock.add_member(:text, Types::ContentBlock::Text, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "text"))
    ContentBlock.add_member(:unknown, Types::ContentBlock::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    ContentBlock.type = Types::ContentBlock
    ContentBlocks.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentBlock, name: "member"))
    ContentBody.add_member(:body, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "body"))
    ContentBody.add_member(:images, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageInputs, name: "images"))
    ContentBody.type = Types::ContentBody
    ContentMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "key"))
    ContentMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: Parameters, name: "value"))
    ConversationHistory.add_member(:messages, ::Smithy::Schema::Shapes::MemberShape.new(target: Messages, name: "messages"))
    ConversationHistory.type = Types::ConversationHistory
    ConversationRole.add_member(:user, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "USER", traits: {"smithy.api#enumValue" => "user"}))
    ConversationRole.add_member(:assistant, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ASSISTANT", traits: {"smithy.api#enumValue" => "assistant"}))
    CreateInvocationRequest.add_member(:invocation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "invocationId"))
    CreateInvocationRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: InvocationDescription, name: "description"))
    CreateInvocationRequest.add_member(:session_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionIdentifier, name: "sessionIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateInvocationRequest.type = Types::CreateInvocationRequest
    CreateInvocationResponse.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "sessionId", traits: {"smithy.api#required" => {}}))
    CreateInvocationResponse.add_member(:invocation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "invocationId", traits: {"smithy.api#required" => {}}))
    CreateInvocationResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimestamp, name: "createdAt", traits: {"smithy.api#required" => {}}))
    CreateInvocationResponse.type = Types::CreateInvocationResponse
    CreateSessionRequest.add_member(:session_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionMetadataMap, name: "sessionMetadata"))
    CreateSessionRequest.add_member(:encryption_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyArn, name: "encryptionKeyArn"))
    CreateSessionRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, name: "tags"))
    CreateSessionRequest.type = Types::CreateSessionRequest
    CreateSessionResponse.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "sessionId", traits: {"smithy.api#required" => {}}))
    CreateSessionResponse.add_member(:session_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionArn, name: "sessionArn", traits: {"smithy.api#required" => {}}))
    CreateSessionResponse.add_member(:session_status, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionStatus, name: "sessionStatus", traits: {"smithy.api#required" => {}}))
    CreateSessionResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimestamp, name: "createdAt", traits: {"smithy.api#required" => {}}))
    CreateSessionResponse.type = Types::CreateSessionResponse
    CreationMode.add_member(:default, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEFAULT", traits: {"smithy.api#enumValue" => "DEFAULT"}))
    CreationMode.add_member(:overridden, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OVERRIDDEN", traits: {"smithy.api#enumValue" => "OVERRIDDEN"}))
    CustomControlMethod.add_member(:return_control, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RETURN_CONTROL", traits: {"smithy.api#enumValue" => "RETURN_CONTROL"}))
    CustomOrchestration.add_member(:executor, ::Smithy::Schema::Shapes::MemberShape.new(target: OrchestrationExecutor, name: "executor"))
    CustomOrchestration.type = Types::CustomOrchestration
    CustomOrchestrationTrace.add_member(:trace_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TraceId, name: "traceId"))
    CustomOrchestrationTrace.add_member(:event, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomOrchestrationTraceEvent, name: "event"))
    CustomOrchestrationTrace.type = Types::CustomOrchestrationTrace
    CustomOrchestrationTraceEvent.add_member(:text, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "text"))
    CustomOrchestrationTraceEvent.type = Types::CustomOrchestrationTraceEvent
    DeleteAgentMemoryRequest.add_member(:agent_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentId, name: "agentId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAgentMemoryRequest.add_member(:agent_alias_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentAliasId, name: "agentAliasId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAgentMemoryRequest.add_member(:memory_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MemoryId, name: "memoryId", traits: {"smithy.api#httpQuery" => "memoryId"}))
    DeleteAgentMemoryRequest.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionId, name: "sessionId", traits: {"smithy.api#httpQuery" => "sessionId"}))
    DeleteAgentMemoryRequest.type = Types::DeleteAgentMemoryRequest
    DeleteAgentMemoryResponse.type = Types::DeleteAgentMemoryResponse
    DeleteSessionRequest.add_member(:session_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionIdentifier, name: "sessionIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteSessionRequest.type = Types::DeleteSessionRequest
    DeleteSessionResponse.type = Types::DeleteSessionResponse
    DependencyFailedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: NonBlankString, name: "message"))
    DependencyFailedException.add_member(:resource_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NonBlankString, name: "resourceName"))
    DependencyFailedException.type = Types::DependencyFailedException
    DocumentAcl.add_member(:allow_list, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentAclMembership, name: "allowList"))
    DocumentAcl.add_member(:deny_list, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentAclMembership, name: "denyList"))
    DocumentAcl.type = Types::DocumentAcl
    DocumentAclCondition.add_member(:condition_operator, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentAclMemberRelation, name: "conditionOperator"))
    DocumentAclCondition.add_member(:users, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentAclUserList, name: "users", traits: {"smithy.api#length" => {"max" => 3000}}))
    DocumentAclCondition.add_member(:groups, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentAclGroupList, name: "groups", traits: {"smithy.api#length" => {"max" => 3000}}))
    DocumentAclCondition.type = Types::DocumentAclCondition
    DocumentAclConditionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentAclCondition, name: "member"))
    DocumentAclGroup.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "id", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^\\P{C}*$", "smithy.api#required" => {}}))
    DocumentAclGroup.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentAclMembershipType, name: "type", traits: {"smithy.api#required" => {}}))
    DocumentAclGroup.type = Types::DocumentAclGroup
    DocumentAclGroupList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentAclGroup, name: "member"))
    DocumentAclMemberRelation.add_member(:and, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AND", traits: {"smithy.api#enumValue" => "AND"}))
    DocumentAclMemberRelation.add_member(:or, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OR", traits: {"smithy.api#enumValue" => "OR"}))
    DocumentAclMembership.add_member(:member_relation, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentAclMemberRelation, name: "memberRelation"))
    DocumentAclMembership.add_member(:conditions, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentAclConditionList, name: "conditions", traits: {"smithy.api#length" => {"max" => 100}}))
    DocumentAclMembership.type = Types::DocumentAclMembership
    DocumentAclMembershipType.add_member(:knowledge_base, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KNOWLEDGE_BASE", traits: {"smithy.api#enumValue" => "KNOWLEDGE_BASE"}))
    DocumentAclMembershipType.add_member(:data_source, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DATA_SOURCE", traits: {"smithy.api#enumValue" => "DATA_SOURCE"}))
    DocumentAclUser.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "id", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^\\P{C}*$", "smithy.api#required" => {}}))
    DocumentAclUser.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentAclMembershipType, name: "type", traits: {"smithy.api#required" => {}}))
    DocumentAclUser.type = Types::DocumentAclUser
    DocumentAclUserList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentAclUser, name: "member"))
    DocumentOutputFormat.add_member(:raw, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RAW", traits: {"smithy.api#enumValue" => "RAW"}))
    DocumentOutputFormat.add_member(:extracted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EXTRACTED", traits: {"smithy.api#enumValue" => "EXTRACTED"}))
    EndSessionRequest.add_member(:session_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionIdentifier, name: "sessionIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    EndSessionRequest.type = Types::EndSessionRequest
    EndSessionResponse.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "sessionId", traits: {"smithy.api#required" => {}}))
    EndSessionResponse.add_member(:session_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionArn, name: "sessionArn", traits: {"smithy.api#required" => {}}))
    EndSessionResponse.add_member(:session_status, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionStatus, name: "sessionStatus", traits: {"smithy.api#required" => {}}))
    EndSessionResponse.type = Types::EndSessionResponse
    ExecutionType.add_member(:lambda, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LAMBDA", traits: {"smithy.api#enumValue" => "LAMBDA"}))
    ExecutionType.add_member(:return_control, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RETURN_CONTROL", traits: {"smithy.api#enumValue" => "RETURN_CONTROL"}))
    ExternalSource.add_member(:source_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ExternalSourceType, name: "sourceType", traits: {"smithy.api#required" => {}}))
    ExternalSource.add_member(:s3_location, ::Smithy::Schema::Shapes::MemberShape.new(target: S3ObjectDoc, name: "s3Location"))
    ExternalSource.add_member(:byte_content, ::Smithy::Schema::Shapes::MemberShape.new(target: ByteContentDoc, name: "byteContent"))
    ExternalSource.type = Types::ExternalSource
    ExternalSourceType.add_member(:s3, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "S3", traits: {"smithy.api#enumValue" => "S3"}))
    ExternalSourceType.add_member(:byte_content, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BYTE_CONTENT", traits: {"smithy.api#enumValue" => "BYTE_CONTENT"}))
    ExternalSources.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ExternalSource, name: "member"))
    ExternalSourcesGenerationConfiguration.add_member(:prompt_template, ::Smithy::Schema::Shapes::MemberShape.new(target: PromptTemplate, name: "promptTemplate"))
    ExternalSourcesGenerationConfiguration.add_member(:guardrail_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailConfiguration, name: "guardrailConfiguration"))
    ExternalSourcesGenerationConfiguration.add_member(:inference_config, ::Smithy::Schema::Shapes::MemberShape.new(target: InferenceConfig, name: "inferenceConfig"))
    ExternalSourcesGenerationConfiguration.add_member(:additional_model_request_fields, ::Smithy::Schema::Shapes::MemberShape.new(target: AdditionalModelRequestFields, name: "additionalModelRequestFields"))
    ExternalSourcesGenerationConfiguration.add_member(:performance_config, ::Smithy::Schema::Shapes::MemberShape.new(target: PerformanceConfiguration, name: "performanceConfig"))
    ExternalSourcesGenerationConfiguration.type = Types::ExternalSourcesGenerationConfiguration
    ExternalSourcesRetrieveAndGenerateConfiguration.add_member(:model_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: BedrockModelArn, name: "modelArn", traits: {"smithy.api#required" => {}}))
    ExternalSourcesRetrieveAndGenerateConfiguration.add_member(:sources, ::Smithy::Schema::Shapes::MemberShape.new(target: ExternalSources, name: "sources", traits: {"smithy.api#required" => {}}))
    ExternalSourcesRetrieveAndGenerateConfiguration.add_member(:generation_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ExternalSourcesGenerationConfiguration, name: "generationConfiguration"))
    ExternalSourcesRetrieveAndGenerateConfiguration.type = Types::ExternalSourcesRetrieveAndGenerateConfiguration
    FailureTrace.add_member(:trace_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TraceId, name: "traceId"))
    FailureTrace.add_member(:failure_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: FailureReasonString, name: "failureReason"))
    FailureTrace.add_member(:failure_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "failureCode"))
    FailureTrace.add_member(:metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: Metadata, name: "metadata"))
    FailureTrace.type = Types::FailureTrace
    FieldForReranking.add_member(:field_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "fieldName", traits: {"smithy.api#length" => {"min" => 1, "max" => 2000}, "smithy.api#required" => {}}))
    FieldForReranking.type = Types::FieldForReranking
    FieldsForReranking.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldForReranking, name: "member"))
    FilePart.add_member(:files, ::Smithy::Schema::Shapes::MemberShape.new(target: OutputFiles, name: "files"))
    FilePart.type = Types::FilePart
    FileSource.add_member(:source_type, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSourceType, name: "sourceType", traits: {"smithy.api#required" => {}}))
    FileSource.add_member(:s3_location, ::Smithy::Schema::Shapes::MemberShape.new(target: S3ObjectFile, name: "s3Location"))
    FileSource.add_member(:byte_content, ::Smithy::Schema::Shapes::MemberShape.new(target: ByteContentFile, name: "byteContent"))
    FileSource.type = Types::FileSource
    FileSourceType.add_member(:s3, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "S3", traits: {"smithy.api#enumValue" => "S3"}))
    FileSourceType.add_member(:byte_content, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BYTE_CONTENT", traits: {"smithy.api#enumValue" => "BYTE_CONTENT"}))
    FileUseCase.add_member(:code_interpreter, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CODE_INTERPRETER", traits: {"smithy.api#enumValue" => "CODE_INTERPRETER"}))
    FileUseCase.add_member(:chat, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CHAT", traits: {"smithy.api#enumValue" => "CHAT"}))
    Files.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "member"))
    FilterAttribute.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterKey, name: "key", traits: {"smithy.api#required" => {}}))
    FilterAttribute.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterValue, name: "value", traits: {"smithy.api#required" => {}}))
    FilterAttribute.type = Types::FilterAttribute
    FinalResponse.add_member(:text, ::Smithy::Schema::Shapes::MemberShape.new(target: FinalResponseString, name: "text"))
    FinalResponse.add_member(:metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: Metadata, name: "metadata"))
    FinalResponse.type = Types::FinalResponse
    FlowCompletionEvent.add_member(:completion_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowCompletionReason, name: "completionReason", traits: {"smithy.api#required" => {}}))
    FlowCompletionEvent.type = Types::FlowCompletionEvent
    FlowCompletionReason.add_member(:success, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUCCESS", traits: {"smithy.api#enumValue" => "SUCCESS"}))
    FlowCompletionReason.add_member(:input_required, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INPUT_REQUIRED", traits: {"smithy.api#enumValue" => "INPUT_REQUIRED"}))
    FlowControlNodeType.add_member(:iterator, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ITERATOR", traits: {"smithy.api#enumValue" => "Iterator"}))
    FlowControlNodeType.add_member(:loop, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LOOP", traits: {"smithy.api#enumValue" => "Loop"}))
    FlowErrorCode.add_member(:validation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VALIDATION", traits: {"smithy.api#enumValue" => "VALIDATION"}))
    FlowErrorCode.add_member(:internal_server, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INTERNAL_SERVER", traits: {"smithy.api#enumValue" => "INTERNAL_SERVER"}))
    FlowErrorCode.add_member(:node_execution_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NODE_EXECUTION_FAILED", traits: {"smithy.api#enumValue" => "NODE_EXECUTION_FAILED"}))
    FlowExecutionContent.add_member(:document, Types::FlowExecutionContent::Document, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Document, name: "document"))
    FlowExecutionContent.add_member(:unknown, Types::FlowExecutionContent::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    FlowExecutionContent.type = Types::FlowExecutionContent
    FlowExecutionError.add_member(:node_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeName, name: "nodeName"))
    FlowExecutionError.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowExecutionErrorType, name: "error"))
    FlowExecutionError.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message"))
    FlowExecutionError.type = Types::FlowExecutionError
    FlowExecutionErrorType.add_member(:timed_out, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TIMED_OUT", traits: {"smithy.api#enumValue" => "ExecutionTimedOut"}))
    FlowExecutionErrors.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowExecutionError, name: "member"))
    FlowExecutionEvent.add_member(:flow_input_event, Types::FlowExecutionEvent::FlowInputEvent, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowExecutionInputEvent, name: "flowInputEvent"))
    FlowExecutionEvent.add_member(:flow_output_event, Types::FlowExecutionEvent::FlowOutputEvent, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowExecutionOutputEvent, name: "flowOutputEvent"))
    FlowExecutionEvent.add_member(:node_input_event, Types::FlowExecutionEvent::NodeInputEvent, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeInputEvent, name: "nodeInputEvent"))
    FlowExecutionEvent.add_member(:node_output_event, Types::FlowExecutionEvent::NodeOutputEvent, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeOutputEvent, name: "nodeOutputEvent"))
    FlowExecutionEvent.add_member(:condition_result_event, Types::FlowExecutionEvent::ConditionResultEvent, ::Smithy::Schema::Shapes::MemberShape.new(target: ConditionResultEvent, name: "conditionResultEvent"))
    FlowExecutionEvent.add_member(:node_failure_event, Types::FlowExecutionEvent::NodeFailureEvent, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeFailureEvent, name: "nodeFailureEvent"))
    FlowExecutionEvent.add_member(:flow_failure_event, Types::FlowExecutionEvent::FlowFailureEvent, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowFailureEvent, name: "flowFailureEvent"))
    FlowExecutionEvent.add_member(:node_action_event, Types::FlowExecutionEvent::NodeActionEvent, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeActionEvent, name: "nodeActionEvent"))
    FlowExecutionEvent.add_member(:node_dependency_event, Types::FlowExecutionEvent::NodeDependencyEvent, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeDependencyEvent, name: "nodeDependencyEvent"))
    FlowExecutionEvent.add_member(:unknown, Types::FlowExecutionEvent::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    FlowExecutionEvent.type = Types::FlowExecutionEvent
    FlowExecutionEventType.add_member(:node, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NODE", traits: {"smithy.api#enumValue" => "Node"}))
    FlowExecutionEventType.add_member(:flow, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FLOW", traits: {"smithy.api#enumValue" => "Flow"}))
    FlowExecutionEvents.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowExecutionEvent, name: "member"))
    FlowExecutionInputEvent.add_member(:node_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeName, name: "nodeName", traits: {"smithy.api#required" => {}}))
    FlowExecutionInputEvent.add_member(:timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimestamp, name: "timestamp", traits: {"smithy.api#required" => {}}))
    FlowExecutionInputEvent.add_member(:fields, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowInputFields, name: "fields", traits: {"smithy.api#required" => {}}))
    FlowExecutionInputEvent.type = Types::FlowExecutionInputEvent
    FlowExecutionOutputEvent.add_member(:node_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeName, name: "nodeName", traits: {"smithy.api#required" => {}}))
    FlowExecutionOutputEvent.add_member(:timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimestamp, name: "timestamp", traits: {"smithy.api#required" => {}}))
    FlowExecutionOutputEvent.add_member(:fields, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowOutputFields, name: "fields", traits: {"smithy.api#required" => {}}))
    FlowExecutionOutputEvent.type = Types::FlowExecutionOutputEvent
    FlowExecutionStatus.add_member(:running, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RUNNING", traits: {"smithy.api#enumValue" => "Running"}))
    FlowExecutionStatus.add_member(:succeeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUCCEEDED", traits: {"smithy.api#enumValue" => "Succeeded"}))
    FlowExecutionStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "Failed"}))
    FlowExecutionStatus.add_member(:timed_out, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TIMED_OUT", traits: {"smithy.api#enumValue" => "TimedOut"}))
    FlowExecutionStatus.add_member(:aborted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ABORTED", traits: {"smithy.api#enumValue" => "Aborted"}))
    FlowExecutionSummaries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowExecutionSummary, name: "member"))
    FlowExecutionSummary.add_member(:execution_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowExecutionIdentifier, name: "executionArn", traits: {"smithy.api#required" => {}}))
    FlowExecutionSummary.add_member(:flow_alias_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowAliasIdentifier, name: "flowAliasIdentifier", traits: {"smithy.api#required" => {}}))
    FlowExecutionSummary.add_member(:flow_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowIdentifier, name: "flowIdentifier", traits: {"smithy.api#required" => {}}))
    FlowExecutionSummary.add_member(:flow_version, ::Smithy::Schema::Shapes::MemberShape.new(target: Version, name: "flowVersion", traits: {"smithy.api#required" => {}}))
    FlowExecutionSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowExecutionStatus, name: "status", traits: {"smithy.api#required" => {}}))
    FlowExecutionSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimestamp, name: "createdAt", traits: {"smithy.api#required" => {}}))
    FlowExecutionSummary.add_member(:ended_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimestamp, name: "endedAt"))
    FlowExecutionSummary.type = Types::FlowExecutionSummary
    FlowFailureEvent.add_member(:timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimestamp, name: "timestamp", traits: {"smithy.api#required" => {}}))
    FlowFailureEvent.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowErrorCode, name: "errorCode", traits: {"smithy.api#required" => {}}))
    FlowFailureEvent.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "errorMessage", traits: {"smithy.api#required" => {}}))
    FlowFailureEvent.type = Types::FlowFailureEvent
    FlowInput.add_member(:node_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeName, name: "nodeName", traits: {"smithy.api#required" => {}}))
    FlowInput.add_member(:node_output_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeOutputName, name: "nodeOutputName"))
    FlowInput.add_member(:content, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowInputContent, name: "content", traits: {"smithy.api#required" => {}}))
    FlowInput.add_member(:node_input_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeInputName, name: "nodeInputName"))
    FlowInput.type = Types::FlowInput
    FlowInputContent.add_member(:document, Types::FlowInputContent::Document, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Document, name: "document"))
    FlowInputContent.add_member(:unknown, Types::FlowInputContent::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    FlowInputContent.type = Types::FlowInputContent
    FlowInputField.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeInputName, name: "name", traits: {"smithy.api#required" => {}}))
    FlowInputField.add_member(:content, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowExecutionContent, name: "content", traits: {"smithy.api#required" => {}}))
    FlowInputField.type = Types::FlowInputField
    FlowInputFields.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowInputField, name: "member"))
    FlowInputs.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowInput, name: "member"))
    FlowMultiTurnInputContent.add_member(:document, Types::FlowMultiTurnInputContent::Document, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Document, name: "document"))
    FlowMultiTurnInputContent.add_member(:unknown, Types::FlowMultiTurnInputContent::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    FlowMultiTurnInputContent.type = Types::FlowMultiTurnInputContent
    FlowMultiTurnInputRequestEvent.add_member(:node_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeName, name: "nodeName", traits: {"smithy.api#required" => {}}))
    FlowMultiTurnInputRequestEvent.add_member(:node_type, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeType, name: "nodeType", traits: {"smithy.api#required" => {}}))
    FlowMultiTurnInputRequestEvent.add_member(:content, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowMultiTurnInputContent, name: "content", traits: {"smithy.api#required" => {}}))
    FlowMultiTurnInputRequestEvent.type = Types::FlowMultiTurnInputRequestEvent
    FlowNodeIODataType.add_member(:string, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STRING", traits: {"smithy.api#enumValue" => "String"}))
    FlowNodeIODataType.add_member(:number, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NUMBER", traits: {"smithy.api#enumValue" => "Number"}))
    FlowNodeIODataType.add_member(:boolean, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BOOLEAN", traits: {"smithy.api#enumValue" => "Boolean"}))
    FlowNodeIODataType.add_member(:object, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OBJECT", traits: {"smithy.api#enumValue" => "Object"}))
    FlowNodeIODataType.add_member(:array, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ARRAY", traits: {"smithy.api#enumValue" => "Array"}))
    FlowNodeInputCategory.add_member(:loop_condition, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LOOP_CONDITION", traits: {"smithy.api#enumValue" => "LoopCondition"}))
    FlowNodeInputCategory.add_member(:return_value_to_loop_start, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RETURN_VALUE_TO_LOOP_START", traits: {"smithy.api#enumValue" => "ReturnValueToLoopStart"}))
    FlowNodeInputCategory.add_member(:exit_loop, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EXIT_LOOP", traits: {"smithy.api#enumValue" => "ExitLoop"}))
    FlowOutputContent.add_member(:document, Types::FlowOutputContent::Document, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Document, name: "document"))
    FlowOutputContent.add_member(:unknown, Types::FlowOutputContent::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    FlowOutputContent.type = Types::FlowOutputContent
    FlowOutputEvent.add_member(:node_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeName, name: "nodeName", traits: {"smithy.api#required" => {}}))
    FlowOutputEvent.add_member(:node_type, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeType, name: "nodeType", traits: {"smithy.api#required" => {}}))
    FlowOutputEvent.add_member(:content, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowOutputContent, name: "content", traits: {"smithy.api#required" => {}}))
    FlowOutputEvent.type = Types::FlowOutputEvent
    FlowOutputField.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeOutputName, name: "name", traits: {"smithy.api#required" => {}}))
    FlowOutputField.add_member(:content, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowExecutionContent, name: "content", traits: {"smithy.api#required" => {}}))
    FlowOutputField.type = Types::FlowOutputField
    FlowOutputFields.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowOutputField, name: "member"))
    FlowResponseStream.add_member(:flow_output_event, Types::FlowResponseStream::FlowOutputEvent, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowOutputEvent, name: "flowOutputEvent"))
    FlowResponseStream.add_member(:flow_completion_event, Types::FlowResponseStream::FlowCompletionEvent, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowCompletionEvent, name: "flowCompletionEvent"))
    FlowResponseStream.add_member(:flow_trace_event, Types::FlowResponseStream::FlowTraceEvent, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowTraceEvent, name: "flowTraceEvent"))
    FlowResponseStream.add_member(:internal_server_exception, Types::FlowResponseStream::InternalServerException, ::Smithy::Schema::Shapes::MemberShape.new(target: InternalServerException, name: "internalServerException"))
    FlowResponseStream.add_member(:validation_exception, Types::FlowResponseStream::ValidationException, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationException, name: "validationException"))
    FlowResponseStream.add_member(:resource_not_found_exception, Types::FlowResponseStream::ResourceNotFoundException, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceNotFoundException, name: "resourceNotFoundException"))
    FlowResponseStream.add_member(:service_quota_exceeded_exception, Types::FlowResponseStream::ServiceQuotaExceededException, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceQuotaExceededException, name: "serviceQuotaExceededException"))
    FlowResponseStream.add_member(:throttling_exception, Types::FlowResponseStream::ThrottlingException, ::Smithy::Schema::Shapes::MemberShape.new(target: ThrottlingException, name: "throttlingException"))
    FlowResponseStream.add_member(:access_denied_exception, Types::FlowResponseStream::AccessDeniedException, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessDeniedException, name: "accessDeniedException"))
    FlowResponseStream.add_member(:conflict_exception, Types::FlowResponseStream::ConflictException, ::Smithy::Schema::Shapes::MemberShape.new(target: ConflictException, name: "conflictException"))
    FlowResponseStream.add_member(:dependency_failed_exception, Types::FlowResponseStream::DependencyFailedException, ::Smithy::Schema::Shapes::MemberShape.new(target: DependencyFailedException, name: "dependencyFailedException"))
    FlowResponseStream.add_member(:bad_gateway_exception, Types::FlowResponseStream::BadGatewayException, ::Smithy::Schema::Shapes::MemberShape.new(target: BadGatewayException, name: "badGatewayException"))
    FlowResponseStream.add_member(:flow_multi_turn_input_request_event, Types::FlowResponseStream::FlowMultiTurnInputRequestEvent, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowMultiTurnInputRequestEvent, name: "flowMultiTurnInputRequestEvent"))
    FlowResponseStream.add_member(:unknown, Types::FlowResponseStream::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    FlowResponseStream.type = Types::FlowResponseStream
    FlowTrace.add_member(:node_input_trace, Types::FlowTrace::NodeInputTrace, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowTraceNodeInputEvent, name: "nodeInputTrace"))
    FlowTrace.add_member(:node_output_trace, Types::FlowTrace::NodeOutputTrace, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowTraceNodeOutputEvent, name: "nodeOutputTrace"))
    FlowTrace.add_member(:condition_node_result_trace, Types::FlowTrace::ConditionNodeResultTrace, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowTraceConditionNodeResultEvent, name: "conditionNodeResultTrace"))
    FlowTrace.add_member(:node_action_trace, Types::FlowTrace::NodeActionTrace, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowTraceNodeActionEvent, name: "nodeActionTrace"))
    FlowTrace.add_member(:node_dependency_trace, Types::FlowTrace::NodeDependencyTrace, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowTraceDependencyEvent, name: "nodeDependencyTrace"))
    FlowTrace.add_member(:unknown, Types::FlowTrace::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    FlowTrace.type = Types::FlowTrace
    FlowTraceCondition.add_member(:condition_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "conditionName", traits: {"smithy.api#required" => {}}))
    FlowTraceCondition.type = Types::FlowTraceCondition
    FlowTraceConditionNodeResultEvent.add_member(:node_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeName, name: "nodeName", traits: {"smithy.api#required" => {}}))
    FlowTraceConditionNodeResultEvent.add_member(:timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimestamp, name: "timestamp", traits: {"smithy.api#required" => {}}))
    FlowTraceConditionNodeResultEvent.add_member(:satisfied_conditions, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowTraceConditions, name: "satisfiedConditions", traits: {"smithy.api#required" => {}}))
    FlowTraceConditionNodeResultEvent.type = Types::FlowTraceConditionNodeResultEvent
    FlowTraceConditions.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowTraceCondition, name: "member"))
    FlowTraceDependencyEvent.add_member(:node_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeName, name: "nodeName", traits: {"smithy.api#required" => {}}))
    FlowTraceDependencyEvent.add_member(:timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimestamp, name: "timestamp", traits: {"smithy.api#required" => {}}))
    FlowTraceDependencyEvent.add_member(:trace_elements, ::Smithy::Schema::Shapes::MemberShape.new(target: TraceElements, name: "traceElements", traits: {"smithy.api#required" => {}}))
    FlowTraceDependencyEvent.type = Types::FlowTraceDependencyEvent
    FlowTraceEvent.add_member(:trace, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowTrace, name: "trace", traits: {"smithy.api#required" => {}}))
    FlowTraceEvent.type = Types::FlowTraceEvent
    FlowTraceNodeActionEvent.add_member(:node_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeName, name: "nodeName", traits: {"smithy.api#required" => {}}))
    FlowTraceNodeActionEvent.add_member(:timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimestamp, name: "timestamp", traits: {"smithy.api#required" => {}}))
    FlowTraceNodeActionEvent.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "requestId", traits: {"smithy.api#required" => {}}))
    FlowTraceNodeActionEvent.add_member(:service_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "serviceName", traits: {"smithy.api#required" => {}}))
    FlowTraceNodeActionEvent.add_member(:operation_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "operationName", traits: {"smithy.api#required" => {}}))
    FlowTraceNodeActionEvent.add_member(:operation_request, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Document, name: "operationRequest"))
    FlowTraceNodeActionEvent.add_member(:operation_response, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Document, name: "operationResponse"))
    FlowTraceNodeActionEvent.type = Types::FlowTraceNodeActionEvent
    FlowTraceNodeInputContent.add_member(:document, Types::FlowTraceNodeInputContent::Document, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Document, name: "document"))
    FlowTraceNodeInputContent.add_member(:unknown, Types::FlowTraceNodeInputContent::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    FlowTraceNodeInputContent.type = Types::FlowTraceNodeInputContent
    FlowTraceNodeInputEvent.add_member(:node_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeName, name: "nodeName", traits: {"smithy.api#required" => {}}))
    FlowTraceNodeInputEvent.add_member(:timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimestamp, name: "timestamp", traits: {"smithy.api#required" => {}}))
    FlowTraceNodeInputEvent.add_member(:fields, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowTraceNodeInputFields, name: "fields", traits: {"smithy.api#required" => {}}))
    FlowTraceNodeInputEvent.type = Types::FlowTraceNodeInputEvent
    FlowTraceNodeInputExecutionChain.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowTraceNodeInputExecutionChainItem, name: "member"))
    FlowTraceNodeInputExecutionChainItem.add_member(:node_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeName, name: "nodeName", traits: {"smithy.api#required" => {}}))
    FlowTraceNodeInputExecutionChainItem.add_member(:index, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "index"))
    FlowTraceNodeInputExecutionChainItem.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowControlNodeType, name: "type", traits: {"smithy.api#required" => {}}))
    FlowTraceNodeInputExecutionChainItem.type = Types::FlowTraceNodeInputExecutionChainItem
    FlowTraceNodeInputField.add_member(:node_input_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeInputName, name: "nodeInputName", traits: {"smithy.api#required" => {}}))
    FlowTraceNodeInputField.add_member(:content, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowTraceNodeInputContent, name: "content", traits: {"smithy.api#required" => {}}))
    FlowTraceNodeInputField.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowTraceNodeInputSource, name: "source"))
    FlowTraceNodeInputField.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowNodeIODataType, name: "type"))
    FlowTraceNodeInputField.add_member(:category, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowNodeInputCategory, name: "category"))
    FlowTraceNodeInputField.add_member(:execution_chain, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowTraceNodeInputExecutionChain, name: "executionChain"))
    FlowTraceNodeInputField.type = Types::FlowTraceNodeInputField
    FlowTraceNodeInputFields.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowTraceNodeInputField, name: "member"))
    FlowTraceNodeInputSource.add_member(:node_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeName, name: "nodeName", traits: {"smithy.api#required" => {}}))
    FlowTraceNodeInputSource.add_member(:output_field_name, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowNodeOutputName, name: "outputFieldName", traits: {"smithy.api#required" => {}}))
    FlowTraceNodeInputSource.add_member(:expression, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowNodeInputExpression, name: "expression", traits: {"smithy.api#required" => {}}))
    FlowTraceNodeInputSource.type = Types::FlowTraceNodeInputSource
    FlowTraceNodeOutputContent.add_member(:document, Types::FlowTraceNodeOutputContent::Document, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Document, name: "document"))
    FlowTraceNodeOutputContent.add_member(:unknown, Types::FlowTraceNodeOutputContent::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    FlowTraceNodeOutputContent.type = Types::FlowTraceNodeOutputContent
    FlowTraceNodeOutputEvent.add_member(:node_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeName, name: "nodeName", traits: {"smithy.api#required" => {}}))
    FlowTraceNodeOutputEvent.add_member(:timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimestamp, name: "timestamp", traits: {"smithy.api#required" => {}}))
    FlowTraceNodeOutputEvent.add_member(:fields, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowTraceNodeOutputFields, name: "fields", traits: {"smithy.api#required" => {}}))
    FlowTraceNodeOutputEvent.type = Types::FlowTraceNodeOutputEvent
    FlowTraceNodeOutputField.add_member(:node_output_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeOutputName, name: "nodeOutputName", traits: {"smithy.api#required" => {}}))
    FlowTraceNodeOutputField.add_member(:content, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowTraceNodeOutputContent, name: "content", traits: {"smithy.api#required" => {}}))
    FlowTraceNodeOutputField.add_member(:next, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowTraceNodeOutputNextList, name: "next"))
    FlowTraceNodeOutputField.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowNodeIODataType, name: "type"))
    FlowTraceNodeOutputField.type = Types::FlowTraceNodeOutputField
    FlowTraceNodeOutputFields.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowTraceNodeOutputField, name: "member"))
    FlowTraceNodeOutputNext.add_member(:node_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeName, name: "nodeName", traits: {"smithy.api#required" => {}}))
    FlowTraceNodeOutputNext.add_member(:input_field_name, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowNodeInputName, name: "inputFieldName", traits: {"smithy.api#required" => {}}))
    FlowTraceNodeOutputNext.type = Types::FlowTraceNodeOutputNext
    FlowTraceNodeOutputNextList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowTraceNodeOutputNext, name: "member"))
    FoundationModelConfiguration.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: FoundationModelConfigurationType, name: "type", traits: {"smithy.api#required" => {}}))
    FoundationModelConfiguration.add_member(:bedrock_foundation_model_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: BedrockFoundationModelConfiguration, name: "bedrockFoundationModelConfiguration"))
    FoundationModelConfiguration.add_member(:mantle_foundation_model_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: MantleFoundationModelConfiguration, name: "mantleFoundationModelConfiguration"))
    FoundationModelConfiguration.type = Types::FoundationModelConfiguration
    FoundationModelConfigurationType.add_member(:bedrock_foundation_model, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BEDROCK_FOUNDATION_MODEL", traits: {"smithy.api#enumValue" => "BEDROCK_FOUNDATION_MODEL"}))
    FoundationModelConfigurationType.add_member(:mantle_foundation_model, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MANTLE_FOUNDATION_MODEL", traits: {"smithy.api#enumValue" => "MANTLE_FOUNDATION_MODEL"}))
    FoundationModelType.add_member(:custom, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CUSTOM", traits: {"smithy.api#enumValue" => "CUSTOM"}))
    FoundationModelType.add_member(:managed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MANAGED", traits: {"smithy.api#enumValue" => "MANAGED"}))
    FunctionDefinition.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "name", traits: {"smithy.api#required" => {}}))
    FunctionDefinition.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionDescription, name: "description"))
    FunctionDefinition.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterMap, name: "parameters"))
    FunctionDefinition.add_member(:require_confirmation, ::Smithy::Schema::Shapes::MemberShape.new(target: RequireConfirmation, name: "requireConfirmation"))
    FunctionDefinition.type = Types::FunctionDefinition
    FunctionInvocationInput.add_member(:action_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "actionGroup", traits: {"smithy.api#required" => {}}))
    FunctionInvocationInput.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionParameters, name: "parameters"))
    FunctionInvocationInput.add_member(:function, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "function"))
    FunctionInvocationInput.add_member(:action_invocation_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionInvocationType, name: "actionInvocationType"))
    FunctionInvocationInput.add_member(:agent_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "agentId"))
    FunctionInvocationInput.add_member(:collaborator_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "collaboratorName"))
    FunctionInvocationInput.type = Types::FunctionInvocationInput
    FunctionParameter.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "name"))
    FunctionParameter.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "type"))
    FunctionParameter.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "value"))
    FunctionParameter.type = Types::FunctionParameter
    FunctionParameters.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionParameter, name: "member"))
    FunctionResult.add_member(:action_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "actionGroup", traits: {"smithy.api#required" => {}}))
    FunctionResult.add_member(:confirmation_state, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfirmationState, name: "confirmationState"))
    FunctionResult.add_member(:function, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "function"))
    FunctionResult.add_member(:response_body, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseBody, name: "responseBody"))
    FunctionResult.add_member(:response_state, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseState, name: "responseState"))
    FunctionResult.add_member(:agent_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "agentId"))
    FunctionResult.type = Types::FunctionResult
    FunctionSchema.add_member(:functions, Types::FunctionSchema::Functions, ::Smithy::Schema::Shapes::MemberShape.new(target: Functions, name: "functions"))
    FunctionSchema.add_member(:unknown, Types::FunctionSchema::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    FunctionSchema.type = Types::FunctionSchema
    Functions.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionDefinition, name: "member"))
    GenerateQueryRequest.add_member(:query_generation_input, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryGenerationInput, name: "queryGenerationInput", traits: {"smithy.api#required" => {}}))
    GenerateQueryRequest.add_member(:transformation_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: TransformationConfiguration, name: "transformationConfiguration", traits: {"smithy.api#required" => {}}))
    GenerateQueryRequest.type = Types::GenerateQueryRequest
    GenerateQueryResponse.add_member(:queries, ::Smithy::Schema::Shapes::MemberShape.new(target: GeneratedQueries, name: "queries"))
    GenerateQueryResponse.type = Types::GenerateQueryResponse
    GeneratedQueries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: GeneratedQuery, name: "member"))
    GeneratedQuery.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: GeneratedQueryType, name: "type"))
    GeneratedQuery.add_member(:sql, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "sql"))
    GeneratedQuery.type = Types::GeneratedQuery
    GeneratedQueryType.add_member(:redshift_sql, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REDSHIFT_SQL", traits: {"smithy.api#enumValue" => "REDSHIFT_SQL"}))
    GeneratedResponsePart.add_member(:text_response_part, ::Smithy::Schema::Shapes::MemberShape.new(target: TextResponsePart, name: "textResponsePart"))
    GeneratedResponsePart.type = Types::GeneratedResponsePart
    GenerationConfiguration.add_member(:prompt_template, ::Smithy::Schema::Shapes::MemberShape.new(target: PromptTemplate, name: "promptTemplate"))
    GenerationConfiguration.add_member(:guardrail_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailConfiguration, name: "guardrailConfiguration"))
    GenerationConfiguration.add_member(:inference_config, ::Smithy::Schema::Shapes::MemberShape.new(target: InferenceConfig, name: "inferenceConfig"))
    GenerationConfiguration.add_member(:additional_model_request_fields, ::Smithy::Schema::Shapes::MemberShape.new(target: AdditionalModelRequestFields, name: "additionalModelRequestFields"))
    GenerationConfiguration.add_member(:performance_config, ::Smithy::Schema::Shapes::MemberShape.new(target: PerformanceConfiguration, name: "performanceConfig"))
    GenerationConfiguration.type = Types::GenerationConfiguration
    GetAgentMemoryRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    GetAgentMemoryRequest.add_member(:max_items, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxItems", traits: {"smithy.api#httpQuery" => "maxItems"}))
    GetAgentMemoryRequest.add_member(:agent_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentId, name: "agentId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAgentMemoryRequest.add_member(:agent_alias_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentAliasId, name: "agentAliasId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAgentMemoryRequest.add_member(:memory_type, ::Smithy::Schema::Shapes::MemberShape.new(target: MemoryType, name: "memoryType", traits: {"smithy.api#httpQuery" => "memoryType", "smithy.api#required" => {}}))
    GetAgentMemoryRequest.add_member(:memory_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MemoryId, name: "memoryId", traits: {"smithy.api#httpQuery" => "memoryId", "smithy.api#required" => {}}))
    GetAgentMemoryRequest.type = Types::GetAgentMemoryRequest
    GetAgentMemoryResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    GetAgentMemoryResponse.add_member(:memory_contents, ::Smithy::Schema::Shapes::MemberShape.new(target: Memories, name: "memoryContents"))
    GetAgentMemoryResponse.type = Types::GetAgentMemoryResponse
    GetDocumentContentRequest.add_member(:knowledge_base_id, ::Smithy::Schema::Shapes::MemberShape.new(target: KnowledgeBaseIdentifier, name: "knowledgeBaseId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDocumentContentRequest.add_member(:data_source_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceId, name: "dataSourceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDocumentContentRequest.add_member(:document_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentId, name: "documentId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDocumentContentRequest.add_member(:output_format, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentOutputFormat, name: "outputFormat"))
    GetDocumentContentRequest.add_member(:user_context, ::Smithy::Schema::Shapes::MemberShape.new(target: UserContext, name: "userContext"))
    GetDocumentContentRequest.type = Types::GetDocumentContentRequest
    GetDocumentContentResponse.add_member(:mime_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "mimeType", traits: {"smithy.api#required" => {}}))
    GetDocumentContentResponse.add_member(:presigned_url, ::Smithy::Schema::Shapes::MemberShape.new(target: PresignedUrl, name: "presignedUrl", traits: {"smithy.api#required" => {}}))
    GetDocumentContentResponse.add_member(:document_content_length, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "documentContentLength"))
    GetDocumentContentResponse.type = Types::GetDocumentContentResponse
    GetExecutionFlowSnapshotRequest.add_member(:flow_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowIdentifier, name: "flowIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetExecutionFlowSnapshotRequest.add_member(:flow_alias_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowAliasIdentifier, name: "flowAliasIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetExecutionFlowSnapshotRequest.add_member(:execution_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowExecutionIdentifier, name: "executionIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetExecutionFlowSnapshotRequest.type = Types::GetExecutionFlowSnapshotRequest
    GetExecutionFlowSnapshotResponse.add_member(:flow_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowIdentifier, name: "flowIdentifier", traits: {"smithy.api#required" => {}}))
    GetExecutionFlowSnapshotResponse.add_member(:flow_alias_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowAliasIdentifier, name: "flowAliasIdentifier", traits: {"smithy.api#required" => {}}))
    GetExecutionFlowSnapshotResponse.add_member(:flow_version, ::Smithy::Schema::Shapes::MemberShape.new(target: Version, name: "flowVersion", traits: {"smithy.api#required" => {}}))
    GetExecutionFlowSnapshotResponse.add_member(:execution_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowExecutionRoleArn, name: "executionRoleArn", traits: {"smithy.api#required" => {}}))
    GetExecutionFlowSnapshotResponse.add_member(:definition, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "definition", traits: {"smithy.api#required" => {}}))
    GetExecutionFlowSnapshotResponse.add_member(:customer_encryption_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyArn, name: "customerEncryptionKeyArn"))
    GetExecutionFlowSnapshotResponse.type = Types::GetExecutionFlowSnapshotResponse
    GetFlowExecutionRequest.add_member(:flow_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowIdentifier, name: "flowIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetFlowExecutionRequest.add_member(:flow_alias_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowAliasIdentifier, name: "flowAliasIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetFlowExecutionRequest.add_member(:execution_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowExecutionIdentifier, name: "executionIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetFlowExecutionRequest.type = Types::GetFlowExecutionRequest
    GetFlowExecutionResponse.add_member(:execution_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowExecutionIdentifier, name: "executionArn", traits: {"smithy.api#required" => {}}))
    GetFlowExecutionResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowExecutionStatus, name: "status", traits: {"smithy.api#required" => {}}))
    GetFlowExecutionResponse.add_member(:started_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimestamp, name: "startedAt", traits: {"smithy.api#required" => {}}))
    GetFlowExecutionResponse.add_member(:ended_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimestamp, name: "endedAt"))
    GetFlowExecutionResponse.add_member(:errors, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowExecutionErrors, name: "errors"))
    GetFlowExecutionResponse.add_member(:flow_alias_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowAliasIdentifier, name: "flowAliasIdentifier", traits: {"smithy.api#required" => {}}))
    GetFlowExecutionResponse.add_member(:flow_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowIdentifier, name: "flowIdentifier", traits: {"smithy.api#required" => {}}))
    GetFlowExecutionResponse.add_member(:flow_version, ::Smithy::Schema::Shapes::MemberShape.new(target: Version, name: "flowVersion", traits: {"smithy.api#required" => {}}))
    GetFlowExecutionResponse.type = Types::GetFlowExecutionResponse
    GetIngestedDocumentAclRequest.add_member(:knowledge_base_id, ::Smithy::Schema::Shapes::MemberShape.new(target: KnowledgeBaseIdentifier, name: "knowledgeBaseId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetIngestedDocumentAclRequest.add_member(:data_source_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceId, name: "dataSourceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetIngestedDocumentAclRequest.add_member(:document_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentId, name: "documentId", traits: {"smithy.api#required" => {}}))
    GetIngestedDocumentAclRequest.type = Types::GetIngestedDocumentAclRequest
    GetIngestedDocumentAclResponse.add_member(:document_acl, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentAcl, name: "documentAcl", traits: {"smithy.api#required" => {}}))
    GetIngestedDocumentAclResponse.type = Types::GetIngestedDocumentAclResponse
    GetInvocationStepRequest.add_member(:invocation_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: InvocationIdentifier, name: "invocationIdentifier", traits: {"smithy.api#required" => {}}))
    GetInvocationStepRequest.add_member(:invocation_step_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "invocationStepId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetInvocationStepRequest.add_member(:session_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionIdentifier, name: "sessionIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetInvocationStepRequest.type = Types::GetInvocationStepRequest
    GetInvocationStepResponse.add_member(:invocation_step, ::Smithy::Schema::Shapes::MemberShape.new(target: InvocationStep, name: "invocationStep", traits: {"smithy.api#required" => {}}))
    GetInvocationStepResponse.type = Types::GetInvocationStepResponse
    GetSessionRequest.add_member(:session_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionIdentifier, name: "sessionIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSessionRequest.type = Types::GetSessionRequest
    GetSessionResponse.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "sessionId", traits: {"smithy.api#required" => {}}))
    GetSessionResponse.add_member(:session_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionArn, name: "sessionArn", traits: {"smithy.api#required" => {}}))
    GetSessionResponse.add_member(:session_status, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionStatus, name: "sessionStatus", traits: {"smithy.api#required" => {}}))
    GetSessionResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimestamp, name: "createdAt", traits: {"smithy.api#required" => {}}))
    GetSessionResponse.add_member(:last_updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimestamp, name: "lastUpdatedAt", traits: {"smithy.api#required" => {}}))
    GetSessionResponse.add_member(:session_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionMetadataMap, name: "sessionMetadata"))
    GetSessionResponse.add_member(:encryption_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyArn, name: "encryptionKeyArn"))
    GetSessionResponse.type = Types::GetSessionResponse
    GuadrailAction.add_member(:intervened, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INTERVENED", traits: {"smithy.api#enumValue" => "INTERVENED"}))
    GuadrailAction.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))
    GuardrailAction.add_member(:intervened, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INTERVENED", traits: {"smithy.api#enumValue" => "INTERVENED"}))
    GuardrailAction.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))
    GuardrailAssessment.add_member(:topic_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailTopicPolicyAssessment, name: "topicPolicy"))
    GuardrailAssessment.add_member(:content_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailContentPolicyAssessment, name: "contentPolicy"))
    GuardrailAssessment.add_member(:word_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailWordPolicyAssessment, name: "wordPolicy"))
    GuardrailAssessment.add_member(:sensitive_information_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailSensitiveInformationPolicyAssessment, name: "sensitiveInformationPolicy"))
    GuardrailAssessment.type = Types::GuardrailAssessment
    GuardrailAssessmentList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailAssessment, name: "member"))
    GuardrailConfiguration.add_member(:guardrail_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "guardrailId", traits: {"smithy.api#length" => {"max" => 64}, "smithy.api#pattern" => "^[a-z0-9]+$", "smithy.api#required" => {}}))
    GuardrailConfiguration.add_member(:guardrail_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "guardrailVersion", traits: {"smithy.api#length" => {"min" => 1, "max" => 5}, "smithy.api#pattern" => "^(([1-9][0-9]{0,7})|(DRAFT))$", "smithy.api#required" => {}}))
    GuardrailConfiguration.type = Types::GuardrailConfiguration
    GuardrailConfigurationWithArn.add_member(:guardrail_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailIdentifierWithArn, name: "guardrailIdentifier", traits: {"smithy.api#required" => {}}))
    GuardrailConfigurationWithArn.add_member(:guardrail_version, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailVersion, name: "guardrailVersion", traits: {"smithy.api#required" => {}}))
    GuardrailConfigurationWithArn.type = Types::GuardrailConfigurationWithArn
    GuardrailContentFilter.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailContentFilterType, name: "type"))
    GuardrailContentFilter.add_member(:confidence, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailContentFilterConfidence, name: "confidence"))
    GuardrailContentFilter.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailContentPolicyAction, name: "action"))
    GuardrailContentFilter.type = Types::GuardrailContentFilter
    GuardrailContentFilterConfidence.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))
    GuardrailContentFilterConfidence.add_member(:low, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LOW", traits: {"smithy.api#enumValue" => "LOW"}))
    GuardrailContentFilterConfidence.add_member(:medium, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MEDIUM", traits: {"smithy.api#enumValue" => "MEDIUM"}))
    GuardrailContentFilterConfidence.add_member(:high, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HIGH", traits: {"smithy.api#enumValue" => "HIGH"}))
    GuardrailContentFilterList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailContentFilter, name: "member"))
    GuardrailContentFilterType.add_member(:insults, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INSULTS", traits: {"smithy.api#enumValue" => "INSULTS"}))
    GuardrailContentFilterType.add_member(:hate, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HATE", traits: {"smithy.api#enumValue" => "HATE"}))
    GuardrailContentFilterType.add_member(:sexual, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SEXUAL", traits: {"smithy.api#enumValue" => "SEXUAL"}))
    GuardrailContentFilterType.add_member(:violence, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VIOLENCE", traits: {"smithy.api#enumValue" => "VIOLENCE"}))
    GuardrailContentFilterType.add_member(:misconduct, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MISCONDUCT", traits: {"smithy.api#enumValue" => "MISCONDUCT"}))
    GuardrailContentFilterType.add_member(:prompt_attack, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PROMPT_ATTACK", traits: {"smithy.api#enumValue" => "PROMPT_ATTACK"}))
    GuardrailContentPolicyAction.add_member(:blocked, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BLOCKED", traits: {"smithy.api#enumValue" => "BLOCKED"}))
    GuardrailContentPolicyAssessment.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailContentFilterList, name: "filters"))
    GuardrailContentPolicyAssessment.type = Types::GuardrailContentPolicyAssessment
    GuardrailCustomWord.add_member(:match, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "match"))
    GuardrailCustomWord.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailWordPolicyAction, name: "action"))
    GuardrailCustomWord.type = Types::GuardrailCustomWord
    GuardrailCustomWordList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailCustomWord, name: "member"))
    GuardrailEvent.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: GuadrailAction, name: "action"))
    GuardrailEvent.type = Types::GuardrailEvent
    GuardrailManagedWord.add_member(:match, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "match"))
    GuardrailManagedWord.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailManagedWordType, name: "type"))
    GuardrailManagedWord.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailWordPolicyAction, name: "action"))
    GuardrailManagedWord.type = Types::GuardrailManagedWord
    GuardrailManagedWordList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailManagedWord, name: "member"))
    GuardrailManagedWordType.add_member(:profanity, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PROFANITY", traits: {"smithy.api#enumValue" => "PROFANITY"}))
    GuardrailPiiEntityFilter.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailPiiEntityType, name: "type"))
    GuardrailPiiEntityFilter.add_member(:match, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "match"))
    GuardrailPiiEntityFilter.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailSensitiveInformationPolicyAction, name: "action"))
    GuardrailPiiEntityFilter.type = Types::GuardrailPiiEntityFilter
    GuardrailPiiEntityFilterList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailPiiEntityFilter, name: "member"))
    GuardrailPiiEntityType.add_member(:address, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ADDRESS", traits: {"smithy.api#enumValue" => "ADDRESS"}))
    GuardrailPiiEntityType.add_member(:age, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AGE", traits: {"smithy.api#enumValue" => "AGE"}))
    GuardrailPiiEntityType.add_member(:aws_access_key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS_ACCESS_KEY", traits: {"smithy.api#enumValue" => "AWS_ACCESS_KEY"}))
    GuardrailPiiEntityType.add_member(:aws_secret_key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS_SECRET_KEY", traits: {"smithy.api#enumValue" => "AWS_SECRET_KEY"}))
    GuardrailPiiEntityType.add_member(:ca_health_number, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CA_HEALTH_NUMBER", traits: {"smithy.api#enumValue" => "CA_HEALTH_NUMBER"}))
    GuardrailPiiEntityType.add_member(:ca_social_insurance_number, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CA_SOCIAL_INSURANCE_NUMBER", traits: {"smithy.api#enumValue" => "CA_SOCIAL_INSURANCE_NUMBER"}))
    GuardrailPiiEntityType.add_member(:credit_debit_card_cvv, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREDIT_DEBIT_CARD_CVV", traits: {"smithy.api#enumValue" => "CREDIT_DEBIT_CARD_CVV"}))
    GuardrailPiiEntityType.add_member(:credit_debit_card_expiry, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREDIT_DEBIT_CARD_EXPIRY", traits: {"smithy.api#enumValue" => "CREDIT_DEBIT_CARD_EXPIRY"}))
    GuardrailPiiEntityType.add_member(:credit_debit_card_number, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREDIT_DEBIT_CARD_NUMBER", traits: {"smithy.api#enumValue" => "CREDIT_DEBIT_CARD_NUMBER"}))
    GuardrailPiiEntityType.add_member(:driver_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DRIVER_ID", traits: {"smithy.api#enumValue" => "DRIVER_ID"}))
    GuardrailPiiEntityType.add_member(:email, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EMAIL", traits: {"smithy.api#enumValue" => "EMAIL"}))
    GuardrailPiiEntityType.add_member(:international_bank_account_number, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INTERNATIONAL_BANK_ACCOUNT_NUMBER", traits: {"smithy.api#enumValue" => "INTERNATIONAL_BANK_ACCOUNT_NUMBER"}))
    GuardrailPiiEntityType.add_member(:ip_address, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IP_ADDRESS", traits: {"smithy.api#enumValue" => "IP_ADDRESS"}))
    GuardrailPiiEntityType.add_member(:license_plate, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LICENSE_PLATE", traits: {"smithy.api#enumValue" => "LICENSE_PLATE"}))
    GuardrailPiiEntityType.add_member(:mac_address, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MAC_ADDRESS", traits: {"smithy.api#enumValue" => "MAC_ADDRESS"}))
    GuardrailPiiEntityType.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NAME", traits: {"smithy.api#enumValue" => "NAME"}))
    GuardrailPiiEntityType.add_member(:password, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PASSWORD", traits: {"smithy.api#enumValue" => "PASSWORD"}))
    GuardrailPiiEntityType.add_member(:phone, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PHONE", traits: {"smithy.api#enumValue" => "PHONE"}))
    GuardrailPiiEntityType.add_member(:pin, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PIN", traits: {"smithy.api#enumValue" => "PIN"}))
    GuardrailPiiEntityType.add_member(:swift_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SWIFT_CODE", traits: {"smithy.api#enumValue" => "SWIFT_CODE"}))
    GuardrailPiiEntityType.add_member(:uk_national_health_service_number, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UK_NATIONAL_HEALTH_SERVICE_NUMBER", traits: {"smithy.api#enumValue" => "UK_NATIONAL_HEALTH_SERVICE_NUMBER"}))
    GuardrailPiiEntityType.add_member(:uk_national_insurance_number, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UK_NATIONAL_INSURANCE_NUMBER", traits: {"smithy.api#enumValue" => "UK_NATIONAL_INSURANCE_NUMBER"}))
    GuardrailPiiEntityType.add_member(:uk_unique_taxpayer_reference_number, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UK_UNIQUE_TAXPAYER_REFERENCE_NUMBER", traits: {"smithy.api#enumValue" => "UK_UNIQUE_TAXPAYER_REFERENCE_NUMBER"}))
    GuardrailPiiEntityType.add_member(:url, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "URL", traits: {"smithy.api#enumValue" => "URL"}))
    GuardrailPiiEntityType.add_member(:username, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "USERNAME", traits: {"smithy.api#enumValue" => "USERNAME"}))
    GuardrailPiiEntityType.add_member(:us_bank_account_number, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "US_BANK_ACCOUNT_NUMBER", traits: {"smithy.api#enumValue" => "US_BANK_ACCOUNT_NUMBER"}))
    GuardrailPiiEntityType.add_member(:us_bank_routing_number, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "US_BANK_ROUTING_NUMBER", traits: {"smithy.api#enumValue" => "US_BANK_ROUTING_NUMBER"}))
    GuardrailPiiEntityType.add_member(:us_individual_tax_identification_number, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "US_INDIVIDUAL_TAX_IDENTIFICATION_NUMBER", traits: {"smithy.api#enumValue" => "US_INDIVIDUAL_TAX_IDENTIFICATION_NUMBER"}))
    GuardrailPiiEntityType.add_member(:us_passport_number, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "US_PASSPORT_NUMBER", traits: {"smithy.api#enumValue" => "US_PASSPORT_NUMBER"}))
    GuardrailPiiEntityType.add_member(:us_social_security_number, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "US_SOCIAL_SECURITY_NUMBER", traits: {"smithy.api#enumValue" => "US_SOCIAL_SECURITY_NUMBER"}))
    GuardrailPiiEntityType.add_member(:vehicle_identification_number, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VEHICLE_IDENTIFICATION_NUMBER", traits: {"smithy.api#enumValue" => "VEHICLE_IDENTIFICATION_NUMBER"}))
    GuardrailRegexFilter.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "name"))
    GuardrailRegexFilter.add_member(:regex, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "regex"))
    GuardrailRegexFilter.add_member(:match, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "match"))
    GuardrailRegexFilter.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailSensitiveInformationPolicyAction, name: "action"))
    GuardrailRegexFilter.type = Types::GuardrailRegexFilter
    GuardrailRegexFilterList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailRegexFilter, name: "member"))
    GuardrailSensitiveInformationPolicyAction.add_member(:blocked, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BLOCKED", traits: {"smithy.api#enumValue" => "BLOCKED"}))
    GuardrailSensitiveInformationPolicyAction.add_member(:anonymized, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ANONYMIZED", traits: {"smithy.api#enumValue" => "ANONYMIZED"}))
    GuardrailSensitiveInformationPolicyAssessment.add_member(:pii_entities, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailPiiEntityFilterList, name: "piiEntities"))
    GuardrailSensitiveInformationPolicyAssessment.add_member(:regexes, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailRegexFilterList, name: "regexes"))
    GuardrailSensitiveInformationPolicyAssessment.type = Types::GuardrailSensitiveInformationPolicyAssessment
    GuardrailTopic.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "name"))
    GuardrailTopic.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailTopicType, name: "type"))
    GuardrailTopic.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailTopicPolicyAction, name: "action"))
    GuardrailTopic.type = Types::GuardrailTopic
    GuardrailTopicList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailTopic, name: "member"))
    GuardrailTopicPolicyAction.add_member(:blocked, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BLOCKED", traits: {"smithy.api#enumValue" => "BLOCKED"}))
    GuardrailTopicPolicyAssessment.add_member(:topics, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailTopicList, name: "topics"))
    GuardrailTopicPolicyAssessment.type = Types::GuardrailTopicPolicyAssessment
    GuardrailTopicType.add_member(:deny, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DENY", traits: {"smithy.api#enumValue" => "DENY"}))
    GuardrailTrace.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailAction, name: "action"))
    GuardrailTrace.add_member(:trace_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TraceId, name: "traceId"))
    GuardrailTrace.add_member(:input_assessments, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailAssessmentList, name: "inputAssessments"))
    GuardrailTrace.add_member(:output_assessments, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailAssessmentList, name: "outputAssessments"))
    GuardrailTrace.add_member(:metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: Metadata, name: "metadata"))
    GuardrailTrace.type = Types::GuardrailTrace
    GuardrailWordPolicyAction.add_member(:blocked, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BLOCKED", traits: {"smithy.api#enumValue" => "BLOCKED"}))
    GuardrailWordPolicyAssessment.add_member(:custom_words, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailCustomWordList, name: "customWords"))
    GuardrailWordPolicyAssessment.add_member(:managed_word_lists, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailManagedWordList, name: "managedWordLists"))
    GuardrailWordPolicyAssessment.type = Types::GuardrailWordPolicyAssessment
    ImageBlock.add_member(:format, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageFormat, name: "format", traits: {"smithy.api#required" => {}}))
    ImageBlock.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageSource, name: "source", traits: {"smithy.api#required" => {}}))
    ImageBlock.type = Types::ImageBlock
    ImageFormat.add_member(:png, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PNG", traits: {"smithy.api#enumValue" => "png"}))
    ImageFormat.add_member(:jpeg, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "JPEG", traits: {"smithy.api#enumValue" => "jpeg"}))
    ImageFormat.add_member(:gif, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GIF", traits: {"smithy.api#enumValue" => "gif"}))
    ImageFormat.add_member(:webp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WEBP", traits: {"smithy.api#enumValue" => "webp"}))
    ImageInput.add_member(:format, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageInputFormat, name: "format", traits: {"smithy.api#required" => {}}))
    ImageInput.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageInputSource, name: "source", traits: {"smithy.api#required" => {}}))
    ImageInput.type = Types::ImageInput
    ImageInputFormat.add_member(:png, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PNG", traits: {"smithy.api#enumValue" => "png"}))
    ImageInputFormat.add_member(:jpeg, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "JPEG", traits: {"smithy.api#enumValue" => "jpeg"}))
    ImageInputFormat.add_member(:gif, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GIF", traits: {"smithy.api#enumValue" => "gif"}))
    ImageInputFormat.add_member(:webp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WEBP", traits: {"smithy.api#enumValue" => "webp"}))
    ImageInputSource.add_member(:bytes, Types::ImageInputSource::Bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Blob, name: "bytes", traits: {"smithy.api#length" => {"min" => 1}}))
    ImageInputSource.add_member(:unknown, Types::ImageInputSource::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    ImageInputSource.type = Types::ImageInputSource
    ImageInputs.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageInput, name: "member"))
    ImageSource.add_member(:bytes, Types::ImageSource::Bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Blob, name: "bytes", traits: {"smithy.api#length" => {"min" => 1}}))
    ImageSource.add_member(:s3_location, Types::ImageSource::S3Location, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Location, name: "s3Location"))
    ImageSource.add_member(:unknown, Types::ImageSource::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    ImageSource.type = Types::ImageSource
    ImplicitFilterConfiguration.add_member(:metadata_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: MetadataAttributeSchemaList, name: "metadataAttributes", traits: {"smithy.api#required" => {}}))
    ImplicitFilterConfiguration.add_member(:model_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: BedrockModelArn, name: "modelArn", traits: {"smithy.api#required" => {}}))
    ImplicitFilterConfiguration.type = Types::ImplicitFilterConfiguration
    InferenceConfig.add_member(:text_inference_config, ::Smithy::Schema::Shapes::MemberShape.new(target: TextInferenceConfig, name: "textInferenceConfig"))
    InferenceConfig.type = Types::InferenceConfig
    InferenceConfiguration.add_member(:temperature, ::Smithy::Schema::Shapes::MemberShape.new(target: Temperature, name: "temperature"))
    InferenceConfiguration.add_member(:top_p, ::Smithy::Schema::Shapes::MemberShape.new(target: TopP, name: "topP"))
    InferenceConfiguration.add_member(:top_k, ::Smithy::Schema::Shapes::MemberShape.new(target: TopK, name: "topK"))
    InferenceConfiguration.add_member(:maximum_length, ::Smithy::Schema::Shapes::MemberShape.new(target: MaximumLength, name: "maximumLength"))
    InferenceConfiguration.add_member(:stop_sequences, ::Smithy::Schema::Shapes::MemberShape.new(target: StopSequences, name: "stopSequences"))
    InferenceConfiguration.type = Types::InferenceConfiguration
    InlineAgentFilePart.add_member(:files, ::Smithy::Schema::Shapes::MemberShape.new(target: OutputFiles, name: "files"))
    InlineAgentFilePart.type = Types::InlineAgentFilePart
    InlineAgentPayloadPart.add_member(:bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: PartBody, name: "bytes"))
    InlineAgentPayloadPart.add_member(:attribution, ::Smithy::Schema::Shapes::MemberShape.new(target: Attribution, name: "attribution"))
    InlineAgentPayloadPart.type = Types::InlineAgentPayloadPart
    InlineAgentResponseStream.add_member(:chunk, Types::InlineAgentResponseStream::Chunk, ::Smithy::Schema::Shapes::MemberShape.new(target: InlineAgentPayloadPart, name: "chunk"))
    InlineAgentResponseStream.add_member(:trace, Types::InlineAgentResponseStream::Trace, ::Smithy::Schema::Shapes::MemberShape.new(target: InlineAgentTracePart, name: "trace"))
    InlineAgentResponseStream.add_member(:return_control, Types::InlineAgentResponseStream::ReturnControl, ::Smithy::Schema::Shapes::MemberShape.new(target: InlineAgentReturnControlPayload, name: "returnControl"))
    InlineAgentResponseStream.add_member(:internal_server_exception, Types::InlineAgentResponseStream::InternalServerException, ::Smithy::Schema::Shapes::MemberShape.new(target: InternalServerException, name: "internalServerException"))
    InlineAgentResponseStream.add_member(:validation_exception, Types::InlineAgentResponseStream::ValidationException, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationException, name: "validationException"))
    InlineAgentResponseStream.add_member(:resource_not_found_exception, Types::InlineAgentResponseStream::ResourceNotFoundException, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceNotFoundException, name: "resourceNotFoundException"))
    InlineAgentResponseStream.add_member(:service_quota_exceeded_exception, Types::InlineAgentResponseStream::ServiceQuotaExceededException, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceQuotaExceededException, name: "serviceQuotaExceededException"))
    InlineAgentResponseStream.add_member(:throttling_exception, Types::InlineAgentResponseStream::ThrottlingException, ::Smithy::Schema::Shapes::MemberShape.new(target: ThrottlingException, name: "throttlingException"))
    InlineAgentResponseStream.add_member(:access_denied_exception, Types::InlineAgentResponseStream::AccessDeniedException, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessDeniedException, name: "accessDeniedException"))
    InlineAgentResponseStream.add_member(:conflict_exception, Types::InlineAgentResponseStream::ConflictException, ::Smithy::Schema::Shapes::MemberShape.new(target: ConflictException, name: "conflictException"))
    InlineAgentResponseStream.add_member(:dependency_failed_exception, Types::InlineAgentResponseStream::DependencyFailedException, ::Smithy::Schema::Shapes::MemberShape.new(target: DependencyFailedException, name: "dependencyFailedException"))
    InlineAgentResponseStream.add_member(:bad_gateway_exception, Types::InlineAgentResponseStream::BadGatewayException, ::Smithy::Schema::Shapes::MemberShape.new(target: BadGatewayException, name: "badGatewayException"))
    InlineAgentResponseStream.add_member(:files, Types::InlineAgentResponseStream::Files, ::Smithy::Schema::Shapes::MemberShape.new(target: InlineAgentFilePart, name: "files"))
    InlineAgentResponseStream.add_member(:unknown, Types::InlineAgentResponseStream::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    InlineAgentResponseStream.type = Types::InlineAgentResponseStream
    InlineAgentReturnControlPayload.add_member(:invocation_inputs, ::Smithy::Schema::Shapes::MemberShape.new(target: InvocationInputs, name: "invocationInputs"))
    InlineAgentReturnControlPayload.add_member(:invocation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "invocationId"))
    InlineAgentReturnControlPayload.type = Types::InlineAgentReturnControlPayload
    InlineAgentTracePart.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionId, name: "sessionId"))
    InlineAgentTracePart.add_member(:trace, ::Smithy::Schema::Shapes::MemberShape.new(target: Trace, name: "trace"))
    InlineAgentTracePart.add_member(:caller_chain, ::Smithy::Schema::Shapes::MemberShape.new(target: CallerChain, name: "callerChain"))
    InlineAgentTracePart.add_member(:event_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimestamp, name: "eventTime", traits: {"smithy.api#timestampFormat" => "date-time"}))
    InlineAgentTracePart.add_member(:collaborator_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "collaboratorName"))
    InlineAgentTracePart.type = Types::InlineAgentTracePart
    InlineBedrockModelConfigurations.add_member(:performance_config, ::Smithy::Schema::Shapes::MemberShape.new(target: PerformanceConfiguration, name: "performanceConfig"))
    InlineBedrockModelConfigurations.type = Types::InlineBedrockModelConfigurations
    InlineSessionState.add_member(:session_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionAttributesMap, name: "sessionAttributes"))
    InlineSessionState.add_member(:prompt_session_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: PromptSessionAttributesMap, name: "promptSessionAttributes"))
    InlineSessionState.add_member(:return_control_invocation_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ReturnControlInvocationResults, name: "returnControlInvocationResults"))
    InlineSessionState.add_member(:invocation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "invocationId"))
    InlineSessionState.add_member(:files, ::Smithy::Schema::Shapes::MemberShape.new(target: InputFiles, name: "files"))
    InlineSessionState.add_member(:conversation_history, ::Smithy::Schema::Shapes::MemberShape.new(target: ConversationHistory, name: "conversationHistory"))
    InlineSessionState.type = Types::InlineSessionState
    InputFile.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "name", traits: {"smithy.api#required" => {}}))
    InputFile.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSource, name: "source", traits: {"smithy.api#required" => {}}))
    InputFile.add_member(:use_case, ::Smithy::Schema::Shapes::MemberShape.new(target: FileUseCase, name: "useCase", traits: {"smithy.api#required" => {}}))
    InputFile.type = Types::InputFile
    InputFiles.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: InputFile, name: "member"))
    InputImage.add_member(:format, ::Smithy::Schema::Shapes::MemberShape.new(target: InputImageFormat, name: "format", traits: {"smithy.api#required" => {}}))
    InputImage.add_member(:inline_content, ::Smithy::Schema::Shapes::MemberShape.new(target: ByteContentBlob, name: "inlineContent", traits: {"smithy.api#length" => {"min" => 1, "max" => 5242880}, "smithy.api#required" => {}}))
    InputImage.type = Types::InputImage
    InputImageFormat.add_member(:png, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "png", traits: {"smithy.api#enumValue" => "png"}))
    InputImageFormat.add_member(:jpeg, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "jpeg", traits: {"smithy.api#enumValue" => "jpeg"}))
    InputImageFormat.add_member(:gif, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "gif", traits: {"smithy.api#enumValue" => "gif"}))
    InputImageFormat.add_member(:webp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "webp", traits: {"smithy.api#enumValue" => "webp"}))
    InputPrompt.add_member(:text_prompt, Types::InputPrompt::TextPrompt, ::Smithy::Schema::Shapes::MemberShape.new(target: TextPrompt, name: "textPrompt"))
    InputPrompt.add_member(:unknown, Types::InputPrompt::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    InputPrompt.type = Types::InputPrompt
    InputQueryType.add_member(:text, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TEXT", traits: {"smithy.api#enumValue" => "TEXT"}))
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: NonBlankString, name: "message"))
    InternalServerException.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "reason"))
    InternalServerException.type = Types::InternalServerException
    InvocationInput.add_member(:trace_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TraceId, name: "traceId"))
    InvocationInput.add_member(:invocation_type, ::Smithy::Schema::Shapes::MemberShape.new(target: InvocationType, name: "invocationType"))
    InvocationInput.add_member(:action_group_invocation_input, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionGroupInvocationInput, name: "actionGroupInvocationInput"))
    InvocationInput.add_member(:knowledge_base_lookup_input, ::Smithy::Schema::Shapes::MemberShape.new(target: KnowledgeBaseLookupInput, name: "knowledgeBaseLookupInput"))
    InvocationInput.add_member(:code_interpreter_invocation_input, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeInterpreterInvocationInput, name: "codeInterpreterInvocationInput"))
    InvocationInput.add_member(:agent_collaborator_invocation_input, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentCollaboratorInvocationInput, name: "agentCollaboratorInvocationInput"))
    InvocationInput.type = Types::InvocationInput
    InvocationInputMember.add_member(:api_invocation_input, Types::InvocationInputMember::ApiInvocationInput, ::Smithy::Schema::Shapes::MemberShape.new(target: ApiInvocationInput, name: "apiInvocationInput"))
    InvocationInputMember.add_member(:function_invocation_input, Types::InvocationInputMember::FunctionInvocationInput, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionInvocationInput, name: "functionInvocationInput"))
    InvocationInputMember.add_member(:unknown, Types::InvocationInputMember::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    InvocationInputMember.type = Types::InvocationInputMember
    InvocationInputs.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: InvocationInputMember, name: "member"))
    InvocationResultMember.add_member(:api_result, Types::InvocationResultMember::ApiResult, ::Smithy::Schema::Shapes::MemberShape.new(target: ApiResult, name: "apiResult"))
    InvocationResultMember.add_member(:function_result, Types::InvocationResultMember::FunctionResult, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionResult, name: "functionResult"))
    InvocationResultMember.add_member(:unknown, Types::InvocationResultMember::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    InvocationResultMember.type = Types::InvocationResultMember
    InvocationStep.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "sessionId", traits: {"smithy.api#required" => {}}))
    InvocationStep.add_member(:invocation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "invocationId", traits: {"smithy.api#required" => {}}))
    InvocationStep.add_member(:invocation_step_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "invocationStepId", traits: {"smithy.api#required" => {}}))
    InvocationStep.add_member(:invocation_step_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimestamp, name: "invocationStepTime", traits: {"smithy.api#required" => {}}))
    InvocationStep.add_member(:payload, ::Smithy::Schema::Shapes::MemberShape.new(target: InvocationStepPayload, name: "payload", traits: {"smithy.api#required" => {}}))
    InvocationStep.type = Types::InvocationStep
    InvocationStepPayload.add_member(:content_blocks, Types::InvocationStepPayload::ContentBlocks, ::Smithy::Schema::Shapes::MemberShape.new(target: BedrockSessionContentBlocks, name: "contentBlocks"))
    InvocationStepPayload.add_member(:unknown, Types::InvocationStepPayload::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    InvocationStepPayload.type = Types::InvocationStepPayload
    InvocationStepSummaries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: InvocationStepSummary, name: "member"))
    InvocationStepSummary.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "sessionId", traits: {"smithy.api#required" => {}}))
    InvocationStepSummary.add_member(:invocation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "invocationId", traits: {"smithy.api#required" => {}}))
    InvocationStepSummary.add_member(:invocation_step_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "invocationStepId", traits: {"smithy.api#required" => {}}))
    InvocationStepSummary.add_member(:invocation_step_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimestamp, name: "invocationStepTime", traits: {"smithy.api#required" => {}}))
    InvocationStepSummary.type = Types::InvocationStepSummary
    InvocationSummaries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: InvocationSummary, name: "member"))
    InvocationSummary.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "sessionId", traits: {"smithy.api#required" => {}}))
    InvocationSummary.add_member(:invocation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "invocationId", traits: {"smithy.api#required" => {}}))
    InvocationSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimestamp, name: "createdAt", traits: {"smithy.api#required" => {}}))
    InvocationSummary.type = Types::InvocationSummary
    InvocationType.add_member(:action_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTION_GROUP", traits: {"smithy.api#enumValue" => "ACTION_GROUP"}))
    InvocationType.add_member(:knowledge_base, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KNOWLEDGE_BASE", traits: {"smithy.api#enumValue" => "KNOWLEDGE_BASE"}))
    InvocationType.add_member(:finish, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FINISH", traits: {"smithy.api#enumValue" => "FINISH"}))
    InvocationType.add_member(:action_group_code_interpreter, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTION_GROUP_CODE_INTERPRETER", traits: {"smithy.api#enumValue" => "ACTION_GROUP_CODE_INTERPRETER"}))
    InvocationType.add_member(:agent_collaborator, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AGENT_COLLABORATOR", traits: {"smithy.api#enumValue" => "AGENT_COLLABORATOR"}))
    InvokeAgentRequest.add_member(:session_state, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionState, name: "sessionState"))
    InvokeAgentRequest.add_member(:agent_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentId, name: "agentId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    InvokeAgentRequest.add_member(:agent_alias_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentAliasId, name: "agentAliasId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    InvokeAgentRequest.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionId, name: "sessionId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    InvokeAgentRequest.add_member(:end_session, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "endSession"))
    InvokeAgentRequest.add_member(:enable_trace, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "enableTrace"))
    InvokeAgentRequest.add_member(:input_text, ::Smithy::Schema::Shapes::MemberShape.new(target: InputText, name: "inputText"))
    InvokeAgentRequest.add_member(:memory_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MemoryId, name: "memoryId"))
    InvokeAgentRequest.add_member(:bedrock_model_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: BedrockModelConfigurations, name: "bedrockModelConfigurations"))
    InvokeAgentRequest.add_member(:streaming_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamingConfigurations, name: "streamingConfigurations"))
    InvokeAgentRequest.add_member(:prompt_creation_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: PromptCreationConfigurations, name: "promptCreationConfigurations"))
    InvokeAgentRequest.add_member(:source_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AWSResourceARN, name: "sourceArn", traits: {"smithy.api#httpHeader" => "x-amz-source-arn"}))
    InvokeAgentRequest.type = Types::InvokeAgentRequest
    InvokeAgentResponse.add_member(:completion, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseStream, name: "completion", traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    InvokeAgentResponse.add_member(:content_type, ::Smithy::Schema::Shapes::MemberShape.new(target: MimeType, name: "contentType", traits: {"smithy.api#httpHeader" => "x-amzn-bedrock-agent-content-type", "smithy.api#required" => {}}))
    InvokeAgentResponse.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionId, name: "sessionId", traits: {"smithy.api#httpHeader" => "x-amz-bedrock-agent-session-id", "smithy.api#required" => {}}))
    InvokeAgentResponse.add_member(:memory_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MemoryId, name: "memoryId", traits: {"smithy.api#httpHeader" => "x-amz-bedrock-agent-memory-id"}))
    InvokeAgentResponse[:http_payload] = :completion
    InvokeAgentResponse[:http_payload_member] = InvokeAgentResponse.member(:completion)
    InvokeAgentResponse.type = Types::InvokeAgentResponse
    InvokeFlowRequest.add_member(:flow_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowIdentifier, name: "flowIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    InvokeFlowRequest.add_member(:flow_alias_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowAliasIdentifier, name: "flowAliasIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    InvokeFlowRequest.add_member(:inputs, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowInputs, name: "inputs", traits: {"smithy.api#required" => {}}))
    InvokeFlowRequest.add_member(:enable_trace, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "enableTrace"))
    InvokeFlowRequest.add_member(:model_performance_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelPerformanceConfiguration, name: "modelPerformanceConfiguration"))
    InvokeFlowRequest.add_member(:execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowExecutionId, name: "executionId"))
    InvokeFlowRequest.type = Types::InvokeFlowRequest
    InvokeFlowResponse.add_member(:response_stream, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowResponseStream, name: "responseStream", traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    InvokeFlowResponse.add_member(:execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowExecutionId, name: "executionId", traits: {"smithy.api#httpHeader" => "x-amz-bedrock-flow-execution-id"}))
    InvokeFlowResponse[:http_payload] = :response_stream
    InvokeFlowResponse[:http_payload_member] = InvokeFlowResponse.member(:response_stream)
    InvokeFlowResponse.type = Types::InvokeFlowResponse
    InvokeInlineAgentRequest.add_member(:customer_encryption_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyArn, name: "customerEncryptionKeyArn"))
    InvokeInlineAgentRequest.add_member(:foundation_model, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelIdentifier, name: "foundationModel", traits: {"smithy.api#required" => {}}))
    InvokeInlineAgentRequest.add_member(:instruction, ::Smithy::Schema::Shapes::MemberShape.new(target: Instruction, name: "instruction", traits: {"smithy.api#required" => {}}))
    InvokeInlineAgentRequest.add_member(:idle_session_ttl_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionTTL, name: "idleSessionTTLInSeconds"))
    InvokeInlineAgentRequest.add_member(:action_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentActionGroups, name: "actionGroups"))
    InvokeInlineAgentRequest.add_member(:knowledge_bases, ::Smithy::Schema::Shapes::MemberShape.new(target: KnowledgeBases, name: "knowledgeBases"))
    InvokeInlineAgentRequest.add_member(:guardrail_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailConfigurationWithArn, name: "guardrailConfiguration"))
    InvokeInlineAgentRequest.add_member(:prompt_override_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: PromptOverrideConfiguration, name: "promptOverrideConfiguration"))
    InvokeInlineAgentRequest.add_member(:agent_collaboration, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentCollaboration, name: "agentCollaboration"))
    InvokeInlineAgentRequest.add_member(:collaborator_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: CollaboratorConfigurations, name: "collaboratorConfigurations"))
    InvokeInlineAgentRequest.add_member(:agent_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "agentName"))
    InvokeInlineAgentRequest.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionId, name: "sessionId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    InvokeInlineAgentRequest.add_member(:end_session, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "endSession"))
    InvokeInlineAgentRequest.add_member(:enable_trace, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "enableTrace"))
    InvokeInlineAgentRequest.add_member(:input_text, ::Smithy::Schema::Shapes::MemberShape.new(target: InputText, name: "inputText"))
    InvokeInlineAgentRequest.add_member(:streaming_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamingConfigurations, name: "streamingConfigurations"))
    InvokeInlineAgentRequest.add_member(:prompt_creation_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: PromptCreationConfigurations, name: "promptCreationConfigurations"))
    InvokeInlineAgentRequest.add_member(:inline_session_state, ::Smithy::Schema::Shapes::MemberShape.new(target: InlineSessionState, name: "inlineSessionState"))
    InvokeInlineAgentRequest.add_member(:collaborators, ::Smithy::Schema::Shapes::MemberShape.new(target: Collaborators, name: "collaborators"))
    InvokeInlineAgentRequest.add_member(:bedrock_model_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: InlineBedrockModelConfigurations, name: "bedrockModelConfigurations"))
    InvokeInlineAgentRequest.add_member(:orchestration_type, ::Smithy::Schema::Shapes::MemberShape.new(target: OrchestrationType, name: "orchestrationType"))
    InvokeInlineAgentRequest.add_member(:custom_orchestration, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomOrchestration, name: "customOrchestration"))
    InvokeInlineAgentRequest.type = Types::InvokeInlineAgentRequest
    InvokeInlineAgentResponse.add_member(:completion, ::Smithy::Schema::Shapes::MemberShape.new(target: InlineAgentResponseStream, name: "completion", traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    InvokeInlineAgentResponse.add_member(:content_type, ::Smithy::Schema::Shapes::MemberShape.new(target: MimeType, name: "contentType", traits: {"smithy.api#httpHeader" => "x-amzn-bedrock-agent-content-type", "smithy.api#required" => {}}))
    InvokeInlineAgentResponse.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionId, name: "sessionId", traits: {"smithy.api#httpHeader" => "x-amz-bedrock-agent-session-id", "smithy.api#required" => {}}))
    InvokeInlineAgentResponse[:http_payload] = :completion
    InvokeInlineAgentResponse[:http_payload_member] = InvokeInlineAgentResponse.member(:completion)
    InvokeInlineAgentResponse.type = Types::InvokeInlineAgentResponse
    KnowledgeBase.add_member(:knowledge_base_id, ::Smithy::Schema::Shapes::MemberShape.new(target: KnowledgeBaseId, name: "knowledgeBaseId", traits: {"smithy.api#required" => {}}))
    KnowledgeBase.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDescription, name: "description", traits: {"smithy.api#required" => {}}))
    KnowledgeBase.add_member(:retrieval_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: KnowledgeBaseRetrievalConfiguration, name: "retrievalConfiguration"))
    KnowledgeBase.type = Types::KnowledgeBase
    KnowledgeBaseConfiguration.add_member(:knowledge_base_id, ::Smithy::Schema::Shapes::MemberShape.new(target: KnowledgeBaseId, name: "knowledgeBaseId", traits: {"smithy.api#required" => {}}))
    KnowledgeBaseConfiguration.add_member(:retrieval_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: KnowledgeBaseRetrievalConfiguration, name: "retrievalConfiguration", traits: {"smithy.api#required" => {}}))
    KnowledgeBaseConfiguration.type = Types::KnowledgeBaseConfiguration
    KnowledgeBaseConfigurations.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: KnowledgeBaseConfiguration, name: "member"))
    KnowledgeBaseLookupInput.add_member(:text, ::Smithy::Schema::Shapes::MemberShape.new(target: KnowledgeBaseLookupInputString, name: "text"))
    KnowledgeBaseLookupInput.add_member(:knowledge_base_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TraceKnowledgeBaseId, name: "knowledgeBaseId"))
    KnowledgeBaseLookupInput.type = Types::KnowledgeBaseLookupInput
    KnowledgeBaseLookupOutput.add_member(:retrieved_references, ::Smithy::Schema::Shapes::MemberShape.new(target: RetrievedReferences, name: "retrievedReferences"))
    KnowledgeBaseLookupOutput.add_member(:metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: Metadata, name: "metadata"))
    KnowledgeBaseLookupOutput.type = Types::KnowledgeBaseLookupOutput
    KnowledgeBaseQuery.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: KnowledgeBaseQueryType, name: "type", traits: {"smithy.api#default" => "TEXT"}))
    KnowledgeBaseQuery.add_member(:text, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "text", traits: {"smithy.api#addedDefault" => {}, "smithy.api#default" => "", "smithy.api#length" => {"max" => 20000}}))
    KnowledgeBaseQuery.add_member(:image, ::Smithy::Schema::Shapes::MemberShape.new(target: InputImage, name: "image"))
    KnowledgeBaseQuery.type = Types::KnowledgeBaseQuery
    KnowledgeBaseQueryType.add_member(:text, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TEXT", traits: {"smithy.api#enumValue" => "TEXT"}))
    KnowledgeBaseQueryType.add_member(:image, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IMAGE", traits: {"smithy.api#enumValue" => "IMAGE"}))
    KnowledgeBaseRetrievalConfiguration.add_member(:vector_search_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: KnowledgeBaseVectorSearchConfiguration, name: "vectorSearchConfiguration"))
    KnowledgeBaseRetrievalConfiguration.add_member(:managed_search_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedSearchConfiguration, name: "managedSearchConfiguration"))
    KnowledgeBaseRetrievalConfiguration.type = Types::KnowledgeBaseRetrievalConfiguration
    KnowledgeBaseRetrievalResult.add_member(:content, ::Smithy::Schema::Shapes::MemberShape.new(target: RetrievalResultContent, name: "content", traits: {"smithy.api#required" => {}}))
    KnowledgeBaseRetrievalResult.add_member(:location, ::Smithy::Schema::Shapes::MemberShape.new(target: RetrievalResultLocation, name: "location"))
    KnowledgeBaseRetrievalResult.add_member(:score, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, name: "score"))
    KnowledgeBaseRetrievalResult.add_member(:metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: RetrievalResultMetadata, name: "metadata"))
    KnowledgeBaseRetrievalResult.add_member(:document_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentId, name: "documentId"))
    KnowledgeBaseRetrievalResult.type = Types::KnowledgeBaseRetrievalResult
    KnowledgeBaseRetrievalResults.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: KnowledgeBaseRetrievalResult, name: "member"))
    KnowledgeBaseRetrieveAndGenerateConfiguration.add_member(:knowledge_base_id, ::Smithy::Schema::Shapes::MemberShape.new(target: KnowledgeBaseId, name: "knowledgeBaseId", traits: {"smithy.api#required" => {}}))
    KnowledgeBaseRetrieveAndGenerateConfiguration.add_member(:model_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: BedrockModelArn, name: "modelArn", traits: {"smithy.api#required" => {}}))
    KnowledgeBaseRetrieveAndGenerateConfiguration.add_member(:retrieval_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: KnowledgeBaseRetrievalConfiguration, name: "retrievalConfiguration"))
    KnowledgeBaseRetrieveAndGenerateConfiguration.add_member(:generation_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: GenerationConfiguration, name: "generationConfiguration"))
    KnowledgeBaseRetrieveAndGenerateConfiguration.add_member(:orchestration_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: OrchestrationConfiguration, name: "orchestrationConfiguration"))
    KnowledgeBaseRetrieveAndGenerateConfiguration.type = Types::KnowledgeBaseRetrieveAndGenerateConfiguration
    KnowledgeBaseRetrieverConfiguration.add_member(:knowledge_base_id, ::Smithy::Schema::Shapes::MemberShape.new(target: KnowledgeBaseId, name: "knowledgeBaseId", traits: {"smithy.api#required" => {}}))
    KnowledgeBaseRetrieverConfiguration.add_member(:retrieval_overrides, ::Smithy::Schema::Shapes::MemberShape.new(target: RetrievalOverrides, name: "retrievalOverrides"))
    KnowledgeBaseRetrieverConfiguration.type = Types::KnowledgeBaseRetrieverConfiguration
    KnowledgeBaseVectorSearchConfiguration.add_member(:number_of_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "numberOfResults", traits: {"smithy.api#addedDefault" => {}, "smithy.api#default" => 5, "smithy.api#range" => {"min" => 1, "max" => 100}}))
    KnowledgeBaseVectorSearchConfiguration.add_member(:override_search_type, ::Smithy::Schema::Shapes::MemberShape.new(target: SearchType, name: "overrideSearchType"))
    KnowledgeBaseVectorSearchConfiguration.add_member(:filter, ::Smithy::Schema::Shapes::MemberShape.new(target: RetrievalFilter, name: "filter"))
    KnowledgeBaseVectorSearchConfiguration.add_member(:reranking_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: VectorSearchRerankingConfiguration, name: "rerankingConfiguration"))
    KnowledgeBaseVectorSearchConfiguration.add_member(:implicit_filter_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ImplicitFilterConfiguration, name: "implicitFilterConfiguration"))
    KnowledgeBaseVectorSearchConfiguration.type = Types::KnowledgeBaseVectorSearchConfiguration
    KnowledgeBases.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: KnowledgeBase, name: "member"))
    ListFlowExecutionEventsRequest.add_member(:flow_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowIdentifier, name: "flowIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListFlowExecutionEventsRequest.add_member(:flow_alias_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowAliasIdentifier, name: "flowAliasIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListFlowExecutionEventsRequest.add_member(:execution_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowExecutionIdentifier, name: "executionIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListFlowExecutionEventsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListFlowExecutionEventsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListFlowExecutionEventsRequest.add_member(:event_type, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowExecutionEventType, name: "eventType", traits: {"smithy.api#httpQuery" => "eventType", "smithy.api#required" => {}}))
    ListFlowExecutionEventsRequest.type = Types::ListFlowExecutionEventsRequest
    ListFlowExecutionEventsResponse.add_member(:flow_execution_events, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowExecutionEvents, name: "flowExecutionEvents", traits: {"smithy.api#required" => {}}))
    ListFlowExecutionEventsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListFlowExecutionEventsResponse.type = Types::ListFlowExecutionEventsResponse
    ListFlowExecutionsRequest.add_member(:flow_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowIdentifier, name: "flowIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListFlowExecutionsRequest.add_member(:flow_alias_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowAliasIdentifier, name: "flowAliasIdentifier", traits: {"smithy.api#httpQuery" => "flowAliasIdentifier"}))
    ListFlowExecutionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListFlowExecutionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListFlowExecutionsRequest.type = Types::ListFlowExecutionsRequest
    ListFlowExecutionsResponse.add_member(:flow_execution_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowExecutionSummaries, name: "flowExecutionSummaries", traits: {"smithy.api#required" => {}}))
    ListFlowExecutionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListFlowExecutionsResponse.type = Types::ListFlowExecutionsResponse
    ListInvocationStepsRequest.add_member(:invocation_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: InvocationIdentifier, name: "invocationIdentifier"))
    ListInvocationStepsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListInvocationStepsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#default" => 10, "smithy.api#httpQuery" => "maxResults"}))
    ListInvocationStepsRequest.add_member(:session_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionIdentifier, name: "sessionIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListInvocationStepsRequest.type = Types::ListInvocationStepsRequest
    ListInvocationStepsResponse.add_member(:invocation_step_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: InvocationStepSummaries, name: "invocationStepSummaries", traits: {"smithy.api#required" => {}}))
    ListInvocationStepsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListInvocationStepsResponse.type = Types::ListInvocationStepsResponse
    ListInvocationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListInvocationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#default" => 10, "smithy.api#httpQuery" => "maxResults"}))
    ListInvocationsRequest.add_member(:session_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionIdentifier, name: "sessionIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListInvocationsRequest.type = Types::ListInvocationsRequest
    ListInvocationsResponse.add_member(:invocation_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: InvocationSummaries, name: "invocationSummaries", traits: {"smithy.api#required" => {}}))
    ListInvocationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListInvocationsResponse.type = Types::ListInvocationsResponse
    ListSessionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#default" => 10, "smithy.api#httpQuery" => "maxResults"}))
    ListSessionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListSessionsRequest.type = Types::ListSessionsRequest
    ListSessionsResponse.add_member(:session_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionSummaries, name: "sessionSummaries", traits: {"smithy.api#required" => {}}))
    ListSessionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListSessionsResponse.type = Types::ListSessionsResponse
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TaggableResourcesArn, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, name: "tags"))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    ManagedSearchBedrockRerankingConfiguration.add_member(:model_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedSearchBedrockRerankingModelConfiguration, name: "modelConfiguration", traits: {"smithy.api#required" => {}}))
    ManagedSearchBedrockRerankingConfiguration.add_member(:number_of_reranked_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "numberOfRerankedResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}}))
    ManagedSearchBedrockRerankingConfiguration.add_member(:metadata_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: MetadataConfigurationForReranking, name: "metadataConfiguration"))
    ManagedSearchBedrockRerankingConfiguration.type = Types::ManagedSearchBedrockRerankingConfiguration
    ManagedSearchBedrockRerankingModelConfiguration.add_member(:model_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: BedrockRerankingModelArn, name: "modelArn", traits: {"smithy.api#required" => {}}))
    ManagedSearchBedrockRerankingModelConfiguration.add_member(:additional_model_request_fields, ::Smithy::Schema::Shapes::MemberShape.new(target: AdditionalModelRequestFields, name: "additionalModelRequestFields"))
    ManagedSearchBedrockRerankingModelConfiguration.type = Types::ManagedSearchBedrockRerankingModelConfiguration
    ManagedSearchConfiguration.add_member(:number_of_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "numberOfResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}}))
    ManagedSearchConfiguration.add_member(:filter, ::Smithy::Schema::Shapes::MemberShape.new(target: RetrievalFilter, name: "filter"))
    ManagedSearchConfiguration.add_member(:reranking_model_type, ::Smithy::Schema::Shapes::MemberShape.new(target: RerankingModelType, name: "rerankingModelType"))
    ManagedSearchConfiguration.add_member(:reranking_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedSearchRerankingConfiguration, name: "rerankingConfiguration"))
    ManagedSearchConfiguration.type = Types::ManagedSearchConfiguration
    ManagedSearchRerankingConfiguration.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedSearchRerankingConfigurationType, name: "type", traits: {"smithy.api#required" => {}}))
    ManagedSearchRerankingConfiguration.add_member(:bedrock_reranking_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedSearchBedrockRerankingConfiguration, name: "bedrockRerankingConfiguration"))
    ManagedSearchRerankingConfiguration.type = Types::ManagedSearchRerankingConfiguration
    ManagedSearchRerankingConfigurationType.add_member(:bedrock_reranking_model, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BEDROCK_RERANKING_MODEL", traits: {"smithy.api#enumValue" => "BEDROCK_RERANKING_MODEL"}))
    MantleFoundationModelConfiguration.add_member(:model_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: MantleFoundationModelModelConfiguration, name: "modelConfiguration", traits: {"smithy.api#required" => {}}))
    MantleFoundationModelConfiguration.type = Types::MantleFoundationModelConfiguration
    MantleFoundationModelModelConfiguration.add_member(:model_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: BedrockModelArn, name: "modelArn", traits: {"smithy.api#required" => {}}))
    MantleFoundationModelModelConfiguration.add_member(:project_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MantleProjectId, name: "projectId"))
    MantleFoundationModelModelConfiguration.type = Types::MantleFoundationModelModelConfiguration
    Memories.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Memory, name: "member"))
    Memory.add_member(:session_summary, Types::Memory::SessionSummary, ::Smithy::Schema::Shapes::MemberShape.new(target: MemorySessionSummary, name: "sessionSummary"))
    Memory.add_member(:unknown, Types::Memory::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    Memory.type = Types::Memory
    MemorySessionSummary.add_member(:memory_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MemoryId, name: "memoryId"))
    MemorySessionSummary.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionId, name: "sessionId"))
    MemorySessionSummary.add_member(:session_start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimestamp, name: "sessionStartTime"))
    MemorySessionSummary.add_member(:session_expiry_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimestamp, name: "sessionExpiryTime"))
    MemorySessionSummary.add_member(:summary_text, ::Smithy::Schema::Shapes::MemberShape.new(target: SummaryText, name: "summaryText"))
    MemorySessionSummary.type = Types::MemorySessionSummary
    MemoryType.add_member(:session_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SESSION_SUMMARY", traits: {"smithy.api#enumValue" => "SESSION_SUMMARY"}))
    Message.add_member(:role, ::Smithy::Schema::Shapes::MemberShape.new(target: ConversationRole, name: "role", traits: {"smithy.api#required" => {}}))
    Message.add_member(:content, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentBlocks, name: "content", traits: {"smithy.api#required" => {}}))
    Message.type = Types::Message
    Messages.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "member"))
    Metadata.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimestamp, name: "startTime", traits: {"smithy.api#timestampFormat" => "date-time"}))
    Metadata.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimestamp, name: "endTime", traits: {"smithy.api#timestampFormat" => "date-time"}))
    Metadata.add_member(:total_time_ms, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "totalTimeMs"))
    Metadata.add_member(:operation_total_time_ms, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "operationTotalTimeMs"))
    Metadata.add_member(:client_request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "clientRequestId"))
    Metadata.add_member(:usage, ::Smithy::Schema::Shapes::MemberShape.new(target: Usage, name: "usage"))
    Metadata.type = Types::Metadata
    MetadataAttributeSchema.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "key", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[\\s\\S]+$", "smithy.api#required" => {}}))
    MetadataAttributeSchema.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeType, name: "type", traits: {"smithy.api#required" => {}}))
    MetadataAttributeSchema.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "description", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^[\\s\\S]+$", "smithy.api#required" => {}}))
    MetadataAttributeSchema.type = Types::MetadataAttributeSchema
    MetadataAttributeSchemaList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: MetadataAttributeSchema, name: "member"))
    MetadataConfigurationForReranking.add_member(:selection_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: RerankingMetadataSelectionMode, name: "selectionMode", traits: {"smithy.api#required" => {}}))
    MetadataConfigurationForReranking.add_member(:selective_mode_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: RerankingMetadataSelectiveModeConfiguration, name: "selectiveModeConfiguration"))
    MetadataConfigurationForReranking.type = Types::MetadataConfigurationForReranking
    ModelInvocationInput.add_member(:trace_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TraceId, name: "traceId"))
    ModelInvocationInput.add_member(:text, ::Smithy::Schema::Shapes::MemberShape.new(target: PromptText, name: "text"))
    ModelInvocationInput.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: PromptType, name: "type"))
    ModelInvocationInput.add_member(:override_lambda, ::Smithy::Schema::Shapes::MemberShape.new(target: LambdaArn, name: "overrideLambda"))
    ModelInvocationInput.add_member(:prompt_creation_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: CreationMode, name: "promptCreationMode"))
    ModelInvocationInput.add_member(:inference_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: InferenceConfiguration, name: "inferenceConfiguration"))
    ModelInvocationInput.add_member(:parser_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: CreationMode, name: "parserMode"))
    ModelInvocationInput.add_member(:foundation_model, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelIdentifier, name: "foundationModel"))
    ModelInvocationInput.type = Types::ModelInvocationInput
    ModelNotReadyException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: NonBlankString, name: "message"))
    ModelNotReadyException.type = Types::ModelNotReadyException
    ModelPerformanceConfiguration.add_member(:performance_config, ::Smithy::Schema::Shapes::MemberShape.new(target: PerformanceConfiguration, name: "performanceConfig"))
    ModelPerformanceConfiguration.type = Types::ModelPerformanceConfiguration
    NodeActionEvent.add_member(:node_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeName, name: "nodeName", traits: {"smithy.api#required" => {}}))
    NodeActionEvent.add_member(:timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimestamp, name: "timestamp", traits: {"smithy.api#required" => {}}))
    NodeActionEvent.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "requestId", traits: {"smithy.api#required" => {}}))
    NodeActionEvent.add_member(:service_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "serviceName", traits: {"smithy.api#required" => {}}))
    NodeActionEvent.add_member(:operation_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "operationName", traits: {"smithy.api#required" => {}}))
    NodeActionEvent.add_member(:operation_request, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Document, name: "operationRequest"))
    NodeActionEvent.add_member(:operation_response, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Document, name: "operationResponse"))
    NodeActionEvent.type = Types::NodeActionEvent
    NodeDependencyEvent.add_member(:node_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeName, name: "nodeName", traits: {"smithy.api#required" => {}}))
    NodeDependencyEvent.add_member(:timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimestamp, name: "timestamp", traits: {"smithy.api#required" => {}}))
    NodeDependencyEvent.add_member(:trace_elements, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeTraceElements, name: "traceElements", traits: {"smithy.api#required" => {}}))
    NodeDependencyEvent.type = Types::NodeDependencyEvent
    NodeErrorCode.add_member(:validation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VALIDATION", traits: {"smithy.api#enumValue" => "VALIDATION"}))
    NodeErrorCode.add_member(:dependency_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEPENDENCY_FAILED", traits: {"smithy.api#enumValue" => "DEPENDENCY_FAILED"}))
    NodeErrorCode.add_member(:bad_gateway, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BAD_GATEWAY", traits: {"smithy.api#enumValue" => "BAD_GATEWAY"}))
    NodeErrorCode.add_member(:internal_server, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INTERNAL_SERVER", traits: {"smithy.api#enumValue" => "INTERNAL_SERVER"}))
    NodeExecutionContent.add_member(:document, Types::NodeExecutionContent::Document, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Document, name: "document"))
    NodeExecutionContent.add_member(:unknown, Types::NodeExecutionContent::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    NodeExecutionContent.type = Types::NodeExecutionContent
    NodeFailureEvent.add_member(:node_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeName, name: "nodeName", traits: {"smithy.api#required" => {}}))
    NodeFailureEvent.add_member(:timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimestamp, name: "timestamp", traits: {"smithy.api#required" => {}}))
    NodeFailureEvent.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeErrorCode, name: "errorCode", traits: {"smithy.api#required" => {}}))
    NodeFailureEvent.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "errorMessage", traits: {"smithy.api#required" => {}}))
    NodeFailureEvent.type = Types::NodeFailureEvent
    NodeInputEvent.add_member(:node_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeName, name: "nodeName", traits: {"smithy.api#required" => {}}))
    NodeInputEvent.add_member(:timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimestamp, name: "timestamp", traits: {"smithy.api#required" => {}}))
    NodeInputEvent.add_member(:fields, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeInputFields, name: "fields", traits: {"smithy.api#required" => {}}))
    NodeInputEvent.type = Types::NodeInputEvent
    NodeInputExecutionChain.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeInputExecutionChainItem, name: "member"))
    NodeInputExecutionChainItem.add_member(:node_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeName, name: "nodeName", traits: {"smithy.api#required" => {}}))
    NodeInputExecutionChainItem.add_member(:index, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "index"))
    NodeInputExecutionChainItem.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowControlNodeType, name: "type", traits: {"smithy.api#required" => {}}))
    NodeInputExecutionChainItem.type = Types::NodeInputExecutionChainItem
    NodeInputField.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeInputName, name: "name", traits: {"smithy.api#required" => {}}))
    NodeInputField.add_member(:content, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeExecutionContent, name: "content", traits: {"smithy.api#required" => {}}))
    NodeInputField.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeInputSource, name: "source"))
    NodeInputField.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowNodeIODataType, name: "type"))
    NodeInputField.add_member(:category, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowNodeInputCategory, name: "category"))
    NodeInputField.add_member(:execution_chain, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeInputExecutionChain, name: "executionChain"))
    NodeInputField.type = Types::NodeInputField
    NodeInputFields.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeInputField, name: "member"))
    NodeInputSource.add_member(:node_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeName, name: "nodeName", traits: {"smithy.api#required" => {}}))
    NodeInputSource.add_member(:output_field_name, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowNodeOutputName, name: "outputFieldName", traits: {"smithy.api#required" => {}}))
    NodeInputSource.add_member(:expression, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowNodeInputExpression, name: "expression", traits: {"smithy.api#required" => {}}))
    NodeInputSource.type = Types::NodeInputSource
    NodeOutputEvent.add_member(:node_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeName, name: "nodeName", traits: {"smithy.api#required" => {}}))
    NodeOutputEvent.add_member(:timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimestamp, name: "timestamp", traits: {"smithy.api#required" => {}}))
    NodeOutputEvent.add_member(:fields, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeOutputFields, name: "fields", traits: {"smithy.api#required" => {}}))
    NodeOutputEvent.type = Types::NodeOutputEvent
    NodeOutputField.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeOutputName, name: "name", traits: {"smithy.api#required" => {}}))
    NodeOutputField.add_member(:content, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeExecutionContent, name: "content", traits: {"smithy.api#required" => {}}))
    NodeOutputField.add_member(:next, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeOutputNextList, name: "next"))
    NodeOutputField.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowNodeIODataType, name: "type"))
    NodeOutputField.type = Types::NodeOutputField
    NodeOutputFields.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeOutputField, name: "member"))
    NodeOutputNext.add_member(:node_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeName, name: "nodeName", traits: {"smithy.api#required" => {}}))
    NodeOutputNext.add_member(:input_field_name, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowNodeInputName, name: "inputFieldName", traits: {"smithy.api#required" => {}}))
    NodeOutputNext.type = Types::NodeOutputNext
    NodeOutputNextList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeOutputNext, name: "member"))
    NodeTraceElements.add_member(:agent_traces, Types::NodeTraceElements::AgentTraces, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentTraces, name: "agentTraces"))
    NodeTraceElements.add_member(:unknown, Types::NodeTraceElements::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    NodeTraceElements.type = Types::NodeTraceElements
    NodeType.add_member(:flow_input_node, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FLOW_INPUT_NODE", traits: {"smithy.api#enumValue" => "FlowInputNode"}))
    NodeType.add_member(:flow_output_node, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FLOW_OUTPUT_NODE", traits: {"smithy.api#enumValue" => "FlowOutputNode"}))
    NodeType.add_member(:lambda_function_node, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LAMBDA_FUNCTION_NODE", traits: {"smithy.api#enumValue" => "LambdaFunctionNode"}))
    NodeType.add_member(:knowledge_base_node, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KNOWLEDGE_BASE_NODE", traits: {"smithy.api#enumValue" => "KnowledgeBaseNode"}))
    NodeType.add_member(:prompt_node, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PROMPT_NODE", traits: {"smithy.api#enumValue" => "PromptNode"}))
    NodeType.add_member(:condition_node, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONDITION_NODE", traits: {"smithy.api#enumValue" => "ConditionNode"}))
    NodeType.add_member(:lex_node, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LEX_NODE", traits: {"smithy.api#enumValue" => "LexNode"}))
    Observation.add_member(:trace_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TraceId, name: "traceId"))
    Observation.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: Type, name: "type"))
    Observation.add_member(:action_group_invocation_output, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionGroupInvocationOutput, name: "actionGroupInvocationOutput"))
    Observation.add_member(:agent_collaborator_invocation_output, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentCollaboratorInvocationOutput, name: "agentCollaboratorInvocationOutput"))
    Observation.add_member(:knowledge_base_lookup_output, ::Smithy::Schema::Shapes::MemberShape.new(target: KnowledgeBaseLookupOutput, name: "knowledgeBaseLookupOutput"))
    Observation.add_member(:final_response, ::Smithy::Schema::Shapes::MemberShape.new(target: FinalResponse, name: "finalResponse"))
    Observation.add_member(:reprompt_response, ::Smithy::Schema::Shapes::MemberShape.new(target: RepromptResponse, name: "repromptResponse"))
    Observation.add_member(:code_interpreter_invocation_output, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeInterpreterInvocationOutput, name: "codeInterpreterInvocationOutput"))
    Observation.type = Types::Observation
    OptimizePromptRequest.add_member(:input, ::Smithy::Schema::Shapes::MemberShape.new(target: InputPrompt, name: "input", traits: {"smithy.api#required" => {}}))
    OptimizePromptRequest.add_member(:target_model_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "targetModelId", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^(arn:aws(-[^:]+)?:bedrock:[a-z0-9-]{1,20}:(([0-9]{12}:custom-model/[a-z0-9-]{1,63}[.]{1}[a-z0-9-]{1,63}/[a-z0-9]{12})|(:foundation-model/[a-z0-9-]{1,63}[.]{1}[a-z0-9-]{1,63}([.:]?[a-z0-9-]{1,63}))|([0-9]{12}:provisioned-model/[a-z0-9]{12})))|([a-z0-9-]{1,63}[.]{1}[a-z0-9-]{1,63}([.:]?[a-z0-9-]{1,63}))|(([0-9a-zA-Z][_-]?)+)$", "smithy.api#required" => {}}))
    OptimizePromptRequest.type = Types::OptimizePromptRequest
    OptimizePromptResponse.add_member(:optimized_prompt, ::Smithy::Schema::Shapes::MemberShape.new(target: OptimizedPromptStream, name: "optimizedPrompt", traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    OptimizePromptResponse[:http_payload] = :optimized_prompt
    OptimizePromptResponse[:http_payload_member] = OptimizePromptResponse.member(:optimized_prompt)
    OptimizePromptResponse.type = Types::OptimizePromptResponse
    OptimizedPrompt.add_member(:text_prompt, Types::OptimizedPrompt::TextPrompt, ::Smithy::Schema::Shapes::MemberShape.new(target: TextPrompt, name: "textPrompt"))
    OptimizedPrompt.add_member(:unknown, Types::OptimizedPrompt::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    OptimizedPrompt.type = Types::OptimizedPrompt
    OptimizedPromptEvent.add_member(:optimized_prompt, ::Smithy::Schema::Shapes::MemberShape.new(target: OptimizedPrompt, name: "optimizedPrompt"))
    OptimizedPromptEvent.type = Types::OptimizedPromptEvent
    OptimizedPromptStream.add_member(:optimized_prompt_event, Types::OptimizedPromptStream::OptimizedPromptEvent, ::Smithy::Schema::Shapes::MemberShape.new(target: OptimizedPromptEvent, name: "optimizedPromptEvent"))
    OptimizedPromptStream.add_member(:analyze_prompt_event, Types::OptimizedPromptStream::AnalyzePromptEvent, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyzePromptEvent, name: "analyzePromptEvent"))
    OptimizedPromptStream.add_member(:internal_server_exception, Types::OptimizedPromptStream::InternalServerException, ::Smithy::Schema::Shapes::MemberShape.new(target: InternalServerException, name: "internalServerException"))
    OptimizedPromptStream.add_member(:throttling_exception, Types::OptimizedPromptStream::ThrottlingException, ::Smithy::Schema::Shapes::MemberShape.new(target: ThrottlingException, name: "throttlingException"))
    OptimizedPromptStream.add_member(:validation_exception, Types::OptimizedPromptStream::ValidationException, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationException, name: "validationException"))
    OptimizedPromptStream.add_member(:dependency_failed_exception, Types::OptimizedPromptStream::DependencyFailedException, ::Smithy::Schema::Shapes::MemberShape.new(target: DependencyFailedException, name: "dependencyFailedException"))
    OptimizedPromptStream.add_member(:access_denied_exception, Types::OptimizedPromptStream::AccessDeniedException, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessDeniedException, name: "accessDeniedException"))
    OptimizedPromptStream.add_member(:bad_gateway_exception, Types::OptimizedPromptStream::BadGatewayException, ::Smithy::Schema::Shapes::MemberShape.new(target: BadGatewayException, name: "badGatewayException"))
    OptimizedPromptStream.add_member(:unknown, Types::OptimizedPromptStream::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    OptimizedPromptStream.type = Types::OptimizedPromptStream
    OrchestrationConfiguration.add_member(:prompt_template, ::Smithy::Schema::Shapes::MemberShape.new(target: PromptTemplate, name: "promptTemplate"))
    OrchestrationConfiguration.add_member(:inference_config, ::Smithy::Schema::Shapes::MemberShape.new(target: InferenceConfig, name: "inferenceConfig"))
    OrchestrationConfiguration.add_member(:additional_model_request_fields, ::Smithy::Schema::Shapes::MemberShape.new(target: AdditionalModelRequestFields, name: "additionalModelRequestFields"))
    OrchestrationConfiguration.add_member(:query_transformation_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryTransformationConfiguration, name: "queryTransformationConfiguration"))
    OrchestrationConfiguration.add_member(:performance_config, ::Smithy::Schema::Shapes::MemberShape.new(target: PerformanceConfiguration, name: "performanceConfig"))
    OrchestrationConfiguration.type = Types::OrchestrationConfiguration
    OrchestrationExecutor.add_member(:lambda, Types::OrchestrationExecutor::Lambda, ::Smithy::Schema::Shapes::MemberShape.new(target: LambdaArn, name: "lambda"))
    OrchestrationExecutor.add_member(:unknown, Types::OrchestrationExecutor::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    OrchestrationExecutor.type = Types::OrchestrationExecutor
    OrchestrationModelInvocationOutput.add_member(:trace_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TraceId, name: "traceId"))
    OrchestrationModelInvocationOutput.add_member(:raw_response, ::Smithy::Schema::Shapes::MemberShape.new(target: RawResponse, name: "rawResponse"))
    OrchestrationModelInvocationOutput.add_member(:metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: Metadata, name: "metadata"))
    OrchestrationModelInvocationOutput.add_member(:reasoning_content, ::Smithy::Schema::Shapes::MemberShape.new(target: ReasoningContentBlock, name: "reasoningContent"))
    OrchestrationModelInvocationOutput.type = Types::OrchestrationModelInvocationOutput
    OrchestrationTrace.add_member(:rationale, Types::OrchestrationTrace::Rationale, ::Smithy::Schema::Shapes::MemberShape.new(target: Rationale, name: "rationale"))
    OrchestrationTrace.add_member(:invocation_input, Types::OrchestrationTrace::InvocationInput, ::Smithy::Schema::Shapes::MemberShape.new(target: InvocationInput, name: "invocationInput"))
    OrchestrationTrace.add_member(:observation, Types::OrchestrationTrace::Observation, ::Smithy::Schema::Shapes::MemberShape.new(target: Observation, name: "observation"))
    OrchestrationTrace.add_member(:model_invocation_input, Types::OrchestrationTrace::ModelInvocationInput, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelInvocationInput, name: "modelInvocationInput"))
    OrchestrationTrace.add_member(:model_invocation_output, Types::OrchestrationTrace::ModelInvocationOutput, ::Smithy::Schema::Shapes::MemberShape.new(target: OrchestrationModelInvocationOutput, name: "modelInvocationOutput"))
    OrchestrationTrace.add_member(:unknown, Types::OrchestrationTrace::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    OrchestrationTrace.type = Types::OrchestrationTrace
    OrchestrationType.add_member(:default, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEFAULT", traits: {"smithy.api#enumValue" => "DEFAULT"}))
    OrchestrationType.add_member(:custom_orchestration, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CUSTOM_ORCHESTRATION", traits: {"smithy.api#enumValue" => "CUSTOM_ORCHESTRATION"}))
    OutputFile.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "name"))
    OutputFile.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: MimeType, name: "type"))
    OutputFile.add_member(:bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: FileBody, name: "bytes"))
    OutputFile.type = Types::OutputFile
    OutputFiles.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: OutputFile, name: "member"))
    Parameter.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "name"))
    Parameter.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "type"))
    Parameter.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "value"))
    Parameter.type = Types::Parameter
    ParameterDetail.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterDescription, name: "description"))
    ParameterDetail.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterType, name: "type", traits: {"smithy.api#required" => {}}))
    ParameterDetail.add_member(:required, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "required"))
    ParameterDetail.type = Types::ParameterDetail
    ParameterList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Parameter, name: "member"))
    ParameterMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterName, name: "key"))
    ParameterMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterDetail, name: "value"))
    ParameterType.add_member(:string, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STRING", traits: {"smithy.api#enumValue" => "string"}))
    ParameterType.add_member(:number, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NUMBER", traits: {"smithy.api#enumValue" => "number"}))
    ParameterType.add_member(:integer, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INTEGER", traits: {"smithy.api#enumValue" => "integer"}))
    ParameterType.add_member(:boolean, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BOOLEAN", traits: {"smithy.api#enumValue" => "boolean"}))
    ParameterType.add_member(:array, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ARRAY", traits: {"smithy.api#enumValue" => "array"}))
    Parameters.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Parameter, name: "member"))
    PayloadPart.add_member(:bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: PartBody, name: "bytes"))
    PayloadPart.add_member(:attribution, ::Smithy::Schema::Shapes::MemberShape.new(target: Attribution, name: "attribution"))
    PayloadPart.type = Types::PayloadPart
    PayloadType.add_member(:text, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TEXT", traits: {"smithy.api#enumValue" => "TEXT"}))
    PayloadType.add_member(:return_control, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RETURN_CONTROL", traits: {"smithy.api#enumValue" => "RETURN_CONTROL"}))
    PerformanceConfigLatency.add_member(:standard, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STANDARD", traits: {"smithy.api#enumValue" => "standard"}))
    PerformanceConfigLatency.add_member(:optimized, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OPTIMIZED", traits: {"smithy.api#enumValue" => "optimized"}))
    PerformanceConfiguration.add_member(:latency, ::Smithy::Schema::Shapes::MemberShape.new(target: PerformanceConfigLatency, name: "latency", traits: {"smithy.api#default" => "standard"}))
    PerformanceConfiguration.type = Types::PerformanceConfiguration
    PostProcessingModelInvocationOutput.add_member(:trace_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TraceId, name: "traceId"))
    PostProcessingModelInvocationOutput.add_member(:parsed_response, ::Smithy::Schema::Shapes::MemberShape.new(target: PostProcessingParsedResponse, name: "parsedResponse"))
    PostProcessingModelInvocationOutput.add_member(:raw_response, ::Smithy::Schema::Shapes::MemberShape.new(target: RawResponse, name: "rawResponse"))
    PostProcessingModelInvocationOutput.add_member(:metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: Metadata, name: "metadata"))
    PostProcessingModelInvocationOutput.add_member(:reasoning_content, ::Smithy::Schema::Shapes::MemberShape.new(target: ReasoningContentBlock, name: "reasoningContent"))
    PostProcessingModelInvocationOutput.type = Types::PostProcessingModelInvocationOutput
    PostProcessingParsedResponse.add_member(:text, ::Smithy::Schema::Shapes::MemberShape.new(target: OutputString, name: "text"))
    PostProcessingParsedResponse.type = Types::PostProcessingParsedResponse
    PostProcessingTrace.add_member(:model_invocation_input, Types::PostProcessingTrace::ModelInvocationInput, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelInvocationInput, name: "modelInvocationInput"))
    PostProcessingTrace.add_member(:model_invocation_output, Types::PostProcessingTrace::ModelInvocationOutput, ::Smithy::Schema::Shapes::MemberShape.new(target: PostProcessingModelInvocationOutput, name: "modelInvocationOutput"))
    PostProcessingTrace.add_member(:unknown, Types::PostProcessingTrace::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    PostProcessingTrace.type = Types::PostProcessingTrace
    PreProcessingModelInvocationOutput.add_member(:trace_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TraceId, name: "traceId"))
    PreProcessingModelInvocationOutput.add_member(:parsed_response, ::Smithy::Schema::Shapes::MemberShape.new(target: PreProcessingParsedResponse, name: "parsedResponse"))
    PreProcessingModelInvocationOutput.add_member(:raw_response, ::Smithy::Schema::Shapes::MemberShape.new(target: RawResponse, name: "rawResponse"))
    PreProcessingModelInvocationOutput.add_member(:metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: Metadata, name: "metadata"))
    PreProcessingModelInvocationOutput.add_member(:reasoning_content, ::Smithy::Schema::Shapes::MemberShape.new(target: ReasoningContentBlock, name: "reasoningContent"))
    PreProcessingModelInvocationOutput.type = Types::PreProcessingModelInvocationOutput
    PreProcessingParsedResponse.add_member(:rationale, ::Smithy::Schema::Shapes::MemberShape.new(target: RationaleString, name: "rationale"))
    PreProcessingParsedResponse.add_member(:is_valid, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "isValid"))
    PreProcessingParsedResponse.type = Types::PreProcessingParsedResponse
    PreProcessingTrace.add_member(:model_invocation_input, Types::PreProcessingTrace::ModelInvocationInput, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelInvocationInput, name: "modelInvocationInput"))
    PreProcessingTrace.add_member(:model_invocation_output, Types::PreProcessingTrace::ModelInvocationOutput, ::Smithy::Schema::Shapes::MemberShape.new(target: PreProcessingModelInvocationOutput, name: "modelInvocationOutput"))
    PreProcessingTrace.add_member(:unknown, Types::PreProcessingTrace::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    PreProcessingTrace.type = Types::PreProcessingTrace
    PromptConfiguration.add_member(:prompt_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PromptType, name: "promptType"))
    PromptConfiguration.add_member(:prompt_creation_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: CreationMode, name: "promptCreationMode"))
    PromptConfiguration.add_member(:prompt_state, ::Smithy::Schema::Shapes::MemberShape.new(target: PromptState, name: "promptState"))
    PromptConfiguration.add_member(:base_prompt_template, ::Smithy::Schema::Shapes::MemberShape.new(target: BasePromptTemplate, name: "basePromptTemplate"))
    PromptConfiguration.add_member(:inference_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: InferenceConfiguration, name: "inferenceConfiguration"))
    PromptConfiguration.add_member(:parser_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: CreationMode, name: "parserMode"))
    PromptConfiguration.add_member(:foundation_model, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelIdentifier, name: "foundationModel"))
    PromptConfiguration.add_member(:additional_model_request_fields, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Document, name: "additionalModelRequestFields"))
    PromptConfiguration.type = Types::PromptConfiguration
    PromptConfigurations.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PromptConfiguration, name: "member"))
    PromptCreationConfigurations.add_member(:previous_conversation_turns_to_include, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "previousConversationTurnsToInclude", traits: {"smithy.api#range" => {"min" => 0}}))
    PromptCreationConfigurations.add_member(:exclude_previous_thinking_steps, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "excludePreviousThinkingSteps", traits: {"smithy.api#default" => false}))
    PromptCreationConfigurations.type = Types::PromptCreationConfigurations
    PromptOverrideConfiguration.add_member(:prompt_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: PromptConfigurations, name: "promptConfigurations", traits: {"smithy.api#required" => {}}))
    PromptOverrideConfiguration.add_member(:override_lambda, ::Smithy::Schema::Shapes::MemberShape.new(target: LambdaResourceArn, name: "overrideLambda"))
    PromptOverrideConfiguration.type = Types::PromptOverrideConfiguration
    PromptSessionAttributesMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "key"))
    PromptSessionAttributesMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "value"))
    PromptState.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    PromptState.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    PromptTemplate.add_member(:text_prompt_template, ::Smithy::Schema::Shapes::MemberShape.new(target: TextPromptTemplate, name: "textPromptTemplate"))
    PromptTemplate.type = Types::PromptTemplate
    PromptType.add_member(:pre_processing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PRE_PROCESSING", traits: {"smithy.api#enumValue" => "PRE_PROCESSING"}))
    PromptType.add_member(:orchestration, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ORCHESTRATION", traits: {"smithy.api#enumValue" => "ORCHESTRATION"}))
    PromptType.add_member(:knowledge_base_response_generation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KNOWLEDGE_BASE_RESPONSE_GENERATION", traits: {"smithy.api#enumValue" => "KNOWLEDGE_BASE_RESPONSE_GENERATION"}))
    PromptType.add_member(:post_processing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "POST_PROCESSING", traits: {"smithy.api#enumValue" => "POST_PROCESSING"}))
    PromptType.add_member(:routing_classifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ROUTING_CLASSIFIER", traits: {"smithy.api#enumValue" => "ROUTING_CLASSIFIER"}))
    PropertyParameters.add_member(:properties, ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterList, name: "properties"))
    PropertyParameters.type = Types::PropertyParameters
    PutInvocationStepRequest.add_member(:session_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionIdentifier, name: "sessionIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutInvocationStepRequest.add_member(:invocation_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: InvocationIdentifier, name: "invocationIdentifier", traits: {"smithy.api#required" => {}}))
    PutInvocationStepRequest.add_member(:invocation_step_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimestamp, name: "invocationStepTime", traits: {"smithy.api#required" => {}}))
    PutInvocationStepRequest.add_member(:payload, ::Smithy::Schema::Shapes::MemberShape.new(target: InvocationStepPayload, name: "payload", traits: {"smithy.api#required" => {}}))
    PutInvocationStepRequest.add_member(:invocation_step_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "invocationStepId"))
    PutInvocationStepRequest.type = Types::PutInvocationStepRequest
    PutInvocationStepResponse.add_member(:invocation_step_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "invocationStepId", traits: {"smithy.api#required" => {}}))
    PutInvocationStepResponse.type = Types::PutInvocationStepResponse
    QueryGenerationInput.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: InputQueryType, name: "type", traits: {"smithy.api#required" => {}}))
    QueryGenerationInput.add_member(:text, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "text", traits: {"smithy.api#length" => {"min" => 1, "max" => 20000}, "smithy.api#pattern" => "^(?!\\s*$).+", "smithy.api#required" => {}}))
    QueryGenerationInput.type = Types::QueryGenerationInput
    QueryTransformationConfiguration.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryTransformationType, name: "type", traits: {"smithy.api#required" => {}}))
    QueryTransformationConfiguration.type = Types::QueryTransformationConfiguration
    QueryTransformationMode.add_member(:text_to_sql, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TEXT_TO_SQL", traits: {"smithy.api#enumValue" => "TEXT_TO_SQL"}))
    QueryTransformationType.add_member(:query_decomposition, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "QUERY_DECOMPOSITION", traits: {"smithy.api#enumValue" => "QUERY_DECOMPOSITION"}))
    RAGStopSequences.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "member", traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}}))
    Rationale.add_member(:trace_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TraceId, name: "traceId"))
    Rationale.add_member(:text, ::Smithy::Schema::Shapes::MemberShape.new(target: RationaleString, name: "text"))
    Rationale.type = Types::Rationale
    RawResponse.add_member(:content, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "content"))
    RawResponse.type = Types::RawResponse
    ReasoningContentBlock.add_member(:reasoning_text, Types::ReasoningContentBlock::ReasoningText, ::Smithy::Schema::Shapes::MemberShape.new(target: ReasoningTextBlock, name: "reasoningText"))
    ReasoningContentBlock.add_member(:redacted_content, Types::ReasoningContentBlock::RedactedContent, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Blob, name: "redactedContent"))
    ReasoningContentBlock.add_member(:unknown, Types::ReasoningContentBlock::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    ReasoningContentBlock.type = Types::ReasoningContentBlock
    ReasoningTextBlock.add_member(:text, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "text", traits: {"smithy.api#required" => {}}))
    ReasoningTextBlock.add_member(:signature, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "signature"))
    ReasoningTextBlock.type = Types::ReasoningTextBlock
    RelayConversationHistory.add_member(:to_collaborator, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TO_COLLABORATOR", traits: {"smithy.api#enumValue" => "TO_COLLABORATOR"}))
    RelayConversationHistory.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    RepromptResponse.add_member(:text, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "text"))
    RepromptResponse.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: Source, name: "source"))
    RepromptResponse.type = Types::RepromptResponse
    RequestBody.add_member(:content, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentMap, name: "content"))
    RequestBody.type = Types::RequestBody
    RequireConfirmation.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    RequireConfirmation.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    RerankDocument.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: RerankDocumentType, name: "type", traits: {"smithy.api#required" => {}}))
    RerankDocument.add_member(:text_document, ::Smithy::Schema::Shapes::MemberShape.new(target: RerankTextDocument, name: "textDocument"))
    RerankDocument.add_member(:json_document, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Document, name: "jsonDocument"))
    RerankDocument.type = Types::RerankDocument
    RerankDocumentType.add_member(:text, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TEXT", traits: {"smithy.api#enumValue" => "TEXT"}))
    RerankDocumentType.add_member(:json, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "JSON", traits: {"smithy.api#enumValue" => "JSON"}))
    RerankQueriesList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RerankQuery, name: "member"))
    RerankQuery.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: RerankQueryContentType, name: "type", traits: {"smithy.api#required" => {}}))
    RerankQuery.add_member(:text_query, ::Smithy::Schema::Shapes::MemberShape.new(target: RerankTextDocument, name: "textQuery", traits: {"smithy.api#required" => {}}))
    RerankQuery.type = Types::RerankQuery
    RerankQueryContentType.add_member(:text, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TEXT", traits: {"smithy.api#enumValue" => "TEXT"}))
    RerankRequest.add_member(:queries, ::Smithy::Schema::Shapes::MemberShape.new(target: RerankQueriesList, name: "queries", traits: {"smithy.api#required" => {}}))
    RerankRequest.add_member(:sources, ::Smithy::Schema::Shapes::MemberShape.new(target: RerankSourcesList, name: "sources", traits: {"smithy.api#required" => {}}))
    RerankRequest.add_member(:reranking_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: RerankingConfiguration, name: "rerankingConfiguration", traits: {"smithy.api#required" => {}}))
    RerankRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    RerankRequest.type = Types::RerankRequest
    RerankResponse.add_member(:results, ::Smithy::Schema::Shapes::MemberShape.new(target: RerankResultsList, name: "results", traits: {"smithy.api#required" => {}}))
    RerankResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    RerankResponse.type = Types::RerankResponse
    RerankResult.add_member(:index, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "index", traits: {"smithy.api#range" => {"min" => 0, "max" => 1000}, "smithy.api#required" => {}}))
    RerankResult.add_member(:relevance_score, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Float, name: "relevanceScore", traits: {"smithy.api#required" => {}}))
    RerankResult.add_member(:document, ::Smithy::Schema::Shapes::MemberShape.new(target: RerankDocument, name: "document"))
    RerankResult.type = Types::RerankResult
    RerankResultsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RerankResult, name: "member"))
    RerankSource.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: RerankSourceType, name: "type", traits: {"smithy.api#required" => {}}))
    RerankSource.add_member(:inline_document_source, ::Smithy::Schema::Shapes::MemberShape.new(target: RerankDocument, name: "inlineDocumentSource", traits: {"smithy.api#required" => {}}))
    RerankSource.type = Types::RerankSource
    RerankSourceType.add_member(:inline, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INLINE", traits: {"smithy.api#enumValue" => "INLINE"}))
    RerankSourcesList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RerankSource, name: "member"))
    RerankTextDocument.add_member(:text, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "text", traits: {"smithy.api#length" => {"min" => 1, "max" => 32000}}))
    RerankTextDocument.type = Types::RerankTextDocument
    RerankingConfiguration.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: RerankingConfigurationType, name: "type", traits: {"smithy.api#required" => {}}))
    RerankingConfiguration.add_member(:bedrock_reranking_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: BedrockRerankingConfiguration, name: "bedrockRerankingConfiguration", traits: {"smithy.api#required" => {}}))
    RerankingConfiguration.type = Types::RerankingConfiguration
    RerankingConfigurationType.add_member(:bedrock_reranking_model, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BEDROCK_RERANKING_MODEL", traits: {"smithy.api#enumValue" => "BEDROCK_RERANKING_MODEL"}))
    RerankingMetadataSelectionMode.add_member(:selective, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SELECTIVE", traits: {"smithy.api#enumValue" => "SELECTIVE"}))
    RerankingMetadataSelectionMode.add_member(:all, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ALL", traits: {"smithy.api#enumValue" => "ALL"}))
    RerankingMetadataSelectiveModeConfiguration.add_member(:fields_to_include, Types::RerankingMetadataSelectiveModeConfiguration::FieldsToInclude, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldsForReranking, name: "fieldsToInclude"))
    RerankingMetadataSelectiveModeConfiguration.add_member(:fields_to_exclude, Types::RerankingMetadataSelectiveModeConfiguration::FieldsToExclude, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldsForReranking, name: "fieldsToExclude"))
    RerankingMetadataSelectiveModeConfiguration.add_member(:unknown, Types::RerankingMetadataSelectiveModeConfiguration::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    RerankingMetadataSelectiveModeConfiguration.type = Types::RerankingMetadataSelectiveModeConfiguration
    RerankingModelType.add_member(:custom, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CUSTOM", traits: {"smithy.api#enumValue" => "CUSTOM"}))
    RerankingModelType.add_member(:managed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MANAGED", traits: {"smithy.api#enumValue" => "MANAGED"}))
    RerankingModelType.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: NonBlankString, name: "message"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResponseBody.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "key"))
    ResponseBody.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentBody, name: "value"))
    ResponseState.add_member(:failure, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILURE", traits: {"smithy.api#enumValue" => "FAILURE"}))
    ResponseState.add_member(:reprompt, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REPROMPT", traits: {"smithy.api#enumValue" => "REPROMPT"}))
    ResponseStream.add_member(:chunk, Types::ResponseStream::Chunk, ::Smithy::Schema::Shapes::MemberShape.new(target: PayloadPart, name: "chunk"))
    ResponseStream.add_member(:trace, Types::ResponseStream::Trace, ::Smithy::Schema::Shapes::MemberShape.new(target: TracePart, name: "trace"))
    ResponseStream.add_member(:return_control, Types::ResponseStream::ReturnControl, ::Smithy::Schema::Shapes::MemberShape.new(target: ReturnControlPayload, name: "returnControl"))
    ResponseStream.add_member(:internal_server_exception, Types::ResponseStream::InternalServerException, ::Smithy::Schema::Shapes::MemberShape.new(target: InternalServerException, name: "internalServerException"))
    ResponseStream.add_member(:validation_exception, Types::ResponseStream::ValidationException, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationException, name: "validationException"))
    ResponseStream.add_member(:resource_not_found_exception, Types::ResponseStream::ResourceNotFoundException, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceNotFoundException, name: "resourceNotFoundException"))
    ResponseStream.add_member(:service_quota_exceeded_exception, Types::ResponseStream::ServiceQuotaExceededException, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceQuotaExceededException, name: "serviceQuotaExceededException"))
    ResponseStream.add_member(:throttling_exception, Types::ResponseStream::ThrottlingException, ::Smithy::Schema::Shapes::MemberShape.new(target: ThrottlingException, name: "throttlingException"))
    ResponseStream.add_member(:access_denied_exception, Types::ResponseStream::AccessDeniedException, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessDeniedException, name: "accessDeniedException"))
    ResponseStream.add_member(:conflict_exception, Types::ResponseStream::ConflictException, ::Smithy::Schema::Shapes::MemberShape.new(target: ConflictException, name: "conflictException"))
    ResponseStream.add_member(:dependency_failed_exception, Types::ResponseStream::DependencyFailedException, ::Smithy::Schema::Shapes::MemberShape.new(target: DependencyFailedException, name: "dependencyFailedException"))
    ResponseStream.add_member(:bad_gateway_exception, Types::ResponseStream::BadGatewayException, ::Smithy::Schema::Shapes::MemberShape.new(target: BadGatewayException, name: "badGatewayException"))
    ResponseStream.add_member(:model_not_ready_exception, Types::ResponseStream::ModelNotReadyException, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelNotReadyException, name: "modelNotReadyException"))
    ResponseStream.add_member(:files, Types::ResponseStream::Files, ::Smithy::Schema::Shapes::MemberShape.new(target: FilePart, name: "files"))
    ResponseStream.add_member(:unknown, Types::ResponseStream::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    ResponseStream.type = Types::ResponseStream
    RetrievalContent.add_member(:byte_content, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Blob, name: "byteContent"))
    RetrievalContent.add_member(:text, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "text"))
    RetrievalContent.add_member(:mime_type, ::Smithy::Schema::Shapes::MemberShape.new(target: MimeType, name: "mimeType", traits: {"smithy.api#required" => {}}))
    RetrievalContent.type = Types::RetrievalContent
    RetrievalFilter.add_member(:equals, Types::RetrievalFilter::Equals, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterAttribute, name: "equals"))
    RetrievalFilter.add_member(:not_equals, Types::RetrievalFilter::NotEquals, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterAttribute, name: "notEquals"))
    RetrievalFilter.add_member(:greater_than, Types::RetrievalFilter::GreaterThan, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterAttribute, name: "greaterThan"))
    RetrievalFilter.add_member(:greater_than_or_equals, Types::RetrievalFilter::GreaterThanOrEquals, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterAttribute, name: "greaterThanOrEquals"))
    RetrievalFilter.add_member(:less_than, Types::RetrievalFilter::LessThan, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterAttribute, name: "lessThan"))
    RetrievalFilter.add_member(:less_than_or_equals, Types::RetrievalFilter::LessThanOrEquals, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterAttribute, name: "lessThanOrEquals"))
    RetrievalFilter.add_member(:in, Types::RetrievalFilter::In, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterAttribute, name: "in"))
    RetrievalFilter.add_member(:not_in, Types::RetrievalFilter::NotIn, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterAttribute, name: "notIn"))
    RetrievalFilter.add_member(:starts_with, Types::RetrievalFilter::StartsWith, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterAttribute, name: "startsWith"))
    RetrievalFilter.add_member(:list_contains, Types::RetrievalFilter::ListContains, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterAttribute, name: "listContains"))
    RetrievalFilter.add_member(:string_contains, Types::RetrievalFilter::StringContains, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterAttribute, name: "stringContains"))
    RetrievalFilter.add_member(:and_all, Types::RetrievalFilter::AndAll, ::Smithy::Schema::Shapes::MemberShape.new(target: RetrievalFilterList, name: "andAll"))
    RetrievalFilter.add_member(:or_all, Types::RetrievalFilter::OrAll, ::Smithy::Schema::Shapes::MemberShape.new(target: RetrievalFilterList, name: "orAll"))
    RetrievalFilter.add_member(:unknown, Types::RetrievalFilter::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    RetrievalFilter.type = Types::RetrievalFilter
    RetrievalFilterList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RetrievalFilter, name: "member"))
    RetrievalOverrides.add_member(:filter, ::Smithy::Schema::Shapes::MemberShape.new(target: RetrievalFilter, name: "filter"))
    RetrievalOverrides.add_member(:max_number_of_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxNumberOfResults", traits: {"smithy.api#range" => {"min" => 1}}))
    RetrievalOverrides.type = Types::RetrievalOverrides
    RetrievalResultConfluenceLocation.add_member(:url, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "url"))
    RetrievalResultConfluenceLocation.type = Types::RetrievalResultConfluenceLocation
    RetrievalResultContent.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: RetrievalResultContentType, name: "type"))
    RetrievalResultContent.add_member(:text, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "text", traits: {"smithy.api#addedDefault" => {}, "smithy.api#default" => ""}))
    RetrievalResultContent.add_member(:byte_content, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "byteContent"))
    RetrievalResultContent.add_member(:video, ::Smithy::Schema::Shapes::MemberShape.new(target: VideoSegment, name: "video"))
    RetrievalResultContent.add_member(:audio, ::Smithy::Schema::Shapes::MemberShape.new(target: AudioSegment, name: "audio"))
    RetrievalResultContent.add_member(:row, ::Smithy::Schema::Shapes::MemberShape.new(target: RetrievalResultContentRow, name: "row"))
    RetrievalResultContent.type = Types::RetrievalResultContent
    RetrievalResultContentColumn.add_member(:column_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "columnName"))
    RetrievalResultContentColumn.add_member(:column_value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "columnValue"))
    RetrievalResultContentColumn.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: RetrievalResultContentColumnType, name: "type"))
    RetrievalResultContentColumn.type = Types::RetrievalResultContentColumn
    RetrievalResultContentColumnType.add_member(:blob, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BLOB", traits: {"smithy.api#enumValue" => "BLOB"}))
    RetrievalResultContentColumnType.add_member(:boolean, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BOOLEAN", traits: {"smithy.api#enumValue" => "BOOLEAN"}))
    RetrievalResultContentColumnType.add_member(:double, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DOUBLE", traits: {"smithy.api#enumValue" => "DOUBLE"}))
    RetrievalResultContentColumnType.add_member(:null, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NULL", traits: {"smithy.api#enumValue" => "NULL"}))
    RetrievalResultContentColumnType.add_member(:long, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LONG", traits: {"smithy.api#enumValue" => "LONG"}))
    RetrievalResultContentColumnType.add_member(:string, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STRING", traits: {"smithy.api#enumValue" => "STRING"}))
    RetrievalResultContentRow.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RetrievalResultContentColumn, name: "member"))
    RetrievalResultContentType.add_member(:text, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TEXT", traits: {"smithy.api#enumValue" => "TEXT"}))
    RetrievalResultContentType.add_member(:image, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IMAGE", traits: {"smithy.api#enumValue" => "IMAGE"}))
    RetrievalResultContentType.add_member(:row, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ROW", traits: {"smithy.api#enumValue" => "ROW"}))
    RetrievalResultContentType.add_member(:audio, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AUDIO", traits: {"smithy.api#enumValue" => "AUDIO"}))
    RetrievalResultContentType.add_member(:video, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VIDEO", traits: {"smithy.api#enumValue" => "VIDEO"}))
    RetrievalResultCustomDocumentLocation.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "id"))
    RetrievalResultCustomDocumentLocation.type = Types::RetrievalResultCustomDocumentLocation
    RetrievalResultGoogleDriveLocation.add_member(:url, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "url"))
    RetrievalResultGoogleDriveLocation.type = Types::RetrievalResultGoogleDriveLocation
    RetrievalResultKendraDocumentLocation.add_member(:uri, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "uri"))
    RetrievalResultKendraDocumentLocation.type = Types::RetrievalResultKendraDocumentLocation
    RetrievalResultLocation.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: RetrievalResultLocationType, name: "type", traits: {"smithy.api#required" => {}}))
    RetrievalResultLocation.add_member(:s3_location, ::Smithy::Schema::Shapes::MemberShape.new(target: RetrievalResultS3Location, name: "s3Location"))
    RetrievalResultLocation.add_member(:web_location, ::Smithy::Schema::Shapes::MemberShape.new(target: RetrievalResultWebLocation, name: "webLocation"))
    RetrievalResultLocation.add_member(:confluence_location, ::Smithy::Schema::Shapes::MemberShape.new(target: RetrievalResultConfluenceLocation, name: "confluenceLocation"))
    RetrievalResultLocation.add_member(:salesforce_location, ::Smithy::Schema::Shapes::MemberShape.new(target: RetrievalResultSalesforceLocation, name: "salesforceLocation"))
    RetrievalResultLocation.add_member(:share_point_location, ::Smithy::Schema::Shapes::MemberShape.new(target: RetrievalResultSharePointLocation, name: "sharePointLocation"))
    RetrievalResultLocation.add_member(:custom_document_location, ::Smithy::Schema::Shapes::MemberShape.new(target: RetrievalResultCustomDocumentLocation, name: "customDocumentLocation"))
    RetrievalResultLocation.add_member(:kendra_document_location, ::Smithy::Schema::Shapes::MemberShape.new(target: RetrievalResultKendraDocumentLocation, name: "kendraDocumentLocation"))
    RetrievalResultLocation.add_member(:sql_location, ::Smithy::Schema::Shapes::MemberShape.new(target: RetrievalResultSqlLocation, name: "sqlLocation"))
    RetrievalResultLocation.add_member(:one_drive_location, ::Smithy::Schema::Shapes::MemberShape.new(target: RetrievalResultOneDriveLocation, name: "oneDriveLocation"))
    RetrievalResultLocation.add_member(:google_drive_location, ::Smithy::Schema::Shapes::MemberShape.new(target: RetrievalResultGoogleDriveLocation, name: "googleDriveLocation"))
    RetrievalResultLocation.type = Types::RetrievalResultLocation
    RetrievalResultLocationType.add_member(:s3, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "S3", traits: {"smithy.api#enumValue" => "S3"}))
    RetrievalResultLocationType.add_member(:web, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WEB", traits: {"smithy.api#enumValue" => "WEB"}))
    RetrievalResultLocationType.add_member(:confluence, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONFLUENCE", traits: {"smithy.api#enumValue" => "CONFLUENCE"}))
    RetrievalResultLocationType.add_member(:salesforce, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SALESFORCE", traits: {"smithy.api#enumValue" => "SALESFORCE"}))
    RetrievalResultLocationType.add_member(:sharepoint, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SHAREPOINT", traits: {"smithy.api#enumValue" => "SHAREPOINT"}))
    RetrievalResultLocationType.add_member(:custom, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CUSTOM", traits: {"smithy.api#enumValue" => "CUSTOM"}))
    RetrievalResultLocationType.add_member(:kendra, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KENDRA", traits: {"smithy.api#enumValue" => "KENDRA"}))
    RetrievalResultLocationType.add_member(:sql, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SQL", traits: {"smithy.api#enumValue" => "SQL"}))
    RetrievalResultLocationType.add_member(:onedrive, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ONEDRIVE", traits: {"smithy.api#enumValue" => "ONEDRIVE"}))
    RetrievalResultLocationType.add_member(:googledrive, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GOOGLEDRIVE", traits: {"smithy.api#enumValue" => "GOOGLEDRIVE"}))
    RetrievalResultMetadata.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: RetrievalResultMetadataKey, name: "key"))
    RetrievalResultMetadata.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: RetrievalResultMetadataValue, name: "value"))
    RetrievalResultOneDriveLocation.add_member(:url, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "url"))
    RetrievalResultOneDriveLocation.type = Types::RetrievalResultOneDriveLocation
    RetrievalResultS3Location.add_member(:uri, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "uri"))
    RetrievalResultS3Location.type = Types::RetrievalResultS3Location
    RetrievalResultSalesforceLocation.add_member(:url, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "url"))
    RetrievalResultSalesforceLocation.type = Types::RetrievalResultSalesforceLocation
    RetrievalResultSharePointLocation.add_member(:url, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "url"))
    RetrievalResultSharePointLocation.type = Types::RetrievalResultSharePointLocation
    RetrievalResultSqlLocation.add_member(:query, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "query"))
    RetrievalResultSqlLocation.type = Types::RetrievalResultSqlLocation
    RetrievalResultWebLocation.add_member(:url, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "url"))
    RetrievalResultWebLocation.type = Types::RetrievalResultWebLocation
    RetrieveAndGenerateConfiguration.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: RetrieveAndGenerateType, name: "type", traits: {"smithy.api#required" => {}}))
    RetrieveAndGenerateConfiguration.add_member(:knowledge_base_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: KnowledgeBaseRetrieveAndGenerateConfiguration, name: "knowledgeBaseConfiguration"))
    RetrieveAndGenerateConfiguration.add_member(:external_sources_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ExternalSourcesRetrieveAndGenerateConfiguration, name: "externalSourcesConfiguration"))
    RetrieveAndGenerateConfiguration.type = Types::RetrieveAndGenerateConfiguration
    RetrieveAndGenerateInput.add_member(:text, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "text", traits: {"smithy.api#length" => {"max" => 1000}, "smithy.api#required" => {}}))
    RetrieveAndGenerateInput.type = Types::RetrieveAndGenerateInput
    RetrieveAndGenerateOutput.add_member(:text, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "text", traits: {"smithy.api#required" => {}}))
    RetrieveAndGenerateOutput.type = Types::RetrieveAndGenerateOutput
    RetrieveAndGenerateOutputEvent.add_member(:text, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "text", traits: {"smithy.api#required" => {}}))
    RetrieveAndGenerateOutputEvent.type = Types::RetrieveAndGenerateOutputEvent
    RetrieveAndGenerateRequest.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionId, name: "sessionId"))
    RetrieveAndGenerateRequest.add_member(:input, ::Smithy::Schema::Shapes::MemberShape.new(target: RetrieveAndGenerateInput, name: "input", traits: {"smithy.api#required" => {}}))
    RetrieveAndGenerateRequest.add_member(:retrieve_and_generate_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: RetrieveAndGenerateConfiguration, name: "retrieveAndGenerateConfiguration"))
    RetrieveAndGenerateRequest.add_member(:session_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: RetrieveAndGenerateSessionConfiguration, name: "sessionConfiguration"))
    RetrieveAndGenerateRequest.add_member(:user_context, ::Smithy::Schema::Shapes::MemberShape.new(target: UserContext, name: "userContext"))
    RetrieveAndGenerateRequest.type = Types::RetrieveAndGenerateRequest
    RetrieveAndGenerateResponse.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionId, name: "sessionId", traits: {"smithy.api#required" => {}}))
    RetrieveAndGenerateResponse.add_member(:output, ::Smithy::Schema::Shapes::MemberShape.new(target: RetrieveAndGenerateOutput, name: "output", traits: {"smithy.api#required" => {}}))
    RetrieveAndGenerateResponse.add_member(:citations, ::Smithy::Schema::Shapes::MemberShape.new(target: Citations, name: "citations"))
    RetrieveAndGenerateResponse.add_member(:guardrail_action, ::Smithy::Schema::Shapes::MemberShape.new(target: GuadrailAction, name: "guardrailAction"))
    RetrieveAndGenerateResponse.type = Types::RetrieveAndGenerateResponse
    RetrieveAndGenerateSessionConfiguration.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyArn, name: "kmsKeyArn", traits: {"smithy.api#required" => {}}))
    RetrieveAndGenerateSessionConfiguration.type = Types::RetrieveAndGenerateSessionConfiguration
    RetrieveAndGenerateStreamRequest.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionId, name: "sessionId"))
    RetrieveAndGenerateStreamRequest.add_member(:input, ::Smithy::Schema::Shapes::MemberShape.new(target: RetrieveAndGenerateInput, name: "input", traits: {"smithy.api#required" => {}}))
    RetrieveAndGenerateStreamRequest.add_member(:retrieve_and_generate_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: RetrieveAndGenerateConfiguration, name: "retrieveAndGenerateConfiguration"))
    RetrieveAndGenerateStreamRequest.add_member(:session_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: RetrieveAndGenerateSessionConfiguration, name: "sessionConfiguration"))
    RetrieveAndGenerateStreamRequest.add_member(:user_context, ::Smithy::Schema::Shapes::MemberShape.new(target: UserContext, name: "userContext"))
    RetrieveAndGenerateStreamRequest.type = Types::RetrieveAndGenerateStreamRequest
    RetrieveAndGenerateStreamResponse.add_member(:stream, ::Smithy::Schema::Shapes::MemberShape.new(target: RetrieveAndGenerateStreamResponseOutput, name: "stream", traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    RetrieveAndGenerateStreamResponse.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionId, name: "sessionId", traits: {"smithy.api#httpHeader" => "x-amzn-bedrock-knowledge-base-session-id", "smithy.api#required" => {}}))
    RetrieveAndGenerateStreamResponse[:http_payload] = :stream
    RetrieveAndGenerateStreamResponse[:http_payload_member] = RetrieveAndGenerateStreamResponse.member(:stream)
    RetrieveAndGenerateStreamResponse.type = Types::RetrieveAndGenerateStreamResponse
    RetrieveAndGenerateStreamResponseOutput.add_member(:output, Types::RetrieveAndGenerateStreamResponseOutput::Output, ::Smithy::Schema::Shapes::MemberShape.new(target: RetrieveAndGenerateOutputEvent, name: "output"))
    RetrieveAndGenerateStreamResponseOutput.add_member(:citation, Types::RetrieveAndGenerateStreamResponseOutput::Citation, ::Smithy::Schema::Shapes::MemberShape.new(target: CitationEvent, name: "citation"))
    RetrieveAndGenerateStreamResponseOutput.add_member(:guardrail, Types::RetrieveAndGenerateStreamResponseOutput::Guardrail, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailEvent, name: "guardrail"))
    RetrieveAndGenerateStreamResponseOutput.add_member(:internal_server_exception, Types::RetrieveAndGenerateStreamResponseOutput::InternalServerException, ::Smithy::Schema::Shapes::MemberShape.new(target: InternalServerException, name: "internalServerException"))
    RetrieveAndGenerateStreamResponseOutput.add_member(:validation_exception, Types::RetrieveAndGenerateStreamResponseOutput::ValidationException, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationException, name: "validationException"))
    RetrieveAndGenerateStreamResponseOutput.add_member(:resource_not_found_exception, Types::RetrieveAndGenerateStreamResponseOutput::ResourceNotFoundException, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceNotFoundException, name: "resourceNotFoundException"))
    RetrieveAndGenerateStreamResponseOutput.add_member(:service_quota_exceeded_exception, Types::RetrieveAndGenerateStreamResponseOutput::ServiceQuotaExceededException, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceQuotaExceededException, name: "serviceQuotaExceededException"))
    RetrieveAndGenerateStreamResponseOutput.add_member(:throttling_exception, Types::RetrieveAndGenerateStreamResponseOutput::ThrottlingException, ::Smithy::Schema::Shapes::MemberShape.new(target: ThrottlingException, name: "throttlingException"))
    RetrieveAndGenerateStreamResponseOutput.add_member(:access_denied_exception, Types::RetrieveAndGenerateStreamResponseOutput::AccessDeniedException, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessDeniedException, name: "accessDeniedException"))
    RetrieveAndGenerateStreamResponseOutput.add_member(:conflict_exception, Types::RetrieveAndGenerateStreamResponseOutput::ConflictException, ::Smithy::Schema::Shapes::MemberShape.new(target: ConflictException, name: "conflictException"))
    RetrieveAndGenerateStreamResponseOutput.add_member(:dependency_failed_exception, Types::RetrieveAndGenerateStreamResponseOutput::DependencyFailedException, ::Smithy::Schema::Shapes::MemberShape.new(target: DependencyFailedException, name: "dependencyFailedException"))
    RetrieveAndGenerateStreamResponseOutput.add_member(:bad_gateway_exception, Types::RetrieveAndGenerateStreamResponseOutput::BadGatewayException, ::Smithy::Schema::Shapes::MemberShape.new(target: BadGatewayException, name: "badGatewayException"))
    RetrieveAndGenerateStreamResponseOutput.add_member(:unknown, Types::RetrieveAndGenerateStreamResponseOutput::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    RetrieveAndGenerateStreamResponseOutput.type = Types::RetrieveAndGenerateStreamResponseOutput
    RetrieveAndGenerateType.add_member(:knowledge_base, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KNOWLEDGE_BASE", traits: {"smithy.api#enumValue" => "KNOWLEDGE_BASE"}))
    RetrieveAndGenerateType.add_member(:external_sources, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EXTERNAL_SOURCES", traits: {"smithy.api#enumValue" => "EXTERNAL_SOURCES"}))
    RetrieveRequest.add_member(:knowledge_base_id, ::Smithy::Schema::Shapes::MemberShape.new(target: KnowledgeBaseIdentifier, name: "knowledgeBaseId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RetrieveRequest.add_member(:retrieval_query, ::Smithy::Schema::Shapes::MemberShape.new(target: KnowledgeBaseQuery, name: "retrievalQuery", traits: {"smithy.api#required" => {}}))
    RetrieveRequest.add_member(:retrieval_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: KnowledgeBaseRetrievalConfiguration, name: "retrievalConfiguration"))
    RetrieveRequest.add_member(:guardrail_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailConfiguration, name: "guardrailConfiguration"))
    RetrieveRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    RetrieveRequest.add_member(:user_context, ::Smithy::Schema::Shapes::MemberShape.new(target: UserContext, name: "userContext"))
    RetrieveRequest.type = Types::RetrieveRequest
    RetrieveResponse.add_member(:retrieval_results, ::Smithy::Schema::Shapes::MemberShape.new(target: KnowledgeBaseRetrievalResults, name: "retrievalResults", traits: {"smithy.api#required" => {}}))
    RetrieveResponse.add_member(:guardrail_action, ::Smithy::Schema::Shapes::MemberShape.new(target: GuadrailAction, name: "guardrailAction"))
    RetrieveResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    RetrieveResponse.type = Types::RetrieveResponse
    RetrievedReference.add_member(:content, ::Smithy::Schema::Shapes::MemberShape.new(target: RetrievalResultContent, name: "content"))
    RetrievedReference.add_member(:location, ::Smithy::Schema::Shapes::MemberShape.new(target: RetrievalResultLocation, name: "location"))
    RetrievedReference.add_member(:metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: RetrievalResultMetadata, name: "metadata"))
    RetrievedReference.type = Types::RetrievedReference
    RetrievedReferences.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RetrievedReference, name: "member"))
    RetrieverConfiguration.add_member(:knowledge_base, Types::RetrieverConfiguration::KnowledgeBase, ::Smithy::Schema::Shapes::MemberShape.new(target: KnowledgeBaseRetrieverConfiguration, name: "knowledgeBase"))
    RetrieverConfiguration.add_member(:unknown, Types::RetrieverConfiguration::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    RetrieverConfiguration.type = Types::RetrieverConfiguration
    ReturnControlInvocationResults.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: InvocationResultMember, name: "member"))
    ReturnControlPayload.add_member(:invocation_inputs, ::Smithy::Schema::Shapes::MemberShape.new(target: InvocationInputs, name: "invocationInputs"))
    ReturnControlPayload.add_member(:invocation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "invocationId"))
    ReturnControlPayload.type = Types::ReturnControlPayload
    ReturnControlResults.add_member(:invocation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "invocationId"))
    ReturnControlResults.add_member(:return_control_invocation_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ReturnControlInvocationResults, name: "returnControlInvocationResults"))
    ReturnControlResults.type = Types::ReturnControlResults
    RoutingClassifierModelInvocationOutput.add_member(:trace_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TraceId, name: "traceId"))
    RoutingClassifierModelInvocationOutput.add_member(:raw_response, ::Smithy::Schema::Shapes::MemberShape.new(target: RawResponse, name: "rawResponse"))
    RoutingClassifierModelInvocationOutput.add_member(:metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: Metadata, name: "metadata"))
    RoutingClassifierModelInvocationOutput.type = Types::RoutingClassifierModelInvocationOutput
    RoutingClassifierTrace.add_member(:invocation_input, Types::RoutingClassifierTrace::InvocationInput, ::Smithy::Schema::Shapes::MemberShape.new(target: InvocationInput, name: "invocationInput"))
    RoutingClassifierTrace.add_member(:observation, Types::RoutingClassifierTrace::Observation, ::Smithy::Schema::Shapes::MemberShape.new(target: Observation, name: "observation"))
    RoutingClassifierTrace.add_member(:model_invocation_input, Types::RoutingClassifierTrace::ModelInvocationInput, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelInvocationInput, name: "modelInvocationInput"))
    RoutingClassifierTrace.add_member(:model_invocation_output, Types::RoutingClassifierTrace::ModelInvocationOutput, ::Smithy::Schema::Shapes::MemberShape.new(target: RoutingClassifierModelInvocationOutput, name: "modelInvocationOutput"))
    RoutingClassifierTrace.add_member(:unknown, Types::RoutingClassifierTrace::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    RoutingClassifierTrace.type = Types::RoutingClassifierTrace
    S3Identifier.add_member(:s3_bucket_name, ::Smithy::Schema::Shapes::MemberShape.new(target: S3BucketName, name: "s3BucketName"))
    S3Identifier.add_member(:s3_object_key, ::Smithy::Schema::Shapes::MemberShape.new(target: S3ObjectKey, name: "s3ObjectKey"))
    S3Identifier.type = Types::S3Identifier
    S3Location.add_member(:uri, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Uri, name: "uri", traits: {"smithy.api#required" => {}}))
    S3Location.type = Types::S3Location
    S3ObjectDoc.add_member(:uri, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Uri, name: "uri", traits: {"smithy.api#required" => {}}))
    S3ObjectDoc.type = Types::S3ObjectDoc
    S3ObjectFile.add_member(:uri, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Uri, name: "uri", traits: {"smithy.api#required" => {}}))
    S3ObjectFile.type = Types::S3ObjectFile
    SatisfiedCondition.add_member(:condition_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "conditionName", traits: {"smithy.api#required" => {}}))
    SatisfiedCondition.type = Types::SatisfiedCondition
    SatisfiedConditions.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SatisfiedCondition, name: "member"))
    SearchType.add_member(:hybrid, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HYBRID", traits: {"smithy.api#enumValue" => "HYBRID"}))
    SearchType.add_member(:semantic, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SEMANTIC", traits: {"smithy.api#enumValue" => "SEMANTIC"}))
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: NonBlankString, name: "message"))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    SessionAttributesMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "key"))
    SessionAttributesMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "value"))
    SessionMetadataMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionMetadataKey, name: "key"))
    SessionMetadataMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionMetadataValue, name: "value"))
    SessionState.add_member(:session_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionAttributesMap, name: "sessionAttributes"))
    SessionState.add_member(:prompt_session_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: PromptSessionAttributesMap, name: "promptSessionAttributes"))
    SessionState.add_member(:return_control_invocation_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ReturnControlInvocationResults, name: "returnControlInvocationResults"))
    SessionState.add_member(:invocation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "invocationId"))
    SessionState.add_member(:files, ::Smithy::Schema::Shapes::MemberShape.new(target: InputFiles, name: "files"))
    SessionState.add_member(:knowledge_base_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: KnowledgeBaseConfigurations, name: "knowledgeBaseConfigurations"))
    SessionState.add_member(:conversation_history, ::Smithy::Schema::Shapes::MemberShape.new(target: ConversationHistory, name: "conversationHistory"))
    SessionState.type = Types::SessionState
    SessionStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    SessionStatus.add_member(:expired, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EXPIRED", traits: {"smithy.api#enumValue" => "EXPIRED"}))
    SessionStatus.add_member(:ended, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENDED", traits: {"smithy.api#enumValue" => "ENDED"}))
    SessionSummaries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionSummary, name: "member"))
    SessionSummary.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "sessionId", traits: {"smithy.api#required" => {}}))
    SessionSummary.add_member(:session_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionArn, name: "sessionArn", traits: {"smithy.api#required" => {}}))
    SessionSummary.add_member(:session_status, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionStatus, name: "sessionStatus", traits: {"smithy.api#required" => {}}))
    SessionSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimestamp, name: "createdAt", traits: {"smithy.api#required" => {}}))
    SessionSummary.add_member(:last_updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimestamp, name: "lastUpdatedAt", traits: {"smithy.api#required" => {}}))
    SessionSummary.type = Types::SessionSummary
    Source.add_member(:action_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTION_GROUP", traits: {"smithy.api#enumValue" => "ACTION_GROUP"}))
    Source.add_member(:knowledge_base, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KNOWLEDGE_BASE", traits: {"smithy.api#enumValue" => "KNOWLEDGE_BASE"}))
    Source.add_member(:parser, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PARSER", traits: {"smithy.api#enumValue" => "PARSER"}))
    Span.add_member(:start, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "start", traits: {"smithy.api#range" => {"min" => 0}}))
    Span.add_member(:end, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "end", traits: {"smithy.api#range" => {"min" => 0}}))
    Span.type = Types::Span
    StartFlowExecutionRequest.add_member(:flow_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowIdentifier, name: "flowIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartFlowExecutionRequest.add_member(:flow_alias_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowAliasIdentifier, name: "flowAliasIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartFlowExecutionRequest.add_member(:flow_execution_name, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowExecutionName, name: "flowExecutionName"))
    StartFlowExecutionRequest.add_member(:inputs, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowInputs, name: "inputs", traits: {"smithy.api#required" => {}}))
    StartFlowExecutionRequest.add_member(:model_performance_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelPerformanceConfiguration, name: "modelPerformanceConfiguration"))
    StartFlowExecutionRequest.type = Types::StartFlowExecutionRequest
    StartFlowExecutionResponse.add_member(:execution_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowExecutionIdentifier, name: "executionArn"))
    StartFlowExecutionResponse.type = Types::StartFlowExecutionResponse
    StopFlowExecutionRequest.add_member(:flow_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowIdentifier, name: "flowIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StopFlowExecutionRequest.add_member(:flow_alias_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowAliasIdentifier, name: "flowAliasIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StopFlowExecutionRequest.add_member(:execution_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowExecutionIdentifier, name: "executionIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StopFlowExecutionRequest.type = Types::StopFlowExecutionRequest
    StopFlowExecutionResponse.add_member(:execution_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowExecutionIdentifier, name: "executionArn"))
    StopFlowExecutionResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowExecutionStatus, name: "status", traits: {"smithy.api#required" => {}}))
    StopFlowExecutionResponse.type = Types::StopFlowExecutionResponse
    StopSequences.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "member"))
    StreamingConfigurations.add_member(:stream_final_response, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "streamFinalResponse", traits: {"smithy.api#default" => false}))
    StreamingConfigurations.add_member(:apply_guardrail_interval, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "applyGuardrailInterval", traits: {"smithy.api#range" => {"min" => 1}}))
    StreamingConfigurations.type = Types::StreamingConfigurations
    TagKeyList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "member"))
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TaggableResourcesArn, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, name: "tags", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    TagsMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "key"))
    TagsMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "value"))
    TextInferenceConfig.add_member(:temperature, ::Smithy::Schema::Shapes::MemberShape.new(target: Temperature, name: "temperature"))
    TextInferenceConfig.add_member(:top_p, ::Smithy::Schema::Shapes::MemberShape.new(target: TopP, name: "topP"))
    TextInferenceConfig.add_member(:max_tokens, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxTokens, name: "maxTokens"))
    TextInferenceConfig.add_member(:stop_sequences, ::Smithy::Schema::Shapes::MemberShape.new(target: RAGStopSequences, name: "stopSequences"))
    TextInferenceConfig.type = Types::TextInferenceConfig
    TextPrompt.add_member(:text, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "text", traits: {"smithy.api#length" => {"min" => 1, "max" => 200000}, "smithy.api#required" => {}}))
    TextPrompt.type = Types::TextPrompt
    TextResponsePart.add_member(:text, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "text"))
    TextResponsePart.add_member(:span, ::Smithy::Schema::Shapes::MemberShape.new(target: Span, name: "span"))
    TextResponsePart.type = Types::TextResponsePart
    TextToSqlConfiguration.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: TextToSqlConfigurationType, name: "type", traits: {"smithy.api#required" => {}}))
    TextToSqlConfiguration.add_member(:knowledge_base_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: TextToSqlKnowledgeBaseConfiguration, name: "knowledgeBaseConfiguration"))
    TextToSqlConfiguration.type = Types::TextToSqlConfiguration
    TextToSqlConfigurationType.add_member(:knowledge_base, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KNOWLEDGE_BASE", traits: {"smithy.api#enumValue" => "KNOWLEDGE_BASE"}))
    TextToSqlKnowledgeBaseConfiguration.add_member(:knowledge_base_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: KnowledgeBaseArn, name: "knowledgeBaseArn", traits: {"smithy.api#required" => {}}))
    TextToSqlKnowledgeBaseConfiguration.type = Types::TextToSqlKnowledgeBaseConfiguration
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: NonBlankString, name: "message"))
    ThrottlingException.type = Types::ThrottlingException
    Trace.add_member(:guardrail_trace, Types::Trace::GuardrailTrace, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailTrace, name: "guardrailTrace"))
    Trace.add_member(:pre_processing_trace, Types::Trace::PreProcessingTrace, ::Smithy::Schema::Shapes::MemberShape.new(target: PreProcessingTrace, name: "preProcessingTrace"))
    Trace.add_member(:orchestration_trace, Types::Trace::OrchestrationTrace, ::Smithy::Schema::Shapes::MemberShape.new(target: OrchestrationTrace, name: "orchestrationTrace"))
    Trace.add_member(:post_processing_trace, Types::Trace::PostProcessingTrace, ::Smithy::Schema::Shapes::MemberShape.new(target: PostProcessingTrace, name: "postProcessingTrace"))
    Trace.add_member(:routing_classifier_trace, Types::Trace::RoutingClassifierTrace, ::Smithy::Schema::Shapes::MemberShape.new(target: RoutingClassifierTrace, name: "routingClassifierTrace"))
    Trace.add_member(:failure_trace, Types::Trace::FailureTrace, ::Smithy::Schema::Shapes::MemberShape.new(target: FailureTrace, name: "failureTrace"))
    Trace.add_member(:custom_orchestration_trace, Types::Trace::CustomOrchestrationTrace, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomOrchestrationTrace, name: "customOrchestrationTrace"))
    Trace.add_member(:unknown, Types::Trace::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    Trace.type = Types::Trace
    TraceElements.add_member(:agent_traces, Types::TraceElements::AgentTraces, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentTraces, name: "agentTraces"))
    TraceElements.add_member(:unknown, Types::TraceElements::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    TraceElements.type = Types::TraceElements
    TracePart.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionId, name: "sessionId"))
    TracePart.add_member(:trace, ::Smithy::Schema::Shapes::MemberShape.new(target: Trace, name: "trace"))
    TracePart.add_member(:caller_chain, ::Smithy::Schema::Shapes::MemberShape.new(target: CallerChain, name: "callerChain"))
    TracePart.add_member(:event_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimestamp, name: "eventTime", traits: {"smithy.api#timestampFormat" => "date-time"}))
    TracePart.add_member(:collaborator_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "collaboratorName"))
    TracePart.add_member(:agent_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentId, name: "agentId"))
    TracePart.add_member(:agent_alias_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentAliasId, name: "agentAliasId"))
    TracePart.add_member(:agent_version, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentVersion, name: "agentVersion"))
    TracePart.type = Types::TracePart
    TransformationConfiguration.add_member(:mode, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryTransformationMode, name: "mode", traits: {"smithy.api#required" => {}}))
    TransformationConfiguration.add_member(:text_to_sql_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: TextToSqlConfiguration, name: "textToSqlConfiguration"))
    TransformationConfiguration.type = Types::TransformationConfiguration
    Type.add_member(:action_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTION_GROUP", traits: {"smithy.api#enumValue" => "ACTION_GROUP"}))
    Type.add_member(:agent_collaborator, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AGENT_COLLABORATOR", traits: {"smithy.api#enumValue" => "AGENT_COLLABORATOR"}))
    Type.add_member(:knowledge_base, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KNOWLEDGE_BASE", traits: {"smithy.api#enumValue" => "KNOWLEDGE_BASE"}))
    Type.add_member(:finish, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FINISH", traits: {"smithy.api#enumValue" => "FINISH"}))
    Type.add_member(:ask_user, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ASK_USER", traits: {"smithy.api#enumValue" => "ASK_USER"}))
    Type.add_member(:reprompt, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REPROMPT", traits: {"smithy.api#enumValue" => "REPROMPT"}))
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TaggableResourcesArn, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, name: "tagKeys", traits: {"smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateSessionRequest.add_member(:session_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionMetadataMap, name: "sessionMetadata"))
    UpdateSessionRequest.add_member(:session_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionIdentifier, name: "sessionIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateSessionRequest.type = Types::UpdateSessionRequest
    UpdateSessionResponse.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "sessionId", traits: {"smithy.api#required" => {}}))
    UpdateSessionResponse.add_member(:session_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionArn, name: "sessionArn", traits: {"smithy.api#required" => {}}))
    UpdateSessionResponse.add_member(:session_status, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionStatus, name: "sessionStatus", traits: {"smithy.api#required" => {}}))
    UpdateSessionResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimestamp, name: "createdAt", traits: {"smithy.api#required" => {}}))
    UpdateSessionResponse.add_member(:last_updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimestamp, name: "lastUpdatedAt", traits: {"smithy.api#required" => {}}))
    UpdateSessionResponse.type = Types::UpdateSessionResponse
    Usage.add_member(:input_tokens, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "inputTokens"))
    Usage.add_member(:output_tokens, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "outputTokens"))
    Usage.type = Types::Usage
    UserContext.add_member(:user_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "userId", traits: {"smithy.api#required" => {}}))
    UserContext.type = Types::UserContext
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: NonBlankString, name: "message"))
    ValidationException.type = Types::ValidationException
    VectorSearchBedrockRerankingConfiguration.add_member(:model_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: VectorSearchBedrockRerankingModelConfiguration, name: "modelConfiguration", traits: {"smithy.api#required" => {}}))
    VectorSearchBedrockRerankingConfiguration.add_member(:number_of_reranked_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "numberOfRerankedResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}}))
    VectorSearchBedrockRerankingConfiguration.add_member(:metadata_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: MetadataConfigurationForReranking, name: "metadataConfiguration"))
    VectorSearchBedrockRerankingConfiguration.type = Types::VectorSearchBedrockRerankingConfiguration
    VectorSearchBedrockRerankingModelConfiguration.add_member(:model_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: BedrockRerankingModelArn, name: "modelArn", traits: {"smithy.api#required" => {}}))
    VectorSearchBedrockRerankingModelConfiguration.add_member(:additional_model_request_fields, ::Smithy::Schema::Shapes::MemberShape.new(target: AdditionalModelRequestFields, name: "additionalModelRequestFields"))
    VectorSearchBedrockRerankingModelConfiguration.type = Types::VectorSearchBedrockRerankingModelConfiguration
    VectorSearchRerankingConfiguration.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: VectorSearchRerankingConfigurationType, name: "type", traits: {"smithy.api#required" => {}}))
    VectorSearchRerankingConfiguration.add_member(:bedrock_reranking_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: VectorSearchBedrockRerankingConfiguration, name: "bedrockRerankingConfiguration"))
    VectorSearchRerankingConfiguration.type = Types::VectorSearchRerankingConfiguration
    VectorSearchRerankingConfigurationType.add_member(:bedrock_reranking_model, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BEDROCK_RERANKING_MODEL", traits: {"smithy.api#enumValue" => "BEDROCK_RERANKING_MODEL"}))
    VideoSegment.add_member(:s3_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "s3Uri", traits: {"smithy.api#length" => {"min" => 1}, "smithy.api#required" => {}}))
    VideoSegment.add_member(:summary, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "summary"))
    VideoSegment.type = Types::VideoSegment

    AmazonBedrockAgentRunTimeService = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.bedrockagentruntime#AmazonBedrockAgentRunTimeService"
      service.name = "AmazonBedrockAgentRunTimeService"
      service.version = "2023-07-26"
      service.traits = {"aws.api#service" => {"sdkId" => "Bedrock Agent Runtime", "arnNamespace" => "bedrock", "endpointPrefix" => "bedrock-agent-runtime", "cloudTrailEventSource" => "bedrock.amazonaws.com"}, "aws.auth#sigv4" => {"name" => "bedrock"}, "aws.protocols#restJson1" => {"http" => ["h2", "http/1.1"], "eventStreamHttp" => ["h2", "http/1.1"]}, "smithy.api#title" => "Agents for Amazon Bedrock Runtime", "smithy.rules#endpointBdd" => {"version" => "1.1", "parameters" => {"Region" => {"builtIn" => "AWS::Region", "required" => false, "documentation" => "The AWS region used to dispatch the request.", "type" => "string"}, "UseDualStack" => {"builtIn" => "AWS::UseDualStack", "required" => true, "default" => false, "documentation" => "When true, use the dual-stack endpoint. If the configured endpoint does not support dual-stack, dispatching the request MAY return an error.", "type" => "boolean"}, "UseFIPS" => {"builtIn" => "AWS::UseFIPS", "required" => true, "default" => false, "documentation" => "When true, send this request to the FIPS-compliant regional endpoint. If the configured endpoint does not have a FIPS compliant endpoint, dispatching the request will return an error.", "type" => "boolean"}, "Endpoint" => {"builtIn" => "SDK::Endpoint", "required" => false, "documentation" => "Override the endpoint used to send this request", "type" => "string"}}, "conditions" => [{"fn" => "isSet", "argv" => [{"ref" => "Endpoint"}]}, {"fn" => "isSet", "argv" => [{"ref" => "Region"}]}, {"fn" => "aws.partition", "argv" => [{"ref" => "Region"}], "assign" => "PartitionResult"}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseFIPS"}, true]}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseDualStack"}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsDualStack"]}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsFIPS"]}, true]}], "results" => [{"conditions" => [], "error" => "Invalid Configuration: FIPS and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "error" => "Invalid Configuration: Dualstack and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => {"ref" => "Endpoint"}, "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://bedrock-agent-runtime-fips.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS and DualStack are enabled, but this partition does not support one or both", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://bedrock-agent-runtime-fips.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS is enabled but this partition does not support FIPS", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://bedrock-agent-runtime.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "DualStack is enabled but this partition does not support DualStack", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://bedrock-agent-runtime.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "Invalid Configuration: Missing Region", "type" => "error"}], "root" => 2, "nodeCount" => 13, "nodes" => "/////wAAAAH/////AAAAAAAAAAwAAAADAAAAAQAAAAQF9eELAAAAAgAAAAUF9eELAAAAAwAAAAgAAAAGAAAABAAAAAcF9eEKAAAABQX14QgF9eEJAAAABAAAAAoAAAAJAAAABgX14QYF9eEHAAAABQAAAAsF9eEFAAAABgX14QQF9eEFAAAAAwX14QEAAAANAAAABAX14QIF9eED"}}
      service.add_operation(:agentic_retrieve_stream, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentruntime#AgenticRetrieveStream"
        operation.name = "AgenticRetrieveStream"
        operation.input = AgenticRetrieveStreamRequest
        operation.output = AgenticRetrieveStreamResponse
        operation.errors << AccessDeniedException
        operation.errors << BadGatewayException
        operation.errors << ConflictException
        operation.errors << DependencyFailedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/agenticRetrieveStream"}}
      end)
      service.add_operation(:check_ingested_document_acl, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentruntime#CheckIngestedDocumentAcl"
        operation.name = "CheckIngestedDocumentAcl"
        operation.input = CheckIngestedDocumentAclRequest
        operation.output = CheckIngestedDocumentAclResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/knowledgebases/{knowledgeBaseId}/datasources/{dataSourceId}/check-ingested-document-acl"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:create_invocation, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentruntime#CreateInvocation"
        operation.name = "CreateInvocation"
        operation.input = CreateInvocationRequest
        operation.output = CreateInvocationResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 201, "method" => "PUT", "uri" => "/sessions/{sessionIdentifier}/invocations/"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_session, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentruntime#CreateSession"
        operation.name = "CreateSession"
        operation.input = CreateSessionRequest
        operation.output = CreateSessionResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 201, "method" => "PUT", "uri" => "/sessions/"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_agent_memory, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentruntime#DeleteAgentMemory"
        operation.name = "DeleteAgentMemory"
        operation.input = DeleteAgentMemoryRequest
        operation.output = DeleteAgentMemoryResponse
        operation.errors << AccessDeniedException
        operation.errors << BadGatewayException
        operation.errors << ConflictException
        operation.errors << DependencyFailedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 202, "method" => "DELETE", "uri" => "/agents/{agentId}/agentAliases/{agentAliasId}/memories"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_session, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentruntime#DeleteSession"
        operation.name = "DeleteSession"
        operation.input = DeleteSessionRequest
        operation.output = DeleteSessionResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "DELETE", "uri" => "/sessions/{sessionIdentifier}/"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:end_session, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentruntime#EndSession"
        operation.name = "EndSession"
        operation.input = EndSessionRequest
        operation.output = EndSessionResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "PATCH", "uri" => "/sessions/{sessionIdentifier}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:generate_query, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentruntime#GenerateQuery"
        operation.name = "GenerateQuery"
        operation.input = GenerateQueryRequest
        operation.output = GenerateQueryResponse
        operation.errors << AccessDeniedException
        operation.errors << BadGatewayException
        operation.errors << ConflictException
        operation.errors << DependencyFailedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/generateQuery"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_agent_memory, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentruntime#GetAgentMemory"
        operation.name = "GetAgentMemory"
        operation.input = GetAgentMemoryRequest
        operation.output = GetAgentMemoryResponse
        operation.errors << AccessDeniedException
        operation.errors << BadGatewayException
        operation.errors << ConflictException
        operation.errors << DependencyFailedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/agents/{agentId}/agentAliases/{agentAliasId}/memories"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::GetAgentMemory.new
      end)
      service.add_operation(:get_document_content, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentruntime#GetDocumentContent"
        operation.name = "GetDocumentContent"
        operation.input = GetDocumentContentRequest
        operation.output = GetDocumentContentResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/knowledgebases/{knowledgeBaseId}/datasources/{dataSourceId}/documents/{documentId}/content"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_execution_flow_snapshot, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentruntime#GetExecutionFlowSnapshot"
        operation.name = "GetExecutionFlowSnapshot"
        operation.input = GetExecutionFlowSnapshotRequest
        operation.output = GetExecutionFlowSnapshotResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/flows/{flowIdentifier}/aliases/{flowAliasIdentifier}/executions/{executionIdentifier}/flowsnapshot"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_flow_execution, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentruntime#GetFlowExecution"
        operation.name = "GetFlowExecution"
        operation.input = GetFlowExecutionRequest
        operation.output = GetFlowExecutionResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/flows/{flowIdentifier}/aliases/{flowAliasIdentifier}/executions/{executionIdentifier}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_ingested_document_acl, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentruntime#GetIngestedDocumentAcl"
        operation.name = "GetIngestedDocumentAcl"
        operation.input = GetIngestedDocumentAclRequest
        operation.output = GetIngestedDocumentAclResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/knowledgebases/{knowledgeBaseId}/datasources/{dataSourceId}/get-ingested-document-acl"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_invocation_step, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentruntime#GetInvocationStep"
        operation.name = "GetInvocationStep"
        operation.input = GetInvocationStepRequest
        operation.output = GetInvocationStepResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/sessions/{sessionIdentifier}/invocationSteps/{invocationStepId}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_session, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentruntime#GetSession"
        operation.name = "GetSession"
        operation.input = GetSessionRequest
        operation.output = GetSessionResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/sessions/{sessionIdentifier}/"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:invoke_agent, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentruntime#InvokeAgent"
        operation.name = "InvokeAgent"
        operation.input = InvokeAgentRequest
        operation.output = InvokeAgentResponse
        operation.errors << AccessDeniedException
        operation.errors << BadGatewayException
        operation.errors << ConflictException
        operation.errors << DependencyFailedException
        operation.errors << InternalServerException
        operation.errors << ModelNotReadyException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/agents/{agentId}/agentAliases/{agentAliasId}/sessions/{sessionId}/text"}}
      end)
      service.add_operation(:invoke_flow, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentruntime#InvokeFlow"
        operation.name = "InvokeFlow"
        operation.input = InvokeFlowRequest
        operation.output = InvokeFlowResponse
        operation.errors << AccessDeniedException
        operation.errors << BadGatewayException
        operation.errors << ConflictException
        operation.errors << DependencyFailedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/flows/{flowIdentifier}/aliases/{flowAliasIdentifier}"}}
      end)
      service.add_operation(:invoke_inline_agent, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentruntime#InvokeInlineAgent"
        operation.name = "InvokeInlineAgent"
        operation.input = InvokeInlineAgentRequest
        operation.output = InvokeInlineAgentResponse
        operation.errors << AccessDeniedException
        operation.errors << BadGatewayException
        operation.errors << ConflictException
        operation.errors << DependencyFailedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/agents/{sessionId}"}}
      end)
      service.add_operation(:list_flow_execution_events, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentruntime#ListFlowExecutionEvents"
        operation.name = "ListFlowExecutionEvents"
        operation.input = ListFlowExecutionEventsRequest
        operation.output = ListFlowExecutionEventsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/flows/{flowIdentifier}/aliases/{flowAliasIdentifier}/executions/{executionIdentifier}/events"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListFlowExecutionEvents.new
      end)
      service.add_operation(:list_flow_executions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentruntime#ListFlowExecutions"
        operation.name = "ListFlowExecutions"
        operation.input = ListFlowExecutionsRequest
        operation.output = ListFlowExecutionsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/flows/{flowIdentifier}/executions"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListFlowExecutions.new
      end)
      service.add_operation(:list_invocation_steps, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentruntime#ListInvocationSteps"
        operation.name = "ListInvocationSteps"
        operation.input = ListInvocationStepsRequest
        operation.output = ListInvocationStepsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/sessions/{sessionIdentifier}/invocationSteps/"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListInvocationSteps.new
      end)
      service.add_operation(:list_invocations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentruntime#ListInvocations"
        operation.name = "ListInvocations"
        operation.input = ListInvocationsRequest
        operation.output = ListInvocationsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/sessions/{sessionIdentifier}/invocations/"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListInvocations.new
      end)
      service.add_operation(:list_sessions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentruntime#ListSessions"
        operation.name = "ListSessions"
        operation.input = ListSessionsRequest
        operation.output = ListSessionsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/sessions/"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListSessions.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentruntime#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceRequest
        operation.output = ListTagsForResourceResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/tags/{resourceArn}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:optimize_prompt, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentruntime#OptimizePrompt"
        operation.name = "OptimizePrompt"
        operation.input = OptimizePromptRequest
        operation.output = OptimizePromptResponse
        operation.errors << AccessDeniedException
        operation.errors << BadGatewayException
        operation.errors << DependencyFailedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/optimize-prompt"}}
      end)
      service.add_operation(:put_invocation_step, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentruntime#PutInvocationStep"
        operation.name = "PutInvocationStep"
        operation.input = PutInvocationStepRequest
        operation.output = PutInvocationStepResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 201, "method" => "PUT", "uri" => "/sessions/{sessionIdentifier}/invocationSteps/"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:rerank, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentruntime#Rerank"
        operation.name = "Rerank"
        operation.input = RerankRequest
        operation.output = RerankResponse
        operation.errors << AccessDeniedException
        operation.errors << BadGatewayException
        operation.errors << ConflictException
        operation.errors << DependencyFailedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/rerank"}}
        operation[:paginator] = Paginators::Rerank.new
      end)
      service.add_operation(:retrieve, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentruntime#Retrieve"
        operation.name = "Retrieve"
        operation.input = RetrieveRequest
        operation.output = RetrieveResponse
        operation.errors << AccessDeniedException
        operation.errors << BadGatewayException
        operation.errors << ConflictException
        operation.errors << DependencyFailedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/knowledgebases/{knowledgeBaseId}/retrieve"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::Retrieve.new
      end)
      service.add_operation(:retrieve_and_generate, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentruntime#RetrieveAndGenerate"
        operation.name = "RetrieveAndGenerate"
        operation.input = RetrieveAndGenerateRequest
        operation.output = RetrieveAndGenerateResponse
        operation.errors << AccessDeniedException
        operation.errors << BadGatewayException
        operation.errors << ConflictException
        operation.errors << DependencyFailedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/retrieveAndGenerate"}}
      end)
      service.add_operation(:retrieve_and_generate_stream, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentruntime#RetrieveAndGenerateStream"
        operation.name = "RetrieveAndGenerateStream"
        operation.input = RetrieveAndGenerateStreamRequest
        operation.output = RetrieveAndGenerateStreamResponse
        operation.errors << AccessDeniedException
        operation.errors << BadGatewayException
        operation.errors << ConflictException
        operation.errors << DependencyFailedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/retrieveAndGenerateStream"}}
      end)
      service.add_operation(:start_flow_execution, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentruntime#StartFlowExecution"
        operation.name = "StartFlowExecution"
        operation.input = StartFlowExecutionRequest
        operation.output = StartFlowExecutionResponse
        operation.errors << AccessDeniedException
        operation.errors << BadGatewayException
        operation.errors << ConflictException
        operation.errors << DependencyFailedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/flows/{flowIdentifier}/aliases/{flowAliasIdentifier}/executions"}}
      end)
      service.add_operation(:stop_flow_execution, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentruntime#StopFlowExecution"
        operation.name = "StopFlowExecution"
        operation.input = StopFlowExecutionRequest
        operation.output = StopFlowExecutionResponse
        operation.errors << AccessDeniedException
        operation.errors << BadGatewayException
        operation.errors << ConflictException
        operation.errors << DependencyFailedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/flows/{flowIdentifier}/aliases/{flowAliasIdentifier}/executions/{executionIdentifier}/stop"}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentruntime#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceRequest
        operation.output = TagResourceResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/tags/{resourceArn}"}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentruntime#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceRequest
        operation.output = UntagResourceResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "DELETE", "uri" => "/tags/{resourceArn}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_session, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentruntime#UpdateSession"
        operation.name = "UpdateSession"
        operation.input = UpdateSessionRequest
        operation.output = UpdateSessionResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "PUT", "uri" => "/sessions/{sessionIdentifier}/"}, "smithy.api#idempotent" => {}}
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
