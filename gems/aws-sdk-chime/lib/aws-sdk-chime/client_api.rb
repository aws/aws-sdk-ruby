# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Chime
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    Account = Shapes::StructureShape.new(name: 'Account')
    AccountList = Shapes::ListShape.new(name: 'AccountList')
    AccountName = Shapes::StringShape.new(name: 'AccountName')
    AccountSettings = Shapes::StructureShape.new(name: 'AccountSettings')
    AccountType = Shapes::StringShape.new(name: 'AccountType')
    AlexaForBusinessMetadata = Shapes::StructureShape.new(name: 'AlexaForBusinessMetadata')
    Alpha2CountryCode = Shapes::StringShape.new(name: 'Alpha2CountryCode')
    AreaCode = Shapes::StringShape.new(name: 'AreaCode')
    Arn = Shapes::StringShape.new(name: 'Arn')
    AssociatePhoneNumberWithUserRequest = Shapes::StructureShape.new(name: 'AssociatePhoneNumberWithUserRequest')
    AssociatePhoneNumberWithUserResponse = Shapes::StructureShape.new(name: 'AssociatePhoneNumberWithUserResponse')
    AssociatePhoneNumbersWithVoiceConnectorGroupRequest = Shapes::StructureShape.new(name: 'AssociatePhoneNumbersWithVoiceConnectorGroupRequest')
    AssociatePhoneNumbersWithVoiceConnectorGroupResponse = Shapes::StructureShape.new(name: 'AssociatePhoneNumbersWithVoiceConnectorGroupResponse')
    AssociatePhoneNumbersWithVoiceConnectorRequest = Shapes::StructureShape.new(name: 'AssociatePhoneNumbersWithVoiceConnectorRequest')
    AssociatePhoneNumbersWithVoiceConnectorResponse = Shapes::StructureShape.new(name: 'AssociatePhoneNumbersWithVoiceConnectorResponse')
    AssociateSigninDelegateGroupsWithAccountRequest = Shapes::StructureShape.new(name: 'AssociateSigninDelegateGroupsWithAccountRequest')
    AssociateSigninDelegateGroupsWithAccountResponse = Shapes::StructureShape.new(name: 'AssociateSigninDelegateGroupsWithAccountResponse')
    Attendee = Shapes::StructureShape.new(name: 'Attendee')
    AttendeeList = Shapes::ListShape.new(name: 'AttendeeList')
    AttendeeTagKeyList = Shapes::ListShape.new(name: 'AttendeeTagKeyList')
    AttendeeTagList = Shapes::ListShape.new(name: 'AttendeeTagList')
    BadRequestException = Shapes::StructureShape.new(name: 'BadRequestException')
    BatchCreateAttendeeErrorList = Shapes::ListShape.new(name: 'BatchCreateAttendeeErrorList')
    BatchCreateAttendeeRequest = Shapes::StructureShape.new(name: 'BatchCreateAttendeeRequest')
    BatchCreateAttendeeResponse = Shapes::StructureShape.new(name: 'BatchCreateAttendeeResponse')
    BatchCreateRoomMembershipRequest = Shapes::StructureShape.new(name: 'BatchCreateRoomMembershipRequest')
    BatchCreateRoomMembershipResponse = Shapes::StructureShape.new(name: 'BatchCreateRoomMembershipResponse')
    BatchDeletePhoneNumberRequest = Shapes::StructureShape.new(name: 'BatchDeletePhoneNumberRequest')
    BatchDeletePhoneNumberResponse = Shapes::StructureShape.new(name: 'BatchDeletePhoneNumberResponse')
    BatchSuspendUserRequest = Shapes::StructureShape.new(name: 'BatchSuspendUserRequest')
    BatchSuspendUserResponse = Shapes::StructureShape.new(name: 'BatchSuspendUserResponse')
    BatchUnsuspendUserRequest = Shapes::StructureShape.new(name: 'BatchUnsuspendUserRequest')
    BatchUnsuspendUserResponse = Shapes::StructureShape.new(name: 'BatchUnsuspendUserResponse')
    BatchUpdatePhoneNumberRequest = Shapes::StructureShape.new(name: 'BatchUpdatePhoneNumberRequest')
    BatchUpdatePhoneNumberResponse = Shapes::StructureShape.new(name: 'BatchUpdatePhoneNumberResponse')
    BatchUpdateUserRequest = Shapes::StructureShape.new(name: 'BatchUpdateUserRequest')
    BatchUpdateUserResponse = Shapes::StructureShape.new(name: 'BatchUpdateUserResponse')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    Bot = Shapes::StructureShape.new(name: 'Bot')
    BotList = Shapes::ListShape.new(name: 'BotList')
    BotType = Shapes::StringShape.new(name: 'BotType')
    BusinessCallingSettings = Shapes::StructureShape.new(name: 'BusinessCallingSettings')
    CallingName = Shapes::StringShape.new(name: 'CallingName')
    CallingNameStatus = Shapes::StringShape.new(name: 'CallingNameStatus')
    CallingRegion = Shapes::StringShape.new(name: 'CallingRegion')
    CallingRegionList = Shapes::ListShape.new(name: 'CallingRegionList')
    Capability = Shapes::StringShape.new(name: 'Capability')
    CapabilityList = Shapes::ListShape.new(name: 'CapabilityList')
    ClientRequestToken = Shapes::StringShape.new(name: 'ClientRequestToken')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    ConversationRetentionSettings = Shapes::StructureShape.new(name: 'ConversationRetentionSettings')
    Country = Shapes::StringShape.new(name: 'Country')
    CountryList = Shapes::ListShape.new(name: 'CountryList')
    CpsLimit = Shapes::IntegerShape.new(name: 'CpsLimit')
    CreateAccountRequest = Shapes::StructureShape.new(name: 'CreateAccountRequest')
    CreateAccountResponse = Shapes::StructureShape.new(name: 'CreateAccountResponse')
    CreateAttendeeError = Shapes::StructureShape.new(name: 'CreateAttendeeError')
    CreateAttendeeRequest = Shapes::StructureShape.new(name: 'CreateAttendeeRequest')
    CreateAttendeeRequestItem = Shapes::StructureShape.new(name: 'CreateAttendeeRequestItem')
    CreateAttendeeRequestItemList = Shapes::ListShape.new(name: 'CreateAttendeeRequestItemList')
    CreateAttendeeResponse = Shapes::StructureShape.new(name: 'CreateAttendeeResponse')
    CreateBotRequest = Shapes::StructureShape.new(name: 'CreateBotRequest')
    CreateBotResponse = Shapes::StructureShape.new(name: 'CreateBotResponse')
    CreateMeetingRequest = Shapes::StructureShape.new(name: 'CreateMeetingRequest')
    CreateMeetingResponse = Shapes::StructureShape.new(name: 'CreateMeetingResponse')
    CreateMeetingWithAttendeesRequest = Shapes::StructureShape.new(name: 'CreateMeetingWithAttendeesRequest')
    CreateMeetingWithAttendeesRequestItemList = Shapes::ListShape.new(name: 'CreateMeetingWithAttendeesRequestItemList')
    CreateMeetingWithAttendeesResponse = Shapes::StructureShape.new(name: 'CreateMeetingWithAttendeesResponse')
    CreatePhoneNumberOrderRequest = Shapes::StructureShape.new(name: 'CreatePhoneNumberOrderRequest')
    CreatePhoneNumberOrderResponse = Shapes::StructureShape.new(name: 'CreatePhoneNumberOrderResponse')
    CreateProxySessionRequest = Shapes::StructureShape.new(name: 'CreateProxySessionRequest')
    CreateProxySessionResponse = Shapes::StructureShape.new(name: 'CreateProxySessionResponse')
    CreateRoomMembershipRequest = Shapes::StructureShape.new(name: 'CreateRoomMembershipRequest')
    CreateRoomMembershipResponse = Shapes::StructureShape.new(name: 'CreateRoomMembershipResponse')
    CreateRoomRequest = Shapes::StructureShape.new(name: 'CreateRoomRequest')
    CreateRoomResponse = Shapes::StructureShape.new(name: 'CreateRoomResponse')
    CreateUserRequest = Shapes::StructureShape.new(name: 'CreateUserRequest')
    CreateUserResponse = Shapes::StructureShape.new(name: 'CreateUserResponse')
    CreateVoiceConnectorGroupRequest = Shapes::StructureShape.new(name: 'CreateVoiceConnectorGroupRequest')
    CreateVoiceConnectorGroupResponse = Shapes::StructureShape.new(name: 'CreateVoiceConnectorGroupResponse')
    CreateVoiceConnectorRequest = Shapes::StructureShape.new(name: 'CreateVoiceConnectorRequest')
    CreateVoiceConnectorResponse = Shapes::StructureShape.new(name: 'CreateVoiceConnectorResponse')
    Credential = Shapes::StructureShape.new(name: 'Credential')
    CredentialList = Shapes::ListShape.new(name: 'CredentialList')
    DNISEmergencyCallingConfiguration = Shapes::StructureShape.new(name: 'DNISEmergencyCallingConfiguration')
    DNISEmergencyCallingConfigurationList = Shapes::ListShape.new(name: 'DNISEmergencyCallingConfigurationList')
    DataRetentionInHours = Shapes::IntegerShape.new(name: 'DataRetentionInHours')
    DeleteAccountRequest = Shapes::StructureShape.new(name: 'DeleteAccountRequest')
    DeleteAccountResponse = Shapes::StructureShape.new(name: 'DeleteAccountResponse')
    DeleteAttendeeRequest = Shapes::StructureShape.new(name: 'DeleteAttendeeRequest')
    DeleteEventsConfigurationRequest = Shapes::StructureShape.new(name: 'DeleteEventsConfigurationRequest')
    DeleteMeetingRequest = Shapes::StructureShape.new(name: 'DeleteMeetingRequest')
    DeletePhoneNumberRequest = Shapes::StructureShape.new(name: 'DeletePhoneNumberRequest')
    DeleteProxySessionRequest = Shapes::StructureShape.new(name: 'DeleteProxySessionRequest')
    DeleteRoomMembershipRequest = Shapes::StructureShape.new(name: 'DeleteRoomMembershipRequest')
    DeleteRoomRequest = Shapes::StructureShape.new(name: 'DeleteRoomRequest')
    DeleteVoiceConnectorEmergencyCallingConfigurationRequest = Shapes::StructureShape.new(name: 'DeleteVoiceConnectorEmergencyCallingConfigurationRequest')
    DeleteVoiceConnectorGroupRequest = Shapes::StructureShape.new(name: 'DeleteVoiceConnectorGroupRequest')
    DeleteVoiceConnectorOriginationRequest = Shapes::StructureShape.new(name: 'DeleteVoiceConnectorOriginationRequest')
    DeleteVoiceConnectorProxyRequest = Shapes::StructureShape.new(name: 'DeleteVoiceConnectorProxyRequest')
    DeleteVoiceConnectorRequest = Shapes::StructureShape.new(name: 'DeleteVoiceConnectorRequest')
    DeleteVoiceConnectorStreamingConfigurationRequest = Shapes::StructureShape.new(name: 'DeleteVoiceConnectorStreamingConfigurationRequest')
    DeleteVoiceConnectorTerminationCredentialsRequest = Shapes::StructureShape.new(name: 'DeleteVoiceConnectorTerminationCredentialsRequest')
    DeleteVoiceConnectorTerminationRequest = Shapes::StructureShape.new(name: 'DeleteVoiceConnectorTerminationRequest')
    DisassociatePhoneNumberFromUserRequest = Shapes::StructureShape.new(name: 'DisassociatePhoneNumberFromUserRequest')
    DisassociatePhoneNumberFromUserResponse = Shapes::StructureShape.new(name: 'DisassociatePhoneNumberFromUserResponse')
    DisassociatePhoneNumbersFromVoiceConnectorGroupRequest = Shapes::StructureShape.new(name: 'DisassociatePhoneNumbersFromVoiceConnectorGroupRequest')
    DisassociatePhoneNumbersFromVoiceConnectorGroupResponse = Shapes::StructureShape.new(name: 'DisassociatePhoneNumbersFromVoiceConnectorGroupResponse')
    DisassociatePhoneNumbersFromVoiceConnectorRequest = Shapes::StructureShape.new(name: 'DisassociatePhoneNumbersFromVoiceConnectorRequest')
    DisassociatePhoneNumbersFromVoiceConnectorResponse = Shapes::StructureShape.new(name: 'DisassociatePhoneNumbersFromVoiceConnectorResponse')
    DisassociateSigninDelegateGroupsFromAccountRequest = Shapes::StructureShape.new(name: 'DisassociateSigninDelegateGroupsFromAccountRequest')
    DisassociateSigninDelegateGroupsFromAccountResponse = Shapes::StructureShape.new(name: 'DisassociateSigninDelegateGroupsFromAccountResponse')
    E164PhoneNumber = Shapes::StringShape.new(name: 'E164PhoneNumber')
    E164PhoneNumberList = Shapes::ListShape.new(name: 'E164PhoneNumberList')
    EmailAddress = Shapes::StringShape.new(name: 'EmailAddress')
    EmailStatus = Shapes::StringShape.new(name: 'EmailStatus')
    EmergencyCallingConfiguration = Shapes::StructureShape.new(name: 'EmergencyCallingConfiguration')
    ErrorCode = Shapes::StringShape.new(name: 'ErrorCode')
    EventsConfiguration = Shapes::StructureShape.new(name: 'EventsConfiguration')
    ExternalMeetingIdType = Shapes::StringShape.new(name: 'ExternalMeetingIdType')
    ExternalUserIdType = Shapes::StringShape.new(name: 'ExternalUserIdType')
    ForbiddenException = Shapes::StructureShape.new(name: 'ForbiddenException')
    GeoMatchLevel = Shapes::StringShape.new(name: 'GeoMatchLevel')
    GeoMatchParams = Shapes::StructureShape.new(name: 'GeoMatchParams')
    GetAccountRequest = Shapes::StructureShape.new(name: 'GetAccountRequest')
    GetAccountResponse = Shapes::StructureShape.new(name: 'GetAccountResponse')
    GetAccountSettingsRequest = Shapes::StructureShape.new(name: 'GetAccountSettingsRequest')
    GetAccountSettingsResponse = Shapes::StructureShape.new(name: 'GetAccountSettingsResponse')
    GetAttendeeRequest = Shapes::StructureShape.new(name: 'GetAttendeeRequest')
    GetAttendeeResponse = Shapes::StructureShape.new(name: 'GetAttendeeResponse')
    GetBotRequest = Shapes::StructureShape.new(name: 'GetBotRequest')
    GetBotResponse = Shapes::StructureShape.new(name: 'GetBotResponse')
    GetEventsConfigurationRequest = Shapes::StructureShape.new(name: 'GetEventsConfigurationRequest')
    GetEventsConfigurationResponse = Shapes::StructureShape.new(name: 'GetEventsConfigurationResponse')
    GetGlobalSettingsResponse = Shapes::StructureShape.new(name: 'GetGlobalSettingsResponse')
    GetMeetingRequest = Shapes::StructureShape.new(name: 'GetMeetingRequest')
    GetMeetingResponse = Shapes::StructureShape.new(name: 'GetMeetingResponse')
    GetPhoneNumberOrderRequest = Shapes::StructureShape.new(name: 'GetPhoneNumberOrderRequest')
    GetPhoneNumberOrderResponse = Shapes::StructureShape.new(name: 'GetPhoneNumberOrderResponse')
    GetPhoneNumberRequest = Shapes::StructureShape.new(name: 'GetPhoneNumberRequest')
    GetPhoneNumberResponse = Shapes::StructureShape.new(name: 'GetPhoneNumberResponse')
    GetPhoneNumberSettingsResponse = Shapes::StructureShape.new(name: 'GetPhoneNumberSettingsResponse')
    GetProxySessionRequest = Shapes::StructureShape.new(name: 'GetProxySessionRequest')
    GetProxySessionResponse = Shapes::StructureShape.new(name: 'GetProxySessionResponse')
    GetRetentionSettingsRequest = Shapes::StructureShape.new(name: 'GetRetentionSettingsRequest')
    GetRetentionSettingsResponse = Shapes::StructureShape.new(name: 'GetRetentionSettingsResponse')
    GetRoomRequest = Shapes::StructureShape.new(name: 'GetRoomRequest')
    GetRoomResponse = Shapes::StructureShape.new(name: 'GetRoomResponse')
    GetUserRequest = Shapes::StructureShape.new(name: 'GetUserRequest')
    GetUserResponse = Shapes::StructureShape.new(name: 'GetUserResponse')
    GetUserSettingsRequest = Shapes::StructureShape.new(name: 'GetUserSettingsRequest')
    GetUserSettingsResponse = Shapes::StructureShape.new(name: 'GetUserSettingsResponse')
    GetVoiceConnectorEmergencyCallingConfigurationRequest = Shapes::StructureShape.new(name: 'GetVoiceConnectorEmergencyCallingConfigurationRequest')
    GetVoiceConnectorEmergencyCallingConfigurationResponse = Shapes::StructureShape.new(name: 'GetVoiceConnectorEmergencyCallingConfigurationResponse')
    GetVoiceConnectorGroupRequest = Shapes::StructureShape.new(name: 'GetVoiceConnectorGroupRequest')
    GetVoiceConnectorGroupResponse = Shapes::StructureShape.new(name: 'GetVoiceConnectorGroupResponse')
    GetVoiceConnectorLoggingConfigurationRequest = Shapes::StructureShape.new(name: 'GetVoiceConnectorLoggingConfigurationRequest')
    GetVoiceConnectorLoggingConfigurationResponse = Shapes::StructureShape.new(name: 'GetVoiceConnectorLoggingConfigurationResponse')
    GetVoiceConnectorOriginationRequest = Shapes::StructureShape.new(name: 'GetVoiceConnectorOriginationRequest')
    GetVoiceConnectorOriginationResponse = Shapes::StructureShape.new(name: 'GetVoiceConnectorOriginationResponse')
    GetVoiceConnectorProxyRequest = Shapes::StructureShape.new(name: 'GetVoiceConnectorProxyRequest')
    GetVoiceConnectorProxyResponse = Shapes::StructureShape.new(name: 'GetVoiceConnectorProxyResponse')
    GetVoiceConnectorRequest = Shapes::StructureShape.new(name: 'GetVoiceConnectorRequest')
    GetVoiceConnectorResponse = Shapes::StructureShape.new(name: 'GetVoiceConnectorResponse')
    GetVoiceConnectorStreamingConfigurationRequest = Shapes::StructureShape.new(name: 'GetVoiceConnectorStreamingConfigurationRequest')
    GetVoiceConnectorStreamingConfigurationResponse = Shapes::StructureShape.new(name: 'GetVoiceConnectorStreamingConfigurationResponse')
    GetVoiceConnectorTerminationHealthRequest = Shapes::StructureShape.new(name: 'GetVoiceConnectorTerminationHealthRequest')
    GetVoiceConnectorTerminationHealthResponse = Shapes::StructureShape.new(name: 'GetVoiceConnectorTerminationHealthResponse')
    GetVoiceConnectorTerminationRequest = Shapes::StructureShape.new(name: 'GetVoiceConnectorTerminationRequest')
    GetVoiceConnectorTerminationResponse = Shapes::StructureShape.new(name: 'GetVoiceConnectorTerminationResponse')
    GuidString = Shapes::StringShape.new(name: 'GuidString')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    Invite = Shapes::StructureShape.new(name: 'Invite')
    InviteList = Shapes::ListShape.new(name: 'InviteList')
    InviteStatus = Shapes::StringShape.new(name: 'InviteStatus')
    InviteUsersRequest = Shapes::StructureShape.new(name: 'InviteUsersRequest')
    InviteUsersResponse = Shapes::StructureShape.new(name: 'InviteUsersResponse')
    Iso8601Timestamp = Shapes::TimestampShape.new(name: 'Iso8601Timestamp', timestampFormat: "iso8601")
    JoinTokenString = Shapes::StringShape.new(name: 'JoinTokenString')
    License = Shapes::StringShape.new(name: 'License')
    LicenseList = Shapes::ListShape.new(name: 'LicenseList')
    ListAccountsRequest = Shapes::StructureShape.new(name: 'ListAccountsRequest')
    ListAccountsResponse = Shapes::StructureShape.new(name: 'ListAccountsResponse')
    ListAttendeeTagsRequest = Shapes::StructureShape.new(name: 'ListAttendeeTagsRequest')
    ListAttendeeTagsResponse = Shapes::StructureShape.new(name: 'ListAttendeeTagsResponse')
    ListAttendeesRequest = Shapes::StructureShape.new(name: 'ListAttendeesRequest')
    ListAttendeesResponse = Shapes::StructureShape.new(name: 'ListAttendeesResponse')
    ListBotsRequest = Shapes::StructureShape.new(name: 'ListBotsRequest')
    ListBotsResponse = Shapes::StructureShape.new(name: 'ListBotsResponse')
    ListMeetingTagsRequest = Shapes::StructureShape.new(name: 'ListMeetingTagsRequest')
    ListMeetingTagsResponse = Shapes::StructureShape.new(name: 'ListMeetingTagsResponse')
    ListMeetingsRequest = Shapes::StructureShape.new(name: 'ListMeetingsRequest')
    ListMeetingsResponse = Shapes::StructureShape.new(name: 'ListMeetingsResponse')
    ListPhoneNumberOrdersRequest = Shapes::StructureShape.new(name: 'ListPhoneNumberOrdersRequest')
    ListPhoneNumberOrdersResponse = Shapes::StructureShape.new(name: 'ListPhoneNumberOrdersResponse')
    ListPhoneNumbersRequest = Shapes::StructureShape.new(name: 'ListPhoneNumbersRequest')
    ListPhoneNumbersResponse = Shapes::StructureShape.new(name: 'ListPhoneNumbersResponse')
    ListProxySessionsRequest = Shapes::StructureShape.new(name: 'ListProxySessionsRequest')
    ListProxySessionsResponse = Shapes::StructureShape.new(name: 'ListProxySessionsResponse')
    ListRoomMembershipsRequest = Shapes::StructureShape.new(name: 'ListRoomMembershipsRequest')
    ListRoomMembershipsResponse = Shapes::StructureShape.new(name: 'ListRoomMembershipsResponse')
    ListRoomsRequest = Shapes::StructureShape.new(name: 'ListRoomsRequest')
    ListRoomsResponse = Shapes::StructureShape.new(name: 'ListRoomsResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    ListUsersRequest = Shapes::StructureShape.new(name: 'ListUsersRequest')
    ListUsersResponse = Shapes::StructureShape.new(name: 'ListUsersResponse')
    ListVoiceConnectorGroupsRequest = Shapes::StructureShape.new(name: 'ListVoiceConnectorGroupsRequest')
    ListVoiceConnectorGroupsResponse = Shapes::StructureShape.new(name: 'ListVoiceConnectorGroupsResponse')
    ListVoiceConnectorTerminationCredentialsRequest = Shapes::StructureShape.new(name: 'ListVoiceConnectorTerminationCredentialsRequest')
    ListVoiceConnectorTerminationCredentialsResponse = Shapes::StructureShape.new(name: 'ListVoiceConnectorTerminationCredentialsResponse')
    ListVoiceConnectorsRequest = Shapes::StructureShape.new(name: 'ListVoiceConnectorsRequest')
    ListVoiceConnectorsResponse = Shapes::StructureShape.new(name: 'ListVoiceConnectorsResponse')
    LoggingConfiguration = Shapes::StructureShape.new(name: 'LoggingConfiguration')
    LogoutUserRequest = Shapes::StructureShape.new(name: 'LogoutUserRequest')
    LogoutUserResponse = Shapes::StructureShape.new(name: 'LogoutUserResponse')
    MediaPlacement = Shapes::StructureShape.new(name: 'MediaPlacement')
    Meeting = Shapes::StructureShape.new(name: 'Meeting')
    MeetingList = Shapes::ListShape.new(name: 'MeetingList')
    MeetingNotificationConfiguration = Shapes::StructureShape.new(name: 'MeetingNotificationConfiguration')
    MeetingTagKeyList = Shapes::ListShape.new(name: 'MeetingTagKeyList')
    MeetingTagList = Shapes::ListShape.new(name: 'MeetingTagList')
    Member = Shapes::StructureShape.new(name: 'Member')
    MemberError = Shapes::StructureShape.new(name: 'MemberError')
    MemberErrorList = Shapes::ListShape.new(name: 'MemberErrorList')
    MemberType = Shapes::StringShape.new(name: 'MemberType')
    MembershipItem = Shapes::StructureShape.new(name: 'MembershipItem')
    MembershipItemList = Shapes::ListShape.new(name: 'MembershipItemList')
    NextTokenString = Shapes::StringShape.new(name: 'NextTokenString')
    NonEmptyString = Shapes::StringShape.new(name: 'NonEmptyString')
    NonEmptyString128 = Shapes::StringShape.new(name: 'NonEmptyString128')
    NonEmptyStringList = Shapes::ListShape.new(name: 'NonEmptyStringList')
    NotFoundException = Shapes::StructureShape.new(name: 'NotFoundException')
    NotificationTarget = Shapes::StringShape.new(name: 'NotificationTarget')
    NullableBoolean = Shapes::BooleanShape.new(name: 'NullableBoolean')
    NumberSelectionBehavior = Shapes::StringShape.new(name: 'NumberSelectionBehavior')
    OrderedPhoneNumber = Shapes::StructureShape.new(name: 'OrderedPhoneNumber')
    OrderedPhoneNumberList = Shapes::ListShape.new(name: 'OrderedPhoneNumberList')
    OrderedPhoneNumberStatus = Shapes::StringShape.new(name: 'OrderedPhoneNumberStatus')
    Origination = Shapes::StructureShape.new(name: 'Origination')
    OriginationRoute = Shapes::StructureShape.new(name: 'OriginationRoute')
    OriginationRouteList = Shapes::ListShape.new(name: 'OriginationRouteList')
    OriginationRoutePriority = Shapes::IntegerShape.new(name: 'OriginationRoutePriority')
    OriginationRouteProtocol = Shapes::StringShape.new(name: 'OriginationRouteProtocol')
    OriginationRouteWeight = Shapes::IntegerShape.new(name: 'OriginationRouteWeight')
    Participant = Shapes::StructureShape.new(name: 'Participant')
    ParticipantPhoneNumberList = Shapes::ListShape.new(name: 'ParticipantPhoneNumberList')
    Participants = Shapes::ListShape.new(name: 'Participants')
    PhoneNumber = Shapes::StructureShape.new(name: 'PhoneNumber')
    PhoneNumberAssociation = Shapes::StructureShape.new(name: 'PhoneNumberAssociation')
    PhoneNumberAssociationList = Shapes::ListShape.new(name: 'PhoneNumberAssociationList')
    PhoneNumberAssociationName = Shapes::StringShape.new(name: 'PhoneNumberAssociationName')
    PhoneNumberCapabilities = Shapes::StructureShape.new(name: 'PhoneNumberCapabilities')
    PhoneNumberError = Shapes::StructureShape.new(name: 'PhoneNumberError')
    PhoneNumberErrorList = Shapes::ListShape.new(name: 'PhoneNumberErrorList')
    PhoneNumberList = Shapes::ListShape.new(name: 'PhoneNumberList')
    PhoneNumberMaxResults = Shapes::IntegerShape.new(name: 'PhoneNumberMaxResults')
    PhoneNumberOrder = Shapes::StructureShape.new(name: 'PhoneNumberOrder')
    PhoneNumberOrderList = Shapes::ListShape.new(name: 'PhoneNumberOrderList')
    PhoneNumberOrderStatus = Shapes::StringShape.new(name: 'PhoneNumberOrderStatus')
    PhoneNumberProductType = Shapes::StringShape.new(name: 'PhoneNumberProductType')
    PhoneNumberStatus = Shapes::StringShape.new(name: 'PhoneNumberStatus')
    PhoneNumberType = Shapes::StringShape.new(name: 'PhoneNumberType')
    Port = Shapes::IntegerShape.new(name: 'Port')
    PositiveInteger = Shapes::IntegerShape.new(name: 'PositiveInteger')
    ProfileServiceMaxResults = Shapes::IntegerShape.new(name: 'ProfileServiceMaxResults')
    Proxy = Shapes::StructureShape.new(name: 'Proxy')
    ProxySession = Shapes::StructureShape.new(name: 'ProxySession')
    ProxySessionNameString = Shapes::StringShape.new(name: 'ProxySessionNameString')
    ProxySessionStatus = Shapes::StringShape.new(name: 'ProxySessionStatus')
    ProxySessions = Shapes::ListShape.new(name: 'ProxySessions')
    PutEventsConfigurationRequest = Shapes::StructureShape.new(name: 'PutEventsConfigurationRequest')
    PutEventsConfigurationResponse = Shapes::StructureShape.new(name: 'PutEventsConfigurationResponse')
    PutRetentionSettingsRequest = Shapes::StructureShape.new(name: 'PutRetentionSettingsRequest')
    PutRetentionSettingsResponse = Shapes::StructureShape.new(name: 'PutRetentionSettingsResponse')
    PutVoiceConnectorEmergencyCallingConfigurationRequest = Shapes::StructureShape.new(name: 'PutVoiceConnectorEmergencyCallingConfigurationRequest')
    PutVoiceConnectorEmergencyCallingConfigurationResponse = Shapes::StructureShape.new(name: 'PutVoiceConnectorEmergencyCallingConfigurationResponse')
    PutVoiceConnectorLoggingConfigurationRequest = Shapes::StructureShape.new(name: 'PutVoiceConnectorLoggingConfigurationRequest')
    PutVoiceConnectorLoggingConfigurationResponse = Shapes::StructureShape.new(name: 'PutVoiceConnectorLoggingConfigurationResponse')
    PutVoiceConnectorOriginationRequest = Shapes::StructureShape.new(name: 'PutVoiceConnectorOriginationRequest')
    PutVoiceConnectorOriginationResponse = Shapes::StructureShape.new(name: 'PutVoiceConnectorOriginationResponse')
    PutVoiceConnectorProxyRequest = Shapes::StructureShape.new(name: 'PutVoiceConnectorProxyRequest')
    PutVoiceConnectorProxyResponse = Shapes::StructureShape.new(name: 'PutVoiceConnectorProxyResponse')
    PutVoiceConnectorStreamingConfigurationRequest = Shapes::StructureShape.new(name: 'PutVoiceConnectorStreamingConfigurationRequest')
    PutVoiceConnectorStreamingConfigurationResponse = Shapes::StructureShape.new(name: 'PutVoiceConnectorStreamingConfigurationResponse')
    PutVoiceConnectorTerminationCredentialsRequest = Shapes::StructureShape.new(name: 'PutVoiceConnectorTerminationCredentialsRequest')
    PutVoiceConnectorTerminationRequest = Shapes::StructureShape.new(name: 'PutVoiceConnectorTerminationRequest')
    PutVoiceConnectorTerminationResponse = Shapes::StructureShape.new(name: 'PutVoiceConnectorTerminationResponse')
    RedactConversationMessageRequest = Shapes::StructureShape.new(name: 'RedactConversationMessageRequest')
    RedactConversationMessageResponse = Shapes::StructureShape.new(name: 'RedactConversationMessageResponse')
    RedactRoomMessageRequest = Shapes::StructureShape.new(name: 'RedactRoomMessageRequest')
    RedactRoomMessageResponse = Shapes::StructureShape.new(name: 'RedactRoomMessageResponse')
    RegenerateSecurityTokenRequest = Shapes::StructureShape.new(name: 'RegenerateSecurityTokenRequest')
    RegenerateSecurityTokenResponse = Shapes::StructureShape.new(name: 'RegenerateSecurityTokenResponse')
    RegistrationStatus = Shapes::StringShape.new(name: 'RegistrationStatus')
    ResetPersonalPINRequest = Shapes::StructureShape.new(name: 'ResetPersonalPINRequest')
    ResetPersonalPINResponse = Shapes::StructureShape.new(name: 'ResetPersonalPINResponse')
    ResourceLimitExceededException = Shapes::StructureShape.new(name: 'ResourceLimitExceededException')
    RestorePhoneNumberRequest = Shapes::StructureShape.new(name: 'RestorePhoneNumberRequest')
    RestorePhoneNumberResponse = Shapes::StructureShape.new(name: 'RestorePhoneNumberResponse')
    ResultMax = Shapes::IntegerShape.new(name: 'ResultMax')
    RetentionDays = Shapes::IntegerShape.new(name: 'RetentionDays')
    RetentionSettings = Shapes::StructureShape.new(name: 'RetentionSettings')
    Room = Shapes::StructureShape.new(name: 'Room')
    RoomList = Shapes::ListShape.new(name: 'RoomList')
    RoomMembership = Shapes::StructureShape.new(name: 'RoomMembership')
    RoomMembershipList = Shapes::ListShape.new(name: 'RoomMembershipList')
    RoomMembershipRole = Shapes::StringShape.new(name: 'RoomMembershipRole')
    RoomRetentionSettings = Shapes::StructureShape.new(name: 'RoomRetentionSettings')
    SearchAvailablePhoneNumbersRequest = Shapes::StructureShape.new(name: 'SearchAvailablePhoneNumbersRequest')
    SearchAvailablePhoneNumbersResponse = Shapes::StructureShape.new(name: 'SearchAvailablePhoneNumbersResponse')
    SensitiveString = Shapes::StringShape.new(name: 'SensitiveString')
    SensitiveStringList = Shapes::ListShape.new(name: 'SensitiveStringList')
    ServiceFailureException = Shapes::StructureShape.new(name: 'ServiceFailureException')
    ServiceUnavailableException = Shapes::StructureShape.new(name: 'ServiceUnavailableException')
    SigninDelegateGroup = Shapes::StructureShape.new(name: 'SigninDelegateGroup')
    SigninDelegateGroupList = Shapes::ListShape.new(name: 'SigninDelegateGroupList')
    StreamingConfiguration = Shapes::StructureShape.new(name: 'StreamingConfiguration')
    StreamingNotificationTarget = Shapes::StructureShape.new(name: 'StreamingNotificationTarget')
    StreamingNotificationTargetList = Shapes::ListShape.new(name: 'StreamingNotificationTargetList')
    String = Shapes::StringShape.new(name: 'String')
    String128 = Shapes::StringShape.new(name: 'String128')
    StringList = Shapes::ListShape.new(name: 'StringList')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagAttendeeRequest = Shapes::StructureShape.new(name: 'TagAttendeeRequest')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagList = Shapes::ListShape.new(name: 'TagList')
    TagMeetingRequest = Shapes::StructureShape.new(name: 'TagMeetingRequest')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    TelephonySettings = Shapes::StructureShape.new(name: 'TelephonySettings')
    Termination = Shapes::StructureShape.new(name: 'Termination')
    TerminationHealth = Shapes::StructureShape.new(name: 'TerminationHealth')
    ThrottledClientException = Shapes::StructureShape.new(name: 'ThrottledClientException')
    TollFreePrefix = Shapes::StringShape.new(name: 'TollFreePrefix')
    UnauthorizedClientException = Shapes::StructureShape.new(name: 'UnauthorizedClientException')
    UnprocessableEntityException = Shapes::StructureShape.new(name: 'UnprocessableEntityException')
    UntagAttendeeRequest = Shapes::StructureShape.new(name: 'UntagAttendeeRequest')
    UntagMeetingRequest = Shapes::StructureShape.new(name: 'UntagMeetingRequest')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UpdateAccountRequest = Shapes::StructureShape.new(name: 'UpdateAccountRequest')
    UpdateAccountResponse = Shapes::StructureShape.new(name: 'UpdateAccountResponse')
    UpdateAccountSettingsRequest = Shapes::StructureShape.new(name: 'UpdateAccountSettingsRequest')
    UpdateAccountSettingsResponse = Shapes::StructureShape.new(name: 'UpdateAccountSettingsResponse')
    UpdateBotRequest = Shapes::StructureShape.new(name: 'UpdateBotRequest')
    UpdateBotResponse = Shapes::StructureShape.new(name: 'UpdateBotResponse')
    UpdateGlobalSettingsRequest = Shapes::StructureShape.new(name: 'UpdateGlobalSettingsRequest')
    UpdatePhoneNumberRequest = Shapes::StructureShape.new(name: 'UpdatePhoneNumberRequest')
    UpdatePhoneNumberRequestItem = Shapes::StructureShape.new(name: 'UpdatePhoneNumberRequestItem')
    UpdatePhoneNumberRequestItemList = Shapes::ListShape.new(name: 'UpdatePhoneNumberRequestItemList')
    UpdatePhoneNumberResponse = Shapes::StructureShape.new(name: 'UpdatePhoneNumberResponse')
    UpdatePhoneNumberSettingsRequest = Shapes::StructureShape.new(name: 'UpdatePhoneNumberSettingsRequest')
    UpdateProxySessionRequest = Shapes::StructureShape.new(name: 'UpdateProxySessionRequest')
    UpdateProxySessionResponse = Shapes::StructureShape.new(name: 'UpdateProxySessionResponse')
    UpdateRoomMembershipRequest = Shapes::StructureShape.new(name: 'UpdateRoomMembershipRequest')
    UpdateRoomMembershipResponse = Shapes::StructureShape.new(name: 'UpdateRoomMembershipResponse')
    UpdateRoomRequest = Shapes::StructureShape.new(name: 'UpdateRoomRequest')
    UpdateRoomResponse = Shapes::StructureShape.new(name: 'UpdateRoomResponse')
    UpdateUserRequest = Shapes::StructureShape.new(name: 'UpdateUserRequest')
    UpdateUserRequestItem = Shapes::StructureShape.new(name: 'UpdateUserRequestItem')
    UpdateUserRequestItemList = Shapes::ListShape.new(name: 'UpdateUserRequestItemList')
    UpdateUserResponse = Shapes::StructureShape.new(name: 'UpdateUserResponse')
    UpdateUserSettingsRequest = Shapes::StructureShape.new(name: 'UpdateUserSettingsRequest')
    UpdateVoiceConnectorGroupRequest = Shapes::StructureShape.new(name: 'UpdateVoiceConnectorGroupRequest')
    UpdateVoiceConnectorGroupResponse = Shapes::StructureShape.new(name: 'UpdateVoiceConnectorGroupResponse')
    UpdateVoiceConnectorRequest = Shapes::StructureShape.new(name: 'UpdateVoiceConnectorRequest')
    UpdateVoiceConnectorResponse = Shapes::StructureShape.new(name: 'UpdateVoiceConnectorResponse')
    UriType = Shapes::StringShape.new(name: 'UriType')
    User = Shapes::StructureShape.new(name: 'User')
    UserEmailList = Shapes::ListShape.new(name: 'UserEmailList')
    UserError = Shapes::StructureShape.new(name: 'UserError')
    UserErrorList = Shapes::ListShape.new(name: 'UserErrorList')
    UserIdList = Shapes::ListShape.new(name: 'UserIdList')
    UserList = Shapes::ListShape.new(name: 'UserList')
    UserSettings = Shapes::StructureShape.new(name: 'UserSettings')
    UserType = Shapes::StringShape.new(name: 'UserType')
    VoiceConnector = Shapes::StructureShape.new(name: 'VoiceConnector')
    VoiceConnectorAwsRegion = Shapes::StringShape.new(name: 'VoiceConnectorAwsRegion')
    VoiceConnectorGroup = Shapes::StructureShape.new(name: 'VoiceConnectorGroup')
    VoiceConnectorGroupList = Shapes::ListShape.new(name: 'VoiceConnectorGroupList')
    VoiceConnectorGroupName = Shapes::StringShape.new(name: 'VoiceConnectorGroupName')
    VoiceConnectorItem = Shapes::StructureShape.new(name: 'VoiceConnectorItem')
    VoiceConnectorItemList = Shapes::ListShape.new(name: 'VoiceConnectorItemList')
    VoiceConnectorItemPriority = Shapes::IntegerShape.new(name: 'VoiceConnectorItemPriority')
    VoiceConnectorList = Shapes::ListShape.new(name: 'VoiceConnectorList')
    VoiceConnectorName = Shapes::StringShape.new(name: 'VoiceConnectorName')
    VoiceConnectorSettings = Shapes::StructureShape.new(name: 'VoiceConnectorSettings')

    AccessDeniedException.add_member(:code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "Code"))
    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    Account.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "AwsAccountId"))
    Account.add_member(:account_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "AccountId"))
    Account.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Name"))
    Account.add_member(:account_type, Shapes::ShapeRef.new(shape: AccountType, location_name: "AccountType"))
    Account.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: "CreatedTimestamp"))
    Account.add_member(:default_license, Shapes::ShapeRef.new(shape: License, location_name: "DefaultLicense"))
    Account.add_member(:supported_licenses, Shapes::ShapeRef.new(shape: LicenseList, location_name: "SupportedLicenses"))
    Account.add_member(:signin_delegate_groups, Shapes::ShapeRef.new(shape: SigninDelegateGroupList, location_name: "SigninDelegateGroups"))
    Account.struct_class = Types::Account

    AccountList.member = Shapes::ShapeRef.new(shape: Account)

    AccountSettings.add_member(:disable_remote_control, Shapes::ShapeRef.new(shape: Boolean, location_name: "DisableRemoteControl"))
    AccountSettings.add_member(:enable_dial_out, Shapes::ShapeRef.new(shape: Boolean, location_name: "EnableDialOut"))
    AccountSettings.struct_class = Types::AccountSettings

    AlexaForBusinessMetadata.add_member(:is_alexa_for_business_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "IsAlexaForBusinessEnabled"))
    AlexaForBusinessMetadata.add_member(:alexa_for_business_room_arn, Shapes::ShapeRef.new(shape: SensitiveString, location_name: "AlexaForBusinessRoomArn"))
    AlexaForBusinessMetadata.struct_class = Types::AlexaForBusinessMetadata

    AssociatePhoneNumberWithUserRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "accountId"))
    AssociatePhoneNumberWithUserRequest.add_member(:user_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "userId"))
    AssociatePhoneNumberWithUserRequest.add_member(:e164_phone_number, Shapes::ShapeRef.new(shape: E164PhoneNumber, required: true, location_name: "E164PhoneNumber"))
    AssociatePhoneNumberWithUserRequest.struct_class = Types::AssociatePhoneNumberWithUserRequest

    AssociatePhoneNumberWithUserResponse.struct_class = Types::AssociatePhoneNumberWithUserResponse

    AssociatePhoneNumbersWithVoiceConnectorGroupRequest.add_member(:voice_connector_group_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "voiceConnectorGroupId"))
    AssociatePhoneNumbersWithVoiceConnectorGroupRequest.add_member(:e164_phone_numbers, Shapes::ShapeRef.new(shape: E164PhoneNumberList, required: true, location_name: "E164PhoneNumbers"))
    AssociatePhoneNumbersWithVoiceConnectorGroupRequest.add_member(:force_associate, Shapes::ShapeRef.new(shape: NullableBoolean, location_name: "ForceAssociate"))
    AssociatePhoneNumbersWithVoiceConnectorGroupRequest.struct_class = Types::AssociatePhoneNumbersWithVoiceConnectorGroupRequest

    AssociatePhoneNumbersWithVoiceConnectorGroupResponse.add_member(:phone_number_errors, Shapes::ShapeRef.new(shape: PhoneNumberErrorList, location_name: "PhoneNumberErrors"))
    AssociatePhoneNumbersWithVoiceConnectorGroupResponse.struct_class = Types::AssociatePhoneNumbersWithVoiceConnectorGroupResponse

    AssociatePhoneNumbersWithVoiceConnectorRequest.add_member(:voice_connector_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "voiceConnectorId"))
    AssociatePhoneNumbersWithVoiceConnectorRequest.add_member(:e164_phone_numbers, Shapes::ShapeRef.new(shape: E164PhoneNumberList, required: true, location_name: "E164PhoneNumbers"))
    AssociatePhoneNumbersWithVoiceConnectorRequest.add_member(:force_associate, Shapes::ShapeRef.new(shape: NullableBoolean, location_name: "ForceAssociate"))
    AssociatePhoneNumbersWithVoiceConnectorRequest.struct_class = Types::AssociatePhoneNumbersWithVoiceConnectorRequest

    AssociatePhoneNumbersWithVoiceConnectorResponse.add_member(:phone_number_errors, Shapes::ShapeRef.new(shape: PhoneNumberErrorList, location_name: "PhoneNumberErrors"))
    AssociatePhoneNumbersWithVoiceConnectorResponse.struct_class = Types::AssociatePhoneNumbersWithVoiceConnectorResponse

    AssociateSigninDelegateGroupsWithAccountRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "accountId"))
    AssociateSigninDelegateGroupsWithAccountRequest.add_member(:signin_delegate_groups, Shapes::ShapeRef.new(shape: SigninDelegateGroupList, required: true, location_name: "SigninDelegateGroups"))
    AssociateSigninDelegateGroupsWithAccountRequest.struct_class = Types::AssociateSigninDelegateGroupsWithAccountRequest

    AssociateSigninDelegateGroupsWithAccountResponse.struct_class = Types::AssociateSigninDelegateGroupsWithAccountResponse

    Attendee.add_member(:external_user_id, Shapes::ShapeRef.new(shape: ExternalUserIdType, location_name: "ExternalUserId"))
    Attendee.add_member(:attendee_id, Shapes::ShapeRef.new(shape: GuidString, location_name: "AttendeeId"))
    Attendee.add_member(:join_token, Shapes::ShapeRef.new(shape: JoinTokenString, location_name: "JoinToken"))
    Attendee.struct_class = Types::Attendee

    AttendeeList.member = Shapes::ShapeRef.new(shape: Attendee)

    AttendeeTagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    AttendeeTagList.member = Shapes::ShapeRef.new(shape: Tag)

    BadRequestException.add_member(:code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "Code"))
    BadRequestException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    BadRequestException.struct_class = Types::BadRequestException

    BatchCreateAttendeeErrorList.member = Shapes::ShapeRef.new(shape: CreateAttendeeError)

    BatchCreateAttendeeRequest.add_member(:meeting_id, Shapes::ShapeRef.new(shape: GuidString, required: true, location: "uri", location_name: "meetingId"))
    BatchCreateAttendeeRequest.add_member(:attendees, Shapes::ShapeRef.new(shape: CreateAttendeeRequestItemList, required: true, location_name: "Attendees"))
    BatchCreateAttendeeRequest.struct_class = Types::BatchCreateAttendeeRequest

    BatchCreateAttendeeResponse.add_member(:attendees, Shapes::ShapeRef.new(shape: AttendeeList, location_name: "Attendees"))
    BatchCreateAttendeeResponse.add_member(:errors, Shapes::ShapeRef.new(shape: BatchCreateAttendeeErrorList, location_name: "Errors"))
    BatchCreateAttendeeResponse.struct_class = Types::BatchCreateAttendeeResponse

    BatchCreateRoomMembershipRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "accountId"))
    BatchCreateRoomMembershipRequest.add_member(:room_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "roomId"))
    BatchCreateRoomMembershipRequest.add_member(:membership_item_list, Shapes::ShapeRef.new(shape: MembershipItemList, required: true, location_name: "MembershipItemList"))
    BatchCreateRoomMembershipRequest.struct_class = Types::BatchCreateRoomMembershipRequest

    BatchCreateRoomMembershipResponse.add_member(:errors, Shapes::ShapeRef.new(shape: MemberErrorList, location_name: "Errors"))
    BatchCreateRoomMembershipResponse.struct_class = Types::BatchCreateRoomMembershipResponse

    BatchDeletePhoneNumberRequest.add_member(:phone_number_ids, Shapes::ShapeRef.new(shape: NonEmptyStringList, required: true, location_name: "PhoneNumberIds"))
    BatchDeletePhoneNumberRequest.struct_class = Types::BatchDeletePhoneNumberRequest

    BatchDeletePhoneNumberResponse.add_member(:phone_number_errors, Shapes::ShapeRef.new(shape: PhoneNumberErrorList, location_name: "PhoneNumberErrors"))
    BatchDeletePhoneNumberResponse.struct_class = Types::BatchDeletePhoneNumberResponse

    BatchSuspendUserRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "accountId"))
    BatchSuspendUserRequest.add_member(:user_id_list, Shapes::ShapeRef.new(shape: UserIdList, required: true, location_name: "UserIdList"))
    BatchSuspendUserRequest.struct_class = Types::BatchSuspendUserRequest

    BatchSuspendUserResponse.add_member(:user_errors, Shapes::ShapeRef.new(shape: UserErrorList, location_name: "UserErrors"))
    BatchSuspendUserResponse.struct_class = Types::BatchSuspendUserResponse

    BatchUnsuspendUserRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "accountId"))
    BatchUnsuspendUserRequest.add_member(:user_id_list, Shapes::ShapeRef.new(shape: UserIdList, required: true, location_name: "UserIdList"))
    BatchUnsuspendUserRequest.struct_class = Types::BatchUnsuspendUserRequest

    BatchUnsuspendUserResponse.add_member(:user_errors, Shapes::ShapeRef.new(shape: UserErrorList, location_name: "UserErrors"))
    BatchUnsuspendUserResponse.struct_class = Types::BatchUnsuspendUserResponse

    BatchUpdatePhoneNumberRequest.add_member(:update_phone_number_request_items, Shapes::ShapeRef.new(shape: UpdatePhoneNumberRequestItemList, required: true, location_name: "UpdatePhoneNumberRequestItems"))
    BatchUpdatePhoneNumberRequest.struct_class = Types::BatchUpdatePhoneNumberRequest

    BatchUpdatePhoneNumberResponse.add_member(:phone_number_errors, Shapes::ShapeRef.new(shape: PhoneNumberErrorList, location_name: "PhoneNumberErrors"))
    BatchUpdatePhoneNumberResponse.struct_class = Types::BatchUpdatePhoneNumberResponse

    BatchUpdateUserRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "accountId"))
    BatchUpdateUserRequest.add_member(:update_user_request_items, Shapes::ShapeRef.new(shape: UpdateUserRequestItemList, required: true, location_name: "UpdateUserRequestItems"))
    BatchUpdateUserRequest.struct_class = Types::BatchUpdateUserRequest

    BatchUpdateUserResponse.add_member(:user_errors, Shapes::ShapeRef.new(shape: UserErrorList, location_name: "UserErrors"))
    BatchUpdateUserResponse.struct_class = Types::BatchUpdateUserResponse

    Bot.add_member(:bot_id, Shapes::ShapeRef.new(shape: String, location_name: "BotId"))
    Bot.add_member(:user_id, Shapes::ShapeRef.new(shape: String, location_name: "UserId"))
    Bot.add_member(:display_name, Shapes::ShapeRef.new(shape: SensitiveString, location_name: "DisplayName"))
    Bot.add_member(:bot_type, Shapes::ShapeRef.new(shape: BotType, location_name: "BotType"))
    Bot.add_member(:disabled, Shapes::ShapeRef.new(shape: NullableBoolean, location_name: "Disabled"))
    Bot.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: "CreatedTimestamp"))
    Bot.add_member(:updated_timestamp, Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: "UpdatedTimestamp"))
    Bot.add_member(:bot_email, Shapes::ShapeRef.new(shape: SensitiveString, location_name: "BotEmail"))
    Bot.add_member(:security_token, Shapes::ShapeRef.new(shape: SensitiveString, location_name: "SecurityToken"))
    Bot.struct_class = Types::Bot

    BotList.member = Shapes::ShapeRef.new(shape: Bot)

    BusinessCallingSettings.add_member(:cdr_bucket, Shapes::ShapeRef.new(shape: String, location_name: "CdrBucket", metadata: {"box"=>true}))
    BusinessCallingSettings.struct_class = Types::BusinessCallingSettings

    CallingRegionList.member = Shapes::ShapeRef.new(shape: CallingRegion)

    CapabilityList.member = Shapes::ShapeRef.new(shape: Capability)

    ConflictException.add_member(:code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "Code"))
    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ConflictException.struct_class = Types::ConflictException

    ConversationRetentionSettings.add_member(:retention_days, Shapes::ShapeRef.new(shape: RetentionDays, location_name: "RetentionDays"))
    ConversationRetentionSettings.struct_class = Types::ConversationRetentionSettings

    CountryList.member = Shapes::ShapeRef.new(shape: Country)

    CreateAccountRequest.add_member(:name, Shapes::ShapeRef.new(shape: AccountName, required: true, location_name: "Name"))
    CreateAccountRequest.struct_class = Types::CreateAccountRequest

    CreateAccountResponse.add_member(:account, Shapes::ShapeRef.new(shape: Account, location_name: "Account"))
    CreateAccountResponse.struct_class = Types::CreateAccountResponse

    CreateAttendeeError.add_member(:external_user_id, Shapes::ShapeRef.new(shape: ExternalUserIdType, location_name: "ExternalUserId"))
    CreateAttendeeError.add_member(:error_code, Shapes::ShapeRef.new(shape: String, location_name: "ErrorCode"))
    CreateAttendeeError.add_member(:error_message, Shapes::ShapeRef.new(shape: String, location_name: "ErrorMessage"))
    CreateAttendeeError.struct_class = Types::CreateAttendeeError

    CreateAttendeeRequest.add_member(:meeting_id, Shapes::ShapeRef.new(shape: GuidString, required: true, location: "uri", location_name: "meetingId"))
    CreateAttendeeRequest.add_member(:external_user_id, Shapes::ShapeRef.new(shape: ExternalUserIdType, required: true, location_name: "ExternalUserId"))
    CreateAttendeeRequest.add_member(:tags, Shapes::ShapeRef.new(shape: AttendeeTagList, location_name: "Tags"))
    CreateAttendeeRequest.struct_class = Types::CreateAttendeeRequest

    CreateAttendeeRequestItem.add_member(:external_user_id, Shapes::ShapeRef.new(shape: ExternalUserIdType, required: true, location_name: "ExternalUserId"))
    CreateAttendeeRequestItem.add_member(:tags, Shapes::ShapeRef.new(shape: AttendeeTagList, location_name: "Tags"))
    CreateAttendeeRequestItem.struct_class = Types::CreateAttendeeRequestItem

    CreateAttendeeRequestItemList.member = Shapes::ShapeRef.new(shape: CreateAttendeeRequestItem)

    CreateAttendeeResponse.add_member(:attendee, Shapes::ShapeRef.new(shape: Attendee, location_name: "Attendee"))
    CreateAttendeeResponse.struct_class = Types::CreateAttendeeResponse

    CreateBotRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "accountId"))
    CreateBotRequest.add_member(:display_name, Shapes::ShapeRef.new(shape: SensitiveString, required: true, location_name: "DisplayName"))
    CreateBotRequest.add_member(:domain, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Domain"))
    CreateBotRequest.struct_class = Types::CreateBotRequest

    CreateBotResponse.add_member(:bot, Shapes::ShapeRef.new(shape: Bot, location_name: "Bot"))
    CreateBotResponse.struct_class = Types::CreateBotResponse

    CreateMeetingRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, required: true, location_name: "ClientRequestToken", metadata: {"idempotencyToken"=>true}))
    CreateMeetingRequest.add_member(:external_meeting_id, Shapes::ShapeRef.new(shape: ExternalMeetingIdType, location_name: "ExternalMeetingId"))
    CreateMeetingRequest.add_member(:meeting_host_id, Shapes::ShapeRef.new(shape: ExternalUserIdType, location_name: "MeetingHostId"))
    CreateMeetingRequest.add_member(:media_region, Shapes::ShapeRef.new(shape: String, location_name: "MediaRegion"))
    CreateMeetingRequest.add_member(:tags, Shapes::ShapeRef.new(shape: MeetingTagList, location_name: "Tags"))
    CreateMeetingRequest.add_member(:notifications_configuration, Shapes::ShapeRef.new(shape: MeetingNotificationConfiguration, location_name: "NotificationsConfiguration"))
    CreateMeetingRequest.struct_class = Types::CreateMeetingRequest

    CreateMeetingResponse.add_member(:meeting, Shapes::ShapeRef.new(shape: Meeting, location_name: "Meeting"))
    CreateMeetingResponse.struct_class = Types::CreateMeetingResponse

    CreateMeetingWithAttendeesRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, required: true, location_name: "ClientRequestToken", metadata: {"idempotencyToken"=>true}))
    CreateMeetingWithAttendeesRequest.add_member(:external_meeting_id, Shapes::ShapeRef.new(shape: ExternalMeetingIdType, location_name: "ExternalMeetingId"))
    CreateMeetingWithAttendeesRequest.add_member(:meeting_host_id, Shapes::ShapeRef.new(shape: ExternalUserIdType, location_name: "MeetingHostId"))
    CreateMeetingWithAttendeesRequest.add_member(:media_region, Shapes::ShapeRef.new(shape: String, location_name: "MediaRegion"))
    CreateMeetingWithAttendeesRequest.add_member(:tags, Shapes::ShapeRef.new(shape: MeetingTagList, location_name: "Tags"))
    CreateMeetingWithAttendeesRequest.add_member(:notifications_configuration, Shapes::ShapeRef.new(shape: MeetingNotificationConfiguration, location_name: "NotificationsConfiguration"))
    CreateMeetingWithAttendeesRequest.add_member(:attendees, Shapes::ShapeRef.new(shape: CreateMeetingWithAttendeesRequestItemList, location_name: "Attendees"))
    CreateMeetingWithAttendeesRequest.struct_class = Types::CreateMeetingWithAttendeesRequest

    CreateMeetingWithAttendeesRequestItemList.member = Shapes::ShapeRef.new(shape: CreateAttendeeRequestItem)

    CreateMeetingWithAttendeesResponse.add_member(:meeting, Shapes::ShapeRef.new(shape: Meeting, location_name: "Meeting"))
    CreateMeetingWithAttendeesResponse.add_member(:attendees, Shapes::ShapeRef.new(shape: AttendeeList, location_name: "Attendees"))
    CreateMeetingWithAttendeesResponse.add_member(:errors, Shapes::ShapeRef.new(shape: BatchCreateAttendeeErrorList, location_name: "Errors"))
    CreateMeetingWithAttendeesResponse.struct_class = Types::CreateMeetingWithAttendeesResponse

    CreatePhoneNumberOrderRequest.add_member(:product_type, Shapes::ShapeRef.new(shape: PhoneNumberProductType, required: true, location_name: "ProductType"))
    CreatePhoneNumberOrderRequest.add_member(:e164_phone_numbers, Shapes::ShapeRef.new(shape: E164PhoneNumberList, required: true, location_name: "E164PhoneNumbers"))
    CreatePhoneNumberOrderRequest.struct_class = Types::CreatePhoneNumberOrderRequest

    CreatePhoneNumberOrderResponse.add_member(:phone_number_order, Shapes::ShapeRef.new(shape: PhoneNumberOrder, location_name: "PhoneNumberOrder"))
    CreatePhoneNumberOrderResponse.struct_class = Types::CreatePhoneNumberOrderResponse

    CreateProxySessionRequest.add_member(:voice_connector_id, Shapes::ShapeRef.new(shape: NonEmptyString128, required: true, location: "uri", location_name: "voiceConnectorId"))
    CreateProxySessionRequest.add_member(:participant_phone_numbers, Shapes::ShapeRef.new(shape: ParticipantPhoneNumberList, required: true, location_name: "ParticipantPhoneNumbers"))
    CreateProxySessionRequest.add_member(:name, Shapes::ShapeRef.new(shape: ProxySessionNameString, location_name: "Name"))
    CreateProxySessionRequest.add_member(:expiry_minutes, Shapes::ShapeRef.new(shape: PositiveInteger, location_name: "ExpiryMinutes"))
    CreateProxySessionRequest.add_member(:capabilities, Shapes::ShapeRef.new(shape: CapabilityList, required: true, location_name: "Capabilities"))
    CreateProxySessionRequest.add_member(:number_selection_behavior, Shapes::ShapeRef.new(shape: NumberSelectionBehavior, location_name: "NumberSelectionBehavior"))
    CreateProxySessionRequest.add_member(:geo_match_level, Shapes::ShapeRef.new(shape: GeoMatchLevel, location_name: "GeoMatchLevel"))
    CreateProxySessionRequest.add_member(:geo_match_params, Shapes::ShapeRef.new(shape: GeoMatchParams, location_name: "GeoMatchParams"))
    CreateProxySessionRequest.struct_class = Types::CreateProxySessionRequest

    CreateProxySessionResponse.add_member(:proxy_session, Shapes::ShapeRef.new(shape: ProxySession, location_name: "ProxySession"))
    CreateProxySessionResponse.struct_class = Types::CreateProxySessionResponse

    CreateRoomMembershipRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "accountId"))
    CreateRoomMembershipRequest.add_member(:room_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "roomId"))
    CreateRoomMembershipRequest.add_member(:member_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "MemberId"))
    CreateRoomMembershipRequest.add_member(:role, Shapes::ShapeRef.new(shape: RoomMembershipRole, location_name: "Role"))
    CreateRoomMembershipRequest.struct_class = Types::CreateRoomMembershipRequest

    CreateRoomMembershipResponse.add_member(:room_membership, Shapes::ShapeRef.new(shape: RoomMembership, location_name: "RoomMembership"))
    CreateRoomMembershipResponse.struct_class = Types::CreateRoomMembershipResponse

    CreateRoomRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "accountId"))
    CreateRoomRequest.add_member(:name, Shapes::ShapeRef.new(shape: SensitiveString, required: true, location_name: "Name"))
    CreateRoomRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "ClientRequestToken", metadata: {"idempotencyToken"=>true}))
    CreateRoomRequest.struct_class = Types::CreateRoomRequest

    CreateRoomResponse.add_member(:room, Shapes::ShapeRef.new(shape: Room, location_name: "Room"))
    CreateRoomResponse.struct_class = Types::CreateRoomResponse

    CreateUserRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "accountId"))
    CreateUserRequest.add_member(:username, Shapes::ShapeRef.new(shape: String, location_name: "Username"))
    CreateUserRequest.add_member(:email, Shapes::ShapeRef.new(shape: EmailAddress, location_name: "Email"))
    CreateUserRequest.add_member(:user_type, Shapes::ShapeRef.new(shape: UserType, location_name: "UserType"))
    CreateUserRequest.struct_class = Types::CreateUserRequest

    CreateUserResponse.add_member(:user, Shapes::ShapeRef.new(shape: User, location_name: "User"))
    CreateUserResponse.struct_class = Types::CreateUserResponse

    CreateVoiceConnectorGroupRequest.add_member(:name, Shapes::ShapeRef.new(shape: VoiceConnectorGroupName, required: true, location_name: "Name"))
    CreateVoiceConnectorGroupRequest.add_member(:voice_connector_items, Shapes::ShapeRef.new(shape: VoiceConnectorItemList, location_name: "VoiceConnectorItems"))
    CreateVoiceConnectorGroupRequest.struct_class = Types::CreateVoiceConnectorGroupRequest

    CreateVoiceConnectorGroupResponse.add_member(:voice_connector_group, Shapes::ShapeRef.new(shape: VoiceConnectorGroup, location_name: "VoiceConnectorGroup"))
    CreateVoiceConnectorGroupResponse.struct_class = Types::CreateVoiceConnectorGroupResponse

    CreateVoiceConnectorRequest.add_member(:name, Shapes::ShapeRef.new(shape: VoiceConnectorName, required: true, location_name: "Name"))
    CreateVoiceConnectorRequest.add_member(:aws_region, Shapes::ShapeRef.new(shape: VoiceConnectorAwsRegion, location_name: "AwsRegion"))
    CreateVoiceConnectorRequest.add_member(:require_encryption, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "RequireEncryption"))
    CreateVoiceConnectorRequest.struct_class = Types::CreateVoiceConnectorRequest

    CreateVoiceConnectorResponse.add_member(:voice_connector, Shapes::ShapeRef.new(shape: VoiceConnector, location_name: "VoiceConnector"))
    CreateVoiceConnectorResponse.struct_class = Types::CreateVoiceConnectorResponse

    Credential.add_member(:username, Shapes::ShapeRef.new(shape: SensitiveString, location_name: "Username"))
    Credential.add_member(:password, Shapes::ShapeRef.new(shape: SensitiveString, location_name: "Password"))
    Credential.struct_class = Types::Credential

    CredentialList.member = Shapes::ShapeRef.new(shape: Credential)

    DNISEmergencyCallingConfiguration.add_member(:emergency_phone_number, Shapes::ShapeRef.new(shape: E164PhoneNumber, required: true, location_name: "EmergencyPhoneNumber"))
    DNISEmergencyCallingConfiguration.add_member(:test_phone_number, Shapes::ShapeRef.new(shape: E164PhoneNumber, location_name: "TestPhoneNumber"))
    DNISEmergencyCallingConfiguration.add_member(:calling_country, Shapes::ShapeRef.new(shape: Alpha2CountryCode, required: true, location_name: "CallingCountry"))
    DNISEmergencyCallingConfiguration.struct_class = Types::DNISEmergencyCallingConfiguration

    DNISEmergencyCallingConfigurationList.member = Shapes::ShapeRef.new(shape: DNISEmergencyCallingConfiguration)

    DeleteAccountRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "accountId"))
    DeleteAccountRequest.struct_class = Types::DeleteAccountRequest

    DeleteAccountResponse.struct_class = Types::DeleteAccountResponse

    DeleteAttendeeRequest.add_member(:meeting_id, Shapes::ShapeRef.new(shape: GuidString, required: true, location: "uri", location_name: "meetingId"))
    DeleteAttendeeRequest.add_member(:attendee_id, Shapes::ShapeRef.new(shape: GuidString, required: true, location: "uri", location_name: "attendeeId"))
    DeleteAttendeeRequest.struct_class = Types::DeleteAttendeeRequest

    DeleteEventsConfigurationRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "accountId"))
    DeleteEventsConfigurationRequest.add_member(:bot_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "botId"))
    DeleteEventsConfigurationRequest.struct_class = Types::DeleteEventsConfigurationRequest

    DeleteMeetingRequest.add_member(:meeting_id, Shapes::ShapeRef.new(shape: GuidString, required: true, location: "uri", location_name: "meetingId"))
    DeleteMeetingRequest.struct_class = Types::DeleteMeetingRequest

    DeletePhoneNumberRequest.add_member(:phone_number_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "phoneNumberId"))
    DeletePhoneNumberRequest.struct_class = Types::DeletePhoneNumberRequest

    DeleteProxySessionRequest.add_member(:voice_connector_id, Shapes::ShapeRef.new(shape: NonEmptyString128, required: true, location: "uri", location_name: "voiceConnectorId"))
    DeleteProxySessionRequest.add_member(:proxy_session_id, Shapes::ShapeRef.new(shape: NonEmptyString128, required: true, location: "uri", location_name: "proxySessionId"))
    DeleteProxySessionRequest.struct_class = Types::DeleteProxySessionRequest

    DeleteRoomMembershipRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "accountId"))
    DeleteRoomMembershipRequest.add_member(:room_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "roomId"))
    DeleteRoomMembershipRequest.add_member(:member_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "memberId"))
    DeleteRoomMembershipRequest.struct_class = Types::DeleteRoomMembershipRequest

    DeleteRoomRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "accountId"))
    DeleteRoomRequest.add_member(:room_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "roomId"))
    DeleteRoomRequest.struct_class = Types::DeleteRoomRequest

    DeleteVoiceConnectorEmergencyCallingConfigurationRequest.add_member(:voice_connector_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "voiceConnectorId"))
    DeleteVoiceConnectorEmergencyCallingConfigurationRequest.struct_class = Types::DeleteVoiceConnectorEmergencyCallingConfigurationRequest

    DeleteVoiceConnectorGroupRequest.add_member(:voice_connector_group_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "voiceConnectorGroupId"))
    DeleteVoiceConnectorGroupRequest.struct_class = Types::DeleteVoiceConnectorGroupRequest

    DeleteVoiceConnectorOriginationRequest.add_member(:voice_connector_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "voiceConnectorId"))
    DeleteVoiceConnectorOriginationRequest.struct_class = Types::DeleteVoiceConnectorOriginationRequest

    DeleteVoiceConnectorProxyRequest.add_member(:voice_connector_id, Shapes::ShapeRef.new(shape: NonEmptyString128, required: true, location: "uri", location_name: "voiceConnectorId"))
    DeleteVoiceConnectorProxyRequest.struct_class = Types::DeleteVoiceConnectorProxyRequest

    DeleteVoiceConnectorRequest.add_member(:voice_connector_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "voiceConnectorId"))
    DeleteVoiceConnectorRequest.struct_class = Types::DeleteVoiceConnectorRequest

    DeleteVoiceConnectorStreamingConfigurationRequest.add_member(:voice_connector_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "voiceConnectorId"))
    DeleteVoiceConnectorStreamingConfigurationRequest.struct_class = Types::DeleteVoiceConnectorStreamingConfigurationRequest

    DeleteVoiceConnectorTerminationCredentialsRequest.add_member(:voice_connector_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "voiceConnectorId"))
    DeleteVoiceConnectorTerminationCredentialsRequest.add_member(:usernames, Shapes::ShapeRef.new(shape: SensitiveStringList, required: true, location_name: "Usernames"))
    DeleteVoiceConnectorTerminationCredentialsRequest.struct_class = Types::DeleteVoiceConnectorTerminationCredentialsRequest

    DeleteVoiceConnectorTerminationRequest.add_member(:voice_connector_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "voiceConnectorId"))
    DeleteVoiceConnectorTerminationRequest.struct_class = Types::DeleteVoiceConnectorTerminationRequest

    DisassociatePhoneNumberFromUserRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "accountId"))
    DisassociatePhoneNumberFromUserRequest.add_member(:user_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "userId"))
    DisassociatePhoneNumberFromUserRequest.struct_class = Types::DisassociatePhoneNumberFromUserRequest

    DisassociatePhoneNumberFromUserResponse.struct_class = Types::DisassociatePhoneNumberFromUserResponse

    DisassociatePhoneNumbersFromVoiceConnectorGroupRequest.add_member(:voice_connector_group_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "voiceConnectorGroupId"))
    DisassociatePhoneNumbersFromVoiceConnectorGroupRequest.add_member(:e164_phone_numbers, Shapes::ShapeRef.new(shape: E164PhoneNumberList, required: true, location_name: "E164PhoneNumbers"))
    DisassociatePhoneNumbersFromVoiceConnectorGroupRequest.struct_class = Types::DisassociatePhoneNumbersFromVoiceConnectorGroupRequest

    DisassociatePhoneNumbersFromVoiceConnectorGroupResponse.add_member(:phone_number_errors, Shapes::ShapeRef.new(shape: PhoneNumberErrorList, location_name: "PhoneNumberErrors"))
    DisassociatePhoneNumbersFromVoiceConnectorGroupResponse.struct_class = Types::DisassociatePhoneNumbersFromVoiceConnectorGroupResponse

    DisassociatePhoneNumbersFromVoiceConnectorRequest.add_member(:voice_connector_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "voiceConnectorId"))
    DisassociatePhoneNumbersFromVoiceConnectorRequest.add_member(:e164_phone_numbers, Shapes::ShapeRef.new(shape: E164PhoneNumberList, required: true, location_name: "E164PhoneNumbers"))
    DisassociatePhoneNumbersFromVoiceConnectorRequest.struct_class = Types::DisassociatePhoneNumbersFromVoiceConnectorRequest

    DisassociatePhoneNumbersFromVoiceConnectorResponse.add_member(:phone_number_errors, Shapes::ShapeRef.new(shape: PhoneNumberErrorList, location_name: "PhoneNumberErrors"))
    DisassociatePhoneNumbersFromVoiceConnectorResponse.struct_class = Types::DisassociatePhoneNumbersFromVoiceConnectorResponse

    DisassociateSigninDelegateGroupsFromAccountRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "accountId"))
    DisassociateSigninDelegateGroupsFromAccountRequest.add_member(:group_names, Shapes::ShapeRef.new(shape: NonEmptyStringList, required: true, location_name: "GroupNames"))
    DisassociateSigninDelegateGroupsFromAccountRequest.struct_class = Types::DisassociateSigninDelegateGroupsFromAccountRequest

    DisassociateSigninDelegateGroupsFromAccountResponse.struct_class = Types::DisassociateSigninDelegateGroupsFromAccountResponse

    E164PhoneNumberList.member = Shapes::ShapeRef.new(shape: E164PhoneNumber)

    EmergencyCallingConfiguration.add_member(:dnis, Shapes::ShapeRef.new(shape: DNISEmergencyCallingConfigurationList, location_name: "DNIS"))
    EmergencyCallingConfiguration.struct_class = Types::EmergencyCallingConfiguration

    EventsConfiguration.add_member(:bot_id, Shapes::ShapeRef.new(shape: String, location_name: "BotId"))
    EventsConfiguration.add_member(:outbound_events_https_endpoint, Shapes::ShapeRef.new(shape: SensitiveString, location_name: "OutboundEventsHTTPSEndpoint"))
    EventsConfiguration.add_member(:lambda_function_arn, Shapes::ShapeRef.new(shape: SensitiveString, location_name: "LambdaFunctionArn"))
    EventsConfiguration.struct_class = Types::EventsConfiguration

    ForbiddenException.add_member(:code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "Code"))
    ForbiddenException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ForbiddenException.struct_class = Types::ForbiddenException

    GeoMatchParams.add_member(:country, Shapes::ShapeRef.new(shape: Country, required: true, location_name: "Country"))
    GeoMatchParams.add_member(:area_code, Shapes::ShapeRef.new(shape: AreaCode, required: true, location_name: "AreaCode"))
    GeoMatchParams.struct_class = Types::GeoMatchParams

    GetAccountRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "accountId"))
    GetAccountRequest.struct_class = Types::GetAccountRequest

    GetAccountResponse.add_member(:account, Shapes::ShapeRef.new(shape: Account, location_name: "Account"))
    GetAccountResponse.struct_class = Types::GetAccountResponse

    GetAccountSettingsRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "accountId"))
    GetAccountSettingsRequest.struct_class = Types::GetAccountSettingsRequest

    GetAccountSettingsResponse.add_member(:account_settings, Shapes::ShapeRef.new(shape: AccountSettings, location_name: "AccountSettings"))
    GetAccountSettingsResponse.struct_class = Types::GetAccountSettingsResponse

    GetAttendeeRequest.add_member(:meeting_id, Shapes::ShapeRef.new(shape: GuidString, required: true, location: "uri", location_name: "meetingId"))
    GetAttendeeRequest.add_member(:attendee_id, Shapes::ShapeRef.new(shape: GuidString, required: true, location: "uri", location_name: "attendeeId"))
    GetAttendeeRequest.struct_class = Types::GetAttendeeRequest

    GetAttendeeResponse.add_member(:attendee, Shapes::ShapeRef.new(shape: Attendee, location_name: "Attendee"))
    GetAttendeeResponse.struct_class = Types::GetAttendeeResponse

    GetBotRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "accountId"))
    GetBotRequest.add_member(:bot_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "botId"))
    GetBotRequest.struct_class = Types::GetBotRequest

    GetBotResponse.add_member(:bot, Shapes::ShapeRef.new(shape: Bot, location_name: "Bot"))
    GetBotResponse.struct_class = Types::GetBotResponse

    GetEventsConfigurationRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "accountId"))
    GetEventsConfigurationRequest.add_member(:bot_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "botId"))
    GetEventsConfigurationRequest.struct_class = Types::GetEventsConfigurationRequest

    GetEventsConfigurationResponse.add_member(:events_configuration, Shapes::ShapeRef.new(shape: EventsConfiguration, location_name: "EventsConfiguration"))
    GetEventsConfigurationResponse.struct_class = Types::GetEventsConfigurationResponse

    GetGlobalSettingsResponse.add_member(:business_calling, Shapes::ShapeRef.new(shape: BusinessCallingSettings, location_name: "BusinessCalling"))
    GetGlobalSettingsResponse.add_member(:voice_connector, Shapes::ShapeRef.new(shape: VoiceConnectorSettings, location_name: "VoiceConnector"))
    GetGlobalSettingsResponse.struct_class = Types::GetGlobalSettingsResponse

    GetMeetingRequest.add_member(:meeting_id, Shapes::ShapeRef.new(shape: GuidString, required: true, location: "uri", location_name: "meetingId"))
    GetMeetingRequest.struct_class = Types::GetMeetingRequest

    GetMeetingResponse.add_member(:meeting, Shapes::ShapeRef.new(shape: Meeting, location_name: "Meeting"))
    GetMeetingResponse.struct_class = Types::GetMeetingResponse

    GetPhoneNumberOrderRequest.add_member(:phone_number_order_id, Shapes::ShapeRef.new(shape: GuidString, required: true, location: "uri", location_name: "phoneNumberOrderId"))
    GetPhoneNumberOrderRequest.struct_class = Types::GetPhoneNumberOrderRequest

    GetPhoneNumberOrderResponse.add_member(:phone_number_order, Shapes::ShapeRef.new(shape: PhoneNumberOrder, location_name: "PhoneNumberOrder"))
    GetPhoneNumberOrderResponse.struct_class = Types::GetPhoneNumberOrderResponse

    GetPhoneNumberRequest.add_member(:phone_number_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "phoneNumberId"))
    GetPhoneNumberRequest.struct_class = Types::GetPhoneNumberRequest

    GetPhoneNumberResponse.add_member(:phone_number, Shapes::ShapeRef.new(shape: PhoneNumber, location_name: "PhoneNumber"))
    GetPhoneNumberResponse.struct_class = Types::GetPhoneNumberResponse

    GetPhoneNumberSettingsResponse.add_member(:calling_name, Shapes::ShapeRef.new(shape: CallingName, location_name: "CallingName"))
    GetPhoneNumberSettingsResponse.add_member(:calling_name_updated_timestamp, Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: "CallingNameUpdatedTimestamp"))
    GetPhoneNumberSettingsResponse.struct_class = Types::GetPhoneNumberSettingsResponse

    GetProxySessionRequest.add_member(:voice_connector_id, Shapes::ShapeRef.new(shape: NonEmptyString128, required: true, location: "uri", location_name: "voiceConnectorId"))
    GetProxySessionRequest.add_member(:proxy_session_id, Shapes::ShapeRef.new(shape: NonEmptyString128, required: true, location: "uri", location_name: "proxySessionId"))
    GetProxySessionRequest.struct_class = Types::GetProxySessionRequest

    GetProxySessionResponse.add_member(:proxy_session, Shapes::ShapeRef.new(shape: ProxySession, location_name: "ProxySession"))
    GetProxySessionResponse.struct_class = Types::GetProxySessionResponse

    GetRetentionSettingsRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "accountId"))
    GetRetentionSettingsRequest.struct_class = Types::GetRetentionSettingsRequest

    GetRetentionSettingsResponse.add_member(:retention_settings, Shapes::ShapeRef.new(shape: RetentionSettings, location_name: "RetentionSettings"))
    GetRetentionSettingsResponse.add_member(:initiate_deletion_timestamp, Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: "InitiateDeletionTimestamp"))
    GetRetentionSettingsResponse.struct_class = Types::GetRetentionSettingsResponse

    GetRoomRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "accountId"))
    GetRoomRequest.add_member(:room_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "roomId"))
    GetRoomRequest.struct_class = Types::GetRoomRequest

    GetRoomResponse.add_member(:room, Shapes::ShapeRef.new(shape: Room, location_name: "Room"))
    GetRoomResponse.struct_class = Types::GetRoomResponse

    GetUserRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "accountId"))
    GetUserRequest.add_member(:user_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "userId"))
    GetUserRequest.struct_class = Types::GetUserRequest

    GetUserResponse.add_member(:user, Shapes::ShapeRef.new(shape: User, location_name: "User"))
    GetUserResponse.struct_class = Types::GetUserResponse

    GetUserSettingsRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "accountId"))
    GetUserSettingsRequest.add_member(:user_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "userId"))
    GetUserSettingsRequest.struct_class = Types::GetUserSettingsRequest

    GetUserSettingsResponse.add_member(:user_settings, Shapes::ShapeRef.new(shape: UserSettings, location_name: "UserSettings"))
    GetUserSettingsResponse.struct_class = Types::GetUserSettingsResponse

    GetVoiceConnectorEmergencyCallingConfigurationRequest.add_member(:voice_connector_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "voiceConnectorId"))
    GetVoiceConnectorEmergencyCallingConfigurationRequest.struct_class = Types::GetVoiceConnectorEmergencyCallingConfigurationRequest

    GetVoiceConnectorEmergencyCallingConfigurationResponse.add_member(:emergency_calling_configuration, Shapes::ShapeRef.new(shape: EmergencyCallingConfiguration, location_name: "EmergencyCallingConfiguration"))
    GetVoiceConnectorEmergencyCallingConfigurationResponse.struct_class = Types::GetVoiceConnectorEmergencyCallingConfigurationResponse

    GetVoiceConnectorGroupRequest.add_member(:voice_connector_group_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "voiceConnectorGroupId"))
    GetVoiceConnectorGroupRequest.struct_class = Types::GetVoiceConnectorGroupRequest

    GetVoiceConnectorGroupResponse.add_member(:voice_connector_group, Shapes::ShapeRef.new(shape: VoiceConnectorGroup, location_name: "VoiceConnectorGroup"))
    GetVoiceConnectorGroupResponse.struct_class = Types::GetVoiceConnectorGroupResponse

    GetVoiceConnectorLoggingConfigurationRequest.add_member(:voice_connector_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "voiceConnectorId"))
    GetVoiceConnectorLoggingConfigurationRequest.struct_class = Types::GetVoiceConnectorLoggingConfigurationRequest

    GetVoiceConnectorLoggingConfigurationResponse.add_member(:logging_configuration, Shapes::ShapeRef.new(shape: LoggingConfiguration, location_name: "LoggingConfiguration"))
    GetVoiceConnectorLoggingConfigurationResponse.struct_class = Types::GetVoiceConnectorLoggingConfigurationResponse

    GetVoiceConnectorOriginationRequest.add_member(:voice_connector_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "voiceConnectorId"))
    GetVoiceConnectorOriginationRequest.struct_class = Types::GetVoiceConnectorOriginationRequest

    GetVoiceConnectorOriginationResponse.add_member(:origination, Shapes::ShapeRef.new(shape: Origination, location_name: "Origination"))
    GetVoiceConnectorOriginationResponse.struct_class = Types::GetVoiceConnectorOriginationResponse

    GetVoiceConnectorProxyRequest.add_member(:voice_connector_id, Shapes::ShapeRef.new(shape: NonEmptyString128, required: true, location: "uri", location_name: "voiceConnectorId"))
    GetVoiceConnectorProxyRequest.struct_class = Types::GetVoiceConnectorProxyRequest

    GetVoiceConnectorProxyResponse.add_member(:proxy, Shapes::ShapeRef.new(shape: Proxy, location_name: "Proxy"))
    GetVoiceConnectorProxyResponse.struct_class = Types::GetVoiceConnectorProxyResponse

    GetVoiceConnectorRequest.add_member(:voice_connector_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "voiceConnectorId"))
    GetVoiceConnectorRequest.struct_class = Types::GetVoiceConnectorRequest

    GetVoiceConnectorResponse.add_member(:voice_connector, Shapes::ShapeRef.new(shape: VoiceConnector, location_name: "VoiceConnector"))
    GetVoiceConnectorResponse.struct_class = Types::GetVoiceConnectorResponse

    GetVoiceConnectorStreamingConfigurationRequest.add_member(:voice_connector_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "voiceConnectorId"))
    GetVoiceConnectorStreamingConfigurationRequest.struct_class = Types::GetVoiceConnectorStreamingConfigurationRequest

    GetVoiceConnectorStreamingConfigurationResponse.add_member(:streaming_configuration, Shapes::ShapeRef.new(shape: StreamingConfiguration, location_name: "StreamingConfiguration"))
    GetVoiceConnectorStreamingConfigurationResponse.struct_class = Types::GetVoiceConnectorStreamingConfigurationResponse

    GetVoiceConnectorTerminationHealthRequest.add_member(:voice_connector_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "voiceConnectorId"))
    GetVoiceConnectorTerminationHealthRequest.struct_class = Types::GetVoiceConnectorTerminationHealthRequest

    GetVoiceConnectorTerminationHealthResponse.add_member(:termination_health, Shapes::ShapeRef.new(shape: TerminationHealth, location_name: "TerminationHealth"))
    GetVoiceConnectorTerminationHealthResponse.struct_class = Types::GetVoiceConnectorTerminationHealthResponse

    GetVoiceConnectorTerminationRequest.add_member(:voice_connector_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "voiceConnectorId"))
    GetVoiceConnectorTerminationRequest.struct_class = Types::GetVoiceConnectorTerminationRequest

    GetVoiceConnectorTerminationResponse.add_member(:termination, Shapes::ShapeRef.new(shape: Termination, location_name: "Termination"))
    GetVoiceConnectorTerminationResponse.struct_class = Types::GetVoiceConnectorTerminationResponse

    Invite.add_member(:invite_id, Shapes::ShapeRef.new(shape: String, location_name: "InviteId"))
    Invite.add_member(:status, Shapes::ShapeRef.new(shape: InviteStatus, location_name: "Status"))
    Invite.add_member(:email_address, Shapes::ShapeRef.new(shape: EmailAddress, location_name: "EmailAddress"))
    Invite.add_member(:email_status, Shapes::ShapeRef.new(shape: EmailStatus, location_name: "EmailStatus"))
    Invite.struct_class = Types::Invite

    InviteList.member = Shapes::ShapeRef.new(shape: Invite)

    InviteUsersRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "accountId"))
    InviteUsersRequest.add_member(:user_email_list, Shapes::ShapeRef.new(shape: UserEmailList, required: true, location_name: "UserEmailList"))
    InviteUsersRequest.add_member(:user_type, Shapes::ShapeRef.new(shape: UserType, location_name: "UserType"))
    InviteUsersRequest.struct_class = Types::InviteUsersRequest

    InviteUsersResponse.add_member(:invites, Shapes::ShapeRef.new(shape: InviteList, location_name: "Invites"))
    InviteUsersResponse.struct_class = Types::InviteUsersResponse

    LicenseList.member = Shapes::ShapeRef.new(shape: License)

    ListAccountsRequest.add_member(:name, Shapes::ShapeRef.new(shape: AccountName, location: "querystring", location_name: "name"))
    ListAccountsRequest.add_member(:user_email, Shapes::ShapeRef.new(shape: EmailAddress, location: "querystring", location_name: "user-email"))
    ListAccountsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "next-token"))
    ListAccountsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ProfileServiceMaxResults, location: "querystring", location_name: "max-results"))
    ListAccountsRequest.struct_class = Types::ListAccountsRequest

    ListAccountsResponse.add_member(:accounts, Shapes::ShapeRef.new(shape: AccountList, location_name: "Accounts"))
    ListAccountsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListAccountsResponse.struct_class = Types::ListAccountsResponse

    ListAttendeeTagsRequest.add_member(:meeting_id, Shapes::ShapeRef.new(shape: GuidString, required: true, location: "uri", location_name: "meetingId"))
    ListAttendeeTagsRequest.add_member(:attendee_id, Shapes::ShapeRef.new(shape: GuidString, required: true, location: "uri", location_name: "attendeeId"))
    ListAttendeeTagsRequest.struct_class = Types::ListAttendeeTagsRequest

    ListAttendeeTagsResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    ListAttendeeTagsResponse.struct_class = Types::ListAttendeeTagsResponse

    ListAttendeesRequest.add_member(:meeting_id, Shapes::ShapeRef.new(shape: GuidString, required: true, location: "uri", location_name: "meetingId"))
    ListAttendeesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "next-token"))
    ListAttendeesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ResultMax, location: "querystring", location_name: "max-results"))
    ListAttendeesRequest.struct_class = Types::ListAttendeesRequest

    ListAttendeesResponse.add_member(:attendees, Shapes::ShapeRef.new(shape: AttendeeList, location_name: "Attendees"))
    ListAttendeesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListAttendeesResponse.struct_class = Types::ListAttendeesResponse

    ListBotsRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "accountId"))
    ListBotsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ResultMax, location: "querystring", location_name: "max-results"))
    ListBotsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "next-token"))
    ListBotsRequest.struct_class = Types::ListBotsRequest

    ListBotsResponse.add_member(:bots, Shapes::ShapeRef.new(shape: BotList, location_name: "Bots"))
    ListBotsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListBotsResponse.struct_class = Types::ListBotsResponse

    ListMeetingTagsRequest.add_member(:meeting_id, Shapes::ShapeRef.new(shape: GuidString, required: true, location: "uri", location_name: "meetingId"))
    ListMeetingTagsRequest.struct_class = Types::ListMeetingTagsRequest

    ListMeetingTagsResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    ListMeetingTagsResponse.struct_class = Types::ListMeetingTagsResponse

    ListMeetingsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "next-token"))
    ListMeetingsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ResultMax, location: "querystring", location_name: "max-results"))
    ListMeetingsRequest.struct_class = Types::ListMeetingsRequest

    ListMeetingsResponse.add_member(:meetings, Shapes::ShapeRef.new(shape: MeetingList, location_name: "Meetings"))
    ListMeetingsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListMeetingsResponse.struct_class = Types::ListMeetingsResponse

    ListPhoneNumberOrdersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "next-token"))
    ListPhoneNumberOrdersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ResultMax, location: "querystring", location_name: "max-results"))
    ListPhoneNumberOrdersRequest.struct_class = Types::ListPhoneNumberOrdersRequest

    ListPhoneNumberOrdersResponse.add_member(:phone_number_orders, Shapes::ShapeRef.new(shape: PhoneNumberOrderList, location_name: "PhoneNumberOrders"))
    ListPhoneNumberOrdersResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListPhoneNumberOrdersResponse.struct_class = Types::ListPhoneNumberOrdersResponse

    ListPhoneNumbersRequest.add_member(:status, Shapes::ShapeRef.new(shape: PhoneNumberStatus, location: "querystring", location_name: "status"))
    ListPhoneNumbersRequest.add_member(:product_type, Shapes::ShapeRef.new(shape: PhoneNumberProductType, location: "querystring", location_name: "product-type"))
    ListPhoneNumbersRequest.add_member(:filter_name, Shapes::ShapeRef.new(shape: PhoneNumberAssociationName, location: "querystring", location_name: "filter-name"))
    ListPhoneNumbersRequest.add_member(:filter_value, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "filter-value"))
    ListPhoneNumbersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ResultMax, location: "querystring", location_name: "max-results"))
    ListPhoneNumbersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "next-token"))
    ListPhoneNumbersRequest.struct_class = Types::ListPhoneNumbersRequest

    ListPhoneNumbersResponse.add_member(:phone_numbers, Shapes::ShapeRef.new(shape: PhoneNumberList, location_name: "PhoneNumbers"))
    ListPhoneNumbersResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListPhoneNumbersResponse.struct_class = Types::ListPhoneNumbersResponse

    ListProxySessionsRequest.add_member(:voice_connector_id, Shapes::ShapeRef.new(shape: NonEmptyString128, required: true, location: "uri", location_name: "voiceConnectorId"))
    ListProxySessionsRequest.add_member(:status, Shapes::ShapeRef.new(shape: ProxySessionStatus, location: "querystring", location_name: "status"))
    ListProxySessionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextTokenString, location: "querystring", location_name: "next-token"))
    ListProxySessionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ResultMax, location: "querystring", location_name: "max-results"))
    ListProxySessionsRequest.struct_class = Types::ListProxySessionsRequest

    ListProxySessionsResponse.add_member(:proxy_sessions, Shapes::ShapeRef.new(shape: ProxySessions, location_name: "ProxySessions"))
    ListProxySessionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextTokenString, location_name: "NextToken"))
    ListProxySessionsResponse.struct_class = Types::ListProxySessionsResponse

    ListRoomMembershipsRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "accountId"))
    ListRoomMembershipsRequest.add_member(:room_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "roomId"))
    ListRoomMembershipsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ResultMax, location: "querystring", location_name: "max-results"))
    ListRoomMembershipsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "next-token"))
    ListRoomMembershipsRequest.struct_class = Types::ListRoomMembershipsRequest

    ListRoomMembershipsResponse.add_member(:room_memberships, Shapes::ShapeRef.new(shape: RoomMembershipList, location_name: "RoomMemberships"))
    ListRoomMembershipsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListRoomMembershipsResponse.struct_class = Types::ListRoomMembershipsResponse

    ListRoomsRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "accountId"))
    ListRoomsRequest.add_member(:member_id, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "member-id"))
    ListRoomsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ResultMax, location: "querystring", location_name: "max-results"))
    ListRoomsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "next-token"))
    ListRoomsRequest.struct_class = Types::ListRoomsRequest

    ListRoomsResponse.add_member(:rooms, Shapes::ShapeRef.new(shape: RoomList, location_name: "Rooms"))
    ListRoomsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListRoomsResponse.struct_class = Types::ListRoomsResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "querystring", location_name: "arn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    ListUsersRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "accountId"))
    ListUsersRequest.add_member(:user_email, Shapes::ShapeRef.new(shape: EmailAddress, location: "querystring", location_name: "user-email"))
    ListUsersRequest.add_member(:user_type, Shapes::ShapeRef.new(shape: UserType, location: "querystring", location_name: "user-type"))
    ListUsersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ProfileServiceMaxResults, location: "querystring", location_name: "max-results"))
    ListUsersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "next-token"))
    ListUsersRequest.struct_class = Types::ListUsersRequest

    ListUsersResponse.add_member(:users, Shapes::ShapeRef.new(shape: UserList, location_name: "Users"))
    ListUsersResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListUsersResponse.struct_class = Types::ListUsersResponse

    ListVoiceConnectorGroupsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "next-token"))
    ListVoiceConnectorGroupsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ResultMax, location: "querystring", location_name: "max-results"))
    ListVoiceConnectorGroupsRequest.struct_class = Types::ListVoiceConnectorGroupsRequest

    ListVoiceConnectorGroupsResponse.add_member(:voice_connector_groups, Shapes::ShapeRef.new(shape: VoiceConnectorGroupList, location_name: "VoiceConnectorGroups"))
    ListVoiceConnectorGroupsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListVoiceConnectorGroupsResponse.struct_class = Types::ListVoiceConnectorGroupsResponse

    ListVoiceConnectorTerminationCredentialsRequest.add_member(:voice_connector_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "voiceConnectorId"))
    ListVoiceConnectorTerminationCredentialsRequest.struct_class = Types::ListVoiceConnectorTerminationCredentialsRequest

    ListVoiceConnectorTerminationCredentialsResponse.add_member(:usernames, Shapes::ShapeRef.new(shape: SensitiveStringList, location_name: "Usernames"))
    ListVoiceConnectorTerminationCredentialsResponse.struct_class = Types::ListVoiceConnectorTerminationCredentialsResponse

    ListVoiceConnectorsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "next-token"))
    ListVoiceConnectorsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ResultMax, location: "querystring", location_name: "max-results"))
    ListVoiceConnectorsRequest.struct_class = Types::ListVoiceConnectorsRequest

    ListVoiceConnectorsResponse.add_member(:voice_connectors, Shapes::ShapeRef.new(shape: VoiceConnectorList, location_name: "VoiceConnectors"))
    ListVoiceConnectorsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListVoiceConnectorsResponse.struct_class = Types::ListVoiceConnectorsResponse

    LoggingConfiguration.add_member(:enable_sip_logs, Shapes::ShapeRef.new(shape: Boolean, location_name: "EnableSIPLogs"))
    LoggingConfiguration.struct_class = Types::LoggingConfiguration

    LogoutUserRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "accountId"))
    LogoutUserRequest.add_member(:user_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "userId"))
    LogoutUserRequest.struct_class = Types::LogoutUserRequest

    LogoutUserResponse.struct_class = Types::LogoutUserResponse

    MediaPlacement.add_member(:audio_host_url, Shapes::ShapeRef.new(shape: UriType, location_name: "AudioHostUrl"))
    MediaPlacement.add_member(:audio_fallback_url, Shapes::ShapeRef.new(shape: UriType, location_name: "AudioFallbackUrl"))
    MediaPlacement.add_member(:screen_data_url, Shapes::ShapeRef.new(shape: UriType, location_name: "ScreenDataUrl"))
    MediaPlacement.add_member(:screen_sharing_url, Shapes::ShapeRef.new(shape: UriType, location_name: "ScreenSharingUrl"))
    MediaPlacement.add_member(:screen_viewing_url, Shapes::ShapeRef.new(shape: UriType, location_name: "ScreenViewingUrl"))
    MediaPlacement.add_member(:signaling_url, Shapes::ShapeRef.new(shape: UriType, location_name: "SignalingUrl"))
    MediaPlacement.add_member(:turn_control_url, Shapes::ShapeRef.new(shape: UriType, location_name: "TurnControlUrl"))
    MediaPlacement.struct_class = Types::MediaPlacement

    Meeting.add_member(:meeting_id, Shapes::ShapeRef.new(shape: GuidString, location_name: "MeetingId"))
    Meeting.add_member(:external_meeting_id, Shapes::ShapeRef.new(shape: ExternalMeetingIdType, location_name: "ExternalMeetingId"))
    Meeting.add_member(:media_placement, Shapes::ShapeRef.new(shape: MediaPlacement, location_name: "MediaPlacement"))
    Meeting.add_member(:media_region, Shapes::ShapeRef.new(shape: String, location_name: "MediaRegion"))
    Meeting.struct_class = Types::Meeting

    MeetingList.member = Shapes::ShapeRef.new(shape: Meeting)

    MeetingNotificationConfiguration.add_member(:sns_topic_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "SnsTopicArn"))
    MeetingNotificationConfiguration.add_member(:sqs_queue_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "SqsQueueArn"))
    MeetingNotificationConfiguration.struct_class = Types::MeetingNotificationConfiguration

    MeetingTagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    MeetingTagList.member = Shapes::ShapeRef.new(shape: Tag)

    Member.add_member(:member_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "MemberId"))
    Member.add_member(:member_type, Shapes::ShapeRef.new(shape: MemberType, location_name: "MemberType"))
    Member.add_member(:email, Shapes::ShapeRef.new(shape: SensitiveString, location_name: "Email"))
    Member.add_member(:full_name, Shapes::ShapeRef.new(shape: SensitiveString, location_name: "FullName"))
    Member.add_member(:account_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "AccountId"))
    Member.struct_class = Types::Member

    MemberError.add_member(:member_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "MemberId"))
    MemberError.add_member(:error_code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "ErrorCode"))
    MemberError.add_member(:error_message, Shapes::ShapeRef.new(shape: String, location_name: "ErrorMessage"))
    MemberError.struct_class = Types::MemberError

    MemberErrorList.member = Shapes::ShapeRef.new(shape: MemberError)

    MembershipItem.add_member(:member_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "MemberId"))
    MembershipItem.add_member(:role, Shapes::ShapeRef.new(shape: RoomMembershipRole, location_name: "Role"))
    MembershipItem.struct_class = Types::MembershipItem

    MembershipItemList.member = Shapes::ShapeRef.new(shape: MembershipItem)

    NonEmptyStringList.member = Shapes::ShapeRef.new(shape: String)

    NotFoundException.add_member(:code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "Code"))
    NotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    NotFoundException.struct_class = Types::NotFoundException

    OrderedPhoneNumber.add_member(:e164_phone_number, Shapes::ShapeRef.new(shape: E164PhoneNumber, location_name: "E164PhoneNumber"))
    OrderedPhoneNumber.add_member(:status, Shapes::ShapeRef.new(shape: OrderedPhoneNumberStatus, location_name: "Status"))
    OrderedPhoneNumber.struct_class = Types::OrderedPhoneNumber

    OrderedPhoneNumberList.member = Shapes::ShapeRef.new(shape: OrderedPhoneNumber)

    Origination.add_member(:routes, Shapes::ShapeRef.new(shape: OriginationRouteList, location_name: "Routes"))
    Origination.add_member(:disabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "Disabled"))
    Origination.struct_class = Types::Origination

    OriginationRoute.add_member(:host, Shapes::ShapeRef.new(shape: String, location_name: "Host"))
    OriginationRoute.add_member(:port, Shapes::ShapeRef.new(shape: Port, location_name: "Port"))
    OriginationRoute.add_member(:protocol, Shapes::ShapeRef.new(shape: OriginationRouteProtocol, location_name: "Protocol"))
    OriginationRoute.add_member(:priority, Shapes::ShapeRef.new(shape: OriginationRoutePriority, location_name: "Priority"))
    OriginationRoute.add_member(:weight, Shapes::ShapeRef.new(shape: OriginationRouteWeight, location_name: "Weight"))
    OriginationRoute.struct_class = Types::OriginationRoute

    OriginationRouteList.member = Shapes::ShapeRef.new(shape: OriginationRoute)

    Participant.add_member(:phone_number, Shapes::ShapeRef.new(shape: E164PhoneNumber, location_name: "PhoneNumber"))
    Participant.add_member(:proxy_phone_number, Shapes::ShapeRef.new(shape: E164PhoneNumber, location_name: "ProxyPhoneNumber"))
    Participant.struct_class = Types::Participant

    ParticipantPhoneNumberList.member = Shapes::ShapeRef.new(shape: E164PhoneNumber)

    Participants.member = Shapes::ShapeRef.new(shape: Participant)

    PhoneNumber.add_member(:phone_number_id, Shapes::ShapeRef.new(shape: String, location_name: "PhoneNumberId"))
    PhoneNumber.add_member(:e164_phone_number, Shapes::ShapeRef.new(shape: E164PhoneNumber, location_name: "E164PhoneNumber"))
    PhoneNumber.add_member(:type, Shapes::ShapeRef.new(shape: PhoneNumberType, location_name: "Type"))
    PhoneNumber.add_member(:product_type, Shapes::ShapeRef.new(shape: PhoneNumberProductType, location_name: "ProductType"))
    PhoneNumber.add_member(:status, Shapes::ShapeRef.new(shape: PhoneNumberStatus, location_name: "Status"))
    PhoneNumber.add_member(:capabilities, Shapes::ShapeRef.new(shape: PhoneNumberCapabilities, location_name: "Capabilities"))
    PhoneNumber.add_member(:associations, Shapes::ShapeRef.new(shape: PhoneNumberAssociationList, location_name: "Associations"))
    PhoneNumber.add_member(:calling_name, Shapes::ShapeRef.new(shape: CallingName, location_name: "CallingName"))
    PhoneNumber.add_member(:calling_name_status, Shapes::ShapeRef.new(shape: CallingNameStatus, location_name: "CallingNameStatus"))
    PhoneNumber.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: "CreatedTimestamp"))
    PhoneNumber.add_member(:updated_timestamp, Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: "UpdatedTimestamp"))
    PhoneNumber.add_member(:deletion_timestamp, Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: "DeletionTimestamp"))
    PhoneNumber.struct_class = Types::PhoneNumber

    PhoneNumberAssociation.add_member(:value, Shapes::ShapeRef.new(shape: String, location_name: "Value"))
    PhoneNumberAssociation.add_member(:name, Shapes::ShapeRef.new(shape: PhoneNumberAssociationName, location_name: "Name"))
    PhoneNumberAssociation.add_member(:associated_timestamp, Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: "AssociatedTimestamp"))
    PhoneNumberAssociation.struct_class = Types::PhoneNumberAssociation

    PhoneNumberAssociationList.member = Shapes::ShapeRef.new(shape: PhoneNumberAssociation)

    PhoneNumberCapabilities.add_member(:inbound_call, Shapes::ShapeRef.new(shape: NullableBoolean, location_name: "InboundCall"))
    PhoneNumberCapabilities.add_member(:outbound_call, Shapes::ShapeRef.new(shape: NullableBoolean, location_name: "OutboundCall"))
    PhoneNumberCapabilities.add_member(:inbound_sms, Shapes::ShapeRef.new(shape: NullableBoolean, location_name: "InboundSMS"))
    PhoneNumberCapabilities.add_member(:outbound_sms, Shapes::ShapeRef.new(shape: NullableBoolean, location_name: "OutboundSMS"))
    PhoneNumberCapabilities.add_member(:inbound_mms, Shapes::ShapeRef.new(shape: NullableBoolean, location_name: "InboundMMS"))
    PhoneNumberCapabilities.add_member(:outbound_mms, Shapes::ShapeRef.new(shape: NullableBoolean, location_name: "OutboundMMS"))
    PhoneNumberCapabilities.struct_class = Types::PhoneNumberCapabilities

    PhoneNumberError.add_member(:phone_number_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "PhoneNumberId"))
    PhoneNumberError.add_member(:error_code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "ErrorCode"))
    PhoneNumberError.add_member(:error_message, Shapes::ShapeRef.new(shape: String, location_name: "ErrorMessage"))
    PhoneNumberError.struct_class = Types::PhoneNumberError

    PhoneNumberErrorList.member = Shapes::ShapeRef.new(shape: PhoneNumberError)

    PhoneNumberList.member = Shapes::ShapeRef.new(shape: PhoneNumber)

    PhoneNumberOrder.add_member(:phone_number_order_id, Shapes::ShapeRef.new(shape: GuidString, location_name: "PhoneNumberOrderId"))
    PhoneNumberOrder.add_member(:product_type, Shapes::ShapeRef.new(shape: PhoneNumberProductType, location_name: "ProductType"))
    PhoneNumberOrder.add_member(:status, Shapes::ShapeRef.new(shape: PhoneNumberOrderStatus, location_name: "Status"))
    PhoneNumberOrder.add_member(:ordered_phone_numbers, Shapes::ShapeRef.new(shape: OrderedPhoneNumberList, location_name: "OrderedPhoneNumbers"))
    PhoneNumberOrder.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: "CreatedTimestamp"))
    PhoneNumberOrder.add_member(:updated_timestamp, Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: "UpdatedTimestamp"))
    PhoneNumberOrder.struct_class = Types::PhoneNumberOrder

    PhoneNumberOrderList.member = Shapes::ShapeRef.new(shape: PhoneNumberOrder)

    Proxy.add_member(:default_session_expiry_minutes, Shapes::ShapeRef.new(shape: Integer, location_name: "DefaultSessionExpiryMinutes"))
    Proxy.add_member(:disabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "Disabled"))
    Proxy.add_member(:fall_back_phone_number, Shapes::ShapeRef.new(shape: E164PhoneNumber, location_name: "FallBackPhoneNumber"))
    Proxy.add_member(:phone_number_countries, Shapes::ShapeRef.new(shape: StringList, location_name: "PhoneNumberCountries"))
    Proxy.struct_class = Types::Proxy

    ProxySession.add_member(:voice_connector_id, Shapes::ShapeRef.new(shape: NonEmptyString128, location_name: "VoiceConnectorId"))
    ProxySession.add_member(:proxy_session_id, Shapes::ShapeRef.new(shape: NonEmptyString128, location_name: "ProxySessionId"))
    ProxySession.add_member(:name, Shapes::ShapeRef.new(shape: String128, location_name: "Name"))
    ProxySession.add_member(:status, Shapes::ShapeRef.new(shape: ProxySessionStatus, location_name: "Status"))
    ProxySession.add_member(:expiry_minutes, Shapes::ShapeRef.new(shape: PositiveInteger, location_name: "ExpiryMinutes"))
    ProxySession.add_member(:capabilities, Shapes::ShapeRef.new(shape: CapabilityList, location_name: "Capabilities"))
    ProxySession.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: "CreatedTimestamp"))
    ProxySession.add_member(:updated_timestamp, Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: "UpdatedTimestamp"))
    ProxySession.add_member(:ended_timestamp, Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: "EndedTimestamp"))
    ProxySession.add_member(:participants, Shapes::ShapeRef.new(shape: Participants, location_name: "Participants"))
    ProxySession.add_member(:number_selection_behavior, Shapes::ShapeRef.new(shape: NumberSelectionBehavior, location_name: "NumberSelectionBehavior"))
    ProxySession.add_member(:geo_match_level, Shapes::ShapeRef.new(shape: GeoMatchLevel, location_name: "GeoMatchLevel"))
    ProxySession.add_member(:geo_match_params, Shapes::ShapeRef.new(shape: GeoMatchParams, location_name: "GeoMatchParams"))
    ProxySession.struct_class = Types::ProxySession

    ProxySessions.member = Shapes::ShapeRef.new(shape: ProxySession)

    PutEventsConfigurationRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "accountId"))
    PutEventsConfigurationRequest.add_member(:bot_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "botId"))
    PutEventsConfigurationRequest.add_member(:outbound_events_https_endpoint, Shapes::ShapeRef.new(shape: SensitiveString, location_name: "OutboundEventsHTTPSEndpoint"))
    PutEventsConfigurationRequest.add_member(:lambda_function_arn, Shapes::ShapeRef.new(shape: SensitiveString, location_name: "LambdaFunctionArn"))
    PutEventsConfigurationRequest.struct_class = Types::PutEventsConfigurationRequest

    PutEventsConfigurationResponse.add_member(:events_configuration, Shapes::ShapeRef.new(shape: EventsConfiguration, location_name: "EventsConfiguration"))
    PutEventsConfigurationResponse.struct_class = Types::PutEventsConfigurationResponse

    PutRetentionSettingsRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "accountId"))
    PutRetentionSettingsRequest.add_member(:retention_settings, Shapes::ShapeRef.new(shape: RetentionSettings, required: true, location_name: "RetentionSettings"))
    PutRetentionSettingsRequest.struct_class = Types::PutRetentionSettingsRequest

    PutRetentionSettingsResponse.add_member(:retention_settings, Shapes::ShapeRef.new(shape: RetentionSettings, location_name: "RetentionSettings"))
    PutRetentionSettingsResponse.add_member(:initiate_deletion_timestamp, Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: "InitiateDeletionTimestamp"))
    PutRetentionSettingsResponse.struct_class = Types::PutRetentionSettingsResponse

    PutVoiceConnectorEmergencyCallingConfigurationRequest.add_member(:voice_connector_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "voiceConnectorId"))
    PutVoiceConnectorEmergencyCallingConfigurationRequest.add_member(:emergency_calling_configuration, Shapes::ShapeRef.new(shape: EmergencyCallingConfiguration, required: true, location_name: "EmergencyCallingConfiguration"))
    PutVoiceConnectorEmergencyCallingConfigurationRequest.struct_class = Types::PutVoiceConnectorEmergencyCallingConfigurationRequest

    PutVoiceConnectorEmergencyCallingConfigurationResponse.add_member(:emergency_calling_configuration, Shapes::ShapeRef.new(shape: EmergencyCallingConfiguration, location_name: "EmergencyCallingConfiguration"))
    PutVoiceConnectorEmergencyCallingConfigurationResponse.struct_class = Types::PutVoiceConnectorEmergencyCallingConfigurationResponse

    PutVoiceConnectorLoggingConfigurationRequest.add_member(:voice_connector_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "voiceConnectorId"))
    PutVoiceConnectorLoggingConfigurationRequest.add_member(:logging_configuration, Shapes::ShapeRef.new(shape: LoggingConfiguration, required: true, location_name: "LoggingConfiguration"))
    PutVoiceConnectorLoggingConfigurationRequest.struct_class = Types::PutVoiceConnectorLoggingConfigurationRequest

    PutVoiceConnectorLoggingConfigurationResponse.add_member(:logging_configuration, Shapes::ShapeRef.new(shape: LoggingConfiguration, location_name: "LoggingConfiguration"))
    PutVoiceConnectorLoggingConfigurationResponse.struct_class = Types::PutVoiceConnectorLoggingConfigurationResponse

    PutVoiceConnectorOriginationRequest.add_member(:voice_connector_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "voiceConnectorId"))
    PutVoiceConnectorOriginationRequest.add_member(:origination, Shapes::ShapeRef.new(shape: Origination, required: true, location_name: "Origination"))
    PutVoiceConnectorOriginationRequest.struct_class = Types::PutVoiceConnectorOriginationRequest

    PutVoiceConnectorOriginationResponse.add_member(:origination, Shapes::ShapeRef.new(shape: Origination, location_name: "Origination"))
    PutVoiceConnectorOriginationResponse.struct_class = Types::PutVoiceConnectorOriginationResponse

    PutVoiceConnectorProxyRequest.add_member(:voice_connector_id, Shapes::ShapeRef.new(shape: NonEmptyString128, required: true, location: "uri", location_name: "voiceConnectorId"))
    PutVoiceConnectorProxyRequest.add_member(:default_session_expiry_minutes, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "DefaultSessionExpiryMinutes"))
    PutVoiceConnectorProxyRequest.add_member(:phone_number_pool_countries, Shapes::ShapeRef.new(shape: CountryList, required: true, location_name: "PhoneNumberPoolCountries"))
    PutVoiceConnectorProxyRequest.add_member(:fall_back_phone_number, Shapes::ShapeRef.new(shape: E164PhoneNumber, location_name: "FallBackPhoneNumber"))
    PutVoiceConnectorProxyRequest.add_member(:disabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "Disabled"))
    PutVoiceConnectorProxyRequest.struct_class = Types::PutVoiceConnectorProxyRequest

    PutVoiceConnectorProxyResponse.add_member(:proxy, Shapes::ShapeRef.new(shape: Proxy, location_name: "Proxy"))
    PutVoiceConnectorProxyResponse.struct_class = Types::PutVoiceConnectorProxyResponse

    PutVoiceConnectorStreamingConfigurationRequest.add_member(:voice_connector_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "voiceConnectorId"))
    PutVoiceConnectorStreamingConfigurationRequest.add_member(:streaming_configuration, Shapes::ShapeRef.new(shape: StreamingConfiguration, required: true, location_name: "StreamingConfiguration"))
    PutVoiceConnectorStreamingConfigurationRequest.struct_class = Types::PutVoiceConnectorStreamingConfigurationRequest

    PutVoiceConnectorStreamingConfigurationResponse.add_member(:streaming_configuration, Shapes::ShapeRef.new(shape: StreamingConfiguration, location_name: "StreamingConfiguration"))
    PutVoiceConnectorStreamingConfigurationResponse.struct_class = Types::PutVoiceConnectorStreamingConfigurationResponse

    PutVoiceConnectorTerminationCredentialsRequest.add_member(:voice_connector_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "voiceConnectorId"))
    PutVoiceConnectorTerminationCredentialsRequest.add_member(:credentials, Shapes::ShapeRef.new(shape: CredentialList, location_name: "Credentials"))
    PutVoiceConnectorTerminationCredentialsRequest.struct_class = Types::PutVoiceConnectorTerminationCredentialsRequest

    PutVoiceConnectorTerminationRequest.add_member(:voice_connector_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "voiceConnectorId"))
    PutVoiceConnectorTerminationRequest.add_member(:termination, Shapes::ShapeRef.new(shape: Termination, required: true, location_name: "Termination"))
    PutVoiceConnectorTerminationRequest.struct_class = Types::PutVoiceConnectorTerminationRequest

    PutVoiceConnectorTerminationResponse.add_member(:termination, Shapes::ShapeRef.new(shape: Termination, location_name: "Termination"))
    PutVoiceConnectorTerminationResponse.struct_class = Types::PutVoiceConnectorTerminationResponse

    RedactConversationMessageRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "accountId"))
    RedactConversationMessageRequest.add_member(:conversation_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "conversationId"))
    RedactConversationMessageRequest.add_member(:message_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "messageId"))
    RedactConversationMessageRequest.struct_class = Types::RedactConversationMessageRequest

    RedactConversationMessageResponse.struct_class = Types::RedactConversationMessageResponse

    RedactRoomMessageRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "accountId"))
    RedactRoomMessageRequest.add_member(:room_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "roomId"))
    RedactRoomMessageRequest.add_member(:message_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "messageId"))
    RedactRoomMessageRequest.struct_class = Types::RedactRoomMessageRequest

    RedactRoomMessageResponse.struct_class = Types::RedactRoomMessageResponse

    RegenerateSecurityTokenRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "accountId"))
    RegenerateSecurityTokenRequest.add_member(:bot_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "botId"))
    RegenerateSecurityTokenRequest.struct_class = Types::RegenerateSecurityTokenRequest

    RegenerateSecurityTokenResponse.add_member(:bot, Shapes::ShapeRef.new(shape: Bot, location_name: "Bot"))
    RegenerateSecurityTokenResponse.struct_class = Types::RegenerateSecurityTokenResponse

    ResetPersonalPINRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "accountId"))
    ResetPersonalPINRequest.add_member(:user_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "userId"))
    ResetPersonalPINRequest.struct_class = Types::ResetPersonalPINRequest

    ResetPersonalPINResponse.add_member(:user, Shapes::ShapeRef.new(shape: User, location_name: "User"))
    ResetPersonalPINResponse.struct_class = Types::ResetPersonalPINResponse

    ResourceLimitExceededException.add_member(:code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "Code"))
    ResourceLimitExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ResourceLimitExceededException.struct_class = Types::ResourceLimitExceededException

    RestorePhoneNumberRequest.add_member(:phone_number_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "phoneNumberId"))
    RestorePhoneNumberRequest.struct_class = Types::RestorePhoneNumberRequest

    RestorePhoneNumberResponse.add_member(:phone_number, Shapes::ShapeRef.new(shape: PhoneNumber, location_name: "PhoneNumber"))
    RestorePhoneNumberResponse.struct_class = Types::RestorePhoneNumberResponse

    RetentionSettings.add_member(:room_retention_settings, Shapes::ShapeRef.new(shape: RoomRetentionSettings, location_name: "RoomRetentionSettings"))
    RetentionSettings.add_member(:conversation_retention_settings, Shapes::ShapeRef.new(shape: ConversationRetentionSettings, location_name: "ConversationRetentionSettings"))
    RetentionSettings.struct_class = Types::RetentionSettings

    Room.add_member(:room_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "RoomId"))
    Room.add_member(:name, Shapes::ShapeRef.new(shape: SensitiveString, location_name: "Name"))
    Room.add_member(:account_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "AccountId"))
    Room.add_member(:created_by, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "CreatedBy"))
    Room.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: "CreatedTimestamp"))
    Room.add_member(:updated_timestamp, Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: "UpdatedTimestamp"))
    Room.struct_class = Types::Room

    RoomList.member = Shapes::ShapeRef.new(shape: Room)

    RoomMembership.add_member(:room_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "RoomId"))
    RoomMembership.add_member(:member, Shapes::ShapeRef.new(shape: Member, location_name: "Member"))
    RoomMembership.add_member(:role, Shapes::ShapeRef.new(shape: RoomMembershipRole, location_name: "Role"))
    RoomMembership.add_member(:invited_by, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "InvitedBy"))
    RoomMembership.add_member(:updated_timestamp, Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: "UpdatedTimestamp"))
    RoomMembership.struct_class = Types::RoomMembership

    RoomMembershipList.member = Shapes::ShapeRef.new(shape: RoomMembership)

    RoomRetentionSettings.add_member(:retention_days, Shapes::ShapeRef.new(shape: RetentionDays, location_name: "RetentionDays"))
    RoomRetentionSettings.struct_class = Types::RoomRetentionSettings

    SearchAvailablePhoneNumbersRequest.add_member(:area_code, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "area-code"))
    SearchAvailablePhoneNumbersRequest.add_member(:city, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "city"))
    SearchAvailablePhoneNumbersRequest.add_member(:country, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "country"))
    SearchAvailablePhoneNumbersRequest.add_member(:state, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "state"))
    SearchAvailablePhoneNumbersRequest.add_member(:toll_free_prefix, Shapes::ShapeRef.new(shape: TollFreePrefix, location: "querystring", location_name: "toll-free-prefix"))
    SearchAvailablePhoneNumbersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: PhoneNumberMaxResults, location: "querystring", location_name: "max-results"))
    SearchAvailablePhoneNumbersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "next-token"))
    SearchAvailablePhoneNumbersRequest.struct_class = Types::SearchAvailablePhoneNumbersRequest

    SearchAvailablePhoneNumbersResponse.add_member(:e164_phone_numbers, Shapes::ShapeRef.new(shape: E164PhoneNumberList, location_name: "E164PhoneNumbers"))
    SearchAvailablePhoneNumbersResponse.struct_class = Types::SearchAvailablePhoneNumbersResponse

    SensitiveStringList.member = Shapes::ShapeRef.new(shape: SensitiveString)

    ServiceFailureException.add_member(:code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "Code"))
    ServiceFailureException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ServiceFailureException.struct_class = Types::ServiceFailureException

    ServiceUnavailableException.add_member(:code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "Code"))
    ServiceUnavailableException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ServiceUnavailableException.struct_class = Types::ServiceUnavailableException

    SigninDelegateGroup.add_member(:group_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "GroupName"))
    SigninDelegateGroup.struct_class = Types::SigninDelegateGroup

    SigninDelegateGroupList.member = Shapes::ShapeRef.new(shape: SigninDelegateGroup)

    StreamingConfiguration.add_member(:data_retention_in_hours, Shapes::ShapeRef.new(shape: DataRetentionInHours, required: true, location_name: "DataRetentionInHours"))
    StreamingConfiguration.add_member(:disabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "Disabled"))
    StreamingConfiguration.add_member(:streaming_notification_targets, Shapes::ShapeRef.new(shape: StreamingNotificationTargetList, location_name: "StreamingNotificationTargets"))
    StreamingConfiguration.struct_class = Types::StreamingConfiguration

    StreamingNotificationTarget.add_member(:notification_target, Shapes::ShapeRef.new(shape: NotificationTarget, required: true, location_name: "NotificationTarget"))
    StreamingNotificationTarget.struct_class = Types::StreamingNotificationTarget

    StreamingNotificationTargetList.member = Shapes::ShapeRef.new(shape: StreamingNotificationTarget)

    StringList.member = Shapes::ShapeRef.new(shape: String)

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, required: true, location_name: "Key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: TagValue, required: true, location_name: "Value"))
    Tag.struct_class = Types::Tag

    TagAttendeeRequest.add_member(:meeting_id, Shapes::ShapeRef.new(shape: GuidString, required: true, location: "uri", location_name: "meetingId"))
    TagAttendeeRequest.add_member(:attendee_id, Shapes::ShapeRef.new(shape: GuidString, required: true, location: "uri", location_name: "attendeeId"))
    TagAttendeeRequest.add_member(:tags, Shapes::ShapeRef.new(shape: AttendeeTagList, required: true, location_name: "Tags"))
    TagAttendeeRequest.struct_class = Types::TagAttendeeRequest

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagList.member = Shapes::ShapeRef.new(shape: Tag)

    TagMeetingRequest.add_member(:meeting_id, Shapes::ShapeRef.new(shape: GuidString, required: true, location: "uri", location_name: "meetingId"))
    TagMeetingRequest.add_member(:tags, Shapes::ShapeRef.new(shape: MeetingTagList, required: true, location_name: "Tags"))
    TagMeetingRequest.struct_class = Types::TagMeetingRequest

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "ResourceARN"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, required: true, location_name: "Tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TelephonySettings.add_member(:inbound_calling, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "InboundCalling"))
    TelephonySettings.add_member(:outbound_calling, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "OutboundCalling"))
    TelephonySettings.add_member(:sms, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "SMS"))
    TelephonySettings.struct_class = Types::TelephonySettings

    Termination.add_member(:cps_limit, Shapes::ShapeRef.new(shape: CpsLimit, location_name: "CpsLimit"))
    Termination.add_member(:default_phone_number, Shapes::ShapeRef.new(shape: E164PhoneNumber, location_name: "DefaultPhoneNumber"))
    Termination.add_member(:calling_regions, Shapes::ShapeRef.new(shape: CallingRegionList, location_name: "CallingRegions"))
    Termination.add_member(:cidr_allowed_list, Shapes::ShapeRef.new(shape: StringList, location_name: "CidrAllowedList"))
    Termination.add_member(:disabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "Disabled"))
    Termination.struct_class = Types::Termination

    TerminationHealth.add_member(:timestamp, Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: "Timestamp"))
    TerminationHealth.add_member(:source, Shapes::ShapeRef.new(shape: String, location_name: "Source"))
    TerminationHealth.struct_class = Types::TerminationHealth

    ThrottledClientException.add_member(:code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "Code"))
    ThrottledClientException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ThrottledClientException.struct_class = Types::ThrottledClientException

    UnauthorizedClientException.add_member(:code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "Code"))
    UnauthorizedClientException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    UnauthorizedClientException.struct_class = Types::UnauthorizedClientException

    UnprocessableEntityException.add_member(:code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "Code"))
    UnprocessableEntityException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    UnprocessableEntityException.struct_class = Types::UnprocessableEntityException

    UntagAttendeeRequest.add_member(:meeting_id, Shapes::ShapeRef.new(shape: GuidString, required: true, location: "uri", location_name: "meetingId"))
    UntagAttendeeRequest.add_member(:attendee_id, Shapes::ShapeRef.new(shape: GuidString, required: true, location: "uri", location_name: "attendeeId"))
    UntagAttendeeRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: AttendeeTagKeyList, required: true, location_name: "TagKeys"))
    UntagAttendeeRequest.struct_class = Types::UntagAttendeeRequest

    UntagMeetingRequest.add_member(:meeting_id, Shapes::ShapeRef.new(shape: GuidString, required: true, location: "uri", location_name: "meetingId"))
    UntagMeetingRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: MeetingTagKeyList, required: true, location_name: "TagKeys"))
    UntagMeetingRequest.struct_class = Types::UntagMeetingRequest

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "ResourceARN"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location_name: "TagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UpdateAccountRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "accountId"))
    UpdateAccountRequest.add_member(:name, Shapes::ShapeRef.new(shape: AccountName, location_name: "Name"))
    UpdateAccountRequest.struct_class = Types::UpdateAccountRequest

    UpdateAccountResponse.add_member(:account, Shapes::ShapeRef.new(shape: Account, location_name: "Account"))
    UpdateAccountResponse.struct_class = Types::UpdateAccountResponse

    UpdateAccountSettingsRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "accountId"))
    UpdateAccountSettingsRequest.add_member(:account_settings, Shapes::ShapeRef.new(shape: AccountSettings, required: true, location_name: "AccountSettings"))
    UpdateAccountSettingsRequest.struct_class = Types::UpdateAccountSettingsRequest

    UpdateAccountSettingsResponse.struct_class = Types::UpdateAccountSettingsResponse

    UpdateBotRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "accountId"))
    UpdateBotRequest.add_member(:bot_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "botId"))
    UpdateBotRequest.add_member(:disabled, Shapes::ShapeRef.new(shape: NullableBoolean, location_name: "Disabled"))
    UpdateBotRequest.struct_class = Types::UpdateBotRequest

    UpdateBotResponse.add_member(:bot, Shapes::ShapeRef.new(shape: Bot, location_name: "Bot"))
    UpdateBotResponse.struct_class = Types::UpdateBotResponse

    UpdateGlobalSettingsRequest.add_member(:business_calling, Shapes::ShapeRef.new(shape: BusinessCallingSettings, required: true, location_name: "BusinessCalling"))
    UpdateGlobalSettingsRequest.add_member(:voice_connector, Shapes::ShapeRef.new(shape: VoiceConnectorSettings, required: true, location_name: "VoiceConnector"))
    UpdateGlobalSettingsRequest.struct_class = Types::UpdateGlobalSettingsRequest

    UpdatePhoneNumberRequest.add_member(:phone_number_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "phoneNumberId"))
    UpdatePhoneNumberRequest.add_member(:product_type, Shapes::ShapeRef.new(shape: PhoneNumberProductType, location_name: "ProductType"))
    UpdatePhoneNumberRequest.add_member(:calling_name, Shapes::ShapeRef.new(shape: CallingName, location_name: "CallingName"))
    UpdatePhoneNumberRequest.struct_class = Types::UpdatePhoneNumberRequest

    UpdatePhoneNumberRequestItem.add_member(:phone_number_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "PhoneNumberId"))
    UpdatePhoneNumberRequestItem.add_member(:product_type, Shapes::ShapeRef.new(shape: PhoneNumberProductType, location_name: "ProductType"))
    UpdatePhoneNumberRequestItem.add_member(:calling_name, Shapes::ShapeRef.new(shape: CallingName, location_name: "CallingName"))
    UpdatePhoneNumberRequestItem.struct_class = Types::UpdatePhoneNumberRequestItem

    UpdatePhoneNumberRequestItemList.member = Shapes::ShapeRef.new(shape: UpdatePhoneNumberRequestItem)

    UpdatePhoneNumberResponse.add_member(:phone_number, Shapes::ShapeRef.new(shape: PhoneNumber, location_name: "PhoneNumber"))
    UpdatePhoneNumberResponse.struct_class = Types::UpdatePhoneNumberResponse

    UpdatePhoneNumberSettingsRequest.add_member(:calling_name, Shapes::ShapeRef.new(shape: CallingName, required: true, location_name: "CallingName"))
    UpdatePhoneNumberSettingsRequest.struct_class = Types::UpdatePhoneNumberSettingsRequest

    UpdateProxySessionRequest.add_member(:voice_connector_id, Shapes::ShapeRef.new(shape: NonEmptyString128, required: true, location: "uri", location_name: "voiceConnectorId"))
    UpdateProxySessionRequest.add_member(:proxy_session_id, Shapes::ShapeRef.new(shape: NonEmptyString128, required: true, location: "uri", location_name: "proxySessionId"))
    UpdateProxySessionRequest.add_member(:capabilities, Shapes::ShapeRef.new(shape: CapabilityList, required: true, location_name: "Capabilities"))
    UpdateProxySessionRequest.add_member(:expiry_minutes, Shapes::ShapeRef.new(shape: PositiveInteger, location_name: "ExpiryMinutes"))
    UpdateProxySessionRequest.struct_class = Types::UpdateProxySessionRequest

    UpdateProxySessionResponse.add_member(:proxy_session, Shapes::ShapeRef.new(shape: ProxySession, location_name: "ProxySession"))
    UpdateProxySessionResponse.struct_class = Types::UpdateProxySessionResponse

    UpdateRoomMembershipRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "accountId"))
    UpdateRoomMembershipRequest.add_member(:room_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "roomId"))
    UpdateRoomMembershipRequest.add_member(:member_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "memberId"))
    UpdateRoomMembershipRequest.add_member(:role, Shapes::ShapeRef.new(shape: RoomMembershipRole, location_name: "Role"))
    UpdateRoomMembershipRequest.struct_class = Types::UpdateRoomMembershipRequest

    UpdateRoomMembershipResponse.add_member(:room_membership, Shapes::ShapeRef.new(shape: RoomMembership, location_name: "RoomMembership"))
    UpdateRoomMembershipResponse.struct_class = Types::UpdateRoomMembershipResponse

    UpdateRoomRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "accountId"))
    UpdateRoomRequest.add_member(:room_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "roomId"))
    UpdateRoomRequest.add_member(:name, Shapes::ShapeRef.new(shape: SensitiveString, location_name: "Name"))
    UpdateRoomRequest.struct_class = Types::UpdateRoomRequest

    UpdateRoomResponse.add_member(:room, Shapes::ShapeRef.new(shape: Room, location_name: "Room"))
    UpdateRoomResponse.struct_class = Types::UpdateRoomResponse

    UpdateUserRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "accountId"))
    UpdateUserRequest.add_member(:user_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "userId"))
    UpdateUserRequest.add_member(:license_type, Shapes::ShapeRef.new(shape: License, location_name: "LicenseType"))
    UpdateUserRequest.add_member(:user_type, Shapes::ShapeRef.new(shape: UserType, location_name: "UserType"))
    UpdateUserRequest.add_member(:alexa_for_business_metadata, Shapes::ShapeRef.new(shape: AlexaForBusinessMetadata, location_name: "AlexaForBusinessMetadata"))
    UpdateUserRequest.struct_class = Types::UpdateUserRequest

    UpdateUserRequestItem.add_member(:user_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "UserId"))
    UpdateUserRequestItem.add_member(:license_type, Shapes::ShapeRef.new(shape: License, location_name: "LicenseType"))
    UpdateUserRequestItem.add_member(:user_type, Shapes::ShapeRef.new(shape: UserType, location_name: "UserType"))
    UpdateUserRequestItem.add_member(:alexa_for_business_metadata, Shapes::ShapeRef.new(shape: AlexaForBusinessMetadata, location_name: "AlexaForBusinessMetadata"))
    UpdateUserRequestItem.struct_class = Types::UpdateUserRequestItem

    UpdateUserRequestItemList.member = Shapes::ShapeRef.new(shape: UpdateUserRequestItem)

    UpdateUserResponse.add_member(:user, Shapes::ShapeRef.new(shape: User, location_name: "User"))
    UpdateUserResponse.struct_class = Types::UpdateUserResponse

    UpdateUserSettingsRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "accountId"))
    UpdateUserSettingsRequest.add_member(:user_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "userId"))
    UpdateUserSettingsRequest.add_member(:user_settings, Shapes::ShapeRef.new(shape: UserSettings, required: true, location_name: "UserSettings"))
    UpdateUserSettingsRequest.struct_class = Types::UpdateUserSettingsRequest

    UpdateVoiceConnectorGroupRequest.add_member(:voice_connector_group_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "voiceConnectorGroupId"))
    UpdateVoiceConnectorGroupRequest.add_member(:name, Shapes::ShapeRef.new(shape: VoiceConnectorGroupName, required: true, location_name: "Name"))
    UpdateVoiceConnectorGroupRequest.add_member(:voice_connector_items, Shapes::ShapeRef.new(shape: VoiceConnectorItemList, required: true, location_name: "VoiceConnectorItems"))
    UpdateVoiceConnectorGroupRequest.struct_class = Types::UpdateVoiceConnectorGroupRequest

    UpdateVoiceConnectorGroupResponse.add_member(:voice_connector_group, Shapes::ShapeRef.new(shape: VoiceConnectorGroup, location_name: "VoiceConnectorGroup"))
    UpdateVoiceConnectorGroupResponse.struct_class = Types::UpdateVoiceConnectorGroupResponse

    UpdateVoiceConnectorRequest.add_member(:voice_connector_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "voiceConnectorId"))
    UpdateVoiceConnectorRequest.add_member(:name, Shapes::ShapeRef.new(shape: VoiceConnectorName, required: true, location_name: "Name"))
    UpdateVoiceConnectorRequest.add_member(:require_encryption, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "RequireEncryption"))
    UpdateVoiceConnectorRequest.struct_class = Types::UpdateVoiceConnectorRequest

    UpdateVoiceConnectorResponse.add_member(:voice_connector, Shapes::ShapeRef.new(shape: VoiceConnector, location_name: "VoiceConnector"))
    UpdateVoiceConnectorResponse.struct_class = Types::UpdateVoiceConnectorResponse

    User.add_member(:user_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "UserId"))
    User.add_member(:account_id, Shapes::ShapeRef.new(shape: String, location_name: "AccountId"))
    User.add_member(:primary_email, Shapes::ShapeRef.new(shape: EmailAddress, location_name: "PrimaryEmail"))
    User.add_member(:primary_provisioned_number, Shapes::ShapeRef.new(shape: SensitiveString, location_name: "PrimaryProvisionedNumber"))
    User.add_member(:display_name, Shapes::ShapeRef.new(shape: SensitiveString, location_name: "DisplayName"))
    User.add_member(:license_type, Shapes::ShapeRef.new(shape: License, location_name: "LicenseType"))
    User.add_member(:user_type, Shapes::ShapeRef.new(shape: UserType, location_name: "UserType"))
    User.add_member(:user_registration_status, Shapes::ShapeRef.new(shape: RegistrationStatus, location_name: "UserRegistrationStatus"))
    User.add_member(:user_invitation_status, Shapes::ShapeRef.new(shape: InviteStatus, location_name: "UserInvitationStatus"))
    User.add_member(:registered_on, Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: "RegisteredOn"))
    User.add_member(:invited_on, Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: "InvitedOn"))
    User.add_member(:alexa_for_business_metadata, Shapes::ShapeRef.new(shape: AlexaForBusinessMetadata, location_name: "AlexaForBusinessMetadata"))
    User.add_member(:personal_pin, Shapes::ShapeRef.new(shape: String, location_name: "PersonalPIN"))
    User.struct_class = Types::User

    UserEmailList.member = Shapes::ShapeRef.new(shape: EmailAddress)

    UserError.add_member(:user_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "UserId"))
    UserError.add_member(:error_code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "ErrorCode"))
    UserError.add_member(:error_message, Shapes::ShapeRef.new(shape: String, location_name: "ErrorMessage"))
    UserError.struct_class = Types::UserError

    UserErrorList.member = Shapes::ShapeRef.new(shape: UserError)

    UserIdList.member = Shapes::ShapeRef.new(shape: NonEmptyString)

    UserList.member = Shapes::ShapeRef.new(shape: User)

    UserSettings.add_member(:telephony, Shapes::ShapeRef.new(shape: TelephonySettings, required: true, location_name: "Telephony"))
    UserSettings.struct_class = Types::UserSettings

    VoiceConnector.add_member(:voice_connector_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "VoiceConnectorId"))
    VoiceConnector.add_member(:aws_region, Shapes::ShapeRef.new(shape: VoiceConnectorAwsRegion, location_name: "AwsRegion"))
    VoiceConnector.add_member(:name, Shapes::ShapeRef.new(shape: VoiceConnectorName, location_name: "Name"))
    VoiceConnector.add_member(:outbound_host_name, Shapes::ShapeRef.new(shape: String, location_name: "OutboundHostName"))
    VoiceConnector.add_member(:require_encryption, Shapes::ShapeRef.new(shape: Boolean, location_name: "RequireEncryption"))
    VoiceConnector.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: "CreatedTimestamp"))
    VoiceConnector.add_member(:updated_timestamp, Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: "UpdatedTimestamp"))
    VoiceConnector.struct_class = Types::VoiceConnector

    VoiceConnectorGroup.add_member(:voice_connector_group_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "VoiceConnectorGroupId"))
    VoiceConnectorGroup.add_member(:name, Shapes::ShapeRef.new(shape: VoiceConnectorGroupName, location_name: "Name"))
    VoiceConnectorGroup.add_member(:voice_connector_items, Shapes::ShapeRef.new(shape: VoiceConnectorItemList, location_name: "VoiceConnectorItems"))
    VoiceConnectorGroup.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: "CreatedTimestamp"))
    VoiceConnectorGroup.add_member(:updated_timestamp, Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: "UpdatedTimestamp"))
    VoiceConnectorGroup.struct_class = Types::VoiceConnectorGroup

    VoiceConnectorGroupList.member = Shapes::ShapeRef.new(shape: VoiceConnectorGroup)

    VoiceConnectorItem.add_member(:voice_connector_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "VoiceConnectorId"))
    VoiceConnectorItem.add_member(:priority, Shapes::ShapeRef.new(shape: VoiceConnectorItemPriority, required: true, location_name: "Priority"))
    VoiceConnectorItem.struct_class = Types::VoiceConnectorItem

    VoiceConnectorItemList.member = Shapes::ShapeRef.new(shape: VoiceConnectorItem)

    VoiceConnectorList.member = Shapes::ShapeRef.new(shape: VoiceConnector)

    VoiceConnectorSettings.add_member(:cdr_bucket, Shapes::ShapeRef.new(shape: String, location_name: "CdrBucket", metadata: {"box"=>true}))
    VoiceConnectorSettings.struct_class = Types::VoiceConnectorSettings


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2018-05-01"

      api.metadata = {
        "apiVersion" => "2018-05-01",
        "endpointPrefix" => "chime",
        "protocol" => "rest-json",
        "serviceFullName" => "Amazon Chime",
        "serviceId" => "Chime",
        "signatureVersion" => "v4",
        "uid" => "chime-2018-05-01",
      }

      api.add_operation(:associate_phone_number_with_user, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociatePhoneNumberWithUser"
        o.http_method = "POST"
        o.http_request_uri = "/accounts/{accountId}/users/{userId}?operation=associate-phone-number"
        o.input = Shapes::ShapeRef.new(shape: AssociatePhoneNumberWithUserRequest)
        o.output = Shapes::ShapeRef.new(shape: AssociatePhoneNumberWithUserResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:associate_phone_numbers_with_voice_connector, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociatePhoneNumbersWithVoiceConnector"
        o.http_method = "POST"
        o.http_request_uri = "/voice-connectors/{voiceConnectorId}?operation=associate-phone-numbers"
        o.input = Shapes::ShapeRef.new(shape: AssociatePhoneNumbersWithVoiceConnectorRequest)
        o.output = Shapes::ShapeRef.new(shape: AssociatePhoneNumbersWithVoiceConnectorResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:associate_phone_numbers_with_voice_connector_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociatePhoneNumbersWithVoiceConnectorGroup"
        o.http_method = "POST"
        o.http_request_uri = "/voice-connector-groups/{voiceConnectorGroupId}?operation=associate-phone-numbers"
        o.input = Shapes::ShapeRef.new(shape: AssociatePhoneNumbersWithVoiceConnectorGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: AssociatePhoneNumbersWithVoiceConnectorGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:associate_signin_delegate_groups_with_account, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateSigninDelegateGroupsWithAccount"
        o.http_method = "POST"
        o.http_request_uri = "/accounts/{accountId}?operation=associate-signin-delegate-groups"
        o.input = Shapes::ShapeRef.new(shape: AssociateSigninDelegateGroupsWithAccountRequest)
        o.output = Shapes::ShapeRef.new(shape: AssociateSigninDelegateGroupsWithAccountResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:batch_create_attendee, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchCreateAttendee"
        o.http_method = "POST"
        o.http_request_uri = "/meetings/{meetingId}/attendees?operation=batch-create"
        o.input = Shapes::ShapeRef.new(shape: BatchCreateAttendeeRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchCreateAttendeeResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:batch_create_room_membership, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchCreateRoomMembership"
        o.http_method = "POST"
        o.http_request_uri = "/accounts/{accountId}/rooms/{roomId}/memberships?operation=batch-create"
        o.input = Shapes::ShapeRef.new(shape: BatchCreateRoomMembershipRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchCreateRoomMembershipResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:batch_delete_phone_number, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchDeletePhoneNumber"
        o.http_method = "POST"
        o.http_request_uri = "/phone-numbers?operation=batch-delete"
        o.input = Shapes::ShapeRef.new(shape: BatchDeletePhoneNumberRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchDeletePhoneNumberResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:batch_suspend_user, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchSuspendUser"
        o.http_method = "POST"
        o.http_request_uri = "/accounts/{accountId}/users?operation=suspend"
        o.input = Shapes::ShapeRef.new(shape: BatchSuspendUserRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchSuspendUserResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:batch_unsuspend_user, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchUnsuspendUser"
        o.http_method = "POST"
        o.http_request_uri = "/accounts/{accountId}/users?operation=unsuspend"
        o.input = Shapes::ShapeRef.new(shape: BatchUnsuspendUserRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchUnsuspendUserResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:batch_update_phone_number, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchUpdatePhoneNumber"
        o.http_method = "POST"
        o.http_request_uri = "/phone-numbers?operation=batch-update"
        o.input = Shapes::ShapeRef.new(shape: BatchUpdatePhoneNumberRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchUpdatePhoneNumberResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:batch_update_user, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchUpdateUser"
        o.http_method = "POST"
        o.http_request_uri = "/accounts/{accountId}/users"
        o.input = Shapes::ShapeRef.new(shape: BatchUpdateUserRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchUpdateUserResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:create_account, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateAccount"
        o.http_method = "POST"
        o.http_request_uri = "/accounts"
        o.input = Shapes::ShapeRef.new(shape: CreateAccountRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateAccountResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:create_attendee, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateAttendee"
        o.http_method = "POST"
        o.http_request_uri = "/meetings/{meetingId}/attendees"
        o.input = Shapes::ShapeRef.new(shape: CreateAttendeeRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateAttendeeResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:create_bot, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateBot"
        o.http_method = "POST"
        o.http_request_uri = "/accounts/{accountId}/bots"
        o.input = Shapes::ShapeRef.new(shape: CreateBotRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateBotResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
      end)

      api.add_operation(:create_meeting, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateMeeting"
        o.http_method = "POST"
        o.http_request_uri = "/meetings"
        o.input = Shapes::ShapeRef.new(shape: CreateMeetingRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateMeetingResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:create_meeting_with_attendees, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateMeetingWithAttendees"
        o.http_method = "POST"
        o.http_request_uri = "/meetings?operation=create-attendees"
        o.input = Shapes::ShapeRef.new(shape: CreateMeetingWithAttendeesRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateMeetingWithAttendeesResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:create_phone_number_order, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreatePhoneNumberOrder"
        o.http_method = "POST"
        o.http_request_uri = "/phone-number-orders"
        o.input = Shapes::ShapeRef.new(shape: CreatePhoneNumberOrderRequest)
        o.output = Shapes::ShapeRef.new(shape: CreatePhoneNumberOrderResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:create_proxy_session, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateProxySession"
        o.http_method = "POST"
        o.http_request_uri = "/voice-connectors/{voiceConnectorId}/proxy-sessions"
        o.input = Shapes::ShapeRef.new(shape: CreateProxySessionRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateProxySessionResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:create_room, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateRoom"
        o.http_method = "POST"
        o.http_request_uri = "/accounts/{accountId}/rooms"
        o.input = Shapes::ShapeRef.new(shape: CreateRoomRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateRoomResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:create_room_membership, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateRoomMembership"
        o.http_method = "POST"
        o.http_request_uri = "/accounts/{accountId}/rooms/{roomId}/memberships"
        o.input = Shapes::ShapeRef.new(shape: CreateRoomMembershipRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateRoomMembershipResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:create_user, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateUser"
        o.http_method = "POST"
        o.http_request_uri = "/accounts/{accountId}/users?operation=create"
        o.input = Shapes::ShapeRef.new(shape: CreateUserRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateUserResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:create_voice_connector, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateVoiceConnector"
        o.http_method = "POST"
        o.http_request_uri = "/voice-connectors"
        o.input = Shapes::ShapeRef.new(shape: CreateVoiceConnectorRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateVoiceConnectorResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:create_voice_connector_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateVoiceConnectorGroup"
        o.http_method = "POST"
        o.http_request_uri = "/voice-connector-groups"
        o.input = Shapes::ShapeRef.new(shape: CreateVoiceConnectorGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateVoiceConnectorGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:delete_account, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteAccount"
        o.http_method = "DELETE"
        o.http_request_uri = "/accounts/{accountId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteAccountRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteAccountResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: UnprocessableEntityException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:delete_attendee, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteAttendee"
        o.http_method = "DELETE"
        o.http_request_uri = "/meetings/{meetingId}/attendees/{attendeeId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteAttendeeRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:delete_events_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteEventsConfiguration"
        o.http_method = "DELETE"
        o.http_request_uri = "/accounts/{accountId}/bots/{botId}/events-configuration"
        o.input = Shapes::ShapeRef.new(shape: DeleteEventsConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
      end)

      api.add_operation(:delete_meeting, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteMeeting"
        o.http_method = "DELETE"
        o.http_request_uri = "/meetings/{meetingId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteMeetingRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:delete_phone_number, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeletePhoneNumber"
        o.http_method = "DELETE"
        o.http_request_uri = "/phone-numbers/{phoneNumberId}"
        o.input = Shapes::ShapeRef.new(shape: DeletePhoneNumberRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:delete_proxy_session, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteProxySession"
        o.http_method = "DELETE"
        o.http_request_uri = "/voice-connectors/{voiceConnectorId}/proxy-sessions/{proxySessionId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteProxySessionRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:delete_room, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteRoom"
        o.http_method = "DELETE"
        o.http_request_uri = "/accounts/{accountId}/rooms/{roomId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteRoomRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:delete_room_membership, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteRoomMembership"
        o.http_method = "DELETE"
        o.http_request_uri = "/accounts/{accountId}/rooms/{roomId}/memberships/{memberId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteRoomMembershipRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:delete_voice_connector, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteVoiceConnector"
        o.http_method = "DELETE"
        o.http_request_uri = "/voice-connectors/{voiceConnectorId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteVoiceConnectorRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:delete_voice_connector_emergency_calling_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteVoiceConnectorEmergencyCallingConfiguration"
        o.http_method = "DELETE"
        o.http_request_uri = "/voice-connectors/{voiceConnectorId}/emergency-calling-configuration"
        o.input = Shapes::ShapeRef.new(shape: DeleteVoiceConnectorEmergencyCallingConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:delete_voice_connector_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteVoiceConnectorGroup"
        o.http_method = "DELETE"
        o.http_request_uri = "/voice-connector-groups/{voiceConnectorGroupId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteVoiceConnectorGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:delete_voice_connector_origination, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteVoiceConnectorOrigination"
        o.http_method = "DELETE"
        o.http_request_uri = "/voice-connectors/{voiceConnectorId}/origination"
        o.input = Shapes::ShapeRef.new(shape: DeleteVoiceConnectorOriginationRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:delete_voice_connector_proxy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteVoiceConnectorProxy"
        o.http_method = "DELETE"
        o.http_request_uri = "/voice-connectors/{voiceConnectorId}/programmable-numbers/proxy"
        o.input = Shapes::ShapeRef.new(shape: DeleteVoiceConnectorProxyRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:delete_voice_connector_streaming_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteVoiceConnectorStreamingConfiguration"
        o.http_method = "DELETE"
        o.http_request_uri = "/voice-connectors/{voiceConnectorId}/streaming-configuration"
        o.input = Shapes::ShapeRef.new(shape: DeleteVoiceConnectorStreamingConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:delete_voice_connector_termination, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteVoiceConnectorTermination"
        o.http_method = "DELETE"
        o.http_request_uri = "/voice-connectors/{voiceConnectorId}/termination"
        o.input = Shapes::ShapeRef.new(shape: DeleteVoiceConnectorTerminationRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:delete_voice_connector_termination_credentials, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteVoiceConnectorTerminationCredentials"
        o.http_method = "POST"
        o.http_request_uri = "/voice-connectors/{voiceConnectorId}/termination/credentials?operation=delete"
        o.input = Shapes::ShapeRef.new(shape: DeleteVoiceConnectorTerminationCredentialsRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:disassociate_phone_number_from_user, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociatePhoneNumberFromUser"
        o.http_method = "POST"
        o.http_request_uri = "/accounts/{accountId}/users/{userId}?operation=disassociate-phone-number"
        o.input = Shapes::ShapeRef.new(shape: DisassociatePhoneNumberFromUserRequest)
        o.output = Shapes::ShapeRef.new(shape: DisassociatePhoneNumberFromUserResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:disassociate_phone_numbers_from_voice_connector, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociatePhoneNumbersFromVoiceConnector"
        o.http_method = "POST"
        o.http_request_uri = "/voice-connectors/{voiceConnectorId}?operation=disassociate-phone-numbers"
        o.input = Shapes::ShapeRef.new(shape: DisassociatePhoneNumbersFromVoiceConnectorRequest)
        o.output = Shapes::ShapeRef.new(shape: DisassociatePhoneNumbersFromVoiceConnectorResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:disassociate_phone_numbers_from_voice_connector_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociatePhoneNumbersFromVoiceConnectorGroup"
        o.http_method = "POST"
        o.http_request_uri = "/voice-connector-groups/{voiceConnectorGroupId}?operation=disassociate-phone-numbers"
        o.input = Shapes::ShapeRef.new(shape: DisassociatePhoneNumbersFromVoiceConnectorGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: DisassociatePhoneNumbersFromVoiceConnectorGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:disassociate_signin_delegate_groups_from_account, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateSigninDelegateGroupsFromAccount"
        o.http_method = "POST"
        o.http_request_uri = "/accounts/{accountId}?operation=disassociate-signin-delegate-groups"
        o.input = Shapes::ShapeRef.new(shape: DisassociateSigninDelegateGroupsFromAccountRequest)
        o.output = Shapes::ShapeRef.new(shape: DisassociateSigninDelegateGroupsFromAccountResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:get_account, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAccount"
        o.http_method = "GET"
        o.http_request_uri = "/accounts/{accountId}"
        o.input = Shapes::ShapeRef.new(shape: GetAccountRequest)
        o.output = Shapes::ShapeRef.new(shape: GetAccountResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:get_account_settings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAccountSettings"
        o.http_method = "GET"
        o.http_request_uri = "/accounts/{accountId}/settings"
        o.input = Shapes::ShapeRef.new(shape: GetAccountSettingsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetAccountSettingsResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:get_attendee, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAttendee"
        o.http_method = "GET"
        o.http_request_uri = "/meetings/{meetingId}/attendees/{attendeeId}"
        o.input = Shapes::ShapeRef.new(shape: GetAttendeeRequest)
        o.output = Shapes::ShapeRef.new(shape: GetAttendeeResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:get_bot, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetBot"
        o.http_method = "GET"
        o.http_request_uri = "/accounts/{accountId}/bots/{botId}"
        o.input = Shapes::ShapeRef.new(shape: GetBotRequest)
        o.output = Shapes::ShapeRef.new(shape: GetBotResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
      end)

      api.add_operation(:get_events_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetEventsConfiguration"
        o.http_method = "GET"
        o.http_request_uri = "/accounts/{accountId}/bots/{botId}/events-configuration"
        o.input = Shapes::ShapeRef.new(shape: GetEventsConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetEventsConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
      end)

      api.add_operation(:get_global_settings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetGlobalSettings"
        o.http_method = "GET"
        o.http_request_uri = "/settings"
        o.input = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.output = Shapes::ShapeRef.new(shape: GetGlobalSettingsResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:get_meeting, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetMeeting"
        o.http_method = "GET"
        o.http_request_uri = "/meetings/{meetingId}"
        o.input = Shapes::ShapeRef.new(shape: GetMeetingRequest)
        o.output = Shapes::ShapeRef.new(shape: GetMeetingResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:get_phone_number, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetPhoneNumber"
        o.http_method = "GET"
        o.http_request_uri = "/phone-numbers/{phoneNumberId}"
        o.input = Shapes::ShapeRef.new(shape: GetPhoneNumberRequest)
        o.output = Shapes::ShapeRef.new(shape: GetPhoneNumberResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:get_phone_number_order, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetPhoneNumberOrder"
        o.http_method = "GET"
        o.http_request_uri = "/phone-number-orders/{phoneNumberOrderId}"
        o.input = Shapes::ShapeRef.new(shape: GetPhoneNumberOrderRequest)
        o.output = Shapes::ShapeRef.new(shape: GetPhoneNumberOrderResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:get_phone_number_settings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetPhoneNumberSettings"
        o.http_method = "GET"
        o.http_request_uri = "/settings/phone-number"
        o.input = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.output = Shapes::ShapeRef.new(shape: GetPhoneNumberSettingsResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:get_proxy_session, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetProxySession"
        o.http_method = "GET"
        o.http_request_uri = "/voice-connectors/{voiceConnectorId}/proxy-sessions/{proxySessionId}"
        o.input = Shapes::ShapeRef.new(shape: GetProxySessionRequest)
        o.output = Shapes::ShapeRef.new(shape: GetProxySessionResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:get_retention_settings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetRetentionSettings"
        o.http_method = "GET"
        o.http_request_uri = "/accounts/{accountId}/retention-settings"
        o.input = Shapes::ShapeRef.new(shape: GetRetentionSettingsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetRetentionSettingsResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:get_room, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetRoom"
        o.http_method = "GET"
        o.http_request_uri = "/accounts/{accountId}/rooms/{roomId}"
        o.input = Shapes::ShapeRef.new(shape: GetRoomRequest)
        o.output = Shapes::ShapeRef.new(shape: GetRoomResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:get_user, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetUser"
        o.http_method = "GET"
        o.http_request_uri = "/accounts/{accountId}/users/{userId}"
        o.input = Shapes::ShapeRef.new(shape: GetUserRequest)
        o.output = Shapes::ShapeRef.new(shape: GetUserResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:get_user_settings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetUserSettings"
        o.http_method = "GET"
        o.http_request_uri = "/accounts/{accountId}/users/{userId}/settings"
        o.input = Shapes::ShapeRef.new(shape: GetUserSettingsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetUserSettingsResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:get_voice_connector, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetVoiceConnector"
        o.http_method = "GET"
        o.http_request_uri = "/voice-connectors/{voiceConnectorId}"
        o.input = Shapes::ShapeRef.new(shape: GetVoiceConnectorRequest)
        o.output = Shapes::ShapeRef.new(shape: GetVoiceConnectorResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:get_voice_connector_emergency_calling_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetVoiceConnectorEmergencyCallingConfiguration"
        o.http_method = "GET"
        o.http_request_uri = "/voice-connectors/{voiceConnectorId}/emergency-calling-configuration"
        o.input = Shapes::ShapeRef.new(shape: GetVoiceConnectorEmergencyCallingConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetVoiceConnectorEmergencyCallingConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:get_voice_connector_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetVoiceConnectorGroup"
        o.http_method = "GET"
        o.http_request_uri = "/voice-connector-groups/{voiceConnectorGroupId}"
        o.input = Shapes::ShapeRef.new(shape: GetVoiceConnectorGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: GetVoiceConnectorGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:get_voice_connector_logging_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetVoiceConnectorLoggingConfiguration"
        o.http_method = "GET"
        o.http_request_uri = "/voice-connectors/{voiceConnectorId}/logging-configuration"
        o.input = Shapes::ShapeRef.new(shape: GetVoiceConnectorLoggingConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetVoiceConnectorLoggingConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:get_voice_connector_origination, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetVoiceConnectorOrigination"
        o.http_method = "GET"
        o.http_request_uri = "/voice-connectors/{voiceConnectorId}/origination"
        o.input = Shapes::ShapeRef.new(shape: GetVoiceConnectorOriginationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetVoiceConnectorOriginationResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:get_voice_connector_proxy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetVoiceConnectorProxy"
        o.http_method = "GET"
        o.http_request_uri = "/voice-connectors/{voiceConnectorId}/programmable-numbers/proxy"
        o.input = Shapes::ShapeRef.new(shape: GetVoiceConnectorProxyRequest)
        o.output = Shapes::ShapeRef.new(shape: GetVoiceConnectorProxyResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:get_voice_connector_streaming_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetVoiceConnectorStreamingConfiguration"
        o.http_method = "GET"
        o.http_request_uri = "/voice-connectors/{voiceConnectorId}/streaming-configuration"
        o.input = Shapes::ShapeRef.new(shape: GetVoiceConnectorStreamingConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetVoiceConnectorStreamingConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:get_voice_connector_termination, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetVoiceConnectorTermination"
        o.http_method = "GET"
        o.http_request_uri = "/voice-connectors/{voiceConnectorId}/termination"
        o.input = Shapes::ShapeRef.new(shape: GetVoiceConnectorTerminationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetVoiceConnectorTerminationResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:get_voice_connector_termination_health, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetVoiceConnectorTerminationHealth"
        o.http_method = "GET"
        o.http_request_uri = "/voice-connectors/{voiceConnectorId}/termination/health"
        o.input = Shapes::ShapeRef.new(shape: GetVoiceConnectorTerminationHealthRequest)
        o.output = Shapes::ShapeRef.new(shape: GetVoiceConnectorTerminationHealthResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:invite_users, Seahorse::Model::Operation.new.tap do |o|
        o.name = "InviteUsers"
        o.http_method = "POST"
        o.http_request_uri = "/accounts/{accountId}/users?operation=add"
        o.input = Shapes::ShapeRef.new(shape: InviteUsersRequest)
        o.output = Shapes::ShapeRef.new(shape: InviteUsersResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:list_accounts, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAccounts"
        o.http_method = "GET"
        o.http_request_uri = "/accounts"
        o.input = Shapes::ShapeRef.new(shape: ListAccountsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAccountsResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_attendee_tags, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAttendeeTags"
        o.http_method = "GET"
        o.http_request_uri = "/meetings/{meetingId}/attendees/{attendeeId}/tags"
        o.input = Shapes::ShapeRef.new(shape: ListAttendeeTagsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAttendeeTagsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:list_attendees, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAttendees"
        o.http_method = "GET"
        o.http_request_uri = "/meetings/{meetingId}/attendees"
        o.input = Shapes::ShapeRef.new(shape: ListAttendeesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAttendeesResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
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

      api.add_operation(:list_bots, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListBots"
        o.http_method = "GET"
        o.http_request_uri = "/accounts/{accountId}/bots"
        o.input = Shapes::ShapeRef.new(shape: ListBotsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListBotsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_meeting_tags, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListMeetingTags"
        o.http_method = "GET"
        o.http_request_uri = "/meetings/{meetingId}/tags"
        o.input = Shapes::ShapeRef.new(shape: ListMeetingTagsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListMeetingTagsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:list_meetings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListMeetings"
        o.http_method = "GET"
        o.http_request_uri = "/meetings"
        o.input = Shapes::ShapeRef.new(shape: ListMeetingsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListMeetingsResponse)
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

      api.add_operation(:list_phone_number_orders, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListPhoneNumberOrders"
        o.http_method = "GET"
        o.http_request_uri = "/phone-number-orders"
        o.input = Shapes::ShapeRef.new(shape: ListPhoneNumberOrdersRequest)
        o.output = Shapes::ShapeRef.new(shape: ListPhoneNumberOrdersResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_phone_numbers, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListPhoneNumbers"
        o.http_method = "GET"
        o.http_request_uri = "/phone-numbers"
        o.input = Shapes::ShapeRef.new(shape: ListPhoneNumbersRequest)
        o.output = Shapes::ShapeRef.new(shape: ListPhoneNumbersResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_proxy_sessions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListProxySessions"
        o.http_method = "GET"
        o.http_request_uri = "/voice-connectors/{voiceConnectorId}/proxy-sessions"
        o.input = Shapes::ShapeRef.new(shape: ListProxySessionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListProxySessionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_room_memberships, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListRoomMemberships"
        o.http_method = "GET"
        o.http_request_uri = "/accounts/{accountId}/rooms/{roomId}/memberships"
        o.input = Shapes::ShapeRef.new(shape: ListRoomMembershipsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListRoomMembershipsResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_rooms, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListRooms"
        o.http_method = "GET"
        o.http_request_uri = "/accounts/{accountId}/rooms"
        o.input = Shapes::ShapeRef.new(shape: ListRoomsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListRoomsResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
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
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:list_users, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListUsers"
        o.http_method = "GET"
        o.http_request_uri = "/accounts/{accountId}/users"
        o.input = Shapes::ShapeRef.new(shape: ListUsersRequest)
        o.output = Shapes::ShapeRef.new(shape: ListUsersResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_voice_connector_groups, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListVoiceConnectorGroups"
        o.http_method = "GET"
        o.http_request_uri = "/voice-connector-groups"
        o.input = Shapes::ShapeRef.new(shape: ListVoiceConnectorGroupsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListVoiceConnectorGroupsResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_voice_connector_termination_credentials, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListVoiceConnectorTerminationCredentials"
        o.http_method = "GET"
        o.http_request_uri = "/voice-connectors/{voiceConnectorId}/termination/credentials"
        o.input = Shapes::ShapeRef.new(shape: ListVoiceConnectorTerminationCredentialsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListVoiceConnectorTerminationCredentialsResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:list_voice_connectors, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListVoiceConnectors"
        o.http_method = "GET"
        o.http_request_uri = "/voice-connectors"
        o.input = Shapes::ShapeRef.new(shape: ListVoiceConnectorsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListVoiceConnectorsResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:logout_user, Seahorse::Model::Operation.new.tap do |o|
        o.name = "LogoutUser"
        o.http_method = "POST"
        o.http_request_uri = "/accounts/{accountId}/users/{userId}?operation=logout"
        o.input = Shapes::ShapeRef.new(shape: LogoutUserRequest)
        o.output = Shapes::ShapeRef.new(shape: LogoutUserResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:put_events_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutEventsConfiguration"
        o.http_method = "PUT"
        o.http_request_uri = "/accounts/{accountId}/bots/{botId}/events-configuration"
        o.input = Shapes::ShapeRef.new(shape: PutEventsConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: PutEventsConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
      end)

      api.add_operation(:put_retention_settings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutRetentionSettings"
        o.http_method = "PUT"
        o.http_request_uri = "/accounts/{accountId}/retention-settings"
        o.input = Shapes::ShapeRef.new(shape: PutRetentionSettingsRequest)
        o.output = Shapes::ShapeRef.new(shape: PutRetentionSettingsResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:put_voice_connector_emergency_calling_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutVoiceConnectorEmergencyCallingConfiguration"
        o.http_method = "PUT"
        o.http_request_uri = "/voice-connectors/{voiceConnectorId}/emergency-calling-configuration"
        o.input = Shapes::ShapeRef.new(shape: PutVoiceConnectorEmergencyCallingConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: PutVoiceConnectorEmergencyCallingConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:put_voice_connector_logging_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutVoiceConnectorLoggingConfiguration"
        o.http_method = "PUT"
        o.http_request_uri = "/voice-connectors/{voiceConnectorId}/logging-configuration"
        o.input = Shapes::ShapeRef.new(shape: PutVoiceConnectorLoggingConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: PutVoiceConnectorLoggingConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:put_voice_connector_origination, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutVoiceConnectorOrigination"
        o.http_method = "PUT"
        o.http_request_uri = "/voice-connectors/{voiceConnectorId}/origination"
        o.input = Shapes::ShapeRef.new(shape: PutVoiceConnectorOriginationRequest)
        o.output = Shapes::ShapeRef.new(shape: PutVoiceConnectorOriginationResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:put_voice_connector_proxy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutVoiceConnectorProxy"
        o.http_method = "PUT"
        o.http_request_uri = "/voice-connectors/{voiceConnectorId}/programmable-numbers/proxy"
        o.input = Shapes::ShapeRef.new(shape: PutVoiceConnectorProxyRequest)
        o.output = Shapes::ShapeRef.new(shape: PutVoiceConnectorProxyResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:put_voice_connector_streaming_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutVoiceConnectorStreamingConfiguration"
        o.http_method = "PUT"
        o.http_request_uri = "/voice-connectors/{voiceConnectorId}/streaming-configuration"
        o.input = Shapes::ShapeRef.new(shape: PutVoiceConnectorStreamingConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: PutVoiceConnectorStreamingConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:put_voice_connector_termination, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutVoiceConnectorTermination"
        o.http_method = "PUT"
        o.http_request_uri = "/voice-connectors/{voiceConnectorId}/termination"
        o.input = Shapes::ShapeRef.new(shape: PutVoiceConnectorTerminationRequest)
        o.output = Shapes::ShapeRef.new(shape: PutVoiceConnectorTerminationResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:put_voice_connector_termination_credentials, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutVoiceConnectorTerminationCredentials"
        o.http_method = "POST"
        o.http_request_uri = "/voice-connectors/{voiceConnectorId}/termination/credentials?operation=put"
        o.input = Shapes::ShapeRef.new(shape: PutVoiceConnectorTerminationCredentialsRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:redact_conversation_message, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RedactConversationMessage"
        o.http_method = "POST"
        o.http_request_uri = "/accounts/{accountId}/conversations/{conversationId}/messages/{messageId}?operation=redact"
        o.input = Shapes::ShapeRef.new(shape: RedactConversationMessageRequest)
        o.output = Shapes::ShapeRef.new(shape: RedactConversationMessageResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:redact_room_message, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RedactRoomMessage"
        o.http_method = "POST"
        o.http_request_uri = "/accounts/{accountId}/rooms/{roomId}/messages/{messageId}?operation=redact"
        o.input = Shapes::ShapeRef.new(shape: RedactRoomMessageRequest)
        o.output = Shapes::ShapeRef.new(shape: RedactRoomMessageResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:regenerate_security_token, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RegenerateSecurityToken"
        o.http_method = "POST"
        o.http_request_uri = "/accounts/{accountId}/bots/{botId}?operation=regenerate-security-token"
        o.input = Shapes::ShapeRef.new(shape: RegenerateSecurityTokenRequest)
        o.output = Shapes::ShapeRef.new(shape: RegenerateSecurityTokenResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
      end)

      api.add_operation(:reset_personal_pin, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ResetPersonalPIN"
        o.http_method = "POST"
        o.http_request_uri = "/accounts/{accountId}/users/{userId}?operation=reset-personal-pin"
        o.input = Shapes::ShapeRef.new(shape: ResetPersonalPINRequest)
        o.output = Shapes::ShapeRef.new(shape: ResetPersonalPINResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:restore_phone_number, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RestorePhoneNumber"
        o.http_method = "POST"
        o.http_request_uri = "/phone-numbers/{phoneNumberId}?operation=restore"
        o.input = Shapes::ShapeRef.new(shape: RestorePhoneNumberRequest)
        o.output = Shapes::ShapeRef.new(shape: RestorePhoneNumberResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:search_available_phone_numbers, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SearchAvailablePhoneNumbers"
        o.http_method = "GET"
        o.http_request_uri = "/search?type=phone-numbers"
        o.input = Shapes::ShapeRef.new(shape: SearchAvailablePhoneNumbersRequest)
        o.output = Shapes::ShapeRef.new(shape: SearchAvailablePhoneNumbersResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:tag_attendee, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagAttendee"
        o.http_method = "POST"
        o.http_request_uri = "/meetings/{meetingId}/attendees/{attendeeId}/tags?operation=add"
        o.input = Shapes::ShapeRef.new(shape: TagAttendeeRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:tag_meeting, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagMeeting"
        o.http_method = "POST"
        o.http_request_uri = "/meetings/{meetingId}/tags?operation=add"
        o.input = Shapes::ShapeRef.new(shape: TagMeetingRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
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
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:untag_attendee, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagAttendee"
        o.http_method = "POST"
        o.http_request_uri = "/meetings/{meetingId}/attendees/{attendeeId}/tags?operation=delete"
        o.input = Shapes::ShapeRef.new(shape: UntagAttendeeRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:untag_meeting, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagMeeting"
        o.http_method = "POST"
        o.http_request_uri = "/meetings/{meetingId}/tags?operation=delete"
        o.input = Shapes::ShapeRef.new(shape: UntagMeetingRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
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
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:update_account, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateAccount"
        o.http_method = "POST"
        o.http_request_uri = "/accounts/{accountId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateAccountRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateAccountResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:update_account_settings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateAccountSettings"
        o.http_method = "PUT"
        o.http_request_uri = "/accounts/{accountId}/settings"
        o.input = Shapes::ShapeRef.new(shape: UpdateAccountSettingsRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateAccountSettingsResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:update_bot, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateBot"
        o.http_method = "POST"
        o.http_request_uri = "/accounts/{accountId}/bots/{botId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateBotRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateBotResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
      end)

      api.add_operation(:update_global_settings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateGlobalSettings"
        o.http_method = "PUT"
        o.http_request_uri = "/settings"
        o.input = Shapes::ShapeRef.new(shape: UpdateGlobalSettingsRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:update_phone_number, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdatePhoneNumber"
        o.http_method = "POST"
        o.http_request_uri = "/phone-numbers/{phoneNumberId}"
        o.input = Shapes::ShapeRef.new(shape: UpdatePhoneNumberRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdatePhoneNumberResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:update_phone_number_settings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdatePhoneNumberSettings"
        o.http_method = "PUT"
        o.http_request_uri = "/settings/phone-number"
        o.input = Shapes::ShapeRef.new(shape: UpdatePhoneNumberSettingsRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:update_proxy_session, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateProxySession"
        o.http_method = "POST"
        o.http_request_uri = "/voice-connectors/{voiceConnectorId}/proxy-sessions/{proxySessionId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateProxySessionRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateProxySessionResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:update_room, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateRoom"
        o.http_method = "POST"
        o.http_request_uri = "/accounts/{accountId}/rooms/{roomId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateRoomRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateRoomResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:update_room_membership, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateRoomMembership"
        o.http_method = "POST"
        o.http_request_uri = "/accounts/{accountId}/rooms/{roomId}/memberships/{memberId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateRoomMembershipRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateRoomMembershipResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:update_user, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateUser"
        o.http_method = "POST"
        o.http_request_uri = "/accounts/{accountId}/users/{userId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateUserRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateUserResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:update_user_settings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateUserSettings"
        o.http_method = "PUT"
        o.http_request_uri = "/accounts/{accountId}/users/{userId}/settings"
        o.input = Shapes::ShapeRef.new(shape: UpdateUserSettingsRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:update_voice_connector, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateVoiceConnector"
        o.http_method = "PUT"
        o.http_request_uri = "/voice-connectors/{voiceConnectorId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateVoiceConnectorRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateVoiceConnectorResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:update_voice_connector_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateVoiceConnectorGroup"
        o.http_method = "PUT"
        o.http_request_uri = "/voice-connector-groups/{voiceConnectorGroupId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateVoiceConnectorGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateVoiceConnectorGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)
    end

  end
end
