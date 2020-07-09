# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::AlexaForBusiness
  # @api private
  module ClientApi

    include Seahorse::Model

    Address = Shapes::StringShape.new(name: 'Address')
    AddressBook = Shapes::StructureShape.new(name: 'AddressBook')
    AddressBookData = Shapes::StructureShape.new(name: 'AddressBookData')
    AddressBookDataList = Shapes::ListShape.new(name: 'AddressBookDataList')
    AddressBookDescription = Shapes::StringShape.new(name: 'AddressBookDescription')
    AddressBookName = Shapes::StringShape.new(name: 'AddressBookName')
    AlreadyExistsException = Shapes::StructureShape.new(name: 'AlreadyExistsException')
    AmazonId = Shapes::StringShape.new(name: 'AmazonId')
    ApplianceDescription = Shapes::StringShape.new(name: 'ApplianceDescription')
    ApplianceFriendlyName = Shapes::StringShape.new(name: 'ApplianceFriendlyName')
    ApplianceManufacturerName = Shapes::StringShape.new(name: 'ApplianceManufacturerName')
    ApproveSkillRequest = Shapes::StructureShape.new(name: 'ApproveSkillRequest')
    ApproveSkillResponse = Shapes::StructureShape.new(name: 'ApproveSkillResponse')
    Arn = Shapes::StringShape.new(name: 'Arn')
    AssociateContactWithAddressBookRequest = Shapes::StructureShape.new(name: 'AssociateContactWithAddressBookRequest')
    AssociateContactWithAddressBookResponse = Shapes::StructureShape.new(name: 'AssociateContactWithAddressBookResponse')
    AssociateDeviceWithNetworkProfileRequest = Shapes::StructureShape.new(name: 'AssociateDeviceWithNetworkProfileRequest')
    AssociateDeviceWithNetworkProfileResponse = Shapes::StructureShape.new(name: 'AssociateDeviceWithNetworkProfileResponse')
    AssociateDeviceWithRoomRequest = Shapes::StructureShape.new(name: 'AssociateDeviceWithRoomRequest')
    AssociateDeviceWithRoomResponse = Shapes::StructureShape.new(name: 'AssociateDeviceWithRoomResponse')
    AssociateSkillGroupWithRoomRequest = Shapes::StructureShape.new(name: 'AssociateSkillGroupWithRoomRequest')
    AssociateSkillGroupWithRoomResponse = Shapes::StructureShape.new(name: 'AssociateSkillGroupWithRoomResponse')
    AssociateSkillWithSkillGroupRequest = Shapes::StructureShape.new(name: 'AssociateSkillWithSkillGroupRequest')
    AssociateSkillWithSkillGroupResponse = Shapes::StructureShape.new(name: 'AssociateSkillWithSkillGroupResponse')
    AssociateSkillWithUsersRequest = Shapes::StructureShape.new(name: 'AssociateSkillWithUsersRequest')
    AssociateSkillWithUsersResponse = Shapes::StructureShape.new(name: 'AssociateSkillWithUsersResponse')
    Audio = Shapes::StructureShape.new(name: 'Audio')
    AudioList = Shapes::ListShape.new(name: 'AudioList')
    AudioLocation = Shapes::StringShape.new(name: 'AudioLocation')
    AuthorizationResult = Shapes::MapShape.new(name: 'AuthorizationResult')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    BulletPoint = Shapes::StringShape.new(name: 'BulletPoint')
    BulletPoints = Shapes::ListShape.new(name: 'BulletPoints')
    BusinessReport = Shapes::StructureShape.new(name: 'BusinessReport')
    BusinessReportContentRange = Shapes::StructureShape.new(name: 'BusinessReportContentRange')
    BusinessReportDeliveryTime = Shapes::TimestampShape.new(name: 'BusinessReportDeliveryTime')
    BusinessReportDownloadUrl = Shapes::StringShape.new(name: 'BusinessReportDownloadUrl')
    BusinessReportFailureCode = Shapes::StringShape.new(name: 'BusinessReportFailureCode')
    BusinessReportFormat = Shapes::StringShape.new(name: 'BusinessReportFormat')
    BusinessReportInterval = Shapes::StringShape.new(name: 'BusinessReportInterval')
    BusinessReportRecurrence = Shapes::StructureShape.new(name: 'BusinessReportRecurrence')
    BusinessReportS3Location = Shapes::StructureShape.new(name: 'BusinessReportS3Location')
    BusinessReportS3Path = Shapes::StringShape.new(name: 'BusinessReportS3Path')
    BusinessReportSchedule = Shapes::StructureShape.new(name: 'BusinessReportSchedule')
    BusinessReportScheduleList = Shapes::ListShape.new(name: 'BusinessReportScheduleList')
    BusinessReportScheduleName = Shapes::StringShape.new(name: 'BusinessReportScheduleName')
    BusinessReportStatus = Shapes::StringShape.new(name: 'BusinessReportStatus')
    Category = Shapes::StructureShape.new(name: 'Category')
    CategoryId = Shapes::IntegerShape.new(name: 'CategoryId')
    CategoryList = Shapes::ListShape.new(name: 'CategoryList')
    CategoryName = Shapes::StringShape.new(name: 'CategoryName')
    CertificateTime = Shapes::TimestampShape.new(name: 'CertificateTime')
    ClientId = Shapes::StringShape.new(name: 'ClientId')
    ClientRequestToken = Shapes::StringShape.new(name: 'ClientRequestToken')
    CommsProtocol = Shapes::StringShape.new(name: 'CommsProtocol')
    ConcurrentModificationException = Shapes::StructureShape.new(name: 'ConcurrentModificationException')
    ConferencePreference = Shapes::StructureShape.new(name: 'ConferencePreference')
    ConferenceProvider = Shapes::StructureShape.new(name: 'ConferenceProvider')
    ConferenceProviderName = Shapes::StringShape.new(name: 'ConferenceProviderName')
    ConferenceProviderType = Shapes::StringShape.new(name: 'ConferenceProviderType')
    ConferenceProvidersList = Shapes::ListShape.new(name: 'ConferenceProvidersList')
    ConnectionStatus = Shapes::StringShape.new(name: 'ConnectionStatus')
    ConnectionStatusUpdatedTime = Shapes::TimestampShape.new(name: 'ConnectionStatusUpdatedTime')
    Contact = Shapes::StructureShape.new(name: 'Contact')
    ContactData = Shapes::StructureShape.new(name: 'ContactData')
    ContactDataList = Shapes::ListShape.new(name: 'ContactDataList')
    ContactName = Shapes::StringShape.new(name: 'ContactName')
    Content = Shapes::StructureShape.new(name: 'Content')
    CountryCode = Shapes::StringShape.new(name: 'CountryCode')
    CreateAddressBookRequest = Shapes::StructureShape.new(name: 'CreateAddressBookRequest')
    CreateAddressBookResponse = Shapes::StructureShape.new(name: 'CreateAddressBookResponse')
    CreateBusinessReportScheduleRequest = Shapes::StructureShape.new(name: 'CreateBusinessReportScheduleRequest')
    CreateBusinessReportScheduleResponse = Shapes::StructureShape.new(name: 'CreateBusinessReportScheduleResponse')
    CreateConferenceProviderRequest = Shapes::StructureShape.new(name: 'CreateConferenceProviderRequest')
    CreateConferenceProviderResponse = Shapes::StructureShape.new(name: 'CreateConferenceProviderResponse')
    CreateContactRequest = Shapes::StructureShape.new(name: 'CreateContactRequest')
    CreateContactResponse = Shapes::StructureShape.new(name: 'CreateContactResponse')
    CreateEndOfMeetingReminder = Shapes::StructureShape.new(name: 'CreateEndOfMeetingReminder')
    CreateGatewayGroupRequest = Shapes::StructureShape.new(name: 'CreateGatewayGroupRequest')
    CreateGatewayGroupResponse = Shapes::StructureShape.new(name: 'CreateGatewayGroupResponse')
    CreateInstantBooking = Shapes::StructureShape.new(name: 'CreateInstantBooking')
    CreateMeetingRoomConfiguration = Shapes::StructureShape.new(name: 'CreateMeetingRoomConfiguration')
    CreateNetworkProfileRequest = Shapes::StructureShape.new(name: 'CreateNetworkProfileRequest')
    CreateNetworkProfileResponse = Shapes::StructureShape.new(name: 'CreateNetworkProfileResponse')
    CreateProfileRequest = Shapes::StructureShape.new(name: 'CreateProfileRequest')
    CreateProfileResponse = Shapes::StructureShape.new(name: 'CreateProfileResponse')
    CreateRequireCheckIn = Shapes::StructureShape.new(name: 'CreateRequireCheckIn')
    CreateRoomRequest = Shapes::StructureShape.new(name: 'CreateRoomRequest')
    CreateRoomResponse = Shapes::StructureShape.new(name: 'CreateRoomResponse')
    CreateSkillGroupRequest = Shapes::StructureShape.new(name: 'CreateSkillGroupRequest')
    CreateSkillGroupResponse = Shapes::StructureShape.new(name: 'CreateSkillGroupResponse')
    CreateUserRequest = Shapes::StructureShape.new(name: 'CreateUserRequest')
    CreateUserResponse = Shapes::StructureShape.new(name: 'CreateUserResponse')
    CurrentWiFiPassword = Shapes::StringShape.new(name: 'CurrentWiFiPassword')
    CustomerS3BucketName = Shapes::StringShape.new(name: 'CustomerS3BucketName')
    Date = Shapes::StringShape.new(name: 'Date')
    DeleteAddressBookRequest = Shapes::StructureShape.new(name: 'DeleteAddressBookRequest')
    DeleteAddressBookResponse = Shapes::StructureShape.new(name: 'DeleteAddressBookResponse')
    DeleteBusinessReportScheduleRequest = Shapes::StructureShape.new(name: 'DeleteBusinessReportScheduleRequest')
    DeleteBusinessReportScheduleResponse = Shapes::StructureShape.new(name: 'DeleteBusinessReportScheduleResponse')
    DeleteConferenceProviderRequest = Shapes::StructureShape.new(name: 'DeleteConferenceProviderRequest')
    DeleteConferenceProviderResponse = Shapes::StructureShape.new(name: 'DeleteConferenceProviderResponse')
    DeleteContactRequest = Shapes::StructureShape.new(name: 'DeleteContactRequest')
    DeleteContactResponse = Shapes::StructureShape.new(name: 'DeleteContactResponse')
    DeleteDeviceRequest = Shapes::StructureShape.new(name: 'DeleteDeviceRequest')
    DeleteDeviceResponse = Shapes::StructureShape.new(name: 'DeleteDeviceResponse')
    DeleteDeviceUsageDataRequest = Shapes::StructureShape.new(name: 'DeleteDeviceUsageDataRequest')
    DeleteDeviceUsageDataResponse = Shapes::StructureShape.new(name: 'DeleteDeviceUsageDataResponse')
    DeleteGatewayGroupRequest = Shapes::StructureShape.new(name: 'DeleteGatewayGroupRequest')
    DeleteGatewayGroupResponse = Shapes::StructureShape.new(name: 'DeleteGatewayGroupResponse')
    DeleteNetworkProfileRequest = Shapes::StructureShape.new(name: 'DeleteNetworkProfileRequest')
    DeleteNetworkProfileResponse = Shapes::StructureShape.new(name: 'DeleteNetworkProfileResponse')
    DeleteProfileRequest = Shapes::StructureShape.new(name: 'DeleteProfileRequest')
    DeleteProfileResponse = Shapes::StructureShape.new(name: 'DeleteProfileResponse')
    DeleteRoomRequest = Shapes::StructureShape.new(name: 'DeleteRoomRequest')
    DeleteRoomResponse = Shapes::StructureShape.new(name: 'DeleteRoomResponse')
    DeleteRoomSkillParameterRequest = Shapes::StructureShape.new(name: 'DeleteRoomSkillParameterRequest')
    DeleteRoomSkillParameterResponse = Shapes::StructureShape.new(name: 'DeleteRoomSkillParameterResponse')
    DeleteSkillAuthorizationRequest = Shapes::StructureShape.new(name: 'DeleteSkillAuthorizationRequest')
    DeleteSkillAuthorizationResponse = Shapes::StructureShape.new(name: 'DeleteSkillAuthorizationResponse')
    DeleteSkillGroupRequest = Shapes::StructureShape.new(name: 'DeleteSkillGroupRequest')
    DeleteSkillGroupResponse = Shapes::StructureShape.new(name: 'DeleteSkillGroupResponse')
    DeleteUserRequest = Shapes::StructureShape.new(name: 'DeleteUserRequest')
    DeleteUserResponse = Shapes::StructureShape.new(name: 'DeleteUserResponse')
    DeveloperInfo = Shapes::StructureShape.new(name: 'DeveloperInfo')
    DeveloperName = Shapes::StringShape.new(name: 'DeveloperName')
    Device = Shapes::StructureShape.new(name: 'Device')
    DeviceData = Shapes::StructureShape.new(name: 'DeviceData')
    DeviceDataCreatedTime = Shapes::TimestampShape.new(name: 'DeviceDataCreatedTime')
    DeviceDataList = Shapes::ListShape.new(name: 'DeviceDataList')
    DeviceEvent = Shapes::StructureShape.new(name: 'DeviceEvent')
    DeviceEventList = Shapes::ListShape.new(name: 'DeviceEventList')
    DeviceEventTime = Shapes::TimestampShape.new(name: 'DeviceEventTime')
    DeviceEventType = Shapes::StringShape.new(name: 'DeviceEventType')
    DeviceEventValue = Shapes::StringShape.new(name: 'DeviceEventValue')
    DeviceLocale = Shapes::StringShape.new(name: 'DeviceLocale')
    DeviceName = Shapes::StringShape.new(name: 'DeviceName')
    DeviceNetworkProfileInfo = Shapes::StructureShape.new(name: 'DeviceNetworkProfileInfo')
    DeviceNotRegisteredException = Shapes::StructureShape.new(name: 'DeviceNotRegisteredException')
    DeviceRoomName = Shapes::StringShape.new(name: 'DeviceRoomName')
    DeviceSerialNumber = Shapes::StringShape.new(name: 'DeviceSerialNumber')
    DeviceSerialNumberForAVS = Shapes::StringShape.new(name: 'DeviceSerialNumberForAVS')
    DeviceStatus = Shapes::StringShape.new(name: 'DeviceStatus')
    DeviceStatusDetail = Shapes::StructureShape.new(name: 'DeviceStatusDetail')
    DeviceStatusDetailCode = Shapes::StringShape.new(name: 'DeviceStatusDetailCode')
    DeviceStatusDetails = Shapes::ListShape.new(name: 'DeviceStatusDetails')
    DeviceStatusInfo = Shapes::StructureShape.new(name: 'DeviceStatusInfo')
    DeviceType = Shapes::StringShape.new(name: 'DeviceType')
    DeviceUsageType = Shapes::StringShape.new(name: 'DeviceUsageType')
    DisassociateContactFromAddressBookRequest = Shapes::StructureShape.new(name: 'DisassociateContactFromAddressBookRequest')
    DisassociateContactFromAddressBookResponse = Shapes::StructureShape.new(name: 'DisassociateContactFromAddressBookResponse')
    DisassociateDeviceFromRoomRequest = Shapes::StructureShape.new(name: 'DisassociateDeviceFromRoomRequest')
    DisassociateDeviceFromRoomResponse = Shapes::StructureShape.new(name: 'DisassociateDeviceFromRoomResponse')
    DisassociateSkillFromSkillGroupRequest = Shapes::StructureShape.new(name: 'DisassociateSkillFromSkillGroupRequest')
    DisassociateSkillFromSkillGroupResponse = Shapes::StructureShape.new(name: 'DisassociateSkillFromSkillGroupResponse')
    DisassociateSkillFromUsersRequest = Shapes::StructureShape.new(name: 'DisassociateSkillFromUsersRequest')
    DisassociateSkillFromUsersResponse = Shapes::StructureShape.new(name: 'DisassociateSkillFromUsersResponse')
    DisassociateSkillGroupFromRoomRequest = Shapes::StructureShape.new(name: 'DisassociateSkillGroupFromRoomRequest')
    DisassociateSkillGroupFromRoomResponse = Shapes::StructureShape.new(name: 'DisassociateSkillGroupFromRoomResponse')
    DistanceUnit = Shapes::StringShape.new(name: 'DistanceUnit')
    Email = Shapes::StringShape.new(name: 'Email')
    EnablementType = Shapes::StringShape.new(name: 'EnablementType')
    EnablementTypeFilter = Shapes::StringShape.new(name: 'EnablementTypeFilter')
    EndOfMeetingReminder = Shapes::StructureShape.new(name: 'EndOfMeetingReminder')
    EndOfMeetingReminderMinutesList = Shapes::ListShape.new(name: 'EndOfMeetingReminderMinutesList')
    EndOfMeetingReminderType = Shapes::StringShape.new(name: 'EndOfMeetingReminderType')
    EndUserLicenseAgreement = Shapes::StringShape.new(name: 'EndUserLicenseAgreement')
    Endpoint = Shapes::StringShape.new(name: 'Endpoint')
    EnrollmentId = Shapes::StringShape.new(name: 'EnrollmentId')
    EnrollmentStatus = Shapes::StringShape.new(name: 'EnrollmentStatus')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    Feature = Shapes::StringShape.new(name: 'Feature')
    Features = Shapes::ListShape.new(name: 'Features')
    Filter = Shapes::StructureShape.new(name: 'Filter')
    FilterKey = Shapes::StringShape.new(name: 'FilterKey')
    FilterList = Shapes::ListShape.new(name: 'FilterList')
    FilterValue = Shapes::StringShape.new(name: 'FilterValue')
    FilterValueList = Shapes::ListShape.new(name: 'FilterValueList')
    ForgetSmartHomeAppliancesRequest = Shapes::StructureShape.new(name: 'ForgetSmartHomeAppliancesRequest')
    ForgetSmartHomeAppliancesResponse = Shapes::StructureShape.new(name: 'ForgetSmartHomeAppliancesResponse')
    Gateway = Shapes::StructureShape.new(name: 'Gateway')
    GatewayDescription = Shapes::StringShape.new(name: 'GatewayDescription')
    GatewayGroup = Shapes::StructureShape.new(name: 'GatewayGroup')
    GatewayGroupDescription = Shapes::StringShape.new(name: 'GatewayGroupDescription')
    GatewayGroupName = Shapes::StringShape.new(name: 'GatewayGroupName')
    GatewayGroupSummaries = Shapes::ListShape.new(name: 'GatewayGroupSummaries')
    GatewayGroupSummary = Shapes::StructureShape.new(name: 'GatewayGroupSummary')
    GatewayName = Shapes::StringShape.new(name: 'GatewayName')
    GatewaySummaries = Shapes::ListShape.new(name: 'GatewaySummaries')
    GatewaySummary = Shapes::StructureShape.new(name: 'GatewaySummary')
    GatewayVersion = Shapes::StringShape.new(name: 'GatewayVersion')
    GenericKeyword = Shapes::StringShape.new(name: 'GenericKeyword')
    GenericKeywords = Shapes::ListShape.new(name: 'GenericKeywords')
    GetAddressBookRequest = Shapes::StructureShape.new(name: 'GetAddressBookRequest')
    GetAddressBookResponse = Shapes::StructureShape.new(name: 'GetAddressBookResponse')
    GetConferencePreferenceRequest = Shapes::StructureShape.new(name: 'GetConferencePreferenceRequest')
    GetConferencePreferenceResponse = Shapes::StructureShape.new(name: 'GetConferencePreferenceResponse')
    GetConferenceProviderRequest = Shapes::StructureShape.new(name: 'GetConferenceProviderRequest')
    GetConferenceProviderResponse = Shapes::StructureShape.new(name: 'GetConferenceProviderResponse')
    GetContactRequest = Shapes::StructureShape.new(name: 'GetContactRequest')
    GetContactResponse = Shapes::StructureShape.new(name: 'GetContactResponse')
    GetDeviceRequest = Shapes::StructureShape.new(name: 'GetDeviceRequest')
    GetDeviceResponse = Shapes::StructureShape.new(name: 'GetDeviceResponse')
    GetGatewayGroupRequest = Shapes::StructureShape.new(name: 'GetGatewayGroupRequest')
    GetGatewayGroupResponse = Shapes::StructureShape.new(name: 'GetGatewayGroupResponse')
    GetGatewayRequest = Shapes::StructureShape.new(name: 'GetGatewayRequest')
    GetGatewayResponse = Shapes::StructureShape.new(name: 'GetGatewayResponse')
    GetInvitationConfigurationRequest = Shapes::StructureShape.new(name: 'GetInvitationConfigurationRequest')
    GetInvitationConfigurationResponse = Shapes::StructureShape.new(name: 'GetInvitationConfigurationResponse')
    GetNetworkProfileRequest = Shapes::StructureShape.new(name: 'GetNetworkProfileRequest')
    GetNetworkProfileResponse = Shapes::StructureShape.new(name: 'GetNetworkProfileResponse')
    GetProfileRequest = Shapes::StructureShape.new(name: 'GetProfileRequest')
    GetProfileResponse = Shapes::StructureShape.new(name: 'GetProfileResponse')
    GetRoomRequest = Shapes::StructureShape.new(name: 'GetRoomRequest')
    GetRoomResponse = Shapes::StructureShape.new(name: 'GetRoomResponse')
    GetRoomSkillParameterRequest = Shapes::StructureShape.new(name: 'GetRoomSkillParameterRequest')
    GetRoomSkillParameterResponse = Shapes::StructureShape.new(name: 'GetRoomSkillParameterResponse')
    GetSkillGroupRequest = Shapes::StructureShape.new(name: 'GetSkillGroupRequest')
    GetSkillGroupResponse = Shapes::StructureShape.new(name: 'GetSkillGroupResponse')
    IPDialIn = Shapes::StructureShape.new(name: 'IPDialIn')
    IconUrl = Shapes::StringShape.new(name: 'IconUrl')
    InstantBooking = Shapes::StructureShape.new(name: 'InstantBooking')
    InvalidCertificateAuthorityException = Shapes::StructureShape.new(name: 'InvalidCertificateAuthorityException')
    InvalidDeviceException = Shapes::StructureShape.new(name: 'InvalidDeviceException')
    InvalidSecretsManagerResourceException = Shapes::StructureShape.new(name: 'InvalidSecretsManagerResourceException')
    InvalidServiceLinkedRoleStateException = Shapes::StructureShape.new(name: 'InvalidServiceLinkedRoleStateException')
    InvalidUserStatusException = Shapes::StructureShape.new(name: 'InvalidUserStatusException')
    InvocationPhrase = Shapes::StringShape.new(name: 'InvocationPhrase')
    Key = Shapes::StringShape.new(name: 'Key')
    LimitExceededException = Shapes::StructureShape.new(name: 'LimitExceededException')
    ListBusinessReportSchedulesRequest = Shapes::StructureShape.new(name: 'ListBusinessReportSchedulesRequest')
    ListBusinessReportSchedulesResponse = Shapes::StructureShape.new(name: 'ListBusinessReportSchedulesResponse')
    ListConferenceProvidersRequest = Shapes::StructureShape.new(name: 'ListConferenceProvidersRequest')
    ListConferenceProvidersResponse = Shapes::StructureShape.new(name: 'ListConferenceProvidersResponse')
    ListDeviceEventsRequest = Shapes::StructureShape.new(name: 'ListDeviceEventsRequest')
    ListDeviceEventsResponse = Shapes::StructureShape.new(name: 'ListDeviceEventsResponse')
    ListGatewayGroupsRequest = Shapes::StructureShape.new(name: 'ListGatewayGroupsRequest')
    ListGatewayGroupsResponse = Shapes::StructureShape.new(name: 'ListGatewayGroupsResponse')
    ListGatewaysRequest = Shapes::StructureShape.new(name: 'ListGatewaysRequest')
    ListGatewaysResponse = Shapes::StructureShape.new(name: 'ListGatewaysResponse')
    ListSkillsRequest = Shapes::StructureShape.new(name: 'ListSkillsRequest')
    ListSkillsResponse = Shapes::StructureShape.new(name: 'ListSkillsResponse')
    ListSkillsStoreCategoriesRequest = Shapes::StructureShape.new(name: 'ListSkillsStoreCategoriesRequest')
    ListSkillsStoreCategoriesResponse = Shapes::StructureShape.new(name: 'ListSkillsStoreCategoriesResponse')
    ListSkillsStoreSkillsByCategoryRequest = Shapes::StructureShape.new(name: 'ListSkillsStoreSkillsByCategoryRequest')
    ListSkillsStoreSkillsByCategoryResponse = Shapes::StructureShape.new(name: 'ListSkillsStoreSkillsByCategoryResponse')
    ListSmartHomeAppliancesRequest = Shapes::StructureShape.new(name: 'ListSmartHomeAppliancesRequest')
    ListSmartHomeAppliancesResponse = Shapes::StructureShape.new(name: 'ListSmartHomeAppliancesResponse')
    ListTagsRequest = Shapes::StructureShape.new(name: 'ListTagsRequest')
    ListTagsResponse = Shapes::StructureShape.new(name: 'ListTagsResponse')
    Locale = Shapes::StringShape.new(name: 'Locale')
    MacAddress = Shapes::StringShape.new(name: 'MacAddress')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    MaxVolumeLimit = Shapes::IntegerShape.new(name: 'MaxVolumeLimit')
    MeetingRoomConfiguration = Shapes::StructureShape.new(name: 'MeetingRoomConfiguration')
    MeetingSetting = Shapes::StructureShape.new(name: 'MeetingSetting')
    Minutes = Shapes::IntegerShape.new(name: 'Minutes')
    NameInUseException = Shapes::StructureShape.new(name: 'NameInUseException')
    NetworkEapMethod = Shapes::StringShape.new(name: 'NetworkEapMethod')
    NetworkProfile = Shapes::StructureShape.new(name: 'NetworkProfile')
    NetworkProfileData = Shapes::StructureShape.new(name: 'NetworkProfileData')
    NetworkProfileDataList = Shapes::ListShape.new(name: 'NetworkProfileDataList')
    NetworkProfileDescription = Shapes::StringShape.new(name: 'NetworkProfileDescription')
    NetworkProfileName = Shapes::StringShape.new(name: 'NetworkProfileName')
    NetworkSecurityType = Shapes::StringShape.new(name: 'NetworkSecurityType')
    NetworkSsid = Shapes::StringShape.new(name: 'NetworkSsid')
    NewInThisVersionBulletPoints = Shapes::ListShape.new(name: 'NewInThisVersionBulletPoints')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    NextWiFiPassword = Shapes::StringShape.new(name: 'NextWiFiPassword')
    NotFoundException = Shapes::StructureShape.new(name: 'NotFoundException')
    OneClickIdDelay = Shapes::StringShape.new(name: 'OneClickIdDelay')
    OneClickPinDelay = Shapes::StringShape.new(name: 'OneClickPinDelay')
    OrganizationName = Shapes::StringShape.new(name: 'OrganizationName')
    OutboundPhoneNumber = Shapes::StringShape.new(name: 'OutboundPhoneNumber')
    PSTNDialIn = Shapes::StructureShape.new(name: 'PSTNDialIn')
    PhoneNumber = Shapes::StructureShape.new(name: 'PhoneNumber')
    PhoneNumberList = Shapes::ListShape.new(name: 'PhoneNumberList')
    PhoneNumberType = Shapes::StringShape.new(name: 'PhoneNumberType')
    PrivacyPolicy = Shapes::StringShape.new(name: 'PrivacyPolicy')
    ProductDescription = Shapes::StringShape.new(name: 'ProductDescription')
    ProductId = Shapes::StringShape.new(name: 'ProductId')
    Profile = Shapes::StructureShape.new(name: 'Profile')
    ProfileData = Shapes::StructureShape.new(name: 'ProfileData')
    ProfileDataList = Shapes::ListShape.new(name: 'ProfileDataList')
    ProfileName = Shapes::StringShape.new(name: 'ProfileName')
    ProviderCalendarId = Shapes::StringShape.new(name: 'ProviderCalendarId')
    PutConferencePreferenceRequest = Shapes::StructureShape.new(name: 'PutConferencePreferenceRequest')
    PutConferencePreferenceResponse = Shapes::StructureShape.new(name: 'PutConferencePreferenceResponse')
    PutInvitationConfigurationRequest = Shapes::StructureShape.new(name: 'PutInvitationConfigurationRequest')
    PutInvitationConfigurationResponse = Shapes::StructureShape.new(name: 'PutInvitationConfigurationResponse')
    PutRoomSkillParameterRequest = Shapes::StructureShape.new(name: 'PutRoomSkillParameterRequest')
    PutRoomSkillParameterResponse = Shapes::StructureShape.new(name: 'PutRoomSkillParameterResponse')
    PutSkillAuthorizationRequest = Shapes::StructureShape.new(name: 'PutSkillAuthorizationRequest')
    PutSkillAuthorizationResponse = Shapes::StructureShape.new(name: 'PutSkillAuthorizationResponse')
    RawPhoneNumber = Shapes::StringShape.new(name: 'RawPhoneNumber')
    RegisterAVSDeviceRequest = Shapes::StructureShape.new(name: 'RegisterAVSDeviceRequest')
    RegisterAVSDeviceResponse = Shapes::StructureShape.new(name: 'RegisterAVSDeviceResponse')
    RejectSkillRequest = Shapes::StructureShape.new(name: 'RejectSkillRequest')
    RejectSkillResponse = Shapes::StructureShape.new(name: 'RejectSkillResponse')
    ReleaseDate = Shapes::StringShape.new(name: 'ReleaseDate')
    RequireCheckIn = Shapes::StructureShape.new(name: 'RequireCheckIn')
    RequirePin = Shapes::StringShape.new(name: 'RequirePin')
    ResolveRoomRequest = Shapes::StructureShape.new(name: 'ResolveRoomRequest')
    ResolveRoomResponse = Shapes::StructureShape.new(name: 'ResolveRoomResponse')
    ResourceAssociatedException = Shapes::StructureShape.new(name: 'ResourceAssociatedException')
    ResourceInUseException = Shapes::StructureShape.new(name: 'ResourceInUseException')
    ReviewKey = Shapes::StringShape.new(name: 'ReviewKey')
    ReviewValue = Shapes::StringShape.new(name: 'ReviewValue')
    Reviews = Shapes::MapShape.new(name: 'Reviews')
    RevokeInvitationRequest = Shapes::StructureShape.new(name: 'RevokeInvitationRequest')
    RevokeInvitationResponse = Shapes::StructureShape.new(name: 'RevokeInvitationResponse')
    Room = Shapes::StructureShape.new(name: 'Room')
    RoomData = Shapes::StructureShape.new(name: 'RoomData')
    RoomDataList = Shapes::ListShape.new(name: 'RoomDataList')
    RoomDescription = Shapes::StringShape.new(name: 'RoomDescription')
    RoomName = Shapes::StringShape.new(name: 'RoomName')
    RoomSkillParameter = Shapes::StructureShape.new(name: 'RoomSkillParameter')
    RoomSkillParameterKey = Shapes::StringShape.new(name: 'RoomSkillParameterKey')
    RoomSkillParameterValue = Shapes::StringShape.new(name: 'RoomSkillParameterValue')
    RoomSkillParameters = Shapes::ListShape.new(name: 'RoomSkillParameters')
    S3KeyPrefix = Shapes::StringShape.new(name: 'S3KeyPrefix')
    SampleUtterances = Shapes::ListShape.new(name: 'SampleUtterances')
    SearchAddressBooksRequest = Shapes::StructureShape.new(name: 'SearchAddressBooksRequest')
    SearchAddressBooksResponse = Shapes::StructureShape.new(name: 'SearchAddressBooksResponse')
    SearchContactsRequest = Shapes::StructureShape.new(name: 'SearchContactsRequest')
    SearchContactsResponse = Shapes::StructureShape.new(name: 'SearchContactsResponse')
    SearchDevicesRequest = Shapes::StructureShape.new(name: 'SearchDevicesRequest')
    SearchDevicesResponse = Shapes::StructureShape.new(name: 'SearchDevicesResponse')
    SearchNetworkProfilesRequest = Shapes::StructureShape.new(name: 'SearchNetworkProfilesRequest')
    SearchNetworkProfilesResponse = Shapes::StructureShape.new(name: 'SearchNetworkProfilesResponse')
    SearchProfilesRequest = Shapes::StructureShape.new(name: 'SearchProfilesRequest')
    SearchProfilesResponse = Shapes::StructureShape.new(name: 'SearchProfilesResponse')
    SearchRoomsRequest = Shapes::StructureShape.new(name: 'SearchRoomsRequest')
    SearchRoomsResponse = Shapes::StructureShape.new(name: 'SearchRoomsResponse')
    SearchSkillGroupsRequest = Shapes::StructureShape.new(name: 'SearchSkillGroupsRequest')
    SearchSkillGroupsResponse = Shapes::StructureShape.new(name: 'SearchSkillGroupsResponse')
    SearchUsersRequest = Shapes::StructureShape.new(name: 'SearchUsersRequest')
    SearchUsersResponse = Shapes::StructureShape.new(name: 'SearchUsersResponse')
    SendAnnouncementRequest = Shapes::StructureShape.new(name: 'SendAnnouncementRequest')
    SendAnnouncementResponse = Shapes::StructureShape.new(name: 'SendAnnouncementResponse')
    SendInvitationRequest = Shapes::StructureShape.new(name: 'SendInvitationRequest')
    SendInvitationResponse = Shapes::StructureShape.new(name: 'SendInvitationResponse')
    ShortDescription = Shapes::StringShape.new(name: 'ShortDescription')
    ShortSkillIdList = Shapes::ListShape.new(name: 'ShortSkillIdList')
    SipAddress = Shapes::StructureShape.new(name: 'SipAddress')
    SipAddressList = Shapes::ListShape.new(name: 'SipAddressList')
    SipType = Shapes::StringShape.new(name: 'SipType')
    SipUri = Shapes::StringShape.new(name: 'SipUri')
    SkillDetails = Shapes::StructureShape.new(name: 'SkillDetails')
    SkillGroup = Shapes::StructureShape.new(name: 'SkillGroup')
    SkillGroupData = Shapes::StructureShape.new(name: 'SkillGroupData')
    SkillGroupDataList = Shapes::ListShape.new(name: 'SkillGroupDataList')
    SkillGroupDescription = Shapes::StringShape.new(name: 'SkillGroupDescription')
    SkillGroupName = Shapes::StringShape.new(name: 'SkillGroupName')
    SkillId = Shapes::StringShape.new(name: 'SkillId')
    SkillListMaxResults = Shapes::IntegerShape.new(name: 'SkillListMaxResults')
    SkillName = Shapes::StringShape.new(name: 'SkillName')
    SkillNotLinkedException = Shapes::StructureShape.new(name: 'SkillNotLinkedException')
    SkillStoreType = Shapes::StringShape.new(name: 'SkillStoreType')
    SkillSummary = Shapes::StructureShape.new(name: 'SkillSummary')
    SkillSummaryList = Shapes::ListShape.new(name: 'SkillSummaryList')
    SkillType = Shapes::StringShape.new(name: 'SkillType')
    SkillTypeFilter = Shapes::StringShape.new(name: 'SkillTypeFilter')
    SkillTypes = Shapes::ListShape.new(name: 'SkillTypes')
    SkillsStoreSkill = Shapes::StructureShape.new(name: 'SkillsStoreSkill')
    SkillsStoreSkillList = Shapes::ListShape.new(name: 'SkillsStoreSkillList')
    SmartHomeAppliance = Shapes::StructureShape.new(name: 'SmartHomeAppliance')
    SmartHomeApplianceList = Shapes::ListShape.new(name: 'SmartHomeApplianceList')
    SoftwareVersion = Shapes::StringShape.new(name: 'SoftwareVersion')
    Sort = Shapes::StructureShape.new(name: 'Sort')
    SortKey = Shapes::StringShape.new(name: 'SortKey')
    SortList = Shapes::ListShape.new(name: 'SortList')
    SortValue = Shapes::StringShape.new(name: 'SortValue')
    Ssml = Shapes::StructureShape.new(name: 'Ssml')
    SsmlList = Shapes::ListShape.new(name: 'SsmlList')
    SsmlValue = Shapes::StringShape.new(name: 'SsmlValue')
    StartDeviceSyncRequest = Shapes::StructureShape.new(name: 'StartDeviceSyncRequest')
    StartDeviceSyncResponse = Shapes::StructureShape.new(name: 'StartDeviceSyncResponse')
    StartSmartHomeApplianceDiscoveryRequest = Shapes::StructureShape.new(name: 'StartSmartHomeApplianceDiscoveryRequest')
    StartSmartHomeApplianceDiscoveryResponse = Shapes::StructureShape.new(name: 'StartSmartHomeApplianceDiscoveryResponse')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagList = Shapes::ListShape.new(name: 'TagList')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    TemperatureUnit = Shapes::StringShape.new(name: 'TemperatureUnit')
    Text = Shapes::StructureShape.new(name: 'Text')
    TextList = Shapes::ListShape.new(name: 'TextList')
    TextValue = Shapes::StringShape.new(name: 'TextValue')
    TimeToLiveInSeconds = Shapes::IntegerShape.new(name: 'TimeToLiveInSeconds')
    Timezone = Shapes::StringShape.new(name: 'Timezone')
    TotalCount = Shapes::IntegerShape.new(name: 'TotalCount')
    TrustAnchor = Shapes::StringShape.new(name: 'TrustAnchor')
    TrustAnchorList = Shapes::ListShape.new(name: 'TrustAnchorList')
    UnauthorizedException = Shapes::StructureShape.new(name: 'UnauthorizedException')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateAddressBookRequest = Shapes::StructureShape.new(name: 'UpdateAddressBookRequest')
    UpdateAddressBookResponse = Shapes::StructureShape.new(name: 'UpdateAddressBookResponse')
    UpdateBusinessReportScheduleRequest = Shapes::StructureShape.new(name: 'UpdateBusinessReportScheduleRequest')
    UpdateBusinessReportScheduleResponse = Shapes::StructureShape.new(name: 'UpdateBusinessReportScheduleResponse')
    UpdateConferenceProviderRequest = Shapes::StructureShape.new(name: 'UpdateConferenceProviderRequest')
    UpdateConferenceProviderResponse = Shapes::StructureShape.new(name: 'UpdateConferenceProviderResponse')
    UpdateContactRequest = Shapes::StructureShape.new(name: 'UpdateContactRequest')
    UpdateContactResponse = Shapes::StructureShape.new(name: 'UpdateContactResponse')
    UpdateDeviceRequest = Shapes::StructureShape.new(name: 'UpdateDeviceRequest')
    UpdateDeviceResponse = Shapes::StructureShape.new(name: 'UpdateDeviceResponse')
    UpdateEndOfMeetingReminder = Shapes::StructureShape.new(name: 'UpdateEndOfMeetingReminder')
    UpdateGatewayGroupRequest = Shapes::StructureShape.new(name: 'UpdateGatewayGroupRequest')
    UpdateGatewayGroupResponse = Shapes::StructureShape.new(name: 'UpdateGatewayGroupResponse')
    UpdateGatewayRequest = Shapes::StructureShape.new(name: 'UpdateGatewayRequest')
    UpdateGatewayResponse = Shapes::StructureShape.new(name: 'UpdateGatewayResponse')
    UpdateInstantBooking = Shapes::StructureShape.new(name: 'UpdateInstantBooking')
    UpdateMeetingRoomConfiguration = Shapes::StructureShape.new(name: 'UpdateMeetingRoomConfiguration')
    UpdateNetworkProfileRequest = Shapes::StructureShape.new(name: 'UpdateNetworkProfileRequest')
    UpdateNetworkProfileResponse = Shapes::StructureShape.new(name: 'UpdateNetworkProfileResponse')
    UpdateProfileRequest = Shapes::StructureShape.new(name: 'UpdateProfileRequest')
    UpdateProfileResponse = Shapes::StructureShape.new(name: 'UpdateProfileResponse')
    UpdateRequireCheckIn = Shapes::StructureShape.new(name: 'UpdateRequireCheckIn')
    UpdateRoomRequest = Shapes::StructureShape.new(name: 'UpdateRoomRequest')
    UpdateRoomResponse = Shapes::StructureShape.new(name: 'UpdateRoomResponse')
    UpdateSkillGroupRequest = Shapes::StructureShape.new(name: 'UpdateSkillGroupRequest')
    UpdateSkillGroupResponse = Shapes::StructureShape.new(name: 'UpdateSkillGroupResponse')
    Url = Shapes::StringShape.new(name: 'Url')
    UserCode = Shapes::StringShape.new(name: 'UserCode')
    UserData = Shapes::StructureShape.new(name: 'UserData')
    UserDataList = Shapes::ListShape.new(name: 'UserDataList')
    UserId = Shapes::StringShape.new(name: 'UserId')
    Utterance = Shapes::StringShape.new(name: 'Utterance')
    Value = Shapes::StringShape.new(name: 'Value')
    WakeWord = Shapes::StringShape.new(name: 'WakeWord')
    boolean = Shapes::BooleanShape.new(name: 'boolean')
    user_FirstName = Shapes::StringShape.new(name: 'user_FirstName')
    user_LastName = Shapes::StringShape.new(name: 'user_LastName')
    user_UserId = Shapes::StringShape.new(name: 'user_UserId')

    AddressBook.add_member(:address_book_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "AddressBookArn"))
    AddressBook.add_member(:name, Shapes::ShapeRef.new(shape: AddressBookName, location_name: "Name"))
    AddressBook.add_member(:description, Shapes::ShapeRef.new(shape: AddressBookDescription, location_name: "Description"))
    AddressBook.struct_class = Types::AddressBook

    AddressBookData.add_member(:address_book_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "AddressBookArn"))
    AddressBookData.add_member(:name, Shapes::ShapeRef.new(shape: AddressBookName, location_name: "Name"))
    AddressBookData.add_member(:description, Shapes::ShapeRef.new(shape: AddressBookDescription, location_name: "Description"))
    AddressBookData.struct_class = Types::AddressBookData

    AddressBookDataList.member = Shapes::ShapeRef.new(shape: AddressBookData)

    AlreadyExistsException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    AlreadyExistsException.struct_class = Types::AlreadyExistsException

    ApproveSkillRequest.add_member(:skill_id, Shapes::ShapeRef.new(shape: SkillId, required: true, location_name: "SkillId"))
    ApproveSkillRequest.struct_class = Types::ApproveSkillRequest

    ApproveSkillResponse.struct_class = Types::ApproveSkillResponse

    AssociateContactWithAddressBookRequest.add_member(:contact_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "ContactArn"))
    AssociateContactWithAddressBookRequest.add_member(:address_book_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "AddressBookArn"))
    AssociateContactWithAddressBookRequest.struct_class = Types::AssociateContactWithAddressBookRequest

    AssociateContactWithAddressBookResponse.struct_class = Types::AssociateContactWithAddressBookResponse

    AssociateDeviceWithNetworkProfileRequest.add_member(:device_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "DeviceArn"))
    AssociateDeviceWithNetworkProfileRequest.add_member(:network_profile_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "NetworkProfileArn"))
    AssociateDeviceWithNetworkProfileRequest.struct_class = Types::AssociateDeviceWithNetworkProfileRequest

    AssociateDeviceWithNetworkProfileResponse.struct_class = Types::AssociateDeviceWithNetworkProfileResponse

    AssociateDeviceWithRoomRequest.add_member(:device_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "DeviceArn"))
    AssociateDeviceWithRoomRequest.add_member(:room_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "RoomArn"))
    AssociateDeviceWithRoomRequest.struct_class = Types::AssociateDeviceWithRoomRequest

    AssociateDeviceWithRoomResponse.struct_class = Types::AssociateDeviceWithRoomResponse

    AssociateSkillGroupWithRoomRequest.add_member(:skill_group_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "SkillGroupArn"))
    AssociateSkillGroupWithRoomRequest.add_member(:room_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "RoomArn"))
    AssociateSkillGroupWithRoomRequest.struct_class = Types::AssociateSkillGroupWithRoomRequest

    AssociateSkillGroupWithRoomResponse.struct_class = Types::AssociateSkillGroupWithRoomResponse

    AssociateSkillWithSkillGroupRequest.add_member(:skill_group_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "SkillGroupArn"))
    AssociateSkillWithSkillGroupRequest.add_member(:skill_id, Shapes::ShapeRef.new(shape: SkillId, required: true, location_name: "SkillId"))
    AssociateSkillWithSkillGroupRequest.struct_class = Types::AssociateSkillWithSkillGroupRequest

    AssociateSkillWithSkillGroupResponse.struct_class = Types::AssociateSkillWithSkillGroupResponse

    AssociateSkillWithUsersRequest.add_member(:skill_id, Shapes::ShapeRef.new(shape: SkillId, required: true, location_name: "SkillId"))
    AssociateSkillWithUsersRequest.struct_class = Types::AssociateSkillWithUsersRequest

    AssociateSkillWithUsersResponse.struct_class = Types::AssociateSkillWithUsersResponse

    Audio.add_member(:locale, Shapes::ShapeRef.new(shape: Locale, required: true, location_name: "Locale"))
    Audio.add_member(:location, Shapes::ShapeRef.new(shape: AudioLocation, required: true, location_name: "Location"))
    Audio.struct_class = Types::Audio

    AudioList.member = Shapes::ShapeRef.new(shape: Audio)

    AuthorizationResult.key = Shapes::ShapeRef.new(shape: Key)
    AuthorizationResult.value = Shapes::ShapeRef.new(shape: Value)

    BulletPoints.member = Shapes::ShapeRef.new(shape: BulletPoint)

    BusinessReport.add_member(:status, Shapes::ShapeRef.new(shape: BusinessReportStatus, location_name: "Status"))
    BusinessReport.add_member(:failure_code, Shapes::ShapeRef.new(shape: BusinessReportFailureCode, location_name: "FailureCode"))
    BusinessReport.add_member(:s3_location, Shapes::ShapeRef.new(shape: BusinessReportS3Location, location_name: "S3Location"))
    BusinessReport.add_member(:delivery_time, Shapes::ShapeRef.new(shape: BusinessReportDeliveryTime, location_name: "DeliveryTime"))
    BusinessReport.add_member(:download_url, Shapes::ShapeRef.new(shape: BusinessReportDownloadUrl, location_name: "DownloadUrl"))
    BusinessReport.struct_class = Types::BusinessReport

    BusinessReportContentRange.add_member(:interval, Shapes::ShapeRef.new(shape: BusinessReportInterval, required: true, location_name: "Interval"))
    BusinessReportContentRange.struct_class = Types::BusinessReportContentRange

    BusinessReportRecurrence.add_member(:start_date, Shapes::ShapeRef.new(shape: Date, location_name: "StartDate"))
    BusinessReportRecurrence.struct_class = Types::BusinessReportRecurrence

    BusinessReportS3Location.add_member(:path, Shapes::ShapeRef.new(shape: BusinessReportS3Path, location_name: "Path"))
    BusinessReportS3Location.add_member(:bucket_name, Shapes::ShapeRef.new(shape: CustomerS3BucketName, location_name: "BucketName"))
    BusinessReportS3Location.struct_class = Types::BusinessReportS3Location

    BusinessReportSchedule.add_member(:schedule_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "ScheduleArn"))
    BusinessReportSchedule.add_member(:schedule_name, Shapes::ShapeRef.new(shape: BusinessReportScheduleName, location_name: "ScheduleName"))
    BusinessReportSchedule.add_member(:s3_bucket_name, Shapes::ShapeRef.new(shape: CustomerS3BucketName, location_name: "S3BucketName"))
    BusinessReportSchedule.add_member(:s3_key_prefix, Shapes::ShapeRef.new(shape: S3KeyPrefix, location_name: "S3KeyPrefix"))
    BusinessReportSchedule.add_member(:format, Shapes::ShapeRef.new(shape: BusinessReportFormat, location_name: "Format"))
    BusinessReportSchedule.add_member(:content_range, Shapes::ShapeRef.new(shape: BusinessReportContentRange, location_name: "ContentRange"))
    BusinessReportSchedule.add_member(:recurrence, Shapes::ShapeRef.new(shape: BusinessReportRecurrence, location_name: "Recurrence"))
    BusinessReportSchedule.add_member(:last_business_report, Shapes::ShapeRef.new(shape: BusinessReport, location_name: "LastBusinessReport"))
    BusinessReportSchedule.struct_class = Types::BusinessReportSchedule

    BusinessReportScheduleList.member = Shapes::ShapeRef.new(shape: BusinessReportSchedule)

    Category.add_member(:category_id, Shapes::ShapeRef.new(shape: CategoryId, location_name: "CategoryId"))
    Category.add_member(:category_name, Shapes::ShapeRef.new(shape: CategoryName, location_name: "CategoryName"))
    Category.struct_class = Types::Category

    CategoryList.member = Shapes::ShapeRef.new(shape: Category)

    ConcurrentModificationException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ConcurrentModificationException.struct_class = Types::ConcurrentModificationException

    ConferencePreference.add_member(:default_conference_provider_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "DefaultConferenceProviderArn"))
    ConferencePreference.struct_class = Types::ConferencePreference

    ConferenceProvider.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    ConferenceProvider.add_member(:name, Shapes::ShapeRef.new(shape: ConferenceProviderName, location_name: "Name"))
    ConferenceProvider.add_member(:type, Shapes::ShapeRef.new(shape: ConferenceProviderType, location_name: "Type"))
    ConferenceProvider.add_member(:ip_dial_in, Shapes::ShapeRef.new(shape: IPDialIn, location_name: "IPDialIn"))
    ConferenceProvider.add_member(:pstn_dial_in, Shapes::ShapeRef.new(shape: PSTNDialIn, location_name: "PSTNDialIn"))
    ConferenceProvider.add_member(:meeting_setting, Shapes::ShapeRef.new(shape: MeetingSetting, location_name: "MeetingSetting"))
    ConferenceProvider.struct_class = Types::ConferenceProvider

    ConferenceProvidersList.member = Shapes::ShapeRef.new(shape: ConferenceProvider)

    Contact.add_member(:contact_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "ContactArn"))
    Contact.add_member(:display_name, Shapes::ShapeRef.new(shape: ContactName, location_name: "DisplayName"))
    Contact.add_member(:first_name, Shapes::ShapeRef.new(shape: ContactName, location_name: "FirstName"))
    Contact.add_member(:last_name, Shapes::ShapeRef.new(shape: ContactName, location_name: "LastName"))
    Contact.add_member(:phone_number, Shapes::ShapeRef.new(shape: RawPhoneNumber, location_name: "PhoneNumber"))
    Contact.add_member(:phone_numbers, Shapes::ShapeRef.new(shape: PhoneNumberList, location_name: "PhoneNumbers"))
    Contact.add_member(:sip_addresses, Shapes::ShapeRef.new(shape: SipAddressList, location_name: "SipAddresses"))
    Contact.struct_class = Types::Contact

    ContactData.add_member(:contact_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "ContactArn"))
    ContactData.add_member(:display_name, Shapes::ShapeRef.new(shape: ContactName, location_name: "DisplayName"))
    ContactData.add_member(:first_name, Shapes::ShapeRef.new(shape: ContactName, location_name: "FirstName"))
    ContactData.add_member(:last_name, Shapes::ShapeRef.new(shape: ContactName, location_name: "LastName"))
    ContactData.add_member(:phone_number, Shapes::ShapeRef.new(shape: RawPhoneNumber, location_name: "PhoneNumber"))
    ContactData.add_member(:phone_numbers, Shapes::ShapeRef.new(shape: PhoneNumberList, location_name: "PhoneNumbers"))
    ContactData.add_member(:sip_addresses, Shapes::ShapeRef.new(shape: SipAddressList, location_name: "SipAddresses"))
    ContactData.struct_class = Types::ContactData

    ContactDataList.member = Shapes::ShapeRef.new(shape: ContactData)

    Content.add_member(:text_list, Shapes::ShapeRef.new(shape: TextList, location_name: "TextList"))
    Content.add_member(:ssml_list, Shapes::ShapeRef.new(shape: SsmlList, location_name: "SsmlList"))
    Content.add_member(:audio_list, Shapes::ShapeRef.new(shape: AudioList, location_name: "AudioList"))
    Content.struct_class = Types::Content

    CreateAddressBookRequest.add_member(:name, Shapes::ShapeRef.new(shape: AddressBookName, required: true, location_name: "Name"))
    CreateAddressBookRequest.add_member(:description, Shapes::ShapeRef.new(shape: AddressBookDescription, location_name: "Description"))
    CreateAddressBookRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "ClientRequestToken", metadata: {"idempotencyToken"=>true}))
    CreateAddressBookRequest.struct_class = Types::CreateAddressBookRequest

    CreateAddressBookResponse.add_member(:address_book_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "AddressBookArn"))
    CreateAddressBookResponse.struct_class = Types::CreateAddressBookResponse

    CreateBusinessReportScheduleRequest.add_member(:schedule_name, Shapes::ShapeRef.new(shape: BusinessReportScheduleName, location_name: "ScheduleName"))
    CreateBusinessReportScheduleRequest.add_member(:s3_bucket_name, Shapes::ShapeRef.new(shape: CustomerS3BucketName, location_name: "S3BucketName"))
    CreateBusinessReportScheduleRequest.add_member(:s3_key_prefix, Shapes::ShapeRef.new(shape: S3KeyPrefix, location_name: "S3KeyPrefix"))
    CreateBusinessReportScheduleRequest.add_member(:format, Shapes::ShapeRef.new(shape: BusinessReportFormat, required: true, location_name: "Format"))
    CreateBusinessReportScheduleRequest.add_member(:content_range, Shapes::ShapeRef.new(shape: BusinessReportContentRange, required: true, location_name: "ContentRange"))
    CreateBusinessReportScheduleRequest.add_member(:recurrence, Shapes::ShapeRef.new(shape: BusinessReportRecurrence, location_name: "Recurrence"))
    CreateBusinessReportScheduleRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "ClientRequestToken", metadata: {"idempotencyToken"=>true}))
    CreateBusinessReportScheduleRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateBusinessReportScheduleRequest.struct_class = Types::CreateBusinessReportScheduleRequest

    CreateBusinessReportScheduleResponse.add_member(:schedule_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "ScheduleArn"))
    CreateBusinessReportScheduleResponse.struct_class = Types::CreateBusinessReportScheduleResponse

    CreateConferenceProviderRequest.add_member(:conference_provider_name, Shapes::ShapeRef.new(shape: ConferenceProviderName, required: true, location_name: "ConferenceProviderName"))
    CreateConferenceProviderRequest.add_member(:conference_provider_type, Shapes::ShapeRef.new(shape: ConferenceProviderType, required: true, location_name: "ConferenceProviderType"))
    CreateConferenceProviderRequest.add_member(:ip_dial_in, Shapes::ShapeRef.new(shape: IPDialIn, location_name: "IPDialIn"))
    CreateConferenceProviderRequest.add_member(:pstn_dial_in, Shapes::ShapeRef.new(shape: PSTNDialIn, location_name: "PSTNDialIn"))
    CreateConferenceProviderRequest.add_member(:meeting_setting, Shapes::ShapeRef.new(shape: MeetingSetting, required: true, location_name: "MeetingSetting"))
    CreateConferenceProviderRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "ClientRequestToken", metadata: {"idempotencyToken"=>true}))
    CreateConferenceProviderRequest.struct_class = Types::CreateConferenceProviderRequest

    CreateConferenceProviderResponse.add_member(:conference_provider_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "ConferenceProviderArn"))
    CreateConferenceProviderResponse.struct_class = Types::CreateConferenceProviderResponse

    CreateContactRequest.add_member(:display_name, Shapes::ShapeRef.new(shape: ContactName, location_name: "DisplayName"))
    CreateContactRequest.add_member(:first_name, Shapes::ShapeRef.new(shape: ContactName, required: true, location_name: "FirstName"))
    CreateContactRequest.add_member(:last_name, Shapes::ShapeRef.new(shape: ContactName, location_name: "LastName"))
    CreateContactRequest.add_member(:phone_number, Shapes::ShapeRef.new(shape: RawPhoneNumber, location_name: "PhoneNumber"))
    CreateContactRequest.add_member(:phone_numbers, Shapes::ShapeRef.new(shape: PhoneNumberList, location_name: "PhoneNumbers"))
    CreateContactRequest.add_member(:sip_addresses, Shapes::ShapeRef.new(shape: SipAddressList, location_name: "SipAddresses"))
    CreateContactRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "ClientRequestToken", metadata: {"idempotencyToken"=>true}))
    CreateContactRequest.struct_class = Types::CreateContactRequest

    CreateContactResponse.add_member(:contact_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "ContactArn"))
    CreateContactResponse.struct_class = Types::CreateContactResponse

    CreateEndOfMeetingReminder.add_member(:reminder_at_minutes, Shapes::ShapeRef.new(shape: EndOfMeetingReminderMinutesList, required: true, location_name: "ReminderAtMinutes"))
    CreateEndOfMeetingReminder.add_member(:reminder_type, Shapes::ShapeRef.new(shape: EndOfMeetingReminderType, required: true, location_name: "ReminderType"))
    CreateEndOfMeetingReminder.add_member(:enabled, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "Enabled"))
    CreateEndOfMeetingReminder.struct_class = Types::CreateEndOfMeetingReminder

    CreateGatewayGroupRequest.add_member(:name, Shapes::ShapeRef.new(shape: GatewayGroupName, required: true, location_name: "Name"))
    CreateGatewayGroupRequest.add_member(:description, Shapes::ShapeRef.new(shape: GatewayGroupDescription, location_name: "Description"))
    CreateGatewayGroupRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, required: true, location_name: "ClientRequestToken", metadata: {"idempotencyToken"=>true}))
    CreateGatewayGroupRequest.struct_class = Types::CreateGatewayGroupRequest

    CreateGatewayGroupResponse.add_member(:gateway_group_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "GatewayGroupArn"))
    CreateGatewayGroupResponse.struct_class = Types::CreateGatewayGroupResponse

    CreateInstantBooking.add_member(:duration_in_minutes, Shapes::ShapeRef.new(shape: Minutes, required: true, location_name: "DurationInMinutes"))
    CreateInstantBooking.add_member(:enabled, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "Enabled"))
    CreateInstantBooking.struct_class = Types::CreateInstantBooking

    CreateMeetingRoomConfiguration.add_member(:room_utilization_metrics_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "RoomUtilizationMetricsEnabled"))
    CreateMeetingRoomConfiguration.add_member(:end_of_meeting_reminder, Shapes::ShapeRef.new(shape: CreateEndOfMeetingReminder, location_name: "EndOfMeetingReminder"))
    CreateMeetingRoomConfiguration.add_member(:instant_booking, Shapes::ShapeRef.new(shape: CreateInstantBooking, location_name: "InstantBooking"))
    CreateMeetingRoomConfiguration.add_member(:require_check_in, Shapes::ShapeRef.new(shape: CreateRequireCheckIn, location_name: "RequireCheckIn"))
    CreateMeetingRoomConfiguration.struct_class = Types::CreateMeetingRoomConfiguration

    CreateNetworkProfileRequest.add_member(:network_profile_name, Shapes::ShapeRef.new(shape: NetworkProfileName, required: true, location_name: "NetworkProfileName"))
    CreateNetworkProfileRequest.add_member(:description, Shapes::ShapeRef.new(shape: NetworkProfileDescription, location_name: "Description"))
    CreateNetworkProfileRequest.add_member(:ssid, Shapes::ShapeRef.new(shape: NetworkSsid, required: true, location_name: "Ssid"))
    CreateNetworkProfileRequest.add_member(:security_type, Shapes::ShapeRef.new(shape: NetworkSecurityType, required: true, location_name: "SecurityType"))
    CreateNetworkProfileRequest.add_member(:eap_method, Shapes::ShapeRef.new(shape: NetworkEapMethod, location_name: "EapMethod"))
    CreateNetworkProfileRequest.add_member(:current_password, Shapes::ShapeRef.new(shape: CurrentWiFiPassword, location_name: "CurrentPassword"))
    CreateNetworkProfileRequest.add_member(:next_password, Shapes::ShapeRef.new(shape: NextWiFiPassword, location_name: "NextPassword"))
    CreateNetworkProfileRequest.add_member(:certificate_authority_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "CertificateAuthorityArn"))
    CreateNetworkProfileRequest.add_member(:trust_anchors, Shapes::ShapeRef.new(shape: TrustAnchorList, location_name: "TrustAnchors"))
    CreateNetworkProfileRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, required: true, location_name: "ClientRequestToken", metadata: {"idempotencyToken"=>true}))
    CreateNetworkProfileRequest.struct_class = Types::CreateNetworkProfileRequest

    CreateNetworkProfileResponse.add_member(:network_profile_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "NetworkProfileArn"))
    CreateNetworkProfileResponse.struct_class = Types::CreateNetworkProfileResponse

    CreateProfileRequest.add_member(:profile_name, Shapes::ShapeRef.new(shape: ProfileName, required: true, location_name: "ProfileName"))
    CreateProfileRequest.add_member(:timezone, Shapes::ShapeRef.new(shape: Timezone, required: true, location_name: "Timezone"))
    CreateProfileRequest.add_member(:address, Shapes::ShapeRef.new(shape: Address, required: true, location_name: "Address"))
    CreateProfileRequest.add_member(:distance_unit, Shapes::ShapeRef.new(shape: DistanceUnit, required: true, location_name: "DistanceUnit"))
    CreateProfileRequest.add_member(:temperature_unit, Shapes::ShapeRef.new(shape: TemperatureUnit, required: true, location_name: "TemperatureUnit"))
    CreateProfileRequest.add_member(:wake_word, Shapes::ShapeRef.new(shape: WakeWord, required: true, location_name: "WakeWord"))
    CreateProfileRequest.add_member(:locale, Shapes::ShapeRef.new(shape: DeviceLocale, location_name: "Locale"))
    CreateProfileRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "ClientRequestToken", metadata: {"idempotencyToken"=>true}))
    CreateProfileRequest.add_member(:setup_mode_disabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "SetupModeDisabled"))
    CreateProfileRequest.add_member(:max_volume_limit, Shapes::ShapeRef.new(shape: MaxVolumeLimit, location_name: "MaxVolumeLimit"))
    CreateProfileRequest.add_member(:pstn_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "PSTNEnabled"))
    CreateProfileRequest.add_member(:meeting_room_configuration, Shapes::ShapeRef.new(shape: CreateMeetingRoomConfiguration, location_name: "MeetingRoomConfiguration"))
    CreateProfileRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateProfileRequest.struct_class = Types::CreateProfileRequest

    CreateProfileResponse.add_member(:profile_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "ProfileArn"))
    CreateProfileResponse.struct_class = Types::CreateProfileResponse

    CreateRequireCheckIn.add_member(:release_after_minutes, Shapes::ShapeRef.new(shape: Minutes, required: true, location_name: "ReleaseAfterMinutes"))
    CreateRequireCheckIn.add_member(:enabled, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "Enabled"))
    CreateRequireCheckIn.struct_class = Types::CreateRequireCheckIn

    CreateRoomRequest.add_member(:room_name, Shapes::ShapeRef.new(shape: RoomName, required: true, location_name: "RoomName"))
    CreateRoomRequest.add_member(:description, Shapes::ShapeRef.new(shape: RoomDescription, location_name: "Description"))
    CreateRoomRequest.add_member(:profile_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "ProfileArn"))
    CreateRoomRequest.add_member(:provider_calendar_id, Shapes::ShapeRef.new(shape: ProviderCalendarId, location_name: "ProviderCalendarId"))
    CreateRoomRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "ClientRequestToken", metadata: {"idempotencyToken"=>true}))
    CreateRoomRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateRoomRequest.struct_class = Types::CreateRoomRequest

    CreateRoomResponse.add_member(:room_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "RoomArn"))
    CreateRoomResponse.struct_class = Types::CreateRoomResponse

    CreateSkillGroupRequest.add_member(:skill_group_name, Shapes::ShapeRef.new(shape: SkillGroupName, required: true, location_name: "SkillGroupName"))
    CreateSkillGroupRequest.add_member(:description, Shapes::ShapeRef.new(shape: SkillGroupDescription, location_name: "Description"))
    CreateSkillGroupRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "ClientRequestToken", metadata: {"idempotencyToken"=>true}))
    CreateSkillGroupRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateSkillGroupRequest.struct_class = Types::CreateSkillGroupRequest

    CreateSkillGroupResponse.add_member(:skill_group_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "SkillGroupArn"))
    CreateSkillGroupResponse.struct_class = Types::CreateSkillGroupResponse

    CreateUserRequest.add_member(:user_id, Shapes::ShapeRef.new(shape: user_UserId, required: true, location_name: "UserId"))
    CreateUserRequest.add_member(:first_name, Shapes::ShapeRef.new(shape: user_FirstName, location_name: "FirstName"))
    CreateUserRequest.add_member(:last_name, Shapes::ShapeRef.new(shape: user_LastName, location_name: "LastName"))
    CreateUserRequest.add_member(:email, Shapes::ShapeRef.new(shape: Email, location_name: "Email"))
    CreateUserRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "ClientRequestToken", metadata: {"idempotencyToken"=>true}))
    CreateUserRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateUserRequest.struct_class = Types::CreateUserRequest

    CreateUserResponse.add_member(:user_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "UserArn"))
    CreateUserResponse.struct_class = Types::CreateUserResponse

    DeleteAddressBookRequest.add_member(:address_book_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "AddressBookArn"))
    DeleteAddressBookRequest.struct_class = Types::DeleteAddressBookRequest

    DeleteAddressBookResponse.struct_class = Types::DeleteAddressBookResponse

    DeleteBusinessReportScheduleRequest.add_member(:schedule_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "ScheduleArn"))
    DeleteBusinessReportScheduleRequest.struct_class = Types::DeleteBusinessReportScheduleRequest

    DeleteBusinessReportScheduleResponse.struct_class = Types::DeleteBusinessReportScheduleResponse

    DeleteConferenceProviderRequest.add_member(:conference_provider_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "ConferenceProviderArn"))
    DeleteConferenceProviderRequest.struct_class = Types::DeleteConferenceProviderRequest

    DeleteConferenceProviderResponse.struct_class = Types::DeleteConferenceProviderResponse

    DeleteContactRequest.add_member(:contact_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "ContactArn"))
    DeleteContactRequest.struct_class = Types::DeleteContactRequest

    DeleteContactResponse.struct_class = Types::DeleteContactResponse

    DeleteDeviceRequest.add_member(:device_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "DeviceArn"))
    DeleteDeviceRequest.struct_class = Types::DeleteDeviceRequest

    DeleteDeviceResponse.struct_class = Types::DeleteDeviceResponse

    DeleteDeviceUsageDataRequest.add_member(:device_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "DeviceArn"))
    DeleteDeviceUsageDataRequest.add_member(:device_usage_type, Shapes::ShapeRef.new(shape: DeviceUsageType, required: true, location_name: "DeviceUsageType"))
    DeleteDeviceUsageDataRequest.struct_class = Types::DeleteDeviceUsageDataRequest

    DeleteDeviceUsageDataResponse.struct_class = Types::DeleteDeviceUsageDataResponse

    DeleteGatewayGroupRequest.add_member(:gateway_group_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "GatewayGroupArn"))
    DeleteGatewayGroupRequest.struct_class = Types::DeleteGatewayGroupRequest

    DeleteGatewayGroupResponse.struct_class = Types::DeleteGatewayGroupResponse

    DeleteNetworkProfileRequest.add_member(:network_profile_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "NetworkProfileArn"))
    DeleteNetworkProfileRequest.struct_class = Types::DeleteNetworkProfileRequest

    DeleteNetworkProfileResponse.struct_class = Types::DeleteNetworkProfileResponse

    DeleteProfileRequest.add_member(:profile_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "ProfileArn"))
    DeleteProfileRequest.struct_class = Types::DeleteProfileRequest

    DeleteProfileResponse.struct_class = Types::DeleteProfileResponse

    DeleteRoomRequest.add_member(:room_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "RoomArn"))
    DeleteRoomRequest.struct_class = Types::DeleteRoomRequest

    DeleteRoomResponse.struct_class = Types::DeleteRoomResponse

    DeleteRoomSkillParameterRequest.add_member(:room_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "RoomArn"))
    DeleteRoomSkillParameterRequest.add_member(:skill_id, Shapes::ShapeRef.new(shape: SkillId, required: true, location_name: "SkillId"))
    DeleteRoomSkillParameterRequest.add_member(:parameter_key, Shapes::ShapeRef.new(shape: RoomSkillParameterKey, required: true, location_name: "ParameterKey"))
    DeleteRoomSkillParameterRequest.struct_class = Types::DeleteRoomSkillParameterRequest

    DeleteRoomSkillParameterResponse.struct_class = Types::DeleteRoomSkillParameterResponse

    DeleteSkillAuthorizationRequest.add_member(:skill_id, Shapes::ShapeRef.new(shape: SkillId, required: true, location_name: "SkillId"))
    DeleteSkillAuthorizationRequest.add_member(:room_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "RoomArn"))
    DeleteSkillAuthorizationRequest.struct_class = Types::DeleteSkillAuthorizationRequest

    DeleteSkillAuthorizationResponse.struct_class = Types::DeleteSkillAuthorizationResponse

    DeleteSkillGroupRequest.add_member(:skill_group_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "SkillGroupArn"))
    DeleteSkillGroupRequest.struct_class = Types::DeleteSkillGroupRequest

    DeleteSkillGroupResponse.struct_class = Types::DeleteSkillGroupResponse

    DeleteUserRequest.add_member(:user_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "UserArn"))
    DeleteUserRequest.add_member(:enrollment_id, Shapes::ShapeRef.new(shape: EnrollmentId, required: true, location_name: "EnrollmentId"))
    DeleteUserRequest.struct_class = Types::DeleteUserRequest

    DeleteUserResponse.struct_class = Types::DeleteUserResponse

    DeveloperInfo.add_member(:developer_name, Shapes::ShapeRef.new(shape: DeveloperName, location_name: "DeveloperName"))
    DeveloperInfo.add_member(:privacy_policy, Shapes::ShapeRef.new(shape: PrivacyPolicy, location_name: "PrivacyPolicy"))
    DeveloperInfo.add_member(:email, Shapes::ShapeRef.new(shape: Email, location_name: "Email"))
    DeveloperInfo.add_member(:url, Shapes::ShapeRef.new(shape: Url, location_name: "Url"))
    DeveloperInfo.struct_class = Types::DeveloperInfo

    Device.add_member(:device_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "DeviceArn"))
    Device.add_member(:device_serial_number, Shapes::ShapeRef.new(shape: DeviceSerialNumber, location_name: "DeviceSerialNumber"))
    Device.add_member(:device_type, Shapes::ShapeRef.new(shape: DeviceType, location_name: "DeviceType"))
    Device.add_member(:device_name, Shapes::ShapeRef.new(shape: DeviceName, location_name: "DeviceName"))
    Device.add_member(:software_version, Shapes::ShapeRef.new(shape: SoftwareVersion, location_name: "SoftwareVersion"))
    Device.add_member(:mac_address, Shapes::ShapeRef.new(shape: MacAddress, location_name: "MacAddress"))
    Device.add_member(:room_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "RoomArn"))
    Device.add_member(:device_status, Shapes::ShapeRef.new(shape: DeviceStatus, location_name: "DeviceStatus"))
    Device.add_member(:device_status_info, Shapes::ShapeRef.new(shape: DeviceStatusInfo, location_name: "DeviceStatusInfo"))
    Device.add_member(:network_profile_info, Shapes::ShapeRef.new(shape: DeviceNetworkProfileInfo, location_name: "NetworkProfileInfo"))
    Device.struct_class = Types::Device

    DeviceData.add_member(:device_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "DeviceArn"))
    DeviceData.add_member(:device_serial_number, Shapes::ShapeRef.new(shape: DeviceSerialNumber, location_name: "DeviceSerialNumber"))
    DeviceData.add_member(:device_type, Shapes::ShapeRef.new(shape: DeviceType, location_name: "DeviceType"))
    DeviceData.add_member(:device_name, Shapes::ShapeRef.new(shape: DeviceName, location_name: "DeviceName"))
    DeviceData.add_member(:software_version, Shapes::ShapeRef.new(shape: SoftwareVersion, location_name: "SoftwareVersion"))
    DeviceData.add_member(:mac_address, Shapes::ShapeRef.new(shape: MacAddress, location_name: "MacAddress"))
    DeviceData.add_member(:device_status, Shapes::ShapeRef.new(shape: DeviceStatus, location_name: "DeviceStatus"))
    DeviceData.add_member(:network_profile_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "NetworkProfileArn"))
    DeviceData.add_member(:network_profile_name, Shapes::ShapeRef.new(shape: NetworkProfileName, location_name: "NetworkProfileName"))
    DeviceData.add_member(:room_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "RoomArn"))
    DeviceData.add_member(:room_name, Shapes::ShapeRef.new(shape: DeviceRoomName, location_name: "RoomName"))
    DeviceData.add_member(:device_status_info, Shapes::ShapeRef.new(shape: DeviceStatusInfo, location_name: "DeviceStatusInfo"))
    DeviceData.add_member(:created_time, Shapes::ShapeRef.new(shape: DeviceDataCreatedTime, location_name: "CreatedTime"))
    DeviceData.struct_class = Types::DeviceData

    DeviceDataList.member = Shapes::ShapeRef.new(shape: DeviceData)

    DeviceEvent.add_member(:type, Shapes::ShapeRef.new(shape: DeviceEventType, location_name: "Type"))
    DeviceEvent.add_member(:value, Shapes::ShapeRef.new(shape: DeviceEventValue, location_name: "Value"))
    DeviceEvent.add_member(:timestamp, Shapes::ShapeRef.new(shape: DeviceEventTime, location_name: "Timestamp"))
    DeviceEvent.struct_class = Types::DeviceEvent

    DeviceEventList.member = Shapes::ShapeRef.new(shape: DeviceEvent)

    DeviceNetworkProfileInfo.add_member(:network_profile_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "NetworkProfileArn"))
    DeviceNetworkProfileInfo.add_member(:certificate_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "CertificateArn"))
    DeviceNetworkProfileInfo.add_member(:certificate_expiration_time, Shapes::ShapeRef.new(shape: CertificateTime, location_name: "CertificateExpirationTime"))
    DeviceNetworkProfileInfo.struct_class = Types::DeviceNetworkProfileInfo

    DeviceNotRegisteredException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    DeviceNotRegisteredException.struct_class = Types::DeviceNotRegisteredException

    DeviceStatusDetail.add_member(:feature, Shapes::ShapeRef.new(shape: Feature, location_name: "Feature"))
    DeviceStatusDetail.add_member(:code, Shapes::ShapeRef.new(shape: DeviceStatusDetailCode, location_name: "Code"))
    DeviceStatusDetail.struct_class = Types::DeviceStatusDetail

    DeviceStatusDetails.member = Shapes::ShapeRef.new(shape: DeviceStatusDetail)

    DeviceStatusInfo.add_member(:device_status_details, Shapes::ShapeRef.new(shape: DeviceStatusDetails, location_name: "DeviceStatusDetails"))
    DeviceStatusInfo.add_member(:connection_status, Shapes::ShapeRef.new(shape: ConnectionStatus, location_name: "ConnectionStatus"))
    DeviceStatusInfo.add_member(:connection_status_updated_time, Shapes::ShapeRef.new(shape: ConnectionStatusUpdatedTime, location_name: "ConnectionStatusUpdatedTime"))
    DeviceStatusInfo.struct_class = Types::DeviceStatusInfo

    DisassociateContactFromAddressBookRequest.add_member(:contact_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "ContactArn"))
    DisassociateContactFromAddressBookRequest.add_member(:address_book_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "AddressBookArn"))
    DisassociateContactFromAddressBookRequest.struct_class = Types::DisassociateContactFromAddressBookRequest

    DisassociateContactFromAddressBookResponse.struct_class = Types::DisassociateContactFromAddressBookResponse

    DisassociateDeviceFromRoomRequest.add_member(:device_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "DeviceArn"))
    DisassociateDeviceFromRoomRequest.struct_class = Types::DisassociateDeviceFromRoomRequest

    DisassociateDeviceFromRoomResponse.struct_class = Types::DisassociateDeviceFromRoomResponse

    DisassociateSkillFromSkillGroupRequest.add_member(:skill_group_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "SkillGroupArn"))
    DisassociateSkillFromSkillGroupRequest.add_member(:skill_id, Shapes::ShapeRef.new(shape: SkillId, required: true, location_name: "SkillId"))
    DisassociateSkillFromSkillGroupRequest.struct_class = Types::DisassociateSkillFromSkillGroupRequest

    DisassociateSkillFromSkillGroupResponse.struct_class = Types::DisassociateSkillFromSkillGroupResponse

    DisassociateSkillFromUsersRequest.add_member(:skill_id, Shapes::ShapeRef.new(shape: SkillId, required: true, location_name: "SkillId"))
    DisassociateSkillFromUsersRequest.struct_class = Types::DisassociateSkillFromUsersRequest

    DisassociateSkillFromUsersResponse.struct_class = Types::DisassociateSkillFromUsersResponse

    DisassociateSkillGroupFromRoomRequest.add_member(:skill_group_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "SkillGroupArn"))
    DisassociateSkillGroupFromRoomRequest.add_member(:room_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "RoomArn"))
    DisassociateSkillGroupFromRoomRequest.struct_class = Types::DisassociateSkillGroupFromRoomRequest

    DisassociateSkillGroupFromRoomResponse.struct_class = Types::DisassociateSkillGroupFromRoomResponse

    EndOfMeetingReminder.add_member(:reminder_at_minutes, Shapes::ShapeRef.new(shape: EndOfMeetingReminderMinutesList, location_name: "ReminderAtMinutes"))
    EndOfMeetingReminder.add_member(:reminder_type, Shapes::ShapeRef.new(shape: EndOfMeetingReminderType, location_name: "ReminderType"))
    EndOfMeetingReminder.add_member(:enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "Enabled"))
    EndOfMeetingReminder.struct_class = Types::EndOfMeetingReminder

    EndOfMeetingReminderMinutesList.member = Shapes::ShapeRef.new(shape: Minutes)

    Features.member = Shapes::ShapeRef.new(shape: Feature)

    Filter.add_member(:key, Shapes::ShapeRef.new(shape: FilterKey, required: true, location_name: "Key"))
    Filter.add_member(:values, Shapes::ShapeRef.new(shape: FilterValueList, required: true, location_name: "Values"))
    Filter.struct_class = Types::Filter

    FilterList.member = Shapes::ShapeRef.new(shape: Filter)

    FilterValueList.member = Shapes::ShapeRef.new(shape: FilterValue)

    ForgetSmartHomeAppliancesRequest.add_member(:room_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "RoomArn"))
    ForgetSmartHomeAppliancesRequest.struct_class = Types::ForgetSmartHomeAppliancesRequest

    ForgetSmartHomeAppliancesResponse.struct_class = Types::ForgetSmartHomeAppliancesResponse

    Gateway.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    Gateway.add_member(:name, Shapes::ShapeRef.new(shape: GatewayName, location_name: "Name"))
    Gateway.add_member(:description, Shapes::ShapeRef.new(shape: GatewayDescription, location_name: "Description"))
    Gateway.add_member(:gateway_group_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "GatewayGroupArn"))
    Gateway.add_member(:software_version, Shapes::ShapeRef.new(shape: GatewayVersion, location_name: "SoftwareVersion"))
    Gateway.struct_class = Types::Gateway

    GatewayGroup.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    GatewayGroup.add_member(:name, Shapes::ShapeRef.new(shape: GatewayGroupName, location_name: "Name"))
    GatewayGroup.add_member(:description, Shapes::ShapeRef.new(shape: GatewayGroupDescription, location_name: "Description"))
    GatewayGroup.struct_class = Types::GatewayGroup

    GatewayGroupSummaries.member = Shapes::ShapeRef.new(shape: GatewayGroupSummary)

    GatewayGroupSummary.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    GatewayGroupSummary.add_member(:name, Shapes::ShapeRef.new(shape: GatewayGroupName, location_name: "Name"))
    GatewayGroupSummary.add_member(:description, Shapes::ShapeRef.new(shape: GatewayGroupDescription, location_name: "Description"))
    GatewayGroupSummary.struct_class = Types::GatewayGroupSummary

    GatewaySummaries.member = Shapes::ShapeRef.new(shape: GatewaySummary)

    GatewaySummary.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    GatewaySummary.add_member(:name, Shapes::ShapeRef.new(shape: GatewayName, location_name: "Name"))
    GatewaySummary.add_member(:description, Shapes::ShapeRef.new(shape: GatewayDescription, location_name: "Description"))
    GatewaySummary.add_member(:gateway_group_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "GatewayGroupArn"))
    GatewaySummary.add_member(:software_version, Shapes::ShapeRef.new(shape: GatewayVersion, location_name: "SoftwareVersion"))
    GatewaySummary.struct_class = Types::GatewaySummary

    GenericKeywords.member = Shapes::ShapeRef.new(shape: GenericKeyword)

    GetAddressBookRequest.add_member(:address_book_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "AddressBookArn"))
    GetAddressBookRequest.struct_class = Types::GetAddressBookRequest

    GetAddressBookResponse.add_member(:address_book, Shapes::ShapeRef.new(shape: AddressBook, location_name: "AddressBook"))
    GetAddressBookResponse.struct_class = Types::GetAddressBookResponse

    GetConferencePreferenceRequest.struct_class = Types::GetConferencePreferenceRequest

    GetConferencePreferenceResponse.add_member(:preference, Shapes::ShapeRef.new(shape: ConferencePreference, location_name: "Preference"))
    GetConferencePreferenceResponse.struct_class = Types::GetConferencePreferenceResponse

    GetConferenceProviderRequest.add_member(:conference_provider_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "ConferenceProviderArn"))
    GetConferenceProviderRequest.struct_class = Types::GetConferenceProviderRequest

    GetConferenceProviderResponse.add_member(:conference_provider, Shapes::ShapeRef.new(shape: ConferenceProvider, location_name: "ConferenceProvider"))
    GetConferenceProviderResponse.struct_class = Types::GetConferenceProviderResponse

    GetContactRequest.add_member(:contact_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "ContactArn"))
    GetContactRequest.struct_class = Types::GetContactRequest

    GetContactResponse.add_member(:contact, Shapes::ShapeRef.new(shape: Contact, location_name: "Contact"))
    GetContactResponse.struct_class = Types::GetContactResponse

    GetDeviceRequest.add_member(:device_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "DeviceArn"))
    GetDeviceRequest.struct_class = Types::GetDeviceRequest

    GetDeviceResponse.add_member(:device, Shapes::ShapeRef.new(shape: Device, location_name: "Device"))
    GetDeviceResponse.struct_class = Types::GetDeviceResponse

    GetGatewayGroupRequest.add_member(:gateway_group_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "GatewayGroupArn"))
    GetGatewayGroupRequest.struct_class = Types::GetGatewayGroupRequest

    GetGatewayGroupResponse.add_member(:gateway_group, Shapes::ShapeRef.new(shape: GatewayGroup, location_name: "GatewayGroup"))
    GetGatewayGroupResponse.struct_class = Types::GetGatewayGroupResponse

    GetGatewayRequest.add_member(:gateway_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "GatewayArn"))
    GetGatewayRequest.struct_class = Types::GetGatewayRequest

    GetGatewayResponse.add_member(:gateway, Shapes::ShapeRef.new(shape: Gateway, location_name: "Gateway"))
    GetGatewayResponse.struct_class = Types::GetGatewayResponse

    GetInvitationConfigurationRequest.struct_class = Types::GetInvitationConfigurationRequest

    GetInvitationConfigurationResponse.add_member(:organization_name, Shapes::ShapeRef.new(shape: OrganizationName, location_name: "OrganizationName"))
    GetInvitationConfigurationResponse.add_member(:contact_email, Shapes::ShapeRef.new(shape: Email, location_name: "ContactEmail"))
    GetInvitationConfigurationResponse.add_member(:private_skill_ids, Shapes::ShapeRef.new(shape: ShortSkillIdList, location_name: "PrivateSkillIds"))
    GetInvitationConfigurationResponse.struct_class = Types::GetInvitationConfigurationResponse

    GetNetworkProfileRequest.add_member(:network_profile_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "NetworkProfileArn"))
    GetNetworkProfileRequest.struct_class = Types::GetNetworkProfileRequest

    GetNetworkProfileResponse.add_member(:network_profile, Shapes::ShapeRef.new(shape: NetworkProfile, location_name: "NetworkProfile"))
    GetNetworkProfileResponse.struct_class = Types::GetNetworkProfileResponse

    GetProfileRequest.add_member(:profile_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "ProfileArn"))
    GetProfileRequest.struct_class = Types::GetProfileRequest

    GetProfileResponse.add_member(:profile, Shapes::ShapeRef.new(shape: Profile, location_name: "Profile"))
    GetProfileResponse.struct_class = Types::GetProfileResponse

    GetRoomRequest.add_member(:room_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "RoomArn"))
    GetRoomRequest.struct_class = Types::GetRoomRequest

    GetRoomResponse.add_member(:room, Shapes::ShapeRef.new(shape: Room, location_name: "Room"))
    GetRoomResponse.struct_class = Types::GetRoomResponse

    GetRoomSkillParameterRequest.add_member(:room_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "RoomArn"))
    GetRoomSkillParameterRequest.add_member(:skill_id, Shapes::ShapeRef.new(shape: SkillId, required: true, location_name: "SkillId"))
    GetRoomSkillParameterRequest.add_member(:parameter_key, Shapes::ShapeRef.new(shape: RoomSkillParameterKey, required: true, location_name: "ParameterKey"))
    GetRoomSkillParameterRequest.struct_class = Types::GetRoomSkillParameterRequest

    GetRoomSkillParameterResponse.add_member(:room_skill_parameter, Shapes::ShapeRef.new(shape: RoomSkillParameter, location_name: "RoomSkillParameter"))
    GetRoomSkillParameterResponse.struct_class = Types::GetRoomSkillParameterResponse

    GetSkillGroupRequest.add_member(:skill_group_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "SkillGroupArn"))
    GetSkillGroupRequest.struct_class = Types::GetSkillGroupRequest

    GetSkillGroupResponse.add_member(:skill_group, Shapes::ShapeRef.new(shape: SkillGroup, location_name: "SkillGroup"))
    GetSkillGroupResponse.struct_class = Types::GetSkillGroupResponse

    IPDialIn.add_member(:endpoint, Shapes::ShapeRef.new(shape: Endpoint, required: true, location_name: "Endpoint"))
    IPDialIn.add_member(:comms_protocol, Shapes::ShapeRef.new(shape: CommsProtocol, required: true, location_name: "CommsProtocol"))
    IPDialIn.struct_class = Types::IPDialIn

    InstantBooking.add_member(:duration_in_minutes, Shapes::ShapeRef.new(shape: Minutes, location_name: "DurationInMinutes"))
    InstantBooking.add_member(:enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "Enabled"))
    InstantBooking.struct_class = Types::InstantBooking

    InvalidCertificateAuthorityException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    InvalidCertificateAuthorityException.struct_class = Types::InvalidCertificateAuthorityException

    InvalidDeviceException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    InvalidDeviceException.struct_class = Types::InvalidDeviceException

    InvalidSecretsManagerResourceException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    InvalidSecretsManagerResourceException.struct_class = Types::InvalidSecretsManagerResourceException

    InvalidServiceLinkedRoleStateException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    InvalidServiceLinkedRoleStateException.struct_class = Types::InvalidServiceLinkedRoleStateException

    InvalidUserStatusException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    InvalidUserStatusException.struct_class = Types::InvalidUserStatusException

    LimitExceededException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    LimitExceededException.struct_class = Types::LimitExceededException

    ListBusinessReportSchedulesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListBusinessReportSchedulesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListBusinessReportSchedulesRequest.struct_class = Types::ListBusinessReportSchedulesRequest

    ListBusinessReportSchedulesResponse.add_member(:business_report_schedules, Shapes::ShapeRef.new(shape: BusinessReportScheduleList, location_name: "BusinessReportSchedules"))
    ListBusinessReportSchedulesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListBusinessReportSchedulesResponse.struct_class = Types::ListBusinessReportSchedulesResponse

    ListConferenceProvidersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListConferenceProvidersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListConferenceProvidersRequest.struct_class = Types::ListConferenceProvidersRequest

    ListConferenceProvidersResponse.add_member(:conference_providers, Shapes::ShapeRef.new(shape: ConferenceProvidersList, location_name: "ConferenceProviders"))
    ListConferenceProvidersResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListConferenceProvidersResponse.struct_class = Types::ListConferenceProvidersResponse

    ListDeviceEventsRequest.add_member(:device_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "DeviceArn"))
    ListDeviceEventsRequest.add_member(:event_type, Shapes::ShapeRef.new(shape: DeviceEventType, location_name: "EventType"))
    ListDeviceEventsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListDeviceEventsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListDeviceEventsRequest.struct_class = Types::ListDeviceEventsRequest

    ListDeviceEventsResponse.add_member(:device_events, Shapes::ShapeRef.new(shape: DeviceEventList, location_name: "DeviceEvents"))
    ListDeviceEventsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListDeviceEventsResponse.struct_class = Types::ListDeviceEventsResponse

    ListGatewayGroupsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListGatewayGroupsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListGatewayGroupsRequest.struct_class = Types::ListGatewayGroupsRequest

    ListGatewayGroupsResponse.add_member(:gateway_groups, Shapes::ShapeRef.new(shape: GatewayGroupSummaries, location_name: "GatewayGroups"))
    ListGatewayGroupsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListGatewayGroupsResponse.struct_class = Types::ListGatewayGroupsResponse

    ListGatewaysRequest.add_member(:gateway_group_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "GatewayGroupArn"))
    ListGatewaysRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListGatewaysRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListGatewaysRequest.struct_class = Types::ListGatewaysRequest

    ListGatewaysResponse.add_member(:gateways, Shapes::ShapeRef.new(shape: GatewaySummaries, location_name: "Gateways"))
    ListGatewaysResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListGatewaysResponse.struct_class = Types::ListGatewaysResponse

    ListSkillsRequest.add_member(:skill_group_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "SkillGroupArn"))
    ListSkillsRequest.add_member(:enablement_type, Shapes::ShapeRef.new(shape: EnablementTypeFilter, location_name: "EnablementType"))
    ListSkillsRequest.add_member(:skill_type, Shapes::ShapeRef.new(shape: SkillTypeFilter, location_name: "SkillType"))
    ListSkillsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListSkillsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: SkillListMaxResults, location_name: "MaxResults"))
    ListSkillsRequest.struct_class = Types::ListSkillsRequest

    ListSkillsResponse.add_member(:skill_summaries, Shapes::ShapeRef.new(shape: SkillSummaryList, location_name: "SkillSummaries"))
    ListSkillsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListSkillsResponse.struct_class = Types::ListSkillsResponse

    ListSkillsStoreCategoriesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListSkillsStoreCategoriesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListSkillsStoreCategoriesRequest.struct_class = Types::ListSkillsStoreCategoriesRequest

    ListSkillsStoreCategoriesResponse.add_member(:category_list, Shapes::ShapeRef.new(shape: CategoryList, location_name: "CategoryList"))
    ListSkillsStoreCategoriesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListSkillsStoreCategoriesResponse.struct_class = Types::ListSkillsStoreCategoriesResponse

    ListSkillsStoreSkillsByCategoryRequest.add_member(:category_id, Shapes::ShapeRef.new(shape: CategoryId, required: true, location_name: "CategoryId"))
    ListSkillsStoreSkillsByCategoryRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListSkillsStoreSkillsByCategoryRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: SkillListMaxResults, location_name: "MaxResults"))
    ListSkillsStoreSkillsByCategoryRequest.struct_class = Types::ListSkillsStoreSkillsByCategoryRequest

    ListSkillsStoreSkillsByCategoryResponse.add_member(:skills_store_skills, Shapes::ShapeRef.new(shape: SkillsStoreSkillList, location_name: "SkillsStoreSkills"))
    ListSkillsStoreSkillsByCategoryResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListSkillsStoreSkillsByCategoryResponse.struct_class = Types::ListSkillsStoreSkillsByCategoryResponse

    ListSmartHomeAppliancesRequest.add_member(:room_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "RoomArn"))
    ListSmartHomeAppliancesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListSmartHomeAppliancesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListSmartHomeAppliancesRequest.struct_class = Types::ListSmartHomeAppliancesRequest

    ListSmartHomeAppliancesResponse.add_member(:smart_home_appliances, Shapes::ShapeRef.new(shape: SmartHomeApplianceList, location_name: "SmartHomeAppliances"))
    ListSmartHomeAppliancesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListSmartHomeAppliancesResponse.struct_class = Types::ListSmartHomeAppliancesResponse

    ListTagsRequest.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "Arn"))
    ListTagsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListTagsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListTagsRequest.struct_class = Types::ListTagsRequest

    ListTagsResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    ListTagsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListTagsResponse.struct_class = Types::ListTagsResponse

    MeetingRoomConfiguration.add_member(:room_utilization_metrics_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "RoomUtilizationMetricsEnabled"))
    MeetingRoomConfiguration.add_member(:end_of_meeting_reminder, Shapes::ShapeRef.new(shape: EndOfMeetingReminder, location_name: "EndOfMeetingReminder"))
    MeetingRoomConfiguration.add_member(:instant_booking, Shapes::ShapeRef.new(shape: InstantBooking, location_name: "InstantBooking"))
    MeetingRoomConfiguration.add_member(:require_check_in, Shapes::ShapeRef.new(shape: RequireCheckIn, location_name: "RequireCheckIn"))
    MeetingRoomConfiguration.struct_class = Types::MeetingRoomConfiguration

    MeetingSetting.add_member(:require_pin, Shapes::ShapeRef.new(shape: RequirePin, required: true, location_name: "RequirePin"))
    MeetingSetting.struct_class = Types::MeetingSetting

    NameInUseException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    NameInUseException.struct_class = Types::NameInUseException

    NetworkProfile.add_member(:network_profile_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "NetworkProfileArn"))
    NetworkProfile.add_member(:network_profile_name, Shapes::ShapeRef.new(shape: NetworkProfileName, location_name: "NetworkProfileName"))
    NetworkProfile.add_member(:description, Shapes::ShapeRef.new(shape: NetworkProfileDescription, location_name: "Description"))
    NetworkProfile.add_member(:ssid, Shapes::ShapeRef.new(shape: NetworkSsid, location_name: "Ssid"))
    NetworkProfile.add_member(:security_type, Shapes::ShapeRef.new(shape: NetworkSecurityType, location_name: "SecurityType"))
    NetworkProfile.add_member(:eap_method, Shapes::ShapeRef.new(shape: NetworkEapMethod, location_name: "EapMethod"))
    NetworkProfile.add_member(:current_password, Shapes::ShapeRef.new(shape: CurrentWiFiPassword, location_name: "CurrentPassword"))
    NetworkProfile.add_member(:next_password, Shapes::ShapeRef.new(shape: NextWiFiPassword, location_name: "NextPassword"))
    NetworkProfile.add_member(:certificate_authority_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "CertificateAuthorityArn"))
    NetworkProfile.add_member(:trust_anchors, Shapes::ShapeRef.new(shape: TrustAnchorList, location_name: "TrustAnchors"))
    NetworkProfile.struct_class = Types::NetworkProfile

    NetworkProfileData.add_member(:network_profile_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "NetworkProfileArn"))
    NetworkProfileData.add_member(:network_profile_name, Shapes::ShapeRef.new(shape: NetworkProfileName, location_name: "NetworkProfileName"))
    NetworkProfileData.add_member(:description, Shapes::ShapeRef.new(shape: NetworkProfileDescription, location_name: "Description"))
    NetworkProfileData.add_member(:ssid, Shapes::ShapeRef.new(shape: NetworkSsid, location_name: "Ssid"))
    NetworkProfileData.add_member(:security_type, Shapes::ShapeRef.new(shape: NetworkSecurityType, location_name: "SecurityType"))
    NetworkProfileData.add_member(:eap_method, Shapes::ShapeRef.new(shape: NetworkEapMethod, location_name: "EapMethod"))
    NetworkProfileData.add_member(:certificate_authority_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "CertificateAuthorityArn"))
    NetworkProfileData.struct_class = Types::NetworkProfileData

    NetworkProfileDataList.member = Shapes::ShapeRef.new(shape: NetworkProfileData)

    NewInThisVersionBulletPoints.member = Shapes::ShapeRef.new(shape: BulletPoint)

    NotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    NotFoundException.struct_class = Types::NotFoundException

    PSTNDialIn.add_member(:country_code, Shapes::ShapeRef.new(shape: CountryCode, required: true, location_name: "CountryCode"))
    PSTNDialIn.add_member(:phone_number, Shapes::ShapeRef.new(shape: OutboundPhoneNumber, required: true, location_name: "PhoneNumber"))
    PSTNDialIn.add_member(:one_click_id_delay, Shapes::ShapeRef.new(shape: OneClickIdDelay, required: true, location_name: "OneClickIdDelay"))
    PSTNDialIn.add_member(:one_click_pin_delay, Shapes::ShapeRef.new(shape: OneClickPinDelay, required: true, location_name: "OneClickPinDelay"))
    PSTNDialIn.struct_class = Types::PSTNDialIn

    PhoneNumber.add_member(:number, Shapes::ShapeRef.new(shape: RawPhoneNumber, required: true, location_name: "Number"))
    PhoneNumber.add_member(:type, Shapes::ShapeRef.new(shape: PhoneNumberType, required: true, location_name: "Type"))
    PhoneNumber.struct_class = Types::PhoneNumber

    PhoneNumberList.member = Shapes::ShapeRef.new(shape: PhoneNumber)

    Profile.add_member(:profile_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "ProfileArn"))
    Profile.add_member(:profile_name, Shapes::ShapeRef.new(shape: ProfileName, location_name: "ProfileName"))
    Profile.add_member(:is_default, Shapes::ShapeRef.new(shape: Boolean, location_name: "IsDefault"))
    Profile.add_member(:address, Shapes::ShapeRef.new(shape: Address, location_name: "Address"))
    Profile.add_member(:timezone, Shapes::ShapeRef.new(shape: Timezone, location_name: "Timezone"))
    Profile.add_member(:distance_unit, Shapes::ShapeRef.new(shape: DistanceUnit, location_name: "DistanceUnit"))
    Profile.add_member(:temperature_unit, Shapes::ShapeRef.new(shape: TemperatureUnit, location_name: "TemperatureUnit"))
    Profile.add_member(:wake_word, Shapes::ShapeRef.new(shape: WakeWord, location_name: "WakeWord"))
    Profile.add_member(:locale, Shapes::ShapeRef.new(shape: DeviceLocale, location_name: "Locale"))
    Profile.add_member(:setup_mode_disabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "SetupModeDisabled"))
    Profile.add_member(:max_volume_limit, Shapes::ShapeRef.new(shape: MaxVolumeLimit, location_name: "MaxVolumeLimit"))
    Profile.add_member(:pstn_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "PSTNEnabled"))
    Profile.add_member(:address_book_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "AddressBookArn"))
    Profile.add_member(:meeting_room_configuration, Shapes::ShapeRef.new(shape: MeetingRoomConfiguration, location_name: "MeetingRoomConfiguration"))
    Profile.struct_class = Types::Profile

    ProfileData.add_member(:profile_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "ProfileArn"))
    ProfileData.add_member(:profile_name, Shapes::ShapeRef.new(shape: ProfileName, location_name: "ProfileName"))
    ProfileData.add_member(:is_default, Shapes::ShapeRef.new(shape: Boolean, location_name: "IsDefault"))
    ProfileData.add_member(:address, Shapes::ShapeRef.new(shape: Address, location_name: "Address"))
    ProfileData.add_member(:timezone, Shapes::ShapeRef.new(shape: Timezone, location_name: "Timezone"))
    ProfileData.add_member(:distance_unit, Shapes::ShapeRef.new(shape: DistanceUnit, location_name: "DistanceUnit"))
    ProfileData.add_member(:temperature_unit, Shapes::ShapeRef.new(shape: TemperatureUnit, location_name: "TemperatureUnit"))
    ProfileData.add_member(:wake_word, Shapes::ShapeRef.new(shape: WakeWord, location_name: "WakeWord"))
    ProfileData.add_member(:locale, Shapes::ShapeRef.new(shape: DeviceLocale, location_name: "Locale"))
    ProfileData.struct_class = Types::ProfileData

    ProfileDataList.member = Shapes::ShapeRef.new(shape: ProfileData)

    PutConferencePreferenceRequest.add_member(:conference_preference, Shapes::ShapeRef.new(shape: ConferencePreference, required: true, location_name: "ConferencePreference"))
    PutConferencePreferenceRequest.struct_class = Types::PutConferencePreferenceRequest

    PutConferencePreferenceResponse.struct_class = Types::PutConferencePreferenceResponse

    PutInvitationConfigurationRequest.add_member(:organization_name, Shapes::ShapeRef.new(shape: OrganizationName, required: true, location_name: "OrganizationName"))
    PutInvitationConfigurationRequest.add_member(:contact_email, Shapes::ShapeRef.new(shape: Email, location_name: "ContactEmail"))
    PutInvitationConfigurationRequest.add_member(:private_skill_ids, Shapes::ShapeRef.new(shape: ShortSkillIdList, location_name: "PrivateSkillIds"))
    PutInvitationConfigurationRequest.struct_class = Types::PutInvitationConfigurationRequest

    PutInvitationConfigurationResponse.struct_class = Types::PutInvitationConfigurationResponse

    PutRoomSkillParameterRequest.add_member(:room_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "RoomArn"))
    PutRoomSkillParameterRequest.add_member(:skill_id, Shapes::ShapeRef.new(shape: SkillId, required: true, location_name: "SkillId"))
    PutRoomSkillParameterRequest.add_member(:room_skill_parameter, Shapes::ShapeRef.new(shape: RoomSkillParameter, required: true, location_name: "RoomSkillParameter"))
    PutRoomSkillParameterRequest.struct_class = Types::PutRoomSkillParameterRequest

    PutRoomSkillParameterResponse.struct_class = Types::PutRoomSkillParameterResponse

    PutSkillAuthorizationRequest.add_member(:authorization_result, Shapes::ShapeRef.new(shape: AuthorizationResult, required: true, location_name: "AuthorizationResult"))
    PutSkillAuthorizationRequest.add_member(:skill_id, Shapes::ShapeRef.new(shape: SkillId, required: true, location_name: "SkillId"))
    PutSkillAuthorizationRequest.add_member(:room_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "RoomArn"))
    PutSkillAuthorizationRequest.struct_class = Types::PutSkillAuthorizationRequest

    PutSkillAuthorizationResponse.struct_class = Types::PutSkillAuthorizationResponse

    RegisterAVSDeviceRequest.add_member(:client_id, Shapes::ShapeRef.new(shape: ClientId, required: true, location_name: "ClientId"))
    RegisterAVSDeviceRequest.add_member(:user_code, Shapes::ShapeRef.new(shape: UserCode, required: true, location_name: "UserCode"))
    RegisterAVSDeviceRequest.add_member(:product_id, Shapes::ShapeRef.new(shape: ProductId, required: true, location_name: "ProductId"))
    RegisterAVSDeviceRequest.add_member(:device_serial_number, Shapes::ShapeRef.new(shape: DeviceSerialNumberForAVS, location_name: "DeviceSerialNumber"))
    RegisterAVSDeviceRequest.add_member(:amazon_id, Shapes::ShapeRef.new(shape: AmazonId, required: true, location_name: "AmazonId"))
    RegisterAVSDeviceRequest.add_member(:room_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "RoomArn"))
    RegisterAVSDeviceRequest.struct_class = Types::RegisterAVSDeviceRequest

    RegisterAVSDeviceResponse.add_member(:device_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "DeviceArn"))
    RegisterAVSDeviceResponse.struct_class = Types::RegisterAVSDeviceResponse

    RejectSkillRequest.add_member(:skill_id, Shapes::ShapeRef.new(shape: SkillId, required: true, location_name: "SkillId"))
    RejectSkillRequest.struct_class = Types::RejectSkillRequest

    RejectSkillResponse.struct_class = Types::RejectSkillResponse

    RequireCheckIn.add_member(:release_after_minutes, Shapes::ShapeRef.new(shape: Minutes, location_name: "ReleaseAfterMinutes"))
    RequireCheckIn.add_member(:enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "Enabled"))
    RequireCheckIn.struct_class = Types::RequireCheckIn

    ResolveRoomRequest.add_member(:user_id, Shapes::ShapeRef.new(shape: UserId, required: true, location_name: "UserId"))
    ResolveRoomRequest.add_member(:skill_id, Shapes::ShapeRef.new(shape: SkillId, required: true, location_name: "SkillId"))
    ResolveRoomRequest.struct_class = Types::ResolveRoomRequest

    ResolveRoomResponse.add_member(:room_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "RoomArn"))
    ResolveRoomResponse.add_member(:room_name, Shapes::ShapeRef.new(shape: RoomName, location_name: "RoomName"))
    ResolveRoomResponse.add_member(:room_skill_parameters, Shapes::ShapeRef.new(shape: RoomSkillParameters, location_name: "RoomSkillParameters"))
    ResolveRoomResponse.struct_class = Types::ResolveRoomResponse

    ResourceAssociatedException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ResourceAssociatedException.struct_class = Types::ResourceAssociatedException

    ResourceInUseException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ResourceInUseException.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "ClientRequestToken"))
    ResourceInUseException.struct_class = Types::ResourceInUseException

    Reviews.key = Shapes::ShapeRef.new(shape: ReviewKey)
    Reviews.value = Shapes::ShapeRef.new(shape: ReviewValue)

    RevokeInvitationRequest.add_member(:user_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "UserArn"))
    RevokeInvitationRequest.add_member(:enrollment_id, Shapes::ShapeRef.new(shape: EnrollmentId, location_name: "EnrollmentId"))
    RevokeInvitationRequest.struct_class = Types::RevokeInvitationRequest

    RevokeInvitationResponse.struct_class = Types::RevokeInvitationResponse

    Room.add_member(:room_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "RoomArn"))
    Room.add_member(:room_name, Shapes::ShapeRef.new(shape: RoomName, location_name: "RoomName"))
    Room.add_member(:description, Shapes::ShapeRef.new(shape: RoomDescription, location_name: "Description"))
    Room.add_member(:provider_calendar_id, Shapes::ShapeRef.new(shape: ProviderCalendarId, location_name: "ProviderCalendarId"))
    Room.add_member(:profile_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "ProfileArn"))
    Room.struct_class = Types::Room

    RoomData.add_member(:room_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "RoomArn"))
    RoomData.add_member(:room_name, Shapes::ShapeRef.new(shape: RoomName, location_name: "RoomName"))
    RoomData.add_member(:description, Shapes::ShapeRef.new(shape: RoomDescription, location_name: "Description"))
    RoomData.add_member(:provider_calendar_id, Shapes::ShapeRef.new(shape: ProviderCalendarId, location_name: "ProviderCalendarId"))
    RoomData.add_member(:profile_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "ProfileArn"))
    RoomData.add_member(:profile_name, Shapes::ShapeRef.new(shape: ProfileName, location_name: "ProfileName"))
    RoomData.struct_class = Types::RoomData

    RoomDataList.member = Shapes::ShapeRef.new(shape: RoomData)

    RoomSkillParameter.add_member(:parameter_key, Shapes::ShapeRef.new(shape: RoomSkillParameterKey, required: true, location_name: "ParameterKey"))
    RoomSkillParameter.add_member(:parameter_value, Shapes::ShapeRef.new(shape: RoomSkillParameterValue, required: true, location_name: "ParameterValue"))
    RoomSkillParameter.struct_class = Types::RoomSkillParameter

    RoomSkillParameters.member = Shapes::ShapeRef.new(shape: RoomSkillParameter)

    SampleUtterances.member = Shapes::ShapeRef.new(shape: Utterance)

    SearchAddressBooksRequest.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    SearchAddressBooksRequest.add_member(:sort_criteria, Shapes::ShapeRef.new(shape: SortList, location_name: "SortCriteria"))
    SearchAddressBooksRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    SearchAddressBooksRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    SearchAddressBooksRequest.struct_class = Types::SearchAddressBooksRequest

    SearchAddressBooksResponse.add_member(:address_books, Shapes::ShapeRef.new(shape: AddressBookDataList, location_name: "AddressBooks"))
    SearchAddressBooksResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    SearchAddressBooksResponse.add_member(:total_count, Shapes::ShapeRef.new(shape: TotalCount, location_name: "TotalCount"))
    SearchAddressBooksResponse.struct_class = Types::SearchAddressBooksResponse

    SearchContactsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    SearchContactsRequest.add_member(:sort_criteria, Shapes::ShapeRef.new(shape: SortList, location_name: "SortCriteria"))
    SearchContactsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    SearchContactsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    SearchContactsRequest.struct_class = Types::SearchContactsRequest

    SearchContactsResponse.add_member(:contacts, Shapes::ShapeRef.new(shape: ContactDataList, location_name: "Contacts"))
    SearchContactsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    SearchContactsResponse.add_member(:total_count, Shapes::ShapeRef.new(shape: TotalCount, location_name: "TotalCount"))
    SearchContactsResponse.struct_class = Types::SearchContactsResponse

    SearchDevicesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    SearchDevicesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    SearchDevicesRequest.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    SearchDevicesRequest.add_member(:sort_criteria, Shapes::ShapeRef.new(shape: SortList, location_name: "SortCriteria"))
    SearchDevicesRequest.struct_class = Types::SearchDevicesRequest

    SearchDevicesResponse.add_member(:devices, Shapes::ShapeRef.new(shape: DeviceDataList, location_name: "Devices"))
    SearchDevicesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    SearchDevicesResponse.add_member(:total_count, Shapes::ShapeRef.new(shape: TotalCount, location_name: "TotalCount"))
    SearchDevicesResponse.struct_class = Types::SearchDevicesResponse

    SearchNetworkProfilesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    SearchNetworkProfilesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    SearchNetworkProfilesRequest.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    SearchNetworkProfilesRequest.add_member(:sort_criteria, Shapes::ShapeRef.new(shape: SortList, location_name: "SortCriteria"))
    SearchNetworkProfilesRequest.struct_class = Types::SearchNetworkProfilesRequest

    SearchNetworkProfilesResponse.add_member(:network_profiles, Shapes::ShapeRef.new(shape: NetworkProfileDataList, location_name: "NetworkProfiles"))
    SearchNetworkProfilesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    SearchNetworkProfilesResponse.add_member(:total_count, Shapes::ShapeRef.new(shape: TotalCount, location_name: "TotalCount"))
    SearchNetworkProfilesResponse.struct_class = Types::SearchNetworkProfilesResponse

    SearchProfilesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    SearchProfilesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    SearchProfilesRequest.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    SearchProfilesRequest.add_member(:sort_criteria, Shapes::ShapeRef.new(shape: SortList, location_name: "SortCriteria"))
    SearchProfilesRequest.struct_class = Types::SearchProfilesRequest

    SearchProfilesResponse.add_member(:profiles, Shapes::ShapeRef.new(shape: ProfileDataList, location_name: "Profiles"))
    SearchProfilesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    SearchProfilesResponse.add_member(:total_count, Shapes::ShapeRef.new(shape: TotalCount, location_name: "TotalCount"))
    SearchProfilesResponse.struct_class = Types::SearchProfilesResponse

    SearchRoomsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    SearchRoomsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    SearchRoomsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    SearchRoomsRequest.add_member(:sort_criteria, Shapes::ShapeRef.new(shape: SortList, location_name: "SortCriteria"))
    SearchRoomsRequest.struct_class = Types::SearchRoomsRequest

    SearchRoomsResponse.add_member(:rooms, Shapes::ShapeRef.new(shape: RoomDataList, location_name: "Rooms"))
    SearchRoomsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    SearchRoomsResponse.add_member(:total_count, Shapes::ShapeRef.new(shape: TotalCount, location_name: "TotalCount"))
    SearchRoomsResponse.struct_class = Types::SearchRoomsResponse

    SearchSkillGroupsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    SearchSkillGroupsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    SearchSkillGroupsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    SearchSkillGroupsRequest.add_member(:sort_criteria, Shapes::ShapeRef.new(shape: SortList, location_name: "SortCriteria"))
    SearchSkillGroupsRequest.struct_class = Types::SearchSkillGroupsRequest

    SearchSkillGroupsResponse.add_member(:skill_groups, Shapes::ShapeRef.new(shape: SkillGroupDataList, location_name: "SkillGroups"))
    SearchSkillGroupsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    SearchSkillGroupsResponse.add_member(:total_count, Shapes::ShapeRef.new(shape: TotalCount, location_name: "TotalCount"))
    SearchSkillGroupsResponse.struct_class = Types::SearchSkillGroupsResponse

    SearchUsersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    SearchUsersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    SearchUsersRequest.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    SearchUsersRequest.add_member(:sort_criteria, Shapes::ShapeRef.new(shape: SortList, location_name: "SortCriteria"))
    SearchUsersRequest.struct_class = Types::SearchUsersRequest

    SearchUsersResponse.add_member(:users, Shapes::ShapeRef.new(shape: UserDataList, location_name: "Users"))
    SearchUsersResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    SearchUsersResponse.add_member(:total_count, Shapes::ShapeRef.new(shape: TotalCount, location_name: "TotalCount"))
    SearchUsersResponse.struct_class = Types::SearchUsersResponse

    SendAnnouncementRequest.add_member(:room_filters, Shapes::ShapeRef.new(shape: FilterList, required: true, location_name: "RoomFilters"))
    SendAnnouncementRequest.add_member(:content, Shapes::ShapeRef.new(shape: Content, required: true, location_name: "Content"))
    SendAnnouncementRequest.add_member(:time_to_live_in_seconds, Shapes::ShapeRef.new(shape: TimeToLiveInSeconds, location_name: "TimeToLiveInSeconds"))
    SendAnnouncementRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, required: true, location_name: "ClientRequestToken", metadata: {"idempotencyToken"=>true}))
    SendAnnouncementRequest.struct_class = Types::SendAnnouncementRequest

    SendAnnouncementResponse.add_member(:announcement_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "AnnouncementArn"))
    SendAnnouncementResponse.struct_class = Types::SendAnnouncementResponse

    SendInvitationRequest.add_member(:user_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "UserArn"))
    SendInvitationRequest.struct_class = Types::SendInvitationRequest

    SendInvitationResponse.struct_class = Types::SendInvitationResponse

    ShortSkillIdList.member = Shapes::ShapeRef.new(shape: SkillId)

    SipAddress.add_member(:uri, Shapes::ShapeRef.new(shape: SipUri, required: true, location_name: "Uri"))
    SipAddress.add_member(:type, Shapes::ShapeRef.new(shape: SipType, required: true, location_name: "Type"))
    SipAddress.struct_class = Types::SipAddress

    SipAddressList.member = Shapes::ShapeRef.new(shape: SipAddress)

    SkillDetails.add_member(:product_description, Shapes::ShapeRef.new(shape: ProductDescription, location_name: "ProductDescription"))
    SkillDetails.add_member(:invocation_phrase, Shapes::ShapeRef.new(shape: InvocationPhrase, location_name: "InvocationPhrase"))
    SkillDetails.add_member(:release_date, Shapes::ShapeRef.new(shape: ReleaseDate, location_name: "ReleaseDate"))
    SkillDetails.add_member(:end_user_license_agreement, Shapes::ShapeRef.new(shape: EndUserLicenseAgreement, location_name: "EndUserLicenseAgreement"))
    SkillDetails.add_member(:generic_keywords, Shapes::ShapeRef.new(shape: GenericKeywords, location_name: "GenericKeywords"))
    SkillDetails.add_member(:bullet_points, Shapes::ShapeRef.new(shape: BulletPoints, location_name: "BulletPoints"))
    SkillDetails.add_member(:new_in_this_version_bullet_points, Shapes::ShapeRef.new(shape: NewInThisVersionBulletPoints, location_name: "NewInThisVersionBulletPoints"))
    SkillDetails.add_member(:skill_types, Shapes::ShapeRef.new(shape: SkillTypes, location_name: "SkillTypes"))
    SkillDetails.add_member(:reviews, Shapes::ShapeRef.new(shape: Reviews, location_name: "Reviews"))
    SkillDetails.add_member(:developer_info, Shapes::ShapeRef.new(shape: DeveloperInfo, location_name: "DeveloperInfo"))
    SkillDetails.struct_class = Types::SkillDetails

    SkillGroup.add_member(:skill_group_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "SkillGroupArn"))
    SkillGroup.add_member(:skill_group_name, Shapes::ShapeRef.new(shape: SkillGroupName, location_name: "SkillGroupName"))
    SkillGroup.add_member(:description, Shapes::ShapeRef.new(shape: SkillGroupDescription, location_name: "Description"))
    SkillGroup.struct_class = Types::SkillGroup

    SkillGroupData.add_member(:skill_group_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "SkillGroupArn"))
    SkillGroupData.add_member(:skill_group_name, Shapes::ShapeRef.new(shape: SkillGroupName, location_name: "SkillGroupName"))
    SkillGroupData.add_member(:description, Shapes::ShapeRef.new(shape: SkillGroupDescription, location_name: "Description"))
    SkillGroupData.struct_class = Types::SkillGroupData

    SkillGroupDataList.member = Shapes::ShapeRef.new(shape: SkillGroupData)

    SkillNotLinkedException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    SkillNotLinkedException.struct_class = Types::SkillNotLinkedException

    SkillSummary.add_member(:skill_id, Shapes::ShapeRef.new(shape: SkillId, location_name: "SkillId"))
    SkillSummary.add_member(:skill_name, Shapes::ShapeRef.new(shape: SkillName, location_name: "SkillName"))
    SkillSummary.add_member(:supports_linking, Shapes::ShapeRef.new(shape: boolean, location_name: "SupportsLinking"))
    SkillSummary.add_member(:enablement_type, Shapes::ShapeRef.new(shape: EnablementType, location_name: "EnablementType"))
    SkillSummary.add_member(:skill_type, Shapes::ShapeRef.new(shape: SkillType, location_name: "SkillType"))
    SkillSummary.struct_class = Types::SkillSummary

    SkillSummaryList.member = Shapes::ShapeRef.new(shape: SkillSummary)

    SkillTypes.member = Shapes::ShapeRef.new(shape: SkillStoreType)

    SkillsStoreSkill.add_member(:skill_id, Shapes::ShapeRef.new(shape: SkillId, location_name: "SkillId"))
    SkillsStoreSkill.add_member(:skill_name, Shapes::ShapeRef.new(shape: SkillName, location_name: "SkillName"))
    SkillsStoreSkill.add_member(:short_description, Shapes::ShapeRef.new(shape: ShortDescription, location_name: "ShortDescription"))
    SkillsStoreSkill.add_member(:icon_url, Shapes::ShapeRef.new(shape: IconUrl, location_name: "IconUrl"))
    SkillsStoreSkill.add_member(:sample_utterances, Shapes::ShapeRef.new(shape: SampleUtterances, location_name: "SampleUtterances"))
    SkillsStoreSkill.add_member(:skill_details, Shapes::ShapeRef.new(shape: SkillDetails, location_name: "SkillDetails"))
    SkillsStoreSkill.add_member(:supports_linking, Shapes::ShapeRef.new(shape: boolean, location_name: "SupportsLinking"))
    SkillsStoreSkill.struct_class = Types::SkillsStoreSkill

    SkillsStoreSkillList.member = Shapes::ShapeRef.new(shape: SkillsStoreSkill)

    SmartHomeAppliance.add_member(:friendly_name, Shapes::ShapeRef.new(shape: ApplianceFriendlyName, location_name: "FriendlyName"))
    SmartHomeAppliance.add_member(:description, Shapes::ShapeRef.new(shape: ApplianceDescription, location_name: "Description"))
    SmartHomeAppliance.add_member(:manufacturer_name, Shapes::ShapeRef.new(shape: ApplianceManufacturerName, location_name: "ManufacturerName"))
    SmartHomeAppliance.struct_class = Types::SmartHomeAppliance

    SmartHomeApplianceList.member = Shapes::ShapeRef.new(shape: SmartHomeAppliance)

    Sort.add_member(:key, Shapes::ShapeRef.new(shape: SortKey, required: true, location_name: "Key"))
    Sort.add_member(:value, Shapes::ShapeRef.new(shape: SortValue, required: true, location_name: "Value"))
    Sort.struct_class = Types::Sort

    SortList.member = Shapes::ShapeRef.new(shape: Sort)

    Ssml.add_member(:locale, Shapes::ShapeRef.new(shape: Locale, required: true, location_name: "Locale"))
    Ssml.add_member(:value, Shapes::ShapeRef.new(shape: SsmlValue, required: true, location_name: "Value"))
    Ssml.struct_class = Types::Ssml

    SsmlList.member = Shapes::ShapeRef.new(shape: Ssml)

    StartDeviceSyncRequest.add_member(:room_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "RoomArn"))
    StartDeviceSyncRequest.add_member(:device_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "DeviceArn"))
    StartDeviceSyncRequest.add_member(:features, Shapes::ShapeRef.new(shape: Features, required: true, location_name: "Features"))
    StartDeviceSyncRequest.struct_class = Types::StartDeviceSyncRequest

    StartDeviceSyncResponse.struct_class = Types::StartDeviceSyncResponse

    StartSmartHomeApplianceDiscoveryRequest.add_member(:room_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "RoomArn"))
    StartSmartHomeApplianceDiscoveryRequest.struct_class = Types::StartSmartHomeApplianceDiscoveryRequest

    StartSmartHomeApplianceDiscoveryResponse.struct_class = Types::StartSmartHomeApplianceDiscoveryResponse

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, required: true, location_name: "Key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: TagValue, required: true, location_name: "Value"))
    Tag.struct_class = Types::Tag

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagList.member = Shapes::ShapeRef.new(shape: Tag)

    TagResourceRequest.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "Arn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, required: true, location_name: "Tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    Text.add_member(:locale, Shapes::ShapeRef.new(shape: Locale, required: true, location_name: "Locale"))
    Text.add_member(:value, Shapes::ShapeRef.new(shape: TextValue, required: true, location_name: "Value"))
    Text.struct_class = Types::Text

    TextList.member = Shapes::ShapeRef.new(shape: Text)

    TrustAnchorList.member = Shapes::ShapeRef.new(shape: TrustAnchor)

    UnauthorizedException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    UnauthorizedException.struct_class = Types::UnauthorizedException

    UntagResourceRequest.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "Arn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location_name: "TagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateAddressBookRequest.add_member(:address_book_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "AddressBookArn"))
    UpdateAddressBookRequest.add_member(:name, Shapes::ShapeRef.new(shape: AddressBookName, location_name: "Name"))
    UpdateAddressBookRequest.add_member(:description, Shapes::ShapeRef.new(shape: AddressBookDescription, location_name: "Description"))
    UpdateAddressBookRequest.struct_class = Types::UpdateAddressBookRequest

    UpdateAddressBookResponse.struct_class = Types::UpdateAddressBookResponse

    UpdateBusinessReportScheduleRequest.add_member(:schedule_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "ScheduleArn"))
    UpdateBusinessReportScheduleRequest.add_member(:s3_bucket_name, Shapes::ShapeRef.new(shape: CustomerS3BucketName, location_name: "S3BucketName"))
    UpdateBusinessReportScheduleRequest.add_member(:s3_key_prefix, Shapes::ShapeRef.new(shape: S3KeyPrefix, location_name: "S3KeyPrefix"))
    UpdateBusinessReportScheduleRequest.add_member(:format, Shapes::ShapeRef.new(shape: BusinessReportFormat, location_name: "Format"))
    UpdateBusinessReportScheduleRequest.add_member(:schedule_name, Shapes::ShapeRef.new(shape: BusinessReportScheduleName, location_name: "ScheduleName"))
    UpdateBusinessReportScheduleRequest.add_member(:recurrence, Shapes::ShapeRef.new(shape: BusinessReportRecurrence, location_name: "Recurrence"))
    UpdateBusinessReportScheduleRequest.struct_class = Types::UpdateBusinessReportScheduleRequest

    UpdateBusinessReportScheduleResponse.struct_class = Types::UpdateBusinessReportScheduleResponse

    UpdateConferenceProviderRequest.add_member(:conference_provider_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "ConferenceProviderArn"))
    UpdateConferenceProviderRequest.add_member(:conference_provider_type, Shapes::ShapeRef.new(shape: ConferenceProviderType, required: true, location_name: "ConferenceProviderType"))
    UpdateConferenceProviderRequest.add_member(:ip_dial_in, Shapes::ShapeRef.new(shape: IPDialIn, location_name: "IPDialIn"))
    UpdateConferenceProviderRequest.add_member(:pstn_dial_in, Shapes::ShapeRef.new(shape: PSTNDialIn, location_name: "PSTNDialIn"))
    UpdateConferenceProviderRequest.add_member(:meeting_setting, Shapes::ShapeRef.new(shape: MeetingSetting, required: true, location_name: "MeetingSetting"))
    UpdateConferenceProviderRequest.struct_class = Types::UpdateConferenceProviderRequest

    UpdateConferenceProviderResponse.struct_class = Types::UpdateConferenceProviderResponse

    UpdateContactRequest.add_member(:contact_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "ContactArn"))
    UpdateContactRequest.add_member(:display_name, Shapes::ShapeRef.new(shape: ContactName, location_name: "DisplayName"))
    UpdateContactRequest.add_member(:first_name, Shapes::ShapeRef.new(shape: ContactName, location_name: "FirstName"))
    UpdateContactRequest.add_member(:last_name, Shapes::ShapeRef.new(shape: ContactName, location_name: "LastName"))
    UpdateContactRequest.add_member(:phone_number, Shapes::ShapeRef.new(shape: RawPhoneNumber, location_name: "PhoneNumber"))
    UpdateContactRequest.add_member(:phone_numbers, Shapes::ShapeRef.new(shape: PhoneNumberList, location_name: "PhoneNumbers"))
    UpdateContactRequest.add_member(:sip_addresses, Shapes::ShapeRef.new(shape: SipAddressList, location_name: "SipAddresses"))
    UpdateContactRequest.struct_class = Types::UpdateContactRequest

    UpdateContactResponse.struct_class = Types::UpdateContactResponse

    UpdateDeviceRequest.add_member(:device_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "DeviceArn"))
    UpdateDeviceRequest.add_member(:device_name, Shapes::ShapeRef.new(shape: DeviceName, location_name: "DeviceName"))
    UpdateDeviceRequest.struct_class = Types::UpdateDeviceRequest

    UpdateDeviceResponse.struct_class = Types::UpdateDeviceResponse

    UpdateEndOfMeetingReminder.add_member(:reminder_at_minutes, Shapes::ShapeRef.new(shape: EndOfMeetingReminderMinutesList, location_name: "ReminderAtMinutes"))
    UpdateEndOfMeetingReminder.add_member(:reminder_type, Shapes::ShapeRef.new(shape: EndOfMeetingReminderType, location_name: "ReminderType"))
    UpdateEndOfMeetingReminder.add_member(:enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "Enabled"))
    UpdateEndOfMeetingReminder.struct_class = Types::UpdateEndOfMeetingReminder

    UpdateGatewayGroupRequest.add_member(:gateway_group_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "GatewayGroupArn"))
    UpdateGatewayGroupRequest.add_member(:name, Shapes::ShapeRef.new(shape: GatewayGroupName, location_name: "Name"))
    UpdateGatewayGroupRequest.add_member(:description, Shapes::ShapeRef.new(shape: GatewayGroupDescription, location_name: "Description"))
    UpdateGatewayGroupRequest.struct_class = Types::UpdateGatewayGroupRequest

    UpdateGatewayGroupResponse.struct_class = Types::UpdateGatewayGroupResponse

    UpdateGatewayRequest.add_member(:gateway_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "GatewayArn"))
    UpdateGatewayRequest.add_member(:name, Shapes::ShapeRef.new(shape: GatewayName, location_name: "Name"))
    UpdateGatewayRequest.add_member(:description, Shapes::ShapeRef.new(shape: GatewayDescription, location_name: "Description"))
    UpdateGatewayRequest.add_member(:software_version, Shapes::ShapeRef.new(shape: GatewayVersion, location_name: "SoftwareVersion"))
    UpdateGatewayRequest.struct_class = Types::UpdateGatewayRequest

    UpdateGatewayResponse.struct_class = Types::UpdateGatewayResponse

    UpdateInstantBooking.add_member(:duration_in_minutes, Shapes::ShapeRef.new(shape: Minutes, location_name: "DurationInMinutes"))
    UpdateInstantBooking.add_member(:enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "Enabled"))
    UpdateInstantBooking.struct_class = Types::UpdateInstantBooking

    UpdateMeetingRoomConfiguration.add_member(:room_utilization_metrics_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "RoomUtilizationMetricsEnabled"))
    UpdateMeetingRoomConfiguration.add_member(:end_of_meeting_reminder, Shapes::ShapeRef.new(shape: UpdateEndOfMeetingReminder, location_name: "EndOfMeetingReminder"))
    UpdateMeetingRoomConfiguration.add_member(:instant_booking, Shapes::ShapeRef.new(shape: UpdateInstantBooking, location_name: "InstantBooking"))
    UpdateMeetingRoomConfiguration.add_member(:require_check_in, Shapes::ShapeRef.new(shape: UpdateRequireCheckIn, location_name: "RequireCheckIn"))
    UpdateMeetingRoomConfiguration.struct_class = Types::UpdateMeetingRoomConfiguration

    UpdateNetworkProfileRequest.add_member(:network_profile_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "NetworkProfileArn"))
    UpdateNetworkProfileRequest.add_member(:network_profile_name, Shapes::ShapeRef.new(shape: NetworkProfileName, location_name: "NetworkProfileName"))
    UpdateNetworkProfileRequest.add_member(:description, Shapes::ShapeRef.new(shape: NetworkProfileDescription, location_name: "Description"))
    UpdateNetworkProfileRequest.add_member(:current_password, Shapes::ShapeRef.new(shape: CurrentWiFiPassword, location_name: "CurrentPassword"))
    UpdateNetworkProfileRequest.add_member(:next_password, Shapes::ShapeRef.new(shape: NextWiFiPassword, location_name: "NextPassword"))
    UpdateNetworkProfileRequest.add_member(:certificate_authority_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "CertificateAuthorityArn"))
    UpdateNetworkProfileRequest.add_member(:trust_anchors, Shapes::ShapeRef.new(shape: TrustAnchorList, location_name: "TrustAnchors"))
    UpdateNetworkProfileRequest.struct_class = Types::UpdateNetworkProfileRequest

    UpdateNetworkProfileResponse.struct_class = Types::UpdateNetworkProfileResponse

    UpdateProfileRequest.add_member(:profile_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "ProfileArn"))
    UpdateProfileRequest.add_member(:profile_name, Shapes::ShapeRef.new(shape: ProfileName, location_name: "ProfileName"))
    UpdateProfileRequest.add_member(:is_default, Shapes::ShapeRef.new(shape: Boolean, location_name: "IsDefault"))
    UpdateProfileRequest.add_member(:timezone, Shapes::ShapeRef.new(shape: Timezone, location_name: "Timezone"))
    UpdateProfileRequest.add_member(:address, Shapes::ShapeRef.new(shape: Address, location_name: "Address"))
    UpdateProfileRequest.add_member(:distance_unit, Shapes::ShapeRef.new(shape: DistanceUnit, location_name: "DistanceUnit"))
    UpdateProfileRequest.add_member(:temperature_unit, Shapes::ShapeRef.new(shape: TemperatureUnit, location_name: "TemperatureUnit"))
    UpdateProfileRequest.add_member(:wake_word, Shapes::ShapeRef.new(shape: WakeWord, location_name: "WakeWord"))
    UpdateProfileRequest.add_member(:locale, Shapes::ShapeRef.new(shape: DeviceLocale, location_name: "Locale"))
    UpdateProfileRequest.add_member(:setup_mode_disabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "SetupModeDisabled"))
    UpdateProfileRequest.add_member(:max_volume_limit, Shapes::ShapeRef.new(shape: MaxVolumeLimit, location_name: "MaxVolumeLimit"))
    UpdateProfileRequest.add_member(:pstn_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "PSTNEnabled"))
    UpdateProfileRequest.add_member(:meeting_room_configuration, Shapes::ShapeRef.new(shape: UpdateMeetingRoomConfiguration, location_name: "MeetingRoomConfiguration"))
    UpdateProfileRequest.struct_class = Types::UpdateProfileRequest

    UpdateProfileResponse.struct_class = Types::UpdateProfileResponse

    UpdateRequireCheckIn.add_member(:release_after_minutes, Shapes::ShapeRef.new(shape: Minutes, location_name: "ReleaseAfterMinutes"))
    UpdateRequireCheckIn.add_member(:enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "Enabled"))
    UpdateRequireCheckIn.struct_class = Types::UpdateRequireCheckIn

    UpdateRoomRequest.add_member(:room_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "RoomArn"))
    UpdateRoomRequest.add_member(:room_name, Shapes::ShapeRef.new(shape: RoomName, location_name: "RoomName"))
    UpdateRoomRequest.add_member(:description, Shapes::ShapeRef.new(shape: RoomDescription, location_name: "Description"))
    UpdateRoomRequest.add_member(:provider_calendar_id, Shapes::ShapeRef.new(shape: ProviderCalendarId, location_name: "ProviderCalendarId"))
    UpdateRoomRequest.add_member(:profile_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "ProfileArn"))
    UpdateRoomRequest.struct_class = Types::UpdateRoomRequest

    UpdateRoomResponse.struct_class = Types::UpdateRoomResponse

    UpdateSkillGroupRequest.add_member(:skill_group_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "SkillGroupArn"))
    UpdateSkillGroupRequest.add_member(:skill_group_name, Shapes::ShapeRef.new(shape: SkillGroupName, location_name: "SkillGroupName"))
    UpdateSkillGroupRequest.add_member(:description, Shapes::ShapeRef.new(shape: SkillGroupDescription, location_name: "Description"))
    UpdateSkillGroupRequest.struct_class = Types::UpdateSkillGroupRequest

    UpdateSkillGroupResponse.struct_class = Types::UpdateSkillGroupResponse

    UserData.add_member(:user_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "UserArn"))
    UserData.add_member(:first_name, Shapes::ShapeRef.new(shape: user_FirstName, location_name: "FirstName"))
    UserData.add_member(:last_name, Shapes::ShapeRef.new(shape: user_LastName, location_name: "LastName"))
    UserData.add_member(:email, Shapes::ShapeRef.new(shape: Email, location_name: "Email"))
    UserData.add_member(:enrollment_status, Shapes::ShapeRef.new(shape: EnrollmentStatus, location_name: "EnrollmentStatus"))
    UserData.add_member(:enrollment_id, Shapes::ShapeRef.new(shape: EnrollmentId, location_name: "EnrollmentId"))
    UserData.struct_class = Types::UserData

    UserDataList.member = Shapes::ShapeRef.new(shape: UserData)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2017-11-09"

      api.metadata = {
        "apiVersion" => "2017-11-09",
        "endpointPrefix" => "a4b",
        "jsonVersion" => "1.1",
        "protocol" => "json",
        "serviceFullName" => "Alexa For Business",
        "serviceId" => "Alexa For Business",
        "signatureVersion" => "v4",
        "targetPrefix" => "AlexaForBusiness",
        "uid" => "alexaforbusiness-2017-11-09",
      }

      api.add_operation(:approve_skill, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ApproveSkill"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ApproveSkillRequest)
        o.output = Shapes::ShapeRef.new(shape: ApproveSkillResponse)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
      end)

      api.add_operation(:associate_contact_with_address_book, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateContactWithAddressBook"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AssociateContactWithAddressBookRequest)
        o.output = Shapes::ShapeRef.new(shape: AssociateContactWithAddressBookResponse)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:associate_device_with_network_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateDeviceWithNetworkProfile"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AssociateDeviceWithNetworkProfileRequest)
        o.output = Shapes::ShapeRef.new(shape: AssociateDeviceWithNetworkProfileResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: DeviceNotRegisteredException)
      end)

      api.add_operation(:associate_device_with_room, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateDeviceWithRoom"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AssociateDeviceWithRoomRequest)
        o.output = Shapes::ShapeRef.new(shape: AssociateDeviceWithRoomResponse)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: DeviceNotRegisteredException)
      end)

      api.add_operation(:associate_skill_group_with_room, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateSkillGroupWithRoom"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AssociateSkillGroupWithRoomRequest)
        o.output = Shapes::ShapeRef.new(shape: AssociateSkillGroupWithRoomResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
      end)

      api.add_operation(:associate_skill_with_skill_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateSkillWithSkillGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AssociateSkillWithSkillGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: AssociateSkillWithSkillGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: SkillNotLinkedException)
      end)

      api.add_operation(:associate_skill_with_users, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateSkillWithUsers"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AssociateSkillWithUsersRequest)
        o.output = Shapes::ShapeRef.new(shape: AssociateSkillWithUsersResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
      end)

      api.add_operation(:create_address_book, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateAddressBook"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateAddressBookRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateAddressBookResponse)
        o.errors << Shapes::ShapeRef.new(shape: AlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:create_business_report_schedule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateBusinessReportSchedule"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateBusinessReportScheduleRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateBusinessReportScheduleResponse)
        o.errors << Shapes::ShapeRef.new(shape: AlreadyExistsException)
      end)

      api.add_operation(:create_conference_provider, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateConferenceProvider"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateConferenceProviderRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateConferenceProviderResponse)
        o.errors << Shapes::ShapeRef.new(shape: AlreadyExistsException)
      end)

      api.add_operation(:create_contact, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateContact"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateContactRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateContactResponse)
        o.errors << Shapes::ShapeRef.new(shape: AlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:create_gateway_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateGatewayGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateGatewayGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateGatewayGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: AlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:create_network_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateNetworkProfile"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateNetworkProfileRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateNetworkProfileResponse)
        o.errors << Shapes::ShapeRef.new(shape: AlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidCertificateAuthorityException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidServiceLinkedRoleStateException)
      end)

      api.add_operation(:create_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateProfile"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateProfileRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateProfileResponse)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
      end)

      api.add_operation(:create_room, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateRoom"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateRoomRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateRoomResponse)
        o.errors << Shapes::ShapeRef.new(shape: AlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:create_skill_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateSkillGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateSkillGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateSkillGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: AlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
      end)

      api.add_operation(:create_user, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateUser"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateUserRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateUserResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
      end)

      api.add_operation(:delete_address_book, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteAddressBook"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteAddressBookRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteAddressBookResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
      end)

      api.add_operation(:delete_business_report_schedule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteBusinessReportSchedule"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteBusinessReportScheduleRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteBusinessReportScheduleResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
      end)

      api.add_operation(:delete_conference_provider, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteConferenceProvider"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteConferenceProviderRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteConferenceProviderResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
      end)

      api.add_operation(:delete_contact, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteContact"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteContactRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteContactResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
      end)

      api.add_operation(:delete_device, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteDevice"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteDeviceRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteDeviceResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidCertificateAuthorityException)
      end)

      api.add_operation(:delete_device_usage_data, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteDeviceUsageData"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteDeviceUsageDataRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteDeviceUsageDataResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: DeviceNotRegisteredException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:delete_gateway_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteGatewayGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteGatewayGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteGatewayGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAssociatedException)
      end)

      api.add_operation(:delete_network_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteNetworkProfile"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteNetworkProfileRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteNetworkProfileResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
      end)

      api.add_operation(:delete_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteProfile"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteProfileRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteProfileResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
      end)

      api.add_operation(:delete_room, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteRoom"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteRoomRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteRoomResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
      end)

      api.add_operation(:delete_room_skill_parameter, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteRoomSkillParameter"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteRoomSkillParameterRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteRoomSkillParameterResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
      end)

      api.add_operation(:delete_skill_authorization, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteSkillAuthorization"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteSkillAuthorizationRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteSkillAuthorizationResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
      end)

      api.add_operation(:delete_skill_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteSkillGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteSkillGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteSkillGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
      end)

      api.add_operation(:delete_user, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteUser"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteUserRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteUserResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
      end)

      api.add_operation(:disassociate_contact_from_address_book, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateContactFromAddressBook"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DisassociateContactFromAddressBookRequest)
        o.output = Shapes::ShapeRef.new(shape: DisassociateContactFromAddressBookResponse)
      end)

      api.add_operation(:disassociate_device_from_room, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateDeviceFromRoom"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DisassociateDeviceFromRoomRequest)
        o.output = Shapes::ShapeRef.new(shape: DisassociateDeviceFromRoomResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: DeviceNotRegisteredException)
      end)

      api.add_operation(:disassociate_skill_from_skill_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateSkillFromSkillGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DisassociateSkillFromSkillGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: DisassociateSkillFromSkillGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
      end)

      api.add_operation(:disassociate_skill_from_users, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateSkillFromUsers"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DisassociateSkillFromUsersRequest)
        o.output = Shapes::ShapeRef.new(shape: DisassociateSkillFromUsersResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
      end)

      api.add_operation(:disassociate_skill_group_from_room, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateSkillGroupFromRoom"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DisassociateSkillGroupFromRoomRequest)
        o.output = Shapes::ShapeRef.new(shape: DisassociateSkillGroupFromRoomResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
      end)

      api.add_operation(:forget_smart_home_appliances, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ForgetSmartHomeAppliances"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ForgetSmartHomeAppliancesRequest)
        o.output = Shapes::ShapeRef.new(shape: ForgetSmartHomeAppliancesResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
      end)

      api.add_operation(:get_address_book, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAddressBook"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetAddressBookRequest)
        o.output = Shapes::ShapeRef.new(shape: GetAddressBookResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
      end)

      api.add_operation(:get_conference_preference, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetConferencePreference"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetConferencePreferenceRequest)
        o.output = Shapes::ShapeRef.new(shape: GetConferencePreferenceResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
      end)

      api.add_operation(:get_conference_provider, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetConferenceProvider"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetConferenceProviderRequest)
        o.output = Shapes::ShapeRef.new(shape: GetConferenceProviderResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
      end)

      api.add_operation(:get_contact, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetContact"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetContactRequest)
        o.output = Shapes::ShapeRef.new(shape: GetContactResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
      end)

      api.add_operation(:get_device, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDevice"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetDeviceRequest)
        o.output = Shapes::ShapeRef.new(shape: GetDeviceResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
      end)

      api.add_operation(:get_gateway, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetGateway"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetGatewayRequest)
        o.output = Shapes::ShapeRef.new(shape: GetGatewayResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
      end)

      api.add_operation(:get_gateway_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetGatewayGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetGatewayGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: GetGatewayGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
      end)

      api.add_operation(:get_invitation_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetInvitationConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetInvitationConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetInvitationConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
      end)

      api.add_operation(:get_network_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetNetworkProfile"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetNetworkProfileRequest)
        o.output = Shapes::ShapeRef.new(shape: GetNetworkProfileResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidSecretsManagerResourceException)
      end)

      api.add_operation(:get_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetProfile"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetProfileRequest)
        o.output = Shapes::ShapeRef.new(shape: GetProfileResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
      end)

      api.add_operation(:get_room, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetRoom"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetRoomRequest)
        o.output = Shapes::ShapeRef.new(shape: GetRoomResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
      end)

      api.add_operation(:get_room_skill_parameter, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetRoomSkillParameter"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetRoomSkillParameterRequest)
        o.output = Shapes::ShapeRef.new(shape: GetRoomSkillParameterResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
      end)

      api.add_operation(:get_skill_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetSkillGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetSkillGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: GetSkillGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
      end)

      api.add_operation(:list_business_report_schedules, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListBusinessReportSchedules"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListBusinessReportSchedulesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListBusinessReportSchedulesResponse)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_conference_providers, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListConferenceProviders"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListConferenceProvidersRequest)
        o.output = Shapes::ShapeRef.new(shape: ListConferenceProvidersResponse)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_device_events, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDeviceEvents"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListDeviceEventsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListDeviceEventsResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_gateway_groups, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListGatewayGroups"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListGatewayGroupsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListGatewayGroupsResponse)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_gateways, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListGateways"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListGatewaysRequest)
        o.output = Shapes::ShapeRef.new(shape: ListGatewaysResponse)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_skills, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListSkills"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListSkillsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListSkillsResponse)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_skills_store_categories, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListSkillsStoreCategories"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListSkillsStoreCategoriesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListSkillsStoreCategoriesResponse)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_skills_store_skills_by_category, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListSkillsStoreSkillsByCategory"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListSkillsStoreSkillsByCategoryRequest)
        o.output = Shapes::ShapeRef.new(shape: ListSkillsStoreSkillsByCategoryResponse)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_smart_home_appliances, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListSmartHomeAppliances"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListSmartHomeAppliancesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListSmartHomeAppliancesResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_tags, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTags"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListTagsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:put_conference_preference, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutConferencePreference"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutConferencePreferenceRequest)
        o.output = Shapes::ShapeRef.new(shape: PutConferencePreferenceResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
      end)

      api.add_operation(:put_invitation_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutInvitationConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutInvitationConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: PutInvitationConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
      end)

      api.add_operation(:put_room_skill_parameter, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutRoomSkillParameter"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutRoomSkillParameterRequest)
        o.output = Shapes::ShapeRef.new(shape: PutRoomSkillParameterResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
      end)

      api.add_operation(:put_skill_authorization, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutSkillAuthorization"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutSkillAuthorizationRequest)
        o.output = Shapes::ShapeRef.new(shape: PutSkillAuthorizationResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
      end)

      api.add_operation(:register_avs_device, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RegisterAVSDevice"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RegisterAVSDeviceRequest)
        o.output = Shapes::ShapeRef.new(shape: RegisterAVSDeviceResponse)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDeviceException)
      end)

      api.add_operation(:reject_skill, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RejectSkill"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RejectSkillRequest)
        o.output = Shapes::ShapeRef.new(shape: RejectSkillResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
      end)

      api.add_operation(:resolve_room, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ResolveRoom"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ResolveRoomRequest)
        o.output = Shapes::ShapeRef.new(shape: ResolveRoomResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
      end)

      api.add_operation(:revoke_invitation, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RevokeInvitation"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RevokeInvitationRequest)
        o.output = Shapes::ShapeRef.new(shape: RevokeInvitationResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
      end)

      api.add_operation(:search_address_books, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SearchAddressBooks"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: SearchAddressBooksRequest)
        o.output = Shapes::ShapeRef.new(shape: SearchAddressBooksResponse)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:search_contacts, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SearchContacts"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: SearchContactsRequest)
        o.output = Shapes::ShapeRef.new(shape: SearchContactsResponse)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:search_devices, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SearchDevices"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: SearchDevicesRequest)
        o.output = Shapes::ShapeRef.new(shape: SearchDevicesResponse)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:search_network_profiles, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SearchNetworkProfiles"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: SearchNetworkProfilesRequest)
        o.output = Shapes::ShapeRef.new(shape: SearchNetworkProfilesResponse)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:search_profiles, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SearchProfiles"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: SearchProfilesRequest)
        o.output = Shapes::ShapeRef.new(shape: SearchProfilesResponse)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:search_rooms, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SearchRooms"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: SearchRoomsRequest)
        o.output = Shapes::ShapeRef.new(shape: SearchRoomsResponse)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:search_skill_groups, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SearchSkillGroups"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: SearchSkillGroupsRequest)
        o.output = Shapes::ShapeRef.new(shape: SearchSkillGroupsResponse)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:search_users, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SearchUsers"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: SearchUsersRequest)
        o.output = Shapes::ShapeRef.new(shape: SearchUsersResponse)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:send_announcement, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SendAnnouncement"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: SendAnnouncementRequest)
        o.output = Shapes::ShapeRef.new(shape: SendAnnouncementResponse)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AlreadyExistsException)
      end)

      api.add_operation(:send_invitation, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SendInvitation"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: SendInvitationRequest)
        o.output = Shapes::ShapeRef.new(shape: SendInvitationResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidUserStatusException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
      end)

      api.add_operation(:start_device_sync, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartDeviceSync"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartDeviceSyncRequest)
        o.output = Shapes::ShapeRef.new(shape: StartDeviceSyncResponse)
        o.errors << Shapes::ShapeRef.new(shape: DeviceNotRegisteredException)
      end)

      api.add_operation(:start_smart_home_appliance_discovery, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartSmartHomeApplianceDiscovery"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartSmartHomeApplianceDiscoveryRequest)
        o.output = Shapes::ShapeRef.new(shape: StartSmartHomeApplianceDiscoveryResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
      end)

      api.add_operation(:update_address_book, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateAddressBook"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateAddressBookRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateAddressBookResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: NameInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
      end)

      api.add_operation(:update_business_report_schedule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateBusinessReportSchedule"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateBusinessReportScheduleRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateBusinessReportScheduleResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
      end)

      api.add_operation(:update_conference_provider, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateConferenceProvider"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateConferenceProviderRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateConferenceProviderResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
      end)

      api.add_operation(:update_contact, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateContact"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateContactRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateContactResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
      end)

      api.add_operation(:update_device, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateDevice"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateDeviceRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateDeviceResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: DeviceNotRegisteredException)
      end)

      api.add_operation(:update_gateway, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateGateway"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateGatewayRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateGatewayResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: NameInUseException)
      end)

      api.add_operation(:update_gateway_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateGatewayGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateGatewayGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateGatewayGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: NameInUseException)
      end)

      api.add_operation(:update_network_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateNetworkProfile"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateNetworkProfileRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateNetworkProfileResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: NameInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidCertificateAuthorityException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidSecretsManagerResourceException)
      end)

      api.add_operation(:update_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateProfile"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateProfileRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateProfileResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: NameInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
      end)

      api.add_operation(:update_room, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateRoom"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateRoomRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateRoomResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: NameInUseException)
      end)

      api.add_operation(:update_skill_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateSkillGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateSkillGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateSkillGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: NameInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
      end)
    end

  end
end
