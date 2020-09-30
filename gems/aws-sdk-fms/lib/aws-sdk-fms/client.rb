# frozen_string_literal: true

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
require 'aws-sdk-core/plugins/http_checksum.rb'
require 'aws-sdk-core/plugins/signature_v4.rb'
require 'aws-sdk-core/plugins/protocols/json_rpc.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:fms)

module Aws::FMS
  # An API client for FMS.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::FMS::Client.new(
  #       region: region_name,
  #       credentials: credentials,
  #       # ...
  #     )
  #
  # For details on configuring region and credentials see
  # the [developer guide](/sdk-for-ruby/v3/developer-guide/setup-config.html).
  #
  # See {#initialize} for a full list of supported configuration options.
  class Client < Seahorse::Client::Base

    include Aws::ClientStubs

    @identifier = :fms

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
    add_plugin(Aws::Plugins::HttpChecksum)
    add_plugin(Aws::Plugins::SignatureV4)
    add_plugin(Aws::Plugins::Protocols::JsonRpc)

    # @overload initialize(options)
    #   @param [Hash] options
    #   @option options [required, Aws::CredentialProvider] :credentials
    #     Your AWS credentials. This can be an instance of any one of the
    #     following classes:
    #
    #     * `Aws::Credentials` - Used for configuring static, non-refreshing
    #       credentials.
    #
    #     * `Aws::SharedCredentials` - Used for loading static credentials from a
    #       shared file, such as `~/.aws/config`.
    #
    #     * `Aws::AssumeRoleCredentials` - Used when you need to assume a role.
    #
    #     * `Aws::AssumeRoleWebIdentityCredentials` - Used when you need to
    #       assume a role after providing credentials via the web.
    #
    #     * `Aws::SSOCredentials` - Used for loading credentials from AWS SSO using an
    #       access token generated from `aws login`.
    #
    #     * `Aws::ProcessCredentials` - Used for loading credentials from a
    #       process that outputs to stdout.
    #
    #     * `Aws::InstanceProfileCredentials` - Used for loading credentials
    #       from an EC2 IMDS on an EC2 instance.
    #
    #     * `Aws::ECSCredentials` - Used for loading credentials from
    #       instances running in ECS.
    #
    #     * `Aws::CognitoIdentityCredentials` - Used for loading credentials
    #       from the Cognito Identity service.
    #
    #     When `:credentials` are not configured directly, the following
    #     locations will be searched for credentials:
    #
    #     * `Aws.config[:credentials]`
    #     * The `:access_key_id`, `:secret_access_key`, and `:session_token` options.
    #     * ENV['AWS_ACCESS_KEY_ID'], ENV['AWS_SECRET_ACCESS_KEY']
    #     * `~/.aws/credentials`
    #     * `~/.aws/config`
    #     * EC2/ECS IMDS instance profile - When used by default, the timeouts
    #       are very aggressive. Construct and pass an instance of
    #       `Aws::InstanceProfileCredentails` or `Aws::ECSCredentials` to
    #       enable retries and extended timeouts.
    #
    #   @option options [required, String] :region
    #     The AWS region to connect to.  The configured `:region` is
    #     used to determine the service `:endpoint`. When not passed,
    #     a default `:region` is searched for in the following locations:
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
    #   @option options [Boolean] :adaptive_retry_wait_to_fill (true)
    #     Used only in `adaptive` retry mode.  When true, the request will sleep
    #     until there is sufficent client side capacity to retry the request.
    #     When false, the request will raise a `RetryCapacityNotAvailableError` and will
    #     not retry instead of sleeping.
    #
    #   @option options [Boolean] :client_side_monitoring (false)
    #     When `true`, client-side metrics will be collected for all API requests from
    #     this client.
    #
    #   @option options [String] :client_side_monitoring_client_id ("")
    #     Allows you to provide an identifier for this client which will be attached to
    #     all generated client side metrics. Defaults to an empty string.
    #
    #   @option options [String] :client_side_monitoring_host ("127.0.0.1")
    #     Allows you to specify the DNS hostname or IPv4 or IPv6 address that the client
    #     side monitoring agent is running on, where client metrics will be published via UDP.
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
    #   @option options [Boolean] :correct_clock_skew (true)
    #     Used only in `standard` and adaptive retry modes. Specifies whether to apply
    #     a clock skew correction and retry requests with skewed client clocks.
    #
    #   @option options [Boolean] :disable_host_prefix_injection (false)
    #     Set to true to disable SDK automatically adding host prefix
    #     to default service endpoint when available.
    #
    #   @option options [String] :endpoint
    #     The client endpoint is normally constructed from the `:region`
    #     option. You should only configure an `:endpoint` when connecting
    #     to test or custom endpoints. This should be a valid HTTP(S) URI.
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
    #     When set to `true`, endpoint discovery will be enabled for operations when available.
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
    #   @option options [Integer] :max_attempts (3)
    #     An integer representing the maximum number attempts that will be made for
    #     a single request, including the initial attempt.  For example,
    #     setting this value to 5 will result in a request being retried up to
    #     4 times. Used in `standard` and `adaptive` retry modes.
    #
    #   @option options [String] :profile ("default")
    #     Used when loading credentials from the shared credentials file
    #     at HOME/.aws/credentials.  When not specified, 'default' is used.
    #
    #   @option options [Proc] :retry_backoff
    #     A proc or lambda used for backoff. Defaults to 2**retries * retry_base_delay.
    #     This option is only used in the `legacy` retry mode.
    #
    #   @option options [Float] :retry_base_delay (0.3)
    #     The base delay in seconds used by the default backoff function. This option
    #     is only used in the `legacy` retry mode.
    #
    #   @option options [Symbol] :retry_jitter (:none)
    #     A delay randomiser function used by the default backoff function.
    #     Some predefined functions can be referenced by name - :none, :equal, :full,
    #     otherwise a Proc that takes and returns a number. This option is only used
    #     in the `legacy` retry mode.
    #
    #     @see https://www.awsarchitectureblog.com/2015/03/backoff.html
    #
    #   @option options [Integer] :retry_limit (3)
    #     The maximum number of times to retry failed requests.  Only
    #     ~ 500 level server errors and certain ~ 400 level client errors
    #     are retried.  Generally, these are throttling errors, data
    #     checksum errors, networking errors, timeout errors, auth errors,
    #     endpoint discovery, and errors from expired credentials.
    #     This option is only used in the `legacy` retry mode.
    #
    #   @option options [Integer] :retry_max_delay (0)
    #     The maximum number of seconds to delay between retries (0 for no limit)
    #     used by the default backoff function. This option is only used in the
    #     `legacy` retry mode.
    #
    #   @option options [String] :retry_mode ("legacy")
    #     Specifies which retry algorithm to use. Values are:
    #
    #     * `legacy` - The pre-existing retry behavior.  This is default value if
    #       no retry mode is provided.
    #
    #     * `standard` - A standardized set of retry rules across the AWS SDKs.
    #       This includes support for retry quotas, which limit the number of
    #       unsuccessful retries a client can make.
    #
    #     * `adaptive` - An experimental retry mode that includes all the
    #       functionality of `standard` mode along with automatic client side
    #       throttling.  This is a provisional mode that may change behavior
    #       in the future.
    #
    #
    #   @option options [String] :secret_access_key
    #
    #   @option options [String] :session_token
    #
    #   @option options [Boolean] :simple_json (false)
    #     Disables request parameter conversion, validation, and formatting.
    #     Also disable response data type conversions. This option is useful
    #     when you want to ensure the highest level of performance by
    #     avoiding overhead of walking request parameters and response data
    #     structures.
    #
    #     When `:simple_json` is enabled, the request parameters hash must
    #     be formatted exactly as the DynamoDB API expects.
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
    #     seconds to wait when opening a HTTP session before raising a
    #     `Timeout::Error`.
    #
    #   @option options [Integer] :http_read_timeout (60) The default
    #     number of seconds to wait for response data.  This value can
    #     safely be set per-request on the session.
    #
    #   @option options [Float] :http_idle_timeout (5) The number of
    #     seconds a connection is allowed to sit idle before it is
    #     considered stale.  Stale connections are closed and removed
    #     from the pool before making a request.
    #
    #   @option options [Float] :http_continue_timeout (1) The number of
    #     seconds to wait for a 100-continue response before sending the
    #     request body.  This option has no effect unless the request has
    #     "Expect" header set to "100-continue".  Defaults to `nil` which
    #     disables this behaviour.  This value can safely be set per
    #     request on the session.
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

    # Sets the AWS Firewall Manager administrator account. AWS Firewall
    # Manager must be associated with the master account of your AWS
    # organization or associated with a member account that has the
    # appropriate permissions. If the account ID that you submit is not an
    # AWS Organizations master account, AWS Firewall Manager will set the
    # appropriate permissions for the given member account.
    #
    # The account that you associate with AWS Firewall Manager is called the
    # AWS Firewall Manager administrator account.
    #
    # @option params [required, String] :admin_account
    #   The AWS account ID to associate with AWS Firewall Manager as the AWS
    #   Firewall Manager administrator account. This can be an AWS
    #   Organizations master account or a member account. For more information
    #   about AWS Organizations and master accounts, see [Managing the AWS
    #   Accounts in Your Organization][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_admin_account({
    #     admin_account: "AWSAccountId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/AssociateAdminAccount AWS API Documentation
    #
    # @overload associate_admin_account(params = {})
    # @param [Hash] params ({})
    def associate_admin_account(params = {}, options = {})
      req = build_request(:associate_admin_account, params)
      req.send_request(options)
    end

    # Permanently deletes an AWS Firewall Manager applications list.
    #
    # @option params [required, String] :list_id
    #   The ID of the applications list that you want to delete. You can
    #   retrieve this ID from `PutAppsList`, `ListAppsLists`, and
    #   `GetAppsList`.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_apps_list({
    #     list_id: "ListId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/DeleteAppsList AWS API Documentation
    #
    # @overload delete_apps_list(params = {})
    # @param [Hash] params ({})
    def delete_apps_list(params = {}, options = {})
      req = build_request(:delete_apps_list, params)
      req.send_request(options)
    end

    # Deletes an AWS Firewall Manager association with the IAM role and the
    # Amazon Simple Notification Service (SNS) topic that is used to record
    # AWS Firewall Manager SNS logs.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/DeleteNotificationChannel AWS API Documentation
    #
    # @overload delete_notification_channel(params = {})
    # @param [Hash] params ({})
    def delete_notification_channel(params = {}, options = {})
      req = build_request(:delete_notification_channel, params)
      req.send_request(options)
    end

    # Permanently deletes an AWS Firewall Manager policy.
    #
    # @option params [required, String] :policy_id
    #   The ID of the policy that you want to delete. You can retrieve this ID
    #   from `PutPolicy` and `ListPolicies`.
    #
    # @option params [Boolean] :delete_all_policy_resources
    #   If `True`, the request performs cleanup according to the policy type.
    #
    #   For AWS WAF and Shield Advanced policies, the cleanup does the
    #   following:
    #
    #   * Deletes rule groups created by AWS Firewall Manager
    #
    #   * Removes web ACLs from in-scope resources
    #
    #   * Deletes web ACLs that contain no rules or rule groups
    #
    #   For security group policies, the cleanup does the following for each
    #   security group in the policy:
    #
    #   * Disassociates the security group from in-scope resources
    #
    #   * Deletes the security group if it was created through Firewall
    #     Manager and if it's no longer associated with any resources through
    #     another policy
    #
    #   After the cleanup, in-scope resources are no longer protected by web
    #   ACLs in this policy. Protection of out-of-scope resources remains
    #   unchanged. Scope is determined by tags that you create and accounts
    #   that you associate with the policy. When creating the policy, if you
    #   specify that only resources in specific accounts or with specific tags
    #   are in scope of the policy, those accounts and resources are handled
    #   by the policy. All others are out of scope. If you don't specify tags
    #   or accounts, all resources are in scope.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_policy({
    #     policy_id: "PolicyId", # required
    #     delete_all_policy_resources: false,
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/DeletePolicy AWS API Documentation
    #
    # @overload delete_policy(params = {})
    # @param [Hash] params ({})
    def delete_policy(params = {}, options = {})
      req = build_request(:delete_policy, params)
      req.send_request(options)
    end

    # Permanently deletes an AWS Firewall Manager protocols list.
    #
    # @option params [required, String] :list_id
    #   The ID of the protocols list that you want to delete. You can retrieve
    #   this ID from `PutProtocolsList`, `ListProtocolsLists`, and
    #   `GetProtocolsLost`.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_protocols_list({
    #     list_id: "ListId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/DeleteProtocolsList AWS API Documentation
    #
    # @overload delete_protocols_list(params = {})
    # @param [Hash] params ({})
    def delete_protocols_list(params = {}, options = {})
      req = build_request(:delete_protocols_list, params)
      req.send_request(options)
    end

    # Disassociates the account that has been set as the AWS Firewall
    # Manager administrator account. To set a different account as the
    # administrator account, you must submit an `AssociateAdminAccount`
    # request.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/DisassociateAdminAccount AWS API Documentation
    #
    # @overload disassociate_admin_account(params = {})
    # @param [Hash] params ({})
    def disassociate_admin_account(params = {}, options = {})
      req = build_request(:disassociate_admin_account, params)
      req.send_request(options)
    end

    # Returns the AWS Organizations master account that is associated with
    # AWS Firewall Manager as the AWS Firewall Manager administrator.
    #
    # @return [Types::GetAdminAccountResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAdminAccountResponse#admin_account #admin_account} => String
    #   * {Types::GetAdminAccountResponse#role_status #role_status} => String
    #
    # @example Response structure
    #
    #   resp.admin_account #=> String
    #   resp.role_status #=> String, one of "READY", "CREATING", "PENDING_DELETION", "DELETING", "DELETED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/GetAdminAccount AWS API Documentation
    #
    # @overload get_admin_account(params = {})
    # @param [Hash] params ({})
    def get_admin_account(params = {}, options = {})
      req = build_request(:get_admin_account, params)
      req.send_request(options)
    end

    # Returns information about the specified AWS Firewall Manager
    # applications list.
    #
    # @option params [required, String] :list_id
    #   The ID of the AWS Firewall Manager applications list that you want the
    #   details for.
    #
    # @option params [Boolean] :default_list
    #   Specifies whether the list to retrieve is a default list owned by AWS
    #   Firewall Manager.
    #
    # @return [Types::GetAppsListResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAppsListResponse#apps_list #apps_list} => Types::AppsListData
    #   * {Types::GetAppsListResponse#apps_list_arn #apps_list_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_apps_list({
    #     list_id: "ListId", # required
    #     default_list: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.apps_list.list_id #=> String
    #   resp.apps_list.list_name #=> String
    #   resp.apps_list.list_update_token #=> String
    #   resp.apps_list.create_time #=> Time
    #   resp.apps_list.last_update_time #=> Time
    #   resp.apps_list.apps_list #=> Array
    #   resp.apps_list.apps_list[0].app_name #=> String
    #   resp.apps_list.apps_list[0].protocol #=> String
    #   resp.apps_list.apps_list[0].port #=> Integer
    #   resp.apps_list.previous_apps_list #=> Hash
    #   resp.apps_list.previous_apps_list["PreviousListVersion"] #=> Array
    #   resp.apps_list.previous_apps_list["PreviousListVersion"][0].app_name #=> String
    #   resp.apps_list.previous_apps_list["PreviousListVersion"][0].protocol #=> String
    #   resp.apps_list.previous_apps_list["PreviousListVersion"][0].port #=> Integer
    #   resp.apps_list_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/GetAppsList AWS API Documentation
    #
    # @overload get_apps_list(params = {})
    # @param [Hash] params ({})
    def get_apps_list(params = {}, options = {})
      req = build_request(:get_apps_list, params)
      req.send_request(options)
    end

    # Returns detailed compliance information about the specified member
    # account. Details include resources that are in and out of compliance
    # with the specified policy. Resources are considered noncompliant for
    # AWS WAF and Shield Advanced policies if the specified policy has not
    # been applied to them. Resources are considered noncompliant for
    # security group policies if they are in scope of the policy, they
    # violate one or more of the policy rules, and remediation is disabled
    # or not possible.
    #
    # @option params [required, String] :policy_id
    #   The ID of the policy that you want to get the details for. `PolicyId`
    #   is returned by `PutPolicy` and by `ListPolicies`.
    #
    # @option params [required, String] :member_account
    #   The AWS account that owns the resources that you want to get the
    #   details for.
    #
    # @return [Types::GetComplianceDetailResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetComplianceDetailResponse#policy_compliance_detail #policy_compliance_detail} => Types::PolicyComplianceDetail
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_compliance_detail({
    #     policy_id: "PolicyId", # required
    #     member_account: "AWSAccountId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.policy_compliance_detail.policy_owner #=> String
    #   resp.policy_compliance_detail.policy_id #=> String
    #   resp.policy_compliance_detail.member_account #=> String
    #   resp.policy_compliance_detail.violators #=> Array
    #   resp.policy_compliance_detail.violators[0].resource_id #=> String
    #   resp.policy_compliance_detail.violators[0].violation_reason #=> String, one of "WEB_ACL_MISSING_RULE_GROUP", "RESOURCE_MISSING_WEB_ACL", "RESOURCE_INCORRECT_WEB_ACL", "RESOURCE_MISSING_SHIELD_PROTECTION", "RESOURCE_MISSING_WEB_ACL_OR_SHIELD_PROTECTION", "RESOURCE_MISSING_SECURITY_GROUP", "RESOURCE_VIOLATES_AUDIT_SECURITY_GROUP", "SECURITY_GROUP_UNUSED", "SECURITY_GROUP_REDUNDANT"
    #   resp.policy_compliance_detail.violators[0].resource_type #=> String
    #   resp.policy_compliance_detail.evaluation_limit_exceeded #=> Boolean
    #   resp.policy_compliance_detail.expired_at #=> Time
    #   resp.policy_compliance_detail.issue_info_map #=> Hash
    #   resp.policy_compliance_detail.issue_info_map["DependentServiceName"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/GetComplianceDetail AWS API Documentation
    #
    # @overload get_compliance_detail(params = {})
    # @param [Hash] params ({})
    def get_compliance_detail(params = {}, options = {})
      req = build_request(:get_compliance_detail, params)
      req.send_request(options)
    end

    # Information about the Amazon Simple Notification Service (SNS) topic
    # that is used to record AWS Firewall Manager SNS logs.
    #
    # @return [Types::GetNotificationChannelResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetNotificationChannelResponse#sns_topic_arn #sns_topic_arn} => String
    #   * {Types::GetNotificationChannelResponse#sns_role_name #sns_role_name} => String
    #
    # @example Response structure
    #
    #   resp.sns_topic_arn #=> String
    #   resp.sns_role_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/GetNotificationChannel AWS API Documentation
    #
    # @overload get_notification_channel(params = {})
    # @param [Hash] params ({})
    def get_notification_channel(params = {}, options = {})
      req = build_request(:get_notification_channel, params)
      req.send_request(options)
    end

    # Returns information about the specified AWS Firewall Manager policy.
    #
    # @option params [required, String] :policy_id
    #   The ID of the AWS Firewall Manager policy that you want the details
    #   for.
    #
    # @return [Types::GetPolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetPolicyResponse#policy #policy} => Types::Policy
    #   * {Types::GetPolicyResponse#policy_arn #policy_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_policy({
    #     policy_id: "PolicyId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.policy.policy_id #=> String
    #   resp.policy.policy_name #=> String
    #   resp.policy.policy_update_token #=> String
    #   resp.policy.security_service_policy_data.type #=> String, one of "WAF", "WAFV2", "SHIELD_ADVANCED", "SECURITY_GROUPS_COMMON", "SECURITY_GROUPS_CONTENT_AUDIT", "SECURITY_GROUPS_USAGE_AUDIT"
    #   resp.policy.security_service_policy_data.managed_service_data #=> String
    #   resp.policy.resource_type #=> String
    #   resp.policy.resource_type_list #=> Array
    #   resp.policy.resource_type_list[0] #=> String
    #   resp.policy.resource_tags #=> Array
    #   resp.policy.resource_tags[0].key #=> String
    #   resp.policy.resource_tags[0].value #=> String
    #   resp.policy.exclude_resource_tags #=> Boolean
    #   resp.policy.remediation_enabled #=> Boolean
    #   resp.policy.include_map #=> Hash
    #   resp.policy.include_map["CustomerPolicyScopeIdType"] #=> Array
    #   resp.policy.include_map["CustomerPolicyScopeIdType"][0] #=> String
    #   resp.policy.exclude_map #=> Hash
    #   resp.policy.exclude_map["CustomerPolicyScopeIdType"] #=> Array
    #   resp.policy.exclude_map["CustomerPolicyScopeIdType"][0] #=> String
    #   resp.policy_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/GetPolicy AWS API Documentation
    #
    # @overload get_policy(params = {})
    # @param [Hash] params ({})
    def get_policy(params = {}, options = {})
      req = build_request(:get_policy, params)
      req.send_request(options)
    end

    # If you created a Shield Advanced policy, returns policy-level attack
    # summary information in the event of a potential DDoS attack. Other
    # policy types are currently unsupported.
    #
    # @option params [required, String] :policy_id
    #   The ID of the policy for which you want to get the attack information.
    #
    # @option params [String] :member_account_id
    #   The AWS account that is in scope of the policy that you want to get
    #   the details for.
    #
    # @option params [Time,DateTime,Date,Integer,String] :start_time
    #   The start of the time period to query for the attacks. This is a
    #   `timestamp` type. The request syntax listing indicates a `number` type
    #   because the default used by AWS Firewall Manager is Unix time in
    #   seconds. However, any valid `timestamp` format is allowed.
    #
    # @option params [Time,DateTime,Date,Integer,String] :end_time
    #   The end of the time period to query for the attacks. This is a
    #   `timestamp` type. The request syntax listing indicates a `number` type
    #   because the default used by AWS Firewall Manager is Unix time in
    #   seconds. However, any valid `timestamp` format is allowed.
    #
    # @option params [String] :next_token
    #   If you specify a value for `MaxResults` and you have more objects than
    #   the number that you specify for `MaxResults`, AWS Firewall Manager
    #   returns a `NextToken` value in the response, which you can use to
    #   retrieve another group of objects. For the second and subsequent
    #   `GetProtectionStatus` requests, specify the value of `NextToken` from
    #   the previous response to get information about another batch of
    #   objects.
    #
    # @option params [Integer] :max_results
    #   Specifies the number of objects that you want AWS Firewall Manager to
    #   return for this request. If you have more objects than the number that
    #   you specify for `MaxResults`, the response includes a `NextToken`
    #   value that you can use to get another batch of objects.
    #
    # @return [Types::GetProtectionStatusResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetProtectionStatusResponse#admin_account_id #admin_account_id} => String
    #   * {Types::GetProtectionStatusResponse#service_type #service_type} => String
    #   * {Types::GetProtectionStatusResponse#data #data} => String
    #   * {Types::GetProtectionStatusResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_protection_status({
    #     policy_id: "PolicyId", # required
    #     member_account_id: "AWSAccountId",
    #     start_time: Time.now,
    #     end_time: Time.now,
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.admin_account_id #=> String
    #   resp.service_type #=> String, one of "WAF", "WAFV2", "SHIELD_ADVANCED", "SECURITY_GROUPS_COMMON", "SECURITY_GROUPS_CONTENT_AUDIT", "SECURITY_GROUPS_USAGE_AUDIT"
    #   resp.data #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/GetProtectionStatus AWS API Documentation
    #
    # @overload get_protection_status(params = {})
    # @param [Hash] params ({})
    def get_protection_status(params = {}, options = {})
      req = build_request(:get_protection_status, params)
      req.send_request(options)
    end

    # Returns information about the specified AWS Firewall Manager protocols
    # list.
    #
    # @option params [required, String] :list_id
    #   The ID of the AWS Firewall Manager protocols list that you want the
    #   details for.
    #
    # @option params [Boolean] :default_list
    #   Specifies whether the list to retrieve is a default list owned by AWS
    #   Firewall Manager.
    #
    # @return [Types::GetProtocolsListResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetProtocolsListResponse#protocols_list #protocols_list} => Types::ProtocolsListData
    #   * {Types::GetProtocolsListResponse#protocols_list_arn #protocols_list_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_protocols_list({
    #     list_id: "ListId", # required
    #     default_list: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.protocols_list.list_id #=> String
    #   resp.protocols_list.list_name #=> String
    #   resp.protocols_list.list_update_token #=> String
    #   resp.protocols_list.create_time #=> Time
    #   resp.protocols_list.last_update_time #=> Time
    #   resp.protocols_list.protocols_list #=> Array
    #   resp.protocols_list.protocols_list[0] #=> String
    #   resp.protocols_list.previous_protocols_list #=> Hash
    #   resp.protocols_list.previous_protocols_list["PreviousListVersion"] #=> Array
    #   resp.protocols_list.previous_protocols_list["PreviousListVersion"][0] #=> String
    #   resp.protocols_list_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/GetProtocolsList AWS API Documentation
    #
    # @overload get_protocols_list(params = {})
    # @param [Hash] params ({})
    def get_protocols_list(params = {}, options = {})
      req = build_request(:get_protocols_list, params)
      req.send_request(options)
    end

    # Retrieves violations for a resource based on the specified AWS
    # Firewall Manager policy and AWS account.
    #
    # @option params [required, String] :policy_id
    #   The ID of the AWS Firewall Manager policy that you want the details
    #   for. This currently only supports security group content audit
    #   policies.
    #
    # @option params [required, String] :member_account
    #   The AWS account ID that you want the details for.
    #
    # @option params [required, String] :resource_id
    #   The ID of the resource that has violations.
    #
    # @option params [required, String] :resource_type
    #   The resource type. This is in the format shown in the [AWS Resource
    #   Types Reference][1]. Supported resource types are:
    #   `AWS::EC2::Instance`, `AWS::EC2::NetworkInterface`, or
    #   `AWS::EC2::SecurityGroup`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html
    #
    # @return [Types::GetViolationDetailsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetViolationDetailsResponse#violation_detail #violation_detail} => Types::ViolationDetail
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_violation_details({
    #     policy_id: "PolicyId", # required
    #     member_account: "AWSAccountId", # required
    #     resource_id: "ResourceId", # required
    #     resource_type: "ResourceType", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.violation_detail.policy_id #=> String
    #   resp.violation_detail.member_account #=> String
    #   resp.violation_detail.resource_id #=> String
    #   resp.violation_detail.resource_type #=> String
    #   resp.violation_detail.resource_violations #=> Array
    #   resp.violation_detail.resource_violations[0].aws_vpc_security_group_violation.violation_target #=> String
    #   resp.violation_detail.resource_violations[0].aws_vpc_security_group_violation.violation_target_description #=> String
    #   resp.violation_detail.resource_violations[0].aws_vpc_security_group_violation.partial_matches #=> Array
    #   resp.violation_detail.resource_violations[0].aws_vpc_security_group_violation.partial_matches[0].reference #=> String
    #   resp.violation_detail.resource_violations[0].aws_vpc_security_group_violation.partial_matches[0].target_violation_reasons #=> Array
    #   resp.violation_detail.resource_violations[0].aws_vpc_security_group_violation.partial_matches[0].target_violation_reasons[0] #=> String
    #   resp.violation_detail.resource_violations[0].aws_vpc_security_group_violation.possible_security_group_remediation_actions #=> Array
    #   resp.violation_detail.resource_violations[0].aws_vpc_security_group_violation.possible_security_group_remediation_actions[0].remediation_action_type #=> String, one of "REMOVE", "MODIFY"
    #   resp.violation_detail.resource_violations[0].aws_vpc_security_group_violation.possible_security_group_remediation_actions[0].description #=> String
    #   resp.violation_detail.resource_violations[0].aws_vpc_security_group_violation.possible_security_group_remediation_actions[0].remediation_result.ipv4_range #=> String
    #   resp.violation_detail.resource_violations[0].aws_vpc_security_group_violation.possible_security_group_remediation_actions[0].remediation_result.ipv6_range #=> String
    #   resp.violation_detail.resource_violations[0].aws_vpc_security_group_violation.possible_security_group_remediation_actions[0].remediation_result.prefix_list_id #=> String
    #   resp.violation_detail.resource_violations[0].aws_vpc_security_group_violation.possible_security_group_remediation_actions[0].remediation_result.protocol #=> String
    #   resp.violation_detail.resource_violations[0].aws_vpc_security_group_violation.possible_security_group_remediation_actions[0].remediation_result.from_port #=> Integer
    #   resp.violation_detail.resource_violations[0].aws_vpc_security_group_violation.possible_security_group_remediation_actions[0].remediation_result.to_port #=> Integer
    #   resp.violation_detail.resource_violations[0].aws_vpc_security_group_violation.possible_security_group_remediation_actions[0].is_default_action #=> Boolean
    #   resp.violation_detail.resource_violations[0].aws_ec2_network_interface_violation.violation_target #=> String
    #   resp.violation_detail.resource_violations[0].aws_ec2_network_interface_violation.violating_security_groups #=> Array
    #   resp.violation_detail.resource_violations[0].aws_ec2_network_interface_violation.violating_security_groups[0] #=> String
    #   resp.violation_detail.resource_violations[0].aws_ec2_instance_violation.violation_target #=> String
    #   resp.violation_detail.resource_violations[0].aws_ec2_instance_violation.aws_ec2_network_interface_violations #=> Array
    #   resp.violation_detail.resource_violations[0].aws_ec2_instance_violation.aws_ec2_network_interface_violations[0].violation_target #=> String
    #   resp.violation_detail.resource_violations[0].aws_ec2_instance_violation.aws_ec2_network_interface_violations[0].violating_security_groups #=> Array
    #   resp.violation_detail.resource_violations[0].aws_ec2_instance_violation.aws_ec2_network_interface_violations[0].violating_security_groups[0] #=> String
    #   resp.violation_detail.resource_tags #=> Array
    #   resp.violation_detail.resource_tags[0].key #=> String
    #   resp.violation_detail.resource_tags[0].value #=> String
    #   resp.violation_detail.resource_description #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/GetViolationDetails AWS API Documentation
    #
    # @overload get_violation_details(params = {})
    # @param [Hash] params ({})
    def get_violation_details(params = {}, options = {})
      req = build_request(:get_violation_details, params)
      req.send_request(options)
    end

    # Returns an array of `AppsListDataSummary` objects.
    #
    # @option params [Boolean] :default_lists
    #   Specifies whether the lists to retrieve are default lists owned by AWS
    #   Firewall Manager.
    #
    # @option params [String] :next_token
    #   If you specify a value for `MaxResults` in your list request, and you
    #   have more objects than the maximum, AWS Firewall Manager returns this
    #   token in the response. For all but the first request, you provide the
    #   token returned by the prior request in the request parameters, to
    #   retrieve the next batch of objects.
    #
    # @option params [required, Integer] :max_results
    #   The maximum number of objects that you want AWS Firewall Manager to
    #   return for this request. If more objects are available, in the
    #   response, AWS Firewall Manager provides a `NextToken` value that you
    #   can use in a subsequent call to get the next batch of objects.
    #
    #   If you don't specify this, AWS Firewall Manager returns all available
    #   objects.
    #
    # @return [Types::ListAppsListsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAppsListsResponse#apps_lists #apps_lists} => Array&lt;Types::AppsListDataSummary&gt;
    #   * {Types::ListAppsListsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_apps_lists({
    #     default_lists: false,
    #     next_token: "PaginationToken",
    #     max_results: 1, # required
    #   })
    #
    # @example Response structure
    #
    #   resp.apps_lists #=> Array
    #   resp.apps_lists[0].list_arn #=> String
    #   resp.apps_lists[0].list_id #=> String
    #   resp.apps_lists[0].list_name #=> String
    #   resp.apps_lists[0].apps_list #=> Array
    #   resp.apps_lists[0].apps_list[0].app_name #=> String
    #   resp.apps_lists[0].apps_list[0].protocol #=> String
    #   resp.apps_lists[0].apps_list[0].port #=> Integer
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/ListAppsLists AWS API Documentation
    #
    # @overload list_apps_lists(params = {})
    # @param [Hash] params ({})
    def list_apps_lists(params = {}, options = {})
      req = build_request(:list_apps_lists, params)
      req.send_request(options)
    end

    # Returns an array of `PolicyComplianceStatus` objects. Use
    # `PolicyComplianceStatus` to get a summary of which member accounts are
    # protected by the specified policy.
    #
    # @option params [required, String] :policy_id
    #   The ID of the AWS Firewall Manager policy that you want the details
    #   for.
    #
    # @option params [String] :next_token
    #   If you specify a value for `MaxResults` and you have more
    #   `PolicyComplianceStatus` objects than the number that you specify for
    #   `MaxResults`, AWS Firewall Manager returns a `NextToken` value in the
    #   response that allows you to list another group of
    #   `PolicyComplianceStatus` objects. For the second and subsequent
    #   `ListComplianceStatus` requests, specify the value of `NextToken` from
    #   the previous response to get information about another batch of
    #   `PolicyComplianceStatus` objects.
    #
    # @option params [Integer] :max_results
    #   Specifies the number of `PolicyComplianceStatus` objects that you want
    #   AWS Firewall Manager to return for this request. If you have more
    #   `PolicyComplianceStatus` objects than the number that you specify for
    #   `MaxResults`, the response includes a `NextToken` value that you can
    #   use to get another batch of `PolicyComplianceStatus` objects.
    #
    # @return [Types::ListComplianceStatusResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListComplianceStatusResponse#policy_compliance_status_list #policy_compliance_status_list} => Array&lt;Types::PolicyComplianceStatus&gt;
    #   * {Types::ListComplianceStatusResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_compliance_status({
    #     policy_id: "PolicyId", # required
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.policy_compliance_status_list #=> Array
    #   resp.policy_compliance_status_list[0].policy_owner #=> String
    #   resp.policy_compliance_status_list[0].policy_id #=> String
    #   resp.policy_compliance_status_list[0].policy_name #=> String
    #   resp.policy_compliance_status_list[0].member_account #=> String
    #   resp.policy_compliance_status_list[0].evaluation_results #=> Array
    #   resp.policy_compliance_status_list[0].evaluation_results[0].compliance_status #=> String, one of "COMPLIANT", "NON_COMPLIANT"
    #   resp.policy_compliance_status_list[0].evaluation_results[0].violator_count #=> Integer
    #   resp.policy_compliance_status_list[0].evaluation_results[0].evaluation_limit_exceeded #=> Boolean
    #   resp.policy_compliance_status_list[0].last_updated #=> Time
    #   resp.policy_compliance_status_list[0].issue_info_map #=> Hash
    #   resp.policy_compliance_status_list[0].issue_info_map["DependentServiceName"] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/ListComplianceStatus AWS API Documentation
    #
    # @overload list_compliance_status(params = {})
    # @param [Hash] params ({})
    def list_compliance_status(params = {}, options = {})
      req = build_request(:list_compliance_status, params)
      req.send_request(options)
    end

    # Returns a `MemberAccounts` object that lists the member accounts in
    # the administrator's AWS organization.
    #
    # The `ListMemberAccounts` must be submitted by the account that is set
    # as the AWS Firewall Manager administrator.
    #
    # @option params [String] :next_token
    #   If you specify a value for `MaxResults` and you have more account IDs
    #   than the number that you specify for `MaxResults`, AWS Firewall
    #   Manager returns a `NextToken` value in the response that allows you to
    #   list another group of IDs. For the second and subsequent
    #   `ListMemberAccountsRequest` requests, specify the value of `NextToken`
    #   from the previous response to get information about another batch of
    #   member account IDs.
    #
    # @option params [Integer] :max_results
    #   Specifies the number of member account IDs that you want AWS Firewall
    #   Manager to return for this request. If you have more IDs than the
    #   number that you specify for `MaxResults`, the response includes a
    #   `NextToken` value that you can use to get another batch of member
    #   account IDs.
    #
    # @return [Types::ListMemberAccountsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListMemberAccountsResponse#member_accounts #member_accounts} => Array&lt;String&gt;
    #   * {Types::ListMemberAccountsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_member_accounts({
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.member_accounts #=> Array
    #   resp.member_accounts[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/ListMemberAccounts AWS API Documentation
    #
    # @overload list_member_accounts(params = {})
    # @param [Hash] params ({})
    def list_member_accounts(params = {}, options = {})
      req = build_request(:list_member_accounts, params)
      req.send_request(options)
    end

    # Returns an array of `PolicySummary` objects.
    #
    # @option params [String] :next_token
    #   If you specify a value for `MaxResults` and you have more
    #   `PolicySummary` objects than the number that you specify for
    #   `MaxResults`, AWS Firewall Manager returns a `NextToken` value in the
    #   response that allows you to list another group of `PolicySummary`
    #   objects. For the second and subsequent `ListPolicies` requests,
    #   specify the value of `NextToken` from the previous response to get
    #   information about another batch of `PolicySummary` objects.
    #
    # @option params [Integer] :max_results
    #   Specifies the number of `PolicySummary` objects that you want AWS
    #   Firewall Manager to return for this request. If you have more
    #   `PolicySummary` objects than the number that you specify for
    #   `MaxResults`, the response includes a `NextToken` value that you can
    #   use to get another batch of `PolicySummary` objects.
    #
    # @return [Types::ListPoliciesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPoliciesResponse#policy_list #policy_list} => Array&lt;Types::PolicySummary&gt;
    #   * {Types::ListPoliciesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_policies({
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.policy_list #=> Array
    #   resp.policy_list[0].policy_arn #=> String
    #   resp.policy_list[0].policy_id #=> String
    #   resp.policy_list[0].policy_name #=> String
    #   resp.policy_list[0].resource_type #=> String
    #   resp.policy_list[0].security_service_type #=> String, one of "WAF", "WAFV2", "SHIELD_ADVANCED", "SECURITY_GROUPS_COMMON", "SECURITY_GROUPS_CONTENT_AUDIT", "SECURITY_GROUPS_USAGE_AUDIT"
    #   resp.policy_list[0].remediation_enabled #=> Boolean
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/ListPolicies AWS API Documentation
    #
    # @overload list_policies(params = {})
    # @param [Hash] params ({})
    def list_policies(params = {}, options = {})
      req = build_request(:list_policies, params)
      req.send_request(options)
    end

    # Returns an array of `ProtocolsListDataSummary` objects.
    #
    # @option params [Boolean] :default_lists
    #   Specifies whether the lists to retrieve are default lists owned by AWS
    #   Firewall Manager.
    #
    # @option params [String] :next_token
    #   If you specify a value for `MaxResults` in your list request, and you
    #   have more objects than the maximum, AWS Firewall Manager returns this
    #   token in the response. For all but the first request, you provide the
    #   token returned by the prior request in the request parameters, to
    #   retrieve the next batch of objects.
    #
    # @option params [required, Integer] :max_results
    #   The maximum number of objects that you want AWS Firewall Manager to
    #   return for this request. If more objects are available, in the
    #   response, AWS Firewall Manager provides a `NextToken` value that you
    #   can use in a subsequent call to get the next batch of objects.
    #
    #   If you don't specify this, AWS Firewall Manager returns all available
    #   objects.
    #
    # @return [Types::ListProtocolsListsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListProtocolsListsResponse#protocols_lists #protocols_lists} => Array&lt;Types::ProtocolsListDataSummary&gt;
    #   * {Types::ListProtocolsListsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_protocols_lists({
    #     default_lists: false,
    #     next_token: "PaginationToken",
    #     max_results: 1, # required
    #   })
    #
    # @example Response structure
    #
    #   resp.protocols_lists #=> Array
    #   resp.protocols_lists[0].list_arn #=> String
    #   resp.protocols_lists[0].list_id #=> String
    #   resp.protocols_lists[0].list_name #=> String
    #   resp.protocols_lists[0].protocols_list #=> Array
    #   resp.protocols_lists[0].protocols_list[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/ListProtocolsLists AWS API Documentation
    #
    # @overload list_protocols_lists(params = {})
    # @param [Hash] params ({})
    def list_protocols_lists(params = {}, options = {})
      req = build_request(:list_protocols_lists, params)
      req.send_request(options)
    end

    # Retrieves the list of tags for the specified AWS resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource to return tags for. The
    #   AWS Firewall Manager resources that support tagging are policies,
    #   applications lists, and protocols lists.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tag_list #tag_list} => Array&lt;Types::Tag&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "ResourceArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tag_list #=> Array
    #   resp.tag_list[0].key #=> String
    #   resp.tag_list[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Creates an AWS Firewall Manager applications list.
    #
    # @option params [required, Types::AppsListData] :apps_list
    #   The details of the AWS Firewall Manager applications list to be
    #   created.
    #
    # @option params [Array<Types::Tag>] :tag_list
    #   The tags associated with the resource.
    #
    # @return [Types::PutAppsListResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutAppsListResponse#apps_list #apps_list} => Types::AppsListData
    #   * {Types::PutAppsListResponse#apps_list_arn #apps_list_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_apps_list({
    #     apps_list: { # required
    #       list_id: "ListId",
    #       list_name: "ResourceName", # required
    #       list_update_token: "UpdateToken",
    #       create_time: Time.now,
    #       last_update_time: Time.now,
    #       apps_list: [ # required
    #         {
    #           app_name: "ResourceName", # required
    #           protocol: "Protocol", # required
    #           port: 1, # required
    #         },
    #       ],
    #       previous_apps_list: {
    #         "PreviousListVersion" => [
    #           {
    #             app_name: "ResourceName", # required
    #             protocol: "Protocol", # required
    #             port: 1, # required
    #           },
    #         ],
    #       },
    #     },
    #     tag_list: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.apps_list.list_id #=> String
    #   resp.apps_list.list_name #=> String
    #   resp.apps_list.list_update_token #=> String
    #   resp.apps_list.create_time #=> Time
    #   resp.apps_list.last_update_time #=> Time
    #   resp.apps_list.apps_list #=> Array
    #   resp.apps_list.apps_list[0].app_name #=> String
    #   resp.apps_list.apps_list[0].protocol #=> String
    #   resp.apps_list.apps_list[0].port #=> Integer
    #   resp.apps_list.previous_apps_list #=> Hash
    #   resp.apps_list.previous_apps_list["PreviousListVersion"] #=> Array
    #   resp.apps_list.previous_apps_list["PreviousListVersion"][0].app_name #=> String
    #   resp.apps_list.previous_apps_list["PreviousListVersion"][0].protocol #=> String
    #   resp.apps_list.previous_apps_list["PreviousListVersion"][0].port #=> Integer
    #   resp.apps_list_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/PutAppsList AWS API Documentation
    #
    # @overload put_apps_list(params = {})
    # @param [Hash] params ({})
    def put_apps_list(params = {}, options = {})
      req = build_request(:put_apps_list, params)
      req.send_request(options)
    end

    # Designates the IAM role and Amazon Simple Notification Service (SNS)
    # topic that AWS Firewall Manager uses to record SNS logs.
    #
    # @option params [required, String] :sns_topic_arn
    #   The Amazon Resource Name (ARN) of the SNS topic that collects
    #   notifications from AWS Firewall Manager.
    #
    # @option params [required, String] :sns_role_name
    #   The Amazon Resource Name (ARN) of the IAM role that allows Amazon SNS
    #   to record AWS Firewall Manager activity.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_notification_channel({
    #     sns_topic_arn: "ResourceArn", # required
    #     sns_role_name: "ResourceArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/PutNotificationChannel AWS API Documentation
    #
    # @overload put_notification_channel(params = {})
    # @param [Hash] params ({})
    def put_notification_channel(params = {}, options = {})
      req = build_request(:put_notification_channel, params)
      req.send_request(options)
    end

    # Creates an AWS Firewall Manager policy.
    #
    # Firewall Manager provides the following types of policies:
    #
    # * A Shield Advanced policy, which applies Shield Advanced protection
    #   to specified accounts and resources
    #
    # * An AWS WAF policy (type WAFV2), which defines rule groups to run
    #   first in the corresponding AWS WAF web ACL and rule groups to run
    #   last in the web ACL.
    #
    # * An AWS WAF Classic policy (type WAF), which defines a rule group.
    #
    # * A security group policy, which manages VPC security groups across
    #   your AWS organization.
    #
    # Each policy is specific to one of the types. If you want to enforce
    # more than one policy type across accounts, create multiple policies.
    # You can create multiple policies for each type.
    #
    # You must be subscribed to Shield Advanced to create a Shield Advanced
    # policy. For more information about subscribing to Shield Advanced, see
    # [CreateSubscription][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/waf/latest/DDOSAPIReference/API_CreateSubscription.html
    #
    # @option params [required, Types::Policy] :policy
    #   The details of the AWS Firewall Manager policy to be created.
    #
    # @option params [Array<Types::Tag>] :tag_list
    #   The tags to add to the AWS resource.
    #
    # @return [Types::PutPolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutPolicyResponse#policy #policy} => Types::Policy
    #   * {Types::PutPolicyResponse#policy_arn #policy_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_policy({
    #     policy: { # required
    #       policy_id: "PolicyId",
    #       policy_name: "ResourceName", # required
    #       policy_update_token: "PolicyUpdateToken",
    #       security_service_policy_data: { # required
    #         type: "WAF", # required, accepts WAF, WAFV2, SHIELD_ADVANCED, SECURITY_GROUPS_COMMON, SECURITY_GROUPS_CONTENT_AUDIT, SECURITY_GROUPS_USAGE_AUDIT
    #         managed_service_data: "ManagedServiceData",
    #       },
    #       resource_type: "ResourceType", # required
    #       resource_type_list: ["ResourceType"],
    #       resource_tags: [
    #         {
    #           key: "ResourceTagKey", # required
    #           value: "ResourceTagValue",
    #         },
    #       ],
    #       exclude_resource_tags: false, # required
    #       remediation_enabled: false, # required
    #       include_map: {
    #         "ACCOUNT" => ["CustomerPolicyScopeId"],
    #       },
    #       exclude_map: {
    #         "ACCOUNT" => ["CustomerPolicyScopeId"],
    #       },
    #     },
    #     tag_list: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.policy.policy_id #=> String
    #   resp.policy.policy_name #=> String
    #   resp.policy.policy_update_token #=> String
    #   resp.policy.security_service_policy_data.type #=> String, one of "WAF", "WAFV2", "SHIELD_ADVANCED", "SECURITY_GROUPS_COMMON", "SECURITY_GROUPS_CONTENT_AUDIT", "SECURITY_GROUPS_USAGE_AUDIT"
    #   resp.policy.security_service_policy_data.managed_service_data #=> String
    #   resp.policy.resource_type #=> String
    #   resp.policy.resource_type_list #=> Array
    #   resp.policy.resource_type_list[0] #=> String
    #   resp.policy.resource_tags #=> Array
    #   resp.policy.resource_tags[0].key #=> String
    #   resp.policy.resource_tags[0].value #=> String
    #   resp.policy.exclude_resource_tags #=> Boolean
    #   resp.policy.remediation_enabled #=> Boolean
    #   resp.policy.include_map #=> Hash
    #   resp.policy.include_map["CustomerPolicyScopeIdType"] #=> Array
    #   resp.policy.include_map["CustomerPolicyScopeIdType"][0] #=> String
    #   resp.policy.exclude_map #=> Hash
    #   resp.policy.exclude_map["CustomerPolicyScopeIdType"] #=> Array
    #   resp.policy.exclude_map["CustomerPolicyScopeIdType"][0] #=> String
    #   resp.policy_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/PutPolicy AWS API Documentation
    #
    # @overload put_policy(params = {})
    # @param [Hash] params ({})
    def put_policy(params = {}, options = {})
      req = build_request(:put_policy, params)
      req.send_request(options)
    end

    # Creates an AWS Firewall Manager protocols list.
    #
    # @option params [required, Types::ProtocolsListData] :protocols_list
    #   The details of the AWS Firewall Manager protocols list to be created.
    #
    # @option params [Array<Types::Tag>] :tag_list
    #   The tags associated with the resource.
    #
    # @return [Types::PutProtocolsListResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutProtocolsListResponse#protocols_list #protocols_list} => Types::ProtocolsListData
    #   * {Types::PutProtocolsListResponse#protocols_list_arn #protocols_list_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_protocols_list({
    #     protocols_list: { # required
    #       list_id: "ListId",
    #       list_name: "ResourceName", # required
    #       list_update_token: "UpdateToken",
    #       create_time: Time.now,
    #       last_update_time: Time.now,
    #       protocols_list: ["Protocol"], # required
    #       previous_protocols_list: {
    #         "PreviousListVersion" => ["Protocol"],
    #       },
    #     },
    #     tag_list: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.protocols_list.list_id #=> String
    #   resp.protocols_list.list_name #=> String
    #   resp.protocols_list.list_update_token #=> String
    #   resp.protocols_list.create_time #=> Time
    #   resp.protocols_list.last_update_time #=> Time
    #   resp.protocols_list.protocols_list #=> Array
    #   resp.protocols_list.protocols_list[0] #=> String
    #   resp.protocols_list.previous_protocols_list #=> Hash
    #   resp.protocols_list.previous_protocols_list["PreviousListVersion"] #=> Array
    #   resp.protocols_list.previous_protocols_list["PreviousListVersion"][0] #=> String
    #   resp.protocols_list_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/PutProtocolsList AWS API Documentation
    #
    # @overload put_protocols_list(params = {})
    # @param [Hash] params ({})
    def put_protocols_list(params = {}, options = {})
      req = build_request(:put_protocols_list, params)
      req.send_request(options)
    end

    # Adds one or more tags to an AWS resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource to return tags for. The
    #   AWS Firewall Manager resources that support tagging are policies,
    #   applications lists, and protocols lists.
    #
    # @option params [required, Array<Types::Tag>] :tag_list
    #   The tags to add to the resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "ResourceArn", # required
    #     tag_list: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes one or more tags from an AWS resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource to return tags for. The
    #   AWS Firewall Manager resources that support tagging are policies,
    #   applications lists, and protocols lists.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The keys of the tags to remove from the resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "ResourceArn", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
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
      context[:gem_name] = 'aws-sdk-fms'
      context[:gem_version] = '1.32.0'
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
