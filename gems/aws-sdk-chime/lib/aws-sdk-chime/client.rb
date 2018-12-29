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
    def initialize(*args)
      super
    end

    # @!group API Operations

    # Suspends up to 50 users from a `Team` or `EnterpriseLWA` Amazon Chime
    # account. For more information about different account types, see
    # [Managing Your Amazon Chime Accounts][1] in the *Amazon Chime
    # Administration Guide*.
    #
    # Users suspended from a `Team` account are dissociated from the
    # account, but they can continue to use Amazon Chime as free users. To
    # remove the suspension from suspended `Team` account users, invite them
    # to the `Team` account again. You can use the InviteUsers action to do
    # so.
    #
    # Users suspended from an `EnterpriseLWA` account are immediately signed
    # out of Amazon Chime and are no longer able to sign in. To remove the
    # suspension from suspended `EnterpriseLWA` account users, use the
    # BatchUnsuspendUser action.
    #
    # To sign out users without suspending them, use the LogoutUser action.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/chime/latest/ag/manage-chime-account.html
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
    # [1]: http://docs.aws.amazon.com/chime/latest/ag/manage-chime-account.html
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
    # [1]: http://docs.aws.amazon.com/chime/latest/ag/manage-chime-account.html
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
    # [1]: http://docs.aws.amazon.com/chime/latest/ag/policies.html
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
    # [1]: http://docs.aws.amazon.com/chime/latest/ag/policies.html
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
      context[:gem_version] = '1.2.0'
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
