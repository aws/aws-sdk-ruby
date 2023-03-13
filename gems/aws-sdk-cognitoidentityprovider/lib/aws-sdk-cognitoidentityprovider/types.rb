# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::CognitoIdentityProvider
  module Types

    # The data type for `AccountRecoverySetting`.
    #
    # @!attribute [rw] recovery_mechanisms
    #   The list of `RecoveryOptionTypes`.
    #   @return [Array<Types::RecoveryOptionType>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AccountRecoverySettingType AWS API Documentation
    #
    class AccountRecoverySettingType < Struct.new(
      :recovery_mechanisms)
      SENSITIVE = []
      include Aws::Structure
    end

    # Account takeover action type.
    #
    # @!attribute [rw] notify
    #   Flag specifying whether to send a notification.
    #   @return [Boolean]
    #
    # @!attribute [rw] event_action
    #   The action to take in response to the account takeover action. Valid
    #   values are as follows:
    #
    #   * `BLOCK` Choosing this action will block the request.
    #
    #   * `MFA_IF_CONFIGURED` Present an MFA challenge if user has
    #     configured it, else allow the request.
    #
    #   * `MFA_REQUIRED` Present an MFA challenge if user has configured it,
    #     else block the request.
    #
    #   * `NO_ACTION` Allow the user to sign in.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AccountTakeoverActionType AWS API Documentation
    #
    class AccountTakeoverActionType < Struct.new(
      :notify,
      :event_action)
      SENSITIVE = []
      include Aws::Structure
    end

    # Account takeover actions type.
    #
    # @!attribute [rw] low_action
    #   Action to take for a low risk.
    #   @return [Types::AccountTakeoverActionType]
    #
    # @!attribute [rw] medium_action
    #   Action to take for a medium risk.
    #   @return [Types::AccountTakeoverActionType]
    #
    # @!attribute [rw] high_action
    #   Action to take for a high risk.
    #   @return [Types::AccountTakeoverActionType]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AccountTakeoverActionsType AWS API Documentation
    #
    class AccountTakeoverActionsType < Struct.new(
      :low_action,
      :medium_action,
      :high_action)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration for mitigation actions and notification for different
    # levels of risk detected for a potential account takeover.
    #
    # @!attribute [rw] notify_configuration
    #   The notify configuration used to construct email notifications.
    #   @return [Types::NotifyConfigurationType]
    #
    # @!attribute [rw] actions
    #   Account takeover risk configuration actions.
    #   @return [Types::AccountTakeoverActionsType]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AccountTakeoverRiskConfigurationType AWS API Documentation
    #
    class AccountTakeoverRiskConfigurationType < Struct.new(
      :notify_configuration,
      :actions)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the request to add custom attributes.
    #
    # @!attribute [rw] user_pool_id
    #   The user pool ID for the user pool where you want to add custom
    #   attributes.
    #   @return [String]
    #
    # @!attribute [rw] custom_attributes
    #   An array of custom attributes, such as Mutable and Name.
    #   @return [Array<Types::SchemaAttributeType>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AddCustomAttributesRequest AWS API Documentation
    #
    class AddCustomAttributesRequest < Struct.new(
      :user_pool_id,
      :custom_attributes)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the response from the server for the request to add custom
    # attributes.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AddCustomAttributesResponse AWS API Documentation
    #
    class AddCustomAttributesResponse < Aws::EmptyStructure; end

    # @!attribute [rw] user_pool_id
    #   The user pool ID for the user pool.
    #   @return [String]
    #
    # @!attribute [rw] username
    #   The username for the user.
    #   @return [String]
    #
    # @!attribute [rw] group_name
    #   The group name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AdminAddUserToGroupRequest AWS API Documentation
    #
    class AdminAddUserToGroupRequest < Struct.new(
      :user_pool_id,
      :username,
      :group_name)
      SENSITIVE = [:username]
      include Aws::Structure
    end

    # Represents the request to confirm user registration.
    #
    # @!attribute [rw] user_pool_id
    #   The user pool ID for which you want to confirm user registration.
    #   @return [String]
    #
    # @!attribute [rw] username
    #   The user name for which you want to confirm user registration.
    #   @return [String]
    #
    # @!attribute [rw] client_metadata
    #   A map of custom key-value pairs that you can provide as input for
    #   any custom workflows that this action triggers.
    #
    #   If your user pool configuration includes triggers, the
    #   AdminConfirmSignUp API action invokes the Lambda function that is
    #   specified for the *post confirmation* trigger. When Amazon Cognito
    #   invokes this function, it passes a JSON payload, which the function
    #   receives as input. In this payload, the `clientMetadata` attribute
    #   provides the data that you assigned to the ClientMetadata parameter
    #   in your AdminConfirmSignUp request. In your function code in Lambda,
    #   you can process the ClientMetadata value to enhance your workflow
    #   for your specific needs.
    #
    #   For more information, see [ Customizing user pool Workflows with
    #   Lambda Triggers][1] in the *Amazon Cognito Developer Guide*.
    #
    #   <note markdown="1"> When you use the ClientMetadata parameter, remember that Amazon
    #   Cognito won't do the following:
    #
    #    * Store the ClientMetadata value. This data is available only to
    #     Lambda triggers that are assigned to a user pool to support custom
    #     workflows. If your user pool configuration doesn't include
    #     triggers, the ClientMetadata parameter serves no purpose.
    #
    #   * Validate the ClientMetadata value.
    #
    #   * Encrypt the ClientMetadata value. Don't use Amazon Cognito to
    #     provide sensitive information.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-working-with-aws-lambda-triggers.html
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AdminConfirmSignUpRequest AWS API Documentation
    #
    class AdminConfirmSignUpRequest < Struct.new(
      :user_pool_id,
      :username,
      :client_metadata)
      SENSITIVE = [:username]
      include Aws::Structure
    end

    # Represents the response from the server for the request to confirm
    # registration.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AdminConfirmSignUpResponse AWS API Documentation
    #
    class AdminConfirmSignUpResponse < Aws::EmptyStructure; end

    # The configuration for creating a new user profile.
    #
    # @!attribute [rw] allow_admin_create_user_only
    #   Set to `True` if only the administrator is allowed to create user
    #   profiles. Set to `False` if users can sign themselves up via an app.
    #   @return [Boolean]
    #
    # @!attribute [rw] unused_account_validity_days
    #   The user account expiration limit, in days, after which a new
    #   account that hasn't signed in is no longer usable. To reset the
    #   account after that time limit, you must call `AdminCreateUser`
    #   again, specifying `"RESEND"` for the `MessageAction` parameter. The
    #   default value for this parameter is 7.
    #
    #   <note markdown="1"> If you set a value for `TemporaryPasswordValidityDays` in
    #   `PasswordPolicy`, that value will be used, and
    #   `UnusedAccountValidityDays` will be no longer be an available
    #   parameter for that user pool.
    #
    #    </note>
    #   @return [Integer]
    #
    # @!attribute [rw] invite_message_template
    #   The message template to be used for the welcome message to new
    #   users.
    #
    #   See also [Customizing User Invitation Messages][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pool-settings-message-customizations.html#cognito-user-pool-settings-user-invitation-message-customization
    #   @return [Types::MessageTemplateType]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AdminCreateUserConfigType AWS API Documentation
    #
    class AdminCreateUserConfigType < Struct.new(
      :allow_admin_create_user_only,
      :unused_account_validity_days,
      :invite_message_template)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the request to create a user in the specified user pool.
    #
    # @!attribute [rw] user_pool_id
    #   The user pool ID for the user pool where the user will be created.
    #   @return [String]
    #
    # @!attribute [rw] username
    #   The username for the user. Must be unique within the user pool. Must
    #   be a UTF-8 string between 1 and 128 characters. After the user is
    #   created, the username can't be changed.
    #   @return [String]
    #
    # @!attribute [rw] user_attributes
    #   An array of name-value pairs that contain user attributes and
    #   attribute values to be set for the user to be created. You can
    #   create a user without specifying any attributes other than
    #   `Username`. However, any attributes that you specify as required
    #   (when creating a user pool or in the **Attributes** tab of the
    #   console) either you should supply (in your call to
    #   `AdminCreateUser`) or the user should supply (when they sign up in
    #   response to your welcome message).
    #
    #   For custom attributes, you must prepend the `custom:` prefix to the
    #   attribute name.
    #
    #   To send a message inviting the user to sign up, you must specify the
    #   user's email address or phone number. You can do this in your call
    #   to AdminCreateUser or in the **Users** tab of the Amazon Cognito
    #   console for managing your user pools.
    #
    #   In your call to `AdminCreateUser`, you can set the `email_verified`
    #   attribute to `True`, and you can set the `phone_number_verified`
    #   attribute to `True`. You can also do this by calling
    #   [AdminUpdateUserAttributes][1].
    #
    #   * **email**: The email address of the user to whom the message that
    #     contains the code and username will be sent. Required if the
    #     `email_verified` attribute is set to `True`, or if `"EMAIL"` is
    #     specified in the `DesiredDeliveryMediums` parameter.
    #
    #   * **phone\_number**: The phone number of the user to whom the
    #     message that contains the code and username will be sent. Required
    #     if the `phone_number_verified` attribute is set to `True`, or if
    #     `"SMS"` is specified in the `DesiredDeliveryMediums` parameter.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_AdminUpdateUserAttributes.html
    #   @return [Array<Types::AttributeType>]
    #
    # @!attribute [rw] validation_data
    #   The user's validation data. This is an array of name-value pairs
    #   that contain user attributes and attribute values that you can use
    #   for custom validation, such as restricting the types of user
    #   accounts that can be registered. For example, you might choose to
    #   allow or disallow user sign-up based on the user's domain.
    #
    #   To configure custom validation, you must create a Pre Sign-up Lambda
    #   trigger for the user pool as described in the Amazon Cognito
    #   Developer Guide. The Lambda trigger receives the validation data and
    #   uses it in the validation process.
    #
    #   The user's validation data isn't persisted.
    #   @return [Array<Types::AttributeType>]
    #
    # @!attribute [rw] temporary_password
    #   The user's temporary password. This password must conform to the
    #   password policy that you specified when you created the user pool.
    #
    #   The temporary password is valid only once. To complete the Admin
    #   Create User flow, the user must enter the temporary password in the
    #   sign-in page, along with a new password to be used in all future
    #   sign-ins.
    #
    #   This parameter isn't required. If you don't specify a value,
    #   Amazon Cognito generates one for you.
    #
    #   The temporary password can only be used until the user account
    #   expiration limit that you specified when you created the user pool.
    #   To reset the account after that time limit, you must call
    #   `AdminCreateUser` again, specifying `"RESEND"` for the
    #   `MessageAction` parameter.
    #   @return [String]
    #
    # @!attribute [rw] force_alias_creation
    #   This parameter is used only if the `phone_number_verified` or
    #   `email_verified` attribute is set to `True`. Otherwise, it is
    #   ignored.
    #
    #   If this parameter is set to `True` and the phone number or email
    #   address specified in the UserAttributes parameter already exists as
    #   an alias with a different user, the API call will migrate the alias
    #   from the previous user to the newly created user. The previous user
    #   will no longer be able to log in using that alias.
    #
    #   If this parameter is set to `False`, the API throws an
    #   `AliasExistsException` error if the alias already exists. The
    #   default value is `False`.
    #   @return [Boolean]
    #
    # @!attribute [rw] message_action
    #   Set to `RESEND` to resend the invitation message to a user that
    #   already exists and reset the expiration limit on the user's
    #   account. Set to `SUPPRESS` to suppress sending the message. You can
    #   specify only one value.
    #   @return [String]
    #
    # @!attribute [rw] desired_delivery_mediums
    #   Specify `"EMAIL"` if email will be used to send the welcome message.
    #   Specify `"SMS"` if the phone number will be used. The default value
    #   is `"SMS"`. You can specify more than one value.
    #   @return [Array<String>]
    #
    # @!attribute [rw] client_metadata
    #   A map of custom key-value pairs that you can provide as input for
    #   any custom workflows that this action triggers.
    #
    #   You create custom workflows by assigning Lambda functions to user
    #   pool triggers. When you use the AdminCreateUser API action, Amazon
    #   Cognito invokes the function that is assigned to the *pre sign-up*
    #   trigger. When Amazon Cognito invokes this function, it passes a JSON
    #   payload, which the function receives as input. This payload contains
    #   a `clientMetadata` attribute, which provides the data that you
    #   assigned to the ClientMetadata parameter in your AdminCreateUser
    #   request. In your function code in Lambda, you can process the
    #   `clientMetadata` value to enhance your workflow for your specific
    #   needs.
    #
    #   For more information, see [ Customizing user pool Workflows with
    #   Lambda Triggers][1] in the *Amazon Cognito Developer Guide*.
    #
    #   <note markdown="1"> When you use the ClientMetadata parameter, remember that Amazon
    #   Cognito won't do the following:
    #
    #    * Store the ClientMetadata value. This data is available only to
    #     Lambda triggers that are assigned to a user pool to support custom
    #     workflows. If your user pool configuration doesn't include
    #     triggers, the ClientMetadata parameter serves no purpose.
    #
    #   * Validate the ClientMetadata value.
    #
    #   * Encrypt the ClientMetadata value. Don't use Amazon Cognito to
    #     provide sensitive information.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-working-with-aws-lambda-triggers.html
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AdminCreateUserRequest AWS API Documentation
    #
    class AdminCreateUserRequest < Struct.new(
      :user_pool_id,
      :username,
      :user_attributes,
      :validation_data,
      :temporary_password,
      :force_alias_creation,
      :message_action,
      :desired_delivery_mediums,
      :client_metadata)
      SENSITIVE = [:username, :temporary_password]
      include Aws::Structure
    end

    # Represents the response from the server to the request to create the
    # user.
    #
    # @!attribute [rw] user
    #   The newly created user.
    #   @return [Types::UserType]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AdminCreateUserResponse AWS API Documentation
    #
    class AdminCreateUserResponse < Struct.new(
      :user)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the request to delete user attributes as an administrator.
    #
    # @!attribute [rw] user_pool_id
    #   The user pool ID for the user pool where you want to delete user
    #   attributes.
    #   @return [String]
    #
    # @!attribute [rw] username
    #   The user name of the user from which you would like to delete
    #   attributes.
    #   @return [String]
    #
    # @!attribute [rw] user_attribute_names
    #   An array of strings representing the user attribute names you want
    #   to delete.
    #
    #   For custom attributes, you must prepend the `custom:` prefix to the
    #   attribute name.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AdminDeleteUserAttributesRequest AWS API Documentation
    #
    class AdminDeleteUserAttributesRequest < Struct.new(
      :user_pool_id,
      :username,
      :user_attribute_names)
      SENSITIVE = [:username]
      include Aws::Structure
    end

    # Represents the response received from the server for a request to
    # delete user attributes.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AdminDeleteUserAttributesResponse AWS API Documentation
    #
    class AdminDeleteUserAttributesResponse < Aws::EmptyStructure; end

    # Represents the request to delete a user as an administrator.
    #
    # @!attribute [rw] user_pool_id
    #   The user pool ID for the user pool where you want to delete the
    #   user.
    #   @return [String]
    #
    # @!attribute [rw] username
    #   The user name of the user you want to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AdminDeleteUserRequest AWS API Documentation
    #
    class AdminDeleteUserRequest < Struct.new(
      :user_pool_id,
      :username)
      SENSITIVE = [:username]
      include Aws::Structure
    end

    # @!attribute [rw] user_pool_id
    #   The user pool ID for the user pool.
    #   @return [String]
    #
    # @!attribute [rw] user
    #   The user to be disabled.
    #   @return [Types::ProviderUserIdentifierType]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AdminDisableProviderForUserRequest AWS API Documentation
    #
    class AdminDisableProviderForUserRequest < Struct.new(
      :user_pool_id,
      :user)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AdminDisableProviderForUserResponse AWS API Documentation
    #
    class AdminDisableProviderForUserResponse < Aws::EmptyStructure; end

    # Represents the request to disable the user as an administrator.
    #
    # @!attribute [rw] user_pool_id
    #   The user pool ID for the user pool where you want to disable the
    #   user.
    #   @return [String]
    #
    # @!attribute [rw] username
    #   The user name of the user you want to disable.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AdminDisableUserRequest AWS API Documentation
    #
    class AdminDisableUserRequest < Struct.new(
      :user_pool_id,
      :username)
      SENSITIVE = [:username]
      include Aws::Structure
    end

    # Represents the response received from the server to disable the user
    # as an administrator.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AdminDisableUserResponse AWS API Documentation
    #
    class AdminDisableUserResponse < Aws::EmptyStructure; end

    # Represents the request that enables the user as an administrator.
    #
    # @!attribute [rw] user_pool_id
    #   The user pool ID for the user pool where you want to enable the
    #   user.
    #   @return [String]
    #
    # @!attribute [rw] username
    #   The user name of the user you want to enable.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AdminEnableUserRequest AWS API Documentation
    #
    class AdminEnableUserRequest < Struct.new(
      :user_pool_id,
      :username)
      SENSITIVE = [:username]
      include Aws::Structure
    end

    # Represents the response from the server for the request to enable a
    # user as an administrator.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AdminEnableUserResponse AWS API Documentation
    #
    class AdminEnableUserResponse < Aws::EmptyStructure; end

    # Sends the forgot device request, as an administrator.
    #
    # @!attribute [rw] user_pool_id
    #   The user pool ID.
    #   @return [String]
    #
    # @!attribute [rw] username
    #   The user name.
    #   @return [String]
    #
    # @!attribute [rw] device_key
    #   The device key.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AdminForgetDeviceRequest AWS API Documentation
    #
    class AdminForgetDeviceRequest < Struct.new(
      :user_pool_id,
      :username,
      :device_key)
      SENSITIVE = [:username]
      include Aws::Structure
    end

    # Represents the request to get the device, as an administrator.
    #
    # @!attribute [rw] device_key
    #   The device key.
    #   @return [String]
    #
    # @!attribute [rw] user_pool_id
    #   The user pool ID.
    #   @return [String]
    #
    # @!attribute [rw] username
    #   The user name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AdminGetDeviceRequest AWS API Documentation
    #
    class AdminGetDeviceRequest < Struct.new(
      :device_key,
      :user_pool_id,
      :username)
      SENSITIVE = [:username]
      include Aws::Structure
    end

    # Gets the device response, as an administrator.
    #
    # @!attribute [rw] device
    #   The device.
    #   @return [Types::DeviceType]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AdminGetDeviceResponse AWS API Documentation
    #
    class AdminGetDeviceResponse < Struct.new(
      :device)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the request to get the specified user as an administrator.
    #
    # @!attribute [rw] user_pool_id
    #   The user pool ID for the user pool where you want to get information
    #   about the user.
    #   @return [String]
    #
    # @!attribute [rw] username
    #   The user name of the user you want to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AdminGetUserRequest AWS API Documentation
    #
    class AdminGetUserRequest < Struct.new(
      :user_pool_id,
      :username)
      SENSITIVE = [:username]
      include Aws::Structure
    end

    # Represents the response from the server from the request to get the
    # specified user as an administrator.
    #
    # @!attribute [rw] username
    #   The user name of the user about whom you're receiving information.
    #   @return [String]
    #
    # @!attribute [rw] user_attributes
    #   An array of name-value pairs representing user attributes.
    #   @return [Array<Types::AttributeType>]
    #
    # @!attribute [rw] user_create_date
    #   The date the user was created.
    #   @return [Time]
    #
    # @!attribute [rw] user_last_modified_date
    #   The date the user was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] enabled
    #   Indicates that the status is `enabled`.
    #   @return [Boolean]
    #
    # @!attribute [rw] user_status
    #   The user status. Can be one of the following:
    #
    #   * UNCONFIRMED - User has been created but not confirmed.
    #
    #   * CONFIRMED - User has been confirmed.
    #
    #   * ARCHIVED - User is no longer active.
    #
    #   * UNKNOWN - User status isn't known.
    #
    #   * RESET\_REQUIRED - User is confirmed, but the user must request a
    #     code and reset their password before they can sign in.
    #
    #   * FORCE\_CHANGE\_PASSWORD - The user is confirmed and the user can
    #     sign in using a temporary password, but on first sign-in, the user
    #     must change their password to a new value before doing anything
    #     else.
    #   @return [String]
    #
    # @!attribute [rw] mfa_options
    #   *This response parameter is no longer supported.* It provides
    #   information only about SMS MFA configurations. It doesn't provide
    #   information about time-based one-time password (TOTP) software token
    #   MFA configurations. To look up information about either type of MFA
    #   configuration, use UserMFASettingList instead.
    #   @return [Array<Types::MFAOptionType>]
    #
    # @!attribute [rw] preferred_mfa_setting
    #   The user's preferred MFA setting.
    #   @return [String]
    #
    # @!attribute [rw] user_mfa_setting_list
    #   The MFA options that are activated for the user. The possible values
    #   in this list are `SMS_MFA` and `SOFTWARE_TOKEN_MFA`.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AdminGetUserResponse AWS API Documentation
    #
    class AdminGetUserResponse < Struct.new(
      :username,
      :user_attributes,
      :user_create_date,
      :user_last_modified_date,
      :enabled,
      :user_status,
      :mfa_options,
      :preferred_mfa_setting,
      :user_mfa_setting_list)
      SENSITIVE = [:username]
      include Aws::Structure
    end

    # Initiates the authorization request, as an administrator.
    #
    # @!attribute [rw] user_pool_id
    #   The ID of the Amazon Cognito user pool.
    #   @return [String]
    #
    # @!attribute [rw] client_id
    #   The app client ID.
    #   @return [String]
    #
    # @!attribute [rw] auth_flow
    #   The authentication flow for this call to run. The API action will
    #   depend on this value. For example:
    #
    #   * `REFRESH_TOKEN_AUTH` will take in a valid refresh token and return
    #     new tokens.
    #
    #   * `USER_SRP_AUTH` will take in `USERNAME` and `SRP_A` and return the
    #     Secure Remote Password (SRP) protocol variables to be used for
    #     next challenge execution.
    #
    #   * `ADMIN_USER_PASSWORD_AUTH` will take in `USERNAME` and `PASSWORD`
    #     and return the next challenge or tokens.
    #
    #   Valid values include:
    #
    #   * `USER_SRP_AUTH`: Authentication flow for the Secure Remote
    #     Password (SRP) protocol.
    #
    #   * `REFRESH_TOKEN_AUTH`/`REFRESH_TOKEN`: Authentication flow for
    #     refreshing the access token and ID token by supplying a valid
    #     refresh token.
    #
    #   * `CUSTOM_AUTH`: Custom authentication flow.
    #
    #   * `ADMIN_NO_SRP_AUTH`: Non-SRP authentication flow; you can pass in
    #     the USERNAME and PASSWORD directly if the flow is enabled for
    #     calling the app client.
    #
    #   * `ADMIN_USER_PASSWORD_AUTH`: Admin-based user password
    #     authentication. This replaces the `ADMIN_NO_SRP_AUTH`
    #     authentication flow. In this flow, Amazon Cognito receives the
    #     password in the request instead of using the SRP process to verify
    #     passwords.
    #   @return [String]
    #
    # @!attribute [rw] auth_parameters
    #   The authentication parameters. These are inputs corresponding to the
    #   `AuthFlow` that you're invoking. The required values depend on the
    #   value of `AuthFlow`:
    #
    #   * For `USER_SRP_AUTH`: `USERNAME` (required), `SRP_A` (required),
    #     `SECRET_HASH` (required if the app client is configured with a
    #     client secret), `DEVICE_KEY`.
    #
    #   * For `REFRESH_TOKEN_AUTH/REFRESH_TOKEN`: `REFRESH_TOKEN`
    #     (required), `SECRET_HASH` (required if the app client is
    #     configured with a client secret), `DEVICE_KEY`.
    #
    #   * For `ADMIN_NO_SRP_AUTH`: `USERNAME` (required), `SECRET_HASH` (if
    #     app client is configured with client secret), `PASSWORD`
    #     (required), `DEVICE_KEY`.
    #
    #   * For `CUSTOM_AUTH`: `USERNAME` (required), `SECRET_HASH` (if app
    #     client is configured with client secret), `DEVICE_KEY`. To start
    #     the authentication flow with password verification, include
    #     `ChallengeName: SRP_A` and `SRP_A: (The SRP_A Value)`.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] client_metadata
    #   A map of custom key-value pairs that you can provide as input for
    #   certain custom workflows that this action triggers.
    #
    #   You create custom workflows by assigning Lambda functions to user
    #   pool triggers. When you use the AdminInitiateAuth API action, Amazon
    #   Cognito invokes the Lambda functions that are specified for various
    #   triggers. The ClientMetadata value is passed as input to the
    #   functions for only the following triggers:
    #
    #   * Pre signup
    #
    #   * Pre authentication
    #
    #   * User migration
    #
    #   When Amazon Cognito invokes the functions for these triggers, it
    #   passes a JSON payload, which the function receives as input. This
    #   payload contains a `validationData` attribute, which provides the
    #   data that you assigned to the ClientMetadata parameter in your
    #   AdminInitiateAuth request. In your function code in Lambda, you can
    #   process the `validationData` value to enhance your workflow for your
    #   specific needs.
    #
    #   When you use the AdminInitiateAuth API action, Amazon Cognito also
    #   invokes the functions for the following triggers, but it doesn't
    #   provide the ClientMetadata value as input:
    #
    #   * Post authentication
    #
    #   * Custom message
    #
    #   * Pre token generation
    #
    #   * Create auth challenge
    #
    #   * Define auth challenge
    #
    #   * Verify auth challenge
    #
    #   For more information, see [ Customizing user pool Workflows with
    #   Lambda Triggers][1] in the *Amazon Cognito Developer Guide*.
    #
    #   <note markdown="1"> When you use the ClientMetadata parameter, remember that Amazon
    #   Cognito won't do the following:
    #
    #    * Store the ClientMetadata value. This data is available only to
    #     Lambda triggers that are assigned to a user pool to support custom
    #     workflows. If your user pool configuration doesn't include
    #     triggers, the ClientMetadata parameter serves no purpose.
    #
    #   * Validate the ClientMetadata value.
    #
    #   * Encrypt the ClientMetadata value. Don't use Amazon Cognito to
    #     provide sensitive information.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-working-with-aws-lambda-triggers.html
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] analytics_metadata
    #   The analytics metadata for collecting Amazon Pinpoint metrics for
    #   `AdminInitiateAuth` calls.
    #   @return [Types::AnalyticsMetadataType]
    #
    # @!attribute [rw] context_data
    #   Contextual data about your user session, such as the device
    #   fingerprint, IP address, or location. Amazon Cognito advanced
    #   security evaluates the risk of an authentication event based on the
    #   context that your app generates and passes to Amazon Cognito when it
    #   makes API requests.
    #   @return [Types::ContextDataType]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AdminInitiateAuthRequest AWS API Documentation
    #
    class AdminInitiateAuthRequest < Struct.new(
      :user_pool_id,
      :client_id,
      :auth_flow,
      :auth_parameters,
      :client_metadata,
      :analytics_metadata,
      :context_data)
      SENSITIVE = [:client_id, :auth_parameters]
      include Aws::Structure
    end

    # Initiates the authentication response, as an administrator.
    #
    # @!attribute [rw] challenge_name
    #   The name of the challenge that you're responding to with this call.
    #   This is returned in the `AdminInitiateAuth` response if you must
    #   pass another challenge.
    #
    #   * `MFA_SETUP`: If MFA is required, users who don't have at least
    #     one of the MFA methods set up are presented with an `MFA_SETUP`
    #     challenge. The user must set up at least one MFA type to continue
    #     to authenticate.
    #
    #   * `SELECT_MFA_TYPE`: Selects the MFA type. Valid MFA options are
    #     `SMS_MFA` for text SMS MFA, and `SOFTWARE_TOKEN_MFA` for
    #     time-based one-time password (TOTP) software token MFA.
    #
    #   * `SMS_MFA`: Next challenge is to supply an `SMS_MFA_CODE`,
    #     delivered via SMS.
    #
    #   * `PASSWORD_VERIFIER`: Next challenge is to supply
    #     `PASSWORD_CLAIM_SIGNATURE`, `PASSWORD_CLAIM_SECRET_BLOCK`, and
    #     `TIMESTAMP` after the client-side SRP calculations.
    #
    #   * `CUSTOM_CHALLENGE`: This is returned if your custom authentication
    #     flow determines that the user should pass another challenge before
    #     tokens are issued.
    #
    #   * `DEVICE_SRP_AUTH`: If device tracking was activated in your user
    #     pool and the previous challenges were passed, this challenge is
    #     returned so that Amazon Cognito can start tracking this device.
    #
    #   * `DEVICE_PASSWORD_VERIFIER`: Similar to `PASSWORD_VERIFIER`, but
    #     for devices only.
    #
    #   * `ADMIN_NO_SRP_AUTH`: This is returned if you must authenticate
    #     with `USERNAME` and `PASSWORD` directly. An app client must be
    #     enabled to use this flow.
    #
    #   * `NEW_PASSWORD_REQUIRED`: For users who are required to change
    #     their passwords after successful first login. Respond to this
    #     challenge with `NEW_PASSWORD` and any required attributes that
    #     Amazon Cognito returned in the `requiredAttributes` parameter. You
    #     can also set values for attributes that aren't required by your
    #     user pool and that your app client can write. For more
    #     information, see [AdminRespondToAuthChallenge][1].
    #
    #     <note markdown="1"> In a `NEW_PASSWORD_REQUIRED` challenge response, you can't modify
    #     a required attribute that already has a value. In
    #     `AdminRespondToAuthChallenge`, set a value for any keys that
    #     Amazon Cognito returned in the `requiredAttributes` parameter,
    #     then use the `AdminUpdateUserAttributes` API operation to modify
    #     the value of any additional attributes.
    #
    #      </note>
    #
    #   * `MFA_SETUP`: For users who are required to set up an MFA factor
    #     before they can sign in. The MFA types activated for the user pool
    #     will be listed in the challenge parameters `MFA_CAN_SETUP` value.
    #
    #     To set up software token MFA, use the session returned here from
    #     `InitiateAuth` as an input to `AssociateSoftwareToken`, and use
    #     the session returned by `VerifySoftwareToken` as an input to
    #     `RespondToAuthChallenge` with challenge name `MFA_SETUP` to
    #     complete sign-in. To set up SMS MFA, users will need help from an
    #     administrator to add a phone number to their account and then call
    #     `InitiateAuth` again to restart sign-in.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_AdminRespondToAuthChallenge.html
    #   @return [String]
    #
    # @!attribute [rw] session
    #   The session that should be passed both ways in challenge-response
    #   calls to the service. If `AdminInitiateAuth` or
    #   `AdminRespondToAuthChallenge` API call determines that the caller
    #   must pass another challenge, they return a session with other
    #   challenge parameters. This session should be passed as it is to the
    #   next `AdminRespondToAuthChallenge` API call.
    #   @return [String]
    #
    # @!attribute [rw] challenge_parameters
    #   The challenge parameters. These are returned to you in the
    #   `AdminInitiateAuth` response if you must pass another challenge. The
    #   responses in this parameter should be used to compute inputs to the
    #   next call (`AdminRespondToAuthChallenge`).
    #
    #   All challenges require `USERNAME` and `SECRET_HASH` (if applicable).
    #
    #   The value of the `USER_ID_FOR_SRP` attribute is the user's actual
    #   username, not an alias (such as email address or phone number), even
    #   if you specified an alias in your call to `AdminInitiateAuth`. This
    #   happens because, in the `AdminRespondToAuthChallenge` API
    #   `ChallengeResponses`, the `USERNAME` attribute can't be an alias.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] authentication_result
    #   The result of the authentication response. This is only returned if
    #   the caller doesn't need to pass another challenge. If the caller
    #   does need to pass another challenge before it gets tokens,
    #   `ChallengeName`, `ChallengeParameters`, and `Session` are returned.
    #   @return [Types::AuthenticationResultType]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AdminInitiateAuthResponse AWS API Documentation
    #
    class AdminInitiateAuthResponse < Struct.new(
      :challenge_name,
      :session,
      :challenge_parameters,
      :authentication_result)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] user_pool_id
    #   The user pool ID for the user pool.
    #   @return [String]
    #
    # @!attribute [rw] destination_user
    #   The existing user in the user pool that you want to assign to the
    #   external IdP user account. This user can be a native (Username +
    #   Password) Amazon Cognito user pools user or a federated user (for
    #   example, a SAML or Facebook user). If the user doesn't exist,
    #   Amazon Cognito generates an exception. Amazon Cognito returns this
    #   user when the new user (with the linked IdP attribute) signs in.
    #
    #   For a native username + password user, the `ProviderAttributeValue`
    #   for the `DestinationUser` should be the username in the user pool.
    #   For a federated user, it should be the provider-specific `user_id`.
    #
    #   The `ProviderAttributeName` of the `DestinationUser` is ignored.
    #
    #   The `ProviderName` should be set to `Cognito` for users in Cognito
    #   user pools.
    #
    #   All attributes in the DestinationUser profile must be mutable. If
    #   you have assigned the user any immutable custom attributes, the
    #   operation won't succeed.
    #   @return [Types::ProviderUserIdentifierType]
    #
    # @!attribute [rw] source_user
    #   An external IdP account for a user who doesn't exist yet in the
    #   user pool. This user must be a federated user (for example, a SAML
    #   or Facebook user), not another native user.
    #
    #   If the `SourceUser` is using a federated social IdP, such as
    #   Facebook, Google, or Login with Amazon, you must set the
    #   `ProviderAttributeName` to `Cognito_Subject`. For social IdPs, the
    #   `ProviderName` will be `Facebook`, `Google`, or `LoginWithAmazon`,
    #   and Amazon Cognito will automatically parse the Facebook, Google,
    #   and Login with Amazon tokens for `id`, `sub`, and `user_id`,
    #   respectively. The `ProviderAttributeValue` for the user must be the
    #   same value as the `id`, `sub`, or `user_id` value found in the
    #   social IdP token.
    #
    #
    #
    #   For SAML, the `ProviderAttributeName` can be any value that matches
    #   a claim in the SAML assertion. If you want to link SAML users based
    #   on the subject of the SAML assertion, you should map the subject to
    #   a claim through the SAML IdP and submit that claim name as the
    #   `ProviderAttributeName`. If you set `ProviderAttributeName` to
    #   `Cognito_Subject`, Amazon Cognito will automatically parse the
    #   default unique identifier found in the subject from the SAML token.
    #   @return [Types::ProviderUserIdentifierType]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AdminLinkProviderForUserRequest AWS API Documentation
    #
    class AdminLinkProviderForUserRequest < Struct.new(
      :user_pool_id,
      :destination_user,
      :source_user)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AdminLinkProviderForUserResponse AWS API Documentation
    #
    class AdminLinkProviderForUserResponse < Aws::EmptyStructure; end

    # Represents the request to list devices, as an administrator.
    #
    # @!attribute [rw] user_pool_id
    #   The user pool ID.
    #   @return [String]
    #
    # @!attribute [rw] username
    #   The user name.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The limit of the devices request.
    #   @return [Integer]
    #
    # @!attribute [rw] pagination_token
    #   The pagination token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AdminListDevicesRequest AWS API Documentation
    #
    class AdminListDevicesRequest < Struct.new(
      :user_pool_id,
      :username,
      :limit,
      :pagination_token)
      SENSITIVE = [:username]
      include Aws::Structure
    end

    # Lists the device's response, as an administrator.
    #
    # @!attribute [rw] devices
    #   The devices in the list of devices response.
    #   @return [Array<Types::DeviceType>]
    #
    # @!attribute [rw] pagination_token
    #   The pagination token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AdminListDevicesResponse AWS API Documentation
    #
    class AdminListDevicesResponse < Struct.new(
      :devices,
      :pagination_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] username
    #   The username for the user.
    #   @return [String]
    #
    # @!attribute [rw] user_pool_id
    #   The user pool ID for the user pool.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The limit of the request to list groups.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   An identifier that was returned from the previous call to this
    #   operation, which can be used to return the next set of items in the
    #   list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AdminListGroupsForUserRequest AWS API Documentation
    #
    class AdminListGroupsForUserRequest < Struct.new(
      :username,
      :user_pool_id,
      :limit,
      :next_token)
      SENSITIVE = [:username]
      include Aws::Structure
    end

    # @!attribute [rw] groups
    #   The groups that the user belongs to.
    #   @return [Array<Types::GroupType>]
    #
    # @!attribute [rw] next_token
    #   An identifier that was returned from the previous call to this
    #   operation, which can be used to return the next set of items in the
    #   list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AdminListGroupsForUserResponse AWS API Documentation
    #
    class AdminListGroupsForUserResponse < Struct.new(
      :groups,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] user_pool_id
    #   The user pool ID.
    #   @return [String]
    #
    # @!attribute [rw] username
    #   The user pool username or an alias.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of authentication events to return. Returns 60
    #   events if you set `MaxResults` to 0, or if you don't include a
    #   `MaxResults` parameter.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A pagination token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AdminListUserAuthEventsRequest AWS API Documentation
    #
    class AdminListUserAuthEventsRequest < Struct.new(
      :user_pool_id,
      :username,
      :max_results,
      :next_token)
      SENSITIVE = [:username]
      include Aws::Structure
    end

    # @!attribute [rw] auth_events
    #   The response object. It includes the `EventID`, `EventType`,
    #   `CreationDate`, `EventRisk`, and `EventResponse`.
    #   @return [Array<Types::AuthEventType>]
    #
    # @!attribute [rw] next_token
    #   A pagination token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AdminListUserAuthEventsResponse AWS API Documentation
    #
    class AdminListUserAuthEventsResponse < Struct.new(
      :auth_events,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] user_pool_id
    #   The user pool ID for the user pool.
    #   @return [String]
    #
    # @!attribute [rw] username
    #   The username for the user.
    #   @return [String]
    #
    # @!attribute [rw] group_name
    #   The group name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AdminRemoveUserFromGroupRequest AWS API Documentation
    #
    class AdminRemoveUserFromGroupRequest < Struct.new(
      :user_pool_id,
      :username,
      :group_name)
      SENSITIVE = [:username]
      include Aws::Structure
    end

    # Represents the request to reset a user's password as an
    # administrator.
    #
    # @!attribute [rw] user_pool_id
    #   The user pool ID for the user pool where you want to reset the
    #   user's password.
    #   @return [String]
    #
    # @!attribute [rw] username
    #   The user name of the user whose password you want to reset.
    #   @return [String]
    #
    # @!attribute [rw] client_metadata
    #   A map of custom key-value pairs that you can provide as input for
    #   any custom workflows that this action triggers.
    #
    #   You create custom workflows by assigning Lambda functions to user
    #   pool triggers. When you use the AdminResetUserPassword API action,
    #   Amazon Cognito invokes the function that is assigned to the *custom
    #   message* trigger. When Amazon Cognito invokes this function, it
    #   passes a JSON payload, which the function receives as input. This
    #   payload contains a `clientMetadata` attribute, which provides the
    #   data that you assigned to the ClientMetadata parameter in your
    #   AdminResetUserPassword request. In your function code in Lambda, you
    #   can process the `clientMetadata` value to enhance your workflow for
    #   your specific needs.
    #
    #   For more information, see [ Customizing user pool Workflows with
    #   Lambda Triggers][1] in the *Amazon Cognito Developer Guide*.
    #
    #   <note markdown="1"> When you use the ClientMetadata parameter, remember that Amazon
    #   Cognito won't do the following:
    #
    #    * Store the ClientMetadata value. This data is available only to
    #     Lambda triggers that are assigned to a user pool to support custom
    #     workflows. If your user pool configuration doesn't include
    #     triggers, the ClientMetadata parameter serves no purpose.
    #
    #   * Validate the ClientMetadata value.
    #
    #   * Encrypt the ClientMetadata value. Don't use Amazon Cognito to
    #     provide sensitive information.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-working-with-aws-lambda-triggers.html
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AdminResetUserPasswordRequest AWS API Documentation
    #
    class AdminResetUserPasswordRequest < Struct.new(
      :user_pool_id,
      :username,
      :client_metadata)
      SENSITIVE = [:username]
      include Aws::Structure
    end

    # Represents the response from the server to reset a user password as an
    # administrator.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AdminResetUserPasswordResponse AWS API Documentation
    #
    class AdminResetUserPasswordResponse < Aws::EmptyStructure; end

    # The request to respond to the authentication challenge, as an
    # administrator.
    #
    # @!attribute [rw] user_pool_id
    #   The ID of the Amazon Cognito user pool.
    #   @return [String]
    #
    # @!attribute [rw] client_id
    #   The app client ID.
    #   @return [String]
    #
    # @!attribute [rw] challenge_name
    #   The challenge name. For more information, see
    #   [AdminInitiateAuth][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_AdminInitiateAuth.html
    #   @return [String]
    #
    # @!attribute [rw] challenge_responses
    #   The challenge responses. These are inputs corresponding to the value
    #   of `ChallengeName`, for example:
    #
    #   * `SMS_MFA`: `SMS_MFA_CODE`, `USERNAME`, `SECRET_HASH` (if app
    #     client is configured with client secret).
    #
    #   * `PASSWORD_VERIFIER`: `PASSWORD_CLAIM_SIGNATURE`,
    #     `PASSWORD_CLAIM_SECRET_BLOCK`, `TIMESTAMP`, `USERNAME`,
    #     `SECRET_HASH` (if app client is configured with client secret).
    #
    #     <note markdown="1"> `PASSWORD_VERIFIER` requires `DEVICE_KEY` when signing in with a
    #     remembered device.
    #
    #      </note>
    #
    #   * `ADMIN_NO_SRP_AUTH`: `PASSWORD`, `USERNAME`, `SECRET_HASH` (if app
    #     client is configured with client secret).
    #
    #   * `NEW_PASSWORD_REQUIRED`: `NEW_PASSWORD`, `USERNAME`, `SECRET_HASH`
    #     (if app client is configured with client secret). To set any
    #     required attributes that Amazon Cognito returned as
    #     `requiredAttributes` in the `AdminInitiateAuth` response, add a
    #     `userAttributes.attributename ` parameter. This parameter can also
    #     set values for writable attributes that aren't required by your
    #     user pool.
    #
    #     <note markdown="1"> In a `NEW_PASSWORD_REQUIRED` challenge response, you can't modify
    #     a required attribute that already has a value. In
    #     `AdminRespondToAuthChallenge`, set a value for any keys that
    #     Amazon Cognito returned in the `requiredAttributes` parameter,
    #     then use the `AdminUpdateUserAttributes` API operation to modify
    #     the value of any additional attributes.
    #
    #      </note>
    #
    #   * `MFA_SETUP` requires `USERNAME`, plus you must use the session
    #     value returned by `VerifySoftwareToken` in the `Session`
    #     parameter.
    #
    #   The value of the `USERNAME` attribute must be the user's actual
    #   username, not an alias (such as an email address or phone number).
    #   To make this simpler, the `AdminInitiateAuth` response includes the
    #   actual username value in the `USERNAMEUSER_ID_FOR_SRP` attribute.
    #   This happens even if you specified an alias in your call to
    #   `AdminInitiateAuth`.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] session
    #   The session that should be passed both ways in challenge-response
    #   calls to the service. If an `InitiateAuth` or
    #   `RespondToAuthChallenge` API call determines that the caller must
    #   pass another challenge, it returns a session with other challenge
    #   parameters. This session should be passed as it is to the next
    #   `RespondToAuthChallenge` API call.
    #   @return [String]
    #
    # @!attribute [rw] analytics_metadata
    #   The analytics metadata for collecting Amazon Pinpoint metrics for
    #   `AdminRespondToAuthChallenge` calls.
    #   @return [Types::AnalyticsMetadataType]
    #
    # @!attribute [rw] context_data
    #   Contextual data about your user session, such as the device
    #   fingerprint, IP address, or location. Amazon Cognito advanced
    #   security evaluates the risk of an authentication event based on the
    #   context that your app generates and passes to Amazon Cognito when it
    #   makes API requests.
    #   @return [Types::ContextDataType]
    #
    # @!attribute [rw] client_metadata
    #   A map of custom key-value pairs that you can provide as input for
    #   any custom workflows that this action triggers.
    #
    #   You create custom workflows by assigning Lambda functions to user
    #   pool triggers. When you use the AdminRespondToAuthChallenge API
    #   action, Amazon Cognito invokes any functions that you have assigned
    #   to the following triggers:
    #
    #   * pre sign-up
    #
    #   * custom message
    #
    #   * post authentication
    #
    #   * user migration
    #
    #   * pre token generation
    #
    #   * define auth challenge
    #
    #   * create auth challenge
    #
    #   * verify auth challenge response
    #
    #   When Amazon Cognito invokes any of these functions, it passes a JSON
    #   payload, which the function receives as input. This payload contains
    #   a `clientMetadata` attribute that provides the data that you
    #   assigned to the ClientMetadata parameter in your
    #   AdminRespondToAuthChallenge request. In your function code in
    #   Lambda, you can process the `clientMetadata` value to enhance your
    #   workflow for your specific needs.
    #
    #   For more information, see [ Customizing user pool Workflows with
    #   Lambda Triggers][1] in the *Amazon Cognito Developer Guide*.
    #
    #   <note markdown="1"> When you use the ClientMetadata parameter, remember that Amazon
    #   Cognito won't do the following:
    #
    #    * Store the ClientMetadata value. This data is available only to
    #     Lambda triggers that are assigned to a user pool to support custom
    #     workflows. If your user pool configuration doesn't include
    #     triggers, the ClientMetadata parameter serves no purpose.
    #
    #   * Validate the ClientMetadata value.
    #
    #   * Encrypt the ClientMetadata value. Don't use Amazon Cognito to
    #     provide sensitive information.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-working-with-aws-lambda-triggers.html
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AdminRespondToAuthChallengeRequest AWS API Documentation
    #
    class AdminRespondToAuthChallengeRequest < Struct.new(
      :user_pool_id,
      :client_id,
      :challenge_name,
      :challenge_responses,
      :session,
      :analytics_metadata,
      :context_data,
      :client_metadata)
      SENSITIVE = [:client_id]
      include Aws::Structure
    end

    # Responds to the authentication challenge, as an administrator.
    #
    # @!attribute [rw] challenge_name
    #   The name of the challenge. For more information, see
    #   [AdminInitiateAuth][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_AdminInitiateAuth.html
    #   @return [String]
    #
    # @!attribute [rw] session
    #   The session that should be passed both ways in challenge-response
    #   calls to the service. If the caller must pass another challenge,
    #   they return a session with other challenge parameters. This session
    #   should be passed as it is to the next `RespondToAuthChallenge` API
    #   call.
    #   @return [String]
    #
    # @!attribute [rw] challenge_parameters
    #   The challenge parameters. For more information, see
    #   [AdminInitiateAuth][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_AdminInitiateAuth.html
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] authentication_result
    #   The result returned by the server in response to the authentication
    #   request.
    #   @return [Types::AuthenticationResultType]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AdminRespondToAuthChallengeResponse AWS API Documentation
    #
    class AdminRespondToAuthChallengeResponse < Struct.new(
      :challenge_name,
      :session,
      :challenge_parameters,
      :authentication_result)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] sms_mfa_settings
    #   The SMS text message MFA settings.
    #   @return [Types::SMSMfaSettingsType]
    #
    # @!attribute [rw] software_token_mfa_settings
    #   The time-based one-time password software token MFA settings.
    #   @return [Types::SoftwareTokenMfaSettingsType]
    #
    # @!attribute [rw] username
    #   The user pool username or alias.
    #   @return [String]
    #
    # @!attribute [rw] user_pool_id
    #   The user pool ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AdminSetUserMFAPreferenceRequest AWS API Documentation
    #
    class AdminSetUserMFAPreferenceRequest < Struct.new(
      :sms_mfa_settings,
      :software_token_mfa_settings,
      :username,
      :user_pool_id)
      SENSITIVE = [:username]
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AdminSetUserMFAPreferenceResponse AWS API Documentation
    #
    class AdminSetUserMFAPreferenceResponse < Aws::EmptyStructure; end

    # @!attribute [rw] user_pool_id
    #   The user pool ID for the user pool where you want to set the user's
    #   password.
    #   @return [String]
    #
    # @!attribute [rw] username
    #   The user name of the user whose password you want to set.
    #   @return [String]
    #
    # @!attribute [rw] password
    #   The password for the user.
    #   @return [String]
    #
    # @!attribute [rw] permanent
    #   `True` if the password is permanent, `False` if it is temporary.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AdminSetUserPasswordRequest AWS API Documentation
    #
    class AdminSetUserPasswordRequest < Struct.new(
      :user_pool_id,
      :username,
      :password,
      :permanent)
      SENSITIVE = [:username, :password]
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AdminSetUserPasswordResponse AWS API Documentation
    #
    class AdminSetUserPasswordResponse < Aws::EmptyStructure; end

    # You can use this parameter to set an MFA configuration that uses the
    # SMS delivery medium.
    #
    # @!attribute [rw] user_pool_id
    #   The ID of the user pool that contains the user whose options you're
    #   setting.
    #   @return [String]
    #
    # @!attribute [rw] username
    #   The user name of the user whose options you're setting.
    #   @return [String]
    #
    # @!attribute [rw] mfa_options
    #   You can use this parameter only to set an SMS configuration that
    #   uses SMS for delivery.
    #   @return [Array<Types::MFAOptionType>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AdminSetUserSettingsRequest AWS API Documentation
    #
    class AdminSetUserSettingsRequest < Struct.new(
      :user_pool_id,
      :username,
      :mfa_options)
      SENSITIVE = [:username]
      include Aws::Structure
    end

    # Represents the response from the server to set user settings as an
    # administrator.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AdminSetUserSettingsResponse AWS API Documentation
    #
    class AdminSetUserSettingsResponse < Aws::EmptyStructure; end

    # @!attribute [rw] user_pool_id
    #   The user pool ID.
    #   @return [String]
    #
    # @!attribute [rw] username
    #   The user pool username.
    #   @return [String]
    #
    # @!attribute [rw] event_id
    #   The authentication event ID.
    #   @return [String]
    #
    # @!attribute [rw] feedback_value
    #   The authentication event feedback value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AdminUpdateAuthEventFeedbackRequest AWS API Documentation
    #
    class AdminUpdateAuthEventFeedbackRequest < Struct.new(
      :user_pool_id,
      :username,
      :event_id,
      :feedback_value)
      SENSITIVE = [:username]
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AdminUpdateAuthEventFeedbackResponse AWS API Documentation
    #
    class AdminUpdateAuthEventFeedbackResponse < Aws::EmptyStructure; end

    # The request to update the device status, as an administrator.
    #
    # @!attribute [rw] user_pool_id
    #   The user pool ID.
    #   @return [String]
    #
    # @!attribute [rw] username
    #   The user name.
    #   @return [String]
    #
    # @!attribute [rw] device_key
    #   The device key.
    #   @return [String]
    #
    # @!attribute [rw] device_remembered_status
    #   The status indicating whether a device has been remembered or not.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AdminUpdateDeviceStatusRequest AWS API Documentation
    #
    class AdminUpdateDeviceStatusRequest < Struct.new(
      :user_pool_id,
      :username,
      :device_key,
      :device_remembered_status)
      SENSITIVE = [:username]
      include Aws::Structure
    end

    # The status response to the request to update the device, as an
    # administrator.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AdminUpdateDeviceStatusResponse AWS API Documentation
    #
    class AdminUpdateDeviceStatusResponse < Aws::EmptyStructure; end

    # Represents the request to update the user's attributes as an
    # administrator.
    #
    # @!attribute [rw] user_pool_id
    #   The user pool ID for the user pool where you want to update user
    #   attributes.
    #   @return [String]
    #
    # @!attribute [rw] username
    #   The user name of the user for whom you want to update user
    #   attributes.
    #   @return [String]
    #
    # @!attribute [rw] user_attributes
    #   An array of name-value pairs representing user attributes.
    #
    #   For custom attributes, you must prepend the `custom:` prefix to the
    #   attribute name.
    #
    #   If your user pool requires verification before Amazon Cognito
    #   updates an attribute value that you specify in this request, Amazon
    #   Cognito doesn’t immediately update the value of that attribute.
    #   After your user receives and responds to a verification message to
    #   verify the new value, Amazon Cognito updates the attribute value.
    #   Your user can sign in and receive messages with the original
    #   attribute value until they verify the new value.
    #
    #   To update the value of an attribute that requires verification in
    #   the same API request, include the `email_verified` or
    #   `phone_number_verified` attribute, with a value of `true`. If you
    #   set the `email_verified` or `phone_number_verified` value for an
    #   `email` or `phone_number` attribute that requires verification to
    #   `true`, Amazon Cognito doesn’t send a verification message to your
    #   user.
    #   @return [Array<Types::AttributeType>]
    #
    # @!attribute [rw] client_metadata
    #   A map of custom key-value pairs that you can provide as input for
    #   any custom workflows that this action triggers.
    #
    #   You create custom workflows by assigning Lambda functions to user
    #   pool triggers. When you use the AdminUpdateUserAttributes API
    #   action, Amazon Cognito invokes the function that is assigned to the
    #   *custom message* trigger. When Amazon Cognito invokes this function,
    #   it passes a JSON payload, which the function receives as input. This
    #   payload contains a `clientMetadata` attribute, which provides the
    #   data that you assigned to the ClientMetadata parameter in your
    #   AdminUpdateUserAttributes request. In your function code in Lambda,
    #   you can process the `clientMetadata` value to enhance your workflow
    #   for your specific needs.
    #
    #   For more information, see [ Customizing user pool Workflows with
    #   Lambda Triggers][1] in the *Amazon Cognito Developer Guide*.
    #
    #   <note markdown="1"> When you use the ClientMetadata parameter, remember that Amazon
    #   Cognito won't do the following:
    #
    #    * Store the ClientMetadata value. This data is available only to
    #     Lambda triggers that are assigned to a user pool to support custom
    #     workflows. If your user pool configuration doesn't include
    #     triggers, the ClientMetadata parameter serves no purpose.
    #
    #   * Validate the ClientMetadata value.
    #
    #   * Encrypt the ClientMetadata value. Don't use Amazon Cognito to
    #     provide sensitive information.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-working-with-aws-lambda-triggers.html
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AdminUpdateUserAttributesRequest AWS API Documentation
    #
    class AdminUpdateUserAttributesRequest < Struct.new(
      :user_pool_id,
      :username,
      :user_attributes,
      :client_metadata)
      SENSITIVE = [:username]
      include Aws::Structure
    end

    # Represents the response from the server for the request to update user
    # attributes as an administrator.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AdminUpdateUserAttributesResponse AWS API Documentation
    #
    class AdminUpdateUserAttributesResponse < Aws::EmptyStructure; end

    # The request to sign out of all devices, as an administrator.
    #
    # @!attribute [rw] user_pool_id
    #   The user pool ID.
    #   @return [String]
    #
    # @!attribute [rw] username
    #   The user name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AdminUserGlobalSignOutRequest AWS API Documentation
    #
    class AdminUserGlobalSignOutRequest < Struct.new(
      :user_pool_id,
      :username)
      SENSITIVE = [:username]
      include Aws::Structure
    end

    # The global sign-out response, as an administrator.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AdminUserGlobalSignOutResponse AWS API Documentation
    #
    class AdminUserGlobalSignOutResponse < Aws::EmptyStructure; end

    # This exception is thrown when a user tries to confirm the account with
    # an email address or phone number that has already been supplied as an
    # alias for a different user profile. This exception indicates that an
    # account with this email address or phone already exists in a user pool
    # that you've configured to use email address or phone number as a
    # sign-in alias.
    #
    # @!attribute [rw] message
    #   The message that Amazon Cognito sends to the user when the value of
    #   an alias attribute is already linked to another user profile.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AliasExistsException AWS API Documentation
    #
    class AliasExistsException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Amazon Pinpoint analytics configuration necessary to collect
    # metrics for a user pool.
    #
    # <note markdown="1"> In Regions where Amazon Pinpointisn't available, user pools only
    # support sending events to Amazon Pinpoint projects in us-east-1. In
    # Regions where Amazon Pinpoint is available, user pools support sending
    # events to Amazon Pinpoint projects within that same Region.
    #
    #  </note>
    #
    # @!attribute [rw] application_id
    #   The application ID for an Amazon Pinpoint application.
    #   @return [String]
    #
    # @!attribute [rw] application_arn
    #   The Amazon Resource Name (ARN) of an Amazon Pinpoint project. You
    #   can use the Amazon Pinpoint project to integrate with the chosen
    #   user pool Client. Amazon Cognito publishes events to the Amazon
    #   Pinpoint project that the app ARN declares.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The ARN of an Identity and Access Management role that authorizes
    #   Amazon Cognito to publish events to Amazon Pinpoint analytics.
    #   @return [String]
    #
    # @!attribute [rw] external_id
    #   The external ID.
    #   @return [String]
    #
    # @!attribute [rw] user_data_shared
    #   If `UserDataShared` is `true`, Amazon Cognito includes user data in
    #   the events that it publishes to Amazon Pinpoint analytics.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AnalyticsConfigurationType AWS API Documentation
    #
    class AnalyticsConfigurationType < Struct.new(
      :application_id,
      :application_arn,
      :role_arn,
      :external_id,
      :user_data_shared)
      SENSITIVE = []
      include Aws::Structure
    end

    # An Amazon Pinpoint analytics endpoint.
    #
    # An endpoint uniquely identifies a mobile device, email address, or
    # phone number that can receive messages from Amazon Pinpoint analytics.
    # For more information about Amazon Web Services Regions that can
    # contain Amazon Pinpoint resources for use with Amazon Cognito user
    # pools, see [Using Amazon Pinpoint analytics with Amazon Cognito user
    # pools][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-pinpoint-integration.html
    #
    # @!attribute [rw] analytics_endpoint_id
    #   The endpoint ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AnalyticsMetadataType AWS API Documentation
    #
    class AnalyticsMetadataType < Struct.new(
      :analytics_endpoint_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] access_token
    #   A valid access token that Amazon Cognito issued to the user whose
    #   software token you want to generate.
    #   @return [String]
    #
    # @!attribute [rw] session
    #   The session that should be passed both ways in challenge-response
    #   calls to the service. This allows authentication of the user as part
    #   of the MFA setup process.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AssociateSoftwareTokenRequest AWS API Documentation
    #
    class AssociateSoftwareTokenRequest < Struct.new(
      :access_token,
      :session)
      SENSITIVE = [:access_token]
      include Aws::Structure
    end

    # @!attribute [rw] secret_code
    #   A unique generated shared secret code that is used in the TOTP
    #   algorithm to generate a one-time code.
    #   @return [String]
    #
    # @!attribute [rw] session
    #   The session that should be passed both ways in challenge-response
    #   calls to the service. This allows authentication of the user as part
    #   of the MFA setup process.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AssociateSoftwareTokenResponse AWS API Documentation
    #
    class AssociateSoftwareTokenResponse < Struct.new(
      :secret_code,
      :session)
      SENSITIVE = [:secret_code]
      include Aws::Structure
    end

    # Specifies whether the attribute is standard or custom.
    #
    # @!attribute [rw] name
    #   The name of the attribute.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the attribute.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AttributeType AWS API Documentation
    #
    class AttributeType < Struct.new(
      :name,
      :value)
      SENSITIVE = [:value]
      include Aws::Structure
    end

    # The authentication event type.
    #
    # @!attribute [rw] event_id
    #   The event ID.
    #   @return [String]
    #
    # @!attribute [rw] event_type
    #   The event type.
    #   @return [String]
    #
    # @!attribute [rw] creation_date
    #   The creation date
    #   @return [Time]
    #
    # @!attribute [rw] event_response
    #   The event response.
    #   @return [String]
    #
    # @!attribute [rw] event_risk
    #   The event risk.
    #   @return [Types::EventRiskType]
    #
    # @!attribute [rw] challenge_responses
    #   The challenge responses.
    #   @return [Array<Types::ChallengeResponseType>]
    #
    # @!attribute [rw] event_context_data
    #   The user context data captured at the time of an event request. This
    #   value provides additional information about the client from which
    #   event the request is received.
    #   @return [Types::EventContextDataType]
    #
    # @!attribute [rw] event_feedback
    #   A flag specifying the user feedback captured at the time of an event
    #   request is good or bad.
    #   @return [Types::EventFeedbackType]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AuthEventType AWS API Documentation
    #
    class AuthEventType < Struct.new(
      :event_id,
      :event_type,
      :creation_date,
      :event_response,
      :event_risk,
      :challenge_responses,
      :event_context_data,
      :event_feedback)
      SENSITIVE = []
      include Aws::Structure
    end

    # The authentication result.
    #
    # @!attribute [rw] access_token
    #   A valid access token that Amazon Cognito issued to the user who you
    #   want to authenticate.
    #   @return [String]
    #
    # @!attribute [rw] expires_in
    #   The expiration period of the authentication result in seconds.
    #   @return [Integer]
    #
    # @!attribute [rw] token_type
    #   The token type.
    #   @return [String]
    #
    # @!attribute [rw] refresh_token
    #   The refresh token.
    #   @return [String]
    #
    # @!attribute [rw] id_token
    #   The ID token.
    #   @return [String]
    #
    # @!attribute [rw] new_device_metadata
    #   The new device metadata from an authentication result.
    #   @return [Types::NewDeviceMetadataType]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AuthenticationResultType AWS API Documentation
    #
    class AuthenticationResultType < Struct.new(
      :access_token,
      :expires_in,
      :token_type,
      :refresh_token,
      :id_token,
      :new_device_metadata)
      SENSITIVE = [:access_token, :refresh_token, :id_token]
      include Aws::Structure
    end

    # The challenge response type.
    #
    # @!attribute [rw] challenge_name
    #   The challenge name.
    #   @return [String]
    #
    # @!attribute [rw] challenge_response
    #   The challenge response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/ChallengeResponseType AWS API Documentation
    #
    class ChallengeResponseType < Struct.new(
      :challenge_name,
      :challenge_response)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the request to change a user password.
    #
    # @!attribute [rw] previous_password
    #   The old password.
    #   @return [String]
    #
    # @!attribute [rw] proposed_password
    #   The new password.
    #   @return [String]
    #
    # @!attribute [rw] access_token
    #   A valid access token that Amazon Cognito issued to the user whose
    #   password you want to change.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/ChangePasswordRequest AWS API Documentation
    #
    class ChangePasswordRequest < Struct.new(
      :previous_password,
      :proposed_password,
      :access_token)
      SENSITIVE = [:previous_password, :proposed_password, :access_token]
      include Aws::Structure
    end

    # The response from the server to the change password request.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/ChangePasswordResponse AWS API Documentation
    #
    class ChangePasswordResponse < Aws::EmptyStructure; end

    # The delivery details for an email or SMS message that Amazon Cognito
    # sent for authentication or verification.
    #
    # @!attribute [rw] destination
    #   The email address or phone number destination where Amazon Cognito
    #   sent the code.
    #   @return [String]
    #
    # @!attribute [rw] delivery_medium
    #   The method that Amazon Cognito used to send the code.
    #   @return [String]
    #
    # @!attribute [rw] attribute_name
    #   The name of the attribute that Amazon Cognito verifies with the
    #   code.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/CodeDeliveryDetailsType AWS API Documentation
    #
    class CodeDeliveryDetailsType < Struct.new(
      :destination,
      :delivery_medium,
      :attribute_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # This exception is thrown when a verification code fails to deliver
    # successfully.
    #
    # @!attribute [rw] message
    #   The message sent when a verification code fails to deliver
    #   successfully.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/CodeDeliveryFailureException AWS API Documentation
    #
    class CodeDeliveryFailureException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # This exception is thrown if the provided code doesn't match what the
    # server was expecting.
    #
    # @!attribute [rw] message
    #   The message provided when the code mismatch exception is thrown.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/CodeMismatchException AWS API Documentation
    #
    class CodeMismatchException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The compromised credentials actions type.
    #
    # @!attribute [rw] event_action
    #   The event action.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/CompromisedCredentialsActionsType AWS API Documentation
    #
    class CompromisedCredentialsActionsType < Struct.new(
      :event_action)
      SENSITIVE = []
      include Aws::Structure
    end

    # The compromised credentials risk configuration type.
    #
    # @!attribute [rw] event_filter
    #   Perform the action for these events. The default is to perform all
    #   events if no event filter is specified.
    #   @return [Array<String>]
    #
    # @!attribute [rw] actions
    #   The compromised credentials risk configuration actions.
    #   @return [Types::CompromisedCredentialsActionsType]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/CompromisedCredentialsRiskConfigurationType AWS API Documentation
    #
    class CompromisedCredentialsRiskConfigurationType < Struct.new(
      :event_filter,
      :actions)
      SENSITIVE = []
      include Aws::Structure
    end

    # This exception is thrown if two or more modifications are happening
    # concurrently.
    #
    # @!attribute [rw] message
    #   The message provided when the concurrent exception is thrown.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/ConcurrentModificationException AWS API Documentation
    #
    class ConcurrentModificationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Confirms the device request.
    #
    # @!attribute [rw] access_token
    #   A valid access token that Amazon Cognito issued to the user whose
    #   device you want to confirm.
    #   @return [String]
    #
    # @!attribute [rw] device_key
    #   The device key.
    #   @return [String]
    #
    # @!attribute [rw] device_secret_verifier_config
    #   The configuration of the device secret verifier.
    #   @return [Types::DeviceSecretVerifierConfigType]
    #
    # @!attribute [rw] device_name
    #   The device name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/ConfirmDeviceRequest AWS API Documentation
    #
    class ConfirmDeviceRequest < Struct.new(
      :access_token,
      :device_key,
      :device_secret_verifier_config,
      :device_name)
      SENSITIVE = [:access_token]
      include Aws::Structure
    end

    # Confirms the device response.
    #
    # @!attribute [rw] user_confirmation_necessary
    #   Indicates whether the user confirmation must confirm the device
    #   response.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/ConfirmDeviceResponse AWS API Documentation
    #
    class ConfirmDeviceResponse < Struct.new(
      :user_confirmation_necessary)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request representing the confirmation for a password reset.
    #
    # @!attribute [rw] client_id
    #   The app client ID of the app associated with the user pool.
    #   @return [String]
    #
    # @!attribute [rw] secret_hash
    #   A keyed-hash message authentication code (HMAC) calculated using the
    #   secret key of a user pool client and username plus the client ID in
    #   the message.
    #   @return [String]
    #
    # @!attribute [rw] username
    #   The user name of the user for whom you want to enter a code to
    #   retrieve a forgotten password.
    #   @return [String]
    #
    # @!attribute [rw] confirmation_code
    #   The confirmation code from your user's request to reset their
    #   password. For more information, see [ForgotPassword][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_ForgotPassword.html
    #   @return [String]
    #
    # @!attribute [rw] password
    #   The new password that your user wants to set.
    #   @return [String]
    #
    # @!attribute [rw] analytics_metadata
    #   The Amazon Pinpoint analytics metadata for collecting metrics for
    #   `ConfirmForgotPassword` calls.
    #   @return [Types::AnalyticsMetadataType]
    #
    # @!attribute [rw] user_context_data
    #   Contextual data about your user session, such as the device
    #   fingerprint, IP address, or location. Amazon Cognito advanced
    #   security evaluates the risk of an authentication event based on the
    #   context that your app generates and passes to Amazon Cognito when it
    #   makes API requests.
    #   @return [Types::UserContextDataType]
    #
    # @!attribute [rw] client_metadata
    #   A map of custom key-value pairs that you can provide as input for
    #   any custom workflows that this action triggers.
    #
    #   You create custom workflows by assigning Lambda functions to user
    #   pool triggers. When you use the ConfirmForgotPassword API action,
    #   Amazon Cognito invokes the function that is assigned to the *post
    #   confirmation* trigger. When Amazon Cognito invokes this function, it
    #   passes a JSON payload, which the function receives as input. This
    #   payload contains a `clientMetadata` attribute, which provides the
    #   data that you assigned to the ClientMetadata parameter in your
    #   ConfirmForgotPassword request. In your function code in Lambda, you
    #   can process the `clientMetadata` value to enhance your workflow for
    #   your specific needs.
    #
    #   For more information, see [ Customizing user pool Workflows with
    #   Lambda Triggers][1] in the *Amazon Cognito Developer Guide*.
    #
    #   <note markdown="1"> When you use the ClientMetadata parameter, remember that Amazon
    #   Cognito won't do the following:
    #
    #    * Store the ClientMetadata value. This data is available only to
    #     Lambda triggers that are assigned to a user pool to support custom
    #     workflows. If your user pool configuration doesn't include
    #     triggers, the ClientMetadata parameter serves no purpose.
    #
    #   * Validate the ClientMetadata value.
    #
    #   * Encrypt the ClientMetadata value. Don't use Amazon Cognito to
    #     provide sensitive information.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-working-with-aws-lambda-triggers.html
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/ConfirmForgotPasswordRequest AWS API Documentation
    #
    class ConfirmForgotPasswordRequest < Struct.new(
      :client_id,
      :secret_hash,
      :username,
      :confirmation_code,
      :password,
      :analytics_metadata,
      :user_context_data,
      :client_metadata)
      SENSITIVE = [:client_id, :secret_hash, :username, :password]
      include Aws::Structure
    end

    # The response from the server that results from a user's request to
    # retrieve a forgotten password.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/ConfirmForgotPasswordResponse AWS API Documentation
    #
    class ConfirmForgotPasswordResponse < Aws::EmptyStructure; end

    # Represents the request to confirm registration of a user.
    #
    # @!attribute [rw] client_id
    #   The ID of the app client associated with the user pool.
    #   @return [String]
    #
    # @!attribute [rw] secret_hash
    #   A keyed-hash message authentication code (HMAC) calculated using the
    #   secret key of a user pool client and username plus the client ID in
    #   the message.
    #   @return [String]
    #
    # @!attribute [rw] username
    #   The user name of the user whose registration you want to confirm.
    #   @return [String]
    #
    # @!attribute [rw] confirmation_code
    #   The confirmation code sent by a user's request to confirm
    #   registration.
    #   @return [String]
    #
    # @!attribute [rw] force_alias_creation
    #   Boolean to be specified to force user confirmation irrespective of
    #   existing alias. By default set to `False`. If this parameter is set
    #   to `True` and the phone number/email used for sign up confirmation
    #   already exists as an alias with a different user, the API call will
    #   migrate the alias from the previous user to the newly created user
    #   being confirmed. If set to `False`, the API will throw an
    #   **AliasExistsException** error.
    #   @return [Boolean]
    #
    # @!attribute [rw] analytics_metadata
    #   The Amazon Pinpoint analytics metadata for collecting metrics for
    #   `ConfirmSignUp` calls.
    #   @return [Types::AnalyticsMetadataType]
    #
    # @!attribute [rw] user_context_data
    #   Contextual data about your user session, such as the device
    #   fingerprint, IP address, or location. Amazon Cognito advanced
    #   security evaluates the risk of an authentication event based on the
    #   context that your app generates and passes to Amazon Cognito when it
    #   makes API requests.
    #   @return [Types::UserContextDataType]
    #
    # @!attribute [rw] client_metadata
    #   A map of custom key-value pairs that you can provide as input for
    #   any custom workflows that this action triggers.
    #
    #   You create custom workflows by assigning Lambda functions to user
    #   pool triggers. When you use the ConfirmSignUp API action, Amazon
    #   Cognito invokes the function that is assigned to the *post
    #   confirmation* trigger. When Amazon Cognito invokes this function, it
    #   passes a JSON payload, which the function receives as input. This
    #   payload contains a `clientMetadata` attribute, which provides the
    #   data that you assigned to the ClientMetadata parameter in your
    #   ConfirmSignUp request. In your function code in Lambda, you can
    #   process the `clientMetadata` value to enhance your workflow for your
    #   specific needs.
    #
    #   For more information, see [ Customizing user pool Workflows with
    #   Lambda Triggers][1] in the *Amazon Cognito Developer Guide*.
    #
    #   <note markdown="1"> When you use the ClientMetadata parameter, remember that Amazon
    #   Cognito won't do the following:
    #
    #    * Store the ClientMetadata value. This data is available only to
    #     Lambda triggers that are assigned to a user pool to support custom
    #     workflows. If your user pool configuration doesn't include
    #     triggers, the ClientMetadata parameter serves no purpose.
    #
    #   * Validate the ClientMetadata value.
    #
    #   * Encrypt the ClientMetadata value. Don't use Amazon Cognito to
    #     provide sensitive information.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-working-with-aws-lambda-triggers.html
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/ConfirmSignUpRequest AWS API Documentation
    #
    class ConfirmSignUpRequest < Struct.new(
      :client_id,
      :secret_hash,
      :username,
      :confirmation_code,
      :force_alias_creation,
      :analytics_metadata,
      :user_context_data,
      :client_metadata)
      SENSITIVE = [:client_id, :secret_hash, :username]
      include Aws::Structure
    end

    # Represents the response from the server for the registration
    # confirmation.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/ConfirmSignUpResponse AWS API Documentation
    #
    class ConfirmSignUpResponse < Aws::EmptyStructure; end

    # Contextual user data type used for evaluating the risk of an
    # unexpected event by Amazon Cognito advanced security.
    #
    # @!attribute [rw] ip_address
    #   The source IP address of your user's device.
    #   @return [String]
    #
    # @!attribute [rw] server_name
    #   Your server endpoint where this API is invoked.
    #   @return [String]
    #
    # @!attribute [rw] server_path
    #   Your server path where this API is invoked.
    #   @return [String]
    #
    # @!attribute [rw] http_headers
    #   HttpHeaders received on your server in same order.
    #   @return [Array<Types::HttpHeader>]
    #
    # @!attribute [rw] encoded_data
    #   Encoded device-fingerprint details that your app collected with the
    #   Amazon Cognito context data collection library. For more
    #   information, see [Adding user device and session data to API
    #   requests][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pool-settings-adaptive-authentication.html#user-pool-settings-adaptive-authentication-device-fingerprint
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/ContextDataType AWS API Documentation
    #
    class ContextDataType < Struct.new(
      :ip_address,
      :server_name,
      :server_path,
      :http_headers,
      :encoded_data)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] group_name
    #   The name of the group. Must be unique.
    #   @return [String]
    #
    # @!attribute [rw] user_pool_id
    #   The user pool ID for the user pool.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A string containing the description of the group.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The role Amazon Resource Name (ARN) for the group.
    #   @return [String]
    #
    # @!attribute [rw] precedence
    #   A non-negative integer value that specifies the precedence of this
    #   group relative to the other groups that a user can belong to in the
    #   user pool. Zero is the highest precedence value. Groups with lower
    #   `Precedence` values take precedence over groups with higher or null
    #   `Precedence` values. If a user belongs to two or more groups, it is
    #   the group with the lowest precedence value whose role ARN is given
    #   in the user's tokens for the `cognito:roles` and
    #   `cognito:preferred_role` claims.
    #
    #   Two groups can have the same `Precedence` value. If this happens,
    #   neither group takes precedence over the other. If two groups with
    #   the same `Precedence` have the same role ARN, that role is used in
    #   the `cognito:preferred_role` claim in tokens for users in each
    #   group. If the two groups have different role ARNs, the
    #   `cognito:preferred_role` claim isn't set in users' tokens.
    #
    #   The default `Precedence` value is null. The maximum `Precedence`
    #   value is `2^31-1`.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/CreateGroupRequest AWS API Documentation
    #
    class CreateGroupRequest < Struct.new(
      :group_name,
      :user_pool_id,
      :description,
      :role_arn,
      :precedence)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] group
    #   The group object for the group.
    #   @return [Types::GroupType]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/CreateGroupResponse AWS API Documentation
    #
    class CreateGroupResponse < Struct.new(
      :group)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] user_pool_id
    #   The user pool ID.
    #   @return [String]
    #
    # @!attribute [rw] provider_name
    #   The IdP name.
    #   @return [String]
    #
    # @!attribute [rw] provider_type
    #   The IdP type.
    #   @return [String]
    #
    # @!attribute [rw] provider_details
    #   The IdP details. The following list describes the provider detail
    #   keys for each IdP type.
    #
    #   * For Google and Login with Amazon:
    #
    #     * client\_id
    #
    #     * client\_secret
    #
    #     * authorize\_scopes
    #
    #   * For Facebook:
    #
    #     * client\_id
    #
    #     * client\_secret
    #
    #     * authorize\_scopes
    #
    #     * api\_version
    #
    #   * For Sign in with Apple:
    #
    #     * client\_id
    #
    #     * team\_id
    #
    #     * key\_id
    #
    #     * private\_key
    #
    #     * authorize\_scopes
    #
    #   * For OpenID Connect (OIDC) providers:
    #
    #     * client\_id
    #
    #     * client\_secret
    #
    #     * attributes\_request\_method
    #
    #     * oidc\_issuer
    #
    #     * authorize\_scopes
    #
    #     * The following keys are only present if Amazon Cognito didn't
    #       discover them at the `oidc_issuer` URL.
    #
    #       * authorize\_url
    #
    #       * token\_url
    #
    #       * attributes\_url
    #
    #       * jwks\_uri
    #
    #     * Amazon Cognito sets the value of the following keys
    #       automatically. They are read-only.
    #
    #       * attributes\_url\_add\_attributes
    #
    #       ^
    #
    #   * For SAML providers:
    #
    #     * MetadataFile or MetadataURL
    #
    #     * IDPSignout *optional*
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] attribute_mapping
    #   A mapping of IdP attributes to standard and custom user pool
    #   attributes.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] idp_identifiers
    #   A list of IdP identifiers.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/CreateIdentityProviderRequest AWS API Documentation
    #
    class CreateIdentityProviderRequest < Struct.new(
      :user_pool_id,
      :provider_name,
      :provider_type,
      :provider_details,
      :attribute_mapping,
      :idp_identifiers)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] identity_provider
    #   The newly created IdP object.
    #   @return [Types::IdentityProviderType]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/CreateIdentityProviderResponse AWS API Documentation
    #
    class CreateIdentityProviderResponse < Struct.new(
      :identity_provider)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] user_pool_id
    #   The user pool ID for the user pool.
    #   @return [String]
    #
    # @!attribute [rw] identifier
    #   A unique resource server identifier for the resource server. This
    #   could be an HTTPS endpoint where the resource server is located,
    #   such as `https://my-weather-api.example.com`.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A friendly name for the resource server.
    #   @return [String]
    #
    # @!attribute [rw] scopes
    #   A list of scopes. Each scope is a key-value map with the keys `name`
    #   and `description`.
    #   @return [Array<Types::ResourceServerScopeType>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/CreateResourceServerRequest AWS API Documentation
    #
    class CreateResourceServerRequest < Struct.new(
      :user_pool_id,
      :identifier,
      :name,
      :scopes)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_server
    #   The newly created resource server.
    #   @return [Types::ResourceServerType]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/CreateResourceServerResponse AWS API Documentation
    #
    class CreateResourceServerResponse < Struct.new(
      :resource_server)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the request to create the user import job.
    #
    # @!attribute [rw] job_name
    #   The job name for the user import job.
    #   @return [String]
    #
    # @!attribute [rw] user_pool_id
    #   The user pool ID for the user pool that the users are being imported
    #   into.
    #   @return [String]
    #
    # @!attribute [rw] cloud_watch_logs_role_arn
    #   The role ARN for the Amazon CloudWatch Logs Logging role for the
    #   user import job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/CreateUserImportJobRequest AWS API Documentation
    #
    class CreateUserImportJobRequest < Struct.new(
      :job_name,
      :user_pool_id,
      :cloud_watch_logs_role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the response from the server to the request to create the
    # user import job.
    #
    # @!attribute [rw] user_import_job
    #   The job object that represents the user import job.
    #   @return [Types::UserImportJobType]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/CreateUserImportJobResponse AWS API Documentation
    #
    class CreateUserImportJobResponse < Struct.new(
      :user_import_job)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the request to create a user pool client.
    #
    # @!attribute [rw] user_pool_id
    #   The user pool ID for the user pool where you want to create a user
    #   pool client.
    #   @return [String]
    #
    # @!attribute [rw] client_name
    #   The client name for the user pool client you would like to create.
    #   @return [String]
    #
    # @!attribute [rw] generate_secret
    #   Boolean to specify whether you want to generate a secret for the
    #   user pool client being created.
    #   @return [Boolean]
    #
    # @!attribute [rw] refresh_token_validity
    #   The refresh token time limit. After this limit expires, your user
    #   can't use their refresh token. To specify the time unit for
    #   `RefreshTokenValidity` as `seconds`, `minutes`, `hours`, or `days`,
    #   set a `TokenValidityUnits` value in your API request.
    #
    #   For example, when you set `RefreshTokenValidity` as `10` and
    #   `TokenValidityUnits` as `days`, your user can refresh their session
    #   and retrieve new access and ID tokens for 10 days.
    #
    #   The default time unit for `RefreshTokenValidity` in an API request
    #   is days. You can't set `RefreshTokenValidity` to 0. If you do,
    #   Amazon Cognito overrides the value with the default value of 30
    #   days. *Valid range* is displayed below in seconds.
    #
    #   If you don't specify otherwise in the configuration of your app
    #   client, your refresh tokens are valid for 30 days.
    #   @return [Integer]
    #
    # @!attribute [rw] access_token_validity
    #   The access token time limit. After this limit expires, your user
    #   can't use their access token. To specify the time unit for
    #   `AccessTokenValidity` as `seconds`, `minutes`, `hours`, or `days`,
    #   set a `TokenValidityUnits` value in your API request.
    #
    #   For example, when you set `AccessTokenValidity` to `10` and
    #   `TokenValidityUnits` to `hours`, your user can authorize access with
    #   their access token for 10 hours.
    #
    #   The default time unit for `AccessTokenValidity` in an API request is
    #   hours. *Valid range* is displayed below in seconds.
    #
    #   If you don't specify otherwise in the configuration of your app
    #   client, your access tokens are valid for one hour.
    #   @return [Integer]
    #
    # @!attribute [rw] id_token_validity
    #   The ID token time limit. After this limit expires, your user can't
    #   use their ID token. To specify the time unit for `IdTokenValidity`
    #   as `seconds`, `minutes`, `hours`, or `days`, set a
    #   `TokenValidityUnits` value in your API request.
    #
    #   For example, when you set `IdTokenValidity` as `10` and
    #   `TokenValidityUnits` as `hours`, your user can authenticate their
    #   session with their ID token for 10 hours.
    #
    #   The default time unit for `AccessTokenValidity` in an API request is
    #   hours. *Valid range* is displayed below in seconds.
    #
    #   If you don't specify otherwise in the configuration of your app
    #   client, your ID tokens are valid for one hour.
    #   @return [Integer]
    #
    # @!attribute [rw] token_validity_units
    #   The units in which the validity times are represented. The default
    #   unit for RefreshToken is days, and default for ID and access tokens
    #   are hours.
    #   @return [Types::TokenValidityUnitsType]
    #
    # @!attribute [rw] read_attributes
    #   The read attributes.
    #   @return [Array<String>]
    #
    # @!attribute [rw] write_attributes
    #   The user pool attributes that the app client can write to.
    #
    #   If your app client allows users to sign in through an IdP, this
    #   array must include all attributes that you have mapped to IdP
    #   attributes. Amazon Cognito updates mapped attributes when users sign
    #   in to your application through an IdP. If your app client does not
    #   have write access to a mapped attribute, Amazon Cognito throws an
    #   error when it tries to update the attribute. For more information,
    #   see [Specifying IdP Attribute Mappings for Your user pool][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-specifying-attribute-mapping.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] explicit_auth_flows
    #   The authentication flows that you want your user pool client to
    #   support. For each app client in your user pool, you can sign in your
    #   users with any combination of one or more flows, including with a
    #   user name and Secure Remote Password (SRP), a user name and
    #   password, or a custom authentication process that you define with
    #   Lambda functions.
    #
    #   <note markdown="1"> If you don't specify a value for `ExplicitAuthFlows`, your user
    #   client supports `ALLOW_REFRESH_TOKEN_AUTH`, `ALLOW_USER_SRP_AUTH`,
    #   and `ALLOW_CUSTOM_AUTH`.
    #
    #    </note>
    #
    #   Valid values include:
    #
    #   * `ALLOW_ADMIN_USER_PASSWORD_AUTH`: Enable admin based user password
    #     authentication flow `ADMIN_USER_PASSWORD_AUTH`. This setting
    #     replaces the `ADMIN_NO_SRP_AUTH` setting. With this authentication
    #     flow, your app passes a user name and password to Amazon Cognito
    #     in the request, instead of using the Secure Remote Password (SRP)
    #     protocol to securely transmit the password.
    #
    #   * `ALLOW_CUSTOM_AUTH`: Enable Lambda trigger based authentication.
    #
    #   * `ALLOW_USER_PASSWORD_AUTH`: Enable user password-based
    #     authentication. In this flow, Amazon Cognito receives the password
    #     in the request instead of using the SRP protocol to verify
    #     passwords.
    #
    #   * `ALLOW_USER_SRP_AUTH`: Enable SRP-based authentication.
    #
    #   * `ALLOW_REFRESH_TOKEN_AUTH`: Enable authflow to refresh tokens.
    #
    #   In some environments, you will see the values `ADMIN_NO_SRP_AUTH`,
    #   `CUSTOM_AUTH_FLOW_ONLY`, or `USER_PASSWORD_AUTH`. You can't assign
    #   these legacy `ExplicitAuthFlows` values to user pool clients at the
    #   same time as values that begin with `ALLOW_`, like
    #   `ALLOW_USER_SRP_AUTH`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] supported_identity_providers
    #   A list of provider names for the identity providers (IdPs) that are
    #   supported on this client. The following are supported: `COGNITO`,
    #   `Facebook`, `Google`, `SignInWithApple`, and `LoginWithAmazon`. You
    #   can also specify the names that you configured for the SAML and OIDC
    #   IdPs in your user pool, for example `MySAMLIdP` or `MyOIDCIdP`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] callback_urls
    #   A list of allowed redirect (callback) URLs for the IdPs.
    #
    #   A redirect URI must:
    #
    #   * Be an absolute URI.
    #
    #   * Be registered with the authorization server.
    #
    #   * Not include a fragment component.
    #
    #   See [OAuth 2.0 - Redirection Endpoint][1].
    #
    #   Amazon Cognito requires HTTPS over HTTP except for http://localhost
    #   for testing purposes only.
    #
    #   App callback URLs such as myapp://example are also supported.
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc6749#section-3.1.2
    #   @return [Array<String>]
    #
    # @!attribute [rw] logout_urls
    #   A list of allowed logout URLs for the IdPs.
    #   @return [Array<String>]
    #
    # @!attribute [rw] default_redirect_uri
    #   The default redirect URI. Must be in the `CallbackURLs` list.
    #
    #   A redirect URI must:
    #
    #   * Be an absolute URI.
    #
    #   * Be registered with the authorization server.
    #
    #   * Not include a fragment component.
    #
    #   See [OAuth 2.0 - Redirection Endpoint][1].
    #
    #   Amazon Cognito requires HTTPS over HTTP except for http://localhost
    #   for testing purposes only.
    #
    #   App callback URLs such as myapp://example are also supported.
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc6749#section-3.1.2
    #   @return [String]
    #
    # @!attribute [rw] allowed_o_auth_flows
    #   The allowed OAuth flows.
    #
    #   code
    #
    #   : Use a code grant flow, which provides an authorization code as the
    #     response. This code can be exchanged for access tokens with the
    #     `/oauth2/token` endpoint.
    #
    #   implicit
    #
    #   : Issue the access token (and, optionally, ID token, based on
    #     scopes) directly to your user.
    #
    #   client\_credentials
    #
    #   : Issue the access token from the `/oauth2/token` endpoint directly
    #     to a non-person user using a combination of the client ID and
    #     client secret.
    #   @return [Array<String>]
    #
    # @!attribute [rw] allowed_o_auth_scopes
    #   The allowed OAuth scopes. Possible values provided by OAuth are
    #   `phone`, `email`, `openid`, and `profile`. Possible values provided
    #   by Amazon Web Services are `aws.cognito.signin.user.admin`. Custom
    #   scopes created in Resource Servers are also supported.
    #   @return [Array<String>]
    #
    # @!attribute [rw] allowed_o_auth_flows_user_pool_client
    #   Set to true if the client is allowed to follow the OAuth protocol
    #   when interacting with Amazon Cognito user pools.
    #   @return [Boolean]
    #
    # @!attribute [rw] analytics_configuration
    #   The user pool analytics configuration for collecting metrics and
    #   sending them to your Amazon Pinpoint campaign.
    #
    #   <note markdown="1"> In Amazon Web Services Regions where Amazon Pinpoint isn't
    #   available, user pools only support sending events to Amazon Pinpoint
    #   projects in Amazon Web Services Region us-east-1. In Regions where
    #   Amazon Pinpoint is available, user pools support sending events to
    #   Amazon Pinpoint projects within that same Region.
    #
    #    </note>
    #   @return [Types::AnalyticsConfigurationType]
    #
    # @!attribute [rw] prevent_user_existence_errors
    #   Errors and responses that you want Amazon Cognito APIs to return
    #   during authentication, account confirmation, and password recovery
    #   when the user doesn't exist in the user pool. When set to `ENABLED`
    #   and the user doesn't exist, authentication returns an error
    #   indicating either the username or password was incorrect. Account
    #   confirmation and password recovery return a response indicating a
    #   code was sent to a simulated destination. When set to `LEGACY`,
    #   those APIs return a `UserNotFoundException` exception if the user
    #   doesn't exist in the user pool.
    #
    #   Valid values include:
    #
    #   * `ENABLED` - This prevents user existence-related errors.
    #
    #   * `LEGACY` - This represents the early behavior of Amazon Cognito
    #     where user existence related errors aren't prevented.
    #   @return [String]
    #
    # @!attribute [rw] enable_token_revocation
    #   Activates or deactivates token revocation. For more information
    #   about revoking tokens, see [RevokeToken][1].
    #
    #   If you don't include this parameter, token revocation is
    #   automatically activated for the new user pool client.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_RevokeToken.html
    #   @return [Boolean]
    #
    # @!attribute [rw] enable_propagate_additional_user_context_data
    #   Activates the propagation of additional user context data. For more
    #   information about propagation of user context data, see [ Adding
    #   advanced security to a user pool][1]. If you don’t include this
    #   parameter, you can't send device fingerprint information, including
    #   source IP address, to Amazon Cognito advanced security. You can only
    #   activate `EnablePropagateAdditionalUserContextData` in an app client
    #   that has a client secret.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pool-settings-advanced-security.html
    #   @return [Boolean]
    #
    # @!attribute [rw] auth_session_validity
    #   Amazon Cognito creates a session token for each API request in an
    #   authentication flow. `AuthSessionValidity` is the duration, in
    #   minutes, of that session token. Your user pool native user must
    #   respond to each authentication challenge before the session expires.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/CreateUserPoolClientRequest AWS API Documentation
    #
    class CreateUserPoolClientRequest < Struct.new(
      :user_pool_id,
      :client_name,
      :generate_secret,
      :refresh_token_validity,
      :access_token_validity,
      :id_token_validity,
      :token_validity_units,
      :read_attributes,
      :write_attributes,
      :explicit_auth_flows,
      :supported_identity_providers,
      :callback_urls,
      :logout_urls,
      :default_redirect_uri,
      :allowed_o_auth_flows,
      :allowed_o_auth_scopes,
      :allowed_o_auth_flows_user_pool_client,
      :analytics_configuration,
      :prevent_user_existence_errors,
      :enable_token_revocation,
      :enable_propagate_additional_user_context_data,
      :auth_session_validity)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the response from the server to create a user pool client.
    #
    # @!attribute [rw] user_pool_client
    #   The user pool client that was just created.
    #   @return [Types::UserPoolClientType]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/CreateUserPoolClientResponse AWS API Documentation
    #
    class CreateUserPoolClientResponse < Struct.new(
      :user_pool_client)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain
    #   The domain string. For custom domains, this is the fully-qualified
    #   domain name, such as `auth.example.com`. For Amazon Cognito prefix
    #   domains, this is the prefix alone, such as `auth`.
    #   @return [String]
    #
    # @!attribute [rw] user_pool_id
    #   The user pool ID.
    #   @return [String]
    #
    # @!attribute [rw] custom_domain_config
    #   The configuration for a custom domain that hosts the sign-up and
    #   sign-in webpages for your application.
    #
    #   Provide this parameter only if you want to use a custom domain for
    #   your user pool. Otherwise, you can exclude this parameter and use
    #   the Amazon Cognito hosted domain instead.
    #
    #   For more information about the hosted domain and custom domains, see
    #   [Configuring a User Pool Domain][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-assign-domain.html
    #   @return [Types::CustomDomainConfigType]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/CreateUserPoolDomainRequest AWS API Documentation
    #
    class CreateUserPoolDomainRequest < Struct.new(
      :domain,
      :user_pool_id,
      :custom_domain_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cloud_front_domain
    #   The Amazon CloudFront endpoint that you use as the target of the
    #   alias that you set up with your Domain Name Service (DNS) provider.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/CreateUserPoolDomainResponse AWS API Documentation
    #
    class CreateUserPoolDomainResponse < Struct.new(
      :cloud_front_domain)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the request to create a user pool.
    #
    # @!attribute [rw] pool_name
    #   A string used to name the user pool.
    #   @return [String]
    #
    # @!attribute [rw] policies
    #   The policies associated with the new user pool.
    #   @return [Types::UserPoolPolicyType]
    #
    # @!attribute [rw] deletion_protection
    #   When active, `DeletionProtection` prevents accidental deletion of
    #   your user pool. Before you can delete a user pool that you have
    #   protected against deletion, you must deactivate this feature.
    #
    #   When you try to delete a protected user pool in a `DeleteUserPool`
    #   API request, Amazon Cognito returns an `InvalidParameterException`
    #   error. To delete a protected user pool, send a new `DeleteUserPool`
    #   request after you deactivate deletion protection in an
    #   `UpdateUserPool` API request.
    #   @return [String]
    #
    # @!attribute [rw] lambda_config
    #   The Lambda trigger configuration information for the new user pool.
    #
    #   <note markdown="1"> In a push model, event sources (such as Amazon S3 and custom
    #   applications) need permission to invoke a function. So you must make
    #   an extra call to add permission for these event sources to invoke
    #   your Lambda function.
    #
    #
    #
    #    For more information on using the Lambda API to add permission, see[
    #   AddPermission ][1].
    #
    #    For adding permission using the CLI, see[ add-permission ][2].
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lambda/latest/dg/API_AddPermission.html
    #   [2]: https://docs.aws.amazon.com/cli/latest/reference/lambda/add-permission.html
    #   @return [Types::LambdaConfigType]
    #
    # @!attribute [rw] auto_verified_attributes
    #   The attributes to be auto-verified. Possible values: **email**,
    #   **phone\_number**.
    #   @return [Array<String>]
    #
    # @!attribute [rw] alias_attributes
    #   Attributes supported as an alias for this user pool. Possible
    #   values: **phone\_number**, **email**, or **preferred\_username**.
    #   @return [Array<String>]
    #
    # @!attribute [rw] username_attributes
    #   Specifies whether a user can use an email address or phone number as
    #   a username when they sign up.
    #   @return [Array<String>]
    #
    # @!attribute [rw] sms_verification_message
    #   This parameter is no longer used. See
    #   [VerificationMessageTemplateType][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_VerificationMessageTemplateType.html
    #   @return [String]
    #
    # @!attribute [rw] email_verification_message
    #   This parameter is no longer used. See
    #   [VerificationMessageTemplateType][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_VerificationMessageTemplateType.html
    #   @return [String]
    #
    # @!attribute [rw] email_verification_subject
    #   This parameter is no longer used. See
    #   [VerificationMessageTemplateType][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_VerificationMessageTemplateType.html
    #   @return [String]
    #
    # @!attribute [rw] verification_message_template
    #   The template for the verification message that the user sees when
    #   the app requests permission to access the user's information.
    #   @return [Types::VerificationMessageTemplateType]
    #
    # @!attribute [rw] sms_authentication_message
    #   A string representing the SMS authentication message.
    #   @return [String]
    #
    # @!attribute [rw] mfa_configuration
    #   Specifies MFA configuration details.
    #   @return [String]
    #
    # @!attribute [rw] user_attribute_update_settings
    #   The settings for updates to user attributes. These settings include
    #   the property `AttributesRequireVerificationBeforeUpdate`, a
    #   user-pool setting that tells Amazon Cognito how to handle changes to
    #   the value of your users' email address and phone number attributes.
    #   For more information, see [ Verifying updates to email addresses and
    #   phone numbers][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-settings-email-phone-verification.html#user-pool-settings-verifications-verify-attribute-updates
    #   @return [Types::UserAttributeUpdateSettingsType]
    #
    # @!attribute [rw] device_configuration
    #   The device-remembering configuration for a user pool. A null value
    #   indicates that you have deactivated device remembering in your user
    #   pool.
    #
    #   <note markdown="1"> When you provide a value for any `DeviceConfiguration` field, you
    #   activate the Amazon Cognito device-remembering feature.
    #
    #    </note>
    #   @return [Types::DeviceConfigurationType]
    #
    # @!attribute [rw] email_configuration
    #   The email configuration of your user pool. The email configuration
    #   type sets your preferred sending method, Amazon Web Services Region,
    #   and sender for messages from your user pool.
    #   @return [Types::EmailConfigurationType]
    #
    # @!attribute [rw] sms_configuration
    #   The SMS configuration with the settings that your Amazon Cognito
    #   user pool must use to send an SMS message from your Amazon Web
    #   Services account through Amazon Simple Notification Service. To send
    #   SMS messages with Amazon SNS in the Amazon Web Services Region that
    #   you want, the Amazon Cognito user pool uses an Identity and Access
    #   Management (IAM) role in your Amazon Web Services account.
    #   @return [Types::SmsConfigurationType]
    #
    # @!attribute [rw] user_pool_tags
    #   The tag keys and values to assign to the user pool. A tag is a label
    #   that you can use to categorize and manage user pools in different
    #   ways, such as by purpose, owner, environment, or other criteria.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] admin_create_user_config
    #   The configuration for `AdminCreateUser` requests.
    #   @return [Types::AdminCreateUserConfigType]
    #
    # @!attribute [rw] schema
    #   An array of schema attributes for the new user pool. These
    #   attributes can be standard or custom attributes.
    #   @return [Array<Types::SchemaAttributeType>]
    #
    # @!attribute [rw] user_pool_add_ons
    #   Enables advanced security risk detection. Set the key
    #   `AdvancedSecurityMode` to the value "AUDIT".
    #   @return [Types::UserPoolAddOnsType]
    #
    # @!attribute [rw] username_configuration
    #   Case sensitivity on the username input for the selected sign-in
    #   option. For example, when case sensitivity is set to `False`, users
    #   can sign in using either "username" or "Username". This
    #   configuration is immutable once it has been set. For more
    #   information, see [UsernameConfigurationType][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_UsernameConfigurationType.html
    #   @return [Types::UsernameConfigurationType]
    #
    # @!attribute [rw] account_recovery_setting
    #   The available verified method a user can use to recover their
    #   password when they call `ForgotPassword`. You can use this setting
    #   to define a preferred method when a user has more than one method
    #   available. With this setting, SMS doesn't qualify for a valid
    #   password recovery mechanism if the user also has SMS multi-factor
    #   authentication (MFA) activated. In the absence of this setting,
    #   Amazon Cognito uses the legacy behavior to determine the recovery
    #   method where SMS is preferred through email.
    #   @return [Types::AccountRecoverySettingType]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/CreateUserPoolRequest AWS API Documentation
    #
    class CreateUserPoolRequest < Struct.new(
      :pool_name,
      :policies,
      :deletion_protection,
      :lambda_config,
      :auto_verified_attributes,
      :alias_attributes,
      :username_attributes,
      :sms_verification_message,
      :email_verification_message,
      :email_verification_subject,
      :verification_message_template,
      :sms_authentication_message,
      :mfa_configuration,
      :user_attribute_update_settings,
      :device_configuration,
      :email_configuration,
      :sms_configuration,
      :user_pool_tags,
      :admin_create_user_config,
      :schema,
      :user_pool_add_ons,
      :username_configuration,
      :account_recovery_setting)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the response from the server for the request to create a
    # user pool.
    #
    # @!attribute [rw] user_pool
    #   A container for the user pool details.
    #   @return [Types::UserPoolType]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/CreateUserPoolResponse AWS API Documentation
    #
    class CreateUserPoolResponse < Struct.new(
      :user_pool)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration for a custom domain that hosts the sign-up and
    # sign-in webpages for your application.
    #
    # @!attribute [rw] certificate_arn
    #   The Amazon Resource Name (ARN) of an Certificate Manager SSL
    #   certificate. You use this certificate for the subdomain of your
    #   custom domain.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/CustomDomainConfigType AWS API Documentation
    #
    class CustomDomainConfigType < Struct.new(
      :certificate_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # A custom email sender Lambda configuration type.
    #
    # @!attribute [rw] lambda_version
    #   Signature of the "request" attribute in the "event" information
    #   Amazon Cognito passes to your custom email Lambda function. The only
    #   supported value is `V1_0`.
    #   @return [String]
    #
    # @!attribute [rw] lambda_arn
    #   The Amazon Resource Name (ARN) of the Lambda function that Amazon
    #   Cognito activates to send email notifications to users.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/CustomEmailLambdaVersionConfigType AWS API Documentation
    #
    class CustomEmailLambdaVersionConfigType < Struct.new(
      :lambda_version,
      :lambda_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # A custom SMS sender Lambda configuration type.
    #
    # @!attribute [rw] lambda_version
    #   Signature of the "request" attribute in the "event" information
    #   that Amazon Cognito passes to your custom SMS Lambda function. The
    #   only supported value is `V1_0`.
    #   @return [String]
    #
    # @!attribute [rw] lambda_arn
    #   The Amazon Resource Name (ARN) of the Lambda function that Amazon
    #   Cognito activates to send SMS notifications to users.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/CustomSMSLambdaVersionConfigType AWS API Documentation
    #
    class CustomSMSLambdaVersionConfigType < Struct.new(
      :lambda_version,
      :lambda_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] group_name
    #   The name of the group.
    #   @return [String]
    #
    # @!attribute [rw] user_pool_id
    #   The user pool ID for the user pool.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/DeleteGroupRequest AWS API Documentation
    #
    class DeleteGroupRequest < Struct.new(
      :group_name,
      :user_pool_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] user_pool_id
    #   The user pool ID.
    #   @return [String]
    #
    # @!attribute [rw] provider_name
    #   The IdP name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/DeleteIdentityProviderRequest AWS API Documentation
    #
    class DeleteIdentityProviderRequest < Struct.new(
      :user_pool_id,
      :provider_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] user_pool_id
    #   The user pool ID for the user pool that hosts the resource server.
    #   @return [String]
    #
    # @!attribute [rw] identifier
    #   The identifier for the resource server.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/DeleteResourceServerRequest AWS API Documentation
    #
    class DeleteResourceServerRequest < Struct.new(
      :user_pool_id,
      :identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the request to delete user attributes.
    #
    # @!attribute [rw] user_attribute_names
    #   An array of strings representing the user attribute names you want
    #   to delete.
    #
    #   For custom attributes, you must prependattach the `custom:` prefix
    #   to the front of the attribute name.
    #   @return [Array<String>]
    #
    # @!attribute [rw] access_token
    #   A valid access token that Amazon Cognito issued to the user whose
    #   attributes you want to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/DeleteUserAttributesRequest AWS API Documentation
    #
    class DeleteUserAttributesRequest < Struct.new(
      :user_attribute_names,
      :access_token)
      SENSITIVE = [:access_token]
      include Aws::Structure
    end

    # Represents the response from the server to delete user attributes.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/DeleteUserAttributesResponse AWS API Documentation
    #
    class DeleteUserAttributesResponse < Aws::EmptyStructure; end

    # Represents the request to delete a user pool client.
    #
    # @!attribute [rw] user_pool_id
    #   The user pool ID for the user pool where you want to delete the
    #   client.
    #   @return [String]
    #
    # @!attribute [rw] client_id
    #   The app client ID of the app associated with the user pool.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/DeleteUserPoolClientRequest AWS API Documentation
    #
    class DeleteUserPoolClientRequest < Struct.new(
      :user_pool_id,
      :client_id)
      SENSITIVE = [:client_id]
      include Aws::Structure
    end

    # @!attribute [rw] domain
    #   The domain string. For custom domains, this is the fully-qualified
    #   domain name, such as `auth.example.com`. For Amazon Cognito prefix
    #   domains, this is the prefix alone, such as `auth`.
    #   @return [String]
    #
    # @!attribute [rw] user_pool_id
    #   The user pool ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/DeleteUserPoolDomainRequest AWS API Documentation
    #
    class DeleteUserPoolDomainRequest < Struct.new(
      :domain,
      :user_pool_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/DeleteUserPoolDomainResponse AWS API Documentation
    #
    class DeleteUserPoolDomainResponse < Aws::EmptyStructure; end

    # Represents the request to delete a user pool.
    #
    # @!attribute [rw] user_pool_id
    #   The user pool ID for the user pool you want to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/DeleteUserPoolRequest AWS API Documentation
    #
    class DeleteUserPoolRequest < Struct.new(
      :user_pool_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the request to delete a user.
    #
    # @!attribute [rw] access_token
    #   A valid access token that Amazon Cognito issued to the user whose
    #   user profile you want to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/DeleteUserRequest AWS API Documentation
    #
    class DeleteUserRequest < Struct.new(
      :access_token)
      SENSITIVE = [:access_token]
      include Aws::Structure
    end

    # @!attribute [rw] user_pool_id
    #   The user pool ID.
    #   @return [String]
    #
    # @!attribute [rw] provider_name
    #   The IdP name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/DescribeIdentityProviderRequest AWS API Documentation
    #
    class DescribeIdentityProviderRequest < Struct.new(
      :user_pool_id,
      :provider_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] identity_provider
    #   The identity provider details.
    #   @return [Types::IdentityProviderType]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/DescribeIdentityProviderResponse AWS API Documentation
    #
    class DescribeIdentityProviderResponse < Struct.new(
      :identity_provider)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] user_pool_id
    #   The user pool ID for the user pool that hosts the resource server.
    #   @return [String]
    #
    # @!attribute [rw] identifier
    #   The identifier for the resource server
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/DescribeResourceServerRequest AWS API Documentation
    #
    class DescribeResourceServerRequest < Struct.new(
      :user_pool_id,
      :identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_server
    #   The resource server.
    #   @return [Types::ResourceServerType]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/DescribeResourceServerResponse AWS API Documentation
    #
    class DescribeResourceServerResponse < Struct.new(
      :resource_server)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] user_pool_id
    #   The user pool ID.
    #   @return [String]
    #
    # @!attribute [rw] client_id
    #   The app client ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/DescribeRiskConfigurationRequest AWS API Documentation
    #
    class DescribeRiskConfigurationRequest < Struct.new(
      :user_pool_id,
      :client_id)
      SENSITIVE = [:client_id]
      include Aws::Structure
    end

    # @!attribute [rw] risk_configuration
    #   The risk configuration.
    #   @return [Types::RiskConfigurationType]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/DescribeRiskConfigurationResponse AWS API Documentation
    #
    class DescribeRiskConfigurationResponse < Struct.new(
      :risk_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the request to describe the user import job.
    #
    # @!attribute [rw] user_pool_id
    #   The user pool ID for the user pool that the users are being imported
    #   into.
    #   @return [String]
    #
    # @!attribute [rw] job_id
    #   The job ID for the user import job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/DescribeUserImportJobRequest AWS API Documentation
    #
    class DescribeUserImportJobRequest < Struct.new(
      :user_pool_id,
      :job_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the response from the server to the request to describe the
    # user import job.
    #
    # @!attribute [rw] user_import_job
    #   The job object that represents the user import job.
    #   @return [Types::UserImportJobType]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/DescribeUserImportJobResponse AWS API Documentation
    #
    class DescribeUserImportJobResponse < Struct.new(
      :user_import_job)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the request to describe a user pool client.
    #
    # @!attribute [rw] user_pool_id
    #   The user pool ID for the user pool you want to describe.
    #   @return [String]
    #
    # @!attribute [rw] client_id
    #   The app client ID of the app associated with the user pool.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/DescribeUserPoolClientRequest AWS API Documentation
    #
    class DescribeUserPoolClientRequest < Struct.new(
      :user_pool_id,
      :client_id)
      SENSITIVE = [:client_id]
      include Aws::Structure
    end

    # Represents the response from the server from a request to describe the
    # user pool client.
    #
    # @!attribute [rw] user_pool_client
    #   The user pool client from a server response to describe the user
    #   pool client.
    #   @return [Types::UserPoolClientType]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/DescribeUserPoolClientResponse AWS API Documentation
    #
    class DescribeUserPoolClientResponse < Struct.new(
      :user_pool_client)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain
    #   The domain string. For custom domains, this is the fully-qualified
    #   domain name, such as `auth.example.com`. For Amazon Cognito prefix
    #   domains, this is the prefix alone, such as `auth`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/DescribeUserPoolDomainRequest AWS API Documentation
    #
    class DescribeUserPoolDomainRequest < Struct.new(
      :domain)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_description
    #   A domain description object containing information about the domain.
    #   @return [Types::DomainDescriptionType]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/DescribeUserPoolDomainResponse AWS API Documentation
    #
    class DescribeUserPoolDomainResponse < Struct.new(
      :domain_description)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the request to describe the user pool.
    #
    # @!attribute [rw] user_pool_id
    #   The user pool ID for the user pool you want to describe.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/DescribeUserPoolRequest AWS API Documentation
    #
    class DescribeUserPoolRequest < Struct.new(
      :user_pool_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the response to describe the user pool.
    #
    # @!attribute [rw] user_pool
    #   The container of metadata returned by the server to describe the
    #   pool.
    #   @return [Types::UserPoolType]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/DescribeUserPoolResponse AWS API Documentation
    #
    class DescribeUserPoolResponse < Struct.new(
      :user_pool)
      SENSITIVE = []
      include Aws::Structure
    end

    # The device-remembering configuration for a user pool. A [
    # DescribeUserPool][1] request returns a null value for this object when
    # the user pool isn't configured to remember devices. When device
    # remembering is active, you can remember a user's device with a
    # [ConfirmDevice][2] API request. Additionally. when the property
    # `DeviceOnlyRememberedOnUserPrompt` is `true`, you must follow
    # `ConfirmDevice` with an [UpdateDeviceStatus][3] API request that sets
    # the user's device to `remembered` or `not_remembered`.
    #
    # To sign in with a remembered device, include `DEVICE_KEY` in the
    # authentication parameters in your user's [ InitiateAuth][4] request.
    # If your app doesn't include a `DEVICE_KEY` parameter, the
    # [response][5] from Amazon Cognito includes newly-generated
    # `DEVICE_KEY` and `DEVICE_GROUP_KEY` values under `NewDeviceMetadata`.
    # Store these values to use in future device-authentication requests.
    #
    # <note markdown="1"> When you provide a value for any property of `DeviceConfiguration`,
    # you activate the device remembering for the user pool.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_DescribeUserPool.html
    # [2]: https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_ConfirmDevice.html
    # [3]: https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_UpdateDeviceStatus.html
    # [4]: https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_InitiateAuth.html
    # [5]: https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_InitiateAuth.html#API_InitiateAuth_ResponseSyntax
    #
    # @!attribute [rw] challenge_required_on_new_device
    #   When true, a remembered device can sign in with device
    #   authentication instead of SMS and time-based one-time password
    #   (TOTP) factors for multi-factor authentication (MFA).
    #
    #   <note markdown="1"> Whether or not `ChallengeRequiredOnNewDevice` is true, users who
    #   sign in with devices that have not been confirmed or remembered must
    #   still provide a second factor in a user pool that requires MFA.
    #
    #    </note>
    #   @return [Boolean]
    #
    # @!attribute [rw] device_only_remembered_on_user_prompt
    #   When true, Amazon Cognito doesn't automatically remember a user's
    #   device when your app sends a [ ConfirmDevice][1] API request. In
    #   your app, create a prompt for your user to choose whether they want
    #   to remember their device. Return the user's choice in an [
    #   UpdateDeviceStatus][2] API request.
    #
    #   When `DeviceOnlyRememberedOnUserPrompt` is `false`, Amazon Cognito
    #   immediately remembers devices that you register in a `ConfirmDevice`
    #   API request.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_ConfirmDevice.html
    #   [2]: https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_UpdateDeviceStatus.html
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/DeviceConfigurationType AWS API Documentation
    #
    class DeviceConfigurationType < Struct.new(
      :challenge_required_on_new_device,
      :device_only_remembered_on_user_prompt)
      SENSITIVE = []
      include Aws::Structure
    end

    # The device verifier against which it is authenticated.
    #
    # @!attribute [rw] password_verifier
    #   The password verifier.
    #   @return [String]
    #
    # @!attribute [rw] salt
    #   The [salt][1]
    #
    #
    #
    #   [1]: https://en.wikipedia.org/wiki/Salt_(cryptography)
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/DeviceSecretVerifierConfigType AWS API Documentation
    #
    class DeviceSecretVerifierConfigType < Struct.new(
      :password_verifier,
      :salt)
      SENSITIVE = []
      include Aws::Structure
    end

    # The device type.
    #
    # @!attribute [rw] device_key
    #   The device key.
    #   @return [String]
    #
    # @!attribute [rw] device_attributes
    #   The device attributes.
    #   @return [Array<Types::AttributeType>]
    #
    # @!attribute [rw] device_create_date
    #   The creation date of the device.
    #   @return [Time]
    #
    # @!attribute [rw] device_last_modified_date
    #   The last modified date of the device.
    #   @return [Time]
    #
    # @!attribute [rw] device_last_authenticated_date
    #   The date when the device was last authenticated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/DeviceType AWS API Documentation
    #
    class DeviceType < Struct.new(
      :device_key,
      :device_attributes,
      :device_create_date,
      :device_last_modified_date,
      :device_last_authenticated_date)
      SENSITIVE = []
      include Aws::Structure
    end

    # A container for information about a domain.
    #
    # @!attribute [rw] user_pool_id
    #   The user pool ID.
    #   @return [String]
    #
    # @!attribute [rw] aws_account_id
    #   The Amazon Web Services ID for the user pool owner.
    #   @return [String]
    #
    # @!attribute [rw] domain
    #   The domain string. For custom domains, this is the fully-qualified
    #   domain name, such as `auth.example.com`. For Amazon Cognito prefix
    #   domains, this is the prefix alone, such as `auth`.
    #   @return [String]
    #
    # @!attribute [rw] s3_bucket
    #   The Amazon S3 bucket where the static files for this domain are
    #   stored.
    #   @return [String]
    #
    # @!attribute [rw] cloud_front_distribution
    #   The Amazon Resource Name (ARN) of the Amazon CloudFront
    #   distribution.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The app version.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The domain status.
    #   @return [String]
    #
    # @!attribute [rw] custom_domain_config
    #   The configuration for a custom domain that hosts the sign-up and
    #   sign-in webpages for your application.
    #   @return [Types::CustomDomainConfigType]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/DomainDescriptionType AWS API Documentation
    #
    class DomainDescriptionType < Struct.new(
      :user_pool_id,
      :aws_account_id,
      :domain,
      :s3_bucket,
      :cloud_front_distribution,
      :version,
      :status,
      :custom_domain_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # This exception is thrown when the provider is already supported by the
    # user pool.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/DuplicateProviderException AWS API Documentation
    #
    class DuplicateProviderException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The email configuration of your user pool. The email configuration
    # type sets your preferred sending method, Amazon Web Services Region,
    # and sender for messages from your user pool.
    #
    # <note markdown="1"> Amazon Cognito can send email messages with Amazon Simple Email
    # Service resources in the Amazon Web Services Region where you created
    # your user pool, and in alternate Regions in some cases. For more
    # information on the supported Regions, see [Email settings for Amazon
    # Cognito user pools][1].
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-email.html
    #
    # @!attribute [rw] source_arn
    #   The ARN of a verified email address in Amazon SES. Amazon Cognito
    #   uses this email address in one of the following ways, depending on
    #   the value that you specify for the `EmailSendingAccount` parameter:
    #
    #   * If you specify `COGNITO_DEFAULT`, Amazon Cognito uses this address
    #     as the custom FROM address when it emails your users using its
    #     built-in email account.
    #
    #   * If you specify `DEVELOPER`, Amazon Cognito emails your users with
    #     this address by calling Amazon SES on your behalf.
    #
    #   The Region value of the `SourceArn` parameter must indicate a
    #   supported Amazon Web Services Region of your user pool. Typically,
    #   the Region in the `SourceArn` and the user pool Region are the same.
    #   For more information, see [Amazon SES email configuration
    #   regions][1] in the [Amazon Cognito Developer Guide][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-email.html#user-pool-email-developer-region-mapping
    #   [2]: https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools.html
    #   @return [String]
    #
    # @!attribute [rw] reply_to_email_address
    #   The destination to which the receiver of the email should reply.
    #   @return [String]
    #
    # @!attribute [rw] email_sending_account
    #   Specifies whether Amazon Cognito uses its built-in functionality to
    #   send your users email messages, or uses your Amazon Simple Email
    #   Service email configuration. Specify one of the following values:
    #
    #   COGNITO\_DEFAULT
    #
    #   : When Amazon Cognito emails your users, it uses its built-in email
    #     functionality. When you use the default option, Amazon Cognito
    #     allows only a limited number of emails each day for your user
    #     pool. For typical production environments, the default email limit
    #     is less than the required delivery volume. To achieve a higher
    #     delivery volume, specify DEVELOPER to use your Amazon SES email
    #     configuration.
    #
    #     To look up the email delivery limit for the default option, see
    #     [Limits][1] in the *Amazon Cognito Developer Guide*.
    #
    #     The default FROM address is `no-reply@verificationemail.com`. To
    #     customize the FROM address, provide the Amazon Resource Name (ARN)
    #     of an Amazon SES verified email address for the `SourceArn`
    #     parameter.
    #
    #   DEVELOPER
    #
    #   : When Amazon Cognito emails your users, it uses your Amazon SES
    #     configuration. Amazon Cognito calls Amazon SES on your behalf to
    #     send email from your verified email address. When you use this
    #     option, the email delivery limits are the same limits that apply
    #     to your Amazon SES verified email address in your Amazon Web
    #     Services account.
    #
    #     If you use this option, provide the ARN of an Amazon SES verified
    #     email address for the `SourceArn` parameter.
    #
    #     Before Amazon Cognito can email your users, it requires additional
    #     permissions to call Amazon SES on your behalf. When you update
    #     your user pool with this option, Amazon Cognito creates a
    #     *service-linked role*, which is a type of role in your Amazon Web
    #     Services account. This role contains the permissions that allow
    #     you to access Amazon SES and send email messages from your email
    #     address. For more information about the service-linked role that
    #     Amazon Cognito creates, see [Using Service-Linked Roles for Amazon
    #     Cognito][2] in the *Amazon Cognito Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/limits.html
    #   [2]: https://docs.aws.amazon.com/cognito/latest/developerguide/using-service-linked-roles.html
    #   @return [String]
    #
    # @!attribute [rw] from
    #   Either the sender’s email address or the sender’s name with their
    #   email address. For example, `testuser@example.com` or `Test User
    #   <testuser@example.com>`. This address appears before the body of the
    #   email.
    #   @return [String]
    #
    # @!attribute [rw] configuration_set
    #   The set of configuration rules that can be applied to emails sent
    #   using Amazon Simple Email Service. A configuration set is applied to
    #   an email by including a reference to the configuration set in the
    #   headers of the email. Once applied, all of the rules in that
    #   configuration set are applied to the email. Configuration sets can
    #   be used to apply the following types of rules to emails:
    #
    #   Event publishing
    #
    #   : Amazon Simple Email Service can track the number of send,
    #     delivery, open, click, bounce, and complaint events for each email
    #     sent. Use event publishing to send information about these events
    #     to other Amazon Web Services services such as and Amazon
    #     CloudWatch
    #
    #   IP pool management
    #
    #   : When leasing dedicated IP addresses with Amazon Simple Email
    #     Service, you can create groups of IP addresses, called dedicated
    #     IP pools. You can then associate the dedicated IP pools with
    #     configuration sets.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/EmailConfigurationType AWS API Documentation
    #
    class EmailConfigurationType < Struct.new(
      :source_arn,
      :reply_to_email_address,
      :email_sending_account,
      :from,
      :configuration_set)
      SENSITIVE = []
      include Aws::Structure
    end

    # This exception is thrown when there is a code mismatch and the service
    # fails to configure the software token TOTP multi-factor authentication
    # (MFA).
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/EnableSoftwareTokenMFAException AWS API Documentation
    #
    class EnableSoftwareTokenMFAException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the user context data captured at the time of an event
    # request.
    #
    # @!attribute [rw] ip_address
    #   The source IP address of your user's device.
    #   @return [String]
    #
    # @!attribute [rw] device_name
    #   The user's device name.
    #   @return [String]
    #
    # @!attribute [rw] timezone
    #   The user's time zone.
    #   @return [String]
    #
    # @!attribute [rw] city
    #   The user's city.
    #   @return [String]
    #
    # @!attribute [rw] country
    #   The user's country.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/EventContextDataType AWS API Documentation
    #
    class EventContextDataType < Struct.new(
      :ip_address,
      :device_name,
      :timezone,
      :city,
      :country)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the event feedback type.
    #
    # @!attribute [rw] feedback_value
    #   The event feedback value.
    #   @return [String]
    #
    # @!attribute [rw] provider
    #   The provider.
    #   @return [String]
    #
    # @!attribute [rw] feedback_date
    #   The event feedback date.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/EventFeedbackType AWS API Documentation
    #
    class EventFeedbackType < Struct.new(
      :feedback_value,
      :provider,
      :feedback_date)
      SENSITIVE = []
      include Aws::Structure
    end

    # The event risk type.
    #
    # @!attribute [rw] risk_decision
    #   The risk decision.
    #   @return [String]
    #
    # @!attribute [rw] risk_level
    #   The risk level.
    #   @return [String]
    #
    # @!attribute [rw] compromised_credentials_detected
    #   Indicates whether compromised credentials were detected during an
    #   authentication event.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/EventRiskType AWS API Documentation
    #
    class EventRiskType < Struct.new(
      :risk_decision,
      :risk_level,
      :compromised_credentials_detected)
      SENSITIVE = []
      include Aws::Structure
    end

    # This exception is thrown if a code has expired.
    #
    # @!attribute [rw] message
    #   The message returned when the expired code exception is thrown.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/ExpiredCodeException AWS API Documentation
    #
    class ExpiredCodeException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # This exception is thrown when WAF doesn't allow your request based on
    # a web ACL that's associated with your user pool.
    #
    # @!attribute [rw] message
    #   The message returned when WAF doesn't allow your request based on a
    #   web ACL that's associated with your user pool.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/ForbiddenException AWS API Documentation
    #
    class ForbiddenException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the request to forget the device.
    #
    # @!attribute [rw] access_token
    #   A valid access token that Amazon Cognito issued to the user whose
    #   registered device you want to forget.
    #   @return [String]
    #
    # @!attribute [rw] device_key
    #   The device key.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/ForgetDeviceRequest AWS API Documentation
    #
    class ForgetDeviceRequest < Struct.new(
      :access_token,
      :device_key)
      SENSITIVE = [:access_token]
      include Aws::Structure
    end

    # Represents the request to reset a user's password.
    #
    # @!attribute [rw] client_id
    #   The ID of the client associated with the user pool.
    #   @return [String]
    #
    # @!attribute [rw] secret_hash
    #   A keyed-hash message authentication code (HMAC) calculated using the
    #   secret key of a user pool client and username plus the client ID in
    #   the message.
    #   @return [String]
    #
    # @!attribute [rw] user_context_data
    #   Contextual data about your user session, such as the device
    #   fingerprint, IP address, or location. Amazon Cognito advanced
    #   security evaluates the risk of an authentication event based on the
    #   context that your app generates and passes to Amazon Cognito when it
    #   makes API requests.
    #   @return [Types::UserContextDataType]
    #
    # @!attribute [rw] username
    #   The user name of the user for whom you want to enter a code to reset
    #   a forgotten password.
    #   @return [String]
    #
    # @!attribute [rw] analytics_metadata
    #   The Amazon Pinpoint analytics metadata that contributes to your
    #   metrics for `ForgotPassword` calls.
    #   @return [Types::AnalyticsMetadataType]
    #
    # @!attribute [rw] client_metadata
    #   A map of custom key-value pairs that you can provide as input for
    #   any custom workflows that this action triggers.
    #
    #   You create custom workflows by assigning Lambda functions to user
    #   pool triggers. When you use the ForgotPassword API action, Amazon
    #   Cognito invokes any functions that are assigned to the following
    #   triggers: *pre sign-up*, *custom message*, and *user migration*.
    #   When Amazon Cognito invokes any of these functions, it passes a JSON
    #   payload, which the function receives as input. This payload contains
    #   a `clientMetadata` attribute, which provides the data that you
    #   assigned to the ClientMetadata parameter in your ForgotPassword
    #   request. In your function code in Lambda, you can process the
    #   `clientMetadata` value to enhance your workflow for your specific
    #   needs.
    #
    #   For more information, see [ Customizing user pool Workflows with
    #   Lambda Triggers][1] in the *Amazon Cognito Developer Guide*.
    #
    #   <note markdown="1"> When you use the ClientMetadata parameter, remember that Amazon
    #   Cognito won't do the following:
    #
    #    * Store the ClientMetadata value. This data is available only to
    #     Lambda triggers that are assigned to a user pool to support custom
    #     workflows. If your user pool configuration doesn't include
    #     triggers, the ClientMetadata parameter serves no purpose.
    #
    #   * Validate the ClientMetadata value.
    #
    #   * Encrypt the ClientMetadata value. Don't use Amazon Cognito to
    #     provide sensitive information.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-working-with-aws-lambda-triggers.html
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/ForgotPasswordRequest AWS API Documentation
    #
    class ForgotPasswordRequest < Struct.new(
      :client_id,
      :secret_hash,
      :user_context_data,
      :username,
      :analytics_metadata,
      :client_metadata)
      SENSITIVE = [:client_id, :secret_hash, :username]
      include Aws::Structure
    end

    # The response from Amazon Cognito to a request to reset a password.
    #
    # @!attribute [rw] code_delivery_details
    #   The code delivery details returned by the server in response to the
    #   request to reset a password.
    #   @return [Types::CodeDeliveryDetailsType]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/ForgotPasswordResponse AWS API Documentation
    #
    class ForgotPasswordResponse < Struct.new(
      :code_delivery_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the request to get the header information of the CSV file
    # for the user import job.
    #
    # @!attribute [rw] user_pool_id
    #   The user pool ID for the user pool that the users are to be imported
    #   into.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/GetCSVHeaderRequest AWS API Documentation
    #
    class GetCSVHeaderRequest < Struct.new(
      :user_pool_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the response from the server to the request to get the
    # header information of the CSV file for the user import job.
    #
    # @!attribute [rw] user_pool_id
    #   The user pool ID for the user pool that the users are to be imported
    #   into.
    #   @return [String]
    #
    # @!attribute [rw] csv_header
    #   The header information of the CSV file for the user import job.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/GetCSVHeaderResponse AWS API Documentation
    #
    class GetCSVHeaderResponse < Struct.new(
      :user_pool_id,
      :csv_header)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the request to get the device.
    #
    # @!attribute [rw] device_key
    #   The device key.
    #   @return [String]
    #
    # @!attribute [rw] access_token
    #   A valid access token that Amazon Cognito issued to the user whose
    #   device information you want to request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/GetDeviceRequest AWS API Documentation
    #
    class GetDeviceRequest < Struct.new(
      :device_key,
      :access_token)
      SENSITIVE = [:access_token]
      include Aws::Structure
    end

    # Gets the device response.
    #
    # @!attribute [rw] device
    #   The device.
    #   @return [Types::DeviceType]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/GetDeviceResponse AWS API Documentation
    #
    class GetDeviceResponse < Struct.new(
      :device)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] group_name
    #   The name of the group.
    #   @return [String]
    #
    # @!attribute [rw] user_pool_id
    #   The user pool ID for the user pool.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/GetGroupRequest AWS API Documentation
    #
    class GetGroupRequest < Struct.new(
      :group_name,
      :user_pool_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] group
    #   The group object for the group.
    #   @return [Types::GroupType]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/GetGroupResponse AWS API Documentation
    #
    class GetGroupResponse < Struct.new(
      :group)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] user_pool_id
    #   The user pool ID.
    #   @return [String]
    #
    # @!attribute [rw] idp_identifier
    #   The IdP identifier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/GetIdentityProviderByIdentifierRequest AWS API Documentation
    #
    class GetIdentityProviderByIdentifierRequest < Struct.new(
      :user_pool_id,
      :idp_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] identity_provider
    #   The identity provider details.
    #   @return [Types::IdentityProviderType]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/GetIdentityProviderByIdentifierResponse AWS API Documentation
    #
    class GetIdentityProviderByIdentifierResponse < Struct.new(
      :identity_provider)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request to get a signing certificate from Amazon Cognito.
    #
    # @!attribute [rw] user_pool_id
    #   The user pool ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/GetSigningCertificateRequest AWS API Documentation
    #
    class GetSigningCertificateRequest < Struct.new(
      :user_pool_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Response from Amazon Cognito for a signing certificate request.
    #
    # @!attribute [rw] certificate
    #   The signing certificate.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/GetSigningCertificateResponse AWS API Documentation
    #
    class GetSigningCertificateResponse < Struct.new(
      :certificate)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] user_pool_id
    #   The user pool ID for the user pool.
    #   @return [String]
    #
    # @!attribute [rw] client_id
    #   The client ID for the client app.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/GetUICustomizationRequest AWS API Documentation
    #
    class GetUICustomizationRequest < Struct.new(
      :user_pool_id,
      :client_id)
      SENSITIVE = [:client_id]
      include Aws::Structure
    end

    # @!attribute [rw] ui_customization
    #   The UI customization information.
    #   @return [Types::UICustomizationType]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/GetUICustomizationResponse AWS API Documentation
    #
    class GetUICustomizationResponse < Struct.new(
      :ui_customization)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the request to get user attribute verification.
    #
    # @!attribute [rw] access_token
    #   A non-expired access token for the user whose attribute verification
    #   code you want to generate.
    #   @return [String]
    #
    # @!attribute [rw] attribute_name
    #   The attribute name returned by the server response to get the user
    #   attribute verification code.
    #   @return [String]
    #
    # @!attribute [rw] client_metadata
    #   A map of custom key-value pairs that you can provide as input for
    #   any custom workflows that this action triggers.
    #
    #   You create custom workflows by assigning Lambda functions to user
    #   pool triggers. When you use the GetUserAttributeVerificationCode API
    #   action, Amazon Cognito invokes the function that is assigned to the
    #   *custom message* trigger. When Amazon Cognito invokes this function,
    #   it passes a JSON payload, which the function receives as input. This
    #   payload contains a `clientMetadata` attribute, which provides the
    #   data that you assigned to the ClientMetadata parameter in your
    #   GetUserAttributeVerificationCode request. In your function code in
    #   Lambda, you can process the `clientMetadata` value to enhance your
    #   workflow for your specific needs.
    #
    #   For more information, see [ Customizing user pool Workflows with
    #   Lambda Triggers][1] in the *Amazon Cognito Developer Guide*.
    #
    #   <note markdown="1"> When you use the ClientMetadata parameter, remember that Amazon
    #   Cognito won't do the following:
    #
    #    * Store the ClientMetadata value. This data is available only to
    #     Lambda triggers that are assigned to a user pool to support custom
    #     workflows. If your user pool configuration doesn't include
    #     triggers, the ClientMetadata parameter serves no purpose.
    #
    #   * Validate the ClientMetadata value.
    #
    #   * Encrypt the ClientMetadata value. Don't use Amazon Cognito to
    #     provide sensitive information.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-working-with-aws-lambda-triggers.html
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/GetUserAttributeVerificationCodeRequest AWS API Documentation
    #
    class GetUserAttributeVerificationCodeRequest < Struct.new(
      :access_token,
      :attribute_name,
      :client_metadata)
      SENSITIVE = [:access_token]
      include Aws::Structure
    end

    # The verification code response returned by the server response to get
    # the user attribute verification code.
    #
    # @!attribute [rw] code_delivery_details
    #   The code delivery details returned by the server in response to the
    #   request to get the user attribute verification code.
    #   @return [Types::CodeDeliveryDetailsType]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/GetUserAttributeVerificationCodeResponse AWS API Documentation
    #
    class GetUserAttributeVerificationCodeResponse < Struct.new(
      :code_delivery_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] user_pool_id
    #   The user pool ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/GetUserPoolMfaConfigRequest AWS API Documentation
    #
    class GetUserPoolMfaConfigRequest < Struct.new(
      :user_pool_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] sms_mfa_configuration
    #   The SMS text message multi-factor authentication (MFA)
    #   configuration.
    #   @return [Types::SmsMfaConfigType]
    #
    # @!attribute [rw] software_token_mfa_configuration
    #   The software token multi-factor authentication (MFA) configuration.
    #   @return [Types::SoftwareTokenMfaConfigType]
    #
    # @!attribute [rw] mfa_configuration
    #   The multi-factor authentication (MFA) configuration. Valid values
    #   include:
    #
    #   * `OFF` MFA won't be used for any users.
    #
    #   * `ON` MFA is required for all users to sign in.
    #
    #   * `OPTIONAL` MFA will be required only for individual users who have
    #     an MFA factor activated.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/GetUserPoolMfaConfigResponse AWS API Documentation
    #
    class GetUserPoolMfaConfigResponse < Struct.new(
      :sms_mfa_configuration,
      :software_token_mfa_configuration,
      :mfa_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the request to get information about the user.
    #
    # @!attribute [rw] access_token
    #   A non-expired access token for the user whose information you want
    #   to query.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/GetUserRequest AWS API Documentation
    #
    class GetUserRequest < Struct.new(
      :access_token)
      SENSITIVE = [:access_token]
      include Aws::Structure
    end

    # Represents the response from the server from the request to get
    # information about the user.
    #
    # @!attribute [rw] username
    #   The user name of the user you want to retrieve from the get user
    #   request.
    #   @return [String]
    #
    # @!attribute [rw] user_attributes
    #   An array of name-value pairs representing user attributes.
    #
    #   For custom attributes, you must prepend the `custom:` prefix to the
    #   attribute name.
    #   @return [Array<Types::AttributeType>]
    #
    # @!attribute [rw] mfa_options
    #   *This response parameter is no longer supported.* It provides
    #   information only about SMS MFA configurations. It doesn't provide
    #   information about time-based one-time password (TOTP) software token
    #   MFA configurations. To look up information about either type of MFA
    #   configuration, use UserMFASettingList instead.
    #   @return [Array<Types::MFAOptionType>]
    #
    # @!attribute [rw] preferred_mfa_setting
    #   The user's preferred MFA setting.
    #   @return [String]
    #
    # @!attribute [rw] user_mfa_setting_list
    #   The MFA options that are activated for the user. The possible values
    #   in this list are `SMS_MFA` and `SOFTWARE_TOKEN_MFA`.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/GetUserResponse AWS API Documentation
    #
    class GetUserResponse < Struct.new(
      :username,
      :user_attributes,
      :mfa_options,
      :preferred_mfa_setting,
      :user_mfa_setting_list)
      SENSITIVE = [:username]
      include Aws::Structure
    end

    # Represents the request to sign out all devices.
    #
    # @!attribute [rw] access_token
    #   A valid access token that Amazon Cognito issued to the user who you
    #   want to sign out.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/GlobalSignOutRequest AWS API Documentation
    #
    class GlobalSignOutRequest < Struct.new(
      :access_token)
      SENSITIVE = [:access_token]
      include Aws::Structure
    end

    # The response to the request to sign out all devices.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/GlobalSignOutResponse AWS API Documentation
    #
    class GlobalSignOutResponse < Aws::EmptyStructure; end

    # This exception is thrown when Amazon Cognito encounters a group that
    # already exists in the user pool.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/GroupExistsException AWS API Documentation
    #
    class GroupExistsException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The group type.
    #
    # @!attribute [rw] group_name
    #   The name of the group.
    #   @return [String]
    #
    # @!attribute [rw] user_pool_id
    #   The user pool ID for the user pool.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A string containing the description of the group.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The role Amazon Resource Name (ARN) for the group.
    #   @return [String]
    #
    # @!attribute [rw] precedence
    #   A non-negative integer value that specifies the precedence of this
    #   group relative to the other groups that a user can belong to in the
    #   user pool. Zero is the highest precedence value. Groups with lower
    #   `Precedence` values take precedence over groups with higher ornull
    #   `Precedence` values. If a user belongs to two or more groups, it is
    #   the group with the lowest precedence value whose role ARN is given
    #   in the user's tokens for the `cognito:roles` and
    #   `cognito:preferred_role` claims.
    #
    #   Two groups can have the same `Precedence` value. If this happens,
    #   neither group takes precedence over the other. If two groups with
    #   the same `Precedence` have the same role ARN, that role is used in
    #   the `cognito:preferred_role` claim in tokens for users in each
    #   group. If the two groups have different role ARNs, the
    #   `cognito:preferred_role` claim isn't set in users' tokens.
    #
    #   The default `Precedence` value is null.
    #   @return [Integer]
    #
    # @!attribute [rw] last_modified_date
    #   The date the group was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] creation_date
    #   The date the group was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/GroupType AWS API Documentation
    #
    class GroupType < Struct.new(
      :group_name,
      :user_pool_id,
      :description,
      :role_arn,
      :precedence,
      :last_modified_date,
      :creation_date)
      SENSITIVE = []
      include Aws::Structure
    end

    # The HTTP header.
    #
    # @!attribute [rw] header_name
    #   The header name.
    #   @return [String]
    #
    # @!attribute [rw] header_value
    #   The header value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/HttpHeader AWS API Documentation
    #
    class HttpHeader < Struct.new(
      :header_name,
      :header_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # A container for information about an IdP.
    #
    # @!attribute [rw] user_pool_id
    #   The user pool ID.
    #   @return [String]
    #
    # @!attribute [rw] provider_name
    #   The IdP name.
    #   @return [String]
    #
    # @!attribute [rw] provider_type
    #   The IdP type.
    #   @return [String]
    #
    # @!attribute [rw] provider_details
    #   The IdP details. The following list describes the provider detail
    #   keys for each IdP type.
    #
    #   * For Google and Login with Amazon:
    #
    #     * client\_id
    #
    #     * client\_secret
    #
    #     * authorize\_scopes
    #
    #   * For Facebook:
    #
    #     * client\_id
    #
    #     * client\_secret
    #
    #     * authorize\_scopes
    #
    #     * api\_version
    #
    #   * For Sign in with Apple:
    #
    #     * client\_id
    #
    #     * team\_id
    #
    #     * key\_id
    #
    #     * private\_key
    #
    #       *You can submit a private\_key when you add or update an IdP.
    #       Describe operations don't return the private key.*
    #
    #     * authorize\_scopes
    #
    #   * For OIDC providers:
    #
    #     * client\_id
    #
    #     * client\_secret
    #
    #     * attributes\_request\_method
    #
    #     * oidc\_issuer
    #
    #     * authorize\_scopes
    #
    #     * The following keys are only present if Amazon Cognito didn't
    #       discover them at the `oidc_issuer` URL.
    #
    #       * authorize\_url
    #
    #       * token\_url
    #
    #       * attributes\_url
    #
    #       * jwks\_uri
    #
    #     * Amazon Cognito sets the value of the following keys
    #       automatically. They are read-only.
    #
    #       * attributes\_url\_add\_attributes
    #
    #       ^
    #
    #   * For SAML providers:
    #
    #     * MetadataFile or MetadataURL
    #
    #     * IDPSignout *optional*
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] attribute_mapping
    #   A mapping of IdP attributes to standard and custom user pool
    #   attributes.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] idp_identifiers
    #   A list of IdP identifiers.
    #   @return [Array<String>]
    #
    # @!attribute [rw] last_modified_date
    #   The date the IdP was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] creation_date
    #   The date the IdP was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/IdentityProviderType AWS API Documentation
    #
    class IdentityProviderType < Struct.new(
      :user_pool_id,
      :provider_name,
      :provider_type,
      :provider_details,
      :attribute_mapping,
      :idp_identifiers,
      :last_modified_date,
      :creation_date)
      SENSITIVE = []
      include Aws::Structure
    end

    # Initiates the authentication request.
    #
    # @!attribute [rw] auth_flow
    #   The authentication flow for this call to run. The API action will
    #   depend on this value. For example:
    #
    #   * `REFRESH_TOKEN_AUTH` takes in a valid refresh token and returns
    #     new tokens.
    #
    #   * `USER_SRP_AUTH` takes in `USERNAME` and `SRP_A` and returns the
    #     SRP variables to be used for next challenge execution.
    #
    #   * `USER_PASSWORD_AUTH` takes in `USERNAME` and `PASSWORD` and
    #     returns the next challenge or tokens.
    #
    #   Valid values include:
    #
    #   * `USER_SRP_AUTH`: Authentication flow for the Secure Remote
    #     Password (SRP) protocol.
    #
    #   * `REFRESH_TOKEN_AUTH`/`REFRESH_TOKEN`: Authentication flow for
    #     refreshing the access token and ID token by supplying a valid
    #     refresh token.
    #
    #   * `CUSTOM_AUTH`: Custom authentication flow.
    #
    #   * `USER_PASSWORD_AUTH`: Non-SRP authentication flow; user name and
    #     password are passed directly. If a user migration Lambda trigger
    #     is set, this flow will invoke the user migration Lambda if it
    #     doesn't find the user name in the user pool.
    #
    #   `ADMIN_NO_SRP_AUTH` isn't a valid value.
    #   @return [String]
    #
    # @!attribute [rw] auth_parameters
    #   The authentication parameters. These are inputs corresponding to the
    #   `AuthFlow` that you're invoking. The required values depend on the
    #   value of `AuthFlow`:
    #
    #   * For `USER_SRP_AUTH`: `USERNAME` (required), `SRP_A` (required),
    #     `SECRET_HASH` (required if the app client is configured with a
    #     client secret), `DEVICE_KEY`.
    #
    #   * For `REFRESH_TOKEN_AUTH/REFRESH_TOKEN`: `REFRESH_TOKEN`
    #     (required), `SECRET_HASH` (required if the app client is
    #     configured with a client secret), `DEVICE_KEY`.
    #
    #   * For `CUSTOM_AUTH`: `USERNAME` (required), `SECRET_HASH` (if app
    #     client is configured with client secret), `DEVICE_KEY`. To start
    #     the authentication flow with password verification, include
    #     `ChallengeName: SRP_A` and `SRP_A: (The SRP_A Value)`.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] client_metadata
    #   A map of custom key-value pairs that you can provide as input for
    #   certain custom workflows that this action triggers.
    #
    #   You create custom workflows by assigning Lambda functions to user
    #   pool triggers. When you use the InitiateAuth API action, Amazon
    #   Cognito invokes the Lambda functions that are specified for various
    #   triggers. The ClientMetadata value is passed as input to the
    #   functions for only the following triggers:
    #
    #   * Pre signup
    #
    #   * Pre authentication
    #
    #   * User migration
    #
    #   When Amazon Cognito invokes the functions for these triggers, it
    #   passes a JSON payload, which the function receives as input. This
    #   payload contains a `validationData` attribute, which provides the
    #   data that you assigned to the ClientMetadata parameter in your
    #   InitiateAuth request. In your function code in Lambda, you can
    #   process the `validationData` value to enhance your workflow for your
    #   specific needs.
    #
    #   When you use the InitiateAuth API action, Amazon Cognito also
    #   invokes the functions for the following triggers, but it doesn't
    #   provide the ClientMetadata value as input:
    #
    #   * Post authentication
    #
    #   * Custom message
    #
    #   * Pre token generation
    #
    #   * Create auth challenge
    #
    #   * Define auth challenge
    #
    #   * Verify auth challenge
    #
    #   For more information, see [ Customizing user pool Workflows with
    #   Lambda Triggers][1] in the *Amazon Cognito Developer Guide*.
    #
    #   <note markdown="1"> When you use the ClientMetadata parameter, remember that Amazon
    #   Cognito won't do the following:
    #
    #    * Store the ClientMetadata value. This data is available only to
    #     Lambda triggers that are assigned to a user pool to support custom
    #     workflows. If your user pool configuration doesn't include
    #     triggers, the ClientMetadata parameter serves no purpose.
    #
    #   * Validate the ClientMetadata value.
    #
    #   * Encrypt the ClientMetadata value. Don't use Amazon Cognito to
    #     provide sensitive information.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-working-with-aws-lambda-triggers.html
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] client_id
    #   The app client ID.
    #   @return [String]
    #
    # @!attribute [rw] analytics_metadata
    #   The Amazon Pinpoint analytics metadata that contributes to your
    #   metrics for `InitiateAuth` calls.
    #   @return [Types::AnalyticsMetadataType]
    #
    # @!attribute [rw] user_context_data
    #   Contextual data about your user session, such as the device
    #   fingerprint, IP address, or location. Amazon Cognito advanced
    #   security evaluates the risk of an authentication event based on the
    #   context that your app generates and passes to Amazon Cognito when it
    #   makes API requests.
    #   @return [Types::UserContextDataType]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/InitiateAuthRequest AWS API Documentation
    #
    class InitiateAuthRequest < Struct.new(
      :auth_flow,
      :auth_parameters,
      :client_metadata,
      :client_id,
      :analytics_metadata,
      :user_context_data)
      SENSITIVE = [:auth_parameters, :client_id]
      include Aws::Structure
    end

    # Initiates the authentication response.
    #
    # @!attribute [rw] challenge_name
    #   The name of the challenge that you're responding to with this call.
    #   This name is returned in the `AdminInitiateAuth` response if you
    #   must pass another challenge.
    #
    #   Valid values include the following:
    #
    #   <note markdown="1"> All of the following challenges require `USERNAME` and `SECRET_HASH`
    #   (if applicable) in the parameters.
    #
    #    </note>
    #
    #   * `SMS_MFA`: Next challenge is to supply an `SMS_MFA_CODE`,
    #     delivered via SMS.
    #
    #   * `PASSWORD_VERIFIER`: Next challenge is to supply
    #     `PASSWORD_CLAIM_SIGNATURE`, `PASSWORD_CLAIM_SECRET_BLOCK`, and
    #     `TIMESTAMP` after the client-side SRP calculations.
    #
    #   * `CUSTOM_CHALLENGE`: This is returned if your custom authentication
    #     flow determines that the user should pass another challenge before
    #     tokens are issued.
    #
    #   * `DEVICE_SRP_AUTH`: If device tracking was activated on your user
    #     pool and the previous challenges were passed, this challenge is
    #     returned so that Amazon Cognito can start tracking this device.
    #
    #   * `DEVICE_PASSWORD_VERIFIER`: Similar to `PASSWORD_VERIFIER`, but
    #     for devices only.
    #
    #   * `NEW_PASSWORD_REQUIRED`: For users who are required to change
    #     their passwords after successful first login.
    #
    #     Respond to this challenge with `NEW_PASSWORD` and any required
    #     attributes that Amazon Cognito returned in the
    #     `requiredAttributes` parameter. You can also set values for
    #     attributes that aren't required by your user pool and that your
    #     app client can write. For more information, see
    #     [RespondToAuthChallenge][1].
    #
    #     <note markdown="1"> In a `NEW_PASSWORD_REQUIRED` challenge response, you can't modify
    #     a required attribute that already has a value. In
    #     `RespondToAuthChallenge`, set a value for any keys that Amazon
    #     Cognito returned in the `requiredAttributes` parameter, then use
    #     the `UpdateUserAttributes` API operation to modify the value of
    #     any additional attributes.
    #
    #      </note>
    #
    #   * `MFA_SETUP`: For users who are required to setup an MFA factor
    #     before they can sign in. The MFA types activated for the user pool
    #     will be listed in the challenge parameters `MFA_CAN_SETUP` value.
    #
    #     To set up software token MFA, use the session returned here from
    #     `InitiateAuth` as an input to `AssociateSoftwareToken`. Use the
    #     session returned by `VerifySoftwareToken` as an input to
    #     `RespondToAuthChallenge` with challenge name `MFA_SETUP` to
    #     complete sign-in. To set up SMS MFA, an administrator should help
    #     the user to add a phone number to their account, and then the user
    #     should call `InitiateAuth` again to restart sign-in.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_RespondToAuthChallenge.html
    #   @return [String]
    #
    # @!attribute [rw] session
    #   The session that should pass both ways in challenge-response calls
    #   to the service. If the caller must pass another challenge, they
    #   return a session with other challenge parameters. This session
    #   should be passed as it is to the next `RespondToAuthChallenge` API
    #   call.
    #   @return [String]
    #
    # @!attribute [rw] challenge_parameters
    #   The challenge parameters. These are returned in the `InitiateAuth`
    #   response if you must pass another challenge. The responses in this
    #   parameter should be used to compute inputs to the next call
    #   (`RespondToAuthChallenge`).
    #
    #   All challenges require `USERNAME` and `SECRET_HASH` (if applicable).
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] authentication_result
    #   The result of the authentication response. This result is only
    #   returned if the caller doesn't need to pass another challenge. If
    #   the caller does need to pass another challenge before it gets
    #   tokens, `ChallengeName`, `ChallengeParameters`, and `Session` are
    #   returned.
    #   @return [Types::AuthenticationResultType]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/InitiateAuthResponse AWS API Documentation
    #
    class InitiateAuthResponse < Struct.new(
      :challenge_name,
      :session,
      :challenge_parameters,
      :authentication_result)
      SENSITIVE = []
      include Aws::Structure
    end

    # This exception is thrown when Amazon Cognito encounters an internal
    # error.
    #
    # @!attribute [rw] message
    #   The message returned when Amazon Cognito throws an internal error
    #   exception.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/InternalErrorException AWS API Documentation
    #
    class InternalErrorException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # This exception is thrown when Amazon Cognito isn't allowed to use
    # your email identity. HTTP status code: 400.
    #
    # @!attribute [rw] message
    #   The message returned when you have an unverified email address or
    #   the identity policy isn't set on an email address that Amazon
    #   Cognito can access.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/InvalidEmailRoleAccessPolicyException AWS API Documentation
    #
    class InvalidEmailRoleAccessPolicyException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # This exception is thrown when Amazon Cognito encounters an invalid
    # Lambda response.
    #
    # @!attribute [rw] message
    #   The message returned when Amazon Cognito throws an invalid Lambda
    #   response exception.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/InvalidLambdaResponseException AWS API Documentation
    #
    class InvalidLambdaResponseException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # This exception is thrown when the specified OAuth flow is not valid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/InvalidOAuthFlowException AWS API Documentation
    #
    class InvalidOAuthFlowException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # This exception is thrown when the Amazon Cognito service encounters an
    # invalid parameter.
    #
    # @!attribute [rw] message
    #   The message returned when the Amazon Cognito service throws an
    #   invalid parameter exception.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/InvalidParameterException AWS API Documentation
    #
    class InvalidParameterException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # This exception is thrown when Amazon Cognito encounters an invalid
    # password.
    #
    # @!attribute [rw] message
    #   The message returned when Amazon Cognito throws an invalid user
    #   password exception.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/InvalidPasswordException AWS API Documentation
    #
    class InvalidPasswordException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # This exception is returned when the role provided for SMS
    # configuration doesn't have permission to publish using Amazon SNS.
    #
    # @!attribute [rw] message
    #   The message returned when the invalid SMS role access policy
    #   exception is thrown.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/InvalidSmsRoleAccessPolicyException AWS API Documentation
    #
    class InvalidSmsRoleAccessPolicyException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # This exception is thrown when the trust relationship is not valid for
    # the role provided for SMS configuration. This can happen if you don't
    # trust `cognito-idp.amazonaws.com` or the external ID provided in the
    # role does not match what is provided in the SMS configuration for the
    # user pool.
    #
    # @!attribute [rw] message
    #   The message returned when the role trust relationship for the SMS
    #   message is not valid.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/InvalidSmsRoleTrustRelationshipException AWS API Documentation
    #
    class InvalidSmsRoleTrustRelationshipException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # This exception is thrown when the user pool configuration is not
    # valid.
    #
    # @!attribute [rw] message
    #   The message returned when the user pool configuration is not valid.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/InvalidUserPoolConfigurationException AWS API Documentation
    #
    class InvalidUserPoolConfigurationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the configuration for Lambda triggers.
    #
    # @!attribute [rw] pre_sign_up
    #   A pre-registration Lambda trigger.
    #   @return [String]
    #
    # @!attribute [rw] custom_message
    #   A custom Message Lambda trigger.
    #   @return [String]
    #
    # @!attribute [rw] post_confirmation
    #   A post-confirmation Lambda trigger.
    #   @return [String]
    #
    # @!attribute [rw] pre_authentication
    #   A pre-authentication Lambda trigger.
    #   @return [String]
    #
    # @!attribute [rw] post_authentication
    #   A post-authentication Lambda trigger.
    #   @return [String]
    #
    # @!attribute [rw] define_auth_challenge
    #   Defines the authentication challenge.
    #   @return [String]
    #
    # @!attribute [rw] create_auth_challenge
    #   Creates an authentication challenge.
    #   @return [String]
    #
    # @!attribute [rw] verify_auth_challenge_response
    #   Verifies the authentication challenge response.
    #   @return [String]
    #
    # @!attribute [rw] pre_token_generation
    #   A Lambda trigger that is invoked before token generation.
    #   @return [String]
    #
    # @!attribute [rw] user_migration
    #   The user migration Lambda config type.
    #   @return [String]
    #
    # @!attribute [rw] custom_sms_sender
    #   A custom SMS sender Lambda trigger.
    #   @return [Types::CustomSMSLambdaVersionConfigType]
    #
    # @!attribute [rw] custom_email_sender
    #   A custom email sender Lambda trigger.
    #   @return [Types::CustomEmailLambdaVersionConfigType]
    #
    # @!attribute [rw] kms_key_id
    #   The Amazon Resource Name (ARN) of an [KMS
    #   key](/kms/latest/developerguide/concepts.html#master_keys). Amazon
    #   Cognito uses the key to encrypt codes and temporary passwords sent
    #   to `CustomEmailSender` and `CustomSMSSender`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/LambdaConfigType AWS API Documentation
    #
    class LambdaConfigType < Struct.new(
      :pre_sign_up,
      :custom_message,
      :post_confirmation,
      :pre_authentication,
      :post_authentication,
      :define_auth_challenge,
      :create_auth_challenge,
      :verify_auth_challenge_response,
      :pre_token_generation,
      :user_migration,
      :custom_sms_sender,
      :custom_email_sender,
      :kms_key_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # This exception is thrown when a user exceeds the limit for a requested
    # Amazon Web Services resource.
    #
    # @!attribute [rw] message
    #   The message returned when Amazon Cognito throws a limit exceeded
    #   exception.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/LimitExceededException AWS API Documentation
    #
    class LimitExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the request to list the devices.
    #
    # @!attribute [rw] access_token
    #   A valid access token that Amazon Cognito issued to the user whose
    #   list of devices you want to view.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The limit of the device request.
    #   @return [Integer]
    #
    # @!attribute [rw] pagination_token
    #   The pagination token for the list request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/ListDevicesRequest AWS API Documentation
    #
    class ListDevicesRequest < Struct.new(
      :access_token,
      :limit,
      :pagination_token)
      SENSITIVE = [:access_token]
      include Aws::Structure
    end

    # Represents the response to list devices.
    #
    # @!attribute [rw] devices
    #   The devices returned in the list devices response.
    #   @return [Array<Types::DeviceType>]
    #
    # @!attribute [rw] pagination_token
    #   The pagination token for the list device response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/ListDevicesResponse AWS API Documentation
    #
    class ListDevicesResponse < Struct.new(
      :devices,
      :pagination_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] user_pool_id
    #   The user pool ID for the user pool.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The limit of the request to list groups.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   An identifier that was returned from the previous call to this
    #   operation, which can be used to return the next set of items in the
    #   list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/ListGroupsRequest AWS API Documentation
    #
    class ListGroupsRequest < Struct.new(
      :user_pool_id,
      :limit,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] groups
    #   The group objects for the groups.
    #   @return [Array<Types::GroupType>]
    #
    # @!attribute [rw] next_token
    #   An identifier that was returned from the previous call to this
    #   operation, which can be used to return the next set of items in the
    #   list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/ListGroupsResponse AWS API Documentation
    #
    class ListGroupsResponse < Struct.new(
      :groups,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] user_pool_id
    #   The user pool ID.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of IdPs to return.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A pagination token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/ListIdentityProvidersRequest AWS API Documentation
    #
    class ListIdentityProvidersRequest < Struct.new(
      :user_pool_id,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] providers
    #   A list of IdP objects.
    #   @return [Array<Types::ProviderDescription>]
    #
    # @!attribute [rw] next_token
    #   A pagination token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/ListIdentityProvidersResponse AWS API Documentation
    #
    class ListIdentityProvidersResponse < Struct.new(
      :providers,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] user_pool_id
    #   The user pool ID for the user pool.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of resource servers to return.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A pagination token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/ListResourceServersRequest AWS API Documentation
    #
    class ListResourceServersRequest < Struct.new(
      :user_pool_id,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_servers
    #   The resource servers.
    #   @return [Array<Types::ResourceServerType>]
    #
    # @!attribute [rw] next_token
    #   A pagination token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/ListResourceServersResponse AWS API Documentation
    #
    class ListResourceServersResponse < Struct.new(
      :resource_servers,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the user pool that the tags are
    #   assigned to.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   The tags that are assigned to the user pool.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the request to list the user import jobs.
    #
    # @!attribute [rw] user_pool_id
    #   The user pool ID for the user pool that the users are being imported
    #   into.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of import jobs you want the request to return.
    #   @return [Integer]
    #
    # @!attribute [rw] pagination_token
    #   An identifier that was returned from the previous call to
    #   `ListUserImportJobs`, which can be used to return the next set of
    #   import jobs in the list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/ListUserImportJobsRequest AWS API Documentation
    #
    class ListUserImportJobsRequest < Struct.new(
      :user_pool_id,
      :max_results,
      :pagination_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the response from the server to the request to list the
    # user import jobs.
    #
    # @!attribute [rw] user_import_jobs
    #   The user import jobs.
    #   @return [Array<Types::UserImportJobType>]
    #
    # @!attribute [rw] pagination_token
    #   An identifier that can be used to return the next set of user import
    #   jobs in the list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/ListUserImportJobsResponse AWS API Documentation
    #
    class ListUserImportJobsResponse < Struct.new(
      :user_import_jobs,
      :pagination_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the request to list the user pool clients.
    #
    # @!attribute [rw] user_pool_id
    #   The user pool ID for the user pool where you want to list user pool
    #   clients.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results you want the request to return when
    #   listing the user pool clients.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   An identifier that was returned from the previous call to this
    #   operation, which can be used to return the next set of items in the
    #   list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/ListUserPoolClientsRequest AWS API Documentation
    #
    class ListUserPoolClientsRequest < Struct.new(
      :user_pool_id,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the response from the server that lists user pool clients.
    #
    # @!attribute [rw] user_pool_clients
    #   The user pool clients in the response that lists user pool clients.
    #   @return [Array<Types::UserPoolClientDescription>]
    #
    # @!attribute [rw] next_token
    #   An identifier that was returned from the previous call to this
    #   operation, which can be used to return the next set of items in the
    #   list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/ListUserPoolClientsResponse AWS API Documentation
    #
    class ListUserPoolClientsResponse < Struct.new(
      :user_pool_clients,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the request to list user pools.
    #
    # @!attribute [rw] next_token
    #   An identifier that was returned from the previous call to this
    #   operation, which can be used to return the next set of items in the
    #   list.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results you want the request to return when
    #   listing the user pools.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/ListUserPoolsRequest AWS API Documentation
    #
    class ListUserPoolsRequest < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the response to list user pools.
    #
    # @!attribute [rw] user_pools
    #   The user pools from the response to list users.
    #   @return [Array<Types::UserPoolDescriptionType>]
    #
    # @!attribute [rw] next_token
    #   An identifier that was returned from the previous call to this
    #   operation, which can be used to return the next set of items in the
    #   list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/ListUserPoolsResponse AWS API Documentation
    #
    class ListUserPoolsResponse < Struct.new(
      :user_pools,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] user_pool_id
    #   The user pool ID for the user pool.
    #   @return [String]
    #
    # @!attribute [rw] group_name
    #   The name of the group.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The limit of the request to list users.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   An identifier that was returned from the previous call to this
    #   operation, which can be used to return the next set of items in the
    #   list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/ListUsersInGroupRequest AWS API Documentation
    #
    class ListUsersInGroupRequest < Struct.new(
      :user_pool_id,
      :group_name,
      :limit,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] users
    #   The users returned in the request to list users.
    #   @return [Array<Types::UserType>]
    #
    # @!attribute [rw] next_token
    #   An identifier that you can use in a later request to return the next
    #   set of items in the list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/ListUsersInGroupResponse AWS API Documentation
    #
    class ListUsersInGroupResponse < Struct.new(
      :users,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the request to list users.
    #
    # @!attribute [rw] user_pool_id
    #   The user pool ID for the user pool on which the search should be
    #   performed.
    #   @return [String]
    #
    # @!attribute [rw] attributes_to_get
    #   An array of strings, where each string is the name of a user
    #   attribute to be returned for each user in the search results. If the
    #   array is null, all attributes are returned.
    #   @return [Array<String>]
    #
    # @!attribute [rw] limit
    #   Maximum number of users to be returned.
    #   @return [Integer]
    #
    # @!attribute [rw] pagination_token
    #   An identifier that was returned from the previous call to this
    #   operation, which can be used to return the next set of items in the
    #   list.
    #   @return [String]
    #
    # @!attribute [rw] filter
    #   A filter string of the form "*AttributeName* *Filter-Type*
    #   "*AttributeValue*"". Quotation marks within the filter string
    #   must be escaped using the backslash (\\) character. For example,
    #   "`family_name` = \\"Reddy\\"".
    #
    #   * *AttributeName*: The name of the attribute to search for. You can
    #     only search for one attribute at a time.
    #
    #   * *Filter-Type*: For an exact match, use =, for example,
    #     "`given_name` = \\"Jon\\"". For a prefix ("starts with")
    #     match, use ^=, for example, "`given_name` ^= \\"Jon\\"".
    #
    #   * *AttributeValue*: The attribute value that must be matched for
    #     each user.
    #
    #   If the filter string is empty, `ListUsers` returns all users in the
    #   user pool.
    #
    #   You can only search for the following standard attributes:
    #
    #   * `username` (case-sensitive)
    #
    #   * `email`
    #
    #   * `phone_number`
    #
    #   * `name`
    #
    #   * `given_name`
    #
    #   * `family_name`
    #
    #   * `preferred_username`
    #
    #   * `cognito:user_status` (called **Status** in the Console)
    #     (case-insensitive)
    #
    #   * `status (called Enabled in the Console) (case-sensitive)`
    #
    #   * `sub`
    #
    #   Custom attributes aren't searchable.
    #
    #   <note markdown="1"> You can also list users with a client-side filter. The server-side
    #   filter matches no more than one attribute. For an advanced search,
    #   use a client-side filter with the `--query` parameter of the
    #   `list-users` action in the CLI. When you use a client-side filter,
    #   ListUsers returns a paginated list of zero or more users. You can
    #   receive multiple pages in a row with zero results. Repeat the query
    #   with each pagination token that is returned until you receive a null
    #   pagination token value, and then review the combined result.
    #
    #    For more information about server-side and client-side filtering,
    #   see [FilteringCLI output][1] in the [Command Line Interface User
    #   Guide][1].
    #
    #    </note>
    #
    #   For more information, see [Searching for Users Using the ListUsers
    #   API][2] and [Examples of Using the ListUsers API][3] in the *Amazon
    #   Cognito Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cli/latest/userguide/cli-usage-filter.html
    #   [2]: https://docs.aws.amazon.com/cognito/latest/developerguide/how-to-manage-user-accounts.html#cognito-user-pools-searching-for-users-using-listusers-api
    #   [3]: https://docs.aws.amazon.com/cognito/latest/developerguide/how-to-manage-user-accounts.html#cognito-user-pools-searching-for-users-listusers-api-examples
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/ListUsersRequest AWS API Documentation
    #
    class ListUsersRequest < Struct.new(
      :user_pool_id,
      :attributes_to_get,
      :limit,
      :pagination_token,
      :filter)
      SENSITIVE = []
      include Aws::Structure
    end

    # The response from the request to list users.
    #
    # @!attribute [rw] users
    #   The users returned in the request to list users.
    #   @return [Array<Types::UserType>]
    #
    # @!attribute [rw] pagination_token
    #   An identifier that was returned from the previous call to this
    #   operation, which can be used to return the next set of items in the
    #   list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/ListUsersResponse AWS API Documentation
    #
    class ListUsersResponse < Struct.new(
      :users,
      :pagination_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # This exception is thrown when Amazon Cognito can't find a
    # multi-factor authentication (MFA) method.
    #
    # @!attribute [rw] message
    #   The message returned when Amazon Cognito throws an MFA method not
    #   found exception.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/MFAMethodNotFoundException AWS API Documentation
    #
    class MFAMethodNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # *This data type is no longer supported.* Applies only to SMS
    # multi-factor authentication (MFA) configurations. Does not apply to
    # time-based one-time password (TOTP) software token MFA configurations.
    #
    # @!attribute [rw] delivery_medium
    #   The delivery medium to send the MFA code. You can use this parameter
    #   to set only the `SMS` delivery medium value.
    #   @return [String]
    #
    # @!attribute [rw] attribute_name
    #   The attribute name of the MFA option type. The only valid value is
    #   `phone_number`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/MFAOptionType AWS API Documentation
    #
    class MFAOptionType < Struct.new(
      :delivery_medium,
      :attribute_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The message template structure.
    #
    # @!attribute [rw] sms_message
    #   The message template for SMS messages.
    #   @return [String]
    #
    # @!attribute [rw] email_message
    #   The message template for email messages. EmailMessage is allowed
    #   only if [EmailSendingAccount][1] is DEVELOPER.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_EmailConfigurationType.html#CognitoUserPools-Type-EmailConfigurationType-EmailSendingAccount
    #   @return [String]
    #
    # @!attribute [rw] email_subject
    #   The subject line for email messages. EmailSubject is allowed only if
    #   [EmailSendingAccount][1] is DEVELOPER.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_EmailConfigurationType.html#CognitoUserPools-Type-EmailConfigurationType-EmailSendingAccount
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/MessageTemplateType AWS API Documentation
    #
    class MessageTemplateType < Struct.new(
      :sms_message,
      :email_message,
      :email_subject)
      SENSITIVE = []
      include Aws::Structure
    end

    # The new device metadata type.
    #
    # @!attribute [rw] device_key
    #   The device key.
    #   @return [String]
    #
    # @!attribute [rw] device_group_key
    #   The device group key.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/NewDeviceMetadataType AWS API Documentation
    #
    class NewDeviceMetadataType < Struct.new(
      :device_key,
      :device_group_key)
      SENSITIVE = []
      include Aws::Structure
    end

    # This exception is thrown when a user isn't authorized.
    #
    # @!attribute [rw] message
    #   The message returned when the Amazon Cognito service returns a not
    #   authorized exception.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/NotAuthorizedException AWS API Documentation
    #
    class NotAuthorizedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The notify configuration type.
    #
    # @!attribute [rw] from
    #   The email address that is sending the email. The address must be
    #   either individually verified with Amazon Simple Email Service, or
    #   from a domain that has been verified with Amazon SES.
    #   @return [String]
    #
    # @!attribute [rw] reply_to
    #   The destination to which the receiver of an email should reply to.
    #   @return [String]
    #
    # @!attribute [rw] source_arn
    #   The Amazon Resource Name (ARN) of the identity that is associated
    #   with the sending authorization policy. This identity permits Amazon
    #   Cognito to send for the email address specified in the `From`
    #   parameter.
    #   @return [String]
    #
    # @!attribute [rw] block_email
    #   Email template used when a detected risk event is blocked.
    #   @return [Types::NotifyEmailType]
    #
    # @!attribute [rw] no_action_email
    #   The email template used when a detected risk event is allowed.
    #   @return [Types::NotifyEmailType]
    #
    # @!attribute [rw] mfa_email
    #   The multi-factor authentication (MFA) email template used when MFA
    #   is challenged as part of a detected risk.
    #   @return [Types::NotifyEmailType]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/NotifyConfigurationType AWS API Documentation
    #
    class NotifyConfigurationType < Struct.new(
      :from,
      :reply_to,
      :source_arn,
      :block_email,
      :no_action_email,
      :mfa_email)
      SENSITIVE = []
      include Aws::Structure
    end

    # The notify email type.
    #
    # @!attribute [rw] subject
    #   The email subject.
    #   @return [String]
    #
    # @!attribute [rw] html_body
    #   The email HTML body.
    #   @return [String]
    #
    # @!attribute [rw] text_body
    #   The email text body.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/NotifyEmailType AWS API Documentation
    #
    class NotifyEmailType < Struct.new(
      :subject,
      :html_body,
      :text_body)
      SENSITIVE = []
      include Aws::Structure
    end

    # The minimum and maximum values of an attribute that is of the number
    # data type.
    #
    # @!attribute [rw] min_value
    #   The minimum value of an attribute that is of the number data type.
    #   @return [String]
    #
    # @!attribute [rw] max_value
    #   The maximum value of an attribute that is of the number data type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/NumberAttributeConstraintsType AWS API Documentation
    #
    class NumberAttributeConstraintsType < Struct.new(
      :min_value,
      :max_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # The password policy type.
    #
    # @!attribute [rw] minimum_length
    #   The minimum length of the password in the policy that you have set.
    #   This value can't be less than 6.
    #   @return [Integer]
    #
    # @!attribute [rw] require_uppercase
    #   In the password policy that you have set, refers to whether you have
    #   required users to use at least one uppercase letter in their
    #   password.
    #   @return [Boolean]
    #
    # @!attribute [rw] require_lowercase
    #   In the password policy that you have set, refers to whether you have
    #   required users to use at least one lowercase letter in their
    #   password.
    #   @return [Boolean]
    #
    # @!attribute [rw] require_numbers
    #   In the password policy that you have set, refers to whether you have
    #   required users to use at least one number in their password.
    #   @return [Boolean]
    #
    # @!attribute [rw] require_symbols
    #   In the password policy that you have set, refers to whether you have
    #   required users to use at least one symbol in their password.
    #   @return [Boolean]
    #
    # @!attribute [rw] temporary_password_validity_days
    #   The number of days a temporary password is valid in the password
    #   policy. If the user doesn't sign in during this time, an
    #   administrator must reset their password.
    #
    #   <note markdown="1"> When you set `TemporaryPasswordValidityDays` for a user pool, you
    #   can no longer set a value for the legacy `UnusedAccountValidityDays`
    #   parameter in that user pool.
    #
    #    </note>
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/PasswordPolicyType AWS API Documentation
    #
    class PasswordPolicyType < Struct.new(
      :minimum_length,
      :require_uppercase,
      :require_lowercase,
      :require_numbers,
      :require_symbols,
      :temporary_password_validity_days)
      SENSITIVE = []
      include Aws::Structure
    end

    # This exception is thrown when a password reset is required.
    #
    # @!attribute [rw] message
    #   The message returned when a password reset is required.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/PasswordResetRequiredException AWS API Documentation
    #
    class PasswordResetRequiredException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # This exception is thrown when a precondition is not met.
    #
    # @!attribute [rw] message
    #   The message returned when a precondition is not met.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/PreconditionNotMetException AWS API Documentation
    #
    class PreconditionNotMetException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A container for IdP details.
    #
    # @!attribute [rw] provider_name
    #   The IdP name.
    #   @return [String]
    #
    # @!attribute [rw] provider_type
    #   The IdP type.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_date
    #   The date the provider was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] creation_date
    #   The date the provider was added to the user pool.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/ProviderDescription AWS API Documentation
    #
    class ProviderDescription < Struct.new(
      :provider_name,
      :provider_type,
      :last_modified_date,
      :creation_date)
      SENSITIVE = []
      include Aws::Structure
    end

    # A container for information about an IdP for a user pool.
    #
    # @!attribute [rw] provider_name
    #   The name of the provider, such as Facebook, Google, or Login with
    #   Amazon.
    #   @return [String]
    #
    # @!attribute [rw] provider_attribute_name
    #   The name of the provider attribute to link to, such as `NameID`.
    #   @return [String]
    #
    # @!attribute [rw] provider_attribute_value
    #   The value of the provider attribute to link to, such as
    #   `xxxxx_account`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/ProviderUserIdentifierType AWS API Documentation
    #
    class ProviderUserIdentifierType < Struct.new(
      :provider_name,
      :provider_attribute_name,
      :provider_attribute_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # A map containing a priority as a key, and recovery method name as a
    # value.
    #
    # @!attribute [rw] priority
    #   A positive integer specifying priority of a method with 1 being the
    #   highest priority.
    #   @return [Integer]
    #
    # @!attribute [rw] name
    #   The recovery method for a user.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/RecoveryOptionType AWS API Documentation
    #
    class RecoveryOptionType < Struct.new(
      :priority,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the request to resend the confirmation code.
    #
    # @!attribute [rw] client_id
    #   The ID of the client associated with the user pool.
    #   @return [String]
    #
    # @!attribute [rw] secret_hash
    #   A keyed-hash message authentication code (HMAC) calculated using the
    #   secret key of a user pool client and username plus the client ID in
    #   the message.
    #   @return [String]
    #
    # @!attribute [rw] user_context_data
    #   Contextual data about your user session, such as the device
    #   fingerprint, IP address, or location. Amazon Cognito advanced
    #   security evaluates the risk of an authentication event based on the
    #   context that your app generates and passes to Amazon Cognito when it
    #   makes API requests.
    #   @return [Types::UserContextDataType]
    #
    # @!attribute [rw] username
    #   The `username` attribute of the user to whom you want to resend a
    #   confirmation code.
    #   @return [String]
    #
    # @!attribute [rw] analytics_metadata
    #   The Amazon Pinpoint analytics metadata that contributes to your
    #   metrics for `ResendConfirmationCode` calls.
    #   @return [Types::AnalyticsMetadataType]
    #
    # @!attribute [rw] client_metadata
    #   A map of custom key-value pairs that you can provide as input for
    #   any custom workflows that this action triggers.
    #
    #   You create custom workflows by assigning Lambda functions to user
    #   pool triggers. When you use the ResendConfirmationCode API action,
    #   Amazon Cognito invokes the function that is assigned to the *custom
    #   message* trigger. When Amazon Cognito invokes this function, it
    #   passes a JSON payload, which the function receives as input. This
    #   payload contains a `clientMetadata` attribute, which provides the
    #   data that you assigned to the ClientMetadata parameter in your
    #   ResendConfirmationCode request. In your function code in Lambda, you
    #   can process the `clientMetadata` value to enhance your workflow for
    #   your specific needs.
    #
    #   For more information, see [ Customizing user pool Workflows with
    #   Lambda Triggers][1] in the *Amazon Cognito Developer Guide*.
    #
    #   <note markdown="1"> When you use the ClientMetadata parameter, remember that Amazon
    #   Cognito won't do the following:
    #
    #    * Store the ClientMetadata value. This data is available only to
    #     Lambda triggers that are assigned to a user pool to support custom
    #     workflows. If your user pool configuration doesn't include
    #     triggers, the ClientMetadata parameter serves no purpose.
    #
    #   * Validate the ClientMetadata value.
    #
    #   * Encrypt the ClientMetadata value. Don't use Amazon Cognito to
    #     provide sensitive information.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-working-with-aws-lambda-triggers.html
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/ResendConfirmationCodeRequest AWS API Documentation
    #
    class ResendConfirmationCodeRequest < Struct.new(
      :client_id,
      :secret_hash,
      :user_context_data,
      :username,
      :analytics_metadata,
      :client_metadata)
      SENSITIVE = [:client_id, :secret_hash, :username]
      include Aws::Structure
    end

    # The response from the server when Amazon Cognito makes the request to
    # resend a confirmation code.
    #
    # @!attribute [rw] code_delivery_details
    #   The code delivery details returned by the server in response to the
    #   request to resend the confirmation code.
    #   @return [Types::CodeDeliveryDetailsType]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/ResendConfirmationCodeResponse AWS API Documentation
    #
    class ResendConfirmationCodeResponse < Struct.new(
      :code_delivery_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # This exception is thrown when the Amazon Cognito service can't find
    # the requested resource.
    #
    # @!attribute [rw] message
    #   The message returned when the Amazon Cognito service returns a
    #   resource not found exception.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A resource server scope.
    #
    # @!attribute [rw] scope_name
    #   The name of the scope.
    #   @return [String]
    #
    # @!attribute [rw] scope_description
    #   A description of the scope.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/ResourceServerScopeType AWS API Documentation
    #
    class ResourceServerScopeType < Struct.new(
      :scope_name,
      :scope_description)
      SENSITIVE = []
      include Aws::Structure
    end

    # A container for information about a resource server for a user pool.
    #
    # @!attribute [rw] user_pool_id
    #   The user pool ID for the user pool that hosts the resource server.
    #   @return [String]
    #
    # @!attribute [rw] identifier
    #   The identifier for the resource server.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the resource server.
    #   @return [String]
    #
    # @!attribute [rw] scopes
    #   A list of scopes that are defined for the resource server.
    #   @return [Array<Types::ResourceServerScopeType>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/ResourceServerType AWS API Documentation
    #
    class ResourceServerType < Struct.new(
      :user_pool_id,
      :identifier,
      :name,
      :scopes)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request to respond to an authentication challenge.
    #
    # @!attribute [rw] client_id
    #   The app client ID.
    #   @return [String]
    #
    # @!attribute [rw] challenge_name
    #   The challenge name. For more information, see [InitiateAuth][1].
    #
    #   `ADMIN_NO_SRP_AUTH` isn't a valid value.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_InitiateAuth.html
    #   @return [String]
    #
    # @!attribute [rw] session
    #   The session that should be passed both ways in challenge-response
    #   calls to the service. If `InitiateAuth` or `RespondToAuthChallenge`
    #   API call determines that the caller must pass another challenge,
    #   they return a session with other challenge parameters. This session
    #   should be passed as it is to the next `RespondToAuthChallenge` API
    #   call.
    #   @return [String]
    #
    # @!attribute [rw] challenge_responses
    #   The challenge responses. These are inputs corresponding to the value
    #   of `ChallengeName`, for example:
    #
    #   <note markdown="1"> `SECRET_HASH` (if app client is configured with client secret)
    #   applies to all of the inputs that follow (including
    #   `SOFTWARE_TOKEN_MFA`).
    #
    #    </note>
    #
    #   * `SMS_MFA`: `SMS_MFA_CODE`, `USERNAME`.
    #
    #   * `PASSWORD_VERIFIER`: `PASSWORD_CLAIM_SIGNATURE`,
    #     `PASSWORD_CLAIM_SECRET_BLOCK`, `TIMESTAMP`, `USERNAME`.
    #
    #     <note markdown="1"> `PASSWORD_VERIFIER` requires `DEVICE_KEY` when you sign in with a
    #     remembered device.
    #
    #      </note>
    #
    #   * `NEW_PASSWORD_REQUIRED`: `NEW_PASSWORD`, `USERNAME`, `SECRET_HASH`
    #     (if app client is configured with client secret). To set any
    #     required attributes that Amazon Cognito returned as
    #     `requiredAttributes` in the `InitiateAuth` response, add a
    #     `userAttributes.attributename ` parameter. This parameter can also
    #     set values for writable attributes that aren't required by your
    #     user pool.
    #
    #     <note markdown="1"> In a `NEW_PASSWORD_REQUIRED` challenge response, you can't modify
    #     a required attribute that already has a value. In
    #     `RespondToAuthChallenge`, set a value for any keys that Amazon
    #     Cognito returned in the `requiredAttributes` parameter, then use
    #     the `UpdateUserAttributes` API operation to modify the value of
    #     any additional attributes.
    #
    #      </note>
    #
    #   * `SOFTWARE_TOKEN_MFA`: `USERNAME` and `SOFTWARE_TOKEN_MFA_CODE` are
    #     required attributes.
    #
    #   * `DEVICE_SRP_AUTH` requires `USERNAME`, `DEVICE_KEY`, `SRP_A` (and
    #     `SECRET_HASH`).
    #
    #   * `DEVICE_PASSWORD_VERIFIER` requires everything that
    #     `PASSWORD_VERIFIER` requires, plus `DEVICE_KEY`.
    #
    #   * `MFA_SETUP` requires `USERNAME`, plus you must use the session
    #     value returned by `VerifySoftwareToken` in the `Session`
    #     parameter.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] analytics_metadata
    #   The Amazon Pinpoint analytics metadata that contributes to your
    #   metrics for `RespondToAuthChallenge` calls.
    #   @return [Types::AnalyticsMetadataType]
    #
    # @!attribute [rw] user_context_data
    #   Contextual data about your user session, such as the device
    #   fingerprint, IP address, or location. Amazon Cognito advanced
    #   security evaluates the risk of an authentication event based on the
    #   context that your app generates and passes to Amazon Cognito when it
    #   makes API requests.
    #   @return [Types::UserContextDataType]
    #
    # @!attribute [rw] client_metadata
    #   A map of custom key-value pairs that you can provide as input for
    #   any custom workflows that this action triggers.
    #
    #   You create custom workflows by assigning Lambda functions to user
    #   pool triggers. When you use the RespondToAuthChallenge API action,
    #   Amazon Cognito invokes any functions that are assigned to the
    #   following triggers: *post authentication*, *pre token generation*,
    #   *define auth challenge*, *create auth challenge*, and *verify auth
    #   challenge*. When Amazon Cognito invokes any of these functions, it
    #   passes a JSON payload, which the function receives as input. This
    #   payload contains a `clientMetadata` attribute, which provides the
    #   data that you assigned to the ClientMetadata parameter in your
    #   RespondToAuthChallenge request. In your function code in Lambda, you
    #   can process the `clientMetadata` value to enhance your workflow for
    #   your specific needs.
    #
    #   For more information, see [ Customizing user pool Workflows with
    #   Lambda Triggers][1] in the *Amazon Cognito Developer Guide*.
    #
    #   <note markdown="1"> When you use the ClientMetadata parameter, remember that Amazon
    #   Cognito won't do the following:
    #
    #    * Store the ClientMetadata value. This data is available only to
    #     Lambda triggers that are assigned to a user pool to support custom
    #     workflows. If your user pool configuration doesn't include
    #     triggers, the ClientMetadata parameter serves no purpose.
    #
    #   * Validate the ClientMetadata value.
    #
    #   * Encrypt the ClientMetadata value. Don't use Amazon Cognito to
    #     provide sensitive information.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-working-with-aws-lambda-triggers.html
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/RespondToAuthChallengeRequest AWS API Documentation
    #
    class RespondToAuthChallengeRequest < Struct.new(
      :client_id,
      :challenge_name,
      :session,
      :challenge_responses,
      :analytics_metadata,
      :user_context_data,
      :client_metadata)
      SENSITIVE = [:client_id]
      include Aws::Structure
    end

    # The response to respond to the authentication challenge.
    #
    # @!attribute [rw] challenge_name
    #   The challenge name. For more information, see [InitiateAuth][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_InitiateAuth.html
    #   @return [String]
    #
    # @!attribute [rw] session
    #   The session that should be passed both ways in challenge-response
    #   calls to the service. If the caller must pass another challenge,
    #   they return a session with other challenge parameters. This session
    #   should be passed as it is to the next `RespondToAuthChallenge` API
    #   call.
    #   @return [String]
    #
    # @!attribute [rw] challenge_parameters
    #   The challenge parameters. For more information, see
    #   [InitiateAuth][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_InitiateAuth.html
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] authentication_result
    #   The result returned by the server in response to the request to
    #   respond to the authentication challenge.
    #   @return [Types::AuthenticationResultType]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/RespondToAuthChallengeResponse AWS API Documentation
    #
    class RespondToAuthChallengeResponse < Struct.new(
      :challenge_name,
      :session,
      :challenge_parameters,
      :authentication_result)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] token
    #   The refresh token that you want to revoke.
    #   @return [String]
    #
    # @!attribute [rw] client_id
    #   The client ID for the token that you want to revoke.
    #   @return [String]
    #
    # @!attribute [rw] client_secret
    #   The secret for the client ID. This is required only if the client ID
    #   has a secret.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/RevokeTokenRequest AWS API Documentation
    #
    class RevokeTokenRequest < Struct.new(
      :token,
      :client_id,
      :client_secret)
      SENSITIVE = [:token, :client_id, :client_secret]
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/RevokeTokenResponse AWS API Documentation
    #
    class RevokeTokenResponse < Aws::EmptyStructure; end

    # The risk configuration type.
    #
    # @!attribute [rw] user_pool_id
    #   The user pool ID.
    #   @return [String]
    #
    # @!attribute [rw] client_id
    #   The app client ID.
    #   @return [String]
    #
    # @!attribute [rw] compromised_credentials_risk_configuration
    #   The compromised credentials risk configuration object, including the
    #   `EventFilter` and the `EventAction`.
    #   @return [Types::CompromisedCredentialsRiskConfigurationType]
    #
    # @!attribute [rw] account_takeover_risk_configuration
    #   The account takeover risk configuration object, including the
    #   `NotifyConfiguration` object and `Actions` to take if there is an
    #   account takeover.
    #   @return [Types::AccountTakeoverRiskConfigurationType]
    #
    # @!attribute [rw] risk_exception_configuration
    #   The configuration to override the risk decision.
    #   @return [Types::RiskExceptionConfigurationType]
    #
    # @!attribute [rw] last_modified_date
    #   The last modified date.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/RiskConfigurationType AWS API Documentation
    #
    class RiskConfigurationType < Struct.new(
      :user_pool_id,
      :client_id,
      :compromised_credentials_risk_configuration,
      :account_takeover_risk_configuration,
      :risk_exception_configuration,
      :last_modified_date)
      SENSITIVE = [:client_id]
      include Aws::Structure
    end

    # The type of the configuration to override the risk decision.
    #
    # @!attribute [rw] blocked_ip_range_list
    #   Overrides the risk decision to always block the pre-authentication
    #   requests. The IP range is in CIDR notation, a compact representation
    #   of an IP address and its routing prefix.
    #   @return [Array<String>]
    #
    # @!attribute [rw] skipped_ip_range_list
    #   Risk detection isn't performed on the IP addresses in this range
    #   list. The IP range is in CIDR notation.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/RiskExceptionConfigurationType AWS API Documentation
    #
    class RiskExceptionConfigurationType < Struct.new(
      :blocked_ip_range_list,
      :skipped_ip_range_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # The type used for enabling SMS multi-factor authentication (MFA) at
    # the user level. Phone numbers don't need to be verified to be used
    # for SMS MFA. If an MFA type is activated for a user, the user will be
    # prompted for MFA during all sign-in attempts, unless device tracking
    # is turned on and the device has been trusted. If you would like MFA to
    # be applied selectively based on the assessed risk level of sign-in
    # attempts, deactivate MFA for users and turn on Adaptive Authentication
    # for the user pool.
    #
    # @!attribute [rw] enabled
    #   Specifies whether SMS text message MFA is activated. If an MFA type
    #   is activated for a user, the user will be prompted for MFA during
    #   all sign-in attempts, unless device tracking is turned on and the
    #   device has been trusted.
    #   @return [Boolean]
    #
    # @!attribute [rw] preferred_mfa
    #   Specifies whether SMS is the preferred MFA method.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/SMSMfaSettingsType AWS API Documentation
    #
    class SMSMfaSettingsType < Struct.new(
      :enabled,
      :preferred_mfa)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the schema attribute.
    #
    # @!attribute [rw] name
    #   A schema attribute of the name type.
    #   @return [String]
    #
    # @!attribute [rw] attribute_data_type
    #   The attribute data type.
    #   @return [String]
    #
    # @!attribute [rw] developer_only_attribute
    #   <note markdown="1"> You should use [WriteAttributes][1] in the user pool client to
    #   control how attributes can be mutated for new use cases instead of
    #   using `DeveloperOnlyAttribute`.
    #
    #    </note>
    #
    #   Specifies whether the attribute type is developer only. This
    #   attribute can only be modified by an administrator. Users won't be
    #   able to modify this attribute using their access token. For example,
    #   `DeveloperOnlyAttribute` can be modified using
    #   AdminUpdateUserAttributes but can't be updated using
    #   UpdateUserAttributes.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_UserPoolClientType.html#CognitoUserPools-Type-UserPoolClientType-WriteAttributes
    #   @return [Boolean]
    #
    # @!attribute [rw] mutable
    #   Specifies whether the value of the attribute can be changed.
    #
    #   For any user pool attribute that is mapped to an IdP attribute, you
    #   must set this parameter to `true`. Amazon Cognito updates mapped
    #   attributes when users sign in to your application through an IdP. If
    #   an attribute is immutable, Amazon Cognito throws an error when it
    #   attempts to update the attribute. For more information, see
    #   [Specifying Identity Provider Attribute Mappings for Your User
    #   Pool][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-specifying-attribute-mapping.html
    #   @return [Boolean]
    #
    # @!attribute [rw] required
    #   Specifies whether a user pool attribute is required. If the
    #   attribute is required and the user doesn't provide a value,
    #   registration or sign-in will fail.
    #   @return [Boolean]
    #
    # @!attribute [rw] number_attribute_constraints
    #   Specifies the constraints for an attribute of the number type.
    #   @return [Types::NumberAttributeConstraintsType]
    #
    # @!attribute [rw] string_attribute_constraints
    #   Specifies the constraints for an attribute of the string type.
    #   @return [Types::StringAttributeConstraintsType]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/SchemaAttributeType AWS API Documentation
    #
    class SchemaAttributeType < Struct.new(
      :name,
      :attribute_data_type,
      :developer_only_attribute,
      :mutable,
      :required,
      :number_attribute_constraints,
      :string_attribute_constraints)
      SENSITIVE = []
      include Aws::Structure
    end

    # This exception is thrown when the specified scope doesn't exist.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/ScopeDoesNotExistException AWS API Documentation
    #
    class ScopeDoesNotExistException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] user_pool_id
    #   The user pool ID.
    #   @return [String]
    #
    # @!attribute [rw] client_id
    #   The app client ID. If `ClientId` is null, then the risk
    #   configuration is mapped to `userPoolId`. When the client ID is null,
    #   the same risk configuration is applied to all the clients in the
    #   userPool.
    #
    #   Otherwise, `ClientId` is mapped to the client. When the client ID
    #   isn't null, the user pool configuration is overridden and the risk
    #   configuration for the client is used instead.
    #   @return [String]
    #
    # @!attribute [rw] compromised_credentials_risk_configuration
    #   The compromised credentials risk configuration.
    #   @return [Types::CompromisedCredentialsRiskConfigurationType]
    #
    # @!attribute [rw] account_takeover_risk_configuration
    #   The account takeover risk configuration.
    #   @return [Types::AccountTakeoverRiskConfigurationType]
    #
    # @!attribute [rw] risk_exception_configuration
    #   The configuration to override the risk decision.
    #   @return [Types::RiskExceptionConfigurationType]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/SetRiskConfigurationRequest AWS API Documentation
    #
    class SetRiskConfigurationRequest < Struct.new(
      :user_pool_id,
      :client_id,
      :compromised_credentials_risk_configuration,
      :account_takeover_risk_configuration,
      :risk_exception_configuration)
      SENSITIVE = [:client_id]
      include Aws::Structure
    end

    # @!attribute [rw] risk_configuration
    #   The risk configuration.
    #   @return [Types::RiskConfigurationType]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/SetRiskConfigurationResponse AWS API Documentation
    #
    class SetRiskConfigurationResponse < Struct.new(
      :risk_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] user_pool_id
    #   The user pool ID for the user pool.
    #   @return [String]
    #
    # @!attribute [rw] client_id
    #   The client ID for the client app.
    #   @return [String]
    #
    # @!attribute [rw] css
    #   The CSS values in the UI customization.
    #   @return [String]
    #
    # @!attribute [rw] image_file
    #   The uploaded logo image for the UI customization.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/SetUICustomizationRequest AWS API Documentation
    #
    class SetUICustomizationRequest < Struct.new(
      :user_pool_id,
      :client_id,
      :css,
      :image_file)
      SENSITIVE = [:client_id]
      include Aws::Structure
    end

    # @!attribute [rw] ui_customization
    #   The UI customization information.
    #   @return [Types::UICustomizationType]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/SetUICustomizationResponse AWS API Documentation
    #
    class SetUICustomizationResponse < Struct.new(
      :ui_customization)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] sms_mfa_settings
    #   The SMS text message multi-factor authentication (MFA) settings.
    #   @return [Types::SMSMfaSettingsType]
    #
    # @!attribute [rw] software_token_mfa_settings
    #   The time-based one-time password (TOTP) software token MFA settings.
    #   @return [Types::SoftwareTokenMfaSettingsType]
    #
    # @!attribute [rw] access_token
    #   A valid access token that Amazon Cognito issued to the user whose
    #   MFA preference you want to set.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/SetUserMFAPreferenceRequest AWS API Documentation
    #
    class SetUserMFAPreferenceRequest < Struct.new(
      :sms_mfa_settings,
      :software_token_mfa_settings,
      :access_token)
      SENSITIVE = [:access_token]
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/SetUserMFAPreferenceResponse AWS API Documentation
    #
    class SetUserMFAPreferenceResponse < Aws::EmptyStructure; end

    # @!attribute [rw] user_pool_id
    #   The user pool ID.
    #   @return [String]
    #
    # @!attribute [rw] sms_mfa_configuration
    #   The SMS text message MFA configuration.
    #   @return [Types::SmsMfaConfigType]
    #
    # @!attribute [rw] software_token_mfa_configuration
    #   The software token MFA configuration.
    #   @return [Types::SoftwareTokenMfaConfigType]
    #
    # @!attribute [rw] mfa_configuration
    #   The MFA configuration. If you set the MfaConfiguration value to
    #   ‘ON’, only users who have set up an MFA factor can sign in. To learn
    #   more, see [Adding Multi-Factor Authentication (MFA) to a user
    #   pool][1]. Valid values include:
    #
    #   * `OFF` MFA won't be used for any users.
    #
    #   * `ON` MFA is required for all users to sign in.
    #
    #   * `OPTIONAL` MFA will be required only for individual users who have
    #     an MFA factor activated.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-settings-mfa.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/SetUserPoolMfaConfigRequest AWS API Documentation
    #
    class SetUserPoolMfaConfigRequest < Struct.new(
      :user_pool_id,
      :sms_mfa_configuration,
      :software_token_mfa_configuration,
      :mfa_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] sms_mfa_configuration
    #   The SMS text message MFA configuration.
    #   @return [Types::SmsMfaConfigType]
    #
    # @!attribute [rw] software_token_mfa_configuration
    #   The software token MFA configuration.
    #   @return [Types::SoftwareTokenMfaConfigType]
    #
    # @!attribute [rw] mfa_configuration
    #   The MFA configuration. Valid values include:
    #
    #   * `OFF` MFA won't be used for any users.
    #
    #   * `ON` MFA is required for all users to sign in.
    #
    #   * `OPTIONAL` MFA will be required only for individual users who have
    #     an MFA factor enabled.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/SetUserPoolMfaConfigResponse AWS API Documentation
    #
    class SetUserPoolMfaConfigResponse < Struct.new(
      :sms_mfa_configuration,
      :software_token_mfa_configuration,
      :mfa_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the request to set user settings.
    #
    # @!attribute [rw] access_token
    #   A valid access token that Amazon Cognito issued to the user whose
    #   user settings you want to configure.
    #   @return [String]
    #
    # @!attribute [rw] mfa_options
    #   You can use this parameter only to set an SMS configuration that
    #   uses SMS for delivery.
    #   @return [Array<Types::MFAOptionType>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/SetUserSettingsRequest AWS API Documentation
    #
    class SetUserSettingsRequest < Struct.new(
      :access_token,
      :mfa_options)
      SENSITIVE = [:access_token]
      include Aws::Structure
    end

    # The response from the server for a set user settings request.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/SetUserSettingsResponse AWS API Documentation
    #
    class SetUserSettingsResponse < Aws::EmptyStructure; end

    # Represents the request to register a user.
    #
    # @!attribute [rw] client_id
    #   The ID of the client associated with the user pool.
    #   @return [String]
    #
    # @!attribute [rw] secret_hash
    #   A keyed-hash message authentication code (HMAC) calculated using the
    #   secret key of a user pool client and username plus the client ID in
    #   the message.
    #   @return [String]
    #
    # @!attribute [rw] username
    #   The user name of the user you want to register.
    #   @return [String]
    #
    # @!attribute [rw] password
    #   The password of the user you want to register.
    #   @return [String]
    #
    # @!attribute [rw] user_attributes
    #   An array of name-value pairs representing user attributes.
    #
    #   For custom attributes, you must prepend the `custom:` prefix to the
    #   attribute name.
    #   @return [Array<Types::AttributeType>]
    #
    # @!attribute [rw] validation_data
    #   The validation data in the request to register a user.
    #   @return [Array<Types::AttributeType>]
    #
    # @!attribute [rw] analytics_metadata
    #   The Amazon Pinpoint analytics metadata that contributes to your
    #   metrics for `SignUp` calls.
    #   @return [Types::AnalyticsMetadataType]
    #
    # @!attribute [rw] user_context_data
    #   Contextual data about your user session, such as the device
    #   fingerprint, IP address, or location. Amazon Cognito advanced
    #   security evaluates the risk of an authentication event based on the
    #   context that your app generates and passes to Amazon Cognito when it
    #   makes API requests.
    #   @return [Types::UserContextDataType]
    #
    # @!attribute [rw] client_metadata
    #   A map of custom key-value pairs that you can provide as input for
    #   any custom workflows that this action triggers.
    #
    #   You create custom workflows by assigning Lambda functions to user
    #   pool triggers. When you use the SignUp API action, Amazon Cognito
    #   invokes any functions that are assigned to the following triggers:
    #   *pre sign-up*, *custom message*, and *post confirmation*. When
    #   Amazon Cognito invokes any of these functions, it passes a JSON
    #   payload, which the function receives as input. This payload contains
    #   a `clientMetadata` attribute, which provides the data that you
    #   assigned to the ClientMetadata parameter in your SignUp request. In
    #   your function code in Lambda, you can process the `clientMetadata`
    #   value to enhance your workflow for your specific needs.
    #
    #   For more information, see [ Customizing user pool Workflows with
    #   Lambda Triggers][1] in the *Amazon Cognito Developer Guide*.
    #
    #   <note markdown="1"> When you use the ClientMetadata parameter, remember that Amazon
    #   Cognito won't do the following:
    #
    #    * Store the ClientMetadata value. This data is available only to
    #     Lambda triggers that are assigned to a user pool to support custom
    #     workflows. If your user pool configuration doesn't include
    #     triggers, the ClientMetadata parameter serves no purpose.
    #
    #   * Validate the ClientMetadata value.
    #
    #   * Encrypt the ClientMetadata value. Don't use Amazon Cognito to
    #     provide sensitive information.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-working-with-aws-lambda-triggers.html
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/SignUpRequest AWS API Documentation
    #
    class SignUpRequest < Struct.new(
      :client_id,
      :secret_hash,
      :username,
      :password,
      :user_attributes,
      :validation_data,
      :analytics_metadata,
      :user_context_data,
      :client_metadata)
      SENSITIVE = [:client_id, :secret_hash, :username, :password]
      include Aws::Structure
    end

    # The response from the server for a registration request.
    #
    # @!attribute [rw] user_confirmed
    #   A response from the server indicating that a user registration has
    #   been confirmed.
    #   @return [Boolean]
    #
    # @!attribute [rw] code_delivery_details
    #   The code delivery details returned by the server response to the
    #   user registration request.
    #   @return [Types::CodeDeliveryDetailsType]
    #
    # @!attribute [rw] user_sub
    #   The UUID of the authenticated user. This isn't the same as
    #   `username`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/SignUpResponse AWS API Documentation
    #
    class SignUpResponse < Struct.new(
      :user_confirmed,
      :code_delivery_details,
      :user_sub)
      SENSITIVE = []
      include Aws::Structure
    end

    # The SMS configuration type is the settings that your Amazon Cognito
    # user pool must use to send an SMS message from your Amazon Web
    # Services account through Amazon Simple Notification Service. To send
    # SMS messages with Amazon SNS in the Amazon Web Services Region that
    # you want, the Amazon Cognito user pool uses an Identity and Access
    # Management (IAM) role in your Amazon Web Services account.
    #
    # @!attribute [rw] sns_caller_arn
    #   The Amazon Resource Name (ARN) of the Amazon SNS caller. This is the
    #   ARN of the IAM role in your Amazon Web Services account that Amazon
    #   Cognito will use to send SMS messages. SMS messages are subject to a
    #   [spending limit][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-settings-email-phone-verification.html
    #   @return [String]
    #
    # @!attribute [rw] external_id
    #   The external ID provides additional security for your IAM role. You
    #   can use an `ExternalId` with the IAM role that you use with Amazon
    #   SNS to send SMS messages for your user pool. If you provide an
    #   `ExternalId`, your Amazon Cognito user pool includes it in the
    #   request to assume your IAM role. You can configure the role trust
    #   policy to require that Amazon Cognito, and any principal, provide
    #   the `ExternalID`. If you use the Amazon Cognito Management Console
    #   to create a role for SMS multi-factor authentication (MFA), Amazon
    #   Cognito creates a role with the required permissions and a trust
    #   policy that demonstrates use of the `ExternalId`.
    #
    #   For more information about the `ExternalId` of a role, see [How to
    #   use an external ID when granting access to your Amazon Web Services
    #   resources to a third party][1]
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_create_for-user_externalid.html
    #   @return [String]
    #
    # @!attribute [rw] sns_region
    #   The Amazon Web Services Region to use with Amazon SNS integration.
    #   You can choose the same Region as your user pool, or a supported
    #   **Legacy Amazon SNS alternate Region**.
    #
    #   Amazon Cognito resources in the Asia Pacific (Seoul) Amazon Web
    #   Services Region must use your Amazon SNS configuration in the Asia
    #   Pacific (Tokyo) Region. For more information, see [SMS message
    #   settings for Amazon Cognito user pools][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-sms-settings.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/SmsConfigurationType AWS API Documentation
    #
    class SmsConfigurationType < Struct.new(
      :sns_caller_arn,
      :external_id,
      :sns_region)
      SENSITIVE = []
      include Aws::Structure
    end

    # The SMS text message multi-factor authentication (MFA) configuration
    # type.
    #
    # @!attribute [rw] sms_authentication_message
    #   The SMS authentication message that will be sent to users with the
    #   code they must sign in. The message must contain the ‘\\\{####\\}’
    #   placeholder, which is replaced with the code. If the message isn't
    #   included, and default message will be used.
    #   @return [String]
    #
    # @!attribute [rw] sms_configuration
    #   The SMS configuration with the settings that your Amazon Cognito
    #   user pool must use to send an SMS message from your Amazon Web
    #   Services account through Amazon Simple Notification Service. To
    #   request Amazon SNS in the Amazon Web Services Region that you want,
    #   the Amazon Cognito user pool uses an Identity and Access Management
    #   (IAM) role that you provide for your Amazon Web Services account.
    #   @return [Types::SmsConfigurationType]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/SmsMfaConfigType AWS API Documentation
    #
    class SmsMfaConfigType < Struct.new(
      :sms_authentication_message,
      :sms_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # This exception is thrown when the software token time-based one-time
    # password (TOTP) multi-factor authentication (MFA) isn't activated for
    # the user pool.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/SoftwareTokenMFANotFoundException AWS API Documentation
    #
    class SoftwareTokenMFANotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The type used for enabling software token MFA at the user pool level.
    #
    # @!attribute [rw] enabled
    #   Specifies whether software token MFA is activated.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/SoftwareTokenMfaConfigType AWS API Documentation
    #
    class SoftwareTokenMfaConfigType < Struct.new(
      :enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # The type used for enabling software token MFA at the user level. If an
    # MFA type is activated for a user, the user will be prompted for MFA
    # during all sign-in attempts, unless device tracking is turned on and
    # the device has been trusted. If you want MFA to be applied selectively
    # based on the assessed risk level of sign-in attempts, deactivate MFA
    # for users and turn on Adaptive Authentication for the user pool.
    #
    # @!attribute [rw] enabled
    #   Specifies whether software token MFA is activated. If an MFA type is
    #   activated for a user, the user will be prompted for MFA during all
    #   sign-in attempts, unless device tracking is turned on and the device
    #   has been trusted.
    #   @return [Boolean]
    #
    # @!attribute [rw] preferred_mfa
    #   Specifies whether software token MFA is the preferred MFA method.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/SoftwareTokenMfaSettingsType AWS API Documentation
    #
    class SoftwareTokenMfaSettingsType < Struct.new(
      :enabled,
      :preferred_mfa)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the request to start the user import job.
    #
    # @!attribute [rw] user_pool_id
    #   The user pool ID for the user pool that the users are being imported
    #   into.
    #   @return [String]
    #
    # @!attribute [rw] job_id
    #   The job ID for the user import job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/StartUserImportJobRequest AWS API Documentation
    #
    class StartUserImportJobRequest < Struct.new(
      :user_pool_id,
      :job_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the response from the server to the request to start the
    # user import job.
    #
    # @!attribute [rw] user_import_job
    #   The job object that represents the user import job.
    #   @return [Types::UserImportJobType]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/StartUserImportJobResponse AWS API Documentation
    #
    class StartUserImportJobResponse < Struct.new(
      :user_import_job)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the request to stop the user import job.
    #
    # @!attribute [rw] user_pool_id
    #   The user pool ID for the user pool that the users are being imported
    #   into.
    #   @return [String]
    #
    # @!attribute [rw] job_id
    #   The job ID for the user import job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/StopUserImportJobRequest AWS API Documentation
    #
    class StopUserImportJobRequest < Struct.new(
      :user_pool_id,
      :job_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the response from the server to the request to stop the
    # user import job.
    #
    # @!attribute [rw] user_import_job
    #   The job object that represents the user import job.
    #   @return [Types::UserImportJobType]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/StopUserImportJobResponse AWS API Documentation
    #
    class StopUserImportJobResponse < Struct.new(
      :user_import_job)
      SENSITIVE = []
      include Aws::Structure
    end

    # The constraints associated with a string attribute.
    #
    # @!attribute [rw] min_length
    #   The minimum length.
    #   @return [String]
    #
    # @!attribute [rw] max_length
    #   The maximum length.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/StringAttributeConstraintsType AWS API Documentation
    #
    class StringAttributeConstraintsType < Struct.new(
      :min_length,
      :max_length)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the user pool to assign the tags
    #   to.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to assign to the user pool.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # The data type TokenValidityUnits specifies the time units you use when
    # you set the duration of ID, access, and refresh tokens.
    #
    # @!attribute [rw] access_token
    #   A time unit of `seconds`, `minutes`, `hours`, or `days` for the
    #   value that you set in the `AccessTokenValidity` parameter. The
    #   default `AccessTokenValidity` time unit is hours.
    #   @return [String]
    #
    # @!attribute [rw] id_token
    #   A time unit of `seconds`, `minutes`, `hours`, or `days` for the
    #   value that you set in the `IdTokenValidity` parameter. The default
    #   `IdTokenValidity` time unit is hours.
    #   @return [String]
    #
    # @!attribute [rw] refresh_token
    #   A time unit of `seconds`, `minutes`, `hours`, or `days` for the
    #   value that you set in the `RefreshTokenValidity` parameter. The
    #   default `RefreshTokenValidity` time unit is days.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/TokenValidityUnitsType AWS API Documentation
    #
    class TokenValidityUnitsType < Struct.new(
      :access_token,
      :id_token,
      :refresh_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # This exception is thrown when the user has made too many failed
    # attempts for a given action, such as sign-in.
    #
    # @!attribute [rw] message
    #   The message returned when Amazon Cognito returns a
    #   `TooManyFailedAttempts` exception.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/TooManyFailedAttemptsException AWS API Documentation
    #
    class TooManyFailedAttemptsException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # This exception is thrown when the user has made too many requests for
    # a given operation.
    #
    # @!attribute [rw] message
    #   The message returned when the Amazon Cognito service returns a too
    #   many requests exception.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/TooManyRequestsException AWS API Documentation
    #
    class TooManyRequestsException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A container for the UI customization information for a user pool's
    # built-in app UI.
    #
    # @!attribute [rw] user_pool_id
    #   The user pool ID for the user pool.
    #   @return [String]
    #
    # @!attribute [rw] client_id
    #   The client ID for the client app.
    #   @return [String]
    #
    # @!attribute [rw] image_url
    #   The logo image for the UI customization.
    #   @return [String]
    #
    # @!attribute [rw] css
    #   The CSS values in the UI customization.
    #   @return [String]
    #
    # @!attribute [rw] css_version
    #   The CSS version number.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_date
    #   The last-modified date for the UI customization.
    #   @return [Time]
    #
    # @!attribute [rw] creation_date
    #   The creation date for the UI customization.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/UICustomizationType AWS API Documentation
    #
    class UICustomizationType < Struct.new(
      :user_pool_id,
      :client_id,
      :image_url,
      :css,
      :css_version,
      :last_modified_date,
      :creation_date)
      SENSITIVE = [:client_id]
      include Aws::Structure
    end

    # Exception that is thrown when the request isn't authorized. This can
    # happen due to an invalid access token in the request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/UnauthorizedException AWS API Documentation
    #
    class UnauthorizedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # This exception is thrown when Amazon Cognito encounters an unexpected
    # exception with Lambda.
    #
    # @!attribute [rw] message
    #   The message returned when Amazon Cognito returns an unexpected
    #   Lambda exception.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/UnexpectedLambdaException AWS API Documentation
    #
    class UnexpectedLambdaException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # This exception is thrown when the specified identifier isn't
    # supported.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/UnsupportedIdentityProviderException AWS API Documentation
    #
    class UnsupportedIdentityProviderException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Exception that is thrown when you attempt to perform an operation that
    # isn't enabled for the user pool client.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/UnsupportedOperationException AWS API Documentation
    #
    class UnsupportedOperationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Exception that is thrown when an unsupported token is passed to an
    # operation.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/UnsupportedTokenTypeException AWS API Documentation
    #
    class UnsupportedTokenTypeException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request failed because the user is in an unsupported state.
    #
    # @!attribute [rw] message
    #   The message returned when the user is in an unsupported state.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/UnsupportedUserStateException AWS API Documentation
    #
    class UnsupportedUserStateException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the user pool that the tags are
    #   assigned to.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The keys of the tags to remove from the user pool.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # @!attribute [rw] user_pool_id
    #   The user pool ID.
    #   @return [String]
    #
    # @!attribute [rw] username
    #   The user pool username.
    #   @return [String]
    #
    # @!attribute [rw] event_id
    #   The event ID.
    #   @return [String]
    #
    # @!attribute [rw] feedback_token
    #   The feedback token.
    #   @return [String]
    #
    # @!attribute [rw] feedback_value
    #   The authentication event feedback value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/UpdateAuthEventFeedbackRequest AWS API Documentation
    #
    class UpdateAuthEventFeedbackRequest < Struct.new(
      :user_pool_id,
      :username,
      :event_id,
      :feedback_token,
      :feedback_value)
      SENSITIVE = [:username, :feedback_token]
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/UpdateAuthEventFeedbackResponse AWS API Documentation
    #
    class UpdateAuthEventFeedbackResponse < Aws::EmptyStructure; end

    # Represents the request to update the device status.
    #
    # @!attribute [rw] access_token
    #   A valid access token that Amazon Cognito issued to the user whose
    #   device status you want to update.
    #   @return [String]
    #
    # @!attribute [rw] device_key
    #   The device key.
    #   @return [String]
    #
    # @!attribute [rw] device_remembered_status
    #   The status of whether a device is remembered.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/UpdateDeviceStatusRequest AWS API Documentation
    #
    class UpdateDeviceStatusRequest < Struct.new(
      :access_token,
      :device_key,
      :device_remembered_status)
      SENSITIVE = [:access_token]
      include Aws::Structure
    end

    # The response to the request to update the device status.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/UpdateDeviceStatusResponse AWS API Documentation
    #
    class UpdateDeviceStatusResponse < Aws::EmptyStructure; end

    # @!attribute [rw] group_name
    #   The name of the group.
    #   @return [String]
    #
    # @!attribute [rw] user_pool_id
    #   The user pool ID for the user pool.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A string containing the new description of the group.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The new role Amazon Resource Name (ARN) for the group. This is used
    #   for setting the `cognito:roles` and `cognito:preferred_role` claims
    #   in the token.
    #   @return [String]
    #
    # @!attribute [rw] precedence
    #   The new precedence value for the group. For more information about
    #   this parameter, see [CreateGroup][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_CreateGroup.html
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/UpdateGroupRequest AWS API Documentation
    #
    class UpdateGroupRequest < Struct.new(
      :group_name,
      :user_pool_id,
      :description,
      :role_arn,
      :precedence)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] group
    #   The group object for the group.
    #   @return [Types::GroupType]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/UpdateGroupResponse AWS API Documentation
    #
    class UpdateGroupResponse < Struct.new(
      :group)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] user_pool_id
    #   The user pool ID.
    #   @return [String]
    #
    # @!attribute [rw] provider_name
    #   The IdP name.
    #   @return [String]
    #
    # @!attribute [rw] provider_details
    #   The IdP details to be updated, such as `MetadataURL` and
    #   `MetadataFile`.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] attribute_mapping
    #   The IdP attribute mapping to be changed.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] idp_identifiers
    #   A list of IdP identifiers.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/UpdateIdentityProviderRequest AWS API Documentation
    #
    class UpdateIdentityProviderRequest < Struct.new(
      :user_pool_id,
      :provider_name,
      :provider_details,
      :attribute_mapping,
      :idp_identifiers)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] identity_provider
    #   The identity provider details.
    #   @return [Types::IdentityProviderType]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/UpdateIdentityProviderResponse AWS API Documentation
    #
    class UpdateIdentityProviderResponse < Struct.new(
      :identity_provider)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] user_pool_id
    #   The user pool ID for the user pool.
    #   @return [String]
    #
    # @!attribute [rw] identifier
    #   The identifier for the resource server.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the resource server.
    #   @return [String]
    #
    # @!attribute [rw] scopes
    #   The scope values to be set for the resource server.
    #   @return [Array<Types::ResourceServerScopeType>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/UpdateResourceServerRequest AWS API Documentation
    #
    class UpdateResourceServerRequest < Struct.new(
      :user_pool_id,
      :identifier,
      :name,
      :scopes)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_server
    #   The resource server.
    #   @return [Types::ResourceServerType]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/UpdateResourceServerResponse AWS API Documentation
    #
    class UpdateResourceServerResponse < Struct.new(
      :resource_server)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the request to update user attributes.
    #
    # @!attribute [rw] user_attributes
    #   An array of name-value pairs representing user attributes.
    #
    #   For custom attributes, you must prepend the `custom:` prefix to the
    #   attribute name.
    #
    #   If you have set an attribute to require verification before Amazon
    #   Cognito updates its value, this request doesn’t immediately update
    #   the value of that attribute. After your user receives and responds
    #   to a verification message to verify the new value, Amazon Cognito
    #   updates the attribute value. Your user can sign in and receive
    #   messages with the original attribute value until they verify the new
    #   value.
    #   @return [Array<Types::AttributeType>]
    #
    # @!attribute [rw] access_token
    #   A valid access token that Amazon Cognito issued to the user whose
    #   user attributes you want to update.
    #   @return [String]
    #
    # @!attribute [rw] client_metadata
    #   A map of custom key-value pairs that you can provide as input for
    #   any custom workflows that this action initiates.
    #
    #   You create custom workflows by assigning Lambda functions to user
    #   pool triggers. When you use the UpdateUserAttributes API action,
    #   Amazon Cognito invokes the function that is assigned to the *custom
    #   message* trigger. When Amazon Cognito invokes this function, it
    #   passes a JSON payload, which the function receives as input. This
    #   payload contains a `clientMetadata` attribute, which provides the
    #   data that you assigned to the ClientMetadata parameter in your
    #   UpdateUserAttributes request. In your function code in Lambda, you
    #   can process the `clientMetadata` value to enhance your workflow for
    #   your specific needs.
    #
    #   For more information, see [ Customizing user pool Workflows with
    #   Lambda Triggers][1] in the *Amazon Cognito Developer Guide*.
    #
    #   <note markdown="1"> When you use the ClientMetadata parameter, remember that Amazon
    #   Cognito won't do the following:
    #
    #    * Store the ClientMetadata value. This data is available only to
    #     Lambda triggers that are assigned to a user pool to support custom
    #     workflows. If your user pool configuration doesn't include
    #     triggers, the ClientMetadata parameter serves no purpose.
    #
    #   * Validate the ClientMetadata value.
    #
    #   * Encrypt the ClientMetadata value. Don't use Amazon Cognito to
    #     provide sensitive information.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-working-with-aws-lambda-triggers.html
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/UpdateUserAttributesRequest AWS API Documentation
    #
    class UpdateUserAttributesRequest < Struct.new(
      :user_attributes,
      :access_token,
      :client_metadata)
      SENSITIVE = [:access_token]
      include Aws::Structure
    end

    # Represents the response from the server for the request to update user
    # attributes.
    #
    # @!attribute [rw] code_delivery_details_list
    #   The code delivery details list from the server for the request to
    #   update user attributes.
    #   @return [Array<Types::CodeDeliveryDetailsType>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/UpdateUserAttributesResponse AWS API Documentation
    #
    class UpdateUserAttributesResponse < Struct.new(
      :code_delivery_details_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the request to update the user pool client.
    #
    # @!attribute [rw] user_pool_id
    #   The user pool ID for the user pool where you want to update the user
    #   pool client.
    #   @return [String]
    #
    # @!attribute [rw] client_id
    #   The ID of the client associated with the user pool.
    #   @return [String]
    #
    # @!attribute [rw] client_name
    #   The client name from the update user pool client request.
    #   @return [String]
    #
    # @!attribute [rw] refresh_token_validity
    #   The refresh token time limit. After this limit expires, your user
    #   can't use their refresh token. To specify the time unit for
    #   `RefreshTokenValidity` as `seconds`, `minutes`, `hours`, or `days`,
    #   set a `TokenValidityUnits` value in your API request.
    #
    #   For example, when you set `RefreshTokenValidity` as `10` and
    #   `TokenValidityUnits` as `days`, your user can refresh their session
    #   and retrieve new access and ID tokens for 10 days.
    #
    #   The default time unit for `RefreshTokenValidity` in an API request
    #   is days. You can't set `RefreshTokenValidity` to 0. If you do,
    #   Amazon Cognito overrides the value with the default value of 30
    #   days. *Valid range* is displayed below in seconds.
    #
    #   If you don't specify otherwise in the configuration of your app
    #   client, your refresh tokens are valid for 30 days.
    #   @return [Integer]
    #
    # @!attribute [rw] access_token_validity
    #   The access token time limit. After this limit expires, your user
    #   can't use their access token. To specify the time unit for
    #   `AccessTokenValidity` as `seconds`, `minutes`, `hours`, or `days`,
    #   set a `TokenValidityUnits` value in your API request.
    #
    #   For example, when you set `AccessTokenValidity` to `10` and
    #   `TokenValidityUnits` to `hours`, your user can authorize access with
    #   their access token for 10 hours.
    #
    #   The default time unit for `AccessTokenValidity` in an API request is
    #   hours. *Valid range* is displayed below in seconds.
    #
    #   If you don't specify otherwise in the configuration of your app
    #   client, your access tokens are valid for one hour.
    #   @return [Integer]
    #
    # @!attribute [rw] id_token_validity
    #   The ID token time limit. After this limit expires, your user can't
    #   use their ID token. To specify the time unit for `IdTokenValidity`
    #   as `seconds`, `minutes`, `hours`, or `days`, set a
    #   `TokenValidityUnits` value in your API request.
    #
    #   For example, when you set `IdTokenValidity` as `10` and
    #   `TokenValidityUnits` as `hours`, your user can authenticate their
    #   session with their ID token for 10 hours.
    #
    #   The default time unit for `AccessTokenValidity` in an API request is
    #   hours. *Valid range* is displayed below in seconds.
    #
    #   If you don't specify otherwise in the configuration of your app
    #   client, your ID tokens are valid for one hour.
    #   @return [Integer]
    #
    # @!attribute [rw] token_validity_units
    #   The units in which the validity times are represented. The default
    #   unit for RefreshToken is days, and the default for ID and access
    #   tokens is hours.
    #   @return [Types::TokenValidityUnitsType]
    #
    # @!attribute [rw] read_attributes
    #   The read-only attributes of the user pool.
    #   @return [Array<String>]
    #
    # @!attribute [rw] write_attributes
    #   The writeable attributes of the user pool.
    #   @return [Array<String>]
    #
    # @!attribute [rw] explicit_auth_flows
    #   The authentication flows that you want your user pool client to
    #   support. For each app client in your user pool, you can sign in your
    #   users with any combination of one or more flows, including with a
    #   user name and Secure Remote Password (SRP), a user name and
    #   password, or a custom authentication process that you define with
    #   Lambda functions.
    #
    #   <note markdown="1"> If you don't specify a value for `ExplicitAuthFlows`, your user
    #   client supports `ALLOW_REFRESH_TOKEN_AUTH`, `ALLOW_USER_SRP_AUTH`,
    #   and `ALLOW_CUSTOM_AUTH`.
    #
    #    </note>
    #
    #   Valid values include:
    #
    #   * `ALLOW_ADMIN_USER_PASSWORD_AUTH`: Enable admin based user password
    #     authentication flow `ADMIN_USER_PASSWORD_AUTH`. This setting
    #     replaces the `ADMIN_NO_SRP_AUTH` setting. With this authentication
    #     flow, your app passes a user name and password to Amazon Cognito
    #     in the request, instead of using the Secure Remote Password (SRP)
    #     protocol to securely transmit the password.
    #
    #   * `ALLOW_CUSTOM_AUTH`: Enable Lambda trigger based authentication.
    #
    #   * `ALLOW_USER_PASSWORD_AUTH`: Enable user password-based
    #     authentication. In this flow, Amazon Cognito receives the password
    #     in the request instead of using the SRP protocol to verify
    #     passwords.
    #
    #   * `ALLOW_USER_SRP_AUTH`: Enable SRP-based authentication.
    #
    #   * `ALLOW_REFRESH_TOKEN_AUTH`: Enable authflow to refresh tokens.
    #
    #   In some environments, you will see the values `ADMIN_NO_SRP_AUTH`,
    #   `CUSTOM_AUTH_FLOW_ONLY`, or `USER_PASSWORD_AUTH`. You can't assign
    #   these legacy `ExplicitAuthFlows` values to user pool clients at the
    #   same time as values that begin with `ALLOW_`, like
    #   `ALLOW_USER_SRP_AUTH`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] supported_identity_providers
    #   A list of provider names for the IdPs that this client supports. The
    #   following are supported: `COGNITO`, `Facebook`, `Google`,
    #   `SignInWithApple`, `LoginWithAmazon`, and the names of your own SAML
    #   and OIDC providers.
    #   @return [Array<String>]
    #
    # @!attribute [rw] callback_urls
    #   A list of allowed redirect (callback) URLs for the IdPs.
    #
    #   A redirect URI must:
    #
    #   * Be an absolute URI.
    #
    #   * Be registered with the authorization server.
    #
    #   * Not include a fragment component.
    #
    #   See [OAuth 2.0 - Redirection Endpoint][1].
    #
    #   Amazon Cognito requires HTTPS over HTTP except for http://localhost
    #   for testing purposes only.
    #
    #   App callback URLs such as `myapp://example` are also supported.
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc6749#section-3.1.2
    #   @return [Array<String>]
    #
    # @!attribute [rw] logout_urls
    #   A list of allowed logout URLs for the IdPs.
    #   @return [Array<String>]
    #
    # @!attribute [rw] default_redirect_uri
    #   The default redirect URI. Must be in the `CallbackURLs` list.
    #
    #   A redirect URI must:
    #
    #   * Be an absolute URI.
    #
    #   * Be registered with the authorization server.
    #
    #   * Not include a fragment component.
    #
    #   See [OAuth 2.0 - Redirection Endpoint][1].
    #
    #   Amazon Cognito requires HTTPS over HTTP except for
    #   `http://localhost` for testing purposes only.
    #
    #   App callback URLs such as `myapp://example` are also supported.
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc6749#section-3.1.2
    #   @return [String]
    #
    # @!attribute [rw] allowed_o_auth_flows
    #   The allowed OAuth flows.
    #
    #   code
    #
    #   : Use a code grant flow, which provides an authorization code as the
    #     response. This code can be exchanged for access tokens with the
    #     `/oauth2/token` endpoint.
    #
    #   implicit
    #
    #   : Issue the access token (and, optionally, ID token, based on
    #     scopes) directly to your user.
    #
    #   client\_credentials
    #
    #   : Issue the access token from the `/oauth2/token` endpoint directly
    #     to a non-person user using a combination of the client ID and
    #     client secret.
    #   @return [Array<String>]
    #
    # @!attribute [rw] allowed_o_auth_scopes
    #   The allowed OAuth scopes. Possible values provided by OAuth are
    #   `phone`, `email`, `openid`, and `profile`. Possible values provided
    #   by Amazon Web Services are `aws.cognito.signin.user.admin`. Custom
    #   scopes created in Resource Servers are also supported.
    #   @return [Array<String>]
    #
    # @!attribute [rw] allowed_o_auth_flows_user_pool_client
    #   Set to true if the client is allowed to follow the OAuth protocol
    #   when interacting with Amazon Cognito user pools.
    #   @return [Boolean]
    #
    # @!attribute [rw] analytics_configuration
    #   The Amazon Pinpoint analytics configuration necessary to collect
    #   metrics for this user pool.
    #
    #   <note markdown="1"> In Amazon Web Services Regions where Amazon Pinpoint isn't
    #   available, user pools only support sending events to Amazon Pinpoint
    #   projects in us-east-1. In Regions where Amazon Pinpoint is
    #   available, user pools support sending events to Amazon Pinpoint
    #   projects within that same Region.
    #
    #    </note>
    #   @return [Types::AnalyticsConfigurationType]
    #
    # @!attribute [rw] prevent_user_existence_errors
    #   Errors and responses that you want Amazon Cognito APIs to return
    #   during authentication, account confirmation, and password recovery
    #   when the user doesn't exist in the user pool. When set to `ENABLED`
    #   and the user doesn't exist, authentication returns an error
    #   indicating either the username or password was incorrect. Account
    #   confirmation and password recovery return a response indicating a
    #   code was sent to a simulated destination. When set to `LEGACY`,
    #   those APIs return a `UserNotFoundException` exception if the user
    #   doesn't exist in the user pool.
    #
    #   Valid values include:
    #
    #   * `ENABLED` - This prevents user existence-related errors.
    #
    #   * `LEGACY` - This represents the early behavior of Amazon Cognito
    #     where user existence related errors aren't prevented.
    #   @return [String]
    #
    # @!attribute [rw] enable_token_revocation
    #   Activates or deactivates token revocation. For more information
    #   about revoking tokens, see [RevokeToken][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_RevokeToken.html
    #   @return [Boolean]
    #
    # @!attribute [rw] enable_propagate_additional_user_context_data
    #   Activates the propagation of additional user context data. For more
    #   information about propagation of user context data, see [ Adding
    #   advanced security to a user pool][1]. If you don’t include this
    #   parameter, you can't send device fingerprint information, including
    #   source IP address, to Amazon Cognito advanced security. You can only
    #   activate `EnablePropagateAdditionalUserContextData` in an app client
    #   that has a client secret.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pool-settings-advanced-security.html
    #   @return [Boolean]
    #
    # @!attribute [rw] auth_session_validity
    #   Amazon Cognito creates a session token for each API request in an
    #   authentication flow. `AuthSessionValidity` is the duration, in
    #   minutes, of that session token. Your user pool native user must
    #   respond to each authentication challenge before the session expires.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/UpdateUserPoolClientRequest AWS API Documentation
    #
    class UpdateUserPoolClientRequest < Struct.new(
      :user_pool_id,
      :client_id,
      :client_name,
      :refresh_token_validity,
      :access_token_validity,
      :id_token_validity,
      :token_validity_units,
      :read_attributes,
      :write_attributes,
      :explicit_auth_flows,
      :supported_identity_providers,
      :callback_urls,
      :logout_urls,
      :default_redirect_uri,
      :allowed_o_auth_flows,
      :allowed_o_auth_scopes,
      :allowed_o_auth_flows_user_pool_client,
      :analytics_configuration,
      :prevent_user_existence_errors,
      :enable_token_revocation,
      :enable_propagate_additional_user_context_data,
      :auth_session_validity)
      SENSITIVE = [:client_id]
      include Aws::Structure
    end

    # Represents the response from the server to the request to update the
    # user pool client.
    #
    # @!attribute [rw] user_pool_client
    #   The user pool client value from the response from the server when
    #   you request to update the user pool client.
    #   @return [Types::UserPoolClientType]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/UpdateUserPoolClientResponse AWS API Documentation
    #
    class UpdateUserPoolClientResponse < Struct.new(
      :user_pool_client)
      SENSITIVE = []
      include Aws::Structure
    end

    # The UpdateUserPoolDomain request input.
    #
    # @!attribute [rw] domain
    #   The domain name for the custom domain that hosts the sign-up and
    #   sign-in pages for your application. One example might be
    #   `auth.example.com`.
    #
    #   This string can include only lowercase letters, numbers, and
    #   hyphens. Don't use a hyphen for the first or last character. Use
    #   periods to separate subdomain names.
    #   @return [String]
    #
    # @!attribute [rw] user_pool_id
    #   The ID of the user pool that is associated with the custom domain
    #   whose certificate you're updating.
    #   @return [String]
    #
    # @!attribute [rw] custom_domain_config
    #   The configuration for a custom domain that hosts the sign-up and
    #   sign-in pages for your application. Use this object to specify an
    #   SSL certificate that is managed by ACM.
    #   @return [Types::CustomDomainConfigType]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/UpdateUserPoolDomainRequest AWS API Documentation
    #
    class UpdateUserPoolDomainRequest < Struct.new(
      :domain,
      :user_pool_id,
      :custom_domain_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # The UpdateUserPoolDomain response output.
    #
    # @!attribute [rw] cloud_front_domain
    #   The Amazon CloudFront endpoint that Amazon Cognito set up when you
    #   added the custom domain to your user pool.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/UpdateUserPoolDomainResponse AWS API Documentation
    #
    class UpdateUserPoolDomainResponse < Struct.new(
      :cloud_front_domain)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the request to update the user pool.
    #
    # @!attribute [rw] user_pool_id
    #   The user pool ID for the user pool you want to update.
    #   @return [String]
    #
    # @!attribute [rw] policies
    #   A container with the policies you want to update in a user pool.
    #   @return [Types::UserPoolPolicyType]
    #
    # @!attribute [rw] deletion_protection
    #   When active, `DeletionProtection` prevents accidental deletion of
    #   your user pool. Before you can delete a user pool that you have
    #   protected against deletion, you must deactivate this feature.
    #
    #   When you try to delete a protected user pool in a `DeleteUserPool`
    #   API request, Amazon Cognito returns an `InvalidParameterException`
    #   error. To delete a protected user pool, send a new `DeleteUserPool`
    #   request after you deactivate deletion protection in an
    #   `UpdateUserPool` API request.
    #   @return [String]
    #
    # @!attribute [rw] lambda_config
    #   The Lambda configuration information from the request to update the
    #   user pool.
    #   @return [Types::LambdaConfigType]
    #
    # @!attribute [rw] auto_verified_attributes
    #   The attributes that are automatically verified when Amazon Cognito
    #   requests to update user pools.
    #   @return [Array<String>]
    #
    # @!attribute [rw] sms_verification_message
    #   This parameter is no longer used. See
    #   [VerificationMessageTemplateType][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_VerificationMessageTemplateType.html
    #   @return [String]
    #
    # @!attribute [rw] email_verification_message
    #   This parameter is no longer used. See
    #   [VerificationMessageTemplateType][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_VerificationMessageTemplateType.html
    #   @return [String]
    #
    # @!attribute [rw] email_verification_subject
    #   This parameter is no longer used. See
    #   [VerificationMessageTemplateType][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_VerificationMessageTemplateType.html
    #   @return [String]
    #
    # @!attribute [rw] verification_message_template
    #   The template for verification messages.
    #   @return [Types::VerificationMessageTemplateType]
    #
    # @!attribute [rw] sms_authentication_message
    #   The contents of the SMS authentication message.
    #   @return [String]
    #
    # @!attribute [rw] user_attribute_update_settings
    #   The settings for updates to user attributes. These settings include
    #   the property `AttributesRequireVerificationBeforeUpdate`, a
    #   user-pool setting that tells Amazon Cognito how to handle changes to
    #   the value of your users' email address and phone number attributes.
    #   For more information, see [ Verifying updates to email addresses and
    #   phone numbers][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-settings-email-phone-verification.html#user-pool-settings-verifications-verify-attribute-updates
    #   @return [Types::UserAttributeUpdateSettingsType]
    #
    # @!attribute [rw] mfa_configuration
    #   Possible values include:
    #
    #   * `OFF` - MFA tokens aren't required and can't be specified during
    #     user registration.
    #
    #   * `ON` - MFA tokens are required for all user registrations. You can
    #     only specify ON when you're initially creating a user pool. You
    #     can use the [SetUserPoolMfaConfig][1] API operation to turn MFA
    #     "ON" for existing user pools.
    #
    #   * `OPTIONAL` - Users have the option when registering to create an
    #     MFA token.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_SetUserPoolMfaConfig.html
    #   @return [String]
    #
    # @!attribute [rw] device_configuration
    #   The device-remembering configuration for a user pool. A null value
    #   indicates that you have deactivated device remembering in your user
    #   pool.
    #
    #   <note markdown="1"> When you provide a value for any `DeviceConfiguration` field, you
    #   activate the Amazon Cognito device-remembering feature.
    #
    #    </note>
    #   @return [Types::DeviceConfigurationType]
    #
    # @!attribute [rw] email_configuration
    #   The email configuration of your user pool. The email configuration
    #   type sets your preferred sending method, Amazon Web Services Region,
    #   and sender for email invitation and verification messages from your
    #   user pool.
    #   @return [Types::EmailConfigurationType]
    #
    # @!attribute [rw] sms_configuration
    #   The SMS configuration with the settings that your Amazon Cognito
    #   user pool must use to send an SMS message from your Amazon Web
    #   Services account through Amazon Simple Notification Service. To send
    #   SMS messages with Amazon SNS in the Amazon Web Services Region that
    #   you want, the Amazon Cognito user pool uses an Identity and Access
    #   Management (IAM) role in your Amazon Web Services account.
    #   @return [Types::SmsConfigurationType]
    #
    # @!attribute [rw] user_pool_tags
    #   The tag keys and values to assign to the user pool. A tag is a label
    #   that you can use to categorize and manage user pools in different
    #   ways, such as by purpose, owner, environment, or other criteria.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] admin_create_user_config
    #   The configuration for `AdminCreateUser` requests.
    #   @return [Types::AdminCreateUserConfigType]
    #
    # @!attribute [rw] user_pool_add_ons
    #   Enables advanced security risk detection. Set the key
    #   `AdvancedSecurityMode` to the value "AUDIT".
    #   @return [Types::UserPoolAddOnsType]
    #
    # @!attribute [rw] account_recovery_setting
    #   The available verified method a user can use to recover their
    #   password when they call `ForgotPassword`. You can use this setting
    #   to define a preferred method when a user has more than one method
    #   available. With this setting, SMS doesn't qualify for a valid
    #   password recovery mechanism if the user also has SMS multi-factor
    #   authentication (MFA) activated. In the absence of this setting,
    #   Amazon Cognito uses the legacy behavior to determine the recovery
    #   method where SMS is preferred through email.
    #   @return [Types::AccountRecoverySettingType]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/UpdateUserPoolRequest AWS API Documentation
    #
    class UpdateUserPoolRequest < Struct.new(
      :user_pool_id,
      :policies,
      :deletion_protection,
      :lambda_config,
      :auto_verified_attributes,
      :sms_verification_message,
      :email_verification_message,
      :email_verification_subject,
      :verification_message_template,
      :sms_authentication_message,
      :user_attribute_update_settings,
      :mfa_configuration,
      :device_configuration,
      :email_configuration,
      :sms_configuration,
      :user_pool_tags,
      :admin_create_user_config,
      :user_pool_add_ons,
      :account_recovery_setting)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the response from the server when you make a request to
    # update the user pool.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/UpdateUserPoolResponse AWS API Documentation
    #
    class UpdateUserPoolResponse < Aws::EmptyStructure; end

    # The settings for updates to user attributes. These settings include
    # the property `AttributesRequireVerificationBeforeUpdate`, a user-pool
    # setting that tells Amazon Cognito how to handle changes to the value
    # of your users' email address and phone number attributes. For more
    # information, see [ Verifying updates to email addresses and phone
    # numbers][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-settings-email-phone-verification.html#user-pool-settings-verifications-verify-attribute-updates
    #
    # @!attribute [rw] attributes_require_verification_before_update
    #   Requires that your user verifies their email address, phone number,
    #   or both before Amazon Cognito updates the value of that attribute.
    #   When you update a user attribute that has this option activated,
    #   Amazon Cognito sends a verification message to the new phone number
    #   or email address. Amazon Cognito doesn’t change the value of the
    #   attribute until your user responds to the verification message and
    #   confirms the new value.
    #
    #   You can verify an updated email address or phone number with a
    #   [VerifyUserAttribute][1] API request. You can also call the
    #   [UpdateUserAttributes][2] or [AdminUpdateUserAttributes][3] API and
    #   set `email_verified` or `phone_number_verified` to true.
    #
    #   When `AttributesRequireVerificationBeforeUpdate` is false, your user
    #   pool doesn't require that your users verify attribute changes
    #   before Amazon Cognito updates them. In a user pool where
    #   `AttributesRequireVerificationBeforeUpdate` is false, API operations
    #   that change attribute values can immediately update a user’s `email`
    #   or `phone_number` attribute.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_VerifyUserAttribute.html
    #   [2]: https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_UpdateUserAttributes.html
    #   [3]: https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_AdminUpdateUserAttributes.html
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/UserAttributeUpdateSettingsType AWS API Documentation
    #
    class UserAttributeUpdateSettingsType < Struct.new(
      :attributes_require_verification_before_update)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contextual data, such as the user's device fingerprint, IP address,
    # or location, used for evaluating the risk of an unexpected event by
    # Amazon Cognito advanced security.
    #
    # @!attribute [rw] ip_address
    #   The source IP address of your user's device.
    #   @return [String]
    #
    # @!attribute [rw] encoded_data
    #   Encoded device-fingerprint details that your app collected with the
    #   Amazon Cognito context data collection library. For more
    #   information, see [Adding user device and session data to API
    #   requests][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pool-settings-adaptive-authentication.html#user-pool-settings-adaptive-authentication-device-fingerprint
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/UserContextDataType AWS API Documentation
    #
    class UserContextDataType < Struct.new(
      :ip_address,
      :encoded_data)
      SENSITIVE = []
      include Aws::Structure
    end

    # This exception is thrown when you're trying to modify a user pool
    # while a user import job is in progress for that pool.
    #
    # @!attribute [rw] message
    #   The message returned when the user pool has an import job running.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/UserImportInProgressException AWS API Documentation
    #
    class UserImportInProgressException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The user import job type.
    #
    # @!attribute [rw] job_name
    #   The job name for the user import job.
    #   @return [String]
    #
    # @!attribute [rw] job_id
    #   The job ID for the user import job.
    #   @return [String]
    #
    # @!attribute [rw] user_pool_id
    #   The user pool ID for the user pool that the users are being imported
    #   into.
    #   @return [String]
    #
    # @!attribute [rw] pre_signed_url
    #   The pre-signed URL to be used to upload the `.csv` file.
    #   @return [String]
    #
    # @!attribute [rw] creation_date
    #   The date the user import job was created.
    #   @return [Time]
    #
    # @!attribute [rw] start_date
    #   The date when the user import job was started.
    #   @return [Time]
    #
    # @!attribute [rw] completion_date
    #   The date when the user import job was completed.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The status of the user import job. One of the following:
    #
    #   * `Created` - The job was created but not started.
    #
    #   * `Pending` - A transition state. You have started the job, but it
    #     has not begun importing users yet.
    #
    #   * `InProgress` - The job has started, and users are being imported.
    #
    #   * `Stopping` - You have stopped the job, but the job has not stopped
    #     importing users yet.
    #
    #   * `Stopped` - You have stopped the job, and the job has stopped
    #     importing users.
    #
    #   * `Succeeded` - The job has completed successfully.
    #
    #   * `Failed` - The job has stopped due to an error.
    #
    #   * `Expired` - You created a job, but did not start the job within
    #     24-48 hours. All data associated with the job was deleted, and the
    #     job can't be started.
    #   @return [String]
    #
    # @!attribute [rw] cloud_watch_logs_role_arn
    #   The role Amazon Resource Name (ARN) for the Amazon CloudWatch
    #   Logging role for the user import job. For more information, see
    #   "Creating the CloudWatch Logs IAM Role" in the Amazon Cognito
    #   Developer Guide.
    #   @return [String]
    #
    # @!attribute [rw] imported_users
    #   The number of users that were successfully imported.
    #   @return [Integer]
    #
    # @!attribute [rw] skipped_users
    #   The number of users that were skipped.
    #   @return [Integer]
    #
    # @!attribute [rw] failed_users
    #   The number of users that couldn't be imported.
    #   @return [Integer]
    #
    # @!attribute [rw] completion_message
    #   The message returned when the user import job is completed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/UserImportJobType AWS API Documentation
    #
    class UserImportJobType < Struct.new(
      :job_name,
      :job_id,
      :user_pool_id,
      :pre_signed_url,
      :creation_date,
      :start_date,
      :completion_date,
      :status,
      :cloud_watch_logs_role_arn,
      :imported_users,
      :skipped_users,
      :failed_users,
      :completion_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # This exception is thrown when the Amazon Cognito service encounters a
    # user validation exception with the Lambda service.
    #
    # @!attribute [rw] message
    #   The message returned when the Amazon Cognito service returns a user
    #   validation exception with the Lambda service.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/UserLambdaValidationException AWS API Documentation
    #
    class UserLambdaValidationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # This exception is thrown when a user isn't confirmed successfully.
    #
    # @!attribute [rw] message
    #   The message returned when a user isn't confirmed successfully.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/UserNotConfirmedException AWS API Documentation
    #
    class UserNotConfirmedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # This exception is thrown when a user isn't found.
    #
    # @!attribute [rw] message
    #   The message returned when a user isn't found.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/UserNotFoundException AWS API Documentation
    #
    class UserNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # This exception is thrown when user pool add-ons aren't enabled.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/UserPoolAddOnNotEnabledException AWS API Documentation
    #
    class UserPoolAddOnNotEnabledException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The user pool add-ons type.
    #
    # @!attribute [rw] advanced_security_mode
    #   The advanced security mode.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/UserPoolAddOnsType AWS API Documentation
    #
    class UserPoolAddOnsType < Struct.new(
      :advanced_security_mode)
      SENSITIVE = []
      include Aws::Structure
    end

    # The description of the user pool client.
    #
    # @!attribute [rw] client_id
    #   The ID of the client associated with the user pool.
    #   @return [String]
    #
    # @!attribute [rw] user_pool_id
    #   The user pool ID for the user pool where you want to describe the
    #   user pool client.
    #   @return [String]
    #
    # @!attribute [rw] client_name
    #   The client name from the user pool client description.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/UserPoolClientDescription AWS API Documentation
    #
    class UserPoolClientDescription < Struct.new(
      :client_id,
      :user_pool_id,
      :client_name)
      SENSITIVE = [:client_id]
      include Aws::Structure
    end

    # Contains information about a user pool client.
    #
    # @!attribute [rw] user_pool_id
    #   The user pool ID for the user pool client.
    #   @return [String]
    #
    # @!attribute [rw] client_name
    #   The client name from the user pool request of the client type.
    #   @return [String]
    #
    # @!attribute [rw] client_id
    #   The ID of the client associated with the user pool.
    #   @return [String]
    #
    # @!attribute [rw] client_secret
    #   The client secret from the user pool request of the client type.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_date
    #   The date the user pool client was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] creation_date
    #   The date the user pool client was created.
    #   @return [Time]
    #
    # @!attribute [rw] refresh_token_validity
    #   The refresh token time limit. After this limit expires, your user
    #   can't use their refresh token. To specify the time unit for
    #   `RefreshTokenValidity` as `seconds`, `minutes`, `hours`, or `days`,
    #   set a `TokenValidityUnits` value in your API request.
    #
    #   For example, when you set `RefreshTokenValidity` as `10` and
    #   `TokenValidityUnits` as `days`, your user can refresh their session
    #   and retrieve new access and ID tokens for 10 days.
    #
    #   The default time unit for `RefreshTokenValidity` in an API request
    #   is days. You can't set `RefreshTokenValidity` to 0. If you do,
    #   Amazon Cognito overrides the value with the default value of 30
    #   days. *Valid range* is displayed below in seconds.
    #
    #   If you don't specify otherwise in the configuration of your app
    #   client, your refresh tokens are valid for 30 days.
    #   @return [Integer]
    #
    # @!attribute [rw] access_token_validity
    #   The access token time limit. After this limit expires, your user
    #   can't use their access token. To specify the time unit for
    #   `AccessTokenValidity` as `seconds`, `minutes`, `hours`, or `days`,
    #   set a `TokenValidityUnits` value in your API request.
    #
    #   For example, when you set `AccessTokenValidity` to `10` and
    #   `TokenValidityUnits` to `hours`, your user can authorize access with
    #   their access token for 10 hours.
    #
    #   The default time unit for `AccessTokenValidity` in an API request is
    #   hours. *Valid range* is displayed below in seconds.
    #
    #   If you don't specify otherwise in the configuration of your app
    #   client, your access tokens are valid for one hour.
    #   @return [Integer]
    #
    # @!attribute [rw] id_token_validity
    #   The ID token time limit. After this limit expires, your user can't
    #   use their ID token. To specify the time unit for `IdTokenValidity`
    #   as `seconds`, `minutes`, `hours`, or `days`, set a
    #   `TokenValidityUnits` value in your API request.
    #
    #   For example, when you set `IdTokenValidity` as `10` and
    #   `TokenValidityUnits` as `hours`, your user can authenticate their
    #   session with their ID token for 10 hours.
    #
    #   The default time unit for `AccessTokenValidity` in an API request is
    #   hours. *Valid range* is displayed below in seconds.
    #
    #   If you don't specify otherwise in the configuration of your app
    #   client, your ID tokens are valid for one hour.
    #   @return [Integer]
    #
    # @!attribute [rw] token_validity_units
    #   The time units used to specify the token validity times of each
    #   token type: ID, access, and refresh.
    #   @return [Types::TokenValidityUnitsType]
    #
    # @!attribute [rw] read_attributes
    #   The Read-only attributes.
    #   @return [Array<String>]
    #
    # @!attribute [rw] write_attributes
    #   The writeable attributes.
    #   @return [Array<String>]
    #
    # @!attribute [rw] explicit_auth_flows
    #   The authentication flows that you want your user pool client to
    #   support. For each app client in your user pool, you can sign in your
    #   users with any combination of one or more flows, including with a
    #   user name and Secure Remote Password (SRP), a user name and
    #   password, or a custom authentication process that you define with
    #   Lambda functions.
    #
    #   <note markdown="1"> If you don't specify a value for `ExplicitAuthFlows`, your user
    #   client supports `ALLOW_REFRESH_TOKEN_AUTH`, `ALLOW_USER_SRP_AUTH`,
    #   and `ALLOW_CUSTOM_AUTH`.
    #
    #    </note>
    #
    #   Valid values include:
    #
    #   * `ALLOW_ADMIN_USER_PASSWORD_AUTH`: Enable admin based user password
    #     authentication flow `ADMIN_USER_PASSWORD_AUTH`. This setting
    #     replaces the `ADMIN_NO_SRP_AUTH` setting. With this authentication
    #     flow, your app passes a user name and password to Amazon Cognito
    #     in the request, instead of using the Secure Remote Password (SRP)
    #     protocol to securely transmit the password.
    #
    #   * `ALLOW_CUSTOM_AUTH`: Enable Lambda trigger based authentication.
    #
    #   * `ALLOW_USER_PASSWORD_AUTH`: Enable user password-based
    #     authentication. In this flow, Amazon Cognito receives the password
    #     in the request instead of using the SRP protocol to verify
    #     passwords.
    #
    #   * `ALLOW_USER_SRP_AUTH`: Enable SRP-based authentication.
    #
    #   * `ALLOW_REFRESH_TOKEN_AUTH`: Enable authflow to refresh tokens.
    #
    #   In some environments, you will see the values `ADMIN_NO_SRP_AUTH`,
    #   `CUSTOM_AUTH_FLOW_ONLY`, or `USER_PASSWORD_AUTH`. You can't assign
    #   these legacy `ExplicitAuthFlows` values to user pool clients at the
    #   same time as values that begin with `ALLOW_`, like
    #   `ALLOW_USER_SRP_AUTH`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] supported_identity_providers
    #   A list of provider names for the IdPs that this client supports. The
    #   following are supported: `COGNITO`, `Facebook`, `Google`,
    #   `SignInWithApple`, `LoginWithAmazon`, and the names of your own SAML
    #   and OIDC providers.
    #   @return [Array<String>]
    #
    # @!attribute [rw] callback_urls
    #   A list of allowed redirect (callback) URLs for the IdPs.
    #
    #   A redirect URI must:
    #
    #   * Be an absolute URI.
    #
    #   * Be registered with the authorization server.
    #
    #   * Not include a fragment component.
    #
    #   See [OAuth 2.0 - Redirection Endpoint][1].
    #
    #   Amazon Cognito requires HTTPS over HTTP except for http://localhost
    #   for testing purposes only.
    #
    #   App callback URLs such as myapp://example are also supported.
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc6749#section-3.1.2
    #   @return [Array<String>]
    #
    # @!attribute [rw] logout_urls
    #   A list of allowed logout URLs for the IdPs.
    #   @return [Array<String>]
    #
    # @!attribute [rw] default_redirect_uri
    #   The default redirect URI. Must be in the `CallbackURLs` list.
    #
    #   A redirect URI must:
    #
    #   * Be an absolute URI.
    #
    #   * Be registered with the authorization server.
    #
    #   * Not include a fragment component.
    #
    #   See [OAuth 2.0 - Redirection Endpoint][1].
    #
    #   Amazon Cognito requires HTTPS over HTTP except for http://localhost
    #   for testing purposes only.
    #
    #   App callback URLs such as myapp://example are also supported.
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc6749#section-3.1.2
    #   @return [String]
    #
    # @!attribute [rw] allowed_o_auth_flows
    #   The allowed OAuth flows.
    #
    #   code
    #
    #   : Use a code grant flow, which provides an authorization code as the
    #     response. This code can be exchanged for access tokens with the
    #     `/oauth2/token` endpoint.
    #
    #   implicit
    #
    #   : Issue the access token (and, optionally, ID token, based on
    #     scopes) directly to your user.
    #
    #   client\_credentials
    #
    #   : Issue the access token from the `/oauth2/token` endpoint directly
    #     to a non-person user using a combination of the client ID and
    #     client secret.
    #   @return [Array<String>]
    #
    # @!attribute [rw] allowed_o_auth_scopes
    #   The OAuth scopes that your app client supports. Possible values that
    #   OAuth provides are `phone`, `email`, `openid`, and `profile`.
    #   Possible values that Amazon Web Services provides are
    #   `aws.cognito.signin.user.admin`. Amazon Cognito also supports custom
    #   scopes that you create in Resource Servers.
    #   @return [Array<String>]
    #
    # @!attribute [rw] allowed_o_auth_flows_user_pool_client
    #   Set to true if the client is allowed to follow the OAuth protocol
    #   when interacting with Amazon Cognito user pools.
    #   @return [Boolean]
    #
    # @!attribute [rw] analytics_configuration
    #   The Amazon Pinpoint analytics configuration for the user pool
    #   client.
    #
    #   <note markdown="1"> Amazon Cognito user pools only support sending events to Amazon
    #   Pinpoint projects in the US East (N. Virginia) us-east-1 Region,
    #   regardless of the Region where the user pool resides.
    #
    #    </note>
    #   @return [Types::AnalyticsConfigurationType]
    #
    # @!attribute [rw] prevent_user_existence_errors
    #   Errors and responses that you want Amazon Cognito APIs to return
    #   during authentication, account confirmation, and password recovery
    #   when the user doesn't exist in the user pool. When set to `ENABLED`
    #   and the user doesn't exist, authentication returns an error
    #   indicating either the username or password was incorrect. Account
    #   confirmation and password recovery return a response indicating a
    #   code was sent to a simulated destination. When set to `LEGACY`,
    #   those APIs return a `UserNotFoundException` exception if the user
    #   doesn't exist in the user pool.
    #
    #   Valid values include:
    #
    #   * `ENABLED` - This prevents user existence-related errors.
    #
    #   * `LEGACY` - This represents the old behavior of Amazon Cognito
    #     where user existence related errors aren't prevented.
    #   @return [String]
    #
    # @!attribute [rw] enable_token_revocation
    #   Indicates whether token revocation is activated for the user pool
    #   client. When you create a new user pool client, token revocation is
    #   activated by default. For more information about revoking tokens,
    #   see [RevokeToken][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_RevokeToken.html
    #   @return [Boolean]
    #
    # @!attribute [rw] enable_propagate_additional_user_context_data
    #   When `EnablePropagateAdditionalUserContextData` is true, Amazon
    #   Cognito accepts an `IpAddress` value that you send in the
    #   `UserContextData` parameter. The `UserContextData` parameter sends
    #   information to Amazon Cognito advanced security for risk analysis.
    #   You can send `UserContextData` when you sign in Amazon Cognito
    #   native users with the `InitiateAuth` and `RespondToAuthChallenge`
    #   API operations.
    #
    #   When `EnablePropagateAdditionalUserContextData` is false, you can't
    #   send your user's source IP address to Amazon Cognito advanced
    #   security with unauthenticated API operations.
    #   `EnablePropagateAdditionalUserContextData` doesn't affect whether
    #   you can send a source IP address in a `ContextData` parameter with
    #   the authenticated API operations `AdminInitiateAuth` and
    #   `AdminRespondToAuthChallenge`.
    #
    #   You can only activate `EnablePropagateAdditionalUserContextData` in
    #   an app client that has a client secret. For more information about
    #   propagation of user context data, see [Adding user device and
    #   session data to API requests][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pool-settings-adaptive-authentication.html#user-pool-settings-adaptive-authentication-device-fingerprint
    #   @return [Boolean]
    #
    # @!attribute [rw] auth_session_validity
    #   Amazon Cognito creates a session token for each API request in an
    #   authentication flow. `AuthSessionValidity` is the duration, in
    #   minutes, of that session token. Your user pool native user must
    #   respond to each authentication challenge before the session expires.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/UserPoolClientType AWS API Documentation
    #
    class UserPoolClientType < Struct.new(
      :user_pool_id,
      :client_name,
      :client_id,
      :client_secret,
      :last_modified_date,
      :creation_date,
      :refresh_token_validity,
      :access_token_validity,
      :id_token_validity,
      :token_validity_units,
      :read_attributes,
      :write_attributes,
      :explicit_auth_flows,
      :supported_identity_providers,
      :callback_urls,
      :logout_urls,
      :default_redirect_uri,
      :allowed_o_auth_flows,
      :allowed_o_auth_scopes,
      :allowed_o_auth_flows_user_pool_client,
      :analytics_configuration,
      :prevent_user_existence_errors,
      :enable_token_revocation,
      :enable_propagate_additional_user_context_data,
      :auth_session_validity)
      SENSITIVE = [:client_id, :client_secret]
      include Aws::Structure
    end

    # A user pool description.
    #
    # @!attribute [rw] id
    #   The ID in a user pool description.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name in a user pool description.
    #   @return [String]
    #
    # @!attribute [rw] lambda_config
    #   The Lambda configuration information in a user pool description.
    #   @return [Types::LambdaConfigType]
    #
    # @!attribute [rw] status
    #   The user pool status in a user pool description.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_date
    #   The date the user pool description was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] creation_date
    #   The date the user pool description was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/UserPoolDescriptionType AWS API Documentation
    #
    class UserPoolDescriptionType < Struct.new(
      :id,
      :name,
      :lambda_config,
      :status,
      :last_modified_date,
      :creation_date)
      SENSITIVE = []
      include Aws::Structure
    end

    # The policy associated with a user pool.
    #
    # @!attribute [rw] password_policy
    #   The password policy.
    #   @return [Types::PasswordPolicyType]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/UserPoolPolicyType AWS API Documentation
    #
    class UserPoolPolicyType < Struct.new(
      :password_policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # This exception is thrown when a user pool tag can't be set or
    # updated.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/UserPoolTaggingException AWS API Documentation
    #
    class UserPoolTaggingException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A container for information about the user pool.
    #
    # @!attribute [rw] id
    #   The ID of the user pool.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the user pool.
    #   @return [String]
    #
    # @!attribute [rw] policies
    #   The policies associated with the user pool.
    #   @return [Types::UserPoolPolicyType]
    #
    # @!attribute [rw] deletion_protection
    #   When active, `DeletionProtection` prevents accidental deletion of
    #   your user pool. Before you can delete a user pool that you have
    #   protected against deletion, you must deactivate this feature.
    #
    #   When you try to delete a protected user pool in a `DeleteUserPool`
    #   API request, Amazon Cognito returns an `InvalidParameterException`
    #   error. To delete a protected user pool, send a new `DeleteUserPool`
    #   request after you deactivate deletion protection in an
    #   `UpdateUserPool` API request.
    #   @return [String]
    #
    # @!attribute [rw] lambda_config
    #   The Lambda triggers associated with the user pool.
    #   @return [Types::LambdaConfigType]
    #
    # @!attribute [rw] status
    #   The status of a user pool.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_date
    #   The date the user pool was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] creation_date
    #   The date the user pool was created.
    #   @return [Time]
    #
    # @!attribute [rw] schema_attributes
    #   A container with the schema attributes of a user pool.
    #   @return [Array<Types::SchemaAttributeType>]
    #
    # @!attribute [rw] auto_verified_attributes
    #   The attributes that are auto-verified in a user pool.
    #   @return [Array<String>]
    #
    # @!attribute [rw] alias_attributes
    #   The attributes that are aliased in a user pool.
    #   @return [Array<String>]
    #
    # @!attribute [rw] username_attributes
    #   Specifies whether a user can use an email address or phone number as
    #   a username when they sign up.
    #   @return [Array<String>]
    #
    # @!attribute [rw] sms_verification_message
    #   This parameter is no longer used. See
    #   [VerificationMessageTemplateType][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_VerificationMessageTemplateType.html
    #   @return [String]
    #
    # @!attribute [rw] email_verification_message
    #   This parameter is no longer used. See
    #   [VerificationMessageTemplateType][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_VerificationMessageTemplateType.html
    #   @return [String]
    #
    # @!attribute [rw] email_verification_subject
    #   This parameter is no longer used. See
    #   [VerificationMessageTemplateType][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_VerificationMessageTemplateType.html
    #   @return [String]
    #
    # @!attribute [rw] verification_message_template
    #   The template for verification messages.
    #   @return [Types::VerificationMessageTemplateType]
    #
    # @!attribute [rw] sms_authentication_message
    #   The contents of the SMS authentication message.
    #   @return [String]
    #
    # @!attribute [rw] user_attribute_update_settings
    #   The settings for updates to user attributes. These settings include
    #   the property `AttributesRequireVerificationBeforeUpdate`, a
    #   user-pool setting that tells Amazon Cognito how to handle changes to
    #   the value of your users' email address and phone number attributes.
    #   For more information, see [ Verifying updates to email addresses and
    #   phone numbers][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-settings-email-phone-verification.html#user-pool-settings-verifications-verify-attribute-updates
    #   @return [Types::UserAttributeUpdateSettingsType]
    #
    # @!attribute [rw] mfa_configuration
    #   Can be one of the following values:
    #
    #   * `OFF` - MFA tokens aren't required and can't be specified during
    #     user registration.
    #
    #   * `ON` - MFA tokens are required for all user registrations. You can
    #     only specify required when you're initially creating a user pool.
    #
    #   * `OPTIONAL` - Users have the option when registering to create an
    #     MFA token.
    #   @return [String]
    #
    # @!attribute [rw] device_configuration
    #   The device-remembering configuration for a user pool. A null value
    #   indicates that you have deactivated device remembering in your user
    #   pool.
    #
    #   <note markdown="1"> When you provide a value for any `DeviceConfiguration` field, you
    #   activate the Amazon Cognito device-remembering feature.
    #
    #    </note>
    #   @return [Types::DeviceConfigurationType]
    #
    # @!attribute [rw] estimated_number_of_users
    #   A number estimating the size of the user pool.
    #   @return [Integer]
    #
    # @!attribute [rw] email_configuration
    #   The email configuration of your user pool. The email configuration
    #   type sets your preferred sending method, Amazon Web Services Region,
    #   and sender for messages tfrom your user pool.
    #   @return [Types::EmailConfigurationType]
    #
    # @!attribute [rw] sms_configuration
    #   The SMS configuration with the settings that your Amazon Cognito
    #   user pool must use to send an SMS message from your Amazon Web
    #   Services account through Amazon Simple Notification Service. To send
    #   SMS messages with Amazon SNS in the Amazon Web Services Region that
    #   you want, the Amazon Cognito user pool uses an Identity and Access
    #   Management (IAM) role in your Amazon Web Services account.
    #   @return [Types::SmsConfigurationType]
    #
    # @!attribute [rw] user_pool_tags
    #   The tags that are assigned to the user pool. A tag is a label that
    #   you can apply to user pools to categorize and manage them in
    #   different ways, such as by purpose, owner, environment, or other
    #   criteria.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] sms_configuration_failure
    #   The reason why the SMS configuration can't send the messages to
    #   your users.
    #
    #   This message might include comma-separated values to describe why
    #   your SMS configuration can't send messages to user pool end users.
    #
    #   InvalidSmsRoleAccessPolicyException
    #
    #   : The Identity and Access Management role that Amazon Cognito uses
    #     to send SMS messages isn't properly configured. For more
    #     information, see [SmsConfigurationType][1].
    #
    #   SNSSandbox
    #
    #   : The Amazon Web Services account is in the SNS SMS Sandbox and
    #     messages will only reach verified end users. This parameter won’t
    #     get populated with SNSSandbox if the IAM user creating the user
    #     pool doesn’t have SNS permissions. To learn how to move your
    #     Amazon Web Services account out of the sandbox, see [Moving out of
    #     the SMS sandbox][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_SmsConfigurationType.html
    #   [2]: https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox-moving-to-production.html
    #   @return [String]
    #
    # @!attribute [rw] email_configuration_failure
    #   Deprecated. Review error codes from API requests with
    #   `EventSource:cognito-idp.amazonaws.com` in CloudTrail for
    #   information about problems with user pool email configuration.
    #   @return [String]
    #
    # @!attribute [rw] domain
    #   The domain prefix, if the user pool has a domain associated with it.
    #   @return [String]
    #
    # @!attribute [rw] custom_domain
    #   A custom domain name that you provide to Amazon Cognito. This
    #   parameter applies only if you use a custom domain to host the
    #   sign-up and sign-in pages for your application. An example of a
    #   custom domain name might be `auth.example.com`.
    #
    #   For more information about adding a custom domain to your user pool,
    #   see [Using Your Own Domain for the Hosted UI][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-add-custom-domain.html
    #   @return [String]
    #
    # @!attribute [rw] admin_create_user_config
    #   The configuration for `AdminCreateUser` requests.
    #   @return [Types::AdminCreateUserConfigType]
    #
    # @!attribute [rw] user_pool_add_ons
    #   The user pool add-ons.
    #   @return [Types::UserPoolAddOnsType]
    #
    # @!attribute [rw] username_configuration
    #   Case sensitivity of the username input for the selected sign-in
    #   option. For example, when case sensitivity is set to `False`, users
    #   can sign in using either "username" or "Username". This
    #   configuration is immutable once it has been set. For more
    #   information, see [UsernameConfigurationType][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_UsernameConfigurationType.html
    #   @return [Types::UsernameConfigurationType]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) for the user pool.
    #   @return [String]
    #
    # @!attribute [rw] account_recovery_setting
    #   The available verified method a user can use to recover their
    #   password when they call `ForgotPassword`. You can use this setting
    #   to define a preferred method when a user has more than one method
    #   available. With this setting, SMS doesn't qualify for a valid
    #   password recovery mechanism if the user also has SMS multi-factor
    #   authentication (MFA) activated. In the absence of this setting,
    #   Amazon Cognito uses the legacy behavior to determine the recovery
    #   method where SMS is preferred through email.
    #   @return [Types::AccountRecoverySettingType]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/UserPoolType AWS API Documentation
    #
    class UserPoolType < Struct.new(
      :id,
      :name,
      :policies,
      :deletion_protection,
      :lambda_config,
      :status,
      :last_modified_date,
      :creation_date,
      :schema_attributes,
      :auto_verified_attributes,
      :alias_attributes,
      :username_attributes,
      :sms_verification_message,
      :email_verification_message,
      :email_verification_subject,
      :verification_message_template,
      :sms_authentication_message,
      :user_attribute_update_settings,
      :mfa_configuration,
      :device_configuration,
      :estimated_number_of_users,
      :email_configuration,
      :sms_configuration,
      :user_pool_tags,
      :sms_configuration_failure,
      :email_configuration_failure,
      :domain,
      :custom_domain,
      :admin_create_user_config,
      :user_pool_add_ons,
      :username_configuration,
      :arn,
      :account_recovery_setting)
      SENSITIVE = []
      include Aws::Structure
    end

    # A user profile in a Amazon Cognito user pool.
    #
    # @!attribute [rw] username
    #   The user name of the user you want to describe.
    #   @return [String]
    #
    # @!attribute [rw] attributes
    #   A container with information about the user type attributes.
    #   @return [Array<Types::AttributeType>]
    #
    # @!attribute [rw] user_create_date
    #   The creation date of the user.
    #   @return [Time]
    #
    # @!attribute [rw] user_last_modified_date
    #   The last modified date of the user.
    #   @return [Time]
    #
    # @!attribute [rw] enabled
    #   Specifies whether the user is enabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] user_status
    #   The user status. This can be one of the following:
    #
    #   * UNCONFIRMED - User has been created but not confirmed.
    #
    #   * CONFIRMED - User has been confirmed.
    #
    #   * EXTERNAL\_PROVIDER - User signed in with a third-party IdP.
    #
    #   * ARCHIVED - User is no longer active.
    #
    #   * UNKNOWN - User status isn't known.
    #
    #   * RESET\_REQUIRED - User is confirmed, but the user must request a
    #     code and reset their password before they can sign in.
    #
    #   * FORCE\_CHANGE\_PASSWORD - The user is confirmed and the user can
    #     sign in using a temporary password, but on first sign-in, the user
    #     must change their password to a new value before doing anything
    #     else.
    #   @return [String]
    #
    # @!attribute [rw] mfa_options
    #   The MFA options for the user.
    #   @return [Array<Types::MFAOptionType>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/UserType AWS API Documentation
    #
    class UserType < Struct.new(
      :username,
      :attributes,
      :user_create_date,
      :user_last_modified_date,
      :enabled,
      :user_status,
      :mfa_options)
      SENSITIVE = [:username]
      include Aws::Structure
    end

    # The username configuration type.
    #
    # @!attribute [rw] case_sensitive
    #   Specifies whether user name case sensitivity will be applied for all
    #   users in the user pool through Amazon Cognito APIs.
    #
    #   Valid values include:
    #
    #   True
    #
    #   : Enables case sensitivity for all username input. When this option
    #     is set to `True`, users must sign in using the exact
    #     capitalization of their given username, such as “UserName”. This
    #     is the default value.
    #
    #   False
    #
    #   : Enables case insensitivity for all username input. For example,
    #     when this option is set to `False`, users can sign in using either
    #     "username" or "Username". This option also enables both
    #     `preferred_username` and `email` alias to be case insensitive, in
    #     addition to the `username` attribute.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/UsernameConfigurationType AWS API Documentation
    #
    class UsernameConfigurationType < Struct.new(
      :case_sensitive)
      SENSITIVE = []
      include Aws::Structure
    end

    # This exception is thrown when Amazon Cognito encounters a user name
    # that already exists in the user pool.
    #
    # @!attribute [rw] message
    #   The message returned when Amazon Cognito throws a user name exists
    #   exception.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/UsernameExistsException AWS API Documentation
    #
    class UsernameExistsException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The template for verification messages.
    #
    # @!attribute [rw] sms_message
    #   The template for SMS messages that Amazon Cognito sends to your
    #   users.
    #   @return [String]
    #
    # @!attribute [rw] email_message
    #   The template for email messages that Amazon Cognito sends to your
    #   users. You can set an `EmailMessage` template only if the value of [
    #   EmailSendingAccount][1] is `DEVELOPER`. When your
    #   [EmailSendingAccount][1] is `DEVELOPER`, your user pool sends email
    #   messages with your own Amazon SES configuration.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_EmailConfigurationType.html#CognitoUserPools-Type-EmailConfigurationType-EmailSendingAccount
    #   @return [String]
    #
    # @!attribute [rw] email_subject
    #   The subject line for the email message template. You can set an
    #   `EmailSubject` template only if the value of [
    #   EmailSendingAccount][1] is `DEVELOPER`. When your
    #   [EmailSendingAccount][1] is `DEVELOPER`, your user pool sends email
    #   messages with your own Amazon SES configuration.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_EmailConfigurationType.html#CognitoUserPools-Type-EmailConfigurationType-EmailSendingAccount
    #   @return [String]
    #
    # @!attribute [rw] email_message_by_link
    #   The email message template for sending a confirmation link to the
    #   user. You can set an `EmailMessageByLink` template only if the value
    #   of [ EmailSendingAccount][1] is `DEVELOPER`. When your
    #   [EmailSendingAccount][1] is `DEVELOPER`, your user pool sends email
    #   messages with your own Amazon SES configuration.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_EmailConfigurationType.html#CognitoUserPools-Type-EmailConfigurationType-EmailSendingAccount
    #   @return [String]
    #
    # @!attribute [rw] email_subject_by_link
    #   The subject line for the email message template for sending a
    #   confirmation link to the user. You can set an `EmailSubjectByLink`
    #   template only if the value of [ EmailSendingAccount][1] is
    #   `DEVELOPER`. When your [EmailSendingAccount][1] is `DEVELOPER`, your
    #   user pool sends email messages with your own Amazon SES
    #   configuration.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_EmailConfigurationType.html#CognitoUserPools-Type-EmailConfigurationType-EmailSendingAccount
    #   @return [String]
    #
    # @!attribute [rw] default_email_option
    #   The default email option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/VerificationMessageTemplateType AWS API Documentation
    #
    class VerificationMessageTemplateType < Struct.new(
      :sms_message,
      :email_message,
      :email_subject,
      :email_message_by_link,
      :email_subject_by_link,
      :default_email_option)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] access_token
    #   A valid access token that Amazon Cognito issued to the user whose
    #   software token you want to verify.
    #   @return [String]
    #
    # @!attribute [rw] session
    #   The session that should be passed both ways in challenge-response
    #   calls to the service.
    #   @return [String]
    #
    # @!attribute [rw] user_code
    #   The one- time password computed using the secret code returned by
    #   [AssociateSoftwareToken][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_AssociateSoftwareToken.html
    #   @return [String]
    #
    # @!attribute [rw] friendly_device_name
    #   The friendly device name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/VerifySoftwareTokenRequest AWS API Documentation
    #
    class VerifySoftwareTokenRequest < Struct.new(
      :access_token,
      :session,
      :user_code,
      :friendly_device_name)
      SENSITIVE = [:access_token]
      include Aws::Structure
    end

    # @!attribute [rw] status
    #   The status of the verify software token.
    #   @return [String]
    #
    # @!attribute [rw] session
    #   The session that should be passed both ways in challenge-response
    #   calls to the service.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/VerifySoftwareTokenResponse AWS API Documentation
    #
    class VerifySoftwareTokenResponse < Struct.new(
      :status,
      :session)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the request to verify user attributes.
    #
    # @!attribute [rw] access_token
    #   A valid access token that Amazon Cognito issued to the user whose
    #   user attributes you want to verify.
    #   @return [String]
    #
    # @!attribute [rw] attribute_name
    #   The attribute name in the request to verify user attributes.
    #   @return [String]
    #
    # @!attribute [rw] code
    #   The verification code in the request to verify user attributes.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/VerifyUserAttributeRequest AWS API Documentation
    #
    class VerifyUserAttributeRequest < Struct.new(
      :access_token,
      :attribute_name,
      :code)
      SENSITIVE = [:access_token]
      include Aws::Structure
    end

    # A container representing the response from the server from the request
    # to verify user attributes.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/VerifyUserAttributeResponse AWS API Documentation
    #
    class VerifyUserAttributeResponse < Aws::EmptyStructure; end

  end
end
