# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::CognitoIdentityProvider
  module Types

    # The settings for user message delivery in forgot-password operations.
    # Contains preference for email or SMS message delivery of password
    # reset codes, or for admin-only password reset.
    #
    # @!attribute [rw] recovery_mechanisms
    #   The list of options and priorities for user message delivery in
    #   forgot-password operations. Sets or displays user pool preferences
    #   for email or SMS message priority, whether users should fall back to
    #   a second delivery method, and whether passwords should only be reset
    #   by administrators.
    #   @return [Array<Types::RecoveryOptionType>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AccountRecoverySettingType AWS API Documentation
    #
    class AccountRecoverySettingType < Struct.new(
      :recovery_mechanisms)
      SENSITIVE = []
      include Aws::Structure
    end

    # The automated response to a risk level for adaptive authentication in
    # full-function, or `ENFORCED`, mode. You can assign an action to each
    # risk level that threat protection evaluates.
    #
    # @!attribute [rw] notify
    #   Determines whether Amazon Cognito sends a user a notification
    #   message when your user pools assesses a user's session at the
    #   associated risk level.
    #   @return [Boolean]
    #
    # @!attribute [rw] event_action
    #   The action to take for the attempted account takeover action for the
    #   associated risk level. Valid values are as follows:
    #
    #   * `BLOCK`: Block the request.
    #
    #   * `MFA_IF_CONFIGURED`: Present an MFA challenge if possible. MFA is
    #     possible if the user pool has active MFA methods that the user can
    #     set up. For example, if the user pool only supports SMS message
    #     MFA but the user doesn't have a phone number attribute, MFA setup
    #     isn't possible. If MFA setup isn't possible, allow the request.
    #
    #   * `MFA_REQUIRED`: Present an MFA challenge if possible. Block the
    #     request if a user hasn't set up MFA. To sign in with required
    #     MFA, users must have an email address or phone number attribute,
    #     or a registered TOTP factor.
    #
    #   * `NO_ACTION`: Take no action. Permit sign-in.
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

    # A list of account-takeover actions for each level of risk that Amazon
    # Cognito might assess with threat protection features.
    #
    # @!attribute [rw] low_action
    #   The action that you assign to a low-risk assessment by threat
    #   protection.
    #   @return [Types::AccountTakeoverActionType]
    #
    # @!attribute [rw] medium_action
    #   The action that you assign to a medium-risk assessment by threat
    #   protection.
    #   @return [Types::AccountTakeoverActionType]
    #
    # @!attribute [rw] high_action
    #   The action that you assign to a high-risk assessment by threat
    #   protection.
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

    # The settings for automated responses and notification templates for
    # adaptive authentication with threat protection features.
    #
    # @!attribute [rw] notify_configuration
    #   The settings for composing and sending an email message when threat
    #   protection assesses a risk level with adaptive authentication. When
    #   you choose to notify users in `AccountTakeoverRiskConfiguration`,
    #   Amazon Cognito sends an email message using the method and template
    #   that you set with this data type.
    #   @return [Types::NotifyConfigurationType]
    #
    # @!attribute [rw] actions
    #   A list of account-takeover actions for each level of risk that
    #   Amazon Cognito might assess with threat protection.
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
    #   The ID of the user pool where you want to add custom attributes.
    #   @return [String]
    #
    # @!attribute [rw] custom_attributes
    #   An array of custom attribute names and other properties. Sets the
    #   following characteristics:
    #
    #   AttributeDataType
    #
    #   : The expected data type. Can be a string, a number, a date and
    #     time, or a boolean.
    #
    #   Mutable
    #
    #   : If true, you can grant app clients write access to the attribute
    #     value. If false, the attribute value can only be set up on sign-up
    #     or administrator creation of users.
    #
    #   Name
    #
    #   : The attribute name. For an attribute like `custom:myAttribute`,
    #     enter `myAttribute` for this field.
    #
    #   Required
    #
    #   : When true, users who sign up or are created must set a value for
    #     the attribute.
    #
    #   NumberAttributeConstraints
    #
    #   : The minimum and maximum length of accepted values for a
    #     `Number`-type attribute.
    #
    #   StringAttributeConstraints
    #
    #   : The minimum and maximum length of accepted values for a
    #     `String`-type attribute.
    #
    #   DeveloperOnlyAttribute
    #
    #   : This legacy option creates an attribute with a `dev:` prefix. You
    #     can only set the value of a developer-only attribute with
    #     administrative IAM credentials.
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
    #   The ID of the user pool that contains the group that you want to add
    #   the user to.
    #   @return [String]
    #
    # @!attribute [rw] username
    #   The name of the user that you want to query or modify. The value of
    #   this parameter is typically your user's username, but it can be any
    #   of their alias attributes. If `username` isn't an alias attribute
    #   in your user pool, this value must be the `sub` of a local user or
    #   the username of a user from a third-party IdP.
    #   @return [String]
    #
    # @!attribute [rw] group_name
    #   The name of the group that you want to add your user to.
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

    # Confirm a user's registration as a user pool administrator.
    #
    # @!attribute [rw] user_pool_id
    #   The ID of the user pool where you want to confirm a user's sign-up
    #   request.
    #   @return [String]
    #
    # @!attribute [rw] username
    #   The name of the user that you want to query or modify. The value of
    #   this parameter is typically your user's username, but it can be any
    #   of their alias attributes. If `username` isn't an alias attribute
    #   in your user pool, this value must be the `sub` of a local user or
    #   the username of a user from a third-party IdP.
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
    #   For more information, see [ Using Lambda triggers][1] in the *Amazon
    #   Cognito Developer Guide*.
    #
    #   <note markdown="1"> When you use the `ClientMetadata` parameter, note that Amazon
    #   Cognito won't do the following:
    #
    #    * Store the `ClientMetadata` value. This data is available only to
    #     Lambda triggers that are assigned to a user pool to support custom
    #     workflows. If your user pool configuration doesn't include
    #     triggers, the `ClientMetadata` parameter serves no purpose.
    #
    #   * Validate the `ClientMetadata` value.
    #
    #   * Encrypt the `ClientMetadata` value. Don't send sensitive
    #     information in this parameter.
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

    # The settings for administrator creation of users in a user pool.
    # Contains settings for allowing user sign-up, customizing invitation
    # messages to new users, and the amount of time before temporary
    # passwords expire.
    #
    # @!attribute [rw] allow_admin_create_user_only
    #   The setting for allowing self-service sign-up. When `true`, only
    #   administrators can create new user profiles. When `false`, users can
    #   register themselves and create a new user profile with the `SignUp`
    #   operation.
    #   @return [Boolean]
    #
    # @!attribute [rw] unused_account_validity_days
    #   This parameter is no longer in use.
    #
    #   The password expiration limit in days for administrator-created
    #   users. When this time expires, the user can't sign in with their
    #   temporary password. To reset the account after that time limit, you
    #   must call `AdminCreateUser` again, specifying `RESEND` for the
    #   `MessageAction` parameter.
    #
    #   The default value for this parameter is 7.
    #   @return [Integer]
    #
    # @!attribute [rw] invite_message_template
    #   The template for the welcome message to new users. This template
    #   must include the `{####}` temporary password placeholder if you are
    #   creating users with passwords. If your users don't have passwords,
    #   you can omit the placeholder.
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

    # Creates a new user in the specified user pool.
    #
    # @!attribute [rw] user_pool_id
    #   The ID of the user pool where you want to create a user.
    #   @return [String]
    #
    # @!attribute [rw] username
    #   The value that you want to set as the username sign-in attribute.
    #   The following conditions apply to the username parameter.
    #
    #   * The username can't be a duplicate of another username in the same
    #     user pool.
    #
    #   * You can't change the value of a username after you create it.
    #
    #   * You can only provide a value if usernames are a valid sign-in
    #     attribute for your user pool. If your user pool only supports
    #     phone numbers or email addresses as sign-in attributes, Amazon
    #     Cognito automatically generates a username value. For more
    #     information, see [Customizing sign-in attributes][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-settings-attributes.html#user-pool-settings-aliases
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
    #   You must also provide an email address or phone number when you
    #   expect the user to do passwordless sign-in with an email or SMS OTP.
    #   These attributes must be provided when passwordless options are the
    #   only available, or when you don't submit a `TemporaryPassword`.
    #
    #   In your `AdminCreateUser` request, you can set the `email_verified`
    #   and `phone_number_verified` attributes to `true`. The following
    #   conditions apply:
    #
    #   email
    #
    #   : The email address where you want the user to receive their
    #     confirmation code and username. You must provide a value for the
    #     `email` when you want to set `email_verified` to `true`, or if you
    #     set `EMAIL` in the `DesiredDeliveryMediums` parameter.
    #
    #   phone\_number
    #
    #   : The phone number where you want the user to receive their
    #     confirmation code and username. You must provide a value for the
    #     `email` when you want to set `phone_number` to `true`, or if you
    #     set `SMS` in the `DesiredDeliveryMediums` parameter.
    #   @return [Array<Types::AttributeType>]
    #
    # @!attribute [rw] validation_data
    #   Temporary user attributes that contribute to the outcomes of your
    #   pre sign-up Lambda trigger. This set of key-value pairs are for
    #   custom validation of information that you collect from your users
    #   but don't need to retain.
    #
    #   Your Lambda function can analyze this additional data and act on it.
    #   Your function can automatically confirm and verify select users or
    #   perform external API operations like logging user attributes and
    #   validation data to Amazon CloudWatch Logs.
    #
    #   For more information about the pre sign-up Lambda trigger, see [Pre
    #   sign-up Lambda trigger][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-lambda-pre-sign-up.html
    #   @return [Array<Types::AttributeType>]
    #
    # @!attribute [rw] temporary_password
    #   The user's temporary password. This password must conform to the
    #   password policy that you specified when you created the user pool.
    #
    #   The exception to the requirement for a password is when your user
    #   pool supports passwordless sign-in with email or SMS OTPs. To create
    #   a user with no password, omit this parameter or submit a blank
    #   value. You can only create a passwordless user when passwordless
    #   sign-in is available.
    #
    #   The temporary password is valid only once. To complete the Admin
    #   Create User flow, the user must enter the temporary password in the
    #   sign-in page, along with a new password to be used in all future
    #   sign-ins.
    #
    #   If you don't specify a value, Amazon Cognito generates one for you
    #   unless you have passwordless options active for your user pool.
    #
    #   The temporary password can only be used until the user account
    #   expiration limit that you set for your user pool. To reset the
    #   account after that time limit, you must call `AdminCreateUser` again
    #   and specify `RESEND` for the `MessageAction` parameter.
    #   @return [String]
    #
    # @!attribute [rw] force_alias_creation
    #   This parameter is used only if the `phone_number_verified` or
    #   `email_verified` attribute is set to `True`. Otherwise, it is
    #   ignored.
    #
    #   If this parameter is set to `True` and the phone number or email
    #   address specified in the `UserAttributes` parameter already exists
    #   as an alias with a different user, this request migrates the alias
    #   from the previous user to the newly-created user. The previous user
    #   will no longer be able to log in using that alias.
    #
    #   If this parameter is set to `False`, the API throws an
    #   `AliasExistsException` error if the alias already exists. The
    #   default value is `False`.
    #   @return [Boolean]
    #
    # @!attribute [rw] message_action
    #   Set to `RESEND` to resend the invitation message to a user that
    #   already exists, and to reset the temporary-password duration with a
    #   new temporary password. Set to `SUPPRESS` to suppress sending the
    #   message. You can specify only one value.
    #   @return [String]
    #
    # @!attribute [rw] desired_delivery_mediums
    #   Specify `EMAIL` if email will be used to send the welcome message.
    #   Specify `SMS` if the phone number will be used. The default value is
    #   `SMS`. You can specify more than one value.
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
    #   a `ClientMetadata` attribute, which provides the data that you
    #   assigned to the ClientMetadata parameter in your AdminCreateUser
    #   request. In your function code in Lambda, you can process the
    #   `clientMetadata` value to enhance your workflow for your specific
    #   needs.
    #
    #   For more information, see [ Using Lambda triggers][1] in the *Amazon
    #   Cognito Developer Guide*.
    #
    #   <note markdown="1"> When you use the `ClientMetadata` parameter, note that Amazon
    #   Cognito won't do the following:
    #
    #    * Store the `ClientMetadata` value. This data is available only to
    #     Lambda triggers that are assigned to a user pool to support custom
    #     workflows. If your user pool configuration doesn't include
    #     triggers, the `ClientMetadata` parameter serves no purpose.
    #
    #   * Validate the `ClientMetadata` value.
    #
    #   * Encrypt the `ClientMetadata` value. Don't send sensitive
    #     information in this parameter.
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
    #   The new user's profile details.
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
    #   The ID of the user pool where you want to delete user attributes.
    #   @return [String]
    #
    # @!attribute [rw] username
    #   The name of the user that you want to query or modify. The value of
    #   this parameter is typically your user's username, but it can be any
    #   of their alias attributes. If `username` isn't an alias attribute
    #   in your user pool, this value must be the `sub` of a local user or
    #   the username of a user from a third-party IdP.
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
    #   The ID of the user pool where you want to delete the user.
    #   @return [String]
    #
    # @!attribute [rw] username
    #   The name of the user that you want to query or modify. The value of
    #   this parameter is typically your user's username, but it can be any
    #   of their alias attributes. If `username` isn't an alias attribute
    #   in your user pool, this value must be the `sub` of a local user or
    #   the username of a user from a third-party IdP.
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
    #   The ID of the user pool where you want to delete the user's linked
    #   identities.
    #   @return [String]
    #
    # @!attribute [rw] user
    #   The user profile that you want to delete a linked identity from.
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
    #   The ID of the user pool where you want to disable the user.
    #   @return [String]
    #
    # @!attribute [rw] username
    #   The name of the user that you want to query or modify. The value of
    #   this parameter is typically your user's username, but it can be any
    #   of their alias attributes. If `username` isn't an alias attribute
    #   in your user pool, this value must be the `sub` of a local user or
    #   the username of a user from a third-party IdP.
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
    #   The ID of the user pool where you want to activate sign-in for the
    #   user.
    #   @return [String]
    #
    # @!attribute [rw] username
    #   The name of the user that you want to query or modify. The value of
    #   this parameter is typically your user's username, but it can be any
    #   of their alias attributes. If `username` isn't an alias attribute
    #   in your user pool, this value must be the `sub` of a local user or
    #   the username of a user from a third-party IdP.
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
    #   The ID of the user pool where the device owner is a user.
    #   @return [String]
    #
    # @!attribute [rw] username
    #   The name of the user that you want to query or modify. The value of
    #   this parameter is typically your user's username, but it can be any
    #   of their alias attributes. If `username` isn't an alias attribute
    #   in your user pool, this value must be the `sub` of a local user or
    #   the username of a user from a third-party IdP.
    #   @return [String]
    #
    # @!attribute [rw] device_key
    #   The key ID of the device that you want to delete.
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
    #   The key of the device that you want to delete.
    #   @return [String]
    #
    # @!attribute [rw] user_pool_id
    #   The ID of the user pool where the device owner is a user.
    #   @return [String]
    #
    # @!attribute [rw] username
    #   The name of the user that you want to query or modify. The value of
    #   this parameter is typically your user's username, but it can be any
    #   of their alias attributes. If `username` isn't an alias attribute
    #   in your user pool, this value must be the `sub` of a local user or
    #   the username of a user from a third-party IdP.
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
    #   Details of the requested device. Includes device information,
    #   last-accessed and created dates, and the device key.
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
    #   The ID of the user pool where you want to get information about the
    #   user.
    #   @return [String]
    #
    # @!attribute [rw] username
    #   The name of the user that you want to query or modify. The value of
    #   this parameter is typically your user's username, but it can be any
    #   of their alias attributes. If `username` isn't an alias attribute
    #   in your user pool, this value must be the `sub` of a local user or
    #   the username of a user from a third-party IdP.
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
    #   The username of the user that you requested.
    #   @return [String]
    #
    # @!attribute [rw] user_attributes
    #   An array of name-value pairs of user attributes and their values,
    #   for example `"email": "testuser@example.com"`.
    #   @return [Array<Types::AttributeType>]
    #
    # @!attribute [rw] user_create_date
    #   The date and time when the item was created. Amazon Cognito returns
    #   this timestamp in UNIX epoch time format. Your SDK might render the
    #   output in a human-readable format like ISO 8601 or a Java `Date`
    #   object.
    #   @return [Time]
    #
    # @!attribute [rw] user_last_modified_date
    #   The date and time when the item was modified. Amazon Cognito returns
    #   this timestamp in UNIX epoch time format. Your SDK might render the
    #   output in a human-readable format like ISO 8601 or a Java `Date`
    #   object.
    #   @return [Time]
    #
    # @!attribute [rw] enabled
    #   Indicates whether the user is activated for sign-in.
    #   @return [Boolean]
    #
    # @!attribute [rw] user_status
    #   The user's status. Can be one of the following:
    #
    #   * UNCONFIRMED - User has been created but not confirmed.
    #
    #   * CONFIRMED - User has been confirmed.
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
    #
    #   * EXTERNAL\_PROVIDER - The user signed in with a third-party
    #     identity provider.
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
    #   The user's preferred MFA. Users can prefer SMS message, email
    #   message, or TOTP MFA.
    #   @return [String]
    #
    # @!attribute [rw] user_mfa_setting_list
    #   The MFA options that are activated for the user. The possible values
    #   in this list are `SMS_MFA`, `EMAIL_OTP`, and `SOFTWARE_TOKEN_MFA`.
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
    #   The ID of the user pool where the user wants to sign in.
    #   @return [String]
    #
    # @!attribute [rw] client_id
    #   The ID of the app client where the user wants to sign in.
    #   @return [String]
    #
    # @!attribute [rw] auth_flow
    #   The authentication flow that you want to initiate. Each `AuthFlow`
    #   has linked `AuthParameters` that you must submit. The following are
    #   some example flows.
    #
    #   USER\_AUTH
    #
    #   : The entry point for [choice-based authentication][1] with
    #     passwords, one-time passwords, and WebAuthn authenticators.
    #     Request a preferred authentication type or review available
    #     authentication types. From the offered authentication types,
    #     select one in a challenge response and then authenticate with that
    #     method in an additional challenge response. To activate this
    #     setting, your user pool must be in the [ Essentials tier][2] or
    #     higher.
    #
    #   USER\_SRP\_AUTH
    #
    #   : Username-password authentication with the Secure Remote Password
    #     (SRP) protocol. For more information, see [Use SRP password
    #     verification in custom authentication flow][3].
    #
    #   REFRESH\_TOKEN\_AUTH and REFRESH\_TOKEN
    #
    #   : Receive new ID and access tokens when you pass a `REFRESH_TOKEN`
    #     parameter with a valid refresh token as the value. For more
    #     information, see [Using the refresh token][4].
    #
    #   CUSTOM\_AUTH
    #
    #   : Custom authentication with Lambda triggers. For more information,
    #     see [Custom authentication challenge Lambda triggers][5].
    #
    #   ADMIN\_USER\_PASSWORD\_AUTH
    #
    #   : Server-side username-password authentication with the password
    #     sent directly in the request. For more information about
    #     client-side and server-side authentication, see [SDK authorization
    #     models][6].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/authentication-flows-selection-sdk.html#authentication-flows-selection-choice
    #   [2]: https://docs.aws.amazon.com/cognito/latest/developerguide/feature-plans-features-essentials.html
    #   [3]: https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-authentication-flow.html#Using-SRP-password-verification-in-custom-authentication-flow
    #   [4]: https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-using-the-refresh-token.html
    #   [5]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-lambda-challenge.html
    #   [6]: https://docs.aws.amazon.com/cognito/latest/developerguide/authentication-flows-public-server-side.html
    #   @return [String]
    #
    # @!attribute [rw] auth_parameters
    #   The authentication parameters. These are inputs corresponding to the
    #   `AuthFlow` that you're invoking. The required values depend on the
    #   value of `AuthFlow` for example:
    #
    #   * For `USER_AUTH`: `USERNAME` (required), `PREFERRED_CHALLENGE`. If
    #     you don't provide a value for `PREFERRED_CHALLENGE`, Amazon
    #     Cognito responds with the `AvailableChallenges` parameter that
    #     specifies the available sign-in methods.
    #
    #   * For `USER_SRP_AUTH`: `USERNAME` (required), `SRP_A` (required),
    #     `SECRET_HASH` (required if the app client is configured with a
    #     client secret), `DEVICE_KEY`.
    #
    #   * For `ADMIN_USER_PASSWORD_AUTH`: `USERNAME` (required), `PASSWORD`
    #     (required), `SECRET_HASH` (required if the app client is
    #     configured with a client secret), `DEVICE_KEY`.
    #
    #   * For `REFRESH_TOKEN_AUTH/REFRESH_TOKEN`: `REFRESH_TOKEN`
    #     (required), `SECRET_HASH` (required if the app client is
    #     configured with a client secret), `DEVICE_KEY`.
    #
    #   * For `CUSTOM_AUTH`: `USERNAME` (required), `SECRET_HASH` (if app
    #     client is configured with client secret), `DEVICE_KEY`. To start
    #     the authentication flow with password verification, include
    #     `ChallengeName: SRP_A` and `SRP_A: (The SRP_A Value)`.
    #
    #   For more information about `SECRET_HASH`, see [Computing secret hash
    #   values][1]. For information about `DEVICE_KEY`, see [Working with
    #   user devices in your user pool][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/signing-up-users-in-your-app.html#cognito-user-pools-computing-secret-hash
    #   [2]: https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-device-tracking.html
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
    #   * Custom email sender
    #
    #   * Custom SMS sender
    #
    #   For more information, see [ Using Lambda triggers][1] in the *Amazon
    #   Cognito Developer Guide*.
    #
    #   <note markdown="1"> When you use the `ClientMetadata` parameter, note that Amazon
    #   Cognito won't do the following:
    #
    #    * Store the `ClientMetadata` value. This data is available only to
    #     Lambda triggers that are assigned to a user pool to support custom
    #     workflows. If your user pool configuration doesn't include
    #     triggers, the `ClientMetadata` parameter serves no purpose.
    #
    #   * Validate the `ClientMetadata` value.
    #
    #   * Encrypt the `ClientMetadata` value. Don't send sensitive
    #     information in this parameter.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-working-with-aws-lambda-triggers.html
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] analytics_metadata
    #   Information that supports analytics outcomes with Amazon Pinpoint,
    #   including the user's endpoint ID. The endpoint ID is a destination
    #   for Amazon Pinpoint push notifications, for example a device
    #   identifier, email address, or phone number.
    #   @return [Types::AnalyticsMetadataType]
    #
    # @!attribute [rw] context_data
    #   Contextual data about your user session like the device fingerprint,
    #   IP address, or location. Amazon Cognito threat protection evaluates
    #   the risk of an authentication event based on the context that your
    #   app generates and passes to Amazon Cognito when it makes API
    #   requests.
    #
    #   For more information, see [Collecting data for threat protection in
    #   applications][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-settings-viewing-threat-protection-app.html
    #   @return [Types::ContextDataType]
    #
    # @!attribute [rw] session
    #   The optional session ID from a `ConfirmSignUp` API request. You can
    #   sign in a user directly from the sign-up process with an `AuthFlow`
    #   of `USER_AUTH` and `AuthParameters` of `EMAIL_OTP` or `SMS_OTP`,
    #   depending on how your user pool sent the confirmation-code message.
    #   @return [String]
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
      :context_data,
      :session)
      SENSITIVE = [:client_id, :auth_parameters, :session]
      include Aws::Structure
    end

    # Initiates the authentication response, as an administrator.
    #
    # @!attribute [rw] challenge_name
    #   The name of the challenge that you're responding to with this call.
    #   This is returned in the `AdminInitiateAuth` response if you must
    #   pass another challenge.
    #
    #   Possible challenges include the following:
    #
    #   <note markdown="1"> All of the following challenges require `USERNAME` and, when the app
    #   client has a client secret, `SECRET_HASH` in the parameters.
    #
    #    </note>
    #
    #   * `WEB_AUTHN`: Respond to the challenge with the results of a
    #     successful authentication with a WebAuthn authenticator, or
    #     passkey. Examples of WebAuthn authenticators include biometric
    #     devices and security keys.
    #
    #   * `PASSWORD`: Respond with `USER_PASSWORD_AUTH` parameters:
    #     `USERNAME` (required), `PASSWORD` (required), `SECRET_HASH`
    #     (required if the app client is configured with a client secret),
    #     `DEVICE_KEY`.
    #
    #   * `PASSWORD_SRP`: Respond with `USER_SRP_AUTH` parameters:
    #     `USERNAME` (required), `SRP_A` (required), `SECRET_HASH` (required
    #     if the app client is configured with a client secret),
    #     `DEVICE_KEY`.
    #
    #   * `SELECT_CHALLENGE`: Respond to the challenge with `USERNAME` and
    #     an `ANSWER` that matches one of the challenge types in the
    #     `AvailableChallenges` response parameter.
    #
    #   * `SMS_MFA`: Respond with an `SMS_MFA_CODE` that your user pool
    #     delivered in an SMS message.
    #
    #   * `EMAIL_OTP`: Respond with an `EMAIL_OTP_CODE` that your user pool
    #     delivered in an email message.
    #
    #   * `PASSWORD_VERIFIER`: Respond with `PASSWORD_CLAIM_SIGNATURE`,
    #     `PASSWORD_CLAIM_SECRET_BLOCK`, and `TIMESTAMP` after client-side
    #     SRP calculations.
    #
    #   * `CUSTOM_CHALLENGE`: This is returned if your custom authentication
    #     flow determines that the user should pass another challenge before
    #     tokens are issued. The parameters of the challenge are determined
    #     by your Lambda function.
    #
    #   * `DEVICE_SRP_AUTH`: Respond with the initial parameters of device
    #     SRP authentication. For more information, see [Signing in with a
    #     device][1].
    #
    #   * `DEVICE_PASSWORD_VERIFIER`: Respond with
    #     `PASSWORD_CLAIM_SIGNATURE`, `PASSWORD_CLAIM_SECRET_BLOCK`, and
    #     `TIMESTAMP` after client-side SRP calculations. For more
    #     information, see [Signing in with a device][1].
    #
    #   * `NEW_PASSWORD_REQUIRED`: For users who are required to change
    #     their passwords after successful first login. Respond to this
    #     challenge with `NEW_PASSWORD` and any required attributes that
    #     Amazon Cognito returned in the `requiredAttributes` parameter. You
    #     can also set values for attributes that aren't required by your
    #     user pool and that your app client can write.
    #
    #     Amazon Cognito only returns this challenge for users who have
    #     temporary passwords. When you create passwordless users, you must
    #     provide values for all required attributes.
    #
    #     <note markdown="1"> In a `NEW_PASSWORD_REQUIRED` challenge response, you can't modify
    #     a required attribute that already has a value. In
    #     `AdminRespondToAuthChallenge` or `RespondToAuthChallenge`, set a
    #     value for any keys that Amazon Cognito returned in the
    #     `requiredAttributes` parameter, then use the
    #     `AdminUpdateUserAttributes` or `UpdateUserAttributes` API
    #     operation to modify the value of any additional attributes.
    #
    #      </note>
    #
    #   * `MFA_SETUP`: For users who are required to setup an MFA factor
    #     before they can sign in. The MFA types activated for the user pool
    #     will be listed in the challenge parameters `MFAS_CAN_SETUP` value.
    #
    #     To set up time-based one-time password (TOTP) MFA, use the session
    #     returned in this challenge from `InitiateAuth` or
    #     `AdminInitiateAuth` as an input to `AssociateSoftwareToken`. Then,
    #     use the session returned by `VerifySoftwareToken` as an input to
    #     `RespondToAuthChallenge` or `AdminRespondToAuthChallenge` with
    #     challenge name `MFA_SETUP` to complete sign-in.
    #
    #     To set up SMS or email MFA, collect a `phone_number` or `email`
    #     attribute for the user. Then restart the authentication flow with
    #     an `InitiateAuth` or `AdminInitiateAuth` request.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-device-tracking.html#user-pools-remembered-devices-signing-in-with-a-device
    #   @return [String]
    #
    # @!attribute [rw] session
    #   The session that must be passed to challenge-response requests. If
    #   an `AdminInitiateAuth` or `AdminRespondToAuthChallenge` API request
    #   results in another authentication challenge, Amazon Cognito returns
    #   a session ID and the parameters of the next challenge. Pass this
    #   session ID in the `Session` parameter of
    #   `AdminRespondToAuthChallenge`.
    #   @return [String]
    #
    # @!attribute [rw] challenge_parameters
    #   The parameters of an authentication challenge. Amazon Cognito
    #   returns challenge parameters as a guide to the responses your user
    #   or application must provide for the returned `ChallengeName`.
    #   Calculate responses to the challenge parameters and pass them in the
    #   `ChallengeParameters` of `AdminRespondToAuthChallenge`.
    #
    #   All challenges require `USERNAME` and, when the app client has a
    #   client secret, `SECRET_HASH`.
    #
    #   In SRP challenges, Amazon Cognito returns the `username` attribute
    #   in `USER_ID_FOR_SRP` instead of any email address, preferred
    #   username, or phone number alias that you might have specified in
    #   your `AdminInitiateAuth` request. You must use the username and not
    #   an alias in the `ChallengeResponses` of your challenge response.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] authentication_result
    #   The outcome of successful authentication. This is only returned if
    #   the user pool has no additional challenges to return. If Amazon
    #   Cognito returns another challenge, the response includes
    #   `ChallengeName`, `ChallengeParameters`, and `Session` so that your
    #   user can answer the challenge.
    #   @return [Types::AuthenticationResultType]
    #
    # @!attribute [rw] available_challenges
    #   This response parameter lists the available authentication
    #   challenges that users can select from in [choice-based
    #   authentication][1]. For example, they might be able to choose
    #   between passkey authentication, a one-time password from an SMS
    #   message, and a traditional password.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/authentication-flows-selection-sdk.html#authentication-flows-selection-choice
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AdminInitiateAuthResponse AWS API Documentation
    #
    class AdminInitiateAuthResponse < Struct.new(
      :challenge_name,
      :session,
      :challenge_parameters,
      :authentication_result,
      :available_challenges)
      SENSITIVE = [:session]
      include Aws::Structure
    end

    # @!attribute [rw] user_pool_id
    #   The ID of the user pool where you want to link a federated identity.
    #   @return [String]
    #
    # @!attribute [rw] destination_user
    #   The existing user in the user pool that you want to assign to the
    #   external IdP user account. This user can be a local (Username +
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
    #   For OIDC, the `ProviderAttributeName` can be any mapped value from a
    #   claim in the ID token, or that your app retrieves from the
    #   `userInfo` endpoint. For SAML, the `ProviderAttributeName` can be
    #   any mapped value from a claim in the SAML assertion.
    #
    #   The following additional considerations apply to `SourceUser` for
    #   OIDC and SAML providers.
    #
    #   * You must map the claim to a user pool attribute in your IdP
    #     configuration, and set the user pool attribute name as the value
    #     of `ProviderAttributeName` in your `AdminLinkProviderForUser`
    #     request. For example, `email`.
    #
    #   * When you set `ProviderAttributeName` to `Cognito_Subject`, Amazon
    #     Cognito will automatically parse the default unique identifier
    #     found in the subject from the IdP token.
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
    #   The ID of the user pool where the device owner is a user.
    #   @return [String]
    #
    # @!attribute [rw] username
    #   The name of the user that you want to query or modify. The value of
    #   this parameter is typically your user's username, but it can be any
    #   of their alias attributes. If `username` isn't an alias attribute
    #   in your user pool, this value must be the `sub` of a local user or
    #   the username of a user from a third-party IdP.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The maximum number of devices that you want Amazon Cognito to return
    #   in the response.
    #   @return [Integer]
    #
    # @!attribute [rw] pagination_token
    #   This API operation returns a limited number of results. The
    #   pagination token is an identifier that you can present in an
    #   additional API request with the same parameters. When you include
    #   the pagination token, Amazon Cognito returns the next set of items
    #   after the current list. Subsequent requests return a new pagination
    #   token. By use of this token, you can paginate through the full list
    #   of items.
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
    #   An array of devices and their information. Each entry that's
    #   returned includes device information, last-accessed and created
    #   dates, and the device key.
    #   @return [Array<Types::DeviceType>]
    #
    # @!attribute [rw] pagination_token
    #   The identifier that Amazon Cognito returned with the previous
    #   request to this operation. When you include a pagination token in
    #   your request, Amazon Cognito returns the next set of items in the
    #   list. By use of this token, you can paginate through the full list
    #   of items.
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
    #   The name of the user that you want to query or modify. The value of
    #   this parameter is typically your user's username, but it can be any
    #   of their alias attributes. If `username` isn't an alias attribute
    #   in your user pool, this value must be the `sub` of a local user or
    #   the username of a user from a third-party IdP.
    #   @return [String]
    #
    # @!attribute [rw] user_pool_id
    #   The ID of the user pool where you want to view a user's groups.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The maximum number of groups that you want Amazon Cognito to return
    #   in the response.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   This API operation returns a limited number of results. The
    #   pagination token is an identifier that you can present in an
    #   additional API request with the same parameters. When you include
    #   the pagination token, Amazon Cognito returns the next set of items
    #   after the current list. Subsequent requests return a new pagination
    #   token. By use of this token, you can paginate through the full list
    #   of items.
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
    #   An array of groups and information about them.
    #   @return [Array<Types::GroupType>]
    #
    # @!attribute [rw] next_token
    #   The identifier that Amazon Cognito returned with the previous
    #   request to this operation. When you include a pagination token in
    #   your request, Amazon Cognito returns the next set of items in the
    #   list. By use of this token, you can paginate through the full list
    #   of items.
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
    #   The Id of the user pool that contains the user profile with the
    #   logged events.
    #   @return [String]
    #
    # @!attribute [rw] username
    #   The name of the user that you want to query or modify. The value of
    #   this parameter is typically your user's username, but it can be any
    #   of their alias attributes. If `username` isn't an alias attribute
    #   in your user pool, this value must be the `sub` of a local user or
    #   the username of a user from a third-party IdP.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of authentication events to return. Returns 60
    #   events if you set `MaxResults` to 0, or if you don't include a
    #   `MaxResults` parameter.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   This API operation returns a limited number of results. The
    #   pagination token is an identifier that you can present in an
    #   additional API request with the same parameters. When you include
    #   the pagination token, Amazon Cognito returns the next set of items
    #   after the current list. Subsequent requests return a new pagination
    #   token. By use of this token, you can paginate through the full list
    #   of items.
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
    #   The identifier that Amazon Cognito returned with the previous
    #   request to this operation. When you include a pagination token in
    #   your request, Amazon Cognito returns the next set of items in the
    #   list. By use of this token, you can paginate through the full list
    #   of items.
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
    #   The ID of the user pool that contains the group and the user that
    #   you want to remove.
    #   @return [String]
    #
    # @!attribute [rw] username
    #   The name of the user that you want to query or modify. The value of
    #   this parameter is typically your user's username, but it can be any
    #   of their alias attributes. If `username` isn't an alias attribute
    #   in your user pool, this value must be the `sub` of a local user or
    #   the username of a user from a third-party IdP.
    #   @return [String]
    #
    # @!attribute [rw] group_name
    #   The name of the group that you want to remove the user from, for
    #   example `MyTestGroup`.
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
    #   The ID of the user pool where you want to reset the user's
    #   password.
    #   @return [String]
    #
    # @!attribute [rw] username
    #   The name of the user that you want to query or modify. The value of
    #   this parameter is typically your user's username, but it can be any
    #   of their alias attributes. If `username` isn't an alias attribute
    #   in your user pool, this value must be the `sub` of a local user or
    #   the username of a user from a third-party IdP.
    #   @return [String]
    #
    # @!attribute [rw] client_metadata
    #   A map of custom key-value pairs that you can provide as input for
    #   any custom workflows that this action triggers.
    #
    #   You create custom workflows by assigning Lambda functions to user
    #   pool triggers. The `AdminResetUserPassword` API operation invokes
    #   the function that is assigned to the *custom message* trigger. When
    #   Amazon Cognito invokes this function, it passes a JSON payload,
    #   which the function receives as input. This payload contains a
    #   `clientMetadata` attribute, which provides the data that you
    #   assigned to the ClientMetadata parameter in your
    #   AdminResetUserPassword request. In your function code in Lambda, you
    #   can process the `clientMetadata` value to enhance your workflow for
    #   your specific needs.
    #
    #   For more information, see [ Using Lambda triggers][1] in the *Amazon
    #   Cognito Developer Guide*.
    #
    #   <note markdown="1"> When you use the `ClientMetadata` parameter, note that Amazon
    #   Cognito won't do the following:
    #
    #    * Store the `ClientMetadata` value. This data is available only to
    #     Lambda triggers that are assigned to a user pool to support custom
    #     workflows. If your user pool configuration doesn't include
    #     triggers, the `ClientMetadata` parameter serves no purpose.
    #
    #   * Validate the `ClientMetadata` value.
    #
    #   * Encrypt the `ClientMetadata` value. Don't send sensitive
    #     information in this parameter.
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
    #   The ID of the user pool where you want to respond to an
    #   authentication challenge.
    #   @return [String]
    #
    # @!attribute [rw] client_id
    #   The ID of the app client where you initiated sign-in.
    #   @return [String]
    #
    # @!attribute [rw] challenge_name
    #   The name of the challenge that you are responding to.
    #
    #   Possible challenges include the following:
    #
    #   <note markdown="1"> All of the following challenges require `USERNAME` and, when the app
    #   client has a client secret, `SECRET_HASH` in the parameters.
    #
    #    </note>
    #
    #   * `WEB_AUTHN`: Respond to the challenge with the results of a
    #     successful authentication with a WebAuthn authenticator, or
    #     passkey. Examples of WebAuthn authenticators include biometric
    #     devices and security keys.
    #
    #   * `PASSWORD`: Respond with `USER_PASSWORD_AUTH` parameters:
    #     `USERNAME` (required), `PASSWORD` (required), `SECRET_HASH`
    #     (required if the app client is configured with a client secret),
    #     `DEVICE_KEY`.
    #
    #   * `PASSWORD_SRP`: Respond with `USER_SRP_AUTH` parameters:
    #     `USERNAME` (required), `SRP_A` (required), `SECRET_HASH` (required
    #     if the app client is configured with a client secret),
    #     `DEVICE_KEY`.
    #
    #   * `SELECT_CHALLENGE`: Respond to the challenge with `USERNAME` and
    #     an `ANSWER` that matches one of the challenge types in the
    #     `AvailableChallenges` response parameter.
    #
    #   * `SMS_MFA`: Respond with an `SMS_MFA_CODE` that your user pool
    #     delivered in an SMS message.
    #
    #   * `EMAIL_OTP`: Respond with an `EMAIL_OTP_CODE` that your user pool
    #     delivered in an email message.
    #
    #   * `PASSWORD_VERIFIER`: Respond with `PASSWORD_CLAIM_SIGNATURE`,
    #     `PASSWORD_CLAIM_SECRET_BLOCK`, and `TIMESTAMP` after client-side
    #     SRP calculations.
    #
    #   * `CUSTOM_CHALLENGE`: This is returned if your custom authentication
    #     flow determines that the user should pass another challenge before
    #     tokens are issued. The parameters of the challenge are determined
    #     by your Lambda function.
    #
    #   * `DEVICE_SRP_AUTH`: Respond with the initial parameters of device
    #     SRP authentication. For more information, see [Signing in with a
    #     device][1].
    #
    #   * `DEVICE_PASSWORD_VERIFIER`: Respond with
    #     `PASSWORD_CLAIM_SIGNATURE`, `PASSWORD_CLAIM_SECRET_BLOCK`, and
    #     `TIMESTAMP` after client-side SRP calculations. For more
    #     information, see [Signing in with a device][1].
    #
    #   * `NEW_PASSWORD_REQUIRED`: For users who are required to change
    #     their passwords after successful first login. Respond to this
    #     challenge with `NEW_PASSWORD` and any required attributes that
    #     Amazon Cognito returned in the `requiredAttributes` parameter. You
    #     can also set values for attributes that aren't required by your
    #     user pool and that your app client can write.
    #
    #     Amazon Cognito only returns this challenge for users who have
    #     temporary passwords. When you create passwordless users, you must
    #     provide values for all required attributes.
    #
    #     <note markdown="1"> In a `NEW_PASSWORD_REQUIRED` challenge response, you can't modify
    #     a required attribute that already has a value. In
    #     `AdminRespondToAuthChallenge` or `RespondToAuthChallenge`, set a
    #     value for any keys that Amazon Cognito returned in the
    #     `requiredAttributes` parameter, then use the
    #     `AdminUpdateUserAttributes` or `UpdateUserAttributes` API
    #     operation to modify the value of any additional attributes.
    #
    #      </note>
    #
    #   * `MFA_SETUP`: For users who are required to setup an MFA factor
    #     before they can sign in. The MFA types activated for the user pool
    #     will be listed in the challenge parameters `MFAS_CAN_SETUP` value.
    #
    #     To set up time-based one-time password (TOTP) MFA, use the session
    #     returned in this challenge from `InitiateAuth` or
    #     `AdminInitiateAuth` as an input to `AssociateSoftwareToken`. Then,
    #     use the session returned by `VerifySoftwareToken` as an input to
    #     `RespondToAuthChallenge` or `AdminRespondToAuthChallenge` with
    #     challenge name `MFA_SETUP` to complete sign-in.
    #
    #     To set up SMS or email MFA, collect a `phone_number` or `email`
    #     attribute for the user. Then restart the authentication flow with
    #     an `InitiateAuth` or `AdminInitiateAuth` request.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-device-tracking.html#user-pools-remembered-devices-signing-in-with-a-device
    #   @return [String]
    #
    # @!attribute [rw] challenge_responses
    #   The responses to the challenge that you received in the previous
    #   request. Each challenge has its own required response parameters.
    #   The following examples are partial JSON request bodies that
    #   highlight challenge-response parameters.
    #
    #   You must provide a SECRET\_HASH parameter in all challenge responses
    #   to an app client that has a client secret. Include a `DEVICE_KEY`
    #   for device authentication.
    #
    #   SELECT\_CHALLENGE
    #
    #   : `"ChallengeName": "SELECT_CHALLENGE", "ChallengeResponses": {
    #     "USERNAME": "[username]", "ANSWER": "[Challenge name]"}`
    #
    #     Available challenges are `PASSWORD`, `PASSWORD_SRP`, `EMAIL_OTP`,
    #     `SMS_OTP`, and `WEB_AUTHN`.
    #
    #     Complete authentication in the `SELECT_CHALLENGE` response for
    #     `PASSWORD`, `PASSWORD_SRP`, and `WEB_AUTHN`:
    #
    #     * `"ChallengeName": "SELECT_CHALLENGE", "ChallengeResponses": {
    #       "ANSWER": "WEB_AUTHN", "USERNAME": "[username]", "CREDENTIAL":
    #       "[AuthenticationResponseJSON]"}`
    #
    #       See [ AuthenticationResponseJSON][1].
    #
    #     * `"ChallengeName": "SELECT_CHALLENGE", "ChallengeResponses": {
    #       "ANSWER": "PASSWORD", "USERNAME": "[username]", "PASSWORD":
    #       "[password]"}`
    #
    #     * `"ChallengeName": "SELECT_CHALLENGE", "ChallengeResponses": {
    #       "ANSWER": "PASSWORD_SRP", "USERNAME": "[username]", "SRP_A":
    #       "[SRP_A]"}`
    #
    #     For `SMS_OTP` and `EMAIL_OTP`, respond with the username and
    #     answer. Your user pool will send a code for the user to submit in
    #     the next challenge response.
    #
    #     * `"ChallengeName": "SELECT_CHALLENGE", "ChallengeResponses": {
    #       "ANSWER": "SMS_OTP", "USERNAME": "[username]"}`
    #
    #     * `"ChallengeName": "SELECT_CHALLENGE", "ChallengeResponses": {
    #       "ANSWER": "EMAIL_OTP", "USERNAME": "[username]"}`
    #
    #   SMS\_OTP
    #
    #   : `"ChallengeName": "SMS_OTP", "ChallengeResponses":
    #     {"SMS_OTP_CODE": "[code]", "USERNAME": "[username]"}`
    #
    #   EMAIL\_OTP
    #
    #   : `"ChallengeName": "EMAIL_OTP", "ChallengeResponses":
    #     {"EMAIL_OTP_CODE": "[code]", "USERNAME": "[username]"}`
    #
    #   SMS\_MFA
    #
    #   : `"ChallengeName": "SMS_MFA", "ChallengeResponses":
    #     {"SMS_MFA_CODE": "[code]", "USERNAME": "[username]"}`
    #
    #   PASSWORD\_VERIFIER
    #
    #   : This challenge response is part of the SRP flow. Amazon Cognito
    #     requires that your application respond to this challenge within a
    #     few seconds. When the response time exceeds this period, your user
    #     pool returns a `NotAuthorizedException` error.
    #
    #     `"ChallengeName": "PASSWORD_VERIFIER", "ChallengeResponses":
    #     {"PASSWORD_CLAIM_SIGNATURE": "[claim_signature]",
    #     "PASSWORD_CLAIM_SECRET_BLOCK": "[secret_block]", "TIMESTAMP":
    #     [timestamp], "USERNAME": "[username]"}`
    #
    #     Add `"DEVICE_KEY"` when you sign in with a remembered device.
    #
    #   CUSTOM\_CHALLENGE
    #
    #   : `"ChallengeName": "CUSTOM_CHALLENGE", "ChallengeResponses":
    #     {"USERNAME": "[username]", "ANSWER": "[challenge_answer]"}`
    #
    #     Add `"DEVICE_KEY"` when you sign in with a remembered device.
    #
    #   NEW\_PASSWORD\_REQUIRED
    #
    #   : `"ChallengeName": "NEW_PASSWORD_REQUIRED", "ChallengeResponses":
    #     {"NEW_PASSWORD": "[new_password]", "USERNAME": "[username]"}`
    #
    #     To set any required attributes that `InitiateAuth` returned in an
    #     `requiredAttributes` parameter, add
    #     `"userAttributes.[attribute_name]": "[attribute_value]"`. This
    #     parameter can also set values for writable attributes that aren't
    #     required by your user pool.
    #
    #     <note markdown="1"> In a `NEW_PASSWORD_REQUIRED` challenge response, you can't modify
    #     a required attribute that already has a value. In
    #     `AdminRespondToAuthChallenge` or `RespondToAuthChallenge`, set a
    #     value for any keys that Amazon Cognito returned in the
    #     `requiredAttributes` parameter, then use the
    #     `AdminUpdateUserAttributes` or `UpdateUserAttributes` API
    #     operation to modify the value of any additional attributes.
    #
    #      </note>
    #
    #   SOFTWARE\_TOKEN\_MFA
    #
    #   : `"ChallengeName": "SOFTWARE_TOKEN_MFA", "ChallengeResponses":
    #     {"USERNAME": "[username]", "SOFTWARE_TOKEN_MFA_CODE":
    #     [authenticator_code]}`
    #
    #   DEVICE\_SRP\_AUTH
    #
    #   : `"ChallengeName": "DEVICE_SRP_AUTH", "ChallengeResponses":
    #     {"USERNAME": "[username]", "DEVICE_KEY": "[device_key]", "SRP_A":
    #     "[srp_a]"}`
    #
    #   DEVICE\_PASSWORD\_VERIFIER
    #
    #   : `"ChallengeName": "DEVICE_PASSWORD_VERIFIER",
    #     "ChallengeResponses": {"DEVICE_KEY": "[device_key]",
    #     "PASSWORD_CLAIM_SIGNATURE": "[claim_signature]",
    #     "PASSWORD_CLAIM_SECRET_BLOCK": "[secret_block]", "TIMESTAMP":
    #     [timestamp], "USERNAME": "[username]"}`
    #
    #   MFA\_SETUP
    #
    #   : `"ChallengeName": "MFA_SETUP", "ChallengeResponses": {"USERNAME":
    #     "[username]"}, "SESSION": "[Session ID from VerifySoftwareToken]"`
    #
    #   SELECT\_MFA\_TYPE
    #
    #   : `"ChallengeName": "SELECT_MFA_TYPE", "ChallengeResponses":
    #     {"USERNAME": "[username]", "ANSWER": "[SMS_MFA or
    #     SOFTWARE_TOKEN_MFA]"}`
    #
    #   For more information about `SECRET_HASH`, see [Computing secret hash
    #   values][2]. For information about `DEVICE_KEY`, see [Working with
    #   user devices in your user pool][3].
    #
    #
    #
    #   [1]: https://www.w3.org/TR/WebAuthn-3/#dictdef-authenticationresponsejson
    #   [2]: https://docs.aws.amazon.com/cognito/latest/developerguide/signing-up-users-in-your-app.html#cognito-user-pools-computing-secret-hash
    #   [3]: https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-device-tracking.html
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] session
    #   The session identifier that maintains the state of authentication
    #   requests and challenge responses. If an `AdminInitiateAuth` or
    #   `AdminRespondToAuthChallenge` API request results in a determination
    #   that your application must pass another challenge, Amazon Cognito
    #   returns a session with other challenge parameters. Send this session
    #   identifier, unmodified, to the next `AdminRespondToAuthChallenge`
    #   request.
    #   @return [String]
    #
    # @!attribute [rw] analytics_metadata
    #   Information that supports analytics outcomes with Amazon Pinpoint,
    #   including the user's endpoint ID. The endpoint ID is a destination
    #   for Amazon Pinpoint push notifications, for example a device
    #   identifier, email address, or phone number.
    #   @return [Types::AnalyticsMetadataType]
    #
    # @!attribute [rw] context_data
    #   Contextual data about your user session like the device fingerprint,
    #   IP address, or location. Amazon Cognito threat protection evaluates
    #   the risk of an authentication event based on the context that your
    #   app generates and passes to Amazon Cognito when it makes API
    #   requests.
    #
    #   For more information, see [Collecting data for threat protection in
    #   applications][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-settings-viewing-threat-protection-app.html
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
    #   * Pre sign-up
    #
    #   * custom message
    #
    #   * Post authentication
    #
    #   * User migration
    #
    #   * Pre token generation
    #
    #   * Define auth challenge
    #
    #   * Create auth challenge
    #
    #   * Verify auth challenge response
    #
    #   When Amazon Cognito invokes any of these functions, it passes a JSON
    #   payload, which the function receives as input. This payload contains
    #   a `clientMetadata` attribute that provides the data that you
    #   assigned to the ClientMetadata parameter in your
    #   AdminRespondToAuthChallenge request. In your function code in
    #   Lambda, you can process the `clientMetadata` value to enhance your
    #   workflow for your specific needs.
    #
    #   For more information, see [ Using Lambda triggers][1] in the *Amazon
    #   Cognito Developer Guide*.
    #
    #   <note markdown="1"> When you use the `ClientMetadata` parameter, note that Amazon
    #   Cognito won't do the following:
    #
    #    * Store the `ClientMetadata` value. This data is available only to
    #     Lambda triggers that are assigned to a user pool to support custom
    #     workflows. If your user pool configuration doesn't include
    #     triggers, the `ClientMetadata` parameter serves no purpose.
    #
    #   * Validate the `ClientMetadata` value.
    #
    #   * Encrypt the `ClientMetadata` value. Don't send sensitive
    #     information in this parameter.
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
      SENSITIVE = [:client_id, :challenge_responses, :session]
      include Aws::Structure
    end

    # Responds to the authentication challenge, as an administrator.
    #
    # @!attribute [rw] challenge_name
    #   The name of the next challenge that you must respond to.
    #
    #   Possible challenges include the following:
    #
    #   <note markdown="1"> All of the following challenges require `USERNAME` and, when the app
    #   client has a client secret, `SECRET_HASH` in the parameters.
    #
    #    </note>
    #
    #   * `WEB_AUTHN`: Respond to the challenge with the results of a
    #     successful authentication with a WebAuthn authenticator, or
    #     passkey. Examples of WebAuthn authenticators include biometric
    #     devices and security keys.
    #
    #   * `PASSWORD`: Respond with `USER_PASSWORD_AUTH` parameters:
    #     `USERNAME` (required), `PASSWORD` (required), `SECRET_HASH`
    #     (required if the app client is configured with a client secret),
    #     `DEVICE_KEY`.
    #
    #   * `PASSWORD_SRP`: Respond with `USER_SRP_AUTH` parameters:
    #     `USERNAME` (required), `SRP_A` (required), `SECRET_HASH` (required
    #     if the app client is configured with a client secret),
    #     `DEVICE_KEY`.
    #
    #   * `SELECT_CHALLENGE`: Respond to the challenge with `USERNAME` and
    #     an `ANSWER` that matches one of the challenge types in the
    #     `AvailableChallenges` response parameter.
    #
    #   * `SMS_MFA`: Respond with an `SMS_MFA_CODE` that your user pool
    #     delivered in an SMS message.
    #
    #   * `EMAIL_OTP`: Respond with an `EMAIL_OTP_CODE` that your user pool
    #     delivered in an email message.
    #
    #   * `PASSWORD_VERIFIER`: Respond with `PASSWORD_CLAIM_SIGNATURE`,
    #     `PASSWORD_CLAIM_SECRET_BLOCK`, and `TIMESTAMP` after client-side
    #     SRP calculations.
    #
    #   * `CUSTOM_CHALLENGE`: This is returned if your custom authentication
    #     flow determines that the user should pass another challenge before
    #     tokens are issued. The parameters of the challenge are determined
    #     by your Lambda function.
    #
    #   * `DEVICE_SRP_AUTH`: Respond with the initial parameters of device
    #     SRP authentication. For more information, see [Signing in with a
    #     device][1].
    #
    #   * `DEVICE_PASSWORD_VERIFIER`: Respond with
    #     `PASSWORD_CLAIM_SIGNATURE`, `PASSWORD_CLAIM_SECRET_BLOCK`, and
    #     `TIMESTAMP` after client-side SRP calculations. For more
    #     information, see [Signing in with a device][1].
    #
    #   * `NEW_PASSWORD_REQUIRED`: For users who are required to change
    #     their passwords after successful first login. Respond to this
    #     challenge with `NEW_PASSWORD` and any required attributes that
    #     Amazon Cognito returned in the `requiredAttributes` parameter. You
    #     can also set values for attributes that aren't required by your
    #     user pool and that your app client can write.
    #
    #     Amazon Cognito only returns this challenge for users who have
    #     temporary passwords. When you create passwordless users, you must
    #     provide values for all required attributes.
    #
    #     <note markdown="1"> In a `NEW_PASSWORD_REQUIRED` challenge response, you can't modify
    #     a required attribute that already has a value. In
    #     `AdminRespondToAuthChallenge` or `RespondToAuthChallenge`, set a
    #     value for any keys that Amazon Cognito returned in the
    #     `requiredAttributes` parameter, then use the
    #     `AdminUpdateUserAttributes` or `UpdateUserAttributes` API
    #     operation to modify the value of any additional attributes.
    #
    #      </note>
    #
    #   * `MFA_SETUP`: For users who are required to setup an MFA factor
    #     before they can sign in. The MFA types activated for the user pool
    #     will be listed in the challenge parameters `MFAS_CAN_SETUP` value.
    #
    #     To set up time-based one-time password (TOTP) MFA, use the session
    #     returned in this challenge from `InitiateAuth` or
    #     `AdminInitiateAuth` as an input to `AssociateSoftwareToken`. Then,
    #     use the session returned by `VerifySoftwareToken` as an input to
    #     `RespondToAuthChallenge` or `AdminRespondToAuthChallenge` with
    #     challenge name `MFA_SETUP` to complete sign-in.
    #
    #     To set up SMS or email MFA, collect a `phone_number` or `email`
    #     attribute for the user. Then restart the authentication flow with
    #     an `InitiateAuth` or `AdminInitiateAuth` request.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-device-tracking.html#user-pools-remembered-devices-signing-in-with-a-device
    #   @return [String]
    #
    # @!attribute [rw] session
    #   The session identifier that maintains the state of authentication
    #   requests and challenge responses. If an `AdminInitiateAuth` or
    #   `AdminRespondToAuthChallenge` API request results in a determination
    #   that your application must pass another challenge, Amazon Cognito
    #   returns a session with other challenge parameters. Send this session
    #   identifier, unmodified, to the next `AdminRespondToAuthChallenge`
    #   request.
    #   @return [String]
    #
    # @!attribute [rw] challenge_parameters
    #   The parameters that define your response to the next challenge.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] authentication_result
    #   The outcome of a successful authentication process. After your
    #   application has passed all challenges, Amazon Cognito returns an
    #   `AuthenticationResult` with the JSON web tokens (JWTs) that indicate
    #   successful sign-in.
    #   @return [Types::AuthenticationResultType]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AdminRespondToAuthChallengeResponse AWS API Documentation
    #
    class AdminRespondToAuthChallengeResponse < Struct.new(
      :challenge_name,
      :session,
      :challenge_parameters,
      :authentication_result)
      SENSITIVE = [:session]
      include Aws::Structure
    end

    # @!attribute [rw] sms_mfa_settings
    #   User preferences for SMS message MFA. Activates or deactivates SMS
    #   MFA and sets it as the preferred MFA method when multiple methods
    #   are available.
    #   @return [Types::SMSMfaSettingsType]
    #
    # @!attribute [rw] software_token_mfa_settings
    #   User preferences for time-based one-time password (TOTP) MFA.
    #   Activates or deactivates TOTP MFA and sets it as the preferred MFA
    #   method when multiple methods are available.
    #   @return [Types::SoftwareTokenMfaSettingsType]
    #
    # @!attribute [rw] email_mfa_settings
    #   User preferences for email message MFA. Activates or deactivates
    #   email MFA and sets it as the preferred MFA method when multiple
    #   methods are available. To activate this setting, your user pool must
    #   be in the [ Essentials tier][1] or higher.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/feature-plans-features-essentials.html
    #   @return [Types::EmailMfaSettingsType]
    #
    # @!attribute [rw] username
    #   The name of the user that you want to query or modify. The value of
    #   this parameter is typically your user's username, but it can be any
    #   of their alias attributes. If `username` isn't an alias attribute
    #   in your user pool, this value must be the `sub` of a local user or
    #   the username of a user from a third-party IdP.
    #   @return [String]
    #
    # @!attribute [rw] user_pool_id
    #   The ID of the user pool where you want to set a user's MFA
    #   preferences.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AdminSetUserMFAPreferenceRequest AWS API Documentation
    #
    class AdminSetUserMFAPreferenceRequest < Struct.new(
      :sms_mfa_settings,
      :software_token_mfa_settings,
      :email_mfa_settings,
      :username,
      :user_pool_id)
      SENSITIVE = [:username]
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AdminSetUserMFAPreferenceResponse AWS API Documentation
    #
    class AdminSetUserMFAPreferenceResponse < Aws::EmptyStructure; end

    # @!attribute [rw] user_pool_id
    #   The ID of the user pool where you want to set the user's password.
    #   @return [String]
    #
    # @!attribute [rw] username
    #   The name of the user that you want to query or modify. The value of
    #   this parameter is typically your user's username, but it can be any
    #   of their alias attributes. If `username` isn't an alias attribute
    #   in your user pool, this value must be the `sub` of a local user or
    #   the username of a user from a third-party IdP.
    #   @return [String]
    #
    # @!attribute [rw] password
    #   The new temporary or permanent password that you want to set for the
    #   user. You can't remove the password for a user who already has a
    #   password so that they can only sign in with passwordless methods. In
    #   this scenario, you must create a new user without a password.
    #   @return [String]
    #
    # @!attribute [rw] permanent
    #   Set to `true` to set a password that the user can immediately sign
    #   in with. Set to `false` to set a temporary password that the user
    #   must change on their next sign-in.
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
    #   The name of the user that you want to query or modify. The value of
    #   this parameter is typically your user's username, but it can be any
    #   of their alias attributes. If `username` isn't an alias attribute
    #   in your user pool, this value must be the `sub` of a local user or
    #   the username of a user from a third-party IdP.
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
    #   The ID of the user pool where you want to submit
    #   authentication-event feedback.
    #   @return [String]
    #
    # @!attribute [rw] username
    #   The name of the user that you want to query or modify. The value of
    #   this parameter is typically your user's username, but it can be any
    #   of their alias attributes. If `username` isn't an alias attribute
    #   in your user pool, this value must be the `sub` of a local user or
    #   the username of a user from a third-party IdP.
    #   @return [String]
    #
    # @!attribute [rw] event_id
    #   The ID of the threat protection authentication event that you want
    #   to update.
    #   @return [String]
    #
    # @!attribute [rw] feedback_value
    #   Your feedback to the authentication event. When you provide a
    #   `FeedbackValue` value of `valid`, you tell Amazon Cognito that you
    #   trust a user session where Amazon Cognito has evaluated some level
    #   of risk. When you provide a `FeedbackValue` value of `invalid`, you
    #   tell Amazon Cognito that you don't trust a user session, or you
    #   don't believe that Amazon Cognito evaluated a high-enough risk
    #   level.
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
    #   The ID of the user pool where you want to change a user's device
    #   status.
    #   @return [String]
    #
    # @!attribute [rw] username
    #   The name of the user that you want to query or modify. The value of
    #   this parameter is typically your user's username, but it can be any
    #   of their alias attributes. If `username` isn't an alias attribute
    #   in your user pool, this value must be the `sub` of a local user or
    #   the username of a user from a third-party IdP.
    #   @return [String]
    #
    # @!attribute [rw] device_key
    #   The unique identifier, or device key, of the device that you want to
    #   update the status for.
    #   @return [String]
    #
    # @!attribute [rw] device_remembered_status
    #   To enable device authentication with the specified device, set to
    #   `remembered`.To disable, set to `not_remembered`.
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
    #   The ID of the user pool where you want to update user attributes.
    #   @return [String]
    #
    # @!attribute [rw] username
    #   The name of the user that you want to query or modify. The value of
    #   this parameter is typically your user's username, but it can be any
    #   of their alias attributes. If `username` isn't an alias attribute
    #   in your user pool, this value must be the `sub` of a local user or
    #   the username of a user from a third-party IdP.
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
    #   To skip the verification message and update the value of an
    #   attribute that requires verification in the same API request,
    #   include the `email_verified` or `phone_number_verified` attribute,
    #   with a value of `true`. If you set the `email_verified` or
    #   `phone_number_verified` value for an `email` or `phone_number`
    #   attribute that requires verification to `true`, Amazon Cognito
    #   doesn’t send a verification message to your user.
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
    #   For more information, see [ Using Lambda triggers][1] in the *Amazon
    #   Cognito Developer Guide*.
    #
    #   <note markdown="1"> When you use the `ClientMetadata` parameter, note that Amazon
    #   Cognito won't do the following:
    #
    #    * Store the `ClientMetadata` value. This data is available only to
    #     Lambda triggers that are assigned to a user pool to support custom
    #     workflows. If your user pool configuration doesn't include
    #     triggers, the `ClientMetadata` parameter serves no purpose.
    #
    #   * Validate the `ClientMetadata` value.
    #
    #   * Encrypt the `ClientMetadata` value. Don't send sensitive
    #     information in this parameter.
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
    #   The ID of the user pool where you want to sign out a user.
    #   @return [String]
    #
    # @!attribute [rw] username
    #   The name of the user that you want to query or modify. The value of
    #   this parameter is typically your user's username, but it can be any
    #   of their alias attributes. If `username` isn't an alias attribute
    #   in your user pool, this value must be the `sub` of a local user or
    #   the username of a user from a third-party IdP.
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

    # Threat protection configuration options for additional authentication
    # types in your user pool, including custom authentication.
    #
    # @!attribute [rw] custom_auth_mode
    #   The operating mode of threat protection in custom authentication
    #   with [ Custom authentication challenge Lambda triggers][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-lambda-challenge.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AdvancedSecurityAdditionalFlowsType AWS API Documentation
    #
    class AdvancedSecurityAdditionalFlowsType < Struct.new(
      :custom_auth_mode)
      SENSITIVE = []
      include Aws::Structure
    end

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

    # The settings for Amazon Pinpoint analytics configuration. With an
    # analytics configuration, your application can collect user-activity
    # metrics for user notifications with a Amazon Pinpoint campaign.
    #
    # Amazon Pinpoint isn't available in all Amazon Web Services Regions.
    # For a list of available Regions, see [Amazon Cognito and Amazon
    # Pinpoint Region availability][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-pinpoint-integration.html#cognito-user-pools-find-region-mappings
    #
    # @!attribute [rw] application_id
    #   Your Amazon Pinpoint project ID.
    #   @return [String]
    #
    # @!attribute [rw] application_arn
    #   The Amazon Resource Name (ARN) of an Amazon Pinpoint project that
    #   you want to connect to your user pool app client. Amazon Cognito
    #   publishes events to the Amazon Pinpoint project that
    #   `ApplicationArn` declares. You can also configure your application
    #   to pass an endpoint ID in the `AnalyticsMetadata` parameter of
    #   sign-in operations. The endpoint ID is information about the
    #   destination for push notifications
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The ARN of an Identity and Access Management role that has the
    #   permissions required for Amazon Cognito to publish events to Amazon
    #   Pinpoint analytics.
    #   @return [String]
    #
    # @!attribute [rw] external_id
    #   The [external ID][1] of the role that Amazon Cognito assumes to send
    #   analytics data to Amazon Pinpoint.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_create_for-user_externalid.html
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

    # Information that your application adds to authentication requests.
    # Applies an endpoint ID to the analytics data that your user pool sends
    # to Amazon Pinpoint.
    #
    # An endpoint ID uniquely identifies a mobile device, email address or
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
    #   The endpoint ID. Information that you want to pass to Amazon
    #   Pinpoint about where to send notifications.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AnalyticsMetadataType AWS API Documentation
    #
    class AnalyticsMetadataType < Struct.new(
      :analytics_endpoint_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # An image file from a managed login branding style in a user pool.
    #
    # @!attribute [rw] category
    #   The category that the image corresponds to in your managed login
    #   configuration. Managed login has asset categories for different
    #   types of logos, backgrounds, and icons.
    #   @return [String]
    #
    # @!attribute [rw] color_mode
    #   The display-mode target of the asset: light, dark, or
    #   browser-adaptive. For example, Amazon Cognito displays a dark-mode
    #   image only when the browser or application is in dark mode, but
    #   displays a browser-adaptive file in all contexts.
    #   @return [String]
    #
    # @!attribute [rw] extension
    #   The file type of the image file.
    #   @return [String]
    #
    # @!attribute [rw] bytes
    #   The image file, in Base64-encoded binary.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The ID of the asset.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AssetType AWS API Documentation
    #
    class AssetType < Struct.new(
      :category,
      :color_mode,
      :extension,
      :bytes,
      :resource_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] access_token
    #   A valid access token that Amazon Cognito issued to the currently
    #   signed-in user. Must include a scope claim for
    #   `aws.cognito.signin.user.admin`.
    #
    #   You can provide either an access token or a session ID in the
    #   request.
    #   @return [String]
    #
    # @!attribute [rw] session
    #   The session identifier that maintains the state of authentication
    #   requests and challenge responses. In `AssociateSoftwareToken`, this
    #   is the session ID from a successful sign-in. You can provide either
    #   an access token or a session ID in the request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AssociateSoftwareTokenRequest AWS API Documentation
    #
    class AssociateSoftwareTokenRequest < Struct.new(
      :access_token,
      :session)
      SENSITIVE = [:access_token, :session]
      include Aws::Structure
    end

    # @!attribute [rw] secret_code
    #   A unique generated shared secret code that is used by the TOTP
    #   algorithm to generate a one-time code.
    #   @return [String]
    #
    # @!attribute [rw] session
    #   The session identifier that maintains the state of authentication
    #   requests and challenge responses.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AssociateSoftwareTokenResponse AWS API Documentation
    #
    class AssociateSoftwareTokenResponse < Struct.new(
      :secret_code,
      :session)
      SENSITIVE = [:secret_code, :session]
      include Aws::Structure
    end

    # The name and value of a user attribute.
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

    # One authentication event that Amazon Cognito logged in a user pool
    # with threat protection active. Contains user and device metadata and a
    # risk assessment from your user pool.
    #
    # @!attribute [rw] event_id
    #   The event ID.
    #   @return [String]
    #
    # @!attribute [rw] event_type
    #   The type of authentication event.
    #   @return [String]
    #
    # @!attribute [rw] creation_date
    #   The date and time when the item was created. Amazon Cognito returns
    #   this timestamp in UNIX epoch time format. Your SDK might render the
    #   output in a human-readable format like ISO 8601 or a Java `Date`
    #   object.
    #   @return [Time]
    #
    # @!attribute [rw] event_response
    #   The event response.
    #   @return [String]
    #
    # @!attribute [rw] event_risk
    #   The threat evaluation from your user pool about an event. Contains
    #   information about whether your user pool detected compromised
    #   credentials, whether the event triggered an automated response, and
    #   the level of risk.
    #   @return [Types::EventRiskType]
    #
    # @!attribute [rw] challenge_responses
    #   A list of the challenges that the user was requested to answer, for
    #   example `Password`, and the result, for example `Success`.
    #   @return [Array<Types::ChallengeResponseType>]
    #
    # @!attribute [rw] event_context_data
    #   The user context data captured at the time of an event request. This
    #   value provides additional information about the client from which
    #   event the request is received.
    #   @return [Types::EventContextDataType]
    #
    # @!attribute [rw] event_feedback
    #   The `UpdateAuthEventFeedback` or `AdminUpdateAuthEventFeedback`
    #   feedback that you or your user provided in response to the event. A
    #   value of `Valid` indicates that you disagreed with the level of risk
    #   that your user pool assigned, and evaluated a session to be valid,
    #   or likely safe. A value of `Invalid` indicates that you agreed with
    #   the user pool risk level and evaluated a session to be invalid, or
    #   likely malicious.
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

    # The object that your application receives after authentication.
    # Contains tokens and information for device authentication.
    #
    # @!attribute [rw] access_token
    #   Your user's access token.
    #   @return [String]
    #
    # @!attribute [rw] expires_in
    #   The expiration period of the authentication result in seconds.
    #   @return [Integer]
    #
    # @!attribute [rw] token_type
    #   The intended use of the token, for example `Bearer`.
    #   @return [String]
    #
    # @!attribute [rw] refresh_token
    #   Your user's refresh token.
    #   @return [String]
    #
    # @!attribute [rw] id_token
    #   Your user's ID token.
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

    # The responses to the challenge that you received in the previous
    # request. Each challenge has its own required response parameters. The
    # following examples are partial JSON request bodies that highlight
    # challenge-response parameters.
    #
    # You must provide a SECRET\_HASH parameter in all challenge responses
    # to an app client that has a client secret. Include a `DEVICE_KEY` for
    # device authentication.
    #
    # SELECT\_CHALLENGE
    #
    # : `"ChallengeName": "SELECT_CHALLENGE", "ChallengeResponses": {
    #   "USERNAME": "[username]", "ANSWER": "[Challenge name]"}`
    #
    #   Available challenges are `PASSWORD`, `PASSWORD_SRP`, `EMAIL_OTP`,
    #   `SMS_OTP`, and `WEB_AUTHN`.
    #
    #   Complete authentication in the `SELECT_CHALLENGE` response for
    #   `PASSWORD`, `PASSWORD_SRP`, and `WEB_AUTHN`:
    #
    #   * `"ChallengeName": "SELECT_CHALLENGE", "ChallengeResponses": {
    #     "ANSWER": "WEB_AUTHN", "USERNAME": "[username]", "CREDENTIAL":
    #     "[AuthenticationResponseJSON]"}`
    #
    #     See [ AuthenticationResponseJSON][1].
    #
    #   * `"ChallengeName": "SELECT_CHALLENGE", "ChallengeResponses": {
    #     "ANSWER": "PASSWORD", "USERNAME": "[username]", "PASSWORD":
    #     "[password]"}`
    #
    #   * `"ChallengeName": "SELECT_CHALLENGE", "ChallengeResponses": {
    #     "ANSWER": "PASSWORD_SRP", "USERNAME": "[username]", "SRP_A":
    #     "[SRP_A]"}`
    #
    #   For `SMS_OTP` and `EMAIL_OTP`, respond with the username and answer.
    #   Your user pool will send a code for the user to submit in the next
    #   challenge response.
    #
    #   * `"ChallengeName": "SELECT_CHALLENGE", "ChallengeResponses": {
    #     "ANSWER": "SMS_OTP", "USERNAME": "[username]"}`
    #
    #   * `"ChallengeName": "SELECT_CHALLENGE", "ChallengeResponses": {
    #     "ANSWER": "EMAIL_OTP", "USERNAME": "[username]"}`
    #
    # SMS\_OTP
    #
    # : `"ChallengeName": "SMS_OTP", "ChallengeResponses": {"SMS_OTP_CODE":
    #   "[code]", "USERNAME": "[username]"}`
    #
    # EMAIL\_OTP
    #
    # : `"ChallengeName": "EMAIL_OTP", "ChallengeResponses":
    #   {"EMAIL_OTP_CODE": "[code]", "USERNAME": "[username]"}`
    #
    # SMS\_MFA
    #
    # : `"ChallengeName": "SMS_MFA", "ChallengeResponses": {"SMS_MFA_CODE":
    #   "[code]", "USERNAME": "[username]"}`
    #
    # PASSWORD\_VERIFIER
    #
    # : This challenge response is part of the SRP flow. Amazon Cognito
    #   requires that your application respond to this challenge within a
    #   few seconds. When the response time exceeds this period, your user
    #   pool returns a `NotAuthorizedException` error.
    #
    #   `"ChallengeName": "PASSWORD_VERIFIER", "ChallengeResponses":
    #   {"PASSWORD_CLAIM_SIGNATURE": "[claim_signature]",
    #   "PASSWORD_CLAIM_SECRET_BLOCK": "[secret_block]", "TIMESTAMP":
    #   [timestamp], "USERNAME": "[username]"}`
    #
    #   Add `"DEVICE_KEY"` when you sign in with a remembered device.
    #
    # CUSTOM\_CHALLENGE
    #
    # : `"ChallengeName": "CUSTOM_CHALLENGE", "ChallengeResponses":
    #   {"USERNAME": "[username]", "ANSWER": "[challenge_answer]"}`
    #
    #   Add `"DEVICE_KEY"` when you sign in with a remembered device.
    #
    # NEW\_PASSWORD\_REQUIRED
    #
    # : `"ChallengeName": "NEW_PASSWORD_REQUIRED", "ChallengeResponses":
    #   {"NEW_PASSWORD": "[new_password]", "USERNAME": "[username]"}`
    #
    #   To set any required attributes that `InitiateAuth` returned in an
    #   `requiredAttributes` parameter, add
    #   `"userAttributes.[attribute_name]": "[attribute_value]"`. This
    #   parameter can also set values for writable attributes that aren't
    #   required by your user pool.
    #
    #   <note markdown="1"> In a `NEW_PASSWORD_REQUIRED` challenge response, you can't modify a
    #   required attribute that already has a value. In
    #   `AdminRespondToAuthChallenge` or `RespondToAuthChallenge`, set a
    #   value for any keys that Amazon Cognito returned in the
    #   `requiredAttributes` parameter, then use the
    #   `AdminUpdateUserAttributes` or `UpdateUserAttributes` API operation
    #   to modify the value of any additional attributes.
    #
    #    </note>
    #
    # SOFTWARE\_TOKEN\_MFA
    #
    # : `"ChallengeName": "SOFTWARE_TOKEN_MFA", "ChallengeResponses":
    #   {"USERNAME": "[username]", "SOFTWARE_TOKEN_MFA_CODE":
    #   [authenticator_code]}`
    #
    # DEVICE\_SRP\_AUTH
    #
    # : `"ChallengeName": "DEVICE_SRP_AUTH", "ChallengeResponses":
    #   {"USERNAME": "[username]", "DEVICE_KEY": "[device_key]", "SRP_A":
    #   "[srp_a]"}`
    #
    # DEVICE\_PASSWORD\_VERIFIER
    #
    # : `"ChallengeName": "DEVICE_PASSWORD_VERIFIER", "ChallengeResponses":
    #   {"DEVICE_KEY": "[device_key]", "PASSWORD_CLAIM_SIGNATURE":
    #   "[claim_signature]", "PASSWORD_CLAIM_SECRET_BLOCK":
    #   "[secret_block]", "TIMESTAMP": [timestamp], "USERNAME":
    #   "[username]"}`
    #
    # MFA\_SETUP
    #
    # : `"ChallengeName": "MFA_SETUP", "ChallengeResponses": {"USERNAME":
    #   "[username]"}, "SESSION": "[Session ID from VerifySoftwareToken]"`
    #
    # SELECT\_MFA\_TYPE
    #
    # : `"ChallengeName": "SELECT_MFA_TYPE", "ChallengeResponses":
    #   {"USERNAME": "[username]", "ANSWER": "[SMS_MFA or
    #   SOFTWARE_TOKEN_MFA]"}`
    #
    # For more information about `SECRET_HASH`, see [Computing secret hash
    # values][2]. For information about `DEVICE_KEY`, see [Working with user
    # devices in your user pool][3].
    #
    #
    #
    # [1]: https://www.w3.org/TR/WebAuthn-3/#dictdef-authenticationresponsejson
    # [2]: https://docs.aws.amazon.com/cognito/latest/developerguide/signing-up-users-in-your-app.html#cognito-user-pools-computing-secret-hash
    # [3]: https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-device-tracking.html
    #
    # @!attribute [rw] challenge_name
    #   The type of challenge that your previous authentication request
    #   returned in the parameter `ChallengeName`, for example `SMS_MFA`.
    #   @return [String]
    #
    # @!attribute [rw] challenge_response
    #   The set of key-value pairs that provides a response to the requested
    #   challenge.
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
    #   The user's previous password. Required if the user has a password.
    #   If the user has no password and only signs in with passwordless
    #   authentication options, you can omit this parameter.
    #   @return [String]
    #
    # @!attribute [rw] proposed_password
    #   A new password that you prompted the user to enter in your
    #   application.
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

    # Configuration for the CloudWatch log group destination of user pool
    # detailed activity logging, or of user activity log export with threat
    # protection.
    #
    # @!attribute [rw] log_group_arn
    #   The Amazon Resource Name (arn) of a CloudWatch Logs log group where
    #   your user pool sends logs. The log group must not be encrypted with
    #   Key Management Service and must be in the same Amazon Web Services
    #   account as your user pool.
    #
    #   To send logs to log groups with a resource policy of a size greater
    #   than 5120 characters, configure a log group with a path that starts
    #   with `/aws/vendedlogs`. For more information, see [Enabling logging
    #   from certain Amazon Web Services services][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/AWS-logs-and-resource-policy.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/CloudWatchLogsConfigurationType AWS API Documentation
    #
    class CloudWatchLogsConfigurationType < Struct.new(
      :log_group_arn)
      SENSITIVE = []
      include Aws::Structure
    end

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

    # @!attribute [rw] access_token
    #   A valid access token that Amazon Cognito issued to the currently
    #   signed-in user. Must include a scope claim for
    #   `aws.cognito.signin.user.admin`.
    #   @return [String]
    #
    # @!attribute [rw] credential
    #   A [RegistrationResponseJSON][1] public-key credential response from
    #   the user's passkey provider.
    #
    #
    #
    #   [1]: https://www.w3.org/TR/WebAuthn-3/#dictdef-registrationresponsejson
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/CompleteWebAuthnRegistrationRequest AWS API Documentation
    #
    class CompleteWebAuthnRegistrationRequest < Struct.new(
      :access_token,
      :credential)
      SENSITIVE = [:access_token]
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/CompleteWebAuthnRegistrationResponse AWS API Documentation
    #
    class CompleteWebAuthnRegistrationResponse < Aws::EmptyStructure; end

    # Settings for user pool actions when Amazon Cognito detects compromised
    # credentials with threat protection in full-function `ENFORCED` mode.
    #
    # @!attribute [rw] event_action
    #   The action that Amazon Cognito takes when it detects compromised
    #   credentials.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/CompromisedCredentialsActionsType AWS API Documentation
    #
    class CompromisedCredentialsActionsType < Struct.new(
      :event_action)
      SENSITIVE = []
      include Aws::Structure
    end

    # Settings for compromised-credentials actions and authentication-event
    # sources with threat protection in full-function `ENFORCED` mode.
    #
    # @!attribute [rw] event_filter
    #   Settings for the sign-in activity where you want to configure
    #   compromised-credentials actions. Defaults to all events.
    #   @return [Array<String>]
    #
    # @!attribute [rw] actions
    #   Settings for the actions that you want your user pool to take when
    #   Amazon Cognito detects compromised credentials.
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

    # The confirm-device request.
    #
    # @!attribute [rw] access_token
    #   A valid access token that Amazon Cognito issued to the currently
    #   signed-in user. Must include a scope claim for
    #   `aws.cognito.signin.user.admin`.
    #   @return [String]
    #
    # @!attribute [rw] device_key
    #   The unique identifier, or device key, of the device that you want to
    #   update the status for.
    #   @return [String]
    #
    # @!attribute [rw] device_secret_verifier_config
    #   The configuration of the device secret verifier.
    #   @return [Types::DeviceSecretVerifierConfigType]
    #
    # @!attribute [rw] device_name
    #   A friendly name for the device, for example `MyMobilePhone`.
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

    # The confirm-device response.
    #
    # @!attribute [rw] user_confirmation_necessary
    #   When `true`, your user must confirm that they want to remember the
    #   device. Prompt the user for an answer.
    #
    #   When `false`, immediately sets the device as remembered and eligible
    #   for device authentication.
    #
    #   You can configure your user pool to always remember devices, in
    #   which case this response is `false`, or to allow users to opt in, in
    #   which case this response is `true`. Configure this option under
    #   *Device tracking* in the *Sign-in* menu of your user pool.
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
    #   The ID of the app client where the user wants to reset their
    #   password. This parameter is an identifier of the client application
    #   that users are resetting their password from, but this operation
    #   resets users' irrespective of the app clients they sign in to.
    #   @return [String]
    #
    # @!attribute [rw] secret_hash
    #   A keyed-hash message authentication code (HMAC) calculated using the
    #   secret key of a user pool client and username plus the client ID in
    #   the message. For more information about `SecretHash`, see [Computing
    #   secret hash values][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/signing-up-users-in-your-app.html#cognito-user-pools-computing-secret-hash
    #   @return [String]
    #
    # @!attribute [rw] username
    #   The name of the user that you want to query or modify. The value of
    #   this parameter is typically your user's username, but it can be any
    #   of their alias attributes. If `username` isn't an alias attribute
    #   in your user pool, this value must be the `sub` of a local user or
    #   the username of a user from a third-party IdP.
    #   @return [String]
    #
    # @!attribute [rw] confirmation_code
    #   The confirmation code that your user pool delivered when your user
    #   requested to reset their password.
    #   @return [String]
    #
    # @!attribute [rw] password
    #   The new password that your user wants to set.
    #   @return [String]
    #
    # @!attribute [rw] analytics_metadata
    #   Information that supports analytics outcomes with Amazon Pinpoint,
    #   including the user's endpoint ID. The endpoint ID is a destination
    #   for Amazon Pinpoint push notifications, for example a device
    #   identifier, email address, or phone number.
    #   @return [Types::AnalyticsMetadataType]
    #
    # @!attribute [rw] user_context_data
    #   Contextual data about your user session like the device fingerprint,
    #   IP address, or location. Amazon Cognito threat protection evaluates
    #   the risk of an authentication event based on the context that your
    #   app generates and passes to Amazon Cognito when it makes API
    #   requests.
    #
    #   For more information, see [Collecting data for threat protection in
    #   applications][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-settings-viewing-threat-protection-app.html
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
    #   For more information, see [ Using Lambda triggers][1] in the *Amazon
    #   Cognito Developer Guide*.
    #
    #   <note markdown="1"> When you use the `ClientMetadata` parameter, note that Amazon
    #   Cognito won't do the following:
    #
    #    * Store the `ClientMetadata` value. This data is available only to
    #     Lambda triggers that are assigned to a user pool to support custom
    #     workflows. If your user pool configuration doesn't include
    #     triggers, the `ClientMetadata` parameter serves no purpose.
    #
    #   * Validate the `ClientMetadata` value.
    #
    #   * Encrypt the `ClientMetadata` value. Don't send sensitive
    #     information in this parameter.
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
      SENSITIVE = [:client_id, :secret_hash, :username, :password, :user_context_data]
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
    #   the message. For more information about `SecretHash`, see [Computing
    #   secret hash values][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/signing-up-users-in-your-app.html#cognito-user-pools-computing-secret-hash
    #   @return [String]
    #
    # @!attribute [rw] username
    #   The name of the user that you want to query or modify. The value of
    #   this parameter is typically your user's username, but it can be any
    #   of their alias attributes. If `username` isn't an alias attribute
    #   in your user pool, this value must be the `sub` of a local user or
    #   the username of a user from a third-party IdP.
    #   @return [String]
    #
    # @!attribute [rw] confirmation_code
    #   The confirmation code that your user pool sent in response to the
    #   `SignUp` request.
    #   @return [String]
    #
    # @!attribute [rw] force_alias_creation
    #   When `true`, forces user confirmation despite any existing aliases.
    #   Defaults to `false`. A value of `true` migrates the alias from an
    #   existing user to the new user if an existing user already has the
    #   phone number or email address as an alias.
    #
    #   Say, for example, that an existing user has an `email` attribute of
    #   `bob@example.com` and email is an alias in your user pool. If the
    #   new user also has an email of `bob@example.com` and your
    #   `ConfirmSignUp` response sets `ForceAliasCreation` to `true`, the
    #   new user can sign in with a username of `bob@example.com` and the
    #   existing user can no longer do so.
    #
    #   If `false` and an attribute belongs to an existing alias, this
    #   request returns an **AliasExistsException** error.
    #
    #   For more information about sign-in aliases, see [Customizing sign-in
    #   attributes][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-settings-attributes.html#user-pool-settings-aliases
    #   @return [Boolean]
    #
    # @!attribute [rw] analytics_metadata
    #   Information that supports analytics outcomes with Amazon Pinpoint,
    #   including the user's endpoint ID. The endpoint ID is a destination
    #   for Amazon Pinpoint push notifications, for example a device
    #   identifier, email address, or phone number.
    #   @return [Types::AnalyticsMetadataType]
    #
    # @!attribute [rw] user_context_data
    #   Contextual data about your user session like the device fingerprint,
    #   IP address, or location. Amazon Cognito threat protection evaluates
    #   the risk of an authentication event based on the context that your
    #   app generates and passes to Amazon Cognito when it makes API
    #   requests.
    #
    #   For more information, see [Collecting data for threat protection in
    #   applications][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-settings-viewing-threat-protection-app.html
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
    #   For more information, see [ Using Lambda triggers][1] in the *Amazon
    #   Cognito Developer Guide*.
    #
    #   <note markdown="1"> When you use the `ClientMetadata` parameter, note that Amazon
    #   Cognito won't do the following:
    #
    #    * Store the `ClientMetadata` value. This data is available only to
    #     Lambda triggers that are assigned to a user pool to support custom
    #     workflows. If your user pool configuration doesn't include
    #     triggers, the `ClientMetadata` parameter serves no purpose.
    #
    #   * Validate the `ClientMetadata` value.
    #
    #   * Encrypt the `ClientMetadata` value. Don't send sensitive
    #     information in this parameter.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-working-with-aws-lambda-triggers.html
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] session
    #   The optional session ID from a `SignUp` API request. You can sign in
    #   a user directly from the sign-up process with the `USER_AUTH`
    #   authentication flow.
    #   @return [String]
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
      :client_metadata,
      :session)
      SENSITIVE = [:client_id, :secret_hash, :username, :user_context_data, :session]
      include Aws::Structure
    end

    # Represents the response from the server for the registration
    # confirmation.
    #
    # @!attribute [rw] session
    #   A session identifier that you can use to immediately sign in the
    #   confirmed user. You can automatically sign users in with the
    #   one-time password that they provided in a successful `ConfirmSignUp`
    #   request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/ConfirmSignUpResponse AWS API Documentation
    #
    class ConfirmSignUpResponse < Struct.new(
      :session)
      SENSITIVE = [:session]
      include Aws::Structure
    end

    # Contextual user data used for evaluating the risk of an authentication
    # event by user pool threat protection.
    #
    # @!attribute [rw] ip_address
    #   The source IP address of your user's device.
    #   @return [String]
    #
    # @!attribute [rw] server_name
    #   The name of your application's service endpoint.
    #   @return [String]
    #
    # @!attribute [rw] server_path
    #   The path of your application's service endpoint.
    #   @return [String]
    #
    # @!attribute [rw] http_headers
    #   The HTTP headers from your user's authentication request.
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
    #   A name for the group. This name must be unique in your user pool.
    #   @return [String]
    #
    # @!attribute [rw] user_pool_id
    #   The ID of the user pool where you want to create a user group.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the group that you're creating.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) for the IAM role that you want to
    #   associate with the group. A group role primarily declares a
    #   preferred role for the credentials that you get from an identity
    #   pool. Amazon Cognito ID tokens have a `cognito:preferred_role` claim
    #   that presents the highest-precedence group that a user belongs to.
    #   Both ID and access tokens also contain a `cognito:groups` claim that
    #   list all the groups that a user is a member of.
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
    #   The response object for a created group.
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
    #   The Id of the user pool where you want to create an IdP.
    #   @return [String]
    #
    # @!attribute [rw] provider_name
    #   The name that you want to assign to the IdP. You can pass the
    #   identity provider name in the `identity_provider` query parameter of
    #   requests to the [Authorize endpoint][1] to silently redirect to
    #   sign-in with the associated IdP.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/authorization-endpoint.html
    #   @return [String]
    #
    # @!attribute [rw] provider_type
    #   The type of IdP that you want to add. Amazon Cognito supports OIDC,
    #   SAML 2.0, Login With Amazon, Sign In With Apple, Google, and
    #   Facebook IdPs.
    #   @return [String]
    #
    # @!attribute [rw] provider_details
    #   The scopes, URLs, and identifiers for your external identity
    #   provider. The following examples describe the provider detail keys
    #   for each IdP type. These values and their schema are subject to
    #   change. Social IdP `authorize_scopes` values must match the values
    #   listed here.
    #
    #   OpenID Connect (OIDC)
    #
    #   : Amazon Cognito accepts the following elements when it can't
    #     discover endpoint URLs from `oidc_issuer`: `attributes_url`,
    #     `authorize_url`, `jwks_uri`, `token_url`.
    #
    #     Create or update request: `"ProviderDetails": {
    #     "attributes_request_method": "GET", "attributes_url":
    #     "https://auth.example.com/userInfo", "authorize_scopes": "openid
    #     profile email", "authorize_url":
    #     "https://auth.example.com/authorize", "client_id":
    #     "1example23456789", "client_secret": "provider-app-client-secret",
    #     "jwks_uri": "https://auth.example.com/.well-known/jwks.json",
    #     "oidc_issuer": "https://auth.example.com", "token_url":
    #     "https://example.com/token" }`
    #
    #     Describe response: `"ProviderDetails": {
    #     "attributes_request_method": "GET", "attributes_url":
    #     "https://auth.example.com/userInfo",
    #     "attributes_url_add_attributes": "false", "authorize_scopes":
    #     "openid profile email", "authorize_url":
    #     "https://auth.example.com/authorize", "client_id":
    #     "1example23456789", "client_secret": "provider-app-client-secret",
    #     "jwks_uri": "https://auth.example.com/.well-known/jwks.json",
    #     "oidc_issuer": "https://auth.example.com", "token_url":
    #     "https://example.com/token" }`
    #
    #   SAML
    #
    #   : Create or update request with Metadata URL: `"ProviderDetails": {
    #     "IDPInit": "true", "IDPSignout": "true", "EncryptedResponses" :
    #     "true", "MetadataURL":
    #     "https://auth.example.com/sso/saml/metadata",
    #     "RequestSigningAlgorithm": "rsa-sha256" }`
    #
    #     Create or update request with Metadata file: `"ProviderDetails": {
    #     "IDPInit": "true", "IDPSignout": "true", "EncryptedResponses" :
    #     "true", "MetadataFile": "[metadata XML]",
    #     "RequestSigningAlgorithm": "rsa-sha256" }`
    #
    #     The value of `MetadataFile` must be the plaintext metadata
    #     document with all quote (") characters escaped by backslashes.
    #
    #     Describe response: `"ProviderDetails": { "IDPInit": "true",
    #     "IDPSignout": "true", "EncryptedResponses" : "true",
    #     "ActiveEncryptionCertificate": "[certificate]", "MetadataURL":
    #     "https://auth.example.com/sso/saml/metadata",
    #     "RequestSigningAlgorithm": "rsa-sha256", "SLORedirectBindingURI":
    #     "https://auth.example.com/slo/saml", "SSORedirectBindingURI":
    #     "https://auth.example.com/sso/saml" }`
    #
    #   LoginWithAmazon
    #
    #   : Create or update request: `"ProviderDetails": {
    #     "authorize_scopes": "profile postal_code", "client_id":
    #     "amzn1.application-oa2-client.1example23456789", "client_secret":
    #     "provider-app-client-secret"`
    #
    #     Describe response: `"ProviderDetails": { "attributes_url":
    #     "https://api.amazon.com/user/profile",
    #     "attributes_url_add_attributes": "false", "authorize_scopes":
    #     "profile postal_code", "authorize_url":
    #     "https://www.amazon.com/ap/oa", "client_id":
    #     "amzn1.application-oa2-client.1example23456789", "client_secret":
    #     "provider-app-client-secret", "token_request_method": "POST",
    #     "token_url": "https://api.amazon.com/auth/o2/token" }`
    #
    #   Google
    #
    #   : Create or update request: `"ProviderDetails": {
    #     "authorize_scopes": "email profile openid", "client_id":
    #     "1example23456789.apps.googleusercontent.com", "client_secret":
    #     "provider-app-client-secret" }`
    #
    #     Describe response: `"ProviderDetails": { "attributes_url":
    #     "https://people.googleapis.com/v1/people/me?personFields=",
    #     "attributes_url_add_attributes": "true", "authorize_scopes":
    #     "email profile openid", "authorize_url":
    #     "https://accounts.google.com/o/oauth2/v2/auth", "client_id":
    #     "1example23456789.apps.googleusercontent.com", "client_secret":
    #     "provider-app-client-secret", "oidc_issuer":
    #     "https://accounts.google.com", "token_request_method": "POST",
    #     "token_url": "https://www.googleapis.com/oauth2/v4/token" }`
    #
    #   SignInWithApple
    #
    #   : Create or update request: `"ProviderDetails": {
    #     "authorize_scopes": "email name", "client_id":
    #     "com.example.cognito", "private_key": "1EXAMPLE", "key_id":
    #     "2EXAMPLE", "team_id": "3EXAMPLE" }`
    #
    #     Describe response: `"ProviderDetails": {
    #     "attributes_url_add_attributes": "false", "authorize_scopes":
    #     "email name", "authorize_url":
    #     "https://appleid.apple.com/auth/authorize", "client_id":
    #     "com.example.cognito", "key_id": "1EXAMPLE", "oidc_issuer":
    #     "https://appleid.apple.com", "team_id": "2EXAMPLE",
    #     "token_request_method": "POST", "token_url":
    #     "https://appleid.apple.com/auth/token" }`
    #
    #   Facebook
    #
    #   : Create or update request: `"ProviderDetails": { "api_version":
    #     "v17.0", "authorize_scopes": "public_profile, email", "client_id":
    #     "1example23456789", "client_secret": "provider-app-client-secret"
    #     }`
    #
    #     Describe response: `"ProviderDetails": { "api_version": "v17.0",
    #     "attributes_url": "https://graph.facebook.com/v17.0/me?fields=",
    #     "attributes_url_add_attributes": "true", "authorize_scopes":
    #     "public_profile, email", "authorize_url":
    #     "https://www.facebook.com/v17.0/dialog/oauth", "client_id":
    #     "1example23456789", "client_secret": "provider-app-client-secret",
    #     "token_request_method": "GET", "token_url":
    #     "https://graph.facebook.com/v17.0/oauth/access_token" }`
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] attribute_mapping
    #   A mapping of IdP attributes to standard and custom user pool
    #   attributes. Specify a user pool attribute as the key of the
    #   key-value pair, and the IdP attribute claim name as the value.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] idp_identifiers
    #   An array of IdP identifiers, for example `"IdPIdentifiers": [
    #   "MyIdP", "MyIdP2" ]`. Identifiers are friendly names that you can
    #   pass in the `idp_identifier` query parameter of requests to the
    #   [Authorize endpoint][1] to silently redirect to sign-in with the
    #   associated IdP. Identifiers in a domain format also enable the use
    #   of [email-address matching with SAML providers][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/authorization-endpoint.html
    #   [2]: https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-managing-saml-idp-naming.html
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
    #   The details of the new user pool IdP.
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
    #   The ID of the user pool where you want to create a new branding
    #   style.
    #   @return [String]
    #
    # @!attribute [rw] client_id
    #   The app client that you want to create the branding style for. Each
    #   style is linked to an app client until you delete it.
    #   @return [String]
    #
    # @!attribute [rw] use_cognito_provided_values
    #   When true, applies the default branding style options. These default
    #   options are managed by Amazon Cognito. You can modify them later in
    #   the branding designer.
    #
    #   When you specify `true` for this option, you must also omit values
    #   for `Settings` and `Assets` in the request.
    #   @return [Boolean]
    #
    # @!attribute [rw] settings
    #   A JSON file, encoded as a `Document` type, with the the settings
    #   that you want to apply to your style.
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @!attribute [rw] assets
    #   An array of image files that you want to apply to functions like
    #   backgrounds, logos, and icons. Each object must also indicate
    #   whether it is for dark mode, light mode, or browser-adaptive mode.
    #   @return [Array<Types::AssetType>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/CreateManagedLoginBrandingRequest AWS API Documentation
    #
    class CreateManagedLoginBrandingRequest < Struct.new(
      :user_pool_id,
      :client_id,
      :use_cognito_provided_values,
      :settings,
      :assets)
      SENSITIVE = [:client_id]
      include Aws::Structure
    end

    # @!attribute [rw] managed_login_branding
    #   The details of the branding style that you created.
    #   @return [Types::ManagedLoginBrandingType]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/CreateManagedLoginBrandingResponse AWS API Documentation
    #
    class CreateManagedLoginBrandingResponse < Struct.new(
      :managed_login_branding)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] user_pool_id
    #   The ID of the user pool where you want to create a resource server.
    #   @return [String]
    #
    # @!attribute [rw] identifier
    #   A unique resource server identifier for the resource server. The
    #   identifier can be an API friendly name like `solar-system-data`. You
    #   can also set an API URL like
    #   `https://solar-system-data-api.example.com` as your identifier.
    #
    #   Amazon Cognito represents scopes in the access token in the format
    #   `$resource-server-identifier/$scope`. Longer scope-identifier
    #   strings increase the size of your access tokens.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A friendly name for the resource server.
    #   @return [String]
    #
    # @!attribute [rw] scopes
    #   A list of custom scopes. Each scope is a key-value map with the keys
    #   `ScopeName` and `ScopeDescription`. The name of a custom scope is a
    #   combination of `ScopeName` and the resource server `Name` in this
    #   request, for example `MyResourceServerName/MyScopeName`.
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
    #   The details of the new resource server.
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
    #   A friendly name for the user import job.
    #   @return [String]
    #
    # @!attribute [rw] user_pool_id
    #   The ID of the user pool that you want to import users into.
    #   @return [String]
    #
    # @!attribute [rw] cloud_watch_logs_role_arn
    #   You must specify an IAM role that has permission to log import-job
    #   results to Amazon CloudWatch Logs. This parameter is the ARN of that
    #   role.
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
    #   The details of the user import job. Includes logging destination,
    #   status, and the Amazon S3 pre-signed URL for CSV upload.
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
    #   The ID of the user pool where you want to create an app client.
    #   @return [String]
    #
    # @!attribute [rw] client_name
    #   A friendly name for the app client that you want to create.
    #   @return [String]
    #
    # @!attribute [rw] generate_secret
    #   When `true`, generates a client secret for the app client. Client
    #   secrets are used with server-side and machine-to-machine
    #   applications. Client secrets are automatically generated; you can't
    #   specify a secret value. For more information, see [App client
    #   types][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-settings-client-apps.html#user-pool-settings-client-app-client-types
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
    #   The default time unit for `IdTokenValidity` in an API request is
    #   hours. *Valid range* is displayed below in seconds.
    #
    #   If you don't specify otherwise in the configuration of your app
    #   client, your ID tokens are valid for one hour.
    #   @return [Integer]
    #
    # @!attribute [rw] token_validity_units
    #   The units that validity times are represented in. The default unit
    #   for refresh tokens is days, and the default for ID and access tokens
    #   are hours.
    #   @return [Types::TokenValidityUnitsType]
    #
    # @!attribute [rw] read_attributes
    #   The list of user attributes that you want your app client to have
    #   read access to. After your user authenticates in your app, their
    #   access token authorizes them to read their own attribute value for
    #   any attribute in this list.
    #
    #   When you don't specify the `ReadAttributes` for your app client,
    #   your app can read the values of `email_verified`,
    #   `phone_number_verified`, and the standard attributes of your user
    #   pool. When your user pool app client has read access to these
    #   default attributes, `ReadAttributes` doesn't return any
    #   information. Amazon Cognito only populates `ReadAttributes` in the
    #   API response if you have specified your own custom set of read
    #   attributes.
    #   @return [Array<String>]
    #
    # @!attribute [rw] write_attributes
    #   The list of user attributes that you want your app client to have
    #   write access to. After your user authenticates in your app, their
    #   access token authorizes them to set or modify their own attribute
    #   value for any attribute in this list.
    #
    #   When you don't specify the `WriteAttributes` for your app client,
    #   your app can write the values of the Standard attributes of your
    #   user pool. When your user pool has write access to these default
    #   attributes, `WriteAttributes` doesn't return any information.
    #   Amazon Cognito only populates `WriteAttributes` in the API response
    #   if you have specified your own custom set of write attributes.
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
    #   The [authentication flows][1] that you want your user pool client to
    #   support. For each app client in your user pool, you can sign in your
    #   users with any combination of one or more flows, including with a
    #   user name and Secure Remote Password (SRP), a user name and
    #   password, or a custom authentication process that you define with
    #   Lambda functions.
    #
    #   <note markdown="1"> If you don't specify a value for `ExplicitAuthFlows`, your app
    #   client supports `ALLOW_REFRESH_TOKEN_AUTH`, `ALLOW_USER_SRP_AUTH`,
    #   and `ALLOW_CUSTOM_AUTH`.
    #
    #    </note>
    #
    #   The values for authentication flow options include the following.
    #
    #   * `ALLOW_USER_AUTH`: Enable selection-based sign-in with
    #     `USER_AUTH`. This setting covers username-password, secure remote
    #     password (SRP), passwordless, and passkey authentication. This
    #     authentiation flow can do username-password and SRP authentication
    #     without other `ExplicitAuthFlows` permitting them. For example
    #     users can complete an SRP challenge through `USER_AUTH` without
    #     the flow `USER_SRP_AUTH` being active for the app client. This
    #     flow doesn't include `CUSTOM_AUTH`.
    #
    #     To activate this setting, your user pool must be in the [
    #     Essentials tier][2] or higher.
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
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-authentication-flow-methods.html
    #   [2]: https://docs.aws.amazon.com/cognito/latest/developerguide/feature-plans-features-essentials.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] supported_identity_providers
    #   A list of provider names for the identity providers (IdPs) that are
    #   supported on this client. The following are supported: `COGNITO`,
    #   `Facebook`, `Google`, `SignInWithApple`, and `LoginWithAmazon`. You
    #   can also specify the names that you configured for the SAML and OIDC
    #   IdPs in your user pool, for example `MySAMLIdP` or `MyOIDCIdP`.
    #
    #   This parameter sets the IdPs that [managed login][1] will display on
    #   the login page for your app client. The removal of `COGNITO` from
    #   this list doesn't prevent authentication operations for local users
    #   with the user pools API in an Amazon Web Services SDK. The only way
    #   to prevent SDK-based authentication is to block access with a [WAF
    #   rule][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-managed-login.html
    #   [2]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-waf.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] callback_urls
    #   A list of allowed redirect, or callback, URLs for managed login
    #   authentication. These URLs are the paths where you want to send your
    #   users' browsers after they complete authentication with managed
    #   login or a third-party IdP. Typically, callback URLs are the home of
    #   an application that uses OAuth or OIDC libraries to process
    #   authentication outcomes.
    #
    #   A redirect URI must meet the following requirements:
    #
    #   * Be an absolute URI.
    #
    #   * Be registered with the authorization server. Amazon Cognito
    #     doesn't accept authorization requests with `redirect_uri` values
    #     that aren't in the list of `CallbackURLs` that you provide in
    #     this parameter.
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
    #   A list of allowed logout URLs for managed login authentication. When
    #   you pass `logout_uri` and `client_id` parameters to `/logout`,
    #   Amazon Cognito signs out your user and redirects them to the logout
    #   URL. This parameter describes the URLs that you want to be the
    #   permitted targets of `logout_uri`. A typical use of these URLs is
    #   when a user selects "Sign out" and you redirect them to your
    #   public homepage. For more information, see [Logout endpoint][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/logout-endpoint.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] default_redirect_uri
    #   The default redirect URI. In app clients with one assigned IdP,
    #   replaces `redirect_uri` in authentication requests. Must be in the
    #   `CallbackURLs` list.
    #   @return [String]
    #
    # @!attribute [rw] allowed_o_auth_flows
    #   The OAuth grant types that you want your app client to generate for
    #   clients in managed login authentication. To create an app client
    #   that generates client credentials grants, you must add
    #   `client_credentials` as the only allowed OAuth flow.
    #
    #   code
    #
    #   : Use a code grant flow, which provides an authorization code as the
    #     response. This code can be exchanged for access tokens with the
    #     `/oauth2/token` endpoint.
    #
    #   implicit
    #
    #   : Issue the access token, and the ID token when scopes like `openid`
    #     and `profile` are requested, directly to your user.
    #
    #   client\_credentials
    #
    #   : Issue the access token from the `/oauth2/token` endpoint directly
    #     to a non-person user, authorized by a combination of the client ID
    #     and client secret.
    #   @return [Array<String>]
    #
    # @!attribute [rw] allowed_o_auth_scopes
    #   The OAuth, OpenID Connect (OIDC), and custom scopes that you want to
    #   permit your app client to authorize access with. Scopes govern
    #   access control to user pool self-service API operations, user data
    #   from the `userInfo` endpoint, and third-party APIs. Scope values
    #   include `phone`, `email`, `openid`, and `profile`. The
    #   `aws.cognito.signin.user.admin` scope authorizes user self-service
    #   operations. Custom scopes with resource servers authorize access to
    #   external APIs.
    #   @return [Array<String>]
    #
    # @!attribute [rw] allowed_o_auth_flows_user_pool_client
    #   Set to `true` to use OAuth 2.0 authorization server features in your
    #   app client.
    #
    #   This parameter must have a value of `true` before you can configure
    #   the following features in your app client.
    #
    #   * `CallBackURLs`: Callback URLs.
    #
    #   * `LogoutURLs`: Sign-out redirect URLs.
    #
    #   * `AllowedOAuthScopes`: OAuth 2.0 scopes.
    #
    #   * `AllowedOAuthFlows`: Support for authorization code, implicit, and
    #     client credentials OAuth 2.0 grants.
    #
    #   To use authorization server features, configure one of these
    #   features in the Amazon Cognito console or set
    #   `AllowedOAuthFlowsUserPoolClient` to `true` in a
    #   `CreateUserPoolClient` or `UpdateUserPoolClient` API request. If you
    #   don't set a value for `AllowedOAuthFlowsUserPoolClient` in a
    #   request with the CLI or SDKs, it defaults to `false`. When `false`,
    #   only SDK-based API sign-in is permitted.
    #   @return [Boolean]
    #
    # @!attribute [rw] analytics_configuration
    #   The user pool analytics configuration for collecting metrics and
    #   sending them to your Amazon Pinpoint campaign.
    #
    #   In Amazon Web Services Regions where Amazon Pinpoint isn't
    #   available, user pools might not have access to analytics or might be
    #   configurable with campaigns in the US East (N. Virginia) Region. For
    #   more information, see [Using Amazon Pinpoint analytics][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-pinpoint-integration.html
    #   @return [Types::AnalyticsConfigurationType]
    #
    # @!attribute [rw] prevent_user_existence_errors
    #   When `ENABLED`, suppresses messages that might indicate a valid user
    #   exists when someone attempts sign-in. This parameters sets your
    #   preference for the errors and responses that you want Amazon Cognito
    #   APIs to return during authentication, account confirmation, and
    #   password recovery when the user doesn't exist in the user pool.
    #   When set to `ENABLED` and the user doesn't exist, authentication
    #   returns an error indicating either the username or password was
    #   incorrect. Account confirmation and password recovery return a
    #   response indicating a code was sent to a simulated destination. When
    #   set to `LEGACY`, those APIs return a `UserNotFoundException`
    #   exception if the user doesn't exist in the user pool.
    #
    #   Defaults to `LEGACY`.
    #   @return [String]
    #
    # @!attribute [rw] enable_token_revocation
    #   Activates or deactivates [token revocation][1] in the target app
    #   client.
    #
    #   If you don't include this parameter, token revocation is
    #   automatically activated for the new user pool client.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/token-revocation.html
    #   @return [Boolean]
    #
    # @!attribute [rw] enable_propagate_additional_user_context_data
    #   When `true`, your application can include additional
    #   `UserContextData` in authentication requests. This data includes the
    #   IP address, and contributes to analysis by threat protection
    #   features. For more information about propagation of user context
    #   data, see [Adding session data to API requests][1]. If you don’t
    #   include this parameter, you can't send the source IP address to
    #   Amazon Cognito threat protection features. You can only activate
    #   `EnablePropagateAdditionalUserContextData` in an app client that has
    #   a client secret.
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
    #   The details of the new app client.
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
    #   domain name, such as `auth.example.com`. For prefix domains, this is
    #   the prefix alone, such as `myprefix`. A prefix value of `myprefix`
    #   for a user pool in the `us-east-1` Region results in a domain of
    #   `myprefix.auth.us-east-1.amazoncognito.com`.
    #   @return [String]
    #
    # @!attribute [rw] user_pool_id
    #   The ID of the user pool where you want to add a domain.
    #   @return [String]
    #
    # @!attribute [rw] managed_login_version
    #   The version of managed login branding that you want to apply to your
    #   domain. A value of `1` indicates hosted UI (classic) and a version
    #   of `2` indicates managed login.
    #
    #   Managed login requires that your user pool be configured for any
    #   [feature plan][1] other than `Lite`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-sign-in-feature-plans.html
    #   @return [Integer]
    #
    # @!attribute [rw] custom_domain_config
    #   The configuration for a custom domain. Configures your domain with
    #   an Certificate Manager certificate in the `us-east-1` Region.
    #
    #   Provide this parameter only if you want to use a [custom domain][1]
    #   for your user pool. Otherwise, you can omit this parameter and use a
    #   [prefix
    #   domain](cognito/latest/developerguide/cognito-user-pools-assign-domain-prefix.html)
    #   instead.
    #
    #   When you create a custom domain, the passkey RP ID defaults to the
    #   custom domain. If you had a prefix domain active, this will cause
    #   passkey integration for your prefix domain to stop working due to a
    #   mismatch in RP ID. To keep the prefix domain passkey integration
    #   working, you can explicitly set RP ID to the prefix domain.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-add-custom-domain.html
    #   @return [Types::CustomDomainConfigType]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/CreateUserPoolDomainRequest AWS API Documentation
    #
    class CreateUserPoolDomainRequest < Struct.new(
      :domain,
      :user_pool_id,
      :managed_login_version,
      :custom_domain_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] managed_login_version
    #   The version of managed login branding applied your domain. A value
    #   of `1` indicates hosted UI (classic) and a version of `2` indicates
    #   managed login.
    #   @return [Integer]
    #
    # @!attribute [rw] cloud_front_domain
    #   The fully-qualified domain name (FQDN) of the Amazon CloudFront
    #   distribution that hosts your managed login or classic hosted UI
    #   pages. Your domain-name authority must have an alias record that
    #   points requests for your custom domain to this FQDN. Amazon Cognito
    #   returns this value if you set a custom domain with
    #   `CustomDomainConfig`. If you set an Amazon Cognito prefix domain,
    #   this parameter returns null.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/CreateUserPoolDomainResponse AWS API Documentation
    #
    class CreateUserPoolDomainResponse < Struct.new(
      :managed_login_version,
      :cloud_front_domain)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the request to create a user pool.
    #
    # @!attribute [rw] pool_name
    #   A friendly name for your user pool.
    #   @return [String]
    #
    # @!attribute [rw] policies
    #   The password policy and sign-in policy in the user pool. The
    #   password policy sets options like password complexity requirements
    #   and password history. The sign-in policy sets the options available
    #   to applications in [choice-based authentication][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/authentication-flows-selection-sdk.html#authentication-flows-selection-choice
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
    #   A collection of user pool Lambda triggers. Amazon Cognito invokes
    #   triggers at several possible stages of authentication operations.
    #   Triggers can modify the outcome of the operations that invoked them.
    #   @return [Types::LambdaConfigType]
    #
    # @!attribute [rw] auto_verified_attributes
    #   The attributes that you want your user pool to automatically verify.
    #   For more information, see [Verifying contact information at
    #   sign-up][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/signing-up-users-in-your-app.html#allowing-users-to-sign-up-and-confirm-themselves
    #   @return [Array<String>]
    #
    # @!attribute [rw] alias_attributes
    #   Attributes supported as an alias for this user pool. For more
    #   information about alias attributes, see [Customizing sign-in
    #   attributes][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-settings-attributes.html#user-pool-settings-aliases
    #   @return [Array<String>]
    #
    # @!attribute [rw] username_attributes
    #   Specifies whether a user can use an email address or phone number as
    #   a username when they sign up. For more information, see [Customizing
    #   sign-in attributes][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-settings-attributes.html#user-pool-settings-aliases
    #   @return [Array<String>]
    #
    # @!attribute [rw] sms_verification_message
    #   This parameter is no longer used.
    #   @return [String]
    #
    # @!attribute [rw] email_verification_message
    #   This parameter is no longer used.
    #   @return [String]
    #
    # @!attribute [rw] email_verification_subject
    #   This parameter is no longer used.
    #   @return [String]
    #
    # @!attribute [rw] verification_message_template
    #   The template for the verification message that your user pool
    #   delivers to users who set an email address or phone number
    #   attribute.
    #
    #   Set the email message type that corresponds to your
    #   `DefaultEmailOption` selection. For `CONFIRM_WITH_LINK`, specify an
    #   `EmailMessageByLink` and leave `EmailMessage` blank. For
    #   `CONFIRM_WITH_CODE`, specify an `EmailMessage` and leave
    #   `EmailMessageByLink` blank. When you supply both parameters with
    #   either choice, Amazon Cognito returns an error.
    #   @return [Types::VerificationMessageTemplateType]
    #
    # @!attribute [rw] sms_authentication_message
    #   The contents of the SMS message that your user pool sends to users
    #   in SMS OTP and MFA authentication.
    #   @return [String]
    #
    # @!attribute [rw] mfa_configuration
    #   Sets multi-factor authentication (MFA) to be on, off, or optional.
    #   When `ON`, all users must set up MFA before they can sign in. When
    #   `OPTIONAL`, your application must make a client-side determination
    #   of whether a user wants to register an MFA device. For user pools
    #   with adaptive authentication with threat protection, choose
    #   `OPTIONAL`.
    #
    #   When `MfaConfiguration` is `OPTIONAL`, managed login doesn't
    #   automatically prompt users to set up MFA. Amazon Cognito generates
    #   MFA prompts in API responses and in managed login for users who have
    #   chosen and configured a preferred MFA factor.
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
    #   The device-remembering configuration for a user pool. Device
    #   remembering or device tracking is a "Remember me on this device"
    #   option for user pools that perform authentication with the device
    #   key of a trusted device in the back end, instead of a user-provided
    #   MFA code. For more information about device authentication, see
    #   [Working with user devices in your user pool][1]. A null value
    #   indicates that you have deactivated device remembering in your user
    #   pool.
    #
    #   <note markdown="1"> When you provide a value for any `DeviceConfiguration` field, you
    #   activate the Amazon Cognito device-remembering feature. For more
    #   infor
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-device-tracking.html
    #   @return [Types::DeviceConfigurationType]
    #
    # @!attribute [rw] email_configuration
    #   The email configuration of your user pool. The email configuration
    #   type sets your preferred sending method, Amazon Web Services Region,
    #   and sender for messages from your user pool.
    #   @return [Types::EmailConfigurationType]
    #
    # @!attribute [rw] sms_configuration
    #   The settings for your Amazon Cognito user pool to send SMS messages
    #   with Amazon Simple Notification Service. To send SMS messages with
    #   Amazon SNS in the Amazon Web Services Region that you want, the
    #   Amazon Cognito user pool uses an Identity and Access Management
    #   (IAM) role in your Amazon Web Services account. For more information
    #   see [SMS message settings][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-sms-settings.html
    #   @return [Types::SmsConfigurationType]
    #
    # @!attribute [rw] user_pool_tags
    #   The tag keys and values to assign to the user pool. A tag is a label
    #   that you can use to categorize and manage user pools in different
    #   ways, such as by purpose, owner, environment, or other criteria.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] admin_create_user_config
    #   The configuration for administrative creation of users. Includes the
    #   template for the invitation message for new users, the duration of
    #   temporary passwords, and permitting self-service sign-up.
    #   @return [Types::AdminCreateUserConfigType]
    #
    # @!attribute [rw] schema
    #   An array of attributes for the new user pool. You can add custom
    #   attributes and modify the properties of default attributes. The
    #   specifications in this parameter set the required attributes in your
    #   user pool. For more information, see [Working with user
    #   attributes][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-settings-attributes.html
    #   @return [Array<Types::SchemaAttributeType>]
    #
    # @!attribute [rw] user_pool_add_ons
    #   Contains settings for activation of threat protection, including the
    #   operating mode and additional authentication types. To log user
    #   security information but take no action, set to `AUDIT`. To
    #   configure automatic security responses to potentially unwanted
    #   traffic to your user pool, set to `ENFORCED`.
    #
    #   For more information, see [Adding advanced security to a user
    #   pool][1]. To activate this setting, your user pool must be on the [
    #   Plus tier][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pool-settings-advanced-security.html
    #   [2]: https://docs.aws.amazon.com/cognito/latest/developerguide/feature-plans-features-plus.html
    #   @return [Types::UserPoolAddOnsType]
    #
    # @!attribute [rw] username_configuration
    #   Sets the case sensitivity option for sign-in usernames. When
    #   `CaseSensitive` is `false` (case insensitive), users can sign in
    #   with any combination of capital and lowercase letters. For example,
    #   `username`, `USERNAME`, or `UserName`, or for email,
    #   `email@example.com` or `EMaiL@eXamplE.Com`. For most use cases, set
    #   case sensitivity to `false` as a best practice. When usernames and
    #   email addresses are case insensitive, Amazon Cognito treats any
    #   variation in case as the same user, and prevents a case variation
    #   from being assigned to the same attribute for a different user.
    #
    #   When `CaseSensitive` is `true` (case sensitive), Amazon Cognito
    #   interprets `USERNAME` and `UserName` as distinct users.
    #
    #   This configuration is immutable after you set it.
    #   @return [Types::UsernameConfigurationType]
    #
    # @!attribute [rw] account_recovery_setting
    #   The available verified method a user can use to recover their
    #   password when they call `ForgotPassword`. You can use this setting
    #   to define a preferred method when a user has more than one method
    #   available. With this setting, SMS doesn't qualify for a valid
    #   password recovery mechanism if the user also has SMS multi-factor
    #   authentication (MFA) activated. Email MFA is also disqualifying for
    #   account recovery with email. In the absence of this setting, Amazon
    #   Cognito uses the legacy behavior to determine the recovery method
    #   where SMS is preferred over email.
    #
    #   As a best practice, configure both `verified_email` and
    #   `verified_phone_number`, with one having a higher priority than the
    #   other.
    #   @return [Types::AccountRecoverySettingType]
    #
    # @!attribute [rw] user_pool_tier
    #   The user pool [feature plan][1], or tier. This parameter determines
    #   the eligibility of the user pool for features like managed login,
    #   access-token customization, and threat protection. Defaults to
    #   `ESSENTIALS`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-sign-in-feature-plans.html
    #   @return [String]
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
      :account_recovery_setting,
      :user_pool_tier)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the response from the server for the request to create a
    # user pool.
    #
    # @!attribute [rw] user_pool
    #   The details of the created user pool.
    #   @return [Types::UserPoolType]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/CreateUserPoolResponse AWS API Documentation
    #
    class CreateUserPoolResponse < Struct.new(
      :user_pool)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration for a hosted UI custom domain.
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

    # The properties of a custom email sender Lambda trigger.
    #
    # @!attribute [rw] lambda_version
    #   The user pool trigger version of the request that Amazon Cognito
    #   sends to your Lambda function. Higher-numbered versions add fields
    #   that support new features.
    #
    #   You must use a `LambdaVersion` of `V1_0` with a custom sender
    #   function.
    #   @return [String]
    #
    # @!attribute [rw] lambda_arn
    #   The Amazon Resource Name (ARN) of the function that you want to
    #   assign to your Lambda trigger.
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

    # The properties of a custom SMS sender Lambda trigger.
    #
    # @!attribute [rw] lambda_version
    #   The user pool trigger version of the request that Amazon Cognito
    #   sends to your Lambda function. Higher-numbered versions add fields
    #   that support new features.
    #
    #   You must use a `LambdaVersion` of `V1_0` with a custom sender
    #   function.
    #   @return [String]
    #
    # @!attribute [rw] lambda_arn
    #   The Amazon Resource Name (ARN) of the function that you want to
    #   assign to your Lambda trigger.
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
    #   The name of the group that you want to delete.
    #   @return [String]
    #
    # @!attribute [rw] user_pool_id
    #   The ID of the user pool where you want to delete the group.
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
    #   The ID of the user pool where you want to delete the identity
    #   provider.
    #   @return [String]
    #
    # @!attribute [rw] provider_name
    #   The name of the IdP that you want to delete.
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

    # @!attribute [rw] managed_login_branding_id
    #   The ID of the managed login branding style that you want to delete.
    #   @return [String]
    #
    # @!attribute [rw] user_pool_id
    #   The ID of the user pool that contains the managed login branding
    #   style that you want to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/DeleteManagedLoginBrandingRequest AWS API Documentation
    #
    class DeleteManagedLoginBrandingRequest < Struct.new(
      :managed_login_branding_id,
      :user_pool_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] user_pool_id
    #   The ID of the user pool where you want to delete the resource
    #   server.
    #   @return [String]
    #
    # @!attribute [rw] identifier
    #   The identifier of the resource server that you want to delete.
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
    #   For custom attributes, you must prepend the `custom:` prefix to the
    #   attribute name, for example `custom:department`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] access_token
    #   A valid access token that Amazon Cognito issued to the currently
    #   signed-in user. Must include a scope claim for
    #   `aws.cognito.signin.user.admin`.
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
    #   The ID of the user pool where you want to delete the client.
    #   @return [String]
    #
    # @!attribute [rw] client_id
    #   The ID of the user pool app client that you want to delete.
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
    #   The domain that you want to delete. For custom domains, this is the
    #   fully-qualified domain name like `auth.example.com`. For Amazon
    #   Cognito prefix domains, this is the prefix alone, like `myprefix`.
    #   @return [String]
    #
    # @!attribute [rw] user_pool_id
    #   The ID of the user pool where you want to delete the domain.
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
    #   The ID of the user pool that you want to delete.
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
    #   A valid access token that Amazon Cognito issued to the currently
    #   signed-in user. Must include a scope claim for
    #   `aws.cognito.signin.user.admin`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/DeleteUserRequest AWS API Documentation
    #
    class DeleteUserRequest < Struct.new(
      :access_token)
      SENSITIVE = [:access_token]
      include Aws::Structure
    end

    # @!attribute [rw] access_token
    #   A valid access token that Amazon Cognito issued to the currently
    #   signed-in user. Must include a scope claim for
    #   `aws.cognito.signin.user.admin`.
    #   @return [String]
    #
    # @!attribute [rw] credential_id
    #   The unique identifier of the passkey that you want to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/DeleteWebAuthnCredentialRequest AWS API Documentation
    #
    class DeleteWebAuthnCredentialRequest < Struct.new(
      :access_token,
      :credential_id)
      SENSITIVE = [:access_token]
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/DeleteWebAuthnCredentialResponse AWS API Documentation
    #
    class DeleteWebAuthnCredentialResponse < Aws::EmptyStructure; end

    # @!attribute [rw] user_pool_id
    #   The ID of the user pool that has the IdP that you want to describe..
    #   @return [String]
    #
    # @!attribute [rw] provider_name
    #   The name of the IdP that you want to describe.
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
    #   The details of the requested IdP.
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
    #   The ID of the user pool that contains the app client where you want
    #   more information about the managed login branding style.
    #   @return [String]
    #
    # @!attribute [rw] client_id
    #   The app client that's assigned to the branding style that you want
    #   more information about.
    #   @return [String]
    #
    # @!attribute [rw] return_merged_resources
    #   When `true`, returns values for branding options that are unchanged
    #   from Amazon Cognito defaults. When `false` or when you omit this
    #   parameter, returns only values that you customized in your branding
    #   style.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/DescribeManagedLoginBrandingByClientRequest AWS API Documentation
    #
    class DescribeManagedLoginBrandingByClientRequest < Struct.new(
      :user_pool_id,
      :client_id,
      :return_merged_resources)
      SENSITIVE = [:client_id]
      include Aws::Structure
    end

    # @!attribute [rw] managed_login_branding
    #   The details of the requested branding style.
    #   @return [Types::ManagedLoginBrandingType]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/DescribeManagedLoginBrandingByClientResponse AWS API Documentation
    #
    class DescribeManagedLoginBrandingByClientResponse < Struct.new(
      :managed_login_branding)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] user_pool_id
    #   The ID of the user pool that contains the managed login branding
    #   style that you want to get information about.
    #   @return [String]
    #
    # @!attribute [rw] managed_login_branding_id
    #   The ID of the managed login branding style that you want to get more
    #   information about.
    #   @return [String]
    #
    # @!attribute [rw] return_merged_resources
    #   When `true`, returns values for branding options that are unchanged
    #   from Amazon Cognito defaults. When `false` or when you omit this
    #   parameter, returns only values that you customized in your branding
    #   style.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/DescribeManagedLoginBrandingRequest AWS API Documentation
    #
    class DescribeManagedLoginBrandingRequest < Struct.new(
      :user_pool_id,
      :managed_login_branding_id,
      :return_merged_resources)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] managed_login_branding
    #   The details of the requested branding style.
    #   @return [Types::ManagedLoginBrandingType]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/DescribeManagedLoginBrandingResponse AWS API Documentation
    #
    class DescribeManagedLoginBrandingResponse < Struct.new(
      :managed_login_branding)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] user_pool_id
    #   The ID of the user pool that hosts the resource server.
    #   @return [String]
    #
    # @!attribute [rw] identifier
    #   A unique resource server identifier for the resource server. The
    #   identifier can be an API friendly name like `solar-system-data`. You
    #   can also set an API URL like
    #   `https://solar-system-data-api.example.com` as your identifier.
    #
    #   Amazon Cognito represents scopes in the access token in the format
    #   `$resource-server-identifier/$scope`. Longer scope-identifier
    #   strings increase the size of your access tokens.
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
    #   The details of the requested resource server.
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
    #   The ID of the user pool with the risk configuration that you want to
    #   inspect. You can apply default risk configuration at the user pool
    #   level and further customize it from user pool defaults at the
    #   app-client level. Specify `ClientId` to inspect client-level
    #   configuration, or `UserPoolId` to inspect pool-level configuration.
    #   @return [String]
    #
    # @!attribute [rw] client_id
    #   The ID of the app client with the risk configuration that you want
    #   to inspect. You can apply default risk configuration at the user
    #   pool level and further customize it from user pool defaults at the
    #   app-client level. Specify `ClientId` to inspect client-level
    #   configuration, or `UserPoolId` to inspect pool-level configuration.
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
    #   The details of the requested risk configuration.
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
    #   The ID of the user pool that's associated with the import job.
    #   @return [String]
    #
    # @!attribute [rw] job_id
    #   The Id of the user import job that you want to describe.
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
    #   The details of the user import job. Includes logging destination,
    #   status, and the Amazon S3 pre-signed URL for CSV upload.
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
    #   The ID of the user pool that contains the app client you want to
    #   describe.
    #   @return [String]
    #
    # @!attribute [rw] client_id
    #   The ID of the app client that you want to describe.
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
    #   The details of the request app client.
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
    #   The domain that you want to describe. For custom domains, this is
    #   the fully-qualified domain name, such as `auth.example.com`. For
    #   Amazon Cognito prefix domains, this is the prefix alone, such as
    #   `auth`.
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
    #   The details of the requested user pool domain.
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
    #   The ID of the user pool you want to describe.
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
    #   The details of the requested user pool.
    #   @return [Types::UserPoolType]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/DescribeUserPoolResponse AWS API Documentation
    #
    class DescribeUserPoolResponse < Struct.new(
      :user_pool)
      SENSITIVE = []
      include Aws::Structure
    end

    # The device-remembering configuration for a user pool.
    #
    # <note markdown="1"> When you provide a value for any property of `DeviceConfiguration`,
    # you activate the device remembering for the user pool.
    #
    #  </note>
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
    #   device when your app sends a `ConfirmDevice` API request. In your
    #   app, create a prompt for your user to choose whether they want to
    #   remember their device. Return the user's choice in an
    #   `UpdateDeviceStatus` API request.
    #
    #   When `DeviceOnlyRememberedOnUserPrompt` is `false`, Amazon Cognito
    #   immediately remembers devices that you register in a `ConfirmDevice`
    #   API request.
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

    # This exception is thrown when a user attempts to confirm a device with
    # a device key that already exists.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/DeviceKeyExistsException AWS API Documentation
    #
    class DeviceKeyExistsException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A Secure Remote Password (SRP) value that your application generates
    # when you register a user's device. For more information, see [Getting
    # a device key][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-device-tracking.html#user-pools-remembered-devices-getting-a-device-key
    #
    # @!attribute [rw] password_verifier
    #   A password verifier for a user's device. Used in SRP
    #   authentication.
    #   @return [String]
    #
    # @!attribute [rw] salt
    #   The salt that you want to use in SRP authentication with the user's
    #   device.
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

    # Information about a user's device that they've registered for device
    # SRP authentication in your application. For more information, see
    # [Working with user devices in your user pool][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-device-tracking.html
    #
    # @!attribute [rw] device_key
    #   The device key, for example
    #   `us-west-2_EXAMPLE-a1b2c3d4-5678-90ab-cdef-EXAMPLE22222`.
    #   @return [String]
    #
    # @!attribute [rw] device_attributes
    #   Metadata about a user's device, like name and last-access source
    #   IP.
    #   @return [Array<Types::AttributeType>]
    #
    # @!attribute [rw] device_create_date
    #   The date and time when the item was created. Amazon Cognito returns
    #   this timestamp in UNIX epoch time format. Your SDK might render the
    #   output in a human-readable format like ISO 8601 or a Java `Date`
    #   object.
    #   @return [Time]
    #
    # @!attribute [rw] device_last_modified_date
    #   The date and time when the item was modified. Amazon Cognito returns
    #   this timestamp in UNIX epoch time format. Your SDK might render the
    #   output in a human-readable format like ISO 8601 or a Java `Date`
    #   object.
    #   @return [Time]
    #
    # @!attribute [rw] device_last_authenticated_date
    #   The date when the user last signed in with the device.
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

    # A container for information about the user pool domain associated with
    # the hosted UI and OAuth endpoints.
    #
    # @!attribute [rw] user_pool_id
    #   The ID of the user pool that the domain is attached to.
    #   @return [String]
    #
    # @!attribute [rw] aws_account_id
    #   The Amazon Web Services account that you created the user pool in.
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
    #   The Amazon CloudFront endpoint that hosts your custom domain.
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
    # @!attribute [rw] managed_login_version
    #   The version of managed login branding that you want to apply to your
    #   domain. A value of `1` indicates hosted UI (classic) branding and a
    #   version of `2` indicates managed login branding.
    #
    #   Managed login requires that your user pool be configured for any
    #   [feature plan][1] other than `Lite`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-sign-in-feature-plans.html
    #   @return [Integer]
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
      :custom_domain_config,
      :managed_login_version)
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
    #   The ARN of a verified email address or an address from a verified
    #   domain in Amazon SES. You can set a `SourceArn` email from a
    #   verified domain only with an API request. You can set a verified
    #   email address, but not an address in a verified domain, in the
    #   Amazon Cognito console. Amazon Cognito uses the email address that
    #   you provide in one of the following ways, depending on the value
    #   that you specify for the `EmailSendingAccount` parameter:
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

    # Sets or shows configuration for user pool email message MFA and
    # sign-in with one-time passwords (OTPs). Includes the subject and body
    # of the email message template for sign-in and MFA messages. To
    # activate this setting, your user pool must be in the [ Essentials
    # tier][1] or higher.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/feature-plans-features-essentials.html
    #
    # @!attribute [rw] message
    #   The template for the email messages that your user pool sends to
    #   users with codes for MFA and sign-in with email OTPs. The message
    #   must contain the `{####}` placeholder. In the message, Amazon
    #   Cognito replaces this placeholder with the code. If you don't
    #   provide this parameter, Amazon Cognito sends messages in the default
    #   format.
    #   @return [String]
    #
    # @!attribute [rw] subject
    #   The subject of the email messages that your user pool sends to users
    #   with codes for MFA and email OTP sign-in.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/EmailMfaConfigType AWS API Documentation
    #
    class EmailMfaConfigType < Struct.new(
      :message,
      :subject)
      SENSITIVE = []
      include Aws::Structure
    end

    # User preferences for multi-factor authentication with email messages.
    # Activates or deactivates email MFA and sets it as the preferred MFA
    # method when multiple methods are available. To activate this setting,
    # your user pool must be in the [ Essentials tier][1] or higher.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/feature-plans-features-essentials.html
    #
    # @!attribute [rw] enabled
    #   Specifies whether email message MFA is active for a user. When the
    #   value of this parameter is `Enabled`, the user will be prompted for
    #   MFA during all sign-in attempts, unless device tracking is turned on
    #   and the device has been trusted.
    #   @return [Boolean]
    #
    # @!attribute [rw] preferred_mfa
    #   Specifies whether email message MFA is the user's preferred method.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/EmailMfaSettingsType AWS API Documentation
    #
    class EmailMfaSettingsType < Struct.new(
      :enabled,
      :preferred_mfa)
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

    # The context data that your application submitted in an authentication
    # request with threat protection, as displayed in an
    # `AdminListUserAuthEvents` response.
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

    # The feedback that your application submitted to a threat protection
    # event log, as displayed in an `AdminListUserAuthEvents` response.
    #
    # @!attribute [rw] feedback_value
    #   Your feedback to the authentication event. When you provide a
    #   `FeedbackValue` value of `valid`, you tell Amazon Cognito that you
    #   trust a user session where Amazon Cognito has evaluated some level
    #   of risk. When you provide a `FeedbackValue` value of `invalid`, you
    #   tell Amazon Cognito that you don't trust a user session, or you
    #   don't believe that Amazon Cognito evaluated a high-enough risk
    #   level.
    #   @return [String]
    #
    # @!attribute [rw] provider
    #   The submitter of the event feedback. For example, if you submit
    #   event feedback in the Amazon Cognito console, this value is `Admin`.
    #   @return [String]
    #
    # @!attribute [rw] feedback_date
    #   The date that you or your user submitted the feedback.
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

    # The risk evaluation by adaptive authentication, as displayed in an
    # `AdminListUserAuthEvents` response. Contains evaluations of
    # compromised-credentials detection and assessed risk level and action
    # taken by adaptive authentication.
    #
    # @!attribute [rw] risk_decision
    #   The action taken by adaptive authentication. If `NoRisk`, your user
    #   pool took no action. If `AccountTakeover`, your user pool applied
    #   the adaptive authentication automated response that you configured.
    #   If `Block`, your user pool prevented the attempt.
    #   @return [String]
    #
    # @!attribute [rw] risk_level
    #   The risk level that adaptive authentication assessed for the
    #   authentication event.
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

    # This exception is thrown when a feature you attempted to configure
    # isn't available in your current feature plan.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/FeatureUnavailableInTierException AWS API Documentation
    #
    class FeatureUnavailableInTierException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration for the Amazon Data Firehose stream destination of user
    # activity log export with threat protection.
    #
    # @!attribute [rw] stream_arn
    #   The ARN of an Amazon Data Firehose stream that's the destination
    #   for threat protection log export.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/FirehoseConfigurationType AWS API Documentation
    #
    class FirehoseConfigurationType < Struct.new(
      :stream_arn)
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
    #   A valid access token that Amazon Cognito issued to the currently
    #   signed-in user. Must include a scope claim for
    #   `aws.cognito.signin.user.admin`.
    #   @return [String]
    #
    # @!attribute [rw] device_key
    #   The unique identifier, or device key, of the device that the user
    #   wants to forget.
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
    #   The ID of the user pool app client associated with the current
    #   signed-in user.
    #   @return [String]
    #
    # @!attribute [rw] secret_hash
    #   A keyed-hash message authentication code (HMAC) calculated using the
    #   secret key of a user pool client and username plus the client ID in
    #   the message. For more information about `SecretHash`, see [Computing
    #   secret hash values][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/signing-up-users-in-your-app.html#cognito-user-pools-computing-secret-hash
    #   @return [String]
    #
    # @!attribute [rw] user_context_data
    #   Contextual data about your user session like the device fingerprint,
    #   IP address, or location. Amazon Cognito threat protection evaluates
    #   the risk of an authentication event based on the context that your
    #   app generates and passes to Amazon Cognito when it makes API
    #   requests.
    #
    #   For more information, see [Collecting data for threat protection in
    #   applications][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-settings-viewing-threat-protection-app.html
    #   @return [Types::UserContextDataType]
    #
    # @!attribute [rw] username
    #   The name of the user that you want to query or modify. The value of
    #   this parameter is typically your user's username, but it can be any
    #   of their alias attributes. If `username` isn't an alias attribute
    #   in your user pool, this value must be the `sub` of a local user or
    #   the username of a user from a third-party IdP.
    #   @return [String]
    #
    # @!attribute [rw] analytics_metadata
    #   Information that supports analytics outcomes with Amazon Pinpoint,
    #   including the user's endpoint ID. The endpoint ID is a destination
    #   for Amazon Pinpoint push notifications, for example a device
    #   identifier, email address, or phone number.
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
    #   For more information, see [ Using Lambda triggers][1] in the *Amazon
    #   Cognito Developer Guide*.
    #
    #   <note markdown="1"> When you use the `ClientMetadata` parameter, note that Amazon
    #   Cognito won't do the following:
    #
    #    * Store the `ClientMetadata` value. This data is available only to
    #     Lambda triggers that are assigned to a user pool to support custom
    #     workflows. If your user pool configuration doesn't include
    #     triggers, the `ClientMetadata` parameter serves no purpose.
    #
    #   * Validate the `ClientMetadata` value.
    #
    #   * Encrypt the `ClientMetadata` value. Don't send sensitive
    #     information in this parameter.
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
      SENSITIVE = [:client_id, :secret_hash, :user_context_data, :username]
      include Aws::Structure
    end

    # The response from Amazon Cognito to a request to reset a password.
    #
    # @!attribute [rw] code_delivery_details
    #   Information about the phone number or email address that Amazon
    #   Cognito sent the password-recovery code to.
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
    #   The ID of the user pool that you want to import users into.
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
    #   The ID of the requested user pool.
    #   @return [String]
    #
    # @!attribute [rw] csv_header
    #   A comma-separated list of attributes from your user pool. Save this
    #   output to a `.csv` file and populate it with the attributes of the
    #   users that you want to import.
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
    #   The key of the device that you want to get information about.
    #   @return [String]
    #
    # @!attribute [rw] access_token
    #   A valid access token that Amazon Cognito issued to the currently
    #   signed-in user. Must include a scope claim for
    #   `aws.cognito.signin.user.admin`.
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
    #   Details of the requested device. Includes device information,
    #   last-accessed and created dates, and the device key.
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
    #   The name of the group that you want to get information about.
    #   @return [String]
    #
    # @!attribute [rw] user_pool_id
    #   The ID of the user pool that contains the group that you want to
    #   query.
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
    #   A container for the requested group. Includes description,
    #   precedence, and IAM role values.
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
    #   The ID of the user pool where you want to get information about the
    #   IdP.
    #   @return [String]
    #
    # @!attribute [rw] idp_identifier
    #   The identifier that you assigned to your user pool. The identifier
    #   is an alternative name for an IdP that is distinct from the IdP
    #   name. For example, an IdP with a name of `MyIdP` might have an
    #   identifier of the email domain `example.com`.
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
    #   The configuration of the IdP in your user pool. Includes additional
    #   identifiers, the IdP name and type, and trust-relationship details
    #   like the issuer URL.
    #   @return [Types::IdentityProviderType]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/GetIdentityProviderByIdentifierResponse AWS API Documentation
    #
    class GetIdentityProviderByIdentifierResponse < Struct.new(
      :identity_provider)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] user_pool_id
    #   The ID of the user pool that has the logging configuration that you
    #   want to view.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/GetLogDeliveryConfigurationRequest AWS API Documentation
    #
    class GetLogDeliveryConfigurationRequest < Struct.new(
      :user_pool_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] log_delivery_configuration
    #   The logging configuration of the requested user pool. Includes types
    #   of logs configured and their destinations.
    #   @return [Types::LogDeliveryConfigurationType]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/GetLogDeliveryConfigurationResponse AWS API Documentation
    #
    class GetLogDeliveryConfigurationResponse < Struct.new(
      :log_delivery_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request to get a signing certificate from Amazon Cognito.
    #
    # @!attribute [rw] user_pool_id
    #   The ID of the user pool where you want to view the signing
    #   certificate.
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
    #   The x.509 certificate that signs SAML 2.0 authentication requests
    #   for your user pool.
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
    #   The ID of the user pool that you want to query for branding
    #   settings.
    #   @return [String]
    #
    # @!attribute [rw] client_id
    #   The ID of the app client that you want to query for branding
    #   settings.
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
    #   Information about the classic hosted UI custom CSS and logo-image
    #   branding that you applied to the user pool or app client.
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
    #   A valid access token that Amazon Cognito issued to the currently
    #   signed-in user. Must include a scope claim for
    #   `aws.cognito.signin.user.admin`.
    #   @return [String]
    #
    # @!attribute [rw] attribute_name
    #   The name of the attribute that the user wants to verify, for example
    #   `email`.
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
    #   For more information, see [ Using Lambda triggers][1] in the *Amazon
    #   Cognito Developer Guide*.
    #
    #   <note markdown="1"> When you use the `ClientMetadata` parameter, note that Amazon
    #   Cognito won't do the following:
    #
    #    * Store the `ClientMetadata` value. This data is available only to
    #     Lambda triggers that are assigned to a user pool to support custom
    #     workflows. If your user pool configuration doesn't include
    #     triggers, the `ClientMetadata` parameter serves no purpose.
    #
    #   * Validate the `ClientMetadata` value.
    #
    #   * Encrypt the `ClientMetadata` value. Don't send sensitive
    #     information in this parameter.
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
    #   Information about the delivery destination of the user attribute
    #   verification code.
    #   @return [Types::CodeDeliveryDetailsType]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/GetUserAttributeVerificationCodeResponse AWS API Documentation
    #
    class GetUserAttributeVerificationCodeResponse < Struct.new(
      :code_delivery_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] access_token
    #   A valid access token that Amazon Cognito issued to the currently
    #   signed-in user. Must include a scope claim for
    #   `aws.cognito.signin.user.admin`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/GetUserAuthFactorsRequest AWS API Documentation
    #
    class GetUserAuthFactorsRequest < Struct.new(
      :access_token)
      SENSITIVE = [:access_token]
      include Aws::Structure
    end

    # @!attribute [rw] username
    #   The name of the user who is eligible for the authentication factors
    #   in the response.
    #   @return [String]
    #
    # @!attribute [rw] preferred_mfa_setting
    #   The challenge method that Amazon Cognito returns to the user in
    #   response to sign-in requests. Users can prefer SMS message, email
    #   message, or TOTP MFA.
    #   @return [String]
    #
    # @!attribute [rw] user_mfa_setting_list
    #   The MFA options that are activated for the user. The possible values
    #   in this list are `SMS_MFA`, `EMAIL_OTP`, and `SOFTWARE_TOKEN_MFA`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] configured_user_auth_factors
    #   The authentication types that are available to the user with
    #   `USER_AUTH` sign-in, for example `["PASSWORD", "WEB_AUTHN"]`.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/GetUserAuthFactorsResponse AWS API Documentation
    #
    class GetUserAuthFactorsResponse < Struct.new(
      :username,
      :preferred_mfa_setting,
      :user_mfa_setting_list,
      :configured_user_auth_factors)
      SENSITIVE = [:username]
      include Aws::Structure
    end

    # @!attribute [rw] user_pool_id
    #   The ID of the user pool where you want to query WebAuthn and MFA
    #   configuration.
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
    #   Shows user pool configuration for SMS message MFA. Includes the
    #   message template and the SMS message sending configuration for
    #   Amazon SNS.
    #   @return [Types::SmsMfaConfigType]
    #
    # @!attribute [rw] software_token_mfa_configuration
    #   Shows user pool configuration for time-based one-time password
    #   (TOTP) MFA. Includes TOTP enabled or disabled state.
    #   @return [Types::SoftwareTokenMfaConfigType]
    #
    # @!attribute [rw] email_mfa_configuration
    #   Shows configuration for user pool email message MFA and sign-in with
    #   one-time passwords (OTPs). Includes the subject and body of the
    #   email message template for sign-in and MFA messages. To activate
    #   this setting, your user pool must be in the [ Essentials tier][1] or
    #   higher.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/feature-plans-features-essentials.html
    #   @return [Types::EmailMfaConfigType]
    #
    # @!attribute [rw] mfa_configuration
    #   Displays the state of multi-factor authentication (MFA) as on, off,
    #   or optional. When `ON`, all users must set up MFA before they can
    #   sign in. When `OPTIONAL`, your application must make a client-side
    #   determination of whether a user wants to register an MFA device. For
    #   user pools with adaptive authentication with threat protection,
    #   choose `OPTIONAL`.
    #
    #   When `MfaConfiguration` is `OPTIONAL`, managed login doesn't
    #   automatically prompt users to set up MFA. Amazon Cognito generates
    #   MFA prompts in API responses and in managed login for users who have
    #   chosen and configured a preferred MFA factor.
    #   @return [String]
    #
    # @!attribute [rw] web_authn_configuration
    #   Shows user pool configuration for sign-in with passkey
    #   authenticators like biometric devices and security keys. Passkeys
    #   are not eligible MFA factors. They are instead an eligible primary
    #   sign-in factor for [choice-based authentication][1], or the
    #   `USER_AUTH` flow.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/authentication-flows-selection-sdk.html#authentication-flows-selection-choice
    #   @return [Types::WebAuthnConfigurationType]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/GetUserPoolMfaConfigResponse AWS API Documentation
    #
    class GetUserPoolMfaConfigResponse < Struct.new(
      :sms_mfa_configuration,
      :software_token_mfa_configuration,
      :email_mfa_configuration,
      :mfa_configuration,
      :web_authn_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the request to get information about the user.
    #
    # @!attribute [rw] access_token
    #   A valid access token that Amazon Cognito issued to the currently
    #   signed-in user. Must include a scope claim for
    #   `aws.cognito.signin.user.admin`.
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
    #   The name of the user that you requested.
    #   @return [String]
    #
    # @!attribute [rw] user_attributes
    #   An array of name-value pairs representing user attributes.
    #
    #   Custom attributes are prepended with the `custom:` prefix.
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
    #   The user's preferred MFA. Users can prefer SMS message, email
    #   message, or TOTP MFA.
    #   @return [String]
    #
    # @!attribute [rw] user_mfa_setting_list
    #   The MFA options that are activated for the user. The possible values
    #   in this list are `SMS_MFA`, `EMAIL_OTP`, and `SOFTWARE_TOKEN_MFA`.
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
    #   A valid access token that Amazon Cognito issued to the currently
    #   signed-in user. Must include a scope claim for
    #   `aws.cognito.signin.user.admin`.
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

    # A user pool group. Contains details about the group and the way that
    # it contributes to IAM role decisions with identity pools. Identity
    # pools can make decisions about the IAM role to assign based on groups:
    # users get credentials for the role associated with their
    # highest-priority group.
    #
    # @!attribute [rw] group_name
    #   The name of the group.
    #   @return [String]
    #
    # @!attribute [rw] user_pool_id
    #   The ID of the user pool that contains the group.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A friendly description of the group.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The ARN of the IAM role associated with the group. If a group has
    #   the highest priority of a user's groups, users who authenticate
    #   with an identity pool get credentials for the `RoleArn` that's
    #   associated with the group.
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
    #   The default `Precedence` value is `null`.
    #   @return [Integer]
    #
    # @!attribute [rw] last_modified_date
    #   The date and time when the item was modified. Amazon Cognito returns
    #   this timestamp in UNIX epoch time format. Your SDK might render the
    #   output in a human-readable format like ISO 8601 or a Java `Date`
    #   object.
    #   @return [Time]
    #
    # @!attribute [rw] creation_date
    #   The date and time when the item was created. Amazon Cognito returns
    #   this timestamp in UNIX epoch time format. Your SDK might render the
    #   output in a human-readable format like ISO 8601 or a Java `Date`
    #   object.
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

    # The HTTP header in the `ContextData` parameter.
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

    # A user pool identity provider (IdP). Contains information about a
    # third-party IdP to a user pool, the attributes that it populates to
    # user profiles, and the trust relationship between the IdP and your
    # user pool.
    #
    # @!attribute [rw] user_pool_id
    #   The ID of the user pool associated with the IdP.
    #   @return [String]
    #
    # @!attribute [rw] provider_name
    #   A friendly name for the IdP.
    #   @return [String]
    #
    # @!attribute [rw] provider_type
    #   The type of IdP. Either SAML, OIDC, or a named social identity
    #   provider.
    #   @return [String]
    #
    # @!attribute [rw] provider_details
    #   The scopes, URLs, and identifiers for your external identity
    #   provider. The following examples describe the provider detail keys
    #   for each IdP type. These values and their schema are subject to
    #   change. Social IdP `authorize_scopes` values must match the values
    #   listed here.
    #
    #   OpenID Connect (OIDC)
    #
    #   : Amazon Cognito accepts the following elements when it can't
    #     discover endpoint URLs from `oidc_issuer`: `attributes_url`,
    #     `authorize_url`, `jwks_uri`, `token_url`.
    #
    #     Create or update request: `"ProviderDetails": {
    #     "attributes_request_method": "GET", "attributes_url":
    #     "https://auth.example.com/userInfo", "authorize_scopes": "openid
    #     profile email", "authorize_url":
    #     "https://auth.example.com/authorize", "client_id":
    #     "1example23456789", "client_secret": "provider-app-client-secret",
    #     "jwks_uri": "https://auth.example.com/.well-known/jwks.json",
    #     "oidc_issuer": "https://auth.example.com", "token_url":
    #     "https://example.com/token" }`
    #
    #     Describe response: `"ProviderDetails": {
    #     "attributes_request_method": "GET", "attributes_url":
    #     "https://auth.example.com/userInfo",
    #     "attributes_url_add_attributes": "false", "authorize_scopes":
    #     "openid profile email", "authorize_url":
    #     "https://auth.example.com/authorize", "client_id":
    #     "1example23456789", "client_secret": "provider-app-client-secret",
    #     "jwks_uri": "https://auth.example.com/.well-known/jwks.json",
    #     "oidc_issuer": "https://auth.example.com", "token_url":
    #     "https://example.com/token" }`
    #
    #   SAML
    #
    #   : Create or update request with Metadata URL: `"ProviderDetails": {
    #     "IDPInit": "true", "IDPSignout": "true", "EncryptedResponses" :
    #     "true", "MetadataURL":
    #     "https://auth.example.com/sso/saml/metadata",
    #     "RequestSigningAlgorithm": "rsa-sha256" }`
    #
    #     Create or update request with Metadata file: `"ProviderDetails": {
    #     "IDPInit": "true", "IDPSignout": "true", "EncryptedResponses" :
    #     "true", "MetadataFile": "[metadata XML]",
    #     "RequestSigningAlgorithm": "rsa-sha256" }`
    #
    #     The value of `MetadataFile` must be the plaintext metadata
    #     document with all quote (") characters escaped by backslashes.
    #
    #     Describe response: `"ProviderDetails": { "IDPInit": "true",
    #     "IDPSignout": "true", "EncryptedResponses" : "true",
    #     "ActiveEncryptionCertificate": "[certificate]", "MetadataURL":
    #     "https://auth.example.com/sso/saml/metadata",
    #     "RequestSigningAlgorithm": "rsa-sha256", "SLORedirectBindingURI":
    #     "https://auth.example.com/slo/saml", "SSORedirectBindingURI":
    #     "https://auth.example.com/sso/saml" }`
    #
    #   LoginWithAmazon
    #
    #   : Create or update request: `"ProviderDetails": {
    #     "authorize_scopes": "profile postal_code", "client_id":
    #     "amzn1.application-oa2-client.1example23456789", "client_secret":
    #     "provider-app-client-secret"`
    #
    #     Describe response: `"ProviderDetails": { "attributes_url":
    #     "https://api.amazon.com/user/profile",
    #     "attributes_url_add_attributes": "false", "authorize_scopes":
    #     "profile postal_code", "authorize_url":
    #     "https://www.amazon.com/ap/oa", "client_id":
    #     "amzn1.application-oa2-client.1example23456789", "client_secret":
    #     "provider-app-client-secret", "token_request_method": "POST",
    #     "token_url": "https://api.amazon.com/auth/o2/token" }`
    #
    #   Google
    #
    #   : Create or update request: `"ProviderDetails": {
    #     "authorize_scopes": "email profile openid", "client_id":
    #     "1example23456789.apps.googleusercontent.com", "client_secret":
    #     "provider-app-client-secret" }`
    #
    #     Describe response: `"ProviderDetails": { "attributes_url":
    #     "https://people.googleapis.com/v1/people/me?personFields=",
    #     "attributes_url_add_attributes": "true", "authorize_scopes":
    #     "email profile openid", "authorize_url":
    #     "https://accounts.google.com/o/oauth2/v2/auth", "client_id":
    #     "1example23456789.apps.googleusercontent.com", "client_secret":
    #     "provider-app-client-secret", "oidc_issuer":
    #     "https://accounts.google.com", "token_request_method": "POST",
    #     "token_url": "https://www.googleapis.com/oauth2/v4/token" }`
    #
    #   SignInWithApple
    #
    #   : Create or update request: `"ProviderDetails": {
    #     "authorize_scopes": "email name", "client_id":
    #     "com.example.cognito", "private_key": "1EXAMPLE", "key_id":
    #     "2EXAMPLE", "team_id": "3EXAMPLE" }`
    #
    #     Describe response: `"ProviderDetails": {
    #     "attributes_url_add_attributes": "false", "authorize_scopes":
    #     "email name", "authorize_url":
    #     "https://appleid.apple.com/auth/authorize", "client_id":
    #     "com.example.cognito", "key_id": "1EXAMPLE", "oidc_issuer":
    #     "https://appleid.apple.com", "team_id": "2EXAMPLE",
    #     "token_request_method": "POST", "token_url":
    #     "https://appleid.apple.com/auth/token" }`
    #
    #   Facebook
    #
    #   : Create or update request: `"ProviderDetails": { "api_version":
    #     "v17.0", "authorize_scopes": "public_profile, email", "client_id":
    #     "1example23456789", "client_secret": "provider-app-client-secret"
    #     }`
    #
    #     Describe response: `"ProviderDetails": { "api_version": "v17.0",
    #     "attributes_url": "https://graph.facebook.com/v17.0/me?fields=",
    #     "attributes_url_add_attributes": "true", "authorize_scopes":
    #     "public_profile, email", "authorize_url":
    #     "https://www.facebook.com/v17.0/dialog/oauth", "client_id":
    #     "1example23456789", "client_secret": "provider-app-client-secret",
    #     "token_request_method": "GET", "token_url":
    #     "https://graph.facebook.com/v17.0/oauth/access_token" }`
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] attribute_mapping
    #   A mapping of IdP attributes to standard and custom user pool
    #   attributes.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] idp_identifiers
    #   A list of IdP identifiers. IdP identifiers are strings that
    #   represent friendly names or domain names of IdPs, for example
    #   `MyIdP` or `auth.example.com`. You can choose to route user
    #   authorization requests to the right IdP with either IdP identifiers
    #   or IdP names. For more information, see `identity_provider` and
    #   `idp_identifier` at [Authorize endpoint][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/authorization-endpoint.html#get-authorize-request-parameters
    #   @return [Array<String>]
    #
    # @!attribute [rw] last_modified_date
    #   The date and time when the item was modified. Amazon Cognito returns
    #   this timestamp in UNIX epoch time format. Your SDK might render the
    #   output in a human-readable format like ISO 8601 or a Java `Date`
    #   object.
    #   @return [Time]
    #
    # @!attribute [rw] creation_date
    #   The date and time when the item was created. Amazon Cognito returns
    #   this timestamp in UNIX epoch time format. Your SDK might render the
    #   output in a human-readable format like ISO 8601 or a Java `Date`
    #   object.
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
    #   The authentication flow that you want to initiate. Each `AuthFlow`
    #   has linked `AuthParameters` that you must submit. The following are
    #   some example flows.
    #
    #   USER\_AUTH
    #
    #   : The entry point for [choice-based authentication][1] with
    #     passwords, one-time passwords, and WebAuthn authenticators.
    #     Request a preferred authentication type or review available
    #     authentication types. From the offered authentication types,
    #     select one in a challenge response and then authenticate with that
    #     method in an additional challenge response. To activate this
    #     setting, your user pool must be in the [ Essentials tier][2] or
    #     higher.
    #
    #   USER\_SRP\_AUTH
    #
    #   : Username-password authentication with the Secure Remote Password
    #     (SRP) protocol. For more information, see [Use SRP password
    #     verification in custom authentication flow][3].
    #
    #   REFRESH\_TOKEN\_AUTH and REFRESH\_TOKEN
    #
    #   : Receive new ID and access tokens when you pass a `REFRESH_TOKEN`
    #     parameter with a valid refresh token as the value. For more
    #     information, see [Using the refresh token][4].
    #
    #   CUSTOM\_AUTH
    #
    #   : Custom authentication with Lambda triggers. For more information,
    #     see [Custom authentication challenge Lambda triggers][5].
    #
    #   USER\_PASSWORD\_AUTH
    #
    #   : Client-side username-password authentication with the password
    #     sent directly in the request. For more information about
    #     client-side and server-side authentication, see [SDK authorization
    #     models][6].
    #
    #   `ADMIN_USER_PASSWORD_AUTH` is a flow type of `AdminInitiateAuth` and
    #   isn't valid for InitiateAuth. `ADMIN_NO_SRP_AUTH` is a legacy
    #   server-side username-password flow and isn't valid for
    #   InitiateAuth.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/authentication-flows-selection-sdk.html#authentication-flows-selection-choice
    #   [2]: https://docs.aws.amazon.com/cognito/latest/developerguide/feature-plans-features-essentials.html
    #   [3]: https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-authentication-flow.html#Using-SRP-password-verification-in-custom-authentication-flow
    #   [4]: https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-using-the-refresh-token.html
    #   [5]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-lambda-challenge.html
    #   [6]: https://docs.aws.amazon.com/cognito/latest/developerguide/authentication-flows-public-server-side.html
    #   @return [String]
    #
    # @!attribute [rw] auth_parameters
    #   The authentication parameters. These are inputs corresponding to the
    #   `AuthFlow` that you're invoking.
    #
    #   The required values are specific to the
    #   InitiateAuthRequest$AuthFlow.
    #
    #   The following are some authentication flows and their parameters.
    #   Add a `SECRET_HASH` parameter if your app client has a client
    #   secret.
    #
    #   * `USER_AUTH`: `USERNAME` (required), `PREFERRED_CHALLENGE`. If you
    #     don't provide a value for `PREFERRED_CHALLENGE`, Amazon Cognito
    #     responds with the `AvailableChallenges` parameter that specifies
    #     the available sign-in methods.
    #
    #   * `USER_SRP_AUTH`: `USERNAME` (required), `SRP_A` (required),
    #     `DEVICE_KEY`.
    #
    #   * `USER_PASSWORD_AUTH`: `USERNAME` (required), `PASSWORD`
    #     (required), `DEVICE_KEY`.
    #
    #   * `REFRESH_TOKEN_AUTH/REFRESH_TOKEN`: `REFRESH_TOKEN` (required),
    #     `DEVICE_KEY`.
    #
    #   * `CUSTOM_AUTH`: `USERNAME` (required), `SECRET_HASH` (if app client
    #     is configured with client secret), `DEVICE_KEY`. To start the
    #     authentication flow with password verification, include
    #     `ChallengeName: SRP_A` and `SRP_A: (The SRP_A Value)`.
    #
    #   For more information about `SECRET_HASH`, see [Computing secret hash
    #   values][1]. For information about `DEVICE_KEY`, see [Working with
    #   user devices in your user pool][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/signing-up-users-in-your-app.html#cognito-user-pools-computing-secret-hash
    #   [2]: https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-device-tracking.html
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] client_metadata
    #   A map of custom key-value pairs that you can provide as input for
    #   certain custom workflows that this action triggers.
    #
    #   You create custom workflows by assigning Lambda functions to user
    #   pool triggers. When you send an `InitiateAuth` request, Amazon
    #   Cognito invokes the Lambda functions that are specified for various
    #   triggers. The `ClientMetadata` value is passed as input to the
    #   functions for only the following triggers.
    #
    #   * Pre sign-up
    #
    #   * Pre authentication
    #
    #   * User migration
    #
    #   When Amazon Cognito invokes the functions for these triggers, it
    #   passes a JSON payload as input to the function. This payload
    #   contains a `validationData` attribute with the data that you
    #   assigned to the `ClientMetadata` parameter in your `InitiateAuth`
    #   request. In your function, `validationData` can contribute to
    #   operations that require data that isn't in the default payload.
    #
    #   `InitiateAuth` requests invokes the following triggers without
    #   `ClientMetadata` as input.
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
    #   * Custom email sender
    #
    #   * Custom SMS sender
    #
    #   For more information, see [ Using Lambda triggers][1] in the *Amazon
    #   Cognito Developer Guide*.
    #
    #   <note markdown="1"> When you use the `ClientMetadata` parameter, note that Amazon
    #   Cognito won't do the following:
    #
    #    * Store the `ClientMetadata` value. This data is available only to
    #     Lambda triggers that are assigned to a user pool to support custom
    #     workflows. If your user pool configuration doesn't include
    #     triggers, the `ClientMetadata` parameter serves no purpose.
    #
    #   * Validate the `ClientMetadata` value.
    #
    #   * Encrypt the `ClientMetadata` value. Don't send sensitive
    #     information in this parameter.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-working-with-aws-lambda-triggers.html
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] client_id
    #   The ID of the app client that your user wants to sign in to.
    #   @return [String]
    #
    # @!attribute [rw] analytics_metadata
    #   Information that supports analytics outcomes with Amazon Pinpoint,
    #   including the user's endpoint ID. The endpoint ID is a destination
    #   for Amazon Pinpoint push notifications, for example a device
    #   identifier, email address, or phone number.
    #   @return [Types::AnalyticsMetadataType]
    #
    # @!attribute [rw] user_context_data
    #   Contextual data about your user session like the device fingerprint,
    #   IP address, or location. Amazon Cognito threat protection evaluates
    #   the risk of an authentication event based on the context that your
    #   app generates and passes to Amazon Cognito when it makes API
    #   requests.
    #
    #   For more information, see [Collecting data for threat protection in
    #   applications][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-settings-viewing-threat-protection-app.html
    #   @return [Types::UserContextDataType]
    #
    # @!attribute [rw] session
    #   The optional session ID from a `ConfirmSignUp` API request. You can
    #   sign in a user directly from the sign-up process with the
    #   `USER_AUTH` authentication flow. When you pass the session ID to
    #   `InitiateAuth`, Amazon Cognito assumes the SMS or email message
    #   one-time verification password from `ConfirmSignUp` as the primary
    #   authentication factor. You're not required to submit this code a
    #   second time. This option is only valid for users who have confirmed
    #   their sign-up and are signing in for the first time within the
    #   authentication flow session duration of the session ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/InitiateAuthRequest AWS API Documentation
    #
    class InitiateAuthRequest < Struct.new(
      :auth_flow,
      :auth_parameters,
      :client_metadata,
      :client_id,
      :analytics_metadata,
      :user_context_data,
      :session)
      SENSITIVE = [:auth_parameters, :client_id, :user_context_data, :session]
      include Aws::Structure
    end

    # Initiates the authentication response.
    #
    # @!attribute [rw] challenge_name
    #   The name of an additional authentication challenge that you must
    #   respond to.
    #
    #   Possible challenges include the following:
    #
    #   <note markdown="1"> All of the following challenges require `USERNAME` and, when the app
    #   client has a client secret, `SECRET_HASH` in the parameters.
    #
    #    </note>
    #
    #   * `WEB_AUTHN`: Respond to the challenge with the results of a
    #     successful authentication with a WebAuthn authenticator, or
    #     passkey. Examples of WebAuthn authenticators include biometric
    #     devices and security keys.
    #
    #   * `PASSWORD`: Respond with `USER_PASSWORD_AUTH` parameters:
    #     `USERNAME` (required), `PASSWORD` (required), `SECRET_HASH`
    #     (required if the app client is configured with a client secret),
    #     `DEVICE_KEY`.
    #
    #   * `PASSWORD_SRP`: Respond with `USER_SRP_AUTH` parameters:
    #     `USERNAME` (required), `SRP_A` (required), `SECRET_HASH` (required
    #     if the app client is configured with a client secret),
    #     `DEVICE_KEY`.
    #
    #   * `SELECT_CHALLENGE`: Respond to the challenge with `USERNAME` and
    #     an `ANSWER` that matches one of the challenge types in the
    #     `AvailableChallenges` response parameter.
    #
    #   * `SMS_MFA`: Respond with an `SMS_MFA_CODE` that your user pool
    #     delivered in an SMS message.
    #
    #   * `EMAIL_OTP`: Respond with an `EMAIL_OTP_CODE` that your user pool
    #     delivered in an email message.
    #
    #   * `PASSWORD_VERIFIER`: Respond with `PASSWORD_CLAIM_SIGNATURE`,
    #     `PASSWORD_CLAIM_SECRET_BLOCK`, and `TIMESTAMP` after client-side
    #     SRP calculations.
    #
    #   * `CUSTOM_CHALLENGE`: This is returned if your custom authentication
    #     flow determines that the user should pass another challenge before
    #     tokens are issued. The parameters of the challenge are determined
    #     by your Lambda function.
    #
    #   * `DEVICE_SRP_AUTH`: Respond with the initial parameters of device
    #     SRP authentication. For more information, see [Signing in with a
    #     device][1].
    #
    #   * `DEVICE_PASSWORD_VERIFIER`: Respond with
    #     `PASSWORD_CLAIM_SIGNATURE`, `PASSWORD_CLAIM_SECRET_BLOCK`, and
    #     `TIMESTAMP` after client-side SRP calculations. For more
    #     information, see [Signing in with a device][1].
    #
    #   * `NEW_PASSWORD_REQUIRED`: For users who are required to change
    #     their passwords after successful first login. Respond to this
    #     challenge with `NEW_PASSWORD` and any required attributes that
    #     Amazon Cognito returned in the `requiredAttributes` parameter. You
    #     can also set values for attributes that aren't required by your
    #     user pool and that your app client can write.
    #
    #     Amazon Cognito only returns this challenge for users who have
    #     temporary passwords. When you create passwordless users, you must
    #     provide values for all required attributes.
    #
    #     <note markdown="1"> In a `NEW_PASSWORD_REQUIRED` challenge response, you can't modify
    #     a required attribute that already has a value. In
    #     `AdminRespondToAuthChallenge` or `RespondToAuthChallenge`, set a
    #     value for any keys that Amazon Cognito returned in the
    #     `requiredAttributes` parameter, then use the
    #     `AdminUpdateUserAttributes` or `UpdateUserAttributes` API
    #     operation to modify the value of any additional attributes.
    #
    #      </note>
    #
    #   * `MFA_SETUP`: For users who are required to setup an MFA factor
    #     before they can sign in. The MFA types activated for the user pool
    #     will be listed in the challenge parameters `MFAS_CAN_SETUP` value.
    #
    #     To set up time-based one-time password (TOTP) MFA, use the session
    #     returned in this challenge from `InitiateAuth` or
    #     `AdminInitiateAuth` as an input to `AssociateSoftwareToken`. Then,
    #     use the session returned by `VerifySoftwareToken` as an input to
    #     `RespondToAuthChallenge` or `AdminRespondToAuthChallenge` with
    #     challenge name `MFA_SETUP` to complete sign-in.
    #
    #     To set up SMS or email MFA, collect a `phone_number` or `email`
    #     attribute for the user. Then restart the authentication flow with
    #     an `InitiateAuth` or `AdminInitiateAuth` request.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-device-tracking.html#user-pools-remembered-devices-signing-in-with-a-device
    #   @return [String]
    #
    # @!attribute [rw] session
    #   The session identifier that links a challenge response to the
    #   initial authentication request. If the user must pass another
    #   challenge, Amazon Cognito returns a session ID and challenge
    #   parameters.
    #   @return [String]
    #
    # @!attribute [rw] challenge_parameters
    #   The required parameters of the `ChallengeName` challenge.
    #
    #   All challenges require `USERNAME`. They also require `SECRET_HASH`
    #   if your app client has a client secret.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] authentication_result
    #   The result of a successful and complete authentication request. This
    #   result is only returned if the user doesn't need to pass another
    #   challenge. If they must pass another challenge before they get
    #   tokens, Amazon Cognito returns a challenge in `ChallengeName`,
    #   `ChallengeParameters`, and `Session` response parameters.
    #   @return [Types::AuthenticationResultType]
    #
    # @!attribute [rw] available_challenges
    #   This response parameter lists the available authentication
    #   challenges that users can select from in [choice-based
    #   authentication][1]. For example, they might be able to choose
    #   between passkey authentication, a one-time password from an SMS
    #   message, and a traditional password.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/authentication-flows-selection-sdk.html#authentication-flows-selection-choice
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/InitiateAuthResponse AWS API Documentation
    #
    class InitiateAuthResponse < Struct.new(
      :challenge_name,
      :session,
      :challenge_parameters,
      :authentication_result,
      :available_challenges)
      SENSITIVE = [:session]
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
    # @!attribute [rw] reason_code
    #   The reason code of the exception.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/InvalidParameterException AWS API Documentation
    #
    class InvalidParameterException < Struct.new(
      :message,
      :reason_code)
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

    # A collection of user pool Lambda triggers. Amazon Cognito invokes
    # triggers at several possible stages of user pool operations. Triggers
    # can modify the outcome of the operations that invoked them.
    #
    # @!attribute [rw] pre_sign_up
    #   The configuration of a [pre sign-up Lambda trigger][1] in a user
    #   pool. This trigger evaluates new users and can bypass confirmation,
    #   [link a federated user profile][2], or block sign-up requests.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-lambda-pre-sign-up.html
    #   [2]: https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-identity-federation-consolidate-users.html
    #   @return [String]
    #
    # @!attribute [rw] custom_message
    #   A custom message Lambda trigger. This trigger is an opportunity to
    #   customize all SMS and email messages from your user pool. When a
    #   custom message trigger is active, your user pool routes all messages
    #   to a Lambda function that returns a runtime-customized message
    #   subject and body for your user pool to deliver to a user.
    #   @return [String]
    #
    # @!attribute [rw] post_confirmation
    #   The configuration of a [post confirmation Lambda trigger][1] in a
    #   user pool. This trigger can take custom actions after a user
    #   confirms their user account and their email address or phone number.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-lambda-post-confirmation.html
    #   @return [String]
    #
    # @!attribute [rw] pre_authentication
    #   The configuration of a [pre authentication trigger][1] in a user
    #   pool. This trigger can evaluate and modify user sign-in events.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-lambda-pre-authentication.html
    #   @return [String]
    #
    # @!attribute [rw] post_authentication
    #   The configuration of a [post authentication Lambda trigger][1] in a
    #   user pool. This trigger can take custom actions after a user signs
    #   in.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-lambda-post-authentication.html
    #   @return [String]
    #
    # @!attribute [rw] define_auth_challenge
    #   The configuration of a define auth challenge Lambda trigger, one of
    #   three triggers in the sequence of the [custom authentication
    #   challenge triggers][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-lambda-challenge.html
    #   @return [String]
    #
    # @!attribute [rw] create_auth_challenge
    #   The configuration of a create auth challenge Lambda trigger, one of
    #   three triggers in the sequence of the [custom authentication
    #   challenge triggers][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-lambda-challenge.html
    #   @return [String]
    #
    # @!attribute [rw] verify_auth_challenge_response
    #   The configuration of a verify auth challenge Lambda trigger, one of
    #   three triggers in the sequence of the [custom authentication
    #   challenge triggers][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-lambda-challenge.html
    #   @return [String]
    #
    # @!attribute [rw] pre_token_generation
    #   The legacy configuration of a [pre token generation Lambda
    #   trigger][1] in a user pool.
    #
    #   Set this parameter for legacy purposes. If you also set an ARN in
    #   `PreTokenGenerationConfig`, its value must be identical to
    #   `PreTokenGeneration`. For new instances of pre token generation
    #   triggers, set the `LambdaArn` of `PreTokenGenerationConfig`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-lambda-pre-token-generation.html
    #   @return [String]
    #
    # @!attribute [rw] user_migration
    #   The configuration of a [migrate user Lambda trigger][1] in a user
    #   pool. This trigger can create user profiles when users sign in or
    #   attempt to reset their password with credentials that don't exist
    #   yet.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-lambda-migrate-user.html
    #   @return [String]
    #
    # @!attribute [rw] pre_token_generation_config
    #   The detailed configuration of a [pre token generation Lambda
    #   trigger][1] in a user pool. If you also set an ARN in
    #   `PreTokenGeneration`, its value must be identical to
    #   `PreTokenGenerationConfig`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-lambda-pre-token-generation.html
    #   @return [Types::PreTokenGenerationVersionConfigType]
    #
    # @!attribute [rw] custom_sms_sender
    #   The configuration of a custom SMS sender Lambda trigger. This
    #   trigger routes all SMS notifications from a user pool to a Lambda
    #   function that delivers the message using custom logic.
    #   @return [Types::CustomSMSLambdaVersionConfigType]
    #
    # @!attribute [rw] custom_email_sender
    #   The configuration of a custom email sender Lambda trigger. This
    #   trigger routes all email notifications from a user pool to a Lambda
    #   function that delivers the message using custom logic.
    #   @return [Types::CustomEmailLambdaVersionConfigType]
    #
    # @!attribute [rw] kms_key_id
    #   The ARN of an [KMS key][1]. Amazon Cognito uses the key to encrypt
    #   codes and temporary passwords sent to custom sender Lambda triggers.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#master_keys
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
      :pre_token_generation_config,
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
    #   A valid access token that Amazon Cognito issued to the currently
    #   signed-in user. Must include a scope claim for
    #   `aws.cognito.signin.user.admin`.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The maximum number of devices that you want Amazon Cognito to return
    #   in the response.
    #   @return [Integer]
    #
    # @!attribute [rw] pagination_token
    #   This API operation returns a limited number of results. The
    #   pagination token is an identifier that you can present in an
    #   additional API request with the same parameters. When you include
    #   the pagination token, Amazon Cognito returns the next set of items
    #   after the current list. Subsequent requests return a new pagination
    #   token. By use of this token, you can paginate through the full list
    #   of items.
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
    #   An array of devices and their details. Each entry that's returned
    #   includes device information, last-accessed and created dates, and
    #   the device key.
    #   @return [Array<Types::DeviceType>]
    #
    # @!attribute [rw] pagination_token
    #   The identifier that Amazon Cognito returned with the previous
    #   request to this operation. When you include a pagination token in
    #   your request, Amazon Cognito returns the next set of items in the
    #   list. By use of this token, you can paginate through the full list
    #   of items.
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
    #   The ID of the user pool where you want to list user groups.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The maximum number of groups that you want Amazon Cognito to return
    #   in the response.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   This API operation returns a limited number of results. The
    #   pagination token is an identifier that you can present in an
    #   additional API request with the same parameters. When you include
    #   the pagination token, Amazon Cognito returns the next set of items
    #   after the current list. Subsequent requests return a new pagination
    #   token. By use of this token, you can paginate through the full list
    #   of items.
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
    #   An array of groups and their details. Each entry that's returned
    #   includes description, precedence, and IAM role values.
    #   @return [Array<Types::GroupType>]
    #
    # @!attribute [rw] next_token
    #   The identifier that Amazon Cognito returned with the previous
    #   request to this operation. When you include a pagination token in
    #   your request, Amazon Cognito returns the next set of items in the
    #   list. By use of this token, you can paginate through the full list
    #   of items.
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
    #   The ID of the user pool where you want to list IdPs.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of IdPs that you want Amazon Cognito to return in
    #   the response.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   This API operation returns a limited number of results. The
    #   pagination token is an identifier that you can present in an
    #   additional API request with the same parameters. When you include
    #   the pagination token, Amazon Cognito returns the next set of items
    #   after the current list. Subsequent requests return a new pagination
    #   token. By use of this token, you can paginate through the full list
    #   of items.
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
    #   An array of the IdPs in your user pool. For each, the response
    #   includes identifiers, the IdP name and type, and trust-relationship
    #   details like the issuer URL.
    #   @return [Array<Types::ProviderDescription>]
    #
    # @!attribute [rw] next_token
    #   The identifier that Amazon Cognito returned with the previous
    #   request to this operation. When you include a pagination token in
    #   your request, Amazon Cognito returns the next set of items in the
    #   list. By use of this token, you can paginate through the full list
    #   of items.
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
    #   The ID of the user pool where you want to list resource servers.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of resource servers that you want Amazon Cognito
    #   to return in the response.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   This API operation returns a limited number of results. The
    #   pagination token is an identifier that you can present in an
    #   additional API request with the same parameters. When you include
    #   the pagination token, Amazon Cognito returns the next set of items
    #   after the current list. Subsequent requests return a new pagination
    #   token. By use of this token, you can paginate through the full list
    #   of items.
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
    #   An array of resource servers and the details of their configuration.
    #   For each, the response includes names, identifiers, and custom
    #   scopes.
    #   @return [Array<Types::ResourceServerType>]
    #
    # @!attribute [rw] next_token
    #   The identifier that Amazon Cognito returned with the previous
    #   request to this operation. When you include a pagination token in
    #   your request, Amazon Cognito returns the next set of items in the
    #   list. By use of this token, you can paginate through the full list
    #   of items.
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
    #   The ID of the user pool where you want to list import jobs.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of import jobs that you want Amazon Cognito to
    #   return in the response.
    #   @return [Integer]
    #
    # @!attribute [rw] pagination_token
    #   This API operation returns a limited number of results. The
    #   pagination token is an identifier that you can present in an
    #   additional API request with the same parameters. When you include
    #   the pagination token, Amazon Cognito returns the next set of items
    #   after the current list. Subsequent requests return a new pagination
    #   token. By use of this token, you can paginate through the full list
    #   of items.
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
    #   An array of user import jobs from the requested user pool. For each,
    #   the response includes logging destination, status, and the Amazon S3
    #   pre-signed URL for CSV upload.
    #   @return [Array<Types::UserImportJobType>]
    #
    # @!attribute [rw] pagination_token
    #   The identifier that Amazon Cognito returned with the previous
    #   request to this operation. When you include a pagination token in
    #   your request, Amazon Cognito returns the next set of items in the
    #   list. By use of this token, you can paginate through the full list
    #   of items.
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
    #   The ID of the user pool where you want to list user pool clients.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of app clients that you want Amazon Cognito to
    #   return in the response.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   This API operation returns a limited number of results. The
    #   pagination token is an identifier that you can present in an
    #   additional API request with the same parameters. When you include
    #   the pagination token, Amazon Cognito returns the next set of items
    #   after the current list. Subsequent requests return a new pagination
    #   token. By use of this token, you can paginate through the full list
    #   of items.
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
    #   An array of app clients and their details. Includes app client ID
    #   and name.
    #   @return [Array<Types::UserPoolClientDescription>]
    #
    # @!attribute [rw] next_token
    #   The identifier that Amazon Cognito returned with the previous
    #   request to this operation. When you include a pagination token in
    #   your request, Amazon Cognito returns the next set of items in the
    #   list. By use of this token, you can paginate through the full list
    #   of items.
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
    #   This API operation returns a limited number of results. The
    #   pagination token is an identifier that you can present in an
    #   additional API request with the same parameters. When you include
    #   the pagination token, Amazon Cognito returns the next set of items
    #   after the current list. Subsequent requests return a new pagination
    #   token. By use of this token, you can paginate through the full list
    #   of items.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of user pools that you want Amazon Cognito to
    #   return in the response.
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
    #   An array of user pools and their configuration details.
    #   @return [Array<Types::UserPoolDescriptionType>]
    #
    # @!attribute [rw] next_token
    #   The identifier that Amazon Cognito returned with the previous
    #   request to this operation. When you include a pagination token in
    #   your request, Amazon Cognito returns the next set of items in the
    #   list. By use of this token, you can paginate through the full list
    #   of items.
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
    #   The ID of the user pool where you want to view the membership of the
    #   requested group.
    #   @return [String]
    #
    # @!attribute [rw] group_name
    #   The name of the group that you want to query for user membership.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The maximum number of groups that you want Amazon Cognito to return
    #   in the response.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   This API operation returns a limited number of results. The
    #   pagination token is an identifier that you can present in an
    #   additional API request with the same parameters. When you include
    #   the pagination token, Amazon Cognito returns the next set of items
    #   after the current list. Subsequent requests return a new pagination
    #   token. By use of this token, you can paginate through the full list
    #   of items.
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
    #   An array of users who are members in the group, and their
    #   attributes.
    #   @return [Array<Types::UserType>]
    #
    # @!attribute [rw] next_token
    #   The identifier that Amazon Cognito returned with the previous
    #   request to this operation. When you include a pagination token in
    #   your request, Amazon Cognito returns the next set of items in the
    #   list. By use of this token, you can paginate through the full list
    #   of items.
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
    #   The ID of the user pool where you want to display or search for
    #   users.
    #   @return [String]
    #
    # @!attribute [rw] attributes_to_get
    #   A JSON array of user attribute names, for example `given_name`, that
    #   you want Amazon Cognito to include in the response for each user.
    #   When you don't provide an `AttributesToGet` parameter, Amazon
    #   Cognito returns all attributes for each user.
    #
    #   Use `AttributesToGet` with required attributes in your user pool, or
    #   in conjunction with `Filter`. Amazon Cognito returns an error if not
    #   all users in the results have set a value for the attribute you
    #   request. Attributes that you can't filter on, including custom
    #   attributes, must have a value set in every user profile before an
    #   `AttributesToGet` parameter returns results.
    #   @return [Array<String>]
    #
    # @!attribute [rw] limit
    #   The maximum number of users that you want Amazon Cognito to return
    #   in the response.
    #   @return [Integer]
    #
    # @!attribute [rw] pagination_token
    #   This API operation returns a limited number of results. The
    #   pagination token is an identifier that you can present in an
    #   additional API request with the same parameters. When you include
    #   the pagination token, Amazon Cognito returns the next set of items
    #   after the current list. Subsequent requests return a new pagination
    #   token. By use of this token, you can paginate through the full list
    #   of items.
    #   @return [String]
    #
    # @!attribute [rw] filter
    #   A filter string of the form `"AttributeName Filter-Type
    #   "AttributeValue"`. Quotation marks within the filter string must be
    #   escaped using the backslash (``) character. For example,
    #   `"family_name = "Reddy""`.
    #
    #   * *AttributeName*: The name of the attribute to search for. You can
    #     only search for one attribute at a time.
    #
    #   * *Filter-Type*: For an exact match, use `=`, for example,
    #     "`given_name = "Jon"`". For a prefix ("starts with") match,
    #     use `^=`, for example, "`given_name ^= "Jon"`".
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
    #   An array of user pool users who match your query, and their
    #   attributes.
    #   @return [Array<Types::UserType>]
    #
    # @!attribute [rw] pagination_token
    #   The identifier that Amazon Cognito returned with the previous
    #   request to this operation. When you include a pagination token in
    #   your request, Amazon Cognito returns the next set of items in the
    #   list. By use of this token, you can paginate through the full list
    #   of items.
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

    # @!attribute [rw] access_token
    #   A valid access token that Amazon Cognito issued to the currently
    #   signed-in user. Must include a scope claim for
    #   `aws.cognito.signin.user.admin`.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   This API operation returns a limited number of results. The
    #   pagination token is an identifier that you can present in an
    #   additional API request with the same parameters. When you include
    #   the pagination token, Amazon Cognito returns the next set of items
    #   after the current list. Subsequent requests return a new pagination
    #   token. By use of this token, you can paginate through the full list
    #   of items.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of the user's passkey credentials that you want
    #   to return.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/ListWebAuthnCredentialsRequest AWS API Documentation
    #
    class ListWebAuthnCredentialsRequest < Struct.new(
      :access_token,
      :next_token,
      :max_results)
      SENSITIVE = [:access_token]
      include Aws::Structure
    end

    # @!attribute [rw] credentials
    #   A list of registered passkeys for a user.
    #   @return [Array<Types::WebAuthnCredentialDescription>]
    #
    # @!attribute [rw] next_token
    #   The identifier that Amazon Cognito returned with the previous
    #   request to this operation. When you include a pagination token in
    #   your request, Amazon Cognito returns the next set of items in the
    #   list. By use of this token, you can paginate through the full list
    #   of items.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/ListWebAuthnCredentialsResponse AWS API Documentation
    #
    class ListWebAuthnCredentialsResponse < Struct.new(
      :credentials,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration of user event logs to an external Amazon Web
    # Services service like Amazon Data Firehose, Amazon S3, or Amazon
    # CloudWatch Logs.
    #
    # @!attribute [rw] log_level
    #   The `errorlevel` selection of logs that a user pool sends for
    #   detailed activity logging. To send `userNotification` activity with
    #   [information about message delivery][1], choose `ERROR` with
    #   `CloudWatchLogsConfiguration`. To send `userAuthEvents` activity
    #   with user logs from threat protection with the Plus feature plan,
    #   choose `INFO` with one of `CloudWatchLogsConfiguration`,
    #   `FirehoseConfiguration`, or `S3Configuration`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/exporting-quotas-and-usage.html
    #   @return [String]
    #
    # @!attribute [rw] event_source
    #   The source of events that your user pool sends for logging. To send
    #   error-level logs about user notification activity, set to
    #   `userNotification`. To send info-level logs about threat-protection
    #   user activity in user pools with the Plus feature plan, set to
    #   `userAuthEvents`.
    #   @return [String]
    #
    # @!attribute [rw] cloud_watch_logs_configuration
    #   The CloudWatch log group destination of user pool detailed activity
    #   logs, or of user activity log export with threat protection.
    #   @return [Types::CloudWatchLogsConfigurationType]
    #
    # @!attribute [rw] s3_configuration
    #   The Amazon S3 bucket destination of user activity log export with
    #   threat protection. To activate this setting, your user pool must be
    #   on the [ Plus tier][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/feature-plans-features-plus.html
    #   @return [Types::S3ConfigurationType]
    #
    # @!attribute [rw] firehose_configuration
    #   The Amazon Data Firehose stream destination of user activity log
    #   export with threat protection. To activate this setting, your user
    #   pool must be on the [ Plus tier][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/feature-plans-features-plus.html
    #   @return [Types::FirehoseConfigurationType]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/LogConfigurationType AWS API Documentation
    #
    class LogConfigurationType < Struct.new(
      :log_level,
      :event_source,
      :cloud_watch_logs_configuration,
      :s3_configuration,
      :firehose_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # The logging parameters of a user pool, as returned in the response to
    # a `GetLogDeliveryConfiguration` request.
    #
    # @!attribute [rw] user_pool_id
    #   The ID of the user pool where you configured logging.
    #   @return [String]
    #
    # @!attribute [rw] log_configurations
    #   A logging destination of a user pool. User pools can have multiple
    #   logging destinations for message-delivery and user-activity logs.
    #   @return [Array<Types::LogConfigurationType>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/LogDeliveryConfigurationType AWS API Documentation
    #
    class LogDeliveryConfigurationType < Struct.new(
      :user_pool_id,
      :log_configurations)
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

    # This exception is thrown when you attempt to apply a managed login
    # branding style to an app client that already has an assigned style.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/ManagedLoginBrandingExistsException AWS API Documentation
    #
    class ManagedLoginBrandingExistsException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A managed login branding style that's assigned to a user pool app
    # client.
    #
    # @!attribute [rw] managed_login_branding_id
    #   The ID of the managed login branding style.
    #   @return [String]
    #
    # @!attribute [rw] user_pool_id
    #   The user pool where the branding style is assigned.
    #   @return [String]
    #
    # @!attribute [rw] use_cognito_provided_values
    #   When true, applies the default branding style options. This option
    #   reverts to default style options that are managed by Amazon Cognito.
    #   You can modify them later in the branding designer.
    #
    #   When you specify `true` for this option, you must also omit values
    #   for `Settings` and `Assets` in the request.
    #   @return [Boolean]
    #
    # @!attribute [rw] settings
    #   A JSON file, encoded as a `Document` type, with the the settings
    #   that you want to apply to your style.
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @!attribute [rw] assets
    #   An array of image files that you want to apply to roles like
    #   backgrounds, logos, and icons. Each object must also indicate
    #   whether it is for dark mode, light mode, or browser-adaptive mode.
    #   @return [Array<Types::AssetType>]
    #
    # @!attribute [rw] creation_date
    #   The date and time when the item was created. Amazon Cognito returns
    #   this timestamp in UNIX epoch time format. Your SDK might render the
    #   output in a human-readable format like ISO 8601 or a Java `Date`
    #   object.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_date
    #   The date and time when the item was modified. Amazon Cognito returns
    #   this timestamp in UNIX epoch time format. Your SDK might render the
    #   output in a human-readable format like ISO 8601 or a Java `Date`
    #   object.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/ManagedLoginBrandingType AWS API Documentation
    #
    class ManagedLoginBrandingType < Struct.new(
      :managed_login_branding_id,
      :user_pool_id,
      :use_cognito_provided_values,
      :settings,
      :assets,
      :creation_date,
      :last_modified_date)
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

    # Information that your user pool responds with in
    # `AuthenticationResult`when you configure it to remember devices and a
    # user signs in with an unrecognized device. Amazon Cognito presents a
    # new device key that you can use to set up [device authentication][1]
    # in a "Remember me on this device" authentication model.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-device-tracking.html
    #
    # @!attribute [rw] device_key
    #   The device key, an identifier used in generating the
    #   `DEVICE_PASSWORD_VERIFIER` for device SRP authentication.
    #   @return [String]
    #
    # @!attribute [rw] device_group_key
    #   The device group key, an identifier used in generating the
    #   `DEVICE_PASSWORD_VERIFIER` for device SRP authentication.
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

    # The configuration for Amazon SES email messages that threat protection
    # sends to a user when your adaptive authentication automated response
    # has a *Notify* action.
    #
    # @!attribute [rw] from
    #   The email address that sends the email message. The address must be
    #   either individually verified with Amazon Simple Email Service, or
    #   from a domain that has been verified with Amazon SES.
    #   @return [String]
    #
    # @!attribute [rw] reply_to
    #   The reply-to email address of an email template.
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
    #   The template for the email message that your user pool sends when a
    #   detected risk event is blocked.
    #   @return [Types::NotifyEmailType]
    #
    # @!attribute [rw] no_action_email
    #   The template for the email message that your user pool sends when no
    #   action is taken in response to a detected risk.
    #   @return [Types::NotifyEmailType]
    #
    # @!attribute [rw] mfa_email
    #   The template for the email message that your user pool sends when
    #   MFA is challenged in response to a detected risk.
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

    # The template for email messages that threat protection sends to a user
    # when your threat protection automated response has a *Notify* action.
    #
    # @!attribute [rw] subject
    #   The subject of the threat protection email notification.
    #   @return [String]
    #
    # @!attribute [rw] html_body
    #   The body of an email notification formatted in HTML. Choose an
    #   `HtmlBody` or a `TextBody` to send an HTML-formatted or plaintext
    #   message, respectively.
    #   @return [String]
    #
    # @!attribute [rw] text_body
    #   The body of an email notification formatted in plaintext. Choose an
    #   `HtmlBody` or a `TextBody` to send an HTML-formatted or plaintext
    #   message, respectively.
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
    # type, for example `custom:age`.
    #
    # @!attribute [rw] min_value
    #   The minimum value of an attribute that is of the number data type.
    #   @return [String]
    #
    # @!attribute [rw] max_value
    #   The maximum length of a number attribute value. Must be a number
    #   less than or equal to `2^1023`, represented as a string with a
    #   length of 131072 characters or fewer.
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

    # The message returned when a user's new password matches a previous
    # password and doesn't comply with the password-history policy.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/PasswordHistoryPolicyViolationException AWS API Documentation
    #
    class PasswordHistoryPolicyViolationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The password policy settings for a user pool, including complexity,
    # history, and length requirements.
    #
    # @!attribute [rw] minimum_length
    #   The minimum length of the password in the policy that you have set.
    #   This value can't be less than 6.
    #   @return [Integer]
    #
    # @!attribute [rw] require_uppercase
    #   The requirement in a password policy that users must include at
    #   least one uppercase letter in their password.
    #   @return [Boolean]
    #
    # @!attribute [rw] require_lowercase
    #   The requirement in a password policy that users must include at
    #   least one lowercase letter in their password.
    #   @return [Boolean]
    #
    # @!attribute [rw] require_numbers
    #   The requirement in a password policy that users must include at
    #   least one number in their password.
    #   @return [Boolean]
    #
    # @!attribute [rw] require_symbols
    #   The requirement in a password policy that users must include at
    #   least one symbol in their password.
    #   @return [Boolean]
    #
    # @!attribute [rw] password_history_size
    #   The number of previous passwords that you want Amazon Cognito to
    #   restrict each user from reusing. Users can't set a password that
    #   matches any of `n` previous passwords, where `n` is the value of
    #   `PasswordHistorySize`.
    #   @return [Integer]
    #
    # @!attribute [rw] temporary_password_validity_days
    #   The number of days a temporary password is valid in the password
    #   policy. If the user doesn't sign in during this time, an
    #   administrator must reset their password. Defaults to `7`. If you
    #   submit a value of `0`, Amazon Cognito treats it as a null value and
    #   sets `TemporaryPasswordValidityDays` to its default value.
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
      :password_history_size,
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

    # The properties of a pre token generation Lambda trigger.
    #
    # @!attribute [rw] lambda_version
    #   The user pool trigger version of the request that Amazon Cognito
    #   sends to your Lambda function. Higher-numbered versions add fields
    #   that support new features.
    #   @return [String]
    #
    # @!attribute [rw] lambda_arn
    #   The Amazon Resource Name (ARN) of the function that you want to
    #   assign to your Lambda trigger.
    #
    #   This parameter and the `PreTokenGeneration` property of
    #   `LambdaConfig` have the same value. For new instances of pre token
    #   generation triggers, set `LambdaArn`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/PreTokenGenerationVersionConfigType AWS API Documentation
    #
    class PreTokenGenerationVersionConfigType < Struct.new(
      :lambda_version,
      :lambda_arn)
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

    # The details of a user pool identity provider (IdP), including name and
    # type.
    #
    # @!attribute [rw] provider_name
    #   The name of the IdP, for example `MySAMLProvider`.
    #   @return [String]
    #
    # @!attribute [rw] provider_type
    #   The type of the provider, for example `SAML`. Amazon Cognito
    #   supports SAML 2.0, OIDC, and social IdPs. User pools list supported
    #   social IdPs by name in this response parameter: Facebook, Google,
    #   Login with Amazon, and Sign in with Apple.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_date
    #   The date and time when the item was modified. Amazon Cognito returns
    #   this timestamp in UNIX epoch time format. Your SDK might render the
    #   output in a human-readable format like ISO 8601 or a Java `Date`
    #   object.
    #   @return [Time]
    #
    # @!attribute [rw] creation_date
    #   The date and time when the item was created. Amazon Cognito returns
    #   this timestamp in UNIX epoch time format. Your SDK might render the
    #   output in a human-readable format like ISO 8601 or a Java `Date`
    #   object.
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

    # The characteristics of a source or destination user for linking a
    # federated user profile to a local user profile.
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

    # A recovery option for a user. The `AccountRecoverySettingType` data
    # type is an array of this object. Each `RecoveryOptionType` has a
    # priority property that determines whether it is a primary or secondary
    # option.
    #
    # For example, if `verified_email` has a priority of `1` and
    # `verified_phone_number` has a priority of `2`, your user pool sends
    # account-recovery messages to a verified email address but falls back
    # to an SMS message if the user has a verified phone number. The
    # `admin_only` option prevents self-service account recovery.
    #
    # @!attribute [rw] priority
    #   Your priority preference for using the specified attribute in
    #   account recovery. The highest priority is `1`.
    #   @return [Integer]
    #
    # @!attribute [rw] name
    #   The recovery method that this object sets a recovery option for.
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
    #   The ID of the user pool app client where the user signed up.
    #   @return [String]
    #
    # @!attribute [rw] secret_hash
    #   A keyed-hash message authentication code (HMAC) calculated using the
    #   secret key of a user pool client and username plus the client ID in
    #   the message. For more information about `SecretHash`, see [Computing
    #   secret hash values][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/signing-up-users-in-your-app.html#cognito-user-pools-computing-secret-hash
    #   @return [String]
    #
    # @!attribute [rw] user_context_data
    #   Contextual data about your user session like the device fingerprint,
    #   IP address, or location. Amazon Cognito threat protection evaluates
    #   the risk of an authentication event based on the context that your
    #   app generates and passes to Amazon Cognito when it makes API
    #   requests.
    #
    #   For more information, see [Collecting data for threat protection in
    #   applications][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-settings-viewing-threat-protection-app.html
    #   @return [Types::UserContextDataType]
    #
    # @!attribute [rw] username
    #   The name of the user that you want to query or modify. The value of
    #   this parameter is typically your user's username, but it can be any
    #   of their alias attributes. If `username` isn't an alias attribute
    #   in your user pool, this value must be the `sub` of a local user or
    #   the username of a user from a third-party IdP.
    #   @return [String]
    #
    # @!attribute [rw] analytics_metadata
    #   Information that supports analytics outcomes with Amazon Pinpoint,
    #   including the user's endpoint ID. The endpoint ID is a destination
    #   for Amazon Pinpoint push notifications, for example a device
    #   identifier, email address, or phone number.
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
    #   For more information, see [ Using Lambda triggers][1] in the *Amazon
    #   Cognito Developer Guide*.
    #
    #   <note markdown="1"> When you use the `ClientMetadata` parameter, note that Amazon
    #   Cognito won't do the following:
    #
    #    * Store the `ClientMetadata` value. This data is available only to
    #     Lambda triggers that are assigned to a user pool to support custom
    #     workflows. If your user pool configuration doesn't include
    #     triggers, the `ClientMetadata` parameter serves no purpose.
    #
    #   * Validate the `ClientMetadata` value.
    #
    #   * Encrypt the `ClientMetadata` value. Don't send sensitive
    #     information in this parameter.
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
      SENSITIVE = [:client_id, :secret_hash, :user_context_data, :username]
      include Aws::Structure
    end

    # The response from the server when Amazon Cognito makes the request to
    # resend a confirmation code.
    #
    # @!attribute [rw] code_delivery_details
    #   Information about the phone number or email address that Amazon
    #   Cognito sent the confirmation code to.
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

    # One custom scope associated with a user pool resource server. This
    # data type is a member of `ResourceServerScopeType`. For more
    # information, see [ Scopes, M2M, and API authorization with resource
    # servers][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-define-resource-servers.html
    #
    # @!attribute [rw] scope_name
    #   The name of the scope. Amazon Cognito renders custom scopes in the
    #   format `resourceServerIdentifier/ScopeName`. For example, if this
    #   parameter is `exampleScope` in the resource server with the
    #   identifier `exampleResourceServer`, you request and receive the
    #   scope `exampleResourceServer/exampleScope`.
    #   @return [String]
    #
    # @!attribute [rw] scope_description
    #   A friendly description of a custom scope.
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

    # The details of a resource server configuration and associated custom
    # scopes in a user pool.
    #
    # @!attribute [rw] user_pool_id
    #   The ID of the user pool that contains the resource server
    #   configuration.
    #   @return [String]
    #
    # @!attribute [rw] identifier
    #   A unique resource server identifier for the resource server. The
    #   identifier can be an API friendly name like `solar-system-data`. You
    #   can also set an API URL like
    #   `https://solar-system-data-api.example.com` as your identifier.
    #
    #   Amazon Cognito represents scopes in the access token in the format
    #   `$resource-server-identifier/$scope`. Longer scope-identifier
    #   strings increase the size of your access tokens.
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
    #   The ID of the app client where the user is signing in.
    #   @return [String]
    #
    # @!attribute [rw] challenge_name
    #   The name of the challenge that you are responding to.
    #
    #   <note markdown="1"> You can't respond to an `ADMIN_NO_SRP_AUTH` challenge with this
    #   operation.
    #
    #    </note>
    #
    #   Possible challenges include the following:
    #
    #   <note markdown="1"> All of the following challenges require `USERNAME` and, when the app
    #   client has a client secret, `SECRET_HASH` in the parameters.
    #
    #    </note>
    #
    #   * `WEB_AUTHN`: Respond to the challenge with the results of a
    #     successful authentication with a WebAuthn authenticator, or
    #     passkey. Examples of WebAuthn authenticators include biometric
    #     devices and security keys.
    #
    #   * `PASSWORD`: Respond with `USER_PASSWORD_AUTH` parameters:
    #     `USERNAME` (required), `PASSWORD` (required), `SECRET_HASH`
    #     (required if the app client is configured with a client secret),
    #     `DEVICE_KEY`.
    #
    #   * `PASSWORD_SRP`: Respond with `USER_SRP_AUTH` parameters:
    #     `USERNAME` (required), `SRP_A` (required), `SECRET_HASH` (required
    #     if the app client is configured with a client secret),
    #     `DEVICE_KEY`.
    #
    #   * `SELECT_CHALLENGE`: Respond to the challenge with `USERNAME` and
    #     an `ANSWER` that matches one of the challenge types in the
    #     `AvailableChallenges` response parameter.
    #
    #   * `SMS_MFA`: Respond with an `SMS_MFA_CODE` that your user pool
    #     delivered in an SMS message.
    #
    #   * `EMAIL_OTP`: Respond with an `EMAIL_OTP_CODE` that your user pool
    #     delivered in an email message.
    #
    #   * `PASSWORD_VERIFIER`: Respond with `PASSWORD_CLAIM_SIGNATURE`,
    #     `PASSWORD_CLAIM_SECRET_BLOCK`, and `TIMESTAMP` after client-side
    #     SRP calculations.
    #
    #   * `CUSTOM_CHALLENGE`: This is returned if your custom authentication
    #     flow determines that the user should pass another challenge before
    #     tokens are issued. The parameters of the challenge are determined
    #     by your Lambda function.
    #
    #   * `DEVICE_SRP_AUTH`: Respond with the initial parameters of device
    #     SRP authentication. For more information, see [Signing in with a
    #     device][1].
    #
    #   * `DEVICE_PASSWORD_VERIFIER`: Respond with
    #     `PASSWORD_CLAIM_SIGNATURE`, `PASSWORD_CLAIM_SECRET_BLOCK`, and
    #     `TIMESTAMP` after client-side SRP calculations. For more
    #     information, see [Signing in with a device][1].
    #
    #   * `NEW_PASSWORD_REQUIRED`: For users who are required to change
    #     their passwords after successful first login. Respond to this
    #     challenge with `NEW_PASSWORD` and any required attributes that
    #     Amazon Cognito returned in the `requiredAttributes` parameter. You
    #     can also set values for attributes that aren't required by your
    #     user pool and that your app client can write.
    #
    #     Amazon Cognito only returns this challenge for users who have
    #     temporary passwords. When you create passwordless users, you must
    #     provide values for all required attributes.
    #
    #     <note markdown="1"> In a `NEW_PASSWORD_REQUIRED` challenge response, you can't modify
    #     a required attribute that already has a value. In
    #     `AdminRespondToAuthChallenge` or `RespondToAuthChallenge`, set a
    #     value for any keys that Amazon Cognito returned in the
    #     `requiredAttributes` parameter, then use the
    #     `AdminUpdateUserAttributes` or `UpdateUserAttributes` API
    #     operation to modify the value of any additional attributes.
    #
    #      </note>
    #
    #   * `MFA_SETUP`: For users who are required to setup an MFA factor
    #     before they can sign in. The MFA types activated for the user pool
    #     will be listed in the challenge parameters `MFAS_CAN_SETUP` value.
    #
    #     To set up time-based one-time password (TOTP) MFA, use the session
    #     returned in this challenge from `InitiateAuth` or
    #     `AdminInitiateAuth` as an input to `AssociateSoftwareToken`. Then,
    #     use the session returned by `VerifySoftwareToken` as an input to
    #     `RespondToAuthChallenge` or `AdminRespondToAuthChallenge` with
    #     challenge name `MFA_SETUP` to complete sign-in.
    #
    #     To set up SMS or email MFA, collect a `phone_number` or `email`
    #     attribute for the user. Then restart the authentication flow with
    #     an `InitiateAuth` or `AdminInitiateAuth` request.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-device-tracking.html#user-pools-remembered-devices-signing-in-with-a-device
    #   @return [String]
    #
    # @!attribute [rw] session
    #   The session identifier that maintains the state of authentication
    #   requests and challenge responses. If an `AdminInitiateAuth` or
    #   `AdminRespondToAuthChallenge` API request results in a determination
    #   that your application must pass another challenge, Amazon Cognito
    #   returns a session with other challenge parameters. Send this session
    #   identifier, unmodified, to the next `AdminRespondToAuthChallenge`
    #   request.
    #   @return [String]
    #
    # @!attribute [rw] challenge_responses
    #   The responses to the challenge that you received in the previous
    #   request. Each challenge has its own required response parameters.
    #   The following examples are partial JSON request bodies that
    #   highlight challenge-response parameters.
    #
    #   You must provide a SECRET\_HASH parameter in all challenge responses
    #   to an app client that has a client secret. Include a `DEVICE_KEY`
    #   for device authentication.
    #
    #   SELECT\_CHALLENGE
    #
    #   : `"ChallengeName": "SELECT_CHALLENGE", "ChallengeResponses": {
    #     "USERNAME": "[username]", "ANSWER": "[Challenge name]"}`
    #
    #     Available challenges are `PASSWORD`, `PASSWORD_SRP`, `EMAIL_OTP`,
    #     `SMS_OTP`, and `WEB_AUTHN`.
    #
    #     Complete authentication in the `SELECT_CHALLENGE` response for
    #     `PASSWORD`, `PASSWORD_SRP`, and `WEB_AUTHN`:
    #
    #     * `"ChallengeName": "SELECT_CHALLENGE", "ChallengeResponses": {
    #       "ANSWER": "WEB_AUTHN", "USERNAME": "[username]", "CREDENTIAL":
    #       "[AuthenticationResponseJSON]"}`
    #
    #       See [ AuthenticationResponseJSON][1].
    #
    #     * `"ChallengeName": "SELECT_CHALLENGE", "ChallengeResponses": {
    #       "ANSWER": "PASSWORD", "USERNAME": "[username]", "PASSWORD":
    #       "[password]"}`
    #
    #     * `"ChallengeName": "SELECT_CHALLENGE", "ChallengeResponses": {
    #       "ANSWER": "PASSWORD_SRP", "USERNAME": "[username]", "SRP_A":
    #       "[SRP_A]"}`
    #
    #     For `SMS_OTP` and `EMAIL_OTP`, respond with the username and
    #     answer. Your user pool will send a code for the user to submit in
    #     the next challenge response.
    #
    #     * `"ChallengeName": "SELECT_CHALLENGE", "ChallengeResponses": {
    #       "ANSWER": "SMS_OTP", "USERNAME": "[username]"}`
    #
    #     * `"ChallengeName": "SELECT_CHALLENGE", "ChallengeResponses": {
    #       "ANSWER": "EMAIL_OTP", "USERNAME": "[username]"}`
    #
    #   SMS\_OTP
    #
    #   : `"ChallengeName": "SMS_OTP", "ChallengeResponses":
    #     {"SMS_OTP_CODE": "[code]", "USERNAME": "[username]"}`
    #
    #   EMAIL\_OTP
    #
    #   : `"ChallengeName": "EMAIL_OTP", "ChallengeResponses":
    #     {"EMAIL_OTP_CODE": "[code]", "USERNAME": "[username]"}`
    #
    #   SMS\_MFA
    #
    #   : `"ChallengeName": "SMS_MFA", "ChallengeResponses":
    #     {"SMS_MFA_CODE": "[code]", "USERNAME": "[username]"}`
    #
    #   PASSWORD\_VERIFIER
    #
    #   : This challenge response is part of the SRP flow. Amazon Cognito
    #     requires that your application respond to this challenge within a
    #     few seconds. When the response time exceeds this period, your user
    #     pool returns a `NotAuthorizedException` error.
    #
    #     `"ChallengeName": "PASSWORD_VERIFIER", "ChallengeResponses":
    #     {"PASSWORD_CLAIM_SIGNATURE": "[claim_signature]",
    #     "PASSWORD_CLAIM_SECRET_BLOCK": "[secret_block]", "TIMESTAMP":
    #     [timestamp], "USERNAME": "[username]"}`
    #
    #     Add `"DEVICE_KEY"` when you sign in with a remembered device.
    #
    #   CUSTOM\_CHALLENGE
    #
    #   : `"ChallengeName": "CUSTOM_CHALLENGE", "ChallengeResponses":
    #     {"USERNAME": "[username]", "ANSWER": "[challenge_answer]"}`
    #
    #     Add `"DEVICE_KEY"` when you sign in with a remembered device.
    #
    #   NEW\_PASSWORD\_REQUIRED
    #
    #   : `"ChallengeName": "NEW_PASSWORD_REQUIRED", "ChallengeResponses":
    #     {"NEW_PASSWORD": "[new_password]", "USERNAME": "[username]"}`
    #
    #     To set any required attributes that `InitiateAuth` returned in an
    #     `requiredAttributes` parameter, add
    #     `"userAttributes.[attribute_name]": "[attribute_value]"`. This
    #     parameter can also set values for writable attributes that aren't
    #     required by your user pool.
    #
    #     <note markdown="1"> In a `NEW_PASSWORD_REQUIRED` challenge response, you can't modify
    #     a required attribute that already has a value. In
    #     `AdminRespondToAuthChallenge` or `RespondToAuthChallenge`, set a
    #     value for any keys that Amazon Cognito returned in the
    #     `requiredAttributes` parameter, then use the
    #     `AdminUpdateUserAttributes` or `UpdateUserAttributes` API
    #     operation to modify the value of any additional attributes.
    #
    #      </note>
    #
    #   SOFTWARE\_TOKEN\_MFA
    #
    #   : `"ChallengeName": "SOFTWARE_TOKEN_MFA", "ChallengeResponses":
    #     {"USERNAME": "[username]", "SOFTWARE_TOKEN_MFA_CODE":
    #     [authenticator_code]}`
    #
    #   DEVICE\_SRP\_AUTH
    #
    #   : `"ChallengeName": "DEVICE_SRP_AUTH", "ChallengeResponses":
    #     {"USERNAME": "[username]", "DEVICE_KEY": "[device_key]", "SRP_A":
    #     "[srp_a]"}`
    #
    #   DEVICE\_PASSWORD\_VERIFIER
    #
    #   : `"ChallengeName": "DEVICE_PASSWORD_VERIFIER",
    #     "ChallengeResponses": {"DEVICE_KEY": "[device_key]",
    #     "PASSWORD_CLAIM_SIGNATURE": "[claim_signature]",
    #     "PASSWORD_CLAIM_SECRET_BLOCK": "[secret_block]", "TIMESTAMP":
    #     [timestamp], "USERNAME": "[username]"}`
    #
    #   MFA\_SETUP
    #
    #   : `"ChallengeName": "MFA_SETUP", "ChallengeResponses": {"USERNAME":
    #     "[username]"}, "SESSION": "[Session ID from VerifySoftwareToken]"`
    #
    #   SELECT\_MFA\_TYPE
    #
    #   : `"ChallengeName": "SELECT_MFA_TYPE", "ChallengeResponses":
    #     {"USERNAME": "[username]", "ANSWER": "[SMS_MFA or
    #     SOFTWARE_TOKEN_MFA]"}`
    #
    #   For more information about `SECRET_HASH`, see [Computing secret hash
    #   values][2]. For information about `DEVICE_KEY`, see [Working with
    #   user devices in your user pool][3].
    #
    #
    #
    #   [1]: https://www.w3.org/TR/WebAuthn-3/#dictdef-authenticationresponsejson
    #   [2]: https://docs.aws.amazon.com/cognito/latest/developerguide/signing-up-users-in-your-app.html#cognito-user-pools-computing-secret-hash
    #   [3]: https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-device-tracking.html
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] analytics_metadata
    #   Information that supports analytics outcomes with Amazon Pinpoint,
    #   including the user's endpoint ID. The endpoint ID is a destination
    #   for Amazon Pinpoint push notifications, for example a device
    #   identifier, email address, or phone number.
    #   @return [Types::AnalyticsMetadataType]
    #
    # @!attribute [rw] user_context_data
    #   Contextual data about your user session like the device fingerprint,
    #   IP address, or location. Amazon Cognito threat protection evaluates
    #   the risk of an authentication event based on the context that your
    #   app generates and passes to Amazon Cognito when it makes API
    #   requests.
    #
    #   For more information, see [Collecting data for threat protection in
    #   applications][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-settings-viewing-threat-protection-app.html
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
    #   For more information, see [ Using Lambda triggers][1] in the *Amazon
    #   Cognito Developer Guide*.
    #
    #   <note markdown="1"> When you use the `ClientMetadata` parameter, note that Amazon
    #   Cognito won't do the following:
    #
    #    * Store the `ClientMetadata` value. This data is available only to
    #     Lambda triggers that are assigned to a user pool to support custom
    #     workflows. If your user pool configuration doesn't include
    #     triggers, the `ClientMetadata` parameter serves no purpose.
    #
    #   * Validate the `ClientMetadata` value.
    #
    #   * Encrypt the `ClientMetadata` value. Don't send sensitive
    #     information in this parameter.
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
      SENSITIVE = [:client_id, :session, :challenge_responses, :user_context_data]
      include Aws::Structure
    end

    # The response to respond to the authentication challenge.
    #
    # @!attribute [rw] challenge_name
    #   The name of the next challenge that you must respond to.
    #
    #   Possible challenges include the following:
    #
    #   <note markdown="1"> All of the following challenges require `USERNAME` and, when the app
    #   client has a client secret, `SECRET_HASH` in the parameters.
    #
    #    </note>
    #
    #   * `WEB_AUTHN`: Respond to the challenge with the results of a
    #     successful authentication with a WebAuthn authenticator, or
    #     passkey. Examples of WebAuthn authenticators include biometric
    #     devices and security keys.
    #
    #   * `PASSWORD`: Respond with `USER_PASSWORD_AUTH` parameters:
    #     `USERNAME` (required), `PASSWORD` (required), `SECRET_HASH`
    #     (required if the app client is configured with a client secret),
    #     `DEVICE_KEY`.
    #
    #   * `PASSWORD_SRP`: Respond with `USER_SRP_AUTH` parameters:
    #     `USERNAME` (required), `SRP_A` (required), `SECRET_HASH` (required
    #     if the app client is configured with a client secret),
    #     `DEVICE_KEY`.
    #
    #   * `SELECT_CHALLENGE`: Respond to the challenge with `USERNAME` and
    #     an `ANSWER` that matches one of the challenge types in the
    #     `AvailableChallenges` response parameter.
    #
    #   * `SMS_MFA`: Respond with an `SMS_MFA_CODE` that your user pool
    #     delivered in an SMS message.
    #
    #   * `EMAIL_OTP`: Respond with an `EMAIL_OTP_CODE` that your user pool
    #     delivered in an email message.
    #
    #   * `PASSWORD_VERIFIER`: Respond with `PASSWORD_CLAIM_SIGNATURE`,
    #     `PASSWORD_CLAIM_SECRET_BLOCK`, and `TIMESTAMP` after client-side
    #     SRP calculations.
    #
    #   * `CUSTOM_CHALLENGE`: This is returned if your custom authentication
    #     flow determines that the user should pass another challenge before
    #     tokens are issued. The parameters of the challenge are determined
    #     by your Lambda function.
    #
    #   * `DEVICE_SRP_AUTH`: Respond with the initial parameters of device
    #     SRP authentication. For more information, see [Signing in with a
    #     device][1].
    #
    #   * `DEVICE_PASSWORD_VERIFIER`: Respond with
    #     `PASSWORD_CLAIM_SIGNATURE`, `PASSWORD_CLAIM_SECRET_BLOCK`, and
    #     `TIMESTAMP` after client-side SRP calculations. For more
    #     information, see [Signing in with a device][1].
    #
    #   * `NEW_PASSWORD_REQUIRED`: For users who are required to change
    #     their passwords after successful first login. Respond to this
    #     challenge with `NEW_PASSWORD` and any required attributes that
    #     Amazon Cognito returned in the `requiredAttributes` parameter. You
    #     can also set values for attributes that aren't required by your
    #     user pool and that your app client can write.
    #
    #     Amazon Cognito only returns this challenge for users who have
    #     temporary passwords. When you create passwordless users, you must
    #     provide values for all required attributes.
    #
    #     <note markdown="1"> In a `NEW_PASSWORD_REQUIRED` challenge response, you can't modify
    #     a required attribute that already has a value. In
    #     `AdminRespondToAuthChallenge` or `RespondToAuthChallenge`, set a
    #     value for any keys that Amazon Cognito returned in the
    #     `requiredAttributes` parameter, then use the
    #     `AdminUpdateUserAttributes` or `UpdateUserAttributes` API
    #     operation to modify the value of any additional attributes.
    #
    #      </note>
    #
    #   * `MFA_SETUP`: For users who are required to setup an MFA factor
    #     before they can sign in. The MFA types activated for the user pool
    #     will be listed in the challenge parameters `MFAS_CAN_SETUP` value.
    #
    #     To set up time-based one-time password (TOTP) MFA, use the session
    #     returned in this challenge from `InitiateAuth` or
    #     `AdminInitiateAuth` as an input to `AssociateSoftwareToken`. Then,
    #     use the session returned by `VerifySoftwareToken` as an input to
    #     `RespondToAuthChallenge` or `AdminRespondToAuthChallenge` with
    #     challenge name `MFA_SETUP` to complete sign-in.
    #
    #     To set up SMS or email MFA, collect a `phone_number` or `email`
    #     attribute for the user. Then restart the authentication flow with
    #     an `InitiateAuth` or `AdminInitiateAuth` request.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-device-tracking.html#user-pools-remembered-devices-signing-in-with-a-device
    #   @return [String]
    #
    # @!attribute [rw] session
    #   The session identifier that maintains the state of authentication
    #   requests and challenge responses. If an `InitiateAuth` or
    #   `RespondToAuthChallenge` API request results in a determination that
    #   your application must pass another challenge, Amazon Cognito returns
    #   a session with other challenge parameters. Send this session
    #   identifier, unmodified, to the next `RespondToAuthChallenge`
    #   request.
    #   @return [String]
    #
    # @!attribute [rw] challenge_parameters
    #   The parameters that define your response to the next challenge.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] authentication_result
    #   The outcome of a successful authentication process. After your
    #   application has passed all challenges, Amazon Cognito returns an
    #   `AuthenticationResult` with the JSON web tokens (JWTs) that indicate
    #   successful sign-in.
    #   @return [Types::AuthenticationResultType]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/RespondToAuthChallengeResponse AWS API Documentation
    #
    class RespondToAuthChallengeResponse < Struct.new(
      :challenge_name,
      :session,
      :challenge_parameters,
      :authentication_result)
      SENSITIVE = [:session]
      include Aws::Structure
    end

    # @!attribute [rw] token
    #   The refresh token that you want to revoke.
    #   @return [String]
    #
    # @!attribute [rw] client_id
    #   The ID of the app client where the token that you want to revoke was
    #   issued.
    #   @return [String]
    #
    # @!attribute [rw] client_secret
    #   The client secret of the requested app client, if the client has a
    #   secret.
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

    # The settings of risk configuration for threat protection with threat
    # protection in a user pool.
    #
    # @!attribute [rw] user_pool_id
    #   The ID of the user pool that has the risk configuration applied.
    #   @return [String]
    #
    # @!attribute [rw] client_id
    #   The app client where this configuration is applied. When this
    #   parameter isn't present, the risk configuration applies to all user
    #   pool app clients that don't have client-level settings.
    #   @return [String]
    #
    # @!attribute [rw] compromised_credentials_risk_configuration
    #   Settings for compromised-credentials actions and authentication
    #   types with threat protection in full-function `ENFORCED` mode.
    #   @return [Types::CompromisedCredentialsRiskConfigurationType]
    #
    # @!attribute [rw] account_takeover_risk_configuration
    #   The settings for automated responses and notification templates for
    #   adaptive authentication with threat protection.
    #   @return [Types::AccountTakeoverRiskConfigurationType]
    #
    # @!attribute [rw] risk_exception_configuration
    #   Exceptions to the risk evaluation configuration, including
    #   always-allow and always-block IP address ranges.
    #   @return [Types::RiskExceptionConfigurationType]
    #
    # @!attribute [rw] last_modified_date
    #   The date and time when the item was modified. Amazon Cognito returns
    #   this timestamp in UNIX epoch time format. Your SDK might render the
    #   output in a human-readable format like ISO 8601 or a Java `Date`
    #   object.
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

    # Exceptions to the risk evaluation configuration, including
    # always-allow and always-block IP address ranges.
    #
    # @!attribute [rw] blocked_ip_range_list
    #   An always-block IP address list. Overrides the risk decision and
    #   always blocks authentication requests. This parameter is displayed
    #   and set in CIDR notation.
    #   @return [Array<String>]
    #
    # @!attribute [rw] skipped_ip_range_list
    #   An always-allow IP address list. Risk detection isn't performed on
    #   the IP addresses in this range list. This parameter is displayed and
    #   set in CIDR notation.
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

    # Configuration for the Amazon S3 bucket destination of user activity
    # log export with threat protection.
    #
    # @!attribute [rw] bucket_arn
    #   The ARN of an Amazon S3 bucket that's the destination for threat
    #   protection log export.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/S3ConfigurationType AWS API Documentation
    #
    class S3ConfigurationType < Struct.new(
      :bucket_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # A user's preference for using SMS message multi-factor authentication
    # (MFA). Turns SMS MFA on and off, and can set SMS as preferred when
    # other MFA options are available. You can't turn off SMS MFA for any
    # of your users when MFA is required in your user pool; you can only set
    # the type that your user prefers.
    #
    # @!attribute [rw] enabled
    #   Specifies whether SMS message MFA is activated. If an MFA type is
    #   activated for a user, the user will be prompted for MFA during all
    #   sign-in attempts, unless device tracking is turned on and the device
    #   has been trusted.
    #   @return [Boolean]
    #
    # @!attribute [rw] preferred_mfa
    #   Specifies whether SMS is the preferred MFA method. If true, your
    #   user pool prompts the specified user for a code delivered by SMS
    #   message after username-password sign-in succeeds.
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

    # A list of the user attributes and their properties in your user pool.
    # The attribute schema contains standard attributes, custom attributes
    # with a `custom:` prefix, and developer attributes with a `dev:`
    # prefix. For more information, see [User pool attributes][1].
    #
    # Developer-only `dev:` attributes are a legacy feature of user pools,
    # and are read-only to all app clients. You can create and update
    # developer-only attributes only with IAM-authenticated API operations.
    # Use app client read/write permissions instead.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-settings-attributes.html
    #
    # @!attribute [rw] name
    #   The name of your user pool attribute. When you create or update a
    #   user pool, adding a schema attribute creates a custom or
    #   developer-only attribute. When you add an attribute with a `Name`
    #   value of `MyAttribute`, Amazon Cognito creates the custom attribute
    #   `custom:MyAttribute`. When `DeveloperOnlyAttribute` is `true`,
    #   Amazon Cognito creates your attribute as `dev:MyAttribute`. In an
    #   operation that describes a user pool, Amazon Cognito returns this
    #   value as `value` for standard attributes, `custom:value` for custom
    #   attributes, and `dev:value` for developer-only attributes..
    #   @return [String]
    #
    # @!attribute [rw] attribute_data_type
    #   The data format of the values for your attribute. When you choose an
    #   `AttributeDataType`, Amazon Cognito validates the input against the
    #   data type. A custom attribute value in your user's ID token is
    #   always a string, for example `"custom:isMember" : "true"` or
    #   `"custom:YearsAsMember" : "12"`.
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
    #   Any user pool attribute whose value you map from an IdP attribute
    #   must be mutable, with a parameter value of `true`. Amazon Cognito
    #   updates mapped attributes when users sign in to your application
    #   through an IdP. If an attribute is immutable, Amazon Cognito throws
    #   an error when it attempts to update the attribute. For more
    #   information, see [Specifying Identity Provider Attribute Mappings
    #   for Your User Pool][1].
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
    #   The ID of the user pool where you want to configure logging.
    #   @return [String]
    #
    # @!attribute [rw] log_configurations
    #   A collection of the logging configurations for a user pool.
    #   @return [Array<Types::LogConfigurationType>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/SetLogDeliveryConfigurationRequest AWS API Documentation
    #
    class SetLogDeliveryConfigurationRequest < Struct.new(
      :user_pool_id,
      :log_configurations)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] log_delivery_configuration
    #   The logging configuration that you applied to the requested user
    #   pool.
    #   @return [Types::LogDeliveryConfigurationType]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/SetLogDeliveryConfigurationResponse AWS API Documentation
    #
    class SetLogDeliveryConfigurationResponse < Struct.new(
      :log_delivery_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] user_pool_id
    #   The ID of the user pool where you want to set a risk configuration.
    #   If you include `UserPoolId` in your request, don't include
    #   `ClientId`. When the client ID is null, the same risk configuration
    #   is applied to all the clients in the userPool. When you include both
    #   `ClientId` and `UserPoolId`, Amazon Cognito maps the configuration
    #   to the app client only.
    #   @return [String]
    #
    # @!attribute [rw] client_id
    #   The ID of the app client where you want to set a risk configuration.
    #   If `ClientId` is null, then the risk configuration is mapped to
    #   `UserPoolId`. When the client ID is null, the same risk
    #   configuration is applied to all the clients in the userPool.
    #
    #   When you include a `ClientId` parameter, Amazon Cognito maps the
    #   configuration to the app client. When you include both `ClientId`
    #   and `UserPoolId`, Amazon Cognito maps the configuration to the app
    #   client only.
    #   @return [String]
    #
    # @!attribute [rw] compromised_credentials_risk_configuration
    #   The configuration of automated reactions to detected compromised
    #   credentials. Includes settings for blocking future sign-in requests
    #   and for the types of password-submission events you want to monitor.
    #   @return [Types::CompromisedCredentialsRiskConfigurationType]
    #
    # @!attribute [rw] account_takeover_risk_configuration
    #   The settings for automated responses and notification templates for
    #   adaptive authentication with threat protection.
    #   @return [Types::AccountTakeoverRiskConfigurationType]
    #
    # @!attribute [rw] risk_exception_configuration
    #   A set of IP-address overrides to threat protection. You can set up
    #   IP-address always-block and always-allow lists.
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
    #   The API response that contains the risk configuration that you set
    #   and the timestamp of the most recent change.
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
    #   The ID of the user pool where you want to apply branding to the
    #   classic hosted UI.
    #   @return [String]
    #
    # @!attribute [rw] client_id
    #   The ID of the app client that you want to customize. To apply a
    #   default style to all app clients not configured with client-level
    #   branding, set this parameter value to `ALL`.
    #   @return [String]
    #
    # @!attribute [rw] css
    #   A plaintext CSS file that contains the custom fields that you want
    #   to apply to your user pool or app client. To download a template, go
    #   to the Amazon Cognito console. Navigate to your user pool *App
    #   clients* tab, select *Login pages*, edit *Hosted UI (classic)
    #   style*, and select the link to `CSS template.css`.
    #   @return [String]
    #
    # @!attribute [rw] image_file
    #   The image that you want to set as your login in the classic hosted
    #   UI, as a Base64-formatted binary object.
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
    #   Information about the hosted UI branding that you applied.
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
    #   User preferences for SMS message MFA. Activates or deactivates SMS
    #   MFA and sets it as the preferred MFA method when multiple methods
    #   are available.
    #   @return [Types::SMSMfaSettingsType]
    #
    # @!attribute [rw] software_token_mfa_settings
    #   User preferences for time-based one-time password (TOTP) MFA.
    #   Activates or deactivates TOTP MFA and sets it as the preferred MFA
    #   method when multiple methods are available.
    #   @return [Types::SoftwareTokenMfaSettingsType]
    #
    # @!attribute [rw] email_mfa_settings
    #   User preferences for email message MFA. Activates or deactivates
    #   email MFA and sets it as the preferred MFA method when multiple
    #   methods are available. To activate this setting, your user pool must
    #   be in the [ Essentials tier][1] or higher.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/feature-plans-features-essentials.html
    #   @return [Types::EmailMfaSettingsType]
    #
    # @!attribute [rw] access_token
    #   A valid access token that Amazon Cognito issued to the currently
    #   signed-in user. Must include a scope claim for
    #   `aws.cognito.signin.user.admin`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/SetUserMFAPreferenceRequest AWS API Documentation
    #
    class SetUserMFAPreferenceRequest < Struct.new(
      :sms_mfa_settings,
      :software_token_mfa_settings,
      :email_mfa_settings,
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
    #   Configures user pool SMS messages for MFA. Sets the message template
    #   and the SMS message sending configuration for Amazon SNS.
    #   @return [Types::SmsMfaConfigType]
    #
    # @!attribute [rw] software_token_mfa_configuration
    #   Configures a user pool for time-based one-time password (TOTP) MFA.
    #   Enables or disables TOTP.
    #   @return [Types::SoftwareTokenMfaConfigType]
    #
    # @!attribute [rw] email_mfa_configuration
    #   Sets configuration for user pool email message MFA and sign-in with
    #   one-time passwords (OTPs). Includes the subject and body of the
    #   email message template for sign-in and MFA messages. To activate
    #   this setting, your user pool must be in the [ Essentials tier][1] or
    #   higher.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/feature-plans-features-essentials.html
    #   @return [Types::EmailMfaConfigType]
    #
    # @!attribute [rw] mfa_configuration
    #   Sets multi-factor authentication (MFA) to be on, off, or optional.
    #   When `ON`, all users must set up MFA before they can sign in. When
    #   `OPTIONAL`, your application must make a client-side determination
    #   of whether a user wants to register an MFA device. For user pools
    #   with adaptive authentication with threat protection, choose
    #   `OPTIONAL`.
    #
    #   When `MfaConfiguration` is `OPTIONAL`, managed login doesn't
    #   automatically prompt users to set up MFA. Amazon Cognito generates
    #   MFA prompts in API responses and in managed login for users who have
    #   chosen and configured a preferred MFA factor.
    #   @return [String]
    #
    # @!attribute [rw] web_authn_configuration
    #   The configuration of your user pool for passkey, or WebAuthn,
    #   authentication and registration. You can set this configuration
    #   independent of the MFA configuration options in this operation.
    #   @return [Types::WebAuthnConfigurationType]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/SetUserPoolMfaConfigRequest AWS API Documentation
    #
    class SetUserPoolMfaConfigRequest < Struct.new(
      :user_pool_id,
      :sms_mfa_configuration,
      :software_token_mfa_configuration,
      :email_mfa_configuration,
      :mfa_configuration,
      :web_authn_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] sms_mfa_configuration
    #   Shows user pool SMS message configuration for MFA and sign-in with
    #   SMS-message OTPs. Includes the message template and the SMS message
    #   sending configuration for Amazon SNS.
    #   @return [Types::SmsMfaConfigType]
    #
    # @!attribute [rw] software_token_mfa_configuration
    #   Shows user pool configuration for time-based one-time password
    #   (TOTP) MFA. Includes TOTP enabled or disabled state.
    #   @return [Types::SoftwareTokenMfaConfigType]
    #
    # @!attribute [rw] email_mfa_configuration
    #   Shows configuration for user pool email message MFA and sign-in with
    #   one-time passwords (OTPs). Includes the subject and body of the
    #   email message template for sign-in and MFA messages. To activate
    #   this setting, your user pool must be in the [ Essentials tier][1] or
    #   higher.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/feature-plans-features-essentials.html
    #   @return [Types::EmailMfaConfigType]
    #
    # @!attribute [rw] mfa_configuration
    #   Displays multi-factor authentication (MFA) as on, off, or optional.
    #   When `ON`, all users must set up MFA before they can sign in. When
    #   `OPTIONAL`, your application must make a client-side determination
    #   of whether a user wants to register an MFA device. For user pools
    #   with adaptive authentication with threat protection, choose
    #   `OPTIONAL`.
    #
    #   When `MfaConfiguration` is `OPTIONAL`, managed login doesn't
    #   automatically prompt users to set up MFA. Amazon Cognito generates
    #   MFA prompts in API responses and in managed login for users who have
    #   chosen and configured a preferred MFA factor.
    #   @return [String]
    #
    # @!attribute [rw] web_authn_configuration
    #   The configuration of your user pool for passkey, or WebAuthn,
    #   sign-in with authenticators like biometric and security-key devices.
    #   Includes relying-party configuration and settings for
    #   user-verification requirements.
    #   @return [Types::WebAuthnConfigurationType]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/SetUserPoolMfaConfigResponse AWS API Documentation
    #
    class SetUserPoolMfaConfigResponse < Struct.new(
      :sms_mfa_configuration,
      :software_token_mfa_configuration,
      :email_mfa_configuration,
      :mfa_configuration,
      :web_authn_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the request to set user settings.
    #
    # @!attribute [rw] access_token
    #   A valid access token that Amazon Cognito issued to the currently
    #   signed-in user. Must include a scope claim for
    #   `aws.cognito.signin.user.admin`.
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

    # The policy for allowed types of authentication in a user pool. To
    # activate this setting, your user pool must be in the [ Essentials
    # tier][1] or higher.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/feature-plans-features-essentials.html
    #
    # @!attribute [rw] allowed_first_auth_factors
    #   The sign-in methods that a user pool supports as the first factor.
    #   You can permit users to start authentication with a standard
    #   username and password, or with other one-time password and hardware
    #   factors.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/SignInPolicyType AWS API Documentation
    #
    class SignInPolicyType < Struct.new(
      :allowed_first_auth_factors)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the request to register a user.
    #
    # @!attribute [rw] client_id
    #   The ID of the app client where the user wants to sign up.
    #   @return [String]
    #
    # @!attribute [rw] secret_hash
    #   A keyed-hash message authentication code (HMAC) calculated using the
    #   secret key of a user pool client and username plus the client ID in
    #   the message. For more information about `SecretHash`, see [Computing
    #   secret hash values][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/signing-up-users-in-your-app.html#cognito-user-pools-computing-secret-hash
    #   @return [String]
    #
    # @!attribute [rw] username
    #   The username of the user that you want to sign up. The value of this
    #   parameter is typically a username, but can be any alias attribute in
    #   your user pool.
    #   @return [String]
    #
    # @!attribute [rw] password
    #   The user's proposed password. The password must comply with the
    #   [password requirements][1] of your user pool.
    #
    #   Users can sign up without a password when your user pool supports
    #   passwordless sign-in with email or SMS OTPs. To create a user with
    #   no password, omit this parameter or submit a blank value. You can
    #   only create a passwordless user when passwordless sign-in is
    #   available.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/managing-users-passwords.html
    #   @return [String]
    #
    # @!attribute [rw] user_attributes
    #   An array of name-value pairs representing user attributes.
    #
    #   For custom attributes, include a `custom:` prefix in the attribute
    #   name, for example `custom:department`.
    #   @return [Array<Types::AttributeType>]
    #
    # @!attribute [rw] validation_data
    #   Temporary user attributes that contribute to the outcomes of your
    #   pre sign-up Lambda trigger. This set of key-value pairs are for
    #   custom validation of information that you collect from your users
    #   but don't need to retain.
    #
    #   Your Lambda function can analyze this additional data and act on it.
    #   Your function can automatically confirm and verify select users or
    #   perform external API operations like logging user attributes and
    #   validation data to Amazon CloudWatch Logs.
    #
    #   For more information about the pre sign-up Lambda trigger, see [Pre
    #   sign-up Lambda trigger][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-lambda-pre-sign-up.html
    #   @return [Array<Types::AttributeType>]
    #
    # @!attribute [rw] analytics_metadata
    #   Information that supports analytics outcomes with Amazon Pinpoint,
    #   including the user's endpoint ID. The endpoint ID is a destination
    #   for Amazon Pinpoint push notifications, for example a device
    #   identifier, email address, or phone number.
    #   @return [Types::AnalyticsMetadataType]
    #
    # @!attribute [rw] user_context_data
    #   Contextual data about your user session like the device fingerprint,
    #   IP address, or location. Amazon Cognito threat protection evaluates
    #   the risk of an authentication event based on the context that your
    #   app generates and passes to Amazon Cognito when it makes API
    #   requests.
    #
    #   For more information, see [Collecting data for threat protection in
    #   applications][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-settings-viewing-threat-protection-app.html
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
    #   For more information, see [ Using Lambda triggers][1] in the *Amazon
    #   Cognito Developer Guide*.
    #
    #   <note markdown="1"> When you use the `ClientMetadata` parameter, note that Amazon
    #   Cognito won't do the following:
    #
    #    * Store the `ClientMetadata` value. This data is available only to
    #     Lambda triggers that are assigned to a user pool to support custom
    #     workflows. If your user pool configuration doesn't include
    #     triggers, the `ClientMetadata` parameter serves no purpose.
    #
    #   * Validate the `ClientMetadata` value.
    #
    #   * Encrypt the `ClientMetadata` value. Don't send sensitive
    #     information in this parameter.
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
      SENSITIVE = [:client_id, :secret_hash, :username, :password, :user_context_data]
      include Aws::Structure
    end

    # The response from the server for a registration request.
    #
    # @!attribute [rw] user_confirmed
    #   Indicates whether the user was automatically confirmed. You can
    #   auto-confirm users with a [pre sign-up Lambda trigger][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-lambda-pre-sign-up.html
    #   @return [Boolean]
    #
    # @!attribute [rw] code_delivery_details
    #   In user pools that automatically verify and confirm new users,
    #   Amazon Cognito sends users a message with a code or link that
    #   confirms ownership of the phone number or email address that they
    #   entered. The `CodeDeliveryDetails` object is information about the
    #   delivery destination for that link or code.
    #   @return [Types::CodeDeliveryDetailsType]
    #
    # @!attribute [rw] user_sub
    #   The unique identifier of the new user, for example
    #   `a1b2c3d4-5678-90ab-cdef-EXAMPLE11111`.
    #   @return [String]
    #
    # @!attribute [rw] session
    #   A session Id that you can pass to `ConfirmSignUp` when you want to
    #   immediately sign in your user with the `USER_AUTH` flow after they
    #   complete sign-up.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/SignUpResponse AWS API Documentation
    #
    class SignUpResponse < Struct.new(
      :user_confirmed,
      :code_delivery_details,
      :user_sub,
      :session)
      SENSITIVE = [:session]
      include Aws::Structure
    end

    # User pool configuration for delivery of SMS messages with Amazon
    # Simple Notification Service. To send SMS messages with Amazon SNS in
    # the Amazon Web Services Region that you want, the Amazon Cognito user
    # pool uses an Identity and Access Management (IAM) role in your Amazon
    # Web Services account.
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
    #   resources to a third party][1].
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

    # The configuration of multi-factor authentication (MFA) with SMS
    # messages in a user pool.
    #
    # @!attribute [rw] sms_authentication_message
    #   The SMS authentication message that will be sent to users with the
    #   code they must sign in with. The message must contain the `{####}`
    #   placeholder. Your user pool replaces the placeholder with the MFA
    #   code. If this parameter isn't provided, your user pool sends a
    #   default message.
    #   @return [String]
    #
    # @!attribute [rw] sms_configuration
    #   User pool configuration for delivery of SMS messages with Amazon
    #   Simple Notification Service. To send SMS messages with Amazon SNS in
    #   the Amazon Web Services Region that you want, the Amazon Cognito
    #   user pool uses an Identity and Access Management (IAM) role in your
    #   Amazon Web Services account.
    #
    #   You can set `SmsConfiguration` in `CreateUserPool` and `
    #   UpdateUserPool`, or in `SetUserPoolMfaConfig`.
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

    # Settings for time-based one-time password (TOTP) multi-factor
    # authentication (MFA) in a user pool. Enables and disables availability
    # of this feature.
    #
    # @!attribute [rw] enabled
    #   The activation state of TOTP MFA.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/SoftwareTokenMfaConfigType AWS API Documentation
    #
    class SoftwareTokenMfaConfigType < Struct.new(
      :enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # A user's preference for using time-based one-time password (TOTP)
    # multi-factor authentication (MFA). Turns TOTP MFA on and off, and can
    # set TOTP as preferred when other MFA options are available. You can't
    # turn off TOTP MFA for any of your users when MFA is required in your
    # user pool; you can only set the type that your user prefers.
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
    #   The ID of the user pool that you want to start importing users into.
    #   @return [String]
    #
    # @!attribute [rw] job_id
    #   The ID of a user import job that you previously created.
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
    #   The details of the user import job. Includes logging destination,
    #   status, and the Amazon S3 pre-signed URL for CSV upload.
    #   @return [Types::UserImportJobType]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/StartUserImportJobResponse AWS API Documentation
    #
    class StartUserImportJobResponse < Struct.new(
      :user_import_job)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] access_token
    #   A valid access token that Amazon Cognito issued to the currently
    #   signed-in user. Must include a scope claim for
    #   `aws.cognito.signin.user.admin`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/StartWebAuthnRegistrationRequest AWS API Documentation
    #
    class StartWebAuthnRegistrationRequest < Struct.new(
      :access_token)
      SENSITIVE = [:access_token]
      include Aws::Structure
    end

    # @!attribute [rw] credential_creation_options
    #   The information that a user can provide in their request to register
    #   with their passkey provider.
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/StartWebAuthnRegistrationResponse AWS API Documentation
    #
    class StartWebAuthnRegistrationResponse < Struct.new(
      :credential_creation_options)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the request to stop the user import job.
    #
    # @!attribute [rw] user_pool_id
    #   The ID of the user pool that you want to stop.
    #   @return [String]
    #
    # @!attribute [rw] job_id
    #   The ID of a running user import job.
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
    #   The details of the user import job. Includes logging destination,
    #   status, and the Amazon S3 pre-signed URL for CSV upload.
    #   @return [Types::UserImportJobType]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/StopUserImportJobResponse AWS API Documentation
    #
    class StopUserImportJobResponse < Struct.new(
      :user_import_job)
      SENSITIVE = []
      include Aws::Structure
    end

    # The minimum and maximum length values of an attribute that is of the
    # string type, for example `custom:department`.
    #
    # @!attribute [rw] min_length
    #   The minimum length of a string attribute value.
    #   @return [String]
    #
    # @!attribute [rw] max_length
    #   The maximum length of a string attribute value. Must be a number
    #   less than or equal to `2^1023`, represented as a string with a
    #   length of 131072 characters or fewer.
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
    #   An array of tag keys and values that you want to assign to the user
    #   pool.
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

    # This exception is thrown when you've attempted to change your feature
    # plan but the operation isn't permitted.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/TierChangeNotAllowedException AWS API Documentation
    #
    class TierChangeNotAllowedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The time units that, with `IdTokenValidity`, `AccessTokenValidity`,
    # and `RefreshTokenValidity`, set and display the duration of ID,
    # access, and refresh tokens for an app client. You can assign a
    # separate token validity unit to each type of token.
    #
    # @!attribute [rw] access_token
    #   A time unit for the value that you set in the `AccessTokenValidity`
    #   parameter. The default `AccessTokenValidity` time unit is `hours`.
    #   `AccessTokenValidity` duration can range from five minutes to one
    #   day.
    #   @return [String]
    #
    # @!attribute [rw] id_token
    #   A time unit for the value that you set in the `IdTokenValidity`
    #   parameter. The default `IdTokenValidity` time unit is `hours`.
    #   `IdTokenValidity` duration can range from five minutes to one day.
    #   @return [String]
    #
    # @!attribute [rw] refresh_token
    #   A time unit for the value that you set in the `RefreshTokenValidity`
    #   parameter. The default `RefreshTokenValidity` time unit is `days`.
    #   `RefreshTokenValidity` duration can range from 60 minutes to 10
    #   years.
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

    # A container for the UI customization information for the hosted UI in
    # a user pool.
    #
    # @!attribute [rw] user_pool_id
    #   The ID of the user pool with hosted UI customizations.
    #   @return [String]
    #
    # @!attribute [rw] client_id
    #   The app client ID for your UI customization. When this value isn't
    #   present, the customization applies to all user pool app clients that
    #   don't have client-level settings..
    #   @return [String]
    #
    # @!attribute [rw] image_url
    #   A URL path to the hosted logo image of your UI customization.
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
    #   The date and time when the item was modified. Amazon Cognito returns
    #   this timestamp in UNIX epoch time format. Your SDK might render the
    #   output in a human-readable format like ISO 8601 or a Java `Date`
    #   object.
    #   @return [Time]
    #
    # @!attribute [rw] creation_date
    #   The date and time when the item was created. Amazon Cognito returns
    #   this timestamp in UNIX epoch time format. Your SDK might render the
    #   output in a human-readable format like ISO 8601 or a Java `Date`
    #   object.
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
    #   An array of tag keys that you want to remove from the user pool.
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
    #   The ID of the user pool where you want to update auth event
    #   feedback.
    #   @return [String]
    #
    # @!attribute [rw] username
    #   The name of the user that you want to query or modify. The value of
    #   this parameter is typically your user's username, but it can be any
    #   of their alias attributes. If `username` isn't an alias attribute
    #   in your user pool, this value must be the `sub` of a local user or
    #   the username of a user from a third-party IdP.
    #   @return [String]
    #
    # @!attribute [rw] event_id
    #   The ID of the authentication event that you want to submit feedback
    #   for.
    #   @return [String]
    #
    # @!attribute [rw] feedback_token
    #   The feedback token, an encrypted object generated by Amazon Cognito
    #   and passed to your user in the notification email message from the
    #   event.
    #   @return [String]
    #
    # @!attribute [rw] feedback_value
    #   Your feedback to the authentication event. When you provide a
    #   `FeedbackValue` value of `valid`, you tell Amazon Cognito that you
    #   trust a user session where Amazon Cognito has evaluated some level
    #   of risk. When you provide a `FeedbackValue` value of `invalid`, you
    #   tell Amazon Cognito that you don't trust a user session, or you
    #   don't believe that Amazon Cognito evaluated a high-enough risk
    #   level.
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
    #   A valid access token that Amazon Cognito issued to the currently
    #   signed-in user. Must include a scope claim for
    #   `aws.cognito.signin.user.admin`.
    #   @return [String]
    #
    # @!attribute [rw] device_key
    #   The device key of the device you want to update, for example
    #   `us-west-2_a1b2c3d4-5678-90ab-cdef-EXAMPLE11111`.
    #   @return [String]
    #
    # @!attribute [rw] device_remembered_status
    #   To enable device authentication with the specified device, set to
    #   `remembered`.To disable, set to `not_remembered`.
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
    #   The name of the group that you want to update.
    #   @return [String]
    #
    # @!attribute [rw] user_pool_id
    #   The ID of the user pool that contains the group you want to update.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A new description of the existing group.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of an IAM role that you want to
    #   associate with the group. The role assignment contributes to the
    #   `cognito:roles` and `cognito:preferred_role` claims in group
    #   members' tokens.
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
    #   Contains the updated details of the group, including precedence, IAM
    #   role, and description.
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
    #   The Id of the user pool where you want to update your IdP.
    #   @return [String]
    #
    # @!attribute [rw] provider_name
    #   The name of the IdP that you want to update. You can pass the
    #   identity provider name in the `identity_provider` query parameter of
    #   requests to the [Authorize endpoint][1] to silently redirect to
    #   sign-in with the associated IdP.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/authorization-endpoint.html
    #   @return [String]
    #
    # @!attribute [rw] provider_details
    #   The scopes, URLs, and identifiers for your external identity
    #   provider. The following examples describe the provider detail keys
    #   for each IdP type. These values and their schema are subject to
    #   change. Social IdP `authorize_scopes` values must match the values
    #   listed here.
    #
    #   OpenID Connect (OIDC)
    #
    #   : Amazon Cognito accepts the following elements when it can't
    #     discover endpoint URLs from `oidc_issuer`: `attributes_url`,
    #     `authorize_url`, `jwks_uri`, `token_url`.
    #
    #     Create or update request: `"ProviderDetails": {
    #     "attributes_request_method": "GET", "attributes_url":
    #     "https://auth.example.com/userInfo", "authorize_scopes": "openid
    #     profile email", "authorize_url":
    #     "https://auth.example.com/authorize", "client_id":
    #     "1example23456789", "client_secret": "provider-app-client-secret",
    #     "jwks_uri": "https://auth.example.com/.well-known/jwks.json",
    #     "oidc_issuer": "https://auth.example.com", "token_url":
    #     "https://example.com/token" }`
    #
    #     Describe response: `"ProviderDetails": {
    #     "attributes_request_method": "GET", "attributes_url":
    #     "https://auth.example.com/userInfo",
    #     "attributes_url_add_attributes": "false", "authorize_scopes":
    #     "openid profile email", "authorize_url":
    #     "https://auth.example.com/authorize", "client_id":
    #     "1example23456789", "client_secret": "provider-app-client-secret",
    #     "jwks_uri": "https://auth.example.com/.well-known/jwks.json",
    #     "oidc_issuer": "https://auth.example.com", "token_url":
    #     "https://example.com/token" }`
    #
    #   SAML
    #
    #   : Create or update request with Metadata URL: `"ProviderDetails": {
    #     "IDPInit": "true", "IDPSignout": "true", "EncryptedResponses" :
    #     "true", "MetadataURL":
    #     "https://auth.example.com/sso/saml/metadata",
    #     "RequestSigningAlgorithm": "rsa-sha256" }`
    #
    #     Create or update request with Metadata file: `"ProviderDetails": {
    #     "IDPInit": "true", "IDPSignout": "true", "EncryptedResponses" :
    #     "true", "MetadataFile": "[metadata XML]",
    #     "RequestSigningAlgorithm": "rsa-sha256" }`
    #
    #     The value of `MetadataFile` must be the plaintext metadata
    #     document with all quote (") characters escaped by backslashes.
    #
    #     Describe response: `"ProviderDetails": { "IDPInit": "true",
    #     "IDPSignout": "true", "EncryptedResponses" : "true",
    #     "ActiveEncryptionCertificate": "[certificate]", "MetadataURL":
    #     "https://auth.example.com/sso/saml/metadata",
    #     "RequestSigningAlgorithm": "rsa-sha256", "SLORedirectBindingURI":
    #     "https://auth.example.com/slo/saml", "SSORedirectBindingURI":
    #     "https://auth.example.com/sso/saml" }`
    #
    #   LoginWithAmazon
    #
    #   : Create or update request: `"ProviderDetails": {
    #     "authorize_scopes": "profile postal_code", "client_id":
    #     "amzn1.application-oa2-client.1example23456789", "client_secret":
    #     "provider-app-client-secret"`
    #
    #     Describe response: `"ProviderDetails": { "attributes_url":
    #     "https://api.amazon.com/user/profile",
    #     "attributes_url_add_attributes": "false", "authorize_scopes":
    #     "profile postal_code", "authorize_url":
    #     "https://www.amazon.com/ap/oa", "client_id":
    #     "amzn1.application-oa2-client.1example23456789", "client_secret":
    #     "provider-app-client-secret", "token_request_method": "POST",
    #     "token_url": "https://api.amazon.com/auth/o2/token" }`
    #
    #   Google
    #
    #   : Create or update request: `"ProviderDetails": {
    #     "authorize_scopes": "email profile openid", "client_id":
    #     "1example23456789.apps.googleusercontent.com", "client_secret":
    #     "provider-app-client-secret" }`
    #
    #     Describe response: `"ProviderDetails": { "attributes_url":
    #     "https://people.googleapis.com/v1/people/me?personFields=",
    #     "attributes_url_add_attributes": "true", "authorize_scopes":
    #     "email profile openid", "authorize_url":
    #     "https://accounts.google.com/o/oauth2/v2/auth", "client_id":
    #     "1example23456789.apps.googleusercontent.com", "client_secret":
    #     "provider-app-client-secret", "oidc_issuer":
    #     "https://accounts.google.com", "token_request_method": "POST",
    #     "token_url": "https://www.googleapis.com/oauth2/v4/token" }`
    #
    #   SignInWithApple
    #
    #   : Create or update request: `"ProviderDetails": {
    #     "authorize_scopes": "email name", "client_id":
    #     "com.example.cognito", "private_key": "1EXAMPLE", "key_id":
    #     "2EXAMPLE", "team_id": "3EXAMPLE" }`
    #
    #     Describe response: `"ProviderDetails": {
    #     "attributes_url_add_attributes": "false", "authorize_scopes":
    #     "email name", "authorize_url":
    #     "https://appleid.apple.com/auth/authorize", "client_id":
    #     "com.example.cognito", "key_id": "1EXAMPLE", "oidc_issuer":
    #     "https://appleid.apple.com", "team_id": "2EXAMPLE",
    #     "token_request_method": "POST", "token_url":
    #     "https://appleid.apple.com/auth/token" }`
    #
    #   Facebook
    #
    #   : Create or update request: `"ProviderDetails": { "api_version":
    #     "v17.0", "authorize_scopes": "public_profile, email", "client_id":
    #     "1example23456789", "client_secret": "provider-app-client-secret"
    #     }`
    #
    #     Describe response: `"ProviderDetails": { "api_version": "v17.0",
    #     "attributes_url": "https://graph.facebook.com/v17.0/me?fields=",
    #     "attributes_url_add_attributes": "true", "authorize_scopes":
    #     "public_profile, email", "authorize_url":
    #     "https://www.facebook.com/v17.0/dialog/oauth", "client_id":
    #     "1example23456789", "client_secret": "provider-app-client-secret",
    #     "token_request_method": "GET", "token_url":
    #     "https://graph.facebook.com/v17.0/oauth/access_token" }`
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] attribute_mapping
    #   A mapping of IdP attributes to standard and custom user pool
    #   attributes. Specify a user pool attribute as the key of the
    #   key-value pair, and the IdP attribute claim name as the value.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] idp_identifiers
    #   An array of IdP identifiers, for example `"IdPIdentifiers": [
    #   "MyIdP", "MyIdP2" ]`. Identifiers are friendly names that you can
    #   pass in the `idp_identifier` query parameter of requests to the
    #   [Authorize endpoint][1] to silently redirect to sign-in with the
    #   associated IdP. Identifiers in a domain format also enable the use
    #   of [email-address matching with SAML providers][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/authorization-endpoint.html
    #   [2]: https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-managing-saml-idp-naming.html
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
    #   The ID of the user pool that contains the managed login branding
    #   style that you want to update.
    #   @return [String]
    #
    # @!attribute [rw] managed_login_branding_id
    #   The ID of the managed login branding style that you want to update.
    #   @return [String]
    #
    # @!attribute [rw] use_cognito_provided_values
    #   When `true`, applies the default branding style options. This option
    #   reverts to default style options that are managed by Amazon Cognito.
    #   You can modify them later in the branding designer.
    #
    #   When you specify `true` for this option, you must also omit values
    #   for `Settings` and `Assets` in the request.
    #   @return [Boolean]
    #
    # @!attribute [rw] settings
    #   A JSON file, encoded as a `Document` type, with the the settings
    #   that you want to apply to your style.
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @!attribute [rw] assets
    #   An array of image files that you want to apply to roles like
    #   backgrounds, logos, and icons. Each object must also indicate
    #   whether it is for dark mode, light mode, or browser-adaptive mode.
    #   @return [Array<Types::AssetType>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/UpdateManagedLoginBrandingRequest AWS API Documentation
    #
    class UpdateManagedLoginBrandingRequest < Struct.new(
      :user_pool_id,
      :managed_login_branding_id,
      :use_cognito_provided_values,
      :settings,
      :assets)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] managed_login_branding
    #   The details of the branding style that you updated.
    #   @return [Types::ManagedLoginBrandingType]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/UpdateManagedLoginBrandingResponse AWS API Documentation
    #
    class UpdateManagedLoginBrandingResponse < Struct.new(
      :managed_login_branding)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] user_pool_id
    #   The ID of the user pool that contains the resource server that you
    #   want to update.
    #   @return [String]
    #
    # @!attribute [rw] identifier
    #   A unique resource server identifier for the resource server. The
    #   identifier can be an API friendly name like `solar-system-data`. You
    #   can also set an API URL like
    #   `https://solar-system-data-api.example.com` as your identifier.
    #
    #   Amazon Cognito represents scopes in the access token in the format
    #   `$resource-server-identifier/$scope`. Longer scope-identifier
    #   strings increase the size of your access tokens.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The updated name of the resource server.
    #   @return [String]
    #
    # @!attribute [rw] scopes
    #   An array of updated custom scope names and descriptions that you
    #   want to associate with your resource server.
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
    #   The updated details of the requested resource server.
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
    #   For custom attributes, you must add a `custom:` prefix to the
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
    #   A valid access token that Amazon Cognito issued to the currently
    #   signed-in user. Must include a scope claim for
    #   `aws.cognito.signin.user.admin`.
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
    #   For more information, see [ Using Lambda triggers][1] in the *Amazon
    #   Cognito Developer Guide*.
    #
    #   <note markdown="1"> When you use the `ClientMetadata` parameter, note that Amazon
    #   Cognito won't do the following:
    #
    #    * Store the `ClientMetadata` value. This data is available only to
    #     Lambda triggers that are assigned to a user pool to support custom
    #     workflows. If your user pool configuration doesn't include
    #     triggers, the `ClientMetadata` parameter serves no purpose.
    #
    #   * Validate the `ClientMetadata` value.
    #
    #   * Encrypt the `ClientMetadata` value. Don't send sensitive
    #     information in this parameter.
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
    #   When the attribute-update request includes an email address or phone
    #   number attribute, Amazon Cognito sends a message to users with a
    #   code that confirms ownership of the new value that they entered. The
    #   `CodeDeliveryDetails` object is information about the delivery
    #   destination for that link or code. This behavior happens in user
    #   pools configured to automatically verify changes to those
    #   attributes. For more information, see [Verifying when users change
    #   their email or phone number][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/signing-up-users-in-your-app.html#verifying-when-users-change-their-email-or-phone-number
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
    #   The ID of the user pool where you want to update the app client.
    #   @return [String]
    #
    # @!attribute [rw] client_id
    #   The ID of the app client that you want to update.
    #   @return [String]
    #
    # @!attribute [rw] client_name
    #   A friendly name for the app client.
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
    #   The default time unit for `IdTokenValidity` in an API request is
    #   hours. *Valid range* is displayed below in seconds.
    #
    #   If you don't specify otherwise in the configuration of your app
    #   client, your ID tokens are valid for one hour.
    #   @return [Integer]
    #
    # @!attribute [rw] token_validity_units
    #   The units that validity times are represented in. The default unit
    #   for refresh tokens is days, and the default for ID and access tokens
    #   are hours.
    #   @return [Types::TokenValidityUnitsType]
    #
    # @!attribute [rw] read_attributes
    #   The list of user attributes that you want your app client to have
    #   read access to. After your user authenticates in your app, their
    #   access token authorizes them to read their own attribute value for
    #   any attribute in this list.
    #
    #   When you don't specify the `ReadAttributes` for your app client,
    #   your app can read the values of `email_verified`,
    #   `phone_number_verified`, and the standard attributes of your user
    #   pool. When your user pool app client has read access to these
    #   default attributes, `ReadAttributes` doesn't return any
    #   information. Amazon Cognito only populates `ReadAttributes` in the
    #   API response if you have specified your own custom set of read
    #   attributes.
    #   @return [Array<String>]
    #
    # @!attribute [rw] write_attributes
    #   The list of user attributes that you want your app client to have
    #   write access to. After your user authenticates in your app, their
    #   access token authorizes them to set or modify their own attribute
    #   value for any attribute in this list.
    #
    #   When you don't specify the `WriteAttributes` for your app client,
    #   your app can write the values of the Standard attributes of your
    #   user pool. When your user pool has write access to these default
    #   attributes, `WriteAttributes` doesn't return any information.
    #   Amazon Cognito only populates `WriteAttributes` in the API response
    #   if you have specified your own custom set of write attributes.
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
    #   The [authentication flows][1] that you want your user pool client to
    #   support. For each app client in your user pool, you can sign in your
    #   users with any combination of one or more flows, including with a
    #   user name and Secure Remote Password (SRP), a user name and
    #   password, or a custom authentication process that you define with
    #   Lambda functions.
    #
    #   <note markdown="1"> If you don't specify a value for `ExplicitAuthFlows`, your app
    #   client supports `ALLOW_REFRESH_TOKEN_AUTH`, `ALLOW_USER_SRP_AUTH`,
    #   and `ALLOW_CUSTOM_AUTH`.
    #
    #    </note>
    #
    #   The values for authentication flow options include the following.
    #
    #   * `ALLOW_USER_AUTH`: Enable selection-based sign-in with
    #     `USER_AUTH`. This setting covers username-password, secure remote
    #     password (SRP), passwordless, and passkey authentication. This
    #     authentiation flow can do username-password and SRP authentication
    #     without other `ExplicitAuthFlows` permitting them. For example
    #     users can complete an SRP challenge through `USER_AUTH` without
    #     the flow `USER_SRP_AUTH` being active for the app client. This
    #     flow doesn't include `CUSTOM_AUTH`.
    #
    #     To activate this setting, your user pool must be in the [
    #     Essentials tier][2] or higher.
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
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-authentication-flow-methods.html
    #   [2]: https://docs.aws.amazon.com/cognito/latest/developerguide/feature-plans-features-essentials.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] supported_identity_providers
    #   A list of provider names for the identity providers (IdPs) that are
    #   supported on this client. The following are supported: `COGNITO`,
    #   `Facebook`, `Google`, `SignInWithApple`, and `LoginWithAmazon`. You
    #   can also specify the names that you configured for the SAML and OIDC
    #   IdPs in your user pool, for example `MySAMLIdP` or `MyOIDCIdP`.
    #
    #   This parameter sets the IdPs that [managed login][1] will display on
    #   the login page for your app client. The removal of `COGNITO` from
    #   this list doesn't prevent authentication operations for local users
    #   with the user pools API in an Amazon Web Services SDK. The only way
    #   to prevent SDK-based authentication is to block access with a [WAF
    #   rule][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-managed-login.html
    #   [2]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-waf.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] callback_urls
    #   A list of allowed redirect, or callback, URLs for managed login
    #   authentication. These URLs are the paths where you want to send your
    #   users' browsers after they complete authentication with managed
    #   login or a third-party IdP. Typically, callback URLs are the home of
    #   an application that uses OAuth or OIDC libraries to process
    #   authentication outcomes.
    #
    #   A redirect URI must meet the following requirements:
    #
    #   * Be an absolute URI.
    #
    #   * Be registered with the authorization server. Amazon Cognito
    #     doesn't accept authorization requests with `redirect_uri` values
    #     that aren't in the list of `CallbackURLs` that you provide in
    #     this parameter.
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
    #   A list of allowed logout URLs for managed login authentication. When
    #   you pass `logout_uri` and `client_id` parameters to `/logout`,
    #   Amazon Cognito signs out your user and redirects them to the logout
    #   URL. This parameter describes the URLs that you want to be the
    #   permitted targets of `logout_uri`. A typical use of these URLs is
    #   when a user selects "Sign out" and you redirect them to your
    #   public homepage. For more information, see [Logout endpoint][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/logout-endpoint.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] default_redirect_uri
    #   The default redirect URI. In app clients with one assigned IdP,
    #   replaces `redirect_uri` in authentication requests. Must be in the
    #   `CallbackURLs` list.
    #   @return [String]
    #
    # @!attribute [rw] allowed_o_auth_flows
    #   The OAuth grant types that you want your app client to generate. To
    #   create an app client that generates client credentials grants, you
    #   must add `client_credentials` as the only allowed OAuth flow.
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
    #   The OAuth, OpenID Connect (OIDC), and custom scopes that you want to
    #   permit your app client to authorize access with. Scopes govern
    #   access control to user pool self-service API operations, user data
    #   from the `userInfo` endpoint, and third-party APIs. Scope values
    #   include `phone`, `email`, `openid`, and `profile`. The
    #   `aws.cognito.signin.user.admin` scope authorizes user self-service
    #   operations. Custom scopes with resource servers authorize access to
    #   external APIs.
    #   @return [Array<String>]
    #
    # @!attribute [rw] allowed_o_auth_flows_user_pool_client
    #   Set to `true` to use OAuth 2.0 authorization server features in your
    #   app client.
    #
    #   This parameter must have a value of `true` before you can configure
    #   the following features in your app client.
    #
    #   * `CallBackURLs`: Callback URLs.
    #
    #   * `LogoutURLs`: Sign-out redirect URLs.
    #
    #   * `AllowedOAuthScopes`: OAuth 2.0 scopes.
    #
    #   * `AllowedOAuthFlows`: Support for authorization code, implicit, and
    #     client credentials OAuth 2.0 grants.
    #
    #   To use authorization server features, configure one of these
    #   features in the Amazon Cognito console or set
    #   `AllowedOAuthFlowsUserPoolClient` to `true` in a
    #   `CreateUserPoolClient` or `UpdateUserPoolClient` API request. If you
    #   don't set a value for `AllowedOAuthFlowsUserPoolClient` in a
    #   request with the CLI or SDKs, it defaults to `false`. When `false`,
    #   only SDK-based API sign-in is permitted.
    #   @return [Boolean]
    #
    # @!attribute [rw] analytics_configuration
    #   The user pool analytics configuration for collecting metrics and
    #   sending them to your Amazon Pinpoint campaign.
    #
    #   In Amazon Web Services Regions where Amazon Pinpoint isn't
    #   available, user pools might not have access to analytics or might be
    #   configurable with campaigns in the US East (N. Virginia) Region. For
    #   more information, see [Using Amazon Pinpoint analytics][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-pinpoint-integration.html
    #   @return [Types::AnalyticsConfigurationType]
    #
    # @!attribute [rw] prevent_user_existence_errors
    #   When `ENABLED`, suppresses messages that might indicate a valid user
    #   exists when someone attempts sign-in. This parameters sets your
    #   preference for the errors and responses that you want Amazon Cognito
    #   APIs to return during authentication, account confirmation, and
    #   password recovery when the user doesn't exist in the user pool.
    #   When set to `ENABLED` and the user doesn't exist, authentication
    #   returns an error indicating either the username or password was
    #   incorrect. Account confirmation and password recovery return a
    #   response indicating a code was sent to a simulated destination. When
    #   set to `LEGACY`, those APIs return a `UserNotFoundException`
    #   exception if the user doesn't exist in the user pool.
    #
    #   Defaults to `LEGACY`.
    #   @return [String]
    #
    # @!attribute [rw] enable_token_revocation
    #   Activates or deactivates [token revocation][1] in the target app
    #   client.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/token-revocation.html
    #   @return [Boolean]
    #
    # @!attribute [rw] enable_propagate_additional_user_context_data
    #   When `true`, your application can include additional
    #   `UserContextData` in authentication requests. This data includes the
    #   IP address, and contributes to analysis by threat protection
    #   features. For more information about propagation of user context
    #   data, see [Adding session data to API requests][1]. If you don’t
    #   include this parameter, you can't send the source IP address to
    #   Amazon Cognito threat protection features. You can only activate
    #   `EnablePropagateAdditionalUserContextData` in an app client that has
    #   a client secret.
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
    #   The updated details of your app client.
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
    #   The name of the domain that you want to update. For custom domains,
    #   this is the fully-qualified domain name, for example
    #   `auth.example.com`. For prefix domains, this is the prefix alone,
    #   such as `myprefix`.
    #   @return [String]
    #
    # @!attribute [rw] user_pool_id
    #   The ID of the user pool that is associated with the domain you're
    #   updating.
    #   @return [String]
    #
    # @!attribute [rw] managed_login_version
    #   A version number that indicates the state of managed login for your
    #   domain. Version `1` is hosted UI (classic). Version `2` is the newer
    #   managed login with the branding designer. For more information, see
    #   [Managed login][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-managed-login.html
    #   @return [Integer]
    #
    # @!attribute [rw] custom_domain_config
    #   The configuration for a custom domain that hosts managed login for
    #   your application. In an `UpdateUserPoolDomain` request, this
    #   parameter specifies an SSL certificate for the managed login hosted
    #   webserver. The certificate must be an ACM ARN in `us-east-1`.
    #
    #   When you create a custom domain, the passkey RP ID defaults to the
    #   custom domain. If you had a prefix domain active, this will cause
    #   passkey integration for your prefix domain to stop working due to a
    #   mismatch in RP ID. To keep the prefix domain passkey integration
    #   working, you can explicitly set RP ID to the prefix domain.
    #   @return [Types::CustomDomainConfigType]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/UpdateUserPoolDomainRequest AWS API Documentation
    #
    class UpdateUserPoolDomainRequest < Struct.new(
      :domain,
      :user_pool_id,
      :managed_login_version,
      :custom_domain_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # The UpdateUserPoolDomain response output.
    #
    # @!attribute [rw] managed_login_version
    #   A version number that indicates the state of managed login for your
    #   domain. Version `1` is hosted UI (classic). Version `2` is the newer
    #   managed login with the branding designer. For more information, see
    #   [Managed login][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-managed-login.html
    #   @return [Integer]
    #
    # @!attribute [rw] cloud_front_domain
    #   The fully-qualified domain name (FQDN) of the Amazon CloudFront
    #   distribution that hosts your managed login or classic hosted UI
    #   pages. You domain-name authority must have an alias record that
    #   points requests for your custom domain to this FQDN. Amazon Cognito
    #   returns this value if you set a custom domain with
    #   `CustomDomainConfig`. If you set an Amazon Cognito prefix domain,
    #   this operation returns a blank response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/UpdateUserPoolDomainResponse AWS API Documentation
    #
    class UpdateUserPoolDomainResponse < Struct.new(
      :managed_login_version,
      :cloud_front_domain)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the request to update the user pool.
    #
    # @!attribute [rw] user_pool_id
    #   The ID of the user pool you want to update.
    #   @return [String]
    #
    # @!attribute [rw] policies
    #   The password policy and sign-in policy in the user pool. The
    #   password policy sets options like password complexity requirements
    #   and password history. The sign-in policy sets the options available
    #   to applications in [choice-based authentication][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/authentication-flows-selection-sdk.html#authentication-flows-selection-choice
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
    #   A collection of user pool Lambda triggers. Amazon Cognito invokes
    #   triggers at several possible stages of authentication operations.
    #   Triggers can modify the outcome of the operations that invoked them.
    #   @return [Types::LambdaConfigType]
    #
    # @!attribute [rw] auto_verified_attributes
    #   The attributes that you want your user pool to automatically verify.
    #   Possible values: **email**, **phone\_number**. For more information
    #   see [Verifying contact information at sign-up][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/signing-up-users-in-your-app.html#allowing-users-to-sign-up-and-confirm-themselves
    #   @return [Array<String>]
    #
    # @!attribute [rw] sms_verification_message
    #   This parameter is no longer used.
    #   @return [String]
    #
    # @!attribute [rw] email_verification_message
    #   This parameter is no longer used.
    #   @return [String]
    #
    # @!attribute [rw] email_verification_subject
    #   This parameter is no longer used.
    #   @return [String]
    #
    # @!attribute [rw] verification_message_template
    #   The template for the verification message that your user pool
    #   delivers to users who set an email address or phone number
    #   attribute.
    #
    #   Set the email message type that corresponds to your
    #   `DefaultEmailOption` selection. For `CONFIRM_WITH_LINK`, specify an
    #   `EmailMessageByLink` and leave `EmailMessage` blank. For
    #   `CONFIRM_WITH_CODE`, specify an `EmailMessage` and leave
    #   `EmailMessageByLink` blank. When you supply both parameters with
    #   either choice, Amazon Cognito returns an error.
    #   @return [Types::VerificationMessageTemplateType]
    #
    # @!attribute [rw] sms_authentication_message
    #   The contents of the SMS message that your user pool sends to users
    #   in SMS authentication.
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
    #   Sets multi-factor authentication (MFA) to be on, off, or optional.
    #   When `ON`, all users must set up MFA before they can sign in. When
    #   `OPTIONAL`, your application must make a client-side determination
    #   of whether a user wants to register an MFA device. For user pools
    #   with adaptive authentication with threat protection, choose
    #   `OPTIONAL`.
    #
    #   When `MfaConfiguration` is `OPTIONAL`, managed login doesn't
    #   automatically prompt users to set up MFA. Amazon Cognito generates
    #   MFA prompts in API responses and in managed login for users who have
    #   chosen and configured a preferred MFA factor.
    #   @return [String]
    #
    # @!attribute [rw] device_configuration
    #   The device-remembering configuration for a user pool. Device
    #   remembering or device tracking is a "Remember me on this device"
    #   option for user pools that perform authentication with the device
    #   key of a trusted device in the back end, instead of a user-provided
    #   MFA code. For more information about device authentication, see
    #   [Working with user devices in your user pool][1]. A null value
    #   indicates that you have deactivated device remembering in your user
    #   pool.
    #
    #   <note markdown="1"> When you provide a value for any `DeviceConfiguration` field, you
    #   activate the Amazon Cognito device-remembering feature. For more
    #   infor
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-device-tracking.html
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
    #   The SMS configuration with the settings for your Amazon Cognito user
    #   pool to send SMS message with Amazon Simple Notification Service. To
    #   send SMS messages with Amazon SNS in the Amazon Web Services Region
    #   that you want, the Amazon Cognito user pool uses an Identity and
    #   Access Management (IAM) role in your Amazon Web Services account.
    #   For more information see [SMS message settings][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-sms-settings.html
    #   @return [Types::SmsConfigurationType]
    #
    # @!attribute [rw] user_pool_tags
    #   The tag keys and values to assign to the user pool. A tag is a label
    #   that you can use to categorize and manage user pools in different
    #   ways, such as by purpose, owner, environment, or other criteria.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] admin_create_user_config
    #   The configuration for administrative creation of users. Includes the
    #   template for the invitation message for new users, the duration of
    #   temporary passwords, and permitting self-service sign-up.
    #   @return [Types::AdminCreateUserConfigType]
    #
    # @!attribute [rw] user_pool_add_ons
    #   Contains settings for activation of threat protection, including the
    #   operating mode and additional authentication types. To log user
    #   security information but take no action, set to `AUDIT`. To
    #   configure automatic security responses to potentially unwanted
    #   traffic to your user pool, set to `ENFORCED`.
    #
    #   For more information, see [Adding advanced security to a user
    #   pool][1]. To activate this setting, your user pool must be on the [
    #   Plus tier][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pool-settings-advanced-security.html
    #   [2]: https://docs.aws.amazon.com/cognito/latest/developerguide/feature-plans-features-plus.html
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
    # @!attribute [rw] pool_name
    #   The updated name of your user pool.
    #   @return [String]
    #
    # @!attribute [rw] user_pool_tier
    #   The user pool [feature plan][1], or tier. This parameter determines
    #   the eligibility of the user pool for features like managed login,
    #   access-token customization, and threat protection. Defaults to
    #   `ESSENTIALS`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-sign-in-feature-plans.html
    #   @return [String]
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
      :account_recovery_setting,
      :pool_name,
      :user_pool_tier)
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
    #   When `AttributesRequireVerificationBeforeUpdate` is false, your user
    #   pool doesn't require that your users verify attribute changes
    #   before Amazon Cognito updates them. In a user pool where
    #   `AttributesRequireVerificationBeforeUpdate` is false, API operations
    #   that change attribute values can immediately update a user’s `email`
    #   or `phone_number` attribute.
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
    # Amazon Cognito threat protection.
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

    # A user import job in a user pool. Describes the status of user import
    # with a CSV file. For more information, see [Importing users into user
    # pools from a CSV file][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-using-import-tool.html
    #
    # @!attribute [rw] job_name
    #   The friendly name of the user import job.
    #   @return [String]
    #
    # @!attribute [rw] job_id
    #   The ID of the user import job.
    #   @return [String]
    #
    # @!attribute [rw] user_pool_id
    #   The ID of the user pool that the users are being imported into.
    #   @return [String]
    #
    # @!attribute [rw] pre_signed_url
    #   The pre-signed URL target for uploading the CSV file.
    #   @return [String]
    #
    # @!attribute [rw] creation_date
    #   The date and time when the item was created. Amazon Cognito returns
    #   this timestamp in UNIX epoch time format. Your SDK might render the
    #   output in a human-readable format like ISO 8601 or a Java `Date`
    #   object.
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

    # Contains settings for activation of threat protection, including the
    # operating mode and additional authentication types. To log user
    # security information but take no action, set to `AUDIT`. To configure
    # automatic security responses to potentially unwanted traffic to your
    # user pool, set to `ENFORCED`.
    #
    # For more information, see [Adding advanced security to a user
    # pool][1]. To activate this setting, your user pool must be on the [
    # Plus tier][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pool-settings-advanced-security.html
    # [2]: https://docs.aws.amazon.com/cognito/latest/developerguide/feature-plans-features-plus.html
    #
    # @!attribute [rw] advanced_security_mode
    #   The operating mode of threat protection for standard authentication
    #   types in your user pool, including username-password and secure
    #   remote password (SRP) authentication.
    #   @return [String]
    #
    # @!attribute [rw] advanced_security_additional_flows
    #   Threat protection configuration options for additional
    #   authentication types in your user pool, including custom
    #   authentication.
    #   @return [Types::AdvancedSecurityAdditionalFlowsType]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/UserPoolAddOnsType AWS API Documentation
    #
    class UserPoolAddOnsType < Struct.new(
      :advanced_security_mode,
      :advanced_security_additional_flows)
      SENSITIVE = []
      include Aws::Structure
    end

    # A short description of a user pool app client.
    #
    # @!attribute [rw] client_id
    #   The app client ID.
    #   @return [String]
    #
    # @!attribute [rw] user_pool_id
    #   The ID of the user pool that's associated with the app client.
    #   @return [String]
    #
    # @!attribute [rw] client_name
    #   The app client name.
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

    # The configuration of a user pool client.
    #
    # @!attribute [rw] user_pool_id
    #   The ID of the user pool associated with the app client.
    #   @return [String]
    #
    # @!attribute [rw] client_name
    #   The name of the app client.
    #   @return [String]
    #
    # @!attribute [rw] client_id
    #   The ID of the app client.
    #   @return [String]
    #
    # @!attribute [rw] client_secret
    #   The app client secret.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_date
    #   The date and time when the item was modified. Amazon Cognito returns
    #   this timestamp in UNIX epoch time format. Your SDK might render the
    #   output in a human-readable format like ISO 8601 or a Java `Date`
    #   object.
    #   @return [Time]
    #
    # @!attribute [rw] creation_date
    #   The date and time when the item was created. Amazon Cognito returns
    #   this timestamp in UNIX epoch time format. Your SDK might render the
    #   output in a human-readable format like ISO 8601 or a Java `Date`
    #   object.
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
    #   The default time unit for `IdTokenValidity` in an API request is
    #   hours. *Valid range* is displayed below in seconds.
    #
    #   If you don't specify otherwise in the configuration of your app
    #   client, your ID tokens are valid for one hour.
    #   @return [Integer]
    #
    # @!attribute [rw] token_validity_units
    #   The time units that, with `IdTokenValidity`, `AccessTokenValidity`,
    #   and `RefreshTokenValidity`, set and display the duration of ID,
    #   access, and refresh tokens for an app client. You can assign a
    #   separate token validity unit to each type of token.
    #   @return [Types::TokenValidityUnitsType]
    #
    # @!attribute [rw] read_attributes
    #   The list of user attributes that you want your app client to have
    #   read access to. After your user authenticates in your app, their
    #   access token authorizes them to read their own attribute value for
    #   any attribute in this list.
    #
    #   When you don't specify the `ReadAttributes` for your app client,
    #   your app can read the values of `email_verified`,
    #   `phone_number_verified`, and the standard attributes of your user
    #   pool. When your user pool app client has read access to these
    #   default attributes, `ReadAttributes` doesn't return any
    #   information. Amazon Cognito only populates `ReadAttributes` in the
    #   API response if you have specified your own custom set of read
    #   attributes.
    #   @return [Array<String>]
    #
    # @!attribute [rw] write_attributes
    #   The list of user attributes that you want your app client to have
    #   write access to. After your user authenticates in your app, their
    #   access token authorizes them to set or modify their own attribute
    #   value for any attribute in this list.
    #
    #   When you don't specify the `WriteAttributes` for your app client,
    #   your app can write the values of the Standard attributes of your
    #   user pool. When your user pool has write access to these default
    #   attributes, `WriteAttributes` doesn't return any information.
    #   Amazon Cognito only populates `WriteAttributes` in the API response
    #   if you have specified your own custom set of write attributes.
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
    #   The [authentication flows][1] that you want your user pool client to
    #   support. For each app client in your user pool, you can sign in your
    #   users with any combination of one or more flows, including with a
    #   user name and Secure Remote Password (SRP), a user name and
    #   password, or a custom authentication process that you define with
    #   Lambda functions.
    #
    #   <note markdown="1"> If you don't specify a value for `ExplicitAuthFlows`, your app
    #   client supports `ALLOW_REFRESH_TOKEN_AUTH`, `ALLOW_USER_SRP_AUTH`,
    #   and `ALLOW_CUSTOM_AUTH`.
    #
    #    </note>
    #
    #   The values for authentication flow options include the following.
    #
    #   * `ALLOW_USER_AUTH`: Enable selection-based sign-in with
    #     `USER_AUTH`. This setting covers username-password, secure remote
    #     password (SRP), passwordless, and passkey authentication. This
    #     authentiation flow can do username-password and SRP authentication
    #     without other `ExplicitAuthFlows` permitting them. For example
    #     users can complete an SRP challenge through `USER_AUTH` without
    #     the flow `USER_SRP_AUTH` being active for the app client. This
    #     flow doesn't include `CUSTOM_AUTH`.
    #
    #     To activate this setting, your user pool must be in the [
    #     Essentials tier][2] or higher.
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
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-authentication-flow-methods.html
    #   [2]: https://docs.aws.amazon.com/cognito/latest/developerguide/feature-plans-features-essentials.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] supported_identity_providers
    #   A list of provider names for the identity providers (IdPs) that are
    #   supported on this client. The following are supported: `COGNITO`,
    #   `Facebook`, `Google`, `SignInWithApple`, and `LoginWithAmazon`. You
    #   can also specify the names that you configured for the SAML and OIDC
    #   IdPs in your user pool, for example `MySAMLIdP` or `MyOIDCIdP`.
    #
    #   This parameter sets the IdPs that [managed login][1] will display on
    #   the login page for your app client. The removal of `COGNITO` from
    #   this list doesn't prevent authentication operations for local users
    #   with the user pools API in an Amazon Web Services SDK. The only way
    #   to prevent SDK-based authentication is to block access with a [WAF
    #   rule][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-managed-login.html
    #   [2]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-waf.html
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
    #   The OAuth grant types that you want your app client to generate. To
    #   create an app client that generates client credentials grants, you
    #   must add `client_credentials` as the only allowed OAuth flow.
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
    #   The OAuth 2.0 scopes that you want your app client to support. Can
    #   include standard OAuth scopes like `phone`, `email`, `openid`, and
    #   `profile`. Can also include the `aws.cognito.signin.user.admin`
    #   scope that authorizes user profile self-service operations and
    #   custom scopes from resource servers.
    #   @return [Array<String>]
    #
    # @!attribute [rw] allowed_o_auth_flows_user_pool_client
    #   Set to `true` to use OAuth 2.0 authorization server features in your
    #   app client.
    #
    #   This parameter must have a value of `true` before you can configure
    #   the following features in your app client.
    #
    #   * `CallBackURLs`: Callback URLs.
    #
    #   * `LogoutURLs`: Sign-out redirect URLs.
    #
    #   * `AllowedOAuthScopes`: OAuth 2.0 scopes.
    #
    #   * `AllowedOAuthFlows`: Support for authorization code, implicit, and
    #     client credentials OAuth 2.0 grants.
    #
    #   To use authorization server features, configure one of these
    #   features in the Amazon Cognito console or set
    #   `AllowedOAuthFlowsUserPoolClient` to `true` in a
    #   `CreateUserPoolClient` or `UpdateUserPoolClient` API request. If you
    #   don't set a value for `AllowedOAuthFlowsUserPoolClient` in a
    #   request with the CLI or SDKs, it defaults to `false`. When `false`,
    #   only SDK-based API sign-in is permitted.
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
    #   When `ENABLED`, suppresses messages that might indicate a valid user
    #   exists when someone attempts sign-in. This parameters sets your
    #   preference for the errors and responses that you want Amazon Cognito
    #   APIs to return during authentication, account confirmation, and
    #   password recovery when the user doesn't exist in the user pool.
    #   When set to `ENABLED` and the user doesn't exist, authentication
    #   returns an error indicating either the username or password was
    #   incorrect. Account confirmation and password recovery return a
    #   response indicating a code was sent to a simulated destination. When
    #   set to `LEGACY`, those APIs return a `UserNotFoundException`
    #   exception if the user doesn't exist in the user pool.
    #
    #   Defaults to `LEGACY`.
    #   @return [String]
    #
    # @!attribute [rw] enable_token_revocation
    #   Indicates whether token revocation is activated for the user pool
    #   client. When you create a new user pool client, token revocation is
    #   activated by default.
    #   @return [Boolean]
    #
    # @!attribute [rw] enable_propagate_additional_user_context_data
    #   When `EnablePropagateAdditionalUserContextData` is true, Amazon
    #   Cognito accepts an `IpAddress` value that you send in the
    #   `UserContextData` parameter. The `UserContextData` parameter sends
    #   information to Amazon Cognito threat protection for risk analysis.
    #   You can send `UserContextData` when you sign in Amazon Cognito
    #   native users with the `InitiateAuth` and `RespondToAuthChallenge`
    #   API operations.
    #
    #   When `EnablePropagateAdditionalUserContextData` is false, you can't
    #   send your user's source IP address to Amazon Cognito threat
    #   protection with unauthenticated API operations.
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

    # A short description of a user pool.
    #
    # @!attribute [rw] id
    #   The user pool ID.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The user pool name.
    #   @return [String]
    #
    # @!attribute [rw] lambda_config
    #   A collection of user pool Lambda triggers. Amazon Cognito invokes
    #   triggers at several possible stages of user pool operations.
    #   Triggers can modify the outcome of the operations that invoked them.
    #   @return [Types::LambdaConfigType]
    #
    # @!attribute [rw] status
    #   The user pool status.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_date
    #   The date and time when the item was modified. Amazon Cognito returns
    #   this timestamp in UNIX epoch time format. Your SDK might render the
    #   output in a human-readable format like ISO 8601 or a Java `Date`
    #   object.
    #   @return [Time]
    #
    # @!attribute [rw] creation_date
    #   The date and time when the item was created. Amazon Cognito returns
    #   this timestamp in UNIX epoch time format. Your SDK might render the
    #   output in a human-readable format like ISO 8601 or a Java `Date`
    #   object.
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

    # A list of user pool policies. Contains the policy that sets
    # password-complexity requirements.
    #
    # @!attribute [rw] password_policy
    #   The password policy settings for a user pool, including complexity,
    #   history, and length requirements.
    #   @return [Types::PasswordPolicyType]
    #
    # @!attribute [rw] sign_in_policy
    #   The policy for allowed types of authentication in a user pool.
    #   @return [Types::SignInPolicyType]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/UserPoolPolicyType AWS API Documentation
    #
    class UserPoolPolicyType < Struct.new(
      :password_policy,
      :sign_in_policy)
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

    # The configuration of a user pool.
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
    #   A list of user pool policies. Contains the policy that sets
    #   password-complexity requirements.
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
    #   A collection of user pool Lambda triggers. Amazon Cognito invokes
    #   triggers at several possible stages of user pool operations.
    #   Triggers can modify the outcome of the operations that invoked them.
    #   @return [Types::LambdaConfigType]
    #
    # @!attribute [rw] status
    #   This parameter is no longer used.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_date
    #   The date and time when the item was modified. Amazon Cognito returns
    #   this timestamp in UNIX epoch time format. Your SDK might render the
    #   output in a human-readable format like ISO 8601 or a Java `Date`
    #   object.
    #   @return [Time]
    #
    # @!attribute [rw] creation_date
    #   The date and time when the item was created. Amazon Cognito returns
    #   this timestamp in UNIX epoch time format. Your SDK might render the
    #   output in a human-readable format like ISO 8601 or a Java `Date`
    #   object.
    #   @return [Time]
    #
    # @!attribute [rw] schema_attributes
    #   A list of the user attributes and their properties in your user
    #   pool. The attribute schema contains standard attributes, custom
    #   attributes with a `custom:` prefix, and developer attributes with a
    #   `dev:` prefix. For more information, see [User pool attributes][1].
    #
    #   Developer-only attributes are a legacy feature of user pools, and
    #   are read-only to all app clients. You can create and update
    #   developer-only attributes only with IAM-authenticated API
    #   operations. Use app client read/write permissions instead.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-settings-attributes.html
    #   @return [Array<Types::SchemaAttributeType>]
    #
    # @!attribute [rw] auto_verified_attributes
    #   The attributes that are auto-verified in a user pool.
    #   @return [Array<String>]
    #
    # @!attribute [rw] alias_attributes
    #   Attributes supported as an alias for this user pool. An alias is an
    #   attribute that users can enter as an alternative username. Possible
    #   values: **phone\_number**, **email**, or **preferred\_username**.
    #   @return [Array<String>]
    #
    # @!attribute [rw] username_attributes
    #   Specifies whether a user can use an email address or phone number as
    #   a username when they sign up.
    #   @return [Array<String>]
    #
    # @!attribute [rw] sms_verification_message
    #   This parameter is no longer used.
    #   @return [String]
    #
    # @!attribute [rw] email_verification_message
    #   This parameter is no longer used.
    #   @return [String]
    #
    # @!attribute [rw] email_verification_subject
    #   This parameter is no longer used.
    #   @return [String]
    #
    # @!attribute [rw] verification_message_template
    #   The template for the verification message that your user pool
    #   delivers to users who set an email address or phone number
    #   attribute.
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
    #   and sender for messages from your user pool.
    #   @return [Types::EmailConfigurationType]
    #
    # @!attribute [rw] sms_configuration
    #   User pool configuration for delivery of SMS messages with Amazon
    #   Simple Notification Service. To send SMS messages with Amazon SNS in
    #   the Amazon Web Services Region that you want, the Amazon Cognito
    #   user pool uses an Identity and Access Management (IAM) role in your
    #   Amazon Web Services account.
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
    #     get populated with SNSSandbox if the user creating the user pool
    #     doesn’t have SNS permissions. To learn how to move your Amazon Web
    #     Services account out of the sandbox, see [Moving out of the SMS
    #     sandbox][2].
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
    #   Contains settings for activation of threat protection, including the
    #   operating mode and additional authentication types. To log user
    #   security information but take no action, set to `AUDIT`. To
    #   configure automatic security responses to potentially unwanted
    #   traffic to your user pool, set to `ENFORCED`.
    #
    #   For more information, see [Adding advanced security to a user
    #   pool][1]. To activate this setting, your user pool must be on the [
    #   Plus tier][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pool-settings-advanced-security.html
    #   [2]: https://docs.aws.amazon.com/cognito/latest/developerguide/feature-plans-features-plus.html
    #   @return [Types::UserPoolAddOnsType]
    #
    # @!attribute [rw] username_configuration
    #   Case sensitivity of the username input for the selected sign-in
    #   option. When case sensitivity is set to `False` (case insensitive),
    #   users can sign in with any combination of capital and lowercase
    #   letters. For example, `username`, `USERNAME`, or `UserName`, or for
    #   email, `email@example.com` or `EMaiL@eXamplE.Com`. For most use
    #   cases, set case sensitivity to `False` (case insensitive) as a best
    #   practice. When usernames and email addresses are case insensitive,
    #   Amazon Cognito treats any variation in case as the same user, and
    #   prevents a case variation from being assigned to the same attribute
    #   for a different user.
    #   @return [Types::UsernameConfigurationType]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the user pool.
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
    # @!attribute [rw] user_pool_tier
    #   The user pool [feature plan][1], or tier. This parameter determines
    #   the eligibility of the user pool for features like managed login,
    #   access-token customization, and threat protection. Defaults to
    #   `ESSENTIALS`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-sign-in-feature-plans.html
    #   @return [String]
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
      :account_recovery_setting,
      :user_pool_tier)
      SENSITIVE = []
      include Aws::Structure
    end

    # A user profile in a Amazon Cognito user pool.
    #
    # @!attribute [rw] username
    #   The user's username.
    #   @return [String]
    #
    # @!attribute [rw] attributes
    #   Names and values of a user's attributes, for example `email`.
    #   @return [Array<Types::AttributeType>]
    #
    # @!attribute [rw] user_create_date
    #   The date and time when the item was created. Amazon Cognito returns
    #   this timestamp in UNIX epoch time format. Your SDK might render the
    #   output in a human-readable format like ISO 8601 or a Java `Date`
    #   object.
    #   @return [Time]
    #
    # @!attribute [rw] user_last_modified_date
    #   The date and time when the item was modified. Amazon Cognito returns
    #   this timestamp in UNIX epoch time format. Your SDK might render the
    #   output in a human-readable format like ISO 8601 or a Java `Date`
    #   object.
    #   @return [Time]
    #
    # @!attribute [rw] enabled
    #   Indicates whether the user's account is enabled or disabled.
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
    #   The user's MFA configuration.
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

    # The configuration of a user pool for username case sensitivity.
    #
    # @!attribute [rw] case_sensitive
    #   Specifies whether user name case sensitivity will be applied for all
    #   users in the user pool through Amazon Cognito APIs. For most use
    #   cases, set case sensitivity to `False` (case insensitive) as a best
    #   practice. When usernames and email addresses are case insensitive,
    #   users can sign in as the same user when they enter a different
    #   capitalization of their user name.
    #
    #   Valid values include:
    #
    #   true
    #
    #   : Enables case sensitivity for all username input. When this option
    #     is set to `true`, users must sign in using the exact
    #     capitalization of their given username, such as “UserName”. This
    #     is the default value.
    #
    #   false
    #
    #   : Enables case insensitivity for all username input. For example,
    #     when this option is set to `false`, users can sign in using
    #     `username`, `USERNAME`, or `UserName`. This option also enables
    #     both `preferred_username` and `email` alias to be case
    #     insensitive, in addition to the `username` attribute.
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

    # The template for the verification message that your user pool delivers
    # to users who set an email address or phone number attribute.
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
    #   The configuration of verification emails to contain a clickable link
    #   or a verification code.
    #
    #   For link, your template body must contain link text in the format
    #   `{##Click here##}`. "Click here" in the example is a customizable
    #   string. For code, your template body must contain a code placeholder
    #   in the format `{####}`.
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
    #   A valid access token that Amazon Cognito issued to the currently
    #   signed-in user. Must include a scope claim for
    #   `aws.cognito.signin.user.admin`.
    #   @return [String]
    #
    # @!attribute [rw] session
    #   The session ID from an `AssociateSoftwareToken` request.
    #   @return [String]
    #
    # @!attribute [rw] user_code
    #   A TOTP that the user generated in their configured authenticator
    #   app.
    #   @return [String]
    #
    # @!attribute [rw] friendly_device_name
    #   A friendly name for the device that's running the TOTP
    #   authenticator.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/VerifySoftwareTokenRequest AWS API Documentation
    #
    class VerifySoftwareTokenRequest < Struct.new(
      :access_token,
      :session,
      :user_code,
      :friendly_device_name)
      SENSITIVE = [:access_token, :session, :user_code]
      include Aws::Structure
    end

    # @!attribute [rw] status
    #   Amazon Cognito can accept or reject the code that you provide. This
    #   response parameter indicates the success of TOTP verification. Some
    #   reasons that this operation might return an error are clock skew on
    #   the user's device and excessive retries.
    #   @return [String]
    #
    # @!attribute [rw] session
    #   This session ID satisfies an `MFA_SETUP` challenge. Supply the
    #   session ID in your challenge response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/VerifySoftwareTokenResponse AWS API Documentation
    #
    class VerifySoftwareTokenResponse < Struct.new(
      :status,
      :session)
      SENSITIVE = [:session]
      include Aws::Structure
    end

    # Represents the request to verify user attributes.
    #
    # @!attribute [rw] access_token
    #   A valid access token that Amazon Cognito issued to the currently
    #   signed-in user. Must include a scope claim for
    #   `aws.cognito.signin.user.admin`.
    #   @return [String]
    #
    # @!attribute [rw] attribute_name
    #   The name of the attribute that you want to verify.
    #   @return [String]
    #
    # @!attribute [rw] code
    #   The verification code that your user pool sent to the added or
    #   changed attribute, for example the user's email address.
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

    # This exception is thrown when the challenge from `StartWebAuthn`
    # registration has expired.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/WebAuthnChallengeNotFoundException AWS API Documentation
    #
    class WebAuthnChallengeNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # This exception is thrown when the access token is for a different
    # client than the one in the original `StartWebAuthnRegistration`
    # request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/WebAuthnClientMismatchException AWS API Documentation
    #
    class WebAuthnClientMismatchException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # This exception is thrown when a user pool doesn't have a configured
    # relying party id or a user pool domain.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/WebAuthnConfigurationMissingException AWS API Documentation
    #
    class WebAuthnConfigurationMissingException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Settings for authentication (MFA) with passkey, or webauthN, biometric
    # and security-key devices in a user pool. Configures the following:
    #
    # * Configuration for requiring user-verification support in passkeys.
    #
    # * The user pool relying-party ID. This is the domain, typically your
    #   user pool domain, that user's passkey providers should trust as a
    #   receiver of passkey authentication.
    #
    # * The providers that you want to allow as origins for passkey
    #   authentication.
    #
    # @!attribute [rw] relying_party_id
    #   Sets or displays the authentication domain, typically your user pool
    #   domain, that passkey providers must use as a relying party (RP) in
    #   their configuration.
    #
    #   Under the following conditions, the passkey relying party ID must be
    #   the fully-qualified domain name of your custom domain:
    #
    #   * The user pool is configured for passkey authentication.
    #
    #   * The user pool has a custom domain, whether or not it also has a
    #     prefix domain.
    #
    #   * Your application performs authentication with managed login or the
    #     classic hosted UI.
    #   @return [String]
    #
    # @!attribute [rw] user_verification
    #   When `required`, users can only register and sign in users with
    #   passkeys that are capable of [user verification][1]. When
    #   `preferred`, your user pool doesn't require the use of
    #   authenticators with user verification but encourages it.
    #
    #
    #
    #   [1]: https://www.w3.org/TR/webauthn-2/#enum-userVerificationRequirement
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/WebAuthnConfigurationType AWS API Documentation
    #
    class WebAuthnConfigurationType < Struct.new(
      :relying_party_id,
      :user_verification)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of a passkey, or webauthN, biometric or security-key
    # authentication factor for a user.
    #
    # @!attribute [rw] credential_id
    #   The unique identifier of the passkey credential.
    #   @return [String]
    #
    # @!attribute [rw] friendly_credential_name
    #   An automatically-generated friendly name for the passkey credential.
    #   @return [String]
    #
    # @!attribute [rw] relying_party_id
    #   The relying-party ID of the provider for the passkey credential.
    #   @return [String]
    #
    # @!attribute [rw] authenticator_attachment
    #   The general category of the passkey authenticator. Can be a
    #   platform, or on-device authenticator like a built-in fingerprint
    #   scanner, or a cross-platform device that's not attached to the
    #   device like a Bluetooth security key.
    #   @return [String]
    #
    # @!attribute [rw] authenticator_transports
    #   Information about the transport methods of the passkey credential,
    #   for example USB or Bluetooth Low Energy.
    #   @return [Array<String>]
    #
    # @!attribute [rw] created_at
    #   The date and time when the item was created. Amazon Cognito returns
    #   this timestamp in UNIX epoch time format. Your SDK might render the
    #   output in a human-readable format like ISO 8601 or a Java `Date`
    #   object.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/WebAuthnCredentialDescription AWS API Documentation
    #
    class WebAuthnCredentialDescription < Struct.new(
      :credential_id,
      :friendly_credential_name,
      :relying_party_id,
      :authenticator_attachment,
      :authenticator_transports,
      :created_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # This exception is thrown when a user presents passkey credentials from
    # an unsupported device or provider.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/WebAuthnCredentialNotSupportedException AWS API Documentation
    #
    class WebAuthnCredentialNotSupportedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # This exception is thrown when the passkey feature isn't enabled for
    # the user pool.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/WebAuthnNotEnabledException AWS API Documentation
    #
    class WebAuthnNotEnabledException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # This exception is thrown when the passkey credential's registration
    # origin does not align with the user pool relying party id.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/WebAuthnOriginNotAllowedException AWS API Documentation
    #
    class WebAuthnOriginNotAllowedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # This exception is thrown when the given passkey credential is
    # associated with a different relying party ID than the user pool
    # relying party ID.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/WebAuthnRelyingPartyMismatchException AWS API Documentation
    #
    class WebAuthnRelyingPartyMismatchException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

