# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'seahorse/client/plugins/content_length.rb'
require 'aws-sdk-core/plugins/credentials_configuration.rb'
require 'aws-sdk-core/plugins/logging.rb'
require 'aws-sdk-core/plugins/param_converter.rb'
require 'aws-sdk-core/plugins/param_validator.rb'
require 'aws-sdk-core/plugins/user_agent.rb'
require 'aws-sdk-core/plugins/helpful_socket_errors.rb'
require 'aws-sdk-core/plugins/retry_errors.rb'
require 'aws-sdk-core/plugins/global_configuration.rb'
require 'aws-sdk-core/plugins/regional_endpoint.rb'
require 'aws-sdk-core/plugins/response_paging.rb'
require 'aws-sdk-core/plugins/stub_responses.rb'
require 'aws-sdk-core/plugins/idempotency_token.rb'
require 'aws-sdk-core/plugins/jsonvalue_converter.rb'
require 'aws-sdk-core/plugins/signature_v4.rb'
require 'aws-sdk-core/plugins/protocols/json_rpc.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:cognitoidentityprovider)

module Aws::CognitoIdentityProvider
  class Client < Seahorse::Client::Base

    include Aws::ClientStubs

    @identifier = :cognitoidentityprovider

    set_api(ClientApi::API)

    add_plugin(Seahorse::Client::Plugins::ContentLength)
    add_plugin(Aws::Plugins::CredentialsConfiguration)
    add_plugin(Aws::Plugins::Logging)
    add_plugin(Aws::Plugins::ParamConverter)
    add_plugin(Aws::Plugins::ParamValidator)
    add_plugin(Aws::Plugins::UserAgent)
    add_plugin(Aws::Plugins::HelpfulSocketErrors)
    add_plugin(Aws::Plugins::RetryErrors)
    add_plugin(Aws::Plugins::GlobalConfiguration)
    add_plugin(Aws::Plugins::RegionalEndpoint)
    add_plugin(Aws::Plugins::ResponsePaging)
    add_plugin(Aws::Plugins::StubResponses)
    add_plugin(Aws::Plugins::IdempotencyToken)
    add_plugin(Aws::Plugins::JsonvalueConverter)
    add_plugin(Aws::Plugins::SignatureV4)
    add_plugin(Aws::Plugins::Protocols::JsonRpc)

    # @option options [required, Aws::CredentialProvider] :credentials
    #   Your AWS credentials. This can be an instance of any one of the
    #   following classes:
    #
    #   * `Aws::Credentials` - Used for configuring static, non-refreshing
    #     credentials.
    #
    #   * `Aws::InstanceProfileCredentials` - Used for loading credentials
    #     from an EC2 IMDS on an EC2 instance.
    #
    #   * `Aws::SharedCredentials` - Used for loading credentials from a
    #     shared file, such as `~/.aws/config`.
    #
    #   * `Aws::AssumeRoleCredentials` - Used when you need to assume a role.
    #
    #   When `:credentials` are not configured directly, the following
    #   locations will be searched for credentials:
    #
    #   * `Aws.config[:credentials]`
    #   * The `:access_key_id`, `:secret_access_key`, and `:session_token` options.
    #   * ENV['AWS_ACCESS_KEY_ID'], ENV['AWS_SECRET_ACCESS_KEY']
    #   * `~/.aws/credentials`
    #   * `~/.aws/config`
    #   * EC2 IMDS instance profile - When used by default, the timeouts are
    #     very aggressive. Construct and pass an instance of
    #     `Aws::InstanceProfileCredentails` to enable retries and extended
    #     timeouts.
    #
    # @option options [required, String] :region
    #   The AWS region to connect to.  The configured `:region` is
    #   used to determine the service `:endpoint`. When not passed,
    #   a default `:region` is search for in the following locations:
    #
    #   * `Aws.config[:region]`
    #   * `ENV['AWS_REGION']`
    #   * `ENV['AMAZON_REGION']`
    #   * `ENV['AWS_DEFAULT_REGION']`
    #   * `~/.aws/credentials`
    #   * `~/.aws/config`
    #
    # @option options [String] :access_key_id
    #
    # @option options [Boolean] :convert_params (true)
    #   When `true`, an attempt is made to coerce request parameters into
    #   the required types.
    #
    # @option options [String] :endpoint
    #   The client endpoint is normally constructed from the `:region`
    #   option. You should only configure an `:endpoint` when connecting
    #   to test endpoints. This should be avalid HTTP(S) URI.
    #
    # @option options [Aws::Log::Formatter] :log_formatter (Aws::Log::Formatter.default)
    #   The log formatter.
    #
    # @option options [Symbol] :log_level (:info)
    #   The log level to send messages to the `:logger` at.
    #
    # @option options [Logger] :logger
    #   The Logger instance to send log messages to.  If this option
    #   is not set, logging will be disabled.
    #
    # @option options [String] :profile ("default")
    #   Used when loading credentials from the shared credentials file
    #   at HOME/.aws/credentials.  When not specified, 'default' is used.
    #
    # @option options [Integer] :retry_limit (3)
    #   The maximum number of times to retry failed requests.  Only
    #   ~ 500 level server errors and certain ~ 400 level client errors
    #   are retried.  Generally, these are throttling errors, data
    #   checksum errors, networking errors, timeout errors and auth
    #   errors from expired credentials.
    #
    # @option options [String] :secret_access_key
    #
    # @option options [String] :session_token
    #
    # @option options [Boolean] :simple_json (false)
    #   Disables request parameter conversion, validation, and formatting.
    #   Also disable response data type conversions. This option is useful
    #   when you want to ensure the highest level of performance by
    #   avoiding overhead of walking request parameters and response data
    #   structures.
    #
    #   When `:simple_json` is enabled, the request parameters hash must
    #   be formatted exactly as the DynamoDB API expects.
    #
    # @option options [Boolean] :stub_responses (false)
    #   Causes the client to return stubbed responses. By default
    #   fake responses are generated and returned. You can specify
    #   the response data to return or errors to raise by calling
    #   {ClientStubs#stub_responses}. See {ClientStubs} for more information.
    #
    #   ** Please note ** When response stubbing is enabled, no HTTP
    #   requests are made, and retries are disabled.
    #
    # @option options [Boolean] :validate_params (true)
    #   When `true`, request parameters are validated before
    #   sending the request.
    #
    def initialize(*args)
      super
    end

    # @!group API Operations

    # Adds additional user attributes to the user pool schema.
    #
    # @option params [required, String] :user_pool_id
    #   The user pool ID for the user pool where you want to add custom
    #   attributes.
    #
    # @option params [required, Array<Types::SchemaAttributeType>] :custom_attributes
    #   An array of custom attributes, such as Mutable and Name.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
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
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AddCustomAttributes AWS API Documentation
    #
    # @overload add_custom_attributes(params = {})
    # @param [Hash] params ({})
    def add_custom_attributes(params = {}, options = {})
      req = build_request(:add_custom_attributes, params)
      req.send_request(options)
    end

    # Adds the specified user to the specified group.
    #
    # Requires developer credentials.
    #
    # @option params [required, String] :user_pool_id
    #   The user pool ID for the user pool.
    #
    # @option params [required, String] :username
    #   The username for the user.
    #
    # @option params [required, String] :group_name
    #   The group name.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.admin_add_user_to_group({
    #     user_pool_id: "UserPoolIdType", # required
    #     username: "UsernameType", # required
    #     group_name: "GroupNameType", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AdminAddUserToGroup AWS API Documentation
    #
    # @overload admin_add_user_to_group(params = {})
    # @param [Hash] params ({})
    def admin_add_user_to_group(params = {}, options = {})
      req = build_request(:admin_add_user_to_group, params)
      req.send_request(options)
    end

    # Confirms user registration as an admin without using a confirmation
    # code. Works on any user.
    #
    # Requires developer credentials.
    #
    # @option params [required, String] :user_pool_id
    #   The user pool ID for which you want to confirm user registration.
    #
    # @option params [required, String] :username
    #   The user name for which you want to confirm user registration.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.admin_confirm_sign_up({
    #     user_pool_id: "UserPoolIdType", # required
    #     username: "UsernameType", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AdminConfirmSignUp AWS API Documentation
    #
    # @overload admin_confirm_sign_up(params = {})
    # @param [Hash] params ({})
    def admin_confirm_sign_up(params = {}, options = {})
      req = build_request(:admin_confirm_sign_up, params)
      req.send_request(options)
    end

    # Creates a new user in the specified user pool and sends a welcome
    # message via email or phone (SMS). This message is based on a template
    # that you configured in your call to
    # [CreateUserPool](API_CreateUserPool.html) or
    # [UpdateUserPool](API_UpdateUserPool.html). This template includes your
    # custom sign-up instructions and placeholders for user name and
    # temporary password.
    #
    # Requires developer credentials.
    #
    # @option params [required, String] :user_pool_id
    #   The user pool ID for the user pool where the user will be created.
    #
    # @option params [required, String] :username
    #   The username for the user. Must be unique within the user pool. Must
    #   be a UTF-8 string between 1 and 128 characters. After the user is
    #   created, the username cannot be changed.
    #
    # @option params [Array<Types::AttributeType>] :user_attributes
    #   An array of name-value pairs that contain user attributes and
    #   attribute values to be set for the user to be created. You can create
    #   a user without specifying any attributes other than `Username`.
    #   However, any attributes that you specify as required (in
    #   [CreateUserPool](API_CreateUserPool.html) or in the **Attributes** tab
    #   of the console) must be supplied either by you (in your call to
    #   `AdminCreateUser`) or by the user (when he or she signs up in response
    #   to your welcome message).
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
    #   attribute to `True`. (You can also do this by calling
    #   [AdminUpdateUserAttributes](API_AdminUpdateUserAttributes.html).)
    #
    #   * **email**\: The email address of the user to whom the message that
    #     contains the code and username will be sent. Required if the
    #     `email_verified` attribute is set to `True`, or if `"EMAIL"` is
    #     specified in the `DesiredDeliveryMediums` parameter.
    #
    #   * **phone\_number**\: The phone number of the user to whom the message
    #     that contains the code and username will be sent. Required if the
    #     `phone_number_verified` attribute is set to `True`, or if `"SMS"` is
    #     specified in the `DesiredDeliveryMediums` parameter.
    #
    # @option params [Array<Types::AttributeType>] :validation_data
    #   The user's validation data. This is an array of name-value pairs that
    #   contain user attributes and attribute values that you can use for
    #   custom validation, such as restricting the types of user accounts that
    #   can be registered. For example, you might choose to allow or disallow
    #   user sign-up based on the user's domain.
    #
    #   To configure custom validation, you must create a Pre Sign-up Lambda
    #   trigger for the user pool as described in the Amazon Cognito Developer
    #   Guide. The Lambda trigger receives the validation data and uses it in
    #   the validation process.
    #
    #   The user's validation data is not persisted.
    #
    # @option params [String] :temporary_password
    #   The user's temporary password. This password must conform to the
    #   password policy that you specified when you created the user pool.
    #
    #   The temporary password is valid only once. To complete the Admin
    #   Create User flow, the user must enter the temporary password in the
    #   sign-in page along with a new password to be used in all future
    #   sign-ins.
    #
    #   This parameter is not required. If you do not specify a value, Amazon
    #   Cognito generates one for you.
    #
    #   The temporary password can only be used until the user account
    #   expiration limit that you specified when you created the user pool. To
    #   reset the account after that time limit, you must call
    #   `AdminCreateUser` again, specifying `"RESEND"` for the `MessageAction`
    #   parameter.
    #
    # @option params [Boolean] :force_alias_creation
    #   This parameter is only used if the `phone_number_verified` or
    #   `email_verified` attribute is set to `True`. Otherwise, it is ignored.
    #
    #   If this parameter is set to `True` and the phone number or email
    #   address specified in the UserAttributes parameter already exists as an
    #   alias with a different user, the API call will migrate the alias from
    #   the previous user to the newly created user. The previous user will no
    #   longer be able to log in using that alias.
    #
    #   If this parameter is set to `False`, the API throws an
    #   `AliasExistsException` error if the alias already exists. The default
    #   value is `False`.
    #
    # @option params [String] :message_action
    #   Set to `"RESEND"` to resend the invitation message to a user that
    #   already exists and reset the expiration limit on the user's account.
    #   Set to `"SUPPRESS"` to suppress sending the message. Only one value
    #   can be specified.
    #
    # @option params [Array<String>] :desired_delivery_mediums
    #   Specify `"EMAIL"` if email will be used to send the welcome message.
    #   Specify `"SMS"` if the phone number will be used. The default value is
    #   `"SMS"`. More than one value can be specified.
    #
    # @return [Types::AdminCreateUserResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AdminCreateUserResponse#user #user} => Types::UserType
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.admin_create_user({
    #     user_pool_id: "UserPoolIdType", # required
    #     username: "UsernameType", # required
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
    #     temporary_password: "PasswordType",
    #     force_alias_creation: false,
    #     message_action: "RESEND", # accepts RESEND, SUPPRESS
    #     desired_delivery_mediums: ["SMS"], # accepts SMS, EMAIL
    #   })
    #
    # @example Response structure
    #
    #   resp.user.username #=> String
    #   resp.user.attributes #=> Array
    #   resp.user.attributes[0].name #=> String
    #   resp.user.attributes[0].value #=> String
    #   resp.user.user_create_date #=> Time
    #   resp.user.user_last_modified_date #=> Time
    #   resp.user.enabled #=> Boolean
    #   resp.user.user_status #=> String, one of "UNCONFIRMED", "CONFIRMED", "ARCHIVED", "COMPROMISED", "UNKNOWN", "RESET_REQUIRED", "FORCE_CHANGE_PASSWORD"
    #   resp.user.mfa_options #=> Array
    #   resp.user.mfa_options[0].delivery_medium #=> String, one of "SMS", "EMAIL"
    #   resp.user.mfa_options[0].attribute_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AdminCreateUser AWS API Documentation
    #
    # @overload admin_create_user(params = {})
    # @param [Hash] params ({})
    def admin_create_user(params = {}, options = {})
      req = build_request(:admin_create_user, params)
      req.send_request(options)
    end

    # Deletes a user as an administrator. Works on any user.
    #
    # Requires developer credentials.
    #
    # @option params [required, String] :user_pool_id
    #   The user pool ID for the user pool where you want to delete the user.
    #
    # @option params [required, String] :username
    #   The user name of the user you wish to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.admin_delete_user({
    #     user_pool_id: "UserPoolIdType", # required
    #     username: "UsernameType", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AdminDeleteUser AWS API Documentation
    #
    # @overload admin_delete_user(params = {})
    # @param [Hash] params ({})
    def admin_delete_user(params = {}, options = {})
      req = build_request(:admin_delete_user, params)
      req.send_request(options)
    end

    # Deletes the user attributes in a user pool as an administrator. Works
    # on any user.
    #
    # Requires developer credentials.
    #
    # @option params [required, String] :user_pool_id
    #   The user pool ID for the user pool where you want to delete user
    #   attributes.
    #
    # @option params [required, String] :username
    #   The user name of the user from which you would like to delete
    #   attributes.
    #
    # @option params [required, Array<String>] :user_attribute_names
    #   An array of strings representing the user attribute names you wish to
    #   delete.
    #
    #   For custom attributes, you must prepend the `custom:` prefix to the
    #   attribute name.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.admin_delete_user_attributes({
    #     user_pool_id: "UserPoolIdType", # required
    #     username: "UsernameType", # required
    #     user_attribute_names: ["AttributeNameType"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AdminDeleteUserAttributes AWS API Documentation
    #
    # @overload admin_delete_user_attributes(params = {})
    # @param [Hash] params ({})
    def admin_delete_user_attributes(params = {}, options = {})
      req = build_request(:admin_delete_user_attributes, params)
      req.send_request(options)
    end

    # Disables the specified user as an administrator. Works on any user.
    #
    # Requires developer credentials.
    #
    # @option params [required, String] :user_pool_id
    #   The user pool ID for the user pool where you want to disable the user.
    #
    # @option params [required, String] :username
    #   The user name of the user you wish to disable.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.admin_disable_user({
    #     user_pool_id: "UserPoolIdType", # required
    #     username: "UsernameType", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AdminDisableUser AWS API Documentation
    #
    # @overload admin_disable_user(params = {})
    # @param [Hash] params ({})
    def admin_disable_user(params = {}, options = {})
      req = build_request(:admin_disable_user, params)
      req.send_request(options)
    end

    # Enables the specified user as an administrator. Works on any user.
    #
    # Requires developer credentials.
    #
    # @option params [required, String] :user_pool_id
    #   The user pool ID for the user pool where you want to enable the user.
    #
    # @option params [required, String] :username
    #   The user name of the user you wish to enable.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.admin_enable_user({
    #     user_pool_id: "UserPoolIdType", # required
    #     username: "UsernameType", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AdminEnableUser AWS API Documentation
    #
    # @overload admin_enable_user(params = {})
    # @param [Hash] params ({})
    def admin_enable_user(params = {}, options = {})
      req = build_request(:admin_enable_user, params)
      req.send_request(options)
    end

    # Forgets the device, as an administrator.
    #
    # Requires developer credentials.
    #
    # @option params [required, String] :user_pool_id
    #   The user pool ID.
    #
    # @option params [required, String] :username
    #   The user name.
    #
    # @option params [required, String] :device_key
    #   The device key.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.admin_forget_device({
    #     user_pool_id: "UserPoolIdType", # required
    #     username: "UsernameType", # required
    #     device_key: "DeviceKeyType", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AdminForgetDevice AWS API Documentation
    #
    # @overload admin_forget_device(params = {})
    # @param [Hash] params ({})
    def admin_forget_device(params = {}, options = {})
      req = build_request(:admin_forget_device, params)
      req.send_request(options)
    end

    # Gets the device, as an administrator.
    #
    # Requires developer credentials.
    #
    # @option params [required, String] :device_key
    #   The device key.
    #
    # @option params [required, String] :user_pool_id
    #   The user pool ID.
    #
    # @option params [required, String] :username
    #   The user name.
    #
    # @return [Types::AdminGetDeviceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AdminGetDeviceResponse#device #device} => Types::DeviceType
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.admin_get_device({
    #     device_key: "DeviceKeyType", # required
    #     user_pool_id: "UserPoolIdType", # required
    #     username: "UsernameType", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.device.device_key #=> String
    #   resp.device.device_attributes #=> Array
    #   resp.device.device_attributes[0].name #=> String
    #   resp.device.device_attributes[0].value #=> String
    #   resp.device.device_create_date #=> Time
    #   resp.device.device_last_modified_date #=> Time
    #   resp.device.device_last_authenticated_date #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AdminGetDevice AWS API Documentation
    #
    # @overload admin_get_device(params = {})
    # @param [Hash] params ({})
    def admin_get_device(params = {}, options = {})
      req = build_request(:admin_get_device, params)
      req.send_request(options)
    end

    # Gets the specified user by user name in a user pool as an
    # administrator. Works on any user.
    #
    # Requires developer credentials.
    #
    # @option params [required, String] :user_pool_id
    #   The user pool ID for the user pool where you want to get information
    #   about the user.
    #
    # @option params [required, String] :username
    #   The user name of the user you wish to retrieve.
    #
    # @return [Types::AdminGetUserResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AdminGetUserResponse#username #username} => String
    #   * {Types::AdminGetUserResponse#user_attributes #user_attributes} => Array&lt;Types::AttributeType&gt;
    #   * {Types::AdminGetUserResponse#user_create_date #user_create_date} => Time
    #   * {Types::AdminGetUserResponse#user_last_modified_date #user_last_modified_date} => Time
    #   * {Types::AdminGetUserResponse#enabled #enabled} => Boolean
    #   * {Types::AdminGetUserResponse#user_status #user_status} => String
    #   * {Types::AdminGetUserResponse#mfa_options #mfa_options} => Array&lt;Types::MFAOptionType&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.admin_get_user({
    #     user_pool_id: "UserPoolIdType", # required
    #     username: "UsernameType", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.username #=> String
    #   resp.user_attributes #=> Array
    #   resp.user_attributes[0].name #=> String
    #   resp.user_attributes[0].value #=> String
    #   resp.user_create_date #=> Time
    #   resp.user_last_modified_date #=> Time
    #   resp.enabled #=> Boolean
    #   resp.user_status #=> String, one of "UNCONFIRMED", "CONFIRMED", "ARCHIVED", "COMPROMISED", "UNKNOWN", "RESET_REQUIRED", "FORCE_CHANGE_PASSWORD"
    #   resp.mfa_options #=> Array
    #   resp.mfa_options[0].delivery_medium #=> String, one of "SMS", "EMAIL"
    #   resp.mfa_options[0].attribute_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AdminGetUser AWS API Documentation
    #
    # @overload admin_get_user(params = {})
    # @param [Hash] params ({})
    def admin_get_user(params = {}, options = {})
      req = build_request(:admin_get_user, params)
      req.send_request(options)
    end

    # Initiates the authentication flow, as an administrator.
    #
    # Requires developer credentials.
    #
    # @option params [required, String] :user_pool_id
    #   The ID of the Amazon Cognito user pool.
    #
    # @option params [required, String] :client_id
    #   The app client ID.
    #
    # @option params [required, String] :auth_flow
    #   The authentication flow for this call to execute. The API action will
    #   depend on this value. For example:
    #
    #   * `REFRESH_TOKEN_AUTH` will take in a valid refresh token and return
    #     new tokens.
    #
    #   * `USER_SRP_AUTH` will take in `USERNAME` and `SRPA` and return the
    #     SRP variables to be used for next challenge execution.
    #
    #   Valid values include:
    #
    #   * `USER_SRP_AUTH`\: Authentication flow for the Secure Remote Password
    #     (SRP) protocol.
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
    # @option params [Hash<String,String>] :auth_parameters
    #   The authentication parameters. These are inputs corresponding to the
    #   `AuthFlow` that you are invoking. The required values depend on the
    #   value of `AuthFlow`\:
    #
    #   * For `USER_SRP_AUTH`\: `USERNAME` (required), `SRPA` (required),
    #     `SECRET_HASH` (required if the app client is configured with a
    #     client secret), `DEVICE_KEY`
    #
    #   * For `REFRESH_TOKEN_AUTH/REFRESH_TOKEN`\: `USERNAME` (required),
    #     `SECRET_HASH` (required if the app client is configured with a
    #     client secret), `REFRESH_TOKEN` (required), `DEVICE_KEY`
    #
    #   * For `ADMIN_NO_SRP_AUTH`\: `USERNAME` (required), `SECRET_HASH` (if
    #     app client is configured with client secret), `PASSWORD` (required),
    #     `DEVICE_KEY`
    #
    #   * For `CUSTOM_AUTH`\: `USERNAME` (required), `SECRET_HASH` (if app
    #     client is configured with client secret), `DEVICE_KEY`
    #
    # @option params [Hash<String,String>] :client_metadata
    #   This is a random key-value pair map which can contain any key and will
    #   be passed to your PreAuthentication Lambda trigger as-is. It can be
    #   used to implement additional validations around authentication.
    #
    # @return [Types::AdminInitiateAuthResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AdminInitiateAuthResponse#challenge_name #challenge_name} => String
    #   * {Types::AdminInitiateAuthResponse#session #session} => String
    #   * {Types::AdminInitiateAuthResponse#challenge_parameters #challenge_parameters} => Hash&lt;String,String&gt;
    #   * {Types::AdminInitiateAuthResponse#authentication_result #authentication_result} => Types::AuthenticationResultType
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.admin_initiate_auth({
    #     user_pool_id: "UserPoolIdType", # required
    #     client_id: "ClientIdType", # required
    #     auth_flow: "USER_SRP_AUTH", # required, accepts USER_SRP_AUTH, REFRESH_TOKEN_AUTH, REFRESH_TOKEN, CUSTOM_AUTH, ADMIN_NO_SRP_AUTH
    #     auth_parameters: {
    #       "StringType" => "StringType",
    #     },
    #     client_metadata: {
    #       "StringType" => "StringType",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.challenge_name #=> String, one of "SMS_MFA", "PASSWORD_VERIFIER", "CUSTOM_CHALLENGE", "DEVICE_SRP_AUTH", "DEVICE_PASSWORD_VERIFIER", "ADMIN_NO_SRP_AUTH", "NEW_PASSWORD_REQUIRED"
    #   resp.session #=> String
    #   resp.challenge_parameters #=> Hash
    #   resp.challenge_parameters["StringType"] #=> String
    #   resp.authentication_result.access_token #=> String
    #   resp.authentication_result.expires_in #=> Integer
    #   resp.authentication_result.token_type #=> String
    #   resp.authentication_result.refresh_token #=> String
    #   resp.authentication_result.id_token #=> String
    #   resp.authentication_result.new_device_metadata.device_key #=> String
    #   resp.authentication_result.new_device_metadata.device_group_key #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AdminInitiateAuth AWS API Documentation
    #
    # @overload admin_initiate_auth(params = {})
    # @param [Hash] params ({})
    def admin_initiate_auth(params = {}, options = {})
      req = build_request(:admin_initiate_auth, params)
      req.send_request(options)
    end

    # Lists devices, as an administrator.
    #
    # Requires developer credentials.
    #
    # @option params [required, String] :user_pool_id
    #   The user pool ID.
    #
    # @option params [required, String] :username
    #   The user name.
    #
    # @option params [Integer] :limit
    #   The limit of the devices request.
    #
    # @option params [String] :pagination_token
    #   The pagination token.
    #
    # @return [Types::AdminListDevicesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AdminListDevicesResponse#devices #devices} => Array&lt;Types::DeviceType&gt;
    #   * {Types::AdminListDevicesResponse#pagination_token #pagination_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.admin_list_devices({
    #     user_pool_id: "UserPoolIdType", # required
    #     username: "UsernameType", # required
    #     limit: 1,
    #     pagination_token: "SearchPaginationTokenType",
    #   })
    #
    # @example Response structure
    #
    #   resp.devices #=> Array
    #   resp.devices[0].device_key #=> String
    #   resp.devices[0].device_attributes #=> Array
    #   resp.devices[0].device_attributes[0].name #=> String
    #   resp.devices[0].device_attributes[0].value #=> String
    #   resp.devices[0].device_create_date #=> Time
    #   resp.devices[0].device_last_modified_date #=> Time
    #   resp.devices[0].device_last_authenticated_date #=> Time
    #   resp.pagination_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AdminListDevices AWS API Documentation
    #
    # @overload admin_list_devices(params = {})
    # @param [Hash] params ({})
    def admin_list_devices(params = {}, options = {})
      req = build_request(:admin_list_devices, params)
      req.send_request(options)
    end

    # Lists the groups that the user belongs to.
    #
    # Requires developer credentials.
    #
    # @option params [required, String] :username
    #   The username for the user.
    #
    # @option params [required, String] :user_pool_id
    #   The user pool ID for the user pool.
    #
    # @option params [Integer] :limit
    #   The limit of the request to list groups.
    #
    # @option params [String] :next_token
    #   An identifier that was returned from the previous call to this
    #   operation, which can be used to return the next set of items in the
    #   list.
    #
    # @return [Types::AdminListGroupsForUserResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AdminListGroupsForUserResponse#groups #groups} => Array&lt;Types::GroupType&gt;
    #   * {Types::AdminListGroupsForUserResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.admin_list_groups_for_user({
    #     username: "UsernameType", # required
    #     user_pool_id: "UserPoolIdType", # required
    #     limit: 1,
    #     next_token: "PaginationKey",
    #   })
    #
    # @example Response structure
    #
    #   resp.groups #=> Array
    #   resp.groups[0].group_name #=> String
    #   resp.groups[0].user_pool_id #=> String
    #   resp.groups[0].description #=> String
    #   resp.groups[0].role_arn #=> String
    #   resp.groups[0].precedence #=> Integer
    #   resp.groups[0].last_modified_date #=> Time
    #   resp.groups[0].creation_date #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AdminListGroupsForUser AWS API Documentation
    #
    # @overload admin_list_groups_for_user(params = {})
    # @param [Hash] params ({})
    def admin_list_groups_for_user(params = {}, options = {})
      req = build_request(:admin_list_groups_for_user, params)
      req.send_request(options)
    end

    # Removes the specified user from the specified group.
    #
    # Requires developer credentials.
    #
    # @option params [required, String] :user_pool_id
    #   The user pool ID for the user pool.
    #
    # @option params [required, String] :username
    #   The username for the user.
    #
    # @option params [required, String] :group_name
    #   The group name.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.admin_remove_user_from_group({
    #     user_pool_id: "UserPoolIdType", # required
    #     username: "UsernameType", # required
    #     group_name: "GroupNameType", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AdminRemoveUserFromGroup AWS API Documentation
    #
    # @overload admin_remove_user_from_group(params = {})
    # @param [Hash] params ({})
    def admin_remove_user_from_group(params = {}, options = {})
      req = build_request(:admin_remove_user_from_group, params)
      req.send_request(options)
    end

    # Resets the specified user's password in a user pool as an
    # administrator. Works on any user.
    #
    # When a developer calls this API, the current password is invalidated,
    # so it must be changed. If a user tries to sign in after the API is
    # called, the app will get a PasswordResetRequiredException exception
    # back and should direct the user down the flow to reset the password,
    # which is the same as the forgot password flow. In addition, if the
    # user pool has phone verification selected and a verified phone number
    # exists for the user, or if email verification is selected and a
    # verified email exists for the user, calling this API will also result
    # in sending a message to the end user with the code to change their
    # password.
    #
    # Requires developer credentials.
    #
    # @option params [required, String] :user_pool_id
    #   The user pool ID for the user pool where you want to reset the user's
    #   password.
    #
    # @option params [required, String] :username
    #   The user name of the user whose password you wish to reset.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.admin_reset_user_password({
    #     user_pool_id: "UserPoolIdType", # required
    #     username: "UsernameType", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AdminResetUserPassword AWS API Documentation
    #
    # @overload admin_reset_user_password(params = {})
    # @param [Hash] params ({})
    def admin_reset_user_password(params = {}, options = {})
      req = build_request(:admin_reset_user_password, params)
      req.send_request(options)
    end

    # Responds to an authentication challenge, as an administrator.
    #
    # Requires developer credentials.
    #
    # @option params [required, String] :user_pool_id
    #   The ID of the Amazon Cognito user pool.
    #
    # @option params [required, String] :client_id
    #   The app client ID.
    #
    # @option params [required, String] :challenge_name
    #   The challenge name. For more information, see
    #   [AdminInitiateAuth](API_AdminInitiateAuth.html).
    #
    # @option params [Hash<String,String>] :challenge_responses
    #   The challenge responses. These are inputs corresponding to the value
    #   of `ChallengeName`, for example:
    #
    #   * `SMS_MFA`\: `SMS_MFA_CODE`, `USERNAME`, `SECRET_HASH` (if app client
    #     is configured with client secret).
    #
    #   * `PASSWORD_VERIFIER`\: `PASSWORD_CLAIM_SIGNATURE`,
    #     `PASSWORD_CLAIM_SECRET_BLOCK`, `TIMESTAMP`, `USERNAME`,
    #     `SECRET_HASH` (if app client is configured with client secret).
    #
    #   * `ADMIN_NO_SRP_AUTH`\: `PASSWORD`, `USERNAME`, `SECRET_HASH` (if app
    #     client is configured with client secret).
    #
    #   * `NEW_PASSWORD_REQUIRED`\: `NEW_PASSWORD`, any other required
    #     attributes, `USERNAME`, `SECRET_HASH` (if app client is configured
    #     with client secret).
    #
    #   The value of the `USERNAME` attribute must be the user's actual
    #   username, not an alias (such as email address or phone number). To
    #   make this easier, the `AdminInitiateAuth` response includes the actual
    #   username value in the `USERNAMEUSER_ID_FOR_SRP` attribute, even if you
    #   specified an alias in your call to `AdminInitiateAuth`.
    #
    # @option params [String] :session
    #   The session which should be passed both ways in challenge-response
    #   calls to the service. If `InitiateAuth` or `RespondToAuthChallenge`
    #   API call determines that the caller needs to go through another
    #   challenge, they return a session with other challenge parameters. This
    #   session should be passed as it is to the next `RespondToAuthChallenge`
    #   API call.
    #
    # @return [Types::AdminRespondToAuthChallengeResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AdminRespondToAuthChallengeResponse#challenge_name #challenge_name} => String
    #   * {Types::AdminRespondToAuthChallengeResponse#session #session} => String
    #   * {Types::AdminRespondToAuthChallengeResponse#challenge_parameters #challenge_parameters} => Hash&lt;String,String&gt;
    #   * {Types::AdminRespondToAuthChallengeResponse#authentication_result #authentication_result} => Types::AuthenticationResultType
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.admin_respond_to_auth_challenge({
    #     user_pool_id: "UserPoolIdType", # required
    #     client_id: "ClientIdType", # required
    #     challenge_name: "SMS_MFA", # required, accepts SMS_MFA, PASSWORD_VERIFIER, CUSTOM_CHALLENGE, DEVICE_SRP_AUTH, DEVICE_PASSWORD_VERIFIER, ADMIN_NO_SRP_AUTH, NEW_PASSWORD_REQUIRED
    #     challenge_responses: {
    #       "StringType" => "StringType",
    #     },
    #     session: "SessionType",
    #   })
    #
    # @example Response structure
    #
    #   resp.challenge_name #=> String, one of "SMS_MFA", "PASSWORD_VERIFIER", "CUSTOM_CHALLENGE", "DEVICE_SRP_AUTH", "DEVICE_PASSWORD_VERIFIER", "ADMIN_NO_SRP_AUTH", "NEW_PASSWORD_REQUIRED"
    #   resp.session #=> String
    #   resp.challenge_parameters #=> Hash
    #   resp.challenge_parameters["StringType"] #=> String
    #   resp.authentication_result.access_token #=> String
    #   resp.authentication_result.expires_in #=> Integer
    #   resp.authentication_result.token_type #=> String
    #   resp.authentication_result.refresh_token #=> String
    #   resp.authentication_result.id_token #=> String
    #   resp.authentication_result.new_device_metadata.device_key #=> String
    #   resp.authentication_result.new_device_metadata.device_group_key #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AdminRespondToAuthChallenge AWS API Documentation
    #
    # @overload admin_respond_to_auth_challenge(params = {})
    # @param [Hash] params ({})
    def admin_respond_to_auth_challenge(params = {}, options = {})
      req = build_request(:admin_respond_to_auth_challenge, params)
      req.send_request(options)
    end

    # Sets all the user settings for a specified user name. Works on any
    # user.
    #
    # Requires developer credentials.
    #
    # @option params [required, String] :user_pool_id
    #   The user pool ID for the user pool where you want to set the user's
    #   settings, such as MFA options.
    #
    # @option params [required, String] :username
    #   The user name of the user for whom you wish to set user settings.
    #
    # @option params [required, Array<Types::MFAOptionType>] :mfa_options
    #   Specifies the options for MFA (e.g., email or phone number).
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
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
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AdminSetUserSettings AWS API Documentation
    #
    # @overload admin_set_user_settings(params = {})
    # @param [Hash] params ({})
    def admin_set_user_settings(params = {}, options = {})
      req = build_request(:admin_set_user_settings, params)
      req.send_request(options)
    end

    # Updates the device status as an administrator.
    #
    # Requires developer credentials.
    #
    # @option params [required, String] :user_pool_id
    #   The user pool ID.
    #
    # @option params [required, String] :username
    #   The user name.
    #
    # @option params [required, String] :device_key
    #   The device key.
    #
    # @option params [String] :device_remembered_status
    #   The status indicating whether a device has been remembered or not.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.admin_update_device_status({
    #     user_pool_id: "UserPoolIdType", # required
    #     username: "UsernameType", # required
    #     device_key: "DeviceKeyType", # required
    #     device_remembered_status: "remembered", # accepts remembered, not_remembered
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AdminUpdateDeviceStatus AWS API Documentation
    #
    # @overload admin_update_device_status(params = {})
    # @param [Hash] params ({})
    def admin_update_device_status(params = {}, options = {})
      req = build_request(:admin_update_device_status, params)
      req.send_request(options)
    end

    # Updates the specified user's attributes, including developer
    # attributes, as an administrator. Works on any user.
    #
    # For custom attributes, you must prepend the `custom:` prefix to the
    # attribute name.
    #
    # In addition to updating user attributes, this API can also be used to
    # mark phone and email as verified.
    #
    # Requires developer credentials.
    #
    # @option params [required, String] :user_pool_id
    #   The user pool ID for the user pool where you want to update user
    #   attributes.
    #
    # @option params [required, String] :username
    #   The user name of the user for whom you want to update user attributes.
    #
    # @option params [required, Array<Types::AttributeType>] :user_attributes
    #   An array of name-value pairs representing user attributes.
    #
    #   For custom attributes, you must prepend the `custom:` prefix to the
    #   attribute name.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
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
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AdminUpdateUserAttributes AWS API Documentation
    #
    # @overload admin_update_user_attributes(params = {})
    # @param [Hash] params ({})
    def admin_update_user_attributes(params = {}, options = {})
      req = build_request(:admin_update_user_attributes, params)
      req.send_request(options)
    end

    # Signs out users from all devices, as an administrator.
    #
    # Requires developer credentials.
    #
    # @option params [required, String] :user_pool_id
    #   The user pool ID.
    #
    # @option params [required, String] :username
    #   The user name.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.admin_user_global_sign_out({
    #     user_pool_id: "UserPoolIdType", # required
    #     username: "UsernameType", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AdminUserGlobalSignOut AWS API Documentation
    #
    # @overload admin_user_global_sign_out(params = {})
    # @param [Hash] params ({})
    def admin_user_global_sign_out(params = {}, options = {})
      req = build_request(:admin_user_global_sign_out, params)
      req.send_request(options)
    end

    # Changes the password for a specified user in a user pool.
    #
    # @option params [required, String] :previous_password
    #   The old password in the change password request.
    #
    # @option params [required, String] :proposed_password
    #   The new password in the change password request.
    #
    # @option params [required, String] :access_token
    #   The access token in the change password request.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.change_password({
    #     previous_password: "PasswordType", # required
    #     proposed_password: "PasswordType", # required
    #     access_token: "TokenModelType", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/ChangePassword AWS API Documentation
    #
    # @overload change_password(params = {})
    # @param [Hash] params ({})
    def change_password(params = {}, options = {})
      req = build_request(:change_password, params)
      req.send_request(options)
    end

    # Confirms tracking of the device. This API call is the call that begins
    # device tracking.
    #
    # @option params [required, String] :access_token
    #   The access token.
    #
    # @option params [required, String] :device_key
    #   The device key.
    #
    # @option params [Types::DeviceSecretVerifierConfigType] :device_secret_verifier_config
    #   The configuration of the device secret verifier.
    #
    # @option params [String] :device_name
    #   The device name.
    #
    # @return [Types::ConfirmDeviceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ConfirmDeviceResponse#user_confirmation_necessary #user_confirmation_necessary} => Boolean
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.confirm_device({
    #     access_token: "TokenModelType", # required
    #     device_key: "DeviceKeyType", # required
    #     device_secret_verifier_config: {
    #       password_verifier: "StringType",
    #       salt: "StringType",
    #     },
    #     device_name: "DeviceNameType",
    #   })
    #
    # @example Response structure
    #
    #   resp.user_confirmation_necessary #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/ConfirmDevice AWS API Documentation
    #
    # @overload confirm_device(params = {})
    # @param [Hash] params ({})
    def confirm_device(params = {}, options = {})
      req = build_request(:confirm_device, params)
      req.send_request(options)
    end

    # Allows a user to enter a confirmation code to reset a forgotten
    # password.
    #
    # @option params [required, String] :client_id
    #   The ID of the client associated with the user pool.
    #
    # @option params [String] :secret_hash
    #   A keyed-hash message authentication code (HMAC) calculated using the
    #   secret key of a user pool client and username plus the client ID in
    #   the message.
    #
    # @option params [required, String] :username
    #   The user name of the user for whom you want to enter a code to
    #   retrieve a forgotten password.
    #
    # @option params [required, String] :confirmation_code
    #   The confirmation code sent by a user's request to retrieve a
    #   forgotten password. For more information, see
    #   [ForgotPassword](API_ForgotPassword.html)
    #
    # @option params [required, String] :password
    #   The password sent by a user's request to retrieve a forgotten
    #   password.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.confirm_forgot_password({
    #     client_id: "ClientIdType", # required
    #     secret_hash: "SecretHashType",
    #     username: "UsernameType", # required
    #     confirmation_code: "ConfirmationCodeType", # required
    #     password: "PasswordType", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/ConfirmForgotPassword AWS API Documentation
    #
    # @overload confirm_forgot_password(params = {})
    # @param [Hash] params ({})
    def confirm_forgot_password(params = {}, options = {})
      req = build_request(:confirm_forgot_password, params)
      req.send_request(options)
    end

    # Confirms registration of a user and handles the existing alias from a
    # previous user.
    #
    # @option params [required, String] :client_id
    #   The ID of the client associated with the user pool.
    #
    # @option params [String] :secret_hash
    #   A keyed-hash message authentication code (HMAC) calculated using the
    #   secret key of a user pool client and username plus the client ID in
    #   the message.
    #
    # @option params [required, String] :username
    #   The user name of the user whose registration you wish to confirm.
    #
    # @option params [required, String] :confirmation_code
    #   The confirmation code sent by a user's request to confirm
    #   registration.
    #
    # @option params [Boolean] :force_alias_creation
    #   Boolean to be specified to force user confirmation irrespective of
    #   existing alias. By default set to `False`. If this parameter is set to
    #   `True` and the phone number/email used for sign up confirmation
    #   already exists as an alias with a different user, the API call will
    #   migrate the alias from the previous user to the newly created user
    #   being confirmed. If set to `False`, the API will throw an
    #   **AliasExistsException** error.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.confirm_sign_up({
    #     client_id: "ClientIdType", # required
    #     secret_hash: "SecretHashType",
    #     username: "UsernameType", # required
    #     confirmation_code: "ConfirmationCodeType", # required
    #     force_alias_creation: false,
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/ConfirmSignUp AWS API Documentation
    #
    # @overload confirm_sign_up(params = {})
    # @param [Hash] params ({})
    def confirm_sign_up(params = {}, options = {})
      req = build_request(:confirm_sign_up, params)
      req.send_request(options)
    end

    # Creates a new group in the specified user pool.
    #
    # Requires developer credentials.
    #
    # @option params [required, String] :group_name
    #   The name of the group. Must be unique.
    #
    # @option params [required, String] :user_pool_id
    #   The user pool ID for the user pool.
    #
    # @option params [String] :description
    #   A string containing the description of the group.
    #
    # @option params [String] :role_arn
    #   The role ARN for the group.
    #
    # @option params [Integer] :precedence
    #   A nonnegative integer value that specifies the precedence of this
    #   group relative to the other groups that a user can belong to in the
    #   user pool. Zero is the highest precedence value. Groups with lower
    #   `Precedence` values take precedence over groups with higher or null
    #   `Precedence` values. If a user belongs to two or more groups, it is
    #   the group with the lowest precedence value whose role ARN will be used
    #   in the `cognito:roles` and `cognito:preferred_role` claims in the
    #   user's tokens.
    #
    #   Two groups can have the same `Precedence` value. If this happens,
    #   neither group takes precedence over the other. If two groups with the
    #   same `Precedence` have the same role ARN, that role is used in the
    #   `cognito:preferred_role` claim in tokens for users in each group. If
    #   the two groups have different role ARNs, the `cognito:preferred_role`
    #   claim is not set in users' tokens.
    #
    #   The default `Precedence` value is null.
    #
    # @return [Types::CreateGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateGroupResponse#group #group} => Types::GroupType
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_group({
    #     group_name: "GroupNameType", # required
    #     user_pool_id: "UserPoolIdType", # required
    #     description: "DescriptionType",
    #     role_arn: "ArnType",
    #     precedence: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.group.group_name #=> String
    #   resp.group.user_pool_id #=> String
    #   resp.group.description #=> String
    #   resp.group.role_arn #=> String
    #   resp.group.precedence #=> Integer
    #   resp.group.last_modified_date #=> Time
    #   resp.group.creation_date #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/CreateGroup AWS API Documentation
    #
    # @overload create_group(params = {})
    # @param [Hash] params ({})
    def create_group(params = {}, options = {})
      req = build_request(:create_group, params)
      req.send_request(options)
    end

    # Creates an identity provider for a user pool.
    #
    # @option params [required, String] :user_pool_id
    #   The user pool ID.
    #
    # @option params [required, String] :provider_name
    #   The identity provider name.
    #
    # @option params [required, String] :provider_type
    #   The identity provider type.
    #
    # @option params [required, Hash<String,String>] :provider_details
    #   The identity provider details, such as `MetadataURL` and
    #   `MetadataFile`.
    #
    # @option params [Hash<String,String>] :attribute_mapping
    #   A mapping of identity provider attributes to standard and custom user
    #   pool attributes.
    #
    # @option params [Array<String>] :idp_identifiers
    #   A list of identity provider identifiers.
    #
    # @return [Types::CreateIdentityProviderResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateIdentityProviderResponse#identity_provider #identity_provider} => Types::IdentityProviderType
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_identity_provider({
    #     user_pool_id: "UserPoolIdType", # required
    #     provider_name: "ProviderNameType", # required
    #     provider_type: "SAML", # required, accepts SAML
    #     provider_details: { # required
    #       "StringType" => "StringType",
    #     },
    #     attribute_mapping: {
    #       "CustomAttributeNameType" => "StringType",
    #     },
    #     idp_identifiers: ["IdpIdentifierType"],
    #   })
    #
    # @example Response structure
    #
    #   resp.identity_provider.user_pool_id #=> String
    #   resp.identity_provider.provider_name #=> String
    #   resp.identity_provider.provider_type #=> String, one of "SAML"
    #   resp.identity_provider.provider_details #=> Hash
    #   resp.identity_provider.provider_details["StringType"] #=> String
    #   resp.identity_provider.attribute_mapping #=> Hash
    #   resp.identity_provider.attribute_mapping["CustomAttributeNameType"] #=> String
    #   resp.identity_provider.idp_identifiers #=> Array
    #   resp.identity_provider.idp_identifiers[0] #=> String
    #   resp.identity_provider.last_modified_date #=> Time
    #   resp.identity_provider.creation_date #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/CreateIdentityProvider AWS API Documentation
    #
    # @overload create_identity_provider(params = {})
    # @param [Hash] params ({})
    def create_identity_provider(params = {}, options = {})
      req = build_request(:create_identity_provider, params)
      req.send_request(options)
    end

    # Creates the user import job.
    #
    # @option params [required, String] :job_name
    #   The job name for the user import job.
    #
    # @option params [required, String] :user_pool_id
    #   The user pool ID for the user pool that the users are being imported
    #   into.
    #
    # @option params [required, String] :cloud_watch_logs_role_arn
    #   The role ARN for the Amazon CloudWatch Logging role for the user
    #   import job.
    #
    # @return [Types::CreateUserImportJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateUserImportJobResponse#user_import_job #user_import_job} => Types::UserImportJobType
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_user_import_job({
    #     job_name: "UserImportJobNameType", # required
    #     user_pool_id: "UserPoolIdType", # required
    #     cloud_watch_logs_role_arn: "ArnType", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.user_import_job.job_name #=> String
    #   resp.user_import_job.job_id #=> String
    #   resp.user_import_job.user_pool_id #=> String
    #   resp.user_import_job.pre_signed_url #=> String
    #   resp.user_import_job.creation_date #=> Time
    #   resp.user_import_job.start_date #=> Time
    #   resp.user_import_job.completion_date #=> Time
    #   resp.user_import_job.status #=> String, one of "Created", "Pending", "InProgress", "Stopping", "Expired", "Stopped", "Failed", "Succeeded"
    #   resp.user_import_job.cloud_watch_logs_role_arn #=> String
    #   resp.user_import_job.imported_users #=> Integer
    #   resp.user_import_job.skipped_users #=> Integer
    #   resp.user_import_job.failed_users #=> Integer
    #   resp.user_import_job.completion_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/CreateUserImportJob AWS API Documentation
    #
    # @overload create_user_import_job(params = {})
    # @param [Hash] params ({})
    def create_user_import_job(params = {}, options = {})
      req = build_request(:create_user_import_job, params)
      req.send_request(options)
    end

    # Creates a new Amazon Cognito user pool and sets the password policy
    # for the pool.
    #
    # @option params [required, String] :pool_name
    #   A string used to name the user pool.
    #
    # @option params [Types::UserPoolPolicyType] :policies
    #   The policies associated with the new user pool.
    #
    # @option params [Types::LambdaConfigType] :lambda_config
    #   The Lambda trigger configuration information for the new user pool.
    #
    # @option params [Array<String>] :auto_verified_attributes
    #   The attributes to be auto-verified. Possible values: **email**,
    #   **phone\_number**.
    #
    # @option params [Array<String>] :alias_attributes
    #   Attributes supported as an alias for this user pool. Possible values:
    #   **phone\_number**, **email**, or **preferred\_username**.
    #
    # @option params [String] :sms_verification_message
    #   A string representing the SMS verification message.
    #
    # @option params [String] :email_verification_message
    #   A string representing the email verification message.
    #
    # @option params [String] :email_verification_subject
    #   A string representing the email verification subject.
    #
    # @option params [String] :sms_authentication_message
    #   A string representing the SMS authentication message.
    #
    # @option params [String] :mfa_configuration
    #   Specifies MFA configuration details.
    #
    # @option params [Types::DeviceConfigurationType] :device_configuration
    #   The device configuration.
    #
    # @option params [Types::EmailConfigurationType] :email_configuration
    #   The email configuration.
    #
    # @option params [Types::SmsConfigurationType] :sms_configuration
    #   The SMS configuration.
    #
    # @option params [Hash<String,String>] :user_pool_tags
    #   The cost allocation tags for the user pool. For more information, see
    #   [Adding Cost Allocation Tags to Your User Pool][1]
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-cost-allocation-tagging.html
    #
    # @option params [Types::AdminCreateUserConfigType] :admin_create_user_config
    #   The configuration for `AdminCreateUser` requests.
    #
    # @option params [Array<Types::SchemaAttributeType>] :schema
    #   An array of schema attributes for the new user pool. These attributes
    #   can be standard or custom attributes.
    #
    # @return [Types::CreateUserPoolResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateUserPoolResponse#user_pool #user_pool} => Types::UserPoolType
    #
    # @example Request syntax with placeholder values
    #
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
    #       define_auth_challenge: "ArnType",
    #       create_auth_challenge: "ArnType",
    #       verify_auth_challenge_response: "ArnType",
    #     },
    #     auto_verified_attributes: ["phone_number"], # accepts phone_number, email
    #     alias_attributes: ["phone_number"], # accepts phone_number, email, preferred_username
    #     sms_verification_message: "SmsVerificationMessageType",
    #     email_verification_message: "EmailVerificationMessageType",
    #     email_verification_subject: "EmailVerificationSubjectType",
    #     sms_authentication_message: "SmsVerificationMessageType",
    #     mfa_configuration: "OFF", # accepts OFF, ON, OPTIONAL
    #     device_configuration: {
    #       challenge_required_on_new_device: false,
    #       device_only_remembered_on_user_prompt: false,
    #     },
    #     email_configuration: {
    #       source_arn: "ArnType",
    #       reply_to_email_address: "EmailAddressType",
    #     },
    #     sms_configuration: {
    #       sns_caller_arn: "ArnType", # required
    #       external_id: "StringType",
    #     },
    #     user_pool_tags: {
    #       "StringType" => "StringType",
    #     },
    #     admin_create_user_config: {
    #       allow_admin_create_user_only: false,
    #       unused_account_validity_days: 1,
    #       invite_message_template: {
    #         sms_message: "SmsVerificationMessageType",
    #         email_message: "EmailVerificationMessageType",
    #         email_subject: "EmailVerificationSubjectType",
    #       },
    #     },
    #     schema: [
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
    #
    # @example Response structure
    #
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
    #   resp.user_pool.lambda_config.define_auth_challenge #=> String
    #   resp.user_pool.lambda_config.create_auth_challenge #=> String
    #   resp.user_pool.lambda_config.verify_auth_challenge_response #=> String
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
    #   resp.user_pool.device_configuration.challenge_required_on_new_device #=> Boolean
    #   resp.user_pool.device_configuration.device_only_remembered_on_user_prompt #=> Boolean
    #   resp.user_pool.estimated_number_of_users #=> Integer
    #   resp.user_pool.email_configuration.source_arn #=> String
    #   resp.user_pool.email_configuration.reply_to_email_address #=> String
    #   resp.user_pool.sms_configuration.sns_caller_arn #=> String
    #   resp.user_pool.sms_configuration.external_id #=> String
    #   resp.user_pool.user_pool_tags #=> Hash
    #   resp.user_pool.user_pool_tags["StringType"] #=> String
    #   resp.user_pool.sms_configuration_failure #=> String
    #   resp.user_pool.email_configuration_failure #=> String
    #   resp.user_pool.admin_create_user_config.allow_admin_create_user_only #=> Boolean
    #   resp.user_pool.admin_create_user_config.unused_account_validity_days #=> Integer
    #   resp.user_pool.admin_create_user_config.invite_message_template.sms_message #=> String
    #   resp.user_pool.admin_create_user_config.invite_message_template.email_message #=> String
    #   resp.user_pool.admin_create_user_config.invite_message_template.email_subject #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/CreateUserPool AWS API Documentation
    #
    # @overload create_user_pool(params = {})
    # @param [Hash] params ({})
    def create_user_pool(params = {}, options = {})
      req = build_request(:create_user_pool, params)
      req.send_request(options)
    end

    # Creates the user pool client.
    #
    # @option params [required, String] :user_pool_id
    #   The user pool ID for the user pool where you want to create a user
    #   pool client.
    #
    # @option params [required, String] :client_name
    #   The client name for the user pool client you would like to create.
    #
    # @option params [Boolean] :generate_secret
    #   Boolean to specify whether you want to generate a secret for the user
    #   pool client being created.
    #
    # @option params [Integer] :refresh_token_validity
    #   The time limit, in days, after which the refresh token is no longer
    #   valid and cannot be used.
    #
    # @option params [Array<String>] :read_attributes
    #   The read attributes.
    #
    # @option params [Array<String>] :write_attributes
    #   The write attributes.
    #
    # @option params [Array<String>] :explicit_auth_flows
    #   The explicit authentication flows.
    #
    # @option params [Array<String>] :supported_identity_providers
    #   A list of provider names for the identity providers that are supported
    #   on this client.
    #
    # @option params [Array<String>] :callback_urls
    #   A list of allowed callback URLs for the identity providers.
    #
    # @option params [Array<String>] :logout_urls
    #   A list of allowed logout URLs for the identity providers.
    #
    # @option params [String] :default_redirect_uri
    #   The default redirect URI. Must be in the `CallbackURLs` list.
    #
    # @option params [Array<String>] :allowed_o_auth_flows
    #   Set to `code` to initiate a code grant flow, which provides an
    #   authorization code as the response. This code can be exchanged for
    #   access tokens with the token endpoint.
    #
    #   Set to `token` to specify that the client should get the access token
    #   (and, optionally, ID token, based on scopes) directly.
    #
    # @option params [Array<String>] :allowed_o_auth_scopes
    #   A list of allowed `OAuth` scopes. Currently supported values are
    #   `"phone"`, `"email"`, `"openid"`, and `"Cognito"`.
    #
    # @option params [Boolean] :allowed_o_auth_flows_user_pool_client
    #   Set to `True` if the client is allowed to follow the OAuth protocol
    #   when interacting with Cognito user pools.
    #
    # @return [Types::CreateUserPoolClientResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateUserPoolClientResponse#user_pool_client #user_pool_client} => Types::UserPoolClientType
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_user_pool_client({
    #     user_pool_id: "UserPoolIdType", # required
    #     client_name: "ClientNameType", # required
    #     generate_secret: false,
    #     refresh_token_validity: 1,
    #     read_attributes: ["ClientPermissionType"],
    #     write_attributes: ["ClientPermissionType"],
    #     explicit_auth_flows: ["ADMIN_NO_SRP_AUTH"], # accepts ADMIN_NO_SRP_AUTH, CUSTOM_AUTH_FLOW_ONLY
    #     supported_identity_providers: ["ProviderNameType"],
    #     callback_urls: ["RedirectUrlType"],
    #     logout_urls: ["RedirectUrlType"],
    #     default_redirect_uri: "RedirectUrlType",
    #     allowed_o_auth_flows: ["code"], # accepts code, implicit, client_credentials
    #     allowed_o_auth_scopes: ["ScopeType"],
    #     allowed_o_auth_flows_user_pool_client: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.user_pool_client.user_pool_id #=> String
    #   resp.user_pool_client.client_name #=> String
    #   resp.user_pool_client.client_id #=> String
    #   resp.user_pool_client.client_secret #=> String
    #   resp.user_pool_client.last_modified_date #=> Time
    #   resp.user_pool_client.creation_date #=> Time
    #   resp.user_pool_client.refresh_token_validity #=> Integer
    #   resp.user_pool_client.read_attributes #=> Array
    #   resp.user_pool_client.read_attributes[0] #=> String
    #   resp.user_pool_client.write_attributes #=> Array
    #   resp.user_pool_client.write_attributes[0] #=> String
    #   resp.user_pool_client.explicit_auth_flows #=> Array
    #   resp.user_pool_client.explicit_auth_flows[0] #=> String, one of "ADMIN_NO_SRP_AUTH", "CUSTOM_AUTH_FLOW_ONLY"
    #   resp.user_pool_client.supported_identity_providers #=> Array
    #   resp.user_pool_client.supported_identity_providers[0] #=> String
    #   resp.user_pool_client.callback_urls #=> Array
    #   resp.user_pool_client.callback_urls[0] #=> String
    #   resp.user_pool_client.logout_urls #=> Array
    #   resp.user_pool_client.logout_urls[0] #=> String
    #   resp.user_pool_client.default_redirect_uri #=> String
    #   resp.user_pool_client.allowed_o_auth_flows #=> Array
    #   resp.user_pool_client.allowed_o_auth_flows[0] #=> String, one of "code", "implicit", "client_credentials"
    #   resp.user_pool_client.allowed_o_auth_scopes #=> Array
    #   resp.user_pool_client.allowed_o_auth_scopes[0] #=> String
    #   resp.user_pool_client.allowed_o_auth_flows_user_pool_client #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/CreateUserPoolClient AWS API Documentation
    #
    # @overload create_user_pool_client(params = {})
    # @param [Hash] params ({})
    def create_user_pool_client(params = {}, options = {})
      req = build_request(:create_user_pool_client, params)
      req.send_request(options)
    end

    # Creates a new domain for a user pool.
    #
    # @option params [required, String] :domain
    #   The domain string.
    #
    # @option params [required, String] :user_pool_id
    #   The user pool ID.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_user_pool_domain({
    #     domain: "DomainType", # required
    #     user_pool_id: "UserPoolIdType", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/CreateUserPoolDomain AWS API Documentation
    #
    # @overload create_user_pool_domain(params = {})
    # @param [Hash] params ({})
    def create_user_pool_domain(params = {}, options = {})
      req = build_request(:create_user_pool_domain, params)
      req.send_request(options)
    end

    # Deletes a group. Currently only groups with no members can be deleted.
    #
    # Requires developer credentials.
    #
    # @option params [required, String] :group_name
    #   The name of the group.
    #
    # @option params [required, String] :user_pool_id
    #   The user pool ID for the user pool.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_group({
    #     group_name: "GroupNameType", # required
    #     user_pool_id: "UserPoolIdType", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/DeleteGroup AWS API Documentation
    #
    # @overload delete_group(params = {})
    # @param [Hash] params ({})
    def delete_group(params = {}, options = {})
      req = build_request(:delete_group, params)
      req.send_request(options)
    end

    # Deletes an identity provider for a user pool.
    #
    # @option params [required, String] :user_pool_id
    #   The user pool ID.
    #
    # @option params [required, String] :provider_name
    #   The identity provider name.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_identity_provider({
    #     user_pool_id: "UserPoolIdType", # required
    #     provider_name: "ProviderNameType", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/DeleteIdentityProvider AWS API Documentation
    #
    # @overload delete_identity_provider(params = {})
    # @param [Hash] params ({})
    def delete_identity_provider(params = {}, options = {})
      req = build_request(:delete_identity_provider, params)
      req.send_request(options)
    end

    # Allows a user to delete one's self.
    #
    # @option params [required, String] :access_token
    #   The access token from a request to delete a user.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_user({
    #     access_token: "TokenModelType", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/DeleteUser AWS API Documentation
    #
    # @overload delete_user(params = {})
    # @param [Hash] params ({})
    def delete_user(params = {}, options = {})
      req = build_request(:delete_user, params)
      req.send_request(options)
    end

    # Deletes the attributes for a user.
    #
    # @option params [required, Array<String>] :user_attribute_names
    #   An array of strings representing the user attribute names you wish to
    #   delete.
    #
    #   For custom attributes, you must prepend the `custom:` prefix to the
    #   attribute name.
    #
    # @option params [required, String] :access_token
    #   The access token used in the request to delete user attributes.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_user_attributes({
    #     user_attribute_names: ["AttributeNameType"], # required
    #     access_token: "TokenModelType", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/DeleteUserAttributes AWS API Documentation
    #
    # @overload delete_user_attributes(params = {})
    # @param [Hash] params ({})
    def delete_user_attributes(params = {}, options = {})
      req = build_request(:delete_user_attributes, params)
      req.send_request(options)
    end

    # Deletes the specified Amazon Cognito user pool.
    #
    # @option params [required, String] :user_pool_id
    #   The user pool ID for the user pool you want to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_user_pool({
    #     user_pool_id: "UserPoolIdType", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/DeleteUserPool AWS API Documentation
    #
    # @overload delete_user_pool(params = {})
    # @param [Hash] params ({})
    def delete_user_pool(params = {}, options = {})
      req = build_request(:delete_user_pool, params)
      req.send_request(options)
    end

    # Allows the developer to delete the user pool client.
    #
    # @option params [required, String] :user_pool_id
    #   The user pool ID for the user pool where you want to delete the
    #   client.
    #
    # @option params [required, String] :client_id
    #   The ID of the client associated with the user pool.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_user_pool_client({
    #     user_pool_id: "UserPoolIdType", # required
    #     client_id: "ClientIdType", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/DeleteUserPoolClient AWS API Documentation
    #
    # @overload delete_user_pool_client(params = {})
    # @param [Hash] params ({})
    def delete_user_pool_client(params = {}, options = {})
      req = build_request(:delete_user_pool_client, params)
      req.send_request(options)
    end

    # Deletes a domain for a user pool.
    #
    # @option params [required, String] :domain
    #   The domain string.
    #
    # @option params [required, String] :user_pool_id
    #   The user pool ID.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_user_pool_domain({
    #     domain: "DomainType", # required
    #     user_pool_id: "UserPoolIdType", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/DeleteUserPoolDomain AWS API Documentation
    #
    # @overload delete_user_pool_domain(params = {})
    # @param [Hash] params ({})
    def delete_user_pool_domain(params = {}, options = {})
      req = build_request(:delete_user_pool_domain, params)
      req.send_request(options)
    end

    # Gets information about a specific identity provider.
    #
    # @option params [required, String] :user_pool_id
    #   The user pool ID.
    #
    # @option params [required, String] :provider_name
    #   The identity provider name.
    #
    # @return [Types::DescribeIdentityProviderResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeIdentityProviderResponse#identity_provider #identity_provider} => Types::IdentityProviderType
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_identity_provider({
    #     user_pool_id: "UserPoolIdType", # required
    #     provider_name: "ProviderNameType", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.identity_provider.user_pool_id #=> String
    #   resp.identity_provider.provider_name #=> String
    #   resp.identity_provider.provider_type #=> String, one of "SAML"
    #   resp.identity_provider.provider_details #=> Hash
    #   resp.identity_provider.provider_details["StringType"] #=> String
    #   resp.identity_provider.attribute_mapping #=> Hash
    #   resp.identity_provider.attribute_mapping["CustomAttributeNameType"] #=> String
    #   resp.identity_provider.idp_identifiers #=> Array
    #   resp.identity_provider.idp_identifiers[0] #=> String
    #   resp.identity_provider.last_modified_date #=> Time
    #   resp.identity_provider.creation_date #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/DescribeIdentityProvider AWS API Documentation
    #
    # @overload describe_identity_provider(params = {})
    # @param [Hash] params ({})
    def describe_identity_provider(params = {}, options = {})
      req = build_request(:describe_identity_provider, params)
      req.send_request(options)
    end

    # Describes the user import job.
    #
    # @option params [required, String] :user_pool_id
    #   The user pool ID for the user pool that the users are being imported
    #   into.
    #
    # @option params [required, String] :job_id
    #   The job ID for the user import job.
    #
    # @return [Types::DescribeUserImportJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeUserImportJobResponse#user_import_job #user_import_job} => Types::UserImportJobType
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_user_import_job({
    #     user_pool_id: "UserPoolIdType", # required
    #     job_id: "UserImportJobIdType", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.user_import_job.job_name #=> String
    #   resp.user_import_job.job_id #=> String
    #   resp.user_import_job.user_pool_id #=> String
    #   resp.user_import_job.pre_signed_url #=> String
    #   resp.user_import_job.creation_date #=> Time
    #   resp.user_import_job.start_date #=> Time
    #   resp.user_import_job.completion_date #=> Time
    #   resp.user_import_job.status #=> String, one of "Created", "Pending", "InProgress", "Stopping", "Expired", "Stopped", "Failed", "Succeeded"
    #   resp.user_import_job.cloud_watch_logs_role_arn #=> String
    #   resp.user_import_job.imported_users #=> Integer
    #   resp.user_import_job.skipped_users #=> Integer
    #   resp.user_import_job.failed_users #=> Integer
    #   resp.user_import_job.completion_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/DescribeUserImportJob AWS API Documentation
    #
    # @overload describe_user_import_job(params = {})
    # @param [Hash] params ({})
    def describe_user_import_job(params = {}, options = {})
      req = build_request(:describe_user_import_job, params)
      req.send_request(options)
    end

    # Returns the configuration information and metadata of the specified
    # user pool.
    #
    # @option params [required, String] :user_pool_id
    #   The user pool ID for the user pool you want to describe.
    #
    # @return [Types::DescribeUserPoolResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeUserPoolResponse#user_pool #user_pool} => Types::UserPoolType
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_user_pool({
    #     user_pool_id: "UserPoolIdType", # required
    #   })
    #
    # @example Response structure
    #
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
    #   resp.user_pool.lambda_config.define_auth_challenge #=> String
    #   resp.user_pool.lambda_config.create_auth_challenge #=> String
    #   resp.user_pool.lambda_config.verify_auth_challenge_response #=> String
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
    #   resp.user_pool.device_configuration.challenge_required_on_new_device #=> Boolean
    #   resp.user_pool.device_configuration.device_only_remembered_on_user_prompt #=> Boolean
    #   resp.user_pool.estimated_number_of_users #=> Integer
    #   resp.user_pool.email_configuration.source_arn #=> String
    #   resp.user_pool.email_configuration.reply_to_email_address #=> String
    #   resp.user_pool.sms_configuration.sns_caller_arn #=> String
    #   resp.user_pool.sms_configuration.external_id #=> String
    #   resp.user_pool.user_pool_tags #=> Hash
    #   resp.user_pool.user_pool_tags["StringType"] #=> String
    #   resp.user_pool.sms_configuration_failure #=> String
    #   resp.user_pool.email_configuration_failure #=> String
    #   resp.user_pool.admin_create_user_config.allow_admin_create_user_only #=> Boolean
    #   resp.user_pool.admin_create_user_config.unused_account_validity_days #=> Integer
    #   resp.user_pool.admin_create_user_config.invite_message_template.sms_message #=> String
    #   resp.user_pool.admin_create_user_config.invite_message_template.email_message #=> String
    #   resp.user_pool.admin_create_user_config.invite_message_template.email_subject #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/DescribeUserPool AWS API Documentation
    #
    # @overload describe_user_pool(params = {})
    # @param [Hash] params ({})
    def describe_user_pool(params = {}, options = {})
      req = build_request(:describe_user_pool, params)
      req.send_request(options)
    end

    # Client method for returning the configuration information and metadata
    # of the specified user pool client.
    #
    # @option params [required, String] :user_pool_id
    #   The user pool ID for the user pool you want to describe.
    #
    # @option params [required, String] :client_id
    #   The ID of the client associated with the user pool.
    #
    # @return [Types::DescribeUserPoolClientResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeUserPoolClientResponse#user_pool_client #user_pool_client} => Types::UserPoolClientType
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_user_pool_client({
    #     user_pool_id: "UserPoolIdType", # required
    #     client_id: "ClientIdType", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.user_pool_client.user_pool_id #=> String
    #   resp.user_pool_client.client_name #=> String
    #   resp.user_pool_client.client_id #=> String
    #   resp.user_pool_client.client_secret #=> String
    #   resp.user_pool_client.last_modified_date #=> Time
    #   resp.user_pool_client.creation_date #=> Time
    #   resp.user_pool_client.refresh_token_validity #=> Integer
    #   resp.user_pool_client.read_attributes #=> Array
    #   resp.user_pool_client.read_attributes[0] #=> String
    #   resp.user_pool_client.write_attributes #=> Array
    #   resp.user_pool_client.write_attributes[0] #=> String
    #   resp.user_pool_client.explicit_auth_flows #=> Array
    #   resp.user_pool_client.explicit_auth_flows[0] #=> String, one of "ADMIN_NO_SRP_AUTH", "CUSTOM_AUTH_FLOW_ONLY"
    #   resp.user_pool_client.supported_identity_providers #=> Array
    #   resp.user_pool_client.supported_identity_providers[0] #=> String
    #   resp.user_pool_client.callback_urls #=> Array
    #   resp.user_pool_client.callback_urls[0] #=> String
    #   resp.user_pool_client.logout_urls #=> Array
    #   resp.user_pool_client.logout_urls[0] #=> String
    #   resp.user_pool_client.default_redirect_uri #=> String
    #   resp.user_pool_client.allowed_o_auth_flows #=> Array
    #   resp.user_pool_client.allowed_o_auth_flows[0] #=> String, one of "code", "implicit", "client_credentials"
    #   resp.user_pool_client.allowed_o_auth_scopes #=> Array
    #   resp.user_pool_client.allowed_o_auth_scopes[0] #=> String
    #   resp.user_pool_client.allowed_o_auth_flows_user_pool_client #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/DescribeUserPoolClient AWS API Documentation
    #
    # @overload describe_user_pool_client(params = {})
    # @param [Hash] params ({})
    def describe_user_pool_client(params = {}, options = {})
      req = build_request(:describe_user_pool_client, params)
      req.send_request(options)
    end

    # Gets information about a domain.
    #
    # @option params [required, String] :domain
    #   The domain string.
    #
    # @return [Types::DescribeUserPoolDomainResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeUserPoolDomainResponse#domain_description #domain_description} => Types::DomainDescriptionType
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_user_pool_domain({
    #     domain: "DomainType", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.domain_description.user_pool_id #=> String
    #   resp.domain_description.aws_account_id #=> String
    #   resp.domain_description.domain #=> String
    #   resp.domain_description.s3_bucket #=> String
    #   resp.domain_description.cloud_front_distribution #=> String
    #   resp.domain_description.version #=> String
    #   resp.domain_description.status #=> String, one of "CREATING", "DELETING", "UPDATING", "ACTIVE"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/DescribeUserPoolDomain AWS API Documentation
    #
    # @overload describe_user_pool_domain(params = {})
    # @param [Hash] params ({})
    def describe_user_pool_domain(params = {}, options = {})
      req = build_request(:describe_user_pool_domain, params)
      req.send_request(options)
    end

    # Forgets the specified device.
    #
    # @option params [String] :access_token
    #   The access token for the forgotten device request.
    #
    # @option params [required, String] :device_key
    #   The device key.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.forget_device({
    #     access_token: "TokenModelType",
    #     device_key: "DeviceKeyType", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/ForgetDevice AWS API Documentation
    #
    # @overload forget_device(params = {})
    # @param [Hash] params ({})
    def forget_device(params = {}, options = {})
      req = build_request(:forget_device, params)
      req.send_request(options)
    end

    # Calling this API causes a message to be sent to the end user with a
    # confirmation code that is required to change the user's password. For
    # the `Username` parameter, you can use the username or user alias. If a
    # verified phone number exists for the user, the confirmation code is
    # sent to the phone number. Otherwise, if a verified email exists, the
    # confirmation code is sent to the email. If neither a verified phone
    # number nor a verified email exists, `InvalidParameterException` is
    # thrown. To use the confirmation code for resetting the password, call
    # [ConfirmForgotPassword](API_ConfirmForgotPassword.html).
    #
    # @option params [required, String] :client_id
    #   The ID of the client associated with the user pool.
    #
    # @option params [String] :secret_hash
    #   A keyed-hash message authentication code (HMAC) calculated using the
    #   secret key of a user pool client and username plus the client ID in
    #   the message.
    #
    # @option params [required, String] :username
    #   The user name of the user for whom you want to enter a code to reset a
    #   forgotten password.
    #
    # @return [Types::ForgotPasswordResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ForgotPasswordResponse#code_delivery_details #code_delivery_details} => Types::CodeDeliveryDetailsType
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.forgot_password({
    #     client_id: "ClientIdType", # required
    #     secret_hash: "SecretHashType",
    #     username: "UsernameType", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.code_delivery_details.destination #=> String
    #   resp.code_delivery_details.delivery_medium #=> String, one of "SMS", "EMAIL"
    #   resp.code_delivery_details.attribute_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/ForgotPassword AWS API Documentation
    #
    # @overload forgot_password(params = {})
    # @param [Hash] params ({})
    def forgot_password(params = {}, options = {})
      req = build_request(:forgot_password, params)
      req.send_request(options)
    end

    # Gets the header information for the .csv file to be used as input for
    # the user import job.
    #
    # @option params [required, String] :user_pool_id
    #   The user pool ID for the user pool that the users are to be imported
    #   into.
    #
    # @return [Types::GetCSVHeaderResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetCSVHeaderResponse#user_pool_id #user_pool_id} => String
    #   * {Types::GetCSVHeaderResponse#csv_header #csv_header} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_csv_header({
    #     user_pool_id: "UserPoolIdType", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.user_pool_id #=> String
    #   resp.csv_header #=> Array
    #   resp.csv_header[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/GetCSVHeader AWS API Documentation
    #
    # @overload get_csv_header(params = {})
    # @param [Hash] params ({})
    def get_csv_header(params = {}, options = {})
      req = build_request(:get_csv_header, params)
      req.send_request(options)
    end

    # Gets the device.
    #
    # @option params [required, String] :device_key
    #   The device key.
    #
    # @option params [String] :access_token
    #   The access token.
    #
    # @return [Types::GetDeviceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDeviceResponse#device #device} => Types::DeviceType
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_device({
    #     device_key: "DeviceKeyType", # required
    #     access_token: "TokenModelType",
    #   })
    #
    # @example Response structure
    #
    #   resp.device.device_key #=> String
    #   resp.device.device_attributes #=> Array
    #   resp.device.device_attributes[0].name #=> String
    #   resp.device.device_attributes[0].value #=> String
    #   resp.device.device_create_date #=> Time
    #   resp.device.device_last_modified_date #=> Time
    #   resp.device.device_last_authenticated_date #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/GetDevice AWS API Documentation
    #
    # @overload get_device(params = {})
    # @param [Hash] params ({})
    def get_device(params = {}, options = {})
      req = build_request(:get_device, params)
      req.send_request(options)
    end

    # Gets a group.
    #
    # Requires developer credentials.
    #
    # @option params [required, String] :group_name
    #   The name of the group.
    #
    # @option params [required, String] :user_pool_id
    #   The user pool ID for the user pool.
    #
    # @return [Types::GetGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetGroupResponse#group #group} => Types::GroupType
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_group({
    #     group_name: "GroupNameType", # required
    #     user_pool_id: "UserPoolIdType", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.group.group_name #=> String
    #   resp.group.user_pool_id #=> String
    #   resp.group.description #=> String
    #   resp.group.role_arn #=> String
    #   resp.group.precedence #=> Integer
    #   resp.group.last_modified_date #=> Time
    #   resp.group.creation_date #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/GetGroup AWS API Documentation
    #
    # @overload get_group(params = {})
    # @param [Hash] params ({})
    def get_group(params = {}, options = {})
      req = build_request(:get_group, params)
      req.send_request(options)
    end

    # Gets the specified identity provider.
    #
    # @option params [required, String] :user_pool_id
    #   The user pool ID.
    #
    # @option params [required, String] :idp_identifier
    #   The identity provider ID.
    #
    # @return [Types::GetIdentityProviderByIdentifierResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetIdentityProviderByIdentifierResponse#identity_provider #identity_provider} => Types::IdentityProviderType
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_identity_provider_by_identifier({
    #     user_pool_id: "UserPoolIdType", # required
    #     idp_identifier: "IdpIdentifierType", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.identity_provider.user_pool_id #=> String
    #   resp.identity_provider.provider_name #=> String
    #   resp.identity_provider.provider_type #=> String, one of "SAML"
    #   resp.identity_provider.provider_details #=> Hash
    #   resp.identity_provider.provider_details["StringType"] #=> String
    #   resp.identity_provider.attribute_mapping #=> Hash
    #   resp.identity_provider.attribute_mapping["CustomAttributeNameType"] #=> String
    #   resp.identity_provider.idp_identifiers #=> Array
    #   resp.identity_provider.idp_identifiers[0] #=> String
    #   resp.identity_provider.last_modified_date #=> Time
    #   resp.identity_provider.creation_date #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/GetIdentityProviderByIdentifier AWS API Documentation
    #
    # @overload get_identity_provider_by_identifier(params = {})
    # @param [Hash] params ({})
    def get_identity_provider_by_identifier(params = {}, options = {})
      req = build_request(:get_identity_provider_by_identifier, params)
      req.send_request(options)
    end

    # Gets the user attributes and metadata for a user.
    #
    # @option params [required, String] :access_token
    #   The access token returned by the server response to get information
    #   about the user.
    #
    # @return [Types::GetUserResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetUserResponse#username #username} => String
    #   * {Types::GetUserResponse#user_attributes #user_attributes} => Array&lt;Types::AttributeType&gt;
    #   * {Types::GetUserResponse#mfa_options #mfa_options} => Array&lt;Types::MFAOptionType&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_user({
    #     access_token: "TokenModelType", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.username #=> String
    #   resp.user_attributes #=> Array
    #   resp.user_attributes[0].name #=> String
    #   resp.user_attributes[0].value #=> String
    #   resp.mfa_options #=> Array
    #   resp.mfa_options[0].delivery_medium #=> String, one of "SMS", "EMAIL"
    #   resp.mfa_options[0].attribute_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/GetUser AWS API Documentation
    #
    # @overload get_user(params = {})
    # @param [Hash] params ({})
    def get_user(params = {}, options = {})
      req = build_request(:get_user, params)
      req.send_request(options)
    end

    # Gets the user attribute verification code for the specified attribute
    # name.
    #
    # @option params [required, String] :access_token
    #   The access token returned by the server response to get the user
    #   attribute verification code.
    #
    # @option params [required, String] :attribute_name
    #   The attribute name returned by the server response to get the user
    #   attribute verification code.
    #
    # @return [Types::GetUserAttributeVerificationCodeResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetUserAttributeVerificationCodeResponse#code_delivery_details #code_delivery_details} => Types::CodeDeliveryDetailsType
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_user_attribute_verification_code({
    #     access_token: "TokenModelType", # required
    #     attribute_name: "AttributeNameType", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.code_delivery_details.destination #=> String
    #   resp.code_delivery_details.delivery_medium #=> String, one of "SMS", "EMAIL"
    #   resp.code_delivery_details.attribute_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/GetUserAttributeVerificationCode AWS API Documentation
    #
    # @overload get_user_attribute_verification_code(params = {})
    # @param [Hash] params ({})
    def get_user_attribute_verification_code(params = {}, options = {})
      req = build_request(:get_user_attribute_verification_code, params)
      req.send_request(options)
    end

    # Signs out users from all devices.
    #
    # @option params [required, String] :access_token
    #   The access token.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.global_sign_out({
    #     access_token: "TokenModelType", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/GlobalSignOut AWS API Documentation
    #
    # @overload global_sign_out(params = {})
    # @param [Hash] params ({})
    def global_sign_out(params = {}, options = {})
      req = build_request(:global_sign_out, params)
      req.send_request(options)
    end

    # Initiates the authentication flow.
    #
    # @option params [required, String] :auth_flow
    #   The authentication flow for this call to execute. The API action will
    #   depend on this value. For example:
    #
    #   * `REFRESH_TOKEN_AUTH` will take in a valid refresh token and return
    #     new tokens.
    #
    #   * `USER_SRP_AUTH` will take in USERNAME and SRPA and return the SRP
    #     variables to be used for next challenge execution.
    #
    #   Valid values include:
    #
    #   * `USER_SRP_AUTH`\: Authentication flow for the Secure Remote Password
    #     (SRP) protocol.
    #
    #   * `REFRESH_TOKEN_AUTH`/`REFRESH_TOKEN`\: Authentication flow for
    #     refreshing the access token and ID token by supplying a valid
    #     refresh token.
    #
    #   * `CUSTOM_AUTH`\: Custom authentication flow.
    #
    #   `ADMIN_NO_SRP_AUTH` is not a valid value.
    #
    # @option params [Hash<String,String>] :auth_parameters
    #   The authentication parameters. These are inputs corresponding to the
    #   `AuthFlow` that you are invoking. The required values depend on the
    #   value of `AuthFlow`\:
    #
    #   * For `USER_SRP_AUTH`\: `USERNAME` (required), `SRPA` (required),
    #     `SECRET_HASH` (required if the app client is configured with a
    #     client secret), `DEVICE_KEY`
    #
    #   * For `REFRESH_TOKEN_AUTH/REFRESH_TOKEN`\: `USERNAME` (required),
    #     `SECRET_HASH` (required if the app client is configured with a
    #     client secret), `REFRESH_TOKEN` (required), `DEVICE_KEY`
    #
    #   * For `CUSTOM_AUTH`\: `USERNAME` (required), `SECRET_HASH` (if app
    #     client is configured with client secret), `DEVICE_KEY`
    #
    # @option params [Hash<String,String>] :client_metadata
    #   This is a random key-value pair map which can contain any key and will
    #   be passed to your PreAuthentication Lambda trigger as-is. It can be
    #   used to implement additional validations around authentication.
    #
    # @option params [required, String] :client_id
    #   The app client ID.
    #
    # @return [Types::InitiateAuthResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::InitiateAuthResponse#challenge_name #challenge_name} => String
    #   * {Types::InitiateAuthResponse#session #session} => String
    #   * {Types::InitiateAuthResponse#challenge_parameters #challenge_parameters} => Hash&lt;String,String&gt;
    #   * {Types::InitiateAuthResponse#authentication_result #authentication_result} => Types::AuthenticationResultType
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.initiate_auth({
    #     auth_flow: "USER_SRP_AUTH", # required, accepts USER_SRP_AUTH, REFRESH_TOKEN_AUTH, REFRESH_TOKEN, CUSTOM_AUTH, ADMIN_NO_SRP_AUTH
    #     auth_parameters: {
    #       "StringType" => "StringType",
    #     },
    #     client_metadata: {
    #       "StringType" => "StringType",
    #     },
    #     client_id: "ClientIdType", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.challenge_name #=> String, one of "SMS_MFA", "PASSWORD_VERIFIER", "CUSTOM_CHALLENGE", "DEVICE_SRP_AUTH", "DEVICE_PASSWORD_VERIFIER", "ADMIN_NO_SRP_AUTH", "NEW_PASSWORD_REQUIRED"
    #   resp.session #=> String
    #   resp.challenge_parameters #=> Hash
    #   resp.challenge_parameters["StringType"] #=> String
    #   resp.authentication_result.access_token #=> String
    #   resp.authentication_result.expires_in #=> Integer
    #   resp.authentication_result.token_type #=> String
    #   resp.authentication_result.refresh_token #=> String
    #   resp.authentication_result.id_token #=> String
    #   resp.authentication_result.new_device_metadata.device_key #=> String
    #   resp.authentication_result.new_device_metadata.device_group_key #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/InitiateAuth AWS API Documentation
    #
    # @overload initiate_auth(params = {})
    # @param [Hash] params ({})
    def initiate_auth(params = {}, options = {})
      req = build_request(:initiate_auth, params)
      req.send_request(options)
    end

    # Lists the devices.
    #
    # @option params [required, String] :access_token
    #   The access tokens for the request to list devices.
    #
    # @option params [Integer] :limit
    #   The limit of the device request.
    #
    # @option params [String] :pagination_token
    #   The pagination token for the list request.
    #
    # @return [Types::ListDevicesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDevicesResponse#devices #devices} => Array&lt;Types::DeviceType&gt;
    #   * {Types::ListDevicesResponse#pagination_token #pagination_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_devices({
    #     access_token: "TokenModelType", # required
    #     limit: 1,
    #     pagination_token: "SearchPaginationTokenType",
    #   })
    #
    # @example Response structure
    #
    #   resp.devices #=> Array
    #   resp.devices[0].device_key #=> String
    #   resp.devices[0].device_attributes #=> Array
    #   resp.devices[0].device_attributes[0].name #=> String
    #   resp.devices[0].device_attributes[0].value #=> String
    #   resp.devices[0].device_create_date #=> Time
    #   resp.devices[0].device_last_modified_date #=> Time
    #   resp.devices[0].device_last_authenticated_date #=> Time
    #   resp.pagination_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/ListDevices AWS API Documentation
    #
    # @overload list_devices(params = {})
    # @param [Hash] params ({})
    def list_devices(params = {}, options = {})
      req = build_request(:list_devices, params)
      req.send_request(options)
    end

    # Lists the groups associated with a user pool.
    #
    # Requires developer credentials.
    #
    # @option params [required, String] :user_pool_id
    #   The user pool ID for the user pool.
    #
    # @option params [Integer] :limit
    #   The limit of the request to list groups.
    #
    # @option params [String] :next_token
    #   An identifier that was returned from the previous call to this
    #   operation, which can be used to return the next set of items in the
    #   list.
    #
    # @return [Types::ListGroupsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListGroupsResponse#groups #groups} => Array&lt;Types::GroupType&gt;
    #   * {Types::ListGroupsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_groups({
    #     user_pool_id: "UserPoolIdType", # required
    #     limit: 1,
    #     next_token: "PaginationKey",
    #   })
    #
    # @example Response structure
    #
    #   resp.groups #=> Array
    #   resp.groups[0].group_name #=> String
    #   resp.groups[0].user_pool_id #=> String
    #   resp.groups[0].description #=> String
    #   resp.groups[0].role_arn #=> String
    #   resp.groups[0].precedence #=> Integer
    #   resp.groups[0].last_modified_date #=> Time
    #   resp.groups[0].creation_date #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/ListGroups AWS API Documentation
    #
    # @overload list_groups(params = {})
    # @param [Hash] params ({})
    def list_groups(params = {}, options = {})
      req = build_request(:list_groups, params)
      req.send_request(options)
    end

    # Lists information about all identity providers for a user pool.
    #
    # @option params [required, String] :user_pool_id
    #   The user pool ID.
    #
    # @option params [Integer] :max_results
    #   The maximum number of identity providers to return.
    #
    # @option params [String] :next_token
    #   A pagination token.
    #
    # @return [Types::ListIdentityProvidersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListIdentityProvidersResponse#providers #providers} => Array&lt;Types::ProviderDescription&gt;
    #   * {Types::ListIdentityProvidersResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_identity_providers({
    #     user_pool_id: "UserPoolIdType", # required
    #     max_results: 1,
    #     next_token: "PaginationKeyType",
    #   })
    #
    # @example Response structure
    #
    #   resp.providers #=> Array
    #   resp.providers[0].provider_name #=> String
    #   resp.providers[0].provider_type #=> String, one of "SAML"
    #   resp.providers[0].last_modified_date #=> Time
    #   resp.providers[0].creation_date #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/ListIdentityProviders AWS API Documentation
    #
    # @overload list_identity_providers(params = {})
    # @param [Hash] params ({})
    def list_identity_providers(params = {}, options = {})
      req = build_request(:list_identity_providers, params)
      req.send_request(options)
    end

    # Lists the user import jobs.
    #
    # @option params [required, String] :user_pool_id
    #   The user pool ID for the user pool that the users are being imported
    #   into.
    #
    # @option params [required, Integer] :max_results
    #   The maximum number of import jobs you want the request to return.
    #
    # @option params [String] :pagination_token
    #   An identifier that was returned from the previous call to
    #   `ListUserImportJobs`, which can be used to return the next set of
    #   import jobs in the list.
    #
    # @return [Types::ListUserImportJobsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListUserImportJobsResponse#user_import_jobs #user_import_jobs} => Array&lt;Types::UserImportJobType&gt;
    #   * {Types::ListUserImportJobsResponse#pagination_token #pagination_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_user_import_jobs({
    #     user_pool_id: "UserPoolIdType", # required
    #     max_results: 1, # required
    #     pagination_token: "PaginationKeyType",
    #   })
    #
    # @example Response structure
    #
    #   resp.user_import_jobs #=> Array
    #   resp.user_import_jobs[0].job_name #=> String
    #   resp.user_import_jobs[0].job_id #=> String
    #   resp.user_import_jobs[0].user_pool_id #=> String
    #   resp.user_import_jobs[0].pre_signed_url #=> String
    #   resp.user_import_jobs[0].creation_date #=> Time
    #   resp.user_import_jobs[0].start_date #=> Time
    #   resp.user_import_jobs[0].completion_date #=> Time
    #   resp.user_import_jobs[0].status #=> String, one of "Created", "Pending", "InProgress", "Stopping", "Expired", "Stopped", "Failed", "Succeeded"
    #   resp.user_import_jobs[0].cloud_watch_logs_role_arn #=> String
    #   resp.user_import_jobs[0].imported_users #=> Integer
    #   resp.user_import_jobs[0].skipped_users #=> Integer
    #   resp.user_import_jobs[0].failed_users #=> Integer
    #   resp.user_import_jobs[0].completion_message #=> String
    #   resp.pagination_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/ListUserImportJobs AWS API Documentation
    #
    # @overload list_user_import_jobs(params = {})
    # @param [Hash] params ({})
    def list_user_import_jobs(params = {}, options = {})
      req = build_request(:list_user_import_jobs, params)
      req.send_request(options)
    end

    # Lists the clients that have been created for the specified user pool.
    #
    # @option params [required, String] :user_pool_id
    #   The user pool ID for the user pool where you want to list user pool
    #   clients.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results you want the request to return when
    #   listing the user pool clients.
    #
    # @option params [String] :next_token
    #   An identifier that was returned from the previous call to this
    #   operation, which can be used to return the next set of items in the
    #   list.
    #
    # @return [Types::ListUserPoolClientsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListUserPoolClientsResponse#user_pool_clients #user_pool_clients} => Array&lt;Types::UserPoolClientDescription&gt;
    #   * {Types::ListUserPoolClientsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_user_pool_clients({
    #     user_pool_id: "UserPoolIdType", # required
    #     max_results: 1,
    #     next_token: "PaginationKey",
    #   })
    #
    # @example Response structure
    #
    #   resp.user_pool_clients #=> Array
    #   resp.user_pool_clients[0].client_id #=> String
    #   resp.user_pool_clients[0].user_pool_id #=> String
    #   resp.user_pool_clients[0].client_name #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/ListUserPoolClients AWS API Documentation
    #
    # @overload list_user_pool_clients(params = {})
    # @param [Hash] params ({})
    def list_user_pool_clients(params = {}, options = {})
      req = build_request(:list_user_pool_clients, params)
      req.send_request(options)
    end

    # Lists the user pools associated with an AWS account.
    #
    # @option params [String] :next_token
    #   An identifier that was returned from the previous call to this
    #   operation, which can be used to return the next set of items in the
    #   list.
    #
    # @option params [required, Integer] :max_results
    #   The maximum number of results you want the request to return when
    #   listing the user pools.
    #
    # @return [Types::ListUserPoolsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListUserPoolsResponse#user_pools #user_pools} => Array&lt;Types::UserPoolDescriptionType&gt;
    #   * {Types::ListUserPoolsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_user_pools({
    #     next_token: "PaginationKeyType",
    #     max_results: 1, # required
    #   })
    #
    # @example Response structure
    #
    #   resp.user_pools #=> Array
    #   resp.user_pools[0].id #=> String
    #   resp.user_pools[0].name #=> String
    #   resp.user_pools[0].lambda_config.pre_sign_up #=> String
    #   resp.user_pools[0].lambda_config.custom_message #=> String
    #   resp.user_pools[0].lambda_config.post_confirmation #=> String
    #   resp.user_pools[0].lambda_config.pre_authentication #=> String
    #   resp.user_pools[0].lambda_config.post_authentication #=> String
    #   resp.user_pools[0].lambda_config.define_auth_challenge #=> String
    #   resp.user_pools[0].lambda_config.create_auth_challenge #=> String
    #   resp.user_pools[0].lambda_config.verify_auth_challenge_response #=> String
    #   resp.user_pools[0].status #=> String, one of "Enabled", "Disabled"
    #   resp.user_pools[0].last_modified_date #=> Time
    #   resp.user_pools[0].creation_date #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/ListUserPools AWS API Documentation
    #
    # @overload list_user_pools(params = {})
    # @param [Hash] params ({})
    def list_user_pools(params = {}, options = {})
      req = build_request(:list_user_pools, params)
      req.send_request(options)
    end

    # Lists the users in the Amazon Cognito user pool.
    #
    # @option params [required, String] :user_pool_id
    #   The user pool ID for the user pool on which the search should be
    #   performed.
    #
    # @option params [Array<String>] :attributes_to_get
    #   An array of strings, where each string is the name of a user attribute
    #   to be returned for each user in the search results. If the array is
    #   empty, all attributes are returned.
    #
    # @option params [Integer] :limit
    #   Maximum number of users to be returned.
    #
    # @option params [String] :pagination_token
    #   An identifier that was returned from the previous call to this
    #   operation, which can be used to return the next set of items in the
    #   list.
    #
    # @option params [String] :filter
    #   A filter string of the form "*AttributeName* *Filter-Type*
    #   "*AttributeValue*"". Quotation marks within the filter string must
    #   be escaped using the backslash (\\) character. For example,
    #   "`family_name` = \\"Reddy\\"".
    #
    #   * *AttributeName*\: The name of the attribute to search for. You can
    #     only search for one attribute at a time.
    #
    #   * *Filter-Type*\: For an exact match, use =, for example,
    #     "`given_name` = \\"Jon\\"". For a prefix ("starts with")
    #     match, use ^=, for example, "`given_name` ^= \\"Jon\\"".
    #
    #   * *AttributeValue*\: The attribute value that must be matched for each
    #     user.
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
    #   * `cognito:user_status` (called **Enabled** in the Console)
    #     (case-sensitive)
    #
    #   * `status` (case-insensitive)
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
    #
    # @return [Types::ListUsersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListUsersResponse#users #users} => Array&lt;Types::UserType&gt;
    #   * {Types::ListUsersResponse#pagination_token #pagination_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_users({
    #     user_pool_id: "UserPoolIdType", # required
    #     attributes_to_get: ["AttributeNameType"],
    #     limit: 1,
    #     pagination_token: "SearchPaginationTokenType",
    #     filter: "UserFilterType",
    #   })
    #
    # @example Response structure
    #
    #   resp.users #=> Array
    #   resp.users[0].username #=> String
    #   resp.users[0].attributes #=> Array
    #   resp.users[0].attributes[0].name #=> String
    #   resp.users[0].attributes[0].value #=> String
    #   resp.users[0].user_create_date #=> Time
    #   resp.users[0].user_last_modified_date #=> Time
    #   resp.users[0].enabled #=> Boolean
    #   resp.users[0].user_status #=> String, one of "UNCONFIRMED", "CONFIRMED", "ARCHIVED", "COMPROMISED", "UNKNOWN", "RESET_REQUIRED", "FORCE_CHANGE_PASSWORD"
    #   resp.users[0].mfa_options #=> Array
    #   resp.users[0].mfa_options[0].delivery_medium #=> String, one of "SMS", "EMAIL"
    #   resp.users[0].mfa_options[0].attribute_name #=> String
    #   resp.pagination_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/ListUsers AWS API Documentation
    #
    # @overload list_users(params = {})
    # @param [Hash] params ({})
    def list_users(params = {}, options = {})
      req = build_request(:list_users, params)
      req.send_request(options)
    end

    # Lists the users in the specified group.
    #
    # Requires developer credentials.
    #
    # @option params [required, String] :user_pool_id
    #   The user pool ID for the user pool.
    #
    # @option params [required, String] :group_name
    #   The name of the group.
    #
    # @option params [Integer] :limit
    #   The limit of the request to list users.
    #
    # @option params [String] :next_token
    #   An identifier that was returned from the previous call to this
    #   operation, which can be used to return the next set of items in the
    #   list.
    #
    # @return [Types::ListUsersInGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListUsersInGroupResponse#users #users} => Array&lt;Types::UserType&gt;
    #   * {Types::ListUsersInGroupResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_users_in_group({
    #     user_pool_id: "UserPoolIdType", # required
    #     group_name: "GroupNameType", # required
    #     limit: 1,
    #     next_token: "PaginationKey",
    #   })
    #
    # @example Response structure
    #
    #   resp.users #=> Array
    #   resp.users[0].username #=> String
    #   resp.users[0].attributes #=> Array
    #   resp.users[0].attributes[0].name #=> String
    #   resp.users[0].attributes[0].value #=> String
    #   resp.users[0].user_create_date #=> Time
    #   resp.users[0].user_last_modified_date #=> Time
    #   resp.users[0].enabled #=> Boolean
    #   resp.users[0].user_status #=> String, one of "UNCONFIRMED", "CONFIRMED", "ARCHIVED", "COMPROMISED", "UNKNOWN", "RESET_REQUIRED", "FORCE_CHANGE_PASSWORD"
    #   resp.users[0].mfa_options #=> Array
    #   resp.users[0].mfa_options[0].delivery_medium #=> String, one of "SMS", "EMAIL"
    #   resp.users[0].mfa_options[0].attribute_name #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/ListUsersInGroup AWS API Documentation
    #
    # @overload list_users_in_group(params = {})
    # @param [Hash] params ({})
    def list_users_in_group(params = {}, options = {})
      req = build_request(:list_users_in_group, params)
      req.send_request(options)
    end

    # Resends the confirmation (for confirmation of registration) to a
    # specific user in the user pool.
    #
    # @option params [required, String] :client_id
    #   The ID of the client associated with the user pool.
    #
    # @option params [String] :secret_hash
    #   A keyed-hash message authentication code (HMAC) calculated using the
    #   secret key of a user pool client and username plus the client ID in
    #   the message.
    #
    # @option params [required, String] :username
    #   The user name of the user to whom you wish to resend a confirmation
    #   code.
    #
    # @return [Types::ResendConfirmationCodeResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ResendConfirmationCodeResponse#code_delivery_details #code_delivery_details} => Types::CodeDeliveryDetailsType
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.resend_confirmation_code({
    #     client_id: "ClientIdType", # required
    #     secret_hash: "SecretHashType",
    #     username: "UsernameType", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.code_delivery_details.destination #=> String
    #   resp.code_delivery_details.delivery_medium #=> String, one of "SMS", "EMAIL"
    #   resp.code_delivery_details.attribute_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/ResendConfirmationCode AWS API Documentation
    #
    # @overload resend_confirmation_code(params = {})
    # @param [Hash] params ({})
    def resend_confirmation_code(params = {}, options = {})
      req = build_request(:resend_confirmation_code, params)
      req.send_request(options)
    end

    # Responds to the authentication challenge.
    #
    # @option params [required, String] :client_id
    #   The app client ID.
    #
    # @option params [required, String] :challenge_name
    #   The challenge name. For more information, see
    #   [InitiateAuth](API_InitiateAuth.html).
    #
    #   `ADMIN_NO_SRP_AUTH` is not a valid value.
    #
    # @option params [String] :session
    #   The session which should be passed both ways in challenge-response
    #   calls to the service. If `InitiateAuth` or `RespondToAuthChallenge`
    #   API call determines that the caller needs to go through another
    #   challenge, they return a session with other challenge parameters. This
    #   session should be passed as it is to the next `RespondToAuthChallenge`
    #   API call.
    #
    # @option params [Hash<String,String>] :challenge_responses
    #   The challenge responses. These are inputs corresponding to the value
    #   of `ChallengeName`, for example:
    #
    #   * `SMS_MFA`\: `SMS_MFA_CODE`, `USERNAME`, `SECRET_HASH` (if app client
    #     is configured with client secret).
    #
    #   * `PASSWORD_VERIFIER`\: `PASSWORD_CLAIM_SIGNATURE`,
    #     `PASSWORD_CLAIM_SECRET_BLOCK`, `TIMESTAMP`, `USERNAME`,
    #     `SECRET_HASH` (if app client is configured with client secret).
    #
    #   * `NEW_PASSWORD_REQUIRED`\: `NEW_PASSWORD`, any other required
    #     attributes, `USERNAME`, `SECRET_HASH` (if app client is configured
    #     with client secret).
    #
    # @return [Types::RespondToAuthChallengeResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RespondToAuthChallengeResponse#challenge_name #challenge_name} => String
    #   * {Types::RespondToAuthChallengeResponse#session #session} => String
    #   * {Types::RespondToAuthChallengeResponse#challenge_parameters #challenge_parameters} => Hash&lt;String,String&gt;
    #   * {Types::RespondToAuthChallengeResponse#authentication_result #authentication_result} => Types::AuthenticationResultType
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.respond_to_auth_challenge({
    #     client_id: "ClientIdType", # required
    #     challenge_name: "SMS_MFA", # required, accepts SMS_MFA, PASSWORD_VERIFIER, CUSTOM_CHALLENGE, DEVICE_SRP_AUTH, DEVICE_PASSWORD_VERIFIER, ADMIN_NO_SRP_AUTH, NEW_PASSWORD_REQUIRED
    #     session: "SessionType",
    #     challenge_responses: {
    #       "StringType" => "StringType",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.challenge_name #=> String, one of "SMS_MFA", "PASSWORD_VERIFIER", "CUSTOM_CHALLENGE", "DEVICE_SRP_AUTH", "DEVICE_PASSWORD_VERIFIER", "ADMIN_NO_SRP_AUTH", "NEW_PASSWORD_REQUIRED"
    #   resp.session #=> String
    #   resp.challenge_parameters #=> Hash
    #   resp.challenge_parameters["StringType"] #=> String
    #   resp.authentication_result.access_token #=> String
    #   resp.authentication_result.expires_in #=> Integer
    #   resp.authentication_result.token_type #=> String
    #   resp.authentication_result.refresh_token #=> String
    #   resp.authentication_result.id_token #=> String
    #   resp.authentication_result.new_device_metadata.device_key #=> String
    #   resp.authentication_result.new_device_metadata.device_group_key #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/RespondToAuthChallenge AWS API Documentation
    #
    # @overload respond_to_auth_challenge(params = {})
    # @param [Hash] params ({})
    def respond_to_auth_challenge(params = {}, options = {})
      req = build_request(:respond_to_auth_challenge, params)
      req.send_request(options)
    end

    # Sets the user settings like multi-factor authentication (MFA). If MFA
    # is to be removed for a particular attribute pass the attribute with
    # code delivery as null. If null list is passed, all MFA options are
    # removed.
    #
    # @option params [required, String] :access_token
    #   The access token for the set user settings request.
    #
    # @option params [required, Array<Types::MFAOptionType>] :mfa_options
    #   Specifies the options for MFA (e.g., email or phone number).
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.set_user_settings({
    #     access_token: "TokenModelType", # required
    #     mfa_options: [ # required
    #       {
    #         delivery_medium: "SMS", # accepts SMS, EMAIL
    #         attribute_name: "AttributeNameType",
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/SetUserSettings AWS API Documentation
    #
    # @overload set_user_settings(params = {})
    # @param [Hash] params ({})
    def set_user_settings(params = {}, options = {})
      req = build_request(:set_user_settings, params)
      req.send_request(options)
    end

    # Registers the user in the specified user pool and creates a user name,
    # password, and user attributes.
    #
    # @option params [required, String] :client_id
    #   The ID of the client associated with the user pool.
    #
    # @option params [String] :secret_hash
    #   A keyed-hash message authentication code (HMAC) calculated using the
    #   secret key of a user pool client and username plus the client ID in
    #   the message.
    #
    # @option params [required, String] :username
    #   The user name of the user you wish to register.
    #
    # @option params [required, String] :password
    #   The password of the user you wish to register.
    #
    # @option params [Array<Types::AttributeType>] :user_attributes
    #   An array of name-value pairs representing user attributes.
    #
    #   For custom attributes, you must prepend the `custom:` prefix to the
    #   attribute name.
    #
    # @option params [Array<Types::AttributeType>] :validation_data
    #   The validation data in the request to register a user.
    #
    # @return [Types::SignUpResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SignUpResponse#user_confirmed #user_confirmed} => Boolean
    #   * {Types::SignUpResponse#code_delivery_details #code_delivery_details} => Types::CodeDeliveryDetailsType
    #   * {Types::SignUpResponse#user_sub #user_sub} => String
    #
    # @example Request syntax with placeholder values
    #
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
    #
    #   resp.user_confirmed #=> Boolean
    #   resp.code_delivery_details.destination #=> String
    #   resp.code_delivery_details.delivery_medium #=> String, one of "SMS", "EMAIL"
    #   resp.code_delivery_details.attribute_name #=> String
    #   resp.user_sub #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/SignUp AWS API Documentation
    #
    # @overload sign_up(params = {})
    # @param [Hash] params ({})
    def sign_up(params = {}, options = {})
      req = build_request(:sign_up, params)
      req.send_request(options)
    end

    # Starts the user import.
    #
    # @option params [required, String] :user_pool_id
    #   The user pool ID for the user pool that the users are being imported
    #   into.
    #
    # @option params [required, String] :job_id
    #   The job ID for the user import job.
    #
    # @return [Types::StartUserImportJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartUserImportJobResponse#user_import_job #user_import_job} => Types::UserImportJobType
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_user_import_job({
    #     user_pool_id: "UserPoolIdType", # required
    #     job_id: "UserImportJobIdType", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.user_import_job.job_name #=> String
    #   resp.user_import_job.job_id #=> String
    #   resp.user_import_job.user_pool_id #=> String
    #   resp.user_import_job.pre_signed_url #=> String
    #   resp.user_import_job.creation_date #=> Time
    #   resp.user_import_job.start_date #=> Time
    #   resp.user_import_job.completion_date #=> Time
    #   resp.user_import_job.status #=> String, one of "Created", "Pending", "InProgress", "Stopping", "Expired", "Stopped", "Failed", "Succeeded"
    #   resp.user_import_job.cloud_watch_logs_role_arn #=> String
    #   resp.user_import_job.imported_users #=> Integer
    #   resp.user_import_job.skipped_users #=> Integer
    #   resp.user_import_job.failed_users #=> Integer
    #   resp.user_import_job.completion_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/StartUserImportJob AWS API Documentation
    #
    # @overload start_user_import_job(params = {})
    # @param [Hash] params ({})
    def start_user_import_job(params = {}, options = {})
      req = build_request(:start_user_import_job, params)
      req.send_request(options)
    end

    # Stops the user import job.
    #
    # @option params [required, String] :user_pool_id
    #   The user pool ID for the user pool that the users are being imported
    #   into.
    #
    # @option params [required, String] :job_id
    #   The job ID for the user import job.
    #
    # @return [Types::StopUserImportJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StopUserImportJobResponse#user_import_job #user_import_job} => Types::UserImportJobType
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_user_import_job({
    #     user_pool_id: "UserPoolIdType", # required
    #     job_id: "UserImportJobIdType", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.user_import_job.job_name #=> String
    #   resp.user_import_job.job_id #=> String
    #   resp.user_import_job.user_pool_id #=> String
    #   resp.user_import_job.pre_signed_url #=> String
    #   resp.user_import_job.creation_date #=> Time
    #   resp.user_import_job.start_date #=> Time
    #   resp.user_import_job.completion_date #=> Time
    #   resp.user_import_job.status #=> String, one of "Created", "Pending", "InProgress", "Stopping", "Expired", "Stopped", "Failed", "Succeeded"
    #   resp.user_import_job.cloud_watch_logs_role_arn #=> String
    #   resp.user_import_job.imported_users #=> Integer
    #   resp.user_import_job.skipped_users #=> Integer
    #   resp.user_import_job.failed_users #=> Integer
    #   resp.user_import_job.completion_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/StopUserImportJob AWS API Documentation
    #
    # @overload stop_user_import_job(params = {})
    # @param [Hash] params ({})
    def stop_user_import_job(params = {}, options = {})
      req = build_request(:stop_user_import_job, params)
      req.send_request(options)
    end

    # Updates the device status.
    #
    # @option params [required, String] :access_token
    #   The access token.
    #
    # @option params [required, String] :device_key
    #   The device key.
    #
    # @option params [String] :device_remembered_status
    #   The status of whether a device is remembered.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_device_status({
    #     access_token: "TokenModelType", # required
    #     device_key: "DeviceKeyType", # required
    #     device_remembered_status: "remembered", # accepts remembered, not_remembered
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/UpdateDeviceStatus AWS API Documentation
    #
    # @overload update_device_status(params = {})
    # @param [Hash] params ({})
    def update_device_status(params = {}, options = {})
      req = build_request(:update_device_status, params)
      req.send_request(options)
    end

    # Updates the specified group with the specified attributes.
    #
    # Requires developer credentials.
    #
    # @option params [required, String] :group_name
    #   The name of the group.
    #
    # @option params [required, String] :user_pool_id
    #   The user pool ID for the user pool.
    #
    # @option params [String] :description
    #   A string containing the new description of the group.
    #
    # @option params [String] :role_arn
    #   The new role ARN for the group. This is used for setting the
    #   `cognito:roles` and `cognito:preferred_role` claims in the token.
    #
    # @option params [Integer] :precedence
    #   The new precedence value for the group. For more information about
    #   this parameter, see [CreateGroup](API_CreateGroup.html).
    #
    # @return [Types::UpdateGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateGroupResponse#group #group} => Types::GroupType
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_group({
    #     group_name: "GroupNameType", # required
    #     user_pool_id: "UserPoolIdType", # required
    #     description: "DescriptionType",
    #     role_arn: "ArnType",
    #     precedence: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.group.group_name #=> String
    #   resp.group.user_pool_id #=> String
    #   resp.group.description #=> String
    #   resp.group.role_arn #=> String
    #   resp.group.precedence #=> Integer
    #   resp.group.last_modified_date #=> Time
    #   resp.group.creation_date #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/UpdateGroup AWS API Documentation
    #
    # @overload update_group(params = {})
    # @param [Hash] params ({})
    def update_group(params = {}, options = {})
      req = build_request(:update_group, params)
      req.send_request(options)
    end

    # Updates identity provider information for a user pool.
    #
    # @option params [required, String] :user_pool_id
    #   The user pool ID.
    #
    # @option params [required, String] :provider_name
    #   The identity provider name.
    #
    # @option params [Hash<String,String>] :provider_details
    #   The identity provider details to be updated, such as `MetadataURL` and
    #   `MetadataFile`.
    #
    # @option params [Hash<String,String>] :attribute_mapping
    #   The identity provider attribute mapping to be changed.
    #
    # @option params [Array<String>] :idp_identifiers
    #   A list of identity provider identifiers.
    #
    # @return [Types::UpdateIdentityProviderResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateIdentityProviderResponse#identity_provider #identity_provider} => Types::IdentityProviderType
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_identity_provider({
    #     user_pool_id: "UserPoolIdType", # required
    #     provider_name: "ProviderNameType", # required
    #     provider_details: {
    #       "StringType" => "StringType",
    #     },
    #     attribute_mapping: {
    #       "CustomAttributeNameType" => "StringType",
    #     },
    #     idp_identifiers: ["IdpIdentifierType"],
    #   })
    #
    # @example Response structure
    #
    #   resp.identity_provider.user_pool_id #=> String
    #   resp.identity_provider.provider_name #=> String
    #   resp.identity_provider.provider_type #=> String, one of "SAML"
    #   resp.identity_provider.provider_details #=> Hash
    #   resp.identity_provider.provider_details["StringType"] #=> String
    #   resp.identity_provider.attribute_mapping #=> Hash
    #   resp.identity_provider.attribute_mapping["CustomAttributeNameType"] #=> String
    #   resp.identity_provider.idp_identifiers #=> Array
    #   resp.identity_provider.idp_identifiers[0] #=> String
    #   resp.identity_provider.last_modified_date #=> Time
    #   resp.identity_provider.creation_date #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/UpdateIdentityProvider AWS API Documentation
    #
    # @overload update_identity_provider(params = {})
    # @param [Hash] params ({})
    def update_identity_provider(params = {}, options = {})
      req = build_request(:update_identity_provider, params)
      req.send_request(options)
    end

    # Allows a user to update a specific attribute (one at a time).
    #
    # @option params [required, Array<Types::AttributeType>] :user_attributes
    #   An array of name-value pairs representing user attributes.
    #
    #   For custom attributes, you must prepend the `custom:` prefix to the
    #   attribute name.
    #
    # @option params [required, String] :access_token
    #   The access token for the request to update user attributes.
    #
    # @return [Types::UpdateUserAttributesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateUserAttributesResponse#code_delivery_details_list #code_delivery_details_list} => Array&lt;Types::CodeDeliveryDetailsType&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_user_attributes({
    #     user_attributes: [ # required
    #       {
    #         name: "AttributeNameType", # required
    #         value: "AttributeValueType",
    #       },
    #     ],
    #     access_token: "TokenModelType", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.code_delivery_details_list #=> Array
    #   resp.code_delivery_details_list[0].destination #=> String
    #   resp.code_delivery_details_list[0].delivery_medium #=> String, one of "SMS", "EMAIL"
    #   resp.code_delivery_details_list[0].attribute_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/UpdateUserAttributes AWS API Documentation
    #
    # @overload update_user_attributes(params = {})
    # @param [Hash] params ({})
    def update_user_attributes(params = {}, options = {})
      req = build_request(:update_user_attributes, params)
      req.send_request(options)
    end

    # Updates the specified user pool with the specified attributes.
    #
    # @option params [required, String] :user_pool_id
    #   The user pool ID for the user pool you want to update.
    #
    # @option params [Types::UserPoolPolicyType] :policies
    #   A container with the policies you wish to update in a user pool.
    #
    # @option params [Types::LambdaConfigType] :lambda_config
    #   The AWS Lambda configuration information from the request to update
    #   the user pool.
    #
    # @option params [Array<String>] :auto_verified_attributes
    #   The attributes that are automatically verified when the Amazon Cognito
    #   service makes a request to update user pools.
    #
    # @option params [String] :sms_verification_message
    #   A container with information about the SMS verification message.
    #
    # @option params [String] :email_verification_message
    #   The contents of the email verification message.
    #
    # @option params [String] :email_verification_subject
    #   The subject of the email verification message.
    #
    # @option params [String] :sms_authentication_message
    #   The contents of the SMS authentication message.
    #
    # @option params [String] :mfa_configuration
    #   Can be one of the following values:
    #
    #   * `OFF` - MFA tokens are not required and cannot be specified during
    #     user registration.
    #
    #   * `ON` - MFA tokens are required for all user registrations. You can
    #     only specify required when you are initially creating a user pool.
    #
    #   * `OPTIONAL` - Users have the option when registering to create an MFA
    #     token.
    #
    # @option params [Types::DeviceConfigurationType] :device_configuration
    #   Device configuration.
    #
    # @option params [Types::EmailConfigurationType] :email_configuration
    #   Email configuration.
    #
    # @option params [Types::SmsConfigurationType] :sms_configuration
    #   SMS configuration.
    #
    # @option params [Hash<String,String>] :user_pool_tags
    #   The cost allocation tags for the user pool. For more information, see
    #   [Adding Cost Allocation Tags to Your User Pool][1]
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-cost-allocation-tagging.html
    #
    # @option params [Types::AdminCreateUserConfigType] :admin_create_user_config
    #   The configuration for `AdminCreateUser` requests.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
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
    #       define_auth_challenge: "ArnType",
    #       create_auth_challenge: "ArnType",
    #       verify_auth_challenge_response: "ArnType",
    #     },
    #     auto_verified_attributes: ["phone_number"], # accepts phone_number, email
    #     sms_verification_message: "SmsVerificationMessageType",
    #     email_verification_message: "EmailVerificationMessageType",
    #     email_verification_subject: "EmailVerificationSubjectType",
    #     sms_authentication_message: "SmsVerificationMessageType",
    #     mfa_configuration: "OFF", # accepts OFF, ON, OPTIONAL
    #     device_configuration: {
    #       challenge_required_on_new_device: false,
    #       device_only_remembered_on_user_prompt: false,
    #     },
    #     email_configuration: {
    #       source_arn: "ArnType",
    #       reply_to_email_address: "EmailAddressType",
    #     },
    #     sms_configuration: {
    #       sns_caller_arn: "ArnType", # required
    #       external_id: "StringType",
    #     },
    #     user_pool_tags: {
    #       "StringType" => "StringType",
    #     },
    #     admin_create_user_config: {
    #       allow_admin_create_user_only: false,
    #       unused_account_validity_days: 1,
    #       invite_message_template: {
    #         sms_message: "SmsVerificationMessageType",
    #         email_message: "EmailVerificationMessageType",
    #         email_subject: "EmailVerificationSubjectType",
    #       },
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/UpdateUserPool AWS API Documentation
    #
    # @overload update_user_pool(params = {})
    # @param [Hash] params ({})
    def update_user_pool(params = {}, options = {})
      req = build_request(:update_user_pool, params)
      req.send_request(options)
    end

    # Allows the developer to update the specified user pool client and
    # password policy.
    #
    # @option params [required, String] :user_pool_id
    #   The user pool ID for the user pool where you want to update the user
    #   pool client.
    #
    # @option params [required, String] :client_id
    #   The ID of the client associated with the user pool.
    #
    # @option params [String] :client_name
    #   The client name from the update user pool client request.
    #
    # @option params [Integer] :refresh_token_validity
    #   The time limit, in days, after which the refresh token is no longer
    #   valid and cannot be used.
    #
    # @option params [Array<String>] :read_attributes
    #   The read-only attributes of the user pool.
    #
    # @option params [Array<String>] :write_attributes
    #   The writeable attributes of the user pool.
    #
    # @option params [Array<String>] :explicit_auth_flows
    #   Explicit authentication flows.
    #
    # @option params [Array<String>] :supported_identity_providers
    #   A list of provider names for the identity providers that are supported
    #   on this client.
    #
    # @option params [Array<String>] :callback_urls
    #   A list of allowed callback URLs for the identity providers.
    #
    # @option params [Array<String>] :logout_urls
    #   A list ofallowed logout URLs for the identity providers.
    #
    # @option params [String] :default_redirect_uri
    #   The default redirect URI. Must be in the `CallbackURLs` list.
    #
    # @option params [Array<String>] :allowed_o_auth_flows
    #   Set to `code` to initiate a code grant flow, which provides an
    #   authorization code as the response. This code can be exchanged for
    #   access tokens with the token endpoint.
    #
    #   Set to `token` to specify that the client should get the access token
    #   (and, optionally, ID token, based on scopes) directly.
    #
    # @option params [Array<String>] :allowed_o_auth_scopes
    #   A list of allowed `OAuth` scopes. Currently supported values are
    #   `"phone"`, `"email"`, `"openid"`, and `"Cognito"`.
    #
    # @option params [Boolean] :allowed_o_auth_flows_user_pool_client
    #   Set to TRUE if the client is allowed to follow the OAuth protocol when
    #   interacting with Cognito user pools.
    #
    # @return [Types::UpdateUserPoolClientResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateUserPoolClientResponse#user_pool_client #user_pool_client} => Types::UserPoolClientType
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_user_pool_client({
    #     user_pool_id: "UserPoolIdType", # required
    #     client_id: "ClientIdType", # required
    #     client_name: "ClientNameType",
    #     refresh_token_validity: 1,
    #     read_attributes: ["ClientPermissionType"],
    #     write_attributes: ["ClientPermissionType"],
    #     explicit_auth_flows: ["ADMIN_NO_SRP_AUTH"], # accepts ADMIN_NO_SRP_AUTH, CUSTOM_AUTH_FLOW_ONLY
    #     supported_identity_providers: ["ProviderNameType"],
    #     callback_urls: ["RedirectUrlType"],
    #     logout_urls: ["RedirectUrlType"],
    #     default_redirect_uri: "RedirectUrlType",
    #     allowed_o_auth_flows: ["code"], # accepts code, implicit, client_credentials
    #     allowed_o_auth_scopes: ["ScopeType"],
    #     allowed_o_auth_flows_user_pool_client: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.user_pool_client.user_pool_id #=> String
    #   resp.user_pool_client.client_name #=> String
    #   resp.user_pool_client.client_id #=> String
    #   resp.user_pool_client.client_secret #=> String
    #   resp.user_pool_client.last_modified_date #=> Time
    #   resp.user_pool_client.creation_date #=> Time
    #   resp.user_pool_client.refresh_token_validity #=> Integer
    #   resp.user_pool_client.read_attributes #=> Array
    #   resp.user_pool_client.read_attributes[0] #=> String
    #   resp.user_pool_client.write_attributes #=> Array
    #   resp.user_pool_client.write_attributes[0] #=> String
    #   resp.user_pool_client.explicit_auth_flows #=> Array
    #   resp.user_pool_client.explicit_auth_flows[0] #=> String, one of "ADMIN_NO_SRP_AUTH", "CUSTOM_AUTH_FLOW_ONLY"
    #   resp.user_pool_client.supported_identity_providers #=> Array
    #   resp.user_pool_client.supported_identity_providers[0] #=> String
    #   resp.user_pool_client.callback_urls #=> Array
    #   resp.user_pool_client.callback_urls[0] #=> String
    #   resp.user_pool_client.logout_urls #=> Array
    #   resp.user_pool_client.logout_urls[0] #=> String
    #   resp.user_pool_client.default_redirect_uri #=> String
    #   resp.user_pool_client.allowed_o_auth_flows #=> Array
    #   resp.user_pool_client.allowed_o_auth_flows[0] #=> String, one of "code", "implicit", "client_credentials"
    #   resp.user_pool_client.allowed_o_auth_scopes #=> Array
    #   resp.user_pool_client.allowed_o_auth_scopes[0] #=> String
    #   resp.user_pool_client.allowed_o_auth_flows_user_pool_client #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/UpdateUserPoolClient AWS API Documentation
    #
    # @overload update_user_pool_client(params = {})
    # @param [Hash] params ({})
    def update_user_pool_client(params = {}, options = {})
      req = build_request(:update_user_pool_client, params)
      req.send_request(options)
    end

    # Verifies the specified user attributes in the user pool.
    #
    # @option params [required, String] :access_token
    #   Represents the access token of the request to verify user attributes.
    #
    # @option params [required, String] :attribute_name
    #   The attribute name in the request to verify user attributes.
    #
    # @option params [required, String] :code
    #   The verification code in the request to verify user attributes.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.verify_user_attribute({
    #     access_token: "TokenModelType", # required
    #     attribute_name: "AttributeNameType", # required
    #     code: "ConfirmationCodeType", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/VerifyUserAttribute AWS API Documentation
    #
    # @overload verify_user_attribute(params = {})
    # @param [Hash] params ({})
    def verify_user_attribute(params = {}, options = {})
      req = build_request(:verify_user_attribute, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config)
      context[:gem_name] = 'aws-sdk-cognitoidentityprovider'
      context[:gem_version] = '1.0.0.rc7'
      Seahorse::Client::Request.new(handlers, context)
    end

    # @api private
    # @deprecated
    def waiter_names
      []
    end

    class << self

      # @api private
      attr_reader :identifier

      # @api private
      def errors_module
        Errors
      end

    end
  end
end
