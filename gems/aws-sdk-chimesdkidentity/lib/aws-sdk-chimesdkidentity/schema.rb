# frozen_string_literal: true

# This is generated code!

module Aws::ChimeSDKIdentity
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AllowMessages = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.chimesdkidentity#AllowMessages", name: "AllowMessages")
    AppInstance = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkidentity#AppInstance", name: "AppInstance")
    AppInstanceAdmin = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkidentity#AppInstanceAdmin", name: "AppInstanceAdmin")
    AppInstanceAdminList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.chimesdkidentity#AppInstanceAdminList", name: "AppInstanceAdminList")
    AppInstanceAdminSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkidentity#AppInstanceAdminSummary", name: "AppInstanceAdminSummary")
    AppInstanceBot = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkidentity#AppInstanceBot", name: "AppInstanceBot")
    AppInstanceBotList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.chimesdkidentity#AppInstanceBotList", name: "AppInstanceBotList")
    AppInstanceBotSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkidentity#AppInstanceBotSummary", name: "AppInstanceBotSummary")
    AppInstanceList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.chimesdkidentity#AppInstanceList", name: "AppInstanceList")
    AppInstanceRetentionSettings = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkidentity#AppInstanceRetentionSettings", name: "AppInstanceRetentionSettings")
    AppInstanceSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkidentity#AppInstanceSummary", name: "AppInstanceSummary")
    AppInstanceUser = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkidentity#AppInstanceUser", name: "AppInstanceUser")
    AppInstanceUserEndpoint = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkidentity#AppInstanceUserEndpoint", name: "AppInstanceUserEndpoint")
    AppInstanceUserEndpointSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkidentity#AppInstanceUserEndpointSummary", name: "AppInstanceUserEndpointSummary")
    AppInstanceUserEndpointSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.chimesdkidentity#AppInstanceUserEndpointSummaryList", name: "AppInstanceUserEndpointSummaryList")
    AppInstanceUserEndpointType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.chimesdkidentity#AppInstanceUserEndpointType", name: "AppInstanceUserEndpointType")
    AppInstanceUserList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.chimesdkidentity#AppInstanceUserList", name: "AppInstanceUserList")
    AppInstanceUserSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkidentity#AppInstanceUserSummary", name: "AppInstanceUserSummary")
    BadRequestException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkidentity#BadRequestException", name: "BadRequestException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ChannelRetentionSettings = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkidentity#ChannelRetentionSettings", name: "ChannelRetentionSettings")
    ChimeArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.chimesdkidentity#ChimeArn", name: "ChimeArn", traits: {"smithy.api#length" => {"min" => 5, "max" => 1600}, "smithy.api#pattern" => "^arn:[a-z0-9-\\.]{1,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[^/].{0,1023}$"})
    ClientRequestToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.chimesdkidentity#ClientRequestToken", name: "ClientRequestToken", traits: {"smithy.api#length" => {"min" => 2, "max" => 64}, "smithy.api#pattern" => "^[-_a-zA-Z0-9]*$"})
    Configuration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkidentity#Configuration", name: "Configuration")
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkidentity#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CreateAppInstanceAdminRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkidentity#CreateAppInstanceAdminRequest", name: "CreateAppInstanceAdminRequest")
    CreateAppInstanceAdminResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkidentity#CreateAppInstanceAdminResponse", name: "CreateAppInstanceAdminResponse")
    CreateAppInstanceBotRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkidentity#CreateAppInstanceBotRequest", name: "CreateAppInstanceBotRequest")
    CreateAppInstanceBotResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkidentity#CreateAppInstanceBotResponse", name: "CreateAppInstanceBotResponse")
    CreateAppInstanceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkidentity#CreateAppInstanceRequest", name: "CreateAppInstanceRequest")
    CreateAppInstanceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkidentity#CreateAppInstanceResponse", name: "CreateAppInstanceResponse")
    CreateAppInstanceUserRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkidentity#CreateAppInstanceUserRequest", name: "CreateAppInstanceUserRequest")
    CreateAppInstanceUserResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkidentity#CreateAppInstanceUserResponse", name: "CreateAppInstanceUserResponse")
    DeleteAppInstanceAdminRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkidentity#DeleteAppInstanceAdminRequest", name: "DeleteAppInstanceAdminRequest")
    DeleteAppInstanceBotRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkidentity#DeleteAppInstanceBotRequest", name: "DeleteAppInstanceBotRequest")
    DeleteAppInstanceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkidentity#DeleteAppInstanceRequest", name: "DeleteAppInstanceRequest")
    DeleteAppInstanceUserRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkidentity#DeleteAppInstanceUserRequest", name: "DeleteAppInstanceUserRequest")
    DeregisterAppInstanceUserEndpointRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkidentity#DeregisterAppInstanceUserEndpointRequest", name: "DeregisterAppInstanceUserEndpointRequest")
    DescribeAppInstanceAdminRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkidentity#DescribeAppInstanceAdminRequest", name: "DescribeAppInstanceAdminRequest")
    DescribeAppInstanceAdminResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkidentity#DescribeAppInstanceAdminResponse", name: "DescribeAppInstanceAdminResponse")
    DescribeAppInstanceBotRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkidentity#DescribeAppInstanceBotRequest", name: "DescribeAppInstanceBotRequest")
    DescribeAppInstanceBotResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkidentity#DescribeAppInstanceBotResponse", name: "DescribeAppInstanceBotResponse")
    DescribeAppInstanceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkidentity#DescribeAppInstanceRequest", name: "DescribeAppInstanceRequest")
    DescribeAppInstanceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkidentity#DescribeAppInstanceResponse", name: "DescribeAppInstanceResponse")
    DescribeAppInstanceUserEndpointRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkidentity#DescribeAppInstanceUserEndpointRequest", name: "DescribeAppInstanceUserEndpointRequest")
    DescribeAppInstanceUserEndpointResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkidentity#DescribeAppInstanceUserEndpointResponse", name: "DescribeAppInstanceUserEndpointResponse")
    DescribeAppInstanceUserRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkidentity#DescribeAppInstanceUserRequest", name: "DescribeAppInstanceUserRequest")
    DescribeAppInstanceUserResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkidentity#DescribeAppInstanceUserResponse", name: "DescribeAppInstanceUserResponse")
    EndpointAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkidentity#EndpointAttributes", name: "EndpointAttributes")
    EndpointState = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkidentity#EndpointState", name: "EndpointState")
    EndpointStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.chimesdkidentity#EndpointStatus", name: "EndpointStatus")
    EndpointStatusReason = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.chimesdkidentity#EndpointStatusReason", name: "EndpointStatusReason")
    ErrorCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.chimesdkidentity#ErrorCode", name: "ErrorCode")
    ExpirationCriterion = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.chimesdkidentity#ExpirationCriterion", name: "ExpirationCriterion")
    ExpirationDays = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.chimesdkidentity#ExpirationDays", name: "ExpirationDays", traits: {"smithy.api#range" => {"min" => 1, "max" => 5475}})
    ExpirationSettings = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkidentity#ExpirationSettings", name: "ExpirationSettings")
    ForbiddenException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkidentity#ForbiddenException", name: "ForbiddenException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    GetAppInstanceRetentionSettingsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkidentity#GetAppInstanceRetentionSettingsRequest", name: "GetAppInstanceRetentionSettingsRequest")
    GetAppInstanceRetentionSettingsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkidentity#GetAppInstanceRetentionSettingsResponse", name: "GetAppInstanceRetentionSettingsResponse")
    Identity = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkidentity#Identity", name: "Identity")
    InvokedBy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkidentity#InvokedBy", name: "InvokedBy")
    LexBotAliasArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.chimesdkidentity#LexBotAliasArn", name: "LexBotAliasArn", traits: {"smithy.api#length" => {"min" => 15, "max" => 2048}, "smithy.api#pattern" => "^arn:aws:lex:[a-z]{2}-[a-z]+-\\d{1}:\\d{12}:bot-alias/[A-Z0-9]{10}/[A-Z0-9]{10}$"})
    LexConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkidentity#LexConfiguration", name: "LexConfiguration")
    LexIntentName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.chimesdkidentity#LexIntentName", name: "LexIntentName", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^([A-Za-z]_?)+$"})
    ListAppInstanceAdminsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkidentity#ListAppInstanceAdminsRequest", name: "ListAppInstanceAdminsRequest")
    ListAppInstanceAdminsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkidentity#ListAppInstanceAdminsResponse", name: "ListAppInstanceAdminsResponse")
    ListAppInstanceBotsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkidentity#ListAppInstanceBotsRequest", name: "ListAppInstanceBotsRequest")
    ListAppInstanceBotsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkidentity#ListAppInstanceBotsResponse", name: "ListAppInstanceBotsResponse")
    ListAppInstanceUserEndpointsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkidentity#ListAppInstanceUserEndpointsRequest", name: "ListAppInstanceUserEndpointsRequest")
    ListAppInstanceUserEndpointsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkidentity#ListAppInstanceUserEndpointsResponse", name: "ListAppInstanceUserEndpointsResponse")
    ListAppInstanceUsersRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkidentity#ListAppInstanceUsersRequest", name: "ListAppInstanceUsersRequest")
    ListAppInstanceUsersResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkidentity#ListAppInstanceUsersResponse", name: "ListAppInstanceUsersResponse")
    ListAppInstancesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkidentity#ListAppInstancesRequest", name: "ListAppInstancesRequest")
    ListAppInstancesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkidentity#ListAppInstancesResponse", name: "ListAppInstancesResponse")
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkidentity#ListTagsForResourceRequest", name: "ListTagsForResourceRequest")
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkidentity#ListTagsForResourceResponse", name: "ListTagsForResourceResponse")
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.chimesdkidentity#MaxResults", name: "MaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 50}})
    Metadata = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.chimesdkidentity#Metadata", name: "Metadata", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#pattern" => ".*", "smithy.api#sensitive" => {}})
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.chimesdkidentity#NextToken", name: "NextToken", traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}, "smithy.api#pattern" => ".*", "smithy.api#sensitive" => {}})
    NonEmptyResourceName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.chimesdkidentity#NonEmptyResourceName", name: "NonEmptyResourceName", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[\\u0009\\u000A\\u000D\\u0020-\\u007E\\u0085\\u00A0-\\uD7FF\\uE000-\\uFFFD\\u10000-\\u10FFFF]*$", "smithy.api#sensitive" => {}})
    NonEmptySensitiveString1600 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.chimesdkidentity#NonEmptySensitiveString1600", name: "NonEmptySensitiveString1600", traits: {"smithy.api#length" => {"min" => 1, "max" => 1600}, "smithy.api#pattern" => ".*", "smithy.api#sensitive" => {}})
    NotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkidentity#NotFoundException", name: "NotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    PutAppInstanceRetentionSettingsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkidentity#PutAppInstanceRetentionSettingsRequest", name: "PutAppInstanceRetentionSettingsRequest")
    PutAppInstanceRetentionSettingsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkidentity#PutAppInstanceRetentionSettingsResponse", name: "PutAppInstanceRetentionSettingsResponse")
    PutAppInstanceUserExpirationSettingsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkidentity#PutAppInstanceUserExpirationSettingsRequest", name: "PutAppInstanceUserExpirationSettingsRequest")
    PutAppInstanceUserExpirationSettingsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkidentity#PutAppInstanceUserExpirationSettingsResponse", name: "PutAppInstanceUserExpirationSettingsResponse")
    RegisterAppInstanceUserEndpointRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkidentity#RegisterAppInstanceUserEndpointRequest", name: "RegisterAppInstanceUserEndpointRequest")
    RegisterAppInstanceUserEndpointResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkidentity#RegisterAppInstanceUserEndpointResponse", name: "RegisterAppInstanceUserEndpointResponse")
    ResourceLimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkidentity#ResourceLimitExceededException", name: "ResourceLimitExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ResourceName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.chimesdkidentity#ResourceName", name: "ResourceName", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[\\u0009\\u000A\\u000D\\u0020-\\u007E\\u0085\\u00A0-\\uD7FF\\uE000-\\uFFFD\\u10000-\\u10FFFF]*$", "smithy.api#sensitive" => {}})
    RespondsTo = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.chimesdkidentity#RespondsTo", name: "RespondsTo")
    RetentionDays = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.chimesdkidentity#RetentionDays", name: "RetentionDays", traits: {"smithy.api#range" => {"min" => 1, "max" => 5475}})
    SensitiveChimeArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.chimesdkidentity#SensitiveChimeArn", name: "SensitiveChimeArn", traits: {"smithy.api#length" => {"min" => 5, "max" => 1600}, "smithy.api#pattern" => "^arn:[a-z0-9-\\.]{1,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[^/].{0,1023}$", "smithy.api#sensitive" => {}})
    SensitiveString1600 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.chimesdkidentity#SensitiveString1600", name: "SensitiveString1600", traits: {"smithy.api#length" => {"min" => 0, "max" => 1600}, "smithy.api#pattern" => ".*", "smithy.api#sensitive" => {}})
    ServiceFailureException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkidentity#ServiceFailureException", name: "ServiceFailureException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    ServiceUnavailableException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkidentity#ServiceUnavailableException", name: "ServiceUnavailableException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 503})
    StandardMessages = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.chimesdkidentity#StandardMessages", name: "StandardMessages")
    String = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.chimesdkidentity#String", name: "String")
    String1600 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.chimesdkidentity#String1600", name: "String1600", traits: {"smithy.api#length" => {"min" => 0, "max" => 1600}, "smithy.api#pattern" => ".*"})
    String64 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.chimesdkidentity#String64", name: "String64", traits: {"smithy.api#length" => {"min" => 0, "max" => 64}, "smithy.api#pattern" => ".*"})
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkidentity#Tag", name: "Tag")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.chimesdkidentity#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#sensitive" => {}})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.chimesdkidentity#TagKeyList", name: "TagKeyList", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    TagList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.chimesdkidentity#TagList", name: "TagList", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkidentity#TagResourceRequest", name: "TagResourceRequest")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.chimesdkidentity#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#sensitive" => {}})
    TargetedMessages = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.chimesdkidentity#TargetedMessages", name: "TargetedMessages")
    ThrottledClientException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkidentity#ThrottledClientException", name: "ThrottledClientException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    Timestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.chimesdkidentity#Timestamp", name: "Timestamp")
    UnauthorizedClientException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkidentity#UnauthorizedClientException", name: "UnauthorizedClientException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 401})
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkidentity#UntagResourceRequest", name: "UntagResourceRequest")
    UpdateAppInstanceBotRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkidentity#UpdateAppInstanceBotRequest", name: "UpdateAppInstanceBotRequest")
    UpdateAppInstanceBotResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkidentity#UpdateAppInstanceBotResponse", name: "UpdateAppInstanceBotResponse")
    UpdateAppInstanceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkidentity#UpdateAppInstanceRequest", name: "UpdateAppInstanceRequest")
    UpdateAppInstanceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkidentity#UpdateAppInstanceResponse", name: "UpdateAppInstanceResponse")
    UpdateAppInstanceUserEndpointRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkidentity#UpdateAppInstanceUserEndpointRequest", name: "UpdateAppInstanceUserEndpointRequest")
    UpdateAppInstanceUserEndpointResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkidentity#UpdateAppInstanceUserEndpointResponse", name: "UpdateAppInstanceUserEndpointResponse")
    UpdateAppInstanceUserRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkidentity#UpdateAppInstanceUserRequest", name: "UpdateAppInstanceUserRequest")
    UpdateAppInstanceUserResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkidentity#UpdateAppInstanceUserResponse", name: "UpdateAppInstanceUserResponse")
    UserId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.chimesdkidentity#UserId", name: "UserId", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[A-Za-z0-9]([A-Za-z0-9\\:\\-\\_\\.\\@]{0,62}[A-Za-z0-9])?$", "smithy.api#sensitive" => {}})
    UserName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.chimesdkidentity#UserName", name: "UserName", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "\\S", "smithy.api#sensitive" => {}})

    AllowMessages.add_member(:all, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ALL", traits: {"smithy.api#enumValue" => "ALL"}))
    AllowMessages.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))
    AppInstance.add_member(:app_instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, name: "AppInstanceArn"))
    AppInstance.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyResourceName, name: "Name"))
    AppInstance.add_member(:created_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedTimestamp"))
    AppInstance.add_member(:last_updated_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastUpdatedTimestamp"))
    AppInstance.add_member(:metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: Metadata, name: "Metadata"))
    AppInstance.type = Types::AppInstance
    AppInstanceAdmin.add_member(:admin, ::Smithy::Schema::Shapes::MemberShape.new(target: Identity, name: "Admin"))
    AppInstanceAdmin.add_member(:app_instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, name: "AppInstanceArn"))
    AppInstanceAdmin.add_member(:created_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedTimestamp"))
    AppInstanceAdmin.type = Types::AppInstanceAdmin
    AppInstanceAdminList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AppInstanceAdminSummary, name: "member"))
    AppInstanceAdminSummary.add_member(:admin, ::Smithy::Schema::Shapes::MemberShape.new(target: Identity, name: "Admin"))
    AppInstanceAdminSummary.type = Types::AppInstanceAdminSummary
    AppInstanceBot.add_member(:app_instance_bot_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, name: "AppInstanceBotArn"))
    AppInstanceBot.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "Name"))
    AppInstanceBot.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: Configuration, name: "Configuration"))
    AppInstanceBot.add_member(:created_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedTimestamp"))
    AppInstanceBot.add_member(:last_updated_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastUpdatedTimestamp"))
    AppInstanceBot.add_member(:metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: Metadata, name: "Metadata"))
    AppInstanceBot.type = Types::AppInstanceBot
    AppInstanceBotList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AppInstanceBotSummary, name: "member"))
    AppInstanceBotSummary.add_member(:app_instance_bot_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, name: "AppInstanceBotArn"))
    AppInstanceBotSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "Name"))
    AppInstanceBotSummary.add_member(:metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: Metadata, name: "Metadata"))
    AppInstanceBotSummary.type = Types::AppInstanceBotSummary
    AppInstanceList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AppInstanceSummary, name: "member"))
    AppInstanceRetentionSettings.add_member(:channel_retention_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelRetentionSettings, name: "ChannelRetentionSettings"))
    AppInstanceRetentionSettings.type = Types::AppInstanceRetentionSettings
    AppInstanceSummary.add_member(:app_instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, name: "AppInstanceArn"))
    AppInstanceSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyResourceName, name: "Name"))
    AppInstanceSummary.add_member(:metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: Metadata, name: "Metadata"))
    AppInstanceSummary.type = Types::AppInstanceSummary
    AppInstanceUser.add_member(:app_instance_user_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, name: "AppInstanceUserArn"))
    AppInstanceUser.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: UserName, name: "Name"))
    AppInstanceUser.add_member(:metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: Metadata, name: "Metadata"))
    AppInstanceUser.add_member(:created_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedTimestamp"))
    AppInstanceUser.add_member(:last_updated_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastUpdatedTimestamp"))
    AppInstanceUser.add_member(:expiration_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: ExpirationSettings, name: "ExpirationSettings"))
    AppInstanceUser.type = Types::AppInstanceUser
    AppInstanceUserEndpoint.add_member(:app_instance_user_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, name: "AppInstanceUserArn"))
    AppInstanceUserEndpoint.add_member(:endpoint_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String64, name: "EndpointId"))
    AppInstanceUserEndpoint.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString1600, name: "Name"))
    AppInstanceUserEndpoint.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: AppInstanceUserEndpointType, name: "Type"))
    AppInstanceUserEndpoint.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, name: "ResourceArn"))
    AppInstanceUserEndpoint.add_member(:endpoint_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: EndpointAttributes, name: "EndpointAttributes"))
    AppInstanceUserEndpoint.add_member(:created_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedTimestamp"))
    AppInstanceUserEndpoint.add_member(:last_updated_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastUpdatedTimestamp"))
    AppInstanceUserEndpoint.add_member(:allow_messages, ::Smithy::Schema::Shapes::MemberShape.new(target: AllowMessages, name: "AllowMessages"))
    AppInstanceUserEndpoint.add_member(:endpoint_state, ::Smithy::Schema::Shapes::MemberShape.new(target: EndpointState, name: "EndpointState"))
    AppInstanceUserEndpoint.type = Types::AppInstanceUserEndpoint
    AppInstanceUserEndpointSummary.add_member(:app_instance_user_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, name: "AppInstanceUserArn"))
    AppInstanceUserEndpointSummary.add_member(:endpoint_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String64, name: "EndpointId"))
    AppInstanceUserEndpointSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString1600, name: "Name"))
    AppInstanceUserEndpointSummary.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: AppInstanceUserEndpointType, name: "Type"))
    AppInstanceUserEndpointSummary.add_member(:allow_messages, ::Smithy::Schema::Shapes::MemberShape.new(target: AllowMessages, name: "AllowMessages"))
    AppInstanceUserEndpointSummary.add_member(:endpoint_state, ::Smithy::Schema::Shapes::MemberShape.new(target: EndpointState, name: "EndpointState"))
    AppInstanceUserEndpointSummary.type = Types::AppInstanceUserEndpointSummary
    AppInstanceUserEndpointSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AppInstanceUserEndpointSummary, name: "member"))
    AppInstanceUserEndpointType.add_member(:apns, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "APNS", traits: {"smithy.api#enumValue" => "APNS"}))
    AppInstanceUserEndpointType.add_member(:apns_sandbox, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "APNS_SANDBOX", traits: {"smithy.api#enumValue" => "APNS_SANDBOX"}))
    AppInstanceUserEndpointType.add_member(:gcm, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GCM", traits: {"smithy.api#enumValue" => "GCM"}))
    AppInstanceUserList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AppInstanceUserSummary, name: "member"))
    AppInstanceUserSummary.add_member(:app_instance_user_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, name: "AppInstanceUserArn"))
    AppInstanceUserSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: UserName, name: "Name"))
    AppInstanceUserSummary.add_member(:metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: Metadata, name: "Metadata"))
    AppInstanceUserSummary.type = Types::AppInstanceUserSummary
    BadRequestException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, name: "Code"))
    BadRequestException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    BadRequestException.type = Types::BadRequestException
    ChannelRetentionSettings.add_member(:retention_days, ::Smithy::Schema::Shapes::MemberShape.new(target: RetentionDays, name: "RetentionDays"))
    ChannelRetentionSettings.type = Types::ChannelRetentionSettings
    Configuration.add_member(:lex, ::Smithy::Schema::Shapes::MemberShape.new(target: LexConfiguration, name: "Lex", traits: {"smithy.api#required" => {}}))
    Configuration.type = Types::Configuration
    ConflictException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, name: "Code"))
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    ConflictException.type = Types::ConflictException
    CreateAppInstanceAdminRequest.add_member(:app_instance_admin_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, name: "AppInstanceAdminArn", traits: {"smithy.api#required" => {}}))
    CreateAppInstanceAdminRequest.add_member(:app_instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, name: "AppInstanceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateAppInstanceAdminRequest.type = Types::CreateAppInstanceAdminRequest
    CreateAppInstanceAdminResponse.add_member(:app_instance_admin, ::Smithy::Schema::Shapes::MemberShape.new(target: Identity, name: "AppInstanceAdmin"))
    CreateAppInstanceAdminResponse.add_member(:app_instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, name: "AppInstanceArn"))
    CreateAppInstanceAdminResponse.type = Types::CreateAppInstanceAdminResponse
    CreateAppInstanceBotRequest.add_member(:app_instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, name: "AppInstanceArn", traits: {"smithy.api#required" => {}}))
    CreateAppInstanceBotRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "Name"))
    CreateAppInstanceBotRequest.add_member(:metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: Metadata, name: "Metadata"))
    CreateAppInstanceBotRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestToken, name: "ClientRequestToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    CreateAppInstanceBotRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateAppInstanceBotRequest.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: Configuration, name: "Configuration", traits: {"smithy.api#required" => {}}))
    CreateAppInstanceBotRequest.type = Types::CreateAppInstanceBotRequest
    CreateAppInstanceBotResponse.add_member(:app_instance_bot_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, name: "AppInstanceBotArn"))
    CreateAppInstanceBotResponse.type = Types::CreateAppInstanceBotResponse
    CreateAppInstanceRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyResourceName, name: "Name", traits: {"smithy.api#required" => {}}))
    CreateAppInstanceRequest.add_member(:metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: Metadata, name: "Metadata"))
    CreateAppInstanceRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestToken, name: "ClientRequestToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    CreateAppInstanceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateAppInstanceRequest.type = Types::CreateAppInstanceRequest
    CreateAppInstanceResponse.add_member(:app_instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, name: "AppInstanceArn"))
    CreateAppInstanceResponse.type = Types::CreateAppInstanceResponse
    CreateAppInstanceUserRequest.add_member(:app_instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, name: "AppInstanceArn", traits: {"smithy.api#required" => {}}))
    CreateAppInstanceUserRequest.add_member(:app_instance_user_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserId, name: "AppInstanceUserId", traits: {"smithy.api#required" => {}}))
    CreateAppInstanceUserRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: UserName, name: "Name", traits: {"smithy.api#required" => {}}))
    CreateAppInstanceUserRequest.add_member(:metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: Metadata, name: "Metadata"))
    CreateAppInstanceUserRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestToken, name: "ClientRequestToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    CreateAppInstanceUserRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateAppInstanceUserRequest.add_member(:expiration_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: ExpirationSettings, name: "ExpirationSettings"))
    CreateAppInstanceUserRequest.type = Types::CreateAppInstanceUserRequest
    CreateAppInstanceUserResponse.add_member(:app_instance_user_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, name: "AppInstanceUserArn"))
    CreateAppInstanceUserResponse.type = Types::CreateAppInstanceUserResponse
    DeleteAppInstanceAdminRequest.add_member(:app_instance_admin_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, name: "AppInstanceAdminArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAppInstanceAdminRequest.add_member(:app_instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, name: "AppInstanceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAppInstanceAdminRequest.type = Types::DeleteAppInstanceAdminRequest
    DeleteAppInstanceBotRequest.add_member(:app_instance_bot_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, name: "AppInstanceBotArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAppInstanceBotRequest.type = Types::DeleteAppInstanceBotRequest
    DeleteAppInstanceRequest.add_member(:app_instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, name: "AppInstanceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAppInstanceRequest.type = Types::DeleteAppInstanceRequest
    DeleteAppInstanceUserRequest.add_member(:app_instance_user_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, name: "AppInstanceUserArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAppInstanceUserRequest.type = Types::DeleteAppInstanceUserRequest
    DeregisterAppInstanceUserEndpointRequest.add_member(:app_instance_user_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, name: "AppInstanceUserArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeregisterAppInstanceUserEndpointRequest.add_member(:endpoint_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String64, name: "EndpointId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeregisterAppInstanceUserEndpointRequest.type = Types::DeregisterAppInstanceUserEndpointRequest
    DescribeAppInstanceAdminRequest.add_member(:app_instance_admin_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, name: "AppInstanceAdminArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeAppInstanceAdminRequest.add_member(:app_instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, name: "AppInstanceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeAppInstanceAdminRequest.type = Types::DescribeAppInstanceAdminRequest
    DescribeAppInstanceAdminResponse.add_member(:app_instance_admin, ::Smithy::Schema::Shapes::MemberShape.new(target: AppInstanceAdmin, name: "AppInstanceAdmin"))
    DescribeAppInstanceAdminResponse.type = Types::DescribeAppInstanceAdminResponse
    DescribeAppInstanceBotRequest.add_member(:app_instance_bot_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, name: "AppInstanceBotArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeAppInstanceBotRequest.type = Types::DescribeAppInstanceBotRequest
    DescribeAppInstanceBotResponse.add_member(:app_instance_bot, ::Smithy::Schema::Shapes::MemberShape.new(target: AppInstanceBot, name: "AppInstanceBot"))
    DescribeAppInstanceBotResponse.type = Types::DescribeAppInstanceBotResponse
    DescribeAppInstanceRequest.add_member(:app_instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, name: "AppInstanceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeAppInstanceRequest.type = Types::DescribeAppInstanceRequest
    DescribeAppInstanceResponse.add_member(:app_instance, ::Smithy::Schema::Shapes::MemberShape.new(target: AppInstance, name: "AppInstance"))
    DescribeAppInstanceResponse.type = Types::DescribeAppInstanceResponse
    DescribeAppInstanceUserEndpointRequest.add_member(:app_instance_user_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String1600, name: "AppInstanceUserArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeAppInstanceUserEndpointRequest.add_member(:endpoint_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String64, name: "EndpointId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeAppInstanceUserEndpointRequest.type = Types::DescribeAppInstanceUserEndpointRequest
    DescribeAppInstanceUserEndpointResponse.add_member(:app_instance_user_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: AppInstanceUserEndpoint, name: "AppInstanceUserEndpoint"))
    DescribeAppInstanceUserEndpointResponse.type = Types::DescribeAppInstanceUserEndpointResponse
    DescribeAppInstanceUserRequest.add_member(:app_instance_user_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, name: "AppInstanceUserArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeAppInstanceUserRequest.type = Types::DescribeAppInstanceUserRequest
    DescribeAppInstanceUserResponse.add_member(:app_instance_user, ::Smithy::Schema::Shapes::MemberShape.new(target: AppInstanceUser, name: "AppInstanceUser"))
    DescribeAppInstanceUserResponse.type = Types::DescribeAppInstanceUserResponse
    EndpointAttributes.add_member(:device_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptySensitiveString1600, name: "DeviceToken", traits: {"smithy.api#required" => {}}))
    EndpointAttributes.add_member(:voip_device_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptySensitiveString1600, name: "VoipDeviceToken"))
    EndpointAttributes.type = Types::EndpointAttributes
    EndpointState.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: EndpointStatus, name: "Status", traits: {"smithy.api#required" => {}}))
    EndpointState.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: EndpointStatusReason, name: "StatusReason"))
    EndpointState.type = Types::EndpointState
    EndpointStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    EndpointStatus.add_member(:inactive, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INACTIVE", traits: {"smithy.api#enumValue" => "INACTIVE"}))
    EndpointStatusReason.add_member(:invalid_device_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_DEVICE_TOKEN", traits: {"smithy.api#enumValue" => "INVALID_DEVICE_TOKEN"}))
    EndpointStatusReason.add_member(:invalid_pinpoint_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_PINPOINT_ARN", traits: {"smithy.api#enumValue" => "INVALID_PINPOINT_ARN"}))
    ErrorCode.add_member(:bad_request, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BadRequest", traits: {"smithy.api#enumValue" => "BadRequest"}))
    ErrorCode.add_member(:conflict, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Conflict", traits: {"smithy.api#enumValue" => "Conflict"}))
    ErrorCode.add_member(:forbidden, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Forbidden", traits: {"smithy.api#enumValue" => "Forbidden"}))
    ErrorCode.add_member(:not_found, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NotFound", traits: {"smithy.api#enumValue" => "NotFound"}))
    ErrorCode.add_member(:precondition_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PreconditionFailed", traits: {"smithy.api#enumValue" => "PreconditionFailed"}))
    ErrorCode.add_member(:resource_limit_exceeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ResourceLimitExceeded", traits: {"smithy.api#enumValue" => "ResourceLimitExceeded"}))
    ErrorCode.add_member(:service_failure, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ServiceFailure", traits: {"smithy.api#enumValue" => "ServiceFailure"}))
    ErrorCode.add_member(:access_denied, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AccessDenied", traits: {"smithy.api#enumValue" => "AccessDenied"}))
    ErrorCode.add_member(:service_unavailable, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ServiceUnavailable", traits: {"smithy.api#enumValue" => "ServiceUnavailable"}))
    ErrorCode.add_member(:throttled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Throttled", traits: {"smithy.api#enumValue" => "Throttled"}))
    ErrorCode.add_member(:throttling, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Throttling", traits: {"smithy.api#enumValue" => "Throttling"}))
    ErrorCode.add_member(:unauthorized, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Unauthorized", traits: {"smithy.api#enumValue" => "Unauthorized"}))
    ErrorCode.add_member(:unprocessable, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Unprocessable", traits: {"smithy.api#enumValue" => "Unprocessable"}))
    ErrorCode.add_member(:voice_connector_group_associations_exist, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VoiceConnectorGroupAssociationsExist", traits: {"smithy.api#enumValue" => "VoiceConnectorGroupAssociationsExist"}))
    ErrorCode.add_member(:phone_number_associations_exist, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PhoneNumberAssociationsExist", traits: {"smithy.api#enumValue" => "PhoneNumberAssociationsExist"}))
    ExpirationCriterion.add_member(:created_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATED_TIMESTAMP", traits: {"smithy.api#enumValue" => "CREATED_TIMESTAMP"}))
    ExpirationSettings.add_member(:expiration_days, ::Smithy::Schema::Shapes::MemberShape.new(target: ExpirationDays, name: "ExpirationDays", traits: {"smithy.api#required" => {}}))
    ExpirationSettings.add_member(:expiration_criterion, ::Smithy::Schema::Shapes::MemberShape.new(target: ExpirationCriterion, name: "ExpirationCriterion", traits: {"smithy.api#required" => {}}))
    ExpirationSettings.type = Types::ExpirationSettings
    ForbiddenException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, name: "Code"))
    ForbiddenException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    ForbiddenException.type = Types::ForbiddenException
    GetAppInstanceRetentionSettingsRequest.add_member(:app_instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, name: "AppInstanceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAppInstanceRetentionSettingsRequest.type = Types::GetAppInstanceRetentionSettingsRequest
    GetAppInstanceRetentionSettingsResponse.add_member(:app_instance_retention_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: AppInstanceRetentionSettings, name: "AppInstanceRetentionSettings"))
    GetAppInstanceRetentionSettingsResponse.add_member(:initiate_deletion_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "InitiateDeletionTimestamp"))
    GetAppInstanceRetentionSettingsResponse.type = Types::GetAppInstanceRetentionSettingsResponse
    Identity.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, name: "Arn"))
    Identity.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "Name"))
    Identity.type = Types::Identity
    InvokedBy.add_member(:standard_messages, ::Smithy::Schema::Shapes::MemberShape.new(target: StandardMessages, name: "StandardMessages", traits: {"smithy.api#required" => {}}))
    InvokedBy.add_member(:targeted_messages, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetedMessages, name: "TargetedMessages", traits: {"smithy.api#required" => {}}))
    InvokedBy.type = Types::InvokedBy
    LexConfiguration.add_member(:responds_to, ::Smithy::Schema::Shapes::MemberShape.new(target: RespondsTo, name: "RespondsTo"))
    LexConfiguration.add_member(:invoked_by, ::Smithy::Schema::Shapes::MemberShape.new(target: InvokedBy, name: "InvokedBy"))
    LexConfiguration.add_member(:lex_bot_alias_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LexBotAliasArn, name: "LexBotAliasArn", traits: {"smithy.api#required" => {}}))
    LexConfiguration.add_member(:locale_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LocaleId", traits: {"smithy.api#required" => {}}))
    LexConfiguration.add_member(:welcome_intent, ::Smithy::Schema::Shapes::MemberShape.new(target: LexIntentName, name: "WelcomeIntent"))
    LexConfiguration.type = Types::LexConfiguration
    ListAppInstanceAdminsRequest.add_member(:app_instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, name: "AppInstanceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListAppInstanceAdminsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "max-results"}))
    ListAppInstanceAdminsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken", traits: {"smithy.api#httpQuery" => "next-token"}))
    ListAppInstanceAdminsRequest.type = Types::ListAppInstanceAdminsRequest
    ListAppInstanceAdminsResponse.add_member(:app_instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, name: "AppInstanceArn"))
    ListAppInstanceAdminsResponse.add_member(:app_instance_admins, ::Smithy::Schema::Shapes::MemberShape.new(target: AppInstanceAdminList, name: "AppInstanceAdmins"))
    ListAppInstanceAdminsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListAppInstanceAdminsResponse.type = Types::ListAppInstanceAdminsResponse
    ListAppInstanceBotsRequest.add_member(:app_instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, name: "AppInstanceArn", traits: {"smithy.api#httpQuery" => "app-instance-arn", "smithy.api#required" => {}}))
    ListAppInstanceBotsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "max-results"}))
    ListAppInstanceBotsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken", traits: {"smithy.api#httpQuery" => "next-token"}))
    ListAppInstanceBotsRequest.type = Types::ListAppInstanceBotsRequest
    ListAppInstanceBotsResponse.add_member(:app_instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, name: "AppInstanceArn"))
    ListAppInstanceBotsResponse.add_member(:app_instance_bots, ::Smithy::Schema::Shapes::MemberShape.new(target: AppInstanceBotList, name: "AppInstanceBots"))
    ListAppInstanceBotsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListAppInstanceBotsResponse.type = Types::ListAppInstanceBotsResponse
    ListAppInstanceUserEndpointsRequest.add_member(:app_instance_user_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveChimeArn, name: "AppInstanceUserArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListAppInstanceUserEndpointsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "max-results"}))
    ListAppInstanceUserEndpointsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken", traits: {"smithy.api#httpQuery" => "next-token"}))
    ListAppInstanceUserEndpointsRequest.type = Types::ListAppInstanceUserEndpointsRequest
    ListAppInstanceUserEndpointsResponse.add_member(:app_instance_user_endpoints, ::Smithy::Schema::Shapes::MemberShape.new(target: AppInstanceUserEndpointSummaryList, name: "AppInstanceUserEndpoints"))
    ListAppInstanceUserEndpointsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListAppInstanceUserEndpointsResponse.type = Types::ListAppInstanceUserEndpointsResponse
    ListAppInstanceUsersRequest.add_member(:app_instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, name: "AppInstanceArn", traits: {"smithy.api#httpQuery" => "app-instance-arn", "smithy.api#required" => {}}))
    ListAppInstanceUsersRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "max-results"}))
    ListAppInstanceUsersRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken", traits: {"smithy.api#httpQuery" => "next-token"}))
    ListAppInstanceUsersRequest.type = Types::ListAppInstanceUsersRequest
    ListAppInstanceUsersResponse.add_member(:app_instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, name: "AppInstanceArn"))
    ListAppInstanceUsersResponse.add_member(:app_instance_users, ::Smithy::Schema::Shapes::MemberShape.new(target: AppInstanceUserList, name: "AppInstanceUsers"))
    ListAppInstanceUsersResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListAppInstanceUsersResponse.type = Types::ListAppInstanceUsersResponse
    ListAppInstancesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "max-results"}))
    ListAppInstancesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken", traits: {"smithy.api#httpQuery" => "next-token"}))
    ListAppInstancesRequest.type = Types::ListAppInstancesRequest
    ListAppInstancesResponse.add_member(:app_instances, ::Smithy::Schema::Shapes::MemberShape.new(target: AppInstanceList, name: "AppInstances"))
    ListAppInstancesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListAppInstancesResponse.type = Types::ListAppInstancesResponse
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, name: "ResourceARN", traits: {"smithy.api#httpQuery" => "arn", "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    NotFoundException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, name: "Code"))
    NotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    NotFoundException.type = Types::NotFoundException
    PutAppInstanceRetentionSettingsRequest.add_member(:app_instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, name: "AppInstanceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutAppInstanceRetentionSettingsRequest.add_member(:app_instance_retention_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: AppInstanceRetentionSettings, name: "AppInstanceRetentionSettings", traits: {"smithy.api#required" => {}}))
    PutAppInstanceRetentionSettingsRequest.type = Types::PutAppInstanceRetentionSettingsRequest
    PutAppInstanceRetentionSettingsResponse.add_member(:app_instance_retention_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: AppInstanceRetentionSettings, name: "AppInstanceRetentionSettings"))
    PutAppInstanceRetentionSettingsResponse.add_member(:initiate_deletion_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "InitiateDeletionTimestamp"))
    PutAppInstanceRetentionSettingsResponse.type = Types::PutAppInstanceRetentionSettingsResponse
    PutAppInstanceUserExpirationSettingsRequest.add_member(:app_instance_user_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, name: "AppInstanceUserArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutAppInstanceUserExpirationSettingsRequest.add_member(:expiration_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: ExpirationSettings, name: "ExpirationSettings"))
    PutAppInstanceUserExpirationSettingsRequest.type = Types::PutAppInstanceUserExpirationSettingsRequest
    PutAppInstanceUserExpirationSettingsResponse.add_member(:app_instance_user_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, name: "AppInstanceUserArn"))
    PutAppInstanceUserExpirationSettingsResponse.add_member(:expiration_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: ExpirationSettings, name: "ExpirationSettings"))
    PutAppInstanceUserExpirationSettingsResponse.type = Types::PutAppInstanceUserExpirationSettingsResponse
    RegisterAppInstanceUserEndpointRequest.add_member(:app_instance_user_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveChimeArn, name: "AppInstanceUserArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RegisterAppInstanceUserEndpointRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString1600, name: "Name"))
    RegisterAppInstanceUserEndpointRequest.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: AppInstanceUserEndpointType, name: "Type", traits: {"smithy.api#required" => {}}))
    RegisterAppInstanceUserEndpointRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    RegisterAppInstanceUserEndpointRequest.add_member(:endpoint_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: EndpointAttributes, name: "EndpointAttributes", traits: {"smithy.api#required" => {}}))
    RegisterAppInstanceUserEndpointRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestToken, name: "ClientRequestToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    RegisterAppInstanceUserEndpointRequest.add_member(:allow_messages, ::Smithy::Schema::Shapes::MemberShape.new(target: AllowMessages, name: "AllowMessages"))
    RegisterAppInstanceUserEndpointRequest.type = Types::RegisterAppInstanceUserEndpointRequest
    RegisterAppInstanceUserEndpointResponse.add_member(:app_instance_user_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, name: "AppInstanceUserArn"))
    RegisterAppInstanceUserEndpointResponse.add_member(:endpoint_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String64, name: "EndpointId"))
    RegisterAppInstanceUserEndpointResponse.type = Types::RegisterAppInstanceUserEndpointResponse
    ResourceLimitExceededException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, name: "Code"))
    ResourceLimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    ResourceLimitExceededException.type = Types::ResourceLimitExceededException
    RespondsTo.add_member(:standard_messages, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STANDARD_MESSAGES", traits: {"smithy.api#enumValue" => "STANDARD_MESSAGES"}))
    ServiceFailureException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, name: "Code"))
    ServiceFailureException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    ServiceFailureException.type = Types::ServiceFailureException
    ServiceUnavailableException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, name: "Code"))
    ServiceUnavailableException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    ServiceUnavailableException.type = Types::ServiceUnavailableException
    StandardMessages.add_member(:auto, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AUTO", traits: {"smithy.api#enumValue" => "AUTO"}))
    StandardMessages.add_member(:all, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ALL", traits: {"smithy.api#enumValue" => "ALL"}))
    StandardMessages.add_member(:mentions, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MENTIONS", traits: {"smithy.api#enumValue" => "MENTIONS"}))
    StandardMessages.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))
    Tag.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "Key", traits: {"smithy.api#required" => {}}))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "Value", traits: {"smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagKeyList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "member"))
    TagList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Tag, name: "member"))
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, name: "ResourceARN", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TargetedMessages.add_member(:all, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ALL", traits: {"smithy.api#enumValue" => "ALL"}))
    TargetedMessages.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))
    ThrottledClientException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, name: "Code"))
    ThrottledClientException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    ThrottledClientException.type = Types::ThrottledClientException
    UnauthorizedClientException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, name: "Code"))
    UnauthorizedClientException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    UnauthorizedClientException.type = Types::UnauthorizedClientException
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, name: "ResourceARN", traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, name: "TagKeys", traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UpdateAppInstanceBotRequest.add_member(:app_instance_bot_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, name: "AppInstanceBotArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateAppInstanceBotRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "Name", traits: {"smithy.api#required" => {}}))
    UpdateAppInstanceBotRequest.add_member(:metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: Metadata, name: "Metadata", traits: {"smithy.api#required" => {}}))
    UpdateAppInstanceBotRequest.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: Configuration, name: "Configuration"))
    UpdateAppInstanceBotRequest.type = Types::UpdateAppInstanceBotRequest
    UpdateAppInstanceBotResponse.add_member(:app_instance_bot_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, name: "AppInstanceBotArn"))
    UpdateAppInstanceBotResponse.type = Types::UpdateAppInstanceBotResponse
    UpdateAppInstanceRequest.add_member(:app_instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, name: "AppInstanceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateAppInstanceRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyResourceName, name: "Name", traits: {"smithy.api#required" => {}}))
    UpdateAppInstanceRequest.add_member(:metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: Metadata, name: "Metadata", traits: {"smithy.api#required" => {}}))
    UpdateAppInstanceRequest.type = Types::UpdateAppInstanceRequest
    UpdateAppInstanceResponse.add_member(:app_instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, name: "AppInstanceArn"))
    UpdateAppInstanceResponse.type = Types::UpdateAppInstanceResponse
    UpdateAppInstanceUserEndpointRequest.add_member(:app_instance_user_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, name: "AppInstanceUserArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateAppInstanceUserEndpointRequest.add_member(:endpoint_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String64, name: "EndpointId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateAppInstanceUserEndpointRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString1600, name: "Name"))
    UpdateAppInstanceUserEndpointRequest.add_member(:allow_messages, ::Smithy::Schema::Shapes::MemberShape.new(target: AllowMessages, name: "AllowMessages"))
    UpdateAppInstanceUserEndpointRequest.type = Types::UpdateAppInstanceUserEndpointRequest
    UpdateAppInstanceUserEndpointResponse.add_member(:app_instance_user_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, name: "AppInstanceUserArn"))
    UpdateAppInstanceUserEndpointResponse.add_member(:endpoint_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String64, name: "EndpointId"))
    UpdateAppInstanceUserEndpointResponse.type = Types::UpdateAppInstanceUserEndpointResponse
    UpdateAppInstanceUserRequest.add_member(:app_instance_user_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, name: "AppInstanceUserArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateAppInstanceUserRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: UserName, name: "Name", traits: {"smithy.api#required" => {}}))
    UpdateAppInstanceUserRequest.add_member(:metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: Metadata, name: "Metadata", traits: {"smithy.api#required" => {}}))
    UpdateAppInstanceUserRequest.type = Types::UpdateAppInstanceUserRequest
    UpdateAppInstanceUserResponse.add_member(:app_instance_user_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeArn, name: "AppInstanceUserArn"))
    UpdateAppInstanceUserResponse.type = Types::UpdateAppInstanceUserResponse

    ChimeIdentityService = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.chimesdkidentity#ChimeIdentityService"
      service.name = "ChimeIdentityService"
      service.version = "2021-04-20"
      service.traits = {"aws.api#service" => {"sdkId" => "Chime SDK Identity", "arnNamespace" => "chime", "cloudFormationName" => "ChimeSDKIdentity", "cloudTrailEventSource" => "chimesdkidentity.amazonaws.com", "endpointPrefix" => "identity-chime"}, "aws.auth#sigv4" => {"name" => "chime"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "Amazon Chime SDK Identity"}
      service.add_operation(:create_app_instance, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkidentity#CreateAppInstance"
        operation.name = "CreateAppInstance"
        operation.input = CreateAppInstanceRequest
        operation.output = CreateAppInstanceResponse
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << ResourceLimitExceededException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/app-instances", "code" => 201}}
      end)
      service.add_operation(:create_app_instance_admin, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkidentity#CreateAppInstanceAdmin"
        operation.name = "CreateAppInstanceAdmin"
        operation.input = CreateAppInstanceAdminRequest
        operation.output = CreateAppInstanceAdminResponse
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << ResourceLimitExceededException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/app-instances/{AppInstanceArn}/admins", "code" => 201}}
      end)
      service.add_operation(:create_app_instance_bot, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkidentity#CreateAppInstanceBot"
        operation.name = "CreateAppInstanceBot"
        operation.input = CreateAppInstanceBotRequest
        operation.output = CreateAppInstanceBotResponse
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << ResourceLimitExceededException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/app-instance-bots", "code" => 201}}
      end)
      service.add_operation(:create_app_instance_user, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkidentity#CreateAppInstanceUser"
        operation.name = "CreateAppInstanceUser"
        operation.input = CreateAppInstanceUserRequest
        operation.output = CreateAppInstanceUserResponse
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << ResourceLimitExceededException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/app-instance-users", "code" => 201}}
      end)
      service.add_operation(:delete_app_instance, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkidentity#DeleteAppInstance"
        operation.name = "DeleteAppInstance"
        operation.input = DeleteAppInstanceRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << ResourceLimitExceededException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/app-instances/{AppInstanceArn}", "code" => 204}}
      end)
      service.add_operation(:delete_app_instance_admin, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkidentity#DeleteAppInstanceAdmin"
        operation.name = "DeleteAppInstanceAdmin"
        operation.input = DeleteAppInstanceAdminRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << ResourceLimitExceededException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/app-instances/{AppInstanceArn}/admins/{AppInstanceAdminArn}", "code" => 204}}
      end)
      service.add_operation(:delete_app_instance_bot, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkidentity#DeleteAppInstanceBot"
        operation.name = "DeleteAppInstanceBot"
        operation.input = DeleteAppInstanceBotRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << ResourceLimitExceededException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/app-instance-bots/{AppInstanceBotArn}", "code" => 204}}
      end)
      service.add_operation(:delete_app_instance_user, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkidentity#DeleteAppInstanceUser"
        operation.name = "DeleteAppInstanceUser"
        operation.input = DeleteAppInstanceUserRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << ResourceLimitExceededException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/app-instance-users/{AppInstanceUserArn}", "code" => 204}}
      end)
      service.add_operation(:deregister_app_instance_user_endpoint, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkidentity#DeregisterAppInstanceUserEndpoint"
        operation.name = "DeregisterAppInstanceUserEndpoint"
        operation.input = DeregisterAppInstanceUserEndpointRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/app-instance-users/{AppInstanceUserArn}/endpoints/{EndpointId}", "code" => 204}}
      end)
      service.add_operation(:describe_app_instance, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkidentity#DescribeAppInstance"
        operation.name = "DescribeAppInstance"
        operation.input = DescribeAppInstanceRequest
        operation.output = DescribeAppInstanceResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/app-instances/{AppInstanceArn}", "code" => 200}}
      end)
      service.add_operation(:describe_app_instance_admin, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkidentity#DescribeAppInstanceAdmin"
        operation.name = "DescribeAppInstanceAdmin"
        operation.input = DescribeAppInstanceAdminRequest
        operation.output = DescribeAppInstanceAdminResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/app-instances/{AppInstanceArn}/admins/{AppInstanceAdminArn}", "code" => 200}}
      end)
      service.add_operation(:describe_app_instance_bot, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkidentity#DescribeAppInstanceBot"
        operation.name = "DescribeAppInstanceBot"
        operation.input = DescribeAppInstanceBotRequest
        operation.output = DescribeAppInstanceBotResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << NotFoundException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/app-instance-bots/{AppInstanceBotArn}", "code" => 200}}
      end)
      service.add_operation(:describe_app_instance_user, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkidentity#DescribeAppInstanceUser"
        operation.name = "DescribeAppInstanceUser"
        operation.input = DescribeAppInstanceUserRequest
        operation.output = DescribeAppInstanceUserResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/app-instance-users/{AppInstanceUserArn}", "code" => 200}}
      end)
      service.add_operation(:describe_app_instance_user_endpoint, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkidentity#DescribeAppInstanceUserEndpoint"
        operation.name = "DescribeAppInstanceUserEndpoint"
        operation.input = DescribeAppInstanceUserEndpointRequest
        operation.output = DescribeAppInstanceUserEndpointResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/app-instance-users/{AppInstanceUserArn}/endpoints/{EndpointId}", "code" => 200}}
      end)
      service.add_operation(:get_app_instance_retention_settings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkidentity#GetAppInstanceRetentionSettings"
        operation.name = "GetAppInstanceRetentionSettings"
        operation.input = GetAppInstanceRetentionSettingsRequest
        operation.output = GetAppInstanceRetentionSettingsResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/app-instances/{AppInstanceArn}/retention-settings", "code" => 200}}
      end)
      service.add_operation(:list_app_instance_admins, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkidentity#ListAppInstanceAdmins"
        operation.name = "ListAppInstanceAdmins"
        operation.input = ListAppInstanceAdminsRequest
        operation.output = ListAppInstanceAdminsResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << ResourceLimitExceededException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/app-instances/{AppInstanceArn}/admins", "code" => 200}}
        operation[:paginator] = Paginators::ListAppInstanceAdmins.new
      end)
      service.add_operation(:list_app_instance_bots, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkidentity#ListAppInstanceBots"
        operation.name = "ListAppInstanceBots"
        operation.input = ListAppInstanceBotsRequest
        operation.output = ListAppInstanceBotsResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << ResourceLimitExceededException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/app-instance-bots", "code" => 200}}
        operation[:paginator] = Paginators::ListAppInstanceBots.new
      end)
      service.add_operation(:list_app_instance_user_endpoints, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkidentity#ListAppInstanceUserEndpoints"
        operation.name = "ListAppInstanceUserEndpoints"
        operation.input = ListAppInstanceUserEndpointsRequest
        operation.output = ListAppInstanceUserEndpointsResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/app-instance-users/{AppInstanceUserArn}/endpoints", "code" => 200}}
        operation[:paginator] = Paginators::ListAppInstanceUserEndpoints.new
      end)
      service.add_operation(:list_app_instance_users, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkidentity#ListAppInstanceUsers"
        operation.name = "ListAppInstanceUsers"
        operation.input = ListAppInstanceUsersRequest
        operation.output = ListAppInstanceUsersResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/app-instance-users", "code" => 200}}
        operation[:paginator] = Paginators::ListAppInstanceUsers.new
      end)
      service.add_operation(:list_app_instances, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkidentity#ListAppInstances"
        operation.name = "ListAppInstances"
        operation.input = ListAppInstancesRequest
        operation.output = ListAppInstancesResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/app-instances", "code" => 200}}
        operation[:paginator] = Paginators::ListAppInstances.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkidentity#ListTagsForResource"
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
      service.add_operation(:put_app_instance_retention_settings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkidentity#PutAppInstanceRetentionSettings"
        operation.name = "PutAppInstanceRetentionSettings"
        operation.input = PutAppInstanceRetentionSettingsRequest
        operation.output = PutAppInstanceRetentionSettingsResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/app-instances/{AppInstanceArn}/retention-settings", "code" => 200}}
      end)
      service.add_operation(:put_app_instance_user_expiration_settings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkidentity#PutAppInstanceUserExpirationSettings"
        operation.name = "PutAppInstanceUserExpirationSettings"
        operation.input = PutAppInstanceUserExpirationSettingsRequest
        operation.output = PutAppInstanceUserExpirationSettingsResponse
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/app-instance-users/{AppInstanceUserArn}/expiration-settings", "code" => 200}}
      end)
      service.add_operation(:register_app_instance_user_endpoint, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkidentity#RegisterAppInstanceUserEndpoint"
        operation.name = "RegisterAppInstanceUserEndpoint"
        operation.input = RegisterAppInstanceUserEndpointRequest
        operation.output = RegisterAppInstanceUserEndpointResponse
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << ResourceLimitExceededException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/app-instance-users/{AppInstanceUserArn}/endpoints", "code" => 201}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkidentity#TagResource"
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
        operation.id = "com.amazonaws.chimesdkidentity#UntagResource"
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
      service.add_operation(:update_app_instance, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkidentity#UpdateAppInstance"
        operation.name = "UpdateAppInstance"
        operation.input = UpdateAppInstanceRequest
        operation.output = UpdateAppInstanceResponse
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/app-instances/{AppInstanceArn}", "code" => 200}}
      end)
      service.add_operation(:update_app_instance_bot, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkidentity#UpdateAppInstanceBot"
        operation.name = "UpdateAppInstanceBot"
        operation.input = UpdateAppInstanceBotRequest
        operation.output = UpdateAppInstanceBotResponse
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << ResourceLimitExceededException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/app-instance-bots/{AppInstanceBotArn}", "code" => 200}}
      end)
      service.add_operation(:update_app_instance_user, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkidentity#UpdateAppInstanceUser"
        operation.name = "UpdateAppInstanceUser"
        operation.input = UpdateAppInstanceUserRequest
        operation.output = UpdateAppInstanceUserResponse
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << ResourceLimitExceededException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/app-instance-users/{AppInstanceUserArn}", "code" => 200}}
      end)
      service.add_operation(:update_app_instance_user_endpoint, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkidentity#UpdateAppInstanceUserEndpoint"
        operation.name = "UpdateAppInstanceUserEndpoint"
        operation.input = UpdateAppInstanceUserEndpointRequest
        operation.output = UpdateAppInstanceUserEndpointResponse
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/app-instance-users/{AppInstanceUserArn}/endpoints/{EndpointId}", "code" => 200}}
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
