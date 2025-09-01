# frozen_string_literal: true

# This is generated code!

module Aws::IoTDataPlane
  # This module contains a schema composed of shapes used by the client.
  module Schema

    CleanSession = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.iotdataplane#CleanSession', name: 'CleanSession', traits: {"smithy.api#default" => false})
    ClientId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotdataplane#ClientId', name: 'ClientId', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[^$]"})
    ConflictException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotdataplane#ConflictException', name: 'ConflictException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ContentType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotdataplane#ContentType', name: 'ContentType')
    CorrelationData = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotdataplane#CorrelationData', name: 'CorrelationData')
    DeleteConnectionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotdataplane#DeleteConnectionRequest', name: 'DeleteConnectionRequest')
    DeleteThingShadowRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotdataplane#DeleteThingShadowRequest', name: 'DeleteThingShadowRequest')
    DeleteThingShadowResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotdataplane#DeleteThingShadowResponse', name: 'DeleteThingShadowResponse')
    ForbiddenException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotdataplane#ForbiddenException', name: 'ForbiddenException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    GetRetainedMessageRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotdataplane#GetRetainedMessageRequest', name: 'GetRetainedMessageRequest')
    GetRetainedMessageResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotdataplane#GetRetainedMessageResponse', name: 'GetRetainedMessageResponse')
    GetThingShadowRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotdataplane#GetThingShadowRequest', name: 'GetThingShadowRequest')
    GetThingShadowResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotdataplane#GetThingShadowResponse', name: 'GetThingShadowResponse')
    InternalFailureException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotdataplane#InternalFailureException', name: 'InternalFailureException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    InvalidRequestException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotdataplane#InvalidRequestException', name: 'InvalidRequestException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    JsonDocument = Smithy::Schema::Shapes::BlobShape.new(id: 'com.amazonaws.iotdataplane#JsonDocument', name: 'JsonDocument')
    ListNamedShadowsForThingRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotdataplane#ListNamedShadowsForThingRequest', name: 'ListNamedShadowsForThingRequest')
    ListNamedShadowsForThingResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotdataplane#ListNamedShadowsForThingResponse', name: 'ListNamedShadowsForThingResponse')
    ListRetainedMessagesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotdataplane#ListRetainedMessagesRequest', name: 'ListRetainedMessagesRequest')
    ListRetainedMessagesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotdataplane#ListRetainedMessagesResponse', name: 'ListRetainedMessagesResponse')
    MaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.iotdataplane#MaxResults', name: 'MaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 200}})
    MessageExpiry = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.iotdataplane#MessageExpiry', name: 'MessageExpiry', traits: {"smithy.api#default" => 0})
    MethodNotAllowedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotdataplane#MethodNotAllowedException', name: 'MethodNotAllowedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 405})
    NamedShadowList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotdataplane#NamedShadowList', name: 'NamedShadowList')
    NextToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotdataplane#NextToken', name: 'NextToken')
    PageSize = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.iotdataplane#PageSize', name: 'PageSize', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    Payload = Smithy::Schema::Shapes::BlobShape.new(id: 'com.amazonaws.iotdataplane#Payload', name: 'Payload')
    PayloadFormatIndicator = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.iotdataplane#PayloadFormatIndicator', name: 'PayloadFormatIndicator')
    PayloadSize = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.iotdataplane#PayloadSize', name: 'PayloadSize', traits: {"smithy.api#default" => 0})
    PreventWillMessage = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.iotdataplane#PreventWillMessage', name: 'PreventWillMessage', traits: {"smithy.api#default" => false})
    PublishRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotdataplane#PublishRequest', name: 'PublishRequest')
    Qos = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.iotdataplane#Qos', name: 'Qos', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 1}})
    RequestEntityTooLargeException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotdataplane#RequestEntityTooLargeException', name: 'RequestEntityTooLargeException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 413})
    ResourceNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotdataplane#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResponseTopic = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotdataplane#ResponseTopic', name: 'ResponseTopic')
    Retain = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.iotdataplane#Retain', name: 'Retain', traits: {"smithy.api#default" => false})
    RetainedMessageList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotdataplane#RetainedMessageList', name: 'RetainedMessageList')
    RetainedMessageSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotdataplane#RetainedMessageSummary', name: 'RetainedMessageSummary')
    ServiceUnavailableException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotdataplane#ServiceUnavailableException', name: 'ServiceUnavailableException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 503})
    ShadowName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotdataplane#ShadowName', name: 'ShadowName', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[$a-zA-Z0-9:_-]+$"})
    SynthesizedJsonUserProperties = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotdataplane#SynthesizedJsonUserProperties', name: 'SynthesizedJsonUserProperties', traits: {"smithy.api#mediaType" => "application/json"})
    ThingName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotdataplane#ThingName', name: 'ThingName', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9:_-]+$"})
    ThrottlingException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotdataplane#ThrottlingException', name: 'ThrottlingException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    Timestamp = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.iotdataplane#Timestamp', name: 'Timestamp', traits: {"smithy.api#default" => 0})
    Topic = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotdataplane#Topic', name: 'Topic')
    UnauthorizedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotdataplane#UnauthorizedException', name: 'UnauthorizedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 401})
    UnsupportedDocumentEncodingException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotdataplane#UnsupportedDocumentEncodingException', name: 'UnsupportedDocumentEncodingException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 415})
    UpdateThingShadowRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotdataplane#UpdateThingShadowRequest', name: 'UpdateThingShadowRequest')
    UpdateThingShadowResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotdataplane#UpdateThingShadowResponse', name: 'UpdateThingShadowResponse')
    UserPropertiesBlob = Smithy::Schema::Shapes::BlobShape.new(id: 'com.amazonaws.iotdataplane#UserPropertiesBlob', name: 'UserPropertiesBlob')
    ErrorMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotdataplane#errorMessage', name: 'ErrorMessage')

    ConflictException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message for the exception.</p>"}))
    ConflictException.type = Types::ConflictException
    DeleteConnectionRequest.add_member(:client_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientId, location_name: 'clientId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the MQTT client to disconnect. The client ID can't start with a dollar sign ($).</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteConnectionRequest.add_member(:clean_session, Smithy::Schema::Shapes::ShapeRef.new(shape: CleanSession, location_name: 'cleanSession', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Specifies whether to remove the client's session state when disconnecting. Set to <code>TRUE</code> to delete all session information, including subscriptions and queued messages. Set to <code>FALSE</code> to preserve the session state. By default, this is set to <code>FALSE</code> (preserves the session state).</p>", "smithy.api#httpQuery" => "cleanSession"}))
    DeleteConnectionRequest.add_member(:prevent_will_message, Smithy::Schema::Shapes::ShapeRef.new(shape: PreventWillMessage, location_name: 'preventWillMessage', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Controls if Amazon Web Services IoT Core publishes the client's Last Will and Testament (LWT) message upon disconnection. Set to <code>TRUE</code> to prevent publishing the LWT message. Set to <code>FALSE</code> to allow publishing. By default, this is set to <code>FALSE</code> (allows publishing the LWT message).</p>", "smithy.api#httpQuery" => "preventWillMessage"}))
    DeleteConnectionRequest.type = Types::DeleteConnectionRequest
    DeleteThingShadowRequest.add_member(:thing_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ThingName, location_name: 'thingName', traits: {"smithy.api#documentation" => "<p>The name of the thing.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteThingShadowRequest.add_member(:shadow_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ShadowName, location_name: 'shadowName', traits: {"smithy.api#documentation" => "<p>The name of the shadow.</p>", "smithy.api#httpQuery" => "name"}))
    DeleteThingShadowRequest.type = Types::DeleteThingShadowRequest
    DeleteThingShadowResponse.add_member(:payload, Smithy::Schema::Shapes::ShapeRef.new(shape: JsonDocument, location_name: 'payload', traits: {"smithy.api#documentation" => "<p>The state information, in JSON format.</p>", "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    DeleteThingShadowResponse[:http_payload] = :payload
    DeleteThingShadowResponse[:http_payload_member] = DeleteThingShadowResponse.member(:payload)
    DeleteThingShadowResponse.type = Types::DeleteThingShadowResponse
    ForbiddenException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    ForbiddenException.type = Types::ForbiddenException
    GetRetainedMessageRequest.add_member(:topic, Smithy::Schema::Shapes::ShapeRef.new(shape: Topic, location_name: 'topic', traits: {"smithy.api#documentation" => "<p>The topic name of the retained message to retrieve.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetRetainedMessageRequest.type = Types::GetRetainedMessageRequest
    GetRetainedMessageResponse.add_member(:topic, Smithy::Schema::Shapes::ShapeRef.new(shape: Topic, location_name: 'topic', traits: {"smithy.api#documentation" => "<p>The topic name to which the retained message was published.</p>"}))
    GetRetainedMessageResponse.add_member(:payload, Smithy::Schema::Shapes::ShapeRef.new(shape: Payload, location_name: 'payload', traits: {"smithy.api#documentation" => "<p>The Base64-encoded message payload of the retained message body.</p>"}))
    GetRetainedMessageResponse.add_member(:qos, Smithy::Schema::Shapes::ShapeRef.new(shape: Qos, location_name: 'qos', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The quality of service (QoS) level used to publish the retained message.</p>"}))
    GetRetainedMessageResponse.add_member(:last_modified_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastModifiedTime', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The Epoch date and time, in milliseconds, when the retained message was stored by IoT.</p>"}))
    GetRetainedMessageResponse.add_member(:user_properties, Smithy::Schema::Shapes::ShapeRef.new(shape: UserPropertiesBlob, location_name: 'userProperties', traits: {"smithy.api#documentation" => "<p>A base64-encoded JSON string that includes an array of JSON objects, or null if the\n      retained message doesn't include any user properties.</p>\n         <p>The following example <code>userProperties</code> parameter is a JSON string that\n      represents two user properties. Note that it will be base64-encoded:</p>\n         <p>\n            <code>[{\"deviceName\": \"alpha\"}, {\"deviceCnt\": \"45\"}]</code>\n         </p>"}))
    GetRetainedMessageResponse.type = Types::GetRetainedMessageResponse
    GetThingShadowRequest.add_member(:thing_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ThingName, location_name: 'thingName', traits: {"smithy.api#documentation" => "<p>The name of the thing.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetThingShadowRequest.add_member(:shadow_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ShadowName, location_name: 'shadowName', traits: {"smithy.api#documentation" => "<p>The name of the shadow.</p>", "smithy.api#httpQuery" => "name"}))
    GetThingShadowRequest.type = Types::GetThingShadowRequest
    GetThingShadowResponse.add_member(:payload, Smithy::Schema::Shapes::ShapeRef.new(shape: JsonDocument, location_name: 'payload', traits: {"smithy.api#documentation" => "<p>The state information, in JSON format.</p>", "smithy.api#httpPayload" => {}}))
    GetThingShadowResponse[:http_payload] = :payload
    GetThingShadowResponse[:http_payload_member] = GetThingShadowResponse.member(:payload)
    GetThingShadowResponse.type = Types::GetThingShadowResponse
    InternalFailureException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message for the exception.</p>"}))
    InternalFailureException.type = Types::InternalFailureException
    InvalidRequestException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message for the exception.</p>"}))
    InvalidRequestException.type = Types::InvalidRequestException
    ListNamedShadowsForThingRequest.add_member(:thing_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ThingName, location_name: 'thingName', traits: {"smithy.api#documentation" => "<p>The name of the thing.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListNamedShadowsForThingRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token to retrieve the next set of results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListNamedShadowsForThingRequest.add_member(:page_size, Smithy::Schema::Shapes::ShapeRef.new(shape: PageSize, location_name: 'pageSize', traits: {"smithy.api#documentation" => "<p>The result page size.</p>", "smithy.api#httpQuery" => "pageSize"}))
    ListNamedShadowsForThingRequest.type = Types::ListNamedShadowsForThingRequest
    ListNamedShadowsForThingResponse.add_member(:results, Smithy::Schema::Shapes::ShapeRef.new(shape: NamedShadowList, location_name: 'results', traits: {"smithy.api#documentation" => "<p>The list of shadows for the specified thing.</p>"}))
    ListNamedShadowsForThingResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token to use to get the next set of results, or <b>null</b> if there are no additional results.</p>"}))
    ListNamedShadowsForThingResponse.add_member(:timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'timestamp', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The Epoch date and time the response was generated by IoT.</p>"}))
    ListNamedShadowsForThingResponse.type = Types::ListNamedShadowsForThingResponse
    ListRetainedMessagesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>To retrieve the next set of results, the <code>nextToken</code>\n      value from a previous response; otherwise <b>null</b> to receive\n      the first set of results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListRetainedMessagesRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return at one time.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListRetainedMessagesRequest.type = Types::ListRetainedMessagesRequest
    ListRetainedMessagesResponse.add_member(:retained_topics, Smithy::Schema::Shapes::ShapeRef.new(shape: RetainedMessageList, location_name: 'retainedTopics', traits: {"smithy.api#documentation" => "<p>A summary list the account's retained messages. The information returned doesn't include\n      the message payloads of the retained messages.</p>"}))
    ListRetainedMessagesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of results, or null if there are no additional results.</p>"}))
    ListRetainedMessagesResponse.type = Types::ListRetainedMessagesResponse
    MethodNotAllowedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message for the exception.</p>"}))
    MethodNotAllowedException.type = Types::MethodNotAllowedException
    NamedShadowList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ShadowName)
    PayloadFormatIndicator.add_member(:unspecified_bytes, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNSPECIFIED_BYTES', traits: {"smithy.api#enumValue" => "UNSPECIFIED_BYTES"}))
    PayloadFormatIndicator.add_member(:utf8_data, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UTF8_DATA', traits: {"smithy.api#enumValue" => "UTF8_DATA"}))
    PublishRequest.add_member(:topic, Smithy::Schema::Shapes::ShapeRef.new(shape: Topic, location_name: 'topic', traits: {"smithy.api#documentation" => "<p>The name of the MQTT topic.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PublishRequest.add_member(:qos, Smithy::Schema::Shapes::ShapeRef.new(shape: Qos, location_name: 'qos', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The Quality of Service (QoS) level. The default QoS level is 0.</p>", "smithy.api#httpQuery" => "qos"}))
    PublishRequest.add_member(:retain, Smithy::Schema::Shapes::ShapeRef.new(shape: Retain, location_name: 'retain', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>A Boolean value that determines whether to set the RETAIN flag when the message is published.</p>\n         <p>Setting the RETAIN flag causes the message to be retained and sent to new subscribers to the topic.</p>\n         <p>Valid values: <code>true</code> | <code>false</code>\n         </p>\n         <p>Default value: <code>false</code>\n         </p>", "smithy.api#httpQuery" => "retain"}))
    PublishRequest.add_member(:payload, Smithy::Schema::Shapes::ShapeRef.new(shape: Payload, location_name: 'payload', traits: {"smithy.api#documentation" => "<p>The message body. MQTT accepts text, binary, and empty (null) message payloads.</p>\n         <p>Publishing an empty (null) payload with <b>retain</b> =\n        <code>true</code> deletes the retained message identified by <b>topic</b> from Amazon Web Services IoT Core.</p>", "smithy.api#httpPayload" => {}}))
    PublishRequest.add_member(:user_properties, Smithy::Schema::Shapes::ShapeRef.new(shape: SynthesizedJsonUserProperties, location_name: 'userProperties', traits: {"smithy.api#documentation" => "<p>A JSON string that contains an array of JSON objects. If you don’t use Amazon Web Services SDK or CLI,\n      you must encode the JSON string to base64 format before adding it to the HTTP header.\n        <code>userProperties</code> is an HTTP header value in the API.</p>\n         <p>The following example <code>userProperties</code> parameter is a JSON string which\n      represents two User Properties. Note that it needs to be base64-encoded:</p>\n         <p>\n            <code>[{\"deviceName\": \"alpha\"}, {\"deviceCnt\": \"45\"}]</code>\n         </p>", "smithy.api#httpHeader" => "x-amz-mqtt5-user-properties"}))
    PublishRequest.add_member(:payload_format_indicator, Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadFormatIndicator, location_name: 'payloadFormatIndicator', traits: {"smithy.api#documentation" => "<p>An <code>Enum</code> string value that indicates whether the payload is formatted as\n      UTF-8. <code>payloadFormatIndicator</code> is an HTTP header value in the API.</p>", "smithy.api#httpHeader" => "x-amz-mqtt5-payload-format-indicator"}))
    PublishRequest.add_member(:content_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ContentType, location_name: 'contentType', traits: {"smithy.api#documentation" => "<p>A UTF-8 encoded string that describes the content of the publishing message.</p>", "smithy.api#httpQuery" => "contentType"}))
    PublishRequest.add_member(:response_topic, Smithy::Schema::Shapes::ShapeRef.new(shape: ResponseTopic, location_name: 'responseTopic', traits: {"smithy.api#documentation" => "<p>A UTF-8 encoded string that's used as the topic name for a response message. The response\n      topic is used to describe the topic which the receiver should publish to as part of the\n      request-response flow. The topic must not contain wildcard characters.</p>", "smithy.api#httpQuery" => "responseTopic"}))
    PublishRequest.add_member(:correlation_data, Smithy::Schema::Shapes::ShapeRef.new(shape: CorrelationData, location_name: 'correlationData', traits: {"smithy.api#documentation" => "<p>The base64-encoded binary data used by the sender of the request message to identify which\n      request the response message is for when it's received. <code>correlationData</code> is an\n      HTTP header value in the API.</p>", "smithy.api#httpHeader" => "x-amz-mqtt5-correlation-data"}))
    PublishRequest.add_member(:message_expiry, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageExpiry, location_name: 'messageExpiry', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>A user-defined integer value that represents the message expiry interval in seconds. If\n      absent, the message doesn't expire. For more information about the limits of\n        <code>messageExpiry</code>, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/iot-core.html#message-broker-limits\">Amazon Web Services IoT Core message broker and\n        protocol limits and quotas </a> from the Amazon Web Services Reference Guide.</p>", "smithy.api#httpQuery" => "messageExpiry"}))
    PublishRequest[:http_payload] = :payload
    PublishRequest[:http_payload_member] = PublishRequest.member(:payload)
    PublishRequest.type = Types::PublishRequest
    RequestEntityTooLargeException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message for the exception.</p>"}))
    RequestEntityTooLargeException.type = Types::RequestEntityTooLargeException
    ResourceNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message for the exception.</p>"}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    RetainedMessageList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RetainedMessageSummary)
    RetainedMessageSummary.add_member(:topic, Smithy::Schema::Shapes::ShapeRef.new(shape: Topic, location_name: 'topic', traits: {"smithy.api#documentation" => "<p>The topic name to which the retained message was published.</p>"}))
    RetainedMessageSummary.add_member(:payload_size, Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadSize, location_name: 'payloadSize', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The size of the retained message's payload in bytes.</p>"}))
    RetainedMessageSummary.add_member(:qos, Smithy::Schema::Shapes::ShapeRef.new(shape: Qos, location_name: 'qos', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The quality of service (QoS) level used to publish the retained message.</p>"}))
    RetainedMessageSummary.add_member(:last_modified_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastModifiedTime', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The Epoch date and time, in milliseconds, when the retained message was stored by IoT.</p>"}))
    RetainedMessageSummary.type = Types::RetainedMessageSummary
    ServiceUnavailableException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message for the exception.</p>"}))
    ServiceUnavailableException.type = Types::ServiceUnavailableException
    ThrottlingException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message for the exception.</p>"}))
    ThrottlingException.type = Types::ThrottlingException
    UnauthorizedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message for the exception.</p>"}))
    UnauthorizedException.type = Types::UnauthorizedException
    UnsupportedDocumentEncodingException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message for the exception.</p>"}))
    UnsupportedDocumentEncodingException.type = Types::UnsupportedDocumentEncodingException
    UpdateThingShadowRequest.add_member(:thing_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ThingName, location_name: 'thingName', traits: {"smithy.api#documentation" => "<p>The name of the thing.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateThingShadowRequest.add_member(:shadow_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ShadowName, location_name: 'shadowName', traits: {"smithy.api#documentation" => "<p>The name of the shadow.</p>", "smithy.api#httpQuery" => "name"}))
    UpdateThingShadowRequest.add_member(:payload, Smithy::Schema::Shapes::ShapeRef.new(shape: JsonDocument, location_name: 'payload', traits: {"smithy.api#documentation" => "<p>The state information, in JSON format.</p>", "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    UpdateThingShadowRequest[:http_payload] = :payload
    UpdateThingShadowRequest[:http_payload_member] = UpdateThingShadowRequest.member(:payload)
    UpdateThingShadowRequest.type = Types::UpdateThingShadowRequest
    UpdateThingShadowResponse.add_member(:payload, Smithy::Schema::Shapes::ShapeRef.new(shape: JsonDocument, location_name: 'payload', traits: {"smithy.api#documentation" => "<p>The state information, in JSON format.</p>", "smithy.api#httpPayload" => {}}))
    UpdateThingShadowResponse[:http_payload] = :payload
    UpdateThingShadowResponse[:http_payload_member] = UpdateThingShadowResponse.member(:payload)
    UpdateThingShadowResponse.type = Types::UpdateThingShadowResponse

    IotMoonrakerService = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.iotdataplane#IotMoonrakerService"
      service.name = "IotMoonrakerService"
      service.version = "2015-05-28"
      service.traits = {"aws.api#service" => {"sdkId" => "IoT Data Plane", "arnNamespace" => "iotdata", "cloudFormationName" => "IoTDataPlane", "cloudTrailEventSource" => "iotdataplane.amazonaws.com", "docId" => "iot-data-2015-05-28", "endpointPrefix" => "data-ats.iot"}, "aws.auth#sigv4" => {"name" => "iotdata"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "AWS IoT Data Plane"}
      service.add_operation(:delete_connection, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotdataplane#DeleteConnection"
        operation.name = "DeleteConnection"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteConnectionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/connections/{clientId}", "code" => 200}}
      end)
      service.add_operation(:delete_thing_shadow, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotdataplane#DeleteThingShadow"
        operation.name = "DeleteThingShadow"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteThingShadowRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteThingShadowResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedDocumentEncodingException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/things/{thingName}/shadow", "code" => 200}}
      end)
      service.add_operation(:get_retained_message, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotdataplane#GetRetainedMessage"
        operation.name = "GetRetainedMessage"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetRetainedMessageRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetRetainedMessageResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/retainedMessage/{topic}", "code" => 200}}
      end)
      service.add_operation(:get_thing_shadow, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotdataplane#GetThingShadow"
        operation.name = "GetThingShadow"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetThingShadowRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetThingShadowResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedDocumentEncodingException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/things/{thingName}/shadow", "code" => 200}, "smithy.test#smokeTests" => [{"id" => "GetThingShadowFailure", "params" => {"thingName" => "fake-thing"}, "vendorParams" => {"region" => "us-west-2", "uri" => "https://data-ats.iot.us-west-2.amazonaws.com"}, "vendorParamsShape" => "aws.test#AwsVendorParams", "expect" => {"failure" => {}}}]}
      end)
      service.add_operation(:list_named_shadows_for_thing, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotdataplane#ListNamedShadowsForThing"
        operation.name = "ListNamedShadowsForThing"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListNamedShadowsForThingRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListNamedShadowsForThingResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/api/things/shadow/ListNamedShadowsForThing/{thingName}", "code" => 200}}
      end)
      service.add_operation(:list_retained_messages, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotdataplane#ListRetainedMessages"
        operation.name = "ListRetainedMessages"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListRetainedMessagesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListRetainedMessagesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/retainedMessage", "code" => 200}}
        operation[:paginator] = Paginators::ListRetainedMessages.new
      end)
      service.add_operation(:publish, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotdataplane#Publish"
        operation.name = "Publish"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PublishRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/topics/{topic}", "code" => 200}}
      end)
      service.add_operation(:update_thing_shadow, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotdataplane#UpdateThingShadow"
        operation.name = "UpdateThingShadow"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateThingShadowRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateThingShadowResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RequestEntityTooLargeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedDocumentEncodingException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/things/{thingName}/shadow", "code" => 200}}
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
