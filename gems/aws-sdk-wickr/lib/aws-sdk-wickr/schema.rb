# frozen_string_literal: true

# This is generated code!

module Aws::Wickr
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessLevel = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.wickr#AccessLevel", name: "AccessLevel")
    AppIds = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wickr#AppIds", name: "AppIds")
    BadRequestError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wickr#BadRequestError", name: "BadRequestError", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    BasicDeviceObject = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wickr#BasicDeviceObject", name: "BasicDeviceObject")
    BatchCreateUserRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wickr#BatchCreateUserRequest", name: "BatchCreateUserRequest")
    BatchCreateUserRequestItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wickr#BatchCreateUserRequestItem", name: "BatchCreateUserRequestItem")
    BatchCreateUserRequestItems = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wickr#BatchCreateUserRequestItems", name: "BatchCreateUserRequestItems")
    BatchCreateUserResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wickr#BatchCreateUserResponse", name: "BatchCreateUserResponse")
    BatchDeleteUserRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wickr#BatchDeleteUserRequest", name: "BatchDeleteUserRequest")
    BatchDeleteUserResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wickr#BatchDeleteUserResponse", name: "BatchDeleteUserResponse")
    BatchDeviceErrorResponseItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wickr#BatchDeviceErrorResponseItem", name: "BatchDeviceErrorResponseItem")
    BatchDeviceErrorResponseItems = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wickr#BatchDeviceErrorResponseItems", name: "BatchDeviceErrorResponseItems")
    BatchDeviceSuccessResponseItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wickr#BatchDeviceSuccessResponseItem", name: "BatchDeviceSuccessResponseItem")
    BatchDeviceSuccessResponseItems = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wickr#BatchDeviceSuccessResponseItems", name: "BatchDeviceSuccessResponseItems")
    BatchLookupUserUnameRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wickr#BatchLookupUserUnameRequest", name: "BatchLookupUserUnameRequest")
    BatchLookupUserUnameResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wickr#BatchLookupUserUnameResponse", name: "BatchLookupUserUnameResponse")
    BatchReinviteUserRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wickr#BatchReinviteUserRequest", name: "BatchReinviteUserRequest")
    BatchReinviteUserResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wickr#BatchReinviteUserResponse", name: "BatchReinviteUserResponse")
    BatchResetDevicesForUserRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wickr#BatchResetDevicesForUserRequest", name: "BatchResetDevicesForUserRequest")
    BatchResetDevicesForUserResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wickr#BatchResetDevicesForUserResponse", name: "BatchResetDevicesForUserResponse")
    BatchToggleUserSuspendStatusRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wickr#BatchToggleUserSuspendStatusRequest", name: "BatchToggleUserSuspendStatusRequest")
    BatchToggleUserSuspendStatusResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wickr#BatchToggleUserSuspendStatusResponse", name: "BatchToggleUserSuspendStatusResponse")
    BatchUnameErrorResponseItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wickr#BatchUnameErrorResponseItem", name: "BatchUnameErrorResponseItem")
    BatchUnameErrorResponseItems = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wickr#BatchUnameErrorResponseItems", name: "BatchUnameErrorResponseItems")
    BatchUnameSuccessResponseItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wickr#BatchUnameSuccessResponseItem", name: "BatchUnameSuccessResponseItem")
    BatchUnameSuccessResponseItems = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wickr#BatchUnameSuccessResponseItems", name: "BatchUnameSuccessResponseItems")
    BatchUserErrorResponseItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wickr#BatchUserErrorResponseItem", name: "BatchUserErrorResponseItem")
    BatchUserErrorResponseItems = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wickr#BatchUserErrorResponseItems", name: "BatchUserErrorResponseItems")
    BatchUserSuccessResponseItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wickr#BatchUserSuccessResponseItem", name: "BatchUserSuccessResponseItem")
    BatchUserSuccessResponseItems = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wickr#BatchUserSuccessResponseItems", name: "BatchUserSuccessResponseItems")
    BlockedGuestUser = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wickr#BlockedGuestUser", name: "BlockedGuestUser")
    BlockedGuestUserList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wickr#BlockedGuestUserList", name: "BlockedGuestUserList")
    Bot = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wickr#Bot", name: "Bot")
    BotId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wickr#BotId", name: "BotId", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}, "smithy.api#pattern" => "^[0-9]+$"})
    BotStatus = ::Smithy::Schema::Shapes::IntEnumShape.new(id: "com.amazonaws.wickr#BotStatus", name: "BotStatus")
    Bots = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wickr#Bots", name: "Bots")
    CallingSettings = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wickr#CallingSettings", name: "CallingSettings")
    ClientToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wickr#ClientToken", name: "ClientToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9-_:]+$"})
    ConsentPopupConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wickr#ConsentPopupConfig", name: "ConsentPopupConfig")
    CreateBotRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wickr#CreateBotRequest", name: "CreateBotRequest")
    CreateBotResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wickr#CreateBotResponse", name: "CreateBotResponse")
    CreateDataRetentionBotChallengeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wickr#CreateDataRetentionBotChallengeRequest", name: "CreateDataRetentionBotChallengeRequest")
    CreateDataRetentionBotChallengeResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wickr#CreateDataRetentionBotChallengeResponse", name: "CreateDataRetentionBotChallengeResponse")
    CreateDataRetentionBotRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wickr#CreateDataRetentionBotRequest", name: "CreateDataRetentionBotRequest")
    CreateDataRetentionBotResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wickr#CreateDataRetentionBotResponse", name: "CreateDataRetentionBotResponse")
    CreateNetworkRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wickr#CreateNetworkRequest", name: "CreateNetworkRequest")
    CreateNetworkResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wickr#CreateNetworkResponse", name: "CreateNetworkResponse")
    CreateSecurityGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wickr#CreateSecurityGroupRequest", name: "CreateSecurityGroupRequest")
    CreateSecurityGroupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wickr#CreateSecurityGroupResponse", name: "CreateSecurityGroupResponse")
    DataRetentionActionType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.wickr#DataRetentionActionType", name: "DataRetentionActionType")
    DeleteBotRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wickr#DeleteBotRequest", name: "DeleteBotRequest")
    DeleteBotResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wickr#DeleteBotResponse", name: "DeleteBotResponse")
    DeleteDataRetentionBotRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wickr#DeleteDataRetentionBotRequest", name: "DeleteDataRetentionBotRequest")
    DeleteDataRetentionBotResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wickr#DeleteDataRetentionBotResponse", name: "DeleteDataRetentionBotResponse")
    DeleteNetworkRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wickr#DeleteNetworkRequest", name: "DeleteNetworkRequest")
    DeleteNetworkResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wickr#DeleteNetworkResponse", name: "DeleteNetworkResponse")
    DeleteSecurityGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wickr#DeleteSecurityGroupRequest", name: "DeleteSecurityGroupRequest")
    DeleteSecurityGroupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wickr#DeleteSecurityGroupResponse", name: "DeleteSecurityGroupResponse")
    Devices = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wickr#Devices", name: "Devices")
    ErrorDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wickr#ErrorDetail", name: "ErrorDetail")
    ErrorDetailList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wickr#ErrorDetailList", name: "ErrorDetailList")
    ForbiddenError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wickr#ForbiddenError", name: "ForbiddenError", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    GenericString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wickr#GenericString", name: "GenericString", traits: {"smithy.api#pattern" => "^[\\S\\s]*$"})
    GetBotRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wickr#GetBotRequest", name: "GetBotRequest")
    GetBotResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wickr#GetBotResponse", name: "GetBotResponse")
    GetBotsCountRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wickr#GetBotsCountRequest", name: "GetBotsCountRequest")
    GetBotsCountResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wickr#GetBotsCountResponse", name: "GetBotsCountResponse")
    GetDataRetentionBotRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wickr#GetDataRetentionBotRequest", name: "GetDataRetentionBotRequest")
    GetDataRetentionBotResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wickr#GetDataRetentionBotResponse", name: "GetDataRetentionBotResponse")
    GetGuestUserHistoryCountRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wickr#GetGuestUserHistoryCountRequest", name: "GetGuestUserHistoryCountRequest")
    GetGuestUserHistoryCountResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wickr#GetGuestUserHistoryCountResponse", name: "GetGuestUserHistoryCountResponse")
    GetNetworkRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wickr#GetNetworkRequest", name: "GetNetworkRequest")
    GetNetworkResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wickr#GetNetworkResponse", name: "GetNetworkResponse")
    GetNetworkSettingsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wickr#GetNetworkSettingsRequest", name: "GetNetworkSettingsRequest")
    GetNetworkSettingsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wickr#GetNetworkSettingsResponse", name: "GetNetworkSettingsResponse")
    GetOidcInfoRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wickr#GetOidcInfoRequest", name: "GetOidcInfoRequest")
    GetOidcInfoResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wickr#GetOidcInfoResponse", name: "GetOidcInfoResponse")
    GetOpentdfConfigRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wickr#GetOpentdfConfigRequest", name: "GetOpentdfConfigRequest")
    GetOpentdfConfigResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wickr#GetOpentdfConfigResponse", name: "GetOpentdfConfigResponse")
    GetSecurityGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wickr#GetSecurityGroupRequest", name: "GetSecurityGroupRequest")
    GetSecurityGroupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wickr#GetSecurityGroupResponse", name: "GetSecurityGroupResponse")
    GetUserRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wickr#GetUserRequest", name: "GetUserRequest")
    GetUserResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wickr#GetUserResponse", name: "GetUserResponse")
    GetUsersCountRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wickr#GetUsersCountRequest", name: "GetUsersCountRequest")
    GetUsersCountResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wickr#GetUsersCountResponse", name: "GetUsersCountResponse")
    GuestUser = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wickr#GuestUser", name: "GuestUser")
    GuestUserHistoryCount = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wickr#GuestUserHistoryCount", name: "GuestUserHistoryCount")
    GuestUserHistoryCountList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wickr#GuestUserHistoryCountList", name: "GuestUserHistoryCountList")
    GuestUserList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wickr#GuestUserList", name: "GuestUserList")
    InternalServerError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wickr#InternalServerError", name: "InternalServerError", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    ListBlockedGuestUsersRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wickr#ListBlockedGuestUsersRequest", name: "ListBlockedGuestUsersRequest")
    ListBlockedGuestUsersResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wickr#ListBlockedGuestUsersResponse", name: "ListBlockedGuestUsersResponse")
    ListBotsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wickr#ListBotsRequest", name: "ListBotsRequest")
    ListBotsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wickr#ListBotsResponse", name: "ListBotsResponse")
    ListDevicesForUserRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wickr#ListDevicesForUserRequest", name: "ListDevicesForUserRequest")
    ListDevicesForUserResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wickr#ListDevicesForUserResponse", name: "ListDevicesForUserResponse")
    ListGuestUsersRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wickr#ListGuestUsersRequest", name: "ListGuestUsersRequest")
    ListGuestUsersResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wickr#ListGuestUsersResponse", name: "ListGuestUsersResponse")
    ListNetworksRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wickr#ListNetworksRequest", name: "ListNetworksRequest")
    ListNetworksResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wickr#ListNetworksResponse", name: "ListNetworksResponse")
    ListSecurityGroupUsersRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wickr#ListSecurityGroupUsersRequest", name: "ListSecurityGroupUsersRequest")
    ListSecurityGroupUsersResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wickr#ListSecurityGroupUsersResponse", name: "ListSecurityGroupUsersResponse")
    ListSecurityGroupsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wickr#ListSecurityGroupsRequest", name: "ListSecurityGroupsRequest")
    ListSecurityGroupsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wickr#ListSecurityGroupsResponse", name: "ListSecurityGroupsResponse")
    ListUsersRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wickr#ListUsersRequest", name: "ListUsersRequest")
    ListUsersResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wickr#ListUsersResponse", name: "ListUsersResponse")
    Network = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wickr#Network", name: "Network")
    NetworkId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wickr#NetworkId", name: "NetworkId", traits: {"smithy.api#length" => {"min" => 8, "max" => 8}, "smithy.api#pattern" => "^[0-9]{8}$"})
    NetworkList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wickr#NetworkList", name: "NetworkList")
    NetworkSettings = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wickr#NetworkSettings", name: "NetworkSettings")
    OidcConfigInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wickr#OidcConfigInfo", name: "OidcConfigInfo")
    OidcTokenInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wickr#OidcTokenInfo", name: "OidcTokenInfo")
    PasswordRequirements = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wickr#PasswordRequirements", name: "PasswordRequirements")
    PermittedNetworksList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wickr#PermittedNetworksList", name: "PermittedNetworksList")
    PermittedWickrEnterpriseNetwork = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wickr#PermittedWickrEnterpriseNetwork", name: "PermittedWickrEnterpriseNetwork")
    PermittedWickrEnterpriseNetworksList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wickr#PermittedWickrEnterpriseNetworksList", name: "PermittedWickrEnterpriseNetworksList")
    RateLimitError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wickr#RateLimitError", name: "RateLimitError", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    ReadReceiptConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wickr#ReadReceiptConfig", name: "ReadReceiptConfig")
    RegisterOidcConfigRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wickr#RegisterOidcConfigRequest", name: "RegisterOidcConfigRequest")
    RegisterOidcConfigResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wickr#RegisterOidcConfigResponse", name: "RegisterOidcConfigResponse")
    RegisterOidcConfigTestRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wickr#RegisterOidcConfigTestRequest", name: "RegisterOidcConfigTestRequest")
    RegisterOidcConfigTestResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wickr#RegisterOidcConfigTestResponse", name: "RegisterOidcConfigTestResponse")
    RegisterOpentdfConfigRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wickr#RegisterOpentdfConfigRequest", name: "RegisterOpentdfConfigRequest")
    RegisterOpentdfConfigResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wickr#RegisterOpentdfConfigResponse", name: "RegisterOpentdfConfigResponse")
    ResourceNotFoundError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wickr#ResourceNotFoundError", name: "ResourceNotFoundError", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    SecurityGroup = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wickr#SecurityGroup", name: "SecurityGroup")
    SecurityGroupId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wickr#SecurityGroupId", name: "SecurityGroupId", traits: {"smithy.api#pattern" => "^[\\S]+$"})
    SecurityGroupIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wickr#SecurityGroupIdList", name: "SecurityGroupIdList")
    SecurityGroupList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wickr#SecurityGroupList", name: "SecurityGroupList")
    SecurityGroupSettings = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wickr#SecurityGroupSettings", name: "SecurityGroupSettings")
    SecurityGroupSettingsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wickr#SecurityGroupSettingsRequest", name: "SecurityGroupSettingsRequest")
    SecurityGroupStringList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wickr#SecurityGroupStringList", name: "SecurityGroupStringList")
    SensitiveString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wickr#SensitiveString", name: "SensitiveString", traits: {"smithy.api#pattern" => "^[\\S\\s]*$", "smithy.api#sensitive" => {}})
    Setting = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wickr#Setting", name: "Setting")
    SettingsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wickr#SettingsList", name: "SettingsList")
    ShredderSettings = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wickr#ShredderSettings", name: "ShredderSettings")
    SortDirection = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.wickr#SortDirection", name: "SortDirection")
    Status = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.wickr#Status", name: "Status")
    StringList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wickr#StringList", name: "StringList")
    Uname = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wickr#Uname", name: "Uname")
    Unames = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wickr#Unames", name: "Unames")
    UnauthorizedError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wickr#UnauthorizedError", name: "UnauthorizedError", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 401})
    UpdateBotRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wickr#UpdateBotRequest", name: "UpdateBotRequest")
    UpdateBotResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wickr#UpdateBotResponse", name: "UpdateBotResponse")
    UpdateDataRetentionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wickr#UpdateDataRetentionRequest", name: "UpdateDataRetentionRequest")
    UpdateDataRetentionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wickr#UpdateDataRetentionResponse", name: "UpdateDataRetentionResponse")
    UpdateGuestUserRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wickr#UpdateGuestUserRequest", name: "UpdateGuestUserRequest")
    UpdateGuestUserResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wickr#UpdateGuestUserResponse", name: "UpdateGuestUserResponse")
    UpdateNetworkRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wickr#UpdateNetworkRequest", name: "UpdateNetworkRequest")
    UpdateNetworkResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wickr#UpdateNetworkResponse", name: "UpdateNetworkResponse")
    UpdateNetworkSettingsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wickr#UpdateNetworkSettingsRequest", name: "UpdateNetworkSettingsRequest")
    UpdateNetworkSettingsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wickr#UpdateNetworkSettingsResponse", name: "UpdateNetworkSettingsResponse")
    UpdateSecurityGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wickr#UpdateSecurityGroupRequest", name: "UpdateSecurityGroupRequest")
    UpdateSecurityGroupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wickr#UpdateSecurityGroupResponse", name: "UpdateSecurityGroupResponse")
    UpdateUserDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wickr#UpdateUserDetails", name: "UpdateUserDetails")
    UpdateUserRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wickr#UpdateUserRequest", name: "UpdateUserRequest")
    UpdateUserResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wickr#UpdateUserResponse", name: "UpdateUserResponse")
    User = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wickr#User", name: "User")
    UserId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.wickr#UserId", name: "UserId", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}, "smithy.api#pattern" => "^[0-9]+$"})
    UserIds = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wickr#UserIds", name: "UserIds")
    UserStatus = ::Smithy::Schema::Shapes::IntEnumShape.new(id: "com.amazonaws.wickr#UserStatus", name: "UserStatus")
    Users = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wickr#Users", name: "Users")
    ValidationError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wickr#ValidationError", name: "ValidationError", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 422})
    WickrAwsNetworks = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.wickr#WickrAwsNetworks", name: "WickrAwsNetworks")
    WickrAwsNetworksList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.wickr#WickrAwsNetworksList", name: "WickrAwsNetworksList")

    AccessLevel.add_member(:standard, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STANDARD", traits: {"smithy.api#enumValue" => "STANDARD"}))
    AccessLevel.add_member(:premium, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PREMIUM", traits: {"smithy.api#enumValue" => "PREMIUM"}))
    AppIds.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "member"))
    BadRequestError.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "message"))
    BadRequestError.type = Types::BadRequestError
    BasicDeviceObject.add_member(:app_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "appId"))
    BasicDeviceObject.add_member(:created, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "created"))
    BasicDeviceObject.add_member(:last_login, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "lastLogin"))
    BasicDeviceObject.add_member(:status_text, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "statusText"))
    BasicDeviceObject.add_member(:suspend, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "suspend"))
    BasicDeviceObject.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "type"))
    BasicDeviceObject.type = Types::BasicDeviceObject
    BatchCreateUserRequest.add_member(:network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkId, name: "networkId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    BatchCreateUserRequest.add_member(:users, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchCreateUserRequestItems, name: "users", traits: {"smithy.api#required" => {}}))
    BatchCreateUserRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#httpHeader" => "X-Client-Token", "smithy.api#idempotencyToken" => {}}))
    BatchCreateUserRequest.type = Types::BatchCreateUserRequest
    BatchCreateUserRequestItem.add_member(:first_name, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "firstName"))
    BatchCreateUserRequestItem.add_member(:last_name, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "lastName"))
    BatchCreateUserRequestItem.add_member(:security_group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroupIdList, name: "securityGroupIds", traits: {"smithy.api#required" => {}}))
    BatchCreateUserRequestItem.add_member(:username, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "username", traits: {"smithy.api#required" => {}}))
    BatchCreateUserRequestItem.add_member(:invite_code, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "inviteCode"))
    BatchCreateUserRequestItem.add_member(:invite_code_ttl, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "inviteCodeTtl"))
    BatchCreateUserRequestItem.add_member(:code_validation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "codeValidation"))
    BatchCreateUserRequestItem.type = Types::BatchCreateUserRequestItem
    BatchCreateUserRequestItems.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchCreateUserRequestItem, name: "member"))
    BatchCreateUserResponse.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "message"))
    BatchCreateUserResponse.add_member(:successful, ::Smithy::Schema::Shapes::MemberShape.new(target: Users, name: "successful"))
    BatchCreateUserResponse.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchUserErrorResponseItems, name: "failed"))
    BatchCreateUserResponse.type = Types::BatchCreateUserResponse
    BatchDeleteUserRequest.add_member(:network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkId, name: "networkId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    BatchDeleteUserRequest.add_member(:user_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: UserIds, name: "userIds", traits: {"smithy.api#required" => {}}))
    BatchDeleteUserRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#httpHeader" => "X-Client-Token", "smithy.api#idempotencyToken" => {}}))
    BatchDeleteUserRequest.type = Types::BatchDeleteUserRequest
    BatchDeleteUserResponse.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "message"))
    BatchDeleteUserResponse.add_member(:successful, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchUserSuccessResponseItems, name: "successful"))
    BatchDeleteUserResponse.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchUserErrorResponseItems, name: "failed"))
    BatchDeleteUserResponse.type = Types::BatchDeleteUserResponse
    BatchDeviceErrorResponseItem.add_member(:field, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "field"))
    BatchDeviceErrorResponseItem.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "reason"))
    BatchDeviceErrorResponseItem.add_member(:app_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "appId", traits: {"smithy.api#required" => {}}))
    BatchDeviceErrorResponseItem.type = Types::BatchDeviceErrorResponseItem
    BatchDeviceErrorResponseItems.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchDeviceErrorResponseItem, name: "member"))
    BatchDeviceSuccessResponseItem.add_member(:app_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "appId", traits: {"smithy.api#required" => {}}))
    BatchDeviceSuccessResponseItem.type = Types::BatchDeviceSuccessResponseItem
    BatchDeviceSuccessResponseItems.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchDeviceSuccessResponseItem, name: "member"))
    BatchLookupUserUnameRequest.add_member(:network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkId, name: "networkId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    BatchLookupUserUnameRequest.add_member(:unames, ::Smithy::Schema::Shapes::MemberShape.new(target: Unames, name: "unames", traits: {"smithy.api#required" => {}}))
    BatchLookupUserUnameRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#httpHeader" => "X-Client-Token", "smithy.api#idempotencyToken" => {}}))
    BatchLookupUserUnameRequest.type = Types::BatchLookupUserUnameRequest
    BatchLookupUserUnameResponse.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "message"))
    BatchLookupUserUnameResponse.add_member(:successful, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchUnameSuccessResponseItems, name: "successful"))
    BatchLookupUserUnameResponse.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchUnameErrorResponseItems, name: "failed"))
    BatchLookupUserUnameResponse.type = Types::BatchLookupUserUnameResponse
    BatchReinviteUserRequest.add_member(:network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkId, name: "networkId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    BatchReinviteUserRequest.add_member(:user_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: UserIds, name: "userIds", traits: {"smithy.api#required" => {}}))
    BatchReinviteUserRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#httpHeader" => "X-Client-Token", "smithy.api#idempotencyToken" => {}}))
    BatchReinviteUserRequest.type = Types::BatchReinviteUserRequest
    BatchReinviteUserResponse.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "message"))
    BatchReinviteUserResponse.add_member(:successful, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchUserSuccessResponseItems, name: "successful"))
    BatchReinviteUserResponse.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchUserErrorResponseItems, name: "failed"))
    BatchReinviteUserResponse.type = Types::BatchReinviteUserResponse
    BatchResetDevicesForUserRequest.add_member(:network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkId, name: "networkId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    BatchResetDevicesForUserRequest.add_member(:user_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserId, name: "userId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    BatchResetDevicesForUserRequest.add_member(:app_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: AppIds, name: "appIds", traits: {"smithy.api#required" => {}}))
    BatchResetDevicesForUserRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#httpHeader" => "X-Client-Token", "smithy.api#idempotencyToken" => {}}))
    BatchResetDevicesForUserRequest.type = Types::BatchResetDevicesForUserRequest
    BatchResetDevicesForUserResponse.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "message"))
    BatchResetDevicesForUserResponse.add_member(:successful, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchDeviceSuccessResponseItems, name: "successful"))
    BatchResetDevicesForUserResponse.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchDeviceErrorResponseItems, name: "failed"))
    BatchResetDevicesForUserResponse.type = Types::BatchResetDevicesForUserResponse
    BatchToggleUserSuspendStatusRequest.add_member(:network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkId, name: "networkId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    BatchToggleUserSuspendStatusRequest.add_member(:suspend, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "suspend", traits: {"smithy.api#httpQuery" => "suspend", "smithy.api#required" => {}}))
    BatchToggleUserSuspendStatusRequest.add_member(:user_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: UserIds, name: "userIds", traits: {"smithy.api#required" => {}}))
    BatchToggleUserSuspendStatusRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#httpHeader" => "X-Client-Token", "smithy.api#idempotencyToken" => {}}))
    BatchToggleUserSuspendStatusRequest.type = Types::BatchToggleUserSuspendStatusRequest
    BatchToggleUserSuspendStatusResponse.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "message"))
    BatchToggleUserSuspendStatusResponse.add_member(:successful, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchUserSuccessResponseItems, name: "successful"))
    BatchToggleUserSuspendStatusResponse.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchUserErrorResponseItems, name: "failed"))
    BatchToggleUserSuspendStatusResponse.type = Types::BatchToggleUserSuspendStatusResponse
    BatchUnameErrorResponseItem.add_member(:field, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "field"))
    BatchUnameErrorResponseItem.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "reason"))
    BatchUnameErrorResponseItem.add_member(:uname, ::Smithy::Schema::Shapes::MemberShape.new(target: Uname, name: "uname", traits: {"smithy.api#required" => {}}))
    BatchUnameErrorResponseItem.type = Types::BatchUnameErrorResponseItem
    BatchUnameErrorResponseItems.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchUnameErrorResponseItem, name: "member"))
    BatchUnameSuccessResponseItem.add_member(:uname, ::Smithy::Schema::Shapes::MemberShape.new(target: Uname, name: "uname", traits: {"smithy.api#required" => {}}))
    BatchUnameSuccessResponseItem.add_member(:username, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "username", traits: {"smithy.api#required" => {}}))
    BatchUnameSuccessResponseItem.type = Types::BatchUnameSuccessResponseItem
    BatchUnameSuccessResponseItems.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchUnameSuccessResponseItem, name: "member"))
    BatchUserErrorResponseItem.add_member(:field, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "field"))
    BatchUserErrorResponseItem.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "reason"))
    BatchUserErrorResponseItem.add_member(:user_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserId, name: "userId", traits: {"smithy.api#required" => {}}))
    BatchUserErrorResponseItem.type = Types::BatchUserErrorResponseItem
    BatchUserErrorResponseItems.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchUserErrorResponseItem, name: "member"))
    BatchUserSuccessResponseItem.add_member(:user_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserId, name: "userId", traits: {"smithy.api#required" => {}}))
    BatchUserSuccessResponseItem.type = Types::BatchUserSuccessResponseItem
    BatchUserSuccessResponseItems.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchUserSuccessResponseItem, name: "member"))
    BlockedGuestUser.add_member(:username, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "username", traits: {"smithy.api#required" => {}}))
    BlockedGuestUser.add_member(:admin, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "admin", traits: {"smithy.api#required" => {}}))
    BlockedGuestUser.add_member(:modified, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "modified", traits: {"smithy.api#required" => {}}))
    BlockedGuestUser.add_member(:username_hash, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "usernameHash", traits: {"smithy.api#required" => {}}))
    BlockedGuestUser.type = Types::BlockedGuestUser
    BlockedGuestUserList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BlockedGuestUser, name: "member"))
    Bot.add_member(:bot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "botId"))
    Bot.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "displayName"))
    Bot.add_member(:username, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "username"))
    Bot.add_member(:uname, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "uname"))
    Bot.add_member(:pubkey, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "pubkey"))
    Bot.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: BotStatus, name: "status"))
    Bot.add_member(:group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "groupId"))
    Bot.add_member(:has_challenge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "hasChallenge"))
    Bot.add_member(:suspended, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "suspended"))
    Bot.add_member(:last_login, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "lastLogin"))
    Bot.type = Types::Bot
    BotStatus.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING", traits: {"smithy.api#enumValue" => 1}))
    BotStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => 2}))
    Bots.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Bot, name: "member"))
    CallingSettings.add_member(:can_start11_call, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "canStart11Call"))
    CallingSettings.add_member(:can_video_call, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "canVideoCall"))
    CallingSettings.add_member(:force_tcp_call, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "forceTcpCall"))
    CallingSettings.type = Types::CallingSettings
    ConsentPopupConfig.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "enabled", traits: {"smithy.api#required" => {}}))
    ConsentPopupConfig.add_member(:header, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "header", traits: {"smithy.api#length" => {"max" => 100}}))
    ConsentPopupConfig.add_member(:content, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "content", traits: {"smithy.api#length" => {"max" => 5000}}))
    ConsentPopupConfig.add_member(:close_button_label, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "closeButtonLabel", traits: {"smithy.api#length" => {"max" => 20}}))
    ConsentPopupConfig.type = Types::ConsentPopupConfig
    CreateBotRequest.add_member(:network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkId, name: "networkId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateBotRequest.add_member(:username, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "username", traits: {"smithy.api#required" => {}}))
    CreateBotRequest.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "displayName"))
    CreateBotRequest.add_member(:group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "groupId", traits: {"smithy.api#required" => {}}))
    CreateBotRequest.add_member(:challenge, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "challenge", traits: {"smithy.api#required" => {}}))
    CreateBotRequest.type = Types::CreateBotRequest
    CreateBotResponse.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "message"))
    CreateBotResponse.add_member(:bot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BotId, name: "botId", traits: {"smithy.api#required" => {}}))
    CreateBotResponse.add_member(:network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkId, name: "networkId"))
    CreateBotResponse.add_member(:username, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "username"))
    CreateBotResponse.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "displayName"))
    CreateBotResponse.add_member(:group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "groupId"))
    CreateBotResponse.type = Types::CreateBotResponse
    CreateDataRetentionBotChallengeRequest.add_member(:network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkId, name: "networkId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateDataRetentionBotChallengeRequest.type = Types::CreateDataRetentionBotChallengeRequest
    CreateDataRetentionBotChallengeResponse.add_member(:challenge, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "challenge", traits: {"smithy.api#required" => {}}))
    CreateDataRetentionBotChallengeResponse.type = Types::CreateDataRetentionBotChallengeResponse
    CreateDataRetentionBotRequest.add_member(:network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkId, name: "networkId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateDataRetentionBotRequest.type = Types::CreateDataRetentionBotRequest
    CreateDataRetentionBotResponse.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "message"))
    CreateDataRetentionBotResponse.type = Types::CreateDataRetentionBotResponse
    CreateNetworkRequest.add_member(:network_name, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "networkName", traits: {"smithy.api#required" => {}}))
    CreateNetworkRequest.add_member(:access_level, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessLevel, name: "accessLevel", traits: {"smithy.api#required" => {}}))
    CreateNetworkRequest.add_member(:enable_premium_free_trial, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "enablePremiumFreeTrial", traits: {"smithy.api#notProperty" => {}}))
    CreateNetworkRequest.add_member(:encryption_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "encryptionKeyArn", traits: {"smithy.api#property" => {}}))
    CreateNetworkRequest.type = Types::CreateNetworkRequest
    CreateNetworkResponse.add_member(:network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkId, name: "networkId", traits: {"smithy.api#notProperty" => {}}))
    CreateNetworkResponse.add_member(:network_name, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "networkName"))
    CreateNetworkResponse.add_member(:encryption_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "encryptionKeyArn"))
    CreateNetworkResponse.type = Types::CreateNetworkResponse
    CreateSecurityGroupRequest.add_member(:network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkId, name: "networkId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateSecurityGroupRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "name", traits: {"smithy.api#required" => {}}))
    CreateSecurityGroupRequest.add_member(:security_group_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroupSettingsRequest, name: "securityGroupSettings", traits: {"smithy.api#required" => {}}))
    CreateSecurityGroupRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#httpHeader" => "X-Client-Token", "smithy.api#idempotencyToken" => {}}))
    CreateSecurityGroupRequest.type = Types::CreateSecurityGroupRequest
    CreateSecurityGroupResponse.add_member(:security_group, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroup, name: "securityGroup", traits: {"smithy.api#required" => {}}))
    CreateSecurityGroupResponse.type = Types::CreateSecurityGroupResponse
    DataRetentionActionType.add_member(:enable, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLE", traits: {"smithy.api#enumValue" => "ENABLE"}))
    DataRetentionActionType.add_member(:disable, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLE", traits: {"smithy.api#enumValue" => "DISABLE"}))
    DataRetentionActionType.add_member(:pubkey_msg_ack, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PUBKEY_MSG_ACK", traits: {"smithy.api#enumValue" => "PUBKEY_MSG_ACK"}))
    DeleteBotRequest.add_member(:network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkId, name: "networkId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteBotRequest.add_member(:bot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BotId, name: "botId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteBotRequest.type = Types::DeleteBotRequest
    DeleteBotResponse.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "message"))
    DeleteBotResponse.type = Types::DeleteBotResponse
    DeleteDataRetentionBotRequest.add_member(:network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkId, name: "networkId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteDataRetentionBotRequest.type = Types::DeleteDataRetentionBotRequest
    DeleteDataRetentionBotResponse.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "message"))
    DeleteDataRetentionBotResponse.type = Types::DeleteDataRetentionBotResponse
    DeleteNetworkRequest.add_member(:network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkId, name: "networkId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteNetworkRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#httpHeader" => "X-Client-Token", "smithy.api#idempotencyToken" => {}}))
    DeleteNetworkRequest.type = Types::DeleteNetworkRequest
    DeleteNetworkResponse.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "message", traits: {"smithy.api#notProperty" => {}}))
    DeleteNetworkResponse.type = Types::DeleteNetworkResponse
    DeleteSecurityGroupRequest.add_member(:network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkId, name: "networkId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteSecurityGroupRequest.add_member(:group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "groupId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteSecurityGroupRequest.type = Types::DeleteSecurityGroupRequest
    DeleteSecurityGroupResponse.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "message"))
    DeleteSecurityGroupResponse.add_member(:network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkId, name: "networkId"))
    DeleteSecurityGroupResponse.add_member(:group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "groupId"))
    DeleteSecurityGroupResponse.type = Types::DeleteSecurityGroupResponse
    Devices.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BasicDeviceObject, name: "member"))
    ErrorDetail.add_member(:field, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "field"))
    ErrorDetail.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "reason"))
    ErrorDetail.type = Types::ErrorDetail
    ErrorDetailList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorDetail, name: "member"))
    ForbiddenError.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "message"))
    ForbiddenError.type = Types::ForbiddenError
    GetBotRequest.add_member(:network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkId, name: "networkId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetBotRequest.add_member(:bot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BotId, name: "botId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetBotRequest.type = Types::GetBotRequest
    GetBotResponse.add_member(:bot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "botId"))
    GetBotResponse.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "displayName"))
    GetBotResponse.add_member(:username, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "username"))
    GetBotResponse.add_member(:uname, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "uname"))
    GetBotResponse.add_member(:pubkey, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "pubkey"))
    GetBotResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: BotStatus, name: "status"))
    GetBotResponse.add_member(:group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "groupId"))
    GetBotResponse.add_member(:has_challenge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "hasChallenge"))
    GetBotResponse.add_member(:suspended, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "suspended"))
    GetBotResponse.add_member(:last_login, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "lastLogin"))
    GetBotResponse.type = Types::GetBotResponse
    GetBotsCountRequest.add_member(:network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkId, name: "networkId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetBotsCountRequest.type = Types::GetBotsCountRequest
    GetBotsCountResponse.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "pending", traits: {"smithy.api#required" => {}}))
    GetBotsCountResponse.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "active", traits: {"smithy.api#required" => {}}))
    GetBotsCountResponse.add_member(:total, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "total", traits: {"smithy.api#required" => {}}))
    GetBotsCountResponse.type = Types::GetBotsCountResponse
    GetDataRetentionBotRequest.add_member(:network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkId, name: "networkId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDataRetentionBotRequest.type = Types::GetDataRetentionBotRequest
    GetDataRetentionBotResponse.add_member(:bot_name, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "botName"))
    GetDataRetentionBotResponse.add_member(:bot_exists, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "botExists"))
    GetDataRetentionBotResponse.add_member(:is_bot_active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "isBotActive"))
    GetDataRetentionBotResponse.add_member(:is_data_retention_bot_registered, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "isDataRetentionBotRegistered"))
    GetDataRetentionBotResponse.add_member(:is_data_retention_service_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "isDataRetentionServiceEnabled"))
    GetDataRetentionBotResponse.add_member(:is_pubkey_msg_acked, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "isPubkeyMsgAcked"))
    GetDataRetentionBotResponse.type = Types::GetDataRetentionBotResponse
    GetGuestUserHistoryCountRequest.add_member(:network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkId, name: "networkId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetGuestUserHistoryCountRequest.type = Types::GetGuestUserHistoryCountRequest
    GetGuestUserHistoryCountResponse.add_member(:history, ::Smithy::Schema::Shapes::MemberShape.new(target: GuestUserHistoryCountList, name: "history", traits: {"smithy.api#required" => {}}))
    GetGuestUserHistoryCountResponse.type = Types::GetGuestUserHistoryCountResponse
    GetNetworkRequest.add_member(:network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkId, name: "networkId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetNetworkRequest.type = Types::GetNetworkRequest
    GetNetworkResponse.add_member(:network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkId, name: "networkId", traits: {"smithy.api#required" => {}}))
    GetNetworkResponse.add_member(:network_name, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "networkName", traits: {"smithy.api#property" => {}, "smithy.api#required" => {}}))
    GetNetworkResponse.add_member(:access_level, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessLevel, name: "accessLevel", traits: {"smithy.api#property" => {}, "smithy.api#required" => {}}))
    GetNetworkResponse.add_member(:aws_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "awsAccountId", traits: {"smithy.api#property" => {}, "smithy.api#required" => {}}))
    GetNetworkResponse.add_member(:network_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "networkArn", traits: {"smithy.api#property" => {}, "smithy.api#required" => {}}))
    GetNetworkResponse.add_member(:standing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "standing", traits: {"smithy.api#property" => {}}))
    GetNetworkResponse.add_member(:free_trial_expiration, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "freeTrialExpiration", traits: {"smithy.api#property" => {}}))
    GetNetworkResponse.add_member(:migration_state, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "migrationState", traits: {"smithy.api#property" => {}}))
    GetNetworkResponse.add_member(:encryption_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "encryptionKeyArn", traits: {"smithy.api#property" => {}}))
    GetNetworkResponse.type = Types::GetNetworkResponse
    GetNetworkSettingsRequest.add_member(:network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkId, name: "networkId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetNetworkSettingsRequest.type = Types::GetNetworkSettingsRequest
    GetNetworkSettingsResponse.add_member(:settings, ::Smithy::Schema::Shapes::MemberShape.new(target: SettingsList, name: "settings", traits: {"smithy.api#required" => {}}))
    GetNetworkSettingsResponse.type = Types::GetNetworkSettingsResponse
    GetOidcInfoRequest.add_member(:network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkId, name: "networkId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetOidcInfoRequest.add_member(:client_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "clientId", traits: {"smithy.api#httpQuery" => "clientId"}))
    GetOidcInfoRequest.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "code", traits: {"smithy.api#httpQuery" => "code"}))
    GetOidcInfoRequest.add_member(:grant_type, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "grantType", traits: {"smithy.api#httpQuery" => "grantType"}))
    GetOidcInfoRequest.add_member(:redirect_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "redirectUri", traits: {"smithy.api#httpQuery" => "redirectUri"}))
    GetOidcInfoRequest.add_member(:url, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "url", traits: {"smithy.api#httpQuery" => "url"}))
    GetOidcInfoRequest.add_member(:client_secret, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "clientSecret", traits: {"smithy.api#httpQuery" => "clientSecret"}))
    GetOidcInfoRequest.add_member(:code_verifier, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "codeVerifier", traits: {"smithy.api#httpQuery" => "codeVerifier"}))
    GetOidcInfoRequest.add_member(:certificate, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "certificate", traits: {"smithy.api#httpQuery" => "certificate"}))
    GetOidcInfoRequest.type = Types::GetOidcInfoRequest
    GetOidcInfoResponse.add_member(:openid_connect_info, ::Smithy::Schema::Shapes::MemberShape.new(target: OidcConfigInfo, name: "openidConnectInfo"))
    GetOidcInfoResponse.add_member(:token_info, ::Smithy::Schema::Shapes::MemberShape.new(target: OidcTokenInfo, name: "tokenInfo"))
    GetOidcInfoResponse.type = Types::GetOidcInfoResponse
    GetOpentdfConfigRequest.add_member(:network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkId, name: "networkId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetOpentdfConfigRequest.type = Types::GetOpentdfConfigRequest
    GetOpentdfConfigResponse.add_member(:client_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "clientId", traits: {"smithy.api#required" => {}}))
    GetOpentdfConfigResponse.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "domain", traits: {"smithy.api#required" => {}}))
    GetOpentdfConfigResponse.add_member(:client_secret, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "clientSecret", traits: {"smithy.api#required" => {}}))
    GetOpentdfConfigResponse.add_member(:provider, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "provider", traits: {"smithy.api#required" => {}}))
    GetOpentdfConfigResponse.type = Types::GetOpentdfConfigResponse
    GetSecurityGroupRequest.add_member(:network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkId, name: "networkId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSecurityGroupRequest.add_member(:group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "groupId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSecurityGroupRequest.type = Types::GetSecurityGroupRequest
    GetSecurityGroupResponse.add_member(:security_group, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroup, name: "securityGroup", traits: {"smithy.api#required" => {}}))
    GetSecurityGroupResponse.type = Types::GetSecurityGroupResponse
    GetUserRequest.add_member(:network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkId, name: "networkId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetUserRequest.add_member(:user_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserId, name: "userId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetUserRequest.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "startTime", traits: {"smithy.api#httpQuery" => "startTime", "smithy.api#timestampFormat" => "epoch-seconds"}))
    GetUserRequest.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "endTime", traits: {"smithy.api#httpQuery" => "endTime", "smithy.api#timestampFormat" => "epoch-seconds"}))
    GetUserRequest.type = Types::GetUserRequest
    GetUserResponse.add_member(:user_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserId, name: "userId", traits: {"smithy.api#required" => {}}))
    GetUserResponse.add_member(:first_name, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "firstName"))
    GetUserResponse.add_member(:last_name, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "lastName"))
    GetUserResponse.add_member(:username, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "username"))
    GetUserResponse.add_member(:is_admin, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "isAdmin"))
    GetUserResponse.add_member(:suspended, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "suspended"))
    GetUserResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "status"))
    GetUserResponse.add_member(:last_activity, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "lastActivity"))
    GetUserResponse.add_member(:last_login, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "lastLogin"))
    GetUserResponse.add_member(:security_group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroupIdList, name: "securityGroupIds"))
    GetUserResponse.type = Types::GetUserResponse
    GetUsersCountRequest.add_member(:network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkId, name: "networkId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetUsersCountRequest.type = Types::GetUsersCountRequest
    GetUsersCountResponse.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "pending", traits: {"smithy.api#required" => {}}))
    GetUsersCountResponse.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "active", traits: {"smithy.api#required" => {}}))
    GetUsersCountResponse.add_member(:rejected, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "rejected", traits: {"smithy.api#required" => {}}))
    GetUsersCountResponse.add_member(:remaining, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "remaining", traits: {"smithy.api#required" => {}}))
    GetUsersCountResponse.add_member(:total, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "total", traits: {"smithy.api#required" => {}}))
    GetUsersCountResponse.type = Types::GetUsersCountResponse
    GuestUser.add_member(:billing_period, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "billingPeriod", traits: {"smithy.api#required" => {}}))
    GuestUser.add_member(:username, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "username", traits: {"smithy.api#required" => {}}))
    GuestUser.add_member(:username_hash, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "usernameHash", traits: {"smithy.api#required" => {}}))
    GuestUser.type = Types::GuestUser
    GuestUserHistoryCount.add_member(:month, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "month", traits: {"smithy.api#required" => {}}))
    GuestUserHistoryCount.add_member(:count, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "count", traits: {"smithy.api#required" => {}}))
    GuestUserHistoryCount.type = Types::GuestUserHistoryCount
    GuestUserHistoryCountList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: GuestUserHistoryCount, name: "member"))
    GuestUserList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: GuestUser, name: "member"))
    InternalServerError.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "message", traits: {"smithy.api#required" => {}}))
    InternalServerError.type = Types::InternalServerError
    ListBlockedGuestUsersRequest.add_member(:network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkId, name: "networkId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListBlockedGuestUsersRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListBlockedGuestUsersRequest.add_member(:sort_direction, ::Smithy::Schema::Shapes::MemberShape.new(target: SortDirection, name: "sortDirection", traits: {"smithy.api#httpQuery" => "sortDirection"}))
    ListBlockedGuestUsersRequest.add_member(:sort_fields, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "sortFields", traits: {"smithy.api#httpQuery" => "sortFields"}))
    ListBlockedGuestUsersRequest.add_member(:username, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "username", traits: {"smithy.api#httpQuery" => "username"}))
    ListBlockedGuestUsersRequest.add_member(:admin, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "admin", traits: {"smithy.api#httpQuery" => "admin"}))
    ListBlockedGuestUsersRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListBlockedGuestUsersRequest.type = Types::ListBlockedGuestUsersRequest
    ListBlockedGuestUsersResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "nextToken"))
    ListBlockedGuestUsersResponse.add_member(:blocklist, ::Smithy::Schema::Shapes::MemberShape.new(target: BlockedGuestUserList, name: "blocklist", traits: {"smithy.api#required" => {}}))
    ListBlockedGuestUsersResponse.type = Types::ListBlockedGuestUsersResponse
    ListBotsRequest.add_member(:network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkId, name: "networkId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListBotsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListBotsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListBotsRequest.add_member(:sort_fields, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "sortFields", traits: {"smithy.api#httpQuery" => "sortFields"}))
    ListBotsRequest.add_member(:sort_direction, ::Smithy::Schema::Shapes::MemberShape.new(target: SortDirection, name: "sortDirection", traits: {"smithy.api#httpQuery" => "sortDirection"}))
    ListBotsRequest.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "displayName", traits: {"smithy.api#httpQuery" => "displayName"}))
    ListBotsRequest.add_member(:username, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "username", traits: {"smithy.api#httpQuery" => "username"}))
    ListBotsRequest.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: BotStatus, name: "status", traits: {"smithy.api#httpQuery" => "status"}))
    ListBotsRequest.add_member(:group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "groupId", traits: {"smithy.api#httpQuery" => "groupId"}))
    ListBotsRequest.type = Types::ListBotsRequest
    ListBotsResponse.add_member(:bots, ::Smithy::Schema::Shapes::MemberShape.new(target: Bots, name: "bots", traits: {"smithy.api#required" => {}}))
    ListBotsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "nextToken"))
    ListBotsResponse.type = Types::ListBotsResponse
    ListDevicesForUserRequest.add_member(:network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkId, name: "networkId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListDevicesForUserRequest.add_member(:user_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserId, name: "userId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListDevicesForUserRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListDevicesForUserRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListDevicesForUserRequest.add_member(:sort_fields, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "sortFields", traits: {"smithy.api#httpQuery" => "sortFields"}))
    ListDevicesForUserRequest.add_member(:sort_direction, ::Smithy::Schema::Shapes::MemberShape.new(target: SortDirection, name: "sortDirection", traits: {"smithy.api#httpQuery" => "sortDirection"}))
    ListDevicesForUserRequest.type = Types::ListDevicesForUserRequest
    ListDevicesForUserResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "nextToken"))
    ListDevicesForUserResponse.add_member(:devices, ::Smithy::Schema::Shapes::MemberShape.new(target: Devices, name: "devices", traits: {"smithy.api#required" => {}}))
    ListDevicesForUserResponse.type = Types::ListDevicesForUserResponse
    ListGuestUsersRequest.add_member(:network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkId, name: "networkId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListGuestUsersRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListGuestUsersRequest.add_member(:sort_direction, ::Smithy::Schema::Shapes::MemberShape.new(target: SortDirection, name: "sortDirection", traits: {"smithy.api#httpQuery" => "sortDirection"}))
    ListGuestUsersRequest.add_member(:sort_fields, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "sortFields", traits: {"smithy.api#httpQuery" => "sortFields"}))
    ListGuestUsersRequest.add_member(:username, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "username", traits: {"smithy.api#httpQuery" => "username"}))
    ListGuestUsersRequest.add_member(:billing_period, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "billingPeriod", traits: {"smithy.api#httpQuery" => "billingPeriod"}))
    ListGuestUsersRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListGuestUsersRequest.type = Types::ListGuestUsersRequest
    ListGuestUsersResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "nextToken"))
    ListGuestUsersResponse.add_member(:guestlist, ::Smithy::Schema::Shapes::MemberShape.new(target: GuestUserList, name: "guestlist", traits: {"smithy.api#required" => {}}))
    ListGuestUsersResponse.type = Types::ListGuestUsersResponse
    ListNetworksRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListNetworksRequest.add_member(:sort_fields, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "sortFields", traits: {"smithy.api#httpQuery" => "sortFields"}))
    ListNetworksRequest.add_member(:sort_direction, ::Smithy::Schema::Shapes::MemberShape.new(target: SortDirection, name: "sortDirection", traits: {"smithy.api#httpQuery" => "sortDirection"}))
    ListNetworksRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListNetworksRequest.type = Types::ListNetworksRequest
    ListNetworksResponse.add_member(:networks, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkList, name: "networks", traits: {"smithy.api#required" => {}}))
    ListNetworksResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "nextToken", traits: {"smithy.api#notProperty" => {}}))
    ListNetworksResponse.type = Types::ListNetworksResponse
    ListSecurityGroupUsersRequest.add_member(:network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkId, name: "networkId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListSecurityGroupUsersRequest.add_member(:group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "groupId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListSecurityGroupUsersRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListSecurityGroupUsersRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListSecurityGroupUsersRequest.add_member(:sort_fields, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "sortFields", traits: {"smithy.api#httpQuery" => "sortFields"}))
    ListSecurityGroupUsersRequest.add_member(:sort_direction, ::Smithy::Schema::Shapes::MemberShape.new(target: SortDirection, name: "sortDirection", traits: {"smithy.api#httpQuery" => "sortDirection"}))
    ListSecurityGroupUsersRequest.type = Types::ListSecurityGroupUsersRequest
    ListSecurityGroupUsersResponse.add_member(:users, ::Smithy::Schema::Shapes::MemberShape.new(target: Users, name: "users", traits: {"smithy.api#required" => {}}))
    ListSecurityGroupUsersResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "nextToken"))
    ListSecurityGroupUsersResponse.type = Types::ListSecurityGroupUsersResponse
    ListSecurityGroupsRequest.add_member(:network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkId, name: "networkId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListSecurityGroupsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListSecurityGroupsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListSecurityGroupsRequest.add_member(:sort_fields, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "sortFields", traits: {"smithy.api#httpQuery" => "sortFields"}))
    ListSecurityGroupsRequest.add_member(:sort_direction, ::Smithy::Schema::Shapes::MemberShape.new(target: SortDirection, name: "sortDirection", traits: {"smithy.api#httpQuery" => "sortDirection"}))
    ListSecurityGroupsRequest.type = Types::ListSecurityGroupsRequest
    ListSecurityGroupsResponse.add_member(:security_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroupList, name: "securityGroups"))
    ListSecurityGroupsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "nextToken"))
    ListSecurityGroupsResponse.type = Types::ListSecurityGroupsResponse
    ListUsersRequest.add_member(:network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkId, name: "networkId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListUsersRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListUsersRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListUsersRequest.add_member(:sort_fields, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "sortFields", traits: {"smithy.api#httpQuery" => "sortFields"}))
    ListUsersRequest.add_member(:sort_direction, ::Smithy::Schema::Shapes::MemberShape.new(target: SortDirection, name: "sortDirection", traits: {"smithy.api#httpQuery" => "sortDirection"}))
    ListUsersRequest.add_member(:first_name, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "firstName", traits: {"smithy.api#httpQuery" => "firstName"}))
    ListUsersRequest.add_member(:last_name, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "lastName", traits: {"smithy.api#httpQuery" => "lastName"}))
    ListUsersRequest.add_member(:username, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "username", traits: {"smithy.api#httpQuery" => "username"}))
    ListUsersRequest.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: UserStatus, name: "status", traits: {"smithy.api#httpQuery" => "status"}))
    ListUsersRequest.add_member(:group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "groupId", traits: {"smithy.api#httpQuery" => "groupId"}))
    ListUsersRequest.type = Types::ListUsersRequest
    ListUsersResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "nextToken"))
    ListUsersResponse.add_member(:users, ::Smithy::Schema::Shapes::MemberShape.new(target: Users, name: "users"))
    ListUsersResponse.type = Types::ListUsersResponse
    Network.add_member(:network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkId, name: "networkId", traits: {"smithy.api#required" => {}}))
    Network.add_member(:network_name, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "networkName", traits: {"smithy.api#property" => {}, "smithy.api#required" => {}}))
    Network.add_member(:access_level, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessLevel, name: "accessLevel", traits: {"smithy.api#property" => {}, "smithy.api#required" => {}}))
    Network.add_member(:aws_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "awsAccountId", traits: {"smithy.api#property" => {}, "smithy.api#required" => {}}))
    Network.add_member(:network_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "networkArn", traits: {"smithy.api#property" => {}, "smithy.api#required" => {}}))
    Network.add_member(:standing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "standing", traits: {"smithy.api#property" => {}}))
    Network.add_member(:free_trial_expiration, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "freeTrialExpiration", traits: {"smithy.api#property" => {}}))
    Network.add_member(:migration_state, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "migrationState", traits: {"smithy.api#property" => {}}))
    Network.add_member(:encryption_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "encryptionKeyArn", traits: {"smithy.api#property" => {}}))
    Network.type = Types::Network
    NetworkList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Network, name: "member"))
    NetworkSettings.add_member(:enable_client_metrics, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "enableClientMetrics"))
    NetworkSettings.add_member(:read_receipt_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ReadReceiptConfig, name: "readReceiptConfig"))
    NetworkSettings.add_member(:data_retention, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "dataRetention"))
    NetworkSettings.add_member(:enable_trusted_data_format, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "enableTrustedDataFormat"))
    NetworkSettings.add_member(:consent_popup, ::Smithy::Schema::Shapes::MemberShape.new(target: ConsentPopupConfig, name: "consentPopup"))
    NetworkSettings.type = Types::NetworkSettings
    OidcConfigInfo.add_member(:application_name, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "applicationName"))
    OidcConfigInfo.add_member(:client_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "clientId"))
    OidcConfigInfo.add_member(:company_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "companyId", traits: {"smithy.api#required" => {}}))
    OidcConfigInfo.add_member(:scopes, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "scopes", traits: {"smithy.api#required" => {}}))
    OidcConfigInfo.add_member(:issuer, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "issuer", traits: {"smithy.api#required" => {}}))
    OidcConfigInfo.add_member(:client_secret, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "clientSecret"))
    OidcConfigInfo.add_member(:secret, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "secret"))
    OidcConfigInfo.add_member(:redirect_url, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "redirectUrl"))
    OidcConfigInfo.add_member(:user_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "userId"))
    OidcConfigInfo.add_member(:custom_username, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "customUsername"))
    OidcConfigInfo.add_member(:ca_certificate, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "caCertificate"))
    OidcConfigInfo.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "applicationId", traits: {"smithy.api#range" => {"min" => 1, "max" => 10}}))
    OidcConfigInfo.add_member(:sso_token_buffer_minutes, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "ssoTokenBufferMinutes"))
    OidcConfigInfo.add_member(:extra_auth_params, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "extraAuthParams"))
    OidcConfigInfo.type = Types::OidcConfigInfo
    OidcTokenInfo.add_member(:code_verifier, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "codeVerifier"))
    OidcTokenInfo.add_member(:code_challenge, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "codeChallenge"))
    OidcTokenInfo.add_member(:access_token, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "accessToken"))
    OidcTokenInfo.add_member(:id_token, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "idToken"))
    OidcTokenInfo.add_member(:refresh_token, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "refreshToken"))
    OidcTokenInfo.add_member(:token_type, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "tokenType"))
    OidcTokenInfo.add_member(:expires_in, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "expiresIn"))
    OidcTokenInfo.type = Types::OidcTokenInfo
    PasswordRequirements.add_member(:lowercase, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "lowercase"))
    PasswordRequirements.add_member(:min_length, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "minLength"))
    PasswordRequirements.add_member(:numbers, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "numbers"))
    PasswordRequirements.add_member(:symbols, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "symbols"))
    PasswordRequirements.add_member(:uppercase, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "uppercase"))
    PasswordRequirements.type = Types::PasswordRequirements
    PermittedNetworksList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkId, name: "member"))
    PermittedWickrEnterpriseNetwork.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "domain", traits: {"smithy.api#required" => {}}))
    PermittedWickrEnterpriseNetwork.add_member(:network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkId, name: "networkId", traits: {"smithy.api#required" => {}}))
    PermittedWickrEnterpriseNetwork.type = Types::PermittedWickrEnterpriseNetwork
    PermittedWickrEnterpriseNetworksList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PermittedWickrEnterpriseNetwork, name: "member"))
    RateLimitError.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "message", traits: {"smithy.api#default" => "Too many requests sent"}))
    RateLimitError.type = Types::RateLimitError
    ReadReceiptConfig.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: Status, name: "status"))
    ReadReceiptConfig.type = Types::ReadReceiptConfig
    RegisterOidcConfigRequest.add_member(:network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkId, name: "networkId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RegisterOidcConfigRequest.add_member(:company_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "companyId", traits: {"smithy.api#required" => {}}))
    RegisterOidcConfigRequest.add_member(:custom_username, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "customUsername"))
    RegisterOidcConfigRequest.add_member(:extra_auth_params, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "extraAuthParams"))
    RegisterOidcConfigRequest.add_member(:issuer, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "issuer", traits: {"smithy.api#required" => {}}))
    RegisterOidcConfigRequest.add_member(:scopes, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "scopes", traits: {"smithy.api#required" => {}}))
    RegisterOidcConfigRequest.add_member(:secret, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "secret"))
    RegisterOidcConfigRequest.add_member(:sso_token_buffer_minutes, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "ssoTokenBufferMinutes"))
    RegisterOidcConfigRequest.add_member(:user_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "userId"))
    RegisterOidcConfigRequest.type = Types::RegisterOidcConfigRequest
    RegisterOidcConfigResponse.add_member(:application_name, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "applicationName"))
    RegisterOidcConfigResponse.add_member(:client_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "clientId"))
    RegisterOidcConfigResponse.add_member(:company_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "companyId", traits: {"smithy.api#required" => {}}))
    RegisterOidcConfigResponse.add_member(:scopes, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "scopes", traits: {"smithy.api#required" => {}}))
    RegisterOidcConfigResponse.add_member(:issuer, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "issuer", traits: {"smithy.api#required" => {}}))
    RegisterOidcConfigResponse.add_member(:client_secret, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "clientSecret"))
    RegisterOidcConfigResponse.add_member(:secret, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "secret"))
    RegisterOidcConfigResponse.add_member(:redirect_url, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "redirectUrl"))
    RegisterOidcConfigResponse.add_member(:user_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "userId"))
    RegisterOidcConfigResponse.add_member(:custom_username, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "customUsername"))
    RegisterOidcConfigResponse.add_member(:ca_certificate, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "caCertificate"))
    RegisterOidcConfigResponse.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "applicationId", traits: {"smithy.api#range" => {"min" => 1, "max" => 10}}))
    RegisterOidcConfigResponse.add_member(:sso_token_buffer_minutes, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "ssoTokenBufferMinutes"))
    RegisterOidcConfigResponse.add_member(:extra_auth_params, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "extraAuthParams"))
    RegisterOidcConfigResponse.type = Types::RegisterOidcConfigResponse
    RegisterOidcConfigTestRequest.add_member(:network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkId, name: "networkId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RegisterOidcConfigTestRequest.add_member(:extra_auth_params, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "extraAuthParams"))
    RegisterOidcConfigTestRequest.add_member(:issuer, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "issuer", traits: {"smithy.api#required" => {}}))
    RegisterOidcConfigTestRequest.add_member(:scopes, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "scopes", traits: {"smithy.api#required" => {}}))
    RegisterOidcConfigTestRequest.add_member(:certificate, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "certificate"))
    RegisterOidcConfigTestRequest.type = Types::RegisterOidcConfigTestRequest
    RegisterOidcConfigTestResponse.add_member(:token_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "tokenEndpoint"))
    RegisterOidcConfigTestResponse.add_member(:userinfo_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "userinfoEndpoint"))
    RegisterOidcConfigTestResponse.add_member(:response_types_supported, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "responseTypesSupported"))
    RegisterOidcConfigTestResponse.add_member(:scopes_supported, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "scopesSupported"))
    RegisterOidcConfigTestResponse.add_member(:issuer, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "issuer"))
    RegisterOidcConfigTestResponse.add_member(:authorization_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "authorizationEndpoint"))
    RegisterOidcConfigTestResponse.add_member(:end_session_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "endSessionEndpoint"))
    RegisterOidcConfigTestResponse.add_member(:logout_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "logoutEndpoint"))
    RegisterOidcConfigTestResponse.add_member(:grant_types_supported, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "grantTypesSupported"))
    RegisterOidcConfigTestResponse.add_member(:revocation_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "revocationEndpoint"))
    RegisterOidcConfigTestResponse.add_member(:token_endpoint_auth_methods_supported, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "tokenEndpointAuthMethodsSupported"))
    RegisterOidcConfigTestResponse.add_member(:microsoft_multi_refresh_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "microsoftMultiRefreshToken"))
    RegisterOidcConfigTestResponse.type = Types::RegisterOidcConfigTestResponse
    RegisterOpentdfConfigRequest.add_member(:network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkId, name: "networkId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RegisterOpentdfConfigRequest.add_member(:client_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "clientId", traits: {"smithy.api#required" => {}}))
    RegisterOpentdfConfigRequest.add_member(:client_secret, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "clientSecret", traits: {"smithy.api#required" => {}}))
    RegisterOpentdfConfigRequest.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "domain", traits: {"smithy.api#required" => {}}))
    RegisterOpentdfConfigRequest.add_member(:provider, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "provider", traits: {"smithy.api#required" => {}}))
    RegisterOpentdfConfigRequest.add_member(:dry_run, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "dryRun", traits: {"smithy.api#httpQuery" => "dryRun"}))
    RegisterOpentdfConfigRequest.type = Types::RegisterOpentdfConfigRequest
    RegisterOpentdfConfigResponse.add_member(:client_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "clientId", traits: {"smithy.api#required" => {}}))
    RegisterOpentdfConfigResponse.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "domain", traits: {"smithy.api#required" => {}}))
    RegisterOpentdfConfigResponse.add_member(:client_secret, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "clientSecret", traits: {"smithy.api#required" => {}}))
    RegisterOpentdfConfigResponse.add_member(:provider, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "provider", traits: {"smithy.api#required" => {}}))
    RegisterOpentdfConfigResponse.type = Types::RegisterOpentdfConfigResponse
    ResourceNotFoundError.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "message"))
    ResourceNotFoundError.type = Types::ResourceNotFoundError
    SecurityGroup.add_member(:active_members, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "activeMembers", traits: {"smithy.api#required" => {}}))
    SecurityGroup.add_member(:bot_members, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "botMembers", traits: {"smithy.api#required" => {}}))
    SecurityGroup.add_member(:active_directory_guid, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "activeDirectoryGuid"))
    SecurityGroup.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "id", traits: {"smithy.api#required" => {}}))
    SecurityGroup.add_member(:is_default, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "isDefault", traits: {"smithy.api#required" => {}}))
    SecurityGroup.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "name", traits: {"smithy.api#required" => {}}))
    SecurityGroup.add_member(:modified, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "modified", traits: {"smithy.api#required" => {}}))
    SecurityGroup.add_member(:security_group_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroupSettings, name: "securityGroupSettings", traits: {"smithy.api#required" => {}}))
    SecurityGroup.type = Types::SecurityGroup
    SecurityGroupIdList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroupId, name: "member"))
    SecurityGroupList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroup, name: "member"))
    SecurityGroupSettings.add_member(:always_reauthenticate, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "alwaysReauthenticate"))
    SecurityGroupSettings.add_member(:atak_package_values, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroupStringList, name: "atakPackageValues"))
    SecurityGroupSettings.add_member(:calling, ::Smithy::Schema::Shapes::MemberShape.new(target: CallingSettings, name: "calling"))
    SecurityGroupSettings.add_member(:check_for_updates, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "checkForUpdates"))
    SecurityGroupSettings.add_member(:enable_atak, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "enableAtak"))
    SecurityGroupSettings.add_member(:enable_crash_reports, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "enableCrashReports"))
    SecurityGroupSettings.add_member(:enable_file_download, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "enableFileDownload"))
    SecurityGroupSettings.add_member(:enable_guest_federation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "enableGuestFederation"))
    SecurityGroupSettings.add_member(:enable_notification_preview, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "enableNotificationPreview"))
    SecurityGroupSettings.add_member(:enable_open_access_option, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "enableOpenAccessOption"))
    SecurityGroupSettings.add_member(:enable_restricted_global_federation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "enableRestrictedGlobalFederation"))
    SecurityGroupSettings.add_member(:files_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "filesEnabled"))
    SecurityGroupSettings.add_member(:force_device_lockout, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "forceDeviceLockout"))
    SecurityGroupSettings.add_member(:force_open_access, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "forceOpenAccess"))
    SecurityGroupSettings.add_member(:force_read_receipts, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "forceReadReceipts"))
    SecurityGroupSettings.add_member(:global_federation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "globalFederation"))
    SecurityGroupSettings.add_member(:is_ato_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "isAtoEnabled"))
    SecurityGroupSettings.add_member(:is_link_preview_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "isLinkPreviewEnabled"))
    SecurityGroupSettings.add_member(:location_allow_maps, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "locationAllowMaps"))
    SecurityGroupSettings.add_member(:location_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "locationEnabled"))
    SecurityGroupSettings.add_member(:max_auto_download_size, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "maxAutoDownloadSize"))
    SecurityGroupSettings.add_member(:max_bor, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxBor"))
    SecurityGroupSettings.add_member(:max_ttl, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "maxTtl"))
    SecurityGroupSettings.add_member(:message_forwarding_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "messageForwardingEnabled"))
    SecurityGroupSettings.add_member(:password_requirements, ::Smithy::Schema::Shapes::MemberShape.new(target: PasswordRequirements, name: "passwordRequirements"))
    SecurityGroupSettings.add_member(:presence_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "presenceEnabled"))
    SecurityGroupSettings.add_member(:quick_responses, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroupStringList, name: "quickResponses"))
    SecurityGroupSettings.add_member(:show_master_recovery_key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "showMasterRecoveryKey"))
    SecurityGroupSettings.add_member(:shredder, ::Smithy::Schema::Shapes::MemberShape.new(target: ShredderSettings, name: "shredder"))
    SecurityGroupSettings.add_member(:sso_max_idle_minutes, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "ssoMaxIdleMinutes"))
    SecurityGroupSettings.add_member(:max_non_sso_session_minutes, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxNonSsoSessionMinutes", traits: {"smithy.api#range" => {"min" => 0, "max" => 525600}}))
    SecurityGroupSettings.add_member(:federation_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "federationMode"))
    SecurityGroupSettings.add_member(:lockout_threshold, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "lockoutThreshold"))
    SecurityGroupSettings.add_member(:permitted_networks, ::Smithy::Schema::Shapes::MemberShape.new(target: PermittedNetworksList, name: "permittedNetworks"))
    SecurityGroupSettings.add_member(:permitted_wickr_aws_networks, ::Smithy::Schema::Shapes::MemberShape.new(target: WickrAwsNetworksList, name: "permittedWickrAwsNetworks"))
    SecurityGroupSettings.add_member(:permitted_wickr_enterprise_networks, ::Smithy::Schema::Shapes::MemberShape.new(target: PermittedWickrEnterpriseNetworksList, name: "permittedWickrEnterpriseNetworks"))
    SecurityGroupSettings.type = Types::SecurityGroupSettings
    SecurityGroupSettingsRequest.add_member(:lockout_threshold, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "lockoutThreshold"))
    SecurityGroupSettingsRequest.add_member(:permitted_networks, ::Smithy::Schema::Shapes::MemberShape.new(target: PermittedNetworksList, name: "permittedNetworks"))
    SecurityGroupSettingsRequest.add_member(:enable_guest_federation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "enableGuestFederation"))
    SecurityGroupSettingsRequest.add_member(:global_federation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "globalFederation"))
    SecurityGroupSettingsRequest.add_member(:federation_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "federationMode"))
    SecurityGroupSettingsRequest.add_member(:enable_restricted_global_federation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "enableRestrictedGlobalFederation"))
    SecurityGroupSettingsRequest.add_member(:permitted_wickr_aws_networks, ::Smithy::Schema::Shapes::MemberShape.new(target: WickrAwsNetworksList, name: "permittedWickrAwsNetworks"))
    SecurityGroupSettingsRequest.add_member(:permitted_wickr_enterprise_networks, ::Smithy::Schema::Shapes::MemberShape.new(target: PermittedWickrEnterpriseNetworksList, name: "permittedWickrEnterpriseNetworks"))
    SecurityGroupSettingsRequest.type = Types::SecurityGroupSettingsRequest
    SecurityGroupStringList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "member"))
    Setting.add_member(:option_name, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "optionName", traits: {"smithy.api#required" => {}}))
    Setting.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "value", traits: {"smithy.api#required" => {}}))
    Setting.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "type", traits: {"smithy.api#required" => {}}))
    Setting.type = Types::Setting
    SettingsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Setting, name: "member"))
    ShredderSettings.add_member(:can_process_manually, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "canProcessManually"))
    ShredderSettings.add_member(:intensity, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "intensity"))
    ShredderSettings.type = Types::ShredderSettings
    SortDirection.add_member(:asc, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ASC", traits: {"smithy.api#enumValue" => "ASC"}))
    SortDirection.add_member(:desc, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DESC", traits: {"smithy.api#enumValue" => "DESC"}))
    Status.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    Status.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    Status.add_member(:force_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FORCE_ENABLED", traits: {"smithy.api#enumValue" => "FORCE_ENABLED"}))
    StringList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "member"))
    Unames.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "member"))
    UnauthorizedError.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "message"))
    UnauthorizedError.type = Types::UnauthorizedError
    UpdateBotRequest.add_member(:network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkId, name: "networkId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateBotRequest.add_member(:bot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BotId, name: "botId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateBotRequest.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "displayName"))
    UpdateBotRequest.add_member(:group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "groupId"))
    UpdateBotRequest.add_member(:challenge, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "challenge"))
    UpdateBotRequest.add_member(:suspend, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "suspend"))
    UpdateBotRequest.type = Types::UpdateBotRequest
    UpdateBotResponse.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "message"))
    UpdateBotResponse.type = Types::UpdateBotResponse
    UpdateDataRetentionRequest.add_member(:network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkId, name: "networkId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateDataRetentionRequest.add_member(:action_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DataRetentionActionType, name: "actionType", traits: {"smithy.api#required" => {}}))
    UpdateDataRetentionRequest.type = Types::UpdateDataRetentionRequest
    UpdateDataRetentionResponse.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "message"))
    UpdateDataRetentionResponse.type = Types::UpdateDataRetentionResponse
    UpdateGuestUserRequest.add_member(:network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkId, name: "networkId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateGuestUserRequest.add_member(:username_hash, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "usernameHash", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateGuestUserRequest.add_member(:block, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "block", traits: {"smithy.api#required" => {}}))
    UpdateGuestUserRequest.type = Types::UpdateGuestUserRequest
    UpdateGuestUserResponse.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "message"))
    UpdateGuestUserResponse.type = Types::UpdateGuestUserResponse
    UpdateNetworkRequest.add_member(:network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkId, name: "networkId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateNetworkRequest.add_member(:network_name, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "networkName", traits: {"smithy.api#required" => {}}))
    UpdateNetworkRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#httpHeader" => "X-Client-Token", "smithy.api#idempotencyToken" => {}}))
    UpdateNetworkRequest.add_member(:encryption_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "encryptionKeyArn", traits: {"smithy.api#property" => {}}))
    UpdateNetworkRequest.type = Types::UpdateNetworkRequest
    UpdateNetworkResponse.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "message", traits: {"smithy.api#notProperty" => {}}))
    UpdateNetworkResponse.type = Types::UpdateNetworkResponse
    UpdateNetworkSettingsRequest.add_member(:network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkId, name: "networkId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateNetworkSettingsRequest.add_member(:settings, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkSettings, name: "settings", traits: {"smithy.api#required" => {}}))
    UpdateNetworkSettingsRequest.type = Types::UpdateNetworkSettingsRequest
    UpdateNetworkSettingsResponse.add_member(:settings, ::Smithy::Schema::Shapes::MemberShape.new(target: SettingsList, name: "settings", traits: {"smithy.api#required" => {}}))
    UpdateNetworkSettingsResponse.type = Types::UpdateNetworkSettingsResponse
    UpdateSecurityGroupRequest.add_member(:network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkId, name: "networkId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateSecurityGroupRequest.add_member(:group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "groupId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateSecurityGroupRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "name"))
    UpdateSecurityGroupRequest.add_member(:security_group_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroupSettings, name: "securityGroupSettings"))
    UpdateSecurityGroupRequest.type = Types::UpdateSecurityGroupRequest
    UpdateSecurityGroupResponse.add_member(:security_group, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroup, name: "securityGroup", traits: {"smithy.api#required" => {}}))
    UpdateSecurityGroupResponse.type = Types::UpdateSecurityGroupResponse
    UpdateUserDetails.add_member(:first_name, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "firstName"))
    UpdateUserDetails.add_member(:last_name, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "lastName"))
    UpdateUserDetails.add_member(:username, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "username"))
    UpdateUserDetails.add_member(:security_group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroupIdList, name: "securityGroupIds"))
    UpdateUserDetails.add_member(:invite_code, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "inviteCode"))
    UpdateUserDetails.add_member(:invite_code_ttl, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "inviteCodeTtl"))
    UpdateUserDetails.add_member(:code_validation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "codeValidation"))
    UpdateUserDetails.type = Types::UpdateUserDetails
    UpdateUserRequest.add_member(:network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkId, name: "networkId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateUserRequest.add_member(:user_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserId, name: "userId", traits: {"smithy.api#required" => {}}))
    UpdateUserRequest.add_member(:user_details, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateUserDetails, name: "userDetails"))
    UpdateUserRequest.type = Types::UpdateUserRequest
    UpdateUserResponse.add_member(:user_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserId, name: "userId", traits: {"smithy.api#required" => {}}))
    UpdateUserResponse.add_member(:network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkId, name: "networkId", traits: {"smithy.api#required" => {}}))
    UpdateUserResponse.add_member(:security_group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroupIdList, name: "securityGroupIds"))
    UpdateUserResponse.add_member(:first_name, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "firstName"))
    UpdateUserResponse.add_member(:last_name, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "lastName"))
    UpdateUserResponse.add_member(:middle_name, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "middleName"))
    UpdateUserResponse.add_member(:suspended, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "suspended", traits: {"smithy.api#required" => {}}))
    UpdateUserResponse.add_member(:modified, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "modified"))
    UpdateUserResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "status"))
    UpdateUserResponse.add_member(:invite_code, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "inviteCode"))
    UpdateUserResponse.add_member(:invite_expiration, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "inviteExpiration"))
    UpdateUserResponse.add_member(:code_validation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "codeValidation"))
    UpdateUserResponse.type = Types::UpdateUserResponse
    User.add_member(:user_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserId, name: "userId"))
    User.add_member(:first_name, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "firstName"))
    User.add_member(:last_name, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "lastName"))
    User.add_member(:username, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "username"))
    User.add_member(:security_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroupIdList, name: "securityGroups"))
    User.add_member(:is_admin, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "isAdmin"))
    User.add_member(:suspended, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "suspended"))
    User.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "status"))
    User.add_member(:otp_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "otpEnabled"))
    User.add_member(:scim_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "scimId"))
    User.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "type"))
    User.add_member(:cell, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "cell"))
    User.add_member(:country_code, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "countryCode"))
    User.add_member(:challenge_failures, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "challengeFailures"))
    User.add_member(:is_invite_expired, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "isInviteExpired"))
    User.add_member(:is_user, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "isUser"))
    User.add_member(:invite_code, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "inviteCode"))
    User.add_member(:code_validation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "codeValidation"))
    User.add_member(:uname, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "uname"))
    User.type = Types::User
    UserIds.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: UserId, name: "member"))
    UserStatus.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING", traits: {"smithy.api#enumValue" => 1}))
    UserStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => 2}))
    Users.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: User, name: "member"))
    ValidationError.add_member(:reasons, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorDetailList, name: "reasons"))
    ValidationError.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "message"))
    ValidationError.type = Types::ValidationError
    WickrAwsNetworks.add_member(:region, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "region", traits: {"smithy.api#required" => {}}))
    WickrAwsNetworks.add_member(:network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkId, name: "networkId", traits: {"smithy.api#required" => {}}))
    WickrAwsNetworks.type = Types::WickrAwsNetworks
    WickrAwsNetworksList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: WickrAwsNetworks, name: "member"))

    WickrAdminApi = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.wickr#WickrAdminApi"
      service.name = "WickrAdminApi"
      service.version = "2024-02-01"
      service.traits = {"aws.api#service" => {"sdkId" => "Wickr", "arnNamespace" => "wickr", "endpointPrefix" => "admin.wickr"}, "aws.auth#sigv4" => {"name" => "wickr"}, "aws.protocols#restJson1" => {}, "smithy.api#cors" => {"origin" => "*", "additionalAllowedHeaders" => ["Access-Control-Allow-Origin", "Access-Control-Allow_Methods", "Access-Control-Allow-Credentials", "Vary", "Access-Control-Max-Age", "Access-Control-Allow-Headers"]}, "smithy.api#title" => "AWS Wickr Admin API", "smithy.rules#endpointBdd" => {"version" => "1.1", "parameters" => {"Region" => {"builtIn" => "AWS::Region", "required" => false, "documentation" => "The AWS region used to dispatch the request.", "type" => "string"}, "UseDualStack" => {"builtIn" => "AWS::UseDualStack", "required" => true, "default" => false, "documentation" => "When true, use the dual-stack endpoint. If the configured endpoint does not support dual-stack, dispatching the request MAY return an error.", "type" => "boolean"}, "UseFIPS" => {"builtIn" => "AWS::UseFIPS", "required" => true, "default" => false, "documentation" => "When true, send this request to the FIPS-compliant regional endpoint. If the configured endpoint does not have a FIPS compliant endpoint, dispatching the request will return an error.", "type" => "boolean"}, "Endpoint" => {"builtIn" => "SDK::Endpoint", "required" => false, "documentation" => "Override the endpoint used to send this request", "type" => "string"}}, "conditions" => [{"fn" => "isSet", "argv" => [{"ref" => "Endpoint"}]}, {"fn" => "isSet", "argv" => [{"ref" => "Region"}]}, {"fn" => "aws.partition", "argv" => [{"ref" => "Region"}], "assign" => "PartitionResult"}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseFIPS"}, true]}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseDualStack"}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsDualStack"]}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsFIPS"]}, true]}], "results" => [{"conditions" => [], "error" => "Invalid Configuration: FIPS and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "error" => "Invalid Configuration: Dualstack and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => {"ref" => "Endpoint"}, "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://admin.wickr-fips.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS and DualStack are enabled, but this partition does not support one or both", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://admin.wickr-fips.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS is enabled but this partition does not support FIPS", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://admin.wickr.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "DualStack is enabled but this partition does not support DualStack", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://admin.wickr.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "Invalid Configuration: Missing Region", "type" => "error"}], "root" => 2, "nodeCount" => 13, "nodes" => "/////wAAAAH/////AAAAAAAAAAwAAAADAAAAAQAAAAQF9eELAAAAAgAAAAUF9eELAAAAAwAAAAgAAAAGAAAABAAAAAcF9eEKAAAABQX14QgF9eEJAAAABAAAAAoAAAAJAAAABgX14QYF9eEHAAAABQAAAAsF9eEFAAAABgX14QQF9eEFAAAAAwX14QEAAAANAAAABAX14QIF9eED"}}
      service.add_operation(:batch_create_user, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wickr#BatchCreateUser"
        operation.name = "BatchCreateUser"
        operation.input = BatchCreateUserRequest
        operation.output = BatchCreateUserResponse
        operation.errors << BadRequestError
        operation.errors << ForbiddenError
        operation.errors << InternalServerError
        operation.errors << RateLimitError
        operation.errors << ResourceNotFoundError
        operation.errors << UnauthorizedError
        operation.errors << ValidationError
        operation.traits = {"smithy.api#http" => {"uri" => "/networks/{networkId}/users", "method" => "POST", "code" => 200}, "smithy.api#tags" => ["directory", "mysql"]}
      end)
      service.add_operation(:batch_delete_user, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wickr#BatchDeleteUser"
        operation.name = "BatchDeleteUser"
        operation.input = BatchDeleteUserRequest
        operation.output = BatchDeleteUserResponse
        operation.errors << BadRequestError
        operation.errors << ForbiddenError
        operation.errors << InternalServerError
        operation.errors << RateLimitError
        operation.errors << ResourceNotFoundError
        operation.errors << UnauthorizedError
        operation.errors << ValidationError
        operation.traits = {"smithy.api#http" => {"uri" => "/networks/{networkId}/users/batch-delete", "method" => "POST", "code" => 200}, "smithy.api#idempotent" => {}, "smithy.api#tags" => ["directory", "mysql"]}
      end)
      service.add_operation(:batch_lookup_user_uname, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wickr#BatchLookupUserUname"
        operation.name = "BatchLookupUserUname"
        operation.input = BatchLookupUserUnameRequest
        operation.output = BatchLookupUserUnameResponse
        operation.errors << BadRequestError
        operation.errors << ForbiddenError
        operation.errors << InternalServerError
        operation.errors << RateLimitError
        operation.errors << ResourceNotFoundError
        operation.errors << UnauthorizedError
        operation.errors << ValidationError
        operation.traits = {"smithy.api#http" => {"uri" => "/networks/{networkId}/users/uname-lookup", "method" => "POST", "code" => 200}, "smithy.api#tags" => ["directory", "mysql"]}
      end)
      service.add_operation(:batch_reinvite_user, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wickr#BatchReinviteUser"
        operation.name = "BatchReinviteUser"
        operation.input = BatchReinviteUserRequest
        operation.output = BatchReinviteUserResponse
        operation.errors << BadRequestError
        operation.errors << ForbiddenError
        operation.errors << InternalServerError
        operation.errors << RateLimitError
        operation.errors << ResourceNotFoundError
        operation.errors << UnauthorizedError
        operation.errors << ValidationError
        operation.traits = {"smithy.api#http" => {"uri" => "/networks/{networkId}/users/re-invite", "method" => "PATCH", "code" => 200}, "smithy.api#tags" => ["directory", "mysql"]}
      end)
      service.add_operation(:batch_reset_devices_for_user, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wickr#BatchResetDevicesForUser"
        operation.name = "BatchResetDevicesForUser"
        operation.input = BatchResetDevicesForUserRequest
        operation.output = BatchResetDevicesForUserResponse
        operation.errors << BadRequestError
        operation.errors << ForbiddenError
        operation.errors << InternalServerError
        operation.errors << RateLimitError
        operation.errors << ResourceNotFoundError
        operation.errors << UnauthorizedError
        operation.errors << ValidationError
        operation.traits = {"smithy.api#http" => {"uri" => "/networks/{networkId}/users/{userId}/devices", "method" => "PATCH", "code" => 200}, "smithy.api#idempotent" => {}, "smithy.api#tags" => ["devices"]}
      end)
      service.add_operation(:batch_toggle_user_suspend_status, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wickr#BatchToggleUserSuspendStatus"
        operation.name = "BatchToggleUserSuspendStatus"
        operation.input = BatchToggleUserSuspendStatusRequest
        operation.output = BatchToggleUserSuspendStatusResponse
        operation.errors << BadRequestError
        operation.errors << ForbiddenError
        operation.errors << InternalServerError
        operation.errors << RateLimitError
        operation.errors << ResourceNotFoundError
        operation.errors << UnauthorizedError
        operation.errors << ValidationError
        operation.traits = {"smithy.api#http" => {"uri" => "/networks/{networkId}/users/toggleSuspend", "method" => "PATCH", "code" => 200}, "smithy.api#idempotent" => {}, "smithy.api#tags" => ["directory", "mysql"]}
      end)
      service.add_operation(:create_bot, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wickr#CreateBot"
        operation.name = "CreateBot"
        operation.input = CreateBotRequest
        operation.output = CreateBotResponse
        operation.errors << BadRequestError
        operation.errors << ForbiddenError
        operation.errors << InternalServerError
        operation.errors << RateLimitError
        operation.errors << ResourceNotFoundError
        operation.errors << UnauthorizedError
        operation.errors << ValidationError
        operation.traits = {"smithy.api#http" => {"uri" => "/networks/{networkId}/bots", "method" => "POST", "code" => 200}, "smithy.api#tags" => ["bots", "mysql"]}
      end)
      service.add_operation(:create_data_retention_bot, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wickr#CreateDataRetentionBot"
        operation.name = "CreateDataRetentionBot"
        operation.input = CreateDataRetentionBotRequest
        operation.output = CreateDataRetentionBotResponse
        operation.errors << BadRequestError
        operation.errors << ForbiddenError
        operation.errors << InternalServerError
        operation.errors << RateLimitError
        operation.errors << ResourceNotFoundError
        operation.errors << UnauthorizedError
        operation.errors << ValidationError
        operation.traits = {"smithy.api#http" => {"uri" => "/networks/{networkId}/data-retention-bots", "method" => "POST", "code" => 200}, "smithy.api#tags" => ["bots", "data-retention"]}
      end)
      service.add_operation(:create_data_retention_bot_challenge, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wickr#CreateDataRetentionBotChallenge"
        operation.name = "CreateDataRetentionBotChallenge"
        operation.input = CreateDataRetentionBotChallengeRequest
        operation.output = CreateDataRetentionBotChallengeResponse
        operation.errors << BadRequestError
        operation.errors << ForbiddenError
        operation.errors << InternalServerError
        operation.errors << RateLimitError
        operation.errors << ResourceNotFoundError
        operation.errors << UnauthorizedError
        operation.errors << ValidationError
        operation.traits = {"smithy.api#http" => {"uri" => "/networks/{networkId}/data-retention-bots/challenge", "method" => "POST", "code" => 200}, "smithy.api#tags" => ["bots", "data-retention"]}
      end)
      service.add_operation(:create_network, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wickr#CreateNetwork"
        operation.name = "CreateNetwork"
        operation.input = CreateNetworkRequest
        operation.output = CreateNetworkResponse
        operation.errors << BadRequestError
        operation.errors << ForbiddenError
        operation.errors << InternalServerError
        operation.errors << RateLimitError
        operation.errors << ResourceNotFoundError
        operation.errors << UnauthorizedError
        operation.errors << ValidationError
        operation.traits = {"smithy.api#http" => {"uri" => "/networks", "method" => "POST", "code" => 200}, "smithy.api#idempotent" => {}, "smithy.api#tags" => ["network", "mysql", "management"]}
      end)
      service.add_operation(:create_security_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wickr#CreateSecurityGroup"
        operation.name = "CreateSecurityGroup"
        operation.input = CreateSecurityGroupRequest
        operation.output = CreateSecurityGroupResponse
        operation.errors << BadRequestError
        operation.errors << ForbiddenError
        operation.errors << InternalServerError
        operation.errors << RateLimitError
        operation.errors << ResourceNotFoundError
        operation.errors << UnauthorizedError
        operation.errors << ValidationError
        operation.traits = {"smithy.api#http" => {"uri" => "/networks/{networkId}/security-groups", "method" => "POST", "code" => 200}, "smithy.api#idempotent" => {}, "smithy.api#tags" => ["security groups", "mysql"]}
      end)
      service.add_operation(:delete_bot, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wickr#DeleteBot"
        operation.name = "DeleteBot"
        operation.input = DeleteBotRequest
        operation.output = DeleteBotResponse
        operation.errors << BadRequestError
        operation.errors << ForbiddenError
        operation.errors << InternalServerError
        operation.errors << RateLimitError
        operation.errors << ResourceNotFoundError
        operation.errors << UnauthorizedError
        operation.errors << ValidationError
        operation.traits = {"smithy.api#http" => {"uri" => "/networks/{networkId}/bots/{botId}", "method" => "DELETE", "code" => 200}, "smithy.api#idempotent" => {}, "smithy.api#tags" => ["bots", "mysql"]}
      end)
      service.add_operation(:delete_data_retention_bot, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wickr#DeleteDataRetentionBot"
        operation.name = "DeleteDataRetentionBot"
        operation.input = DeleteDataRetentionBotRequest
        operation.output = DeleteDataRetentionBotResponse
        operation.errors << BadRequestError
        operation.errors << ForbiddenError
        operation.errors << InternalServerError
        operation.errors << RateLimitError
        operation.errors << ResourceNotFoundError
        operation.errors << UnauthorizedError
        operation.errors << ValidationError
        operation.traits = {"smithy.api#http" => {"uri" => "/networks/{networkId}/data-retention-bots", "method" => "DELETE", "code" => 200}, "smithy.api#idempotent" => {}, "smithy.api#tags" => ["bots", "data-retention"]}
      end)
      service.add_operation(:delete_network, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wickr#DeleteNetwork"
        operation.name = "DeleteNetwork"
        operation.input = DeleteNetworkRequest
        operation.output = DeleteNetworkResponse
        operation.errors << BadRequestError
        operation.errors << ForbiddenError
        operation.errors << InternalServerError
        operation.errors << RateLimitError
        operation.errors << ResourceNotFoundError
        operation.errors << UnauthorizedError
        operation.errors << ValidationError
        operation.traits = {"smithy.api#http" => {"uri" => "/networks/{networkId}", "method" => "DELETE", "code" => 200}, "smithy.api#idempotent" => {}, "smithy.api#tags" => ["network", "mysql", "management"]}
      end)
      service.add_operation(:delete_security_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wickr#DeleteSecurityGroup"
        operation.name = "DeleteSecurityGroup"
        operation.input = DeleteSecurityGroupRequest
        operation.output = DeleteSecurityGroupResponse
        operation.errors << BadRequestError
        operation.errors << ForbiddenError
        operation.errors << InternalServerError
        operation.errors << RateLimitError
        operation.errors << ResourceNotFoundError
        operation.errors << UnauthorizedError
        operation.errors << ValidationError
        operation.traits = {"smithy.api#http" => {"uri" => "/networks/{networkId}/security-groups/{groupId}", "method" => "DELETE", "code" => 200}, "smithy.api#idempotent" => {}, "smithy.api#tags" => ["security groups", "mysql"]}
      end)
      service.add_operation(:get_bot, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wickr#GetBot"
        operation.name = "GetBot"
        operation.input = GetBotRequest
        operation.output = GetBotResponse
        operation.errors << BadRequestError
        operation.errors << ForbiddenError
        operation.errors << InternalServerError
        operation.errors << RateLimitError
        operation.errors << ResourceNotFoundError
        operation.errors << UnauthorizedError
        operation.errors << ValidationError
        operation.traits = {"smithy.api#http" => {"uri" => "/networks/{networkId}/bots/{botId}", "method" => "GET", "code" => 200}, "smithy.api#readonly" => {}, "smithy.api#tags" => ["bots", "mysql"], "smithy.test#smokeTests" => [{"id" => "GetBotUnauthorized", "params" => {"networkId" => "00000000", "botId" => "00000000"}, "expect" => {"failure" => {}}, "vendorParams" => {"region" => "us-east-1"}, "vendorParamsShape" => "aws.test#AwsVendorParams"}]}
      end)
      service.add_operation(:get_bots_count, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wickr#GetBotsCount"
        operation.name = "GetBotsCount"
        operation.input = GetBotsCountRequest
        operation.output = GetBotsCountResponse
        operation.errors << BadRequestError
        operation.errors << ForbiddenError
        operation.errors << InternalServerError
        operation.errors << RateLimitError
        operation.errors << ResourceNotFoundError
        operation.errors << UnauthorizedError
        operation.errors << ValidationError
        operation.traits = {"smithy.api#http" => {"uri" => "/networks/{networkId}/bots/count", "method" => "GET", "code" => 200}, "smithy.api#readonly" => {}, "smithy.api#tags" => ["bots", "mysql"]}
      end)
      service.add_operation(:get_data_retention_bot, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wickr#GetDataRetentionBot"
        operation.name = "GetDataRetentionBot"
        operation.input = GetDataRetentionBotRequest
        operation.output = GetDataRetentionBotResponse
        operation.errors << BadRequestError
        operation.errors << ForbiddenError
        operation.errors << InternalServerError
        operation.errors << RateLimitError
        operation.errors << ResourceNotFoundError
        operation.errors << UnauthorizedError
        operation.errors << ValidationError
        operation.traits = {"smithy.api#http" => {"uri" => "/networks/{networkId}/data-retention-bots", "method" => "GET", "code" => 200}, "smithy.api#readonly" => {}, "smithy.api#tags" => ["bots", "data-retention"], "smithy.test#smokeTests" => [{"id" => "GetDataRetentionBotUnauthorized", "params" => {"networkId" => "00000000"}, "expect" => {"failure" => {}}, "vendorParams" => {"region" => "us-east-1"}, "vendorParamsShape" => "aws.test#AwsVendorParams"}]}
      end)
      service.add_operation(:get_guest_user_history_count, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wickr#GetGuestUserHistoryCount"
        operation.name = "GetGuestUserHistoryCount"
        operation.input = GetGuestUserHistoryCountRequest
        operation.output = GetGuestUserHistoryCountResponse
        operation.errors << BadRequestError
        operation.errors << ForbiddenError
        operation.errors << InternalServerError
        operation.errors << RateLimitError
        operation.errors << ResourceNotFoundError
        operation.errors << UnauthorizedError
        operation.errors << ValidationError
        operation.traits = {"smithy.api#http" => {"uri" => "/networks/{networkId}/guest-users/count", "method" => "GET", "code" => 200}, "smithy.api#readonly" => {}, "smithy.api#tags" => ["guest-users", "dynamodb"], "smithy.test#smokeTests" => [{"id" => "GetGuestUserHistoryCountUnauthorized", "params" => {"networkId" => "00000000"}, "expect" => {"failure" => {}}, "vendorParams" => {"region" => "us-east-1"}, "vendorParamsShape" => "aws.test#AwsVendorParams"}]}
      end)
      service.add_operation(:get_network, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wickr#GetNetwork"
        operation.name = "GetNetwork"
        operation.input = GetNetworkRequest
        operation.output = GetNetworkResponse
        operation.errors << BadRequestError
        operation.errors << ForbiddenError
        operation.errors << InternalServerError
        operation.errors << RateLimitError
        operation.errors << ResourceNotFoundError
        operation.errors << UnauthorizedError
        operation.errors << ValidationError
        operation.traits = {"smithy.api#http" => {"uri" => "/networks/{networkId}", "method" => "GET", "code" => 200}, "smithy.api#readonly" => {}, "smithy.api#tags" => ["network", "mysql", "management"], "smithy.test#smokeTests" => [{"id" => "GetNetworkUnauthorized", "params" => {"networkId" => "12345678"}, "expect" => {"failure" => {}}, "vendorParams" => {"region" => "us-east-1"}, "vendorParamsShape" => "aws.test#AwsVendorParams"}]}
      end)
      service.add_operation(:get_network_settings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wickr#GetNetworkSettings"
        operation.name = "GetNetworkSettings"
        operation.input = GetNetworkSettingsRequest
        operation.output = GetNetworkSettingsResponse
        operation.errors << BadRequestError
        operation.errors << ForbiddenError
        operation.errors << InternalServerError
        operation.errors << RateLimitError
        operation.errors << ResourceNotFoundError
        operation.errors << UnauthorizedError
        operation.errors << ValidationError
        operation.traits = {"smithy.api#http" => {"uri" => "/networks/{networkId}/settings", "method" => "GET", "code" => 200}, "smithy.api#readonly" => {}, "smithy.api#tags" => ["settings", "network"], "smithy.test#smokeTests" => [{"id" => "GetNetworkSettingsUnauthorized", "params" => {"networkId" => "00000000"}, "expect" => {"failure" => {}}, "vendorParams" => {"region" => "us-east-1"}, "vendorParamsShape" => "aws.test#AwsVendorParams"}]}
      end)
      service.add_operation(:get_oidc_info, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wickr#GetOidcInfo"
        operation.name = "GetOidcInfo"
        operation.input = GetOidcInfoRequest
        operation.output = GetOidcInfoResponse
        operation.errors << BadRequestError
        operation.errors << ForbiddenError
        operation.errors << InternalServerError
        operation.errors << RateLimitError
        operation.errors << ResourceNotFoundError
        operation.errors << UnauthorizedError
        operation.errors << ValidationError
        operation.traits = {"smithy.api#http" => {"uri" => "/networks/{networkId}/oidc", "method" => "GET", "code" => 200}, "smithy.api#readonly" => {}, "smithy.api#tags" => ["oidc", "sso"], "smithy.test#smokeTests" => [{"id" => "GetOidcInfoUnauthorized", "params" => {"networkId" => "00000000"}, "expect" => {"failure" => {}}, "vendorParams" => {"region" => "us-east-1"}, "vendorParamsShape" => "aws.test#AwsVendorParams"}]}
      end)
      service.add_operation(:get_opentdf_config, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wickr#GetOpentdfConfig"
        operation.name = "GetOpentdfConfig"
        operation.input = GetOpentdfConfigRequest
        operation.output = GetOpentdfConfigResponse
        operation.errors << BadRequestError
        operation.errors << ForbiddenError
        operation.errors << InternalServerError
        operation.errors << RateLimitError
        operation.errors << ResourceNotFoundError
        operation.errors << UnauthorizedError
        operation.errors << ValidationError
        operation.traits = {"smithy.api#http" => {"uri" => "/networks/{networkId}/tdf", "method" => "GET", "code" => 200}, "smithy.api#readonly" => {}, "smithy.api#tags" => ["opentdf", "tdf"], "smithy.test#smokeTests" => [{"id" => "GetOpentdfConfigUnauthorized", "params" => {"networkId" => "00000000"}, "expect" => {"failure" => {}}, "vendorParams" => {"region" => "us-east-1"}, "vendorParamsShape" => "aws.test#AwsVendorParams"}]}
      end)
      service.add_operation(:get_security_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wickr#GetSecurityGroup"
        operation.name = "GetSecurityGroup"
        operation.input = GetSecurityGroupRequest
        operation.output = GetSecurityGroupResponse
        operation.errors << BadRequestError
        operation.errors << ForbiddenError
        operation.errors << InternalServerError
        operation.errors << RateLimitError
        operation.errors << ResourceNotFoundError
        operation.errors << UnauthorizedError
        operation.errors << ValidationError
        operation.traits = {"smithy.api#http" => {"uri" => "/networks/{networkId}/security-groups/{groupId}", "method" => "GET", "code" => 200}, "smithy.api#readonly" => {}, "smithy.api#tags" => ["security groups", "mysql"], "smithy.test#smokeTests" => [{"id" => "GetSecurityGroupUnauthorized", "params" => {"networkId" => "00000000", "groupId" => "00000000"}, "expect" => {"failure" => {}}, "vendorParams" => {"region" => "us-east-1"}, "vendorParamsShape" => "aws.test#AwsVendorParams"}]}
      end)
      service.add_operation(:get_user, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wickr#GetUser"
        operation.name = "GetUser"
        operation.input = GetUserRequest
        operation.output = GetUserResponse
        operation.errors << BadRequestError
        operation.errors << ForbiddenError
        operation.errors << InternalServerError
        operation.errors << RateLimitError
        operation.errors << ResourceNotFoundError
        operation.errors << UnauthorizedError
        operation.errors << ValidationError
        operation.traits = {"smithy.api#http" => {"uri" => "/networks/{networkId}/users/{userId}", "method" => "GET", "code" => 200}, "smithy.api#readonly" => {}, "smithy.api#tags" => ["directory", "mysql"]}
      end)
      service.add_operation(:get_users_count, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wickr#GetUsersCount"
        operation.name = "GetUsersCount"
        operation.input = GetUsersCountRequest
        operation.output = GetUsersCountResponse
        operation.errors << BadRequestError
        operation.errors << ForbiddenError
        operation.errors << InternalServerError
        operation.errors << RateLimitError
        operation.errors << ResourceNotFoundError
        operation.errors << UnauthorizedError
        operation.errors << ValidationError
        operation.traits = {"smithy.api#http" => {"uri" => "/networks/{networkId}/users/count", "method" => "GET", "code" => 200}, "smithy.api#readonly" => {}, "smithy.api#tags" => ["directory", "mysql"]}
      end)
      service.add_operation(:list_blocked_guest_users, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wickr#ListBlockedGuestUsers"
        operation.name = "ListBlockedGuestUsers"
        operation.input = ListBlockedGuestUsersRequest
        operation.output = ListBlockedGuestUsersResponse
        operation.errors << BadRequestError
        operation.errors << ForbiddenError
        operation.errors << InternalServerError
        operation.errors << RateLimitError
        operation.errors << ResourceNotFoundError
        operation.errors << UnauthorizedError
        operation.errors << ValidationError
        operation.traits = {"smithy.api#http" => {"uri" => "/networks/{networkId}/guest-users/blocklist", "method" => "GET", "code" => 200}, "smithy.api#readonly" => {}, "smithy.api#tags" => ["guest-users", "mysql"], "smithy.test#smokeTests" => [{"id" => "ListBlockedGuestUsersUnauthorized", "params" => {"networkId" => "00000000", "maxResults" => 10}, "expect" => {"failure" => {}}, "vendorParams" => {"region" => "us-east-1"}, "vendorParamsShape" => "aws.test#AwsVendorParams"}]}
        operation[:paginator] = Paginators::ListBlockedGuestUsers.new
      end)
      service.add_operation(:list_bots, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wickr#ListBots"
        operation.name = "ListBots"
        operation.input = ListBotsRequest
        operation.output = ListBotsResponse
        operation.errors << BadRequestError
        operation.errors << ForbiddenError
        operation.errors << InternalServerError
        operation.errors << RateLimitError
        operation.errors << ResourceNotFoundError
        operation.errors << UnauthorizedError
        operation.errors << ValidationError
        operation.traits = {"smithy.api#http" => {"uri" => "/networks/{networkId}/bots", "method" => "GET", "code" => 200}, "smithy.api#readonly" => {}, "smithy.api#tags" => ["bots", "mysql"], "smithy.test#smokeTests" => [{"id" => "ListBotsUnauthorized", "params" => {"networkId" => "00000000", "maxResults" => 10}, "expect" => {"failure" => {}}, "vendorParams" => {"region" => "us-east-1"}, "vendorParamsShape" => "aws.test#AwsVendorParams"}]}
        operation[:paginator] = Paginators::ListBots.new
      end)
      service.add_operation(:list_devices_for_user, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wickr#ListDevicesForUser"
        operation.name = "ListDevicesForUser"
        operation.input = ListDevicesForUserRequest
        operation.output = ListDevicesForUserResponse
        operation.errors << BadRequestError
        operation.errors << ForbiddenError
        operation.errors << InternalServerError
        operation.errors << RateLimitError
        operation.errors << ResourceNotFoundError
        operation.errors << UnauthorizedError
        operation.errors << ValidationError
        operation.traits = {"smithy.api#http" => {"uri" => "/networks/{networkId}/users/{userId}/devices", "method" => "GET", "code" => 200}, "smithy.api#readonly" => {}, "smithy.api#tags" => ["devices", "mysql"]}
        operation[:paginator] = Paginators::ListDevicesForUser.new
      end)
      service.add_operation(:list_guest_users, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wickr#ListGuestUsers"
        operation.name = "ListGuestUsers"
        operation.input = ListGuestUsersRequest
        operation.output = ListGuestUsersResponse
        operation.errors << BadRequestError
        operation.errors << ForbiddenError
        operation.errors << InternalServerError
        operation.errors << RateLimitError
        operation.errors << ResourceNotFoundError
        operation.errors << UnauthorizedError
        operation.errors << ValidationError
        operation.traits = {"smithy.api#http" => {"uri" => "/networks/{networkId}/guest-users", "method" => "GET", "code" => 200}, "smithy.api#readonly" => {}, "smithy.api#tags" => ["guest-users", "dynamodb"], "smithy.test#smokeTests" => [{"id" => "ListGuestUsersUnauthorized", "params" => {"networkId" => "00000000", "maxResults" => 10}, "expect" => {"failure" => {}}, "vendorParams" => {"region" => "us-east-1"}, "vendorParamsShape" => "aws.test#AwsVendorParams"}]}
        operation[:paginator] = Paginators::ListGuestUsers.new
      end)
      service.add_operation(:list_networks, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wickr#ListNetworks"
        operation.name = "ListNetworks"
        operation.input = ListNetworksRequest
        operation.output = ListNetworksResponse
        operation.errors << BadRequestError
        operation.errors << ForbiddenError
        operation.errors << InternalServerError
        operation.errors << RateLimitError
        operation.errors << UnauthorizedError
        operation.errors << ValidationError
        operation.traits = {"smithy.api#http" => {"uri" => "/networks", "method" => "GET", "code" => 200}, "smithy.api#readonly" => {}, "smithy.api#tags" => ["network", "mysql", "management"], "smithy.test#smokeTests" => [{"id" => "ListNetworksSuccess", "params" => {}, "expect" => {"success" => {}}, "vendorParams" => {"region" => "us-east-1"}, "vendorParamsShape" => "aws.test#AwsVendorParams"}]}
        operation[:paginator] = Paginators::ListNetworks.new
      end)
      service.add_operation(:list_security_group_users, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wickr#ListSecurityGroupUsers"
        operation.name = "ListSecurityGroupUsers"
        operation.input = ListSecurityGroupUsersRequest
        operation.output = ListSecurityGroupUsersResponse
        operation.errors << BadRequestError
        operation.errors << ForbiddenError
        operation.errors << InternalServerError
        operation.errors << RateLimitError
        operation.errors << ResourceNotFoundError
        operation.errors << UnauthorizedError
        operation.errors << ValidationError
        operation.traits = {"smithy.api#http" => {"uri" => "/networks/{networkId}/security-groups/{groupId}/users", "method" => "GET", "code" => 200}, "smithy.api#readonly" => {}, "smithy.api#tags" => ["security groups", "mysql"], "smithy.test#smokeTests" => [{"id" => "GetPagedSecurityUsersUnauthorized", "params" => {"networkId" => "00000000", "groupId" => "00000000", "maxResults" => 10}, "expect" => {"failure" => {}}, "vendorParams" => {"region" => "us-east-1"}, "vendorParamsShape" => "aws.test#AwsVendorParams"}]}
        operation[:paginator] = Paginators::ListSecurityGroupUsers.new
      end)
      service.add_operation(:list_security_groups, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wickr#ListSecurityGroups"
        operation.name = "ListSecurityGroups"
        operation.input = ListSecurityGroupsRequest
        operation.output = ListSecurityGroupsResponse
        operation.errors << BadRequestError
        operation.errors << ForbiddenError
        operation.errors << InternalServerError
        operation.errors << RateLimitError
        operation.errors << ResourceNotFoundError
        operation.errors << UnauthorizedError
        operation.errors << ValidationError
        operation.traits = {"smithy.api#http" => {"uri" => "/networks/{networkId}/security-groups", "method" => "GET", "code" => 200}, "smithy.api#readonly" => {}, "smithy.api#tags" => ["security groups", "mysql"], "smithy.test#smokeTests" => [{"id" => "ListSecurityGroupsUnauthorized", "params" => {"networkId" => "00000000", "maxResults" => 10}, "expect" => {"failure" => {}}, "vendorParams" => {"region" => "us-east-1"}, "vendorParamsShape" => "aws.test#AwsVendorParams"}]}
        operation[:paginator] = Paginators::ListSecurityGroups.new
      end)
      service.add_operation(:list_users, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wickr#ListUsers"
        operation.name = "ListUsers"
        operation.input = ListUsersRequest
        operation.output = ListUsersResponse
        operation.errors << BadRequestError
        operation.errors << ForbiddenError
        operation.errors << InternalServerError
        operation.errors << RateLimitError
        operation.errors << ResourceNotFoundError
        operation.errors << UnauthorizedError
        operation.errors << ValidationError
        operation.traits = {"smithy.api#http" => {"uri" => "/networks/{networkId}/users", "method" => "GET", "code" => 200}, "smithy.api#readonly" => {}, "smithy.api#tags" => ["directory", "mysql"], "smithy.test#smokeTests" => [{"id" => "ListUsersUnauthorized", "params" => {"networkId" => "00000000", "maxResults" => 10}, "expect" => {"failure" => {}}, "vendorParams" => {"region" => "us-east-1"}, "vendorParamsShape" => "aws.test#AwsVendorParams"}]}
        operation[:paginator] = Paginators::ListUsers.new
      end)
      service.add_operation(:register_oidc_config, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wickr#RegisterOidcConfig"
        operation.name = "RegisterOidcConfig"
        operation.input = RegisterOidcConfigRequest
        operation.output = RegisterOidcConfigResponse
        operation.errors << BadRequestError
        operation.errors << ForbiddenError
        operation.errors << InternalServerError
        operation.errors << RateLimitError
        operation.errors << ResourceNotFoundError
        operation.errors << UnauthorizedError
        operation.errors << ValidationError
        operation.traits = {"smithy.api#http" => {"uri" => "/networks/{networkId}/oidc/save", "method" => "POST", "code" => 200}, "smithy.api#tags" => ["oidc", "sso"]}
      end)
      service.add_operation(:register_oidc_config_test, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wickr#RegisterOidcConfigTest"
        operation.name = "RegisterOidcConfigTest"
        operation.input = RegisterOidcConfigTestRequest
        operation.output = RegisterOidcConfigTestResponse
        operation.errors << BadRequestError
        operation.errors << ForbiddenError
        operation.errors << InternalServerError
        operation.errors << RateLimitError
        operation.errors << ResourceNotFoundError
        operation.errors << UnauthorizedError
        operation.errors << ValidationError
        operation.traits = {"smithy.api#http" => {"uri" => "/networks/{networkId}/oidc/test", "method" => "POST", "code" => 200}, "smithy.api#tags" => ["oidc", "sso"]}
      end)
      service.add_operation(:register_opentdf_config, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wickr#RegisterOpentdfConfig"
        operation.name = "RegisterOpentdfConfig"
        operation.input = RegisterOpentdfConfigRequest
        operation.output = RegisterOpentdfConfigResponse
        operation.errors << BadRequestError
        operation.errors << ForbiddenError
        operation.errors << InternalServerError
        operation.errors << RateLimitError
        operation.errors << ResourceNotFoundError
        operation.errors << UnauthorizedError
        operation.errors << ValidationError
        operation.traits = {"smithy.api#http" => {"uri" => "/networks/{networkId}/tdf", "method" => "POST", "code" => 200}, "smithy.api#tags" => ["opentdf", "tdf"]}
      end)
      service.add_operation(:update_bot, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wickr#UpdateBot"
        operation.name = "UpdateBot"
        operation.input = UpdateBotRequest
        operation.output = UpdateBotResponse
        operation.errors << BadRequestError
        operation.errors << ForbiddenError
        operation.errors << InternalServerError
        operation.errors << RateLimitError
        operation.errors << ResourceNotFoundError
        operation.errors << UnauthorizedError
        operation.errors << ValidationError
        operation.traits = {"smithy.api#http" => {"uri" => "/networks/{networkId}/bots/{botId}", "method" => "PATCH", "code" => 200}, "smithy.api#idempotent" => {}, "smithy.api#tags" => ["bots", "mysql"]}
      end)
      service.add_operation(:update_data_retention, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wickr#UpdateDataRetention"
        operation.name = "UpdateDataRetention"
        operation.input = UpdateDataRetentionRequest
        operation.output = UpdateDataRetentionResponse
        operation.errors << BadRequestError
        operation.errors << ForbiddenError
        operation.errors << InternalServerError
        operation.errors << RateLimitError
        operation.errors << ResourceNotFoundError
        operation.errors << UnauthorizedError
        operation.errors << ValidationError
        operation.traits = {"smithy.api#http" => {"uri" => "/networks/{networkId}/data-retention-bots", "method" => "PATCH", "code" => 200}, "smithy.api#idempotent" => {}, "smithy.api#tags" => ["bots", "data-retention"]}
      end)
      service.add_operation(:update_guest_user, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wickr#UpdateGuestUser"
        operation.name = "UpdateGuestUser"
        operation.input = UpdateGuestUserRequest
        operation.output = UpdateGuestUserResponse
        operation.errors << BadRequestError
        operation.errors << ForbiddenError
        operation.errors << InternalServerError
        operation.errors << RateLimitError
        operation.errors << ResourceNotFoundError
        operation.errors << UnauthorizedError
        operation.errors << ValidationError
        operation.traits = {"smithy.api#http" => {"uri" => "/networks/{networkId}/guest-users/{usernameHash}", "method" => "PATCH", "code" => 200}, "smithy.api#tags" => ["guest-users", "mysql"]}
      end)
      service.add_operation(:update_network, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wickr#UpdateNetwork"
        operation.name = "UpdateNetwork"
        operation.input = UpdateNetworkRequest
        operation.output = UpdateNetworkResponse
        operation.errors << BadRequestError
        operation.errors << ForbiddenError
        operation.errors << InternalServerError
        operation.errors << RateLimitError
        operation.errors << ResourceNotFoundError
        operation.errors << UnauthorizedError
        operation.errors << ValidationError
        operation.traits = {"smithy.api#http" => {"uri" => "/networks/{networkId}", "method" => "PATCH", "code" => 200}, "smithy.api#idempotent" => {}, "smithy.api#tags" => ["network", "mysql", "management"]}
      end)
      service.add_operation(:update_network_settings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wickr#UpdateNetworkSettings"
        operation.name = "UpdateNetworkSettings"
        operation.input = UpdateNetworkSettingsRequest
        operation.output = UpdateNetworkSettingsResponse
        operation.errors << BadRequestError
        operation.errors << ForbiddenError
        operation.errors << InternalServerError
        operation.errors << RateLimitError
        operation.errors << ResourceNotFoundError
        operation.errors << UnauthorizedError
        operation.errors << ValidationError
        operation.traits = {"smithy.api#http" => {"uri" => "/networks/{networkId}/settings", "method" => "PATCH", "code" => 200}, "smithy.api#idempotent" => {}, "smithy.api#tags" => ["settings", "network"]}
      end)
      service.add_operation(:update_security_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wickr#UpdateSecurityGroup"
        operation.name = "UpdateSecurityGroup"
        operation.input = UpdateSecurityGroupRequest
        operation.output = UpdateSecurityGroupResponse
        operation.errors << BadRequestError
        operation.errors << ForbiddenError
        operation.errors << InternalServerError
        operation.errors << RateLimitError
        operation.errors << ResourceNotFoundError
        operation.errors << UnauthorizedError
        operation.errors << ValidationError
        operation.traits = {"smithy.api#http" => {"uri" => "/networks/{networkId}/security-groups/{groupId}", "method" => "PATCH", "code" => 200}, "smithy.api#idempotent" => {}, "smithy.api#tags" => ["security groups", "mysql"]}
      end)
      service.add_operation(:update_user, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.wickr#UpdateUser"
        operation.name = "UpdateUser"
        operation.input = UpdateUserRequest
        operation.output = UpdateUserResponse
        operation.errors << BadRequestError
        operation.errors << ForbiddenError
        operation.errors << InternalServerError
        operation.errors << RateLimitError
        operation.errors << ResourceNotFoundError
        operation.errors << UnauthorizedError
        operation.errors << ValidationError
        operation.traits = {"smithy.api#http" => {"uri" => "/networks/{networkId}/users", "method" => "PATCH", "code" => 200}, "smithy.api#idempotent" => {}, "smithy.api#tags" => ["directory", "mysql"]}
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
