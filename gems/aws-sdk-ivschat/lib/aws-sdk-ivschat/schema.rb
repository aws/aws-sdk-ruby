# frozen_string_literal: true

# This is generated code!

module Aws::Ivschat
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivschat#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    BucketName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ivschat#BucketName", name: "BucketName", traits: {"smithy.api#length" => {"min" => 3, "max" => 63}, "smithy.api#pattern" => "^[a-z0-9-.]+$"})
    ChatToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ivschat#ChatToken", name: "ChatToken", traits: {"smithy.api#sensitive" => {}})
    ChatTokenAttributes = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.ivschat#ChatTokenAttributes", name: "ChatTokenAttributes", traits: {"smithy.api#sensitive" => {}})
    ChatTokenCapabilities = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ivschat#ChatTokenCapabilities", name: "ChatTokenCapabilities")
    ChatTokenCapability = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ivschat#ChatTokenCapability", name: "ChatTokenCapability", traits: {"smithy.api#enum" => [{"value" => "SEND_MESSAGE", "name" => "SEND_MESSAGE"}, {"value" => "DISCONNECT_USER", "name" => "DISCONNECT_USER"}, {"value" => "DELETE_MESSAGE", "name" => "DELETE_MESSAGE"}]})
    CloudWatchLogsDestinationConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivschat#CloudWatchLogsDestinationConfiguration", name: "CloudWatchLogsDestinationConfiguration")
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivschat#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CreateChatTokenInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivschat#CreateChatTokenInput", name: "CreateChatTokenInput")
    CreateChatTokenOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivschat#CreateChatTokenOutput", name: "CreateChatTokenOutput")
    CreateLoggingConfigurationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivschat#CreateLoggingConfigurationInput", name: "CreateLoggingConfigurationInput")
    CreateLoggingConfigurationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivschat#CreateLoggingConfigurationOutput", name: "CreateLoggingConfigurationOutput")
    CreateLoggingConfigurationState = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ivschat#CreateLoggingConfigurationState", name: "CreateLoggingConfigurationState", traits: {"smithy.api#enum" => [{"value" => "ACTIVE", "name" => "ACTIVE"}]})
    CreateRoomInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivschat#CreateRoomInput", name: "CreateRoomInput")
    CreateRoomOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivschat#CreateRoomOutput", name: "CreateRoomOutput")
    DeleteLoggingConfigurationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivschat#DeleteLoggingConfigurationInput", name: "DeleteLoggingConfigurationInput")
    DeleteMessageInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivschat#DeleteMessageInput", name: "DeleteMessageInput")
    DeleteMessageOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivschat#DeleteMessageOutput", name: "DeleteMessageOutput")
    DeleteRoomInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivschat#DeleteRoomInput", name: "DeleteRoomInput")
    DeliveryStreamName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ivschat#DeliveryStreamName", name: "DeliveryStreamName", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9_.-]+$"})
    DestinationConfiguration = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.ivschat#DestinationConfiguration", name: "DestinationConfiguration")
    DisconnectUserInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivschat#DisconnectUserInput", name: "DisconnectUserInput")
    DisconnectUserOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivschat#DisconnectUserOutput", name: "DisconnectUserOutput")
    ErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ivschat#ErrorMessage", name: "ErrorMessage")
    EventAttributes = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.ivschat#EventAttributes", name: "EventAttributes")
    EventName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ivschat#EventName", name: "EventName", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    FallbackResult = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ivschat#FallbackResult", name: "FallbackResult", traits: {"smithy.api#enum" => [{"value" => "ALLOW", "name" => "ALLOW"}, {"value" => "DENY", "name" => "DENY"}]})
    FieldName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ivschat#FieldName", name: "FieldName")
    FirehoseDestinationConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivschat#FirehoseDestinationConfiguration", name: "FirehoseDestinationConfiguration")
    GetLoggingConfigurationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivschat#GetLoggingConfigurationInput", name: "GetLoggingConfigurationInput")
    GetLoggingConfigurationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivschat#GetLoggingConfigurationOutput", name: "GetLoggingConfigurationOutput")
    GetRoomInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivschat#GetRoomInput", name: "GetRoomInput")
    GetRoomOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivschat#GetRoomOutput", name: "GetRoomOutput")
    ID = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ivschat#ID", name: "ID", traits: {"smithy.api#length" => {"min" => 12, "max" => 12}, "smithy.api#pattern" => "^[a-zA-Z0-9]+$"})
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivschat#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    LambdaArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ivschat#LambdaArn", name: "LambdaArn", traits: {"smithy.api#length" => {"min" => 0, "max" => 170}, "smithy.api#pattern" => "^$|^arn:aws:lambda:[a-z0-9-]+:[0-9]{12}:function:.+"})
    Limit = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.ivschat#Limit", name: "Limit", traits: {"smithy.api#default" => 0})
    ListLoggingConfigurationsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivschat#ListLoggingConfigurationsInput", name: "ListLoggingConfigurationsInput")
    ListLoggingConfigurationsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivschat#ListLoggingConfigurationsOutput", name: "ListLoggingConfigurationsOutput")
    ListRoomsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivschat#ListRoomsInput", name: "ListRoomsInput")
    ListRoomsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivschat#ListRoomsOutput", name: "ListRoomsOutput")
    ListTagsForResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivschat#ListTagsForResourceInput", name: "ListTagsForResourceInput")
    ListTagsForResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivschat#ListTagsForResourceOutput", name: "ListTagsForResourceOutput")
    LogGroupName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ivschat#LogGroupName", name: "LogGroupName", traits: {"smithy.api#length" => {"min" => 1, "max" => 512}, "smithy.api#pattern" => "^[\\.\\-_/#A-Za-z0-9]+$"})
    LoggingConfigurationArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ivschat#LoggingConfigurationArn", name: "LoggingConfigurationArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^arn:aws:ivschat:[a-z0-9-]+:[0-9]+:logging-configuration/[a-zA-Z0-9-]+$"})
    LoggingConfigurationID = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ivschat#LoggingConfigurationID", name: "LoggingConfigurationID", traits: {"smithy.api#length" => {"min" => 12, "max" => 12}, "smithy.api#pattern" => "^[a-zA-Z0-9]+$"})
    LoggingConfigurationIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ivschat#LoggingConfigurationIdentifier", name: "LoggingConfigurationIdentifier", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^arn:aws:ivschat:[a-z0-9-]+:[0-9]+:logging-configuration/[a-zA-Z0-9-]+$"})
    LoggingConfigurationIdentifierList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ivschat#LoggingConfigurationIdentifierList", name: "LoggingConfigurationIdentifierList", traits: {"smithy.api#length" => {"min" => 0, "max" => 3}})
    LoggingConfigurationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ivschat#LoggingConfigurationList", name: "LoggingConfigurationList")
    LoggingConfigurationName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ivschat#LoggingConfigurationName", name: "LoggingConfigurationName", traits: {"smithy.api#length" => {"max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9-_]*$"})
    LoggingConfigurationState = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ivschat#LoggingConfigurationState", name: "LoggingConfigurationState", traits: {"smithy.api#enum" => [{"value" => "CREATING", "name" => "CREATING"}, {"value" => "CREATE_FAILED", "name" => "CREATE_FAILED"}, {"value" => "DELETING", "name" => "DELETING"}, {"value" => "DELETE_FAILED", "name" => "DELETE_FAILED"}, {"value" => "UPDATING", "name" => "UPDATING"}, {"value" => "UPDATE_FAILED", "name" => "UPDATE_FAILED"}, {"value" => "ACTIVE", "name" => "ACTIVE"}]})
    LoggingConfigurationSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivschat#LoggingConfigurationSummary", name: "LoggingConfigurationSummary")
    MaxLoggingConfigurationResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.ivschat#MaxLoggingConfigurationResults", name: "MaxLoggingConfigurationResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 50}})
    MaxRoomResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.ivschat#MaxRoomResults", name: "MaxRoomResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 50}})
    MessageID = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ivschat#MessageID", name: "MessageID", traits: {"smithy.api#length" => {"min" => 12, "max" => 12}, "smithy.api#pattern" => "^[a-zA-Z0-9]+$"})
    MessageReviewHandler = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivschat#MessageReviewHandler", name: "MessageReviewHandler")
    PaginationToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ivschat#PaginationToken", name: "PaginationToken", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}})
    PendingVerification = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivschat#PendingVerification", name: "PendingVerification", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    Reason = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ivschat#Reason", name: "Reason", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    ResourceArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ivschat#ResourceArn", name: "ResourceArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^arn:aws:ivschat:[a-z0-9-]+:[0-9]+:[a-z-]/[a-zA-Z0-9-]+$"})
    ResourceId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ivschat#ResourceId", name: "ResourceId", traits: {"smithy.api#pattern" => "^[a-zA-Z0-9]+$"})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivschat#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourceType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ivschat#ResourceType", name: "ResourceType", traits: {"smithy.api#enum" => [{"value" => "ROOM", "name" => "ROOM"}]})
    RoomArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ivschat#RoomArn", name: "RoomArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^arn:aws:ivschat:[a-z0-9-]+:[0-9]+:room/[a-zA-Z0-9-]+$"})
    RoomID = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ivschat#RoomID", name: "RoomID", traits: {"smithy.api#length" => {"min" => 12, "max" => 12}, "smithy.api#pattern" => "^[a-zA-Z0-9]+$"})
    RoomIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ivschat#RoomIdentifier", name: "RoomIdentifier", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^arn:aws:ivschat:[a-z0-9-]+:[0-9]+:room/[a-zA-Z0-9-]+$"})
    RoomList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ivschat#RoomList", name: "RoomList")
    RoomMaxMessageLength = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.ivschat#RoomMaxMessageLength", name: "RoomMaxMessageLength", traits: {"smithy.api#range" => {"min" => 1, "max" => 500}})
    RoomMaxMessageRatePerSecond = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.ivschat#RoomMaxMessageRatePerSecond", name: "RoomMaxMessageRatePerSecond", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    RoomName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ivschat#RoomName", name: "RoomName", traits: {"smithy.api#length" => {"max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9-_]*$"})
    RoomSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivschat#RoomSummary", name: "RoomSummary")
    S3DestinationConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivschat#S3DestinationConfiguration", name: "S3DestinationConfiguration")
    SendEventInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivschat#SendEventInput", name: "SendEventInput")
    SendEventOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivschat#SendEventOutput", name: "SendEventOutput")
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivschat#ServiceQuotaExceededException", name: "ServiceQuotaExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    SessionDurationInMinutes = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.ivschat#SessionDurationInMinutes", name: "SessionDurationInMinutes", traits: {"smithy.api#range" => {"min" => 1, "max" => 180}})
    String = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ivschat#String", name: "String")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ivschat#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ivschat#TagKeyList", name: "TagKeyList", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    TagResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivschat#TagResourceInput", name: "TagResourceInput")
    TagResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivschat#TagResourceOutput", name: "TagResourceOutput")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ivschat#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    Tags = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.ivschat#Tags", name: "Tags", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivschat#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    Time = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.ivschat#Time", name: "Time", traits: {"smithy.api#timestampFormat" => "date-time"})
    UntagResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivschat#UntagResourceInput", name: "UntagResourceInput")
    UntagResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivschat#UntagResourceOutput", name: "UntagResourceOutput")
    UpdateLoggingConfigurationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivschat#UpdateLoggingConfigurationInput", name: "UpdateLoggingConfigurationInput")
    UpdateLoggingConfigurationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivschat#UpdateLoggingConfigurationOutput", name: "UpdateLoggingConfigurationOutput")
    UpdateLoggingConfigurationState = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ivschat#UpdateLoggingConfigurationState", name: "UpdateLoggingConfigurationState", traits: {"smithy.api#enum" => [{"value" => "ACTIVE", "name" => "ACTIVE"}]})
    UpdateRoomInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivschat#UpdateRoomInput", name: "UpdateRoomInput")
    UpdateRoomOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivschat#UpdateRoomOutput", name: "UpdateRoomOutput")
    UserID = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ivschat#UserID", name: "UserID", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#sensitive" => {}})
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivschat#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ValidationExceptionField = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivschat#ValidationExceptionField", name: "ValidationExceptionField")
    ValidationExceptionFieldList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ivschat#ValidationExceptionFieldList", name: "ValidationExceptionFieldList")
    ValidationExceptionReason = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ivschat#ValidationExceptionReason", name: "ValidationExceptionReason", traits: {"smithy.api#enum" => [{"value" => "UNKNOWN_OPERATION", "name" => "UNKNOWN_OPERATION"}, {"value" => "FIELD_VALIDATION_FAILED", "name" => "FIELD_VALIDATION_FAILED"}, {"value" => "OTHER", "name" => "OTHER"}]})

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message", traits: {"smithy.api#required" => {}}))
    AccessDeniedException.type = Types::AccessDeniedException
    ChatTokenAttributes.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    ChatTokenAttributes.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    ChatTokenCapabilities.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChatTokenCapability)
    CloudWatchLogsDestinationConfiguration.add_member(:log_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogGroupName, location_name: "logGroupName", traits: {"smithy.api#required" => {}}))
    CloudWatchLogsDestinationConfiguration.type = Types::CloudWatchLogsDestinationConfiguration
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message", traits: {"smithy.api#required" => {}}))
    ConflictException.add_member(:resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "resourceId", traits: {"smithy.api#required" => {}}))
    ConflictException.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: "resourceType", traits: {"smithy.api#required" => {}}))
    ConflictException.type = Types::ConflictException
    CreateChatTokenInput.add_member(:room_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoomIdentifier, location_name: "roomIdentifier", traits: {"smithy.api#required" => {}}))
    CreateChatTokenInput.add_member(:user_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserID, location_name: "userId", traits: {"smithy.api#required" => {}}))
    CreateChatTokenInput.add_member(:capabilities, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChatTokenCapabilities, location_name: "capabilities"))
    CreateChatTokenInput.add_member(:session_duration_in_minutes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SessionDurationInMinutes, location_name: "sessionDurationInMinutes"))
    CreateChatTokenInput.add_member(:attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChatTokenAttributes, location_name: "attributes"))
    CreateChatTokenInput.type = Types::CreateChatTokenInput
    CreateChatTokenOutput.add_member(:token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChatToken, location_name: "token"))
    CreateChatTokenOutput.add_member(:token_expiration_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Time, location_name: "tokenExpirationTime"))
    CreateChatTokenOutput.add_member(:session_expiration_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Time, location_name: "sessionExpirationTime"))
    CreateChatTokenOutput.type = Types::CreateChatTokenOutput
    CreateLoggingConfigurationInput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LoggingConfigurationName, location_name: "name"))
    CreateLoggingConfigurationInput.add_member(:destination_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DestinationConfiguration, location_name: "destinationConfiguration", traits: {"smithy.api#required" => {}}))
    CreateLoggingConfigurationInput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreateLoggingConfigurationInput.type = Types::CreateLoggingConfigurationInput
    CreateLoggingConfigurationOutput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LoggingConfigurationArn, location_name: "arn"))
    CreateLoggingConfigurationOutput.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LoggingConfigurationID, location_name: "id"))
    CreateLoggingConfigurationOutput.add_member(:create_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Time, location_name: "createTime"))
    CreateLoggingConfigurationOutput.add_member(:update_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Time, location_name: "updateTime"))
    CreateLoggingConfigurationOutput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LoggingConfigurationName, location_name: "name"))
    CreateLoggingConfigurationOutput.add_member(:destination_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DestinationConfiguration, location_name: "destinationConfiguration"))
    CreateLoggingConfigurationOutput.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateLoggingConfigurationState, location_name: "state"))
    CreateLoggingConfigurationOutput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreateLoggingConfigurationOutput.type = Types::CreateLoggingConfigurationOutput
    CreateRoomInput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoomName, location_name: "name"))
    CreateRoomInput.add_member(:maximum_message_rate_per_second, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoomMaxMessageRatePerSecond, location_name: "maximumMessageRatePerSecond"))
    CreateRoomInput.add_member(:maximum_message_length, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoomMaxMessageLength, location_name: "maximumMessageLength"))
    CreateRoomInput.add_member(:message_review_handler, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageReviewHandler, location_name: "messageReviewHandler"))
    CreateRoomInput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreateRoomInput.add_member(:logging_configuration_identifiers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LoggingConfigurationIdentifierList, location_name: "loggingConfigurationIdentifiers"))
    CreateRoomInput.type = Types::CreateRoomInput
    CreateRoomOutput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoomArn, location_name: "arn"))
    CreateRoomOutput.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoomID, location_name: "id"))
    CreateRoomOutput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoomName, location_name: "name"))
    CreateRoomOutput.add_member(:create_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Time, location_name: "createTime"))
    CreateRoomOutput.add_member(:update_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Time, location_name: "updateTime"))
    CreateRoomOutput.add_member(:maximum_message_rate_per_second, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoomMaxMessageRatePerSecond, location_name: "maximumMessageRatePerSecond"))
    CreateRoomOutput.add_member(:maximum_message_length, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoomMaxMessageLength, location_name: "maximumMessageLength"))
    CreateRoomOutput.add_member(:message_review_handler, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageReviewHandler, location_name: "messageReviewHandler"))
    CreateRoomOutput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreateRoomOutput.add_member(:logging_configuration_identifiers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LoggingConfigurationIdentifierList, location_name: "loggingConfigurationIdentifiers"))
    CreateRoomOutput.type = Types::CreateRoomOutput
    DeleteLoggingConfigurationInput.add_member(:identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LoggingConfigurationIdentifier, location_name: "identifier", traits: {"smithy.api#required" => {}}))
    DeleteLoggingConfigurationInput.type = Types::DeleteLoggingConfigurationInput
    DeleteMessageInput.add_member(:room_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoomIdentifier, location_name: "roomIdentifier", traits: {"smithy.api#required" => {}}))
    DeleteMessageInput.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageID, location_name: "id", traits: {"smithy.api#required" => {}}))
    DeleteMessageInput.add_member(:reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Reason, location_name: "reason"))
    DeleteMessageInput.type = Types::DeleteMessageInput
    DeleteMessageOutput.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: "id"))
    DeleteMessageOutput.type = Types::DeleteMessageOutput
    DeleteRoomInput.add_member(:identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoomIdentifier, location_name: "identifier", traits: {"smithy.api#required" => {}}))
    DeleteRoomInput.type = Types::DeleteRoomInput
    DestinationConfiguration.add_member(:s3, Types::DestinationConfiguration::S3, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3DestinationConfiguration, location_name: "s3"))
    DestinationConfiguration.add_member(:cloud_watch_logs, Types::DestinationConfiguration::CloudWatchLogs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudWatchLogsDestinationConfiguration, location_name: "cloudWatchLogs"))
    DestinationConfiguration.add_member(:firehose, Types::DestinationConfiguration::Firehose, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FirehoseDestinationConfiguration, location_name: "firehose"))
    DestinationConfiguration.add_member(:unknown, Types::DestinationConfiguration::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    DestinationConfiguration.type = Types::DestinationConfiguration
    DisconnectUserInput.add_member(:room_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoomIdentifier, location_name: "roomIdentifier", traits: {"smithy.api#required" => {}}))
    DisconnectUserInput.add_member(:user_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserID, location_name: "userId", traits: {"smithy.api#required" => {}}))
    DisconnectUserInput.add_member(:reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Reason, location_name: "reason"))
    DisconnectUserInput.type = Types::DisconnectUserInput
    DisconnectUserOutput.type = Types::DisconnectUserOutput
    EventAttributes.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    EventAttributes.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    FirehoseDestinationConfiguration.add_member(:delivery_stream_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeliveryStreamName, location_name: "deliveryStreamName", traits: {"smithy.api#required" => {}}))
    FirehoseDestinationConfiguration.type = Types::FirehoseDestinationConfiguration
    GetLoggingConfigurationInput.add_member(:identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LoggingConfigurationIdentifier, location_name: "identifier", traits: {"smithy.api#required" => {}}))
    GetLoggingConfigurationInput.type = Types::GetLoggingConfigurationInput
    GetLoggingConfigurationOutput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LoggingConfigurationArn, location_name: "arn"))
    GetLoggingConfigurationOutput.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LoggingConfigurationID, location_name: "id"))
    GetLoggingConfigurationOutput.add_member(:create_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Time, location_name: "createTime"))
    GetLoggingConfigurationOutput.add_member(:update_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Time, location_name: "updateTime"))
    GetLoggingConfigurationOutput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LoggingConfigurationName, location_name: "name"))
    GetLoggingConfigurationOutput.add_member(:destination_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DestinationConfiguration, location_name: "destinationConfiguration"))
    GetLoggingConfigurationOutput.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LoggingConfigurationState, location_name: "state"))
    GetLoggingConfigurationOutput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    GetLoggingConfigurationOutput.type = Types::GetLoggingConfigurationOutput
    GetRoomInput.add_member(:identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoomIdentifier, location_name: "identifier", traits: {"smithy.api#required" => {}}))
    GetRoomInput.type = Types::GetRoomInput
    GetRoomOutput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoomArn, location_name: "arn"))
    GetRoomOutput.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoomID, location_name: "id"))
    GetRoomOutput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoomName, location_name: "name"))
    GetRoomOutput.add_member(:create_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Time, location_name: "createTime"))
    GetRoomOutput.add_member(:update_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Time, location_name: "updateTime"))
    GetRoomOutput.add_member(:maximum_message_rate_per_second, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoomMaxMessageRatePerSecond, location_name: "maximumMessageRatePerSecond"))
    GetRoomOutput.add_member(:maximum_message_length, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoomMaxMessageLength, location_name: "maximumMessageLength"))
    GetRoomOutput.add_member(:message_review_handler, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageReviewHandler, location_name: "messageReviewHandler"))
    GetRoomOutput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    GetRoomOutput.add_member(:logging_configuration_identifiers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LoggingConfigurationIdentifierList, location_name: "loggingConfigurationIdentifiers"))
    GetRoomOutput.type = Types::GetRoomOutput
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message", traits: {"smithy.api#required" => {}}))
    InternalServerException.type = Types::InternalServerException
    ListLoggingConfigurationsInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListLoggingConfigurationsInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxLoggingConfigurationResults, location_name: "maxResults"))
    ListLoggingConfigurationsInput.type = Types::ListLoggingConfigurationsInput
    ListLoggingConfigurationsOutput.add_member(:logging_configurations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LoggingConfigurationList, location_name: "loggingConfigurations", traits: {"smithy.api#required" => {}}))
    ListLoggingConfigurationsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListLoggingConfigurationsOutput.type = Types::ListLoggingConfigurationsOutput
    ListRoomsInput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoomName, location_name: "name"))
    ListRoomsInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListRoomsInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxRoomResults, location_name: "maxResults"))
    ListRoomsInput.add_member(:message_review_handler_uri, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LambdaArn, location_name: "messageReviewHandlerUri"))
    ListRoomsInput.add_member(:logging_configuration_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LoggingConfigurationIdentifier, location_name: "loggingConfigurationIdentifier"))
    ListRoomsInput.type = Types::ListRoomsInput
    ListRoomsOutput.add_member(:rooms, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoomList, location_name: "rooms", traits: {"smithy.api#required" => {}}))
    ListRoomsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListRoomsOutput.type = Types::ListRoomsOutput
    ListTagsForResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceInput.type = Types::ListTagsForResourceInput
    ListTagsForResourceOutput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: "tags", traits: {"smithy.api#required" => {}}))
    ListTagsForResourceOutput.type = Types::ListTagsForResourceOutput
    LoggingConfigurationIdentifierList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: LoggingConfigurationIdentifier)
    LoggingConfigurationList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: LoggingConfigurationSummary)
    LoggingConfigurationSummary.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LoggingConfigurationArn, location_name: "arn"))
    LoggingConfigurationSummary.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LoggingConfigurationID, location_name: "id"))
    LoggingConfigurationSummary.add_member(:create_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Time, location_name: "createTime"))
    LoggingConfigurationSummary.add_member(:update_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Time, location_name: "updateTime"))
    LoggingConfigurationSummary.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LoggingConfigurationName, location_name: "name"))
    LoggingConfigurationSummary.add_member(:destination_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DestinationConfiguration, location_name: "destinationConfiguration"))
    LoggingConfigurationSummary.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LoggingConfigurationState, location_name: "state"))
    LoggingConfigurationSummary.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    LoggingConfigurationSummary.type = Types::LoggingConfigurationSummary
    MessageReviewHandler.add_member(:uri, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LambdaArn, location_name: "uri"))
    MessageReviewHandler.add_member(:fallback_result, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FallbackResult, location_name: "fallbackResult"))
    MessageReviewHandler.type = Types::MessageReviewHandler
    PendingVerification.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message", traits: {"smithy.api#required" => {}}))
    PendingVerification.type = Types::PendingVerification
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "resourceId", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: "resourceType", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    RoomList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoomSummary)
    RoomSummary.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoomArn, location_name: "arn"))
    RoomSummary.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoomID, location_name: "id"))
    RoomSummary.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoomName, location_name: "name"))
    RoomSummary.add_member(:message_review_handler, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageReviewHandler, location_name: "messageReviewHandler"))
    RoomSummary.add_member(:create_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Time, location_name: "createTime"))
    RoomSummary.add_member(:update_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Time, location_name: "updateTime"))
    RoomSummary.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    RoomSummary.add_member(:logging_configuration_identifiers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LoggingConfigurationIdentifierList, location_name: "loggingConfigurationIdentifiers"))
    RoomSummary.type = Types::RoomSummary
    S3DestinationConfiguration.add_member(:bucket_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BucketName, location_name: "bucketName", traits: {"smithy.api#required" => {}}))
    S3DestinationConfiguration.type = Types::S3DestinationConfiguration
    SendEventInput.add_member(:room_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoomIdentifier, location_name: "roomIdentifier", traits: {"smithy.api#required" => {}}))
    SendEventInput.add_member(:event_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventName, location_name: "eventName", traits: {"smithy.api#required" => {}}))
    SendEventInput.add_member(:attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventAttributes, location_name: "attributes"))
    SendEventInput.type = Types::SendEventInput
    SendEventOutput.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: "id"))
    SendEventOutput.type = Types::SendEventOutput
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "resourceId", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: "resourceType", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:limit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Limit, location_name: "limit", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    TagKeyList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceInput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: "tags", traits: {"smithy.api#required" => {}}))
    TagResourceInput.type = Types::TagResourceInput
    TagResourceOutput.type = Types::TagResourceOutput
    Tags.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    Tags.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue)
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message", traits: {"smithy.api#required" => {}}))
    ThrottlingException.add_member(:resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "resourceId", traits: {"smithy.api#required" => {}}))
    ThrottlingException.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: "resourceType", traits: {"smithy.api#required" => {}}))
    ThrottlingException.add_member(:limit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Limit, location_name: "limit", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    ThrottlingException.type = Types::ThrottlingException
    UntagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceInput.add_member(:tag_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: "tagKeys", traits: {"smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceInput.type = Types::UntagResourceInput
    UntagResourceOutput.type = Types::UntagResourceOutput
    UpdateLoggingConfigurationInput.add_member(:identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LoggingConfigurationIdentifier, location_name: "identifier", traits: {"smithy.api#required" => {}}))
    UpdateLoggingConfigurationInput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LoggingConfigurationName, location_name: "name"))
    UpdateLoggingConfigurationInput.add_member(:destination_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DestinationConfiguration, location_name: "destinationConfiguration"))
    UpdateLoggingConfigurationInput.type = Types::UpdateLoggingConfigurationInput
    UpdateLoggingConfigurationOutput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LoggingConfigurationArn, location_name: "arn"))
    UpdateLoggingConfigurationOutput.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LoggingConfigurationID, location_name: "id"))
    UpdateLoggingConfigurationOutput.add_member(:create_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Time, location_name: "createTime"))
    UpdateLoggingConfigurationOutput.add_member(:update_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Time, location_name: "updateTime"))
    UpdateLoggingConfigurationOutput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LoggingConfigurationName, location_name: "name"))
    UpdateLoggingConfigurationOutput.add_member(:destination_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DestinationConfiguration, location_name: "destinationConfiguration"))
    UpdateLoggingConfigurationOutput.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateLoggingConfigurationState, location_name: "state"))
    UpdateLoggingConfigurationOutput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    UpdateLoggingConfigurationOutput.type = Types::UpdateLoggingConfigurationOutput
    UpdateRoomInput.add_member(:identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoomIdentifier, location_name: "identifier", traits: {"smithy.api#required" => {}}))
    UpdateRoomInput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoomName, location_name: "name"))
    UpdateRoomInput.add_member(:maximum_message_rate_per_second, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoomMaxMessageRatePerSecond, location_name: "maximumMessageRatePerSecond"))
    UpdateRoomInput.add_member(:maximum_message_length, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoomMaxMessageLength, location_name: "maximumMessageLength"))
    UpdateRoomInput.add_member(:message_review_handler, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageReviewHandler, location_name: "messageReviewHandler"))
    UpdateRoomInput.add_member(:logging_configuration_identifiers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LoggingConfigurationIdentifierList, location_name: "loggingConfigurationIdentifiers"))
    UpdateRoomInput.type = Types::UpdateRoomInput
    UpdateRoomOutput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoomArn, location_name: "arn"))
    UpdateRoomOutput.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoomID, location_name: "id"))
    UpdateRoomOutput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoomName, location_name: "name"))
    UpdateRoomOutput.add_member(:create_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Time, location_name: "createTime"))
    UpdateRoomOutput.add_member(:update_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Time, location_name: "updateTime"))
    UpdateRoomOutput.add_member(:maximum_message_rate_per_second, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoomMaxMessageRatePerSecond, location_name: "maximumMessageRatePerSecond"))
    UpdateRoomOutput.add_member(:maximum_message_length, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoomMaxMessageLength, location_name: "maximumMessageLength"))
    UpdateRoomOutput.add_member(:message_review_handler, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageReviewHandler, location_name: "messageReviewHandler"))
    UpdateRoomOutput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    UpdateRoomOutput.add_member(:logging_configuration_identifiers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LoggingConfigurationIdentifierList, location_name: "loggingConfigurationIdentifiers"))
    UpdateRoomOutput.type = Types::UpdateRoomOutput
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message", traits: {"smithy.api#required" => {}}))
    ValidationException.add_member(:reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionReason, location_name: "reason", traits: {"smithy.api#required" => {}}))
    ValidationException.add_member(:field_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionFieldList, location_name: "fieldList"))
    ValidationException.type = Types::ValidationException
    ValidationExceptionField.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FieldName, location_name: "name", traits: {"smithy.api#required" => {}}))
    ValidationExceptionField.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message", traits: {"smithy.api#required" => {}}))
    ValidationExceptionField.type = Types::ValidationExceptionField
    ValidationExceptionFieldList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionField)

    AmazonInteractiveVideoServiceChat = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.ivschat#AmazonInteractiveVideoServiceChat"
      service.name = "AmazonInteractiveVideoServiceChat"
      service.version = "2020-07-14"
      service.traits = {"aws.api#service" => {"sdkId" => "ivschat", "arnNamespace" => "ivschat", "cloudFormationName" => "IVSChat", "cloudTrailEventSource" => "ivschat.amazonaws.com"}, "aws.auth#sigv4" => {"name" => "ivschat"}, "aws.protocols#restJson1" => {}, "smithy.api#cors" => {"additionalAllowedHeaders" => ["Content-Type", "X-Api-Key", "X-Amz-Content-Sha256", "X-Amz-User-Agent", "amz-sdk-invocation-id", "amz-sdk-request"], "additionalExposedHeaders" => ["x-amzn-errortype", "x-amzn-requestid", "x-amzn-errormessage", "x-amzn-trace-id", "x-amzn-requestid", "x-amz-apigw-id", "date"]}, "smithy.api#title" => "Amazon Interactive Video Service Chat"}
      service.add_operation(:create_chat_token, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivschat#CreateChatToken"
        operation.name = "CreateChatToken"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateChatTokenInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateChatTokenOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PendingVerification)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/CreateChatToken"}}
      end)
      service.add_operation(:create_logging_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivschat#CreateLoggingConfiguration"
        operation.name = "CreateLoggingConfiguration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateLoggingConfigurationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateLoggingConfigurationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PendingVerification)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/CreateLoggingConfiguration"}}
      end)
      service.add_operation(:create_room, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivschat#CreateRoom"
        operation.name = "CreateRoom"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateRoomInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateRoomOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PendingVerification)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/CreateRoom"}}
      end)
      service.add_operation(:delete_logging_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivschat#DeleteLoggingConfiguration"
        operation.name = "DeleteLoggingConfiguration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteLoggingConfigurationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PendingVerification)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/DeleteLoggingConfiguration", "code" => 204}}
      end)
      service.add_operation(:delete_message, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivschat#DeleteMessage"
        operation.name = "DeleteMessage"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteMessageInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteMessageOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PendingVerification)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/DeleteMessage"}}
      end)
      service.add_operation(:delete_room, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivschat#DeleteRoom"
        operation.name = "DeleteRoom"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteRoomInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PendingVerification)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/DeleteRoom", "code" => 204}}
      end)
      service.add_operation(:disconnect_user, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivschat#DisconnectUser"
        operation.name = "DisconnectUser"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisconnectUserInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisconnectUserOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PendingVerification)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/DisconnectUser"}}
      end)
      service.add_operation(:get_logging_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivschat#GetLoggingConfiguration"
        operation.name = "GetLoggingConfiguration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetLoggingConfigurationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetLoggingConfigurationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/GetLoggingConfiguration"}}
      end)
      service.add_operation(:get_room, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivschat#GetRoom"
        operation.name = "GetRoom"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetRoomInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetRoomOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/GetRoom"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_logging_configurations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivschat#ListLoggingConfigurations"
        operation.name = "ListLoggingConfigurations"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListLoggingConfigurationsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListLoggingConfigurationsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ListLoggingConfigurations"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListLoggingConfigurations.new
      end)
      service.add_operation(:list_rooms, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivschat#ListRooms"
        operation.name = "ListRooms"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListRoomsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListRoomsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ListRooms"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListRooms.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivschat#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/tags/{resourceArn}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:send_event, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivschat#SendEvent"
        operation.name = "SendEvent"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SendEventInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SendEventOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PendingVerification)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/SendEvent"}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivschat#TagResource"
        operation.name = "TagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/tags/{resourceArn}"}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivschat#UntagResource"
        operation.name = "UntagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/tags/{resourceArn}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_logging_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivschat#UpdateLoggingConfiguration"
        operation.name = "UpdateLoggingConfiguration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateLoggingConfigurationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateLoggingConfigurationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PendingVerification)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/UpdateLoggingConfiguration"}}
      end)
      service.add_operation(:update_room, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivschat#UpdateRoom"
        operation.name = "UpdateRoom"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateRoomInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateRoomOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PendingVerification)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/UpdateRoom"}}
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
