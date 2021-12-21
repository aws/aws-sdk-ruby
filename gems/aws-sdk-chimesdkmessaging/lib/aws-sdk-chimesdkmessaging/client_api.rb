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

    AllowNotifications = Shapes::StringShape.new(name: 'AllowNotifications')
    AppInstanceUserMembershipSummary = Shapes::StructureShape.new(name: 'AppInstanceUserMembershipSummary')
    AssociateChannelFlowRequest = Shapes::StructureShape.new(name: 'AssociateChannelFlowRequest')
    BadRequestException = Shapes::StructureShape.new(name: 'BadRequestException')
    BatchChannelMemberships = Shapes::StructureShape.new(name: 'BatchChannelMemberships')
    BatchCreateChannelMembershipError = Shapes::StructureShape.new(name: 'BatchCreateChannelMembershipError')
    BatchCreateChannelMembershipErrors = Shapes::ListShape.new(name: 'BatchCreateChannelMembershipErrors')
    BatchCreateChannelMembershipRequest = Shapes::StructureShape.new(name: 'BatchCreateChannelMembershipRequest')
    BatchCreateChannelMembershipResponse = Shapes::StructureShape.new(name: 'BatchCreateChannelMembershipResponse')
    CallbackIdType = Shapes::StringShape.new(name: 'CallbackIdType')
    Channel = Shapes::StructureShape.new(name: 'Channel')
    ChannelAssociatedWithFlowSummary = Shapes::StructureShape.new(name: 'ChannelAssociatedWithFlowSummary')
    ChannelAssociatedWithFlowSummaryList = Shapes::ListShape.new(name: 'ChannelAssociatedWithFlowSummaryList')
    ChannelBan = Shapes::StructureShape.new(name: 'ChannelBan')
    ChannelBanSummary = Shapes::StructureShape.new(name: 'ChannelBanSummary')
    ChannelBanSummaryList = Shapes::ListShape.new(name: 'ChannelBanSummaryList')
    ChannelFlow = Shapes::StructureShape.new(name: 'ChannelFlow')
    ChannelFlowCallbackRequest = Shapes::StructureShape.new(name: 'ChannelFlowCallbackRequest')
    ChannelFlowCallbackResponse = Shapes::StructureShape.new(name: 'ChannelFlowCallbackResponse')
    ChannelFlowExecutionOrder = Shapes::IntegerShape.new(name: 'ChannelFlowExecutionOrder')
    ChannelFlowSummary = Shapes::StructureShape.new(name: 'ChannelFlowSummary')
    ChannelFlowSummaryList = Shapes::ListShape.new(name: 'ChannelFlowSummaryList')
    ChannelMembership = Shapes::StructureShape.new(name: 'ChannelMembership')
    ChannelMembershipForAppInstanceUserSummary = Shapes::StructureShape.new(name: 'ChannelMembershipForAppInstanceUserSummary')
    ChannelMembershipForAppInstanceUserSummaryList = Shapes::ListShape.new(name: 'ChannelMembershipForAppInstanceUserSummaryList')
    ChannelMembershipPreferences = Shapes::StructureShape.new(name: 'ChannelMembershipPreferences')
    ChannelMembershipSummary = Shapes::StructureShape.new(name: 'ChannelMembershipSummary')
    ChannelMembershipSummaryList = Shapes::ListShape.new(name: 'ChannelMembershipSummaryList')
    ChannelMembershipType = Shapes::StringShape.new(name: 'ChannelMembershipType')
    ChannelMessage = Shapes::StructureShape.new(name: 'ChannelMessage')
    ChannelMessageCallback = Shapes::StructureShape.new(name: 'ChannelMessageCallback')
    ChannelMessagePersistenceType = Shapes::StringShape.new(name: 'ChannelMessagePersistenceType')
    ChannelMessageStatus = Shapes::StringShape.new(name: 'ChannelMessageStatus')
    ChannelMessageStatusStructure = Shapes::StructureShape.new(name: 'ChannelMessageStatusStructure')
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
    CreateChannelFlowRequest = Shapes::StructureShape.new(name: 'CreateChannelFlowRequest')
    CreateChannelFlowResponse = Shapes::StructureShape.new(name: 'CreateChannelFlowResponse')
    CreateChannelMembershipRequest = Shapes::StructureShape.new(name: 'CreateChannelMembershipRequest')
    CreateChannelMembershipResponse = Shapes::StructureShape.new(name: 'CreateChannelMembershipResponse')
    CreateChannelModeratorRequest = Shapes::StructureShape.new(name: 'CreateChannelModeratorRequest')
    CreateChannelModeratorResponse = Shapes::StructureShape.new(name: 'CreateChannelModeratorResponse')
    CreateChannelRequest = Shapes::StructureShape.new(name: 'CreateChannelRequest')
    CreateChannelResponse = Shapes::StructureShape.new(name: 'CreateChannelResponse')
    DeleteChannelBanRequest = Shapes::StructureShape.new(name: 'DeleteChannelBanRequest')
    DeleteChannelFlowRequest = Shapes::StructureShape.new(name: 'DeleteChannelFlowRequest')
    DeleteChannelMembershipRequest = Shapes::StructureShape.new(name: 'DeleteChannelMembershipRequest')
    DeleteChannelMessageRequest = Shapes::StructureShape.new(name: 'DeleteChannelMessageRequest')
    DeleteChannelModeratorRequest = Shapes::StructureShape.new(name: 'DeleteChannelModeratorRequest')
    DeleteChannelRequest = Shapes::StructureShape.new(name: 'DeleteChannelRequest')
    DescribeChannelBanRequest = Shapes::StructureShape.new(name: 'DescribeChannelBanRequest')
    DescribeChannelBanResponse = Shapes::StructureShape.new(name: 'DescribeChannelBanResponse')
    DescribeChannelFlowRequest = Shapes::StructureShape.new(name: 'DescribeChannelFlowRequest')
    DescribeChannelFlowResponse = Shapes::StructureShape.new(name: 'DescribeChannelFlowResponse')
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
    DisassociateChannelFlowRequest = Shapes::StructureShape.new(name: 'DisassociateChannelFlowRequest')
    ErrorCode = Shapes::StringShape.new(name: 'ErrorCode')
    FallbackAction = Shapes::StringShape.new(name: 'FallbackAction')
    FilterRule = Shapes::StringShape.new(name: 'FilterRule')
    ForbiddenException = Shapes::StructureShape.new(name: 'ForbiddenException')
    GetChannelMembershipPreferencesRequest = Shapes::StructureShape.new(name: 'GetChannelMembershipPreferencesRequest')
    GetChannelMembershipPreferencesResponse = Shapes::StructureShape.new(name: 'GetChannelMembershipPreferencesResponse')
    GetChannelMessageRequest = Shapes::StructureShape.new(name: 'GetChannelMessageRequest')
    GetChannelMessageResponse = Shapes::StructureShape.new(name: 'GetChannelMessageResponse')
    GetChannelMessageStatusRequest = Shapes::StructureShape.new(name: 'GetChannelMessageStatusRequest')
    GetChannelMessageStatusResponse = Shapes::StructureShape.new(name: 'GetChannelMessageStatusResponse')
    GetMessagingSessionEndpointRequest = Shapes::StructureShape.new(name: 'GetMessagingSessionEndpointRequest')
    GetMessagingSessionEndpointResponse = Shapes::StructureShape.new(name: 'GetMessagingSessionEndpointResponse')
    Identity = Shapes::StructureShape.new(name: 'Identity')
    InvocationType = Shapes::StringShape.new(name: 'InvocationType')
    LambdaConfiguration = Shapes::StructureShape.new(name: 'LambdaConfiguration')
    LambdaFunctionArn = Shapes::StringShape.new(name: 'LambdaFunctionArn')
    ListChannelBansRequest = Shapes::StructureShape.new(name: 'ListChannelBansRequest')
    ListChannelBansResponse = Shapes::StructureShape.new(name: 'ListChannelBansResponse')
    ListChannelFlowsRequest = Shapes::StructureShape.new(name: 'ListChannelFlowsRequest')
    ListChannelFlowsResponse = Shapes::StructureShape.new(name: 'ListChannelFlowsResponse')
    ListChannelMembershipsForAppInstanceUserRequest = Shapes::StructureShape.new(name: 'ListChannelMembershipsForAppInstanceUserRequest')
    ListChannelMembershipsForAppInstanceUserResponse = Shapes::StructureShape.new(name: 'ListChannelMembershipsForAppInstanceUserResponse')
    ListChannelMembershipsRequest = Shapes::StructureShape.new(name: 'ListChannelMembershipsRequest')
    ListChannelMembershipsResponse = Shapes::StructureShape.new(name: 'ListChannelMembershipsResponse')
    ListChannelMessagesRequest = Shapes::StructureShape.new(name: 'ListChannelMessagesRequest')
    ListChannelMessagesResponse = Shapes::StructureShape.new(name: 'ListChannelMessagesResponse')
    ListChannelModeratorsRequest = Shapes::StructureShape.new(name: 'ListChannelModeratorsRequest')
    ListChannelModeratorsResponse = Shapes::StructureShape.new(name: 'ListChannelModeratorsResponse')
    ListChannelsAssociatedWithChannelFlowRequest = Shapes::StructureShape.new(name: 'ListChannelsAssociatedWithChannelFlowRequest')
    ListChannelsAssociatedWithChannelFlowResponse = Shapes::StructureShape.new(name: 'ListChannelsAssociatedWithChannelFlowResponse')
    ListChannelsModeratedByAppInstanceUserRequest = Shapes::StructureShape.new(name: 'ListChannelsModeratedByAppInstanceUserRequest')
    ListChannelsModeratedByAppInstanceUserResponse = Shapes::StructureShape.new(name: 'ListChannelsModeratedByAppInstanceUserResponse')
    ListChannelsRequest = Shapes::StructureShape.new(name: 'ListChannelsRequest')
    ListChannelsResponse = Shapes::StructureShape.new(name: 'ListChannelsResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    MemberArns = Shapes::ListShape.new(name: 'MemberArns')
    Members = Shapes::ListShape.new(name: 'Members')
    MessageAttributeMap = Shapes::MapShape.new(name: 'MessageAttributeMap')
    MessageAttributeName = Shapes::StringShape.new(name: 'MessageAttributeName')
    MessageAttributeStringValue = Shapes::StringShape.new(name: 'MessageAttributeStringValue')
    MessageAttributeStringValues = Shapes::ListShape.new(name: 'MessageAttributeStringValues')
    MessageAttributeValue = Shapes::StructureShape.new(name: 'MessageAttributeValue')
    MessageId = Shapes::StringShape.new(name: 'MessageId')
    MessagingSessionEndpoint = Shapes::StructureShape.new(name: 'MessagingSessionEndpoint')
    Metadata = Shapes::StringShape.new(name: 'Metadata')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    NonEmptyContent = Shapes::StringShape.new(name: 'NonEmptyContent')
    NonEmptyResourceName = Shapes::StringShape.new(name: 'NonEmptyResourceName')
    NonNullableBoolean = Shapes::BooleanShape.new(name: 'NonNullableBoolean')
    NotFoundException = Shapes::StructureShape.new(name: 'NotFoundException')
    Processor = Shapes::StructureShape.new(name: 'Processor')
    ProcessorConfiguration = Shapes::StructureShape.new(name: 'ProcessorConfiguration')
    ProcessorList = Shapes::ListShape.new(name: 'ProcessorList')
    PushNotificationBody = Shapes::StringShape.new(name: 'PushNotificationBody')
    PushNotificationConfiguration = Shapes::StructureShape.new(name: 'PushNotificationConfiguration')
    PushNotificationPreferences = Shapes::StructureShape.new(name: 'PushNotificationPreferences')
    PushNotificationTitle = Shapes::StringShape.new(name: 'PushNotificationTitle')
    PushNotificationType = Shapes::StringShape.new(name: 'PushNotificationType')
    PutChannelMembershipPreferencesRequest = Shapes::StructureShape.new(name: 'PutChannelMembershipPreferencesRequest')
    PutChannelMembershipPreferencesResponse = Shapes::StructureShape.new(name: 'PutChannelMembershipPreferencesResponse')
    RedactChannelMessageRequest = Shapes::StructureShape.new(name: 'RedactChannelMessageRequest')
    RedactChannelMessageResponse = Shapes::StructureShape.new(name: 'RedactChannelMessageResponse')
    ResourceLimitExceededException = Shapes::StructureShape.new(name: 'ResourceLimitExceededException')
    ResourceName = Shapes::StringShape.new(name: 'ResourceName')
    SendChannelMessageRequest = Shapes::StructureShape.new(name: 'SendChannelMessageRequest')
    SendChannelMessageResponse = Shapes::StructureShape.new(name: 'SendChannelMessageResponse')
    ServiceFailureException = Shapes::StructureShape.new(name: 'ServiceFailureException')
    ServiceUnavailableException = Shapes::StructureShape.new(name: 'ServiceUnavailableException')
    SortOrder = Shapes::StringShape.new(name: 'SortOrder')
    StatusDetail = Shapes::StringShape.new(name: 'StatusDetail')
    String = Shapes::StringShape.new(name: 'String')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagList = Shapes::ListShape.new(name: 'TagList')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    ThrottledClientException = Shapes::StructureShape.new(name: 'ThrottledClientException')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    UnauthorizedClientException = Shapes::StructureShape.new(name: 'UnauthorizedClientException')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UpdateChannelFlowRequest = Shapes::StructureShape.new(name: 'UpdateChannelFlowRequest')
    UpdateChannelFlowResponse = Shapes::StructureShape.new(name: 'UpdateChannelFlowResponse')
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

    AssociateChannelFlowRequest.add_member(:channel_arn, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location: "uri", location_name: "channelArn"))
    AssociateChannelFlowRequest.add_member(:channel_flow_arn, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location_name: "ChannelFlowArn"))
    AssociateChannelFlowRequest.add_member(:chime_bearer, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location: "header", location_name: "x-amz-chime-bearer"))
    AssociateChannelFlowRequest.struct_class = Types::AssociateChannelFlowRequest

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
    Channel.add_member(:channel_flow_arn, Shapes::ShapeRef.new(shape: ChimeArn, location_name: "ChannelFlowArn"))
    Channel.struct_class = Types::Channel

    ChannelAssociatedWithFlowSummary.add_member(:name, Shapes::ShapeRef.new(shape: NonEmptyResourceName, location_name: "Name"))
    ChannelAssociatedWithFlowSummary.add_member(:channel_arn, Shapes::ShapeRef.new(shape: ChimeArn, location_name: "ChannelArn"))
    ChannelAssociatedWithFlowSummary.add_member(:mode, Shapes::ShapeRef.new(shape: ChannelMode, location_name: "Mode"))
    ChannelAssociatedWithFlowSummary.add_member(:privacy, Shapes::ShapeRef.new(shape: ChannelPrivacy, location_name: "Privacy"))
    ChannelAssociatedWithFlowSummary.add_member(:metadata, Shapes::ShapeRef.new(shape: Metadata, location_name: "Metadata"))
    ChannelAssociatedWithFlowSummary.struct_class = Types::ChannelAssociatedWithFlowSummary

    ChannelAssociatedWithFlowSummaryList.member = Shapes::ShapeRef.new(shape: ChannelAssociatedWithFlowSummary)

    ChannelBan.add_member(:member, Shapes::ShapeRef.new(shape: Identity, location_name: "Member"))
    ChannelBan.add_member(:channel_arn, Shapes::ShapeRef.new(shape: ChimeArn, location_name: "ChannelArn"))
    ChannelBan.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedTimestamp"))
    ChannelBan.add_member(:created_by, Shapes::ShapeRef.new(shape: Identity, location_name: "CreatedBy"))
    ChannelBan.struct_class = Types::ChannelBan

    ChannelBanSummary.add_member(:member, Shapes::ShapeRef.new(shape: Identity, location_name: "Member"))
    ChannelBanSummary.struct_class = Types::ChannelBanSummary

    ChannelBanSummaryList.member = Shapes::ShapeRef.new(shape: ChannelBanSummary)

    ChannelFlow.add_member(:channel_flow_arn, Shapes::ShapeRef.new(shape: ChimeArn, location_name: "ChannelFlowArn"))
    ChannelFlow.add_member(:processors, Shapes::ShapeRef.new(shape: ProcessorList, location_name: "Processors"))
    ChannelFlow.add_member(:name, Shapes::ShapeRef.new(shape: NonEmptyResourceName, location_name: "Name"))
    ChannelFlow.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedTimestamp"))
    ChannelFlow.add_member(:last_updated_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastUpdatedTimestamp"))
    ChannelFlow.struct_class = Types::ChannelFlow

    ChannelFlowCallbackRequest.add_member(:callback_id, Shapes::ShapeRef.new(shape: CallbackIdType, required: true, location_name: "CallbackId", metadata: {"idempotencyToken"=>true}))
    ChannelFlowCallbackRequest.add_member(:channel_arn, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location: "uri", location_name: "channelArn"))
    ChannelFlowCallbackRequest.add_member(:delete_resource, Shapes::ShapeRef.new(shape: NonNullableBoolean, location_name: "DeleteResource"))
    ChannelFlowCallbackRequest.add_member(:channel_message, Shapes::ShapeRef.new(shape: ChannelMessageCallback, required: true, location_name: "ChannelMessage"))
    ChannelFlowCallbackRequest.struct_class = Types::ChannelFlowCallbackRequest

    ChannelFlowCallbackResponse.add_member(:channel_arn, Shapes::ShapeRef.new(shape: ChimeArn, location_name: "ChannelArn"))
    ChannelFlowCallbackResponse.add_member(:callback_id, Shapes::ShapeRef.new(shape: CallbackIdType, location_name: "CallbackId"))
    ChannelFlowCallbackResponse.struct_class = Types::ChannelFlowCallbackResponse

    ChannelFlowSummary.add_member(:channel_flow_arn, Shapes::ShapeRef.new(shape: ChimeArn, location_name: "ChannelFlowArn"))
    ChannelFlowSummary.add_member(:name, Shapes::ShapeRef.new(shape: NonEmptyResourceName, location_name: "Name"))
    ChannelFlowSummary.add_member(:processors, Shapes::ShapeRef.new(shape: ProcessorList, location_name: "Processors"))
    ChannelFlowSummary.struct_class = Types::ChannelFlowSummary

    ChannelFlowSummaryList.member = Shapes::ShapeRef.new(shape: ChannelFlowSummary)

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

    ChannelMembershipPreferences.add_member(:push_notifications, Shapes::ShapeRef.new(shape: PushNotificationPreferences, location_name: "PushNotifications"))
    ChannelMembershipPreferences.struct_class = Types::ChannelMembershipPreferences

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
    ChannelMessage.add_member(:status, Shapes::ShapeRef.new(shape: ChannelMessageStatusStructure, location_name: "Status"))
    ChannelMessage.add_member(:message_attributes, Shapes::ShapeRef.new(shape: MessageAttributeMap, location_name: "MessageAttributes"))
    ChannelMessage.struct_class = Types::ChannelMessage

    ChannelMessageCallback.add_member(:message_id, Shapes::ShapeRef.new(shape: MessageId, required: true, location_name: "MessageId"))
    ChannelMessageCallback.add_member(:content, Shapes::ShapeRef.new(shape: NonEmptyContent, location_name: "Content"))
    ChannelMessageCallback.add_member(:metadata, Shapes::ShapeRef.new(shape: Metadata, location_name: "Metadata"))
    ChannelMessageCallback.add_member(:push_notification, Shapes::ShapeRef.new(shape: PushNotificationConfiguration, location_name: "PushNotification"))
    ChannelMessageCallback.add_member(:message_attributes, Shapes::ShapeRef.new(shape: MessageAttributeMap, location_name: "MessageAttributes"))
    ChannelMessageCallback.struct_class = Types::ChannelMessageCallback

    ChannelMessageStatusStructure.add_member(:value, Shapes::ShapeRef.new(shape: ChannelMessageStatus, location_name: "Value"))
    ChannelMessageStatusStructure.add_member(:detail, Shapes::ShapeRef.new(shape: StatusDetail, location_name: "Detail"))
    ChannelMessageStatusStructure.struct_class = Types::ChannelMessageStatusStructure

    ChannelMessageSummary.add_member(:message_id, Shapes::ShapeRef.new(shape: MessageId, location_name: "MessageId"))
    ChannelMessageSummary.add_member(:content, Shapes::ShapeRef.new(shape: Content, location_name: "Content"))
    ChannelMessageSummary.add_member(:metadata, Shapes::ShapeRef.new(shape: Metadata, location_name: "Metadata"))
    ChannelMessageSummary.add_member(:type, Shapes::ShapeRef.new(shape: ChannelMessageType, location_name: "Type"))
    ChannelMessageSummary.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedTimestamp"))
    ChannelMessageSummary.add_member(:last_updated_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastUpdatedTimestamp"))
    ChannelMessageSummary.add_member(:last_edited_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastEditedTimestamp"))
    ChannelMessageSummary.add_member(:sender, Shapes::ShapeRef.new(shape: Identity, location_name: "Sender"))
    ChannelMessageSummary.add_member(:redacted, Shapes::ShapeRef.new(shape: NonNullableBoolean, location_name: "Redacted"))
    ChannelMessageSummary.add_member(:status, Shapes::ShapeRef.new(shape: ChannelMessageStatusStructure, location_name: "Status"))
    ChannelMessageSummary.add_member(:message_attributes, Shapes::ShapeRef.new(shape: MessageAttributeMap, location_name: "MessageAttributes"))
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

    CreateChannelFlowRequest.add_member(:app_instance_arn, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location_name: "AppInstanceArn"))
    CreateChannelFlowRequest.add_member(:processors, Shapes::ShapeRef.new(shape: ProcessorList, required: true, location_name: "Processors"))
    CreateChannelFlowRequest.add_member(:name, Shapes::ShapeRef.new(shape: NonEmptyResourceName, required: true, location_name: "Name"))
    CreateChannelFlowRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateChannelFlowRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, required: true, location_name: "ClientRequestToken"))
    CreateChannelFlowRequest.struct_class = Types::CreateChannelFlowRequest

    CreateChannelFlowResponse.add_member(:channel_flow_arn, Shapes::ShapeRef.new(shape: ChimeArn, location_name: "ChannelFlowArn"))
    CreateChannelFlowResponse.struct_class = Types::CreateChannelFlowResponse

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

    DeleteChannelFlowRequest.add_member(:channel_flow_arn, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location: "uri", location_name: "channelFlowArn"))
    DeleteChannelFlowRequest.struct_class = Types::DeleteChannelFlowRequest

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

    DescribeChannelFlowRequest.add_member(:channel_flow_arn, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location: "uri", location_name: "channelFlowArn"))
    DescribeChannelFlowRequest.struct_class = Types::DescribeChannelFlowRequest

    DescribeChannelFlowResponse.add_member(:channel_flow, Shapes::ShapeRef.new(shape: ChannelFlow, location_name: "ChannelFlow"))
    DescribeChannelFlowResponse.struct_class = Types::DescribeChannelFlowResponse

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

    DisassociateChannelFlowRequest.add_member(:channel_arn, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location: "uri", location_name: "channelArn"))
    DisassociateChannelFlowRequest.add_member(:channel_flow_arn, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location: "uri", location_name: "channelFlowArn"))
    DisassociateChannelFlowRequest.add_member(:chime_bearer, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location: "header", location_name: "x-amz-chime-bearer"))
    DisassociateChannelFlowRequest.struct_class = Types::DisassociateChannelFlowRequest

    ForbiddenException.add_member(:code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "Code"))
    ForbiddenException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ForbiddenException.struct_class = Types::ForbiddenException

    GetChannelMembershipPreferencesRequest.add_member(:channel_arn, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location: "uri", location_name: "channelArn"))
    GetChannelMembershipPreferencesRequest.add_member(:member_arn, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location: "uri", location_name: "memberArn"))
    GetChannelMembershipPreferencesRequest.add_member(:chime_bearer, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location: "header", location_name: "x-amz-chime-bearer"))
    GetChannelMembershipPreferencesRequest.struct_class = Types::GetChannelMembershipPreferencesRequest

    GetChannelMembershipPreferencesResponse.add_member(:channel_arn, Shapes::ShapeRef.new(shape: ChimeArn, location_name: "ChannelArn"))
    GetChannelMembershipPreferencesResponse.add_member(:member, Shapes::ShapeRef.new(shape: Identity, location_name: "Member"))
    GetChannelMembershipPreferencesResponse.add_member(:preferences, Shapes::ShapeRef.new(shape: ChannelMembershipPreferences, location_name: "Preferences"))
    GetChannelMembershipPreferencesResponse.struct_class = Types::GetChannelMembershipPreferencesResponse

    GetChannelMessageRequest.add_member(:channel_arn, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location: "uri", location_name: "channelArn"))
    GetChannelMessageRequest.add_member(:message_id, Shapes::ShapeRef.new(shape: MessageId, required: true, location: "uri", location_name: "messageId"))
    GetChannelMessageRequest.add_member(:chime_bearer, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location: "header", location_name: "x-amz-chime-bearer"))
    GetChannelMessageRequest.struct_class = Types::GetChannelMessageRequest

    GetChannelMessageResponse.add_member(:channel_message, Shapes::ShapeRef.new(shape: ChannelMessage, location_name: "ChannelMessage"))
    GetChannelMessageResponse.struct_class = Types::GetChannelMessageResponse

    GetChannelMessageStatusRequest.add_member(:channel_arn, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location: "uri", location_name: "channelArn"))
    GetChannelMessageStatusRequest.add_member(:message_id, Shapes::ShapeRef.new(shape: MessageId, required: true, location: "uri", location_name: "messageId"))
    GetChannelMessageStatusRequest.add_member(:chime_bearer, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location: "header", location_name: "x-amz-chime-bearer"))
    GetChannelMessageStatusRequest.struct_class = Types::GetChannelMessageStatusRequest

    GetChannelMessageStatusResponse.add_member(:status, Shapes::ShapeRef.new(shape: ChannelMessageStatusStructure, location_name: "Status"))
    GetChannelMessageStatusResponse.struct_class = Types::GetChannelMessageStatusResponse

    GetMessagingSessionEndpointRequest.struct_class = Types::GetMessagingSessionEndpointRequest

    GetMessagingSessionEndpointResponse.add_member(:endpoint, Shapes::ShapeRef.new(shape: MessagingSessionEndpoint, location_name: "Endpoint"))
    GetMessagingSessionEndpointResponse.struct_class = Types::GetMessagingSessionEndpointResponse

    Identity.add_member(:arn, Shapes::ShapeRef.new(shape: ChimeArn, location_name: "Arn"))
    Identity.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "Name"))
    Identity.struct_class = Types::Identity

    LambdaConfiguration.add_member(:resource_arn, Shapes::ShapeRef.new(shape: LambdaFunctionArn, required: true, location_name: "ResourceArn"))
    LambdaConfiguration.add_member(:invocation_type, Shapes::ShapeRef.new(shape: InvocationType, required: true, location_name: "InvocationType"))
    LambdaConfiguration.struct_class = Types::LambdaConfiguration

    ListChannelBansRequest.add_member(:channel_arn, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location: "uri", location_name: "channelArn"))
    ListChannelBansRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "max-results"))
    ListChannelBansRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "next-token"))
    ListChannelBansRequest.add_member(:chime_bearer, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location: "header", location_name: "x-amz-chime-bearer"))
    ListChannelBansRequest.struct_class = Types::ListChannelBansRequest

    ListChannelBansResponse.add_member(:channel_arn, Shapes::ShapeRef.new(shape: ChimeArn, location_name: "ChannelArn"))
    ListChannelBansResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListChannelBansResponse.add_member(:channel_bans, Shapes::ShapeRef.new(shape: ChannelBanSummaryList, location_name: "ChannelBans"))
    ListChannelBansResponse.struct_class = Types::ListChannelBansResponse

    ListChannelFlowsRequest.add_member(:app_instance_arn, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location: "querystring", location_name: "app-instance-arn"))
    ListChannelFlowsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "max-results"))
    ListChannelFlowsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "next-token"))
    ListChannelFlowsRequest.struct_class = Types::ListChannelFlowsRequest

    ListChannelFlowsResponse.add_member(:channel_flows, Shapes::ShapeRef.new(shape: ChannelFlowSummaryList, location_name: "ChannelFlows"))
    ListChannelFlowsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListChannelFlowsResponse.struct_class = Types::ListChannelFlowsResponse

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

    ListChannelsAssociatedWithChannelFlowRequest.add_member(:channel_flow_arn, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location: "querystring", location_name: "channel-flow-arn"))
    ListChannelsAssociatedWithChannelFlowRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "max-results"))
    ListChannelsAssociatedWithChannelFlowRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "next-token"))
    ListChannelsAssociatedWithChannelFlowRequest.struct_class = Types::ListChannelsAssociatedWithChannelFlowRequest

    ListChannelsAssociatedWithChannelFlowResponse.add_member(:channels, Shapes::ShapeRef.new(shape: ChannelAssociatedWithFlowSummaryList, location_name: "Channels"))
    ListChannelsAssociatedWithChannelFlowResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListChannelsAssociatedWithChannelFlowResponse.struct_class = Types::ListChannelsAssociatedWithChannelFlowResponse

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

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location: "querystring", location_name: "arn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    MemberArns.member = Shapes::ShapeRef.new(shape: ChimeArn)

    Members.member = Shapes::ShapeRef.new(shape: Identity)

    MessageAttributeMap.key = Shapes::ShapeRef.new(shape: MessageAttributeName)
    MessageAttributeMap.value = Shapes::ShapeRef.new(shape: MessageAttributeValue)

    MessageAttributeStringValues.member = Shapes::ShapeRef.new(shape: MessageAttributeStringValue)

    MessageAttributeValue.add_member(:string_values, Shapes::ShapeRef.new(shape: MessageAttributeStringValues, location_name: "StringValues"))
    MessageAttributeValue.struct_class = Types::MessageAttributeValue

    MessagingSessionEndpoint.add_member(:url, Shapes::ShapeRef.new(shape: UrlType, location_name: "Url"))
    MessagingSessionEndpoint.struct_class = Types::MessagingSessionEndpoint

    NotFoundException.add_member(:code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "Code"))
    NotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    NotFoundException.struct_class = Types::NotFoundException

    Processor.add_member(:name, Shapes::ShapeRef.new(shape: NonEmptyResourceName, required: true, location_name: "Name"))
    Processor.add_member(:configuration, Shapes::ShapeRef.new(shape: ProcessorConfiguration, required: true, location_name: "Configuration"))
    Processor.add_member(:execution_order, Shapes::ShapeRef.new(shape: ChannelFlowExecutionOrder, required: true, location_name: "ExecutionOrder"))
    Processor.add_member(:fallback_action, Shapes::ShapeRef.new(shape: FallbackAction, required: true, location_name: "FallbackAction"))
    Processor.struct_class = Types::Processor

    ProcessorConfiguration.add_member(:lambda, Shapes::ShapeRef.new(shape: LambdaConfiguration, required: true, location_name: "Lambda"))
    ProcessorConfiguration.struct_class = Types::ProcessorConfiguration

    ProcessorList.member = Shapes::ShapeRef.new(shape: Processor)

    PushNotificationConfiguration.add_member(:title, Shapes::ShapeRef.new(shape: PushNotificationTitle, location_name: "Title"))
    PushNotificationConfiguration.add_member(:body, Shapes::ShapeRef.new(shape: PushNotificationBody, location_name: "Body"))
    PushNotificationConfiguration.add_member(:type, Shapes::ShapeRef.new(shape: PushNotificationType, location_name: "Type"))
    PushNotificationConfiguration.struct_class = Types::PushNotificationConfiguration

    PushNotificationPreferences.add_member(:allow_notifications, Shapes::ShapeRef.new(shape: AllowNotifications, required: true, location_name: "AllowNotifications"))
    PushNotificationPreferences.add_member(:filter_rule, Shapes::ShapeRef.new(shape: FilterRule, location_name: "FilterRule"))
    PushNotificationPreferences.struct_class = Types::PushNotificationPreferences

    PutChannelMembershipPreferencesRequest.add_member(:channel_arn, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location: "uri", location_name: "channelArn"))
    PutChannelMembershipPreferencesRequest.add_member(:member_arn, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location: "uri", location_name: "memberArn"))
    PutChannelMembershipPreferencesRequest.add_member(:chime_bearer, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location: "header", location_name: "x-amz-chime-bearer"))
    PutChannelMembershipPreferencesRequest.add_member(:preferences, Shapes::ShapeRef.new(shape: ChannelMembershipPreferences, required: true, location_name: "Preferences"))
    PutChannelMembershipPreferencesRequest.struct_class = Types::PutChannelMembershipPreferencesRequest

    PutChannelMembershipPreferencesResponse.add_member(:channel_arn, Shapes::ShapeRef.new(shape: ChimeArn, location_name: "ChannelArn"))
    PutChannelMembershipPreferencesResponse.add_member(:member, Shapes::ShapeRef.new(shape: Identity, location_name: "Member"))
    PutChannelMembershipPreferencesResponse.add_member(:preferences, Shapes::ShapeRef.new(shape: ChannelMembershipPreferences, location_name: "Preferences"))
    PutChannelMembershipPreferencesResponse.struct_class = Types::PutChannelMembershipPreferencesResponse

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
    SendChannelMessageRequest.add_member(:push_notification, Shapes::ShapeRef.new(shape: PushNotificationConfiguration, location_name: "PushNotification"))
    SendChannelMessageRequest.add_member(:message_attributes, Shapes::ShapeRef.new(shape: MessageAttributeMap, location_name: "MessageAttributes"))
    SendChannelMessageRequest.struct_class = Types::SendChannelMessageRequest

    SendChannelMessageResponse.add_member(:channel_arn, Shapes::ShapeRef.new(shape: ChimeArn, location_name: "ChannelArn"))
    SendChannelMessageResponse.add_member(:message_id, Shapes::ShapeRef.new(shape: MessageId, location_name: "MessageId"))
    SendChannelMessageResponse.add_member(:status, Shapes::ShapeRef.new(shape: ChannelMessageStatusStructure, location_name: "Status"))
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

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagList.member = Shapes::ShapeRef.new(shape: Tag)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location_name: "ResourceARN"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, required: true, location_name: "Tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    ThrottledClientException.add_member(:code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "Code"))
    ThrottledClientException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ThrottledClientException.struct_class = Types::ThrottledClientException

    UnauthorizedClientException.add_member(:code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "Code"))
    UnauthorizedClientException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    UnauthorizedClientException.struct_class = Types::UnauthorizedClientException

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location_name: "ResourceARN"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location_name: "TagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UpdateChannelFlowRequest.add_member(:channel_flow_arn, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location: "uri", location_name: "channelFlowArn"))
    UpdateChannelFlowRequest.add_member(:processors, Shapes::ShapeRef.new(shape: ProcessorList, required: true, location_name: "Processors"))
    UpdateChannelFlowRequest.add_member(:name, Shapes::ShapeRef.new(shape: NonEmptyResourceName, required: true, location_name: "Name"))
    UpdateChannelFlowRequest.struct_class = Types::UpdateChannelFlowRequest

    UpdateChannelFlowResponse.add_member(:channel_flow_arn, Shapes::ShapeRef.new(shape: ChimeArn, location_name: "ChannelFlowArn"))
    UpdateChannelFlowResponse.struct_class = Types::UpdateChannelFlowResponse

    UpdateChannelMessageRequest.add_member(:channel_arn, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location: "uri", location_name: "channelArn"))
    UpdateChannelMessageRequest.add_member(:message_id, Shapes::ShapeRef.new(shape: MessageId, required: true, location: "uri", location_name: "messageId"))
    UpdateChannelMessageRequest.add_member(:content, Shapes::ShapeRef.new(shape: Content, location_name: "Content"))
    UpdateChannelMessageRequest.add_member(:metadata, Shapes::ShapeRef.new(shape: Metadata, location_name: "Metadata"))
    UpdateChannelMessageRequest.add_member(:chime_bearer, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location: "header", location_name: "x-amz-chime-bearer"))
    UpdateChannelMessageRequest.struct_class = Types::UpdateChannelMessageRequest

    UpdateChannelMessageResponse.add_member(:channel_arn, Shapes::ShapeRef.new(shape: ChimeArn, location_name: "ChannelArn"))
    UpdateChannelMessageResponse.add_member(:message_id, Shapes::ShapeRef.new(shape: MessageId, location_name: "MessageId"))
    UpdateChannelMessageResponse.add_member(:status, Shapes::ShapeRef.new(shape: ChannelMessageStatusStructure, location_name: "Status"))
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

      api.add_operation(:associate_channel_flow, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateChannelFlow"
        o.http_method = "PUT"
        o.http_request_uri = "/channels/{channelArn}/channel-flow"
        o.input = Shapes::ShapeRef.new(shape: AssociateChannelFlowRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

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

      api.add_operation(:channel_flow_callback, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ChannelFlowCallback"
        o.http_method = "POST"
        o.http_request_uri = "/channels/{channelArn}?operation=channel-flow-callback"
        o.input = Shapes::ShapeRef.new(shape: ChannelFlowCallbackRequest)
        o.output = Shapes::ShapeRef.new(shape: ChannelFlowCallbackResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
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

      api.add_operation(:create_channel_flow, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateChannelFlow"
        o.http_method = "POST"
        o.http_request_uri = "/channel-flows"
        o.input = Shapes::ShapeRef.new(shape: CreateChannelFlowRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateChannelFlowResponse)
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

      api.add_operation(:delete_channel_flow, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteChannelFlow"
        o.http_method = "DELETE"
        o.http_request_uri = "/channel-flows/{channelFlowArn}"
        o.input = Shapes::ShapeRef.new(shape: DeleteChannelFlowRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
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

      api.add_operation(:describe_channel_flow, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeChannelFlow"
        o.http_method = "GET"
        o.http_request_uri = "/channel-flows/{channelFlowArn}"
        o.input = Shapes::ShapeRef.new(shape: DescribeChannelFlowRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeChannelFlowResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
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

      api.add_operation(:disassociate_channel_flow, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateChannelFlow"
        o.http_method = "DELETE"
        o.http_request_uri = "/channels/{channelArn}/channel-flow/{channelFlowArn}"
        o.input = Shapes::ShapeRef.new(shape: DisassociateChannelFlowRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:get_channel_membership_preferences, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetChannelMembershipPreferences"
        o.http_method = "GET"
        o.http_request_uri = "/channels/{channelArn}/memberships/{memberArn}/preferences"
        o.input = Shapes::ShapeRef.new(shape: GetChannelMembershipPreferencesRequest)
        o.output = Shapes::ShapeRef.new(shape: GetChannelMembershipPreferencesResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
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

      api.add_operation(:get_channel_message_status, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetChannelMessageStatus"
        o.http_method = "GET"
        o.http_request_uri = "/channels/{channelArn}/messages/{messageId}?scope=message-status"
        o.input = Shapes::ShapeRef.new(shape: GetChannelMessageStatusRequest)
        o.output = Shapes::ShapeRef.new(shape: GetChannelMessageStatusResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
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

      api.add_operation(:list_channel_flows, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListChannelFlows"
        o.http_method = "GET"
        o.http_request_uri = "/channel-flows"
        o.input = Shapes::ShapeRef.new(shape: ListChannelFlowsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListChannelFlowsResponse)
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

      api.add_operation(:list_channels_associated_with_channel_flow, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListChannelsAssociatedWithChannelFlow"
        o.http_method = "GET"
        o.http_request_uri = "/channels?scope=channel-flow-associations"
        o.input = Shapes::ShapeRef.new(shape: ListChannelsAssociatedWithChannelFlowRequest)
        o.output = Shapes::ShapeRef.new(shape: ListChannelsAssociatedWithChannelFlowResponse)
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

      api.add_operation(:list_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResource"
        o.http_method = "GET"
        o.http_request_uri = "/tags"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:put_channel_membership_preferences, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutChannelMembershipPreferences"
        o.http_method = "PUT"
        o.http_request_uri = "/channels/{channelArn}/memberships/{memberArn}/preferences"
        o.input = Shapes::ShapeRef.new(shape: PutChannelMembershipPreferencesRequest)
        o.output = Shapes::ShapeRef.new(shape: PutChannelMembershipPreferencesResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
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

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/tags?operation=tag-resource"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "POST"
        o.http_request_uri = "/tags?operation=untag-resource"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
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

      api.add_operation(:update_channel_flow, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateChannelFlow"
        o.http_method = "PUT"
        o.http_request_uri = "/channel-flows/{channelFlowArn}"
        o.input = Shapes::ShapeRef.new(shape: UpdateChannelFlowRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateChannelFlowResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
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
