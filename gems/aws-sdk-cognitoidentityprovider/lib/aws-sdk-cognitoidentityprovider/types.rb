# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::CognitoIdentityProvider
  module Types

    # Account takeover action type.
    #
    # @note When making an API call, you may pass AccountTakeoverActionType
    #   data as a hash:
    #
    #       {
    #         notify: false, # required
    #         event_action: "BLOCK", # required, accepts BLOCK, MFA_IF_CONFIGURED, MFA_REQUIRED, NO_ACTION
    #       }
    #
    # @!attribute [rw] notify
    #   Flag specifying whether to send a notification.
    #   @return [Boolean]
    #
    # @!attribute [rw] event_action
    #   The event action.
    #
    #   * `BLOCK` Choosing this action will block the request.
    #
    #   * `MFA_IF_CONFIGURED` Throw MFA challenge if user has configured it,
    #     else allow the request.
    #
    #   * `MFA_REQUIRED` Throw MFA challenge if user has configured it, else
    #     block the request.
    #
    #   * `NO_ACTION` Allow the user sign-in.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AccountTakeoverActionType AWS API Documentation
    #
    class AccountTakeoverActionType < Struct.new(
      :notify,
      :event_action)
      include Aws::Structure
    end

    # Account takeover actions type.
    #
    # @note When making an API call, you may pass AccountTakeoverActionsType
    #   data as a hash:
    #
    #       {
    #         low_action: {
    #           notify: false, # required
    #           event_action: "BLOCK", # required, accepts BLOCK, MFA_IF_CONFIGURED, MFA_REQUIRED, NO_ACTION
    #         },
    #         medium_action: {
    #           notify: false, # required
    #           event_action: "BLOCK", # required, accepts BLOCK, MFA_IF_CONFIGURED, MFA_REQUIRED, NO_ACTION
    #         },
    #         high_action: {
    #           notify: false, # required
    #           event_action: "BLOCK", # required, accepts BLOCK, MFA_IF_CONFIGURED, MFA_REQUIRED, NO_ACTION
    #         },
    #       }
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
      include Aws::Structure
    end

    # Configuration for mitigation actions and notification for different
    # levels of risk detected for a potential account takeover.
    #
    # @note When making an API call, you may pass AccountTakeoverRiskConfigurationType
    #   data as a hash:
    #
    #       {
    #         notify_configuration: {
    #           from: "StringType",
    #           reply_to: "StringType",
    #           source_arn: "ArnType", # required
    #           block_email: {
    #             subject: "EmailNotificationSubjectType", # required
    #             html_body: "EmailNotificationBodyType",
    #             text_body: "EmailNotificationBodyType",
    #           },
    #           no_action_email: {
    #             subject: "EmailNotificationSubjectType", # required
    #             html_body: "EmailNotificationBodyType",
    #             text_body: "EmailNotificationBodyType",
    #           },
    #           mfa_email: {
    #             subject: "EmailNotificationSubjectType", # required
    #             html_body: "EmailNotificationBodyType",
    #             text_body: "EmailNotificationBodyType",
    #           },
    #         },
    #         actions: { # required
    #           low_action: {
    #             notify: false, # required
    #             event_action: "BLOCK", # required, accepts BLOCK, MFA_IF_CONFIGURED, MFA_REQUIRED, NO_ACTION
    #           },
    #           medium_action: {
    #             notify: false, # required
    #             event_action: "BLOCK", # required, accepts BLOCK, MFA_IF_CONFIGURED, MFA_REQUIRED, NO_ACTION
    #           },
    #           high_action: {
    #             notify: false, # required
    #             event_action: "BLOCK", # required, accepts BLOCK, MFA_IF_CONFIGURED, MFA_REQUIRED, NO_ACTION
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] notify_configuration
    #   The notify configuration used to construct email notifications.
    #   @return [Types::NotifyConfigurationType]
    #
    # @!attribute [rw] actions
    #   Account takeover risk configuration actions
    #   @return [Types::AccountTakeoverActionsType]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AccountTakeoverRiskConfigurationType AWS API Documentation
    #
    class AccountTakeoverRiskConfigurationType < Struct.new(
      :notify_configuration,
      :actions)
      include Aws::Structure
    end

    # Represents the request to add custom attributes.
    #
    # @note When making an API call, you may pass AddCustomAttributesRequest
    #   data as a hash:
    #
    #       {
    #         user_pool_id: "UserPoolIdType", # required
    #         custom_attributes: [ # required
    #           {
    #             name: "CustomAttributeNameType",
    #             attribute_data_type: "String", # accepts String, Number, DateTime, Boolean
    #             developer_only_attribute: false,
    #             mutable: false,
    #             required: false,
    #             number_attribute_constraints: {
    #               min_value: "StringType",
    #               max_value: "StringType",
    #             },
    #             string_attribute_constraints: {
    #               min_length: "StringType",
    #               max_length: "StringType",
    #             },
    #           },
    #         ],
    #       }
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
      include Aws::Structure
    end

    # Represents the response from the server for the request to add custom
    # attributes.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AddCustomAttributesResponse AWS API Documentation
    #
    class AddCustomAttributesResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass AdminAddUserToGroupRequest
    #   data as a hash:
    #
    #       {
    #         user_pool_id: "UserPoolIdType", # required
    #         username: "UsernameType", # required
    #         group_name: "GroupNameType", # required
    #       }
    #
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
      include Aws::Structure
    end

    # Represents the request to confirm user registration.
    #
    # @note When making an API call, you may pass AdminConfirmSignUpRequest
    #   data as a hash:
    #
    #       {
    #         user_pool_id: "UserPoolIdType", # required
    #         username: "UsernameType", # required
    #       }
    #
    # @!attribute [rw] user_pool_id
    #   The user pool ID for which you want to confirm user registration.
    #   @return [String]
    #
    # @!attribute [rw] username
    #   The user name for which you want to confirm user registration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AdminConfirmSignUpRequest AWS API Documentation
    #
    class AdminConfirmSignUpRequest < Struct.new(
      :user_pool_id,
      :username)
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
    # @note When making an API call, you may pass AdminCreateUserConfigType
    #   data as a hash:
    #
    #       {
    #         allow_admin_create_user_only: false,
    #         unused_account_validity_days: 1,
    #         invite_message_template: {
    #           sms_message: "SmsVerificationMessageType",
    #           email_message: "EmailVerificationMessageType",
    #           email_subject: "EmailVerificationSubjectType",
    #         },
    #       }
    #
    # @!attribute [rw] allow_admin_create_user_only
    #   Set to `True` if only the administrator is allowed to create user
    #   profiles. Set to `False` if users can sign themselves up via an app.
    #   @return [Boolean]
    #
    # @!attribute [rw] unused_account_validity_days
    #   The user account expiration limit, in days, after which the account
    #   is no longer usable. To reset the account after that time limit, you
    #   must call `AdminCreateUser` again, specifying `"RESEND"` for the
    #   `MessageAction` parameter. The default value for this parameter is
    #   7.
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
    #   [1]: http://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pool-settings-message-customizations.html#cognito-user-pool-settings-user-invitation-message-customization
    #   @return [Types::MessageTemplateType]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AdminCreateUserConfigType AWS API Documentation
    #
    class AdminCreateUserConfigType < Struct.new(
      :allow_admin_create_user_only,
      :unused_account_validity_days,
      :invite_message_template)
      include Aws::Structure
    end

    # Represents the request to create a user in the specified user pool.
    #
    # @note When making an API call, you may pass AdminCreateUserRequest
    #   data as a hash:
    #
    #       {
    #         user_pool_id: "UserPoolIdType", # required
    #         username: "UsernameType", # required
    #         user_attributes: [
    #           {
    #             name: "AttributeNameType", # required
    #             value: "AttributeValueType",
    #           },
    #         ],
    #         validation_data: [
    #           {
    #             name: "AttributeNameType", # required
    #             value: "AttributeValueType",
    #           },
    #         ],
    #         temporary_password: "PasswordType",
    #         force_alias_creation: false,
    #         message_action: "RESEND", # accepts RESEND, SUPPRESS
    #         desired_delivery_mediums: ["SMS"], # accepts SMS, EMAIL
    #       }
    #
    # @!attribute [rw] user_pool_id
    #   The user pool ID for the user pool where the user will be created.
    #   @return [String]
    #
    # @!attribute [rw] username
    #   The username for the user. Must be unique within the user pool. Must
    #   be a UTF-8 string between 1 and 128 characters. After the user is
    #   created, the username cannot be changed.
    #   @return [String]
    #
    # @!attribute [rw] user_attributes
    #   An array of name-value pairs that contain user attributes and
    #   attribute values to be set for the user to be created. You can
    #   create a user without specifying any attributes other than
    #   `Username`. However, any attributes that you specify as required (in
    #   or in the **Attributes** tab of the console) must be supplied either
    #   by you (in your call to `AdminCreateUser`) or by the user (when he
    #   or she signs up in response to your welcome message).
    #
    #   For custom attributes, you must prepend the `custom:` prefix to the
    #   attribute name.
    #
    #   To send a message inviting the user to sign up, you must specify the
    #   user's email address or phone number. This can be done in your call
    #   to AdminCreateUser or in the **Users** tab of the Amazon Cognito
    #   console for managing your user pools.
    #
    #   In your call to `AdminCreateUser`, you can set the `email_verified`
    #   attribute to `True`, and you can set the `phone_number_verified`
    #   attribute to `True`. (You can also do this by calling .)
    #
    #   * **email**\: The email address of the user to whom the message that
    #     contains the code and username will be sent. Required if the
    #     `email_verified` attribute is set to `True`, or if `"EMAIL"` is
    #     specified in the `DesiredDeliveryMediums` parameter.
    #
    #   * **phone\_number**\: The phone number of the user to whom the
    #     message that contains the code and username will be sent. Required
    #     if the `phone_number_verified` attribute is set to `True`, or if
    #     `"SMS"` is specified in the `DesiredDeliveryMediums` parameter.
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
    #   The user's validation data is not persisted.
    #   @return [Array<Types::AttributeType>]
    #
    # @!attribute [rw] temporary_password
    #   The user's temporary password. This password must conform to the
    #   password policy that you specified when you created the user pool.
    #
    #   The temporary password is valid only once. To complete the Admin
    #   Create User flow, the user must enter the temporary password in the
    #   sign-in page along with a new password to be used in all future
    #   sign-ins.
    #
    #   This parameter is not required. If you do not specify a value,
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
    #   This parameter is only used if the `phone_number_verified` or
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
    #   Set to `"RESEND"` to resend the invitation message to a user that
    #   already exists and reset the expiration limit on the user's
    #   account. Set to `"SUPPRESS"` to suppress sending the message. Only
    #   one value can be specified.
    #   @return [String]
    #
    # @!attribute [rw] desired_delivery_mediums
    #   Specify `"EMAIL"` if email will be used to send the welcome message.
    #   Specify `"SMS"` if the phone number will be used. The default value
    #   is `"SMS"`. More than one value can be specified.
    #   @return [Array<String>]
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
      :desired_delivery_mediums)
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
      include Aws::Structure
    end

    # Represents the request to delete user attributes as an administrator.
    #
    # @note When making an API call, you may pass AdminDeleteUserAttributesRequest
    #   data as a hash:
    #
    #       {
    #         user_pool_id: "UserPoolIdType", # required
    #         username: "UsernameType", # required
    #         user_attribute_names: ["AttributeNameType"], # required
    #       }
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
    #   An array of strings representing the user attribute names you wish
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
    # @note When making an API call, you may pass AdminDeleteUserRequest
    #   data as a hash:
    #
    #       {
    #         user_pool_id: "UserPoolIdType", # required
    #         username: "UsernameType", # required
    #       }
    #
    # @!attribute [rw] user_pool_id
    #   The user pool ID for the user pool where you want to delete the
    #   user.
    #   @return [String]
    #
    # @!attribute [rw] username
    #   The user name of the user you wish to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AdminDeleteUserRequest AWS API Documentation
    #
    class AdminDeleteUserRequest < Struct.new(
      :user_pool_id,
      :username)
      include Aws::Structure
    end

    # @note When making an API call, you may pass AdminDisableProviderForUserRequest
    #   data as a hash:
    #
    #       {
    #         user_pool_id: "StringType", # required
    #         user: { # required
    #           provider_name: "ProviderNameType",
    #           provider_attribute_name: "StringType",
    #           provider_attribute_value: "StringType",
    #         },
    #       }
    #
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
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AdminDisableProviderForUserResponse AWS API Documentation
    #
    class AdminDisableProviderForUserResponse < Aws::EmptyStructure; end

    # Represents the request to disable any user as an administrator.
    #
    # @note When making an API call, you may pass AdminDisableUserRequest
    #   data as a hash:
    #
    #       {
    #         user_pool_id: "UserPoolIdType", # required
    #         username: "UsernameType", # required
    #       }
    #
    # @!attribute [rw] user_pool_id
    #   The user pool ID for the user pool where you want to disable the
    #   user.
    #   @return [String]
    #
    # @!attribute [rw] username
    #   The user name of the user you wish to disable.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AdminDisableUserRequest AWS API Documentation
    #
    class AdminDisableUserRequest < Struct.new(
      :user_pool_id,
      :username)
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
    # @note When making an API call, you may pass AdminEnableUserRequest
    #   data as a hash:
    #
    #       {
    #         user_pool_id: "UserPoolIdType", # required
    #         username: "UsernameType", # required
    #       }
    #
    # @!attribute [rw] user_pool_id
    #   The user pool ID for the user pool where you want to enable the
    #   user.
    #   @return [String]
    #
    # @!attribute [rw] username
    #   The user name of the user you wish to enable.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AdminEnableUserRequest AWS API Documentation
    #
    class AdminEnableUserRequest < Struct.new(
      :user_pool_id,
      :username)
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
    # @note When making an API call, you may pass AdminForgetDeviceRequest
    #   data as a hash:
    #
    #       {
    #         user_pool_id: "UserPoolIdType", # required
    #         username: "UsernameType", # required
    #         device_key: "DeviceKeyType", # required
    #       }
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
      include Aws::Structure
    end

    # Represents the request to get the device, as an administrator.
    #
    # @note When making an API call, you may pass AdminGetDeviceRequest
    #   data as a hash:
    #
    #       {
    #         device_key: "DeviceKeyType", # required
    #         user_pool_id: "UserPoolIdType", # required
    #         username: "UsernameType", # required
    #       }
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
      include Aws::Structure
    end

    # Represents the request to get the specified user as an administrator.
    #
    # @note When making an API call, you may pass AdminGetUserRequest
    #   data as a hash:
    #
    #       {
    #         user_pool_id: "UserPoolIdType", # required
    #         username: "UsernameType", # required
    #       }
    #
    # @!attribute [rw] user_pool_id
    #   The user pool ID for the user pool where you want to get information
    #   about the user.
    #   @return [String]
    #
    # @!attribute [rw] username
    #   The user name of the user you wish to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AdminGetUserRequest AWS API Documentation
    #
    class AdminGetUserRequest < Struct.new(
      :user_pool_id,
      :username)
      include Aws::Structure
    end

    # Represents the response from the server from the request to get the
    # specified user as an administrator.
    #
    # @!attribute [rw] username
    #   The user name of the user about whom you are receiving information.
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
    #   Indicates that the status is enabled.
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
    #   * COMPROMISED - User is disabled due to a potential security threat.
    #
    #   * UNKNOWN - User status is not known.
    #   @return [String]
    #
    # @!attribute [rw] mfa_options
    #   Specifies the options for MFA (e.g., email or phone number).
    #   @return [Array<Types::MFAOptionType>]
    #
    # @!attribute [rw] preferred_mfa_setting
    #   The user's preferred MFA setting.
    #   @return [String]
    #
    # @!attribute [rw] user_mfa_setting_list
    #   The list of the user's MFA settings.
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
      include Aws::Structure
    end

    # Initiates the authorization request, as an administrator.
    #
    # @note When making an API call, you may pass AdminInitiateAuthRequest
    #   data as a hash:
    #
    #       {
    #         user_pool_id: "UserPoolIdType", # required
    #         client_id: "ClientIdType", # required
    #         auth_flow: "USER_SRP_AUTH", # required, accepts USER_SRP_AUTH, REFRESH_TOKEN_AUTH, REFRESH_TOKEN, CUSTOM_AUTH, ADMIN_NO_SRP_AUTH, USER_PASSWORD_AUTH
    #         auth_parameters: {
    #           "StringType" => "StringType",
    #         },
    #         client_metadata: {
    #           "StringType" => "StringType",
    #         },
    #         analytics_metadata: {
    #           analytics_endpoint_id: "StringType",
    #         },
    #         context_data: {
    #           ip_address: "StringType", # required
    #           server_name: "StringType", # required
    #           server_path: "StringType", # required
    #           http_headers: [ # required
    #             {
    #               header_name: "StringType",
    #               header_value: "StringType",
    #             },
    #           ],
    #           encoded_data: "StringType",
    #         },
    #       }
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
    #   The authentication flow for this call to execute. The API action
    #   will depend on this value. For example:
    #
    #   * `REFRESH_TOKEN_AUTH` will take in a valid refresh token and return
    #     new tokens.
    #
    #   * `USER_SRP_AUTH` will take in `USERNAME` and `SRP_A` and return the
    #     SRP variables to be used for next challenge execution.
    #
    #   * `USER_PASSWORD_AUTH` will take in `USERNAME` and `PASSWORD` and
    #     return the next challenge or tokens.
    #
    #   Valid values include:
    #
    #   * `USER_SRP_AUTH`\: Authentication flow for the Secure Remote
    #     Password (SRP) protocol.
    #
    #   * `REFRESH_TOKEN_AUTH`/`REFRESH_TOKEN`\: Authentication flow for
    #     refreshing the access token and ID token by supplying a valid
    #     refresh token.
    #
    #   * `CUSTOM_AUTH`\: Custom authentication flow.
    #
    #   * `ADMIN_NO_SRP_AUTH`\: Non-SRP authentication flow; you can pass in
    #     the USERNAME and PASSWORD directly if the flow is enabled for
    #     calling the app client.
    #
    #   * `USER_PASSWORD_AUTH`\: Non-SRP authentication flow; USERNAME and
    #     PASSWORD are passed directly. If a user migration Lambda trigger
    #     is set, this flow will invoke the user migration Lambda if the
    #     USERNAME is not found in the user pool.
    #   @return [String]
    #
    # @!attribute [rw] auth_parameters
    #   The authentication parameters. These are inputs corresponding to the
    #   `AuthFlow` that you are invoking. The required values depend on the
    #   value of `AuthFlow`\:
    #
    #   * For `USER_SRP_AUTH`\: `USERNAME` (required), `SRP_A` (required),
    #     `SECRET_HASH` (required if the app client is configured with a
    #     client secret), `DEVICE_KEY`
    #
    #   * For `REFRESH_TOKEN_AUTH/REFRESH_TOKEN`\: `REFRESH_TOKEN`
    #     (required), `SECRET_HASH` (required if the app client is
    #     configured with a client secret), `DEVICE_KEY`
    #
    #   * For `ADMIN_NO_SRP_AUTH`\: `USERNAME` (required), `SECRET_HASH` (if
    #     app client is configured with client secret), `PASSWORD`
    #     (required), `DEVICE_KEY`
    #
    #   * For `CUSTOM_AUTH`\: `USERNAME` (required), `SECRET_HASH` (if app
    #     client is configured with client secret), `DEVICE_KEY`
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] client_metadata
    #   This is a random key-value pair map which can contain any key and
    #   will be passed to your PreAuthentication Lambda trigger as-is. It
    #   can be used to implement additional validations around
    #   authentication.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] analytics_metadata
    #   The analytics metadata for collecting Amazon Pinpoint metrics for
    #   `AdminInitiateAuth` calls.
    #   @return [Types::AnalyticsMetadataType]
    #
    # @!attribute [rw] context_data
    #   Contextual data such as the user's device fingerprint, IP address,
    #   or location used for evaluating the risk of an unexpected event by
    #   Amazon Cognito advanced security.
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
      include Aws::Structure
    end

    # Initiates the authentication response, as an administrator.
    #
    # @!attribute [rw] challenge_name
    #   The name of the challenge which you are responding to with this
    #   call. This is returned to you in the `AdminInitiateAuth` response if
    #   you need to pass another challenge.
    #
    #   * `MFA_SETUP`\: If MFA is required, users who do not have at least
    #     one of the MFA methods set up are presented with an `MFA_SETUP`
    #     challenge. The user must set up at least one MFA type to continue
    #     to authenticate.
    #
    #   * `SELECT_MFA_TYPE`\: Selects the MFA type. Valid MFA options are
    #     `SMS_MFA` for text SMS MFA, and `SOFTWARE_TOKEN_MFA` for TOTP
    #     software token MFA.
    #
    #   * `SMS_MFA`\: Next challenge is to supply an `SMS_MFA_CODE`,
    #     delivered via SMS.
    #
    #   * `PASSWORD_VERIFIER`\: Next challenge is to supply
    #     `PASSWORD_CLAIM_SIGNATURE`, `PASSWORD_CLAIM_SECRET_BLOCK`, and
    #     `TIMESTAMP` after the client-side SRP calculations.
    #
    #   * `CUSTOM_CHALLENGE`\: This is returned if your custom
    #     authentication flow determines that the user should pass another
    #     challenge before tokens are issued.
    #
    #   * `DEVICE_SRP_AUTH`\: If device tracking was enabled on your user
    #     pool and the previous challenges were passed, this challenge is
    #     returned so that Amazon Cognito can start tracking this device.
    #
    #   * `DEVICE_PASSWORD_VERIFIER`\: Similar to `PASSWORD_VERIFIER`, but
    #     for devices only.
    #
    #   * `ADMIN_NO_SRP_AUTH`\: This is returned if you need to authenticate
    #     with `USERNAME` and `PASSWORD` directly. An app client must be
    #     enabled to use this flow.
    #
    #   * `NEW_PASSWORD_REQUIRED`\: For users which are required to change
    #     their passwords after successful first login. This challenge
    #     should be passed with `NEW_PASSWORD` and any other required
    #     attributes.
    #   @return [String]
    #
    # @!attribute [rw] session
    #   The session which should be passed both ways in challenge-response
    #   calls to the service. If `AdminInitiateAuth` or
    #   `AdminRespondToAuthChallenge` API call determines that the caller
    #   needs to go through another challenge, they return a session with
    #   other challenge parameters. This session should be passed as it is
    #   to the next `AdminRespondToAuthChallenge` API call.
    #   @return [String]
    #
    # @!attribute [rw] challenge_parameters
    #   The challenge parameters. These are returned to you in the
    #   `AdminInitiateAuth` response if you need to pass another challenge.
    #   The responses in this parameter should be used to compute inputs to
    #   the next call (`AdminRespondToAuthChallenge`).
    #
    #   All challenges require `USERNAME` and `SECRET_HASH` (if applicable).
    #
    #   The value of the `USER_ID_FOR_SRP` attribute will be the user's
    #   actual username, not an alias (such as email address or phone
    #   number), even if you specified an alias in your call to
    #   `AdminInitiateAuth`. This is because, in the
    #   `AdminRespondToAuthChallenge` API `ChallengeResponses`, the
    #   `USERNAME` attribute cannot be an alias.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] authentication_result
    #   The result of the authentication response. This is only returned if
    #   the caller does not need to pass another challenge. If the caller
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass AdminLinkProviderForUserRequest
    #   data as a hash:
    #
    #       {
    #         user_pool_id: "StringType", # required
    #         destination_user: { # required
    #           provider_name: "ProviderNameType",
    #           provider_attribute_name: "StringType",
    #           provider_attribute_value: "StringType",
    #         },
    #         source_user: { # required
    #           provider_name: "ProviderNameType",
    #           provider_attribute_name: "StringType",
    #           provider_attribute_value: "StringType",
    #         },
    #       }
    #
    # @!attribute [rw] user_pool_id
    #   The user pool ID for the user pool.
    #   @return [String]
    #
    # @!attribute [rw] destination_user
    #   The existing user in the user pool to be linked to the external
    #   identity provider user account. Can be a native (Username +
    #   Password) Cognito User Pools user or a federated user (for example,
    #   a SAML or Facebook user). If the user doesn't exist, an exception
    #   is thrown. This is the user that is returned when the new user (with
    #   the linked identity provider attribute) signs in.
    #
    #   For a native username + password user, the `ProviderAttributeValue`
    #   for the `DestinationUser` should be the username in the user pool.
    #   For a federated user, it should be the provider-specific `user_id`.
    #
    #   The `ProviderAttributeName` of the `DestinationUser` is ignored.
    #
    #   The `ProviderName` should be set to `Cognito` for users in Cognito
    #   user pools.
    #   @return [Types::ProviderUserIdentifierType]
    #
    # @!attribute [rw] source_user
    #   An external identity provider account for a user who does not
    #   currently exist yet in the user pool. This user must be a federated
    #   user (for example, a SAML or Facebook user), not another native
    #   user.
    #
    #   If the `SourceUser` is a federated social identity provider user
    #   (Facebook, Google, or Login with Amazon), you must set the
    #   `ProviderAttributeName` to `Cognito_Subject`. For social identity
    #   providers, the `ProviderName` will be `Facebook`, `Google`, or
    #   `LoginWithAmazon`, and Cognito will automatically parse the
    #   Facebook, Google, and Login with Amazon tokens for `id`, `sub`, and
    #   `user_id`, respectively. The `ProviderAttributeValue` for the user
    #   must be the same value as the `id`, `sub`, or `user_id` value found
    #   in the social identity provider token.
    #
    #
    #
    #   For SAML, the `ProviderAttributeName` can be any value that matches
    #   a claim in the SAML assertion. If you wish to link SAML users based
    #   on the subject of the SAML assertion, you should map the subject to
    #   a claim through the SAML identity provider and submit that claim
    #   name as the `ProviderAttributeName`. If you set
    #   `ProviderAttributeName` to `Cognito_Subject`, Cognito will
    #   automatically parse the default unique identifier found in the
    #   subject from the SAML token.
    #   @return [Types::ProviderUserIdentifierType]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AdminLinkProviderForUserRequest AWS API Documentation
    #
    class AdminLinkProviderForUserRequest < Struct.new(
      :user_pool_id,
      :destination_user,
      :source_user)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AdminLinkProviderForUserResponse AWS API Documentation
    #
    class AdminLinkProviderForUserResponse < Aws::EmptyStructure; end

    # Represents the request to list devices, as an administrator.
    #
    # @note When making an API call, you may pass AdminListDevicesRequest
    #   data as a hash:
    #
    #       {
    #         user_pool_id: "UserPoolIdType", # required
    #         username: "UsernameType", # required
    #         limit: 1,
    #         pagination_token: "SearchPaginationTokenType",
    #       }
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass AdminListGroupsForUserRequest
    #   data as a hash:
    #
    #       {
    #         username: "UsernameType", # required
    #         user_pool_id: "UserPoolIdType", # required
    #         limit: 1,
    #         next_token: "PaginationKey",
    #       }
    #
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass AdminListUserAuthEventsRequest
    #   data as a hash:
    #
    #       {
    #         user_pool_id: "UserPoolIdType", # required
    #         username: "UsernameType", # required
    #         max_results: 1,
    #         next_token: "PaginationKey",
    #       }
    #
    # @!attribute [rw] user_pool_id
    #   The user pool ID.
    #   @return [String]
    #
    # @!attribute [rw] username
    #   The user pool username or an alias.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of authentication events to return.
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass AdminRemoveUserFromGroupRequest
    #   data as a hash:
    #
    #       {
    #         user_pool_id: "UserPoolIdType", # required
    #         username: "UsernameType", # required
    #         group_name: "GroupNameType", # required
    #       }
    #
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
      include Aws::Structure
    end

    # Represents the request to reset a user's password as an
    # administrator.
    #
    # @note When making an API call, you may pass AdminResetUserPasswordRequest
    #   data as a hash:
    #
    #       {
    #         user_pool_id: "UserPoolIdType", # required
    #         username: "UsernameType", # required
    #       }
    #
    # @!attribute [rw] user_pool_id
    #   The user pool ID for the user pool where you want to reset the
    #   user's password.
    #   @return [String]
    #
    # @!attribute [rw] username
    #   The user name of the user whose password you wish to reset.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AdminResetUserPasswordRequest AWS API Documentation
    #
    class AdminResetUserPasswordRequest < Struct.new(
      :user_pool_id,
      :username)
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
    # @note When making an API call, you may pass AdminRespondToAuthChallengeRequest
    #   data as a hash:
    #
    #       {
    #         user_pool_id: "UserPoolIdType", # required
    #         client_id: "ClientIdType", # required
    #         challenge_name: "SMS_MFA", # required, accepts SMS_MFA, SOFTWARE_TOKEN_MFA, SELECT_MFA_TYPE, MFA_SETUP, PASSWORD_VERIFIER, CUSTOM_CHALLENGE, DEVICE_SRP_AUTH, DEVICE_PASSWORD_VERIFIER, ADMIN_NO_SRP_AUTH, NEW_PASSWORD_REQUIRED
    #         challenge_responses: {
    #           "StringType" => "StringType",
    #         },
    #         session: "SessionType",
    #         analytics_metadata: {
    #           analytics_endpoint_id: "StringType",
    #         },
    #         context_data: {
    #           ip_address: "StringType", # required
    #           server_name: "StringType", # required
    #           server_path: "StringType", # required
    #           http_headers: [ # required
    #             {
    #               header_name: "StringType",
    #               header_value: "StringType",
    #             },
    #           ],
    #           encoded_data: "StringType",
    #         },
    #       }
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
    #   The challenge name. For more information, see .
    #   @return [String]
    #
    # @!attribute [rw] challenge_responses
    #   The challenge responses. These are inputs corresponding to the value
    #   of `ChallengeName`, for example:
    #
    #   * `SMS_MFA`\: `SMS_MFA_CODE`, `USERNAME`, `SECRET_HASH` (if app
    #     client is configured with client secret).
    #
    #   * `PASSWORD_VERIFIER`\: `PASSWORD_CLAIM_SIGNATURE`,
    #     `PASSWORD_CLAIM_SECRET_BLOCK`, `TIMESTAMP`, `USERNAME`,
    #     `SECRET_HASH` (if app client is configured with client secret).
    #
    #   * `ADMIN_NO_SRP_AUTH`\: `PASSWORD`, `USERNAME`, `SECRET_HASH` (if
    #     app client is configured with client secret).
    #
    #   * `NEW_PASSWORD_REQUIRED`\: `NEW_PASSWORD`, any other required
    #     attributes, `USERNAME`, `SECRET_HASH` (if app client is configured
    #     with client secret).
    #
    #   The value of the `USERNAME` attribute must be the user's actual
    #   username, not an alias (such as email address or phone number). To
    #   make this easier, the `AdminInitiateAuth` response includes the
    #   actual username value in the `USERNAMEUSER_ID_FOR_SRP` attribute,
    #   even if you specified an alias in your call to `AdminInitiateAuth`.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] session
    #   The session which should be passed both ways in challenge-response
    #   calls to the service. If `InitiateAuth` or `RespondToAuthChallenge`
    #   API call determines that the caller needs to go through another
    #   challenge, they return a session with other challenge parameters.
    #   This session should be passed as it is to the next
    #   `RespondToAuthChallenge` API call.
    #   @return [String]
    #
    # @!attribute [rw] analytics_metadata
    #   The analytics metadata for collecting Amazon Pinpoint metrics for
    #   `AdminRespondToAuthChallenge` calls.
    #   @return [Types::AnalyticsMetadataType]
    #
    # @!attribute [rw] context_data
    #   Contextual data such as the user's device fingerprint, IP address,
    #   or location used for evaluating the risk of an unexpected event by
    #   Amazon Cognito advanced security.
    #   @return [Types::ContextDataType]
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
      :context_data)
      include Aws::Structure
    end

    # Responds to the authentication challenge, as an administrator.
    #
    # @!attribute [rw] challenge_name
    #   The name of the challenge. For more information, see .
    #   @return [String]
    #
    # @!attribute [rw] session
    #   The session which should be passed both ways in challenge-response
    #   calls to the service. If the or API call determines that the caller
    #   needs to go through another challenge, they return a session with
    #   other challenge parameters. This session should be passed as it is
    #   to the next `RespondToAuthChallenge` API call.
    #   @return [String]
    #
    # @!attribute [rw] challenge_parameters
    #   The challenge parameters. For more information, see .
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass AdminSetUserMFAPreferenceRequest
    #   data as a hash:
    #
    #       {
    #         sms_mfa_settings: {
    #           enabled: false,
    #           preferred_mfa: false,
    #         },
    #         software_token_mfa_settings: {
    #           enabled: false,
    #           preferred_mfa: false,
    #         },
    #         username: "UsernameType", # required
    #         user_pool_id: "UserPoolIdType", # required
    #       }
    #
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
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AdminSetUserMFAPreferenceResponse AWS API Documentation
    #
    class AdminSetUserMFAPreferenceResponse < Aws::EmptyStructure; end

    # Represents the request to set user settings as an administrator.
    #
    # @note When making an API call, you may pass AdminSetUserSettingsRequest
    #   data as a hash:
    #
    #       {
    #         user_pool_id: "UserPoolIdType", # required
    #         username: "UsernameType", # required
    #         mfa_options: [ # required
    #           {
    #             delivery_medium: "SMS", # accepts SMS, EMAIL
    #             attribute_name: "AttributeNameType",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] user_pool_id
    #   The user pool ID for the user pool where you want to set the user's
    #   settings, such as MFA options.
    #   @return [String]
    #
    # @!attribute [rw] username
    #   The user name of the user for whom you wish to set user settings.
    #   @return [String]
    #
    # @!attribute [rw] mfa_options
    #   Specifies the options for MFA (e.g., email or phone number).
    #   @return [Array<Types::MFAOptionType>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AdminSetUserSettingsRequest AWS API Documentation
    #
    class AdminSetUserSettingsRequest < Struct.new(
      :user_pool_id,
      :username,
      :mfa_options)
      include Aws::Structure
    end

    # Represents the response from the server to set user settings as an
    # administrator.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AdminSetUserSettingsResponse AWS API Documentation
    #
    class AdminSetUserSettingsResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass AdminUpdateAuthEventFeedbackRequest
    #   data as a hash:
    #
    #       {
    #         user_pool_id: "UserPoolIdType", # required
    #         username: "UsernameType", # required
    #         event_id: "EventIdType", # required
    #         feedback_value: "Valid", # required, accepts Valid, Invalid
    #       }
    #
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
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AdminUpdateAuthEventFeedbackResponse AWS API Documentation
    #
    class AdminUpdateAuthEventFeedbackResponse < Aws::EmptyStructure; end

    # The request to update the device status, as an administrator.
    #
    # @note When making an API call, you may pass AdminUpdateDeviceStatusRequest
    #   data as a hash:
    #
    #       {
    #         user_pool_id: "UserPoolIdType", # required
    #         username: "UsernameType", # required
    #         device_key: "DeviceKeyType", # required
    #         device_remembered_status: "remembered", # accepts remembered, not_remembered
    #       }
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
      include Aws::Structure
    end

    # The status response from the request to update the device, as an
    # administrator.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AdminUpdateDeviceStatusResponse AWS API Documentation
    #
    class AdminUpdateDeviceStatusResponse < Aws::EmptyStructure; end

    # Represents the request to update the user's attributes as an
    # administrator.
    #
    # @note When making an API call, you may pass AdminUpdateUserAttributesRequest
    #   data as a hash:
    #
    #       {
    #         user_pool_id: "UserPoolIdType", # required
    #         username: "UsernameType", # required
    #         user_attributes: [ # required
    #           {
    #             name: "AttributeNameType", # required
    #             value: "AttributeValueType",
    #           },
    #         ],
    #       }
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
    #   @return [Array<Types::AttributeType>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AdminUpdateUserAttributesRequest AWS API Documentation
    #
    class AdminUpdateUserAttributesRequest < Struct.new(
      :user_pool_id,
      :username,
      :user_attributes)
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
    # @note When making an API call, you may pass AdminUserGlobalSignOutRequest
    #   data as a hash:
    #
    #       {
    #         user_pool_id: "UserPoolIdType", # required
    #         username: "UsernameType", # required
    #       }
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
      include Aws::Structure
    end

    # The global sign-out response, as an administrator.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AdminUserGlobalSignOutResponse AWS API Documentation
    #
    class AdminUserGlobalSignOutResponse < Aws::EmptyStructure; end

    # The Amazon Pinpoint analytics configuration for collecting metrics for
    # a user pool.
    #
    # @note When making an API call, you may pass AnalyticsConfigurationType
    #   data as a hash:
    #
    #       {
    #         application_id: "HexStringType", # required
    #         role_arn: "ArnType", # required
    #         external_id: "StringType", # required
    #         user_data_shared: false,
    #       }
    #
    # @!attribute [rw] application_id
    #   The application ID for an Amazon Pinpoint application.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The ARN of an IAM role that authorizes Amazon Cognito to publish
    #   events to Amazon Pinpoint analytics.
    #   @return [String]
    #
    # @!attribute [rw] external_id
    #   The external ID.
    #   @return [String]
    #
    # @!attribute [rw] user_data_shared
    #   If `UserDataShared` is `true`, Amazon Cognito will include user data
    #   in the events it publishes to Amazon Pinpoint analytics.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AnalyticsConfigurationType AWS API Documentation
    #
    class AnalyticsConfigurationType < Struct.new(
      :application_id,
      :role_arn,
      :external_id,
      :user_data_shared)
      include Aws::Structure
    end

    # An Amazon Pinpoint analytics endpoint.
    #
    # An endpoint uniquely identifies a mobile device, email address, or
    # phone number that can receive messages from Amazon Pinpoint analytics.
    #
    # @note When making an API call, you may pass AnalyticsMetadataType
    #   data as a hash:
    #
    #       {
    #         analytics_endpoint_id: "StringType",
    #       }
    #
    # @!attribute [rw] analytics_endpoint_id
    #   The endpoint ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AnalyticsMetadataType AWS API Documentation
    #
    class AnalyticsMetadataType < Struct.new(
      :analytics_endpoint_id)
      include Aws::Structure
    end

    # @note When making an API call, you may pass AssociateSoftwareTokenRequest
    #   data as a hash:
    #
    #       {
    #         access_token: "TokenModelType",
    #         session: "SessionType",
    #       }
    #
    # @!attribute [rw] access_token
    #   The access token.
    #   @return [String]
    #
    # @!attribute [rw] session
    #   The session which should be passed both ways in challenge-response
    #   calls to the service. This allows authentication of the user as part
    #   of the MFA setup process.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AssociateSoftwareTokenRequest AWS API Documentation
    #
    class AssociateSoftwareTokenRequest < Struct.new(
      :access_token,
      :session)
      include Aws::Structure
    end

    # @!attribute [rw] secret_code
    #   A unique generated shared secret code that is used in the TOTP
    #   algorithm to generate a one time code.
    #   @return [String]
    #
    # @!attribute [rw] session
    #   The session which should be passed both ways in challenge-response
    #   calls to the service. This allows authentication of the user as part
    #   of the MFA setup process.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AssociateSoftwareTokenResponse AWS API Documentation
    #
    class AssociateSoftwareTokenResponse < Struct.new(
      :secret_code,
      :session)
      include Aws::Structure
    end

    # Specifies whether the attribute is standard or custom.
    #
    # @note When making an API call, you may pass AttributeType
    #   data as a hash:
    #
    #       {
    #         name: "AttributeNameType", # required
    #         value: "AttributeValueType",
    #       }
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
    #   The user context data captured at the time of an event request. It
    #   provides additional information about the client from which event
    #   the request is received.
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
      include Aws::Structure
    end

    # The authentication result.
    #
    # @!attribute [rw] access_token
    #   The access token.
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
      include Aws::Structure
    end

    # The challenge response type.
    #
    # @!attribute [rw] challenge_name
    #   The challenge name
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
      include Aws::Structure
    end

    # Represents the request to change a user password.
    #
    # @note When making an API call, you may pass ChangePasswordRequest
    #   data as a hash:
    #
    #       {
    #         previous_password: "PasswordType", # required
    #         proposed_password: "PasswordType", # required
    #         access_token: "TokenModelType", # required
    #       }
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
    #   The access token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/ChangePasswordRequest AWS API Documentation
    #
    class ChangePasswordRequest < Struct.new(
      :previous_password,
      :proposed_password,
      :access_token)
      include Aws::Structure
    end

    # The response from the server to the change password request.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/ChangePasswordResponse AWS API Documentation
    #
    class ChangePasswordResponse < Aws::EmptyStructure; end

    # The code delivery details being returned from the server.
    #
    # @!attribute [rw] destination
    #   The destination for the code delivery details.
    #   @return [String]
    #
    # @!attribute [rw] delivery_medium
    #   The delivery medium (email message or phone number).
    #   @return [String]
    #
    # @!attribute [rw] attribute_name
    #   The attribute name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/CodeDeliveryDetailsType AWS API Documentation
    #
    class CodeDeliveryDetailsType < Struct.new(
      :destination,
      :delivery_medium,
      :attribute_name)
      include Aws::Structure
    end

    # The compromised credentials actions type
    #
    # @note When making an API call, you may pass CompromisedCredentialsActionsType
    #   data as a hash:
    #
    #       {
    #         event_action: "BLOCK", # required, accepts BLOCK, NO_ACTION
    #       }
    #
    # @!attribute [rw] event_action
    #   The event action.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/CompromisedCredentialsActionsType AWS API Documentation
    #
    class CompromisedCredentialsActionsType < Struct.new(
      :event_action)
      include Aws::Structure
    end

    # The compromised credentials risk configuration type.
    #
    # @note When making an API call, you may pass CompromisedCredentialsRiskConfigurationType
    #   data as a hash:
    #
    #       {
    #         event_filter: ["SIGN_IN"], # accepts SIGN_IN, PASSWORD_CHANGE, SIGN_UP
    #         actions: { # required
    #           event_action: "BLOCK", # required, accepts BLOCK, NO_ACTION
    #         },
    #       }
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
      include Aws::Structure
    end

    # Confirms the device request.
    #
    # @note When making an API call, you may pass ConfirmDeviceRequest
    #   data as a hash:
    #
    #       {
    #         access_token: "TokenModelType", # required
    #         device_key: "DeviceKeyType", # required
    #         device_secret_verifier_config: {
    #           password_verifier: "StringType",
    #           salt: "StringType",
    #         },
    #         device_name: "DeviceNameType",
    #       }
    #
    # @!attribute [rw] access_token
    #   The access token.
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
      include Aws::Structure
    end

    # Confirms the device response.
    #
    # @!attribute [rw] user_confirmation_necessary
    #   Indicates whether the user confirmation is necessary to confirm the
    #   device response.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/ConfirmDeviceResponse AWS API Documentation
    #
    class ConfirmDeviceResponse < Struct.new(
      :user_confirmation_necessary)
      include Aws::Structure
    end

    # The request representing the confirmation for a password reset.
    #
    # @note When making an API call, you may pass ConfirmForgotPasswordRequest
    #   data as a hash:
    #
    #       {
    #         client_id: "ClientIdType", # required
    #         secret_hash: "SecretHashType",
    #         username: "UsernameType", # required
    #         confirmation_code: "ConfirmationCodeType", # required
    #         password: "PasswordType", # required
    #         analytics_metadata: {
    #           analytics_endpoint_id: "StringType",
    #         },
    #         user_context_data: {
    #           encoded_data: "StringType",
    #         },
    #       }
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
    #   The confirmation code sent by a user's request to retrieve a
    #   forgotten password. For more information, see
    #   @return [String]
    #
    # @!attribute [rw] password
    #   The password sent by a user's request to retrieve a forgotten
    #   password.
    #   @return [String]
    #
    # @!attribute [rw] analytics_metadata
    #   The Amazon Pinpoint analytics metadata for collecting metrics for
    #   `ConfirmForgotPassword` calls.
    #   @return [Types::AnalyticsMetadataType]
    #
    # @!attribute [rw] user_context_data
    #   Contextual data such as the user's device fingerprint, IP address,
    #   or location used for evaluating the risk of an unexpected event by
    #   Amazon Cognito advanced security.
    #   @return [Types::UserContextDataType]
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
      :user_context_data)
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
    # @note When making an API call, you may pass ConfirmSignUpRequest
    #   data as a hash:
    #
    #       {
    #         client_id: "ClientIdType", # required
    #         secret_hash: "SecretHashType",
    #         username: "UsernameType", # required
    #         confirmation_code: "ConfirmationCodeType", # required
    #         force_alias_creation: false,
    #         analytics_metadata: {
    #           analytics_endpoint_id: "StringType",
    #         },
    #         user_context_data: {
    #           encoded_data: "StringType",
    #         },
    #       }
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
    #   The user name of the user whose registration you wish to confirm.
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
    #   Contextual data such as the user's device fingerprint, IP address,
    #   or location used for evaluating the risk of an unexpected event by
    #   Amazon Cognito advanced security.
    #   @return [Types::UserContextDataType]
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
      :user_context_data)
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
    # @note When making an API call, you may pass ContextDataType
    #   data as a hash:
    #
    #       {
    #         ip_address: "StringType", # required
    #         server_name: "StringType", # required
    #         server_path: "StringType", # required
    #         http_headers: [ # required
    #           {
    #             header_name: "StringType",
    #             header_value: "StringType",
    #           },
    #         ],
    #         encoded_data: "StringType",
    #       }
    #
    # @!attribute [rw] ip_address
    #   Source IP address of your user.
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
    #   Encoded data containing device fingerprinting details, collected
    #   using the Amazon Cognito context data collection library.
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateGroupRequest
    #   data as a hash:
    #
    #       {
    #         group_name: "GroupNameType", # required
    #         user_pool_id: "UserPoolIdType", # required
    #         description: "DescriptionType",
    #         role_arn: "ArnType",
    #         precedence: 1,
    #       }
    #
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
    #   The role ARN for the group.
    #   @return [String]
    #
    # @!attribute [rw] precedence
    #   A nonnegative integer value that specifies the precedence of this
    #   group relative to the other groups that a user can belong to in the
    #   user pool. Zero is the highest precedence value. Groups with lower
    #   `Precedence` values take precedence over groups with higher or null
    #   `Precedence` values. If a user belongs to two or more groups, it is
    #   the group with the lowest precedence value whose role ARN will be
    #   used in the `cognito:roles` and `cognito:preferred_role` claims in
    #   the user's tokens.
    #
    #   Two groups can have the same `Precedence` value. If this happens,
    #   neither group takes precedence over the other. If two groups with
    #   the same `Precedence` have the same role ARN, that role is used in
    #   the `cognito:preferred_role` claim in tokens for users in each
    #   group. If the two groups have different role ARNs, the
    #   `cognito:preferred_role` claim is not set in users' tokens.
    #
    #   The default `Precedence` value is null.
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateIdentityProviderRequest
    #   data as a hash:
    #
    #       {
    #         user_pool_id: "UserPoolIdType", # required
    #         provider_name: "ProviderNameTypeV1", # required
    #         provider_type: "SAML", # required, accepts SAML, Facebook, Google, LoginWithAmazon, OIDC
    #         provider_details: { # required
    #           "StringType" => "StringType",
    #         },
    #         attribute_mapping: {
    #           "AttributeMappingKeyType" => "StringType",
    #         },
    #         idp_identifiers: ["IdpIdentifierType"],
    #       }
    #
    # @!attribute [rw] user_pool_id
    #   The user pool ID.
    #   @return [String]
    #
    # @!attribute [rw] provider_name
    #   The identity provider name.
    #   @return [String]
    #
    # @!attribute [rw] provider_type
    #   The identity provider type.
    #   @return [String]
    #
    # @!attribute [rw] provider_details
    #   The identity provider details, such as `MetadataURL` and
    #   `MetadataFile`.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] attribute_mapping
    #   A mapping of identity provider attributes to standard and custom
    #   user pool attributes.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] idp_identifiers
    #   A list of identity provider identifiers.
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
      include Aws::Structure
    end

    # @!attribute [rw] identity_provider
    #   The newly created identity provider object.
    #   @return [Types::IdentityProviderType]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/CreateIdentityProviderResponse AWS API Documentation
    #
    class CreateIdentityProviderResponse < Struct.new(
      :identity_provider)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateResourceServerRequest
    #   data as a hash:
    #
    #       {
    #         user_pool_id: "UserPoolIdType", # required
    #         identifier: "ResourceServerIdentifierType", # required
    #         name: "ResourceServerNameType", # required
    #         scopes: [
    #           {
    #             scope_name: "ResourceServerScopeNameType", # required
    #             scope_description: "ResourceServerScopeDescriptionType", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] user_pool_id
    #   The user pool ID for the user pool.
    #   @return [String]
    #
    # @!attribute [rw] identifier
    #   A unique resource server identifier for the resource server. This
    #   could be an HTTPS endpoint where the resource server is located. For
    #   example, `https://my-weather-api.example.com`.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A friendly name for the resource server.
    #   @return [String]
    #
    # @!attribute [rw] scopes
    #   A list of scopes. Each scope is map, where the keys are `name` and
    #   `description`.
    #   @return [Array<Types::ResourceServerScopeType>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/CreateResourceServerRequest AWS API Documentation
    #
    class CreateResourceServerRequest < Struct.new(
      :user_pool_id,
      :identifier,
      :name,
      :scopes)
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
      include Aws::Structure
    end

    # Represents the request to create the user import job.
    #
    # @note When making an API call, you may pass CreateUserImportJobRequest
    #   data as a hash:
    #
    #       {
    #         job_name: "UserImportJobNameType", # required
    #         user_pool_id: "UserPoolIdType", # required
    #         cloud_watch_logs_role_arn: "ArnType", # required
    #       }
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
    #   The role ARN for the Amazon CloudWatch Logging role for the user
    #   import job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/CreateUserImportJobRequest AWS API Documentation
    #
    class CreateUserImportJobRequest < Struct.new(
      :job_name,
      :user_pool_id,
      :cloud_watch_logs_role_arn)
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
      include Aws::Structure
    end

    # Represents the request to create a user pool client.
    #
    # @note When making an API call, you may pass CreateUserPoolClientRequest
    #   data as a hash:
    #
    #       {
    #         user_pool_id: "UserPoolIdType", # required
    #         client_name: "ClientNameType", # required
    #         generate_secret: false,
    #         refresh_token_validity: 1,
    #         read_attributes: ["ClientPermissionType"],
    #         write_attributes: ["ClientPermissionType"],
    #         explicit_auth_flows: ["ADMIN_NO_SRP_AUTH"], # accepts ADMIN_NO_SRP_AUTH, CUSTOM_AUTH_FLOW_ONLY, USER_PASSWORD_AUTH
    #         supported_identity_providers: ["ProviderNameType"],
    #         callback_urls: ["RedirectUrlType"],
    #         logout_urls: ["RedirectUrlType"],
    #         default_redirect_uri: "RedirectUrlType",
    #         allowed_o_auth_flows: ["code"], # accepts code, implicit, client_credentials
    #         allowed_o_auth_scopes: ["ScopeType"],
    #         allowed_o_auth_flows_user_pool_client: false,
    #         analytics_configuration: {
    #           application_id: "HexStringType", # required
    #           role_arn: "ArnType", # required
    #           external_id: "StringType", # required
    #           user_data_shared: false,
    #         },
    #       }
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
    #   The time limit, in days, after which the refresh token is no longer
    #   valid and cannot be used.
    #   @return [Integer]
    #
    # @!attribute [rw] read_attributes
    #   The read attributes.
    #   @return [Array<String>]
    #
    # @!attribute [rw] write_attributes
    #   The write attributes.
    #   @return [Array<String>]
    #
    # @!attribute [rw] explicit_auth_flows
    #   The explicit authentication flows.
    #   @return [Array<String>]
    #
    # @!attribute [rw] supported_identity_providers
    #   A list of provider names for the identity providers that are
    #   supported on this client.
    #   @return [Array<String>]
    #
    # @!attribute [rw] callback_urls
    #   A list of allowed redirect (callback) URLs for the identity
    #   providers.
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
    #   A list of allowed logout URLs for the identity providers.
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
    #   Set to `code` to initiate a code grant flow, which provides an
    #   authorization code as the response. This code can be exchanged for
    #   access tokens with the token endpoint.
    #
    #   Set to `token` to specify that the client should get the access
    #   token (and, optionally, ID token, based on scopes) directly.
    #   @return [Array<String>]
    #
    # @!attribute [rw] allowed_o_auth_scopes
    #   A list of allowed `OAuth` scopes. Currently supported values are
    #   `"phone"`, `"email"`, `"openid"`, and `"Cognito"`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] allowed_o_auth_flows_user_pool_client
    #   Set to `True` if the client is allowed to follow the OAuth protocol
    #   when interacting with Cognito user pools.
    #   @return [Boolean]
    #
    # @!attribute [rw] analytics_configuration
    #   The Amazon Pinpoint analytics configuration for collecting metrics
    #   for this user pool.
    #   @return [Types::AnalyticsConfigurationType]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/CreateUserPoolClientRequest AWS API Documentation
    #
    class CreateUserPoolClientRequest < Struct.new(
      :user_pool_id,
      :client_name,
      :generate_secret,
      :refresh_token_validity,
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
      :analytics_configuration)
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateUserPoolDomainRequest
    #   data as a hash:
    #
    #       {
    #         domain: "DomainType", # required
    #         user_pool_id: "UserPoolIdType", # required
    #         custom_domain_config: {
    #           certificate_arn: "ArnType", # required
    #         },
    #       }
    #
    # @!attribute [rw] domain
    #   The domain string.
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
    #   Provide this parameter only if you want to use own custom domain for
    #   your user pool. Otherwise, you can exclude this parameter and use
    #   the Amazon Cognito hosted domain instead.
    #
    #   For more information about the hosted domain and custom domains, see
    #   [Configuring a User Pool Domain][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-assign-domain.html
    #   @return [Types::CustomDomainConfigType]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/CreateUserPoolDomainRequest AWS API Documentation
    #
    class CreateUserPoolDomainRequest < Struct.new(
      :domain,
      :user_pool_id,
      :custom_domain_config)
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
      include Aws::Structure
    end

    # Represents the request to create a user pool.
    #
    # @note When making an API call, you may pass CreateUserPoolRequest
    #   data as a hash:
    #
    #       {
    #         pool_name: "UserPoolNameType", # required
    #         policies: {
    #           password_policy: {
    #             minimum_length: 1,
    #             require_uppercase: false,
    #             require_lowercase: false,
    #             require_numbers: false,
    #             require_symbols: false,
    #           },
    #         },
    #         lambda_config: {
    #           pre_sign_up: "ArnType",
    #           custom_message: "ArnType",
    #           post_confirmation: "ArnType",
    #           pre_authentication: "ArnType",
    #           post_authentication: "ArnType",
    #           define_auth_challenge: "ArnType",
    #           create_auth_challenge: "ArnType",
    #           verify_auth_challenge_response: "ArnType",
    #           pre_token_generation: "ArnType",
    #           user_migration: "ArnType",
    #         },
    #         auto_verified_attributes: ["phone_number"], # accepts phone_number, email
    #         alias_attributes: ["phone_number"], # accepts phone_number, email, preferred_username
    #         username_attributes: ["phone_number"], # accepts phone_number, email
    #         sms_verification_message: "SmsVerificationMessageType",
    #         email_verification_message: "EmailVerificationMessageType",
    #         email_verification_subject: "EmailVerificationSubjectType",
    #         verification_message_template: {
    #           sms_message: "SmsVerificationMessageType",
    #           email_message: "EmailVerificationMessageType",
    #           email_subject: "EmailVerificationSubjectType",
    #           email_message_by_link: "EmailVerificationMessageByLinkType",
    #           email_subject_by_link: "EmailVerificationSubjectByLinkType",
    #           default_email_option: "CONFIRM_WITH_LINK", # accepts CONFIRM_WITH_LINK, CONFIRM_WITH_CODE
    #         },
    #         sms_authentication_message: "SmsVerificationMessageType",
    #         mfa_configuration: "OFF", # accepts OFF, ON, OPTIONAL
    #         device_configuration: {
    #           challenge_required_on_new_device: false,
    #           device_only_remembered_on_user_prompt: false,
    #         },
    #         email_configuration: {
    #           source_arn: "ArnType",
    #           reply_to_email_address: "EmailAddressType",
    #         },
    #         sms_configuration: {
    #           sns_caller_arn: "ArnType", # required
    #           external_id: "StringType",
    #         },
    #         user_pool_tags: {
    #           "StringType" => "StringType",
    #         },
    #         admin_create_user_config: {
    #           allow_admin_create_user_only: false,
    #           unused_account_validity_days: 1,
    #           invite_message_template: {
    #             sms_message: "SmsVerificationMessageType",
    #             email_message: "EmailVerificationMessageType",
    #             email_subject: "EmailVerificationSubjectType",
    #           },
    #         },
    #         schema: [
    #           {
    #             name: "CustomAttributeNameType",
    #             attribute_data_type: "String", # accepts String, Number, DateTime, Boolean
    #             developer_only_attribute: false,
    #             mutable: false,
    #             required: false,
    #             number_attribute_constraints: {
    #               min_value: "StringType",
    #               max_value: "StringType",
    #             },
    #             string_attribute_constraints: {
    #               min_length: "StringType",
    #               max_length: "StringType",
    #             },
    #           },
    #         ],
    #         user_pool_add_ons: {
    #           advanced_security_mode: "OFF", # required, accepts OFF, AUDIT, ENFORCED
    #         },
    #       }
    #
    # @!attribute [rw] pool_name
    #   A string used to name the user pool.
    #   @return [String]
    #
    # @!attribute [rw] policies
    #   The policies associated with the new user pool.
    #   @return [Types::UserPoolPolicyType]
    #
    # @!attribute [rw] lambda_config
    #   The Lambda trigger configuration information for the new user pool.
    #
    #   <note markdown="1"> In a push model, event sources (such as Amazon S3 and custom
    #   applications) need permission to invoke a function. So you will need
    #   to make an extra call to add permission for these event sources to
    #   invoke your Lambda function.
    #
    #
    #
    #    For more information on using the Lambda API to add permission, see
    #   [ AddPermission ][1].
    #
    #    For adding permission using the AWS CLI, see [ add-permission ][2].
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
    #   Specifies whether email addresses or phone numbers can be specified
    #   as usernames when a user signs up.
    #   @return [Array<String>]
    #
    # @!attribute [rw] sms_verification_message
    #   A string representing the SMS verification message.
    #   @return [String]
    #
    # @!attribute [rw] email_verification_message
    #   A string representing the email verification message.
    #   @return [String]
    #
    # @!attribute [rw] email_verification_subject
    #   A string representing the email verification subject.
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
    # @!attribute [rw] device_configuration
    #   The device configuration.
    #   @return [Types::DeviceConfigurationType]
    #
    # @!attribute [rw] email_configuration
    #   The email configuration.
    #   @return [Types::EmailConfigurationType]
    #
    # @!attribute [rw] sms_configuration
    #   The SMS configuration.
    #   @return [Types::SmsConfigurationType]
    #
    # @!attribute [rw] user_pool_tags
    #   The cost allocation tags for the user pool. For more information,
    #   see [Adding Cost Allocation Tags to Your User Pool][1]
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-cost-allocation-tagging.html
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
    #   Used to enable advanced security risk detection. Set the key
    #   `AdvancedSecurityMode` to the value "AUDIT".
    #   @return [Types::UserPoolAddOnsType]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/CreateUserPoolRequest AWS API Documentation
    #
    class CreateUserPoolRequest < Struct.new(
      :pool_name,
      :policies,
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
      :device_configuration,
      :email_configuration,
      :sms_configuration,
      :user_pool_tags,
      :admin_create_user_config,
      :schema,
      :user_pool_add_ons)
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
      include Aws::Structure
    end

    # The configuration for a custom domain that hosts the sign-up and
    # sign-in webpages for your application.
    #
    # @note When making an API call, you may pass CustomDomainConfigType
    #   data as a hash:
    #
    #       {
    #         certificate_arn: "ArnType", # required
    #       }
    #
    # @!attribute [rw] certificate_arn
    #   The Amazon Resource Name (ARN) of an AWS Certificate Manager SSL
    #   certificate. You use this certificate for the subdomain of your
    #   custom domain.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/CustomDomainConfigType AWS API Documentation
    #
    class CustomDomainConfigType < Struct.new(
      :certificate_arn)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteGroupRequest
    #   data as a hash:
    #
    #       {
    #         group_name: "GroupNameType", # required
    #         user_pool_id: "UserPoolIdType", # required
    #       }
    #
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteIdentityProviderRequest
    #   data as a hash:
    #
    #       {
    #         user_pool_id: "UserPoolIdType", # required
    #         provider_name: "ProviderNameType", # required
    #       }
    #
    # @!attribute [rw] user_pool_id
    #   The user pool ID.
    #   @return [String]
    #
    # @!attribute [rw] provider_name
    #   The identity provider name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/DeleteIdentityProviderRequest AWS API Documentation
    #
    class DeleteIdentityProviderRequest < Struct.new(
      :user_pool_id,
      :provider_name)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteResourceServerRequest
    #   data as a hash:
    #
    #       {
    #         user_pool_id: "UserPoolIdType", # required
    #         identifier: "ResourceServerIdentifierType", # required
    #       }
    #
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
      include Aws::Structure
    end

    # Represents the request to delete user attributes.
    #
    # @note When making an API call, you may pass DeleteUserAttributesRequest
    #   data as a hash:
    #
    #       {
    #         user_attribute_names: ["AttributeNameType"], # required
    #         access_token: "TokenModelType", # required
    #       }
    #
    # @!attribute [rw] user_attribute_names
    #   An array of strings representing the user attribute names you wish
    #   to delete.
    #
    #   For custom attributes, you must prepend the `custom:` prefix to the
    #   attribute name.
    #   @return [Array<String>]
    #
    # @!attribute [rw] access_token
    #   The access token used in the request to delete user attributes.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/DeleteUserAttributesRequest AWS API Documentation
    #
    class DeleteUserAttributesRequest < Struct.new(
      :user_attribute_names,
      :access_token)
      include Aws::Structure
    end

    # Represents the response from the server to delete user attributes.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/DeleteUserAttributesResponse AWS API Documentation
    #
    class DeleteUserAttributesResponse < Aws::EmptyStructure; end

    # Represents the request to delete a user pool client.
    #
    # @note When making an API call, you may pass DeleteUserPoolClientRequest
    #   data as a hash:
    #
    #       {
    #         user_pool_id: "UserPoolIdType", # required
    #         client_id: "ClientIdType", # required
    #       }
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteUserPoolDomainRequest
    #   data as a hash:
    #
    #       {
    #         domain: "DomainType", # required
    #         user_pool_id: "UserPoolIdType", # required
    #       }
    #
    # @!attribute [rw] domain
    #   The domain string.
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
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/DeleteUserPoolDomainResponse AWS API Documentation
    #
    class DeleteUserPoolDomainResponse < Aws::EmptyStructure; end

    # Represents the request to delete a user pool.
    #
    # @note When making an API call, you may pass DeleteUserPoolRequest
    #   data as a hash:
    #
    #       {
    #         user_pool_id: "UserPoolIdType", # required
    #       }
    #
    # @!attribute [rw] user_pool_id
    #   The user pool ID for the user pool you want to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/DeleteUserPoolRequest AWS API Documentation
    #
    class DeleteUserPoolRequest < Struct.new(
      :user_pool_id)
      include Aws::Structure
    end

    # Represents the request to delete a user.
    #
    # @note When making an API call, you may pass DeleteUserRequest
    #   data as a hash:
    #
    #       {
    #         access_token: "TokenModelType", # required
    #       }
    #
    # @!attribute [rw] access_token
    #   The access token from a request to delete a user.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/DeleteUserRequest AWS API Documentation
    #
    class DeleteUserRequest < Struct.new(
      :access_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeIdentityProviderRequest
    #   data as a hash:
    #
    #       {
    #         user_pool_id: "UserPoolIdType", # required
    #         provider_name: "ProviderNameType", # required
    #       }
    #
    # @!attribute [rw] user_pool_id
    #   The user pool ID.
    #   @return [String]
    #
    # @!attribute [rw] provider_name
    #   The identity provider name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/DescribeIdentityProviderRequest AWS API Documentation
    #
    class DescribeIdentityProviderRequest < Struct.new(
      :user_pool_id,
      :provider_name)
      include Aws::Structure
    end

    # @!attribute [rw] identity_provider
    #   The identity provider that was deleted.
    #   @return [Types::IdentityProviderType]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/DescribeIdentityProviderResponse AWS API Documentation
    #
    class DescribeIdentityProviderResponse < Struct.new(
      :identity_provider)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeResourceServerRequest
    #   data as a hash:
    #
    #       {
    #         user_pool_id: "UserPoolIdType", # required
    #         identifier: "ResourceServerIdentifierType", # required
    #       }
    #
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeRiskConfigurationRequest
    #   data as a hash:
    #
    #       {
    #         user_pool_id: "UserPoolIdType", # required
    #         client_id: "ClientIdType",
    #       }
    #
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
      include Aws::Structure
    end

    # Represents the request to describe the user import job.
    #
    # @note When making an API call, you may pass DescribeUserImportJobRequest
    #   data as a hash:
    #
    #       {
    #         user_pool_id: "UserPoolIdType", # required
    #         job_id: "UserImportJobIdType", # required
    #       }
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
      include Aws::Structure
    end

    # Represents the request to describe a user pool client.
    #
    # @note When making an API call, you may pass DescribeUserPoolClientRequest
    #   data as a hash:
    #
    #       {
    #         user_pool_id: "UserPoolIdType", # required
    #         client_id: "ClientIdType", # required
    #       }
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeUserPoolDomainRequest
    #   data as a hash:
    #
    #       {
    #         domain: "DomainType", # required
    #       }
    #
    # @!attribute [rw] domain
    #   The domain string.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/DescribeUserPoolDomainRequest AWS API Documentation
    #
    class DescribeUserPoolDomainRequest < Struct.new(
      :domain)
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
      include Aws::Structure
    end

    # Represents the request to describe the user pool.
    #
    # @note When making an API call, you may pass DescribeUserPoolRequest
    #   data as a hash:
    #
    #       {
    #         user_pool_id: "UserPoolIdType", # required
    #       }
    #
    # @!attribute [rw] user_pool_id
    #   The user pool ID for the user pool you want to describe.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/DescribeUserPoolRequest AWS API Documentation
    #
    class DescribeUserPoolRequest < Struct.new(
      :user_pool_id)
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
      include Aws::Structure
    end

    # The configuration for the user pool's device tracking.
    #
    # @note When making an API call, you may pass DeviceConfigurationType
    #   data as a hash:
    #
    #       {
    #         challenge_required_on_new_device: false,
    #         device_only_remembered_on_user_prompt: false,
    #       }
    #
    # @!attribute [rw] challenge_required_on_new_device
    #   Indicates whether a challenge is required on a new device. Only
    #   applicable to a new device.
    #   @return [Boolean]
    #
    # @!attribute [rw] device_only_remembered_on_user_prompt
    #   If true, a device is only remembered on user prompt.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/DeviceConfigurationType AWS API Documentation
    #
    class DeviceConfigurationType < Struct.new(
      :challenge_required_on_new_device,
      :device_only_remembered_on_user_prompt)
      include Aws::Structure
    end

    # The device verifier against which it will be authenticated.
    #
    # @note When making an API call, you may pass DeviceSecretVerifierConfigType
    #   data as a hash:
    #
    #       {
    #         password_verifier: "StringType",
    #         salt: "StringType",
    #       }
    #
    # @!attribute [rw] password_verifier
    #   The password verifier.
    #   @return [String]
    #
    # @!attribute [rw] salt
    #   The salt.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/DeviceSecretVerifierConfigType AWS API Documentation
    #
    class DeviceSecretVerifierConfigType < Struct.new(
      :password_verifier,
      :salt)
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
    #   The date in which the device was last authenticated.
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
      include Aws::Structure
    end

    # A container for information about a domain.
    #
    # @!attribute [rw] user_pool_id
    #   The user pool ID.
    #   @return [String]
    #
    # @!attribute [rw] aws_account_id
    #   The AWS account ID for the user pool owner.
    #   @return [String]
    #
    # @!attribute [rw] domain
    #   The domain string.
    #   @return [String]
    #
    # @!attribute [rw] s3_bucket
    #   The S3 bucket where the static files for this domain are stored.
    #   @return [String]
    #
    # @!attribute [rw] cloud_front_distribution
    #   The ARN of the CloudFront distribution.
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
      include Aws::Structure
    end

    # The email configuration type.
    #
    # @note When making an API call, you may pass EmailConfigurationType
    #   data as a hash:
    #
    #       {
    #         source_arn: "ArnType",
    #         reply_to_email_address: "EmailAddressType",
    #       }
    #
    # @!attribute [rw] source_arn
    #   The Amazon Resource Name (ARN) of the email source.
    #   @return [String]
    #
    # @!attribute [rw] reply_to_email_address
    #   The destination to which the receiver of the email should reply to.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/EmailConfigurationType AWS API Documentation
    #
    class EmailConfigurationType < Struct.new(
      :source_arn,
      :reply_to_email_address)
      include Aws::Structure
    end

    # Specifies the user context data captured at the time of an event
    # request.
    #
    # @!attribute [rw] ip_address
    #   The user's IP address.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/EventRiskType AWS API Documentation
    #
    class EventRiskType < Struct.new(
      :risk_decision,
      :risk_level)
      include Aws::Structure
    end

    # Represents the request to forget the device.
    #
    # @note When making an API call, you may pass ForgetDeviceRequest
    #   data as a hash:
    #
    #       {
    #         access_token: "TokenModelType",
    #         device_key: "DeviceKeyType", # required
    #       }
    #
    # @!attribute [rw] access_token
    #   The access token for the forgotten device request.
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
      include Aws::Structure
    end

    # Represents the request to reset a user's password.
    #
    # @note When making an API call, you may pass ForgotPasswordRequest
    #   data as a hash:
    #
    #       {
    #         client_id: "ClientIdType", # required
    #         secret_hash: "SecretHashType",
    #         user_context_data: {
    #           encoded_data: "StringType",
    #         },
    #         username: "UsernameType", # required
    #         analytics_metadata: {
    #           analytics_endpoint_id: "StringType",
    #         },
    #       }
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
    #   Contextual data such as the user's device fingerprint, IP address,
    #   or location used for evaluating the risk of an unexpected event by
    #   Amazon Cognito advanced security.
    #   @return [Types::UserContextDataType]
    #
    # @!attribute [rw] username
    #   The user name of the user for whom you want to enter a code to reset
    #   a forgotten password.
    #   @return [String]
    #
    # @!attribute [rw] analytics_metadata
    #   The Amazon Pinpoint analytics metadata for collecting metrics for
    #   `ForgotPassword` calls.
    #   @return [Types::AnalyticsMetadataType]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/ForgotPasswordRequest AWS API Documentation
    #
    class ForgotPasswordRequest < Struct.new(
      :client_id,
      :secret_hash,
      :user_context_data,
      :username,
      :analytics_metadata)
      include Aws::Structure
    end

    # Respresents the response from the server regarding the request to
    # reset a password.
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
      include Aws::Structure
    end

    # Represents the request to get the header information for the .csv file
    # for the user import job.
    #
    # @note When making an API call, you may pass GetCSVHeaderRequest
    #   data as a hash:
    #
    #       {
    #         user_pool_id: "UserPoolIdType", # required
    #       }
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
      include Aws::Structure
    end

    # Represents the response from the server to the request to get the
    # header information for the .csv file for the user import job.
    #
    # @!attribute [rw] user_pool_id
    #   The user pool ID for the user pool that the users are to be imported
    #   into.
    #   @return [String]
    #
    # @!attribute [rw] csv_header
    #   The header information for the .csv file for the user import job.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/GetCSVHeaderResponse AWS API Documentation
    #
    class GetCSVHeaderResponse < Struct.new(
      :user_pool_id,
      :csv_header)
      include Aws::Structure
    end

    # Represents the request to get the device.
    #
    # @note When making an API call, you may pass GetDeviceRequest
    #   data as a hash:
    #
    #       {
    #         device_key: "DeviceKeyType", # required
    #         access_token: "TokenModelType",
    #       }
    #
    # @!attribute [rw] device_key
    #   The device key.
    #   @return [String]
    #
    # @!attribute [rw] access_token
    #   The access token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/GetDeviceRequest AWS API Documentation
    #
    class GetDeviceRequest < Struct.new(
      :device_key,
      :access_token)
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetGroupRequest
    #   data as a hash:
    #
    #       {
    #         group_name: "GroupNameType", # required
    #         user_pool_id: "UserPoolIdType", # required
    #       }
    #
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetIdentityProviderByIdentifierRequest
    #   data as a hash:
    #
    #       {
    #         user_pool_id: "UserPoolIdType", # required
    #         idp_identifier: "IdpIdentifierType", # required
    #       }
    #
    # @!attribute [rw] user_pool_id
    #   The user pool ID.
    #   @return [String]
    #
    # @!attribute [rw] idp_identifier
    #   The identity provider ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/GetIdentityProviderByIdentifierRequest AWS API Documentation
    #
    class GetIdentityProviderByIdentifierRequest < Struct.new(
      :user_pool_id,
      :idp_identifier)
      include Aws::Structure
    end

    # @!attribute [rw] identity_provider
    #   The identity provider object.
    #   @return [Types::IdentityProviderType]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/GetIdentityProviderByIdentifierResponse AWS API Documentation
    #
    class GetIdentityProviderByIdentifierResponse < Struct.new(
      :identity_provider)
      include Aws::Structure
    end

    # Request to get a signing certificate from Cognito.
    #
    # @note When making an API call, you may pass GetSigningCertificateRequest
    #   data as a hash:
    #
    #       {
    #         user_pool_id: "UserPoolIdType", # required
    #       }
    #
    # @!attribute [rw] user_pool_id
    #   The user pool ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/GetSigningCertificateRequest AWS API Documentation
    #
    class GetSigningCertificateRequest < Struct.new(
      :user_pool_id)
      include Aws::Structure
    end

    # Response from Cognito for a signing certificate request.
    #
    # @!attribute [rw] certificate
    #   The signing certificate.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/GetSigningCertificateResponse AWS API Documentation
    #
    class GetSigningCertificateResponse < Struct.new(
      :certificate)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetUICustomizationRequest
    #   data as a hash:
    #
    #       {
    #         user_pool_id: "UserPoolIdType", # required
    #         client_id: "ClientIdType",
    #       }
    #
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
      include Aws::Structure
    end

    # Represents the request to get user attribute verification.
    #
    # @note When making an API call, you may pass GetUserAttributeVerificationCodeRequest
    #   data as a hash:
    #
    #       {
    #         access_token: "TokenModelType", # required
    #         attribute_name: "AttributeNameType", # required
    #       }
    #
    # @!attribute [rw] access_token
    #   The access token returned by the server response to get the user
    #   attribute verification code.
    #   @return [String]
    #
    # @!attribute [rw] attribute_name
    #   The attribute name returned by the server response to get the user
    #   attribute verification code.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/GetUserAttributeVerificationCodeRequest AWS API Documentation
    #
    class GetUserAttributeVerificationCodeRequest < Struct.new(
      :access_token,
      :attribute_name)
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetUserPoolMfaConfigRequest
    #   data as a hash:
    #
    #       {
    #         user_pool_id: "UserPoolIdType", # required
    #       }
    #
    # @!attribute [rw] user_pool_id
    #   The user pool ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/GetUserPoolMfaConfigRequest AWS API Documentation
    #
    class GetUserPoolMfaConfigRequest < Struct.new(
      :user_pool_id)
      include Aws::Structure
    end

    # @!attribute [rw] sms_mfa_configuration
    #   The SMS text message multi-factor (MFA) configuration.
    #   @return [Types::SmsMfaConfigType]
    #
    # @!attribute [rw] software_token_mfa_configuration
    #   The software token multi-factor (MFA) configuration.
    #   @return [Types::SoftwareTokenMfaConfigType]
    #
    # @!attribute [rw] mfa_configuration
    #   The multi-factor (MFA) configuration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/GetUserPoolMfaConfigResponse AWS API Documentation
    #
    class GetUserPoolMfaConfigResponse < Struct.new(
      :sms_mfa_configuration,
      :software_token_mfa_configuration,
      :mfa_configuration)
      include Aws::Structure
    end

    # Represents the request to get information about the user.
    #
    # @note When making an API call, you may pass GetUserRequest
    #   data as a hash:
    #
    #       {
    #         access_token: "TokenModelType", # required
    #       }
    #
    # @!attribute [rw] access_token
    #   The access token returned by the server response to get information
    #   about the user.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/GetUserRequest AWS API Documentation
    #
    class GetUserRequest < Struct.new(
      :access_token)
      include Aws::Structure
    end

    # Represents the response from the server from the request to get
    # information about the user.
    #
    # @!attribute [rw] username
    #   The user name of the user you wish to retrieve from the get user
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
    #   Specifies the options for MFA (e.g., email or phone number).
    #   @return [Array<Types::MFAOptionType>]
    #
    # @!attribute [rw] preferred_mfa_setting
    #   The user's preferred MFA setting.
    #   @return [String]
    #
    # @!attribute [rw] user_mfa_setting_list
    #   The list of the user's MFA settings.
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
      include Aws::Structure
    end

    # Represents the request to sign out all devices.
    #
    # @note When making an API call, you may pass GlobalSignOutRequest
    #   data as a hash:
    #
    #       {
    #         access_token: "TokenModelType", # required
    #       }
    #
    # @!attribute [rw] access_token
    #   The access token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/GlobalSignOutRequest AWS API Documentation
    #
    class GlobalSignOutRequest < Struct.new(
      :access_token)
      include Aws::Structure
    end

    # The response to the request to sign out all devices.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/GlobalSignOutResponse AWS API Documentation
    #
    class GlobalSignOutResponse < Aws::EmptyStructure; end

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
    #   The role ARN for the group.
    #   @return [String]
    #
    # @!attribute [rw] precedence
    #   A nonnegative integer value that specifies the precedence of this
    #   group relative to the other groups that a user can belong to in the
    #   user pool. If a user belongs to two or more groups, it is the group
    #   with the highest precedence whose role ARN will be used in the
    #   `cognito:roles` and `cognito:preferred_role` claims in the user's
    #   tokens. Groups with higher `Precedence` values take precedence over
    #   groups with lower `Precedence` values or with null `Precedence`
    #   values.
    #
    #   Two groups can have the same `Precedence` value. If this happens,
    #   neither group takes precedence over the other. If two groups with
    #   the same `Precedence` have the same role ARN, that role is used in
    #   the `cognito:preferred_role` claim in tokens for users in each
    #   group. If the two groups have different role ARNs, the
    #   `cognito:preferred_role` claim is not set in users' tokens.
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
      include Aws::Structure
    end

    # The HTTP header.
    #
    # @note When making an API call, you may pass HttpHeader
    #   data as a hash:
    #
    #       {
    #         header_name: "StringType",
    #         header_value: "StringType",
    #       }
    #
    # @!attribute [rw] header_name
    #   The header name
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
      include Aws::Structure
    end

    # A container for information about an identity provider.
    #
    # @!attribute [rw] user_pool_id
    #   The user pool ID.
    #   @return [String]
    #
    # @!attribute [rw] provider_name
    #   The identity provider name.
    #   @return [String]
    #
    # @!attribute [rw] provider_type
    #   The identity provider type.
    #   @return [String]
    #
    # @!attribute [rw] provider_details
    #   The identity provider details, such as `MetadataURL` and
    #   `MetadataFile`.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] attribute_mapping
    #   A mapping of identity provider attributes to standard and custom
    #   user pool attributes.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] idp_identifiers
    #   A list of identity provider identifiers.
    #   @return [Array<String>]
    #
    # @!attribute [rw] last_modified_date
    #   The date the identity provider was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] creation_date
    #   The date the identity provider was created.
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
      include Aws::Structure
    end

    # Initiates the authentication request.
    #
    # @note When making an API call, you may pass InitiateAuthRequest
    #   data as a hash:
    #
    #       {
    #         auth_flow: "USER_SRP_AUTH", # required, accepts USER_SRP_AUTH, REFRESH_TOKEN_AUTH, REFRESH_TOKEN, CUSTOM_AUTH, ADMIN_NO_SRP_AUTH, USER_PASSWORD_AUTH
    #         auth_parameters: {
    #           "StringType" => "StringType",
    #         },
    #         client_metadata: {
    #           "StringType" => "StringType",
    #         },
    #         client_id: "ClientIdType", # required
    #         analytics_metadata: {
    #           analytics_endpoint_id: "StringType",
    #         },
    #         user_context_data: {
    #           encoded_data: "StringType",
    #         },
    #       }
    #
    # @!attribute [rw] auth_flow
    #   The authentication flow for this call to execute. The API action
    #   will depend on this value. For example:
    #
    #   * `REFRESH_TOKEN_AUTH` will take in a valid refresh token and return
    #     new tokens.
    #
    #   * `USER_SRP_AUTH` will take in `USERNAME` and `SRP_A` and return the
    #     SRP variables to be used for next challenge execution.
    #
    #   * `USER_PASSWORD_AUTH` will take in `USERNAME` and `PASSWORD` and
    #     return the next challenge or tokens.
    #
    #   Valid values include:
    #
    #   * `USER_SRP_AUTH`\: Authentication flow for the Secure Remote
    #     Password (SRP) protocol.
    #
    #   * `REFRESH_TOKEN_AUTH`/`REFRESH_TOKEN`\: Authentication flow for
    #     refreshing the access token and ID token by supplying a valid
    #     refresh token.
    #
    #   * `CUSTOM_AUTH`\: Custom authentication flow.
    #
    #   * `USER_PASSWORD_AUTH`\: Non-SRP authentication flow; USERNAME and
    #     PASSWORD are passed directly. If a user migration Lambda trigger
    #     is set, this flow will invoke the user migration Lambda if the
    #     USERNAME is not found in the user pool.
    #
    #   `ADMIN_NO_SRP_AUTH` is not a valid value.
    #   @return [String]
    #
    # @!attribute [rw] auth_parameters
    #   The authentication parameters. These are inputs corresponding to the
    #   `AuthFlow` that you are invoking. The required values depend on the
    #   value of `AuthFlow`\:
    #
    #   * For `USER_SRP_AUTH`\: `USERNAME` (required), `SRP_A` (required),
    #     `SECRET_HASH` (required if the app client is configured with a
    #     client secret), `DEVICE_KEY`
    #
    #   * For `REFRESH_TOKEN_AUTH/REFRESH_TOKEN`\: `REFRESH_TOKEN`
    #     (required), `SECRET_HASH` (required if the app client is
    #     configured with a client secret), `DEVICE_KEY`
    #
    #   * For `CUSTOM_AUTH`\: `USERNAME` (required), `SECRET_HASH` (if app
    #     client is configured with client secret), `DEVICE_KEY`
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] client_metadata
    #   This is a random key-value pair map which can contain any key and
    #   will be passed to your PreAuthentication Lambda trigger as-is. It
    #   can be used to implement additional validations around
    #   authentication.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] client_id
    #   The app client ID.
    #   @return [String]
    #
    # @!attribute [rw] analytics_metadata
    #   The Amazon Pinpoint analytics metadata for collecting metrics for
    #   `InitiateAuth` calls.
    #   @return [Types::AnalyticsMetadataType]
    #
    # @!attribute [rw] user_context_data
    #   Contextual data such as the user's device fingerprint, IP address,
    #   or location used for evaluating the risk of an unexpected event by
    #   Amazon Cognito advanced security.
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
      include Aws::Structure
    end

    # Initiates the authentication response.
    #
    # @!attribute [rw] challenge_name
    #   The name of the challenge which you are responding to with this
    #   call. This is returned to you in the `AdminInitiateAuth` response if
    #   you need to pass another challenge.
    #
    #   Valid values include the following. Note that all of these
    #   challenges require `USERNAME` and `SECRET_HASH` (if applicable) in
    #   the parameters.
    #
    #   * `SMS_MFA`\: Next challenge is to supply an `SMS_MFA_CODE`,
    #     delivered via SMS.
    #
    #   * `PASSWORD_VERIFIER`\: Next challenge is to supply
    #     `PASSWORD_CLAIM_SIGNATURE`, `PASSWORD_CLAIM_SECRET_BLOCK`, and
    #     `TIMESTAMP` after the client-side SRP calculations.
    #
    #   * `CUSTOM_CHALLENGE`\: This is returned if your custom
    #     authentication flow determines that the user should pass another
    #     challenge before tokens are issued.
    #
    #   * `DEVICE_SRP_AUTH`\: If device tracking was enabled on your user
    #     pool and the previous challenges were passed, this challenge is
    #     returned so that Amazon Cognito can start tracking this device.
    #
    #   * `DEVICE_PASSWORD_VERIFIER`\: Similar to `PASSWORD_VERIFIER`, but
    #     for devices only.
    #
    #   * `NEW_PASSWORD_REQUIRED`\: For users which are required to change
    #     their passwords after successful first login. This challenge
    #     should be passed with `NEW_PASSWORD` and any other required
    #     attributes.
    #   @return [String]
    #
    # @!attribute [rw] session
    #   The session which should be passed both ways in challenge-response
    #   calls to the service. If the or API call determines that the caller
    #   needs to go through another challenge, they return a session with
    #   other challenge parameters. This session should be passed as it is
    #   to the next `RespondToAuthChallenge` API call.
    #   @return [String]
    #
    # @!attribute [rw] challenge_parameters
    #   The challenge parameters. These are returned to you in the
    #   `InitiateAuth` response if you need to pass another challenge. The
    #   responses in this parameter should be used to compute inputs to the
    #   next call (`RespondToAuthChallenge`).
    #
    #   All challenges require `USERNAME` and `SECRET_HASH` (if applicable).
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] authentication_result
    #   The result of the authentication response. This is only returned if
    #   the caller does not need to pass another challenge. If the caller
    #   does need to pass another challenge before it gets tokens,
    #   `ChallengeName`, `ChallengeParameters`, and `Session` are returned.
    #   @return [Types::AuthenticationResultType]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/InitiateAuthResponse AWS API Documentation
    #
    class InitiateAuthResponse < Struct.new(
      :challenge_name,
      :session,
      :challenge_parameters,
      :authentication_result)
      include Aws::Structure
    end

    # Specifies the configuration for AWS Lambda triggers.
    #
    # @note When making an API call, you may pass LambdaConfigType
    #   data as a hash:
    #
    #       {
    #         pre_sign_up: "ArnType",
    #         custom_message: "ArnType",
    #         post_confirmation: "ArnType",
    #         pre_authentication: "ArnType",
    #         post_authentication: "ArnType",
    #         define_auth_challenge: "ArnType",
    #         create_auth_challenge: "ArnType",
    #         verify_auth_challenge_response: "ArnType",
    #         pre_token_generation: "ArnType",
    #         user_migration: "ArnType",
    #       }
    #
    # @!attribute [rw] pre_sign_up
    #   A pre-registration AWS Lambda trigger.
    #   @return [String]
    #
    # @!attribute [rw] custom_message
    #   A custom Message AWS Lambda trigger.
    #   @return [String]
    #
    # @!attribute [rw] post_confirmation
    #   A post-confirmation AWS Lambda trigger.
    #   @return [String]
    #
    # @!attribute [rw] pre_authentication
    #   A pre-authentication AWS Lambda trigger.
    #   @return [String]
    #
    # @!attribute [rw] post_authentication
    #   A post-authentication AWS Lambda trigger.
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
      :user_migration)
      include Aws::Structure
    end

    # Represents the request to list the devices.
    #
    # @note When making an API call, you may pass ListDevicesRequest
    #   data as a hash:
    #
    #       {
    #         access_token: "TokenModelType", # required
    #         limit: 1,
    #         pagination_token: "SearchPaginationTokenType",
    #       }
    #
    # @!attribute [rw] access_token
    #   The access tokens for the request to list devices.
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListGroupsRequest
    #   data as a hash:
    #
    #       {
    #         user_pool_id: "UserPoolIdType", # required
    #         limit: 1,
    #         next_token: "PaginationKey",
    #       }
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/ListGroupsRequest AWS API Documentation
    #
    class ListGroupsRequest < Struct.new(
      :user_pool_id,
      :limit,
      :next_token)
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListIdentityProvidersRequest
    #   data as a hash:
    #
    #       {
    #         user_pool_id: "UserPoolIdType", # required
    #         max_results: 1,
    #         next_token: "PaginationKeyType",
    #       }
    #
    # @!attribute [rw] user_pool_id
    #   The user pool ID.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of identity providers to return.
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
      include Aws::Structure
    end

    # @!attribute [rw] providers
    #   A list of identity provider objects.
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListResourceServersRequest
    #   data as a hash:
    #
    #       {
    #         user_pool_id: "UserPoolIdType", # required
    #         max_results: 1,
    #         next_token: "PaginationKeyType",
    #       }
    #
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
      include Aws::Structure
    end

    # Represents the request to list the user import jobs.
    #
    # @note When making an API call, you may pass ListUserImportJobsRequest
    #   data as a hash:
    #
    #       {
    #         user_pool_id: "UserPoolIdType", # required
    #         max_results: 1, # required
    #         pagination_token: "PaginationKeyType",
    #       }
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
      include Aws::Structure
    end

    # Represents the request to list the user pool clients.
    #
    # @note When making an API call, you may pass ListUserPoolClientsRequest
    #   data as a hash:
    #
    #       {
    #         user_pool_id: "UserPoolIdType", # required
    #         max_results: 1,
    #         next_token: "PaginationKey",
    #       }
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
      include Aws::Structure
    end

    # Represents the request to list user pools.
    #
    # @note When making an API call, you may pass ListUserPoolsRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "PaginationKeyType",
    #         max_results: 1, # required
    #       }
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListUsersInGroupRequest
    #   data as a hash:
    #
    #       {
    #         user_pool_id: "UserPoolIdType", # required
    #         group_name: "GroupNameType", # required
    #         limit: 1,
    #         next_token: "PaginationKey",
    #       }
    #
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
      include Aws::Structure
    end

    # @!attribute [rw] users
    #   The users returned in the request to list users.
    #   @return [Array<Types::UserType>]
    #
    # @!attribute [rw] next_token
    #   An identifier that was returned from the previous call to this
    #   operation, which can be used to return the next set of items in the
    #   list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/ListUsersInGroupResponse AWS API Documentation
    #
    class ListUsersInGroupResponse < Struct.new(
      :users,
      :next_token)
      include Aws::Structure
    end

    # Represents the request to list users.
    #
    # @note When making an API call, you may pass ListUsersRequest
    #   data as a hash:
    #
    #       {
    #         user_pool_id: "UserPoolIdType", # required
    #         attributes_to_get: ["AttributeNameType"],
    #         limit: 1,
    #         pagination_token: "SearchPaginationTokenType",
    #         filter: "UserFilterType",
    #       }
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
    #   * *AttributeName*\: The name of the attribute to search for. You can
    #     only search for one attribute at a time.
    #
    #   * *Filter-Type*\: For an exact match, use =, for example,
    #     "`given_name` = \\"Jon\\"". For a prefix ("starts with")
    #     match, use ^=, for example, "`given_name` ^= \\"Jon\\"".
    #
    #   * *AttributeValue*\: The attribute value that must be matched for
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
    #   Custom attributes are not searchable.
    #
    #   For more information, see [Searching for Users Using the ListUsers
    #   API][1] and [Examples of Using the ListUsers API][2] in the *Amazon
    #   Cognito Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/cognito/latest/developerguide/how-to-manage-user-accounts.html#cognito-user-pools-searching-for-users-using-listusers-api
    #   [2]: http://docs.aws.amazon.com/cognito/latest/developerguide/how-to-manage-user-accounts.html#cognito-user-pools-searching-for-users-listusers-api-examples
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
      include Aws::Structure
    end

    # Specifies the different settings for multi-factor authentication
    # (MFA).
    #
    # @note When making an API call, you may pass MFAOptionType
    #   data as a hash:
    #
    #       {
    #         delivery_medium: "SMS", # accepts SMS, EMAIL
    #         attribute_name: "AttributeNameType",
    #       }
    #
    # @!attribute [rw] delivery_medium
    #   The delivery medium (email message or SMS message) to send the MFA
    #   code.
    #   @return [String]
    #
    # @!attribute [rw] attribute_name
    #   The attribute name of the MFA option type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/MFAOptionType AWS API Documentation
    #
    class MFAOptionType < Struct.new(
      :delivery_medium,
      :attribute_name)
      include Aws::Structure
    end

    # The message template structure.
    #
    # @note When making an API call, you may pass MessageTemplateType
    #   data as a hash:
    #
    #       {
    #         sms_message: "SmsVerificationMessageType",
    #         email_message: "EmailVerificationMessageType",
    #         email_subject: "EmailVerificationSubjectType",
    #       }
    #
    # @!attribute [rw] sms_message
    #   The message template for SMS messages.
    #   @return [String]
    #
    # @!attribute [rw] email_message
    #   The message template for email messages.
    #   @return [String]
    #
    # @!attribute [rw] email_subject
    #   The subject line for email messages.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/MessageTemplateType AWS API Documentation
    #
    class MessageTemplateType < Struct.new(
      :sms_message,
      :email_message,
      :email_subject)
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
      include Aws::Structure
    end

    # The notify configuration type.
    #
    # @note When making an API call, you may pass NotifyConfigurationType
    #   data as a hash:
    #
    #       {
    #         from: "StringType",
    #         reply_to: "StringType",
    #         source_arn: "ArnType", # required
    #         block_email: {
    #           subject: "EmailNotificationSubjectType", # required
    #           html_body: "EmailNotificationBodyType",
    #           text_body: "EmailNotificationBodyType",
    #         },
    #         no_action_email: {
    #           subject: "EmailNotificationSubjectType", # required
    #           html_body: "EmailNotificationBodyType",
    #           text_body: "EmailNotificationBodyType",
    #         },
    #         mfa_email: {
    #           subject: "EmailNotificationSubjectType", # required
    #           html_body: "EmailNotificationBodyType",
    #           text_body: "EmailNotificationBodyType",
    #         },
    #       }
    #
    # @!attribute [rw] from
    #   The email address that is sending the email. It must be either
    #   individually verified with Amazon SES, or from a domain that has
    #   been verified with Amazon SES.
    #   @return [String]
    #
    # @!attribute [rw] reply_to
    #   The destination to which the receiver of an email should reply to.
    #   @return [String]
    #
    # @!attribute [rw] source_arn
    #   The Amazon Resource Name (ARN) of the identity that is associated
    #   with the sending authorization policy. It permits Amazon Cognito to
    #   send for the email address specified in the `From` parameter.
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
    #   The MFA email template used when MFA is challenged as part of a
    #   detected risk.
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
      include Aws::Structure
    end

    # The notify email type.
    #
    # @note When making an API call, you may pass NotifyEmailType
    #   data as a hash:
    #
    #       {
    #         subject: "EmailNotificationSubjectType", # required
    #         html_body: "EmailNotificationBodyType",
    #         text_body: "EmailNotificationBodyType",
    #       }
    #
    # @!attribute [rw] subject
    #   The subject.
    #   @return [String]
    #
    # @!attribute [rw] html_body
    #   The HTML body.
    #   @return [String]
    #
    # @!attribute [rw] text_body
    #   The text body.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/NotifyEmailType AWS API Documentation
    #
    class NotifyEmailType < Struct.new(
      :subject,
      :html_body,
      :text_body)
      include Aws::Structure
    end

    # The minimum and maximum value of an attribute that is of the number
    # data type.
    #
    # @note When making an API call, you may pass NumberAttributeConstraintsType
    #   data as a hash:
    #
    #       {
    #         min_value: "StringType",
    #         max_value: "StringType",
    #       }
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
      include Aws::Structure
    end

    # The password policy type.
    #
    # @note When making an API call, you may pass PasswordPolicyType
    #   data as a hash:
    #
    #       {
    #         minimum_length: 1,
    #         require_uppercase: false,
    #         require_lowercase: false,
    #         require_numbers: false,
    #         require_symbols: false,
    #       }
    #
    # @!attribute [rw] minimum_length
    #   The minimum length of the password policy that you have set. Cannot
    #   be less than 6.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/PasswordPolicyType AWS API Documentation
    #
    class PasswordPolicyType < Struct.new(
      :minimum_length,
      :require_uppercase,
      :require_lowercase,
      :require_numbers,
      :require_symbols)
      include Aws::Structure
    end

    # A container for identity provider details.
    #
    # @!attribute [rw] provider_name
    #   The identity provider name.
    #   @return [String]
    #
    # @!attribute [rw] provider_type
    #   The identity provider type.
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
      include Aws::Structure
    end

    # A container for information about an identity provider for a user
    # pool.
    #
    # @note When making an API call, you may pass ProviderUserIdentifierType
    #   data as a hash:
    #
    #       {
    #         provider_name: "ProviderNameType",
    #         provider_attribute_name: "StringType",
    #         provider_attribute_value: "StringType",
    #       }
    #
    # @!attribute [rw] provider_name
    #   The name of the provider, for example, Facebook, Google, or Login
    #   with Amazon.
    #   @return [String]
    #
    # @!attribute [rw] provider_attribute_name
    #   The name of the provider attribute to link to, for example,
    #   `NameID`.
    #   @return [String]
    #
    # @!attribute [rw] provider_attribute_value
    #   The value of the provider attribute to link to, for example,
    #   `xxxxx_account`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/ProviderUserIdentifierType AWS API Documentation
    #
    class ProviderUserIdentifierType < Struct.new(
      :provider_name,
      :provider_attribute_name,
      :provider_attribute_value)
      include Aws::Structure
    end

    # Represents the request to resend the confirmation code.
    #
    # @note When making an API call, you may pass ResendConfirmationCodeRequest
    #   data as a hash:
    #
    #       {
    #         client_id: "ClientIdType", # required
    #         secret_hash: "SecretHashType",
    #         user_context_data: {
    #           encoded_data: "StringType",
    #         },
    #         username: "UsernameType", # required
    #         analytics_metadata: {
    #           analytics_endpoint_id: "StringType",
    #         },
    #       }
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
    #   Contextual data such as the user's device fingerprint, IP address,
    #   or location used for evaluating the risk of an unexpected event by
    #   Amazon Cognito advanced security.
    #   @return [Types::UserContextDataType]
    #
    # @!attribute [rw] username
    #   The user name of the user to whom you wish to resend a confirmation
    #   code.
    #   @return [String]
    #
    # @!attribute [rw] analytics_metadata
    #   The Amazon Pinpoint analytics metadata for collecting metrics for
    #   `ResendConfirmationCode` calls.
    #   @return [Types::AnalyticsMetadataType]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/ResendConfirmationCodeRequest AWS API Documentation
    #
    class ResendConfirmationCodeRequest < Struct.new(
      :client_id,
      :secret_hash,
      :user_context_data,
      :username,
      :analytics_metadata)
      include Aws::Structure
    end

    # The response from the server when the Amazon Cognito Your User Pools
    # service makes the request to resend a confirmation code.
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
      include Aws::Structure
    end

    # A resource server scope.
    #
    # @note When making an API call, you may pass ResourceServerScopeType
    #   data as a hash:
    #
    #       {
    #         scope_name: "ResourceServerScopeNameType", # required
    #         scope_description: "ResourceServerScopeDescriptionType", # required
    #       }
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
      include Aws::Structure
    end

    # The request to respond to an authentication challenge.
    #
    # @note When making an API call, you may pass RespondToAuthChallengeRequest
    #   data as a hash:
    #
    #       {
    #         client_id: "ClientIdType", # required
    #         challenge_name: "SMS_MFA", # required, accepts SMS_MFA, SOFTWARE_TOKEN_MFA, SELECT_MFA_TYPE, MFA_SETUP, PASSWORD_VERIFIER, CUSTOM_CHALLENGE, DEVICE_SRP_AUTH, DEVICE_PASSWORD_VERIFIER, ADMIN_NO_SRP_AUTH, NEW_PASSWORD_REQUIRED
    #         session: "SessionType",
    #         challenge_responses: {
    #           "StringType" => "StringType",
    #         },
    #         analytics_metadata: {
    #           analytics_endpoint_id: "StringType",
    #         },
    #         user_context_data: {
    #           encoded_data: "StringType",
    #         },
    #       }
    #
    # @!attribute [rw] client_id
    #   The app client ID.
    #   @return [String]
    #
    # @!attribute [rw] challenge_name
    #   The challenge name. For more information, see .
    #
    #   `ADMIN_NO_SRP_AUTH` is not a valid value.
    #   @return [String]
    #
    # @!attribute [rw] session
    #   The session which should be passed both ways in challenge-response
    #   calls to the service. If `InitiateAuth` or `RespondToAuthChallenge`
    #   API call determines that the caller needs to go through another
    #   challenge, they return a session with other challenge parameters.
    #   This session should be passed as it is to the next
    #   `RespondToAuthChallenge` API call.
    #   @return [String]
    #
    # @!attribute [rw] challenge_responses
    #   The challenge responses. These are inputs corresponding to the value
    #   of `ChallengeName`, for example:
    #
    #   * `SMS_MFA`\: `SMS_MFA_CODE`, `USERNAME`, `SECRET_HASH` (if app
    #     client is configured with client secret).
    #
    #   * `PASSWORD_VERIFIER`\: `PASSWORD_CLAIM_SIGNATURE`,
    #     `PASSWORD_CLAIM_SECRET_BLOCK`, `TIMESTAMP`, `USERNAME`,
    #     `SECRET_HASH` (if app client is configured with client secret).
    #
    #   * `NEW_PASSWORD_REQUIRED`\: `NEW_PASSWORD`, any other required
    #     attributes, `USERNAME`, `SECRET_HASH` (if app client is configured
    #     with client secret).
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] analytics_metadata
    #   The Amazon Pinpoint analytics metadata for collecting metrics for
    #   `RespondToAuthChallenge` calls.
    #   @return [Types::AnalyticsMetadataType]
    #
    # @!attribute [rw] user_context_data
    #   Contextual data such as the user's device fingerprint, IP address,
    #   or location used for evaluating the risk of an unexpected event by
    #   Amazon Cognito advanced security.
    #   @return [Types::UserContextDataType]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/RespondToAuthChallengeRequest AWS API Documentation
    #
    class RespondToAuthChallengeRequest < Struct.new(
      :client_id,
      :challenge_name,
      :session,
      :challenge_responses,
      :analytics_metadata,
      :user_context_data)
      include Aws::Structure
    end

    # The response to respond to the authentication challenge.
    #
    # @!attribute [rw] challenge_name
    #   The challenge name. For more information, see .
    #   @return [String]
    #
    # @!attribute [rw] session
    #   The session which should be passed both ways in challenge-response
    #   calls to the service. If the or API call determines that the caller
    #   needs to go through another challenge, they return a session with
    #   other challenge parameters. This session should be passed as it is
    #   to the next `RespondToAuthChallenge` API call.
    #   @return [String]
    #
    # @!attribute [rw] challenge_parameters
    #   The challenge parameters. For more information, see .
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
      include Aws::Structure
    end

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
    #   The compromised credentials risk configuration object including the
    #   `EventFilter` and the `EventAction`
    #   @return [Types::CompromisedCredentialsRiskConfigurationType]
    #
    # @!attribute [rw] account_takeover_risk_configuration
    #   The account takeover risk configuration object including the
    #   `NotifyConfiguration` object and `Actions` to take in the case of an
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
      include Aws::Structure
    end

    # The type of the configuration to override the risk decision.
    #
    # @note When making an API call, you may pass RiskExceptionConfigurationType
    #   data as a hash:
    #
    #       {
    #         blocked_ip_range_list: ["StringType"],
    #         skipped_ip_range_list: ["StringType"],
    #       }
    #
    # @!attribute [rw] blocked_ip_range_list
    #   Overrides the risk decision to always block the pre-authentication
    #   requests. The IP range is in CIDR notation: a compact representation
    #   of an IP address and its associated routing prefix.
    #   @return [Array<String>]
    #
    # @!attribute [rw] skipped_ip_range_list
    #   Risk detection is not performed on the IP addresses in the range
    #   list. The IP range is in CIDR notation.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/RiskExceptionConfigurationType AWS API Documentation
    #
    class RiskExceptionConfigurationType < Struct.new(
      :blocked_ip_range_list,
      :skipped_ip_range_list)
      include Aws::Structure
    end

    # The SMS multi-factor authentication (MFA) settings type.
    #
    # @note When making an API call, you may pass SMSMfaSettingsType
    #   data as a hash:
    #
    #       {
    #         enabled: false,
    #         preferred_mfa: false,
    #       }
    #
    # @!attribute [rw] enabled
    #   Specifies whether SMS text message MFA is enabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] preferred_mfa
    #   The preferred MFA method.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/SMSMfaSettingsType AWS API Documentation
    #
    class SMSMfaSettingsType < Struct.new(
      :enabled,
      :preferred_mfa)
      include Aws::Structure
    end

    # Contains information about the schema attribute.
    #
    # @note When making an API call, you may pass SchemaAttributeType
    #   data as a hash:
    #
    #       {
    #         name: "CustomAttributeNameType",
    #         attribute_data_type: "String", # accepts String, Number, DateTime, Boolean
    #         developer_only_attribute: false,
    #         mutable: false,
    #         required: false,
    #         number_attribute_constraints: {
    #           min_value: "StringType",
    #           max_value: "StringType",
    #         },
    #         string_attribute_constraints: {
    #           min_length: "StringType",
    #           max_length: "StringType",
    #         },
    #       }
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
    #   Specifies whether the attribute type is developer only.
    #   @return [Boolean]
    #
    # @!attribute [rw] mutable
    #   Specifies whether the value of the attribute can be changed.
    #   @return [Boolean]
    #
    # @!attribute [rw] required
    #   Specifies whether a user pool attribute is required. If the
    #   attribute is required and the user does not provide a value,
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass SetRiskConfigurationRequest
    #   data as a hash:
    #
    #       {
    #         user_pool_id: "UserPoolIdType", # required
    #         client_id: "ClientIdType",
    #         compromised_credentials_risk_configuration: {
    #           event_filter: ["SIGN_IN"], # accepts SIGN_IN, PASSWORD_CHANGE, SIGN_UP
    #           actions: { # required
    #             event_action: "BLOCK", # required, accepts BLOCK, NO_ACTION
    #           },
    #         },
    #         account_takeover_risk_configuration: {
    #           notify_configuration: {
    #             from: "StringType",
    #             reply_to: "StringType",
    #             source_arn: "ArnType", # required
    #             block_email: {
    #               subject: "EmailNotificationSubjectType", # required
    #               html_body: "EmailNotificationBodyType",
    #               text_body: "EmailNotificationBodyType",
    #             },
    #             no_action_email: {
    #               subject: "EmailNotificationSubjectType", # required
    #               html_body: "EmailNotificationBodyType",
    #               text_body: "EmailNotificationBodyType",
    #             },
    #             mfa_email: {
    #               subject: "EmailNotificationSubjectType", # required
    #               html_body: "EmailNotificationBodyType",
    #               text_body: "EmailNotificationBodyType",
    #             },
    #           },
    #           actions: { # required
    #             low_action: {
    #               notify: false, # required
    #               event_action: "BLOCK", # required, accepts BLOCK, MFA_IF_CONFIGURED, MFA_REQUIRED, NO_ACTION
    #             },
    #             medium_action: {
    #               notify: false, # required
    #               event_action: "BLOCK", # required, accepts BLOCK, MFA_IF_CONFIGURED, MFA_REQUIRED, NO_ACTION
    #             },
    #             high_action: {
    #               notify: false, # required
    #               event_action: "BLOCK", # required, accepts BLOCK, MFA_IF_CONFIGURED, MFA_REQUIRED, NO_ACTION
    #             },
    #           },
    #         },
    #         risk_exception_configuration: {
    #           blocked_ip_range_list: ["StringType"],
    #           skipped_ip_range_list: ["StringType"],
    #         },
    #       }
    #
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
    #   Otherwise, `ClientId` is mapped to the client. When the client ID is
    #   not null, the user pool configuration is overridden and the risk
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass SetUICustomizationRequest
    #   data as a hash:
    #
    #       {
    #         user_pool_id: "UserPoolIdType", # required
    #         client_id: "ClientIdType",
    #         css: "CSSType",
    #         image_file: "data",
    #       }
    #
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass SetUserMFAPreferenceRequest
    #   data as a hash:
    #
    #       {
    #         sms_mfa_settings: {
    #           enabled: false,
    #           preferred_mfa: false,
    #         },
    #         software_token_mfa_settings: {
    #           enabled: false,
    #           preferred_mfa: false,
    #         },
    #         access_token: "TokenModelType", # required
    #       }
    #
    # @!attribute [rw] sms_mfa_settings
    #   The SMS text message multi-factor authentication (MFA) settings.
    #   @return [Types::SMSMfaSettingsType]
    #
    # @!attribute [rw] software_token_mfa_settings
    #   The time-based one-time password software token MFA settings.
    #   @return [Types::SoftwareTokenMfaSettingsType]
    #
    # @!attribute [rw] access_token
    #   The access token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/SetUserMFAPreferenceRequest AWS API Documentation
    #
    class SetUserMFAPreferenceRequest < Struct.new(
      :sms_mfa_settings,
      :software_token_mfa_settings,
      :access_token)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/SetUserMFAPreferenceResponse AWS API Documentation
    #
    class SetUserMFAPreferenceResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass SetUserPoolMfaConfigRequest
    #   data as a hash:
    #
    #       {
    #         user_pool_id: "UserPoolIdType", # required
    #         sms_mfa_configuration: {
    #           sms_authentication_message: "SmsVerificationMessageType",
    #           sms_configuration: {
    #             sns_caller_arn: "ArnType", # required
    #             external_id: "StringType",
    #           },
    #         },
    #         software_token_mfa_configuration: {
    #           enabled: false,
    #         },
    #         mfa_configuration: "OFF", # accepts OFF, ON, OPTIONAL
    #       }
    #
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
    #   The MFA configuration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/SetUserPoolMfaConfigRequest AWS API Documentation
    #
    class SetUserPoolMfaConfigRequest < Struct.new(
      :user_pool_id,
      :sms_mfa_configuration,
      :software_token_mfa_configuration,
      :mfa_configuration)
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
    #   The MFA configuration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/SetUserPoolMfaConfigResponse AWS API Documentation
    #
    class SetUserPoolMfaConfigResponse < Struct.new(
      :sms_mfa_configuration,
      :software_token_mfa_configuration,
      :mfa_configuration)
      include Aws::Structure
    end

    # Represents the request to set user settings.
    #
    # @note When making an API call, you may pass SetUserSettingsRequest
    #   data as a hash:
    #
    #       {
    #         access_token: "TokenModelType", # required
    #         mfa_options: [ # required
    #           {
    #             delivery_medium: "SMS", # accepts SMS, EMAIL
    #             attribute_name: "AttributeNameType",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] access_token
    #   The access token for the set user settings request.
    #   @return [String]
    #
    # @!attribute [rw] mfa_options
    #   Specifies the options for MFA (e.g., email or phone number).
    #   @return [Array<Types::MFAOptionType>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/SetUserSettingsRequest AWS API Documentation
    #
    class SetUserSettingsRequest < Struct.new(
      :access_token,
      :mfa_options)
      include Aws::Structure
    end

    # The response from the server for a set user settings request.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/SetUserSettingsResponse AWS API Documentation
    #
    class SetUserSettingsResponse < Aws::EmptyStructure; end

    # Represents the request to register a user.
    #
    # @note When making an API call, you may pass SignUpRequest
    #   data as a hash:
    #
    #       {
    #         client_id: "ClientIdType", # required
    #         secret_hash: "SecretHashType",
    #         username: "UsernameType", # required
    #         password: "PasswordType", # required
    #         user_attributes: [
    #           {
    #             name: "AttributeNameType", # required
    #             value: "AttributeValueType",
    #           },
    #         ],
    #         validation_data: [
    #           {
    #             name: "AttributeNameType", # required
    #             value: "AttributeValueType",
    #           },
    #         ],
    #         analytics_metadata: {
    #           analytics_endpoint_id: "StringType",
    #         },
    #         user_context_data: {
    #           encoded_data: "StringType",
    #         },
    #       }
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
    #   The user name of the user you wish to register.
    #   @return [String]
    #
    # @!attribute [rw] password
    #   The password of the user you wish to register.
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
    #   The Amazon Pinpoint analytics metadata for collecting metrics for
    #   `SignUp` calls.
    #   @return [Types::AnalyticsMetadataType]
    #
    # @!attribute [rw] user_context_data
    #   Contextual data such as the user's device fingerprint, IP address,
    #   or location used for evaluating the risk of an unexpected event by
    #   Amazon Cognito advanced security.
    #   @return [Types::UserContextDataType]
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
      :user_context_data)
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
    #   The UUID of the authenticated user. This is not the same as
    #   `username`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/SignUpResponse AWS API Documentation
    #
    class SignUpResponse < Struct.new(
      :user_confirmed,
      :code_delivery_details,
      :user_sub)
      include Aws::Structure
    end

    # The SMS configuration type.
    #
    # @note When making an API call, you may pass SmsConfigurationType
    #   data as a hash:
    #
    #       {
    #         sns_caller_arn: "ArnType", # required
    #         external_id: "StringType",
    #       }
    #
    # @!attribute [rw] sns_caller_arn
    #   The Amazon Resource Name (ARN) of the Amazon Simple Notification
    #   Service (SNS) caller.
    #   @return [String]
    #
    # @!attribute [rw] external_id
    #   The external ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/SmsConfigurationType AWS API Documentation
    #
    class SmsConfigurationType < Struct.new(
      :sns_caller_arn,
      :external_id)
      include Aws::Structure
    end

    # The SMS text message multi-factor authentication (MFA) configuration
    # type.
    #
    # @note When making an API call, you may pass SmsMfaConfigType
    #   data as a hash:
    #
    #       {
    #         sms_authentication_message: "SmsVerificationMessageType",
    #         sms_configuration: {
    #           sns_caller_arn: "ArnType", # required
    #           external_id: "StringType",
    #         },
    #       }
    #
    # @!attribute [rw] sms_authentication_message
    #   The SMS authentication message.
    #   @return [String]
    #
    # @!attribute [rw] sms_configuration
    #   The SMS configuration.
    #   @return [Types::SmsConfigurationType]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/SmsMfaConfigType AWS API Documentation
    #
    class SmsMfaConfigType < Struct.new(
      :sms_authentication_message,
      :sms_configuration)
      include Aws::Structure
    end

    # The type used for enabling software token MFA at the user pool level.
    #
    # @note When making an API call, you may pass SoftwareTokenMfaConfigType
    #   data as a hash:
    #
    #       {
    #         enabled: false,
    #       }
    #
    # @!attribute [rw] enabled
    #   Specifies whether software token MFA is enabled.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/SoftwareTokenMfaConfigType AWS API Documentation
    #
    class SoftwareTokenMfaConfigType < Struct.new(
      :enabled)
      include Aws::Structure
    end

    # The type used for enabling software token MFA at the user level.
    #
    # @note When making an API call, you may pass SoftwareTokenMfaSettingsType
    #   data as a hash:
    #
    #       {
    #         enabled: false,
    #         preferred_mfa: false,
    #       }
    #
    # @!attribute [rw] enabled
    #   Specifies whether software token MFA is enabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] preferred_mfa
    #   The preferred MFA method.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/SoftwareTokenMfaSettingsType AWS API Documentation
    #
    class SoftwareTokenMfaSettingsType < Struct.new(
      :enabled,
      :preferred_mfa)
      include Aws::Structure
    end

    # Represents the request to start the user import job.
    #
    # @note When making an API call, you may pass StartUserImportJobRequest
    #   data as a hash:
    #
    #       {
    #         user_pool_id: "UserPoolIdType", # required
    #         job_id: "UserImportJobIdType", # required
    #       }
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
      include Aws::Structure
    end

    # Represents the request to stop the user import job.
    #
    # @note When making an API call, you may pass StopUserImportJobRequest
    #   data as a hash:
    #
    #       {
    #         user_pool_id: "UserPoolIdType", # required
    #         job_id: "UserImportJobIdType", # required
    #       }
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
      include Aws::Structure
    end

    # The constraints associated with a string attribute.
    #
    # @note When making an API call, you may pass StringAttributeConstraintsType
    #   data as a hash:
    #
    #       {
    #         min_length: "StringType",
    #         max_length: "StringType",
    #       }
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateAuthEventFeedbackRequest
    #   data as a hash:
    #
    #       {
    #         user_pool_id: "UserPoolIdType", # required
    #         username: "UsernameType", # required
    #         event_id: "EventIdType", # required
    #         feedback_token: "TokenModelType", # required
    #         feedback_value: "Valid", # required, accepts Valid, Invalid
    #       }
    #
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
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/UpdateAuthEventFeedbackResponse AWS API Documentation
    #
    class UpdateAuthEventFeedbackResponse < Aws::EmptyStructure; end

    # Represents the request to update the device status.
    #
    # @note When making an API call, you may pass UpdateDeviceStatusRequest
    #   data as a hash:
    #
    #       {
    #         access_token: "TokenModelType", # required
    #         device_key: "DeviceKeyType", # required
    #         device_remembered_status: "remembered", # accepts remembered, not_remembered
    #       }
    #
    # @!attribute [rw] access_token
    #   The access token.
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
      include Aws::Structure
    end

    # The response to the request to update the device status.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/UpdateDeviceStatusResponse AWS API Documentation
    #
    class UpdateDeviceStatusResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UpdateGroupRequest
    #   data as a hash:
    #
    #       {
    #         group_name: "GroupNameType", # required
    #         user_pool_id: "UserPoolIdType", # required
    #         description: "DescriptionType",
    #         role_arn: "ArnType",
    #         precedence: 1,
    #       }
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
    #   A string containing the new description of the group.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The new role ARN for the group. This is used for setting the
    #   `cognito:roles` and `cognito:preferred_role` claims in the token.
    #   @return [String]
    #
    # @!attribute [rw] precedence
    #   The new precedence value for the group. For more information about
    #   this parameter, see .
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateIdentityProviderRequest
    #   data as a hash:
    #
    #       {
    #         user_pool_id: "UserPoolIdType", # required
    #         provider_name: "ProviderNameType", # required
    #         provider_details: {
    #           "StringType" => "StringType",
    #         },
    #         attribute_mapping: {
    #           "AttributeMappingKeyType" => "StringType",
    #         },
    #         idp_identifiers: ["IdpIdentifierType"],
    #       }
    #
    # @!attribute [rw] user_pool_id
    #   The user pool ID.
    #   @return [String]
    #
    # @!attribute [rw] provider_name
    #   The identity provider name.
    #   @return [String]
    #
    # @!attribute [rw] provider_details
    #   The identity provider details to be updated, such as `MetadataURL`
    #   and `MetadataFile`.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] attribute_mapping
    #   The identity provider attribute mapping to be changed.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] idp_identifiers
    #   A list of identity provider identifiers.
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
      include Aws::Structure
    end

    # @!attribute [rw] identity_provider
    #   The identity provider object.
    #   @return [Types::IdentityProviderType]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/UpdateIdentityProviderResponse AWS API Documentation
    #
    class UpdateIdentityProviderResponse < Struct.new(
      :identity_provider)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateResourceServerRequest
    #   data as a hash:
    #
    #       {
    #         user_pool_id: "UserPoolIdType", # required
    #         identifier: "ResourceServerIdentifierType", # required
    #         name: "ResourceServerNameType", # required
    #         scopes: [
    #           {
    #             scope_name: "ResourceServerScopeNameType", # required
    #             scope_description: "ResourceServerScopeDescriptionType", # required
    #           },
    #         ],
    #       }
    #
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
      include Aws::Structure
    end

    # Represents the request to update user attributes.
    #
    # @note When making an API call, you may pass UpdateUserAttributesRequest
    #   data as a hash:
    #
    #       {
    #         user_attributes: [ # required
    #           {
    #             name: "AttributeNameType", # required
    #             value: "AttributeValueType",
    #           },
    #         ],
    #         access_token: "TokenModelType", # required
    #       }
    #
    # @!attribute [rw] user_attributes
    #   An array of name-value pairs representing user attributes.
    #
    #   For custom attributes, you must prepend the `custom:` prefix to the
    #   attribute name.
    #   @return [Array<Types::AttributeType>]
    #
    # @!attribute [rw] access_token
    #   The access token for the request to update user attributes.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/UpdateUserAttributesRequest AWS API Documentation
    #
    class UpdateUserAttributesRequest < Struct.new(
      :user_attributes,
      :access_token)
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
      include Aws::Structure
    end

    # Represents the request to update the user pool client.
    #
    # @note When making an API call, you may pass UpdateUserPoolClientRequest
    #   data as a hash:
    #
    #       {
    #         user_pool_id: "UserPoolIdType", # required
    #         client_id: "ClientIdType", # required
    #         client_name: "ClientNameType",
    #         refresh_token_validity: 1,
    #         read_attributes: ["ClientPermissionType"],
    #         write_attributes: ["ClientPermissionType"],
    #         explicit_auth_flows: ["ADMIN_NO_SRP_AUTH"], # accepts ADMIN_NO_SRP_AUTH, CUSTOM_AUTH_FLOW_ONLY, USER_PASSWORD_AUTH
    #         supported_identity_providers: ["ProviderNameType"],
    #         callback_urls: ["RedirectUrlType"],
    #         logout_urls: ["RedirectUrlType"],
    #         default_redirect_uri: "RedirectUrlType",
    #         allowed_o_auth_flows: ["code"], # accepts code, implicit, client_credentials
    #         allowed_o_auth_scopes: ["ScopeType"],
    #         allowed_o_auth_flows_user_pool_client: false,
    #         analytics_configuration: {
    #           application_id: "HexStringType", # required
    #           role_arn: "ArnType", # required
    #           external_id: "StringType", # required
    #           user_data_shared: false,
    #         },
    #       }
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
    #   The time limit, in days, after which the refresh token is no longer
    #   valid and cannot be used.
    #   @return [Integer]
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
    #   Explicit authentication flows.
    #   @return [Array<String>]
    #
    # @!attribute [rw] supported_identity_providers
    #   A list of provider names for the identity providers that are
    #   supported on this client.
    #   @return [Array<String>]
    #
    # @!attribute [rw] callback_urls
    #   A list of allowed redirect (callback) URLs for the identity
    #   providers.
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
    #   A list of allowed logout URLs for the identity providers.
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
    #   Set to `code` to initiate a code grant flow, which provides an
    #   authorization code as the response. This code can be exchanged for
    #   access tokens with the token endpoint.
    #
    #   Set to `token` to specify that the client should get the access
    #   token (and, optionally, ID token, based on scopes) directly.
    #   @return [Array<String>]
    #
    # @!attribute [rw] allowed_o_auth_scopes
    #   A list of allowed `OAuth` scopes. Currently supported values are
    #   `"phone"`, `"email"`, `"openid"`, and `"Cognito"`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] allowed_o_auth_flows_user_pool_client
    #   Set to TRUE if the client is allowed to follow the OAuth protocol
    #   when interacting with Cognito user pools.
    #   @return [Boolean]
    #
    # @!attribute [rw] analytics_configuration
    #   The Amazon Pinpoint analytics configuration for collecting metrics
    #   for this user pool.
    #   @return [Types::AnalyticsConfigurationType]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/UpdateUserPoolClientRequest AWS API Documentation
    #
    class UpdateUserPoolClientRequest < Struct.new(
      :user_pool_id,
      :client_id,
      :client_name,
      :refresh_token_validity,
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
      :analytics_configuration)
      include Aws::Structure
    end

    # Represents the response from the server to the request to update the
    # user pool client.
    #
    # @!attribute [rw] user_pool_client
    #   The user pool client value from the response from the server when an
    #   update user pool client request is made.
    #   @return [Types::UserPoolClientType]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/UpdateUserPoolClientResponse AWS API Documentation
    #
    class UpdateUserPoolClientResponse < Struct.new(
      :user_pool_client)
      include Aws::Structure
    end

    # Represents the request to update the user pool.
    #
    # @note When making an API call, you may pass UpdateUserPoolRequest
    #   data as a hash:
    #
    #       {
    #         user_pool_id: "UserPoolIdType", # required
    #         policies: {
    #           password_policy: {
    #             minimum_length: 1,
    #             require_uppercase: false,
    #             require_lowercase: false,
    #             require_numbers: false,
    #             require_symbols: false,
    #           },
    #         },
    #         lambda_config: {
    #           pre_sign_up: "ArnType",
    #           custom_message: "ArnType",
    #           post_confirmation: "ArnType",
    #           pre_authentication: "ArnType",
    #           post_authentication: "ArnType",
    #           define_auth_challenge: "ArnType",
    #           create_auth_challenge: "ArnType",
    #           verify_auth_challenge_response: "ArnType",
    #           pre_token_generation: "ArnType",
    #           user_migration: "ArnType",
    #         },
    #         auto_verified_attributes: ["phone_number"], # accepts phone_number, email
    #         sms_verification_message: "SmsVerificationMessageType",
    #         email_verification_message: "EmailVerificationMessageType",
    #         email_verification_subject: "EmailVerificationSubjectType",
    #         verification_message_template: {
    #           sms_message: "SmsVerificationMessageType",
    #           email_message: "EmailVerificationMessageType",
    #           email_subject: "EmailVerificationSubjectType",
    #           email_message_by_link: "EmailVerificationMessageByLinkType",
    #           email_subject_by_link: "EmailVerificationSubjectByLinkType",
    #           default_email_option: "CONFIRM_WITH_LINK", # accepts CONFIRM_WITH_LINK, CONFIRM_WITH_CODE
    #         },
    #         sms_authentication_message: "SmsVerificationMessageType",
    #         mfa_configuration: "OFF", # accepts OFF, ON, OPTIONAL
    #         device_configuration: {
    #           challenge_required_on_new_device: false,
    #           device_only_remembered_on_user_prompt: false,
    #         },
    #         email_configuration: {
    #           source_arn: "ArnType",
    #           reply_to_email_address: "EmailAddressType",
    #         },
    #         sms_configuration: {
    #           sns_caller_arn: "ArnType", # required
    #           external_id: "StringType",
    #         },
    #         user_pool_tags: {
    #           "StringType" => "StringType",
    #         },
    #         admin_create_user_config: {
    #           allow_admin_create_user_only: false,
    #           unused_account_validity_days: 1,
    #           invite_message_template: {
    #             sms_message: "SmsVerificationMessageType",
    #             email_message: "EmailVerificationMessageType",
    #             email_subject: "EmailVerificationSubjectType",
    #           },
    #         },
    #         user_pool_add_ons: {
    #           advanced_security_mode: "OFF", # required, accepts OFF, AUDIT, ENFORCED
    #         },
    #       }
    #
    # @!attribute [rw] user_pool_id
    #   The user pool ID for the user pool you want to update.
    #   @return [String]
    #
    # @!attribute [rw] policies
    #   A container with the policies you wish to update in a user pool.
    #   @return [Types::UserPoolPolicyType]
    #
    # @!attribute [rw] lambda_config
    #   The AWS Lambda configuration information from the request to update
    #   the user pool.
    #   @return [Types::LambdaConfigType]
    #
    # @!attribute [rw] auto_verified_attributes
    #   The attributes that are automatically verified when the Amazon
    #   Cognito service makes a request to update user pools.
    #   @return [Array<String>]
    #
    # @!attribute [rw] sms_verification_message
    #   A container with information about the SMS verification message.
    #   @return [String]
    #
    # @!attribute [rw] email_verification_message
    #   The contents of the email verification message.
    #   @return [String]
    #
    # @!attribute [rw] email_verification_subject
    #   The subject of the email verification message.
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
    # @!attribute [rw] mfa_configuration
    #   Can be one of the following values:
    #
    #   * `OFF` - MFA tokens are not required and cannot be specified during
    #     user registration.
    #
    #   * `ON` - MFA tokens are required for all user registrations. You can
    #     only specify required when you are initially creating a user pool.
    #
    #   * `OPTIONAL` - Users have the option when registering to create an
    #     MFA token.
    #   @return [String]
    #
    # @!attribute [rw] device_configuration
    #   Device configuration.
    #   @return [Types::DeviceConfigurationType]
    #
    # @!attribute [rw] email_configuration
    #   Email configuration.
    #   @return [Types::EmailConfigurationType]
    #
    # @!attribute [rw] sms_configuration
    #   SMS configuration.
    #   @return [Types::SmsConfigurationType]
    #
    # @!attribute [rw] user_pool_tags
    #   The cost allocation tags for the user pool. For more information,
    #   see [Adding Cost Allocation Tags to Your User Pool][1]
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-cost-allocation-tagging.html
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] admin_create_user_config
    #   The configuration for `AdminCreateUser` requests.
    #   @return [Types::AdminCreateUserConfigType]
    #
    # @!attribute [rw] user_pool_add_ons
    #   Used to enable advanced security risk detection. Set the key
    #   `AdvancedSecurityMode` to the value "AUDIT".
    #   @return [Types::UserPoolAddOnsType]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/UpdateUserPoolRequest AWS API Documentation
    #
    class UpdateUserPoolRequest < Struct.new(
      :user_pool_id,
      :policies,
      :lambda_config,
      :auto_verified_attributes,
      :sms_verification_message,
      :email_verification_message,
      :email_verification_subject,
      :verification_message_template,
      :sms_authentication_message,
      :mfa_configuration,
      :device_configuration,
      :email_configuration,
      :sms_configuration,
      :user_pool_tags,
      :admin_create_user_config,
      :user_pool_add_ons)
      include Aws::Structure
    end

    # Represents the response from the server when you make a request to
    # update the user pool.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/UpdateUserPoolResponse AWS API Documentation
    #
    class UpdateUserPoolResponse < Aws::EmptyStructure; end

    # Contextual data such as the user's device fingerprint, IP address, or
    # location used for evaluating the risk of an unexpected event by Amazon
    # Cognito advanced security.
    #
    # @note When making an API call, you may pass UserContextDataType
    #   data as a hash:
    #
    #       {
    #         encoded_data: "StringType",
    #       }
    #
    # @!attribute [rw] encoded_data
    #   Contextual data such as the user's device fingerprint, IP address,
    #   or location used for evaluating the risk of an unexpected event by
    #   Amazon Cognito advanced security.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/UserContextDataType AWS API Documentation
    #
    class UserContextDataType < Struct.new(
      :encoded_data)
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
    #     job cannot be started.
    #   @return [String]
    #
    # @!attribute [rw] cloud_watch_logs_role_arn
    #   The role ARN for the Amazon CloudWatch Logging role for the user
    #   import job. For more information, see "Creating the CloudWatch Logs
    #   IAM Role" in the Amazon Cognito Developer Guide.
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
    #   The number of users that could not be imported.
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
      include Aws::Structure
    end

    # The user pool add-ons type.
    #
    # @note When making an API call, you may pass UserPoolAddOnsType
    #   data as a hash:
    #
    #       {
    #         advanced_security_mode: "OFF", # required, accepts OFF, AUDIT, ENFORCED
    #       }
    #
    # @!attribute [rw] advanced_security_mode
    #   The advanced security mode.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/UserPoolAddOnsType AWS API Documentation
    #
    class UserPoolAddOnsType < Struct.new(
      :advanced_security_mode)
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
    #   The time limit, in days, after which the refresh token is no longer
    #   valid and cannot be used.
    #   @return [Integer]
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
    #   The explicit authentication flows.
    #   @return [Array<String>]
    #
    # @!attribute [rw] supported_identity_providers
    #   A list of provider names for the identity providers that are
    #   supported on this client.
    #   @return [Array<String>]
    #
    # @!attribute [rw] callback_urls
    #   A list of allowed redirect (callback) URLs for the identity
    #   providers.
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
    #   A list of allowed logout URLs for the identity providers.
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
    #   Set to `code` to initiate a code grant flow, which provides an
    #   authorization code as the response. This code can be exchanged for
    #   access tokens with the token endpoint.
    #
    #   Set to `token` to specify that the client should get the access
    #   token (and, optionally, ID token, based on scopes) directly.
    #   @return [Array<String>]
    #
    # @!attribute [rw] allowed_o_auth_scopes
    #   A list of allowed `OAuth` scopes. Currently supported values are
    #   `"phone"`, `"email"`, `"openid"`, and `"Cognito"`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] allowed_o_auth_flows_user_pool_client
    #   Set to TRUE if the client is allowed to follow the OAuth protocol
    #   when interacting with Cognito user pools.
    #   @return [Boolean]
    #
    # @!attribute [rw] analytics_configuration
    #   The Amazon Pinpoint analytics configuration for the user pool
    #   client.
    #   @return [Types::AnalyticsConfigurationType]
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
      :analytics_configuration)
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
    #   The AWS Lambda configuration information in a user pool description.
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
      include Aws::Structure
    end

    # The policy associated with a user pool.
    #
    # @note When making an API call, you may pass UserPoolPolicyType
    #   data as a hash:
    #
    #       {
    #         password_policy: {
    #           minimum_length: 1,
    #           require_uppercase: false,
    #           require_lowercase: false,
    #           require_numbers: false,
    #           require_symbols: false,
    #         },
    #       }
    #
    # @!attribute [rw] password_policy
    #   The password policy.
    #   @return [Types::PasswordPolicyType]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/UserPoolPolicyType AWS API Documentation
    #
    class UserPoolPolicyType < Struct.new(
      :password_policy)
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
    # @!attribute [rw] lambda_config
    #   The AWS Lambda triggers associated with the user pool.
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
    #   Specifies the attributes that are auto-verified in a user pool.
    #   @return [Array<String>]
    #
    # @!attribute [rw] alias_attributes
    #   Specifies the attributes that are aliased in a user pool.
    #   @return [Array<String>]
    #
    # @!attribute [rw] username_attributes
    #   Specifies whether email addresses or phone numbers can be specified
    #   as usernames when a user signs up.
    #   @return [Array<String>]
    #
    # @!attribute [rw] sms_verification_message
    #   The contents of the SMS verification message.
    #   @return [String]
    #
    # @!attribute [rw] email_verification_message
    #   The contents of the email verification message.
    #   @return [String]
    #
    # @!attribute [rw] email_verification_subject
    #   The subject of the email verification message.
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
    # @!attribute [rw] mfa_configuration
    #   Can be one of the following values:
    #
    #   * `OFF` - MFA tokens are not required and cannot be specified during
    #     user registration.
    #
    #   * `ON` - MFA tokens are required for all user registrations. You can
    #     only specify required when you are initially creating a user pool.
    #
    #   * `OPTIONAL` - Users have the option when registering to create an
    #     MFA token.
    #   @return [String]
    #
    # @!attribute [rw] device_configuration
    #   The device configuration.
    #   @return [Types::DeviceConfigurationType]
    #
    # @!attribute [rw] estimated_number_of_users
    #   A number estimating the size of the user pool.
    #   @return [Integer]
    #
    # @!attribute [rw] email_configuration
    #   The email configuration.
    #   @return [Types::EmailConfigurationType]
    #
    # @!attribute [rw] sms_configuration
    #   The SMS configuration.
    #   @return [Types::SmsConfigurationType]
    #
    # @!attribute [rw] user_pool_tags
    #   The cost allocation tags for the user pool. For more information,
    #   see [Adding Cost Allocation Tags to Your User Pool][1]
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-cost-allocation-tagging.html
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] sms_configuration_failure
    #   The reason why the SMS configuration cannot send the messages to
    #   your users.
    #   @return [String]
    #
    # @!attribute [rw] email_configuration_failure
    #   The reason why the email configuration cannot send the messages to
    #   your users.
    #   @return [String]
    #
    # @!attribute [rw] domain
    #   Holds the domain prefix if the user pool has a domain associated
    #   with it.
    #   @return [String]
    #
    # @!attribute [rw] custom_domain
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
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) for the user pool.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/UserPoolType AWS API Documentation
    #
    class UserPoolType < Struct.new(
      :id,
      :name,
      :policies,
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
      :arn)
      include Aws::Structure
    end

    # The user type.
    #
    # @!attribute [rw] username
    #   The user name of the user you wish to describe.
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
    #   The user status. Can be one of the following:
    #
    #   * UNCONFIRMED - User has been created but not confirmed.
    #
    #   * CONFIRMED - User has been confirmed.
    #
    #   * ARCHIVED - User is no longer active.
    #
    #   * COMPROMISED - User is disabled due to a potential security threat.
    #
    #   * UNKNOWN - User status is not known.
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
      include Aws::Structure
    end

    # The template for verification messages.
    #
    # @note When making an API call, you may pass VerificationMessageTemplateType
    #   data as a hash:
    #
    #       {
    #         sms_message: "SmsVerificationMessageType",
    #         email_message: "EmailVerificationMessageType",
    #         email_subject: "EmailVerificationSubjectType",
    #         email_message_by_link: "EmailVerificationMessageByLinkType",
    #         email_subject_by_link: "EmailVerificationSubjectByLinkType",
    #         default_email_option: "CONFIRM_WITH_LINK", # accepts CONFIRM_WITH_LINK, CONFIRM_WITH_CODE
    #       }
    #
    # @!attribute [rw] sms_message
    #   The SMS message template.
    #   @return [String]
    #
    # @!attribute [rw] email_message
    #   The email message template.
    #   @return [String]
    #
    # @!attribute [rw] email_subject
    #   The subject line for the email message template.
    #   @return [String]
    #
    # @!attribute [rw] email_message_by_link
    #   The email message template for sending a confirmation link to the
    #   user.
    #   @return [String]
    #
    # @!attribute [rw] email_subject_by_link
    #   The subject line for the email message template for sending a
    #   confirmation link to the user.
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass VerifySoftwareTokenRequest
    #   data as a hash:
    #
    #       {
    #         access_token: "TokenModelType",
    #         session: "SessionType",
    #         user_code: "SoftwareTokenMFAUserCodeType", # required
    #         friendly_device_name: "StringType",
    #       }
    #
    # @!attribute [rw] access_token
    #   The access token.
    #   @return [String]
    #
    # @!attribute [rw] session
    #   The session which should be passed both ways in challenge-response
    #   calls to the service.
    #   @return [String]
    #
    # @!attribute [rw] user_code
    #   The one time password computed using the secret code returned by
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
      include Aws::Structure
    end

    # @!attribute [rw] status
    #   The status of the verify software token.
    #   @return [String]
    #
    # @!attribute [rw] session
    #   The session which should be passed both ways in challenge-response
    #   calls to the service.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/VerifySoftwareTokenResponse AWS API Documentation
    #
    class VerifySoftwareTokenResponse < Struct.new(
      :status,
      :session)
      include Aws::Structure
    end

    # Represents the request to verify user attributes.
    #
    # @note When making an API call, you may pass VerifyUserAttributeRequest
    #   data as a hash:
    #
    #       {
    #         access_token: "TokenModelType", # required
    #         attribute_name: "AttributeNameType", # required
    #         code: "ConfirmationCodeType", # required
    #       }
    #
    # @!attribute [rw] access_token
    #   Represents the access token of the request to verify user
    #   attributes.
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
