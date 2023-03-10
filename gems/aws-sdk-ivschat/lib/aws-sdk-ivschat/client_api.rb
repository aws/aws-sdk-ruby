# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Ivschat
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    BucketName = Shapes::StringShape.new(name: 'BucketName')
    ChatToken = Shapes::StringShape.new(name: 'ChatToken')
    ChatTokenAttributes = Shapes::MapShape.new(name: 'ChatTokenAttributes')
    ChatTokenCapabilities = Shapes::ListShape.new(name: 'ChatTokenCapabilities')
    ChatTokenCapability = Shapes::StringShape.new(name: 'ChatTokenCapability')
    CloudWatchLogsDestinationConfiguration = Shapes::StructureShape.new(name: 'CloudWatchLogsDestinationConfiguration')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    CreateChatTokenRequest = Shapes::StructureShape.new(name: 'CreateChatTokenRequest')
    CreateChatTokenResponse = Shapes::StructureShape.new(name: 'CreateChatTokenResponse')
    CreateLoggingConfigurationRequest = Shapes::StructureShape.new(name: 'CreateLoggingConfigurationRequest')
    CreateLoggingConfigurationResponse = Shapes::StructureShape.new(name: 'CreateLoggingConfigurationResponse')
    CreateLoggingConfigurationState = Shapes::StringShape.new(name: 'CreateLoggingConfigurationState')
    CreateRoomRequest = Shapes::StructureShape.new(name: 'CreateRoomRequest')
    CreateRoomResponse = Shapes::StructureShape.new(name: 'CreateRoomResponse')
    DeleteLoggingConfigurationRequest = Shapes::StructureShape.new(name: 'DeleteLoggingConfigurationRequest')
    DeleteMessageRequest = Shapes::StructureShape.new(name: 'DeleteMessageRequest')
    DeleteMessageResponse = Shapes::StructureShape.new(name: 'DeleteMessageResponse')
    DeleteRoomRequest = Shapes::StructureShape.new(name: 'DeleteRoomRequest')
    DeliveryStreamName = Shapes::StringShape.new(name: 'DeliveryStreamName')
    DestinationConfiguration = Shapes::UnionShape.new(name: 'DestinationConfiguration')
    DisconnectUserRequest = Shapes::StructureShape.new(name: 'DisconnectUserRequest')
    DisconnectUserResponse = Shapes::StructureShape.new(name: 'DisconnectUserResponse')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    EventAttributes = Shapes::MapShape.new(name: 'EventAttributes')
    EventName = Shapes::StringShape.new(name: 'EventName')
    FallbackResult = Shapes::StringShape.new(name: 'FallbackResult')
    FieldName = Shapes::StringShape.new(name: 'FieldName')
    FirehoseDestinationConfiguration = Shapes::StructureShape.new(name: 'FirehoseDestinationConfiguration')
    GetLoggingConfigurationRequest = Shapes::StructureShape.new(name: 'GetLoggingConfigurationRequest')
    GetLoggingConfigurationResponse = Shapes::StructureShape.new(name: 'GetLoggingConfigurationResponse')
    GetRoomRequest = Shapes::StructureShape.new(name: 'GetRoomRequest')
    GetRoomResponse = Shapes::StructureShape.new(name: 'GetRoomResponse')
    ID = Shapes::StringShape.new(name: 'ID')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    LambdaArn = Shapes::StringShape.new(name: 'LambdaArn')
    Limit = Shapes::IntegerShape.new(name: 'Limit')
    ListLoggingConfigurationsRequest = Shapes::StructureShape.new(name: 'ListLoggingConfigurationsRequest')
    ListLoggingConfigurationsResponse = Shapes::StructureShape.new(name: 'ListLoggingConfigurationsResponse')
    ListRoomsRequest = Shapes::StructureShape.new(name: 'ListRoomsRequest')
    ListRoomsResponse = Shapes::StructureShape.new(name: 'ListRoomsResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    LogGroupName = Shapes::StringShape.new(name: 'LogGroupName')
    LoggingConfigurationArn = Shapes::StringShape.new(name: 'LoggingConfigurationArn')
    LoggingConfigurationID = Shapes::StringShape.new(name: 'LoggingConfigurationID')
    LoggingConfigurationIdentifier = Shapes::StringShape.new(name: 'LoggingConfigurationIdentifier')
    LoggingConfigurationIdentifierList = Shapes::ListShape.new(name: 'LoggingConfigurationIdentifierList')
    LoggingConfigurationList = Shapes::ListShape.new(name: 'LoggingConfigurationList')
    LoggingConfigurationName = Shapes::StringShape.new(name: 'LoggingConfigurationName')
    LoggingConfigurationState = Shapes::StringShape.new(name: 'LoggingConfigurationState')
    LoggingConfigurationSummary = Shapes::StructureShape.new(name: 'LoggingConfigurationSummary')
    MaxLoggingConfigurationResults = Shapes::IntegerShape.new(name: 'MaxLoggingConfigurationResults')
    MaxRoomResults = Shapes::IntegerShape.new(name: 'MaxRoomResults')
    MessageID = Shapes::StringShape.new(name: 'MessageID')
    MessageReviewHandler = Shapes::StructureShape.new(name: 'MessageReviewHandler')
    PaginationToken = Shapes::StringShape.new(name: 'PaginationToken')
    PendingVerification = Shapes::StructureShape.new(name: 'PendingVerification')
    Reason = Shapes::StringShape.new(name: 'Reason')
    ResourceArn = Shapes::StringShape.new(name: 'ResourceArn')
    ResourceId = Shapes::StringShape.new(name: 'ResourceId')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResourceType = Shapes::StringShape.new(name: 'ResourceType')
    RoomArn = Shapes::StringShape.new(name: 'RoomArn')
    RoomID = Shapes::StringShape.new(name: 'RoomID')
    RoomIdentifier = Shapes::StringShape.new(name: 'RoomIdentifier')
    RoomList = Shapes::ListShape.new(name: 'RoomList')
    RoomMaxMessageLength = Shapes::IntegerShape.new(name: 'RoomMaxMessageLength')
    RoomMaxMessageRatePerSecond = Shapes::IntegerShape.new(name: 'RoomMaxMessageRatePerSecond')
    RoomName = Shapes::StringShape.new(name: 'RoomName')
    RoomSummary = Shapes::StructureShape.new(name: 'RoomSummary')
    S3DestinationConfiguration = Shapes::StructureShape.new(name: 'S3DestinationConfiguration')
    SendEventRequest = Shapes::StructureShape.new(name: 'SendEventRequest')
    SendEventResponse = Shapes::StructureShape.new(name: 'SendEventResponse')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    SessionDurationInMinutes = Shapes::IntegerShape.new(name: 'SessionDurationInMinutes')
    String = Shapes::StringShape.new(name: 'String')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    Tags = Shapes::MapShape.new(name: 'Tags')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    Time = Shapes::TimestampShape.new(name: 'Time', timestampFormat: "iso8601")
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateLoggingConfigurationRequest = Shapes::StructureShape.new(name: 'UpdateLoggingConfigurationRequest')
    UpdateLoggingConfigurationResponse = Shapes::StructureShape.new(name: 'UpdateLoggingConfigurationResponse')
    UpdateLoggingConfigurationState = Shapes::StringShape.new(name: 'UpdateLoggingConfigurationState')
    UpdateRoomRequest = Shapes::StructureShape.new(name: 'UpdateRoomRequest')
    UpdateRoomResponse = Shapes::StructureShape.new(name: 'UpdateRoomResponse')
    UserID = Shapes::StringShape.new(name: 'UserID')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    ValidationExceptionField = Shapes::StructureShape.new(name: 'ValidationExceptionField')
    ValidationExceptionFieldList = Shapes::ListShape.new(name: 'ValidationExceptionFieldList')
    ValidationExceptionReason = Shapes::StringShape.new(name: 'ValidationExceptionReason')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, required: true, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    ChatTokenAttributes.key = Shapes::ShapeRef.new(shape: String)
    ChatTokenAttributes.value = Shapes::ShapeRef.new(shape: String)

    ChatTokenCapabilities.member = Shapes::ShapeRef.new(shape: ChatTokenCapability)

    CloudWatchLogsDestinationConfiguration.add_member(:log_group_name, Shapes::ShapeRef.new(shape: LogGroupName, required: true, location_name: "logGroupName"))
    CloudWatchLogsDestinationConfiguration.struct_class = Types::CloudWatchLogsDestinationConfiguration

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, required: true, location_name: "message"))
    ConflictException.add_member(:resource_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "resourceId"))
    ConflictException.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, required: true, location_name: "resourceType"))
    ConflictException.struct_class = Types::ConflictException

    CreateChatTokenRequest.add_member(:attributes, Shapes::ShapeRef.new(shape: ChatTokenAttributes, location_name: "attributes"))
    CreateChatTokenRequest.add_member(:capabilities, Shapes::ShapeRef.new(shape: ChatTokenCapabilities, location_name: "capabilities"))
    CreateChatTokenRequest.add_member(:room_identifier, Shapes::ShapeRef.new(shape: RoomIdentifier, required: true, location_name: "roomIdentifier"))
    CreateChatTokenRequest.add_member(:session_duration_in_minutes, Shapes::ShapeRef.new(shape: SessionDurationInMinutes, location_name: "sessionDurationInMinutes"))
    CreateChatTokenRequest.add_member(:user_id, Shapes::ShapeRef.new(shape: UserID, required: true, location_name: "userId"))
    CreateChatTokenRequest.struct_class = Types::CreateChatTokenRequest

    CreateChatTokenResponse.add_member(:session_expiration_time, Shapes::ShapeRef.new(shape: Time, location_name: "sessionExpirationTime"))
    CreateChatTokenResponse.add_member(:token, Shapes::ShapeRef.new(shape: ChatToken, location_name: "token"))
    CreateChatTokenResponse.add_member(:token_expiration_time, Shapes::ShapeRef.new(shape: Time, location_name: "tokenExpirationTime"))
    CreateChatTokenResponse.struct_class = Types::CreateChatTokenResponse

    CreateLoggingConfigurationRequest.add_member(:destination_configuration, Shapes::ShapeRef.new(shape: DestinationConfiguration, required: true, location_name: "destinationConfiguration"))
    CreateLoggingConfigurationRequest.add_member(:name, Shapes::ShapeRef.new(shape: LoggingConfigurationName, location_name: "name"))
    CreateLoggingConfigurationRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreateLoggingConfigurationRequest.struct_class = Types::CreateLoggingConfigurationRequest

    CreateLoggingConfigurationResponse.add_member(:arn, Shapes::ShapeRef.new(shape: LoggingConfigurationArn, location_name: "arn"))
    CreateLoggingConfigurationResponse.add_member(:create_time, Shapes::ShapeRef.new(shape: Time, location_name: "createTime"))
    CreateLoggingConfigurationResponse.add_member(:destination_configuration, Shapes::ShapeRef.new(shape: DestinationConfiguration, location_name: "destinationConfiguration"))
    CreateLoggingConfigurationResponse.add_member(:id, Shapes::ShapeRef.new(shape: LoggingConfigurationID, location_name: "id"))
    CreateLoggingConfigurationResponse.add_member(:name, Shapes::ShapeRef.new(shape: LoggingConfigurationName, location_name: "name"))
    CreateLoggingConfigurationResponse.add_member(:state, Shapes::ShapeRef.new(shape: CreateLoggingConfigurationState, location_name: "state"))
    CreateLoggingConfigurationResponse.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreateLoggingConfigurationResponse.add_member(:update_time, Shapes::ShapeRef.new(shape: Time, location_name: "updateTime"))
    CreateLoggingConfigurationResponse.struct_class = Types::CreateLoggingConfigurationResponse

    CreateRoomRequest.add_member(:logging_configuration_identifiers, Shapes::ShapeRef.new(shape: LoggingConfigurationIdentifierList, location_name: "loggingConfigurationIdentifiers"))
    CreateRoomRequest.add_member(:maximum_message_length, Shapes::ShapeRef.new(shape: RoomMaxMessageLength, location_name: "maximumMessageLength"))
    CreateRoomRequest.add_member(:maximum_message_rate_per_second, Shapes::ShapeRef.new(shape: RoomMaxMessageRatePerSecond, location_name: "maximumMessageRatePerSecond"))
    CreateRoomRequest.add_member(:message_review_handler, Shapes::ShapeRef.new(shape: MessageReviewHandler, location_name: "messageReviewHandler"))
    CreateRoomRequest.add_member(:name, Shapes::ShapeRef.new(shape: RoomName, location_name: "name"))
    CreateRoomRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreateRoomRequest.struct_class = Types::CreateRoomRequest

    CreateRoomResponse.add_member(:arn, Shapes::ShapeRef.new(shape: RoomArn, location_name: "arn"))
    CreateRoomResponse.add_member(:create_time, Shapes::ShapeRef.new(shape: Time, location_name: "createTime"))
    CreateRoomResponse.add_member(:id, Shapes::ShapeRef.new(shape: RoomID, location_name: "id"))
    CreateRoomResponse.add_member(:logging_configuration_identifiers, Shapes::ShapeRef.new(shape: LoggingConfigurationIdentifierList, location_name: "loggingConfigurationIdentifiers"))
    CreateRoomResponse.add_member(:maximum_message_length, Shapes::ShapeRef.new(shape: RoomMaxMessageLength, location_name: "maximumMessageLength"))
    CreateRoomResponse.add_member(:maximum_message_rate_per_second, Shapes::ShapeRef.new(shape: RoomMaxMessageRatePerSecond, location_name: "maximumMessageRatePerSecond"))
    CreateRoomResponse.add_member(:message_review_handler, Shapes::ShapeRef.new(shape: MessageReviewHandler, location_name: "messageReviewHandler"))
    CreateRoomResponse.add_member(:name, Shapes::ShapeRef.new(shape: RoomName, location_name: "name"))
    CreateRoomResponse.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreateRoomResponse.add_member(:update_time, Shapes::ShapeRef.new(shape: Time, location_name: "updateTime"))
    CreateRoomResponse.struct_class = Types::CreateRoomResponse

    DeleteLoggingConfigurationRequest.add_member(:identifier, Shapes::ShapeRef.new(shape: LoggingConfigurationIdentifier, required: true, location_name: "identifier"))
    DeleteLoggingConfigurationRequest.struct_class = Types::DeleteLoggingConfigurationRequest

    DeleteMessageRequest.add_member(:id, Shapes::ShapeRef.new(shape: MessageID, required: true, location_name: "id"))
    DeleteMessageRequest.add_member(:reason, Shapes::ShapeRef.new(shape: Reason, location_name: "reason"))
    DeleteMessageRequest.add_member(:room_identifier, Shapes::ShapeRef.new(shape: RoomIdentifier, required: true, location_name: "roomIdentifier"))
    DeleteMessageRequest.struct_class = Types::DeleteMessageRequest

    DeleteMessageResponse.add_member(:id, Shapes::ShapeRef.new(shape: ID, location_name: "id"))
    DeleteMessageResponse.struct_class = Types::DeleteMessageResponse

    DeleteRoomRequest.add_member(:identifier, Shapes::ShapeRef.new(shape: RoomIdentifier, required: true, location_name: "identifier"))
    DeleteRoomRequest.struct_class = Types::DeleteRoomRequest

    DestinationConfiguration.add_member(:cloud_watch_logs, Shapes::ShapeRef.new(shape: CloudWatchLogsDestinationConfiguration, location_name: "cloudWatchLogs"))
    DestinationConfiguration.add_member(:firehose, Shapes::ShapeRef.new(shape: FirehoseDestinationConfiguration, location_name: "firehose"))
    DestinationConfiguration.add_member(:s3, Shapes::ShapeRef.new(shape: S3DestinationConfiguration, location_name: "s3"))
    DestinationConfiguration.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    DestinationConfiguration.add_member_subclass(:cloud_watch_logs, Types::DestinationConfiguration::CloudWatchLogs)
    DestinationConfiguration.add_member_subclass(:firehose, Types::DestinationConfiguration::Firehose)
    DestinationConfiguration.add_member_subclass(:s3, Types::DestinationConfiguration::S3)
    DestinationConfiguration.add_member_subclass(:unknown, Types::DestinationConfiguration::Unknown)
    DestinationConfiguration.struct_class = Types::DestinationConfiguration

    DisconnectUserRequest.add_member(:reason, Shapes::ShapeRef.new(shape: Reason, location_name: "reason"))
    DisconnectUserRequest.add_member(:room_identifier, Shapes::ShapeRef.new(shape: RoomIdentifier, required: true, location_name: "roomIdentifier"))
    DisconnectUserRequest.add_member(:user_id, Shapes::ShapeRef.new(shape: UserID, required: true, location_name: "userId"))
    DisconnectUserRequest.struct_class = Types::DisconnectUserRequest

    DisconnectUserResponse.struct_class = Types::DisconnectUserResponse

    EventAttributes.key = Shapes::ShapeRef.new(shape: String)
    EventAttributes.value = Shapes::ShapeRef.new(shape: String)

    FirehoseDestinationConfiguration.add_member(:delivery_stream_name, Shapes::ShapeRef.new(shape: DeliveryStreamName, required: true, location_name: "deliveryStreamName"))
    FirehoseDestinationConfiguration.struct_class = Types::FirehoseDestinationConfiguration

    GetLoggingConfigurationRequest.add_member(:identifier, Shapes::ShapeRef.new(shape: LoggingConfigurationIdentifier, required: true, location_name: "identifier"))
    GetLoggingConfigurationRequest.struct_class = Types::GetLoggingConfigurationRequest

    GetLoggingConfigurationResponse.add_member(:arn, Shapes::ShapeRef.new(shape: LoggingConfigurationArn, location_name: "arn"))
    GetLoggingConfigurationResponse.add_member(:create_time, Shapes::ShapeRef.new(shape: Time, location_name: "createTime"))
    GetLoggingConfigurationResponse.add_member(:destination_configuration, Shapes::ShapeRef.new(shape: DestinationConfiguration, location_name: "destinationConfiguration"))
    GetLoggingConfigurationResponse.add_member(:id, Shapes::ShapeRef.new(shape: LoggingConfigurationID, location_name: "id"))
    GetLoggingConfigurationResponse.add_member(:name, Shapes::ShapeRef.new(shape: LoggingConfigurationName, location_name: "name"))
    GetLoggingConfigurationResponse.add_member(:state, Shapes::ShapeRef.new(shape: LoggingConfigurationState, location_name: "state"))
    GetLoggingConfigurationResponse.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    GetLoggingConfigurationResponse.add_member(:update_time, Shapes::ShapeRef.new(shape: Time, location_name: "updateTime"))
    GetLoggingConfigurationResponse.struct_class = Types::GetLoggingConfigurationResponse

    GetRoomRequest.add_member(:identifier, Shapes::ShapeRef.new(shape: RoomIdentifier, required: true, location_name: "identifier"))
    GetRoomRequest.struct_class = Types::GetRoomRequest

    GetRoomResponse.add_member(:arn, Shapes::ShapeRef.new(shape: RoomArn, location_name: "arn"))
    GetRoomResponse.add_member(:create_time, Shapes::ShapeRef.new(shape: Time, location_name: "createTime"))
    GetRoomResponse.add_member(:id, Shapes::ShapeRef.new(shape: RoomID, location_name: "id"))
    GetRoomResponse.add_member(:logging_configuration_identifiers, Shapes::ShapeRef.new(shape: LoggingConfigurationIdentifierList, location_name: "loggingConfigurationIdentifiers"))
    GetRoomResponse.add_member(:maximum_message_length, Shapes::ShapeRef.new(shape: RoomMaxMessageLength, location_name: "maximumMessageLength"))
    GetRoomResponse.add_member(:maximum_message_rate_per_second, Shapes::ShapeRef.new(shape: RoomMaxMessageRatePerSecond, location_name: "maximumMessageRatePerSecond"))
    GetRoomResponse.add_member(:message_review_handler, Shapes::ShapeRef.new(shape: MessageReviewHandler, location_name: "messageReviewHandler"))
    GetRoomResponse.add_member(:name, Shapes::ShapeRef.new(shape: RoomName, location_name: "name"))
    GetRoomResponse.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    GetRoomResponse.add_member(:update_time, Shapes::ShapeRef.new(shape: Time, location_name: "updateTime"))
    GetRoomResponse.struct_class = Types::GetRoomResponse

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, required: true, location_name: "message"))
    InternalServerException.struct_class = Types::InternalServerException

    ListLoggingConfigurationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxLoggingConfigurationResults, location_name: "maxResults"))
    ListLoggingConfigurationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListLoggingConfigurationsRequest.struct_class = Types::ListLoggingConfigurationsRequest

    ListLoggingConfigurationsResponse.add_member(:logging_configurations, Shapes::ShapeRef.new(shape: LoggingConfigurationList, required: true, location_name: "loggingConfigurations"))
    ListLoggingConfigurationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListLoggingConfigurationsResponse.struct_class = Types::ListLoggingConfigurationsResponse

    ListRoomsRequest.add_member(:logging_configuration_identifier, Shapes::ShapeRef.new(shape: LoggingConfigurationIdentifier, location_name: "loggingConfigurationIdentifier"))
    ListRoomsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxRoomResults, location_name: "maxResults"))
    ListRoomsRequest.add_member(:message_review_handler_uri, Shapes::ShapeRef.new(shape: LambdaArn, location_name: "messageReviewHandlerUri"))
    ListRoomsRequest.add_member(:name, Shapes::ShapeRef.new(shape: RoomName, location_name: "name"))
    ListRoomsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListRoomsRequest.struct_class = Types::ListRoomsRequest

    ListRoomsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListRoomsResponse.add_member(:rooms, Shapes::ShapeRef.new(shape: RoomList, required: true, location_name: "rooms"))
    ListRoomsResponse.struct_class = Types::ListRoomsResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location: "uri", location_name: "resourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, required: true, location_name: "tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    LoggingConfigurationIdentifierList.member = Shapes::ShapeRef.new(shape: LoggingConfigurationIdentifier)

    LoggingConfigurationList.member = Shapes::ShapeRef.new(shape: LoggingConfigurationSummary)

    LoggingConfigurationSummary.add_member(:arn, Shapes::ShapeRef.new(shape: LoggingConfigurationArn, location_name: "arn"))
    LoggingConfigurationSummary.add_member(:create_time, Shapes::ShapeRef.new(shape: Time, location_name: "createTime"))
    LoggingConfigurationSummary.add_member(:destination_configuration, Shapes::ShapeRef.new(shape: DestinationConfiguration, location_name: "destinationConfiguration"))
    LoggingConfigurationSummary.add_member(:id, Shapes::ShapeRef.new(shape: LoggingConfigurationID, location_name: "id"))
    LoggingConfigurationSummary.add_member(:name, Shapes::ShapeRef.new(shape: LoggingConfigurationName, location_name: "name"))
    LoggingConfigurationSummary.add_member(:state, Shapes::ShapeRef.new(shape: LoggingConfigurationState, location_name: "state"))
    LoggingConfigurationSummary.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    LoggingConfigurationSummary.add_member(:update_time, Shapes::ShapeRef.new(shape: Time, location_name: "updateTime"))
    LoggingConfigurationSummary.struct_class = Types::LoggingConfigurationSummary

    MessageReviewHandler.add_member(:fallback_result, Shapes::ShapeRef.new(shape: FallbackResult, location_name: "fallbackResult"))
    MessageReviewHandler.add_member(:uri, Shapes::ShapeRef.new(shape: LambdaArn, location_name: "uri"))
    MessageReviewHandler.struct_class = Types::MessageReviewHandler

    PendingVerification.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, required: true, location_name: "message"))
    PendingVerification.struct_class = Types::PendingVerification

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, required: true, location_name: "message"))
    ResourceNotFoundException.add_member(:resource_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "resourceId"))
    ResourceNotFoundException.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, required: true, location_name: "resourceType"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    RoomList.member = Shapes::ShapeRef.new(shape: RoomSummary)

    RoomSummary.add_member(:arn, Shapes::ShapeRef.new(shape: RoomArn, location_name: "arn"))
    RoomSummary.add_member(:create_time, Shapes::ShapeRef.new(shape: Time, location_name: "createTime"))
    RoomSummary.add_member(:id, Shapes::ShapeRef.new(shape: RoomID, location_name: "id"))
    RoomSummary.add_member(:logging_configuration_identifiers, Shapes::ShapeRef.new(shape: LoggingConfigurationIdentifierList, location_name: "loggingConfigurationIdentifiers"))
    RoomSummary.add_member(:message_review_handler, Shapes::ShapeRef.new(shape: MessageReviewHandler, location_name: "messageReviewHandler"))
    RoomSummary.add_member(:name, Shapes::ShapeRef.new(shape: RoomName, location_name: "name"))
    RoomSummary.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    RoomSummary.add_member(:update_time, Shapes::ShapeRef.new(shape: Time, location_name: "updateTime"))
    RoomSummary.struct_class = Types::RoomSummary

    S3DestinationConfiguration.add_member(:bucket_name, Shapes::ShapeRef.new(shape: BucketName, required: true, location_name: "bucketName"))
    S3DestinationConfiguration.struct_class = Types::S3DestinationConfiguration

    SendEventRequest.add_member(:attributes, Shapes::ShapeRef.new(shape: EventAttributes, location_name: "attributes"))
    SendEventRequest.add_member(:event_name, Shapes::ShapeRef.new(shape: EventName, required: true, location_name: "eventName"))
    SendEventRequest.add_member(:room_identifier, Shapes::ShapeRef.new(shape: RoomIdentifier, required: true, location_name: "roomIdentifier"))
    SendEventRequest.struct_class = Types::SendEventRequest

    SendEventResponse.add_member(:id, Shapes::ShapeRef.new(shape: ID, location_name: "id"))
    SendEventResponse.struct_class = Types::SendEventResponse

    ServiceQuotaExceededException.add_member(:limit, Shapes::ShapeRef.new(shape: Limit, required: true, location_name: "limit"))
    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, required: true, location_name: "message"))
    ServiceQuotaExceededException.add_member(:resource_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "resourceId"))
    ServiceQuotaExceededException.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, required: true, location_name: "resourceType"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location: "uri", location_name: "resourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, required: true, location_name: "tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    Tags.key = Shapes::ShapeRef.new(shape: TagKey)
    Tags.value = Shapes::ShapeRef.new(shape: TagValue)

    ThrottlingException.add_member(:limit, Shapes::ShapeRef.new(shape: Limit, required: true, location_name: "limit"))
    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, required: true, location_name: "message"))
    ThrottlingException.add_member(:resource_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "resourceId"))
    ThrottlingException.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, required: true, location_name: "resourceType"))
    ThrottlingException.struct_class = Types::ThrottlingException

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location: "uri", location_name: "resourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateLoggingConfigurationRequest.add_member(:destination_configuration, Shapes::ShapeRef.new(shape: DestinationConfiguration, location_name: "destinationConfiguration"))
    UpdateLoggingConfigurationRequest.add_member(:identifier, Shapes::ShapeRef.new(shape: LoggingConfigurationIdentifier, required: true, location_name: "identifier"))
    UpdateLoggingConfigurationRequest.add_member(:name, Shapes::ShapeRef.new(shape: LoggingConfigurationName, location_name: "name"))
    UpdateLoggingConfigurationRequest.struct_class = Types::UpdateLoggingConfigurationRequest

    UpdateLoggingConfigurationResponse.add_member(:arn, Shapes::ShapeRef.new(shape: LoggingConfigurationArn, location_name: "arn"))
    UpdateLoggingConfigurationResponse.add_member(:create_time, Shapes::ShapeRef.new(shape: Time, location_name: "createTime"))
    UpdateLoggingConfigurationResponse.add_member(:destination_configuration, Shapes::ShapeRef.new(shape: DestinationConfiguration, location_name: "destinationConfiguration"))
    UpdateLoggingConfigurationResponse.add_member(:id, Shapes::ShapeRef.new(shape: LoggingConfigurationID, location_name: "id"))
    UpdateLoggingConfigurationResponse.add_member(:name, Shapes::ShapeRef.new(shape: LoggingConfigurationName, location_name: "name"))
    UpdateLoggingConfigurationResponse.add_member(:state, Shapes::ShapeRef.new(shape: UpdateLoggingConfigurationState, location_name: "state"))
    UpdateLoggingConfigurationResponse.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    UpdateLoggingConfigurationResponse.add_member(:update_time, Shapes::ShapeRef.new(shape: Time, location_name: "updateTime"))
    UpdateLoggingConfigurationResponse.struct_class = Types::UpdateLoggingConfigurationResponse

    UpdateRoomRequest.add_member(:identifier, Shapes::ShapeRef.new(shape: RoomIdentifier, required: true, location_name: "identifier"))
    UpdateRoomRequest.add_member(:logging_configuration_identifiers, Shapes::ShapeRef.new(shape: LoggingConfigurationIdentifierList, location_name: "loggingConfigurationIdentifiers"))
    UpdateRoomRequest.add_member(:maximum_message_length, Shapes::ShapeRef.new(shape: RoomMaxMessageLength, location_name: "maximumMessageLength"))
    UpdateRoomRequest.add_member(:maximum_message_rate_per_second, Shapes::ShapeRef.new(shape: RoomMaxMessageRatePerSecond, location_name: "maximumMessageRatePerSecond"))
    UpdateRoomRequest.add_member(:message_review_handler, Shapes::ShapeRef.new(shape: MessageReviewHandler, location_name: "messageReviewHandler"))
    UpdateRoomRequest.add_member(:name, Shapes::ShapeRef.new(shape: RoomName, location_name: "name"))
    UpdateRoomRequest.struct_class = Types::UpdateRoomRequest

    UpdateRoomResponse.add_member(:arn, Shapes::ShapeRef.new(shape: RoomArn, location_name: "arn"))
    UpdateRoomResponse.add_member(:create_time, Shapes::ShapeRef.new(shape: Time, location_name: "createTime"))
    UpdateRoomResponse.add_member(:id, Shapes::ShapeRef.new(shape: RoomID, location_name: "id"))
    UpdateRoomResponse.add_member(:logging_configuration_identifiers, Shapes::ShapeRef.new(shape: LoggingConfigurationIdentifierList, location_name: "loggingConfigurationIdentifiers"))
    UpdateRoomResponse.add_member(:maximum_message_length, Shapes::ShapeRef.new(shape: RoomMaxMessageLength, location_name: "maximumMessageLength"))
    UpdateRoomResponse.add_member(:maximum_message_rate_per_second, Shapes::ShapeRef.new(shape: RoomMaxMessageRatePerSecond, location_name: "maximumMessageRatePerSecond"))
    UpdateRoomResponse.add_member(:message_review_handler, Shapes::ShapeRef.new(shape: MessageReviewHandler, location_name: "messageReviewHandler"))
    UpdateRoomResponse.add_member(:name, Shapes::ShapeRef.new(shape: RoomName, location_name: "name"))
    UpdateRoomResponse.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    UpdateRoomResponse.add_member(:update_time, Shapes::ShapeRef.new(shape: Time, location_name: "updateTime"))
    UpdateRoomResponse.struct_class = Types::UpdateRoomResponse

    ValidationException.add_member(:field_list, Shapes::ShapeRef.new(shape: ValidationExceptionFieldList, location_name: "fieldList"))
    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, required: true, location_name: "message"))
    ValidationException.add_member(:reason, Shapes::ShapeRef.new(shape: ValidationExceptionReason, required: true, location_name: "reason"))
    ValidationException.struct_class = Types::ValidationException

    ValidationExceptionField.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, required: true, location_name: "message"))
    ValidationExceptionField.add_member(:name, Shapes::ShapeRef.new(shape: FieldName, required: true, location_name: "name"))
    ValidationExceptionField.struct_class = Types::ValidationExceptionField

    ValidationExceptionFieldList.member = Shapes::ShapeRef.new(shape: ValidationExceptionField)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2020-07-14"

      api.metadata = {
        "apiVersion" => "2020-07-14",
        "endpointPrefix" => "ivschat",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceAbbreviation" => "ivschat",
        "serviceFullName" => "Amazon Interactive Video Service Chat",
        "serviceId" => "ivschat",
        "signatureVersion" => "v4",
        "signingName" => "ivschat",
        "uid" => "ivschat-2020-07-14",
      }

      api.add_operation(:create_chat_token, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateChatToken"
        o.http_method = "POST"
        o.http_request_uri = "/CreateChatToken"
        o.input = Shapes::ShapeRef.new(shape: CreateChatTokenRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateChatTokenResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: PendingVerification)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:create_logging_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateLoggingConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/CreateLoggingConfiguration"
        o.input = Shapes::ShapeRef.new(shape: CreateLoggingConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateLoggingConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: PendingVerification)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:create_room, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateRoom"
        o.http_method = "POST"
        o.http_request_uri = "/CreateRoom"
        o.input = Shapes::ShapeRef.new(shape: CreateRoomRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateRoomResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: PendingVerification)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:delete_logging_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteLoggingConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/DeleteLoggingConfiguration"
        o.input = Shapes::ShapeRef.new(shape: DeleteLoggingConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: PendingVerification)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:delete_message, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteMessage"
        o.http_method = "POST"
        o.http_request_uri = "/DeleteMessage"
        o.input = Shapes::ShapeRef.new(shape: DeleteMessageRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteMessageResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: PendingVerification)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:delete_room, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteRoom"
        o.http_method = "POST"
        o.http_request_uri = "/DeleteRoom"
        o.input = Shapes::ShapeRef.new(shape: DeleteRoomRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: PendingVerification)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:disconnect_user, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisconnectUser"
        o.http_method = "POST"
        o.http_request_uri = "/DisconnectUser"
        o.input = Shapes::ShapeRef.new(shape: DisconnectUserRequest)
        o.output = Shapes::ShapeRef.new(shape: DisconnectUserResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: PendingVerification)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:get_logging_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetLoggingConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/GetLoggingConfiguration"
        o.input = Shapes::ShapeRef.new(shape: GetLoggingConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetLoggingConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:get_room, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetRoom"
        o.http_method = "POST"
        o.http_request_uri = "/GetRoom"
        o.input = Shapes::ShapeRef.new(shape: GetRoomRequest)
        o.output = Shapes::ShapeRef.new(shape: GetRoomResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:list_logging_configurations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListLoggingConfigurations"
        o.http_method = "POST"
        o.http_request_uri = "/ListLoggingConfigurations"
        o.input = Shapes::ShapeRef.new(shape: ListLoggingConfigurationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListLoggingConfigurationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_rooms, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListRooms"
        o.http_method = "POST"
        o.http_request_uri = "/ListRooms"
        o.input = Shapes::ShapeRef.new(shape: ListRoomsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListRoomsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
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
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:send_event, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SendEvent"
        o.http_method = "POST"
        o.http_request_uri = "/SendEvent"
        o.input = Shapes::ShapeRef.new(shape: SendEventRequest)
        o.output = Shapes::ShapeRef.new(shape: SendEventResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: PendingVerification)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "DELETE"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:update_logging_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateLoggingConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/UpdateLoggingConfiguration"
        o.input = Shapes::ShapeRef.new(shape: UpdateLoggingConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateLoggingConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: PendingVerification)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:update_room, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateRoom"
        o.http_method = "POST"
        o.http_request_uri = "/UpdateRoom"
        o.input = Shapes::ShapeRef.new(shape: UpdateRoomRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateRoomResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: PendingVerification)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)
    end

  end
end
