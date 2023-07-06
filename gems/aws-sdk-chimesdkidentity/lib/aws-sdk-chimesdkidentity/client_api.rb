# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::ChimeSDKIdentity
  # @api private
  module ClientApi

    include Seahorse::Model

    AllowMessages = Shapes::StringShape.new(name: 'AllowMessages')
    AppInstance = Shapes::StructureShape.new(name: 'AppInstance')
    AppInstanceAdmin = Shapes::StructureShape.new(name: 'AppInstanceAdmin')
    AppInstanceAdminList = Shapes::ListShape.new(name: 'AppInstanceAdminList')
    AppInstanceAdminSummary = Shapes::StructureShape.new(name: 'AppInstanceAdminSummary')
    AppInstanceBot = Shapes::StructureShape.new(name: 'AppInstanceBot')
    AppInstanceBotList = Shapes::ListShape.new(name: 'AppInstanceBotList')
    AppInstanceBotSummary = Shapes::StructureShape.new(name: 'AppInstanceBotSummary')
    AppInstanceList = Shapes::ListShape.new(name: 'AppInstanceList')
    AppInstanceRetentionSettings = Shapes::StructureShape.new(name: 'AppInstanceRetentionSettings')
    AppInstanceSummary = Shapes::StructureShape.new(name: 'AppInstanceSummary')
    AppInstanceUser = Shapes::StructureShape.new(name: 'AppInstanceUser')
    AppInstanceUserEndpoint = Shapes::StructureShape.new(name: 'AppInstanceUserEndpoint')
    AppInstanceUserEndpointSummary = Shapes::StructureShape.new(name: 'AppInstanceUserEndpointSummary')
    AppInstanceUserEndpointSummaryList = Shapes::ListShape.new(name: 'AppInstanceUserEndpointSummaryList')
    AppInstanceUserEndpointType = Shapes::StringShape.new(name: 'AppInstanceUserEndpointType')
    AppInstanceUserList = Shapes::ListShape.new(name: 'AppInstanceUserList')
    AppInstanceUserSummary = Shapes::StructureShape.new(name: 'AppInstanceUserSummary')
    BadRequestException = Shapes::StructureShape.new(name: 'BadRequestException')
    ChannelRetentionSettings = Shapes::StructureShape.new(name: 'ChannelRetentionSettings')
    ChimeArn = Shapes::StringShape.new(name: 'ChimeArn')
    ClientRequestToken = Shapes::StringShape.new(name: 'ClientRequestToken')
    Configuration = Shapes::StructureShape.new(name: 'Configuration')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    CreateAppInstanceAdminRequest = Shapes::StructureShape.new(name: 'CreateAppInstanceAdminRequest')
    CreateAppInstanceAdminResponse = Shapes::StructureShape.new(name: 'CreateAppInstanceAdminResponse')
    CreateAppInstanceBotRequest = Shapes::StructureShape.new(name: 'CreateAppInstanceBotRequest')
    CreateAppInstanceBotResponse = Shapes::StructureShape.new(name: 'CreateAppInstanceBotResponse')
    CreateAppInstanceRequest = Shapes::StructureShape.new(name: 'CreateAppInstanceRequest')
    CreateAppInstanceResponse = Shapes::StructureShape.new(name: 'CreateAppInstanceResponse')
    CreateAppInstanceUserRequest = Shapes::StructureShape.new(name: 'CreateAppInstanceUserRequest')
    CreateAppInstanceUserResponse = Shapes::StructureShape.new(name: 'CreateAppInstanceUserResponse')
    DeleteAppInstanceAdminRequest = Shapes::StructureShape.new(name: 'DeleteAppInstanceAdminRequest')
    DeleteAppInstanceBotRequest = Shapes::StructureShape.new(name: 'DeleteAppInstanceBotRequest')
    DeleteAppInstanceRequest = Shapes::StructureShape.new(name: 'DeleteAppInstanceRequest')
    DeleteAppInstanceUserRequest = Shapes::StructureShape.new(name: 'DeleteAppInstanceUserRequest')
    DeregisterAppInstanceUserEndpointRequest = Shapes::StructureShape.new(name: 'DeregisterAppInstanceUserEndpointRequest')
    DescribeAppInstanceAdminRequest = Shapes::StructureShape.new(name: 'DescribeAppInstanceAdminRequest')
    DescribeAppInstanceAdminResponse = Shapes::StructureShape.new(name: 'DescribeAppInstanceAdminResponse')
    DescribeAppInstanceBotRequest = Shapes::StructureShape.new(name: 'DescribeAppInstanceBotRequest')
    DescribeAppInstanceBotResponse = Shapes::StructureShape.new(name: 'DescribeAppInstanceBotResponse')
    DescribeAppInstanceRequest = Shapes::StructureShape.new(name: 'DescribeAppInstanceRequest')
    DescribeAppInstanceResponse = Shapes::StructureShape.new(name: 'DescribeAppInstanceResponse')
    DescribeAppInstanceUserEndpointRequest = Shapes::StructureShape.new(name: 'DescribeAppInstanceUserEndpointRequest')
    DescribeAppInstanceUserEndpointResponse = Shapes::StructureShape.new(name: 'DescribeAppInstanceUserEndpointResponse')
    DescribeAppInstanceUserRequest = Shapes::StructureShape.new(name: 'DescribeAppInstanceUserRequest')
    DescribeAppInstanceUserResponse = Shapes::StructureShape.new(name: 'DescribeAppInstanceUserResponse')
    EndpointAttributes = Shapes::StructureShape.new(name: 'EndpointAttributes')
    EndpointState = Shapes::StructureShape.new(name: 'EndpointState')
    EndpointStatus = Shapes::StringShape.new(name: 'EndpointStatus')
    EndpointStatusReason = Shapes::StringShape.new(name: 'EndpointStatusReason')
    ErrorCode = Shapes::StringShape.new(name: 'ErrorCode')
    ExpirationCriterion = Shapes::StringShape.new(name: 'ExpirationCriterion')
    ExpirationDays = Shapes::IntegerShape.new(name: 'ExpirationDays')
    ExpirationSettings = Shapes::StructureShape.new(name: 'ExpirationSettings')
    ForbiddenException = Shapes::StructureShape.new(name: 'ForbiddenException')
    GetAppInstanceRetentionSettingsRequest = Shapes::StructureShape.new(name: 'GetAppInstanceRetentionSettingsRequest')
    GetAppInstanceRetentionSettingsResponse = Shapes::StructureShape.new(name: 'GetAppInstanceRetentionSettingsResponse')
    Identity = Shapes::StructureShape.new(name: 'Identity')
    InvokedBy = Shapes::StructureShape.new(name: 'InvokedBy')
    LexBotAliasArn = Shapes::StringShape.new(name: 'LexBotAliasArn')
    LexConfiguration = Shapes::StructureShape.new(name: 'LexConfiguration')
    LexIntentName = Shapes::StringShape.new(name: 'LexIntentName')
    ListAppInstanceAdminsRequest = Shapes::StructureShape.new(name: 'ListAppInstanceAdminsRequest')
    ListAppInstanceAdminsResponse = Shapes::StructureShape.new(name: 'ListAppInstanceAdminsResponse')
    ListAppInstanceBotsRequest = Shapes::StructureShape.new(name: 'ListAppInstanceBotsRequest')
    ListAppInstanceBotsResponse = Shapes::StructureShape.new(name: 'ListAppInstanceBotsResponse')
    ListAppInstanceUserEndpointsRequest = Shapes::StructureShape.new(name: 'ListAppInstanceUserEndpointsRequest')
    ListAppInstanceUserEndpointsResponse = Shapes::StructureShape.new(name: 'ListAppInstanceUserEndpointsResponse')
    ListAppInstanceUsersRequest = Shapes::StructureShape.new(name: 'ListAppInstanceUsersRequest')
    ListAppInstanceUsersResponse = Shapes::StructureShape.new(name: 'ListAppInstanceUsersResponse')
    ListAppInstancesRequest = Shapes::StructureShape.new(name: 'ListAppInstancesRequest')
    ListAppInstancesResponse = Shapes::StructureShape.new(name: 'ListAppInstancesResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    Metadata = Shapes::StringShape.new(name: 'Metadata')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    NonEmptyResourceName = Shapes::StringShape.new(name: 'NonEmptyResourceName')
    NonEmptySensitiveString1600 = Shapes::StringShape.new(name: 'NonEmptySensitiveString1600')
    NotFoundException = Shapes::StructureShape.new(name: 'NotFoundException')
    PutAppInstanceRetentionSettingsRequest = Shapes::StructureShape.new(name: 'PutAppInstanceRetentionSettingsRequest')
    PutAppInstanceRetentionSettingsResponse = Shapes::StructureShape.new(name: 'PutAppInstanceRetentionSettingsResponse')
    PutAppInstanceUserExpirationSettingsRequest = Shapes::StructureShape.new(name: 'PutAppInstanceUserExpirationSettingsRequest')
    PutAppInstanceUserExpirationSettingsResponse = Shapes::StructureShape.new(name: 'PutAppInstanceUserExpirationSettingsResponse')
    RegisterAppInstanceUserEndpointRequest = Shapes::StructureShape.new(name: 'RegisterAppInstanceUserEndpointRequest')
    RegisterAppInstanceUserEndpointResponse = Shapes::StructureShape.new(name: 'RegisterAppInstanceUserEndpointResponse')
    ResourceLimitExceededException = Shapes::StructureShape.new(name: 'ResourceLimitExceededException')
    ResourceName = Shapes::StringShape.new(name: 'ResourceName')
    RespondsTo = Shapes::StringShape.new(name: 'RespondsTo')
    RetentionDays = Shapes::IntegerShape.new(name: 'RetentionDays')
    SensitiveChimeArn = Shapes::StringShape.new(name: 'SensitiveChimeArn')
    SensitiveString1600 = Shapes::StringShape.new(name: 'SensitiveString1600')
    ServiceFailureException = Shapes::StructureShape.new(name: 'ServiceFailureException')
    ServiceUnavailableException = Shapes::StructureShape.new(name: 'ServiceUnavailableException')
    StandardMessages = Shapes::StringShape.new(name: 'StandardMessages')
    String = Shapes::StringShape.new(name: 'String')
    String1600 = Shapes::StringShape.new(name: 'String1600')
    String64 = Shapes::StringShape.new(name: 'String64')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagList = Shapes::ListShape.new(name: 'TagList')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    TargetedMessages = Shapes::StringShape.new(name: 'TargetedMessages')
    ThrottledClientException = Shapes::StructureShape.new(name: 'ThrottledClientException')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    UnauthorizedClientException = Shapes::StructureShape.new(name: 'UnauthorizedClientException')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UpdateAppInstanceBotRequest = Shapes::StructureShape.new(name: 'UpdateAppInstanceBotRequest')
    UpdateAppInstanceBotResponse = Shapes::StructureShape.new(name: 'UpdateAppInstanceBotResponse')
    UpdateAppInstanceRequest = Shapes::StructureShape.new(name: 'UpdateAppInstanceRequest')
    UpdateAppInstanceResponse = Shapes::StructureShape.new(name: 'UpdateAppInstanceResponse')
    UpdateAppInstanceUserEndpointRequest = Shapes::StructureShape.new(name: 'UpdateAppInstanceUserEndpointRequest')
    UpdateAppInstanceUserEndpointResponse = Shapes::StructureShape.new(name: 'UpdateAppInstanceUserEndpointResponse')
    UpdateAppInstanceUserRequest = Shapes::StructureShape.new(name: 'UpdateAppInstanceUserRequest')
    UpdateAppInstanceUserResponse = Shapes::StructureShape.new(name: 'UpdateAppInstanceUserResponse')
    UserId = Shapes::StringShape.new(name: 'UserId')
    UserName = Shapes::StringShape.new(name: 'UserName')

    AppInstance.add_member(:app_instance_arn, Shapes::ShapeRef.new(shape: ChimeArn, location_name: "AppInstanceArn"))
    AppInstance.add_member(:name, Shapes::ShapeRef.new(shape: NonEmptyResourceName, location_name: "Name"))
    AppInstance.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedTimestamp"))
    AppInstance.add_member(:last_updated_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastUpdatedTimestamp"))
    AppInstance.add_member(:metadata, Shapes::ShapeRef.new(shape: Metadata, location_name: "Metadata"))
    AppInstance.struct_class = Types::AppInstance

    AppInstanceAdmin.add_member(:admin, Shapes::ShapeRef.new(shape: Identity, location_name: "Admin"))
    AppInstanceAdmin.add_member(:app_instance_arn, Shapes::ShapeRef.new(shape: ChimeArn, location_name: "AppInstanceArn"))
    AppInstanceAdmin.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedTimestamp"))
    AppInstanceAdmin.struct_class = Types::AppInstanceAdmin

    AppInstanceAdminList.member = Shapes::ShapeRef.new(shape: AppInstanceAdminSummary)

    AppInstanceAdminSummary.add_member(:admin, Shapes::ShapeRef.new(shape: Identity, location_name: "Admin"))
    AppInstanceAdminSummary.struct_class = Types::AppInstanceAdminSummary

    AppInstanceBot.add_member(:app_instance_bot_arn, Shapes::ShapeRef.new(shape: ChimeArn, location_name: "AppInstanceBotArn"))
    AppInstanceBot.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "Name"))
    AppInstanceBot.add_member(:configuration, Shapes::ShapeRef.new(shape: Configuration, location_name: "Configuration"))
    AppInstanceBot.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedTimestamp"))
    AppInstanceBot.add_member(:last_updated_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastUpdatedTimestamp"))
    AppInstanceBot.add_member(:metadata, Shapes::ShapeRef.new(shape: Metadata, location_name: "Metadata"))
    AppInstanceBot.struct_class = Types::AppInstanceBot

    AppInstanceBotList.member = Shapes::ShapeRef.new(shape: AppInstanceBotSummary)

    AppInstanceBotSummary.add_member(:app_instance_bot_arn, Shapes::ShapeRef.new(shape: ChimeArn, location_name: "AppInstanceBotArn"))
    AppInstanceBotSummary.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "Name"))
    AppInstanceBotSummary.add_member(:metadata, Shapes::ShapeRef.new(shape: Metadata, location_name: "Metadata"))
    AppInstanceBotSummary.struct_class = Types::AppInstanceBotSummary

    AppInstanceList.member = Shapes::ShapeRef.new(shape: AppInstanceSummary)

    AppInstanceRetentionSettings.add_member(:channel_retention_settings, Shapes::ShapeRef.new(shape: ChannelRetentionSettings, location_name: "ChannelRetentionSettings"))
    AppInstanceRetentionSettings.struct_class = Types::AppInstanceRetentionSettings

    AppInstanceSummary.add_member(:app_instance_arn, Shapes::ShapeRef.new(shape: ChimeArn, location_name: "AppInstanceArn"))
    AppInstanceSummary.add_member(:name, Shapes::ShapeRef.new(shape: NonEmptyResourceName, location_name: "Name"))
    AppInstanceSummary.add_member(:metadata, Shapes::ShapeRef.new(shape: Metadata, location_name: "Metadata"))
    AppInstanceSummary.struct_class = Types::AppInstanceSummary

    AppInstanceUser.add_member(:app_instance_user_arn, Shapes::ShapeRef.new(shape: ChimeArn, location_name: "AppInstanceUserArn"))
    AppInstanceUser.add_member(:name, Shapes::ShapeRef.new(shape: UserName, location_name: "Name"))
    AppInstanceUser.add_member(:metadata, Shapes::ShapeRef.new(shape: Metadata, location_name: "Metadata"))
    AppInstanceUser.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedTimestamp"))
    AppInstanceUser.add_member(:last_updated_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastUpdatedTimestamp"))
    AppInstanceUser.add_member(:expiration_settings, Shapes::ShapeRef.new(shape: ExpirationSettings, location_name: "ExpirationSettings"))
    AppInstanceUser.struct_class = Types::AppInstanceUser

    AppInstanceUserEndpoint.add_member(:app_instance_user_arn, Shapes::ShapeRef.new(shape: ChimeArn, location_name: "AppInstanceUserArn"))
    AppInstanceUserEndpoint.add_member(:endpoint_id, Shapes::ShapeRef.new(shape: String64, location_name: "EndpointId"))
    AppInstanceUserEndpoint.add_member(:name, Shapes::ShapeRef.new(shape: SensitiveString1600, location_name: "Name"))
    AppInstanceUserEndpoint.add_member(:type, Shapes::ShapeRef.new(shape: AppInstanceUserEndpointType, location_name: "Type"))
    AppInstanceUserEndpoint.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ChimeArn, location_name: "ResourceArn"))
    AppInstanceUserEndpoint.add_member(:endpoint_attributes, Shapes::ShapeRef.new(shape: EndpointAttributes, location_name: "EndpointAttributes"))
    AppInstanceUserEndpoint.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedTimestamp"))
    AppInstanceUserEndpoint.add_member(:last_updated_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastUpdatedTimestamp"))
    AppInstanceUserEndpoint.add_member(:allow_messages, Shapes::ShapeRef.new(shape: AllowMessages, location_name: "AllowMessages"))
    AppInstanceUserEndpoint.add_member(:endpoint_state, Shapes::ShapeRef.new(shape: EndpointState, location_name: "EndpointState"))
    AppInstanceUserEndpoint.struct_class = Types::AppInstanceUserEndpoint

    AppInstanceUserEndpointSummary.add_member(:app_instance_user_arn, Shapes::ShapeRef.new(shape: ChimeArn, location_name: "AppInstanceUserArn"))
    AppInstanceUserEndpointSummary.add_member(:endpoint_id, Shapes::ShapeRef.new(shape: String64, location_name: "EndpointId"))
    AppInstanceUserEndpointSummary.add_member(:name, Shapes::ShapeRef.new(shape: SensitiveString1600, location_name: "Name"))
    AppInstanceUserEndpointSummary.add_member(:type, Shapes::ShapeRef.new(shape: AppInstanceUserEndpointType, location_name: "Type"))
    AppInstanceUserEndpointSummary.add_member(:allow_messages, Shapes::ShapeRef.new(shape: AllowMessages, location_name: "AllowMessages"))
    AppInstanceUserEndpointSummary.add_member(:endpoint_state, Shapes::ShapeRef.new(shape: EndpointState, location_name: "EndpointState"))
    AppInstanceUserEndpointSummary.struct_class = Types::AppInstanceUserEndpointSummary

    AppInstanceUserEndpointSummaryList.member = Shapes::ShapeRef.new(shape: AppInstanceUserEndpointSummary)

    AppInstanceUserList.member = Shapes::ShapeRef.new(shape: AppInstanceUserSummary)

    AppInstanceUserSummary.add_member(:app_instance_user_arn, Shapes::ShapeRef.new(shape: ChimeArn, location_name: "AppInstanceUserArn"))
    AppInstanceUserSummary.add_member(:name, Shapes::ShapeRef.new(shape: UserName, location_name: "Name"))
    AppInstanceUserSummary.add_member(:metadata, Shapes::ShapeRef.new(shape: Metadata, location_name: "Metadata"))
    AppInstanceUserSummary.struct_class = Types::AppInstanceUserSummary

    BadRequestException.add_member(:code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "Code"))
    BadRequestException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    BadRequestException.struct_class = Types::BadRequestException

    ChannelRetentionSettings.add_member(:retention_days, Shapes::ShapeRef.new(shape: RetentionDays, location_name: "RetentionDays"))
    ChannelRetentionSettings.struct_class = Types::ChannelRetentionSettings

    Configuration.add_member(:lex, Shapes::ShapeRef.new(shape: LexConfiguration, required: true, location_name: "Lex"))
    Configuration.struct_class = Types::Configuration

    ConflictException.add_member(:code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "Code"))
    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ConflictException.struct_class = Types::ConflictException

    CreateAppInstanceAdminRequest.add_member(:app_instance_admin_arn, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location_name: "AppInstanceAdminArn"))
    CreateAppInstanceAdminRequest.add_member(:app_instance_arn, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location: "uri", location_name: "appInstanceArn"))
    CreateAppInstanceAdminRequest.struct_class = Types::CreateAppInstanceAdminRequest

    CreateAppInstanceAdminResponse.add_member(:app_instance_admin, Shapes::ShapeRef.new(shape: Identity, location_name: "AppInstanceAdmin"))
    CreateAppInstanceAdminResponse.add_member(:app_instance_arn, Shapes::ShapeRef.new(shape: ChimeArn, location_name: "AppInstanceArn"))
    CreateAppInstanceAdminResponse.struct_class = Types::CreateAppInstanceAdminResponse

    CreateAppInstanceBotRequest.add_member(:app_instance_arn, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location_name: "AppInstanceArn"))
    CreateAppInstanceBotRequest.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "Name"))
    CreateAppInstanceBotRequest.add_member(:metadata, Shapes::ShapeRef.new(shape: Metadata, location_name: "Metadata"))
    CreateAppInstanceBotRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, required: true, location_name: "ClientRequestToken", metadata: {"idempotencyToken"=>true}))
    CreateAppInstanceBotRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateAppInstanceBotRequest.add_member(:configuration, Shapes::ShapeRef.new(shape: Configuration, required: true, location_name: "Configuration"))
    CreateAppInstanceBotRequest.struct_class = Types::CreateAppInstanceBotRequest

    CreateAppInstanceBotResponse.add_member(:app_instance_bot_arn, Shapes::ShapeRef.new(shape: ChimeArn, location_name: "AppInstanceBotArn"))
    CreateAppInstanceBotResponse.struct_class = Types::CreateAppInstanceBotResponse

    CreateAppInstanceRequest.add_member(:name, Shapes::ShapeRef.new(shape: NonEmptyResourceName, required: true, location_name: "Name"))
    CreateAppInstanceRequest.add_member(:metadata, Shapes::ShapeRef.new(shape: Metadata, location_name: "Metadata"))
    CreateAppInstanceRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, required: true, location_name: "ClientRequestToken", metadata: {"idempotencyToken"=>true}))
    CreateAppInstanceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateAppInstanceRequest.struct_class = Types::CreateAppInstanceRequest

    CreateAppInstanceResponse.add_member(:app_instance_arn, Shapes::ShapeRef.new(shape: ChimeArn, location_name: "AppInstanceArn"))
    CreateAppInstanceResponse.struct_class = Types::CreateAppInstanceResponse

    CreateAppInstanceUserRequest.add_member(:app_instance_arn, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location_name: "AppInstanceArn"))
    CreateAppInstanceUserRequest.add_member(:app_instance_user_id, Shapes::ShapeRef.new(shape: UserId, required: true, location_name: "AppInstanceUserId"))
    CreateAppInstanceUserRequest.add_member(:name, Shapes::ShapeRef.new(shape: UserName, required: true, location_name: "Name"))
    CreateAppInstanceUserRequest.add_member(:metadata, Shapes::ShapeRef.new(shape: Metadata, location_name: "Metadata"))
    CreateAppInstanceUserRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, required: true, location_name: "ClientRequestToken", metadata: {"idempotencyToken"=>true}))
    CreateAppInstanceUserRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateAppInstanceUserRequest.add_member(:expiration_settings, Shapes::ShapeRef.new(shape: ExpirationSettings, location_name: "ExpirationSettings"))
    CreateAppInstanceUserRequest.struct_class = Types::CreateAppInstanceUserRequest

    CreateAppInstanceUserResponse.add_member(:app_instance_user_arn, Shapes::ShapeRef.new(shape: ChimeArn, location_name: "AppInstanceUserArn"))
    CreateAppInstanceUserResponse.struct_class = Types::CreateAppInstanceUserResponse

    DeleteAppInstanceAdminRequest.add_member(:app_instance_admin_arn, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location: "uri", location_name: "appInstanceAdminArn"))
    DeleteAppInstanceAdminRequest.add_member(:app_instance_arn, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location: "uri", location_name: "appInstanceArn"))
    DeleteAppInstanceAdminRequest.struct_class = Types::DeleteAppInstanceAdminRequest

    DeleteAppInstanceBotRequest.add_member(:app_instance_bot_arn, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location: "uri", location_name: "appInstanceBotArn"))
    DeleteAppInstanceBotRequest.struct_class = Types::DeleteAppInstanceBotRequest

    DeleteAppInstanceRequest.add_member(:app_instance_arn, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location: "uri", location_name: "appInstanceArn"))
    DeleteAppInstanceRequest.struct_class = Types::DeleteAppInstanceRequest

    DeleteAppInstanceUserRequest.add_member(:app_instance_user_arn, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location: "uri", location_name: "appInstanceUserArn"))
    DeleteAppInstanceUserRequest.struct_class = Types::DeleteAppInstanceUserRequest

    DeregisterAppInstanceUserEndpointRequest.add_member(:app_instance_user_arn, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location: "uri", location_name: "appInstanceUserArn"))
    DeregisterAppInstanceUserEndpointRequest.add_member(:endpoint_id, Shapes::ShapeRef.new(shape: String64, required: true, location: "uri", location_name: "endpointId"))
    DeregisterAppInstanceUserEndpointRequest.struct_class = Types::DeregisterAppInstanceUserEndpointRequest

    DescribeAppInstanceAdminRequest.add_member(:app_instance_admin_arn, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location: "uri", location_name: "appInstanceAdminArn"))
    DescribeAppInstanceAdminRequest.add_member(:app_instance_arn, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location: "uri", location_name: "appInstanceArn"))
    DescribeAppInstanceAdminRequest.struct_class = Types::DescribeAppInstanceAdminRequest

    DescribeAppInstanceAdminResponse.add_member(:app_instance_admin, Shapes::ShapeRef.new(shape: AppInstanceAdmin, location_name: "AppInstanceAdmin"))
    DescribeAppInstanceAdminResponse.struct_class = Types::DescribeAppInstanceAdminResponse

    DescribeAppInstanceBotRequest.add_member(:app_instance_bot_arn, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location: "uri", location_name: "appInstanceBotArn"))
    DescribeAppInstanceBotRequest.struct_class = Types::DescribeAppInstanceBotRequest

    DescribeAppInstanceBotResponse.add_member(:app_instance_bot, Shapes::ShapeRef.new(shape: AppInstanceBot, location_name: "AppInstanceBot"))
    DescribeAppInstanceBotResponse.struct_class = Types::DescribeAppInstanceBotResponse

    DescribeAppInstanceRequest.add_member(:app_instance_arn, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location: "uri", location_name: "appInstanceArn"))
    DescribeAppInstanceRequest.struct_class = Types::DescribeAppInstanceRequest

    DescribeAppInstanceResponse.add_member(:app_instance, Shapes::ShapeRef.new(shape: AppInstance, location_name: "AppInstance"))
    DescribeAppInstanceResponse.struct_class = Types::DescribeAppInstanceResponse

    DescribeAppInstanceUserEndpointRequest.add_member(:app_instance_user_arn, Shapes::ShapeRef.new(shape: String1600, required: true, location: "uri", location_name: "appInstanceUserArn"))
    DescribeAppInstanceUserEndpointRequest.add_member(:endpoint_id, Shapes::ShapeRef.new(shape: String64, required: true, location: "uri", location_name: "endpointId"))
    DescribeAppInstanceUserEndpointRequest.struct_class = Types::DescribeAppInstanceUserEndpointRequest

    DescribeAppInstanceUserEndpointResponse.add_member(:app_instance_user_endpoint, Shapes::ShapeRef.new(shape: AppInstanceUserEndpoint, location_name: "AppInstanceUserEndpoint"))
    DescribeAppInstanceUserEndpointResponse.struct_class = Types::DescribeAppInstanceUserEndpointResponse

    DescribeAppInstanceUserRequest.add_member(:app_instance_user_arn, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location: "uri", location_name: "appInstanceUserArn"))
    DescribeAppInstanceUserRequest.struct_class = Types::DescribeAppInstanceUserRequest

    DescribeAppInstanceUserResponse.add_member(:app_instance_user, Shapes::ShapeRef.new(shape: AppInstanceUser, location_name: "AppInstanceUser"))
    DescribeAppInstanceUserResponse.struct_class = Types::DescribeAppInstanceUserResponse

    EndpointAttributes.add_member(:device_token, Shapes::ShapeRef.new(shape: NonEmptySensitiveString1600, required: true, location_name: "DeviceToken"))
    EndpointAttributes.add_member(:voip_device_token, Shapes::ShapeRef.new(shape: NonEmptySensitiveString1600, location_name: "VoipDeviceToken"))
    EndpointAttributes.struct_class = Types::EndpointAttributes

    EndpointState.add_member(:status, Shapes::ShapeRef.new(shape: EndpointStatus, required: true, location_name: "Status"))
    EndpointState.add_member(:status_reason, Shapes::ShapeRef.new(shape: EndpointStatusReason, location_name: "StatusReason"))
    EndpointState.struct_class = Types::EndpointState

    ExpirationSettings.add_member(:expiration_days, Shapes::ShapeRef.new(shape: ExpirationDays, required: true, location_name: "ExpirationDays"))
    ExpirationSettings.add_member(:expiration_criterion, Shapes::ShapeRef.new(shape: ExpirationCriterion, required: true, location_name: "ExpirationCriterion"))
    ExpirationSettings.struct_class = Types::ExpirationSettings

    ForbiddenException.add_member(:code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "Code"))
    ForbiddenException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ForbiddenException.struct_class = Types::ForbiddenException

    GetAppInstanceRetentionSettingsRequest.add_member(:app_instance_arn, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location: "uri", location_name: "appInstanceArn"))
    GetAppInstanceRetentionSettingsRequest.struct_class = Types::GetAppInstanceRetentionSettingsRequest

    GetAppInstanceRetentionSettingsResponse.add_member(:app_instance_retention_settings, Shapes::ShapeRef.new(shape: AppInstanceRetentionSettings, location_name: "AppInstanceRetentionSettings"))
    GetAppInstanceRetentionSettingsResponse.add_member(:initiate_deletion_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "InitiateDeletionTimestamp"))
    GetAppInstanceRetentionSettingsResponse.struct_class = Types::GetAppInstanceRetentionSettingsResponse

    Identity.add_member(:arn, Shapes::ShapeRef.new(shape: ChimeArn, location_name: "Arn"))
    Identity.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "Name"))
    Identity.struct_class = Types::Identity

    InvokedBy.add_member(:standard_messages, Shapes::ShapeRef.new(shape: StandardMessages, required: true, location_name: "StandardMessages"))
    InvokedBy.add_member(:targeted_messages, Shapes::ShapeRef.new(shape: TargetedMessages, required: true, location_name: "TargetedMessages"))
    InvokedBy.struct_class = Types::InvokedBy

    LexConfiguration.add_member(:responds_to, Shapes::ShapeRef.new(shape: RespondsTo, location_name: "RespondsTo"))
    LexConfiguration.add_member(:invoked_by, Shapes::ShapeRef.new(shape: InvokedBy, location_name: "InvokedBy"))
    LexConfiguration.add_member(:lex_bot_alias_arn, Shapes::ShapeRef.new(shape: LexBotAliasArn, required: true, location_name: "LexBotAliasArn"))
    LexConfiguration.add_member(:locale_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "LocaleId"))
    LexConfiguration.add_member(:welcome_intent, Shapes::ShapeRef.new(shape: LexIntentName, location_name: "WelcomeIntent"))
    LexConfiguration.struct_class = Types::LexConfiguration

    ListAppInstanceAdminsRequest.add_member(:app_instance_arn, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location: "uri", location_name: "appInstanceArn"))
    ListAppInstanceAdminsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "max-results"))
    ListAppInstanceAdminsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "next-token"))
    ListAppInstanceAdminsRequest.struct_class = Types::ListAppInstanceAdminsRequest

    ListAppInstanceAdminsResponse.add_member(:app_instance_arn, Shapes::ShapeRef.new(shape: ChimeArn, location_name: "AppInstanceArn"))
    ListAppInstanceAdminsResponse.add_member(:app_instance_admins, Shapes::ShapeRef.new(shape: AppInstanceAdminList, location_name: "AppInstanceAdmins"))
    ListAppInstanceAdminsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListAppInstanceAdminsResponse.struct_class = Types::ListAppInstanceAdminsResponse

    ListAppInstanceBotsRequest.add_member(:app_instance_arn, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location: "querystring", location_name: "app-instance-arn"))
    ListAppInstanceBotsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "max-results"))
    ListAppInstanceBotsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "next-token"))
    ListAppInstanceBotsRequest.struct_class = Types::ListAppInstanceBotsRequest

    ListAppInstanceBotsResponse.add_member(:app_instance_arn, Shapes::ShapeRef.new(shape: ChimeArn, location_name: "AppInstanceArn"))
    ListAppInstanceBotsResponse.add_member(:app_instance_bots, Shapes::ShapeRef.new(shape: AppInstanceBotList, location_name: "AppInstanceBots"))
    ListAppInstanceBotsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListAppInstanceBotsResponse.struct_class = Types::ListAppInstanceBotsResponse

    ListAppInstanceUserEndpointsRequest.add_member(:app_instance_user_arn, Shapes::ShapeRef.new(shape: SensitiveChimeArn, required: true, location: "uri", location_name: "appInstanceUserArn"))
    ListAppInstanceUserEndpointsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "max-results"))
    ListAppInstanceUserEndpointsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "next-token"))
    ListAppInstanceUserEndpointsRequest.struct_class = Types::ListAppInstanceUserEndpointsRequest

    ListAppInstanceUserEndpointsResponse.add_member(:app_instance_user_endpoints, Shapes::ShapeRef.new(shape: AppInstanceUserEndpointSummaryList, location_name: "AppInstanceUserEndpoints"))
    ListAppInstanceUserEndpointsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListAppInstanceUserEndpointsResponse.struct_class = Types::ListAppInstanceUserEndpointsResponse

    ListAppInstanceUsersRequest.add_member(:app_instance_arn, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location: "querystring", location_name: "app-instance-arn"))
    ListAppInstanceUsersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "max-results"))
    ListAppInstanceUsersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "next-token"))
    ListAppInstanceUsersRequest.struct_class = Types::ListAppInstanceUsersRequest

    ListAppInstanceUsersResponse.add_member(:app_instance_arn, Shapes::ShapeRef.new(shape: ChimeArn, location_name: "AppInstanceArn"))
    ListAppInstanceUsersResponse.add_member(:app_instance_users, Shapes::ShapeRef.new(shape: AppInstanceUserList, location_name: "AppInstanceUsers"))
    ListAppInstanceUsersResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListAppInstanceUsersResponse.struct_class = Types::ListAppInstanceUsersResponse

    ListAppInstancesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "max-results"))
    ListAppInstancesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "next-token"))
    ListAppInstancesRequest.struct_class = Types::ListAppInstancesRequest

    ListAppInstancesResponse.add_member(:app_instances, Shapes::ShapeRef.new(shape: AppInstanceList, location_name: "AppInstances"))
    ListAppInstancesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListAppInstancesResponse.struct_class = Types::ListAppInstancesResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location: "querystring", location_name: "arn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    NotFoundException.add_member(:code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "Code"))
    NotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    NotFoundException.struct_class = Types::NotFoundException

    PutAppInstanceRetentionSettingsRequest.add_member(:app_instance_arn, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location: "uri", location_name: "appInstanceArn"))
    PutAppInstanceRetentionSettingsRequest.add_member(:app_instance_retention_settings, Shapes::ShapeRef.new(shape: AppInstanceRetentionSettings, required: true, location_name: "AppInstanceRetentionSettings"))
    PutAppInstanceRetentionSettingsRequest.struct_class = Types::PutAppInstanceRetentionSettingsRequest

    PutAppInstanceRetentionSettingsResponse.add_member(:app_instance_retention_settings, Shapes::ShapeRef.new(shape: AppInstanceRetentionSettings, location_name: "AppInstanceRetentionSettings"))
    PutAppInstanceRetentionSettingsResponse.add_member(:initiate_deletion_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "InitiateDeletionTimestamp"))
    PutAppInstanceRetentionSettingsResponse.struct_class = Types::PutAppInstanceRetentionSettingsResponse

    PutAppInstanceUserExpirationSettingsRequest.add_member(:app_instance_user_arn, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location: "uri", location_name: "appInstanceUserArn"))
    PutAppInstanceUserExpirationSettingsRequest.add_member(:expiration_settings, Shapes::ShapeRef.new(shape: ExpirationSettings, location_name: "ExpirationSettings"))
    PutAppInstanceUserExpirationSettingsRequest.struct_class = Types::PutAppInstanceUserExpirationSettingsRequest

    PutAppInstanceUserExpirationSettingsResponse.add_member(:app_instance_user_arn, Shapes::ShapeRef.new(shape: ChimeArn, location_name: "AppInstanceUserArn"))
    PutAppInstanceUserExpirationSettingsResponse.add_member(:expiration_settings, Shapes::ShapeRef.new(shape: ExpirationSettings, location_name: "ExpirationSettings"))
    PutAppInstanceUserExpirationSettingsResponse.struct_class = Types::PutAppInstanceUserExpirationSettingsResponse

    RegisterAppInstanceUserEndpointRequest.add_member(:app_instance_user_arn, Shapes::ShapeRef.new(shape: SensitiveChimeArn, required: true, location: "uri", location_name: "appInstanceUserArn"))
    RegisterAppInstanceUserEndpointRequest.add_member(:name, Shapes::ShapeRef.new(shape: SensitiveString1600, location_name: "Name"))
    RegisterAppInstanceUserEndpointRequest.add_member(:type, Shapes::ShapeRef.new(shape: AppInstanceUserEndpointType, required: true, location_name: "Type"))
    RegisterAppInstanceUserEndpointRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location_name: "ResourceArn"))
    RegisterAppInstanceUserEndpointRequest.add_member(:endpoint_attributes, Shapes::ShapeRef.new(shape: EndpointAttributes, required: true, location_name: "EndpointAttributes"))
    RegisterAppInstanceUserEndpointRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, required: true, location_name: "ClientRequestToken", metadata: {"idempotencyToken"=>true}))
    RegisterAppInstanceUserEndpointRequest.add_member(:allow_messages, Shapes::ShapeRef.new(shape: AllowMessages, location_name: "AllowMessages"))
    RegisterAppInstanceUserEndpointRequest.struct_class = Types::RegisterAppInstanceUserEndpointRequest

    RegisterAppInstanceUserEndpointResponse.add_member(:app_instance_user_arn, Shapes::ShapeRef.new(shape: ChimeArn, location_name: "AppInstanceUserArn"))
    RegisterAppInstanceUserEndpointResponse.add_member(:endpoint_id, Shapes::ShapeRef.new(shape: String64, location_name: "EndpointId"))
    RegisterAppInstanceUserEndpointResponse.struct_class = Types::RegisterAppInstanceUserEndpointResponse

    ResourceLimitExceededException.add_member(:code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "Code"))
    ResourceLimitExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ResourceLimitExceededException.struct_class = Types::ResourceLimitExceededException

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

    UpdateAppInstanceBotRequest.add_member(:app_instance_bot_arn, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location: "uri", location_name: "appInstanceBotArn"))
    UpdateAppInstanceBotRequest.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "Name"))
    UpdateAppInstanceBotRequest.add_member(:metadata, Shapes::ShapeRef.new(shape: Metadata, required: true, location_name: "Metadata"))
    UpdateAppInstanceBotRequest.add_member(:configuration, Shapes::ShapeRef.new(shape: Configuration, location_name: "Configuration"))
    UpdateAppInstanceBotRequest.struct_class = Types::UpdateAppInstanceBotRequest

    UpdateAppInstanceBotResponse.add_member(:app_instance_bot_arn, Shapes::ShapeRef.new(shape: ChimeArn, location_name: "AppInstanceBotArn"))
    UpdateAppInstanceBotResponse.struct_class = Types::UpdateAppInstanceBotResponse

    UpdateAppInstanceRequest.add_member(:app_instance_arn, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location: "uri", location_name: "appInstanceArn"))
    UpdateAppInstanceRequest.add_member(:name, Shapes::ShapeRef.new(shape: NonEmptyResourceName, required: true, location_name: "Name"))
    UpdateAppInstanceRequest.add_member(:metadata, Shapes::ShapeRef.new(shape: Metadata, required: true, location_name: "Metadata"))
    UpdateAppInstanceRequest.struct_class = Types::UpdateAppInstanceRequest

    UpdateAppInstanceResponse.add_member(:app_instance_arn, Shapes::ShapeRef.new(shape: ChimeArn, location_name: "AppInstanceArn"))
    UpdateAppInstanceResponse.struct_class = Types::UpdateAppInstanceResponse

    UpdateAppInstanceUserEndpointRequest.add_member(:app_instance_user_arn, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location: "uri", location_name: "appInstanceUserArn"))
    UpdateAppInstanceUserEndpointRequest.add_member(:endpoint_id, Shapes::ShapeRef.new(shape: String64, required: true, location: "uri", location_name: "endpointId"))
    UpdateAppInstanceUserEndpointRequest.add_member(:name, Shapes::ShapeRef.new(shape: SensitiveString1600, location_name: "Name"))
    UpdateAppInstanceUserEndpointRequest.add_member(:allow_messages, Shapes::ShapeRef.new(shape: AllowMessages, location_name: "AllowMessages"))
    UpdateAppInstanceUserEndpointRequest.struct_class = Types::UpdateAppInstanceUserEndpointRequest

    UpdateAppInstanceUserEndpointResponse.add_member(:app_instance_user_arn, Shapes::ShapeRef.new(shape: ChimeArn, location_name: "AppInstanceUserArn"))
    UpdateAppInstanceUserEndpointResponse.add_member(:endpoint_id, Shapes::ShapeRef.new(shape: String64, location_name: "EndpointId"))
    UpdateAppInstanceUserEndpointResponse.struct_class = Types::UpdateAppInstanceUserEndpointResponse

    UpdateAppInstanceUserRequest.add_member(:app_instance_user_arn, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location: "uri", location_name: "appInstanceUserArn"))
    UpdateAppInstanceUserRequest.add_member(:name, Shapes::ShapeRef.new(shape: UserName, required: true, location_name: "Name"))
    UpdateAppInstanceUserRequest.add_member(:metadata, Shapes::ShapeRef.new(shape: Metadata, required: true, location_name: "Metadata"))
    UpdateAppInstanceUserRequest.struct_class = Types::UpdateAppInstanceUserRequest

    UpdateAppInstanceUserResponse.add_member(:app_instance_user_arn, Shapes::ShapeRef.new(shape: ChimeArn, location_name: "AppInstanceUserArn"))
    UpdateAppInstanceUserResponse.struct_class = Types::UpdateAppInstanceUserResponse


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2021-04-20"

      api.metadata = {
        "apiVersion" => "2021-04-20",
        "endpointPrefix" => "identity-chime",
        "protocol" => "rest-json",
        "serviceFullName" => "Amazon Chime SDK Identity",
        "serviceId" => "Chime SDK Identity",
        "signatureVersion" => "v4",
        "signingName" => "chime",
        "uid" => "chime-sdk-identity-2021-04-20",
      }

      api.add_operation(:create_app_instance, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateAppInstance"
        o.http_method = "POST"
        o.http_request_uri = "/app-instances"
        o.input = Shapes::ShapeRef.new(shape: CreateAppInstanceRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateAppInstanceResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:create_app_instance_admin, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateAppInstanceAdmin"
        o.http_method = "POST"
        o.http_request_uri = "/app-instances/{appInstanceArn}/admins"
        o.input = Shapes::ShapeRef.new(shape: CreateAppInstanceAdminRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateAppInstanceAdminResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:create_app_instance_bot, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateAppInstanceBot"
        o.http_method = "POST"
        o.http_request_uri = "/app-instance-bots"
        o.input = Shapes::ShapeRef.new(shape: CreateAppInstanceBotRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateAppInstanceBotResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:create_app_instance_user, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateAppInstanceUser"
        o.http_method = "POST"
        o.http_request_uri = "/app-instance-users"
        o.input = Shapes::ShapeRef.new(shape: CreateAppInstanceUserRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateAppInstanceUserResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:delete_app_instance, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteAppInstance"
        o.http_method = "DELETE"
        o.http_request_uri = "/app-instances/{appInstanceArn}"
        o.input = Shapes::ShapeRef.new(shape: DeleteAppInstanceRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:delete_app_instance_admin, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteAppInstanceAdmin"
        o.http_method = "DELETE"
        o.http_request_uri = "/app-instances/{appInstanceArn}/admins/{appInstanceAdminArn}"
        o.input = Shapes::ShapeRef.new(shape: DeleteAppInstanceAdminRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:delete_app_instance_bot, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteAppInstanceBot"
        o.http_method = "DELETE"
        o.http_request_uri = "/app-instance-bots/{appInstanceBotArn}"
        o.input = Shapes::ShapeRef.new(shape: DeleteAppInstanceBotRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:delete_app_instance_user, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteAppInstanceUser"
        o.http_method = "DELETE"
        o.http_request_uri = "/app-instance-users/{appInstanceUserArn}"
        o.input = Shapes::ShapeRef.new(shape: DeleteAppInstanceUserRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:deregister_app_instance_user_endpoint, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeregisterAppInstanceUserEndpoint"
        o.http_method = "DELETE"
        o.http_request_uri = "/app-instance-users/{appInstanceUserArn}/endpoints/{endpointId}"
        o.input = Shapes::ShapeRef.new(shape: DeregisterAppInstanceUserEndpointRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:describe_app_instance, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeAppInstance"
        o.http_method = "GET"
        o.http_request_uri = "/app-instances/{appInstanceArn}"
        o.input = Shapes::ShapeRef.new(shape: DescribeAppInstanceRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeAppInstanceResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:describe_app_instance_admin, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeAppInstanceAdmin"
        o.http_method = "GET"
        o.http_request_uri = "/app-instances/{appInstanceArn}/admins/{appInstanceAdminArn}"
        o.input = Shapes::ShapeRef.new(shape: DescribeAppInstanceAdminRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeAppInstanceAdminResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:describe_app_instance_bot, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeAppInstanceBot"
        o.http_method = "GET"
        o.http_request_uri = "/app-instance-bots/{appInstanceBotArn}"
        o.input = Shapes::ShapeRef.new(shape: DescribeAppInstanceBotRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeAppInstanceBotResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:describe_app_instance_user, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeAppInstanceUser"
        o.http_method = "GET"
        o.http_request_uri = "/app-instance-users/{appInstanceUserArn}"
        o.input = Shapes::ShapeRef.new(shape: DescribeAppInstanceUserRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeAppInstanceUserResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:describe_app_instance_user_endpoint, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeAppInstanceUserEndpoint"
        o.http_method = "GET"
        o.http_request_uri = "/app-instance-users/{appInstanceUserArn}/endpoints/{endpointId}"
        o.input = Shapes::ShapeRef.new(shape: DescribeAppInstanceUserEndpointRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeAppInstanceUserEndpointResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:get_app_instance_retention_settings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAppInstanceRetentionSettings"
        o.http_method = "GET"
        o.http_request_uri = "/app-instances/{appInstanceArn}/retention-settings"
        o.input = Shapes::ShapeRef.new(shape: GetAppInstanceRetentionSettingsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetAppInstanceRetentionSettingsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:list_app_instance_admins, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAppInstanceAdmins"
        o.http_method = "GET"
        o.http_request_uri = "/app-instances/{appInstanceArn}/admins"
        o.input = Shapes::ShapeRef.new(shape: ListAppInstanceAdminsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAppInstanceAdminsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_app_instance_bots, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAppInstanceBots"
        o.http_method = "GET"
        o.http_request_uri = "/app-instance-bots"
        o.input = Shapes::ShapeRef.new(shape: ListAppInstanceBotsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAppInstanceBotsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_app_instance_user_endpoints, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAppInstanceUserEndpoints"
        o.http_method = "GET"
        o.http_request_uri = "/app-instance-users/{appInstanceUserArn}/endpoints"
        o.input = Shapes::ShapeRef.new(shape: ListAppInstanceUserEndpointsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAppInstanceUserEndpointsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_app_instance_users, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAppInstanceUsers"
        o.http_method = "GET"
        o.http_request_uri = "/app-instance-users"
        o.input = Shapes::ShapeRef.new(shape: ListAppInstanceUsersRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAppInstanceUsersResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_app_instances, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAppInstances"
        o.http_method = "GET"
        o.http_request_uri = "/app-instances"
        o.input = Shapes::ShapeRef.new(shape: ListAppInstancesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAppInstancesResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
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

      api.add_operation(:put_app_instance_retention_settings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutAppInstanceRetentionSettings"
        o.http_method = "PUT"
        o.http_request_uri = "/app-instances/{appInstanceArn}/retention-settings"
        o.input = Shapes::ShapeRef.new(shape: PutAppInstanceRetentionSettingsRequest)
        o.output = Shapes::ShapeRef.new(shape: PutAppInstanceRetentionSettingsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:put_app_instance_user_expiration_settings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutAppInstanceUserExpirationSettings"
        o.http_method = "PUT"
        o.http_request_uri = "/app-instance-users/{appInstanceUserArn}/expiration-settings"
        o.input = Shapes::ShapeRef.new(shape: PutAppInstanceUserExpirationSettingsRequest)
        o.output = Shapes::ShapeRef.new(shape: PutAppInstanceUserExpirationSettingsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:register_app_instance_user_endpoint, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RegisterAppInstanceUserEndpoint"
        o.http_method = "POST"
        o.http_request_uri = "/app-instance-users/{appInstanceUserArn}/endpoints"
        o.input = Shapes::ShapeRef.new(shape: RegisterAppInstanceUserEndpointRequest)
        o.output = Shapes::ShapeRef.new(shape: RegisterAppInstanceUserEndpointResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
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

      api.add_operation(:update_app_instance, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateAppInstance"
        o.http_method = "PUT"
        o.http_request_uri = "/app-instances/{appInstanceArn}"
        o.input = Shapes::ShapeRef.new(shape: UpdateAppInstanceRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateAppInstanceResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:update_app_instance_bot, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateAppInstanceBot"
        o.http_method = "PUT"
        o.http_request_uri = "/app-instance-bots/{appInstanceBotArn}"
        o.input = Shapes::ShapeRef.new(shape: UpdateAppInstanceBotRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateAppInstanceBotResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:update_app_instance_user, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateAppInstanceUser"
        o.http_method = "PUT"
        o.http_request_uri = "/app-instance-users/{appInstanceUserArn}"
        o.input = Shapes::ShapeRef.new(shape: UpdateAppInstanceUserRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateAppInstanceUserResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:update_app_instance_user_endpoint, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateAppInstanceUserEndpoint"
        o.http_method = "PUT"
        o.http_request_uri = "/app-instance-users/{appInstanceUserArn}/endpoints/{endpointId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateAppInstanceUserEndpointRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateAppInstanceUserEndpointResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)
    end

  end
end
