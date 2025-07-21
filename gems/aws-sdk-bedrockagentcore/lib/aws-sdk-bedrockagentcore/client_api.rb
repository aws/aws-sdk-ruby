# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::BedrockAgentCore
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AccessTokenType = Shapes::StringShape.new(name: 'AccessTokenType')
    ActorId = Shapes::StringShape.new(name: 'ActorId')
    ActorSummary = Shapes::StructureShape.new(name: 'ActorSummary')
    ActorSummaryList = Shapes::ListShape.new(name: 'ActorSummaryList')
    ApiKeyType = Shapes::StringShape.new(name: 'ApiKeyType')
    AutomationStream = Shapes::StructureShape.new(name: 'AutomationStream')
    AutomationStreamStatus = Shapes::StringShape.new(name: 'AutomationStreamStatus')
    AutomationStreamUpdate = Shapes::StructureShape.new(name: 'AutomationStreamUpdate')
    Blob = Shapes::BlobShape.new(name: 'Blob')
    Body = Shapes::BlobShape.new(name: 'Body')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    Branch = Shapes::StructureShape.new(name: 'Branch')
    BranchFilter = Shapes::StructureShape.new(name: 'BranchFilter')
    BranchName = Shapes::StringShape.new(name: 'BranchName')
    BrowserSessionId = Shapes::StringShape.new(name: 'BrowserSessionId')
    BrowserSessionStatus = Shapes::StringShape.new(name: 'BrowserSessionStatus')
    BrowserSessionStream = Shapes::StructureShape.new(name: 'BrowserSessionStream')
    BrowserSessionSummaries = Shapes::ListShape.new(name: 'BrowserSessionSummaries')
    BrowserSessionSummary = Shapes::StructureShape.new(name: 'BrowserSessionSummary')
    BrowserSessionTimeout = Shapes::IntegerShape.new(name: 'BrowserSessionTimeout')
    BrowserStreamEndpoint = Shapes::StringShape.new(name: 'BrowserStreamEndpoint')
    ClientToken = Shapes::StringShape.new(name: 'ClientToken')
    CodeInterpreterResult = Shapes::StructureShape.new(name: 'CodeInterpreterResult')
    CodeInterpreterSessionId = Shapes::StringShape.new(name: 'CodeInterpreterSessionId')
    CodeInterpreterSessionStatus = Shapes::StringShape.new(name: 'CodeInterpreterSessionStatus')
    CodeInterpreterSessionSummaries = Shapes::ListShape.new(name: 'CodeInterpreterSessionSummaries')
    CodeInterpreterSessionSummary = Shapes::StructureShape.new(name: 'CodeInterpreterSessionSummary')
    CodeInterpreterSessionTimeout = Shapes::IntegerShape.new(name: 'CodeInterpreterSessionTimeout')
    CodeInterpreterStreamOutput = Shapes::StructureShape.new(name: 'CodeInterpreterStreamOutput')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    Content = Shapes::UnionShape.new(name: 'Content')
    ContentBlock = Shapes::StructureShape.new(name: 'ContentBlock')
    ContentBlockList = Shapes::ListShape.new(name: 'ContentBlockList')
    ContentBlockType = Shapes::StringShape.new(name: 'ContentBlockType')
    ContentTextString = Shapes::StringShape.new(name: 'ContentTextString')
    Conversational = Shapes::StructureShape.new(name: 'Conversational')
    CreateEventInput = Shapes::StructureShape.new(name: 'CreateEventInput')
    CreateEventOutput = Shapes::StructureShape.new(name: 'CreateEventOutput')
    CredentialProviderName = Shapes::StringShape.new(name: 'CredentialProviderName')
    CustomRequestKeyType = Shapes::StringShape.new(name: 'CustomRequestKeyType')
    CustomRequestParametersType = Shapes::MapShape.new(name: 'CustomRequestParametersType')
    CustomRequestValueType = Shapes::StringShape.new(name: 'CustomRequestValueType')
    DateTimestamp = Shapes::TimestampShape.new(name: 'DateTimestamp', timestampFormat: "iso8601")
    DeleteEventInput = Shapes::StructureShape.new(name: 'DeleteEventInput')
    DeleteEventOutput = Shapes::StructureShape.new(name: 'DeleteEventOutput')
    DeleteMemoryRecordInput = Shapes::StructureShape.new(name: 'DeleteMemoryRecordInput')
    DeleteMemoryRecordOutput = Shapes::StructureShape.new(name: 'DeleteMemoryRecordOutput')
    Document = Shapes::DocumentShape.new(name: 'Document', document: true)
    Double = Shapes::FloatShape.new(name: 'Double')
    Event = Shapes::StructureShape.new(name: 'Event')
    EventId = Shapes::StringShape.new(name: 'EventId')
    EventList = Shapes::ListShape.new(name: 'EventList')
    FilterInput = Shapes::StructureShape.new(name: 'FilterInput')
    GetBrowserSessionRequest = Shapes::StructureShape.new(name: 'GetBrowserSessionRequest')
    GetBrowserSessionResponse = Shapes::StructureShape.new(name: 'GetBrowserSessionResponse')
    GetCodeInterpreterSessionRequest = Shapes::StructureShape.new(name: 'GetCodeInterpreterSessionRequest')
    GetCodeInterpreterSessionResponse = Shapes::StructureShape.new(name: 'GetCodeInterpreterSessionResponse')
    GetEventInput = Shapes::StructureShape.new(name: 'GetEventInput')
    GetEventOutput = Shapes::StructureShape.new(name: 'GetEventOutput')
    GetMemoryRecordInput = Shapes::StructureShape.new(name: 'GetMemoryRecordInput')
    GetMemoryRecordOutput = Shapes::StructureShape.new(name: 'GetMemoryRecordOutput')
    GetResourceApiKeyRequest = Shapes::StructureShape.new(name: 'GetResourceApiKeyRequest')
    GetResourceApiKeyResponse = Shapes::StructureShape.new(name: 'GetResourceApiKeyResponse')
    GetResourceOauth2TokenRequest = Shapes::StructureShape.new(name: 'GetResourceOauth2TokenRequest')
    GetResourceOauth2TokenResponse = Shapes::StructureShape.new(name: 'GetResourceOauth2TokenResponse')
    GetWorkloadAccessTokenForJWTRequest = Shapes::StructureShape.new(name: 'GetWorkloadAccessTokenForJWTRequest')
    GetWorkloadAccessTokenForJWTResponse = Shapes::StructureShape.new(name: 'GetWorkloadAccessTokenForJWTResponse')
    GetWorkloadAccessTokenForUserIdRequest = Shapes::StructureShape.new(name: 'GetWorkloadAccessTokenForUserIdRequest')
    GetWorkloadAccessTokenForUserIdResponse = Shapes::StructureShape.new(name: 'GetWorkloadAccessTokenForUserIdResponse')
    GetWorkloadAccessTokenRequest = Shapes::StructureShape.new(name: 'GetWorkloadAccessTokenRequest')
    GetWorkloadAccessTokenResponse = Shapes::StructureShape.new(name: 'GetWorkloadAccessTokenResponse')
    HttpResponseCode = Shapes::IntegerShape.new(name: 'HttpResponseCode')
    InputContentBlock = Shapes::StructureShape.new(name: 'InputContentBlock')
    InputContentBlockList = Shapes::ListShape.new(name: 'InputContentBlockList')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    InvalidInputException = Shapes::StructureShape.new(name: 'InvalidInputException')
    InvokeAgentRuntimeRequest = Shapes::StructureShape.new(name: 'InvokeAgentRuntimeRequest')
    InvokeAgentRuntimeRequestBaggageString = Shapes::StringShape.new(name: 'InvokeAgentRuntimeRequestBaggageString')
    InvokeAgentRuntimeRequestTraceIdString = Shapes::StringShape.new(name: 'InvokeAgentRuntimeRequestTraceIdString')
    InvokeAgentRuntimeRequestTraceParentString = Shapes::StringShape.new(name: 'InvokeAgentRuntimeRequestTraceParentString')
    InvokeAgentRuntimeRequestTraceStateString = Shapes::StringShape.new(name: 'InvokeAgentRuntimeRequestTraceStateString')
    InvokeAgentRuntimeResponse = Shapes::StructureShape.new(name: 'InvokeAgentRuntimeResponse')
    InvokeCodeInterpreterRequest = Shapes::StructureShape.new(name: 'InvokeCodeInterpreterRequest')
    InvokeCodeInterpreterResponse = Shapes::StructureShape.new(name: 'InvokeCodeInterpreterResponse')
    ListActorsInput = Shapes::StructureShape.new(name: 'ListActorsInput')
    ListActorsOutput = Shapes::StructureShape.new(name: 'ListActorsOutput')
    ListBrowserSessionsRequest = Shapes::StructureShape.new(name: 'ListBrowserSessionsRequest')
    ListBrowserSessionsResponse = Shapes::StructureShape.new(name: 'ListBrowserSessionsResponse')
    ListCodeInterpreterSessionsRequest = Shapes::StructureShape.new(name: 'ListCodeInterpreterSessionsRequest')
    ListCodeInterpreterSessionsResponse = Shapes::StructureShape.new(name: 'ListCodeInterpreterSessionsResponse')
    ListEventsInput = Shapes::StructureShape.new(name: 'ListEventsInput')
    ListEventsOutput = Shapes::StructureShape.new(name: 'ListEventsOutput')
    ListMemoryRecordsInput = Shapes::StructureShape.new(name: 'ListMemoryRecordsInput')
    ListMemoryRecordsOutput = Shapes::StructureShape.new(name: 'ListMemoryRecordsOutput')
    ListSessionsInput = Shapes::StructureShape.new(name: 'ListSessionsInput')
    ListSessionsOutput = Shapes::StructureShape.new(name: 'ListSessionsOutput')
    LiveViewStream = Shapes::StructureShape.new(name: 'LiveViewStream')
    Long = Shapes::IntegerShape.new(name: 'Long')
    MaxLenString = Shapes::StringShape.new(name: 'MaxLenString')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    MemoryContent = Shapes::UnionShape.new(name: 'MemoryContent')
    MemoryId = Shapes::StringShape.new(name: 'MemoryId')
    MemoryRecord = Shapes::StructureShape.new(name: 'MemoryRecord')
    MemoryRecordId = Shapes::StringShape.new(name: 'MemoryRecordId')
    MemoryRecordSummary = Shapes::StructureShape.new(name: 'MemoryRecordSummary')
    MemoryRecordSummaryList = Shapes::ListShape.new(name: 'MemoryRecordSummaryList')
    MemoryStrategyId = Shapes::StringShape.new(name: 'MemoryStrategyId')
    MimeType = Shapes::StringShape.new(name: 'MimeType')
    Name = Shapes::StringShape.new(name: 'Name')
    Namespace = Shapes::StringShape.new(name: 'Namespace')
    NamespacesList = Shapes::ListShape.new(name: 'NamespacesList')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    NonBlankString = Shapes::StringShape.new(name: 'NonBlankString')
    Oauth2FlowType = Shapes::StringShape.new(name: 'Oauth2FlowType')
    PaginationToken = Shapes::StringShape.new(name: 'PaginationToken')
    PayloadType = Shapes::UnionShape.new(name: 'PayloadType')
    PayloadTypeList = Shapes::ListShape.new(name: 'PayloadTypeList')
    ProgrammingLanguage = Shapes::StringShape.new(name: 'ProgrammingLanguage')
    ResourceContent = Shapes::StructureShape.new(name: 'ResourceContent')
    ResourceContentType = Shapes::StringShape.new(name: 'ResourceContentType')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResourceOauth2ReturnUrlType = Shapes::StringShape.new(name: 'ResourceOauth2ReturnUrlType')
    ResponseStream = Shapes::BlobShape.new(name: 'ResponseStream', streaming: true)
    RetrieveMemoryRecordsInput = Shapes::StructureShape.new(name: 'RetrieveMemoryRecordsInput')
    RetrieveMemoryRecordsOutput = Shapes::StructureShape.new(name: 'RetrieveMemoryRecordsOutput')
    Role = Shapes::StringShape.new(name: 'Role')
    RuntimeClientError = Shapes::StructureShape.new(name: 'RuntimeClientError')
    ScopeType = Shapes::StringShape.new(name: 'ScopeType')
    ScopesListType = Shapes::ListShape.new(name: 'ScopesListType')
    SearchCriteria = Shapes::StructureShape.new(name: 'SearchCriteria')
    SearchCriteriaSearchQueryString = Shapes::StringShape.new(name: 'SearchCriteriaSearchQueryString')
    SearchCriteriaTopKInteger = Shapes::IntegerShape.new(name: 'SearchCriteriaTopKInteger')
    SensitiveString = Shapes::StringShape.new(name: 'SensitiveString')
    ServiceException = Shapes::StructureShape.new(name: 'ServiceException')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    SessionId = Shapes::StringShape.new(name: 'SessionId')
    SessionSummary = Shapes::StructureShape.new(name: 'SessionSummary')
    SessionSummaryList = Shapes::ListShape.new(name: 'SessionSummaryList')
    SessionType = Shapes::StringShape.new(name: 'SessionType')
    StartBrowserSessionRequest = Shapes::StructureShape.new(name: 'StartBrowserSessionRequest')
    StartBrowserSessionResponse = Shapes::StructureShape.new(name: 'StartBrowserSessionResponse')
    StartCodeInterpreterSessionRequest = Shapes::StructureShape.new(name: 'StartCodeInterpreterSessionRequest')
    StartCodeInterpreterSessionResponse = Shapes::StructureShape.new(name: 'StartCodeInterpreterSessionResponse')
    StopBrowserSessionRequest = Shapes::StructureShape.new(name: 'StopBrowserSessionRequest')
    StopBrowserSessionResponse = Shapes::StructureShape.new(name: 'StopBrowserSessionResponse')
    StopCodeInterpreterSessionRequest = Shapes::StructureShape.new(name: 'StopCodeInterpreterSessionRequest')
    StopCodeInterpreterSessionResponse = Shapes::StructureShape.new(name: 'StopCodeInterpreterSessionResponse')
    StreamUpdate = Shapes::UnionShape.new(name: 'StreamUpdate')
    String = Shapes::StringShape.new(name: 'String')
    StringList = Shapes::ListShape.new(name: 'StringList')
    StringType = Shapes::StringShape.new(name: 'StringType')
    TaskStatus = Shapes::StringShape.new(name: 'TaskStatus')
    ThrottledException = Shapes::StructureShape.new(name: 'ThrottledException')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    ToolArguments = Shapes::StructureShape.new(name: 'ToolArguments')
    ToolName = Shapes::StringShape.new(name: 'ToolName')
    ToolResultStructuredContent = Shapes::StructureShape.new(name: 'ToolResultStructuredContent')
    UnauthorizedException = Shapes::StructureShape.new(name: 'UnauthorizedException')
    UpdateBrowserStreamRequest = Shapes::StructureShape.new(name: 'UpdateBrowserStreamRequest')
    UpdateBrowserStreamResponse = Shapes::StructureShape.new(name: 'UpdateBrowserStreamResponse')
    UserIdType = Shapes::StringShape.new(name: 'UserIdType')
    UserTokenType = Shapes::StringShape.new(name: 'UserTokenType')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    ValidationExceptionField = Shapes::StructureShape.new(name: 'ValidationExceptionField')
    ValidationExceptionFieldList = Shapes::ListShape.new(name: 'ValidationExceptionFieldList')
    ValidationExceptionReason = Shapes::StringShape.new(name: 'ValidationExceptionReason')
    ViewPort = Shapes::StructureShape.new(name: 'ViewPort')
    ViewPortHeight = Shapes::IntegerShape.new(name: 'ViewPortHeight')
    ViewPortWidth = Shapes::IntegerShape.new(name: 'ViewPortWidth')
    WorkloadIdentityNameType = Shapes::StringShape.new(name: 'WorkloadIdentityNameType')
    WorkloadIdentityTokenType = Shapes::StringShape.new(name: 'WorkloadIdentityTokenType')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    ActorSummary.add_member(:actor_id, Shapes::ShapeRef.new(shape: ActorId, required: true, location_name: "actorId"))
    ActorSummary.struct_class = Types::ActorSummary

    ActorSummaryList.member = Shapes::ShapeRef.new(shape: ActorSummary)

    AutomationStream.add_member(:stream_endpoint, Shapes::ShapeRef.new(shape: BrowserStreamEndpoint, required: true, location_name: "streamEndpoint"))
    AutomationStream.add_member(:stream_status, Shapes::ShapeRef.new(shape: AutomationStreamStatus, required: true, location_name: "streamStatus"))
    AutomationStream.struct_class = Types::AutomationStream

    AutomationStreamUpdate.add_member(:stream_status, Shapes::ShapeRef.new(shape: AutomationStreamStatus, location_name: "streamStatus"))
    AutomationStreamUpdate.struct_class = Types::AutomationStreamUpdate

    Branch.add_member(:root_event_id, Shapes::ShapeRef.new(shape: EventId, location_name: "rootEventId"))
    Branch.add_member(:name, Shapes::ShapeRef.new(shape: BranchName, required: true, location_name: "name"))
    Branch.struct_class = Types::Branch

    BranchFilter.add_member(:name, Shapes::ShapeRef.new(shape: BranchName, required: true, location_name: "name"))
    BranchFilter.add_member(:include_parent_branches, Shapes::ShapeRef.new(shape: Boolean, location_name: "includeParentBranches"))
    BranchFilter.struct_class = Types::BranchFilter

    BrowserSessionStream.add_member(:automation_stream, Shapes::ShapeRef.new(shape: AutomationStream, required: true, location_name: "automationStream"))
    BrowserSessionStream.add_member(:live_view_stream, Shapes::ShapeRef.new(shape: LiveViewStream, location_name: "liveViewStream"))
    BrowserSessionStream.struct_class = Types::BrowserSessionStream

    BrowserSessionSummaries.member = Shapes::ShapeRef.new(shape: BrowserSessionSummary)

    BrowserSessionSummary.add_member(:browser_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "browserIdentifier"))
    BrowserSessionSummary.add_member(:session_id, Shapes::ShapeRef.new(shape: BrowserSessionId, required: true, location_name: "sessionId"))
    BrowserSessionSummary.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "name"))
    BrowserSessionSummary.add_member(:status, Shapes::ShapeRef.new(shape: BrowserSessionStatus, required: true, location_name: "status"))
    BrowserSessionSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "createdAt"))
    BrowserSessionSummary.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, location_name: "lastUpdatedAt"))
    BrowserSessionSummary.struct_class = Types::BrowserSessionSummary

    CodeInterpreterResult.add_member(:content, Shapes::ShapeRef.new(shape: ContentBlockList, required: true, location_name: "content"))
    CodeInterpreterResult.add_member(:structured_content, Shapes::ShapeRef.new(shape: ToolResultStructuredContent, location_name: "structuredContent"))
    CodeInterpreterResult.add_member(:is_error, Shapes::ShapeRef.new(shape: Boolean, location_name: "isError"))
    CodeInterpreterResult.struct_class = Types::CodeInterpreterResult

    CodeInterpreterSessionSummaries.member = Shapes::ShapeRef.new(shape: CodeInterpreterSessionSummary)

    CodeInterpreterSessionSummary.add_member(:code_interpreter_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "codeInterpreterIdentifier"))
    CodeInterpreterSessionSummary.add_member(:session_id, Shapes::ShapeRef.new(shape: CodeInterpreterSessionId, required: true, location_name: "sessionId"))
    CodeInterpreterSessionSummary.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "name"))
    CodeInterpreterSessionSummary.add_member(:status, Shapes::ShapeRef.new(shape: CodeInterpreterSessionStatus, required: true, location_name: "status"))
    CodeInterpreterSessionSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "createdAt"))
    CodeInterpreterSessionSummary.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, location_name: "lastUpdatedAt"))
    CodeInterpreterSessionSummary.struct_class = Types::CodeInterpreterSessionSummary

    CodeInterpreterStreamOutput.add_member(:result, Shapes::ShapeRef.new(shape: CodeInterpreterResult, event: true, location_name: "result"))
    CodeInterpreterStreamOutput.add_member(:access_denied_exception, Shapes::ShapeRef.new(shape: AccessDeniedException, location_name: "accessDeniedException"))
    CodeInterpreterStreamOutput.add_member(:conflict_exception, Shapes::ShapeRef.new(shape: ConflictException, location_name: "conflictException"))
    CodeInterpreterStreamOutput.add_member(:internal_server_exception, Shapes::ShapeRef.new(shape: InternalServerException, location_name: "internalServerException"))
    CodeInterpreterStreamOutput.add_member(:resource_not_found_exception, Shapes::ShapeRef.new(shape: ResourceNotFoundException, location_name: "resourceNotFoundException"))
    CodeInterpreterStreamOutput.add_member(:service_quota_exceeded_exception, Shapes::ShapeRef.new(shape: ServiceQuotaExceededException, location_name: "serviceQuotaExceededException"))
    CodeInterpreterStreamOutput.add_member(:throttling_exception, Shapes::ShapeRef.new(shape: ThrottlingException, location_name: "throttlingException"))
    CodeInterpreterStreamOutput.add_member(:validation_exception, Shapes::ShapeRef.new(shape: ValidationException, location_name: "validationException"))
    CodeInterpreterStreamOutput.struct_class = Types::CodeInterpreterStreamOutput

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "message"))
    ConflictException.struct_class = Types::ConflictException

    Content.add_member(:text, Shapes::ShapeRef.new(shape: ContentTextString, location_name: "text"))
    Content.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    Content.add_member_subclass(:text, Types::Content::Text)
    Content.add_member_subclass(:unknown, Types::Content::Unknown)
    Content.struct_class = Types::Content

    ContentBlock.add_member(:type, Shapes::ShapeRef.new(shape: ContentBlockType, required: true, location_name: "type"))
    ContentBlock.add_member(:text, Shapes::ShapeRef.new(shape: String, location_name: "text"))
    ContentBlock.add_member(:data, Shapes::ShapeRef.new(shape: Blob, location_name: "data"))
    ContentBlock.add_member(:mime_type, Shapes::ShapeRef.new(shape: String, location_name: "mimeType"))
    ContentBlock.add_member(:uri, Shapes::ShapeRef.new(shape: String, location_name: "uri"))
    ContentBlock.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "name"))
    ContentBlock.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "description"))
    ContentBlock.add_member(:size, Shapes::ShapeRef.new(shape: Long, location_name: "size"))
    ContentBlock.add_member(:resource, Shapes::ShapeRef.new(shape: ResourceContent, location_name: "resource"))
    ContentBlock.struct_class = Types::ContentBlock

    ContentBlockList.member = Shapes::ShapeRef.new(shape: ContentBlock)

    Conversational.add_member(:content, Shapes::ShapeRef.new(shape: Content, required: true, location_name: "content"))
    Conversational.add_member(:role, Shapes::ShapeRef.new(shape: Role, required: true, location_name: "role"))
    Conversational.struct_class = Types::Conversational

    CreateEventInput.add_member(:memory_id, Shapes::ShapeRef.new(shape: MemoryId, required: true, location: "uri", location_name: "memoryId"))
    CreateEventInput.add_member(:actor_id, Shapes::ShapeRef.new(shape: ActorId, required: true, location_name: "actorId"))
    CreateEventInput.add_member(:session_id, Shapes::ShapeRef.new(shape: SessionId, location_name: "sessionId"))
    CreateEventInput.add_member(:event_timestamp, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "eventTimestamp"))
    CreateEventInput.add_member(:payload, Shapes::ShapeRef.new(shape: PayloadTypeList, required: true, location_name: "payload"))
    CreateEventInput.add_member(:branch, Shapes::ShapeRef.new(shape: Branch, location_name: "branch"))
    CreateEventInput.add_member(:client_token, Shapes::ShapeRef.new(shape: String, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateEventInput.struct_class = Types::CreateEventInput

    CreateEventOutput.add_member(:event, Shapes::ShapeRef.new(shape: Event, required: true, location_name: "event"))
    CreateEventOutput.struct_class = Types::CreateEventOutput

    CustomRequestParametersType.key = Shapes::ShapeRef.new(shape: CustomRequestKeyType)
    CustomRequestParametersType.value = Shapes::ShapeRef.new(shape: CustomRequestValueType)

    DeleteEventInput.add_member(:memory_id, Shapes::ShapeRef.new(shape: MemoryId, required: true, location: "uri", location_name: "memoryId"))
    DeleteEventInput.add_member(:session_id, Shapes::ShapeRef.new(shape: SessionId, required: true, location: "uri", location_name: "sessionId"))
    DeleteEventInput.add_member(:event_id, Shapes::ShapeRef.new(shape: EventId, required: true, location: "uri", location_name: "eventId"))
    DeleteEventInput.add_member(:actor_id, Shapes::ShapeRef.new(shape: ActorId, required: true, location: "uri", location_name: "actorId"))
    DeleteEventInput.struct_class = Types::DeleteEventInput

    DeleteEventOutput.add_member(:event_id, Shapes::ShapeRef.new(shape: EventId, required: true, location_name: "eventId"))
    DeleteEventOutput.struct_class = Types::DeleteEventOutput

    DeleteMemoryRecordInput.add_member(:memory_id, Shapes::ShapeRef.new(shape: MemoryId, required: true, location: "uri", location_name: "memoryId"))
    DeleteMemoryRecordInput.add_member(:memory_record_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "memoryRecordId"))
    DeleteMemoryRecordInput.struct_class = Types::DeleteMemoryRecordInput

    DeleteMemoryRecordOutput.add_member(:memory_record_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "memoryRecordId"))
    DeleteMemoryRecordOutput.struct_class = Types::DeleteMemoryRecordOutput

    Event.add_member(:memory_id, Shapes::ShapeRef.new(shape: MemoryId, required: true, location_name: "memoryId"))
    Event.add_member(:actor_id, Shapes::ShapeRef.new(shape: ActorId, required: true, location_name: "actorId"))
    Event.add_member(:session_id, Shapes::ShapeRef.new(shape: SessionId, required: true, location_name: "sessionId"))
    Event.add_member(:event_id, Shapes::ShapeRef.new(shape: EventId, required: true, location_name: "eventId"))
    Event.add_member(:event_timestamp, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "eventTimestamp"))
    Event.add_member(:payload, Shapes::ShapeRef.new(shape: PayloadTypeList, required: true, location_name: "payload"))
    Event.add_member(:branch, Shapes::ShapeRef.new(shape: Branch, location_name: "branch"))
    Event.struct_class = Types::Event

    EventList.member = Shapes::ShapeRef.new(shape: Event)

    FilterInput.add_member(:branch, Shapes::ShapeRef.new(shape: BranchFilter, location_name: "branch"))
    FilterInput.struct_class = Types::FilterInput

    GetBrowserSessionRequest.add_member(:browser_identifier, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "browserIdentifier"))
    GetBrowserSessionRequest.add_member(:session_id, Shapes::ShapeRef.new(shape: BrowserSessionId, required: true, location: "querystring", location_name: "sessionId"))
    GetBrowserSessionRequest.struct_class = Types::GetBrowserSessionRequest

    GetBrowserSessionResponse.add_member(:browser_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "browserIdentifier"))
    GetBrowserSessionResponse.add_member(:session_id, Shapes::ShapeRef.new(shape: BrowserSessionId, required: true, location_name: "sessionId"))
    GetBrowserSessionResponse.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "name"))
    GetBrowserSessionResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "createdAt"))
    GetBrowserSessionResponse.add_member(:view_port, Shapes::ShapeRef.new(shape: ViewPort, location_name: "viewPort"))
    GetBrowserSessionResponse.add_member(:session_timeout_seconds, Shapes::ShapeRef.new(shape: BrowserSessionTimeout, location_name: "sessionTimeoutSeconds"))
    GetBrowserSessionResponse.add_member(:status, Shapes::ShapeRef.new(shape: BrowserSessionStatus, location_name: "status"))
    GetBrowserSessionResponse.add_member(:streams, Shapes::ShapeRef.new(shape: BrowserSessionStream, location_name: "streams"))
    GetBrowserSessionResponse.add_member(:session_replay_artifact, Shapes::ShapeRef.new(shape: String, location_name: "sessionReplayArtifact"))
    GetBrowserSessionResponse.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, location_name: "lastUpdatedAt"))
    GetBrowserSessionResponse.struct_class = Types::GetBrowserSessionResponse

    GetCodeInterpreterSessionRequest.add_member(:code_interpreter_identifier, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "codeInterpreterIdentifier"))
    GetCodeInterpreterSessionRequest.add_member(:session_id, Shapes::ShapeRef.new(shape: CodeInterpreterSessionId, required: true, location: "querystring", location_name: "sessionId"))
    GetCodeInterpreterSessionRequest.struct_class = Types::GetCodeInterpreterSessionRequest

    GetCodeInterpreterSessionResponse.add_member(:code_interpreter_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "codeInterpreterIdentifier"))
    GetCodeInterpreterSessionResponse.add_member(:session_id, Shapes::ShapeRef.new(shape: CodeInterpreterSessionId, required: true, location_name: "sessionId"))
    GetCodeInterpreterSessionResponse.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "name"))
    GetCodeInterpreterSessionResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "createdAt"))
    GetCodeInterpreterSessionResponse.add_member(:session_timeout_seconds, Shapes::ShapeRef.new(shape: CodeInterpreterSessionTimeout, location_name: "sessionTimeoutSeconds"))
    GetCodeInterpreterSessionResponse.add_member(:status, Shapes::ShapeRef.new(shape: CodeInterpreterSessionStatus, location_name: "status"))
    GetCodeInterpreterSessionResponse.struct_class = Types::GetCodeInterpreterSessionResponse

    GetEventInput.add_member(:memory_id, Shapes::ShapeRef.new(shape: MemoryId, required: true, location: "uri", location_name: "memoryId"))
    GetEventInput.add_member(:session_id, Shapes::ShapeRef.new(shape: SessionId, required: true, location: "uri", location_name: "sessionId"))
    GetEventInput.add_member(:actor_id, Shapes::ShapeRef.new(shape: ActorId, required: true, location: "uri", location_name: "actorId"))
    GetEventInput.add_member(:event_id, Shapes::ShapeRef.new(shape: EventId, required: true, location: "uri", location_name: "eventId"))
    GetEventInput.struct_class = Types::GetEventInput

    GetEventOutput.add_member(:event, Shapes::ShapeRef.new(shape: Event, required: true, location_name: "event"))
    GetEventOutput.struct_class = Types::GetEventOutput

    GetMemoryRecordInput.add_member(:memory_id, Shapes::ShapeRef.new(shape: MemoryId, required: true, location: "uri", location_name: "memoryId"))
    GetMemoryRecordInput.add_member(:memory_record_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "memoryRecordId"))
    GetMemoryRecordInput.struct_class = Types::GetMemoryRecordInput

    GetMemoryRecordOutput.add_member(:memory_record, Shapes::ShapeRef.new(shape: MemoryRecord, required: true, location_name: "memoryRecord"))
    GetMemoryRecordOutput.struct_class = Types::GetMemoryRecordOutput

    GetResourceApiKeyRequest.add_member(:workload_identity_token, Shapes::ShapeRef.new(shape: WorkloadIdentityTokenType, required: true, location_name: "workloadIdentityToken"))
    GetResourceApiKeyRequest.add_member(:resource_credential_provider_name, Shapes::ShapeRef.new(shape: CredentialProviderName, required: true, location_name: "resourceCredentialProviderName"))
    GetResourceApiKeyRequest.struct_class = Types::GetResourceApiKeyRequest

    GetResourceApiKeyResponse.add_member(:api_key, Shapes::ShapeRef.new(shape: ApiKeyType, required: true, location_name: "apiKey"))
    GetResourceApiKeyResponse.struct_class = Types::GetResourceApiKeyResponse

    GetResourceOauth2TokenRequest.add_member(:workload_identity_token, Shapes::ShapeRef.new(shape: WorkloadIdentityTokenType, required: true, location_name: "workloadIdentityToken"))
    GetResourceOauth2TokenRequest.add_member(:user_id, Shapes::ShapeRef.new(shape: UserIdType, location_name: "userId"))
    GetResourceOauth2TokenRequest.add_member(:resource_credential_provider_name, Shapes::ShapeRef.new(shape: CredentialProviderName, required: true, location_name: "resourceCredentialProviderName"))
    GetResourceOauth2TokenRequest.add_member(:scopes, Shapes::ShapeRef.new(shape: ScopesListType, required: true, location_name: "scopes"))
    GetResourceOauth2TokenRequest.add_member(:oauth2_flow, Shapes::ShapeRef.new(shape: Oauth2FlowType, required: true, location_name: "oauth2Flow"))
    GetResourceOauth2TokenRequest.add_member(:resource_oauth_2_return_url, Shapes::ShapeRef.new(shape: ResourceOauth2ReturnUrlType, location_name: "resourceOauth2ReturnUrl"))
    GetResourceOauth2TokenRequest.add_member(:force_authentication, Shapes::ShapeRef.new(shape: Boolean, location_name: "forceAuthentication"))
    GetResourceOauth2TokenRequest.add_member(:custom_parameters, Shapes::ShapeRef.new(shape: CustomRequestParametersType, location_name: "customParameters"))
    GetResourceOauth2TokenRequest.struct_class = Types::GetResourceOauth2TokenRequest

    GetResourceOauth2TokenResponse.add_member(:authorization_url, Shapes::ShapeRef.new(shape: String, location_name: "authorizationUrl"))
    GetResourceOauth2TokenResponse.add_member(:access_token, Shapes::ShapeRef.new(shape: AccessTokenType, location_name: "accessToken"))
    GetResourceOauth2TokenResponse.struct_class = Types::GetResourceOauth2TokenResponse

    GetWorkloadAccessTokenForJWTRequest.add_member(:workload_name, Shapes::ShapeRef.new(shape: WorkloadIdentityNameType, required: true, location_name: "workloadName"))
    GetWorkloadAccessTokenForJWTRequest.add_member(:user_token, Shapes::ShapeRef.new(shape: UserTokenType, required: true, location_name: "userToken"))
    GetWorkloadAccessTokenForJWTRequest.struct_class = Types::GetWorkloadAccessTokenForJWTRequest

    GetWorkloadAccessTokenForJWTResponse.add_member(:workload_access_token, Shapes::ShapeRef.new(shape: WorkloadIdentityTokenType, required: true, location_name: "workloadAccessToken"))
    GetWorkloadAccessTokenForJWTResponse.struct_class = Types::GetWorkloadAccessTokenForJWTResponse

    GetWorkloadAccessTokenForUserIdRequest.add_member(:workload_name, Shapes::ShapeRef.new(shape: WorkloadIdentityNameType, required: true, location_name: "workloadName"))
    GetWorkloadAccessTokenForUserIdRequest.add_member(:user_id, Shapes::ShapeRef.new(shape: UserIdType, required: true, location_name: "userId"))
    GetWorkloadAccessTokenForUserIdRequest.struct_class = Types::GetWorkloadAccessTokenForUserIdRequest

    GetWorkloadAccessTokenForUserIdResponse.add_member(:workload_access_token, Shapes::ShapeRef.new(shape: WorkloadIdentityTokenType, required: true, location_name: "workloadAccessToken"))
    GetWorkloadAccessTokenForUserIdResponse.struct_class = Types::GetWorkloadAccessTokenForUserIdResponse

    GetWorkloadAccessTokenRequest.add_member(:workload_name, Shapes::ShapeRef.new(shape: WorkloadIdentityNameType, required: true, location_name: "workloadName"))
    GetWorkloadAccessTokenRequest.struct_class = Types::GetWorkloadAccessTokenRequest

    GetWorkloadAccessTokenResponse.add_member(:workload_access_token, Shapes::ShapeRef.new(shape: WorkloadIdentityTokenType, required: true, location_name: "workloadAccessToken"))
    GetWorkloadAccessTokenResponse.struct_class = Types::GetWorkloadAccessTokenResponse

    InputContentBlock.add_member(:path, Shapes::ShapeRef.new(shape: MaxLenString, required: true, location_name: "path"))
    InputContentBlock.add_member(:text, Shapes::ShapeRef.new(shape: MaxLenString, location_name: "text"))
    InputContentBlock.add_member(:blob, Shapes::ShapeRef.new(shape: Body, location_name: "blob"))
    InputContentBlock.struct_class = Types::InputContentBlock

    InputContentBlockList.member = Shapes::ShapeRef.new(shape: InputContentBlock)

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "message"))
    InternalServerException.struct_class = Types::InternalServerException

    InvalidInputException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    InvalidInputException.struct_class = Types::InvalidInputException

    InvokeAgentRuntimeRequest.add_member(:content_type, Shapes::ShapeRef.new(shape: MimeType, location: "header", location_name: "Content-Type"))
    InvokeAgentRuntimeRequest.add_member(:accept, Shapes::ShapeRef.new(shape: MimeType, location: "header", location_name: "Accept"))
    InvokeAgentRuntimeRequest.add_member(:mcp_session_id, Shapes::ShapeRef.new(shape: StringType, location: "header", location_name: "Mcp-Session-Id"))
    InvokeAgentRuntimeRequest.add_member(:runtime_session_id, Shapes::ShapeRef.new(shape: SessionType, location: "header", location_name: "X-Amzn-Bedrock-AgentCore-Runtime-Session-Id", metadata: {"idempotencyToken" => true}))
    InvokeAgentRuntimeRequest.add_member(:mcp_protocol_version, Shapes::ShapeRef.new(shape: StringType, location: "header", location_name: "Mcp-Protocol-Version"))
    InvokeAgentRuntimeRequest.add_member(:runtime_user_id, Shapes::ShapeRef.new(shape: StringType, location: "header", location_name: "X-Amzn-Bedrock-AgentCore-Runtime-User-Id"))
    InvokeAgentRuntimeRequest.add_member(:trace_id, Shapes::ShapeRef.new(shape: InvokeAgentRuntimeRequestTraceIdString, location: "header", location_name: "X-Amzn-Trace-Id"))
    InvokeAgentRuntimeRequest.add_member(:trace_parent, Shapes::ShapeRef.new(shape: InvokeAgentRuntimeRequestTraceParentString, location: "header", location_name: "traceparent"))
    InvokeAgentRuntimeRequest.add_member(:trace_state, Shapes::ShapeRef.new(shape: InvokeAgentRuntimeRequestTraceStateString, location: "header", location_name: "tracestate"))
    InvokeAgentRuntimeRequest.add_member(:baggage, Shapes::ShapeRef.new(shape: InvokeAgentRuntimeRequestBaggageString, location: "header", location_name: "baggage"))
    InvokeAgentRuntimeRequest.add_member(:agent_runtime_arn, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "agentRuntimeArn"))
    InvokeAgentRuntimeRequest.add_member(:qualifier, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "qualifier"))
    InvokeAgentRuntimeRequest.add_member(:payload, Shapes::ShapeRef.new(shape: Body, required: true, location_name: "payload"))
    InvokeAgentRuntimeRequest.struct_class = Types::InvokeAgentRuntimeRequest
    InvokeAgentRuntimeRequest[:payload] = :payload
    InvokeAgentRuntimeRequest[:payload_member] = InvokeAgentRuntimeRequest.member(:payload)

    InvokeAgentRuntimeResponse.add_member(:runtime_session_id, Shapes::ShapeRef.new(shape: SessionId, location: "header", location_name: "X-Amzn-Bedrock-AgentCore-Runtime-Session-Id"))
    InvokeAgentRuntimeResponse.add_member(:mcp_session_id, Shapes::ShapeRef.new(shape: SessionId, location: "header", location_name: "Mcp-Session-Id"))
    InvokeAgentRuntimeResponse.add_member(:mcp_protocol_version, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "Mcp-Protocol-Version"))
    InvokeAgentRuntimeResponse.add_member(:trace_id, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "X-Amzn-Trace-Id"))
    InvokeAgentRuntimeResponse.add_member(:trace_parent, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "traceparent"))
    InvokeAgentRuntimeResponse.add_member(:trace_state, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "tracestate"))
    InvokeAgentRuntimeResponse.add_member(:baggage, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "baggage"))
    InvokeAgentRuntimeResponse.add_member(:content_type, Shapes::ShapeRef.new(shape: String, required: true, location: "header", location_name: "Content-Type"))
    InvokeAgentRuntimeResponse.add_member(:response, Shapes::ShapeRef.new(shape: ResponseStream, location_name: "response"))
    InvokeAgentRuntimeResponse.add_member(:status_code, Shapes::ShapeRef.new(shape: HttpResponseCode, location: "statusCode", location_name: "statusCode"))
    InvokeAgentRuntimeResponse.struct_class = Types::InvokeAgentRuntimeResponse
    InvokeAgentRuntimeResponse[:payload] = :response
    InvokeAgentRuntimeResponse[:payload_member] = InvokeAgentRuntimeResponse.member(:response)

    InvokeCodeInterpreterRequest.add_member(:code_interpreter_identifier, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "codeInterpreterIdentifier"))
    InvokeCodeInterpreterRequest.add_member(:session_id, Shapes::ShapeRef.new(shape: CodeInterpreterSessionId, location: "header", location_name: "x-amzn-code-interpreter-session-id"))
    InvokeCodeInterpreterRequest.add_member(:name, Shapes::ShapeRef.new(shape: ToolName, required: true, location_name: "name"))
    InvokeCodeInterpreterRequest.add_member(:arguments, Shapes::ShapeRef.new(shape: ToolArguments, location_name: "arguments"))
    InvokeCodeInterpreterRequest.struct_class = Types::InvokeCodeInterpreterRequest

    InvokeCodeInterpreterResponse.add_member(:session_id, Shapes::ShapeRef.new(shape: CodeInterpreterSessionId, location: "header", location_name: "x-amzn-code-interpreter-session-id"))
    InvokeCodeInterpreterResponse.add_member(:stream, Shapes::ShapeRef.new(shape: CodeInterpreterStreamOutput, required: true, eventstream: true, location_name: "stream"))
    InvokeCodeInterpreterResponse.struct_class = Types::InvokeCodeInterpreterResponse
    InvokeCodeInterpreterResponse[:payload] = :stream
    InvokeCodeInterpreterResponse[:payload_member] = InvokeCodeInterpreterResponse.member(:stream)

    ListActorsInput.add_member(:memory_id, Shapes::ShapeRef.new(shape: MemoryId, required: true, location: "uri", location_name: "memoryId"))
    ListActorsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListActorsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListActorsInput.struct_class = Types::ListActorsInput

    ListActorsOutput.add_member(:actor_summaries, Shapes::ShapeRef.new(shape: ActorSummaryList, required: true, location_name: "actorSummaries"))
    ListActorsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListActorsOutput.struct_class = Types::ListActorsOutput

    ListBrowserSessionsRequest.add_member(:browser_identifier, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "browserIdentifier"))
    ListBrowserSessionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListBrowserSessionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListBrowserSessionsRequest.add_member(:status, Shapes::ShapeRef.new(shape: BrowserSessionStatus, location_name: "status"))
    ListBrowserSessionsRequest.struct_class = Types::ListBrowserSessionsRequest

    ListBrowserSessionsResponse.add_member(:items, Shapes::ShapeRef.new(shape: BrowserSessionSummaries, required: true, location_name: "items"))
    ListBrowserSessionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListBrowserSessionsResponse.struct_class = Types::ListBrowserSessionsResponse

    ListCodeInterpreterSessionsRequest.add_member(:code_interpreter_identifier, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "codeInterpreterIdentifier"))
    ListCodeInterpreterSessionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListCodeInterpreterSessionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListCodeInterpreterSessionsRequest.add_member(:status, Shapes::ShapeRef.new(shape: CodeInterpreterSessionStatus, location_name: "status"))
    ListCodeInterpreterSessionsRequest.struct_class = Types::ListCodeInterpreterSessionsRequest

    ListCodeInterpreterSessionsResponse.add_member(:items, Shapes::ShapeRef.new(shape: CodeInterpreterSessionSummaries, required: true, location_name: "items"))
    ListCodeInterpreterSessionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListCodeInterpreterSessionsResponse.struct_class = Types::ListCodeInterpreterSessionsResponse

    ListEventsInput.add_member(:memory_id, Shapes::ShapeRef.new(shape: MemoryId, required: true, location: "uri", location_name: "memoryId"))
    ListEventsInput.add_member(:session_id, Shapes::ShapeRef.new(shape: SessionId, required: true, location: "uri", location_name: "sessionId"))
    ListEventsInput.add_member(:actor_id, Shapes::ShapeRef.new(shape: ActorId, required: true, location: "uri", location_name: "actorId"))
    ListEventsInput.add_member(:include_payloads, Shapes::ShapeRef.new(shape: Boolean, location_name: "includePayloads"))
    ListEventsInput.add_member(:filter, Shapes::ShapeRef.new(shape: FilterInput, location_name: "filter"))
    ListEventsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListEventsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListEventsInput.struct_class = Types::ListEventsInput

    ListEventsOutput.add_member(:events, Shapes::ShapeRef.new(shape: EventList, required: true, location_name: "events"))
    ListEventsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListEventsOutput.struct_class = Types::ListEventsOutput

    ListMemoryRecordsInput.add_member(:memory_id, Shapes::ShapeRef.new(shape: MemoryId, required: true, location: "uri", location_name: "memoryId"))
    ListMemoryRecordsInput.add_member(:namespace, Shapes::ShapeRef.new(shape: Namespace, required: true, location_name: "namespace"))
    ListMemoryRecordsInput.add_member(:memory_strategy_id, Shapes::ShapeRef.new(shape: MemoryStrategyId, location_name: "memoryStrategyId"))
    ListMemoryRecordsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListMemoryRecordsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListMemoryRecordsInput.struct_class = Types::ListMemoryRecordsInput

    ListMemoryRecordsOutput.add_member(:memory_record_summaries, Shapes::ShapeRef.new(shape: MemoryRecordSummaryList, required: true, location_name: "memoryRecordSummaries"))
    ListMemoryRecordsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListMemoryRecordsOutput.struct_class = Types::ListMemoryRecordsOutput

    ListSessionsInput.add_member(:memory_id, Shapes::ShapeRef.new(shape: MemoryId, required: true, location: "uri", location_name: "memoryId"))
    ListSessionsInput.add_member(:actor_id, Shapes::ShapeRef.new(shape: ActorId, required: true, location: "uri", location_name: "actorId"))
    ListSessionsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListSessionsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListSessionsInput.struct_class = Types::ListSessionsInput

    ListSessionsOutput.add_member(:session_summaries, Shapes::ShapeRef.new(shape: SessionSummaryList, required: true, location_name: "sessionSummaries"))
    ListSessionsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListSessionsOutput.struct_class = Types::ListSessionsOutput

    LiveViewStream.add_member(:stream_endpoint, Shapes::ShapeRef.new(shape: BrowserStreamEndpoint, location_name: "streamEndpoint"))
    LiveViewStream.struct_class = Types::LiveViewStream

    MemoryContent.add_member(:text, Shapes::ShapeRef.new(shape: SensitiveString, location_name: "text"))
    MemoryContent.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    MemoryContent.add_member_subclass(:text, Types::MemoryContent::Text)
    MemoryContent.add_member_subclass(:unknown, Types::MemoryContent::Unknown)
    MemoryContent.struct_class = Types::MemoryContent

    MemoryRecord.add_member(:memory_record_id, Shapes::ShapeRef.new(shape: MemoryRecordId, required: true, location_name: "memoryRecordId"))
    MemoryRecord.add_member(:content, Shapes::ShapeRef.new(shape: MemoryContent, required: true, location_name: "content"))
    MemoryRecord.add_member(:memory_strategy_id, Shapes::ShapeRef.new(shape: MemoryStrategyId, required: true, location_name: "memoryStrategyId"))
    MemoryRecord.add_member(:namespaces, Shapes::ShapeRef.new(shape: NamespacesList, required: true, location_name: "namespaces"))
    MemoryRecord.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    MemoryRecord.struct_class = Types::MemoryRecord

    MemoryRecordSummary.add_member(:memory_record_id, Shapes::ShapeRef.new(shape: MemoryRecordId, required: true, location_name: "memoryRecordId"))
    MemoryRecordSummary.add_member(:content, Shapes::ShapeRef.new(shape: MemoryContent, required: true, location_name: "content"))
    MemoryRecordSummary.add_member(:memory_strategy_id, Shapes::ShapeRef.new(shape: MemoryStrategyId, required: true, location_name: "memoryStrategyId"))
    MemoryRecordSummary.add_member(:namespaces, Shapes::ShapeRef.new(shape: NamespacesList, required: true, location_name: "namespaces"))
    MemoryRecordSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    MemoryRecordSummary.add_member(:score, Shapes::ShapeRef.new(shape: Double, location_name: "score"))
    MemoryRecordSummary.struct_class = Types::MemoryRecordSummary

    MemoryRecordSummaryList.member = Shapes::ShapeRef.new(shape: MemoryRecordSummary)

    NamespacesList.member = Shapes::ShapeRef.new(shape: Namespace)

    PayloadType.add_member(:conversational, Shapes::ShapeRef.new(shape: Conversational, location_name: "conversational"))
    PayloadType.add_member(:blob, Shapes::ShapeRef.new(shape: Document, location_name: "blob"))
    PayloadType.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    PayloadType.add_member_subclass(:conversational, Types::PayloadType::Conversational)
    PayloadType.add_member_subclass(:blob, Types::PayloadType::Blob)
    PayloadType.add_member_subclass(:unknown, Types::PayloadType::Unknown)
    PayloadType.struct_class = Types::PayloadType

    PayloadTypeList.member = Shapes::ShapeRef.new(shape: PayloadType)

    ResourceContent.add_member(:type, Shapes::ShapeRef.new(shape: ResourceContentType, required: true, location_name: "type"))
    ResourceContent.add_member(:uri, Shapes::ShapeRef.new(shape: String, location_name: "uri"))
    ResourceContent.add_member(:mime_type, Shapes::ShapeRef.new(shape: String, location_name: "mimeType"))
    ResourceContent.add_member(:text, Shapes::ShapeRef.new(shape: String, location_name: "text"))
    ResourceContent.add_member(:blob, Shapes::ShapeRef.new(shape: Blob, location_name: "blob"))
    ResourceContent.struct_class = Types::ResourceContent

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    RetrieveMemoryRecordsInput.add_member(:memory_id, Shapes::ShapeRef.new(shape: MemoryId, required: true, location: "uri", location_name: "memoryId"))
    RetrieveMemoryRecordsInput.add_member(:namespace, Shapes::ShapeRef.new(shape: Namespace, required: true, location_name: "namespace"))
    RetrieveMemoryRecordsInput.add_member(:search_criteria, Shapes::ShapeRef.new(shape: SearchCriteria, required: true, location_name: "searchCriteria"))
    RetrieveMemoryRecordsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    RetrieveMemoryRecordsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    RetrieveMemoryRecordsInput.struct_class = Types::RetrieveMemoryRecordsInput

    RetrieveMemoryRecordsOutput.add_member(:memory_record_summaries, Shapes::ShapeRef.new(shape: MemoryRecordSummaryList, required: true, location_name: "memoryRecordSummaries"))
    RetrieveMemoryRecordsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    RetrieveMemoryRecordsOutput.struct_class = Types::RetrieveMemoryRecordsOutput

    RuntimeClientError.add_member(:message, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "message"))
    RuntimeClientError.struct_class = Types::RuntimeClientError

    ScopesListType.member = Shapes::ShapeRef.new(shape: ScopeType)

    SearchCriteria.add_member(:search_query, Shapes::ShapeRef.new(shape: SearchCriteriaSearchQueryString, required: true, location_name: "searchQuery"))
    SearchCriteria.add_member(:memory_strategy_id, Shapes::ShapeRef.new(shape: MemoryStrategyId, location_name: "memoryStrategyId"))
    SearchCriteria.add_member(:top_k, Shapes::ShapeRef.new(shape: SearchCriteriaTopKInteger, location_name: "topK"))
    SearchCriteria.struct_class = Types::SearchCriteria

    ServiceException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ServiceException.struct_class = Types::ServiceException

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "message"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    SessionSummary.add_member(:session_id, Shapes::ShapeRef.new(shape: SessionId, required: true, location_name: "sessionId"))
    SessionSummary.add_member(:actor_id, Shapes::ShapeRef.new(shape: ActorId, required: true, location_name: "actorId"))
    SessionSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    SessionSummary.struct_class = Types::SessionSummary

    SessionSummaryList.member = Shapes::ShapeRef.new(shape: SessionSummary)

    StartBrowserSessionRequest.add_member(:browser_identifier, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "browserIdentifier"))
    StartBrowserSessionRequest.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "name"))
    StartBrowserSessionRequest.add_member(:session_timeout_seconds, Shapes::ShapeRef.new(shape: BrowserSessionTimeout, location_name: "sessionTimeoutSeconds"))
    StartBrowserSessionRequest.add_member(:view_port, Shapes::ShapeRef.new(shape: ViewPort, location_name: "viewPort"))
    StartBrowserSessionRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    StartBrowserSessionRequest.struct_class = Types::StartBrowserSessionRequest

    StartBrowserSessionResponse.add_member(:browser_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "browserIdentifier"))
    StartBrowserSessionResponse.add_member(:session_id, Shapes::ShapeRef.new(shape: BrowserSessionId, required: true, location_name: "sessionId"))
    StartBrowserSessionResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "createdAt"))
    StartBrowserSessionResponse.add_member(:streams, Shapes::ShapeRef.new(shape: BrowserSessionStream, location_name: "streams"))
    StartBrowserSessionResponse.struct_class = Types::StartBrowserSessionResponse

    StartCodeInterpreterSessionRequest.add_member(:code_interpreter_identifier, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "codeInterpreterIdentifier"))
    StartCodeInterpreterSessionRequest.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "name"))
    StartCodeInterpreterSessionRequest.add_member(:session_timeout_seconds, Shapes::ShapeRef.new(shape: CodeInterpreterSessionTimeout, location_name: "sessionTimeoutSeconds"))
    StartCodeInterpreterSessionRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    StartCodeInterpreterSessionRequest.struct_class = Types::StartCodeInterpreterSessionRequest

    StartCodeInterpreterSessionResponse.add_member(:code_interpreter_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "codeInterpreterIdentifier"))
    StartCodeInterpreterSessionResponse.add_member(:session_id, Shapes::ShapeRef.new(shape: CodeInterpreterSessionId, required: true, location_name: "sessionId"))
    StartCodeInterpreterSessionResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "createdAt"))
    StartCodeInterpreterSessionResponse.struct_class = Types::StartCodeInterpreterSessionResponse

    StopBrowserSessionRequest.add_member(:browser_identifier, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "browserIdentifier"))
    StopBrowserSessionRequest.add_member(:session_id, Shapes::ShapeRef.new(shape: BrowserSessionId, required: true, location: "querystring", location_name: "sessionId"))
    StopBrowserSessionRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    StopBrowserSessionRequest.struct_class = Types::StopBrowserSessionRequest

    StopBrowserSessionResponse.add_member(:browser_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "browserIdentifier"))
    StopBrowserSessionResponse.add_member(:session_id, Shapes::ShapeRef.new(shape: BrowserSessionId, required: true, location_name: "sessionId"))
    StopBrowserSessionResponse.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "lastUpdatedAt"))
    StopBrowserSessionResponse.struct_class = Types::StopBrowserSessionResponse

    StopCodeInterpreterSessionRequest.add_member(:code_interpreter_identifier, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "codeInterpreterIdentifier"))
    StopCodeInterpreterSessionRequest.add_member(:session_id, Shapes::ShapeRef.new(shape: CodeInterpreterSessionId, required: true, location: "querystring", location_name: "sessionId"))
    StopCodeInterpreterSessionRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    StopCodeInterpreterSessionRequest.struct_class = Types::StopCodeInterpreterSessionRequest

    StopCodeInterpreterSessionResponse.add_member(:code_interpreter_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "codeInterpreterIdentifier"))
    StopCodeInterpreterSessionResponse.add_member(:session_id, Shapes::ShapeRef.new(shape: CodeInterpreterSessionId, required: true, location_name: "sessionId"))
    StopCodeInterpreterSessionResponse.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "lastUpdatedAt"))
    StopCodeInterpreterSessionResponse.struct_class = Types::StopCodeInterpreterSessionResponse

    StreamUpdate.add_member(:automation_stream_update, Shapes::ShapeRef.new(shape: AutomationStreamUpdate, location_name: "automationStreamUpdate"))
    StreamUpdate.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    StreamUpdate.add_member_subclass(:automation_stream_update, Types::StreamUpdate::AutomationStreamUpdate)
    StreamUpdate.add_member_subclass(:unknown, Types::StreamUpdate::Unknown)
    StreamUpdate.struct_class = Types::StreamUpdate

    StringList.member = Shapes::ShapeRef.new(shape: MaxLenString)

    ThrottledException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ThrottledException.struct_class = Types::ThrottledException

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    ToolArguments.add_member(:code, Shapes::ShapeRef.new(shape: MaxLenString, location_name: "code"))
    ToolArguments.add_member(:language, Shapes::ShapeRef.new(shape: ProgrammingLanguage, location_name: "language"))
    ToolArguments.add_member(:clear_context, Shapes::ShapeRef.new(shape: Boolean, location_name: "clearContext"))
    ToolArguments.add_member(:command, Shapes::ShapeRef.new(shape: MaxLenString, location_name: "command"))
    ToolArguments.add_member(:path, Shapes::ShapeRef.new(shape: MaxLenString, location_name: "path"))
    ToolArguments.add_member(:paths, Shapes::ShapeRef.new(shape: StringList, location_name: "paths"))
    ToolArguments.add_member(:content, Shapes::ShapeRef.new(shape: InputContentBlockList, location_name: "content"))
    ToolArguments.add_member(:directory_path, Shapes::ShapeRef.new(shape: MaxLenString, location_name: "directoryPath"))
    ToolArguments.add_member(:task_id, Shapes::ShapeRef.new(shape: MaxLenString, location_name: "taskId"))
    ToolArguments.struct_class = Types::ToolArguments

    ToolResultStructuredContent.add_member(:task_id, Shapes::ShapeRef.new(shape: String, location_name: "taskId"))
    ToolResultStructuredContent.add_member(:task_status, Shapes::ShapeRef.new(shape: TaskStatus, location_name: "taskStatus"))
    ToolResultStructuredContent.add_member(:stdout, Shapes::ShapeRef.new(shape: String, location_name: "stdout"))
    ToolResultStructuredContent.add_member(:stderr, Shapes::ShapeRef.new(shape: String, location_name: "stderr"))
    ToolResultStructuredContent.add_member(:exit_code, Shapes::ShapeRef.new(shape: Integer, location_name: "exitCode"))
    ToolResultStructuredContent.add_member(:execution_time, Shapes::ShapeRef.new(shape: Double, location_name: "executionTime"))
    ToolResultStructuredContent.struct_class = Types::ToolResultStructuredContent

    UnauthorizedException.add_member(:message, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "message"))
    UnauthorizedException.struct_class = Types::UnauthorizedException

    UpdateBrowserStreamRequest.add_member(:browser_identifier, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "browserIdentifier"))
    UpdateBrowserStreamRequest.add_member(:session_id, Shapes::ShapeRef.new(shape: BrowserSessionId, required: true, location: "querystring", location_name: "sessionId"))
    UpdateBrowserStreamRequest.add_member(:stream_update, Shapes::ShapeRef.new(shape: StreamUpdate, required: true, location_name: "streamUpdate"))
    UpdateBrowserStreamRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    UpdateBrowserStreamRequest.struct_class = Types::UpdateBrowserStreamRequest

    UpdateBrowserStreamResponse.add_member(:browser_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "browserIdentifier"))
    UpdateBrowserStreamResponse.add_member(:session_id, Shapes::ShapeRef.new(shape: BrowserSessionId, required: true, location_name: "sessionId"))
    UpdateBrowserStreamResponse.add_member(:streams, Shapes::ShapeRef.new(shape: BrowserSessionStream, required: true, location_name: "streams"))
    UpdateBrowserStreamResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "updatedAt"))
    UpdateBrowserStreamResponse.struct_class = Types::UpdateBrowserStreamResponse

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ValidationException.add_member(:reason, Shapes::ShapeRef.new(shape: ValidationExceptionReason, required: true, location_name: "reason"))
    ValidationException.add_member(:field_list, Shapes::ShapeRef.new(shape: ValidationExceptionFieldList, location_name: "fieldList"))
    ValidationException.struct_class = Types::ValidationException

    ValidationExceptionField.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    ValidationExceptionField.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ValidationExceptionField.struct_class = Types::ValidationExceptionField

    ValidationExceptionFieldList.member = Shapes::ShapeRef.new(shape: ValidationExceptionField)

    ViewPort.add_member(:width, Shapes::ShapeRef.new(shape: ViewPortWidth, required: true, location_name: "width"))
    ViewPort.add_member(:height, Shapes::ShapeRef.new(shape: ViewPortHeight, required: true, location_name: "height"))
    ViewPort.struct_class = Types::ViewPort


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2024-02-28"

      api.metadata = {
        "apiVersion" => "2024-02-28",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "bedrock-agentcore",
        "protocol" => "rest-json",
        "protocols" => ["rest-json"],
        "serviceFullName" => "Amazon Bedrock AgentCore Data Plane Fronting Layer",
        "serviceId" => "Bedrock AgentCore",
        "signatureVersion" => "v4",
        "signingName" => "bedrock-agentcore",
        "uid" => "bedrock-agentcore-2024-02-28",
      }

      api.add_operation(:create_event, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateEvent"
        o.http_method = "POST"
        o.http_request_uri = "/memories/{memoryId}/events"
        o.input = Shapes::ShapeRef.new(shape: CreateEventInput)
        o.output = Shapes::ShapeRef.new(shape: CreateEventOutput)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
      end)

      api.add_operation(:delete_event, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteEvent"
        o.http_method = "DELETE"
        o.http_request_uri = "/memories/{memoryId}/actor/{actorId}/sessions/{sessionId}/events/{eventId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteEventInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteEventOutput)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
      end)

      api.add_operation(:delete_memory_record, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteMemoryRecord"
        o.http_method = "DELETE"
        o.http_request_uri = "/memories/{memoryId}/memoryRecords/{memoryRecordId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteMemoryRecordInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteMemoryRecordOutput)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
      end)

      api.add_operation(:get_browser_session, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetBrowserSession"
        o.http_method = "GET"
        o.http_request_uri = "/browsers/{browserIdentifier}/sessions/get"
        o.input = Shapes::ShapeRef.new(shape: GetBrowserSessionRequest)
        o.output = Shapes::ShapeRef.new(shape: GetBrowserSessionResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_code_interpreter_session, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetCodeInterpreterSession"
        o.http_method = "GET"
        o.http_request_uri = "/code-interpreters/{codeInterpreterIdentifier}/sessions/get"
        o.input = Shapes::ShapeRef.new(shape: GetCodeInterpreterSessionRequest)
        o.output = Shapes::ShapeRef.new(shape: GetCodeInterpreterSessionResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_event, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetEvent"
        o.http_method = "GET"
        o.http_request_uri = "/memories/{memoryId}/actor/{actorId}/sessions/{sessionId}/events/{eventId}"
        o.input = Shapes::ShapeRef.new(shape: GetEventInput)
        o.output = Shapes::ShapeRef.new(shape: GetEventOutput)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
      end)

      api.add_operation(:get_memory_record, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetMemoryRecord"
        o.http_method = "GET"
        o.http_request_uri = "/memories/{memoryId}/memoryRecord/{memoryRecordId}"
        o.input = Shapes::ShapeRef.new(shape: GetMemoryRecordInput)
        o.output = Shapes::ShapeRef.new(shape: GetMemoryRecordOutput)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
      end)

      api.add_operation(:get_resource_api_key, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetResourceApiKey"
        o.http_method = "POST"
        o.http_request_uri = "/identities/api-key"
        o.input = Shapes::ShapeRef.new(shape: GetResourceApiKeyRequest)
        o.output = Shapes::ShapeRef.new(shape: GetResourceApiKeyResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_resource_oauth_2_token, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetResourceOauth2Token"
        o.http_method = "POST"
        o.http_request_uri = "/identities/oauth2/token"
        o.input = Shapes::ShapeRef.new(shape: GetResourceOauth2TokenRequest)
        o.output = Shapes::ShapeRef.new(shape: GetResourceOauth2TokenResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_workload_access_token, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetWorkloadAccessToken"
        o.http_method = "POST"
        o.http_request_uri = "/identities/GetWorkloadAccessToken"
        o.input = Shapes::ShapeRef.new(shape: GetWorkloadAccessTokenRequest)
        o.output = Shapes::ShapeRef.new(shape: GetWorkloadAccessTokenResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_workload_access_token_for_jwt, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetWorkloadAccessTokenForJWT"
        o.http_method = "POST"
        o.http_request_uri = "/identities/GetWorkloadAccessTokenForJWT"
        o.input = Shapes::ShapeRef.new(shape: GetWorkloadAccessTokenForJWTRequest)
        o.output = Shapes::ShapeRef.new(shape: GetWorkloadAccessTokenForJWTResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_workload_access_token_for_user_id, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetWorkloadAccessTokenForUserId"
        o.http_method = "POST"
        o.http_request_uri = "/identities/GetWorkloadAccessTokenForUserId"
        o.input = Shapes::ShapeRef.new(shape: GetWorkloadAccessTokenForUserIdRequest)
        o.output = Shapes::ShapeRef.new(shape: GetWorkloadAccessTokenForUserIdResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:invoke_agent_runtime, Seahorse::Model::Operation.new.tap do |o|
        o.name = "InvokeAgentRuntime"
        o.http_method = "POST"
        o.http_request_uri = "/runtimes/{agentRuntimeArn}/invocations"
        o.input = Shapes::ShapeRef.new(shape: InvokeAgentRuntimeRequest)
        o.output = Shapes::ShapeRef.new(shape: InvokeAgentRuntimeResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: RuntimeClientError)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:invoke_code_interpreter, Seahorse::Model::Operation.new.tap do |o|
        o.name = "InvokeCodeInterpreter"
        o.http_method = "POST"
        o.http_request_uri = "/code-interpreters/{codeInterpreterIdentifier}/tools/invoke"
        o.input = Shapes::ShapeRef.new(shape: InvokeCodeInterpreterRequest)
        o.output = Shapes::ShapeRef.new(shape: InvokeCodeInterpreterResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:list_actors, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListActors"
        o.http_method = "POST"
        o.http_request_uri = "/memories/{memoryId}/actors"
        o.input = Shapes::ShapeRef.new(shape: ListActorsInput)
        o.output = Shapes::ShapeRef.new(shape: ListActorsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_browser_sessions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListBrowserSessions"
        o.http_method = "POST"
        o.http_request_uri = "/browsers/{browserIdentifier}/sessions/list"
        o.input = Shapes::ShapeRef.new(shape: ListBrowserSessionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListBrowserSessionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:list_code_interpreter_sessions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListCodeInterpreterSessions"
        o.http_method = "POST"
        o.http_request_uri = "/code-interpreters/{codeInterpreterIdentifier}/sessions/list"
        o.input = Shapes::ShapeRef.new(shape: ListCodeInterpreterSessionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListCodeInterpreterSessionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:list_events, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListEvents"
        o.http_method = "POST"
        o.http_request_uri = "/memories/{memoryId}/actor/{actorId}/sessions/{sessionId}"
        o.input = Shapes::ShapeRef.new(shape: ListEventsInput)
        o.output = Shapes::ShapeRef.new(shape: ListEventsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_memory_records, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListMemoryRecords"
        o.http_method = "POST"
        o.http_request_uri = "/memories/{memoryId}/memoryRecords"
        o.input = Shapes::ShapeRef.new(shape: ListMemoryRecordsInput)
        o.output = Shapes::ShapeRef.new(shape: ListMemoryRecordsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
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
        o.http_request_uri = "/memories/{memoryId}/actor/{actorId}/sessions"
        o.input = Shapes::ShapeRef.new(shape: ListSessionsInput)
        o.output = Shapes::ShapeRef.new(shape: ListSessionsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:retrieve_memory_records, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RetrieveMemoryRecords"
        o.http_method = "POST"
        o.http_request_uri = "/memories/{memoryId}/retrieve"
        o.input = Shapes::ShapeRef.new(shape: RetrieveMemoryRecordsInput)
        o.output = Shapes::ShapeRef.new(shape: RetrieveMemoryRecordsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:start_browser_session, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartBrowserSession"
        o.http_method = "PUT"
        o.http_request_uri = "/browsers/{browserIdentifier}/sessions/start"
        o.input = Shapes::ShapeRef.new(shape: StartBrowserSessionRequest)
        o.output = Shapes::ShapeRef.new(shape: StartBrowserSessionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:start_code_interpreter_session, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartCodeInterpreterSession"
        o.http_method = "PUT"
        o.http_request_uri = "/code-interpreters/{codeInterpreterIdentifier}/sessions/start"
        o.input = Shapes::ShapeRef.new(shape: StartCodeInterpreterSessionRequest)
        o.output = Shapes::ShapeRef.new(shape: StartCodeInterpreterSessionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:stop_browser_session, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopBrowserSession"
        o.http_method = "PUT"
        o.http_request_uri = "/browsers/{browserIdentifier}/sessions/stop"
        o.input = Shapes::ShapeRef.new(shape: StopBrowserSessionRequest)
        o.output = Shapes::ShapeRef.new(shape: StopBrowserSessionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:stop_code_interpreter_session, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopCodeInterpreterSession"
        o.http_method = "PUT"
        o.http_request_uri = "/code-interpreters/{codeInterpreterIdentifier}/sessions/stop"
        o.input = Shapes::ShapeRef.new(shape: StopCodeInterpreterSessionRequest)
        o.output = Shapes::ShapeRef.new(shape: StopCodeInterpreterSessionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_browser_stream, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateBrowserStream"
        o.http_method = "PUT"
        o.http_request_uri = "/browsers/{browserIdentifier}/sessions/streams/update"
        o.input = Shapes::ShapeRef.new(shape: UpdateBrowserStreamRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateBrowserStreamResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)
    end

  end
end
