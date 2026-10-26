# frozen_string_literal: true

# This is generated code!

module Aws::IoTDataPlane
  # This module contains a schema composed of shapes used by the client.
  module Schema

    CleanSession = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.iotdataplane#CleanSession", name: "CleanSession", traits: {"smithy.api#default" => false})
    ClientId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotdataplane#ClientId", name: "ClientId", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[^$]"})
    Confirmation = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.iotdataplane#Confirmation", name: "Confirmation", traits: {"smithy.api#default" => false})
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotdataplane#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    Connected = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.iotdataplane#Connected", name: "Connected", traits: {"smithy.api#default" => false})
    ContentType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotdataplane#ContentType", name: "ContentType")
    CorrelationData = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotdataplane#CorrelationData", name: "CorrelationData")
    DeleteConnectionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotdataplane#DeleteConnectionRequest", name: "DeleteConnectionRequest")
    DeleteThingShadowRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotdataplane#DeleteThingShadowRequest", name: "DeleteThingShadowRequest")
    DeleteThingShadowResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotdataplane#DeleteThingShadowResponse", name: "DeleteThingShadowResponse")
    DisconnectReason = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotdataplane#DisconnectReason", name: "DisconnectReason")
    ForbiddenException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotdataplane#ForbiddenException", name: "ForbiddenException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    GatewayTimeoutException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotdataplane#GatewayTimeoutException", name: "GatewayTimeoutException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 504})
    GetConnectionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotdataplane#GetConnectionRequest", name: "GetConnectionRequest")
    GetConnectionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotdataplane#GetConnectionResponse", name: "GetConnectionResponse")
    GetRetainedMessageRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotdataplane#GetRetainedMessageRequest", name: "GetRetainedMessageRequest")
    GetRetainedMessageResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotdataplane#GetRetainedMessageResponse", name: "GetRetainedMessageResponse")
    GetThingShadowRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotdataplane#GetThingShadowRequest", name: "GetThingShadowRequest")
    GetThingShadowResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotdataplane#GetThingShadowResponse", name: "GetThingShadowResponse")
    IncludeSocketInformation = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.iotdataplane#IncludeSocketInformation", name: "IncludeSocketInformation", traits: {"smithy.api#default" => false})
    InternalFailureException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotdataplane#InternalFailureException", name: "InternalFailureException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    InvalidRequestException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotdataplane#InvalidRequestException", name: "InvalidRequestException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    JsonDocument = ::Smithy::Schema::Shapes::BlobShape.new(id: "com.amazonaws.iotdataplane#JsonDocument", name: "JsonDocument")
    KeepAliveDuration = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.iotdataplane#KeepAliveDuration", name: "KeepAliveDuration", traits: {"smithy.api#default" => 0})
    ListNamedShadowsForThingRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotdataplane#ListNamedShadowsForThingRequest", name: "ListNamedShadowsForThingRequest")
    ListNamedShadowsForThingResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotdataplane#ListNamedShadowsForThingResponse", name: "ListNamedShadowsForThingResponse")
    ListRetainedMessagesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotdataplane#ListRetainedMessagesRequest", name: "ListRetainedMessagesRequest")
    ListRetainedMessagesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotdataplane#ListRetainedMessagesResponse", name: "ListRetainedMessagesResponse")
    ListSubscriptionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotdataplane#ListSubscriptionsRequest", name: "ListSubscriptionsRequest")
    ListSubscriptionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotdataplane#ListSubscriptionsResponse", name: "ListSubscriptionsResponse")
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.iotdataplane#MaxResults", name: "MaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 200}})
    MessageExpiry = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.iotdataplane#MessageExpiry", name: "MessageExpiry", traits: {"smithy.api#default" => 0})
    MethodNotAllowedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotdataplane#MethodNotAllowedException", name: "MethodNotAllowedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 405})
    NamedShadowList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotdataplane#NamedShadowList", name: "NamedShadowList")
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotdataplane#NextToken", name: "NextToken")
    PageSize = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.iotdataplane#PageSize", name: "PageSize", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    Payload = ::Smithy::Schema::Shapes::BlobShape.new(id: "com.amazonaws.iotdataplane#Payload", name: "Payload")
    PayloadFormatIndicator = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iotdataplane#PayloadFormatIndicator", name: "PayloadFormatIndicator")
    PayloadSize = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.iotdataplane#PayloadSize", name: "PayloadSize", traits: {"smithy.api#default" => 0})
    PreventWillMessage = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.iotdataplane#PreventWillMessage", name: "PreventWillMessage", traits: {"smithy.api#default" => false})
    PublishRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotdataplane#PublishRequest", name: "PublishRequest")
    Qos = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.iotdataplane#Qos", name: "Qos", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 1}})
    RequestEntityTooLargeException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotdataplane#RequestEntityTooLargeException", name: "RequestEntityTooLargeException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 413})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotdataplane#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResponseMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotdataplane#ResponseMessage", name: "ResponseMessage")
    ResponseTopic = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotdataplane#ResponseTopic", name: "ResponseTopic")
    Retain = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.iotdataplane#Retain", name: "Retain", traits: {"smithy.api#default" => false})
    RetainedMessageList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotdataplane#RetainedMessageList", name: "RetainedMessageList")
    RetainedMessageSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotdataplane#RetainedMessageSummary", name: "RetainedMessageSummary")
    SendDirectMessageRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotdataplane#SendDirectMessageRequest", name: "SendDirectMessageRequest")
    SendDirectMessageResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotdataplane#SendDirectMessageResponse", name: "SendDirectMessageResponse")
    ServiceUnavailableException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotdataplane#ServiceUnavailableException", name: "ServiceUnavailableException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 503})
    SessionExpiry = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.iotdataplane#SessionExpiry", name: "SessionExpiry", traits: {"smithy.api#default" => 0})
    ShadowName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotdataplane#ShadowName", name: "ShadowName", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[$a-zA-Z0-9:_-]+$"})
    SourceIp = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotdataplane#SourceIp", name: "SourceIp")
    SourcePort = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.iotdataplane#SourcePort", name: "SourcePort", traits: {"smithy.api#default" => 0})
    SubscriptionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotdataplane#SubscriptionList", name: "SubscriptionList")
    SubscriptionSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotdataplane#SubscriptionSummary", name: "SubscriptionSummary")
    SynthesizedJsonUserProperties = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotdataplane#SynthesizedJsonUserProperties", name: "SynthesizedJsonUserProperties", traits: {"smithy.api#mediaType" => "application/json"})
    TargetIp = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotdataplane#TargetIp", name: "TargetIp")
    TargetPort = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.iotdataplane#TargetPort", name: "TargetPort", traits: {"smithy.api#default" => 0})
    ThingName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotdataplane#ThingName", name: "ThingName", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9:_-]+$"})
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotdataplane#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    TimeoutInSeconds = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.iotdataplane#TimeoutInSeconds", name: "TimeoutInSeconds", traits: {"smithy.api#default" => 0})
    Timestamp = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.iotdataplane#Timestamp", name: "Timestamp", traits: {"smithy.api#default" => 0})
    Topic = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotdataplane#Topic", name: "Topic")
    TopicFilter = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotdataplane#TopicFilter", name: "TopicFilter")
    TraceId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotdataplane#TraceId", name: "TraceId")
    UnauthorizedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotdataplane#UnauthorizedException", name: "UnauthorizedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 401})
    UnsupportedDocumentEncodingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotdataplane#UnsupportedDocumentEncodingException", name: "UnsupportedDocumentEncodingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 415})
    UpdateThingShadowRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotdataplane#UpdateThingShadowRequest", name: "UpdateThingShadowRequest")
    UpdateThingShadowResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotdataplane#UpdateThingShadowResponse", name: "UpdateThingShadowResponse")
    UserPropertiesBlob = ::Smithy::Schema::Shapes::BlobShape.new(id: "com.amazonaws.iotdataplane#UserPropertiesBlob", name: "UserPropertiesBlob")
    VpcEndpointId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotdataplane#VpcEndpointId", name: "VpcEndpointId")
    ErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotdataplane#errorMessage", name: "ErrorMessage")

    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    ConflictException.type = Types::ConflictException
    DeleteConnectionRequest.add_member(:client_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientId, name: "clientId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteConnectionRequest.add_member(:clean_session, ::Smithy::Schema::Shapes::MemberShape.new(target: CleanSession, name: "cleanSession", traits: {"smithy.api#default" => false, "smithy.api#httpQuery" => "cleanSession"}))
    DeleteConnectionRequest.add_member(:prevent_will_message, ::Smithy::Schema::Shapes::MemberShape.new(target: PreventWillMessage, name: "preventWillMessage", traits: {"smithy.api#default" => false, "smithy.api#httpQuery" => "preventWillMessage"}))
    DeleteConnectionRequest.type = Types::DeleteConnectionRequest
    DeleteThingShadowRequest.add_member(:thing_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ThingName, name: "thingName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteThingShadowRequest.add_member(:shadow_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ShadowName, name: "shadowName", traits: {"smithy.api#httpQuery" => "name"}))
    DeleteThingShadowRequest.type = Types::DeleteThingShadowRequest
    DeleteThingShadowResponse.add_member(:payload, ::Smithy::Schema::Shapes::MemberShape.new(target: JsonDocument, name: "payload", traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    DeleteThingShadowResponse[:http_payload] = :payload
    DeleteThingShadowResponse[:http_payload_member] = DeleteThingShadowResponse.member(:payload)
    DeleteThingShadowResponse.type = Types::DeleteThingShadowResponse
    ForbiddenException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    ForbiddenException.type = Types::ForbiddenException
    GatewayTimeoutException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    GatewayTimeoutException.type = Types::GatewayTimeoutException
    GetConnectionRequest.add_member(:client_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientId, name: "clientId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetConnectionRequest.add_member(:include_socket_information, ::Smithy::Schema::Shapes::MemberShape.new(target: IncludeSocketInformation, name: "includeSocketInformation", traits: {"smithy.api#default" => false, "smithy.api#httpQuery" => "includeSocketInformation"}))
    GetConnectionRequest.type = Types::GetConnectionRequest
    GetConnectionResponse.add_member(:connected, ::Smithy::Schema::Shapes::MemberShape.new(target: Connected, name: "connected", traits: {"smithy.api#default" => false}))
    GetConnectionResponse.add_member(:thing_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ThingName, name: "thingName"))
    GetConnectionResponse.add_member(:clean_session, ::Smithy::Schema::Shapes::MemberShape.new(target: CleanSession, name: "cleanSession", traits: {"smithy.api#default" => false}))
    GetConnectionResponse.add_member(:source_ip, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceIp, name: "sourceIp"))
    GetConnectionResponse.add_member(:source_port, ::Smithy::Schema::Shapes::MemberShape.new(target: SourcePort, name: "sourcePort", traits: {"smithy.api#default" => 0}))
    GetConnectionResponse.add_member(:target_ip, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetIp, name: "targetIp"))
    GetConnectionResponse.add_member(:target_port, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetPort, name: "targetPort", traits: {"smithy.api#default" => 0}))
    GetConnectionResponse.add_member(:keep_alive_duration, ::Smithy::Schema::Shapes::MemberShape.new(target: KeepAliveDuration, name: "keepAliveDuration", traits: {"smithy.api#default" => 0}))
    GetConnectionResponse.add_member(:connected_since, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "connectedSince", traits: {"smithy.api#default" => 0}))
    GetConnectionResponse.add_member(:disconnected_since, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "disconnectedSince", traits: {"smithy.api#default" => 0}))
    GetConnectionResponse.add_member(:disconnect_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: DisconnectReason, name: "disconnectReason"))
    GetConnectionResponse.add_member(:session_expiry, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionExpiry, name: "sessionExpiry", traits: {"smithy.api#default" => 0}))
    GetConnectionResponse.add_member(:client_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientId, name: "clientId"))
    GetConnectionResponse.add_member(:vpc_endpoint_id, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcEndpointId, name: "vpcEndpointId"))
    GetConnectionResponse.type = Types::GetConnectionResponse
    GetRetainedMessageRequest.add_member(:topic, ::Smithy::Schema::Shapes::MemberShape.new(target: Topic, name: "topic", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetRetainedMessageRequest.type = Types::GetRetainedMessageRequest
    GetRetainedMessageResponse.add_member(:topic, ::Smithy::Schema::Shapes::MemberShape.new(target: Topic, name: "topic"))
    GetRetainedMessageResponse.add_member(:payload, ::Smithy::Schema::Shapes::MemberShape.new(target: Payload, name: "payload"))
    GetRetainedMessageResponse.add_member(:qos, ::Smithy::Schema::Shapes::MemberShape.new(target: Qos, name: "qos", traits: {"smithy.api#default" => 0}))
    GetRetainedMessageResponse.add_member(:last_modified_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "lastModifiedTime", traits: {"smithy.api#default" => 0}))
    GetRetainedMessageResponse.add_member(:user_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: UserPropertiesBlob, name: "userProperties"))
    GetRetainedMessageResponse.type = Types::GetRetainedMessageResponse
    GetThingShadowRequest.add_member(:thing_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ThingName, name: "thingName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetThingShadowRequest.add_member(:shadow_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ShadowName, name: "shadowName", traits: {"smithy.api#httpQuery" => "name"}))
    GetThingShadowRequest.type = Types::GetThingShadowRequest
    GetThingShadowResponse.add_member(:payload, ::Smithy::Schema::Shapes::MemberShape.new(target: JsonDocument, name: "payload", traits: {"smithy.api#httpPayload" => {}}))
    GetThingShadowResponse[:http_payload] = :payload
    GetThingShadowResponse[:http_payload_member] = GetThingShadowResponse.member(:payload)
    GetThingShadowResponse.type = Types::GetThingShadowResponse
    InternalFailureException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    InternalFailureException.type = Types::InternalFailureException
    InvalidRequestException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    InvalidRequestException.type = Types::InvalidRequestException
    ListNamedShadowsForThingRequest.add_member(:thing_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ThingName, name: "thingName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListNamedShadowsForThingRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListNamedShadowsForThingRequest.add_member(:page_size, ::Smithy::Schema::Shapes::MemberShape.new(target: PageSize, name: "pageSize", traits: {"smithy.api#httpQuery" => "pageSize"}))
    ListNamedShadowsForThingRequest.type = Types::ListNamedShadowsForThingRequest
    ListNamedShadowsForThingResponse.add_member(:results, ::Smithy::Schema::Shapes::MemberShape.new(target: NamedShadowList, name: "results"))
    ListNamedShadowsForThingResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListNamedShadowsForThingResponse.add_member(:timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "timestamp", traits: {"smithy.api#default" => 0}))
    ListNamedShadowsForThingResponse.type = Types::ListNamedShadowsForThingResponse
    ListRetainedMessagesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListRetainedMessagesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListRetainedMessagesRequest.type = Types::ListRetainedMessagesRequest
    ListRetainedMessagesResponse.add_member(:retained_topics, ::Smithy::Schema::Shapes::MemberShape.new(target: RetainedMessageList, name: "retainedTopics"))
    ListRetainedMessagesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListRetainedMessagesResponse.type = Types::ListRetainedMessagesResponse
    ListSubscriptionsRequest.add_member(:client_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientId, name: "clientId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListSubscriptionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListSubscriptionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListSubscriptionsRequest.type = Types::ListSubscriptionsRequest
    ListSubscriptionsResponse.add_member(:subscriptions, ::Smithy::Schema::Shapes::MemberShape.new(target: SubscriptionList, name: "subscriptions"))
    ListSubscriptionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListSubscriptionsResponse.type = Types::ListSubscriptionsResponse
    MethodNotAllowedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    MethodNotAllowedException.type = Types::MethodNotAllowedException
    NamedShadowList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ShadowName, name: "member"))
    PayloadFormatIndicator.add_member(:unspecified_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNSPECIFIED_BYTES", traits: {"smithy.api#enumValue" => "UNSPECIFIED_BYTES"}))
    PayloadFormatIndicator.add_member(:utf8_data, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UTF8_DATA", traits: {"smithy.api#enumValue" => "UTF8_DATA"}))
    PublishRequest.add_member(:topic, ::Smithy::Schema::Shapes::MemberShape.new(target: Topic, name: "topic", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PublishRequest.add_member(:qos, ::Smithy::Schema::Shapes::MemberShape.new(target: Qos, name: "qos", traits: {"smithy.api#default" => 0, "smithy.api#httpQuery" => "qos"}))
    PublishRequest.add_member(:retain, ::Smithy::Schema::Shapes::MemberShape.new(target: Retain, name: "retain", traits: {"smithy.api#default" => false, "smithy.api#httpQuery" => "retain"}))
    PublishRequest.add_member(:payload, ::Smithy::Schema::Shapes::MemberShape.new(target: Payload, name: "payload", traits: {"smithy.api#httpPayload" => {}}))
    PublishRequest.add_member(:user_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: SynthesizedJsonUserProperties, name: "userProperties", traits: {"smithy.api#httpHeader" => "x-amz-mqtt5-user-properties"}))
    PublishRequest.add_member(:payload_format_indicator, ::Smithy::Schema::Shapes::MemberShape.new(target: PayloadFormatIndicator, name: "payloadFormatIndicator", traits: {"smithy.api#httpHeader" => "x-amz-mqtt5-payload-format-indicator"}))
    PublishRequest.add_member(:content_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentType, name: "contentType", traits: {"smithy.api#httpQuery" => "contentType"}))
    PublishRequest.add_member(:response_topic, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseTopic, name: "responseTopic", traits: {"smithy.api#httpQuery" => "responseTopic"}))
    PublishRequest.add_member(:correlation_data, ::Smithy::Schema::Shapes::MemberShape.new(target: CorrelationData, name: "correlationData", traits: {"smithy.api#httpHeader" => "x-amz-mqtt5-correlation-data"}))
    PublishRequest.add_member(:message_expiry, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageExpiry, name: "messageExpiry", traits: {"smithy.api#default" => 0, "smithy.api#httpQuery" => "messageExpiry"}))
    PublishRequest[:http_payload] = :payload
    PublishRequest[:http_payload_member] = PublishRequest.member(:payload)
    PublishRequest.type = Types::PublishRequest
    RequestEntityTooLargeException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    RequestEntityTooLargeException.type = Types::RequestEntityTooLargeException
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    RetainedMessageList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RetainedMessageSummary, name: "member"))
    RetainedMessageSummary.add_member(:topic, ::Smithy::Schema::Shapes::MemberShape.new(target: Topic, name: "topic"))
    RetainedMessageSummary.add_member(:payload_size, ::Smithy::Schema::Shapes::MemberShape.new(target: PayloadSize, name: "payloadSize", traits: {"smithy.api#default" => 0}))
    RetainedMessageSummary.add_member(:qos, ::Smithy::Schema::Shapes::MemberShape.new(target: Qos, name: "qos", traits: {"smithy.api#default" => 0}))
    RetainedMessageSummary.add_member(:last_modified_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "lastModifiedTime", traits: {"smithy.api#default" => 0}))
    RetainedMessageSummary.type = Types::RetainedMessageSummary
    SendDirectMessageRequest.add_member(:client_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientId, name: "clientId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    SendDirectMessageRequest.add_member(:topic, ::Smithy::Schema::Shapes::MemberShape.new(target: Topic, name: "topic", traits: {"smithy.api#httpQuery" => "topic", "smithy.api#required" => {}}))
    SendDirectMessageRequest.add_member(:content_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentType, name: "contentType", traits: {"smithy.api#httpQuery" => "contentType"}))
    SendDirectMessageRequest.add_member(:response_topic, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseTopic, name: "responseTopic", traits: {"smithy.api#httpQuery" => "responseTopic"}))
    SendDirectMessageRequest.add_member(:confirmation, ::Smithy::Schema::Shapes::MemberShape.new(target: Confirmation, name: "confirmation", traits: {"smithy.api#default" => false, "smithy.api#httpQuery" => "confirmation"}))
    SendDirectMessageRequest.add_member(:timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeoutInSeconds, name: "timeout", traits: {"smithy.api#default" => 0, "smithy.api#httpQuery" => "timeout"}))
    SendDirectMessageRequest.add_member(:payload, ::Smithy::Schema::Shapes::MemberShape.new(target: Payload, name: "payload", traits: {"smithy.api#httpPayload" => {}}))
    SendDirectMessageRequest.add_member(:user_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: SynthesizedJsonUserProperties, name: "userProperties", traits: {"smithy.api#httpHeader" => "x-amz-mqtt5-user-properties"}))
    SendDirectMessageRequest.add_member(:payload_format_indicator, ::Smithy::Schema::Shapes::MemberShape.new(target: PayloadFormatIndicator, name: "payloadFormatIndicator", traits: {"smithy.api#httpHeader" => "x-amz-mqtt5-payload-format-indicator"}))
    SendDirectMessageRequest.add_member(:correlation_data, ::Smithy::Schema::Shapes::MemberShape.new(target: CorrelationData, name: "correlationData", traits: {"smithy.api#httpHeader" => "x-amz-mqtt5-correlation-data"}))
    SendDirectMessageRequest[:http_payload] = :payload
    SendDirectMessageRequest[:http_payload_member] = SendDirectMessageRequest.member(:payload)
    SendDirectMessageRequest.type = Types::SendDirectMessageRequest
    SendDirectMessageResponse.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseMessage, name: "message"))
    SendDirectMessageResponse.add_member(:trace_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TraceId, name: "traceId"))
    SendDirectMessageResponse.type = Types::SendDirectMessageResponse
    ServiceUnavailableException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    ServiceUnavailableException.type = Types::ServiceUnavailableException
    SubscriptionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SubscriptionSummary, name: "member"))
    SubscriptionSummary.add_member(:topic_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: TopicFilter, name: "topicFilter", traits: {"smithy.api#required" => {}}))
    SubscriptionSummary.add_member(:qos, ::Smithy::Schema::Shapes::MemberShape.new(target: Qos, name: "qos", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    SubscriptionSummary.type = Types::SubscriptionSummary
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    ThrottlingException.type = Types::ThrottlingException
    UnauthorizedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    UnauthorizedException.type = Types::UnauthorizedException
    UnsupportedDocumentEncodingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    UnsupportedDocumentEncodingException.type = Types::UnsupportedDocumentEncodingException
    UpdateThingShadowRequest.add_member(:thing_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ThingName, name: "thingName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateThingShadowRequest.add_member(:shadow_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ShadowName, name: "shadowName", traits: {"smithy.api#httpQuery" => "name"}))
    UpdateThingShadowRequest.add_member(:payload, ::Smithy::Schema::Shapes::MemberShape.new(target: JsonDocument, name: "payload", traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    UpdateThingShadowRequest[:http_payload] = :payload
    UpdateThingShadowRequest[:http_payload_member] = UpdateThingShadowRequest.member(:payload)
    UpdateThingShadowRequest.type = Types::UpdateThingShadowRequest
    UpdateThingShadowResponse.add_member(:payload, ::Smithy::Schema::Shapes::MemberShape.new(target: JsonDocument, name: "payload", traits: {"smithy.api#httpPayload" => {}}))
    UpdateThingShadowResponse[:http_payload] = :payload
    UpdateThingShadowResponse[:http_payload_member] = UpdateThingShadowResponse.member(:payload)
    UpdateThingShadowResponse.type = Types::UpdateThingShadowResponse

    IotMoonrakerService = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.iotdataplane#IotMoonrakerService"
      service.name = "IotMoonrakerService"
      service.version = "2015-05-28"
      service.traits = {"aws.api#service" => {"sdkId" => "IoT Data Plane", "arnNamespace" => "iotdata", "cloudFormationName" => "IoTDataPlane", "cloudTrailEventSource" => "iotdataplane.amazonaws.com", "docId" => "iot-data-2015-05-28", "endpointPrefix" => "data-ats.iot"}, "aws.auth#sigv4" => {"name" => "iotdata"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "AWS IoT Data Plane", "smithy.rules#endpointBdd" => {"version" => "1.1", "parameters" => {"Region" => {"builtIn" => "AWS::Region", "required" => false, "documentation" => "The AWS region used to dispatch the request.", "type" => "string"}, "UseDualStack" => {"builtIn" => "AWS::UseDualStack", "required" => true, "default" => false, "documentation" => "When true, use the dual-stack endpoint. If the configured endpoint does not support dual-stack, dispatching the request MAY return an error.", "type" => "boolean"}, "UseFIPS" => {"builtIn" => "AWS::UseFIPS", "required" => true, "default" => false, "documentation" => "When true, send this request to the FIPS-compliant regional endpoint. If the configured endpoint does not have a FIPS compliant endpoint, dispatching the request will return an error.", "type" => "boolean"}, "Endpoint" => {"builtIn" => "SDK::Endpoint", "required" => false, "documentation" => "Override the endpoint used to send this request", "type" => "string"}}, "conditions" => [{"fn" => "isSet", "argv" => [{"ref" => "Endpoint"}]}, {"fn" => "isSet", "argv" => [{"ref" => "Region"}]}, {"fn" => "aws.partition", "argv" => [{"ref" => "Region"}], "assign" => "PartitionResult"}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseFIPS"}, true]}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseDualStack"}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsDualStack"]}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsFIPS"]}, true]}, {"fn" => "stringEquals", "argv" => [{"ref" => "Region"}, "ca-central-1"]}, {"fn" => "stringEquals", "argv" => [{"ref" => "Region"}, "cn-north-1"]}, {"fn" => "stringEquals", "argv" => [{"ref" => "Region"}, "us-east-1"]}, {"fn" => "stringEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "name"]}, "aws"]}, {"fn" => "stringEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "name"]}, "aws-cn"]}, {"fn" => "stringEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "name"]}, "aws-us-gov"]}, {"fn" => "stringEquals", "argv" => [{"ref" => "Region"}, "us-east-2"]}, {"fn" => "stringEquals", "argv" => [{"ref" => "Region"}, "us-west-1"]}, {"fn" => "stringEquals", "argv" => [{"ref" => "Region"}, "us-west-2"]}, {"fn" => "stringEquals", "argv" => [{"ref" => "Region"}, "us-gov-east-1"]}, {"fn" => "stringEquals", "argv" => [{"ref" => "Region"}, "us-gov-west-1"]}], "results" => [{"conditions" => [], "error" => "Invalid Configuration: FIPS and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "error" => "Invalid Configuration: Dualstack and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => {"ref" => "Endpoint"}, "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://data-ats.iot-fips.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS and DualStack are enabled, but this partition does not support one or both", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://data.iot-fips.ca-central-1.amazonaws.com", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://data.iot-fips.us-east-1.amazonaws.com", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://data.iot-fips.us-east-2.amazonaws.com", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://data.iot-fips.us-west-1.amazonaws.com", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://data.iot-fips.us-west-2.amazonaws.com", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://data.iot-fips.us-gov-east-1.amazonaws.com", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://data.iot-fips.us-gov-west-1.amazonaws.com", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://data-ats.iot-fips.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS is enabled but this partition does not support FIPS", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://data-ats.iot.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "DualStack is enabled but this partition does not support DualStack", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://data.ats.iot.cn-north-1.amazonaws.com.cn", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://data-ats.iot.{Region}.amazonaws.com", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://data-ats.iot.{Region}.amazonaws.com.cn", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://data-ats.iot.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "Invalid Configuration: Missing Region", "type" => "error"}], "root" => 2, "nodeCount" => 24, "nodes" => "/////wAAAAH/////AAAAAAAAABcAAAADAAAAAQAAAAQF9eEVAAAAAgAAAAUF9eEVAAAAAwAAAAwAAAAGAAAABAAAAAsAAAAHAAAACAX14REAAAAIAAAACgX14RIAAAAJAAAACwX14RMAAAAKAAAADAX14RIF9eEUAAAABQX14Q8F9eEQAAAABAAAABUAAAANAAAABgAAAA4F9eEOAAAABwX14QYAAAAPAAAACQX14QcAAAAQAAAADQX14QgAAAARAAAADgX14QkAAAASAAAADwX14QoAAAATAAAAEAX14QsAAAAUAAAAEQX14QwF9eENAAAABQAAABYF9eEFAAAABgX14QQF9eEFAAAAAwX14QEAAAAYAAAABAX14QIF9eED"}}
      service.add_operation(:delete_connection, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotdataplane#DeleteConnection"
        operation.name = "DeleteConnection"
        operation.input = DeleteConnectionRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << ForbiddenException
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/connections/{clientId}", "code" => 200}}
      end)
      service.add_operation(:delete_thing_shadow, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotdataplane#DeleteThingShadow"
        operation.name = "DeleteThingShadow"
        operation.input = DeleteThingShadowRequest
        operation.output = DeleteThingShadowResponse
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << MethodNotAllowedException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.errors << UnauthorizedException
        operation.errors << UnsupportedDocumentEncodingException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/things/{thingName}/shadow", "code" => 200}}
      end)
      service.add_operation(:get_connection, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotdataplane#GetConnection"
        operation.name = "GetConnection"
        operation.input = GetConnectionRequest
        operation.output = GetConnectionResponse
        operation.errors << ForbiddenException
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/connections/{clientId}", "code" => 200}}
      end)
      service.add_operation(:get_retained_message, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotdataplane#GetRetainedMessage"
        operation.name = "GetRetainedMessage"
        operation.input = GetRetainedMessageRequest
        operation.output = GetRetainedMessageResponse
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << MethodNotAllowedException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/retainedMessage/{topic}", "code" => 200}}
      end)
      service.add_operation(:get_thing_shadow, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotdataplane#GetThingShadow"
        operation.name = "GetThingShadow"
        operation.input = GetThingShadowRequest
        operation.output = GetThingShadowResponse
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << MethodNotAllowedException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.errors << UnauthorizedException
        operation.errors << UnsupportedDocumentEncodingException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/things/{thingName}/shadow", "code" => 200}, "smithy.test#smokeTests" => [{"id" => "GetThingShadowFailure", "params" => {"thingName" => "fake-thing"}, "vendorParams" => {"region" => "us-west-2", "uri" => "https://data-ats.iot.us-west-2.amazonaws.com"}, "vendorParamsShape" => "aws.test#AwsVendorParams", "expect" => {"failure" => {}}}]}
      end)
      service.add_operation(:list_named_shadows_for_thing, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotdataplane#ListNamedShadowsForThing"
        operation.name = "ListNamedShadowsForThing"
        operation.input = ListNamedShadowsForThingRequest
        operation.output = ListNamedShadowsForThingResponse
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << MethodNotAllowedException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/api/things/shadow/ListNamedShadowsForThing/{thingName}", "code" => 200}}
      end)
      service.add_operation(:list_retained_messages, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotdataplane#ListRetainedMessages"
        operation.name = "ListRetainedMessages"
        operation.input = ListRetainedMessagesRequest
        operation.output = ListRetainedMessagesResponse
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << MethodNotAllowedException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/retainedMessage", "code" => 200}}
        operation[:paginator] = Paginators::ListRetainedMessages.new
      end)
      service.add_operation(:list_subscriptions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotdataplane#ListSubscriptions"
        operation.name = "ListSubscriptions"
        operation.input = ListSubscriptionsRequest
        operation.output = ListSubscriptionsResponse
        operation.errors << ForbiddenException
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/connections/{clientId}/subscriptions", "code" => 200}}
        operation[:paginator] = Paginators::ListSubscriptions.new
      end)
      service.add_operation(:publish, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotdataplane#Publish"
        operation.name = "Publish"
        operation.input = PublishRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << MethodNotAllowedException
        operation.errors << ThrottlingException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/topics/{topic}", "code" => 200}}
      end)
      service.add_operation(:send_direct_message, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotdataplane#SendDirectMessage"
        operation.name = "SendDirectMessage"
        operation.input = SendDirectMessageRequest
        operation.output = SendDirectMessageResponse
        operation.errors << ForbiddenException
        operation.errors << GatewayTimeoutException
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << RequestEntityTooLargeException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/connections/{clientId}/messages", "code" => 200}}
      end)
      service.add_operation(:update_thing_shadow, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotdataplane#UpdateThingShadow"
        operation.name = "UpdateThingShadow"
        operation.input = UpdateThingShadowRequest
        operation.output = UpdateThingShadowResponse
        operation.errors << ConflictException
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << MethodNotAllowedException
        operation.errors << RequestEntityTooLargeException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.errors << UnauthorizedException
        operation.errors << UnsupportedDocumentEncodingException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/things/{thingName}/shadow", "code" => 200}}
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
