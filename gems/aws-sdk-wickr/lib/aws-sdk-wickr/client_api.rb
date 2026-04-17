# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::Wickr
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessLevel = Shapes::StringShape.new(name: 'AccessLevel')
    AppIds = Shapes::ListShape.new(name: 'AppIds')
    BadRequestError = Shapes::StructureShape.new(name: 'BadRequestError')
    BasicDeviceObject = Shapes::StructureShape.new(name: 'BasicDeviceObject')
    BatchCreateUserRequest = Shapes::StructureShape.new(name: 'BatchCreateUserRequest')
    BatchCreateUserRequestItem = Shapes::StructureShape.new(name: 'BatchCreateUserRequestItem')
    BatchCreateUserRequestItems = Shapes::ListShape.new(name: 'BatchCreateUserRequestItems')
    BatchCreateUserResponse = Shapes::StructureShape.new(name: 'BatchCreateUserResponse')
    BatchDeleteUserRequest = Shapes::StructureShape.new(name: 'BatchDeleteUserRequest')
    BatchDeleteUserResponse = Shapes::StructureShape.new(name: 'BatchDeleteUserResponse')
    BatchDeviceErrorResponseItem = Shapes::StructureShape.new(name: 'BatchDeviceErrorResponseItem')
    BatchDeviceErrorResponseItems = Shapes::ListShape.new(name: 'BatchDeviceErrorResponseItems')
    BatchDeviceSuccessResponseItem = Shapes::StructureShape.new(name: 'BatchDeviceSuccessResponseItem')
    BatchDeviceSuccessResponseItems = Shapes::ListShape.new(name: 'BatchDeviceSuccessResponseItems')
    BatchLookupUserUnameRequest = Shapes::StructureShape.new(name: 'BatchLookupUserUnameRequest')
    BatchLookupUserUnameResponse = Shapes::StructureShape.new(name: 'BatchLookupUserUnameResponse')
    BatchReinviteUserRequest = Shapes::StructureShape.new(name: 'BatchReinviteUserRequest')
    BatchReinviteUserResponse = Shapes::StructureShape.new(name: 'BatchReinviteUserResponse')
    BatchResetDevicesForUserRequest = Shapes::StructureShape.new(name: 'BatchResetDevicesForUserRequest')
    BatchResetDevicesForUserResponse = Shapes::StructureShape.new(name: 'BatchResetDevicesForUserResponse')
    BatchToggleUserSuspendStatusRequest = Shapes::StructureShape.new(name: 'BatchToggleUserSuspendStatusRequest')
    BatchToggleUserSuspendStatusResponse = Shapes::StructureShape.new(name: 'BatchToggleUserSuspendStatusResponse')
    BatchUnameErrorResponseItem = Shapes::StructureShape.new(name: 'BatchUnameErrorResponseItem')
    BatchUnameErrorResponseItems = Shapes::ListShape.new(name: 'BatchUnameErrorResponseItems')
    BatchUnameSuccessResponseItem = Shapes::StructureShape.new(name: 'BatchUnameSuccessResponseItem')
    BatchUnameSuccessResponseItems = Shapes::ListShape.new(name: 'BatchUnameSuccessResponseItems')
    BatchUserErrorResponseItem = Shapes::StructureShape.new(name: 'BatchUserErrorResponseItem')
    BatchUserErrorResponseItems = Shapes::ListShape.new(name: 'BatchUserErrorResponseItems')
    BatchUserSuccessResponseItem = Shapes::StructureShape.new(name: 'BatchUserSuccessResponseItem')
    BatchUserSuccessResponseItems = Shapes::ListShape.new(name: 'BatchUserSuccessResponseItems')
    BlockedGuestUser = Shapes::StructureShape.new(name: 'BlockedGuestUser')
    BlockedGuestUserList = Shapes::ListShape.new(name: 'BlockedGuestUserList')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    Bot = Shapes::StructureShape.new(name: 'Bot')
    BotId = Shapes::StringShape.new(name: 'BotId')
    BotStatus = Shapes::IntegerShape.new(name: 'BotStatus')
    Bots = Shapes::ListShape.new(name: 'Bots')
    CallingSettings = Shapes::StructureShape.new(name: 'CallingSettings')
    ClientToken = Shapes::StringShape.new(name: 'ClientToken')
    CreateBotRequest = Shapes::StructureShape.new(name: 'CreateBotRequest')
    CreateBotResponse = Shapes::StructureShape.new(name: 'CreateBotResponse')
    CreateDataRetentionBotChallengeRequest = Shapes::StructureShape.new(name: 'CreateDataRetentionBotChallengeRequest')
    CreateDataRetentionBotChallengeResponse = Shapes::StructureShape.new(name: 'CreateDataRetentionBotChallengeResponse')
    CreateDataRetentionBotRequest = Shapes::StructureShape.new(name: 'CreateDataRetentionBotRequest')
    CreateDataRetentionBotResponse = Shapes::StructureShape.new(name: 'CreateDataRetentionBotResponse')
    CreateNetworkRequest = Shapes::StructureShape.new(name: 'CreateNetworkRequest')
    CreateNetworkResponse = Shapes::StructureShape.new(name: 'CreateNetworkResponse')
    CreateSecurityGroupRequest = Shapes::StructureShape.new(name: 'CreateSecurityGroupRequest')
    CreateSecurityGroupResponse = Shapes::StructureShape.new(name: 'CreateSecurityGroupResponse')
    DataRetentionActionType = Shapes::StringShape.new(name: 'DataRetentionActionType')
    DeleteBotRequest = Shapes::StructureShape.new(name: 'DeleteBotRequest')
    DeleteBotResponse = Shapes::StructureShape.new(name: 'DeleteBotResponse')
    DeleteDataRetentionBotRequest = Shapes::StructureShape.new(name: 'DeleteDataRetentionBotRequest')
    DeleteDataRetentionBotResponse = Shapes::StructureShape.new(name: 'DeleteDataRetentionBotResponse')
    DeleteNetworkRequest = Shapes::StructureShape.new(name: 'DeleteNetworkRequest')
    DeleteNetworkResponse = Shapes::StructureShape.new(name: 'DeleteNetworkResponse')
    DeleteSecurityGroupRequest = Shapes::StructureShape.new(name: 'DeleteSecurityGroupRequest')
    DeleteSecurityGroupResponse = Shapes::StructureShape.new(name: 'DeleteSecurityGroupResponse')
    Devices = Shapes::ListShape.new(name: 'Devices')
    ErrorDetail = Shapes::StructureShape.new(name: 'ErrorDetail')
    ErrorDetailList = Shapes::ListShape.new(name: 'ErrorDetailList')
    ForbiddenError = Shapes::StructureShape.new(name: 'ForbiddenError')
    GenericString = Shapes::StringShape.new(name: 'GenericString')
    GetBotRequest = Shapes::StructureShape.new(name: 'GetBotRequest')
    GetBotResponse = Shapes::StructureShape.new(name: 'GetBotResponse')
    GetBotsCountRequest = Shapes::StructureShape.new(name: 'GetBotsCountRequest')
    GetBotsCountResponse = Shapes::StructureShape.new(name: 'GetBotsCountResponse')
    GetDataRetentionBotRequest = Shapes::StructureShape.new(name: 'GetDataRetentionBotRequest')
    GetDataRetentionBotResponse = Shapes::StructureShape.new(name: 'GetDataRetentionBotResponse')
    GetGuestUserHistoryCountRequest = Shapes::StructureShape.new(name: 'GetGuestUserHistoryCountRequest')
    GetGuestUserHistoryCountResponse = Shapes::StructureShape.new(name: 'GetGuestUserHistoryCountResponse')
    GetNetworkRequest = Shapes::StructureShape.new(name: 'GetNetworkRequest')
    GetNetworkResponse = Shapes::StructureShape.new(name: 'GetNetworkResponse')
    GetNetworkSettingsRequest = Shapes::StructureShape.new(name: 'GetNetworkSettingsRequest')
    GetNetworkSettingsResponse = Shapes::StructureShape.new(name: 'GetNetworkSettingsResponse')
    GetOidcInfoRequest = Shapes::StructureShape.new(name: 'GetOidcInfoRequest')
    GetOidcInfoResponse = Shapes::StructureShape.new(name: 'GetOidcInfoResponse')
    GetOpentdfConfigRequest = Shapes::StructureShape.new(name: 'GetOpentdfConfigRequest')
    GetOpentdfConfigResponse = Shapes::StructureShape.new(name: 'GetOpentdfConfigResponse')
    GetSecurityGroupRequest = Shapes::StructureShape.new(name: 'GetSecurityGroupRequest')
    GetSecurityGroupResponse = Shapes::StructureShape.new(name: 'GetSecurityGroupResponse')
    GetUserRequest = Shapes::StructureShape.new(name: 'GetUserRequest')
    GetUserResponse = Shapes::StructureShape.new(name: 'GetUserResponse')
    GetUsersCountRequest = Shapes::StructureShape.new(name: 'GetUsersCountRequest')
    GetUsersCountResponse = Shapes::StructureShape.new(name: 'GetUsersCountResponse')
    GuestUser = Shapes::StructureShape.new(name: 'GuestUser')
    GuestUserHistoryCount = Shapes::StructureShape.new(name: 'GuestUserHistoryCount')
    GuestUserHistoryCountList = Shapes::ListShape.new(name: 'GuestUserHistoryCountList')
    GuestUserList = Shapes::ListShape.new(name: 'GuestUserList')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InternalServerError = Shapes::StructureShape.new(name: 'InternalServerError')
    ListBlockedGuestUsersRequest = Shapes::StructureShape.new(name: 'ListBlockedGuestUsersRequest')
    ListBlockedGuestUsersResponse = Shapes::StructureShape.new(name: 'ListBlockedGuestUsersResponse')
    ListBotsRequest = Shapes::StructureShape.new(name: 'ListBotsRequest')
    ListBotsResponse = Shapes::StructureShape.new(name: 'ListBotsResponse')
    ListDevicesForUserRequest = Shapes::StructureShape.new(name: 'ListDevicesForUserRequest')
    ListDevicesForUserResponse = Shapes::StructureShape.new(name: 'ListDevicesForUserResponse')
    ListGuestUsersRequest = Shapes::StructureShape.new(name: 'ListGuestUsersRequest')
    ListGuestUsersResponse = Shapes::StructureShape.new(name: 'ListGuestUsersResponse')
    ListNetworksRequest = Shapes::StructureShape.new(name: 'ListNetworksRequest')
    ListNetworksResponse = Shapes::StructureShape.new(name: 'ListNetworksResponse')
    ListSecurityGroupUsersRequest = Shapes::StructureShape.new(name: 'ListSecurityGroupUsersRequest')
    ListSecurityGroupUsersResponse = Shapes::StructureShape.new(name: 'ListSecurityGroupUsersResponse')
    ListSecurityGroupsRequest = Shapes::StructureShape.new(name: 'ListSecurityGroupsRequest')
    ListSecurityGroupsResponse = Shapes::StructureShape.new(name: 'ListSecurityGroupsResponse')
    ListUsersRequest = Shapes::StructureShape.new(name: 'ListUsersRequest')
    ListUsersResponse = Shapes::StructureShape.new(name: 'ListUsersResponse')
    Long = Shapes::IntegerShape.new(name: 'Long')
    Network = Shapes::StructureShape.new(name: 'Network')
    NetworkId = Shapes::StringShape.new(name: 'NetworkId')
    NetworkList = Shapes::ListShape.new(name: 'NetworkList')
    NetworkSettings = Shapes::StructureShape.new(name: 'NetworkSettings')
    OidcConfigInfo = Shapes::StructureShape.new(name: 'OidcConfigInfo')
    OidcConfigInfoApplicationIdInteger = Shapes::IntegerShape.new(name: 'OidcConfigInfoApplicationIdInteger')
    OidcTokenInfo = Shapes::StructureShape.new(name: 'OidcTokenInfo')
    PasswordRequirements = Shapes::StructureShape.new(name: 'PasswordRequirements')
    PermittedNetworksList = Shapes::ListShape.new(name: 'PermittedNetworksList')
    PermittedWickrEnterpriseNetwork = Shapes::StructureShape.new(name: 'PermittedWickrEnterpriseNetwork')
    PermittedWickrEnterpriseNetworksList = Shapes::ListShape.new(name: 'PermittedWickrEnterpriseNetworksList')
    RateLimitError = Shapes::StructureShape.new(name: 'RateLimitError')
    ReadReceiptConfig = Shapes::StructureShape.new(name: 'ReadReceiptConfig')
    RegisterOidcConfigRequest = Shapes::StructureShape.new(name: 'RegisterOidcConfigRequest')
    RegisterOidcConfigResponse = Shapes::StructureShape.new(name: 'RegisterOidcConfigResponse')
    RegisterOidcConfigResponseApplicationIdInteger = Shapes::IntegerShape.new(name: 'RegisterOidcConfigResponseApplicationIdInteger')
    RegisterOidcConfigTestRequest = Shapes::StructureShape.new(name: 'RegisterOidcConfigTestRequest')
    RegisterOidcConfigTestResponse = Shapes::StructureShape.new(name: 'RegisterOidcConfigTestResponse')
    RegisterOpentdfConfigRequest = Shapes::StructureShape.new(name: 'RegisterOpentdfConfigRequest')
    RegisterOpentdfConfigResponse = Shapes::StructureShape.new(name: 'RegisterOpentdfConfigResponse')
    ResourceNotFoundError = Shapes::StructureShape.new(name: 'ResourceNotFoundError')
    SecurityGroup = Shapes::StructureShape.new(name: 'SecurityGroup')
    SecurityGroupId = Shapes::StringShape.new(name: 'SecurityGroupId')
    SecurityGroupIdList = Shapes::ListShape.new(name: 'SecurityGroupIdList')
    SecurityGroupList = Shapes::ListShape.new(name: 'SecurityGroupList')
    SecurityGroupSettings = Shapes::StructureShape.new(name: 'SecurityGroupSettings')
    SecurityGroupSettingsRequest = Shapes::StructureShape.new(name: 'SecurityGroupSettingsRequest')
    SecurityGroupStringList = Shapes::ListShape.new(name: 'SecurityGroupStringList')
    SensitiveString = Shapes::StringShape.new(name: 'SensitiveString')
    Setting = Shapes::StructureShape.new(name: 'Setting')
    SettingsList = Shapes::ListShape.new(name: 'SettingsList')
    ShredderSettings = Shapes::StructureShape.new(name: 'ShredderSettings')
    SortDirection = Shapes::StringShape.new(name: 'SortDirection')
    Status = Shapes::StringShape.new(name: 'Status')
    StringList = Shapes::ListShape.new(name: 'StringList')
    SyntheticTimestamp_epoch_seconds = Shapes::TimestampShape.new(name: 'SyntheticTimestamp_epoch_seconds', timestampFormat: "unixTimestamp")
    Uname = Shapes::StringShape.new(name: 'Uname')
    Unames = Shapes::ListShape.new(name: 'Unames')
    UnauthorizedError = Shapes::StructureShape.new(name: 'UnauthorizedError')
    UpdateBotRequest = Shapes::StructureShape.new(name: 'UpdateBotRequest')
    UpdateBotResponse = Shapes::StructureShape.new(name: 'UpdateBotResponse')
    UpdateDataRetentionRequest = Shapes::StructureShape.new(name: 'UpdateDataRetentionRequest')
    UpdateDataRetentionResponse = Shapes::StructureShape.new(name: 'UpdateDataRetentionResponse')
    UpdateGuestUserRequest = Shapes::StructureShape.new(name: 'UpdateGuestUserRequest')
    UpdateGuestUserResponse = Shapes::StructureShape.new(name: 'UpdateGuestUserResponse')
    UpdateNetworkRequest = Shapes::StructureShape.new(name: 'UpdateNetworkRequest')
    UpdateNetworkResponse = Shapes::StructureShape.new(name: 'UpdateNetworkResponse')
    UpdateNetworkSettingsRequest = Shapes::StructureShape.new(name: 'UpdateNetworkSettingsRequest')
    UpdateNetworkSettingsResponse = Shapes::StructureShape.new(name: 'UpdateNetworkSettingsResponse')
    UpdateSecurityGroupRequest = Shapes::StructureShape.new(name: 'UpdateSecurityGroupRequest')
    UpdateSecurityGroupResponse = Shapes::StructureShape.new(name: 'UpdateSecurityGroupResponse')
    UpdateUserDetails = Shapes::StructureShape.new(name: 'UpdateUserDetails')
    UpdateUserRequest = Shapes::StructureShape.new(name: 'UpdateUserRequest')
    UpdateUserResponse = Shapes::StructureShape.new(name: 'UpdateUserResponse')
    User = Shapes::StructureShape.new(name: 'User')
    UserId = Shapes::StringShape.new(name: 'UserId')
    UserIds = Shapes::ListShape.new(name: 'UserIds')
    UserStatus = Shapes::IntegerShape.new(name: 'UserStatus')
    Users = Shapes::ListShape.new(name: 'Users')
    ValidationError = Shapes::StructureShape.new(name: 'ValidationError')
    WickrAwsNetworks = Shapes::StructureShape.new(name: 'WickrAwsNetworks')
    WickrAwsNetworksList = Shapes::ListShape.new(name: 'WickrAwsNetworksList')

    AppIds.member = Shapes::ShapeRef.new(shape: GenericString)

    BadRequestError.add_member(:message, Shapes::ShapeRef.new(shape: GenericString, location_name: "message"))
    BadRequestError.struct_class = Types::BadRequestError

    BasicDeviceObject.add_member(:app_id, Shapes::ShapeRef.new(shape: GenericString, location_name: "appId"))
    BasicDeviceObject.add_member(:created, Shapes::ShapeRef.new(shape: GenericString, location_name: "created"))
    BasicDeviceObject.add_member(:last_login, Shapes::ShapeRef.new(shape: GenericString, location_name: "lastLogin"))
    BasicDeviceObject.add_member(:status_text, Shapes::ShapeRef.new(shape: GenericString, location_name: "statusText"))
    BasicDeviceObject.add_member(:suspend, Shapes::ShapeRef.new(shape: Boolean, location_name: "suspend"))
    BasicDeviceObject.add_member(:type, Shapes::ShapeRef.new(shape: GenericString, location_name: "type"))
    BasicDeviceObject.struct_class = Types::BasicDeviceObject

    BatchCreateUserRequest.add_member(:network_id, Shapes::ShapeRef.new(shape: NetworkId, required: true, location: "uri", location_name: "networkId"))
    BatchCreateUserRequest.add_member(:users, Shapes::ShapeRef.new(shape: BatchCreateUserRequestItems, required: true, location_name: "users"))
    BatchCreateUserRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location: "header", location_name: "X-Client-Token", metadata: {"idempotencyToken" => true}))
    BatchCreateUserRequest.struct_class = Types::BatchCreateUserRequest

    BatchCreateUserRequestItem.add_member(:first_name, Shapes::ShapeRef.new(shape: SensitiveString, location_name: "firstName"))
    BatchCreateUserRequestItem.add_member(:last_name, Shapes::ShapeRef.new(shape: SensitiveString, location_name: "lastName"))
    BatchCreateUserRequestItem.add_member(:security_group_ids, Shapes::ShapeRef.new(shape: SecurityGroupIdList, required: true, location_name: "securityGroupIds"))
    BatchCreateUserRequestItem.add_member(:username, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "username"))
    BatchCreateUserRequestItem.add_member(:invite_code, Shapes::ShapeRef.new(shape: GenericString, location_name: "inviteCode"))
    BatchCreateUserRequestItem.add_member(:invite_code_ttl, Shapes::ShapeRef.new(shape: Integer, location_name: "inviteCodeTtl"))
    BatchCreateUserRequestItem.add_member(:code_validation, Shapes::ShapeRef.new(shape: Boolean, location_name: "codeValidation"))
    BatchCreateUserRequestItem.struct_class = Types::BatchCreateUserRequestItem

    BatchCreateUserRequestItems.member = Shapes::ShapeRef.new(shape: BatchCreateUserRequestItem)

    BatchCreateUserResponse.add_member(:message, Shapes::ShapeRef.new(shape: GenericString, location_name: "message"))
    BatchCreateUserResponse.add_member(:successful, Shapes::ShapeRef.new(shape: Users, location_name: "successful"))
    BatchCreateUserResponse.add_member(:failed, Shapes::ShapeRef.new(shape: BatchUserErrorResponseItems, location_name: "failed"))
    BatchCreateUserResponse.struct_class = Types::BatchCreateUserResponse

    BatchDeleteUserRequest.add_member(:network_id, Shapes::ShapeRef.new(shape: NetworkId, required: true, location: "uri", location_name: "networkId"))
    BatchDeleteUserRequest.add_member(:user_ids, Shapes::ShapeRef.new(shape: UserIds, required: true, location_name: "userIds"))
    BatchDeleteUserRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location: "header", location_name: "X-Client-Token", metadata: {"idempotencyToken" => true}))
    BatchDeleteUserRequest.struct_class = Types::BatchDeleteUserRequest

    BatchDeleteUserResponse.add_member(:message, Shapes::ShapeRef.new(shape: GenericString, location_name: "message"))
    BatchDeleteUserResponse.add_member(:successful, Shapes::ShapeRef.new(shape: BatchUserSuccessResponseItems, location_name: "successful"))
    BatchDeleteUserResponse.add_member(:failed, Shapes::ShapeRef.new(shape: BatchUserErrorResponseItems, location_name: "failed"))
    BatchDeleteUserResponse.struct_class = Types::BatchDeleteUserResponse

    BatchDeviceErrorResponseItem.add_member(:field, Shapes::ShapeRef.new(shape: GenericString, location_name: "field"))
    BatchDeviceErrorResponseItem.add_member(:reason, Shapes::ShapeRef.new(shape: GenericString, location_name: "reason"))
    BatchDeviceErrorResponseItem.add_member(:app_id, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "appId"))
    BatchDeviceErrorResponseItem.struct_class = Types::BatchDeviceErrorResponseItem

    BatchDeviceErrorResponseItems.member = Shapes::ShapeRef.new(shape: BatchDeviceErrorResponseItem)

    BatchDeviceSuccessResponseItem.add_member(:app_id, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "appId"))
    BatchDeviceSuccessResponseItem.struct_class = Types::BatchDeviceSuccessResponseItem

    BatchDeviceSuccessResponseItems.member = Shapes::ShapeRef.new(shape: BatchDeviceSuccessResponseItem)

    BatchLookupUserUnameRequest.add_member(:network_id, Shapes::ShapeRef.new(shape: NetworkId, required: true, location: "uri", location_name: "networkId"))
    BatchLookupUserUnameRequest.add_member(:unames, Shapes::ShapeRef.new(shape: Unames, required: true, location_name: "unames"))
    BatchLookupUserUnameRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location: "header", location_name: "X-Client-Token", metadata: {"idempotencyToken" => true}))
    BatchLookupUserUnameRequest.struct_class = Types::BatchLookupUserUnameRequest

    BatchLookupUserUnameResponse.add_member(:message, Shapes::ShapeRef.new(shape: GenericString, location_name: "message"))
    BatchLookupUserUnameResponse.add_member(:successful, Shapes::ShapeRef.new(shape: BatchUnameSuccessResponseItems, location_name: "successful"))
    BatchLookupUserUnameResponse.add_member(:failed, Shapes::ShapeRef.new(shape: BatchUnameErrorResponseItems, location_name: "failed"))
    BatchLookupUserUnameResponse.struct_class = Types::BatchLookupUserUnameResponse

    BatchReinviteUserRequest.add_member(:network_id, Shapes::ShapeRef.new(shape: NetworkId, required: true, location: "uri", location_name: "networkId"))
    BatchReinviteUserRequest.add_member(:user_ids, Shapes::ShapeRef.new(shape: UserIds, required: true, location_name: "userIds"))
    BatchReinviteUserRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location: "header", location_name: "X-Client-Token", metadata: {"idempotencyToken" => true}))
    BatchReinviteUserRequest.struct_class = Types::BatchReinviteUserRequest

    BatchReinviteUserResponse.add_member(:message, Shapes::ShapeRef.new(shape: GenericString, location_name: "message"))
    BatchReinviteUserResponse.add_member(:successful, Shapes::ShapeRef.new(shape: BatchUserSuccessResponseItems, location_name: "successful"))
    BatchReinviteUserResponse.add_member(:failed, Shapes::ShapeRef.new(shape: BatchUserErrorResponseItems, location_name: "failed"))
    BatchReinviteUserResponse.struct_class = Types::BatchReinviteUserResponse

    BatchResetDevicesForUserRequest.add_member(:network_id, Shapes::ShapeRef.new(shape: NetworkId, required: true, location: "uri", location_name: "networkId"))
    BatchResetDevicesForUserRequest.add_member(:user_id, Shapes::ShapeRef.new(shape: UserId, required: true, location: "uri", location_name: "userId"))
    BatchResetDevicesForUserRequest.add_member(:app_ids, Shapes::ShapeRef.new(shape: AppIds, required: true, location_name: "appIds"))
    BatchResetDevicesForUserRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location: "header", location_name: "X-Client-Token", metadata: {"idempotencyToken" => true}))
    BatchResetDevicesForUserRequest.struct_class = Types::BatchResetDevicesForUserRequest

    BatchResetDevicesForUserResponse.add_member(:message, Shapes::ShapeRef.new(shape: GenericString, location_name: "message"))
    BatchResetDevicesForUserResponse.add_member(:successful, Shapes::ShapeRef.new(shape: BatchDeviceSuccessResponseItems, location_name: "successful"))
    BatchResetDevicesForUserResponse.add_member(:failed, Shapes::ShapeRef.new(shape: BatchDeviceErrorResponseItems, location_name: "failed"))
    BatchResetDevicesForUserResponse.struct_class = Types::BatchResetDevicesForUserResponse

    BatchToggleUserSuspendStatusRequest.add_member(:network_id, Shapes::ShapeRef.new(shape: NetworkId, required: true, location: "uri", location_name: "networkId"))
    BatchToggleUserSuspendStatusRequest.add_member(:suspend, Shapes::ShapeRef.new(shape: Boolean, required: true, location: "querystring", location_name: "suspend"))
    BatchToggleUserSuspendStatusRequest.add_member(:user_ids, Shapes::ShapeRef.new(shape: UserIds, required: true, location_name: "userIds"))
    BatchToggleUserSuspendStatusRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location: "header", location_name: "X-Client-Token", metadata: {"idempotencyToken" => true}))
    BatchToggleUserSuspendStatusRequest.struct_class = Types::BatchToggleUserSuspendStatusRequest

    BatchToggleUserSuspendStatusResponse.add_member(:message, Shapes::ShapeRef.new(shape: GenericString, location_name: "message"))
    BatchToggleUserSuspendStatusResponse.add_member(:successful, Shapes::ShapeRef.new(shape: BatchUserSuccessResponseItems, location_name: "successful"))
    BatchToggleUserSuspendStatusResponse.add_member(:failed, Shapes::ShapeRef.new(shape: BatchUserErrorResponseItems, location_name: "failed"))
    BatchToggleUserSuspendStatusResponse.struct_class = Types::BatchToggleUserSuspendStatusResponse

    BatchUnameErrorResponseItem.add_member(:field, Shapes::ShapeRef.new(shape: GenericString, location_name: "field"))
    BatchUnameErrorResponseItem.add_member(:reason, Shapes::ShapeRef.new(shape: GenericString, location_name: "reason"))
    BatchUnameErrorResponseItem.add_member(:uname, Shapes::ShapeRef.new(shape: Uname, required: true, location_name: "uname"))
    BatchUnameErrorResponseItem.struct_class = Types::BatchUnameErrorResponseItem

    BatchUnameErrorResponseItems.member = Shapes::ShapeRef.new(shape: BatchUnameErrorResponseItem)

    BatchUnameSuccessResponseItem.add_member(:uname, Shapes::ShapeRef.new(shape: Uname, required: true, location_name: "uname"))
    BatchUnameSuccessResponseItem.add_member(:username, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "username"))
    BatchUnameSuccessResponseItem.struct_class = Types::BatchUnameSuccessResponseItem

    BatchUnameSuccessResponseItems.member = Shapes::ShapeRef.new(shape: BatchUnameSuccessResponseItem)

    BatchUserErrorResponseItem.add_member(:field, Shapes::ShapeRef.new(shape: GenericString, location_name: "field"))
    BatchUserErrorResponseItem.add_member(:reason, Shapes::ShapeRef.new(shape: GenericString, location_name: "reason"))
    BatchUserErrorResponseItem.add_member(:user_id, Shapes::ShapeRef.new(shape: UserId, required: true, location_name: "userId"))
    BatchUserErrorResponseItem.struct_class = Types::BatchUserErrorResponseItem

    BatchUserErrorResponseItems.member = Shapes::ShapeRef.new(shape: BatchUserErrorResponseItem)

    BatchUserSuccessResponseItem.add_member(:user_id, Shapes::ShapeRef.new(shape: UserId, required: true, location_name: "userId"))
    BatchUserSuccessResponseItem.struct_class = Types::BatchUserSuccessResponseItem

    BatchUserSuccessResponseItems.member = Shapes::ShapeRef.new(shape: BatchUserSuccessResponseItem)

    BlockedGuestUser.add_member(:username, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "username"))
    BlockedGuestUser.add_member(:admin, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "admin"))
    BlockedGuestUser.add_member(:modified, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "modified"))
    BlockedGuestUser.add_member(:username_hash, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "usernameHash"))
    BlockedGuestUser.struct_class = Types::BlockedGuestUser

    BlockedGuestUserList.member = Shapes::ShapeRef.new(shape: BlockedGuestUser)

    Bot.add_member(:bot_id, Shapes::ShapeRef.new(shape: GenericString, location_name: "botId"))
    Bot.add_member(:display_name, Shapes::ShapeRef.new(shape: GenericString, location_name: "displayName"))
    Bot.add_member(:username, Shapes::ShapeRef.new(shape: GenericString, location_name: "username"))
    Bot.add_member(:uname, Shapes::ShapeRef.new(shape: GenericString, location_name: "uname"))
    Bot.add_member(:pubkey, Shapes::ShapeRef.new(shape: GenericString, location_name: "pubkey"))
    Bot.add_member(:status, Shapes::ShapeRef.new(shape: BotStatus, location_name: "status"))
    Bot.add_member(:group_id, Shapes::ShapeRef.new(shape: GenericString, location_name: "groupId"))
    Bot.add_member(:has_challenge, Shapes::ShapeRef.new(shape: Boolean, location_name: "hasChallenge"))
    Bot.add_member(:suspended, Shapes::ShapeRef.new(shape: Boolean, location_name: "suspended"))
    Bot.add_member(:last_login, Shapes::ShapeRef.new(shape: GenericString, location_name: "lastLogin"))
    Bot.struct_class = Types::Bot

    Bots.member = Shapes::ShapeRef.new(shape: Bot)

    CallingSettings.add_member(:can_start_11_call, Shapes::ShapeRef.new(shape: Boolean, location_name: "canStart11Call"))
    CallingSettings.add_member(:can_video_call, Shapes::ShapeRef.new(shape: Boolean, location_name: "canVideoCall"))
    CallingSettings.add_member(:force_tcp_call, Shapes::ShapeRef.new(shape: Boolean, location_name: "forceTcpCall"))
    CallingSettings.struct_class = Types::CallingSettings

    CreateBotRequest.add_member(:network_id, Shapes::ShapeRef.new(shape: NetworkId, required: true, location: "uri", location_name: "networkId"))
    CreateBotRequest.add_member(:username, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "username"))
    CreateBotRequest.add_member(:display_name, Shapes::ShapeRef.new(shape: GenericString, location_name: "displayName"))
    CreateBotRequest.add_member(:group_id, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "groupId"))
    CreateBotRequest.add_member(:challenge, Shapes::ShapeRef.new(shape: SensitiveString, required: true, location_name: "challenge"))
    CreateBotRequest.struct_class = Types::CreateBotRequest

    CreateBotResponse.add_member(:message, Shapes::ShapeRef.new(shape: GenericString, location_name: "message"))
    CreateBotResponse.add_member(:bot_id, Shapes::ShapeRef.new(shape: BotId, required: true, location_name: "botId"))
    CreateBotResponse.add_member(:network_id, Shapes::ShapeRef.new(shape: NetworkId, location_name: "networkId"))
    CreateBotResponse.add_member(:username, Shapes::ShapeRef.new(shape: GenericString, location_name: "username"))
    CreateBotResponse.add_member(:display_name, Shapes::ShapeRef.new(shape: GenericString, location_name: "displayName"))
    CreateBotResponse.add_member(:group_id, Shapes::ShapeRef.new(shape: GenericString, location_name: "groupId"))
    CreateBotResponse.struct_class = Types::CreateBotResponse

    CreateDataRetentionBotChallengeRequest.add_member(:network_id, Shapes::ShapeRef.new(shape: NetworkId, required: true, location: "uri", location_name: "networkId"))
    CreateDataRetentionBotChallengeRequest.struct_class = Types::CreateDataRetentionBotChallengeRequest

    CreateDataRetentionBotChallengeResponse.add_member(:challenge, Shapes::ShapeRef.new(shape: SensitiveString, required: true, location_name: "challenge"))
    CreateDataRetentionBotChallengeResponse.struct_class = Types::CreateDataRetentionBotChallengeResponse

    CreateDataRetentionBotRequest.add_member(:network_id, Shapes::ShapeRef.new(shape: NetworkId, required: true, location: "uri", location_name: "networkId"))
    CreateDataRetentionBotRequest.struct_class = Types::CreateDataRetentionBotRequest

    CreateDataRetentionBotResponse.add_member(:message, Shapes::ShapeRef.new(shape: GenericString, location_name: "message"))
    CreateDataRetentionBotResponse.struct_class = Types::CreateDataRetentionBotResponse

    CreateNetworkRequest.add_member(:network_name, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "networkName"))
    CreateNetworkRequest.add_member(:access_level, Shapes::ShapeRef.new(shape: AccessLevel, required: true, location_name: "accessLevel"))
    CreateNetworkRequest.add_member(:enable_premium_free_trial, Shapes::ShapeRef.new(shape: Boolean, location_name: "enablePremiumFreeTrial"))
    CreateNetworkRequest.add_member(:encryption_key_arn, Shapes::ShapeRef.new(shape: GenericString, location_name: "encryptionKeyArn"))
    CreateNetworkRequest.struct_class = Types::CreateNetworkRequest

    CreateNetworkResponse.add_member(:network_id, Shapes::ShapeRef.new(shape: NetworkId, location_name: "networkId"))
    CreateNetworkResponse.add_member(:network_name, Shapes::ShapeRef.new(shape: GenericString, location_name: "networkName"))
    CreateNetworkResponse.add_member(:encryption_key_arn, Shapes::ShapeRef.new(shape: GenericString, location_name: "encryptionKeyArn"))
    CreateNetworkResponse.struct_class = Types::CreateNetworkResponse

    CreateSecurityGroupRequest.add_member(:network_id, Shapes::ShapeRef.new(shape: NetworkId, required: true, location: "uri", location_name: "networkId"))
    CreateSecurityGroupRequest.add_member(:name, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "name"))
    CreateSecurityGroupRequest.add_member(:security_group_settings, Shapes::ShapeRef.new(shape: SecurityGroupSettingsRequest, required: true, location_name: "securityGroupSettings"))
    CreateSecurityGroupRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location: "header", location_name: "X-Client-Token", metadata: {"idempotencyToken" => true}))
    CreateSecurityGroupRequest.struct_class = Types::CreateSecurityGroupRequest

    CreateSecurityGroupResponse.add_member(:security_group, Shapes::ShapeRef.new(shape: SecurityGroup, required: true, location_name: "securityGroup"))
    CreateSecurityGroupResponse.struct_class = Types::CreateSecurityGroupResponse

    DeleteBotRequest.add_member(:network_id, Shapes::ShapeRef.new(shape: NetworkId, required: true, location: "uri", location_name: "networkId"))
    DeleteBotRequest.add_member(:bot_id, Shapes::ShapeRef.new(shape: BotId, required: true, location: "uri", location_name: "botId"))
    DeleteBotRequest.struct_class = Types::DeleteBotRequest

    DeleteBotResponse.add_member(:message, Shapes::ShapeRef.new(shape: GenericString, location_name: "message"))
    DeleteBotResponse.struct_class = Types::DeleteBotResponse

    DeleteDataRetentionBotRequest.add_member(:network_id, Shapes::ShapeRef.new(shape: NetworkId, required: true, location: "uri", location_name: "networkId"))
    DeleteDataRetentionBotRequest.struct_class = Types::DeleteDataRetentionBotRequest

    DeleteDataRetentionBotResponse.add_member(:message, Shapes::ShapeRef.new(shape: GenericString, location_name: "message"))
    DeleteDataRetentionBotResponse.struct_class = Types::DeleteDataRetentionBotResponse

    DeleteNetworkRequest.add_member(:network_id, Shapes::ShapeRef.new(shape: NetworkId, required: true, location: "uri", location_name: "networkId"))
    DeleteNetworkRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location: "header", location_name: "X-Client-Token", metadata: {"idempotencyToken" => true}))
    DeleteNetworkRequest.struct_class = Types::DeleteNetworkRequest

    DeleteNetworkResponse.add_member(:message, Shapes::ShapeRef.new(shape: GenericString, location_name: "message"))
    DeleteNetworkResponse.struct_class = Types::DeleteNetworkResponse

    DeleteSecurityGroupRequest.add_member(:network_id, Shapes::ShapeRef.new(shape: NetworkId, required: true, location: "uri", location_name: "networkId"))
    DeleteSecurityGroupRequest.add_member(:group_id, Shapes::ShapeRef.new(shape: GenericString, required: true, location: "uri", location_name: "groupId"))
    DeleteSecurityGroupRequest.struct_class = Types::DeleteSecurityGroupRequest

    DeleteSecurityGroupResponse.add_member(:message, Shapes::ShapeRef.new(shape: GenericString, location_name: "message"))
    DeleteSecurityGroupResponse.add_member(:network_id, Shapes::ShapeRef.new(shape: NetworkId, location_name: "networkId"))
    DeleteSecurityGroupResponse.add_member(:group_id, Shapes::ShapeRef.new(shape: GenericString, location_name: "groupId"))
    DeleteSecurityGroupResponse.struct_class = Types::DeleteSecurityGroupResponse

    Devices.member = Shapes::ShapeRef.new(shape: BasicDeviceObject)

    ErrorDetail.add_member(:field, Shapes::ShapeRef.new(shape: GenericString, location_name: "field"))
    ErrorDetail.add_member(:reason, Shapes::ShapeRef.new(shape: GenericString, location_name: "reason"))
    ErrorDetail.struct_class = Types::ErrorDetail

    ErrorDetailList.member = Shapes::ShapeRef.new(shape: ErrorDetail)

    ForbiddenError.add_member(:message, Shapes::ShapeRef.new(shape: GenericString, location_name: "message"))
    ForbiddenError.struct_class = Types::ForbiddenError

    GetBotRequest.add_member(:network_id, Shapes::ShapeRef.new(shape: NetworkId, required: true, location: "uri", location_name: "networkId"))
    GetBotRequest.add_member(:bot_id, Shapes::ShapeRef.new(shape: BotId, required: true, location: "uri", location_name: "botId"))
    GetBotRequest.struct_class = Types::GetBotRequest

    GetBotResponse.add_member(:bot_id, Shapes::ShapeRef.new(shape: GenericString, location_name: "botId"))
    GetBotResponse.add_member(:display_name, Shapes::ShapeRef.new(shape: GenericString, location_name: "displayName"))
    GetBotResponse.add_member(:username, Shapes::ShapeRef.new(shape: GenericString, location_name: "username"))
    GetBotResponse.add_member(:uname, Shapes::ShapeRef.new(shape: GenericString, location_name: "uname"))
    GetBotResponse.add_member(:pubkey, Shapes::ShapeRef.new(shape: GenericString, location_name: "pubkey"))
    GetBotResponse.add_member(:status, Shapes::ShapeRef.new(shape: BotStatus, location_name: "status"))
    GetBotResponse.add_member(:group_id, Shapes::ShapeRef.new(shape: GenericString, location_name: "groupId"))
    GetBotResponse.add_member(:has_challenge, Shapes::ShapeRef.new(shape: Boolean, location_name: "hasChallenge"))
    GetBotResponse.add_member(:suspended, Shapes::ShapeRef.new(shape: Boolean, location_name: "suspended"))
    GetBotResponse.add_member(:last_login, Shapes::ShapeRef.new(shape: GenericString, location_name: "lastLogin"))
    GetBotResponse.struct_class = Types::GetBotResponse

    GetBotsCountRequest.add_member(:network_id, Shapes::ShapeRef.new(shape: NetworkId, required: true, location: "uri", location_name: "networkId"))
    GetBotsCountRequest.struct_class = Types::GetBotsCountRequest

    GetBotsCountResponse.add_member(:pending, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "pending"))
    GetBotsCountResponse.add_member(:active, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "active"))
    GetBotsCountResponse.add_member(:total, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "total"))
    GetBotsCountResponse.struct_class = Types::GetBotsCountResponse

    GetDataRetentionBotRequest.add_member(:network_id, Shapes::ShapeRef.new(shape: NetworkId, required: true, location: "uri", location_name: "networkId"))
    GetDataRetentionBotRequest.struct_class = Types::GetDataRetentionBotRequest

    GetDataRetentionBotResponse.add_member(:bot_name, Shapes::ShapeRef.new(shape: GenericString, location_name: "botName"))
    GetDataRetentionBotResponse.add_member(:bot_exists, Shapes::ShapeRef.new(shape: Boolean, location_name: "botExists"))
    GetDataRetentionBotResponse.add_member(:is_bot_active, Shapes::ShapeRef.new(shape: Boolean, location_name: "isBotActive"))
    GetDataRetentionBotResponse.add_member(:is_data_retention_bot_registered, Shapes::ShapeRef.new(shape: Boolean, location_name: "isDataRetentionBotRegistered"))
    GetDataRetentionBotResponse.add_member(:is_data_retention_service_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "isDataRetentionServiceEnabled"))
    GetDataRetentionBotResponse.add_member(:is_pubkey_msg_acked, Shapes::ShapeRef.new(shape: Boolean, location_name: "isPubkeyMsgAcked"))
    GetDataRetentionBotResponse.struct_class = Types::GetDataRetentionBotResponse

    GetGuestUserHistoryCountRequest.add_member(:network_id, Shapes::ShapeRef.new(shape: NetworkId, required: true, location: "uri", location_name: "networkId"))
    GetGuestUserHistoryCountRequest.struct_class = Types::GetGuestUserHistoryCountRequest

    GetGuestUserHistoryCountResponse.add_member(:history, Shapes::ShapeRef.new(shape: GuestUserHistoryCountList, required: true, location_name: "history"))
    GetGuestUserHistoryCountResponse.struct_class = Types::GetGuestUserHistoryCountResponse

    GetNetworkRequest.add_member(:network_id, Shapes::ShapeRef.new(shape: NetworkId, required: true, location: "uri", location_name: "networkId"))
    GetNetworkRequest.struct_class = Types::GetNetworkRequest

    GetNetworkResponse.add_member(:network_id, Shapes::ShapeRef.new(shape: NetworkId, required: true, location_name: "networkId"))
    GetNetworkResponse.add_member(:network_name, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "networkName"))
    GetNetworkResponse.add_member(:access_level, Shapes::ShapeRef.new(shape: AccessLevel, required: true, location_name: "accessLevel"))
    GetNetworkResponse.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "awsAccountId"))
    GetNetworkResponse.add_member(:network_arn, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "networkArn"))
    GetNetworkResponse.add_member(:standing, Shapes::ShapeRef.new(shape: Integer, location_name: "standing"))
    GetNetworkResponse.add_member(:free_trial_expiration, Shapes::ShapeRef.new(shape: GenericString, location_name: "freeTrialExpiration"))
    GetNetworkResponse.add_member(:migration_state, Shapes::ShapeRef.new(shape: Integer, location_name: "migrationState"))
    GetNetworkResponse.add_member(:encryption_key_arn, Shapes::ShapeRef.new(shape: GenericString, location_name: "encryptionKeyArn"))
    GetNetworkResponse.struct_class = Types::GetNetworkResponse

    GetNetworkSettingsRequest.add_member(:network_id, Shapes::ShapeRef.new(shape: NetworkId, required: true, location: "uri", location_name: "networkId"))
    GetNetworkSettingsRequest.struct_class = Types::GetNetworkSettingsRequest

    GetNetworkSettingsResponse.add_member(:settings, Shapes::ShapeRef.new(shape: SettingsList, required: true, location_name: "settings"))
    GetNetworkSettingsResponse.struct_class = Types::GetNetworkSettingsResponse

    GetOidcInfoRequest.add_member(:network_id, Shapes::ShapeRef.new(shape: NetworkId, required: true, location: "uri", location_name: "networkId"))
    GetOidcInfoRequest.add_member(:client_id, Shapes::ShapeRef.new(shape: GenericString, location: "querystring", location_name: "clientId"))
    GetOidcInfoRequest.add_member(:code, Shapes::ShapeRef.new(shape: GenericString, location: "querystring", location_name: "code"))
    GetOidcInfoRequest.add_member(:grant_type, Shapes::ShapeRef.new(shape: GenericString, location: "querystring", location_name: "grantType"))
    GetOidcInfoRequest.add_member(:redirect_uri, Shapes::ShapeRef.new(shape: GenericString, location: "querystring", location_name: "redirectUri"))
    GetOidcInfoRequest.add_member(:url, Shapes::ShapeRef.new(shape: GenericString, location: "querystring", location_name: "url"))
    GetOidcInfoRequest.add_member(:client_secret, Shapes::ShapeRef.new(shape: SensitiveString, location: "querystring", location_name: "clientSecret"))
    GetOidcInfoRequest.add_member(:code_verifier, Shapes::ShapeRef.new(shape: GenericString, location: "querystring", location_name: "codeVerifier"))
    GetOidcInfoRequest.add_member(:certificate, Shapes::ShapeRef.new(shape: GenericString, location: "querystring", location_name: "certificate"))
    GetOidcInfoRequest.struct_class = Types::GetOidcInfoRequest

    GetOidcInfoResponse.add_member(:openid_connect_info, Shapes::ShapeRef.new(shape: OidcConfigInfo, location_name: "openidConnectInfo"))
    GetOidcInfoResponse.add_member(:token_info, Shapes::ShapeRef.new(shape: OidcTokenInfo, location_name: "tokenInfo"))
    GetOidcInfoResponse.struct_class = Types::GetOidcInfoResponse

    GetOpentdfConfigRequest.add_member(:network_id, Shapes::ShapeRef.new(shape: NetworkId, required: true, location: "uri", location_name: "networkId"))
    GetOpentdfConfigRequest.struct_class = Types::GetOpentdfConfigRequest

    GetOpentdfConfigResponse.add_member(:client_id, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "clientId"))
    GetOpentdfConfigResponse.add_member(:domain, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "domain"))
    GetOpentdfConfigResponse.add_member(:client_secret, Shapes::ShapeRef.new(shape: SensitiveString, required: true, location_name: "clientSecret"))
    GetOpentdfConfigResponse.add_member(:provider, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "provider"))
    GetOpentdfConfigResponse.struct_class = Types::GetOpentdfConfigResponse

    GetSecurityGroupRequest.add_member(:network_id, Shapes::ShapeRef.new(shape: NetworkId, required: true, location: "uri", location_name: "networkId"))
    GetSecurityGroupRequest.add_member(:group_id, Shapes::ShapeRef.new(shape: GenericString, required: true, location: "uri", location_name: "groupId"))
    GetSecurityGroupRequest.struct_class = Types::GetSecurityGroupRequest

    GetSecurityGroupResponse.add_member(:security_group, Shapes::ShapeRef.new(shape: SecurityGroup, required: true, location_name: "securityGroup"))
    GetSecurityGroupResponse.struct_class = Types::GetSecurityGroupResponse

    GetUserRequest.add_member(:network_id, Shapes::ShapeRef.new(shape: NetworkId, required: true, location: "uri", location_name: "networkId"))
    GetUserRequest.add_member(:user_id, Shapes::ShapeRef.new(shape: UserId, required: true, location: "uri", location_name: "userId"))
    GetUserRequest.add_member(:start_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_epoch_seconds, location: "querystring", location_name: "startTime"))
    GetUserRequest.add_member(:end_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_epoch_seconds, location: "querystring", location_name: "endTime"))
    GetUserRequest.struct_class = Types::GetUserRequest

    GetUserResponse.add_member(:user_id, Shapes::ShapeRef.new(shape: UserId, required: true, location_name: "userId"))
    GetUserResponse.add_member(:first_name, Shapes::ShapeRef.new(shape: SensitiveString, location_name: "firstName"))
    GetUserResponse.add_member(:last_name, Shapes::ShapeRef.new(shape: SensitiveString, location_name: "lastName"))
    GetUserResponse.add_member(:username, Shapes::ShapeRef.new(shape: GenericString, location_name: "username"))
    GetUserResponse.add_member(:is_admin, Shapes::ShapeRef.new(shape: Boolean, location_name: "isAdmin"))
    GetUserResponse.add_member(:suspended, Shapes::ShapeRef.new(shape: Boolean, location_name: "suspended"))
    GetUserResponse.add_member(:status, Shapes::ShapeRef.new(shape: Integer, location_name: "status"))
    GetUserResponse.add_member(:last_activity, Shapes::ShapeRef.new(shape: Integer, location_name: "lastActivity"))
    GetUserResponse.add_member(:last_login, Shapes::ShapeRef.new(shape: Integer, location_name: "lastLogin"))
    GetUserResponse.add_member(:security_group_ids, Shapes::ShapeRef.new(shape: SecurityGroupIdList, location_name: "securityGroupIds"))
    GetUserResponse.struct_class = Types::GetUserResponse

    GetUsersCountRequest.add_member(:network_id, Shapes::ShapeRef.new(shape: NetworkId, required: true, location: "uri", location_name: "networkId"))
    GetUsersCountRequest.struct_class = Types::GetUsersCountRequest

    GetUsersCountResponse.add_member(:pending, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "pending"))
    GetUsersCountResponse.add_member(:active, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "active"))
    GetUsersCountResponse.add_member(:rejected, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "rejected"))
    GetUsersCountResponse.add_member(:remaining, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "remaining"))
    GetUsersCountResponse.add_member(:total, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "total"))
    GetUsersCountResponse.struct_class = Types::GetUsersCountResponse

    GuestUser.add_member(:billing_period, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "billingPeriod"))
    GuestUser.add_member(:username, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "username"))
    GuestUser.add_member(:username_hash, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "usernameHash"))
    GuestUser.struct_class = Types::GuestUser

    GuestUserHistoryCount.add_member(:month, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "month"))
    GuestUserHistoryCount.add_member(:count, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "count"))
    GuestUserHistoryCount.struct_class = Types::GuestUserHistoryCount

    GuestUserHistoryCountList.member = Shapes::ShapeRef.new(shape: GuestUserHistoryCount)

    GuestUserList.member = Shapes::ShapeRef.new(shape: GuestUser)

    InternalServerError.add_member(:message, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "message"))
    InternalServerError.struct_class = Types::InternalServerError

    ListBlockedGuestUsersRequest.add_member(:network_id, Shapes::ShapeRef.new(shape: NetworkId, required: true, location: "uri", location_name: "networkId"))
    ListBlockedGuestUsersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: Integer, location: "querystring", location_name: "maxResults"))
    ListBlockedGuestUsersRequest.add_member(:sort_direction, Shapes::ShapeRef.new(shape: SortDirection, location: "querystring", location_name: "sortDirection"))
    ListBlockedGuestUsersRequest.add_member(:sort_fields, Shapes::ShapeRef.new(shape: GenericString, location: "querystring", location_name: "sortFields"))
    ListBlockedGuestUsersRequest.add_member(:username, Shapes::ShapeRef.new(shape: GenericString, location: "querystring", location_name: "username"))
    ListBlockedGuestUsersRequest.add_member(:admin, Shapes::ShapeRef.new(shape: GenericString, location: "querystring", location_name: "admin"))
    ListBlockedGuestUsersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: GenericString, location: "querystring", location_name: "nextToken"))
    ListBlockedGuestUsersRequest.struct_class = Types::ListBlockedGuestUsersRequest

    ListBlockedGuestUsersResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: GenericString, location_name: "nextToken"))
    ListBlockedGuestUsersResponse.add_member(:blocklist, Shapes::ShapeRef.new(shape: BlockedGuestUserList, required: true, location_name: "blocklist"))
    ListBlockedGuestUsersResponse.struct_class = Types::ListBlockedGuestUsersResponse

    ListBotsRequest.add_member(:network_id, Shapes::ShapeRef.new(shape: NetworkId, required: true, location: "uri", location_name: "networkId"))
    ListBotsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: GenericString, location: "querystring", location_name: "nextToken"))
    ListBotsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: Integer, location: "querystring", location_name: "maxResults"))
    ListBotsRequest.add_member(:sort_fields, Shapes::ShapeRef.new(shape: GenericString, location: "querystring", location_name: "sortFields"))
    ListBotsRequest.add_member(:sort_direction, Shapes::ShapeRef.new(shape: SortDirection, location: "querystring", location_name: "sortDirection"))
    ListBotsRequest.add_member(:display_name, Shapes::ShapeRef.new(shape: GenericString, location: "querystring", location_name: "displayName"))
    ListBotsRequest.add_member(:username, Shapes::ShapeRef.new(shape: GenericString, location: "querystring", location_name: "username"))
    ListBotsRequest.add_member(:status, Shapes::ShapeRef.new(shape: BotStatus, location: "querystring", location_name: "status"))
    ListBotsRequest.add_member(:group_id, Shapes::ShapeRef.new(shape: GenericString, location: "querystring", location_name: "groupId"))
    ListBotsRequest.struct_class = Types::ListBotsRequest

    ListBotsResponse.add_member(:bots, Shapes::ShapeRef.new(shape: Bots, required: true, location_name: "bots"))
    ListBotsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: GenericString, location_name: "nextToken"))
    ListBotsResponse.struct_class = Types::ListBotsResponse

    ListDevicesForUserRequest.add_member(:network_id, Shapes::ShapeRef.new(shape: NetworkId, required: true, location: "uri", location_name: "networkId"))
    ListDevicesForUserRequest.add_member(:user_id, Shapes::ShapeRef.new(shape: UserId, required: true, location: "uri", location_name: "userId"))
    ListDevicesForUserRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: GenericString, location: "querystring", location_name: "nextToken"))
    ListDevicesForUserRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: Integer, location: "querystring", location_name: "maxResults"))
    ListDevicesForUserRequest.add_member(:sort_fields, Shapes::ShapeRef.new(shape: GenericString, location: "querystring", location_name: "sortFields"))
    ListDevicesForUserRequest.add_member(:sort_direction, Shapes::ShapeRef.new(shape: SortDirection, location: "querystring", location_name: "sortDirection"))
    ListDevicesForUserRequest.struct_class = Types::ListDevicesForUserRequest

    ListDevicesForUserResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: GenericString, location_name: "nextToken"))
    ListDevicesForUserResponse.add_member(:devices, Shapes::ShapeRef.new(shape: Devices, required: true, location_name: "devices"))
    ListDevicesForUserResponse.struct_class = Types::ListDevicesForUserResponse

    ListGuestUsersRequest.add_member(:network_id, Shapes::ShapeRef.new(shape: NetworkId, required: true, location: "uri", location_name: "networkId"))
    ListGuestUsersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: Integer, location: "querystring", location_name: "maxResults"))
    ListGuestUsersRequest.add_member(:sort_direction, Shapes::ShapeRef.new(shape: SortDirection, location: "querystring", location_name: "sortDirection"))
    ListGuestUsersRequest.add_member(:sort_fields, Shapes::ShapeRef.new(shape: GenericString, location: "querystring", location_name: "sortFields"))
    ListGuestUsersRequest.add_member(:username, Shapes::ShapeRef.new(shape: GenericString, location: "querystring", location_name: "username"))
    ListGuestUsersRequest.add_member(:billing_period, Shapes::ShapeRef.new(shape: GenericString, location: "querystring", location_name: "billingPeriod"))
    ListGuestUsersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: GenericString, location: "querystring", location_name: "nextToken"))
    ListGuestUsersRequest.struct_class = Types::ListGuestUsersRequest

    ListGuestUsersResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: GenericString, location_name: "nextToken"))
    ListGuestUsersResponse.add_member(:guestlist, Shapes::ShapeRef.new(shape: GuestUserList, required: true, location_name: "guestlist"))
    ListGuestUsersResponse.struct_class = Types::ListGuestUsersResponse

    ListNetworksRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: Integer, location: "querystring", location_name: "maxResults"))
    ListNetworksRequest.add_member(:sort_fields, Shapes::ShapeRef.new(shape: GenericString, location: "querystring", location_name: "sortFields"))
    ListNetworksRequest.add_member(:sort_direction, Shapes::ShapeRef.new(shape: SortDirection, location: "querystring", location_name: "sortDirection"))
    ListNetworksRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: GenericString, location: "querystring", location_name: "nextToken"))
    ListNetworksRequest.struct_class = Types::ListNetworksRequest

    ListNetworksResponse.add_member(:networks, Shapes::ShapeRef.new(shape: NetworkList, required: true, location_name: "networks"))
    ListNetworksResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: GenericString, location_name: "nextToken"))
    ListNetworksResponse.struct_class = Types::ListNetworksResponse

    ListSecurityGroupUsersRequest.add_member(:network_id, Shapes::ShapeRef.new(shape: NetworkId, required: true, location: "uri", location_name: "networkId"))
    ListSecurityGroupUsersRequest.add_member(:group_id, Shapes::ShapeRef.new(shape: GenericString, required: true, location: "uri", location_name: "groupId"))
    ListSecurityGroupUsersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: GenericString, location: "querystring", location_name: "nextToken"))
    ListSecurityGroupUsersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: Integer, location: "querystring", location_name: "maxResults"))
    ListSecurityGroupUsersRequest.add_member(:sort_fields, Shapes::ShapeRef.new(shape: GenericString, location: "querystring", location_name: "sortFields"))
    ListSecurityGroupUsersRequest.add_member(:sort_direction, Shapes::ShapeRef.new(shape: SortDirection, location: "querystring", location_name: "sortDirection"))
    ListSecurityGroupUsersRequest.struct_class = Types::ListSecurityGroupUsersRequest

    ListSecurityGroupUsersResponse.add_member(:users, Shapes::ShapeRef.new(shape: Users, required: true, location_name: "users"))
    ListSecurityGroupUsersResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: GenericString, location_name: "nextToken"))
    ListSecurityGroupUsersResponse.struct_class = Types::ListSecurityGroupUsersResponse

    ListSecurityGroupsRequest.add_member(:network_id, Shapes::ShapeRef.new(shape: NetworkId, required: true, location: "uri", location_name: "networkId"))
    ListSecurityGroupsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: GenericString, location: "querystring", location_name: "nextToken"))
    ListSecurityGroupsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: Integer, location: "querystring", location_name: "maxResults"))
    ListSecurityGroupsRequest.add_member(:sort_fields, Shapes::ShapeRef.new(shape: GenericString, location: "querystring", location_name: "sortFields"))
    ListSecurityGroupsRequest.add_member(:sort_direction, Shapes::ShapeRef.new(shape: SortDirection, location: "querystring", location_name: "sortDirection"))
    ListSecurityGroupsRequest.struct_class = Types::ListSecurityGroupsRequest

    ListSecurityGroupsResponse.add_member(:security_groups, Shapes::ShapeRef.new(shape: SecurityGroupList, location_name: "securityGroups"))
    ListSecurityGroupsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: GenericString, location_name: "nextToken"))
    ListSecurityGroupsResponse.struct_class = Types::ListSecurityGroupsResponse

    ListUsersRequest.add_member(:network_id, Shapes::ShapeRef.new(shape: NetworkId, required: true, location: "uri", location_name: "networkId"))
    ListUsersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: GenericString, location: "querystring", location_name: "nextToken"))
    ListUsersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: Integer, location: "querystring", location_name: "maxResults"))
    ListUsersRequest.add_member(:sort_fields, Shapes::ShapeRef.new(shape: GenericString, location: "querystring", location_name: "sortFields"))
    ListUsersRequest.add_member(:sort_direction, Shapes::ShapeRef.new(shape: SortDirection, location: "querystring", location_name: "sortDirection"))
    ListUsersRequest.add_member(:first_name, Shapes::ShapeRef.new(shape: SensitiveString, location: "querystring", location_name: "firstName"))
    ListUsersRequest.add_member(:last_name, Shapes::ShapeRef.new(shape: SensitiveString, location: "querystring", location_name: "lastName"))
    ListUsersRequest.add_member(:username, Shapes::ShapeRef.new(shape: GenericString, location: "querystring", location_name: "username"))
    ListUsersRequest.add_member(:status, Shapes::ShapeRef.new(shape: UserStatus, location: "querystring", location_name: "status"))
    ListUsersRequest.add_member(:group_id, Shapes::ShapeRef.new(shape: GenericString, location: "querystring", location_name: "groupId"))
    ListUsersRequest.struct_class = Types::ListUsersRequest

    ListUsersResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: GenericString, location_name: "nextToken"))
    ListUsersResponse.add_member(:users, Shapes::ShapeRef.new(shape: Users, location_name: "users"))
    ListUsersResponse.struct_class = Types::ListUsersResponse

    Network.add_member(:network_id, Shapes::ShapeRef.new(shape: NetworkId, required: true, location_name: "networkId"))
    Network.add_member(:network_name, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "networkName"))
    Network.add_member(:access_level, Shapes::ShapeRef.new(shape: AccessLevel, required: true, location_name: "accessLevel"))
    Network.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "awsAccountId"))
    Network.add_member(:network_arn, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "networkArn"))
    Network.add_member(:standing, Shapes::ShapeRef.new(shape: Integer, location_name: "standing"))
    Network.add_member(:free_trial_expiration, Shapes::ShapeRef.new(shape: GenericString, location_name: "freeTrialExpiration"))
    Network.add_member(:migration_state, Shapes::ShapeRef.new(shape: Integer, location_name: "migrationState"))
    Network.add_member(:encryption_key_arn, Shapes::ShapeRef.new(shape: GenericString, location_name: "encryptionKeyArn"))
    Network.struct_class = Types::Network

    NetworkList.member = Shapes::ShapeRef.new(shape: Network)

    NetworkSettings.add_member(:enable_client_metrics, Shapes::ShapeRef.new(shape: Boolean, location_name: "enableClientMetrics"))
    NetworkSettings.add_member(:read_receipt_config, Shapes::ShapeRef.new(shape: ReadReceiptConfig, location_name: "readReceiptConfig"))
    NetworkSettings.add_member(:data_retention, Shapes::ShapeRef.new(shape: Boolean, location_name: "dataRetention"))
    NetworkSettings.add_member(:enable_trusted_data_format, Shapes::ShapeRef.new(shape: Boolean, location_name: "enableTrustedDataFormat"))
    NetworkSettings.struct_class = Types::NetworkSettings

    OidcConfigInfo.add_member(:application_name, Shapes::ShapeRef.new(shape: GenericString, location_name: "applicationName"))
    OidcConfigInfo.add_member(:client_id, Shapes::ShapeRef.new(shape: GenericString, location_name: "clientId"))
    OidcConfigInfo.add_member(:company_id, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "companyId"))
    OidcConfigInfo.add_member(:scopes, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "scopes"))
    OidcConfigInfo.add_member(:issuer, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "issuer"))
    OidcConfigInfo.add_member(:client_secret, Shapes::ShapeRef.new(shape: SensitiveString, location_name: "clientSecret"))
    OidcConfigInfo.add_member(:secret, Shapes::ShapeRef.new(shape: SensitiveString, location_name: "secret"))
    OidcConfigInfo.add_member(:redirect_url, Shapes::ShapeRef.new(shape: GenericString, location_name: "redirectUrl"))
    OidcConfigInfo.add_member(:user_id, Shapes::ShapeRef.new(shape: GenericString, location_name: "userId"))
    OidcConfigInfo.add_member(:custom_username, Shapes::ShapeRef.new(shape: GenericString, location_name: "customUsername"))
    OidcConfigInfo.add_member(:ca_certificate, Shapes::ShapeRef.new(shape: GenericString, location_name: "caCertificate"))
    OidcConfigInfo.add_member(:application_id, Shapes::ShapeRef.new(shape: OidcConfigInfoApplicationIdInteger, location_name: "applicationId"))
    OidcConfigInfo.add_member(:sso_token_buffer_minutes, Shapes::ShapeRef.new(shape: Integer, location_name: "ssoTokenBufferMinutes"))
    OidcConfigInfo.add_member(:extra_auth_params, Shapes::ShapeRef.new(shape: GenericString, location_name: "extraAuthParams"))
    OidcConfigInfo.struct_class = Types::OidcConfigInfo

    OidcTokenInfo.add_member(:code_verifier, Shapes::ShapeRef.new(shape: GenericString, location_name: "codeVerifier"))
    OidcTokenInfo.add_member(:code_challenge, Shapes::ShapeRef.new(shape: GenericString, location_name: "codeChallenge"))
    OidcTokenInfo.add_member(:access_token, Shapes::ShapeRef.new(shape: GenericString, location_name: "accessToken"))
    OidcTokenInfo.add_member(:id_token, Shapes::ShapeRef.new(shape: GenericString, location_name: "idToken"))
    OidcTokenInfo.add_member(:refresh_token, Shapes::ShapeRef.new(shape: GenericString, location_name: "refreshToken"))
    OidcTokenInfo.add_member(:token_type, Shapes::ShapeRef.new(shape: GenericString, location_name: "tokenType"))
    OidcTokenInfo.add_member(:expires_in, Shapes::ShapeRef.new(shape: Long, location_name: "expiresIn"))
    OidcTokenInfo.struct_class = Types::OidcTokenInfo

    PasswordRequirements.add_member(:lowercase, Shapes::ShapeRef.new(shape: Integer, location_name: "lowercase"))
    PasswordRequirements.add_member(:min_length, Shapes::ShapeRef.new(shape: Integer, location_name: "minLength"))
    PasswordRequirements.add_member(:numbers, Shapes::ShapeRef.new(shape: Integer, location_name: "numbers"))
    PasswordRequirements.add_member(:symbols, Shapes::ShapeRef.new(shape: Integer, location_name: "symbols"))
    PasswordRequirements.add_member(:uppercase, Shapes::ShapeRef.new(shape: Integer, location_name: "uppercase"))
    PasswordRequirements.struct_class = Types::PasswordRequirements

    PermittedNetworksList.member = Shapes::ShapeRef.new(shape: NetworkId)

    PermittedWickrEnterpriseNetwork.add_member(:domain, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "domain"))
    PermittedWickrEnterpriseNetwork.add_member(:network_id, Shapes::ShapeRef.new(shape: NetworkId, required: true, location_name: "networkId"))
    PermittedWickrEnterpriseNetwork.struct_class = Types::PermittedWickrEnterpriseNetwork

    PermittedWickrEnterpriseNetworksList.member = Shapes::ShapeRef.new(shape: PermittedWickrEnterpriseNetwork)

    RateLimitError.add_member(:message, Shapes::ShapeRef.new(shape: GenericString, location_name: "message"))
    RateLimitError.struct_class = Types::RateLimitError

    ReadReceiptConfig.add_member(:status, Shapes::ShapeRef.new(shape: Status, location_name: "status"))
    ReadReceiptConfig.struct_class = Types::ReadReceiptConfig

    RegisterOidcConfigRequest.add_member(:network_id, Shapes::ShapeRef.new(shape: NetworkId, required: true, location: "uri", location_name: "networkId"))
    RegisterOidcConfigRequest.add_member(:company_id, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "companyId"))
    RegisterOidcConfigRequest.add_member(:custom_username, Shapes::ShapeRef.new(shape: GenericString, location_name: "customUsername"))
    RegisterOidcConfigRequest.add_member(:extra_auth_params, Shapes::ShapeRef.new(shape: GenericString, location_name: "extraAuthParams"))
    RegisterOidcConfigRequest.add_member(:issuer, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "issuer"))
    RegisterOidcConfigRequest.add_member(:scopes, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "scopes"))
    RegisterOidcConfigRequest.add_member(:secret, Shapes::ShapeRef.new(shape: SensitiveString, location_name: "secret"))
    RegisterOidcConfigRequest.add_member(:sso_token_buffer_minutes, Shapes::ShapeRef.new(shape: Integer, location_name: "ssoTokenBufferMinutes"))
    RegisterOidcConfigRequest.add_member(:user_id, Shapes::ShapeRef.new(shape: GenericString, location_name: "userId"))
    RegisterOidcConfigRequest.struct_class = Types::RegisterOidcConfigRequest

    RegisterOidcConfigResponse.add_member(:application_name, Shapes::ShapeRef.new(shape: GenericString, location_name: "applicationName"))
    RegisterOidcConfigResponse.add_member(:client_id, Shapes::ShapeRef.new(shape: GenericString, location_name: "clientId"))
    RegisterOidcConfigResponse.add_member(:company_id, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "companyId"))
    RegisterOidcConfigResponse.add_member(:scopes, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "scopes"))
    RegisterOidcConfigResponse.add_member(:issuer, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "issuer"))
    RegisterOidcConfigResponse.add_member(:client_secret, Shapes::ShapeRef.new(shape: SensitiveString, location_name: "clientSecret"))
    RegisterOidcConfigResponse.add_member(:secret, Shapes::ShapeRef.new(shape: SensitiveString, location_name: "secret"))
    RegisterOidcConfigResponse.add_member(:redirect_url, Shapes::ShapeRef.new(shape: GenericString, location_name: "redirectUrl"))
    RegisterOidcConfigResponse.add_member(:user_id, Shapes::ShapeRef.new(shape: GenericString, location_name: "userId"))
    RegisterOidcConfigResponse.add_member(:custom_username, Shapes::ShapeRef.new(shape: GenericString, location_name: "customUsername"))
    RegisterOidcConfigResponse.add_member(:ca_certificate, Shapes::ShapeRef.new(shape: GenericString, location_name: "caCertificate"))
    RegisterOidcConfigResponse.add_member(:application_id, Shapes::ShapeRef.new(shape: RegisterOidcConfigResponseApplicationIdInteger, location_name: "applicationId"))
    RegisterOidcConfigResponse.add_member(:sso_token_buffer_minutes, Shapes::ShapeRef.new(shape: Integer, location_name: "ssoTokenBufferMinutes"))
    RegisterOidcConfigResponse.add_member(:extra_auth_params, Shapes::ShapeRef.new(shape: GenericString, location_name: "extraAuthParams"))
    RegisterOidcConfigResponse.struct_class = Types::RegisterOidcConfigResponse

    RegisterOidcConfigTestRequest.add_member(:network_id, Shapes::ShapeRef.new(shape: NetworkId, required: true, location: "uri", location_name: "networkId"))
    RegisterOidcConfigTestRequest.add_member(:extra_auth_params, Shapes::ShapeRef.new(shape: GenericString, location_name: "extraAuthParams"))
    RegisterOidcConfigTestRequest.add_member(:issuer, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "issuer"))
    RegisterOidcConfigTestRequest.add_member(:scopes, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "scopes"))
    RegisterOidcConfigTestRequest.add_member(:certificate, Shapes::ShapeRef.new(shape: GenericString, location_name: "certificate"))
    RegisterOidcConfigTestRequest.struct_class = Types::RegisterOidcConfigTestRequest

    RegisterOidcConfigTestResponse.add_member(:token_endpoint, Shapes::ShapeRef.new(shape: GenericString, location_name: "tokenEndpoint"))
    RegisterOidcConfigTestResponse.add_member(:userinfo_endpoint, Shapes::ShapeRef.new(shape: GenericString, location_name: "userinfoEndpoint"))
    RegisterOidcConfigTestResponse.add_member(:response_types_supported, Shapes::ShapeRef.new(shape: StringList, location_name: "responseTypesSupported"))
    RegisterOidcConfigTestResponse.add_member(:scopes_supported, Shapes::ShapeRef.new(shape: StringList, location_name: "scopesSupported"))
    RegisterOidcConfigTestResponse.add_member(:issuer, Shapes::ShapeRef.new(shape: GenericString, location_name: "issuer"))
    RegisterOidcConfigTestResponse.add_member(:authorization_endpoint, Shapes::ShapeRef.new(shape: GenericString, location_name: "authorizationEndpoint"))
    RegisterOidcConfigTestResponse.add_member(:end_session_endpoint, Shapes::ShapeRef.new(shape: GenericString, location_name: "endSessionEndpoint"))
    RegisterOidcConfigTestResponse.add_member(:logout_endpoint, Shapes::ShapeRef.new(shape: GenericString, location_name: "logoutEndpoint"))
    RegisterOidcConfigTestResponse.add_member(:grant_types_supported, Shapes::ShapeRef.new(shape: StringList, location_name: "grantTypesSupported"))
    RegisterOidcConfigTestResponse.add_member(:revocation_endpoint, Shapes::ShapeRef.new(shape: GenericString, location_name: "revocationEndpoint"))
    RegisterOidcConfigTestResponse.add_member(:token_endpoint_auth_methods_supported, Shapes::ShapeRef.new(shape: StringList, location_name: "tokenEndpointAuthMethodsSupported"))
    RegisterOidcConfigTestResponse.add_member(:microsoft_multi_refresh_token, Shapes::ShapeRef.new(shape: Boolean, location_name: "microsoftMultiRefreshToken"))
    RegisterOidcConfigTestResponse.struct_class = Types::RegisterOidcConfigTestResponse

    RegisterOpentdfConfigRequest.add_member(:network_id, Shapes::ShapeRef.new(shape: NetworkId, required: true, location: "uri", location_name: "networkId"))
    RegisterOpentdfConfigRequest.add_member(:client_id, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "clientId"))
    RegisterOpentdfConfigRequest.add_member(:client_secret, Shapes::ShapeRef.new(shape: SensitiveString, required: true, location_name: "clientSecret"))
    RegisterOpentdfConfigRequest.add_member(:domain, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "domain"))
    RegisterOpentdfConfigRequest.add_member(:provider, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "provider"))
    RegisterOpentdfConfigRequest.add_member(:dry_run, Shapes::ShapeRef.new(shape: Boolean, location: "querystring", location_name: "dryRun"))
    RegisterOpentdfConfigRequest.struct_class = Types::RegisterOpentdfConfigRequest

    RegisterOpentdfConfigResponse.add_member(:client_id, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "clientId"))
    RegisterOpentdfConfigResponse.add_member(:domain, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "domain"))
    RegisterOpentdfConfigResponse.add_member(:client_secret, Shapes::ShapeRef.new(shape: SensitiveString, required: true, location_name: "clientSecret"))
    RegisterOpentdfConfigResponse.add_member(:provider, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "provider"))
    RegisterOpentdfConfigResponse.struct_class = Types::RegisterOpentdfConfigResponse

    ResourceNotFoundError.add_member(:message, Shapes::ShapeRef.new(shape: GenericString, location_name: "message"))
    ResourceNotFoundError.struct_class = Types::ResourceNotFoundError

    SecurityGroup.add_member(:active_members, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "activeMembers"))
    SecurityGroup.add_member(:bot_members, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "botMembers"))
    SecurityGroup.add_member(:active_directory_guid, Shapes::ShapeRef.new(shape: GenericString, location_name: "activeDirectoryGuid"))
    SecurityGroup.add_member(:id, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "id"))
    SecurityGroup.add_member(:is_default, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "isDefault"))
    SecurityGroup.add_member(:name, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "name"))
    SecurityGroup.add_member(:modified, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "modified"))
    SecurityGroup.add_member(:security_group_settings, Shapes::ShapeRef.new(shape: SecurityGroupSettings, required: true, location_name: "securityGroupSettings"))
    SecurityGroup.struct_class = Types::SecurityGroup

    SecurityGroupIdList.member = Shapes::ShapeRef.new(shape: SecurityGroupId)

    SecurityGroupList.member = Shapes::ShapeRef.new(shape: SecurityGroup)

    SecurityGroupSettings.add_member(:always_reauthenticate, Shapes::ShapeRef.new(shape: Boolean, location_name: "alwaysReauthenticate"))
    SecurityGroupSettings.add_member(:atak_package_values, Shapes::ShapeRef.new(shape: SecurityGroupStringList, location_name: "atakPackageValues"))
    SecurityGroupSettings.add_member(:calling, Shapes::ShapeRef.new(shape: CallingSettings, location_name: "calling"))
    SecurityGroupSettings.add_member(:check_for_updates, Shapes::ShapeRef.new(shape: Boolean, location_name: "checkForUpdates"))
    SecurityGroupSettings.add_member(:enable_atak, Shapes::ShapeRef.new(shape: Boolean, location_name: "enableAtak"))
    SecurityGroupSettings.add_member(:enable_crash_reports, Shapes::ShapeRef.new(shape: Boolean, location_name: "enableCrashReports"))
    SecurityGroupSettings.add_member(:enable_file_download, Shapes::ShapeRef.new(shape: Boolean, location_name: "enableFileDownload"))
    SecurityGroupSettings.add_member(:enable_guest_federation, Shapes::ShapeRef.new(shape: Boolean, location_name: "enableGuestFederation"))
    SecurityGroupSettings.add_member(:enable_notification_preview, Shapes::ShapeRef.new(shape: Boolean, location_name: "enableNotificationPreview"))
    SecurityGroupSettings.add_member(:enable_open_access_option, Shapes::ShapeRef.new(shape: Boolean, location_name: "enableOpenAccessOption"))
    SecurityGroupSettings.add_member(:enable_restricted_global_federation, Shapes::ShapeRef.new(shape: Boolean, location_name: "enableRestrictedGlobalFederation"))
    SecurityGroupSettings.add_member(:files_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "filesEnabled"))
    SecurityGroupSettings.add_member(:force_device_lockout, Shapes::ShapeRef.new(shape: Integer, location_name: "forceDeviceLockout"))
    SecurityGroupSettings.add_member(:force_open_access, Shapes::ShapeRef.new(shape: Boolean, location_name: "forceOpenAccess"))
    SecurityGroupSettings.add_member(:force_read_receipts, Shapes::ShapeRef.new(shape: Boolean, location_name: "forceReadReceipts"))
    SecurityGroupSettings.add_member(:global_federation, Shapes::ShapeRef.new(shape: Boolean, location_name: "globalFederation"))
    SecurityGroupSettings.add_member(:is_ato_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "isAtoEnabled"))
    SecurityGroupSettings.add_member(:is_link_preview_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "isLinkPreviewEnabled"))
    SecurityGroupSettings.add_member(:location_allow_maps, Shapes::ShapeRef.new(shape: Boolean, location_name: "locationAllowMaps"))
    SecurityGroupSettings.add_member(:location_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "locationEnabled"))
    SecurityGroupSettings.add_member(:max_auto_download_size, Shapes::ShapeRef.new(shape: Long, location_name: "maxAutoDownloadSize"))
    SecurityGroupSettings.add_member(:max_bor, Shapes::ShapeRef.new(shape: Integer, location_name: "maxBor"))
    SecurityGroupSettings.add_member(:max_ttl, Shapes::ShapeRef.new(shape: Long, location_name: "maxTtl"))
    SecurityGroupSettings.add_member(:message_forwarding_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "messageForwardingEnabled"))
    SecurityGroupSettings.add_member(:password_requirements, Shapes::ShapeRef.new(shape: PasswordRequirements, location_name: "passwordRequirements"))
    SecurityGroupSettings.add_member(:presence_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "presenceEnabled"))
    SecurityGroupSettings.add_member(:quick_responses, Shapes::ShapeRef.new(shape: SecurityGroupStringList, location_name: "quickResponses"))
    SecurityGroupSettings.add_member(:show_master_recovery_key, Shapes::ShapeRef.new(shape: Boolean, location_name: "showMasterRecoveryKey"))
    SecurityGroupSettings.add_member(:shredder, Shapes::ShapeRef.new(shape: ShredderSettings, location_name: "shredder"))
    SecurityGroupSettings.add_member(:sso_max_idle_minutes, Shapes::ShapeRef.new(shape: Integer, location_name: "ssoMaxIdleMinutes"))
    SecurityGroupSettings.add_member(:federation_mode, Shapes::ShapeRef.new(shape: Integer, location_name: "federationMode"))
    SecurityGroupSettings.add_member(:lockout_threshold, Shapes::ShapeRef.new(shape: Integer, location_name: "lockoutThreshold"))
    SecurityGroupSettings.add_member(:permitted_networks, Shapes::ShapeRef.new(shape: PermittedNetworksList, location_name: "permittedNetworks"))
    SecurityGroupSettings.add_member(:permitted_wickr_aws_networks, Shapes::ShapeRef.new(shape: WickrAwsNetworksList, location_name: "permittedWickrAwsNetworks"))
    SecurityGroupSettings.add_member(:permitted_wickr_enterprise_networks, Shapes::ShapeRef.new(shape: PermittedWickrEnterpriseNetworksList, location_name: "permittedWickrEnterpriseNetworks"))
    SecurityGroupSettings.struct_class = Types::SecurityGroupSettings

    SecurityGroupSettingsRequest.add_member(:lockout_threshold, Shapes::ShapeRef.new(shape: Integer, location_name: "lockoutThreshold"))
    SecurityGroupSettingsRequest.add_member(:permitted_networks, Shapes::ShapeRef.new(shape: PermittedNetworksList, location_name: "permittedNetworks"))
    SecurityGroupSettingsRequest.add_member(:enable_guest_federation, Shapes::ShapeRef.new(shape: Boolean, location_name: "enableGuestFederation"))
    SecurityGroupSettingsRequest.add_member(:global_federation, Shapes::ShapeRef.new(shape: Boolean, location_name: "globalFederation"))
    SecurityGroupSettingsRequest.add_member(:federation_mode, Shapes::ShapeRef.new(shape: Integer, location_name: "federationMode"))
    SecurityGroupSettingsRequest.add_member(:enable_restricted_global_federation, Shapes::ShapeRef.new(shape: Boolean, location_name: "enableRestrictedGlobalFederation"))
    SecurityGroupSettingsRequest.add_member(:permitted_wickr_aws_networks, Shapes::ShapeRef.new(shape: WickrAwsNetworksList, location_name: "permittedWickrAwsNetworks"))
    SecurityGroupSettingsRequest.add_member(:permitted_wickr_enterprise_networks, Shapes::ShapeRef.new(shape: PermittedWickrEnterpriseNetworksList, location_name: "permittedWickrEnterpriseNetworks"))
    SecurityGroupSettingsRequest.struct_class = Types::SecurityGroupSettingsRequest

    SecurityGroupStringList.member = Shapes::ShapeRef.new(shape: GenericString)

    Setting.add_member(:option_name, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "optionName"))
    Setting.add_member(:value, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "value"))
    Setting.add_member(:type, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "type"))
    Setting.struct_class = Types::Setting

    SettingsList.member = Shapes::ShapeRef.new(shape: Setting)

    ShredderSettings.add_member(:can_process_manually, Shapes::ShapeRef.new(shape: Boolean, location_name: "canProcessManually"))
    ShredderSettings.add_member(:intensity, Shapes::ShapeRef.new(shape: Integer, location_name: "intensity"))
    ShredderSettings.struct_class = Types::ShredderSettings

    StringList.member = Shapes::ShapeRef.new(shape: GenericString)

    Unames.member = Shapes::ShapeRef.new(shape: GenericString)

    UnauthorizedError.add_member(:message, Shapes::ShapeRef.new(shape: GenericString, location_name: "message"))
    UnauthorizedError.struct_class = Types::UnauthorizedError

    UpdateBotRequest.add_member(:network_id, Shapes::ShapeRef.new(shape: NetworkId, required: true, location: "uri", location_name: "networkId"))
    UpdateBotRequest.add_member(:bot_id, Shapes::ShapeRef.new(shape: BotId, required: true, location: "uri", location_name: "botId"))
    UpdateBotRequest.add_member(:display_name, Shapes::ShapeRef.new(shape: GenericString, location_name: "displayName"))
    UpdateBotRequest.add_member(:group_id, Shapes::ShapeRef.new(shape: GenericString, location_name: "groupId"))
    UpdateBotRequest.add_member(:challenge, Shapes::ShapeRef.new(shape: SensitiveString, location_name: "challenge"))
    UpdateBotRequest.add_member(:suspend, Shapes::ShapeRef.new(shape: Boolean, location_name: "suspend"))
    UpdateBotRequest.struct_class = Types::UpdateBotRequest

    UpdateBotResponse.add_member(:message, Shapes::ShapeRef.new(shape: GenericString, location_name: "message"))
    UpdateBotResponse.struct_class = Types::UpdateBotResponse

    UpdateDataRetentionRequest.add_member(:network_id, Shapes::ShapeRef.new(shape: NetworkId, required: true, location: "uri", location_name: "networkId"))
    UpdateDataRetentionRequest.add_member(:action_type, Shapes::ShapeRef.new(shape: DataRetentionActionType, required: true, location_name: "actionType"))
    UpdateDataRetentionRequest.struct_class = Types::UpdateDataRetentionRequest

    UpdateDataRetentionResponse.add_member(:message, Shapes::ShapeRef.new(shape: GenericString, location_name: "message"))
    UpdateDataRetentionResponse.struct_class = Types::UpdateDataRetentionResponse

    UpdateGuestUserRequest.add_member(:network_id, Shapes::ShapeRef.new(shape: NetworkId, required: true, location: "uri", location_name: "networkId"))
    UpdateGuestUserRequest.add_member(:username_hash, Shapes::ShapeRef.new(shape: GenericString, required: true, location: "uri", location_name: "usernameHash"))
    UpdateGuestUserRequest.add_member(:block, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "block"))
    UpdateGuestUserRequest.struct_class = Types::UpdateGuestUserRequest

    UpdateGuestUserResponse.add_member(:message, Shapes::ShapeRef.new(shape: GenericString, location_name: "message"))
    UpdateGuestUserResponse.struct_class = Types::UpdateGuestUserResponse

    UpdateNetworkRequest.add_member(:network_id, Shapes::ShapeRef.new(shape: NetworkId, required: true, location: "uri", location_name: "networkId"))
    UpdateNetworkRequest.add_member(:network_name, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "networkName"))
    UpdateNetworkRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location: "header", location_name: "X-Client-Token", metadata: {"idempotencyToken" => true}))
    UpdateNetworkRequest.add_member(:encryption_key_arn, Shapes::ShapeRef.new(shape: GenericString, location_name: "encryptionKeyArn"))
    UpdateNetworkRequest.struct_class = Types::UpdateNetworkRequest

    UpdateNetworkResponse.add_member(:message, Shapes::ShapeRef.new(shape: GenericString, location_name: "message"))
    UpdateNetworkResponse.struct_class = Types::UpdateNetworkResponse

    UpdateNetworkSettingsRequest.add_member(:network_id, Shapes::ShapeRef.new(shape: NetworkId, required: true, location: "uri", location_name: "networkId"))
    UpdateNetworkSettingsRequest.add_member(:settings, Shapes::ShapeRef.new(shape: NetworkSettings, required: true, location_name: "settings"))
    UpdateNetworkSettingsRequest.struct_class = Types::UpdateNetworkSettingsRequest

    UpdateNetworkSettingsResponse.add_member(:settings, Shapes::ShapeRef.new(shape: SettingsList, required: true, location_name: "settings"))
    UpdateNetworkSettingsResponse.struct_class = Types::UpdateNetworkSettingsResponse

    UpdateSecurityGroupRequest.add_member(:network_id, Shapes::ShapeRef.new(shape: NetworkId, required: true, location: "uri", location_name: "networkId"))
    UpdateSecurityGroupRequest.add_member(:group_id, Shapes::ShapeRef.new(shape: GenericString, required: true, location: "uri", location_name: "groupId"))
    UpdateSecurityGroupRequest.add_member(:name, Shapes::ShapeRef.new(shape: GenericString, location_name: "name"))
    UpdateSecurityGroupRequest.add_member(:security_group_settings, Shapes::ShapeRef.new(shape: SecurityGroupSettings, location_name: "securityGroupSettings"))
    UpdateSecurityGroupRequest.struct_class = Types::UpdateSecurityGroupRequest

    UpdateSecurityGroupResponse.add_member(:security_group, Shapes::ShapeRef.new(shape: SecurityGroup, required: true, location_name: "securityGroup"))
    UpdateSecurityGroupResponse.struct_class = Types::UpdateSecurityGroupResponse

    UpdateUserDetails.add_member(:first_name, Shapes::ShapeRef.new(shape: SensitiveString, location_name: "firstName"))
    UpdateUserDetails.add_member(:last_name, Shapes::ShapeRef.new(shape: SensitiveString, location_name: "lastName"))
    UpdateUserDetails.add_member(:username, Shapes::ShapeRef.new(shape: GenericString, location_name: "username"))
    UpdateUserDetails.add_member(:security_group_ids, Shapes::ShapeRef.new(shape: SecurityGroupIdList, location_name: "securityGroupIds"))
    UpdateUserDetails.add_member(:invite_code, Shapes::ShapeRef.new(shape: GenericString, location_name: "inviteCode"))
    UpdateUserDetails.add_member(:invite_code_ttl, Shapes::ShapeRef.new(shape: Integer, location_name: "inviteCodeTtl"))
    UpdateUserDetails.add_member(:code_validation, Shapes::ShapeRef.new(shape: Boolean, location_name: "codeValidation"))
    UpdateUserDetails.struct_class = Types::UpdateUserDetails

    UpdateUserRequest.add_member(:network_id, Shapes::ShapeRef.new(shape: NetworkId, required: true, location: "uri", location_name: "networkId"))
    UpdateUserRequest.add_member(:user_id, Shapes::ShapeRef.new(shape: UserId, required: true, location_name: "userId"))
    UpdateUserRequest.add_member(:user_details, Shapes::ShapeRef.new(shape: UpdateUserDetails, location_name: "userDetails"))
    UpdateUserRequest.struct_class = Types::UpdateUserRequest

    UpdateUserResponse.add_member(:user_id, Shapes::ShapeRef.new(shape: UserId, required: true, location_name: "userId"))
    UpdateUserResponse.add_member(:network_id, Shapes::ShapeRef.new(shape: NetworkId, required: true, location_name: "networkId"))
    UpdateUserResponse.add_member(:security_group_ids, Shapes::ShapeRef.new(shape: SecurityGroupIdList, location_name: "securityGroupIds"))
    UpdateUserResponse.add_member(:first_name, Shapes::ShapeRef.new(shape: SensitiveString, location_name: "firstName"))
    UpdateUserResponse.add_member(:last_name, Shapes::ShapeRef.new(shape: SensitiveString, location_name: "lastName"))
    UpdateUserResponse.add_member(:middle_name, Shapes::ShapeRef.new(shape: GenericString, location_name: "middleName"))
    UpdateUserResponse.add_member(:suspended, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "suspended"))
    UpdateUserResponse.add_member(:modified, Shapes::ShapeRef.new(shape: Integer, location_name: "modified"))
    UpdateUserResponse.add_member(:status, Shapes::ShapeRef.new(shape: Integer, location_name: "status"))
    UpdateUserResponse.add_member(:invite_code, Shapes::ShapeRef.new(shape: GenericString, location_name: "inviteCode"))
    UpdateUserResponse.add_member(:invite_expiration, Shapes::ShapeRef.new(shape: Integer, location_name: "inviteExpiration"))
    UpdateUserResponse.add_member(:code_validation, Shapes::ShapeRef.new(shape: Boolean, location_name: "codeValidation"))
    UpdateUserResponse.struct_class = Types::UpdateUserResponse

    User.add_member(:user_id, Shapes::ShapeRef.new(shape: UserId, location_name: "userId"))
    User.add_member(:first_name, Shapes::ShapeRef.new(shape: SensitiveString, location_name: "firstName"))
    User.add_member(:last_name, Shapes::ShapeRef.new(shape: SensitiveString, location_name: "lastName"))
    User.add_member(:username, Shapes::ShapeRef.new(shape: GenericString, location_name: "username"))
    User.add_member(:security_groups, Shapes::ShapeRef.new(shape: SecurityGroupIdList, location_name: "securityGroups"))
    User.add_member(:is_admin, Shapes::ShapeRef.new(shape: Boolean, location_name: "isAdmin"))
    User.add_member(:suspended, Shapes::ShapeRef.new(shape: Boolean, location_name: "suspended"))
    User.add_member(:status, Shapes::ShapeRef.new(shape: Integer, location_name: "status"))
    User.add_member(:otp_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "otpEnabled"))
    User.add_member(:scim_id, Shapes::ShapeRef.new(shape: GenericString, location_name: "scimId"))
    User.add_member(:type, Shapes::ShapeRef.new(shape: GenericString, location_name: "type"))
    User.add_member(:cell, Shapes::ShapeRef.new(shape: GenericString, location_name: "cell"))
    User.add_member(:country_code, Shapes::ShapeRef.new(shape: GenericString, location_name: "countryCode"))
    User.add_member(:challenge_failures, Shapes::ShapeRef.new(shape: Integer, location_name: "challengeFailures"))
    User.add_member(:is_invite_expired, Shapes::ShapeRef.new(shape: Boolean, location_name: "isInviteExpired"))
    User.add_member(:is_user, Shapes::ShapeRef.new(shape: Boolean, location_name: "isUser"))
    User.add_member(:invite_code, Shapes::ShapeRef.new(shape: GenericString, location_name: "inviteCode"))
    User.add_member(:code_validation, Shapes::ShapeRef.new(shape: Boolean, location_name: "codeValidation"))
    User.add_member(:uname, Shapes::ShapeRef.new(shape: GenericString, location_name: "uname"))
    User.struct_class = Types::User

    UserIds.member = Shapes::ShapeRef.new(shape: UserId)

    Users.member = Shapes::ShapeRef.new(shape: User)

    ValidationError.add_member(:reasons, Shapes::ShapeRef.new(shape: ErrorDetailList, location_name: "reasons"))
    ValidationError.add_member(:message, Shapes::ShapeRef.new(shape: GenericString, location_name: "message"))
    ValidationError.struct_class = Types::ValidationError

    WickrAwsNetworks.add_member(:region, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "region"))
    WickrAwsNetworks.add_member(:network_id, Shapes::ShapeRef.new(shape: NetworkId, required: true, location_name: "networkId"))
    WickrAwsNetworks.struct_class = Types::WickrAwsNetworks

    WickrAwsNetworksList.member = Shapes::ShapeRef.new(shape: WickrAwsNetworks)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2024-02-01"

      api.metadata = {
        "apiVersion" => "2024-02-01",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "admin.wickr",
        "protocol" => "rest-json",
        "protocols" => ["rest-json"],
        "serviceFullName" => "AWS Wickr Admin API",
        "serviceId" => "Wickr",
        "signatureVersion" => "v4",
        "signingName" => "wickr",
        "uid" => "wickr-2024-02-01",
      }

      api.add_operation(:batch_create_user, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchCreateUser"
        o.http_method = "POST"
        o.http_request_uri = "/networks/{networkId}/users"
        o.input = Shapes::ShapeRef.new(shape: BatchCreateUserRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchCreateUserResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationError)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestError)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundError)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenError)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedError)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: RateLimitError)
      end)

      api.add_operation(:batch_delete_user, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchDeleteUser"
        o.http_method = "POST"
        o.http_request_uri = "/networks/{networkId}/users/batch-delete"
        o.input = Shapes::ShapeRef.new(shape: BatchDeleteUserRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchDeleteUserResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationError)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestError)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundError)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenError)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedError)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: RateLimitError)
      end)

      api.add_operation(:batch_lookup_user_uname, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchLookupUserUname"
        o.http_method = "POST"
        o.http_request_uri = "/networks/{networkId}/users/uname-lookup"
        o.input = Shapes::ShapeRef.new(shape: BatchLookupUserUnameRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchLookupUserUnameResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationError)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestError)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundError)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenError)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedError)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: RateLimitError)
      end)

      api.add_operation(:batch_reinvite_user, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchReinviteUser"
        o.http_method = "PATCH"
        o.http_request_uri = "/networks/{networkId}/users/re-invite"
        o.input = Shapes::ShapeRef.new(shape: BatchReinviteUserRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchReinviteUserResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationError)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestError)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundError)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenError)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedError)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: RateLimitError)
      end)

      api.add_operation(:batch_reset_devices_for_user, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchResetDevicesForUser"
        o.http_method = "PATCH"
        o.http_request_uri = "/networks/{networkId}/users/{userId}/devices"
        o.input = Shapes::ShapeRef.new(shape: BatchResetDevicesForUserRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchResetDevicesForUserResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationError)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestError)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundError)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenError)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedError)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: RateLimitError)
      end)

      api.add_operation(:batch_toggle_user_suspend_status, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchToggleUserSuspendStatus"
        o.http_method = "PATCH"
        o.http_request_uri = "/networks/{networkId}/users/toggleSuspend"
        o.input = Shapes::ShapeRef.new(shape: BatchToggleUserSuspendStatusRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchToggleUserSuspendStatusResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationError)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestError)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundError)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenError)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedError)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: RateLimitError)
      end)

      api.add_operation(:create_bot, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateBot"
        o.http_method = "POST"
        o.http_request_uri = "/networks/{networkId}/bots"
        o.input = Shapes::ShapeRef.new(shape: CreateBotRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateBotResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationError)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestError)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundError)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenError)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedError)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: RateLimitError)
      end)

      api.add_operation(:create_data_retention_bot, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateDataRetentionBot"
        o.http_method = "POST"
        o.http_request_uri = "/networks/{networkId}/data-retention-bots"
        o.input = Shapes::ShapeRef.new(shape: CreateDataRetentionBotRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateDataRetentionBotResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationError)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestError)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundError)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenError)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedError)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: RateLimitError)
      end)

      api.add_operation(:create_data_retention_bot_challenge, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateDataRetentionBotChallenge"
        o.http_method = "POST"
        o.http_request_uri = "/networks/{networkId}/data-retention-bots/challenge"
        o.input = Shapes::ShapeRef.new(shape: CreateDataRetentionBotChallengeRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateDataRetentionBotChallengeResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationError)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestError)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundError)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenError)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedError)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: RateLimitError)
      end)

      api.add_operation(:create_network, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateNetwork"
        o.http_method = "POST"
        o.http_request_uri = "/networks"
        o.input = Shapes::ShapeRef.new(shape: CreateNetworkRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateNetworkResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationError)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestError)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundError)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenError)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedError)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: RateLimitError)
      end)

      api.add_operation(:create_security_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateSecurityGroup"
        o.http_method = "POST"
        o.http_request_uri = "/networks/{networkId}/security-groups"
        o.input = Shapes::ShapeRef.new(shape: CreateSecurityGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateSecurityGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationError)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestError)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundError)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenError)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedError)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: RateLimitError)
      end)

      api.add_operation(:delete_bot, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteBot"
        o.http_method = "DELETE"
        o.http_request_uri = "/networks/{networkId}/bots/{botId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteBotRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteBotResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationError)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestError)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundError)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenError)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedError)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: RateLimitError)
      end)

      api.add_operation(:delete_data_retention_bot, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteDataRetentionBot"
        o.http_method = "DELETE"
        o.http_request_uri = "/networks/{networkId}/data-retention-bots"
        o.input = Shapes::ShapeRef.new(shape: DeleteDataRetentionBotRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteDataRetentionBotResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationError)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestError)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundError)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenError)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedError)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: RateLimitError)
      end)

      api.add_operation(:delete_network, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteNetwork"
        o.http_method = "DELETE"
        o.http_request_uri = "/networks/{networkId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteNetworkRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteNetworkResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationError)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestError)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundError)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenError)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedError)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: RateLimitError)
      end)

      api.add_operation(:delete_security_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteSecurityGroup"
        o.http_method = "DELETE"
        o.http_request_uri = "/networks/{networkId}/security-groups/{groupId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteSecurityGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteSecurityGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationError)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestError)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundError)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenError)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedError)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: RateLimitError)
      end)

      api.add_operation(:get_bot, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetBot"
        o.http_method = "GET"
        o.http_request_uri = "/networks/{networkId}/bots/{botId}"
        o.input = Shapes::ShapeRef.new(shape: GetBotRequest)
        o.output = Shapes::ShapeRef.new(shape: GetBotResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationError)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestError)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundError)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenError)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedError)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: RateLimitError)
      end)

      api.add_operation(:get_bots_count, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetBotsCount"
        o.http_method = "GET"
        o.http_request_uri = "/networks/{networkId}/bots/count"
        o.input = Shapes::ShapeRef.new(shape: GetBotsCountRequest)
        o.output = Shapes::ShapeRef.new(shape: GetBotsCountResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationError)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestError)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundError)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenError)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedError)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: RateLimitError)
      end)

      api.add_operation(:get_data_retention_bot, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDataRetentionBot"
        o.http_method = "GET"
        o.http_request_uri = "/networks/{networkId}/data-retention-bots"
        o.input = Shapes::ShapeRef.new(shape: GetDataRetentionBotRequest)
        o.output = Shapes::ShapeRef.new(shape: GetDataRetentionBotResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationError)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestError)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundError)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenError)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedError)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: RateLimitError)
      end)

      api.add_operation(:get_guest_user_history_count, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetGuestUserHistoryCount"
        o.http_method = "GET"
        o.http_request_uri = "/networks/{networkId}/guest-users/count"
        o.input = Shapes::ShapeRef.new(shape: GetGuestUserHistoryCountRequest)
        o.output = Shapes::ShapeRef.new(shape: GetGuestUserHistoryCountResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationError)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestError)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundError)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenError)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedError)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: RateLimitError)
      end)

      api.add_operation(:get_network, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetNetwork"
        o.http_method = "GET"
        o.http_request_uri = "/networks/{networkId}"
        o.input = Shapes::ShapeRef.new(shape: GetNetworkRequest)
        o.output = Shapes::ShapeRef.new(shape: GetNetworkResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationError)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestError)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundError)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenError)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedError)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: RateLimitError)
      end)

      api.add_operation(:get_network_settings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetNetworkSettings"
        o.http_method = "GET"
        o.http_request_uri = "/networks/{networkId}/settings"
        o.input = Shapes::ShapeRef.new(shape: GetNetworkSettingsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetNetworkSettingsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationError)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestError)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundError)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenError)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedError)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: RateLimitError)
      end)

      api.add_operation(:get_oidc_info, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetOidcInfo"
        o.http_method = "GET"
        o.http_request_uri = "/networks/{networkId}/oidc"
        o.input = Shapes::ShapeRef.new(shape: GetOidcInfoRequest)
        o.output = Shapes::ShapeRef.new(shape: GetOidcInfoResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationError)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestError)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundError)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenError)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedError)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: RateLimitError)
      end)

      api.add_operation(:get_opentdf_config, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetOpentdfConfig"
        o.http_method = "GET"
        o.http_request_uri = "/networks/{networkId}/tdf"
        o.input = Shapes::ShapeRef.new(shape: GetOpentdfConfigRequest)
        o.output = Shapes::ShapeRef.new(shape: GetOpentdfConfigResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationError)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestError)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundError)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenError)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedError)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: RateLimitError)
      end)

      api.add_operation(:get_security_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetSecurityGroup"
        o.http_method = "GET"
        o.http_request_uri = "/networks/{networkId}/security-groups/{groupId}"
        o.input = Shapes::ShapeRef.new(shape: GetSecurityGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: GetSecurityGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationError)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestError)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundError)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenError)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedError)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: RateLimitError)
      end)

      api.add_operation(:get_user, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetUser"
        o.http_method = "GET"
        o.http_request_uri = "/networks/{networkId}/users/{userId}"
        o.input = Shapes::ShapeRef.new(shape: GetUserRequest)
        o.output = Shapes::ShapeRef.new(shape: GetUserResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationError)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestError)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundError)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenError)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedError)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: RateLimitError)
      end)

      api.add_operation(:get_users_count, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetUsersCount"
        o.http_method = "GET"
        o.http_request_uri = "/networks/{networkId}/users/count"
        o.input = Shapes::ShapeRef.new(shape: GetUsersCountRequest)
        o.output = Shapes::ShapeRef.new(shape: GetUsersCountResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationError)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestError)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundError)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenError)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedError)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: RateLimitError)
      end)

      api.add_operation(:list_blocked_guest_users, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListBlockedGuestUsers"
        o.http_method = "GET"
        o.http_request_uri = "/networks/{networkId}/guest-users/blocklist"
        o.input = Shapes::ShapeRef.new(shape: ListBlockedGuestUsersRequest)
        o.output = Shapes::ShapeRef.new(shape: ListBlockedGuestUsersResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationError)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestError)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundError)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenError)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedError)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: RateLimitError)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_bots, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListBots"
        o.http_method = "GET"
        o.http_request_uri = "/networks/{networkId}/bots"
        o.input = Shapes::ShapeRef.new(shape: ListBotsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListBotsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationError)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestError)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundError)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenError)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedError)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: RateLimitError)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_devices_for_user, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDevicesForUser"
        o.http_method = "GET"
        o.http_request_uri = "/networks/{networkId}/users/{userId}/devices"
        o.input = Shapes::ShapeRef.new(shape: ListDevicesForUserRequest)
        o.output = Shapes::ShapeRef.new(shape: ListDevicesForUserResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationError)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestError)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundError)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenError)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedError)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: RateLimitError)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_guest_users, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListGuestUsers"
        o.http_method = "GET"
        o.http_request_uri = "/networks/{networkId}/guest-users"
        o.input = Shapes::ShapeRef.new(shape: ListGuestUsersRequest)
        o.output = Shapes::ShapeRef.new(shape: ListGuestUsersResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationError)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestError)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundError)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenError)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedError)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: RateLimitError)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_networks, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListNetworks"
        o.http_method = "GET"
        o.http_request_uri = "/networks"
        o.input = Shapes::ShapeRef.new(shape: ListNetworksRequest)
        o.output = Shapes::ShapeRef.new(shape: ListNetworksResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationError)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestError)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenError)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedError)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: RateLimitError)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_security_group_users, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListSecurityGroupUsers"
        o.http_method = "GET"
        o.http_request_uri = "/networks/{networkId}/security-groups/{groupId}/users"
        o.input = Shapes::ShapeRef.new(shape: ListSecurityGroupUsersRequest)
        o.output = Shapes::ShapeRef.new(shape: ListSecurityGroupUsersResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationError)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestError)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundError)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenError)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedError)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: RateLimitError)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_security_groups, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListSecurityGroups"
        o.http_method = "GET"
        o.http_request_uri = "/networks/{networkId}/security-groups"
        o.input = Shapes::ShapeRef.new(shape: ListSecurityGroupsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListSecurityGroupsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationError)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestError)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundError)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenError)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedError)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: RateLimitError)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_users, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListUsers"
        o.http_method = "GET"
        o.http_request_uri = "/networks/{networkId}/users"
        o.input = Shapes::ShapeRef.new(shape: ListUsersRequest)
        o.output = Shapes::ShapeRef.new(shape: ListUsersResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationError)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestError)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundError)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenError)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedError)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: RateLimitError)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:register_oidc_config, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RegisterOidcConfig"
        o.http_method = "POST"
        o.http_request_uri = "/networks/{networkId}/oidc/save"
        o.input = Shapes::ShapeRef.new(shape: RegisterOidcConfigRequest)
        o.output = Shapes::ShapeRef.new(shape: RegisterOidcConfigResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationError)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestError)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundError)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenError)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedError)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: RateLimitError)
      end)

      api.add_operation(:register_oidc_config_test, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RegisterOidcConfigTest"
        o.http_method = "POST"
        o.http_request_uri = "/networks/{networkId}/oidc/test"
        o.input = Shapes::ShapeRef.new(shape: RegisterOidcConfigTestRequest)
        o.output = Shapes::ShapeRef.new(shape: RegisterOidcConfigTestResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationError)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestError)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundError)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenError)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedError)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: RateLimitError)
      end)

      api.add_operation(:register_opentdf_config, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RegisterOpentdfConfig"
        o.http_method = "POST"
        o.http_request_uri = "/networks/{networkId}/tdf"
        o.input = Shapes::ShapeRef.new(shape: RegisterOpentdfConfigRequest)
        o.output = Shapes::ShapeRef.new(shape: RegisterOpentdfConfigResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationError)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestError)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundError)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenError)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedError)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: RateLimitError)
      end)

      api.add_operation(:update_bot, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateBot"
        o.http_method = "PATCH"
        o.http_request_uri = "/networks/{networkId}/bots/{botId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateBotRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateBotResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationError)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestError)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundError)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenError)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedError)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: RateLimitError)
      end)

      api.add_operation(:update_data_retention, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateDataRetention"
        o.http_method = "PATCH"
        o.http_request_uri = "/networks/{networkId}/data-retention-bots"
        o.input = Shapes::ShapeRef.new(shape: UpdateDataRetentionRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateDataRetentionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationError)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestError)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundError)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenError)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedError)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: RateLimitError)
      end)

      api.add_operation(:update_guest_user, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateGuestUser"
        o.http_method = "PATCH"
        o.http_request_uri = "/networks/{networkId}/guest-users/{usernameHash}"
        o.input = Shapes::ShapeRef.new(shape: UpdateGuestUserRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateGuestUserResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationError)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestError)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundError)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenError)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedError)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: RateLimitError)
      end)

      api.add_operation(:update_network, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateNetwork"
        o.http_method = "PATCH"
        o.http_request_uri = "/networks/{networkId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateNetworkRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateNetworkResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationError)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestError)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundError)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenError)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedError)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: RateLimitError)
      end)

      api.add_operation(:update_network_settings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateNetworkSettings"
        o.http_method = "PATCH"
        o.http_request_uri = "/networks/{networkId}/settings"
        o.input = Shapes::ShapeRef.new(shape: UpdateNetworkSettingsRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateNetworkSettingsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationError)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestError)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundError)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenError)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedError)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: RateLimitError)
      end)

      api.add_operation(:update_security_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateSecurityGroup"
        o.http_method = "PATCH"
        o.http_request_uri = "/networks/{networkId}/security-groups/{groupId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateSecurityGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateSecurityGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationError)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestError)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundError)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenError)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedError)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: RateLimitError)
      end)

      api.add_operation(:update_user, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateUser"
        o.http_method = "PATCH"
        o.http_request_uri = "/networks/{networkId}/users"
        o.input = Shapes::ShapeRef.new(shape: UpdateUserRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateUserResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationError)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestError)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundError)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenError)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedError)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: RateLimitError)
      end)
    end

  end
end
