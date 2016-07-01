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
    class Client < Seahorse::Client::Base

      include Aws::ClientStubs
      include Aws::ClientWaiters

      @identifier = :cognitoidentityprovider

      set_api(ClientApi::API)

      add_plugin(Seahorse::Client::Plugins::ContentLength)
      add_plugin(Aws::Plugins::Logging)
      add_plugin(Aws::Plugins::ParamConverter)
      add_plugin(Aws::Plugins::ParamValidator)
      add_plugin(Aws::Plugins::UserAgent)
      add_plugin(Aws::Plugins::RetryErrors)
      add_plugin(Aws::Plugins::GlobalConfiguration)
      add_plugin(Aws::Plugins::RegionalEndpoint)
      add_plugin(Aws::Plugins::RequestSigner)
      add_plugin(Aws::Plugins::ResponsePaging)
      add_plugin(Aws::Plugins::StubResponses)
      add_plugin(Aws::Plugins::Protocols::JsonRpc)

      # @!group API Operations

      # Adds additional user attributes to the user pool schema.
      # @option params [required, String] :user_pool_id
      #   The user pool ID for the user pool where you want to add custom
      #   attributes.
      # @option params [required, Array<Types::SchemaAttributeType>] :custom_attributes
      #   An array of custom attributes, such as Mutable and Name.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.add_custom_attributes({
      #     user_pool_id: "UserPoolIdType", # required
      #     custom_attributes: [ # required
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
      #       },
      #     ],
      #   })
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def add_custom_attributes(params = {}, options = {})
        req = build_request(:add_custom_attributes, params)
        req.send_request(options)
      end

      # Confirms user registration as an admin without using a confirmation
      # code. Works on any user.
      # @option params [required, String] :user_pool_id
      #   The user pool ID for which you want to confirm user registration.
      # @option params [required, String] :username
      #   The user name for which you want to confirm user registration.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.admin_confirm_sign_up({
      #     user_pool_id: "UserPoolIdType", # required
      #     username: "UsernameType", # required
      #   })
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def admin_confirm_sign_up(params = {}, options = {})
        req = build_request(:admin_confirm_sign_up, params)
        req.send_request(options)
      end

      # Deletes a user as an administrator. Works on any user.
      # @option params [required, String] :user_pool_id
      #   The user pool ID for the user pool where you want to delete the user.
      # @option params [required, String] :username
      #   The user name of the user you wish to delete.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.admin_delete_user({
      #     user_pool_id: "UserPoolIdType", # required
      #     username: "UsernameType", # required
      #   })
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def admin_delete_user(params = {}, options = {})
        req = build_request(:admin_delete_user, params)
        req.send_request(options)
      end

      # Deletes the user attributes in a user pool as an administrator. Works
      # on any user.
      # @option params [required, String] :user_pool_id
      #   The user pool ID for the user pool where you want to delete user
      #   attributes.
      # @option params [required, String] :username
      #   The user name of the user from which you would like to delete
      #   attributes.
      # @option params [required, Array<String>] :user_attribute_names
      #   An array of strings representing the user attribute names you wish to
      #   delete.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.admin_delete_user_attributes({
      #     user_pool_id: "UserPoolIdType", # required
      #     username: "UsernameType", # required
      #     user_attribute_names: ["AttributeNameType"], # required
      #   })
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def admin_delete_user_attributes(params = {}, options = {})
        req = build_request(:admin_delete_user_attributes, params)
        req.send_request(options)
      end

      # Disables the specified user as an administrator. Works on any user.
      # @option params [required, String] :user_pool_id
      #   The user pool ID for the user pool where you want to disable the user.
      # @option params [required, String] :username
      #   The user name of the user you wish to disable.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.admin_disable_user({
      #     user_pool_id: "UserPoolIdType", # required
      #     username: "UsernameType", # required
      #   })
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def admin_disable_user(params = {}, options = {})
        req = build_request(:admin_disable_user, params)
        req.send_request(options)
      end

      # Enables the specified user as an administrator. Works on any user.
      # @option params [required, String] :user_pool_id
      #   The user pool ID for the user pool where you want to enable the user.
      # @option params [required, String] :username
      #   The user name of the user you wish to ebable.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.admin_enable_user({
      #     user_pool_id: "UserPoolIdType", # required
      #     username: "UsernameType", # required
      #   })
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def admin_enable_user(params = {}, options = {})
        req = build_request(:admin_enable_user, params)
        req.send_request(options)
      end

      # Gets the specified user by user name in a user pool as an
      # administrator. Works on any user.
      # @option params [required, String] :user_pool_id
      #   The user pool ID for the user pool where you want to get information
      #   about the user.
      # @option params [required, String] :username
      #   The user name of the user you wish to retrieve.
      # @return [Types::AdminGetUserResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::AdminGetUserResponse#username #Username} => String
      #   * {Types::AdminGetUserResponse#user_attributes #UserAttributes} => Array&lt;Types::AttributeType&gt;
      #   * {Types::AdminGetUserResponse#user_create_date #UserCreateDate} => Time
      #   * {Types::AdminGetUserResponse#user_last_modified_date #UserLastModifiedDate} => Time
      #   * {Types::AdminGetUserResponse#enabled #Enabled} => Boolean
      #   * {Types::AdminGetUserResponse#user_status #UserStatus} => String
      #   * {Types::AdminGetUserResponse#mfa_options #MFAOptions} => Array&lt;Types::MFAOptionType&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.admin_get_user({
      #     user_pool_id: "UserPoolIdType", # required
      #     username: "UsernameType", # required
      #   })
      #
      # @example Response structure
      #   resp.username #=> String
      #   resp.user_attributes #=> Array
      #   resp.user_attributes[0].name #=> String
      #   resp.user_attributes[0].value #=> String
      #   resp.user_create_date #=> Time
      #   resp.user_last_modified_date #=> Time
      #   resp.enabled #=> Boolean
      #   resp.user_status #=> String, one of "UNCONFIRMED", "CONFIRMED", "ARCHIVED", "COMPROMISED", "UNKNOWN"
      #   resp.mfa_options #=> Array
      #   resp.mfa_options[0].delivery_medium #=> String, one of "SMS", "EMAIL"
      #   resp.mfa_options[0].attribute_name #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def admin_get_user(params = {}, options = {})
        req = build_request(:admin_get_user, params)
        req.send_request(options)
      end

      # Resets the specified user\'s password in a user pool as an
      # administrator. Works on any user.
      # @option params [required, String] :user_pool_id
      #   The user pool ID for the user pool where you want to reset the user\'s
      #   password.
      # @option params [required, String] :username
      #   The user name of the user whose password you wish to reset.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.admin_reset_user_password({
      #     user_pool_id: "UserPoolIdType", # required
      #     username: "UsernameType", # required
      #   })
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def admin_reset_user_password(params = {}, options = {})
        req = build_request(:admin_reset_user_password, params)
        req.send_request(options)
      end

      # Sets all the user settings for a specified user name. Works on any
      # user.
      # @option params [required, String] :user_pool_id
      #   The user pool ID for the user pool where you want to set the user\'s
      #   settings, such as MFA options.
      # @option params [required, String] :username
      #   The user name of the user for whom you wish to set user settings.
      # @option params [required, Array<Types::MFAOptionType>] :mfa_options
      #   Specifies the options for MFA (e.g., email or phone number).
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.admin_set_user_settings({
      #     user_pool_id: "UserPoolIdType", # required
      #     username: "UsernameType", # required
      #     mfa_options: [ # required
      #       {
      #         delivery_medium: "SMS", # accepts SMS, EMAIL
      #         attribute_name: "AttributeNameType",
      #       },
      #     ],
      #   })
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def admin_set_user_settings(params = {}, options = {})
        req = build_request(:admin_set_user_settings, params)
        req.send_request(options)
      end

      # Updates the specified user\'s attributes, including developer
      # attributes, as an administrator. Works on any user.
      # @option params [required, String] :user_pool_id
      #   The user pool ID for the user pool where you want to update user
      #   attributes.
      # @option params [required, String] :username
      #   The user name of the user for whom you want to update user attributes.
      # @option params [required, Array<Types::AttributeType>] :user_attributes
      #   An array of name-value pairs representing user attributes.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.admin_update_user_attributes({
      #     user_pool_id: "UserPoolIdType", # required
      #     username: "UsernameType", # required
      #     user_attributes: [ # required
      #       {
      #         name: "AttributeNameType", # required
      #         value: "AttributeValueType",
      #       },
      #     ],
      #   })
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def admin_update_user_attributes(params = {}, options = {})
        req = build_request(:admin_update_user_attributes, params)
        req.send_request(options)
      end

      # Changes the password for a specified user in a user pool.
      # @option params [required, String] :previous_password
      #   The old password in the change password request.
      # @option params [required, String] :proposed_password
      #   The new password in the change password request.
      # @option params [String] :access_token
      #   The access token in the change password request.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.change_password({
      #     previous_password: "PasswordType", # required
      #     proposed_password: "PasswordType", # required
      #     access_token: "TokenModelType",
      #   })
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def change_password(params = {}, options = {})
        req = build_request(:change_password, params)
        req.send_request(options)
      end

      # Allows a user to enter a code provided when they reset their password
      # to update their password.
      # @option params [required, String] :client_id
      #   The ID of the client associated with the user pool.
      # @option params [String] :secret_hash
      #   A keyed-hash message authentication code (HMAC) calculated using the
      #   secret key of a user pool client and username plus the client ID in
      #   the message.
      # @option params [required, String] :username
      #   The user name of the user for whom you want to enter a code to
      #   retrieve a forgotten password.
      # @option params [required, String] :confirmation_code
      #   The confirmation code sent by a user\'s request to retrieve a
      #   forgotten password.
      # @option params [required, String] :password
      #   The password sent by sent by a user\'s request to retrieve a forgotten
      #   password.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.confirm_forgot_password({
      #     client_id: "ClientIdType", # required
      #     secret_hash: "SecretHashType",
      #     username: "UsernameType", # required
      #     confirmation_code: "ConfirmationCodeType", # required
      #     password: "PasswordType", # required
      #   })
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def confirm_forgot_password(params = {}, options = {})
        req = build_request(:confirm_forgot_password, params)
        req.send_request(options)
      end

      # Confirms registration of a user and handles the existing alias from a
      # previous user.
      # @option params [required, String] :client_id
      #   The ID of the client associated with the user pool.
      # @option params [String] :secret_hash
      #   A keyed-hash message authentication code (HMAC) calculated using the
      #   secret key of a user pool client and username plus the client ID in
      #   the message.
      # @option params [required, String] :username
      #   The user name of the user whose registration you wish to confirm.
      # @option params [required, String] :confirmation_code
      #   The confirmation code sent by a user\'s request to confirm
      #   registration.
      # @option params [Boolean] :force_alias_creation
      #   Boolean to be specified to force user confirmation irrespective of
      #   existing alias. By default set to False. If this parameter is set to
      #   True and the phone number/email used for sign up confirmation already
      #   exists as an alias with a different user, the API call will migrate
      #   the alias from the previous user to the newly created user being
      #   confirmed. If set to False, the API will throw an
      #   **AliasExistsException** error.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.confirm_sign_up({
      #     client_id: "ClientIdType", # required
      #     secret_hash: "SecretHashType",
      #     username: "UsernameType", # required
      #     confirmation_code: "ConfirmationCodeType", # required
      #     force_alias_creation: false,
      #   })
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def confirm_sign_up(params = {}, options = {})
        req = build_request(:confirm_sign_up, params)
        req.send_request(options)
      end

      # Creates a new Amazon Cognito user pool and sets the password policy
      # for the pool.
      # @option params [required, String] :pool_name
      #   A string used to name the user pool.
      # @option params [Types::UserPoolPolicyType] :policies
      #   The policies associated with the new user pool.
      # @option params [Types::LambdaConfigType] :lambda_config
      #   The Lambda trigger configuration information for the new user pool.
      # @option params [Array<String>] :auto_verified_attributes
      #   The attributes to be auto-verified. Possible values: **email**,
      #   **phone\_number**.
      # @option params [Array<String>] :alias_attributes
      #   Attributes supported as an alias for this user pool. Possible values:
      #   **phone\_number**, **email**, or **preferred\_username**.
      # @option params [String] :sms_verification_message
      #   A string representing the SMS verification message.
      # @option params [String] :email_verification_message
      #   A string representing the email verification message.
      # @option params [String] :email_verification_subject
      #   A string representing the email verification subject.
      # @option params [String] :sms_authentication_message
      #   A string representing the SMS authentication message.
      # @option params [String] :mfa_configuration
      #   Specifies MFA configuration details.
      # @return [Types::CreateUserPoolResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::CreateUserPoolResponse#user_pool #UserPool} => Types::UserPoolType
      #
      # @example Request syntax with placeholder values
      #   resp = client.create_user_pool({
      #     pool_name: "UserPoolNameType", # required
      #     policies: {
      #       password_policy: {
      #         minimum_length: 1,
      #         require_uppercase: false,
      #         require_lowercase: false,
      #         require_numbers: false,
      #         require_symbols: false,
      #       },
      #     },
      #     lambda_config: {
      #       pre_sign_up: "ArnType",
      #       custom_message: "ArnType",
      #       post_confirmation: "ArnType",
      #       pre_authentication: "ArnType",
      #       post_authentication: "ArnType",
      #     },
      #     auto_verified_attributes: ["phone_number"], # accepts phone_number, email
      #     alias_attributes: ["phone_number"], # accepts phone_number, email, preferred_username
      #     sms_verification_message: "SmsVerificationMessageType",
      #     email_verification_message: "EmailVerificationMessageType",
      #     email_verification_subject: "EmailVerificationSubjectType",
      #     sms_authentication_message: "SmsVerificationMessageType",
      #     mfa_configuration: "OFF", # accepts OFF, ON, OPTIONAL
      #   })
      #
      # @example Response structure
      #   resp.user_pool.id #=> String
      #   resp.user_pool.name #=> String
      #   resp.user_pool.policies.password_policy.minimum_length #=> Integer
      #   resp.user_pool.policies.password_policy.require_uppercase #=> Boolean
      #   resp.user_pool.policies.password_policy.require_lowercase #=> Boolean
      #   resp.user_pool.policies.password_policy.require_numbers #=> Boolean
      #   resp.user_pool.policies.password_policy.require_symbols #=> Boolean
      #   resp.user_pool.lambda_config.pre_sign_up #=> String
      #   resp.user_pool.lambda_config.custom_message #=> String
      #   resp.user_pool.lambda_config.post_confirmation #=> String
      #   resp.user_pool.lambda_config.pre_authentication #=> String
      #   resp.user_pool.lambda_config.post_authentication #=> String
      #   resp.user_pool.status #=> String, one of "Enabled", "Disabled"
      #   resp.user_pool.last_modified_date #=> Time
      #   resp.user_pool.creation_date #=> Time
      #   resp.user_pool.schema_attributes #=> Array
      #   resp.user_pool.schema_attributes[0].name #=> String
      #   resp.user_pool.schema_attributes[0].attribute_data_type #=> String, one of "String", "Number", "DateTime", "Boolean"
      #   resp.user_pool.schema_attributes[0].developer_only_attribute #=> Boolean
      #   resp.user_pool.schema_attributes[0].mutable #=> Boolean
      #   resp.user_pool.schema_attributes[0].required #=> Boolean
      #   resp.user_pool.schema_attributes[0].number_attribute_constraints.min_value #=> String
      #   resp.user_pool.schema_attributes[0].number_attribute_constraints.max_value #=> String
      #   resp.user_pool.schema_attributes[0].string_attribute_constraints.min_length #=> String
      #   resp.user_pool.schema_attributes[0].string_attribute_constraints.max_length #=> String
      #   resp.user_pool.auto_verified_attributes #=> Array
      #   resp.user_pool.auto_verified_attributes[0] #=> String, one of "phone_number", "email"
      #   resp.user_pool.alias_attributes #=> Array
      #   resp.user_pool.alias_attributes[0] #=> String, one of "phone_number", "email", "preferred_username"
      #   resp.user_pool.sms_verification_message #=> String
      #   resp.user_pool.email_verification_message #=> String
      #   resp.user_pool.email_verification_subject #=> String
      #   resp.user_pool.sms_authentication_message #=> String
      #   resp.user_pool.mfa_configuration #=> String, one of "OFF", "ON", "OPTIONAL"
      #   resp.user_pool.estimated_number_of_users #=> Integer
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def create_user_pool(params = {}, options = {})
        req = build_request(:create_user_pool, params)
        req.send_request(options)
      end

      # Creates the user pool client.
      # @option params [required, String] :user_pool_id
      #   The user pool ID for the user pool where you want to create a user
      #   pool client.
      # @option params [required, String] :client_name
      #   The client name for the user pool client you would like to create.
      # @option params [Boolean] :generate_secret
      #   Boolean to specify whether you want to generate a secret for the user
      #   pool client being created.
      # @return [Types::CreateUserPoolClientResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::CreateUserPoolClientResponse#user_pool_client #UserPoolClient} => Types::UserPoolClientType
      #
      # @example Request syntax with placeholder values
      #   resp = client.create_user_pool_client({
      #     user_pool_id: "UserPoolIdType", # required
      #     client_name: "ClientNameType", # required
      #     generate_secret: false,
      #   })
      #
      # @example Response structure
      #   resp.user_pool_client.user_pool_id #=> String
      #   resp.user_pool_client.client_name #=> String
      #   resp.user_pool_client.client_id #=> String
      #   resp.user_pool_client.client_secret #=> String
      #   resp.user_pool_client.last_modified_date #=> Time
      #   resp.user_pool_client.creation_date #=> Time
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def create_user_pool_client(params = {}, options = {})
        req = build_request(:create_user_pool_client, params)
        req.send_request(options)
      end

      # Allows a user to delete one\'s self.
      # @option params [String] :access_token
      #   The access token from a request to delete a user.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.delete_user({
      #     access_token: "TokenModelType",
      #   })
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def delete_user(params = {}, options = {})
        req = build_request(:delete_user, params)
        req.send_request(options)
      end

      # Deletes the attributes for a user.
      # @option params [required, Array<String>] :user_attribute_names
      #   An array of strings representing the user attribute names you wish to
      #   delete.
      # @option params [String] :access_token
      #   The access token used in the request to delete user attributes.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.delete_user_attributes({
      #     user_attribute_names: ["AttributeNameType"], # required
      #     access_token: "TokenModelType",
      #   })
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def delete_user_attributes(params = {}, options = {})
        req = build_request(:delete_user_attributes, params)
        req.send_request(options)
      end

      # Deletes the specified Amazon Cognito user pool.
      # @option params [required, String] :user_pool_id
      #   The user pool ID for the user pool you want to delete.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.delete_user_pool({
      #     user_pool_id: "UserPoolIdType", # required
      #   })
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def delete_user_pool(params = {}, options = {})
        req = build_request(:delete_user_pool, params)
        req.send_request(options)
      end

      # Allows the developer to delete the user pool client.
      # @option params [required, String] :user_pool_id
      #   The user pool ID for the user pool where you want to delete the
      #   client.
      # @option params [required, String] :client_id
      #   The ID of the client associated with the user pool.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.delete_user_pool_client({
      #     user_pool_id: "UserPoolIdType", # required
      #     client_id: "ClientIdType", # required
      #   })
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def delete_user_pool_client(params = {}, options = {})
        req = build_request(:delete_user_pool_client, params)
        req.send_request(options)
      end

      # Returns the configuration information and metadata of the specified
      # user pool.
      # @option params [required, String] :user_pool_id
      #   The user pool ID for the user pool you want to describe.
      # @return [Types::DescribeUserPoolResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::DescribeUserPoolResponse#user_pool #UserPool} => Types::UserPoolType
      #
      # @example Request syntax with placeholder values
      #   resp = client.describe_user_pool({
      #     user_pool_id: "UserPoolIdType", # required
      #   })
      #
      # @example Response structure
      #   resp.user_pool.id #=> String
      #   resp.user_pool.name #=> String
      #   resp.user_pool.policies.password_policy.minimum_length #=> Integer
      #   resp.user_pool.policies.password_policy.require_uppercase #=> Boolean
      #   resp.user_pool.policies.password_policy.require_lowercase #=> Boolean
      #   resp.user_pool.policies.password_policy.require_numbers #=> Boolean
      #   resp.user_pool.policies.password_policy.require_symbols #=> Boolean
      #   resp.user_pool.lambda_config.pre_sign_up #=> String
      #   resp.user_pool.lambda_config.custom_message #=> String
      #   resp.user_pool.lambda_config.post_confirmation #=> String
      #   resp.user_pool.lambda_config.pre_authentication #=> String
      #   resp.user_pool.lambda_config.post_authentication #=> String
      #   resp.user_pool.status #=> String, one of "Enabled", "Disabled"
      #   resp.user_pool.last_modified_date #=> Time
      #   resp.user_pool.creation_date #=> Time
      #   resp.user_pool.schema_attributes #=> Array
      #   resp.user_pool.schema_attributes[0].name #=> String
      #   resp.user_pool.schema_attributes[0].attribute_data_type #=> String, one of "String", "Number", "DateTime", "Boolean"
      #   resp.user_pool.schema_attributes[0].developer_only_attribute #=> Boolean
      #   resp.user_pool.schema_attributes[0].mutable #=> Boolean
      #   resp.user_pool.schema_attributes[0].required #=> Boolean
      #   resp.user_pool.schema_attributes[0].number_attribute_constraints.min_value #=> String
      #   resp.user_pool.schema_attributes[0].number_attribute_constraints.max_value #=> String
      #   resp.user_pool.schema_attributes[0].string_attribute_constraints.min_length #=> String
      #   resp.user_pool.schema_attributes[0].string_attribute_constraints.max_length #=> String
      #   resp.user_pool.auto_verified_attributes #=> Array
      #   resp.user_pool.auto_verified_attributes[0] #=> String, one of "phone_number", "email"
      #   resp.user_pool.alias_attributes #=> Array
      #   resp.user_pool.alias_attributes[0] #=> String, one of "phone_number", "email", "preferred_username"
      #   resp.user_pool.sms_verification_message #=> String
      #   resp.user_pool.email_verification_message #=> String
      #   resp.user_pool.email_verification_subject #=> String
      #   resp.user_pool.sms_authentication_message #=> String
      #   resp.user_pool.mfa_configuration #=> String, one of "OFF", "ON", "OPTIONAL"
      #   resp.user_pool.estimated_number_of_users #=> Integer
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def describe_user_pool(params = {}, options = {})
        req = build_request(:describe_user_pool, params)
        req.send_request(options)
      end

      # Client method for returning the configuration information and metadata
      # of the specified user pool client.
      # @option params [required, String] :user_pool_id
      #   The user pool ID for the user pool you want to describe.
      # @option params [required, String] :client_id
      #   The ID of the client associated with the user pool.
      # @return [Types::DescribeUserPoolClientResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::DescribeUserPoolClientResponse#user_pool_client #UserPoolClient} => Types::UserPoolClientType
      #
      # @example Request syntax with placeholder values
      #   resp = client.describe_user_pool_client({
      #     user_pool_id: "UserPoolIdType", # required
      #     client_id: "ClientIdType", # required
      #   })
      #
      # @example Response structure
      #   resp.user_pool_client.user_pool_id #=> String
      #   resp.user_pool_client.client_name #=> String
      #   resp.user_pool_client.client_id #=> String
      #   resp.user_pool_client.client_secret #=> String
      #   resp.user_pool_client.last_modified_date #=> Time
      #   resp.user_pool_client.creation_date #=> Time
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def describe_user_pool_client(params = {}, options = {})
        req = build_request(:describe_user_pool_client, params)
        req.send_request(options)
      end

      # Retrieves the password for the specified client ID or username.
      # @option params [required, String] :client_id
      #   The ID of the client associated with the user pool.
      # @option params [String] :secret_hash
      #   A keyed-hash message authentication code (HMAC) calculated using the
      #   secret key of a user pool client and username plus the client ID in
      #   the message.
      # @option params [required, String] :username
      #   The user name of the user for whom you want to enter a code to
      #   retrieve a forgotten password.
      # @return [Types::ForgotPasswordResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ForgotPasswordResponse#code_delivery_details #CodeDeliveryDetails} => Types::CodeDeliveryDetailsType
      #
      # @example Request syntax with placeholder values
      #   resp = client.forgot_password({
      #     client_id: "ClientIdType", # required
      #     secret_hash: "SecretHashType",
      #     username: "UsernameType", # required
      #   })
      #
      # @example Response structure
      #   resp.code_delivery_details.destination #=> String
      #   resp.code_delivery_details.delivery_medium #=> String, one of "SMS", "EMAIL"
      #   resp.code_delivery_details.attribute_name #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def forgot_password(params = {}, options = {})
        req = build_request(:forgot_password, params)
        req.send_request(options)
      end

      # Gets the user attributes and metadata for a user.
      # @option params [String] :access_token
      #   The access token returned by the server response to get information
      #   about the user.
      # @return [Types::GetUserResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::GetUserResponse#username #Username} => String
      #   * {Types::GetUserResponse#user_attributes #UserAttributes} => Array&lt;Types::AttributeType&gt;
      #   * {Types::GetUserResponse#mfa_options #MFAOptions} => Array&lt;Types::MFAOptionType&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.get_user({
      #     access_token: "TokenModelType",
      #   })
      #
      # @example Response structure
      #   resp.username #=> String
      #   resp.user_attributes #=> Array
      #   resp.user_attributes[0].name #=> String
      #   resp.user_attributes[0].value #=> String
      #   resp.mfa_options #=> Array
      #   resp.mfa_options[0].delivery_medium #=> String, one of "SMS", "EMAIL"
      #   resp.mfa_options[0].attribute_name #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def get_user(params = {}, options = {})
        req = build_request(:get_user, params)
        req.send_request(options)
      end

      # Gets the user attribute verification code for the specified attribute
      # name.
      # @option params [String] :access_token
      #   The access token returned by the server response to get the user
      #   attribute verification code.
      # @option params [required, String] :attribute_name
      #   The attribute name returned by the server response to get the user
      #   attribute verification code.
      # @return [Types::GetUserAttributeVerificationCodeResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::GetUserAttributeVerificationCodeResponse#code_delivery_details #CodeDeliveryDetails} => Types::CodeDeliveryDetailsType
      #
      # @example Request syntax with placeholder values
      #   resp = client.get_user_attribute_verification_code({
      #     access_token: "TokenModelType",
      #     attribute_name: "AttributeNameType", # required
      #   })
      #
      # @example Response structure
      #   resp.code_delivery_details.destination #=> String
      #   resp.code_delivery_details.delivery_medium #=> String, one of "SMS", "EMAIL"
      #   resp.code_delivery_details.attribute_name #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def get_user_attribute_verification_code(params = {}, options = {})
        req = build_request(:get_user_attribute_verification_code, params)
        req.send_request(options)
      end

      # Lists the clients that have been created for the specified user pool.
      # @option params [required, String] :user_pool_id
      #   The user pool ID for the user pool where you want to list user pool
      #   clients.
      # @option params [Integer] :max_results
      #   The maximum number of results you want the request to return when
      #   listing the user pool clients.
      # @option params [String] :next_token
      #   An identifier that was returned from the previous call to this
      #   operation, which can be used to return the next set of items in the
      #   list.
      # @return [Types::ListUserPoolClientsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ListUserPoolClientsResponse#user_pool_clients #UserPoolClients} => Array&lt;Types::UserPoolClientDescription&gt;
      #   * {Types::ListUserPoolClientsResponse#next_token #NextToken} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.list_user_pool_clients({
      #     user_pool_id: "UserPoolIdType", # required
      #     max_results: 1,
      #     next_token: "PaginationKey",
      #   })
      #
      # @example Response structure
      #   resp.user_pool_clients #=> Array
      #   resp.user_pool_clients[0].client_id #=> String
      #   resp.user_pool_clients[0].user_pool_id #=> String
      #   resp.user_pool_clients[0].client_name #=> String
      #   resp.next_token #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def list_user_pool_clients(params = {}, options = {})
        req = build_request(:list_user_pool_clients, params)
        req.send_request(options)
      end

      # Lists the user pools associated with an AWS account.
      # @option params [String] :next_token
      #   An identifier that was returned from the previous call to this
      #   operation, which can be used to return the next set of items in the
      #   list.
      # @option params [required, Integer] :max_results
      #   The maximum number of results you want the request to return when
      #   listing the user pools.
      # @return [Types::ListUserPoolsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ListUserPoolsResponse#user_pools #UserPools} => Array&lt;Types::UserPoolDescriptionType&gt;
      #   * {Types::ListUserPoolsResponse#next_token #NextToken} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.list_user_pools({
      #     next_token: "PaginationKeyType",
      #     max_results: 1, # required
      #   })
      #
      # @example Response structure
      #   resp.user_pools #=> Array
      #   resp.user_pools[0].id #=> String
      #   resp.user_pools[0].name #=> String
      #   resp.user_pools[0].lambda_config.pre_sign_up #=> String
      #   resp.user_pools[0].lambda_config.custom_message #=> String
      #   resp.user_pools[0].lambda_config.post_confirmation #=> String
      #   resp.user_pools[0].lambda_config.pre_authentication #=> String
      #   resp.user_pools[0].lambda_config.post_authentication #=> String
      #   resp.user_pools[0].status #=> String, one of "Enabled", "Disabled"
      #   resp.user_pools[0].last_modified_date #=> Time
      #   resp.user_pools[0].creation_date #=> Time
      #   resp.next_token #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def list_user_pools(params = {}, options = {})
        req = build_request(:list_user_pools, params)
        req.send_request(options)
      end

      # Lists the users in the Amazon Cognito user pool.
      # @option params [required, String] :user_pool_id
      #   The user pool ID for which you want to list users.
      # @option params [Array<String>] :attributes_to_get
      #   The attributes to get from the request to list users.
      # @option params [Integer] :limit
      #   The limit of the request to list users.
      # @option params [String] :pagination_token
      #   An identifier that was returned from the previous call to this
      #   operation, which can be used to return the next set of items in the
      #   list.
      # @option params [String] :user_status
      #   The user status. Can be one of the following:
      #
      #   * UNCONFIRMED - User has been created but not confirmed.
      #   * CONFIRMED - User has been confirmed.
      #   * ARCHIVED - User is no longer active.
      #   * COMPROMISED - User is disabled due to a potential security threat.
      #   * UNKNOWN - User status is not known.
      # @return [Types::ListUsersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ListUsersResponse#users #Users} => Array&lt;Types::UserType&gt;
      #   * {Types::ListUsersResponse#pagination_token #PaginationToken} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.list_users({
      #     user_pool_id: "UserPoolIdType", # required
      #     attributes_to_get: ["AttributeNameType"],
      #     limit: 1,
      #     pagination_token: "SearchPaginationTokenType",
      #     user_status: "UNCONFIRMED", # accepts UNCONFIRMED, CONFIRMED, ARCHIVED, COMPROMISED, UNKNOWN
      #   })
      #
      # @example Response structure
      #   resp.users #=> Array
      #   resp.users[0].username #=> String
      #   resp.users[0].attributes #=> Array
      #   resp.users[0].attributes[0].name #=> String
      #   resp.users[0].attributes[0].value #=> String
      #   resp.users[0].user_create_date #=> Time
      #   resp.users[0].user_last_modified_date #=> Time
      #   resp.users[0].enabled #=> Boolean
      #   resp.users[0].user_status #=> String, one of "UNCONFIRMED", "CONFIRMED", "ARCHIVED", "COMPROMISED", "UNKNOWN"
      #   resp.pagination_token #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def list_users(params = {}, options = {})
        req = build_request(:list_users, params)
        req.send_request(options)
      end

      # Resends the confirmation (for confirmation of registration) to a
      # specific user in the user pool.
      # @option params [required, String] :client_id
      #   The ID of the client associated with the user pool.
      # @option params [String] :secret_hash
      #   A keyed-hash message authentication code (HMAC) calculated using the
      #   secret key of a user pool client and username plus the client ID in
      #   the message.
      # @option params [required, String] :username
      #   The user name of the user to whom you wish to resend a confirmation
      #   code.
      # @return [Types::ResendConfirmationCodeResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ResendConfirmationCodeResponse#code_delivery_details #CodeDeliveryDetails} => Types::CodeDeliveryDetailsType
      #
      # @example Request syntax with placeholder values
      #   resp = client.resend_confirmation_code({
      #     client_id: "ClientIdType", # required
      #     secret_hash: "SecretHashType",
      #     username: "UsernameType", # required
      #   })
      #
      # @example Response structure
      #   resp.code_delivery_details.destination #=> String
      #   resp.code_delivery_details.delivery_medium #=> String, one of "SMS", "EMAIL"
      #   resp.code_delivery_details.attribute_name #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def resend_confirmation_code(params = {}, options = {})
        req = build_request(:resend_confirmation_code, params)
        req.send_request(options)
      end

      # Sets the user settings like multi-factor authentication (MFA). If MFA
      # is to be removed for a particular attribute pass the attribute with
      # code delivery as null. If null list is passed, all MFA options are
      # removed.
      # @option params [required, String] :access_token
      #   The access token for the set user settings request.
      # @option params [required, Array<Types::MFAOptionType>] :mfa_options
      #   Specifies the options for MFA (e.g., email or phone number).
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.set_user_settings({
      #     access_token: "TokenModelType", # required
      #     mfa_options: [ # required
      #       {
      #         delivery_medium: "SMS", # accepts SMS, EMAIL
      #         attribute_name: "AttributeNameType",
      #       },
      #     ],
      #   })
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def set_user_settings(params = {}, options = {})
        req = build_request(:set_user_settings, params)
        req.send_request(options)
      end

      # Registers the user in the specified user pool and creates a user name,
      # password, and user attributes.
      # @option params [required, String] :client_id
      #   The ID of the client associated with the user pool.
      # @option params [String] :secret_hash
      #   A keyed-hash message authentication code (HMAC) calculated using the
      #   secret key of a user pool client and username plus the client ID in
      #   the message.
      # @option params [required, String] :username
      #   The user name of the user you wish to register.
      # @option params [required, String] :password
      #   The password of the user you wish to register.
      # @option params [Array<Types::AttributeType>] :user_attributes
      #   An array of name-value pairs representing user attributes.
      # @option params [Array<Types::AttributeType>] :validation_data
      #   The validation data in the request to register a user.
      # @return [Types::SignUpResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::SignUpResponse#user_confirmed #UserConfirmed} => Boolean
      #   * {Types::SignUpResponse#code_delivery_details #CodeDeliveryDetails} => Types::CodeDeliveryDetailsType
      #
      # @example Request syntax with placeholder values
      #   resp = client.sign_up({
      #     client_id: "ClientIdType", # required
      #     secret_hash: "SecretHashType",
      #     username: "UsernameType", # required
      #     password: "PasswordType", # required
      #     user_attributes: [
      #       {
      #         name: "AttributeNameType", # required
      #         value: "AttributeValueType",
      #       },
      #     ],
      #     validation_data: [
      #       {
      #         name: "AttributeNameType", # required
      #         value: "AttributeValueType",
      #       },
      #     ],
      #   })
      #
      # @example Response structure
      #   resp.user_confirmed #=> Boolean
      #   resp.code_delivery_details.destination #=> String
      #   resp.code_delivery_details.delivery_medium #=> String, one of "SMS", "EMAIL"
      #   resp.code_delivery_details.attribute_name #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def sign_up(params = {}, options = {})
        req = build_request(:sign_up, params)
        req.send_request(options)
      end

      # Allows a user to update a specific attribute (one at a time).
      # @option params [required, Array<Types::AttributeType>] :user_attributes
      #   An array of name-value pairs representing user attributes.
      # @option params [String] :access_token
      #   The access token for the request to update user attributes.
      # @return [Types::UpdateUserAttributesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::UpdateUserAttributesResponse#code_delivery_details_list #CodeDeliveryDetailsList} => Array&lt;Types::CodeDeliveryDetailsType&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.update_user_attributes({
      #     user_attributes: [ # required
      #       {
      #         name: "AttributeNameType", # required
      #         value: "AttributeValueType",
      #       },
      #     ],
      #     access_token: "TokenModelType",
      #   })
      #
      # @example Response structure
      #   resp.code_delivery_details_list #=> Array
      #   resp.code_delivery_details_list[0].destination #=> String
      #   resp.code_delivery_details_list[0].delivery_medium #=> String, one of "SMS", "EMAIL"
      #   resp.code_delivery_details_list[0].attribute_name #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def update_user_attributes(params = {}, options = {})
        req = build_request(:update_user_attributes, params)
        req.send_request(options)
      end

      # Updates the specified user pool with the specified attributes.
      # @option params [required, String] :user_pool_id
      #   The user pool ID for the user pool you want to update.
      # @option params [Types::UserPoolPolicyType] :policies
      #   A container with the policies you wish to update in a user pool.
      # @option params [Types::LambdaConfigType] :lambda_config
      #   The AWS Lambda configuration information from the request to update
      #   the user pool.
      # @option params [Array<String>] :auto_verified_attributes
      #   The attributes that are automatically verified when the Amazon Cognito
      #   service makes a request to update user pools.
      # @option params [String] :sms_verification_message
      #   A container with information about the SMS verification message.
      # @option params [String] :email_verification_message
      #   The contents of the email verification message.
      # @option params [String] :email_verification_subject
      #   The subject of the email verfication message
      # @option params [String] :sms_authentication_message
      #   The contents of the SMS authentication message.
      # @option params [String] :mfa_configuration
      #   Can be one of the following values:
      #
      #   * `OFF` - MFA tokens are not required and cannot be specified during
      #     user registration.
      #   * `ON` - MFA tokens are required for all user registrations. You can
      #     only specify required when you are initially creating a user pool.
      #   * `OPTIONAL` - Users have the option when registering to create an MFA
      #     token.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.update_user_pool({
      #     user_pool_id: "UserPoolIdType", # required
      #     policies: {
      #       password_policy: {
      #         minimum_length: 1,
      #         require_uppercase: false,
      #         require_lowercase: false,
      #         require_numbers: false,
      #         require_symbols: false,
      #       },
      #     },
      #     lambda_config: {
      #       pre_sign_up: "ArnType",
      #       custom_message: "ArnType",
      #       post_confirmation: "ArnType",
      #       pre_authentication: "ArnType",
      #       post_authentication: "ArnType",
      #     },
      #     auto_verified_attributes: ["phone_number"], # accepts phone_number, email
      #     sms_verification_message: "SmsVerificationMessageType",
      #     email_verification_message: "EmailVerificationMessageType",
      #     email_verification_subject: "EmailVerificationSubjectType",
      #     sms_authentication_message: "SmsVerificationMessageType",
      #     mfa_configuration: "OFF", # accepts OFF, ON, OPTIONAL
      #   })
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def update_user_pool(params = {}, options = {})
        req = build_request(:update_user_pool, params)
        req.send_request(options)
      end

      # Allows the developer to update the specified user pool client and
      # password policy.
      # @option params [required, String] :user_pool_id
      #   The user pool ID for the user pool where you want to update the user
      #   pool client.
      # @option params [required, String] :client_id
      #   The ID of the client associated with the user pool.
      # @option params [String] :client_name
      #   The client name from the update user pool client request.
      # @return [Types::UpdateUserPoolClientResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::UpdateUserPoolClientResponse#user_pool_client #UserPoolClient} => Types::UserPoolClientType
      #
      # @example Request syntax with placeholder values
      #   resp = client.update_user_pool_client({
      #     user_pool_id: "UserPoolIdType", # required
      #     client_id: "ClientIdType", # required
      #     client_name: "ClientNameType",
      #   })
      #
      # @example Response structure
      #   resp.user_pool_client.user_pool_id #=> String
      #   resp.user_pool_client.client_name #=> String
      #   resp.user_pool_client.client_id #=> String
      #   resp.user_pool_client.client_secret #=> String
      #   resp.user_pool_client.last_modified_date #=> Time
      #   resp.user_pool_client.creation_date #=> Time
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def update_user_pool_client(params = {}, options = {})
        req = build_request(:update_user_pool_client, params)
        req.send_request(options)
      end

      # Verifies the specified user attributes in the user pool.
      # @option params [String] :access_token
      #   Represents the access token of the request to verify user attributes.
      # @option params [required, String] :attribute_name
      #   The attribute name in the request to verify user attributes.
      # @option params [required, String] :code
      #   The verification code in the request to verify user attributes.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.verify_user_attribute({
      #     access_token: "TokenModelType",
      #     attribute_name: "AttributeNameType", # required
      #     code: "ConfirmationCodeType", # required
      #   })
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def verify_user_attribute(params = {}, options = {})
        req = build_request(:verify_user_attribute, params)
        req.send_request(options)
      end

      # @!endgroup

      # @param [Symbol] waiter_name
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      # @option options [Integer] :max_attempts
      # @option options [Integer] :delay
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def wait_until(waiter_name, params = {}, options = {})
        w = waiter(waiter_name, options)
        yield(w.waiter) if block_given? # deprecated
        w.wait(params)
      end

      def waiter_names
        waiters.keys
      end

      private

      # @param [Symbol] waiter_name
      # @param [Hash] options ({})
      def waiter(waiter_name, options = {})
        waiter_class = waiters[waiter_name]
        if waiter_class
          waiter_class.new(options.merge(client: self))
        else
          raise Aws::Waiters::Errors::NoSuchWaiterError.new(waiter_name, waiters.keys)
        end
      end

      def waiters
        {}
      end

      # @api private
      class << self

        attr_reader :identifier

        def errors_module
          Errors
        end

      end
    end
  end
end
