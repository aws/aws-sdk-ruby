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
require 'aws-sdk-core/plugins/endpoint_discovery.rb'
require 'aws-sdk-core/plugins/endpoint_pattern.rb'
require 'aws-sdk-core/plugins/response_paging.rb'
require 'aws-sdk-core/plugins/stub_responses.rb'
require 'aws-sdk-core/plugins/idempotency_token.rb'
require 'aws-sdk-core/plugins/jsonvalue_converter.rb'
require 'aws-sdk-core/plugins/client_metrics_plugin.rb'
require 'aws-sdk-core/plugins/client_metrics_send_plugin.rb'
require 'aws-sdk-core/plugins/transfer_encoding.rb'
require 'aws-sdk-core/plugins/signature_v4.rb'
require 'aws-sdk-core/plugins/protocols/rest_json.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:chime)

module Aws::Chime
  class Client < Seahorse::Client::Base

    include Aws::ClientStubs

    @identifier = :chime

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
    add_plugin(Aws::Plugins::EndpointDiscovery)
    add_plugin(Aws::Plugins::EndpointPattern)
    add_plugin(Aws::Plugins::ResponsePaging)
    add_plugin(Aws::Plugins::StubResponses)
    add_plugin(Aws::Plugins::IdempotencyToken)
    add_plugin(Aws::Plugins::JsonvalueConverter)
    add_plugin(Aws::Plugins::ClientMetricsPlugin)
    add_plugin(Aws::Plugins::ClientMetricsSendPlugin)
    add_plugin(Aws::Plugins::TransferEncoding)
    add_plugin(Aws::Plugins::SignatureV4)
    add_plugin(Aws::Plugins::Protocols::RestJson)

    # @overload initialize(options)
    #   @param [Hash] options
    #   @option options [required, Aws::CredentialProvider] :credentials
    #     Your AWS credentials. This can be an instance of any one of the
    #     following classes:
    #
    #     * `Aws::Credentials` - Used for configuring static, non-refreshing
    #       credentials.
    #
    #     * `Aws::InstanceProfileCredentials` - Used for loading credentials
    #       from an EC2 IMDS on an EC2 instance.
    #
    #     * `Aws::SharedCredentials` - Used for loading credentials from a
    #       shared file, such as `~/.aws/config`.
    #
    #     * `Aws::AssumeRoleCredentials` - Used when you need to assume a role.
    #
    #     When `:credentials` are not configured directly, the following
    #     locations will be searched for credentials:
    #
    #     * `Aws.config[:credentials]`
    #     * The `:access_key_id`, `:secret_access_key`, and `:session_token` options.
    #     * ENV['AWS_ACCESS_KEY_ID'], ENV['AWS_SECRET_ACCESS_KEY']
    #     * `~/.aws/credentials`
    #     * `~/.aws/config`
    #     * EC2 IMDS instance profile - When used by default, the timeouts are
    #       very aggressive. Construct and pass an instance of
    #       `Aws::InstanceProfileCredentails` to enable retries and extended
    #       timeouts.
    #
    #   @option options [required, String] :region
    #     The AWS region to connect to.  The configured `:region` is
    #     used to determine the service `:endpoint`. When not passed,
    #     a default `:region` is search for in the following locations:
    #
    #     * `Aws.config[:region]`
    #     * `ENV['AWS_REGION']`
    #     * `ENV['AMAZON_REGION']`
    #     * `ENV['AWS_DEFAULT_REGION']`
    #     * `~/.aws/credentials`
    #     * `~/.aws/config`
    #
    #   @option options [String] :access_key_id
    #
    #   @option options [Boolean] :active_endpoint_cache (false)
    #     When set to `true`, a thread polling for endpoints will be running in
    #     the background every 60 secs (default). Defaults to `false`.
    #
    #   @option options [Boolean] :client_side_monitoring (false)
    #     When `true`, client-side metrics will be collected for all API requests from
    #     this client.
    #
    #   @option options [String] :client_side_monitoring_client_id ("")
    #     Allows you to provide an identifier for this client which will be attached to
    #     all generated client side metrics. Defaults to an empty string.
    #
    #   @option options [Integer] :client_side_monitoring_port (31000)
    #     Required for publishing client metrics. The port that the client side monitoring
    #     agent is running on, where client metrics will be published via UDP.
    #
    #   @option options [Aws::ClientSideMonitoring::Publisher] :client_side_monitoring_publisher (Aws::ClientSideMonitoring::Publisher)
    #     Allows you to provide a custom client-side monitoring publisher class. By default,
    #     will use the Client Side Monitoring Agent Publisher.
    #
    #   @option options [Boolean] :convert_params (true)
    #     When `true`, an attempt is made to coerce request parameters into
    #     the required types.
    #
    #   @option options [Boolean] :disable_host_prefix_injection (false)
    #     Set to true to disable SDK automatically adding host prefix
    #     to default service endpoint when available.
    #
    #   @option options [String] :endpoint
    #     The client endpoint is normally constructed from the `:region`
    #     option. You should only configure an `:endpoint` when connecting
    #     to test endpoints. This should be avalid HTTP(S) URI.
    #
    #   @option options [Integer] :endpoint_cache_max_entries (1000)
    #     Used for the maximum size limit of the LRU cache storing endpoints data
    #     for endpoint discovery enabled operations. Defaults to 1000.
    #
    #   @option options [Integer] :endpoint_cache_max_threads (10)
    #     Used for the maximum threads in use for polling endpoints to be cached, defaults to 10.
    #
    #   @option options [Integer] :endpoint_cache_poll_interval (60)
    #     When :endpoint_discovery and :active_endpoint_cache is enabled,
    #     Use this option to config the time interval in seconds for making
    #     requests fetching endpoints information. Defaults to 60 sec.
    #
    #   @option options [Boolean] :endpoint_discovery (false)
    #     When set to `true`, endpoint discovery will be enabled for operations when available. Defaults to `false`.
    #
    #   @option options [Aws::Log::Formatter] :log_formatter (Aws::Log::Formatter.default)
    #     The log formatter.
    #
    #   @option options [Symbol] :log_level (:info)
    #     The log level to send messages to the `:logger` at.
    #
    #   @option options [Logger] :logger
    #     The Logger instance to send log messages to.  If this option
    #     is not set, logging will be disabled.
    #
    #   @option options [String] :profile ("default")
    #     Used when loading credentials from the shared credentials file
    #     at HOME/.aws/credentials.  When not specified, 'default' is used.
    #
    #   @option options [Float] :retry_base_delay (0.3)
    #     The base delay in seconds used by the default backoff function.
    #
    #   @option options [Symbol] :retry_jitter (:none)
    #     A delay randomiser function used by the default backoff function. Some predefined functions can be referenced by name - :none, :equal, :full, otherwise a Proc that takes and returns a number.
    #
    #     @see https://www.awsarchitectureblog.com/2015/03/backoff.html
    #
    #   @option options [Integer] :retry_limit (3)
    #     The maximum number of times to retry failed requests.  Only
    #     ~ 500 level server errors and certain ~ 400 level client errors
    #     are retried.  Generally, these are throttling errors, data
    #     checksum errors, networking errors, timeout errors and auth
    #     errors from expired credentials.
    #
    #   @option options [Integer] :retry_max_delay (0)
    #     The maximum number of seconds to delay between retries (0 for no limit) used by the default backoff function.
    #
    #   @option options [String] :secret_access_key
    #
    #   @option options [String] :session_token
    #
    #   @option options [Boolean] :stub_responses (false)
    #     Causes the client to return stubbed responses. By default
    #     fake responses are generated and returned. You can specify
    #     the response data to return or errors to raise by calling
    #     {ClientStubs#stub_responses}. See {ClientStubs} for more information.
    #
    #     ** Please note ** When response stubbing is enabled, no HTTP
    #     requests are made, and retries are disabled.
    #
    #   @option options [Boolean] :validate_params (true)
    #     When `true`, request parameters are validated before
    #     sending the request.
    #
    #   @option options [URI::HTTP,String] :http_proxy A proxy to send
    #     requests through.  Formatted like 'http://proxy.com:123'.
    #
    #   @option options [Float] :http_open_timeout (15) The number of
    #     seconds to wait when opening a HTTP session before rasing a
    #     `Timeout::Error`.
    #
    #   @option options [Integer] :http_read_timeout (60) The default
    #     number of seconds to wait for response data.  This value can
    #     safely be set
    #     per-request on the session yeidled by {#session_for}.
    #
    #   @option options [Float] :http_idle_timeout (5) The number of
    #     seconds a connection is allowed to sit idble before it is
    #     considered stale.  Stale connections are closed and removed
    #     from the pool before making a request.
    #
    #   @option options [Float] :http_continue_timeout (1) The number of
    #     seconds to wait for a 100-continue response before sending the
    #     request body.  This option has no effect unless the request has
    #     "Expect" header set to "100-continue".  Defaults to `nil` which
    #     disables this behaviour.  This value can safely be set per
    #     request on the session yeidled by {#session_for}.
    #
    #   @option options [Boolean] :http_wire_trace (false) When `true`,
    #     HTTP debug output will be sent to the `:logger`.
    #
    #   @option options [Boolean] :ssl_verify_peer (true) When `true`,
    #     SSL peer certificates are verified when establishing a
    #     connection.
    #
    #   @option options [String] :ssl_ca_bundle Full path to the SSL
    #     certificate authority bundle file that should be used when
    #     verifying peer certificates.  If you do not pass
    #     `:ssl_ca_bundle` or `:ssl_ca_directory` the the system default
    #     will be used if available.
    #
    #   @option options [String] :ssl_ca_directory Full path of the
    #     directory that contains the unbundled SSL certificate
    #     authority files for verifying peer certificates.  If you do
    #     not pass `:ssl_ca_bundle` or `:ssl_ca_directory` the the
    #     system default will be used if available.
    #
    def initialize(*args)
      super
    end

    # @!group API Operations

    # Associates a phone number with the specified Amazon Chime user.
    #
    # @option params [required, String] :account_id
    #   The Amazon Chime account ID.
    #
    # @option params [required, String] :user_id
    #   The user ID.
    #
    # @option params [required, String] :e164_phone_number
    #   The phone number, in E.164 format.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_phone_number_with_user({
    #     account_id: "String", # required
    #     user_id: "String", # required
    #     e164_phone_number: "E164PhoneNumber", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/AssociatePhoneNumberWithUser AWS API Documentation
    #
    # @overload associate_phone_number_with_user(params = {})
    # @param [Hash] params ({})
    def associate_phone_number_with_user(params = {}, options = {})
      req = build_request(:associate_phone_number_with_user, params)
      req.send_request(options)
    end

    # Associates a phone number with the specified Amazon Chime Voice
    # Connector.
    #
    # @option params [required, String] :voice_connector_id
    #   The Amazon Chime Voice Connector ID.
    #
    # @option params [Array<String>] :e164_phone_numbers
    #   List of phone numbers, in E.164 format.
    #
    # @return [Types::AssociatePhoneNumbersWithVoiceConnectorResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AssociatePhoneNumbersWithVoiceConnectorResponse#phone_number_errors #phone_number_errors} => Array&lt;Types::PhoneNumberError&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_phone_numbers_with_voice_connector({
    #     voice_connector_id: "NonEmptyString", # required
    #     e164_phone_numbers: ["E164PhoneNumber"],
    #   })
    #
    # @example Response structure
    #
    #   resp.phone_number_errors #=> Array
    #   resp.phone_number_errors[0].phone_number_id #=> String
    #   resp.phone_number_errors[0].error_code #=> String, one of "Unauthorized", "Forbidden", "NotFound", "BadRequest", "Conflict", "ServiceFailure", "ServiceUnavailable", "Unprocessable", "Throttled", "PreconditionFailed"
    #   resp.phone_number_errors[0].error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/AssociatePhoneNumbersWithVoiceConnector AWS API Documentation
    #
    # @overload associate_phone_numbers_with_voice_connector(params = {})
    # @param [Hash] params ({})
    def associate_phone_numbers_with_voice_connector(params = {}, options = {})
      req = build_request(:associate_phone_numbers_with_voice_connector, params)
      req.send_request(options)
    end

    # Moves phone numbers into the **Deletion queue**. Phone numbers must be
    # disassociated from any users or Amazon Chime Voice Connectors before
    # they can be deleted.
    #
    # Phone numbers remain in the **Deletion queue** for 7 days before they
    # are deleted permanently.
    #
    # @option params [required, Array<String>] :phone_number_ids
    #   List of phone number IDs.
    #
    # @return [Types::BatchDeletePhoneNumberResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchDeletePhoneNumberResponse#phone_number_errors #phone_number_errors} => Array&lt;Types::PhoneNumberError&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_delete_phone_number({
    #     phone_number_ids: ["String"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.phone_number_errors #=> Array
    #   resp.phone_number_errors[0].phone_number_id #=> String
    #   resp.phone_number_errors[0].error_code #=> String, one of "Unauthorized", "Forbidden", "NotFound", "BadRequest", "Conflict", "ServiceFailure", "ServiceUnavailable", "Unprocessable", "Throttled", "PreconditionFailed"
    #   resp.phone_number_errors[0].error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/BatchDeletePhoneNumber AWS API Documentation
    #
    # @overload batch_delete_phone_number(params = {})
    # @param [Hash] params ({})
    def batch_delete_phone_number(params = {}, options = {})
      req = build_request(:batch_delete_phone_number, params)
      req.send_request(options)
    end

    # Suspends up to 50 users from a `Team` or `EnterpriseLWA` Amazon Chime
    # account. For more information about different account types, see
    # [Managing Your Amazon Chime Accounts][1] in the *Amazon Chime
    # Administration Guide*.
    #
    # Users suspended from a `Team` account are dissasociated from the
    # account, but they can continue to use Amazon Chime as free users. To
    # remove the suspension from suspended `Team` account users, invite them
    # to the `Team` account again. You can use the InviteUsers action to do
    # so.
    #
    # Users suspended from an `EnterpriseLWA` account are immediately signed
    # out of Amazon Chime and can no longer sign in. To remove the
    # suspension from suspended `EnterpriseLWA` account users, use the
    # BatchUnsuspendUser action.
    #
    # To sign out users without suspending them, use the LogoutUser action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/chime/latest/ag/manage-chime-account.html
    #
    # @option params [required, String] :account_id
    #   The Amazon Chime account ID.
    #
    # @option params [required, Array<String>] :user_id_list
    #   The request containing the user IDs to suspend.
    #
    # @return [Types::BatchSuspendUserResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchSuspendUserResponse#user_errors #user_errors} => Array&lt;Types::UserError&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_suspend_user({
    #     account_id: "NonEmptyString", # required
    #     user_id_list: ["NonEmptyString"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.user_errors #=> Array
    #   resp.user_errors[0].user_id #=> String
    #   resp.user_errors[0].error_code #=> String, one of "Unauthorized", "Forbidden", "NotFound", "BadRequest", "Conflict", "ServiceFailure", "ServiceUnavailable", "Unprocessable", "Throttled", "PreconditionFailed"
    #   resp.user_errors[0].error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/BatchSuspendUser AWS API Documentation
    #
    # @overload batch_suspend_user(params = {})
    # @param [Hash] params ({})
    def batch_suspend_user(params = {}, options = {})
      req = build_request(:batch_suspend_user, params)
      req.send_request(options)
    end

    # Removes the suspension from up to 50 previously suspended users for
    # the specified Amazon Chime `EnterpriseLWA` account. Only users on
    # `EnterpriseLWA` accounts can be unsuspended using this action. For
    # more information about different account types, see [Managing Your
    # Amazon Chime Accounts][1] in the *Amazon Chime Administration Guide*.
    #
    # Previously suspended users who are unsuspended using this action are
    # returned to `Registered` status. Users who are not previously
    # suspended are ignored.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/chime/latest/ag/manage-chime-account.html
    #
    # @option params [required, String] :account_id
    #   The Amazon Chime account ID.
    #
    # @option params [required, Array<String>] :user_id_list
    #   The request containing the user IDs to unsuspend.
    #
    # @return [Types::BatchUnsuspendUserResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchUnsuspendUserResponse#user_errors #user_errors} => Array&lt;Types::UserError&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_unsuspend_user({
    #     account_id: "NonEmptyString", # required
    #     user_id_list: ["NonEmptyString"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.user_errors #=> Array
    #   resp.user_errors[0].user_id #=> String
    #   resp.user_errors[0].error_code #=> String, one of "Unauthorized", "Forbidden", "NotFound", "BadRequest", "Conflict", "ServiceFailure", "ServiceUnavailable", "Unprocessable", "Throttled", "PreconditionFailed"
    #   resp.user_errors[0].error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/BatchUnsuspendUser AWS API Documentation
    #
    # @overload batch_unsuspend_user(params = {})
    # @param [Hash] params ({})
    def batch_unsuspend_user(params = {}, options = {})
      req = build_request(:batch_unsuspend_user, params)
      req.send_request(options)
    end

    # Updates phone number product types. Choose from Amazon Chime Business
    # Calling and Amazon Chime Voice Connector product types.
    #
    # @option params [required, Array<Types::UpdatePhoneNumberRequestItem>] :update_phone_number_request_items
    #   The request containing the phone number IDs and product types to
    #   update.
    #
    # @return [Types::BatchUpdatePhoneNumberResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchUpdatePhoneNumberResponse#phone_number_errors #phone_number_errors} => Array&lt;Types::PhoneNumberError&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_update_phone_number({
    #     update_phone_number_request_items: [ # required
    #       {
    #         phone_number_id: "NonEmptyString", # required
    #         product_type: "BusinessCalling", # accepts BusinessCalling, VoiceConnector
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.phone_number_errors #=> Array
    #   resp.phone_number_errors[0].phone_number_id #=> String
    #   resp.phone_number_errors[0].error_code #=> String, one of "Unauthorized", "Forbidden", "NotFound", "BadRequest", "Conflict", "ServiceFailure", "ServiceUnavailable", "Unprocessable", "Throttled", "PreconditionFailed"
    #   resp.phone_number_errors[0].error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/BatchUpdatePhoneNumber AWS API Documentation
    #
    # @overload batch_update_phone_number(params = {})
    # @param [Hash] params ({})
    def batch_update_phone_number(params = {}, options = {})
      req = build_request(:batch_update_phone_number, params)
      req.send_request(options)
    end

    # Updates user details within the UpdateUserRequestItem object for up to
    # 20 users for the specified Amazon Chime account. Currently, only
    # `LicenseType` updates are supported for this action.
    #
    # @option params [required, String] :account_id
    #   The Amazon Chime account ID.
    #
    # @option params [required, Array<Types::UpdateUserRequestItem>] :update_user_request_items
    #   The request containing the user IDs and details to update.
    #
    # @return [Types::BatchUpdateUserResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchUpdateUserResponse#user_errors #user_errors} => Array&lt;Types::UserError&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_update_user({
    #     account_id: "NonEmptyString", # required
    #     update_user_request_items: [ # required
    #       {
    #         user_id: "NonEmptyString", # required
    #         license_type: "Basic", # accepts Basic, Plus, Pro, ProTrial
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.user_errors #=> Array
    #   resp.user_errors[0].user_id #=> String
    #   resp.user_errors[0].error_code #=> String, one of "Unauthorized", "Forbidden", "NotFound", "BadRequest", "Conflict", "ServiceFailure", "ServiceUnavailable", "Unprocessable", "Throttled", "PreconditionFailed"
    #   resp.user_errors[0].error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/BatchUpdateUser AWS API Documentation
    #
    # @overload batch_update_user(params = {})
    # @param [Hash] params ({})
    def batch_update_user(params = {}, options = {})
      req = build_request(:batch_update_user, params)
      req.send_request(options)
    end

    # Creates an Amazon Chime account under the administrator's AWS
    # account. Only `Team` account types are currently supported for this
    # action. For more information about different account types, see
    # [Managing Your Amazon Chime Accounts][1] in the *Amazon Chime
    # Administration Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/chime/latest/ag/manage-chime-account.html
    #
    # @option params [required, String] :name
    #   The name of the Amazon Chime account.
    #
    # @return [Types::CreateAccountResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateAccountResponse#account #account} => Types::Account
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_account({
    #     name: "AccountName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.account.aws_account_id #=> String
    #   resp.account.account_id #=> String
    #   resp.account.name #=> String
    #   resp.account.account_type #=> String, one of "Team", "EnterpriseDirectory", "EnterpriseLWA", "EnterpriseOIDC"
    #   resp.account.created_timestamp #=> Time
    #   resp.account.default_license #=> String, one of "Basic", "Plus", "Pro", "ProTrial"
    #   resp.account.supported_licenses #=> Array
    #   resp.account.supported_licenses[0] #=> String, one of "Basic", "Plus", "Pro", "ProTrial"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/CreateAccount AWS API Documentation
    #
    # @overload create_account(params = {})
    # @param [Hash] params ({})
    def create_account(params = {}, options = {})
      req = build_request(:create_account, params)
      req.send_request(options)
    end

    # Creates a bot for an Amazon Chime Enterprise account.
    #
    # @option params [required, String] :account_id
    #   The Amazon Chime account ID.
    #
    # @option params [required, String] :display_name
    #   The bot display name.
    #
    # @option params [String] :domain
    #   The domain of the Amazon Chime Enterprise account.
    #
    # @return [Types::CreateBotResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateBotResponse#bot #bot} => Types::Bot
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_bot({
    #     account_id: "NonEmptyString", # required
    #     display_name: "SensitiveString", # required
    #     domain: "NonEmptyString",
    #   })
    #
    # @example Response structure
    #
    #   resp.bot.bot_id #=> String
    #   resp.bot.user_id #=> String
    #   resp.bot.display_name #=> String
    #   resp.bot.bot_type #=> String, one of "ChatBot"
    #   resp.bot.disabled #=> Boolean
    #   resp.bot.created_timestamp #=> Time
    #   resp.bot.updated_timestamp #=> Time
    #   resp.bot.bot_email #=> String
    #   resp.bot.security_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/CreateBot AWS API Documentation
    #
    # @overload create_bot(params = {})
    # @param [Hash] params ({})
    def create_bot(params = {}, options = {})
      req = build_request(:create_bot, params)
      req.send_request(options)
    end

    # Creates an order for phone numbers to be provisioned. Choose from
    # Amazon Chime Business Calling and Amazon Chime Voice Connector product
    # types.
    #
    # @option params [required, String] :product_type
    #   The phone number product type.
    #
    # @option params [required, Array<String>] :e164_phone_numbers
    #   List of phone numbers, in E.164 format.
    #
    # @return [Types::CreatePhoneNumberOrderResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreatePhoneNumberOrderResponse#phone_number_order #phone_number_order} => Types::PhoneNumberOrder
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_phone_number_order({
    #     product_type: "BusinessCalling", # required, accepts BusinessCalling, VoiceConnector
    #     e164_phone_numbers: ["E164PhoneNumber"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.phone_number_order.phone_number_order_id #=> String
    #   resp.phone_number_order.product_type #=> String, one of "BusinessCalling", "VoiceConnector"
    #   resp.phone_number_order.status #=> String, one of "Processing", "Successful", "Failed", "Partial"
    #   resp.phone_number_order.ordered_phone_numbers #=> Array
    #   resp.phone_number_order.ordered_phone_numbers[0].e164_phone_number #=> String
    #   resp.phone_number_order.ordered_phone_numbers[0].status #=> String, one of "Processing", "Acquired", "Failed"
    #   resp.phone_number_order.created_timestamp #=> Time
    #   resp.phone_number_order.updated_timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/CreatePhoneNumberOrder AWS API Documentation
    #
    # @overload create_phone_number_order(params = {})
    # @param [Hash] params ({})
    def create_phone_number_order(params = {}, options = {})
      req = build_request(:create_phone_number_order, params)
      req.send_request(options)
    end

    # Creates an Amazon Chime Voice Connector under the administrator's AWS
    # account. Enabling CreateVoiceConnectorRequest$RequireEncryption
    # configures your Amazon Chime Voice Connector to use TLS transport for
    # SIP signaling and Secure RTP (SRTP) for media. Inbound calls use TLS
    # transport, and unencrypted outbound calls are blocked.
    #
    # @option params [required, String] :name
    #   The name of the Amazon Chime Voice Connector.
    #
    # @option params [required, Boolean] :require_encryption
    #   When enabled, requires encryption for the Amazon Chime Voice
    #   Connector.
    #
    # @return [Types::CreateVoiceConnectorResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateVoiceConnectorResponse#voice_connector #voice_connector} => Types::VoiceConnector
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_voice_connector({
    #     name: "VoiceConnectorName", # required
    #     require_encryption: false, # required
    #   })
    #
    # @example Response structure
    #
    #   resp.voice_connector.voice_connector_id #=> String
    #   resp.voice_connector.name #=> String
    #   resp.voice_connector.outbound_host_name #=> String
    #   resp.voice_connector.require_encryption #=> Boolean
    #   resp.voice_connector.created_timestamp #=> Time
    #   resp.voice_connector.updated_timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/CreateVoiceConnector AWS API Documentation
    #
    # @overload create_voice_connector(params = {})
    # @param [Hash] params ({})
    def create_voice_connector(params = {}, options = {})
      req = build_request(:create_voice_connector, params)
      req.send_request(options)
    end

    # Deletes the specified Amazon Chime account. You must suspend all users
    # before deleting a `Team` account. You can use the BatchSuspendUser
    # action to do so.
    #
    # For `EnterpriseLWA` and `EnterpriseAD` accounts, you must release the
    # claimed domains for your Amazon Chime account before deletion. As soon
    # as you release the domain, all users under that account are suspended.
    #
    # Deleted accounts appear in your `Disabled` accounts list for 90 days.
    # To restore a deleted account from your `Disabled` accounts list, you
    # must contact AWS Support.
    #
    # After 90 days, deleted accounts are permanently removed from your
    # `Disabled` accounts list.
    #
    # @option params [required, String] :account_id
    #   The Amazon Chime account ID.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_account({
    #     account_id: "NonEmptyString", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/DeleteAccount AWS API Documentation
    #
    # @overload delete_account(params = {})
    # @param [Hash] params ({})
    def delete_account(params = {}, options = {})
      req = build_request(:delete_account, params)
      req.send_request(options)
    end

    # Deletes the events configuration that allows a bot to receive outgoing
    # events.
    #
    # @option params [required, String] :account_id
    #   The Amazon Chime account ID.
    #
    # @option params [required, String] :bot_id
    #   The bot ID.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_events_configuration({
    #     account_id: "NonEmptyString", # required
    #     bot_id: "NonEmptyString", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/DeleteEventsConfiguration AWS API Documentation
    #
    # @overload delete_events_configuration(params = {})
    # @param [Hash] params ({})
    def delete_events_configuration(params = {}, options = {})
      req = build_request(:delete_events_configuration, params)
      req.send_request(options)
    end

    # Moves the specified phone number into the **Deletion queue**. A phone
    # number must be disassociated from any users or Amazon Chime Voice
    # Connectors before it can be deleted.
    #
    # Deleted phone numbers remain in the **Deletion queue** for 7 days
    # before they are deleted permanently.
    #
    # @option params [required, String] :phone_number_id
    #   The phone number ID.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_phone_number({
    #     phone_number_id: "String", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/DeletePhoneNumber AWS API Documentation
    #
    # @overload delete_phone_number(params = {})
    # @param [Hash] params ({})
    def delete_phone_number(params = {}, options = {})
      req = build_request(:delete_phone_number, params)
      req.send_request(options)
    end

    # Deletes the specified Amazon Chime Voice Connector. Any phone numbers
    # assigned to the Amazon Chime Voice Connector must be unassigned from
    # it before it can be deleted.
    #
    # @option params [required, String] :voice_connector_id
    #   The Amazon Chime Voice Connector ID.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_voice_connector({
    #     voice_connector_id: "NonEmptyString", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/DeleteVoiceConnector AWS API Documentation
    #
    # @overload delete_voice_connector(params = {})
    # @param [Hash] params ({})
    def delete_voice_connector(params = {}, options = {})
      req = build_request(:delete_voice_connector, params)
      req.send_request(options)
    end

    # Deletes the origination settings for the specified Amazon Chime Voice
    # Connector.
    #
    # @option params [required, String] :voice_connector_id
    #   The Amazon Chime Voice Connector ID.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_voice_connector_origination({
    #     voice_connector_id: "NonEmptyString", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/DeleteVoiceConnectorOrigination AWS API Documentation
    #
    # @overload delete_voice_connector_origination(params = {})
    # @param [Hash] params ({})
    def delete_voice_connector_origination(params = {}, options = {})
      req = build_request(:delete_voice_connector_origination, params)
      req.send_request(options)
    end

    # Deletes the termination settings for the specified Amazon Chime Voice
    # Connector.
    #
    # @option params [required, String] :voice_connector_id
    #   The Amazon Chime Voice Connector ID.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_voice_connector_termination({
    #     voice_connector_id: "NonEmptyString", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/DeleteVoiceConnectorTermination AWS API Documentation
    #
    # @overload delete_voice_connector_termination(params = {})
    # @param [Hash] params ({})
    def delete_voice_connector_termination(params = {}, options = {})
      req = build_request(:delete_voice_connector_termination, params)
      req.send_request(options)
    end

    # Deletes the specified SIP credentials used by your equipment to
    # authenticate during call termination.
    #
    # @option params [required, String] :voice_connector_id
    #   The Amazon Chime Voice Connector ID.
    #
    # @option params [Array<String>] :usernames
    #   The RFC2617 compliant username associated with the SIP credentials, in
    #   US-ASCII format.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_voice_connector_termination_credentials({
    #     voice_connector_id: "NonEmptyString", # required
    #     usernames: ["SensitiveString"],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/DeleteVoiceConnectorTerminationCredentials AWS API Documentation
    #
    # @overload delete_voice_connector_termination_credentials(params = {})
    # @param [Hash] params ({})
    def delete_voice_connector_termination_credentials(params = {}, options = {})
      req = build_request(:delete_voice_connector_termination_credentials, params)
      req.send_request(options)
    end

    # Disassociates the primary provisioned phone number from the specified
    # Amazon Chime user.
    #
    # @option params [required, String] :account_id
    #   The Amazon Chime account ID.
    #
    # @option params [required, String] :user_id
    #   The user ID.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_phone_number_from_user({
    #     account_id: "String", # required
    #     user_id: "String", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/DisassociatePhoneNumberFromUser AWS API Documentation
    #
    # @overload disassociate_phone_number_from_user(params = {})
    # @param [Hash] params ({})
    def disassociate_phone_number_from_user(params = {}, options = {})
      req = build_request(:disassociate_phone_number_from_user, params)
      req.send_request(options)
    end

    # Disassociates the specified phone number from the specified Amazon
    # Chime Voice Connector.
    #
    # @option params [required, String] :voice_connector_id
    #   The Amazon Chime Voice Connector ID.
    #
    # @option params [Array<String>] :e164_phone_numbers
    #   List of phone numbers, in E.164 format.
    #
    # @return [Types::DisassociatePhoneNumbersFromVoiceConnectorResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DisassociatePhoneNumbersFromVoiceConnectorResponse#phone_number_errors #phone_number_errors} => Array&lt;Types::PhoneNumberError&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_phone_numbers_from_voice_connector({
    #     voice_connector_id: "NonEmptyString", # required
    #     e164_phone_numbers: ["E164PhoneNumber"],
    #   })
    #
    # @example Response structure
    #
    #   resp.phone_number_errors #=> Array
    #   resp.phone_number_errors[0].phone_number_id #=> String
    #   resp.phone_number_errors[0].error_code #=> String, one of "Unauthorized", "Forbidden", "NotFound", "BadRequest", "Conflict", "ServiceFailure", "ServiceUnavailable", "Unprocessable", "Throttled", "PreconditionFailed"
    #   resp.phone_number_errors[0].error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/DisassociatePhoneNumbersFromVoiceConnector AWS API Documentation
    #
    # @overload disassociate_phone_numbers_from_voice_connector(params = {})
    # @param [Hash] params ({})
    def disassociate_phone_numbers_from_voice_connector(params = {}, options = {})
      req = build_request(:disassociate_phone_numbers_from_voice_connector, params)
      req.send_request(options)
    end

    # Retrieves details for the specified Amazon Chime account, such as
    # account type and supported licenses.
    #
    # @option params [required, String] :account_id
    #   The Amazon Chime account ID.
    #
    # @return [Types::GetAccountResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAccountResponse#account #account} => Types::Account
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_account({
    #     account_id: "NonEmptyString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.account.aws_account_id #=> String
    #   resp.account.account_id #=> String
    #   resp.account.name #=> String
    #   resp.account.account_type #=> String, one of "Team", "EnterpriseDirectory", "EnterpriseLWA", "EnterpriseOIDC"
    #   resp.account.created_timestamp #=> Time
    #   resp.account.default_license #=> String, one of "Basic", "Plus", "Pro", "ProTrial"
    #   resp.account.supported_licenses #=> Array
    #   resp.account.supported_licenses[0] #=> String, one of "Basic", "Plus", "Pro", "ProTrial"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/GetAccount AWS API Documentation
    #
    # @overload get_account(params = {})
    # @param [Hash] params ({})
    def get_account(params = {}, options = {})
      req = build_request(:get_account, params)
      req.send_request(options)
    end

    # Retrieves account settings for the specified Amazon Chime account ID,
    # such as remote control and dial out settings. For more information
    # about these settings, see [Use the Policies Page][1] in the *Amazon
    # Chime Administration Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/chime/latest/ag/policies.html
    #
    # @option params [required, String] :account_id
    #   The Amazon Chime account ID.
    #
    # @return [Types::GetAccountSettingsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAccountSettingsResponse#account_settings #account_settings} => Types::AccountSettings
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_account_settings({
    #     account_id: "NonEmptyString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.account_settings.disable_remote_control #=> Boolean
    #   resp.account_settings.enable_dial_out #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/GetAccountSettings AWS API Documentation
    #
    # @overload get_account_settings(params = {})
    # @param [Hash] params ({})
    def get_account_settings(params = {}, options = {})
      req = build_request(:get_account_settings, params)
      req.send_request(options)
    end

    # Retrieves details for the specified bot, such as bot email address,
    # bot type, status, and display name.
    #
    # @option params [required, String] :account_id
    #   The Amazon Chime account ID.
    #
    # @option params [required, String] :bot_id
    #   The bot ID.
    #
    # @return [Types::GetBotResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetBotResponse#bot #bot} => Types::Bot
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_bot({
    #     account_id: "NonEmptyString", # required
    #     bot_id: "NonEmptyString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.bot.bot_id #=> String
    #   resp.bot.user_id #=> String
    #   resp.bot.display_name #=> String
    #   resp.bot.bot_type #=> String, one of "ChatBot"
    #   resp.bot.disabled #=> Boolean
    #   resp.bot.created_timestamp #=> Time
    #   resp.bot.updated_timestamp #=> Time
    #   resp.bot.bot_email #=> String
    #   resp.bot.security_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/GetBot AWS API Documentation
    #
    # @overload get_bot(params = {})
    # @param [Hash] params ({})
    def get_bot(params = {}, options = {})
      req = build_request(:get_bot, params)
      req.send_request(options)
    end

    # Gets details for an events configuration that allows a bot to receive
    # outgoing events, such as an HTTPS endpoint or Lambda function ARN.
    #
    # @option params [required, String] :account_id
    #   The Amazon Chime account ID.
    #
    # @option params [required, String] :bot_id
    #   The bot ID.
    #
    # @return [Types::GetEventsConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetEventsConfigurationResponse#events_configuration #events_configuration} => Types::EventsConfiguration
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_events_configuration({
    #     account_id: "NonEmptyString", # required
    #     bot_id: "NonEmptyString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.events_configuration.bot_id #=> String
    #   resp.events_configuration.outbound_events_https_endpoint #=> String
    #   resp.events_configuration.lambda_function_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/GetEventsConfiguration AWS API Documentation
    #
    # @overload get_events_configuration(params = {})
    # @param [Hash] params ({})
    def get_events_configuration(params = {}, options = {})
      req = build_request(:get_events_configuration, params)
      req.send_request(options)
    end

    # Retrieves global settings for the administrator's AWS account, such
    # as Amazon Chime Business Calling and Amazon Chime Voice Connector
    # settings.
    #
    # @return [Types::GetGlobalSettingsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetGlobalSettingsResponse#business_calling #business_calling} => Types::BusinessCallingSettings
    #   * {Types::GetGlobalSettingsResponse#voice_connector #voice_connector} => Types::VoiceConnectorSettings
    #
    # @example Response structure
    #
    #   resp.business_calling.cdr_bucket #=> String
    #   resp.voice_connector.cdr_bucket #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/GetGlobalSettings AWS API Documentation
    #
    # @overload get_global_settings(params = {})
    # @param [Hash] params ({})
    def get_global_settings(params = {}, options = {})
      req = build_request(:get_global_settings, params)
      req.send_request(options)
    end

    # Retrieves details for the specified phone number ID, such as
    # associations, capabilities, and product type.
    #
    # @option params [required, String] :phone_number_id
    #   The phone number ID.
    #
    # @return [Types::GetPhoneNumberResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetPhoneNumberResponse#phone_number #phone_number} => Types::PhoneNumber
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_phone_number({
    #     phone_number_id: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.phone_number.phone_number_id #=> String
    #   resp.phone_number.e164_phone_number #=> String
    #   resp.phone_number.product_type #=> String, one of "BusinessCalling", "VoiceConnector"
    #   resp.phone_number.status #=> String, one of "AcquireInProgress", "AcquireFailed", "Unassigned", "Assigned", "ReleaseInProgress", "DeleteInProgress", "ReleaseFailed", "DeleteFailed"
    #   resp.phone_number.capabilities.inbound_call #=> Boolean
    #   resp.phone_number.capabilities.outbound_call #=> Boolean
    #   resp.phone_number.capabilities.inbound_sms #=> Boolean
    #   resp.phone_number.capabilities.outbound_sms #=> Boolean
    #   resp.phone_number.capabilities.inbound_mms #=> Boolean
    #   resp.phone_number.capabilities.outbound_mms #=> Boolean
    #   resp.phone_number.associations #=> Array
    #   resp.phone_number.associations[0].value #=> String
    #   resp.phone_number.associations[0].name #=> String, one of "AccountId", "UserId", "VoiceConnectorId"
    #   resp.phone_number.associations[0].associated_timestamp #=> Time
    #   resp.phone_number.created_timestamp #=> Time
    #   resp.phone_number.updated_timestamp #=> Time
    #   resp.phone_number.deletion_timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/GetPhoneNumber AWS API Documentation
    #
    # @overload get_phone_number(params = {})
    # @param [Hash] params ({})
    def get_phone_number(params = {}, options = {})
      req = build_request(:get_phone_number, params)
      req.send_request(options)
    end

    # Retrieves details for the specified phone number order, such as order
    # creation timestamp, phone numbers in E.164 format, product type, and
    # order status.
    #
    # @option params [required, String] :phone_number_order_id
    #   The ID for the phone number order.
    #
    # @return [Types::GetPhoneNumberOrderResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetPhoneNumberOrderResponse#phone_number_order #phone_number_order} => Types::PhoneNumberOrder
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_phone_number_order({
    #     phone_number_order_id: "GuidString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.phone_number_order.phone_number_order_id #=> String
    #   resp.phone_number_order.product_type #=> String, one of "BusinessCalling", "VoiceConnector"
    #   resp.phone_number_order.status #=> String, one of "Processing", "Successful", "Failed", "Partial"
    #   resp.phone_number_order.ordered_phone_numbers #=> Array
    #   resp.phone_number_order.ordered_phone_numbers[0].e164_phone_number #=> String
    #   resp.phone_number_order.ordered_phone_numbers[0].status #=> String, one of "Processing", "Acquired", "Failed"
    #   resp.phone_number_order.created_timestamp #=> Time
    #   resp.phone_number_order.updated_timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/GetPhoneNumberOrder AWS API Documentation
    #
    # @overload get_phone_number_order(params = {})
    # @param [Hash] params ({})
    def get_phone_number_order(params = {}, options = {})
      req = build_request(:get_phone_number_order, params)
      req.send_request(options)
    end

    # Retrieves details for the specified user ID, such as primary email
    # address, license type, and personal meeting PIN.
    #
    # To retrieve user details with an email address instead of a user ID,
    # use the ListUsers action, and then filter by email address.
    #
    # @option params [required, String] :account_id
    #   The Amazon Chime account ID.
    #
    # @option params [required, String] :user_id
    #   The user ID.
    #
    # @return [Types::GetUserResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetUserResponse#user #user} => Types::User
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_user({
    #     account_id: "NonEmptyString", # required
    #     user_id: "NonEmptyString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.user.user_id #=> String
    #   resp.user.account_id #=> String
    #   resp.user.primary_email #=> String
    #   resp.user.primary_provisioned_number #=> String
    #   resp.user.display_name #=> String
    #   resp.user.license_type #=> String, one of "Basic", "Plus", "Pro", "ProTrial"
    #   resp.user.user_registration_status #=> String, one of "Unregistered", "Registered", "Suspended"
    #   resp.user.user_invitation_status #=> String, one of "Pending", "Accepted", "Failed"
    #   resp.user.registered_on #=> Time
    #   resp.user.invited_on #=> Time
    #   resp.user.personal_pin #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/GetUser AWS API Documentation
    #
    # @overload get_user(params = {})
    # @param [Hash] params ({})
    def get_user(params = {}, options = {})
      req = build_request(:get_user, params)
      req.send_request(options)
    end

    # Retrieves settings for the specified user ID, such as any associated
    # phone number settings.
    #
    # @option params [required, String] :account_id
    #   The Amazon Chime account ID.
    #
    # @option params [required, String] :user_id
    #   The user ID.
    #
    # @return [Types::GetUserSettingsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetUserSettingsResponse#user_settings #user_settings} => Types::UserSettings
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_user_settings({
    #     account_id: "String", # required
    #     user_id: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.user_settings.telephony.inbound_calling #=> Boolean
    #   resp.user_settings.telephony.outbound_calling #=> Boolean
    #   resp.user_settings.telephony.sms #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/GetUserSettings AWS API Documentation
    #
    # @overload get_user_settings(params = {})
    # @param [Hash] params ({})
    def get_user_settings(params = {}, options = {})
      req = build_request(:get_user_settings, params)
      req.send_request(options)
    end

    # Retrieves details for the specified Amazon Chime Voice Connector, such
    # as timestamps, name, outbound host, and encryption requirements.
    #
    # @option params [required, String] :voice_connector_id
    #   The Amazon Chime Voice Connector ID.
    #
    # @return [Types::GetVoiceConnectorResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetVoiceConnectorResponse#voice_connector #voice_connector} => Types::VoiceConnector
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_voice_connector({
    #     voice_connector_id: "NonEmptyString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.voice_connector.voice_connector_id #=> String
    #   resp.voice_connector.name #=> String
    #   resp.voice_connector.outbound_host_name #=> String
    #   resp.voice_connector.require_encryption #=> Boolean
    #   resp.voice_connector.created_timestamp #=> Time
    #   resp.voice_connector.updated_timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/GetVoiceConnector AWS API Documentation
    #
    # @overload get_voice_connector(params = {})
    # @param [Hash] params ({})
    def get_voice_connector(params = {}, options = {})
      req = build_request(:get_voice_connector, params)
      req.send_request(options)
    end

    # Retrieves origination setting details for the specified Amazon Chime
    # Voice Connector.
    #
    # @option params [required, String] :voice_connector_id
    #   The Amazon Chime Voice Connector ID.
    #
    # @return [Types::GetVoiceConnectorOriginationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetVoiceConnectorOriginationResponse#origination #origination} => Types::Origination
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_voice_connector_origination({
    #     voice_connector_id: "NonEmptyString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.origination.routes #=> Array
    #   resp.origination.routes[0].host #=> String
    #   resp.origination.routes[0].port #=> Integer
    #   resp.origination.routes[0].protocol #=> String, one of "TCP", "UDP"
    #   resp.origination.routes[0].priority #=> Integer
    #   resp.origination.routes[0].weight #=> Integer
    #   resp.origination.disabled #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/GetVoiceConnectorOrigination AWS API Documentation
    #
    # @overload get_voice_connector_origination(params = {})
    # @param [Hash] params ({})
    def get_voice_connector_origination(params = {}, options = {})
      req = build_request(:get_voice_connector_origination, params)
      req.send_request(options)
    end

    # Retrieves termination setting details for the specified Amazon Chime
    # Voice Connector.
    #
    # @option params [required, String] :voice_connector_id
    #   The Amazon Chime Voice Connector ID.
    #
    # @return [Types::GetVoiceConnectorTerminationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetVoiceConnectorTerminationResponse#termination #termination} => Types::Termination
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_voice_connector_termination({
    #     voice_connector_id: "NonEmptyString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.termination.cps_limit #=> Integer
    #   resp.termination.default_phone_number #=> String
    #   resp.termination.calling_regions #=> Array
    #   resp.termination.calling_regions[0] #=> String
    #   resp.termination.cidr_allowed_list #=> Array
    #   resp.termination.cidr_allowed_list[0] #=> String
    #   resp.termination.disabled #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/GetVoiceConnectorTermination AWS API Documentation
    #
    # @overload get_voice_connector_termination(params = {})
    # @param [Hash] params ({})
    def get_voice_connector_termination(params = {}, options = {})
      req = build_request(:get_voice_connector_termination, params)
      req.send_request(options)
    end

    # Retrieves information about the last time a SIP `OPTIONS` ping was
    # received from your SIP infrastructure for the specified Amazon Chime
    # Voice Connector.
    #
    # @option params [required, String] :voice_connector_id
    #   The Amazon Chime Voice Connector ID.
    #
    # @return [Types::GetVoiceConnectorTerminationHealthResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetVoiceConnectorTerminationHealthResponse#termination_health #termination_health} => Types::TerminationHealth
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_voice_connector_termination_health({
    #     voice_connector_id: "NonEmptyString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.termination_health.timestamp #=> Time
    #   resp.termination_health.source #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/GetVoiceConnectorTerminationHealth AWS API Documentation
    #
    # @overload get_voice_connector_termination_health(params = {})
    # @param [Hash] params ({})
    def get_voice_connector_termination_health(params = {}, options = {})
      req = build_request(:get_voice_connector_termination_health, params)
      req.send_request(options)
    end

    # Sends email invites to as many as 50 users, inviting them to the
    # specified Amazon Chime `Team` account. Only `Team` account types are
    # currently supported for this action.
    #
    # @option params [required, String] :account_id
    #   The Amazon Chime account ID.
    #
    # @option params [required, Array<String>] :user_email_list
    #   The user email addresses to which to send the invite.
    #
    # @return [Types::InviteUsersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::InviteUsersResponse#invites #invites} => Array&lt;Types::Invite&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.invite_users({
    #     account_id: "NonEmptyString", # required
    #     user_email_list: ["EmailAddress"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.invites #=> Array
    #   resp.invites[0].invite_id #=> String
    #   resp.invites[0].status #=> String, one of "Pending", "Accepted", "Failed"
    #   resp.invites[0].email_address #=> String
    #   resp.invites[0].email_status #=> String, one of "NotSent", "Sent", "Failed"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/InviteUsers AWS API Documentation
    #
    # @overload invite_users(params = {})
    # @param [Hash] params ({})
    def invite_users(params = {}, options = {})
      req = build_request(:invite_users, params)
      req.send_request(options)
    end

    # Lists the Amazon Chime accounts under the administrator's AWS
    # account. You can filter accounts by account name prefix. To find out
    # which Amazon Chime account a user belongs to, you can filter by the
    # user's email address, which returns one account result.
    #
    # @option params [String] :name
    #   Amazon Chime account name prefix with which to filter results.
    #
    # @option params [String] :user_email
    #   User email address with which to filter results.
    #
    # @option params [String] :next_token
    #   The token to use to retrieve the next page of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call. Defaults to
    #   100.
    #
    # @return [Types::ListAccountsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAccountsResponse#accounts #accounts} => Array&lt;Types::Account&gt;
    #   * {Types::ListAccountsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_accounts({
    #     name: "AccountName",
    #     user_email: "EmailAddress",
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.accounts #=> Array
    #   resp.accounts[0].aws_account_id #=> String
    #   resp.accounts[0].account_id #=> String
    #   resp.accounts[0].name #=> String
    #   resp.accounts[0].account_type #=> String, one of "Team", "EnterpriseDirectory", "EnterpriseLWA", "EnterpriseOIDC"
    #   resp.accounts[0].created_timestamp #=> Time
    #   resp.accounts[0].default_license #=> String, one of "Basic", "Plus", "Pro", "ProTrial"
    #   resp.accounts[0].supported_licenses #=> Array
    #   resp.accounts[0].supported_licenses[0] #=> String, one of "Basic", "Plus", "Pro", "ProTrial"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/ListAccounts AWS API Documentation
    #
    # @overload list_accounts(params = {})
    # @param [Hash] params ({})
    def list_accounts(params = {}, options = {})
      req = build_request(:list_accounts, params)
      req.send_request(options)
    end

    # Lists the bots associated with the administrator's Amazon Chime
    # Enterprise account ID.
    #
    # @option params [required, String] :account_id
    #   The Amazon Chime account ID.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call. Default is
    #   10.
    #
    # @option params [String] :next_token
    #   The token to use to retrieve the next page of results.
    #
    # @return [Types::ListBotsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListBotsResponse#bots #bots} => Array&lt;Types::Bot&gt;
    #   * {Types::ListBotsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_bots({
    #     account_id: "NonEmptyString", # required
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.bots #=> Array
    #   resp.bots[0].bot_id #=> String
    #   resp.bots[0].user_id #=> String
    #   resp.bots[0].display_name #=> String
    #   resp.bots[0].bot_type #=> String, one of "ChatBot"
    #   resp.bots[0].disabled #=> Boolean
    #   resp.bots[0].created_timestamp #=> Time
    #   resp.bots[0].updated_timestamp #=> Time
    #   resp.bots[0].bot_email #=> String
    #   resp.bots[0].security_token #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/ListBots AWS API Documentation
    #
    # @overload list_bots(params = {})
    # @param [Hash] params ({})
    def list_bots(params = {}, options = {})
      req = build_request(:list_bots, params)
      req.send_request(options)
    end

    # Lists the phone number orders for the administrator's Amazon Chime
    # account.
    #
    # @option params [String] :next_token
    #   The token to use to retrieve the next page of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call.
    #
    # @return [Types::ListPhoneNumberOrdersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPhoneNumberOrdersResponse#phone_number_orders #phone_number_orders} => Array&lt;Types::PhoneNumberOrder&gt;
    #   * {Types::ListPhoneNumberOrdersResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_phone_number_orders({
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.phone_number_orders #=> Array
    #   resp.phone_number_orders[0].phone_number_order_id #=> String
    #   resp.phone_number_orders[0].product_type #=> String, one of "BusinessCalling", "VoiceConnector"
    #   resp.phone_number_orders[0].status #=> String, one of "Processing", "Successful", "Failed", "Partial"
    #   resp.phone_number_orders[0].ordered_phone_numbers #=> Array
    #   resp.phone_number_orders[0].ordered_phone_numbers[0].e164_phone_number #=> String
    #   resp.phone_number_orders[0].ordered_phone_numbers[0].status #=> String, one of "Processing", "Acquired", "Failed"
    #   resp.phone_number_orders[0].created_timestamp #=> Time
    #   resp.phone_number_orders[0].updated_timestamp #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/ListPhoneNumberOrders AWS API Documentation
    #
    # @overload list_phone_number_orders(params = {})
    # @param [Hash] params ({})
    def list_phone_number_orders(params = {}, options = {})
      req = build_request(:list_phone_number_orders, params)
      req.send_request(options)
    end

    # Lists the phone numbers for the specified Amazon Chime account, Amazon
    # Chime user, or Amazon Chime Voice Connector.
    #
    # @option params [String] :status
    #   The phone number status.
    #
    # @option params [String] :product_type
    #   The phone number product type.
    #
    # @option params [String] :filter_name
    #   The filter to use to limit the number of results.
    #
    # @option params [String] :filter_value
    #   The value to use for the filter.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call.
    #
    # @option params [String] :next_token
    #   The token to use to retrieve the next page of results.
    #
    # @return [Types::ListPhoneNumbersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPhoneNumbersResponse#phone_numbers #phone_numbers} => Array&lt;Types::PhoneNumber&gt;
    #   * {Types::ListPhoneNumbersResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_phone_numbers({
    #     status: "AcquireInProgress", # accepts AcquireInProgress, AcquireFailed, Unassigned, Assigned, ReleaseInProgress, DeleteInProgress, ReleaseFailed, DeleteFailed
    #     product_type: "BusinessCalling", # accepts BusinessCalling, VoiceConnector
    #     filter_name: "AccountId", # accepts AccountId, UserId, VoiceConnectorId
    #     filter_value: "String",
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.phone_numbers #=> Array
    #   resp.phone_numbers[0].phone_number_id #=> String
    #   resp.phone_numbers[0].e164_phone_number #=> String
    #   resp.phone_numbers[0].product_type #=> String, one of "BusinessCalling", "VoiceConnector"
    #   resp.phone_numbers[0].status #=> String, one of "AcquireInProgress", "AcquireFailed", "Unassigned", "Assigned", "ReleaseInProgress", "DeleteInProgress", "ReleaseFailed", "DeleteFailed"
    #   resp.phone_numbers[0].capabilities.inbound_call #=> Boolean
    #   resp.phone_numbers[0].capabilities.outbound_call #=> Boolean
    #   resp.phone_numbers[0].capabilities.inbound_sms #=> Boolean
    #   resp.phone_numbers[0].capabilities.outbound_sms #=> Boolean
    #   resp.phone_numbers[0].capabilities.inbound_mms #=> Boolean
    #   resp.phone_numbers[0].capabilities.outbound_mms #=> Boolean
    #   resp.phone_numbers[0].associations #=> Array
    #   resp.phone_numbers[0].associations[0].value #=> String
    #   resp.phone_numbers[0].associations[0].name #=> String, one of "AccountId", "UserId", "VoiceConnectorId"
    #   resp.phone_numbers[0].associations[0].associated_timestamp #=> Time
    #   resp.phone_numbers[0].created_timestamp #=> Time
    #   resp.phone_numbers[0].updated_timestamp #=> Time
    #   resp.phone_numbers[0].deletion_timestamp #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/ListPhoneNumbers AWS API Documentation
    #
    # @overload list_phone_numbers(params = {})
    # @param [Hash] params ({})
    def list_phone_numbers(params = {}, options = {})
      req = build_request(:list_phone_numbers, params)
      req.send_request(options)
    end

    # Lists the users that belong to the specified Amazon Chime account. You
    # can specify an email address to list only the user that the email
    # address belongs to.
    #
    # @option params [required, String] :account_id
    #   The Amazon Chime account ID.
    #
    # @option params [String] :user_email
    #   Optional. The user email address used to filter results. Maximum 1.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call. Defaults to
    #   100.
    #
    # @option params [String] :next_token
    #   The token to use to retrieve the next page of results.
    #
    # @return [Types::ListUsersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListUsersResponse#users #users} => Array&lt;Types::User&gt;
    #   * {Types::ListUsersResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_users({
    #     account_id: "NonEmptyString", # required
    #     user_email: "EmailAddress",
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.users #=> Array
    #   resp.users[0].user_id #=> String
    #   resp.users[0].account_id #=> String
    #   resp.users[0].primary_email #=> String
    #   resp.users[0].primary_provisioned_number #=> String
    #   resp.users[0].display_name #=> String
    #   resp.users[0].license_type #=> String, one of "Basic", "Plus", "Pro", "ProTrial"
    #   resp.users[0].user_registration_status #=> String, one of "Unregistered", "Registered", "Suspended"
    #   resp.users[0].user_invitation_status #=> String, one of "Pending", "Accepted", "Failed"
    #   resp.users[0].registered_on #=> Time
    #   resp.users[0].invited_on #=> Time
    #   resp.users[0].personal_pin #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/ListUsers AWS API Documentation
    #
    # @overload list_users(params = {})
    # @param [Hash] params ({})
    def list_users(params = {}, options = {})
      req = build_request(:list_users, params)
      req.send_request(options)
    end

    # Lists the SIP credentials for the specified Amazon Chime Voice
    # Connector.
    #
    # @option params [required, String] :voice_connector_id
    #   The Amazon Chime Voice Connector ID.
    #
    # @return [Types::ListVoiceConnectorTerminationCredentialsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListVoiceConnectorTerminationCredentialsResponse#usernames #usernames} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_voice_connector_termination_credentials({
    #     voice_connector_id: "NonEmptyString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.usernames #=> Array
    #   resp.usernames[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/ListVoiceConnectorTerminationCredentials AWS API Documentation
    #
    # @overload list_voice_connector_termination_credentials(params = {})
    # @param [Hash] params ({})
    def list_voice_connector_termination_credentials(params = {}, options = {})
      req = build_request(:list_voice_connector_termination_credentials, params)
      req.send_request(options)
    end

    # Lists the Amazon Chime Voice Connectors for the administrator's AWS
    # account.
    #
    # @option params [String] :next_token
    #   The token to use to retrieve the next page of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call.
    #
    # @return [Types::ListVoiceConnectorsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListVoiceConnectorsResponse#voice_connectors #voice_connectors} => Array&lt;Types::VoiceConnector&gt;
    #   * {Types::ListVoiceConnectorsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_voice_connectors({
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.voice_connectors #=> Array
    #   resp.voice_connectors[0].voice_connector_id #=> String
    #   resp.voice_connectors[0].name #=> String
    #   resp.voice_connectors[0].outbound_host_name #=> String
    #   resp.voice_connectors[0].require_encryption #=> Boolean
    #   resp.voice_connectors[0].created_timestamp #=> Time
    #   resp.voice_connectors[0].updated_timestamp #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/ListVoiceConnectors AWS API Documentation
    #
    # @overload list_voice_connectors(params = {})
    # @param [Hash] params ({})
    def list_voice_connectors(params = {}, options = {})
      req = build_request(:list_voice_connectors, params)
      req.send_request(options)
    end

    # Logs out the specified user from all of the devices they are currently
    # logged into.
    #
    # @option params [required, String] :account_id
    #   The Amazon Chime account ID.
    #
    # @option params [required, String] :user_id
    #   The user ID.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.logout_user({
    #     account_id: "NonEmptyString", # required
    #     user_id: "NonEmptyString", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/LogoutUser AWS API Documentation
    #
    # @overload logout_user(params = {})
    # @param [Hash] params ({})
    def logout_user(params = {}, options = {})
      req = build_request(:logout_user, params)
      req.send_request(options)
    end

    # Creates an events configuration that allows a bot to receive outgoing
    # events sent by Amazon Chime. Choose either an HTTPS endpoint or a
    # Lambda function ARN. For more information, see Bot.
    #
    # @option params [required, String] :account_id
    #   The Amazon Chime account ID.
    #
    # @option params [required, String] :bot_id
    #   The bot ID.
    #
    # @option params [String] :outbound_events_https_endpoint
    #   HTTPS endpoint that allows the bot to receive outgoing events.
    #
    # @option params [String] :lambda_function_arn
    #   Lambda function ARN that allows the bot to receive outgoing events.
    #
    # @return [Types::PutEventsConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutEventsConfigurationResponse#events_configuration #events_configuration} => Types::EventsConfiguration
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_events_configuration({
    #     account_id: "NonEmptyString", # required
    #     bot_id: "NonEmptyString", # required
    #     outbound_events_https_endpoint: "SensitiveString",
    #     lambda_function_arn: "SensitiveString",
    #   })
    #
    # @example Response structure
    #
    #   resp.events_configuration.bot_id #=> String
    #   resp.events_configuration.outbound_events_https_endpoint #=> String
    #   resp.events_configuration.lambda_function_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/PutEventsConfiguration AWS API Documentation
    #
    # @overload put_events_configuration(params = {})
    # @param [Hash] params ({})
    def put_events_configuration(params = {}, options = {})
      req = build_request(:put_events_configuration, params)
      req.send_request(options)
    end

    # Adds origination settings for the specified Amazon Chime Voice
    # Connector.
    #
    # @option params [required, String] :voice_connector_id
    #   The Amazon Chime Voice Connector ID.
    #
    # @option params [required, Types::Origination] :origination
    #   The origination setting details to add.
    #
    # @return [Types::PutVoiceConnectorOriginationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutVoiceConnectorOriginationResponse#origination #origination} => Types::Origination
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_voice_connector_origination({
    #     voice_connector_id: "NonEmptyString", # required
    #     origination: { # required
    #       routes: [
    #         {
    #           host: "String",
    #           port: 1,
    #           protocol: "TCP", # accepts TCP, UDP
    #           priority: 1,
    #           weight: 1,
    #         },
    #       ],
    #       disabled: false,
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.origination.routes #=> Array
    #   resp.origination.routes[0].host #=> String
    #   resp.origination.routes[0].port #=> Integer
    #   resp.origination.routes[0].protocol #=> String, one of "TCP", "UDP"
    #   resp.origination.routes[0].priority #=> Integer
    #   resp.origination.routes[0].weight #=> Integer
    #   resp.origination.disabled #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/PutVoiceConnectorOrigination AWS API Documentation
    #
    # @overload put_voice_connector_origination(params = {})
    # @param [Hash] params ({})
    def put_voice_connector_origination(params = {}, options = {})
      req = build_request(:put_voice_connector_origination, params)
      req.send_request(options)
    end

    # Adds termination settings for the specified Amazon Chime Voice
    # Connector.
    #
    # @option params [required, String] :voice_connector_id
    #   The Amazon Chime Voice Connector ID.
    #
    # @option params [required, Types::Termination] :termination
    #   The termination setting details to add.
    #
    # @return [Types::PutVoiceConnectorTerminationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutVoiceConnectorTerminationResponse#termination #termination} => Types::Termination
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_voice_connector_termination({
    #     voice_connector_id: "NonEmptyString", # required
    #     termination: { # required
    #       cps_limit: 1,
    #       default_phone_number: "E164PhoneNumber",
    #       calling_regions: ["CallingRegion"],
    #       cidr_allowed_list: ["String"],
    #       disabled: false,
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.termination.cps_limit #=> Integer
    #   resp.termination.default_phone_number #=> String
    #   resp.termination.calling_regions #=> Array
    #   resp.termination.calling_regions[0] #=> String
    #   resp.termination.cidr_allowed_list #=> Array
    #   resp.termination.cidr_allowed_list[0] #=> String
    #   resp.termination.disabled #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/PutVoiceConnectorTermination AWS API Documentation
    #
    # @overload put_voice_connector_termination(params = {})
    # @param [Hash] params ({})
    def put_voice_connector_termination(params = {}, options = {})
      req = build_request(:put_voice_connector_termination, params)
      req.send_request(options)
    end

    # Adds termination SIP credentials for the specified Amazon Chime Voice
    # Connector.
    #
    # @option params [required, String] :voice_connector_id
    #   The Amazon Chime Voice Connector ID.
    #
    # @option params [Array<Types::Credential>] :credentials
    #   The termination SIP credentials.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_voice_connector_termination_credentials({
    #     voice_connector_id: "NonEmptyString", # required
    #     credentials: [
    #       {
    #         username: "SensitiveString",
    #         password: "SensitiveString",
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/PutVoiceConnectorTerminationCredentials AWS API Documentation
    #
    # @overload put_voice_connector_termination_credentials(params = {})
    # @param [Hash] params ({})
    def put_voice_connector_termination_credentials(params = {}, options = {})
      req = build_request(:put_voice_connector_termination_credentials, params)
      req.send_request(options)
    end

    # Regenerates the security token for a bot.
    #
    # @option params [required, String] :account_id
    #   The Amazon Chime account ID.
    #
    # @option params [required, String] :bot_id
    #   The bot ID.
    #
    # @return [Types::RegenerateSecurityTokenResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RegenerateSecurityTokenResponse#bot #bot} => Types::Bot
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.regenerate_security_token({
    #     account_id: "NonEmptyString", # required
    #     bot_id: "NonEmptyString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.bot.bot_id #=> String
    #   resp.bot.user_id #=> String
    #   resp.bot.display_name #=> String
    #   resp.bot.bot_type #=> String, one of "ChatBot"
    #   resp.bot.disabled #=> Boolean
    #   resp.bot.created_timestamp #=> Time
    #   resp.bot.updated_timestamp #=> Time
    #   resp.bot.bot_email #=> String
    #   resp.bot.security_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/RegenerateSecurityToken AWS API Documentation
    #
    # @overload regenerate_security_token(params = {})
    # @param [Hash] params ({})
    def regenerate_security_token(params = {}, options = {})
      req = build_request(:regenerate_security_token, params)
      req.send_request(options)
    end

    # Resets the personal meeting PIN for the specified user on an Amazon
    # Chime account. Returns the User object with the updated personal
    # meeting PIN.
    #
    # @option params [required, String] :account_id
    #   The Amazon Chime account ID.
    #
    # @option params [required, String] :user_id
    #   The user ID.
    #
    # @return [Types::ResetPersonalPINResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ResetPersonalPINResponse#user #user} => Types::User
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.reset_personal_pin({
    #     account_id: "NonEmptyString", # required
    #     user_id: "NonEmptyString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.user.user_id #=> String
    #   resp.user.account_id #=> String
    #   resp.user.primary_email #=> String
    #   resp.user.primary_provisioned_number #=> String
    #   resp.user.display_name #=> String
    #   resp.user.license_type #=> String, one of "Basic", "Plus", "Pro", "ProTrial"
    #   resp.user.user_registration_status #=> String, one of "Unregistered", "Registered", "Suspended"
    #   resp.user.user_invitation_status #=> String, one of "Pending", "Accepted", "Failed"
    #   resp.user.registered_on #=> Time
    #   resp.user.invited_on #=> Time
    #   resp.user.personal_pin #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/ResetPersonalPIN AWS API Documentation
    #
    # @overload reset_personal_pin(params = {})
    # @param [Hash] params ({})
    def reset_personal_pin(params = {}, options = {})
      req = build_request(:reset_personal_pin, params)
      req.send_request(options)
    end

    # Moves a phone number from the **Deletion queue** back into the phone
    # number **Inventory**.
    #
    # @option params [required, String] :phone_number_id
    #   The phone number.
    #
    # @return [Types::RestorePhoneNumberResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RestorePhoneNumberResponse#phone_number #phone_number} => Types::PhoneNumber
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.restore_phone_number({
    #     phone_number_id: "NonEmptyString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.phone_number.phone_number_id #=> String
    #   resp.phone_number.e164_phone_number #=> String
    #   resp.phone_number.product_type #=> String, one of "BusinessCalling", "VoiceConnector"
    #   resp.phone_number.status #=> String, one of "AcquireInProgress", "AcquireFailed", "Unassigned", "Assigned", "ReleaseInProgress", "DeleteInProgress", "ReleaseFailed", "DeleteFailed"
    #   resp.phone_number.capabilities.inbound_call #=> Boolean
    #   resp.phone_number.capabilities.outbound_call #=> Boolean
    #   resp.phone_number.capabilities.inbound_sms #=> Boolean
    #   resp.phone_number.capabilities.outbound_sms #=> Boolean
    #   resp.phone_number.capabilities.inbound_mms #=> Boolean
    #   resp.phone_number.capabilities.outbound_mms #=> Boolean
    #   resp.phone_number.associations #=> Array
    #   resp.phone_number.associations[0].value #=> String
    #   resp.phone_number.associations[0].name #=> String, one of "AccountId", "UserId", "VoiceConnectorId"
    #   resp.phone_number.associations[0].associated_timestamp #=> Time
    #   resp.phone_number.created_timestamp #=> Time
    #   resp.phone_number.updated_timestamp #=> Time
    #   resp.phone_number.deletion_timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/RestorePhoneNumber AWS API Documentation
    #
    # @overload restore_phone_number(params = {})
    # @param [Hash] params ({})
    def restore_phone_number(params = {}, options = {})
      req = build_request(:restore_phone_number, params)
      req.send_request(options)
    end

    # Searches phone numbers that can be ordered.
    #
    # @option params [String] :area_code
    #   The area code used to filter results.
    #
    # @option params [String] :city
    #   The city used to filter results.
    #
    # @option params [String] :country
    #   The country used to filter results.
    #
    # @option params [String] :state
    #   The state used to filter results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call.
    #
    # @option params [String] :next_token
    #   The token to use to retrieve the next page of results.
    #
    # @return [Types::SearchAvailablePhoneNumbersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SearchAvailablePhoneNumbersResponse#e164_phone_numbers #e164_phone_numbers} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_available_phone_numbers({
    #     area_code: "String",
    #     city: "String",
    #     country: "String",
    #     state: "String",
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.e164_phone_numbers #=> Array
    #   resp.e164_phone_numbers[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/SearchAvailablePhoneNumbers AWS API Documentation
    #
    # @overload search_available_phone_numbers(params = {})
    # @param [Hash] params ({})
    def search_available_phone_numbers(params = {}, options = {})
      req = build_request(:search_available_phone_numbers, params)
      req.send_request(options)
    end

    # Updates account details for the specified Amazon Chime account.
    # Currently, only account name updates are supported for this action.
    #
    # @option params [required, String] :account_id
    #   The Amazon Chime account ID.
    #
    # @option params [String] :name
    #   The new name for the specified Amazon Chime account.
    #
    # @return [Types::UpdateAccountResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateAccountResponse#account #account} => Types::Account
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_account({
    #     account_id: "NonEmptyString", # required
    #     name: "AccountName",
    #   })
    #
    # @example Response structure
    #
    #   resp.account.aws_account_id #=> String
    #   resp.account.account_id #=> String
    #   resp.account.name #=> String
    #   resp.account.account_type #=> String, one of "Team", "EnterpriseDirectory", "EnterpriseLWA", "EnterpriseOIDC"
    #   resp.account.created_timestamp #=> Time
    #   resp.account.default_license #=> String, one of "Basic", "Plus", "Pro", "ProTrial"
    #   resp.account.supported_licenses #=> Array
    #   resp.account.supported_licenses[0] #=> String, one of "Basic", "Plus", "Pro", "ProTrial"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/UpdateAccount AWS API Documentation
    #
    # @overload update_account(params = {})
    # @param [Hash] params ({})
    def update_account(params = {}, options = {})
      req = build_request(:update_account, params)
      req.send_request(options)
    end

    # Updates the settings for the specified Amazon Chime account. You can
    # update settings for remote control of shared screens, or for the
    # dial-out option. For more information about these settings, see [Use
    # the Policies Page][1] in the *Amazon Chime Administration Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/chime/latest/ag/policies.html
    #
    # @option params [required, String] :account_id
    #   The Amazon Chime account ID.
    #
    # @option params [required, Types::AccountSettings] :account_settings
    #   The Amazon Chime account settings to update.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_account_settings({
    #     account_id: "NonEmptyString", # required
    #     account_settings: { # required
    #       disable_remote_control: false,
    #       enable_dial_out: false,
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/UpdateAccountSettings AWS API Documentation
    #
    # @overload update_account_settings(params = {})
    # @param [Hash] params ({})
    def update_account_settings(params = {}, options = {})
      req = build_request(:update_account_settings, params)
      req.send_request(options)
    end

    # Updates the status of the specified bot, such as starting or stopping
    # the bot from running in your Amazon Chime Enterprise account.
    #
    # @option params [required, String] :account_id
    #   The Amazon Chime account ID.
    #
    # @option params [required, String] :bot_id
    #   The bot ID.
    #
    # @option params [Boolean] :disabled
    #   When true, stops the specified bot from running in your account.
    #
    # @return [Types::UpdateBotResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateBotResponse#bot #bot} => Types::Bot
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_bot({
    #     account_id: "NonEmptyString", # required
    #     bot_id: "NonEmptyString", # required
    #     disabled: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.bot.bot_id #=> String
    #   resp.bot.user_id #=> String
    #   resp.bot.display_name #=> String
    #   resp.bot.bot_type #=> String, one of "ChatBot"
    #   resp.bot.disabled #=> Boolean
    #   resp.bot.created_timestamp #=> Time
    #   resp.bot.updated_timestamp #=> Time
    #   resp.bot.bot_email #=> String
    #   resp.bot.security_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/UpdateBot AWS API Documentation
    #
    # @overload update_bot(params = {})
    # @param [Hash] params ({})
    def update_bot(params = {}, options = {})
      req = build_request(:update_bot, params)
      req.send_request(options)
    end

    # Updates global settings for the administrator's AWS account, such as
    # Amazon Chime Business Calling and Amazon Chime Voice Connector
    # settings.
    #
    # @option params [required, Types::BusinessCallingSettings] :business_calling
    #   The Amazon Chime Business Calling settings.
    #
    # @option params [required, Types::VoiceConnectorSettings] :voice_connector
    #   The Amazon Chime Voice Connector settings.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_global_settings({
    #     business_calling: { # required
    #       cdr_bucket: "String",
    #     },
    #     voice_connector: { # required
    #       cdr_bucket: "String",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/UpdateGlobalSettings AWS API Documentation
    #
    # @overload update_global_settings(params = {})
    # @param [Hash] params ({})
    def update_global_settings(params = {}, options = {})
      req = build_request(:update_global_settings, params)
      req.send_request(options)
    end

    # Updates phone number details, such as product type, for the specified
    # phone number ID.
    #
    # @option params [required, String] :phone_number_id
    #   The phone number ID.
    #
    # @option params [String] :product_type
    #   The product type.
    #
    # @return [Types::UpdatePhoneNumberResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdatePhoneNumberResponse#phone_number #phone_number} => Types::PhoneNumber
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_phone_number({
    #     phone_number_id: "String", # required
    #     product_type: "BusinessCalling", # accepts BusinessCalling, VoiceConnector
    #   })
    #
    # @example Response structure
    #
    #   resp.phone_number.phone_number_id #=> String
    #   resp.phone_number.e164_phone_number #=> String
    #   resp.phone_number.product_type #=> String, one of "BusinessCalling", "VoiceConnector"
    #   resp.phone_number.status #=> String, one of "AcquireInProgress", "AcquireFailed", "Unassigned", "Assigned", "ReleaseInProgress", "DeleteInProgress", "ReleaseFailed", "DeleteFailed"
    #   resp.phone_number.capabilities.inbound_call #=> Boolean
    #   resp.phone_number.capabilities.outbound_call #=> Boolean
    #   resp.phone_number.capabilities.inbound_sms #=> Boolean
    #   resp.phone_number.capabilities.outbound_sms #=> Boolean
    #   resp.phone_number.capabilities.inbound_mms #=> Boolean
    #   resp.phone_number.capabilities.outbound_mms #=> Boolean
    #   resp.phone_number.associations #=> Array
    #   resp.phone_number.associations[0].value #=> String
    #   resp.phone_number.associations[0].name #=> String, one of "AccountId", "UserId", "VoiceConnectorId"
    #   resp.phone_number.associations[0].associated_timestamp #=> Time
    #   resp.phone_number.created_timestamp #=> Time
    #   resp.phone_number.updated_timestamp #=> Time
    #   resp.phone_number.deletion_timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/UpdatePhoneNumber AWS API Documentation
    #
    # @overload update_phone_number(params = {})
    # @param [Hash] params ({})
    def update_phone_number(params = {}, options = {})
      req = build_request(:update_phone_number, params)
      req.send_request(options)
    end

    # Updates user details for a specified user ID. Currently, only
    # `LicenseType` updates are supported for this action.
    #
    # @option params [required, String] :account_id
    #   The Amazon Chime account ID.
    #
    # @option params [required, String] :user_id
    #   The user ID.
    #
    # @option params [String] :license_type
    #   The user license type to update. This must be a supported license type
    #   for the Amazon Chime account that the user belongs to.
    #
    # @return [Types::UpdateUserResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateUserResponse#user #user} => Types::User
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_user({
    #     account_id: "NonEmptyString", # required
    #     user_id: "NonEmptyString", # required
    #     license_type: "Basic", # accepts Basic, Plus, Pro, ProTrial
    #   })
    #
    # @example Response structure
    #
    #   resp.user.user_id #=> String
    #   resp.user.account_id #=> String
    #   resp.user.primary_email #=> String
    #   resp.user.primary_provisioned_number #=> String
    #   resp.user.display_name #=> String
    #   resp.user.license_type #=> String, one of "Basic", "Plus", "Pro", "ProTrial"
    #   resp.user.user_registration_status #=> String, one of "Unregistered", "Registered", "Suspended"
    #   resp.user.user_invitation_status #=> String, one of "Pending", "Accepted", "Failed"
    #   resp.user.registered_on #=> Time
    #   resp.user.invited_on #=> Time
    #   resp.user.personal_pin #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/UpdateUser AWS API Documentation
    #
    # @overload update_user(params = {})
    # @param [Hash] params ({})
    def update_user(params = {}, options = {})
      req = build_request(:update_user, params)
      req.send_request(options)
    end

    # Updates the settings for the specified user, such as phone number
    # settings.
    #
    # @option params [required, String] :account_id
    #   The Amazon Chime account ID.
    #
    # @option params [required, String] :user_id
    #   The user ID.
    #
    # @option params [required, Types::UserSettings] :user_settings
    #   The user settings to update.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_user_settings({
    #     account_id: "String", # required
    #     user_id: "String", # required
    #     user_settings: { # required
    #       telephony: { # required
    #         inbound_calling: false, # required
    #         outbound_calling: false, # required
    #         sms: false, # required
    #       },
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/UpdateUserSettings AWS API Documentation
    #
    # @overload update_user_settings(params = {})
    # @param [Hash] params ({})
    def update_user_settings(params = {}, options = {})
      req = build_request(:update_user_settings, params)
      req.send_request(options)
    end

    # Updates details for the specified Amazon Chime Voice Connector.
    #
    # @option params [required, String] :voice_connector_id
    #   The Amazon Chime Voice Connector ID.
    #
    # @option params [required, String] :name
    #   The name of the Amazon Chime Voice Connector.
    #
    # @option params [required, Boolean] :require_encryption
    #   When enabled, requires encryption for the Amazon Chime Voice
    #   Connector.
    #
    # @return [Types::UpdateVoiceConnectorResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateVoiceConnectorResponse#voice_connector #voice_connector} => Types::VoiceConnector
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_voice_connector({
    #     voice_connector_id: "NonEmptyString", # required
    #     name: "VoiceConnectorName", # required
    #     require_encryption: false, # required
    #   })
    #
    # @example Response structure
    #
    #   resp.voice_connector.voice_connector_id #=> String
    #   resp.voice_connector.name #=> String
    #   resp.voice_connector.outbound_host_name #=> String
    #   resp.voice_connector.require_encryption #=> Boolean
    #   resp.voice_connector.created_timestamp #=> Time
    #   resp.voice_connector.updated_timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/UpdateVoiceConnector AWS API Documentation
    #
    # @overload update_voice_connector(params = {})
    # @param [Hash] params ({})
    def update_voice_connector(params = {}, options = {})
      req = build_request(:update_voice_connector, params)
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
      context[:gem_name] = 'aws-sdk-chime'
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
