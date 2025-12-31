# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::BedrockAgentRuntime
  # @api private
  module ClientApi

    include Seahorse::Model

    APISchema = Shapes::UnionShape.new(name: 'APISchema')
    AWSResourceARN = Shapes::StringShape.new(name: 'AWSResourceARN')
    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    ActionGroupExecutor = Shapes::UnionShape.new(name: 'ActionGroupExecutor')
    ActionGroupInvocationInput = Shapes::StructureShape.new(name: 'ActionGroupInvocationInput')
    ActionGroupInvocationOutput = Shapes::StructureShape.new(name: 'ActionGroupInvocationOutput')
    ActionGroupName = Shapes::StringShape.new(name: 'ActionGroupName')
    ActionGroupOutputString = Shapes::StringShape.new(name: 'ActionGroupOutputString')
    ActionGroupSignature = Shapes::StringShape.new(name: 'ActionGroupSignature')
    ActionGroupSignatureParams = Shapes::MapShape.new(name: 'ActionGroupSignatureParams')
    ActionGroupSignatureParamsKeyString = Shapes::StringShape.new(name: 'ActionGroupSignatureParamsKeyString')
    ActionGroupSignatureParamsValueString = Shapes::StringShape.new(name: 'ActionGroupSignatureParamsValueString')
    ActionInvocationType = Shapes::StringShape.new(name: 'ActionInvocationType')
    AdditionalModelRequestFields = Shapes::MapShape.new(name: 'AdditionalModelRequestFields')
    AdditionalModelRequestFieldsKey = Shapes::StringShape.new(name: 'AdditionalModelRequestFieldsKey')
    AdditionalModelRequestFieldsValue = Shapes::DocumentShape.new(name: 'AdditionalModelRequestFieldsValue', document: true)
    AgentActionGroup = Shapes::StructureShape.new(name: 'AgentActionGroup')
    AgentActionGroups = Shapes::ListShape.new(name: 'AgentActionGroups')
    AgentAliasArn = Shapes::StringShape.new(name: 'AgentAliasArn')
    AgentAliasId = Shapes::StringShape.new(name: 'AgentAliasId')
    AgentCollaboration = Shapes::StringShape.new(name: 'AgentCollaboration')
    AgentCollaboratorInputPayload = Shapes::StructureShape.new(name: 'AgentCollaboratorInputPayload')
    AgentCollaboratorInvocationInput = Shapes::StructureShape.new(name: 'AgentCollaboratorInvocationInput')
    AgentCollaboratorInvocationOutput = Shapes::StructureShape.new(name: 'AgentCollaboratorInvocationOutput')
    AgentCollaboratorOutputPayload = Shapes::StructureShape.new(name: 'AgentCollaboratorOutputPayload')
    AgentCollaboratorPayloadString = Shapes::StringShape.new(name: 'AgentCollaboratorPayloadString')
    AgentId = Shapes::StringShape.new(name: 'AgentId')
    AgentTraces = Shapes::ListShape.new(name: 'AgentTraces')
    AgentVersion = Shapes::StringShape.new(name: 'AgentVersion')
    AnalyzePromptEvent = Shapes::StructureShape.new(name: 'AnalyzePromptEvent')
    ApiContentMap = Shapes::MapShape.new(name: 'ApiContentMap')
    ApiInvocationInput = Shapes::StructureShape.new(name: 'ApiInvocationInput')
    ApiParameter = Shapes::StructureShape.new(name: 'ApiParameter')
    ApiParameters = Shapes::ListShape.new(name: 'ApiParameters')
    ApiPath = Shapes::StringShape.new(name: 'ApiPath')
    ApiRequestBody = Shapes::StructureShape.new(name: 'ApiRequestBody')
    ApiResult = Shapes::StructureShape.new(name: 'ApiResult')
    AttributeType = Shapes::StringShape.new(name: 'AttributeType')
    Attribution = Shapes::StructureShape.new(name: 'Attribution')
    AudioSegment = Shapes::StructureShape.new(name: 'AudioSegment')
    AudioSegmentS3UriString = Shapes::StringShape.new(name: 'AudioSegmentS3UriString')
    BadGatewayException = Shapes::StructureShape.new(name: 'BadGatewayException')
    BasePromptTemplate = Shapes::StringShape.new(name: 'BasePromptTemplate')
    BedrockModelArn = Shapes::StringShape.new(name: 'BedrockModelArn')
    BedrockModelConfigurations = Shapes::StructureShape.new(name: 'BedrockModelConfigurations')
    BedrockRerankingConfiguration = Shapes::StructureShape.new(name: 'BedrockRerankingConfiguration')
    BedrockRerankingConfigurationNumberOfResultsInteger = Shapes::IntegerShape.new(name: 'BedrockRerankingConfigurationNumberOfResultsInteger')
    BedrockRerankingModelArn = Shapes::StringShape.new(name: 'BedrockRerankingModelArn')
    BedrockRerankingModelConfiguration = Shapes::StructureShape.new(name: 'BedrockRerankingModelConfiguration')
    BedrockSessionContentBlock = Shapes::UnionShape.new(name: 'BedrockSessionContentBlock')
    BedrockSessionContentBlockTextString = Shapes::StringShape.new(name: 'BedrockSessionContentBlockTextString')
    BedrockSessionContentBlocks = Shapes::ListShape.new(name: 'BedrockSessionContentBlocks')
    Blob = Shapes::BlobShape.new(name: 'Blob')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    ByteContentBlob = Shapes::BlobShape.new(name: 'ByteContentBlob')
    ByteContentDoc = Shapes::StructureShape.new(name: 'ByteContentDoc')
    ByteContentFile = Shapes::StructureShape.new(name: 'ByteContentFile')
    Caller = Shapes::UnionShape.new(name: 'Caller')
    CallerChain = Shapes::ListShape.new(name: 'CallerChain')
    Citation = Shapes::StructureShape.new(name: 'Citation')
    CitationEvent = Shapes::StructureShape.new(name: 'CitationEvent')
    Citations = Shapes::ListShape.new(name: 'Citations')
    CodeInterpreterInvocationInput = Shapes::StructureShape.new(name: 'CodeInterpreterInvocationInput')
    CodeInterpreterInvocationOutput = Shapes::StructureShape.new(name: 'CodeInterpreterInvocationOutput')
    CollaborationInstruction = Shapes::StringShape.new(name: 'CollaborationInstruction')
    Collaborator = Shapes::StructureShape.new(name: 'Collaborator')
    CollaboratorConfiguration = Shapes::StructureShape.new(name: 'CollaboratorConfiguration')
    CollaboratorConfigurations = Shapes::ListShape.new(name: 'CollaboratorConfigurations')
    Collaborators = Shapes::ListShape.new(name: 'Collaborators')
    ConditionResultEvent = Shapes::StructureShape.new(name: 'ConditionResultEvent')
    ConfirmationState = Shapes::StringShape.new(name: 'ConfirmationState')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    ContentBlock = Shapes::UnionShape.new(name: 'ContentBlock')
    ContentBlocks = Shapes::ListShape.new(name: 'ContentBlocks')
    ContentBody = Shapes::StructureShape.new(name: 'ContentBody')
    ContentMap = Shapes::MapShape.new(name: 'ContentMap')
    ContentType = Shapes::StringShape.new(name: 'ContentType')
    ConversationHistory = Shapes::StructureShape.new(name: 'ConversationHistory')
    ConversationRole = Shapes::StringShape.new(name: 'ConversationRole')
    CreateInvocationRequest = Shapes::StructureShape.new(name: 'CreateInvocationRequest')
    CreateInvocationResponse = Shapes::StructureShape.new(name: 'CreateInvocationResponse')
    CreateSessionRequest = Shapes::StructureShape.new(name: 'CreateSessionRequest')
    CreateSessionResponse = Shapes::StructureShape.new(name: 'CreateSessionResponse')
    CreationMode = Shapes::StringShape.new(name: 'CreationMode')
    CustomControlMethod = Shapes::StringShape.new(name: 'CustomControlMethod')
    CustomOrchestration = Shapes::StructureShape.new(name: 'CustomOrchestration')
    CustomOrchestrationTrace = Shapes::StructureShape.new(name: 'CustomOrchestrationTrace')
    CustomOrchestrationTraceEvent = Shapes::StructureShape.new(name: 'CustomOrchestrationTraceEvent')
    DateTimestamp = Shapes::TimestampShape.new(name: 'DateTimestamp', timestampFormat: "iso8601")
    DeleteAgentMemoryRequest = Shapes::StructureShape.new(name: 'DeleteAgentMemoryRequest')
    DeleteAgentMemoryResponse = Shapes::StructureShape.new(name: 'DeleteAgentMemoryResponse')
    DeleteSessionRequest = Shapes::StructureShape.new(name: 'DeleteSessionRequest')
    DeleteSessionResponse = Shapes::StructureShape.new(name: 'DeleteSessionResponse')
    DependencyFailedException = Shapes::StructureShape.new(name: 'DependencyFailedException')
    Document = Shapes::DocumentShape.new(name: 'Document', document: true)
    Double = Shapes::FloatShape.new(name: 'Double')
    EndSessionRequest = Shapes::StructureShape.new(name: 'EndSessionRequest')
    EndSessionResponse = Shapes::StructureShape.new(name: 'EndSessionResponse')
    ExecutionType = Shapes::StringShape.new(name: 'ExecutionType')
    ExternalSource = Shapes::StructureShape.new(name: 'ExternalSource')
    ExternalSourceType = Shapes::StringShape.new(name: 'ExternalSourceType')
    ExternalSources = Shapes::ListShape.new(name: 'ExternalSources')
    ExternalSourcesGenerationConfiguration = Shapes::StructureShape.new(name: 'ExternalSourcesGenerationConfiguration')
    ExternalSourcesRetrieveAndGenerateConfiguration = Shapes::StructureShape.new(name: 'ExternalSourcesRetrieveAndGenerateConfiguration')
    FailureReasonString = Shapes::StringShape.new(name: 'FailureReasonString')
    FailureTrace = Shapes::StructureShape.new(name: 'FailureTrace')
    FieldForReranking = Shapes::StructureShape.new(name: 'FieldForReranking')
    FieldForRerankingFieldNameString = Shapes::StringShape.new(name: 'FieldForRerankingFieldNameString')
    FieldsForReranking = Shapes::ListShape.new(name: 'FieldsForReranking')
    FileBody = Shapes::BlobShape.new(name: 'FileBody')
    FilePart = Shapes::StructureShape.new(name: 'FilePart')
    FileSource = Shapes::StructureShape.new(name: 'FileSource')
    FileSourceType = Shapes::StringShape.new(name: 'FileSourceType')
    FileUseCase = Shapes::StringShape.new(name: 'FileUseCase')
    Files = Shapes::ListShape.new(name: 'Files')
    FilterAttribute = Shapes::StructureShape.new(name: 'FilterAttribute')
    FilterKey = Shapes::StringShape.new(name: 'FilterKey')
    FilterValue = Shapes::DocumentShape.new(name: 'FilterValue', document: true)
    FinalResponse = Shapes::StructureShape.new(name: 'FinalResponse')
    FinalResponseString = Shapes::StringShape.new(name: 'FinalResponseString')
    Float = Shapes::FloatShape.new(name: 'Float')
    FlowAliasIdentifier = Shapes::StringShape.new(name: 'FlowAliasIdentifier')
    FlowCompletionEvent = Shapes::StructureShape.new(name: 'FlowCompletionEvent')
    FlowCompletionReason = Shapes::StringShape.new(name: 'FlowCompletionReason')
    FlowControlNodeType = Shapes::StringShape.new(name: 'FlowControlNodeType')
    FlowErrorCode = Shapes::StringShape.new(name: 'FlowErrorCode')
    FlowExecutionContent = Shapes::UnionShape.new(name: 'FlowExecutionContent')
    FlowExecutionError = Shapes::StructureShape.new(name: 'FlowExecutionError')
    FlowExecutionErrorType = Shapes::StringShape.new(name: 'FlowExecutionErrorType')
    FlowExecutionErrors = Shapes::ListShape.new(name: 'FlowExecutionErrors')
    FlowExecutionEvent = Shapes::UnionShape.new(name: 'FlowExecutionEvent')
    FlowExecutionEventType = Shapes::StringShape.new(name: 'FlowExecutionEventType')
    FlowExecutionEvents = Shapes::ListShape.new(name: 'FlowExecutionEvents')
    FlowExecutionId = Shapes::StringShape.new(name: 'FlowExecutionId')
    FlowExecutionIdentifier = Shapes::StringShape.new(name: 'FlowExecutionIdentifier')
    FlowExecutionInputEvent = Shapes::StructureShape.new(name: 'FlowExecutionInputEvent')
    FlowExecutionName = Shapes::StringShape.new(name: 'FlowExecutionName')
    FlowExecutionOutputEvent = Shapes::StructureShape.new(name: 'FlowExecutionOutputEvent')
    FlowExecutionRoleArn = Shapes::StringShape.new(name: 'FlowExecutionRoleArn')
    FlowExecutionStatus = Shapes::StringShape.new(name: 'FlowExecutionStatus')
    FlowExecutionSummaries = Shapes::ListShape.new(name: 'FlowExecutionSummaries')
    FlowExecutionSummary = Shapes::StructureShape.new(name: 'FlowExecutionSummary')
    FlowFailureEvent = Shapes::StructureShape.new(name: 'FlowFailureEvent')
    FlowIdentifier = Shapes::StringShape.new(name: 'FlowIdentifier')
    FlowInput = Shapes::StructureShape.new(name: 'FlowInput')
    FlowInputContent = Shapes::UnionShape.new(name: 'FlowInputContent')
    FlowInputField = Shapes::StructureShape.new(name: 'FlowInputField')
    FlowInputFields = Shapes::ListShape.new(name: 'FlowInputFields')
    FlowInputs = Shapes::ListShape.new(name: 'FlowInputs')
    FlowMultiTurnInputContent = Shapes::UnionShape.new(name: 'FlowMultiTurnInputContent')
    FlowMultiTurnInputRequestEvent = Shapes::StructureShape.new(name: 'FlowMultiTurnInputRequestEvent')
    FlowNodeIODataType = Shapes::StringShape.new(name: 'FlowNodeIODataType')
    FlowNodeInputCategory = Shapes::StringShape.new(name: 'FlowNodeInputCategory')
    FlowNodeInputExpression = Shapes::StringShape.new(name: 'FlowNodeInputExpression')
    FlowNodeInputName = Shapes::StringShape.new(name: 'FlowNodeInputName')
    FlowNodeOutputName = Shapes::StringShape.new(name: 'FlowNodeOutputName')
    FlowOutputContent = Shapes::UnionShape.new(name: 'FlowOutputContent')
    FlowOutputEvent = Shapes::StructureShape.new(name: 'FlowOutputEvent')
    FlowOutputField = Shapes::StructureShape.new(name: 'FlowOutputField')
    FlowOutputFields = Shapes::ListShape.new(name: 'FlowOutputFields')
    FlowResponseStream = Shapes::StructureShape.new(name: 'FlowResponseStream')
    FlowTrace = Shapes::UnionShape.new(name: 'FlowTrace')
    FlowTraceCondition = Shapes::StructureShape.new(name: 'FlowTraceCondition')
    FlowTraceConditionNodeResultEvent = Shapes::StructureShape.new(name: 'FlowTraceConditionNodeResultEvent')
    FlowTraceConditions = Shapes::ListShape.new(name: 'FlowTraceConditions')
    FlowTraceDependencyEvent = Shapes::StructureShape.new(name: 'FlowTraceDependencyEvent')
    FlowTraceEvent = Shapes::StructureShape.new(name: 'FlowTraceEvent')
    FlowTraceNodeActionEvent = Shapes::StructureShape.new(name: 'FlowTraceNodeActionEvent')
    FlowTraceNodeInputContent = Shapes::UnionShape.new(name: 'FlowTraceNodeInputContent')
    FlowTraceNodeInputEvent = Shapes::StructureShape.new(name: 'FlowTraceNodeInputEvent')
    FlowTraceNodeInputExecutionChain = Shapes::ListShape.new(name: 'FlowTraceNodeInputExecutionChain')
    FlowTraceNodeInputExecutionChainItem = Shapes::StructureShape.new(name: 'FlowTraceNodeInputExecutionChainItem')
    FlowTraceNodeInputField = Shapes::StructureShape.new(name: 'FlowTraceNodeInputField')
    FlowTraceNodeInputFields = Shapes::ListShape.new(name: 'FlowTraceNodeInputFields')
    FlowTraceNodeInputSource = Shapes::StructureShape.new(name: 'FlowTraceNodeInputSource')
    FlowTraceNodeOutputContent = Shapes::UnionShape.new(name: 'FlowTraceNodeOutputContent')
    FlowTraceNodeOutputEvent = Shapes::StructureShape.new(name: 'FlowTraceNodeOutputEvent')
    FlowTraceNodeOutputField = Shapes::StructureShape.new(name: 'FlowTraceNodeOutputField')
    FlowTraceNodeOutputFields = Shapes::ListShape.new(name: 'FlowTraceNodeOutputFields')
    FlowTraceNodeOutputNext = Shapes::StructureShape.new(name: 'FlowTraceNodeOutputNext')
    FlowTraceNodeOutputNextList = Shapes::ListShape.new(name: 'FlowTraceNodeOutputNextList')
    Function = Shapes::StringShape.new(name: 'Function')
    FunctionDefinition = Shapes::StructureShape.new(name: 'FunctionDefinition')
    FunctionDescription = Shapes::StringShape.new(name: 'FunctionDescription')
    FunctionInvocationInput = Shapes::StructureShape.new(name: 'FunctionInvocationInput')
    FunctionParameter = Shapes::StructureShape.new(name: 'FunctionParameter')
    FunctionParameters = Shapes::ListShape.new(name: 'FunctionParameters')
    FunctionResult = Shapes::StructureShape.new(name: 'FunctionResult')
    FunctionSchema = Shapes::UnionShape.new(name: 'FunctionSchema')
    Functions = Shapes::ListShape.new(name: 'Functions')
    GenerateQueryRequest = Shapes::StructureShape.new(name: 'GenerateQueryRequest')
    GenerateQueryResponse = Shapes::StructureShape.new(name: 'GenerateQueryResponse')
    GeneratedQueries = Shapes::ListShape.new(name: 'GeneratedQueries')
    GeneratedQuery = Shapes::StructureShape.new(name: 'GeneratedQuery')
    GeneratedQueryType = Shapes::StringShape.new(name: 'GeneratedQueryType')
    GeneratedResponsePart = Shapes::StructureShape.new(name: 'GeneratedResponsePart')
    GenerationConfiguration = Shapes::StructureShape.new(name: 'GenerationConfiguration')
    GetAgentMemoryRequest = Shapes::StructureShape.new(name: 'GetAgentMemoryRequest')
    GetAgentMemoryResponse = Shapes::StructureShape.new(name: 'GetAgentMemoryResponse')
    GetExecutionFlowSnapshotRequest = Shapes::StructureShape.new(name: 'GetExecutionFlowSnapshotRequest')
    GetExecutionFlowSnapshotResponse = Shapes::StructureShape.new(name: 'GetExecutionFlowSnapshotResponse')
    GetFlowExecutionRequest = Shapes::StructureShape.new(name: 'GetFlowExecutionRequest')
    GetFlowExecutionResponse = Shapes::StructureShape.new(name: 'GetFlowExecutionResponse')
    GetInvocationStepRequest = Shapes::StructureShape.new(name: 'GetInvocationStepRequest')
    GetInvocationStepResponse = Shapes::StructureShape.new(name: 'GetInvocationStepResponse')
    GetSessionRequest = Shapes::StructureShape.new(name: 'GetSessionRequest')
    GetSessionResponse = Shapes::StructureShape.new(name: 'GetSessionResponse')
    GuadrailAction = Shapes::StringShape.new(name: 'GuadrailAction')
    GuardrailAction = Shapes::StringShape.new(name: 'GuardrailAction')
    GuardrailAssessment = Shapes::StructureShape.new(name: 'GuardrailAssessment')
    GuardrailAssessmentList = Shapes::ListShape.new(name: 'GuardrailAssessmentList')
    GuardrailConfiguration = Shapes::StructureShape.new(name: 'GuardrailConfiguration')
    GuardrailConfigurationGuardrailIdString = Shapes::StringShape.new(name: 'GuardrailConfigurationGuardrailIdString')
    GuardrailConfigurationGuardrailVersionString = Shapes::StringShape.new(name: 'GuardrailConfigurationGuardrailVersionString')
    GuardrailConfigurationWithArn = Shapes::StructureShape.new(name: 'GuardrailConfigurationWithArn')
    GuardrailContentFilter = Shapes::StructureShape.new(name: 'GuardrailContentFilter')
    GuardrailContentFilterConfidence = Shapes::StringShape.new(name: 'GuardrailContentFilterConfidence')
    GuardrailContentFilterList = Shapes::ListShape.new(name: 'GuardrailContentFilterList')
    GuardrailContentFilterType = Shapes::StringShape.new(name: 'GuardrailContentFilterType')
    GuardrailContentPolicyAction = Shapes::StringShape.new(name: 'GuardrailContentPolicyAction')
    GuardrailContentPolicyAssessment = Shapes::StructureShape.new(name: 'GuardrailContentPolicyAssessment')
    GuardrailCustomWord = Shapes::StructureShape.new(name: 'GuardrailCustomWord')
    GuardrailCustomWordList = Shapes::ListShape.new(name: 'GuardrailCustomWordList')
    GuardrailEvent = Shapes::StructureShape.new(name: 'GuardrailEvent')
    GuardrailIdentifierWithArn = Shapes::StringShape.new(name: 'GuardrailIdentifierWithArn')
    GuardrailManagedWord = Shapes::StructureShape.new(name: 'GuardrailManagedWord')
    GuardrailManagedWordList = Shapes::ListShape.new(name: 'GuardrailManagedWordList')
    GuardrailManagedWordType = Shapes::StringShape.new(name: 'GuardrailManagedWordType')
    GuardrailPiiEntityFilter = Shapes::StructureShape.new(name: 'GuardrailPiiEntityFilter')
    GuardrailPiiEntityFilterList = Shapes::ListShape.new(name: 'GuardrailPiiEntityFilterList')
    GuardrailPiiEntityType = Shapes::StringShape.new(name: 'GuardrailPiiEntityType')
    GuardrailRegexFilter = Shapes::StructureShape.new(name: 'GuardrailRegexFilter')
    GuardrailRegexFilterList = Shapes::ListShape.new(name: 'GuardrailRegexFilterList')
    GuardrailSensitiveInformationPolicyAction = Shapes::StringShape.new(name: 'GuardrailSensitiveInformationPolicyAction')
    GuardrailSensitiveInformationPolicyAssessment = Shapes::StructureShape.new(name: 'GuardrailSensitiveInformationPolicyAssessment')
    GuardrailTopic = Shapes::StructureShape.new(name: 'GuardrailTopic')
    GuardrailTopicList = Shapes::ListShape.new(name: 'GuardrailTopicList')
    GuardrailTopicPolicyAction = Shapes::StringShape.new(name: 'GuardrailTopicPolicyAction')
    GuardrailTopicPolicyAssessment = Shapes::StructureShape.new(name: 'GuardrailTopicPolicyAssessment')
    GuardrailTopicType = Shapes::StringShape.new(name: 'GuardrailTopicType')
    GuardrailTrace = Shapes::StructureShape.new(name: 'GuardrailTrace')
    GuardrailVersion = Shapes::StringShape.new(name: 'GuardrailVersion')
    GuardrailWordPolicyAction = Shapes::StringShape.new(name: 'GuardrailWordPolicyAction')
    GuardrailWordPolicyAssessment = Shapes::StructureShape.new(name: 'GuardrailWordPolicyAssessment')
    Identifier = Shapes::StringShape.new(name: 'Identifier')
    ImageBlock = Shapes::StructureShape.new(name: 'ImageBlock')
    ImageFormat = Shapes::StringShape.new(name: 'ImageFormat')
    ImageInput = Shapes::StructureShape.new(name: 'ImageInput')
    ImageInputFormat = Shapes::StringShape.new(name: 'ImageInputFormat')
    ImageInputSource = Shapes::UnionShape.new(name: 'ImageInputSource')
    ImageInputSourceBytesBlob = Shapes::BlobShape.new(name: 'ImageInputSourceBytesBlob')
    ImageInputs = Shapes::ListShape.new(name: 'ImageInputs')
    ImageSource = Shapes::UnionShape.new(name: 'ImageSource')
    ImageSourceBytesBlob = Shapes::BlobShape.new(name: 'ImageSourceBytesBlob')
    ImplicitFilterConfiguration = Shapes::StructureShape.new(name: 'ImplicitFilterConfiguration')
    InferenceConfig = Shapes::StructureShape.new(name: 'InferenceConfig')
    InferenceConfiguration = Shapes::StructureShape.new(name: 'InferenceConfiguration')
    InlineAgentFilePart = Shapes::StructureShape.new(name: 'InlineAgentFilePart')
    InlineAgentPayloadPart = Shapes::StructureShape.new(name: 'InlineAgentPayloadPart')
    InlineAgentResponseStream = Shapes::StructureShape.new(name: 'InlineAgentResponseStream')
    InlineAgentReturnControlPayload = Shapes::StructureShape.new(name: 'InlineAgentReturnControlPayload')
    InlineAgentTracePart = Shapes::StructureShape.new(name: 'InlineAgentTracePart')
    InlineBedrockModelConfigurations = Shapes::StructureShape.new(name: 'InlineBedrockModelConfigurations')
    InlineSessionState = Shapes::StructureShape.new(name: 'InlineSessionState')
    InputFile = Shapes::StructureShape.new(name: 'InputFile')
    InputFiles = Shapes::ListShape.new(name: 'InputFiles')
    InputImage = Shapes::StructureShape.new(name: 'InputImage')
    InputImageFormat = Shapes::StringShape.new(name: 'InputImageFormat')
    InputImageInlineContentBlob = Shapes::BlobShape.new(name: 'InputImageInlineContentBlob')
    InputPrompt = Shapes::UnionShape.new(name: 'InputPrompt')
    InputQueryType = Shapes::StringShape.new(name: 'InputQueryType')
    InputText = Shapes::StringShape.new(name: 'InputText')
    Instruction = Shapes::StringShape.new(name: 'Instruction')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    InvocationDescription = Shapes::StringShape.new(name: 'InvocationDescription')
    InvocationIdentifier = Shapes::StringShape.new(name: 'InvocationIdentifier')
    InvocationInput = Shapes::StructureShape.new(name: 'InvocationInput')
    InvocationInputMember = Shapes::UnionShape.new(name: 'InvocationInputMember')
    InvocationInputs = Shapes::ListShape.new(name: 'InvocationInputs')
    InvocationResultMember = Shapes::UnionShape.new(name: 'InvocationResultMember')
    InvocationStep = Shapes::StructureShape.new(name: 'InvocationStep')
    InvocationStepPayload = Shapes::UnionShape.new(name: 'InvocationStepPayload')
    InvocationStepSummaries = Shapes::ListShape.new(name: 'InvocationStepSummaries')
    InvocationStepSummary = Shapes::StructureShape.new(name: 'InvocationStepSummary')
    InvocationSummaries = Shapes::ListShape.new(name: 'InvocationSummaries')
    InvocationSummary = Shapes::StructureShape.new(name: 'InvocationSummary')
    InvocationType = Shapes::StringShape.new(name: 'InvocationType')
    InvokeAgentRequest = Shapes::StructureShape.new(name: 'InvokeAgentRequest')
    InvokeAgentResponse = Shapes::StructureShape.new(name: 'InvokeAgentResponse')
    InvokeFlowRequest = Shapes::StructureShape.new(name: 'InvokeFlowRequest')
    InvokeFlowResponse = Shapes::StructureShape.new(name: 'InvokeFlowResponse')
    InvokeInlineAgentRequest = Shapes::StructureShape.new(name: 'InvokeInlineAgentRequest')
    InvokeInlineAgentResponse = Shapes::StructureShape.new(name: 'InvokeInlineAgentResponse')
    KmsKeyArn = Shapes::StringShape.new(name: 'KmsKeyArn')
    KnowledgeBase = Shapes::StructureShape.new(name: 'KnowledgeBase')
    KnowledgeBaseArn = Shapes::StringShape.new(name: 'KnowledgeBaseArn')
    KnowledgeBaseConfiguration = Shapes::StructureShape.new(name: 'KnowledgeBaseConfiguration')
    KnowledgeBaseConfigurations = Shapes::ListShape.new(name: 'KnowledgeBaseConfigurations')
    KnowledgeBaseId = Shapes::StringShape.new(name: 'KnowledgeBaseId')
    KnowledgeBaseLookupInput = Shapes::StructureShape.new(name: 'KnowledgeBaseLookupInput')
    KnowledgeBaseLookupInputString = Shapes::StringShape.new(name: 'KnowledgeBaseLookupInputString')
    KnowledgeBaseLookupOutput = Shapes::StructureShape.new(name: 'KnowledgeBaseLookupOutput')
    KnowledgeBaseQuery = Shapes::StructureShape.new(name: 'KnowledgeBaseQuery')
    KnowledgeBaseQueryTextString = Shapes::StringShape.new(name: 'KnowledgeBaseQueryTextString')
    KnowledgeBaseQueryType = Shapes::StringShape.new(name: 'KnowledgeBaseQueryType')
    KnowledgeBaseRetrievalConfiguration = Shapes::StructureShape.new(name: 'KnowledgeBaseRetrievalConfiguration')
    KnowledgeBaseRetrievalResult = Shapes::StructureShape.new(name: 'KnowledgeBaseRetrievalResult')
    KnowledgeBaseRetrievalResults = Shapes::ListShape.new(name: 'KnowledgeBaseRetrievalResults')
    KnowledgeBaseRetrieveAndGenerateConfiguration = Shapes::StructureShape.new(name: 'KnowledgeBaseRetrieveAndGenerateConfiguration')
    KnowledgeBaseVectorSearchConfiguration = Shapes::StructureShape.new(name: 'KnowledgeBaseVectorSearchConfiguration')
    KnowledgeBaseVectorSearchConfigurationNumberOfResultsInteger = Shapes::IntegerShape.new(name: 'KnowledgeBaseVectorSearchConfigurationNumberOfResultsInteger')
    KnowledgeBases = Shapes::ListShape.new(name: 'KnowledgeBases')
    LambdaArn = Shapes::StringShape.new(name: 'LambdaArn')
    LambdaResourceArn = Shapes::StringShape.new(name: 'LambdaResourceArn')
    ListFlowExecutionEventsRequest = Shapes::StructureShape.new(name: 'ListFlowExecutionEventsRequest')
    ListFlowExecutionEventsResponse = Shapes::StructureShape.new(name: 'ListFlowExecutionEventsResponse')
    ListFlowExecutionsRequest = Shapes::StructureShape.new(name: 'ListFlowExecutionsRequest')
    ListFlowExecutionsResponse = Shapes::StructureShape.new(name: 'ListFlowExecutionsResponse')
    ListInvocationStepsRequest = Shapes::StructureShape.new(name: 'ListInvocationStepsRequest')
    ListInvocationStepsResponse = Shapes::StructureShape.new(name: 'ListInvocationStepsResponse')
    ListInvocationsRequest = Shapes::StructureShape.new(name: 'ListInvocationsRequest')
    ListInvocationsResponse = Shapes::StructureShape.new(name: 'ListInvocationsResponse')
    ListSessionsRequest = Shapes::StructureShape.new(name: 'ListSessionsRequest')
    ListSessionsResponse = Shapes::StructureShape.new(name: 'ListSessionsResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    Long = Shapes::IntegerShape.new(name: 'Long')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    MaxTokens = Shapes::IntegerShape.new(name: 'MaxTokens')
    MaximumLength = Shapes::IntegerShape.new(name: 'MaximumLength')
    Memories = Shapes::ListShape.new(name: 'Memories')
    Memory = Shapes::UnionShape.new(name: 'Memory')
    MemoryId = Shapes::StringShape.new(name: 'MemoryId')
    MemorySessionSummary = Shapes::StructureShape.new(name: 'MemorySessionSummary')
    MemoryType = Shapes::StringShape.new(name: 'MemoryType')
    Message = Shapes::StructureShape.new(name: 'Message')
    Messages = Shapes::ListShape.new(name: 'Messages')
    Metadata = Shapes::StructureShape.new(name: 'Metadata')
    MetadataAttributeSchema = Shapes::StructureShape.new(name: 'MetadataAttributeSchema')
    MetadataAttributeSchemaDescriptionString = Shapes::StringShape.new(name: 'MetadataAttributeSchemaDescriptionString')
    MetadataAttributeSchemaKeyString = Shapes::StringShape.new(name: 'MetadataAttributeSchemaKeyString')
    MetadataAttributeSchemaList = Shapes::ListShape.new(name: 'MetadataAttributeSchemaList')
    MetadataConfigurationForReranking = Shapes::StructureShape.new(name: 'MetadataConfigurationForReranking')
    MimeType = Shapes::StringShape.new(name: 'MimeType')
    ModelIdentifier = Shapes::StringShape.new(name: 'ModelIdentifier')
    ModelInvocationInput = Shapes::StructureShape.new(name: 'ModelInvocationInput')
    ModelNotReadyException = Shapes::StructureShape.new(name: 'ModelNotReadyException')
    ModelPerformanceConfiguration = Shapes::StructureShape.new(name: 'ModelPerformanceConfiguration')
    Name = Shapes::StringShape.new(name: 'Name')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    NodeActionEvent = Shapes::StructureShape.new(name: 'NodeActionEvent')
    NodeDependencyEvent = Shapes::StructureShape.new(name: 'NodeDependencyEvent')
    NodeErrorCode = Shapes::StringShape.new(name: 'NodeErrorCode')
    NodeExecutionContent = Shapes::UnionShape.new(name: 'NodeExecutionContent')
    NodeFailureEvent = Shapes::StructureShape.new(name: 'NodeFailureEvent')
    NodeInputEvent = Shapes::StructureShape.new(name: 'NodeInputEvent')
    NodeInputExecutionChain = Shapes::ListShape.new(name: 'NodeInputExecutionChain')
    NodeInputExecutionChainItem = Shapes::StructureShape.new(name: 'NodeInputExecutionChainItem')
    NodeInputField = Shapes::StructureShape.new(name: 'NodeInputField')
    NodeInputFields = Shapes::ListShape.new(name: 'NodeInputFields')
    NodeInputName = Shapes::StringShape.new(name: 'NodeInputName')
    NodeInputSource = Shapes::StructureShape.new(name: 'NodeInputSource')
    NodeName = Shapes::StringShape.new(name: 'NodeName')
    NodeOutputEvent = Shapes::StructureShape.new(name: 'NodeOutputEvent')
    NodeOutputField = Shapes::StructureShape.new(name: 'NodeOutputField')
    NodeOutputFields = Shapes::ListShape.new(name: 'NodeOutputFields')
    NodeOutputName = Shapes::StringShape.new(name: 'NodeOutputName')
    NodeOutputNext = Shapes::StructureShape.new(name: 'NodeOutputNext')
    NodeOutputNextList = Shapes::ListShape.new(name: 'NodeOutputNextList')
    NodeTraceElements = Shapes::UnionShape.new(name: 'NodeTraceElements')
    NodeType = Shapes::StringShape.new(name: 'NodeType')
    NonBlankString = Shapes::StringShape.new(name: 'NonBlankString')
    Observation = Shapes::StructureShape.new(name: 'Observation')
    OptimizePromptRequest = Shapes::StructureShape.new(name: 'OptimizePromptRequest')
    OptimizePromptRequestTargetModelIdString = Shapes::StringShape.new(name: 'OptimizePromptRequestTargetModelIdString')
    OptimizePromptResponse = Shapes::StructureShape.new(name: 'OptimizePromptResponse')
    OptimizedPrompt = Shapes::UnionShape.new(name: 'OptimizedPrompt')
    OptimizedPromptEvent = Shapes::StructureShape.new(name: 'OptimizedPromptEvent')
    OptimizedPromptStream = Shapes::StructureShape.new(name: 'OptimizedPromptStream')
    OrchestrationConfiguration = Shapes::StructureShape.new(name: 'OrchestrationConfiguration')
    OrchestrationExecutor = Shapes::UnionShape.new(name: 'OrchestrationExecutor')
    OrchestrationModelInvocationOutput = Shapes::StructureShape.new(name: 'OrchestrationModelInvocationOutput')
    OrchestrationTrace = Shapes::UnionShape.new(name: 'OrchestrationTrace')
    OrchestrationType = Shapes::StringShape.new(name: 'OrchestrationType')
    OutputFile = Shapes::StructureShape.new(name: 'OutputFile')
    OutputFiles = Shapes::ListShape.new(name: 'OutputFiles')
    OutputString = Shapes::StringShape.new(name: 'OutputString')
    Parameter = Shapes::StructureShape.new(name: 'Parameter')
    ParameterDescription = Shapes::StringShape.new(name: 'ParameterDescription')
    ParameterDetail = Shapes::StructureShape.new(name: 'ParameterDetail')
    ParameterList = Shapes::ListShape.new(name: 'ParameterList')
    ParameterMap = Shapes::MapShape.new(name: 'ParameterMap')
    ParameterName = Shapes::StringShape.new(name: 'ParameterName')
    ParameterType = Shapes::StringShape.new(name: 'ParameterType')
    Parameters = Shapes::ListShape.new(name: 'Parameters')
    PartBody = Shapes::BlobShape.new(name: 'PartBody')
    Payload = Shapes::StringShape.new(name: 'Payload')
    PayloadPart = Shapes::StructureShape.new(name: 'PayloadPart')
    PayloadType = Shapes::StringShape.new(name: 'PayloadType')
    PerformanceConfigLatency = Shapes::StringShape.new(name: 'PerformanceConfigLatency')
    PerformanceConfiguration = Shapes::StructureShape.new(name: 'PerformanceConfiguration')
    PostProcessingModelInvocationOutput = Shapes::StructureShape.new(name: 'PostProcessingModelInvocationOutput')
    PostProcessingParsedResponse = Shapes::StructureShape.new(name: 'PostProcessingParsedResponse')
    PostProcessingTrace = Shapes::UnionShape.new(name: 'PostProcessingTrace')
    PreProcessingModelInvocationOutput = Shapes::StructureShape.new(name: 'PreProcessingModelInvocationOutput')
    PreProcessingParsedResponse = Shapes::StructureShape.new(name: 'PreProcessingParsedResponse')
    PreProcessingTrace = Shapes::UnionShape.new(name: 'PreProcessingTrace')
    PromptConfiguration = Shapes::StructureShape.new(name: 'PromptConfiguration')
    PromptConfigurations = Shapes::ListShape.new(name: 'PromptConfigurations')
    PromptCreationConfigurations = Shapes::StructureShape.new(name: 'PromptCreationConfigurations')
    PromptCreationConfigurationsPreviousConversationTurnsToIncludeInteger = Shapes::IntegerShape.new(name: 'PromptCreationConfigurationsPreviousConversationTurnsToIncludeInteger')
    PromptOverrideConfiguration = Shapes::StructureShape.new(name: 'PromptOverrideConfiguration')
    PromptSessionAttributesMap = Shapes::MapShape.new(name: 'PromptSessionAttributesMap')
    PromptState = Shapes::StringShape.new(name: 'PromptState')
    PromptTemplate = Shapes::StructureShape.new(name: 'PromptTemplate')
    PromptText = Shapes::StringShape.new(name: 'PromptText')
    PromptType = Shapes::StringShape.new(name: 'PromptType')
    PropertyParameters = Shapes::StructureShape.new(name: 'PropertyParameters')
    PutInvocationStepRequest = Shapes::StructureShape.new(name: 'PutInvocationStepRequest')
    PutInvocationStepResponse = Shapes::StructureShape.new(name: 'PutInvocationStepResponse')
    QueryGenerationInput = Shapes::StructureShape.new(name: 'QueryGenerationInput')
    QueryGenerationInputTextString = Shapes::StringShape.new(name: 'QueryGenerationInputTextString')
    QueryTransformationConfiguration = Shapes::StructureShape.new(name: 'QueryTransformationConfiguration')
    QueryTransformationMode = Shapes::StringShape.new(name: 'QueryTransformationMode')
    QueryTransformationType = Shapes::StringShape.new(name: 'QueryTransformationType')
    RAGStopSequences = Shapes::ListShape.new(name: 'RAGStopSequences')
    RAGStopSequencesMemberString = Shapes::StringShape.new(name: 'RAGStopSequencesMemberString')
    Rationale = Shapes::StructureShape.new(name: 'Rationale')
    RationaleString = Shapes::StringShape.new(name: 'RationaleString')
    RawResponse = Shapes::StructureShape.new(name: 'RawResponse')
    ReasoningContentBlock = Shapes::UnionShape.new(name: 'ReasoningContentBlock')
    ReasoningTextBlock = Shapes::StructureShape.new(name: 'ReasoningTextBlock')
    RelayConversationHistory = Shapes::StringShape.new(name: 'RelayConversationHistory')
    RepromptResponse = Shapes::StructureShape.new(name: 'RepromptResponse')
    RequestBody = Shapes::StructureShape.new(name: 'RequestBody')
    RequireConfirmation = Shapes::StringShape.new(name: 'RequireConfirmation')
    RerankDocument = Shapes::StructureShape.new(name: 'RerankDocument')
    RerankDocumentType = Shapes::StringShape.new(name: 'RerankDocumentType')
    RerankQueriesList = Shapes::ListShape.new(name: 'RerankQueriesList')
    RerankQuery = Shapes::StructureShape.new(name: 'RerankQuery')
    RerankQueryContentType = Shapes::StringShape.new(name: 'RerankQueryContentType')
    RerankRequest = Shapes::StructureShape.new(name: 'RerankRequest')
    RerankResponse = Shapes::StructureShape.new(name: 'RerankResponse')
    RerankResult = Shapes::StructureShape.new(name: 'RerankResult')
    RerankResultIndexInteger = Shapes::IntegerShape.new(name: 'RerankResultIndexInteger')
    RerankResultsList = Shapes::ListShape.new(name: 'RerankResultsList')
    RerankSource = Shapes::StructureShape.new(name: 'RerankSource')
    RerankSourceType = Shapes::StringShape.new(name: 'RerankSourceType')
    RerankSourcesList = Shapes::ListShape.new(name: 'RerankSourcesList')
    RerankTextDocument = Shapes::StructureShape.new(name: 'RerankTextDocument')
    RerankTextDocumentTextString = Shapes::StringShape.new(name: 'RerankTextDocumentTextString')
    RerankingConfiguration = Shapes::StructureShape.new(name: 'RerankingConfiguration')
    RerankingConfigurationType = Shapes::StringShape.new(name: 'RerankingConfigurationType')
    RerankingMetadataSelectionMode = Shapes::StringShape.new(name: 'RerankingMetadataSelectionMode')
    RerankingMetadataSelectiveModeConfiguration = Shapes::UnionShape.new(name: 'RerankingMetadataSelectiveModeConfiguration')
    ResourceDescription = Shapes::StringShape.new(name: 'ResourceDescription')
    ResourceName = Shapes::StringShape.new(name: 'ResourceName')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResponseBody = Shapes::MapShape.new(name: 'ResponseBody')
    ResponseState = Shapes::StringShape.new(name: 'ResponseState')
    ResponseStream = Shapes::StructureShape.new(name: 'ResponseStream')
    RetrievalFilter = Shapes::UnionShape.new(name: 'RetrievalFilter')
    RetrievalFilterList = Shapes::ListShape.new(name: 'RetrievalFilterList')
    RetrievalResultConfluenceLocation = Shapes::StructureShape.new(name: 'RetrievalResultConfluenceLocation')
    RetrievalResultContent = Shapes::StructureShape.new(name: 'RetrievalResultContent')
    RetrievalResultContentColumn = Shapes::StructureShape.new(name: 'RetrievalResultContentColumn')
    RetrievalResultContentColumnType = Shapes::StringShape.new(name: 'RetrievalResultContentColumnType')
    RetrievalResultContentRow = Shapes::ListShape.new(name: 'RetrievalResultContentRow')
    RetrievalResultContentType = Shapes::StringShape.new(name: 'RetrievalResultContentType')
    RetrievalResultCustomDocumentLocation = Shapes::StructureShape.new(name: 'RetrievalResultCustomDocumentLocation')
    RetrievalResultKendraDocumentLocation = Shapes::StructureShape.new(name: 'RetrievalResultKendraDocumentLocation')
    RetrievalResultLocation = Shapes::StructureShape.new(name: 'RetrievalResultLocation')
    RetrievalResultLocationType = Shapes::StringShape.new(name: 'RetrievalResultLocationType')
    RetrievalResultMetadata = Shapes::MapShape.new(name: 'RetrievalResultMetadata')
    RetrievalResultMetadataKey = Shapes::StringShape.new(name: 'RetrievalResultMetadataKey')
    RetrievalResultMetadataValue = Shapes::DocumentShape.new(name: 'RetrievalResultMetadataValue', document: true)
    RetrievalResultS3Location = Shapes::StructureShape.new(name: 'RetrievalResultS3Location')
    RetrievalResultSalesforceLocation = Shapes::StructureShape.new(name: 'RetrievalResultSalesforceLocation')
    RetrievalResultSharePointLocation = Shapes::StructureShape.new(name: 'RetrievalResultSharePointLocation')
    RetrievalResultSqlLocation = Shapes::StructureShape.new(name: 'RetrievalResultSqlLocation')
    RetrievalResultWebLocation = Shapes::StructureShape.new(name: 'RetrievalResultWebLocation')
    RetrieveAndGenerateConfiguration = Shapes::StructureShape.new(name: 'RetrieveAndGenerateConfiguration')
    RetrieveAndGenerateInput = Shapes::StructureShape.new(name: 'RetrieveAndGenerateInput')
    RetrieveAndGenerateInputTextString = Shapes::StringShape.new(name: 'RetrieveAndGenerateInputTextString')
    RetrieveAndGenerateOutput = Shapes::StructureShape.new(name: 'RetrieveAndGenerateOutput')
    RetrieveAndGenerateOutputEvent = Shapes::StructureShape.new(name: 'RetrieveAndGenerateOutputEvent')
    RetrieveAndGenerateRequest = Shapes::StructureShape.new(name: 'RetrieveAndGenerateRequest')
    RetrieveAndGenerateResponse = Shapes::StructureShape.new(name: 'RetrieveAndGenerateResponse')
    RetrieveAndGenerateSessionConfiguration = Shapes::StructureShape.new(name: 'RetrieveAndGenerateSessionConfiguration')
    RetrieveAndGenerateStreamRequest = Shapes::StructureShape.new(name: 'RetrieveAndGenerateStreamRequest')
    RetrieveAndGenerateStreamResponse = Shapes::StructureShape.new(name: 'RetrieveAndGenerateStreamResponse')
    RetrieveAndGenerateStreamResponseOutput = Shapes::StructureShape.new(name: 'RetrieveAndGenerateStreamResponseOutput')
    RetrieveAndGenerateType = Shapes::StringShape.new(name: 'RetrieveAndGenerateType')
    RetrieveRequest = Shapes::StructureShape.new(name: 'RetrieveRequest')
    RetrieveResponse = Shapes::StructureShape.new(name: 'RetrieveResponse')
    RetrievedReference = Shapes::StructureShape.new(name: 'RetrievedReference')
    RetrievedReferences = Shapes::ListShape.new(name: 'RetrievedReferences')
    ReturnControlInvocationResults = Shapes::ListShape.new(name: 'ReturnControlInvocationResults')
    ReturnControlPayload = Shapes::StructureShape.new(name: 'ReturnControlPayload')
    ReturnControlResults = Shapes::StructureShape.new(name: 'ReturnControlResults')
    RoutingClassifierModelInvocationOutput = Shapes::StructureShape.new(name: 'RoutingClassifierModelInvocationOutput')
    RoutingClassifierTrace = Shapes::UnionShape.new(name: 'RoutingClassifierTrace')
    S3BucketName = Shapes::StringShape.new(name: 'S3BucketName')
    S3Identifier = Shapes::StructureShape.new(name: 'S3Identifier')
    S3Location = Shapes::StructureShape.new(name: 'S3Location')
    S3ObjectDoc = Shapes::StructureShape.new(name: 'S3ObjectDoc')
    S3ObjectFile = Shapes::StructureShape.new(name: 'S3ObjectFile')
    S3ObjectKey = Shapes::StringShape.new(name: 'S3ObjectKey')
    S3Uri = Shapes::StringShape.new(name: 'S3Uri')
    SatisfiedCondition = Shapes::StructureShape.new(name: 'SatisfiedCondition')
    SatisfiedConditions = Shapes::ListShape.new(name: 'SatisfiedConditions')
    SearchType = Shapes::StringShape.new(name: 'SearchType')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    SessionArn = Shapes::StringShape.new(name: 'SessionArn')
    SessionAttributesMap = Shapes::MapShape.new(name: 'SessionAttributesMap')
    SessionId = Shapes::StringShape.new(name: 'SessionId')
    SessionIdentifier = Shapes::StringShape.new(name: 'SessionIdentifier')
    SessionMetadataKey = Shapes::StringShape.new(name: 'SessionMetadataKey')
    SessionMetadataMap = Shapes::MapShape.new(name: 'SessionMetadataMap')
    SessionMetadataValue = Shapes::StringShape.new(name: 'SessionMetadataValue')
    SessionState = Shapes::StructureShape.new(name: 'SessionState')
    SessionStatus = Shapes::StringShape.new(name: 'SessionStatus')
    SessionSummaries = Shapes::ListShape.new(name: 'SessionSummaries')
    SessionSummary = Shapes::StructureShape.new(name: 'SessionSummary')
    SessionTTL = Shapes::IntegerShape.new(name: 'SessionTTL')
    Source = Shapes::StringShape.new(name: 'Source')
    Span = Shapes::StructureShape.new(name: 'Span')
    SpanEndInteger = Shapes::IntegerShape.new(name: 'SpanEndInteger')
    SpanStartInteger = Shapes::IntegerShape.new(name: 'SpanStartInteger')
    StartFlowExecutionRequest = Shapes::StructureShape.new(name: 'StartFlowExecutionRequest')
    StartFlowExecutionResponse = Shapes::StructureShape.new(name: 'StartFlowExecutionResponse')
    StopFlowExecutionRequest = Shapes::StructureShape.new(name: 'StopFlowExecutionRequest')
    StopFlowExecutionResponse = Shapes::StructureShape.new(name: 'StopFlowExecutionResponse')
    StopSequences = Shapes::ListShape.new(name: 'StopSequences')
    StreamingConfigurations = Shapes::StructureShape.new(name: 'StreamingConfigurations')
    StreamingConfigurationsApplyGuardrailIntervalInteger = Shapes::IntegerShape.new(name: 'StreamingConfigurationsApplyGuardrailIntervalInteger')
    String = Shapes::StringShape.new(name: 'String')
    SummaryText = Shapes::StringShape.new(name: 'SummaryText')
    SyntheticTimestamp_date_time = Shapes::TimestampShape.new(name: 'SyntheticTimestamp_date_time', timestampFormat: "iso8601")
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    TaggableResourcesArn = Shapes::StringShape.new(name: 'TaggableResourcesArn')
    TagsMap = Shapes::MapShape.new(name: 'TagsMap')
    Temperature = Shapes::FloatShape.new(name: 'Temperature')
    TextInferenceConfig = Shapes::StructureShape.new(name: 'TextInferenceConfig')
    TextPrompt = Shapes::StructureShape.new(name: 'TextPrompt')
    TextPromptTemplate = Shapes::StringShape.new(name: 'TextPromptTemplate')
    TextPromptTextString = Shapes::StringShape.new(name: 'TextPromptTextString')
    TextResponsePart = Shapes::StructureShape.new(name: 'TextResponsePart')
    TextToSqlConfiguration = Shapes::StructureShape.new(name: 'TextToSqlConfiguration')
    TextToSqlConfigurationType = Shapes::StringShape.new(name: 'TextToSqlConfigurationType')
    TextToSqlKnowledgeBaseConfiguration = Shapes::StructureShape.new(name: 'TextToSqlKnowledgeBaseConfiguration')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    TopK = Shapes::IntegerShape.new(name: 'TopK')
    TopP = Shapes::FloatShape.new(name: 'TopP')
    Trace = Shapes::UnionShape.new(name: 'Trace')
    TraceElements = Shapes::UnionShape.new(name: 'TraceElements')
    TraceId = Shapes::StringShape.new(name: 'TraceId')
    TraceKnowledgeBaseId = Shapes::StringShape.new(name: 'TraceKnowledgeBaseId')
    TracePart = Shapes::StructureShape.new(name: 'TracePart')
    TransformationConfiguration = Shapes::StructureShape.new(name: 'TransformationConfiguration')
    Type = Shapes::StringShape.new(name: 'Type')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateSessionRequest = Shapes::StructureShape.new(name: 'UpdateSessionRequest')
    UpdateSessionResponse = Shapes::StructureShape.new(name: 'UpdateSessionResponse')
    Usage = Shapes::StructureShape.new(name: 'Usage')
    Uuid = Shapes::StringShape.new(name: 'Uuid')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    VectorSearchBedrockRerankingConfiguration = Shapes::StructureShape.new(name: 'VectorSearchBedrockRerankingConfiguration')
    VectorSearchBedrockRerankingConfigurationNumberOfRerankedResultsInteger = Shapes::IntegerShape.new(name: 'VectorSearchBedrockRerankingConfigurationNumberOfRerankedResultsInteger')
    VectorSearchBedrockRerankingModelConfiguration = Shapes::StructureShape.new(name: 'VectorSearchBedrockRerankingModelConfiguration')
    VectorSearchRerankingConfiguration = Shapes::StructureShape.new(name: 'VectorSearchRerankingConfiguration')
    VectorSearchRerankingConfigurationType = Shapes::StringShape.new(name: 'VectorSearchRerankingConfigurationType')
    Verb = Shapes::StringShape.new(name: 'Verb')
    Version = Shapes::StringShape.new(name: 'Version')
    VideoSegment = Shapes::StructureShape.new(name: 'VideoSegment')
    VideoSegmentS3UriString = Shapes::StringShape.new(name: 'VideoSegmentS3UriString')

    APISchema.add_member(:payload, Shapes::ShapeRef.new(shape: Payload, location_name: "payload"))
    APISchema.add_member(:s3, Shapes::ShapeRef.new(shape: S3Identifier, location_name: "s3"))
    APISchema.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    APISchema.add_member_subclass(:payload, Types::APISchema::Payload)
    APISchema.add_member_subclass(:s3, Types::APISchema::S3)
    APISchema.add_member_subclass(:unknown, Types::APISchema::Unknown)
    APISchema.struct_class = Types::APISchema

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    ActionGroupExecutor.add_member(:custom_control, Shapes::ShapeRef.new(shape: CustomControlMethod, location_name: "customControl"))
    ActionGroupExecutor.add_member(:lambda, Shapes::ShapeRef.new(shape: LambdaResourceArn, location_name: "lambda"))
    ActionGroupExecutor.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ActionGroupExecutor.add_member_subclass(:custom_control, Types::ActionGroupExecutor::CustomControl)
    ActionGroupExecutor.add_member_subclass(:lambda, Types::ActionGroupExecutor::Lambda)
    ActionGroupExecutor.add_member_subclass(:unknown, Types::ActionGroupExecutor::Unknown)
    ActionGroupExecutor.struct_class = Types::ActionGroupExecutor

    ActionGroupInvocationInput.add_member(:action_group_name, Shapes::ShapeRef.new(shape: ActionGroupName, location_name: "actionGroupName"))
    ActionGroupInvocationInput.add_member(:api_path, Shapes::ShapeRef.new(shape: ApiPath, location_name: "apiPath"))
    ActionGroupInvocationInput.add_member(:execution_type, Shapes::ShapeRef.new(shape: ExecutionType, location_name: "executionType"))
    ActionGroupInvocationInput.add_member(:function, Shapes::ShapeRef.new(shape: Function, location_name: "function"))
    ActionGroupInvocationInput.add_member(:invocation_id, Shapes::ShapeRef.new(shape: String, location_name: "invocationId"))
    ActionGroupInvocationInput.add_member(:parameters, Shapes::ShapeRef.new(shape: Parameters, location_name: "parameters"))
    ActionGroupInvocationInput.add_member(:request_body, Shapes::ShapeRef.new(shape: RequestBody, location_name: "requestBody"))
    ActionGroupInvocationInput.add_member(:verb, Shapes::ShapeRef.new(shape: Verb, location_name: "verb"))
    ActionGroupInvocationInput.struct_class = Types::ActionGroupInvocationInput

    ActionGroupInvocationOutput.add_member(:metadata, Shapes::ShapeRef.new(shape: Metadata, location_name: "metadata"))
    ActionGroupInvocationOutput.add_member(:text, Shapes::ShapeRef.new(shape: ActionGroupOutputString, location_name: "text"))
    ActionGroupInvocationOutput.struct_class = Types::ActionGroupInvocationOutput

    ActionGroupSignatureParams.key = Shapes::ShapeRef.new(shape: ActionGroupSignatureParamsKeyString)
    ActionGroupSignatureParams.value = Shapes::ShapeRef.new(shape: ActionGroupSignatureParamsValueString)

    AdditionalModelRequestFields.key = Shapes::ShapeRef.new(shape: AdditionalModelRequestFieldsKey)
    AdditionalModelRequestFields.value = Shapes::ShapeRef.new(shape: AdditionalModelRequestFieldsValue)

    AgentActionGroup.add_member(:action_group_executor, Shapes::ShapeRef.new(shape: ActionGroupExecutor, location_name: "actionGroupExecutor"))
    AgentActionGroup.add_member(:action_group_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "actionGroupName"))
    AgentActionGroup.add_member(:api_schema, Shapes::ShapeRef.new(shape: APISchema, location_name: "apiSchema"))
    AgentActionGroup.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "description"))
    AgentActionGroup.add_member(:function_schema, Shapes::ShapeRef.new(shape: FunctionSchema, location_name: "functionSchema"))
    AgentActionGroup.add_member(:parent_action_group_signature, Shapes::ShapeRef.new(shape: ActionGroupSignature, location_name: "parentActionGroupSignature"))
    AgentActionGroup.add_member(:parent_action_group_signature_params, Shapes::ShapeRef.new(shape: ActionGroupSignatureParams, location_name: "parentActionGroupSignatureParams"))
    AgentActionGroup.struct_class = Types::AgentActionGroup

    AgentActionGroups.member = Shapes::ShapeRef.new(shape: AgentActionGroup)

    AgentCollaboratorInputPayload.add_member(:return_control_results, Shapes::ShapeRef.new(shape: ReturnControlResults, location_name: "returnControlResults"))
    AgentCollaboratorInputPayload.add_member(:text, Shapes::ShapeRef.new(shape: AgentCollaboratorPayloadString, location_name: "text"))
    AgentCollaboratorInputPayload.add_member(:type, Shapes::ShapeRef.new(shape: PayloadType, location_name: "type"))
    AgentCollaboratorInputPayload.struct_class = Types::AgentCollaboratorInputPayload

    AgentCollaboratorInvocationInput.add_member(:agent_collaborator_alias_arn, Shapes::ShapeRef.new(shape: AgentAliasArn, location_name: "agentCollaboratorAliasArn"))
    AgentCollaboratorInvocationInput.add_member(:agent_collaborator_name, Shapes::ShapeRef.new(shape: String, location_name: "agentCollaboratorName"))
    AgentCollaboratorInvocationInput.add_member(:input, Shapes::ShapeRef.new(shape: AgentCollaboratorInputPayload, location_name: "input"))
    AgentCollaboratorInvocationInput.struct_class = Types::AgentCollaboratorInvocationInput

    AgentCollaboratorInvocationOutput.add_member(:agent_collaborator_alias_arn, Shapes::ShapeRef.new(shape: AgentAliasArn, location_name: "agentCollaboratorAliasArn"))
    AgentCollaboratorInvocationOutput.add_member(:agent_collaborator_name, Shapes::ShapeRef.new(shape: String, location_name: "agentCollaboratorName"))
    AgentCollaboratorInvocationOutput.add_member(:metadata, Shapes::ShapeRef.new(shape: Metadata, location_name: "metadata"))
    AgentCollaboratorInvocationOutput.add_member(:output, Shapes::ShapeRef.new(shape: AgentCollaboratorOutputPayload, location_name: "output"))
    AgentCollaboratorInvocationOutput.struct_class = Types::AgentCollaboratorInvocationOutput

    AgentCollaboratorOutputPayload.add_member(:return_control_payload, Shapes::ShapeRef.new(shape: ReturnControlPayload, event: true, location_name: "returnControlPayload"))
    AgentCollaboratorOutputPayload.add_member(:text, Shapes::ShapeRef.new(shape: AgentCollaboratorPayloadString, location_name: "text"))
    AgentCollaboratorOutputPayload.add_member(:type, Shapes::ShapeRef.new(shape: PayloadType, location_name: "type"))
    AgentCollaboratorOutputPayload.struct_class = Types::AgentCollaboratorOutputPayload

    AgentTraces.member = Shapes::ShapeRef.new(shape: TracePart, event: true)

    AnalyzePromptEvent.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    AnalyzePromptEvent.struct_class = Types::AnalyzePromptEvent

    ApiContentMap.key = Shapes::ShapeRef.new(shape: String)
    ApiContentMap.value = Shapes::ShapeRef.new(shape: PropertyParameters)

    ApiInvocationInput.add_member(:action_group, Shapes::ShapeRef.new(shape: String, required: true, location_name: "actionGroup"))
    ApiInvocationInput.add_member(:action_invocation_type, Shapes::ShapeRef.new(shape: ActionInvocationType, location_name: "actionInvocationType"))
    ApiInvocationInput.add_member(:agent_id, Shapes::ShapeRef.new(shape: String, location_name: "agentId"))
    ApiInvocationInput.add_member(:api_path, Shapes::ShapeRef.new(shape: ApiPath, location_name: "apiPath"))
    ApiInvocationInput.add_member(:collaborator_name, Shapes::ShapeRef.new(shape: Name, location_name: "collaboratorName"))
    ApiInvocationInput.add_member(:http_method, Shapes::ShapeRef.new(shape: String, location_name: "httpMethod"))
    ApiInvocationInput.add_member(:parameters, Shapes::ShapeRef.new(shape: ApiParameters, location_name: "parameters"))
    ApiInvocationInput.add_member(:request_body, Shapes::ShapeRef.new(shape: ApiRequestBody, location_name: "requestBody"))
    ApiInvocationInput.struct_class = Types::ApiInvocationInput

    ApiParameter.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "name"))
    ApiParameter.add_member(:type, Shapes::ShapeRef.new(shape: String, location_name: "type"))
    ApiParameter.add_member(:value, Shapes::ShapeRef.new(shape: String, location_name: "value"))
    ApiParameter.struct_class = Types::ApiParameter

    ApiParameters.member = Shapes::ShapeRef.new(shape: ApiParameter)

    ApiRequestBody.add_member(:content, Shapes::ShapeRef.new(shape: ApiContentMap, location_name: "content"))
    ApiRequestBody.struct_class = Types::ApiRequestBody

    ApiResult.add_member(:action_group, Shapes::ShapeRef.new(shape: String, required: true, location_name: "actionGroup"))
    ApiResult.add_member(:agent_id, Shapes::ShapeRef.new(shape: String, location_name: "agentId"))
    ApiResult.add_member(:api_path, Shapes::ShapeRef.new(shape: ApiPath, location_name: "apiPath"))
    ApiResult.add_member(:confirmation_state, Shapes::ShapeRef.new(shape: ConfirmationState, location_name: "confirmationState"))
    ApiResult.add_member(:http_method, Shapes::ShapeRef.new(shape: String, location_name: "httpMethod"))
    ApiResult.add_member(:http_status_code, Shapes::ShapeRef.new(shape: Integer, location_name: "httpStatusCode"))
    ApiResult.add_member(:response_body, Shapes::ShapeRef.new(shape: ResponseBody, location_name: "responseBody"))
    ApiResult.add_member(:response_state, Shapes::ShapeRef.new(shape: ResponseState, location_name: "responseState"))
    ApiResult.struct_class = Types::ApiResult

    Attribution.add_member(:citations, Shapes::ShapeRef.new(shape: Citations, location_name: "citations"))
    Attribution.struct_class = Types::Attribution

    AudioSegment.add_member(:s3_uri, Shapes::ShapeRef.new(shape: AudioSegmentS3UriString, required: true, location_name: "s3Uri"))
    AudioSegment.add_member(:transcription, Shapes::ShapeRef.new(shape: String, location_name: "transcription"))
    AudioSegment.struct_class = Types::AudioSegment

    BadGatewayException.add_member(:message, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "message"))
    BadGatewayException.add_member(:resource_name, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "resourceName"))
    BadGatewayException.struct_class = Types::BadGatewayException

    BedrockModelConfigurations.add_member(:performance_config, Shapes::ShapeRef.new(shape: PerformanceConfiguration, location_name: "performanceConfig"))
    BedrockModelConfigurations.struct_class = Types::BedrockModelConfigurations

    BedrockRerankingConfiguration.add_member(:model_configuration, Shapes::ShapeRef.new(shape: BedrockRerankingModelConfiguration, required: true, location_name: "modelConfiguration"))
    BedrockRerankingConfiguration.add_member(:number_of_results, Shapes::ShapeRef.new(shape: BedrockRerankingConfigurationNumberOfResultsInteger, location_name: "numberOfResults"))
    BedrockRerankingConfiguration.struct_class = Types::BedrockRerankingConfiguration

    BedrockRerankingModelConfiguration.add_member(:additional_model_request_fields, Shapes::ShapeRef.new(shape: AdditionalModelRequestFields, location_name: "additionalModelRequestFields"))
    BedrockRerankingModelConfiguration.add_member(:model_arn, Shapes::ShapeRef.new(shape: BedrockModelArn, required: true, location_name: "modelArn"))
    BedrockRerankingModelConfiguration.struct_class = Types::BedrockRerankingModelConfiguration

    BedrockSessionContentBlock.add_member(:image, Shapes::ShapeRef.new(shape: ImageBlock, location_name: "image"))
    BedrockSessionContentBlock.add_member(:text, Shapes::ShapeRef.new(shape: BedrockSessionContentBlockTextString, location_name: "text"))
    BedrockSessionContentBlock.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    BedrockSessionContentBlock.add_member_subclass(:image, Types::BedrockSessionContentBlock::Image)
    BedrockSessionContentBlock.add_member_subclass(:text, Types::BedrockSessionContentBlock::Text)
    BedrockSessionContentBlock.add_member_subclass(:unknown, Types::BedrockSessionContentBlock::Unknown)
    BedrockSessionContentBlock.struct_class = Types::BedrockSessionContentBlock

    BedrockSessionContentBlocks.member = Shapes::ShapeRef.new(shape: BedrockSessionContentBlock)

    ByteContentDoc.add_member(:content_type, Shapes::ShapeRef.new(shape: ContentType, required: true, location_name: "contentType"))
    ByteContentDoc.add_member(:data, Shapes::ShapeRef.new(shape: ByteContentBlob, required: true, location_name: "data"))
    ByteContentDoc.add_member(:identifier, Shapes::ShapeRef.new(shape: Identifier, required: true, location_name: "identifier"))
    ByteContentDoc.struct_class = Types::ByteContentDoc

    ByteContentFile.add_member(:data, Shapes::ShapeRef.new(shape: ByteContentBlob, required: true, location_name: "data"))
    ByteContentFile.add_member(:media_type, Shapes::ShapeRef.new(shape: MimeType, required: true, location_name: "mediaType"))
    ByteContentFile.struct_class = Types::ByteContentFile

    Caller.add_member(:agent_alias_arn, Shapes::ShapeRef.new(shape: AgentAliasArn, location_name: "agentAliasArn"))
    Caller.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    Caller.add_member_subclass(:agent_alias_arn, Types::Caller::AgentAliasArn)
    Caller.add_member_subclass(:unknown, Types::Caller::Unknown)
    Caller.struct_class = Types::Caller

    CallerChain.member = Shapes::ShapeRef.new(shape: Caller)

    Citation.add_member(:generated_response_part, Shapes::ShapeRef.new(shape: GeneratedResponsePart, location_name: "generatedResponsePart"))
    Citation.add_member(:retrieved_references, Shapes::ShapeRef.new(shape: RetrievedReferences, location_name: "retrievedReferences"))
    Citation.struct_class = Types::Citation

    CitationEvent.add_member(:citation, Shapes::ShapeRef.new(shape: Citation, deprecated: true, location_name: "citation", metadata: {"deprecatedMessage" => "Citation is deprecated. Please use GeneratedResponsePart and RetrievedReferences for citation event."}))
    CitationEvent.add_member(:generated_response_part, Shapes::ShapeRef.new(shape: GeneratedResponsePart, location_name: "generatedResponsePart"))
    CitationEvent.add_member(:retrieved_references, Shapes::ShapeRef.new(shape: RetrievedReferences, location_name: "retrievedReferences"))
    CitationEvent.struct_class = Types::CitationEvent

    Citations.member = Shapes::ShapeRef.new(shape: Citation)

    CodeInterpreterInvocationInput.add_member(:code, Shapes::ShapeRef.new(shape: String, location_name: "code"))
    CodeInterpreterInvocationInput.add_member(:files, Shapes::ShapeRef.new(shape: Files, location_name: "files"))
    CodeInterpreterInvocationInput.struct_class = Types::CodeInterpreterInvocationInput

    CodeInterpreterInvocationOutput.add_member(:execution_error, Shapes::ShapeRef.new(shape: String, location_name: "executionError"))
    CodeInterpreterInvocationOutput.add_member(:execution_output, Shapes::ShapeRef.new(shape: String, location_name: "executionOutput"))
    CodeInterpreterInvocationOutput.add_member(:execution_timeout, Shapes::ShapeRef.new(shape: Boolean, location_name: "executionTimeout"))
    CodeInterpreterInvocationOutput.add_member(:files, Shapes::ShapeRef.new(shape: Files, location_name: "files"))
    CodeInterpreterInvocationOutput.add_member(:metadata, Shapes::ShapeRef.new(shape: Metadata, location_name: "metadata"))
    CodeInterpreterInvocationOutput.struct_class = Types::CodeInterpreterInvocationOutput

    Collaborator.add_member(:action_groups, Shapes::ShapeRef.new(shape: AgentActionGroups, location_name: "actionGroups"))
    Collaborator.add_member(:agent_collaboration, Shapes::ShapeRef.new(shape: AgentCollaboration, location_name: "agentCollaboration"))
    Collaborator.add_member(:agent_name, Shapes::ShapeRef.new(shape: Name, location_name: "agentName"))
    Collaborator.add_member(:collaborator_configurations, Shapes::ShapeRef.new(shape: CollaboratorConfigurations, location_name: "collaboratorConfigurations"))
    Collaborator.add_member(:customer_encryption_key_arn, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "customerEncryptionKeyArn"))
    Collaborator.add_member(:foundation_model, Shapes::ShapeRef.new(shape: ModelIdentifier, required: true, location_name: "foundationModel"))
    Collaborator.add_member(:guardrail_configuration, Shapes::ShapeRef.new(shape: GuardrailConfigurationWithArn, location_name: "guardrailConfiguration"))
    Collaborator.add_member(:idle_session_ttl_in_seconds, Shapes::ShapeRef.new(shape: SessionTTL, location_name: "idleSessionTTLInSeconds"))
    Collaborator.add_member(:instruction, Shapes::ShapeRef.new(shape: Instruction, required: true, location_name: "instruction"))
    Collaborator.add_member(:knowledge_bases, Shapes::ShapeRef.new(shape: KnowledgeBases, location_name: "knowledgeBases"))
    Collaborator.add_member(:prompt_override_configuration, Shapes::ShapeRef.new(shape: PromptOverrideConfiguration, location_name: "promptOverrideConfiguration"))
    Collaborator.struct_class = Types::Collaborator

    CollaboratorConfiguration.add_member(:agent_alias_arn, Shapes::ShapeRef.new(shape: AgentAliasArn, location_name: "agentAliasArn"))
    CollaboratorConfiguration.add_member(:collaborator_instruction, Shapes::ShapeRef.new(shape: CollaborationInstruction, required: true, location_name: "collaboratorInstruction"))
    CollaboratorConfiguration.add_member(:collaborator_name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "collaboratorName"))
    CollaboratorConfiguration.add_member(:relay_conversation_history, Shapes::ShapeRef.new(shape: RelayConversationHistory, location_name: "relayConversationHistory"))
    CollaboratorConfiguration.struct_class = Types::CollaboratorConfiguration

    CollaboratorConfigurations.member = Shapes::ShapeRef.new(shape: CollaboratorConfiguration)

    Collaborators.member = Shapes::ShapeRef.new(shape: Collaborator)

    ConditionResultEvent.add_member(:node_name, Shapes::ShapeRef.new(shape: NodeName, required: true, location_name: "nodeName"))
    ConditionResultEvent.add_member(:satisfied_conditions, Shapes::ShapeRef.new(shape: SatisfiedConditions, required: true, location_name: "satisfiedConditions"))
    ConditionResultEvent.add_member(:timestamp, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "timestamp"))
    ConditionResultEvent.struct_class = Types::ConditionResultEvent

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "message"))
    ConflictException.struct_class = Types::ConflictException

    ContentBlock.add_member(:text, Shapes::ShapeRef.new(shape: String, location_name: "text"))
    ContentBlock.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ContentBlock.add_member_subclass(:text, Types::ContentBlock::Text)
    ContentBlock.add_member_subclass(:unknown, Types::ContentBlock::Unknown)
    ContentBlock.struct_class = Types::ContentBlock

    ContentBlocks.member = Shapes::ShapeRef.new(shape: ContentBlock)

    ContentBody.add_member(:body, Shapes::ShapeRef.new(shape: String, location_name: "body"))
    ContentBody.add_member(:images, Shapes::ShapeRef.new(shape: ImageInputs, location_name: "images"))
    ContentBody.struct_class = Types::ContentBody

    ContentMap.key = Shapes::ShapeRef.new(shape: String)
    ContentMap.value = Shapes::ShapeRef.new(shape: Parameters)

    ConversationHistory.add_member(:messages, Shapes::ShapeRef.new(shape: Messages, location_name: "messages"))
    ConversationHistory.struct_class = Types::ConversationHistory

    CreateInvocationRequest.add_member(:description, Shapes::ShapeRef.new(shape: InvocationDescription, location_name: "description"))
    CreateInvocationRequest.add_member(:invocation_id, Shapes::ShapeRef.new(shape: Uuid, location_name: "invocationId"))
    CreateInvocationRequest.add_member(:session_identifier, Shapes::ShapeRef.new(shape: SessionIdentifier, required: true, location: "uri", location_name: "sessionIdentifier"))
    CreateInvocationRequest.struct_class = Types::CreateInvocationRequest

    CreateInvocationResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "createdAt"))
    CreateInvocationResponse.add_member(:invocation_id, Shapes::ShapeRef.new(shape: Uuid, required: true, location_name: "invocationId"))
    CreateInvocationResponse.add_member(:session_id, Shapes::ShapeRef.new(shape: Uuid, required: true, location_name: "sessionId"))
    CreateInvocationResponse.struct_class = Types::CreateInvocationResponse

    CreateSessionRequest.add_member(:encryption_key_arn, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "encryptionKeyArn"))
    CreateSessionRequest.add_member(:session_metadata, Shapes::ShapeRef.new(shape: SessionMetadataMap, location_name: "sessionMetadata"))
    CreateSessionRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    CreateSessionRequest.struct_class = Types::CreateSessionRequest

    CreateSessionResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "createdAt"))
    CreateSessionResponse.add_member(:session_arn, Shapes::ShapeRef.new(shape: SessionArn, required: true, location_name: "sessionArn"))
    CreateSessionResponse.add_member(:session_id, Shapes::ShapeRef.new(shape: Uuid, required: true, location_name: "sessionId"))
    CreateSessionResponse.add_member(:session_status, Shapes::ShapeRef.new(shape: SessionStatus, required: true, location_name: "sessionStatus"))
    CreateSessionResponse.struct_class = Types::CreateSessionResponse

    CustomOrchestration.add_member(:executor, Shapes::ShapeRef.new(shape: OrchestrationExecutor, location_name: "executor"))
    CustomOrchestration.struct_class = Types::CustomOrchestration

    CustomOrchestrationTrace.add_member(:event, Shapes::ShapeRef.new(shape: CustomOrchestrationTraceEvent, location_name: "event"))
    CustomOrchestrationTrace.add_member(:trace_id, Shapes::ShapeRef.new(shape: TraceId, location_name: "traceId"))
    CustomOrchestrationTrace.struct_class = Types::CustomOrchestrationTrace

    CustomOrchestrationTraceEvent.add_member(:text, Shapes::ShapeRef.new(shape: String, location_name: "text"))
    CustomOrchestrationTraceEvent.struct_class = Types::CustomOrchestrationTraceEvent

    DeleteAgentMemoryRequest.add_member(:agent_alias_id, Shapes::ShapeRef.new(shape: AgentAliasId, required: true, location: "uri", location_name: "agentAliasId"))
    DeleteAgentMemoryRequest.add_member(:agent_id, Shapes::ShapeRef.new(shape: AgentId, required: true, location: "uri", location_name: "agentId"))
    DeleteAgentMemoryRequest.add_member(:memory_id, Shapes::ShapeRef.new(shape: MemoryId, location: "querystring", location_name: "memoryId"))
    DeleteAgentMemoryRequest.add_member(:session_id, Shapes::ShapeRef.new(shape: SessionId, location: "querystring", location_name: "sessionId"))
    DeleteAgentMemoryRequest.struct_class = Types::DeleteAgentMemoryRequest

    DeleteAgentMemoryResponse.struct_class = Types::DeleteAgentMemoryResponse

    DeleteSessionRequest.add_member(:session_identifier, Shapes::ShapeRef.new(shape: SessionIdentifier, required: true, location: "uri", location_name: "sessionIdentifier"))
    DeleteSessionRequest.struct_class = Types::DeleteSessionRequest

    DeleteSessionResponse.struct_class = Types::DeleteSessionResponse

    DependencyFailedException.add_member(:message, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "message"))
    DependencyFailedException.add_member(:resource_name, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "resourceName"))
    DependencyFailedException.struct_class = Types::DependencyFailedException

    EndSessionRequest.add_member(:session_identifier, Shapes::ShapeRef.new(shape: SessionIdentifier, required: true, location: "uri", location_name: "sessionIdentifier"))
    EndSessionRequest.struct_class = Types::EndSessionRequest

    EndSessionResponse.add_member(:session_arn, Shapes::ShapeRef.new(shape: SessionArn, required: true, location_name: "sessionArn"))
    EndSessionResponse.add_member(:session_id, Shapes::ShapeRef.new(shape: Uuid, required: true, location_name: "sessionId"))
    EndSessionResponse.add_member(:session_status, Shapes::ShapeRef.new(shape: SessionStatus, required: true, location_name: "sessionStatus"))
    EndSessionResponse.struct_class = Types::EndSessionResponse

    ExternalSource.add_member(:byte_content, Shapes::ShapeRef.new(shape: ByteContentDoc, location_name: "byteContent"))
    ExternalSource.add_member(:s3_location, Shapes::ShapeRef.new(shape: S3ObjectDoc, location_name: "s3Location"))
    ExternalSource.add_member(:source_type, Shapes::ShapeRef.new(shape: ExternalSourceType, required: true, location_name: "sourceType"))
    ExternalSource.struct_class = Types::ExternalSource

    ExternalSources.member = Shapes::ShapeRef.new(shape: ExternalSource)

    ExternalSourcesGenerationConfiguration.add_member(:additional_model_request_fields, Shapes::ShapeRef.new(shape: AdditionalModelRequestFields, location_name: "additionalModelRequestFields"))
    ExternalSourcesGenerationConfiguration.add_member(:guardrail_configuration, Shapes::ShapeRef.new(shape: GuardrailConfiguration, location_name: "guardrailConfiguration"))
    ExternalSourcesGenerationConfiguration.add_member(:inference_config, Shapes::ShapeRef.new(shape: InferenceConfig, location_name: "inferenceConfig"))
    ExternalSourcesGenerationConfiguration.add_member(:performance_config, Shapes::ShapeRef.new(shape: PerformanceConfiguration, location_name: "performanceConfig"))
    ExternalSourcesGenerationConfiguration.add_member(:prompt_template, Shapes::ShapeRef.new(shape: PromptTemplate, location_name: "promptTemplate"))
    ExternalSourcesGenerationConfiguration.struct_class = Types::ExternalSourcesGenerationConfiguration

    ExternalSourcesRetrieveAndGenerateConfiguration.add_member(:generation_configuration, Shapes::ShapeRef.new(shape: ExternalSourcesGenerationConfiguration, location_name: "generationConfiguration"))
    ExternalSourcesRetrieveAndGenerateConfiguration.add_member(:model_arn, Shapes::ShapeRef.new(shape: BedrockModelArn, required: true, location_name: "modelArn"))
    ExternalSourcesRetrieveAndGenerateConfiguration.add_member(:sources, Shapes::ShapeRef.new(shape: ExternalSources, required: true, location_name: "sources"))
    ExternalSourcesRetrieveAndGenerateConfiguration.struct_class = Types::ExternalSourcesRetrieveAndGenerateConfiguration

    FailureTrace.add_member(:failure_code, Shapes::ShapeRef.new(shape: Integer, location_name: "failureCode"))
    FailureTrace.add_member(:failure_reason, Shapes::ShapeRef.new(shape: FailureReasonString, location_name: "failureReason"))
    FailureTrace.add_member(:metadata, Shapes::ShapeRef.new(shape: Metadata, location_name: "metadata"))
    FailureTrace.add_member(:trace_id, Shapes::ShapeRef.new(shape: TraceId, location_name: "traceId"))
    FailureTrace.struct_class = Types::FailureTrace

    FieldForReranking.add_member(:field_name, Shapes::ShapeRef.new(shape: FieldForRerankingFieldNameString, required: true, location_name: "fieldName"))
    FieldForReranking.struct_class = Types::FieldForReranking

    FieldsForReranking.member = Shapes::ShapeRef.new(shape: FieldForReranking)

    FilePart.add_member(:files, Shapes::ShapeRef.new(shape: OutputFiles, location_name: "files"))
    FilePart.struct_class = Types::FilePart

    FileSource.add_member(:byte_content, Shapes::ShapeRef.new(shape: ByteContentFile, location_name: "byteContent"))
    FileSource.add_member(:s3_location, Shapes::ShapeRef.new(shape: S3ObjectFile, location_name: "s3Location"))
    FileSource.add_member(:source_type, Shapes::ShapeRef.new(shape: FileSourceType, required: true, location_name: "sourceType"))
    FileSource.struct_class = Types::FileSource

    Files.member = Shapes::ShapeRef.new(shape: String)

    FilterAttribute.add_member(:key, Shapes::ShapeRef.new(shape: FilterKey, required: true, location_name: "key"))
    FilterAttribute.add_member(:value, Shapes::ShapeRef.new(shape: FilterValue, required: true, location_name: "value"))
    FilterAttribute.struct_class = Types::FilterAttribute

    FinalResponse.add_member(:metadata, Shapes::ShapeRef.new(shape: Metadata, location_name: "metadata"))
    FinalResponse.add_member(:text, Shapes::ShapeRef.new(shape: FinalResponseString, location_name: "text"))
    FinalResponse.struct_class = Types::FinalResponse

    FlowCompletionEvent.add_member(:completion_reason, Shapes::ShapeRef.new(shape: FlowCompletionReason, required: true, location_name: "completionReason"))
    FlowCompletionEvent.struct_class = Types::FlowCompletionEvent

    FlowExecutionContent.add_member(:document, Shapes::ShapeRef.new(shape: Document, location_name: "document"))
    FlowExecutionContent.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    FlowExecutionContent.add_member_subclass(:document, Types::FlowExecutionContent::Document)
    FlowExecutionContent.add_member_subclass(:unknown, Types::FlowExecutionContent::Unknown)
    FlowExecutionContent.struct_class = Types::FlowExecutionContent

    FlowExecutionError.add_member(:error, Shapes::ShapeRef.new(shape: FlowExecutionErrorType, location_name: "error"))
    FlowExecutionError.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    FlowExecutionError.add_member(:node_name, Shapes::ShapeRef.new(shape: NodeName, location_name: "nodeName"))
    FlowExecutionError.struct_class = Types::FlowExecutionError

    FlowExecutionErrors.member = Shapes::ShapeRef.new(shape: FlowExecutionError)

    FlowExecutionEvent.add_member(:condition_result_event, Shapes::ShapeRef.new(shape: ConditionResultEvent, location_name: "conditionResultEvent"))
    FlowExecutionEvent.add_member(:flow_failure_event, Shapes::ShapeRef.new(shape: FlowFailureEvent, location_name: "flowFailureEvent"))
    FlowExecutionEvent.add_member(:flow_input_event, Shapes::ShapeRef.new(shape: FlowExecutionInputEvent, location_name: "flowInputEvent"))
    FlowExecutionEvent.add_member(:flow_output_event, Shapes::ShapeRef.new(shape: FlowExecutionOutputEvent, location_name: "flowOutputEvent"))
    FlowExecutionEvent.add_member(:node_action_event, Shapes::ShapeRef.new(shape: NodeActionEvent, location_name: "nodeActionEvent"))
    FlowExecutionEvent.add_member(:node_dependency_event, Shapes::ShapeRef.new(shape: NodeDependencyEvent, location_name: "nodeDependencyEvent"))
    FlowExecutionEvent.add_member(:node_failure_event, Shapes::ShapeRef.new(shape: NodeFailureEvent, location_name: "nodeFailureEvent"))
    FlowExecutionEvent.add_member(:node_input_event, Shapes::ShapeRef.new(shape: NodeInputEvent, location_name: "nodeInputEvent"))
    FlowExecutionEvent.add_member(:node_output_event, Shapes::ShapeRef.new(shape: NodeOutputEvent, location_name: "nodeOutputEvent"))
    FlowExecutionEvent.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    FlowExecutionEvent.add_member_subclass(:condition_result_event, Types::FlowExecutionEvent::ConditionResultEvent)
    FlowExecutionEvent.add_member_subclass(:flow_failure_event, Types::FlowExecutionEvent::FlowFailureEvent)
    FlowExecutionEvent.add_member_subclass(:flow_input_event, Types::FlowExecutionEvent::FlowInputEvent)
    FlowExecutionEvent.add_member_subclass(:flow_output_event, Types::FlowExecutionEvent::FlowOutputEvent)
    FlowExecutionEvent.add_member_subclass(:node_action_event, Types::FlowExecutionEvent::NodeActionEvent)
    FlowExecutionEvent.add_member_subclass(:node_dependency_event, Types::FlowExecutionEvent::NodeDependencyEvent)
    FlowExecutionEvent.add_member_subclass(:node_failure_event, Types::FlowExecutionEvent::NodeFailureEvent)
    FlowExecutionEvent.add_member_subclass(:node_input_event, Types::FlowExecutionEvent::NodeInputEvent)
    FlowExecutionEvent.add_member_subclass(:node_output_event, Types::FlowExecutionEvent::NodeOutputEvent)
    FlowExecutionEvent.add_member_subclass(:unknown, Types::FlowExecutionEvent::Unknown)
    FlowExecutionEvent.struct_class = Types::FlowExecutionEvent

    FlowExecutionEvents.member = Shapes::ShapeRef.new(shape: FlowExecutionEvent)

    FlowExecutionInputEvent.add_member(:fields, Shapes::ShapeRef.new(shape: FlowInputFields, required: true, location_name: "fields"))
    FlowExecutionInputEvent.add_member(:node_name, Shapes::ShapeRef.new(shape: NodeName, required: true, location_name: "nodeName"))
    FlowExecutionInputEvent.add_member(:timestamp, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "timestamp"))
    FlowExecutionInputEvent.struct_class = Types::FlowExecutionInputEvent

    FlowExecutionOutputEvent.add_member(:fields, Shapes::ShapeRef.new(shape: FlowOutputFields, required: true, location_name: "fields"))
    FlowExecutionOutputEvent.add_member(:node_name, Shapes::ShapeRef.new(shape: NodeName, required: true, location_name: "nodeName"))
    FlowExecutionOutputEvent.add_member(:timestamp, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "timestamp"))
    FlowExecutionOutputEvent.struct_class = Types::FlowExecutionOutputEvent

    FlowExecutionSummaries.member = Shapes::ShapeRef.new(shape: FlowExecutionSummary)

    FlowExecutionSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "createdAt"))
    FlowExecutionSummary.add_member(:ended_at, Shapes::ShapeRef.new(shape: DateTimestamp, location_name: "endedAt"))
    FlowExecutionSummary.add_member(:execution_arn, Shapes::ShapeRef.new(shape: FlowExecutionIdentifier, required: true, location_name: "executionArn"))
    FlowExecutionSummary.add_member(:flow_alias_identifier, Shapes::ShapeRef.new(shape: FlowAliasIdentifier, required: true, location_name: "flowAliasIdentifier"))
    FlowExecutionSummary.add_member(:flow_identifier, Shapes::ShapeRef.new(shape: FlowIdentifier, required: true, location_name: "flowIdentifier"))
    FlowExecutionSummary.add_member(:flow_version, Shapes::ShapeRef.new(shape: Version, required: true, location_name: "flowVersion"))
    FlowExecutionSummary.add_member(:status, Shapes::ShapeRef.new(shape: FlowExecutionStatus, required: true, location_name: "status"))
    FlowExecutionSummary.struct_class = Types::FlowExecutionSummary

    FlowFailureEvent.add_member(:error_code, Shapes::ShapeRef.new(shape: FlowErrorCode, required: true, location_name: "errorCode"))
    FlowFailureEvent.add_member(:error_message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "errorMessage"))
    FlowFailureEvent.add_member(:timestamp, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "timestamp"))
    FlowFailureEvent.struct_class = Types::FlowFailureEvent

    FlowInput.add_member(:content, Shapes::ShapeRef.new(shape: FlowInputContent, required: true, location_name: "content"))
    FlowInput.add_member(:node_input_name, Shapes::ShapeRef.new(shape: NodeInputName, location_name: "nodeInputName"))
    FlowInput.add_member(:node_name, Shapes::ShapeRef.new(shape: NodeName, required: true, location_name: "nodeName"))
    FlowInput.add_member(:node_output_name, Shapes::ShapeRef.new(shape: NodeOutputName, location_name: "nodeOutputName"))
    FlowInput.struct_class = Types::FlowInput

    FlowInputContent.add_member(:document, Shapes::ShapeRef.new(shape: Document, location_name: "document"))
    FlowInputContent.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    FlowInputContent.add_member_subclass(:document, Types::FlowInputContent::Document)
    FlowInputContent.add_member_subclass(:unknown, Types::FlowInputContent::Unknown)
    FlowInputContent.struct_class = Types::FlowInputContent

    FlowInputField.add_member(:content, Shapes::ShapeRef.new(shape: FlowExecutionContent, required: true, location_name: "content"))
    FlowInputField.add_member(:name, Shapes::ShapeRef.new(shape: NodeInputName, required: true, location_name: "name"))
    FlowInputField.struct_class = Types::FlowInputField

    FlowInputFields.member = Shapes::ShapeRef.new(shape: FlowInputField)

    FlowInputs.member = Shapes::ShapeRef.new(shape: FlowInput)

    FlowMultiTurnInputContent.add_member(:document, Shapes::ShapeRef.new(shape: Document, location_name: "document"))
    FlowMultiTurnInputContent.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    FlowMultiTurnInputContent.add_member_subclass(:document, Types::FlowMultiTurnInputContent::Document)
    FlowMultiTurnInputContent.add_member_subclass(:unknown, Types::FlowMultiTurnInputContent::Unknown)
    FlowMultiTurnInputContent.struct_class = Types::FlowMultiTurnInputContent

    FlowMultiTurnInputRequestEvent.add_member(:content, Shapes::ShapeRef.new(shape: FlowMultiTurnInputContent, required: true, location_name: "content"))
    FlowMultiTurnInputRequestEvent.add_member(:node_name, Shapes::ShapeRef.new(shape: NodeName, required: true, location_name: "nodeName"))
    FlowMultiTurnInputRequestEvent.add_member(:node_type, Shapes::ShapeRef.new(shape: NodeType, required: true, location_name: "nodeType"))
    FlowMultiTurnInputRequestEvent.struct_class = Types::FlowMultiTurnInputRequestEvent

    FlowOutputContent.add_member(:document, Shapes::ShapeRef.new(shape: Document, location_name: "document"))
    FlowOutputContent.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    FlowOutputContent.add_member_subclass(:document, Types::FlowOutputContent::Document)
    FlowOutputContent.add_member_subclass(:unknown, Types::FlowOutputContent::Unknown)
    FlowOutputContent.struct_class = Types::FlowOutputContent

    FlowOutputEvent.add_member(:content, Shapes::ShapeRef.new(shape: FlowOutputContent, required: true, location_name: "content"))
    FlowOutputEvent.add_member(:node_name, Shapes::ShapeRef.new(shape: NodeName, required: true, location_name: "nodeName"))
    FlowOutputEvent.add_member(:node_type, Shapes::ShapeRef.new(shape: NodeType, required: true, location_name: "nodeType"))
    FlowOutputEvent.struct_class = Types::FlowOutputEvent

    FlowOutputField.add_member(:content, Shapes::ShapeRef.new(shape: FlowExecutionContent, required: true, location_name: "content"))
    FlowOutputField.add_member(:name, Shapes::ShapeRef.new(shape: NodeOutputName, required: true, location_name: "name"))
    FlowOutputField.struct_class = Types::FlowOutputField

    FlowOutputFields.member = Shapes::ShapeRef.new(shape: FlowOutputField)

    FlowResponseStream.add_member(:access_denied_exception, Shapes::ShapeRef.new(shape: AccessDeniedException, location_name: "accessDeniedException"))
    FlowResponseStream.add_member(:bad_gateway_exception, Shapes::ShapeRef.new(shape: BadGatewayException, location_name: "badGatewayException"))
    FlowResponseStream.add_member(:conflict_exception, Shapes::ShapeRef.new(shape: ConflictException, location_name: "conflictException"))
    FlowResponseStream.add_member(:dependency_failed_exception, Shapes::ShapeRef.new(shape: DependencyFailedException, location_name: "dependencyFailedException"))
    FlowResponseStream.add_member(:flow_completion_event, Shapes::ShapeRef.new(shape: FlowCompletionEvent, event: true, location_name: "flowCompletionEvent"))
    FlowResponseStream.add_member(:flow_multi_turn_input_request_event, Shapes::ShapeRef.new(shape: FlowMultiTurnInputRequestEvent, event: true, location_name: "flowMultiTurnInputRequestEvent"))
    FlowResponseStream.add_member(:flow_output_event, Shapes::ShapeRef.new(shape: FlowOutputEvent, event: true, location_name: "flowOutputEvent"))
    FlowResponseStream.add_member(:flow_trace_event, Shapes::ShapeRef.new(shape: FlowTraceEvent, event: true, location_name: "flowTraceEvent"))
    FlowResponseStream.add_member(:internal_server_exception, Shapes::ShapeRef.new(shape: InternalServerException, location_name: "internalServerException"))
    FlowResponseStream.add_member(:resource_not_found_exception, Shapes::ShapeRef.new(shape: ResourceNotFoundException, location_name: "resourceNotFoundException"))
    FlowResponseStream.add_member(:service_quota_exceeded_exception, Shapes::ShapeRef.new(shape: ServiceQuotaExceededException, location_name: "serviceQuotaExceededException"))
    FlowResponseStream.add_member(:throttling_exception, Shapes::ShapeRef.new(shape: ThrottlingException, location_name: "throttlingException"))
    FlowResponseStream.add_member(:validation_exception, Shapes::ShapeRef.new(shape: ValidationException, location_name: "validationException"))
    FlowResponseStream.struct_class = Types::FlowResponseStream

    FlowTrace.add_member(:condition_node_result_trace, Shapes::ShapeRef.new(shape: FlowTraceConditionNodeResultEvent, location_name: "conditionNodeResultTrace"))
    FlowTrace.add_member(:node_action_trace, Shapes::ShapeRef.new(shape: FlowTraceNodeActionEvent, location_name: "nodeActionTrace"))
    FlowTrace.add_member(:node_dependency_trace, Shapes::ShapeRef.new(shape: FlowTraceDependencyEvent, location_name: "nodeDependencyTrace"))
    FlowTrace.add_member(:node_input_trace, Shapes::ShapeRef.new(shape: FlowTraceNodeInputEvent, location_name: "nodeInputTrace"))
    FlowTrace.add_member(:node_output_trace, Shapes::ShapeRef.new(shape: FlowTraceNodeOutputEvent, location_name: "nodeOutputTrace"))
    FlowTrace.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    FlowTrace.add_member_subclass(:condition_node_result_trace, Types::FlowTrace::ConditionNodeResultTrace)
    FlowTrace.add_member_subclass(:node_action_trace, Types::FlowTrace::NodeActionTrace)
    FlowTrace.add_member_subclass(:node_dependency_trace, Types::FlowTrace::NodeDependencyTrace)
    FlowTrace.add_member_subclass(:node_input_trace, Types::FlowTrace::NodeInputTrace)
    FlowTrace.add_member_subclass(:node_output_trace, Types::FlowTrace::NodeOutputTrace)
    FlowTrace.add_member_subclass(:unknown, Types::FlowTrace::Unknown)
    FlowTrace.struct_class = Types::FlowTrace

    FlowTraceCondition.add_member(:condition_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "conditionName"))
    FlowTraceCondition.struct_class = Types::FlowTraceCondition

    FlowTraceConditionNodeResultEvent.add_member(:node_name, Shapes::ShapeRef.new(shape: NodeName, required: true, location_name: "nodeName"))
    FlowTraceConditionNodeResultEvent.add_member(:satisfied_conditions, Shapes::ShapeRef.new(shape: FlowTraceConditions, required: true, location_name: "satisfiedConditions"))
    FlowTraceConditionNodeResultEvent.add_member(:timestamp, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "timestamp"))
    FlowTraceConditionNodeResultEvent.struct_class = Types::FlowTraceConditionNodeResultEvent

    FlowTraceConditions.member = Shapes::ShapeRef.new(shape: FlowTraceCondition)

    FlowTraceDependencyEvent.add_member(:node_name, Shapes::ShapeRef.new(shape: NodeName, required: true, location_name: "nodeName"))
    FlowTraceDependencyEvent.add_member(:timestamp, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "timestamp"))
    FlowTraceDependencyEvent.add_member(:trace_elements, Shapes::ShapeRef.new(shape: TraceElements, required: true, location_name: "traceElements"))
    FlowTraceDependencyEvent.struct_class = Types::FlowTraceDependencyEvent

    FlowTraceEvent.add_member(:trace, Shapes::ShapeRef.new(shape: FlowTrace, required: true, location_name: "trace"))
    FlowTraceEvent.struct_class = Types::FlowTraceEvent

    FlowTraceNodeActionEvent.add_member(:node_name, Shapes::ShapeRef.new(shape: NodeName, required: true, location_name: "nodeName"))
    FlowTraceNodeActionEvent.add_member(:operation_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "operationName"))
    FlowTraceNodeActionEvent.add_member(:operation_request, Shapes::ShapeRef.new(shape: Document, location_name: "operationRequest"))
    FlowTraceNodeActionEvent.add_member(:operation_response, Shapes::ShapeRef.new(shape: Document, location_name: "operationResponse"))
    FlowTraceNodeActionEvent.add_member(:request_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "requestId"))
    FlowTraceNodeActionEvent.add_member(:service_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "serviceName"))
    FlowTraceNodeActionEvent.add_member(:timestamp, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "timestamp"))
    FlowTraceNodeActionEvent.struct_class = Types::FlowTraceNodeActionEvent

    FlowTraceNodeInputContent.add_member(:document, Shapes::ShapeRef.new(shape: Document, location_name: "document"))
    FlowTraceNodeInputContent.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    FlowTraceNodeInputContent.add_member_subclass(:document, Types::FlowTraceNodeInputContent::Document)
    FlowTraceNodeInputContent.add_member_subclass(:unknown, Types::FlowTraceNodeInputContent::Unknown)
    FlowTraceNodeInputContent.struct_class = Types::FlowTraceNodeInputContent

    FlowTraceNodeInputEvent.add_member(:fields, Shapes::ShapeRef.new(shape: FlowTraceNodeInputFields, required: true, location_name: "fields"))
    FlowTraceNodeInputEvent.add_member(:node_name, Shapes::ShapeRef.new(shape: NodeName, required: true, location_name: "nodeName"))
    FlowTraceNodeInputEvent.add_member(:timestamp, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "timestamp"))
    FlowTraceNodeInputEvent.struct_class = Types::FlowTraceNodeInputEvent

    FlowTraceNodeInputExecutionChain.member = Shapes::ShapeRef.new(shape: FlowTraceNodeInputExecutionChainItem)

    FlowTraceNodeInputExecutionChainItem.add_member(:index, Shapes::ShapeRef.new(shape: Integer, location_name: "index"))
    FlowTraceNodeInputExecutionChainItem.add_member(:node_name, Shapes::ShapeRef.new(shape: NodeName, required: true, location_name: "nodeName"))
    FlowTraceNodeInputExecutionChainItem.add_member(:type, Shapes::ShapeRef.new(shape: FlowControlNodeType, required: true, location_name: "type"))
    FlowTraceNodeInputExecutionChainItem.struct_class = Types::FlowTraceNodeInputExecutionChainItem

    FlowTraceNodeInputField.add_member(:category, Shapes::ShapeRef.new(shape: FlowNodeInputCategory, location_name: "category"))
    FlowTraceNodeInputField.add_member(:content, Shapes::ShapeRef.new(shape: FlowTraceNodeInputContent, required: true, location_name: "content"))
    FlowTraceNodeInputField.add_member(:execution_chain, Shapes::ShapeRef.new(shape: FlowTraceNodeInputExecutionChain, location_name: "executionChain"))
    FlowTraceNodeInputField.add_member(:node_input_name, Shapes::ShapeRef.new(shape: NodeInputName, required: true, location_name: "nodeInputName"))
    FlowTraceNodeInputField.add_member(:source, Shapes::ShapeRef.new(shape: FlowTraceNodeInputSource, location_name: "source"))
    FlowTraceNodeInputField.add_member(:type, Shapes::ShapeRef.new(shape: FlowNodeIODataType, location_name: "type"))
    FlowTraceNodeInputField.struct_class = Types::FlowTraceNodeInputField

    FlowTraceNodeInputFields.member = Shapes::ShapeRef.new(shape: FlowTraceNodeInputField)

    FlowTraceNodeInputSource.add_member(:expression, Shapes::ShapeRef.new(shape: FlowNodeInputExpression, required: true, location_name: "expression"))
    FlowTraceNodeInputSource.add_member(:node_name, Shapes::ShapeRef.new(shape: NodeName, required: true, location_name: "nodeName"))
    FlowTraceNodeInputSource.add_member(:output_field_name, Shapes::ShapeRef.new(shape: FlowNodeOutputName, required: true, location_name: "outputFieldName"))
    FlowTraceNodeInputSource.struct_class = Types::FlowTraceNodeInputSource

    FlowTraceNodeOutputContent.add_member(:document, Shapes::ShapeRef.new(shape: Document, location_name: "document"))
    FlowTraceNodeOutputContent.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    FlowTraceNodeOutputContent.add_member_subclass(:document, Types::FlowTraceNodeOutputContent::Document)
    FlowTraceNodeOutputContent.add_member_subclass(:unknown, Types::FlowTraceNodeOutputContent::Unknown)
    FlowTraceNodeOutputContent.struct_class = Types::FlowTraceNodeOutputContent

    FlowTraceNodeOutputEvent.add_member(:fields, Shapes::ShapeRef.new(shape: FlowTraceNodeOutputFields, required: true, location_name: "fields"))
    FlowTraceNodeOutputEvent.add_member(:node_name, Shapes::ShapeRef.new(shape: NodeName, required: true, location_name: "nodeName"))
    FlowTraceNodeOutputEvent.add_member(:timestamp, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "timestamp"))
    FlowTraceNodeOutputEvent.struct_class = Types::FlowTraceNodeOutputEvent

    FlowTraceNodeOutputField.add_member(:content, Shapes::ShapeRef.new(shape: FlowTraceNodeOutputContent, required: true, location_name: "content"))
    FlowTraceNodeOutputField.add_member(:next, Shapes::ShapeRef.new(shape: FlowTraceNodeOutputNextList, location_name: "next"))
    FlowTraceNodeOutputField.add_member(:node_output_name, Shapes::ShapeRef.new(shape: NodeOutputName, required: true, location_name: "nodeOutputName"))
    FlowTraceNodeOutputField.add_member(:type, Shapes::ShapeRef.new(shape: FlowNodeIODataType, location_name: "type"))
    FlowTraceNodeOutputField.struct_class = Types::FlowTraceNodeOutputField

    FlowTraceNodeOutputFields.member = Shapes::ShapeRef.new(shape: FlowTraceNodeOutputField)

    FlowTraceNodeOutputNext.add_member(:input_field_name, Shapes::ShapeRef.new(shape: FlowNodeInputName, required: true, location_name: "inputFieldName"))
    FlowTraceNodeOutputNext.add_member(:node_name, Shapes::ShapeRef.new(shape: NodeName, required: true, location_name: "nodeName"))
    FlowTraceNodeOutputNext.struct_class = Types::FlowTraceNodeOutputNext

    FlowTraceNodeOutputNextList.member = Shapes::ShapeRef.new(shape: FlowTraceNodeOutputNext)

    FunctionDefinition.add_member(:description, Shapes::ShapeRef.new(shape: FunctionDescription, location_name: "description"))
    FunctionDefinition.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "name"))
    FunctionDefinition.add_member(:parameters, Shapes::ShapeRef.new(shape: ParameterMap, location_name: "parameters"))
    FunctionDefinition.add_member(:require_confirmation, Shapes::ShapeRef.new(shape: RequireConfirmation, location_name: "requireConfirmation"))
    FunctionDefinition.struct_class = Types::FunctionDefinition

    FunctionInvocationInput.add_member(:action_group, Shapes::ShapeRef.new(shape: String, required: true, location_name: "actionGroup"))
    FunctionInvocationInput.add_member(:action_invocation_type, Shapes::ShapeRef.new(shape: ActionInvocationType, location_name: "actionInvocationType"))
    FunctionInvocationInput.add_member(:agent_id, Shapes::ShapeRef.new(shape: String, location_name: "agentId"))
    FunctionInvocationInput.add_member(:collaborator_name, Shapes::ShapeRef.new(shape: Name, location_name: "collaboratorName"))
    FunctionInvocationInput.add_member(:function, Shapes::ShapeRef.new(shape: String, location_name: "function"))
    FunctionInvocationInput.add_member(:parameters, Shapes::ShapeRef.new(shape: FunctionParameters, location_name: "parameters"))
    FunctionInvocationInput.struct_class = Types::FunctionInvocationInput

    FunctionParameter.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "name"))
    FunctionParameter.add_member(:type, Shapes::ShapeRef.new(shape: String, location_name: "type"))
    FunctionParameter.add_member(:value, Shapes::ShapeRef.new(shape: String, location_name: "value"))
    FunctionParameter.struct_class = Types::FunctionParameter

    FunctionParameters.member = Shapes::ShapeRef.new(shape: FunctionParameter)

    FunctionResult.add_member(:action_group, Shapes::ShapeRef.new(shape: String, required: true, location_name: "actionGroup"))
    FunctionResult.add_member(:agent_id, Shapes::ShapeRef.new(shape: String, location_name: "agentId"))
    FunctionResult.add_member(:confirmation_state, Shapes::ShapeRef.new(shape: ConfirmationState, location_name: "confirmationState"))
    FunctionResult.add_member(:function, Shapes::ShapeRef.new(shape: String, location_name: "function"))
    FunctionResult.add_member(:response_body, Shapes::ShapeRef.new(shape: ResponseBody, location_name: "responseBody"))
    FunctionResult.add_member(:response_state, Shapes::ShapeRef.new(shape: ResponseState, location_name: "responseState"))
    FunctionResult.struct_class = Types::FunctionResult

    FunctionSchema.add_member(:functions, Shapes::ShapeRef.new(shape: Functions, location_name: "functions"))
    FunctionSchema.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    FunctionSchema.add_member_subclass(:functions, Types::FunctionSchema::Functions)
    FunctionSchema.add_member_subclass(:unknown, Types::FunctionSchema::Unknown)
    FunctionSchema.struct_class = Types::FunctionSchema

    Functions.member = Shapes::ShapeRef.new(shape: FunctionDefinition)

    GenerateQueryRequest.add_member(:query_generation_input, Shapes::ShapeRef.new(shape: QueryGenerationInput, required: true, location_name: "queryGenerationInput"))
    GenerateQueryRequest.add_member(:transformation_configuration, Shapes::ShapeRef.new(shape: TransformationConfiguration, required: true, location_name: "transformationConfiguration"))
    GenerateQueryRequest.struct_class = Types::GenerateQueryRequest

    GenerateQueryResponse.add_member(:queries, Shapes::ShapeRef.new(shape: GeneratedQueries, location_name: "queries"))
    GenerateQueryResponse.struct_class = Types::GenerateQueryResponse

    GeneratedQueries.member = Shapes::ShapeRef.new(shape: GeneratedQuery)

    GeneratedQuery.add_member(:sql, Shapes::ShapeRef.new(shape: String, location_name: "sql"))
    GeneratedQuery.add_member(:type, Shapes::ShapeRef.new(shape: GeneratedQueryType, location_name: "type"))
    GeneratedQuery.struct_class = Types::GeneratedQuery

    GeneratedResponsePart.add_member(:text_response_part, Shapes::ShapeRef.new(shape: TextResponsePart, location_name: "textResponsePart"))
    GeneratedResponsePart.struct_class = Types::GeneratedResponsePart

    GenerationConfiguration.add_member(:additional_model_request_fields, Shapes::ShapeRef.new(shape: AdditionalModelRequestFields, location_name: "additionalModelRequestFields"))
    GenerationConfiguration.add_member(:guardrail_configuration, Shapes::ShapeRef.new(shape: GuardrailConfiguration, location_name: "guardrailConfiguration"))
    GenerationConfiguration.add_member(:inference_config, Shapes::ShapeRef.new(shape: InferenceConfig, location_name: "inferenceConfig"))
    GenerationConfiguration.add_member(:performance_config, Shapes::ShapeRef.new(shape: PerformanceConfiguration, location_name: "performanceConfig"))
    GenerationConfiguration.add_member(:prompt_template, Shapes::ShapeRef.new(shape: PromptTemplate, location_name: "promptTemplate"))
    GenerationConfiguration.struct_class = Types::GenerationConfiguration

    GetAgentMemoryRequest.add_member(:agent_alias_id, Shapes::ShapeRef.new(shape: AgentAliasId, required: true, location: "uri", location_name: "agentAliasId"))
    GetAgentMemoryRequest.add_member(:agent_id, Shapes::ShapeRef.new(shape: AgentId, required: true, location: "uri", location_name: "agentId"))
    GetAgentMemoryRequest.add_member(:max_items, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxItems"))
    GetAgentMemoryRequest.add_member(:memory_id, Shapes::ShapeRef.new(shape: MemoryId, required: true, location: "querystring", location_name: "memoryId"))
    GetAgentMemoryRequest.add_member(:memory_type, Shapes::ShapeRef.new(shape: MemoryType, required: true, location: "querystring", location_name: "memoryType"))
    GetAgentMemoryRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    GetAgentMemoryRequest.struct_class = Types::GetAgentMemoryRequest

    GetAgentMemoryResponse.add_member(:memory_contents, Shapes::ShapeRef.new(shape: Memories, location_name: "memoryContents"))
    GetAgentMemoryResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    GetAgentMemoryResponse.struct_class = Types::GetAgentMemoryResponse

    GetExecutionFlowSnapshotRequest.add_member(:execution_identifier, Shapes::ShapeRef.new(shape: FlowExecutionIdentifier, required: true, location: "uri", location_name: "executionIdentifier"))
    GetExecutionFlowSnapshotRequest.add_member(:flow_alias_identifier, Shapes::ShapeRef.new(shape: FlowAliasIdentifier, required: true, location: "uri", location_name: "flowAliasIdentifier"))
    GetExecutionFlowSnapshotRequest.add_member(:flow_identifier, Shapes::ShapeRef.new(shape: FlowIdentifier, required: true, location: "uri", location_name: "flowIdentifier"))
    GetExecutionFlowSnapshotRequest.struct_class = Types::GetExecutionFlowSnapshotRequest

    GetExecutionFlowSnapshotResponse.add_member(:customer_encryption_key_arn, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "customerEncryptionKeyArn"))
    GetExecutionFlowSnapshotResponse.add_member(:definition, Shapes::ShapeRef.new(shape: String, required: true, location_name: "definition"))
    GetExecutionFlowSnapshotResponse.add_member(:execution_role_arn, Shapes::ShapeRef.new(shape: FlowExecutionRoleArn, required: true, location_name: "executionRoleArn"))
    GetExecutionFlowSnapshotResponse.add_member(:flow_alias_identifier, Shapes::ShapeRef.new(shape: FlowAliasIdentifier, required: true, location_name: "flowAliasIdentifier"))
    GetExecutionFlowSnapshotResponse.add_member(:flow_identifier, Shapes::ShapeRef.new(shape: FlowIdentifier, required: true, location_name: "flowIdentifier"))
    GetExecutionFlowSnapshotResponse.add_member(:flow_version, Shapes::ShapeRef.new(shape: Version, required: true, location_name: "flowVersion"))
    GetExecutionFlowSnapshotResponse.struct_class = Types::GetExecutionFlowSnapshotResponse

    GetFlowExecutionRequest.add_member(:execution_identifier, Shapes::ShapeRef.new(shape: FlowExecutionIdentifier, required: true, location: "uri", location_name: "executionIdentifier"))
    GetFlowExecutionRequest.add_member(:flow_alias_identifier, Shapes::ShapeRef.new(shape: FlowAliasIdentifier, required: true, location: "uri", location_name: "flowAliasIdentifier"))
    GetFlowExecutionRequest.add_member(:flow_identifier, Shapes::ShapeRef.new(shape: FlowIdentifier, required: true, location: "uri", location_name: "flowIdentifier"))
    GetFlowExecutionRequest.struct_class = Types::GetFlowExecutionRequest

    GetFlowExecutionResponse.add_member(:ended_at, Shapes::ShapeRef.new(shape: DateTimestamp, location_name: "endedAt"))
    GetFlowExecutionResponse.add_member(:errors, Shapes::ShapeRef.new(shape: FlowExecutionErrors, location_name: "errors"))
    GetFlowExecutionResponse.add_member(:execution_arn, Shapes::ShapeRef.new(shape: FlowExecutionIdentifier, required: true, location_name: "executionArn"))
    GetFlowExecutionResponse.add_member(:flow_alias_identifier, Shapes::ShapeRef.new(shape: FlowAliasIdentifier, required: true, location_name: "flowAliasIdentifier"))
    GetFlowExecutionResponse.add_member(:flow_identifier, Shapes::ShapeRef.new(shape: FlowIdentifier, required: true, location_name: "flowIdentifier"))
    GetFlowExecutionResponse.add_member(:flow_version, Shapes::ShapeRef.new(shape: Version, required: true, location_name: "flowVersion"))
    GetFlowExecutionResponse.add_member(:started_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "startedAt"))
    GetFlowExecutionResponse.add_member(:status, Shapes::ShapeRef.new(shape: FlowExecutionStatus, required: true, location_name: "status"))
    GetFlowExecutionResponse.struct_class = Types::GetFlowExecutionResponse

    GetInvocationStepRequest.add_member(:invocation_identifier, Shapes::ShapeRef.new(shape: InvocationIdentifier, required: true, location_name: "invocationIdentifier"))
    GetInvocationStepRequest.add_member(:invocation_step_id, Shapes::ShapeRef.new(shape: Uuid, required: true, location: "uri", location_name: "invocationStepId"))
    GetInvocationStepRequest.add_member(:session_identifier, Shapes::ShapeRef.new(shape: SessionIdentifier, required: true, location: "uri", location_name: "sessionIdentifier"))
    GetInvocationStepRequest.struct_class = Types::GetInvocationStepRequest

    GetInvocationStepResponse.add_member(:invocation_step, Shapes::ShapeRef.new(shape: InvocationStep, required: true, location_name: "invocationStep"))
    GetInvocationStepResponse.struct_class = Types::GetInvocationStepResponse

    GetSessionRequest.add_member(:session_identifier, Shapes::ShapeRef.new(shape: SessionIdentifier, required: true, location: "uri", location_name: "sessionIdentifier"))
    GetSessionRequest.struct_class = Types::GetSessionRequest

    GetSessionResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "createdAt"))
    GetSessionResponse.add_member(:encryption_key_arn, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "encryptionKeyArn"))
    GetSessionResponse.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "lastUpdatedAt"))
    GetSessionResponse.add_member(:session_arn, Shapes::ShapeRef.new(shape: SessionArn, required: true, location_name: "sessionArn"))
    GetSessionResponse.add_member(:session_id, Shapes::ShapeRef.new(shape: Uuid, required: true, location_name: "sessionId"))
    GetSessionResponse.add_member(:session_metadata, Shapes::ShapeRef.new(shape: SessionMetadataMap, location_name: "sessionMetadata"))
    GetSessionResponse.add_member(:session_status, Shapes::ShapeRef.new(shape: SessionStatus, required: true, location_name: "sessionStatus"))
    GetSessionResponse.struct_class = Types::GetSessionResponse

    GuardrailAssessment.add_member(:content_policy, Shapes::ShapeRef.new(shape: GuardrailContentPolicyAssessment, location_name: "contentPolicy"))
    GuardrailAssessment.add_member(:sensitive_information_policy, Shapes::ShapeRef.new(shape: GuardrailSensitiveInformationPolicyAssessment, location_name: "sensitiveInformationPolicy"))
    GuardrailAssessment.add_member(:topic_policy, Shapes::ShapeRef.new(shape: GuardrailTopicPolicyAssessment, location_name: "topicPolicy"))
    GuardrailAssessment.add_member(:word_policy, Shapes::ShapeRef.new(shape: GuardrailWordPolicyAssessment, location_name: "wordPolicy"))
    GuardrailAssessment.struct_class = Types::GuardrailAssessment

    GuardrailAssessmentList.member = Shapes::ShapeRef.new(shape: GuardrailAssessment)

    GuardrailConfiguration.add_member(:guardrail_id, Shapes::ShapeRef.new(shape: GuardrailConfigurationGuardrailIdString, required: true, location_name: "guardrailId"))
    GuardrailConfiguration.add_member(:guardrail_version, Shapes::ShapeRef.new(shape: GuardrailConfigurationGuardrailVersionString, required: true, location_name: "guardrailVersion"))
    GuardrailConfiguration.struct_class = Types::GuardrailConfiguration

    GuardrailConfigurationWithArn.add_member(:guardrail_identifier, Shapes::ShapeRef.new(shape: GuardrailIdentifierWithArn, required: true, location_name: "guardrailIdentifier"))
    GuardrailConfigurationWithArn.add_member(:guardrail_version, Shapes::ShapeRef.new(shape: GuardrailVersion, required: true, location_name: "guardrailVersion"))
    GuardrailConfigurationWithArn.struct_class = Types::GuardrailConfigurationWithArn

    GuardrailContentFilter.add_member(:action, Shapes::ShapeRef.new(shape: GuardrailContentPolicyAction, location_name: "action"))
    GuardrailContentFilter.add_member(:confidence, Shapes::ShapeRef.new(shape: GuardrailContentFilterConfidence, location_name: "confidence"))
    GuardrailContentFilter.add_member(:type, Shapes::ShapeRef.new(shape: GuardrailContentFilterType, location_name: "type"))
    GuardrailContentFilter.struct_class = Types::GuardrailContentFilter

    GuardrailContentFilterList.member = Shapes::ShapeRef.new(shape: GuardrailContentFilter)

    GuardrailContentPolicyAssessment.add_member(:filters, Shapes::ShapeRef.new(shape: GuardrailContentFilterList, location_name: "filters"))
    GuardrailContentPolicyAssessment.struct_class = Types::GuardrailContentPolicyAssessment

    GuardrailCustomWord.add_member(:action, Shapes::ShapeRef.new(shape: GuardrailWordPolicyAction, location_name: "action"))
    GuardrailCustomWord.add_member(:match, Shapes::ShapeRef.new(shape: String, location_name: "match"))
    GuardrailCustomWord.struct_class = Types::GuardrailCustomWord

    GuardrailCustomWordList.member = Shapes::ShapeRef.new(shape: GuardrailCustomWord)

    GuardrailEvent.add_member(:action, Shapes::ShapeRef.new(shape: GuadrailAction, location_name: "action"))
    GuardrailEvent.struct_class = Types::GuardrailEvent

    GuardrailManagedWord.add_member(:action, Shapes::ShapeRef.new(shape: GuardrailWordPolicyAction, location_name: "action"))
    GuardrailManagedWord.add_member(:match, Shapes::ShapeRef.new(shape: String, location_name: "match"))
    GuardrailManagedWord.add_member(:type, Shapes::ShapeRef.new(shape: GuardrailManagedWordType, location_name: "type"))
    GuardrailManagedWord.struct_class = Types::GuardrailManagedWord

    GuardrailManagedWordList.member = Shapes::ShapeRef.new(shape: GuardrailManagedWord)

    GuardrailPiiEntityFilter.add_member(:action, Shapes::ShapeRef.new(shape: GuardrailSensitiveInformationPolicyAction, location_name: "action"))
    GuardrailPiiEntityFilter.add_member(:match, Shapes::ShapeRef.new(shape: String, location_name: "match"))
    GuardrailPiiEntityFilter.add_member(:type, Shapes::ShapeRef.new(shape: GuardrailPiiEntityType, location_name: "type"))
    GuardrailPiiEntityFilter.struct_class = Types::GuardrailPiiEntityFilter

    GuardrailPiiEntityFilterList.member = Shapes::ShapeRef.new(shape: GuardrailPiiEntityFilter)

    GuardrailRegexFilter.add_member(:action, Shapes::ShapeRef.new(shape: GuardrailSensitiveInformationPolicyAction, location_name: "action"))
    GuardrailRegexFilter.add_member(:match, Shapes::ShapeRef.new(shape: String, location_name: "match"))
    GuardrailRegexFilter.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "name"))
    GuardrailRegexFilter.add_member(:regex, Shapes::ShapeRef.new(shape: String, location_name: "regex"))
    GuardrailRegexFilter.struct_class = Types::GuardrailRegexFilter

    GuardrailRegexFilterList.member = Shapes::ShapeRef.new(shape: GuardrailRegexFilter)

    GuardrailSensitiveInformationPolicyAssessment.add_member(:pii_entities, Shapes::ShapeRef.new(shape: GuardrailPiiEntityFilterList, location_name: "piiEntities"))
    GuardrailSensitiveInformationPolicyAssessment.add_member(:regexes, Shapes::ShapeRef.new(shape: GuardrailRegexFilterList, location_name: "regexes"))
    GuardrailSensitiveInformationPolicyAssessment.struct_class = Types::GuardrailSensitiveInformationPolicyAssessment

    GuardrailTopic.add_member(:action, Shapes::ShapeRef.new(shape: GuardrailTopicPolicyAction, location_name: "action"))
    GuardrailTopic.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "name"))
    GuardrailTopic.add_member(:type, Shapes::ShapeRef.new(shape: GuardrailTopicType, location_name: "type"))
    GuardrailTopic.struct_class = Types::GuardrailTopic

    GuardrailTopicList.member = Shapes::ShapeRef.new(shape: GuardrailTopic)

    GuardrailTopicPolicyAssessment.add_member(:topics, Shapes::ShapeRef.new(shape: GuardrailTopicList, location_name: "topics"))
    GuardrailTopicPolicyAssessment.struct_class = Types::GuardrailTopicPolicyAssessment

    GuardrailTrace.add_member(:action, Shapes::ShapeRef.new(shape: GuardrailAction, location_name: "action"))
    GuardrailTrace.add_member(:input_assessments, Shapes::ShapeRef.new(shape: GuardrailAssessmentList, location_name: "inputAssessments"))
    GuardrailTrace.add_member(:metadata, Shapes::ShapeRef.new(shape: Metadata, location_name: "metadata"))
    GuardrailTrace.add_member(:output_assessments, Shapes::ShapeRef.new(shape: GuardrailAssessmentList, location_name: "outputAssessments"))
    GuardrailTrace.add_member(:trace_id, Shapes::ShapeRef.new(shape: TraceId, location_name: "traceId"))
    GuardrailTrace.struct_class = Types::GuardrailTrace

    GuardrailWordPolicyAssessment.add_member(:custom_words, Shapes::ShapeRef.new(shape: GuardrailCustomWordList, location_name: "customWords"))
    GuardrailWordPolicyAssessment.add_member(:managed_word_lists, Shapes::ShapeRef.new(shape: GuardrailManagedWordList, location_name: "managedWordLists"))
    GuardrailWordPolicyAssessment.struct_class = Types::GuardrailWordPolicyAssessment

    ImageBlock.add_member(:format, Shapes::ShapeRef.new(shape: ImageFormat, required: true, location_name: "format"))
    ImageBlock.add_member(:source, Shapes::ShapeRef.new(shape: ImageSource, required: true, location_name: "source"))
    ImageBlock.struct_class = Types::ImageBlock

    ImageInput.add_member(:format, Shapes::ShapeRef.new(shape: ImageInputFormat, required: true, location_name: "format"))
    ImageInput.add_member(:source, Shapes::ShapeRef.new(shape: ImageInputSource, required: true, location_name: "source"))
    ImageInput.struct_class = Types::ImageInput

    ImageInputSource.add_member(:bytes, Shapes::ShapeRef.new(shape: ImageInputSourceBytesBlob, location_name: "bytes"))
    ImageInputSource.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ImageInputSource.add_member_subclass(:bytes, Types::ImageInputSource::Bytes)
    ImageInputSource.add_member_subclass(:unknown, Types::ImageInputSource::Unknown)
    ImageInputSource.struct_class = Types::ImageInputSource

    ImageInputs.member = Shapes::ShapeRef.new(shape: ImageInput)

    ImageSource.add_member(:bytes, Shapes::ShapeRef.new(shape: ImageSourceBytesBlob, location_name: "bytes"))
    ImageSource.add_member(:s3_location, Shapes::ShapeRef.new(shape: S3Location, location_name: "s3Location"))
    ImageSource.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ImageSource.add_member_subclass(:bytes, Types::ImageSource::Bytes)
    ImageSource.add_member_subclass(:s3_location, Types::ImageSource::S3Location)
    ImageSource.add_member_subclass(:unknown, Types::ImageSource::Unknown)
    ImageSource.struct_class = Types::ImageSource

    ImplicitFilterConfiguration.add_member(:metadata_attributes, Shapes::ShapeRef.new(shape: MetadataAttributeSchemaList, required: true, location_name: "metadataAttributes"))
    ImplicitFilterConfiguration.add_member(:model_arn, Shapes::ShapeRef.new(shape: BedrockModelArn, required: true, location_name: "modelArn"))
    ImplicitFilterConfiguration.struct_class = Types::ImplicitFilterConfiguration

    InferenceConfig.add_member(:text_inference_config, Shapes::ShapeRef.new(shape: TextInferenceConfig, location_name: "textInferenceConfig"))
    InferenceConfig.struct_class = Types::InferenceConfig

    InferenceConfiguration.add_member(:maximum_length, Shapes::ShapeRef.new(shape: MaximumLength, location_name: "maximumLength"))
    InferenceConfiguration.add_member(:stop_sequences, Shapes::ShapeRef.new(shape: StopSequences, location_name: "stopSequences"))
    InferenceConfiguration.add_member(:temperature, Shapes::ShapeRef.new(shape: Temperature, location_name: "temperature"))
    InferenceConfiguration.add_member(:top_k, Shapes::ShapeRef.new(shape: TopK, location_name: "topK"))
    InferenceConfiguration.add_member(:top_p, Shapes::ShapeRef.new(shape: TopP, location_name: "topP"))
    InferenceConfiguration.struct_class = Types::InferenceConfiguration

    InlineAgentFilePart.add_member(:files, Shapes::ShapeRef.new(shape: OutputFiles, location_name: "files"))
    InlineAgentFilePart.struct_class = Types::InlineAgentFilePart

    InlineAgentPayloadPart.add_member(:attribution, Shapes::ShapeRef.new(shape: Attribution, location_name: "attribution"))
    InlineAgentPayloadPart.add_member(:bytes, Shapes::ShapeRef.new(shape: PartBody, location_name: "bytes"))
    InlineAgentPayloadPart.struct_class = Types::InlineAgentPayloadPart

    InlineAgentResponseStream.add_member(:access_denied_exception, Shapes::ShapeRef.new(shape: AccessDeniedException, location_name: "accessDeniedException"))
    InlineAgentResponseStream.add_member(:bad_gateway_exception, Shapes::ShapeRef.new(shape: BadGatewayException, location_name: "badGatewayException"))
    InlineAgentResponseStream.add_member(:chunk, Shapes::ShapeRef.new(shape: InlineAgentPayloadPart, event: true, location_name: "chunk"))
    InlineAgentResponseStream.add_member(:conflict_exception, Shapes::ShapeRef.new(shape: ConflictException, location_name: "conflictException"))
    InlineAgentResponseStream.add_member(:dependency_failed_exception, Shapes::ShapeRef.new(shape: DependencyFailedException, location_name: "dependencyFailedException"))
    InlineAgentResponseStream.add_member(:files, Shapes::ShapeRef.new(shape: InlineAgentFilePart, event: true, location_name: "files"))
    InlineAgentResponseStream.add_member(:internal_server_exception, Shapes::ShapeRef.new(shape: InternalServerException, location_name: "internalServerException"))
    InlineAgentResponseStream.add_member(:resource_not_found_exception, Shapes::ShapeRef.new(shape: ResourceNotFoundException, location_name: "resourceNotFoundException"))
    InlineAgentResponseStream.add_member(:return_control, Shapes::ShapeRef.new(shape: InlineAgentReturnControlPayload, event: true, location_name: "returnControl"))
    InlineAgentResponseStream.add_member(:service_quota_exceeded_exception, Shapes::ShapeRef.new(shape: ServiceQuotaExceededException, location_name: "serviceQuotaExceededException"))
    InlineAgentResponseStream.add_member(:throttling_exception, Shapes::ShapeRef.new(shape: ThrottlingException, location_name: "throttlingException"))
    InlineAgentResponseStream.add_member(:trace, Shapes::ShapeRef.new(shape: InlineAgentTracePart, event: true, location_name: "trace"))
    InlineAgentResponseStream.add_member(:validation_exception, Shapes::ShapeRef.new(shape: ValidationException, location_name: "validationException"))
    InlineAgentResponseStream.struct_class = Types::InlineAgentResponseStream

    InlineAgentReturnControlPayload.add_member(:invocation_id, Shapes::ShapeRef.new(shape: String, location_name: "invocationId"))
    InlineAgentReturnControlPayload.add_member(:invocation_inputs, Shapes::ShapeRef.new(shape: InvocationInputs, location_name: "invocationInputs"))
    InlineAgentReturnControlPayload.struct_class = Types::InlineAgentReturnControlPayload

    InlineAgentTracePart.add_member(:caller_chain, Shapes::ShapeRef.new(shape: CallerChain, location_name: "callerChain"))
    InlineAgentTracePart.add_member(:collaborator_name, Shapes::ShapeRef.new(shape: Name, location_name: "collaboratorName"))
    InlineAgentTracePart.add_member(:event_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "eventTime"))
    InlineAgentTracePart.add_member(:session_id, Shapes::ShapeRef.new(shape: SessionId, location_name: "sessionId"))
    InlineAgentTracePart.add_member(:trace, Shapes::ShapeRef.new(shape: Trace, location_name: "trace"))
    InlineAgentTracePart.struct_class = Types::InlineAgentTracePart

    InlineBedrockModelConfigurations.add_member(:performance_config, Shapes::ShapeRef.new(shape: PerformanceConfiguration, location_name: "performanceConfig"))
    InlineBedrockModelConfigurations.struct_class = Types::InlineBedrockModelConfigurations

    InlineSessionState.add_member(:conversation_history, Shapes::ShapeRef.new(shape: ConversationHistory, location_name: "conversationHistory"))
    InlineSessionState.add_member(:files, Shapes::ShapeRef.new(shape: InputFiles, location_name: "files"))
    InlineSessionState.add_member(:invocation_id, Shapes::ShapeRef.new(shape: String, location_name: "invocationId"))
    InlineSessionState.add_member(:prompt_session_attributes, Shapes::ShapeRef.new(shape: PromptSessionAttributesMap, location_name: "promptSessionAttributes"))
    InlineSessionState.add_member(:return_control_invocation_results, Shapes::ShapeRef.new(shape: ReturnControlInvocationResults, location_name: "returnControlInvocationResults"))
    InlineSessionState.add_member(:session_attributes, Shapes::ShapeRef.new(shape: SessionAttributesMap, location_name: "sessionAttributes"))
    InlineSessionState.struct_class = Types::InlineSessionState

    InputFile.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    InputFile.add_member(:source, Shapes::ShapeRef.new(shape: FileSource, required: true, location_name: "source"))
    InputFile.add_member(:use_case, Shapes::ShapeRef.new(shape: FileUseCase, required: true, location_name: "useCase"))
    InputFile.struct_class = Types::InputFile

    InputFiles.member = Shapes::ShapeRef.new(shape: InputFile)

    InputImage.add_member(:format, Shapes::ShapeRef.new(shape: InputImageFormat, required: true, location_name: "format"))
    InputImage.add_member(:inline_content, Shapes::ShapeRef.new(shape: InputImageInlineContentBlob, required: true, location_name: "inlineContent"))
    InputImage.struct_class = Types::InputImage

    InputPrompt.add_member(:text_prompt, Shapes::ShapeRef.new(shape: TextPrompt, location_name: "textPrompt"))
    InputPrompt.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    InputPrompt.add_member_subclass(:text_prompt, Types::InputPrompt::TextPrompt)
    InputPrompt.add_member_subclass(:unknown, Types::InputPrompt::Unknown)
    InputPrompt.struct_class = Types::InputPrompt

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "message"))
    InternalServerException.add_member(:reason, Shapes::ShapeRef.new(shape: String, location_name: "reason"))
    InternalServerException.struct_class = Types::InternalServerException

    InvocationInput.add_member(:action_group_invocation_input, Shapes::ShapeRef.new(shape: ActionGroupInvocationInput, location_name: "actionGroupInvocationInput"))
    InvocationInput.add_member(:agent_collaborator_invocation_input, Shapes::ShapeRef.new(shape: AgentCollaboratorInvocationInput, location_name: "agentCollaboratorInvocationInput"))
    InvocationInput.add_member(:code_interpreter_invocation_input, Shapes::ShapeRef.new(shape: CodeInterpreterInvocationInput, location_name: "codeInterpreterInvocationInput"))
    InvocationInput.add_member(:invocation_type, Shapes::ShapeRef.new(shape: InvocationType, location_name: "invocationType"))
    InvocationInput.add_member(:knowledge_base_lookup_input, Shapes::ShapeRef.new(shape: KnowledgeBaseLookupInput, location_name: "knowledgeBaseLookupInput"))
    InvocationInput.add_member(:trace_id, Shapes::ShapeRef.new(shape: TraceId, location_name: "traceId"))
    InvocationInput.struct_class = Types::InvocationInput

    InvocationInputMember.add_member(:api_invocation_input, Shapes::ShapeRef.new(shape: ApiInvocationInput, location_name: "apiInvocationInput"))
    InvocationInputMember.add_member(:function_invocation_input, Shapes::ShapeRef.new(shape: FunctionInvocationInput, location_name: "functionInvocationInput"))
    InvocationInputMember.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    InvocationInputMember.add_member_subclass(:api_invocation_input, Types::InvocationInputMember::ApiInvocationInput)
    InvocationInputMember.add_member_subclass(:function_invocation_input, Types::InvocationInputMember::FunctionInvocationInput)
    InvocationInputMember.add_member_subclass(:unknown, Types::InvocationInputMember::Unknown)
    InvocationInputMember.struct_class = Types::InvocationInputMember

    InvocationInputs.member = Shapes::ShapeRef.new(shape: InvocationInputMember)

    InvocationResultMember.add_member(:api_result, Shapes::ShapeRef.new(shape: ApiResult, location_name: "apiResult"))
    InvocationResultMember.add_member(:function_result, Shapes::ShapeRef.new(shape: FunctionResult, location_name: "functionResult"))
    InvocationResultMember.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    InvocationResultMember.add_member_subclass(:api_result, Types::InvocationResultMember::ApiResult)
    InvocationResultMember.add_member_subclass(:function_result, Types::InvocationResultMember::FunctionResult)
    InvocationResultMember.add_member_subclass(:unknown, Types::InvocationResultMember::Unknown)
    InvocationResultMember.struct_class = Types::InvocationResultMember

    InvocationStep.add_member(:invocation_id, Shapes::ShapeRef.new(shape: Uuid, required: true, location_name: "invocationId"))
    InvocationStep.add_member(:invocation_step_id, Shapes::ShapeRef.new(shape: Uuid, required: true, location_name: "invocationStepId"))
    InvocationStep.add_member(:invocation_step_time, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "invocationStepTime"))
    InvocationStep.add_member(:payload, Shapes::ShapeRef.new(shape: InvocationStepPayload, required: true, location_name: "payload"))
    InvocationStep.add_member(:session_id, Shapes::ShapeRef.new(shape: Uuid, required: true, location_name: "sessionId"))
    InvocationStep.struct_class = Types::InvocationStep

    InvocationStepPayload.add_member(:content_blocks, Shapes::ShapeRef.new(shape: BedrockSessionContentBlocks, location_name: "contentBlocks"))
    InvocationStepPayload.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    InvocationStepPayload.add_member_subclass(:content_blocks, Types::InvocationStepPayload::ContentBlocks)
    InvocationStepPayload.add_member_subclass(:unknown, Types::InvocationStepPayload::Unknown)
    InvocationStepPayload.struct_class = Types::InvocationStepPayload

    InvocationStepSummaries.member = Shapes::ShapeRef.new(shape: InvocationStepSummary)

    InvocationStepSummary.add_member(:invocation_id, Shapes::ShapeRef.new(shape: Uuid, required: true, location_name: "invocationId"))
    InvocationStepSummary.add_member(:invocation_step_id, Shapes::ShapeRef.new(shape: Uuid, required: true, location_name: "invocationStepId"))
    InvocationStepSummary.add_member(:invocation_step_time, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "invocationStepTime"))
    InvocationStepSummary.add_member(:session_id, Shapes::ShapeRef.new(shape: Uuid, required: true, location_name: "sessionId"))
    InvocationStepSummary.struct_class = Types::InvocationStepSummary

    InvocationSummaries.member = Shapes::ShapeRef.new(shape: InvocationSummary)

    InvocationSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "createdAt"))
    InvocationSummary.add_member(:invocation_id, Shapes::ShapeRef.new(shape: Uuid, required: true, location_name: "invocationId"))
    InvocationSummary.add_member(:session_id, Shapes::ShapeRef.new(shape: Uuid, required: true, location_name: "sessionId"))
    InvocationSummary.struct_class = Types::InvocationSummary

    InvokeAgentRequest.add_member(:agent_alias_id, Shapes::ShapeRef.new(shape: AgentAliasId, required: true, location: "uri", location_name: "agentAliasId"))
    InvokeAgentRequest.add_member(:agent_id, Shapes::ShapeRef.new(shape: AgentId, required: true, location: "uri", location_name: "agentId"))
    InvokeAgentRequest.add_member(:bedrock_model_configurations, Shapes::ShapeRef.new(shape: BedrockModelConfigurations, location_name: "bedrockModelConfigurations"))
    InvokeAgentRequest.add_member(:enable_trace, Shapes::ShapeRef.new(shape: Boolean, location_name: "enableTrace"))
    InvokeAgentRequest.add_member(:end_session, Shapes::ShapeRef.new(shape: Boolean, location_name: "endSession"))
    InvokeAgentRequest.add_member(:input_text, Shapes::ShapeRef.new(shape: InputText, location_name: "inputText"))
    InvokeAgentRequest.add_member(:memory_id, Shapes::ShapeRef.new(shape: MemoryId, location_name: "memoryId"))
    InvokeAgentRequest.add_member(:prompt_creation_configurations, Shapes::ShapeRef.new(shape: PromptCreationConfigurations, location_name: "promptCreationConfigurations"))
    InvokeAgentRequest.add_member(:session_id, Shapes::ShapeRef.new(shape: SessionId, required: true, location: "uri", location_name: "sessionId"))
    InvokeAgentRequest.add_member(:session_state, Shapes::ShapeRef.new(shape: SessionState, location_name: "sessionState"))
    InvokeAgentRequest.add_member(:source_arn, Shapes::ShapeRef.new(shape: AWSResourceARN, location: "header", location_name: "x-amz-source-arn"))
    InvokeAgentRequest.add_member(:streaming_configurations, Shapes::ShapeRef.new(shape: StreamingConfigurations, location_name: "streamingConfigurations"))
    InvokeAgentRequest.struct_class = Types::InvokeAgentRequest

    InvokeAgentResponse.add_member(:completion, Shapes::ShapeRef.new(shape: ResponseStream, required: true, eventstream: true, location_name: "completion"))
    InvokeAgentResponse.add_member(:content_type, Shapes::ShapeRef.new(shape: MimeType, required: true, location: "header", location_name: "x-amzn-bedrock-agent-content-type"))
    InvokeAgentResponse.add_member(:memory_id, Shapes::ShapeRef.new(shape: MemoryId, location: "header", location_name: "x-amz-bedrock-agent-memory-id"))
    InvokeAgentResponse.add_member(:session_id, Shapes::ShapeRef.new(shape: SessionId, required: true, location: "header", location_name: "x-amz-bedrock-agent-session-id"))
    InvokeAgentResponse.struct_class = Types::InvokeAgentResponse
    InvokeAgentResponse[:payload] = :completion
    InvokeAgentResponse[:payload_member] = InvokeAgentResponse.member(:completion)

    InvokeFlowRequest.add_member(:enable_trace, Shapes::ShapeRef.new(shape: Boolean, location_name: "enableTrace"))
    InvokeFlowRequest.add_member(:execution_id, Shapes::ShapeRef.new(shape: FlowExecutionId, location_name: "executionId"))
    InvokeFlowRequest.add_member(:flow_alias_identifier, Shapes::ShapeRef.new(shape: FlowAliasIdentifier, required: true, location: "uri", location_name: "flowAliasIdentifier"))
    InvokeFlowRequest.add_member(:flow_identifier, Shapes::ShapeRef.new(shape: FlowIdentifier, required: true, location: "uri", location_name: "flowIdentifier"))
    InvokeFlowRequest.add_member(:inputs, Shapes::ShapeRef.new(shape: FlowInputs, required: true, location_name: "inputs"))
    InvokeFlowRequest.add_member(:model_performance_configuration, Shapes::ShapeRef.new(shape: ModelPerformanceConfiguration, location_name: "modelPerformanceConfiguration"))
    InvokeFlowRequest.struct_class = Types::InvokeFlowRequest

    InvokeFlowResponse.add_member(:execution_id, Shapes::ShapeRef.new(shape: FlowExecutionId, location: "header", location_name: "x-amz-bedrock-flow-execution-id"))
    InvokeFlowResponse.add_member(:response_stream, Shapes::ShapeRef.new(shape: FlowResponseStream, required: true, eventstream: true, location_name: "responseStream"))
    InvokeFlowResponse.struct_class = Types::InvokeFlowResponse
    InvokeFlowResponse[:payload] = :response_stream
    InvokeFlowResponse[:payload_member] = InvokeFlowResponse.member(:response_stream)

    InvokeInlineAgentRequest.add_member(:action_groups, Shapes::ShapeRef.new(shape: AgentActionGroups, location_name: "actionGroups"))
    InvokeInlineAgentRequest.add_member(:agent_collaboration, Shapes::ShapeRef.new(shape: AgentCollaboration, location_name: "agentCollaboration"))
    InvokeInlineAgentRequest.add_member(:agent_name, Shapes::ShapeRef.new(shape: Name, location_name: "agentName"))
    InvokeInlineAgentRequest.add_member(:bedrock_model_configurations, Shapes::ShapeRef.new(shape: InlineBedrockModelConfigurations, location_name: "bedrockModelConfigurations"))
    InvokeInlineAgentRequest.add_member(:collaborator_configurations, Shapes::ShapeRef.new(shape: CollaboratorConfigurations, location_name: "collaboratorConfigurations"))
    InvokeInlineAgentRequest.add_member(:collaborators, Shapes::ShapeRef.new(shape: Collaborators, location_name: "collaborators"))
    InvokeInlineAgentRequest.add_member(:custom_orchestration, Shapes::ShapeRef.new(shape: CustomOrchestration, location_name: "customOrchestration"))
    InvokeInlineAgentRequest.add_member(:customer_encryption_key_arn, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "customerEncryptionKeyArn"))
    InvokeInlineAgentRequest.add_member(:enable_trace, Shapes::ShapeRef.new(shape: Boolean, location_name: "enableTrace"))
    InvokeInlineAgentRequest.add_member(:end_session, Shapes::ShapeRef.new(shape: Boolean, location_name: "endSession"))
    InvokeInlineAgentRequest.add_member(:foundation_model, Shapes::ShapeRef.new(shape: ModelIdentifier, required: true, location_name: "foundationModel"))
    InvokeInlineAgentRequest.add_member(:guardrail_configuration, Shapes::ShapeRef.new(shape: GuardrailConfigurationWithArn, location_name: "guardrailConfiguration"))
    InvokeInlineAgentRequest.add_member(:idle_session_ttl_in_seconds, Shapes::ShapeRef.new(shape: SessionTTL, location_name: "idleSessionTTLInSeconds"))
    InvokeInlineAgentRequest.add_member(:inline_session_state, Shapes::ShapeRef.new(shape: InlineSessionState, location_name: "inlineSessionState"))
    InvokeInlineAgentRequest.add_member(:input_text, Shapes::ShapeRef.new(shape: InputText, location_name: "inputText"))
    InvokeInlineAgentRequest.add_member(:instruction, Shapes::ShapeRef.new(shape: Instruction, required: true, location_name: "instruction"))
    InvokeInlineAgentRequest.add_member(:knowledge_bases, Shapes::ShapeRef.new(shape: KnowledgeBases, location_name: "knowledgeBases"))
    InvokeInlineAgentRequest.add_member(:orchestration_type, Shapes::ShapeRef.new(shape: OrchestrationType, location_name: "orchestrationType"))
    InvokeInlineAgentRequest.add_member(:prompt_creation_configurations, Shapes::ShapeRef.new(shape: PromptCreationConfigurations, location_name: "promptCreationConfigurations"))
    InvokeInlineAgentRequest.add_member(:prompt_override_configuration, Shapes::ShapeRef.new(shape: PromptOverrideConfiguration, location_name: "promptOverrideConfiguration"))
    InvokeInlineAgentRequest.add_member(:session_id, Shapes::ShapeRef.new(shape: SessionId, required: true, location: "uri", location_name: "sessionId"))
    InvokeInlineAgentRequest.add_member(:streaming_configurations, Shapes::ShapeRef.new(shape: StreamingConfigurations, location_name: "streamingConfigurations"))
    InvokeInlineAgentRequest.struct_class = Types::InvokeInlineAgentRequest

    InvokeInlineAgentResponse.add_member(:completion, Shapes::ShapeRef.new(shape: InlineAgentResponseStream, required: true, eventstream: true, location_name: "completion"))
    InvokeInlineAgentResponse.add_member(:content_type, Shapes::ShapeRef.new(shape: MimeType, required: true, location: "header", location_name: "x-amzn-bedrock-agent-content-type"))
    InvokeInlineAgentResponse.add_member(:session_id, Shapes::ShapeRef.new(shape: SessionId, required: true, location: "header", location_name: "x-amz-bedrock-agent-session-id"))
    InvokeInlineAgentResponse.struct_class = Types::InvokeInlineAgentResponse
    InvokeInlineAgentResponse[:payload] = :completion
    InvokeInlineAgentResponse[:payload_member] = InvokeInlineAgentResponse.member(:completion)

    KnowledgeBase.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, required: true, location_name: "description"))
    KnowledgeBase.add_member(:knowledge_base_id, Shapes::ShapeRef.new(shape: KnowledgeBaseId, required: true, location_name: "knowledgeBaseId"))
    KnowledgeBase.add_member(:retrieval_configuration, Shapes::ShapeRef.new(shape: KnowledgeBaseRetrievalConfiguration, location_name: "retrievalConfiguration"))
    KnowledgeBase.struct_class = Types::KnowledgeBase

    KnowledgeBaseConfiguration.add_member(:knowledge_base_id, Shapes::ShapeRef.new(shape: KnowledgeBaseId, required: true, location_name: "knowledgeBaseId"))
    KnowledgeBaseConfiguration.add_member(:retrieval_configuration, Shapes::ShapeRef.new(shape: KnowledgeBaseRetrievalConfiguration, required: true, location_name: "retrievalConfiguration"))
    KnowledgeBaseConfiguration.struct_class = Types::KnowledgeBaseConfiguration

    KnowledgeBaseConfigurations.member = Shapes::ShapeRef.new(shape: KnowledgeBaseConfiguration)

    KnowledgeBaseLookupInput.add_member(:knowledge_base_id, Shapes::ShapeRef.new(shape: TraceKnowledgeBaseId, location_name: "knowledgeBaseId"))
    KnowledgeBaseLookupInput.add_member(:text, Shapes::ShapeRef.new(shape: KnowledgeBaseLookupInputString, location_name: "text"))
    KnowledgeBaseLookupInput.struct_class = Types::KnowledgeBaseLookupInput

    KnowledgeBaseLookupOutput.add_member(:metadata, Shapes::ShapeRef.new(shape: Metadata, location_name: "metadata"))
    KnowledgeBaseLookupOutput.add_member(:retrieved_references, Shapes::ShapeRef.new(shape: RetrievedReferences, location_name: "retrievedReferences"))
    KnowledgeBaseLookupOutput.struct_class = Types::KnowledgeBaseLookupOutput

    KnowledgeBaseQuery.add_member(:image, Shapes::ShapeRef.new(shape: InputImage, location_name: "image"))
    KnowledgeBaseQuery.add_member(:text, Shapes::ShapeRef.new(shape: KnowledgeBaseQueryTextString, location_name: "text"))
    KnowledgeBaseQuery.add_member(:type, Shapes::ShapeRef.new(shape: KnowledgeBaseQueryType, location_name: "type"))
    KnowledgeBaseQuery.struct_class = Types::KnowledgeBaseQuery

    KnowledgeBaseRetrievalConfiguration.add_member(:vector_search_configuration, Shapes::ShapeRef.new(shape: KnowledgeBaseVectorSearchConfiguration, required: true, location_name: "vectorSearchConfiguration"))
    KnowledgeBaseRetrievalConfiguration.struct_class = Types::KnowledgeBaseRetrievalConfiguration

    KnowledgeBaseRetrievalResult.add_member(:content, Shapes::ShapeRef.new(shape: RetrievalResultContent, required: true, location_name: "content"))
    KnowledgeBaseRetrievalResult.add_member(:location, Shapes::ShapeRef.new(shape: RetrievalResultLocation, location_name: "location"))
    KnowledgeBaseRetrievalResult.add_member(:metadata, Shapes::ShapeRef.new(shape: RetrievalResultMetadata, location_name: "metadata"))
    KnowledgeBaseRetrievalResult.add_member(:score, Shapes::ShapeRef.new(shape: Double, location_name: "score"))
    KnowledgeBaseRetrievalResult.struct_class = Types::KnowledgeBaseRetrievalResult

    KnowledgeBaseRetrievalResults.member = Shapes::ShapeRef.new(shape: KnowledgeBaseRetrievalResult)

    KnowledgeBaseRetrieveAndGenerateConfiguration.add_member(:generation_configuration, Shapes::ShapeRef.new(shape: GenerationConfiguration, location_name: "generationConfiguration"))
    KnowledgeBaseRetrieveAndGenerateConfiguration.add_member(:knowledge_base_id, Shapes::ShapeRef.new(shape: KnowledgeBaseId, required: true, location_name: "knowledgeBaseId"))
    KnowledgeBaseRetrieveAndGenerateConfiguration.add_member(:model_arn, Shapes::ShapeRef.new(shape: BedrockModelArn, required: true, location_name: "modelArn"))
    KnowledgeBaseRetrieveAndGenerateConfiguration.add_member(:orchestration_configuration, Shapes::ShapeRef.new(shape: OrchestrationConfiguration, location_name: "orchestrationConfiguration"))
    KnowledgeBaseRetrieveAndGenerateConfiguration.add_member(:retrieval_configuration, Shapes::ShapeRef.new(shape: KnowledgeBaseRetrievalConfiguration, location_name: "retrievalConfiguration"))
    KnowledgeBaseRetrieveAndGenerateConfiguration.struct_class = Types::KnowledgeBaseRetrieveAndGenerateConfiguration

    KnowledgeBaseVectorSearchConfiguration.add_member(:filter, Shapes::ShapeRef.new(shape: RetrievalFilter, location_name: "filter"))
    KnowledgeBaseVectorSearchConfiguration.add_member(:implicit_filter_configuration, Shapes::ShapeRef.new(shape: ImplicitFilterConfiguration, location_name: "implicitFilterConfiguration"))
    KnowledgeBaseVectorSearchConfiguration.add_member(:number_of_results, Shapes::ShapeRef.new(shape: KnowledgeBaseVectorSearchConfigurationNumberOfResultsInteger, location_name: "numberOfResults", metadata: {"box" => true}))
    KnowledgeBaseVectorSearchConfiguration.add_member(:override_search_type, Shapes::ShapeRef.new(shape: SearchType, location_name: "overrideSearchType"))
    KnowledgeBaseVectorSearchConfiguration.add_member(:reranking_configuration, Shapes::ShapeRef.new(shape: VectorSearchRerankingConfiguration, location_name: "rerankingConfiguration"))
    KnowledgeBaseVectorSearchConfiguration.struct_class = Types::KnowledgeBaseVectorSearchConfiguration

    KnowledgeBases.member = Shapes::ShapeRef.new(shape: KnowledgeBase)

    ListFlowExecutionEventsRequest.add_member(:event_type, Shapes::ShapeRef.new(shape: FlowExecutionEventType, required: true, location: "querystring", location_name: "eventType"))
    ListFlowExecutionEventsRequest.add_member(:execution_identifier, Shapes::ShapeRef.new(shape: FlowExecutionIdentifier, required: true, location: "uri", location_name: "executionIdentifier"))
    ListFlowExecutionEventsRequest.add_member(:flow_alias_identifier, Shapes::ShapeRef.new(shape: FlowAliasIdentifier, required: true, location: "uri", location_name: "flowAliasIdentifier"))
    ListFlowExecutionEventsRequest.add_member(:flow_identifier, Shapes::ShapeRef.new(shape: FlowIdentifier, required: true, location: "uri", location_name: "flowIdentifier"))
    ListFlowExecutionEventsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListFlowExecutionEventsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListFlowExecutionEventsRequest.struct_class = Types::ListFlowExecutionEventsRequest

    ListFlowExecutionEventsResponse.add_member(:flow_execution_events, Shapes::ShapeRef.new(shape: FlowExecutionEvents, required: true, location_name: "flowExecutionEvents"))
    ListFlowExecutionEventsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListFlowExecutionEventsResponse.struct_class = Types::ListFlowExecutionEventsResponse

    ListFlowExecutionsRequest.add_member(:flow_alias_identifier, Shapes::ShapeRef.new(shape: FlowAliasIdentifier, location: "querystring", location_name: "flowAliasIdentifier"))
    ListFlowExecutionsRequest.add_member(:flow_identifier, Shapes::ShapeRef.new(shape: FlowIdentifier, required: true, location: "uri", location_name: "flowIdentifier"))
    ListFlowExecutionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListFlowExecutionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListFlowExecutionsRequest.struct_class = Types::ListFlowExecutionsRequest

    ListFlowExecutionsResponse.add_member(:flow_execution_summaries, Shapes::ShapeRef.new(shape: FlowExecutionSummaries, required: true, location_name: "flowExecutionSummaries"))
    ListFlowExecutionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListFlowExecutionsResponse.struct_class = Types::ListFlowExecutionsResponse

    ListInvocationStepsRequest.add_member(:invocation_identifier, Shapes::ShapeRef.new(shape: InvocationIdentifier, location_name: "invocationIdentifier"))
    ListInvocationStepsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListInvocationStepsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListInvocationStepsRequest.add_member(:session_identifier, Shapes::ShapeRef.new(shape: SessionIdentifier, required: true, location: "uri", location_name: "sessionIdentifier"))
    ListInvocationStepsRequest.struct_class = Types::ListInvocationStepsRequest

    ListInvocationStepsResponse.add_member(:invocation_step_summaries, Shapes::ShapeRef.new(shape: InvocationStepSummaries, required: true, location_name: "invocationStepSummaries"))
    ListInvocationStepsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListInvocationStepsResponse.struct_class = Types::ListInvocationStepsResponse

    ListInvocationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListInvocationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListInvocationsRequest.add_member(:session_identifier, Shapes::ShapeRef.new(shape: SessionIdentifier, required: true, location: "uri", location_name: "sessionIdentifier"))
    ListInvocationsRequest.struct_class = Types::ListInvocationsRequest

    ListInvocationsResponse.add_member(:invocation_summaries, Shapes::ShapeRef.new(shape: InvocationSummaries, required: true, location_name: "invocationSummaries"))
    ListInvocationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListInvocationsResponse.struct_class = Types::ListInvocationsResponse

    ListSessionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListSessionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListSessionsRequest.struct_class = Types::ListSessionsRequest

    ListSessionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListSessionsResponse.add_member(:session_summaries, Shapes::ShapeRef.new(shape: SessionSummaries, required: true, location_name: "sessionSummaries"))
    ListSessionsResponse.struct_class = Types::ListSessionsResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: TaggableResourcesArn, required: true, location: "uri", location_name: "resourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    Memories.member = Shapes::ShapeRef.new(shape: Memory)

    Memory.add_member(:session_summary, Shapes::ShapeRef.new(shape: MemorySessionSummary, location_name: "sessionSummary"))
    Memory.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    Memory.add_member_subclass(:session_summary, Types::Memory::SessionSummary)
    Memory.add_member_subclass(:unknown, Types::Memory::Unknown)
    Memory.struct_class = Types::Memory

    MemorySessionSummary.add_member(:memory_id, Shapes::ShapeRef.new(shape: MemoryId, location_name: "memoryId"))
    MemorySessionSummary.add_member(:session_expiry_time, Shapes::ShapeRef.new(shape: DateTimestamp, location_name: "sessionExpiryTime"))
    MemorySessionSummary.add_member(:session_id, Shapes::ShapeRef.new(shape: SessionId, location_name: "sessionId"))
    MemorySessionSummary.add_member(:session_start_time, Shapes::ShapeRef.new(shape: DateTimestamp, location_name: "sessionStartTime"))
    MemorySessionSummary.add_member(:summary_text, Shapes::ShapeRef.new(shape: SummaryText, location_name: "summaryText"))
    MemorySessionSummary.struct_class = Types::MemorySessionSummary

    Message.add_member(:content, Shapes::ShapeRef.new(shape: ContentBlocks, required: true, location_name: "content"))
    Message.add_member(:role, Shapes::ShapeRef.new(shape: ConversationRole, required: true, location_name: "role"))
    Message.struct_class = Types::Message

    Messages.member = Shapes::ShapeRef.new(shape: Message)

    Metadata.add_member(:client_request_id, Shapes::ShapeRef.new(shape: String, location_name: "clientRequestId"))
    Metadata.add_member(:end_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "endTime"))
    Metadata.add_member(:operation_total_time_ms, Shapes::ShapeRef.new(shape: Long, location_name: "operationTotalTimeMs"))
    Metadata.add_member(:start_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "startTime"))
    Metadata.add_member(:total_time_ms, Shapes::ShapeRef.new(shape: Long, location_name: "totalTimeMs"))
    Metadata.add_member(:usage, Shapes::ShapeRef.new(shape: Usage, location_name: "usage"))
    Metadata.struct_class = Types::Metadata

    MetadataAttributeSchema.add_member(:description, Shapes::ShapeRef.new(shape: MetadataAttributeSchemaDescriptionString, required: true, location_name: "description"))
    MetadataAttributeSchema.add_member(:key, Shapes::ShapeRef.new(shape: MetadataAttributeSchemaKeyString, required: true, location_name: "key"))
    MetadataAttributeSchema.add_member(:type, Shapes::ShapeRef.new(shape: AttributeType, required: true, location_name: "type"))
    MetadataAttributeSchema.struct_class = Types::MetadataAttributeSchema

    MetadataAttributeSchemaList.member = Shapes::ShapeRef.new(shape: MetadataAttributeSchema)

    MetadataConfigurationForReranking.add_member(:selection_mode, Shapes::ShapeRef.new(shape: RerankingMetadataSelectionMode, required: true, location_name: "selectionMode"))
    MetadataConfigurationForReranking.add_member(:selective_mode_configuration, Shapes::ShapeRef.new(shape: RerankingMetadataSelectiveModeConfiguration, location_name: "selectiveModeConfiguration"))
    MetadataConfigurationForReranking.struct_class = Types::MetadataConfigurationForReranking

    ModelInvocationInput.add_member(:foundation_model, Shapes::ShapeRef.new(shape: ModelIdentifier, location_name: "foundationModel"))
    ModelInvocationInput.add_member(:inference_configuration, Shapes::ShapeRef.new(shape: InferenceConfiguration, location_name: "inferenceConfiguration"))
    ModelInvocationInput.add_member(:override_lambda, Shapes::ShapeRef.new(shape: LambdaArn, location_name: "overrideLambda"))
    ModelInvocationInput.add_member(:parser_mode, Shapes::ShapeRef.new(shape: CreationMode, location_name: "parserMode"))
    ModelInvocationInput.add_member(:prompt_creation_mode, Shapes::ShapeRef.new(shape: CreationMode, location_name: "promptCreationMode"))
    ModelInvocationInput.add_member(:text, Shapes::ShapeRef.new(shape: PromptText, location_name: "text"))
    ModelInvocationInput.add_member(:trace_id, Shapes::ShapeRef.new(shape: TraceId, location_name: "traceId"))
    ModelInvocationInput.add_member(:type, Shapes::ShapeRef.new(shape: PromptType, location_name: "type"))
    ModelInvocationInput.struct_class = Types::ModelInvocationInput

    ModelNotReadyException.add_member(:message, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "message"))
    ModelNotReadyException.struct_class = Types::ModelNotReadyException

    ModelPerformanceConfiguration.add_member(:performance_config, Shapes::ShapeRef.new(shape: PerformanceConfiguration, location_name: "performanceConfig"))
    ModelPerformanceConfiguration.struct_class = Types::ModelPerformanceConfiguration

    NodeActionEvent.add_member(:node_name, Shapes::ShapeRef.new(shape: NodeName, required: true, location_name: "nodeName"))
    NodeActionEvent.add_member(:operation_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "operationName"))
    NodeActionEvent.add_member(:operation_request, Shapes::ShapeRef.new(shape: Document, location_name: "operationRequest"))
    NodeActionEvent.add_member(:operation_response, Shapes::ShapeRef.new(shape: Document, location_name: "operationResponse"))
    NodeActionEvent.add_member(:request_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "requestId"))
    NodeActionEvent.add_member(:service_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "serviceName"))
    NodeActionEvent.add_member(:timestamp, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "timestamp"))
    NodeActionEvent.struct_class = Types::NodeActionEvent

    NodeDependencyEvent.add_member(:node_name, Shapes::ShapeRef.new(shape: NodeName, required: true, location_name: "nodeName"))
    NodeDependencyEvent.add_member(:timestamp, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "timestamp"))
    NodeDependencyEvent.add_member(:trace_elements, Shapes::ShapeRef.new(shape: NodeTraceElements, required: true, location_name: "traceElements"))
    NodeDependencyEvent.struct_class = Types::NodeDependencyEvent

    NodeExecutionContent.add_member(:document, Shapes::ShapeRef.new(shape: Document, location_name: "document"))
    NodeExecutionContent.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    NodeExecutionContent.add_member_subclass(:document, Types::NodeExecutionContent::Document)
    NodeExecutionContent.add_member_subclass(:unknown, Types::NodeExecutionContent::Unknown)
    NodeExecutionContent.struct_class = Types::NodeExecutionContent

    NodeFailureEvent.add_member(:error_code, Shapes::ShapeRef.new(shape: NodeErrorCode, required: true, location_name: "errorCode"))
    NodeFailureEvent.add_member(:error_message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "errorMessage"))
    NodeFailureEvent.add_member(:node_name, Shapes::ShapeRef.new(shape: NodeName, required: true, location_name: "nodeName"))
    NodeFailureEvent.add_member(:timestamp, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "timestamp"))
    NodeFailureEvent.struct_class = Types::NodeFailureEvent

    NodeInputEvent.add_member(:fields, Shapes::ShapeRef.new(shape: NodeInputFields, required: true, location_name: "fields"))
    NodeInputEvent.add_member(:node_name, Shapes::ShapeRef.new(shape: NodeName, required: true, location_name: "nodeName"))
    NodeInputEvent.add_member(:timestamp, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "timestamp"))
    NodeInputEvent.struct_class = Types::NodeInputEvent

    NodeInputExecutionChain.member = Shapes::ShapeRef.new(shape: NodeInputExecutionChainItem)

    NodeInputExecutionChainItem.add_member(:index, Shapes::ShapeRef.new(shape: Integer, location_name: "index"))
    NodeInputExecutionChainItem.add_member(:node_name, Shapes::ShapeRef.new(shape: NodeName, required: true, location_name: "nodeName"))
    NodeInputExecutionChainItem.add_member(:type, Shapes::ShapeRef.new(shape: FlowControlNodeType, required: true, location_name: "type"))
    NodeInputExecutionChainItem.struct_class = Types::NodeInputExecutionChainItem

    NodeInputField.add_member(:category, Shapes::ShapeRef.new(shape: FlowNodeInputCategory, location_name: "category"))
    NodeInputField.add_member(:content, Shapes::ShapeRef.new(shape: NodeExecutionContent, required: true, location_name: "content"))
    NodeInputField.add_member(:execution_chain, Shapes::ShapeRef.new(shape: NodeInputExecutionChain, location_name: "executionChain"))
    NodeInputField.add_member(:name, Shapes::ShapeRef.new(shape: NodeInputName, required: true, location_name: "name"))
    NodeInputField.add_member(:source, Shapes::ShapeRef.new(shape: NodeInputSource, location_name: "source"))
    NodeInputField.add_member(:type, Shapes::ShapeRef.new(shape: FlowNodeIODataType, location_name: "type"))
    NodeInputField.struct_class = Types::NodeInputField

    NodeInputFields.member = Shapes::ShapeRef.new(shape: NodeInputField)

    NodeInputSource.add_member(:expression, Shapes::ShapeRef.new(shape: FlowNodeInputExpression, required: true, location_name: "expression"))
    NodeInputSource.add_member(:node_name, Shapes::ShapeRef.new(shape: NodeName, required: true, location_name: "nodeName"))
    NodeInputSource.add_member(:output_field_name, Shapes::ShapeRef.new(shape: FlowNodeOutputName, required: true, location_name: "outputFieldName"))
    NodeInputSource.struct_class = Types::NodeInputSource

    NodeOutputEvent.add_member(:fields, Shapes::ShapeRef.new(shape: NodeOutputFields, required: true, location_name: "fields"))
    NodeOutputEvent.add_member(:node_name, Shapes::ShapeRef.new(shape: NodeName, required: true, location_name: "nodeName"))
    NodeOutputEvent.add_member(:timestamp, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "timestamp"))
    NodeOutputEvent.struct_class = Types::NodeOutputEvent

    NodeOutputField.add_member(:content, Shapes::ShapeRef.new(shape: NodeExecutionContent, required: true, location_name: "content"))
    NodeOutputField.add_member(:name, Shapes::ShapeRef.new(shape: NodeOutputName, required: true, location_name: "name"))
    NodeOutputField.add_member(:next, Shapes::ShapeRef.new(shape: NodeOutputNextList, location_name: "next"))
    NodeOutputField.add_member(:type, Shapes::ShapeRef.new(shape: FlowNodeIODataType, location_name: "type"))
    NodeOutputField.struct_class = Types::NodeOutputField

    NodeOutputFields.member = Shapes::ShapeRef.new(shape: NodeOutputField)

    NodeOutputNext.add_member(:input_field_name, Shapes::ShapeRef.new(shape: FlowNodeInputName, required: true, location_name: "inputFieldName"))
    NodeOutputNext.add_member(:node_name, Shapes::ShapeRef.new(shape: NodeName, required: true, location_name: "nodeName"))
    NodeOutputNext.struct_class = Types::NodeOutputNext

    NodeOutputNextList.member = Shapes::ShapeRef.new(shape: NodeOutputNext)

    NodeTraceElements.add_member(:agent_traces, Shapes::ShapeRef.new(shape: AgentTraces, location_name: "agentTraces"))
    NodeTraceElements.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    NodeTraceElements.add_member_subclass(:agent_traces, Types::NodeTraceElements::AgentTraces)
    NodeTraceElements.add_member_subclass(:unknown, Types::NodeTraceElements::Unknown)
    NodeTraceElements.struct_class = Types::NodeTraceElements

    Observation.add_member(:action_group_invocation_output, Shapes::ShapeRef.new(shape: ActionGroupInvocationOutput, location_name: "actionGroupInvocationOutput"))
    Observation.add_member(:agent_collaborator_invocation_output, Shapes::ShapeRef.new(shape: AgentCollaboratorInvocationOutput, location_name: "agentCollaboratorInvocationOutput"))
    Observation.add_member(:code_interpreter_invocation_output, Shapes::ShapeRef.new(shape: CodeInterpreterInvocationOutput, location_name: "codeInterpreterInvocationOutput"))
    Observation.add_member(:final_response, Shapes::ShapeRef.new(shape: FinalResponse, location_name: "finalResponse"))
    Observation.add_member(:knowledge_base_lookup_output, Shapes::ShapeRef.new(shape: KnowledgeBaseLookupOutput, location_name: "knowledgeBaseLookupOutput"))
    Observation.add_member(:reprompt_response, Shapes::ShapeRef.new(shape: RepromptResponse, location_name: "repromptResponse"))
    Observation.add_member(:trace_id, Shapes::ShapeRef.new(shape: TraceId, location_name: "traceId"))
    Observation.add_member(:type, Shapes::ShapeRef.new(shape: Type, location_name: "type"))
    Observation.struct_class = Types::Observation

    OptimizePromptRequest.add_member(:input, Shapes::ShapeRef.new(shape: InputPrompt, required: true, location_name: "input"))
    OptimizePromptRequest.add_member(:target_model_id, Shapes::ShapeRef.new(shape: OptimizePromptRequestTargetModelIdString, required: true, location_name: "targetModelId"))
    OptimizePromptRequest.struct_class = Types::OptimizePromptRequest

    OptimizePromptResponse.add_member(:optimized_prompt, Shapes::ShapeRef.new(shape: OptimizedPromptStream, required: true, eventstream: true, location_name: "optimizedPrompt"))
    OptimizePromptResponse.struct_class = Types::OptimizePromptResponse
    OptimizePromptResponse[:payload] = :optimized_prompt
    OptimizePromptResponse[:payload_member] = OptimizePromptResponse.member(:optimized_prompt)

    OptimizedPrompt.add_member(:text_prompt, Shapes::ShapeRef.new(shape: TextPrompt, location_name: "textPrompt"))
    OptimizedPrompt.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    OptimizedPrompt.add_member_subclass(:text_prompt, Types::OptimizedPrompt::TextPrompt)
    OptimizedPrompt.add_member_subclass(:unknown, Types::OptimizedPrompt::Unknown)
    OptimizedPrompt.struct_class = Types::OptimizedPrompt

    OptimizedPromptEvent.add_member(:optimized_prompt, Shapes::ShapeRef.new(shape: OptimizedPrompt, location_name: "optimizedPrompt"))
    OptimizedPromptEvent.struct_class = Types::OptimizedPromptEvent

    OptimizedPromptStream.add_member(:access_denied_exception, Shapes::ShapeRef.new(shape: AccessDeniedException, location_name: "accessDeniedException"))
    OptimizedPromptStream.add_member(:analyze_prompt_event, Shapes::ShapeRef.new(shape: AnalyzePromptEvent, event: true, location_name: "analyzePromptEvent"))
    OptimizedPromptStream.add_member(:bad_gateway_exception, Shapes::ShapeRef.new(shape: BadGatewayException, location_name: "badGatewayException"))
    OptimizedPromptStream.add_member(:dependency_failed_exception, Shapes::ShapeRef.new(shape: DependencyFailedException, location_name: "dependencyFailedException"))
    OptimizedPromptStream.add_member(:internal_server_exception, Shapes::ShapeRef.new(shape: InternalServerException, location_name: "internalServerException"))
    OptimizedPromptStream.add_member(:optimized_prompt_event, Shapes::ShapeRef.new(shape: OptimizedPromptEvent, event: true, location_name: "optimizedPromptEvent"))
    OptimizedPromptStream.add_member(:throttling_exception, Shapes::ShapeRef.new(shape: ThrottlingException, location_name: "throttlingException"))
    OptimizedPromptStream.add_member(:validation_exception, Shapes::ShapeRef.new(shape: ValidationException, location_name: "validationException"))
    OptimizedPromptStream.struct_class = Types::OptimizedPromptStream

    OrchestrationConfiguration.add_member(:additional_model_request_fields, Shapes::ShapeRef.new(shape: AdditionalModelRequestFields, location_name: "additionalModelRequestFields"))
    OrchestrationConfiguration.add_member(:inference_config, Shapes::ShapeRef.new(shape: InferenceConfig, location_name: "inferenceConfig"))
    OrchestrationConfiguration.add_member(:performance_config, Shapes::ShapeRef.new(shape: PerformanceConfiguration, location_name: "performanceConfig"))
    OrchestrationConfiguration.add_member(:prompt_template, Shapes::ShapeRef.new(shape: PromptTemplate, location_name: "promptTemplate"))
    OrchestrationConfiguration.add_member(:query_transformation_configuration, Shapes::ShapeRef.new(shape: QueryTransformationConfiguration, location_name: "queryTransformationConfiguration"))
    OrchestrationConfiguration.struct_class = Types::OrchestrationConfiguration

    OrchestrationExecutor.add_member(:lambda, Shapes::ShapeRef.new(shape: LambdaArn, location_name: "lambda"))
    OrchestrationExecutor.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    OrchestrationExecutor.add_member_subclass(:lambda, Types::OrchestrationExecutor::Lambda)
    OrchestrationExecutor.add_member_subclass(:unknown, Types::OrchestrationExecutor::Unknown)
    OrchestrationExecutor.struct_class = Types::OrchestrationExecutor

    OrchestrationModelInvocationOutput.add_member(:metadata, Shapes::ShapeRef.new(shape: Metadata, location_name: "metadata"))
    OrchestrationModelInvocationOutput.add_member(:raw_response, Shapes::ShapeRef.new(shape: RawResponse, location_name: "rawResponse"))
    OrchestrationModelInvocationOutput.add_member(:reasoning_content, Shapes::ShapeRef.new(shape: ReasoningContentBlock, location_name: "reasoningContent"))
    OrchestrationModelInvocationOutput.add_member(:trace_id, Shapes::ShapeRef.new(shape: TraceId, location_name: "traceId"))
    OrchestrationModelInvocationOutput.struct_class = Types::OrchestrationModelInvocationOutput

    OrchestrationTrace.add_member(:invocation_input, Shapes::ShapeRef.new(shape: InvocationInput, location_name: "invocationInput"))
    OrchestrationTrace.add_member(:model_invocation_input, Shapes::ShapeRef.new(shape: ModelInvocationInput, location_name: "modelInvocationInput"))
    OrchestrationTrace.add_member(:model_invocation_output, Shapes::ShapeRef.new(shape: OrchestrationModelInvocationOutput, location_name: "modelInvocationOutput"))
    OrchestrationTrace.add_member(:observation, Shapes::ShapeRef.new(shape: Observation, location_name: "observation"))
    OrchestrationTrace.add_member(:rationale, Shapes::ShapeRef.new(shape: Rationale, location_name: "rationale"))
    OrchestrationTrace.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    OrchestrationTrace.add_member_subclass(:invocation_input, Types::OrchestrationTrace::InvocationInput)
    OrchestrationTrace.add_member_subclass(:model_invocation_input, Types::OrchestrationTrace::ModelInvocationInput)
    OrchestrationTrace.add_member_subclass(:model_invocation_output, Types::OrchestrationTrace::ModelInvocationOutput)
    OrchestrationTrace.add_member_subclass(:observation, Types::OrchestrationTrace::Observation)
    OrchestrationTrace.add_member_subclass(:rationale, Types::OrchestrationTrace::Rationale)
    OrchestrationTrace.add_member_subclass(:unknown, Types::OrchestrationTrace::Unknown)
    OrchestrationTrace.struct_class = Types::OrchestrationTrace

    OutputFile.add_member(:bytes, Shapes::ShapeRef.new(shape: FileBody, location_name: "bytes"))
    OutputFile.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "name"))
    OutputFile.add_member(:type, Shapes::ShapeRef.new(shape: MimeType, location_name: "type"))
    OutputFile.struct_class = Types::OutputFile

    OutputFiles.member = Shapes::ShapeRef.new(shape: OutputFile)

    Parameter.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "name"))
    Parameter.add_member(:type, Shapes::ShapeRef.new(shape: String, location_name: "type"))
    Parameter.add_member(:value, Shapes::ShapeRef.new(shape: String, location_name: "value"))
    Parameter.struct_class = Types::Parameter

    ParameterDetail.add_member(:description, Shapes::ShapeRef.new(shape: ParameterDescription, location_name: "description"))
    ParameterDetail.add_member(:required, Shapes::ShapeRef.new(shape: Boolean, location_name: "required"))
    ParameterDetail.add_member(:type, Shapes::ShapeRef.new(shape: ParameterType, required: true, location_name: "type"))
    ParameterDetail.struct_class = Types::ParameterDetail

    ParameterList.member = Shapes::ShapeRef.new(shape: Parameter)

    ParameterMap.key = Shapes::ShapeRef.new(shape: ParameterName)
    ParameterMap.value = Shapes::ShapeRef.new(shape: ParameterDetail)

    Parameters.member = Shapes::ShapeRef.new(shape: Parameter)

    PayloadPart.add_member(:attribution, Shapes::ShapeRef.new(shape: Attribution, location_name: "attribution"))
    PayloadPart.add_member(:bytes, Shapes::ShapeRef.new(shape: PartBody, location_name: "bytes"))
    PayloadPart.struct_class = Types::PayloadPart

    PerformanceConfiguration.add_member(:latency, Shapes::ShapeRef.new(shape: PerformanceConfigLatency, location_name: "latency"))
    PerformanceConfiguration.struct_class = Types::PerformanceConfiguration

    PostProcessingModelInvocationOutput.add_member(:metadata, Shapes::ShapeRef.new(shape: Metadata, location_name: "metadata"))
    PostProcessingModelInvocationOutput.add_member(:parsed_response, Shapes::ShapeRef.new(shape: PostProcessingParsedResponse, location_name: "parsedResponse"))
    PostProcessingModelInvocationOutput.add_member(:raw_response, Shapes::ShapeRef.new(shape: RawResponse, location_name: "rawResponse"))
    PostProcessingModelInvocationOutput.add_member(:reasoning_content, Shapes::ShapeRef.new(shape: ReasoningContentBlock, location_name: "reasoningContent"))
    PostProcessingModelInvocationOutput.add_member(:trace_id, Shapes::ShapeRef.new(shape: TraceId, location_name: "traceId"))
    PostProcessingModelInvocationOutput.struct_class = Types::PostProcessingModelInvocationOutput

    PostProcessingParsedResponse.add_member(:text, Shapes::ShapeRef.new(shape: OutputString, location_name: "text"))
    PostProcessingParsedResponse.struct_class = Types::PostProcessingParsedResponse

    PostProcessingTrace.add_member(:model_invocation_input, Shapes::ShapeRef.new(shape: ModelInvocationInput, location_name: "modelInvocationInput"))
    PostProcessingTrace.add_member(:model_invocation_output, Shapes::ShapeRef.new(shape: PostProcessingModelInvocationOutput, location_name: "modelInvocationOutput"))
    PostProcessingTrace.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    PostProcessingTrace.add_member_subclass(:model_invocation_input, Types::PostProcessingTrace::ModelInvocationInput)
    PostProcessingTrace.add_member_subclass(:model_invocation_output, Types::PostProcessingTrace::ModelInvocationOutput)
    PostProcessingTrace.add_member_subclass(:unknown, Types::PostProcessingTrace::Unknown)
    PostProcessingTrace.struct_class = Types::PostProcessingTrace

    PreProcessingModelInvocationOutput.add_member(:metadata, Shapes::ShapeRef.new(shape: Metadata, location_name: "metadata"))
    PreProcessingModelInvocationOutput.add_member(:parsed_response, Shapes::ShapeRef.new(shape: PreProcessingParsedResponse, location_name: "parsedResponse"))
    PreProcessingModelInvocationOutput.add_member(:raw_response, Shapes::ShapeRef.new(shape: RawResponse, location_name: "rawResponse"))
    PreProcessingModelInvocationOutput.add_member(:reasoning_content, Shapes::ShapeRef.new(shape: ReasoningContentBlock, location_name: "reasoningContent"))
    PreProcessingModelInvocationOutput.add_member(:trace_id, Shapes::ShapeRef.new(shape: TraceId, location_name: "traceId"))
    PreProcessingModelInvocationOutput.struct_class = Types::PreProcessingModelInvocationOutput

    PreProcessingParsedResponse.add_member(:is_valid, Shapes::ShapeRef.new(shape: Boolean, location_name: "isValid"))
    PreProcessingParsedResponse.add_member(:rationale, Shapes::ShapeRef.new(shape: RationaleString, location_name: "rationale"))
    PreProcessingParsedResponse.struct_class = Types::PreProcessingParsedResponse

    PreProcessingTrace.add_member(:model_invocation_input, Shapes::ShapeRef.new(shape: ModelInvocationInput, location_name: "modelInvocationInput"))
    PreProcessingTrace.add_member(:model_invocation_output, Shapes::ShapeRef.new(shape: PreProcessingModelInvocationOutput, location_name: "modelInvocationOutput"))
    PreProcessingTrace.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    PreProcessingTrace.add_member_subclass(:model_invocation_input, Types::PreProcessingTrace::ModelInvocationInput)
    PreProcessingTrace.add_member_subclass(:model_invocation_output, Types::PreProcessingTrace::ModelInvocationOutput)
    PreProcessingTrace.add_member_subclass(:unknown, Types::PreProcessingTrace::Unknown)
    PreProcessingTrace.struct_class = Types::PreProcessingTrace

    PromptConfiguration.add_member(:additional_model_request_fields, Shapes::ShapeRef.new(shape: Document, location_name: "additionalModelRequestFields"))
    PromptConfiguration.add_member(:base_prompt_template, Shapes::ShapeRef.new(shape: BasePromptTemplate, location_name: "basePromptTemplate"))
    PromptConfiguration.add_member(:foundation_model, Shapes::ShapeRef.new(shape: ModelIdentifier, location_name: "foundationModel"))
    PromptConfiguration.add_member(:inference_configuration, Shapes::ShapeRef.new(shape: InferenceConfiguration, location_name: "inferenceConfiguration"))
    PromptConfiguration.add_member(:parser_mode, Shapes::ShapeRef.new(shape: CreationMode, location_name: "parserMode"))
    PromptConfiguration.add_member(:prompt_creation_mode, Shapes::ShapeRef.new(shape: CreationMode, location_name: "promptCreationMode"))
    PromptConfiguration.add_member(:prompt_state, Shapes::ShapeRef.new(shape: PromptState, location_name: "promptState"))
    PromptConfiguration.add_member(:prompt_type, Shapes::ShapeRef.new(shape: PromptType, location_name: "promptType"))
    PromptConfiguration.struct_class = Types::PromptConfiguration

    PromptConfigurations.member = Shapes::ShapeRef.new(shape: PromptConfiguration)

    PromptCreationConfigurations.add_member(:exclude_previous_thinking_steps, Shapes::ShapeRef.new(shape: Boolean, location_name: "excludePreviousThinkingSteps"))
    PromptCreationConfigurations.add_member(:previous_conversation_turns_to_include, Shapes::ShapeRef.new(shape: PromptCreationConfigurationsPreviousConversationTurnsToIncludeInteger, location_name: "previousConversationTurnsToInclude"))
    PromptCreationConfigurations.struct_class = Types::PromptCreationConfigurations

    PromptOverrideConfiguration.add_member(:override_lambda, Shapes::ShapeRef.new(shape: LambdaResourceArn, location_name: "overrideLambda"))
    PromptOverrideConfiguration.add_member(:prompt_configurations, Shapes::ShapeRef.new(shape: PromptConfigurations, required: true, location_name: "promptConfigurations"))
    PromptOverrideConfiguration.struct_class = Types::PromptOverrideConfiguration

    PromptSessionAttributesMap.key = Shapes::ShapeRef.new(shape: String)
    PromptSessionAttributesMap.value = Shapes::ShapeRef.new(shape: String)

    PromptTemplate.add_member(:text_prompt_template, Shapes::ShapeRef.new(shape: TextPromptTemplate, location_name: "textPromptTemplate"))
    PromptTemplate.struct_class = Types::PromptTemplate

    PropertyParameters.add_member(:properties, Shapes::ShapeRef.new(shape: ParameterList, location_name: "properties"))
    PropertyParameters.struct_class = Types::PropertyParameters

    PutInvocationStepRequest.add_member(:invocation_identifier, Shapes::ShapeRef.new(shape: InvocationIdentifier, required: true, location_name: "invocationIdentifier"))
    PutInvocationStepRequest.add_member(:invocation_step_id, Shapes::ShapeRef.new(shape: Uuid, location_name: "invocationStepId"))
    PutInvocationStepRequest.add_member(:invocation_step_time, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "invocationStepTime"))
    PutInvocationStepRequest.add_member(:payload, Shapes::ShapeRef.new(shape: InvocationStepPayload, required: true, location_name: "payload"))
    PutInvocationStepRequest.add_member(:session_identifier, Shapes::ShapeRef.new(shape: SessionIdentifier, required: true, location: "uri", location_name: "sessionIdentifier"))
    PutInvocationStepRequest.struct_class = Types::PutInvocationStepRequest

    PutInvocationStepResponse.add_member(:invocation_step_id, Shapes::ShapeRef.new(shape: Uuid, required: true, location_name: "invocationStepId"))
    PutInvocationStepResponse.struct_class = Types::PutInvocationStepResponse

    QueryGenerationInput.add_member(:text, Shapes::ShapeRef.new(shape: QueryGenerationInputTextString, required: true, location_name: "text"))
    QueryGenerationInput.add_member(:type, Shapes::ShapeRef.new(shape: InputQueryType, required: true, location_name: "type"))
    QueryGenerationInput.struct_class = Types::QueryGenerationInput

    QueryTransformationConfiguration.add_member(:type, Shapes::ShapeRef.new(shape: QueryTransformationType, required: true, location_name: "type"))
    QueryTransformationConfiguration.struct_class = Types::QueryTransformationConfiguration

    RAGStopSequences.member = Shapes::ShapeRef.new(shape: RAGStopSequencesMemberString)

    Rationale.add_member(:text, Shapes::ShapeRef.new(shape: RationaleString, location_name: "text"))
    Rationale.add_member(:trace_id, Shapes::ShapeRef.new(shape: TraceId, location_name: "traceId"))
    Rationale.struct_class = Types::Rationale

    RawResponse.add_member(:content, Shapes::ShapeRef.new(shape: String, location_name: "content"))
    RawResponse.struct_class = Types::RawResponse

    ReasoningContentBlock.add_member(:reasoning_text, Shapes::ShapeRef.new(shape: ReasoningTextBlock, location_name: "reasoningText"))
    ReasoningContentBlock.add_member(:redacted_content, Shapes::ShapeRef.new(shape: Blob, location_name: "redactedContent"))
    ReasoningContentBlock.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ReasoningContentBlock.add_member_subclass(:reasoning_text, Types::ReasoningContentBlock::ReasoningText)
    ReasoningContentBlock.add_member_subclass(:redacted_content, Types::ReasoningContentBlock::RedactedContent)
    ReasoningContentBlock.add_member_subclass(:unknown, Types::ReasoningContentBlock::Unknown)
    ReasoningContentBlock.struct_class = Types::ReasoningContentBlock

    ReasoningTextBlock.add_member(:signature, Shapes::ShapeRef.new(shape: String, location_name: "signature"))
    ReasoningTextBlock.add_member(:text, Shapes::ShapeRef.new(shape: String, required: true, location_name: "text"))
    ReasoningTextBlock.struct_class = Types::ReasoningTextBlock

    RepromptResponse.add_member(:source, Shapes::ShapeRef.new(shape: Source, location_name: "source"))
    RepromptResponse.add_member(:text, Shapes::ShapeRef.new(shape: String, location_name: "text"))
    RepromptResponse.struct_class = Types::RepromptResponse

    RequestBody.add_member(:content, Shapes::ShapeRef.new(shape: ContentMap, location_name: "content"))
    RequestBody.struct_class = Types::RequestBody

    RerankDocument.add_member(:json_document, Shapes::ShapeRef.new(shape: Document, location_name: "jsonDocument"))
    RerankDocument.add_member(:text_document, Shapes::ShapeRef.new(shape: RerankTextDocument, location_name: "textDocument"))
    RerankDocument.add_member(:type, Shapes::ShapeRef.new(shape: RerankDocumentType, required: true, location_name: "type"))
    RerankDocument.struct_class = Types::RerankDocument

    RerankQueriesList.member = Shapes::ShapeRef.new(shape: RerankQuery)

    RerankQuery.add_member(:text_query, Shapes::ShapeRef.new(shape: RerankTextDocument, required: true, location_name: "textQuery"))
    RerankQuery.add_member(:type, Shapes::ShapeRef.new(shape: RerankQueryContentType, required: true, location_name: "type"))
    RerankQuery.struct_class = Types::RerankQuery

    RerankRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    RerankRequest.add_member(:queries, Shapes::ShapeRef.new(shape: RerankQueriesList, required: true, location_name: "queries"))
    RerankRequest.add_member(:reranking_configuration, Shapes::ShapeRef.new(shape: RerankingConfiguration, required: true, location_name: "rerankingConfiguration"))
    RerankRequest.add_member(:sources, Shapes::ShapeRef.new(shape: RerankSourcesList, required: true, location_name: "sources"))
    RerankRequest.struct_class = Types::RerankRequest

    RerankResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    RerankResponse.add_member(:results, Shapes::ShapeRef.new(shape: RerankResultsList, required: true, location_name: "results"))
    RerankResponse.struct_class = Types::RerankResponse

    RerankResult.add_member(:document, Shapes::ShapeRef.new(shape: RerankDocument, location_name: "document"))
    RerankResult.add_member(:index, Shapes::ShapeRef.new(shape: RerankResultIndexInteger, required: true, location_name: "index"))
    RerankResult.add_member(:relevance_score, Shapes::ShapeRef.new(shape: Float, required: true, location_name: "relevanceScore"))
    RerankResult.struct_class = Types::RerankResult

    RerankResultsList.member = Shapes::ShapeRef.new(shape: RerankResult)

    RerankSource.add_member(:inline_document_source, Shapes::ShapeRef.new(shape: RerankDocument, required: true, location_name: "inlineDocumentSource"))
    RerankSource.add_member(:type, Shapes::ShapeRef.new(shape: RerankSourceType, required: true, location_name: "type"))
    RerankSource.struct_class = Types::RerankSource

    RerankSourcesList.member = Shapes::ShapeRef.new(shape: RerankSource)

    RerankTextDocument.add_member(:text, Shapes::ShapeRef.new(shape: RerankTextDocumentTextString, location_name: "text"))
    RerankTextDocument.struct_class = Types::RerankTextDocument

    RerankingConfiguration.add_member(:bedrock_reranking_configuration, Shapes::ShapeRef.new(shape: BedrockRerankingConfiguration, required: true, location_name: "bedrockRerankingConfiguration"))
    RerankingConfiguration.add_member(:type, Shapes::ShapeRef.new(shape: RerankingConfigurationType, required: true, location_name: "type"))
    RerankingConfiguration.struct_class = Types::RerankingConfiguration

    RerankingMetadataSelectiveModeConfiguration.add_member(:fields_to_exclude, Shapes::ShapeRef.new(shape: FieldsForReranking, location_name: "fieldsToExclude"))
    RerankingMetadataSelectiveModeConfiguration.add_member(:fields_to_include, Shapes::ShapeRef.new(shape: FieldsForReranking, location_name: "fieldsToInclude"))
    RerankingMetadataSelectiveModeConfiguration.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    RerankingMetadataSelectiveModeConfiguration.add_member_subclass(:fields_to_exclude, Types::RerankingMetadataSelectiveModeConfiguration::FieldsToExclude)
    RerankingMetadataSelectiveModeConfiguration.add_member_subclass(:fields_to_include, Types::RerankingMetadataSelectiveModeConfiguration::FieldsToInclude)
    RerankingMetadataSelectiveModeConfiguration.add_member_subclass(:unknown, Types::RerankingMetadataSelectiveModeConfiguration::Unknown)
    RerankingMetadataSelectiveModeConfiguration.struct_class = Types::RerankingMetadataSelectiveModeConfiguration

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ResponseBody.key = Shapes::ShapeRef.new(shape: String)
    ResponseBody.value = Shapes::ShapeRef.new(shape: ContentBody)

    ResponseStream.add_member(:access_denied_exception, Shapes::ShapeRef.new(shape: AccessDeniedException, location_name: "accessDeniedException"))
    ResponseStream.add_member(:bad_gateway_exception, Shapes::ShapeRef.new(shape: BadGatewayException, location_name: "badGatewayException"))
    ResponseStream.add_member(:chunk, Shapes::ShapeRef.new(shape: PayloadPart, event: true, location_name: "chunk"))
    ResponseStream.add_member(:conflict_exception, Shapes::ShapeRef.new(shape: ConflictException, location_name: "conflictException"))
    ResponseStream.add_member(:dependency_failed_exception, Shapes::ShapeRef.new(shape: DependencyFailedException, location_name: "dependencyFailedException"))
    ResponseStream.add_member(:files, Shapes::ShapeRef.new(shape: FilePart, event: true, location_name: "files"))
    ResponseStream.add_member(:internal_server_exception, Shapes::ShapeRef.new(shape: InternalServerException, location_name: "internalServerException"))
    ResponseStream.add_member(:model_not_ready_exception, Shapes::ShapeRef.new(shape: ModelNotReadyException, location_name: "modelNotReadyException"))
    ResponseStream.add_member(:resource_not_found_exception, Shapes::ShapeRef.new(shape: ResourceNotFoundException, location_name: "resourceNotFoundException"))
    ResponseStream.add_member(:return_control, Shapes::ShapeRef.new(shape: ReturnControlPayload, event: true, location_name: "returnControl"))
    ResponseStream.add_member(:service_quota_exceeded_exception, Shapes::ShapeRef.new(shape: ServiceQuotaExceededException, location_name: "serviceQuotaExceededException"))
    ResponseStream.add_member(:throttling_exception, Shapes::ShapeRef.new(shape: ThrottlingException, location_name: "throttlingException"))
    ResponseStream.add_member(:trace, Shapes::ShapeRef.new(shape: TracePart, event: true, location_name: "trace"))
    ResponseStream.add_member(:validation_exception, Shapes::ShapeRef.new(shape: ValidationException, location_name: "validationException"))
    ResponseStream.struct_class = Types::ResponseStream

    RetrievalFilter.add_member(:and_all, Shapes::ShapeRef.new(shape: RetrievalFilterList, location_name: "andAll"))
    RetrievalFilter.add_member(:equals, Shapes::ShapeRef.new(shape: FilterAttribute, location_name: "equals"))
    RetrievalFilter.add_member(:greater_than, Shapes::ShapeRef.new(shape: FilterAttribute, location_name: "greaterThan"))
    RetrievalFilter.add_member(:greater_than_or_equals, Shapes::ShapeRef.new(shape: FilterAttribute, location_name: "greaterThanOrEquals"))
    RetrievalFilter.add_member(:in, Shapes::ShapeRef.new(shape: FilterAttribute, location_name: "in"))
    RetrievalFilter.add_member(:less_than, Shapes::ShapeRef.new(shape: FilterAttribute, location_name: "lessThan"))
    RetrievalFilter.add_member(:less_than_or_equals, Shapes::ShapeRef.new(shape: FilterAttribute, location_name: "lessThanOrEquals"))
    RetrievalFilter.add_member(:list_contains, Shapes::ShapeRef.new(shape: FilterAttribute, location_name: "listContains"))
    RetrievalFilter.add_member(:not_equals, Shapes::ShapeRef.new(shape: FilterAttribute, location_name: "notEquals"))
    RetrievalFilter.add_member(:not_in, Shapes::ShapeRef.new(shape: FilterAttribute, location_name: "notIn"))
    RetrievalFilter.add_member(:or_all, Shapes::ShapeRef.new(shape: RetrievalFilterList, location_name: "orAll"))
    RetrievalFilter.add_member(:starts_with, Shapes::ShapeRef.new(shape: FilterAttribute, location_name: "startsWith"))
    RetrievalFilter.add_member(:string_contains, Shapes::ShapeRef.new(shape: FilterAttribute, location_name: "stringContains"))
    RetrievalFilter.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    RetrievalFilter.add_member_subclass(:and_all, Types::RetrievalFilter::AndAll)
    RetrievalFilter.add_member_subclass(:equals, Types::RetrievalFilter::Equals)
    RetrievalFilter.add_member_subclass(:greater_than, Types::RetrievalFilter::GreaterThan)
    RetrievalFilter.add_member_subclass(:greater_than_or_equals, Types::RetrievalFilter::GreaterThanOrEquals)
    RetrievalFilter.add_member_subclass(:in, Types::RetrievalFilter::In)
    RetrievalFilter.add_member_subclass(:less_than, Types::RetrievalFilter::LessThan)
    RetrievalFilter.add_member_subclass(:less_than_or_equals, Types::RetrievalFilter::LessThanOrEquals)
    RetrievalFilter.add_member_subclass(:list_contains, Types::RetrievalFilter::ListContains)
    RetrievalFilter.add_member_subclass(:not_equals, Types::RetrievalFilter::NotEquals)
    RetrievalFilter.add_member_subclass(:not_in, Types::RetrievalFilter::NotIn)
    RetrievalFilter.add_member_subclass(:or_all, Types::RetrievalFilter::OrAll)
    RetrievalFilter.add_member_subclass(:starts_with, Types::RetrievalFilter::StartsWith)
    RetrievalFilter.add_member_subclass(:string_contains, Types::RetrievalFilter::StringContains)
    RetrievalFilter.add_member_subclass(:unknown, Types::RetrievalFilter::Unknown)
    RetrievalFilter.struct_class = Types::RetrievalFilter

    RetrievalFilterList.member = Shapes::ShapeRef.new(shape: RetrievalFilter)

    RetrievalResultConfluenceLocation.add_member(:url, Shapes::ShapeRef.new(shape: String, location_name: "url"))
    RetrievalResultConfluenceLocation.struct_class = Types::RetrievalResultConfluenceLocation

    RetrievalResultContent.add_member(:audio, Shapes::ShapeRef.new(shape: AudioSegment, location_name: "audio"))
    RetrievalResultContent.add_member(:byte_content, Shapes::ShapeRef.new(shape: String, location_name: "byteContent"))
    RetrievalResultContent.add_member(:row, Shapes::ShapeRef.new(shape: RetrievalResultContentRow, location_name: "row"))
    RetrievalResultContent.add_member(:text, Shapes::ShapeRef.new(shape: String, location_name: "text"))
    RetrievalResultContent.add_member(:type, Shapes::ShapeRef.new(shape: RetrievalResultContentType, location_name: "type"))
    RetrievalResultContent.add_member(:video, Shapes::ShapeRef.new(shape: VideoSegment, location_name: "video"))
    RetrievalResultContent.struct_class = Types::RetrievalResultContent

    RetrievalResultContentColumn.add_member(:column_name, Shapes::ShapeRef.new(shape: String, location_name: "columnName"))
    RetrievalResultContentColumn.add_member(:column_value, Shapes::ShapeRef.new(shape: String, location_name: "columnValue"))
    RetrievalResultContentColumn.add_member(:type, Shapes::ShapeRef.new(shape: RetrievalResultContentColumnType, location_name: "type"))
    RetrievalResultContentColumn.struct_class = Types::RetrievalResultContentColumn

    RetrievalResultContentRow.member = Shapes::ShapeRef.new(shape: RetrievalResultContentColumn)

    RetrievalResultCustomDocumentLocation.add_member(:id, Shapes::ShapeRef.new(shape: String, location_name: "id"))
    RetrievalResultCustomDocumentLocation.struct_class = Types::RetrievalResultCustomDocumentLocation

    RetrievalResultKendraDocumentLocation.add_member(:uri, Shapes::ShapeRef.new(shape: String, location_name: "uri"))
    RetrievalResultKendraDocumentLocation.struct_class = Types::RetrievalResultKendraDocumentLocation

    RetrievalResultLocation.add_member(:confluence_location, Shapes::ShapeRef.new(shape: RetrievalResultConfluenceLocation, location_name: "confluenceLocation"))
    RetrievalResultLocation.add_member(:custom_document_location, Shapes::ShapeRef.new(shape: RetrievalResultCustomDocumentLocation, location_name: "customDocumentLocation"))
    RetrievalResultLocation.add_member(:kendra_document_location, Shapes::ShapeRef.new(shape: RetrievalResultKendraDocumentLocation, location_name: "kendraDocumentLocation"))
    RetrievalResultLocation.add_member(:s3_location, Shapes::ShapeRef.new(shape: RetrievalResultS3Location, location_name: "s3Location"))
    RetrievalResultLocation.add_member(:salesforce_location, Shapes::ShapeRef.new(shape: RetrievalResultSalesforceLocation, location_name: "salesforceLocation"))
    RetrievalResultLocation.add_member(:share_point_location, Shapes::ShapeRef.new(shape: RetrievalResultSharePointLocation, location_name: "sharePointLocation"))
    RetrievalResultLocation.add_member(:sql_location, Shapes::ShapeRef.new(shape: RetrievalResultSqlLocation, location_name: "sqlLocation"))
    RetrievalResultLocation.add_member(:type, Shapes::ShapeRef.new(shape: RetrievalResultLocationType, required: true, location_name: "type"))
    RetrievalResultLocation.add_member(:web_location, Shapes::ShapeRef.new(shape: RetrievalResultWebLocation, location_name: "webLocation"))
    RetrievalResultLocation.struct_class = Types::RetrievalResultLocation

    RetrievalResultMetadata.key = Shapes::ShapeRef.new(shape: RetrievalResultMetadataKey)
    RetrievalResultMetadata.value = Shapes::ShapeRef.new(shape: RetrievalResultMetadataValue)

    RetrievalResultS3Location.add_member(:uri, Shapes::ShapeRef.new(shape: String, location_name: "uri"))
    RetrievalResultS3Location.struct_class = Types::RetrievalResultS3Location

    RetrievalResultSalesforceLocation.add_member(:url, Shapes::ShapeRef.new(shape: String, location_name: "url"))
    RetrievalResultSalesforceLocation.struct_class = Types::RetrievalResultSalesforceLocation

    RetrievalResultSharePointLocation.add_member(:url, Shapes::ShapeRef.new(shape: String, location_name: "url"))
    RetrievalResultSharePointLocation.struct_class = Types::RetrievalResultSharePointLocation

    RetrievalResultSqlLocation.add_member(:query, Shapes::ShapeRef.new(shape: String, location_name: "query"))
    RetrievalResultSqlLocation.struct_class = Types::RetrievalResultSqlLocation

    RetrievalResultWebLocation.add_member(:url, Shapes::ShapeRef.new(shape: String, location_name: "url"))
    RetrievalResultWebLocation.struct_class = Types::RetrievalResultWebLocation

    RetrieveAndGenerateConfiguration.add_member(:external_sources_configuration, Shapes::ShapeRef.new(shape: ExternalSourcesRetrieveAndGenerateConfiguration, location_name: "externalSourcesConfiguration"))
    RetrieveAndGenerateConfiguration.add_member(:knowledge_base_configuration, Shapes::ShapeRef.new(shape: KnowledgeBaseRetrieveAndGenerateConfiguration, location_name: "knowledgeBaseConfiguration"))
    RetrieveAndGenerateConfiguration.add_member(:type, Shapes::ShapeRef.new(shape: RetrieveAndGenerateType, required: true, location_name: "type"))
    RetrieveAndGenerateConfiguration.struct_class = Types::RetrieveAndGenerateConfiguration

    RetrieveAndGenerateInput.add_member(:text, Shapes::ShapeRef.new(shape: RetrieveAndGenerateInputTextString, required: true, location_name: "text"))
    RetrieveAndGenerateInput.struct_class = Types::RetrieveAndGenerateInput

    RetrieveAndGenerateOutput.add_member(:text, Shapes::ShapeRef.new(shape: String, required: true, location_name: "text"))
    RetrieveAndGenerateOutput.struct_class = Types::RetrieveAndGenerateOutput

    RetrieveAndGenerateOutputEvent.add_member(:text, Shapes::ShapeRef.new(shape: String, required: true, location_name: "text"))
    RetrieveAndGenerateOutputEvent.struct_class = Types::RetrieveAndGenerateOutputEvent

    RetrieveAndGenerateRequest.add_member(:input, Shapes::ShapeRef.new(shape: RetrieveAndGenerateInput, required: true, location_name: "input"))
    RetrieveAndGenerateRequest.add_member(:retrieve_and_generate_configuration, Shapes::ShapeRef.new(shape: RetrieveAndGenerateConfiguration, location_name: "retrieveAndGenerateConfiguration"))
    RetrieveAndGenerateRequest.add_member(:session_configuration, Shapes::ShapeRef.new(shape: RetrieveAndGenerateSessionConfiguration, location_name: "sessionConfiguration"))
    RetrieveAndGenerateRequest.add_member(:session_id, Shapes::ShapeRef.new(shape: SessionId, location_name: "sessionId"))
    RetrieveAndGenerateRequest.struct_class = Types::RetrieveAndGenerateRequest

    RetrieveAndGenerateResponse.add_member(:citations, Shapes::ShapeRef.new(shape: Citations, location_name: "citations"))
    RetrieveAndGenerateResponse.add_member(:guardrail_action, Shapes::ShapeRef.new(shape: GuadrailAction, location_name: "guardrailAction"))
    RetrieveAndGenerateResponse.add_member(:output, Shapes::ShapeRef.new(shape: RetrieveAndGenerateOutput, required: true, location_name: "output"))
    RetrieveAndGenerateResponse.add_member(:session_id, Shapes::ShapeRef.new(shape: SessionId, required: true, location_name: "sessionId"))
    RetrieveAndGenerateResponse.struct_class = Types::RetrieveAndGenerateResponse

    RetrieveAndGenerateSessionConfiguration.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: KmsKeyArn, required: true, location_name: "kmsKeyArn"))
    RetrieveAndGenerateSessionConfiguration.struct_class = Types::RetrieveAndGenerateSessionConfiguration

    RetrieveAndGenerateStreamRequest.add_member(:input, Shapes::ShapeRef.new(shape: RetrieveAndGenerateInput, required: true, location_name: "input"))
    RetrieveAndGenerateStreamRequest.add_member(:retrieve_and_generate_configuration, Shapes::ShapeRef.new(shape: RetrieveAndGenerateConfiguration, location_name: "retrieveAndGenerateConfiguration"))
    RetrieveAndGenerateStreamRequest.add_member(:session_configuration, Shapes::ShapeRef.new(shape: RetrieveAndGenerateSessionConfiguration, location_name: "sessionConfiguration"))
    RetrieveAndGenerateStreamRequest.add_member(:session_id, Shapes::ShapeRef.new(shape: SessionId, location_name: "sessionId"))
    RetrieveAndGenerateStreamRequest.struct_class = Types::RetrieveAndGenerateStreamRequest

    RetrieveAndGenerateStreamResponse.add_member(:session_id, Shapes::ShapeRef.new(shape: SessionId, required: true, location: "header", location_name: "x-amzn-bedrock-knowledge-base-session-id"))
    RetrieveAndGenerateStreamResponse.add_member(:stream, Shapes::ShapeRef.new(shape: RetrieveAndGenerateStreamResponseOutput, required: true, eventstream: true, location_name: "stream"))
    RetrieveAndGenerateStreamResponse.struct_class = Types::RetrieveAndGenerateStreamResponse
    RetrieveAndGenerateStreamResponse[:payload] = :stream
    RetrieveAndGenerateStreamResponse[:payload_member] = RetrieveAndGenerateStreamResponse.member(:stream)

    RetrieveAndGenerateStreamResponseOutput.add_member(:access_denied_exception, Shapes::ShapeRef.new(shape: AccessDeniedException, location_name: "accessDeniedException"))
    RetrieveAndGenerateStreamResponseOutput.add_member(:bad_gateway_exception, Shapes::ShapeRef.new(shape: BadGatewayException, location_name: "badGatewayException"))
    RetrieveAndGenerateStreamResponseOutput.add_member(:citation, Shapes::ShapeRef.new(shape: CitationEvent, event: true, location_name: "citation"))
    RetrieveAndGenerateStreamResponseOutput.add_member(:conflict_exception, Shapes::ShapeRef.new(shape: ConflictException, location_name: "conflictException"))
    RetrieveAndGenerateStreamResponseOutput.add_member(:dependency_failed_exception, Shapes::ShapeRef.new(shape: DependencyFailedException, location_name: "dependencyFailedException"))
    RetrieveAndGenerateStreamResponseOutput.add_member(:guardrail, Shapes::ShapeRef.new(shape: GuardrailEvent, event: true, location_name: "guardrail"))
    RetrieveAndGenerateStreamResponseOutput.add_member(:internal_server_exception, Shapes::ShapeRef.new(shape: InternalServerException, location_name: "internalServerException"))
    RetrieveAndGenerateStreamResponseOutput.add_member(:output, Shapes::ShapeRef.new(shape: RetrieveAndGenerateOutputEvent, event: true, location_name: "output"))
    RetrieveAndGenerateStreamResponseOutput.add_member(:resource_not_found_exception, Shapes::ShapeRef.new(shape: ResourceNotFoundException, location_name: "resourceNotFoundException"))
    RetrieveAndGenerateStreamResponseOutput.add_member(:service_quota_exceeded_exception, Shapes::ShapeRef.new(shape: ServiceQuotaExceededException, location_name: "serviceQuotaExceededException"))
    RetrieveAndGenerateStreamResponseOutput.add_member(:throttling_exception, Shapes::ShapeRef.new(shape: ThrottlingException, location_name: "throttlingException"))
    RetrieveAndGenerateStreamResponseOutput.add_member(:validation_exception, Shapes::ShapeRef.new(shape: ValidationException, location_name: "validationException"))
    RetrieveAndGenerateStreamResponseOutput.struct_class = Types::RetrieveAndGenerateStreamResponseOutput

    RetrieveRequest.add_member(:guardrail_configuration, Shapes::ShapeRef.new(shape: GuardrailConfiguration, location_name: "guardrailConfiguration"))
    RetrieveRequest.add_member(:knowledge_base_id, Shapes::ShapeRef.new(shape: KnowledgeBaseId, required: true, location: "uri", location_name: "knowledgeBaseId"))
    RetrieveRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    RetrieveRequest.add_member(:retrieval_configuration, Shapes::ShapeRef.new(shape: KnowledgeBaseRetrievalConfiguration, location_name: "retrievalConfiguration"))
    RetrieveRequest.add_member(:retrieval_query, Shapes::ShapeRef.new(shape: KnowledgeBaseQuery, required: true, location_name: "retrievalQuery"))
    RetrieveRequest.struct_class = Types::RetrieveRequest

    RetrieveResponse.add_member(:guardrail_action, Shapes::ShapeRef.new(shape: GuadrailAction, location_name: "guardrailAction"))
    RetrieveResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    RetrieveResponse.add_member(:retrieval_results, Shapes::ShapeRef.new(shape: KnowledgeBaseRetrievalResults, required: true, location_name: "retrievalResults"))
    RetrieveResponse.struct_class = Types::RetrieveResponse

    RetrievedReference.add_member(:content, Shapes::ShapeRef.new(shape: RetrievalResultContent, location_name: "content"))
    RetrievedReference.add_member(:location, Shapes::ShapeRef.new(shape: RetrievalResultLocation, location_name: "location"))
    RetrievedReference.add_member(:metadata, Shapes::ShapeRef.new(shape: RetrievalResultMetadata, location_name: "metadata"))
    RetrievedReference.struct_class = Types::RetrievedReference

    RetrievedReferences.member = Shapes::ShapeRef.new(shape: RetrievedReference)

    ReturnControlInvocationResults.member = Shapes::ShapeRef.new(shape: InvocationResultMember)

    ReturnControlPayload.add_member(:invocation_id, Shapes::ShapeRef.new(shape: String, location_name: "invocationId"))
    ReturnControlPayload.add_member(:invocation_inputs, Shapes::ShapeRef.new(shape: InvocationInputs, location_name: "invocationInputs"))
    ReturnControlPayload.struct_class = Types::ReturnControlPayload

    ReturnControlResults.add_member(:invocation_id, Shapes::ShapeRef.new(shape: String, location_name: "invocationId"))
    ReturnControlResults.add_member(:return_control_invocation_results, Shapes::ShapeRef.new(shape: ReturnControlInvocationResults, location_name: "returnControlInvocationResults"))
    ReturnControlResults.struct_class = Types::ReturnControlResults

    RoutingClassifierModelInvocationOutput.add_member(:metadata, Shapes::ShapeRef.new(shape: Metadata, location_name: "metadata"))
    RoutingClassifierModelInvocationOutput.add_member(:raw_response, Shapes::ShapeRef.new(shape: RawResponse, location_name: "rawResponse"))
    RoutingClassifierModelInvocationOutput.add_member(:trace_id, Shapes::ShapeRef.new(shape: TraceId, location_name: "traceId"))
    RoutingClassifierModelInvocationOutput.struct_class = Types::RoutingClassifierModelInvocationOutput

    RoutingClassifierTrace.add_member(:invocation_input, Shapes::ShapeRef.new(shape: InvocationInput, location_name: "invocationInput"))
    RoutingClassifierTrace.add_member(:model_invocation_input, Shapes::ShapeRef.new(shape: ModelInvocationInput, location_name: "modelInvocationInput"))
    RoutingClassifierTrace.add_member(:model_invocation_output, Shapes::ShapeRef.new(shape: RoutingClassifierModelInvocationOutput, location_name: "modelInvocationOutput"))
    RoutingClassifierTrace.add_member(:observation, Shapes::ShapeRef.new(shape: Observation, location_name: "observation"))
    RoutingClassifierTrace.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    RoutingClassifierTrace.add_member_subclass(:invocation_input, Types::RoutingClassifierTrace::InvocationInput)
    RoutingClassifierTrace.add_member_subclass(:model_invocation_input, Types::RoutingClassifierTrace::ModelInvocationInput)
    RoutingClassifierTrace.add_member_subclass(:model_invocation_output, Types::RoutingClassifierTrace::ModelInvocationOutput)
    RoutingClassifierTrace.add_member_subclass(:observation, Types::RoutingClassifierTrace::Observation)
    RoutingClassifierTrace.add_member_subclass(:unknown, Types::RoutingClassifierTrace::Unknown)
    RoutingClassifierTrace.struct_class = Types::RoutingClassifierTrace

    S3Identifier.add_member(:s3_bucket_name, Shapes::ShapeRef.new(shape: S3BucketName, location_name: "s3BucketName"))
    S3Identifier.add_member(:s3_object_key, Shapes::ShapeRef.new(shape: S3ObjectKey, location_name: "s3ObjectKey"))
    S3Identifier.struct_class = Types::S3Identifier

    S3Location.add_member(:uri, Shapes::ShapeRef.new(shape: S3Uri, required: true, location_name: "uri"))
    S3Location.struct_class = Types::S3Location

    S3ObjectDoc.add_member(:uri, Shapes::ShapeRef.new(shape: S3Uri, required: true, location_name: "uri"))
    S3ObjectDoc.struct_class = Types::S3ObjectDoc

    S3ObjectFile.add_member(:uri, Shapes::ShapeRef.new(shape: S3Uri, required: true, location_name: "uri"))
    S3ObjectFile.struct_class = Types::S3ObjectFile

    SatisfiedCondition.add_member(:condition_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "conditionName"))
    SatisfiedCondition.struct_class = Types::SatisfiedCondition

    SatisfiedConditions.member = Shapes::ShapeRef.new(shape: SatisfiedCondition)

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "message"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    SessionAttributesMap.key = Shapes::ShapeRef.new(shape: String)
    SessionAttributesMap.value = Shapes::ShapeRef.new(shape: String)

    SessionMetadataMap.key = Shapes::ShapeRef.new(shape: SessionMetadataKey)
    SessionMetadataMap.value = Shapes::ShapeRef.new(shape: SessionMetadataValue)

    SessionState.add_member(:conversation_history, Shapes::ShapeRef.new(shape: ConversationHistory, location_name: "conversationHistory"))
    SessionState.add_member(:files, Shapes::ShapeRef.new(shape: InputFiles, location_name: "files"))
    SessionState.add_member(:invocation_id, Shapes::ShapeRef.new(shape: String, location_name: "invocationId"))
    SessionState.add_member(:knowledge_base_configurations, Shapes::ShapeRef.new(shape: KnowledgeBaseConfigurations, location_name: "knowledgeBaseConfigurations"))
    SessionState.add_member(:prompt_session_attributes, Shapes::ShapeRef.new(shape: PromptSessionAttributesMap, location_name: "promptSessionAttributes"))
    SessionState.add_member(:return_control_invocation_results, Shapes::ShapeRef.new(shape: ReturnControlInvocationResults, location_name: "returnControlInvocationResults"))
    SessionState.add_member(:session_attributes, Shapes::ShapeRef.new(shape: SessionAttributesMap, location_name: "sessionAttributes"))
    SessionState.struct_class = Types::SessionState

    SessionSummaries.member = Shapes::ShapeRef.new(shape: SessionSummary)

    SessionSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "createdAt"))
    SessionSummary.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "lastUpdatedAt"))
    SessionSummary.add_member(:session_arn, Shapes::ShapeRef.new(shape: SessionArn, required: true, location_name: "sessionArn"))
    SessionSummary.add_member(:session_id, Shapes::ShapeRef.new(shape: Uuid, required: true, location_name: "sessionId"))
    SessionSummary.add_member(:session_status, Shapes::ShapeRef.new(shape: SessionStatus, required: true, location_name: "sessionStatus"))
    SessionSummary.struct_class = Types::SessionSummary

    Span.add_member(:end, Shapes::ShapeRef.new(shape: SpanEndInteger, location_name: "end"))
    Span.add_member(:start, Shapes::ShapeRef.new(shape: SpanStartInteger, location_name: "start"))
    Span.struct_class = Types::Span

    StartFlowExecutionRequest.add_member(:flow_alias_identifier, Shapes::ShapeRef.new(shape: FlowAliasIdentifier, required: true, location: "uri", location_name: "flowAliasIdentifier"))
    StartFlowExecutionRequest.add_member(:flow_execution_name, Shapes::ShapeRef.new(shape: FlowExecutionName, location_name: "flowExecutionName"))
    StartFlowExecutionRequest.add_member(:flow_identifier, Shapes::ShapeRef.new(shape: FlowIdentifier, required: true, location: "uri", location_name: "flowIdentifier"))
    StartFlowExecutionRequest.add_member(:inputs, Shapes::ShapeRef.new(shape: FlowInputs, required: true, location_name: "inputs"))
    StartFlowExecutionRequest.add_member(:model_performance_configuration, Shapes::ShapeRef.new(shape: ModelPerformanceConfiguration, location_name: "modelPerformanceConfiguration"))
    StartFlowExecutionRequest.struct_class = Types::StartFlowExecutionRequest

    StartFlowExecutionResponse.add_member(:execution_arn, Shapes::ShapeRef.new(shape: FlowExecutionIdentifier, location_name: "executionArn"))
    StartFlowExecutionResponse.struct_class = Types::StartFlowExecutionResponse

    StopFlowExecutionRequest.add_member(:execution_identifier, Shapes::ShapeRef.new(shape: FlowExecutionIdentifier, required: true, location: "uri", location_name: "executionIdentifier"))
    StopFlowExecutionRequest.add_member(:flow_alias_identifier, Shapes::ShapeRef.new(shape: FlowAliasIdentifier, required: true, location: "uri", location_name: "flowAliasIdentifier"))
    StopFlowExecutionRequest.add_member(:flow_identifier, Shapes::ShapeRef.new(shape: FlowIdentifier, required: true, location: "uri", location_name: "flowIdentifier"))
    StopFlowExecutionRequest.struct_class = Types::StopFlowExecutionRequest

    StopFlowExecutionResponse.add_member(:execution_arn, Shapes::ShapeRef.new(shape: FlowExecutionIdentifier, location_name: "executionArn"))
    StopFlowExecutionResponse.add_member(:status, Shapes::ShapeRef.new(shape: FlowExecutionStatus, required: true, location_name: "status"))
    StopFlowExecutionResponse.struct_class = Types::StopFlowExecutionResponse

    StopSequences.member = Shapes::ShapeRef.new(shape: String)

    StreamingConfigurations.add_member(:apply_guardrail_interval, Shapes::ShapeRef.new(shape: StreamingConfigurationsApplyGuardrailIntervalInteger, location_name: "applyGuardrailInterval"))
    StreamingConfigurations.add_member(:stream_final_response, Shapes::ShapeRef.new(shape: Boolean, location_name: "streamFinalResponse"))
    StreamingConfigurations.struct_class = Types::StreamingConfigurations

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: TaggableResourcesArn, required: true, location: "uri", location_name: "resourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, required: true, location_name: "tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    TagsMap.key = Shapes::ShapeRef.new(shape: TagKey)
    TagsMap.value = Shapes::ShapeRef.new(shape: TagValue)

    TextInferenceConfig.add_member(:max_tokens, Shapes::ShapeRef.new(shape: MaxTokens, location_name: "maxTokens"))
    TextInferenceConfig.add_member(:stop_sequences, Shapes::ShapeRef.new(shape: RAGStopSequences, location_name: "stopSequences"))
    TextInferenceConfig.add_member(:temperature, Shapes::ShapeRef.new(shape: Temperature, location_name: "temperature"))
    TextInferenceConfig.add_member(:top_p, Shapes::ShapeRef.new(shape: TopP, location_name: "topP"))
    TextInferenceConfig.struct_class = Types::TextInferenceConfig

    TextPrompt.add_member(:text, Shapes::ShapeRef.new(shape: TextPromptTextString, required: true, location_name: "text"))
    TextPrompt.struct_class = Types::TextPrompt

    TextResponsePart.add_member(:span, Shapes::ShapeRef.new(shape: Span, location_name: "span"))
    TextResponsePart.add_member(:text, Shapes::ShapeRef.new(shape: String, location_name: "text"))
    TextResponsePart.struct_class = Types::TextResponsePart

    TextToSqlConfiguration.add_member(:knowledge_base_configuration, Shapes::ShapeRef.new(shape: TextToSqlKnowledgeBaseConfiguration, location_name: "knowledgeBaseConfiguration"))
    TextToSqlConfiguration.add_member(:type, Shapes::ShapeRef.new(shape: TextToSqlConfigurationType, required: true, location_name: "type"))
    TextToSqlConfiguration.struct_class = Types::TextToSqlConfiguration

    TextToSqlKnowledgeBaseConfiguration.add_member(:knowledge_base_arn, Shapes::ShapeRef.new(shape: KnowledgeBaseArn, required: true, location_name: "knowledgeBaseArn"))
    TextToSqlKnowledgeBaseConfiguration.struct_class = Types::TextToSqlKnowledgeBaseConfiguration

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    Trace.add_member(:custom_orchestration_trace, Shapes::ShapeRef.new(shape: CustomOrchestrationTrace, location_name: "customOrchestrationTrace"))
    Trace.add_member(:failure_trace, Shapes::ShapeRef.new(shape: FailureTrace, location_name: "failureTrace"))
    Trace.add_member(:guardrail_trace, Shapes::ShapeRef.new(shape: GuardrailTrace, location_name: "guardrailTrace"))
    Trace.add_member(:orchestration_trace, Shapes::ShapeRef.new(shape: OrchestrationTrace, location_name: "orchestrationTrace"))
    Trace.add_member(:post_processing_trace, Shapes::ShapeRef.new(shape: PostProcessingTrace, location_name: "postProcessingTrace"))
    Trace.add_member(:pre_processing_trace, Shapes::ShapeRef.new(shape: PreProcessingTrace, location_name: "preProcessingTrace"))
    Trace.add_member(:routing_classifier_trace, Shapes::ShapeRef.new(shape: RoutingClassifierTrace, location_name: "routingClassifierTrace"))
    Trace.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    Trace.add_member_subclass(:custom_orchestration_trace, Types::Trace::CustomOrchestrationTrace)
    Trace.add_member_subclass(:failure_trace, Types::Trace::FailureTrace)
    Trace.add_member_subclass(:guardrail_trace, Types::Trace::GuardrailTrace)
    Trace.add_member_subclass(:orchestration_trace, Types::Trace::OrchestrationTrace)
    Trace.add_member_subclass(:post_processing_trace, Types::Trace::PostProcessingTrace)
    Trace.add_member_subclass(:pre_processing_trace, Types::Trace::PreProcessingTrace)
    Trace.add_member_subclass(:routing_classifier_trace, Types::Trace::RoutingClassifierTrace)
    Trace.add_member_subclass(:unknown, Types::Trace::Unknown)
    Trace.struct_class = Types::Trace

    TraceElements.add_member(:agent_traces, Shapes::ShapeRef.new(shape: AgentTraces, location_name: "agentTraces"))
    TraceElements.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    TraceElements.add_member_subclass(:agent_traces, Types::TraceElements::AgentTraces)
    TraceElements.add_member_subclass(:unknown, Types::TraceElements::Unknown)
    TraceElements.struct_class = Types::TraceElements

    TracePart.add_member(:agent_alias_id, Shapes::ShapeRef.new(shape: AgentAliasId, location_name: "agentAliasId"))
    TracePart.add_member(:agent_id, Shapes::ShapeRef.new(shape: AgentId, location_name: "agentId"))
    TracePart.add_member(:agent_version, Shapes::ShapeRef.new(shape: AgentVersion, location_name: "agentVersion"))
    TracePart.add_member(:caller_chain, Shapes::ShapeRef.new(shape: CallerChain, location_name: "callerChain"))
    TracePart.add_member(:collaborator_name, Shapes::ShapeRef.new(shape: Name, location_name: "collaboratorName"))
    TracePart.add_member(:event_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "eventTime"))
    TracePart.add_member(:session_id, Shapes::ShapeRef.new(shape: SessionId, location_name: "sessionId"))
    TracePart.add_member(:trace, Shapes::ShapeRef.new(shape: Trace, location_name: "trace"))
    TracePart.struct_class = Types::TracePart

    TransformationConfiguration.add_member(:mode, Shapes::ShapeRef.new(shape: QueryTransformationMode, required: true, location_name: "mode"))
    TransformationConfiguration.add_member(:text_to_sql_configuration, Shapes::ShapeRef.new(shape: TextToSqlConfiguration, location_name: "textToSqlConfiguration"))
    TransformationConfiguration.struct_class = Types::TransformationConfiguration

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: TaggableResourcesArn, required: true, location: "uri", location_name: "resourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateSessionRequest.add_member(:session_identifier, Shapes::ShapeRef.new(shape: SessionIdentifier, required: true, location: "uri", location_name: "sessionIdentifier"))
    UpdateSessionRequest.add_member(:session_metadata, Shapes::ShapeRef.new(shape: SessionMetadataMap, location_name: "sessionMetadata"))
    UpdateSessionRequest.struct_class = Types::UpdateSessionRequest

    UpdateSessionResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "createdAt"))
    UpdateSessionResponse.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "lastUpdatedAt"))
    UpdateSessionResponse.add_member(:session_arn, Shapes::ShapeRef.new(shape: SessionArn, required: true, location_name: "sessionArn"))
    UpdateSessionResponse.add_member(:session_id, Shapes::ShapeRef.new(shape: Uuid, required: true, location_name: "sessionId"))
    UpdateSessionResponse.add_member(:session_status, Shapes::ShapeRef.new(shape: SessionStatus, required: true, location_name: "sessionStatus"))
    UpdateSessionResponse.struct_class = Types::UpdateSessionResponse

    Usage.add_member(:input_tokens, Shapes::ShapeRef.new(shape: Integer, location_name: "inputTokens"))
    Usage.add_member(:output_tokens, Shapes::ShapeRef.new(shape: Integer, location_name: "outputTokens"))
    Usage.struct_class = Types::Usage

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "message"))
    ValidationException.struct_class = Types::ValidationException

    VectorSearchBedrockRerankingConfiguration.add_member(:metadata_configuration, Shapes::ShapeRef.new(shape: MetadataConfigurationForReranking, location_name: "metadataConfiguration"))
    VectorSearchBedrockRerankingConfiguration.add_member(:model_configuration, Shapes::ShapeRef.new(shape: VectorSearchBedrockRerankingModelConfiguration, required: true, location_name: "modelConfiguration"))
    VectorSearchBedrockRerankingConfiguration.add_member(:number_of_reranked_results, Shapes::ShapeRef.new(shape: VectorSearchBedrockRerankingConfigurationNumberOfRerankedResultsInteger, location_name: "numberOfRerankedResults"))
    VectorSearchBedrockRerankingConfiguration.struct_class = Types::VectorSearchBedrockRerankingConfiguration

    VectorSearchBedrockRerankingModelConfiguration.add_member(:additional_model_request_fields, Shapes::ShapeRef.new(shape: AdditionalModelRequestFields, location_name: "additionalModelRequestFields"))
    VectorSearchBedrockRerankingModelConfiguration.add_member(:model_arn, Shapes::ShapeRef.new(shape: BedrockRerankingModelArn, required: true, location_name: "modelArn"))
    VectorSearchBedrockRerankingModelConfiguration.struct_class = Types::VectorSearchBedrockRerankingModelConfiguration

    VectorSearchRerankingConfiguration.add_member(:bedrock_reranking_configuration, Shapes::ShapeRef.new(shape: VectorSearchBedrockRerankingConfiguration, location_name: "bedrockRerankingConfiguration"))
    VectorSearchRerankingConfiguration.add_member(:type, Shapes::ShapeRef.new(shape: VectorSearchRerankingConfigurationType, required: true, location_name: "type"))
    VectorSearchRerankingConfiguration.struct_class = Types::VectorSearchRerankingConfiguration

    VideoSegment.add_member(:s3_uri, Shapes::ShapeRef.new(shape: VideoSegmentS3UriString, required: true, location_name: "s3Uri"))
    VideoSegment.add_member(:summary, Shapes::ShapeRef.new(shape: String, location_name: "summary"))
    VideoSegment.struct_class = Types::VideoSegment


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2023-07-26"

      api.metadata = {
        "apiVersion" => "2023-07-26",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "bedrock-agent-runtime",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "protocols" => ["rest-json"],
        "serviceFullName" => "Agents for Amazon Bedrock Runtime",
        "serviceId" => "Bedrock Agent Runtime",
        "signatureVersion" => "v4",
        "signingName" => "bedrock",
        "uid" => "bedrock-agent-runtime-2023-07-26",
      }

      api.add_operation(:create_invocation, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateInvocation"
        o.http_method = "PUT"
        o.http_request_uri = "/sessions/{sessionIdentifier}/invocations/"
        o.input = Shapes::ShapeRef.new(shape: CreateInvocationRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateInvocationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:create_session, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateSession"
        o.http_method = "PUT"
        o.http_request_uri = "/sessions/"
        o.input = Shapes::ShapeRef.new(shape: CreateSessionRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateSessionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:delete_agent_memory, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteAgentMemory"
        o.http_method = "DELETE"
        o.http_request_uri = "/agents/{agentId}/agentAliases/{agentAliasId}/memories"
        o.input = Shapes::ShapeRef.new(shape: DeleteAgentMemoryRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteAgentMemoryResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: DependencyFailedException)
        o.errors << Shapes::ShapeRef.new(shape: BadGatewayException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:delete_session, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteSession"
        o.http_method = "DELETE"
        o.http_request_uri = "/sessions/{sessionIdentifier}/"
        o.input = Shapes::ShapeRef.new(shape: DeleteSessionRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteSessionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:end_session, Seahorse::Model::Operation.new.tap do |o|
        o.name = "EndSession"
        o.http_method = "PATCH"
        o.http_request_uri = "/sessions/{sessionIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: EndSessionRequest)
        o.output = Shapes::ShapeRef.new(shape: EndSessionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:generate_query, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GenerateQuery"
        o.http_method = "POST"
        o.http_request_uri = "/generateQuery"
        o.input = Shapes::ShapeRef.new(shape: GenerateQueryRequest)
        o.output = Shapes::ShapeRef.new(shape: GenerateQueryResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: DependencyFailedException)
        o.errors << Shapes::ShapeRef.new(shape: BadGatewayException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:get_agent_memory, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAgentMemory"
        o.http_method = "GET"
        o.http_request_uri = "/agents/{agentId}/agentAliases/{agentAliasId}/memories"
        o.input = Shapes::ShapeRef.new(shape: GetAgentMemoryRequest)
        o.output = Shapes::ShapeRef.new(shape: GetAgentMemoryResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: DependencyFailedException)
        o.errors << Shapes::ShapeRef.new(shape: BadGatewayException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_items",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:get_execution_flow_snapshot, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetExecutionFlowSnapshot"
        o.http_method = "GET"
        o.http_request_uri = "/flows/{flowIdentifier}/aliases/{flowAliasIdentifier}/executions/{executionIdentifier}/flowsnapshot"
        o.input = Shapes::ShapeRef.new(shape: GetExecutionFlowSnapshotRequest)
        o.output = Shapes::ShapeRef.new(shape: GetExecutionFlowSnapshotResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_flow_execution, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetFlowExecution"
        o.http_method = "GET"
        o.http_request_uri = "/flows/{flowIdentifier}/aliases/{flowAliasIdentifier}/executions/{executionIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: GetFlowExecutionRequest)
        o.output = Shapes::ShapeRef.new(shape: GetFlowExecutionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_invocation_step, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetInvocationStep"
        o.http_method = "POST"
        o.http_request_uri = "/sessions/{sessionIdentifier}/invocationSteps/{invocationStepId}"
        o.input = Shapes::ShapeRef.new(shape: GetInvocationStepRequest)
        o.output = Shapes::ShapeRef.new(shape: GetInvocationStepResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_session, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetSession"
        o.http_method = "GET"
        o.http_request_uri = "/sessions/{sessionIdentifier}/"
        o.input = Shapes::ShapeRef.new(shape: GetSessionRequest)
        o.output = Shapes::ShapeRef.new(shape: GetSessionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:invoke_agent, Seahorse::Model::Operation.new.tap do |o|
        o.name = "InvokeAgent"
        o.http_method = "POST"
        o.http_request_uri = "/agents/{agentId}/agentAliases/{agentAliasId}/sessions/{sessionId}/text"
        o.input = Shapes::ShapeRef.new(shape: InvokeAgentRequest)
        o.output = Shapes::ShapeRef.new(shape: InvokeAgentResponse)
        o.errors << Shapes::ShapeRef.new(shape: ModelNotReadyException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: DependencyFailedException)
        o.errors << Shapes::ShapeRef.new(shape: BadGatewayException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:invoke_flow, Seahorse::Model::Operation.new.tap do |o|
        o.name = "InvokeFlow"
        o.http_method = "POST"
        o.http_request_uri = "/flows/{flowIdentifier}/aliases/{flowAliasIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: InvokeFlowRequest)
        o.output = Shapes::ShapeRef.new(shape: InvokeFlowResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: DependencyFailedException)
        o.errors << Shapes::ShapeRef.new(shape: BadGatewayException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:invoke_inline_agent, Seahorse::Model::Operation.new.tap do |o|
        o.name = "InvokeInlineAgent"
        o.http_method = "POST"
        o.http_request_uri = "/agents/{sessionId}"
        o.input = Shapes::ShapeRef.new(shape: InvokeInlineAgentRequest)
        o.output = Shapes::ShapeRef.new(shape: InvokeInlineAgentResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: DependencyFailedException)
        o.errors << Shapes::ShapeRef.new(shape: BadGatewayException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:list_flow_execution_events, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListFlowExecutionEvents"
        o.http_method = "GET"
        o.http_request_uri = "/flows/{flowIdentifier}/aliases/{flowAliasIdentifier}/executions/{executionIdentifier}/events"
        o.input = Shapes::ShapeRef.new(shape: ListFlowExecutionEventsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListFlowExecutionEventsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_flow_executions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListFlowExecutions"
        o.http_method = "GET"
        o.http_request_uri = "/flows/{flowIdentifier}/executions"
        o.input = Shapes::ShapeRef.new(shape: ListFlowExecutionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListFlowExecutionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_invocation_steps, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListInvocationSteps"
        o.http_method = "POST"
        o.http_request_uri = "/sessions/{sessionIdentifier}/invocationSteps/"
        o.input = Shapes::ShapeRef.new(shape: ListInvocationStepsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListInvocationStepsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_invocations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListInvocations"
        o.http_method = "POST"
        o.http_request_uri = "/sessions/{sessionIdentifier}/invocations/"
        o.input = Shapes::ShapeRef.new(shape: ListInvocationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListInvocationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_sessions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListSessions"
        o.http_method = "POST"
        o.http_request_uri = "/sessions/"
        o.input = Shapes::ShapeRef.new(shape: ListSessionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListSessionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
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
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:optimize_prompt, Seahorse::Model::Operation.new.tap do |o|
        o.name = "OptimizePrompt"
        o.http_method = "POST"
        o.http_request_uri = "/optimize-prompt"
        o.input = Shapes::ShapeRef.new(shape: OptimizePromptRequest)
        o.output = Shapes::ShapeRef.new(shape: OptimizePromptResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: DependencyFailedException)
        o.errors << Shapes::ShapeRef.new(shape: BadGatewayException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:put_invocation_step, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutInvocationStep"
        o.http_method = "PUT"
        o.http_request_uri = "/sessions/{sessionIdentifier}/invocationSteps/"
        o.input = Shapes::ShapeRef.new(shape: PutInvocationStepRequest)
        o.output = Shapes::ShapeRef.new(shape: PutInvocationStepResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:rerank, Seahorse::Model::Operation.new.tap do |o|
        o.name = "Rerank"
        o.http_method = "POST"
        o.http_request_uri = "/rerank"
        o.input = Shapes::ShapeRef.new(shape: RerankRequest)
        o.output = Shapes::ShapeRef.new(shape: RerankResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: DependencyFailedException)
        o.errors << Shapes::ShapeRef.new(shape: BadGatewayException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o[:pager] = Aws::Pager.new(
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:retrieve, Seahorse::Model::Operation.new.tap do |o|
        o.name = "Retrieve"
        o.http_method = "POST"
        o.http_request_uri = "/knowledgebases/{knowledgeBaseId}/retrieve"
        o.input = Shapes::ShapeRef.new(shape: RetrieveRequest)
        o.output = Shapes::ShapeRef.new(shape: RetrieveResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: DependencyFailedException)
        o.errors << Shapes::ShapeRef.new(shape: BadGatewayException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o[:pager] = Aws::Pager.new(
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:retrieve_and_generate, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RetrieveAndGenerate"
        o.http_method = "POST"
        o.http_request_uri = "/retrieveAndGenerate"
        o.input = Shapes::ShapeRef.new(shape: RetrieveAndGenerateRequest)
        o.output = Shapes::ShapeRef.new(shape: RetrieveAndGenerateResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: DependencyFailedException)
        o.errors << Shapes::ShapeRef.new(shape: BadGatewayException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:retrieve_and_generate_stream, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RetrieveAndGenerateStream"
        o.http_method = "POST"
        o.http_request_uri = "/retrieveAndGenerateStream"
        o.input = Shapes::ShapeRef.new(shape: RetrieveAndGenerateStreamRequest)
        o.output = Shapes::ShapeRef.new(shape: RetrieveAndGenerateStreamResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: DependencyFailedException)
        o.errors << Shapes::ShapeRef.new(shape: BadGatewayException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:start_flow_execution, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartFlowExecution"
        o.http_method = "POST"
        o.http_request_uri = "/flows/{flowIdentifier}/aliases/{flowAliasIdentifier}/executions"
        o.input = Shapes::ShapeRef.new(shape: StartFlowExecutionRequest)
        o.output = Shapes::ShapeRef.new(shape: StartFlowExecutionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: DependencyFailedException)
        o.errors << Shapes::ShapeRef.new(shape: BadGatewayException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:stop_flow_execution, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopFlowExecution"
        o.http_method = "POST"
        o.http_request_uri = "/flows/{flowIdentifier}/aliases/{flowAliasIdentifier}/executions/{executionIdentifier}/stop"
        o.input = Shapes::ShapeRef.new(shape: StopFlowExecutionRequest)
        o.output = Shapes::ShapeRef.new(shape: StopFlowExecutionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: DependencyFailedException)
        o.errors << Shapes::ShapeRef.new(shape: BadGatewayException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "DELETE"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:update_session, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateSession"
        o.http_method = "PUT"
        o.http_request_uri = "/sessions/{sessionIdentifier}/"
        o.input = Shapes::ShapeRef.new(shape: UpdateSessionRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateSessionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)
    end

  end
end
