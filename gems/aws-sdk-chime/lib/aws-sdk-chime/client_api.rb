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
    BadRequestException = Shapes::StructureShape.new(name: 'BadRequestException')
    BatchSuspendUserRequest = Shapes::StructureShape.new(name: 'BatchSuspendUserRequest')
    BatchSuspendUserResponse = Shapes::StructureShape.new(name: 'BatchSuspendUserResponse')
    BatchUnsuspendUserRequest = Shapes::StructureShape.new(name: 'BatchUnsuspendUserRequest')
    BatchUnsuspendUserResponse = Shapes::StructureShape.new(name: 'BatchUnsuspendUserResponse')
    BatchUpdateUserRequest = Shapes::StructureShape.new(name: 'BatchUpdateUserRequest')
    BatchUpdateUserResponse = Shapes::StructureShape.new(name: 'BatchUpdateUserResponse')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    CreateAccountRequest = Shapes::StructureShape.new(name: 'CreateAccountRequest')
    CreateAccountResponse = Shapes::StructureShape.new(name: 'CreateAccountResponse')
    DeleteAccountRequest = Shapes::StructureShape.new(name: 'DeleteAccountRequest')
    DeleteAccountResponse = Shapes::StructureShape.new(name: 'DeleteAccountResponse')
    EmailAddress = Shapes::StringShape.new(name: 'EmailAddress')
    EmailStatus = Shapes::StringShape.new(name: 'EmailStatus')
    ErrorCode = Shapes::StringShape.new(name: 'ErrorCode')
    ForbiddenException = Shapes::StructureShape.new(name: 'ForbiddenException')
    GetAccountRequest = Shapes::StructureShape.new(name: 'GetAccountRequest')
    GetAccountResponse = Shapes::StructureShape.new(name: 'GetAccountResponse')
    GetAccountSettingsRequest = Shapes::StructureShape.new(name: 'GetAccountSettingsRequest')
    GetAccountSettingsResponse = Shapes::StructureShape.new(name: 'GetAccountSettingsResponse')
    GetUserRequest = Shapes::StructureShape.new(name: 'GetUserRequest')
    GetUserResponse = Shapes::StructureShape.new(name: 'GetUserResponse')
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
    ListUsersRequest = Shapes::StructureShape.new(name: 'ListUsersRequest')
    ListUsersResponse = Shapes::StructureShape.new(name: 'ListUsersResponse')
    LogoutUserRequest = Shapes::StructureShape.new(name: 'LogoutUserRequest')
    LogoutUserResponse = Shapes::StructureShape.new(name: 'LogoutUserResponse')
    NonEmptyString = Shapes::StringShape.new(name: 'NonEmptyString')
    NotFoundException = Shapes::StructureShape.new(name: 'NotFoundException')
    ProfileServiceMaxResults = Shapes::IntegerShape.new(name: 'ProfileServiceMaxResults')
    RegistrationStatus = Shapes::StringShape.new(name: 'RegistrationStatus')
    ResetPersonalPINRequest = Shapes::StructureShape.new(name: 'ResetPersonalPINRequest')
    ResetPersonalPINResponse = Shapes::StructureShape.new(name: 'ResetPersonalPINResponse')
    SensitiveString = Shapes::StringShape.new(name: 'SensitiveString')
    ServiceFailureException = Shapes::StructureShape.new(name: 'ServiceFailureException')
    ServiceUnavailableException = Shapes::StructureShape.new(name: 'ServiceUnavailableException')
    String = Shapes::StringShape.new(name: 'String')
    ThrottledClientException = Shapes::StructureShape.new(name: 'ThrottledClientException')
    UnauthorizedClientException = Shapes::StructureShape.new(name: 'UnauthorizedClientException')
    UnprocessableEntityException = Shapes::StructureShape.new(name: 'UnprocessableEntityException')
    UpdateAccountRequest = Shapes::StructureShape.new(name: 'UpdateAccountRequest')
    UpdateAccountResponse = Shapes::StructureShape.new(name: 'UpdateAccountResponse')
    UpdateAccountSettingsRequest = Shapes::StructureShape.new(name: 'UpdateAccountSettingsRequest')
    UpdateAccountSettingsResponse = Shapes::StructureShape.new(name: 'UpdateAccountSettingsResponse')
    UpdateUserRequest = Shapes::StructureShape.new(name: 'UpdateUserRequest')
    UpdateUserRequestItem = Shapes::StructureShape.new(name: 'UpdateUserRequestItem')
    UpdateUserRequestItemList = Shapes::ListShape.new(name: 'UpdateUserRequestItemList')
    UpdateUserResponse = Shapes::StructureShape.new(name: 'UpdateUserResponse')
    User = Shapes::StructureShape.new(name: 'User')
    UserEmailList = Shapes::ListShape.new(name: 'UserEmailList')
    UserError = Shapes::StructureShape.new(name: 'UserError')
    UserErrorList = Shapes::ListShape.new(name: 'UserErrorList')
    UserIdList = Shapes::ListShape.new(name: 'UserIdList')
    UserList = Shapes::ListShape.new(name: 'UserList')

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

    BatchUpdateUserRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "accountId"))
    BatchUpdateUserRequest.add_member(:update_user_request_items, Shapes::ShapeRef.new(shape: UpdateUserRequestItemList, required: true, location_name: "UpdateUserRequestItems"))
    BatchUpdateUserRequest.struct_class = Types::BatchUpdateUserRequest

    BatchUpdateUserResponse.add_member(:user_errors, Shapes::ShapeRef.new(shape: UserErrorList, location_name: "UserErrors"))
    BatchUpdateUserResponse.struct_class = Types::BatchUpdateUserResponse

    CreateAccountRequest.add_member(:name, Shapes::ShapeRef.new(shape: AccountName, required: true, location_name: "Name"))
    CreateAccountRequest.struct_class = Types::CreateAccountRequest

    CreateAccountResponse.add_member(:account, Shapes::ShapeRef.new(shape: Account, location_name: "Account"))
    CreateAccountResponse.struct_class = Types::CreateAccountResponse

    DeleteAccountRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "accountId"))
    DeleteAccountRequest.struct_class = Types::DeleteAccountRequest

    DeleteAccountResponse.struct_class = Types::DeleteAccountResponse

    GetAccountRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "accountId"))
    GetAccountRequest.struct_class = Types::GetAccountRequest

    GetAccountResponse.add_member(:account, Shapes::ShapeRef.new(shape: Account, location_name: "Account"))
    GetAccountResponse.struct_class = Types::GetAccountResponse

    GetAccountSettingsRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "accountId"))
    GetAccountSettingsRequest.struct_class = Types::GetAccountSettingsRequest

    GetAccountSettingsResponse.add_member(:account_settings, Shapes::ShapeRef.new(shape: AccountSettings, location_name: "AccountSettings"))
    GetAccountSettingsResponse.struct_class = Types::GetAccountSettingsResponse

    GetUserRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "accountId"))
    GetUserRequest.add_member(:user_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "userId"))
    GetUserRequest.struct_class = Types::GetUserRequest

    GetUserResponse.add_member(:user, Shapes::ShapeRef.new(shape: User, location_name: "User"))
    GetUserResponse.struct_class = Types::GetUserResponse

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

    ListUsersRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "accountId"))
    ListUsersRequest.add_member(:user_email, Shapes::ShapeRef.new(shape: EmailAddress, location: "querystring", location_name: "user-email"))
    ListUsersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ProfileServiceMaxResults, location: "querystring", location_name: "max-results"))
    ListUsersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "next-token"))
    ListUsersRequest.struct_class = Types::ListUsersRequest

    ListUsersResponse.add_member(:users, Shapes::ShapeRef.new(shape: UserList, location_name: "Users"))
    ListUsersResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListUsersResponse.struct_class = Types::ListUsersResponse

    LogoutUserRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "accountId"))
    LogoutUserRequest.add_member(:user_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "userId"))
    LogoutUserRequest.struct_class = Types::LogoutUserRequest

    LogoutUserResponse.struct_class = Types::LogoutUserResponse

    ResetPersonalPINRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "accountId"))
    ResetPersonalPINRequest.add_member(:user_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "userId"))
    ResetPersonalPINRequest.struct_class = Types::ResetPersonalPINRequest

    ResetPersonalPINResponse.add_member(:user, Shapes::ShapeRef.new(shape: User, location_name: "User"))
    ResetPersonalPINResponse.struct_class = Types::ResetPersonalPINResponse

    UpdateAccountRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "accountId"))
    UpdateAccountRequest.add_member(:name, Shapes::ShapeRef.new(shape: AccountName, location_name: "Name"))
    UpdateAccountRequest.struct_class = Types::UpdateAccountRequest

    UpdateAccountResponse.add_member(:account, Shapes::ShapeRef.new(shape: Account, location_name: "Account"))
    UpdateAccountResponse.struct_class = Types::UpdateAccountResponse

    UpdateAccountSettingsRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "accountId"))
    UpdateAccountSettingsRequest.add_member(:account_settings, Shapes::ShapeRef.new(shape: AccountSettings, required: true, location_name: "AccountSettings"))
    UpdateAccountSettingsRequest.struct_class = Types::UpdateAccountSettingsRequest

    UpdateAccountSettingsResponse.struct_class = Types::UpdateAccountSettingsResponse

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

    User.add_member(:user_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "UserId"))
    User.add_member(:account_id, Shapes::ShapeRef.new(shape: String, location_name: "AccountId"))
    User.add_member(:primary_email, Shapes::ShapeRef.new(shape: EmailAddress, location_name: "PrimaryEmail"))
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

      api.add_operation(:batch_suspend_user, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchSuspendUser"
        o.http_method = "POST"
        o.http_request_uri = "/console/accounts/{accountId}/users?operation=suspend"
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
        o.http_request_uri = "/console/accounts/{accountId}/users?operation=unsuspend"
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

      api.add_operation(:batch_update_user, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchUpdateUser"
        o.http_method = "POST"
        o.http_request_uri = "/console/accounts/{accountId}/users"
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
        o.http_request_uri = "/console/accounts"
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

      api.add_operation(:delete_account, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteAccount"
        o.http_method = "DELETE"
        o.http_request_uri = "/console/accounts/{accountId}"
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

      api.add_operation(:get_account, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAccount"
        o.http_method = "GET"
        o.http_request_uri = "/console/accounts/{accountId}"
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
        o.http_request_uri = "/console/accounts/{accountId}/settings"
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

      api.add_operation(:get_user, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetUser"
        o.http_method = "GET"
        o.http_request_uri = "/console/accounts/{accountId}/users/{userId}"
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

      api.add_operation(:invite_users, Seahorse::Model::Operation.new.tap do |o|
        o.name = "InviteUsers"
        o.http_method = "POST"
        o.http_request_uri = "/console/accounts/{accountId}/users?operation=add"
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
        o.http_request_uri = "/console/accounts"
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

      api.add_operation(:list_users, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListUsers"
        o.http_method = "GET"
        o.http_request_uri = "/console/accounts/{accountId}/users"
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

      api.add_operation(:logout_user, Seahorse::Model::Operation.new.tap do |o|
        o.name = "LogoutUser"
        o.http_method = "POST"
        o.http_request_uri = "/console/accounts/{accountId}/users/{userId}?operation=logout"
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

      api.add_operation(:reset_personal_pin, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ResetPersonalPIN"
        o.http_method = "POST"
        o.http_request_uri = "/console/accounts/{accountId}/users/{userId}?operation=reset-personal-pin"
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

      api.add_operation(:update_account, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateAccount"
        o.http_method = "POST"
        o.http_request_uri = "/console/accounts/{accountId}"
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
        o.http_request_uri = "/console/accounts/{accountId}/settings"
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

      api.add_operation(:update_user, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateUser"
        o.http_method = "POST"
        o.http_request_uri = "/console/accounts/{accountId}/users/{userId}"
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
    end

  end
end
