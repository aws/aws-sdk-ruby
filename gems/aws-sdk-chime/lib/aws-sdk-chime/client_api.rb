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

    Account = Shapes::StructureShape.new(name: 'Account')
    AccountList = Shapes::ListShape.new(name: 'AccountList')
    AccountName = Shapes::StringShape.new(name: 'AccountName')
    AccountSettings = Shapes::StructureShape.new(name: 'AccountSettings')
    AccountType = Shapes::StringShape.new(name: 'AccountType')
    AssociatePhoneNumberWithUserRequest = Shapes::StructureShape.new(name: 'AssociatePhoneNumberWithUserRequest')
    AssociatePhoneNumberWithUserResponse = Shapes::StructureShape.new(name: 'AssociatePhoneNumberWithUserResponse')
    AssociatePhoneNumbersWithVoiceConnectorRequest = Shapes::StructureShape.new(name: 'AssociatePhoneNumbersWithVoiceConnectorRequest')
    AssociatePhoneNumbersWithVoiceConnectorResponse = Shapes::StructureShape.new(name: 'AssociatePhoneNumbersWithVoiceConnectorResponse')
    BadRequestException = Shapes::StructureShape.new(name: 'BadRequestException')
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
    CallingRegion = Shapes::StringShape.new(name: 'CallingRegion')
    CallingRegionList = Shapes::ListShape.new(name: 'CallingRegionList')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    CpsLimit = Shapes::IntegerShape.new(name: 'CpsLimit')
    CreateAccountRequest = Shapes::StructureShape.new(name: 'CreateAccountRequest')
    CreateAccountResponse = Shapes::StructureShape.new(name: 'CreateAccountResponse')
    CreateBotRequest = Shapes::StructureShape.new(name: 'CreateBotRequest')
    CreateBotResponse = Shapes::StructureShape.new(name: 'CreateBotResponse')
    CreatePhoneNumberOrderRequest = Shapes::StructureShape.new(name: 'CreatePhoneNumberOrderRequest')
    CreatePhoneNumberOrderResponse = Shapes::StructureShape.new(name: 'CreatePhoneNumberOrderResponse')
    CreateVoiceConnectorRequest = Shapes::StructureShape.new(name: 'CreateVoiceConnectorRequest')
    CreateVoiceConnectorResponse = Shapes::StructureShape.new(name: 'CreateVoiceConnectorResponse')
    Credential = Shapes::StructureShape.new(name: 'Credential')
    CredentialList = Shapes::ListShape.new(name: 'CredentialList')
    DeleteAccountRequest = Shapes::StructureShape.new(name: 'DeleteAccountRequest')
    DeleteAccountResponse = Shapes::StructureShape.new(name: 'DeleteAccountResponse')
    DeleteEventsConfigurationRequest = Shapes::StructureShape.new(name: 'DeleteEventsConfigurationRequest')
    DeletePhoneNumberRequest = Shapes::StructureShape.new(name: 'DeletePhoneNumberRequest')
    DeleteVoiceConnectorOriginationRequest = Shapes::StructureShape.new(name: 'DeleteVoiceConnectorOriginationRequest')
    DeleteVoiceConnectorRequest = Shapes::StructureShape.new(name: 'DeleteVoiceConnectorRequest')
    DeleteVoiceConnectorTerminationCredentialsRequest = Shapes::StructureShape.new(name: 'DeleteVoiceConnectorTerminationCredentialsRequest')
    DeleteVoiceConnectorTerminationRequest = Shapes::StructureShape.new(name: 'DeleteVoiceConnectorTerminationRequest')
    DisassociatePhoneNumberFromUserRequest = Shapes::StructureShape.new(name: 'DisassociatePhoneNumberFromUserRequest')
    DisassociatePhoneNumberFromUserResponse = Shapes::StructureShape.new(name: 'DisassociatePhoneNumberFromUserResponse')
    DisassociatePhoneNumbersFromVoiceConnectorRequest = Shapes::StructureShape.new(name: 'DisassociatePhoneNumbersFromVoiceConnectorRequest')
    DisassociatePhoneNumbersFromVoiceConnectorResponse = Shapes::StructureShape.new(name: 'DisassociatePhoneNumbersFromVoiceConnectorResponse')
    E164PhoneNumber = Shapes::StringShape.new(name: 'E164PhoneNumber')
    E164PhoneNumberList = Shapes::ListShape.new(name: 'E164PhoneNumberList')
    EmailAddress = Shapes::StringShape.new(name: 'EmailAddress')
    EmailStatus = Shapes::StringShape.new(name: 'EmailStatus')
    ErrorCode = Shapes::StringShape.new(name: 'ErrorCode')
    EventsConfiguration = Shapes::StructureShape.new(name: 'EventsConfiguration')
    ForbiddenException = Shapes::StructureShape.new(name: 'ForbiddenException')
    GetAccountRequest = Shapes::StructureShape.new(name: 'GetAccountRequest')
    GetAccountResponse = Shapes::StructureShape.new(name: 'GetAccountResponse')
    GetAccountSettingsRequest = Shapes::StructureShape.new(name: 'GetAccountSettingsRequest')
    GetAccountSettingsResponse = Shapes::StructureShape.new(name: 'GetAccountSettingsResponse')
    GetBotRequest = Shapes::StructureShape.new(name: 'GetBotRequest')
    GetBotResponse = Shapes::StructureShape.new(name: 'GetBotResponse')
    GetEventsConfigurationRequest = Shapes::StructureShape.new(name: 'GetEventsConfigurationRequest')
    GetEventsConfigurationResponse = Shapes::StructureShape.new(name: 'GetEventsConfigurationResponse')
    GetGlobalSettingsResponse = Shapes::StructureShape.new(name: 'GetGlobalSettingsResponse')
    GetPhoneNumberOrderRequest = Shapes::StructureShape.new(name: 'GetPhoneNumberOrderRequest')
    GetPhoneNumberOrderResponse = Shapes::StructureShape.new(name: 'GetPhoneNumberOrderResponse')
    GetPhoneNumberRequest = Shapes::StructureShape.new(name: 'GetPhoneNumberRequest')
    GetPhoneNumberResponse = Shapes::StructureShape.new(name: 'GetPhoneNumberResponse')
    GetUserRequest = Shapes::StructureShape.new(name: 'GetUserRequest')
    GetUserResponse = Shapes::StructureShape.new(name: 'GetUserResponse')
    GetUserSettingsRequest = Shapes::StructureShape.new(name: 'GetUserSettingsRequest')
    GetUserSettingsResponse = Shapes::StructureShape.new(name: 'GetUserSettingsResponse')
    GetVoiceConnectorOriginationRequest = Shapes::StructureShape.new(name: 'GetVoiceConnectorOriginationRequest')
    GetVoiceConnectorOriginationResponse = Shapes::StructureShape.new(name: 'GetVoiceConnectorOriginationResponse')
    GetVoiceConnectorRequest = Shapes::StructureShape.new(name: 'GetVoiceConnectorRequest')
    GetVoiceConnectorResponse = Shapes::StructureShape.new(name: 'GetVoiceConnectorResponse')
    GetVoiceConnectorTerminationHealthRequest = Shapes::StructureShape.new(name: 'GetVoiceConnectorTerminationHealthRequest')
    GetVoiceConnectorTerminationHealthResponse = Shapes::StructureShape.new(name: 'GetVoiceConnectorTerminationHealthResponse')
    GetVoiceConnectorTerminationRequest = Shapes::StructureShape.new(name: 'GetVoiceConnectorTerminationRequest')
    GetVoiceConnectorTerminationResponse = Shapes::StructureShape.new(name: 'GetVoiceConnectorTerminationResponse')
    GuidString = Shapes::StringShape.new(name: 'GuidString')
    Invite = Shapes::StructureShape.new(name: 'Invite')
    InviteList = Shapes::ListShape.new(name: 'InviteList')
    InviteStatus = Shapes::StringShape.new(name: 'InviteStatus')
    InviteUsersRequest = Shapes::StructureShape.new(name: 'InviteUsersRequest')
    InviteUsersResponse = Shapes::StructureShape.new(name: 'InviteUsersResponse')
    Iso8601Timestamp = Shapes::TimestampShape.new(name: 'Iso8601Timestamp', timestampFormat: "iso8601")
    License = Shapes::StringShape.new(name: 'License')
    LicenseList = Shapes::ListShape.new(name: 'LicenseList')
    ListAccountsRequest = Shapes::StructureShape.new(name: 'ListAccountsRequest')
    ListAccountsResponse = Shapes::StructureShape.new(name: 'ListAccountsResponse')
    ListBotsRequest = Shapes::StructureShape.new(name: 'ListBotsRequest')
    ListBotsResponse = Shapes::StructureShape.new(name: 'ListBotsResponse')
    ListPhoneNumberOrdersRequest = Shapes::StructureShape.new(name: 'ListPhoneNumberOrdersRequest')
    ListPhoneNumberOrdersResponse = Shapes::StructureShape.new(name: 'ListPhoneNumberOrdersResponse')
    ListPhoneNumbersRequest = Shapes::StructureShape.new(name: 'ListPhoneNumbersRequest')
    ListPhoneNumbersResponse = Shapes::StructureShape.new(name: 'ListPhoneNumbersResponse')
    ListUsersRequest = Shapes::StructureShape.new(name: 'ListUsersRequest')
    ListUsersResponse = Shapes::StructureShape.new(name: 'ListUsersResponse')
    ListVoiceConnectorTerminationCredentialsRequest = Shapes::StructureShape.new(name: 'ListVoiceConnectorTerminationCredentialsRequest')
    ListVoiceConnectorTerminationCredentialsResponse = Shapes::StructureShape.new(name: 'ListVoiceConnectorTerminationCredentialsResponse')
    ListVoiceConnectorsRequest = Shapes::StructureShape.new(name: 'ListVoiceConnectorsRequest')
    ListVoiceConnectorsResponse = Shapes::StructureShape.new(name: 'ListVoiceConnectorsResponse')
    LogoutUserRequest = Shapes::StructureShape.new(name: 'LogoutUserRequest')
    LogoutUserResponse = Shapes::StructureShape.new(name: 'LogoutUserResponse')
    NonEmptyString = Shapes::StringShape.new(name: 'NonEmptyString')
    NonEmptyStringList = Shapes::ListShape.new(name: 'NonEmptyStringList')
    NotFoundException = Shapes::StructureShape.new(name: 'NotFoundException')
    NullableBoolean = Shapes::BooleanShape.new(name: 'NullableBoolean')
    OrderedPhoneNumber = Shapes::StructureShape.new(name: 'OrderedPhoneNumber')
    OrderedPhoneNumberList = Shapes::ListShape.new(name: 'OrderedPhoneNumberList')
    OrderedPhoneNumberStatus = Shapes::StringShape.new(name: 'OrderedPhoneNumberStatus')
    Origination = Shapes::StructureShape.new(name: 'Origination')
    OriginationRoute = Shapes::StructureShape.new(name: 'OriginationRoute')
    OriginationRouteList = Shapes::ListShape.new(name: 'OriginationRouteList')
    OriginationRoutePriority = Shapes::IntegerShape.new(name: 'OriginationRoutePriority')
    OriginationRouteProtocol = Shapes::StringShape.new(name: 'OriginationRouteProtocol')
    OriginationRouteWeight = Shapes::IntegerShape.new(name: 'OriginationRouteWeight')
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
    Port = Shapes::IntegerShape.new(name: 'Port')
    ProfileServiceMaxResults = Shapes::IntegerShape.new(name: 'ProfileServiceMaxResults')
    PutEventsConfigurationRequest = Shapes::StructureShape.new(name: 'PutEventsConfigurationRequest')
    PutEventsConfigurationResponse = Shapes::StructureShape.new(name: 'PutEventsConfigurationResponse')
    PutVoiceConnectorOriginationRequest = Shapes::StructureShape.new(name: 'PutVoiceConnectorOriginationRequest')
    PutVoiceConnectorOriginationResponse = Shapes::StructureShape.new(name: 'PutVoiceConnectorOriginationResponse')
    PutVoiceConnectorTerminationCredentialsRequest = Shapes::StructureShape.new(name: 'PutVoiceConnectorTerminationCredentialsRequest')
    PutVoiceConnectorTerminationRequest = Shapes::StructureShape.new(name: 'PutVoiceConnectorTerminationRequest')
    PutVoiceConnectorTerminationResponse = Shapes::StructureShape.new(name: 'PutVoiceConnectorTerminationResponse')
    RegenerateSecurityTokenRequest = Shapes::StructureShape.new(name: 'RegenerateSecurityTokenRequest')
    RegenerateSecurityTokenResponse = Shapes::StructureShape.new(name: 'RegenerateSecurityTokenResponse')
    RegistrationStatus = Shapes::StringShape.new(name: 'RegistrationStatus')
    ResetPersonalPINRequest = Shapes::StructureShape.new(name: 'ResetPersonalPINRequest')
    ResetPersonalPINResponse = Shapes::StructureShape.new(name: 'ResetPersonalPINResponse')
    ResourceLimitExceededException = Shapes::StructureShape.new(name: 'ResourceLimitExceededException')
    RestorePhoneNumberRequest = Shapes::StructureShape.new(name: 'RestorePhoneNumberRequest')
    RestorePhoneNumberResponse = Shapes::StructureShape.new(name: 'RestorePhoneNumberResponse')
    ResultMax = Shapes::IntegerShape.new(name: 'ResultMax')
    SearchAvailablePhoneNumbersRequest = Shapes::StructureShape.new(name: 'SearchAvailablePhoneNumbersRequest')
    SearchAvailablePhoneNumbersResponse = Shapes::StructureShape.new(name: 'SearchAvailablePhoneNumbersResponse')
    SensitiveString = Shapes::StringShape.new(name: 'SensitiveString')
    SensitiveStringList = Shapes::ListShape.new(name: 'SensitiveStringList')
    ServiceFailureException = Shapes::StructureShape.new(name: 'ServiceFailureException')
    ServiceUnavailableException = Shapes::StructureShape.new(name: 'ServiceUnavailableException')
    String = Shapes::StringShape.new(name: 'String')
    StringList = Shapes::ListShape.new(name: 'StringList')
    TelephonySettings = Shapes::StructureShape.new(name: 'TelephonySettings')
    Termination = Shapes::StructureShape.new(name: 'Termination')
    TerminationHealth = Shapes::StructureShape.new(name: 'TerminationHealth')
    ThrottledClientException = Shapes::StructureShape.new(name: 'ThrottledClientException')
    UnauthorizedClientException = Shapes::StructureShape.new(name: 'UnauthorizedClientException')
    UnprocessableEntityException = Shapes::StructureShape.new(name: 'UnprocessableEntityException')
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
    UpdateUserRequest = Shapes::StructureShape.new(name: 'UpdateUserRequest')
    UpdateUserRequestItem = Shapes::StructureShape.new(name: 'UpdateUserRequestItem')
    UpdateUserRequestItemList = Shapes::ListShape.new(name: 'UpdateUserRequestItemList')
    UpdateUserResponse = Shapes::StructureShape.new(name: 'UpdateUserResponse')
    UpdateUserSettingsRequest = Shapes::StructureShape.new(name: 'UpdateUserSettingsRequest')
    UpdateVoiceConnectorRequest = Shapes::StructureShape.new(name: 'UpdateVoiceConnectorRequest')
    UpdateVoiceConnectorResponse = Shapes::StructureShape.new(name: 'UpdateVoiceConnectorResponse')
    User = Shapes::StructureShape.new(name: 'User')
    UserEmailList = Shapes::ListShape.new(name: 'UserEmailList')
    UserError = Shapes::StructureShape.new(name: 'UserError')
    UserErrorList = Shapes::ListShape.new(name: 'UserErrorList')
    UserIdList = Shapes::ListShape.new(name: 'UserIdList')
    UserList = Shapes::ListShape.new(name: 'UserList')
    UserSettings = Shapes::StructureShape.new(name: 'UserSettings')
    VoiceConnector = Shapes::StructureShape.new(name: 'VoiceConnector')
    VoiceConnectorList = Shapes::ListShape.new(name: 'VoiceConnectorList')
    VoiceConnectorName = Shapes::StringShape.new(name: 'VoiceConnectorName')
    VoiceConnectorSettings = Shapes::StructureShape.new(name: 'VoiceConnectorSettings')

    Account.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "AwsAccountId"))
    Account.add_member(:account_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "AccountId"))
    Account.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Name"))
    Account.add_member(:account_type, Shapes::ShapeRef.new(shape: AccountType, location_name: "AccountType"))
    Account.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: "CreatedTimestamp"))
    Account.add_member(:default_license, Shapes::ShapeRef.new(shape: License, location_name: "DefaultLicense"))
    Account.add_member(:supported_licenses, Shapes::ShapeRef.new(shape: LicenseList, location_name: "SupportedLicenses"))
    Account.struct_class = Types::Account

    AccountList.member = Shapes::ShapeRef.new(shape: Account)

    AccountSettings.add_member(:disable_remote_control, Shapes::ShapeRef.new(shape: Boolean, location_name: "DisableRemoteControl"))
    AccountSettings.add_member(:enable_dial_out, Shapes::ShapeRef.new(shape: Boolean, location_name: "EnableDialOut"))
    AccountSettings.struct_class = Types::AccountSettings

    AssociatePhoneNumberWithUserRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "accountId"))
    AssociatePhoneNumberWithUserRequest.add_member(:user_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "userId"))
    AssociatePhoneNumberWithUserRequest.add_member(:e164_phone_number, Shapes::ShapeRef.new(shape: E164PhoneNumber, required: true, location_name: "E164PhoneNumber"))
    AssociatePhoneNumberWithUserRequest.struct_class = Types::AssociatePhoneNumberWithUserRequest

    AssociatePhoneNumberWithUserResponse.struct_class = Types::AssociatePhoneNumberWithUserResponse

    AssociatePhoneNumbersWithVoiceConnectorRequest.add_member(:voice_connector_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "voiceConnectorId"))
    AssociatePhoneNumbersWithVoiceConnectorRequest.add_member(:e164_phone_numbers, Shapes::ShapeRef.new(shape: E164PhoneNumberList, location_name: "E164PhoneNumbers"))
    AssociatePhoneNumbersWithVoiceConnectorRequest.struct_class = Types::AssociatePhoneNumbersWithVoiceConnectorRequest

    AssociatePhoneNumbersWithVoiceConnectorResponse.add_member(:phone_number_errors, Shapes::ShapeRef.new(shape: PhoneNumberErrorList, location_name: "PhoneNumberErrors"))
    AssociatePhoneNumbersWithVoiceConnectorResponse.struct_class = Types::AssociatePhoneNumbersWithVoiceConnectorResponse

    BadRequestException.add_member(:code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "Code"))
    BadRequestException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    BadRequestException.struct_class = Types::BadRequestException

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

    ConflictException.add_member(:code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "Code"))
    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ConflictException.struct_class = Types::ConflictException

    CreateAccountRequest.add_member(:name, Shapes::ShapeRef.new(shape: AccountName, required: true, location_name: "Name"))
    CreateAccountRequest.struct_class = Types::CreateAccountRequest

    CreateAccountResponse.add_member(:account, Shapes::ShapeRef.new(shape: Account, location_name: "Account"))
    CreateAccountResponse.struct_class = Types::CreateAccountResponse

    CreateBotRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "accountId"))
    CreateBotRequest.add_member(:display_name, Shapes::ShapeRef.new(shape: SensitiveString, required: true, location_name: "DisplayName"))
    CreateBotRequest.add_member(:domain, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Domain"))
    CreateBotRequest.struct_class = Types::CreateBotRequest

    CreateBotResponse.add_member(:bot, Shapes::ShapeRef.new(shape: Bot, location_name: "Bot"))
    CreateBotResponse.struct_class = Types::CreateBotResponse

    CreatePhoneNumberOrderRequest.add_member(:product_type, Shapes::ShapeRef.new(shape: PhoneNumberProductType, required: true, location_name: "ProductType"))
    CreatePhoneNumberOrderRequest.add_member(:e164_phone_numbers, Shapes::ShapeRef.new(shape: E164PhoneNumberList, required: true, location_name: "E164PhoneNumbers"))
    CreatePhoneNumberOrderRequest.struct_class = Types::CreatePhoneNumberOrderRequest

    CreatePhoneNumberOrderResponse.add_member(:phone_number_order, Shapes::ShapeRef.new(shape: PhoneNumberOrder, location_name: "PhoneNumberOrder"))
    CreatePhoneNumberOrderResponse.struct_class = Types::CreatePhoneNumberOrderResponse

    CreateVoiceConnectorRequest.add_member(:name, Shapes::ShapeRef.new(shape: VoiceConnectorName, required: true, location_name: "Name"))
    CreateVoiceConnectorRequest.add_member(:require_encryption, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "RequireEncryption"))
    CreateVoiceConnectorRequest.struct_class = Types::CreateVoiceConnectorRequest

    CreateVoiceConnectorResponse.add_member(:voice_connector, Shapes::ShapeRef.new(shape: VoiceConnector, location_name: "VoiceConnector"))
    CreateVoiceConnectorResponse.struct_class = Types::CreateVoiceConnectorResponse

    Credential.add_member(:username, Shapes::ShapeRef.new(shape: SensitiveString, location_name: "Username"))
    Credential.add_member(:password, Shapes::ShapeRef.new(shape: SensitiveString, location_name: "Password"))
    Credential.struct_class = Types::Credential

    CredentialList.member = Shapes::ShapeRef.new(shape: Credential)

    DeleteAccountRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "accountId"))
    DeleteAccountRequest.struct_class = Types::DeleteAccountRequest

    DeleteAccountResponse.struct_class = Types::DeleteAccountResponse

    DeleteEventsConfigurationRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "accountId"))
    DeleteEventsConfigurationRequest.add_member(:bot_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "botId"))
    DeleteEventsConfigurationRequest.struct_class = Types::DeleteEventsConfigurationRequest

    DeletePhoneNumberRequest.add_member(:phone_number_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "phoneNumberId"))
    DeletePhoneNumberRequest.struct_class = Types::DeletePhoneNumberRequest

    DeleteVoiceConnectorOriginationRequest.add_member(:voice_connector_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "voiceConnectorId"))
    DeleteVoiceConnectorOriginationRequest.struct_class = Types::DeleteVoiceConnectorOriginationRequest

    DeleteVoiceConnectorRequest.add_member(:voice_connector_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "voiceConnectorId"))
    DeleteVoiceConnectorRequest.struct_class = Types::DeleteVoiceConnectorRequest

    DeleteVoiceConnectorTerminationCredentialsRequest.add_member(:voice_connector_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "voiceConnectorId"))
    DeleteVoiceConnectorTerminationCredentialsRequest.add_member(:usernames, Shapes::ShapeRef.new(shape: SensitiveStringList, location_name: "Usernames"))
    DeleteVoiceConnectorTerminationCredentialsRequest.struct_class = Types::DeleteVoiceConnectorTerminationCredentialsRequest

    DeleteVoiceConnectorTerminationRequest.add_member(:voice_connector_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "voiceConnectorId"))
    DeleteVoiceConnectorTerminationRequest.struct_class = Types::DeleteVoiceConnectorTerminationRequest

    DisassociatePhoneNumberFromUserRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "accountId"))
    DisassociatePhoneNumberFromUserRequest.add_member(:user_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "userId"))
    DisassociatePhoneNumberFromUserRequest.struct_class = Types::DisassociatePhoneNumberFromUserRequest

    DisassociatePhoneNumberFromUserResponse.struct_class = Types::DisassociatePhoneNumberFromUserResponse

    DisassociatePhoneNumbersFromVoiceConnectorRequest.add_member(:voice_connector_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "voiceConnectorId"))
    DisassociatePhoneNumbersFromVoiceConnectorRequest.add_member(:e164_phone_numbers, Shapes::ShapeRef.new(shape: E164PhoneNumberList, location_name: "E164PhoneNumbers"))
    DisassociatePhoneNumbersFromVoiceConnectorRequest.struct_class = Types::DisassociatePhoneNumbersFromVoiceConnectorRequest

    DisassociatePhoneNumbersFromVoiceConnectorResponse.add_member(:phone_number_errors, Shapes::ShapeRef.new(shape: PhoneNumberErrorList, location_name: "PhoneNumberErrors"))
    DisassociatePhoneNumbersFromVoiceConnectorResponse.struct_class = Types::DisassociatePhoneNumbersFromVoiceConnectorResponse

    E164PhoneNumberList.member = Shapes::ShapeRef.new(shape: E164PhoneNumber)

    EventsConfiguration.add_member(:bot_id, Shapes::ShapeRef.new(shape: String, location_name: "BotId"))
    EventsConfiguration.add_member(:outbound_events_https_endpoint, Shapes::ShapeRef.new(shape: SensitiveString, location_name: "OutboundEventsHTTPSEndpoint"))
    EventsConfiguration.add_member(:lambda_function_arn, Shapes::ShapeRef.new(shape: SensitiveString, location_name: "LambdaFunctionArn"))
    EventsConfiguration.struct_class = Types::EventsConfiguration

    ForbiddenException.add_member(:code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "Code"))
    ForbiddenException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ForbiddenException.struct_class = Types::ForbiddenException

    GetAccountRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "accountId"))
    GetAccountRequest.struct_class = Types::GetAccountRequest

    GetAccountResponse.add_member(:account, Shapes::ShapeRef.new(shape: Account, location_name: "Account"))
    GetAccountResponse.struct_class = Types::GetAccountResponse

    GetAccountSettingsRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "accountId"))
    GetAccountSettingsRequest.struct_class = Types::GetAccountSettingsRequest

    GetAccountSettingsResponse.add_member(:account_settings, Shapes::ShapeRef.new(shape: AccountSettings, location_name: "AccountSettings"))
    GetAccountSettingsResponse.struct_class = Types::GetAccountSettingsResponse

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

    GetPhoneNumberOrderRequest.add_member(:phone_number_order_id, Shapes::ShapeRef.new(shape: GuidString, required: true, location: "uri", location_name: "phoneNumberOrderId"))
    GetPhoneNumberOrderRequest.struct_class = Types::GetPhoneNumberOrderRequest

    GetPhoneNumberOrderResponse.add_member(:phone_number_order, Shapes::ShapeRef.new(shape: PhoneNumberOrder, location_name: "PhoneNumberOrder"))
    GetPhoneNumberOrderResponse.struct_class = Types::GetPhoneNumberOrderResponse

    GetPhoneNumberRequest.add_member(:phone_number_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "phoneNumberId"))
    GetPhoneNumberRequest.struct_class = Types::GetPhoneNumberRequest

    GetPhoneNumberResponse.add_member(:phone_number, Shapes::ShapeRef.new(shape: PhoneNumber, location_name: "PhoneNumber"))
    GetPhoneNumberResponse.struct_class = Types::GetPhoneNumberResponse

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

    GetVoiceConnectorOriginationRequest.add_member(:voice_connector_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "voiceConnectorId"))
    GetVoiceConnectorOriginationRequest.struct_class = Types::GetVoiceConnectorOriginationRequest

    GetVoiceConnectorOriginationResponse.add_member(:origination, Shapes::ShapeRef.new(shape: Origination, location_name: "Origination"))
    GetVoiceConnectorOriginationResponse.struct_class = Types::GetVoiceConnectorOriginationResponse

    GetVoiceConnectorRequest.add_member(:voice_connector_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "voiceConnectorId"))
    GetVoiceConnectorRequest.struct_class = Types::GetVoiceConnectorRequest

    GetVoiceConnectorResponse.add_member(:voice_connector, Shapes::ShapeRef.new(shape: VoiceConnector, location_name: "VoiceConnector"))
    GetVoiceConnectorResponse.struct_class = Types::GetVoiceConnectorResponse

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

    ListBotsRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "accountId"))
    ListBotsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ResultMax, location: "querystring", location_name: "max-results"))
    ListBotsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "next-token"))
    ListBotsRequest.struct_class = Types::ListBotsRequest

    ListBotsResponse.add_member(:bots, Shapes::ShapeRef.new(shape: BotList, location_name: "Bots"))
    ListBotsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListBotsResponse.struct_class = Types::ListBotsResponse

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

    ListUsersRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "accountId"))
    ListUsersRequest.add_member(:user_email, Shapes::ShapeRef.new(shape: EmailAddress, location: "querystring", location_name: "user-email"))
    ListUsersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ProfileServiceMaxResults, location: "querystring", location_name: "max-results"))
    ListUsersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "next-token"))
    ListUsersRequest.struct_class = Types::ListUsersRequest

    ListUsersResponse.add_member(:users, Shapes::ShapeRef.new(shape: UserList, location_name: "Users"))
    ListUsersResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListUsersResponse.struct_class = Types::ListUsersResponse

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

    LogoutUserRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "accountId"))
    LogoutUserRequest.add_member(:user_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "userId"))
    LogoutUserRequest.struct_class = Types::LogoutUserRequest

    LogoutUserResponse.struct_class = Types::LogoutUserResponse

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

    PhoneNumber.add_member(:phone_number_id, Shapes::ShapeRef.new(shape: String, location_name: "PhoneNumberId"))
    PhoneNumber.add_member(:e164_phone_number, Shapes::ShapeRef.new(shape: E164PhoneNumber, location_name: "E164PhoneNumber"))
    PhoneNumber.add_member(:product_type, Shapes::ShapeRef.new(shape: PhoneNumberProductType, location_name: "ProductType"))
    PhoneNumber.add_member(:status, Shapes::ShapeRef.new(shape: PhoneNumberStatus, location_name: "Status"))
    PhoneNumber.add_member(:capabilities, Shapes::ShapeRef.new(shape: PhoneNumberCapabilities, location_name: "Capabilities"))
    PhoneNumber.add_member(:associations, Shapes::ShapeRef.new(shape: PhoneNumberAssociationList, location_name: "Associations"))
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

    PutEventsConfigurationRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "accountId"))
    PutEventsConfigurationRequest.add_member(:bot_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "botId"))
    PutEventsConfigurationRequest.add_member(:outbound_events_https_endpoint, Shapes::ShapeRef.new(shape: SensitiveString, location_name: "OutboundEventsHTTPSEndpoint"))
    PutEventsConfigurationRequest.add_member(:lambda_function_arn, Shapes::ShapeRef.new(shape: SensitiveString, location_name: "LambdaFunctionArn"))
    PutEventsConfigurationRequest.struct_class = Types::PutEventsConfigurationRequest

    PutEventsConfigurationResponse.add_member(:events_configuration, Shapes::ShapeRef.new(shape: EventsConfiguration, location_name: "EventsConfiguration"))
    PutEventsConfigurationResponse.struct_class = Types::PutEventsConfigurationResponse

    PutVoiceConnectorOriginationRequest.add_member(:voice_connector_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "voiceConnectorId"))
    PutVoiceConnectorOriginationRequest.add_member(:origination, Shapes::ShapeRef.new(shape: Origination, required: true, location_name: "Origination"))
    PutVoiceConnectorOriginationRequest.struct_class = Types::PutVoiceConnectorOriginationRequest

    PutVoiceConnectorOriginationResponse.add_member(:origination, Shapes::ShapeRef.new(shape: Origination, location_name: "Origination"))
    PutVoiceConnectorOriginationResponse.struct_class = Types::PutVoiceConnectorOriginationResponse

    PutVoiceConnectorTerminationCredentialsRequest.add_member(:voice_connector_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "voiceConnectorId"))
    PutVoiceConnectorTerminationCredentialsRequest.add_member(:credentials, Shapes::ShapeRef.new(shape: CredentialList, location_name: "Credentials"))
    PutVoiceConnectorTerminationCredentialsRequest.struct_class = Types::PutVoiceConnectorTerminationCredentialsRequest

    PutVoiceConnectorTerminationRequest.add_member(:voice_connector_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "voiceConnectorId"))
    PutVoiceConnectorTerminationRequest.add_member(:termination, Shapes::ShapeRef.new(shape: Termination, required: true, location_name: "Termination"))
    PutVoiceConnectorTerminationRequest.struct_class = Types::PutVoiceConnectorTerminationRequest

    PutVoiceConnectorTerminationResponse.add_member(:termination, Shapes::ShapeRef.new(shape: Termination, location_name: "Termination"))
    PutVoiceConnectorTerminationResponse.struct_class = Types::PutVoiceConnectorTerminationResponse

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

    SearchAvailablePhoneNumbersRequest.add_member(:area_code, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "area-code"))
    SearchAvailablePhoneNumbersRequest.add_member(:city, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "city"))
    SearchAvailablePhoneNumbersRequest.add_member(:country, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "country"))
    SearchAvailablePhoneNumbersRequest.add_member(:state, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "state"))
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

    StringList.member = Shapes::ShapeRef.new(shape: String)

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
    UpdatePhoneNumberRequest.struct_class = Types::UpdatePhoneNumberRequest

    UpdatePhoneNumberRequestItem.add_member(:phone_number_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "PhoneNumberId"))
    UpdatePhoneNumberRequestItem.add_member(:product_type, Shapes::ShapeRef.new(shape: PhoneNumberProductType, location_name: "ProductType"))
    UpdatePhoneNumberRequestItem.struct_class = Types::UpdatePhoneNumberRequestItem

    UpdatePhoneNumberRequestItemList.member = Shapes::ShapeRef.new(shape: UpdatePhoneNumberRequestItem)

    UpdatePhoneNumberResponse.add_member(:phone_number, Shapes::ShapeRef.new(shape: PhoneNumber, location_name: "PhoneNumber"))
    UpdatePhoneNumberResponse.struct_class = Types::UpdatePhoneNumberResponse

    UpdateUserRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "accountId"))
    UpdateUserRequest.add_member(:user_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "userId"))
    UpdateUserRequest.add_member(:license_type, Shapes::ShapeRef.new(shape: License, location_name: "LicenseType"))
    UpdateUserRequest.struct_class = Types::UpdateUserRequest

    UpdateUserRequestItem.add_member(:user_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "UserId"))
    UpdateUserRequestItem.add_member(:license_type, Shapes::ShapeRef.new(shape: License, location_name: "LicenseType"))
    UpdateUserRequestItem.struct_class = Types::UpdateUserRequestItem

    UpdateUserRequestItemList.member = Shapes::ShapeRef.new(shape: UpdateUserRequestItem)

    UpdateUserResponse.add_member(:user, Shapes::ShapeRef.new(shape: User, location_name: "User"))
    UpdateUserResponse.struct_class = Types::UpdateUserResponse

    UpdateUserSettingsRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "accountId"))
    UpdateUserSettingsRequest.add_member(:user_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "userId"))
    UpdateUserSettingsRequest.add_member(:user_settings, Shapes::ShapeRef.new(shape: UserSettings, required: true, location_name: "UserSettings"))
    UpdateUserSettingsRequest.struct_class = Types::UpdateUserSettingsRequest

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
    User.add_member(:user_registration_status, Shapes::ShapeRef.new(shape: RegistrationStatus, location_name: "UserRegistrationStatus"))
    User.add_member(:user_invitation_status, Shapes::ShapeRef.new(shape: InviteStatus, location_name: "UserInvitationStatus"))
    User.add_member(:registered_on, Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: "RegisteredOn"))
    User.add_member(:invited_on, Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: "InvitedOn"))
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
    VoiceConnector.add_member(:name, Shapes::ShapeRef.new(shape: VoiceConnectorName, location_name: "Name"))
    VoiceConnector.add_member(:outbound_host_name, Shapes::ShapeRef.new(shape: String, location_name: "OutboundHostName"))
    VoiceConnector.add_member(:require_encryption, Shapes::ShapeRef.new(shape: Boolean, location_name: "RequireEncryption"))
    VoiceConnector.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: "CreatedTimestamp"))
    VoiceConnector.add_member(:updated_timestamp, Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: "UpdatedTimestamp"))
    VoiceConnector.struct_class = Types::VoiceConnector

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
      end)

      api.add_operation(:create_phone_number_order, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreatePhoneNumberOrder"
        o.http_method = "POST"
        o.http_request_uri = "/phone-number-orders"
        o.input = Shapes::ShapeRef.new(shape: CreatePhoneNumberOrderRequest)
        o.output = Shapes::ShapeRef.new(shape: CreatePhoneNumberOrderResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
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
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
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
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:search_available_phone_numbers, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SearchAvailablePhoneNumbers"
        o.http_method = "GET"
        o.http_request_uri = "/search?type=phone-numbers"
        o.input = Shapes::ShapeRef.new(shape: SearchAvailablePhoneNumbersRequest)
        o.output = Shapes::ShapeRef.new(shape: SearchAvailablePhoneNumbersResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
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
    end

  end
end
