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

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message", traits: {"smithy.api#required" => {}}))
    AccessDeniedException.type = Types::AccessDeniedException
    ChatTokenAttributes.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "key"))
    ChatTokenAttributes.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "value"))
    ChatTokenCapabilities.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ChatTokenCapability, name: "member"))
    CloudWatchLogsDestinationConfiguration.add_member(:log_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: LogGroupName, name: "logGroupName", traits: {"smithy.api#required" => {}}))
    CloudWatchLogsDestinationConfiguration.type = Types::CloudWatchLogsDestinationConfiguration
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message", traits: {"smithy.api#required" => {}}))
    ConflictException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "resourceId", traits: {"smithy.api#required" => {}}))
    ConflictException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "resourceType", traits: {"smithy.api#required" => {}}))
    ConflictException.type = Types::ConflictException
    CreateChatTokenInput.add_member(:room_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: RoomIdentifier, name: "roomIdentifier", traits: {"smithy.api#required" => {}}))
    CreateChatTokenInput.add_member(:user_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserID, name: "userId", traits: {"smithy.api#required" => {}}))
    CreateChatTokenInput.add_member(:capabilities, ::Smithy::Schema::Shapes::MemberShape.new(target: ChatTokenCapabilities, name: "capabilities"))
    CreateChatTokenInput.add_member(:session_duration_in_minutes, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionDurationInMinutes, name: "sessionDurationInMinutes"))
    CreateChatTokenInput.add_member(:attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: ChatTokenAttributes, name: "attributes"))
    CreateChatTokenInput.type = Types::CreateChatTokenInput
    CreateChatTokenOutput.add_member(:token, ::Smithy::Schema::Shapes::MemberShape.new(target: ChatToken, name: "token"))
    CreateChatTokenOutput.add_member(:token_expiration_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Time, name: "tokenExpirationTime"))
    CreateChatTokenOutput.add_member(:session_expiration_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Time, name: "sessionExpirationTime"))
    CreateChatTokenOutput.type = Types::CreateChatTokenOutput
    CreateLoggingConfigurationInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: LoggingConfigurationName, name: "name"))
    CreateLoggingConfigurationInput.add_member(:destination_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationConfiguration, name: "destinationConfiguration", traits: {"smithy.api#required" => {}}))
    CreateLoggingConfigurationInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    CreateLoggingConfigurationInput.type = Types::CreateLoggingConfigurationInput
    CreateLoggingConfigurationOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LoggingConfigurationArn, name: "arn"))
    CreateLoggingConfigurationOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: LoggingConfigurationID, name: "id"))
    CreateLoggingConfigurationOutput.add_member(:create_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Time, name: "createTime"))
    CreateLoggingConfigurationOutput.add_member(:update_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Time, name: "updateTime"))
    CreateLoggingConfigurationOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: LoggingConfigurationName, name: "name"))
    CreateLoggingConfigurationOutput.add_member(:destination_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationConfiguration, name: "destinationConfiguration"))
    CreateLoggingConfigurationOutput.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: CreateLoggingConfigurationState, name: "state"))
    CreateLoggingConfigurationOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    CreateLoggingConfigurationOutput.type = Types::CreateLoggingConfigurationOutput
    CreateRoomInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: RoomName, name: "name"))
    CreateRoomInput.add_member(:maximum_message_rate_per_second, ::Smithy::Schema::Shapes::MemberShape.new(target: RoomMaxMessageRatePerSecond, name: "maximumMessageRatePerSecond"))
    CreateRoomInput.add_member(:maximum_message_length, ::Smithy::Schema::Shapes::MemberShape.new(target: RoomMaxMessageLength, name: "maximumMessageLength"))
    CreateRoomInput.add_member(:message_review_handler, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageReviewHandler, name: "messageReviewHandler"))
    CreateRoomInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    CreateRoomInput.add_member(:logging_configuration_identifiers, ::Smithy::Schema::Shapes::MemberShape.new(target: LoggingConfigurationIdentifierList, name: "loggingConfigurationIdentifiers"))
    CreateRoomInput.type = Types::CreateRoomInput
    CreateRoomOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoomArn, name: "arn"))
    CreateRoomOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: RoomID, name: "id"))
    CreateRoomOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: RoomName, name: "name"))
    CreateRoomOutput.add_member(:create_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Time, name: "createTime"))
    CreateRoomOutput.add_member(:update_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Time, name: "updateTime"))
    CreateRoomOutput.add_member(:maximum_message_rate_per_second, ::Smithy::Schema::Shapes::MemberShape.new(target: RoomMaxMessageRatePerSecond, name: "maximumMessageRatePerSecond"))
    CreateRoomOutput.add_member(:maximum_message_length, ::Smithy::Schema::Shapes::MemberShape.new(target: RoomMaxMessageLength, name: "maximumMessageLength"))
    CreateRoomOutput.add_member(:message_review_handler, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageReviewHandler, name: "messageReviewHandler"))
    CreateRoomOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    CreateRoomOutput.add_member(:logging_configuration_identifiers, ::Smithy::Schema::Shapes::MemberShape.new(target: LoggingConfigurationIdentifierList, name: "loggingConfigurationIdentifiers"))
    CreateRoomOutput.type = Types::CreateRoomOutput
    DeleteLoggingConfigurationInput.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: LoggingConfigurationIdentifier, name: "identifier", traits: {"smithy.api#required" => {}}))
    DeleteLoggingConfigurationInput.type = Types::DeleteLoggingConfigurationInput
    DeleteMessageInput.add_member(:room_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: RoomIdentifier, name: "roomIdentifier", traits: {"smithy.api#required" => {}}))
    DeleteMessageInput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageID, name: "id", traits: {"smithy.api#required" => {}}))
    DeleteMessageInput.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: Reason, name: "reason"))
    DeleteMessageInput.type = Types::DeleteMessageInput
    DeleteMessageOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "id"))
    DeleteMessageOutput.type = Types::DeleteMessageOutput
    DeleteRoomInput.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: RoomIdentifier, name: "identifier", traits: {"smithy.api#required" => {}}))
    DeleteRoomInput.type = Types::DeleteRoomInput
    DestinationConfiguration.add_member(:s3, Types::DestinationConfiguration::S3, ::Smithy::Schema::Shapes::MemberShape.new(target: S3DestinationConfiguration, name: "s3"))
    DestinationConfiguration.add_member(:cloud_watch_logs, Types::DestinationConfiguration::CloudWatchLogs, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudWatchLogsDestinationConfiguration, name: "cloudWatchLogs"))
    DestinationConfiguration.add_member(:firehose, Types::DestinationConfiguration::Firehose, ::Smithy::Schema::Shapes::MemberShape.new(target: FirehoseDestinationConfiguration, name: "firehose"))
    DestinationConfiguration.add_member(:unknown, Types::DestinationConfiguration::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    DestinationConfiguration.type = Types::DestinationConfiguration
    DisconnectUserInput.add_member(:room_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: RoomIdentifier, name: "roomIdentifier", traits: {"smithy.api#required" => {}}))
    DisconnectUserInput.add_member(:user_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserID, name: "userId", traits: {"smithy.api#required" => {}}))
    DisconnectUserInput.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: Reason, name: "reason"))
    DisconnectUserInput.type = Types::DisconnectUserInput
    DisconnectUserOutput.type = Types::DisconnectUserOutput
    EventAttributes.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "key"))
    EventAttributes.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "value"))
    FirehoseDestinationConfiguration.add_member(:delivery_stream_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DeliveryStreamName, name: "deliveryStreamName", traits: {"smithy.api#required" => {}}))
    FirehoseDestinationConfiguration.type = Types::FirehoseDestinationConfiguration
    GetLoggingConfigurationInput.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: LoggingConfigurationIdentifier, name: "identifier", traits: {"smithy.api#required" => {}}))
    GetLoggingConfigurationInput.type = Types::GetLoggingConfigurationInput
    GetLoggingConfigurationOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LoggingConfigurationArn, name: "arn"))
    GetLoggingConfigurationOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: LoggingConfigurationID, name: "id"))
    GetLoggingConfigurationOutput.add_member(:create_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Time, name: "createTime"))
    GetLoggingConfigurationOutput.add_member(:update_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Time, name: "updateTime"))
    GetLoggingConfigurationOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: LoggingConfigurationName, name: "name"))
    GetLoggingConfigurationOutput.add_member(:destination_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationConfiguration, name: "destinationConfiguration"))
    GetLoggingConfigurationOutput.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: LoggingConfigurationState, name: "state"))
    GetLoggingConfigurationOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    GetLoggingConfigurationOutput.type = Types::GetLoggingConfigurationOutput
    GetRoomInput.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: RoomIdentifier, name: "identifier", traits: {"smithy.api#required" => {}}))
    GetRoomInput.type = Types::GetRoomInput
    GetRoomOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoomArn, name: "arn"))
    GetRoomOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: RoomID, name: "id"))
    GetRoomOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: RoomName, name: "name"))
    GetRoomOutput.add_member(:create_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Time, name: "createTime"))
    GetRoomOutput.add_member(:update_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Time, name: "updateTime"))
    GetRoomOutput.add_member(:maximum_message_rate_per_second, ::Smithy::Schema::Shapes::MemberShape.new(target: RoomMaxMessageRatePerSecond, name: "maximumMessageRatePerSecond"))
    GetRoomOutput.add_member(:maximum_message_length, ::Smithy::Schema::Shapes::MemberShape.new(target: RoomMaxMessageLength, name: "maximumMessageLength"))
    GetRoomOutput.add_member(:message_review_handler, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageReviewHandler, name: "messageReviewHandler"))
    GetRoomOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    GetRoomOutput.add_member(:logging_configuration_identifiers, ::Smithy::Schema::Shapes::MemberShape.new(target: LoggingConfigurationIdentifierList, name: "loggingConfigurationIdentifiers"))
    GetRoomOutput.type = Types::GetRoomOutput
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message", traits: {"smithy.api#required" => {}}))
    InternalServerException.type = Types::InternalServerException
    ListLoggingConfigurationsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListLoggingConfigurationsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxLoggingConfigurationResults, name: "maxResults"))
    ListLoggingConfigurationsInput.type = Types::ListLoggingConfigurationsInput
    ListLoggingConfigurationsOutput.add_member(:logging_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: LoggingConfigurationList, name: "loggingConfigurations", traits: {"smithy.api#required" => {}}))
    ListLoggingConfigurationsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListLoggingConfigurationsOutput.type = Types::ListLoggingConfigurationsOutput
    ListRoomsInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: RoomName, name: "name"))
    ListRoomsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListRoomsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxRoomResults, name: "maxResults"))
    ListRoomsInput.add_member(:message_review_handler_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: LambdaArn, name: "messageReviewHandlerUri"))
    ListRoomsInput.add_member(:logging_configuration_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: LoggingConfigurationIdentifier, name: "loggingConfigurationIdentifier"))
    ListRoomsInput.type = Types::ListRoomsInput
    ListRoomsOutput.add_member(:rooms, ::Smithy::Schema::Shapes::MemberShape.new(target: RoomList, name: "rooms", traits: {"smithy.api#required" => {}}))
    ListRoomsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListRoomsOutput.type = Types::ListRoomsOutput
    ListTagsForResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceInput.type = Types::ListTagsForResourceInput
    ListTagsForResourceOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags", traits: {"smithy.api#required" => {}}))
    ListTagsForResourceOutput.type = Types::ListTagsForResourceOutput
    LoggingConfigurationIdentifierList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: LoggingConfigurationIdentifier, name: "member"))
    LoggingConfigurationList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: LoggingConfigurationSummary, name: "member"))
    LoggingConfigurationSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LoggingConfigurationArn, name: "arn"))
    LoggingConfigurationSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: LoggingConfigurationID, name: "id"))
    LoggingConfigurationSummary.add_member(:create_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Time, name: "createTime"))
    LoggingConfigurationSummary.add_member(:update_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Time, name: "updateTime"))
    LoggingConfigurationSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: LoggingConfigurationName, name: "name"))
    LoggingConfigurationSummary.add_member(:destination_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationConfiguration, name: "destinationConfiguration"))
    LoggingConfigurationSummary.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: LoggingConfigurationState, name: "state"))
    LoggingConfigurationSummary.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    LoggingConfigurationSummary.type = Types::LoggingConfigurationSummary
    MessageReviewHandler.add_member(:uri, ::Smithy::Schema::Shapes::MemberShape.new(target: LambdaArn, name: "uri"))
    MessageReviewHandler.add_member(:fallback_result, ::Smithy::Schema::Shapes::MemberShape.new(target: FallbackResult, name: "fallbackResult"))
    MessageReviewHandler.type = Types::MessageReviewHandler
    PendingVerification.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message", traits: {"smithy.api#required" => {}}))
    PendingVerification.type = Types::PendingVerification
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "resourceId", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "resourceType", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    RoomList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RoomSummary, name: "member"))
    RoomSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoomArn, name: "arn"))
    RoomSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: RoomID, name: "id"))
    RoomSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: RoomName, name: "name"))
    RoomSummary.add_member(:message_review_handler, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageReviewHandler, name: "messageReviewHandler"))
    RoomSummary.add_member(:create_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Time, name: "createTime"))
    RoomSummary.add_member(:update_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Time, name: "updateTime"))
    RoomSummary.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    RoomSummary.add_member(:logging_configuration_identifiers, ::Smithy::Schema::Shapes::MemberShape.new(target: LoggingConfigurationIdentifierList, name: "loggingConfigurationIdentifiers"))
    RoomSummary.type = Types::RoomSummary
    S3DestinationConfiguration.add_member(:bucket_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketName, name: "bucketName", traits: {"smithy.api#required" => {}}))
    S3DestinationConfiguration.type = Types::S3DestinationConfiguration
    SendEventInput.add_member(:room_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: RoomIdentifier, name: "roomIdentifier", traits: {"smithy.api#required" => {}}))
    SendEventInput.add_member(:event_name, ::Smithy::Schema::Shapes::MemberShape.new(target: EventName, name: "eventName", traits: {"smithy.api#required" => {}}))
    SendEventInput.add_member(:attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: EventAttributes, name: "attributes"))
    SendEventInput.type = Types::SendEventInput
    SendEventOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "id"))
    SendEventOutput.type = Types::SendEventOutput
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "resourceId", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "resourceType", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: Limit, name: "limit", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    TagKeyList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "member"))
    TagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags", traits: {"smithy.api#required" => {}}))
    TagResourceInput.type = Types::TagResourceInput
    TagResourceOutput.type = Types::TagResourceOutput
    Tags.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "key"))
    Tags.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "value"))
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message", traits: {"smithy.api#required" => {}}))
    ThrottlingException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "resourceId", traits: {"smithy.api#required" => {}}))
    ThrottlingException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "resourceType", traits: {"smithy.api#required" => {}}))
    ThrottlingException.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: Limit, name: "limit", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    ThrottlingException.type = Types::ThrottlingException
    UntagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceInput.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, name: "tagKeys", traits: {"smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceInput.type = Types::UntagResourceInput
    UntagResourceOutput.type = Types::UntagResourceOutput
    UpdateLoggingConfigurationInput.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: LoggingConfigurationIdentifier, name: "identifier", traits: {"smithy.api#required" => {}}))
    UpdateLoggingConfigurationInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: LoggingConfigurationName, name: "name"))
    UpdateLoggingConfigurationInput.add_member(:destination_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationConfiguration, name: "destinationConfiguration"))
    UpdateLoggingConfigurationInput.type = Types::UpdateLoggingConfigurationInput
    UpdateLoggingConfigurationOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LoggingConfigurationArn, name: "arn"))
    UpdateLoggingConfigurationOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: LoggingConfigurationID, name: "id"))
    UpdateLoggingConfigurationOutput.add_member(:create_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Time, name: "createTime"))
    UpdateLoggingConfigurationOutput.add_member(:update_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Time, name: "updateTime"))
    UpdateLoggingConfigurationOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: LoggingConfigurationName, name: "name"))
    UpdateLoggingConfigurationOutput.add_member(:destination_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationConfiguration, name: "destinationConfiguration"))
    UpdateLoggingConfigurationOutput.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateLoggingConfigurationState, name: "state"))
    UpdateLoggingConfigurationOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    UpdateLoggingConfigurationOutput.type = Types::UpdateLoggingConfigurationOutput
    UpdateRoomInput.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: RoomIdentifier, name: "identifier", traits: {"smithy.api#required" => {}}))
    UpdateRoomInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: RoomName, name: "name"))
    UpdateRoomInput.add_member(:maximum_message_rate_per_second, ::Smithy::Schema::Shapes::MemberShape.new(target: RoomMaxMessageRatePerSecond, name: "maximumMessageRatePerSecond"))
    UpdateRoomInput.add_member(:maximum_message_length, ::Smithy::Schema::Shapes::MemberShape.new(target: RoomMaxMessageLength, name: "maximumMessageLength"))
    UpdateRoomInput.add_member(:message_review_handler, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageReviewHandler, name: "messageReviewHandler"))
    UpdateRoomInput.add_member(:logging_configuration_identifiers, ::Smithy::Schema::Shapes::MemberShape.new(target: LoggingConfigurationIdentifierList, name: "loggingConfigurationIdentifiers"))
    UpdateRoomInput.type = Types::UpdateRoomInput
    UpdateRoomOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoomArn, name: "arn"))
    UpdateRoomOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: RoomID, name: "id"))
    UpdateRoomOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: RoomName, name: "name"))
    UpdateRoomOutput.add_member(:create_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Time, name: "createTime"))
    UpdateRoomOutput.add_member(:update_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Time, name: "updateTime"))
    UpdateRoomOutput.add_member(:maximum_message_rate_per_second, ::Smithy::Schema::Shapes::MemberShape.new(target: RoomMaxMessageRatePerSecond, name: "maximumMessageRatePerSecond"))
    UpdateRoomOutput.add_member(:maximum_message_length, ::Smithy::Schema::Shapes::MemberShape.new(target: RoomMaxMessageLength, name: "maximumMessageLength"))
    UpdateRoomOutput.add_member(:message_review_handler, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageReviewHandler, name: "messageReviewHandler"))
    UpdateRoomOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    UpdateRoomOutput.add_member(:logging_configuration_identifiers, ::Smithy::Schema::Shapes::MemberShape.new(target: LoggingConfigurationIdentifierList, name: "loggingConfigurationIdentifiers"))
    UpdateRoomOutput.type = Types::UpdateRoomOutput
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message", traits: {"smithy.api#required" => {}}))
    ValidationException.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionReason, name: "reason", traits: {"smithy.api#required" => {}}))
    ValidationException.add_member(:field_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionFieldList, name: "fieldList"))
    ValidationException.type = Types::ValidationException
    ValidationExceptionField.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldName, name: "name", traits: {"smithy.api#required" => {}}))
    ValidationExceptionField.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message", traits: {"smithy.api#required" => {}}))
    ValidationExceptionField.type = Types::ValidationExceptionField
    ValidationExceptionFieldList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionField, name: "member"))

    AmazonInteractiveVideoServiceChat = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.ivschat#AmazonInteractiveVideoServiceChat"
      service.name = "AmazonInteractiveVideoServiceChat"
      service.version = "2020-07-14"
      service.traits = {"aws.api#service" => {"sdkId" => "ivschat", "arnNamespace" => "ivschat", "cloudFormationName" => "IVSChat", "cloudTrailEventSource" => "ivschat.amazonaws.com"}, "aws.auth#sigv4" => {"name" => "ivschat"}, "aws.protocols#restJson1" => {}, "smithy.api#cors" => {"additionalAllowedHeaders" => ["Content-Type", "X-Api-Key", "X-Amz-Content-Sha256", "X-Amz-User-Agent", "amz-sdk-invocation-id", "amz-sdk-request"], "additionalExposedHeaders" => ["x-amzn-errortype", "x-amzn-requestid", "x-amzn-errormessage", "x-amzn-trace-id", "x-amzn-requestid", "x-amz-apigw-id", "date"]}, "smithy.api#title" => "Amazon Interactive Video Service Chat"}
      service.add_operation(:create_chat_token, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivschat#CreateChatToken"
        operation.name = "CreateChatToken"
        operation.input = CreateChatTokenInput
        operation.output = CreateChatTokenOutput
        operation.errors << AccessDeniedException
        operation.errors << PendingVerification
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/CreateChatToken"}}
      end)
      service.add_operation(:create_logging_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivschat#CreateLoggingConfiguration"
        operation.name = "CreateLoggingConfiguration"
        operation.input = CreateLoggingConfigurationInput
        operation.output = CreateLoggingConfigurationOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << PendingVerification
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/CreateLoggingConfiguration"}}
      end)
      service.add_operation(:create_room, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivschat#CreateRoom"
        operation.name = "CreateRoom"
        operation.input = CreateRoomInput
        operation.output = CreateRoomOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << PendingVerification
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/CreateRoom"}}
      end)
      service.add_operation(:delete_logging_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivschat#DeleteLoggingConfiguration"
        operation.name = "DeleteLoggingConfiguration"
        operation.input = DeleteLoggingConfigurationInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << PendingVerification
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/DeleteLoggingConfiguration", "code" => 204}}
      end)
      service.add_operation(:delete_message, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivschat#DeleteMessage"
        operation.name = "DeleteMessage"
        operation.input = DeleteMessageInput
        operation.output = DeleteMessageOutput
        operation.errors << AccessDeniedException
        operation.errors << PendingVerification
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/DeleteMessage"}}
      end)
      service.add_operation(:delete_room, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivschat#DeleteRoom"
        operation.name = "DeleteRoom"
        operation.input = DeleteRoomInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << PendingVerification
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/DeleteRoom", "code" => 204}}
      end)
      service.add_operation(:disconnect_user, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivschat#DisconnectUser"
        operation.name = "DisconnectUser"
        operation.input = DisconnectUserInput
        operation.output = DisconnectUserOutput
        operation.errors << AccessDeniedException
        operation.errors << PendingVerification
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/DisconnectUser"}}
      end)
      service.add_operation(:get_logging_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivschat#GetLoggingConfiguration"
        operation.name = "GetLoggingConfiguration"
        operation.input = GetLoggingConfigurationInput
        operation.output = GetLoggingConfigurationOutput
        operation.errors << AccessDeniedException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/GetLoggingConfiguration"}}
      end)
      service.add_operation(:get_room, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivschat#GetRoom"
        operation.name = "GetRoom"
        operation.input = GetRoomInput
        operation.output = GetRoomOutput
        operation.errors << AccessDeniedException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/GetRoom"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_logging_configurations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivschat#ListLoggingConfigurations"
        operation.name = "ListLoggingConfigurations"
        operation.input = ListLoggingConfigurationsInput
        operation.output = ListLoggingConfigurationsOutput
        operation.errors << AccessDeniedException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ListLoggingConfigurations"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListLoggingConfigurations.new
      end)
      service.add_operation(:list_rooms, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivschat#ListRooms"
        operation.name = "ListRooms"
        operation.input = ListRoomsInput
        operation.output = ListRoomsOutput
        operation.errors << AccessDeniedException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ListRooms"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListRooms.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivschat#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceInput
        operation.output = ListTagsForResourceOutput
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/tags/{resourceArn}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:send_event, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivschat#SendEvent"
        operation.name = "SendEvent"
        operation.input = SendEventInput
        operation.output = SendEventOutput
        operation.errors << AccessDeniedException
        operation.errors << PendingVerification
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/SendEvent"}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivschat#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceInput
        operation.output = TagResourceOutput
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/tags/{resourceArn}"}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivschat#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceInput
        operation.output = UntagResourceOutput
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/tags/{resourceArn}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_logging_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivschat#UpdateLoggingConfiguration"
        operation.name = "UpdateLoggingConfiguration"
        operation.input = UpdateLoggingConfigurationInput
        operation.output = UpdateLoggingConfigurationOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << PendingVerification
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/UpdateLoggingConfiguration"}}
      end)
      service.add_operation(:update_room, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivschat#UpdateRoom"
        operation.name = "UpdateRoom"
        operation.input = UpdateRoomInput
        operation.output = UpdateRoomOutput
        operation.errors << AccessDeniedException
        operation.errors << PendingVerification
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
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
