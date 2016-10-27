# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing for info on making contributions:
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
require 'aws-sdk-core/plugins/signature_v4.rb'
require 'aws-sdk-core/plugins/response_paging.rb'
require 'aws-sdk-core/plugins/stub_responses.rb'
require 'aws-sdk-core/plugins/protocols/json_rpc.rb'

Aws::Plugins::GlobalConfiguration::IDENTIFIERS << :cognitoidentityprovider

module Aws
  module CognitoIdentityProvider
    class Client < Seahorse::Client::Base

      include Aws::ClientStubs
      include Aws::ClientWaiters

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
      add_plugin(Aws::Plugins::SignatureV4)
      add_plugin(Aws::Plugins::ResponsePaging)
      add_plugin(Aws::Plugins::StubResponses)
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
      # @option options [String] :access_key_id
      # @option options [Boolean] :convert_params (true)
      #   When `true`, an attempt is made to coerce request parameters into
      #   the required types.
      # @option options [String] :endpoint
      #   The client endpoint is normally constructed from the `:region`
      #   option. You should only configure an `:endpoint` when connecting
      #   to test endpoints. This should be avalid HTTP(S) URI.
      # @option options [Aws::Log::Formatter] :log_formatter (Aws::Log::Formatter.default)
      #   The log formatter.
      # @option options [Symbol] :log_level (:info)
      #   The log level to send messages to the `:logger` at.
      # @option options [Logger] :logger
      #   The Logger instance to send log messages to.  If this option
      #   is not set, logging will be disabled.
      # @option options [String] :profile ("default")
      #   Used when loading credentials from the shared credentials file
      #   at HOME/.aws/credentials.  When not specified, 'default' is used.
      # @option options [Integer] :retry_limit (3)
      #   The maximum number of times to retry failed requests.  Only
      #   ~ 500 level server errors and certain ~ 400 level client errors
      #   are retried.  Generally, these are throttling errors, data
      #   checksum errors, networking errors, timeout errors and auth
      #   errors from expired credentials.
      # @option options [String] :secret_access_key
      # @option options [String] :session_token
      # @option options [Boolean] :simple_json (false)
      #   Disables request parameter conversion, validation, and formatting.
      #   Also disable response data type conversions. This option is useful
      #   when you want to ensure the highest level of performance by
      #   avoiding overhead of walking request parameters and response data
      #   structures.
      #
      #   When `:simple_json` is enabled, the request parameters hash must
      #   be formatted exactly as the DynamoDB API expects.
      # @option options [Boolean] :stub_responses (false)
      #   Causes the client to return stubbed responses. By default
      #   fake responses are generated and returned. You can specify
      #   the response data to return or errors to raise by calling
      #   {ClientStubs#stub_responses}. See {ClientStubs} for more information.
      #
      #   ** Please note ** When response stubbing is enabled, no HTTP
      #   requests are made, and retries are disabled.
      # @option options [Boolean] :validate_params (true)
      #   When `true`, request parameters are validated before
      #   sending the request.
      def initialize(*args)
        super
      end

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
      # @overload add_custom_attributes(params = {})
      # @param [Hash] params ({})
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
      # @overload admin_confirm_sign_up(params = {})
      # @param [Hash] params ({})
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
      # @overload admin_delete_user(params = {})
      # @param [Hash] params ({})
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
      # @overload admin_delete_user_attributes(params = {})
      # @param [Hash] params ({})
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
      # @overload admin_disable_user(params = {})
      # @param [Hash] params ({})
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
      # @overload admin_enable_user(params = {})
      # @param [Hash] params ({})
      def admin_enable_user(params = {}, options = {})
        req = build_request(:admin_enable_user, params)
        req.send_request(options)
      end

      # Forgets the device, as an administrator.
      # @option params [required, String] :user_pool_id
      #   The user pool ID.
      # @option params [required, String] :username
      #   The user name.
      # @option params [required, String] :device_key
      #   The device key.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.admin_forget_device({
      #     user_pool_id: "UserPoolIdType", # required
      #     username: "UsernameType", # required
      #     device_key: "DeviceKeyType", # required
      #   })
      # @overload admin_forget_device(params = {})
      # @param [Hash] params ({})
      def admin_forget_device(params = {}, options = {})
        req = build_request(:admin_forget_device, params)
        req.send_request(options)
      end

      # Gets the device, as an administrator.
      # @option params [required, String] :device_key
      #   The device key.
      # @option params [required, String] :user_pool_id
      #   The user pool ID.
      # @option params [required, String] :username
      #   The user name.
      # @return [Types::AdminGetDeviceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::AdminGetDeviceResponse#device #Device} => Types::DeviceType
      #
      # @example Request syntax with placeholder values
      #   resp = client.admin_get_device({
      #     device_key: "DeviceKeyType", # required
      #     user_pool_id: "UserPoolIdType", # required
      #     username: "UsernameType", # required
      #   })
      #
      # @example Response structure
      #   resp.device.device_key #=> String
      #   resp.device.device_attributes #=> Array
      #   resp.device.device_attributes[0].name #=> String
      #   resp.device.device_attributes[0].value #=> String
      #   resp.device.device_create_date #=> Time
      #   resp.device.device_last_modified_date #=> Time
      #   resp.device.device_last_authenticated_date #=> Time
      # @overload admin_get_device(params = {})
      # @param [Hash] params ({})
      def admin_get_device(params = {}, options = {})
        req = build_request(:admin_get_device, params)
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
      #   resp.user_status #=> String, one of "UNCONFIRMED", "CONFIRMED", "ARCHIVED", "COMPROMISED", "UNKNOWN", "RESET_REQUIRED"
      #   resp.mfa_options #=> Array
      #   resp.mfa_options[0].delivery_medium #=> String, one of "SMS", "EMAIL"
      #   resp.mfa_options[0].attribute_name #=> String
      # @overload admin_get_user(params = {})
      # @param [Hash] params ({})
      def admin_get_user(params = {}, options = {})
        req = build_request(:admin_get_user, params)
        req.send_request(options)
      end

      # Initiates the authentication flow, as an administrator.
      # @option params [required, String] :user_pool_id
      #   The ID of the Amazon Cognito user pool.
      # @option params [required, String] :client_id
      #   The client app ID.
      # @option params [required, String] :auth_flow
      #   The authentication flow.
      # @option params [Hash<String,String>] :auth_parameters
      #   The authentication parameters.
      # @option params [Hash<String,String>] :client_metadata
      #   The client app metadata.
      # @return [Types::AdminInitiateAuthResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::AdminInitiateAuthResponse#challenge_name #ChallengeName} => String
      #   * {Types::AdminInitiateAuthResponse#session #Session} => String
      #   * {Types::AdminInitiateAuthResponse#challenge_parameters #ChallengeParameters} => Hash&lt;String,String&gt;
      #   * {Types::AdminInitiateAuthResponse#authentication_result #AuthenticationResult} => Types::AuthenticationResultType
      #
      # @example Request syntax with placeholder values
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
      #   resp.challenge_name #=> String, one of "SMS_MFA", "PASSWORD_VERIFIER", "CUSTOM_CHALLENGE", "DEVICE_SRP_AUTH", "DEVICE_PASSWORD_VERIFIER", "ADMIN_NO_SRP_AUTH"
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
      # @overload admin_initiate_auth(params = {})
      # @param [Hash] params ({})
      def admin_initiate_auth(params = {}, options = {})
        req = build_request(:admin_initiate_auth, params)
        req.send_request(options)
      end

      # Lists devices, as an administrator.
      # @option params [required, String] :user_pool_id
      #   The user pool ID.
      # @option params [required, String] :username
      #   The user name.
      # @option params [Integer] :limit
      #   The limit of the devices request.
      # @option params [String] :pagination_token
      #   The pagination token.
      # @return [Types::AdminListDevicesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::AdminListDevicesResponse#devices #Devices} => Array&lt;Types::DeviceType&gt;
      #   * {Types::AdminListDevicesResponse#pagination_token #PaginationToken} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.admin_list_devices({
      #     user_pool_id: "UserPoolIdType", # required
      #     username: "UsernameType", # required
      #     limit: 1,
      #     pagination_token: "SearchPaginationTokenType",
      #   })
      #
      # @example Response structure
      #   resp.devices #=> Array
      #   resp.devices[0].device_key #=> String
      #   resp.devices[0].device_attributes #=> Array
      #   resp.devices[0].device_attributes[0].name #=> String
      #   resp.devices[0].device_attributes[0].value #=> String
      #   resp.devices[0].device_create_date #=> Time
      #   resp.devices[0].device_last_modified_date #=> Time
      #   resp.devices[0].device_last_authenticated_date #=> Time
      #   resp.pagination_token #=> String
      # @overload admin_list_devices(params = {})
      # @param [Hash] params ({})
      def admin_list_devices(params = {}, options = {})
        req = build_request(:admin_list_devices, params)
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
      # @option params [required, String] :user_pool_id
      #   The user pool ID for the user pool where you want to reset the user's
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
      # @overload admin_reset_user_password(params = {})
      # @param [Hash] params ({})
      def admin_reset_user_password(params = {}, options = {})
        req = build_request(:admin_reset_user_password, params)
        req.send_request(options)
      end

      # Responds to an authentication challenge, as an administrator.
      # @option params [required, String] :user_pool_id
      #   The ID of the Amazon Cognito user pool.
      # @option params [required, String] :client_id
      #   The client ID.
      # @option params [required, String] :challenge_name
      #   The name of the challenge.
      # @option params [Hash<String,String>] :challenge_responses
      #   The challenge response.
      # @option params [String] :session
      #   The session.
      # @return [Types::AdminRespondToAuthChallengeResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::AdminRespondToAuthChallengeResponse#challenge_name #ChallengeName} => String
      #   * {Types::AdminRespondToAuthChallengeResponse#session #Session} => String
      #   * {Types::AdminRespondToAuthChallengeResponse#challenge_parameters #ChallengeParameters} => Hash&lt;String,String&gt;
      #   * {Types::AdminRespondToAuthChallengeResponse#authentication_result #AuthenticationResult} => Types::AuthenticationResultType
      #
      # @example Request syntax with placeholder values
      #   resp = client.admin_respond_to_auth_challenge({
      #     user_pool_id: "UserPoolIdType", # required
      #     client_id: "ClientIdType", # required
      #     challenge_name: "SMS_MFA", # required, accepts SMS_MFA, PASSWORD_VERIFIER, CUSTOM_CHALLENGE, DEVICE_SRP_AUTH, DEVICE_PASSWORD_VERIFIER, ADMIN_NO_SRP_AUTH
      #     challenge_responses: {
      #       "StringType" => "StringType",
      #     },
      #     session: "SessionType",
      #   })
      #
      # @example Response structure
      #   resp.challenge_name #=> String, one of "SMS_MFA", "PASSWORD_VERIFIER", "CUSTOM_CHALLENGE", "DEVICE_SRP_AUTH", "DEVICE_PASSWORD_VERIFIER", "ADMIN_NO_SRP_AUTH"
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
      # @overload admin_respond_to_auth_challenge(params = {})
      # @param [Hash] params ({})
      def admin_respond_to_auth_challenge(params = {}, options = {})
        req = build_request(:admin_respond_to_auth_challenge, params)
        req.send_request(options)
      end

      # Sets all the user settings for a specified user name. Works on any
      # user.
      # @option params [required, String] :user_pool_id
      #   The user pool ID for the user pool where you want to set the user's
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
      # @overload admin_set_user_settings(params = {})
      # @param [Hash] params ({})
      def admin_set_user_settings(params = {}, options = {})
        req = build_request(:admin_set_user_settings, params)
        req.send_request(options)
      end

      # Updates the device status as an administrator.
      # @option params [required, String] :user_pool_id
      #   The user pool ID>
      # @option params [required, String] :username
      #   The user name.
      # @option params [required, String] :device_key
      #   The device key.
      # @option params [String] :device_remembered_status
      #   The status indicating whether a device has been remembered or not.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.admin_update_device_status({
      #     user_pool_id: "UserPoolIdType", # required
      #     username: "UsernameType", # required
      #     device_key: "DeviceKeyType", # required
      #     device_remembered_status: "remembered", # accepts remembered, not_remembered
      #   })
      # @overload admin_update_device_status(params = {})
      # @param [Hash] params ({})
      def admin_update_device_status(params = {}, options = {})
        req = build_request(:admin_update_device_status, params)
        req.send_request(options)
      end

      # Updates the specified user's attributes, including developer
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
      # @overload admin_update_user_attributes(params = {})
      # @param [Hash] params ({})
      def admin_update_user_attributes(params = {}, options = {})
        req = build_request(:admin_update_user_attributes, params)
        req.send_request(options)
      end

      # Signs out users from all devices, as an administrator.
      # @option params [required, String] :user_pool_id
      #   The user pool ID.
      # @option params [required, String] :username
      #   The user name.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.admin_user_global_sign_out({
      #     user_pool_id: "UserPoolIdType", # required
      #     username: "UsernameType", # required
      #   })
      # @overload admin_user_global_sign_out(params = {})
      # @param [Hash] params ({})
      def admin_user_global_sign_out(params = {}, options = {})
        req = build_request(:admin_user_global_sign_out, params)
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
      # @overload change_password(params = {})
      # @param [Hash] params ({})
      def change_password(params = {}, options = {})
        req = build_request(:change_password, params)
        req.send_request(options)
      end

      # Confirms tracking of the device. This API call is the call that beings
      # device tracking.
      # @option params [required, String] :access_token
      #   The access token.
      # @option params [required, String] :device_key
      #   The device key.
      # @option params [Types::DeviceSecretVerifierConfigType] :device_secret_verifier_config
      #   The configuration of the device secret verifier.
      # @option params [String] :device_name
      #   The device name.
      # @return [Types::ConfirmDeviceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ConfirmDeviceResponse#user_confirmation_necessary #UserConfirmationNecessary} => Boolean
      #
      # @example Request syntax with placeholder values
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
      #   resp.user_confirmation_necessary #=> Boolean
      # @overload confirm_device(params = {})
      # @param [Hash] params ({})
      def confirm_device(params = {}, options = {})
        req = build_request(:confirm_device, params)
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
      #   The confirmation code sent by a user's request to retrieve a
      #   forgotten password.
      # @option params [required, String] :password
      #   The password sent by sent by a user's request to retrieve a forgotten
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
      # @overload confirm_forgot_password(params = {})
      # @param [Hash] params ({})
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
      #   The confirmation code sent by a user's request to confirm
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
      # @overload confirm_sign_up(params = {})
      # @param [Hash] params ({})
      def confirm_sign_up(params = {}, options = {})
        req = build_request(:confirm_sign_up, params)
        req.send_request(options)
      end

      # Creates the user import job.
      # @option params [required, String] :job_name
      #   The job name for the user import job.
      # @option params [required, String] :user_pool_id
      #   The user pool ID for the user pool that the users are being imported
      #   into.
      # @option params [required, String] :cloud_watch_logs_role_arn
      #   The role ARN for the Amazon CloudWatch Logging role for the user
      #   import job.
      # @return [Types::CreateUserImportJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::CreateUserImportJobResponse#user_import_job #UserImportJob} => Types::UserImportJobType
      #
      # @example Request syntax with placeholder values
      #   resp = client.create_user_import_job({
      #     job_name: "UserImportJobNameType", # required
      #     user_pool_id: "UserPoolIdType", # required
      #     cloud_watch_logs_role_arn: "ArnType", # required
      #   })
      #
      # @example Response structure
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
      # @overload create_user_import_job(params = {})
      # @param [Hash] params ({})
      def create_user_import_job(params = {}, options = {})
        req = build_request(:create_user_import_job, params)
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
      # @option params [Types::DeviceConfigurationType] :device_configuration
      #   The device configuration.
      # @option params [Types::EmailConfigurationType] :email_configuration
      #   The email configuration.
      # @option params [Types::SmsConfigurationType] :sms_configuration
      #   The SMS configuration.
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
      #       sns_caller_arn: "ArnType",
      #       external_id: "StringType",
      #     },
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
      #   resp.user_pool.sms_configuration_failure #=> String
      #   resp.user_pool.email_configuration_failure #=> String
      # @overload create_user_pool(params = {})
      # @param [Hash] params ({})
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
      # @option params [Integer] :refresh_token_validity
      #   Refreshes the token validity.
      # @option params [Array<String>] :read_attributes
      #   The read attributes.
      # @option params [Array<String>] :write_attributes
      #   The write attributes.
      # @option params [Array<String>] :explicit_auth_flows
      #   The explicit authentication flows.
      # @return [Types::CreateUserPoolClientResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::CreateUserPoolClientResponse#user_pool_client #UserPoolClient} => Types::UserPoolClientType
      #
      # @example Request syntax with placeholder values
      #   resp = client.create_user_pool_client({
      #     user_pool_id: "UserPoolIdType", # required
      #     client_name: "ClientNameType", # required
      #     generate_secret: false,
      #     refresh_token_validity: 1,
      #     read_attributes: ["ClientPermissionType"],
      #     write_attributes: ["ClientPermissionType"],
      #     explicit_auth_flows: ["ADMIN_NO_SRP_AUTH"], # accepts ADMIN_NO_SRP_AUTH, CUSTOM_AUTH_FLOW_ONLY
      #   })
      #
      # @example Response structure
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
      # @overload create_user_pool_client(params = {})
      # @param [Hash] params ({})
      def create_user_pool_client(params = {}, options = {})
        req = build_request(:create_user_pool_client, params)
        req.send_request(options)
      end

      # Allows a user to delete one's self.
      # @option params [String] :access_token
      #   The access token from a request to delete a user.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.delete_user({
      #     access_token: "TokenModelType",
      #   })
      # @overload delete_user(params = {})
      # @param [Hash] params ({})
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
      # @overload delete_user_attributes(params = {})
      # @param [Hash] params ({})
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
      # @overload delete_user_pool(params = {})
      # @param [Hash] params ({})
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
      # @overload delete_user_pool_client(params = {})
      # @param [Hash] params ({})
      def delete_user_pool_client(params = {}, options = {})
        req = build_request(:delete_user_pool_client, params)
        req.send_request(options)
      end

      # Describes the user import job.
      # @option params [required, String] :user_pool_id
      #   The user pool ID for the user pool that the users are being imported
      #   into.
      # @option params [required, String] :job_id
      #   The job ID for the user import job.
      # @return [Types::DescribeUserImportJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::DescribeUserImportJobResponse#user_import_job #UserImportJob} => Types::UserImportJobType
      #
      # @example Request syntax with placeholder values
      #   resp = client.describe_user_import_job({
      #     user_pool_id: "UserPoolIdType", # required
      #     job_id: "UserImportJobIdType", # required
      #   })
      #
      # @example Response structure
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
      # @overload describe_user_import_job(params = {})
      # @param [Hash] params ({})
      def describe_user_import_job(params = {}, options = {})
        req = build_request(:describe_user_import_job, params)
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
      #   resp.user_pool.sms_configuration_failure #=> String
      #   resp.user_pool.email_configuration_failure #=> String
      # @overload describe_user_pool(params = {})
      # @param [Hash] params ({})
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
      #   resp.user_pool_client.refresh_token_validity #=> Integer
      #   resp.user_pool_client.read_attributes #=> Array
      #   resp.user_pool_client.read_attributes[0] #=> String
      #   resp.user_pool_client.write_attributes #=> Array
      #   resp.user_pool_client.write_attributes[0] #=> String
      #   resp.user_pool_client.explicit_auth_flows #=> Array
      #   resp.user_pool_client.explicit_auth_flows[0] #=> String, one of "ADMIN_NO_SRP_AUTH", "CUSTOM_AUTH_FLOW_ONLY"
      # @overload describe_user_pool_client(params = {})
      # @param [Hash] params ({})
      def describe_user_pool_client(params = {}, options = {})
        req = build_request(:describe_user_pool_client, params)
        req.send_request(options)
      end

      # Forgets the specified device.
      # @option params [String] :access_token
      #   The access token for the forgotten device request.
      # @option params [required, String] :device_key
      #   The device key.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.forget_device({
      #     access_token: "TokenModelType",
      #     device_key: "DeviceKeyType", # required
      #   })
      # @overload forget_device(params = {})
      # @param [Hash] params ({})
      def forget_device(params = {}, options = {})
        req = build_request(:forget_device, params)
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
      # @overload forgot_password(params = {})
      # @param [Hash] params ({})
      def forgot_password(params = {}, options = {})
        req = build_request(:forgot_password, params)
        req.send_request(options)
      end

      # Gets the header information for the .csv file to be used as input for
      # the user import job.
      # @option params [required, String] :user_pool_id
      #   The user pool ID for the user pool that the users are to be imported
      #   into.
      # @return [Types::GetCSVHeaderResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::GetCSVHeaderResponse#user_pool_id #UserPoolId} => String
      #   * {Types::GetCSVHeaderResponse#csv_header #CSVHeader} => Array&lt;String&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.get_csv_header({
      #     user_pool_id: "UserPoolIdType", # required
      #   })
      #
      # @example Response structure
      #   resp.user_pool_id #=> String
      #   resp.csv_header #=> Array
      #   resp.csv_header[0] #=> String
      # @overload get_csv_header(params = {})
      # @param [Hash] params ({})
      def get_csv_header(params = {}, options = {})
        req = build_request(:get_csv_header, params)
        req.send_request(options)
      end

      # Gets the device.
      # @option params [required, String] :device_key
      #   The device key.
      # @option params [String] :access_token
      #   The access token.
      # @return [Types::GetDeviceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::GetDeviceResponse#device #Device} => Types::DeviceType
      #
      # @example Request syntax with placeholder values
      #   resp = client.get_device({
      #     device_key: "DeviceKeyType", # required
      #     access_token: "TokenModelType",
      #   })
      #
      # @example Response structure
      #   resp.device.device_key #=> String
      #   resp.device.device_attributes #=> Array
      #   resp.device.device_attributes[0].name #=> String
      #   resp.device.device_attributes[0].value #=> String
      #   resp.device.device_create_date #=> Time
      #   resp.device.device_last_modified_date #=> Time
      #   resp.device.device_last_authenticated_date #=> Time
      # @overload get_device(params = {})
      # @param [Hash] params ({})
      def get_device(params = {}, options = {})
        req = build_request(:get_device, params)
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
      # @overload get_user(params = {})
      # @param [Hash] params ({})
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
      # @overload get_user_attribute_verification_code(params = {})
      # @param [Hash] params ({})
      def get_user_attribute_verification_code(params = {}, options = {})
        req = build_request(:get_user_attribute_verification_code, params)
        req.send_request(options)
      end

      # Signs out users from all devices.
      # @option params [String] :access_token
      #   The access token.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.global_sign_out({
      #     access_token: "TokenModelType",
      #   })
      # @overload global_sign_out(params = {})
      # @param [Hash] params ({})
      def global_sign_out(params = {}, options = {})
        req = build_request(:global_sign_out, params)
        req.send_request(options)
      end

      # Initiates the authentication flow.
      # @option params [required, String] :auth_flow
      #   The authentication flow.
      # @option params [Hash<String,String>] :auth_parameters
      #   The authentication parameters.
      # @option params [Hash<String,String>] :client_metadata
      #   The client app's metadata.
      # @option params [required, String] :client_id
      #   The client ID.
      # @return [Types::InitiateAuthResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::InitiateAuthResponse#challenge_name #ChallengeName} => String
      #   * {Types::InitiateAuthResponse#session #Session} => String
      #   * {Types::InitiateAuthResponse#challenge_parameters #ChallengeParameters} => Hash&lt;String,String&gt;
      #   * {Types::InitiateAuthResponse#authentication_result #AuthenticationResult} => Types::AuthenticationResultType
      #
      # @example Request syntax with placeholder values
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
      #   resp.challenge_name #=> String, one of "SMS_MFA", "PASSWORD_VERIFIER", "CUSTOM_CHALLENGE", "DEVICE_SRP_AUTH", "DEVICE_PASSWORD_VERIFIER", "ADMIN_NO_SRP_AUTH"
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
      # @overload initiate_auth(params = {})
      # @param [Hash] params ({})
      def initiate_auth(params = {}, options = {})
        req = build_request(:initiate_auth, params)
        req.send_request(options)
      end

      # Lists the devices.
      # @option params [required, String] :access_token
      #   The access tokens for the request to list devices.
      # @option params [Integer] :limit
      #   The limit of the device request.
      # @option params [String] :pagination_token
      #   The pagination token for the list request.
      # @return [Types::ListDevicesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ListDevicesResponse#devices #Devices} => Array&lt;Types::DeviceType&gt;
      #   * {Types::ListDevicesResponse#pagination_token #PaginationToken} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.list_devices({
      #     access_token: "TokenModelType", # required
      #     limit: 1,
      #     pagination_token: "SearchPaginationTokenType",
      #   })
      #
      # @example Response structure
      #   resp.devices #=> Array
      #   resp.devices[0].device_key #=> String
      #   resp.devices[0].device_attributes #=> Array
      #   resp.devices[0].device_attributes[0].name #=> String
      #   resp.devices[0].device_attributes[0].value #=> String
      #   resp.devices[0].device_create_date #=> Time
      #   resp.devices[0].device_last_modified_date #=> Time
      #   resp.devices[0].device_last_authenticated_date #=> Time
      #   resp.pagination_token #=> String
      # @overload list_devices(params = {})
      # @param [Hash] params ({})
      def list_devices(params = {}, options = {})
        req = build_request(:list_devices, params)
        req.send_request(options)
      end

      # Lists the user import jobs.
      # @option params [required, String] :user_pool_id
      #   The user pool ID for the user pool that the users are being imported
      #   into.
      # @option params [required, Integer] :max_results
      #   The maximum number of import jobs you want the request to return.
      # @option params [String] :pagination_token
      #   An identifier that was returned from the previous call to this
      #   operation, which can be used to return the next set of import jobs in
      #   the list.
      # @return [Types::ListUserImportJobsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ListUserImportJobsResponse#user_import_jobs #UserImportJobs} => Array&lt;Types::UserImportJobType&gt;
      #   * {Types::ListUserImportJobsResponse#pagination_token #PaginationToken} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.list_user_import_jobs({
      #     user_pool_id: "UserPoolIdType", # required
      #     max_results: 1, # required
      #     pagination_token: "PaginationKeyType",
      #   })
      #
      # @example Response structure
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
      # @overload list_user_import_jobs(params = {})
      # @param [Hash] params ({})
      def list_user_import_jobs(params = {}, options = {})
        req = build_request(:list_user_import_jobs, params)
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
      # @overload list_user_pool_clients(params = {})
      # @param [Hash] params ({})
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
      #   resp.user_pools[0].lambda_config.define_auth_challenge #=> String
      #   resp.user_pools[0].lambda_config.create_auth_challenge #=> String
      #   resp.user_pools[0].lambda_config.verify_auth_challenge_response #=> String
      #   resp.user_pools[0].status #=> String, one of "Enabled", "Disabled"
      #   resp.user_pools[0].last_modified_date #=> Time
      #   resp.user_pools[0].creation_date #=> Time
      #   resp.next_token #=> String
      # @overload list_user_pools(params = {})
      # @param [Hash] params ({})
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
      # @option params [String] :filter
      #   The filter for the list users request.
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
      #     filter: "UserFilterType",
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
      #   resp.users[0].user_status #=> String, one of "UNCONFIRMED", "CONFIRMED", "ARCHIVED", "COMPROMISED", "UNKNOWN", "RESET_REQUIRED"
      #   resp.pagination_token #=> String
      # @overload list_users(params = {})
      # @param [Hash] params ({})
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
      # @overload resend_confirmation_code(params = {})
      # @param [Hash] params ({})
      def resend_confirmation_code(params = {}, options = {})
        req = build_request(:resend_confirmation_code, params)
        req.send_request(options)
      end

      # Responds to the authentication challenge.
      # @option params [required, String] :client_id
      #   The client ID.
      # @option params [required, String] :challenge_name
      #   The name of the challenge.
      # @option params [String] :session
      #   The session.
      # @option params [Hash<String,String>] :challenge_responses
      #   The responses to the authentication challenge.
      # @return [Types::RespondToAuthChallengeResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::RespondToAuthChallengeResponse#challenge_name #ChallengeName} => String
      #   * {Types::RespondToAuthChallengeResponse#session #Session} => String
      #   * {Types::RespondToAuthChallengeResponse#challenge_parameters #ChallengeParameters} => Hash&lt;String,String&gt;
      #   * {Types::RespondToAuthChallengeResponse#authentication_result #AuthenticationResult} => Types::AuthenticationResultType
      #
      # @example Request syntax with placeholder values
      #   resp = client.respond_to_auth_challenge({
      #     client_id: "ClientIdType", # required
      #     challenge_name: "SMS_MFA", # required, accepts SMS_MFA, PASSWORD_VERIFIER, CUSTOM_CHALLENGE, DEVICE_SRP_AUTH, DEVICE_PASSWORD_VERIFIER, ADMIN_NO_SRP_AUTH
      #     session: "SessionType",
      #     challenge_responses: {
      #       "StringType" => "StringType",
      #     },
      #   })
      #
      # @example Response structure
      #   resp.challenge_name #=> String, one of "SMS_MFA", "PASSWORD_VERIFIER", "CUSTOM_CHALLENGE", "DEVICE_SRP_AUTH", "DEVICE_PASSWORD_VERIFIER", "ADMIN_NO_SRP_AUTH"
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
      # @overload set_user_settings(params = {})
      # @param [Hash] params ({})
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
      # @overload sign_up(params = {})
      # @param [Hash] params ({})
      def sign_up(params = {}, options = {})
        req = build_request(:sign_up, params)
        req.send_request(options)
      end

      # Starts the user import.
      # @option params [required, String] :user_pool_id
      #   The user pool ID for the user pool that the users are being imported
      #   into.
      # @option params [required, String] :job_id
      #   The job ID for the user import job.
      # @return [Types::StartUserImportJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::StartUserImportJobResponse#user_import_job #UserImportJob} => Types::UserImportJobType
      #
      # @example Request syntax with placeholder values
      #   resp = client.start_user_import_job({
      #     user_pool_id: "UserPoolIdType", # required
      #     job_id: "UserImportJobIdType", # required
      #   })
      #
      # @example Response structure
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
      # @overload start_user_import_job(params = {})
      # @param [Hash] params ({})
      def start_user_import_job(params = {}, options = {})
        req = build_request(:start_user_import_job, params)
        req.send_request(options)
      end

      # Stops the user import job.
      # @option params [required, String] :user_pool_id
      #   The user pool ID for the user pool that the users are being imported
      #   into.
      # @option params [required, String] :job_id
      #   The job ID for the user import job.
      # @return [Types::StopUserImportJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::StopUserImportJobResponse#user_import_job #UserImportJob} => Types::UserImportJobType
      #
      # @example Request syntax with placeholder values
      #   resp = client.stop_user_import_job({
      #     user_pool_id: "UserPoolIdType", # required
      #     job_id: "UserImportJobIdType", # required
      #   })
      #
      # @example Response structure
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
      # @overload stop_user_import_job(params = {})
      # @param [Hash] params ({})
      def stop_user_import_job(params = {}, options = {})
        req = build_request(:stop_user_import_job, params)
        req.send_request(options)
      end

      # Updates the device status.
      # @option params [required, String] :access_token
      #   The access token.
      # @option params [required, String] :device_key
      #   The device key.
      # @option params [String] :device_remembered_status
      #   The status of whether a device is remembered.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.update_device_status({
      #     access_token: "TokenModelType", # required
      #     device_key: "DeviceKeyType", # required
      #     device_remembered_status: "remembered", # accepts remembered, not_remembered
      #   })
      # @overload update_device_status(params = {})
      # @param [Hash] params ({})
      def update_device_status(params = {}, options = {})
        req = build_request(:update_device_status, params)
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
      # @overload update_user_attributes(params = {})
      # @param [Hash] params ({})
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
      # @option params [Types::DeviceConfigurationType] :device_configuration
      #   Device configuration.
      # @option params [Types::EmailConfigurationType] :email_configuration
      #   Email configuration.
      # @option params [Types::SmsConfigurationType] :sms_configuration
      #   SMS configuration.
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
      #       sns_caller_arn: "ArnType",
      #       external_id: "StringType",
      #     },
      #   })
      # @overload update_user_pool(params = {})
      # @param [Hash] params ({})
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
      # @option params [Integer] :refresh_token_validity
      #   The validity of the refresh token.
      # @option params [Array<String>] :read_attributes
      #   The read-only attributes of the user pool.
      # @option params [Array<String>] :write_attributes
      #   The writeable attributes of the user pool.
      # @option params [Array<String>] :explicit_auth_flows
      #   Explicit authentication flows.
      # @return [Types::UpdateUserPoolClientResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::UpdateUserPoolClientResponse#user_pool_client #UserPoolClient} => Types::UserPoolClientType
      #
      # @example Request syntax with placeholder values
      #   resp = client.update_user_pool_client({
      #     user_pool_id: "UserPoolIdType", # required
      #     client_id: "ClientIdType", # required
      #     client_name: "ClientNameType",
      #     refresh_token_validity: 1,
      #     read_attributes: ["ClientPermissionType"],
      #     write_attributes: ["ClientPermissionType"],
      #     explicit_auth_flows: ["ADMIN_NO_SRP_AUTH"], # accepts ADMIN_NO_SRP_AUTH, CUSTOM_AUTH_FLOW_ONLY
      #   })
      #
      # @example Response structure
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
      # @overload update_user_pool_client(params = {})
      # @param [Hash] params ({})
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
      # @overload verify_user_attribute(params = {})
      # @param [Hash] params ({})
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

        # @api private
        attr_reader :identifier

        def errors_module
          Errors
        end

      end
    end
  end
end
