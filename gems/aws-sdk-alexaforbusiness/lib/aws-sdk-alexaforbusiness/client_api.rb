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
    Arn = Shapes::StringShape.new(name: 'Arn')
    AssociateContactWithAddressBookRequest = Shapes::StructureShape.new(name: 'AssociateContactWithAddressBookRequest')
    AssociateContactWithAddressBookResponse = Shapes::StructureShape.new(name: 'AssociateContactWithAddressBookResponse')
    AssociateDeviceWithRoomRequest = Shapes::StructureShape.new(name: 'AssociateDeviceWithRoomRequest')
    AssociateDeviceWithRoomResponse = Shapes::StructureShape.new(name: 'AssociateDeviceWithRoomResponse')
    AssociateSkillGroupWithRoomRequest = Shapes::StructureShape.new(name: 'AssociateSkillGroupWithRoomRequest')
    AssociateSkillGroupWithRoomResponse = Shapes::StructureShape.new(name: 'AssociateSkillGroupWithRoomResponse')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    ClientRequestToken = Shapes::StringShape.new(name: 'ClientRequestToken')
    ConnectionStatus = Shapes::StringShape.new(name: 'ConnectionStatus')
    Contact = Shapes::StructureShape.new(name: 'Contact')
    ContactData = Shapes::StructureShape.new(name: 'ContactData')
    ContactDataList = Shapes::ListShape.new(name: 'ContactDataList')
    ContactName = Shapes::StringShape.new(name: 'ContactName')
    CreateAddressBookRequest = Shapes::StructureShape.new(name: 'CreateAddressBookRequest')
    CreateAddressBookResponse = Shapes::StructureShape.new(name: 'CreateAddressBookResponse')
    CreateContactRequest = Shapes::StructureShape.new(name: 'CreateContactRequest')
    CreateContactResponse = Shapes::StructureShape.new(name: 'CreateContactResponse')
    CreateProfileRequest = Shapes::StructureShape.new(name: 'CreateProfileRequest')
    CreateProfileResponse = Shapes::StructureShape.new(name: 'CreateProfileResponse')
    CreateRoomRequest = Shapes::StructureShape.new(name: 'CreateRoomRequest')
    CreateRoomResponse = Shapes::StructureShape.new(name: 'CreateRoomResponse')
    CreateSkillGroupRequest = Shapes::StructureShape.new(name: 'CreateSkillGroupRequest')
    CreateSkillGroupResponse = Shapes::StructureShape.new(name: 'CreateSkillGroupResponse')
    CreateUserRequest = Shapes::StructureShape.new(name: 'CreateUserRequest')
    CreateUserResponse = Shapes::StructureShape.new(name: 'CreateUserResponse')
    DeleteAddressBookRequest = Shapes::StructureShape.new(name: 'DeleteAddressBookRequest')
    DeleteAddressBookResponse = Shapes::StructureShape.new(name: 'DeleteAddressBookResponse')
    DeleteContactRequest = Shapes::StructureShape.new(name: 'DeleteContactRequest')
    DeleteContactResponse = Shapes::StructureShape.new(name: 'DeleteContactResponse')
    DeleteProfileRequest = Shapes::StructureShape.new(name: 'DeleteProfileRequest')
    DeleteProfileResponse = Shapes::StructureShape.new(name: 'DeleteProfileResponse')
    DeleteRoomRequest = Shapes::StructureShape.new(name: 'DeleteRoomRequest')
    DeleteRoomResponse = Shapes::StructureShape.new(name: 'DeleteRoomResponse')
    DeleteRoomSkillParameterRequest = Shapes::StructureShape.new(name: 'DeleteRoomSkillParameterRequest')
    DeleteRoomSkillParameterResponse = Shapes::StructureShape.new(name: 'DeleteRoomSkillParameterResponse')
    DeleteSkillGroupRequest = Shapes::StructureShape.new(name: 'DeleteSkillGroupRequest')
    DeleteSkillGroupResponse = Shapes::StructureShape.new(name: 'DeleteSkillGroupResponse')
    DeleteUserRequest = Shapes::StructureShape.new(name: 'DeleteUserRequest')
    DeleteUserResponse = Shapes::StructureShape.new(name: 'DeleteUserResponse')
    Device = Shapes::StructureShape.new(name: 'Device')
    DeviceData = Shapes::StructureShape.new(name: 'DeviceData')
    DeviceDataList = Shapes::ListShape.new(name: 'DeviceDataList')
    DeviceEvent = Shapes::StructureShape.new(name: 'DeviceEvent')
    DeviceEventList = Shapes::ListShape.new(name: 'DeviceEventList')
    DeviceEventType = Shapes::StringShape.new(name: 'DeviceEventType')
    DeviceEventValue = Shapes::StringShape.new(name: 'DeviceEventValue')
    DeviceName = Shapes::StringShape.new(name: 'DeviceName')
    DeviceNotRegisteredException = Shapes::StructureShape.new(name: 'DeviceNotRegisteredException')
    DeviceSerialNumber = Shapes::StringShape.new(name: 'DeviceSerialNumber')
    DeviceStatus = Shapes::StringShape.new(name: 'DeviceStatus')
    DeviceStatusDetail = Shapes::StructureShape.new(name: 'DeviceStatusDetail')
    DeviceStatusDetailCode = Shapes::StringShape.new(name: 'DeviceStatusDetailCode')
    DeviceStatusDetails = Shapes::ListShape.new(name: 'DeviceStatusDetails')
    DeviceStatusInfo = Shapes::StructureShape.new(name: 'DeviceStatusInfo')
    DeviceType = Shapes::StringShape.new(name: 'DeviceType')
    DisassociateContactFromAddressBookRequest = Shapes::StructureShape.new(name: 'DisassociateContactFromAddressBookRequest')
    DisassociateContactFromAddressBookResponse = Shapes::StructureShape.new(name: 'DisassociateContactFromAddressBookResponse')
    DisassociateDeviceFromRoomRequest = Shapes::StructureShape.new(name: 'DisassociateDeviceFromRoomRequest')
    DisassociateDeviceFromRoomResponse = Shapes::StructureShape.new(name: 'DisassociateDeviceFromRoomResponse')
    DisassociateSkillGroupFromRoomRequest = Shapes::StructureShape.new(name: 'DisassociateSkillGroupFromRoomRequest')
    DisassociateSkillGroupFromRoomResponse = Shapes::StructureShape.new(name: 'DisassociateSkillGroupFromRoomResponse')
    DistanceUnit = Shapes::StringShape.new(name: 'DistanceUnit')
    E164PhoneNumber = Shapes::StringShape.new(name: 'E164PhoneNumber')
    Email = Shapes::StringShape.new(name: 'Email')
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
    GetAddressBookRequest = Shapes::StructureShape.new(name: 'GetAddressBookRequest')
    GetAddressBookResponse = Shapes::StructureShape.new(name: 'GetAddressBookResponse')
    GetContactRequest = Shapes::StructureShape.new(name: 'GetContactRequest')
    GetContactResponse = Shapes::StructureShape.new(name: 'GetContactResponse')
    GetDeviceRequest = Shapes::StructureShape.new(name: 'GetDeviceRequest')
    GetDeviceResponse = Shapes::StructureShape.new(name: 'GetDeviceResponse')
    GetProfileRequest = Shapes::StructureShape.new(name: 'GetProfileRequest')
    GetProfileResponse = Shapes::StructureShape.new(name: 'GetProfileResponse')
    GetRoomRequest = Shapes::StructureShape.new(name: 'GetRoomRequest')
    GetRoomResponse = Shapes::StructureShape.new(name: 'GetRoomResponse')
    GetRoomSkillParameterRequest = Shapes::StructureShape.new(name: 'GetRoomSkillParameterRequest')
    GetRoomSkillParameterResponse = Shapes::StructureShape.new(name: 'GetRoomSkillParameterResponse')
    GetSkillGroupRequest = Shapes::StructureShape.new(name: 'GetSkillGroupRequest')
    GetSkillGroupResponse = Shapes::StructureShape.new(name: 'GetSkillGroupResponse')
    InvalidUserStatusException = Shapes::StructureShape.new(name: 'InvalidUserStatusException')
    LimitExceededException = Shapes::StructureShape.new(name: 'LimitExceededException')
    ListDeviceEventsRequest = Shapes::StructureShape.new(name: 'ListDeviceEventsRequest')
    ListDeviceEventsResponse = Shapes::StructureShape.new(name: 'ListDeviceEventsResponse')
    ListSkillsRequest = Shapes::StructureShape.new(name: 'ListSkillsRequest')
    ListSkillsResponse = Shapes::StructureShape.new(name: 'ListSkillsResponse')
    ListTagsRequest = Shapes::StructureShape.new(name: 'ListTagsRequest')
    ListTagsResponse = Shapes::StructureShape.new(name: 'ListTagsResponse')
    MacAddress = Shapes::StringShape.new(name: 'MacAddress')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    MaxVolumeLimit = Shapes::IntegerShape.new(name: 'MaxVolumeLimit')
    NameInUseException = Shapes::StructureShape.new(name: 'NameInUseException')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    NotFoundException = Shapes::StructureShape.new(name: 'NotFoundException')
    Profile = Shapes::StructureShape.new(name: 'Profile')
    ProfileData = Shapes::StructureShape.new(name: 'ProfileData')
    ProfileDataList = Shapes::ListShape.new(name: 'ProfileDataList')
    ProfileName = Shapes::StringShape.new(name: 'ProfileName')
    ProviderCalendarId = Shapes::StringShape.new(name: 'ProviderCalendarId')
    PutRoomSkillParameterRequest = Shapes::StructureShape.new(name: 'PutRoomSkillParameterRequest')
    PutRoomSkillParameterResponse = Shapes::StructureShape.new(name: 'PutRoomSkillParameterResponse')
    ResolveRoomRequest = Shapes::StructureShape.new(name: 'ResolveRoomRequest')
    ResolveRoomResponse = Shapes::StructureShape.new(name: 'ResolveRoomResponse')
    ResourceInUseException = Shapes::StructureShape.new(name: 'ResourceInUseException')
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
    SearchAddressBooksRequest = Shapes::StructureShape.new(name: 'SearchAddressBooksRequest')
    SearchAddressBooksResponse = Shapes::StructureShape.new(name: 'SearchAddressBooksResponse')
    SearchContactsRequest = Shapes::StructureShape.new(name: 'SearchContactsRequest')
    SearchContactsResponse = Shapes::StructureShape.new(name: 'SearchContactsResponse')
    SearchDevicesRequest = Shapes::StructureShape.new(name: 'SearchDevicesRequest')
    SearchDevicesResponse = Shapes::StructureShape.new(name: 'SearchDevicesResponse')
    SearchProfilesRequest = Shapes::StructureShape.new(name: 'SearchProfilesRequest')
    SearchProfilesResponse = Shapes::StructureShape.new(name: 'SearchProfilesResponse')
    SearchRoomsRequest = Shapes::StructureShape.new(name: 'SearchRoomsRequest')
    SearchRoomsResponse = Shapes::StructureShape.new(name: 'SearchRoomsResponse')
    SearchSkillGroupsRequest = Shapes::StructureShape.new(name: 'SearchSkillGroupsRequest')
    SearchSkillGroupsResponse = Shapes::StructureShape.new(name: 'SearchSkillGroupsResponse')
    SearchUsersRequest = Shapes::StructureShape.new(name: 'SearchUsersRequest')
    SearchUsersResponse = Shapes::StructureShape.new(name: 'SearchUsersResponse')
    SendInvitationRequest = Shapes::StructureShape.new(name: 'SendInvitationRequest')
    SendInvitationResponse = Shapes::StructureShape.new(name: 'SendInvitationResponse')
    SkillGroup = Shapes::StructureShape.new(name: 'SkillGroup')
    SkillGroupData = Shapes::StructureShape.new(name: 'SkillGroupData')
    SkillGroupDataList = Shapes::ListShape.new(name: 'SkillGroupDataList')
    SkillGroupDescription = Shapes::StringShape.new(name: 'SkillGroupDescription')
    SkillGroupName = Shapes::StringShape.new(name: 'SkillGroupName')
    SkillId = Shapes::StringShape.new(name: 'SkillId')
    SkillListMaxResults = Shapes::IntegerShape.new(name: 'SkillListMaxResults')
    SkillName = Shapes::StringShape.new(name: 'SkillName')
    SkillSummary = Shapes::StructureShape.new(name: 'SkillSummary')
    SkillSummaryList = Shapes::ListShape.new(name: 'SkillSummaryList')
    SoftwareVersion = Shapes::StringShape.new(name: 'SoftwareVersion')
    Sort = Shapes::StructureShape.new(name: 'Sort')
    SortKey = Shapes::StringShape.new(name: 'SortKey')
    SortList = Shapes::ListShape.new(name: 'SortList')
    SortValue = Shapes::StringShape.new(name: 'SortValue')
    StartDeviceSyncRequest = Shapes::StructureShape.new(name: 'StartDeviceSyncRequest')
    StartDeviceSyncResponse = Shapes::StructureShape.new(name: 'StartDeviceSyncResponse')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagList = Shapes::ListShape.new(name: 'TagList')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    TemperatureUnit = Shapes::StringShape.new(name: 'TemperatureUnit')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    Timezone = Shapes::StringShape.new(name: 'Timezone')
    TotalCount = Shapes::IntegerShape.new(name: 'TotalCount')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateAddressBookRequest = Shapes::StructureShape.new(name: 'UpdateAddressBookRequest')
    UpdateAddressBookResponse = Shapes::StructureShape.new(name: 'UpdateAddressBookResponse')
    UpdateContactRequest = Shapes::StructureShape.new(name: 'UpdateContactRequest')
    UpdateContactResponse = Shapes::StructureShape.new(name: 'UpdateContactResponse')
    UpdateDeviceRequest = Shapes::StructureShape.new(name: 'UpdateDeviceRequest')
    UpdateDeviceResponse = Shapes::StructureShape.new(name: 'UpdateDeviceResponse')
    UpdateProfileRequest = Shapes::StructureShape.new(name: 'UpdateProfileRequest')
    UpdateProfileResponse = Shapes::StructureShape.new(name: 'UpdateProfileResponse')
    UpdateRoomRequest = Shapes::StructureShape.new(name: 'UpdateRoomRequest')
    UpdateRoomResponse = Shapes::StructureShape.new(name: 'UpdateRoomResponse')
    UpdateSkillGroupRequest = Shapes::StructureShape.new(name: 'UpdateSkillGroupRequest')
    UpdateSkillGroupResponse = Shapes::StructureShape.new(name: 'UpdateSkillGroupResponse')
    UserData = Shapes::StructureShape.new(name: 'UserData')
    UserDataList = Shapes::ListShape.new(name: 'UserDataList')
    UserId = Shapes::StringShape.new(name: 'UserId')
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

    AssociateContactWithAddressBookRequest.add_member(:contact_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "ContactArn"))
    AssociateContactWithAddressBookRequest.add_member(:address_book_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "AddressBookArn"))
    AssociateContactWithAddressBookRequest.struct_class = Types::AssociateContactWithAddressBookRequest

    AssociateContactWithAddressBookResponse.struct_class = Types::AssociateContactWithAddressBookResponse

    AssociateDeviceWithRoomRequest.add_member(:device_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "DeviceArn"))
    AssociateDeviceWithRoomRequest.add_member(:room_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "RoomArn"))
    AssociateDeviceWithRoomRequest.struct_class = Types::AssociateDeviceWithRoomRequest

    AssociateDeviceWithRoomResponse.struct_class = Types::AssociateDeviceWithRoomResponse

    AssociateSkillGroupWithRoomRequest.add_member(:skill_group_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "SkillGroupArn"))
    AssociateSkillGroupWithRoomRequest.add_member(:room_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "RoomArn"))
    AssociateSkillGroupWithRoomRequest.struct_class = Types::AssociateSkillGroupWithRoomRequest

    AssociateSkillGroupWithRoomResponse.struct_class = Types::AssociateSkillGroupWithRoomResponse

    Contact.add_member(:contact_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "ContactArn"))
    Contact.add_member(:display_name, Shapes::ShapeRef.new(shape: ContactName, location_name: "DisplayName"))
    Contact.add_member(:first_name, Shapes::ShapeRef.new(shape: ContactName, location_name: "FirstName"))
    Contact.add_member(:last_name, Shapes::ShapeRef.new(shape: ContactName, location_name: "LastName"))
    Contact.add_member(:phone_number, Shapes::ShapeRef.new(shape: E164PhoneNumber, location_name: "PhoneNumber"))
    Contact.struct_class = Types::Contact

    ContactData.add_member(:contact_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "ContactArn"))
    ContactData.add_member(:display_name, Shapes::ShapeRef.new(shape: ContactName, location_name: "DisplayName"))
    ContactData.add_member(:first_name, Shapes::ShapeRef.new(shape: ContactName, location_name: "FirstName"))
    ContactData.add_member(:last_name, Shapes::ShapeRef.new(shape: ContactName, location_name: "LastName"))
    ContactData.add_member(:phone_number, Shapes::ShapeRef.new(shape: E164PhoneNumber, location_name: "PhoneNumber"))
    ContactData.struct_class = Types::ContactData

    ContactDataList.member = Shapes::ShapeRef.new(shape: ContactData)

    CreateAddressBookRequest.add_member(:name, Shapes::ShapeRef.new(shape: AddressBookName, required: true, location_name: "Name"))
    CreateAddressBookRequest.add_member(:description, Shapes::ShapeRef.new(shape: AddressBookDescription, location_name: "Description"))
    CreateAddressBookRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "ClientRequestToken", metadata: {"idempotencyToken"=>true}))
    CreateAddressBookRequest.struct_class = Types::CreateAddressBookRequest

    CreateAddressBookResponse.add_member(:address_book_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "AddressBookArn"))
    CreateAddressBookResponse.struct_class = Types::CreateAddressBookResponse

    CreateContactRequest.add_member(:display_name, Shapes::ShapeRef.new(shape: ContactName, location_name: "DisplayName"))
    CreateContactRequest.add_member(:first_name, Shapes::ShapeRef.new(shape: ContactName, required: true, location_name: "FirstName"))
    CreateContactRequest.add_member(:last_name, Shapes::ShapeRef.new(shape: ContactName, location_name: "LastName"))
    CreateContactRequest.add_member(:phone_number, Shapes::ShapeRef.new(shape: E164PhoneNumber, required: true, location_name: "PhoneNumber"))
    CreateContactRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "ClientRequestToken", metadata: {"idempotencyToken"=>true}))
    CreateContactRequest.struct_class = Types::CreateContactRequest

    CreateContactResponse.add_member(:contact_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "ContactArn"))
    CreateContactResponse.struct_class = Types::CreateContactResponse

    CreateProfileRequest.add_member(:profile_name, Shapes::ShapeRef.new(shape: ProfileName, required: true, location_name: "ProfileName"))
    CreateProfileRequest.add_member(:timezone, Shapes::ShapeRef.new(shape: Timezone, required: true, location_name: "Timezone"))
    CreateProfileRequest.add_member(:address, Shapes::ShapeRef.new(shape: Address, required: true, location_name: "Address"))
    CreateProfileRequest.add_member(:distance_unit, Shapes::ShapeRef.new(shape: DistanceUnit, required: true, location_name: "DistanceUnit"))
    CreateProfileRequest.add_member(:temperature_unit, Shapes::ShapeRef.new(shape: TemperatureUnit, required: true, location_name: "TemperatureUnit"))
    CreateProfileRequest.add_member(:wake_word, Shapes::ShapeRef.new(shape: WakeWord, required: true, location_name: "WakeWord"))
    CreateProfileRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "ClientRequestToken", metadata: {"idempotencyToken"=>true}))
    CreateProfileRequest.add_member(:setup_mode_disabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "SetupModeDisabled"))
    CreateProfileRequest.add_member(:max_volume_limit, Shapes::ShapeRef.new(shape: MaxVolumeLimit, location_name: "MaxVolumeLimit"))
    CreateProfileRequest.add_member(:pstn_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "PSTNEnabled"))
    CreateProfileRequest.struct_class = Types::CreateProfileRequest

    CreateProfileResponse.add_member(:profile_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "ProfileArn"))
    CreateProfileResponse.struct_class = Types::CreateProfileResponse

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

    DeleteContactRequest.add_member(:contact_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "ContactArn"))
    DeleteContactRequest.struct_class = Types::DeleteContactRequest

    DeleteContactResponse.struct_class = Types::DeleteContactResponse

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

    DeleteSkillGroupRequest.add_member(:skill_group_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "SkillGroupArn"))
    DeleteSkillGroupRequest.struct_class = Types::DeleteSkillGroupRequest

    DeleteSkillGroupResponse.struct_class = Types::DeleteSkillGroupResponse

    DeleteUserRequest.add_member(:user_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "UserArn"))
    DeleteUserRequest.add_member(:enrollment_id, Shapes::ShapeRef.new(shape: EnrollmentId, required: true, location_name: "EnrollmentId"))
    DeleteUserRequest.struct_class = Types::DeleteUserRequest

    DeleteUserResponse.struct_class = Types::DeleteUserResponse

    Device.add_member(:device_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "DeviceArn"))
    Device.add_member(:device_serial_number, Shapes::ShapeRef.new(shape: DeviceSerialNumber, location_name: "DeviceSerialNumber"))
    Device.add_member(:device_type, Shapes::ShapeRef.new(shape: DeviceType, location_name: "DeviceType"))
    Device.add_member(:device_name, Shapes::ShapeRef.new(shape: DeviceName, location_name: "DeviceName"))
    Device.add_member(:software_version, Shapes::ShapeRef.new(shape: SoftwareVersion, location_name: "SoftwareVersion"))
    Device.add_member(:mac_address, Shapes::ShapeRef.new(shape: MacAddress, location_name: "MacAddress"))
    Device.add_member(:room_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "RoomArn"))
    Device.add_member(:device_status, Shapes::ShapeRef.new(shape: DeviceStatus, location_name: "DeviceStatus"))
    Device.add_member(:device_status_info, Shapes::ShapeRef.new(shape: DeviceStatusInfo, location_name: "DeviceStatusInfo"))
    Device.struct_class = Types::Device

    DeviceData.add_member(:device_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "DeviceArn"))
    DeviceData.add_member(:device_serial_number, Shapes::ShapeRef.new(shape: DeviceSerialNumber, location_name: "DeviceSerialNumber"))
    DeviceData.add_member(:device_type, Shapes::ShapeRef.new(shape: DeviceType, location_name: "DeviceType"))
    DeviceData.add_member(:device_name, Shapes::ShapeRef.new(shape: DeviceName, location_name: "DeviceName"))
    DeviceData.add_member(:software_version, Shapes::ShapeRef.new(shape: SoftwareVersion, location_name: "SoftwareVersion"))
    DeviceData.add_member(:mac_address, Shapes::ShapeRef.new(shape: MacAddress, location_name: "MacAddress"))
    DeviceData.add_member(:device_status, Shapes::ShapeRef.new(shape: DeviceStatus, location_name: "DeviceStatus"))
    DeviceData.add_member(:room_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "RoomArn"))
    DeviceData.add_member(:room_name, Shapes::ShapeRef.new(shape: RoomName, location_name: "RoomName"))
    DeviceData.add_member(:device_status_info, Shapes::ShapeRef.new(shape: DeviceStatusInfo, location_name: "DeviceStatusInfo"))
    DeviceData.struct_class = Types::DeviceData

    DeviceDataList.member = Shapes::ShapeRef.new(shape: DeviceData)

    DeviceEvent.add_member(:type, Shapes::ShapeRef.new(shape: DeviceEventType, location_name: "Type"))
    DeviceEvent.add_member(:value, Shapes::ShapeRef.new(shape: DeviceEventValue, location_name: "Value"))
    DeviceEvent.add_member(:timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "Timestamp"))
    DeviceEvent.struct_class = Types::DeviceEvent

    DeviceEventList.member = Shapes::ShapeRef.new(shape: DeviceEvent)

    DeviceStatusDetail.add_member(:code, Shapes::ShapeRef.new(shape: DeviceStatusDetailCode, location_name: "Code"))
    DeviceStatusDetail.struct_class = Types::DeviceStatusDetail

    DeviceStatusDetails.member = Shapes::ShapeRef.new(shape: DeviceStatusDetail)

    DeviceStatusInfo.add_member(:device_status_details, Shapes::ShapeRef.new(shape: DeviceStatusDetails, location_name: "DeviceStatusDetails"))
    DeviceStatusInfo.add_member(:connection_status, Shapes::ShapeRef.new(shape: ConnectionStatus, location_name: "ConnectionStatus"))
    DeviceStatusInfo.struct_class = Types::DeviceStatusInfo

    DisassociateContactFromAddressBookRequest.add_member(:contact_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "ContactArn"))
    DisassociateContactFromAddressBookRequest.add_member(:address_book_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "AddressBookArn"))
    DisassociateContactFromAddressBookRequest.struct_class = Types::DisassociateContactFromAddressBookRequest

    DisassociateContactFromAddressBookResponse.struct_class = Types::DisassociateContactFromAddressBookResponse

    DisassociateDeviceFromRoomRequest.add_member(:device_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "DeviceArn"))
    DisassociateDeviceFromRoomRequest.struct_class = Types::DisassociateDeviceFromRoomRequest

    DisassociateDeviceFromRoomResponse.struct_class = Types::DisassociateDeviceFromRoomResponse

    DisassociateSkillGroupFromRoomRequest.add_member(:skill_group_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "SkillGroupArn"))
    DisassociateSkillGroupFromRoomRequest.add_member(:room_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "RoomArn"))
    DisassociateSkillGroupFromRoomRequest.struct_class = Types::DisassociateSkillGroupFromRoomRequest

    DisassociateSkillGroupFromRoomResponse.struct_class = Types::DisassociateSkillGroupFromRoomResponse

    Features.member = Shapes::ShapeRef.new(shape: Feature)

    Filter.add_member(:key, Shapes::ShapeRef.new(shape: FilterKey, required: true, location_name: "Key"))
    Filter.add_member(:values, Shapes::ShapeRef.new(shape: FilterValueList, required: true, location_name: "Values"))
    Filter.struct_class = Types::Filter

    FilterList.member = Shapes::ShapeRef.new(shape: Filter)

    FilterValueList.member = Shapes::ShapeRef.new(shape: FilterValue)

    GetAddressBookRequest.add_member(:address_book_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "AddressBookArn"))
    GetAddressBookRequest.struct_class = Types::GetAddressBookRequest

    GetAddressBookResponse.add_member(:address_book, Shapes::ShapeRef.new(shape: AddressBook, location_name: "AddressBook"))
    GetAddressBookResponse.struct_class = Types::GetAddressBookResponse

    GetContactRequest.add_member(:contact_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "ContactArn"))
    GetContactRequest.struct_class = Types::GetContactRequest

    GetContactResponse.add_member(:contact, Shapes::ShapeRef.new(shape: Contact, location_name: "Contact"))
    GetContactResponse.struct_class = Types::GetContactResponse

    GetDeviceRequest.add_member(:device_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "DeviceArn"))
    GetDeviceRequest.struct_class = Types::GetDeviceRequest

    GetDeviceResponse.add_member(:device, Shapes::ShapeRef.new(shape: Device, location_name: "Device"))
    GetDeviceResponse.struct_class = Types::GetDeviceResponse

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

    ListDeviceEventsRequest.add_member(:device_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "DeviceArn"))
    ListDeviceEventsRequest.add_member(:event_type, Shapes::ShapeRef.new(shape: DeviceEventType, location_name: "EventType"))
    ListDeviceEventsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListDeviceEventsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListDeviceEventsRequest.struct_class = Types::ListDeviceEventsRequest

    ListDeviceEventsResponse.add_member(:device_events, Shapes::ShapeRef.new(shape: DeviceEventList, location_name: "DeviceEvents"))
    ListDeviceEventsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListDeviceEventsResponse.struct_class = Types::ListDeviceEventsResponse

    ListSkillsRequest.add_member(:skill_group_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "SkillGroupArn"))
    ListSkillsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListSkillsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: SkillListMaxResults, location_name: "MaxResults"))
    ListSkillsRequest.struct_class = Types::ListSkillsRequest

    ListSkillsResponse.add_member(:skill_summaries, Shapes::ShapeRef.new(shape: SkillSummaryList, location_name: "SkillSummaries"))
    ListSkillsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListSkillsResponse.struct_class = Types::ListSkillsResponse

    ListTagsRequest.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "Arn"))
    ListTagsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListTagsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListTagsRequest.struct_class = Types::ListTagsRequest

    ListTagsResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    ListTagsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListTagsResponse.struct_class = Types::ListTagsResponse

    Profile.add_member(:profile_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "ProfileArn"))
    Profile.add_member(:profile_name, Shapes::ShapeRef.new(shape: ProfileName, location_name: "ProfileName"))
    Profile.add_member(:address, Shapes::ShapeRef.new(shape: Address, location_name: "Address"))
    Profile.add_member(:timezone, Shapes::ShapeRef.new(shape: Timezone, location_name: "Timezone"))
    Profile.add_member(:distance_unit, Shapes::ShapeRef.new(shape: DistanceUnit, location_name: "DistanceUnit"))
    Profile.add_member(:temperature_unit, Shapes::ShapeRef.new(shape: TemperatureUnit, location_name: "TemperatureUnit"))
    Profile.add_member(:wake_word, Shapes::ShapeRef.new(shape: WakeWord, location_name: "WakeWord"))
    Profile.add_member(:setup_mode_disabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "SetupModeDisabled"))
    Profile.add_member(:max_volume_limit, Shapes::ShapeRef.new(shape: MaxVolumeLimit, location_name: "MaxVolumeLimit"))
    Profile.add_member(:pstn_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "PSTNEnabled"))
    Profile.struct_class = Types::Profile

    ProfileData.add_member(:profile_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "ProfileArn"))
    ProfileData.add_member(:profile_name, Shapes::ShapeRef.new(shape: ProfileName, location_name: "ProfileName"))
    ProfileData.add_member(:address, Shapes::ShapeRef.new(shape: Address, location_name: "Address"))
    ProfileData.add_member(:timezone, Shapes::ShapeRef.new(shape: Timezone, location_name: "Timezone"))
    ProfileData.add_member(:distance_unit, Shapes::ShapeRef.new(shape: DistanceUnit, location_name: "DistanceUnit"))
    ProfileData.add_member(:temperature_unit, Shapes::ShapeRef.new(shape: TemperatureUnit, location_name: "TemperatureUnit"))
    ProfileData.add_member(:wake_word, Shapes::ShapeRef.new(shape: WakeWord, location_name: "WakeWord"))
    ProfileData.struct_class = Types::ProfileData

    ProfileDataList.member = Shapes::ShapeRef.new(shape: ProfileData)

    PutRoomSkillParameterRequest.add_member(:room_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "RoomArn"))
    PutRoomSkillParameterRequest.add_member(:skill_id, Shapes::ShapeRef.new(shape: SkillId, required: true, location_name: "SkillId"))
    PutRoomSkillParameterRequest.add_member(:room_skill_parameter, Shapes::ShapeRef.new(shape: RoomSkillParameter, required: true, location_name: "RoomSkillParameter"))
    PutRoomSkillParameterRequest.struct_class = Types::PutRoomSkillParameterRequest

    PutRoomSkillParameterResponse.struct_class = Types::PutRoomSkillParameterResponse

    ResolveRoomRequest.add_member(:user_id, Shapes::ShapeRef.new(shape: UserId, required: true, location_name: "UserId"))
    ResolveRoomRequest.add_member(:skill_id, Shapes::ShapeRef.new(shape: SkillId, required: true, location_name: "SkillId"))
    ResolveRoomRequest.struct_class = Types::ResolveRoomRequest

    ResolveRoomResponse.add_member(:room_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "RoomArn"))
    ResolveRoomResponse.add_member(:room_name, Shapes::ShapeRef.new(shape: RoomName, location_name: "RoomName"))
    ResolveRoomResponse.add_member(:room_skill_parameters, Shapes::ShapeRef.new(shape: RoomSkillParameters, location_name: "RoomSkillParameters"))
    ResolveRoomResponse.struct_class = Types::ResolveRoomResponse

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

    SendInvitationRequest.add_member(:user_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "UserArn"))
    SendInvitationRequest.struct_class = Types::SendInvitationRequest

    SendInvitationResponse.struct_class = Types::SendInvitationResponse

    SkillGroup.add_member(:skill_group_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "SkillGroupArn"))
    SkillGroup.add_member(:skill_group_name, Shapes::ShapeRef.new(shape: SkillGroupName, location_name: "SkillGroupName"))
    SkillGroup.add_member(:description, Shapes::ShapeRef.new(shape: SkillGroupDescription, location_name: "Description"))
    SkillGroup.struct_class = Types::SkillGroup

    SkillGroupData.add_member(:skill_group_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "SkillGroupArn"))
    SkillGroupData.add_member(:skill_group_name, Shapes::ShapeRef.new(shape: SkillGroupName, location_name: "SkillGroupName"))
    SkillGroupData.add_member(:description, Shapes::ShapeRef.new(shape: SkillGroupDescription, location_name: "Description"))
    SkillGroupData.struct_class = Types::SkillGroupData

    SkillGroupDataList.member = Shapes::ShapeRef.new(shape: SkillGroupData)

    SkillSummary.add_member(:skill_id, Shapes::ShapeRef.new(shape: SkillId, location_name: "SkillId"))
    SkillSummary.add_member(:skill_name, Shapes::ShapeRef.new(shape: SkillName, location_name: "SkillName"))
    SkillSummary.add_member(:supports_linking, Shapes::ShapeRef.new(shape: boolean, location_name: "SupportsLinking"))
    SkillSummary.struct_class = Types::SkillSummary

    SkillSummaryList.member = Shapes::ShapeRef.new(shape: SkillSummary)

    Sort.add_member(:key, Shapes::ShapeRef.new(shape: SortKey, required: true, location_name: "Key"))
    Sort.add_member(:value, Shapes::ShapeRef.new(shape: SortValue, required: true, location_name: "Value"))
    Sort.struct_class = Types::Sort

    SortList.member = Shapes::ShapeRef.new(shape: Sort)

    StartDeviceSyncRequest.add_member(:room_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "RoomArn"))
    StartDeviceSyncRequest.add_member(:device_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "DeviceArn"))
    StartDeviceSyncRequest.add_member(:features, Shapes::ShapeRef.new(shape: Features, required: true, location_name: "Features"))
    StartDeviceSyncRequest.struct_class = Types::StartDeviceSyncRequest

    StartDeviceSyncResponse.struct_class = Types::StartDeviceSyncResponse

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, location_name: "Key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: TagValue, location_name: "Value"))
    Tag.struct_class = Types::Tag

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagList.member = Shapes::ShapeRef.new(shape: Tag)

    TagResourceRequest.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "Arn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, required: true, location_name: "Tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    UntagResourceRequest.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "Arn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location_name: "TagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateAddressBookRequest.add_member(:address_book_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "AddressBookArn"))
    UpdateAddressBookRequest.add_member(:name, Shapes::ShapeRef.new(shape: AddressBookName, location_name: "Name"))
    UpdateAddressBookRequest.add_member(:description, Shapes::ShapeRef.new(shape: AddressBookDescription, location_name: "Description"))
    UpdateAddressBookRequest.struct_class = Types::UpdateAddressBookRequest

    UpdateAddressBookResponse.struct_class = Types::UpdateAddressBookResponse

    UpdateContactRequest.add_member(:contact_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "ContactArn"))
    UpdateContactRequest.add_member(:display_name, Shapes::ShapeRef.new(shape: ContactName, location_name: "DisplayName"))
    UpdateContactRequest.add_member(:first_name, Shapes::ShapeRef.new(shape: ContactName, location_name: "FirstName"))
    UpdateContactRequest.add_member(:last_name, Shapes::ShapeRef.new(shape: ContactName, location_name: "LastName"))
    UpdateContactRequest.add_member(:phone_number, Shapes::ShapeRef.new(shape: E164PhoneNumber, location_name: "PhoneNumber"))
    UpdateContactRequest.struct_class = Types::UpdateContactRequest

    UpdateContactResponse.struct_class = Types::UpdateContactResponse

    UpdateDeviceRequest.add_member(:device_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "DeviceArn"))
    UpdateDeviceRequest.add_member(:device_name, Shapes::ShapeRef.new(shape: DeviceName, location_name: "DeviceName"))
    UpdateDeviceRequest.struct_class = Types::UpdateDeviceRequest

    UpdateDeviceResponse.struct_class = Types::UpdateDeviceResponse

    UpdateProfileRequest.add_member(:profile_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "ProfileArn"))
    UpdateProfileRequest.add_member(:profile_name, Shapes::ShapeRef.new(shape: ProfileName, location_name: "ProfileName"))
    UpdateProfileRequest.add_member(:timezone, Shapes::ShapeRef.new(shape: Timezone, location_name: "Timezone"))
    UpdateProfileRequest.add_member(:address, Shapes::ShapeRef.new(shape: Address, location_name: "Address"))
    UpdateProfileRequest.add_member(:distance_unit, Shapes::ShapeRef.new(shape: DistanceUnit, location_name: "DistanceUnit"))
    UpdateProfileRequest.add_member(:temperature_unit, Shapes::ShapeRef.new(shape: TemperatureUnit, location_name: "TemperatureUnit"))
    UpdateProfileRequest.add_member(:wake_word, Shapes::ShapeRef.new(shape: WakeWord, location_name: "WakeWord"))
    UpdateProfileRequest.add_member(:setup_mode_disabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "SetupModeDisabled"))
    UpdateProfileRequest.add_member(:max_volume_limit, Shapes::ShapeRef.new(shape: MaxVolumeLimit, location_name: "MaxVolumeLimit"))
    UpdateProfileRequest.add_member(:pstn_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "PSTNEnabled"))
    UpdateProfileRequest.struct_class = Types::UpdateProfileRequest

    UpdateProfileResponse.struct_class = Types::UpdateProfileResponse

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

      api.add_operation(:associate_contact_with_address_book, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateContactWithAddressBook"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AssociateContactWithAddressBookRequest)
        o.output = Shapes::ShapeRef.new(shape: AssociateContactWithAddressBookResponse)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:associate_device_with_room, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateDeviceWithRoom"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AssociateDeviceWithRoomRequest)
        o.output = Shapes::ShapeRef.new(shape: AssociateDeviceWithRoomResponse)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: DeviceNotRegisteredException)
      end)

      api.add_operation(:associate_skill_group_with_room, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateSkillGroupWithRoom"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AssociateSkillGroupWithRoomRequest)
        o.output = Shapes::ShapeRef.new(shape: AssociateSkillGroupWithRoomResponse)
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

      api.add_operation(:create_contact, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateContact"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateContactRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateContactResponse)
        o.errors << Shapes::ShapeRef.new(shape: AlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:create_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateProfile"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateProfileRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateProfileResponse)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AlreadyExistsException)
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
      end)

      api.add_operation(:create_user, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateUser"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateUserRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateUserResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:delete_address_book, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteAddressBook"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteAddressBookRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteAddressBookResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
      end)

      api.add_operation(:delete_contact, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteContact"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteContactRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteContactResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
      end)

      api.add_operation(:delete_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteProfile"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteProfileRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteProfileResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
      end)

      api.add_operation(:delete_room, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteRoom"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteRoomRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteRoomResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
      end)

      api.add_operation(:delete_room_skill_parameter, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteRoomSkillParameter"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteRoomSkillParameterRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteRoomSkillParameterResponse)
      end)

      api.add_operation(:delete_skill_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteSkillGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteSkillGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteSkillGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
      end)

      api.add_operation(:delete_user, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteUser"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteUserRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteUserResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
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
        o.errors << Shapes::ShapeRef.new(shape: DeviceNotRegisteredException)
      end)

      api.add_operation(:disassociate_skill_group_from_room, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateSkillGroupFromRoom"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DisassociateSkillGroupFromRoomRequest)
        o.output = Shapes::ShapeRef.new(shape: DisassociateSkillGroupFromRoomResponse)
      end)

      api.add_operation(:get_address_book, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAddressBook"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetAddressBookRequest)
        o.output = Shapes::ShapeRef.new(shape: GetAddressBookResponse)
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

      api.add_operation(:put_room_skill_parameter, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutRoomSkillParameter"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutRoomSkillParameterRequest)
        o.output = Shapes::ShapeRef.new(shape: PutRoomSkillParameterResponse)
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

      api.add_operation(:send_invitation, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SendInvitation"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: SendInvitationRequest)
        o.output = Shapes::ShapeRef.new(shape: SendInvitationResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidUserStatusException)
      end)

      api.add_operation(:start_device_sync, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartDeviceSync"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartDeviceSyncRequest)
        o.output = Shapes::ShapeRef.new(shape: StartDeviceSyncResponse)
        o.errors << Shapes::ShapeRef.new(shape: DeviceNotRegisteredException)
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
      end)

      api.add_operation(:update_contact, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateContact"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateContactRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateContactResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
      end)

      api.add_operation(:update_device, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateDevice"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateDeviceRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateDeviceResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: DeviceNotRegisteredException)
      end)

      api.add_operation(:update_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateProfile"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateProfileRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateProfileResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: NameInUseException)
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
      end)
    end

  end
end
