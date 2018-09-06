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
require 'aws-sdk-core/plugins/client_metrics_plugin.rb'
require 'aws-sdk-core/plugins/client_metrics_send_plugin.rb'
require 'aws-sdk-core/plugins/signature_v4.rb'
require 'aws-sdk-core/plugins/protocols/json_rpc.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:alexaforbusiness)

module Aws::AlexaForBusiness
  class Client < Seahorse::Client::Base

    include Aws::ClientStubs

    @identifier = :alexaforbusiness

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
    add_plugin(Aws::Plugins::ClientMetricsPlugin)
    add_plugin(Aws::Plugins::ClientMetricsSendPlugin)
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
    # @option options [] :client_side_monitoring (false)
    #   When `true`, client-side metrics will be collected for all API requests from
    #   this client.
    #
    # @option options [] :client_side_monitoring_client_id ("")
    #   Allows you to provide an identifier for this client which will be attached to
    #   all generated client side metrics. Defaults to an empty string.
    #
    # @option options [] :client_side_monitoring_port (31000)
    #   Required for publishing client metrics. The port that the client side monitoring
    #   agent is running on, where client metrics will be published via UDP.
    #
    # @option options [] :client_side_monitoring_publisher (Aws::ClientSideMonitoring::Publisher)
    #   Allows you to provide a custom client-side monitoring publisher class. By default,
    #   will use the Client Side Monitoring Agent Publisher.
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
    # @option options [Float] :retry_base_delay (0.3)
    #   The base delay in seconds used by the default backoff function.
    #
    # @option options [Symbol] :retry_jitter (:none)
    #   A delay randomiser function used by the default backoff function. Some predefined functions can be referenced by name - :none, :equal, :full, otherwise a Proc that takes and returns a number.
    #
    #   @see https://www.awsarchitectureblog.com/2015/03/backoff.html
    #
    # @option options [Integer] :retry_limit (3)
    #   The maximum number of times to retry failed requests.  Only
    #   ~ 500 level server errors and certain ~ 400 level client errors
    #   are retried.  Generally, these are throttling errors, data
    #   checksum errors, networking errors, timeout errors and auth
    #   errors from expired credentials.
    #
    # @option options [Integer] :retry_max_delay (0)
    #   The maximum number of seconds to delay between retries (0 for no limit) used by the default backoff function.
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

    # Associates a contact with a given address book.
    #
    # @option params [required, String] :contact_arn
    #   The ARN of the contact to associate with an address book.
    #
    # @option params [required, String] :address_book_arn
    #   The ARN of the address book with which to associate the contact.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_contact_with_address_book({
    #     contact_arn: "Arn", # required
    #     address_book_arn: "Arn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/AssociateContactWithAddressBook AWS API Documentation
    #
    # @overload associate_contact_with_address_book(params = {})
    # @param [Hash] params ({})
    def associate_contact_with_address_book(params = {}, options = {})
      req = build_request(:associate_contact_with_address_book, params)
      req.send_request(options)
    end

    # Associates a device with a given room. This applies all the settings
    # from the room profile to the device, and all the skills in any skill
    # groups added to that room. This operation requires the device to be
    # online, or else a manual sync is required.
    #
    # @option params [String] :device_arn
    #   The ARN of the device to associate to a room. Required.
    #
    # @option params [String] :room_arn
    #   The ARN of the room with which to associate the device. Required.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_device_with_room({
    #     device_arn: "Arn",
    #     room_arn: "Arn",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/AssociateDeviceWithRoom AWS API Documentation
    #
    # @overload associate_device_with_room(params = {})
    # @param [Hash] params ({})
    def associate_device_with_room(params = {}, options = {})
      req = build_request(:associate_device_with_room, params)
      req.send_request(options)
    end

    # Associates a skill group with a given room. This enables all skills in
    # the associated skill group on all devices in the room.
    #
    # @option params [String] :skill_group_arn
    #   The ARN of the skill group to associate with a room. Required.
    #
    # @option params [String] :room_arn
    #   The ARN of the room with which to associate the skill group. Required.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_skill_group_with_room({
    #     skill_group_arn: "Arn",
    #     room_arn: "Arn",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/AssociateSkillGroupWithRoom AWS API Documentation
    #
    # @overload associate_skill_group_with_room(params = {})
    # @param [Hash] params ({})
    def associate_skill_group_with_room(params = {}, options = {})
      req = build_request(:associate_skill_group_with_room, params)
      req.send_request(options)
    end

    # Creates an address book with the specified details.
    #
    # @option params [required, String] :name
    #   The name of the address book.
    #
    # @option params [String] :description
    #   The description of the address book.
    #
    # @option params [String] :client_request_token
    #   A unique, user-specified identifier for the request that ensures
    #   idempotency.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreateAddressBookResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateAddressBookResponse#address_book_arn #address_book_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_address_book({
    #     name: "AddressBookName", # required
    #     description: "AddressBookDescription",
    #     client_request_token: "ClientRequestToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.address_book_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/CreateAddressBook AWS API Documentation
    #
    # @overload create_address_book(params = {})
    # @param [Hash] params ({})
    def create_address_book(params = {}, options = {})
      req = build_request(:create_address_book, params)
      req.send_request(options)
    end

    # Creates a contact with the specified details.
    #
    # @option params [String] :display_name
    #   The name of the contact to display on the console.
    #
    # @option params [required, String] :first_name
    #   The first name of the contact that is used to call the contact on the
    #   device.
    #
    # @option params [String] :last_name
    #   The last name of the contact that is used to call the contact on the
    #   device.
    #
    # @option params [required, String] :phone_number
    #   The phone number of the contact in E.164 format.
    #
    # @option params [String] :client_request_token
    #   A unique, user-specified identifier for this request that ensures
    #   idempotency.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreateContactResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateContactResponse#contact_arn #contact_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_contact({
    #     display_name: "ContactName",
    #     first_name: "ContactName", # required
    #     last_name: "ContactName",
    #     phone_number: "E164PhoneNumber", # required
    #     client_request_token: "ClientRequestToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.contact_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/CreateContact AWS API Documentation
    #
    # @overload create_contact(params = {})
    # @param [Hash] params ({})
    def create_contact(params = {}, options = {})
      req = build_request(:create_contact, params)
      req.send_request(options)
    end

    # Creates a new room profile with the specified details.
    #
    # @option params [required, String] :profile_name
    #   The name of a room profile.
    #
    # @option params [required, String] :timezone
    #   The time zone used by a room profile.
    #
    # @option params [required, String] :address
    #   The valid address for the room.
    #
    # @option params [required, String] :distance_unit
    #   The distance unit to be used by devices in the profile.
    #
    # @option params [required, String] :temperature_unit
    #   The temperature unit to be used by devices in the profile.
    #
    # @option params [required, String] :wake_word
    #   A wake word for Alexa, Echo, Amazon, or a computer.
    #
    # @option params [String] :client_request_token
    #   The user-specified token that is used during the creation of a
    #   profile.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Boolean] :setup_mode_disabled
    #   Whether room profile setup is enabled.
    #
    # @option params [Integer] :max_volume_limit
    #   The maximum volume limit for a room profile.
    #
    # @option params [Boolean] :pstn_enabled
    #   Whether PSTN calling is enabled.
    #
    # @return [Types::CreateProfileResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateProfileResponse#profile_arn #profile_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_profile({
    #     profile_name: "ProfileName", # required
    #     timezone: "Timezone", # required
    #     address: "Address", # required
    #     distance_unit: "METRIC", # required, accepts METRIC, IMPERIAL
    #     temperature_unit: "FAHRENHEIT", # required, accepts FAHRENHEIT, CELSIUS
    #     wake_word: "ALEXA", # required, accepts ALEXA, AMAZON, ECHO, COMPUTER
    #     client_request_token: "ClientRequestToken",
    #     setup_mode_disabled: false,
    #     max_volume_limit: 1,
    #     pstn_enabled: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.profile_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/CreateProfile AWS API Documentation
    #
    # @overload create_profile(params = {})
    # @param [Hash] params ({})
    def create_profile(params = {}, options = {})
      req = build_request(:create_profile, params)
      req.send_request(options)
    end

    # Creates a room with the specified details.
    #
    # @option params [required, String] :room_name
    #   The name for the room.
    #
    # @option params [String] :description
    #   The description for the room.
    #
    # @option params [String] :profile_arn
    #   The profile ARN for the room.
    #
    # @option params [String] :provider_calendar_id
    #   The calendar ARN for the room.
    #
    # @option params [String] :client_request_token
    #   A unique, user-specified identifier for this request that ensures
    #   idempotency.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Array<Types::Tag>] :tags
    #   The tags for the room.
    #
    # @return [Types::CreateRoomResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateRoomResponse#room_arn #room_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_room({
    #     room_name: "RoomName", # required
    #     description: "RoomDescription",
    #     profile_arn: "Arn",
    #     provider_calendar_id: "ProviderCalendarId",
    #     client_request_token: "ClientRequestToken",
    #     tags: [
    #       {
    #         key: "TagKey",
    #         value: "TagValue",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.room_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/CreateRoom AWS API Documentation
    #
    # @overload create_room(params = {})
    # @param [Hash] params ({})
    def create_room(params = {}, options = {})
      req = build_request(:create_room, params)
      req.send_request(options)
    end

    # Creates a skill group with a specified name and description.
    #
    # @option params [required, String] :skill_group_name
    #   The name for the skill group.
    #
    # @option params [String] :description
    #   The description for the skill group.
    #
    # @option params [String] :client_request_token
    #   A unique, user-specified identifier for this request that ensures
    #   idempotency.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreateSkillGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateSkillGroupResponse#skill_group_arn #skill_group_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_skill_group({
    #     skill_group_name: "SkillGroupName", # required
    #     description: "SkillGroupDescription",
    #     client_request_token: "ClientRequestToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.skill_group_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/CreateSkillGroup AWS API Documentation
    #
    # @overload create_skill_group(params = {})
    # @param [Hash] params ({})
    def create_skill_group(params = {}, options = {})
      req = build_request(:create_skill_group, params)
      req.send_request(options)
    end

    # Creates a user.
    #
    # @option params [required, String] :user_id
    #   The ARN for the user.
    #
    # @option params [String] :first_name
    #   The first name for the user.
    #
    # @option params [String] :last_name
    #   The last name for the user.
    #
    # @option params [String] :email
    #   The email address for the user.
    #
    # @option params [String] :client_request_token
    #   A unique, user-specified identifier for this request that ensures
    #   idempotency.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Array<Types::Tag>] :tags
    #   The tags for the user.
    #
    # @return [Types::CreateUserResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateUserResponse#user_arn #user_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_user({
    #     user_id: "user_UserId", # required
    #     first_name: "user_FirstName",
    #     last_name: "user_LastName",
    #     email: "Email",
    #     client_request_token: "ClientRequestToken",
    #     tags: [
    #       {
    #         key: "TagKey",
    #         value: "TagValue",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.user_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/CreateUser AWS API Documentation
    #
    # @overload create_user(params = {})
    # @param [Hash] params ({})
    def create_user(params = {}, options = {})
      req = build_request(:create_user, params)
      req.send_request(options)
    end

    # Deletes an address book by the address book ARN.
    #
    # @option params [required, String] :address_book_arn
    #   The ARN of the address book to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_address_book({
    #     address_book_arn: "Arn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/DeleteAddressBook AWS API Documentation
    #
    # @overload delete_address_book(params = {})
    # @param [Hash] params ({})
    def delete_address_book(params = {}, options = {})
      req = build_request(:delete_address_book, params)
      req.send_request(options)
    end

    # Deletes a contact by the contact ARN.
    #
    # @option params [required, String] :contact_arn
    #   The ARN of the contact to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_contact({
    #     contact_arn: "Arn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/DeleteContact AWS API Documentation
    #
    # @overload delete_contact(params = {})
    # @param [Hash] params ({})
    def delete_contact(params = {}, options = {})
      req = build_request(:delete_contact, params)
      req.send_request(options)
    end

    # Deletes a room profile by the profile ARN.
    #
    # @option params [String] :profile_arn
    #   The ARN of the room profile to delete. Required.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_profile({
    #     profile_arn: "Arn",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/DeleteProfile AWS API Documentation
    #
    # @overload delete_profile(params = {})
    # @param [Hash] params ({})
    def delete_profile(params = {}, options = {})
      req = build_request(:delete_profile, params)
      req.send_request(options)
    end

    # Deletes a room by the room ARN.
    #
    # @option params [String] :room_arn
    #   The ARN of the room to delete. Required.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_room({
    #     room_arn: "Arn",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/DeleteRoom AWS API Documentation
    #
    # @overload delete_room(params = {})
    # @param [Hash] params ({})
    def delete_room(params = {}, options = {})
      req = build_request(:delete_room, params)
      req.send_request(options)
    end

    # Deletes room skill parameter details by room, skill, and parameter key
    # ID.
    #
    # @option params [String] :room_arn
    #   The ARN of the room from which to remove the room skill parameter
    #   details.
    #
    # @option params [required, String] :skill_id
    #   The ID of the skill from which to remove the room skill parameter
    #   details.
    #
    # @option params [required, String] :parameter_key
    #   The room skill parameter key for which to remove details.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_room_skill_parameter({
    #     room_arn: "Arn",
    #     skill_id: "SkillId", # required
    #     parameter_key: "RoomSkillParameterKey", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/DeleteRoomSkillParameter AWS API Documentation
    #
    # @overload delete_room_skill_parameter(params = {})
    # @param [Hash] params ({})
    def delete_room_skill_parameter(params = {}, options = {})
      req = build_request(:delete_room_skill_parameter, params)
      req.send_request(options)
    end

    # Deletes a skill group by skill group ARN.
    #
    # @option params [String] :skill_group_arn
    #   The ARN of the skill group to delete. Required.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_skill_group({
    #     skill_group_arn: "Arn",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/DeleteSkillGroup AWS API Documentation
    #
    # @overload delete_skill_group(params = {})
    # @param [Hash] params ({})
    def delete_skill_group(params = {}, options = {})
      req = build_request(:delete_skill_group, params)
      req.send_request(options)
    end

    # Deletes a specified user by user ARN and enrollment ARN.
    #
    # @option params [String] :user_arn
    #   The ARN of the user to delete in the organization. Required.
    #
    # @option params [required, String] :enrollment_id
    #   The ARN of the user's enrollment in the organization. Required.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_user({
    #     user_arn: "Arn",
    #     enrollment_id: "EnrollmentId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/DeleteUser AWS API Documentation
    #
    # @overload delete_user(params = {})
    # @param [Hash] params ({})
    def delete_user(params = {}, options = {})
      req = build_request(:delete_user, params)
      req.send_request(options)
    end

    # Disassociates a contact from a given address book.
    #
    # @option params [required, String] :contact_arn
    #   The ARN of the contact to disassociate from an address book.
    #
    # @option params [required, String] :address_book_arn
    #   The ARN of the address from which to disassociate the contact.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_contact_from_address_book({
    #     contact_arn: "Arn", # required
    #     address_book_arn: "Arn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/DisassociateContactFromAddressBook AWS API Documentation
    #
    # @overload disassociate_contact_from_address_book(params = {})
    # @param [Hash] params ({})
    def disassociate_contact_from_address_book(params = {}, options = {})
      req = build_request(:disassociate_contact_from_address_book, params)
      req.send_request(options)
    end

    # Disassociates a device from its current room. The device continues to
    # be connected to the Wi-Fi network and is still registered to the
    # account. The device settings and skills are removed from the room.
    #
    # @option params [String] :device_arn
    #   The ARN of the device to disassociate from a room. Required.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_device_from_room({
    #     device_arn: "Arn",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/DisassociateDeviceFromRoom AWS API Documentation
    #
    # @overload disassociate_device_from_room(params = {})
    # @param [Hash] params ({})
    def disassociate_device_from_room(params = {}, options = {})
      req = build_request(:disassociate_device_from_room, params)
      req.send_request(options)
    end

    # Disassociates a skill group from a specified room. This disables all
    # skills in the skill group on all devices in the room.
    #
    # @option params [String] :skill_group_arn
    #   The ARN of the skill group to disassociate from a room. Required.
    #
    # @option params [String] :room_arn
    #   The ARN of the room from which the skill group is to be disassociated.
    #   Required.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_skill_group_from_room({
    #     skill_group_arn: "Arn",
    #     room_arn: "Arn",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/DisassociateSkillGroupFromRoom AWS API Documentation
    #
    # @overload disassociate_skill_group_from_room(params = {})
    # @param [Hash] params ({})
    def disassociate_skill_group_from_room(params = {}, options = {})
      req = build_request(:disassociate_skill_group_from_room, params)
      req.send_request(options)
    end

    # Gets address the book details by the address book ARN.
    #
    # @option params [required, String] :address_book_arn
    #   The ARN of the address book for which to request details.
    #
    # @return [Types::GetAddressBookResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAddressBookResponse#address_book #address_book} => Types::AddressBook
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_address_book({
    #     address_book_arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.address_book.address_book_arn #=> String
    #   resp.address_book.name #=> String
    #   resp.address_book.description #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/GetAddressBook AWS API Documentation
    #
    # @overload get_address_book(params = {})
    # @param [Hash] params ({})
    def get_address_book(params = {}, options = {})
      req = build_request(:get_address_book, params)
      req.send_request(options)
    end

    # Gets the contact details by the contact ARN.
    #
    # @option params [required, String] :contact_arn
    #   The ARN of the contact for which to request details.
    #
    # @return [Types::GetContactResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetContactResponse#contact #contact} => Types::Contact
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_contact({
    #     contact_arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.contact.contact_arn #=> String
    #   resp.contact.display_name #=> String
    #   resp.contact.first_name #=> String
    #   resp.contact.last_name #=> String
    #   resp.contact.phone_number #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/GetContact AWS API Documentation
    #
    # @overload get_contact(params = {})
    # @param [Hash] params ({})
    def get_contact(params = {}, options = {})
      req = build_request(:get_contact, params)
      req.send_request(options)
    end

    # Gets the details of a device by device ARN.
    #
    # @option params [String] :device_arn
    #   The ARN of the device for which to request details. Required.
    #
    # @return [Types::GetDeviceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDeviceResponse#device #device} => Types::Device
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_device({
    #     device_arn: "Arn",
    #   })
    #
    # @example Response structure
    #
    #   resp.device.device_arn #=> String
    #   resp.device.device_serial_number #=> String
    #   resp.device.device_type #=> String
    #   resp.device.device_name #=> String
    #   resp.device.software_version #=> String
    #   resp.device.mac_address #=> String
    #   resp.device.room_arn #=> String
    #   resp.device.device_status #=> String, one of "READY", "PENDING", "WAS_OFFLINE", "DEREGISTERED"
    #   resp.device.device_status_info.device_status_details #=> Array
    #   resp.device.device_status_info.device_status_details[0].code #=> String, one of "DEVICE_SOFTWARE_UPDATE_NEEDED", "DEVICE_WAS_OFFLINE"
    #   resp.device.device_status_info.connection_status #=> String, one of "ONLINE", "OFFLINE"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/GetDevice AWS API Documentation
    #
    # @overload get_device(params = {})
    # @param [Hash] params ({})
    def get_device(params = {}, options = {})
      req = build_request(:get_device, params)
      req.send_request(options)
    end

    # Gets the details of a room profile by profile ARN.
    #
    # @option params [String] :profile_arn
    #   The ARN of the room profile for which to request details. Required.
    #
    # @return [Types::GetProfileResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetProfileResponse#profile #profile} => Types::Profile
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_profile({
    #     profile_arn: "Arn",
    #   })
    #
    # @example Response structure
    #
    #   resp.profile.profile_arn #=> String
    #   resp.profile.profile_name #=> String
    #   resp.profile.address #=> String
    #   resp.profile.timezone #=> String
    #   resp.profile.distance_unit #=> String, one of "METRIC", "IMPERIAL"
    #   resp.profile.temperature_unit #=> String, one of "FAHRENHEIT", "CELSIUS"
    #   resp.profile.wake_word #=> String, one of "ALEXA", "AMAZON", "ECHO", "COMPUTER"
    #   resp.profile.setup_mode_disabled #=> Boolean
    #   resp.profile.max_volume_limit #=> Integer
    #   resp.profile.pstn_enabled #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/GetProfile AWS API Documentation
    #
    # @overload get_profile(params = {})
    # @param [Hash] params ({})
    def get_profile(params = {}, options = {})
      req = build_request(:get_profile, params)
      req.send_request(options)
    end

    # Gets room details by room ARN.
    #
    # @option params [String] :room_arn
    #   The ARN of the room for which to request details. Required.
    #
    # @return [Types::GetRoomResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetRoomResponse#room #room} => Types::Room
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_room({
    #     room_arn: "Arn",
    #   })
    #
    # @example Response structure
    #
    #   resp.room.room_arn #=> String
    #   resp.room.room_name #=> String
    #   resp.room.description #=> String
    #   resp.room.provider_calendar_id #=> String
    #   resp.room.profile_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/GetRoom AWS API Documentation
    #
    # @overload get_room(params = {})
    # @param [Hash] params ({})
    def get_room(params = {}, options = {})
      req = build_request(:get_room, params)
      req.send_request(options)
    end

    # Gets room skill parameter details by room, skill, and parameter key
    # ARN.
    #
    # @option params [String] :room_arn
    #   The ARN of the room from which to get the room skill parameter
    #   details.
    #
    # @option params [required, String] :skill_id
    #   The ARN of the skill from which to get the room skill parameter
    #   details. Required.
    #
    # @option params [required, String] :parameter_key
    #   The room skill parameter key for which to get details. Required.
    #
    # @return [Types::GetRoomSkillParameterResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetRoomSkillParameterResponse#room_skill_parameter #room_skill_parameter} => Types::RoomSkillParameter
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_room_skill_parameter({
    #     room_arn: "Arn",
    #     skill_id: "SkillId", # required
    #     parameter_key: "RoomSkillParameterKey", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.room_skill_parameter.parameter_key #=> String
    #   resp.room_skill_parameter.parameter_value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/GetRoomSkillParameter AWS API Documentation
    #
    # @overload get_room_skill_parameter(params = {})
    # @param [Hash] params ({})
    def get_room_skill_parameter(params = {}, options = {})
      req = build_request(:get_room_skill_parameter, params)
      req.send_request(options)
    end

    # Gets skill group details by skill group ARN.
    #
    # @option params [String] :skill_group_arn
    #   The ARN of the skill group for which to get details. Required.
    #
    # @return [Types::GetSkillGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetSkillGroupResponse#skill_group #skill_group} => Types::SkillGroup
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_skill_group({
    #     skill_group_arn: "Arn",
    #   })
    #
    # @example Response structure
    #
    #   resp.skill_group.skill_group_arn #=> String
    #   resp.skill_group.skill_group_name #=> String
    #   resp.skill_group.description #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/GetSkillGroup AWS API Documentation
    #
    # @overload get_skill_group(params = {})
    # @param [Hash] params ({})
    def get_skill_group(params = {}, options = {})
      req = build_request(:get_skill_group, params)
      req.send_request(options)
    end

    # Lists the device event history, including device connection status,
    # for up to 30 days.
    #
    # @option params [required, String] :device_arn
    #   The ARN of a device.
    #
    # @option params [String] :event_type
    #   The event type to filter device events. If EventType isn't specified,
    #   this returns a list of all device events in reverse chronological
    #   order. If EventType is specified, this returns a list of device events
    #   for that EventType in reverse chronological order.
    #
    # @option params [String] :next_token
    #   An optional token returned from a prior request. Use this token for
    #   pagination of results from this action. If this parameter is
    #   specified, the response only includes results beyond the token, up to
    #   the value specified by MaxResults. When the end of results is reached,
    #   the response has a value of null.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to include in the response. The default
    #   value is 50. If more results exist than the specified MaxResults
    #   value, a token is included in the response so that the remaining
    #   results can be retrieved.
    #
    # @return [Types::ListDeviceEventsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDeviceEventsResponse#device_events #device_events} => Array&lt;Types::DeviceEvent&gt;
    #   * {Types::ListDeviceEventsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_device_events({
    #     device_arn: "Arn", # required
    #     event_type: "CONNECTION_STATUS", # accepts CONNECTION_STATUS, DEVICE_STATUS
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.device_events #=> Array
    #   resp.device_events[0].type #=> String, one of "CONNECTION_STATUS", "DEVICE_STATUS"
    #   resp.device_events[0].value #=> String
    #   resp.device_events[0].timestamp #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/ListDeviceEvents AWS API Documentation
    #
    # @overload list_device_events(params = {})
    # @param [Hash] params ({})
    def list_device_events(params = {}, options = {})
      req = build_request(:list_device_events, params)
      req.send_request(options)
    end

    # Lists all enabled skills in a specific skill group.
    #
    # @option params [String] :skill_group_arn
    #   The ARN of the skill group for which to list enabled skills. Required.
    #
    # @option params [String] :next_token
    #   An optional token returned from a prior request. Use this token for
    #   pagination of results from this action. If this parameter is
    #   specified, the response includes only results beyond the token, up to
    #   the value specified by `MaxResults`. Required.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to include in the response. If more
    #   results exist than the specified `MaxResults` value, a token is
    #   included in the response so that the remaining results can be
    #   retrieved. Required.
    #
    # @return [Types::ListSkillsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListSkillsResponse#skill_summaries #skill_summaries} => Array&lt;Types::SkillSummary&gt;
    #   * {Types::ListSkillsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_skills({
    #     skill_group_arn: "Arn",
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.skill_summaries #=> Array
    #   resp.skill_summaries[0].skill_id #=> String
    #   resp.skill_summaries[0].skill_name #=> String
    #   resp.skill_summaries[0].supports_linking #=> Boolean
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/ListSkills AWS API Documentation
    #
    # @overload list_skills(params = {})
    # @param [Hash] params ({})
    def list_skills(params = {}, options = {})
      req = build_request(:list_skills, params)
      req.send_request(options)
    end

    # Lists all tags for the specified resource.
    #
    # @option params [required, String] :arn
    #   The ARN of the specified resource for which to list tags.
    #
    # @option params [String] :next_token
    #   An optional token returned from a prior request. Use this token for
    #   pagination of results from this action. If this parameter is
    #   specified, the response includes only results beyond the token, up to
    #   the value specified by `MaxResults`.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to include in the response. If more
    #   results exist than the specified `MaxResults` value, a token is
    #   included in the response so that the remaining results can be
    #   retrieved.
    #
    # @return [Types::ListTagsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsResponse#tags #tags} => Array&lt;Types::Tag&gt;
    #   * {Types::ListTagsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags({
    #     arn: "Arn", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/ListTags AWS API Documentation
    #
    # @overload list_tags(params = {})
    # @param [Hash] params ({})
    def list_tags(params = {}, options = {})
      req = build_request(:list_tags, params)
      req.send_request(options)
    end

    # Updates room skill parameter details by room, skill, and parameter key
    # ID. Not all skills have a room skill parameter.
    #
    # @option params [String] :room_arn
    #   The ARN of the room associated with the room skill parameter.
    #   Required.
    #
    # @option params [required, String] :skill_id
    #   The ARN of the skill associated with the room skill parameter.
    #   Required.
    #
    # @option params [required, Types::RoomSkillParameter] :room_skill_parameter
    #   The updated room skill parameter. Required.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_room_skill_parameter({
    #     room_arn: "Arn",
    #     skill_id: "SkillId", # required
    #     room_skill_parameter: { # required
    #       parameter_key: "RoomSkillParameterKey", # required
    #       parameter_value: "RoomSkillParameterValue", # required
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/PutRoomSkillParameter AWS API Documentation
    #
    # @overload put_room_skill_parameter(params = {})
    # @param [Hash] params ({})
    def put_room_skill_parameter(params = {}, options = {})
      req = build_request(:put_room_skill_parameter, params)
      req.send_request(options)
    end

    # Determines the details for the room from which a skill request was
    # invoked. This operation is used by skill developers.
    #
    # @option params [required, String] :user_id
    #   The ARN of the user. Required.
    #
    # @option params [required, String] :skill_id
    #   The ARN of the skill that was requested. Required.
    #
    # @return [Types::ResolveRoomResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ResolveRoomResponse#room_arn #room_arn} => String
    #   * {Types::ResolveRoomResponse#room_name #room_name} => String
    #   * {Types::ResolveRoomResponse#room_skill_parameters #room_skill_parameters} => Array&lt;Types::RoomSkillParameter&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.resolve_room({
    #     user_id: "UserId", # required
    #     skill_id: "SkillId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.room_arn #=> String
    #   resp.room_name #=> String
    #   resp.room_skill_parameters #=> Array
    #   resp.room_skill_parameters[0].parameter_key #=> String
    #   resp.room_skill_parameters[0].parameter_value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/ResolveRoom AWS API Documentation
    #
    # @overload resolve_room(params = {})
    # @param [Hash] params ({})
    def resolve_room(params = {}, options = {})
      req = build_request(:resolve_room, params)
      req.send_request(options)
    end

    # Revokes an invitation and invalidates the enrollment URL.
    #
    # @option params [String] :user_arn
    #   The ARN of the user for whom to revoke an enrollment invitation.
    #   Required.
    #
    # @option params [String] :enrollment_id
    #   The ARN of the enrollment invitation to revoke. Required.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.revoke_invitation({
    #     user_arn: "Arn",
    #     enrollment_id: "EnrollmentId",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/RevokeInvitation AWS API Documentation
    #
    # @overload revoke_invitation(params = {})
    # @param [Hash] params ({})
    def revoke_invitation(params = {}, options = {})
      req = build_request(:revoke_invitation, params)
      req.send_request(options)
    end

    # Searches address books and lists the ones that meet a set of filter
    # and sort criteria.
    #
    # @option params [Array<Types::Filter>] :filters
    #   The filters to use to list a specified set of address books. The
    #   supported filter key is AddressBookName.
    #
    # @option params [Array<Types::Sort>] :sort_criteria
    #   The sort order to use in listing the specified set of address books.
    #   The supported sort key is AddressBookName.
    #
    # @option params [String] :next_token
    #   An optional token returned from a prior request. Use this token for
    #   pagination of results from this action. If this parameter is
    #   specified, the response only includes results beyond the token, up to
    #   the value specified by MaxResults.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to include in the response. If more
    #   results exist than the specified MaxResults value, a token is included
    #   in the response so that the remaining results can be retrieved.
    #
    # @return [Types::SearchAddressBooksResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SearchAddressBooksResponse#address_books #address_books} => Array&lt;Types::AddressBookData&gt;
    #   * {Types::SearchAddressBooksResponse#next_token #next_token} => String
    #   * {Types::SearchAddressBooksResponse#total_count #total_count} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_address_books({
    #     filters: [
    #       {
    #         key: "FilterKey", # required
    #         values: ["FilterValue"], # required
    #       },
    #     ],
    #     sort_criteria: [
    #       {
    #         key: "SortKey", # required
    #         value: "ASC", # required, accepts ASC, DESC
    #       },
    #     ],
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.address_books #=> Array
    #   resp.address_books[0].address_book_arn #=> String
    #   resp.address_books[0].name #=> String
    #   resp.address_books[0].description #=> String
    #   resp.next_token #=> String
    #   resp.total_count #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/SearchAddressBooks AWS API Documentation
    #
    # @overload search_address_books(params = {})
    # @param [Hash] params ({})
    def search_address_books(params = {}, options = {})
      req = build_request(:search_address_books, params)
      req.send_request(options)
    end

    # Searches contacts and lists the ones that meet a set of filter and
    # sort criteria.
    #
    # @option params [Array<Types::Filter>] :filters
    #   The filters to use to list a specified set of address books. The
    #   supported filter keys are DisplayName, FirstName, LastName, and
    #   AddressBookArns.
    #
    # @option params [Array<Types::Sort>] :sort_criteria
    #   The sort order to use in listing the specified set of contacts. The
    #   supported sort keys are DisplayName, FirstName, and LastName.
    #
    # @option params [String] :next_token
    #   An optional token returned from a prior request. Use this token for
    #   pagination of results from this action. If this parameter is
    #   specified, the response only includes results beyond the token, up to
    #   the value specified by MaxResults.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to include in the response. If more
    #   results exist than the specified MaxResults value, a token is included
    #   in the response so that the remaining results can be retrieved.
    #
    # @return [Types::SearchContactsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SearchContactsResponse#contacts #contacts} => Array&lt;Types::ContactData&gt;
    #   * {Types::SearchContactsResponse#next_token #next_token} => String
    #   * {Types::SearchContactsResponse#total_count #total_count} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_contacts({
    #     filters: [
    #       {
    #         key: "FilterKey", # required
    #         values: ["FilterValue"], # required
    #       },
    #     ],
    #     sort_criteria: [
    #       {
    #         key: "SortKey", # required
    #         value: "ASC", # required, accepts ASC, DESC
    #       },
    #     ],
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.contacts #=> Array
    #   resp.contacts[0].contact_arn #=> String
    #   resp.contacts[0].display_name #=> String
    #   resp.contacts[0].first_name #=> String
    #   resp.contacts[0].last_name #=> String
    #   resp.contacts[0].phone_number #=> String
    #   resp.next_token #=> String
    #   resp.total_count #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/SearchContacts AWS API Documentation
    #
    # @overload search_contacts(params = {})
    # @param [Hash] params ({})
    def search_contacts(params = {}, options = {})
      req = build_request(:search_contacts, params)
      req.send_request(options)
    end

    # Searches devices and lists the ones that meet a set of filter
    # criteria.
    #
    # @option params [String] :next_token
    #   An optional token returned from a prior request. Use this token for
    #   pagination of results from this action. If this parameter is
    #   specified, the response includes only results beyond the token, up to
    #   the value specified by `MaxResults`.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to include in the response. If more
    #   results exist than the specified `MaxResults` value, a token is
    #   included in the response so that the remaining results can be
    #   retrieved.
    #
    # @option params [Array<Types::Filter>] :filters
    #   The filters to use to list a specified set of devices. Supported
    #   filter keys are DeviceName, DeviceStatus, DeviceStatusDetailCode,
    #   RoomName, DeviceType, DeviceSerialNumber, UnassociatedOnly, and
    #   ConnectionStatus (ONLINE and OFFLINE).
    #
    # @option params [Array<Types::Sort>] :sort_criteria
    #   The sort order to use in listing the specified set of devices.
    #   Supported sort keys are DeviceName, DeviceStatus, RoomName,
    #   DeviceType, DeviceSerialNumber, and ConnectionStatus.
    #
    # @return [Types::SearchDevicesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SearchDevicesResponse#devices #devices} => Array&lt;Types::DeviceData&gt;
    #   * {Types::SearchDevicesResponse#next_token #next_token} => String
    #   * {Types::SearchDevicesResponse#total_count #total_count} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_devices({
    #     next_token: "NextToken",
    #     max_results: 1,
    #     filters: [
    #       {
    #         key: "FilterKey", # required
    #         values: ["FilterValue"], # required
    #       },
    #     ],
    #     sort_criteria: [
    #       {
    #         key: "SortKey", # required
    #         value: "ASC", # required, accepts ASC, DESC
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.devices #=> Array
    #   resp.devices[0].device_arn #=> String
    #   resp.devices[0].device_serial_number #=> String
    #   resp.devices[0].device_type #=> String
    #   resp.devices[0].device_name #=> String
    #   resp.devices[0].software_version #=> String
    #   resp.devices[0].mac_address #=> String
    #   resp.devices[0].device_status #=> String, one of "READY", "PENDING", "WAS_OFFLINE", "DEREGISTERED"
    #   resp.devices[0].room_arn #=> String
    #   resp.devices[0].room_name #=> String
    #   resp.devices[0].device_status_info.device_status_details #=> Array
    #   resp.devices[0].device_status_info.device_status_details[0].code #=> String, one of "DEVICE_SOFTWARE_UPDATE_NEEDED", "DEVICE_WAS_OFFLINE"
    #   resp.devices[0].device_status_info.connection_status #=> String, one of "ONLINE", "OFFLINE"
    #   resp.next_token #=> String
    #   resp.total_count #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/SearchDevices AWS API Documentation
    #
    # @overload search_devices(params = {})
    # @param [Hash] params ({})
    def search_devices(params = {}, options = {})
      req = build_request(:search_devices, params)
      req.send_request(options)
    end

    # Searches room profiles and lists the ones that meet a set of filter
    # criteria.
    #
    # @option params [String] :next_token
    #   An optional token returned from a prior request. Use this token for
    #   pagination of results from this action. If this parameter is
    #   specified, the response includes only results beyond the token, up to
    #   the value specified by `MaxResults`.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to include in the response. If more
    #   results exist than the specified `MaxResults` value, a token is
    #   included in the response so that the remaining results can be
    #   retrieved.
    #
    # @option params [Array<Types::Filter>] :filters
    #   The filters to use to list a specified set of room profiles. Supported
    #   filter keys are ProfileName and Address. Required.
    #
    # @option params [Array<Types::Sort>] :sort_criteria
    #   The sort order to use in listing the specified set of room profiles.
    #   Supported sort keys are ProfileName and Address.
    #
    # @return [Types::SearchProfilesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SearchProfilesResponse#profiles #profiles} => Array&lt;Types::ProfileData&gt;
    #   * {Types::SearchProfilesResponse#next_token #next_token} => String
    #   * {Types::SearchProfilesResponse#total_count #total_count} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_profiles({
    #     next_token: "NextToken",
    #     max_results: 1,
    #     filters: [
    #       {
    #         key: "FilterKey", # required
    #         values: ["FilterValue"], # required
    #       },
    #     ],
    #     sort_criteria: [
    #       {
    #         key: "SortKey", # required
    #         value: "ASC", # required, accepts ASC, DESC
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.profiles #=> Array
    #   resp.profiles[0].profile_arn #=> String
    #   resp.profiles[0].profile_name #=> String
    #   resp.profiles[0].address #=> String
    #   resp.profiles[0].timezone #=> String
    #   resp.profiles[0].distance_unit #=> String, one of "METRIC", "IMPERIAL"
    #   resp.profiles[0].temperature_unit #=> String, one of "FAHRENHEIT", "CELSIUS"
    #   resp.profiles[0].wake_word #=> String, one of "ALEXA", "AMAZON", "ECHO", "COMPUTER"
    #   resp.next_token #=> String
    #   resp.total_count #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/SearchProfiles AWS API Documentation
    #
    # @overload search_profiles(params = {})
    # @param [Hash] params ({})
    def search_profiles(params = {}, options = {})
      req = build_request(:search_profiles, params)
      req.send_request(options)
    end

    # Searches rooms and lists the ones that meet a set of filter and sort
    # criteria.
    #
    # @option params [String] :next_token
    #   An optional token returned from a prior request. Use this token for
    #   pagination of results from this action. If this parameter is
    #   specified, the response includes only results beyond the token, up to
    #   the value specified by `MaxResults`.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to include in the response. If more
    #   results exist than the specified `MaxResults` value, a token is
    #   included in the response so that the remaining results can be
    #   retrieved.
    #
    # @option params [Array<Types::Filter>] :filters
    #   The filters to use to list a specified set of rooms. The supported
    #   filter keys are RoomName and ProfileName.
    #
    # @option params [Array<Types::Sort>] :sort_criteria
    #   The sort order to use in listing the specified set of rooms. The
    #   supported sort keys are RoomName and ProfileName.
    #
    # @return [Types::SearchRoomsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SearchRoomsResponse#rooms #rooms} => Array&lt;Types::RoomData&gt;
    #   * {Types::SearchRoomsResponse#next_token #next_token} => String
    #   * {Types::SearchRoomsResponse#total_count #total_count} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_rooms({
    #     next_token: "NextToken",
    #     max_results: 1,
    #     filters: [
    #       {
    #         key: "FilterKey", # required
    #         values: ["FilterValue"], # required
    #       },
    #     ],
    #     sort_criteria: [
    #       {
    #         key: "SortKey", # required
    #         value: "ASC", # required, accepts ASC, DESC
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.rooms #=> Array
    #   resp.rooms[0].room_arn #=> String
    #   resp.rooms[0].room_name #=> String
    #   resp.rooms[0].description #=> String
    #   resp.rooms[0].provider_calendar_id #=> String
    #   resp.rooms[0].profile_arn #=> String
    #   resp.rooms[0].profile_name #=> String
    #   resp.next_token #=> String
    #   resp.total_count #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/SearchRooms AWS API Documentation
    #
    # @overload search_rooms(params = {})
    # @param [Hash] params ({})
    def search_rooms(params = {}, options = {})
      req = build_request(:search_rooms, params)
      req.send_request(options)
    end

    # Searches skill groups and lists the ones that meet a set of filter and
    # sort criteria.
    #
    # @option params [String] :next_token
    #   An optional token returned from a prior request. Use this token for
    #   pagination of results from this action. If this parameter is
    #   specified, the response includes only results beyond the token, up to
    #   the value specified by `MaxResults`. Required.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to include in the response. If more
    #   results exist than the specified `MaxResults` value, a token is
    #   included in the response so that the remaining results can be
    #   retrieved.
    #
    # @option params [Array<Types::Filter>] :filters
    #   The filters to use to list a specified set of skill groups. The
    #   supported filter key is SkillGroupName.
    #
    # @option params [Array<Types::Sort>] :sort_criteria
    #   The sort order to use in listing the specified set of skill groups.
    #   The supported sort key is SkillGroupName.
    #
    # @return [Types::SearchSkillGroupsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SearchSkillGroupsResponse#skill_groups #skill_groups} => Array&lt;Types::SkillGroupData&gt;
    #   * {Types::SearchSkillGroupsResponse#next_token #next_token} => String
    #   * {Types::SearchSkillGroupsResponse#total_count #total_count} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_skill_groups({
    #     next_token: "NextToken",
    #     max_results: 1,
    #     filters: [
    #       {
    #         key: "FilterKey", # required
    #         values: ["FilterValue"], # required
    #       },
    #     ],
    #     sort_criteria: [
    #       {
    #         key: "SortKey", # required
    #         value: "ASC", # required, accepts ASC, DESC
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.skill_groups #=> Array
    #   resp.skill_groups[0].skill_group_arn #=> String
    #   resp.skill_groups[0].skill_group_name #=> String
    #   resp.skill_groups[0].description #=> String
    #   resp.next_token #=> String
    #   resp.total_count #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/SearchSkillGroups AWS API Documentation
    #
    # @overload search_skill_groups(params = {})
    # @param [Hash] params ({})
    def search_skill_groups(params = {}, options = {})
      req = build_request(:search_skill_groups, params)
      req.send_request(options)
    end

    # Searches users and lists the ones that meet a set of filter and sort
    # criteria.
    #
    # @option params [String] :next_token
    #   An optional token returned from a prior request. Use this token for
    #   pagination of results from this action. If this parameter is
    #   specified, the response includes only results beyond the token, up to
    #   the value specified by `MaxResults`. Required.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to include in the response. If more
    #   results exist than the specified `MaxResults` value, a token is
    #   included in the response so that the remaining results can be
    #   retrieved. Required.
    #
    # @option params [Array<Types::Filter>] :filters
    #   The filters to use for listing a specific set of users. Required.
    #   Supported filter keys are UserId, FirstName, LastName, Email, and
    #   EnrollmentStatus.
    #
    # @option params [Array<Types::Sort>] :sort_criteria
    #   The sort order to use in listing the filtered set of users. Required.
    #   Supported sort keys are UserId, FirstName, LastName, Email, and
    #   EnrollmentStatus.
    #
    # @return [Types::SearchUsersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SearchUsersResponse#users #users} => Array&lt;Types::UserData&gt;
    #   * {Types::SearchUsersResponse#next_token #next_token} => String
    #   * {Types::SearchUsersResponse#total_count #total_count} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_users({
    #     next_token: "NextToken",
    #     max_results: 1,
    #     filters: [
    #       {
    #         key: "FilterKey", # required
    #         values: ["FilterValue"], # required
    #       },
    #     ],
    #     sort_criteria: [
    #       {
    #         key: "SortKey", # required
    #         value: "ASC", # required, accepts ASC, DESC
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.users #=> Array
    #   resp.users[0].user_arn #=> String
    #   resp.users[0].first_name #=> String
    #   resp.users[0].last_name #=> String
    #   resp.users[0].email #=> String
    #   resp.users[0].enrollment_status #=> String, one of "INITIALIZED", "PENDING", "REGISTERED", "DISASSOCIATING", "DEREGISTERING"
    #   resp.users[0].enrollment_id #=> String
    #   resp.next_token #=> String
    #   resp.total_count #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/SearchUsers AWS API Documentation
    #
    # @overload search_users(params = {})
    # @param [Hash] params ({})
    def search_users(params = {}, options = {})
      req = build_request(:search_users, params)
      req.send_request(options)
    end

    # Sends an enrollment invitation email with a URL to a user. The URL is
    # valid for 72 hours or until you call this operation again, whichever
    # comes first.
    #
    # @option params [String] :user_arn
    #   The ARN of the user to whom to send an invitation. Required.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.send_invitation({
    #     user_arn: "Arn",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/SendInvitation AWS API Documentation
    #
    # @overload send_invitation(params = {})
    # @param [Hash] params ({})
    def send_invitation(params = {}, options = {})
      req = build_request(:send_invitation, params)
      req.send_request(options)
    end

    # Resets a device and its account to the known default settings, by
    # clearing all information and settings set by previous users.
    #
    # @option params [String] :room_arn
    #   The ARN of the room with which the device to sync is associated.
    #   Required.
    #
    # @option params [String] :device_arn
    #   The ARN of the device to sync. Required.
    #
    # @option params [required, Array<String>] :features
    #   Request structure to start the device sync. Required.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_device_sync({
    #     room_arn: "Arn",
    #     device_arn: "Arn",
    #     features: ["BLUETOOTH"], # required, accepts BLUETOOTH, VOLUME, NOTIFICATIONS, LISTS, SKILLS, ALL
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/StartDeviceSync AWS API Documentation
    #
    # @overload start_device_sync(params = {})
    # @param [Hash] params ({})
    def start_device_sync(params = {}, options = {})
      req = build_request(:start_device_sync, params)
      req.send_request(options)
    end

    # Adds metadata tags to a specified resource.
    #
    # @option params [required, String] :arn
    #   The ARN of the resource to which to add metadata tags. Required.
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   The tags to be added to the specified resource. Do not provide system
    #   tags. Required.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     arn: "Arn", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey",
    #         value: "TagValue",
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes metadata tags from a specified resource.
    #
    # @option params [required, String] :arn
    #   The ARN of the resource from which to remove metadata tags. Required.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The tags to be removed from the specified resource. Do not provide
    #   system tags. Required.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     arn: "Arn", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates address book details by the address book ARN.
    #
    # @option params [required, String] :address_book_arn
    #   The ARN of the room to update.
    #
    # @option params [String] :name
    #   The updated name of the room.
    #
    # @option params [String] :description
    #   The updated description of the room.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_address_book({
    #     address_book_arn: "Arn", # required
    #     name: "AddressBookName",
    #     description: "AddressBookDescription",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/UpdateAddressBook AWS API Documentation
    #
    # @overload update_address_book(params = {})
    # @param [Hash] params ({})
    def update_address_book(params = {}, options = {})
      req = build_request(:update_address_book, params)
      req.send_request(options)
    end

    # Updates the contact details by the contact ARN.
    #
    # @option params [required, String] :contact_arn
    #   The ARN of the contact to update.
    #
    # @option params [String] :display_name
    #   The updated display name of the contact.
    #
    # @option params [String] :first_name
    #   The updated first name of the contact.
    #
    # @option params [String] :last_name
    #   The updated last name of the contact.
    #
    # @option params [String] :phone_number
    #   The updated phone number of the contact.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_contact({
    #     contact_arn: "Arn", # required
    #     display_name: "ContactName",
    #     first_name: "ContactName",
    #     last_name: "ContactName",
    #     phone_number: "E164PhoneNumber",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/UpdateContact AWS API Documentation
    #
    # @overload update_contact(params = {})
    # @param [Hash] params ({})
    def update_contact(params = {}, options = {})
      req = build_request(:update_contact, params)
      req.send_request(options)
    end

    # Updates the device name by device ARN.
    #
    # @option params [String] :device_arn
    #   The ARN of the device to update. Required.
    #
    # @option params [String] :device_name
    #   The updated device name. Required.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_device({
    #     device_arn: "Arn",
    #     device_name: "DeviceName",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/UpdateDevice AWS API Documentation
    #
    # @overload update_device(params = {})
    # @param [Hash] params ({})
    def update_device(params = {}, options = {})
      req = build_request(:update_device, params)
      req.send_request(options)
    end

    # Updates an existing room profile by room profile ARN.
    #
    # @option params [String] :profile_arn
    #   The ARN of the room profile to update. Required.
    #
    # @option params [String] :profile_name
    #   The updated name for the room profile.
    #
    # @option params [String] :timezone
    #   The updated timezone for the room profile.
    #
    # @option params [String] :address
    #   The updated address for the room profile.
    #
    # @option params [String] :distance_unit
    #   The updated distance unit for the room profile.
    #
    # @option params [String] :temperature_unit
    #   The updated temperature unit for the room profile.
    #
    # @option params [String] :wake_word
    #   The updated wake word for the room profile.
    #
    # @option params [Boolean] :setup_mode_disabled
    #   Whether the setup mode of the profile is enabled.
    #
    # @option params [Integer] :max_volume_limit
    #   The updated maximum volume limit for the room profile.
    #
    # @option params [Boolean] :pstn_enabled
    #   Whether the PSTN setting of the room profile is enabled.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_profile({
    #     profile_arn: "Arn",
    #     profile_name: "ProfileName",
    #     timezone: "Timezone",
    #     address: "Address",
    #     distance_unit: "METRIC", # accepts METRIC, IMPERIAL
    #     temperature_unit: "FAHRENHEIT", # accepts FAHRENHEIT, CELSIUS
    #     wake_word: "ALEXA", # accepts ALEXA, AMAZON, ECHO, COMPUTER
    #     setup_mode_disabled: false,
    #     max_volume_limit: 1,
    #     pstn_enabled: false,
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/UpdateProfile AWS API Documentation
    #
    # @overload update_profile(params = {})
    # @param [Hash] params ({})
    def update_profile(params = {}, options = {})
      req = build_request(:update_profile, params)
      req.send_request(options)
    end

    # Updates room details by room ARN.
    #
    # @option params [String] :room_arn
    #   The ARN of the room to update.
    #
    # @option params [String] :room_name
    #   The updated name for the room.
    #
    # @option params [String] :description
    #   The updated description for the room.
    #
    # @option params [String] :provider_calendar_id
    #   The updated provider calendar ARN for the room.
    #
    # @option params [String] :profile_arn
    #   The updated profile ARN for the room.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_room({
    #     room_arn: "Arn",
    #     room_name: "RoomName",
    #     description: "RoomDescription",
    #     provider_calendar_id: "ProviderCalendarId",
    #     profile_arn: "Arn",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/UpdateRoom AWS API Documentation
    #
    # @overload update_room(params = {})
    # @param [Hash] params ({})
    def update_room(params = {}, options = {})
      req = build_request(:update_room, params)
      req.send_request(options)
    end

    # Updates skill group details by skill group ARN.
    #
    # @option params [String] :skill_group_arn
    #   The ARN of the skill group to update.
    #
    # @option params [String] :skill_group_name
    #   The updated name for the skill group.
    #
    # @option params [String] :description
    #   The updated description for the skill group.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_skill_group({
    #     skill_group_arn: "Arn",
    #     skill_group_name: "SkillGroupName",
    #     description: "SkillGroupDescription",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/UpdateSkillGroup AWS API Documentation
    #
    # @overload update_skill_group(params = {})
    # @param [Hash] params ({})
    def update_skill_group(params = {}, options = {})
      req = build_request(:update_skill_group, params)
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
      context[:gem_name] = 'aws-sdk-alexaforbusiness'
      context[:gem_version] = '1.9.0'
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
