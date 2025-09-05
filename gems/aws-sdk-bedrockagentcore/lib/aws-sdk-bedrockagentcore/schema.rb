# frozen_string_literal: true

# This is generated code!

module Aws::BedrockAgentCore
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcore#AccessDeniedException', name: 'AccessDeniedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AccessTokenType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagentcore#AccessTokenType', name: 'AccessTokenType', traits: {"smithy.api#length" => {"min" => 1, "max" => 131072}, "smithy.api#sensitive" => {}})
    ActorId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagentcore#ActorId', name: 'ActorId', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z0-9][a-zA-Z0-9-_/]*$"})
    ActorSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcore#ActorSummary', name: 'ActorSummary')
    ActorSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.bedrockagentcore#ActorSummaryList', name: 'ActorSummaryList')
    ApiKeyType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagentcore#ApiKeyType', name: 'ApiKeyType', traits: {"smithy.api#length" => {"min" => 1, "max" => 65536}, "smithy.api#sensitive" => {}})
    AutomationStream = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcore#AutomationStream', name: 'AutomationStream')
    AutomationStreamStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.bedrockagentcore#AutomationStreamStatus', name: 'AutomationStreamStatus')
    AutomationStreamUpdate = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcore#AutomationStreamUpdate', name: 'AutomationStreamUpdate')
    Body = ::Smithy::Schema::Shapes::BlobShape.new(id: 'com.amazonaws.bedrockagentcore#Body', name: 'Body', traits: {"smithy.api#length" => {"max" => 100000000}, "smithy.api#sensitive" => {}})
    Branch = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcore#Branch', name: 'Branch')
    BranchFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcore#BranchFilter', name: 'BranchFilter')
    BranchName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagentcore#BranchName', name: 'BranchName', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[a-zA-Z0-9][a-zA-Z0-9-_]*$"})
    BrowserSessionId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagentcore#BrowserSessionId', name: 'BrowserSessionId', traits: {"smithy.api#pattern" => "^[0-9a-zA-Z]{1,40}$"})
    BrowserSessionStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.bedrockagentcore#BrowserSessionStatus', name: 'BrowserSessionStatus')
    BrowserSessionStream = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcore#BrowserSessionStream', name: 'BrowserSessionStream')
    BrowserSessionSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.bedrockagentcore#BrowserSessionSummaries', name: 'BrowserSessionSummaries')
    BrowserSessionSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcore#BrowserSessionSummary', name: 'BrowserSessionSummary')
    BrowserSessionTimeout = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.bedrockagentcore#BrowserSessionTimeout', name: 'BrowserSessionTimeout', traits: {"smithy.api#range" => {"min" => 1, "max" => 28800}})
    BrowserStreamEndpoint = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagentcore#BrowserStreamEndpoint', name: 'BrowserStreamEndpoint', traits: {"smithy.api#length" => {"min" => 10, "max" => 512}})
    ClientToken = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagentcore#ClientToken', name: 'ClientToken', traits: {"smithy.api#length" => {"min" => 33, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9](-*[a-zA-Z0-9]){0,256}$"})
    CodeInterpreterResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcore#CodeInterpreterResult', name: 'CodeInterpreterResult')
    CodeInterpreterSessionId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagentcore#CodeInterpreterSessionId', name: 'CodeInterpreterSessionId', traits: {"smithy.api#pattern" => "^[0-9a-zA-Z]{1,40}$"})
    CodeInterpreterSessionStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.bedrockagentcore#CodeInterpreterSessionStatus', name: 'CodeInterpreterSessionStatus')
    CodeInterpreterSessionSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.bedrockagentcore#CodeInterpreterSessionSummaries', name: 'CodeInterpreterSessionSummaries')
    CodeInterpreterSessionSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcore#CodeInterpreterSessionSummary', name: 'CodeInterpreterSessionSummary')
    CodeInterpreterSessionTimeout = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.bedrockagentcore#CodeInterpreterSessionTimeout', name: 'CodeInterpreterSessionTimeout', traits: {"smithy.api#range" => {"min" => 1, "max" => 28800}})
    CodeInterpreterStreamOutput = ::Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.bedrockagentcore#CodeInterpreterStreamOutput', name: 'CodeInterpreterStreamOutput', traits: {"smithy.api#streaming" => {}})
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcore#ConflictException', name: 'ConflictException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    Content = ::Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.bedrockagentcore#Content', name: 'Content')
    ContentBlock = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcore#ContentBlock', name: 'ContentBlock')
    ContentBlockList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.bedrockagentcore#ContentBlockList', name: 'ContentBlockList')
    ContentBlockType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.bedrockagentcore#ContentBlockType', name: 'ContentBlockType')
    Conversational = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcore#Conversational', name: 'Conversational')
    CreateEventInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcore#CreateEventInput', name: 'CreateEventInput')
    CreateEventOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcore#CreateEventOutput', name: 'CreateEventOutput')
    CredentialProviderName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagentcore#CredentialProviderName', name: 'CredentialProviderName', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9\\-_]+$"})
    CustomRequestKeyType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagentcore#CustomRequestKeyType', name: 'CustomRequestKeyType', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9\\-_\\.]+$"})
    CustomRequestParametersType = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.bedrockagentcore#CustomRequestParametersType', name: 'CustomRequestParametersType')
    CustomRequestValueType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagentcore#CustomRequestValueType', name: 'CustomRequestValueType', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#sensitive" => {}})
    DateTimestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.bedrockagentcore#DateTimestamp', name: 'DateTimestamp', traits: {"smithy.api#timestampFormat" => "date-time"})
    DeleteEventInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcore#DeleteEventInput', name: 'DeleteEventInput')
    DeleteEventOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcore#DeleteEventOutput', name: 'DeleteEventOutput')
    DeleteMemoryRecordInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcore#DeleteMemoryRecordInput', name: 'DeleteMemoryRecordInput')
    DeleteMemoryRecordOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcore#DeleteMemoryRecordOutput', name: 'DeleteMemoryRecordOutput')
    Document = ::Smithy::Schema::Shapes::DocumentShape.new(id: 'com.amazonaws.bedrockagentcore#Document', name: 'Document')
    Event = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcore#Event', name: 'Event')
    EventId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagentcore#EventId', name: 'EventId', traits: {"smithy.api#pattern" => "^[0-9]+#[a-fA-F0-9]+$"})
    EventList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.bedrockagentcore#EventList', name: 'EventList')
    FilterInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcore#FilterInput', name: 'FilterInput')
    GetBrowserSessionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcore#GetBrowserSessionRequest', name: 'GetBrowserSessionRequest')
    GetBrowserSessionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcore#GetBrowserSessionResponse', name: 'GetBrowserSessionResponse')
    GetCodeInterpreterSessionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcore#GetCodeInterpreterSessionRequest', name: 'GetCodeInterpreterSessionRequest')
    GetCodeInterpreterSessionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcore#GetCodeInterpreterSessionResponse', name: 'GetCodeInterpreterSessionResponse')
    GetEventInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcore#GetEventInput', name: 'GetEventInput')
    GetEventOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcore#GetEventOutput', name: 'GetEventOutput')
    GetMemoryRecordInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcore#GetMemoryRecordInput', name: 'GetMemoryRecordInput')
    GetMemoryRecordOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcore#GetMemoryRecordOutput', name: 'GetMemoryRecordOutput')
    GetResourceApiKeyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcore#GetResourceApiKeyRequest', name: 'GetResourceApiKeyRequest')
    GetResourceApiKeyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcore#GetResourceApiKeyResponse', name: 'GetResourceApiKeyResponse')
    GetResourceOauth2TokenRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcore#GetResourceOauth2TokenRequest', name: 'GetResourceOauth2TokenRequest')
    GetResourceOauth2TokenResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcore#GetResourceOauth2TokenResponse', name: 'GetResourceOauth2TokenResponse')
    GetWorkloadAccessTokenForJWTRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcore#GetWorkloadAccessTokenForJWTRequest', name: 'GetWorkloadAccessTokenForJWTRequest')
    GetWorkloadAccessTokenForJWTResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcore#GetWorkloadAccessTokenForJWTResponse', name: 'GetWorkloadAccessTokenForJWTResponse')
    GetWorkloadAccessTokenForUserIdRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcore#GetWorkloadAccessTokenForUserIdRequest', name: 'GetWorkloadAccessTokenForUserIdRequest')
    GetWorkloadAccessTokenForUserIdResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcore#GetWorkloadAccessTokenForUserIdResponse', name: 'GetWorkloadAccessTokenForUserIdResponse')
    GetWorkloadAccessTokenRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcore#GetWorkloadAccessTokenRequest', name: 'GetWorkloadAccessTokenRequest')
    GetWorkloadAccessTokenResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcore#GetWorkloadAccessTokenResponse', name: 'GetWorkloadAccessTokenResponse')
    HttpResponseCode = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.bedrockagentcore#HttpResponseCode', name: 'HttpResponseCode')
    InputContentBlock = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcore#InputContentBlock', name: 'InputContentBlock')
    InputContentBlockList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.bedrockagentcore#InputContentBlockList', name: 'InputContentBlockList')
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcore#InternalServerException', name: 'InternalServerException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    InvalidInputException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcore#InvalidInputException', name: 'InvalidInputException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvokeAgentRuntimeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcore#InvokeAgentRuntimeRequest', name: 'InvokeAgentRuntimeRequest')
    InvokeAgentRuntimeResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcore#InvokeAgentRuntimeResponse', name: 'InvokeAgentRuntimeResponse')
    InvokeCodeInterpreterRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcore#InvokeCodeInterpreterRequest', name: 'InvokeCodeInterpreterRequest')
    InvokeCodeInterpreterResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcore#InvokeCodeInterpreterResponse', name: 'InvokeCodeInterpreterResponse')
    ListActorsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcore#ListActorsInput', name: 'ListActorsInput')
    ListActorsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcore#ListActorsOutput', name: 'ListActorsOutput')
    ListBrowserSessionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcore#ListBrowserSessionsRequest', name: 'ListBrowserSessionsRequest')
    ListBrowserSessionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcore#ListBrowserSessionsResponse', name: 'ListBrowserSessionsResponse')
    ListCodeInterpreterSessionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcore#ListCodeInterpreterSessionsRequest', name: 'ListCodeInterpreterSessionsRequest')
    ListCodeInterpreterSessionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcore#ListCodeInterpreterSessionsResponse', name: 'ListCodeInterpreterSessionsResponse')
    ListEventsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcore#ListEventsInput', name: 'ListEventsInput')
    ListEventsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcore#ListEventsOutput', name: 'ListEventsOutput')
    ListMemoryRecordsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcore#ListMemoryRecordsInput', name: 'ListMemoryRecordsInput')
    ListMemoryRecordsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcore#ListMemoryRecordsOutput', name: 'ListMemoryRecordsOutput')
    ListSessionsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcore#ListSessionsInput', name: 'ListSessionsInput')
    ListSessionsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcore#ListSessionsOutput', name: 'ListSessionsOutput')
    LiveViewStream = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcore#LiveViewStream', name: 'LiveViewStream')
    MaxLenString = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagentcore#MaxLenString', name: 'MaxLenString', traits: {"smithy.api#length" => {"max" => 100000000}})
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.bedrockagentcore#MaxResults', name: 'MaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    MemoryContent = ::Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.bedrockagentcore#MemoryContent', name: 'MemoryContent')
    MemoryId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagentcore#MemoryId', name: 'MemoryId', traits: {"smithy.api#length" => {"min" => 12}, "smithy.api#pattern" => "^[a-zA-Z][a-zA-Z0-9-_]{0,99}-[a-zA-Z0-9]{10}$"})
    MemoryRecord = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcore#MemoryRecord', name: 'MemoryRecord')
    MemoryRecordId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagentcore#MemoryRecordId', name: 'MemoryRecordId', traits: {"smithy.api#length" => {"min" => 40, "max" => 40}, "smithy.api#pattern" => "^mem-[a-zA-Z0-9-]*$"})
    MemoryRecordSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcore#MemoryRecordSummary', name: 'MemoryRecordSummary')
    MemoryRecordSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.bedrockagentcore#MemoryRecordSummaryList', name: 'MemoryRecordSummaryList')
    MemoryStrategyId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagentcore#MemoryStrategyId', name: 'MemoryStrategyId', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[a-zA-Z0-9][a-zA-Z0-9-_]*$"})
    MimeType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagentcore#MimeType', name: 'MimeType', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    Name = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagentcore#Name', name: 'Name', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    Namespace = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagentcore#Namespace', name: 'Namespace', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^[a-zA-Z0-9/*][a-zA-Z0-9-_/*]*$"})
    NamespacesList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.bedrockagentcore#NamespacesList', name: 'NamespacesList', traits: {"smithy.api#length" => {"min" => 1}})
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagentcore#NextToken', name: 'NextToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^\\S*$"})
    NonBlankString = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagentcore#NonBlankString', name: 'NonBlankString', traits: {"smithy.api#pattern" => "^[\\s\\S]+$"})
    Oauth2FlowType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.bedrockagentcore#Oauth2FlowType', name: 'Oauth2FlowType')
    PaginationToken = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagentcore#PaginationToken', name: 'PaginationToken')
    PayloadType = ::Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.bedrockagentcore#PayloadType', name: 'PayloadType')
    PayloadTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.bedrockagentcore#PayloadTypeList', name: 'PayloadTypeList', traits: {"smithy.api#length" => {"max" => 100}})
    ProgrammingLanguage = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.bedrockagentcore#ProgrammingLanguage', name: 'ProgrammingLanguage')
    ResourceContent = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcore#ResourceContent', name: 'ResourceContent')
    ResourceContentType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.bedrockagentcore#ResourceContentType', name: 'ResourceContentType')
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcore#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourceOauth2ReturnUrlType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagentcore#ResourceOauth2ReturnUrlType', name: 'ResourceOauth2ReturnUrlType', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^\\w+:(\\/?\\/?)[^\\s]+$"})
    ResponseStream = ::Smithy::Schema::Shapes::BlobShape.new(id: 'com.amazonaws.bedrockagentcore#ResponseStream', name: 'ResponseStream', traits: {"smithy.api#sensitive" => {}, "smithy.api#streaming" => {}})
    RetrieveMemoryRecordsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcore#RetrieveMemoryRecordsInput', name: 'RetrieveMemoryRecordsInput')
    RetrieveMemoryRecordsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcore#RetrieveMemoryRecordsOutput', name: 'RetrieveMemoryRecordsOutput')
    Role = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.bedrockagentcore#Role', name: 'Role')
    RuntimeClientError = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcore#RuntimeClientError', name: 'RuntimeClientError', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 424})
    ScopeType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagentcore#ScopeType', name: 'ScopeType', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    ScopesListType = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.bedrockagentcore#ScopesListType', name: 'ScopesListType')
    SearchCriteria = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcore#SearchCriteria', name: 'SearchCriteria')
    SensitiveString = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagentcore#SensitiveString', name: 'SensitiveString', traits: {"smithy.api#sensitive" => {}})
    ServiceException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcore#ServiceException', name: 'ServiceException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcore#ServiceQuotaExceededException', name: 'ServiceQuotaExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    SessionId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagentcore#SessionId', name: 'SessionId', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[a-zA-Z0-9][a-zA-Z0-9-_]*$"})
    SessionSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcore#SessionSummary', name: 'SessionSummary')
    SessionSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.bedrockagentcore#SessionSummaryList', name: 'SessionSummaryList')
    SessionType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagentcore#SessionType', name: 'SessionType', traits: {"smithy.api#length" => {"min" => 33, "max" => 256}})
    StartBrowserSessionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcore#StartBrowserSessionRequest', name: 'StartBrowserSessionRequest')
    StartBrowserSessionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcore#StartBrowserSessionResponse', name: 'StartBrowserSessionResponse')
    StartCodeInterpreterSessionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcore#StartCodeInterpreterSessionRequest', name: 'StartCodeInterpreterSessionRequest')
    StartCodeInterpreterSessionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcore#StartCodeInterpreterSessionResponse', name: 'StartCodeInterpreterSessionResponse')
    StopBrowserSessionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcore#StopBrowserSessionRequest', name: 'StopBrowserSessionRequest')
    StopBrowserSessionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcore#StopBrowserSessionResponse', name: 'StopBrowserSessionResponse')
    StopCodeInterpreterSessionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcore#StopCodeInterpreterSessionRequest', name: 'StopCodeInterpreterSessionRequest')
    StopCodeInterpreterSessionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcore#StopCodeInterpreterSessionResponse', name: 'StopCodeInterpreterSessionResponse')
    StreamUpdate = ::Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.bedrockagentcore#StreamUpdate', name: 'StreamUpdate')
    StringList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.bedrockagentcore#StringList', name: 'StringList')
    StringType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagentcore#StringType', name: 'StringType', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    TaskStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.bedrockagentcore#TaskStatus', name: 'TaskStatus')
    ThrottledException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcore#ThrottledException', name: 'ThrottledException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcore#ThrottlingException', name: 'ThrottlingException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    ToolArguments = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcore#ToolArguments', name: 'ToolArguments')
    ToolName = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.bedrockagentcore#ToolName', name: 'ToolName')
    ToolResultStructuredContent = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcore#ToolResultStructuredContent', name: 'ToolResultStructuredContent')
    UnauthorizedException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcore#UnauthorizedException', name: 'UnauthorizedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 401})
    UpdateBrowserStreamRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcore#UpdateBrowserStreamRequest', name: 'UpdateBrowserStreamRequest')
    UpdateBrowserStreamResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcore#UpdateBrowserStreamResponse', name: 'UpdateBrowserStreamResponse')
    UserIdType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagentcore#UserIdType', name: 'UserIdType', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    UserTokenType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagentcore#UserTokenType', name: 'UserTokenType', traits: {"smithy.api#length" => {"min" => 1, "max" => 131072}, "smithy.api#pattern" => "^[A-Za-z0-9-_=]+.[A-Za-z0-9-_=]+.[A-Za-z0-9-_=]+$", "smithy.api#sensitive" => {}})
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcore#ValidationException', name: 'ValidationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ValidationExceptionField = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcore#ValidationExceptionField', name: 'ValidationExceptionField')
    ValidationExceptionFieldList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.bedrockagentcore#ValidationExceptionFieldList', name: 'ValidationExceptionFieldList')
    ValidationExceptionReason = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.bedrockagentcore#ValidationExceptionReason', name: 'ValidationExceptionReason')
    ViewPort = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcore#ViewPort', name: 'ViewPort')
    ViewPortHeight = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.bedrockagentcore#ViewPortHeight', name: 'ViewPortHeight', traits: {"smithy.api#range" => {"min" => 240, "max" => 2160}})
    ViewPortWidth = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.bedrockagentcore#ViewPortWidth', name: 'ViewPortWidth', traits: {"smithy.api#range" => {"min" => 320, "max" => 3840}})
    WorkloadIdentityNameType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagentcore#WorkloadIdentityNameType', name: 'WorkloadIdentityNameType', traits: {"smithy.api#length" => {"min" => 3, "max" => 255}, "smithy.api#pattern" => "^[A-Za-z0-9_.-]+$"})
    WorkloadIdentityTokenType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagentcore#WorkloadIdentityTokenType', name: 'WorkloadIdentityTokenType', traits: {"smithy.api#length" => {"min" => 1, "max" => 131072}, "smithy.api#sensitive" => {}})

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonBlankString, location_name: 'message'))
    AccessDeniedException.type = Types::AccessDeniedException
    ActorSummary.add_member(:actor_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ActorId, location_name: 'actorId', traits: {"smithy.api#required" => {}}))
    ActorSummary.type = Types::ActorSummary
    ActorSummaryList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ActorSummary)
    AutomationStream.add_member(:stream_endpoint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BrowserStreamEndpoint, location_name: 'streamEndpoint', traits: {"smithy.api#required" => {}}))
    AutomationStream.add_member(:stream_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomationStreamStatus, location_name: 'streamStatus', traits: {"smithy.api#required" => {}}))
    AutomationStream.type = Types::AutomationStream
    AutomationStreamStatus.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED', traits: {"smithy.api#enumValue" => "ENABLED"}))
    AutomationStreamStatus.add_member(:disabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "DISABLED"}))
    AutomationStreamUpdate.add_member(:stream_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomationStreamStatus, location_name: 'streamStatus'))
    AutomationStreamUpdate.type = Types::AutomationStreamUpdate
    Branch.add_member(:root_event_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventId, location_name: 'rootEventId'))
    Branch.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BranchName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    Branch.type = Types::Branch
    BranchFilter.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BranchName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    BranchFilter.add_member(:include_parent_branches, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'includeParentBranches', traits: {"smithy.api#default" => true}))
    BranchFilter.type = Types::BranchFilter
    BrowserSessionStatus.add_member(:ready, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'READY', traits: {"smithy.api#enumValue" => "READY"}))
    BrowserSessionStatus.add_member(:terminated, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TERMINATED', traits: {"smithy.api#enumValue" => "TERMINATED"}))
    BrowserSessionStream.add_member(:automation_stream, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomationStream, location_name: 'automationStream', traits: {"smithy.api#required" => {}}))
    BrowserSessionStream.add_member(:live_view_stream, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LiveViewStream, location_name: 'liveViewStream'))
    BrowserSessionStream.type = Types::BrowserSessionStream
    BrowserSessionSummaries.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BrowserSessionSummary)
    BrowserSessionSummary.add_member(:browser_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'browserIdentifier', traits: {"smithy.api#required" => {}}))
    BrowserSessionSummary.add_member(:session_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BrowserSessionId, location_name: 'sessionId', traits: {"smithy.api#required" => {}}))
    BrowserSessionSummary.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name'))
    BrowserSessionSummary.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BrowserSessionStatus, location_name: 'status', traits: {"smithy.api#required" => {}}))
    BrowserSessionSummary.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimestamp, location_name: 'createdAt', traits: {"smithy.api#required" => {}}))
    BrowserSessionSummary.add_member(:last_updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimestamp, location_name: 'lastUpdatedAt'))
    BrowserSessionSummary.type = Types::BrowserSessionSummary
    CodeInterpreterResult.add_member(:content, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContentBlockList, location_name: 'content', traits: {"smithy.api#required" => {}}))
    CodeInterpreterResult.add_member(:structured_content, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ToolResultStructuredContent, location_name: 'structuredContent'))
    CodeInterpreterResult.add_member(:is_error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'isError'))
    CodeInterpreterResult.type = Types::CodeInterpreterResult
    CodeInterpreterSessionStatus.add_member(:ready, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'READY', traits: {"smithy.api#enumValue" => "READY"}))
    CodeInterpreterSessionStatus.add_member(:terminated, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TERMINATED', traits: {"smithy.api#enumValue" => "TERMINATED"}))
    CodeInterpreterSessionSummaries.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CodeInterpreterSessionSummary)
    CodeInterpreterSessionSummary.add_member(:code_interpreter_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'codeInterpreterIdentifier', traits: {"smithy.api#required" => {}}))
    CodeInterpreterSessionSummary.add_member(:session_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CodeInterpreterSessionId, location_name: 'sessionId', traits: {"smithy.api#required" => {}}))
    CodeInterpreterSessionSummary.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name'))
    CodeInterpreterSessionSummary.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CodeInterpreterSessionStatus, location_name: 'status', traits: {"smithy.api#required" => {}}))
    CodeInterpreterSessionSummary.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimestamp, location_name: 'createdAt', traits: {"smithy.api#required" => {}}))
    CodeInterpreterSessionSummary.add_member(:last_updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimestamp, location_name: 'lastUpdatedAt'))
    CodeInterpreterSessionSummary.type = Types::CodeInterpreterSessionSummary
    CodeInterpreterStreamOutput.add_member(:result, Types::CodeInterpreterStreamOutput::Result, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CodeInterpreterResult, location_name: 'result'))
    CodeInterpreterStreamOutput.add_member(:access_denied_exception, Types::CodeInterpreterStreamOutput::AccessDeniedException, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException, location_name: 'accessDeniedException'))
    CodeInterpreterStreamOutput.add_member(:conflict_exception, Types::CodeInterpreterStreamOutput::ConflictException, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException, location_name: 'conflictException'))
    CodeInterpreterStreamOutput.add_member(:internal_server_exception, Types::CodeInterpreterStreamOutput::InternalServerException, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException, location_name: 'internalServerException'))
    CodeInterpreterStreamOutput.add_member(:resource_not_found_exception, Types::CodeInterpreterStreamOutput::ResourceNotFoundException, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException, location_name: 'resourceNotFoundException'))
    CodeInterpreterStreamOutput.add_member(:service_quota_exceeded_exception, Types::CodeInterpreterStreamOutput::ServiceQuotaExceededException, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException, location_name: 'serviceQuotaExceededException'))
    CodeInterpreterStreamOutput.add_member(:throttling_exception, Types::CodeInterpreterStreamOutput::ThrottlingException, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException, location_name: 'throttlingException'))
    CodeInterpreterStreamOutput.add_member(:validation_exception, Types::CodeInterpreterStreamOutput::ValidationException, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException, location_name: 'validationException'))
    CodeInterpreterStreamOutput.add_member(:unknown, Types::CodeInterpreterStreamOutput::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    CodeInterpreterStreamOutput.type = Types::CodeInterpreterStreamOutput
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonBlankString, location_name: 'message'))
    ConflictException.type = Types::ConflictException
    Content.add_member(:text, Types::Content::Text, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveString, location_name: 'text', traits: {"smithy.api#length" => {"min" => 1, "max" => 9000}}))
    Content.add_member(:unknown, Types::Content::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    Content.type = Types::Content
    ContentBlock.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContentBlockType, location_name: 'type', traits: {"smithy.api#required" => {}}))
    ContentBlock.add_member(:text, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'text'))
    ContentBlock.add_member(:data, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Blob, location_name: 'data'))
    ContentBlock.add_member(:mime_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'mimeType'))
    ContentBlock.add_member(:uri, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'uri'))
    ContentBlock.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'name'))
    ContentBlock.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'description'))
    ContentBlock.add_member(:size, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Long, location_name: 'size'))
    ContentBlock.add_member(:resource, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceContent, location_name: 'resource'))
    ContentBlock.type = Types::ContentBlock
    ContentBlockList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContentBlock)
    ContentBlockType.add_member(:text, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TEXT', traits: {"smithy.api#enumValue" => "text"}))
    ContentBlockType.add_member(:image, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IMAGE', traits: {"smithy.api#enumValue" => "image"}))
    ContentBlockType.add_member(:embedded_resource, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EMBEDDED_RESOURCE', traits: {"smithy.api#enumValue" => "resource"}))
    ContentBlockType.add_member(:resource_link, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RESOURCE_LINK', traits: {"smithy.api#enumValue" => "resource_link"}))
    Conversational.add_member(:content, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Content, location_name: 'content', traits: {"smithy.api#required" => {}}))
    Conversational.add_member(:role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Role, location_name: 'role', traits: {"smithy.api#required" => {}}))
    Conversational.type = Types::Conversational
    CreateEventInput.add_member(:memory_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MemoryId, location_name: 'memoryId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateEventInput.add_member(:actor_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ActorId, location_name: 'actorId', traits: {"smithy.api#required" => {}}))
    CreateEventInput.add_member(:session_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SessionId, location_name: 'sessionId'))
    CreateEventInput.add_member(:event_timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'eventTimestamp', traits: {"smithy.api#required" => {}}))
    CreateEventInput.add_member(:payload, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTypeList, location_name: 'payload', traits: {"smithy.api#required" => {}}))
    CreateEventInput.add_member(:branch, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Branch, location_name: 'branch'))
    CreateEventInput.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'clientToken', traits: {"smithy.api#idempotencyToken" => {}}))
    CreateEventInput.type = Types::CreateEventInput
    CreateEventOutput.add_member(:event, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Event, location_name: 'event', traits: {"smithy.api#required" => {}}))
    CreateEventOutput.type = Types::CreateEventOutput
    CustomRequestParametersType.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomRequestKeyType)
    CustomRequestParametersType.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomRequestValueType)
    DeleteEventInput.add_member(:memory_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MemoryId, location_name: 'memoryId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteEventInput.add_member(:session_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SessionId, location_name: 'sessionId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteEventInput.add_member(:event_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventId, location_name: 'eventId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteEventInput.add_member(:actor_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ActorId, location_name: 'actorId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteEventInput.type = Types::DeleteEventInput
    DeleteEventOutput.add_member(:event_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventId, location_name: 'eventId', traits: {"smithy.api#required" => {}}))
    DeleteEventOutput.type = Types::DeleteEventOutput
    DeleteMemoryRecordInput.add_member(:memory_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MemoryId, location_name: 'memoryId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteMemoryRecordInput.add_member(:memory_record_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'memoryRecordId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteMemoryRecordInput.type = Types::DeleteMemoryRecordInput
    DeleteMemoryRecordOutput.add_member(:memory_record_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'memoryRecordId', traits: {"smithy.api#required" => {}}))
    DeleteMemoryRecordOutput.type = Types::DeleteMemoryRecordOutput
    Event.add_member(:memory_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MemoryId, location_name: 'memoryId', traits: {"smithy.api#required" => {}}))
    Event.add_member(:actor_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ActorId, location_name: 'actorId', traits: {"smithy.api#required" => {}}))
    Event.add_member(:session_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SessionId, location_name: 'sessionId', traits: {"smithy.api#required" => {}}))
    Event.add_member(:event_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventId, location_name: 'eventId', traits: {"smithy.api#required" => {}}))
    Event.add_member(:event_timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'eventTimestamp', traits: {"smithy.api#required" => {}}))
    Event.add_member(:payload, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTypeList, location_name: 'payload', traits: {"smithy.api#required" => {}}))
    Event.add_member(:branch, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Branch, location_name: 'branch'))
    Event.type = Types::Event
    EventList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Event)
    FilterInput.add_member(:branch, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BranchFilter, location_name: 'branch'))
    FilterInput.type = Types::FilterInput
    GetBrowserSessionRequest.add_member(:browser_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'browserIdentifier', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetBrowserSessionRequest.add_member(:session_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BrowserSessionId, location_name: 'sessionId', traits: {"smithy.api#httpQuery" => "sessionId", "smithy.api#required" => {}}))
    GetBrowserSessionRequest.type = Types::GetBrowserSessionRequest
    GetBrowserSessionResponse.add_member(:browser_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'browserIdentifier', traits: {"smithy.api#required" => {}}))
    GetBrowserSessionResponse.add_member(:session_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BrowserSessionId, location_name: 'sessionId', traits: {"smithy.api#required" => {}}))
    GetBrowserSessionResponse.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name'))
    GetBrowserSessionResponse.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimestamp, location_name: 'createdAt', traits: {"smithy.api#required" => {}}))
    GetBrowserSessionResponse.add_member(:view_port, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ViewPort, location_name: 'viewPort'))
    GetBrowserSessionResponse.add_member(:session_timeout_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BrowserSessionTimeout, location_name: 'sessionTimeoutSeconds'))
    GetBrowserSessionResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BrowserSessionStatus, location_name: 'status'))
    GetBrowserSessionResponse.add_member(:streams, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BrowserSessionStream, location_name: 'streams'))
    GetBrowserSessionResponse.add_member(:session_replay_artifact, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'sessionReplayArtifact'))
    GetBrowserSessionResponse.add_member(:last_updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimestamp, location_name: 'lastUpdatedAt'))
    GetBrowserSessionResponse.type = Types::GetBrowserSessionResponse
    GetCodeInterpreterSessionRequest.add_member(:code_interpreter_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'codeInterpreterIdentifier', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetCodeInterpreterSessionRequest.add_member(:session_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CodeInterpreterSessionId, location_name: 'sessionId', traits: {"smithy.api#httpQuery" => "sessionId", "smithy.api#required" => {}}))
    GetCodeInterpreterSessionRequest.type = Types::GetCodeInterpreterSessionRequest
    GetCodeInterpreterSessionResponse.add_member(:code_interpreter_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'codeInterpreterIdentifier', traits: {"smithy.api#required" => {}}))
    GetCodeInterpreterSessionResponse.add_member(:session_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CodeInterpreterSessionId, location_name: 'sessionId', traits: {"smithy.api#required" => {}}))
    GetCodeInterpreterSessionResponse.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name'))
    GetCodeInterpreterSessionResponse.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimestamp, location_name: 'createdAt', traits: {"smithy.api#required" => {}}))
    GetCodeInterpreterSessionResponse.add_member(:session_timeout_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CodeInterpreterSessionTimeout, location_name: 'sessionTimeoutSeconds'))
    GetCodeInterpreterSessionResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CodeInterpreterSessionStatus, location_name: 'status'))
    GetCodeInterpreterSessionResponse.type = Types::GetCodeInterpreterSessionResponse
    GetEventInput.add_member(:memory_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MemoryId, location_name: 'memoryId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetEventInput.add_member(:session_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SessionId, location_name: 'sessionId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetEventInput.add_member(:actor_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ActorId, location_name: 'actorId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetEventInput.add_member(:event_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventId, location_name: 'eventId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetEventInput.type = Types::GetEventInput
    GetEventOutput.add_member(:event, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Event, location_name: 'event', traits: {"smithy.api#required" => {}}))
    GetEventOutput.type = Types::GetEventOutput
    GetMemoryRecordInput.add_member(:memory_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MemoryId, location_name: 'memoryId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetMemoryRecordInput.add_member(:memory_record_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'memoryRecordId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetMemoryRecordInput.type = Types::GetMemoryRecordInput
    GetMemoryRecordOutput.add_member(:memory_record, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MemoryRecord, location_name: 'memoryRecord', traits: {"smithy.api#required" => {}}))
    GetMemoryRecordOutput.type = Types::GetMemoryRecordOutput
    GetResourceApiKeyRequest.add_member(:workload_identity_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadIdentityTokenType, location_name: 'workloadIdentityToken', traits: {"smithy.api#required" => {}}))
    GetResourceApiKeyRequest.add_member(:resource_credential_provider_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CredentialProviderName, location_name: 'resourceCredentialProviderName', traits: {"smithy.api#required" => {}}))
    GetResourceApiKeyRequest.type = Types::GetResourceApiKeyRequest
    GetResourceApiKeyResponse.add_member(:api_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApiKeyType, location_name: 'apiKey', traits: {"smithy.api#required" => {}}))
    GetResourceApiKeyResponse.type = Types::GetResourceApiKeyResponse
    GetResourceOauth2TokenRequest.add_member(:workload_identity_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadIdentityTokenType, location_name: 'workloadIdentityToken', traits: {"smithy.api#required" => {}}))
    GetResourceOauth2TokenRequest.add_member(:resource_credential_provider_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CredentialProviderName, location_name: 'resourceCredentialProviderName', traits: {"smithy.api#required" => {}}))
    GetResourceOauth2TokenRequest.add_member(:scopes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScopesListType, location_name: 'scopes', traits: {"smithy.api#required" => {}}))
    GetResourceOauth2TokenRequest.add_member(:oauth2_flow, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Oauth2FlowType, location_name: 'oauth2Flow', traits: {"smithy.api#required" => {}}))
    GetResourceOauth2TokenRequest.add_member(:resource_oauth2_return_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceOauth2ReturnUrlType, location_name: 'resourceOauth2ReturnUrl'))
    GetResourceOauth2TokenRequest.add_member(:force_authentication, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'forceAuthentication'))
    GetResourceOauth2TokenRequest.add_member(:custom_parameters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomRequestParametersType, location_name: 'customParameters'))
    GetResourceOauth2TokenRequest.type = Types::GetResourceOauth2TokenRequest
    GetResourceOauth2TokenResponse.add_member(:authorization_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'authorizationUrl'))
    GetResourceOauth2TokenResponse.add_member(:access_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessTokenType, location_name: 'accessToken'))
    GetResourceOauth2TokenResponse.type = Types::GetResourceOauth2TokenResponse
    GetWorkloadAccessTokenForJWTRequest.add_member(:workload_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadIdentityNameType, location_name: 'workloadName', traits: {"smithy.api#required" => {}}))
    GetWorkloadAccessTokenForJWTRequest.add_member(:user_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserTokenType, location_name: 'userToken', traits: {"smithy.api#required" => {}}))
    GetWorkloadAccessTokenForJWTRequest.type = Types::GetWorkloadAccessTokenForJWTRequest
    GetWorkloadAccessTokenForJWTResponse.add_member(:workload_access_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadIdentityTokenType, location_name: 'workloadAccessToken', traits: {"smithy.api#required" => {}}))
    GetWorkloadAccessTokenForJWTResponse.type = Types::GetWorkloadAccessTokenForJWTResponse
    GetWorkloadAccessTokenForUserIdRequest.add_member(:workload_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadIdentityNameType, location_name: 'workloadName', traits: {"smithy.api#required" => {}}))
    GetWorkloadAccessTokenForUserIdRequest.add_member(:user_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserIdType, location_name: 'userId', traits: {"smithy.api#required" => {}}))
    GetWorkloadAccessTokenForUserIdRequest.type = Types::GetWorkloadAccessTokenForUserIdRequest
    GetWorkloadAccessTokenForUserIdResponse.add_member(:workload_access_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadIdentityTokenType, location_name: 'workloadAccessToken', traits: {"smithy.api#required" => {}}))
    GetWorkloadAccessTokenForUserIdResponse.type = Types::GetWorkloadAccessTokenForUserIdResponse
    GetWorkloadAccessTokenRequest.add_member(:workload_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadIdentityNameType, location_name: 'workloadName', traits: {"smithy.api#required" => {}}))
    GetWorkloadAccessTokenRequest.type = Types::GetWorkloadAccessTokenRequest
    GetWorkloadAccessTokenResponse.add_member(:workload_access_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadIdentityTokenType, location_name: 'workloadAccessToken', traits: {"smithy.api#required" => {}}))
    GetWorkloadAccessTokenResponse.type = Types::GetWorkloadAccessTokenResponse
    InputContentBlock.add_member(:path, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxLenString, location_name: 'path', traits: {"smithy.api#required" => {}}))
    InputContentBlock.add_member(:text, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxLenString, location_name: 'text'))
    InputContentBlock.add_member(:blob, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Body, location_name: 'blob'))
    InputContentBlock.type = Types::InputContentBlock
    InputContentBlockList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: InputContentBlock)
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonBlankString, location_name: 'message'))
    InternalServerException.type = Types::InternalServerException
    InvalidInputException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    InvalidInputException.type = Types::InvalidInputException
    InvokeAgentRuntimeRequest.add_member(:content_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MimeType, location_name: 'contentType', traits: {"smithy.api#httpHeader" => "Content-Type"}))
    InvokeAgentRuntimeRequest.add_member(:accept, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MimeType, location_name: 'accept', traits: {"smithy.api#httpHeader" => "Accept"}))
    InvokeAgentRuntimeRequest.add_member(:mcp_session_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringType, location_name: 'mcpSessionId', traits: {"smithy.api#httpHeader" => "Mcp-Session-Id"}))
    InvokeAgentRuntimeRequest.add_member(:runtime_session_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SessionType, location_name: 'runtimeSessionId', traits: {"smithy.api#httpHeader" => "X-Amzn-Bedrock-AgentCore-Runtime-Session-Id", "smithy.api#idempotencyToken" => {}}))
    InvokeAgentRuntimeRequest.add_member(:mcp_protocol_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringType, location_name: 'mcpProtocolVersion', traits: {"smithy.api#httpHeader" => "Mcp-Protocol-Version"}))
    InvokeAgentRuntimeRequest.add_member(:runtime_user_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringType, location_name: 'runtimeUserId', traits: {"smithy.api#httpHeader" => "X-Amzn-Bedrock-AgentCore-Runtime-User-Id"}))
    InvokeAgentRuntimeRequest.add_member(:trace_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'traceId', traits: {"smithy.api#httpHeader" => "X-Amzn-Trace-Id", "smithy.api#length" => {"min" => 0, "max" => 128}}))
    InvokeAgentRuntimeRequest.add_member(:trace_parent, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'traceParent', traits: {"smithy.api#httpHeader" => "traceparent", "smithy.api#length" => {"min" => 0, "max" => 128}}))
    InvokeAgentRuntimeRequest.add_member(:trace_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'traceState', traits: {"smithy.api#httpHeader" => "tracestate", "smithy.api#length" => {"min" => 0, "max" => 512}}))
    InvokeAgentRuntimeRequest.add_member(:baggage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'baggage', traits: {"smithy.api#httpHeader" => "baggage", "smithy.api#length" => {"min" => 0, "max" => 8192}}))
    InvokeAgentRuntimeRequest.add_member(:agent_runtime_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'agentRuntimeArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    InvokeAgentRuntimeRequest.add_member(:qualifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'qualifier', traits: {"smithy.api#httpQuery" => "qualifier"}))
    InvokeAgentRuntimeRequest.add_member(:payload, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Body, location_name: 'payload', traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    InvokeAgentRuntimeRequest[:http_payload] = :payload
    InvokeAgentRuntimeRequest[:http_payload_member] = InvokeAgentRuntimeRequest.member(:payload)
    InvokeAgentRuntimeRequest.type = Types::InvokeAgentRuntimeRequest
    InvokeAgentRuntimeResponse.add_member(:runtime_session_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SessionId, location_name: 'runtimeSessionId', traits: {"smithy.api#httpHeader" => "X-Amzn-Bedrock-AgentCore-Runtime-Session-Id"}))
    InvokeAgentRuntimeResponse.add_member(:mcp_session_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SessionId, location_name: 'mcpSessionId', traits: {"smithy.api#httpHeader" => "Mcp-Session-Id"}))
    InvokeAgentRuntimeResponse.add_member(:mcp_protocol_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'mcpProtocolVersion', traits: {"smithy.api#httpHeader" => "Mcp-Protocol-Version"}))
    InvokeAgentRuntimeResponse.add_member(:trace_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'traceId', traits: {"smithy.api#httpHeader" => "X-Amzn-Trace-Id"}))
    InvokeAgentRuntimeResponse.add_member(:trace_parent, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'traceParent', traits: {"smithy.api#httpHeader" => "traceparent"}))
    InvokeAgentRuntimeResponse.add_member(:trace_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'traceState', traits: {"smithy.api#httpHeader" => "tracestate"}))
    InvokeAgentRuntimeResponse.add_member(:baggage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'baggage', traits: {"smithy.api#httpHeader" => "baggage"}))
    InvokeAgentRuntimeResponse.add_member(:content_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'contentType', traits: {"smithy.api#httpHeader" => "Content-Type", "smithy.api#required" => {}}))
    InvokeAgentRuntimeResponse.add_member(:response, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResponseStream, location_name: 'response', traits: {"smithy.api#default" => "", "smithy.api#httpPayload" => {}}))
    InvokeAgentRuntimeResponse.add_member(:status_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HttpResponseCode, location_name: 'statusCode', traits: {"smithy.api#httpResponseCode" => {}}))
    InvokeAgentRuntimeResponse[:http_payload] = :response
    InvokeAgentRuntimeResponse[:http_payload_member] = InvokeAgentRuntimeResponse.member(:response)
    InvokeAgentRuntimeResponse.type = Types::InvokeAgentRuntimeResponse
    InvokeCodeInterpreterRequest.add_member(:code_interpreter_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'codeInterpreterIdentifier', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    InvokeCodeInterpreterRequest.add_member(:session_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CodeInterpreterSessionId, location_name: 'sessionId', traits: {"smithy.api#httpHeader" => "x-amzn-code-interpreter-session-id"}))
    InvokeCodeInterpreterRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ToolName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    InvokeCodeInterpreterRequest.add_member(:arguments, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ToolArguments, location_name: 'arguments'))
    InvokeCodeInterpreterRequest.type = Types::InvokeCodeInterpreterRequest
    InvokeCodeInterpreterResponse.add_member(:session_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CodeInterpreterSessionId, location_name: 'sessionId', traits: {"smithy.api#httpHeader" => "x-amzn-code-interpreter-session-id"}))
    InvokeCodeInterpreterResponse.add_member(:stream, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CodeInterpreterStreamOutput, location_name: 'stream', traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    InvokeCodeInterpreterResponse[:http_payload] = :stream
    InvokeCodeInterpreterResponse[:http_payload_member] = InvokeCodeInterpreterResponse.member(:stream)
    InvokeCodeInterpreterResponse.type = Types::InvokeCodeInterpreterResponse
    ListActorsInput.add_member(:memory_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MemoryId, location_name: 'memoryId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListActorsInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#default" => 100}))
    ListActorsInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken'))
    ListActorsInput.type = Types::ListActorsInput
    ListActorsOutput.add_member(:actor_summaries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ActorSummaryList, location_name: 'actorSummaries', traits: {"smithy.api#required" => {}}))
    ListActorsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken'))
    ListActorsOutput.type = Types::ListActorsOutput
    ListBrowserSessionsRequest.add_member(:browser_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'browserIdentifier', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListBrowserSessionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults'))
    ListBrowserSessionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    ListBrowserSessionsRequest.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BrowserSessionStatus, location_name: 'status'))
    ListBrowserSessionsRequest.type = Types::ListBrowserSessionsRequest
    ListBrowserSessionsResponse.add_member(:items, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BrowserSessionSummaries, location_name: 'items', traits: {"smithy.api#required" => {}}))
    ListBrowserSessionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    ListBrowserSessionsResponse.type = Types::ListBrowserSessionsResponse
    ListCodeInterpreterSessionsRequest.add_member(:code_interpreter_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'codeInterpreterIdentifier', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListCodeInterpreterSessionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults'))
    ListCodeInterpreterSessionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    ListCodeInterpreterSessionsRequest.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CodeInterpreterSessionStatus, location_name: 'status'))
    ListCodeInterpreterSessionsRequest.type = Types::ListCodeInterpreterSessionsRequest
    ListCodeInterpreterSessionsResponse.add_member(:items, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CodeInterpreterSessionSummaries, location_name: 'items', traits: {"smithy.api#required" => {}}))
    ListCodeInterpreterSessionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    ListCodeInterpreterSessionsResponse.type = Types::ListCodeInterpreterSessionsResponse
    ListEventsInput.add_member(:memory_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MemoryId, location_name: 'memoryId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListEventsInput.add_member(:session_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SessionId, location_name: 'sessionId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListEventsInput.add_member(:actor_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ActorId, location_name: 'actorId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListEventsInput.add_member(:include_payloads, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'includePayloads', traits: {"smithy.api#default" => true}))
    ListEventsInput.add_member(:filter, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterInput, location_name: 'filter'))
    ListEventsInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#default" => 100}))
    ListEventsInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken'))
    ListEventsInput.type = Types::ListEventsInput
    ListEventsOutput.add_member(:events, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventList, location_name: 'events', traits: {"smithy.api#required" => {}}))
    ListEventsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken'))
    ListEventsOutput.type = Types::ListEventsOutput
    ListMemoryRecordsInput.add_member(:memory_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MemoryId, location_name: 'memoryId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListMemoryRecordsInput.add_member(:namespace, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Namespace, location_name: 'namespace', traits: {"smithy.api#required" => {}}))
    ListMemoryRecordsInput.add_member(:memory_strategy_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MemoryStrategyId, location_name: 'memoryStrategyId'))
    ListMemoryRecordsInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#default" => 100}))
    ListMemoryRecordsInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken'))
    ListMemoryRecordsInput.type = Types::ListMemoryRecordsInput
    ListMemoryRecordsOutput.add_member(:memory_record_summaries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MemoryRecordSummaryList, location_name: 'memoryRecordSummaries', traits: {"smithy.api#required" => {}}))
    ListMemoryRecordsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken'))
    ListMemoryRecordsOutput.type = Types::ListMemoryRecordsOutput
    ListSessionsInput.add_member(:memory_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MemoryId, location_name: 'memoryId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListSessionsInput.add_member(:actor_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ActorId, location_name: 'actorId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListSessionsInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#default" => 100}))
    ListSessionsInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken'))
    ListSessionsInput.type = Types::ListSessionsInput
    ListSessionsOutput.add_member(:session_summaries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SessionSummaryList, location_name: 'sessionSummaries', traits: {"smithy.api#required" => {}}))
    ListSessionsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken'))
    ListSessionsOutput.type = Types::ListSessionsOutput
    LiveViewStream.add_member(:stream_endpoint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BrowserStreamEndpoint, location_name: 'streamEndpoint'))
    LiveViewStream.type = Types::LiveViewStream
    MemoryContent.add_member(:text, Types::MemoryContent::Text, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveString, location_name: 'text'))
    MemoryContent.add_member(:unknown, Types::MemoryContent::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    MemoryContent.type = Types::MemoryContent
    MemoryRecord.add_member(:memory_record_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MemoryRecordId, location_name: 'memoryRecordId', traits: {"smithy.api#required" => {}}))
    MemoryRecord.add_member(:content, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MemoryContent, location_name: 'content', traits: {"smithy.api#required" => {}}))
    MemoryRecord.add_member(:memory_strategy_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MemoryStrategyId, location_name: 'memoryStrategyId', traits: {"smithy.api#required" => {}}))
    MemoryRecord.add_member(:namespaces, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NamespacesList, location_name: 'namespaces', traits: {"smithy.api#required" => {}}))
    MemoryRecord.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdAt', traits: {"smithy.api#required" => {}}))
    MemoryRecord.type = Types::MemoryRecord
    MemoryRecordSummary.add_member(:memory_record_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MemoryRecordId, location_name: 'memoryRecordId', traits: {"smithy.api#required" => {}}))
    MemoryRecordSummary.add_member(:content, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MemoryContent, location_name: 'content', traits: {"smithy.api#required" => {}}))
    MemoryRecordSummary.add_member(:memory_strategy_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MemoryStrategyId, location_name: 'memoryStrategyId', traits: {"smithy.api#required" => {}}))
    MemoryRecordSummary.add_member(:namespaces, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NamespacesList, location_name: 'namespaces', traits: {"smithy.api#required" => {}}))
    MemoryRecordSummary.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdAt', traits: {"smithy.api#required" => {}}))
    MemoryRecordSummary.add_member(:score, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Double, location_name: 'score'))
    MemoryRecordSummary.type = Types::MemoryRecordSummary
    MemoryRecordSummaryList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: MemoryRecordSummary)
    NamespacesList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Namespace)
    Oauth2FlowType.add_member(:user_federation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'USER_FEDERATION', traits: {"smithy.api#enumValue" => "USER_FEDERATION"}))
    Oauth2FlowType.add_member(:m2_m, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'M2M', traits: {"smithy.api#enumValue" => "M2M"}))
    PayloadType.add_member(:conversational, Types::PayloadType::Conversational, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Conversational, location_name: 'conversational'))
    PayloadType.add_member(:blob, Types::PayloadType::Blob, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Document, location_name: 'blob'))
    PayloadType.add_member(:unknown, Types::PayloadType::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    PayloadType.type = Types::PayloadType
    PayloadTypeList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadType)
    ProgrammingLanguage.add_member(:python, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PYTHON', traits: {"smithy.api#enumValue" => "python"}))
    ProgrammingLanguage.add_member(:javascript, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'JAVASCRIPT', traits: {"smithy.api#enumValue" => "javascript"}))
    ProgrammingLanguage.add_member(:typescript, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TYPESCRIPT', traits: {"smithy.api#enumValue" => "typescript"}))
    ResourceContent.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceContentType, location_name: 'type', traits: {"smithy.api#required" => {}}))
    ResourceContent.add_member(:uri, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'uri'))
    ResourceContent.add_member(:mime_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'mimeType'))
    ResourceContent.add_member(:text, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'text'))
    ResourceContent.add_member(:blob, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Blob, location_name: 'blob'))
    ResourceContent.type = Types::ResourceContent
    ResourceContentType.add_member(:text, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TEXT', traits: {"smithy.api#enumValue" => "text"}))
    ResourceContentType.add_member(:blob, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BLOB', traits: {"smithy.api#enumValue" => "blob"}))
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonBlankString, location_name: 'message'))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    RetrieveMemoryRecordsInput.add_member(:memory_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MemoryId, location_name: 'memoryId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RetrieveMemoryRecordsInput.add_member(:namespace, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Namespace, location_name: 'namespace', traits: {"smithy.api#required" => {}}))
    RetrieveMemoryRecordsInput.add_member(:search_criteria, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SearchCriteria, location_name: 'searchCriteria', traits: {"smithy.api#required" => {}}))
    RetrieveMemoryRecordsInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken'))
    RetrieveMemoryRecordsInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#default" => 100}))
    RetrieveMemoryRecordsInput.type = Types::RetrieveMemoryRecordsInput
    RetrieveMemoryRecordsOutput.add_member(:memory_record_summaries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MemoryRecordSummaryList, location_name: 'memoryRecordSummaries', traits: {"smithy.api#required" => {}}))
    RetrieveMemoryRecordsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken'))
    RetrieveMemoryRecordsOutput.type = Types::RetrieveMemoryRecordsOutput
    Role.add_member(:assistant, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ASSISTANT', traits: {"smithy.api#enumValue" => "ASSISTANT"}))
    Role.add_member(:user, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'USER', traits: {"smithy.api#enumValue" => "USER"}))
    Role.add_member(:tool, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TOOL', traits: {"smithy.api#enumValue" => "TOOL"}))
    Role.add_member(:other, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OTHER', traits: {"smithy.api#enumValue" => "OTHER"}))
    RuntimeClientError.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonBlankString, location_name: 'message'))
    RuntimeClientError.type = Types::RuntimeClientError
    ScopesListType.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScopeType)
    SearchCriteria.add_member(:search_query, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveString, location_name: 'searchQuery', traits: {"smithy.api#length" => {"min" => 1, "max" => 10000}, "smithy.api#required" => {}}))
    SearchCriteria.add_member(:memory_strategy_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MemoryStrategyId, location_name: 'memoryStrategyId'))
    SearchCriteria.add_member(:top_k, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'topK', traits: {"smithy.api#default" => 10, "smithy.api#range" => {"min" => 1, "max" => 100}}))
    SearchCriteria.type = Types::SearchCriteria
    ServiceException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ServiceException.type = Types::ServiceException
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonBlankString, location_name: 'message'))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    SessionSummary.add_member(:session_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SessionId, location_name: 'sessionId', traits: {"smithy.api#required" => {}}))
    SessionSummary.add_member(:actor_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ActorId, location_name: 'actorId', traits: {"smithy.api#required" => {}}))
    SessionSummary.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdAt', traits: {"smithy.api#required" => {}}))
    SessionSummary.type = Types::SessionSummary
    SessionSummaryList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SessionSummary)
    StartBrowserSessionRequest.add_member(:browser_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'browserIdentifier', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartBrowserSessionRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name'))
    StartBrowserSessionRequest.add_member(:session_timeout_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BrowserSessionTimeout, location_name: 'sessionTimeoutSeconds', traits: {"smithy.api#default" => 3600}))
    StartBrowserSessionRequest.add_member(:view_port, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ViewPort, location_name: 'viewPort'))
    StartBrowserSessionRequest.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#idempotencyToken" => {}}))
    StartBrowserSessionRequest.type = Types::StartBrowserSessionRequest
    StartBrowserSessionResponse.add_member(:browser_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'browserIdentifier', traits: {"smithy.api#required" => {}}))
    StartBrowserSessionResponse.add_member(:session_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BrowserSessionId, location_name: 'sessionId', traits: {"smithy.api#required" => {}}))
    StartBrowserSessionResponse.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimestamp, location_name: 'createdAt', traits: {"smithy.api#required" => {}}))
    StartBrowserSessionResponse.add_member(:streams, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BrowserSessionStream, location_name: 'streams'))
    StartBrowserSessionResponse.type = Types::StartBrowserSessionResponse
    StartCodeInterpreterSessionRequest.add_member(:code_interpreter_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'codeInterpreterIdentifier', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartCodeInterpreterSessionRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name'))
    StartCodeInterpreterSessionRequest.add_member(:session_timeout_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CodeInterpreterSessionTimeout, location_name: 'sessionTimeoutSeconds', traits: {"smithy.api#default" => 900}))
    StartCodeInterpreterSessionRequest.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#idempotencyToken" => {}}))
    StartCodeInterpreterSessionRequest.type = Types::StartCodeInterpreterSessionRequest
    StartCodeInterpreterSessionResponse.add_member(:code_interpreter_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'codeInterpreterIdentifier', traits: {"smithy.api#required" => {}}))
    StartCodeInterpreterSessionResponse.add_member(:session_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CodeInterpreterSessionId, location_name: 'sessionId', traits: {"smithy.api#required" => {}}))
    StartCodeInterpreterSessionResponse.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimestamp, location_name: 'createdAt', traits: {"smithy.api#required" => {}}))
    StartCodeInterpreterSessionResponse.type = Types::StartCodeInterpreterSessionResponse
    StopBrowserSessionRequest.add_member(:browser_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'browserIdentifier', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StopBrowserSessionRequest.add_member(:session_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BrowserSessionId, location_name: 'sessionId', traits: {"smithy.api#httpQuery" => "sessionId", "smithy.api#required" => {}}))
    StopBrowserSessionRequest.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#idempotencyToken" => {}}))
    StopBrowserSessionRequest.type = Types::StopBrowserSessionRequest
    StopBrowserSessionResponse.add_member(:browser_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'browserIdentifier', traits: {"smithy.api#required" => {}}))
    StopBrowserSessionResponse.add_member(:session_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BrowserSessionId, location_name: 'sessionId', traits: {"smithy.api#required" => {}}))
    StopBrowserSessionResponse.add_member(:last_updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimestamp, location_name: 'lastUpdatedAt', traits: {"smithy.api#required" => {}}))
    StopBrowserSessionResponse.type = Types::StopBrowserSessionResponse
    StopCodeInterpreterSessionRequest.add_member(:code_interpreter_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'codeInterpreterIdentifier', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StopCodeInterpreterSessionRequest.add_member(:session_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CodeInterpreterSessionId, location_name: 'sessionId', traits: {"smithy.api#httpQuery" => "sessionId", "smithy.api#required" => {}}))
    StopCodeInterpreterSessionRequest.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#idempotencyToken" => {}}))
    StopCodeInterpreterSessionRequest.type = Types::StopCodeInterpreterSessionRequest
    StopCodeInterpreterSessionResponse.add_member(:code_interpreter_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'codeInterpreterIdentifier', traits: {"smithy.api#required" => {}}))
    StopCodeInterpreterSessionResponse.add_member(:session_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CodeInterpreterSessionId, location_name: 'sessionId', traits: {"smithy.api#required" => {}}))
    StopCodeInterpreterSessionResponse.add_member(:last_updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimestamp, location_name: 'lastUpdatedAt', traits: {"smithy.api#required" => {}}))
    StopCodeInterpreterSessionResponse.type = Types::StopCodeInterpreterSessionResponse
    StreamUpdate.add_member(:automation_stream_update, Types::StreamUpdate::AutomationStreamUpdate, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomationStreamUpdate, location_name: 'automationStreamUpdate'))
    StreamUpdate.add_member(:unknown, Types::StreamUpdate::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    StreamUpdate.type = Types::StreamUpdate
    StringList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxLenString)
    TaskStatus.add_member(:submitted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUBMITTED', traits: {"smithy.api#enumValue" => "submitted"}))
    TaskStatus.add_member(:working, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WORKING', traits: {"smithy.api#enumValue" => "working"}))
    TaskStatus.add_member(:completed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPLETED', traits: {"smithy.api#enumValue" => "completed"}))
    TaskStatus.add_member(:canceled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CANCELED', traits: {"smithy.api#enumValue" => "canceled"}))
    TaskStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "failed"}))
    ThrottledException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ThrottledException.type = Types::ThrottledException
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonBlankString, location_name: 'message'))
    ThrottlingException.type = Types::ThrottlingException
    ToolArguments.add_member(:code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxLenString, location_name: 'code'))
    ToolArguments.add_member(:language, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProgrammingLanguage, location_name: 'language'))
    ToolArguments.add_member(:clear_context, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'clearContext'))
    ToolArguments.add_member(:command, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxLenString, location_name: 'command'))
    ToolArguments.add_member(:path, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxLenString, location_name: 'path'))
    ToolArguments.add_member(:paths, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'paths'))
    ToolArguments.add_member(:content, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InputContentBlockList, location_name: 'content'))
    ToolArguments.add_member(:directory_path, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxLenString, location_name: 'directoryPath'))
    ToolArguments.add_member(:task_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxLenString, location_name: 'taskId'))
    ToolArguments.type = Types::ToolArguments
    ToolName.add_member(:execute_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EXECUTE_CODE', traits: {"smithy.api#enumValue" => "executeCode"}))
    ToolName.add_member(:execute_command, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EXECUTE_COMMAND', traits: {"smithy.api#enumValue" => "executeCommand"}))
    ToolName.add_member(:read_files, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'READ_FILES', traits: {"smithy.api#enumValue" => "readFiles"}))
    ToolName.add_member(:list_files, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LIST_FILES', traits: {"smithy.api#enumValue" => "listFiles"}))
    ToolName.add_member(:remove_files, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REMOVE_FILES', traits: {"smithy.api#enumValue" => "removeFiles"}))
    ToolName.add_member(:write_files, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WRITE_FILES', traits: {"smithy.api#enumValue" => "writeFiles"}))
    ToolName.add_member(:start_command_execution, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'START_COMMAND_EXECUTION', traits: {"smithy.api#enumValue" => "startCommandExecution"}))
    ToolName.add_member(:get_task, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GET_TASK', traits: {"smithy.api#enumValue" => "getTask"}))
    ToolName.add_member(:stop_task, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STOP_TASK', traits: {"smithy.api#enumValue" => "stopTask"}))
    ToolResultStructuredContent.add_member(:task_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'taskId'))
    ToolResultStructuredContent.add_member(:task_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TaskStatus, location_name: 'taskStatus'))
    ToolResultStructuredContent.add_member(:stdout, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'stdout'))
    ToolResultStructuredContent.add_member(:stderr, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'stderr'))
    ToolResultStructuredContent.add_member(:exit_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'exitCode'))
    ToolResultStructuredContent.add_member(:execution_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Double, location_name: 'executionTime'))
    ToolResultStructuredContent.type = Types::ToolResultStructuredContent
    UnauthorizedException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonBlankString, location_name: 'message'))
    UnauthorizedException.type = Types::UnauthorizedException
    UpdateBrowserStreamRequest.add_member(:browser_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'browserIdentifier', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateBrowserStreamRequest.add_member(:session_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BrowserSessionId, location_name: 'sessionId', traits: {"smithy.api#httpQuery" => "sessionId", "smithy.api#required" => {}}))
    UpdateBrowserStreamRequest.add_member(:stream_update, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StreamUpdate, location_name: 'streamUpdate', traits: {"smithy.api#required" => {}}))
    UpdateBrowserStreamRequest.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#idempotencyToken" => {}}))
    UpdateBrowserStreamRequest.type = Types::UpdateBrowserStreamRequest
    UpdateBrowserStreamResponse.add_member(:browser_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'browserIdentifier', traits: {"smithy.api#required" => {}}))
    UpdateBrowserStreamResponse.add_member(:session_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BrowserSessionId, location_name: 'sessionId', traits: {"smithy.api#required" => {}}))
    UpdateBrowserStreamResponse.add_member(:streams, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BrowserSessionStream, location_name: 'streams', traits: {"smithy.api#required" => {}}))
    UpdateBrowserStreamResponse.add_member(:updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimestamp, location_name: 'updatedAt', traits: {"smithy.api#required" => {}}))
    UpdateBrowserStreamResponse.type = Types::UpdateBrowserStreamResponse
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ValidationException.add_member(:reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionReason, location_name: 'reason', traits: {"smithy.api#required" => {}}))
    ValidationException.add_member(:field_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionFieldList, location_name: 'fieldList'))
    ValidationException.type = Types::ValidationException
    ValidationExceptionField.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'name', traits: {"smithy.api#required" => {}}))
    ValidationExceptionField.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ValidationExceptionField.type = Types::ValidationExceptionField
    ValidationExceptionFieldList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionField)
    ValidationExceptionReason.add_member(:cannot_parse, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CANNOT_PARSE', traits: {"smithy.api#enumValue" => "CannotParse"}))
    ValidationExceptionReason.add_member(:field_validation_failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FIELD_VALIDATION_FAILED', traits: {"smithy.api#enumValue" => "FieldValidationFailed"}))
    ValidationExceptionReason.add_member(:idempotent_parameter_mismatch_exception, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IDEMPOTENT_PARAMETER_MISMATCH_EXCEPTION', traits: {"smithy.api#enumValue" => "IdempotentParameterMismatchException"}))
    ValidationExceptionReason.add_member(:root_event_in_other_session, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ROOT_EVENT_IN_OTHER_SESSION', traits: {"smithy.api#enumValue" => "EventInOtherSession"}))
    ValidationExceptionReason.add_member(:resource_conflict, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RESOURCE_CONFLICT', traits: {"smithy.api#enumValue" => "ResourceConflict"}))
    ViewPort.add_member(:width, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ViewPortWidth, location_name: 'width', traits: {"smithy.api#required" => {}}))
    ViewPort.add_member(:height, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ViewPortHeight, location_name: 'height', traits: {"smithy.api#required" => {}}))
    ViewPort.type = Types::ViewPort

    AmazonBedrockAgentCore = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.bedrockagentcore#AmazonBedrockAgentCore"
      service.name = "AmazonBedrockAgentCore"
      service.version = "2024-02-28"
      service.traits = {"aws.api#service" => {"sdkId" => "Bedrock AgentCore", "arnNamespace" => "bedrock-agentcore", "endpointPrefix" => "bedrock-agentcore"}, "aws.auth#sigv4" => {"name" => "bedrock-agentcore"}, "aws.protocols#restJson1" => {"http" => ["http/1.1"], "eventStreamHttp" => ["http/1.1"]}, "smithy.api#title" => "Amazon Bedrock AgentCore Data Plane Fronting Layer"}
      service.add_operation(:create_event, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentcore#CreateEvent"
        operation.name = "CreateEvent"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateEventInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateEventOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/memories/{memoryId}/events"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_event, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentcore#DeleteEvent"
        operation.name = "DeleteEvent"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteEventInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteEventOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/memories/{memoryId}/actor/{actorId}/sessions/{sessionId}/events/{eventId}"}}
      end)
      service.add_operation(:delete_memory_record, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentcore#DeleteMemoryRecord"
        operation.name = "DeleteMemoryRecord"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteMemoryRecordInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteMemoryRecordOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/memories/{memoryId}/memoryRecords/{memoryRecordId}"}}
      end)
      service.add_operation(:get_browser_session, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentcore#GetBrowserSession"
        operation.name = "GetBrowserSession"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetBrowserSessionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetBrowserSessionResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/browsers/{browserIdentifier}/sessions/get", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_code_interpreter_session, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentcore#GetCodeInterpreterSession"
        operation.name = "GetCodeInterpreterSession"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetCodeInterpreterSessionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetCodeInterpreterSessionResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/code-interpreters/{codeInterpreterIdentifier}/sessions/get", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_event, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentcore#GetEvent"
        operation.name = "GetEvent"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetEventInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetEventOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/memories/{memoryId}/actor/{actorId}/sessions/{sessionId}/events/{eventId}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_memory_record, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentcore#GetMemoryRecord"
        operation.name = "GetMemoryRecord"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetMemoryRecordInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetMemoryRecordOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/memories/{memoryId}/memoryRecord/{memoryRecordId}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_resource_api_key, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentcore#GetResourceApiKey"
        operation.name = "GetResourceApiKey"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetResourceApiKeyRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetResourceApiKeyResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#dataPlane" => {}, "smithy.api#http" => {"uri" => "/identities/api-key", "method" => "POST"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_resource_oauth2_token, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentcore#GetResourceOauth2Token"
        operation.name = "GetResourceOauth2Token"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetResourceOauth2TokenRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetResourceOauth2TokenResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#dataPlane" => {}, "smithy.api#http" => {"uri" => "/identities/oauth2/token", "method" => "POST"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_workload_access_token, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentcore#GetWorkloadAccessToken"
        operation.name = "GetWorkloadAccessToken"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetWorkloadAccessTokenRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetWorkloadAccessTokenResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#dataPlane" => {}, "smithy.api#http" => {"uri" => "/identities/GetWorkloadAccessToken", "method" => "POST"}}
      end)
      service.add_operation(:get_workload_access_token_for_jwt, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentcore#GetWorkloadAccessTokenForJWT"
        operation.name = "GetWorkloadAccessTokenForJWT"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetWorkloadAccessTokenForJWTRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetWorkloadAccessTokenForJWTResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#dataPlane" => {}, "smithy.api#http" => {"uri" => "/identities/GetWorkloadAccessTokenForJWT", "method" => "POST"}}
      end)
      service.add_operation(:get_workload_access_token_for_user_id, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentcore#GetWorkloadAccessTokenForUserId"
        operation.name = "GetWorkloadAccessTokenForUserId"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetWorkloadAccessTokenForUserIdRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetWorkloadAccessTokenForUserIdResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#dataPlane" => {}, "smithy.api#http" => {"uri" => "/identities/GetWorkloadAccessTokenForUserId", "method" => "POST"}}
      end)
      service.add_operation(:invoke_agent_runtime, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentcore#InvokeAgentRuntime"
        operation.name = "InvokeAgentRuntime"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvokeAgentRuntimeRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvokeAgentRuntimeResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RuntimeClientError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/runtimes/{agentRuntimeArn}/invocations", "code" => 200}}
      end)
      service.add_operation(:invoke_code_interpreter, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentcore#InvokeCodeInterpreter"
        operation.name = "InvokeCodeInterpreter"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvokeCodeInterpreterRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvokeCodeInterpreterResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/code-interpreters/{codeInterpreterIdentifier}/tools/invoke", "code" => 200}}
      end)
      service.add_operation(:list_actors, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentcore#ListActors"
        operation.name = "ListActors"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListActorsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListActorsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/memories/{memoryId}/actors"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListActors.new
      end)
      service.add_operation(:list_browser_sessions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentcore#ListBrowserSessions"
        operation.name = "ListBrowserSessions"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListBrowserSessionsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListBrowserSessionsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/browsers/{browserIdentifier}/sessions/list", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_code_interpreter_sessions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentcore#ListCodeInterpreterSessions"
        operation.name = "ListCodeInterpreterSessions"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListCodeInterpreterSessionsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListCodeInterpreterSessionsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/code-interpreters/{codeInterpreterIdentifier}/sessions/list", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_events, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentcore#ListEvents"
        operation.name = "ListEvents"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListEventsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListEventsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/memories/{memoryId}/actor/{actorId}/sessions/{sessionId}"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListEvents.new
      end)
      service.add_operation(:list_memory_records, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentcore#ListMemoryRecords"
        operation.name = "ListMemoryRecords"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListMemoryRecordsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListMemoryRecordsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/memories/{memoryId}/memoryRecords"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListMemoryRecords.new
      end)
      service.add_operation(:list_sessions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentcore#ListSessions"
        operation.name = "ListSessions"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListSessionsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListSessionsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/memories/{memoryId}/actor/{actorId}/sessions"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListSessions.new
      end)
      service.add_operation(:retrieve_memory_records, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentcore#RetrieveMemoryRecords"
        operation.name = "RetrieveMemoryRecords"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RetrieveMemoryRecordsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RetrieveMemoryRecordsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/memories/{memoryId}/retrieve"}}
        operation[:paginator] = Paginators::RetrieveMemoryRecords.new
      end)
      service.add_operation(:start_browser_session, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentcore#StartBrowserSession"
        operation.name = "StartBrowserSession"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartBrowserSessionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartBrowserSessionResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/browsers/{browserIdentifier}/sessions/start", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:start_code_interpreter_session, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentcore#StartCodeInterpreterSession"
        operation.name = "StartCodeInterpreterSession"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartCodeInterpreterSessionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartCodeInterpreterSessionResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/code-interpreters/{codeInterpreterIdentifier}/sessions/start", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:stop_browser_session, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentcore#StopBrowserSession"
        operation.name = "StopBrowserSession"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StopBrowserSessionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StopBrowserSessionResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/browsers/{browserIdentifier}/sessions/stop", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:stop_code_interpreter_session, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentcore#StopCodeInterpreterSession"
        operation.name = "StopCodeInterpreterSession"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StopCodeInterpreterSessionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StopCodeInterpreterSessionResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/code-interpreters/{codeInterpreterIdentifier}/sessions/stop", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_browser_stream, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentcore#UpdateBrowserStream"
        operation.name = "UpdateBrowserStream"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateBrowserStreamRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateBrowserStreamResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/browsers/{browserIdentifier}/sessions/streams/update", "code" => 200}, "smithy.api#idempotent" => {}}
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
