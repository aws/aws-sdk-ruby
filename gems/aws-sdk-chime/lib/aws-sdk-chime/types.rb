# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Chime
  module Types

    # The Amazon Chime account details. An AWS account can have multiple
    # Amazon Chime accounts.
    #
    # @!attribute [rw] aws_account_id
    #   The AWS account ID.
    #   @return [String]
    #
    # @!attribute [rw] account_id
    #   The Amazon Chime account ID.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The Amazon Chime account name.
    #   @return [String]
    #
    # @!attribute [rw] account_type
    #   The Amazon Chime account type. For more information about different
    #   account types, see [Managing Your Amazon Chime Accounts][1] in the
    #   *Amazon Chime Administration Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/chime/latest/ag/manage-chime-account.html
    #   @return [String]
    #
    # @!attribute [rw] created_timestamp
    #   The Amazon Chime account creation timestamp, in ISO 8601 format.
    #   @return [Time]
    #
    # @!attribute [rw] default_license
    #   The default license for the Amazon Chime account.
    #   @return [String]
    #
    # @!attribute [rw] supported_licenses
    #   Supported licenses for the Amazon Chime account.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/Account AWS API Documentation
    #
    class Account < Struct.new(
      :aws_account_id,
      :account_id,
      :name,
      :account_type,
      :created_timestamp,
      :default_license,
      :supported_licenses)
      include Aws::Structure
    end

    # Settings related to the Amazon Chime account. This includes settings
    # that start or stop remote control of shared screens, or start or stop
    # the dial-out option in the Amazon Chime web application. For more
    # information about these settings, see [Use the Policies Page][1] in
    # the *Amazon Chime Administration Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/chime/latest/ag/policies.html
    #
    # @note When making an API call, you may pass AccountSettings
    #   data as a hash:
    #
    #       {
    #         disable_remote_control: false,
    #         enable_dial_out: false,
    #       }
    #
    # @!attribute [rw] disable_remote_control
    #   Setting that stops or starts remote control of shared screens during
    #   meetings.
    #   @return [Boolean]
    #
    # @!attribute [rw] enable_dial_out
    #   Setting that allows meeting participants to choose the **Call me at
    #   a phone number** option. For more information, see [Join a Meeting
    #   without the Amazon Chime App][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/chime/latest/ug/chime-join-meeting.html
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/AccountSettings AWS API Documentation
    #
    class AccountSettings < Struct.new(
      :disable_remote_control,
      :enable_dial_out)
      include Aws::Structure
    end

    # @note When making an API call, you may pass BatchSuspendUserRequest
    #   data as a hash:
    #
    #       {
    #         account_id: "NonEmptyString", # required
    #         user_id_list: ["NonEmptyString"], # required
    #       }
    #
    # @!attribute [rw] account_id
    #   The Amazon Chime account ID.
    #   @return [String]
    #
    # @!attribute [rw] user_id_list
    #   The request containing the user IDs to suspend.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/BatchSuspendUserRequest AWS API Documentation
    #
    class BatchSuspendUserRequest < Struct.new(
      :account_id,
      :user_id_list)
      include Aws::Structure
    end

    # @!attribute [rw] user_errors
    #   If the BatchSuspendUser action fails for one or more of the user IDs
    #   in the request, a list of the user IDs is returned, along with error
    #   codes and error messages.
    #   @return [Array<Types::UserError>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/BatchSuspendUserResponse AWS API Documentation
    #
    class BatchSuspendUserResponse < Struct.new(
      :user_errors)
      include Aws::Structure
    end

    # @note When making an API call, you may pass BatchUnsuspendUserRequest
    #   data as a hash:
    #
    #       {
    #         account_id: "NonEmptyString", # required
    #         user_id_list: ["NonEmptyString"], # required
    #       }
    #
    # @!attribute [rw] account_id
    #   The Amazon Chime account ID.
    #   @return [String]
    #
    # @!attribute [rw] user_id_list
    #   The request containing the user IDs to unsuspend.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/BatchUnsuspendUserRequest AWS API Documentation
    #
    class BatchUnsuspendUserRequest < Struct.new(
      :account_id,
      :user_id_list)
      include Aws::Structure
    end

    # @!attribute [rw] user_errors
    #   If the BatchUnsuspendUser action fails for one or more of the user
    #   IDs in the request, a list of the user IDs is returned, along with
    #   error codes and error messages.
    #   @return [Array<Types::UserError>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/BatchUnsuspendUserResponse AWS API Documentation
    #
    class BatchUnsuspendUserResponse < Struct.new(
      :user_errors)
      include Aws::Structure
    end

    # @note When making an API call, you may pass BatchUpdateUserRequest
    #   data as a hash:
    #
    #       {
    #         account_id: "NonEmptyString", # required
    #         update_user_request_items: [ # required
    #           {
    #             user_id: "NonEmptyString", # required
    #             license_type: "Basic", # accepts Basic, Plus, Pro, ProTrial
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] account_id
    #   The Amazon Chime account ID.
    #   @return [String]
    #
    # @!attribute [rw] update_user_request_items
    #   The request containing the user IDs and details to update.
    #   @return [Array<Types::UpdateUserRequestItem>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/BatchUpdateUserRequest AWS API Documentation
    #
    class BatchUpdateUserRequest < Struct.new(
      :account_id,
      :update_user_request_items)
      include Aws::Structure
    end

    # @!attribute [rw] user_errors
    #   If the BatchUpdateUser action fails for one or more of the user IDs
    #   in the request, a list of the user IDs is returned, along with error
    #   codes and error messages.
    #   @return [Array<Types::UserError>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/BatchUpdateUserResponse AWS API Documentation
    #
    class BatchUpdateUserResponse < Struct.new(
      :user_errors)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateAccountRequest
    #   data as a hash:
    #
    #       {
    #         name: "AccountName", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the Amazon Chime account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/CreateAccountRequest AWS API Documentation
    #
    class CreateAccountRequest < Struct.new(
      :name)
      include Aws::Structure
    end

    # @!attribute [rw] account
    #   The Amazon Chime account details.
    #   @return [Types::Account]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/CreateAccountResponse AWS API Documentation
    #
    class CreateAccountResponse < Struct.new(
      :account)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteAccountRequest
    #   data as a hash:
    #
    #       {
    #         account_id: "NonEmptyString", # required
    #       }
    #
    # @!attribute [rw] account_id
    #   The Amazon Chime account ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/DeleteAccountRequest AWS API Documentation
    #
    class DeleteAccountRequest < Struct.new(
      :account_id)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/DeleteAccountResponse AWS API Documentation
    #
    class DeleteAccountResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass GetAccountRequest
    #   data as a hash:
    #
    #       {
    #         account_id: "NonEmptyString", # required
    #       }
    #
    # @!attribute [rw] account_id
    #   The Amazon Chime account ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/GetAccountRequest AWS API Documentation
    #
    class GetAccountRequest < Struct.new(
      :account_id)
      include Aws::Structure
    end

    # @!attribute [rw] account
    #   The Amazon Chime account details.
    #   @return [Types::Account]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/GetAccountResponse AWS API Documentation
    #
    class GetAccountResponse < Struct.new(
      :account)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetAccountSettingsRequest
    #   data as a hash:
    #
    #       {
    #         account_id: "NonEmptyString", # required
    #       }
    #
    # @!attribute [rw] account_id
    #   The Amazon Chime account ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/GetAccountSettingsRequest AWS API Documentation
    #
    class GetAccountSettingsRequest < Struct.new(
      :account_id)
      include Aws::Structure
    end

    # @!attribute [rw] account_settings
    #   The Amazon Chime account settings.
    #   @return [Types::AccountSettings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/GetAccountSettingsResponse AWS API Documentation
    #
    class GetAccountSettingsResponse < Struct.new(
      :account_settings)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetUserRequest
    #   data as a hash:
    #
    #       {
    #         account_id: "NonEmptyString", # required
    #         user_id: "NonEmptyString", # required
    #       }
    #
    # @!attribute [rw] account_id
    #   The Amazon Chime account ID.
    #   @return [String]
    #
    # @!attribute [rw] user_id
    #   The user ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/GetUserRequest AWS API Documentation
    #
    class GetUserRequest < Struct.new(
      :account_id,
      :user_id)
      include Aws::Structure
    end

    # @!attribute [rw] user
    #   The user details.
    #   @return [Types::User]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/GetUserResponse AWS API Documentation
    #
    class GetUserResponse < Struct.new(
      :user)
      include Aws::Structure
    end

    # Invitation object returned after emailing users to invite them to join
    # the Amazon Chime `Team` account.
    #
    # @!attribute [rw] invite_id
    #   The invite ID.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the invite.
    #   @return [String]
    #
    # @!attribute [rw] email_address
    #   The email address to which the invite is sent.
    #   @return [String]
    #
    # @!attribute [rw] email_status
    #   The status of the invite email.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/Invite AWS API Documentation
    #
    class Invite < Struct.new(
      :invite_id,
      :status,
      :email_address,
      :email_status)
      include Aws::Structure
    end

    # @note When making an API call, you may pass InviteUsersRequest
    #   data as a hash:
    #
    #       {
    #         account_id: "NonEmptyString", # required
    #         user_email_list: ["EmailAddress"], # required
    #       }
    #
    # @!attribute [rw] account_id
    #   The Amazon Chime account ID.
    #   @return [String]
    #
    # @!attribute [rw] user_email_list
    #   The user email addresses to which to send the invite.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/InviteUsersRequest AWS API Documentation
    #
    class InviteUsersRequest < Struct.new(
      :account_id,
      :user_email_list)
      include Aws::Structure
    end

    # @!attribute [rw] invites
    #   The invite details.
    #   @return [Array<Types::Invite>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/InviteUsersResponse AWS API Documentation
    #
    class InviteUsersResponse < Struct.new(
      :invites)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListAccountsRequest
    #   data as a hash:
    #
    #       {
    #         name: "AccountName",
    #         user_email: "EmailAddress",
    #         next_token: "String",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] name
    #   Amazon Chime account name prefix with which to filter results.
    #   @return [String]
    #
    # @!attribute [rw] user_email
    #   User email address with which to filter results.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single call. Defaults
    #   to 100.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/ListAccountsRequest AWS API Documentation
    #
    class ListAccountsRequest < Struct.new(
      :name,
      :user_email,
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] accounts
    #   List of Amazon Chime accounts and account details.
    #   @return [Array<Types::Account>]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/ListAccountsResponse AWS API Documentation
    #
    class ListAccountsResponse < Struct.new(
      :accounts,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListUsersRequest
    #   data as a hash:
    #
    #       {
    #         account_id: "NonEmptyString", # required
    #         user_email: "EmailAddress",
    #         max_results: 1,
    #         next_token: "String",
    #       }
    #
    # @!attribute [rw] account_id
    #   The Amazon Chime account ID.
    #   @return [String]
    #
    # @!attribute [rw] user_email
    #   Optional. The user email address used to filter results. Maximum 1.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single call. Defaults
    #   to 100.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/ListUsersRequest AWS API Documentation
    #
    class ListUsersRequest < Struct.new(
      :account_id,
      :user_email,
      :max_results,
      :next_token)
      include Aws::Structure
    end

    # @!attribute [rw] users
    #   List of users and user details.
    #   @return [Array<Types::User>]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/ListUsersResponse AWS API Documentation
    #
    class ListUsersResponse < Struct.new(
      :users,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass LogoutUserRequest
    #   data as a hash:
    #
    #       {
    #         account_id: "NonEmptyString", # required
    #         user_id: "NonEmptyString", # required
    #       }
    #
    # @!attribute [rw] account_id
    #   The Amazon Chime account ID.
    #   @return [String]
    #
    # @!attribute [rw] user_id
    #   The user ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/LogoutUserRequest AWS API Documentation
    #
    class LogoutUserRequest < Struct.new(
      :account_id,
      :user_id)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/LogoutUserResponse AWS API Documentation
    #
    class LogoutUserResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass ResetPersonalPINRequest
    #   data as a hash:
    #
    #       {
    #         account_id: "NonEmptyString", # required
    #         user_id: "NonEmptyString", # required
    #       }
    #
    # @!attribute [rw] account_id
    #   The Amazon Chime account ID.
    #   @return [String]
    #
    # @!attribute [rw] user_id
    #   The user ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/ResetPersonalPINRequest AWS API Documentation
    #
    class ResetPersonalPINRequest < Struct.new(
      :account_id,
      :user_id)
      include Aws::Structure
    end

    # @!attribute [rw] user
    #   The user details and new personal meeting PIN.
    #   @return [Types::User]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/ResetPersonalPINResponse AWS API Documentation
    #
    class ResetPersonalPINResponse < Struct.new(
      :user)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateAccountRequest
    #   data as a hash:
    #
    #       {
    #         account_id: "NonEmptyString", # required
    #         name: "AccountName",
    #       }
    #
    # @!attribute [rw] account_id
    #   The Amazon Chime account ID.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The new name for the specified Amazon Chime account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/UpdateAccountRequest AWS API Documentation
    #
    class UpdateAccountRequest < Struct.new(
      :account_id,
      :name)
      include Aws::Structure
    end

    # @!attribute [rw] account
    #   The updated Amazon Chime account details.
    #   @return [Types::Account]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/UpdateAccountResponse AWS API Documentation
    #
    class UpdateAccountResponse < Struct.new(
      :account)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateAccountSettingsRequest
    #   data as a hash:
    #
    #       {
    #         account_id: "NonEmptyString", # required
    #         account_settings: { # required
    #           disable_remote_control: false,
    #           enable_dial_out: false,
    #         },
    #       }
    #
    # @!attribute [rw] account_id
    #   The Amazon Chime account ID.
    #   @return [String]
    #
    # @!attribute [rw] account_settings
    #   The Amazon Chime account settings to update.
    #   @return [Types::AccountSettings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/UpdateAccountSettingsRequest AWS API Documentation
    #
    class UpdateAccountSettingsRequest < Struct.new(
      :account_id,
      :account_settings)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/UpdateAccountSettingsResponse AWS API Documentation
    #
    class UpdateAccountSettingsResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UpdateUserRequest
    #   data as a hash:
    #
    #       {
    #         account_id: "NonEmptyString", # required
    #         user_id: "NonEmptyString", # required
    #         license_type: "Basic", # accepts Basic, Plus, Pro, ProTrial
    #       }
    #
    # @!attribute [rw] account_id
    #   The Amazon Chime account ID.
    #   @return [String]
    #
    # @!attribute [rw] user_id
    #   The user ID.
    #   @return [String]
    #
    # @!attribute [rw] license_type
    #   The user license type to update. This must be a supported license
    #   type for the Amazon Chime account that the user belongs to.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/UpdateUserRequest AWS API Documentation
    #
    class UpdateUserRequest < Struct.new(
      :account_id,
      :user_id,
      :license_type)
      include Aws::Structure
    end

    # The user ID and user fields to update, used with the BatchUpdateUser
    # action.
    #
    # @note When making an API call, you may pass UpdateUserRequestItem
    #   data as a hash:
    #
    #       {
    #         user_id: "NonEmptyString", # required
    #         license_type: "Basic", # accepts Basic, Plus, Pro, ProTrial
    #       }
    #
    # @!attribute [rw] user_id
    #   The user ID.
    #   @return [String]
    #
    # @!attribute [rw] license_type
    #   The user license type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/UpdateUserRequestItem AWS API Documentation
    #
    class UpdateUserRequestItem < Struct.new(
      :user_id,
      :license_type)
      include Aws::Structure
    end

    # @!attribute [rw] user
    #   The updated user details.
    #   @return [Types::User]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/UpdateUserResponse AWS API Documentation
    #
    class UpdateUserResponse < Struct.new(
      :user)
      include Aws::Structure
    end

    # The user on the Amazon Chime account.
    #
    # @!attribute [rw] user_id
    #   The user ID.
    #   @return [String]
    #
    # @!attribute [rw] account_id
    #   The Amazon Chime account ID.
    #   @return [String]
    #
    # @!attribute [rw] primary_email
    #   The primary email address of the user.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The display name of the user.
    #   @return [String]
    #
    # @!attribute [rw] license_type
    #   The license type for the user.
    #   @return [String]
    #
    # @!attribute [rw] user_registration_status
    #   The user registration status.
    #   @return [String]
    #
    # @!attribute [rw] user_invitation_status
    #   The user invite status.
    #   @return [String]
    #
    # @!attribute [rw] registered_on
    #   Date and time when the user is registered, in ISO 8601 format.
    #   @return [Time]
    #
    # @!attribute [rw] invited_on
    #   Date and time when the user is invited to the Amazon Chime account,
    #   in ISO 8601 format.
    #   @return [Time]
    #
    # @!attribute [rw] personal_pin
    #   The user's personal meeting PIN.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/User AWS API Documentation
    #
    class User < Struct.new(
      :user_id,
      :account_id,
      :primary_email,
      :display_name,
      :license_type,
      :user_registration_status,
      :user_invitation_status,
      :registered_on,
      :invited_on,
      :personal_pin)
      include Aws::Structure
    end

    # The list of errors returned when errors are encountered during the
    # BatchSuspendUser, BatchUnsuspendUser, or BatchUpdateUser actions. This
    # includes user IDs, error codes, and error messages.
    #
    # @!attribute [rw] user_id
    #   The user ID for which the action failed.
    #   @return [String]
    #
    # @!attribute [rw] error_code
    #   The error code.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   The error message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/UserError AWS API Documentation
    #
    class UserError < Struct.new(
      :user_id,
      :error_code,
      :error_message)
      include Aws::Structure
    end

  end
end
