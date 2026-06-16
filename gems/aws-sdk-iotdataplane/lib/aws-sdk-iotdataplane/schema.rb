# frozen_string_literal: true

# This is generated code!

module Aws::IoTDataPlane
  # This module contains a schema composed of shapes used by the client.
  module Schema

    CleanSession = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.iotdataplane#CleanSession", name: "CleanSession", traits: {"smithy.api#default" => false})
    ClientId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotdataplane#ClientId", name: "ClientId", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[^$]"})
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotdataplane#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ContentType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotdataplane#ContentType", name: "ContentType")
    CorrelationData = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotdataplane#CorrelationData", name: "CorrelationData")
    DeleteConnectionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotdataplane#DeleteConnectionRequest", name: "DeleteConnectionRequest")
    DeleteThingShadowRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotdataplane#DeleteThingShadowRequest", name: "DeleteThingShadowRequest")
    DeleteThingShadowResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotdataplane#DeleteThingShadowResponse", name: "DeleteThingShadowResponse")
    ForbiddenException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotdataplane#ForbiddenException", name: "ForbiddenException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    GetRetainedMessageRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotdataplane#GetRetainedMessageRequest", name: "GetRetainedMessageRequest")
    GetRetainedMessageResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotdataplane#GetRetainedMessageResponse", name: "GetRetainedMessageResponse")
    GetThingShadowRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotdataplane#GetThingShadowRequest", name: "GetThingShadowRequest")
    GetThingShadowResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotdataplane#GetThingShadowResponse", name: "GetThingShadowResponse")
    InternalFailureException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotdataplane#InternalFailureException", name: "InternalFailureException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    InvalidRequestException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotdataplane#InvalidRequestException", name: "InvalidRequestException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    JsonDocument = ::Smithy::Schema::Shapes::BlobShape.new(id: "com.amazonaws.iotdataplane#JsonDocument", name: "JsonDocument")
    ListNamedShadowsForThingRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotdataplane#ListNamedShadowsForThingRequest", name: "ListNamedShadowsForThingRequest")
    ListNamedShadowsForThingResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotdataplane#ListNamedShadowsForThingResponse", name: "ListNamedShadowsForThingResponse")
    ListRetainedMessagesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotdataplane#ListRetainedMessagesRequest", name: "ListRetainedMessagesRequest")
    ListRetainedMessagesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotdataplane#ListRetainedMessagesResponse", name: "ListRetainedMessagesResponse")
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
    ResponseTopic = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotdataplane#ResponseTopic", name: "ResponseTopic")
    Retain = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.iotdataplane#Retain", name: "Retain", traits: {"smithy.api#default" => false})
    RetainedMessageList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotdataplane#RetainedMessageList", name: "RetainedMessageList")
    RetainedMessageSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotdataplane#RetainedMessageSummary", name: "RetainedMessageSummary")
    ServiceUnavailableException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotdataplane#ServiceUnavailableException", name: "ServiceUnavailableException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 503})
    ShadowName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotdataplane#ShadowName", name: "ShadowName", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[$a-zA-Z0-9:_-]+$"})
    SynthesizedJsonUserProperties = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotdataplane#SynthesizedJsonUserProperties", name: "SynthesizedJsonUserProperties", traits: {"smithy.api#mediaType" => "application/json"})
    ThingName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotdataplane#ThingName", name: "ThingName", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9:_-]+$"})
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotdataplane#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    Timestamp = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.iotdataplane#Timestamp", name: "Timestamp", traits: {"smithy.api#default" => 0})
    Topic = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotdataplane#Topic", name: "Topic")
    UnauthorizedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotdataplane#UnauthorizedException", name: "UnauthorizedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 401})
    UnsupportedDocumentEncodingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotdataplane#UnsupportedDocumentEncodingException", name: "UnsupportedDocumentEncodingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 415})
    UpdateThingShadowRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotdataplane#UpdateThingShadowRequest", name: "UpdateThingShadowRequest")
    UpdateThingShadowResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotdataplane#UpdateThingShadowResponse", name: "UpdateThingShadowResponse")
    UserPropertiesBlob = ::Smithy::Schema::Shapes::BlobShape.new(id: "com.amazonaws.iotdataplane#UserPropertiesBlob", name: "UserPropertiesBlob")
    ErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotdataplane#errorMessage", name: "ErrorMessage")

    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "message"))
    ConflictException.type = Types::ConflictException
    DeleteConnectionRequest.add_member(:client_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientId, location_name: "clientId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteConnectionRequest.add_member(:clean_session, ::Smithy::Schema::Shapes::MemberShape.new(target: CleanSession, location_name: "cleanSession", traits: {"smithy.api#default" => false, "smithy.api#httpQuery" => "cleanSession"}))
    DeleteConnectionRequest.add_member(:prevent_will_message, ::Smithy::Schema::Shapes::MemberShape.new(target: PreventWillMessage, location_name: "preventWillMessage", traits: {"smithy.api#default" => false, "smithy.api#httpQuery" => "preventWillMessage"}))
    DeleteConnectionRequest.type = Types::DeleteConnectionRequest
    DeleteThingShadowRequest.add_member(:thing_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ThingName, location_name: "thingName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteThingShadowRequest.add_member(:shadow_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ShadowName, location_name: "shadowName", traits: {"smithy.api#httpQuery" => "name"}))
    DeleteThingShadowRequest.type = Types::DeleteThingShadowRequest
    DeleteThingShadowResponse.add_member(:payload, ::Smithy::Schema::Shapes::MemberShape.new(target: JsonDocument, location_name: "payload", traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    DeleteThingShadowResponse[:http_payload] = :payload
    DeleteThingShadowResponse[:http_payload_member] = DeleteThingShadowResponse.member(:payload)
    DeleteThingShadowResponse.type = Types::DeleteThingShadowResponse
    ForbiddenException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "message"))
    ForbiddenException.type = Types::ForbiddenException
    GetRetainedMessageRequest.add_member(:topic, ::Smithy::Schema::Shapes::MemberShape.new(target: Topic, location_name: "topic", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetRetainedMessageRequest.type = Types::GetRetainedMessageRequest
    GetRetainedMessageResponse.add_member(:topic, ::Smithy::Schema::Shapes::MemberShape.new(target: Topic, location_name: "topic"))
    GetRetainedMessageResponse.add_member(:payload, ::Smithy::Schema::Shapes::MemberShape.new(target: Payload, location_name: "payload"))
    GetRetainedMessageResponse.add_member(:qos, ::Smithy::Schema::Shapes::MemberShape.new(target: Qos, location_name: "qos", traits: {"smithy.api#default" => 0}))
    GetRetainedMessageResponse.add_member(:last_modified_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "lastModifiedTime", traits: {"smithy.api#default" => 0}))
    GetRetainedMessageResponse.add_member(:user_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: UserPropertiesBlob, location_name: "userProperties"))
    GetRetainedMessageResponse.type = Types::GetRetainedMessageResponse
    GetThingShadowRequest.add_member(:thing_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ThingName, location_name: "thingName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetThingShadowRequest.add_member(:shadow_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ShadowName, location_name: "shadowName", traits: {"smithy.api#httpQuery" => "name"}))
    GetThingShadowRequest.type = Types::GetThingShadowRequest
    GetThingShadowResponse.add_member(:payload, ::Smithy::Schema::Shapes::MemberShape.new(target: JsonDocument, location_name: "payload", traits: {"smithy.api#httpPayload" => {}}))
    GetThingShadowResponse[:http_payload] = :payload
    GetThingShadowResponse[:http_payload_member] = GetThingShadowResponse.member(:payload)
    GetThingShadowResponse.type = Types::GetThingShadowResponse
    InternalFailureException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "message"))
    InternalFailureException.type = Types::InternalFailureException
    InvalidRequestException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "message"))
    InvalidRequestException.type = Types::InvalidRequestException
    ListNamedShadowsForThingRequest.add_member(:thing_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ThingName, location_name: "thingName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListNamedShadowsForThingRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListNamedShadowsForThingRequest.add_member(:page_size, ::Smithy::Schema::Shapes::MemberShape.new(target: PageSize, location_name: "pageSize", traits: {"smithy.api#httpQuery" => "pageSize"}))
    ListNamedShadowsForThingRequest.type = Types::ListNamedShadowsForThingRequest
    ListNamedShadowsForThingResponse.add_member(:results, ::Smithy::Schema::Shapes::MemberShape.new(target: NamedShadowList, location_name: "results"))
    ListNamedShadowsForThingResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken"))
    ListNamedShadowsForThingResponse.add_member(:timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "timestamp", traits: {"smithy.api#default" => 0}))
    ListNamedShadowsForThingResponse.type = Types::ListNamedShadowsForThingResponse
    ListRetainedMessagesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListRetainedMessagesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, location_name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListRetainedMessagesRequest.type = Types::ListRetainedMessagesRequest
    ListRetainedMessagesResponse.add_member(:retained_topics, ::Smithy::Schema::Shapes::MemberShape.new(target: RetainedMessageList, location_name: "retainedTopics"))
    ListRetainedMessagesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken"))
    ListRetainedMessagesResponse.type = Types::ListRetainedMessagesResponse
    MethodNotAllowedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "message"))
    MethodNotAllowedException.type = Types::MethodNotAllowedException
    NamedShadowList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ShadowName)
    PayloadFormatIndicator.add_member(:unspecified_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UNSPECIFIED_BYTES", traits: {"smithy.api#enumValue" => "UNSPECIFIED_BYTES"}))
    PayloadFormatIndicator.add_member(:utf8_data, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UTF8_DATA", traits: {"smithy.api#enumValue" => "UTF8_DATA"}))
    PublishRequest.add_member(:topic, ::Smithy::Schema::Shapes::MemberShape.new(target: Topic, location_name: "topic", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PublishRequest.add_member(:qos, ::Smithy::Schema::Shapes::MemberShape.new(target: Qos, location_name: "qos", traits: {"smithy.api#default" => 0, "smithy.api#httpQuery" => "qos"}))
    PublishRequest.add_member(:retain, ::Smithy::Schema::Shapes::MemberShape.new(target: Retain, location_name: "retain", traits: {"smithy.api#default" => false, "smithy.api#httpQuery" => "retain"}))
    PublishRequest.add_member(:payload, ::Smithy::Schema::Shapes::MemberShape.new(target: Payload, location_name: "payload", traits: {"smithy.api#httpPayload" => {}}))
    PublishRequest.add_member(:user_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: SynthesizedJsonUserProperties, location_name: "userProperties", traits: {"smithy.api#httpHeader" => "x-amz-mqtt5-user-properties"}))
    PublishRequest.add_member(:payload_format_indicator, ::Smithy::Schema::Shapes::MemberShape.new(target: PayloadFormatIndicator, location_name: "payloadFormatIndicator", traits: {"smithy.api#httpHeader" => "x-amz-mqtt5-payload-format-indicator"}))
    PublishRequest.add_member(:content_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentType, location_name: "contentType", traits: {"smithy.api#httpQuery" => "contentType"}))
    PublishRequest.add_member(:response_topic, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseTopic, location_name: "responseTopic", traits: {"smithy.api#httpQuery" => "responseTopic"}))
    PublishRequest.add_member(:correlation_data, ::Smithy::Schema::Shapes::MemberShape.new(target: CorrelationData, location_name: "correlationData", traits: {"smithy.api#httpHeader" => "x-amz-mqtt5-correlation-data"}))
    PublishRequest.add_member(:message_expiry, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageExpiry, location_name: "messageExpiry", traits: {"smithy.api#default" => 0, "smithy.api#httpQuery" => "messageExpiry"}))
    PublishRequest[:http_payload] = :payload
    PublishRequest[:http_payload_member] = PublishRequest.member(:payload)
    PublishRequest.type = Types::PublishRequest
    RequestEntityTooLargeException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "message"))
    RequestEntityTooLargeException.type = Types::RequestEntityTooLargeException
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "message"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    RetainedMessageList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: RetainedMessageSummary)
    RetainedMessageSummary.add_member(:topic, ::Smithy::Schema::Shapes::MemberShape.new(target: Topic, location_name: "topic"))
    RetainedMessageSummary.add_member(:payload_size, ::Smithy::Schema::Shapes::MemberShape.new(target: PayloadSize, location_name: "payloadSize", traits: {"smithy.api#default" => 0}))
    RetainedMessageSummary.add_member(:qos, ::Smithy::Schema::Shapes::MemberShape.new(target: Qos, location_name: "qos", traits: {"smithy.api#default" => 0}))
    RetainedMessageSummary.add_member(:last_modified_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "lastModifiedTime", traits: {"smithy.api#default" => 0}))
    RetainedMessageSummary.type = Types::RetainedMessageSummary
    ServiceUnavailableException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "message"))
    ServiceUnavailableException.type = Types::ServiceUnavailableException
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "message"))
    ThrottlingException.type = Types::ThrottlingException
    UnauthorizedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "message"))
    UnauthorizedException.type = Types::UnauthorizedException
    UnsupportedDocumentEncodingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "message"))
    UnsupportedDocumentEncodingException.type = Types::UnsupportedDocumentEncodingException
    UpdateThingShadowRequest.add_member(:thing_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ThingName, location_name: "thingName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateThingShadowRequest.add_member(:shadow_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ShadowName, location_name: "shadowName", traits: {"smithy.api#httpQuery" => "name"}))
    UpdateThingShadowRequest.add_member(:payload, ::Smithy::Schema::Shapes::MemberShape.new(target: JsonDocument, location_name: "payload", traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    UpdateThingShadowRequest[:http_payload] = :payload
    UpdateThingShadowRequest[:http_payload_member] = UpdateThingShadowRequest.member(:payload)
    UpdateThingShadowRequest.type = Types::UpdateThingShadowRequest
    UpdateThingShadowResponse.add_member(:payload, ::Smithy::Schema::Shapes::MemberShape.new(target: JsonDocument, location_name: "payload", traits: {"smithy.api#httpPayload" => {}}))
    UpdateThingShadowResponse[:http_payload] = :payload
    UpdateThingShadowResponse[:http_payload_member] = UpdateThingShadowResponse.member(:payload)
    UpdateThingShadowResponse.type = Types::UpdateThingShadowResponse

    IotMoonrakerService = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.iotdataplane#IotMoonrakerService"
      service.name = "IotMoonrakerService"
      service.version = "2015-05-28"
      service.traits = {"aws.api#service" => {"sdkId" => "IoT Data Plane", "arnNamespace" => "iotdata", "cloudFormationName" => "IoTDataPlane", "cloudTrailEventSource" => "iotdataplane.amazonaws.com", "docId" => "iot-data-2015-05-28", "endpointPrefix" => "data-ats.iot"}, "aws.auth#sigv4" => {"name" => "iotdata"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "AWS IoT Data Plane"}
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
