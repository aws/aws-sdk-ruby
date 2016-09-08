# WARNING ABOUT GENERATED CODE
#
# The AWS SDK for Ruby is largely generated from JSON service definitions. Edits
# made against this file will be lost the next time the SDK updates.  To resolve
# an issue with generated code, a change is likely needed in the generator or
# in one of the service JSON definitions.
#
# * https://github.com/aws/aws-sdk-ruby/tree/master/gems/aws-sdk-code-generator
# * https://github.com/aws/aws-sdk-ruby/tree/master/apis
#
# Open a GitHub issue if you have questions before making changes.  Pull
# requests against this file will be automatically closed.
#
# WARNING ABOUT GENERATED CODE
module Aws
  module CognitoIdentityProvider
    module Types

      # Represents the request to add custom attributes.
      # @note When making an API call, pass AddCustomAttributesRequest
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
      class AddCustomAttributesRequest < Aws::Structure.new(
        :user_pool_id,
        :custom_attributes)

        # @!attribute [rw] user_pool_id
        #   The user pool ID for the user pool where you want to add custom
        #   attributes.
        #   @return [String]

        # @!attribute [rw] custom_attributes
        #   An array of custom attributes, such as Mutable and Name.
        #   @return [Array<Types::SchemaAttributeType>]

      end

      # Represents the response from the server for the request to add custom
      # attributes.
      class AddCustomAttributesResponse < Aws::EmptyStructure; end

      # Represents the request to confirm user registration.
      # @note When making an API call, pass AdminConfirmSignUpRequest
      #   data as a hash:
      #
      #       {
      #         user_pool_id: "UserPoolIdType", # required
      #         username: "UsernameType", # required
      #       }
      class AdminConfirmSignUpRequest < Aws::Structure.new(
        :user_pool_id,
        :username)

        # @!attribute [rw] user_pool_id
        #   The user pool ID for which you want to confirm user registration.
        #   @return [String]

        # @!attribute [rw] username
        #   The user name for which you want to confirm user registration.
        #   @return [String]

      end

      # Represents the response from the server for the request to confirm
      # registration.
      class AdminConfirmSignUpResponse < Aws::EmptyStructure; end

      # Represents the request to delete user attributes as an administrator.
      # @note When making an API call, pass AdminDeleteUserAttributesRequest
      #   data as a hash:
      #
      #       {
      #         user_pool_id: "UserPoolIdType", # required
      #         username: "UsernameType", # required
      #         user_attribute_names: ["AttributeNameType"], # required
      #       }
      class AdminDeleteUserAttributesRequest < Aws::Structure.new(
        :user_pool_id,
        :username,
        :user_attribute_names)

        # @!attribute [rw] user_pool_id
        #   The user pool ID for the user pool where you want to delete user
        #   attributes.
        #   @return [String]

        # @!attribute [rw] username
        #   The user name of the user from which you would like to delete
        #   attributes.
        #   @return [String]

        # @!attribute [rw] user_attribute_names
        #   An array of strings representing the user attribute names you wish
        #   to delete.
        #   @return [Array<String>]

      end

      # Represents the response received from the server for a request to
      # delete user attributes.
      class AdminDeleteUserAttributesResponse < Aws::EmptyStructure; end

      # Represents the request to delete a user as an administrator.
      # @note When making an API call, pass AdminDeleteUserRequest
      #   data as a hash:
      #
      #       {
      #         user_pool_id: "UserPoolIdType", # required
      #         username: "UsernameType", # required
      #       }
      class AdminDeleteUserRequest < Aws::Structure.new(
        :user_pool_id,
        :username)

        # @!attribute [rw] user_pool_id
        #   The user pool ID for the user pool where you want to delete the
        #   user.
        #   @return [String]

        # @!attribute [rw] username
        #   The user name of the user you wish to delete.
        #   @return [String]

      end

      # Represents the request to disable any user as an administrator.
      # @note When making an API call, pass AdminDisableUserRequest
      #   data as a hash:
      #
      #       {
      #         user_pool_id: "UserPoolIdType", # required
      #         username: "UsernameType", # required
      #       }
      class AdminDisableUserRequest < Aws::Structure.new(
        :user_pool_id,
        :username)

        # @!attribute [rw] user_pool_id
        #   The user pool ID for the user pool where you want to disable the
        #   user.
        #   @return [String]

        # @!attribute [rw] username
        #   The user name of the user you wish to disable.
        #   @return [String]

      end

      # Represents the response received from the server to disable the user
      # as an administrator.
      class AdminDisableUserResponse < Aws::EmptyStructure; end

      # Represents the request that enables the user as an administrator.
      # @note When making an API call, pass AdminEnableUserRequest
      #   data as a hash:
      #
      #       {
      #         user_pool_id: "UserPoolIdType", # required
      #         username: "UsernameType", # required
      #       }
      class AdminEnableUserRequest < Aws::Structure.new(
        :user_pool_id,
        :username)

        # @!attribute [rw] user_pool_id
        #   The user pool ID for the user pool where you want to enable the
        #   user.
        #   @return [String]

        # @!attribute [rw] username
        #   The user name of the user you wish to ebable.
        #   @return [String]

      end

      # Represents the response from the server for the request to enable a
      # user as an administrator.
      class AdminEnableUserResponse < Aws::EmptyStructure; end

      # Sends the forgot device request, as an administrator.
      # @note When making an API call, pass AdminForgetDeviceRequest
      #   data as a hash:
      #
      #       {
      #         user_pool_id: "UserPoolIdType", # required
      #         username: "UsernameType", # required
      #         device_key: "DeviceKeyType", # required
      #       }
      class AdminForgetDeviceRequest < Aws::Structure.new(
        :user_pool_id,
        :username,
        :device_key)

        # @!attribute [rw] user_pool_id
        #   The user pool ID.
        #   @return [String]

        # @!attribute [rw] username
        #   The user name.
        #   @return [String]

        # @!attribute [rw] device_key
        #   The device key.
        #   @return [String]

      end

      # Represents the request to get the device, as an administrator.
      # @note When making an API call, pass AdminGetDeviceRequest
      #   data as a hash:
      #
      #       {
      #         device_key: "DeviceKeyType", # required
      #         user_pool_id: "UserPoolIdType", # required
      #         username: "UsernameType", # required
      #       }
      class AdminGetDeviceRequest < Aws::Structure.new(
        :device_key,
        :user_pool_id,
        :username)

        # @!attribute [rw] device_key
        #   The device key.
        #   @return [String]

        # @!attribute [rw] user_pool_id
        #   The user pool ID.
        #   @return [String]

        # @!attribute [rw] username
        #   The user name.
        #   @return [String]

      end

      # Gets the device response, as an administrator.
      class AdminGetDeviceResponse < Aws::Structure.new(
        :device)

        # @!attribute [rw] device
        #   The device.
        #   @return [Types::DeviceType]

      end

      # Represents the request to get the specified user as an administrator.
      # @note When making an API call, pass AdminGetUserRequest
      #   data as a hash:
      #
      #       {
      #         user_pool_id: "UserPoolIdType", # required
      #         username: "UsernameType", # required
      #       }
      class AdminGetUserRequest < Aws::Structure.new(
        :user_pool_id,
        :username)

        # @!attribute [rw] user_pool_id
        #   The user pool ID for the user pool where you want to get information
        #   about the user.
        #   @return [String]

        # @!attribute [rw] username
        #   The user name of the user you wish to retrieve.
        #   @return [String]

      end

      # Represents the response from the server from the request to get the
      # specified user as an administrator.
      class AdminGetUserResponse < Aws::Structure.new(
        :username,
        :user_attributes,
        :user_create_date,
        :user_last_modified_date,
        :enabled,
        :user_status,
        :mfa_options)

        # @!attribute [rw] username
        #   The user name of the user about whom you are receiving information.
        #   @return [String]

        # @!attribute [rw] user_attributes
        #   An array of name-value pairs representing user attributes.
        #   @return [Array<Types::AttributeType>]

        # @!attribute [rw] user_create_date
        #   The date the user was created.
        #   @return [Time]

        # @!attribute [rw] user_last_modified_date
        #   The date the user was last modified.
        #   @return [Time]

        # @!attribute [rw] enabled
        #   Indicates that the status is enabled.
        #   @return [Boolean]

        # @!attribute [rw] user_status
        #   The user status. Can be one of the following:
        #
        #   * UNCONFIRMED - User has been created but not confirmed.
        #   * CONFIRMED - User has been confirmed.
        #   * ARCHIVED - User is no longer active.
        #   * COMPROMISED - User is disabled due to a potential security threat.
        #   * UNKNOWN - User status is not known.
        #   @return [String]

        # @!attribute [rw] mfa_options
        #   Specifies the options for MFA (e.g., email or phone number).
        #   @return [Array<Types::MFAOptionType>]

      end

      # Initiates the authorization request, as an administrator.
      # @note When making an API call, pass AdminInitiateAuthRequest
      #   data as a hash:
      #
      #       {
      #         user_pool_id: "UserPoolIdType", # required
      #         client_id: "ClientIdType", # required
      #         auth_flow: "USER_SRP_AUTH", # required, accepts USER_SRP_AUTH, REFRESH_TOKEN_AUTH, REFRESH_TOKEN, CUSTOM_AUTH, ADMIN_NO_SRP_AUTH
      #         auth_parameters: {
      #           "StringType" => "StringType",
      #         },
      #         client_metadata: {
      #           "StringType" => "StringType",
      #         },
      #       }
      class AdminInitiateAuthRequest < Aws::Structure.new(
        :user_pool_id,
        :client_id,
        :auth_flow,
        :auth_parameters,
        :client_metadata)

        # @!attribute [rw] user_pool_id
        #   The ID of the Amazon Cognito user pool.
        #   @return [String]

        # @!attribute [rw] client_id
        #   The client app ID.
        #   @return [String]

        # @!attribute [rw] auth_flow
        #   The authentication flow.
        #   @return [String]

        # @!attribute [rw] auth_parameters
        #   The authentication parameters.
        #   @return [Hash<String,String>]

        # @!attribute [rw] client_metadata
        #   The client app metadata.
        #   @return [Hash<String,String>]

      end

      # Initiates the authentication response, as an administrator.
      class AdminInitiateAuthResponse < Aws::Structure.new(
        :challenge_name,
        :session,
        :challenge_parameters,
        :authentication_result)

        # @!attribute [rw] challenge_name
        #   The name of the challenge.
        #   @return [String]

        # @!attribute [rw] session
        #   The session.
        #   @return [String]

        # @!attribute [rw] challenge_parameters
        #   The challenge parameters.
        #   @return [Hash<String,String>]

        # @!attribute [rw] authentication_result
        #   The result type of the authentication result.
        #   @return [Types::AuthenticationResultType]

      end

      # Represents the request to list devices, as an administrator.
      # @note When making an API call, pass AdminListDevicesRequest
      #   data as a hash:
      #
      #       {
      #         user_pool_id: "UserPoolIdType", # required
      #         username: "UsernameType", # required
      #         limit: 1,
      #         pagination_token: "SearchPaginationTokenType",
      #       }
      class AdminListDevicesRequest < Aws::Structure.new(
        :user_pool_id,
        :username,
        :limit,
        :pagination_token)

        # @!attribute [rw] user_pool_id
        #   The user pool ID.
        #   @return [String]

        # @!attribute [rw] username
        #   The user name.
        #   @return [String]

        # @!attribute [rw] limit
        #   The limit of the devices request.
        #   @return [Integer]

        # @!attribute [rw] pagination_token
        #   The pagination token.
        #   @return [String]

      end

      # Lists the device\'s response, as an administrator.
      class AdminListDevicesResponse < Aws::Structure.new(
        :devices,
        :pagination_token)

        # @!attribute [rw] devices
        #   The devices in the list of devices response.
        #   @return [Array<Types::DeviceType>]

        # @!attribute [rw] pagination_token
        #   The pagination token.
        #   @return [String]

      end

      # Represents the request to reset a user\'s password as an
      # administrator.
      # @note When making an API call, pass AdminResetUserPasswordRequest
      #   data as a hash:
      #
      #       {
      #         user_pool_id: "UserPoolIdType", # required
      #         username: "UsernameType", # required
      #       }
      class AdminResetUserPasswordRequest < Aws::Structure.new(
        :user_pool_id,
        :username)

        # @!attribute [rw] user_pool_id
        #   The user pool ID for the user pool where you want to reset the
        #   user\'s password.
        #   @return [String]

        # @!attribute [rw] username
        #   The user name of the user whose password you wish to reset.
        #   @return [String]

      end

      # Represents the response from the server to reset a user password as an
      # administrator.
      class AdminResetUserPasswordResponse < Aws::EmptyStructure; end

      # The request to respond to the authentication challenge, as an
      # administrator.
      # @note When making an API call, pass AdminRespondToAuthChallengeRequest
      #   data as a hash:
      #
      #       {
      #         user_pool_id: "UserPoolIdType", # required
      #         client_id: "ClientIdType", # required
      #         challenge_name: "SMS_MFA", # required, accepts SMS_MFA, PASSWORD_VERIFIER, CUSTOM_CHALLENGE, DEVICE_SRP_AUTH, DEVICE_PASSWORD_VERIFIER, ADMIN_NO_SRP_AUTH
      #         challenge_responses: {
      #           "StringType" => "StringType",
      #         },
      #         session: "SessionType",
      #       }
      class AdminRespondToAuthChallengeRequest < Aws::Structure.new(
        :user_pool_id,
        :client_id,
        :challenge_name,
        :challenge_responses,
        :session)

        # @!attribute [rw] user_pool_id
        #   The ID of the Amazon Cognito user pool.
        #   @return [String]

        # @!attribute [rw] client_id
        #   The client ID.
        #   @return [String]

        # @!attribute [rw] challenge_name
        #   The name of the challenge.
        #   @return [String]

        # @!attribute [rw] challenge_responses
        #   The challenge response.
        #   @return [Hash<String,String>]

        # @!attribute [rw] session
        #   The session.
        #   @return [String]

      end

      # Responds to the authentication challenge, as an administrator.
      class AdminRespondToAuthChallengeResponse < Aws::Structure.new(
        :challenge_name,
        :session,
        :challenge_parameters,
        :authentication_result)

        # @!attribute [rw] challenge_name
        #   The name of the challenge.
        #   @return [String]

        # @!attribute [rw] session
        #   The session.
        #   @return [String]

        # @!attribute [rw] challenge_parameters
        #   The challenge parameters.
        #   @return [Hash<String,String>]

        # @!attribute [rw] authentication_result
        #   The result type of the authentication result.
        #   @return [Types::AuthenticationResultType]

      end

      # Represents the request to set user settings as an administrator.
      # @note When making an API call, pass AdminSetUserSettingsRequest
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
      class AdminSetUserSettingsRequest < Aws::Structure.new(
        :user_pool_id,
        :username,
        :mfa_options)

        # @!attribute [rw] user_pool_id
        #   The user pool ID for the user pool where you want to set the user\'s
        #   settings, such as MFA options.
        #   @return [String]

        # @!attribute [rw] username
        #   The user name of the user for whom you wish to set user settings.
        #   @return [String]

        # @!attribute [rw] mfa_options
        #   Specifies the options for MFA (e.g., email or phone number).
        #   @return [Array<Types::MFAOptionType>]

      end

      # Represents the response from the server to set user settings as an
      # administrator.
      class AdminSetUserSettingsResponse < Aws::EmptyStructure; end

      # The request to update the device status, as an administrator.
      # @note When making an API call, pass AdminUpdateDeviceStatusRequest
      #   data as a hash:
      #
      #       {
      #         user_pool_id: "UserPoolIdType", # required
      #         username: "UsernameType", # required
      #         device_key: "DeviceKeyType", # required
      #         device_remembered_status: "remembered", # accepts remembered, not_remembered
      #       }
      class AdminUpdateDeviceStatusRequest < Aws::Structure.new(
        :user_pool_id,
        :username,
        :device_key,
        :device_remembered_status)

        # @!attribute [rw] user_pool_id
        #   The user pool ID>
        #   @return [String]

        # @!attribute [rw] username
        #   The user name.
        #   @return [String]

        # @!attribute [rw] device_key
        #   The device key.
        #   @return [String]

        # @!attribute [rw] device_remembered_status
        #   The status indicating whether a device has been remembered or not.
        #   @return [String]

      end

      # The status response from the request to update the device, as an
      # administrator.
      class AdminUpdateDeviceStatusResponse < Aws::EmptyStructure; end

      # Represents the request to update the user\'s attributes as an
      # administrator.
      # @note When making an API call, pass AdminUpdateUserAttributesRequest
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
      class AdminUpdateUserAttributesRequest < Aws::Structure.new(
        :user_pool_id,
        :username,
        :user_attributes)

        # @!attribute [rw] user_pool_id
        #   The user pool ID for the user pool where you want to update user
        #   attributes.
        #   @return [String]

        # @!attribute [rw] username
        #   The user name of the user for whom you want to update user
        #   attributes.
        #   @return [String]

        # @!attribute [rw] user_attributes
        #   An array of name-value pairs representing user attributes.
        #   @return [Array<Types::AttributeType>]

      end

      # Represents the response from the server for the request to update user
      # attributes as an administrator.
      class AdminUpdateUserAttributesResponse < Aws::EmptyStructure; end

      # The request to sign out of all devices, as an administrator.
      # @note When making an API call, pass AdminUserGlobalSignOutRequest
      #   data as a hash:
      #
      #       {
      #         user_pool_id: "UserPoolIdType", # required
      #         username: "UsernameType", # required
      #       }
      class AdminUserGlobalSignOutRequest < Aws::Structure.new(
        :user_pool_id,
        :username)

        # @!attribute [rw] user_pool_id
        #   The user pool ID.
        #   @return [String]

        # @!attribute [rw] username
        #   The user name.
        #   @return [String]

      end

      # The global sign-out response, as an administrator.
      class AdminUserGlobalSignOutResponse < Aws::EmptyStructure; end

      # Specifies whether the attribute is standard or custom.
      # @note When making an API call, pass AttributeType
      #   data as a hash:
      #
      #       {
      #         name: "AttributeNameType", # required
      #         value: "AttributeValueType",
      #       }
      class AttributeType < Aws::Structure.new(
        :name,
        :value)

        # @!attribute [rw] name
        #   The name of the attribute.
        #   @return [String]

        # @!attribute [rw] value
        #   The value of the attribute.
        #   @return [String]

      end

      # The result type of the authentication result.
      class AuthenticationResultType < Aws::Structure.new(
        :access_token,
        :expires_in,
        :token_type,
        :refresh_token,
        :id_token,
        :new_device_metadata)

        # @!attribute [rw] access_token
        #   The access token of the authentication result.
        #   @return [String]

        # @!attribute [rw] expires_in
        #   The expiration period of the authentication result.
        #   @return [Integer]

        # @!attribute [rw] token_type
        #   The token type of the authentication result.
        #   @return [String]

        # @!attribute [rw] refresh_token
        #   The refresh token of the authentication result.
        #   @return [String]

        # @!attribute [rw] id_token
        #   The ID token of the authentication result.
        #   @return [String]

        # @!attribute [rw] new_device_metadata
        #   The new device metadata from an authentication result.
        #   @return [Types::NewDeviceMetadataType]

      end

      # Represents the request to change a user password.
      # @note When making an API call, pass ChangePasswordRequest
      #   data as a hash:
      #
      #       {
      #         previous_password: "PasswordType", # required
      #         proposed_password: "PasswordType", # required
      #         access_token: "TokenModelType",
      #       }
      class ChangePasswordRequest < Aws::Structure.new(
        :previous_password,
        :proposed_password,
        :access_token)

        # @!attribute [rw] previous_password
        #   The old password in the change password request.
        #   @return [String]

        # @!attribute [rw] proposed_password
        #   The new password in the change password request.
        #   @return [String]

        # @!attribute [rw] access_token
        #   The access token in the change password request.
        #   @return [String]

      end

      # The response from the server to the change password request.
      class ChangePasswordResponse < Aws::EmptyStructure; end

      # The type of code delivery details being returned from the server.
      class CodeDeliveryDetailsType < Aws::Structure.new(
        :destination,
        :delivery_medium,
        :attribute_name)

        # @!attribute [rw] destination
        #   The destination for the code delivery details.
        #   @return [String]

        # @!attribute [rw] delivery_medium
        #   The delivery medium (email message or phone number).
        #   @return [String]

        # @!attribute [rw] attribute_name
        #   The name of the attribute in the code delivery details type.
        #   @return [String]

      end

      # Confirms the device request.
      # @note When making an API call, pass ConfirmDeviceRequest
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
      class ConfirmDeviceRequest < Aws::Structure.new(
        :access_token,
        :device_key,
        :device_secret_verifier_config,
        :device_name)

        # @!attribute [rw] access_token
        #   The access token.
        #   @return [String]

        # @!attribute [rw] device_key
        #   The device key.
        #   @return [String]

        # @!attribute [rw] device_secret_verifier_config
        #   The configuration of the device secret verifier.
        #   @return [Types::DeviceSecretVerifierConfigType]

        # @!attribute [rw] device_name
        #   The device name.
        #   @return [String]

      end

      # Confirms the device response.
      class ConfirmDeviceResponse < Aws::Structure.new(
        :user_confirmation_necessary)

        # @!attribute [rw] user_confirmation_necessary
        #   Indicates whether the user confirmation is necessary to confirm the
        #   device response.
        #   @return [Boolean]

      end

      # The request representing the confirmation for a password reset.
      # @note When making an API call, pass ConfirmForgotPasswordRequest
      #   data as a hash:
      #
      #       {
      #         client_id: "ClientIdType", # required
      #         secret_hash: "SecretHashType",
      #         username: "UsernameType", # required
      #         confirmation_code: "ConfirmationCodeType", # required
      #         password: "PasswordType", # required
      #       }
      class ConfirmForgotPasswordRequest < Aws::Structure.new(
        :client_id,
        :secret_hash,
        :username,
        :confirmation_code,
        :password)

        # @!attribute [rw] client_id
        #   The ID of the client associated with the user pool.
        #   @return [String]

        # @!attribute [rw] secret_hash
        #   A keyed-hash message authentication code (HMAC) calculated using the
        #   secret key of a user pool client and username plus the client ID in
        #   the message.
        #   @return [String]

        # @!attribute [rw] username
        #   The user name of the user for whom you want to enter a code to
        #   retrieve a forgotten password.
        #   @return [String]

        # @!attribute [rw] confirmation_code
        #   The confirmation code sent by a user\'s request to retrieve a
        #   forgotten password.
        #   @return [String]

        # @!attribute [rw] password
        #   The password sent by sent by a user\'s request to retrieve a
        #   forgotten password.
        #   @return [String]

      end

      # The response from the server that results from a user\'s request to
      # retrieve a forgotten password.
      class ConfirmForgotPasswordResponse < Aws::EmptyStructure; end

      # Represents the request to confirm registration of a user.
      # @note When making an API call, pass ConfirmSignUpRequest
      #   data as a hash:
      #
      #       {
      #         client_id: "ClientIdType", # required
      #         secret_hash: "SecretHashType",
      #         username: "UsernameType", # required
      #         confirmation_code: "ConfirmationCodeType", # required
      #         force_alias_creation: false,
      #       }
      class ConfirmSignUpRequest < Aws::Structure.new(
        :client_id,
        :secret_hash,
        :username,
        :confirmation_code,
        :force_alias_creation)

        # @!attribute [rw] client_id
        #   The ID of the client associated with the user pool.
        #   @return [String]

        # @!attribute [rw] secret_hash
        #   A keyed-hash message authentication code (HMAC) calculated using the
        #   secret key of a user pool client and username plus the client ID in
        #   the message.
        #   @return [String]

        # @!attribute [rw] username
        #   The user name of the user whose registration you wish to confirm.
        #   @return [String]

        # @!attribute [rw] confirmation_code
        #   The confirmation code sent by a user\'s request to confirm
        #   registration.
        #   @return [String]

        # @!attribute [rw] force_alias_creation
        #   Boolean to be specified to force user confirmation irrespective of
        #   existing alias. By default set to False. If this parameter is set to
        #   True and the phone number/email used for sign up confirmation
        #   already exists as an alias with a different user, the API call will
        #   migrate the alias from the previous user to the newly created user
        #   being confirmed. If set to False, the API will throw an
        #   **AliasExistsException** error.
        #   @return [Boolean]

      end

      # Represents the response from the server for the registration
      # confirmation.
      class ConfirmSignUpResponse < Aws::EmptyStructure; end

      # Represents the request to create the user import job.
      # @note When making an API call, pass CreateUserImportJobRequest
      #   data as a hash:
      #
      #       {
      #         job_name: "UserImportJobNameType", # required
      #         user_pool_id: "UserPoolIdType", # required
      #         cloud_watch_logs_role_arn: "ArnType", # required
      #       }
      class CreateUserImportJobRequest < Aws::Structure.new(
        :job_name,
        :user_pool_id,
        :cloud_watch_logs_role_arn)

        # @!attribute [rw] job_name
        #   The job name for the user import job.
        #   @return [String]

        # @!attribute [rw] user_pool_id
        #   The user pool ID for the user pool that the users are being imported
        #   into.
        #   @return [String]

        # @!attribute [rw] cloud_watch_logs_role_arn
        #   The role ARN for the Amazon CloudWatch Logging role for the user
        #   import job.
        #   @return [String]

      end

      # Represents the response from the server to the request to create the
      # user import job.
      class CreateUserImportJobResponse < Aws::Structure.new(
        :user_import_job)

        # @!attribute [rw] user_import_job
        #   The job object that represents the user import job.
        #   @return [Types::UserImportJobType]

      end

      # Represents the request to create a user pool client.
      # @note When making an API call, pass CreateUserPoolClientRequest
      #   data as a hash:
      #
      #       {
      #         user_pool_id: "UserPoolIdType", # required
      #         client_name: "ClientNameType", # required
      #         generate_secret: false,
      #         refresh_token_validity: 1,
      #         read_attributes: ["ClientPermissionType"],
      #         write_attributes: ["ClientPermissionType"],
      #         explicit_auth_flows: ["ADMIN_NO_SRP_AUTH"], # accepts ADMIN_NO_SRP_AUTH, CUSTOM_AUTH_FLOW_ONLY
      #       }
      class CreateUserPoolClientRequest < Aws::Structure.new(
        :user_pool_id,
        :client_name,
        :generate_secret,
        :refresh_token_validity,
        :read_attributes,
        :write_attributes,
        :explicit_auth_flows)

        # @!attribute [rw] user_pool_id
        #   The user pool ID for the user pool where you want to create a user
        #   pool client.
        #   @return [String]

        # @!attribute [rw] client_name
        #   The client name for the user pool client you would like to create.
        #   @return [String]

        # @!attribute [rw] generate_secret
        #   Boolean to specify whether you want to generate a secret for the
        #   user pool client being created.
        #   @return [Boolean]

        # @!attribute [rw] refresh_token_validity
        #   Refreshes the token validity.
        #   @return [Integer]

        # @!attribute [rw] read_attributes
        #   The read attributes.
        #   @return [Array<String>]

        # @!attribute [rw] write_attributes
        #   The write attributes.
        #   @return [Array<String>]

        # @!attribute [rw] explicit_auth_flows
        #   The explicit authentication flows.
        #   @return [Array<String>]

      end

      # Represents the response from the server to create a user pool client.
      class CreateUserPoolClientResponse < Aws::Structure.new(
        :user_pool_client)

        # @!attribute [rw] user_pool_client
        #   The user pool client that was just created.
        #   @return [Types::UserPoolClientType]

      end

      # Represents the request to create a user pool.
      # @note When making an API call, pass CreateUserPoolRequest
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
      #         },
      #         auto_verified_attributes: ["phone_number"], # accepts phone_number, email
      #         alias_attributes: ["phone_number"], # accepts phone_number, email, preferred_username
      #         sms_verification_message: "SmsVerificationMessageType",
      #         email_verification_message: "EmailVerificationMessageType",
      #         email_verification_subject: "EmailVerificationSubjectType",
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
      #           sns_caller_arn: "ArnType",
      #           external_id: "StringType",
      #         },
      #       }
      class CreateUserPoolRequest < Aws::Structure.new(
        :pool_name,
        :policies,
        :lambda_config,
        :auto_verified_attributes,
        :alias_attributes,
        :sms_verification_message,
        :email_verification_message,
        :email_verification_subject,
        :sms_authentication_message,
        :mfa_configuration,
        :device_configuration,
        :email_configuration,
        :sms_configuration)

        # @!attribute [rw] pool_name
        #   A string used to name the user pool.
        #   @return [String]

        # @!attribute [rw] policies
        #   The policies associated with the new user pool.
        #   @return [Types::UserPoolPolicyType]

        # @!attribute [rw] lambda_config
        #   The Lambda trigger configuration information for the new user pool.
        #   @return [Types::LambdaConfigType]

        # @!attribute [rw] auto_verified_attributes
        #   The attributes to be auto-verified. Possible values: **email**,
        #   **phone\_number**.
        #   @return [Array<String>]

        # @!attribute [rw] alias_attributes
        #   Attributes supported as an alias for this user pool. Possible
        #   values: **phone\_number**, **email**, or **preferred\_username**.
        #   @return [Array<String>]

        # @!attribute [rw] sms_verification_message
        #   A string representing the SMS verification message.
        #   @return [String]

        # @!attribute [rw] email_verification_message
        #   A string representing the email verification message.
        #   @return [String]

        # @!attribute [rw] email_verification_subject
        #   A string representing the email verification subject.
        #   @return [String]

        # @!attribute [rw] sms_authentication_message
        #   A string representing the SMS authentication message.
        #   @return [String]

        # @!attribute [rw] mfa_configuration
        #   Specifies MFA configuration details.
        #   @return [String]

        # @!attribute [rw] device_configuration
        #   The device configuration.
        #   @return [Types::DeviceConfigurationType]

        # @!attribute [rw] email_configuration
        #   The email configuration.
        #   @return [Types::EmailConfigurationType]

        # @!attribute [rw] sms_configuration
        #   The SMS configuration.
        #   @return [Types::SmsConfigurationType]

      end

      # Represents the response from the server for the request to create a
      # user pool.
      class CreateUserPoolResponse < Aws::Structure.new(
        :user_pool)

        # @!attribute [rw] user_pool
        #   A container for the user pool details.
        #   @return [Types::UserPoolType]

      end

      # Represents the request to delete user attributes.
      # @note When making an API call, pass DeleteUserAttributesRequest
      #   data as a hash:
      #
      #       {
      #         user_attribute_names: ["AttributeNameType"], # required
      #         access_token: "TokenModelType",
      #       }
      class DeleteUserAttributesRequest < Aws::Structure.new(
        :user_attribute_names,
        :access_token)

        # @!attribute [rw] user_attribute_names
        #   An array of strings representing the user attribute names you wish
        #   to delete.
        #   @return [Array<String>]

        # @!attribute [rw] access_token
        #   The access token used in the request to delete user attributes.
        #   @return [String]

      end

      # Represents the response from the server to delete user attributes.
      class DeleteUserAttributesResponse < Aws::EmptyStructure; end

      # Represents the request to delete a user pool client.
      # @note When making an API call, pass DeleteUserPoolClientRequest
      #   data as a hash:
      #
      #       {
      #         user_pool_id: "UserPoolIdType", # required
      #         client_id: "ClientIdType", # required
      #       }
      class DeleteUserPoolClientRequest < Aws::Structure.new(
        :user_pool_id,
        :client_id)

        # @!attribute [rw] user_pool_id
        #   The user pool ID for the user pool where you want to delete the
        #   client.
        #   @return [String]

        # @!attribute [rw] client_id
        #   The ID of the client associated with the user pool.
        #   @return [String]

      end

      # Represents the request to delete a user pool.
      # @note When making an API call, pass DeleteUserPoolRequest
      #   data as a hash:
      #
      #       {
      #         user_pool_id: "UserPoolIdType", # required
      #       }
      class DeleteUserPoolRequest < Aws::Structure.new(
        :user_pool_id)

        # @!attribute [rw] user_pool_id
        #   The user pool ID for the user pool you want to delete.
        #   @return [String]

      end

      # Represents the request to delete a user.
      # @note When making an API call, pass DeleteUserRequest
      #   data as a hash:
      #
      #       {
      #         access_token: "TokenModelType",
      #       }
      class DeleteUserRequest < Aws::Structure.new(
        :access_token)

        # @!attribute [rw] access_token
        #   The access token from a request to delete a user.
        #   @return [String]

      end

      # Represents the request to describe the user import job.
      # @note When making an API call, pass DescribeUserImportJobRequest
      #   data as a hash:
      #
      #       {
      #         user_pool_id: "UserPoolIdType", # required
      #         job_id: "UserImportJobIdType", # required
      #       }
      class DescribeUserImportJobRequest < Aws::Structure.new(
        :user_pool_id,
        :job_id)

        # @!attribute [rw] user_pool_id
        #   The user pool ID for the user pool that the users are being imported
        #   into.
        #   @return [String]

        # @!attribute [rw] job_id
        #   The job ID for the user import job.
        #   @return [String]

      end

      # Represents the response from the server to the request to describe the
      # user import job.
      class DescribeUserImportJobResponse < Aws::Structure.new(
        :user_import_job)

        # @!attribute [rw] user_import_job
        #   The job object that represents the user import job.
        #   @return [Types::UserImportJobType]

      end

      # Represents the request to describe a user pool client.
      # @note When making an API call, pass DescribeUserPoolClientRequest
      #   data as a hash:
      #
      #       {
      #         user_pool_id: "UserPoolIdType", # required
      #         client_id: "ClientIdType", # required
      #       }
      class DescribeUserPoolClientRequest < Aws::Structure.new(
        :user_pool_id,
        :client_id)

        # @!attribute [rw] user_pool_id
        #   The user pool ID for the user pool you want to describe.
        #   @return [String]

        # @!attribute [rw] client_id
        #   The ID of the client associated with the user pool.
        #   @return [String]

      end

      # Represents the response from the server from a request to describe the
      # user pool client.
      class DescribeUserPoolClientResponse < Aws::Structure.new(
        :user_pool_client)

        # @!attribute [rw] user_pool_client
        #   The user pool client from a server response to describe the user
        #   pool client.
        #   @return [Types::UserPoolClientType]

      end

      # Represents the request to describe the user pool.
      # @note When making an API call, pass DescribeUserPoolRequest
      #   data as a hash:
      #
      #       {
      #         user_pool_id: "UserPoolIdType", # required
      #       }
      class DescribeUserPoolRequest < Aws::Structure.new(
        :user_pool_id)

        # @!attribute [rw] user_pool_id
        #   The user pool ID for the user pool you want to describe.
        #   @return [String]

      end

      # Represents the response to describe the user pool.
      class DescribeUserPoolResponse < Aws::Structure.new(
        :user_pool)

        # @!attribute [rw] user_pool
        #   The container of metadata returned by the server to describe the
        #   pool.
        #   @return [Types::UserPoolType]

      end

      # The type of configuration for the user pool\'s device tracking.
      # @note When making an API call, pass DeviceConfigurationType
      #   data as a hash:
      #
      #       {
      #         challenge_required_on_new_device: false,
      #         device_only_remembered_on_user_prompt: false,
      #       }
      class DeviceConfigurationType < Aws::Structure.new(
        :challenge_required_on_new_device,
        :device_only_remembered_on_user_prompt)

        # @!attribute [rw] challenge_required_on_new_device
        #   Indicates whether a challenge is required on a new device. Only
        #   applicable to a new device.
        #   @return [Boolean]

        # @!attribute [rw] device_only_remembered_on_user_prompt
        #   If true, a device is only remembered on user prompt.
        #   @return [Boolean]

      end

      # The device verifier against which it will be authenticated.
      # @note When making an API call, pass DeviceSecretVerifierConfigType
      #   data as a hash:
      #
      #       {
      #         password_verifier: "StringType",
      #         salt: "StringType",
      #       }
      class DeviceSecretVerifierConfigType < Aws::Structure.new(
        :password_verifier,
        :salt)

        # @!attribute [rw] password_verifier
        #   The password verifier.
        #   @return [String]

        # @!attribute [rw] salt
        #   The salt.
        #   @return [String]

      end

      # The device type.
      class DeviceType < Aws::Structure.new(
        :device_key,
        :device_attributes,
        :device_create_date,
        :device_last_modified_date,
        :device_last_authenticated_date)

        # @!attribute [rw] device_key
        #   The device key.
        #   @return [String]

        # @!attribute [rw] device_attributes
        #   The device attributes.
        #   @return [Array<Types::AttributeType>]

        # @!attribute [rw] device_create_date
        #   The creation date of the device.
        #   @return [Time]

        # @!attribute [rw] device_last_modified_date
        #   The last modified date of the device.
        #   @return [Time]

        # @!attribute [rw] device_last_authenticated_date
        #   The date in which the device was last authenticated.
        #   @return [Time]

      end

      # The email configuration type.
      # @note When making an API call, pass EmailConfigurationType
      #   data as a hash:
      #
      #       {
      #         source_arn: "ArnType",
      #         reply_to_email_address: "EmailAddressType",
      #       }
      class EmailConfigurationType < Aws::Structure.new(
        :source_arn,
        :reply_to_email_address)

        # @!attribute [rw] source_arn
        #   The Amazon Resource Name (ARN) of the email source.
        #   @return [String]

        # @!attribute [rw] reply_to_email_address
        #   The REPLY-TO email address.
        #   @return [String]

      end

      # Represents the request to forget the device.
      # @note When making an API call, pass ForgetDeviceRequest
      #   data as a hash:
      #
      #       {
      #         access_token: "TokenModelType",
      #         device_key: "DeviceKeyType", # required
      #       }
      class ForgetDeviceRequest < Aws::Structure.new(
        :access_token,
        :device_key)

        # @!attribute [rw] access_token
        #   The access token for the forgotten device request.
        #   @return [String]

        # @!attribute [rw] device_key
        #   The device key.
        #   @return [String]

      end

      # Represents the request to reset a user\'s password.
      # @note When making an API call, pass ForgotPasswordRequest
      #   data as a hash:
      #
      #       {
      #         client_id: "ClientIdType", # required
      #         secret_hash: "SecretHashType",
      #         username: "UsernameType", # required
      #       }
      class ForgotPasswordRequest < Aws::Structure.new(
        :client_id,
        :secret_hash,
        :username)

        # @!attribute [rw] client_id
        #   The ID of the client associated with the user pool.
        #   @return [String]

        # @!attribute [rw] secret_hash
        #   A keyed-hash message authentication code (HMAC) calculated using the
        #   secret key of a user pool client and username plus the client ID in
        #   the message.
        #   @return [String]

        # @!attribute [rw] username
        #   The user name of the user for whom you want to enter a code to
        #   retrieve a forgotten password.
        #   @return [String]

      end

      # Respresents the response from the server regarding the request to
      # reset a password.
      class ForgotPasswordResponse < Aws::Structure.new(
        :code_delivery_details)

        # @!attribute [rw] code_delivery_details
        #   The type of code delivery details being returned from the server.
        #   @return [Types::CodeDeliveryDetailsType]

      end

      # Represents the request to get the header information for the .csv file
      # for the user import job.
      # @note When making an API call, pass GetCSVHeaderRequest
      #   data as a hash:
      #
      #       {
      #         user_pool_id: "UserPoolIdType", # required
      #       }
      class GetCSVHeaderRequest < Aws::Structure.new(
        :user_pool_id)

        # @!attribute [rw] user_pool_id
        #   The user pool ID for the user pool that the users are to be imported
        #   into.
        #   @return [String]

      end

      # Represents the response from the server to the request to get the
      # header information for the .csv file for the user import job.
      class GetCSVHeaderResponse < Aws::Structure.new(
        :user_pool_id,
        :csv_header)

        # @!attribute [rw] user_pool_id
        #   The user pool ID for the user pool that the users are to be imported
        #   into.
        #   @return [String]

        # @!attribute [rw] csv_header
        #   The header information for the .csv file for the user import job.
        #   @return [Array<String>]

      end

      # Represents the request to get the device.
      # @note When making an API call, pass GetDeviceRequest
      #   data as a hash:
      #
      #       {
      #         device_key: "DeviceKeyType", # required
      #         access_token: "TokenModelType",
      #       }
      class GetDeviceRequest < Aws::Structure.new(
        :device_key,
        :access_token)

        # @!attribute [rw] device_key
        #   The device key.
        #   @return [String]

        # @!attribute [rw] access_token
        #   The access token.
        #   @return [String]

      end

      # Gets the device response.
      class GetDeviceResponse < Aws::Structure.new(
        :device)

        # @!attribute [rw] device
        #   The device.
        #   @return [Types::DeviceType]

      end

      # Represents the request to get user attribute verification.
      # @note When making an API call, pass GetUserAttributeVerificationCodeRequest
      #   data as a hash:
      #
      #       {
      #         access_token: "TokenModelType",
      #         attribute_name: "AttributeNameType", # required
      #       }
      class GetUserAttributeVerificationCodeRequest < Aws::Structure.new(
        :access_token,
        :attribute_name)

        # @!attribute [rw] access_token
        #   The access token returned by the server response to get the user
        #   attribute verification code.
        #   @return [String]

        # @!attribute [rw] attribute_name
        #   The attribute name returned by the server response to get the user
        #   attribute verification code.
        #   @return [String]

      end

      # The verification code response returned by the server response to get
      # the user attribute verification code.
      class GetUserAttributeVerificationCodeResponse < Aws::Structure.new(
        :code_delivery_details)

        # @!attribute [rw] code_delivery_details
        #   The code delivery details returned by the server response to get the
        #   user attribute verification code.
        #   @return [Types::CodeDeliveryDetailsType]

      end

      # Represents the request to get information about the user.
      # @note When making an API call, pass GetUserRequest
      #   data as a hash:
      #
      #       {
      #         access_token: "TokenModelType",
      #       }
      class GetUserRequest < Aws::Structure.new(
        :access_token)

        # @!attribute [rw] access_token
        #   The access token returned by the server response to get information
        #   about the user.
        #   @return [String]

      end

      # Represents the response from the server from the request to get
      # information about the user.
      class GetUserResponse < Aws::Structure.new(
        :username,
        :user_attributes,
        :mfa_options)

        # @!attribute [rw] username
        #   The user name of the user you wish to retrieve from the get user
        #   request.
        #   @return [String]

        # @!attribute [rw] user_attributes
        #   An array of name-value pairs representing user attributes.
        #   @return [Array<Types::AttributeType>]

        # @!attribute [rw] mfa_options
        #   Specifies the options for MFA (e.g., email or phone number).
        #   @return [Array<Types::MFAOptionType>]

      end

      # Represents the request to sign out all devices.
      # @note When making an API call, pass GlobalSignOutRequest
      #   data as a hash:
      #
      #       {
      #         access_token: "TokenModelType",
      #       }
      class GlobalSignOutRequest < Aws::Structure.new(
        :access_token)

        # @!attribute [rw] access_token
        #   The access token.
        #   @return [String]

      end

      # The response to the request to sign out all devices.
      class GlobalSignOutResponse < Aws::EmptyStructure; end

      # Initiates the authentication request.
      # @note When making an API call, pass InitiateAuthRequest
      #   data as a hash:
      #
      #       {
      #         auth_flow: "USER_SRP_AUTH", # required, accepts USER_SRP_AUTH, REFRESH_TOKEN_AUTH, REFRESH_TOKEN, CUSTOM_AUTH, ADMIN_NO_SRP_AUTH
      #         auth_parameters: {
      #           "StringType" => "StringType",
      #         },
      #         client_metadata: {
      #           "StringType" => "StringType",
      #         },
      #         client_id: "ClientIdType", # required
      #       }
      class InitiateAuthRequest < Aws::Structure.new(
        :auth_flow,
        :auth_parameters,
        :client_metadata,
        :client_id)

        # @!attribute [rw] auth_flow
        #   The authentication flow.
        #   @return [String]

        # @!attribute [rw] auth_parameters
        #   The authentication parameters.
        #   @return [Hash<String,String>]

        # @!attribute [rw] client_metadata
        #   The client app\'s metadata.
        #   @return [Hash<String,String>]

        # @!attribute [rw] client_id
        #   The client ID.
        #   @return [String]

      end

      # Initiates the authentication response.
      class InitiateAuthResponse < Aws::Structure.new(
        :challenge_name,
        :session,
        :challenge_parameters,
        :authentication_result)

        # @!attribute [rw] challenge_name
        #   The name of the challenge.
        #   @return [String]

        # @!attribute [rw] session
        #   The session.
        #   @return [String]

        # @!attribute [rw] challenge_parameters
        #   The challenge parameters.
        #   @return [Hash<String,String>]

        # @!attribute [rw] authentication_result
        #   The result type of the authentication result.
        #   @return [Types::AuthenticationResultType]

      end

      # Specifies the type of configuration for AWS Lambda triggers.
      # @note When making an API call, pass LambdaConfigType
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
      #       }
      class LambdaConfigType < Aws::Structure.new(
        :pre_sign_up,
        :custom_message,
        :post_confirmation,
        :pre_authentication,
        :post_authentication,
        :define_auth_challenge,
        :create_auth_challenge,
        :verify_auth_challenge_response)

        # @!attribute [rw] pre_sign_up
        #   A pre-registration AWS Lambda trigger.
        #   @return [String]

        # @!attribute [rw] custom_message
        #   A custom Message AWS Lambda trigger.
        #   @return [String]

        # @!attribute [rw] post_confirmation
        #   A post-confirmation AWS Lambda trigger.
        #   @return [String]

        # @!attribute [rw] pre_authentication
        #   A pre-authentication AWS Lambda trigger.
        #   @return [String]

        # @!attribute [rw] post_authentication
        #   A post-authentication AWS Lambda trigger.
        #   @return [String]

        # @!attribute [rw] define_auth_challenge
        #   Defines the authentication challenge.
        #   @return [String]

        # @!attribute [rw] create_auth_challenge
        #   Creates an authentication challenge.
        #   @return [String]

        # @!attribute [rw] verify_auth_challenge_response
        #   Verifies the authentication challenge response.
        #   @return [String]

      end

      # Represents the request to list the devices.
      # @note When making an API call, pass ListDevicesRequest
      #   data as a hash:
      #
      #       {
      #         access_token: "TokenModelType", # required
      #         limit: 1,
      #         pagination_token: "SearchPaginationTokenType",
      #       }
      class ListDevicesRequest < Aws::Structure.new(
        :access_token,
        :limit,
        :pagination_token)

        # @!attribute [rw] access_token
        #   The access tokens for the request to list devices.
        #   @return [String]

        # @!attribute [rw] limit
        #   The limit of the device request.
        #   @return [Integer]

        # @!attribute [rw] pagination_token
        #   The pagination token for the list request.
        #   @return [String]

      end

      # Represents the response to list devices.
      class ListDevicesResponse < Aws::Structure.new(
        :devices,
        :pagination_token)

        # @!attribute [rw] devices
        #   The devices returned in the list devices response.
        #   @return [Array<Types::DeviceType>]

        # @!attribute [rw] pagination_token
        #   The pagination token for the list device response.
        #   @return [String]

      end

      # Represents the request to list the user import jobs.
      # @note When making an API call, pass ListUserImportJobsRequest
      #   data as a hash:
      #
      #       {
      #         user_pool_id: "UserPoolIdType", # required
      #         max_results: 1, # required
      #         pagination_token: "PaginationKeyType",
      #       }
      class ListUserImportJobsRequest < Aws::Structure.new(
        :user_pool_id,
        :max_results,
        :pagination_token)

        # @!attribute [rw] user_pool_id
        #   The user pool ID for the user pool that the users are being imported
        #   into.
        #   @return [String]

        # @!attribute [rw] max_results
        #   The maximum number of import jobs you want the request to return.
        #   @return [Integer]

        # @!attribute [rw] pagination_token
        #   An identifier that was returned from the previous call to this
        #   operation, which can be used to return the next set of import jobs
        #   in the list.
        #   @return [String]

      end

      # Represents the response from the server to the request to list the
      # user import jobs.
      class ListUserImportJobsResponse < Aws::Structure.new(
        :user_import_jobs,
        :pagination_token)

        # @!attribute [rw] user_import_jobs
        #   The user import jobs.
        #   @return [Array<Types::UserImportJobType>]

        # @!attribute [rw] pagination_token
        #   An identifier that can be used to return the next set of user import
        #   jobs in the list.
        #   @return [String]

      end

      # Represents the request to list the user pool clients.
      # @note When making an API call, pass ListUserPoolClientsRequest
      #   data as a hash:
      #
      #       {
      #         user_pool_id: "UserPoolIdType", # required
      #         max_results: 1,
      #         next_token: "PaginationKey",
      #       }
      class ListUserPoolClientsRequest < Aws::Structure.new(
        :user_pool_id,
        :max_results,
        :next_token)

        # @!attribute [rw] user_pool_id
        #   The user pool ID for the user pool where you want to list user pool
        #   clients.
        #   @return [String]

        # @!attribute [rw] max_results
        #   The maximum number of results you want the request to return when
        #   listing the user pool clients.
        #   @return [Integer]

        # @!attribute [rw] next_token
        #   An identifier that was returned from the previous call to this
        #   operation, which can be used to return the next set of items in the
        #   list.
        #   @return [String]

      end

      # Represents the response from the server that lists user pool clients.
      class ListUserPoolClientsResponse < Aws::Structure.new(
        :user_pool_clients,
        :next_token)

        # @!attribute [rw] user_pool_clients
        #   The user pool clients in the response that lists user pool clients.
        #   @return [Array<Types::UserPoolClientDescription>]

        # @!attribute [rw] next_token
        #   An identifier that was returned from the previous call to this
        #   operation, which can be used to return the next set of items in the
        #   list.
        #   @return [String]

      end

      # Represents the request to list user pools.
      # @note When making an API call, pass ListUserPoolsRequest
      #   data as a hash:
      #
      #       {
      #         next_token: "PaginationKeyType",
      #         max_results: 1, # required
      #       }
      class ListUserPoolsRequest < Aws::Structure.new(
        :next_token,
        :max_results)

        # @!attribute [rw] next_token
        #   An identifier that was returned from the previous call to this
        #   operation, which can be used to return the next set of items in the
        #   list.
        #   @return [String]

        # @!attribute [rw] max_results
        #   The maximum number of results you want the request to return when
        #   listing the user pools.
        #   @return [Integer]

      end

      # Represents the response to list user pools.
      class ListUserPoolsResponse < Aws::Structure.new(
        :user_pools,
        :next_token)

        # @!attribute [rw] user_pools
        #   The user pools from the response to list users.
        #   @return [Array<Types::UserPoolDescriptionType>]

        # @!attribute [rw] next_token
        #   An identifier that was returned from the previous call to this
        #   operation, which can be used to return the next set of items in the
        #   list.
        #   @return [String]

      end

      # Represents the request to list users.
      # @note When making an API call, pass ListUsersRequest
      #   data as a hash:
      #
      #       {
      #         user_pool_id: "UserPoolIdType", # required
      #         attributes_to_get: ["AttributeNameType"],
      #         limit: 1,
      #         pagination_token: "SearchPaginationTokenType",
      #         filter: "UserFilterType",
      #       }
      class ListUsersRequest < Aws::Structure.new(
        :user_pool_id,
        :attributes_to_get,
        :limit,
        :pagination_token,
        :filter)

        # @!attribute [rw] user_pool_id
        #   The user pool ID for which you want to list users.
        #   @return [String]

        # @!attribute [rw] attributes_to_get
        #   The attributes to get from the request to list users.
        #   @return [Array<String>]

        # @!attribute [rw] limit
        #   The limit of the request to list users.
        #   @return [Integer]

        # @!attribute [rw] pagination_token
        #   An identifier that was returned from the previous call to this
        #   operation, which can be used to return the next set of items in the
        #   list.
        #   @return [String]

        # @!attribute [rw] filter
        #   The filter for the list users request.
        #   @return [String]

      end

      # The response from the request to list users.
      class ListUsersResponse < Aws::Structure.new(
        :users,
        :pagination_token)

        # @!attribute [rw] users
        #   The users returned in the request to list users.
        #   @return [Array<Types::UserType>]

        # @!attribute [rw] pagination_token
        #   An identifier that was returned from the previous call to this
        #   operation, which can be used to return the next set of items in the
        #   list.
        #   @return [String]

      end

      # Specifies the different settings for multi-factor authentication
      # (MFA).
      # @note When making an API call, pass MFAOptionType
      #   data as a hash:
      #
      #       {
      #         delivery_medium: "SMS", # accepts SMS, EMAIL
      #         attribute_name: "AttributeNameType",
      #       }
      class MFAOptionType < Aws::Structure.new(
        :delivery_medium,
        :attribute_name)

        # @!attribute [rw] delivery_medium
        #   The delivery medium (email message or SMS message) to send the MFA
        #   code.
        #   @return [String]

        # @!attribute [rw] attribute_name
        #   The attribute name of the MFA option type.
        #   @return [String]

      end

      # The new device metadata type.
      class NewDeviceMetadataType < Aws::Structure.new(
        :device_key,
        :device_group_key)

        # @!attribute [rw] device_key
        #   The device key.
        #   @return [String]

        # @!attribute [rw] device_group_key
        #   The device group key.
        #   @return [String]

      end

      # The minimum and maximum value of an attribute that is of the number
      # data type.
      # @note When making an API call, pass NumberAttributeConstraintsType
      #   data as a hash:
      #
      #       {
      #         min_value: "StringType",
      #         max_value: "StringType",
      #       }
      class NumberAttributeConstraintsType < Aws::Structure.new(
        :min_value,
        :max_value)

        # @!attribute [rw] min_value
        #   The minimum value of an attribute that is of the number data type.
        #   @return [String]

        # @!attribute [rw] max_value
        #   The maximum value of an attribute that is of the number data type.
        #   @return [String]

      end

      # The password policy type.
      # @note When making an API call, pass PasswordPolicyType
      #   data as a hash:
      #
      #       {
      #         minimum_length: 1,
      #         require_uppercase: false,
      #         require_lowercase: false,
      #         require_numbers: false,
      #         require_symbols: false,
      #       }
      class PasswordPolicyType < Aws::Structure.new(
        :minimum_length,
        :require_uppercase,
        :require_lowercase,
        :require_numbers,
        :require_symbols)

        # @!attribute [rw] minimum_length
        #   The minimum length of the password policy that you have set. Cannot
        #   be less than 6.
        #   @return [Integer]

        # @!attribute [rw] require_uppercase
        #   In the password policy that you have set, refers to whether you have
        #   required users to use at least one uppercase letter in their
        #   password.
        #   @return [Boolean]

        # @!attribute [rw] require_lowercase
        #   In the password policy that you have set, refers to whether you have
        #   required users to use at least one lowercase letter in their
        #   password.
        #   @return [Boolean]

        # @!attribute [rw] require_numbers
        #   In the password policy that you have set, refers to whether you have
        #   required users to use at least one number in their password.
        #   @return [Boolean]

        # @!attribute [rw] require_symbols
        #   In the password policy that you have set, refers to whether you have
        #   required users to use at least one symbol in their password.
        #   @return [Boolean]

      end

      # Represents the request to resend the confirmation code.
      # @note When making an API call, pass ResendConfirmationCodeRequest
      #   data as a hash:
      #
      #       {
      #         client_id: "ClientIdType", # required
      #         secret_hash: "SecretHashType",
      #         username: "UsernameType", # required
      #       }
      class ResendConfirmationCodeRequest < Aws::Structure.new(
        :client_id,
        :secret_hash,
        :username)

        # @!attribute [rw] client_id
        #   The ID of the client associated with the user pool.
        #   @return [String]

        # @!attribute [rw] secret_hash
        #   A keyed-hash message authentication code (HMAC) calculated using the
        #   secret key of a user pool client and username plus the client ID in
        #   the message.
        #   @return [String]

        # @!attribute [rw] username
        #   The user name of the user to whom you wish to resend a confirmation
        #   code.
        #   @return [String]

      end

      # The response from the server when the Amazon Cognito service makes the
      # request to resend a confirmation code.
      class ResendConfirmationCodeResponse < Aws::Structure.new(
        :code_delivery_details)

        # @!attribute [rw] code_delivery_details
        #   The type of code delivery details being returned from the server.
        #   @return [Types::CodeDeliveryDetailsType]

      end

      # The request to respond to an authentication challenge.
      # @note When making an API call, pass RespondToAuthChallengeRequest
      #   data as a hash:
      #
      #       {
      #         client_id: "ClientIdType", # required
      #         challenge_name: "SMS_MFA", # required, accepts SMS_MFA, PASSWORD_VERIFIER, CUSTOM_CHALLENGE, DEVICE_SRP_AUTH, DEVICE_PASSWORD_VERIFIER, ADMIN_NO_SRP_AUTH
      #         session: "SessionType",
      #         challenge_responses: {
      #           "StringType" => "StringType",
      #         },
      #       }
      class RespondToAuthChallengeRequest < Aws::Structure.new(
        :client_id,
        :challenge_name,
        :session,
        :challenge_responses)

        # @!attribute [rw] client_id
        #   The client ID.
        #   @return [String]

        # @!attribute [rw] challenge_name
        #   The name of the challenge.
        #   @return [String]

        # @!attribute [rw] session
        #   The session.
        #   @return [String]

        # @!attribute [rw] challenge_responses
        #   The responses to the authentication challenge.
        #   @return [Hash<String,String>]

      end

      # The response to respond to the authentication challenge.
      class RespondToAuthChallengeResponse < Aws::Structure.new(
        :challenge_name,
        :session,
        :challenge_parameters,
        :authentication_result)

        # @!attribute [rw] challenge_name
        #   The challenge name.
        #   @return [String]

        # @!attribute [rw] session
        #   The session.
        #   @return [String]

        # @!attribute [rw] challenge_parameters
        #   The challenge parameters.
        #   @return [Hash<String,String>]

        # @!attribute [rw] authentication_result
        #   The result type of the authentication result.
        #   @return [Types::AuthenticationResultType]

      end

      # Contains information about the schema attribute.
      # @note When making an API call, pass SchemaAttributeType
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
      class SchemaAttributeType < Aws::Structure.new(
        :name,
        :attribute_data_type,
        :developer_only_attribute,
        :mutable,
        :required,
        :number_attribute_constraints,
        :string_attribute_constraints)

        # @!attribute [rw] name
        #   A schema attribute of the name type.
        #   @return [String]

        # @!attribute [rw] attribute_data_type
        #   The attribute data type.
        #   @return [String]

        # @!attribute [rw] developer_only_attribute
        #   Specifies whether the attribute type is developer only.
        #   @return [Boolean]

        # @!attribute [rw] mutable
        #   Specifies whether the attribute can be changed once it has been
        #   created.
        #   @return [Boolean]

        # @!attribute [rw] required
        #   Specifies whether a user pool attribute is required. If the
        #   attribute is required and the user does not provide a value,
        #   registration or sign-in will fail.
        #   @return [Boolean]

        # @!attribute [rw] number_attribute_constraints
        #   Specifies the constraints for an attribute of the number type.
        #   @return [Types::NumberAttributeConstraintsType]

        # @!attribute [rw] string_attribute_constraints
        #   Specifies the constraints for an attribute of the string type.
        #   @return [Types::StringAttributeConstraintsType]

      end

      # Represents the request to set user settings.
      # @note When making an API call, pass SetUserSettingsRequest
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
      class SetUserSettingsRequest < Aws::Structure.new(
        :access_token,
        :mfa_options)

        # @!attribute [rw] access_token
        #   The access token for the set user settings request.
        #   @return [String]

        # @!attribute [rw] mfa_options
        #   Specifies the options for MFA (e.g., email or phone number).
        #   @return [Array<Types::MFAOptionType>]

      end

      # The response from the server for a set user settings request.
      class SetUserSettingsResponse < Aws::EmptyStructure; end

      # Represents the request to register a user.
      # @note When making an API call, pass SignUpRequest
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
      #       }
      class SignUpRequest < Aws::Structure.new(
        :client_id,
        :secret_hash,
        :username,
        :password,
        :user_attributes,
        :validation_data)

        # @!attribute [rw] client_id
        #   The ID of the client associated with the user pool.
        #   @return [String]

        # @!attribute [rw] secret_hash
        #   A keyed-hash message authentication code (HMAC) calculated using the
        #   secret key of a user pool client and username plus the client ID in
        #   the message.
        #   @return [String]

        # @!attribute [rw] username
        #   The user name of the user you wish to register.
        #   @return [String]

        # @!attribute [rw] password
        #   The password of the user you wish to register.
        #   @return [String]

        # @!attribute [rw] user_attributes
        #   An array of name-value pairs representing user attributes.
        #   @return [Array<Types::AttributeType>]

        # @!attribute [rw] validation_data
        #   The validation data in the request to register a user.
        #   @return [Array<Types::AttributeType>]

      end

      # The response from the server for a registration request.
      class SignUpResponse < Aws::Structure.new(
        :user_confirmed,
        :code_delivery_details)

        # @!attribute [rw] user_confirmed
        #   A response from the server indicating that a user registration has
        #   been confirmed.
        #   @return [Boolean]

        # @!attribute [rw] code_delivery_details
        #   The type of code delivery details being returned from the server.
        #   @return [Types::CodeDeliveryDetailsType]

      end

      # The SMS configuratoin type.
      # @note When making an API call, pass SmsConfigurationType
      #   data as a hash:
      #
      #       {
      #         sns_caller_arn: "ArnType",
      #         external_id: "StringType",
      #       }
      class SmsConfigurationType < Aws::Structure.new(
        :sns_caller_arn,
        :external_id)

        # @!attribute [rw] sns_caller_arn
        #   The Amazon Resource Name (ARN) of the Amazon Simple Notification
        #   Service (SNS) caller.
        #   @return [String]

        # @!attribute [rw] external_id
        #   The external ID.
        #   @return [String]

      end

      # Represents the request to start the user import job.
      # @note When making an API call, pass StartUserImportJobRequest
      #   data as a hash:
      #
      #       {
      #         user_pool_id: "UserPoolIdType", # required
      #         job_id: "UserImportJobIdType", # required
      #       }
      class StartUserImportJobRequest < Aws::Structure.new(
        :user_pool_id,
        :job_id)

        # @!attribute [rw] user_pool_id
        #   The user pool ID for the user pool that the users are being imported
        #   into.
        #   @return [String]

        # @!attribute [rw] job_id
        #   The job ID for the user import job.
        #   @return [String]

      end

      # Represents the response from the server to the request to start the
      # user import job.
      class StartUserImportJobResponse < Aws::Structure.new(
        :user_import_job)

        # @!attribute [rw] user_import_job
        #   The job object that represents the user import job.
        #   @return [Types::UserImportJobType]

      end

      # Represents the request to stop the user import job.
      # @note When making an API call, pass StopUserImportJobRequest
      #   data as a hash:
      #
      #       {
      #         user_pool_id: "UserPoolIdType", # required
      #         job_id: "UserImportJobIdType", # required
      #       }
      class StopUserImportJobRequest < Aws::Structure.new(
        :user_pool_id,
        :job_id)

        # @!attribute [rw] user_pool_id
        #   The user pool ID for the user pool that the users are being imported
        #   into.
        #   @return [String]

        # @!attribute [rw] job_id
        #   The job ID for the user import job.
        #   @return [String]

      end

      # Represents the response from the server to the request to stop the
      # user import job.
      class StopUserImportJobResponse < Aws::Structure.new(
        :user_import_job)

        # @!attribute [rw] user_import_job
        #   The job object that represents the user import job.
        #   @return [Types::UserImportJobType]

      end

      # The type of constraints associated with an attribute of the string
      # type.
      # @note When making an API call, pass StringAttributeConstraintsType
      #   data as a hash:
      #
      #       {
      #         min_length: "StringType",
      #         max_length: "StringType",
      #       }
      class StringAttributeConstraintsType < Aws::Structure.new(
        :min_length,
        :max_length)

        # @!attribute [rw] min_length
        #   The minimum length of an attribute value of the string type.
        #   @return [String]

        # @!attribute [rw] max_length
        #   The maximum length of an attribute value of the string type.
        #   @return [String]

      end

      # Represents the request to update the device status.
      # @note When making an API call, pass UpdateDeviceStatusRequest
      #   data as a hash:
      #
      #       {
      #         access_token: "TokenModelType", # required
      #         device_key: "DeviceKeyType", # required
      #         device_remembered_status: "remembered", # accepts remembered, not_remembered
      #       }
      class UpdateDeviceStatusRequest < Aws::Structure.new(
        :access_token,
        :device_key,
        :device_remembered_status)

        # @!attribute [rw] access_token
        #   The access token.
        #   @return [String]

        # @!attribute [rw] device_key
        #   The device key.
        #   @return [String]

        # @!attribute [rw] device_remembered_status
        #   The status of whether a device is remembered.
        #   @return [String]

      end

      # The response to the request to update the device status.
      class UpdateDeviceStatusResponse < Aws::EmptyStructure; end

      # Represents the request to update user attributes.
      # @note When making an API call, pass UpdateUserAttributesRequest
      #   data as a hash:
      #
      #       {
      #         user_attributes: [ # required
      #           {
      #             name: "AttributeNameType", # required
      #             value: "AttributeValueType",
      #           },
      #         ],
      #         access_token: "TokenModelType",
      #       }
      class UpdateUserAttributesRequest < Aws::Structure.new(
        :user_attributes,
        :access_token)

        # @!attribute [rw] user_attributes
        #   An array of name-value pairs representing user attributes.
        #   @return [Array<Types::AttributeType>]

        # @!attribute [rw] access_token
        #   The access token for the request to update user attributes.
        #   @return [String]

      end

      # Represents the response from the server for the request to update user
      # attributes.
      class UpdateUserAttributesResponse < Aws::Structure.new(
        :code_delivery_details_list)

        # @!attribute [rw] code_delivery_details_list
        #   The code delivery details list from the server for the request to
        #   update user attributes.
        #   @return [Array<Types::CodeDeliveryDetailsType>]

      end

      # Represents the request to update the user pool client.
      # @note When making an API call, pass UpdateUserPoolClientRequest
      #   data as a hash:
      #
      #       {
      #         user_pool_id: "UserPoolIdType", # required
      #         client_id: "ClientIdType", # required
      #         client_name: "ClientNameType",
      #         refresh_token_validity: 1,
      #         read_attributes: ["ClientPermissionType"],
      #         write_attributes: ["ClientPermissionType"],
      #         explicit_auth_flows: ["ADMIN_NO_SRP_AUTH"], # accepts ADMIN_NO_SRP_AUTH, CUSTOM_AUTH_FLOW_ONLY
      #       }
      class UpdateUserPoolClientRequest < Aws::Structure.new(
        :user_pool_id,
        :client_id,
        :client_name,
        :refresh_token_validity,
        :read_attributes,
        :write_attributes,
        :explicit_auth_flows)

        # @!attribute [rw] user_pool_id
        #   The user pool ID for the user pool where you want to update the user
        #   pool client.
        #   @return [String]

        # @!attribute [rw] client_id
        #   The ID of the client associated with the user pool.
        #   @return [String]

        # @!attribute [rw] client_name
        #   The client name from the update user pool client request.
        #   @return [String]

        # @!attribute [rw] refresh_token_validity
        #   The validity of the refresh token.
        #   @return [Integer]

        # @!attribute [rw] read_attributes
        #   The read-only attributes of the user pool.
        #   @return [Array<String>]

        # @!attribute [rw] write_attributes
        #   The writeable attributes of the user pool.
        #   @return [Array<String>]

        # @!attribute [rw] explicit_auth_flows
        #   Explicit authentication flows.
        #   @return [Array<String>]

      end

      # Represents the response from the server to the request to update the
      # user pool client.
      class UpdateUserPoolClientResponse < Aws::Structure.new(
        :user_pool_client)

        # @!attribute [rw] user_pool_client
        #   The user pool client value from the response from the server when an
        #   update user pool client request is made.
        #   @return [Types::UserPoolClientType]

      end

      # Represents the request to update the user pool.
      # @note When making an API call, pass UpdateUserPoolRequest
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
      #         },
      #         auto_verified_attributes: ["phone_number"], # accepts phone_number, email
      #         sms_verification_message: "SmsVerificationMessageType",
      #         email_verification_message: "EmailVerificationMessageType",
      #         email_verification_subject: "EmailVerificationSubjectType",
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
      #           sns_caller_arn: "ArnType",
      #           external_id: "StringType",
      #         },
      #       }
      class UpdateUserPoolRequest < Aws::Structure.new(
        :user_pool_id,
        :policies,
        :lambda_config,
        :auto_verified_attributes,
        :sms_verification_message,
        :email_verification_message,
        :email_verification_subject,
        :sms_authentication_message,
        :mfa_configuration,
        :device_configuration,
        :email_configuration,
        :sms_configuration)

        # @!attribute [rw] user_pool_id
        #   The user pool ID for the user pool you want to update.
        #   @return [String]

        # @!attribute [rw] policies
        #   A container with the policies you wish to update in a user pool.
        #   @return [Types::UserPoolPolicyType]

        # @!attribute [rw] lambda_config
        #   The AWS Lambda configuration information from the request to update
        #   the user pool.
        #   @return [Types::LambdaConfigType]

        # @!attribute [rw] auto_verified_attributes
        #   The attributes that are automatically verified when the Amazon
        #   Cognito service makes a request to update user pools.
        #   @return [Array<String>]

        # @!attribute [rw] sms_verification_message
        #   A container with information about the SMS verification message.
        #   @return [String]

        # @!attribute [rw] email_verification_message
        #   The contents of the email verification message.
        #   @return [String]

        # @!attribute [rw] email_verification_subject
        #   The subject of the email verfication message
        #   @return [String]

        # @!attribute [rw] sms_authentication_message
        #   The contents of the SMS authentication message.
        #   @return [String]

        # @!attribute [rw] mfa_configuration
        #   Can be one of the following values:
        #
        #   * `OFF` - MFA tokens are not required and cannot be specified during
        #     user registration.
        #   * `ON` - MFA tokens are required for all user registrations. You can
        #     only specify required when you are initially creating a user pool.
        #   * `OPTIONAL` - Users have the option when registering to create an
        #     MFA token.
        #   @return [String]

        # @!attribute [rw] device_configuration
        #   Device configuration.
        #   @return [Types::DeviceConfigurationType]

        # @!attribute [rw] email_configuration
        #   Email configuration.
        #   @return [Types::EmailConfigurationType]

        # @!attribute [rw] sms_configuration
        #   SMS configuration.
        #   @return [Types::SmsConfigurationType]

      end

      # Represents the response from the server when you make a request to
      # update the user pool.
      class UpdateUserPoolResponse < Aws::EmptyStructure; end

      # The user import job type.
      class UserImportJobType < Aws::Structure.new(
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

        # @!attribute [rw] job_name
        #   The job name for the user import job.
        #   @return [String]

        # @!attribute [rw] job_id
        #   The job ID for the user import job.
        #   @return [String]

        # @!attribute [rw] user_pool_id
        #   The user pool ID for the user pool that the users are being imported
        #   into.
        #   @return [String]

        # @!attribute [rw] pre_signed_url
        #   The pre-signed URL to be used to upload the .csv file.
        #   @return [String]

        # @!attribute [rw] creation_date
        #   The date when the user import job was created.
        #   @return [Time]

        # @!attribute [rw] start_date
        #   The date when the user import job was started.
        #   @return [Time]

        # @!attribute [rw] completion_date
        #   The date when the user imoprt job was completed.
        #   @return [Time]

        # @!attribute [rw] status
        #   The status of the user import job. One of the following:
        #
        #   * Created - The job was created but not started.
        #   * Pending - A transition state. You have started the job, but it has
        #     not begun importing users yet.
        #   * InProgress - The job has started, and users are being imported.
        #   * Stopping - You have stopped the job, but the job has not stopped
        #     importing users yet.
        #   * Stopped - You have stopped the job, and the job has stopped
        #     importing users.
        #   * Succeeded - The job has completed successfully.
        #   * Failed - The job has stopped due to an error.
        #   * Expired - You created a job, but did not start the job within
        #     24-48 hours. All data associated with the job was deleted, and the
        #     job cannot be started.
        #   @return [String]

        # @!attribute [rw] cloud_watch_logs_role_arn
        #   The role ARN for the Amazon CloudWatch Logging role for the user
        #   import job. For more information, see \"Creating the CloudWatch Logs
        #   IAM Role\" in the Amazon Cognito Developer Guide.
        #   @return [String]

        # @!attribute [rw] imported_users
        #   The number of users that were successfully imported.
        #   @return [Integer]

        # @!attribute [rw] skipped_users
        #   The number of users that were skipped.
        #   @return [Integer]

        # @!attribute [rw] failed_users
        #   The number of users that could not be imported.
        #   @return [Integer]

        # @!attribute [rw] completion_message
        #   The message returned when the user import job is completed.
        #   @return [String]

      end

      # The description of the user poool client.
      class UserPoolClientDescription < Aws::Structure.new(
        :client_id,
        :user_pool_id,
        :client_name)

        # @!attribute [rw] client_id
        #   The ID of the client associated with the user pool.
        #   @return [String]

        # @!attribute [rw] user_pool_id
        #   The user pool ID for the user pool where you want to describe the
        #   user pool client.
        #   @return [String]

        # @!attribute [rw] client_name
        #   The client name from the user pool client description.
        #   @return [String]

      end

      # A user pool of the client type.
      class UserPoolClientType < Aws::Structure.new(
        :user_pool_id,
        :client_name,
        :client_id,
        :client_secret,
        :last_modified_date,
        :creation_date,
        :refresh_token_validity,
        :read_attributes,
        :write_attributes,
        :explicit_auth_flows)

        # @!attribute [rw] user_pool_id
        #   The user pool ID for the user pool client.
        #   @return [String]

        # @!attribute [rw] client_name
        #   The client name from the user pool request of the client type.
        #   @return [String]

        # @!attribute [rw] client_id
        #   The ID of the client associated with the user pool.
        #   @return [String]

        # @!attribute [rw] client_secret
        #   The client secret from the user pool request of the client type.
        #   @return [String]

        # @!attribute [rw] last_modified_date
        #   The last modified date from the user pool request of the client
        #   type.
        #   @return [Time]

        # @!attribute [rw] creation_date
        #   The creation date from the user pool request of the client type.
        #   @return [Time]

        # @!attribute [rw] refresh_token_validity
        #   The validity of the refresh token.
        #   @return [Integer]

        # @!attribute [rw] read_attributes
        #   The Read-only attributes.
        #   @return [Array<String>]

        # @!attribute [rw] write_attributes
        #   The writeable attributes.
        #   @return [Array<String>]

        # @!attribute [rw] explicit_auth_flows
        #   The explicit authentication flows.
        #   @return [Array<String>]

      end

      # A user pool description.
      class UserPoolDescriptionType < Aws::Structure.new(
        :id,
        :name,
        :lambda_config,
        :status,
        :last_modified_date,
        :creation_date)

        # @!attribute [rw] id
        #   The ID in a user pool description.
        #   @return [String]

        # @!attribute [rw] name
        #   The name in a user pool description.
        #   @return [String]

        # @!attribute [rw] lambda_config
        #   The AWS Lambda configuration information in a user pool description.
        #   @return [Types::LambdaConfigType]

        # @!attribute [rw] status
        #   The user pool status in a user pool description.
        #   @return [String]

        # @!attribute [rw] last_modified_date
        #   The last modified date in a user pool description.
        #   @return [Time]

        # @!attribute [rw] creation_date
        #   The creation date in a user pool description.
        #   @return [Time]

      end

      # The type of policy in a user pool.
      # @note When making an API call, pass UserPoolPolicyType
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
      class UserPoolPolicyType < Aws::Structure.new(
        :password_policy)

        # @!attribute [rw] password_policy
        #   A container with information about the user pool password policy.
        #   @return [Types::PasswordPolicyType]

      end

      # A container with information about the user pool type.
      class UserPoolType < Aws::Structure.new(
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
        :sms_verification_message,
        :email_verification_message,
        :email_verification_subject,
        :sms_authentication_message,
        :mfa_configuration,
        :device_configuration,
        :estimated_number_of_users,
        :email_configuration,
        :sms_configuration,
        :sms_configuration_failure,
        :email_configuration_failure)

        # @!attribute [rw] id
        #   The ID of the user pool.
        #   @return [String]

        # @!attribute [rw] name
        #   The name of the user pool.
        #   @return [String]

        # @!attribute [rw] policies
        #   A container describing the policies associated with a user pool.
        #   @return [Types::UserPoolPolicyType]

        # @!attribute [rw] lambda_config
        #   A container describing the AWS Lambda triggers associated with a
        #   user pool.
        #   @return [Types::LambdaConfigType]

        # @!attribute [rw] status
        #   The status of a user pool.
        #   @return [String]

        # @!attribute [rw] last_modified_date
        #   The last modified date of a user pool.
        #   @return [Time]

        # @!attribute [rw] creation_date
        #   The creation date of a user pool.
        #   @return [Time]

        # @!attribute [rw] schema_attributes
        #   A container with the schema attributes of a user pool.
        #   @return [Array<Types::SchemaAttributeType>]

        # @!attribute [rw] auto_verified_attributes
        #   Specifies the attributes that are auto-verified in a user pool.
        #   @return [Array<String>]

        # @!attribute [rw] alias_attributes
        #   Specifies the attributes that are aliased in a user pool.
        #   @return [Array<String>]

        # @!attribute [rw] sms_verification_message
        #   The contents of the SMS verification message.
        #   @return [String]

        # @!attribute [rw] email_verification_message
        #   The contents of the email verification message.
        #   @return [String]

        # @!attribute [rw] email_verification_subject
        #   The subject of the email verification message.
        #   @return [String]

        # @!attribute [rw] sms_authentication_message
        #   The contents of the SMS authentication message.
        #   @return [String]

        # @!attribute [rw] mfa_configuration
        #   Can be one of the following values:
        #
        #   * `OFF` - MFA tokens are not required and cannot be specified during
        #     user registration.
        #   * `ON` - MFA tokens are required for all user registrations. You can
        #     only specify required when you are initially creating a user pool.
        #   * `OPTIONAL` - Users have the option when registering to create an
        #     MFA token.
        #   @return [String]

        # @!attribute [rw] device_configuration
        #   The device configuration.
        #   @return [Types::DeviceConfigurationType]

        # @!attribute [rw] estimated_number_of_users
        #   A number estimating the size of the user pool.
        #   @return [Integer]

        # @!attribute [rw] email_configuration
        #   The email configuration.
        #   @return [Types::EmailConfigurationType]

        # @!attribute [rw] sms_configuration
        #   The SMS configuration.
        #   @return [Types::SmsConfigurationType]

        # @!attribute [rw] sms_configuration_failure
        #   The reason why the SMS configuration cannot send the message(s) to
        #   your users.
        #   @return [String]

        # @!attribute [rw] email_configuration_failure
        #   The reason why the email configuration cannot send the messages to
        #   your users.
        #   @return [String]

      end

      # The user type.
      class UserType < Aws::Structure.new(
        :username,
        :attributes,
        :user_create_date,
        :user_last_modified_date,
        :enabled,
        :user_status)

        # @!attribute [rw] username
        #   The user name of the user you wish to describe.
        #   @return [String]

        # @!attribute [rw] attributes
        #   A container with information about the user type attributes.
        #   @return [Array<Types::AttributeType>]

        # @!attribute [rw] user_create_date
        #   The creation date of the user.
        #   @return [Time]

        # @!attribute [rw] user_last_modified_date
        #   The last modified date of the user.
        #   @return [Time]

        # @!attribute [rw] enabled
        #   Specifies whether the user is enabled.
        #   @return [Boolean]

        # @!attribute [rw] user_status
        #   The user status. Can be one of the following:
        #
        #   * UNCONFIRMED - User has been created but not confirmed.
        #   * CONFIRMED - User has been confirmed.
        #   * ARCHIVED - User is no longer active.
        #   * COMPROMISED - User is disabled due to a potential security threat.
        #   * UNKNOWN - User status is not known.
        #   @return [String]

      end

      # Represents the request to verify user attributes.
      # @note When making an API call, pass VerifyUserAttributeRequest
      #   data as a hash:
      #
      #       {
      #         access_token: "TokenModelType",
      #         attribute_name: "AttributeNameType", # required
      #         code: "ConfirmationCodeType", # required
      #       }
      class VerifyUserAttributeRequest < Aws::Structure.new(
        :access_token,
        :attribute_name,
        :code)

        # @!attribute [rw] access_token
        #   Represents the access token of the request to verify user
        #   attributes.
        #   @return [String]

        # @!attribute [rw] attribute_name
        #   The attribute name in the request to verify user attributes.
        #   @return [String]

        # @!attribute [rw] code
        #   The verification code in the request to verify user attributes.
        #   @return [String]

      end

      # A container representing the response from the server from the request
      # to verify user attributes.
      class VerifyUserAttributeResponse < Aws::EmptyStructure; end

    end
  end
end
