# frozen_string_literal: true

# This is generated code!

module Aws::Chime
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chime#AccessDeniedException', name: 'AccessDeniedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    Account = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chime#Account', name: 'Account')
    AccountList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.chime#AccountList', name: 'AccountList')
    AccountName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.chime#AccountName', name: 'AccountName', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "\\S"})
    AccountSettings = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chime#AccountSettings', name: 'AccountSettings')
    AccountStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.chime#AccountStatus', name: 'AccountStatus')
    AccountType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.chime#AccountType', name: 'AccountType')
    AlexaForBusinessMetadata = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chime#AlexaForBusinessMetadata', name: 'AlexaForBusinessMetadata')
    Alpha2CountryCode = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.chime#Alpha2CountryCode', name: 'Alpha2CountryCode', traits: {"smithy.api#pattern" => "^[A-Z]{2}$"})
    AssociatePhoneNumberWithUserRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chime#AssociatePhoneNumberWithUserRequest', name: 'AssociatePhoneNumberWithUserRequest')
    AssociatePhoneNumberWithUserResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chime#AssociatePhoneNumberWithUserResponse', name: 'AssociatePhoneNumberWithUserResponse')
    AssociateSigninDelegateGroupsWithAccountRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chime#AssociateSigninDelegateGroupsWithAccountRequest', name: 'AssociateSigninDelegateGroupsWithAccountRequest')
    AssociateSigninDelegateGroupsWithAccountResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chime#AssociateSigninDelegateGroupsWithAccountResponse', name: 'AssociateSigninDelegateGroupsWithAccountResponse')
    BadRequestException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chime#BadRequestException', name: 'BadRequestException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    BatchCreateRoomMembershipRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chime#BatchCreateRoomMembershipRequest', name: 'BatchCreateRoomMembershipRequest')
    BatchCreateRoomMembershipResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chime#BatchCreateRoomMembershipResponse', name: 'BatchCreateRoomMembershipResponse')
    BatchDeletePhoneNumberRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chime#BatchDeletePhoneNumberRequest', name: 'BatchDeletePhoneNumberRequest')
    BatchDeletePhoneNumberResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chime#BatchDeletePhoneNumberResponse', name: 'BatchDeletePhoneNumberResponse')
    BatchSuspendUserRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chime#BatchSuspendUserRequest', name: 'BatchSuspendUserRequest')
    BatchSuspendUserResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chime#BatchSuspendUserResponse', name: 'BatchSuspendUserResponse')
    BatchUnsuspendUserRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chime#BatchUnsuspendUserRequest', name: 'BatchUnsuspendUserRequest')
    BatchUnsuspendUserResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chime#BatchUnsuspendUserResponse', name: 'BatchUnsuspendUserResponse')
    BatchUpdatePhoneNumberRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chime#BatchUpdatePhoneNumberRequest', name: 'BatchUpdatePhoneNumberRequest')
    BatchUpdatePhoneNumberResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chime#BatchUpdatePhoneNumberResponse', name: 'BatchUpdatePhoneNumberResponse')
    BatchUpdateUserRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chime#BatchUpdateUserRequest', name: 'BatchUpdateUserRequest')
    BatchUpdateUserResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chime#BatchUpdateUserResponse', name: 'BatchUpdateUserResponse')
    Boolean = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.chime#Boolean', name: 'Boolean')
    Bot = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chime#Bot', name: 'Bot')
    BotList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.chime#BotList', name: 'BotList')
    BotType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.chime#BotType', name: 'BotType')
    BusinessCallingSettings = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chime#BusinessCallingSettings', name: 'BusinessCallingSettings')
    CallingName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.chime#CallingName', name: 'CallingName', traits: {"smithy.api#pattern" => "^$|^[a-zA-Z0-9 ]{2,15}$", "smithy.api#sensitive" => {}})
    CallingNameStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.chime#CallingNameStatus', name: 'CallingNameStatus')
    ClientRequestToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.chime#ClientRequestToken', name: 'ClientRequestToken', traits: {"smithy.api#length" => {"min" => 2, "max" => 64}, "smithy.api#pattern" => "^[-_a-zA-Z0-9]*$", "smithy.api#sensitive" => {}})
    ConflictException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chime#ConflictException', name: 'ConflictException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ConversationRetentionSettings = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chime#ConversationRetentionSettings', name: 'ConversationRetentionSettings')
    CreateAccountRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chime#CreateAccountRequest', name: 'CreateAccountRequest')
    CreateAccountResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chime#CreateAccountResponse', name: 'CreateAccountResponse')
    CreateBotRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chime#CreateBotRequest', name: 'CreateBotRequest')
    CreateBotResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chime#CreateBotResponse', name: 'CreateBotResponse')
    CreateMeetingDialOutRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chime#CreateMeetingDialOutRequest', name: 'CreateMeetingDialOutRequest')
    CreateMeetingDialOutResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chime#CreateMeetingDialOutResponse', name: 'CreateMeetingDialOutResponse')
    CreatePhoneNumberOrderRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chime#CreatePhoneNumberOrderRequest', name: 'CreatePhoneNumberOrderRequest')
    CreatePhoneNumberOrderResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chime#CreatePhoneNumberOrderResponse', name: 'CreatePhoneNumberOrderResponse')
    CreateRoomMembershipRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chime#CreateRoomMembershipRequest', name: 'CreateRoomMembershipRequest')
    CreateRoomMembershipResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chime#CreateRoomMembershipResponse', name: 'CreateRoomMembershipResponse')
    CreateRoomRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chime#CreateRoomRequest', name: 'CreateRoomRequest')
    CreateRoomResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chime#CreateRoomResponse', name: 'CreateRoomResponse')
    CreateUserRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chime#CreateUserRequest', name: 'CreateUserRequest')
    CreateUserResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chime#CreateUserResponse', name: 'CreateUserResponse')
    DeleteAccountRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chime#DeleteAccountRequest', name: 'DeleteAccountRequest')
    DeleteAccountResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chime#DeleteAccountResponse', name: 'DeleteAccountResponse')
    DeleteEventsConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chime#DeleteEventsConfigurationRequest', name: 'DeleteEventsConfigurationRequest')
    DeletePhoneNumberRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chime#DeletePhoneNumberRequest', name: 'DeletePhoneNumberRequest')
    DeleteRoomMembershipRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chime#DeleteRoomMembershipRequest', name: 'DeleteRoomMembershipRequest')
    DeleteRoomRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chime#DeleteRoomRequest', name: 'DeleteRoomRequest')
    DisassociatePhoneNumberFromUserRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chime#DisassociatePhoneNumberFromUserRequest', name: 'DisassociatePhoneNumberFromUserRequest')
    DisassociatePhoneNumberFromUserResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chime#DisassociatePhoneNumberFromUserResponse', name: 'DisassociatePhoneNumberFromUserResponse')
    DisassociateSigninDelegateGroupsFromAccountRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chime#DisassociateSigninDelegateGroupsFromAccountRequest', name: 'DisassociateSigninDelegateGroupsFromAccountRequest')
    DisassociateSigninDelegateGroupsFromAccountResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chime#DisassociateSigninDelegateGroupsFromAccountResponse', name: 'DisassociateSigninDelegateGroupsFromAccountResponse')
    E164PhoneNumber = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.chime#E164PhoneNumber', name: 'E164PhoneNumber', traits: {"smithy.api#pattern" => "^\\+?[1-9]\\d{1,14}$", "smithy.api#sensitive" => {}})
    E164PhoneNumberList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.chime#E164PhoneNumberList', name: 'E164PhoneNumberList')
    EmailAddress = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.chime#EmailAddress', name: 'EmailAddress', traits: {"smithy.api#pattern" => "^.+@.+\\..+$", "smithy.api#sensitive" => {}})
    EmailStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.chime#EmailStatus', name: 'EmailStatus')
    ErrorCode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.chime#ErrorCode', name: 'ErrorCode')
    EventsConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chime#EventsConfiguration', name: 'EventsConfiguration')
    ForbiddenException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chime#ForbiddenException', name: 'ForbiddenException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    GetAccountRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chime#GetAccountRequest', name: 'GetAccountRequest')
    GetAccountResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chime#GetAccountResponse', name: 'GetAccountResponse')
    GetAccountSettingsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chime#GetAccountSettingsRequest', name: 'GetAccountSettingsRequest')
    GetAccountSettingsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chime#GetAccountSettingsResponse', name: 'GetAccountSettingsResponse')
    GetBotRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chime#GetBotRequest', name: 'GetBotRequest')
    GetBotResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chime#GetBotResponse', name: 'GetBotResponse')
    GetEventsConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chime#GetEventsConfigurationRequest', name: 'GetEventsConfigurationRequest')
    GetEventsConfigurationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chime#GetEventsConfigurationResponse', name: 'GetEventsConfigurationResponse')
    GetGlobalSettingsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chime#GetGlobalSettingsResponse', name: 'GetGlobalSettingsResponse')
    GetPhoneNumberOrderRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chime#GetPhoneNumberOrderRequest', name: 'GetPhoneNumberOrderRequest')
    GetPhoneNumberOrderResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chime#GetPhoneNumberOrderResponse', name: 'GetPhoneNumberOrderResponse')
    GetPhoneNumberRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chime#GetPhoneNumberRequest', name: 'GetPhoneNumberRequest')
    GetPhoneNumberResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chime#GetPhoneNumberResponse', name: 'GetPhoneNumberResponse')
    GetPhoneNumberSettingsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chime#GetPhoneNumberSettingsResponse', name: 'GetPhoneNumberSettingsResponse')
    GetRetentionSettingsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chime#GetRetentionSettingsRequest', name: 'GetRetentionSettingsRequest')
    GetRetentionSettingsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chime#GetRetentionSettingsResponse', name: 'GetRetentionSettingsResponse')
    GetRoomRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chime#GetRoomRequest', name: 'GetRoomRequest')
    GetRoomResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chime#GetRoomResponse', name: 'GetRoomResponse')
    GetUserRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chime#GetUserRequest', name: 'GetUserRequest')
    GetUserResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chime#GetUserResponse', name: 'GetUserResponse')
    GetUserSettingsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chime#GetUserSettingsRequest', name: 'GetUserSettingsRequest')
    GetUserSettingsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chime#GetUserSettingsResponse', name: 'GetUserSettingsResponse')
    GuidString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.chime#GuidString', name: 'GuidString', traits: {"smithy.api#pattern" => "^[a-fA-F0-9]{8}(?:-[a-fA-F0-9]{4}){3}-[a-fA-F0-9]{12}$"})
    Invite = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chime#Invite', name: 'Invite')
    InviteList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.chime#InviteList', name: 'InviteList')
    InviteStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.chime#InviteStatus', name: 'InviteStatus')
    InviteUsersRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chime#InviteUsersRequest', name: 'InviteUsersRequest')
    InviteUsersResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chime#InviteUsersResponse', name: 'InviteUsersResponse')
    Iso8601Timestamp = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.chime#Iso8601Timestamp', name: 'Iso8601Timestamp', traits: {"smithy.api#timestampFormat" => "date-time"})
    JoinTokenString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.chime#JoinTokenString', name: 'JoinTokenString', traits: {"smithy.api#length" => {"min" => 2, "max" => 2048}, "smithy.api#pattern" => "^[a-zA-Z0-9+/]+$", "smithy.api#sensitive" => {}})
    License = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.chime#License', name: 'License')
    LicenseList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.chime#LicenseList', name: 'LicenseList')
    ListAccountsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chime#ListAccountsRequest', name: 'ListAccountsRequest')
    ListAccountsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chime#ListAccountsResponse', name: 'ListAccountsResponse')
    ListBotsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chime#ListBotsRequest', name: 'ListBotsRequest')
    ListBotsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chime#ListBotsResponse', name: 'ListBotsResponse')
    ListPhoneNumberOrdersRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chime#ListPhoneNumberOrdersRequest', name: 'ListPhoneNumberOrdersRequest')
    ListPhoneNumberOrdersResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chime#ListPhoneNumberOrdersResponse', name: 'ListPhoneNumberOrdersResponse')
    ListPhoneNumbersRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chime#ListPhoneNumbersRequest', name: 'ListPhoneNumbersRequest')
    ListPhoneNumbersResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chime#ListPhoneNumbersResponse', name: 'ListPhoneNumbersResponse')
    ListRoomMembershipsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chime#ListRoomMembershipsRequest', name: 'ListRoomMembershipsRequest')
    ListRoomMembershipsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chime#ListRoomMembershipsResponse', name: 'ListRoomMembershipsResponse')
    ListRoomsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chime#ListRoomsRequest', name: 'ListRoomsRequest')
    ListRoomsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chime#ListRoomsResponse', name: 'ListRoomsResponse')
    ListSupportedPhoneNumberCountriesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chime#ListSupportedPhoneNumberCountriesRequest', name: 'ListSupportedPhoneNumberCountriesRequest')
    ListSupportedPhoneNumberCountriesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chime#ListSupportedPhoneNumberCountriesResponse', name: 'ListSupportedPhoneNumberCountriesResponse')
    ListUsersRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chime#ListUsersRequest', name: 'ListUsersRequest')
    ListUsersResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chime#ListUsersResponse', name: 'ListUsersResponse')
    LogoutUserRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chime#LogoutUserRequest', name: 'LogoutUserRequest')
    LogoutUserResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chime#LogoutUserResponse', name: 'LogoutUserResponse')
    Member = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chime#Member', name: 'Member')
    MemberError = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chime#MemberError', name: 'MemberError')
    MemberErrorList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.chime#MemberErrorList', name: 'MemberErrorList')
    MemberType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.chime#MemberType', name: 'MemberType')
    MembershipItem = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chime#MembershipItem', name: 'MembershipItem')
    MembershipItemList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.chime#MembershipItemList', name: 'MembershipItemList', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    NonEmptyString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.chime#NonEmptyString', name: 'NonEmptyString', traits: {"smithy.api#pattern" => "\\S"})
    NonEmptyStringList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.chime#NonEmptyStringList', name: 'NonEmptyStringList', traits: {"smithy.api#length" => {"min" => 1}})
    NotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chime#NotFoundException', name: 'NotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    NullableBoolean = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.chime#NullableBoolean', name: 'NullableBoolean')
    OrderedPhoneNumber = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chime#OrderedPhoneNumber', name: 'OrderedPhoneNumber')
    OrderedPhoneNumberList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.chime#OrderedPhoneNumberList', name: 'OrderedPhoneNumberList')
    OrderedPhoneNumberStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.chime#OrderedPhoneNumberStatus', name: 'OrderedPhoneNumberStatus')
    PhoneNumber = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chime#PhoneNumber', name: 'PhoneNumber')
    PhoneNumberAssociation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chime#PhoneNumberAssociation', name: 'PhoneNumberAssociation')
    PhoneNumberAssociationList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.chime#PhoneNumberAssociationList', name: 'PhoneNumberAssociationList')
    PhoneNumberAssociationName = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.chime#PhoneNumberAssociationName', name: 'PhoneNumberAssociationName')
    PhoneNumberCapabilities = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chime#PhoneNumberCapabilities', name: 'PhoneNumberCapabilities')
    PhoneNumberCountriesList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.chime#PhoneNumberCountriesList', name: 'PhoneNumberCountriesList')
    PhoneNumberCountry = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chime#PhoneNumberCountry', name: 'PhoneNumberCountry')
    PhoneNumberError = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chime#PhoneNumberError', name: 'PhoneNumberError')
    PhoneNumberErrorList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.chime#PhoneNumberErrorList', name: 'PhoneNumberErrorList')
    PhoneNumberList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.chime#PhoneNumberList', name: 'PhoneNumberList')
    PhoneNumberMaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.chime#PhoneNumberMaxResults', name: 'PhoneNumberMaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 500}})
    PhoneNumberOrder = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chime#PhoneNumberOrder', name: 'PhoneNumberOrder')
    PhoneNumberOrderList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.chime#PhoneNumberOrderList', name: 'PhoneNumberOrderList')
    PhoneNumberOrderStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.chime#PhoneNumberOrderStatus', name: 'PhoneNumberOrderStatus')
    PhoneNumberProductType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.chime#PhoneNumberProductType', name: 'PhoneNumberProductType')
    PhoneNumberStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.chime#PhoneNumberStatus', name: 'PhoneNumberStatus')
    PhoneNumberType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.chime#PhoneNumberType', name: 'PhoneNumberType')
    PhoneNumberTypeList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.chime#PhoneNumberTypeList', name: 'PhoneNumberTypeList')
    ProfileServiceMaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.chime#ProfileServiceMaxResults', name: 'ProfileServiceMaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 200}})
    PutEventsConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chime#PutEventsConfigurationRequest', name: 'PutEventsConfigurationRequest')
    PutEventsConfigurationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chime#PutEventsConfigurationResponse', name: 'PutEventsConfigurationResponse')
    PutRetentionSettingsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chime#PutRetentionSettingsRequest', name: 'PutRetentionSettingsRequest')
    PutRetentionSettingsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chime#PutRetentionSettingsResponse', name: 'PutRetentionSettingsResponse')
    RedactConversationMessageRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chime#RedactConversationMessageRequest', name: 'RedactConversationMessageRequest')
    RedactConversationMessageResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chime#RedactConversationMessageResponse', name: 'RedactConversationMessageResponse')
    RedactRoomMessageRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chime#RedactRoomMessageRequest', name: 'RedactRoomMessageRequest')
    RedactRoomMessageResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chime#RedactRoomMessageResponse', name: 'RedactRoomMessageResponse')
    RegenerateSecurityTokenRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chime#RegenerateSecurityTokenRequest', name: 'RegenerateSecurityTokenRequest')
    RegenerateSecurityTokenResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chime#RegenerateSecurityTokenResponse', name: 'RegenerateSecurityTokenResponse')
    RegistrationStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.chime#RegistrationStatus', name: 'RegistrationStatus')
    ResetPersonalPINRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chime#ResetPersonalPINRequest', name: 'ResetPersonalPINRequest')
    ResetPersonalPINResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chime#ResetPersonalPINResponse', name: 'ResetPersonalPINResponse')
    ResourceLimitExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chime#ResourceLimitExceededException', name: 'ResourceLimitExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    RestorePhoneNumberRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chime#RestorePhoneNumberRequest', name: 'RestorePhoneNumberRequest')
    RestorePhoneNumberResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chime#RestorePhoneNumberResponse', name: 'RestorePhoneNumberResponse')
    ResultMax = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.chime#ResultMax', name: 'ResultMax', traits: {"smithy.api#range" => {"min" => 1, "max" => 99}})
    RetentionDays = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.chime#RetentionDays', name: 'RetentionDays', traits: {"smithy.api#range" => {"min" => 1, "max" => 5475}})
    RetentionSettings = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chime#RetentionSettings', name: 'RetentionSettings')
    Room = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chime#Room', name: 'Room')
    RoomList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.chime#RoomList', name: 'RoomList')
    RoomMembership = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chime#RoomMembership', name: 'RoomMembership')
    RoomMembershipList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.chime#RoomMembershipList', name: 'RoomMembershipList')
    RoomMembershipRole = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.chime#RoomMembershipRole', name: 'RoomMembershipRole')
    RoomRetentionSettings = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chime#RoomRetentionSettings', name: 'RoomRetentionSettings')
    SearchAvailablePhoneNumbersRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chime#SearchAvailablePhoneNumbersRequest', name: 'SearchAvailablePhoneNumbersRequest')
    SearchAvailablePhoneNumbersResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chime#SearchAvailablePhoneNumbersResponse', name: 'SearchAvailablePhoneNumbersResponse')
    SensitiveString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.chime#SensitiveString', name: 'SensitiveString', traits: {"smithy.api#sensitive" => {}})
    ServiceFailureException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chime#ServiceFailureException', name: 'ServiceFailureException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    ServiceUnavailableException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chime#ServiceUnavailableException', name: 'ServiceUnavailableException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 503})
    SigninDelegateGroup = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chime#SigninDelegateGroup', name: 'SigninDelegateGroup')
    SigninDelegateGroupList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.chime#SigninDelegateGroupList', name: 'SigninDelegateGroupList')
    String = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.chime#String', name: 'String')
    TelephonySettings = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chime#TelephonySettings', name: 'TelephonySettings')
    ThrottledClientException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chime#ThrottledClientException', name: 'ThrottledClientException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    TollFreePrefix = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.chime#TollFreePrefix', name: 'TollFreePrefix', traits: {"smithy.api#length" => {"min" => 3, "max" => 3}, "smithy.api#pattern" => "^8(00|33|44|55|66|77|88)$"})
    UnauthorizedClientException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chime#UnauthorizedClientException', name: 'UnauthorizedClientException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 401})
    UnprocessableEntityException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chime#UnprocessableEntityException', name: 'UnprocessableEntityException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 422})
    UpdateAccountRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chime#UpdateAccountRequest', name: 'UpdateAccountRequest')
    UpdateAccountResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chime#UpdateAccountResponse', name: 'UpdateAccountResponse')
    UpdateAccountSettingsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chime#UpdateAccountSettingsRequest', name: 'UpdateAccountSettingsRequest')
    UpdateAccountSettingsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chime#UpdateAccountSettingsResponse', name: 'UpdateAccountSettingsResponse')
    UpdateBotRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chime#UpdateBotRequest', name: 'UpdateBotRequest')
    UpdateBotResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chime#UpdateBotResponse', name: 'UpdateBotResponse')
    UpdateGlobalSettingsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chime#UpdateGlobalSettingsRequest', name: 'UpdateGlobalSettingsRequest')
    UpdatePhoneNumberRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chime#UpdatePhoneNumberRequest', name: 'UpdatePhoneNumberRequest')
    UpdatePhoneNumberRequestItem = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chime#UpdatePhoneNumberRequestItem', name: 'UpdatePhoneNumberRequestItem')
    UpdatePhoneNumberRequestItemList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.chime#UpdatePhoneNumberRequestItemList', name: 'UpdatePhoneNumberRequestItemList')
    UpdatePhoneNumberResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chime#UpdatePhoneNumberResponse', name: 'UpdatePhoneNumberResponse')
    UpdatePhoneNumberSettingsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chime#UpdatePhoneNumberSettingsRequest', name: 'UpdatePhoneNumberSettingsRequest')
    UpdateRoomMembershipRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chime#UpdateRoomMembershipRequest', name: 'UpdateRoomMembershipRequest')
    UpdateRoomMembershipResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chime#UpdateRoomMembershipResponse', name: 'UpdateRoomMembershipResponse')
    UpdateRoomRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chime#UpdateRoomRequest', name: 'UpdateRoomRequest')
    UpdateRoomResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chime#UpdateRoomResponse', name: 'UpdateRoomResponse')
    UpdateUserRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chime#UpdateUserRequest', name: 'UpdateUserRequest')
    UpdateUserRequestItem = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chime#UpdateUserRequestItem', name: 'UpdateUserRequestItem')
    UpdateUserRequestItemList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.chime#UpdateUserRequestItemList', name: 'UpdateUserRequestItemList', traits: {"smithy.api#length" => {"min" => 0, "max" => 20}})
    UpdateUserResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chime#UpdateUserResponse', name: 'UpdateUserResponse')
    UpdateUserSettingsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chime#UpdateUserSettingsRequest', name: 'UpdateUserSettingsRequest')
    User = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chime#User', name: 'User')
    UserEmailList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.chime#UserEmailList', name: 'UserEmailList', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    UserError = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chime#UserError', name: 'UserError')
    UserErrorList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.chime#UserErrorList', name: 'UserErrorList')
    UserIdList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.chime#UserIdList', name: 'UserIdList', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    UserList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.chime#UserList', name: 'UserList')
    UserSettings = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chime#UserSettings', name: 'UserSettings')
    UserType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.chime#UserType', name: 'UserType')
    VoiceConnectorSettings = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chime#VoiceConnectorSettings', name: 'VoiceConnectorSettings')

    AccessDeniedException.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'Code'))
    AccessDeniedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    AccessDeniedException.type = Types::AccessDeniedException
    Account.add_member(:aws_account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AwsAccountId', traits: {"smithy.api#documentation" => "<p>The AWS account ID.</p>", "smithy.api#required" => {}}))
    Account.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AccountId', traits: {"smithy.api#documentation" => "<p>The Amazon Chime account ID.</p>", "smithy.api#required" => {}}))
    Account.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The Amazon Chime account name.</p>", "smithy.api#required" => {}}))
    Account.add_member(:account_type, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountType, location_name: 'AccountType', traits: {"smithy.api#documentation" => "<p>The Amazon Chime account type. For more information about different account types, see \n    <a href=\"https://docs.aws.amazon.com/chime/latest/ag/manage-chime-account.html\">Managing Your Amazon Chime Accounts</a> in the <i>Amazon Chime Administration\n                Guide</i>.</p>"}))
    Account.add_member(:created_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: 'CreatedTimestamp', traits: {"smithy.api#documentation" => "<p>The Amazon Chime account creation timestamp, in ISO 8601 format.</p>"}))
    Account.add_member(:default_license, Smithy::Schema::Shapes::ShapeRef.new(shape: License, location_name: 'DefaultLicense', traits: {"smithy.api#documentation" => "<p>The default license for the Amazon Chime account.</p>"}))
    Account.add_member(:supported_licenses, Smithy::Schema::Shapes::ShapeRef.new(shape: LicenseList, location_name: 'SupportedLicenses', traits: {"smithy.api#documentation" => "<p>Supported licenses for the Amazon Chime account.</p>"}))
    Account.add_member(:account_status, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountStatus, location_name: 'AccountStatus', traits: {"smithy.api#documentation" => "<p>The status of the account.</p>"}))
    Account.add_member(:signin_delegate_groups, Smithy::Schema::Shapes::ShapeRef.new(shape: SigninDelegateGroupList, location_name: 'SigninDelegateGroups', traits: {"smithy.api#documentation" => "<p>The sign-in delegate groups associated with the account.</p>"}))
    Account.type = Types::Account
    AccountList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Account)
    AccountSettings.add_member(:disable_remote_control, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'DisableRemoteControl', traits: {"smithy.api#documentation" => "<p>Setting that stops or starts remote control of shared screens during meetings.</p>"}))
    AccountSettings.add_member(:enable_dial_out, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'EnableDialOut', traits: {"smithy.api#documentation" => "<p>Setting that allows meeting participants to choose the <b>Call me at a phone number</b> option. For more information, see \n    <a href=\"https://docs.aws.amazon.com/chime/latest/ug/chime-join-meeting.html\">Join a Meeting without the Amazon Chime App</a>.</p>"}))
    AccountSettings.type = Types::AccountSettings
    AccountStatus.add_member(:suspended, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Suspended', traits: {"smithy.api#enumValue" => "Suspended"}))
    AccountStatus.add_member(:active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Active', traits: {"smithy.api#enumValue" => "Active"}))
    AccountType.add_member(:team, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Team', traits: {"smithy.api#enumValue" => "Team"}))
    AccountType.add_member(:enterprise_directory, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EnterpriseDirectory', traits: {"smithy.api#enumValue" => "EnterpriseDirectory"}))
    AccountType.add_member(:enterprise_lwa, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EnterpriseLWA', traits: {"smithy.api#enumValue" => "EnterpriseLWA"}))
    AccountType.add_member(:enterprise_oidc, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EnterpriseOIDC', traits: {"smithy.api#enumValue" => "EnterpriseOIDC"}))
    AlexaForBusinessMetadata.add_member(:is_alexa_for_business_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'IsAlexaForBusinessEnabled', traits: {"smithy.api#documentation" => "<p>Starts or stops Alexa for Business.</p>"}))
    AlexaForBusinessMetadata.add_member(:alexa_for_business_room_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveString, location_name: 'AlexaForBusinessRoomArn', traits: {"smithy.api#documentation" => "<p>The ARN of the room resource.</p>"}))
    AlexaForBusinessMetadata.type = Types::AlexaForBusinessMetadata
    AssociatePhoneNumberWithUserRequest.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AccountId', traits: {"smithy.api#documentation" => "<p>The Amazon Chime account ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AssociatePhoneNumberWithUserRequest.add_member(:user_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'UserId', traits: {"smithy.api#documentation" => "<p>The user ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AssociatePhoneNumberWithUserRequest.add_member(:e164_phone_number, Smithy::Schema::Shapes::ShapeRef.new(shape: E164PhoneNumber, location_name: 'E164PhoneNumber', traits: {"smithy.api#documentation" => "<p>The phone number, in E.164 format.</p>", "smithy.api#required" => {}}))
    AssociatePhoneNumberWithUserRequest.type = Types::AssociatePhoneNumberWithUserRequest
    AssociatePhoneNumberWithUserResponse.type = Types::AssociatePhoneNumberWithUserResponse
    AssociateSigninDelegateGroupsWithAccountRequest.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'AccountId', traits: {"smithy.api#documentation" => "<p>The Amazon Chime account ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AssociateSigninDelegateGroupsWithAccountRequest.add_member(:signin_delegate_groups, Smithy::Schema::Shapes::ShapeRef.new(shape: SigninDelegateGroupList, location_name: 'SigninDelegateGroups', traits: {"smithy.api#documentation" => "<p>The sign-in delegate groups.</p>", "smithy.api#required" => {}}))
    AssociateSigninDelegateGroupsWithAccountRequest.type = Types::AssociateSigninDelegateGroupsWithAccountRequest
    AssociateSigninDelegateGroupsWithAccountResponse.type = Types::AssociateSigninDelegateGroupsWithAccountResponse
    BadRequestException.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'Code'))
    BadRequestException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    BadRequestException.type = Types::BadRequestException
    BatchCreateRoomMembershipRequest.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'AccountId', traits: {"smithy.api#documentation" => "<p>The Amazon Chime account ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    BatchCreateRoomMembershipRequest.add_member(:room_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'RoomId', traits: {"smithy.api#documentation" => "<p>The room ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    BatchCreateRoomMembershipRequest.add_member(:membership_item_list, Smithy::Schema::Shapes::ShapeRef.new(shape: MembershipItemList, location_name: 'MembershipItemList', traits: {"smithy.api#documentation" => "<p>The list of membership items.</p>", "smithy.api#required" => {}}))
    BatchCreateRoomMembershipRequest.type = Types::BatchCreateRoomMembershipRequest
    BatchCreateRoomMembershipResponse.add_member(:errors, Smithy::Schema::Shapes::ShapeRef.new(shape: MemberErrorList, location_name: 'Errors', traits: {"smithy.api#documentation" => "<p>If the action fails for one or more of the member IDs in the request, a list of the member IDs is returned, along with error codes and error messages.</p>"}))
    BatchCreateRoomMembershipResponse.type = Types::BatchCreateRoomMembershipResponse
    BatchDeletePhoneNumberRequest.add_member(:phone_number_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyStringList, location_name: 'PhoneNumberIds', traits: {"smithy.api#documentation" => "<p>List of phone number IDs.</p>", "smithy.api#required" => {}}))
    BatchDeletePhoneNumberRequest.type = Types::BatchDeletePhoneNumberRequest
    BatchDeletePhoneNumberResponse.add_member(:phone_number_errors, Smithy::Schema::Shapes::ShapeRef.new(shape: PhoneNumberErrorList, location_name: 'PhoneNumberErrors', traits: {"smithy.api#documentation" => "<p>If the action fails for one or more of the phone numbers in the request, a list of the phone numbers is returned, along with error codes and error messages.</p>"}))
    BatchDeletePhoneNumberResponse.type = Types::BatchDeletePhoneNumberResponse
    BatchSuspendUserRequest.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'AccountId', traits: {"smithy.api#documentation" => "<p>The Amazon Chime account ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    BatchSuspendUserRequest.add_member(:user_id_list, Smithy::Schema::Shapes::ShapeRef.new(shape: UserIdList, location_name: 'UserIdList', traits: {"smithy.api#documentation" => "<p>The request containing the user IDs to suspend.</p>", "smithy.api#required" => {}}))
    BatchSuspendUserRequest.type = Types::BatchSuspendUserRequest
    BatchSuspendUserResponse.add_member(:user_errors, Smithy::Schema::Shapes::ShapeRef.new(shape: UserErrorList, location_name: 'UserErrors', traits: {"smithy.api#documentation" => "<p>If the <a>BatchSuspendUser</a> action fails for one or more of the user IDs in the\n            request, a list of the user IDs is returned, along with error codes and error messages.</p>"}))
    BatchSuspendUserResponse.type = Types::BatchSuspendUserResponse
    BatchUnsuspendUserRequest.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'AccountId', traits: {"smithy.api#documentation" => "<p>The Amazon Chime account ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    BatchUnsuspendUserRequest.add_member(:user_id_list, Smithy::Schema::Shapes::ShapeRef.new(shape: UserIdList, location_name: 'UserIdList', traits: {"smithy.api#documentation" => "<p>The request containing the user IDs to unsuspend.</p>", "smithy.api#required" => {}}))
    BatchUnsuspendUserRequest.type = Types::BatchUnsuspendUserRequest
    BatchUnsuspendUserResponse.add_member(:user_errors, Smithy::Schema::Shapes::ShapeRef.new(shape: UserErrorList, location_name: 'UserErrors', traits: {"smithy.api#documentation" => "<p>If the <a>BatchUnsuspendUser</a> action fails for one or more of the user IDs in the\n            request, a list of the user IDs is returned, along with error codes and error messages.</p>"}))
    BatchUnsuspendUserResponse.type = Types::BatchUnsuspendUserResponse
    BatchUpdatePhoneNumberRequest.add_member(:update_phone_number_request_items, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatePhoneNumberRequestItemList, location_name: 'UpdatePhoneNumberRequestItems', traits: {"smithy.api#documentation" => "<p>The request containing the phone number IDs and product types or calling names to update.</p>", "smithy.api#required" => {}}))
    BatchUpdatePhoneNumberRequest.type = Types::BatchUpdatePhoneNumberRequest
    BatchUpdatePhoneNumberResponse.add_member(:phone_number_errors, Smithy::Schema::Shapes::ShapeRef.new(shape: PhoneNumberErrorList, location_name: 'PhoneNumberErrors', traits: {"smithy.api#documentation" => "<p>If the action fails for one or more of the phone numbers in the request, a list of the phone numbers is returned, along with error codes and error messages.</p>"}))
    BatchUpdatePhoneNumberResponse.type = Types::BatchUpdatePhoneNumberResponse
    BatchUpdateUserRequest.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'AccountId', traits: {"smithy.api#documentation" => "<p>The Amazon Chime account ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    BatchUpdateUserRequest.add_member(:update_user_request_items, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateUserRequestItemList, location_name: 'UpdateUserRequestItems', traits: {"smithy.api#documentation" => "<p>The request containing the user IDs and details to update.</p>", "smithy.api#required" => {}}))
    BatchUpdateUserRequest.type = Types::BatchUpdateUserRequest
    BatchUpdateUserResponse.add_member(:user_errors, Smithy::Schema::Shapes::ShapeRef.new(shape: UserErrorList, location_name: 'UserErrors', traits: {"smithy.api#documentation" => "<p>If the <a>BatchUpdateUser</a> action fails for one or more of the user IDs in the\n            request, a list of the user IDs is returned, along with error codes and error messages.</p>"}))
    BatchUpdateUserResponse.type = Types::BatchUpdateUserResponse
    Bot.add_member(:bot_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BotId', traits: {"smithy.api#documentation" => "<p>The bot ID.</p>"}))
    Bot.add_member(:user_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'UserId', traits: {"smithy.api#documentation" => "<p>The unique ID for the bot user.</p>"}))
    Bot.add_member(:display_name, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveString, location_name: 'DisplayName', traits: {"smithy.api#documentation" => "<p>The bot display name.</p>"}))
    Bot.add_member(:bot_type, Smithy::Schema::Shapes::ShapeRef.new(shape: BotType, location_name: 'BotType', traits: {"smithy.api#documentation" => "<p>The bot type.</p>"}))
    Bot.add_member(:disabled, Smithy::Schema::Shapes::ShapeRef.new(shape: NullableBoolean, location_name: 'Disabled', traits: {"smithy.api#documentation" => "<p>When true, the bot is stopped from running in your account.</p>"}))
    Bot.add_member(:created_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: 'CreatedTimestamp', traits: {"smithy.api#documentation" => "<p>The bot creation timestamp, in ISO 8601 format.</p>"}))
    Bot.add_member(:updated_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: 'UpdatedTimestamp', traits: {"smithy.api#documentation" => "<p>The updated bot timestamp, in ISO 8601 format.</p>"}))
    Bot.add_member(:bot_email, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveString, location_name: 'BotEmail', traits: {"smithy.api#documentation" => "<p>The bot email address.</p>"}))
    Bot.add_member(:security_token, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveString, location_name: 'SecurityToken', traits: {"smithy.api#documentation" => "<p>The security token used to authenticate Amazon Chime with the outgoing event endpoint.</p>"}))
    Bot.type = Types::Bot
    BotList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Bot)
    BotType.add_member(:chat_bot, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ChatBot', traits: {"smithy.api#enumValue" => "ChatBot"}))
    BusinessCallingSettings.add_member(:cdr_bucket, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CdrBucket', traits: {"smithy.api#documentation" => "<p>The Amazon S3 bucket designated for call detail record storage.</p>"}))
    BusinessCallingSettings.type = Types::BusinessCallingSettings
    CallingNameStatus.add_member(:unassigned, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Unassigned', traits: {"smithy.api#enumValue" => "Unassigned"}))
    CallingNameStatus.add_member(:update_in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UpdateInProgress', traits: {"smithy.api#enumValue" => "UpdateInProgress"}))
    CallingNameStatus.add_member(:update_succeeded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UpdateSucceeded', traits: {"smithy.api#enumValue" => "UpdateSucceeded"}))
    CallingNameStatus.add_member(:update_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UpdateFailed', traits: {"smithy.api#enumValue" => "UpdateFailed"}))
    ConflictException.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'Code'))
    ConflictException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    ConflictException.type = Types::ConflictException
    ConversationRetentionSettings.add_member(:retention_days, Smithy::Schema::Shapes::ShapeRef.new(shape: RetentionDays, location_name: 'RetentionDays', traits: {"smithy.api#documentation" => "<p>The number of days for which to retain conversation messages.</p>"}))
    ConversationRetentionSettings.type = Types::ConversationRetentionSettings
    CreateAccountRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the Amazon Chime account.</p>", "smithy.api#required" => {}}))
    CreateAccountRequest.type = Types::CreateAccountRequest
    CreateAccountResponse.add_member(:account, Smithy::Schema::Shapes::ShapeRef.new(shape: Account, location_name: 'Account', traits: {"smithy.api#documentation" => "<p>The Amazon Chime account details.</p>"}))
    CreateAccountResponse.type = Types::CreateAccountResponse
    CreateBotRequest.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'AccountId', traits: {"smithy.api#documentation" => "<p>The Amazon Chime account ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateBotRequest.add_member(:display_name, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveString, location_name: 'DisplayName', traits: {"smithy.api#documentation" => "<p>The bot display name.</p>", "smithy.api#required" => {}}))
    CreateBotRequest.add_member(:domain, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'Domain', traits: {"smithy.api#documentation" => "<p>The domain of the Amazon Chime Enterprise account.</p>"}))
    CreateBotRequest.type = Types::CreateBotRequest
    CreateBotResponse.add_member(:bot, Smithy::Schema::Shapes::ShapeRef.new(shape: Bot, location_name: 'Bot', traits: {"smithy.api#documentation" => "<p>The bot details.</p>"}))
    CreateBotResponse.type = Types::CreateBotResponse
    CreateMeetingDialOutRequest.add_member(:meeting_id, Smithy::Schema::Shapes::ShapeRef.new(shape: GuidString, location_name: 'MeetingId', traits: {"smithy.api#documentation" => "<p>The Amazon Chime SDK meeting ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateMeetingDialOutRequest.add_member(:from_phone_number, Smithy::Schema::Shapes::ShapeRef.new(shape: E164PhoneNumber, location_name: 'FromPhoneNumber', traits: {"smithy.api#documentation" => "<p>Phone number used as the caller ID when the remote party receives a call.</p>", "smithy.api#required" => {}}))
    CreateMeetingDialOutRequest.add_member(:to_phone_number, Smithy::Schema::Shapes::ShapeRef.new(shape: E164PhoneNumber, location_name: 'ToPhoneNumber', traits: {"smithy.api#documentation" => "<p>Phone number called when inviting someone to a meeting.</p>", "smithy.api#required" => {}}))
    CreateMeetingDialOutRequest.add_member(:join_token, Smithy::Schema::Shapes::ShapeRef.new(shape: JoinTokenString, location_name: 'JoinToken', traits: {"smithy.api#documentation" => "<p>Token used by the Amazon Chime SDK attendee. Call the <a href=\"https://docs.aws.amazon.com/chime/latest/APIReference/API_CreateAttendee.html\">CreateAttendee</a> action to get a join token.</p>", "smithy.api#required" => {}}))
    CreateMeetingDialOutRequest.type = Types::CreateMeetingDialOutRequest
    CreateMeetingDialOutResponse.add_member(:transaction_id, Smithy::Schema::Shapes::ShapeRef.new(shape: GuidString, location_name: 'TransactionId', traits: {"smithy.api#documentation" => "<p>Unique ID that tracks API calls.</p>"}))
    CreateMeetingDialOutResponse.type = Types::CreateMeetingDialOutResponse
    CreatePhoneNumberOrderRequest.add_member(:product_type, Smithy::Schema::Shapes::ShapeRef.new(shape: PhoneNumberProductType, location_name: 'ProductType', traits: {"smithy.api#documentation" => "<p>The phone number product type.</p>", "smithy.api#required" => {}}))
    CreatePhoneNumberOrderRequest.add_member(:e164_phone_numbers, Smithy::Schema::Shapes::ShapeRef.new(shape: E164PhoneNumberList, location_name: 'E164PhoneNumbers', traits: {"smithy.api#documentation" => "<p>List of phone numbers, in E.164 format.</p>", "smithy.api#required" => {}}))
    CreatePhoneNumberOrderRequest.type = Types::CreatePhoneNumberOrderRequest
    CreatePhoneNumberOrderResponse.add_member(:phone_number_order, Smithy::Schema::Shapes::ShapeRef.new(shape: PhoneNumberOrder, location_name: 'PhoneNumberOrder', traits: {"smithy.api#documentation" => "<p>The phone number order details.</p>"}))
    CreatePhoneNumberOrderResponse.type = Types::CreatePhoneNumberOrderResponse
    CreateRoomMembershipRequest.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'AccountId', traits: {"smithy.api#documentation" => "<p>The Amazon Chime account ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateRoomMembershipRequest.add_member(:room_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'RoomId', traits: {"smithy.api#documentation" => "<p>The room ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateRoomMembershipRequest.add_member(:member_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'MemberId', traits: {"smithy.api#documentation" => "<p>The Amazon Chime member ID (user ID or bot ID).</p>", "smithy.api#required" => {}}))
    CreateRoomMembershipRequest.add_member(:role, Smithy::Schema::Shapes::ShapeRef.new(shape: RoomMembershipRole, location_name: 'Role', traits: {"smithy.api#documentation" => "<p>The role of the member.</p>"}))
    CreateRoomMembershipRequest.type = Types::CreateRoomMembershipRequest
    CreateRoomMembershipResponse.add_member(:room_membership, Smithy::Schema::Shapes::ShapeRef.new(shape: RoomMembership, location_name: 'RoomMembership', traits: {"smithy.api#documentation" => "<p>The room membership details.</p>"}))
    CreateRoomMembershipResponse.type = Types::CreateRoomMembershipResponse
    CreateRoomRequest.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'AccountId', traits: {"smithy.api#documentation" => "<p>The Amazon Chime account ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateRoomRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveString, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The room name.</p>", "smithy.api#required" => {}}))
    CreateRoomRequest.add_member(:client_request_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: 'ClientRequestToken', traits: {"smithy.api#documentation" => "<p>The idempotency token for the request.</p>", "smithy.api#idempotencyToken" => {}}))
    CreateRoomRequest.type = Types::CreateRoomRequest
    CreateRoomResponse.add_member(:room, Smithy::Schema::Shapes::ShapeRef.new(shape: Room, location_name: 'Room', traits: {"smithy.api#documentation" => "<p>The room details.</p>"}))
    CreateRoomResponse.type = Types::CreateRoomResponse
    CreateUserRequest.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'AccountId', traits: {"smithy.api#documentation" => "<p>The Amazon Chime account ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateUserRequest.add_member(:username, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Username', traits: {"smithy.api#documentation" => "<p>The user name.</p>"}))
    CreateUserRequest.add_member(:email, Smithy::Schema::Shapes::ShapeRef.new(shape: EmailAddress, location_name: 'Email', traits: {"smithy.api#documentation" => "<p>The user's email address.</p>"}))
    CreateUserRequest.add_member(:user_type, Smithy::Schema::Shapes::ShapeRef.new(shape: UserType, location_name: 'UserType', traits: {"smithy.api#documentation" => "<p>The user type.</p>"}))
    CreateUserRequest.type = Types::CreateUserRequest
    CreateUserResponse.add_member(:user, Smithy::Schema::Shapes::ShapeRef.new(shape: User, location_name: 'User', traits: {"smithy.api#documentation" => "<p>The user on the Amazon Chime account.</p>"}))
    CreateUserResponse.type = Types::CreateUserResponse
    DeleteAccountRequest.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'AccountId', traits: {"smithy.api#documentation" => "<p>The Amazon Chime account ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAccountRequest.type = Types::DeleteAccountRequest
    DeleteAccountResponse.type = Types::DeleteAccountResponse
    DeleteEventsConfigurationRequest.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'AccountId', traits: {"smithy.api#documentation" => "<p>The Amazon Chime account ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteEventsConfigurationRequest.add_member(:bot_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'BotId', traits: {"smithy.api#documentation" => "<p>The bot ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteEventsConfigurationRequest.type = Types::DeleteEventsConfigurationRequest
    DeletePhoneNumberRequest.add_member(:phone_number_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PhoneNumberId', traits: {"smithy.api#documentation" => "<p>The phone number ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeletePhoneNumberRequest.type = Types::DeletePhoneNumberRequest
    DeleteRoomMembershipRequest.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'AccountId', traits: {"smithy.api#documentation" => "<p>The Amazon Chime account ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteRoomMembershipRequest.add_member(:room_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'RoomId', traits: {"smithy.api#documentation" => "<p>The room ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteRoomMembershipRequest.add_member(:member_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'MemberId', traits: {"smithy.api#documentation" => "<p>The member ID (user ID or bot ID).</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteRoomMembershipRequest.type = Types::DeleteRoomMembershipRequest
    DeleteRoomRequest.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'AccountId', traits: {"smithy.api#documentation" => "<p>The Amazon Chime account ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteRoomRequest.add_member(:room_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'RoomId', traits: {"smithy.api#documentation" => "<p>The chat room ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteRoomRequest.type = Types::DeleteRoomRequest
    DisassociatePhoneNumberFromUserRequest.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AccountId', traits: {"smithy.api#documentation" => "<p>The Amazon Chime account ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociatePhoneNumberFromUserRequest.add_member(:user_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'UserId', traits: {"smithy.api#documentation" => "<p>The user ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociatePhoneNumberFromUserRequest.type = Types::DisassociatePhoneNumberFromUserRequest
    DisassociatePhoneNumberFromUserResponse.type = Types::DisassociatePhoneNumberFromUserResponse
    DisassociateSigninDelegateGroupsFromAccountRequest.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'AccountId', traits: {"smithy.api#documentation" => "<p>The Amazon Chime account ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociateSigninDelegateGroupsFromAccountRequest.add_member(:group_names, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyStringList, location_name: 'GroupNames', traits: {"smithy.api#documentation" => "<p>The sign-in delegate group names.</p>", "smithy.api#required" => {}}))
    DisassociateSigninDelegateGroupsFromAccountRequest.type = Types::DisassociateSigninDelegateGroupsFromAccountRequest
    DisassociateSigninDelegateGroupsFromAccountResponse.type = Types::DisassociateSigninDelegateGroupsFromAccountResponse
    E164PhoneNumberList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: E164PhoneNumber)
    EmailStatus.add_member(:not_sent, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NotSent', traits: {"smithy.api#enumValue" => "NotSent"}))
    EmailStatus.add_member(:sent, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Sent', traits: {"smithy.api#enumValue" => "Sent"}))
    EmailStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Failed', traits: {"smithy.api#enumValue" => "Failed"}))
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
    EventsConfiguration.add_member(:bot_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BotId', traits: {"smithy.api#documentation" => "<p>The bot ID.</p>"}))
    EventsConfiguration.add_member(:outbound_events_https_endpoint, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveString, location_name: 'OutboundEventsHTTPSEndpoint', traits: {"smithy.api#documentation" => "<p>HTTPS endpoint that allows a bot to receive outgoing events.</p>"}))
    EventsConfiguration.add_member(:lambda_function_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveString, location_name: 'LambdaFunctionArn', traits: {"smithy.api#documentation" => "<p>Lambda function ARN that allows a bot to receive outgoing events.</p>"}))
    EventsConfiguration.type = Types::EventsConfiguration
    ForbiddenException.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'Code'))
    ForbiddenException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    ForbiddenException.type = Types::ForbiddenException
    GetAccountRequest.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'AccountId', traits: {"smithy.api#documentation" => "<p>The Amazon Chime account ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAccountRequest.type = Types::GetAccountRequest
    GetAccountResponse.add_member(:account, Smithy::Schema::Shapes::ShapeRef.new(shape: Account, location_name: 'Account', traits: {"smithy.api#documentation" => "<p>The Amazon Chime account details.</p>"}))
    GetAccountResponse.type = Types::GetAccountResponse
    GetAccountSettingsRequest.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'AccountId', traits: {"smithy.api#documentation" => "<p>The Amazon Chime account ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAccountSettingsRequest.type = Types::GetAccountSettingsRequest
    GetAccountSettingsResponse.add_member(:account_settings, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountSettings, location_name: 'AccountSettings', traits: {"smithy.api#documentation" => "<p>The Amazon Chime account settings.</p>"}))
    GetAccountSettingsResponse.type = Types::GetAccountSettingsResponse
    GetBotRequest.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'AccountId', traits: {"smithy.api#documentation" => "<p>The Amazon Chime account ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetBotRequest.add_member(:bot_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'BotId', traits: {"smithy.api#documentation" => "<p>The bot ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetBotRequest.type = Types::GetBotRequest
    GetBotResponse.add_member(:bot, Smithy::Schema::Shapes::ShapeRef.new(shape: Bot, location_name: 'Bot', traits: {"smithy.api#documentation" => "<p>The chat bot details.</p>"}))
    GetBotResponse.type = Types::GetBotResponse
    GetEventsConfigurationRequest.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'AccountId', traits: {"smithy.api#documentation" => "<p>The Amazon Chime account ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetEventsConfigurationRequest.add_member(:bot_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'BotId', traits: {"smithy.api#documentation" => "<p>The bot ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetEventsConfigurationRequest.type = Types::GetEventsConfigurationRequest
    GetEventsConfigurationResponse.add_member(:events_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: EventsConfiguration, location_name: 'EventsConfiguration', traits: {"smithy.api#documentation" => "<p>The events configuration details.</p>"}))
    GetEventsConfigurationResponse.type = Types::GetEventsConfigurationResponse
    GetGlobalSettingsResponse.add_member(:business_calling, Smithy::Schema::Shapes::ShapeRef.new(shape: BusinessCallingSettings, location_name: 'BusinessCalling', traits: {"smithy.api#documentation" => "<p>The Amazon Chime Business Calling settings.</p>"}))
    GetGlobalSettingsResponse.add_member(:voice_connector, Smithy::Schema::Shapes::ShapeRef.new(shape: VoiceConnectorSettings, location_name: 'VoiceConnector', traits: {"smithy.api#documentation" => "<p>The Amazon Chime Voice Connector settings.</p>"}))
    GetGlobalSettingsResponse.type = Types::GetGlobalSettingsResponse
    GetPhoneNumberOrderRequest.add_member(:phone_number_order_id, Smithy::Schema::Shapes::ShapeRef.new(shape: GuidString, location_name: 'PhoneNumberOrderId', traits: {"smithy.api#documentation" => "<p>The ID for the phone number order.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetPhoneNumberOrderRequest.type = Types::GetPhoneNumberOrderRequest
    GetPhoneNumberOrderResponse.add_member(:phone_number_order, Smithy::Schema::Shapes::ShapeRef.new(shape: PhoneNumberOrder, location_name: 'PhoneNumberOrder', traits: {"smithy.api#documentation" => "<p>The phone number order details.</p>"}))
    GetPhoneNumberOrderResponse.type = Types::GetPhoneNumberOrderResponse
    GetPhoneNumberRequest.add_member(:phone_number_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PhoneNumberId', traits: {"smithy.api#documentation" => "<p>The phone number ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetPhoneNumberRequest.type = Types::GetPhoneNumberRequest
    GetPhoneNumberResponse.add_member(:phone_number, Smithy::Schema::Shapes::ShapeRef.new(shape: PhoneNumber, location_name: 'PhoneNumber', traits: {"smithy.api#documentation" => "<p>The phone number details.</p>"}))
    GetPhoneNumberResponse.type = Types::GetPhoneNumberResponse
    GetPhoneNumberSettingsResponse.add_member(:calling_name, Smithy::Schema::Shapes::ShapeRef.new(shape: CallingName, location_name: 'CallingName', traits: {"smithy.api#documentation" => "<p>The default outbound calling name for the account.</p>"}))
    GetPhoneNumberSettingsResponse.add_member(:calling_name_updated_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: 'CallingNameUpdatedTimestamp', traits: {"smithy.api#documentation" => "<p>The updated outbound calling name timestamp, in ISO 8601 format.</p>"}))
    GetPhoneNumberSettingsResponse.type = Types::GetPhoneNumberSettingsResponse
    GetRetentionSettingsRequest.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'AccountId', traits: {"smithy.api#documentation" => "<p>The Amazon Chime account ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetRetentionSettingsRequest.type = Types::GetRetentionSettingsRequest
    GetRetentionSettingsResponse.add_member(:retention_settings, Smithy::Schema::Shapes::ShapeRef.new(shape: RetentionSettings, location_name: 'RetentionSettings', traits: {"smithy.api#documentation" => "<p>The retention settings.</p>"}))
    GetRetentionSettingsResponse.add_member(:initiate_deletion_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: 'InitiateDeletionTimestamp', traits: {"smithy.api#documentation" => "<p>The timestamp representing the time at which the specified items are permanently deleted, in ISO 8601 format.</p>"}))
    GetRetentionSettingsResponse.type = Types::GetRetentionSettingsResponse
    GetRoomRequest.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'AccountId', traits: {"smithy.api#documentation" => "<p>The Amazon Chime account ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetRoomRequest.add_member(:room_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'RoomId', traits: {"smithy.api#documentation" => "<p>The room ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetRoomRequest.type = Types::GetRoomRequest
    GetRoomResponse.add_member(:room, Smithy::Schema::Shapes::ShapeRef.new(shape: Room, location_name: 'Room', traits: {"smithy.api#documentation" => "<p>The room details.</p>"}))
    GetRoomResponse.type = Types::GetRoomResponse
    GetUserRequest.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'AccountId', traits: {"smithy.api#documentation" => "<p>The Amazon Chime account ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetUserRequest.add_member(:user_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'UserId', traits: {"smithy.api#documentation" => "<p>The user ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetUserRequest.type = Types::GetUserRequest
    GetUserResponse.add_member(:user, Smithy::Schema::Shapes::ShapeRef.new(shape: User, location_name: 'User', traits: {"smithy.api#documentation" => "<p>The user details.</p>"}))
    GetUserResponse.type = Types::GetUserResponse
    GetUserSettingsRequest.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AccountId', traits: {"smithy.api#documentation" => "<p>The Amazon Chime account ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetUserSettingsRequest.add_member(:user_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'UserId', traits: {"smithy.api#documentation" => "<p>The user ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetUserSettingsRequest.type = Types::GetUserSettingsRequest
    GetUserSettingsResponse.add_member(:user_settings, Smithy::Schema::Shapes::ShapeRef.new(shape: UserSettings, location_name: 'UserSettings', traits: {"smithy.api#documentation" => "<p>The user settings.</p>"}))
    GetUserSettingsResponse.type = Types::GetUserSettingsResponse
    Invite.add_member(:invite_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'InviteId', traits: {"smithy.api#documentation" => "<p>The invite ID.</p>"}))
    Invite.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: InviteStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of the invite.</p>"}))
    Invite.add_member(:email_address, Smithy::Schema::Shapes::ShapeRef.new(shape: EmailAddress, location_name: 'EmailAddress', traits: {"smithy.api#documentation" => "<p>The email address to which the invite is sent.</p>"}))
    Invite.add_member(:email_status, Smithy::Schema::Shapes::ShapeRef.new(shape: EmailStatus, location_name: 'EmailStatus', traits: {"smithy.api#documentation" => "<p>The status of the invite email.</p>"}))
    Invite.type = Types::Invite
    InviteList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Invite)
    InviteStatus.add_member(:pending, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Pending', traits: {"smithy.api#enumValue" => "Pending"}))
    InviteStatus.add_member(:accepted, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Accepted', traits: {"smithy.api#enumValue" => "Accepted"}))
    InviteStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Failed', traits: {"smithy.api#enumValue" => "Failed"}))
    InviteUsersRequest.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'AccountId', traits: {"smithy.api#documentation" => "<p>The Amazon Chime account ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    InviteUsersRequest.add_member(:user_email_list, Smithy::Schema::Shapes::ShapeRef.new(shape: UserEmailList, location_name: 'UserEmailList', traits: {"smithy.api#documentation" => "<p>The user email addresses to which to send the email invitation.</p>", "smithy.api#required" => {}}))
    InviteUsersRequest.add_member(:user_type, Smithy::Schema::Shapes::ShapeRef.new(shape: UserType, location_name: 'UserType', traits: {"smithy.api#documentation" => "<p>The user type.</p>"}))
    InviteUsersRequest.type = Types::InviteUsersRequest
    InviteUsersResponse.add_member(:invites, Smithy::Schema::Shapes::ShapeRef.new(shape: InviteList, location_name: 'Invites', traits: {"smithy.api#documentation" => "<p>The email invitation details.</p>"}))
    InviteUsersResponse.type = Types::InviteUsersResponse
    License.add_member(:basic, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Basic', traits: {"smithy.api#enumValue" => "Basic"}))
    License.add_member(:plus, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Plus', traits: {"smithy.api#enumValue" => "Plus"}))
    License.add_member(:pro, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Pro', traits: {"smithy.api#enumValue" => "Pro"}))
    License.add_member(:pro_trial, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ProTrial', traits: {"smithy.api#enumValue" => "ProTrial"}))
    LicenseList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: License)
    ListAccountsRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>Amazon Chime account name prefix with which to filter results.</p>", "smithy.api#httpQuery" => "name"}))
    ListAccountsRequest.add_member(:user_email, Smithy::Schema::Shapes::ShapeRef.new(shape: EmailAddress, location_name: 'UserEmail', traits: {"smithy.api#documentation" => "<p>User email address with which to filter results.</p>", "smithy.api#httpQuery" => "user-email"}))
    ListAccountsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token to use to retrieve the next page of results.</p>", "smithy.api#httpQuery" => "next-token"}))
    ListAccountsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: ProfileServiceMaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return in a single call. Defaults to 100.</p>", "smithy.api#httpQuery" => "max-results"}))
    ListAccountsRequest.type = Types::ListAccountsRequest
    ListAccountsResponse.add_member(:accounts, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountList, location_name: 'Accounts', traits: {"smithy.api#documentation" => "<p>List of Amazon Chime accounts and account details.</p>"}))
    ListAccountsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token to use to retrieve the next page of results.</p>"}))
    ListAccountsResponse.type = Types::ListAccountsResponse
    ListBotsRequest.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'AccountId', traits: {"smithy.api#documentation" => "<p>The Amazon Chime account ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListBotsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: ResultMax, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return in a single call. The default is 10.</p>", "smithy.api#httpQuery" => "max-results"}))
    ListBotsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token to use to retrieve the next page of results.</p>", "smithy.api#httpQuery" => "next-token"}))
    ListBotsRequest.type = Types::ListBotsRequest
    ListBotsResponse.add_member(:bots, Smithy::Schema::Shapes::ShapeRef.new(shape: BotList, location_name: 'Bots', traits: {"smithy.api#documentation" => "<p>List of bots and bot details.</p>"}))
    ListBotsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token to use to retrieve the next page of results.</p>"}))
    ListBotsResponse.type = Types::ListBotsResponse
    ListPhoneNumberOrdersRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token to use to retrieve the next page of results.</p>", "smithy.api#httpQuery" => "next-token"}))
    ListPhoneNumberOrdersRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: ResultMax, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return in a single call.</p>", "smithy.api#httpQuery" => "max-results"}))
    ListPhoneNumberOrdersRequest.type = Types::ListPhoneNumberOrdersRequest
    ListPhoneNumberOrdersResponse.add_member(:phone_number_orders, Smithy::Schema::Shapes::ShapeRef.new(shape: PhoneNumberOrderList, location_name: 'PhoneNumberOrders', traits: {"smithy.api#documentation" => "<p>The phone number order details.</p>"}))
    ListPhoneNumberOrdersResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token to use to retrieve the next page of results.</p>"}))
    ListPhoneNumberOrdersResponse.type = Types::ListPhoneNumberOrdersResponse
    ListPhoneNumbersRequest.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: PhoneNumberStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The phone number status.</p>", "smithy.api#httpQuery" => "status"}))
    ListPhoneNumbersRequest.add_member(:product_type, Smithy::Schema::Shapes::ShapeRef.new(shape: PhoneNumberProductType, location_name: 'ProductType', traits: {"smithy.api#documentation" => "<p>The phone number product type.</p>", "smithy.api#httpQuery" => "product-type"}))
    ListPhoneNumbersRequest.add_member(:filter_name, Smithy::Schema::Shapes::ShapeRef.new(shape: PhoneNumberAssociationName, location_name: 'FilterName', traits: {"smithy.api#documentation" => "<p>The filter to use to limit the number of results.</p>", "smithy.api#httpQuery" => "filter-name"}))
    ListPhoneNumbersRequest.add_member(:filter_value, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'FilterValue', traits: {"smithy.api#documentation" => "<p>The value to use for the filter.</p>", "smithy.api#httpQuery" => "filter-value"}))
    ListPhoneNumbersRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: ResultMax, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return in a single call.</p>", "smithy.api#httpQuery" => "max-results"}))
    ListPhoneNumbersRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token to use to retrieve the next page of results.</p>", "smithy.api#httpQuery" => "next-token"}))
    ListPhoneNumbersRequest.type = Types::ListPhoneNumbersRequest
    ListPhoneNumbersResponse.add_member(:phone_numbers, Smithy::Schema::Shapes::ShapeRef.new(shape: PhoneNumberList, location_name: 'PhoneNumbers', traits: {"smithy.api#documentation" => "<p>The phone number details.</p>"}))
    ListPhoneNumbersResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token to use to retrieve the next page of results.</p>"}))
    ListPhoneNumbersResponse.type = Types::ListPhoneNumbersResponse
    ListRoomMembershipsRequest.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'AccountId', traits: {"smithy.api#documentation" => "<p>The Amazon Chime account ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListRoomMembershipsRequest.add_member(:room_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'RoomId', traits: {"smithy.api#documentation" => "<p>The room ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListRoomMembershipsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: ResultMax, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return in a single call.</p>", "smithy.api#httpQuery" => "max-results"}))
    ListRoomMembershipsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token to use to retrieve the next page of results.</p>", "smithy.api#httpQuery" => "next-token"}))
    ListRoomMembershipsRequest.type = Types::ListRoomMembershipsRequest
    ListRoomMembershipsResponse.add_member(:room_memberships, Smithy::Schema::Shapes::ShapeRef.new(shape: RoomMembershipList, location_name: 'RoomMemberships', traits: {"smithy.api#documentation" => "<p>The room membership details.</p>"}))
    ListRoomMembershipsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token to use to retrieve the next page of results.</p>"}))
    ListRoomMembershipsResponse.type = Types::ListRoomMembershipsResponse
    ListRoomsRequest.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'AccountId', traits: {"smithy.api#documentation" => "<p>The Amazon Chime account ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListRoomsRequest.add_member(:member_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MemberId', traits: {"smithy.api#documentation" => "<p>The member ID (user ID or bot ID).</p>", "smithy.api#httpQuery" => "member-id"}))
    ListRoomsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: ResultMax, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return in a single call.</p>", "smithy.api#httpQuery" => "max-results"}))
    ListRoomsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token to use to retrieve the next page of results.</p>", "smithy.api#httpQuery" => "next-token"}))
    ListRoomsRequest.type = Types::ListRoomsRequest
    ListRoomsResponse.add_member(:rooms, Smithy::Schema::Shapes::ShapeRef.new(shape: RoomList, location_name: 'Rooms', traits: {"smithy.api#documentation" => "<p>The room details.</p>"}))
    ListRoomsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token to use to retrieve the next page of results.</p>"}))
    ListRoomsResponse.type = Types::ListRoomsResponse
    ListSupportedPhoneNumberCountriesRequest.add_member(:product_type, Smithy::Schema::Shapes::ShapeRef.new(shape: PhoneNumberProductType, location_name: 'ProductType', traits: {"smithy.api#documentation" => "<p>The phone number product type.</p>", "smithy.api#httpQuery" => "product-type", "smithy.api#required" => {}}))
    ListSupportedPhoneNumberCountriesRequest.type = Types::ListSupportedPhoneNumberCountriesRequest
    ListSupportedPhoneNumberCountriesResponse.add_member(:phone_number_countries, Smithy::Schema::Shapes::ShapeRef.new(shape: PhoneNumberCountriesList, location_name: 'PhoneNumberCountries', traits: {"smithy.api#documentation" => "<p>The supported phone number countries.</p>"}))
    ListSupportedPhoneNumberCountriesResponse.type = Types::ListSupportedPhoneNumberCountriesResponse
    ListUsersRequest.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'AccountId', traits: {"smithy.api#documentation" => "<p>The Amazon Chime account ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListUsersRequest.add_member(:user_email, Smithy::Schema::Shapes::ShapeRef.new(shape: EmailAddress, location_name: 'UserEmail', traits: {"smithy.api#documentation" => "<p>Optional. The user email address used to filter results. Maximum 1.</p>", "smithy.api#httpQuery" => "user-email"}))
    ListUsersRequest.add_member(:user_type, Smithy::Schema::Shapes::ShapeRef.new(shape: UserType, location_name: 'UserType', traits: {"smithy.api#documentation" => "<p>The user type.</p>", "smithy.api#httpQuery" => "user-type"}))
    ListUsersRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: ProfileServiceMaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return in a single call. Defaults to 100.</p>", "smithy.api#httpQuery" => "max-results"}))
    ListUsersRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token to use to retrieve the next page of results.</p>", "smithy.api#httpQuery" => "next-token"}))
    ListUsersRequest.type = Types::ListUsersRequest
    ListUsersResponse.add_member(:users, Smithy::Schema::Shapes::ShapeRef.new(shape: UserList, location_name: 'Users', traits: {"smithy.api#documentation" => "<p>List of users and user details.</p>"}))
    ListUsersResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token to use to retrieve the next page of results.</p>"}))
    ListUsersResponse.type = Types::ListUsersResponse
    LogoutUserRequest.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'AccountId', traits: {"smithy.api#documentation" => "<p>The Amazon Chime account ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    LogoutUserRequest.add_member(:user_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'UserId', traits: {"smithy.api#documentation" => "<p>The user ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    LogoutUserRequest.type = Types::LogoutUserRequest
    LogoutUserResponse.type = Types::LogoutUserResponse
    Member.add_member(:member_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'MemberId', traits: {"smithy.api#documentation" => "<p>The member ID (user ID or bot ID).</p>"}))
    Member.add_member(:member_type, Smithy::Schema::Shapes::ShapeRef.new(shape: MemberType, location_name: 'MemberType', traits: {"smithy.api#documentation" => "<p>The member type.</p>"}))
    Member.add_member(:email, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveString, location_name: 'Email', traits: {"smithy.api#documentation" => "<p>The member email address.</p>"}))
    Member.add_member(:full_name, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveString, location_name: 'FullName', traits: {"smithy.api#documentation" => "<p>The member name.</p>"}))
    Member.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'AccountId', traits: {"smithy.api#documentation" => "<p>The Amazon Chime account ID.</p>"}))
    Member.type = Types::Member
    MemberError.add_member(:member_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'MemberId', traits: {"smithy.api#documentation" => "<p>The member ID.</p>"}))
    MemberError.add_member(:error_code, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'ErrorCode', traits: {"smithy.api#documentation" => "<p>The error code.</p>"}))
    MemberError.add_member(:error_message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ErrorMessage', traits: {"smithy.api#documentation" => "<p>The error message.</p>"}))
    MemberError.type = Types::MemberError
    MemberErrorList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: MemberError)
    MemberType.add_member(:user, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'User', traits: {"smithy.api#enumValue" => "User"}))
    MemberType.add_member(:bot, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Bot', traits: {"smithy.api#enumValue" => "Bot"}))
    MemberType.add_member(:webhook, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Webhook', traits: {"smithy.api#enumValue" => "Webhook"}))
    MembershipItem.add_member(:member_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'MemberId', traits: {"smithy.api#documentation" => "<p>The member ID.</p>"}))
    MembershipItem.add_member(:role, Smithy::Schema::Shapes::ShapeRef.new(shape: RoomMembershipRole, location_name: 'Role', traits: {"smithy.api#documentation" => "<p>The member role.</p>"}))
    MembershipItem.type = Types::MembershipItem
    MembershipItemList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: MembershipItem)
    NonEmptyStringList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    NotFoundException.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'Code'))
    NotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    NotFoundException.type = Types::NotFoundException
    OrderedPhoneNumber.add_member(:e164_phone_number, Smithy::Schema::Shapes::ShapeRef.new(shape: E164PhoneNumber, location_name: 'E164PhoneNumber', traits: {"smithy.api#documentation" => "<p>The phone number, in E.164 format.</p>"}))
    OrderedPhoneNumber.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: OrderedPhoneNumberStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The phone number status.</p>"}))
    OrderedPhoneNumber.type = Types::OrderedPhoneNumber
    OrderedPhoneNumberList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: OrderedPhoneNumber)
    OrderedPhoneNumberStatus.add_member(:processing, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Processing', traits: {"smithy.api#enumValue" => "Processing"}))
    OrderedPhoneNumberStatus.add_member(:acquired, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Acquired', traits: {"smithy.api#enumValue" => "Acquired"}))
    OrderedPhoneNumberStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Failed', traits: {"smithy.api#enumValue" => "Failed"}))
    PhoneNumber.add_member(:phone_number_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PhoneNumberId', traits: {"smithy.api#documentation" => "<p>The phone number ID.</p>"}))
    PhoneNumber.add_member(:e164_phone_number, Smithy::Schema::Shapes::ShapeRef.new(shape: E164PhoneNumber, location_name: 'E164PhoneNumber', traits: {"smithy.api#documentation" => "<p>The phone number, in E.164 format.</p>"}))
    PhoneNumber.add_member(:country, Smithy::Schema::Shapes::ShapeRef.new(shape: Alpha2CountryCode, location_name: 'Country', traits: {"smithy.api#documentation" => "<p>The phone number country. Format: ISO 3166-1 alpha-2.</p>"}))
    PhoneNumber.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: PhoneNumberType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The phone number type.</p>"}))
    PhoneNumber.add_member(:product_type, Smithy::Schema::Shapes::ShapeRef.new(shape: PhoneNumberProductType, location_name: 'ProductType', traits: {"smithy.api#documentation" => "<p>The phone number product type.</p>"}))
    PhoneNumber.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: PhoneNumberStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The phone number status.</p>"}))
    PhoneNumber.add_member(:capabilities, Smithy::Schema::Shapes::ShapeRef.new(shape: PhoneNumberCapabilities, location_name: 'Capabilities', traits: {"smithy.api#documentation" => "<p>The phone number capabilities.</p>"}))
    PhoneNumber.add_member(:associations, Smithy::Schema::Shapes::ShapeRef.new(shape: PhoneNumberAssociationList, location_name: 'Associations', traits: {"smithy.api#documentation" => "<p>The phone number associations.</p>"}))
    PhoneNumber.add_member(:calling_name, Smithy::Schema::Shapes::ShapeRef.new(shape: CallingName, location_name: 'CallingName', traits: {"smithy.api#documentation" => "<p>The outbound calling name associated with the phone number.</p>"}))
    PhoneNumber.add_member(:calling_name_status, Smithy::Schema::Shapes::ShapeRef.new(shape: CallingNameStatus, location_name: 'CallingNameStatus', traits: {"smithy.api#documentation" => "<p>The outbound calling name status.</p>"}))
    PhoneNumber.add_member(:created_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: 'CreatedTimestamp', traits: {"smithy.api#documentation" => "<p>The phone number creation timestamp, in ISO 8601 format.</p>"}))
    PhoneNumber.add_member(:updated_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: 'UpdatedTimestamp', traits: {"smithy.api#documentation" => "<p>The updated phone number timestamp, in ISO 8601 format.</p>"}))
    PhoneNumber.add_member(:deletion_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: 'DeletionTimestamp', traits: {"smithy.api#documentation" => "<p>The deleted phone number timestamp, in ISO 8601 format.</p>"}))
    PhoneNumber.type = Types::PhoneNumber
    PhoneNumberAssociation.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Value', traits: {"smithy.api#documentation" => "<p>Contains the ID for the entity specified in Name.</p>"}))
    PhoneNumberAssociation.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: PhoneNumberAssociationName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>Defines the association with an Amazon Chime account ID, user ID, Amazon Chime Voice Connector\n            ID, or Amazon Chime Voice Connector group ID.</p>"}))
    PhoneNumberAssociation.add_member(:associated_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: 'AssociatedTimestamp', traits: {"smithy.api#documentation" => "<p>The timestamp of the phone number association, in ISO 8601 format.</p>"}))
    PhoneNumberAssociation.type = Types::PhoneNumberAssociation
    PhoneNumberAssociationList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PhoneNumberAssociation)
    PhoneNumberAssociationName.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AccountId', traits: {"smithy.api#enumValue" => "AccountId"}))
    PhoneNumberAssociationName.add_member(:user_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UserId', traits: {"smithy.api#enumValue" => "UserId"}))
    PhoneNumberAssociationName.add_member(:voice_connector_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VoiceConnectorId', traits: {"smithy.api#enumValue" => "VoiceConnectorId"}))
    PhoneNumberAssociationName.add_member(:voice_connector_group_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VoiceConnectorGroupId', traits: {"smithy.api#enumValue" => "VoiceConnectorGroupId"}))
    PhoneNumberAssociationName.add_member(:sip_rule_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SipRuleId', traits: {"smithy.api#enumValue" => "SipRuleId"}))
    PhoneNumberCapabilities.add_member(:inbound_call, Smithy::Schema::Shapes::ShapeRef.new(shape: NullableBoolean, location_name: 'InboundCall', traits: {"smithy.api#documentation" => "<p>Allows or denies inbound calling for the specified phone number.</p>"}))
    PhoneNumberCapabilities.add_member(:outbound_call, Smithy::Schema::Shapes::ShapeRef.new(shape: NullableBoolean, location_name: 'OutboundCall', traits: {"smithy.api#documentation" => "<p>Allows or denies outbound calling for the specified phone number.</p>"}))
    PhoneNumberCapabilities.add_member(:inbound_sms, Smithy::Schema::Shapes::ShapeRef.new(shape: NullableBoolean, location_name: 'InboundSMS', traits: {"smithy.api#documentation" => "<p>Allows or denies inbound SMS messaging for the specified phone number.</p>"}))
    PhoneNumberCapabilities.add_member(:outbound_sms, Smithy::Schema::Shapes::ShapeRef.new(shape: NullableBoolean, location_name: 'OutboundSMS', traits: {"smithy.api#documentation" => "<p>Allows or denies outbound SMS messaging for the specified phone number.</p>"}))
    PhoneNumberCapabilities.add_member(:inbound_mms, Smithy::Schema::Shapes::ShapeRef.new(shape: NullableBoolean, location_name: 'InboundMMS', traits: {"smithy.api#documentation" => "<p>Allows or denies inbound MMS messaging for the specified phone number.</p>"}))
    PhoneNumberCapabilities.add_member(:outbound_mms, Smithy::Schema::Shapes::ShapeRef.new(shape: NullableBoolean, location_name: 'OutboundMMS', traits: {"smithy.api#documentation" => "<p>Allows or denies outbound MMS messaging for the specified phone number.</p>"}))
    PhoneNumberCapabilities.type = Types::PhoneNumberCapabilities
    PhoneNumberCountriesList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PhoneNumberCountry)
    PhoneNumberCountry.add_member(:country_code, Smithy::Schema::Shapes::ShapeRef.new(shape: Alpha2CountryCode, location_name: 'CountryCode', traits: {"smithy.api#documentation" => "<p>The phone number country code. Format: ISO 3166-1 alpha-2.</p>"}))
    PhoneNumberCountry.add_member(:supported_phone_number_types, Smithy::Schema::Shapes::ShapeRef.new(shape: PhoneNumberTypeList, location_name: 'SupportedPhoneNumberTypes', traits: {"smithy.api#documentation" => "<p>The supported phone number types. </p>"}))
    PhoneNumberCountry.type = Types::PhoneNumberCountry
    PhoneNumberError.add_member(:phone_number_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'PhoneNumberId', traits: {"smithy.api#documentation" => "<p>The phone number ID for which the action failed.</p>"}))
    PhoneNumberError.add_member(:error_code, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'ErrorCode', traits: {"smithy.api#documentation" => "<p>The error code.</p>"}))
    PhoneNumberError.add_member(:error_message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ErrorMessage', traits: {"smithy.api#documentation" => "<p>The error message.</p>"}))
    PhoneNumberError.type = Types::PhoneNumberError
    PhoneNumberErrorList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PhoneNumberError)
    PhoneNumberList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PhoneNumber)
    PhoneNumberOrder.add_member(:phone_number_order_id, Smithy::Schema::Shapes::ShapeRef.new(shape: GuidString, location_name: 'PhoneNumberOrderId', traits: {"smithy.api#documentation" => "<p>The phone number order ID.</p>"}))
    PhoneNumberOrder.add_member(:product_type, Smithy::Schema::Shapes::ShapeRef.new(shape: PhoneNumberProductType, location_name: 'ProductType', traits: {"smithy.api#documentation" => "<p>The phone number order product type.</p>"}))
    PhoneNumberOrder.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: PhoneNumberOrderStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of the phone number order.</p>"}))
    PhoneNumberOrder.add_member(:ordered_phone_numbers, Smithy::Schema::Shapes::ShapeRef.new(shape: OrderedPhoneNumberList, location_name: 'OrderedPhoneNumbers', traits: {"smithy.api#documentation" => "<p>The ordered phone number details, such as the phone number in E.164 format and the phone\n            number status.</p>"}))
    PhoneNumberOrder.add_member(:created_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: 'CreatedTimestamp', traits: {"smithy.api#documentation" => "<p>The phone number order creation time stamp, in ISO 8601 format.</p>"}))
    PhoneNumberOrder.add_member(:updated_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: 'UpdatedTimestamp', traits: {"smithy.api#documentation" => "<p>The updated phone number order time stamp, in ISO 8601 format.</p>"}))
    PhoneNumberOrder.type = Types::PhoneNumberOrder
    PhoneNumberOrderList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PhoneNumberOrder)
    PhoneNumberOrderStatus.add_member(:processing, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Processing', traits: {"smithy.api#enumValue" => "Processing"}))
    PhoneNumberOrderStatus.add_member(:successful, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Successful', traits: {"smithy.api#enumValue" => "Successful"}))
    PhoneNumberOrderStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Failed', traits: {"smithy.api#enumValue" => "Failed"}))
    PhoneNumberOrderStatus.add_member(:partial, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Partial', traits: {"smithy.api#enumValue" => "Partial"}))
    PhoneNumberProductType.add_member(:business_calling, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BusinessCalling', traits: {"smithy.api#enumValue" => "BusinessCalling"}))
    PhoneNumberProductType.add_member(:voice_connector, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VoiceConnector', traits: {"smithy.api#enumValue" => "VoiceConnector"}))
    PhoneNumberProductType.add_member(:sip_media_application_dial_in, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SipMediaApplicationDialIn', traits: {"smithy.api#enumValue" => "SipMediaApplicationDialIn"}))
    PhoneNumberStatus.add_member(:acquire_in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AcquireInProgress', traits: {"smithy.api#enumValue" => "AcquireInProgress"}))
    PhoneNumberStatus.add_member(:acquire_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AcquireFailed', traits: {"smithy.api#enumValue" => "AcquireFailed"}))
    PhoneNumberStatus.add_member(:unassigned, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Unassigned', traits: {"smithy.api#enumValue" => "Unassigned"}))
    PhoneNumberStatus.add_member(:assigned, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Assigned', traits: {"smithy.api#enumValue" => "Assigned"}))
    PhoneNumberStatus.add_member(:release_in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ReleaseInProgress', traits: {"smithy.api#enumValue" => "ReleaseInProgress"}))
    PhoneNumberStatus.add_member(:delete_in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DeleteInProgress', traits: {"smithy.api#enumValue" => "DeleteInProgress"}))
    PhoneNumberStatus.add_member(:release_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ReleaseFailed', traits: {"smithy.api#enumValue" => "ReleaseFailed"}))
    PhoneNumberStatus.add_member(:delete_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DeleteFailed', traits: {"smithy.api#enumValue" => "DeleteFailed"}))
    PhoneNumberType.add_member(:local, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Local', traits: {"smithy.api#enumValue" => "Local"}))
    PhoneNumberType.add_member(:toll_free, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TollFree', traits: {"smithy.api#enumValue" => "TollFree"}))
    PhoneNumberTypeList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PhoneNumberType)
    PutEventsConfigurationRequest.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'AccountId', traits: {"smithy.api#documentation" => "<p>The Amazon Chime account ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutEventsConfigurationRequest.add_member(:bot_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'BotId', traits: {"smithy.api#documentation" => "<p>The bot ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutEventsConfigurationRequest.add_member(:outbound_events_https_endpoint, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveString, location_name: 'OutboundEventsHTTPSEndpoint', traits: {"smithy.api#documentation" => "<p>HTTPS endpoint that allows the bot to receive outgoing events.</p>"}))
    PutEventsConfigurationRequest.add_member(:lambda_function_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveString, location_name: 'LambdaFunctionArn', traits: {"smithy.api#documentation" => "<p>Lambda function ARN that allows the bot to receive outgoing events.</p>"}))
    PutEventsConfigurationRequest.type = Types::PutEventsConfigurationRequest
    PutEventsConfigurationResponse.add_member(:events_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: EventsConfiguration, location_name: 'EventsConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration that allows a bot to receive outgoing events. Can be an HTTPS endpoint or an \n            AWS Lambda function ARN.</p>"}))
    PutEventsConfigurationResponse.type = Types::PutEventsConfigurationResponse
    PutRetentionSettingsRequest.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'AccountId', traits: {"smithy.api#documentation" => "<p>The Amazon Chime account ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutRetentionSettingsRequest.add_member(:retention_settings, Smithy::Schema::Shapes::ShapeRef.new(shape: RetentionSettings, location_name: 'RetentionSettings', traits: {"smithy.api#documentation" => "<p>The retention settings.</p>", "smithy.api#required" => {}}))
    PutRetentionSettingsRequest.type = Types::PutRetentionSettingsRequest
    PutRetentionSettingsResponse.add_member(:retention_settings, Smithy::Schema::Shapes::ShapeRef.new(shape: RetentionSettings, location_name: 'RetentionSettings', traits: {"smithy.api#documentation" => "<p>The retention settings.</p>"}))
    PutRetentionSettingsResponse.add_member(:initiate_deletion_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: 'InitiateDeletionTimestamp', traits: {"smithy.api#documentation" => "<p>The timestamp representing the time at which the specified items are permanently deleted, in ISO 8601 format.</p>"}))
    PutRetentionSettingsResponse.type = Types::PutRetentionSettingsResponse
    RedactConversationMessageRequest.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'AccountId', traits: {"smithy.api#documentation" => "<p>The Amazon Chime account ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RedactConversationMessageRequest.add_member(:conversation_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'ConversationId', traits: {"smithy.api#documentation" => "<p>The conversation ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RedactConversationMessageRequest.add_member(:message_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'MessageId', traits: {"smithy.api#documentation" => "<p>The message ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RedactConversationMessageRequest.type = Types::RedactConversationMessageRequest
    RedactConversationMessageResponse.type = Types::RedactConversationMessageResponse
    RedactRoomMessageRequest.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'AccountId', traits: {"smithy.api#documentation" => "<p>The Amazon Chime account ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RedactRoomMessageRequest.add_member(:room_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'RoomId', traits: {"smithy.api#documentation" => "<p>The room ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RedactRoomMessageRequest.add_member(:message_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'MessageId', traits: {"smithy.api#documentation" => "<p>The message ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RedactRoomMessageRequest.type = Types::RedactRoomMessageRequest
    RedactRoomMessageResponse.type = Types::RedactRoomMessageResponse
    RegenerateSecurityTokenRequest.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'AccountId', traits: {"smithy.api#documentation" => "<p>The Amazon Chime account ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RegenerateSecurityTokenRequest.add_member(:bot_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'BotId', traits: {"smithy.api#documentation" => "<p>The bot ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RegenerateSecurityTokenRequest.type = Types::RegenerateSecurityTokenRequest
    RegenerateSecurityTokenResponse.add_member(:bot, Smithy::Schema::Shapes::ShapeRef.new(shape: Bot, location_name: 'Bot', traits: {"smithy.api#documentation" => "<p>A resource that allows Enterprise account administrators to configure an interface that receives events from Amazon Chime.</p>"}))
    RegenerateSecurityTokenResponse.type = Types::RegenerateSecurityTokenResponse
    RegistrationStatus.add_member(:unregistered, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Unregistered', traits: {"smithy.api#enumValue" => "Unregistered"}))
    RegistrationStatus.add_member(:registered, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Registered', traits: {"smithy.api#enumValue" => "Registered"}))
    RegistrationStatus.add_member(:suspended, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Suspended', traits: {"smithy.api#enumValue" => "Suspended"}))
    ResetPersonalPINRequest.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'AccountId', traits: {"smithy.api#documentation" => "<p>The Amazon Chime account ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ResetPersonalPINRequest.add_member(:user_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'UserId', traits: {"smithy.api#documentation" => "<p>The user ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ResetPersonalPINRequest.type = Types::ResetPersonalPINRequest
    ResetPersonalPINResponse.add_member(:user, Smithy::Schema::Shapes::ShapeRef.new(shape: User, location_name: 'User', traits: {"smithy.api#documentation" => "<p>The user details and new personal meeting PIN.</p>"}))
    ResetPersonalPINResponse.type = Types::ResetPersonalPINResponse
    ResourceLimitExceededException.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'Code'))
    ResourceLimitExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    ResourceLimitExceededException.type = Types::ResourceLimitExceededException
    RestorePhoneNumberRequest.add_member(:phone_number_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'PhoneNumberId', traits: {"smithy.api#documentation" => "<p>The phone number.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RestorePhoneNumberRequest.type = Types::RestorePhoneNumberRequest
    RestorePhoneNumberResponse.add_member(:phone_number, Smithy::Schema::Shapes::ShapeRef.new(shape: PhoneNumber, location_name: 'PhoneNumber', traits: {"smithy.api#documentation" => "<p>The phone number details.</p>"}))
    RestorePhoneNumberResponse.type = Types::RestorePhoneNumberResponse
    RetentionSettings.add_member(:room_retention_settings, Smithy::Schema::Shapes::ShapeRef.new(shape: RoomRetentionSettings, location_name: 'RoomRetentionSettings', traits: {"smithy.api#documentation" => "<p>The chat room retention settings.</p>"}))
    RetentionSettings.add_member(:conversation_retention_settings, Smithy::Schema::Shapes::ShapeRef.new(shape: ConversationRetentionSettings, location_name: 'ConversationRetentionSettings', traits: {"smithy.api#documentation" => "<p>The chat conversation retention settings.</p>"}))
    RetentionSettings.type = Types::RetentionSettings
    Room.add_member(:room_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'RoomId', traits: {"smithy.api#documentation" => "<p>The room ID.</p>"}))
    Room.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveString, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The room name.</p>"}))
    Room.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'AccountId', traits: {"smithy.api#documentation" => "<p>The Amazon Chime account ID.</p>"}))
    Room.add_member(:created_by, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'CreatedBy', traits: {"smithy.api#documentation" => "<p>The identifier of the room creator.</p>"}))
    Room.add_member(:created_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: 'CreatedTimestamp', traits: {"smithy.api#documentation" => "<p>The room creation timestamp, in ISO 8601 format.</p>"}))
    Room.add_member(:updated_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: 'UpdatedTimestamp', traits: {"smithy.api#documentation" => "<p>The room update timestamp, in ISO 8601 format.</p>"}))
    Room.type = Types::Room
    RoomList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Room)
    RoomMembership.add_member(:room_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'RoomId', traits: {"smithy.api#documentation" => "<p>The room ID.</p>"}))
    RoomMembership.add_member(:member, Smithy::Schema::Shapes::ShapeRef.new(shape: Member, location_name: 'Member', traits: {"smithy.api#documentation" => "<p>The member details, such as email address, name, member ID, and member type.</p>"}))
    RoomMembership.add_member(:role, Smithy::Schema::Shapes::ShapeRef.new(shape: RoomMembershipRole, location_name: 'Role', traits: {"smithy.api#documentation" => "<p>The membership role.</p>"}))
    RoomMembership.add_member(:invited_by, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'InvitedBy', traits: {"smithy.api#documentation" => "<p>The identifier of the user that invited the room member.</p>"}))
    RoomMembership.add_member(:updated_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: 'UpdatedTimestamp', traits: {"smithy.api#documentation" => "<p>The room membership update timestamp, in ISO 8601 format.</p>"}))
    RoomMembership.type = Types::RoomMembership
    RoomMembershipList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RoomMembership)
    RoomMembershipRole.add_member(:administrator, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Administrator', traits: {"smithy.api#enumValue" => "Administrator"}))
    RoomMembershipRole.add_member(:member, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Member', traits: {"smithy.api#enumValue" => "Member"}))
    RoomRetentionSettings.add_member(:retention_days, Smithy::Schema::Shapes::ShapeRef.new(shape: RetentionDays, location_name: 'RetentionDays', traits: {"smithy.api#documentation" => "<p>The number of days for which to retain chat-room messages.</p>"}))
    RoomRetentionSettings.type = Types::RoomRetentionSettings
    SearchAvailablePhoneNumbersRequest.add_member(:area_code, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AreaCode', traits: {"smithy.api#documentation" => "<p>The area code used to filter results. Only applies to the US.</p>", "smithy.api#httpQuery" => "area-code"}))
    SearchAvailablePhoneNumbersRequest.add_member(:city, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'City', traits: {"smithy.api#documentation" => "<p>The city used to filter results. Only applies to the US.</p>", "smithy.api#httpQuery" => "city"}))
    SearchAvailablePhoneNumbersRequest.add_member(:country, Smithy::Schema::Shapes::ShapeRef.new(shape: Alpha2CountryCode, location_name: 'Country', traits: {"smithy.api#documentation" => "<p>The country used to filter results. Defaults to the US Format: ISO 3166-1 alpha-2.</p>", "smithy.api#httpQuery" => "country"}))
    SearchAvailablePhoneNumbersRequest.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'State', traits: {"smithy.api#documentation" => "<p>The state used to filter results. Required only if you provide <code>City</code>. Only applies to the US.</p>", "smithy.api#httpQuery" => "state"}))
    SearchAvailablePhoneNumbersRequest.add_member(:toll_free_prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: TollFreePrefix, location_name: 'TollFreePrefix', traits: {"smithy.api#documentation" => "<p>The toll-free prefix that you use to filter results. Only applies to the US.</p>", "smithy.api#httpQuery" => "toll-free-prefix"}))
    SearchAvailablePhoneNumbersRequest.add_member(:phone_number_type, Smithy::Schema::Shapes::ShapeRef.new(shape: PhoneNumberType, location_name: 'PhoneNumberType', traits: {"smithy.api#documentation" => "<p>The phone number type used to filter results. Required for non-US numbers.</p>", "smithy.api#httpQuery" => "phone-number-type"}))
    SearchAvailablePhoneNumbersRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: PhoneNumberMaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return in a single call.</p>", "smithy.api#httpQuery" => "max-results"}))
    SearchAvailablePhoneNumbersRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token used to retrieve the next page of results.</p>", "smithy.api#httpQuery" => "next-token"}))
    SearchAvailablePhoneNumbersRequest.type = Types::SearchAvailablePhoneNumbersRequest
    SearchAvailablePhoneNumbersResponse.add_member(:e164_phone_numbers, Smithy::Schema::Shapes::ShapeRef.new(shape: E164PhoneNumberList, location_name: 'E164PhoneNumbers', traits: {"smithy.api#documentation" => "<p>List of phone numbers, in E.164 format.</p>"}))
    SearchAvailablePhoneNumbersResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token used to retrieve the next page of search results.</p>"}))
    SearchAvailablePhoneNumbersResponse.type = Types::SearchAvailablePhoneNumbersResponse
    ServiceFailureException.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'Code'))
    ServiceFailureException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    ServiceFailureException.type = Types::ServiceFailureException
    ServiceUnavailableException.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'Code'))
    ServiceUnavailableException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    ServiceUnavailableException.type = Types::ServiceUnavailableException
    SigninDelegateGroup.add_member(:group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'GroupName', traits: {"smithy.api#documentation" => "<p>The group name.</p>"}))
    SigninDelegateGroup.type = Types::SigninDelegateGroup
    SigninDelegateGroupList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SigninDelegateGroup)
    TelephonySettings.add_member(:inbound_calling, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'InboundCalling', traits: {"smithy.api#documentation" => "<p>Allows or denies inbound calling.</p>", "smithy.api#required" => {}}))
    TelephonySettings.add_member(:outbound_calling, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'OutboundCalling', traits: {"smithy.api#documentation" => "<p>Allows or denies outbound calling.</p>", "smithy.api#required" => {}}))
    TelephonySettings.add_member(:sms, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'SMS', traits: {"smithy.api#documentation" => "<p>Allows or denies SMS messaging.</p>", "smithy.api#required" => {}}))
    TelephonySettings.type = Types::TelephonySettings
    ThrottledClientException.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'Code'))
    ThrottledClientException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    ThrottledClientException.type = Types::ThrottledClientException
    UnauthorizedClientException.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'Code'))
    UnauthorizedClientException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    UnauthorizedClientException.type = Types::UnauthorizedClientException
    UnprocessableEntityException.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'Code'))
    UnprocessableEntityException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    UnprocessableEntityException.type = Types::UnprocessableEntityException
    UpdateAccountRequest.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'AccountId', traits: {"smithy.api#documentation" => "<p>The Amazon Chime account ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateAccountRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The new name for the specified Amazon Chime account.</p>"}))
    UpdateAccountRequest.add_member(:default_license, Smithy::Schema::Shapes::ShapeRef.new(shape: License, location_name: 'DefaultLicense', traits: {"smithy.api#documentation" => "<p>The default license applied when you add users to an Amazon Chime account.</p>"}))
    UpdateAccountRequest.type = Types::UpdateAccountRequest
    UpdateAccountResponse.add_member(:account, Smithy::Schema::Shapes::ShapeRef.new(shape: Account, location_name: 'Account', traits: {"smithy.api#documentation" => "<p>The updated Amazon Chime account details.</p>"}))
    UpdateAccountResponse.type = Types::UpdateAccountResponse
    UpdateAccountSettingsRequest.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'AccountId', traits: {"smithy.api#documentation" => "<p>The Amazon Chime account ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateAccountSettingsRequest.add_member(:account_settings, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountSettings, location_name: 'AccountSettings', traits: {"smithy.api#documentation" => "<p>The Amazon Chime account settings to update.</p>", "smithy.api#required" => {}}))
    UpdateAccountSettingsRequest.type = Types::UpdateAccountSettingsRequest
    UpdateAccountSettingsResponse.type = Types::UpdateAccountSettingsResponse
    UpdateBotRequest.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'AccountId', traits: {"smithy.api#documentation" => "<p>The Amazon Chime account ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateBotRequest.add_member(:bot_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'BotId', traits: {"smithy.api#documentation" => "<p>The bot ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateBotRequest.add_member(:disabled, Smithy::Schema::Shapes::ShapeRef.new(shape: NullableBoolean, location_name: 'Disabled', traits: {"smithy.api#documentation" => "<p>When true, stops the specified bot from running in your account.</p>"}))
    UpdateBotRequest.type = Types::UpdateBotRequest
    UpdateBotResponse.add_member(:bot, Smithy::Schema::Shapes::ShapeRef.new(shape: Bot, location_name: 'Bot', traits: {"smithy.api#documentation" => "<p>The updated bot details.</p>"}))
    UpdateBotResponse.type = Types::UpdateBotResponse
    UpdateGlobalSettingsRequest.add_member(:business_calling, Smithy::Schema::Shapes::ShapeRef.new(shape: BusinessCallingSettings, location_name: 'BusinessCalling', traits: {"smithy.api#documentation" => "<p>The Amazon Chime Business Calling settings.</p>"}))
    UpdateGlobalSettingsRequest.add_member(:voice_connector, Smithy::Schema::Shapes::ShapeRef.new(shape: VoiceConnectorSettings, location_name: 'VoiceConnector', traits: {"smithy.api#documentation" => "<p>The Amazon Chime Voice Connector settings.</p>"}))
    UpdateGlobalSettingsRequest.type = Types::UpdateGlobalSettingsRequest
    UpdatePhoneNumberRequest.add_member(:phone_number_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PhoneNumberId', traits: {"smithy.api#documentation" => "<p>The phone number ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdatePhoneNumberRequest.add_member(:product_type, Smithy::Schema::Shapes::ShapeRef.new(shape: PhoneNumberProductType, location_name: 'ProductType', traits: {"smithy.api#documentation" => "<p>The product type.</p>"}))
    UpdatePhoneNumberRequest.add_member(:calling_name, Smithy::Schema::Shapes::ShapeRef.new(shape: CallingName, location_name: 'CallingName', traits: {"smithy.api#documentation" => "<p>The outbound calling name associated with the phone number.</p>"}))
    UpdatePhoneNumberRequest.type = Types::UpdatePhoneNumberRequest
    UpdatePhoneNumberRequestItem.add_member(:phone_number_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'PhoneNumberId', traits: {"smithy.api#documentation" => "<p>The phone number ID to update.</p>", "smithy.api#required" => {}}))
    UpdatePhoneNumberRequestItem.add_member(:product_type, Smithy::Schema::Shapes::ShapeRef.new(shape: PhoneNumberProductType, location_name: 'ProductType', traits: {"smithy.api#documentation" => "<p>The product type to update.</p>"}))
    UpdatePhoneNumberRequestItem.add_member(:calling_name, Smithy::Schema::Shapes::ShapeRef.new(shape: CallingName, location_name: 'CallingName', traits: {"smithy.api#documentation" => "<p>The outbound calling name to update.</p>"}))
    UpdatePhoneNumberRequestItem.type = Types::UpdatePhoneNumberRequestItem
    UpdatePhoneNumberRequestItemList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatePhoneNumberRequestItem)
    UpdatePhoneNumberResponse.add_member(:phone_number, Smithy::Schema::Shapes::ShapeRef.new(shape: PhoneNumber, location_name: 'PhoneNumber', traits: {"smithy.api#documentation" => "<p>The updated phone number details.</p>"}))
    UpdatePhoneNumberResponse.type = Types::UpdatePhoneNumberResponse
    UpdatePhoneNumberSettingsRequest.add_member(:calling_name, Smithy::Schema::Shapes::ShapeRef.new(shape: CallingName, location_name: 'CallingName', traits: {"smithy.api#documentation" => "<p>The default outbound calling name for the account.</p>", "smithy.api#required" => {}}))
    UpdatePhoneNumberSettingsRequest.type = Types::UpdatePhoneNumberSettingsRequest
    UpdateRoomMembershipRequest.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'AccountId', traits: {"smithy.api#documentation" => "<p>The Amazon Chime account ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateRoomMembershipRequest.add_member(:room_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'RoomId', traits: {"smithy.api#documentation" => "<p>The room ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateRoomMembershipRequest.add_member(:member_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'MemberId', traits: {"smithy.api#documentation" => "<p>The member ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateRoomMembershipRequest.add_member(:role, Smithy::Schema::Shapes::ShapeRef.new(shape: RoomMembershipRole, location_name: 'Role', traits: {"smithy.api#documentation" => "<p>The role of the member.</p>"}))
    UpdateRoomMembershipRequest.type = Types::UpdateRoomMembershipRequest
    UpdateRoomMembershipResponse.add_member(:room_membership, Smithy::Schema::Shapes::ShapeRef.new(shape: RoomMembership, location_name: 'RoomMembership', traits: {"smithy.api#documentation" => "<p>The room membership details.</p>"}))
    UpdateRoomMembershipResponse.type = Types::UpdateRoomMembershipResponse
    UpdateRoomRequest.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'AccountId', traits: {"smithy.api#documentation" => "<p>The Amazon Chime account ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateRoomRequest.add_member(:room_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'RoomId', traits: {"smithy.api#documentation" => "<p>The room ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateRoomRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveString, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The room name.</p>"}))
    UpdateRoomRequest.type = Types::UpdateRoomRequest
    UpdateRoomResponse.add_member(:room, Smithy::Schema::Shapes::ShapeRef.new(shape: Room, location_name: 'Room', traits: {"smithy.api#documentation" => "<p>The room details.</p>"}))
    UpdateRoomResponse.type = Types::UpdateRoomResponse
    UpdateUserRequest.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'AccountId', traits: {"smithy.api#documentation" => "<p>The Amazon Chime account ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateUserRequest.add_member(:user_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'UserId', traits: {"smithy.api#documentation" => "<p>The user ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateUserRequest.add_member(:license_type, Smithy::Schema::Shapes::ShapeRef.new(shape: License, location_name: 'LicenseType', traits: {"smithy.api#documentation" => "<p>The user license type to update. This must be a supported license type for the Amazon Chime\n            account that the user belongs to.</p>"}))
    UpdateUserRequest.add_member(:user_type, Smithy::Schema::Shapes::ShapeRef.new(shape: UserType, location_name: 'UserType', traits: {"smithy.api#documentation" => "<p>The user type.</p>"}))
    UpdateUserRequest.add_member(:alexa_for_business_metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: AlexaForBusinessMetadata, location_name: 'AlexaForBusinessMetadata', traits: {"smithy.api#documentation" => "<p>The Alexa for Business metadata.</p>"}))
    UpdateUserRequest.type = Types::UpdateUserRequest
    UpdateUserRequestItem.add_member(:user_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'UserId', traits: {"smithy.api#documentation" => "<p>The user ID.</p>", "smithy.api#required" => {}}))
    UpdateUserRequestItem.add_member(:license_type, Smithy::Schema::Shapes::ShapeRef.new(shape: License, location_name: 'LicenseType', traits: {"smithy.api#documentation" => "<p>The user license type.</p>"}))
    UpdateUserRequestItem.add_member(:user_type, Smithy::Schema::Shapes::ShapeRef.new(shape: UserType, location_name: 'UserType', traits: {"smithy.api#documentation" => "<p>The user type.</p>"}))
    UpdateUserRequestItem.add_member(:alexa_for_business_metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: AlexaForBusinessMetadata, location_name: 'AlexaForBusinessMetadata', traits: {"smithy.api#documentation" => "<p>The Alexa for Business metadata.</p>"}))
    UpdateUserRequestItem.type = Types::UpdateUserRequestItem
    UpdateUserRequestItemList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateUserRequestItem)
    UpdateUserResponse.add_member(:user, Smithy::Schema::Shapes::ShapeRef.new(shape: User, location_name: 'User', traits: {"smithy.api#documentation" => "<p>The updated user details.</p>"}))
    UpdateUserResponse.type = Types::UpdateUserResponse
    UpdateUserSettingsRequest.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AccountId', traits: {"smithy.api#documentation" => "<p>The Amazon Chime account ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateUserSettingsRequest.add_member(:user_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'UserId', traits: {"smithy.api#documentation" => "<p>The user ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateUserSettingsRequest.add_member(:user_settings, Smithy::Schema::Shapes::ShapeRef.new(shape: UserSettings, location_name: 'UserSettings', traits: {"smithy.api#documentation" => "<p>The user settings to update.</p>", "smithy.api#required" => {}}))
    UpdateUserSettingsRequest.type = Types::UpdateUserSettingsRequest
    User.add_member(:user_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'UserId', traits: {"smithy.api#documentation" => "<p>The user ID.</p>", "smithy.api#required" => {}}))
    User.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AccountId', traits: {"smithy.api#documentation" => "<p>The Amazon Chime account ID.</p>"}))
    User.add_member(:primary_email, Smithy::Schema::Shapes::ShapeRef.new(shape: EmailAddress, location_name: 'PrimaryEmail', traits: {"smithy.api#documentation" => "<p>The primary email address of the user.</p>"}))
    User.add_member(:primary_provisioned_number, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveString, location_name: 'PrimaryProvisionedNumber', traits: {"smithy.api#documentation" => "<p>The primary phone number associated with the user.</p>"}))
    User.add_member(:display_name, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveString, location_name: 'DisplayName', traits: {"smithy.api#documentation" => "<p>The display name of the user.</p>"}))
    User.add_member(:license_type, Smithy::Schema::Shapes::ShapeRef.new(shape: License, location_name: 'LicenseType', traits: {"smithy.api#documentation" => "<p>The license type for the user.</p>"}))
    User.add_member(:user_type, Smithy::Schema::Shapes::ShapeRef.new(shape: UserType, location_name: 'UserType', traits: {"smithy.api#documentation" => "<p>The user type.</p>"}))
    User.add_member(:user_registration_status, Smithy::Schema::Shapes::ShapeRef.new(shape: RegistrationStatus, location_name: 'UserRegistrationStatus', traits: {"smithy.api#documentation" => "<p>The user registration status.</p>"}))
    User.add_member(:user_invitation_status, Smithy::Schema::Shapes::ShapeRef.new(shape: InviteStatus, location_name: 'UserInvitationStatus', traits: {"smithy.api#documentation" => "<p>The user invite status.</p>"}))
    User.add_member(:registered_on, Smithy::Schema::Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: 'RegisteredOn', traits: {"smithy.api#documentation" => "<p>Date and time when the user is registered, in ISO 8601 format.</p>"}))
    User.add_member(:invited_on, Smithy::Schema::Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: 'InvitedOn', traits: {"smithy.api#documentation" => "<p>Date and time when the user is invited to the Amazon Chime account, in ISO 8601 format.</p>"}))
    User.add_member(:alexa_for_business_metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: AlexaForBusinessMetadata, location_name: 'AlexaForBusinessMetadata', traits: {"smithy.api#documentation" => "<p>The Alexa for Business metadata.</p>"}))
    User.add_member(:personal_pin, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PersonalPIN', traits: {"smithy.api#documentation" => "<p>The user's personal meeting PIN.</p>"}))
    User.type = Types::User
    UserEmailList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: EmailAddress)
    UserError.add_member(:user_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'UserId', traits: {"smithy.api#documentation" => "<p>The user ID for which the action failed.</p>"}))
    UserError.add_member(:error_code, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'ErrorCode', traits: {"smithy.api#documentation" => "<p>The error code.</p>"}))
    UserError.add_member(:error_message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ErrorMessage', traits: {"smithy.api#documentation" => "<p>The error message.</p>"}))
    UserError.type = Types::UserError
    UserErrorList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: UserError)
    UserIdList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString)
    UserList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: User)
    UserSettings.add_member(:telephony, Smithy::Schema::Shapes::ShapeRef.new(shape: TelephonySettings, location_name: 'Telephony', traits: {"smithy.api#documentation" => "<p>The telephony settings associated with the user.</p>", "smithy.api#required" => {}}))
    UserSettings.type = Types::UserSettings
    UserType.add_member(:private_user, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PrivateUser', traits: {"smithy.api#enumValue" => "PrivateUser"}))
    UserType.add_member(:shared_device, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SharedDevice', traits: {"smithy.api#enumValue" => "SharedDevice"}))
    VoiceConnectorSettings.add_member(:cdr_bucket, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CdrBucket', traits: {"smithy.api#documentation" => "<p>The Amazon S3 bucket designated for call detail record storage.</p>"}))
    VoiceConnectorSettings.type = Types::VoiceConnectorSettings

    UCBuzzConsoleService = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.chime#UCBuzzConsoleService"
      service.name = "UCBuzzConsoleService"
      service.version = "2018-05-01"
      service.traits = {"aws.api#service" => {"sdkId" => "Chime", "arnNamespace" => "chime", "cloudFormationName" => "Chime", "cloudTrailEventSource" => "chime.amazonaws.com", "endpointPrefix" => "chime"}, "aws.auth#sigv4" => {"name" => "chime"}, "aws.protocols#restJson1" => {}, "smithy.api#deprecated" => {"message" => "This namespace has been deprecated"}, "smithy.api#title" => "Amazon Chime"}
      service.add_operation(:associate_phone_number_with_user, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chime#AssociatePhoneNumberWithUser"
        operation.name = "AssociatePhoneNumberWithUser"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociatePhoneNumberWithUserRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociatePhoneNumberWithUserResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/accounts/{AccountId}/users/{UserId}?operation=associate-phone-number", "code" => 200}}
      end)
      service.add_operation(:associate_signin_delegate_groups_with_account, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chime#AssociateSigninDelegateGroupsWithAccount"
        operation.name = "AssociateSigninDelegateGroupsWithAccount"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateSigninDelegateGroupsWithAccountRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateSigninDelegateGroupsWithAccountResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/accounts/{AccountId}?operation=associate-signin-delegate-groups", "code" => 200}}
      end)
      service.add_operation(:batch_create_room_membership, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chime#BatchCreateRoomMembership"
        operation.name = "BatchCreateRoomMembership"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchCreateRoomMembershipRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchCreateRoomMembershipResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/accounts/{AccountId}/rooms/{RoomId}/memberships?operation=batch-create", "code" => 201}}
      end)
      service.add_operation(:batch_delete_phone_number, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chime#BatchDeletePhoneNumber"
        operation.name = "BatchDeletePhoneNumber"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDeletePhoneNumberRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDeletePhoneNumberResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/phone-numbers?operation=batch-delete", "code" => 200}}
      end)
      service.add_operation(:batch_suspend_user, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chime#BatchSuspendUser"
        operation.name = "BatchSuspendUser"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchSuspendUserRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchSuspendUserResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/accounts/{AccountId}/users?operation=suspend", "code" => 200}}
      end)
      service.add_operation(:batch_unsuspend_user, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chime#BatchUnsuspendUser"
        operation.name = "BatchUnsuspendUser"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchUnsuspendUserRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchUnsuspendUserResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/accounts/{AccountId}/users?operation=unsuspend", "code" => 200}}
      end)
      service.add_operation(:batch_update_phone_number, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chime#BatchUpdatePhoneNumber"
        operation.name = "BatchUpdatePhoneNumber"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchUpdatePhoneNumberRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchUpdatePhoneNumberResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/phone-numbers?operation=batch-update", "code" => 200}}
      end)
      service.add_operation(:batch_update_user, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chime#BatchUpdateUser"
        operation.name = "BatchUpdateUser"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchUpdateUserRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchUpdateUserResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/accounts/{AccountId}/users", "code" => 200}}
      end)
      service.add_operation(:create_account, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chime#CreateAccount"
        operation.name = "CreateAccount"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAccountRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAccountResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/accounts", "code" => 201}}
      end)
      service.add_operation(:create_bot, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chime#CreateBot"
        operation.name = "CreateBot"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateBotRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateBotResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/accounts/{AccountId}/bots", "code" => 201}}
      end)
      service.add_operation(:create_meeting_dial_out, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chime#CreateMeetingDialOut"
        operation.name = "CreateMeetingDialOut"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateMeetingDialOutRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateMeetingDialOutResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/meetings/{MeetingId}/dial-outs", "code" => 201}}
      end)
      service.add_operation(:create_phone_number_order, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chime#CreatePhoneNumberOrder"
        operation.name = "CreatePhoneNumberOrder"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreatePhoneNumberOrderRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreatePhoneNumberOrderResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/phone-number-orders", "code" => 201}}
      end)
      service.add_operation(:create_room, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chime#CreateRoom"
        operation.name = "CreateRoom"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateRoomRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateRoomResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/accounts/{AccountId}/rooms", "code" => 201}}
      end)
      service.add_operation(:create_room_membership, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chime#CreateRoomMembership"
        operation.name = "CreateRoomMembership"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateRoomMembershipRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateRoomMembershipResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/accounts/{AccountId}/rooms/{RoomId}/memberships", "code" => 201}}
      end)
      service.add_operation(:create_user, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chime#CreateUser"
        operation.name = "CreateUser"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateUserRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateUserResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/accounts/{AccountId}/users?operation=create", "code" => 201}}
      end)
      service.add_operation(:delete_account, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chime#DeleteAccount"
        operation.name = "DeleteAccount"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAccountRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAccountResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnprocessableEntityException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/accounts/{AccountId}", "code" => 204}}
      end)
      service.add_operation(:delete_events_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chime#DeleteEventsConfiguration"
        operation.name = "DeleteEventsConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteEventsConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/accounts/{AccountId}/bots/{BotId}/events-configuration", "code" => 204}}
      end)
      service.add_operation(:delete_phone_number, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chime#DeletePhoneNumber"
        operation.name = "DeletePhoneNumber"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeletePhoneNumberRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/phone-numbers/{PhoneNumberId}", "code" => 204}}
      end)
      service.add_operation(:delete_room, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chime#DeleteRoom"
        operation.name = "DeleteRoom"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteRoomRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/accounts/{AccountId}/rooms/{RoomId}", "code" => 204}}
      end)
      service.add_operation(:delete_room_membership, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chime#DeleteRoomMembership"
        operation.name = "DeleteRoomMembership"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteRoomMembershipRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/accounts/{AccountId}/rooms/{RoomId}/memberships/{MemberId}", "code" => 204}}
      end)
      service.add_operation(:disassociate_phone_number_from_user, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chime#DisassociatePhoneNumberFromUser"
        operation.name = "DisassociatePhoneNumberFromUser"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociatePhoneNumberFromUserRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociatePhoneNumberFromUserResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/accounts/{AccountId}/users/{UserId}?operation=disassociate-phone-number", "code" => 200}}
      end)
      service.add_operation(:disassociate_signin_delegate_groups_from_account, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chime#DisassociateSigninDelegateGroupsFromAccount"
        operation.name = "DisassociateSigninDelegateGroupsFromAccount"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateSigninDelegateGroupsFromAccountRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateSigninDelegateGroupsFromAccountResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/accounts/{AccountId}?operation=disassociate-signin-delegate-groups", "code" => 200}}
      end)
      service.add_operation(:get_account, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chime#GetAccount"
        operation.name = "GetAccount"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAccountRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAccountResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/accounts/{AccountId}", "code" => 200}}
      end)
      service.add_operation(:get_account_settings, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chime#GetAccountSettings"
        operation.name = "GetAccountSettings"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAccountSettingsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAccountSettingsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/accounts/{AccountId}/settings", "code" => 200}}
      end)
      service.add_operation(:get_bot, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chime#GetBot"
        operation.name = "GetBot"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetBotRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetBotResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/accounts/{AccountId}/bots/{BotId}", "code" => 200}}
      end)
      service.add_operation(:get_events_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chime#GetEventsConfiguration"
        operation.name = "GetEventsConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetEventsConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetEventsConfigurationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/accounts/{AccountId}/bots/{BotId}/events-configuration", "code" => 200}}
      end)
      service.add_operation(:get_global_settings, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chime#GetGlobalSettings"
        operation.name = "GetGlobalSettings"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetGlobalSettingsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/settings", "code" => 200}}
      end)
      service.add_operation(:get_phone_number, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chime#GetPhoneNumber"
        operation.name = "GetPhoneNumber"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetPhoneNumberRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetPhoneNumberResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/phone-numbers/{PhoneNumberId}", "code" => 200}}
      end)
      service.add_operation(:get_phone_number_order, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chime#GetPhoneNumberOrder"
        operation.name = "GetPhoneNumberOrder"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetPhoneNumberOrderRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetPhoneNumberOrderResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/phone-number-orders/{PhoneNumberOrderId}", "code" => 200}}
      end)
      service.add_operation(:get_phone_number_settings, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chime#GetPhoneNumberSettings"
        operation.name = "GetPhoneNumberSettings"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetPhoneNumberSettingsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/settings/phone-number", "code" => 200}}
      end)
      service.add_operation(:get_retention_settings, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chime#GetRetentionSettings"
        operation.name = "GetRetentionSettings"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetRetentionSettingsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetRetentionSettingsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/accounts/{AccountId}/retention-settings", "code" => 200}}
      end)
      service.add_operation(:get_room, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chime#GetRoom"
        operation.name = "GetRoom"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetRoomRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetRoomResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/accounts/{AccountId}/rooms/{RoomId}", "code" => 200}}
      end)
      service.add_operation(:get_user, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chime#GetUser"
        operation.name = "GetUser"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetUserRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetUserResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/accounts/{AccountId}/users/{UserId}", "code" => 200}}
      end)
      service.add_operation(:get_user_settings, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chime#GetUserSettings"
        operation.name = "GetUserSettings"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetUserSettingsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetUserSettingsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/accounts/{AccountId}/users/{UserId}/settings", "code" => 200}}
      end)
      service.add_operation(:invite_users, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chime#InviteUsers"
        operation.name = "InviteUsers"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: InviteUsersRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: InviteUsersResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/accounts/{AccountId}/users?operation=add", "code" => 201}}
      end)
      service.add_operation(:list_accounts, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chime#ListAccounts"
        operation.name = "ListAccounts"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAccountsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAccountsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/accounts", "code" => 200}}
        operation[:paginator] = Paginators::ListAccounts.new
      end)
      service.add_operation(:list_bots, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chime#ListBots"
        operation.name = "ListBots"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListBotsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListBotsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/accounts/{AccountId}/bots", "code" => 200}}
        operation[:paginator] = Paginators::ListBots.new
      end)
      service.add_operation(:list_phone_number_orders, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chime#ListPhoneNumberOrders"
        operation.name = "ListPhoneNumberOrders"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListPhoneNumberOrdersRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListPhoneNumberOrdersResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/phone-number-orders", "code" => 200}}
        operation[:paginator] = Paginators::ListPhoneNumberOrders.new
      end)
      service.add_operation(:list_phone_numbers, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chime#ListPhoneNumbers"
        operation.name = "ListPhoneNumbers"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListPhoneNumbersRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListPhoneNumbersResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/phone-numbers", "code" => 200}}
        operation[:paginator] = Paginators::ListPhoneNumbers.new
      end)
      service.add_operation(:list_room_memberships, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chime#ListRoomMemberships"
        operation.name = "ListRoomMemberships"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListRoomMembershipsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListRoomMembershipsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/accounts/{AccountId}/rooms/{RoomId}/memberships", "code" => 200}}
        operation[:paginator] = Paginators::ListRoomMemberships.new
      end)
      service.add_operation(:list_rooms, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chime#ListRooms"
        operation.name = "ListRooms"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListRoomsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListRoomsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/accounts/{AccountId}/rooms", "code" => 200}}
        operation[:paginator] = Paginators::ListRooms.new
      end)
      service.add_operation(:list_supported_phone_number_countries, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chime#ListSupportedPhoneNumberCountries"
        operation.name = "ListSupportedPhoneNumberCountries"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListSupportedPhoneNumberCountriesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListSupportedPhoneNumberCountriesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/phone-number-countries", "code" => 200}}
      end)
      service.add_operation(:list_users, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chime#ListUsers"
        operation.name = "ListUsers"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListUsersRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListUsersResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/accounts/{AccountId}/users", "code" => 200}}
        operation[:paginator] = Paginators::ListUsers.new
      end)
      service.add_operation(:logout_user, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chime#LogoutUser"
        operation.name = "LogoutUser"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: LogoutUserRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: LogoutUserResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/accounts/{AccountId}/users/{UserId}?operation=logout", "code" => 204}}
      end)
      service.add_operation(:put_events_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chime#PutEventsConfiguration"
        operation.name = "PutEventsConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutEventsConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutEventsConfigurationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/accounts/{AccountId}/bots/{BotId}/events-configuration", "code" => 201}}
      end)
      service.add_operation(:put_retention_settings, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chime#PutRetentionSettings"
        operation.name = "PutRetentionSettings"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutRetentionSettingsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutRetentionSettingsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/accounts/{AccountId}/retention-settings", "code" => 204}}
      end)
      service.add_operation(:redact_conversation_message, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chime#RedactConversationMessage"
        operation.name = "RedactConversationMessage"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: RedactConversationMessageRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: RedactConversationMessageResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/accounts/{AccountId}/conversations/{ConversationId}/messages/{MessageId}?operation=redact", "code" => 200}}
      end)
      service.add_operation(:redact_room_message, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chime#RedactRoomMessage"
        operation.name = "RedactRoomMessage"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: RedactRoomMessageRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: RedactRoomMessageResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/accounts/{AccountId}/rooms/{RoomId}/messages/{MessageId}?operation=redact", "code" => 200}}
      end)
      service.add_operation(:regenerate_security_token, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chime#RegenerateSecurityToken"
        operation.name = "RegenerateSecurityToken"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: RegenerateSecurityTokenRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: RegenerateSecurityTokenResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/accounts/{AccountId}/bots/{BotId}?operation=regenerate-security-token", "code" => 200}}
      end)
      service.add_operation(:reset_personal_pin, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chime#ResetPersonalPIN"
        operation.name = "ResetPersonalPIN"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ResetPersonalPINRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ResetPersonalPINResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/accounts/{AccountId}/users/{UserId}?operation=reset-personal-pin", "code" => 200}}
      end)
      service.add_operation(:restore_phone_number, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chime#RestorePhoneNumber"
        operation.name = "RestorePhoneNumber"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: RestorePhoneNumberRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: RestorePhoneNumberResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/phone-numbers/{PhoneNumberId}?operation=restore", "code" => 200}}
      end)
      service.add_operation(:search_available_phone_numbers, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chime#SearchAvailablePhoneNumbers"
        operation.name = "SearchAvailablePhoneNumbers"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: SearchAvailablePhoneNumbersRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: SearchAvailablePhoneNumbersResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/search?type=phone-numbers", "code" => 200}}
        operation[:paginator] = Paginators::SearchAvailablePhoneNumbers.new
      end)
      service.add_operation(:update_account, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chime#UpdateAccount"
        operation.name = "UpdateAccount"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAccountRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAccountResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/accounts/{AccountId}", "code" => 200}}
      end)
      service.add_operation(:update_account_settings, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chime#UpdateAccountSettings"
        operation.name = "UpdateAccountSettings"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAccountSettingsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAccountSettingsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/accounts/{AccountId}/settings", "code" => 204}}
      end)
      service.add_operation(:update_bot, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chime#UpdateBot"
        operation.name = "UpdateBot"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateBotRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateBotResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/accounts/{AccountId}/bots/{BotId}", "code" => 200}}
      end)
      service.add_operation(:update_global_settings, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chime#UpdateGlobalSettings"
        operation.name = "UpdateGlobalSettings"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateGlobalSettingsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/settings", "code" => 204}}
      end)
      service.add_operation(:update_phone_number, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chime#UpdatePhoneNumber"
        operation.name = "UpdatePhoneNumber"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatePhoneNumberRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatePhoneNumberResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/phone-numbers/{PhoneNumberId}", "code" => 200}}
      end)
      service.add_operation(:update_phone_number_settings, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chime#UpdatePhoneNumberSettings"
        operation.name = "UpdatePhoneNumberSettings"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatePhoneNumberSettingsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/settings/phone-number", "code" => 204}}
      end)
      service.add_operation(:update_room, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chime#UpdateRoom"
        operation.name = "UpdateRoom"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateRoomRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateRoomResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/accounts/{AccountId}/rooms/{RoomId}", "code" => 200}}
      end)
      service.add_operation(:update_room_membership, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chime#UpdateRoomMembership"
        operation.name = "UpdateRoomMembership"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateRoomMembershipRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateRoomMembershipResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/accounts/{AccountId}/rooms/{RoomId}/memberships/{MemberId}", "code" => 200}}
      end)
      service.add_operation(:update_user, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chime#UpdateUser"
        operation.name = "UpdateUser"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateUserRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateUserResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/accounts/{AccountId}/users/{UserId}", "code" => 200}}
      end)
      service.add_operation(:update_user_settings, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chime#UpdateUserSettings"
        operation.name = "UpdateUserSettings"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateUserSettingsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/accounts/{AccountId}/users/{UserId}/settings", "code" => 204}}
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
