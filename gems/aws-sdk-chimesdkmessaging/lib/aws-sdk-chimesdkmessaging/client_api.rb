# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::ChimeSDKMessaging
  # @api private
  module ClientApi

    include Seahorse::Model

    AppInstanceUserMembershipSummary = Shapes::StructureShape.new(name: 'AppInstanceUserMembershipSummary')
    BadRequestException = Shapes::StructureShape.new(name: 'BadRequestException')
    BatchChannelMemberships = Shapes::StructureShape.new(name: 'BatchChannelMemberships')
    BatchCreateChannelMembershipError = Shapes::StructureShape.new(name: 'BatchCreateChannelMembershipError')
    BatchCreateChannelMembershipErrors = Shapes::ListShape.new(name: 'BatchCreateChannelMembershipErrors')
    BatchCreateChannelMembershipRequest = Shapes::StructureShape.new(name: 'BatchCreateChannelMembershipRequest')
    BatchCreateChannelMembershipResponse = Shapes::StructureShape.new(name: 'BatchCreateChannelMembershipResponse')
    Channel = Shapes::StructureShape.new(name: 'Channel')
    ChannelBan = Shapes::StructureShape.new(name: 'ChannelBan')
    ChannelBanSummary = Shapes::StructureShape.new(name: 'ChannelBanSummary')
    ChannelBanSummaryList = Shapes::ListShape.new(name: 'ChannelBanSummaryList')
    ChannelMembership = Shapes::StructureShape.new(name: 'ChannelMembership')
    ChannelMembershipForAppInstanceUserSummary = Shapes::StructureShape.new(name: 'ChannelMembershipForAppInstanceUserSummary')
    ChannelMembershipForAppInstanceUserSummaryList = Shapes::ListShape.new(name: 'ChannelMembershipForAppInstanceUserSummaryList')
    ChannelMembershipSummary = Shapes::StructureShape.new(name: 'ChannelMembershipSummary')
    ChannelMembershipSummaryList = Shapes::ListShape.new(name: 'ChannelMembershipSummaryList')
    ChannelMembershipType = Shapes::StringShape.new(name: 'ChannelMembershipType')
    ChannelMessage = Shapes::StructureShape.new(name: 'ChannelMessage')
    ChannelMessagePersistenceType = Shapes::StringShape.new(name: 'ChannelMessagePersistenceType')
    ChannelMessageSummary = Shapes::StructureShape.new(name: 'ChannelMessageSummary')
    ChannelMessageSummaryList = Shapes::ListShape.new(name: 'ChannelMessageSummaryList')
    ChannelMessageType = Shapes::StringShape.new(name: 'ChannelMessageType')
    ChannelMode = Shapes::StringShape.new(name: 'ChannelMode')
    ChannelModeratedByAppInstanceUserSummary = Shapes::StructureShape.new(name: 'ChannelModeratedByAppInstanceUserSummary')
    ChannelModeratedByAppInstanceUserSummaryList = Shapes::ListShape.new(name: 'ChannelModeratedByAppInstanceUserSummaryList')
    ChannelModerator = Shapes::StructureShape.new(name: 'ChannelModerator')
    ChannelModeratorSummary = Shapes::StructureShape.new(name: 'ChannelModeratorSummary')
    ChannelModeratorSummaryList = Shapes::ListShape.new(name: 'ChannelModeratorSummaryList')
    ChannelPrivacy = Shapes::StringShape.new(name: 'ChannelPrivacy')
    ChannelSummary = Shapes::StructureShape.new(name: 'ChannelSummary')
    ChannelSummaryList = Shapes::ListShape.new(name: 'ChannelSummaryList')
    ChimeArn = Shapes::StringShape.new(name: 'ChimeArn')
    ClientRequestToken = Shapes::StringShape.new(name: 'ClientRequestToken')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    Content = Shapes::StringShape.new(name: 'Content')
    CreateChannelBanRequest = Shapes::StructureShape.new(name: 'CreateChannelBanRequest')
    CreateChannelBanResponse = Shapes::StructureShape.new(name: 'CreateChannelBanResponse')
    CreateChannelMembershipRequest = Shapes::StructureShape.new(name: 'CreateChannelMembershipRequest')
    CreateChannelMembershipResponse = Shapes::StructureShape.new(name: 'CreateChannelMembershipResponse')
    CreateChannelModeratorRequest = Shapes::StructureShape.new(name: 'CreateChannelModeratorRequest')
    CreateChannelModeratorResponse = Shapes::StructureShape.new(name: 'CreateChannelModeratorResponse')
    CreateChannelRequest = Shapes::StructureShape.new(name: 'CreateChannelRequest')
    CreateChannelResponse = Shapes::StructureShape.new(name: 'CreateChannelResponse')
    DeleteChannelBanRequest = Shapes::StructureShape.new(name: 'DeleteChannelBanRequest')
    DeleteChannelMembershipRequest = Shapes::StructureShape.new(name: 'DeleteChannelMembershipRequest')
    DeleteChannelMessageRequest = Shapes::StructureShape.new(name: 'DeleteChannelMessageRequest')
    DeleteChannelModeratorRequest = Shapes::StructureShape.new(name: 'DeleteChannelModeratorRequest')
    DeleteChannelRequest = Shapes::StructureShape.new(name: 'DeleteChannelRequest')
    DescribeChannelBanRequest = Shapes::StructureShape.new(name: 'DescribeChannelBanRequest')
    DescribeChannelBanResponse = Shapes::StructureShape.new(name: 'DescribeChannelBanResponse')
    DescribeChannelMembershipForAppInstanceUserRequest = Shapes::StructureShape.new(name: 'DescribeChannelMembershipForAppInstanceUserRequest')
    DescribeChannelMembershipForAppInstanceUserResponse = Shapes::StructureShape.new(name: 'DescribeChannelMembershipForAppInstanceUserResponse')
    DescribeChannelMembershipRequest = Shapes::StructureShape.new(name: 'DescribeChannelMembershipRequest')
    DescribeChannelMembershipResponse = Shapes::StructureShape.new(name: 'DescribeChannelMembershipResponse')
    DescribeChannelModeratedByAppInstanceUserRequest = Shapes::StructureShape.new(name: 'DescribeChannelModeratedByAppInstanceUserRequest')
    DescribeChannelModeratedByAppInstanceUserResponse = Shapes::StructureShape.new(name: 'DescribeChannelModeratedByAppInstanceUserResponse')
    DescribeChannelModeratorRequest = Shapes::StructureShape.new(name: 'DescribeChannelModeratorRequest')
    DescribeChannelModeratorResponse = Shapes::StructureShape.new(name: 'DescribeChannelModeratorResponse')
    DescribeChannelRequest = Shapes::StructureShape.new(name: 'DescribeChannelRequest')
    DescribeChannelResponse = Shapes::StructureShape.new(name: 'DescribeChannelResponse')
    ErrorCode = Shapes::StringShape.new(name: 'ErrorCode')
    ForbiddenException = Shapes::StructureShape.new(name: 'ForbiddenException')
    GetChannelMessageRequest = Shapes::StructureShape.new(name: 'GetChannelMessageRequest')
    GetChannelMessageResponse = Shapes::StructureShape.new(name: 'GetChannelMessageResponse')
    GetMessagingSessionEndpointRequest = Shapes::StructureShape.new(name: 'GetMessagingSessionEndpointRequest')
    GetMessagingSessionEndpointResponse = Shapes::StructureShape.new(name: 'GetMessagingSessionEndpointResponse')
    Identity = Shapes::StructureShape.new(name: 'Identity')
    ListChannelBansRequest = Shapes::StructureShape.new(name: 'ListChannelBansRequest')
    ListChannelBansResponse = Shapes::StructureShape.new(name: 'ListChannelBansResponse')
    ListChannelMembershipsForAppInstanceUserRequest = Shapes::StructureShape.new(name: 'ListChannelMembershipsForAppInstanceUserRequest')
    ListChannelMembershipsForAppInstanceUserResponse = Shapes::StructureShape.new(name: 'ListChannelMembershipsForAppInstanceUserResponse')
    ListChannelMembershipsRequest = Shapes::StructureShape.new(name: 'ListChannelMembershipsRequest')
    ListChannelMembershipsResponse = Shapes::StructureShape.new(name: 'ListChannelMembershipsResponse')
    ListChannelMessagesRequest = Shapes::StructureShape.new(name: 'ListChannelMessagesRequest')
    ListChannelMessagesResponse = Shapes::StructureShape.new(name: 'ListChannelMessagesResponse')
    ListChannelModeratorsRequest = Shapes::StructureShape.new(name: 'ListChannelModeratorsRequest')
    ListChannelModeratorsResponse = Shapes::StructureShape.new(name: 'ListChannelModeratorsResponse')
    ListChannelsModeratedByAppInstanceUserRequest = Shapes::StructureShape.new(name: 'ListChannelsModeratedByAppInstanceUserRequest')
    ListChannelsModeratedByAppInstanceUserResponse = Shapes::StructureShape.new(name: 'ListChannelsModeratedByAppInstanceUserResponse')
    ListChannelsRequest = Shapes::StructureShape.new(name: 'ListChannelsRequest')
    ListChannelsResponse = Shapes::StructureShape.new(name: 'ListChannelsResponse')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    MemberArns = Shapes::ListShape.new(name: 'MemberArns')
    Members = Shapes::ListShape.new(name: 'Members')
    MessageId = Shapes::StringShape.new(name: 'MessageId')
    MessagingSessionEndpoint = Shapes::StructureShape.new(name: 'MessagingSessionEndpoint')
    Metadata = Shapes::StringShape.new(name: 'Metadata')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    NonEmptyContent = Shapes::StringShape.new(name: 'NonEmptyContent')
    NonEmptyResourceName = Shapes::StringShape.new(name: 'NonEmptyResourceName')
    NonNullableBoolean = Shapes::BooleanShape.new(name: 'NonNullableBoolean')
    NotFoundException = Shapes::StructureShape.new(name: 'NotFoundException')
    RedactChannelMessageRequest = Shapes::StructureShape.new(name: 'RedactChannelMessageRequest')
    RedactChannelMessageResponse = Shapes::StructureShape.new(name: 'RedactChannelMessageResponse')
    ResourceLimitExceededException = Shapes::StructureShape.new(name: 'ResourceLimitExceededException')
    ResourceName = Shapes::StringShape.new(name: 'ResourceName')
    SendChannelMessageRequest = Shapes::StructureShape.new(name: 'SendChannelMessageRequest')
    SendChannelMessageResponse = Shapes::StructureShape.new(name: 'SendChannelMessageResponse')
    ServiceFailureException = Shapes::StructureShape.new(name: 'ServiceFailureException')
    ServiceUnavailableException = Shapes::StructureShape.new(name: 'ServiceUnavailableException')
    SortOrder = Shapes::StringShape.new(name: 'SortOrder')
    String = Shapes::StringShape.new(name: 'String')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagList = Shapes::ListShape.new(name: 'TagList')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    ThrottledClientException = Shapes::StructureShape.new(name: 'ThrottledClientException')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    UnauthorizedClientException = Shapes::StructureShape.new(name: 'UnauthorizedClientException')
    UpdateChannelMessageRequest = Shapes::StructureShape.new(name: 'UpdateChannelMessageRequest')
    UpdateChannelMessageResponse = Shapes::StructureShape.new(name: 'UpdateChannelMessageResponse')
    UpdateChannelReadMarkerRequest = Shapes::StructureShape.new(name: 'UpdateChannelReadMarkerRequest')
    UpdateChannelReadMarkerResponse = Shapes::StructureShape.new(name: 'UpdateChannelReadMarkerResponse')
    UpdateChannelRequest = Shapes::StructureShape.new(name: 'UpdateChannelRequest')
    UpdateChannelResponse = Shapes::StructureShape.new(name: 'UpdateChannelResponse')
    UrlType = Shapes::StringShape.new(name: 'UrlType')

    AppInstanceUserMembershipSummary.add_member(:type, Shapes::ShapeRef.new(shape: ChannelMembershipType, location_name: "Type"))
    AppInstanceUserMembershipSummary.add_member(:read_marker_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "ReadMarkerTimestamp"))
    AppInstanceUserMembershipSummary.struct_class = Types::AppInstanceUserMembershipSummary

    BadRequestException.add_member(:code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "Code"))
    BadRequestException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    BadRequestException.struct_class = Types::BadRequestException

    BatchChannelMemberships.add_member(:invited_by, Shapes::ShapeRef.new(shape: Identity, location_name: "InvitedBy"))
    BatchChannelMemberships.add_member(:type, Shapes::ShapeRef.new(shape: ChannelMembershipType, location_name: "Type"))
    BatchChannelMemberships.add_member(:members, Shapes::ShapeRef.new(shape: Members, location_name: "Members"))
    BatchChannelMemberships.add_member(:channel_arn, Shapes::ShapeRef.new(shape: ChimeArn, location_name: "ChannelArn"))
    BatchChannelMemberships.struct_class = Types::BatchChannelMemberships

    BatchCreateChannelMembershipError.add_member(:member_arn, Shapes::ShapeRef.new(shape: ChimeArn, location_name: "MemberArn"))
    BatchCreateChannelMembershipError.add_member(:error_code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "ErrorCode"))
    BatchCreateChannelMembershipError.add_member(:error_message, Shapes::ShapeRef.new(shape: String, location_name: "ErrorMessage"))
    BatchCreateChannelMembershipError.struct_class = Types::BatchCreateChannelMembershipError

    BatchCreateChannelMembershipErrors.member = Shapes::ShapeRef.new(shape: BatchCreateChannelMembershipError)

    BatchCreateChannelMembershipRequest.add_member(:channel_arn, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location: "uri", location_name: "channelArn"))
    BatchCreateChannelMembershipRequest.add_member(:type, Shapes::ShapeRef.new(shape: ChannelMembershipType, location_name: "Type"))
    BatchCreateChannelMembershipRequest.add_member(:member_arns, Shapes::ShapeRef.new(shape: MemberArns, required: true, location_name: "MemberArns"))
    BatchCreateChannelMembershipRequest.add_member(:chime_bearer, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location: "header", location_name: "x-amz-chime-bearer"))
    BatchCreateChannelMembershipRequest.struct_class = Types::BatchCreateChannelMembershipRequest

    BatchCreateChannelMembershipResponse.add_member(:batch_channel_memberships, Shapes::ShapeRef.new(shape: BatchChannelMemberships, location_name: "BatchChannelMemberships"))
    BatchCreateChannelMembershipResponse.add_member(:errors, Shapes::ShapeRef.new(shape: BatchCreateChannelMembershipErrors, location_name: "Errors"))
    BatchCreateChannelMembershipResponse.struct_class = Types::BatchCreateChannelMembershipResponse

    Channel.add_member(:name, Shapes::ShapeRef.new(shape: NonEmptyResourceName, location_name: "Name"))
    Channel.add_member(:channel_arn, Shapes::ShapeRef.new(shape: ChimeArn, location_name: "ChannelArn"))
    Channel.add_member(:mode, Shapes::ShapeRef.new(shape: ChannelMode, location_name: "Mode"))
    Channel.add_member(:privacy, Shapes::ShapeRef.new(shape: ChannelPrivacy, location_name: "Privacy"))
    Channel.add_member(:metadata, Shapes::ShapeRef.new(shape: Metadata, location_name: "Metadata"))
    Channel.add_member(:created_by, Shapes::ShapeRef.new(shape: Identity, location_name: "CreatedBy"))
    Channel.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedTimestamp"))
    Channel.add_member(:last_message_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastMessageTimestamp"))
    Channel.add_member(:last_updated_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastUpdatedTimestamp"))
    Channel.struct_class = Types::Channel

    ChannelBan.add_member(:member, Shapes::ShapeRef.new(shape: Identity, location_name: "Member"))
    ChannelBan.add_member(:channel_arn, Shapes::ShapeRef.new(shape: ChimeArn, location_name: "ChannelArn"))
    ChannelBan.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedTimestamp"))
    ChannelBan.add_member(:created_by, Shapes::ShapeRef.new(shape: Identity, location_name: "CreatedBy"))
    ChannelBan.struct_class = Types::ChannelBan

    ChannelBanSummary.add_member(:member, Shapes::ShapeRef.new(shape: Identity, location_name: "Member"))
    ChannelBanSummary.struct_class = Types::ChannelBanSummary

    ChannelBanSummaryList.member = Shapes::ShapeRef.new(shape: ChannelBanSummary)

    ChannelMembership.add_member(:invited_by, Shapes::ShapeRef.new(shape: Identity, location_name: "InvitedBy"))
    ChannelMembership.add_member(:type, Shapes::ShapeRef.new(shape: ChannelMembershipType, location_name: "Type"))
    ChannelMembership.add_member(:member, Shapes::ShapeRef.new(shape: Identity, location_name: "Member"))
    ChannelMembership.add_member(:channel_arn, Shapes::ShapeRef.new(shape: ChimeArn, location_name: "ChannelArn"))
    ChannelMembership.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedTimestamp"))
    ChannelMembership.add_member(:last_updated_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastUpdatedTimestamp"))
    ChannelMembership.struct_class = Types::ChannelMembership

    ChannelMembershipForAppInstanceUserSummary.add_member(:channel_summary, Shapes::ShapeRef.new(shape: ChannelSummary, location_name: "ChannelSummary"))
    ChannelMembershipForAppInstanceUserSummary.add_member(:app_instance_user_membership_summary, Shapes::ShapeRef.new(shape: AppInstanceUserMembershipSummary, location_name: "AppInstanceUserMembershipSummary"))
    ChannelMembershipForAppInstanceUserSummary.struct_class = Types::ChannelMembershipForAppInstanceUserSummary

    ChannelMembershipForAppInstanceUserSummaryList.member = Shapes::ShapeRef.new(shape: ChannelMembershipForAppInstanceUserSummary)

    ChannelMembershipSummary.add_member(:member, Shapes::ShapeRef.new(shape: Identity, location_name: "Member"))
    ChannelMembershipSummary.struct_class = Types::ChannelMembershipSummary

    ChannelMembershipSummaryList.member = Shapes::ShapeRef.new(shape: ChannelMembershipSummary)

    ChannelMessage.add_member(:channel_arn, Shapes::ShapeRef.new(shape: ChimeArn, location_name: "ChannelArn"))
    ChannelMessage.add_member(:message_id, Shapes::ShapeRef.new(shape: MessageId, location_name: "MessageId"))
    ChannelMessage.add_member(:content, Shapes::ShapeRef.new(shape: Content, location_name: "Content"))
    ChannelMessage.add_member(:metadata, Shapes::ShapeRef.new(shape: Metadata, location_name: "Metadata"))
    ChannelMessage.add_member(:type, Shapes::ShapeRef.new(shape: ChannelMessageType, location_name: "Type"))
    ChannelMessage.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedTimestamp"))
    ChannelMessage.add_member(:last_edited_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastEditedTimestamp"))
    ChannelMessage.add_member(:last_updated_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastUpdatedTimestamp"))
    ChannelMessage.add_member(:sender, Shapes::ShapeRef.new(shape: Identity, location_name: "Sender"))
    ChannelMessage.add_member(:redacted, Shapes::ShapeRef.new(shape: NonNullableBoolean, location_name: "Redacted"))
    ChannelMessage.add_member(:persistence, Shapes::ShapeRef.new(shape: ChannelMessagePersistenceType, location_name: "Persistence"))
    ChannelMessage.struct_class = Types::ChannelMessage

    ChannelMessageSummary.add_member(:message_id, Shapes::ShapeRef.new(shape: MessageId, location_name: "MessageId"))
    ChannelMessageSummary.add_member(:content, Shapes::ShapeRef.new(shape: Content, location_name: "Content"))
    ChannelMessageSummary.add_member(:metadata, Shapes::ShapeRef.new(shape: Metadata, location_name: "Metadata"))
    ChannelMessageSummary.add_member(:type, Shapes::ShapeRef.new(shape: ChannelMessageType, location_name: "Type"))
    ChannelMessageSummary.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedTimestamp"))
    ChannelMessageSummary.add_member(:last_updated_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastUpdatedTimestamp"))
    ChannelMessageSummary.add_member(:last_edited_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastEditedTimestamp"))
    ChannelMessageSummary.add_member(:sender, Shapes::ShapeRef.new(shape: Identity, location_name: "Sender"))
    ChannelMessageSummary.add_member(:redacted, Shapes::ShapeRef.new(shape: NonNullableBoolean, location_name: "Redacted"))
    ChannelMessageSummary.struct_class = Types::ChannelMessageSummary

    ChannelMessageSummaryList.member = Shapes::ShapeRef.new(shape: ChannelMessageSummary)

    ChannelModeratedByAppInstanceUserSummary.add_member(:channel_summary, Shapes::ShapeRef.new(shape: ChannelSummary, location_name: "ChannelSummary"))
    ChannelModeratedByAppInstanceUserSummary.struct_class = Types::ChannelModeratedByAppInstanceUserSummary

    ChannelModeratedByAppInstanceUserSummaryList.member = Shapes::ShapeRef.new(shape: ChannelModeratedByAppInstanceUserSummary)

    ChannelModerator.add_member(:moderator, Shapes::ShapeRef.new(shape: Identity, location_name: "Moderator"))
    ChannelModerator.add_member(:channel_arn, Shapes::ShapeRef.new(shape: ChimeArn, location_name: "ChannelArn"))
    ChannelModerator.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedTimestamp"))
    ChannelModerator.add_member(:created_by, Shapes::ShapeRef.new(shape: Identity, location_name: "CreatedBy"))
    ChannelModerator.struct_class = Types::ChannelModerator

    ChannelModeratorSummary.add_member(:moderator, Shapes::ShapeRef.new(shape: Identity, location_name: "Moderator"))
    ChannelModeratorSummary.struct_class = Types::ChannelModeratorSummary

    ChannelModeratorSummaryList.member = Shapes::ShapeRef.new(shape: ChannelModeratorSummary)

    ChannelSummary.add_member(:name, Shapes::ShapeRef.new(shape: NonEmptyResourceName, location_name: "Name"))
    ChannelSummary.add_member(:channel_arn, Shapes::ShapeRef.new(shape: ChimeArn, location_name: "ChannelArn"))
    ChannelSummary.add_member(:mode, Shapes::ShapeRef.new(shape: ChannelMode, location_name: "Mode"))
    ChannelSummary.add_member(:privacy, Shapes::ShapeRef.new(shape: ChannelPrivacy, location_name: "Privacy"))
    ChannelSummary.add_member(:metadata, Shapes::ShapeRef.new(shape: Metadata, location_name: "Metadata"))
    ChannelSummary.add_member(:last_message_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastMessageTimestamp"))
    ChannelSummary.struct_class = Types::ChannelSummary

    ChannelSummaryList.member = Shapes::ShapeRef.new(shape: ChannelSummary)

    ConflictException.add_member(:code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "Code"))
    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ConflictException.struct_class = Types::ConflictException

    CreateChannelBanRequest.add_member(:channel_arn, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location: "uri", location_name: "channelArn"))
    CreateChannelBanRequest.add_member(:member_arn, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location_name: "MemberArn"))
    CreateChannelBanRequest.add_member(:chime_bearer, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location: "header", location_name: "x-amz-chime-bearer"))
    CreateChannelBanRequest.struct_class = Types::CreateChannelBanRequest

    CreateChannelBanResponse.add_member(:channel_arn, Shapes::ShapeRef.new(shape: ChimeArn, location_name: "ChannelArn"))
    CreateChannelBanResponse.add_member(:member, Shapes::ShapeRef.new(shape: Identity, location_name: "Member"))
    CreateChannelBanResponse.struct_class = Types::CreateChannelBanResponse

    CreateChannelMembershipRequest.add_member(:channel_arn, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location: "uri", location_name: "channelArn"))
    CreateChannelMembershipRequest.add_member(:member_arn, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location_name: "MemberArn"))
    CreateChannelMembershipRequest.add_member(:type, Shapes::ShapeRef.new(shape: ChannelMembershipType, required: true, location_name: "Type"))
    CreateChannelMembershipRequest.add_member(:chime_bearer, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location: "header", location_name: "x-amz-chime-bearer"))
    CreateChannelMembershipRequest.struct_class = Types::CreateChannelMembershipRequest

    CreateChannelMembershipResponse.add_member(:channel_arn, Shapes::ShapeRef.new(shape: ChimeArn, location_name: "ChannelArn"))
    CreateChannelMembershipResponse.add_member(:member, Shapes::ShapeRef.new(shape: Identity, location_name: "Member"))
    CreateChannelMembershipResponse.struct_class = Types::CreateChannelMembershipResponse

    CreateChannelModeratorRequest.add_member(:channel_arn, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location: "uri", location_name: "channelArn"))
    CreateChannelModeratorRequest.add_member(:channel_moderator_arn, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location_name: "ChannelModeratorArn"))
    CreateChannelModeratorRequest.add_member(:chime_bearer, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location: "header", location_name: "x-amz-chime-bearer"))
    CreateChannelModeratorRequest.struct_class = Types::CreateChannelModeratorRequest

    CreateChannelModeratorResponse.add_member(:channel_arn, Shapes::ShapeRef.new(shape: ChimeArn, location_name: "ChannelArn"))
    CreateChannelModeratorResponse.add_member(:channel_moderator, Shapes::ShapeRef.new(shape: Identity, location_name: "ChannelModerator"))
    CreateChannelModeratorResponse.struct_class = Types::CreateChannelModeratorResponse

    CreateChannelRequest.add_member(:app_instance_arn, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location_name: "AppInstanceArn"))
    CreateChannelRequest.add_member(:name, Shapes::ShapeRef.new(shape: NonEmptyResourceName, required: true, location_name: "Name"))
    CreateChannelRequest.add_member(:mode, Shapes::ShapeRef.new(shape: ChannelMode, location_name: "Mode"))
    CreateChannelRequest.add_member(:privacy, Shapes::ShapeRef.new(shape: ChannelPrivacy, location_name: "Privacy"))
    CreateChannelRequest.add_member(:metadata, Shapes::ShapeRef.new(shape: Metadata, location_name: "Metadata"))
    CreateChannelRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, required: true, location_name: "ClientRequestToken", metadata: {"idempotencyToken"=>true}))
    CreateChannelRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateChannelRequest.add_member(:chime_bearer, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location: "header", location_name: "x-amz-chime-bearer"))
    CreateChannelRequest.struct_class = Types::CreateChannelRequest

    CreateChannelResponse.add_member(:channel_arn, Shapes::ShapeRef.new(shape: ChimeArn, location_name: "ChannelArn"))
    CreateChannelResponse.struct_class = Types::CreateChannelResponse

    DeleteChannelBanRequest.add_member(:channel_arn, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location: "uri", location_name: "channelArn"))
    DeleteChannelBanRequest.add_member(:member_arn, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location: "uri", location_name: "memberArn"))
    DeleteChannelBanRequest.add_member(:chime_bearer, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location: "header", location_name: "x-amz-chime-bearer"))
    DeleteChannelBanRequest.struct_class = Types::DeleteChannelBanRequest

    DeleteChannelMembershipRequest.add_member(:channel_arn, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location: "uri", location_name: "channelArn"))
    DeleteChannelMembershipRequest.add_member(:member_arn, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location: "uri", location_name: "memberArn"))
    DeleteChannelMembershipRequest.add_member(:chime_bearer, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location: "header", location_name: "x-amz-chime-bearer"))
    DeleteChannelMembershipRequest.struct_class = Types::DeleteChannelMembershipRequest

    DeleteChannelMessageRequest.add_member(:channel_arn, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location: "uri", location_name: "channelArn"))
    DeleteChannelMessageRequest.add_member(:message_id, Shapes::ShapeRef.new(shape: MessageId, required: true, location: "uri", location_name: "messageId"))
    DeleteChannelMessageRequest.add_member(:chime_bearer, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location: "header", location_name: "x-amz-chime-bearer"))
    DeleteChannelMessageRequest.struct_class = Types::DeleteChannelMessageRequest

    DeleteChannelModeratorRequest.add_member(:channel_arn, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location: "uri", location_name: "channelArn"))
    DeleteChannelModeratorRequest.add_member(:channel_moderator_arn, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location: "uri", location_name: "channelModeratorArn"))
    DeleteChannelModeratorRequest.add_member(:chime_bearer, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location: "header", location_name: "x-amz-chime-bearer"))
    DeleteChannelModeratorRequest.struct_class = Types::DeleteChannelModeratorRequest

    DeleteChannelRequest.add_member(:channel_arn, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location: "uri", location_name: "channelArn"))
    DeleteChannelRequest.add_member(:chime_bearer, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location: "header", location_name: "x-amz-chime-bearer"))
    DeleteChannelRequest.struct_class = Types::DeleteChannelRequest

    DescribeChannelBanRequest.add_member(:channel_arn, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location: "uri", location_name: "channelArn"))
    DescribeChannelBanRequest.add_member(:member_arn, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location: "uri", location_name: "memberArn"))
    DescribeChannelBanRequest.add_member(:chime_bearer, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location: "header", location_name: "x-amz-chime-bearer"))
    DescribeChannelBanRequest.struct_class = Types::DescribeChannelBanRequest

    DescribeChannelBanResponse.add_member(:channel_ban, Shapes::ShapeRef.new(shape: ChannelBan, location_name: "ChannelBan"))
    DescribeChannelBanResponse.struct_class = Types::DescribeChannelBanResponse

    DescribeChannelMembershipForAppInstanceUserRequest.add_member(:channel_arn, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location: "uri", location_name: "channelArn"))
    DescribeChannelMembershipForAppInstanceUserRequest.add_member(:app_instance_user_arn, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location: "querystring", location_name: "app-instance-user-arn"))
    DescribeChannelMembershipForAppInstanceUserRequest.add_member(:chime_bearer, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location: "header", location_name: "x-amz-chime-bearer"))
    DescribeChannelMembershipForAppInstanceUserRequest.struct_class = Types::DescribeChannelMembershipForAppInstanceUserRequest

    DescribeChannelMembershipForAppInstanceUserResponse.add_member(:channel_membership, Shapes::ShapeRef.new(shape: ChannelMembershipForAppInstanceUserSummary, location_name: "ChannelMembership"))
    DescribeChannelMembershipForAppInstanceUserResponse.struct_class = Types::DescribeChannelMembershipForAppInstanceUserResponse

    DescribeChannelMembershipRequest.add_member(:channel_arn, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location: "uri", location_name: "channelArn"))
    DescribeChannelMembershipRequest.add_member(:member_arn, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location: "uri", location_name: "memberArn"))
    DescribeChannelMembershipRequest.add_member(:chime_bearer, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location: "header", location_name: "x-amz-chime-bearer"))
    DescribeChannelMembershipRequest.struct_class = Types::DescribeChannelMembershipRequest

    DescribeChannelMembershipResponse.add_member(:channel_membership, Shapes::ShapeRef.new(shape: ChannelMembership, location_name: "ChannelMembership"))
    DescribeChannelMembershipResponse.struct_class = Types::DescribeChannelMembershipResponse

    DescribeChannelModeratedByAppInstanceUserRequest.add_member(:channel_arn, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location: "uri", location_name: "channelArn"))
    DescribeChannelModeratedByAppInstanceUserRequest.add_member(:app_instance_user_arn, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location: "querystring", location_name: "app-instance-user-arn"))
    DescribeChannelModeratedByAppInstanceUserRequest.add_member(:chime_bearer, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location: "header", location_name: "x-amz-chime-bearer"))
    DescribeChannelModeratedByAppInstanceUserRequest.struct_class = Types::DescribeChannelModeratedByAppInstanceUserRequest

    DescribeChannelModeratedByAppInstanceUserResponse.add_member(:channel, Shapes::ShapeRef.new(shape: ChannelModeratedByAppInstanceUserSummary, location_name: "Channel"))
    DescribeChannelModeratedByAppInstanceUserResponse.struct_class = Types::DescribeChannelModeratedByAppInstanceUserResponse

    DescribeChannelModeratorRequest.add_member(:channel_arn, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location: "uri", location_name: "channelArn"))
    DescribeChannelModeratorRequest.add_member(:channel_moderator_arn, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location: "uri", location_name: "channelModeratorArn"))
    DescribeChannelModeratorRequest.add_member(:chime_bearer, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location: "header", location_name: "x-amz-chime-bearer"))
    DescribeChannelModeratorRequest.struct_class = Types::DescribeChannelModeratorRequest

    DescribeChannelModeratorResponse.add_member(:channel_moderator, Shapes::ShapeRef.new(shape: ChannelModerator, location_name: "ChannelModerator"))
    DescribeChannelModeratorResponse.struct_class = Types::DescribeChannelModeratorResponse

    DescribeChannelRequest.add_member(:channel_arn, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location: "uri", location_name: "channelArn"))
    DescribeChannelRequest.add_member(:chime_bearer, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location: "header", location_name: "x-amz-chime-bearer"))
    DescribeChannelRequest.struct_class = Types::DescribeChannelRequest

    DescribeChannelResponse.add_member(:channel, Shapes::ShapeRef.new(shape: Channel, location_name: "Channel"))
    DescribeChannelResponse.struct_class = Types::DescribeChannelResponse

    ForbiddenException.add_member(:code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "Code"))
    ForbiddenException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ForbiddenException.struct_class = Types::ForbiddenException

    GetChannelMessageRequest.add_member(:channel_arn, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location: "uri", location_name: "channelArn"))
    GetChannelMessageRequest.add_member(:message_id, Shapes::ShapeRef.new(shape: MessageId, required: true, location: "uri", location_name: "messageId"))
    GetChannelMessageRequest.add_member(:chime_bearer, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location: "header", location_name: "x-amz-chime-bearer"))
    GetChannelMessageRequest.struct_class = Types::GetChannelMessageRequest

    GetChannelMessageResponse.add_member(:channel_message, Shapes::ShapeRef.new(shape: ChannelMessage, location_name: "ChannelMessage"))
    GetChannelMessageResponse.struct_class = Types::GetChannelMessageResponse

    GetMessagingSessionEndpointRequest.struct_class = Types::GetMessagingSessionEndpointRequest

    GetMessagingSessionEndpointResponse.add_member(:endpoint, Shapes::ShapeRef.new(shape: MessagingSessionEndpoint, location_name: "Endpoint"))
    GetMessagingSessionEndpointResponse.struct_class = Types::GetMessagingSessionEndpointResponse

    Identity.add_member(:arn, Shapes::ShapeRef.new(shape: ChimeArn, location_name: "Arn"))
    Identity.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "Name"))
    Identity.struct_class = Types::Identity

    ListChannelBansRequest.add_member(:channel_arn, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location: "uri", location_name: "channelArn"))
    ListChannelBansRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "max-results"))
    ListChannelBansRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "next-token"))
    ListChannelBansRequest.add_member(:chime_bearer, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location: "header", location_name: "x-amz-chime-bearer"))
    ListChannelBansRequest.struct_class = Types::ListChannelBansRequest

    ListChannelBansResponse.add_member(:channel_arn, Shapes::ShapeRef.new(shape: ChimeArn, location_name: "ChannelArn"))
    ListChannelBansResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListChannelBansResponse.add_member(:channel_bans, Shapes::ShapeRef.new(shape: ChannelBanSummaryList, location_name: "ChannelBans"))
    ListChannelBansResponse.struct_class = Types::ListChannelBansResponse

    ListChannelMembershipsForAppInstanceUserRequest.add_member(:app_instance_user_arn, Shapes::ShapeRef.new(shape: ChimeArn, location: "querystring", location_name: "app-instance-user-arn"))
    ListChannelMembershipsForAppInstanceUserRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "max-results"))
    ListChannelMembershipsForAppInstanceUserRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "next-token"))
    ListChannelMembershipsForAppInstanceUserRequest.add_member(:chime_bearer, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location: "header", location_name: "x-amz-chime-bearer"))
    ListChannelMembershipsForAppInstanceUserRequest.struct_class = Types::ListChannelMembershipsForAppInstanceUserRequest

    ListChannelMembershipsForAppInstanceUserResponse.add_member(:channel_memberships, Shapes::ShapeRef.new(shape: ChannelMembershipForAppInstanceUserSummaryList, location_name: "ChannelMemberships"))
    ListChannelMembershipsForAppInstanceUserResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListChannelMembershipsForAppInstanceUserResponse.struct_class = Types::ListChannelMembershipsForAppInstanceUserResponse

    ListChannelMembershipsRequest.add_member(:channel_arn, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location: "uri", location_name: "channelArn"))
    ListChannelMembershipsRequest.add_member(:type, Shapes::ShapeRef.new(shape: ChannelMembershipType, location: "querystring", location_name: "type"))
    ListChannelMembershipsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "max-results"))
    ListChannelMembershipsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "next-token"))
    ListChannelMembershipsRequest.add_member(:chime_bearer, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location: "header", location_name: "x-amz-chime-bearer"))
    ListChannelMembershipsRequest.struct_class = Types::ListChannelMembershipsRequest

    ListChannelMembershipsResponse.add_member(:channel_arn, Shapes::ShapeRef.new(shape: ChimeArn, location_name: "ChannelArn"))
    ListChannelMembershipsResponse.add_member(:channel_memberships, Shapes::ShapeRef.new(shape: ChannelMembershipSummaryList, location_name: "ChannelMemberships"))
    ListChannelMembershipsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListChannelMembershipsResponse.struct_class = Types::ListChannelMembershipsResponse

    ListChannelMessagesRequest.add_member(:channel_arn, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location: "uri", location_name: "channelArn"))
    ListChannelMessagesRequest.add_member(:sort_order, Shapes::ShapeRef.new(shape: SortOrder, location: "querystring", location_name: "sort-order"))
    ListChannelMessagesRequest.add_member(:not_before, Shapes::ShapeRef.new(shape: Timestamp, location: "querystring", location_name: "not-before"))
    ListChannelMessagesRequest.add_member(:not_after, Shapes::ShapeRef.new(shape: Timestamp, location: "querystring", location_name: "not-after"))
    ListChannelMessagesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "max-results"))
    ListChannelMessagesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "next-token"))
    ListChannelMessagesRequest.add_member(:chime_bearer, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location: "header", location_name: "x-amz-chime-bearer"))
    ListChannelMessagesRequest.struct_class = Types::ListChannelMessagesRequest

    ListChannelMessagesResponse.add_member(:channel_arn, Shapes::ShapeRef.new(shape: ChimeArn, location_name: "ChannelArn"))
    ListChannelMessagesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListChannelMessagesResponse.add_member(:channel_messages, Shapes::ShapeRef.new(shape: ChannelMessageSummaryList, location_name: "ChannelMessages"))
    ListChannelMessagesResponse.struct_class = Types::ListChannelMessagesResponse

    ListChannelModeratorsRequest.add_member(:channel_arn, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location: "uri", location_name: "channelArn"))
    ListChannelModeratorsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "max-results"))
    ListChannelModeratorsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "next-token"))
    ListChannelModeratorsRequest.add_member(:chime_bearer, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location: "header", location_name: "x-amz-chime-bearer"))
    ListChannelModeratorsRequest.struct_class = Types::ListChannelModeratorsRequest

    ListChannelModeratorsResponse.add_member(:channel_arn, Shapes::ShapeRef.new(shape: ChimeArn, location_name: "ChannelArn"))
    ListChannelModeratorsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListChannelModeratorsResponse.add_member(:channel_moderators, Shapes::ShapeRef.new(shape: ChannelModeratorSummaryList, location_name: "ChannelModerators"))
    ListChannelModeratorsResponse.struct_class = Types::ListChannelModeratorsResponse

    ListChannelsModeratedByAppInstanceUserRequest.add_member(:app_instance_user_arn, Shapes::ShapeRef.new(shape: ChimeArn, location: "querystring", location_name: "app-instance-user-arn"))
    ListChannelsModeratedByAppInstanceUserRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "max-results"))
    ListChannelsModeratedByAppInstanceUserRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "next-token"))
    ListChannelsModeratedByAppInstanceUserRequest.add_member(:chime_bearer, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location: "header", location_name: "x-amz-chime-bearer"))
    ListChannelsModeratedByAppInstanceUserRequest.struct_class = Types::ListChannelsModeratedByAppInstanceUserRequest

    ListChannelsModeratedByAppInstanceUserResponse.add_member(:channels, Shapes::ShapeRef.new(shape: ChannelModeratedByAppInstanceUserSummaryList, location_name: "Channels"))
    ListChannelsModeratedByAppInstanceUserResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListChannelsModeratedByAppInstanceUserResponse.struct_class = Types::ListChannelsModeratedByAppInstanceUserResponse

    ListChannelsRequest.add_member(:app_instance_arn, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location: "querystring", location_name: "app-instance-arn"))
    ListChannelsRequest.add_member(:privacy, Shapes::ShapeRef.new(shape: ChannelPrivacy, location: "querystring", location_name: "privacy"))
    ListChannelsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "max-results"))
    ListChannelsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "next-token"))
    ListChannelsRequest.add_member(:chime_bearer, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location: "header", location_name: "x-amz-chime-bearer"))
    ListChannelsRequest.struct_class = Types::ListChannelsRequest

    ListChannelsResponse.add_member(:channels, Shapes::ShapeRef.new(shape: ChannelSummaryList, location_name: "Channels"))
    ListChannelsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListChannelsResponse.struct_class = Types::ListChannelsResponse

    MemberArns.member = Shapes::ShapeRef.new(shape: ChimeArn)

    Members.member = Shapes::ShapeRef.new(shape: Identity)

    MessagingSessionEndpoint.add_member(:url, Shapes::ShapeRef.new(shape: UrlType, location_name: "Url"))
    MessagingSessionEndpoint.struct_class = Types::MessagingSessionEndpoint

    NotFoundException.add_member(:code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "Code"))
    NotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    NotFoundException.struct_class = Types::NotFoundException

    RedactChannelMessageRequest.add_member(:channel_arn, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location: "uri", location_name: "channelArn"))
    RedactChannelMessageRequest.add_member(:message_id, Shapes::ShapeRef.new(shape: MessageId, required: true, location: "uri", location_name: "messageId"))
    RedactChannelMessageRequest.add_member(:chime_bearer, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location: "header", location_name: "x-amz-chime-bearer"))
    RedactChannelMessageRequest.struct_class = Types::RedactChannelMessageRequest

    RedactChannelMessageResponse.add_member(:channel_arn, Shapes::ShapeRef.new(shape: ChimeArn, location_name: "ChannelArn"))
    RedactChannelMessageResponse.add_member(:message_id, Shapes::ShapeRef.new(shape: MessageId, location_name: "MessageId"))
    RedactChannelMessageResponse.struct_class = Types::RedactChannelMessageResponse

    ResourceLimitExceededException.add_member(:code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "Code"))
    ResourceLimitExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ResourceLimitExceededException.struct_class = Types::ResourceLimitExceededException

    SendChannelMessageRequest.add_member(:channel_arn, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location: "uri", location_name: "channelArn"))
    SendChannelMessageRequest.add_member(:content, Shapes::ShapeRef.new(shape: NonEmptyContent, required: true, location_name: "Content"))
    SendChannelMessageRequest.add_member(:type, Shapes::ShapeRef.new(shape: ChannelMessageType, required: true, location_name: "Type"))
    SendChannelMessageRequest.add_member(:persistence, Shapes::ShapeRef.new(shape: ChannelMessagePersistenceType, required: true, location_name: "Persistence"))
    SendChannelMessageRequest.add_member(:metadata, Shapes::ShapeRef.new(shape: Metadata, location_name: "Metadata"))
    SendChannelMessageRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, required: true, location_name: "ClientRequestToken", metadata: {"idempotencyToken"=>true}))
    SendChannelMessageRequest.add_member(:chime_bearer, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location: "header", location_name: "x-amz-chime-bearer"))
    SendChannelMessageRequest.struct_class = Types::SendChannelMessageRequest

    SendChannelMessageResponse.add_member(:channel_arn, Shapes::ShapeRef.new(shape: ChimeArn, location_name: "ChannelArn"))
    SendChannelMessageResponse.add_member(:message_id, Shapes::ShapeRef.new(shape: MessageId, location_name: "MessageId"))
    SendChannelMessageResponse.struct_class = Types::SendChannelMessageResponse

    ServiceFailureException.add_member(:code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "Code"))
    ServiceFailureException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ServiceFailureException.struct_class = Types::ServiceFailureException

    ServiceUnavailableException.add_member(:code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "Code"))
    ServiceUnavailableException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ServiceUnavailableException.struct_class = Types::ServiceUnavailableException

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, required: true, location_name: "Key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: TagValue, required: true, location_name: "Value"))
    Tag.struct_class = Types::Tag

    TagList.member = Shapes::ShapeRef.new(shape: Tag)

    ThrottledClientException.add_member(:code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "Code"))
    ThrottledClientException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ThrottledClientException.struct_class = Types::ThrottledClientException

    UnauthorizedClientException.add_member(:code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "Code"))
    UnauthorizedClientException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    UnauthorizedClientException.struct_class = Types::UnauthorizedClientException

    UpdateChannelMessageRequest.add_member(:channel_arn, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location: "uri", location_name: "channelArn"))
    UpdateChannelMessageRequest.add_member(:message_id, Shapes::ShapeRef.new(shape: MessageId, required: true, location: "uri", location_name: "messageId"))
    UpdateChannelMessageRequest.add_member(:content, Shapes::ShapeRef.new(shape: Content, location_name: "Content"))
    UpdateChannelMessageRequest.add_member(:metadata, Shapes::ShapeRef.new(shape: Metadata, location_name: "Metadata"))
    UpdateChannelMessageRequest.add_member(:chime_bearer, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location: "header", location_name: "x-amz-chime-bearer"))
    UpdateChannelMessageRequest.struct_class = Types::UpdateChannelMessageRequest

    UpdateChannelMessageResponse.add_member(:channel_arn, Shapes::ShapeRef.new(shape: ChimeArn, location_name: "ChannelArn"))
    UpdateChannelMessageResponse.add_member(:message_id, Shapes::ShapeRef.new(shape: MessageId, location_name: "MessageId"))
    UpdateChannelMessageResponse.struct_class = Types::UpdateChannelMessageResponse

    UpdateChannelReadMarkerRequest.add_member(:channel_arn, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location: "uri", location_name: "channelArn"))
    UpdateChannelReadMarkerRequest.add_member(:chime_bearer, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location: "header", location_name: "x-amz-chime-bearer"))
    UpdateChannelReadMarkerRequest.struct_class = Types::UpdateChannelReadMarkerRequest

    UpdateChannelReadMarkerResponse.add_member(:channel_arn, Shapes::ShapeRef.new(shape: ChimeArn, location_name: "ChannelArn"))
    UpdateChannelReadMarkerResponse.struct_class = Types::UpdateChannelReadMarkerResponse

    UpdateChannelRequest.add_member(:channel_arn, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location: "uri", location_name: "channelArn"))
    UpdateChannelRequest.add_member(:name, Shapes::ShapeRef.new(shape: NonEmptyResourceName, required: true, location_name: "Name"))
    UpdateChannelRequest.add_member(:mode, Shapes::ShapeRef.new(shape: ChannelMode, required: true, location_name: "Mode"))
    UpdateChannelRequest.add_member(:metadata, Shapes::ShapeRef.new(shape: Metadata, location_name: "Metadata"))
    UpdateChannelRequest.add_member(:chime_bearer, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location: "header", location_name: "x-amz-chime-bearer"))
    UpdateChannelRequest.struct_class = Types::UpdateChannelRequest

    UpdateChannelResponse.add_member(:channel_arn, Shapes::ShapeRef.new(shape: ChimeArn, location_name: "ChannelArn"))
    UpdateChannelResponse.struct_class = Types::UpdateChannelResponse


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2021-05-15"

      api.metadata = {
        "apiVersion" => "2021-05-15",
        "endpointPrefix" => "messaging-chime",
        "protocol" => "rest-json",
        "serviceFullName" => "Amazon Chime SDK Messaging",
        "serviceId" => "Chime SDK Messaging",
        "signatureVersion" => "v4",
        "signingName" => "chime",
        "uid" => "chime-sdk-messaging-2021-05-15",
      }

      api.add_operation(:batch_create_channel_membership, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchCreateChannelMembership"
        o.http_method = "POST"
        o.http_request_uri = "/channels/{channelArn}/memberships?operation=batch-create"
        o.input = Shapes::ShapeRef.new(shape: BatchCreateChannelMembershipRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchCreateChannelMembershipResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
      end)

      api.add_operation(:create_channel, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateChannel"
        o.http_method = "POST"
        o.http_request_uri = "/channels"
        o.input = Shapes::ShapeRef.new(shape: CreateChannelRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateChannelResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:create_channel_ban, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateChannelBan"
        o.http_method = "POST"
        o.http_request_uri = "/channels/{channelArn}/bans"
        o.input = Shapes::ShapeRef.new(shape: CreateChannelBanRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateChannelBanResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:create_channel_membership, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateChannelMembership"
        o.http_method = "POST"
        o.http_request_uri = "/channels/{channelArn}/memberships"
        o.input = Shapes::ShapeRef.new(shape: CreateChannelMembershipRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateChannelMembershipResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:create_channel_moderator, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateChannelModerator"
        o.http_method = "POST"
        o.http_request_uri = "/channels/{channelArn}/moderators"
        o.input = Shapes::ShapeRef.new(shape: CreateChannelModeratorRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateChannelModeratorResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:delete_channel, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteChannel"
        o.http_method = "DELETE"
        o.http_request_uri = "/channels/{channelArn}"
        o.input = Shapes::ShapeRef.new(shape: DeleteChannelRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:delete_channel_ban, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteChannelBan"
        o.http_method = "DELETE"
        o.http_request_uri = "/channels/{channelArn}/bans/{memberArn}"
        o.input = Shapes::ShapeRef.new(shape: DeleteChannelBanRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:delete_channel_membership, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteChannelMembership"
        o.http_method = "DELETE"
        o.http_request_uri = "/channels/{channelArn}/memberships/{memberArn}"
        o.input = Shapes::ShapeRef.new(shape: DeleteChannelMembershipRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:delete_channel_message, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteChannelMessage"
        o.http_method = "DELETE"
        o.http_request_uri = "/channels/{channelArn}/messages/{messageId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteChannelMessageRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:delete_channel_moderator, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteChannelModerator"
        o.http_method = "DELETE"
        o.http_request_uri = "/channels/{channelArn}/moderators/{channelModeratorArn}"
        o.input = Shapes::ShapeRef.new(shape: DeleteChannelModeratorRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:describe_channel, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeChannel"
        o.http_method = "GET"
        o.http_request_uri = "/channels/{channelArn}"
        o.input = Shapes::ShapeRef.new(shape: DescribeChannelRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeChannelResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:describe_channel_ban, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeChannelBan"
        o.http_method = "GET"
        o.http_request_uri = "/channels/{channelArn}/bans/{memberArn}"
        o.input = Shapes::ShapeRef.new(shape: DescribeChannelBanRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeChannelBanResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:describe_channel_membership, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeChannelMembership"
        o.http_method = "GET"
        o.http_request_uri = "/channels/{channelArn}/memberships/{memberArn}"
        o.input = Shapes::ShapeRef.new(shape: DescribeChannelMembershipRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeChannelMembershipResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:describe_channel_membership_for_app_instance_user, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeChannelMembershipForAppInstanceUser"
        o.http_method = "GET"
        o.http_request_uri = "/channels/{channelArn}?scope=app-instance-user-membership"
        o.input = Shapes::ShapeRef.new(shape: DescribeChannelMembershipForAppInstanceUserRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeChannelMembershipForAppInstanceUserResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:describe_channel_moderated_by_app_instance_user, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeChannelModeratedByAppInstanceUser"
        o.http_method = "GET"
        o.http_request_uri = "/channels/{channelArn}?scope=app-instance-user-moderated-channel"
        o.input = Shapes::ShapeRef.new(shape: DescribeChannelModeratedByAppInstanceUserRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeChannelModeratedByAppInstanceUserResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:describe_channel_moderator, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeChannelModerator"
        o.http_method = "GET"
        o.http_request_uri = "/channels/{channelArn}/moderators/{channelModeratorArn}"
        o.input = Shapes::ShapeRef.new(shape: DescribeChannelModeratorRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeChannelModeratorResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:get_channel_message, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetChannelMessage"
        o.http_method = "GET"
        o.http_request_uri = "/channels/{channelArn}/messages/{messageId}"
        o.input = Shapes::ShapeRef.new(shape: GetChannelMessageRequest)
        o.output = Shapes::ShapeRef.new(shape: GetChannelMessageResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:get_messaging_session_endpoint, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetMessagingSessionEndpoint"
        o.http_method = "GET"
        o.http_request_uri = "/endpoints/messaging-session"
        o.input = Shapes::ShapeRef.new(shape: GetMessagingSessionEndpointRequest)
        o.output = Shapes::ShapeRef.new(shape: GetMessagingSessionEndpointResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:list_channel_bans, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListChannelBans"
        o.http_method = "GET"
        o.http_request_uri = "/channels/{channelArn}/bans"
        o.input = Shapes::ShapeRef.new(shape: ListChannelBansRequest)
        o.output = Shapes::ShapeRef.new(shape: ListChannelBansResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_channel_memberships, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListChannelMemberships"
        o.http_method = "GET"
        o.http_request_uri = "/channels/{channelArn}/memberships"
        o.input = Shapes::ShapeRef.new(shape: ListChannelMembershipsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListChannelMembershipsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_channel_memberships_for_app_instance_user, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListChannelMembershipsForAppInstanceUser"
        o.http_method = "GET"
        o.http_request_uri = "/channels?scope=app-instance-user-memberships"
        o.input = Shapes::ShapeRef.new(shape: ListChannelMembershipsForAppInstanceUserRequest)
        o.output = Shapes::ShapeRef.new(shape: ListChannelMembershipsForAppInstanceUserResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_channel_messages, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListChannelMessages"
        o.http_method = "GET"
        o.http_request_uri = "/channels/{channelArn}/messages"
        o.input = Shapes::ShapeRef.new(shape: ListChannelMessagesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListChannelMessagesResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_channel_moderators, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListChannelModerators"
        o.http_method = "GET"
        o.http_request_uri = "/channels/{channelArn}/moderators"
        o.input = Shapes::ShapeRef.new(shape: ListChannelModeratorsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListChannelModeratorsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_channels, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListChannels"
        o.http_method = "GET"
        o.http_request_uri = "/channels"
        o.input = Shapes::ShapeRef.new(shape: ListChannelsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListChannelsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_channels_moderated_by_app_instance_user, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListChannelsModeratedByAppInstanceUser"
        o.http_method = "GET"
        o.http_request_uri = "/channels?scope=app-instance-user-moderated-channels"
        o.input = Shapes::ShapeRef.new(shape: ListChannelsModeratedByAppInstanceUserRequest)
        o.output = Shapes::ShapeRef.new(shape: ListChannelsModeratedByAppInstanceUserResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:redact_channel_message, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RedactChannelMessage"
        o.http_method = "POST"
        o.http_request_uri = "/channels/{channelArn}/messages/{messageId}?operation=redact"
        o.input = Shapes::ShapeRef.new(shape: RedactChannelMessageRequest)
        o.output = Shapes::ShapeRef.new(shape: RedactChannelMessageResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:send_channel_message, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SendChannelMessage"
        o.http_method = "POST"
        o.http_request_uri = "/channels/{channelArn}/messages"
        o.input = Shapes::ShapeRef.new(shape: SendChannelMessageRequest)
        o.output = Shapes::ShapeRef.new(shape: SendChannelMessageResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:update_channel, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateChannel"
        o.http_method = "PUT"
        o.http_request_uri = "/channels/{channelArn}"
        o.input = Shapes::ShapeRef.new(shape: UpdateChannelRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateChannelResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:update_channel_message, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateChannelMessage"
        o.http_method = "PUT"
        o.http_request_uri = "/channels/{channelArn}/messages/{messageId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateChannelMessageRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateChannelMessageResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:update_channel_read_marker, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateChannelReadMarker"
        o.http_method = "PUT"
        o.http_request_uri = "/channels/{channelArn}/readMarker"
        o.input = Shapes::ShapeRef.new(shape: UpdateChannelReadMarkerRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateChannelReadMarkerResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)
    end

  end
end
