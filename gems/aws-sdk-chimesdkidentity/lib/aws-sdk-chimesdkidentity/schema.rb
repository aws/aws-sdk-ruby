# frozen_string_literal: true

# This is generated code!

module Aws::ChimeSDKIdentity
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AllowMessages = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.chimesdkidentity#AllowMessages', name: 'AllowMessages')
    AppInstance = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkidentity#AppInstance', name: 'AppInstance')
    AppInstanceAdmin = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkidentity#AppInstanceAdmin', name: 'AppInstanceAdmin')
    AppInstanceAdminList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.chimesdkidentity#AppInstanceAdminList', name: 'AppInstanceAdminList')
    AppInstanceAdminSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkidentity#AppInstanceAdminSummary', name: 'AppInstanceAdminSummary')
    AppInstanceBot = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkidentity#AppInstanceBot', name: 'AppInstanceBot')
    AppInstanceBotList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.chimesdkidentity#AppInstanceBotList', name: 'AppInstanceBotList')
    AppInstanceBotSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkidentity#AppInstanceBotSummary', name: 'AppInstanceBotSummary')
    AppInstanceList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.chimesdkidentity#AppInstanceList', name: 'AppInstanceList')
    AppInstanceRetentionSettings = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkidentity#AppInstanceRetentionSettings', name: 'AppInstanceRetentionSettings')
    AppInstanceSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkidentity#AppInstanceSummary', name: 'AppInstanceSummary')
    AppInstanceUser = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkidentity#AppInstanceUser', name: 'AppInstanceUser')
    AppInstanceUserEndpoint = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkidentity#AppInstanceUserEndpoint', name: 'AppInstanceUserEndpoint')
    AppInstanceUserEndpointSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkidentity#AppInstanceUserEndpointSummary', name: 'AppInstanceUserEndpointSummary')
    AppInstanceUserEndpointSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.chimesdkidentity#AppInstanceUserEndpointSummaryList', name: 'AppInstanceUserEndpointSummaryList')
    AppInstanceUserEndpointType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.chimesdkidentity#AppInstanceUserEndpointType', name: 'AppInstanceUserEndpointType')
    AppInstanceUserList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.chimesdkidentity#AppInstanceUserList', name: 'AppInstanceUserList')
    AppInstanceUserSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkidentity#AppInstanceUserSummary', name: 'AppInstanceUserSummary')
    BadRequestException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkidentity#BadRequestException', name: 'BadRequestException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ChannelRetentionSettings = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkidentity#ChannelRetentionSettings', name: 'ChannelRetentionSettings')
    ChimeArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.chimesdkidentity#ChimeArn', name: 'ChimeArn', traits: {"smithy.api#length" => {"min" => 5, "max" => 1600}, "smithy.api#pattern" => "^arn:[a-z0-9-\\.]{1,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[^/].{0,1023}$"})
    ClientRequestToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.chimesdkidentity#ClientRequestToken', name: 'ClientRequestToken', traits: {"smithy.api#length" => {"min" => 2, "max" => 64}, "smithy.api#pattern" => "^[-_a-zA-Z0-9]*$"})
    Configuration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkidentity#Configuration', name: 'Configuration')
    ConflictException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkidentity#ConflictException', name: 'ConflictException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CreateAppInstanceAdminRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkidentity#CreateAppInstanceAdminRequest', name: 'CreateAppInstanceAdminRequest')
    CreateAppInstanceAdminResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkidentity#CreateAppInstanceAdminResponse', name: 'CreateAppInstanceAdminResponse')
    CreateAppInstanceBotRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkidentity#CreateAppInstanceBotRequest', name: 'CreateAppInstanceBotRequest')
    CreateAppInstanceBotResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkidentity#CreateAppInstanceBotResponse', name: 'CreateAppInstanceBotResponse')
    CreateAppInstanceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkidentity#CreateAppInstanceRequest', name: 'CreateAppInstanceRequest')
    CreateAppInstanceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkidentity#CreateAppInstanceResponse', name: 'CreateAppInstanceResponse')
    CreateAppInstanceUserRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkidentity#CreateAppInstanceUserRequest', name: 'CreateAppInstanceUserRequest')
    CreateAppInstanceUserResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkidentity#CreateAppInstanceUserResponse', name: 'CreateAppInstanceUserResponse')
    DeleteAppInstanceAdminRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkidentity#DeleteAppInstanceAdminRequest', name: 'DeleteAppInstanceAdminRequest')
    DeleteAppInstanceBotRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkidentity#DeleteAppInstanceBotRequest', name: 'DeleteAppInstanceBotRequest')
    DeleteAppInstanceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkidentity#DeleteAppInstanceRequest', name: 'DeleteAppInstanceRequest')
    DeleteAppInstanceUserRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkidentity#DeleteAppInstanceUserRequest', name: 'DeleteAppInstanceUserRequest')
    DeregisterAppInstanceUserEndpointRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkidentity#DeregisterAppInstanceUserEndpointRequest', name: 'DeregisterAppInstanceUserEndpointRequest')
    DescribeAppInstanceAdminRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkidentity#DescribeAppInstanceAdminRequest', name: 'DescribeAppInstanceAdminRequest')
    DescribeAppInstanceAdminResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkidentity#DescribeAppInstanceAdminResponse', name: 'DescribeAppInstanceAdminResponse')
    DescribeAppInstanceBotRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkidentity#DescribeAppInstanceBotRequest', name: 'DescribeAppInstanceBotRequest')
    DescribeAppInstanceBotResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkidentity#DescribeAppInstanceBotResponse', name: 'DescribeAppInstanceBotResponse')
    DescribeAppInstanceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkidentity#DescribeAppInstanceRequest', name: 'DescribeAppInstanceRequest')
    DescribeAppInstanceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkidentity#DescribeAppInstanceResponse', name: 'DescribeAppInstanceResponse')
    DescribeAppInstanceUserEndpointRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkidentity#DescribeAppInstanceUserEndpointRequest', name: 'DescribeAppInstanceUserEndpointRequest')
    DescribeAppInstanceUserEndpointResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkidentity#DescribeAppInstanceUserEndpointResponse', name: 'DescribeAppInstanceUserEndpointResponse')
    DescribeAppInstanceUserRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkidentity#DescribeAppInstanceUserRequest', name: 'DescribeAppInstanceUserRequest')
    DescribeAppInstanceUserResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkidentity#DescribeAppInstanceUserResponse', name: 'DescribeAppInstanceUserResponse')
    EndpointAttributes = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkidentity#EndpointAttributes', name: 'EndpointAttributes')
    EndpointState = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkidentity#EndpointState', name: 'EndpointState')
    EndpointStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.chimesdkidentity#EndpointStatus', name: 'EndpointStatus')
    EndpointStatusReason = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.chimesdkidentity#EndpointStatusReason', name: 'EndpointStatusReason')
    ErrorCode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.chimesdkidentity#ErrorCode', name: 'ErrorCode')
    ExpirationCriterion = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.chimesdkidentity#ExpirationCriterion', name: 'ExpirationCriterion')
    ExpirationDays = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.chimesdkidentity#ExpirationDays', name: 'ExpirationDays', traits: {"smithy.api#range" => {"min" => 1, "max" => 5475}})
    ExpirationSettings = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkidentity#ExpirationSettings', name: 'ExpirationSettings')
    ForbiddenException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkidentity#ForbiddenException', name: 'ForbiddenException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    GetAppInstanceRetentionSettingsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkidentity#GetAppInstanceRetentionSettingsRequest', name: 'GetAppInstanceRetentionSettingsRequest')
    GetAppInstanceRetentionSettingsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkidentity#GetAppInstanceRetentionSettingsResponse', name: 'GetAppInstanceRetentionSettingsResponse')
    Identity = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkidentity#Identity', name: 'Identity')
    InvokedBy = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkidentity#InvokedBy', name: 'InvokedBy')
    LexBotAliasArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.chimesdkidentity#LexBotAliasArn', name: 'LexBotAliasArn', traits: {"smithy.api#length" => {"min" => 15, "max" => 2048}, "smithy.api#pattern" => "^arn:aws:lex:[a-z]{2}-[a-z]+-\\d{1}:\\d{12}:bot-alias/[A-Z0-9]{10}/[A-Z0-9]{10}$"})
    LexConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkidentity#LexConfiguration', name: 'LexConfiguration')
    LexIntentName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.chimesdkidentity#LexIntentName', name: 'LexIntentName', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^([A-Za-z]_?)+$"})
    ListAppInstanceAdminsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkidentity#ListAppInstanceAdminsRequest', name: 'ListAppInstanceAdminsRequest')
    ListAppInstanceAdminsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkidentity#ListAppInstanceAdminsResponse', name: 'ListAppInstanceAdminsResponse')
    ListAppInstanceBotsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkidentity#ListAppInstanceBotsRequest', name: 'ListAppInstanceBotsRequest')
    ListAppInstanceBotsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkidentity#ListAppInstanceBotsResponse', name: 'ListAppInstanceBotsResponse')
    ListAppInstanceUserEndpointsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkidentity#ListAppInstanceUserEndpointsRequest', name: 'ListAppInstanceUserEndpointsRequest')
    ListAppInstanceUserEndpointsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkidentity#ListAppInstanceUserEndpointsResponse', name: 'ListAppInstanceUserEndpointsResponse')
    ListAppInstanceUsersRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkidentity#ListAppInstanceUsersRequest', name: 'ListAppInstanceUsersRequest')
    ListAppInstanceUsersResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkidentity#ListAppInstanceUsersResponse', name: 'ListAppInstanceUsersResponse')
    ListAppInstancesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkidentity#ListAppInstancesRequest', name: 'ListAppInstancesRequest')
    ListAppInstancesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkidentity#ListAppInstancesResponse', name: 'ListAppInstancesResponse')
    ListTagsForResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkidentity#ListTagsForResourceRequest', name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkidentity#ListTagsForResourceResponse', name: 'ListTagsForResourceResponse')
    MaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.chimesdkidentity#MaxResults', name: 'MaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 50}})
    Metadata = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.chimesdkidentity#Metadata', name: 'Metadata', traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#pattern" => ".*", "smithy.api#sensitive" => {}})
    NextToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.chimesdkidentity#NextToken', name: 'NextToken', traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}, "smithy.api#pattern" => ".*", "smithy.api#sensitive" => {}})
    NonEmptyResourceName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.chimesdkidentity#NonEmptyResourceName', name: 'NonEmptyResourceName', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[\\u0009\\u000A\\u000D\\u0020-\\u007E\\u0085\\u00A0-\\uD7FF\\uE000-\\uFFFD\\u10000-\\u10FFFF]*$", "smithy.api#sensitive" => {}})
    NonEmptySensitiveString1600 = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.chimesdkidentity#NonEmptySensitiveString1600', name: 'NonEmptySensitiveString1600', traits: {"smithy.api#length" => {"min" => 1, "max" => 1600}, "smithy.api#pattern" => ".*", "smithy.api#sensitive" => {}})
    NotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkidentity#NotFoundException', name: 'NotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    PutAppInstanceRetentionSettingsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkidentity#PutAppInstanceRetentionSettingsRequest', name: 'PutAppInstanceRetentionSettingsRequest')
    PutAppInstanceRetentionSettingsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkidentity#PutAppInstanceRetentionSettingsResponse', name: 'PutAppInstanceRetentionSettingsResponse')
    PutAppInstanceUserExpirationSettingsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkidentity#PutAppInstanceUserExpirationSettingsRequest', name: 'PutAppInstanceUserExpirationSettingsRequest')
    PutAppInstanceUserExpirationSettingsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkidentity#PutAppInstanceUserExpirationSettingsResponse', name: 'PutAppInstanceUserExpirationSettingsResponse')
    RegisterAppInstanceUserEndpointRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkidentity#RegisterAppInstanceUserEndpointRequest', name: 'RegisterAppInstanceUserEndpointRequest')
    RegisterAppInstanceUserEndpointResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkidentity#RegisterAppInstanceUserEndpointResponse', name: 'RegisterAppInstanceUserEndpointResponse')
    ResourceLimitExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkidentity#ResourceLimitExceededException', name: 'ResourceLimitExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ResourceName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.chimesdkidentity#ResourceName', name: 'ResourceName', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[\\u0009\\u000A\\u000D\\u0020-\\u007E\\u0085\\u00A0-\\uD7FF\\uE000-\\uFFFD\\u10000-\\u10FFFF]*$", "smithy.api#sensitive" => {}})
    RespondsTo = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.chimesdkidentity#RespondsTo', name: 'RespondsTo')
    RetentionDays = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.chimesdkidentity#RetentionDays', name: 'RetentionDays', traits: {"smithy.api#range" => {"min" => 1, "max" => 5475}})
    SensitiveChimeArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.chimesdkidentity#SensitiveChimeArn', name: 'SensitiveChimeArn', traits: {"smithy.api#length" => {"min" => 5, "max" => 1600}, "smithy.api#pattern" => "^arn:[a-z0-9-\\.]{1,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[^/].{0,1023}$", "smithy.api#sensitive" => {}})
    SensitiveString1600 = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.chimesdkidentity#SensitiveString1600', name: 'SensitiveString1600', traits: {"smithy.api#length" => {"min" => 0, "max" => 1600}, "smithy.api#pattern" => ".*", "smithy.api#sensitive" => {}})
    ServiceFailureException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkidentity#ServiceFailureException', name: 'ServiceFailureException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    ServiceUnavailableException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkidentity#ServiceUnavailableException', name: 'ServiceUnavailableException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 503})
    StandardMessages = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.chimesdkidentity#StandardMessages', name: 'StandardMessages')
    String = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.chimesdkidentity#String', name: 'String')
    String1600 = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.chimesdkidentity#String1600', name: 'String1600', traits: {"smithy.api#length" => {"min" => 0, "max" => 1600}, "smithy.api#pattern" => ".*"})
    String64 = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.chimesdkidentity#String64', name: 'String64', traits: {"smithy.api#length" => {"min" => 0, "max" => 64}, "smithy.api#pattern" => ".*"})
    Tag = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkidentity#Tag', name: 'Tag')
    TagKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.chimesdkidentity#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#sensitive" => {}})
    TagKeyList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.chimesdkidentity#TagKeyList', name: 'TagKeyList', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    TagList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.chimesdkidentity#TagList', name: 'TagList', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    TagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkidentity#TagResourceRequest', name: 'TagResourceRequest')
    TagValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.chimesdkidentity#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#sensitive" => {}})
    TargetedMessages = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.chimesdkidentity#TargetedMessages', name: 'TargetedMessages')
    ThrottledClientException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkidentity#ThrottledClientException', name: 'ThrottledClientException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    Timestamp = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.chimesdkidentity#Timestamp', name: 'Timestamp')
    UnauthorizedClientException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkidentity#UnauthorizedClientException', name: 'UnauthorizedClientException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 401})
    UntagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkidentity#UntagResourceRequest', name: 'UntagResourceRequest')
    UpdateAppInstanceBotRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkidentity#UpdateAppInstanceBotRequest', name: 'UpdateAppInstanceBotRequest')
    UpdateAppInstanceBotResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkidentity#UpdateAppInstanceBotResponse', name: 'UpdateAppInstanceBotResponse')
    UpdateAppInstanceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkidentity#UpdateAppInstanceRequest', name: 'UpdateAppInstanceRequest')
    UpdateAppInstanceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkidentity#UpdateAppInstanceResponse', name: 'UpdateAppInstanceResponse')
    UpdateAppInstanceUserEndpointRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkidentity#UpdateAppInstanceUserEndpointRequest', name: 'UpdateAppInstanceUserEndpointRequest')
    UpdateAppInstanceUserEndpointResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkidentity#UpdateAppInstanceUserEndpointResponse', name: 'UpdateAppInstanceUserEndpointResponse')
    UpdateAppInstanceUserRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkidentity#UpdateAppInstanceUserRequest', name: 'UpdateAppInstanceUserRequest')
    UpdateAppInstanceUserResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkidentity#UpdateAppInstanceUserResponse', name: 'UpdateAppInstanceUserResponse')
    UserId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.chimesdkidentity#UserId', name: 'UserId', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[A-Za-z0-9]([A-Za-z0-9\\:\\-\\_\\.\\@]{0,62}[A-Za-z0-9])?$", "smithy.api#sensitive" => {}})
    UserName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.chimesdkidentity#UserName', name: 'UserName', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "\\S", "smithy.api#sensitive" => {}})

    AllowMessages.add_member(:all, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ALL', traits: {"smithy.api#enumValue" => "ALL"}))
    AllowMessages.add_member(:none, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NONE', traits: {"smithy.api#enumValue" => "NONE"}))
    AppInstance.add_member(:app_instance_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'AppInstanceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the messaging instance.</p>"}))
    AppInstance.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyResourceName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of an <code>AppInstance</code>.</p>"}))
    AppInstance.add_member(:created_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreatedTimestamp', traits: {"smithy.api#documentation" => "<p>The time at which an <code>AppInstance</code> was created. In epoch milliseconds.</p>"}))
    AppInstance.add_member(:last_updated_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastUpdatedTimestamp', traits: {"smithy.api#documentation" => "<p>The time an <code>AppInstance</code> was last updated. In epoch milliseconds.</p>"}))
    AppInstance.add_member(:metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: Metadata, location_name: 'Metadata', traits: {"smithy.api#documentation" => "<p>The metadata of an <code>AppInstance</code>.</p>"}))
    AppInstance.type = Types::AppInstance
    AppInstanceAdmin.add_member(:admin, Smithy::Schema::Shapes::ShapeRef.new(shape: Identity, location_name: 'Admin', traits: {"smithy.api#documentation" => "<p>The <code>AppInstanceAdmin</code> data.</p>"}))
    AppInstanceAdmin.add_member(:app_instance_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'AppInstanceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the <code>AppInstance</code> for which the user is an administrator.</p>"}))
    AppInstanceAdmin.add_member(:created_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreatedTimestamp', traits: {"smithy.api#documentation" => "<p>The time at which an administrator was created.</p>"}))
    AppInstanceAdmin.type = Types::AppInstanceAdmin
    AppInstanceAdminList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AppInstanceAdminSummary)
    AppInstanceAdminSummary.add_member(:admin, Smithy::Schema::Shapes::ShapeRef.new(shape: Identity, location_name: 'Admin', traits: {"smithy.api#documentation" => "<p>The details of the <code>AppInstanceAdmin</code>.</p>"}))
    AppInstanceAdminSummary.type = Types::AppInstanceAdminSummary
    AppInstanceBot.add_member(:app_instance_bot_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'AppInstanceBotArn', traits: {"smithy.api#documentation" => "<p>The ARN of the AppInstanceBot.</p>"}))
    AppInstanceBot.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the AppInstanceBot.</p>"}))
    AppInstanceBot.add_member(:configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: Configuration, location_name: 'Configuration', traits: {"smithy.api#documentation" => "<p>The data processing instructions for an AppInstanceBot.</p>"}))
    AppInstanceBot.add_member(:created_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreatedTimestamp', traits: {"smithy.api#documentation" => "<p>The time at which the <code>AppInstanceBot</code> was created.</p>"}))
    AppInstanceBot.add_member(:last_updated_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastUpdatedTimestamp', traits: {"smithy.api#documentation" => "<p>The time at which the <code>AppInstanceBot</code> was last updated.</p>"}))
    AppInstanceBot.add_member(:metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: Metadata, location_name: 'Metadata', traits: {"smithy.api#documentation" => "<p>The metadata for an AppInstanceBot.</p>"}))
    AppInstanceBot.type = Types::AppInstanceBot
    AppInstanceBotList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AppInstanceBotSummary)
    AppInstanceBotSummary.add_member(:app_instance_bot_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'AppInstanceBotArn', traits: {"smithy.api#documentation" => "<p>The ARN of the AppInstanceBot.</p>"}))
    AppInstanceBotSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the AppInstanceBox.</p>"}))
    AppInstanceBotSummary.add_member(:metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: Metadata, location_name: 'Metadata', traits: {"smithy.api#documentation" => "<p>The metadata of the AppInstanceBot.</p>"}))
    AppInstanceBotSummary.type = Types::AppInstanceBotSummary
    AppInstanceList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AppInstanceSummary)
    AppInstanceRetentionSettings.add_member(:channel_retention_settings, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelRetentionSettings, location_name: 'ChannelRetentionSettings', traits: {"smithy.api#documentation" => "<p>The length of time in days to retain the messages in a channel.</p>"}))
    AppInstanceRetentionSettings.type = Types::AppInstanceRetentionSettings
    AppInstanceSummary.add_member(:app_instance_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'AppInstanceArn', traits: {"smithy.api#documentation" => "<p>The <code>AppInstance</code> ARN.</p>"}))
    AppInstanceSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyResourceName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the <code>AppInstance</code>.</p>"}))
    AppInstanceSummary.add_member(:metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: Metadata, location_name: 'Metadata', traits: {"smithy.api#documentation" => "<p>The metadata of the <code>AppInstance</code>.</p>"}))
    AppInstanceSummary.type = Types::AppInstanceSummary
    AppInstanceUser.add_member(:app_instance_user_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'AppInstanceUserArn', traits: {"smithy.api#documentation" => "<p>The ARN of the <code>AppInstanceUser</code>.</p>"}))
    AppInstanceUser.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: UserName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the <code>AppInstanceUser</code>.</p>"}))
    AppInstanceUser.add_member(:metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: Metadata, location_name: 'Metadata', traits: {"smithy.api#documentation" => "<p>The metadata of the <code>AppInstanceUser</code>.</p>"}))
    AppInstanceUser.add_member(:created_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreatedTimestamp', traits: {"smithy.api#documentation" => "<p>The time at which the <code>AppInstanceUser</code> was created.</p>"}))
    AppInstanceUser.add_member(:last_updated_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastUpdatedTimestamp', traits: {"smithy.api#documentation" => "<p>The time at which the <code>AppInstanceUser</code> was last updated.</p>"}))
    AppInstanceUser.add_member(:expiration_settings, Smithy::Schema::Shapes::ShapeRef.new(shape: ExpirationSettings, location_name: 'ExpirationSettings', traits: {"smithy.api#documentation" => "<p>The interval after which an <code>AppInstanceUser</code> is automatically deleted.</p>"}))
    AppInstanceUser.type = Types::AppInstanceUser
    AppInstanceUserEndpoint.add_member(:app_instance_user_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'AppInstanceUserArn', traits: {"smithy.api#documentation" => "<p>The ARN of the <code>AppInstanceUser</code>.</p>"}))
    AppInstanceUserEndpoint.add_member(:endpoint_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String64, location_name: 'EndpointId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the <code>AppInstanceUserEndpoint</code>.</p>"}))
    AppInstanceUserEndpoint.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveString1600, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the <code>AppInstanceUserEndpoint</code>.</p>"}))
    AppInstanceUserEndpoint.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: AppInstanceUserEndpointType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The type of the <code>AppInstanceUserEndpoint</code>.</p>"}))
    AppInstanceUserEndpoint.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the resource to which the endpoint belongs.</p>"}))
    AppInstanceUserEndpoint.add_member(:endpoint_attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointAttributes, location_name: 'EndpointAttributes', traits: {"smithy.api#documentation" => "<p>The attributes of an <code>Endpoint</code>.</p>"}))
    AppInstanceUserEndpoint.add_member(:created_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreatedTimestamp', traits: {"smithy.api#documentation" => "<p>The time at which an <code>AppInstanceUserEndpoint</code> was created.</p>"}))
    AppInstanceUserEndpoint.add_member(:last_updated_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastUpdatedTimestamp', traits: {"smithy.api#documentation" => "<p>The time at which an <code>AppInstanceUserEndpoint</code> was last updated.</p>"}))
    AppInstanceUserEndpoint.add_member(:allow_messages, Smithy::Schema::Shapes::ShapeRef.new(shape: AllowMessages, location_name: 'AllowMessages', traits: {"smithy.api#documentation" => "<p>Boolean that controls whether the <code>AppInstanceUserEndpoint</code> is opted in to receive messages. <code>ALL</code> indicates the endpoint will receive all messages. \n         <code>NONE</code> indicates the endpoint will receive no messages.</p>"}))
    AppInstanceUserEndpoint.add_member(:endpoint_state, Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointState, location_name: 'EndpointState', traits: {"smithy.api#documentation" => "<p>A read-only field that represents the state of an <code>AppInstanceUserEndpoint</code>. Supported values:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>ACTIVE</code>: The <code>AppInstanceUserEndpoint</code> is active and able to receive messages. When <code>ACTIVE</code>, the <code>EndpointStatusReason</code> remains empty.</p>\n            </li>\n            <li>\n               <p>\n                  <code>INACTIVE</code>: The <code>AppInstanceUserEndpoint</code> is inactive and can't receive message. When <code>INACTIVE</code>, the corresponding reason will be \n            conveyed through <code>EndpointStatusReason</code>.</p>\n            </li>\n            <li>\n               <p>\n                  <code>INVALID_DEVICE_TOKEN</code> indicates that an <code>AppInstanceUserEndpoint</code> is <code>INACTIVE</code> due to invalid device token</p>\n            </li>\n            <li>\n               <p>\n                  <code>INVALID_PINPOINT_ARN</code> indicates that an <code>AppInstanceUserEndpoint</code> is <code>INACTIVE</code> due to an invalid pinpoint ARN that was input \n            through the <code>ResourceArn</code> field.</p>\n            </li>\n         </ul>"}))
    AppInstanceUserEndpoint.type = Types::AppInstanceUserEndpoint
    AppInstanceUserEndpointSummary.add_member(:app_instance_user_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'AppInstanceUserArn', traits: {"smithy.api#documentation" => "<p>The ARN of the <code>AppInstanceUser</code>.</p>"}))
    AppInstanceUserEndpointSummary.add_member(:endpoint_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String64, location_name: 'EndpointId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the <code>AppInstanceUserEndpoint</code>.</p>"}))
    AppInstanceUserEndpointSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveString1600, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the <code>AppInstanceUserEndpoint</code>.</p>"}))
    AppInstanceUserEndpointSummary.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: AppInstanceUserEndpointType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The type of the <code>AppInstanceUserEndpoint</code>.</p>"}))
    AppInstanceUserEndpointSummary.add_member(:allow_messages, Smithy::Schema::Shapes::ShapeRef.new(shape: AllowMessages, location_name: 'AllowMessages', traits: {"smithy.api#documentation" => "<p>BBoolean that controls whether the <code>AppInstanceUserEndpoint</code> is opted in to receive messages. <code>ALL</code> indicates the endpoint will receive all messages. \n         <code>NONE</code> indicates the endpoint will receive no messages.</p>"}))
    AppInstanceUserEndpointSummary.add_member(:endpoint_state, Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointState, location_name: 'EndpointState', traits: {"smithy.api#documentation" => "<p>A read-only field that represent the state of an <code>AppInstanceUserEndpoint</code>.</p>"}))
    AppInstanceUserEndpointSummary.type = Types::AppInstanceUserEndpointSummary
    AppInstanceUserEndpointSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AppInstanceUserEndpointSummary)
    AppInstanceUserEndpointType.add_member(:apns, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'APNS', traits: {"smithy.api#enumValue" => "APNS"}))
    AppInstanceUserEndpointType.add_member(:apns_sandbox, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'APNS_SANDBOX', traits: {"smithy.api#enumValue" => "APNS_SANDBOX"}))
    AppInstanceUserEndpointType.add_member(:gcm, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GCM', traits: {"smithy.api#enumValue" => "GCM"}))
    AppInstanceUserList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AppInstanceUserSummary)
    AppInstanceUserSummary.add_member(:app_instance_user_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'AppInstanceUserArn', traits: {"smithy.api#documentation" => "<p>The ARN of the <code>AppInstanceUser</code>.</p>"}))
    AppInstanceUserSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: UserName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of an <code>AppInstanceUser</code>.</p>"}))
    AppInstanceUserSummary.add_member(:metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: Metadata, location_name: 'Metadata', traits: {"smithy.api#documentation" => "<p>The metadata of the <code>AppInstanceUser</code>.</p>"}))
    AppInstanceUserSummary.type = Types::AppInstanceUserSummary
    BadRequestException.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'Code'))
    BadRequestException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    BadRequestException.type = Types::BadRequestException
    ChannelRetentionSettings.add_member(:retention_days, Smithy::Schema::Shapes::ShapeRef.new(shape: RetentionDays, location_name: 'RetentionDays', traits: {"smithy.api#documentation" => "<p>The time in days to retain the messages in a channel.</p>"}))
    ChannelRetentionSettings.type = Types::ChannelRetentionSettings
    Configuration.add_member(:lex, Smithy::Schema::Shapes::ShapeRef.new(shape: LexConfiguration, location_name: 'Lex', traits: {"smithy.api#documentation" => "<p>The configuration for an Amazon Lex V2 bot.</p>", "smithy.api#required" => {}}))
    Configuration.type = Types::Configuration
    ConflictException.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'Code'))
    ConflictException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    ConflictException.type = Types::ConflictException
    CreateAppInstanceAdminRequest.add_member(:app_instance_admin_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'AppInstanceAdminArn', traits: {"smithy.api#documentation" => "<p>The ARN of the administrator of the current <code>AppInstance</code>.</p>", "smithy.api#required" => {}}))
    CreateAppInstanceAdminRequest.add_member(:app_instance_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'AppInstanceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the <code>AppInstance</code>.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateAppInstanceAdminRequest.type = Types::CreateAppInstanceAdminRequest
    CreateAppInstanceAdminResponse.add_member(:app_instance_admin, Smithy::Schema::Shapes::ShapeRef.new(shape: Identity, location_name: 'AppInstanceAdmin', traits: {"smithy.api#documentation" => "<p>The ARN and name of the administrator, the ARN of the <code>AppInstance</code>, and the created and \n         last-updated timestamps. All timestamps use epoch milliseconds.</p>"}))
    CreateAppInstanceAdminResponse.add_member(:app_instance_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'AppInstanceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the of the admin for the <code>AppInstance</code>.</p>"}))
    CreateAppInstanceAdminResponse.type = Types::CreateAppInstanceAdminResponse
    CreateAppInstanceBotRequest.add_member(:app_instance_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'AppInstanceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the <code>AppInstance</code> request.</p>", "smithy.api#required" => {}}))
    CreateAppInstanceBotRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The user's name.</p>"}))
    CreateAppInstanceBotRequest.add_member(:metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: Metadata, location_name: 'Metadata', traits: {"smithy.api#documentation" => "<p>The request metadata. Limited to a 1KB string in UTF-8.</p>"}))
    CreateAppInstanceBotRequest.add_member(:client_request_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: 'ClientRequestToken', traits: {"smithy.api#documentation" => "<p>The unique ID for the client making the request. Use different tokens for different <code>AppInstanceBots</code>.</p>", "smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    CreateAppInstanceBotRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags assigned to the <code>AppInstanceBot</code>.</p>"}))
    CreateAppInstanceBotRequest.add_member(:configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: Configuration, location_name: 'Configuration', traits: {"smithy.api#documentation" => "<p>Configuration information about the Amazon Lex V2 V2 bot.</p>", "smithy.api#required" => {}}))
    CreateAppInstanceBotRequest.type = Types::CreateAppInstanceBotRequest
    CreateAppInstanceBotResponse.add_member(:app_instance_bot_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'AppInstanceBotArn', traits: {"smithy.api#documentation" => "<p>The ARN of the <code>AppinstanceBot</code>.</p>"}))
    CreateAppInstanceBotResponse.type = Types::CreateAppInstanceBotResponse
    CreateAppInstanceRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyResourceName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the <code>AppInstance</code>.</p>", "smithy.api#required" => {}}))
    CreateAppInstanceRequest.add_member(:metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: Metadata, location_name: 'Metadata', traits: {"smithy.api#documentation" => "<p>The metadata of the <code>AppInstance</code>. Limited to a 1KB string in UTF-8.</p>"}))
    CreateAppInstanceRequest.add_member(:client_request_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: 'ClientRequestToken', traits: {"smithy.api#documentation" => "<p>The unique ID of the request. Use different tokens to create different <code>AppInstances</code>.</p>", "smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    CreateAppInstanceRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>Tags assigned to the <code>AppInstance</code>.</p>"}))
    CreateAppInstanceRequest.type = Types::CreateAppInstanceRequest
    CreateAppInstanceResponse.add_member(:app_instance_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'AppInstanceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Number (ARN) of the <code>AppInstance</code>.</p>"}))
    CreateAppInstanceResponse.type = Types::CreateAppInstanceResponse
    CreateAppInstanceUserRequest.add_member(:app_instance_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'AppInstanceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the <code>AppInstance</code> request.</p>", "smithy.api#required" => {}}))
    CreateAppInstanceUserRequest.add_member(:app_instance_user_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UserId, location_name: 'AppInstanceUserId', traits: {"smithy.api#documentation" => "<p>The user ID of the <code>AppInstance</code>.</p>", "smithy.api#required" => {}}))
    CreateAppInstanceUserRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: UserName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The user's name.</p>", "smithy.api#required" => {}}))
    CreateAppInstanceUserRequest.add_member(:metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: Metadata, location_name: 'Metadata', traits: {"smithy.api#documentation" => "<p>The request's metadata. Limited to a 1KB string in UTF-8.</p>"}))
    CreateAppInstanceUserRequest.add_member(:client_request_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: 'ClientRequestToken', traits: {"smithy.api#documentation" => "<p>The unique ID of the request. Use different tokens to request additional <code>AppInstances</code>.</p>", "smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    CreateAppInstanceUserRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>Tags assigned to the <code>AppInstanceUser</code>.</p>"}))
    CreateAppInstanceUserRequest.add_member(:expiration_settings, Smithy::Schema::Shapes::ShapeRef.new(shape: ExpirationSettings, location_name: 'ExpirationSettings', traits: {"smithy.api#documentation" => "<p>Settings that control the interval after which the <code>AppInstanceUser</code> is automatically deleted.</p>"}))
    CreateAppInstanceUserRequest.type = Types::CreateAppInstanceUserRequest
    CreateAppInstanceUserResponse.add_member(:app_instance_user_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'AppInstanceUserArn', traits: {"smithy.api#documentation" => "<p>The user's ARN.</p>"}))
    CreateAppInstanceUserResponse.type = Types::CreateAppInstanceUserResponse
    DeleteAppInstanceAdminRequest.add_member(:app_instance_admin_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'AppInstanceAdminArn', traits: {"smithy.api#documentation" => "<p>The ARN of the <code>AppInstance</code>'s administrator.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAppInstanceAdminRequest.add_member(:app_instance_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'AppInstanceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the <code>AppInstance</code>.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAppInstanceAdminRequest.type = Types::DeleteAppInstanceAdminRequest
    DeleteAppInstanceBotRequest.add_member(:app_instance_bot_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'AppInstanceBotArn', traits: {"smithy.api#documentation" => "<p>The ARN of the <code>AppInstanceBot</code> being deleted.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAppInstanceBotRequest.type = Types::DeleteAppInstanceBotRequest
    DeleteAppInstanceRequest.add_member(:app_instance_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'AppInstanceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the <code>AppInstance</code>.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAppInstanceRequest.type = Types::DeleteAppInstanceRequest
    DeleteAppInstanceUserRequest.add_member(:app_instance_user_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'AppInstanceUserArn', traits: {"smithy.api#documentation" => "<p>The ARN of the user request being deleted.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAppInstanceUserRequest.type = Types::DeleteAppInstanceUserRequest
    DeregisterAppInstanceUserEndpointRequest.add_member(:app_instance_user_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'AppInstanceUserArn', traits: {"smithy.api#documentation" => "<p>The ARN of the <code>AppInstanceUser</code>.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeregisterAppInstanceUserEndpointRequest.add_member(:endpoint_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String64, location_name: 'EndpointId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the <code>AppInstanceUserEndpoint</code>.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeregisterAppInstanceUserEndpointRequest.type = Types::DeregisterAppInstanceUserEndpointRequest
    DescribeAppInstanceAdminRequest.add_member(:app_instance_admin_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'AppInstanceAdminArn', traits: {"smithy.api#documentation" => "<p>The ARN of the <code>AppInstanceAdmin</code>.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeAppInstanceAdminRequest.add_member(:app_instance_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'AppInstanceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the <code>AppInstance</code>.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeAppInstanceAdminRequest.type = Types::DescribeAppInstanceAdminRequest
    DescribeAppInstanceAdminResponse.add_member(:app_instance_admin, Smithy::Schema::Shapes::ShapeRef.new(shape: AppInstanceAdmin, location_name: 'AppInstanceAdmin', traits: {"smithy.api#documentation" => "<p>The ARN and name of the <code>AppInstanceUser</code>, the ARN of the\n            <code>AppInstance</code>, and the created and last-updated timestamps. All timestamps\n         use epoch milliseconds.</p>"}))
    DescribeAppInstanceAdminResponse.type = Types::DescribeAppInstanceAdminResponse
    DescribeAppInstanceBotRequest.add_member(:app_instance_bot_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'AppInstanceBotArn', traits: {"smithy.api#documentation" => "<p>The ARN of the <code>AppInstanceBot</code>.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeAppInstanceBotRequest.type = Types::DescribeAppInstanceBotRequest
    DescribeAppInstanceBotResponse.add_member(:app_instance_bot, Smithy::Schema::Shapes::ShapeRef.new(shape: AppInstanceBot, location_name: 'AppInstanceBot', traits: {"smithy.api#documentation" => "<p>The detials of the <code>AppInstanceBot</code>.</p>"}))
    DescribeAppInstanceBotResponse.type = Types::DescribeAppInstanceBotResponse
    DescribeAppInstanceRequest.add_member(:app_instance_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'AppInstanceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the <code>AppInstance</code>.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeAppInstanceRequest.type = Types::DescribeAppInstanceRequest
    DescribeAppInstanceResponse.add_member(:app_instance, Smithy::Schema::Shapes::ShapeRef.new(shape: AppInstance, location_name: 'AppInstance', traits: {"smithy.api#documentation" => "<p>The ARN, metadata, created and last-updated timestamps, and the name of the\n            <code>AppInstance</code>. All timestamps use epoch milliseconds.</p>"}))
    DescribeAppInstanceResponse.type = Types::DescribeAppInstanceResponse
    DescribeAppInstanceUserEndpointRequest.add_member(:app_instance_user_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String1600, location_name: 'AppInstanceUserArn', traits: {"smithy.api#documentation" => "<p>The ARN of the <code>AppInstanceUser</code>.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeAppInstanceUserEndpointRequest.add_member(:endpoint_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String64, location_name: 'EndpointId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the <code>AppInstanceUserEndpoint</code>.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeAppInstanceUserEndpointRequest.type = Types::DescribeAppInstanceUserEndpointRequest
    DescribeAppInstanceUserEndpointResponse.add_member(:app_instance_user_endpoint, Smithy::Schema::Shapes::ShapeRef.new(shape: AppInstanceUserEndpoint, location_name: 'AppInstanceUserEndpoint', traits: {"smithy.api#documentation" => "<p>The full details of an <code>AppInstanceUserEndpoint</code>: the <code>AppInstanceUserArn</code>, ID, name, type, resource ARN, attributes, \n         allow messages, state, and created and last updated timestamps. All timestamps use epoch milliseconds.</p>"}))
    DescribeAppInstanceUserEndpointResponse.type = Types::DescribeAppInstanceUserEndpointResponse
    DescribeAppInstanceUserRequest.add_member(:app_instance_user_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'AppInstanceUserArn', traits: {"smithy.api#documentation" => "<p>The ARN of the <code>AppInstanceUser</code>.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeAppInstanceUserRequest.type = Types::DescribeAppInstanceUserRequest
    DescribeAppInstanceUserResponse.add_member(:app_instance_user, Smithy::Schema::Shapes::ShapeRef.new(shape: AppInstanceUser, location_name: 'AppInstanceUser', traits: {"smithy.api#documentation" => "<p>The name of the <code>AppInstanceUser</code>.</p>"}))
    DescribeAppInstanceUserResponse.type = Types::DescribeAppInstanceUserResponse
    EndpointAttributes.add_member(:device_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptySensitiveString1600, location_name: 'DeviceToken', traits: {"smithy.api#documentation" => "<p>The device token for the GCM, APNS, and APNS_SANDBOX endpoint types.</p>", "smithy.api#required" => {}}))
    EndpointAttributes.add_member(:voip_device_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptySensitiveString1600, location_name: 'VoipDeviceToken', traits: {"smithy.api#documentation" => "<p>The VOIP device token for the APNS and APNS_SANDBOX endpoint types.</p>"}))
    EndpointAttributes.type = Types::EndpointAttributes
    EndpointState.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>Enum that indicates the Status of an <code>AppInstanceUserEndpoint</code>.</p>", "smithy.api#required" => {}}))
    EndpointState.add_member(:status_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointStatusReason, location_name: 'StatusReason', traits: {"smithy.api#documentation" => "<p>The reason for the <code>EndpointStatus</code>.</p>"}))
    EndpointState.type = Types::EndpointState
    EndpointStatus.add_member(:active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    EndpointStatus.add_member(:inactive, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INACTIVE', traits: {"smithy.api#enumValue" => "INACTIVE"}))
    EndpointStatusReason.add_member(:invalid_device_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_DEVICE_TOKEN', traits: {"smithy.api#enumValue" => "INVALID_DEVICE_TOKEN"}))
    EndpointStatusReason.add_member(:invalid_pinpoint_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_PINPOINT_ARN', traits: {"smithy.api#enumValue" => "INVALID_PINPOINT_ARN"}))
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
    ExpirationSettings.add_member(:expiration_days, Smithy::Schema::Shapes::ShapeRef.new(shape: ExpirationDays, location_name: 'ExpirationDays', traits: {"smithy.api#documentation" => "<p>The period in days after which an <code>AppInstanceUser</code> will be automatically deleted.</p>", "smithy.api#required" => {}}))
    ExpirationSettings.add_member(:expiration_criterion, Smithy::Schema::Shapes::ShapeRef.new(shape: ExpirationCriterion, location_name: 'ExpirationCriterion', traits: {"smithy.api#documentation" => "<p>Specifies the conditions under which an <code>AppInstanceUser</code> will expire.</p>", "smithy.api#required" => {}}))
    ExpirationSettings.type = Types::ExpirationSettings
    ForbiddenException.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'Code'))
    ForbiddenException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    ForbiddenException.type = Types::ForbiddenException
    GetAppInstanceRetentionSettingsRequest.add_member(:app_instance_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'AppInstanceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the <code>AppInstance</code>.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAppInstanceRetentionSettingsRequest.type = Types::GetAppInstanceRetentionSettingsRequest
    GetAppInstanceRetentionSettingsResponse.add_member(:app_instance_retention_settings, Smithy::Schema::Shapes::ShapeRef.new(shape: AppInstanceRetentionSettings, location_name: 'AppInstanceRetentionSettings', traits: {"smithy.api#documentation" => "<p>The retention settings for the <code>AppInstance</code>.</p>"}))
    GetAppInstanceRetentionSettingsResponse.add_member(:initiate_deletion_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'InitiateDeletionTimestamp', traits: {"smithy.api#documentation" => "<p>The timestamp representing the time at which the specified items are retained, in Epoch\n         Seconds.</p>"}))
    GetAppInstanceRetentionSettingsResponse.type = Types::GetAppInstanceRetentionSettingsResponse
    Identity.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The ARN in an Identity.</p>"}))
    Identity.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name in an Identity.</p>"}))
    Identity.type = Types::Identity
    InvokedBy.add_member(:standard_messages, Smithy::Schema::Shapes::ShapeRef.new(shape: StandardMessages, location_name: 'StandardMessages', traits: {"smithy.api#documentation" => "<p>Sets standard messages as the bot trigger. For standard messages:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>ALL</code>: The bot processes all standard messages.</p>\n            </li>\n            <li>\n               <p>\n                  <code>AUTO</code>: The bot responds to ALL messages when the channel has one other non-hidden member, and responds to MENTIONS when the \n            channel has more than one other non-hidden member.</p>\n            </li>\n            <li>\n               <p>\n                  <code>MENTIONS</code>: The bot processes all standard messages that have a message attribute with <code>CHIME.mentions</code> and a \n            value of the bot ARN.</p>\n            </li>\n            <li>\n               <p>\n                  <code>NONE</code>: The bot processes no standard messages.</p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    InvokedBy.add_member(:targeted_messages, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetedMessages, location_name: 'TargetedMessages', traits: {"smithy.api#documentation" => "<p>Sets targeted messages as the bot trigger. For targeted messages:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>ALL</code>: The bot processes all <code>TargetedMessages</code> sent to it. The bot then responds with a targeted message back to the sender.\n            </p>\n            </li>\n            <li>\n               <p>\n                  <code>NONE</code>: The bot processes no targeted messages.</p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    InvokedBy.type = Types::InvokedBy
    LexConfiguration.add_member(:responds_to, Smithy::Schema::Shapes::ShapeRef.new(shape: RespondsTo, location_name: 'RespondsTo', traits: {"smithy.api#documentation" => "<important>\n            <p>\n               <b>Deprecated</b>. Use <code>InvokedBy</code> instead.</p>\n         </important>\n         <p>Determines whether the Amazon Lex V2 bot responds to all standard messages. Control messages are not supported.</p>"}))
    LexConfiguration.add_member(:invoked_by, Smithy::Schema::Shapes::ShapeRef.new(shape: InvokedBy, location_name: 'InvokedBy', traits: {"smithy.api#documentation" => "<p>Specifies the type of message that triggers a bot.</p>"}))
    LexConfiguration.add_member(:lex_bot_alias_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: LexBotAliasArn, location_name: 'LexBotAliasArn', traits: {"smithy.api#documentation" => "<p>The ARN of the Amazon Lex V2 bot's alias. The ARN uses this format: \n         <code>arn:aws:lex:REGION:ACCOUNT:bot-alias/MYBOTID/MYBOTALIAS</code>\n         </p>", "smithy.api#required" => {}}))
    LexConfiguration.add_member(:locale_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LocaleId', traits: {"smithy.api#documentation" => "<p>Identifies the Amazon Lex V2 bot's language and locale. The string must match one of the \n         supported locales in Amazon Lex V2. All of the intents, slot types, and slots used in the bot must have the same \n         locale. For more information, see <a href=\"https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html\">Supported languages</a> in the <i>Amazon Lex V2 Developer Guide</i>.</p>", "smithy.api#required" => {}}))
    LexConfiguration.add_member(:welcome_intent, Smithy::Schema::Shapes::ShapeRef.new(shape: LexIntentName, location_name: 'WelcomeIntent', traits: {"smithy.api#documentation" => "<p>The name of the welcome intent configured in the Amazon Lex V2 bot.</p>"}))
    LexConfiguration.type = Types::LexConfiguration
    ListAppInstanceAdminsRequest.add_member(:app_instance_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'AppInstanceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the <code>AppInstance</code>.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListAppInstanceAdminsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of administrators that you want to return.</p>", "smithy.api#httpQuery" => "max-results"}))
    ListAppInstanceAdminsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token returned from previous API requests until the number of administrators is\n         reached.</p>", "smithy.api#httpQuery" => "next-token"}))
    ListAppInstanceAdminsRequest.type = Types::ListAppInstanceAdminsRequest
    ListAppInstanceAdminsResponse.add_member(:app_instance_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'AppInstanceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the <code>AppInstance</code>.</p>"}))
    ListAppInstanceAdminsResponse.add_member(:app_instance_admins, Smithy::Schema::Shapes::ShapeRef.new(shape: AppInstanceAdminList, location_name: 'AppInstanceAdmins', traits: {"smithy.api#documentation" => "<p>The information for each administrator.</p>"}))
    ListAppInstanceAdminsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token returned from previous API requests until the number of administrators is\n         reached.</p>"}))
    ListAppInstanceAdminsResponse.type = Types::ListAppInstanceAdminsResponse
    ListAppInstanceBotsRequest.add_member(:app_instance_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'AppInstanceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the <code>AppInstance</code>.</p>", "smithy.api#httpQuery" => "app-instance-arn", "smithy.api#required" => {}}))
    ListAppInstanceBotsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of requests to return.</p>", "smithy.api#httpQuery" => "max-results"}))
    ListAppInstanceBotsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token passed by previous API calls until all requested bots are returned.</p>", "smithy.api#httpQuery" => "next-token"}))
    ListAppInstanceBotsRequest.type = Types::ListAppInstanceBotsRequest
    ListAppInstanceBotsResponse.add_member(:app_instance_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'AppInstanceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the AppInstance.</p>"}))
    ListAppInstanceBotsResponse.add_member(:app_instance_bots, Smithy::Schema::Shapes::ShapeRef.new(shape: AppInstanceBotList, location_name: 'AppInstanceBots', traits: {"smithy.api#documentation" => "<p>The information for each requested <code>AppInstanceBot</code>.</p>"}))
    ListAppInstanceBotsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token passed by previous API calls until all requested bots are returned.</p>"}))
    ListAppInstanceBotsResponse.type = Types::ListAppInstanceBotsResponse
    ListAppInstanceUserEndpointsRequest.add_member(:app_instance_user_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveChimeArn, location_name: 'AppInstanceUserArn', traits: {"smithy.api#documentation" => "<p>The ARN of the <code>AppInstanceUser</code>.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListAppInstanceUserEndpointsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of endpoints that you want to return.</p>", "smithy.api#httpQuery" => "max-results"}))
    ListAppInstanceUserEndpointsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token passed by previous API calls until all requested endpoints are returned.</p>", "smithy.api#httpQuery" => "next-token"}))
    ListAppInstanceUserEndpointsRequest.type = Types::ListAppInstanceUserEndpointsRequest
    ListAppInstanceUserEndpointsResponse.add_member(:app_instance_user_endpoints, Smithy::Schema::Shapes::ShapeRef.new(shape: AppInstanceUserEndpointSummaryList, location_name: 'AppInstanceUserEndpoints', traits: {"smithy.api#documentation" => "<p>The information for each requested <code>AppInstanceUserEndpoint</code>.</p>"}))
    ListAppInstanceUserEndpointsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token passed by previous API calls until all requested endpoints are returned.</p>"}))
    ListAppInstanceUserEndpointsResponse.type = Types::ListAppInstanceUserEndpointsResponse
    ListAppInstanceUsersRequest.add_member(:app_instance_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'AppInstanceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the <code>AppInstance</code>.</p>", "smithy.api#httpQuery" => "app-instance-arn", "smithy.api#required" => {}}))
    ListAppInstanceUsersRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of requests that you want returned.</p>", "smithy.api#httpQuery" => "max-results"}))
    ListAppInstanceUsersRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token passed by previous API calls until all requested users are returned.</p>", "smithy.api#httpQuery" => "next-token"}))
    ListAppInstanceUsersRequest.type = Types::ListAppInstanceUsersRequest
    ListAppInstanceUsersResponse.add_member(:app_instance_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'AppInstanceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the <code>AppInstance</code>.</p>"}))
    ListAppInstanceUsersResponse.add_member(:app_instance_users, Smithy::Schema::Shapes::ShapeRef.new(shape: AppInstanceUserList, location_name: 'AppInstanceUsers', traits: {"smithy.api#documentation" => "<p>The information for each requested <code>AppInstanceUser</code>.</p>"}))
    ListAppInstanceUsersResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token passed by previous API calls until all requested users are returned.</p>"}))
    ListAppInstanceUsersResponse.type = Types::ListAppInstanceUsersResponse
    ListAppInstancesRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of <code>AppInstance</code>s that you want to return.</p>", "smithy.api#httpQuery" => "max-results"}))
    ListAppInstancesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token passed by previous API requests until you reach the maximum number of\n            <code>AppInstances</code>.</p>", "smithy.api#httpQuery" => "next-token"}))
    ListAppInstancesRequest.type = Types::ListAppInstancesRequest
    ListAppInstancesResponse.add_member(:app_instances, Smithy::Schema::Shapes::ShapeRef.new(shape: AppInstanceList, location_name: 'AppInstances', traits: {"smithy.api#documentation" => "<p>The information for each <code>AppInstance</code>.</p>"}))
    ListAppInstancesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token passed by previous API requests until the maximum number of\n            <code>AppInstance</code>s is reached.</p>"}))
    ListAppInstancesResponse.type = Types::ListAppInstancesResponse
    ListTagsForResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'ResourceARN', traits: {"smithy.api#documentation" => "<p>The ARN of the resource.</p>", "smithy.api#httpQuery" => "arn", "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tag key-value pairs.</p>"}))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    NotFoundException.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'Code'))
    NotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    NotFoundException.type = Types::NotFoundException
    PutAppInstanceRetentionSettingsRequest.add_member(:app_instance_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'AppInstanceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the <code>AppInstance</code>.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutAppInstanceRetentionSettingsRequest.add_member(:app_instance_retention_settings, Smithy::Schema::Shapes::ShapeRef.new(shape: AppInstanceRetentionSettings, location_name: 'AppInstanceRetentionSettings', traits: {"smithy.api#documentation" => "<p>The time in days to retain data. Data type: number.</p>", "smithy.api#required" => {}}))
    PutAppInstanceRetentionSettingsRequest.type = Types::PutAppInstanceRetentionSettingsRequest
    PutAppInstanceRetentionSettingsResponse.add_member(:app_instance_retention_settings, Smithy::Schema::Shapes::ShapeRef.new(shape: AppInstanceRetentionSettings, location_name: 'AppInstanceRetentionSettings', traits: {"smithy.api#documentation" => "<p>The time in days to retain data. Data type: number.</p>"}))
    PutAppInstanceRetentionSettingsResponse.add_member(:initiate_deletion_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'InitiateDeletionTimestamp', traits: {"smithy.api#documentation" => "<p>The time at which the API deletes data.</p>"}))
    PutAppInstanceRetentionSettingsResponse.type = Types::PutAppInstanceRetentionSettingsResponse
    PutAppInstanceUserExpirationSettingsRequest.add_member(:app_instance_user_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'AppInstanceUserArn', traits: {"smithy.api#documentation" => "<p>The ARN of the <code>AppInstanceUser</code>.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutAppInstanceUserExpirationSettingsRequest.add_member(:expiration_settings, Smithy::Schema::Shapes::ShapeRef.new(shape: ExpirationSettings, location_name: 'ExpirationSettings', traits: {"smithy.api#documentation" => "<p>Settings that control the interval after which an <code>AppInstanceUser</code> is automatically deleted.</p>"}))
    PutAppInstanceUserExpirationSettingsRequest.type = Types::PutAppInstanceUserExpirationSettingsRequest
    PutAppInstanceUserExpirationSettingsResponse.add_member(:app_instance_user_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'AppInstanceUserArn', traits: {"smithy.api#documentation" => "<p>The ARN of the <code>AppInstanceUser</code>.</p>"}))
    PutAppInstanceUserExpirationSettingsResponse.add_member(:expiration_settings, Smithy::Schema::Shapes::ShapeRef.new(shape: ExpirationSettings, location_name: 'ExpirationSettings', traits: {"smithy.api#documentation" => "<p>Settings that control the interval after which an <code>AppInstanceUser</code> is automatically deleted.</p>"}))
    PutAppInstanceUserExpirationSettingsResponse.type = Types::PutAppInstanceUserExpirationSettingsResponse
    RegisterAppInstanceUserEndpointRequest.add_member(:app_instance_user_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveChimeArn, location_name: 'AppInstanceUserArn', traits: {"smithy.api#documentation" => "<p>The ARN of the <code>AppInstanceUser</code>.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RegisterAppInstanceUserEndpointRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveString1600, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the <code>AppInstanceUserEndpoint</code>.</p>"}))
    RegisterAppInstanceUserEndpointRequest.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: AppInstanceUserEndpointType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The type of the <code>AppInstanceUserEndpoint</code>. Supported types:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>APNS</code>: The mobile notification service for an Apple device.</p>\n            </li>\n            <li>\n               <p>\n                  <code>APNS_SANDBOX</code>: The sandbox environment of the mobile notification service for an Apple device.</p>\n            </li>\n            <li>\n               <p>\n                  <code>GCM</code>: The mobile notification service for an Android device.</p>\n            </li>\n         </ul>\n         <p>Populate the <code>ResourceArn</code> value of each type as <code>PinpointAppArn</code>.</p>", "smithy.api#required" => {}}))
    RegisterAppInstanceUserEndpointRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the resource to which the endpoint belongs.</p>", "smithy.api#required" => {}}))
    RegisterAppInstanceUserEndpointRequest.add_member(:endpoint_attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointAttributes, location_name: 'EndpointAttributes', traits: {"smithy.api#documentation" => "<p>The attributes of an <code>Endpoint</code>.</p>", "smithy.api#required" => {}}))
    RegisterAppInstanceUserEndpointRequest.add_member(:client_request_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: 'ClientRequestToken', traits: {"smithy.api#documentation" => "<p>The unique ID assigned to the request. Use different tokens to register other endpoints.</p>", "smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    RegisterAppInstanceUserEndpointRequest.add_member(:allow_messages, Smithy::Schema::Shapes::ShapeRef.new(shape: AllowMessages, location_name: 'AllowMessages', traits: {"smithy.api#documentation" => "<p>Boolean that controls whether the AppInstanceUserEndpoint is opted in to receive messages. <code>ALL</code> indicates the endpoint receives all messages. \n         <code>NONE</code> indicates the endpoint receives no messages.</p>"}))
    RegisterAppInstanceUserEndpointRequest.type = Types::RegisterAppInstanceUserEndpointRequest
    RegisterAppInstanceUserEndpointResponse.add_member(:app_instance_user_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'AppInstanceUserArn', traits: {"smithy.api#documentation" => "<p>The ARN of the <code>AppInstanceUser</code>.</p>"}))
    RegisterAppInstanceUserEndpointResponse.add_member(:endpoint_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String64, location_name: 'EndpointId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the <code>AppInstanceUserEndpoint</code>.</p>"}))
    RegisterAppInstanceUserEndpointResponse.type = Types::RegisterAppInstanceUserEndpointResponse
    ResourceLimitExceededException.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'Code'))
    ResourceLimitExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    ResourceLimitExceededException.type = Types::ResourceLimitExceededException
    RespondsTo.add_member(:standard_messages, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STANDARD_MESSAGES', traits: {"smithy.api#enumValue" => "STANDARD_MESSAGES"}))
    ServiceFailureException.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'Code'))
    ServiceFailureException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    ServiceFailureException.type = Types::ServiceFailureException
    ServiceUnavailableException.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'Code'))
    ServiceUnavailableException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    ServiceUnavailableException.type = Types::ServiceUnavailableException
    StandardMessages.add_member(:auto, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AUTO', traits: {"smithy.api#enumValue" => "AUTO"}))
    StandardMessages.add_member(:all, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ALL', traits: {"smithy.api#enumValue" => "ALL"}))
    StandardMessages.add_member(:mentions, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MENTIONS', traits: {"smithy.api#enumValue" => "MENTIONS"}))
    StandardMessages.add_member(:none, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NONE', traits: {"smithy.api#enumValue" => "NONE"}))
    Tag.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey, location_name: 'Key', traits: {"smithy.api#documentation" => "<p>The key in a tag.</p>", "smithy.api#required" => {}}))
    Tag.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue, location_name: 'Value', traits: {"smithy.api#documentation" => "<p>The value in a tag.</p>", "smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagKeyList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Tag)
    TagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'ResourceARN', traits: {"smithy.api#documentation" => "<p>The resource ARN.</p>", "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tag key-value pairs.</p>", "smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TargetedMessages.add_member(:all, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ALL', traits: {"smithy.api#enumValue" => "ALL"}))
    TargetedMessages.add_member(:none, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NONE', traits: {"smithy.api#enumValue" => "NONE"}))
    ThrottledClientException.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'Code'))
    ThrottledClientException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    ThrottledClientException.type = Types::ThrottledClientException
    UnauthorizedClientException.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'Code'))
    UnauthorizedClientException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    UnauthorizedClientException.type = Types::UnauthorizedClientException
    UntagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'ResourceARN', traits: {"smithy.api#documentation" => "<p>The resource ARN.</p>", "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'TagKeys', traits: {"smithy.api#documentation" => "<p>The tag keys.</p>", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UpdateAppInstanceBotRequest.add_member(:app_instance_bot_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'AppInstanceBotArn', traits: {"smithy.api#documentation" => "<p>The ARN of the <code>AppInstanceBot</code>.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateAppInstanceBotRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the <code>AppInstanceBot</code>.</p>", "smithy.api#required" => {}}))
    UpdateAppInstanceBotRequest.add_member(:metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: Metadata, location_name: 'Metadata', traits: {"smithy.api#documentation" => "<p>The metadata of the <code>AppInstanceBot</code>.</p>", "smithy.api#required" => {}}))
    UpdateAppInstanceBotRequest.add_member(:configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: Configuration, location_name: 'Configuration', traits: {"smithy.api#documentation" => "<p>The configuration for the bot update.</p>"}))
    UpdateAppInstanceBotRequest.type = Types::UpdateAppInstanceBotRequest
    UpdateAppInstanceBotResponse.add_member(:app_instance_bot_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'AppInstanceBotArn', traits: {"smithy.api#documentation" => "<p>The ARN of the <code>AppInstanceBot</code>.</p>"}))
    UpdateAppInstanceBotResponse.type = Types::UpdateAppInstanceBotResponse
    UpdateAppInstanceRequest.add_member(:app_instance_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'AppInstanceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the <code>AppInstance</code>.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateAppInstanceRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyResourceName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name that you want to change.</p>", "smithy.api#required" => {}}))
    UpdateAppInstanceRequest.add_member(:metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: Metadata, location_name: 'Metadata', traits: {"smithy.api#documentation" => "<p>The metadata that you want to change.</p>", "smithy.api#required" => {}}))
    UpdateAppInstanceRequest.type = Types::UpdateAppInstanceRequest
    UpdateAppInstanceResponse.add_member(:app_instance_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'AppInstanceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the <code>AppInstance</code>.</p>"}))
    UpdateAppInstanceResponse.type = Types::UpdateAppInstanceResponse
    UpdateAppInstanceUserEndpointRequest.add_member(:app_instance_user_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'AppInstanceUserArn', traits: {"smithy.api#documentation" => "<p>The ARN of the <code>AppInstanceUser</code>.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateAppInstanceUserEndpointRequest.add_member(:endpoint_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String64, location_name: 'EndpointId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the <code>AppInstanceUserEndpoint</code>.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateAppInstanceUserEndpointRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveString1600, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the <code>AppInstanceUserEndpoint</code>.</p>"}))
    UpdateAppInstanceUserEndpointRequest.add_member(:allow_messages, Smithy::Schema::Shapes::ShapeRef.new(shape: AllowMessages, location_name: 'AllowMessages', traits: {"smithy.api#documentation" => "<p>Boolean that controls whether the <code>AppInstanceUserEndpoint</code> is opted in to receive messages. <code>ALL</code> indicates the endpoint will receive all messages. \n         <code>NONE</code> indicates the endpoint will receive no messages.</p>"}))
    UpdateAppInstanceUserEndpointRequest.type = Types::UpdateAppInstanceUserEndpointRequest
    UpdateAppInstanceUserEndpointResponse.add_member(:app_instance_user_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'AppInstanceUserArn', traits: {"smithy.api#documentation" => "<p>The ARN of the <code>AppInstanceUser</code>.</p>"}))
    UpdateAppInstanceUserEndpointResponse.add_member(:endpoint_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String64, location_name: 'EndpointId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the <code>AppInstanceUserEndpoint</code>.</p>"}))
    UpdateAppInstanceUserEndpointResponse.type = Types::UpdateAppInstanceUserEndpointResponse
    UpdateAppInstanceUserRequest.add_member(:app_instance_user_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'AppInstanceUserArn', traits: {"smithy.api#documentation" => "<p>The ARN of the <code>AppInstanceUser</code>.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateAppInstanceUserRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: UserName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the <code>AppInstanceUser</code>.</p>", "smithy.api#required" => {}}))
    UpdateAppInstanceUserRequest.add_member(:metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: Metadata, location_name: 'Metadata', traits: {"smithy.api#documentation" => "<p>The metadata of the <code>AppInstanceUser</code>.</p>", "smithy.api#required" => {}}))
    UpdateAppInstanceUserRequest.type = Types::UpdateAppInstanceUserRequest
    UpdateAppInstanceUserResponse.add_member(:app_instance_user_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeArn, location_name: 'AppInstanceUserArn', traits: {"smithy.api#documentation" => "<p>The ARN of the <code>AppInstanceUser</code>.</p>"}))
    UpdateAppInstanceUserResponse.type = Types::UpdateAppInstanceUserResponse

    ChimeIdentityService = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.chimesdkidentity#ChimeIdentityService"
      service.name = "ChimeIdentityService"
      service.version = "2021-04-20"
      service.traits = {"aws.api#service" => {"sdkId" => "Chime SDK Identity", "arnNamespace" => "chime", "cloudFormationName" => "ChimeSDKIdentity", "cloudTrailEventSource" => "chimesdkidentity.amazonaws.com", "endpointPrefix" => "identity-chime"}, "aws.auth#sigv4" => {"name" => "chime"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "Amazon Chime SDK Identity"}
      service.add_operation(:create_app_instance, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkidentity#CreateAppInstance"
        operation.name = "CreateAppInstance"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAppInstanceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAppInstanceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/app-instances", "code" => 201}}
      end)
      service.add_operation(:create_app_instance_admin, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkidentity#CreateAppInstanceAdmin"
        operation.name = "CreateAppInstanceAdmin"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAppInstanceAdminRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAppInstanceAdminResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/app-instances/{AppInstanceArn}/admins", "code" => 201}}
      end)
      service.add_operation(:create_app_instance_bot, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkidentity#CreateAppInstanceBot"
        operation.name = "CreateAppInstanceBot"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAppInstanceBotRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAppInstanceBotResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/app-instance-bots", "code" => 201}}
      end)
      service.add_operation(:create_app_instance_user, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkidentity#CreateAppInstanceUser"
        operation.name = "CreateAppInstanceUser"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAppInstanceUserRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAppInstanceUserResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/app-instance-users", "code" => 201}}
      end)
      service.add_operation(:delete_app_instance, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkidentity#DeleteAppInstance"
        operation.name = "DeleteAppInstance"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAppInstanceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/app-instances/{AppInstanceArn}", "code" => 204}}
      end)
      service.add_operation(:delete_app_instance_admin, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkidentity#DeleteAppInstanceAdmin"
        operation.name = "DeleteAppInstanceAdmin"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAppInstanceAdminRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/app-instances/{AppInstanceArn}/admins/{AppInstanceAdminArn}", "code" => 204}}
      end)
      service.add_operation(:delete_app_instance_bot, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkidentity#DeleteAppInstanceBot"
        operation.name = "DeleteAppInstanceBot"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAppInstanceBotRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/app-instance-bots/{AppInstanceBotArn}", "code" => 204}}
      end)
      service.add_operation(:delete_app_instance_user, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkidentity#DeleteAppInstanceUser"
        operation.name = "DeleteAppInstanceUser"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAppInstanceUserRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/app-instance-users/{AppInstanceUserArn}", "code" => 204}}
      end)
      service.add_operation(:deregister_app_instance_user_endpoint, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkidentity#DeregisterAppInstanceUserEndpoint"
        operation.name = "DeregisterAppInstanceUserEndpoint"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeregisterAppInstanceUserEndpointRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/app-instance-users/{AppInstanceUserArn}/endpoints/{EndpointId}", "code" => 204}}
      end)
      service.add_operation(:describe_app_instance, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkidentity#DescribeAppInstance"
        operation.name = "DescribeAppInstance"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAppInstanceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAppInstanceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/app-instances/{AppInstanceArn}", "code" => 200}}
      end)
      service.add_operation(:describe_app_instance_admin, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkidentity#DescribeAppInstanceAdmin"
        operation.name = "DescribeAppInstanceAdmin"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAppInstanceAdminRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAppInstanceAdminResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/app-instances/{AppInstanceArn}/admins/{AppInstanceAdminArn}", "code" => 200}}
      end)
      service.add_operation(:describe_app_instance_bot, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkidentity#DescribeAppInstanceBot"
        operation.name = "DescribeAppInstanceBot"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAppInstanceBotRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAppInstanceBotResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/app-instance-bots/{AppInstanceBotArn}", "code" => 200}}
      end)
      service.add_operation(:describe_app_instance_user, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkidentity#DescribeAppInstanceUser"
        operation.name = "DescribeAppInstanceUser"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAppInstanceUserRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAppInstanceUserResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/app-instance-users/{AppInstanceUserArn}", "code" => 200}}
      end)
      service.add_operation(:describe_app_instance_user_endpoint, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkidentity#DescribeAppInstanceUserEndpoint"
        operation.name = "DescribeAppInstanceUserEndpoint"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAppInstanceUserEndpointRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAppInstanceUserEndpointResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/app-instance-users/{AppInstanceUserArn}/endpoints/{EndpointId}", "code" => 200}}
      end)
      service.add_operation(:get_app_instance_retention_settings, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkidentity#GetAppInstanceRetentionSettings"
        operation.name = "GetAppInstanceRetentionSettings"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAppInstanceRetentionSettingsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAppInstanceRetentionSettingsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/app-instances/{AppInstanceArn}/retention-settings", "code" => 200}}
      end)
      service.add_operation(:list_app_instance_admins, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkidentity#ListAppInstanceAdmins"
        operation.name = "ListAppInstanceAdmins"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAppInstanceAdminsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAppInstanceAdminsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/app-instances/{AppInstanceArn}/admins", "code" => 200}}
        operation[:paginator] = Paginators::ListAppInstanceAdmins.new
      end)
      service.add_operation(:list_app_instance_bots, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkidentity#ListAppInstanceBots"
        operation.name = "ListAppInstanceBots"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAppInstanceBotsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAppInstanceBotsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/app-instance-bots", "code" => 200}}
        operation[:paginator] = Paginators::ListAppInstanceBots.new
      end)
      service.add_operation(:list_app_instance_user_endpoints, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkidentity#ListAppInstanceUserEndpoints"
        operation.name = "ListAppInstanceUserEndpoints"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAppInstanceUserEndpointsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAppInstanceUserEndpointsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/app-instance-users/{AppInstanceUserArn}/endpoints", "code" => 200}}
        operation[:paginator] = Paginators::ListAppInstanceUserEndpoints.new
      end)
      service.add_operation(:list_app_instance_users, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkidentity#ListAppInstanceUsers"
        operation.name = "ListAppInstanceUsers"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAppInstanceUsersRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAppInstanceUsersResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/app-instance-users", "code" => 200}}
        operation[:paginator] = Paginators::ListAppInstanceUsers.new
      end)
      service.add_operation(:list_app_instances, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkidentity#ListAppInstances"
        operation.name = "ListAppInstances"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAppInstancesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAppInstancesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/app-instances", "code" => 200}}
        operation[:paginator] = Paginators::ListAppInstances.new
      end)
      service.add_operation(:list_tags_for_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkidentity#ListTagsForResource"
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
      service.add_operation(:put_app_instance_retention_settings, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkidentity#PutAppInstanceRetentionSettings"
        operation.name = "PutAppInstanceRetentionSettings"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutAppInstanceRetentionSettingsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutAppInstanceRetentionSettingsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/app-instances/{AppInstanceArn}/retention-settings", "code" => 200}}
      end)
      service.add_operation(:put_app_instance_user_expiration_settings, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkidentity#PutAppInstanceUserExpirationSettings"
        operation.name = "PutAppInstanceUserExpirationSettings"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutAppInstanceUserExpirationSettingsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutAppInstanceUserExpirationSettingsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/app-instance-users/{AppInstanceUserArn}/expiration-settings", "code" => 200}}
      end)
      service.add_operation(:register_app_instance_user_endpoint, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkidentity#RegisterAppInstanceUserEndpoint"
        operation.name = "RegisterAppInstanceUserEndpoint"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: RegisterAppInstanceUserEndpointRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: RegisterAppInstanceUserEndpointResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/app-instance-users/{AppInstanceUserArn}/endpoints", "code" => 201}}
      end)
      service.add_operation(:tag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkidentity#TagResource"
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
        operation.id = "com.amazonaws.chimesdkidentity#UntagResource"
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
      service.add_operation(:update_app_instance, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkidentity#UpdateAppInstance"
        operation.name = "UpdateAppInstance"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAppInstanceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAppInstanceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/app-instances/{AppInstanceArn}", "code" => 200}}
      end)
      service.add_operation(:update_app_instance_bot, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkidentity#UpdateAppInstanceBot"
        operation.name = "UpdateAppInstanceBot"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAppInstanceBotRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAppInstanceBotResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/app-instance-bots/{AppInstanceBotArn}", "code" => 200}}
      end)
      service.add_operation(:update_app_instance_user, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkidentity#UpdateAppInstanceUser"
        operation.name = "UpdateAppInstanceUser"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAppInstanceUserRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAppInstanceUserResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/app-instance-users/{AppInstanceUserArn}", "code" => 200}}
      end)
      service.add_operation(:update_app_instance_user_endpoint, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkidentity#UpdateAppInstanceUserEndpoint"
        operation.name = "UpdateAppInstanceUserEndpoint"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAppInstanceUserEndpointRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAppInstanceUserEndpointResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/app-instance-users/{AppInstanceUserArn}/endpoints/{EndpointId}", "code" => 200}}
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
