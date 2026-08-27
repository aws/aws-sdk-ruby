# frozen_string_literal: true

# This is generated code!

module Aws::Chime
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chime#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    Account = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chime#Account", name: "Account")
    AccountList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.chime#AccountList", name: "AccountList")
    AccountName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.chime#AccountName", name: "AccountName", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "\\S"})
    AccountSettings = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chime#AccountSettings", name: "AccountSettings")
    AccountStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.chime#AccountStatus", name: "AccountStatus")
    AccountType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.chime#AccountType", name: "AccountType")
    AlexaForBusinessMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chime#AlexaForBusinessMetadata", name: "AlexaForBusinessMetadata")
    Alpha2CountryCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.chime#Alpha2CountryCode", name: "Alpha2CountryCode", traits: {"smithy.api#pattern" => "^[A-Z]{2}$"})
    AssociatePhoneNumberWithUserRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chime#AssociatePhoneNumberWithUserRequest", name: "AssociatePhoneNumberWithUserRequest")
    AssociatePhoneNumberWithUserResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chime#AssociatePhoneNumberWithUserResponse", name: "AssociatePhoneNumberWithUserResponse")
    AssociateSigninDelegateGroupsWithAccountRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chime#AssociateSigninDelegateGroupsWithAccountRequest", name: "AssociateSigninDelegateGroupsWithAccountRequest")
    AssociateSigninDelegateGroupsWithAccountResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chime#AssociateSigninDelegateGroupsWithAccountResponse", name: "AssociateSigninDelegateGroupsWithAccountResponse")
    BadRequestException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chime#BadRequestException", name: "BadRequestException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    BatchCreateRoomMembershipRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chime#BatchCreateRoomMembershipRequest", name: "BatchCreateRoomMembershipRequest")
    BatchCreateRoomMembershipResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chime#BatchCreateRoomMembershipResponse", name: "BatchCreateRoomMembershipResponse")
    BatchDeletePhoneNumberRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chime#BatchDeletePhoneNumberRequest", name: "BatchDeletePhoneNumberRequest")
    BatchDeletePhoneNumberResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chime#BatchDeletePhoneNumberResponse", name: "BatchDeletePhoneNumberResponse")
    BatchSuspendUserRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chime#BatchSuspendUserRequest", name: "BatchSuspendUserRequest")
    BatchSuspendUserResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chime#BatchSuspendUserResponse", name: "BatchSuspendUserResponse")
    BatchUnsuspendUserRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chime#BatchUnsuspendUserRequest", name: "BatchUnsuspendUserRequest")
    BatchUnsuspendUserResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chime#BatchUnsuspendUserResponse", name: "BatchUnsuspendUserResponse")
    BatchUpdatePhoneNumberRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chime#BatchUpdatePhoneNumberRequest", name: "BatchUpdatePhoneNumberRequest")
    BatchUpdatePhoneNumberResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chime#BatchUpdatePhoneNumberResponse", name: "BatchUpdatePhoneNumberResponse")
    BatchUpdateUserRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chime#BatchUpdateUserRequest", name: "BatchUpdateUserRequest")
    BatchUpdateUserResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chime#BatchUpdateUserResponse", name: "BatchUpdateUserResponse")
    Boolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.chime#Boolean", name: "Boolean")
    Bot = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chime#Bot", name: "Bot")
    BotList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.chime#BotList", name: "BotList")
    BotType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.chime#BotType", name: "BotType")
    BusinessCallingSettings = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chime#BusinessCallingSettings", name: "BusinessCallingSettings")
    CallingName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.chime#CallingName", name: "CallingName", traits: {"smithy.api#pattern" => "^$|^[a-zA-Z0-9 ]{2,15}$", "smithy.api#sensitive" => {}})
    CallingNameStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.chime#CallingNameStatus", name: "CallingNameStatus")
    ClientRequestToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.chime#ClientRequestToken", name: "ClientRequestToken", traits: {"smithy.api#length" => {"min" => 2, "max" => 64}, "smithy.api#pattern" => "^[-_a-zA-Z0-9]*$", "smithy.api#sensitive" => {}})
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chime#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ConversationRetentionSettings = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chime#ConversationRetentionSettings", name: "ConversationRetentionSettings")
    CreateAccountRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chime#CreateAccountRequest", name: "CreateAccountRequest")
    CreateAccountResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chime#CreateAccountResponse", name: "CreateAccountResponse")
    CreateBotRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chime#CreateBotRequest", name: "CreateBotRequest")
    CreateBotResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chime#CreateBotResponse", name: "CreateBotResponse")
    CreateMeetingDialOutRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chime#CreateMeetingDialOutRequest", name: "CreateMeetingDialOutRequest")
    CreateMeetingDialOutResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chime#CreateMeetingDialOutResponse", name: "CreateMeetingDialOutResponse")
    CreatePhoneNumberOrderRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chime#CreatePhoneNumberOrderRequest", name: "CreatePhoneNumberOrderRequest")
    CreatePhoneNumberOrderResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chime#CreatePhoneNumberOrderResponse", name: "CreatePhoneNumberOrderResponse")
    CreateRoomMembershipRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chime#CreateRoomMembershipRequest", name: "CreateRoomMembershipRequest")
    CreateRoomMembershipResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chime#CreateRoomMembershipResponse", name: "CreateRoomMembershipResponse")
    CreateRoomRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chime#CreateRoomRequest", name: "CreateRoomRequest")
    CreateRoomResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chime#CreateRoomResponse", name: "CreateRoomResponse")
    CreateUserRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chime#CreateUserRequest", name: "CreateUserRequest")
    CreateUserResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chime#CreateUserResponse", name: "CreateUserResponse")
    DeleteAccountRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chime#DeleteAccountRequest", name: "DeleteAccountRequest")
    DeleteAccountResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chime#DeleteAccountResponse", name: "DeleteAccountResponse")
    DeleteEventsConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chime#DeleteEventsConfigurationRequest", name: "DeleteEventsConfigurationRequest")
    DeletePhoneNumberRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chime#DeletePhoneNumberRequest", name: "DeletePhoneNumberRequest")
    DeleteRoomMembershipRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chime#DeleteRoomMembershipRequest", name: "DeleteRoomMembershipRequest")
    DeleteRoomRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chime#DeleteRoomRequest", name: "DeleteRoomRequest")
    DisassociatePhoneNumberFromUserRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chime#DisassociatePhoneNumberFromUserRequest", name: "DisassociatePhoneNumberFromUserRequest")
    DisassociatePhoneNumberFromUserResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chime#DisassociatePhoneNumberFromUserResponse", name: "DisassociatePhoneNumberFromUserResponse")
    DisassociateSigninDelegateGroupsFromAccountRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chime#DisassociateSigninDelegateGroupsFromAccountRequest", name: "DisassociateSigninDelegateGroupsFromAccountRequest")
    DisassociateSigninDelegateGroupsFromAccountResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chime#DisassociateSigninDelegateGroupsFromAccountResponse", name: "DisassociateSigninDelegateGroupsFromAccountResponse")
    E164PhoneNumber = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.chime#E164PhoneNumber", name: "E164PhoneNumber", traits: {"smithy.api#pattern" => "^\\+?[1-9]\\d{1,14}$", "smithy.api#sensitive" => {}})
    E164PhoneNumberList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.chime#E164PhoneNumberList", name: "E164PhoneNumberList")
    EmailAddress = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.chime#EmailAddress", name: "EmailAddress", traits: {"smithy.api#pattern" => "^.+@.+\\..+$", "smithy.api#sensitive" => {}})
    EmailStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.chime#EmailStatus", name: "EmailStatus")
    ErrorCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.chime#ErrorCode", name: "ErrorCode")
    EventsConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chime#EventsConfiguration", name: "EventsConfiguration")
    ForbiddenException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chime#ForbiddenException", name: "ForbiddenException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    GetAccountRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chime#GetAccountRequest", name: "GetAccountRequest")
    GetAccountResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chime#GetAccountResponse", name: "GetAccountResponse")
    GetAccountSettingsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chime#GetAccountSettingsRequest", name: "GetAccountSettingsRequest")
    GetAccountSettingsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chime#GetAccountSettingsResponse", name: "GetAccountSettingsResponse")
    GetBotRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chime#GetBotRequest", name: "GetBotRequest")
    GetBotResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chime#GetBotResponse", name: "GetBotResponse")
    GetEventsConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chime#GetEventsConfigurationRequest", name: "GetEventsConfigurationRequest")
    GetEventsConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chime#GetEventsConfigurationResponse", name: "GetEventsConfigurationResponse")
    GetGlobalSettingsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chime#GetGlobalSettingsResponse", name: "GetGlobalSettingsResponse")
    GetPhoneNumberOrderRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chime#GetPhoneNumberOrderRequest", name: "GetPhoneNumberOrderRequest")
    GetPhoneNumberOrderResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chime#GetPhoneNumberOrderResponse", name: "GetPhoneNumberOrderResponse")
    GetPhoneNumberRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chime#GetPhoneNumberRequest", name: "GetPhoneNumberRequest")
    GetPhoneNumberResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chime#GetPhoneNumberResponse", name: "GetPhoneNumberResponse")
    GetPhoneNumberSettingsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chime#GetPhoneNumberSettingsResponse", name: "GetPhoneNumberSettingsResponse")
    GetRetentionSettingsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chime#GetRetentionSettingsRequest", name: "GetRetentionSettingsRequest")
    GetRetentionSettingsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chime#GetRetentionSettingsResponse", name: "GetRetentionSettingsResponse")
    GetRoomRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chime#GetRoomRequest", name: "GetRoomRequest")
    GetRoomResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chime#GetRoomResponse", name: "GetRoomResponse")
    GetUserRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chime#GetUserRequest", name: "GetUserRequest")
    GetUserResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chime#GetUserResponse", name: "GetUserResponse")
    GetUserSettingsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chime#GetUserSettingsRequest", name: "GetUserSettingsRequest")
    GetUserSettingsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chime#GetUserSettingsResponse", name: "GetUserSettingsResponse")
    GuidString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.chime#GuidString", name: "GuidString", traits: {"smithy.api#pattern" => "^[a-fA-F0-9]{8}(?:-[a-fA-F0-9]{4}){3}-[a-fA-F0-9]{12}$"})
    Invite = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chime#Invite", name: "Invite")
    InviteList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.chime#InviteList", name: "InviteList")
    InviteStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.chime#InviteStatus", name: "InviteStatus")
    InviteUsersRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chime#InviteUsersRequest", name: "InviteUsersRequest")
    InviteUsersResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chime#InviteUsersResponse", name: "InviteUsersResponse")
    Iso8601Timestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.chime#Iso8601Timestamp", name: "Iso8601Timestamp", traits: {"smithy.api#timestampFormat" => "date-time"})
    JoinTokenString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.chime#JoinTokenString", name: "JoinTokenString", traits: {"smithy.api#length" => {"min" => 2, "max" => 2048}, "smithy.api#pattern" => "^[a-zA-Z0-9+/]+$", "smithy.api#sensitive" => {}})
    License = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.chime#License", name: "License")
    LicenseList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.chime#LicenseList", name: "LicenseList")
    ListAccountsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chime#ListAccountsRequest", name: "ListAccountsRequest")
    ListAccountsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chime#ListAccountsResponse", name: "ListAccountsResponse")
    ListBotsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chime#ListBotsRequest", name: "ListBotsRequest")
    ListBotsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chime#ListBotsResponse", name: "ListBotsResponse")
    ListPhoneNumberOrdersRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chime#ListPhoneNumberOrdersRequest", name: "ListPhoneNumberOrdersRequest")
    ListPhoneNumberOrdersResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chime#ListPhoneNumberOrdersResponse", name: "ListPhoneNumberOrdersResponse")
    ListPhoneNumbersRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chime#ListPhoneNumbersRequest", name: "ListPhoneNumbersRequest")
    ListPhoneNumbersResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chime#ListPhoneNumbersResponse", name: "ListPhoneNumbersResponse")
    ListRoomMembershipsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chime#ListRoomMembershipsRequest", name: "ListRoomMembershipsRequest")
    ListRoomMembershipsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chime#ListRoomMembershipsResponse", name: "ListRoomMembershipsResponse")
    ListRoomsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chime#ListRoomsRequest", name: "ListRoomsRequest")
    ListRoomsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chime#ListRoomsResponse", name: "ListRoomsResponse")
    ListSupportedPhoneNumberCountriesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chime#ListSupportedPhoneNumberCountriesRequest", name: "ListSupportedPhoneNumberCountriesRequest")
    ListSupportedPhoneNumberCountriesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chime#ListSupportedPhoneNumberCountriesResponse", name: "ListSupportedPhoneNumberCountriesResponse")
    ListUsersRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chime#ListUsersRequest", name: "ListUsersRequest")
    ListUsersResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chime#ListUsersResponse", name: "ListUsersResponse")
    LogoutUserRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chime#LogoutUserRequest", name: "LogoutUserRequest")
    LogoutUserResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chime#LogoutUserResponse", name: "LogoutUserResponse")
    Member = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chime#Member", name: "Member")
    MemberError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chime#MemberError", name: "MemberError")
    MemberErrorList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.chime#MemberErrorList", name: "MemberErrorList")
    MemberType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.chime#MemberType", name: "MemberType")
    MembershipItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chime#MembershipItem", name: "MembershipItem")
    MembershipItemList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.chime#MembershipItemList", name: "MembershipItemList", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    NonEmptyString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.chime#NonEmptyString", name: "NonEmptyString", traits: {"smithy.api#pattern" => "\\S"})
    NonEmptyStringList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.chime#NonEmptyStringList", name: "NonEmptyStringList", traits: {"smithy.api#length" => {"min" => 1}})
    NotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chime#NotFoundException", name: "NotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    NullableBoolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.chime#NullableBoolean", name: "NullableBoolean")
    OrderedPhoneNumber = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chime#OrderedPhoneNumber", name: "OrderedPhoneNumber")
    OrderedPhoneNumberList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.chime#OrderedPhoneNumberList", name: "OrderedPhoneNumberList")
    OrderedPhoneNumberStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.chime#OrderedPhoneNumberStatus", name: "OrderedPhoneNumberStatus")
    PhoneNumber = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chime#PhoneNumber", name: "PhoneNumber")
    PhoneNumberAssociation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chime#PhoneNumberAssociation", name: "PhoneNumberAssociation")
    PhoneNumberAssociationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.chime#PhoneNumberAssociationList", name: "PhoneNumberAssociationList")
    PhoneNumberAssociationName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.chime#PhoneNumberAssociationName", name: "PhoneNumberAssociationName")
    PhoneNumberCapabilities = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chime#PhoneNumberCapabilities", name: "PhoneNumberCapabilities")
    PhoneNumberCountriesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.chime#PhoneNumberCountriesList", name: "PhoneNumberCountriesList")
    PhoneNumberCountry = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chime#PhoneNumberCountry", name: "PhoneNumberCountry")
    PhoneNumberError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chime#PhoneNumberError", name: "PhoneNumberError")
    PhoneNumberErrorList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.chime#PhoneNumberErrorList", name: "PhoneNumberErrorList")
    PhoneNumberList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.chime#PhoneNumberList", name: "PhoneNumberList")
    PhoneNumberMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.chime#PhoneNumberMaxResults", name: "PhoneNumberMaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 500}})
    PhoneNumberOrder = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chime#PhoneNumberOrder", name: "PhoneNumberOrder")
    PhoneNumberOrderList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.chime#PhoneNumberOrderList", name: "PhoneNumberOrderList")
    PhoneNumberOrderStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.chime#PhoneNumberOrderStatus", name: "PhoneNumberOrderStatus")
    PhoneNumberProductType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.chime#PhoneNumberProductType", name: "PhoneNumberProductType")
    PhoneNumberStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.chime#PhoneNumberStatus", name: "PhoneNumberStatus")
    PhoneNumberType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.chime#PhoneNumberType", name: "PhoneNumberType")
    PhoneNumberTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.chime#PhoneNumberTypeList", name: "PhoneNumberTypeList")
    ProfileServiceMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.chime#ProfileServiceMaxResults", name: "ProfileServiceMaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 200}})
    PutEventsConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chime#PutEventsConfigurationRequest", name: "PutEventsConfigurationRequest")
    PutEventsConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chime#PutEventsConfigurationResponse", name: "PutEventsConfigurationResponse")
    PutRetentionSettingsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chime#PutRetentionSettingsRequest", name: "PutRetentionSettingsRequest")
    PutRetentionSettingsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chime#PutRetentionSettingsResponse", name: "PutRetentionSettingsResponse")
    RedactConversationMessageRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chime#RedactConversationMessageRequest", name: "RedactConversationMessageRequest")
    RedactConversationMessageResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chime#RedactConversationMessageResponse", name: "RedactConversationMessageResponse")
    RedactRoomMessageRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chime#RedactRoomMessageRequest", name: "RedactRoomMessageRequest")
    RedactRoomMessageResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chime#RedactRoomMessageResponse", name: "RedactRoomMessageResponse")
    RegenerateSecurityTokenRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chime#RegenerateSecurityTokenRequest", name: "RegenerateSecurityTokenRequest")
    RegenerateSecurityTokenResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chime#RegenerateSecurityTokenResponse", name: "RegenerateSecurityTokenResponse")
    RegistrationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.chime#RegistrationStatus", name: "RegistrationStatus")
    ResetPersonalPINRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chime#ResetPersonalPINRequest", name: "ResetPersonalPINRequest")
    ResetPersonalPINResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chime#ResetPersonalPINResponse", name: "ResetPersonalPINResponse")
    ResourceLimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chime#ResourceLimitExceededException", name: "ResourceLimitExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    RestorePhoneNumberRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chime#RestorePhoneNumberRequest", name: "RestorePhoneNumberRequest")
    RestorePhoneNumberResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chime#RestorePhoneNumberResponse", name: "RestorePhoneNumberResponse")
    ResultMax = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.chime#ResultMax", name: "ResultMax", traits: {"smithy.api#range" => {"min" => 1, "max" => 99}})
    RetentionDays = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.chime#RetentionDays", name: "RetentionDays", traits: {"smithy.api#range" => {"min" => 1, "max" => 5475}})
    RetentionSettings = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chime#RetentionSettings", name: "RetentionSettings")
    Room = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chime#Room", name: "Room")
    RoomList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.chime#RoomList", name: "RoomList")
    RoomMembership = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chime#RoomMembership", name: "RoomMembership")
    RoomMembershipList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.chime#RoomMembershipList", name: "RoomMembershipList")
    RoomMembershipRole = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.chime#RoomMembershipRole", name: "RoomMembershipRole")
    RoomRetentionSettings = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chime#RoomRetentionSettings", name: "RoomRetentionSettings")
    SearchAvailablePhoneNumbersRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chime#SearchAvailablePhoneNumbersRequest", name: "SearchAvailablePhoneNumbersRequest")
    SearchAvailablePhoneNumbersResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chime#SearchAvailablePhoneNumbersResponse", name: "SearchAvailablePhoneNumbersResponse")
    SensitiveString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.chime#SensitiveString", name: "SensitiveString", traits: {"smithy.api#sensitive" => {}})
    ServiceFailureException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chime#ServiceFailureException", name: "ServiceFailureException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    ServiceUnavailableException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chime#ServiceUnavailableException", name: "ServiceUnavailableException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 503})
    SigninDelegateGroup = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chime#SigninDelegateGroup", name: "SigninDelegateGroup")
    SigninDelegateGroupList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.chime#SigninDelegateGroupList", name: "SigninDelegateGroupList")
    String = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.chime#String", name: "String")
    TelephonySettings = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chime#TelephonySettings", name: "TelephonySettings")
    ThrottledClientException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chime#ThrottledClientException", name: "ThrottledClientException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    TollFreePrefix = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.chime#TollFreePrefix", name: "TollFreePrefix", traits: {"smithy.api#length" => {"min" => 3, "max" => 3}, "smithy.api#pattern" => "^8(00|33|44|55|66|77|88)$"})
    UnauthorizedClientException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chime#UnauthorizedClientException", name: "UnauthorizedClientException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 401})
    UnprocessableEntityException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chime#UnprocessableEntityException", name: "UnprocessableEntityException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 422})
    UpdateAccountRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chime#UpdateAccountRequest", name: "UpdateAccountRequest")
    UpdateAccountResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chime#UpdateAccountResponse", name: "UpdateAccountResponse")
    UpdateAccountSettingsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chime#UpdateAccountSettingsRequest", name: "UpdateAccountSettingsRequest")
    UpdateAccountSettingsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chime#UpdateAccountSettingsResponse", name: "UpdateAccountSettingsResponse")
    UpdateBotRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chime#UpdateBotRequest", name: "UpdateBotRequest")
    UpdateBotResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chime#UpdateBotResponse", name: "UpdateBotResponse")
    UpdateGlobalSettingsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chime#UpdateGlobalSettingsRequest", name: "UpdateGlobalSettingsRequest")
    UpdatePhoneNumberRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chime#UpdatePhoneNumberRequest", name: "UpdatePhoneNumberRequest")
    UpdatePhoneNumberRequestItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chime#UpdatePhoneNumberRequestItem", name: "UpdatePhoneNumberRequestItem")
    UpdatePhoneNumberRequestItemList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.chime#UpdatePhoneNumberRequestItemList", name: "UpdatePhoneNumberRequestItemList")
    UpdatePhoneNumberResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chime#UpdatePhoneNumberResponse", name: "UpdatePhoneNumberResponse")
    UpdatePhoneNumberSettingsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chime#UpdatePhoneNumberSettingsRequest", name: "UpdatePhoneNumberSettingsRequest")
    UpdateRoomMembershipRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chime#UpdateRoomMembershipRequest", name: "UpdateRoomMembershipRequest")
    UpdateRoomMembershipResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chime#UpdateRoomMembershipResponse", name: "UpdateRoomMembershipResponse")
    UpdateRoomRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chime#UpdateRoomRequest", name: "UpdateRoomRequest")
    UpdateRoomResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chime#UpdateRoomResponse", name: "UpdateRoomResponse")
    UpdateUserRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chime#UpdateUserRequest", name: "UpdateUserRequest")
    UpdateUserRequestItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chime#UpdateUserRequestItem", name: "UpdateUserRequestItem")
    UpdateUserRequestItemList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.chime#UpdateUserRequestItemList", name: "UpdateUserRequestItemList", traits: {"smithy.api#length" => {"min" => 0, "max" => 20}})
    UpdateUserResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chime#UpdateUserResponse", name: "UpdateUserResponse")
    UpdateUserSettingsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chime#UpdateUserSettingsRequest", name: "UpdateUserSettingsRequest")
    User = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chime#User", name: "User")
    UserEmailList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.chime#UserEmailList", name: "UserEmailList", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    UserError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chime#UserError", name: "UserError")
    UserErrorList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.chime#UserErrorList", name: "UserErrorList")
    UserIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.chime#UserIdList", name: "UserIdList", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    UserList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.chime#UserList", name: "UserList")
    UserSettings = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chime#UserSettings", name: "UserSettings")
    UserType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.chime#UserType", name: "UserType")
    VoiceConnectorSettings = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chime#VoiceConnectorSettings", name: "VoiceConnectorSettings")

    AccessDeniedException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, name: "Code"))
    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    AccessDeniedException.type = Types::AccessDeniedException
    Account.add_member(:aws_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AwsAccountId", traits: {"smithy.api#required" => {}}))
    Account.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AccountId", traits: {"smithy.api#required" => {}}))
    Account.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name", traits: {"smithy.api#required" => {}}))
    Account.add_member(:account_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountType, name: "AccountType"))
    Account.add_member(:created_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Iso8601Timestamp, name: "CreatedTimestamp"))
    Account.add_member(:default_license, ::Smithy::Schema::Shapes::MemberShape.new(target: License, name: "DefaultLicense"))
    Account.add_member(:supported_licenses, ::Smithy::Schema::Shapes::MemberShape.new(target: LicenseList, name: "SupportedLicenses"))
    Account.add_member(:account_status, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountStatus, name: "AccountStatus"))
    Account.add_member(:signin_delegate_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: SigninDelegateGroupList, name: "SigninDelegateGroups"))
    Account.type = Types::Account
    AccountList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Account, name: "member")
    AccountSettings.add_member(:disable_remote_control, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "DisableRemoteControl"))
    AccountSettings.add_member(:enable_dial_out, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "EnableDialOut"))
    AccountSettings.type = Types::AccountSettings
    AccountStatus.add_member(:suspended, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Suspended", traits: {"smithy.api#enumValue" => "Suspended"}))
    AccountStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Active", traits: {"smithy.api#enumValue" => "Active"}))
    AccountType.add_member(:team, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Team", traits: {"smithy.api#enumValue" => "Team"}))
    AccountType.add_member(:enterprise_directory, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EnterpriseDirectory", traits: {"smithy.api#enumValue" => "EnterpriseDirectory"}))
    AccountType.add_member(:enterprise_lwa, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EnterpriseLWA", traits: {"smithy.api#enumValue" => "EnterpriseLWA"}))
    AccountType.add_member(:enterprise_oidc, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EnterpriseOIDC", traits: {"smithy.api#enumValue" => "EnterpriseOIDC"}))
    AlexaForBusinessMetadata.add_member(:is_alexa_for_business_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "IsAlexaForBusinessEnabled"))
    AlexaForBusinessMetadata.add_member(:alexa_for_business_room_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "AlexaForBusinessRoomArn"))
    AlexaForBusinessMetadata.type = Types::AlexaForBusinessMetadata
    AssociatePhoneNumberWithUserRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AccountId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AssociatePhoneNumberWithUserRequest.add_member(:user_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "UserId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AssociatePhoneNumberWithUserRequest.add_member(:e164_phone_number, ::Smithy::Schema::Shapes::MemberShape.new(target: E164PhoneNumber, name: "E164PhoneNumber", traits: {"smithy.api#required" => {}}))
    AssociatePhoneNumberWithUserRequest.type = Types::AssociatePhoneNumberWithUserRequest
    AssociatePhoneNumberWithUserResponse.type = Types::AssociatePhoneNumberWithUserResponse
    AssociateSigninDelegateGroupsWithAccountRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "AccountId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AssociateSigninDelegateGroupsWithAccountRequest.add_member(:signin_delegate_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: SigninDelegateGroupList, name: "SigninDelegateGroups", traits: {"smithy.api#required" => {}}))
    AssociateSigninDelegateGroupsWithAccountRequest.type = Types::AssociateSigninDelegateGroupsWithAccountRequest
    AssociateSigninDelegateGroupsWithAccountResponse.type = Types::AssociateSigninDelegateGroupsWithAccountResponse
    BadRequestException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, name: "Code"))
    BadRequestException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    BadRequestException.type = Types::BadRequestException
    BatchCreateRoomMembershipRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "AccountId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    BatchCreateRoomMembershipRequest.add_member(:room_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "RoomId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    BatchCreateRoomMembershipRequest.add_member(:membership_item_list, ::Smithy::Schema::Shapes::MemberShape.new(target: MembershipItemList, name: "MembershipItemList", traits: {"smithy.api#required" => {}}))
    BatchCreateRoomMembershipRequest.type = Types::BatchCreateRoomMembershipRequest
    BatchCreateRoomMembershipResponse.add_member(:errors, ::Smithy::Schema::Shapes::MemberShape.new(target: MemberErrorList, name: "Errors"))
    BatchCreateRoomMembershipResponse.type = Types::BatchCreateRoomMembershipResponse
    BatchDeletePhoneNumberRequest.add_member(:phone_number_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyStringList, name: "PhoneNumberIds", traits: {"smithy.api#required" => {}}))
    BatchDeletePhoneNumberRequest.type = Types::BatchDeletePhoneNumberRequest
    BatchDeletePhoneNumberResponse.add_member(:phone_number_errors, ::Smithy::Schema::Shapes::MemberShape.new(target: PhoneNumberErrorList, name: "PhoneNumberErrors"))
    BatchDeletePhoneNumberResponse.type = Types::BatchDeletePhoneNumberResponse
    BatchSuspendUserRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "AccountId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    BatchSuspendUserRequest.add_member(:user_id_list, ::Smithy::Schema::Shapes::MemberShape.new(target: UserIdList, name: "UserIdList", traits: {"smithy.api#required" => {}}))
    BatchSuspendUserRequest.type = Types::BatchSuspendUserRequest
    BatchSuspendUserResponse.add_member(:user_errors, ::Smithy::Schema::Shapes::MemberShape.new(target: UserErrorList, name: "UserErrors"))
    BatchSuspendUserResponse.type = Types::BatchSuspendUserResponse
    BatchUnsuspendUserRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "AccountId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    BatchUnsuspendUserRequest.add_member(:user_id_list, ::Smithy::Schema::Shapes::MemberShape.new(target: UserIdList, name: "UserIdList", traits: {"smithy.api#required" => {}}))
    BatchUnsuspendUserRequest.type = Types::BatchUnsuspendUserRequest
    BatchUnsuspendUserResponse.add_member(:user_errors, ::Smithy::Schema::Shapes::MemberShape.new(target: UserErrorList, name: "UserErrors"))
    BatchUnsuspendUserResponse.type = Types::BatchUnsuspendUserResponse
    BatchUpdatePhoneNumberRequest.add_member(:update_phone_number_request_items, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdatePhoneNumberRequestItemList, name: "UpdatePhoneNumberRequestItems", traits: {"smithy.api#required" => {}}))
    BatchUpdatePhoneNumberRequest.type = Types::BatchUpdatePhoneNumberRequest
    BatchUpdatePhoneNumberResponse.add_member(:phone_number_errors, ::Smithy::Schema::Shapes::MemberShape.new(target: PhoneNumberErrorList, name: "PhoneNumberErrors"))
    BatchUpdatePhoneNumberResponse.type = Types::BatchUpdatePhoneNumberResponse
    BatchUpdateUserRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "AccountId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    BatchUpdateUserRequest.add_member(:update_user_request_items, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateUserRequestItemList, name: "UpdateUserRequestItems", traits: {"smithy.api#required" => {}}))
    BatchUpdateUserRequest.type = Types::BatchUpdateUserRequest
    BatchUpdateUserResponse.add_member(:user_errors, ::Smithy::Schema::Shapes::MemberShape.new(target: UserErrorList, name: "UserErrors"))
    BatchUpdateUserResponse.type = Types::BatchUpdateUserResponse
    Bot.add_member(:bot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "BotId"))
    Bot.add_member(:user_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "UserId"))
    Bot.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "DisplayName"))
    Bot.add_member(:bot_type, ::Smithy::Schema::Shapes::MemberShape.new(target: BotType, name: "BotType"))
    Bot.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableBoolean, name: "Disabled"))
    Bot.add_member(:created_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Iso8601Timestamp, name: "CreatedTimestamp"))
    Bot.add_member(:updated_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Iso8601Timestamp, name: "UpdatedTimestamp"))
    Bot.add_member(:bot_email, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "BotEmail"))
    Bot.add_member(:security_token, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "SecurityToken"))
    Bot.type = Types::Bot
    BotList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Bot, name: "member")
    BotType.add_member(:chat_bot, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ChatBot", traits: {"smithy.api#enumValue" => "ChatBot"}))
    BusinessCallingSettings.add_member(:cdr_bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CdrBucket"))
    BusinessCallingSettings.type = Types::BusinessCallingSettings
    CallingNameStatus.add_member(:unassigned, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Unassigned", traits: {"smithy.api#enumValue" => "Unassigned"}))
    CallingNameStatus.add_member(:update_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UpdateInProgress", traits: {"smithy.api#enumValue" => "UpdateInProgress"}))
    CallingNameStatus.add_member(:update_succeeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UpdateSucceeded", traits: {"smithy.api#enumValue" => "UpdateSucceeded"}))
    CallingNameStatus.add_member(:update_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UpdateFailed", traits: {"smithy.api#enumValue" => "UpdateFailed"}))
    ConflictException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, name: "Code"))
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    ConflictException.type = Types::ConflictException
    ConversationRetentionSettings.add_member(:retention_days, ::Smithy::Schema::Shapes::MemberShape.new(target: RetentionDays, name: "RetentionDays"))
    ConversationRetentionSettings.type = Types::ConversationRetentionSettings
    CreateAccountRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountName, name: "Name", traits: {"smithy.api#required" => {}}))
    CreateAccountRequest.type = Types::CreateAccountRequest
    CreateAccountResponse.add_member(:account, ::Smithy::Schema::Shapes::MemberShape.new(target: Account, name: "Account"))
    CreateAccountResponse.type = Types::CreateAccountResponse
    CreateBotRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "AccountId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateBotRequest.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "DisplayName", traits: {"smithy.api#required" => {}}))
    CreateBotRequest.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "Domain"))
    CreateBotRequest.type = Types::CreateBotRequest
    CreateBotResponse.add_member(:bot, ::Smithy::Schema::Shapes::MemberShape.new(target: Bot, name: "Bot"))
    CreateBotResponse.type = Types::CreateBotResponse
    CreateMeetingDialOutRequest.add_member(:meeting_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GuidString, name: "MeetingId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateMeetingDialOutRequest.add_member(:from_phone_number, ::Smithy::Schema::Shapes::MemberShape.new(target: E164PhoneNumber, name: "FromPhoneNumber", traits: {"smithy.api#required" => {}}))
    CreateMeetingDialOutRequest.add_member(:to_phone_number, ::Smithy::Schema::Shapes::MemberShape.new(target: E164PhoneNumber, name: "ToPhoneNumber", traits: {"smithy.api#required" => {}}))
    CreateMeetingDialOutRequest.add_member(:join_token, ::Smithy::Schema::Shapes::MemberShape.new(target: JoinTokenString, name: "JoinToken", traits: {"smithy.api#required" => {}}))
    CreateMeetingDialOutRequest.type = Types::CreateMeetingDialOutRequest
    CreateMeetingDialOutResponse.add_member(:transaction_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GuidString, name: "TransactionId"))
    CreateMeetingDialOutResponse.type = Types::CreateMeetingDialOutResponse
    CreatePhoneNumberOrderRequest.add_member(:product_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PhoneNumberProductType, name: "ProductType", traits: {"smithy.api#required" => {}}))
    CreatePhoneNumberOrderRequest.add_member(:e164_phone_numbers, ::Smithy::Schema::Shapes::MemberShape.new(target: E164PhoneNumberList, name: "E164PhoneNumbers", traits: {"smithy.api#required" => {}}))
    CreatePhoneNumberOrderRequest.type = Types::CreatePhoneNumberOrderRequest
    CreatePhoneNumberOrderResponse.add_member(:phone_number_order, ::Smithy::Schema::Shapes::MemberShape.new(target: PhoneNumberOrder, name: "PhoneNumberOrder"))
    CreatePhoneNumberOrderResponse.type = Types::CreatePhoneNumberOrderResponse
    CreateRoomMembershipRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "AccountId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateRoomMembershipRequest.add_member(:room_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "RoomId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateRoomMembershipRequest.add_member(:member_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "MemberId", traits: {"smithy.api#required" => {}}))
    CreateRoomMembershipRequest.add_member(:role, ::Smithy::Schema::Shapes::MemberShape.new(target: RoomMembershipRole, name: "Role"))
    CreateRoomMembershipRequest.type = Types::CreateRoomMembershipRequest
    CreateRoomMembershipResponse.add_member(:room_membership, ::Smithy::Schema::Shapes::MemberShape.new(target: RoomMembership, name: "RoomMembership"))
    CreateRoomMembershipResponse.type = Types::CreateRoomMembershipResponse
    CreateRoomRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "AccountId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateRoomRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "Name", traits: {"smithy.api#required" => {}}))
    CreateRoomRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestToken, name: "ClientRequestToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateRoomRequest.type = Types::CreateRoomRequest
    CreateRoomResponse.add_member(:room, ::Smithy::Schema::Shapes::MemberShape.new(target: Room, name: "Room"))
    CreateRoomResponse.type = Types::CreateRoomResponse
    CreateUserRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "AccountId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateUserRequest.add_member(:username, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Username"))
    CreateUserRequest.add_member(:email, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailAddress, name: "Email"))
    CreateUserRequest.add_member(:user_type, ::Smithy::Schema::Shapes::MemberShape.new(target: UserType, name: "UserType"))
    CreateUserRequest.type = Types::CreateUserRequest
    CreateUserResponse.add_member(:user, ::Smithy::Schema::Shapes::MemberShape.new(target: User, name: "User"))
    CreateUserResponse.type = Types::CreateUserResponse
    DeleteAccountRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "AccountId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAccountRequest.type = Types::DeleteAccountRequest
    DeleteAccountResponse.type = Types::DeleteAccountResponse
    DeleteEventsConfigurationRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "AccountId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteEventsConfigurationRequest.add_member(:bot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "BotId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteEventsConfigurationRequest.type = Types::DeleteEventsConfigurationRequest
    DeletePhoneNumberRequest.add_member(:phone_number_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "PhoneNumberId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeletePhoneNumberRequest.type = Types::DeletePhoneNumberRequest
    DeleteRoomMembershipRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "AccountId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteRoomMembershipRequest.add_member(:room_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "RoomId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteRoomMembershipRequest.add_member(:member_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "MemberId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteRoomMembershipRequest.type = Types::DeleteRoomMembershipRequest
    DeleteRoomRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "AccountId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteRoomRequest.add_member(:room_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "RoomId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteRoomRequest.type = Types::DeleteRoomRequest
    DisassociatePhoneNumberFromUserRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AccountId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociatePhoneNumberFromUserRequest.add_member(:user_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "UserId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociatePhoneNumberFromUserRequest.type = Types::DisassociatePhoneNumberFromUserRequest
    DisassociatePhoneNumberFromUserResponse.type = Types::DisassociatePhoneNumberFromUserResponse
    DisassociateSigninDelegateGroupsFromAccountRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "AccountId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociateSigninDelegateGroupsFromAccountRequest.add_member(:group_names, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyStringList, name: "GroupNames", traits: {"smithy.api#required" => {}}))
    DisassociateSigninDelegateGroupsFromAccountRequest.type = Types::DisassociateSigninDelegateGroupsFromAccountRequest
    DisassociateSigninDelegateGroupsFromAccountResponse.type = Types::DisassociateSigninDelegateGroupsFromAccountResponse
    E164PhoneNumberList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: E164PhoneNumber, name: "member")
    EmailStatus.add_member(:not_sent, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NotSent", traits: {"smithy.api#enumValue" => "NotSent"}))
    EmailStatus.add_member(:sent, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Sent", traits: {"smithy.api#enumValue" => "Sent"}))
    EmailStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Failed", traits: {"smithy.api#enumValue" => "Failed"}))
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
    EventsConfiguration.add_member(:bot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "BotId"))
    EventsConfiguration.add_member(:outbound_events_https_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "OutboundEventsHTTPSEndpoint"))
    EventsConfiguration.add_member(:lambda_function_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "LambdaFunctionArn"))
    EventsConfiguration.type = Types::EventsConfiguration
    ForbiddenException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, name: "Code"))
    ForbiddenException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    ForbiddenException.type = Types::ForbiddenException
    GetAccountRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "AccountId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAccountRequest.type = Types::GetAccountRequest
    GetAccountResponse.add_member(:account, ::Smithy::Schema::Shapes::MemberShape.new(target: Account, name: "Account"))
    GetAccountResponse.type = Types::GetAccountResponse
    GetAccountSettingsRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "AccountId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAccountSettingsRequest.type = Types::GetAccountSettingsRequest
    GetAccountSettingsResponse.add_member(:account_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountSettings, name: "AccountSettings"))
    GetAccountSettingsResponse.type = Types::GetAccountSettingsResponse
    GetBotRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "AccountId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetBotRequest.add_member(:bot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "BotId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetBotRequest.type = Types::GetBotRequest
    GetBotResponse.add_member(:bot, ::Smithy::Schema::Shapes::MemberShape.new(target: Bot, name: "Bot"))
    GetBotResponse.type = Types::GetBotResponse
    GetEventsConfigurationRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "AccountId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetEventsConfigurationRequest.add_member(:bot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "BotId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetEventsConfigurationRequest.type = Types::GetEventsConfigurationRequest
    GetEventsConfigurationResponse.add_member(:events_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: EventsConfiguration, name: "EventsConfiguration"))
    GetEventsConfigurationResponse.type = Types::GetEventsConfigurationResponse
    GetGlobalSettingsResponse.add_member(:business_calling, ::Smithy::Schema::Shapes::MemberShape.new(target: BusinessCallingSettings, name: "BusinessCalling"))
    GetGlobalSettingsResponse.add_member(:voice_connector, ::Smithy::Schema::Shapes::MemberShape.new(target: VoiceConnectorSettings, name: "VoiceConnector"))
    GetGlobalSettingsResponse.type = Types::GetGlobalSettingsResponse
    GetPhoneNumberOrderRequest.add_member(:phone_number_order_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GuidString, name: "PhoneNumberOrderId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetPhoneNumberOrderRequest.type = Types::GetPhoneNumberOrderRequest
    GetPhoneNumberOrderResponse.add_member(:phone_number_order, ::Smithy::Schema::Shapes::MemberShape.new(target: PhoneNumberOrder, name: "PhoneNumberOrder"))
    GetPhoneNumberOrderResponse.type = Types::GetPhoneNumberOrderResponse
    GetPhoneNumberRequest.add_member(:phone_number_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "PhoneNumberId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetPhoneNumberRequest.type = Types::GetPhoneNumberRequest
    GetPhoneNumberResponse.add_member(:phone_number, ::Smithy::Schema::Shapes::MemberShape.new(target: PhoneNumber, name: "PhoneNumber"))
    GetPhoneNumberResponse.type = Types::GetPhoneNumberResponse
    GetPhoneNumberSettingsResponse.add_member(:calling_name, ::Smithy::Schema::Shapes::MemberShape.new(target: CallingName, name: "CallingName"))
    GetPhoneNumberSettingsResponse.add_member(:calling_name_updated_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Iso8601Timestamp, name: "CallingNameUpdatedTimestamp"))
    GetPhoneNumberSettingsResponse.type = Types::GetPhoneNumberSettingsResponse
    GetRetentionSettingsRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "AccountId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetRetentionSettingsRequest.type = Types::GetRetentionSettingsRequest
    GetRetentionSettingsResponse.add_member(:retention_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: RetentionSettings, name: "RetentionSettings"))
    GetRetentionSettingsResponse.add_member(:initiate_deletion_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Iso8601Timestamp, name: "InitiateDeletionTimestamp"))
    GetRetentionSettingsResponse.type = Types::GetRetentionSettingsResponse
    GetRoomRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "AccountId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetRoomRequest.add_member(:room_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "RoomId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetRoomRequest.type = Types::GetRoomRequest
    GetRoomResponse.add_member(:room, ::Smithy::Schema::Shapes::MemberShape.new(target: Room, name: "Room"))
    GetRoomResponse.type = Types::GetRoomResponse
    GetUserRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "AccountId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetUserRequest.add_member(:user_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "UserId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetUserRequest.type = Types::GetUserRequest
    GetUserResponse.add_member(:user, ::Smithy::Schema::Shapes::MemberShape.new(target: User, name: "User"))
    GetUserResponse.type = Types::GetUserResponse
    GetUserSettingsRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AccountId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetUserSettingsRequest.add_member(:user_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "UserId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetUserSettingsRequest.type = Types::GetUserSettingsRequest
    GetUserSettingsResponse.add_member(:user_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: UserSettings, name: "UserSettings"))
    GetUserSettingsResponse.type = Types::GetUserSettingsResponse
    Invite.add_member(:invite_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "InviteId"))
    Invite.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: InviteStatus, name: "Status"))
    Invite.add_member(:email_address, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailAddress, name: "EmailAddress"))
    Invite.add_member(:email_status, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailStatus, name: "EmailStatus"))
    Invite.type = Types::Invite
    InviteList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Invite, name: "member")
    InviteStatus.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Pending", traits: {"smithy.api#enumValue" => "Pending"}))
    InviteStatus.add_member(:accepted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Accepted", traits: {"smithy.api#enumValue" => "Accepted"}))
    InviteStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Failed", traits: {"smithy.api#enumValue" => "Failed"}))
    InviteUsersRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "AccountId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    InviteUsersRequest.add_member(:user_email_list, ::Smithy::Schema::Shapes::MemberShape.new(target: UserEmailList, name: "UserEmailList", traits: {"smithy.api#required" => {}}))
    InviteUsersRequest.add_member(:user_type, ::Smithy::Schema::Shapes::MemberShape.new(target: UserType, name: "UserType"))
    InviteUsersRequest.type = Types::InviteUsersRequest
    InviteUsersResponse.add_member(:invites, ::Smithy::Schema::Shapes::MemberShape.new(target: InviteList, name: "Invites"))
    InviteUsersResponse.type = Types::InviteUsersResponse
    License.add_member(:basic, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Basic", traits: {"smithy.api#enumValue" => "Basic"}))
    License.add_member(:plus, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Plus", traits: {"smithy.api#enumValue" => "Plus"}))
    License.add_member(:pro, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Pro", traits: {"smithy.api#enumValue" => "Pro"}))
    License.add_member(:pro_trial, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ProTrial", traits: {"smithy.api#enumValue" => "ProTrial"}))
    LicenseList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: License, name: "member")
    ListAccountsRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountName, name: "Name", traits: {"smithy.api#httpQuery" => "name"}))
    ListAccountsRequest.add_member(:user_email, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailAddress, name: "UserEmail", traits: {"smithy.api#httpQuery" => "user-email"}))
    ListAccountsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#httpQuery" => "next-token"}))
    ListAccountsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileServiceMaxResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "max-results"}))
    ListAccountsRequest.type = Types::ListAccountsRequest
    ListAccountsResponse.add_member(:accounts, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountList, name: "Accounts"))
    ListAccountsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListAccountsResponse.type = Types::ListAccountsResponse
    ListBotsRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "AccountId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListBotsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ResultMax, name: "MaxResults", traits: {"smithy.api#httpQuery" => "max-results"}))
    ListBotsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#httpQuery" => "next-token"}))
    ListBotsRequest.type = Types::ListBotsRequest
    ListBotsResponse.add_member(:bots, ::Smithy::Schema::Shapes::MemberShape.new(target: BotList, name: "Bots"))
    ListBotsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListBotsResponse.type = Types::ListBotsResponse
    ListPhoneNumberOrdersRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#httpQuery" => "next-token"}))
    ListPhoneNumberOrdersRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ResultMax, name: "MaxResults", traits: {"smithy.api#httpQuery" => "max-results"}))
    ListPhoneNumberOrdersRequest.type = Types::ListPhoneNumberOrdersRequest
    ListPhoneNumberOrdersResponse.add_member(:phone_number_orders, ::Smithy::Schema::Shapes::MemberShape.new(target: PhoneNumberOrderList, name: "PhoneNumberOrders"))
    ListPhoneNumberOrdersResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListPhoneNumberOrdersResponse.type = Types::ListPhoneNumberOrdersResponse
    ListPhoneNumbersRequest.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: PhoneNumberStatus, name: "Status", traits: {"smithy.api#httpQuery" => "status"}))
    ListPhoneNumbersRequest.add_member(:product_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PhoneNumberProductType, name: "ProductType", traits: {"smithy.api#httpQuery" => "product-type"}))
    ListPhoneNumbersRequest.add_member(:filter_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PhoneNumberAssociationName, name: "FilterName", traits: {"smithy.api#httpQuery" => "filter-name"}))
    ListPhoneNumbersRequest.add_member(:filter_value, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "FilterValue", traits: {"smithy.api#httpQuery" => "filter-value"}))
    ListPhoneNumbersRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ResultMax, name: "MaxResults", traits: {"smithy.api#httpQuery" => "max-results"}))
    ListPhoneNumbersRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#httpQuery" => "next-token"}))
    ListPhoneNumbersRequest.type = Types::ListPhoneNumbersRequest
    ListPhoneNumbersResponse.add_member(:phone_numbers, ::Smithy::Schema::Shapes::MemberShape.new(target: PhoneNumberList, name: "PhoneNumbers"))
    ListPhoneNumbersResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListPhoneNumbersResponse.type = Types::ListPhoneNumbersResponse
    ListRoomMembershipsRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "AccountId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListRoomMembershipsRequest.add_member(:room_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "RoomId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListRoomMembershipsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ResultMax, name: "MaxResults", traits: {"smithy.api#httpQuery" => "max-results"}))
    ListRoomMembershipsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#httpQuery" => "next-token"}))
    ListRoomMembershipsRequest.type = Types::ListRoomMembershipsRequest
    ListRoomMembershipsResponse.add_member(:room_memberships, ::Smithy::Schema::Shapes::MemberShape.new(target: RoomMembershipList, name: "RoomMemberships"))
    ListRoomMembershipsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListRoomMembershipsResponse.type = Types::ListRoomMembershipsResponse
    ListRoomsRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "AccountId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListRoomsRequest.add_member(:member_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "MemberId", traits: {"smithy.api#httpQuery" => "member-id"}))
    ListRoomsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ResultMax, name: "MaxResults", traits: {"smithy.api#httpQuery" => "max-results"}))
    ListRoomsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#httpQuery" => "next-token"}))
    ListRoomsRequest.type = Types::ListRoomsRequest
    ListRoomsResponse.add_member(:rooms, ::Smithy::Schema::Shapes::MemberShape.new(target: RoomList, name: "Rooms"))
    ListRoomsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListRoomsResponse.type = Types::ListRoomsResponse
    ListSupportedPhoneNumberCountriesRequest.add_member(:product_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PhoneNumberProductType, name: "ProductType", traits: {"smithy.api#httpQuery" => "product-type", "smithy.api#required" => {}}))
    ListSupportedPhoneNumberCountriesRequest.type = Types::ListSupportedPhoneNumberCountriesRequest
    ListSupportedPhoneNumberCountriesResponse.add_member(:phone_number_countries, ::Smithy::Schema::Shapes::MemberShape.new(target: PhoneNumberCountriesList, name: "PhoneNumberCountries"))
    ListSupportedPhoneNumberCountriesResponse.type = Types::ListSupportedPhoneNumberCountriesResponse
    ListUsersRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "AccountId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListUsersRequest.add_member(:user_email, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailAddress, name: "UserEmail", traits: {"smithy.api#httpQuery" => "user-email"}))
    ListUsersRequest.add_member(:user_type, ::Smithy::Schema::Shapes::MemberShape.new(target: UserType, name: "UserType", traits: {"smithy.api#httpQuery" => "user-type"}))
    ListUsersRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileServiceMaxResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "max-results"}))
    ListUsersRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#httpQuery" => "next-token"}))
    ListUsersRequest.type = Types::ListUsersRequest
    ListUsersResponse.add_member(:users, ::Smithy::Schema::Shapes::MemberShape.new(target: UserList, name: "Users"))
    ListUsersResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListUsersResponse.type = Types::ListUsersResponse
    LogoutUserRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "AccountId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    LogoutUserRequest.add_member(:user_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "UserId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    LogoutUserRequest.type = Types::LogoutUserRequest
    LogoutUserResponse.type = Types::LogoutUserResponse
    Member.add_member(:member_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "MemberId"))
    Member.add_member(:member_type, ::Smithy::Schema::Shapes::MemberShape.new(target: MemberType, name: "MemberType"))
    Member.add_member(:email, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "Email"))
    Member.add_member(:full_name, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "FullName"))
    Member.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "AccountId"))
    Member.type = Types::Member
    MemberError.add_member(:member_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "MemberId"))
    MemberError.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, name: "ErrorCode"))
    MemberError.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ErrorMessage"))
    MemberError.type = Types::MemberError
    MemberErrorList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: MemberError, name: "member")
    MemberType.add_member(:user, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "User", traits: {"smithy.api#enumValue" => "User"}))
    MemberType.add_member(:bot, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Bot", traits: {"smithy.api#enumValue" => "Bot"}))
    MemberType.add_member(:webhook, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Webhook", traits: {"smithy.api#enumValue" => "Webhook"}))
    MembershipItem.add_member(:member_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "MemberId"))
    MembershipItem.add_member(:role, ::Smithy::Schema::Shapes::MemberShape.new(target: RoomMembershipRole, name: "Role"))
    MembershipItem.type = Types::MembershipItem
    MembershipItemList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: MembershipItem, name: "member")
    NonEmptyStringList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member")
    NotFoundException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, name: "Code"))
    NotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    NotFoundException.type = Types::NotFoundException
    OrderedPhoneNumber.add_member(:e164_phone_number, ::Smithy::Schema::Shapes::MemberShape.new(target: E164PhoneNumber, name: "E164PhoneNumber"))
    OrderedPhoneNumber.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: OrderedPhoneNumberStatus, name: "Status"))
    OrderedPhoneNumber.type = Types::OrderedPhoneNumber
    OrderedPhoneNumberList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: OrderedPhoneNumber, name: "member")
    OrderedPhoneNumberStatus.add_member(:processing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Processing", traits: {"smithy.api#enumValue" => "Processing"}))
    OrderedPhoneNumberStatus.add_member(:acquired, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Acquired", traits: {"smithy.api#enumValue" => "Acquired"}))
    OrderedPhoneNumberStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Failed", traits: {"smithy.api#enumValue" => "Failed"}))
    PhoneNumber.add_member(:phone_number_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "PhoneNumberId"))
    PhoneNumber.add_member(:e164_phone_number, ::Smithy::Schema::Shapes::MemberShape.new(target: E164PhoneNumber, name: "E164PhoneNumber"))
    PhoneNumber.add_member(:country, ::Smithy::Schema::Shapes::MemberShape.new(target: Alpha2CountryCode, name: "Country"))
    PhoneNumber.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: PhoneNumberType, name: "Type"))
    PhoneNumber.add_member(:product_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PhoneNumberProductType, name: "ProductType"))
    PhoneNumber.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: PhoneNumberStatus, name: "Status"))
    PhoneNumber.add_member(:capabilities, ::Smithy::Schema::Shapes::MemberShape.new(target: PhoneNumberCapabilities, name: "Capabilities"))
    PhoneNumber.add_member(:associations, ::Smithy::Schema::Shapes::MemberShape.new(target: PhoneNumberAssociationList, name: "Associations"))
    PhoneNumber.add_member(:calling_name, ::Smithy::Schema::Shapes::MemberShape.new(target: CallingName, name: "CallingName"))
    PhoneNumber.add_member(:calling_name_status, ::Smithy::Schema::Shapes::MemberShape.new(target: CallingNameStatus, name: "CallingNameStatus"))
    PhoneNumber.add_member(:created_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Iso8601Timestamp, name: "CreatedTimestamp"))
    PhoneNumber.add_member(:updated_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Iso8601Timestamp, name: "UpdatedTimestamp"))
    PhoneNumber.add_member(:deletion_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Iso8601Timestamp, name: "DeletionTimestamp"))
    PhoneNumber.type = Types::PhoneNumber
    PhoneNumberAssociation.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Value"))
    PhoneNumberAssociation.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: PhoneNumberAssociationName, name: "Name"))
    PhoneNumberAssociation.add_member(:associated_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Iso8601Timestamp, name: "AssociatedTimestamp"))
    PhoneNumberAssociation.type = Types::PhoneNumberAssociation
    PhoneNumberAssociationList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: PhoneNumberAssociation, name: "member")
    PhoneNumberAssociationName.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AccountId", traits: {"smithy.api#enumValue" => "AccountId"}))
    PhoneNumberAssociationName.add_member(:user_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UserId", traits: {"smithy.api#enumValue" => "UserId"}))
    PhoneNumberAssociationName.add_member(:voice_connector_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VoiceConnectorId", traits: {"smithy.api#enumValue" => "VoiceConnectorId"}))
    PhoneNumberAssociationName.add_member(:voice_connector_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VoiceConnectorGroupId", traits: {"smithy.api#enumValue" => "VoiceConnectorGroupId"}))
    PhoneNumberAssociationName.add_member(:sip_rule_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SipRuleId", traits: {"smithy.api#enumValue" => "SipRuleId"}))
    PhoneNumberCapabilities.add_member(:inbound_call, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableBoolean, name: "InboundCall"))
    PhoneNumberCapabilities.add_member(:outbound_call, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableBoolean, name: "OutboundCall"))
    PhoneNumberCapabilities.add_member(:inbound_sms, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableBoolean, name: "InboundSMS"))
    PhoneNumberCapabilities.add_member(:outbound_sms, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableBoolean, name: "OutboundSMS"))
    PhoneNumberCapabilities.add_member(:inbound_mms, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableBoolean, name: "InboundMMS"))
    PhoneNumberCapabilities.add_member(:outbound_mms, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableBoolean, name: "OutboundMMS"))
    PhoneNumberCapabilities.type = Types::PhoneNumberCapabilities
    PhoneNumberCountriesList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: PhoneNumberCountry, name: "member")
    PhoneNumberCountry.add_member(:country_code, ::Smithy::Schema::Shapes::MemberShape.new(target: Alpha2CountryCode, name: "CountryCode"))
    PhoneNumberCountry.add_member(:supported_phone_number_types, ::Smithy::Schema::Shapes::MemberShape.new(target: PhoneNumberTypeList, name: "SupportedPhoneNumberTypes"))
    PhoneNumberCountry.type = Types::PhoneNumberCountry
    PhoneNumberError.add_member(:phone_number_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "PhoneNumberId"))
    PhoneNumberError.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, name: "ErrorCode"))
    PhoneNumberError.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ErrorMessage"))
    PhoneNumberError.type = Types::PhoneNumberError
    PhoneNumberErrorList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: PhoneNumberError, name: "member")
    PhoneNumberList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: PhoneNumber, name: "member")
    PhoneNumberOrder.add_member(:phone_number_order_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GuidString, name: "PhoneNumberOrderId"))
    PhoneNumberOrder.add_member(:product_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PhoneNumberProductType, name: "ProductType"))
    PhoneNumberOrder.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: PhoneNumberOrderStatus, name: "Status"))
    PhoneNumberOrder.add_member(:ordered_phone_numbers, ::Smithy::Schema::Shapes::MemberShape.new(target: OrderedPhoneNumberList, name: "OrderedPhoneNumbers"))
    PhoneNumberOrder.add_member(:created_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Iso8601Timestamp, name: "CreatedTimestamp"))
    PhoneNumberOrder.add_member(:updated_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Iso8601Timestamp, name: "UpdatedTimestamp"))
    PhoneNumberOrder.type = Types::PhoneNumberOrder
    PhoneNumberOrderList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: PhoneNumberOrder, name: "member")
    PhoneNumberOrderStatus.add_member(:processing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Processing", traits: {"smithy.api#enumValue" => "Processing"}))
    PhoneNumberOrderStatus.add_member(:successful, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Successful", traits: {"smithy.api#enumValue" => "Successful"}))
    PhoneNumberOrderStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Failed", traits: {"smithy.api#enumValue" => "Failed"}))
    PhoneNumberOrderStatus.add_member(:partial, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Partial", traits: {"smithy.api#enumValue" => "Partial"}))
    PhoneNumberProductType.add_member(:business_calling, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BusinessCalling", traits: {"smithy.api#enumValue" => "BusinessCalling"}))
    PhoneNumberProductType.add_member(:voice_connector, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VoiceConnector", traits: {"smithy.api#enumValue" => "VoiceConnector"}))
    PhoneNumberProductType.add_member(:sip_media_application_dial_in, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SipMediaApplicationDialIn", traits: {"smithy.api#enumValue" => "SipMediaApplicationDialIn"}))
    PhoneNumberStatus.add_member(:acquire_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AcquireInProgress", traits: {"smithy.api#enumValue" => "AcquireInProgress"}))
    PhoneNumberStatus.add_member(:acquire_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AcquireFailed", traits: {"smithy.api#enumValue" => "AcquireFailed"}))
    PhoneNumberStatus.add_member(:unassigned, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Unassigned", traits: {"smithy.api#enumValue" => "Unassigned"}))
    PhoneNumberStatus.add_member(:assigned, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Assigned", traits: {"smithy.api#enumValue" => "Assigned"}))
    PhoneNumberStatus.add_member(:release_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ReleaseInProgress", traits: {"smithy.api#enumValue" => "ReleaseInProgress"}))
    PhoneNumberStatus.add_member(:delete_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DeleteInProgress", traits: {"smithy.api#enumValue" => "DeleteInProgress"}))
    PhoneNumberStatus.add_member(:release_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ReleaseFailed", traits: {"smithy.api#enumValue" => "ReleaseFailed"}))
    PhoneNumberStatus.add_member(:delete_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DeleteFailed", traits: {"smithy.api#enumValue" => "DeleteFailed"}))
    PhoneNumberType.add_member(:local, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Local", traits: {"smithy.api#enumValue" => "Local"}))
    PhoneNumberType.add_member(:toll_free, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TollFree", traits: {"smithy.api#enumValue" => "TollFree"}))
    PhoneNumberTypeList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: PhoneNumberType, name: "member")
    PutEventsConfigurationRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "AccountId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutEventsConfigurationRequest.add_member(:bot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "BotId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutEventsConfigurationRequest.add_member(:outbound_events_https_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "OutboundEventsHTTPSEndpoint"))
    PutEventsConfigurationRequest.add_member(:lambda_function_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "LambdaFunctionArn"))
    PutEventsConfigurationRequest.type = Types::PutEventsConfigurationRequest
    PutEventsConfigurationResponse.add_member(:events_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: EventsConfiguration, name: "EventsConfiguration"))
    PutEventsConfigurationResponse.type = Types::PutEventsConfigurationResponse
    PutRetentionSettingsRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "AccountId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutRetentionSettingsRequest.add_member(:retention_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: RetentionSettings, name: "RetentionSettings", traits: {"smithy.api#required" => {}}))
    PutRetentionSettingsRequest.type = Types::PutRetentionSettingsRequest
    PutRetentionSettingsResponse.add_member(:retention_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: RetentionSettings, name: "RetentionSettings"))
    PutRetentionSettingsResponse.add_member(:initiate_deletion_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Iso8601Timestamp, name: "InitiateDeletionTimestamp"))
    PutRetentionSettingsResponse.type = Types::PutRetentionSettingsResponse
    RedactConversationMessageRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "AccountId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RedactConversationMessageRequest.add_member(:conversation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "ConversationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RedactConversationMessageRequest.add_member(:message_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "MessageId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RedactConversationMessageRequest.type = Types::RedactConversationMessageRequest
    RedactConversationMessageResponse.type = Types::RedactConversationMessageResponse
    RedactRoomMessageRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "AccountId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RedactRoomMessageRequest.add_member(:room_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "RoomId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RedactRoomMessageRequest.add_member(:message_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "MessageId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RedactRoomMessageRequest.type = Types::RedactRoomMessageRequest
    RedactRoomMessageResponse.type = Types::RedactRoomMessageResponse
    RegenerateSecurityTokenRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "AccountId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RegenerateSecurityTokenRequest.add_member(:bot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "BotId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RegenerateSecurityTokenRequest.type = Types::RegenerateSecurityTokenRequest
    RegenerateSecurityTokenResponse.add_member(:bot, ::Smithy::Schema::Shapes::MemberShape.new(target: Bot, name: "Bot"))
    RegenerateSecurityTokenResponse.type = Types::RegenerateSecurityTokenResponse
    RegistrationStatus.add_member(:unregistered, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Unregistered", traits: {"smithy.api#enumValue" => "Unregistered"}))
    RegistrationStatus.add_member(:registered, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Registered", traits: {"smithy.api#enumValue" => "Registered"}))
    RegistrationStatus.add_member(:suspended, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Suspended", traits: {"smithy.api#enumValue" => "Suspended"}))
    ResetPersonalPINRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "AccountId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ResetPersonalPINRequest.add_member(:user_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "UserId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ResetPersonalPINRequest.type = Types::ResetPersonalPINRequest
    ResetPersonalPINResponse.add_member(:user, ::Smithy::Schema::Shapes::MemberShape.new(target: User, name: "User"))
    ResetPersonalPINResponse.type = Types::ResetPersonalPINResponse
    ResourceLimitExceededException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, name: "Code"))
    ResourceLimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    ResourceLimitExceededException.type = Types::ResourceLimitExceededException
    RestorePhoneNumberRequest.add_member(:phone_number_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "PhoneNumberId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RestorePhoneNumberRequest.type = Types::RestorePhoneNumberRequest
    RestorePhoneNumberResponse.add_member(:phone_number, ::Smithy::Schema::Shapes::MemberShape.new(target: PhoneNumber, name: "PhoneNumber"))
    RestorePhoneNumberResponse.type = Types::RestorePhoneNumberResponse
    RetentionSettings.add_member(:room_retention_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: RoomRetentionSettings, name: "RoomRetentionSettings"))
    RetentionSettings.add_member(:conversation_retention_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: ConversationRetentionSettings, name: "ConversationRetentionSettings"))
    RetentionSettings.type = Types::RetentionSettings
    Room.add_member(:room_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "RoomId"))
    Room.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "Name"))
    Room.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "AccountId"))
    Room.add_member(:created_by, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "CreatedBy"))
    Room.add_member(:created_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Iso8601Timestamp, name: "CreatedTimestamp"))
    Room.add_member(:updated_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Iso8601Timestamp, name: "UpdatedTimestamp"))
    Room.type = Types::Room
    RoomList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Room, name: "member")
    RoomMembership.add_member(:room_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "RoomId"))
    RoomMembership.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Member, name: "Member"))
    RoomMembership.add_member(:role, ::Smithy::Schema::Shapes::MemberShape.new(target: RoomMembershipRole, name: "Role"))
    RoomMembership.add_member(:invited_by, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "InvitedBy"))
    RoomMembership.add_member(:updated_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Iso8601Timestamp, name: "UpdatedTimestamp"))
    RoomMembership.type = Types::RoomMembership
    RoomMembershipList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: RoomMembership, name: "member")
    RoomMembershipRole.add_member(:administrator, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Administrator", traits: {"smithy.api#enumValue" => "Administrator"}))
    RoomMembershipRole.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Member", traits: {"smithy.api#enumValue" => "Member"}))
    RoomRetentionSettings.add_member(:retention_days, ::Smithy::Schema::Shapes::MemberShape.new(target: RetentionDays, name: "RetentionDays"))
    RoomRetentionSettings.type = Types::RoomRetentionSettings
    SearchAvailablePhoneNumbersRequest.add_member(:area_code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AreaCode", traits: {"smithy.api#httpQuery" => "area-code"}))
    SearchAvailablePhoneNumbersRequest.add_member(:city, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "City", traits: {"smithy.api#httpQuery" => "city"}))
    SearchAvailablePhoneNumbersRequest.add_member(:country, ::Smithy::Schema::Shapes::MemberShape.new(target: Alpha2CountryCode, name: "Country", traits: {"smithy.api#httpQuery" => "country"}))
    SearchAvailablePhoneNumbersRequest.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "State", traits: {"smithy.api#httpQuery" => "state"}))
    SearchAvailablePhoneNumbersRequest.add_member(:toll_free_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: TollFreePrefix, name: "TollFreePrefix", traits: {"smithy.api#httpQuery" => "toll-free-prefix"}))
    SearchAvailablePhoneNumbersRequest.add_member(:phone_number_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PhoneNumberType, name: "PhoneNumberType", traits: {"smithy.api#httpQuery" => "phone-number-type"}))
    SearchAvailablePhoneNumbersRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: PhoneNumberMaxResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "max-results"}))
    SearchAvailablePhoneNumbersRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#httpQuery" => "next-token"}))
    SearchAvailablePhoneNumbersRequest.type = Types::SearchAvailablePhoneNumbersRequest
    SearchAvailablePhoneNumbersResponse.add_member(:e164_phone_numbers, ::Smithy::Schema::Shapes::MemberShape.new(target: E164PhoneNumberList, name: "E164PhoneNumbers"))
    SearchAvailablePhoneNumbersResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    SearchAvailablePhoneNumbersResponse.type = Types::SearchAvailablePhoneNumbersResponse
    ServiceFailureException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, name: "Code"))
    ServiceFailureException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    ServiceFailureException.type = Types::ServiceFailureException
    ServiceUnavailableException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, name: "Code"))
    ServiceUnavailableException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    ServiceUnavailableException.type = Types::ServiceUnavailableException
    SigninDelegateGroup.add_member(:group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "GroupName"))
    SigninDelegateGroup.type = Types::SigninDelegateGroup
    SigninDelegateGroupList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: SigninDelegateGroup, name: "member")
    TelephonySettings.add_member(:inbound_calling, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "InboundCalling", traits: {"smithy.api#required" => {}}))
    TelephonySettings.add_member(:outbound_calling, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "OutboundCalling", traits: {"smithy.api#required" => {}}))
    TelephonySettings.add_member(:sms, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "SMS", traits: {"smithy.api#required" => {}}))
    TelephonySettings.type = Types::TelephonySettings
    ThrottledClientException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, name: "Code"))
    ThrottledClientException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    ThrottledClientException.type = Types::ThrottledClientException
    UnauthorizedClientException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, name: "Code"))
    UnauthorizedClientException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    UnauthorizedClientException.type = Types::UnauthorizedClientException
    UnprocessableEntityException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, name: "Code"))
    UnprocessableEntityException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    UnprocessableEntityException.type = Types::UnprocessableEntityException
    UpdateAccountRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "AccountId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateAccountRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountName, name: "Name"))
    UpdateAccountRequest.add_member(:default_license, ::Smithy::Schema::Shapes::MemberShape.new(target: License, name: "DefaultLicense"))
    UpdateAccountRequest.type = Types::UpdateAccountRequest
    UpdateAccountResponse.add_member(:account, ::Smithy::Schema::Shapes::MemberShape.new(target: Account, name: "Account"))
    UpdateAccountResponse.type = Types::UpdateAccountResponse
    UpdateAccountSettingsRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "AccountId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateAccountSettingsRequest.add_member(:account_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountSettings, name: "AccountSettings", traits: {"smithy.api#required" => {}}))
    UpdateAccountSettingsRequest.type = Types::UpdateAccountSettingsRequest
    UpdateAccountSettingsResponse.type = Types::UpdateAccountSettingsResponse
    UpdateBotRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "AccountId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateBotRequest.add_member(:bot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "BotId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateBotRequest.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableBoolean, name: "Disabled"))
    UpdateBotRequest.type = Types::UpdateBotRequest
    UpdateBotResponse.add_member(:bot, ::Smithy::Schema::Shapes::MemberShape.new(target: Bot, name: "Bot"))
    UpdateBotResponse.type = Types::UpdateBotResponse
    UpdateGlobalSettingsRequest.add_member(:business_calling, ::Smithy::Schema::Shapes::MemberShape.new(target: BusinessCallingSettings, name: "BusinessCalling"))
    UpdateGlobalSettingsRequest.add_member(:voice_connector, ::Smithy::Schema::Shapes::MemberShape.new(target: VoiceConnectorSettings, name: "VoiceConnector"))
    UpdateGlobalSettingsRequest.type = Types::UpdateGlobalSettingsRequest
    UpdatePhoneNumberRequest.add_member(:phone_number_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "PhoneNumberId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdatePhoneNumberRequest.add_member(:product_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PhoneNumberProductType, name: "ProductType"))
    UpdatePhoneNumberRequest.add_member(:calling_name, ::Smithy::Schema::Shapes::MemberShape.new(target: CallingName, name: "CallingName"))
    UpdatePhoneNumberRequest.type = Types::UpdatePhoneNumberRequest
    UpdatePhoneNumberRequestItem.add_member(:phone_number_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "PhoneNumberId", traits: {"smithy.api#required" => {}}))
    UpdatePhoneNumberRequestItem.add_member(:product_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PhoneNumberProductType, name: "ProductType"))
    UpdatePhoneNumberRequestItem.add_member(:calling_name, ::Smithy::Schema::Shapes::MemberShape.new(target: CallingName, name: "CallingName"))
    UpdatePhoneNumberRequestItem.type = Types::UpdatePhoneNumberRequestItem
    UpdatePhoneNumberRequestItemList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: UpdatePhoneNumberRequestItem, name: "member")
    UpdatePhoneNumberResponse.add_member(:phone_number, ::Smithy::Schema::Shapes::MemberShape.new(target: PhoneNumber, name: "PhoneNumber"))
    UpdatePhoneNumberResponse.type = Types::UpdatePhoneNumberResponse
    UpdatePhoneNumberSettingsRequest.add_member(:calling_name, ::Smithy::Schema::Shapes::MemberShape.new(target: CallingName, name: "CallingName", traits: {"smithy.api#required" => {}}))
    UpdatePhoneNumberSettingsRequest.type = Types::UpdatePhoneNumberSettingsRequest
    UpdateRoomMembershipRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "AccountId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateRoomMembershipRequest.add_member(:room_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "RoomId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateRoomMembershipRequest.add_member(:member_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "MemberId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateRoomMembershipRequest.add_member(:role, ::Smithy::Schema::Shapes::MemberShape.new(target: RoomMembershipRole, name: "Role"))
    UpdateRoomMembershipRequest.type = Types::UpdateRoomMembershipRequest
    UpdateRoomMembershipResponse.add_member(:room_membership, ::Smithy::Schema::Shapes::MemberShape.new(target: RoomMembership, name: "RoomMembership"))
    UpdateRoomMembershipResponse.type = Types::UpdateRoomMembershipResponse
    UpdateRoomRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "AccountId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateRoomRequest.add_member(:room_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "RoomId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateRoomRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "Name"))
    UpdateRoomRequest.type = Types::UpdateRoomRequest
    UpdateRoomResponse.add_member(:room, ::Smithy::Schema::Shapes::MemberShape.new(target: Room, name: "Room"))
    UpdateRoomResponse.type = Types::UpdateRoomResponse
    UpdateUserRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "AccountId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateUserRequest.add_member(:user_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "UserId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateUserRequest.add_member(:license_type, ::Smithy::Schema::Shapes::MemberShape.new(target: License, name: "LicenseType"))
    UpdateUserRequest.add_member(:user_type, ::Smithy::Schema::Shapes::MemberShape.new(target: UserType, name: "UserType"))
    UpdateUserRequest.add_member(:alexa_for_business_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: AlexaForBusinessMetadata, name: "AlexaForBusinessMetadata"))
    UpdateUserRequest.type = Types::UpdateUserRequest
    UpdateUserRequestItem.add_member(:user_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "UserId", traits: {"smithy.api#required" => {}}))
    UpdateUserRequestItem.add_member(:license_type, ::Smithy::Schema::Shapes::MemberShape.new(target: License, name: "LicenseType"))
    UpdateUserRequestItem.add_member(:user_type, ::Smithy::Schema::Shapes::MemberShape.new(target: UserType, name: "UserType"))
    UpdateUserRequestItem.add_member(:alexa_for_business_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: AlexaForBusinessMetadata, name: "AlexaForBusinessMetadata"))
    UpdateUserRequestItem.type = Types::UpdateUserRequestItem
    UpdateUserRequestItemList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateUserRequestItem, name: "member")
    UpdateUserResponse.add_member(:user, ::Smithy::Schema::Shapes::MemberShape.new(target: User, name: "User"))
    UpdateUserResponse.type = Types::UpdateUserResponse
    UpdateUserSettingsRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AccountId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateUserSettingsRequest.add_member(:user_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "UserId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateUserSettingsRequest.add_member(:user_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: UserSettings, name: "UserSettings", traits: {"smithy.api#required" => {}}))
    UpdateUserSettingsRequest.type = Types::UpdateUserSettingsRequest
    User.add_member(:user_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "UserId", traits: {"smithy.api#required" => {}}))
    User.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AccountId"))
    User.add_member(:primary_email, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailAddress, name: "PrimaryEmail"))
    User.add_member(:primary_provisioned_number, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "PrimaryProvisionedNumber"))
    User.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "DisplayName"))
    User.add_member(:license_type, ::Smithy::Schema::Shapes::MemberShape.new(target: License, name: "LicenseType"))
    User.add_member(:user_type, ::Smithy::Schema::Shapes::MemberShape.new(target: UserType, name: "UserType"))
    User.add_member(:user_registration_status, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistrationStatus, name: "UserRegistrationStatus"))
    User.add_member(:user_invitation_status, ::Smithy::Schema::Shapes::MemberShape.new(target: InviteStatus, name: "UserInvitationStatus"))
    User.add_member(:registered_on, ::Smithy::Schema::Shapes::MemberShape.new(target: Iso8601Timestamp, name: "RegisteredOn"))
    User.add_member(:invited_on, ::Smithy::Schema::Shapes::MemberShape.new(target: Iso8601Timestamp, name: "InvitedOn"))
    User.add_member(:alexa_for_business_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: AlexaForBusinessMetadata, name: "AlexaForBusinessMetadata"))
    User.add_member(:personal_pin, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "PersonalPIN"))
    User.type = Types::User
    UserEmailList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: EmailAddress, name: "member")
    UserError.add_member(:user_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "UserId"))
    UserError.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, name: "ErrorCode"))
    UserError.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ErrorMessage"))
    UserError.type = Types::UserError
    UserErrorList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: UserError, name: "member")
    UserIdList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "member")
    UserList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: User, name: "member")
    UserSettings.add_member(:telephony, ::Smithy::Schema::Shapes::MemberShape.new(target: TelephonySettings, name: "Telephony", traits: {"smithy.api#required" => {}}))
    UserSettings.type = Types::UserSettings
    UserType.add_member(:private_user, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PrivateUser", traits: {"smithy.api#enumValue" => "PrivateUser"}))
    UserType.add_member(:shared_device, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SharedDevice", traits: {"smithy.api#enumValue" => "SharedDevice"}))
    VoiceConnectorSettings.add_member(:cdr_bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CdrBucket"))
    VoiceConnectorSettings.type = Types::VoiceConnectorSettings

    UCBuzzConsoleService = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.chime#UCBuzzConsoleService"
      service.name = "UCBuzzConsoleService"
      service.version = "2018-05-01"
      service.traits = {"aws.api#service" => {"sdkId" => "Chime", "arnNamespace" => "chime", "cloudFormationName" => "Chime", "cloudTrailEventSource" => "chime.amazonaws.com", "endpointPrefix" => "chime"}, "aws.auth#sigv4" => {"name" => "chime"}, "aws.protocols#restJson1" => {}, "smithy.api#deprecated" => {"message" => "This namespace has been deprecated"}, "smithy.api#title" => "Amazon Chime"}
      service.add_operation(:associate_phone_number_with_user, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chime#AssociatePhoneNumberWithUser"
        operation.name = "AssociatePhoneNumberWithUser"
        operation.input = AssociatePhoneNumberWithUserRequest
        operation.output = AssociatePhoneNumberWithUserResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << NotFoundException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/accounts/{AccountId}/users/{UserId}?operation=associate-phone-number", "code" => 200}}
      end)
      service.add_operation(:associate_signin_delegate_groups_with_account, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chime#AssociateSigninDelegateGroupsWithAccount"
        operation.name = "AssociateSigninDelegateGroupsWithAccount"
        operation.input = AssociateSigninDelegateGroupsWithAccountRequest
        operation.output = AssociateSigninDelegateGroupsWithAccountResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << NotFoundException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/accounts/{AccountId}?operation=associate-signin-delegate-groups", "code" => 200}}
      end)
      service.add_operation(:batch_create_room_membership, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chime#BatchCreateRoomMembership"
        operation.name = "BatchCreateRoomMembership"
        operation.input = BatchCreateRoomMembershipRequest
        operation.output = BatchCreateRoomMembershipResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << NotFoundException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/accounts/{AccountId}/rooms/{RoomId}/memberships?operation=batch-create", "code" => 201}}
      end)
      service.add_operation(:batch_delete_phone_number, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chime#BatchDeletePhoneNumber"
        operation.name = "BatchDeletePhoneNumber"
        operation.input = BatchDeletePhoneNumberRequest
        operation.output = BatchDeletePhoneNumberResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << NotFoundException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/phone-numbers?operation=batch-delete", "code" => 200}}
      end)
      service.add_operation(:batch_suspend_user, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chime#BatchSuspendUser"
        operation.name = "BatchSuspendUser"
        operation.input = BatchSuspendUserRequest
        operation.output = BatchSuspendUserResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << NotFoundException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/accounts/{AccountId}/users?operation=suspend", "code" => 200}}
      end)
      service.add_operation(:batch_unsuspend_user, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chime#BatchUnsuspendUser"
        operation.name = "BatchUnsuspendUser"
        operation.input = BatchUnsuspendUserRequest
        operation.output = BatchUnsuspendUserResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << NotFoundException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/accounts/{AccountId}/users?operation=unsuspend", "code" => 200}}
      end)
      service.add_operation(:batch_update_phone_number, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chime#BatchUpdatePhoneNumber"
        operation.name = "BatchUpdatePhoneNumber"
        operation.input = BatchUpdatePhoneNumberRequest
        operation.output = BatchUpdatePhoneNumberResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << NotFoundException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/phone-numbers?operation=batch-update", "code" => 200}}
      end)
      service.add_operation(:batch_update_user, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chime#BatchUpdateUser"
        operation.name = "BatchUpdateUser"
        operation.input = BatchUpdateUserRequest
        operation.output = BatchUpdateUserResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << NotFoundException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/accounts/{AccountId}/users", "code" => 200}}
      end)
      service.add_operation(:create_account, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chime#CreateAccount"
        operation.name = "CreateAccount"
        operation.input = CreateAccountRequest
        operation.output = CreateAccountResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << NotFoundException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/accounts", "code" => 201}}
      end)
      service.add_operation(:create_bot, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chime#CreateBot"
        operation.name = "CreateBot"
        operation.input = CreateBotRequest
        operation.output = CreateBotResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << NotFoundException
        operation.errors << ResourceLimitExceededException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/accounts/{AccountId}/bots", "code" => 201}}
      end)
      service.add_operation(:create_meeting_dial_out, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chime#CreateMeetingDialOut"
        operation.name = "CreateMeetingDialOut"
        operation.input = CreateMeetingDialOutRequest
        operation.output = CreateMeetingDialOutResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << ResourceLimitExceededException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/meetings/{MeetingId}/dial-outs", "code" => 201}}
      end)
      service.add_operation(:create_phone_number_order, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chime#CreatePhoneNumberOrder"
        operation.name = "CreatePhoneNumberOrder"
        operation.input = CreatePhoneNumberOrderRequest
        operation.output = CreatePhoneNumberOrderResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << ResourceLimitExceededException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/phone-number-orders", "code" => 201}}
      end)
      service.add_operation(:create_room, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chime#CreateRoom"
        operation.name = "CreateRoom"
        operation.input = CreateRoomRequest
        operation.output = CreateRoomResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << NotFoundException
        operation.errors << ResourceLimitExceededException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/accounts/{AccountId}/rooms", "code" => 201}}
      end)
      service.add_operation(:create_room_membership, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chime#CreateRoomMembership"
        operation.name = "CreateRoomMembership"
        operation.input = CreateRoomMembershipRequest
        operation.output = CreateRoomMembershipResponse
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << NotFoundException
        operation.errors << ResourceLimitExceededException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/accounts/{AccountId}/rooms/{RoomId}/memberships", "code" => 201}}
      end)
      service.add_operation(:create_user, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chime#CreateUser"
        operation.name = "CreateUser"
        operation.input = CreateUserRequest
        operation.output = CreateUserResponse
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << NotFoundException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/accounts/{AccountId}/users?operation=create", "code" => 201}}
      end)
      service.add_operation(:delete_account, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chime#DeleteAccount"
        operation.name = "DeleteAccount"
        operation.input = DeleteAccountRequest
        operation.output = DeleteAccountResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << NotFoundException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.errors << UnprocessableEntityException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/accounts/{AccountId}", "code" => 204}}
      end)
      service.add_operation(:delete_events_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chime#DeleteEventsConfiguration"
        operation.name = "DeleteEventsConfiguration"
        operation.input = DeleteEventsConfigurationRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << ResourceLimitExceededException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/accounts/{AccountId}/bots/{BotId}/events-configuration", "code" => 204}}
      end)
      service.add_operation(:delete_phone_number, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chime#DeletePhoneNumber"
        operation.name = "DeletePhoneNumber"
        operation.input = DeletePhoneNumberRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << NotFoundException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/phone-numbers/{PhoneNumberId}", "code" => 204}}
      end)
      service.add_operation(:delete_room, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chime#DeleteRoom"
        operation.name = "DeleteRoom"
        operation.input = DeleteRoomRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << NotFoundException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/accounts/{AccountId}/rooms/{RoomId}", "code" => 204}}
      end)
      service.add_operation(:delete_room_membership, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chime#DeleteRoomMembership"
        operation.name = "DeleteRoomMembership"
        operation.input = DeleteRoomMembershipRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << NotFoundException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/accounts/{AccountId}/rooms/{RoomId}/memberships/{MemberId}", "code" => 204}}
      end)
      service.add_operation(:disassociate_phone_number_from_user, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chime#DisassociatePhoneNumberFromUser"
        operation.name = "DisassociatePhoneNumberFromUser"
        operation.input = DisassociatePhoneNumberFromUserRequest
        operation.output = DisassociatePhoneNumberFromUserResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << NotFoundException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/accounts/{AccountId}/users/{UserId}?operation=disassociate-phone-number", "code" => 200}}
      end)
      service.add_operation(:disassociate_signin_delegate_groups_from_account, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chime#DisassociateSigninDelegateGroupsFromAccount"
        operation.name = "DisassociateSigninDelegateGroupsFromAccount"
        operation.input = DisassociateSigninDelegateGroupsFromAccountRequest
        operation.output = DisassociateSigninDelegateGroupsFromAccountResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << NotFoundException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/accounts/{AccountId}?operation=disassociate-signin-delegate-groups", "code" => 200}}
      end)
      service.add_operation(:get_account, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chime#GetAccount"
        operation.name = "GetAccount"
        operation.input = GetAccountRequest
        operation.output = GetAccountResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << NotFoundException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/accounts/{AccountId}", "code" => 200}}
      end)
      service.add_operation(:get_account_settings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chime#GetAccountSettings"
        operation.name = "GetAccountSettings"
        operation.input = GetAccountSettingsRequest
        operation.output = GetAccountSettingsResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << NotFoundException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/accounts/{AccountId}/settings", "code" => 200}}
      end)
      service.add_operation(:get_bot, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chime#GetBot"
        operation.name = "GetBot"
        operation.input = GetBotRequest
        operation.output = GetBotResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << NotFoundException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/accounts/{AccountId}/bots/{BotId}", "code" => 200}}
      end)
      service.add_operation(:get_events_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chime#GetEventsConfiguration"
        operation.name = "GetEventsConfiguration"
        operation.input = GetEventsConfigurationRequest
        operation.output = GetEventsConfigurationResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << NotFoundException
        operation.errors << ResourceLimitExceededException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/accounts/{AccountId}/bots/{BotId}/events-configuration", "code" => 200}}
      end)
      service.add_operation(:get_global_settings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chime#GetGlobalSettings"
        operation.name = "GetGlobalSettings"
        operation.input = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.output = GetGlobalSettingsResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/settings", "code" => 200}}
      end)
      service.add_operation(:get_phone_number, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chime#GetPhoneNumber"
        operation.name = "GetPhoneNumber"
        operation.input = GetPhoneNumberRequest
        operation.output = GetPhoneNumberResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << NotFoundException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/phone-numbers/{PhoneNumberId}", "code" => 200}}
      end)
      service.add_operation(:get_phone_number_order, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chime#GetPhoneNumberOrder"
        operation.name = "GetPhoneNumberOrder"
        operation.input = GetPhoneNumberOrderRequest
        operation.output = GetPhoneNumberOrderResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << NotFoundException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/phone-number-orders/{PhoneNumberOrderId}", "code" => 200}}
      end)
      service.add_operation(:get_phone_number_settings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chime#GetPhoneNumberSettings"
        operation.name = "GetPhoneNumberSettings"
        operation.input = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.output = GetPhoneNumberSettingsResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/settings/phone-number", "code" => 200}}
      end)
      service.add_operation(:get_retention_settings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chime#GetRetentionSettings"
        operation.name = "GetRetentionSettings"
        operation.input = GetRetentionSettingsRequest
        operation.output = GetRetentionSettingsResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << NotFoundException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/accounts/{AccountId}/retention-settings", "code" => 200}}
      end)
      service.add_operation(:get_room, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chime#GetRoom"
        operation.name = "GetRoom"
        operation.input = GetRoomRequest
        operation.output = GetRoomResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << NotFoundException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/accounts/{AccountId}/rooms/{RoomId}", "code" => 200}}
      end)
      service.add_operation(:get_user, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chime#GetUser"
        operation.name = "GetUser"
        operation.input = GetUserRequest
        operation.output = GetUserResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << NotFoundException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/accounts/{AccountId}/users/{UserId}", "code" => 200}}
      end)
      service.add_operation(:get_user_settings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chime#GetUserSettings"
        operation.name = "GetUserSettings"
        operation.input = GetUserSettingsRequest
        operation.output = GetUserSettingsResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << NotFoundException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/accounts/{AccountId}/users/{UserId}/settings", "code" => 200}}
      end)
      service.add_operation(:invite_users, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chime#InviteUsers"
        operation.name = "InviteUsers"
        operation.input = InviteUsersRequest
        operation.output = InviteUsersResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << NotFoundException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/accounts/{AccountId}/users?operation=add", "code" => 201}}
      end)
      service.add_operation(:list_accounts, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chime#ListAccounts"
        operation.name = "ListAccounts"
        operation.input = ListAccountsRequest
        operation.output = ListAccountsResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << NotFoundException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/accounts", "code" => 200}}
        operation[:paginator] = Paginators::ListAccounts.new
      end)
      service.add_operation(:list_bots, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chime#ListBots"
        operation.name = "ListBots"
        operation.input = ListBotsRequest
        operation.output = ListBotsResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << NotFoundException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/accounts/{AccountId}/bots", "code" => 200}}
        operation[:paginator] = Paginators::ListBots.new
      end)
      service.add_operation(:list_phone_number_orders, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chime#ListPhoneNumberOrders"
        operation.name = "ListPhoneNumberOrders"
        operation.input = ListPhoneNumberOrdersRequest
        operation.output = ListPhoneNumberOrdersResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/phone-number-orders", "code" => 200}}
        operation[:paginator] = Paginators::ListPhoneNumberOrders.new
      end)
      service.add_operation(:list_phone_numbers, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chime#ListPhoneNumbers"
        operation.name = "ListPhoneNumbers"
        operation.input = ListPhoneNumbersRequest
        operation.output = ListPhoneNumbersResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << NotFoundException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/phone-numbers", "code" => 200}}
        operation[:paginator] = Paginators::ListPhoneNumbers.new
      end)
      service.add_operation(:list_room_memberships, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chime#ListRoomMemberships"
        operation.name = "ListRoomMemberships"
        operation.input = ListRoomMembershipsRequest
        operation.output = ListRoomMembershipsResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << NotFoundException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/accounts/{AccountId}/rooms/{RoomId}/memberships", "code" => 200}}
        operation[:paginator] = Paginators::ListRoomMemberships.new
      end)
      service.add_operation(:list_rooms, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chime#ListRooms"
        operation.name = "ListRooms"
        operation.input = ListRoomsRequest
        operation.output = ListRoomsResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << NotFoundException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/accounts/{AccountId}/rooms", "code" => 200}}
        operation[:paginator] = Paginators::ListRooms.new
      end)
      service.add_operation(:list_supported_phone_number_countries, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chime#ListSupportedPhoneNumberCountries"
        operation.name = "ListSupportedPhoneNumberCountries"
        operation.input = ListSupportedPhoneNumberCountriesRequest
        operation.output = ListSupportedPhoneNumberCountriesResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/phone-number-countries", "code" => 200}}
      end)
      service.add_operation(:list_users, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chime#ListUsers"
        operation.name = "ListUsers"
        operation.input = ListUsersRequest
        operation.output = ListUsersResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << NotFoundException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/accounts/{AccountId}/users", "code" => 200}}
        operation[:paginator] = Paginators::ListUsers.new
      end)
      service.add_operation(:logout_user, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chime#LogoutUser"
        operation.name = "LogoutUser"
        operation.input = LogoutUserRequest
        operation.output = LogoutUserResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << NotFoundException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/accounts/{AccountId}/users/{UserId}?operation=logout", "code" => 204}}
      end)
      service.add_operation(:put_events_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chime#PutEventsConfiguration"
        operation.name = "PutEventsConfiguration"
        operation.input = PutEventsConfigurationRequest
        operation.output = PutEventsConfigurationResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << NotFoundException
        operation.errors << ResourceLimitExceededException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/accounts/{AccountId}/bots/{BotId}/events-configuration", "code" => 201}}
      end)
      service.add_operation(:put_retention_settings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chime#PutRetentionSettings"
        operation.name = "PutRetentionSettings"
        operation.input = PutRetentionSettingsRequest
        operation.output = PutRetentionSettingsResponse
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << NotFoundException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/accounts/{AccountId}/retention-settings", "code" => 204}}
      end)
      service.add_operation(:redact_conversation_message, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chime#RedactConversationMessage"
        operation.name = "RedactConversationMessage"
        operation.input = RedactConversationMessageRequest
        operation.output = RedactConversationMessageResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << NotFoundException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/accounts/{AccountId}/conversations/{ConversationId}/messages/{MessageId}?operation=redact", "code" => 200}}
      end)
      service.add_operation(:redact_room_message, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chime#RedactRoomMessage"
        operation.name = "RedactRoomMessage"
        operation.input = RedactRoomMessageRequest
        operation.output = RedactRoomMessageResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << NotFoundException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/accounts/{AccountId}/rooms/{RoomId}/messages/{MessageId}?operation=redact", "code" => 200}}
      end)
      service.add_operation(:regenerate_security_token, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chime#RegenerateSecurityToken"
        operation.name = "RegenerateSecurityToken"
        operation.input = RegenerateSecurityTokenRequest
        operation.output = RegenerateSecurityTokenResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << NotFoundException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/accounts/{AccountId}/bots/{BotId}?operation=regenerate-security-token", "code" => 200}}
      end)
      service.add_operation(:reset_personal_pin, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chime#ResetPersonalPIN"
        operation.name = "ResetPersonalPIN"
        operation.input = ResetPersonalPINRequest
        operation.output = ResetPersonalPINResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << NotFoundException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/accounts/{AccountId}/users/{UserId}?operation=reset-personal-pin", "code" => 200}}
      end)
      service.add_operation(:restore_phone_number, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chime#RestorePhoneNumber"
        operation.name = "RestorePhoneNumber"
        operation.input = RestorePhoneNumberRequest
        operation.output = RestorePhoneNumberResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << NotFoundException
        operation.errors << ResourceLimitExceededException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/phone-numbers/{PhoneNumberId}?operation=restore", "code" => 200}}
      end)
      service.add_operation(:search_available_phone_numbers, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chime#SearchAvailablePhoneNumbers"
        operation.name = "SearchAvailablePhoneNumbers"
        operation.input = SearchAvailablePhoneNumbersRequest
        operation.output = SearchAvailablePhoneNumbersResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/search?type=phone-numbers", "code" => 200}}
        operation[:paginator] = Paginators::SearchAvailablePhoneNumbers.new
      end)
      service.add_operation(:update_account, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chime#UpdateAccount"
        operation.name = "UpdateAccount"
        operation.input = UpdateAccountRequest
        operation.output = UpdateAccountResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << NotFoundException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/accounts/{AccountId}", "code" => 200}}
      end)
      service.add_operation(:update_account_settings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chime#UpdateAccountSettings"
        operation.name = "UpdateAccountSettings"
        operation.input = UpdateAccountSettingsRequest
        operation.output = UpdateAccountSettingsResponse
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << NotFoundException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/accounts/{AccountId}/settings", "code" => 204}}
      end)
      service.add_operation(:update_bot, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chime#UpdateBot"
        operation.name = "UpdateBot"
        operation.input = UpdateBotRequest
        operation.output = UpdateBotResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << NotFoundException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/accounts/{AccountId}/bots/{BotId}", "code" => 200}}
      end)
      service.add_operation(:update_global_settings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chime#UpdateGlobalSettings"
        operation.name = "UpdateGlobalSettings"
        operation.input = UpdateGlobalSettingsRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/settings", "code" => 204}}
      end)
      service.add_operation(:update_phone_number, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chime#UpdatePhoneNumber"
        operation.name = "UpdatePhoneNumber"
        operation.input = UpdatePhoneNumberRequest
        operation.output = UpdatePhoneNumberResponse
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << NotFoundException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/phone-numbers/{PhoneNumberId}", "code" => 200}}
      end)
      service.add_operation(:update_phone_number_settings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chime#UpdatePhoneNumberSettings"
        operation.name = "UpdatePhoneNumberSettings"
        operation.input = UpdatePhoneNumberSettingsRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/settings/phone-number", "code" => 204}}
      end)
      service.add_operation(:update_room, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chime#UpdateRoom"
        operation.name = "UpdateRoom"
        operation.input = UpdateRoomRequest
        operation.output = UpdateRoomResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << NotFoundException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/accounts/{AccountId}/rooms/{RoomId}", "code" => 200}}
      end)
      service.add_operation(:update_room_membership, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chime#UpdateRoomMembership"
        operation.name = "UpdateRoomMembership"
        operation.input = UpdateRoomMembershipRequest
        operation.output = UpdateRoomMembershipResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << NotFoundException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/accounts/{AccountId}/rooms/{RoomId}/memberships/{MemberId}", "code" => 200}}
      end)
      service.add_operation(:update_user, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chime#UpdateUser"
        operation.name = "UpdateUser"
        operation.input = UpdateUserRequest
        operation.output = UpdateUserResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << NotFoundException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/accounts/{AccountId}/users/{UserId}", "code" => 200}}
      end)
      service.add_operation(:update_user_settings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chime#UpdateUserSettings"
        operation.name = "UpdateUserSettings"
        operation.input = UpdateUserSettingsRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << NotFoundException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/accounts/{AccountId}/users/{UserId}/settings", "code" => 204}}
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
