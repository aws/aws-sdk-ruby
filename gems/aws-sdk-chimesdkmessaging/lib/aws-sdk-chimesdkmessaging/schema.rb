# frozen_string_literal: true

# This is generated code!

module Aws::ChimeSDKMessaging
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AllowNotifications = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.chimesdkmessaging#AllowNotifications", name: "AllowNotifications")
    AppInstanceUserMembershipSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmessaging#AppInstanceUserMembershipSummary", name: "AppInstanceUserMembershipSummary")
    AssociateChannelFlowRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmessaging#AssociateChannelFlowRequest", name: "AssociateChannelFlowRequest")
    BadRequestException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmessaging#BadRequestException", name: "BadRequestException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    BatchChannelMemberships = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmessaging#BatchChannelMemberships", name: "BatchChannelMemberships")
    BatchCreateChannelMembershipError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmessaging#BatchCreateChannelMembershipError", name: "BatchCreateChannelMembershipError")
    BatchCreateChannelMembershipErrors = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.chimesdkmessaging#BatchCreateChannelMembershipErrors", name: "BatchCreateChannelMembershipErrors")
    BatchCreateChannelMembershipRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmessaging#BatchCreateChannelMembershipRequest", name: "BatchCreateChannelMembershipRequest")
    BatchCreateChannelMembershipResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmessaging#BatchCreateChannelMembershipResponse", name: "BatchCreateChannelMembershipResponse")
    CallbackIdType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.chimesdkmessaging#CallbackIdType", name: "CallbackIdType", traits: {"smithy.api#length" => {"min" => 32, "max" => 64}})
    Channel = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmessaging#Channel", name: "Channel")
    ChannelAssociatedWithFlowSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmessaging#ChannelAssociatedWithFlowSummary", name: "ChannelAssociatedWithFlowSummary")
    ChannelAssociatedWithFlowSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.chimesdkmessaging#ChannelAssociatedWithFlowSummaryList", name: "ChannelAssociatedWithFlowSummaryList")
    ChannelBan = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmessaging#ChannelBan", name: "ChannelBan")
    ChannelBanSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmessaging#ChannelBanSummary", name: "ChannelBanSummary")
    ChannelBanSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.chimesdkmessaging#ChannelBanSummaryList", name: "ChannelBanSummaryList")
    ChannelFlow = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmessaging#ChannelFlow", name: "ChannelFlow")
    ChannelFlowCallbackRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmessaging#ChannelFlowCallbackRequest", name: "ChannelFlowCallbackRequest")
    ChannelFlowCallbackResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmessaging#ChannelFlowCallbackResponse", name: "ChannelFlowCallbackResponse")
    ChannelFlowExecutionOrder = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.chimesdkmessaging#ChannelFlowExecutionOrder", name: "ChannelFlowExecutionOrder", traits: {"smithy.api#range" => {"min" => 1, "max" => 3}})
    ChannelFlowSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmessaging#ChannelFlowSummary", name: "ChannelFlowSummary")
    ChannelFlowSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.chimesdkmessaging#ChannelFlowSummaryList", name: "ChannelFlowSummaryList")
    ChannelId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.chimesdkmessaging#ChannelId", name: "ChannelId", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[A-Za-z0-9]([A-Za-z0-9\\:\\-\\_\\.\\@]{0,62}[A-Za-z0-9])?$", "smithy.api#sensitive" => {}})
    ChannelMemberArns = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.chimesdkmessaging#ChannelMemberArns", name: "ChannelMemberArns", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    ChannelMembership = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmessaging#ChannelMembership", name: "ChannelMembership")
    ChannelMembershipForAppInstanceUserSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmessaging#ChannelMembershipForAppInstanceUserSummary", name: "ChannelMembershipForAppInstanceUserSummary")
    ChannelMembershipForAppInstanceUserSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.chimesdkmessaging#ChannelMembershipForAppInstanceUserSummaryList", name: "ChannelMembershipForAppInstanceUserSummaryList")
    ChannelMembershipPreferences = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmessaging#ChannelMembershipPreferences", name: "ChannelMembershipPreferences")
    ChannelMembershipSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmessaging#ChannelMembershipSummary", name: "ChannelMembershipSummary")
    ChannelMembershipSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.chimesdkmessaging#ChannelMembershipSummaryList", name: "ChannelMembershipSummaryList")
    ChannelMembershipType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.chimesdkmessaging#ChannelMembershipType", name: "ChannelMembershipType")
    ChannelMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmessaging#ChannelMessage", name: "ChannelMessage")
    ChannelMessageCallback = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmessaging#ChannelMessageCallback", name: "ChannelMessageCallback")
    ChannelMessagePersistenceType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.chimesdkmessaging#ChannelMessagePersistenceType", name: "ChannelMessagePersistenceType")
    ChannelMessageStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.chimesdkmessaging#ChannelMessageStatus", name: "ChannelMessageStatus")
    ChannelMessageStatusStructure = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmessaging#ChannelMessageStatusStructure", name: "ChannelMessageStatusStructure")
    ChannelMessageSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmessaging#ChannelMessageSummary", name: "ChannelMessageSummary")
    ChannelMessageSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.chimesdkmessaging#ChannelMessageSummaryList", name: "ChannelMessageSummaryList")
    ChannelMessageType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.chimesdkmessaging#ChannelMessageType", name: "ChannelMessageType")
    ChannelMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.chimesdkmessaging#ChannelMode", name: "ChannelMode")
    ChannelModeratedByAppInstanceUserSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmessaging#ChannelModeratedByAppInstanceUserSummary", name: "ChannelModeratedByAppInstanceUserSummary")
    ChannelModeratedByAppInstanceUserSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.chimesdkmessaging#ChannelModeratedByAppInstanceUserSummaryList", name: "ChannelModeratedByAppInstanceUserSummaryList")
    ChannelModerator = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmessaging#ChannelModerator", name: "ChannelModerator")
    ChannelModeratorArns = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.chimesdkmessaging#ChannelModeratorArns", name: "ChannelModeratorArns", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    ChannelModeratorSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmessaging#ChannelModeratorSummary", name: "ChannelModeratorSummary")
    ChannelModeratorSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.chimesdkmessaging#ChannelModeratorSummaryList", name: "ChannelModeratorSummaryList")
    ChannelPrivacy = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.chimesdkmessaging#ChannelPrivacy", name: "ChannelPrivacy")
    ChannelSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmessaging#ChannelSummary", name: "ChannelSummary")
    ChannelSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.chimesdkmessaging#ChannelSummaryList", name: "ChannelSummaryList")
    ChimeArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.chimesdkmessaging#ChimeArn", name: "ChimeArn", traits: {"smithy.api#length" => {"min" => 5, "max" => 1600}, "smithy.api#pattern" => "^arn:[a-z0-9-\\.]{1,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[^/].{0,1023}$"})
    ClientRequestToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.chimesdkmessaging#ClientRequestToken", name: "ClientRequestToken", traits: {"smithy.api#length" => {"min" => 2, "max" => 64}, "smithy.api#pattern" => "^[-_a-zA-Z0-9]*$", "smithy.api#sensitive" => {}})
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmessaging#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    Content = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.chimesdkmessaging#Content", name: "Content", traits: {"smithy.api#length" => {"min" => 0, "max" => 4096}, "smithy.api#pattern" => "^[\\s\\S]*$", "smithy.api#sensitive" => {}})
    ContentType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.chimesdkmessaging#ContentType", name: "ContentType", traits: {"smithy.api#length" => {"min" => 0, "max" => 45}, "smithy.api#pattern" => "^[\\s\\S]*$", "smithy.api#sensitive" => {}})
    CreateChannelBanRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmessaging#CreateChannelBanRequest", name: "CreateChannelBanRequest")
    CreateChannelBanResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmessaging#CreateChannelBanResponse", name: "CreateChannelBanResponse")
    CreateChannelFlowRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmessaging#CreateChannelFlowRequest", name: "CreateChannelFlowRequest")
    CreateChannelFlowResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmessaging#CreateChannelFlowResponse", name: "CreateChannelFlowResponse")
    CreateChannelMembershipRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmessaging#CreateChannelMembershipRequest", name: "CreateChannelMembershipRequest")
    CreateChannelMembershipResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmessaging#CreateChannelMembershipResponse", name: "CreateChannelMembershipResponse")
    CreateChannelModeratorRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmessaging#CreateChannelModeratorRequest", name: "CreateChannelModeratorRequest")
    CreateChannelModeratorResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmessaging#CreateChannelModeratorResponse", name: "CreateChannelModeratorResponse")
    CreateChannelRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmessaging#CreateChannelRequest", name: "CreateChannelRequest")
    CreateChannelResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmessaging#CreateChannelResponse", name: "CreateChannelResponse")
    DeleteChannelBanRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmessaging#DeleteChannelBanRequest", name: "DeleteChannelBanRequest")
    DeleteChannelFlowRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmessaging#DeleteChannelFlowRequest", name: "DeleteChannelFlowRequest")
    DeleteChannelMembershipRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmessaging#DeleteChannelMembershipRequest", name: "DeleteChannelMembershipRequest")
    DeleteChannelMessageRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmessaging#DeleteChannelMessageRequest", name: "DeleteChannelMessageRequest")
    DeleteChannelModeratorRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmessaging#DeleteChannelModeratorRequest", name: "DeleteChannelModeratorRequest")
    DeleteChannelRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmessaging#DeleteChannelRequest", name: "DeleteChannelRequest")
    DeleteMessagingStreamingConfigurationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmessaging#DeleteMessagingStreamingConfigurationsRequest", name: "DeleteMessagingStreamingConfigurationsRequest")
    DescribeChannelBanRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmessaging#DescribeChannelBanRequest", name: "DescribeChannelBanRequest")
    DescribeChannelBanResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmessaging#DescribeChannelBanResponse", name: "DescribeChannelBanResponse")
    DescribeChannelFlowRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmessaging#DescribeChannelFlowRequest", name: "DescribeChannelFlowRequest")
    DescribeChannelFlowResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmessaging#DescribeChannelFlowResponse", name: "DescribeChannelFlowResponse")
    DescribeChannelMembershipForAppInstanceUserRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmessaging#DescribeChannelMembershipForAppInstanceUserRequest", name: "DescribeChannelMembershipForAppInstanceUserRequest")
    DescribeChannelMembershipForAppInstanceUserResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmessaging#DescribeChannelMembershipForAppInstanceUserResponse", name: "DescribeChannelMembershipForAppInstanceUserResponse")
    DescribeChannelMembershipRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmessaging#DescribeChannelMembershipRequest", name: "DescribeChannelMembershipRequest")
    DescribeChannelMembershipResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmessaging#DescribeChannelMembershipResponse", name: "DescribeChannelMembershipResponse")
    DescribeChannelModeratedByAppInstanceUserRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmessaging#DescribeChannelModeratedByAppInstanceUserRequest", name: "DescribeChannelModeratedByAppInstanceUserRequest")
    DescribeChannelModeratedByAppInstanceUserResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmessaging#DescribeChannelModeratedByAppInstanceUserResponse", name: "DescribeChannelModeratedByAppInstanceUserResponse")
    DescribeChannelModeratorRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmessaging#DescribeChannelModeratorRequest", name: "DescribeChannelModeratorRequest")
    DescribeChannelModeratorResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmessaging#DescribeChannelModeratorResponse", name: "DescribeChannelModeratorResponse")
    DescribeChannelRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmessaging#DescribeChannelRequest", name: "DescribeChannelRequest")
    DescribeChannelResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmessaging#DescribeChannelResponse", name: "DescribeChannelResponse")
    DisassociateChannelFlowRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmessaging#DisassociateChannelFlowRequest", name: "DisassociateChannelFlowRequest")
    ElasticChannelConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmessaging#ElasticChannelConfiguration", name: "ElasticChannelConfiguration")
    ErrorCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.chimesdkmessaging#ErrorCode", name: "ErrorCode")
    ExpirationCriterion = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.chimesdkmessaging#ExpirationCriterion", name: "ExpirationCriterion")
    ExpirationDays = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.chimesdkmessaging#ExpirationDays", name: "ExpirationDays", traits: {"smithy.api#range" => {"min" => 1, "max" => 5475}})
    ExpirationSettings = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmessaging#ExpirationSettings", name: "ExpirationSettings")
    FallbackAction = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.chimesdkmessaging#FallbackAction", name: "FallbackAction")
    FilterRule = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.chimesdkmessaging#FilterRule", name: "FilterRule", traits: {"smithy.api#length" => {"min" => 1}, "smithy.api#pattern" => "^[\\s\\S]*$", "smithy.api#sensitive" => {}})
    ForbiddenException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmessaging#ForbiddenException", name: "ForbiddenException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    GetChannelMembershipPreferencesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmessaging#GetChannelMembershipPreferencesRequest", name: "GetChannelMembershipPreferencesRequest")
    GetChannelMembershipPreferencesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmessaging#GetChannelMembershipPreferencesResponse", name: "GetChannelMembershipPreferencesResponse")
    GetChannelMessageRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmessaging#GetChannelMessageRequest", name: "GetChannelMessageRequest")
    GetChannelMessageResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmessaging#GetChannelMessageResponse", name: "GetChannelMessageResponse")
    GetChannelMessageStatusRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmessaging#GetChannelMessageStatusRequest", name: "GetChannelMessageStatusRequest")
    GetChannelMessageStatusResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmessaging#GetChannelMessageStatusResponse", name: "GetChannelMessageStatusResponse")
    GetMessagingSessionEndpointRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmessaging#GetMessagingSessionEndpointRequest", name: "GetMessagingSessionEndpointRequest")
    GetMessagingSessionEndpointResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmessaging#GetMessagingSessionEndpointResponse", name: "GetMessagingSessionEndpointResponse")
    GetMessagingStreamingConfigurationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmessaging#GetMessagingStreamingConfigurationsRequest", name: "GetMessagingStreamingConfigurationsRequest")
    GetMessagingStreamingConfigurationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmessaging#GetMessagingStreamingConfigurationsResponse", name: "GetMessagingStreamingConfigurationsResponse")
    Identity = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmessaging#Identity", name: "Identity")
    InvocationType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.chimesdkmessaging#InvocationType", name: "InvocationType")
    LambdaConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmessaging#LambdaConfiguration", name: "LambdaConfiguration")
    LambdaFunctionArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.chimesdkmessaging#LambdaFunctionArn", name: "LambdaFunctionArn", traits: {"smithy.api#length" => {"min" => 15, "max" => 2048}, "smithy.api#pattern" => "^arn:aws:lambda:[a-z]{2}-[a-z]+-\\d{1}:\\d{12}:function:[a-zA-Z0-9\\-_\\.]+(:(\\$LATEST|[a-zA-Z0-9\\-_]+))?$"})
    ListChannelBansRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmessaging#ListChannelBansRequest", name: "ListChannelBansRequest")
    ListChannelBansResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmessaging#ListChannelBansResponse", name: "ListChannelBansResponse")
    ListChannelFlowsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmessaging#ListChannelFlowsRequest", name: "ListChannelFlowsRequest")
    ListChannelFlowsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmessaging#ListChannelFlowsResponse", name: "ListChannelFlowsResponse")
    ListChannelMembershipsForAppInstanceUserRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmessaging#ListChannelMembershipsForAppInstanceUserRequest", name: "ListChannelMembershipsForAppInstanceUserRequest")
    ListChannelMembershipsForAppInstanceUserResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmessaging#ListChannelMembershipsForAppInstanceUserResponse", name: "ListChannelMembershipsForAppInstanceUserResponse")
    ListChannelMembershipsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmessaging#ListChannelMembershipsRequest", name: "ListChannelMembershipsRequest")
    ListChannelMembershipsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmessaging#ListChannelMembershipsResponse", name: "ListChannelMembershipsResponse")
    ListChannelMessagesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmessaging#ListChannelMessagesRequest", name: "ListChannelMessagesRequest")
    ListChannelMessagesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmessaging#ListChannelMessagesResponse", name: "ListChannelMessagesResponse")
    ListChannelModeratorsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmessaging#ListChannelModeratorsRequest", name: "ListChannelModeratorsRequest")
    ListChannelModeratorsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmessaging#ListChannelModeratorsResponse", name: "ListChannelModeratorsResponse")
    ListChannelsAssociatedWithChannelFlowRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmessaging#ListChannelsAssociatedWithChannelFlowRequest", name: "ListChannelsAssociatedWithChannelFlowRequest")
    ListChannelsAssociatedWithChannelFlowResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmessaging#ListChannelsAssociatedWithChannelFlowResponse", name: "ListChannelsAssociatedWithChannelFlowResponse")
    ListChannelsModeratedByAppInstanceUserRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmessaging#ListChannelsModeratedByAppInstanceUserRequest", name: "ListChannelsModeratedByAppInstanceUserRequest")
    ListChannelsModeratedByAppInstanceUserResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmessaging#ListChannelsModeratedByAppInstanceUserResponse", name: "ListChannelsModeratedByAppInstanceUserResponse")
    ListChannelsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmessaging#ListChannelsRequest", name: "ListChannelsRequest")
    ListChannelsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmessaging#ListChannelsResponse", name: "ListChannelsResponse")
    ListSubChannelsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmessaging#ListSubChannelsRequest", name: "ListSubChannelsRequest")
    ListSubChannelsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmessaging#ListSubChannelsResponse", name: "ListSubChannelsResponse")
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmessaging#ListTagsForResourceRequest", name: "ListTagsForResourceRequest")
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmessaging#ListTagsForResourceResponse", name: "ListTagsForResourceResponse")
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.chimesdkmessaging#MaxResults", name: "MaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 50}})
    MaximumSubChannels = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.chimesdkmessaging#MaximumSubChannels", name: "MaximumSubChannels", traits: {"smithy.api#range" => {"min" => 2}})
    MemberArns = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.chimesdkmessaging#MemberArns", name: "MemberArns", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    Members = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.chimesdkmessaging#Members", name: "Members")
    MembershipCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.chimesdkmessaging#MembershipCount", name: "MembershipCount")
    MessageAttributeMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.chimesdkmessaging#MessageAttributeMap", name: "MessageAttributeMap")
    MessageAttributeName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.chimesdkmessaging#MessageAttributeName", name: "MessageAttributeName", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[\\s\\S]*$", "smithy.api#sensitive" => {}})
    MessageAttributeStringValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.chimesdkmessaging#MessageAttributeStringValue", name: "MessageAttributeStringValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 512}, "smithy.api#pattern" => "^[\\s\\S]*$", "smithy.api#sensitive" => {}})
    MessageAttributeStringValues = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.chimesdkmessaging#MessageAttributeStringValues", name: "MessageAttributeStringValues")
    MessageAttributeValue = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmessaging#MessageAttributeValue", name: "MessageAttributeValue")
    MessageId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.chimesdkmessaging#MessageId", name: "MessageId", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[-_a-zA-Z0-9]*$"})
    MessagingDataType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.chimesdkmessaging#MessagingDataType", name: "MessagingDataType")
    MessagingSessionEndpoint = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmessaging#MessagingSessionEndpoint", name: "MessagingSessionEndpoint")
    Metadata = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.chimesdkmessaging#Metadata", name: "Metadata", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#pattern" => ".*", "smithy.api#sensitive" => {}})
    MinimumMembershipPercentage = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.chimesdkmessaging#MinimumMembershipPercentage", name: "MinimumMembershipPercentage", traits: {"smithy.api#range" => {"min" => 1, "max" => 40}})
    NetworkType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.chimesdkmessaging#NetworkType", name: "NetworkType")
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.chimesdkmessaging#NextToken", name: "NextToken", traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}, "smithy.api#pattern" => ".*", "smithy.api#sensitive" => {}})
    NonEmptyContent = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.chimesdkmessaging#NonEmptyContent", name: "NonEmptyContent", traits: {"smithy.api#length" => {"min" => 1}, "smithy.api#pattern" => "^[\\s\\S]*$", "smithy.api#sensitive" => {}})
    NonEmptyResourceName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.chimesdkmessaging#NonEmptyResourceName", name: "NonEmptyResourceName", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[\\u0009\\u000A\\u000D\\u0020-\\u007E\\u0085\\u00A0-\\uD7FF\\uE000-\\uFFFD\\u10000-\\u10FFFF]*$", "smithy.api#sensitive" => {}})
    NonNullableBoolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.chimesdkmessaging#NonNullableBoolean", name: "NonNullableBoolean", traits: {"smithy.api#default" => false})
    NotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmessaging#NotFoundException", name: "NotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    Processor = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmessaging#Processor", name: "Processor")
    ProcessorConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmessaging#ProcessorConfiguration", name: "ProcessorConfiguration")
    ProcessorList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.chimesdkmessaging#ProcessorList", name: "ProcessorList", traits: {"smithy.api#length" => {"min" => 1, "max" => 3}})
    PushNotificationBody = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.chimesdkmessaging#PushNotificationBody", name: "PushNotificationBody", traits: {"smithy.api#length" => {"min" => 1, "max" => 150}, "smithy.api#pattern" => "^[\\s\\S]*$", "smithy.api#sensitive" => {}})
    PushNotificationConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmessaging#PushNotificationConfiguration", name: "PushNotificationConfiguration")
    PushNotificationPreferences = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmessaging#PushNotificationPreferences", name: "PushNotificationPreferences")
    PushNotificationTitle = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.chimesdkmessaging#PushNotificationTitle", name: "PushNotificationTitle", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}, "smithy.api#pattern" => ".*", "smithy.api#sensitive" => {}})
    PushNotificationType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.chimesdkmessaging#PushNotificationType", name: "PushNotificationType")
    PutChannelExpirationSettingsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmessaging#PutChannelExpirationSettingsRequest", name: "PutChannelExpirationSettingsRequest")
    PutChannelExpirationSettingsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmessaging#PutChannelExpirationSettingsResponse", name: "PutChannelExpirationSettingsResponse")
    PutChannelMembershipPreferencesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmessaging#PutChannelMembershipPreferencesRequest", name: "PutChannelMembershipPreferencesRequest")
    PutChannelMembershipPreferencesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmessaging#PutChannelMembershipPreferencesResponse", name: "PutChannelMembershipPreferencesResponse")
    PutMessagingStreamingConfigurationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmessaging#PutMessagingStreamingConfigurationsRequest", name: "PutMessagingStreamingConfigurationsRequest")
    PutMessagingStreamingConfigurationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmessaging#PutMessagingStreamingConfigurationsResponse", name: "PutMessagingStreamingConfigurationsResponse")
    RedactChannelMessageRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmessaging#RedactChannelMessageRequest", name: "RedactChannelMessageRequest")
    RedactChannelMessageResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmessaging#RedactChannelMessageResponse", name: "RedactChannelMessageResponse")
    ResourceLimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmessaging#ResourceLimitExceededException", name: "ResourceLimitExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ResourceName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.chimesdkmessaging#ResourceName", name: "ResourceName", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[\\u0009\\u000A\\u000D\\u0020-\\u007E\\u0085\\u00A0-\\uD7FF\\uE000-\\uFFFD\\u10000-\\u10FFFF]*$", "smithy.api#sensitive" => {}})
    SearchChannelsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmessaging#SearchChannelsRequest", name: "SearchChannelsRequest")
    SearchChannelsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmessaging#SearchChannelsResponse", name: "SearchChannelsResponse")
    SearchField = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmessaging#SearchField", name: "SearchField")
    SearchFieldKey = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.chimesdkmessaging#SearchFieldKey", name: "SearchFieldKey")
    SearchFieldOperator = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.chimesdkmessaging#SearchFieldOperator", name: "SearchFieldOperator")
    SearchFieldValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.chimesdkmessaging#SearchFieldValue", name: "SearchFieldValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 512}, "smithy.api#pattern" => "^[\\s\\S]*$"})
    SearchFieldValues = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.chimesdkmessaging#SearchFieldValues", name: "SearchFieldValues", traits: {"smithy.api#length" => {"min" => 1, "max" => 20}})
    SearchFields = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.chimesdkmessaging#SearchFields", name: "SearchFields", traits: {"smithy.api#length" => {"min" => 1, "max" => 20}})
    SendChannelMessageRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmessaging#SendChannelMessageRequest", name: "SendChannelMessageRequest")
    SendChannelMessageResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmessaging#SendChannelMessageResponse", name: "SendChannelMessageResponse")
    ServiceFailureException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmessaging#ServiceFailureException", name: "ServiceFailureException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    ServiceUnavailableException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmessaging#ServiceUnavailableException", name: "ServiceUnavailableException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 503})
    SortOrder = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.chimesdkmessaging#SortOrder", name: "SortOrder")
    StatusDetail = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.chimesdkmessaging#StatusDetail", name: "StatusDetail", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[\\s\\S]*$"})
    StreamingConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmessaging#StreamingConfiguration", name: "StreamingConfiguration")
    StreamingConfigurationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.chimesdkmessaging#StreamingConfigurationList", name: "StreamingConfigurationList", traits: {"smithy.api#length" => {"min" => 1, "max" => 2}})
    String = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.chimesdkmessaging#String", name: "String")
    SubChannelId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.chimesdkmessaging#SubChannelId", name: "SubChannelId", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[-_a-zA-Z0-9]*$"})
    SubChannelSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmessaging#SubChannelSummary", name: "SubChannelSummary")
    SubChannelSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.chimesdkmessaging#SubChannelSummaryList", name: "SubChannelSummaryList")
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmessaging#Tag", name: "Tag")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.chimesdkmessaging#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#sensitive" => {}})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.chimesdkmessaging#TagKeyList", name: "TagKeyList", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    TagList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.chimesdkmessaging#TagList", name: "TagList", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmessaging#TagResourceRequest", name: "TagResourceRequest")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.chimesdkmessaging#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#sensitive" => {}})
    Target = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmessaging#Target", name: "Target")
    TargetList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.chimesdkmessaging#TargetList", name: "TargetList", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    TargetMembershipsPerSubChannel = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.chimesdkmessaging#TargetMembershipsPerSubChannel", name: "TargetMembershipsPerSubChannel", traits: {"smithy.api#range" => {"min" => 2}})
    ThrottledClientException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmessaging#ThrottledClientException", name: "ThrottledClientException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    Timestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.chimesdkmessaging#Timestamp", name: "Timestamp")
    UnauthorizedClientException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmessaging#UnauthorizedClientException", name: "UnauthorizedClientException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 401})
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmessaging#UntagResourceRequest", name: "UntagResourceRequest")
    UpdateChannelFlowRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmessaging#UpdateChannelFlowRequest", name: "UpdateChannelFlowRequest")
    UpdateChannelFlowResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmessaging#UpdateChannelFlowResponse", name: "UpdateChannelFlowResponse")
    UpdateChannelMessageRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmessaging#UpdateChannelMessageRequest", name: "UpdateChannelMessageRequest")
    UpdateChannelMessageResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmessaging#UpdateChannelMessageResponse", name: "UpdateChannelMessageResponse")
    UpdateChannelReadMarkerRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmessaging#UpdateChannelReadMarkerRequest", name: "UpdateChannelReadMarkerRequest")
    UpdateChannelReadMarkerResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmessaging#UpdateChannelReadMarkerResponse", name: "UpdateChannelReadMarkerResponse")
    UpdateChannelRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmessaging#UpdateChannelRequest", name: "UpdateChannelRequest")
    UpdateChannelResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmessaging#UpdateChannelResponse", name: "UpdateChannelResponse")
    UrlType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.chimesdkmessaging#UrlType", name: "UrlType", traits: {"smithy.api#length" => {"min" => 0, "max" => 4096}})

    AllowNotifications.add_member(:all, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ALL", traits: {"smithy.api#enumValue" => "ALL"}))
    AllowNotifications.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))
    AllowNotifications.add_member(:filtered, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FILTERED", traits: {"smithy.api#enumValue" => "FILTERED"}))
    AppInstanceUserMembershipSummary.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelMembershipType, location_name: "Type"))
    AppInstanceUserMembershipSummary.add_member(:read_marker_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "ReadMarkerTimestamp"))
    AppInstanceUserMembershipSummary.add_member(:sub_channel_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SubChannelId, location_name: "SubChannelId"))
    AppInstanceUserMembershipSummary.type = Types::AppInstanceUserMembershipSummary
    AssociateChannelFlowRequest.add_member(:channel_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, location_name: "ChannelArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AssociateChannelFlowRequest.add_member(:channel_flow_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, location_name: "ChannelFlowArn", traits: {"smithy.api#required" => {}}))
    AssociateChannelFlowRequest.add_member(:chime_bearer, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, location_name: "ChimeBearer", traits: {"smithy.api#httpHeader" => "x-amz-chime-bearer", "smithy.api#required" => {}}))
    AssociateChannelFlowRequest.type = Types::AssociateChannelFlowRequest
    BadRequestException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, location_name: "Code"))
    BadRequestException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "Message"))
    BadRequestException.type = Types::BadRequestException
    BatchChannelMemberships.add_member(:invited_by, ::Smithy::Schema::Shapes::MemberShape.new(target: Identity, location_name: "InvitedBy"))
    BatchChannelMemberships.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelMembershipType, location_name: "Type"))
    BatchChannelMemberships.add_member(:members, ::Smithy::Schema::Shapes::MemberShape.new(target: Members, location_name: "Members"))
    BatchChannelMemberships.add_member(:channel_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, location_name: "ChannelArn"))
    BatchChannelMemberships.add_member(:sub_channel_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SubChannelId, location_name: "SubChannelId"))
    BatchChannelMemberships.type = Types::BatchChannelMemberships
    BatchCreateChannelMembershipError.add_member(:member_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, location_name: "MemberArn"))
    BatchCreateChannelMembershipError.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, location_name: "ErrorCode"))
    BatchCreateChannelMembershipError.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ErrorMessage"))
    BatchCreateChannelMembershipError.type = Types::BatchCreateChannelMembershipError
    BatchCreateChannelMembershipErrors.member = ::Smithy::Schema::Shapes::MemberShape.new(target: BatchCreateChannelMembershipError)
    BatchCreateChannelMembershipRequest.add_member(:channel_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, location_name: "ChannelArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    BatchCreateChannelMembershipRequest.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelMembershipType, location_name: "Type"))
    BatchCreateChannelMembershipRequest.add_member(:member_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: MemberArns, location_name: "MemberArns", traits: {"smithy.api#required" => {}}))
    BatchCreateChannelMembershipRequest.add_member(:chime_bearer, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, location_name: "ChimeBearer", traits: {"smithy.api#httpHeader" => "x-amz-chime-bearer", "smithy.api#required" => {}}))
    BatchCreateChannelMembershipRequest.add_member(:sub_channel_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SubChannelId, location_name: "SubChannelId"))
    BatchCreateChannelMembershipRequest.type = Types::BatchCreateChannelMembershipRequest
    BatchCreateChannelMembershipResponse.add_member(:batch_channel_memberships, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchChannelMemberships, location_name: "BatchChannelMemberships"))
    BatchCreateChannelMembershipResponse.add_member(:errors, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchCreateChannelMembershipErrors, location_name: "Errors"))
    BatchCreateChannelMembershipResponse.type = Types::BatchCreateChannelMembershipResponse
    Channel.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyResourceName, location_name: "Name"))
    Channel.add_member(:channel_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, location_name: "ChannelArn"))
    Channel.add_member(:mode, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelMode, location_name: "Mode"))
    Channel.add_member(:privacy, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelPrivacy, location_name: "Privacy"))
    Channel.add_member(:metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: Metadata, location_name: "Metadata"))
    Channel.add_member(:created_by, ::Smithy::Schema::Shapes::MemberShape.new(target: Identity, location_name: "CreatedBy"))
    Channel.add_member(:created_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "CreatedTimestamp"))
    Channel.add_member(:last_message_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "LastMessageTimestamp"))
    Channel.add_member(:last_updated_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "LastUpdatedTimestamp"))
    Channel.add_member(:channel_flow_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, location_name: "ChannelFlowArn"))
    Channel.add_member(:elastic_channel_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ElasticChannelConfiguration, location_name: "ElasticChannelConfiguration"))
    Channel.add_member(:expiration_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: ExpirationSettings, location_name: "ExpirationSettings"))
    Channel.type = Types::Channel
    ChannelAssociatedWithFlowSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyResourceName, location_name: "Name"))
    ChannelAssociatedWithFlowSummary.add_member(:channel_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, location_name: "ChannelArn"))
    ChannelAssociatedWithFlowSummary.add_member(:mode, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelMode, location_name: "Mode"))
    ChannelAssociatedWithFlowSummary.add_member(:privacy, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelPrivacy, location_name: "Privacy"))
    ChannelAssociatedWithFlowSummary.add_member(:metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: Metadata, location_name: "Metadata"))
    ChannelAssociatedWithFlowSummary.type = Types::ChannelAssociatedWithFlowSummary
    ChannelAssociatedWithFlowSummaryList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelAssociatedWithFlowSummary)
    ChannelBan.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Identity, location_name: "Member"))
    ChannelBan.add_member(:channel_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, location_name: "ChannelArn"))
    ChannelBan.add_member(:created_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "CreatedTimestamp"))
    ChannelBan.add_member(:created_by, ::Smithy::Schema::Shapes::MemberShape.new(target: Identity, location_name: "CreatedBy"))
    ChannelBan.type = Types::ChannelBan
    ChannelBanSummary.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Identity, location_name: "Member"))
    ChannelBanSummary.type = Types::ChannelBanSummary
    ChannelBanSummaryList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelBanSummary)
    ChannelFlow.add_member(:channel_flow_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, location_name: "ChannelFlowArn"))
    ChannelFlow.add_member(:processors, ::Smithy::Schema::Shapes::MemberShape.new(target: ProcessorList, location_name: "Processors"))
    ChannelFlow.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyResourceName, location_name: "Name"))
    ChannelFlow.add_member(:created_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "CreatedTimestamp"))
    ChannelFlow.add_member(:last_updated_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "LastUpdatedTimestamp"))
    ChannelFlow.type = Types::ChannelFlow
    ChannelFlowCallbackRequest.add_member(:callback_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CallbackIdType, location_name: "CallbackId", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    ChannelFlowCallbackRequest.add_member(:channel_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, location_name: "ChannelArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ChannelFlowCallbackRequest.add_member(:delete_resource, ::Smithy::Schema::Shapes::MemberShape.new(target: NonNullableBoolean, location_name: "DeleteResource", traits: {"smithy.api#default" => false}))
    ChannelFlowCallbackRequest.add_member(:channel_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelMessageCallback, location_name: "ChannelMessage", traits: {"smithy.api#required" => {}}))
    ChannelFlowCallbackRequest.type = Types::ChannelFlowCallbackRequest
    ChannelFlowCallbackResponse.add_member(:channel_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, location_name: "ChannelArn"))
    ChannelFlowCallbackResponse.add_member(:callback_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CallbackIdType, location_name: "CallbackId"))
    ChannelFlowCallbackResponse.type = Types::ChannelFlowCallbackResponse
    ChannelFlowSummary.add_member(:channel_flow_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, location_name: "ChannelFlowArn"))
    ChannelFlowSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyResourceName, location_name: "Name"))
    ChannelFlowSummary.add_member(:processors, ::Smithy::Schema::Shapes::MemberShape.new(target: ProcessorList, location_name: "Processors"))
    ChannelFlowSummary.type = Types::ChannelFlowSummary
    ChannelFlowSummaryList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelFlowSummary)
    ChannelMemberArns.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn)
    ChannelMembership.add_member(:invited_by, ::Smithy::Schema::Shapes::MemberShape.new(target: Identity, location_name: "InvitedBy"))
    ChannelMembership.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelMembershipType, location_name: "Type"))
    ChannelMembership.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Identity, location_name: "Member"))
    ChannelMembership.add_member(:channel_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, location_name: "ChannelArn"))
    ChannelMembership.add_member(:created_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "CreatedTimestamp"))
    ChannelMembership.add_member(:last_updated_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "LastUpdatedTimestamp"))
    ChannelMembership.add_member(:sub_channel_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SubChannelId, location_name: "SubChannelId"))
    ChannelMembership.type = Types::ChannelMembership
    ChannelMembershipForAppInstanceUserSummary.add_member(:channel_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelSummary, location_name: "ChannelSummary"))
    ChannelMembershipForAppInstanceUserSummary.add_member(:app_instance_user_membership_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: AppInstanceUserMembershipSummary, location_name: "AppInstanceUserMembershipSummary"))
    ChannelMembershipForAppInstanceUserSummary.type = Types::ChannelMembershipForAppInstanceUserSummary
    ChannelMembershipForAppInstanceUserSummaryList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelMembershipForAppInstanceUserSummary)
    ChannelMembershipPreferences.add_member(:push_notifications, ::Smithy::Schema::Shapes::MemberShape.new(target: PushNotificationPreferences, location_name: "PushNotifications"))
    ChannelMembershipPreferences.type = Types::ChannelMembershipPreferences
    ChannelMembershipSummary.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Identity, location_name: "Member"))
    ChannelMembershipSummary.type = Types::ChannelMembershipSummary
    ChannelMembershipSummaryList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelMembershipSummary)
    ChannelMembershipType.add_member(:default, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DEFAULT", traits: {"smithy.api#enumValue" => "DEFAULT"}))
    ChannelMembershipType.add_member(:hidden, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "HIDDEN", traits: {"smithy.api#enumValue" => "HIDDEN"}))
    ChannelMessage.add_member(:channel_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, location_name: "ChannelArn"))
    ChannelMessage.add_member(:message_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageId, location_name: "MessageId"))
    ChannelMessage.add_member(:content, ::Smithy::Schema::Shapes::MemberShape.new(target: Content, location_name: "Content"))
    ChannelMessage.add_member(:metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: Metadata, location_name: "Metadata"))
    ChannelMessage.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelMessageType, location_name: "Type"))
    ChannelMessage.add_member(:created_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "CreatedTimestamp"))
    ChannelMessage.add_member(:last_edited_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "LastEditedTimestamp"))
    ChannelMessage.add_member(:last_updated_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "LastUpdatedTimestamp"))
    ChannelMessage.add_member(:sender, ::Smithy::Schema::Shapes::MemberShape.new(target: Identity, location_name: "Sender"))
    ChannelMessage.add_member(:redacted, ::Smithy::Schema::Shapes::MemberShape.new(target: NonNullableBoolean, location_name: "Redacted", traits: {"smithy.api#default" => false}))
    ChannelMessage.add_member(:persistence, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelMessagePersistenceType, location_name: "Persistence"))
    ChannelMessage.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelMessageStatusStructure, location_name: "Status"))
    ChannelMessage.add_member(:message_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageAttributeMap, location_name: "MessageAttributes"))
    ChannelMessage.add_member(:sub_channel_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SubChannelId, location_name: "SubChannelId"))
    ChannelMessage.add_member(:content_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentType, location_name: "ContentType"))
    ChannelMessage.add_member(:target, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetList, location_name: "Target"))
    ChannelMessage.type = Types::ChannelMessage
    ChannelMessageCallback.add_member(:message_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageId, location_name: "MessageId", traits: {"smithy.api#required" => {}}))
    ChannelMessageCallback.add_member(:content, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyContent, location_name: "Content"))
    ChannelMessageCallback.add_member(:metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: Metadata, location_name: "Metadata"))
    ChannelMessageCallback.add_member(:push_notification, ::Smithy::Schema::Shapes::MemberShape.new(target: PushNotificationConfiguration, location_name: "PushNotification"))
    ChannelMessageCallback.add_member(:message_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageAttributeMap, location_name: "MessageAttributes"))
    ChannelMessageCallback.add_member(:sub_channel_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SubChannelId, location_name: "SubChannelId"))
    ChannelMessageCallback.add_member(:content_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentType, location_name: "ContentType"))
    ChannelMessageCallback.type = Types::ChannelMessageCallback
    ChannelMessagePersistenceType.add_member(:persistent, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PERSISTENT", traits: {"smithy.api#enumValue" => "PERSISTENT"}))
    ChannelMessagePersistenceType.add_member(:non_persistent, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NON_PERSISTENT", traits: {"smithy.api#enumValue" => "NON_PERSISTENT"}))
    ChannelMessageStatus.add_member(:sent, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SENT", traits: {"smithy.api#enumValue" => "SENT"}))
    ChannelMessageStatus.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING"}))
    ChannelMessageStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    ChannelMessageStatus.add_member(:denied, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DENIED", traits: {"smithy.api#enumValue" => "DENIED"}))
    ChannelMessageStatusStructure.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelMessageStatus, location_name: "Value"))
    ChannelMessageStatusStructure.add_member(:detail, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusDetail, location_name: "Detail"))
    ChannelMessageStatusStructure.type = Types::ChannelMessageStatusStructure
    ChannelMessageSummary.add_member(:message_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageId, location_name: "MessageId"))
    ChannelMessageSummary.add_member(:content, ::Smithy::Schema::Shapes::MemberShape.new(target: Content, location_name: "Content"))
    ChannelMessageSummary.add_member(:metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: Metadata, location_name: "Metadata"))
    ChannelMessageSummary.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelMessageType, location_name: "Type"))
    ChannelMessageSummary.add_member(:created_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "CreatedTimestamp"))
    ChannelMessageSummary.add_member(:last_updated_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "LastUpdatedTimestamp"))
    ChannelMessageSummary.add_member(:last_edited_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "LastEditedTimestamp"))
    ChannelMessageSummary.add_member(:sender, ::Smithy::Schema::Shapes::MemberShape.new(target: Identity, location_name: "Sender"))
    ChannelMessageSummary.add_member(:redacted, ::Smithy::Schema::Shapes::MemberShape.new(target: NonNullableBoolean, location_name: "Redacted", traits: {"smithy.api#default" => false}))
    ChannelMessageSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelMessageStatusStructure, location_name: "Status"))
    ChannelMessageSummary.add_member(:message_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageAttributeMap, location_name: "MessageAttributes"))
    ChannelMessageSummary.add_member(:content_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentType, location_name: "ContentType"))
    ChannelMessageSummary.add_member(:target, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetList, location_name: "Target"))
    ChannelMessageSummary.type = Types::ChannelMessageSummary
    ChannelMessageSummaryList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelMessageSummary)
    ChannelMessageType.add_member(:standard, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "STANDARD", traits: {"smithy.api#enumValue" => "STANDARD"}))
    ChannelMessageType.add_member(:control, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CONTROL", traits: {"smithy.api#enumValue" => "CONTROL"}))
    ChannelMode.add_member(:unrestricted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UNRESTRICTED", traits: {"smithy.api#enumValue" => "UNRESTRICTED"}))
    ChannelMode.add_member(:restricted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RESTRICTED", traits: {"smithy.api#enumValue" => "RESTRICTED"}))
    ChannelModeratedByAppInstanceUserSummary.add_member(:channel_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelSummary, location_name: "ChannelSummary"))
    ChannelModeratedByAppInstanceUserSummary.type = Types::ChannelModeratedByAppInstanceUserSummary
    ChannelModeratedByAppInstanceUserSummaryList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelModeratedByAppInstanceUserSummary)
    ChannelModerator.add_member(:moderator, ::Smithy::Schema::Shapes::MemberShape.new(target: Identity, location_name: "Moderator"))
    ChannelModerator.add_member(:channel_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, location_name: "ChannelArn"))
    ChannelModerator.add_member(:created_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "CreatedTimestamp"))
    ChannelModerator.add_member(:created_by, ::Smithy::Schema::Shapes::MemberShape.new(target: Identity, location_name: "CreatedBy"))
    ChannelModerator.type = Types::ChannelModerator
    ChannelModeratorArns.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn)
    ChannelModeratorSummary.add_member(:moderator, ::Smithy::Schema::Shapes::MemberShape.new(target: Identity, location_name: "Moderator"))
    ChannelModeratorSummary.type = Types::ChannelModeratorSummary
    ChannelModeratorSummaryList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelModeratorSummary)
    ChannelPrivacy.add_member(:public, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PUBLIC", traits: {"smithy.api#enumValue" => "PUBLIC"}))
    ChannelPrivacy.add_member(:private, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PRIVATE", traits: {"smithy.api#enumValue" => "PRIVATE"}))
    ChannelSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyResourceName, location_name: "Name"))
    ChannelSummary.add_member(:channel_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, location_name: "ChannelArn"))
    ChannelSummary.add_member(:mode, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelMode, location_name: "Mode"))
    ChannelSummary.add_member(:privacy, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelPrivacy, location_name: "Privacy"))
    ChannelSummary.add_member(:metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: Metadata, location_name: "Metadata"))
    ChannelSummary.add_member(:last_message_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "LastMessageTimestamp"))
    ChannelSummary.type = Types::ChannelSummary
    ChannelSummaryList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelSummary)
    ConflictException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, location_name: "Code"))
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "Message"))
    ConflictException.type = Types::ConflictException
    CreateChannelBanRequest.add_member(:channel_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, location_name: "ChannelArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateChannelBanRequest.add_member(:member_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, location_name: "MemberArn", traits: {"smithy.api#required" => {}}))
    CreateChannelBanRequest.add_member(:chime_bearer, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, location_name: "ChimeBearer", traits: {"smithy.api#httpHeader" => "x-amz-chime-bearer", "smithy.api#required" => {}}))
    CreateChannelBanRequest.type = Types::CreateChannelBanRequest
    CreateChannelBanResponse.add_member(:channel_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, location_name: "ChannelArn"))
    CreateChannelBanResponse.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Identity, location_name: "Member"))
    CreateChannelBanResponse.type = Types::CreateChannelBanResponse
    CreateChannelFlowRequest.add_member(:app_instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, location_name: "AppInstanceArn", traits: {"smithy.api#required" => {}}))
    CreateChannelFlowRequest.add_member(:processors, ::Smithy::Schema::Shapes::MemberShape.new(target: ProcessorList, location_name: "Processors", traits: {"smithy.api#required" => {}}))
    CreateChannelFlowRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyResourceName, location_name: "Name", traits: {"smithy.api#required" => {}}))
    CreateChannelFlowRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, location_name: "Tags"))
    CreateChannelFlowRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestToken, location_name: "ClientRequestToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    CreateChannelFlowRequest.type = Types::CreateChannelFlowRequest
    CreateChannelFlowResponse.add_member(:channel_flow_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, location_name: "ChannelFlowArn"))
    CreateChannelFlowResponse.type = Types::CreateChannelFlowResponse
    CreateChannelMembershipRequest.add_member(:channel_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, location_name: "ChannelArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateChannelMembershipRequest.add_member(:member_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, location_name: "MemberArn", traits: {"smithy.api#required" => {}}))
    CreateChannelMembershipRequest.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelMembershipType, location_name: "Type", traits: {"smithy.api#required" => {}}))
    CreateChannelMembershipRequest.add_member(:chime_bearer, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, location_name: "ChimeBearer", traits: {"smithy.api#httpHeader" => "x-amz-chime-bearer", "smithy.api#required" => {}}))
    CreateChannelMembershipRequest.add_member(:sub_channel_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SubChannelId, location_name: "SubChannelId"))
    CreateChannelMembershipRequest.type = Types::CreateChannelMembershipRequest
    CreateChannelMembershipResponse.add_member(:channel_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, location_name: "ChannelArn"))
    CreateChannelMembershipResponse.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Identity, location_name: "Member"))
    CreateChannelMembershipResponse.add_member(:sub_channel_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SubChannelId, location_name: "SubChannelId"))
    CreateChannelMembershipResponse.type = Types::CreateChannelMembershipResponse
    CreateChannelModeratorRequest.add_member(:channel_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, location_name: "ChannelArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateChannelModeratorRequest.add_member(:channel_moderator_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, location_name: "ChannelModeratorArn", traits: {"smithy.api#required" => {}}))
    CreateChannelModeratorRequest.add_member(:chime_bearer, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, location_name: "ChimeBearer", traits: {"smithy.api#httpHeader" => "x-amz-chime-bearer", "smithy.api#required" => {}}))
    CreateChannelModeratorRequest.type = Types::CreateChannelModeratorRequest
    CreateChannelModeratorResponse.add_member(:channel_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, location_name: "ChannelArn"))
    CreateChannelModeratorResponse.add_member(:channel_moderator, ::Smithy::Schema::Shapes::MemberShape.new(target: Identity, location_name: "ChannelModerator"))
    CreateChannelModeratorResponse.type = Types::CreateChannelModeratorResponse
    CreateChannelRequest.add_member(:app_instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, location_name: "AppInstanceArn", traits: {"smithy.api#required" => {}}))
    CreateChannelRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyResourceName, location_name: "Name", traits: {"smithy.api#required" => {}}))
    CreateChannelRequest.add_member(:mode, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelMode, location_name: "Mode"))
    CreateChannelRequest.add_member(:privacy, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelPrivacy, location_name: "Privacy"))
    CreateChannelRequest.add_member(:metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: Metadata, location_name: "Metadata"))
    CreateChannelRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestToken, location_name: "ClientRequestToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    CreateChannelRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, location_name: "Tags"))
    CreateChannelRequest.add_member(:chime_bearer, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, location_name: "ChimeBearer", traits: {"smithy.api#httpHeader" => "x-amz-chime-bearer", "smithy.api#required" => {}}))
    CreateChannelRequest.add_member(:channel_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelId, location_name: "ChannelId"))
    CreateChannelRequest.add_member(:member_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelMemberArns, location_name: "MemberArns"))
    CreateChannelRequest.add_member(:moderator_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelModeratorArns, location_name: "ModeratorArns"))
    CreateChannelRequest.add_member(:elastic_channel_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ElasticChannelConfiguration, location_name: "ElasticChannelConfiguration"))
    CreateChannelRequest.add_member(:expiration_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: ExpirationSettings, location_name: "ExpirationSettings"))
    CreateChannelRequest.type = Types::CreateChannelRequest
    CreateChannelResponse.add_member(:channel_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, location_name: "ChannelArn"))
    CreateChannelResponse.type = Types::CreateChannelResponse
    DeleteChannelBanRequest.add_member(:channel_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, location_name: "ChannelArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteChannelBanRequest.add_member(:member_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, location_name: "MemberArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteChannelBanRequest.add_member(:chime_bearer, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, location_name: "ChimeBearer", traits: {"smithy.api#httpHeader" => "x-amz-chime-bearer", "smithy.api#required" => {}}))
    DeleteChannelBanRequest.type = Types::DeleteChannelBanRequest
    DeleteChannelFlowRequest.add_member(:channel_flow_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, location_name: "ChannelFlowArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteChannelFlowRequest.type = Types::DeleteChannelFlowRequest
    DeleteChannelMembershipRequest.add_member(:channel_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, location_name: "ChannelArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteChannelMembershipRequest.add_member(:member_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, location_name: "MemberArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteChannelMembershipRequest.add_member(:chime_bearer, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, location_name: "ChimeBearer", traits: {"smithy.api#httpHeader" => "x-amz-chime-bearer", "smithy.api#required" => {}}))
    DeleteChannelMembershipRequest.add_member(:sub_channel_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SubChannelId, location_name: "SubChannelId", traits: {"smithy.api#httpQuery" => "sub-channel-id"}))
    DeleteChannelMembershipRequest.type = Types::DeleteChannelMembershipRequest
    DeleteChannelMessageRequest.add_member(:channel_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, location_name: "ChannelArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteChannelMessageRequest.add_member(:message_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageId, location_name: "MessageId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteChannelMessageRequest.add_member(:chime_bearer, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, location_name: "ChimeBearer", traits: {"smithy.api#httpHeader" => "x-amz-chime-bearer", "smithy.api#required" => {}}))
    DeleteChannelMessageRequest.add_member(:sub_channel_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SubChannelId, location_name: "SubChannelId", traits: {"smithy.api#httpQuery" => "sub-channel-id"}))
    DeleteChannelMessageRequest.type = Types::DeleteChannelMessageRequest
    DeleteChannelModeratorRequest.add_member(:channel_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, location_name: "ChannelArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteChannelModeratorRequest.add_member(:channel_moderator_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, location_name: "ChannelModeratorArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteChannelModeratorRequest.add_member(:chime_bearer, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, location_name: "ChimeBearer", traits: {"smithy.api#httpHeader" => "x-amz-chime-bearer", "smithy.api#required" => {}}))
    DeleteChannelModeratorRequest.type = Types::DeleteChannelModeratorRequest
    DeleteChannelRequest.add_member(:channel_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, location_name: "ChannelArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteChannelRequest.add_member(:chime_bearer, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, location_name: "ChimeBearer", traits: {"smithy.api#httpHeader" => "x-amz-chime-bearer", "smithy.api#required" => {}}))
    DeleteChannelRequest.type = Types::DeleteChannelRequest
    DeleteMessagingStreamingConfigurationsRequest.add_member(:app_instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, location_name: "AppInstanceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteMessagingStreamingConfigurationsRequest.type = Types::DeleteMessagingStreamingConfigurationsRequest
    DescribeChannelBanRequest.add_member(:channel_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, location_name: "ChannelArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeChannelBanRequest.add_member(:member_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, location_name: "MemberArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeChannelBanRequest.add_member(:chime_bearer, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, location_name: "ChimeBearer", traits: {"smithy.api#httpHeader" => "x-amz-chime-bearer", "smithy.api#required" => {}}))
    DescribeChannelBanRequest.type = Types::DescribeChannelBanRequest
    DescribeChannelBanResponse.add_member(:channel_ban, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelBan, location_name: "ChannelBan"))
    DescribeChannelBanResponse.type = Types::DescribeChannelBanResponse
    DescribeChannelFlowRequest.add_member(:channel_flow_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, location_name: "ChannelFlowArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeChannelFlowRequest.type = Types::DescribeChannelFlowRequest
    DescribeChannelFlowResponse.add_member(:channel_flow, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelFlow, location_name: "ChannelFlow"))
    DescribeChannelFlowResponse.type = Types::DescribeChannelFlowResponse
    DescribeChannelMembershipForAppInstanceUserRequest.add_member(:channel_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, location_name: "ChannelArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeChannelMembershipForAppInstanceUserRequest.add_member(:app_instance_user_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, location_name: "AppInstanceUserArn", traits: {"smithy.api#httpQuery" => "app-instance-user-arn", "smithy.api#required" => {}}))
    DescribeChannelMembershipForAppInstanceUserRequest.add_member(:chime_bearer, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, location_name: "ChimeBearer", traits: {"smithy.api#httpHeader" => "x-amz-chime-bearer", "smithy.api#required" => {}}))
    DescribeChannelMembershipForAppInstanceUserRequest.type = Types::DescribeChannelMembershipForAppInstanceUserRequest
    DescribeChannelMembershipForAppInstanceUserResponse.add_member(:channel_membership, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelMembershipForAppInstanceUserSummary, location_name: "ChannelMembership"))
    DescribeChannelMembershipForAppInstanceUserResponse.type = Types::DescribeChannelMembershipForAppInstanceUserResponse
    DescribeChannelMembershipRequest.add_member(:channel_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, location_name: "ChannelArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeChannelMembershipRequest.add_member(:member_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, location_name: "MemberArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeChannelMembershipRequest.add_member(:chime_bearer, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, location_name: "ChimeBearer", traits: {"smithy.api#httpHeader" => "x-amz-chime-bearer", "smithy.api#required" => {}}))
    DescribeChannelMembershipRequest.add_member(:sub_channel_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SubChannelId, location_name: "SubChannelId", traits: {"smithy.api#httpQuery" => "sub-channel-id"}))
    DescribeChannelMembershipRequest.type = Types::DescribeChannelMembershipRequest
    DescribeChannelMembershipResponse.add_member(:channel_membership, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelMembership, location_name: "ChannelMembership"))
    DescribeChannelMembershipResponse.type = Types::DescribeChannelMembershipResponse
    DescribeChannelModeratedByAppInstanceUserRequest.add_member(:channel_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, location_name: "ChannelArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeChannelModeratedByAppInstanceUserRequest.add_member(:app_instance_user_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, location_name: "AppInstanceUserArn", traits: {"smithy.api#httpQuery" => "app-instance-user-arn", "smithy.api#required" => {}}))
    DescribeChannelModeratedByAppInstanceUserRequest.add_member(:chime_bearer, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, location_name: "ChimeBearer", traits: {"smithy.api#httpHeader" => "x-amz-chime-bearer", "smithy.api#required" => {}}))
    DescribeChannelModeratedByAppInstanceUserRequest.type = Types::DescribeChannelModeratedByAppInstanceUserRequest
    DescribeChannelModeratedByAppInstanceUserResponse.add_member(:channel, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelModeratedByAppInstanceUserSummary, location_name: "Channel"))
    DescribeChannelModeratedByAppInstanceUserResponse.type = Types::DescribeChannelModeratedByAppInstanceUserResponse
    DescribeChannelModeratorRequest.add_member(:channel_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, location_name: "ChannelArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeChannelModeratorRequest.add_member(:channel_moderator_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, location_name: "ChannelModeratorArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeChannelModeratorRequest.add_member(:chime_bearer, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, location_name: "ChimeBearer", traits: {"smithy.api#httpHeader" => "x-amz-chime-bearer", "smithy.api#required" => {}}))
    DescribeChannelModeratorRequest.type = Types::DescribeChannelModeratorRequest
    DescribeChannelModeratorResponse.add_member(:channel_moderator, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelModerator, location_name: "ChannelModerator"))
    DescribeChannelModeratorResponse.type = Types::DescribeChannelModeratorResponse
    DescribeChannelRequest.add_member(:channel_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, location_name: "ChannelArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeChannelRequest.add_member(:chime_bearer, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, location_name: "ChimeBearer", traits: {"smithy.api#httpHeader" => "x-amz-chime-bearer", "smithy.api#required" => {}}))
    DescribeChannelRequest.type = Types::DescribeChannelRequest
    DescribeChannelResponse.add_member(:channel, ::Smithy::Schema::Shapes::MemberShape.new(target: Channel, location_name: "Channel"))
    DescribeChannelResponse.type = Types::DescribeChannelResponse
    DisassociateChannelFlowRequest.add_member(:channel_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, location_name: "ChannelArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociateChannelFlowRequest.add_member(:channel_flow_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, location_name: "ChannelFlowArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociateChannelFlowRequest.add_member(:chime_bearer, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, location_name: "ChimeBearer", traits: {"smithy.api#httpHeader" => "x-amz-chime-bearer", "smithy.api#required" => {}}))
    DisassociateChannelFlowRequest.type = Types::DisassociateChannelFlowRequest
    ElasticChannelConfiguration.add_member(:maximum_sub_channels, ::Smithy::Schema::Shapes::MemberShape.new(target: MaximumSubChannels, location_name: "MaximumSubChannels", traits: {"smithy.api#required" => {}}))
    ElasticChannelConfiguration.add_member(:target_memberships_per_sub_channel, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetMembershipsPerSubChannel, location_name: "TargetMembershipsPerSubChannel", traits: {"smithy.api#required" => {}}))
    ElasticChannelConfiguration.add_member(:minimum_membership_percentage, ::Smithy::Schema::Shapes::MemberShape.new(target: MinimumMembershipPercentage, location_name: "MinimumMembershipPercentage", traits: {"smithy.api#required" => {}}))
    ElasticChannelConfiguration.type = Types::ElasticChannelConfiguration
    ErrorCode.add_member(:bad_request, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BadRequest", traits: {"smithy.api#enumValue" => "BadRequest"}))
    ErrorCode.add_member(:conflict, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Conflict", traits: {"smithy.api#enumValue" => "Conflict"}))
    ErrorCode.add_member(:forbidden, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Forbidden", traits: {"smithy.api#enumValue" => "Forbidden"}))
    ErrorCode.add_member(:not_found, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NotFound", traits: {"smithy.api#enumValue" => "NotFound"}))
    ErrorCode.add_member(:precondition_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PreconditionFailed", traits: {"smithy.api#enumValue" => "PreconditionFailed"}))
    ErrorCode.add_member(:resource_limit_exceeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ResourceLimitExceeded", traits: {"smithy.api#enumValue" => "ResourceLimitExceeded"}))
    ErrorCode.add_member(:service_failure, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ServiceFailure", traits: {"smithy.api#enumValue" => "ServiceFailure"}))
    ErrorCode.add_member(:access_denied, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AccessDenied", traits: {"smithy.api#enumValue" => "AccessDenied"}))
    ErrorCode.add_member(:service_unavailable, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ServiceUnavailable", traits: {"smithy.api#enumValue" => "ServiceUnavailable"}))
    ErrorCode.add_member(:throttled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Throttled", traits: {"smithy.api#enumValue" => "Throttled"}))
    ErrorCode.add_member(:throttling, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Throttling", traits: {"smithy.api#enumValue" => "Throttling"}))
    ErrorCode.add_member(:unauthorized, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Unauthorized", traits: {"smithy.api#enumValue" => "Unauthorized"}))
    ErrorCode.add_member(:unprocessable, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Unprocessable", traits: {"smithy.api#enumValue" => "Unprocessable"}))
    ErrorCode.add_member(:voice_connector_group_associations_exist, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "VoiceConnectorGroupAssociationsExist", traits: {"smithy.api#enumValue" => "VoiceConnectorGroupAssociationsExist"}))
    ErrorCode.add_member(:phone_number_associations_exist, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PhoneNumberAssociationsExist", traits: {"smithy.api#enumValue" => "PhoneNumberAssociationsExist"}))
    ExpirationCriterion.add_member(:created_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CREATED_TIMESTAMP", traits: {"smithy.api#enumValue" => "CREATED_TIMESTAMP"}))
    ExpirationCriterion.add_member(:last_message_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LAST_MESSAGE_TIMESTAMP", traits: {"smithy.api#enumValue" => "LAST_MESSAGE_TIMESTAMP"}))
    ExpirationSettings.add_member(:expiration_days, ::Smithy::Schema::Shapes::MemberShape.new(target: ExpirationDays, location_name: "ExpirationDays", traits: {"smithy.api#required" => {}}))
    ExpirationSettings.add_member(:expiration_criterion, ::Smithy::Schema::Shapes::MemberShape.new(target: ExpirationCriterion, location_name: "ExpirationCriterion", traits: {"smithy.api#required" => {}}))
    ExpirationSettings.type = Types::ExpirationSettings
    FallbackAction.add_member(:continue, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CONTINUE", traits: {"smithy.api#enumValue" => "CONTINUE"}))
    FallbackAction.add_member(:abort, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ABORT", traits: {"smithy.api#enumValue" => "ABORT"}))
    ForbiddenException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, location_name: "Code"))
    ForbiddenException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "Message"))
    ForbiddenException.type = Types::ForbiddenException
    GetChannelMembershipPreferencesRequest.add_member(:channel_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, location_name: "ChannelArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetChannelMembershipPreferencesRequest.add_member(:member_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, location_name: "MemberArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetChannelMembershipPreferencesRequest.add_member(:chime_bearer, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, location_name: "ChimeBearer", traits: {"smithy.api#httpHeader" => "x-amz-chime-bearer", "smithy.api#required" => {}}))
    GetChannelMembershipPreferencesRequest.type = Types::GetChannelMembershipPreferencesRequest
    GetChannelMembershipPreferencesResponse.add_member(:channel_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, location_name: "ChannelArn"))
    GetChannelMembershipPreferencesResponse.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Identity, location_name: "Member"))
    GetChannelMembershipPreferencesResponse.add_member(:preferences, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelMembershipPreferences, location_name: "Preferences"))
    GetChannelMembershipPreferencesResponse.type = Types::GetChannelMembershipPreferencesResponse
    GetChannelMessageRequest.add_member(:channel_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, location_name: "ChannelArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetChannelMessageRequest.add_member(:message_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageId, location_name: "MessageId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetChannelMessageRequest.add_member(:chime_bearer, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, location_name: "ChimeBearer", traits: {"smithy.api#httpHeader" => "x-amz-chime-bearer", "smithy.api#required" => {}}))
    GetChannelMessageRequest.add_member(:sub_channel_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SubChannelId, location_name: "SubChannelId", traits: {"smithy.api#httpQuery" => "sub-channel-id"}))
    GetChannelMessageRequest.type = Types::GetChannelMessageRequest
    GetChannelMessageResponse.add_member(:channel_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelMessage, location_name: "ChannelMessage"))
    GetChannelMessageResponse.type = Types::GetChannelMessageResponse
    GetChannelMessageStatusRequest.add_member(:channel_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, location_name: "ChannelArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetChannelMessageStatusRequest.add_member(:message_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageId, location_name: "MessageId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetChannelMessageStatusRequest.add_member(:chime_bearer, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, location_name: "ChimeBearer", traits: {"smithy.api#httpHeader" => "x-amz-chime-bearer", "smithy.api#required" => {}}))
    GetChannelMessageStatusRequest.add_member(:sub_channel_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SubChannelId, location_name: "SubChannelId", traits: {"smithy.api#httpQuery" => "sub-channel-id"}))
    GetChannelMessageStatusRequest.type = Types::GetChannelMessageStatusRequest
    GetChannelMessageStatusResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelMessageStatusStructure, location_name: "Status"))
    GetChannelMessageStatusResponse.type = Types::GetChannelMessageStatusResponse
    GetMessagingSessionEndpointRequest.add_member(:network_type, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkType, location_name: "NetworkType", traits: {"smithy.api#httpQuery" => "network-type"}))
    GetMessagingSessionEndpointRequest.type = Types::GetMessagingSessionEndpointRequest
    GetMessagingSessionEndpointResponse.add_member(:endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: MessagingSessionEndpoint, location_name: "Endpoint"))
    GetMessagingSessionEndpointResponse.type = Types::GetMessagingSessionEndpointResponse
    GetMessagingStreamingConfigurationsRequest.add_member(:app_instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, location_name: "AppInstanceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetMessagingStreamingConfigurationsRequest.type = Types::GetMessagingStreamingConfigurationsRequest
    GetMessagingStreamingConfigurationsResponse.add_member(:streaming_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamingConfigurationList, location_name: "StreamingConfigurations"))
    GetMessagingStreamingConfigurationsResponse.type = Types::GetMessagingStreamingConfigurationsResponse
    Identity.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, location_name: "Arn"))
    Identity.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, location_name: "Name"))
    Identity.type = Types::Identity
    InvocationType.add_member(:async, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ASYNC", traits: {"smithy.api#enumValue" => "ASYNC"}))
    LambdaConfiguration.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LambdaFunctionArn, location_name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    LambdaConfiguration.add_member(:invocation_type, ::Smithy::Schema::Shapes::MemberShape.new(target: InvocationType, location_name: "InvocationType", traits: {"smithy.api#required" => {}}))
    LambdaConfiguration.type = Types::LambdaConfiguration
    ListChannelBansRequest.add_member(:channel_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, location_name: "ChannelArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListChannelBansRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, location_name: "MaxResults", traits: {"smithy.api#httpQuery" => "max-results"}))
    ListChannelBansRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken", traits: {"smithy.api#httpQuery" => "next-token"}))
    ListChannelBansRequest.add_member(:chime_bearer, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, location_name: "ChimeBearer", traits: {"smithy.api#httpHeader" => "x-amz-chime-bearer", "smithy.api#required" => {}}))
    ListChannelBansRequest.type = Types::ListChannelBansRequest
    ListChannelBansResponse.add_member(:channel_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, location_name: "ChannelArn"))
    ListChannelBansResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken"))
    ListChannelBansResponse.add_member(:channel_bans, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelBanSummaryList, location_name: "ChannelBans"))
    ListChannelBansResponse.type = Types::ListChannelBansResponse
    ListChannelFlowsRequest.add_member(:app_instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, location_name: "AppInstanceArn", traits: {"smithy.api#httpQuery" => "app-instance-arn", "smithy.api#required" => {}}))
    ListChannelFlowsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, location_name: "MaxResults", traits: {"smithy.api#httpQuery" => "max-results"}))
    ListChannelFlowsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken", traits: {"smithy.api#httpQuery" => "next-token"}))
    ListChannelFlowsRequest.type = Types::ListChannelFlowsRequest
    ListChannelFlowsResponse.add_member(:channel_flows, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelFlowSummaryList, location_name: "ChannelFlows"))
    ListChannelFlowsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken"))
    ListChannelFlowsResponse.type = Types::ListChannelFlowsResponse
    ListChannelMembershipsForAppInstanceUserRequest.add_member(:app_instance_user_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, location_name: "AppInstanceUserArn", traits: {"smithy.api#httpQuery" => "app-instance-user-arn"}))
    ListChannelMembershipsForAppInstanceUserRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, location_name: "MaxResults", traits: {"smithy.api#httpQuery" => "max-results"}))
    ListChannelMembershipsForAppInstanceUserRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken", traits: {"smithy.api#httpQuery" => "next-token"}))
    ListChannelMembershipsForAppInstanceUserRequest.add_member(:chime_bearer, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, location_name: "ChimeBearer", traits: {"smithy.api#httpHeader" => "x-amz-chime-bearer", "smithy.api#required" => {}}))
    ListChannelMembershipsForAppInstanceUserRequest.type = Types::ListChannelMembershipsForAppInstanceUserRequest
    ListChannelMembershipsForAppInstanceUserResponse.add_member(:channel_memberships, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelMembershipForAppInstanceUserSummaryList, location_name: "ChannelMemberships"))
    ListChannelMembershipsForAppInstanceUserResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken"))
    ListChannelMembershipsForAppInstanceUserResponse.type = Types::ListChannelMembershipsForAppInstanceUserResponse
    ListChannelMembershipsRequest.add_member(:channel_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, location_name: "ChannelArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListChannelMembershipsRequest.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelMembershipType, location_name: "Type", traits: {"smithy.api#httpQuery" => "type"}))
    ListChannelMembershipsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, location_name: "MaxResults", traits: {"smithy.api#httpQuery" => "max-results"}))
    ListChannelMembershipsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken", traits: {"smithy.api#httpQuery" => "next-token"}))
    ListChannelMembershipsRequest.add_member(:chime_bearer, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, location_name: "ChimeBearer", traits: {"smithy.api#httpHeader" => "x-amz-chime-bearer", "smithy.api#required" => {}}))
    ListChannelMembershipsRequest.add_member(:sub_channel_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SubChannelId, location_name: "SubChannelId", traits: {"smithy.api#httpQuery" => "sub-channel-id"}))
    ListChannelMembershipsRequest.type = Types::ListChannelMembershipsRequest
    ListChannelMembershipsResponse.add_member(:channel_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, location_name: "ChannelArn"))
    ListChannelMembershipsResponse.add_member(:channel_memberships, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelMembershipSummaryList, location_name: "ChannelMemberships"))
    ListChannelMembershipsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken"))
    ListChannelMembershipsResponse.type = Types::ListChannelMembershipsResponse
    ListChannelMessagesRequest.add_member(:channel_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, location_name: "ChannelArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListChannelMessagesRequest.add_member(:sort_order, ::Smithy::Schema::Shapes::MemberShape.new(target: SortOrder, location_name: "SortOrder", traits: {"smithy.api#httpQuery" => "sort-order"}))
    ListChannelMessagesRequest.add_member(:not_before, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "NotBefore", traits: {"smithy.api#httpQuery" => "not-before"}))
    ListChannelMessagesRequest.add_member(:not_after, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "NotAfter", traits: {"smithy.api#httpQuery" => "not-after"}))
    ListChannelMessagesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, location_name: "MaxResults", traits: {"smithy.api#httpQuery" => "max-results"}))
    ListChannelMessagesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken", traits: {"smithy.api#httpQuery" => "next-token"}))
    ListChannelMessagesRequest.add_member(:chime_bearer, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, location_name: "ChimeBearer", traits: {"smithy.api#httpHeader" => "x-amz-chime-bearer", "smithy.api#required" => {}}))
    ListChannelMessagesRequest.add_member(:sub_channel_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SubChannelId, location_name: "SubChannelId", traits: {"smithy.api#httpQuery" => "sub-channel-id"}))
    ListChannelMessagesRequest.type = Types::ListChannelMessagesRequest
    ListChannelMessagesResponse.add_member(:channel_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, location_name: "ChannelArn"))
    ListChannelMessagesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken"))
    ListChannelMessagesResponse.add_member(:channel_messages, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelMessageSummaryList, location_name: "ChannelMessages"))
    ListChannelMessagesResponse.add_member(:sub_channel_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SubChannelId, location_name: "SubChannelId"))
    ListChannelMessagesResponse.type = Types::ListChannelMessagesResponse
    ListChannelModeratorsRequest.add_member(:channel_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, location_name: "ChannelArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListChannelModeratorsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, location_name: "MaxResults", traits: {"smithy.api#httpQuery" => "max-results"}))
    ListChannelModeratorsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken", traits: {"smithy.api#httpQuery" => "next-token"}))
    ListChannelModeratorsRequest.add_member(:chime_bearer, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, location_name: "ChimeBearer", traits: {"smithy.api#httpHeader" => "x-amz-chime-bearer", "smithy.api#required" => {}}))
    ListChannelModeratorsRequest.type = Types::ListChannelModeratorsRequest
    ListChannelModeratorsResponse.add_member(:channel_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, location_name: "ChannelArn"))
    ListChannelModeratorsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken"))
    ListChannelModeratorsResponse.add_member(:channel_moderators, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelModeratorSummaryList, location_name: "ChannelModerators"))
    ListChannelModeratorsResponse.type = Types::ListChannelModeratorsResponse
    ListChannelsAssociatedWithChannelFlowRequest.add_member(:channel_flow_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, location_name: "ChannelFlowArn", traits: {"smithy.api#httpQuery" => "channel-flow-arn", "smithy.api#required" => {}}))
    ListChannelsAssociatedWithChannelFlowRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, location_name: "MaxResults", traits: {"smithy.api#httpQuery" => "max-results"}))
    ListChannelsAssociatedWithChannelFlowRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken", traits: {"smithy.api#httpQuery" => "next-token"}))
    ListChannelsAssociatedWithChannelFlowRequest.type = Types::ListChannelsAssociatedWithChannelFlowRequest
    ListChannelsAssociatedWithChannelFlowResponse.add_member(:channels, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelAssociatedWithFlowSummaryList, location_name: "Channels"))
    ListChannelsAssociatedWithChannelFlowResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken"))
    ListChannelsAssociatedWithChannelFlowResponse.type = Types::ListChannelsAssociatedWithChannelFlowResponse
    ListChannelsModeratedByAppInstanceUserRequest.add_member(:app_instance_user_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, location_name: "AppInstanceUserArn", traits: {"smithy.api#httpQuery" => "app-instance-user-arn"}))
    ListChannelsModeratedByAppInstanceUserRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, location_name: "MaxResults", traits: {"smithy.api#httpQuery" => "max-results"}))
    ListChannelsModeratedByAppInstanceUserRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken", traits: {"smithy.api#httpQuery" => "next-token"}))
    ListChannelsModeratedByAppInstanceUserRequest.add_member(:chime_bearer, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, location_name: "ChimeBearer", traits: {"smithy.api#httpHeader" => "x-amz-chime-bearer", "smithy.api#required" => {}}))
    ListChannelsModeratedByAppInstanceUserRequest.type = Types::ListChannelsModeratedByAppInstanceUserRequest
    ListChannelsModeratedByAppInstanceUserResponse.add_member(:channels, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelModeratedByAppInstanceUserSummaryList, location_name: "Channels"))
    ListChannelsModeratedByAppInstanceUserResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken"))
    ListChannelsModeratedByAppInstanceUserResponse.type = Types::ListChannelsModeratedByAppInstanceUserResponse
    ListChannelsRequest.add_member(:app_instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, location_name: "AppInstanceArn", traits: {"smithy.api#httpQuery" => "app-instance-arn", "smithy.api#required" => {}}))
    ListChannelsRequest.add_member(:privacy, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelPrivacy, location_name: "Privacy", traits: {"smithy.api#httpQuery" => "privacy"}))
    ListChannelsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, location_name: "MaxResults", traits: {"smithy.api#httpQuery" => "max-results"}))
    ListChannelsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken", traits: {"smithy.api#httpQuery" => "next-token"}))
    ListChannelsRequest.add_member(:chime_bearer, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, location_name: "ChimeBearer", traits: {"smithy.api#httpHeader" => "x-amz-chime-bearer", "smithy.api#required" => {}}))
    ListChannelsRequest.type = Types::ListChannelsRequest
    ListChannelsResponse.add_member(:channels, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelSummaryList, location_name: "Channels"))
    ListChannelsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken"))
    ListChannelsResponse.type = Types::ListChannelsResponse
    ListSubChannelsRequest.add_member(:channel_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, location_name: "ChannelArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListSubChannelsRequest.add_member(:chime_bearer, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, location_name: "ChimeBearer", traits: {"smithy.api#httpHeader" => "x-amz-chime-bearer", "smithy.api#required" => {}}))
    ListSubChannelsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, location_name: "MaxResults", traits: {"smithy.api#httpQuery" => "max-results"}))
    ListSubChannelsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken", traits: {"smithy.api#httpQuery" => "next-token"}))
    ListSubChannelsRequest.type = Types::ListSubChannelsRequest
    ListSubChannelsResponse.add_member(:channel_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, location_name: "ChannelArn"))
    ListSubChannelsResponse.add_member(:sub_channels, ::Smithy::Schema::Shapes::MemberShape.new(target: SubChannelSummaryList, location_name: "SubChannels"))
    ListSubChannelsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken"))
    ListSubChannelsResponse.type = Types::ListSubChannelsResponse
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, location_name: "ResourceARN", traits: {"smithy.api#httpQuery" => "arn", "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, location_name: "Tags"))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    MemberArns.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn)
    Members.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Identity)
    MessageAttributeMap.key = ::Smithy::Schema::Shapes::MemberShape.new(target: MessageAttributeName)
    MessageAttributeMap.value = ::Smithy::Schema::Shapes::MemberShape.new(target: MessageAttributeValue)
    MessageAttributeStringValues.member = ::Smithy::Schema::Shapes::MemberShape.new(target: MessageAttributeStringValue)
    MessageAttributeValue.add_member(:string_values, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageAttributeStringValues, location_name: "StringValues"))
    MessageAttributeValue.type = Types::MessageAttributeValue
    MessagingDataType.add_member(:channel, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Channel", traits: {"smithy.api#enumValue" => "Channel"}))
    MessagingDataType.add_member(:channel_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ChannelMessage", traits: {"smithy.api#enumValue" => "ChannelMessage"}))
    MessagingSessionEndpoint.add_member(:url, ::Smithy::Schema::Shapes::MemberShape.new(target: UrlType, location_name: "Url"))
    MessagingSessionEndpoint.type = Types::MessagingSessionEndpoint
    NetworkType.add_member(:ipv4_only, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IPV4_ONLY", traits: {"smithy.api#enumValue" => "IPV4_ONLY"}))
    NetworkType.add_member(:dual_stack, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DUAL_STACK", traits: {"smithy.api#enumValue" => "DUAL_STACK"}))
    NotFoundException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, location_name: "Code"))
    NotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "Message"))
    NotFoundException.type = Types::NotFoundException
    Processor.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyResourceName, location_name: "Name", traits: {"smithy.api#required" => {}}))
    Processor.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ProcessorConfiguration, location_name: "Configuration", traits: {"smithy.api#required" => {}}))
    Processor.add_member(:execution_order, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelFlowExecutionOrder, location_name: "ExecutionOrder", traits: {"smithy.api#required" => {}}))
    Processor.add_member(:fallback_action, ::Smithy::Schema::Shapes::MemberShape.new(target: FallbackAction, location_name: "FallbackAction", traits: {"smithy.api#required" => {}}))
    Processor.type = Types::Processor
    ProcessorConfiguration.add_member(:lambda, ::Smithy::Schema::Shapes::MemberShape.new(target: LambdaConfiguration, location_name: "Lambda", traits: {"smithy.api#required" => {}}))
    ProcessorConfiguration.type = Types::ProcessorConfiguration
    ProcessorList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Processor)
    PushNotificationConfiguration.add_member(:title, ::Smithy::Schema::Shapes::MemberShape.new(target: PushNotificationTitle, location_name: "Title"))
    PushNotificationConfiguration.add_member(:body, ::Smithy::Schema::Shapes::MemberShape.new(target: PushNotificationBody, location_name: "Body"))
    PushNotificationConfiguration.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: PushNotificationType, location_name: "Type"))
    PushNotificationConfiguration.type = Types::PushNotificationConfiguration
    PushNotificationPreferences.add_member(:allow_notifications, ::Smithy::Schema::Shapes::MemberShape.new(target: AllowNotifications, location_name: "AllowNotifications", traits: {"smithy.api#required" => {}}))
    PushNotificationPreferences.add_member(:filter_rule, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterRule, location_name: "FilterRule"))
    PushNotificationPreferences.type = Types::PushNotificationPreferences
    PushNotificationType.add_member(:default, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DEFAULT", traits: {"smithy.api#enumValue" => "DEFAULT"}))
    PushNotificationType.add_member(:voip, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "VOIP", traits: {"smithy.api#enumValue" => "VOIP"}))
    PutChannelExpirationSettingsRequest.add_member(:channel_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, location_name: "ChannelArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutChannelExpirationSettingsRequest.add_member(:chime_bearer, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, location_name: "ChimeBearer", traits: {"smithy.api#httpHeader" => "x-amz-chime-bearer"}))
    PutChannelExpirationSettingsRequest.add_member(:expiration_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: ExpirationSettings, location_name: "ExpirationSettings"))
    PutChannelExpirationSettingsRequest.type = Types::PutChannelExpirationSettingsRequest
    PutChannelExpirationSettingsResponse.add_member(:channel_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, location_name: "ChannelArn"))
    PutChannelExpirationSettingsResponse.add_member(:expiration_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: ExpirationSettings, location_name: "ExpirationSettings"))
    PutChannelExpirationSettingsResponse.type = Types::PutChannelExpirationSettingsResponse
    PutChannelMembershipPreferencesRequest.add_member(:channel_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, location_name: "ChannelArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutChannelMembershipPreferencesRequest.add_member(:member_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, location_name: "MemberArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutChannelMembershipPreferencesRequest.add_member(:chime_bearer, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, location_name: "ChimeBearer", traits: {"smithy.api#httpHeader" => "x-amz-chime-bearer", "smithy.api#required" => {}}))
    PutChannelMembershipPreferencesRequest.add_member(:preferences, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelMembershipPreferences, location_name: "Preferences", traits: {"smithy.api#required" => {}}))
    PutChannelMembershipPreferencesRequest.type = Types::PutChannelMembershipPreferencesRequest
    PutChannelMembershipPreferencesResponse.add_member(:channel_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, location_name: "ChannelArn"))
    PutChannelMembershipPreferencesResponse.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Identity, location_name: "Member"))
    PutChannelMembershipPreferencesResponse.add_member(:preferences, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelMembershipPreferences, location_name: "Preferences"))
    PutChannelMembershipPreferencesResponse.type = Types::PutChannelMembershipPreferencesResponse
    PutMessagingStreamingConfigurationsRequest.add_member(:app_instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, location_name: "AppInstanceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutMessagingStreamingConfigurationsRequest.add_member(:streaming_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamingConfigurationList, location_name: "StreamingConfigurations", traits: {"smithy.api#required" => {}}))
    PutMessagingStreamingConfigurationsRequest.type = Types::PutMessagingStreamingConfigurationsRequest
    PutMessagingStreamingConfigurationsResponse.add_member(:streaming_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamingConfigurationList, location_name: "StreamingConfigurations"))
    PutMessagingStreamingConfigurationsResponse.type = Types::PutMessagingStreamingConfigurationsResponse
    RedactChannelMessageRequest.add_member(:channel_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, location_name: "ChannelArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RedactChannelMessageRequest.add_member(:message_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageId, location_name: "MessageId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RedactChannelMessageRequest.add_member(:chime_bearer, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, location_name: "ChimeBearer", traits: {"smithy.api#httpHeader" => "x-amz-chime-bearer", "smithy.api#required" => {}}))
    RedactChannelMessageRequest.add_member(:sub_channel_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SubChannelId, location_name: "SubChannelId"))
    RedactChannelMessageRequest.type = Types::RedactChannelMessageRequest
    RedactChannelMessageResponse.add_member(:channel_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, location_name: "ChannelArn"))
    RedactChannelMessageResponse.add_member(:message_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageId, location_name: "MessageId"))
    RedactChannelMessageResponse.add_member(:sub_channel_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SubChannelId, location_name: "SubChannelId"))
    RedactChannelMessageResponse.type = Types::RedactChannelMessageResponse
    ResourceLimitExceededException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, location_name: "Code"))
    ResourceLimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "Message"))
    ResourceLimitExceededException.type = Types::ResourceLimitExceededException
    SearchChannelsRequest.add_member(:chime_bearer, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, location_name: "ChimeBearer", traits: {"smithy.api#httpHeader" => "x-amz-chime-bearer"}))
    SearchChannelsRequest.add_member(:fields, ::Smithy::Schema::Shapes::MemberShape.new(target: SearchFields, location_name: "Fields", traits: {"smithy.api#required" => {}}))
    SearchChannelsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, location_name: "MaxResults", traits: {"smithy.api#httpQuery" => "max-results"}))
    SearchChannelsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken", traits: {"smithy.api#httpQuery" => "next-token"}))
    SearchChannelsRequest.type = Types::SearchChannelsRequest
    SearchChannelsResponse.add_member(:channels, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelSummaryList, location_name: "Channels"))
    SearchChannelsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken"))
    SearchChannelsResponse.type = Types::SearchChannelsResponse
    SearchField.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: SearchFieldKey, location_name: "Key", traits: {"smithy.api#required" => {}}))
    SearchField.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: SearchFieldValues, location_name: "Values", traits: {"smithy.api#required" => {}}))
    SearchField.add_member(:operator, ::Smithy::Schema::Shapes::MemberShape.new(target: SearchFieldOperator, location_name: "Operator", traits: {"smithy.api#required" => {}}))
    SearchField.type = Types::SearchField
    SearchFieldKey.add_member(:members, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MEMBERS", traits: {"smithy.api#enumValue" => "MEMBERS"}))
    SearchFieldOperator.add_member(:equals, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "EQUALS", traits: {"smithy.api#enumValue" => "EQUALS"}))
    SearchFieldOperator.add_member(:includes, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INCLUDES", traits: {"smithy.api#enumValue" => "INCLUDES"}))
    SearchFieldValues.member = ::Smithy::Schema::Shapes::MemberShape.new(target: SearchFieldValue)
    SearchFields.member = ::Smithy::Schema::Shapes::MemberShape.new(target: SearchField)
    SendChannelMessageRequest.add_member(:channel_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, location_name: "ChannelArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    SendChannelMessageRequest.add_member(:content, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyContent, location_name: "Content", traits: {"smithy.api#required" => {}}))
    SendChannelMessageRequest.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelMessageType, location_name: "Type", traits: {"smithy.api#required" => {}}))
    SendChannelMessageRequest.add_member(:persistence, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelMessagePersistenceType, location_name: "Persistence", traits: {"smithy.api#required" => {}}))
    SendChannelMessageRequest.add_member(:metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: Metadata, location_name: "Metadata"))
    SendChannelMessageRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestToken, location_name: "ClientRequestToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    SendChannelMessageRequest.add_member(:chime_bearer, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, location_name: "ChimeBearer", traits: {"smithy.api#httpHeader" => "x-amz-chime-bearer", "smithy.api#required" => {}}))
    SendChannelMessageRequest.add_member(:push_notification, ::Smithy::Schema::Shapes::MemberShape.new(target: PushNotificationConfiguration, location_name: "PushNotification"))
    SendChannelMessageRequest.add_member(:message_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageAttributeMap, location_name: "MessageAttributes"))
    SendChannelMessageRequest.add_member(:sub_channel_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SubChannelId, location_name: "SubChannelId"))
    SendChannelMessageRequest.add_member(:content_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentType, location_name: "ContentType"))
    SendChannelMessageRequest.add_member(:target, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetList, location_name: "Target"))
    SendChannelMessageRequest.type = Types::SendChannelMessageRequest
    SendChannelMessageResponse.add_member(:channel_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, location_name: "ChannelArn"))
    SendChannelMessageResponse.add_member(:message_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageId, location_name: "MessageId"))
    SendChannelMessageResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelMessageStatusStructure, location_name: "Status"))
    SendChannelMessageResponse.add_member(:sub_channel_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SubChannelId, location_name: "SubChannelId"))
    SendChannelMessageResponse.type = Types::SendChannelMessageResponse
    ServiceFailureException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, location_name: "Code"))
    ServiceFailureException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "Message"))
    ServiceFailureException.type = Types::ServiceFailureException
    ServiceUnavailableException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, location_name: "Code"))
    ServiceUnavailableException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "Message"))
    ServiceUnavailableException.type = Types::ServiceUnavailableException
    SortOrder.add_member(:ascending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ASCENDING", traits: {"smithy.api#enumValue" => "ASCENDING"}))
    SortOrder.add_member(:descending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DESCENDING", traits: {"smithy.api#enumValue" => "DESCENDING"}))
    StreamingConfiguration.add_member(:data_type, ::Smithy::Schema::Shapes::MemberShape.new(target: MessagingDataType, location_name: "DataType", traits: {"smithy.api#required" => {}}))
    StreamingConfiguration.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, location_name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    StreamingConfiguration.type = Types::StreamingConfiguration
    StreamingConfigurationList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: StreamingConfiguration)
    SubChannelSummary.add_member(:sub_channel_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SubChannelId, location_name: "SubChannelId"))
    SubChannelSummary.add_member(:membership_count, ::Smithy::Schema::Shapes::MemberShape.new(target: MembershipCount, location_name: "MembershipCount"))
    SubChannelSummary.type = Types::SubChannelSummary
    SubChannelSummaryList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: SubChannelSummary)
    Tag.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, location_name: "Key", traits: {"smithy.api#required" => {}}))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, location_name: "Value", traits: {"smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagKeyList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey)
    TagList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Tag)
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, location_name: "ResourceARN", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, location_name: "Tags", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    Target.add_member(:member_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, location_name: "MemberArn"))
    Target.type = Types::Target
    TargetList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Target)
    ThrottledClientException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, location_name: "Code"))
    ThrottledClientException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "Message"))
    ThrottledClientException.type = Types::ThrottledClientException
    UnauthorizedClientException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, location_name: "Code"))
    UnauthorizedClientException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "Message"))
    UnauthorizedClientException.type = Types::UnauthorizedClientException
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, location_name: "ResourceARN", traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, location_name: "TagKeys", traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UpdateChannelFlowRequest.add_member(:channel_flow_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, location_name: "ChannelFlowArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateChannelFlowRequest.add_member(:processors, ::Smithy::Schema::Shapes::MemberShape.new(target: ProcessorList, location_name: "Processors", traits: {"smithy.api#required" => {}}))
    UpdateChannelFlowRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyResourceName, location_name: "Name", traits: {"smithy.api#required" => {}}))
    UpdateChannelFlowRequest.type = Types::UpdateChannelFlowRequest
    UpdateChannelFlowResponse.add_member(:channel_flow_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, location_name: "ChannelFlowArn"))
    UpdateChannelFlowResponse.type = Types::UpdateChannelFlowResponse
    UpdateChannelMessageRequest.add_member(:channel_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, location_name: "ChannelArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateChannelMessageRequest.add_member(:message_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageId, location_name: "MessageId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateChannelMessageRequest.add_member(:content, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyContent, location_name: "Content", traits: {"smithy.api#required" => {}}))
    UpdateChannelMessageRequest.add_member(:metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: Metadata, location_name: "Metadata"))
    UpdateChannelMessageRequest.add_member(:chime_bearer, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, location_name: "ChimeBearer", traits: {"smithy.api#httpHeader" => "x-amz-chime-bearer", "smithy.api#required" => {}}))
    UpdateChannelMessageRequest.add_member(:sub_channel_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SubChannelId, location_name: "SubChannelId"))
    UpdateChannelMessageRequest.add_member(:content_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentType, location_name: "ContentType"))
    UpdateChannelMessageRequest.type = Types::UpdateChannelMessageRequest
    UpdateChannelMessageResponse.add_member(:channel_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, location_name: "ChannelArn"))
    UpdateChannelMessageResponse.add_member(:message_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageId, location_name: "MessageId"))
    UpdateChannelMessageResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelMessageStatusStructure, location_name: "Status"))
    UpdateChannelMessageResponse.add_member(:sub_channel_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SubChannelId, location_name: "SubChannelId"))
    UpdateChannelMessageResponse.type = Types::UpdateChannelMessageResponse
    UpdateChannelReadMarkerRequest.add_member(:channel_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, location_name: "ChannelArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateChannelReadMarkerRequest.add_member(:chime_bearer, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, location_name: "ChimeBearer", traits: {"smithy.api#httpHeader" => "x-amz-chime-bearer", "smithy.api#required" => {}}))
    UpdateChannelReadMarkerRequest.type = Types::UpdateChannelReadMarkerRequest
    UpdateChannelReadMarkerResponse.add_member(:channel_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, location_name: "ChannelArn"))
    UpdateChannelReadMarkerResponse.type = Types::UpdateChannelReadMarkerResponse
    UpdateChannelRequest.add_member(:channel_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, location_name: "ChannelArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateChannelRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyResourceName, location_name: "Name"))
    UpdateChannelRequest.add_member(:mode, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelMode, location_name: "Mode"))
    UpdateChannelRequest.add_member(:metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: Metadata, location_name: "Metadata"))
    UpdateChannelRequest.add_member(:chime_bearer, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, location_name: "ChimeBearer", traits: {"smithy.api#httpHeader" => "x-amz-chime-bearer", "smithy.api#required" => {}}))
    UpdateChannelRequest.type = Types::UpdateChannelRequest
    UpdateChannelResponse.add_member(:channel_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, location_name: "ChannelArn"))
    UpdateChannelResponse.type = Types::UpdateChannelResponse

    ChimeMessagingService = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.chimesdkmessaging#ChimeMessagingService"
      service.name = "ChimeMessagingService"
      service.version = "2021-05-15"
      service.traits = {"aws.api#service" => {"sdkId" => "Chime SDK Messaging", "arnNamespace" => "chime", "cloudFormationName" => "ChimeSDKMessaging", "cloudTrailEventSource" => "chimesdkmessaging.amazonaws.com", "endpointPrefix" => "messaging-chime"}, "aws.auth#sigv4" => {"name" => "chime"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "Amazon Chime SDK Messaging"}
      service.add_operation(:associate_channel_flow, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmessaging#AssociateChannelFlow"
        operation.name = "AssociateChannelFlow"
        operation.input = AssociateChannelFlowRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << NotFoundException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/channels/{ChannelArn}/channel-flow", "code" => 200}}
      end)
      service.add_operation(:batch_create_channel_membership, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmessaging#BatchCreateChannelMembership"
        operation.name = "BatchCreateChannelMembership"
        operation.input = BatchCreateChannelMembershipRequest
        operation.output = BatchCreateChannelMembershipResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << NotFoundException
        operation.errors << ResourceLimitExceededException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/channels/{ChannelArn}/memberships?operation=batch-create", "code" => 200}}
      end)
      service.add_operation(:channel_flow_callback, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmessaging#ChannelFlowCallback"
        operation.name = "ChannelFlowCallback"
        operation.input = ChannelFlowCallbackRequest
        operation.output = ChannelFlowCallbackResponse
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/channels/{ChannelArn}?operation=channel-flow-callback", "code" => 200}}
      end)
      service.add_operation(:create_channel, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmessaging#CreateChannel"
        operation.name = "CreateChannel"
        operation.input = CreateChannelRequest
        operation.output = CreateChannelResponse
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << ResourceLimitExceededException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/channels", "code" => 201}}
      end)
      service.add_operation(:create_channel_ban, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmessaging#CreateChannelBan"
        operation.name = "CreateChannelBan"
        operation.input = CreateChannelBanRequest
        operation.output = CreateChannelBanResponse
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << ResourceLimitExceededException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/channels/{ChannelArn}/bans", "code" => 201}}
      end)
      service.add_operation(:create_channel_flow, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmessaging#CreateChannelFlow"
        operation.name = "CreateChannelFlow"
        operation.input = CreateChannelFlowRequest
        operation.output = CreateChannelFlowResponse
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << ResourceLimitExceededException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/channel-flows", "code" => 201}}
      end)
      service.add_operation(:create_channel_membership, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmessaging#CreateChannelMembership"
        operation.name = "CreateChannelMembership"
        operation.input = CreateChannelMembershipRequest
        operation.output = CreateChannelMembershipResponse
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << NotFoundException
        operation.errors << ResourceLimitExceededException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/channels/{ChannelArn}/memberships", "code" => 201}}
      end)
      service.add_operation(:create_channel_moderator, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmessaging#CreateChannelModerator"
        operation.name = "CreateChannelModerator"
        operation.input = CreateChannelModeratorRequest
        operation.output = CreateChannelModeratorResponse
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << ResourceLimitExceededException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/channels/{ChannelArn}/moderators", "code" => 201}}
      end)
      service.add_operation(:delete_channel, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmessaging#DeleteChannel"
        operation.name = "DeleteChannel"
        operation.input = DeleteChannelRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/channels/{ChannelArn}", "code" => 204}}
      end)
      service.add_operation(:delete_channel_ban, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmessaging#DeleteChannelBan"
        operation.name = "DeleteChannelBan"
        operation.input = DeleteChannelBanRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/channels/{ChannelArn}/bans/{MemberArn}", "code" => 204}}
      end)
      service.add_operation(:delete_channel_flow, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmessaging#DeleteChannelFlow"
        operation.name = "DeleteChannelFlow"
        operation.input = DeleteChannelFlowRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/channel-flows/{ChannelFlowArn}", "code" => 204}}
      end)
      service.add_operation(:delete_channel_membership, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmessaging#DeleteChannelMembership"
        operation.name = "DeleteChannelMembership"
        operation.input = DeleteChannelMembershipRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/channels/{ChannelArn}/memberships/{MemberArn}", "code" => 204}}
      end)
      service.add_operation(:delete_channel_message, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmessaging#DeleteChannelMessage"
        operation.name = "DeleteChannelMessage"
        operation.input = DeleteChannelMessageRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/channels/{ChannelArn}/messages/{MessageId}", "code" => 204}}
      end)
      service.add_operation(:delete_channel_moderator, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmessaging#DeleteChannelModerator"
        operation.name = "DeleteChannelModerator"
        operation.input = DeleteChannelModeratorRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/channels/{ChannelArn}/moderators/{ChannelModeratorArn}", "code" => 204}}
      end)
      service.add_operation(:delete_messaging_streaming_configurations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmessaging#DeleteMessagingStreamingConfigurations"
        operation.name = "DeleteMessagingStreamingConfigurations"
        operation.input = DeleteMessagingStreamingConfigurationsRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/app-instances/{AppInstanceArn}/streaming-configurations", "code" => 204}}
      end)
      service.add_operation(:describe_channel, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmessaging#DescribeChannel"
        operation.name = "DescribeChannel"
        operation.input = DescribeChannelRequest
        operation.output = DescribeChannelResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/channels/{ChannelArn}", "code" => 200}}
      end)
      service.add_operation(:describe_channel_ban, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmessaging#DescribeChannelBan"
        operation.name = "DescribeChannelBan"
        operation.input = DescribeChannelBanRequest
        operation.output = DescribeChannelBanResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << NotFoundException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/channels/{ChannelArn}/bans/{MemberArn}", "code" => 200}}
      end)
      service.add_operation(:describe_channel_flow, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmessaging#DescribeChannelFlow"
        operation.name = "DescribeChannelFlow"
        operation.input = DescribeChannelFlowRequest
        operation.output = DescribeChannelFlowResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/channel-flows/{ChannelFlowArn}", "code" => 200}}
      end)
      service.add_operation(:describe_channel_membership, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmessaging#DescribeChannelMembership"
        operation.name = "DescribeChannelMembership"
        operation.input = DescribeChannelMembershipRequest
        operation.output = DescribeChannelMembershipResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << NotFoundException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/channels/{ChannelArn}/memberships/{MemberArn}", "code" => 200}}
      end)
      service.add_operation(:describe_channel_membership_for_app_instance_user, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmessaging#DescribeChannelMembershipForAppInstanceUser"
        operation.name = "DescribeChannelMembershipForAppInstanceUser"
        operation.input = DescribeChannelMembershipForAppInstanceUserRequest
        operation.output = DescribeChannelMembershipForAppInstanceUserResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/channels/{ChannelArn}?scope=app-instance-user-membership", "code" => 200}}
      end)
      service.add_operation(:describe_channel_moderated_by_app_instance_user, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmessaging#DescribeChannelModeratedByAppInstanceUser"
        operation.name = "DescribeChannelModeratedByAppInstanceUser"
        operation.input = DescribeChannelModeratedByAppInstanceUserRequest
        operation.output = DescribeChannelModeratedByAppInstanceUserResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/channels/{ChannelArn}?scope=app-instance-user-moderated-channel", "code" => 200}}
      end)
      service.add_operation(:describe_channel_moderator, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmessaging#DescribeChannelModerator"
        operation.name = "DescribeChannelModerator"
        operation.input = DescribeChannelModeratorRequest
        operation.output = DescribeChannelModeratorResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << NotFoundException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/channels/{ChannelArn}/moderators/{ChannelModeratorArn}", "code" => 200}}
      end)
      service.add_operation(:disassociate_channel_flow, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmessaging#DisassociateChannelFlow"
        operation.name = "DisassociateChannelFlow"
        operation.input = DisassociateChannelFlowRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << NotFoundException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/channels/{ChannelArn}/channel-flow/{ChannelFlowArn}", "code" => 204}}
      end)
      service.add_operation(:get_channel_membership_preferences, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmessaging#GetChannelMembershipPreferences"
        operation.name = "GetChannelMembershipPreferences"
        operation.input = GetChannelMembershipPreferencesRequest
        operation.output = GetChannelMembershipPreferencesResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/channels/{ChannelArn}/memberships/{MemberArn}/preferences", "code" => 200}}
      end)
      service.add_operation(:get_channel_message, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmessaging#GetChannelMessage"
        operation.name = "GetChannelMessage"
        operation.input = GetChannelMessageRequest
        operation.output = GetChannelMessageResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << NotFoundException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/channels/{ChannelArn}/messages/{MessageId}", "code" => 200}}
      end)
      service.add_operation(:get_channel_message_status, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmessaging#GetChannelMessageStatus"
        operation.name = "GetChannelMessageStatus"
        operation.input = GetChannelMessageStatusRequest
        operation.output = GetChannelMessageStatusResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/channels/{ChannelArn}/messages/{MessageId}?scope=message-status", "code" => 200}}
      end)
      service.add_operation(:get_messaging_session_endpoint, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmessaging#GetMessagingSessionEndpoint"
        operation.name = "GetMessagingSessionEndpoint"
        operation.input = GetMessagingSessionEndpointRequest
        operation.output = GetMessagingSessionEndpointResponse
        operation.errors << ForbiddenException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/endpoints/messaging-session", "code" => 200}}
      end)
      service.add_operation(:get_messaging_streaming_configurations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmessaging#GetMessagingStreamingConfigurations"
        operation.name = "GetMessagingStreamingConfigurations"
        operation.input = GetMessagingStreamingConfigurationsRequest
        operation.output = GetMessagingStreamingConfigurationsResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << NotFoundException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/app-instances/{AppInstanceArn}/streaming-configurations", "code" => 200}}
      end)
      service.add_operation(:list_channel_bans, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmessaging#ListChannelBans"
        operation.name = "ListChannelBans"
        operation.input = ListChannelBansRequest
        operation.output = ListChannelBansResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/channels/{ChannelArn}/bans", "code" => 200}}
        operation[:paginator] = Paginators::ListChannelBans.new
      end)
      service.add_operation(:list_channel_flows, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmessaging#ListChannelFlows"
        operation.name = "ListChannelFlows"
        operation.input = ListChannelFlowsRequest
        operation.output = ListChannelFlowsResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/channel-flows", "code" => 200}}
        operation[:paginator] = Paginators::ListChannelFlows.new
      end)
      service.add_operation(:list_channel_memberships, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmessaging#ListChannelMemberships"
        operation.name = "ListChannelMemberships"
        operation.input = ListChannelMembershipsRequest
        operation.output = ListChannelMembershipsResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/channels/{ChannelArn}/memberships", "code" => 200}}
        operation[:paginator] = Paginators::ListChannelMemberships.new
      end)
      service.add_operation(:list_channel_memberships_for_app_instance_user, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmessaging#ListChannelMembershipsForAppInstanceUser"
        operation.name = "ListChannelMembershipsForAppInstanceUser"
        operation.input = ListChannelMembershipsForAppInstanceUserRequest
        operation.output = ListChannelMembershipsForAppInstanceUserResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/channels?scope=app-instance-user-memberships", "code" => 200}}
        operation[:paginator] = Paginators::ListChannelMembershipsForAppInstanceUser.new
      end)
      service.add_operation(:list_channel_messages, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmessaging#ListChannelMessages"
        operation.name = "ListChannelMessages"
        operation.input = ListChannelMessagesRequest
        operation.output = ListChannelMessagesResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/channels/{ChannelArn}/messages", "code" => 200}}
        operation[:paginator] = Paginators::ListChannelMessages.new
      end)
      service.add_operation(:list_channel_moderators, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmessaging#ListChannelModerators"
        operation.name = "ListChannelModerators"
        operation.input = ListChannelModeratorsRequest
        operation.output = ListChannelModeratorsResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/channels/{ChannelArn}/moderators", "code" => 200}}
        operation[:paginator] = Paginators::ListChannelModerators.new
      end)
      service.add_operation(:list_channels, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmessaging#ListChannels"
        operation.name = "ListChannels"
        operation.input = ListChannelsRequest
        operation.output = ListChannelsResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/channels", "code" => 200}}
        operation[:paginator] = Paginators::ListChannels.new
      end)
      service.add_operation(:list_channels_associated_with_channel_flow, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmessaging#ListChannelsAssociatedWithChannelFlow"
        operation.name = "ListChannelsAssociatedWithChannelFlow"
        operation.input = ListChannelsAssociatedWithChannelFlowRequest
        operation.output = ListChannelsAssociatedWithChannelFlowResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/channels?scope=channel-flow-associations", "code" => 200}}
        operation[:paginator] = Paginators::ListChannelsAssociatedWithChannelFlow.new
      end)
      service.add_operation(:list_channels_moderated_by_app_instance_user, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmessaging#ListChannelsModeratedByAppInstanceUser"
        operation.name = "ListChannelsModeratedByAppInstanceUser"
        operation.input = ListChannelsModeratedByAppInstanceUserRequest
        operation.output = ListChannelsModeratedByAppInstanceUserResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/channels?scope=app-instance-user-moderated-channels", "code" => 200}}
        operation[:paginator] = Paginators::ListChannelsModeratedByAppInstanceUser.new
      end)
      service.add_operation(:list_sub_channels, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmessaging#ListSubChannels"
        operation.name = "ListSubChannels"
        operation.input = ListSubChannelsRequest
        operation.output = ListSubChannelsResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/channels/{ChannelArn}/subchannels", "code" => 200}}
        operation[:paginator] = Paginators::ListSubChannels.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmessaging#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceRequest
        operation.output = ListTagsForResourceResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/tags", "code" => 200}}
      end)
      service.add_operation(:put_channel_expiration_settings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmessaging#PutChannelExpirationSettings"
        operation.name = "PutChannelExpirationSettings"
        operation.input = PutChannelExpirationSettingsRequest
        operation.output = PutChannelExpirationSettingsResponse
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/channels/{ChannelArn}/expiration-settings", "code" => 200}}
      end)
      service.add_operation(:put_channel_membership_preferences, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmessaging#PutChannelMembershipPreferences"
        operation.name = "PutChannelMembershipPreferences"
        operation.input = PutChannelMembershipPreferencesRequest
        operation.output = PutChannelMembershipPreferencesResponse
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/channels/{ChannelArn}/memberships/{MemberArn}/preferences", "code" => 200}}
      end)
      service.add_operation(:put_messaging_streaming_configurations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmessaging#PutMessagingStreamingConfigurations"
        operation.name = "PutMessagingStreamingConfigurations"
        operation.input = PutMessagingStreamingConfigurationsRequest
        operation.output = PutMessagingStreamingConfigurationsResponse
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << NotFoundException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/app-instances/{AppInstanceArn}/streaming-configurations", "code" => 200}}
      end)
      service.add_operation(:redact_channel_message, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmessaging#RedactChannelMessage"
        operation.name = "RedactChannelMessage"
        operation.input = RedactChannelMessageRequest
        operation.output = RedactChannelMessageResponse
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/channels/{ChannelArn}/messages/{MessageId}?operation=redact", "code" => 200}}
      end)
      service.add_operation(:search_channels, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmessaging#SearchChannels"
        operation.name = "SearchChannels"
        operation.input = SearchChannelsRequest
        operation.output = SearchChannelsResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/channels?operation=search", "code" => 200}}
        operation[:paginator] = Paginators::SearchChannels.new
      end)
      service.add_operation(:send_channel_message, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmessaging#SendChannelMessage"
        operation.name = "SendChannelMessage"
        operation.input = SendChannelMessageRequest
        operation.output = SendChannelMessageResponse
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/channels/{ChannelArn}/messages", "code" => 201}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmessaging#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << ResourceLimitExceededException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/tags?operation=tag-resource", "code" => 204}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmessaging#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/tags?operation=untag-resource", "code" => 204}}
      end)
      service.add_operation(:update_channel, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmessaging#UpdateChannel"
        operation.name = "UpdateChannel"
        operation.input = UpdateChannelRequest
        operation.output = UpdateChannelResponse
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/channels/{ChannelArn}", "code" => 200}}
      end)
      service.add_operation(:update_channel_flow, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmessaging#UpdateChannelFlow"
        operation.name = "UpdateChannelFlow"
        operation.input = UpdateChannelFlowRequest
        operation.output = UpdateChannelFlowResponse
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/channel-flows/{ChannelFlowArn}", "code" => 200}}
      end)
      service.add_operation(:update_channel_message, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmessaging#UpdateChannelMessage"
        operation.name = "UpdateChannelMessage"
        operation.input = UpdateChannelMessageRequest
        operation.output = UpdateChannelMessageResponse
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/channels/{ChannelArn}/messages/{MessageId}", "code" => 200}}
      end)
      service.add_operation(:update_channel_read_marker, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmessaging#UpdateChannelReadMarker"
        operation.name = "UpdateChannelReadMarker"
        operation.input = UpdateChannelReadMarkerRequest
        operation.output = UpdateChannelReadMarkerResponse
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/channels/{ChannelArn}/readMarker", "code" => 200}}
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
