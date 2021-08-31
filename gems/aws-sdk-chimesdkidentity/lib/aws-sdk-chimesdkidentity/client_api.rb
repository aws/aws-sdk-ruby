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

    AppInstance = Shapes::StructureShape.new(name: 'AppInstance')
    AppInstanceAdmin = Shapes::StructureShape.new(name: 'AppInstanceAdmin')
    AppInstanceAdminList = Shapes::ListShape.new(name: 'AppInstanceAdminList')
    AppInstanceAdminSummary = Shapes::StructureShape.new(name: 'AppInstanceAdminSummary')
    AppInstanceList = Shapes::ListShape.new(name: 'AppInstanceList')
    AppInstanceRetentionSettings = Shapes::StructureShape.new(name: 'AppInstanceRetentionSettings')
    AppInstanceSummary = Shapes::StructureShape.new(name: 'AppInstanceSummary')
    AppInstanceUser = Shapes::StructureShape.new(name: 'AppInstanceUser')
    AppInstanceUserList = Shapes::ListShape.new(name: 'AppInstanceUserList')
    AppInstanceUserSummary = Shapes::StructureShape.new(name: 'AppInstanceUserSummary')
    BadRequestException = Shapes::StructureShape.new(name: 'BadRequestException')
    ChannelRetentionSettings = Shapes::StructureShape.new(name: 'ChannelRetentionSettings')
    ChimeArn = Shapes::StringShape.new(name: 'ChimeArn')
    ClientRequestToken = Shapes::StringShape.new(name: 'ClientRequestToken')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    CreateAppInstanceAdminRequest = Shapes::StructureShape.new(name: 'CreateAppInstanceAdminRequest')
    CreateAppInstanceAdminResponse = Shapes::StructureShape.new(name: 'CreateAppInstanceAdminResponse')
    CreateAppInstanceRequest = Shapes::StructureShape.new(name: 'CreateAppInstanceRequest')
    CreateAppInstanceResponse = Shapes::StructureShape.new(name: 'CreateAppInstanceResponse')
    CreateAppInstanceUserRequest = Shapes::StructureShape.new(name: 'CreateAppInstanceUserRequest')
    CreateAppInstanceUserResponse = Shapes::StructureShape.new(name: 'CreateAppInstanceUserResponse')
    DeleteAppInstanceAdminRequest = Shapes::StructureShape.new(name: 'DeleteAppInstanceAdminRequest')
    DeleteAppInstanceRequest = Shapes::StructureShape.new(name: 'DeleteAppInstanceRequest')
    DeleteAppInstanceUserRequest = Shapes::StructureShape.new(name: 'DeleteAppInstanceUserRequest')
    DescribeAppInstanceAdminRequest = Shapes::StructureShape.new(name: 'DescribeAppInstanceAdminRequest')
    DescribeAppInstanceAdminResponse = Shapes::StructureShape.new(name: 'DescribeAppInstanceAdminResponse')
    DescribeAppInstanceRequest = Shapes::StructureShape.new(name: 'DescribeAppInstanceRequest')
    DescribeAppInstanceResponse = Shapes::StructureShape.new(name: 'DescribeAppInstanceResponse')
    DescribeAppInstanceUserRequest = Shapes::StructureShape.new(name: 'DescribeAppInstanceUserRequest')
    DescribeAppInstanceUserResponse = Shapes::StructureShape.new(name: 'DescribeAppInstanceUserResponse')
    ErrorCode = Shapes::StringShape.new(name: 'ErrorCode')
    ForbiddenException = Shapes::StructureShape.new(name: 'ForbiddenException')
    GetAppInstanceRetentionSettingsRequest = Shapes::StructureShape.new(name: 'GetAppInstanceRetentionSettingsRequest')
    GetAppInstanceRetentionSettingsResponse = Shapes::StructureShape.new(name: 'GetAppInstanceRetentionSettingsResponse')
    Identity = Shapes::StructureShape.new(name: 'Identity')
    ListAppInstanceAdminsRequest = Shapes::StructureShape.new(name: 'ListAppInstanceAdminsRequest')
    ListAppInstanceAdminsResponse = Shapes::StructureShape.new(name: 'ListAppInstanceAdminsResponse')
    ListAppInstanceUsersRequest = Shapes::StructureShape.new(name: 'ListAppInstanceUsersRequest')
    ListAppInstanceUsersResponse = Shapes::StructureShape.new(name: 'ListAppInstanceUsersResponse')
    ListAppInstancesRequest = Shapes::StructureShape.new(name: 'ListAppInstancesRequest')
    ListAppInstancesResponse = Shapes::StructureShape.new(name: 'ListAppInstancesResponse')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    Metadata = Shapes::StringShape.new(name: 'Metadata')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    NonEmptyResourceName = Shapes::StringShape.new(name: 'NonEmptyResourceName')
    PutAppInstanceRetentionSettingsRequest = Shapes::StructureShape.new(name: 'PutAppInstanceRetentionSettingsRequest')
    PutAppInstanceRetentionSettingsResponse = Shapes::StructureShape.new(name: 'PutAppInstanceRetentionSettingsResponse')
    ResourceLimitExceededException = Shapes::StructureShape.new(name: 'ResourceLimitExceededException')
    ResourceName = Shapes::StringShape.new(name: 'ResourceName')
    RetentionDays = Shapes::IntegerShape.new(name: 'RetentionDays')
    ServiceFailureException = Shapes::StructureShape.new(name: 'ServiceFailureException')
    ServiceUnavailableException = Shapes::StructureShape.new(name: 'ServiceUnavailableException')
    String = Shapes::StringShape.new(name: 'String')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagList = Shapes::ListShape.new(name: 'TagList')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    ThrottledClientException = Shapes::StructureShape.new(name: 'ThrottledClientException')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    UnauthorizedClientException = Shapes::StructureShape.new(name: 'UnauthorizedClientException')
    UpdateAppInstanceRequest = Shapes::StructureShape.new(name: 'UpdateAppInstanceRequest')
    UpdateAppInstanceResponse = Shapes::StructureShape.new(name: 'UpdateAppInstanceResponse')
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
    AppInstanceUser.struct_class = Types::AppInstanceUser

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

    ConflictException.add_member(:code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "Code"))
    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ConflictException.struct_class = Types::ConflictException

    CreateAppInstanceAdminRequest.add_member(:app_instance_admin_arn, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location_name: "AppInstanceAdminArn"))
    CreateAppInstanceAdminRequest.add_member(:app_instance_arn, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location: "uri", location_name: "appInstanceArn"))
    CreateAppInstanceAdminRequest.struct_class = Types::CreateAppInstanceAdminRequest

    CreateAppInstanceAdminResponse.add_member(:app_instance_admin, Shapes::ShapeRef.new(shape: Identity, location_name: "AppInstanceAdmin"))
    CreateAppInstanceAdminResponse.add_member(:app_instance_arn, Shapes::ShapeRef.new(shape: ChimeArn, location_name: "AppInstanceArn"))
    CreateAppInstanceAdminResponse.struct_class = Types::CreateAppInstanceAdminResponse

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
    CreateAppInstanceUserRequest.struct_class = Types::CreateAppInstanceUserRequest

    CreateAppInstanceUserResponse.add_member(:app_instance_user_arn, Shapes::ShapeRef.new(shape: ChimeArn, location_name: "AppInstanceUserArn"))
    CreateAppInstanceUserResponse.struct_class = Types::CreateAppInstanceUserResponse

    DeleteAppInstanceAdminRequest.add_member(:app_instance_admin_arn, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location: "uri", location_name: "appInstanceAdminArn"))
    DeleteAppInstanceAdminRequest.add_member(:app_instance_arn, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location: "uri", location_name: "appInstanceArn"))
    DeleteAppInstanceAdminRequest.struct_class = Types::DeleteAppInstanceAdminRequest

    DeleteAppInstanceRequest.add_member(:app_instance_arn, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location: "uri", location_name: "appInstanceArn"))
    DeleteAppInstanceRequest.struct_class = Types::DeleteAppInstanceRequest

    DeleteAppInstanceUserRequest.add_member(:app_instance_user_arn, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location: "uri", location_name: "appInstanceUserArn"))
    DeleteAppInstanceUserRequest.struct_class = Types::DeleteAppInstanceUserRequest

    DescribeAppInstanceAdminRequest.add_member(:app_instance_admin_arn, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location: "uri", location_name: "appInstanceAdminArn"))
    DescribeAppInstanceAdminRequest.add_member(:app_instance_arn, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location: "uri", location_name: "appInstanceArn"))
    DescribeAppInstanceAdminRequest.struct_class = Types::DescribeAppInstanceAdminRequest

    DescribeAppInstanceAdminResponse.add_member(:app_instance_admin, Shapes::ShapeRef.new(shape: AppInstanceAdmin, location_name: "AppInstanceAdmin"))
    DescribeAppInstanceAdminResponse.struct_class = Types::DescribeAppInstanceAdminResponse

    DescribeAppInstanceRequest.add_member(:app_instance_arn, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location: "uri", location_name: "appInstanceArn"))
    DescribeAppInstanceRequest.struct_class = Types::DescribeAppInstanceRequest

    DescribeAppInstanceResponse.add_member(:app_instance, Shapes::ShapeRef.new(shape: AppInstance, location_name: "AppInstance"))
    DescribeAppInstanceResponse.struct_class = Types::DescribeAppInstanceResponse

    DescribeAppInstanceUserRequest.add_member(:app_instance_user_arn, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location: "uri", location_name: "appInstanceUserArn"))
    DescribeAppInstanceUserRequest.struct_class = Types::DescribeAppInstanceUserRequest

    DescribeAppInstanceUserResponse.add_member(:app_instance_user, Shapes::ShapeRef.new(shape: AppInstanceUser, location_name: "AppInstanceUser"))
    DescribeAppInstanceUserResponse.struct_class = Types::DescribeAppInstanceUserResponse

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

    ListAppInstanceAdminsRequest.add_member(:app_instance_arn, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location: "uri", location_name: "appInstanceArn"))
    ListAppInstanceAdminsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "max-results"))
    ListAppInstanceAdminsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "next-token"))
    ListAppInstanceAdminsRequest.struct_class = Types::ListAppInstanceAdminsRequest

    ListAppInstanceAdminsResponse.add_member(:app_instance_arn, Shapes::ShapeRef.new(shape: ChimeArn, location_name: "AppInstanceArn"))
    ListAppInstanceAdminsResponse.add_member(:app_instance_admins, Shapes::ShapeRef.new(shape: AppInstanceAdminList, location_name: "AppInstanceAdmins"))
    ListAppInstanceAdminsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListAppInstanceAdminsResponse.struct_class = Types::ListAppInstanceAdminsResponse

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

    PutAppInstanceRetentionSettingsRequest.add_member(:app_instance_arn, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location: "uri", location_name: "appInstanceArn"))
    PutAppInstanceRetentionSettingsRequest.add_member(:app_instance_retention_settings, Shapes::ShapeRef.new(shape: AppInstanceRetentionSettings, required: true, location_name: "AppInstanceRetentionSettings"))
    PutAppInstanceRetentionSettingsRequest.struct_class = Types::PutAppInstanceRetentionSettingsRequest

    PutAppInstanceRetentionSettingsResponse.add_member(:app_instance_retention_settings, Shapes::ShapeRef.new(shape: AppInstanceRetentionSettings, location_name: "AppInstanceRetentionSettings"))
    PutAppInstanceRetentionSettingsResponse.add_member(:initiate_deletion_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "InitiateDeletionTimestamp"))
    PutAppInstanceRetentionSettingsResponse.struct_class = Types::PutAppInstanceRetentionSettingsResponse

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

    TagList.member = Shapes::ShapeRef.new(shape: Tag)

    ThrottledClientException.add_member(:code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "Code"))
    ThrottledClientException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ThrottledClientException.struct_class = Types::ThrottledClientException

    UnauthorizedClientException.add_member(:code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "Code"))
    UnauthorizedClientException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    UnauthorizedClientException.struct_class = Types::UnauthorizedClientException

    UpdateAppInstanceRequest.add_member(:app_instance_arn, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location: "uri", location_name: "appInstanceArn"))
    UpdateAppInstanceRequest.add_member(:name, Shapes::ShapeRef.new(shape: NonEmptyResourceName, required: true, location_name: "Name"))
    UpdateAppInstanceRequest.add_member(:metadata, Shapes::ShapeRef.new(shape: Metadata, required: true, location_name: "Metadata"))
    UpdateAppInstanceRequest.struct_class = Types::UpdateAppInstanceRequest

    UpdateAppInstanceResponse.add_member(:app_instance_arn, Shapes::ShapeRef.new(shape: ChimeArn, location_name: "AppInstanceArn"))
    UpdateAppInstanceResponse.struct_class = Types::UpdateAppInstanceResponse

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
    end

  end
end
