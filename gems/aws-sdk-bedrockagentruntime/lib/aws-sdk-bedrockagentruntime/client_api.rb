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
    Citation = Shapes::StructureShape.new(name: 'Citation')
    Citations = Shapes::ListShape.new(name: 'Citations')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    ContentBody = Shapes::StructureShape.new(name: 'ContentBody')
    ContentMap = Shapes::MapShape.new(name: 'ContentMap')
    CreationMode = Shapes::StringShape.new(name: 'CreationMode')
    DependencyFailedException = Shapes::StructureShape.new(name: 'DependencyFailedException')
    Double = Shapes::FloatShape.new(name: 'Double')
    FailureReasonString = Shapes::StringShape.new(name: 'FailureReasonString')
    FailureTrace = Shapes::StructureShape.new(name: 'FailureTrace')
    FilterAttribute = Shapes::StructureShape.new(name: 'FilterAttribute')
    FilterKey = Shapes::StringShape.new(name: 'FilterKey')
    FilterValue = Shapes::DocumentShape.new(name: 'FilterValue', document: true)
    FinalResponse = Shapes::StructureShape.new(name: 'FinalResponse')
    FinalResponseString = Shapes::StringShape.new(name: 'FinalResponseString')
    Function = Shapes::StringShape.new(name: 'Function')
    FunctionInvocationInput = Shapes::StructureShape.new(name: 'FunctionInvocationInput')
    FunctionParameter = Shapes::StructureShape.new(name: 'FunctionParameter')
    FunctionParameters = Shapes::ListShape.new(name: 'FunctionParameters')
    FunctionResult = Shapes::StructureShape.new(name: 'FunctionResult')
    GeneratedResponsePart = Shapes::StructureShape.new(name: 'GeneratedResponsePart')
    GenerationConfiguration = Shapes::StructureShape.new(name: 'GenerationConfiguration')
    InferenceConfiguration = Shapes::StructureShape.new(name: 'InferenceConfiguration')
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
    KmsKeyArn = Shapes::StringShape.new(name: 'KmsKeyArn')
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
    MaximumLength = Shapes::IntegerShape.new(name: 'MaximumLength')
    MimeType = Shapes::StringShape.new(name: 'MimeType')
    ModelInvocationInput = Shapes::StructureShape.new(name: 'ModelInvocationInput')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    NonBlankString = Shapes::StringShape.new(name: 'NonBlankString')
    Observation = Shapes::StructureShape.new(name: 'Observation')
    OrchestrationTrace = Shapes::UnionShape.new(name: 'OrchestrationTrace')
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
    Rationale = Shapes::StructureShape.new(name: 'Rationale')
    RationaleString = Shapes::StringShape.new(name: 'RationaleString')
    RepromptResponse = Shapes::StructureShape.new(name: 'RepromptResponse')
    RequestBody = Shapes::StructureShape.new(name: 'RequestBody')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResponseBody = Shapes::MapShape.new(name: 'ResponseBody')
    ResponseState = Shapes::StringShape.new(name: 'ResponseState')
    ResponseStream = Shapes::StructureShape.new(name: 'ResponseStream')
    RetrievalFilter = Shapes::UnionShape.new(name: 'RetrievalFilter')
    RetrievalFilterList = Shapes::ListShape.new(name: 'RetrievalFilterList')
    RetrievalResultContent = Shapes::StructureShape.new(name: 'RetrievalResultContent')
    RetrievalResultLocation = Shapes::StructureShape.new(name: 'RetrievalResultLocation')
    RetrievalResultLocationType = Shapes::StringShape.new(name: 'RetrievalResultLocationType')
    RetrievalResultMetadata = Shapes::MapShape.new(name: 'RetrievalResultMetadata')
    RetrievalResultMetadataKey = Shapes::StringShape.new(name: 'RetrievalResultMetadataKey')
    RetrievalResultMetadataValue = Shapes::DocumentShape.new(name: 'RetrievalResultMetadataValue', document: true)
    RetrievalResultS3Location = Shapes::StructureShape.new(name: 'RetrievalResultS3Location')
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
    Temperature = Shapes::FloatShape.new(name: 'Temperature')
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
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    Verb = Shapes::StringShape.new(name: 'Verb')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    ActionGroupInvocationInput.add_member(:action_group_name, Shapes::ShapeRef.new(shape: ActionGroupName, location_name: "actionGroupName"))
    ActionGroupInvocationInput.add_member(:api_path, Shapes::ShapeRef.new(shape: ApiPath, location_name: "apiPath"))
    ActionGroupInvocationInput.add_member(:function, Shapes::ShapeRef.new(shape: Function, location_name: "function"))
    ActionGroupInvocationInput.add_member(:parameters, Shapes::ShapeRef.new(shape: Parameters, location_name: "parameters"))
    ActionGroupInvocationInput.add_member(:request_body, Shapes::ShapeRef.new(shape: RequestBody, location_name: "requestBody"))
    ActionGroupInvocationInput.add_member(:verb, Shapes::ShapeRef.new(shape: Verb, location_name: "verb"))
    ActionGroupInvocationInput.struct_class = Types::ActionGroupInvocationInput

    ActionGroupInvocationOutput.add_member(:text, Shapes::ShapeRef.new(shape: ActionGroupOutputString, location_name: "text"))
    ActionGroupInvocationOutput.struct_class = Types::ActionGroupInvocationOutput

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

    Citation.add_member(:generated_response_part, Shapes::ShapeRef.new(shape: GeneratedResponsePart, location_name: "generatedResponsePart"))
    Citation.add_member(:retrieved_references, Shapes::ShapeRef.new(shape: RetrievedReferences, location_name: "retrievedReferences"))
    Citation.struct_class = Types::Citation

    Citations.member = Shapes::ShapeRef.new(shape: Citation)

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "message"))
    ConflictException.struct_class = Types::ConflictException

    ContentBody.add_member(:body, Shapes::ShapeRef.new(shape: String, location_name: "body"))
    ContentBody.struct_class = Types::ContentBody

    ContentMap.key = Shapes::ShapeRef.new(shape: String)
    ContentMap.value = Shapes::ShapeRef.new(shape: Parameters)

    DependencyFailedException.add_member(:message, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "message"))
    DependencyFailedException.add_member(:resource_name, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "resourceName"))
    DependencyFailedException.struct_class = Types::DependencyFailedException

    FailureTrace.add_member(:failure_reason, Shapes::ShapeRef.new(shape: FailureReasonString, location_name: "failureReason"))
    FailureTrace.add_member(:trace_id, Shapes::ShapeRef.new(shape: TraceId, location_name: "traceId"))
    FailureTrace.struct_class = Types::FailureTrace

    FilterAttribute.add_member(:key, Shapes::ShapeRef.new(shape: FilterKey, required: true, location_name: "key"))
    FilterAttribute.add_member(:value, Shapes::ShapeRef.new(shape: FilterValue, required: true, location_name: "value"))
    FilterAttribute.struct_class = Types::FilterAttribute

    FinalResponse.add_member(:text, Shapes::ShapeRef.new(shape: FinalResponseString, location_name: "text"))
    FinalResponse.struct_class = Types::FinalResponse

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

    GenerationConfiguration.add_member(:prompt_template, Shapes::ShapeRef.new(shape: PromptTemplate, location_name: "promptTemplate"))
    GenerationConfiguration.struct_class = Types::GenerationConfiguration

    InferenceConfiguration.add_member(:maximum_length, Shapes::ShapeRef.new(shape: MaximumLength, location_name: "maximumLength"))
    InferenceConfiguration.add_member(:stop_sequences, Shapes::ShapeRef.new(shape: StopSequences, location_name: "stopSequences"))
    InferenceConfiguration.add_member(:temperature, Shapes::ShapeRef.new(shape: Temperature, location_name: "temperature"))
    InferenceConfiguration.add_member(:top_k, Shapes::ShapeRef.new(shape: TopK, location_name: "topK"))
    InferenceConfiguration.add_member(:top_p, Shapes::ShapeRef.new(shape: TopP, location_name: "topP"))
    InferenceConfiguration.struct_class = Types::InferenceConfiguration

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "message"))
    InternalServerException.struct_class = Types::InternalServerException

    InvocationInput.add_member(:action_group_invocation_input, Shapes::ShapeRef.new(shape: ActionGroupInvocationInput, location_name: "actionGroupInvocationInput"))
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
    InvokeAgentRequest.add_member(:session_id, Shapes::ShapeRef.new(shape: SessionId, required: true, location: "uri", location_name: "sessionId"))
    InvokeAgentRequest.add_member(:session_state, Shapes::ShapeRef.new(shape: SessionState, location_name: "sessionState"))
    InvokeAgentRequest.struct_class = Types::InvokeAgentRequest

    InvokeAgentResponse.add_member(:completion, Shapes::ShapeRef.new(shape: ResponseStream, required: true, eventstream: true, location_name: "completion"))
    InvokeAgentResponse.add_member(:content_type, Shapes::ShapeRef.new(shape: MimeType, required: true, location: "header", location_name: "x-amzn-bedrock-agent-content-type"))
    InvokeAgentResponse.add_member(:session_id, Shapes::ShapeRef.new(shape: SessionId, required: true, location: "header", location_name: "x-amz-bedrock-agent-session-id"))
    InvokeAgentResponse.struct_class = Types::InvokeAgentResponse
    InvokeAgentResponse[:payload] = :completion
    InvokeAgentResponse[:payload_member] = InvokeAgentResponse.member(:completion)

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
    KnowledgeBaseRetrieveAndGenerateConfiguration.add_member(:retrieval_configuration, Shapes::ShapeRef.new(shape: KnowledgeBaseRetrievalConfiguration, location_name: "retrievalConfiguration"))
    KnowledgeBaseRetrieveAndGenerateConfiguration.struct_class = Types::KnowledgeBaseRetrieveAndGenerateConfiguration

    KnowledgeBaseVectorSearchConfiguration.add_member(:filter, Shapes::ShapeRef.new(shape: RetrievalFilter, location_name: "filter"))
    KnowledgeBaseVectorSearchConfiguration.add_member(:number_of_results, Shapes::ShapeRef.new(shape: KnowledgeBaseVectorSearchConfigurationNumberOfResultsInteger, location_name: "numberOfResults", metadata: {"box"=>true}))
    KnowledgeBaseVectorSearchConfiguration.add_member(:override_search_type, Shapes::ShapeRef.new(shape: SearchType, location_name: "overrideSearchType"))
    KnowledgeBaseVectorSearchConfiguration.struct_class = Types::KnowledgeBaseVectorSearchConfiguration

    ModelInvocationInput.add_member(:inference_configuration, Shapes::ShapeRef.new(shape: InferenceConfiguration, location_name: "inferenceConfiguration"))
    ModelInvocationInput.add_member(:override_lambda, Shapes::ShapeRef.new(shape: LambdaArn, location_name: "overrideLambda"))
    ModelInvocationInput.add_member(:parser_mode, Shapes::ShapeRef.new(shape: CreationMode, location_name: "parserMode"))
    ModelInvocationInput.add_member(:prompt_creation_mode, Shapes::ShapeRef.new(shape: CreationMode, location_name: "promptCreationMode"))
    ModelInvocationInput.add_member(:text, Shapes::ShapeRef.new(shape: PromptText, location_name: "text"))
    ModelInvocationInput.add_member(:trace_id, Shapes::ShapeRef.new(shape: TraceId, location_name: "traceId"))
    ModelInvocationInput.add_member(:type, Shapes::ShapeRef.new(shape: PromptType, location_name: "type"))
    ModelInvocationInput.struct_class = Types::ModelInvocationInput

    Observation.add_member(:action_group_invocation_output, Shapes::ShapeRef.new(shape: ActionGroupInvocationOutput, location_name: "actionGroupInvocationOutput"))
    Observation.add_member(:final_response, Shapes::ShapeRef.new(shape: FinalResponse, location_name: "finalResponse"))
    Observation.add_member(:knowledge_base_lookup_output, Shapes::ShapeRef.new(shape: KnowledgeBaseLookupOutput, location_name: "knowledgeBaseLookupOutput"))
    Observation.add_member(:reprompt_response, Shapes::ShapeRef.new(shape: RepromptResponse, location_name: "repromptResponse"))
    Observation.add_member(:trace_id, Shapes::ShapeRef.new(shape: TraceId, location_name: "traceId"))
    Observation.add_member(:type, Shapes::ShapeRef.new(shape: Type, location_name: "type"))
    Observation.struct_class = Types::Observation

    OrchestrationTrace.add_member(:invocation_input, Shapes::ShapeRef.new(shape: InvocationInput, location_name: "invocationInput"))
    OrchestrationTrace.add_member(:model_invocation_input, Shapes::ShapeRef.new(shape: ModelInvocationInput, location_name: "modelInvocationInput"))
    OrchestrationTrace.add_member(:observation, Shapes::ShapeRef.new(shape: Observation, location_name: "observation"))
    OrchestrationTrace.add_member(:rationale, Shapes::ShapeRef.new(shape: Rationale, location_name: "rationale"))
    OrchestrationTrace.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    OrchestrationTrace.add_member_subclass(:invocation_input, Types::OrchestrationTrace::InvocationInput)
    OrchestrationTrace.add_member_subclass(:model_invocation_input, Types::OrchestrationTrace::ModelInvocationInput)
    OrchestrationTrace.add_member_subclass(:observation, Types::OrchestrationTrace::Observation)
    OrchestrationTrace.add_member_subclass(:rationale, Types::OrchestrationTrace::Rationale)
    OrchestrationTrace.add_member_subclass(:unknown, Types::OrchestrationTrace::Unknown)
    OrchestrationTrace.struct_class = Types::OrchestrationTrace

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

    Rationale.add_member(:text, Shapes::ShapeRef.new(shape: RationaleString, location_name: "text"))
    Rationale.add_member(:trace_id, Shapes::ShapeRef.new(shape: TraceId, location_name: "traceId"))
    Rationale.struct_class = Types::Rationale

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
    RetrievalFilter.add_member(:not_equals, Shapes::ShapeRef.new(shape: FilterAttribute, location_name: "notEquals"))
    RetrievalFilter.add_member(:not_in, Shapes::ShapeRef.new(shape: FilterAttribute, location_name: "notIn"))
    RetrievalFilter.add_member(:or_all, Shapes::ShapeRef.new(shape: RetrievalFilterList, location_name: "orAll"))
    RetrievalFilter.add_member(:starts_with, Shapes::ShapeRef.new(shape: FilterAttribute, location_name: "startsWith"))
    RetrievalFilter.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    RetrievalFilter.add_member_subclass(:and_all, Types::RetrievalFilter::AndAll)
    RetrievalFilter.add_member_subclass(:equals, Types::RetrievalFilter::Equals)
    RetrievalFilter.add_member_subclass(:greater_than, Types::RetrievalFilter::GreaterThan)
    RetrievalFilter.add_member_subclass(:greater_than_or_equals, Types::RetrievalFilter::GreaterThanOrEquals)
    RetrievalFilter.add_member_subclass(:in, Types::RetrievalFilter::In)
    RetrievalFilter.add_member_subclass(:less_than, Types::RetrievalFilter::LessThan)
    RetrievalFilter.add_member_subclass(:less_than_or_equals, Types::RetrievalFilter::LessThanOrEquals)
    RetrievalFilter.add_member_subclass(:not_equals, Types::RetrievalFilter::NotEquals)
    RetrievalFilter.add_member_subclass(:not_in, Types::RetrievalFilter::NotIn)
    RetrievalFilter.add_member_subclass(:or_all, Types::RetrievalFilter::OrAll)
    RetrievalFilter.add_member_subclass(:starts_with, Types::RetrievalFilter::StartsWith)
    RetrievalFilter.add_member_subclass(:unknown, Types::RetrievalFilter::Unknown)
    RetrievalFilter.struct_class = Types::RetrievalFilter

    RetrievalFilterList.member = Shapes::ShapeRef.new(shape: RetrievalFilter)

    RetrievalResultContent.add_member(:text, Shapes::ShapeRef.new(shape: String, required: true, location_name: "text"))
    RetrievalResultContent.struct_class = Types::RetrievalResultContent

    RetrievalResultLocation.add_member(:s3_location, Shapes::ShapeRef.new(shape: RetrievalResultS3Location, location_name: "s3Location"))
    RetrievalResultLocation.add_member(:type, Shapes::ShapeRef.new(shape: RetrievalResultLocationType, required: true, location_name: "type"))
    RetrievalResultLocation.struct_class = Types::RetrievalResultLocation

    RetrievalResultMetadata.key = Shapes::ShapeRef.new(shape: RetrievalResultMetadataKey)
    RetrievalResultMetadata.value = Shapes::ShapeRef.new(shape: RetrievalResultMetadataValue)

    RetrievalResultS3Location.add_member(:uri, Shapes::ShapeRef.new(shape: String, location_name: "uri"))
    RetrievalResultS3Location.struct_class = Types::RetrievalResultS3Location

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

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "message"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    SessionAttributesMap.key = Shapes::ShapeRef.new(shape: String)
    SessionAttributesMap.value = Shapes::ShapeRef.new(shape: String)

    SessionState.add_member(:invocation_id, Shapes::ShapeRef.new(shape: String, location_name: "invocationId"))
    SessionState.add_member(:prompt_session_attributes, Shapes::ShapeRef.new(shape: PromptSessionAttributesMap, location_name: "promptSessionAttributes"))
    SessionState.add_member(:return_control_invocation_results, Shapes::ShapeRef.new(shape: ReturnControlInvocationResults, location_name: "returnControlInvocationResults"))
    SessionState.add_member(:session_attributes, Shapes::ShapeRef.new(shape: SessionAttributesMap, location_name: "sessionAttributes"))
    SessionState.struct_class = Types::SessionState

    Span.add_member(:end, Shapes::ShapeRef.new(shape: SpanEndInteger, location_name: "end"))
    Span.add_member(:start, Shapes::ShapeRef.new(shape: SpanStartInteger, location_name: "start"))
    Span.struct_class = Types::Span

    StopSequences.member = Shapes::ShapeRef.new(shape: String)

    TextResponsePart.add_member(:span, Shapes::ShapeRef.new(shape: Span, location_name: "span"))
    TextResponsePart.add_member(:text, Shapes::ShapeRef.new(shape: String, location_name: "text"))
    TextResponsePart.struct_class = Types::TextResponsePart

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    Trace.add_member(:failure_trace, Shapes::ShapeRef.new(shape: FailureTrace, location_name: "failureTrace"))
    Trace.add_member(:orchestration_trace, Shapes::ShapeRef.new(shape: OrchestrationTrace, location_name: "orchestrationTrace"))
    Trace.add_member(:post_processing_trace, Shapes::ShapeRef.new(shape: PostProcessingTrace, location_name: "postProcessingTrace"))
    Trace.add_member(:pre_processing_trace, Shapes::ShapeRef.new(shape: PreProcessingTrace, location_name: "preProcessingTrace"))
    Trace.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    Trace.add_member_subclass(:failure_trace, Types::Trace::FailureTrace)
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
