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

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    ActionGroupInvocationInput = Shapes::StructureShape.new(name: 'ActionGroupInvocationInput')
    ActionGroupInvocationOutput = Shapes::StructureShape.new(name: 'ActionGroupInvocationOutput')
    ActionGroupName = Shapes::StringShape.new(name: 'ActionGroupName')
    ActionGroupOutputString = Shapes::StringShape.new(name: 'ActionGroupOutputString')
    AdditionalModelRequestFields = Shapes::MapShape.new(name: 'AdditionalModelRequestFields')
    AdditionalModelRequestFieldsKey = Shapes::StringShape.new(name: 'AdditionalModelRequestFieldsKey')
    AdditionalModelRequestFieldsValue = Shapes::DocumentShape.new(name: 'AdditionalModelRequestFieldsValue', document: true)
    AgentAliasId = Shapes::StringShape.new(name: 'AgentAliasId')
    AgentId = Shapes::StringShape.new(name: 'AgentId')
    AgentVersion = Shapes::StringShape.new(name: 'AgentVersion')
    ApiContentMap = Shapes::MapShape.new(name: 'ApiContentMap')
    ApiInvocationInput = Shapes::StructureShape.new(name: 'ApiInvocationInput')
    ApiParameter = Shapes::StructureShape.new(name: 'ApiParameter')
    ApiParameters = Shapes::ListShape.new(name: 'ApiParameters')
    ApiPath = Shapes::StringShape.new(name: 'ApiPath')
    ApiRequestBody = Shapes::StructureShape.new(name: 'ApiRequestBody')
    ApiResult = Shapes::StructureShape.new(name: 'ApiResult')
    Attribution = Shapes::StructureShape.new(name: 'Attribution')
    BadGatewayException = Shapes::StructureShape.new(name: 'BadGatewayException')
    BedrockModelArn = Shapes::StringShape.new(name: 'BedrockModelArn')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    ByteContentBlob = Shapes::BlobShape.new(name: 'ByteContentBlob')
    ByteContentDoc = Shapes::StructureShape.new(name: 'ByteContentDoc')
    ByteContentFile = Shapes::StructureShape.new(name: 'ByteContentFile')
    Citation = Shapes::StructureShape.new(name: 'Citation')
    Citations = Shapes::ListShape.new(name: 'Citations')
    CodeInterpreterInvocationInput = Shapes::StructureShape.new(name: 'CodeInterpreterInvocationInput')
    CodeInterpreterInvocationOutput = Shapes::StructureShape.new(name: 'CodeInterpreterInvocationOutput')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    ContentBody = Shapes::StructureShape.new(name: 'ContentBody')
    ContentMap = Shapes::MapShape.new(name: 'ContentMap')
    ContentType = Shapes::StringShape.new(name: 'ContentType')
    CreationMode = Shapes::StringShape.new(name: 'CreationMode')
    DateTimestamp = Shapes::TimestampShape.new(name: 'DateTimestamp', timestampFormat: "iso8601")
    DeleteAgentMemoryRequest = Shapes::StructureShape.new(name: 'DeleteAgentMemoryRequest')
    DeleteAgentMemoryResponse = Shapes::StructureShape.new(name: 'DeleteAgentMemoryResponse')
    DependencyFailedException = Shapes::StructureShape.new(name: 'DependencyFailedException')
    Document = Shapes::DocumentShape.new(name: 'Document', document: true)
    Double = Shapes::FloatShape.new(name: 'Double')
    ExecutionType = Shapes::StringShape.new(name: 'ExecutionType')
    ExternalSource = Shapes::StructureShape.new(name: 'ExternalSource')
    ExternalSourceType = Shapes::StringShape.new(name: 'ExternalSourceType')
    ExternalSources = Shapes::ListShape.new(name: 'ExternalSources')
    ExternalSourcesGenerationConfiguration = Shapes::StructureShape.new(name: 'ExternalSourcesGenerationConfiguration')
    ExternalSourcesRetrieveAndGenerateConfiguration = Shapes::StructureShape.new(name: 'ExternalSourcesRetrieveAndGenerateConfiguration')
    FailureReasonString = Shapes::StringShape.new(name: 'FailureReasonString')
    FailureTrace = Shapes::StructureShape.new(name: 'FailureTrace')
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
    FlowAliasIdentifier = Shapes::StringShape.new(name: 'FlowAliasIdentifier')
    FlowCompletionEvent = Shapes::StructureShape.new(name: 'FlowCompletionEvent')
    FlowCompletionReason = Shapes::StringShape.new(name: 'FlowCompletionReason')
    FlowIdentifier = Shapes::StringShape.new(name: 'FlowIdentifier')
    FlowInput = Shapes::StructureShape.new(name: 'FlowInput')
    FlowInputContent = Shapes::UnionShape.new(name: 'FlowInputContent')
    FlowInputs = Shapes::ListShape.new(name: 'FlowInputs')
    FlowOutputContent = Shapes::UnionShape.new(name: 'FlowOutputContent')
    FlowOutputEvent = Shapes::StructureShape.new(name: 'FlowOutputEvent')
    FlowResponseStream = Shapes::StructureShape.new(name: 'FlowResponseStream')
    Function = Shapes::StringShape.new(name: 'Function')
    FunctionInvocationInput = Shapes::StructureShape.new(name: 'FunctionInvocationInput')
    FunctionParameter = Shapes::StructureShape.new(name: 'FunctionParameter')
    FunctionParameters = Shapes::ListShape.new(name: 'FunctionParameters')
    FunctionResult = Shapes::StructureShape.new(name: 'FunctionResult')
    GeneratedResponsePart = Shapes::StructureShape.new(name: 'GeneratedResponsePart')
    GenerationConfiguration = Shapes::StructureShape.new(name: 'GenerationConfiguration')
    GetAgentMemoryRequest = Shapes::StructureShape.new(name: 'GetAgentMemoryRequest')
    GetAgentMemoryResponse = Shapes::StructureShape.new(name: 'GetAgentMemoryResponse')
    GuadrailAction = Shapes::StringShape.new(name: 'GuadrailAction')
    GuardrailAction = Shapes::StringShape.new(name: 'GuardrailAction')
    GuardrailAssessment = Shapes::StructureShape.new(name: 'GuardrailAssessment')
    GuardrailAssessmentList = Shapes::ListShape.new(name: 'GuardrailAssessmentList')
    GuardrailConfiguration = Shapes::StructureShape.new(name: 'GuardrailConfiguration')
    GuardrailConfigurationGuardrailIdString = Shapes::StringShape.new(name: 'GuardrailConfigurationGuardrailIdString')
    GuardrailConfigurationGuardrailVersionString = Shapes::StringShape.new(name: 'GuardrailConfigurationGuardrailVersionString')
    GuardrailContentFilter = Shapes::StructureShape.new(name: 'GuardrailContentFilter')
    GuardrailContentFilterConfidence = Shapes::StringShape.new(name: 'GuardrailContentFilterConfidence')
    GuardrailContentFilterList = Shapes::ListShape.new(name: 'GuardrailContentFilterList')
    GuardrailContentFilterType = Shapes::StringShape.new(name: 'GuardrailContentFilterType')
    GuardrailContentPolicyAction = Shapes::StringShape.new(name: 'GuardrailContentPolicyAction')
    GuardrailContentPolicyAssessment = Shapes::StructureShape.new(name: 'GuardrailContentPolicyAssessment')
    GuardrailCustomWord = Shapes::StructureShape.new(name: 'GuardrailCustomWord')
    GuardrailCustomWordList = Shapes::ListShape.new(name: 'GuardrailCustomWordList')
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
    GuardrailWordPolicyAction = Shapes::StringShape.new(name: 'GuardrailWordPolicyAction')
    GuardrailWordPolicyAssessment = Shapes::StructureShape.new(name: 'GuardrailWordPolicyAssessment')
    Identifier = Shapes::StringShape.new(name: 'Identifier')
    InferenceConfig = Shapes::StructureShape.new(name: 'InferenceConfig')
    InferenceConfiguration = Shapes::StructureShape.new(name: 'InferenceConfiguration')
    InputFile = Shapes::StructureShape.new(name: 'InputFile')
    InputFiles = Shapes::ListShape.new(name: 'InputFiles')
    InputText = Shapes::StringShape.new(name: 'InputText')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    InvocationInput = Shapes::StructureShape.new(name: 'InvocationInput')
    InvocationInputMember = Shapes::UnionShape.new(name: 'InvocationInputMember')
    InvocationInputs = Shapes::ListShape.new(name: 'InvocationInputs')
    InvocationResultMember = Shapes::UnionShape.new(name: 'InvocationResultMember')
    InvocationType = Shapes::StringShape.new(name: 'InvocationType')
    InvokeAgentRequest = Shapes::StructureShape.new(name: 'InvokeAgentRequest')
    InvokeAgentResponse = Shapes::StructureShape.new(name: 'InvokeAgentResponse')
    InvokeFlowRequest = Shapes::StructureShape.new(name: 'InvokeFlowRequest')
    InvokeFlowResponse = Shapes::StructureShape.new(name: 'InvokeFlowResponse')
    KmsKeyArn = Shapes::StringShape.new(name: 'KmsKeyArn')
    KnowledgeBaseConfiguration = Shapes::StructureShape.new(name: 'KnowledgeBaseConfiguration')
    KnowledgeBaseConfigurations = Shapes::ListShape.new(name: 'KnowledgeBaseConfigurations')
    KnowledgeBaseId = Shapes::StringShape.new(name: 'KnowledgeBaseId')
    KnowledgeBaseLookupInput = Shapes::StructureShape.new(name: 'KnowledgeBaseLookupInput')
    KnowledgeBaseLookupInputString = Shapes::StringShape.new(name: 'KnowledgeBaseLookupInputString')
    KnowledgeBaseLookupOutput = Shapes::StructureShape.new(name: 'KnowledgeBaseLookupOutput')
    KnowledgeBaseQuery = Shapes::StructureShape.new(name: 'KnowledgeBaseQuery')
    KnowledgeBaseQueryTextString = Shapes::StringShape.new(name: 'KnowledgeBaseQueryTextString')
    KnowledgeBaseRetrievalConfiguration = Shapes::StructureShape.new(name: 'KnowledgeBaseRetrievalConfiguration')
    KnowledgeBaseRetrievalResult = Shapes::StructureShape.new(name: 'KnowledgeBaseRetrievalResult')
    KnowledgeBaseRetrievalResults = Shapes::ListShape.new(name: 'KnowledgeBaseRetrievalResults')
    KnowledgeBaseRetrieveAndGenerateConfiguration = Shapes::StructureShape.new(name: 'KnowledgeBaseRetrieveAndGenerateConfiguration')
    KnowledgeBaseVectorSearchConfiguration = Shapes::StructureShape.new(name: 'KnowledgeBaseVectorSearchConfiguration')
    KnowledgeBaseVectorSearchConfigurationNumberOfResultsInteger = Shapes::IntegerShape.new(name: 'KnowledgeBaseVectorSearchConfigurationNumberOfResultsInteger')
    LambdaArn = Shapes::StringShape.new(name: 'LambdaArn')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    MaxTokens = Shapes::IntegerShape.new(name: 'MaxTokens')
    MaximumLength = Shapes::IntegerShape.new(name: 'MaximumLength')
    Memories = Shapes::ListShape.new(name: 'Memories')
    Memory = Shapes::UnionShape.new(name: 'Memory')
    MemoryId = Shapes::StringShape.new(name: 'MemoryId')
    MemorySessionSummary = Shapes::StructureShape.new(name: 'MemorySessionSummary')
    MemoryType = Shapes::StringShape.new(name: 'MemoryType')
    Metadata = Shapes::StructureShape.new(name: 'Metadata')
    MimeType = Shapes::StringShape.new(name: 'MimeType')
    ModelInvocationInput = Shapes::StructureShape.new(name: 'ModelInvocationInput')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    NodeName = Shapes::StringShape.new(name: 'NodeName')
    NodeOutputName = Shapes::StringShape.new(name: 'NodeOutputName')
    NodeType = Shapes::StringShape.new(name: 'NodeType')
    NonBlankString = Shapes::StringShape.new(name: 'NonBlankString')
    Observation = Shapes::StructureShape.new(name: 'Observation')
    OrchestrationConfiguration = Shapes::StructureShape.new(name: 'OrchestrationConfiguration')
    OrchestrationModelInvocationOutput = Shapes::StructureShape.new(name: 'OrchestrationModelInvocationOutput')
    OrchestrationTrace = Shapes::UnionShape.new(name: 'OrchestrationTrace')
    OutputFile = Shapes::StructureShape.new(name: 'OutputFile')
    OutputFiles = Shapes::ListShape.new(name: 'OutputFiles')
    OutputString = Shapes::StringShape.new(name: 'OutputString')
    Parameter = Shapes::StructureShape.new(name: 'Parameter')
    ParameterList = Shapes::ListShape.new(name: 'ParameterList')
    Parameters = Shapes::ListShape.new(name: 'Parameters')
    PartBody = Shapes::BlobShape.new(name: 'PartBody')
    PayloadPart = Shapes::StructureShape.new(name: 'PayloadPart')
    PostProcessingModelInvocationOutput = Shapes::StructureShape.new(name: 'PostProcessingModelInvocationOutput')
    PostProcessingParsedResponse = Shapes::StructureShape.new(name: 'PostProcessingParsedResponse')
    PostProcessingTrace = Shapes::UnionShape.new(name: 'PostProcessingTrace')
    PreProcessingModelInvocationOutput = Shapes::StructureShape.new(name: 'PreProcessingModelInvocationOutput')
    PreProcessingParsedResponse = Shapes::StructureShape.new(name: 'PreProcessingParsedResponse')
    PreProcessingTrace = Shapes::UnionShape.new(name: 'PreProcessingTrace')
    PromptSessionAttributesMap = Shapes::MapShape.new(name: 'PromptSessionAttributesMap')
    PromptTemplate = Shapes::StructureShape.new(name: 'PromptTemplate')
    PromptText = Shapes::StringShape.new(name: 'PromptText')
    PromptType = Shapes::StringShape.new(name: 'PromptType')
    PropertyParameters = Shapes::StructureShape.new(name: 'PropertyParameters')
    QueryTransformationConfiguration = Shapes::StructureShape.new(name: 'QueryTransformationConfiguration')
    QueryTransformationType = Shapes::StringShape.new(name: 'QueryTransformationType')
    RAGStopSequences = Shapes::ListShape.new(name: 'RAGStopSequences')
    RAGStopSequencesMemberString = Shapes::StringShape.new(name: 'RAGStopSequencesMemberString')
    Rationale = Shapes::StructureShape.new(name: 'Rationale')
    RationaleString = Shapes::StringShape.new(name: 'RationaleString')
    RawResponse = Shapes::StructureShape.new(name: 'RawResponse')
    RepromptResponse = Shapes::StructureShape.new(name: 'RepromptResponse')
    RequestBody = Shapes::StructureShape.new(name: 'RequestBody')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResponseBody = Shapes::MapShape.new(name: 'ResponseBody')
    ResponseState = Shapes::StringShape.new(name: 'ResponseState')
    ResponseStream = Shapes::StructureShape.new(name: 'ResponseStream')
    RetrievalFilter = Shapes::UnionShape.new(name: 'RetrievalFilter')
    RetrievalFilterList = Shapes::ListShape.new(name: 'RetrievalFilterList')
    RetrievalResultConfluenceLocation = Shapes::StructureShape.new(name: 'RetrievalResultConfluenceLocation')
    RetrievalResultContent = Shapes::StructureShape.new(name: 'RetrievalResultContent')
    RetrievalResultLocation = Shapes::StructureShape.new(name: 'RetrievalResultLocation')
    RetrievalResultLocationType = Shapes::StringShape.new(name: 'RetrievalResultLocationType')
    RetrievalResultMetadata = Shapes::MapShape.new(name: 'RetrievalResultMetadata')
    RetrievalResultMetadataKey = Shapes::StringShape.new(name: 'RetrievalResultMetadataKey')
    RetrievalResultMetadataValue = Shapes::DocumentShape.new(name: 'RetrievalResultMetadataValue', document: true)
    RetrievalResultS3Location = Shapes::StructureShape.new(name: 'RetrievalResultS3Location')
    RetrievalResultSalesforceLocation = Shapes::StructureShape.new(name: 'RetrievalResultSalesforceLocation')
    RetrievalResultSharePointLocation = Shapes::StructureShape.new(name: 'RetrievalResultSharePointLocation')
    RetrievalResultWebLocation = Shapes::StructureShape.new(name: 'RetrievalResultWebLocation')
    RetrieveAndGenerateConfiguration = Shapes::StructureShape.new(name: 'RetrieveAndGenerateConfiguration')
    RetrieveAndGenerateInput = Shapes::StructureShape.new(name: 'RetrieveAndGenerateInput')
    RetrieveAndGenerateInputTextString = Shapes::StringShape.new(name: 'RetrieveAndGenerateInputTextString')
    RetrieveAndGenerateOutput = Shapes::StructureShape.new(name: 'RetrieveAndGenerateOutput')
    RetrieveAndGenerateRequest = Shapes::StructureShape.new(name: 'RetrieveAndGenerateRequest')
    RetrieveAndGenerateResponse = Shapes::StructureShape.new(name: 'RetrieveAndGenerateResponse')
    RetrieveAndGenerateSessionConfiguration = Shapes::StructureShape.new(name: 'RetrieveAndGenerateSessionConfiguration')
    RetrieveAndGenerateType = Shapes::StringShape.new(name: 'RetrieveAndGenerateType')
    RetrieveRequest = Shapes::StructureShape.new(name: 'RetrieveRequest')
    RetrieveResponse = Shapes::StructureShape.new(name: 'RetrieveResponse')
    RetrievedReference = Shapes::StructureShape.new(name: 'RetrievedReference')
    RetrievedReferences = Shapes::ListShape.new(name: 'RetrievedReferences')
    ReturnControlInvocationResults = Shapes::ListShape.new(name: 'ReturnControlInvocationResults')
    ReturnControlPayload = Shapes::StructureShape.new(name: 'ReturnControlPayload')
    S3ObjectDoc = Shapes::StructureShape.new(name: 'S3ObjectDoc')
    S3ObjectFile = Shapes::StructureShape.new(name: 'S3ObjectFile')
    S3Uri = Shapes::StringShape.new(name: 'S3Uri')
    SearchType = Shapes::StringShape.new(name: 'SearchType')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    SessionAttributesMap = Shapes::MapShape.new(name: 'SessionAttributesMap')
    SessionId = Shapes::StringShape.new(name: 'SessionId')
    SessionState = Shapes::StructureShape.new(name: 'SessionState')
    Source = Shapes::StringShape.new(name: 'Source')
    Span = Shapes::StructureShape.new(name: 'Span')
    SpanEndInteger = Shapes::IntegerShape.new(name: 'SpanEndInteger')
    SpanStartInteger = Shapes::IntegerShape.new(name: 'SpanStartInteger')
    StopSequences = Shapes::ListShape.new(name: 'StopSequences')
    String = Shapes::StringShape.new(name: 'String')
    SummaryText = Shapes::StringShape.new(name: 'SummaryText')
    Temperature = Shapes::FloatShape.new(name: 'Temperature')
    TextInferenceConfig = Shapes::StructureShape.new(name: 'TextInferenceConfig')
    TextPromptTemplate = Shapes::StringShape.new(name: 'TextPromptTemplate')
    TextResponsePart = Shapes::StructureShape.new(name: 'TextResponsePart')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    TopK = Shapes::IntegerShape.new(name: 'TopK')
    TopP = Shapes::FloatShape.new(name: 'TopP')
    Trace = Shapes::UnionShape.new(name: 'Trace')
    TraceId = Shapes::StringShape.new(name: 'TraceId')
    TraceKnowledgeBaseId = Shapes::StringShape.new(name: 'TraceKnowledgeBaseId')
    TracePart = Shapes::StructureShape.new(name: 'TracePart')
    Type = Shapes::StringShape.new(name: 'Type')
    Usage = Shapes::StructureShape.new(name: 'Usage')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    Verb = Shapes::StringShape.new(name: 'Verb')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    ActionGroupInvocationInput.add_member(:action_group_name, Shapes::ShapeRef.new(shape: ActionGroupName, location_name: "actionGroupName"))
    ActionGroupInvocationInput.add_member(:api_path, Shapes::ShapeRef.new(shape: ApiPath, location_name: "apiPath"))
    ActionGroupInvocationInput.add_member(:execution_type, Shapes::ShapeRef.new(shape: ExecutionType, location_name: "executionType"))
    ActionGroupInvocationInput.add_member(:function, Shapes::ShapeRef.new(shape: Function, location_name: "function"))
    ActionGroupInvocationInput.add_member(:invocation_id, Shapes::ShapeRef.new(shape: String, location_name: "invocationId"))
    ActionGroupInvocationInput.add_member(:parameters, Shapes::ShapeRef.new(shape: Parameters, location_name: "parameters"))
    ActionGroupInvocationInput.add_member(:request_body, Shapes::ShapeRef.new(shape: RequestBody, location_name: "requestBody"))
    ActionGroupInvocationInput.add_member(:verb, Shapes::ShapeRef.new(shape: Verb, location_name: "verb"))
    ActionGroupInvocationInput.struct_class = Types::ActionGroupInvocationInput

    ActionGroupInvocationOutput.add_member(:text, Shapes::ShapeRef.new(shape: ActionGroupOutputString, location_name: "text"))
    ActionGroupInvocationOutput.struct_class = Types::ActionGroupInvocationOutput

    AdditionalModelRequestFields.key = Shapes::ShapeRef.new(shape: AdditionalModelRequestFieldsKey)
    AdditionalModelRequestFields.value = Shapes::ShapeRef.new(shape: AdditionalModelRequestFieldsValue)

    ApiContentMap.key = Shapes::ShapeRef.new(shape: String)
    ApiContentMap.value = Shapes::ShapeRef.new(shape: PropertyParameters)

    ApiInvocationInput.add_member(:action_group, Shapes::ShapeRef.new(shape: String, required: true, location_name: "actionGroup"))
    ApiInvocationInput.add_member(:api_path, Shapes::ShapeRef.new(shape: ApiPath, location_name: "apiPath"))
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
    ApiResult.add_member(:api_path, Shapes::ShapeRef.new(shape: ApiPath, location_name: "apiPath"))
    ApiResult.add_member(:http_method, Shapes::ShapeRef.new(shape: String, location_name: "httpMethod"))
    ApiResult.add_member(:http_status_code, Shapes::ShapeRef.new(shape: Integer, location_name: "httpStatusCode"))
    ApiResult.add_member(:response_body, Shapes::ShapeRef.new(shape: ResponseBody, location_name: "responseBody"))
    ApiResult.add_member(:response_state, Shapes::ShapeRef.new(shape: ResponseState, location_name: "responseState"))
    ApiResult.struct_class = Types::ApiResult

    Attribution.add_member(:citations, Shapes::ShapeRef.new(shape: Citations, location_name: "citations"))
    Attribution.struct_class = Types::Attribution

    BadGatewayException.add_member(:message, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "message"))
    BadGatewayException.add_member(:resource_name, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "resourceName"))
    BadGatewayException.struct_class = Types::BadGatewayException

    ByteContentDoc.add_member(:content_type, Shapes::ShapeRef.new(shape: ContentType, required: true, location_name: "contentType"))
    ByteContentDoc.add_member(:data, Shapes::ShapeRef.new(shape: ByteContentBlob, required: true, location_name: "data"))
    ByteContentDoc.add_member(:identifier, Shapes::ShapeRef.new(shape: Identifier, required: true, location_name: "identifier"))
    ByteContentDoc.struct_class = Types::ByteContentDoc

    ByteContentFile.add_member(:data, Shapes::ShapeRef.new(shape: ByteContentBlob, required: true, location_name: "data"))
    ByteContentFile.add_member(:media_type, Shapes::ShapeRef.new(shape: MimeType, required: true, location_name: "mediaType"))
    ByteContentFile.struct_class = Types::ByteContentFile

    Citation.add_member(:generated_response_part, Shapes::ShapeRef.new(shape: GeneratedResponsePart, location_name: "generatedResponsePart"))
    Citation.add_member(:retrieved_references, Shapes::ShapeRef.new(shape: RetrievedReferences, location_name: "retrievedReferences"))
    Citation.struct_class = Types::Citation

    Citations.member = Shapes::ShapeRef.new(shape: Citation)

    CodeInterpreterInvocationInput.add_member(:code, Shapes::ShapeRef.new(shape: String, location_name: "code"))
    CodeInterpreterInvocationInput.add_member(:files, Shapes::ShapeRef.new(shape: Files, location_name: "files"))
    CodeInterpreterInvocationInput.struct_class = Types::CodeInterpreterInvocationInput

    CodeInterpreterInvocationOutput.add_member(:execution_error, Shapes::ShapeRef.new(shape: String, location_name: "executionError"))
    CodeInterpreterInvocationOutput.add_member(:execution_output, Shapes::ShapeRef.new(shape: String, location_name: "executionOutput"))
    CodeInterpreterInvocationOutput.add_member(:execution_timeout, Shapes::ShapeRef.new(shape: Boolean, location_name: "executionTimeout"))
    CodeInterpreterInvocationOutput.add_member(:files, Shapes::ShapeRef.new(shape: Files, location_name: "files"))
    CodeInterpreterInvocationOutput.struct_class = Types::CodeInterpreterInvocationOutput

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "message"))
    ConflictException.struct_class = Types::ConflictException

    ContentBody.add_member(:body, Shapes::ShapeRef.new(shape: String, location_name: "body"))
    ContentBody.struct_class = Types::ContentBody

    ContentMap.key = Shapes::ShapeRef.new(shape: String)
    ContentMap.value = Shapes::ShapeRef.new(shape: Parameters)

    DeleteAgentMemoryRequest.add_member(:agent_alias_id, Shapes::ShapeRef.new(shape: AgentAliasId, required: true, location: "uri", location_name: "agentAliasId"))
    DeleteAgentMemoryRequest.add_member(:agent_id, Shapes::ShapeRef.new(shape: AgentId, required: true, location: "uri", location_name: "agentId"))
    DeleteAgentMemoryRequest.add_member(:memory_id, Shapes::ShapeRef.new(shape: MemoryId, location: "querystring", location_name: "memoryId"))
    DeleteAgentMemoryRequest.struct_class = Types::DeleteAgentMemoryRequest

    DeleteAgentMemoryResponse.struct_class = Types::DeleteAgentMemoryResponse

    DependencyFailedException.add_member(:message, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "message"))
    DependencyFailedException.add_member(:resource_name, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "resourceName"))
    DependencyFailedException.struct_class = Types::DependencyFailedException

    ExternalSource.add_member(:byte_content, Shapes::ShapeRef.new(shape: ByteContentDoc, location_name: "byteContent"))
    ExternalSource.add_member(:s3_location, Shapes::ShapeRef.new(shape: S3ObjectDoc, location_name: "s3Location"))
    ExternalSource.add_member(:source_type, Shapes::ShapeRef.new(shape: ExternalSourceType, required: true, location_name: "sourceType"))
    ExternalSource.struct_class = Types::ExternalSource

    ExternalSources.member = Shapes::ShapeRef.new(shape: ExternalSource)

    ExternalSourcesGenerationConfiguration.add_member(:additional_model_request_fields, Shapes::ShapeRef.new(shape: AdditionalModelRequestFields, location_name: "additionalModelRequestFields"))
    ExternalSourcesGenerationConfiguration.add_member(:guardrail_configuration, Shapes::ShapeRef.new(shape: GuardrailConfiguration, location_name: "guardrailConfiguration"))
    ExternalSourcesGenerationConfiguration.add_member(:inference_config, Shapes::ShapeRef.new(shape: InferenceConfig, location_name: "inferenceConfig"))
    ExternalSourcesGenerationConfiguration.add_member(:prompt_template, Shapes::ShapeRef.new(shape: PromptTemplate, location_name: "promptTemplate"))
    ExternalSourcesGenerationConfiguration.struct_class = Types::ExternalSourcesGenerationConfiguration

    ExternalSourcesRetrieveAndGenerateConfiguration.add_member(:generation_configuration, Shapes::ShapeRef.new(shape: ExternalSourcesGenerationConfiguration, location_name: "generationConfiguration"))
    ExternalSourcesRetrieveAndGenerateConfiguration.add_member(:model_arn, Shapes::ShapeRef.new(shape: BedrockModelArn, required: true, location_name: "modelArn"))
    ExternalSourcesRetrieveAndGenerateConfiguration.add_member(:sources, Shapes::ShapeRef.new(shape: ExternalSources, required: true, location_name: "sources"))
    ExternalSourcesRetrieveAndGenerateConfiguration.struct_class = Types::ExternalSourcesRetrieveAndGenerateConfiguration

    FailureTrace.add_member(:failure_reason, Shapes::ShapeRef.new(shape: FailureReasonString, location_name: "failureReason"))
    FailureTrace.add_member(:trace_id, Shapes::ShapeRef.new(shape: TraceId, location_name: "traceId"))
    FailureTrace.struct_class = Types::FailureTrace

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

    FinalResponse.add_member(:text, Shapes::ShapeRef.new(shape: FinalResponseString, location_name: "text"))
    FinalResponse.struct_class = Types::FinalResponse

    FlowCompletionEvent.add_member(:completion_reason, Shapes::ShapeRef.new(shape: FlowCompletionReason, required: true, location_name: "completionReason"))
    FlowCompletionEvent.struct_class = Types::FlowCompletionEvent

    FlowInput.add_member(:content, Shapes::ShapeRef.new(shape: FlowInputContent, required: true, location_name: "content"))
    FlowInput.add_member(:node_name, Shapes::ShapeRef.new(shape: NodeName, required: true, location_name: "nodeName"))
    FlowInput.add_member(:node_output_name, Shapes::ShapeRef.new(shape: NodeOutputName, required: true, location_name: "nodeOutputName"))
    FlowInput.struct_class = Types::FlowInput

    FlowInputContent.add_member(:document, Shapes::ShapeRef.new(shape: Document, location_name: "document"))
    FlowInputContent.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    FlowInputContent.add_member_subclass(:document, Types::FlowInputContent::Document)
    FlowInputContent.add_member_subclass(:unknown, Types::FlowInputContent::Unknown)
    FlowInputContent.struct_class = Types::FlowInputContent

    FlowInputs.member = Shapes::ShapeRef.new(shape: FlowInput)

    FlowOutputContent.add_member(:document, Shapes::ShapeRef.new(shape: Document, location_name: "document"))
    FlowOutputContent.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    FlowOutputContent.add_member_subclass(:document, Types::FlowOutputContent::Document)
    FlowOutputContent.add_member_subclass(:unknown, Types::FlowOutputContent::Unknown)
    FlowOutputContent.struct_class = Types::FlowOutputContent

    FlowOutputEvent.add_member(:content, Shapes::ShapeRef.new(shape: FlowOutputContent, required: true, location_name: "content"))
    FlowOutputEvent.add_member(:node_name, Shapes::ShapeRef.new(shape: NodeName, required: true, location_name: "nodeName"))
    FlowOutputEvent.add_member(:node_type, Shapes::ShapeRef.new(shape: NodeType, required: true, location_name: "nodeType"))
    FlowOutputEvent.struct_class = Types::FlowOutputEvent

    FlowResponseStream.add_member(:access_denied_exception, Shapes::ShapeRef.new(shape: AccessDeniedException, location_name: "accessDeniedException"))
    FlowResponseStream.add_member(:bad_gateway_exception, Shapes::ShapeRef.new(shape: BadGatewayException, location_name: "badGatewayException"))
    FlowResponseStream.add_member(:conflict_exception, Shapes::ShapeRef.new(shape: ConflictException, location_name: "conflictException"))
    FlowResponseStream.add_member(:dependency_failed_exception, Shapes::ShapeRef.new(shape: DependencyFailedException, location_name: "dependencyFailedException"))
    FlowResponseStream.add_member(:flow_completion_event, Shapes::ShapeRef.new(shape: FlowCompletionEvent, event: true, location_name: "flowCompletionEvent"))
    FlowResponseStream.add_member(:flow_output_event, Shapes::ShapeRef.new(shape: FlowOutputEvent, event: true, location_name: "flowOutputEvent"))
    FlowResponseStream.add_member(:internal_server_exception, Shapes::ShapeRef.new(shape: InternalServerException, location_name: "internalServerException"))
    FlowResponseStream.add_member(:resource_not_found_exception, Shapes::ShapeRef.new(shape: ResourceNotFoundException, location_name: "resourceNotFoundException"))
    FlowResponseStream.add_member(:service_quota_exceeded_exception, Shapes::ShapeRef.new(shape: ServiceQuotaExceededException, location_name: "serviceQuotaExceededException"))
    FlowResponseStream.add_member(:throttling_exception, Shapes::ShapeRef.new(shape: ThrottlingException, location_name: "throttlingException"))
    FlowResponseStream.add_member(:validation_exception, Shapes::ShapeRef.new(shape: ValidationException, location_name: "validationException"))
    FlowResponseStream.struct_class = Types::FlowResponseStream

    FunctionInvocationInput.add_member(:action_group, Shapes::ShapeRef.new(shape: String, required: true, location_name: "actionGroup"))
    FunctionInvocationInput.add_member(:function, Shapes::ShapeRef.new(shape: String, location_name: "function"))
    FunctionInvocationInput.add_member(:parameters, Shapes::ShapeRef.new(shape: FunctionParameters, location_name: "parameters"))
    FunctionInvocationInput.struct_class = Types::FunctionInvocationInput

    FunctionParameter.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "name"))
    FunctionParameter.add_member(:type, Shapes::ShapeRef.new(shape: String, location_name: "type"))
    FunctionParameter.add_member(:value, Shapes::ShapeRef.new(shape: String, location_name: "value"))
    FunctionParameter.struct_class = Types::FunctionParameter

    FunctionParameters.member = Shapes::ShapeRef.new(shape: FunctionParameter)

    FunctionResult.add_member(:action_group, Shapes::ShapeRef.new(shape: String, required: true, location_name: "actionGroup"))
    FunctionResult.add_member(:function, Shapes::ShapeRef.new(shape: String, location_name: "function"))
    FunctionResult.add_member(:response_body, Shapes::ShapeRef.new(shape: ResponseBody, location_name: "responseBody"))
    FunctionResult.add_member(:response_state, Shapes::ShapeRef.new(shape: ResponseState, location_name: "responseState"))
    FunctionResult.struct_class = Types::FunctionResult

    GeneratedResponsePart.add_member(:text_response_part, Shapes::ShapeRef.new(shape: TextResponsePart, location_name: "textResponsePart"))
    GeneratedResponsePart.struct_class = Types::GeneratedResponsePart

    GenerationConfiguration.add_member(:additional_model_request_fields, Shapes::ShapeRef.new(shape: AdditionalModelRequestFields, location_name: "additionalModelRequestFields"))
    GenerationConfiguration.add_member(:guardrail_configuration, Shapes::ShapeRef.new(shape: GuardrailConfiguration, location_name: "guardrailConfiguration"))
    GenerationConfiguration.add_member(:inference_config, Shapes::ShapeRef.new(shape: InferenceConfig, location_name: "inferenceConfig"))
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

    GuardrailAssessment.add_member(:content_policy, Shapes::ShapeRef.new(shape: GuardrailContentPolicyAssessment, location_name: "contentPolicy"))
    GuardrailAssessment.add_member(:sensitive_information_policy, Shapes::ShapeRef.new(shape: GuardrailSensitiveInformationPolicyAssessment, location_name: "sensitiveInformationPolicy"))
    GuardrailAssessment.add_member(:topic_policy, Shapes::ShapeRef.new(shape: GuardrailTopicPolicyAssessment, location_name: "topicPolicy"))
    GuardrailAssessment.add_member(:word_policy, Shapes::ShapeRef.new(shape: GuardrailWordPolicyAssessment, location_name: "wordPolicy"))
    GuardrailAssessment.struct_class = Types::GuardrailAssessment

    GuardrailAssessmentList.member = Shapes::ShapeRef.new(shape: GuardrailAssessment)

    GuardrailConfiguration.add_member(:guardrail_id, Shapes::ShapeRef.new(shape: GuardrailConfigurationGuardrailIdString, required: true, location_name: "guardrailId"))
    GuardrailConfiguration.add_member(:guardrail_version, Shapes::ShapeRef.new(shape: GuardrailConfigurationGuardrailVersionString, required: true, location_name: "guardrailVersion"))
    GuardrailConfiguration.struct_class = Types::GuardrailConfiguration

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
    GuardrailTrace.add_member(:output_assessments, Shapes::ShapeRef.new(shape: GuardrailAssessmentList, location_name: "outputAssessments"))
    GuardrailTrace.add_member(:trace_id, Shapes::ShapeRef.new(shape: TraceId, location_name: "traceId"))
    GuardrailTrace.struct_class = Types::GuardrailTrace

    GuardrailWordPolicyAssessment.add_member(:custom_words, Shapes::ShapeRef.new(shape: GuardrailCustomWordList, location_name: "customWords"))
    GuardrailWordPolicyAssessment.add_member(:managed_word_lists, Shapes::ShapeRef.new(shape: GuardrailManagedWordList, location_name: "managedWordLists"))
    GuardrailWordPolicyAssessment.struct_class = Types::GuardrailWordPolicyAssessment

    InferenceConfig.add_member(:text_inference_config, Shapes::ShapeRef.new(shape: TextInferenceConfig, location_name: "textInferenceConfig"))
    InferenceConfig.struct_class = Types::InferenceConfig

    InferenceConfiguration.add_member(:maximum_length, Shapes::ShapeRef.new(shape: MaximumLength, location_name: "maximumLength"))
    InferenceConfiguration.add_member(:stop_sequences, Shapes::ShapeRef.new(shape: StopSequences, location_name: "stopSequences"))
    InferenceConfiguration.add_member(:temperature, Shapes::ShapeRef.new(shape: Temperature, location_name: "temperature"))
    InferenceConfiguration.add_member(:top_k, Shapes::ShapeRef.new(shape: TopK, location_name: "topK"))
    InferenceConfiguration.add_member(:top_p, Shapes::ShapeRef.new(shape: TopP, location_name: "topP"))
    InferenceConfiguration.struct_class = Types::InferenceConfiguration

    InputFile.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    InputFile.add_member(:source, Shapes::ShapeRef.new(shape: FileSource, required: true, location_name: "source"))
    InputFile.add_member(:use_case, Shapes::ShapeRef.new(shape: FileUseCase, required: true, location_name: "useCase"))
    InputFile.struct_class = Types::InputFile

    InputFiles.member = Shapes::ShapeRef.new(shape: InputFile)

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "message"))
    InternalServerException.struct_class = Types::InternalServerException

    InvocationInput.add_member(:action_group_invocation_input, Shapes::ShapeRef.new(shape: ActionGroupInvocationInput, location_name: "actionGroupInvocationInput"))
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

    InvokeAgentRequest.add_member(:agent_alias_id, Shapes::ShapeRef.new(shape: AgentAliasId, required: true, location: "uri", location_name: "agentAliasId"))
    InvokeAgentRequest.add_member(:agent_id, Shapes::ShapeRef.new(shape: AgentId, required: true, location: "uri", location_name: "agentId"))
    InvokeAgentRequest.add_member(:enable_trace, Shapes::ShapeRef.new(shape: Boolean, location_name: "enableTrace"))
    InvokeAgentRequest.add_member(:end_session, Shapes::ShapeRef.new(shape: Boolean, location_name: "endSession"))
    InvokeAgentRequest.add_member(:input_text, Shapes::ShapeRef.new(shape: InputText, location_name: "inputText"))
    InvokeAgentRequest.add_member(:memory_id, Shapes::ShapeRef.new(shape: MemoryId, location_name: "memoryId"))
    InvokeAgentRequest.add_member(:session_id, Shapes::ShapeRef.new(shape: SessionId, required: true, location: "uri", location_name: "sessionId"))
    InvokeAgentRequest.add_member(:session_state, Shapes::ShapeRef.new(shape: SessionState, location_name: "sessionState"))
    InvokeAgentRequest.struct_class = Types::InvokeAgentRequest

    InvokeAgentResponse.add_member(:completion, Shapes::ShapeRef.new(shape: ResponseStream, required: true, eventstream: true, location_name: "completion"))
    InvokeAgentResponse.add_member(:content_type, Shapes::ShapeRef.new(shape: MimeType, required: true, location: "header", location_name: "x-amzn-bedrock-agent-content-type"))
    InvokeAgentResponse.add_member(:memory_id, Shapes::ShapeRef.new(shape: MemoryId, location: "header", location_name: "x-amz-bedrock-agent-memory-id"))
    InvokeAgentResponse.add_member(:session_id, Shapes::ShapeRef.new(shape: SessionId, required: true, location: "header", location_name: "x-amz-bedrock-agent-session-id"))
    InvokeAgentResponse.struct_class = Types::InvokeAgentResponse
    InvokeAgentResponse[:payload] = :completion
    InvokeAgentResponse[:payload_member] = InvokeAgentResponse.member(:completion)

    InvokeFlowRequest.add_member(:flow_alias_identifier, Shapes::ShapeRef.new(shape: FlowAliasIdentifier, required: true, location: "uri", location_name: "flowAliasIdentifier"))
    InvokeFlowRequest.add_member(:flow_identifier, Shapes::ShapeRef.new(shape: FlowIdentifier, required: true, location: "uri", location_name: "flowIdentifier"))
    InvokeFlowRequest.add_member(:inputs, Shapes::ShapeRef.new(shape: FlowInputs, required: true, location_name: "inputs"))
    InvokeFlowRequest.struct_class = Types::InvokeFlowRequest

    InvokeFlowResponse.add_member(:response_stream, Shapes::ShapeRef.new(shape: FlowResponseStream, required: true, eventstream: true, location_name: "responseStream"))
    InvokeFlowResponse.struct_class = Types::InvokeFlowResponse
    InvokeFlowResponse[:payload] = :response_stream
    InvokeFlowResponse[:payload_member] = InvokeFlowResponse.member(:response_stream)

    KnowledgeBaseConfiguration.add_member(:knowledge_base_id, Shapes::ShapeRef.new(shape: KnowledgeBaseId, required: true, location_name: "knowledgeBaseId"))
    KnowledgeBaseConfiguration.add_member(:retrieval_configuration, Shapes::ShapeRef.new(shape: KnowledgeBaseRetrievalConfiguration, required: true, location_name: "retrievalConfiguration"))
    KnowledgeBaseConfiguration.struct_class = Types::KnowledgeBaseConfiguration

    KnowledgeBaseConfigurations.member = Shapes::ShapeRef.new(shape: KnowledgeBaseConfiguration)

    KnowledgeBaseLookupInput.add_member(:knowledge_base_id, Shapes::ShapeRef.new(shape: TraceKnowledgeBaseId, location_name: "knowledgeBaseId"))
    KnowledgeBaseLookupInput.add_member(:text, Shapes::ShapeRef.new(shape: KnowledgeBaseLookupInputString, location_name: "text"))
    KnowledgeBaseLookupInput.struct_class = Types::KnowledgeBaseLookupInput

    KnowledgeBaseLookupOutput.add_member(:retrieved_references, Shapes::ShapeRef.new(shape: RetrievedReferences, location_name: "retrievedReferences"))
    KnowledgeBaseLookupOutput.struct_class = Types::KnowledgeBaseLookupOutput

    KnowledgeBaseQuery.add_member(:text, Shapes::ShapeRef.new(shape: KnowledgeBaseQueryTextString, required: true, location_name: "text"))
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
    KnowledgeBaseVectorSearchConfiguration.add_member(:number_of_results, Shapes::ShapeRef.new(shape: KnowledgeBaseVectorSearchConfigurationNumberOfResultsInteger, location_name: "numberOfResults", metadata: {"box"=>true}))
    KnowledgeBaseVectorSearchConfiguration.add_member(:override_search_type, Shapes::ShapeRef.new(shape: SearchType, location_name: "overrideSearchType"))
    KnowledgeBaseVectorSearchConfiguration.struct_class = Types::KnowledgeBaseVectorSearchConfiguration

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

    Metadata.add_member(:usage, Shapes::ShapeRef.new(shape: Usage, location_name: "usage"))
    Metadata.struct_class = Types::Metadata

    ModelInvocationInput.add_member(:inference_configuration, Shapes::ShapeRef.new(shape: InferenceConfiguration, location_name: "inferenceConfiguration"))
    ModelInvocationInput.add_member(:override_lambda, Shapes::ShapeRef.new(shape: LambdaArn, location_name: "overrideLambda"))
    ModelInvocationInput.add_member(:parser_mode, Shapes::ShapeRef.new(shape: CreationMode, location_name: "parserMode"))
    ModelInvocationInput.add_member(:prompt_creation_mode, Shapes::ShapeRef.new(shape: CreationMode, location_name: "promptCreationMode"))
    ModelInvocationInput.add_member(:text, Shapes::ShapeRef.new(shape: PromptText, location_name: "text"))
    ModelInvocationInput.add_member(:trace_id, Shapes::ShapeRef.new(shape: TraceId, location_name: "traceId"))
    ModelInvocationInput.add_member(:type, Shapes::ShapeRef.new(shape: PromptType, location_name: "type"))
    ModelInvocationInput.struct_class = Types::ModelInvocationInput

    Observation.add_member(:action_group_invocation_output, Shapes::ShapeRef.new(shape: ActionGroupInvocationOutput, location_name: "actionGroupInvocationOutput"))
    Observation.add_member(:code_interpreter_invocation_output, Shapes::ShapeRef.new(shape: CodeInterpreterInvocationOutput, location_name: "codeInterpreterInvocationOutput"))
    Observation.add_member(:final_response, Shapes::ShapeRef.new(shape: FinalResponse, location_name: "finalResponse"))
    Observation.add_member(:knowledge_base_lookup_output, Shapes::ShapeRef.new(shape: KnowledgeBaseLookupOutput, location_name: "knowledgeBaseLookupOutput"))
    Observation.add_member(:reprompt_response, Shapes::ShapeRef.new(shape: RepromptResponse, location_name: "repromptResponse"))
    Observation.add_member(:trace_id, Shapes::ShapeRef.new(shape: TraceId, location_name: "traceId"))
    Observation.add_member(:type, Shapes::ShapeRef.new(shape: Type, location_name: "type"))
    Observation.struct_class = Types::Observation

    OrchestrationConfiguration.add_member(:query_transformation_configuration, Shapes::ShapeRef.new(shape: QueryTransformationConfiguration, required: true, location_name: "queryTransformationConfiguration"))
    OrchestrationConfiguration.struct_class = Types::OrchestrationConfiguration

    OrchestrationModelInvocationOutput.add_member(:metadata, Shapes::ShapeRef.new(shape: Metadata, location_name: "metadata"))
    OrchestrationModelInvocationOutput.add_member(:raw_response, Shapes::ShapeRef.new(shape: RawResponse, location_name: "rawResponse"))
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

    ParameterList.member = Shapes::ShapeRef.new(shape: Parameter)

    Parameters.member = Shapes::ShapeRef.new(shape: Parameter)

    PayloadPart.add_member(:attribution, Shapes::ShapeRef.new(shape: Attribution, location_name: "attribution"))
    PayloadPart.add_member(:bytes, Shapes::ShapeRef.new(shape: PartBody, location_name: "bytes"))
    PayloadPart.struct_class = Types::PayloadPart

    PostProcessingModelInvocationOutput.add_member(:parsed_response, Shapes::ShapeRef.new(shape: PostProcessingParsedResponse, location_name: "parsedResponse"))
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

    PreProcessingModelInvocationOutput.add_member(:parsed_response, Shapes::ShapeRef.new(shape: PreProcessingParsedResponse, location_name: "parsedResponse"))
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

    PromptSessionAttributesMap.key = Shapes::ShapeRef.new(shape: String)
    PromptSessionAttributesMap.value = Shapes::ShapeRef.new(shape: String)

    PromptTemplate.add_member(:text_prompt_template, Shapes::ShapeRef.new(shape: TextPromptTemplate, location_name: "textPromptTemplate"))
    PromptTemplate.struct_class = Types::PromptTemplate

    PropertyParameters.add_member(:properties, Shapes::ShapeRef.new(shape: ParameterList, location_name: "properties"))
    PropertyParameters.struct_class = Types::PropertyParameters

    QueryTransformationConfiguration.add_member(:type, Shapes::ShapeRef.new(shape: QueryTransformationType, required: true, location_name: "type"))
    QueryTransformationConfiguration.struct_class = Types::QueryTransformationConfiguration

    RAGStopSequences.member = Shapes::ShapeRef.new(shape: RAGStopSequencesMemberString)

    Rationale.add_member(:text, Shapes::ShapeRef.new(shape: RationaleString, location_name: "text"))
    Rationale.add_member(:trace_id, Shapes::ShapeRef.new(shape: TraceId, location_name: "traceId"))
    Rationale.struct_class = Types::Rationale

    RawResponse.add_member(:content, Shapes::ShapeRef.new(shape: String, location_name: "content"))
    RawResponse.struct_class = Types::RawResponse

    RepromptResponse.add_member(:source, Shapes::ShapeRef.new(shape: Source, location_name: "source"))
    RepromptResponse.add_member(:text, Shapes::ShapeRef.new(shape: String, location_name: "text"))
    RepromptResponse.struct_class = Types::RepromptResponse

    RequestBody.add_member(:content, Shapes::ShapeRef.new(shape: ContentMap, location_name: "content"))
    RequestBody.struct_class = Types::RequestBody

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

    RetrievalResultContent.add_member(:text, Shapes::ShapeRef.new(shape: String, required: true, location_name: "text"))
    RetrievalResultContent.struct_class = Types::RetrievalResultContent

    RetrievalResultLocation.add_member(:confluence_location, Shapes::ShapeRef.new(shape: RetrievalResultConfluenceLocation, location_name: "confluenceLocation"))
    RetrievalResultLocation.add_member(:s3_location, Shapes::ShapeRef.new(shape: RetrievalResultS3Location, location_name: "s3Location"))
    RetrievalResultLocation.add_member(:salesforce_location, Shapes::ShapeRef.new(shape: RetrievalResultSalesforceLocation, location_name: "salesforceLocation"))
    RetrievalResultLocation.add_member(:share_point_location, Shapes::ShapeRef.new(shape: RetrievalResultSharePointLocation, location_name: "sharePointLocation"))
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

    RetrieveRequest.add_member(:knowledge_base_id, Shapes::ShapeRef.new(shape: KnowledgeBaseId, required: true, location: "uri", location_name: "knowledgeBaseId"))
    RetrieveRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    RetrieveRequest.add_member(:retrieval_configuration, Shapes::ShapeRef.new(shape: KnowledgeBaseRetrievalConfiguration, location_name: "retrievalConfiguration"))
    RetrieveRequest.add_member(:retrieval_query, Shapes::ShapeRef.new(shape: KnowledgeBaseQuery, required: true, location_name: "retrievalQuery"))
    RetrieveRequest.struct_class = Types::RetrieveRequest

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

    S3ObjectDoc.add_member(:uri, Shapes::ShapeRef.new(shape: S3Uri, required: true, location_name: "uri"))
    S3ObjectDoc.struct_class = Types::S3ObjectDoc

    S3ObjectFile.add_member(:uri, Shapes::ShapeRef.new(shape: S3Uri, required: true, location_name: "uri"))
    S3ObjectFile.struct_class = Types::S3ObjectFile

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "message"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    SessionAttributesMap.key = Shapes::ShapeRef.new(shape: String)
    SessionAttributesMap.value = Shapes::ShapeRef.new(shape: String)

    SessionState.add_member(:files, Shapes::ShapeRef.new(shape: InputFiles, location_name: "files"))
    SessionState.add_member(:invocation_id, Shapes::ShapeRef.new(shape: String, location_name: "invocationId"))
    SessionState.add_member(:knowledge_base_configurations, Shapes::ShapeRef.new(shape: KnowledgeBaseConfigurations, location_name: "knowledgeBaseConfigurations"))
    SessionState.add_member(:prompt_session_attributes, Shapes::ShapeRef.new(shape: PromptSessionAttributesMap, location_name: "promptSessionAttributes"))
    SessionState.add_member(:return_control_invocation_results, Shapes::ShapeRef.new(shape: ReturnControlInvocationResults, location_name: "returnControlInvocationResults"))
    SessionState.add_member(:session_attributes, Shapes::ShapeRef.new(shape: SessionAttributesMap, location_name: "sessionAttributes"))
    SessionState.struct_class = Types::SessionState

    Span.add_member(:end, Shapes::ShapeRef.new(shape: SpanEndInteger, location_name: "end"))
    Span.add_member(:start, Shapes::ShapeRef.new(shape: SpanStartInteger, location_name: "start"))
    Span.struct_class = Types::Span

    StopSequences.member = Shapes::ShapeRef.new(shape: String)

    TextInferenceConfig.add_member(:max_tokens, Shapes::ShapeRef.new(shape: MaxTokens, location_name: "maxTokens"))
    TextInferenceConfig.add_member(:stop_sequences, Shapes::ShapeRef.new(shape: RAGStopSequences, location_name: "stopSequences"))
    TextInferenceConfig.add_member(:temperature, Shapes::ShapeRef.new(shape: Temperature, location_name: "temperature"))
    TextInferenceConfig.add_member(:top_p, Shapes::ShapeRef.new(shape: TopP, location_name: "topP"))
    TextInferenceConfig.struct_class = Types::TextInferenceConfig

    TextResponsePart.add_member(:span, Shapes::ShapeRef.new(shape: Span, location_name: "span"))
    TextResponsePart.add_member(:text, Shapes::ShapeRef.new(shape: String, location_name: "text"))
    TextResponsePart.struct_class = Types::TextResponsePart

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    Trace.add_member(:failure_trace, Shapes::ShapeRef.new(shape: FailureTrace, location_name: "failureTrace"))
    Trace.add_member(:guardrail_trace, Shapes::ShapeRef.new(shape: GuardrailTrace, location_name: "guardrailTrace"))
    Trace.add_member(:orchestration_trace, Shapes::ShapeRef.new(shape: OrchestrationTrace, location_name: "orchestrationTrace"))
    Trace.add_member(:post_processing_trace, Shapes::ShapeRef.new(shape: PostProcessingTrace, location_name: "postProcessingTrace"))
    Trace.add_member(:pre_processing_trace, Shapes::ShapeRef.new(shape: PreProcessingTrace, location_name: "preProcessingTrace"))
    Trace.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    Trace.add_member_subclass(:failure_trace, Types::Trace::FailureTrace)
    Trace.add_member_subclass(:guardrail_trace, Types::Trace::GuardrailTrace)
    Trace.add_member_subclass(:orchestration_trace, Types::Trace::OrchestrationTrace)
    Trace.add_member_subclass(:post_processing_trace, Types::Trace::PostProcessingTrace)
    Trace.add_member_subclass(:pre_processing_trace, Types::Trace::PreProcessingTrace)
    Trace.add_member_subclass(:unknown, Types::Trace::Unknown)
    Trace.struct_class = Types::Trace

    TracePart.add_member(:agent_alias_id, Shapes::ShapeRef.new(shape: AgentAliasId, location_name: "agentAliasId"))
    TracePart.add_member(:agent_id, Shapes::ShapeRef.new(shape: AgentId, location_name: "agentId"))
    TracePart.add_member(:agent_version, Shapes::ShapeRef.new(shape: AgentVersion, location_name: "agentVersion"))
    TracePart.add_member(:session_id, Shapes::ShapeRef.new(shape: SessionId, location_name: "sessionId"))
    TracePart.add_member(:trace, Shapes::ShapeRef.new(shape: Trace, location_name: "trace"))
    TracePart.struct_class = Types::TracePart

    Usage.add_member(:input_tokens, Shapes::ShapeRef.new(shape: Integer, location_name: "inputTokens"))
    Usage.add_member(:output_tokens, Shapes::ShapeRef.new(shape: Integer, location_name: "outputTokens"))
    Usage.struct_class = Types::Usage

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "message"))
    ValidationException.struct_class = Types::ValidationException


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2023-07-26"

      api.metadata = {
        "apiVersion" => "2023-07-26",
        "endpointPrefix" => "bedrock-agent-runtime",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceFullName" => "Agents for Amazon Bedrock Runtime",
        "serviceId" => "Bedrock Agent Runtime",
        "signatureVersion" => "v4",
        "signingName" => "bedrock",
        "uid" => "bedrock-agent-runtime-2023-07-26",
      }

      api.add_operation(:delete_agent_memory, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteAgentMemory"
        o.http_method = "DELETE"
        o.http_request_uri = "/agents/{agentId}/agentAliases/{agentAliasId}/memories"
        o.input = Shapes::ShapeRef.new(shape: DeleteAgentMemoryRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteAgentMemoryResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
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
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
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

      api.add_operation(:invoke_agent, Seahorse::Model::Operation.new.tap do |o|
        o.name = "InvokeAgent"
        o.http_method = "POST"
        o.http_request_uri = "/agents/{agentId}/agentAliases/{agentAliasId}/sessions/{sessionId}/text"
        o.input = Shapes::ShapeRef.new(shape: InvokeAgentRequest)
        o.output = Shapes::ShapeRef.new(shape: InvokeAgentResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
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
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: DependencyFailedException)
        o.errors << Shapes::ShapeRef.new(shape: BadGatewayException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:retrieve, Seahorse::Model::Operation.new.tap do |o|
        o.name = "Retrieve"
        o.http_method = "POST"
        o.http_request_uri = "/knowledgebases/{knowledgeBaseId}/retrieve"
        o.input = Shapes::ShapeRef.new(shape: RetrieveRequest)
        o.output = Shapes::ShapeRef.new(shape: RetrieveResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
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
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: DependencyFailedException)
        o.errors << Shapes::ShapeRef.new(shape: BadGatewayException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)
    end

  end
end
