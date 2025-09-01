# frozen_string_literal: true

# This is generated code!

module Aws::ChimeSDKMessaging
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AllowNotifications = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.chimesdkmessaging#AllowNotifications', name: 'AllowNotifications')
    AppInstanceUserMembershipSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmessaging#AppInstanceUserMembershipSummary', name: 'AppInstanceUserMembershipSummary')
    AssociateChannelFlowRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmessaging#AssociateChannelFlowRequest', name: 'AssociateChannelFlowRequest')
    BadRequestException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmessaging#BadRequestException', name: 'BadRequestException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    BatchChannelMemberships = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmessaging#BatchChannelMemberships', name: 'BatchChannelMemberships')
    BatchCreateChannelMembershipError = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmessaging#BatchCreateChannelMembershipError', name: 'BatchCreateChannelMembershipError')
    BatchCreateChannelMembershipErrors = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.chimesdkmessaging#BatchCreateChannelMembershipErrors', name: 'BatchCreateChannelMembershipErrors')
    BatchCreateChannelMembershipRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmessaging#BatchCreateChannelMembershipRequest', name: 'BatchCreateChannelMembershipRequest')
    BatchCreateChannelMembershipResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmessaging#BatchCreateChannelMembershipResponse', name: 'BatchCreateChannelMembershipResponse')
    CallbackIdType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.chimesdkmessaging#CallbackIdType', name: 'CallbackIdType', traits: {"smithy.api#length" => {"min" => 32, "max" => 64}})
    Channel = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmessaging#Channel', name: 'Channel')
    ChannelAssociatedWithFlowSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmessaging#ChannelAssociatedWithFlowSummary', name: 'ChannelAssociatedWithFlowSummary')
    ChannelAssociatedWithFlowSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.chimesdkmessaging#ChannelAssociatedWithFlowSummaryList', name: 'ChannelAssociatedWithFlowSummaryList')
    ChannelBan = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmessaging#ChannelBan', name: 'ChannelBan')
    ChannelBanSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmessaging#ChannelBanSummary', name: 'ChannelBanSummary')
    ChannelBanSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.chimesdkmessaging#ChannelBanSummaryList', name: 'ChannelBanSummaryList')
    ChannelFlow = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmessaging#ChannelFlow', name: 'ChannelFlow')
    ChannelFlowCallbackRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmessaging#ChannelFlowCallbackRequest', name: 'ChannelFlowCallbackRequest')
    ChannelFlowCallbackResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmessaging#ChannelFlowCallbackResponse', name: 'ChannelFlowCallbackResponse')
    ChannelFlowExecutionOrder = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.chimesdkmessaging#ChannelFlowExecutionOrder', name: 'ChannelFlowExecutionOrder', traits: {"smithy.api#range" => {"min" => 1, "max" => 3}})
    ChannelFlowSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmessaging#ChannelFlowSummary', name: 'ChannelFlowSummary')
    ChannelFlowSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.chimesdkmessaging#ChannelFlowSummaryList', name: 'ChannelFlowSummaryList')
    ChannelId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.chimesdkmessaging#ChannelId', name: 'ChannelId', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[A-Za-z0-9]([A-Za-z0-9\\:\\-\\_\\.\\@]{0,62}[A-Za-z0-9])?$", "smithy.api#sensitive" => {}})
    ChannelMemberArns = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.chimesdkmessaging#ChannelMemberArns', name: 'ChannelMemberArns', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    ChannelMembership = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmessaging#ChannelMembership', name: 'ChannelMembership')
    ChannelMembershipForAppInstanceUserSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmessaging#ChannelMembershipForAppInstanceUserSummary', name: 'ChannelMembershipForAppInstanceUserSummary')
    ChannelMembershipForAppInstanceUserSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.chimesdkmessaging#ChannelMembershipForAppInstanceUserSummaryList', name: 'ChannelMembershipForAppInstanceUserSummaryList')
    ChannelMembershipPreferences = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmessaging#ChannelMembershipPreferences', name: 'ChannelMembershipPreferences')
    ChannelMembershipSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmessaging#ChannelMembershipSummary', name: 'ChannelMembershipSummary')
    ChannelMembershipSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.chimesdkmessaging#ChannelMembershipSummaryList', name: 'ChannelMembershipSummaryList')
    ChannelMembershipType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.chimesdkmessaging#ChannelMembershipType', name: 'ChannelMembershipType')
    ChannelMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmessaging#ChannelMessage', name: 'ChannelMessage')
    ChannelMessageCallback = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmessaging#ChannelMessageCallback', name: 'ChannelMessageCallback')
    ChannelMessagePersistenceType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.chimesdkmessaging#ChannelMessagePersistenceType', name: 'ChannelMessagePersistenceType')
    ChannelMessageStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.chimesdkmessaging#ChannelMessageStatus', name: 'ChannelMessageStatus')
    ChannelMessageStatusStructure = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmessaging#ChannelMessageStatusStructure', name: 'ChannelMessageStatusStructure')
    ChannelMessageSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmessaging#ChannelMessageSummary', name: 'ChannelMessageSummary')
    ChannelMessageSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.chimesdkmessaging#ChannelMessageSummaryList', name: 'ChannelMessageSummaryList')
    ChannelMessageType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.chimesdkmessaging#ChannelMessageType', name: 'ChannelMessageType')
    ChannelMode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.chimesdkmessaging#ChannelMode', name: 'ChannelMode')
    ChannelModeratedByAppInstanceUserSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmessaging#ChannelModeratedByAppInstanceUserSummary', name: 'ChannelModeratedByAppInstanceUserSummary')
    ChannelModeratedByAppInstanceUserSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.chimesdkmessaging#ChannelModeratedByAppInstanceUserSummaryList', name: 'ChannelModeratedByAppInstanceUserSummaryList')
    ChannelModerator = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmessaging#ChannelModerator', name: 'ChannelModerator')
    ChannelModeratorArns = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.chimesdkmessaging#ChannelModeratorArns', name: 'ChannelModeratorArns', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    ChannelModeratorSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmessaging#ChannelModeratorSummary', name: 'ChannelModeratorSummary')
    ChannelModeratorSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.chimesdkmessaging#ChannelModeratorSummaryList', name: 'ChannelModeratorSummaryList')
    ChannelPrivacy = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.chimesdkmessaging#ChannelPrivacy', name: 'ChannelPrivacy')
    ChannelSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmessaging#ChannelSummary', name: 'ChannelSummary')
    ChannelSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.chimesdkmessaging#ChannelSummaryList', name: 'ChannelSummaryList')
    ChimeArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.chimesdkmessaging#ChimeArn', name: 'ChimeArn', traits: {"smithy.api#length" => {"min" => 5, "max" => 1600}, "smithy.api#pattern" => "^arn:[a-z0-9-\\.]{1,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[^/].{0,1023}$"})
    ClientRequestToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.chimesdkmessaging#ClientRequestToken', name: 'ClientRequestToken', traits: {"smithy.api#length" => {"min" => 2, "max" => 64}, "smithy.api#pattern" => "^[-_a-zA-Z0-9]*$", "smithy.api#sensitive" => {}})
    ConflictException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmessaging#ConflictException', name: 'ConflictException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    Content = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.chimesdkmessaging#Content', name: 'Content', traits: {"smithy.api#length" => {"min" => 0, "max" => 4096}, "smithy.api#pattern" => "^[\\s\\S]*$", "smithy.api#sensitive" => {}})
    ContentType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.chimesdkmessaging#ContentType', name: 'ContentType', traits: {"smithy.api#length" => {"min" => 0, "max" => 45}, "smithy.api#pattern" => "^[\\s\\S]*$", "smithy.api#sensitive" => {}})
    CreateChannelBanRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmessaging#CreateChannelBanRequest', name: 'CreateChannelBanRequest')
    CreateChannelBanResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmessaging#CreateChannelBanResponse', name: 'CreateChannelBanResponse')
    CreateChannelFlowRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmessaging#CreateChannelFlowRequest', name: 'CreateChannelFlowRequest')
    CreateChannelFlowResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmessaging#CreateChannelFlowResponse', name: 'CreateChannelFlowResponse')
    CreateChannelMembershipRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmessaging#CreateChannelMembershipRequest', name: 'CreateChannelMembershipRequest')
    CreateChannelMembershipResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmessaging#CreateChannelMembershipResponse', name: 'CreateChannelMembershipResponse')
    CreateChannelModeratorRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmessaging#CreateChannelModeratorRequest', name: 'CreateChannelModeratorRequest')
    CreateChannelModeratorResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmessaging#CreateChannelModeratorResponse', name: 'CreateChannelModeratorResponse')
    CreateChannelRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmessaging#CreateChannelRequest', name: 'CreateChannelRequest')
    CreateChannelResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmessaging#CreateChannelResponse', name: 'CreateChannelResponse')
    DeleteChannelBanRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmessaging#DeleteChannelBanRequest', name: 'DeleteChannelBanRequest')
    DeleteChannelFlowRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmessaging#DeleteChannelFlowRequest', name: 'DeleteChannelFlowRequest')
    DeleteChannelMembershipRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmessaging#DeleteChannelMembershipRequest', name: 'DeleteChannelMembershipRequest')
    DeleteChannelMessageRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmessaging#DeleteChannelMessageRequest', name: 'DeleteChannelMessageRequest')
    DeleteChannelModeratorRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmessaging#DeleteChannelModeratorRequest', name: 'DeleteChannelModeratorRequest')
    DeleteChannelRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmessaging#DeleteChannelRequest', name: 'DeleteChannelRequest')
    DeleteMessagingStreamingConfigurationsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmessaging#DeleteMessagingStreamingConfigurationsRequest', name: 'DeleteMessagingStreamingConfigurationsRequest')
    DescribeChannelBanRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmessaging#DescribeChannelBanRequest', name: 'DescribeChannelBanRequest')
    DescribeChannelBanResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmessaging#DescribeChannelBanResponse', name: 'DescribeChannelBanResponse')
    DescribeChannelFlowRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmessaging#DescribeChannelFlowRequest', name: 'DescribeChannelFlowRequest')
    DescribeChannelFlowResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmessaging#DescribeChannelFlowResponse', name: 'DescribeChannelFlowResponse')
    DescribeChannelMembershipForAppInstanceUserRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmessaging#DescribeChannelMembershipForAppInstanceUserRequest', name: 'DescribeChannelMembershipForAppInstanceUserRequest')
    DescribeChannelMembershipForAppInstanceUserResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmessaging#DescribeChannelMembershipForAppInstanceUserResponse', name: 'DescribeChannelMembershipForAppInstanceUserResponse')
    DescribeChannelMembershipRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmessaging#DescribeChannelMembershipRequest', name: 'DescribeChannelMembershipRequest')
    DescribeChannelMembershipResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmessaging#DescribeChannelMembershipResponse', name: 'DescribeChannelMembershipResponse')
    DescribeChannelModeratedByAppInstanceUserRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmessaging#DescribeChannelModeratedByAppInstanceUserRequest', name: 'DescribeChannelModeratedByAppInstanceUserRequest')
    DescribeChannelModeratedByAppInstanceUserResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmessaging#DescribeChannelModeratedByAppInstanceUserResponse', name: 'DescribeChannelModeratedByAppInstanceUserResponse')
    DescribeChannelModeratorRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmessaging#DescribeChannelModeratorRequest', name: 'DescribeChannelModeratorRequest')
    DescribeChannelModeratorResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmessaging#DescribeChannelModeratorResponse', name: 'DescribeChannelModeratorResponse')
    DescribeChannelRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmessaging#DescribeChannelRequest', name: 'DescribeChannelRequest')
    DescribeChannelResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmessaging#DescribeChannelResponse', name: 'DescribeChannelResponse')
    DisassociateChannelFlowRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmessaging#DisassociateChannelFlowRequest', name: 'DisassociateChannelFlowRequest')
    ElasticChannelConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmessaging#ElasticChannelConfiguration', name: 'ElasticChannelConfiguration')
    ErrorCode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.chimesdkmessaging#ErrorCode', name: 'ErrorCode')
    ExpirationCriterion = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.chimesdkmessaging#ExpirationCriterion', name: 'ExpirationCriterion')
    ExpirationDays = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.chimesdkmessaging#ExpirationDays', name: 'ExpirationDays', traits: {"smithy.api#range" => {"min" => 1, "max" => 5475}})
    ExpirationSettings = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmessaging#ExpirationSettings', name: 'ExpirationSettings')
    FallbackAction = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.chimesdkmessaging#FallbackAction', name: 'FallbackAction')
    FilterRule = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.chimesdkmessaging#FilterRule', name: 'FilterRule', traits: {"smithy.api#length" => {"min" => 1}, "smithy.api#pattern" => "^[\\s\\S]*$", "smithy.api#sensitive" => {}})
    ForbiddenException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmessaging#ForbiddenException', name: 'ForbiddenException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    GetChannelMembershipPreferencesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmessaging#GetChannelMembershipPreferencesRequest', name: 'GetChannelMembershipPreferencesRequest')
    GetChannelMembershipPreferencesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmessaging#GetChannelMembershipPreferencesResponse', name: 'GetChannelMembershipPreferencesResponse')
    GetChannelMessageRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmessaging#GetChannelMessageRequest', name: 'GetChannelMessageRequest')
    GetChannelMessageResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmessaging#GetChannelMessageResponse', name: 'GetChannelMessageResponse')
    GetChannelMessageStatusRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmessaging#GetChannelMessageStatusRequest', name: 'GetChannelMessageStatusRequest')
    GetChannelMessageStatusResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmessaging#GetChannelMessageStatusResponse', name: 'GetChannelMessageStatusResponse')
    GetMessagingSessionEndpointRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmessaging#GetMessagingSessionEndpointRequest', name: 'GetMessagingSessionEndpointRequest')
    GetMessagingSessionEndpointResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmessaging#GetMessagingSessionEndpointResponse', name: 'GetMessagingSessionEndpointResponse')
    GetMessagingStreamingConfigurationsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmessaging#GetMessagingStreamingConfigurationsRequest', name: 'GetMessagingStreamingConfigurationsRequest')
    GetMessagingStreamingConfigurationsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmessaging#GetMessagingStreamingConfigurationsResponse', name: 'GetMessagingStreamingConfigurationsResponse')
    Identity = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmessaging#Identity', name: 'Identity')
    InvocationType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.chimesdkmessaging#InvocationType', name: 'InvocationType')
    LambdaConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmessaging#LambdaConfiguration', name: 'LambdaConfiguration')
    LambdaFunctionArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.chimesdkmessaging#LambdaFunctionArn', name: 'LambdaFunctionArn', traits: {"smithy.api#length" => {"min" => 15, "max" => 2048}, "smithy.api#pattern" => "^arn:aws:lambda:[a-z]{2}-[a-z]+-\\d{1}:\\d{12}:function:[a-zA-Z0-9\\-_\\.]+(:(\\$LATEST|[a-zA-Z0-9\\-_]+))?$"})
    ListChannelBansRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmessaging#ListChannelBansRequest', name: 'ListChannelBansRequest')
    ListChannelBansResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmessaging#ListChannelBansResponse', name: 'ListChannelBansResponse')
    ListChannelFlowsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmessaging#ListChannelFlowsRequest', name: 'ListChannelFlowsRequest')
    ListChannelFlowsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmessaging#ListChannelFlowsResponse', name: 'ListChannelFlowsResponse')
    ListChannelMembershipsForAppInstanceUserRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmessaging#ListChannelMembershipsForAppInstanceUserRequest', name: 'ListChannelMembershipsForAppInstanceUserRequest')
    ListChannelMembershipsForAppInstanceUserResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmessaging#ListChannelMembershipsForAppInstanceUserResponse', name: 'ListChannelMembershipsForAppInstanceUserResponse')
    ListChannelMembershipsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmessaging#ListChannelMembershipsRequest', name: 'ListChannelMembershipsRequest')
    ListChannelMembershipsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmessaging#ListChannelMembershipsResponse', name: 'ListChannelMembershipsResponse')
    ListChannelMessagesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmessaging#ListChannelMessagesRequest', name: 'ListChannelMessagesRequest')
    ListChannelMessagesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmessaging#ListChannelMessagesResponse', name: 'ListChannelMessagesResponse')
    ListChannelModeratorsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmessaging#ListChannelModeratorsRequest', name: 'ListChannelModeratorsRequest')
    ListChannelModeratorsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmessaging#ListChannelModeratorsResponse', name: 'ListChannelModeratorsResponse')
    ListChannelsAssociatedWithChannelFlowRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmessaging#ListChannelsAssociatedWithChannelFlowRequest', name: 'ListChannelsAssociatedWithChannelFlowRequest')
    ListChannelsAssociatedWithChannelFlowResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmessaging#ListChannelsAssociatedWithChannelFlowResponse', name: 'ListChannelsAssociatedWithChannelFlowResponse')
    ListChannelsModeratedByAppInstanceUserRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmessaging#ListChannelsModeratedByAppInstanceUserRequest', name: 'ListChannelsModeratedByAppInstanceUserRequest')
    ListChannelsModeratedByAppInstanceUserResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmessaging#ListChannelsModeratedByAppInstanceUserResponse', name: 'ListChannelsModeratedByAppInstanceUserResponse')
    ListChannelsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmessaging#ListChannelsRequest', name: 'ListChannelsRequest')
    ListChannelsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmessaging#ListChannelsResponse', name: 'ListChannelsResponse')
    ListSubChannelsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmessaging#ListSubChannelsRequest', name: 'ListSubChannelsRequest')
    ListSubChannelsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmessaging#ListSubChannelsResponse', name: 'ListSubChannelsResponse')
    ListTagsForResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmessaging#ListTagsForResourceRequest', name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmessaging#ListTagsForResourceResponse', name: 'ListTagsForResourceResponse')
    MaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.chimesdkmessaging#MaxResults', name: 'MaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 50}})
    MaximumSubChannels = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.chimesdkmessaging#MaximumSubChannels', name: 'MaximumSubChannels', traits: {"smithy.api#range" => {"min" => 2}})
    MemberArns = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.chimesdkmessaging#MemberArns', name: 'MemberArns', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    Members = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.chimesdkmessaging#Members', name: 'Members')
    MembershipCount = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.chimesdkmessaging#MembershipCount', name: 'MembershipCount')
    MessageAttributeMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.chimesdkmessaging#MessageAttributeMap', name: 'MessageAttributeMap')
    MessageAttributeName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.chimesdkmessaging#MessageAttributeName', name: 'MessageAttributeName', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[\\s\\S]*$", "smithy.api#sensitive" => {}})
    MessageAttributeStringValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.chimesdkmessaging#MessageAttributeStringValue', name: 'MessageAttributeStringValue', traits: {"smithy.api#length" => {"min" => 1, "max" => 512}, "smithy.api#pattern" => "^[\\s\\S]*$", "smithy.api#sensitive" => {}})
    MessageAttributeStringValues = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.chimesdkmessaging#MessageAttributeStringValues', name: 'MessageAttributeStringValues')
    MessageAttributeValue = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmessaging#MessageAttributeValue', name: 'MessageAttributeValue')
    MessageId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.chimesdkmessaging#MessageId', name: 'MessageId', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[-_a-zA-Z0-9]*$"})
    MessagingDataType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.chimesdkmessaging#MessagingDataType', name: 'MessagingDataType')
    MessagingSessionEndpoint = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmessaging#MessagingSessionEndpoint', name: 'MessagingSessionEndpoint')
    Metadata = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.chimesdkmessaging#Metadata', name: 'Metadata', traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#pattern" => ".*", "smithy.api#sensitive" => {}})
    MinimumMembershipPercentage = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.chimesdkmessaging#MinimumMembershipPercentage', name: 'MinimumMembershipPercentage', traits: {"smithy.api#range" => {"min" => 1, "max" => 40}})
    NextToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.chimesdkmessaging#NextToken', name: 'NextToken', traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}, "smithy.api#pattern" => ".*", "smithy.api#sensitive" => {}})
    NonEmptyContent = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.chimesdkmessaging#NonEmptyContent', name: 'NonEmptyContent', traits: {"smithy.api#length" => {"min" => 1}, "smithy.api#pattern" => "^[\\s\\S]*$", "smithy.api#sensitive" => {}})
    NonEmptyResourceName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.chimesdkmessaging#NonEmptyResourceName', name: 'NonEmptyResourceName', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[\\u0009\\u000A\\u000D\\u0020-\\u007E\\u0085\\u00A0-\\uD7FF\\uE000-\\uFFFD\\u10000-\\u10FFFF]*$", "smithy.api#sensitive" => {}})
    NonNullableBoolean = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.chimesdkmessaging#NonNullableBoolean', name: 'NonNullableBoolean', traits: {"smithy.api#default" => false})
    NotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmessaging#NotFoundException', name: 'NotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    Processor = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmessaging#Processor', name: 'Processor')
    ProcessorConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmessaging#ProcessorConfiguration', name: 'ProcessorConfiguration')
    ProcessorList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.chimesdkmessaging#ProcessorList', name: 'ProcessorList', traits: {"smithy.api#length" => {"min" => 1, "max" => 3}})
    PushNotificationBody = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.chimesdkmessaging#PushNotificationBody', name: 'PushNotificationBody', traits: {"smithy.api#length" => {"min" => 1, "max" => 150}, "smithy.api#pattern" => "^[\\s\\S]*$", "smithy.api#sensitive" => {}})
    PushNotificationConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmessaging#PushNotificationConfiguration', name: 'PushNotificationConfiguration')
    PushNotificationPreferences = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmessaging#PushNotificationPreferences', name: 'PushNotificationPreferences')
    PushNotificationTitle = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.chimesdkmessaging#PushNotificationTitle', name: 'PushNotificationTitle', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}, "smithy.api#pattern" => ".*", "smithy.api#sensitive" => {}})
    PushNotificationType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.chimesdkmessaging#PushNotificationType', name: 'PushNotificationType')
    PutChannelExpirationSettingsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmessaging#PutChannelExpirationSettingsRequest', name: 'PutChannelExpirationSettingsRequest')
    PutChannelExpirationSettingsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmessaging#PutChannelExpirationSettingsResponse', name: 'PutChannelExpirationSettingsResponse')
    PutChannelMembershipPreferencesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmessaging#PutChannelMembershipPreferencesRequest', name: 'PutChannelMembershipPreferencesRequest')
    PutChannelMembershipPreferencesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmessaging#PutChannelMembershipPreferencesResponse', name: 'PutChannelMembershipPreferencesResponse')
    PutMessagingStreamingConfigurationsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmessaging#PutMessagingStreamingConfigurationsRequest', name: 'PutMessagingStreamingConfigurationsRequest')
    PutMessagingStreamingConfigurationsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmessaging#PutMessagingStreamingConfigurationsResponse', name: 'PutMessagingStreamingConfigurationsResponse')
    RedactChannelMessageRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmessaging#RedactChannelMessageRequest', name: 'RedactChannelMessageRequest')
    RedactChannelMessageResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmessaging#RedactChannelMessageResponse', name: 'RedactChannelMessageResponse')
    ResourceLimitExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmessaging#ResourceLimitExceededException', name: 'ResourceLimitExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ResourceName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.chimesdkmessaging#ResourceName', name: 'ResourceName', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[\\u0009\\u000A\\u000D\\u0020-\\u007E\\u0085\\u00A0-\\uD7FF\\uE000-\\uFFFD\\u10000-\\u10FFFF]*$", "smithy.api#sensitive" => {}})
    SearchChannelsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmessaging#SearchChannelsRequest', name: 'SearchChannelsRequest')
    SearchChannelsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmessaging#SearchChannelsResponse', name: 'SearchChannelsResponse')
    SearchField = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmessaging#SearchField', name: 'SearchField')
    SearchFieldKey = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.chimesdkmessaging#SearchFieldKey', name: 'SearchFieldKey')
    SearchFieldOperator = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.chimesdkmessaging#SearchFieldOperator', name: 'SearchFieldOperator')
    SearchFieldValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.chimesdkmessaging#SearchFieldValue', name: 'SearchFieldValue', traits: {"smithy.api#length" => {"min" => 1, "max" => 512}, "smithy.api#pattern" => "^[\\s\\S]*$"})
    SearchFieldValues = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.chimesdkmessaging#SearchFieldValues', name: 'SearchFieldValues', traits: {"smithy.api#length" => {"min" => 1, "max" => 20}})
    SearchFields = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.chimesdkmessaging#SearchFields', name: 'SearchFields', traits: {"smithy.api#length" => {"min" => 1, "max" => 20}})
    SendChannelMessageRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmessaging#SendChannelMessageRequest', name: 'SendChannelMessageRequest')
    SendChannelMessageResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmessaging#SendChannelMessageResponse', name: 'SendChannelMessageResponse')
    ServiceFailureException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmessaging#ServiceFailureException', name: 'ServiceFailureException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    ServiceUnavailableException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmessaging#ServiceUnavailableException', name: 'ServiceUnavailableException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 503})
    SortOrder = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.chimesdkmessaging#SortOrder', name: 'SortOrder')
    StatusDetail = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.chimesdkmessaging#StatusDetail', name: 'StatusDetail', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[\\s\\S]*$"})
    StreamingConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmessaging#StreamingConfiguration', name: 'StreamingConfiguration')
    StreamingConfigurationList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.chimesdkmessaging#StreamingConfigurationList', name: 'StreamingConfigurationList', traits: {"smithy.api#length" => {"min" => 1, "max" => 2}})
    String = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.chimesdkmessaging#String', name: 'String')
    SubChannelId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.chimesdkmessaging#SubChannelId', name: 'SubChannelId', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[-_a-zA-Z0-9]*$"})
    SubChannelSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmessaging#SubChannelSummary', name: 'SubChannelSummary')
    SubChannelSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.chimesdkmessaging#SubChannelSummaryList', name: 'SubChannelSummaryList')
    Tag = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmessaging#Tag', name: 'Tag')
    TagKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.chimesdkmessaging#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#sensitive" => {}})
    TagKeyList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.chimesdkmessaging#TagKeyList', name: 'TagKeyList', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    TagList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.chimesdkmessaging#TagList', name: 'TagList', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    TagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmessaging#TagResourceRequest', name: 'TagResourceRequest')
    TagValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.chimesdkmessaging#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#sensitive" => {}})
    Target = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmessaging#Target', name: 'Target')
    TargetList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.chimesdkmessaging#TargetList', name: 'TargetList', traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    TargetMembershipsPerSubChannel = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.chimesdkmessaging#TargetMembershipsPerSubChannel', name: 'TargetMembershipsPerSubChannel', traits: {"smithy.api#range" => {"min" => 2}})
    ThrottledClientException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmessaging#ThrottledClientException', name: 'ThrottledClientException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    Timestamp = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.chimesdkmessaging#Timestamp', name: 'Timestamp')
    UnauthorizedClientException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmessaging#UnauthorizedClientException', name: 'UnauthorizedClientException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 401})
    UntagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmessaging#UntagResourceRequest', name: 'UntagResourceRequest')
    UpdateChannelFlowRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmessaging#UpdateChannelFlowRequest', name: 'UpdateChannelFlowRequest')
    UpdateChannelFlowResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmessaging#UpdateChannelFlowResponse', name: 'UpdateChannelFlowResponse')
    UpdateChannelMessageRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmessaging#UpdateChannelMessageRequest', name: 'UpdateChannelMessageRequest')
    UpdateChannelMessageResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmessaging#UpdateChannelMessageResponse', name: 'UpdateChannelMessageResponse')
    UpdateChannelReadMarkerRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmessaging#UpdateChannelReadMarkerRequest', name: 'UpdateChannelReadMarkerRequest')
    UpdateChannelReadMarkerResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmessaging#UpdateChannelReadMarkerResponse', name: 'UpdateChannelReadMarkerResponse')
    UpdateChannelRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmessaging#UpdateChannelRequest', name: 'UpdateChannelRequest')
    UpdateChannelResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmessaging#UpdateChannelResponse', name: 'UpdateChannelResponse')
    UrlType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.chimesdkmessaging#UrlType', name: 'UrlType', traits: {"smithy.api#length" => {"min" => 0, "max" => 4096}})

    AllowNotifications.add_member(:all, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ALL', traits: {"smithy.api#enumValue" => "ALL"}))
    AllowNotifications.add_member(:none, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NONE', traits: {"smithy.api#enumValue" => "NONE"}))
    AllowNotifications.add_member(:filtered, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FILTERED', traits: {"smithy.api#enumValue" => "FILTERED"}))
    AppInstanceUserMembershipSummary.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelMembershipType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The type of <code>ChannelMembership</code>.</p>"}))
    AppInstanceUserMembershipSummary.add_member(:read_marker_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'ReadMarkerTimestamp', traits: {"smithy.api#documentation" => "<p>The time at which an <code>AppInstanceUser</code> last marked a channel as read.</p>"}))
    AppInstanceUserMembershipSummary.add_member(:sub_channel_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SubChannelId, location_name: 'SubChannelId', traits: {"smithy.api#documentation" => "<p>The ID of the SubChannel that the <code>AppInstanceUser</code> is a member of.</p>"}))
    AppInstanceUserMembershipSummary.type = Types::AppInstanceUserMembershipSummary
    AssociateChannelFlowRequest.add_member(:channel_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'ChannelArn', traits: {"smithy.api#documentation" => "<p>The ARN of the channel.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AssociateChannelFlowRequest.add_member(:channel_flow_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'ChannelFlowArn', traits: {"smithy.api#documentation" => "<p>The ARN of the channel flow.</p>", "smithy.api#required" => {}}))
    AssociateChannelFlowRequest.add_member(:chime_bearer, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'ChimeBearer', traits: {"smithy.api#documentation" => "<p>The <code>AppInstanceUserArn</code> of the user making the API call.</p>", "smithy.api#httpHeader" => "x-amz-chime-bearer", "smithy.api#required" => {}}))
    AssociateChannelFlowRequest.type = Types::AssociateChannelFlowRequest
    BadRequestException.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'Code'))
    BadRequestException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    BadRequestException.type = Types::BadRequestException
    BatchChannelMemberships.add_member(:invited_by, Smithy::Schema::Shapes::ShapeRef.new(shape: Identity, location_name: 'InvitedBy', traits: {"smithy.api#documentation" => "<p>The identifier of the member who invited another member.</p>"}))
    BatchChannelMemberships.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelMembershipType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The membership types set for the channel members.</p>"}))
    BatchChannelMemberships.add_member(:members, Smithy::Schema::Shapes::ShapeRef.new(shape: Members, location_name: 'Members', traits: {"smithy.api#documentation" => "<p>The users successfully added to the request.</p>"}))
    BatchChannelMemberships.add_member(:channel_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'ChannelArn', traits: {"smithy.api#documentation" => "<p>The ARN of the channel to which you're adding members.</p>"}))
    BatchChannelMemberships.add_member(:sub_channel_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SubChannelId, location_name: 'SubChannelId', traits: {"smithy.api#documentation" => "<p>The ID of the SubChannel.</p>"}))
    BatchChannelMemberships.type = Types::BatchChannelMemberships
    BatchCreateChannelMembershipError.add_member(:member_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'MemberArn', traits: {"smithy.api#documentation" => "<p>The <code>AppInstanceUserArn</code> of the member that the service couldn't add.</p>"}))
    BatchCreateChannelMembershipError.add_member(:error_code, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'ErrorCode', traits: {"smithy.api#documentation" => "<p>The error code.</p>"}))
    BatchCreateChannelMembershipError.add_member(:error_message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ErrorMessage', traits: {"smithy.api#documentation" => "<p>The error message.</p>"}))
    BatchCreateChannelMembershipError.type = Types::BatchCreateChannelMembershipError
    BatchCreateChannelMembershipErrors.member = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchCreateChannelMembershipError)
    BatchCreateChannelMembershipRequest.add_member(:channel_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'ChannelArn', traits: {"smithy.api#documentation" => "<p>The ARN of the channel to which you're adding users or bots.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    BatchCreateChannelMembershipRequest.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelMembershipType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The membership type of a user, <code>DEFAULT</code> or <code>HIDDEN</code>. Default\n         members are always returned as part of <code>ListChannelMemberships</code>. Hidden members\n         are only returned if the type filter in <code>ListChannelMemberships</code> equals\n            <code>HIDDEN</code>. Otherwise hidden members are not returned. This is only supported\n         by moderators.</p>"}))
    BatchCreateChannelMembershipRequest.add_member(:member_arns, Smithy::Schema::Shapes::ShapeRef.new(shape: MemberArns, location_name: 'MemberArns', traits: {"smithy.api#documentation" => "<p>The ARNs of the members you want to add to the channel. Only <code>AppInstanceUsers</code> and \n         <code>AppInstanceBots</code> can be added as a channel member.</p>", "smithy.api#required" => {}}))
    BatchCreateChannelMembershipRequest.add_member(:chime_bearer, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'ChimeBearer', traits: {"smithy.api#documentation" => "<p>The ARN of the <code>AppInstanceUser</code> or <code>AppInstanceBot</code> \n         that makes the API call.</p>", "smithy.api#httpHeader" => "x-amz-chime-bearer", "smithy.api#required" => {}}))
    BatchCreateChannelMembershipRequest.add_member(:sub_channel_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SubChannelId, location_name: 'SubChannelId', traits: {"smithy.api#documentation" => "<p>The ID of the SubChannel in the request. </p>\n         <note>\n            <p>Only required when creating membership in a SubChannel for a moderator in an elastic channel.</p>\n         </note>"}))
    BatchCreateChannelMembershipRequest.type = Types::BatchCreateChannelMembershipRequest
    BatchCreateChannelMembershipResponse.add_member(:batch_channel_memberships, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchChannelMemberships, location_name: 'BatchChannelMemberships', traits: {"smithy.api#documentation" => "<p>The list of channel memberships in the response.</p>"}))
    BatchCreateChannelMembershipResponse.add_member(:errors, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchCreateChannelMembershipErrors, location_name: 'Errors', traits: {"smithy.api#documentation" => "<p>If the action fails for one or more of the memberships in the request, a list of the\n         memberships is returned, along with error codes and error messages.</p>"}))
    BatchCreateChannelMembershipResponse.type = Types::BatchCreateChannelMembershipResponse
    Channel.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyResourceName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of a channel.</p>"}))
    Channel.add_member(:channel_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'ChannelArn', traits: {"smithy.api#documentation" => "<p>The ARN of a channel.</p>"}))
    Channel.add_member(:mode, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelMode, location_name: 'Mode', traits: {"smithy.api#documentation" => "<p>The mode of the channel.</p>"}))
    Channel.add_member(:privacy, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelPrivacy, location_name: 'Privacy', traits: {"smithy.api#documentation" => "<p>The channel's privacy setting.</p>"}))
    Channel.add_member(:metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: Metadata, location_name: 'Metadata', traits: {"smithy.api#documentation" => "<p>The channel's metadata.</p>"}))
    Channel.add_member(:created_by, Smithy::Schema::Shapes::ShapeRef.new(shape: Identity, location_name: 'CreatedBy', traits: {"smithy.api#documentation" => "<p>The <code>AppInstanceUser</code> who created the channel.</p>"}))
    Channel.add_member(:created_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreatedTimestamp', traits: {"smithy.api#documentation" => "<p>The time at which the <code>AppInstanceUser</code> created the channel.</p>"}))
    Channel.add_member(:last_message_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastMessageTimestamp', traits: {"smithy.api#documentation" => "<p>The time at which a member sent the last message in the channel.</p>"}))
    Channel.add_member(:last_updated_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastUpdatedTimestamp', traits: {"smithy.api#documentation" => "<p>The time at which a channel was last updated.</p>"}))
    Channel.add_member(:channel_flow_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'ChannelFlowArn', traits: {"smithy.api#documentation" => "<p>The ARN of the channel flow.</p>"}))
    Channel.add_member(:elastic_channel_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ElasticChannelConfiguration, location_name: 'ElasticChannelConfiguration', traits: {"smithy.api#documentation" => "<p>The attributes required to configure and create an elastic channel. An elastic channel can support a maximum of 1-million members.</p>"}))
    Channel.add_member(:expiration_settings, Smithy::Schema::Shapes::ShapeRef.new(shape: ExpirationSettings, location_name: 'ExpirationSettings', traits: {"smithy.api#documentation" => "<p>Settings that control when a channel expires.</p>"}))
    Channel.type = Types::Channel
    ChannelAssociatedWithFlowSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyResourceName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the channel flow.</p>"}))
    ChannelAssociatedWithFlowSummary.add_member(:channel_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'ChannelArn', traits: {"smithy.api#documentation" => "<p>The ARN of the channel.</p>"}))
    ChannelAssociatedWithFlowSummary.add_member(:mode, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelMode, location_name: 'Mode', traits: {"smithy.api#documentation" => "<p>The mode of the channel.</p>"}))
    ChannelAssociatedWithFlowSummary.add_member(:privacy, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelPrivacy, location_name: 'Privacy', traits: {"smithy.api#documentation" => "<p>The channel's privacy setting.</p>"}))
    ChannelAssociatedWithFlowSummary.add_member(:metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: Metadata, location_name: 'Metadata', traits: {"smithy.api#documentation" => "<p>The channel's metadata.</p>"}))
    ChannelAssociatedWithFlowSummary.type = Types::ChannelAssociatedWithFlowSummary
    ChannelAssociatedWithFlowSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelAssociatedWithFlowSummary)
    ChannelBan.add_member(:member, Smithy::Schema::Shapes::ShapeRef.new(shape: Identity, location_name: 'Member', traits: {"smithy.api#documentation" => "<p>The member being banned from the channel.</p>"}))
    ChannelBan.add_member(:channel_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'ChannelArn', traits: {"smithy.api#documentation" => "<p>The ARN of the channel from which a member is being banned.</p>"}))
    ChannelBan.add_member(:created_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreatedTimestamp', traits: {"smithy.api#documentation" => "<p>The time at which the ban was created.</p>"}))
    ChannelBan.add_member(:created_by, Smithy::Schema::Shapes::ShapeRef.new(shape: Identity, location_name: 'CreatedBy', traits: {"smithy.api#documentation" => "<p>The <code>AppInstanceUser</code> who created the ban.</p>"}))
    ChannelBan.type = Types::ChannelBan
    ChannelBanSummary.add_member(:member, Smithy::Schema::Shapes::ShapeRef.new(shape: Identity, location_name: 'Member', traits: {"smithy.api#documentation" => "<p>The member being banned from a channel.</p>"}))
    ChannelBanSummary.type = Types::ChannelBanSummary
    ChannelBanSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelBanSummary)
    ChannelFlow.add_member(:channel_flow_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'ChannelFlowArn', traits: {"smithy.api#documentation" => "<p>The ARN of the channel flow.</p>"}))
    ChannelFlow.add_member(:processors, Smithy::Schema::Shapes::ShapeRef.new(shape: ProcessorList, location_name: 'Processors', traits: {"smithy.api#documentation" => "<p>Information about the processor Lambda functions.</p>"}))
    ChannelFlow.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyResourceName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the channel flow.</p>"}))
    ChannelFlow.add_member(:created_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreatedTimestamp', traits: {"smithy.api#documentation" => "<p>The time at which the channel flow was created.</p>"}))
    ChannelFlow.add_member(:last_updated_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastUpdatedTimestamp', traits: {"smithy.api#documentation" => "<p>The time at which a channel flow was updated.</p>"}))
    ChannelFlow.type = Types::ChannelFlow
    ChannelFlowCallbackRequest.add_member(:callback_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CallbackIdType, location_name: 'CallbackId', traits: {"smithy.api#documentation" => "<p>The identifier passed to the processor by the service when invoked. Use the identifier to call back the service.</p>", "smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    ChannelFlowCallbackRequest.add_member(:channel_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'ChannelArn', traits: {"smithy.api#documentation" => "<p>The ARN of the channel.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ChannelFlowCallbackRequest.add_member(:delete_resource, Smithy::Schema::Shapes::ShapeRef.new(shape: NonNullableBoolean, location_name: 'DeleteResource', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>When a processor determines that a message needs to be <code>DENIED</code>, pass this parameter with a value of true.</p>"}))
    ChannelFlowCallbackRequest.add_member(:channel_message, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelMessageCallback, location_name: 'ChannelMessage', traits: {"smithy.api#documentation" => "<p>Stores information about the processed message.</p>", "smithy.api#required" => {}}))
    ChannelFlowCallbackRequest.type = Types::ChannelFlowCallbackRequest
    ChannelFlowCallbackResponse.add_member(:channel_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'ChannelArn', traits: {"smithy.api#documentation" => "<p>The ARN of the channel.</p>"}))
    ChannelFlowCallbackResponse.add_member(:callback_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CallbackIdType, location_name: 'CallbackId', traits: {"smithy.api#documentation" => "<p>The call back ID passed in the request.</p>"}))
    ChannelFlowCallbackResponse.type = Types::ChannelFlowCallbackResponse
    ChannelFlowSummary.add_member(:channel_flow_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'ChannelFlowArn', traits: {"smithy.api#documentation" => "<p>The ARN of the channel flow.</p>"}))
    ChannelFlowSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyResourceName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the channel flow.</p>"}))
    ChannelFlowSummary.add_member(:processors, Smithy::Schema::Shapes::ShapeRef.new(shape: ProcessorList, location_name: 'Processors', traits: {"smithy.api#documentation" => "<p>Information about the processor Lambda functions.</p>"}))
    ChannelFlowSummary.type = Types::ChannelFlowSummary
    ChannelFlowSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelFlowSummary)
    ChannelMemberArns.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn)
    ChannelMembership.add_member(:invited_by, Smithy::Schema::Shapes::ShapeRef.new(shape: Identity, location_name: 'InvitedBy', traits: {"smithy.api#documentation" => "<p>The identifier of the member who invited another member.</p>"}))
    ChannelMembership.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelMembershipType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The membership type set for the channel member.</p>"}))
    ChannelMembership.add_member(:member, Smithy::Schema::Shapes::ShapeRef.new(shape: Identity, location_name: 'Member', traits: {"smithy.api#documentation" => "<p>The data of the channel member.</p>"}))
    ChannelMembership.add_member(:channel_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'ChannelArn', traits: {"smithy.api#documentation" => "<p>The ARN of the member's channel.</p>"}))
    ChannelMembership.add_member(:created_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreatedTimestamp', traits: {"smithy.api#documentation" => "<p>The time at which the channel membership was created.</p>"}))
    ChannelMembership.add_member(:last_updated_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastUpdatedTimestamp', traits: {"smithy.api#documentation" => "<p>The time at which a channel membership was last updated.</p>"}))
    ChannelMembership.add_member(:sub_channel_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SubChannelId, location_name: 'SubChannelId', traits: {"smithy.api#documentation" => "<p>The ID of the SubChannel that a user belongs to.</p>"}))
    ChannelMembership.type = Types::ChannelMembership
    ChannelMembershipForAppInstanceUserSummary.add_member(:channel_summary, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelSummary, location_name: 'ChannelSummary', traits: {"smithy.api#documentation" => "<p>Returns the channel data for an <code>AppInstance</code>.</p>"}))
    ChannelMembershipForAppInstanceUserSummary.add_member(:app_instance_user_membership_summary, Smithy::Schema::Shapes::ShapeRef.new(shape: AppInstanceUserMembershipSummary, location_name: 'AppInstanceUserMembershipSummary', traits: {"smithy.api#documentation" => "<p>Returns the channel membership data for an <code>AppInstance</code>.</p>"}))
    ChannelMembershipForAppInstanceUserSummary.type = Types::ChannelMembershipForAppInstanceUserSummary
    ChannelMembershipForAppInstanceUserSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelMembershipForAppInstanceUserSummary)
    ChannelMembershipPreferences.add_member(:push_notifications, Smithy::Schema::Shapes::ShapeRef.new(shape: PushNotificationPreferences, location_name: 'PushNotifications', traits: {"smithy.api#documentation" => "<p>The push notification configuration of a message.</p>"}))
    ChannelMembershipPreferences.type = Types::ChannelMembershipPreferences
    ChannelMembershipSummary.add_member(:member, Smithy::Schema::Shapes::ShapeRef.new(shape: Identity, location_name: 'Member', traits: {"smithy.api#documentation" => "<p>A member's summary data.</p>"}))
    ChannelMembershipSummary.type = Types::ChannelMembershipSummary
    ChannelMembershipSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelMembershipSummary)
    ChannelMembershipType.add_member(:default, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DEFAULT', traits: {"smithy.api#enumValue" => "DEFAULT"}))
    ChannelMembershipType.add_member(:hidden, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HIDDEN', traits: {"smithy.api#enumValue" => "HIDDEN"}))
    ChannelMessage.add_member(:channel_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'ChannelArn', traits: {"smithy.api#documentation" => "<p>The ARN of the channel.</p>"}))
    ChannelMessage.add_member(:message_id, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageId, location_name: 'MessageId', traits: {"smithy.api#documentation" => "<p>The ID of a message.</p>"}))
    ChannelMessage.add_member(:content, Smithy::Schema::Shapes::ShapeRef.new(shape: Content, location_name: 'Content', traits: {"smithy.api#documentation" => "<p>The content of the channel message. For Amazon Lex V2 bot responses, this field holds a list of messages originating from the bot. For more information, refer to \n         <a href=\"https://docs.aws.amazon.com/chime-sdk/latest/dg/appinstance-bots#process-response.html\">Processing responses from an AppInstanceBot</a> in the \n         <i>Amazon Chime SDK Messaging Developer Guide</i>.</p>"}))
    ChannelMessage.add_member(:metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: Metadata, location_name: 'Metadata', traits: {"smithy.api#documentation" => "<p>The message metadata.</p>"}))
    ChannelMessage.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelMessageType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The message type.</p>"}))
    ChannelMessage.add_member(:created_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreatedTimestamp', traits: {"smithy.api#documentation" => "<p>The time at which the message was created.</p>"}))
    ChannelMessage.add_member(:last_edited_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastEditedTimestamp', traits: {"smithy.api#documentation" => "<p>The time at which a message was edited.</p>"}))
    ChannelMessage.add_member(:last_updated_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastUpdatedTimestamp', traits: {"smithy.api#documentation" => "<p>The time at which a message was updated.</p>"}))
    ChannelMessage.add_member(:sender, Smithy::Schema::Shapes::ShapeRef.new(shape: Identity, location_name: 'Sender', traits: {"smithy.api#documentation" => "<p>The message sender.</p>"}))
    ChannelMessage.add_member(:redacted, Smithy::Schema::Shapes::ShapeRef.new(shape: NonNullableBoolean, location_name: 'Redacted', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Hides the content of a message.</p>"}))
    ChannelMessage.add_member(:persistence, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelMessagePersistenceType, location_name: 'Persistence', traits: {"smithy.api#documentation" => "<p>The persistence setting for a channel message.</p>"}))
    ChannelMessage.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelMessageStatusStructure, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of the channel message.</p>"}))
    ChannelMessage.add_member(:message_attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageAttributeMap, location_name: 'MessageAttributes', traits: {"smithy.api#documentation" => "<p>The attributes for the channel message. For Amazon Lex V2 bot responses, the attributes are mapped to specific fields from the bot. For more information, refer to \n         <a href=\"https://docs.aws.amazon.com/chime-sdk/latest/dg/appinstance-bots#process-response.html\">Processing responses from an AppInstanceBot</a> in the \n         <i>Amazon Chime SDK Messaging Developer Guide</i>.</p>"}))
    ChannelMessage.add_member(:sub_channel_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SubChannelId, location_name: 'SubChannelId', traits: {"smithy.api#documentation" => "<p>The ID of the SubChannel.</p>"}))
    ChannelMessage.add_member(:content_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ContentType, location_name: 'ContentType', traits: {"smithy.api#documentation" => "<p>The content type of the channel message. For Amazon Lex V2 bot responses, the content type is <code>application/amz-chime-lex-msgs</code> for success responses and \n         <code>application/amz-chime-lex-error</code> for failure responses. For more information, refer to \n         <a href=\"https://docs.aws.amazon.com/chime-sdk/latest/dg/appinstance-bots#process-response.html\">Processing responses from an AppInstanceBot</a> in the \n         <i>Amazon Chime SDK Messaging Developer Guide</i>.</p>"}))
    ChannelMessage.add_member(:target, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetList, location_name: 'Target', traits: {"smithy.api#documentation" => "<p>The target of a message, a sender, a user, or a bot.  Only the target and the sender can view targeted messages.\n         Only users who can see targeted messages can take actions on them. However, administrators can delete targeted messages that they can’t see.</p>"}))
    ChannelMessage.type = Types::ChannelMessage
    ChannelMessageCallback.add_member(:message_id, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageId, location_name: 'MessageId', traits: {"smithy.api#documentation" => "<p>The message ID.</p>", "smithy.api#required" => {}}))
    ChannelMessageCallback.add_member(:content, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyContent, location_name: 'Content', traits: {"smithy.api#documentation" => "<p>The message content. For Amazon Lex V2 bot responses, this field holds a list of messages originating from the bot. For more information, refer to \n         <a href=\"https://docs.aws.amazon.com/chime-sdk/latest/dg/appinstance-bots#process-response.html\">Processing responses from an AppInstanceBot</a> in the \n         <i>Amazon Chime SDK Messaging Developer Guide</i>.</p>"}))
    ChannelMessageCallback.add_member(:metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: Metadata, location_name: 'Metadata', traits: {"smithy.api#documentation" => "<p>The message metadata.</p>"}))
    ChannelMessageCallback.add_member(:push_notification, Smithy::Schema::Shapes::ShapeRef.new(shape: PushNotificationConfiguration, location_name: 'PushNotification', traits: {"smithy.api#documentation" => "<p>The push notification configuration of the message.</p>"}))
    ChannelMessageCallback.add_member(:message_attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageAttributeMap, location_name: 'MessageAttributes', traits: {"smithy.api#documentation" => "<p>The attributes for the channel message. For Amazon Lex V2 bot responses, the attributes are mapped to specific fields from the bot. For more information, refer to \n         <a href=\"https://docs.aws.amazon.com/chime-sdk/latest/dg/appinstance-bots#process-response.html\">Processing responses from an AppInstanceBot</a> in the \n         <i>Amazon Chime SDK Messaging Developer Guide</i>.</p>"}))
    ChannelMessageCallback.add_member(:sub_channel_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SubChannelId, location_name: 'SubChannelId', traits: {"smithy.api#documentation" => "<p>The ID of the SubChannel.</p>"}))
    ChannelMessageCallback.add_member(:content_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ContentType, location_name: 'ContentType', traits: {"smithy.api#documentation" => "<p>The content type of the call-back message. For Amazon Lex V2 bot responses, the content type is <code>application/amz-chime-lex-msgs</code> for success responses and \n         <code>application/amz-chime-lex-error</code> for failure responses. For more information, refer to \n         <a href=\"https://docs.aws.amazon.com/chime-sdk/latest/dg/appinstance-bots#process-response.html\">Processing responses from an AppInstanceBot</a> in the \n         <i>Amazon Chime SDK Messaging Developer Guide</i>.</p>"}))
    ChannelMessageCallback.type = Types::ChannelMessageCallback
    ChannelMessagePersistenceType.add_member(:persistent, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PERSISTENT', traits: {"smithy.api#enumValue" => "PERSISTENT"}))
    ChannelMessagePersistenceType.add_member(:non_persistent, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NON_PERSISTENT', traits: {"smithy.api#enumValue" => "NON_PERSISTENT"}))
    ChannelMessageStatus.add_member(:sent, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SENT', traits: {"smithy.api#enumValue" => "SENT"}))
    ChannelMessageStatus.add_member(:pending, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING', traits: {"smithy.api#enumValue" => "PENDING"}))
    ChannelMessageStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    ChannelMessageStatus.add_member(:denied, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DENIED', traits: {"smithy.api#enumValue" => "DENIED"}))
    ChannelMessageStatusStructure.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelMessageStatus, location_name: 'Value', traits: {"smithy.api#documentation" => "<p>The message status value.</p>"}))
    ChannelMessageStatusStructure.add_member(:detail, Smithy::Schema::Shapes::ShapeRef.new(shape: StatusDetail, location_name: 'Detail', traits: {"smithy.api#documentation" => "<p>Contains more details about the message status.</p>"}))
    ChannelMessageStatusStructure.type = Types::ChannelMessageStatusStructure
    ChannelMessageSummary.add_member(:message_id, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageId, location_name: 'MessageId', traits: {"smithy.api#documentation" => "<p>The ID of the message.</p>"}))
    ChannelMessageSummary.add_member(:content, Smithy::Schema::Shapes::ShapeRef.new(shape: Content, location_name: 'Content', traits: {"smithy.api#documentation" => "<p>The content of the channel message. For Amazon Lex V2 bot responses, this field holds a list of messages originating from the bot. For more information, refer to \n         <a href=\"https://docs.aws.amazon.com/chime-sdk/latest/dg/appinstance-bots#process-response.html\">Processing responses from an AppInstanceBot</a> in the \n         <i>Amazon Chime SDK Messaging Developer Guide</i>.</p>"}))
    ChannelMessageSummary.add_member(:metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: Metadata, location_name: 'Metadata', traits: {"smithy.api#documentation" => "<p>The metadata of the message.</p>"}))
    ChannelMessageSummary.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelMessageType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The type of message.</p>"}))
    ChannelMessageSummary.add_member(:created_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreatedTimestamp', traits: {"smithy.api#documentation" => "<p>The time at which the message summary was created.</p>"}))
    ChannelMessageSummary.add_member(:last_updated_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastUpdatedTimestamp', traits: {"smithy.api#documentation" => "<p>The time at which a message was last updated.</p>"}))
    ChannelMessageSummary.add_member(:last_edited_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastEditedTimestamp', traits: {"smithy.api#documentation" => "<p>The time at which a message was last edited.</p>"}))
    ChannelMessageSummary.add_member(:sender, Smithy::Schema::Shapes::ShapeRef.new(shape: Identity, location_name: 'Sender', traits: {"smithy.api#documentation" => "<p>The message sender.</p>"}))
    ChannelMessageSummary.add_member(:redacted, Smithy::Schema::Shapes::ShapeRef.new(shape: NonNullableBoolean, location_name: 'Redacted', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Indicates whether a message was redacted.</p>"}))
    ChannelMessageSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelMessageStatusStructure, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The message status. The status value is <code>SENT</code> for messages sent to a channel without a channel flow. For channels associated with channel flow, the value determines the \n         processing stage.</p>"}))
    ChannelMessageSummary.add_member(:message_attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageAttributeMap, location_name: 'MessageAttributes', traits: {"smithy.api#documentation" => "<p>The attributes for the channel message. For Amazon Lex V2 bot responses, the attributes are mapped to specific fields from the bot. For more information, refer to \n         <a href=\"https://docs.aws.amazon.com/chime-sdk/latest/dg/appinstance-bots#process-response.html\">Processing responses from an AppInstanceBot</a> in the \n         <i>Amazon Chime SDK Messaging Developer Guide</i>.</p>"}))
    ChannelMessageSummary.add_member(:content_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ContentType, location_name: 'ContentType', traits: {"smithy.api#documentation" => "<p>The content type of the channel message listed in the summary. For Amazon Lex V2 bot responses, the content type is <code>application/amz-chime-lex-msgs</code> for success responses and \n         <code>application/amz-chime-lex-error</code> for failure responses. For more information, refer to \n         <a href=\"https://docs.aws.amazon.com/chime-sdk/latest/dg/appinstance-bots#process-response.html\">Processing responses from an AppInstanceBot</a> in the \n         <i>Amazon Chime SDK Messaging Developer Guide</i>.</p>"}))
    ChannelMessageSummary.add_member(:target, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetList, location_name: 'Target', traits: {"smithy.api#documentation" => "<p>The target of a message, a sender, a user, or a bot. Only the target and the sender can view targeted messages.\n         Only users who can see targeted messages can take actions on them. However, administrators can delete targeted messages that they can’t see.</p>"}))
    ChannelMessageSummary.type = Types::ChannelMessageSummary
    ChannelMessageSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelMessageSummary)
    ChannelMessageType.add_member(:standard, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STANDARD', traits: {"smithy.api#enumValue" => "STANDARD"}))
    ChannelMessageType.add_member(:control, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CONTROL', traits: {"smithy.api#enumValue" => "CONTROL"}))
    ChannelMode.add_member(:unrestricted, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNRESTRICTED', traits: {"smithy.api#enumValue" => "UNRESTRICTED"}))
    ChannelMode.add_member(:restricted, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RESTRICTED', traits: {"smithy.api#enumValue" => "RESTRICTED"}))
    ChannelModeratedByAppInstanceUserSummary.add_member(:channel_summary, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelSummary, location_name: 'ChannelSummary', traits: {"smithy.api#documentation" => "<p>Summary of the details of a <code>Channel</code>.</p>"}))
    ChannelModeratedByAppInstanceUserSummary.type = Types::ChannelModeratedByAppInstanceUserSummary
    ChannelModeratedByAppInstanceUserSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelModeratedByAppInstanceUserSummary)
    ChannelModerator.add_member(:moderator, Smithy::Schema::Shapes::ShapeRef.new(shape: Identity, location_name: 'Moderator', traits: {"smithy.api#documentation" => "<p>The moderator's data.</p>"}))
    ChannelModerator.add_member(:channel_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'ChannelArn', traits: {"smithy.api#documentation" => "<p>The ARN of the moderator's channel.</p>"}))
    ChannelModerator.add_member(:created_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreatedTimestamp', traits: {"smithy.api#documentation" => "<p>The time at which the moderator was created.</p>"}))
    ChannelModerator.add_member(:created_by, Smithy::Schema::Shapes::ShapeRef.new(shape: Identity, location_name: 'CreatedBy', traits: {"smithy.api#documentation" => "<p>The <code>AppInstanceUser</code> who created the moderator.</p>"}))
    ChannelModerator.type = Types::ChannelModerator
    ChannelModeratorArns.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn)
    ChannelModeratorSummary.add_member(:moderator, Smithy::Schema::Shapes::ShapeRef.new(shape: Identity, location_name: 'Moderator', traits: {"smithy.api#documentation" => "<p>The data for a moderator.</p>"}))
    ChannelModeratorSummary.type = Types::ChannelModeratorSummary
    ChannelModeratorSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelModeratorSummary)
    ChannelPrivacy.add_member(:public, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PUBLIC', traits: {"smithy.api#enumValue" => "PUBLIC"}))
    ChannelPrivacy.add_member(:private, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PRIVATE', traits: {"smithy.api#enumValue" => "PRIVATE"}))
    ChannelSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyResourceName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the channel.</p>"}))
    ChannelSummary.add_member(:channel_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'ChannelArn', traits: {"smithy.api#documentation" => "<p>The ARN of the channel.</p>"}))
    ChannelSummary.add_member(:mode, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelMode, location_name: 'Mode', traits: {"smithy.api#documentation" => "<p>The mode of the channel.</p>"}))
    ChannelSummary.add_member(:privacy, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelPrivacy, location_name: 'Privacy', traits: {"smithy.api#documentation" => "<p>The privacy setting of the channel.</p>"}))
    ChannelSummary.add_member(:metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: Metadata, location_name: 'Metadata', traits: {"smithy.api#documentation" => "<p>The metadata of the channel.</p>"}))
    ChannelSummary.add_member(:last_message_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastMessageTimestamp', traits: {"smithy.api#documentation" => "<p>The time at which the last persistent message visible to the caller in a channel was sent.</p>"}))
    ChannelSummary.type = Types::ChannelSummary
    ChannelSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelSummary)
    ConflictException.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'Code'))
    ConflictException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    ConflictException.type = Types::ConflictException
    CreateChannelBanRequest.add_member(:channel_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'ChannelArn', traits: {"smithy.api#documentation" => "<p>The ARN of the ban request.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateChannelBanRequest.add_member(:member_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'MemberArn', traits: {"smithy.api#documentation" => "<p>The <code>AppInstanceUserArn</code> of the member being banned.</p>", "smithy.api#required" => {}}))
    CreateChannelBanRequest.add_member(:chime_bearer, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'ChimeBearer', traits: {"smithy.api#documentation" => "<p>The ARN of the <code>AppInstanceUser</code> or <code>AppInstanceBot</code> that makes the API call.</p>", "smithy.api#httpHeader" => "x-amz-chime-bearer", "smithy.api#required" => {}}))
    CreateChannelBanRequest.type = Types::CreateChannelBanRequest
    CreateChannelBanResponse.add_member(:channel_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'ChannelArn', traits: {"smithy.api#documentation" => "<p>The ARN of the response to the ban request.</p>"}))
    CreateChannelBanResponse.add_member(:member, Smithy::Schema::Shapes::ShapeRef.new(shape: Identity, location_name: 'Member', traits: {"smithy.api#documentation" => "<p>The <code>ChannelArn</code> and <code>BannedIdentity</code> of the member in the ban\n         response.</p>"}))
    CreateChannelBanResponse.type = Types::CreateChannelBanResponse
    CreateChannelFlowRequest.add_member(:app_instance_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'AppInstanceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the channel flow request.</p>", "smithy.api#required" => {}}))
    CreateChannelFlowRequest.add_member(:processors, Smithy::Schema::Shapes::ShapeRef.new(shape: ProcessorList, location_name: 'Processors', traits: {"smithy.api#documentation" => "<p>Information about the processor Lambda functions.</p>", "smithy.api#required" => {}}))
    CreateChannelFlowRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyResourceName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the channel flow.</p>", "smithy.api#required" => {}}))
    CreateChannelFlowRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags for the creation request.</p>"}))
    CreateChannelFlowRequest.add_member(:client_request_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: 'ClientRequestToken', traits: {"smithy.api#documentation" => "<p>The client token for the request. An Idempotency token.</p>", "smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    CreateChannelFlowRequest.type = Types::CreateChannelFlowRequest
    CreateChannelFlowResponse.add_member(:channel_flow_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'ChannelFlowArn', traits: {"smithy.api#documentation" => "<p>The ARN of the channel flow.</p>"}))
    CreateChannelFlowResponse.type = Types::CreateChannelFlowResponse
    CreateChannelMembershipRequest.add_member(:channel_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'ChannelArn', traits: {"smithy.api#documentation" => "<p>The ARN of the channel to which you're adding users.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateChannelMembershipRequest.add_member(:member_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'MemberArn', traits: {"smithy.api#documentation" => "<p>The <code>AppInstanceUserArn</code> of the member you want to add to the channel.</p>", "smithy.api#required" => {}}))
    CreateChannelMembershipRequest.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelMembershipType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The membership type of a user, <code>DEFAULT</code> or <code>HIDDEN</code>. Default\n         members are always returned as part of <code>ListChannelMemberships</code>. Hidden members\n         are only returned if the type filter in <code>ListChannelMemberships</code> equals\n            <code>HIDDEN</code>. Otherwise hidden members are not returned. This is only supported\n         by moderators.</p>", "smithy.api#required" => {}}))
    CreateChannelMembershipRequest.add_member(:chime_bearer, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'ChimeBearer', traits: {"smithy.api#documentation" => "<p>The ARN of the <code>AppInstanceUser</code> or <code>AppInstanceBot</code> \n         that makes the API call.</p>", "smithy.api#httpHeader" => "x-amz-chime-bearer", "smithy.api#required" => {}}))
    CreateChannelMembershipRequest.add_member(:sub_channel_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SubChannelId, location_name: 'SubChannelId', traits: {"smithy.api#documentation" => "<p>The ID of the SubChannel in the request.</p>\n         <note>\n            <p>Only required when creating membership in a SubChannel for a moderator in an elastic channel.</p>\n         </note>"}))
    CreateChannelMembershipRequest.type = Types::CreateChannelMembershipRequest
    CreateChannelMembershipResponse.add_member(:channel_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'ChannelArn', traits: {"smithy.api#documentation" => "<p>The ARN of the channel.</p>"}))
    CreateChannelMembershipResponse.add_member(:member, Smithy::Schema::Shapes::ShapeRef.new(shape: Identity, location_name: 'Member', traits: {"smithy.api#documentation" => "<p>The ARN and metadata of the member being added.</p>"}))
    CreateChannelMembershipResponse.add_member(:sub_channel_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SubChannelId, location_name: 'SubChannelId', traits: {"smithy.api#documentation" => "<p>The ID of the SubChannel in the response.</p>"}))
    CreateChannelMembershipResponse.type = Types::CreateChannelMembershipResponse
    CreateChannelModeratorRequest.add_member(:channel_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'ChannelArn', traits: {"smithy.api#documentation" => "<p>The ARN of the channel.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateChannelModeratorRequest.add_member(:channel_moderator_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'ChannelModeratorArn', traits: {"smithy.api#documentation" => "<p>The <code>AppInstanceUserArn</code> of the moderator.</p>", "smithy.api#required" => {}}))
    CreateChannelModeratorRequest.add_member(:chime_bearer, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'ChimeBearer', traits: {"smithy.api#documentation" => "<p>The ARN of the <code>AppInstanceUser</code> or <code>AppInstanceBot</code> \n         that makes the API call.</p>", "smithy.api#httpHeader" => "x-amz-chime-bearer", "smithy.api#required" => {}}))
    CreateChannelModeratorRequest.type = Types::CreateChannelModeratorRequest
    CreateChannelModeratorResponse.add_member(:channel_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'ChannelArn', traits: {"smithy.api#documentation" => "<p>The ARN of the channel.</p>"}))
    CreateChannelModeratorResponse.add_member(:channel_moderator, Smithy::Schema::Shapes::ShapeRef.new(shape: Identity, location_name: 'ChannelModerator', traits: {"smithy.api#documentation" => "<p>The ARNs of the channel and the moderator.</p>"}))
    CreateChannelModeratorResponse.type = Types::CreateChannelModeratorResponse
    CreateChannelRequest.add_member(:app_instance_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'AppInstanceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the channel request.</p>", "smithy.api#required" => {}}))
    CreateChannelRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyResourceName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the channel.</p>", "smithy.api#required" => {}}))
    CreateChannelRequest.add_member(:mode, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelMode, location_name: 'Mode', traits: {"smithy.api#documentation" => "<p>The channel mode: <code>UNRESTRICTED</code> or <code>RESTRICTED</code>. Administrators,\n         moderators, and channel members can add themselves and other members to unrestricted\n         channels. Only administrators and moderators can add members to restricted channels.</p>"}))
    CreateChannelRequest.add_member(:privacy, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelPrivacy, location_name: 'Privacy', traits: {"smithy.api#documentation" => "<p>The channel's privacy level: <code>PUBLIC</code> or <code>PRIVATE</code>. Private\n         channels aren't discoverable by users outside the channel. Public channels are discoverable\n         by anyone in the <code>AppInstance</code>.</p>"}))
    CreateChannelRequest.add_member(:metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: Metadata, location_name: 'Metadata', traits: {"smithy.api#documentation" => "<p>The metadata of the creation request. Limited to 1KB and UTF-8.</p>"}))
    CreateChannelRequest.add_member(:client_request_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: 'ClientRequestToken', traits: {"smithy.api#documentation" => "<p>The client token for the request. An <code>Idempotency</code> token.</p>", "smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    CreateChannelRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags for the creation request.</p>"}))
    CreateChannelRequest.add_member(:chime_bearer, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'ChimeBearer', traits: {"smithy.api#documentation" => "<p>The ARN of the <code>AppInstanceUser</code> or <code>AppInstanceBot</code> that makes the API call.</p>", "smithy.api#httpHeader" => "x-amz-chime-bearer", "smithy.api#required" => {}}))
    CreateChannelRequest.add_member(:channel_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelId, location_name: 'ChannelId', traits: {"smithy.api#documentation" => "<p>The ID of the channel in the request.</p>"}))
    CreateChannelRequest.add_member(:member_arns, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelMemberArns, location_name: 'MemberArns', traits: {"smithy.api#documentation" => "<p>The ARNs of the channel members in the request.</p>"}))
    CreateChannelRequest.add_member(:moderator_arns, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelModeratorArns, location_name: 'ModeratorArns', traits: {"smithy.api#documentation" => "<p>The ARNs of the channel moderators in the request.</p>"}))
    CreateChannelRequest.add_member(:elastic_channel_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ElasticChannelConfiguration, location_name: 'ElasticChannelConfiguration', traits: {"smithy.api#documentation" => "<p>The attributes required to configure and create an elastic channel. An elastic channel can support a maximum of 1-million users, excluding moderators.</p>"}))
    CreateChannelRequest.add_member(:expiration_settings, Smithy::Schema::Shapes::ShapeRef.new(shape: ExpirationSettings, location_name: 'ExpirationSettings', traits: {"smithy.api#documentation" => "<p>Settings that control the interval after which the channel is automatically deleted.</p>"}))
    CreateChannelRequest.type = Types::CreateChannelRequest
    CreateChannelResponse.add_member(:channel_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'ChannelArn', traits: {"smithy.api#documentation" => "<p>The ARN of the channel.</p>"}))
    CreateChannelResponse.type = Types::CreateChannelResponse
    DeleteChannelBanRequest.add_member(:channel_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'ChannelArn', traits: {"smithy.api#documentation" => "<p>The ARN of the channel from which the <code>AppInstanceUser</code> was banned.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteChannelBanRequest.add_member(:member_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'MemberArn', traits: {"smithy.api#documentation" => "<p>The ARN of the <code>AppInstanceUser</code> that you want to reinstate.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteChannelBanRequest.add_member(:chime_bearer, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'ChimeBearer', traits: {"smithy.api#documentation" => "<p>The ARN of the <code>AppInstanceUser</code> or <code>AppInstanceBot</code> that makes the \n         API call.</p>", "smithy.api#httpHeader" => "x-amz-chime-bearer", "smithy.api#required" => {}}))
    DeleteChannelBanRequest.type = Types::DeleteChannelBanRequest
    DeleteChannelFlowRequest.add_member(:channel_flow_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'ChannelFlowArn', traits: {"smithy.api#documentation" => "<p>The ARN of the channel flow.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteChannelFlowRequest.type = Types::DeleteChannelFlowRequest
    DeleteChannelMembershipRequest.add_member(:channel_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'ChannelArn', traits: {"smithy.api#documentation" => "<p>The ARN of the channel from which you want to remove the user.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteChannelMembershipRequest.add_member(:member_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'MemberArn', traits: {"smithy.api#documentation" => "<p>The <code>AppInstanceUserArn</code> of the member that you're removing from the channel.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteChannelMembershipRequest.add_member(:chime_bearer, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'ChimeBearer', traits: {"smithy.api#documentation" => "<p>The ARN of the <code>AppInstanceUser</code> or <code>AppInstanceBot</code> that makes the \n         API call.</p>", "smithy.api#httpHeader" => "x-amz-chime-bearer", "smithy.api#required" => {}}))
    DeleteChannelMembershipRequest.add_member(:sub_channel_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SubChannelId, location_name: 'SubChannelId', traits: {"smithy.api#documentation" => "<p>The ID of the SubChannel in the request.</p>\n         <note>\n            <p>Only for use by moderators.</p>\n         </note>", "smithy.api#httpQuery" => "sub-channel-id"}))
    DeleteChannelMembershipRequest.type = Types::DeleteChannelMembershipRequest
    DeleteChannelMessageRequest.add_member(:channel_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'ChannelArn', traits: {"smithy.api#documentation" => "<p>The ARN of the channel.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteChannelMessageRequest.add_member(:message_id, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageId, location_name: 'MessageId', traits: {"smithy.api#documentation" => "<p>The ID of the message being deleted.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteChannelMessageRequest.add_member(:chime_bearer, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'ChimeBearer', traits: {"smithy.api#documentation" => "<p>The ARN of the <code>AppInstanceUser</code> or <code>AppInstanceBot</code> that makes the \n         API call.</p>", "smithy.api#httpHeader" => "x-amz-chime-bearer", "smithy.api#required" => {}}))
    DeleteChannelMessageRequest.add_member(:sub_channel_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SubChannelId, location_name: 'SubChannelId', traits: {"smithy.api#documentation" => "<p>The ID of the SubChannel in the request.</p>\n         <note>\n            <p>Only required when deleting messages in a SubChannel that the user belongs to.</p>\n         </note>", "smithy.api#httpQuery" => "sub-channel-id"}))
    DeleteChannelMessageRequest.type = Types::DeleteChannelMessageRequest
    DeleteChannelModeratorRequest.add_member(:channel_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'ChannelArn', traits: {"smithy.api#documentation" => "<p>The ARN of the channel.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteChannelModeratorRequest.add_member(:channel_moderator_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'ChannelModeratorArn', traits: {"smithy.api#documentation" => "<p>The <code>AppInstanceUserArn</code> of the moderator being deleted.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteChannelModeratorRequest.add_member(:chime_bearer, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'ChimeBearer', traits: {"smithy.api#documentation" => "<p>The ARN of the <code>AppInstanceUser</code> or <code>AppInstanceBot</code> that makes the \n         API call.</p>", "smithy.api#httpHeader" => "x-amz-chime-bearer", "smithy.api#required" => {}}))
    DeleteChannelModeratorRequest.type = Types::DeleteChannelModeratorRequest
    DeleteChannelRequest.add_member(:channel_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'ChannelArn', traits: {"smithy.api#documentation" => "<p>The ARN of the channel being deleted.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteChannelRequest.add_member(:chime_bearer, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'ChimeBearer', traits: {"smithy.api#documentation" => "<p>The ARN of the <code>AppInstanceUser</code> or <code>AppInstanceBot</code> \n         that makes the API call.</p>", "smithy.api#httpHeader" => "x-amz-chime-bearer", "smithy.api#required" => {}}))
    DeleteChannelRequest.type = Types::DeleteChannelRequest
    DeleteMessagingStreamingConfigurationsRequest.add_member(:app_instance_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'AppInstanceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the streaming configurations being deleted.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteMessagingStreamingConfigurationsRequest.type = Types::DeleteMessagingStreamingConfigurationsRequest
    DescribeChannelBanRequest.add_member(:channel_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'ChannelArn', traits: {"smithy.api#documentation" => "<p>The ARN of the channel from which the user is banned.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeChannelBanRequest.add_member(:member_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'MemberArn', traits: {"smithy.api#documentation" => "<p>The <code>AppInstanceUserArn</code> of the member being banned.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeChannelBanRequest.add_member(:chime_bearer, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'ChimeBearer', traits: {"smithy.api#documentation" => "<p>The ARN of the <code>AppInstanceUser</code> or <code>AppInstanceBot</code> that makes the \n         API call.</p>", "smithy.api#httpHeader" => "x-amz-chime-bearer", "smithy.api#required" => {}}))
    DescribeChannelBanRequest.type = Types::DescribeChannelBanRequest
    DescribeChannelBanResponse.add_member(:channel_ban, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelBan, location_name: 'ChannelBan', traits: {"smithy.api#documentation" => "<p>The details of the ban.</p>"}))
    DescribeChannelBanResponse.type = Types::DescribeChannelBanResponse
    DescribeChannelFlowRequest.add_member(:channel_flow_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'ChannelFlowArn', traits: {"smithy.api#documentation" => "<p>The ARN of the channel flow.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeChannelFlowRequest.type = Types::DescribeChannelFlowRequest
    DescribeChannelFlowResponse.add_member(:channel_flow, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelFlow, location_name: 'ChannelFlow', traits: {"smithy.api#documentation" => "<p>The channel flow details.</p>"}))
    DescribeChannelFlowResponse.type = Types::DescribeChannelFlowResponse
    DescribeChannelMembershipForAppInstanceUserRequest.add_member(:channel_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'ChannelArn', traits: {"smithy.api#documentation" => "<p>The ARN of the channel to which the user belongs.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeChannelMembershipForAppInstanceUserRequest.add_member(:app_instance_user_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'AppInstanceUserArn', traits: {"smithy.api#documentation" => "<p>The ARN of the user or bot in a channel.</p>", "smithy.api#httpQuery" => "app-instance-user-arn", "smithy.api#required" => {}}))
    DescribeChannelMembershipForAppInstanceUserRequest.add_member(:chime_bearer, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'ChimeBearer', traits: {"smithy.api#documentation" => "<p>The ARN of the <code>AppInstanceUser</code> or <code>AppInstanceBot</code> \n         that makes the API call.</p>", "smithy.api#httpHeader" => "x-amz-chime-bearer", "smithy.api#required" => {}}))
    DescribeChannelMembershipForAppInstanceUserRequest.type = Types::DescribeChannelMembershipForAppInstanceUserRequest
    DescribeChannelMembershipForAppInstanceUserResponse.add_member(:channel_membership, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelMembershipForAppInstanceUserSummary, location_name: 'ChannelMembership', traits: {"smithy.api#documentation" => "<p>The channel to which a user belongs.</p>"}))
    DescribeChannelMembershipForAppInstanceUserResponse.type = Types::DescribeChannelMembershipForAppInstanceUserResponse
    DescribeChannelMembershipRequest.add_member(:channel_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'ChannelArn', traits: {"smithy.api#documentation" => "<p>The ARN of the channel.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeChannelMembershipRequest.add_member(:member_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'MemberArn', traits: {"smithy.api#documentation" => "<p>The <code>AppInstanceUserArn</code> of the member.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeChannelMembershipRequest.add_member(:chime_bearer, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'ChimeBearer', traits: {"smithy.api#documentation" => "<p>The ARN of the <code>AppInstanceUser</code> or <code>AppInstanceBot</code> that makes the \n         API call.</p>", "smithy.api#httpHeader" => "x-amz-chime-bearer", "smithy.api#required" => {}}))
    DescribeChannelMembershipRequest.add_member(:sub_channel_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SubChannelId, location_name: 'SubChannelId', traits: {"smithy.api#documentation" => "<p>The ID of the SubChannel in the request. The response contains an <code>ElasticChannelConfiguration</code> object.</p>\n         <note>\n            <p>Only required to get a user’s SubChannel membership details.</p>\n         </note>", "smithy.api#httpQuery" => "sub-channel-id"}))
    DescribeChannelMembershipRequest.type = Types::DescribeChannelMembershipRequest
    DescribeChannelMembershipResponse.add_member(:channel_membership, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelMembership, location_name: 'ChannelMembership', traits: {"smithy.api#documentation" => "<p>The details of the membership.</p>"}))
    DescribeChannelMembershipResponse.type = Types::DescribeChannelMembershipResponse
    DescribeChannelModeratedByAppInstanceUserRequest.add_member(:channel_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'ChannelArn', traits: {"smithy.api#documentation" => "<p>The ARN of the moderated channel.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeChannelModeratedByAppInstanceUserRequest.add_member(:app_instance_user_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'AppInstanceUserArn', traits: {"smithy.api#documentation" => "<p>The ARN of the user or bot in the moderated channel.</p>", "smithy.api#httpQuery" => "app-instance-user-arn", "smithy.api#required" => {}}))
    DescribeChannelModeratedByAppInstanceUserRequest.add_member(:chime_bearer, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'ChimeBearer', traits: {"smithy.api#documentation" => "<p>The ARN of the <code>AppInstanceUser</code> or <code>AppInstanceBot</code> \n         that makes the API call.</p>", "smithy.api#httpHeader" => "x-amz-chime-bearer", "smithy.api#required" => {}}))
    DescribeChannelModeratedByAppInstanceUserRequest.type = Types::DescribeChannelModeratedByAppInstanceUserRequest
    DescribeChannelModeratedByAppInstanceUserResponse.add_member(:channel, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelModeratedByAppInstanceUserSummary, location_name: 'Channel', traits: {"smithy.api#documentation" => "<p>The moderated channel.</p>"}))
    DescribeChannelModeratedByAppInstanceUserResponse.type = Types::DescribeChannelModeratedByAppInstanceUserResponse
    DescribeChannelModeratorRequest.add_member(:channel_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'ChannelArn', traits: {"smithy.api#documentation" => "<p>The ARN of the channel.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeChannelModeratorRequest.add_member(:channel_moderator_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'ChannelModeratorArn', traits: {"smithy.api#documentation" => "<p>The <code>AppInstanceUserArn</code> of the channel moderator.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeChannelModeratorRequest.add_member(:chime_bearer, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'ChimeBearer', traits: {"smithy.api#documentation" => "<p>The ARN of the <code>AppInstanceUser</code> or <code>AppInstanceBot</code> \n         that makes the API call.</p>", "smithy.api#httpHeader" => "x-amz-chime-bearer", "smithy.api#required" => {}}))
    DescribeChannelModeratorRequest.type = Types::DescribeChannelModeratorRequest
    DescribeChannelModeratorResponse.add_member(:channel_moderator, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelModerator, location_name: 'ChannelModerator', traits: {"smithy.api#documentation" => "<p>The details of the channel moderator.</p>"}))
    DescribeChannelModeratorResponse.type = Types::DescribeChannelModeratorResponse
    DescribeChannelRequest.add_member(:channel_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'ChannelArn', traits: {"smithy.api#documentation" => "<p>The ARN of the channel.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeChannelRequest.add_member(:chime_bearer, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'ChimeBearer', traits: {"smithy.api#documentation" => "<p>The ARN of the <code>AppInstanceUser</code> or <code>AppInstanceBot</code> that makes the \n         API call.</p>", "smithy.api#httpHeader" => "x-amz-chime-bearer", "smithy.api#required" => {}}))
    DescribeChannelRequest.type = Types::DescribeChannelRequest
    DescribeChannelResponse.add_member(:channel, Smithy::Schema::Shapes::ShapeRef.new(shape: Channel, location_name: 'Channel', traits: {"smithy.api#documentation" => "<p>The channel details.</p>"}))
    DescribeChannelResponse.type = Types::DescribeChannelResponse
    DisassociateChannelFlowRequest.add_member(:channel_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'ChannelArn', traits: {"smithy.api#documentation" => "<p>The ARN of the channel.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociateChannelFlowRequest.add_member(:channel_flow_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'ChannelFlowArn', traits: {"smithy.api#documentation" => "<p>The ARN of the channel flow.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociateChannelFlowRequest.add_member(:chime_bearer, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'ChimeBearer', traits: {"smithy.api#documentation" => "<p>The <code>AppInstanceUserArn</code> of the user making the API call.</p>", "smithy.api#httpHeader" => "x-amz-chime-bearer", "smithy.api#required" => {}}))
    DisassociateChannelFlowRequest.type = Types::DisassociateChannelFlowRequest
    ElasticChannelConfiguration.add_member(:maximum_sub_channels, Smithy::Schema::Shapes::ShapeRef.new(shape: MaximumSubChannels, location_name: 'MaximumSubChannels', traits: {"smithy.api#documentation" => "<p>The maximum number of SubChannels that you want to allow in the elastic channel.</p>", "smithy.api#required" => {}}))
    ElasticChannelConfiguration.add_member(:target_memberships_per_sub_channel, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetMembershipsPerSubChannel, location_name: 'TargetMembershipsPerSubChannel', traits: {"smithy.api#documentation" => "<p>The maximum number of members allowed in a SubChannel.</p>", "smithy.api#required" => {}}))
    ElasticChannelConfiguration.add_member(:minimum_membership_percentage, Smithy::Schema::Shapes::ShapeRef.new(shape: MinimumMembershipPercentage, location_name: 'MinimumMembershipPercentage', traits: {"smithy.api#documentation" => "<p>The minimum allowed percentage of TargetMembershipsPerSubChannel users. Ceil of the calculated value is used in balancing members among SubChannels of the elastic channel.</p>", "smithy.api#required" => {}}))
    ElasticChannelConfiguration.type = Types::ElasticChannelConfiguration
    ErrorCode.add_member(:bad_request, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BadRequest', traits: {"smithy.api#enumValue" => "BadRequest"}))
    ErrorCode.add_member(:conflict, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Conflict', traits: {"smithy.api#enumValue" => "Conflict"}))
    ErrorCode.add_member(:forbidden, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Forbidden', traits: {"smithy.api#enumValue" => "Forbidden"}))
    ErrorCode.add_member(:not_found, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NotFound', traits: {"smithy.api#enumValue" => "NotFound"}))
    ErrorCode.add_member(:precondition_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PreconditionFailed', traits: {"smithy.api#enumValue" => "PreconditionFailed"}))
    ErrorCode.add_member(:resource_limit_exceeded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ResourceLimitExceeded', traits: {"smithy.api#enumValue" => "ResourceLimitExceeded"}))
    ErrorCode.add_member(:service_failure, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ServiceFailure', traits: {"smithy.api#enumValue" => "ServiceFailure"}))
    ErrorCode.add_member(:access_denied, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AccessDenied', traits: {"smithy.api#enumValue" => "AccessDenied"}))
    ErrorCode.add_member(:service_unavailable, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ServiceUnavailable', traits: {"smithy.api#enumValue" => "ServiceUnavailable"}))
    ErrorCode.add_member(:throttled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Throttled', traits: {"smithy.api#enumValue" => "Throttled"}))
    ErrorCode.add_member(:throttling, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Throttling', traits: {"smithy.api#enumValue" => "Throttling"}))
    ErrorCode.add_member(:unauthorized, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Unauthorized', traits: {"smithy.api#enumValue" => "Unauthorized"}))
    ErrorCode.add_member(:unprocessable, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Unprocessable', traits: {"smithy.api#enumValue" => "Unprocessable"}))
    ErrorCode.add_member(:voice_connector_group_associations_exist, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VoiceConnectorGroupAssociationsExist', traits: {"smithy.api#enumValue" => "VoiceConnectorGroupAssociationsExist"}))
    ErrorCode.add_member(:phone_number_associations_exist, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PhoneNumberAssociationsExist', traits: {"smithy.api#enumValue" => "PhoneNumberAssociationsExist"}))
    ExpirationCriterion.add_member(:created_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATED_TIMESTAMP', traits: {"smithy.api#enumValue" => "CREATED_TIMESTAMP"}))
    ExpirationCriterion.add_member(:last_message_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LAST_MESSAGE_TIMESTAMP', traits: {"smithy.api#enumValue" => "LAST_MESSAGE_TIMESTAMP"}))
    ExpirationSettings.add_member(:expiration_days, Smithy::Schema::Shapes::ShapeRef.new(shape: ExpirationDays, location_name: 'ExpirationDays', traits: {"smithy.api#documentation" => "<p>The period in days after which the system automatically deletes a channel.</p>", "smithy.api#required" => {}}))
    ExpirationSettings.add_member(:expiration_criterion, Smithy::Schema::Shapes::ShapeRef.new(shape: ExpirationCriterion, location_name: 'ExpirationCriterion', traits: {"smithy.api#documentation" => "<p>The conditions that must be met for a channel to expire.</p>", "smithy.api#required" => {}}))
    ExpirationSettings.type = Types::ExpirationSettings
    FallbackAction.add_member(:continue, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CONTINUE', traits: {"smithy.api#enumValue" => "CONTINUE"}))
    FallbackAction.add_member(:abort, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ABORT', traits: {"smithy.api#enumValue" => "ABORT"}))
    ForbiddenException.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'Code'))
    ForbiddenException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    ForbiddenException.type = Types::ForbiddenException
    GetChannelMembershipPreferencesRequest.add_member(:channel_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'ChannelArn', traits: {"smithy.api#documentation" => "<p>The ARN of the channel.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetChannelMembershipPreferencesRequest.add_member(:member_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'MemberArn', traits: {"smithy.api#documentation" => "<p>The <code>AppInstanceUserArn</code> of the member retrieving the preferences.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetChannelMembershipPreferencesRequest.add_member(:chime_bearer, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'ChimeBearer', traits: {"smithy.api#documentation" => "<p>The ARN of the <code>AppInstanceUser</code> or <code>AppInstanceBot</code> that makes the API call.</p>", "smithy.api#httpHeader" => "x-amz-chime-bearer", "smithy.api#required" => {}}))
    GetChannelMembershipPreferencesRequest.type = Types::GetChannelMembershipPreferencesRequest
    GetChannelMembershipPreferencesResponse.add_member(:channel_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'ChannelArn', traits: {"smithy.api#documentation" => "<p>The ARN of the channel.</p>"}))
    GetChannelMembershipPreferencesResponse.add_member(:member, Smithy::Schema::Shapes::ShapeRef.new(shape: Identity, location_name: 'Member', traits: {"smithy.api#documentation" => "<p>The details of a user.</p>"}))
    GetChannelMembershipPreferencesResponse.add_member(:preferences, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelMembershipPreferences, location_name: 'Preferences', traits: {"smithy.api#documentation" => "<p>The channel membership preferences for an <code>AppInstanceUser</code> .</p>"}))
    GetChannelMembershipPreferencesResponse.type = Types::GetChannelMembershipPreferencesResponse
    GetChannelMessageRequest.add_member(:channel_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'ChannelArn', traits: {"smithy.api#documentation" => "<p>The ARN of the channel.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetChannelMessageRequest.add_member(:message_id, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageId, location_name: 'MessageId', traits: {"smithy.api#documentation" => "<p>The ID of the message.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetChannelMessageRequest.add_member(:chime_bearer, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'ChimeBearer', traits: {"smithy.api#documentation" => "<p>The ARN of the <code>AppInstanceUser</code> or <code>AppInstanceBot</code> \n         that makes the API call.</p>", "smithy.api#httpHeader" => "x-amz-chime-bearer", "smithy.api#required" => {}}))
    GetChannelMessageRequest.add_member(:sub_channel_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SubChannelId, location_name: 'SubChannelId', traits: {"smithy.api#documentation" => "<p>The ID of the SubChannel in the request.</p>\n         <note>\n            <p>Only required when getting messages in a SubChannel that the user belongs to.</p>\n         </note>", "smithy.api#httpQuery" => "sub-channel-id"}))
    GetChannelMessageRequest.type = Types::GetChannelMessageRequest
    GetChannelMessageResponse.add_member(:channel_message, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelMessage, location_name: 'ChannelMessage', traits: {"smithy.api#documentation" => "<p>The details of and content in the message.</p>"}))
    GetChannelMessageResponse.type = Types::GetChannelMessageResponse
    GetChannelMessageStatusRequest.add_member(:channel_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'ChannelArn', traits: {"smithy.api#documentation" => "<p>The ARN of the channel</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetChannelMessageStatusRequest.add_member(:message_id, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageId, location_name: 'MessageId', traits: {"smithy.api#documentation" => "<p>The ID of the message.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetChannelMessageStatusRequest.add_member(:chime_bearer, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'ChimeBearer', traits: {"smithy.api#documentation" => "<p>The <code>AppInstanceUserArn</code> of the user making the API call.</p>", "smithy.api#httpHeader" => "x-amz-chime-bearer", "smithy.api#required" => {}}))
    GetChannelMessageStatusRequest.add_member(:sub_channel_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SubChannelId, location_name: 'SubChannelId', traits: {"smithy.api#documentation" => "<p>The ID of the SubChannel in the request.</p>\n         <note>\n            <p>Only required when getting message status in a SubChannel that the user belongs to.</p>\n         </note>", "smithy.api#httpQuery" => "sub-channel-id"}))
    GetChannelMessageStatusRequest.type = Types::GetChannelMessageStatusRequest
    GetChannelMessageStatusResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelMessageStatusStructure, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The message status and details.</p>"}))
    GetChannelMessageStatusResponse.type = Types::GetChannelMessageStatusResponse
    GetMessagingSessionEndpointRequest.type = Types::GetMessagingSessionEndpointRequest
    GetMessagingSessionEndpointResponse.add_member(:endpoint, Smithy::Schema::Shapes::ShapeRef.new(shape: MessagingSessionEndpoint, location_name: 'Endpoint', traits: {"smithy.api#documentation" => "<p>The endpoint returned in the response.</p>"}))
    GetMessagingSessionEndpointResponse.type = Types::GetMessagingSessionEndpointResponse
    GetMessagingStreamingConfigurationsRequest.add_member(:app_instance_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'AppInstanceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the streaming configurations.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetMessagingStreamingConfigurationsRequest.type = Types::GetMessagingStreamingConfigurationsRequest
    GetMessagingStreamingConfigurationsResponse.add_member(:streaming_configurations, Smithy::Schema::Shapes::ShapeRef.new(shape: StreamingConfigurationList, location_name: 'StreamingConfigurations', traits: {"smithy.api#documentation" => "<p>The streaming settings.</p>"}))
    GetMessagingStreamingConfigurationsResponse.type = Types::GetMessagingStreamingConfigurationsResponse
    Identity.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The ARN in an Identity.</p>"}))
    Identity.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name in an Identity.</p>"}))
    Identity.type = Types::Identity
    InvocationType.add_member(:async, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ASYNC', traits: {"smithy.api#enumValue" => "ASYNC"}))
    LambdaConfiguration.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: LambdaFunctionArn, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the Lambda message processing function.</p>", "smithy.api#required" => {}}))
    LambdaConfiguration.add_member(:invocation_type, Smithy::Schema::Shapes::ShapeRef.new(shape: InvocationType, location_name: 'InvocationType', traits: {"smithy.api#documentation" => "<p>Controls how the Lambda function is invoked.</p>", "smithy.api#required" => {}}))
    LambdaConfiguration.type = Types::LambdaConfiguration
    ListChannelBansRequest.add_member(:channel_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'ChannelArn', traits: {"smithy.api#documentation" => "<p>The ARN of the channel.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListChannelBansRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of bans that you want returned.</p>", "smithy.api#httpQuery" => "max-results"}))
    ListChannelBansRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token passed by previous API calls until all requested bans are returned.</p>", "smithy.api#httpQuery" => "next-token"}))
    ListChannelBansRequest.add_member(:chime_bearer, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'ChimeBearer', traits: {"smithy.api#documentation" => "<p>The ARN of the <code>AppInstanceUser</code> or <code>AppInstanceBot</code> \n         that makes the API call.</p>", "smithy.api#httpHeader" => "x-amz-chime-bearer", "smithy.api#required" => {}}))
    ListChannelBansRequest.type = Types::ListChannelBansRequest
    ListChannelBansResponse.add_member(:channel_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'ChannelArn', traits: {"smithy.api#documentation" => "<p>The ARN of the channel.</p>"}))
    ListChannelBansResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token passed by previous API calls until all requested bans are returned.</p>"}))
    ListChannelBansResponse.add_member(:channel_bans, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelBanSummaryList, location_name: 'ChannelBans', traits: {"smithy.api#documentation" => "<p>The information for each requested ban.</p>"}))
    ListChannelBansResponse.type = Types::ListChannelBansResponse
    ListChannelFlowsRequest.add_member(:app_instance_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'AppInstanceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the app instance.</p>", "smithy.api#httpQuery" => "app-instance-arn", "smithy.api#required" => {}}))
    ListChannelFlowsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of channel flows that you want to return.</p>", "smithy.api#httpQuery" => "max-results"}))
    ListChannelFlowsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token passed by previous API calls until all requested channel flows are returned.</p>", "smithy.api#httpQuery" => "next-token"}))
    ListChannelFlowsRequest.type = Types::ListChannelFlowsRequest
    ListChannelFlowsResponse.add_member(:channel_flows, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelFlowSummaryList, location_name: 'ChannelFlows', traits: {"smithy.api#documentation" => "<p>The information about each channel flow.</p>"}))
    ListChannelFlowsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token passed by previous API calls until all requested channels are returned.</p>"}))
    ListChannelFlowsResponse.type = Types::ListChannelFlowsResponse
    ListChannelMembershipsForAppInstanceUserRequest.add_member(:app_instance_user_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'AppInstanceUserArn', traits: {"smithy.api#documentation" => "<p>The ARN of the user or bot.</p>", "smithy.api#httpQuery" => "app-instance-user-arn"}))
    ListChannelMembershipsForAppInstanceUserRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of users that you want returned.</p>", "smithy.api#httpQuery" => "max-results"}))
    ListChannelMembershipsForAppInstanceUserRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token returned from previous API requests until the number of channel memberships is\n         reached.</p>", "smithy.api#httpQuery" => "next-token"}))
    ListChannelMembershipsForAppInstanceUserRequest.add_member(:chime_bearer, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'ChimeBearer', traits: {"smithy.api#documentation" => "<p>The ARN of the <code>AppInstanceUser</code> or <code>AppInstanceBot</code> \n         that makes the API call.</p>", "smithy.api#httpHeader" => "x-amz-chime-bearer", "smithy.api#required" => {}}))
    ListChannelMembershipsForAppInstanceUserRequest.type = Types::ListChannelMembershipsForAppInstanceUserRequest
    ListChannelMembershipsForAppInstanceUserResponse.add_member(:channel_memberships, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelMembershipForAppInstanceUserSummaryList, location_name: 'ChannelMemberships', traits: {"smithy.api#documentation" => "<p>The information for the requested channel memberships.</p>"}))
    ListChannelMembershipsForAppInstanceUserResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token passed by previous API calls until all requested users are returned.</p>"}))
    ListChannelMembershipsForAppInstanceUserResponse.type = Types::ListChannelMembershipsForAppInstanceUserResponse
    ListChannelMembershipsRequest.add_member(:channel_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'ChannelArn', traits: {"smithy.api#documentation" => "<p>The maximum number of channel memberships that you want returned.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListChannelMembershipsRequest.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelMembershipType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The membership type of a user, <code>DEFAULT</code> or <code>HIDDEN</code>. Default\n         members are returned as part of <code>ListChannelMemberships</code> if no type is specified. Hidden members\n         are only returned if the type filter in <code>ListChannelMemberships</code> equals\n            <code>HIDDEN</code>.</p>", "smithy.api#httpQuery" => "type"}))
    ListChannelMembershipsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of channel memberships that you want returned.</p>", "smithy.api#httpQuery" => "max-results"}))
    ListChannelMembershipsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token passed by previous API calls until all requested channel memberships are\n         returned.</p>", "smithy.api#httpQuery" => "next-token"}))
    ListChannelMembershipsRequest.add_member(:chime_bearer, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'ChimeBearer', traits: {"smithy.api#documentation" => "<p>The ARN of the <code>AppInstanceUser</code> or <code>AppInstanceBot</code> \n         that makes the API call.</p>", "smithy.api#httpHeader" => "x-amz-chime-bearer", "smithy.api#required" => {}}))
    ListChannelMembershipsRequest.add_member(:sub_channel_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SubChannelId, location_name: 'SubChannelId', traits: {"smithy.api#documentation" => "<p>The ID of the SubChannel in the request.</p>\n         <note>\n            <p>Only required when listing a user's memberships in a particular sub-channel of an elastic channel.</p>\n         </note>", "smithy.api#httpQuery" => "sub-channel-id"}))
    ListChannelMembershipsRequest.type = Types::ListChannelMembershipsRequest
    ListChannelMembershipsResponse.add_member(:channel_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'ChannelArn', traits: {"smithy.api#documentation" => "<p>The ARN of the channel.</p>"}))
    ListChannelMembershipsResponse.add_member(:channel_memberships, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelMembershipSummaryList, location_name: 'ChannelMemberships', traits: {"smithy.api#documentation" => "<p>The information for the requested channel memberships.</p>"}))
    ListChannelMembershipsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token passed by previous API calls until all requested channel memberships are\n         returned.</p>"}))
    ListChannelMembershipsResponse.type = Types::ListChannelMembershipsResponse
    ListChannelMessagesRequest.add_member(:channel_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'ChannelArn', traits: {"smithy.api#documentation" => "<p>The ARN of the channel.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListChannelMessagesRequest.add_member(:sort_order, Smithy::Schema::Shapes::ShapeRef.new(shape: SortOrder, location_name: 'SortOrder', traits: {"smithy.api#documentation" => "<p>The order in which you want messages sorted. Default is Descending, based on time\n         created.</p>", "smithy.api#httpQuery" => "sort-order"}))
    ListChannelMessagesRequest.add_member(:not_before, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'NotBefore', traits: {"smithy.api#documentation" => "<p>The initial or starting time stamp for your requested messages.</p>", "smithy.api#httpQuery" => "not-before"}))
    ListChannelMessagesRequest.add_member(:not_after, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'NotAfter', traits: {"smithy.api#documentation" => "<p>The final or ending time stamp for your requested messages.</p>", "smithy.api#httpQuery" => "not-after"}))
    ListChannelMessagesRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of messages that you want returned.</p>", "smithy.api#httpQuery" => "max-results"}))
    ListChannelMessagesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token passed by previous API calls until all requested messages are returned.</p>", "smithy.api#httpQuery" => "next-token"}))
    ListChannelMessagesRequest.add_member(:chime_bearer, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'ChimeBearer', traits: {"smithy.api#documentation" => "<p>The ARN of the <code>AppInstanceUser</code> or <code>AppInstanceBot</code> \n         that makes the API call.</p>", "smithy.api#httpHeader" => "x-amz-chime-bearer", "smithy.api#required" => {}}))
    ListChannelMessagesRequest.add_member(:sub_channel_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SubChannelId, location_name: 'SubChannelId', traits: {"smithy.api#documentation" => "<p>The ID of the SubChannel in the request.</p>\n         <note>\n            <p>Only required when listing the messages in a SubChannel that the user belongs to.</p>\n         </note>", "smithy.api#httpQuery" => "sub-channel-id"}))
    ListChannelMessagesRequest.type = Types::ListChannelMessagesRequest
    ListChannelMessagesResponse.add_member(:channel_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'ChannelArn', traits: {"smithy.api#documentation" => "<p>The ARN of the channel containing the requested messages.</p>"}))
    ListChannelMessagesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token passed by previous API calls until all requested messages are returned.</p>"}))
    ListChannelMessagesResponse.add_member(:channel_messages, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelMessageSummaryList, location_name: 'ChannelMessages', traits: {"smithy.api#documentation" => "<p>The information about, and content of, each requested message.</p>"}))
    ListChannelMessagesResponse.add_member(:sub_channel_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SubChannelId, location_name: 'SubChannelId', traits: {"smithy.api#documentation" => "<p>The ID of the SubChannel in the response.</p>"}))
    ListChannelMessagesResponse.type = Types::ListChannelMessagesResponse
    ListChannelModeratorsRequest.add_member(:channel_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'ChannelArn', traits: {"smithy.api#documentation" => "<p>The ARN of the channel.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListChannelModeratorsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of moderators that you want returned.</p>", "smithy.api#httpQuery" => "max-results"}))
    ListChannelModeratorsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token passed by previous API calls until all requested moderators are\n         returned.</p>", "smithy.api#httpQuery" => "next-token"}))
    ListChannelModeratorsRequest.add_member(:chime_bearer, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'ChimeBearer', traits: {"smithy.api#documentation" => "<p>The ARN of the <code>AppInstanceUser</code> or <code>AppInstanceBot</code> \n         that makes the API call.</p>", "smithy.api#httpHeader" => "x-amz-chime-bearer", "smithy.api#required" => {}}))
    ListChannelModeratorsRequest.type = Types::ListChannelModeratorsRequest
    ListChannelModeratorsResponse.add_member(:channel_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'ChannelArn', traits: {"smithy.api#documentation" => "<p>The ARN of the channel.</p>"}))
    ListChannelModeratorsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token passed by previous API calls until all requested moderators are\n         returned.</p>"}))
    ListChannelModeratorsResponse.add_member(:channel_moderators, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelModeratorSummaryList, location_name: 'ChannelModerators', traits: {"smithy.api#documentation" => "<p>The information about and names of each moderator.</p>"}))
    ListChannelModeratorsResponse.type = Types::ListChannelModeratorsResponse
    ListChannelsAssociatedWithChannelFlowRequest.add_member(:channel_flow_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'ChannelFlowArn', traits: {"smithy.api#documentation" => "<p>The ARN of the channel flow.</p>", "smithy.api#httpQuery" => "channel-flow-arn", "smithy.api#required" => {}}))
    ListChannelsAssociatedWithChannelFlowRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of channels that you want to return.</p>", "smithy.api#httpQuery" => "max-results"}))
    ListChannelsAssociatedWithChannelFlowRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token passed by previous API calls until all requested channels are returned.</p>", "smithy.api#httpQuery" => "next-token"}))
    ListChannelsAssociatedWithChannelFlowRequest.type = Types::ListChannelsAssociatedWithChannelFlowRequest
    ListChannelsAssociatedWithChannelFlowResponse.add_member(:channels, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelAssociatedWithFlowSummaryList, location_name: 'Channels', traits: {"smithy.api#documentation" => "<p>The information about each channel.</p>"}))
    ListChannelsAssociatedWithChannelFlowResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token passed by previous API calls until all requested channels are returned.</p>"}))
    ListChannelsAssociatedWithChannelFlowResponse.type = Types::ListChannelsAssociatedWithChannelFlowResponse
    ListChannelsModeratedByAppInstanceUserRequest.add_member(:app_instance_user_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'AppInstanceUserArn', traits: {"smithy.api#documentation" => "<p>The ARN of the user or bot in the moderated channel.</p>", "smithy.api#httpQuery" => "app-instance-user-arn"}))
    ListChannelsModeratedByAppInstanceUserRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of channels in the request.</p>", "smithy.api#httpQuery" => "max-results"}))
    ListChannelsModeratedByAppInstanceUserRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token returned from previous API requests until the number of channels moderated by\n         the user is reached.</p>", "smithy.api#httpQuery" => "next-token"}))
    ListChannelsModeratedByAppInstanceUserRequest.add_member(:chime_bearer, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'ChimeBearer', traits: {"smithy.api#documentation" => "<p>The ARN of the <code>AppInstanceUser</code> or <code>AppInstanceBot</code> \n         that makes the API call.</p>", "smithy.api#httpHeader" => "x-amz-chime-bearer", "smithy.api#required" => {}}))
    ListChannelsModeratedByAppInstanceUserRequest.type = Types::ListChannelsModeratedByAppInstanceUserRequest
    ListChannelsModeratedByAppInstanceUserResponse.add_member(:channels, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelModeratedByAppInstanceUserSummaryList, location_name: 'Channels', traits: {"smithy.api#documentation" => "<p>The moderated channels in the request.</p>"}))
    ListChannelsModeratedByAppInstanceUserResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token returned from previous API requests until the number of channels moderated by\n         the user is reached.</p>"}))
    ListChannelsModeratedByAppInstanceUserResponse.type = Types::ListChannelsModeratedByAppInstanceUserResponse
    ListChannelsRequest.add_member(:app_instance_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'AppInstanceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the <code>AppInstance</code>.</p>", "smithy.api#httpQuery" => "app-instance-arn", "smithy.api#required" => {}}))
    ListChannelsRequest.add_member(:privacy, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelPrivacy, location_name: 'Privacy', traits: {"smithy.api#documentation" => "<p>The privacy setting. <code>PUBLIC</code> retrieves all the public channels.\n            <code>PRIVATE</code> retrieves private channels. Only an <code>AppInstanceAdmin</code>\n         can retrieve private channels. </p>", "smithy.api#httpQuery" => "privacy"}))
    ListChannelsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of channels that you want to return.</p>", "smithy.api#httpQuery" => "max-results"}))
    ListChannelsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token passed by previous API calls until all requested channels are returned.</p>", "smithy.api#httpQuery" => "next-token"}))
    ListChannelsRequest.add_member(:chime_bearer, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'ChimeBearer', traits: {"smithy.api#documentation" => "<p>The ARN of the <code>AppInstanceUser</code> or <code>AppInstanceBot</code> \n         that makes the API call.</p>", "smithy.api#httpHeader" => "x-amz-chime-bearer", "smithy.api#required" => {}}))
    ListChannelsRequest.type = Types::ListChannelsRequest
    ListChannelsResponse.add_member(:channels, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelSummaryList, location_name: 'Channels', traits: {"smithy.api#documentation" => "<p>The information about each channel.</p>"}))
    ListChannelsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token returned from previous API requests until the number of channels is\n         reached.</p>"}))
    ListChannelsResponse.type = Types::ListChannelsResponse
    ListSubChannelsRequest.add_member(:channel_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'ChannelArn', traits: {"smithy.api#documentation" => "<p>The ARN of elastic channel.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListSubChannelsRequest.add_member(:chime_bearer, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'ChimeBearer', traits: {"smithy.api#documentation" => "<p>The <code>AppInstanceUserArn</code> of the user making the API call.</p>", "smithy.api#httpHeader" => "x-amz-chime-bearer", "smithy.api#required" => {}}))
    ListSubChannelsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of sub-channels that you want to return.</p>", "smithy.api#httpQuery" => "max-results"}))
    ListSubChannelsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token passed by previous API calls until all requested sub-channels are returned.</p>", "smithy.api#httpQuery" => "next-token"}))
    ListSubChannelsRequest.type = Types::ListSubChannelsRequest
    ListSubChannelsResponse.add_member(:channel_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'ChannelArn', traits: {"smithy.api#documentation" => "<p>The ARN of elastic channel.</p>"}))
    ListSubChannelsResponse.add_member(:sub_channels, Smithy::Schema::Shapes::ShapeRef.new(shape: SubChannelSummaryList, location_name: 'SubChannels', traits: {"smithy.api#documentation" => "<p>The information about each sub-channel.</p>"}))
    ListSubChannelsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token passed by previous API calls until all requested sub-channels are returned.</p>"}))
    ListSubChannelsResponse.type = Types::ListSubChannelsResponse
    ListTagsForResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'ResourceARN', traits: {"smithy.api#documentation" => "<p>The ARN of the resource.</p>", "smithy.api#httpQuery" => "arn", "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tag key-value pairs.</p>"}))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    MemberArns.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn)
    Members.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Identity)
    MessageAttributeMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: MessageAttributeName)
    MessageAttributeMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: MessageAttributeValue)
    MessageAttributeStringValues.member = Smithy::Schema::Shapes::ShapeRef.new(shape: MessageAttributeStringValue)
    MessageAttributeValue.add_member(:string_values, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageAttributeStringValues, location_name: 'StringValues', traits: {"smithy.api#documentation" => "<p>The strings in a message attribute value.</p>"}))
    MessageAttributeValue.type = Types::MessageAttributeValue
    MessagingDataType.add_member(:channel, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Channel', traits: {"smithy.api#enumValue" => "Channel"}))
    MessagingDataType.add_member(:channel_message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ChannelMessage', traits: {"smithy.api#enumValue" => "ChannelMessage"}))
    MessagingSessionEndpoint.add_member(:url, Smithy::Schema::Shapes::ShapeRef.new(shape: UrlType, location_name: 'Url', traits: {"smithy.api#documentation" => "<p>The endpoint to which you establish a websocket connection.</p>"}))
    MessagingSessionEndpoint.type = Types::MessagingSessionEndpoint
    NotFoundException.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'Code'))
    NotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    NotFoundException.type = Types::NotFoundException
    Processor.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyResourceName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the channel flow.</p>", "smithy.api#required" => {}}))
    Processor.add_member(:configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ProcessorConfiguration, location_name: 'Configuration', traits: {"smithy.api#documentation" => "<p>The information about the type of processor and its identifier.</p>", "smithy.api#required" => {}}))
    Processor.add_member(:execution_order, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelFlowExecutionOrder, location_name: 'ExecutionOrder', traits: {"smithy.api#documentation" => "<p>The sequence in which processors run. If you have multiple processors in a channel flow, message processing goes through each processor in the sequence. The value determines the sequence. \n         At this point, we support only 1 processor within a flow.</p>", "smithy.api#required" => {}}))
    Processor.add_member(:fallback_action, Smithy::Schema::Shapes::ShapeRef.new(shape: FallbackAction, location_name: 'FallbackAction', traits: {"smithy.api#documentation" => "<p>Determines whether to continue with message processing or stop it in cases where communication with a processor fails. If a processor has a fallback action of <code>ABORT</code> and \n         communication with it fails, the processor sets the message status to <code>FAILED</code> and does not send the message to any recipients. Note that if the last processor in the channel flow sequence \n         has a fallback action of <code>CONTINUE</code> and communication with the processor fails, then the message is considered processed and sent to recipients of the channel.</p>", "smithy.api#required" => {}}))
    Processor.type = Types::Processor
    ProcessorConfiguration.add_member(:lambda, Smithy::Schema::Shapes::ShapeRef.new(shape: LambdaConfiguration, location_name: 'Lambda', traits: {"smithy.api#documentation" => "<p>Indicates that the processor is of type Lambda.</p>", "smithy.api#required" => {}}))
    ProcessorConfiguration.type = Types::ProcessorConfiguration
    ProcessorList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Processor)
    PushNotificationConfiguration.add_member(:title, Smithy::Schema::Shapes::ShapeRef.new(shape: PushNotificationTitle, location_name: 'Title', traits: {"smithy.api#documentation" => "<p>The title of the push notification.</p>"}))
    PushNotificationConfiguration.add_member(:body, Smithy::Schema::Shapes::ShapeRef.new(shape: PushNotificationBody, location_name: 'Body', traits: {"smithy.api#documentation" => "<p>The body of the push notification.</p>"}))
    PushNotificationConfiguration.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: PushNotificationType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>Enum value that indicates the type of the push notification for a message.\n         <code>DEFAULT</code>: Normal mobile push notification.\n         <code>VOIP</code>: VOIP mobile push notification.</p>"}))
    PushNotificationConfiguration.type = Types::PushNotificationConfiguration
    PushNotificationPreferences.add_member(:allow_notifications, Smithy::Schema::Shapes::ShapeRef.new(shape: AllowNotifications, location_name: 'AllowNotifications', traits: {"smithy.api#documentation" => "<p>Enum value that indicates which push notifications to send to the requested member of a channel.\n         <code>ALL</code> sends all push notifications, <code>NONE</code> sends no push notifications, <code>FILTERED</code> sends only filtered push notifications. \n      </p>", "smithy.api#required" => {}}))
    PushNotificationPreferences.add_member(:filter_rule, Smithy::Schema::Shapes::ShapeRef.new(shape: FilterRule, location_name: 'FilterRule', traits: {"smithy.api#documentation" => "<p>The simple JSON object used to send a subset of a push notification to the requested member.</p>"}))
    PushNotificationPreferences.type = Types::PushNotificationPreferences
    PushNotificationType.add_member(:default, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DEFAULT', traits: {"smithy.api#enumValue" => "DEFAULT"}))
    PushNotificationType.add_member(:voip, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VOIP', traits: {"smithy.api#enumValue" => "VOIP"}))
    PutChannelExpirationSettingsRequest.add_member(:channel_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'ChannelArn', traits: {"smithy.api#documentation" => "<p>The ARN of the channel.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutChannelExpirationSettingsRequest.add_member(:chime_bearer, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'ChimeBearer', traits: {"smithy.api#documentation" => "<p>The ARN of the <code>AppInstanceUser</code> or <code>AppInstanceBot</code> that makes the API call.</p>", "smithy.api#httpHeader" => "x-amz-chime-bearer"}))
    PutChannelExpirationSettingsRequest.add_member(:expiration_settings, Smithy::Schema::Shapes::ShapeRef.new(shape: ExpirationSettings, location_name: 'ExpirationSettings', traits: {"smithy.api#documentation" => "<p>Settings that control the interval after which a channel is deleted.</p>"}))
    PutChannelExpirationSettingsRequest.type = Types::PutChannelExpirationSettingsRequest
    PutChannelExpirationSettingsResponse.add_member(:channel_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'ChannelArn', traits: {"smithy.api#documentation" => "<p>The channel ARN.</p>"}))
    PutChannelExpirationSettingsResponse.add_member(:expiration_settings, Smithy::Schema::Shapes::ShapeRef.new(shape: ExpirationSettings, location_name: 'ExpirationSettings', traits: {"smithy.api#documentation" => "<p>Settings that control the interval after which a channel is deleted.</p>"}))
    PutChannelExpirationSettingsResponse.type = Types::PutChannelExpirationSettingsResponse
    PutChannelMembershipPreferencesRequest.add_member(:channel_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'ChannelArn', traits: {"smithy.api#documentation" => "<p>The ARN of the channel.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutChannelMembershipPreferencesRequest.add_member(:member_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'MemberArn', traits: {"smithy.api#documentation" => "<p>The ARN of the member setting the preferences.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutChannelMembershipPreferencesRequest.add_member(:chime_bearer, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'ChimeBearer', traits: {"smithy.api#documentation" => "<p>The ARN of the <code>AppInstanceUser</code> or <code>AppInstanceBot</code> that makes the API call.</p>", "smithy.api#httpHeader" => "x-amz-chime-bearer", "smithy.api#required" => {}}))
    PutChannelMembershipPreferencesRequest.add_member(:preferences, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelMembershipPreferences, location_name: 'Preferences', traits: {"smithy.api#documentation" => "<p>The channel membership preferences of an <code>AppInstanceUser</code> .</p>", "smithy.api#required" => {}}))
    PutChannelMembershipPreferencesRequest.type = Types::PutChannelMembershipPreferencesRequest
    PutChannelMembershipPreferencesResponse.add_member(:channel_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'ChannelArn', traits: {"smithy.api#documentation" => "<p>The ARN of the channel.</p>"}))
    PutChannelMembershipPreferencesResponse.add_member(:member, Smithy::Schema::Shapes::ShapeRef.new(shape: Identity, location_name: 'Member', traits: {"smithy.api#documentation" => "<p>The details of a user.</p>"}))
    PutChannelMembershipPreferencesResponse.add_member(:preferences, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelMembershipPreferences, location_name: 'Preferences', traits: {"smithy.api#documentation" => "<p>The ARN and metadata of the member being added.</p>"}))
    PutChannelMembershipPreferencesResponse.type = Types::PutChannelMembershipPreferencesResponse
    PutMessagingStreamingConfigurationsRequest.add_member(:app_instance_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'AppInstanceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the streaming configuration.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutMessagingStreamingConfigurationsRequest.add_member(:streaming_configurations, Smithy::Schema::Shapes::ShapeRef.new(shape: StreamingConfigurationList, location_name: 'StreamingConfigurations', traits: {"smithy.api#documentation" => "<p>The streaming configurations.</p>", "smithy.api#required" => {}}))
    PutMessagingStreamingConfigurationsRequest.type = Types::PutMessagingStreamingConfigurationsRequest
    PutMessagingStreamingConfigurationsResponse.add_member(:streaming_configurations, Smithy::Schema::Shapes::ShapeRef.new(shape: StreamingConfigurationList, location_name: 'StreamingConfigurations', traits: {"smithy.api#documentation" => "<p>The requested streaming configurations.</p>"}))
    PutMessagingStreamingConfigurationsResponse.type = Types::PutMessagingStreamingConfigurationsResponse
    RedactChannelMessageRequest.add_member(:channel_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'ChannelArn', traits: {"smithy.api#documentation" => "<p>The ARN of the channel containing the messages that you want to redact.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RedactChannelMessageRequest.add_member(:message_id, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageId, location_name: 'MessageId', traits: {"smithy.api#documentation" => "<p>The ID of the message being redacted.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RedactChannelMessageRequest.add_member(:chime_bearer, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'ChimeBearer', traits: {"smithy.api#documentation" => "<p>The ARN of the <code>AppInstanceUser</code> or <code>AppInstanceBot</code> \n         that makes the API call.</p>", "smithy.api#httpHeader" => "x-amz-chime-bearer", "smithy.api#required" => {}}))
    RedactChannelMessageRequest.add_member(:sub_channel_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SubChannelId, location_name: 'SubChannelId', traits: {"smithy.api#documentation" => "<p>The ID of the SubChannel in the request.</p>"}))
    RedactChannelMessageRequest.type = Types::RedactChannelMessageRequest
    RedactChannelMessageResponse.add_member(:channel_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'ChannelArn', traits: {"smithy.api#documentation" => "<p>The ARN of the channel containing the messages that you want to redact.</p>"}))
    RedactChannelMessageResponse.add_member(:message_id, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageId, location_name: 'MessageId', traits: {"smithy.api#documentation" => "<p>The ID of the message being redacted.</p>"}))
    RedactChannelMessageResponse.add_member(:sub_channel_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SubChannelId, location_name: 'SubChannelId', traits: {"smithy.api#documentation" => "<p>The ID of the SubChannel in the response.</p>\n         <note>\n            <p>Only required when redacting messages in a SubChannel that the user belongs to.</p>\n         </note>"}))
    RedactChannelMessageResponse.type = Types::RedactChannelMessageResponse
    ResourceLimitExceededException.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'Code'))
    ResourceLimitExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    ResourceLimitExceededException.type = Types::ResourceLimitExceededException
    SearchChannelsRequest.add_member(:chime_bearer, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'ChimeBearer', traits: {"smithy.api#documentation" => "<p>The <code>AppInstanceUserArn</code> of the user making the API call.</p>", "smithy.api#httpHeader" => "x-amz-chime-bearer"}))
    SearchChannelsRequest.add_member(:fields, Smithy::Schema::Shapes::ShapeRef.new(shape: SearchFields, location_name: 'Fields', traits: {"smithy.api#documentation" => "<p>A list of the <code>Field</code> objects in the channel being searched.</p>", "smithy.api#required" => {}}))
    SearchChannelsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of channels that you want returned.</p>", "smithy.api#httpQuery" => "max-results"}))
    SearchChannelsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token returned from previous API requests until the number of channels is reached.</p>", "smithy.api#httpQuery" => "next-token"}))
    SearchChannelsRequest.type = Types::SearchChannelsRequest
    SearchChannelsResponse.add_member(:channels, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelSummaryList, location_name: 'Channels', traits: {"smithy.api#documentation" => "<p>A list of the channels in the request.</p>"}))
    SearchChannelsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token returned from previous API responses until the number of channels is reached.</p>"}))
    SearchChannelsResponse.type = Types::SearchChannelsResponse
    SearchField.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: SearchFieldKey, location_name: 'Key', traits: {"smithy.api#documentation" => "<p>An <code>enum</code> value that indicates the key to search the channel on. <code>MEMBERS</code> allows you to search channels based on memberships. You can use it with the <code>EQUALS</code> \n         operator to get channels whose memberships are equal to the specified values, and with the <code>INCLUDES</code>  operator to get channels whose memberships include the specified values.</p>", "smithy.api#required" => {}}))
    SearchField.add_member(:values, Smithy::Schema::Shapes::ShapeRef.new(shape: SearchFieldValues, location_name: 'Values', traits: {"smithy.api#documentation" => "<p>The values that you want to search for, a list of strings. The values must be <code>AppInstanceUserArns</code> specified as a list of strings.</p>\n         <note>\n            <p>This operation isn't supported for <code>AppInstanceUsers</code> with large number of memberships.</p>\n         </note>", "smithy.api#required" => {}}))
    SearchField.add_member(:operator, Smithy::Schema::Shapes::ShapeRef.new(shape: SearchFieldOperator, location_name: 'Operator', traits: {"smithy.api#documentation" => "<p>The operator used to compare field values, currently <code>EQUALS</code> or <code>INCLUDES</code>.  Use the <code>EQUALS</code> operator to find channels whose memberships equal the specified values. \n         Use the <code>INCLUDES</code> operator to find channels whose memberships include the specified values.</p>", "smithy.api#required" => {}}))
    SearchField.type = Types::SearchField
    SearchFieldKey.add_member(:members, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MEMBERS', traits: {"smithy.api#enumValue" => "MEMBERS"}))
    SearchFieldOperator.add_member(:equals, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EQUALS', traits: {"smithy.api#enumValue" => "EQUALS"}))
    SearchFieldOperator.add_member(:includes, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INCLUDES', traits: {"smithy.api#enumValue" => "INCLUDES"}))
    SearchFieldValues.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SearchFieldValue)
    SearchFields.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SearchField)
    SendChannelMessageRequest.add_member(:channel_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'ChannelArn', traits: {"smithy.api#documentation" => "<p>The ARN of the channel.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    SendChannelMessageRequest.add_member(:content, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyContent, location_name: 'Content', traits: {"smithy.api#documentation" => "<p>The content of the channel message.</p>", "smithy.api#required" => {}}))
    SendChannelMessageRequest.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelMessageType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The type of message, <code>STANDARD</code> or <code>CONTROL</code>.</p>\n         <p>\n            <code>STANDARD</code> messages can be up to 4KB in size and contain metadata. Metadata is arbitrary, \n         and you can use it in a variety of ways, such as containing a link to an attachment.</p>\n         <p>\n            <code>CONTROL</code> messages are limited to 30 bytes and do not contain metadata.</p>", "smithy.api#required" => {}}))
    SendChannelMessageRequest.add_member(:persistence, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelMessagePersistenceType, location_name: 'Persistence', traits: {"smithy.api#documentation" => "<p>Boolean that controls whether the message is persisted on the back end. Required.</p>", "smithy.api#required" => {}}))
    SendChannelMessageRequest.add_member(:metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: Metadata, location_name: 'Metadata', traits: {"smithy.api#documentation" => "<p>The optional metadata for each message.</p>"}))
    SendChannelMessageRequest.add_member(:client_request_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: 'ClientRequestToken', traits: {"smithy.api#documentation" => "<p>The <code>Idempotency</code> token for each client request.</p>", "smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    SendChannelMessageRequest.add_member(:chime_bearer, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'ChimeBearer', traits: {"smithy.api#documentation" => "<p>The ARN of the <code>AppInstanceUser</code> or <code>AppInstanceBot</code> \n         that makes the API call.</p>", "smithy.api#httpHeader" => "x-amz-chime-bearer", "smithy.api#required" => {}}))
    SendChannelMessageRequest.add_member(:push_notification, Smithy::Schema::Shapes::ShapeRef.new(shape: PushNotificationConfiguration, location_name: 'PushNotification', traits: {"smithy.api#documentation" => "<p>The push notification configuration of the message.</p>"}))
    SendChannelMessageRequest.add_member(:message_attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageAttributeMap, location_name: 'MessageAttributes', traits: {"smithy.api#documentation" => "<p>The attributes for the message, used for message filtering along with a <code>FilterRule</code> defined in the <code>PushNotificationPreferences</code>.</p>"}))
    SendChannelMessageRequest.add_member(:sub_channel_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SubChannelId, location_name: 'SubChannelId', traits: {"smithy.api#documentation" => "<p>The ID of the SubChannel in the request.</p>"}))
    SendChannelMessageRequest.add_member(:content_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ContentType, location_name: 'ContentType', traits: {"smithy.api#documentation" => "<p>The content type of the channel message.</p>"}))
    SendChannelMessageRequest.add_member(:target, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetList, location_name: 'Target', traits: {"smithy.api#documentation" => "<p>The target of a message. Must be a member of the channel, such as another user, a bot, or the sender. Only the target and the sender can view targeted messages.\n         Only users who can see targeted messages can take actions on them. However, administrators can delete targeted messages that they can’t see.         \n      </p>"}))
    SendChannelMessageRequest.type = Types::SendChannelMessageRequest
    SendChannelMessageResponse.add_member(:channel_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'ChannelArn', traits: {"smithy.api#documentation" => "<p>The ARN of the channel.</p>"}))
    SendChannelMessageResponse.add_member(:message_id, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageId, location_name: 'MessageId', traits: {"smithy.api#documentation" => "<p>The ID string assigned to each message.</p>"}))
    SendChannelMessageResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelMessageStatusStructure, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of the channel message.</p>"}))
    SendChannelMessageResponse.add_member(:sub_channel_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SubChannelId, location_name: 'SubChannelId', traits: {"smithy.api#documentation" => "<p>The ID of the SubChannel in the response.</p>"}))
    SendChannelMessageResponse.type = Types::SendChannelMessageResponse
    ServiceFailureException.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'Code'))
    ServiceFailureException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    ServiceFailureException.type = Types::ServiceFailureException
    ServiceUnavailableException.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'Code'))
    ServiceUnavailableException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    ServiceUnavailableException.type = Types::ServiceUnavailableException
    SortOrder.add_member(:ascending, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ASCENDING', traits: {"smithy.api#enumValue" => "ASCENDING"}))
    SortOrder.add_member(:descending, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DESCENDING', traits: {"smithy.api#enumValue" => "DESCENDING"}))
    StreamingConfiguration.add_member(:data_type, Smithy::Schema::Shapes::ShapeRef.new(shape: MessagingDataType, location_name: 'DataType', traits: {"smithy.api#documentation" => "<p>The data type of the configuration.</p>", "smithy.api#required" => {}}))
    StreamingConfiguration.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the resource in the configuration. </p>", "smithy.api#required" => {}}))
    StreamingConfiguration.type = Types::StreamingConfiguration
    StreamingConfigurationList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: StreamingConfiguration)
    SubChannelSummary.add_member(:sub_channel_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SubChannelId, location_name: 'SubChannelId', traits: {"smithy.api#documentation" => "<p>The unique ID of a SubChannel.</p>"}))
    SubChannelSummary.add_member(:membership_count, Smithy::Schema::Shapes::ShapeRef.new(shape: MembershipCount, location_name: 'MembershipCount', traits: {"smithy.api#documentation" => "<p>The number of members in a SubChannel.</p>"}))
    SubChannelSummary.type = Types::SubChannelSummary
    SubChannelSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SubChannelSummary)
    Tag.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey, location_name: 'Key', traits: {"smithy.api#documentation" => "<p>The key in a tag.</p>", "smithy.api#required" => {}}))
    Tag.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue, location_name: 'Value', traits: {"smithy.api#documentation" => "<p>The value in a tag.</p>", "smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagKeyList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Tag)
    TagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'ResourceARN', traits: {"smithy.api#documentation" => "<p>The resource ARN.</p>", "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tag key-value pairs.</p>", "smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    Target.add_member(:member_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'MemberArn', traits: {"smithy.api#documentation" => "<p>The ARN of the target channel member.</p>"}))
    Target.type = Types::Target
    TargetList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Target)
    ThrottledClientException.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'Code'))
    ThrottledClientException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    ThrottledClientException.type = Types::ThrottledClientException
    UnauthorizedClientException.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'Code'))
    UnauthorizedClientException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    UnauthorizedClientException.type = Types::UnauthorizedClientException
    UntagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'ResourceARN', traits: {"smithy.api#documentation" => "<p>The resource ARN.</p>", "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'TagKeys', traits: {"smithy.api#documentation" => "<p>The tag keys.</p>", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UpdateChannelFlowRequest.add_member(:channel_flow_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'ChannelFlowArn', traits: {"smithy.api#documentation" => "<p>The ARN of the channel flow.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateChannelFlowRequest.add_member(:processors, Smithy::Schema::Shapes::ShapeRef.new(shape: ProcessorList, location_name: 'Processors', traits: {"smithy.api#documentation" => "<p>Information about the processor Lambda functions </p>", "smithy.api#required" => {}}))
    UpdateChannelFlowRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyResourceName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the channel flow.</p>", "smithy.api#required" => {}}))
    UpdateChannelFlowRequest.type = Types::UpdateChannelFlowRequest
    UpdateChannelFlowResponse.add_member(:channel_flow_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'ChannelFlowArn', traits: {"smithy.api#documentation" => "<p>The ARN of the channel flow.</p>"}))
    UpdateChannelFlowResponse.type = Types::UpdateChannelFlowResponse
    UpdateChannelMessageRequest.add_member(:channel_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'ChannelArn', traits: {"smithy.api#documentation" => "<p>The ARN of the channel.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateChannelMessageRequest.add_member(:message_id, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageId, location_name: 'MessageId', traits: {"smithy.api#documentation" => "<p>The ID string of the message being updated.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateChannelMessageRequest.add_member(:content, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyContent, location_name: 'Content', traits: {"smithy.api#documentation" => "<p>The content of the channel message. </p>", "smithy.api#required" => {}}))
    UpdateChannelMessageRequest.add_member(:metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: Metadata, location_name: 'Metadata', traits: {"smithy.api#documentation" => "<p>The metadata of the message being updated.</p>"}))
    UpdateChannelMessageRequest.add_member(:chime_bearer, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'ChimeBearer', traits: {"smithy.api#documentation" => "<p>The ARN of the <code>AppInstanceUser</code> or <code>AppInstanceBot</code> \n         that makes the API call.</p>", "smithy.api#httpHeader" => "x-amz-chime-bearer", "smithy.api#required" => {}}))
    UpdateChannelMessageRequest.add_member(:sub_channel_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SubChannelId, location_name: 'SubChannelId', traits: {"smithy.api#documentation" => "<p>The ID of the SubChannel in the request.</p>\n         <note>\n            <p>Only required when updating messages in a SubChannel that the user belongs to.</p>\n         </note>"}))
    UpdateChannelMessageRequest.add_member(:content_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ContentType, location_name: 'ContentType', traits: {"smithy.api#documentation" => "<p>The content type of the channel message.</p>"}))
    UpdateChannelMessageRequest.type = Types::UpdateChannelMessageRequest
    UpdateChannelMessageResponse.add_member(:channel_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'ChannelArn', traits: {"smithy.api#documentation" => "<p>The ARN of the channel.</p>"}))
    UpdateChannelMessageResponse.add_member(:message_id, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageId, location_name: 'MessageId', traits: {"smithy.api#documentation" => "<p>The ID string of the message being updated.</p>"}))
    UpdateChannelMessageResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelMessageStatusStructure, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of the message update.</p>"}))
    UpdateChannelMessageResponse.add_member(:sub_channel_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SubChannelId, location_name: 'SubChannelId', traits: {"smithy.api#documentation" => "<p>The ID of the SubChannel in the response.</p>"}))
    UpdateChannelMessageResponse.type = Types::UpdateChannelMessageResponse
    UpdateChannelReadMarkerRequest.add_member(:channel_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'ChannelArn', traits: {"smithy.api#documentation" => "<p>The ARN of the channel.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateChannelReadMarkerRequest.add_member(:chime_bearer, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'ChimeBearer', traits: {"smithy.api#documentation" => "<p>The ARN of the <code>AppInstanceUser</code> or <code>AppInstanceBot</code> \n         that makes the API call.</p>", "smithy.api#httpHeader" => "x-amz-chime-bearer", "smithy.api#required" => {}}))
    UpdateChannelReadMarkerRequest.type = Types::UpdateChannelReadMarkerRequest
    UpdateChannelReadMarkerResponse.add_member(:channel_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'ChannelArn', traits: {"smithy.api#documentation" => "<p>The ARN of the channel.</p>"}))
    UpdateChannelReadMarkerResponse.type = Types::UpdateChannelReadMarkerResponse
    UpdateChannelRequest.add_member(:channel_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'ChannelArn', traits: {"smithy.api#documentation" => "<p>The ARN of the channel.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateChannelRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyResourceName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the channel.</p>"}))
    UpdateChannelRequest.add_member(:mode, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelMode, location_name: 'Mode', traits: {"smithy.api#documentation" => "<p>The mode of the update request.</p>"}))
    UpdateChannelRequest.add_member(:metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: Metadata, location_name: 'Metadata', traits: {"smithy.api#documentation" => "<p>The metadata for the update request.</p>"}))
    UpdateChannelRequest.add_member(:chime_bearer, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'ChimeBearer', traits: {"smithy.api#documentation" => "<p>The ARN of the <code>AppInstanceUser</code> or <code>AppInstanceBot</code> \n         that makes the API call.</p>", "smithy.api#httpHeader" => "x-amz-chime-bearer", "smithy.api#required" => {}}))
    UpdateChannelRequest.type = Types::UpdateChannelRequest
    UpdateChannelResponse.add_member(:channel_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'ChannelArn', traits: {"smithy.api#documentation" => "<p>The ARN of the channel.</p>"}))
    UpdateChannelResponse.type = Types::UpdateChannelResponse

    ChimeMessagingService = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.chimesdkmessaging#ChimeMessagingService"
      service.name = "ChimeMessagingService"
      service.version = "2021-05-15"
      service.traits = {"aws.api#service" => {"sdkId" => "Chime SDK Messaging", "arnNamespace" => "chime", "cloudFormationName" => "ChimeSDKMessaging", "cloudTrailEventSource" => "chimesdkmessaging.amazonaws.com", "endpointPrefix" => "messaging-chime"}, "aws.auth#sigv4" => {"name" => "chime"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "Amazon Chime SDK Messaging"}
      service.add_operation(:associate_channel_flow, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmessaging#AssociateChannelFlow"
        operation.name = "AssociateChannelFlow"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateChannelFlowRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/channels/{ChannelArn}/channel-flow", "code" => 200}}
      end)
      service.add_operation(:batch_create_channel_membership, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmessaging#BatchCreateChannelMembership"
        operation.name = "BatchCreateChannelMembership"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchCreateChannelMembershipRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchCreateChannelMembershipResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/channels/{ChannelArn}/memberships?operation=batch-create", "code" => 200}}
      end)
      service.add_operation(:channel_flow_callback, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmessaging#ChannelFlowCallback"
        operation.name = "ChannelFlowCallback"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelFlowCallbackRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelFlowCallbackResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/channels/{ChannelArn}?operation=channel-flow-callback", "code" => 200}}
      end)
      service.add_operation(:create_channel, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmessaging#CreateChannel"
        operation.name = "CreateChannel"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateChannelRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateChannelResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/channels", "code" => 201}}
      end)
      service.add_operation(:create_channel_ban, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmessaging#CreateChannelBan"
        operation.name = "CreateChannelBan"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateChannelBanRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateChannelBanResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/channels/{ChannelArn}/bans", "code" => 201}}
      end)
      service.add_operation(:create_channel_flow, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmessaging#CreateChannelFlow"
        operation.name = "CreateChannelFlow"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateChannelFlowRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateChannelFlowResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/channel-flows", "code" => 201}}
      end)
      service.add_operation(:create_channel_membership, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmessaging#CreateChannelMembership"
        operation.name = "CreateChannelMembership"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateChannelMembershipRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateChannelMembershipResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/channels/{ChannelArn}/memberships", "code" => 201}}
      end)
      service.add_operation(:create_channel_moderator, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmessaging#CreateChannelModerator"
        operation.name = "CreateChannelModerator"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateChannelModeratorRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateChannelModeratorResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/channels/{ChannelArn}/moderators", "code" => 201}}
      end)
      service.add_operation(:delete_channel, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmessaging#DeleteChannel"
        operation.name = "DeleteChannel"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteChannelRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/channels/{ChannelArn}", "code" => 204}}
      end)
      service.add_operation(:delete_channel_ban, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmessaging#DeleteChannelBan"
        operation.name = "DeleteChannelBan"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteChannelBanRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/channels/{ChannelArn}/bans/{MemberArn}", "code" => 204}}
      end)
      service.add_operation(:delete_channel_flow, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmessaging#DeleteChannelFlow"
        operation.name = "DeleteChannelFlow"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteChannelFlowRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/channel-flows/{ChannelFlowArn}", "code" => 204}}
      end)
      service.add_operation(:delete_channel_membership, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmessaging#DeleteChannelMembership"
        operation.name = "DeleteChannelMembership"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteChannelMembershipRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/channels/{ChannelArn}/memberships/{MemberArn}", "code" => 204}}
      end)
      service.add_operation(:delete_channel_message, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmessaging#DeleteChannelMessage"
        operation.name = "DeleteChannelMessage"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteChannelMessageRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/channels/{ChannelArn}/messages/{MessageId}", "code" => 204}}
      end)
      service.add_operation(:delete_channel_moderator, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmessaging#DeleteChannelModerator"
        operation.name = "DeleteChannelModerator"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteChannelModeratorRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/channels/{ChannelArn}/moderators/{ChannelModeratorArn}", "code" => 204}}
      end)
      service.add_operation(:delete_messaging_streaming_configurations, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmessaging#DeleteMessagingStreamingConfigurations"
        operation.name = "DeleteMessagingStreamingConfigurations"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteMessagingStreamingConfigurationsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/app-instances/{AppInstanceArn}/streaming-configurations", "code" => 204}}
      end)
      service.add_operation(:describe_channel, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmessaging#DescribeChannel"
        operation.name = "DescribeChannel"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeChannelRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeChannelResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/channels/{ChannelArn}", "code" => 200}}
      end)
      service.add_operation(:describe_channel_ban, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmessaging#DescribeChannelBan"
        operation.name = "DescribeChannelBan"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeChannelBanRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeChannelBanResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/channels/{ChannelArn}/bans/{MemberArn}", "code" => 200}}
      end)
      service.add_operation(:describe_channel_flow, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmessaging#DescribeChannelFlow"
        operation.name = "DescribeChannelFlow"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeChannelFlowRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeChannelFlowResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/channel-flows/{ChannelFlowArn}", "code" => 200}}
      end)
      service.add_operation(:describe_channel_membership, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmessaging#DescribeChannelMembership"
        operation.name = "DescribeChannelMembership"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeChannelMembershipRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeChannelMembershipResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/channels/{ChannelArn}/memberships/{MemberArn}", "code" => 200}}
      end)
      service.add_operation(:describe_channel_membership_for_app_instance_user, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmessaging#DescribeChannelMembershipForAppInstanceUser"
        operation.name = "DescribeChannelMembershipForAppInstanceUser"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeChannelMembershipForAppInstanceUserRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeChannelMembershipForAppInstanceUserResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/channels/{ChannelArn}?scope=app-instance-user-membership", "code" => 200}}
      end)
      service.add_operation(:describe_channel_moderated_by_app_instance_user, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmessaging#DescribeChannelModeratedByAppInstanceUser"
        operation.name = "DescribeChannelModeratedByAppInstanceUser"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeChannelModeratedByAppInstanceUserRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeChannelModeratedByAppInstanceUserResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/channels/{ChannelArn}?scope=app-instance-user-moderated-channel", "code" => 200}}
      end)
      service.add_operation(:describe_channel_moderator, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmessaging#DescribeChannelModerator"
        operation.name = "DescribeChannelModerator"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeChannelModeratorRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeChannelModeratorResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/channels/{ChannelArn}/moderators/{ChannelModeratorArn}", "code" => 200}}
      end)
      service.add_operation(:disassociate_channel_flow, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmessaging#DisassociateChannelFlow"
        operation.name = "DisassociateChannelFlow"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateChannelFlowRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/channels/{ChannelArn}/channel-flow/{ChannelFlowArn}", "code" => 204}}
      end)
      service.add_operation(:get_channel_membership_preferences, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmessaging#GetChannelMembershipPreferences"
        operation.name = "GetChannelMembershipPreferences"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetChannelMembershipPreferencesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetChannelMembershipPreferencesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/channels/{ChannelArn}/memberships/{MemberArn}/preferences", "code" => 200}}
      end)
      service.add_operation(:get_channel_message, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmessaging#GetChannelMessage"
        operation.name = "GetChannelMessage"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetChannelMessageRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetChannelMessageResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/channels/{ChannelArn}/messages/{MessageId}", "code" => 200}}
      end)
      service.add_operation(:get_channel_message_status, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmessaging#GetChannelMessageStatus"
        operation.name = "GetChannelMessageStatus"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetChannelMessageStatusRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetChannelMessageStatusResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/channels/{ChannelArn}/messages/{MessageId}?scope=message-status", "code" => 200}}
      end)
      service.add_operation(:get_messaging_session_endpoint, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmessaging#GetMessagingSessionEndpoint"
        operation.name = "GetMessagingSessionEndpoint"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetMessagingSessionEndpointRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetMessagingSessionEndpointResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/endpoints/messaging-session", "code" => 200}}
      end)
      service.add_operation(:get_messaging_streaming_configurations, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmessaging#GetMessagingStreamingConfigurations"
        operation.name = "GetMessagingStreamingConfigurations"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetMessagingStreamingConfigurationsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetMessagingStreamingConfigurationsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/app-instances/{AppInstanceArn}/streaming-configurations", "code" => 200}}
      end)
      service.add_operation(:list_channel_bans, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmessaging#ListChannelBans"
        operation.name = "ListChannelBans"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListChannelBansRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListChannelBansResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/channels/{ChannelArn}/bans", "code" => 200}}
        operation[:paginator] = Paginators::ListChannelBans.new
      end)
      service.add_operation(:list_channel_flows, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmessaging#ListChannelFlows"
        operation.name = "ListChannelFlows"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListChannelFlowsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListChannelFlowsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/channel-flows", "code" => 200}}
        operation[:paginator] = Paginators::ListChannelFlows.new
      end)
      service.add_operation(:list_channel_memberships, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmessaging#ListChannelMemberships"
        operation.name = "ListChannelMemberships"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListChannelMembershipsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListChannelMembershipsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/channels/{ChannelArn}/memberships", "code" => 200}}
        operation[:paginator] = Paginators::ListChannelMemberships.new
      end)
      service.add_operation(:list_channel_memberships_for_app_instance_user, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmessaging#ListChannelMembershipsForAppInstanceUser"
        operation.name = "ListChannelMembershipsForAppInstanceUser"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListChannelMembershipsForAppInstanceUserRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListChannelMembershipsForAppInstanceUserResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/channels?scope=app-instance-user-memberships", "code" => 200}}
        operation[:paginator] = Paginators::ListChannelMembershipsForAppInstanceUser.new
      end)
      service.add_operation(:list_channel_messages, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmessaging#ListChannelMessages"
        operation.name = "ListChannelMessages"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListChannelMessagesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListChannelMessagesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/channels/{ChannelArn}/messages", "code" => 200}}
        operation[:paginator] = Paginators::ListChannelMessages.new
      end)
      service.add_operation(:list_channel_moderators, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmessaging#ListChannelModerators"
        operation.name = "ListChannelModerators"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListChannelModeratorsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListChannelModeratorsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/channels/{ChannelArn}/moderators", "code" => 200}}
        operation[:paginator] = Paginators::ListChannelModerators.new
      end)
      service.add_operation(:list_channels, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmessaging#ListChannels"
        operation.name = "ListChannels"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListChannelsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListChannelsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/channels", "code" => 200}}
        operation[:paginator] = Paginators::ListChannels.new
      end)
      service.add_operation(:list_channels_associated_with_channel_flow, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmessaging#ListChannelsAssociatedWithChannelFlow"
        operation.name = "ListChannelsAssociatedWithChannelFlow"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListChannelsAssociatedWithChannelFlowRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListChannelsAssociatedWithChannelFlowResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/channels?scope=channel-flow-associations", "code" => 200}}
        operation[:paginator] = Paginators::ListChannelsAssociatedWithChannelFlow.new
      end)
      service.add_operation(:list_channels_moderated_by_app_instance_user, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmessaging#ListChannelsModeratedByAppInstanceUser"
        operation.name = "ListChannelsModeratedByAppInstanceUser"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListChannelsModeratedByAppInstanceUserRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListChannelsModeratedByAppInstanceUserResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/channels?scope=app-instance-user-moderated-channels", "code" => 200}}
        operation[:paginator] = Paginators::ListChannelsModeratedByAppInstanceUser.new
      end)
      service.add_operation(:list_sub_channels, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmessaging#ListSubChannels"
        operation.name = "ListSubChannels"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListSubChannelsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListSubChannelsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/channels/{ChannelArn}/subchannels", "code" => 200}}
        operation[:paginator] = Paginators::ListSubChannels.new
      end)
      service.add_operation(:list_tags_for_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmessaging#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/tags", "code" => 200}}
      end)
      service.add_operation(:put_channel_expiration_settings, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmessaging#PutChannelExpirationSettings"
        operation.name = "PutChannelExpirationSettings"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutChannelExpirationSettingsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutChannelExpirationSettingsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/channels/{ChannelArn}/expiration-settings", "code" => 200}}
      end)
      service.add_operation(:put_channel_membership_preferences, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmessaging#PutChannelMembershipPreferences"
        operation.name = "PutChannelMembershipPreferences"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutChannelMembershipPreferencesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutChannelMembershipPreferencesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/channels/{ChannelArn}/memberships/{MemberArn}/preferences", "code" => 200}}
      end)
      service.add_operation(:put_messaging_streaming_configurations, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmessaging#PutMessagingStreamingConfigurations"
        operation.name = "PutMessagingStreamingConfigurations"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutMessagingStreamingConfigurationsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutMessagingStreamingConfigurationsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/app-instances/{AppInstanceArn}/streaming-configurations", "code" => 200}}
      end)
      service.add_operation(:redact_channel_message, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmessaging#RedactChannelMessage"
        operation.name = "RedactChannelMessage"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: RedactChannelMessageRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: RedactChannelMessageResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/channels/{ChannelArn}/messages/{MessageId}?operation=redact", "code" => 200}}
      end)
      service.add_operation(:search_channels, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmessaging#SearchChannels"
        operation.name = "SearchChannels"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: SearchChannelsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: SearchChannelsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/channels?operation=search", "code" => 200}}
        operation[:paginator] = Paginators::SearchChannels.new
      end)
      service.add_operation(:send_channel_message, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmessaging#SendChannelMessage"
        operation.name = "SendChannelMessage"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: SendChannelMessageRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: SendChannelMessageResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/channels/{ChannelArn}/messages", "code" => 201}}
      end)
      service.add_operation(:tag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmessaging#TagResource"
        operation.name = "TagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/tags?operation=tag-resource", "code" => 204}}
      end)
      service.add_operation(:untag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmessaging#UntagResource"
        operation.name = "UntagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/tags?operation=untag-resource", "code" => 204}}
      end)
      service.add_operation(:update_channel, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmessaging#UpdateChannel"
        operation.name = "UpdateChannel"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateChannelRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateChannelResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/channels/{ChannelArn}", "code" => 200}}
      end)
      service.add_operation(:update_channel_flow, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmessaging#UpdateChannelFlow"
        operation.name = "UpdateChannelFlow"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateChannelFlowRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateChannelFlowResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/channel-flows/{ChannelFlowArn}", "code" => 200}}
      end)
      service.add_operation(:update_channel_message, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmessaging#UpdateChannelMessage"
        operation.name = "UpdateChannelMessage"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateChannelMessageRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateChannelMessageResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/channels/{ChannelArn}/messages/{MessageId}", "code" => 200}}
      end)
      service.add_operation(:update_channel_read_marker, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmessaging#UpdateChannelReadMarker"
        operation.name = "UpdateChannelReadMarker"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateChannelReadMarkerRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateChannelReadMarkerResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/channels/{ChannelArn}/readMarker", "code" => 200}}
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
