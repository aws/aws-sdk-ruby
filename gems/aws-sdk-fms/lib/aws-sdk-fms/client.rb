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

Aws::Plugins::GlobalConfiguration.add_identifier(:fms)

module Aws::FMS
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

    # Sets the AWS Firewall Manager administrator account. AWS Firewall
    # Manager must be associated with the master account your AWS
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
    #   The ID of the policy that you want to delete. `PolicyId` is returned
    #   by `PutPolicy` and by `ListPolicies`.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_policy({
    #     policy_id: "PolicyId", # required
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

    # Disassociates the account that has been set as the AWS Firewall
    # Manager administrator account. You will need to submit an
    # `AssociateAdminAccount` request to set a new account as the AWS
    # Firewall administrator.
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

    # Returns detailed compliance information about the specified member
    # account. Details include resources that are in and out of compliance
    # with the specified policy. Resources are considered non-compliant if
    # the specified policy has not been applied to them.
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
    #   resp.policy_compliance_detail.violators[0].violation_reason #=> String, one of "WEB_ACL_MISSING_RULE_GROUP", "RESOURCE_MISSING_WEB_ACL", "RESOURCE_INCORRECT_WEB_ACL"
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

    # Returns information about the Amazon Simple Notification Service (SNS)
    # topic that is used to record AWS Firewall Manager SNS logs.
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
    #   resp.policy.security_service_policy_data.type #=> String, one of "WAF"
    #   resp.policy.security_service_policy_data.managed_service_data #=> String
    #   resp.policy.resource_type #=> String
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

    # Returns an array of `PolicyComplianceStatus` objects in the response.
    # Use `PolicyComplianceStatus` to get a summary of which member accounts
    # are protected by the specified policy.
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
    #   account IDs. The maximum value for `MaxResults` is 100.
    #
    # @return [Types::ListMemberAccountsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListMemberAccountsResponse#member_accounts #member_accounts} => Array&lt;String&gt;
    #   * {Types::ListMemberAccountsResponse#next_token #next_token} => String
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

    # Returns an array of `PolicySummary` objects in the response.
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
    #   resp.policy_list[0].security_service_type #=> String, one of "WAF"
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
    # @option params [required, Types::Policy] :policy
    #   The details of the AWS Firewall Manager policy to be created.
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
    #         type: "WAF", # required, accepts WAF
    #         managed_service_data: "ManagedServiceData",
    #       },
    #       resource_type: "ResourceType", # required
    #       resource_tags: [
    #         {
    #           key: "TagKey", # required
    #           value: "TagValue",
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
    #   })
    #
    # @example Response structure
    #
    #   resp.policy.policy_id #=> String
    #   resp.policy.policy_name #=> String
    #   resp.policy.policy_update_token #=> String
    #   resp.policy.security_service_policy_data.type #=> String, one of "WAF"
    #   resp.policy.security_service_policy_data.managed_service_data #=> String
    #   resp.policy.resource_type #=> String
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
      context[:gem_version] = '1.4.0'
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
