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

Aws::Plugins::GlobalConfiguration.add_identifier(:organizations)

module Aws::Organizations
  class Client < Seahorse::Client::Base

    include Aws::ClientStubs

    @identifier = :organizations

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

    # Sends a response to the originator of a handshake agreeing to the
    # action proposed by the handshake request.
    #
    # This operation can be called only by the following principals when
    # they also have the relevant IAM permissions:
    #
    # * **Invitation to join** or **Approve all features request**
    #   handshakes: only a principal from the member account.
    #
    #   The user who calls the API for an invitation to join must have the
    #   `organizations:AcceptHandshake` permission. If you enabled all
    #   features in the organization, then the user must also have the
    #   `iam:CreateServiceLinkedRole` permission so that Organizations can
    #   create the required service-linked role named
    #   *AWSServiceRoleForOrganizations*. For more information, see [AWS
    #   Organizations and Service-Linked Roles][1] in the *AWS Organizations
    #   User Guide*.
    #
    # * **Enable all features final confirmation** handshake: only a
    #   principal from the master account.
    #
    #   For more information about invitations, see [Inviting an AWS Account
    #   to Join Your Organization][2] in the *AWS Organizations User Guide*.
    #   For more information about requests to enable all features in the
    #   organization, see [Enabling All Features in Your Organization][3] in
    #   the *AWS Organizations User Guide*.
    #
    # After you accept a handshake, it continues to appear in the results of
    # relevant APIs for only 30 days. After that it is deleted.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/organizations/latest/userguide/orgs_integration_services.html#orgs_integration_service-linked-roles
    # [2]: http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_invites.html
    # [3]: http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_org_support-all-features.html
    #
    # @option params [required, String] :handshake_id
    #   The unique identifier (ID) of the handshake that you want to accept.
    #
    #   The [regex pattern][1] for handshake ID string requires "h-"
    #   followed by from 8 to 32 lower-case letters or digits.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @return [Types::AcceptHandshakeResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AcceptHandshakeResponse#handshake #handshake} => Types::Handshake
    #
    #
    # @example Example: To accept a handshake from another account
    #
    #   # Bill is the owner of an organization, and he invites Juan's account (222222222222) to join his organization. The
    #   # following example shows Juan's account accepting the handshake and thus agreeing to the invitation.
    #
    #   resp = client.accept_handshake({
    #     handshake_id: "h-examplehandshakeid111", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     handshake: {
    #       action: "INVITE", 
    #       arn: "arn:aws:organizations::111111111111:handshake/o-exampleorgid/invite/h-examplehandshakeid111", 
    #       expiration_timestamp: Time.parse("20170228T1215Z"), 
    #       id: "h-examplehandshakeid111", 
    #       parties: [
    #         {
    #           id: "o-exampleorgid", 
    #           type: "ORGANIZATION", 
    #         }, 
    #         {
    #           id: "juan@example.com", 
    #           type: "EMAIL", 
    #         }, 
    #       ], 
    #       requested_timestamp: Time.parse("20170214T1215Z"), 
    #       resources: [
    #         {
    #           resources: [
    #             {
    #               type: "MASTER_EMAIL", 
    #               value: "bill@amazon.com", 
    #             }, 
    #             {
    #               type: "MASTER_NAME", 
    #               value: "Org Master Account", 
    #             }, 
    #             {
    #               type: "ORGANIZATION_FEATURE_SET", 
    #               value: "ALL", 
    #             }, 
    #           ], 
    #           type: "ORGANIZATION", 
    #           value: "o-exampleorgid", 
    #         }, 
    #         {
    #           type: "ACCOUNT", 
    #           value: "222222222222", 
    #         }, 
    #       ], 
    #       state: "ACCEPTED", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.accept_handshake({
    #     handshake_id: "HandshakeId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.handshake.id #=> String
    #   resp.handshake.arn #=> String
    #   resp.handshake.parties #=> Array
    #   resp.handshake.parties[0].id #=> String
    #   resp.handshake.parties[0].type #=> String, one of "ACCOUNT", "ORGANIZATION", "EMAIL"
    #   resp.handshake.state #=> String, one of "REQUESTED", "OPEN", "CANCELED", "ACCEPTED", "DECLINED", "EXPIRED"
    #   resp.handshake.requested_timestamp #=> Time
    #   resp.handshake.expiration_timestamp #=> Time
    #   resp.handshake.action #=> String, one of "INVITE", "ENABLE_ALL_FEATURES", "APPROVE_ALL_FEATURES", "ADD_ORGANIZATIONS_SERVICE_LINKED_ROLE"
    #   resp.handshake.resources #=> Array
    #   resp.handshake.resources[0].value #=> String
    #   resp.handshake.resources[0].type #=> String, one of "ACCOUNT", "ORGANIZATION", "ORGANIZATION_FEATURE_SET", "EMAIL", "MASTER_EMAIL", "MASTER_NAME", "NOTES", "PARENT_HANDSHAKE"
    #   resp.handshake.resources[0].resources #=> Types::HandshakeResources
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/AcceptHandshake AWS API Documentation
    #
    # @overload accept_handshake(params = {})
    # @param [Hash] params ({})
    def accept_handshake(params = {}, options = {})
      req = build_request(:accept_handshake, params)
      req.send_request(options)
    end

    # Attaches a policy to a root, an organizational unit (OU), or an
    # individual account. How the policy affects accounts depends on the
    # type of policy:
    #
    # * **Service control policy (SCP)** - An SCP specifies what permissions
    #   can be delegated to users in affected member accounts. The scope of
    #   influence for a policy depends on what you attach the policy to:
    #
    #   * If you attach an SCP to a root, it affects all accounts in the
    #     organization.
    #
    #   * If you attach an SCP to an OU, it affects all accounts in that OU
    #     and in any child OUs.
    #
    #   * If you attach the policy directly to an account, then it affects
    #     only that account.
    #
    #   SCPs essentially are permission "filters". When you attach one SCP
    #   to a higher level root or OU, and you also attach a different SCP to
    #   a child OU or to an account, the child policy can further restrict
    #   only the permissions that pass through the parent filter and are
    #   available to the child. An SCP that is attached to a child cannot
    #   grant a permission that is not already granted by the parent. For
    #   example, imagine that the parent SCP allows permissions A, B, C, D,
    #   and E. The child SCP allows C, D, E, F, and G. The result is that
    #   the accounts affected by the child SCP are allowed to use only C, D,
    #   and E. They cannot use A or B because they were filtered out by the
    #   child OU. They also cannot use F and G because they were filtered
    #   out by the parent OU. They cannot be granted back by the child SCP;
    #   child SCPs can only filter the permissions they receive from the
    #   parent SCP.
    #
    #   AWS Organizations attaches a default SCP named `"FullAWSAccess` to
    #   every root, OU, and account. This default SCP allows all services
    #   and actions, enabling any new child OU or account to inherit the
    #   permissions of the parent root or OU. If you detach the default
    #   policy, you must replace it with a policy that specifies the
    #   permissions that you want to allow in that OU or account.
    #
    #   For more information about how Organizations policies permissions
    #   work, see [Using Service Control Policies][1] in the *AWS
    #   Organizations User Guide*.
    #
    # This operation can be called only from the organization's master
    # account.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_scp.html
    #
    # @option params [required, String] :policy_id
    #   The unique identifier (ID) of the policy that you want to attach to
    #   the target. You can get the ID for the policy by calling the
    #   ListPolicies operation.
    #
    #   The [regex pattern][1] for a policy ID string requires "p-" followed
    #   by from 8 to 128 lower-case letters or digits.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @option params [required, String] :target_id
    #   The unique identifier (ID) of the root, OU, or account that you want
    #   to attach the policy to. You can get the ID by calling the ListRoots,
    #   ListOrganizationalUnitsForParent, or ListAccounts operations.
    #
    #   The [regex pattern][1] for a target ID string requires one of the
    #   following:
    #
    #   * Root: a string that begins with "r-" followed by from 4 to 32
    #     lower-case letters or digits.
    #
    #   * Account: a string that consists of exactly 12 digits.
    #
    #   * Organizational unit (OU): a string that begins with "ou-" followed
    #     by from 4 to 32 lower-case letters or digits (the ID of the root
    #     that the OU is in) followed by a second "-" dash and from 8 to 32
    #     additional lower-case letters or digits.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To attach a policy to an OU
    #
    #   # The following example shows how to attach a service control policy (SCP) to an OU:
    #
    #   resp = client.attach_policy({
    #     policy_id: "p-examplepolicyid111", 
    #     target_id: "ou-examplerootid111-exampleouid111", 
    #   })
    #
    # @example Example: To attach a policy to an account
    #
    #   # The following example shows how to attach a service control policy (SCP) to an account:
    #
    #   resp = client.attach_policy({
    #     policy_id: "p-examplepolicyid111", 
    #     target_id: "333333333333", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.attach_policy({
    #     policy_id: "PolicyId", # required
    #     target_id: "PolicyTargetId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/AttachPolicy AWS API Documentation
    #
    # @overload attach_policy(params = {})
    # @param [Hash] params ({})
    def attach_policy(params = {}, options = {})
      req = build_request(:attach_policy, params)
      req.send_request(options)
    end

    # Cancels a handshake. Canceling a handshake sets the handshake state to
    # `CANCELED`.
    #
    # This operation can be called only from the account that originated the
    # handshake. The recipient of the handshake can't cancel it, but can
    # use DeclineHandshake instead. After a handshake is canceled, the
    # recipient can no longer respond to that handshake.
    #
    # After you cancel a handshake, it continues to appear in the results of
    # relevant APIs for only 30 days. After that it is deleted.
    #
    # @option params [required, String] :handshake_id
    #   The unique identifier (ID) of the handshake that you want to cancel.
    #   You can get the ID from the ListHandshakesForOrganization operation.
    #
    #   The [regex pattern][1] for handshake ID string requires "h-"
    #   followed by from 8 to 32 lower-case letters or digits.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @return [Types::CancelHandshakeResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CancelHandshakeResponse#handshake #handshake} => Types::Handshake
    #
    #
    # @example Example: To cancel a handshake sent to a member account
    #
    #   # Bill previously sent an invitation to Susan's account to join his organization. He changes his mind and decides to
    #   # cancel the invitation before Susan accepts it. The following example shows Bill's cancellation:
    #
    #   resp = client.cancel_handshake({
    #     handshake_id: "h-examplehandshakeid111", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     handshake: {
    #       action: "INVITE", 
    #       arn: "arn:aws:organizations::111111111111:handshake/o-exampleorgid/invite/h-examplehandshakeid111", 
    #       expiration_timestamp: Time.parse("20170228T1215Z"), 
    #       id: "h-examplehandshakeid111", 
    #       parties: [
    #         {
    #           id: "o-exampleorgid", 
    #           type: "ORGANIZATION", 
    #         }, 
    #         {
    #           id: "susan@example.com", 
    #           type: "EMAIL", 
    #         }, 
    #       ], 
    #       requested_timestamp: Time.parse("20170214T1215Z"), 
    #       resources: [
    #         {
    #           resources: [
    #             {
    #               type: "MASTER_EMAIL", 
    #               value: "bill@example.com", 
    #             }, 
    #             {
    #               type: "MASTER_NAME", 
    #               value: "Master Account", 
    #             }, 
    #             {
    #               type: "ORGANIZATION_FEATURE_SET", 
    #               value: "CONSOLIDATED_BILLING", 
    #             }, 
    #           ], 
    #           type: "ORGANIZATION", 
    #           value: "o-exampleorgid", 
    #         }, 
    #         {
    #           type: "ACCOUNT", 
    #           value: "222222222222", 
    #         }, 
    #         {
    #           type: "NOTES", 
    #           value: "This is a request for Susan's account to join Bob's organization.", 
    #         }, 
    #       ], 
    #       state: "CANCELED", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_handshake({
    #     handshake_id: "HandshakeId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.handshake.id #=> String
    #   resp.handshake.arn #=> String
    #   resp.handshake.parties #=> Array
    #   resp.handshake.parties[0].id #=> String
    #   resp.handshake.parties[0].type #=> String, one of "ACCOUNT", "ORGANIZATION", "EMAIL"
    #   resp.handshake.state #=> String, one of "REQUESTED", "OPEN", "CANCELED", "ACCEPTED", "DECLINED", "EXPIRED"
    #   resp.handshake.requested_timestamp #=> Time
    #   resp.handshake.expiration_timestamp #=> Time
    #   resp.handshake.action #=> String, one of "INVITE", "ENABLE_ALL_FEATURES", "APPROVE_ALL_FEATURES", "ADD_ORGANIZATIONS_SERVICE_LINKED_ROLE"
    #   resp.handshake.resources #=> Array
    #   resp.handshake.resources[0].value #=> String
    #   resp.handshake.resources[0].type #=> String, one of "ACCOUNT", "ORGANIZATION", "ORGANIZATION_FEATURE_SET", "EMAIL", "MASTER_EMAIL", "MASTER_NAME", "NOTES", "PARENT_HANDSHAKE"
    #   resp.handshake.resources[0].resources #=> Types::HandshakeResources
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/CancelHandshake AWS API Documentation
    #
    # @overload cancel_handshake(params = {})
    # @param [Hash] params ({})
    def cancel_handshake(params = {}, options = {})
      req = build_request(:cancel_handshake, params)
      req.send_request(options)
    end

    # Creates an AWS account that is automatically a member of the
    # organization whose credentials made the request. This is an
    # asynchronous request that AWS performs in the background. Because
    # `CreateAccount` operates asynchronously, it can return a successful
    # completion message even though account initialization might still be
    # in progress. You might need to wait a few minutes before you can
    # successfully access the account. To check the status of the request,
    # do one of the following:
    #
    # * Use the `OperationId` response element from this operation to
    #   provide as a parameter to the DescribeCreateAccountStatus operation.
    #
    # * Check the AWS CloudTrail log for the `CreateAccountResult` event.
    #   For information on using AWS CloudTrail with Organizations, see
    #   [Monitoring the Activity in Your Organization][1] in the *AWS
    #   Organizations User Guide*.
    #
    #
    #
    # The user who calls the API to create an account must have the
    # `organizations:CreateAccount` permission. If you enabled all features
    # in the organization, AWS Organizations will create the required
    # service-linked role named `AWSServiceRoleForOrganizations`. For more
    # information, see [AWS Organizations and Service-Linked Roles][2] in
    # the *AWS Organizations User Guide*.
    #
    # AWS Organizations preconfigures the new member account with a role
    # (named `OrganizationAccountAccessRole` by default) that grants users
    # in the master account administrator permissions in the new member
    # account. Principals in the master account can assume the role. AWS
    # Organizations clones the company name and address information for the
    # new account from the organization's master account.
    #
    # This operation can be called only from the organization's master
    # account.
    #
    # For more information about creating accounts, see [Creating an AWS
    # Account in Your Organization][3] in the *AWS Organizations User
    # Guide*.
    #
    # * When you create an account in an organization using the AWS
    #   Organizations console, API, or CLI commands, the information
    #   required for the account to operate as a standalone account, such as
    #   a payment method and signing the end user license agreement (EULA)
    #   is *not* automatically collected. If you must remove an account from
    #   your organization later, you can do so only after you provide the
    #   missing information. Follow the steps at [ To leave an organization
    #   as a member account][4] in the *AWS Organizations User Guide*.
    #
    # * If you get an exception that indicates that you exceeded your
    #   account limits for the organization, contact [AWS Support][5].
    #
    # * If you get an exception that indicates that the operation failed
    #   because your organization is still initializing, wait one hour and
    #   then try again. If the error persists, contact [AWS Support][5].
    #
    # <note markdown="1"> When you create a member account with this operation, you can choose
    # whether to create the account with the **IAM User and Role Access to
    # Billing Information** switch enabled. If you enable it, IAM users and
    # roles that have appropriate permissions can view billing information
    # for the account. If you disable it, only the account root user can
    # access billing information. For information about how to disable this
    # switch for an account, see [Granting Access to Your Billing
    # Information and Tools][6].
    #
    #  </note>
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/organizations/latest/userguide/orgs_monitoring.html
    # [2]: http://docs.aws.amazon.com/organizations/latest/userguide/orgs_integrate_services.html#orgs_integrate_services-using_slrs
    # [3]: http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_create.html
    # [4]: http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_remove.html#leave-without-all-info
    # [5]: https://console.aws.amazon.com/support/home#/
    # [6]: http://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/grantaccess.html
    #
    # @option params [required, String] :email
    #   The email address of the owner to assign to the new member account.
    #   This email address must not already be associated with another AWS
    #   account. You must use a valid email address to complete account
    #   creation. You can't access the root user of the account or remove an
    #   account that was created with an invalid email address.
    #
    # @option params [required, String] :account_name
    #   The friendly name of the member account.
    #
    # @option params [String] :role_name
    #   (Optional)
    #
    #   The name of an IAM role that AWS Organizations automatically
    #   preconfigures in the new member account. This role trusts the master
    #   account, allowing users in the master account to assume the role, as
    #   permitted by the master account administrator. The role has
    #   administrator permissions in the new member account.
    #
    #   If you don't specify this parameter, the role name defaults to
    #   `OrganizationAccountAccessRole`.
    #
    #   For more information about how to use this role to access the member
    #   account, see [Accessing and Administering the Member Accounts in Your
    #   Organization][1] in the *AWS Organizations User Guide*, and steps 2
    #   and 3 in [Tutorial: Delegate Access Across AWS Accounts Using IAM
    #   Roles][2] in the *IAM User Guide*.
    #
    #   The [regex pattern][3] that is used to validate this parameter is a
    #   string of characters that can consist of uppercase letters, lowercase
    #   letters, digits with no spaces, and any of the following characters:
    #   =,.@-
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_access.html#orgs_manage_accounts_create-cross-account-role
    #   [2]: http://docs.aws.amazon.com/IAM/latest/UserGuide/tutorial_cross-account-with-roles.html
    #   [3]: http://wikipedia.org/wiki/regex
    #
    # @option params [String] :iam_user_access_to_billing
    #   If set to `ALLOW`, the new account enables IAM users to access account
    #   billing information *if* they have the required permissions. If set to
    #   `DENY`, only the root user of the new account can access account
    #   billing information. For more information, see [Activating Access to
    #   the Billing and Cost Management Console][1] in the *AWS Billing and
    #   Cost Management User Guide*.
    #
    #   If you don't specify this parameter, the value defaults to `ALLOW`,
    #   and IAM users and roles with the required permissions can access
    #   billing information for the new account.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/grantaccess.html#ControllingAccessWebsite-Activate
    #
    # @return [Types::CreateAccountResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateAccountResponse#create_account_status #create_account_status} => Types::CreateAccountStatus
    #
    #
    # @example Example: To create a new account that is automatically part of the organization
    #
    #   # The owner of an organization creates a member account in the organization. The following example shows that when the
    #   # organization owner creates the member account, the account is preconfigured with the name "Production Account" and an
    #   # owner email address of susan@example.com.  An IAM role is automatically created using the default name because the
    #   # roleName parameter is not used. AWS Organizations sends Susan a "Welcome to AWS" email:
    #
    #   resp = client.create_account({
    #     account_name: "Production Account", 
    #     email: "susan@example.com", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     create_account_status: {
    #       id: "car-examplecreateaccountrequestid111", 
    #       state: "IN_PROGRESS", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_account({
    #     email: "Email", # required
    #     account_name: "AccountName", # required
    #     role_name: "RoleName",
    #     iam_user_access_to_billing: "ALLOW", # accepts ALLOW, DENY
    #   })
    #
    # @example Response structure
    #
    #   resp.create_account_status.id #=> String
    #   resp.create_account_status.account_name #=> String
    #   resp.create_account_status.state #=> String, one of "IN_PROGRESS", "SUCCEEDED", "FAILED"
    #   resp.create_account_status.requested_timestamp #=> Time
    #   resp.create_account_status.completed_timestamp #=> Time
    #   resp.create_account_status.account_id #=> String
    #   resp.create_account_status.failure_reason #=> String, one of "ACCOUNT_LIMIT_EXCEEDED", "EMAIL_ALREADY_EXISTS", "INVALID_ADDRESS", "INVALID_EMAIL", "CONCURRENT_ACCOUNT_MODIFICATION", "INTERNAL_FAILURE"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/CreateAccount AWS API Documentation
    #
    # @overload create_account(params = {})
    # @param [Hash] params ({})
    def create_account(params = {}, options = {})
      req = build_request(:create_account, params)
      req.send_request(options)
    end

    # Creates an AWS organization. The account whose user is calling the
    # CreateOrganization operation automatically becomes the [master
    # account][1] of the new organization.
    #
    # This operation must be called using credentials from the account that
    # is to become the new organization's master account. The principal
    # must also have the relevant IAM permissions.
    #
    # By default (or if you set the `FeatureSet` parameter to `ALL`), the
    # new organization is created with all features enabled and service
    # control policies automatically enabled in the root. If you instead
    # choose to create the organization supporting only the consolidated
    # billing features by setting the `FeatureSet` parameter to
    # `CONSOLIDATED_BILLING"`, then no policy types are enabled by default
    # and you cannot use organization policies.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/orgs_getting-started_concepts.html#account
    #
    # @option params [String] :feature_set
    #   Specifies the feature set supported by the new organization. Each
    #   feature set supports different levels of functionality.
    #
    #   * *CONSOLIDATED\_BILLING*\: All member accounts have their bills
    #     consolidated to and paid by the master account. For more
    #     information, see [Consolidated Billing][1] in the *AWS Organizations
    #     User Guide*.
    #
    #   * *ALL*\: In addition to all the features supported by the
    #     consolidated billing feature set, the master account can also apply
    #     any type of policy to any member account in the organization. For
    #     more information, see [All features][2] in the *AWS Organizations
    #     User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/organizations/latest/userguide/orgs_getting-started_concepts.html#feature-set-cb-only
    #   [2]: http://docs.aws.amazon.com/organizations/latest/userguide/orgs_getting-started_concepts.html#feature-set-all
    #
    # @return [Types::CreateOrganizationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateOrganizationResponse#organization #organization} => Types::Organization
    #
    #
    # @example Example: To create a new organization with all features enabled
    #
    #   # Bill wants to create an organization using credentials from account 111111111111. The following example shows that the
    #   # account becomes the master account in the new organization. Because he does not specify a feature set, the new
    #   # organization defaults to all features enabled and service control policies enabled on the root:
    #
    #   resp = client.create_organization({
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     organization: {
    #       arn: "arn:aws:organizations::111111111111:organization/o-exampleorgid", 
    #       available_policy_types: [
    #         {
    #           status: "ENABLED", 
    #           type: "SERVICE_CONTROL_POLICY", 
    #         }, 
    #       ], 
    #       feature_set: "ALL", 
    #       id: "o-exampleorgid", 
    #       master_account_arn: "arn:aws:organizations::111111111111:account/o-exampleorgid/111111111111", 
    #       master_account_email: "bill@example.com", 
    #       master_account_id: "111111111111", 
    #     }, 
    #   }
    #
    # @example Example: To create a new organization with consolidated billing features only
    #
    #   # In the following example, Bill creates an organization using credentials from account 111111111111, and configures the
    #   # organization to support only the consolidated billing feature set:
    #
    #   resp = client.create_organization({
    #     feature_set: "CONSOLIDATED_BILLING", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     organization: {
    #       arn: "arn:aws:organizations::111111111111:organization/o-exampleorgid", 
    #       available_policy_types: [
    #       ], 
    #       feature_set: "CONSOLIDATED_BILLING", 
    #       id: "o-exampleorgid", 
    #       master_account_arn: "arn:aws:organizations::111111111111:account/o-exampleorgid/111111111111", 
    #       master_account_email: "bill@example.com", 
    #       master_account_id: "111111111111", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_organization({
    #     feature_set: "ALL", # accepts ALL, CONSOLIDATED_BILLING
    #   })
    #
    # @example Response structure
    #
    #   resp.organization.id #=> String
    #   resp.organization.arn #=> String
    #   resp.organization.feature_set #=> String, one of "ALL", "CONSOLIDATED_BILLING"
    #   resp.organization.master_account_arn #=> String
    #   resp.organization.master_account_id #=> String
    #   resp.organization.master_account_email #=> String
    #   resp.organization.available_policy_types #=> Array
    #   resp.organization.available_policy_types[0].type #=> String, one of "SERVICE_CONTROL_POLICY"
    #   resp.organization.available_policy_types[0].status #=> String, one of "ENABLED", "PENDING_ENABLE", "PENDING_DISABLE"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/CreateOrganization AWS API Documentation
    #
    # @overload create_organization(params = {})
    # @param [Hash] params ({})
    def create_organization(params = {}, options = {})
      req = build_request(:create_organization, params)
      req.send_request(options)
    end

    # Creates an organizational unit (OU) within a root or parent OU. An OU
    # is a container for accounts that enables you to organize your accounts
    # to apply policies according to your business requirements. The number
    # of levels deep that you can nest OUs is dependent upon the policy
    # types enabled for that root. For service control policies, the limit
    # is five.
    #
    # For more information about OUs, see [Managing Organizational Units][1]
    # in the *AWS Organizations User Guide*.
    #
    # This operation can be called only from the organization's master
    # account.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_ous.html
    #
    # @option params [required, String] :parent_id
    #   The unique identifier (ID) of the parent root or OU in which you want
    #   to create the new OU.
    #
    #   The [regex pattern][1] for a parent ID string requires one of the
    #   following:
    #
    #   * Root: a string that begins with "r-" followed by from 4 to 32
    #     lower-case letters or digits.
    #
    #   * Organizational unit (OU): a string that begins with "ou-" followed
    #     by from 4 to 32 lower-case letters or digits (the ID of the root
    #     that the OU is in) followed by a second "-" dash and from 8 to 32
    #     additional lower-case letters or digits.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @option params [required, String] :name
    #   The friendly name to assign to the new OU.
    #
    # @return [Types::CreateOrganizationalUnitResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateOrganizationalUnitResponse#organizational_unit #organizational_unit} => Types::OrganizationalUnit
    #
    #
    # @example Example: To create a new organization unit
    #
    #   # The following example shows how to create an OU that is named AccountingOU. The new OU is directly under the root.:
    #
    #   resp = client.create_organizational_unit({
    #     name: "AccountingOU", 
    #     parent_id: "r-examplerootid111", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     organizational_unit: {
    #       arn: "arn:aws:organizations::111111111111:ou/o-exampleorgid/ou-examplerootid111-exampleouid111", 
    #       id: "ou-examplerootid111-exampleouid111", 
    #       name: "AccountingOU", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_organizational_unit({
    #     parent_id: "ParentId", # required
    #     name: "OrganizationalUnitName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.organizational_unit.id #=> String
    #   resp.organizational_unit.arn #=> String
    #   resp.organizational_unit.name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/CreateOrganizationalUnit AWS API Documentation
    #
    # @overload create_organizational_unit(params = {})
    # @param [Hash] params ({})
    def create_organizational_unit(params = {}, options = {})
      req = build_request(:create_organizational_unit, params)
      req.send_request(options)
    end

    # Creates a policy of a specified type that you can attach to a root, an
    # organizational unit (OU), or an individual AWS account.
    #
    # For more information about policies and their use, see [Managing
    # Organization Policies][1].
    #
    # This operation can be called only from the organization's master
    # account.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies.html
    #
    # @option params [required, String] :content
    #   The policy content to add to the new policy. For example, if you
    #   create a [service control policy][1] (SCP), this string must be JSON
    #   text that specifies the permissions that admins in attached accounts
    #   can delegate to their users, groups, and roles. For more information
    #   about the SCP syntax, see [Service Control Policy Syntax][2] in the
    #   *AWS Organizations User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_scp.html
    #   [2]: http://docs.aws.amazon.com/organizations/latest/userguide/orgs_reference_scp-syntax.html
    #
    # @option params [required, String] :description
    #   An optional description to assign to the policy.
    #
    # @option params [required, String] :name
    #   The friendly name to assign to the policy.
    #
    #   The [regex pattern][1] that is used to validate this parameter is a
    #   string of any of the characters in the ASCII character range.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @option params [required, String] :type
    #   The type of policy to create.
    #
    #   <note markdown="1"> In the current release, the only type of policy that you can create is
    #   a service control policy (SCP).
    #
    #    </note>
    #
    # @return [Types::CreatePolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreatePolicyResponse#policy #policy} => Types::Policy
    #
    #
    # @example Example: To create a service control policy
    #
    #   # The following example shows how to create a service control policy (SCP) that is named AllowAllS3Actions. The JSON
    #   # string in the content parameter specifies the content in the policy. The parameter string is escaped with backslashes to
    #   # ensure that the embedded double quotes in the JSON policy are treated as literals in the parameter, which itself is
    #   # surrounded by double quotes:
    #
    #   resp = client.create_policy({
    #     content: "{\\\"Version\\\":\\\"2012-10-17\\\",\\\"Statement\\\":{\\\"Effect\\\":\\\"Allow\\\",\\\"Action\\\":\\\"s3:*\\\"}}", 
    #     description: "Enables admins of attached accounts to delegate all S3 permissions", 
    #     name: "AllowAllS3Actions", 
    #     type: "SERVICE_CONTROL_POLICY", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     policy: {
    #       content: "{\"Version\":\"2012-10-17\",\"Statement\":{\"Effect\":\"Allow\",\"Action\":\"s3:*\"}}", 
    #       policy_summary: {
    #         arn: "arn:aws:organizations::111111111111:policy/o-exampleorgid/service_control_policy/p-examplepolicyid111", 
    #         description: "Allows delegation of all S3 actions", 
    #         name: "AllowAllS3Actions", 
    #         type: "SERVICE_CONTROL_POLICY", 
    #       }, 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_policy({
    #     content: "PolicyContent", # required
    #     description: "PolicyDescription", # required
    #     name: "PolicyName", # required
    #     type: "SERVICE_CONTROL_POLICY", # required, accepts SERVICE_CONTROL_POLICY
    #   })
    #
    # @example Response structure
    #
    #   resp.policy.policy_summary.id #=> String
    #   resp.policy.policy_summary.arn #=> String
    #   resp.policy.policy_summary.name #=> String
    #   resp.policy.policy_summary.description #=> String
    #   resp.policy.policy_summary.type #=> String, one of "SERVICE_CONTROL_POLICY"
    #   resp.policy.policy_summary.aws_managed #=> Boolean
    #   resp.policy.content #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/CreatePolicy AWS API Documentation
    #
    # @overload create_policy(params = {})
    # @param [Hash] params ({})
    def create_policy(params = {}, options = {})
      req = build_request(:create_policy, params)
      req.send_request(options)
    end

    # Declines a handshake request. This sets the handshake state to
    # `DECLINED` and effectively deactivates the request.
    #
    # This operation can be called only from the account that received the
    # handshake. The originator of the handshake can use CancelHandshake
    # instead. The originator can't reactivate a declined request, but can
    # re-initiate the process with a new handshake request.
    #
    # After you decline a handshake, it continues to appear in the results
    # of relevant APIs for only 30 days. After that it is deleted.
    #
    # @option params [required, String] :handshake_id
    #   The unique identifier (ID) of the handshake that you want to decline.
    #   You can get the ID from the ListHandshakesForAccount operation.
    #
    #   The [regex pattern][1] for handshake ID string requires "h-"
    #   followed by from 8 to 32 lower-case letters or digits.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @return [Types::DeclineHandshakeResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeclineHandshakeResponse#handshake #handshake} => Types::Handshake
    #
    #
    # @example Example: To decline a handshake sent from the master account
    #
    #   # The following example shows Susan declining an invitation to join Bill's organization. The DeclineHandshake operation
    #   # returns a handshake object, showing that the state is now DECLINED:
    #
    #   resp = client.decline_handshake({
    #     handshake_id: "h-examplehandshakeid111", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     handshake: {
    #       action: "INVITE", 
    #       arn: "arn:aws:organizations::111111111111:handshake/o-exampleorgid/invite/h-examplehandshakeid111", 
    #       expiration_timestamp: Time.parse("2016-12-15T19:27:58Z"), 
    #       id: "h-examplehandshakeid111", 
    #       parties: [
    #         {
    #           id: "222222222222", 
    #           type: "ACCOUNT", 
    #         }, 
    #         {
    #           id: "o-exampleorgid", 
    #           type: "ORGANIZATION", 
    #         }, 
    #       ], 
    #       requested_timestamp: Time.parse("2016-11-30T19:27:58Z"), 
    #       resources: [
    #         {
    #           resources: [
    #             {
    #               type: "MASTER_EMAIL", 
    #               value: "bill@example.com", 
    #             }, 
    #             {
    #               type: "MASTER_NAME", 
    #               value: "Master Account", 
    #             }, 
    #           ], 
    #           type: "ORGANIZATION", 
    #           value: "o-exampleorgid", 
    #         }, 
    #         {
    #           type: "ACCOUNT", 
    #           value: "222222222222", 
    #         }, 
    #         {
    #           type: "NOTES", 
    #           value: "This is an invitation to Susan's account to join the Bill's organization.", 
    #         }, 
    #       ], 
    #       state: "DECLINED", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.decline_handshake({
    #     handshake_id: "HandshakeId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.handshake.id #=> String
    #   resp.handshake.arn #=> String
    #   resp.handshake.parties #=> Array
    #   resp.handshake.parties[0].id #=> String
    #   resp.handshake.parties[0].type #=> String, one of "ACCOUNT", "ORGANIZATION", "EMAIL"
    #   resp.handshake.state #=> String, one of "REQUESTED", "OPEN", "CANCELED", "ACCEPTED", "DECLINED", "EXPIRED"
    #   resp.handshake.requested_timestamp #=> Time
    #   resp.handshake.expiration_timestamp #=> Time
    #   resp.handshake.action #=> String, one of "INVITE", "ENABLE_ALL_FEATURES", "APPROVE_ALL_FEATURES", "ADD_ORGANIZATIONS_SERVICE_LINKED_ROLE"
    #   resp.handshake.resources #=> Array
    #   resp.handshake.resources[0].value #=> String
    #   resp.handshake.resources[0].type #=> String, one of "ACCOUNT", "ORGANIZATION", "ORGANIZATION_FEATURE_SET", "EMAIL", "MASTER_EMAIL", "MASTER_NAME", "NOTES", "PARENT_HANDSHAKE"
    #   resp.handshake.resources[0].resources #=> Types::HandshakeResources
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/DeclineHandshake AWS API Documentation
    #
    # @overload decline_handshake(params = {})
    # @param [Hash] params ({})
    def decline_handshake(params = {}, options = {})
      req = build_request(:decline_handshake, params)
      req.send_request(options)
    end

    # Deletes the organization. You can delete an organization only by using
    # credentials from the master account. The organization must be empty of
    # member accounts.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/DeleteOrganization AWS API Documentation
    #
    # @overload delete_organization(params = {})
    # @param [Hash] params ({})
    def delete_organization(params = {}, options = {})
      req = build_request(:delete_organization, params)
      req.send_request(options)
    end

    # Deletes an organizational unit (OU) from a root or another OU. You
    # must first remove all accounts and child OUs from the OU that you want
    # to delete.
    #
    # This operation can be called only from the organization's master
    # account.
    #
    # @option params [required, String] :organizational_unit_id
    #   The unique identifier (ID) of the organizational unit that you want to
    #   delete. You can get the ID from the ListOrganizationalUnitsForParent
    #   operation.
    #
    #   The [regex pattern][1] for an organizational unit ID string requires
    #   "ou-" followed by from 4 to 32 lower-case letters or digits (the ID
    #   of the root that contains the OU) followed by a second "-" dash and
    #   from 8 to 32 additional lower-case letters or digits.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To delete an organization unit
    #
    #   # The following example shows how to delete an OU. The example assumes that you previously removed all accounts and other
    #   # OUs from the OU:
    #
    #   resp = client.delete_organizational_unit({
    #     organizational_unit_id: "ou-examplerootid111-exampleouid111", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_organizational_unit({
    #     organizational_unit_id: "OrganizationalUnitId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/DeleteOrganizationalUnit AWS API Documentation
    #
    # @overload delete_organizational_unit(params = {})
    # @param [Hash] params ({})
    def delete_organizational_unit(params = {}, options = {})
      req = build_request(:delete_organizational_unit, params)
      req.send_request(options)
    end

    # Deletes the specified policy from your organization. Before you
    # perform this operation, you must first detach the policy from all
    # organizational units (OUs), roots, and accounts.
    #
    # This operation can be called only from the organization's master
    # account.
    #
    # @option params [required, String] :policy_id
    #   The unique identifier (ID) of the policy that you want to delete. You
    #   can get the ID from the ListPolicies or ListPoliciesForTarget
    #   operations.
    #
    #   The [regex pattern][1] for a policy ID string requires "p-" followed
    #   by from 8 to 128 lower-case letters or digits.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To delete a policy
    #
    #   # The following example shows how to delete a policy from an organization. The example assumes that you previously
    #   # detached the policy from all entities:
    #
    #   resp = client.delete_policy({
    #     policy_id: "p-examplepolicyid111", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_policy({
    #     policy_id: "PolicyId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/DeletePolicy AWS API Documentation
    #
    # @overload delete_policy(params = {})
    # @param [Hash] params ({})
    def delete_policy(params = {}, options = {})
      req = build_request(:delete_policy, params)
      req.send_request(options)
    end

    # Retrieves Organizations-related information about the specified
    # account.
    #
    # This operation can be called only from the organization's master
    # account.
    #
    # @option params [required, String] :account_id
    #   The unique identifier (ID) of the AWS account that you want
    #   information about. You can get the ID from the ListAccounts or
    #   ListAccountsForParent operations.
    #
    #   The [regex pattern][1] for an account ID string requires exactly 12
    #   digits.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @return [Types::DescribeAccountResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeAccountResponse#account #account} => Types::Account
    #
    #
    # @example Example: To get the details about an account
    #
    #   # The following example shows a user in the master account (111111111111) asking for details about account 555555555555:
    #
    #   resp = client.describe_account({
    #     account_id: "555555555555", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     account: {
    #       arn: "arn:aws:organizations::111111111111:account/o-exampleorgid/555555555555", 
    #       email: "anika@example.com", 
    #       id: "555555555555", 
    #       name: "Beta Account", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_account({
    #     account_id: "AccountId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.account.id #=> String
    #   resp.account.arn #=> String
    #   resp.account.email #=> String
    #   resp.account.name #=> String
    #   resp.account.status #=> String, one of "ACTIVE", "SUSPENDED"
    #   resp.account.joined_method #=> String, one of "INVITED", "CREATED"
    #   resp.account.joined_timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/DescribeAccount AWS API Documentation
    #
    # @overload describe_account(params = {})
    # @param [Hash] params ({})
    def describe_account(params = {}, options = {})
      req = build_request(:describe_account, params)
      req.send_request(options)
    end

    # Retrieves the current status of an asynchronous request to create an
    # account.
    #
    # This operation can be called only from the organization's master
    # account.
    #
    # @option params [required, String] :create_account_request_id
    #   Specifies the `operationId` that uniquely identifies the request. You
    #   can get the ID from the response to an earlier CreateAccount request,
    #   or from the ListCreateAccountStatus operation.
    #
    #   The [regex pattern][1] for an create account request ID string
    #   requires "car-" followed by from 8 to 32 lower-case letters or
    #   digits.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @return [Types::DescribeCreateAccountStatusResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeCreateAccountStatusResponse#create_account_status #create_account_status} => Types::CreateAccountStatus
    #
    #
    # @example Example: To get information about a request to create an account
    #
    #   # The following example shows how to request the status about a previous request to create an account in an organization.
    #   # This operation can be called only by a principal from the organization's master account. In the example, the specified
    #   # "createAccountRequestId" comes from the response of the original call to "CreateAccount":
    #
    #   resp = client.describe_create_account_status({
    #     create_account_request_id: "car-exampleaccountcreationrequestid", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     create_account_status: {
    #       account_id: "333333333333", 
    #       id: "car-exampleaccountcreationrequestid", 
    #       state: "SUCCEEDED", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_create_account_status({
    #     create_account_request_id: "CreateAccountRequestId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.create_account_status.id #=> String
    #   resp.create_account_status.account_name #=> String
    #   resp.create_account_status.state #=> String, one of "IN_PROGRESS", "SUCCEEDED", "FAILED"
    #   resp.create_account_status.requested_timestamp #=> Time
    #   resp.create_account_status.completed_timestamp #=> Time
    #   resp.create_account_status.account_id #=> String
    #   resp.create_account_status.failure_reason #=> String, one of "ACCOUNT_LIMIT_EXCEEDED", "EMAIL_ALREADY_EXISTS", "INVALID_ADDRESS", "INVALID_EMAIL", "CONCURRENT_ACCOUNT_MODIFICATION", "INTERNAL_FAILURE"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/DescribeCreateAccountStatus AWS API Documentation
    #
    # @overload describe_create_account_status(params = {})
    # @param [Hash] params ({})
    def describe_create_account_status(params = {}, options = {})
      req = build_request(:describe_create_account_status, params)
      req.send_request(options)
    end

    # Retrieves information about a previously requested handshake. The
    # handshake ID comes from the response to the original
    # InviteAccountToOrganization operation that generated the handshake.
    #
    # You can access handshakes that are ACCEPTED, DECLINED, or CANCELED for
    # only 30 days after they change to that state. They are then deleted
    # and no longer accessible.
    #
    # This operation can be called from any account in the organization.
    #
    # @option params [required, String] :handshake_id
    #   The unique identifier (ID) of the handshake that you want information
    #   about. You can get the ID from the original call to
    #   InviteAccountToOrganization, or from a call to
    #   ListHandshakesForAccount or ListHandshakesForOrganization.
    #
    #   The [regex pattern][1] for handshake ID string requires "h-"
    #   followed by from 8 to 32 lower-case letters or digits.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @return [Types::DescribeHandshakeResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeHandshakeResponse#handshake #handshake} => Types::Handshake
    #
    #
    # @example Example: To get information about a handshake
    #
    #   # The following example shows you how to request details about a handshake. The handshake ID comes either from the
    #   # original call to "InviteAccountToOrganization", or from a call to "ListHandshakesForAccount" or
    #   # "ListHandshakesForOrganization":
    #
    #   resp = client.describe_handshake({
    #     handshake_id: "h-examplehandshakeid111", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     handshake: {
    #       action: "INVITE", 
    #       arn: "arn:aws:organizations::111111111111:handshake/o-exampleorgid/invite/h-examplehandshakeid111", 
    #       expiration_timestamp: Time.parse("2016-11-30T17:24:58.046Z"), 
    #       id: "h-examplehandshakeid111", 
    #       parties: [
    #         {
    #           id: "o-exampleorgid", 
    #           type: "ORGANIZATION", 
    #         }, 
    #         {
    #           id: "333333333333", 
    #           type: "ACCOUNT", 
    #         }, 
    #       ], 
    #       requested_timestamp: Time.parse("2016-11-30T17:24:58.046Z"), 
    #       resources: [
    #         {
    #           resources: [
    #             {
    #               type: "MASTER_EMAIL", 
    #               value: "bill@example.com", 
    #             }, 
    #             {
    #               type: "MASTER_NAME", 
    #               value: "Master Account", 
    #             }, 
    #           ], 
    #           type: "ORGANIZATION", 
    #           value: "o-exampleorgid", 
    #         }, 
    #         {
    #           type: "ACCOUNT", 
    #           value: "333333333333", 
    #         }, 
    #       ], 
    #       state: "OPEN", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_handshake({
    #     handshake_id: "HandshakeId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.handshake.id #=> String
    #   resp.handshake.arn #=> String
    #   resp.handshake.parties #=> Array
    #   resp.handshake.parties[0].id #=> String
    #   resp.handshake.parties[0].type #=> String, one of "ACCOUNT", "ORGANIZATION", "EMAIL"
    #   resp.handshake.state #=> String, one of "REQUESTED", "OPEN", "CANCELED", "ACCEPTED", "DECLINED", "EXPIRED"
    #   resp.handshake.requested_timestamp #=> Time
    #   resp.handshake.expiration_timestamp #=> Time
    #   resp.handshake.action #=> String, one of "INVITE", "ENABLE_ALL_FEATURES", "APPROVE_ALL_FEATURES", "ADD_ORGANIZATIONS_SERVICE_LINKED_ROLE"
    #   resp.handshake.resources #=> Array
    #   resp.handshake.resources[0].value #=> String
    #   resp.handshake.resources[0].type #=> String, one of "ACCOUNT", "ORGANIZATION", "ORGANIZATION_FEATURE_SET", "EMAIL", "MASTER_EMAIL", "MASTER_NAME", "NOTES", "PARENT_HANDSHAKE"
    #   resp.handshake.resources[0].resources #=> Types::HandshakeResources
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/DescribeHandshake AWS API Documentation
    #
    # @overload describe_handshake(params = {})
    # @param [Hash] params ({})
    def describe_handshake(params = {}, options = {})
      req = build_request(:describe_handshake, params)
      req.send_request(options)
    end

    # Retrieves information about the organization that the user's account
    # belongs to.
    #
    # This operation can be called from any account in the organization.
    #
    # <note markdown="1"> Even if a policy type is shown as available in the organization, it
    # can be disabled separately at the root level with DisablePolicyType.
    # Use ListRoots to see the status of policy types for a specified root.
    #
    #  </note>
    #
    # @return [Types::DescribeOrganizationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeOrganizationResponse#organization #organization} => Types::Organization
    #
    #
    # @example Example: To get information about an organization
    #
    #   # The following example shows how to request information about the current user's organization:/n/n
    #
    #   resp = client.describe_organization({
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     organization: {
    #       arn: "arn:aws:organizations::111111111111:organization/o-exampleorgid", 
    #       available_policy_types: [
    #         {
    #           status: "ENABLED", 
    #           type: "SERVICE_CONTROL_POLICY", 
    #         }, 
    #       ], 
    #       feature_set: "ALL", 
    #       id: "o-exampleorgid", 
    #       master_account_arn: "arn:aws:organizations::111111111111:account/o-exampleorgid/111111111111", 
    #       master_account_email: "bill@example.com", 
    #     }, 
    #   }
    #
    # @example Response structure
    #
    #   resp.organization.id #=> String
    #   resp.organization.arn #=> String
    #   resp.organization.feature_set #=> String, one of "ALL", "CONSOLIDATED_BILLING"
    #   resp.organization.master_account_arn #=> String
    #   resp.organization.master_account_id #=> String
    #   resp.organization.master_account_email #=> String
    #   resp.organization.available_policy_types #=> Array
    #   resp.organization.available_policy_types[0].type #=> String, one of "SERVICE_CONTROL_POLICY"
    #   resp.organization.available_policy_types[0].status #=> String, one of "ENABLED", "PENDING_ENABLE", "PENDING_DISABLE"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/DescribeOrganization AWS API Documentation
    #
    # @overload describe_organization(params = {})
    # @param [Hash] params ({})
    def describe_organization(params = {}, options = {})
      req = build_request(:describe_organization, params)
      req.send_request(options)
    end

    # Retrieves information about an organizational unit (OU).
    #
    # This operation can be called only from the organization's master
    # account.
    #
    # @option params [required, String] :organizational_unit_id
    #   The unique identifier (ID) of the organizational unit that you want
    #   details about. You can get the ID from the
    #   ListOrganizationalUnitsForParent operation.
    #
    #   The [regex pattern][1] for an organizational unit ID string requires
    #   "ou-" followed by from 4 to 32 lower-case letters or digits (the ID
    #   of the root that contains the OU) followed by a second "-" dash and
    #   from 8 to 32 additional lower-case letters or digits.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @return [Types::DescribeOrganizationalUnitResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeOrganizationalUnitResponse#organizational_unit #organizational_unit} => Types::OrganizationalUnit
    #
    #
    # @example Example: To get information about an organizational unit
    #
    #   # The following example shows how to request details about an OU:/n/n
    #
    #   resp = client.describe_organizational_unit({
    #     organizational_unit_id: "ou-examplerootid111-exampleouid111", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     organizational_unit: {
    #       arn: "arn:aws:organizations::111111111111:ou/o-exampleorgid/ou-examplerootid111-exampleouid111", 
    #       id: "ou-examplerootid111-exampleouid111", 
    #       name: "Accounting Group", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_organizational_unit({
    #     organizational_unit_id: "OrganizationalUnitId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.organizational_unit.id #=> String
    #   resp.organizational_unit.arn #=> String
    #   resp.organizational_unit.name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/DescribeOrganizationalUnit AWS API Documentation
    #
    # @overload describe_organizational_unit(params = {})
    # @param [Hash] params ({})
    def describe_organizational_unit(params = {}, options = {})
      req = build_request(:describe_organizational_unit, params)
      req.send_request(options)
    end

    # Retrieves information about a policy.
    #
    # This operation can be called only from the organization's master
    # account.
    #
    # @option params [required, String] :policy_id
    #   The unique identifier (ID) of the policy that you want details about.
    #   You can get the ID from the ListPolicies or ListPoliciesForTarget
    #   operations.
    #
    #   The [regex pattern][1] for a policy ID string requires "p-" followed
    #   by from 8 to 128 lower-case letters or digits.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @return [Types::DescribePolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribePolicyResponse#policy #policy} => Types::Policy
    #
    #
    # @example Example: To get information about a policy
    #
    #   # The following example shows how to request information about a policy:/n/n
    #
    #   resp = client.describe_policy({
    #     policy_id: "p-examplepolicyid111", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     policy: {
    #       content: "{\\n  \\\"Version\\\": \\\"2012-10-17\\\",\\n  \\\"Statement\\\": [\\n    {\\n      \\\"Effect\\\": \\\"Allow\\\",\\n      \\\"Action\\\": \\\"*\\\",\\n      \\\"Resource\\\": \\\"*\\\"\\n    }\\n  ]\\n}", 
    #       policy_summary: {
    #         arn: "arn:aws:organizations::111111111111:policy/o-exampleorgid/service_control_policy/p-examplepolicyid111", 
    #         aws_managed: false, 
    #         description: "Enables admins to delegate S3 permissions", 
    #         id: "p-examplepolicyid111", 
    #         name: "AllowAllS3Actions", 
    #         type: "SERVICE_CONTROL_POLICY", 
    #       }, 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_policy({
    #     policy_id: "PolicyId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.policy.policy_summary.id #=> String
    #   resp.policy.policy_summary.arn #=> String
    #   resp.policy.policy_summary.name #=> String
    #   resp.policy.policy_summary.description #=> String
    #   resp.policy.policy_summary.type #=> String, one of "SERVICE_CONTROL_POLICY"
    #   resp.policy.policy_summary.aws_managed #=> Boolean
    #   resp.policy.content #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/DescribePolicy AWS API Documentation
    #
    # @overload describe_policy(params = {})
    # @param [Hash] params ({})
    def describe_policy(params = {}, options = {})
      req = build_request(:describe_policy, params)
      req.send_request(options)
    end

    # Detaches a policy from a target root, organizational unit (OU), or
    # account. If the policy being detached is a service control policy
    # (SCP), the changes to permissions for IAM users and roles in affected
    # accounts are immediate.
    #
    # **Note:** Every root, OU, and account must have at least one SCP
    # attached. If you want to replace the default `FullAWSAccess` policy
    # with one that limits the permissions that can be delegated, then you
    # must attach the replacement policy before you can remove the default
    # one. This is the authorization strategy of [whitelisting][1]. If you
    # instead attach a second SCP and leave the `FullAWSAccess` SCP still
    # attached, and specify `"Effect": "Deny"` in the second SCP to override
    # the `"Effect": "Allow"` in the `FullAWSAccess` policy (or any other
    # attached SCP), then you are using the authorization strategy of
    # [blacklisting][2].
    #
    # This operation can be called only from the organization's master
    # account.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_about-scps.html#orgs_policies_whitelist
    # [2]: http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_about-scps.html#orgs_policies_blacklist
    #
    # @option params [required, String] :policy_id
    #   The unique identifier (ID) of the policy you want to detach. You can
    #   get the ID from the ListPolicies or ListPoliciesForTarget operations.
    #
    #   The [regex pattern][1] for a policy ID string requires "p-" followed
    #   by from 8 to 128 lower-case letters or digits.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @option params [required, String] :target_id
    #   The unique identifier (ID) of the root, OU, or account from which you
    #   want to detach the policy. You can get the ID from the ListRoots,
    #   ListOrganizationalUnitsForParent, or ListAccounts operations.
    #
    #   The [regex pattern][1] for a target ID string requires one of the
    #   following:
    #
    #   * Root: a string that begins with "r-" followed by from 4 to 32
    #     lower-case letters or digits.
    #
    #   * Account: a string that consists of exactly 12 digits.
    #
    #   * Organizational unit (OU): a string that begins with "ou-" followed
    #     by from 4 to 32 lower-case letters or digits (the ID of the root
    #     that the OU is in) followed by a second "-" dash and from 8 to 32
    #     additional lower-case letters or digits.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To detach a policy from a root, OU, or account
    #
    #   # The following example shows how to detach a policy from an OU:/n/n
    #
    #   resp = client.detach_policy({
    #     policy_id: "p-examplepolicyid111", 
    #     target_id: "ou-examplerootid111-exampleouid111", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.detach_policy({
    #     policy_id: "PolicyId", # required
    #     target_id: "PolicyTargetId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/DetachPolicy AWS API Documentation
    #
    # @overload detach_policy(params = {})
    # @param [Hash] params ({})
    def detach_policy(params = {}, options = {})
      req = build_request(:detach_policy, params)
      req.send_request(options)
    end

    # Disables the integration of an AWS service (the service that is
    # specified by `ServicePrincipal`) with AWS Organizations. When you
    # disable integration, the specified service no longer can create a
    # [service-linked role][1] in *new* accounts in your organization. This
    # means the service can't perform operations on your behalf on any new
    # accounts in your organization. The service can still perform
    # operations in older accounts until the service completes its clean-up
    # from AWS Organizations.
    #
    #
    #
    # We recommend that you disable integration between AWS Organizations
    # and the specified AWS service by using the console or commands that
    # are provided by the specified service. Doing so ensures that the other
    # service is aware that it can clean up any resources that are required
    # only for the integration. How the service cleans up its resources in
    # the organization's accounts depends on that service. For more
    # information, see the documentation for the other AWS service.
    #
    # After you perform the `DisableAWSServiceAccess` operation, the
    # specified service can no longer perform operations in your
    # organization's accounts unless the operations are explicitly
    # permitted by the IAM policies that are attached to your roles.
    #
    # For more information about integrating other services with AWS
    # Organizations, including the list of services that work with
    # Organizations, see [Integrating AWS Organizations with Other AWS
    # Services][2] in the *AWS Organizations User Guide*.
    #
    # This operation can be called only from the organization's master
    # account.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/using-service-linked-roles.html
    # [2]: http://docs.aws.amazon.com/organizations/latest/userguide/orgs_integrate_services.html
    #
    # @option params [required, String] :service_principal
    #   The service principal name of the AWS service for which you want to
    #   disable integration with your organization. This is typically in the
    #   form of a URL, such as ` service-abbreviation.amazonaws.com`.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disable_aws_service_access({
    #     service_principal: "ServicePrincipal", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/DisableAWSServiceAccess AWS API Documentation
    #
    # @overload disable_aws_service_access(params = {})
    # @param [Hash] params ({})
    def disable_aws_service_access(params = {}, options = {})
      req = build_request(:disable_aws_service_access, params)
      req.send_request(options)
    end

    # Disables an organizational control policy type in a root. A policy of
    # a certain type can be attached to entities in a root only if that type
    # is enabled in the root. After you perform this operation, you no
    # longer can attach policies of the specified type to that root or to
    # any organizational unit (OU) or account in that root. You can undo
    # this by using the EnablePolicyType operation.
    #
    # This operation can be called only from the organization's master
    # account.
    #
    # <note markdown="1"> If you disable a policy type for a root, it still shows as enabled for
    # the organization if all features are enabled in that organization. Use
    # ListRoots to see the status of policy types for a specified root. Use
    # DescribeOrganization to see the status of policy types in the
    # organization.
    #
    #  </note>
    #
    # @option params [required, String] :root_id
    #   The unique identifier (ID) of the root in which you want to disable a
    #   policy type. You can get the ID from the ListRoots operation.
    #
    #   The [regex pattern][1] for a root ID string requires "r-" followed
    #   by from 4 to 32 lower-case letters or digits.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @option params [required, String] :policy_type
    #   The policy type that you want to disable in this root.
    #
    # @return [Types::DisablePolicyTypeResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DisablePolicyTypeResponse#root #root} => Types::Root
    #
    #
    # @example Example: To disable a policy type in a root
    #
    #   # The following example shows how to disable the service control policy (SCP) policy type in a root. The response shows
    #   # that the PolicyTypes response element no longer includes SERVICE_CONTROL_POLICY:/n/n
    #
    #   resp = client.disable_policy_type({
    #     policy_type: "SERVICE_CONTROL_POLICY", 
    #     root_id: "r-examplerootid111", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     root: {
    #       arn: "arn:aws:organizations::111111111111:root/o-exampleorgid/r-examplerootid111", 
    #       id: "r-examplerootid111", 
    #       name: "Root", 
    #       policy_types: [
    #       ], 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disable_policy_type({
    #     root_id: "RootId", # required
    #     policy_type: "SERVICE_CONTROL_POLICY", # required, accepts SERVICE_CONTROL_POLICY
    #   })
    #
    # @example Response structure
    #
    #   resp.root.id #=> String
    #   resp.root.arn #=> String
    #   resp.root.name #=> String
    #   resp.root.policy_types #=> Array
    #   resp.root.policy_types[0].type #=> String, one of "SERVICE_CONTROL_POLICY"
    #   resp.root.policy_types[0].status #=> String, one of "ENABLED", "PENDING_ENABLE", "PENDING_DISABLE"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/DisablePolicyType AWS API Documentation
    #
    # @overload disable_policy_type(params = {})
    # @param [Hash] params ({})
    def disable_policy_type(params = {}, options = {})
      req = build_request(:disable_policy_type, params)
      req.send_request(options)
    end

    # Enables the integration of an AWS service (the service that is
    # specified by `ServicePrincipal`) with AWS Organizations. When you
    # enable integration, you allow the specified service to create a
    # [service-linked role][1] in all the accounts in your organization.
    # This allows the service to perform operations on your behalf in your
    # organization and its accounts.
    #
    # We recommend that you enable integration between AWS Organizations and
    # the specified AWS service by using the console or commands that are
    # provided by the specified service. Doing so ensures that the service
    # is aware that it can create the resources that are required for the
    # integration. How the service creates those resources in the
    # organization's accounts depends on that service. For more
    # information, see the documentation for the other AWS service.
    #
    # For more information about enabling services to integrate with AWS
    # Organizations, see [Integrating AWS Organizations with Other AWS
    # Services][2] in the *AWS Organizations User Guide*.
    #
    # This operation can be called only from the organization's master
    # account and only if the organization has [enabled all features][3].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/using-service-linked-roles.html
    # [2]: http://docs.aws.amazon.com/organizations/latest/userguide/orgs_integrate_services.html
    # [3]: http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_org_support-all-features.html
    #
    # @option params [required, String] :service_principal
    #   The service principal name of the AWS service for which you want to
    #   enable integration with your organization. This is typically in the
    #   form of a URL, such as ` service-abbreviation.amazonaws.com`.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.enable_aws_service_access({
    #     service_principal: "ServicePrincipal", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/EnableAWSServiceAccess AWS API Documentation
    #
    # @overload enable_aws_service_access(params = {})
    # @param [Hash] params ({})
    def enable_aws_service_access(params = {}, options = {})
      req = build_request(:enable_aws_service_access, params)
      req.send_request(options)
    end

    # Enables all features in an organization. This enables the use of
    # organization policies that can restrict the services and actions that
    # can be called in each account. Until you enable all features, you have
    # access only to consolidated billing, and you can't use any of the
    # advanced account administration features that AWS Organizations
    # supports. For more information, see [Enabling All Features in Your
    # Organization][1] in the *AWS Organizations User Guide*.
    #
    # This operation is required only for organizations that were created
    # explicitly with only the consolidated billing features enabled.
    # Calling this operation sends a handshake to every invited account in
    # the organization. The feature set change can be finalized and the
    # additional features enabled only after all administrators in the
    # invited accounts approve the change by accepting the handshake.
    #
    # After you enable all features, you can separately enable or disable
    # individual policy types in a root using EnablePolicyType and
    # DisablePolicyType. To see the status of policy types in a root, use
    # ListRoots.
    #
    # After all invited member accounts accept the handshake, you finalize
    # the feature set change by accepting the handshake that contains
    # `"Action": "ENABLE_ALL_FEATURES"`. This completes the change.
    #
    # After you enable all features in your organization, the master account
    # in the organization can apply policies on all member accounts. These
    # policies can restrict what users and even administrators in those
    # accounts can do. The master account can apply policies that prevent
    # accounts from leaving the organization. Ensure that your account
    # administrators are aware of this.
    #
    # This operation can be called only from the organization's master
    # account.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_org_support-all-features.html
    #
    # @return [Types::EnableAllFeaturesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::EnableAllFeaturesResponse#handshake #handshake} => Types::Handshake
    #
    #
    # @example Example: To enable all features in an organization
    #
    #   # This example shows the administrator asking all the invited accounts in the organization to approve enabling all
    #   # features in the organization. AWS Organizations sends an email to the address that is registered with every invited
    #   # member account asking the owner to approve the change by accepting the handshake that is sent. After all invited member
    #   # accounts accept the handshake, the organization administrator can finalize the change to enable all features, and those
    #   # with appropriate permissions can create policies and apply them to roots, OUs, and accounts:/n/n
    #
    #   resp = client.enable_all_features({
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     handshake: {
    #       action: "ENABLE_ALL_FEATURES", 
    #       arn: "arn:aws:organizations::111111111111:handshake/o-exampleorgid/enable_all_features/h-examplehandshakeid111", 
    #       expiration_timestamp: Time.parse("2017-02-28T09:35:40.05Z"), 
    #       id: "h-examplehandshakeid111", 
    #       parties: [
    #         {
    #           id: "o-exampleorgid", 
    #           type: "ORGANIZATION", 
    #         }, 
    #       ], 
    #       requested_timestamp: Time.parse("2017-02-13T09:35:40.05Z"), 
    #       resources: [
    #         {
    #           type: "ORGANIZATION", 
    #           value: "o-exampleorgid", 
    #         }, 
    #       ], 
    #       state: "REQUESTED", 
    #     }, 
    #   }
    #
    # @example Response structure
    #
    #   resp.handshake.id #=> String
    #   resp.handshake.arn #=> String
    #   resp.handshake.parties #=> Array
    #   resp.handshake.parties[0].id #=> String
    #   resp.handshake.parties[0].type #=> String, one of "ACCOUNT", "ORGANIZATION", "EMAIL"
    #   resp.handshake.state #=> String, one of "REQUESTED", "OPEN", "CANCELED", "ACCEPTED", "DECLINED", "EXPIRED"
    #   resp.handshake.requested_timestamp #=> Time
    #   resp.handshake.expiration_timestamp #=> Time
    #   resp.handshake.action #=> String, one of "INVITE", "ENABLE_ALL_FEATURES", "APPROVE_ALL_FEATURES", "ADD_ORGANIZATIONS_SERVICE_LINKED_ROLE"
    #   resp.handshake.resources #=> Array
    #   resp.handshake.resources[0].value #=> String
    #   resp.handshake.resources[0].type #=> String, one of "ACCOUNT", "ORGANIZATION", "ORGANIZATION_FEATURE_SET", "EMAIL", "MASTER_EMAIL", "MASTER_NAME", "NOTES", "PARENT_HANDSHAKE"
    #   resp.handshake.resources[0].resources #=> Types::HandshakeResources
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/EnableAllFeatures AWS API Documentation
    #
    # @overload enable_all_features(params = {})
    # @param [Hash] params ({})
    def enable_all_features(params = {}, options = {})
      req = build_request(:enable_all_features, params)
      req.send_request(options)
    end

    # Enables a policy type in a root. After you enable a policy type in a
    # root, you can attach policies of that type to the root, any
    # organizational unit (OU), or account in that root. You can undo this
    # by using the DisablePolicyType operation.
    #
    # This operation can be called only from the organization's master
    # account.
    #
    # You can enable a policy type in a root only if that policy type is
    # available in the organization. Use DescribeOrganization to view the
    # status of available policy types in the organization.
    #
    # To view the status of policy type in a root, use ListRoots.
    #
    # @option params [required, String] :root_id
    #   The unique identifier (ID) of the root in which you want to enable a
    #   policy type. You can get the ID from the ListRoots operation.
    #
    #   The [regex pattern][1] for a root ID string requires "r-" followed
    #   by from 4 to 32 lower-case letters or digits.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @option params [required, String] :policy_type
    #   The policy type that you want to enable.
    #
    # @return [Types::EnablePolicyTypeResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::EnablePolicyTypeResponse#root #root} => Types::Root
    #
    #
    # @example Example: To enable a policy type in a root
    #
    #   # The following example shows how to enable the service control policy (SCP) policy type in a root. The output shows a
    #   # root object with a PolicyTypes response element showing that SCPs are now enabled:/n/n
    #
    #   resp = client.enable_policy_type({
    #     policy_type: "SERVICE_CONTROL_POLICY", 
    #     root_id: "r-examplerootid111", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     root: {
    #       arn: "arn:aws:organizations::111111111111:root/o-exampleorgid/r-examplerootid111", 
    #       id: "r-examplerootid111", 
    #       name: "Root", 
    #       policy_types: [
    #         {
    #           status: "ENABLED", 
    #           type: "SERVICE_CONTROL_POLICY", 
    #         }, 
    #       ], 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.enable_policy_type({
    #     root_id: "RootId", # required
    #     policy_type: "SERVICE_CONTROL_POLICY", # required, accepts SERVICE_CONTROL_POLICY
    #   })
    #
    # @example Response structure
    #
    #   resp.root.id #=> String
    #   resp.root.arn #=> String
    #   resp.root.name #=> String
    #   resp.root.policy_types #=> Array
    #   resp.root.policy_types[0].type #=> String, one of "SERVICE_CONTROL_POLICY"
    #   resp.root.policy_types[0].status #=> String, one of "ENABLED", "PENDING_ENABLE", "PENDING_DISABLE"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/EnablePolicyType AWS API Documentation
    #
    # @overload enable_policy_type(params = {})
    # @param [Hash] params ({})
    def enable_policy_type(params = {}, options = {})
      req = build_request(:enable_policy_type, params)
      req.send_request(options)
    end

    # Sends an invitation to another account to join your organization as a
    # member account. Organizations sends email on your behalf to the email
    # address that is associated with the other account's owner. The
    # invitation is implemented as a Handshake whose details are in the
    # response.
    #
    # * You can invite AWS accounts only from the same seller as the master
    #   account. For example, if your organization's master account was
    #   created by Amazon Internet Services Pvt. Ltd (AISPL), an AWS seller
    #   in India, then you can only invite other AISPL accounts to your
    #   organization. You can't combine accounts from AISPL and AWS, or any
    #   other AWS seller. For more information, see [Consolidated Billing in
    #   India][1].
    #
    # * If you receive an exception that indicates that you exceeded your
    #   account limits for the organization or that the operation failed
    #   because your organization is still initializing, wait one hour and
    #   then try again. If the error persists after an hour, then contact
    #   [AWS Customer Support][2].
    #
    # This operation can be called only from the organization's master
    # account.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/useconsolidatedbilliing-India.html
    # [2]: https://console.aws.amazon.com/support/home#/
    #
    # @option params [required, Types::HandshakeParty] :target
    #   The identifier (ID) of the AWS account that you want to invite to join
    #   your organization. This is a JSON object that contains the following
    #   elements:
    #
    #   `\{ "Type": "ACCOUNT", "Id": "< account id number >" \}`
    #
    #   If you use the AWS CLI, you can submit this as a single string,
    #   similar to the following example:
    #
    #   `--target Id=123456789012,Type=ACCOUNT`
    #
    #   If you specify `"Type": "ACCOUNT"`, then you must provide the AWS
    #   account ID number as the `Id`. If you specify `"Type": "EMAIL"`, then
    #   you must specify the email address that is associated with the
    #   account.
    #
    #   `--target Id=diego@example.com,Type=EMAIL`
    #
    # @option params [String] :notes
    #   Additional information that you want to include in the generated email
    #   to the recipient account owner.
    #
    # @return [Types::InviteAccountToOrganizationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::InviteAccountToOrganizationResponse#handshake #handshake} => Types::Handshake
    #
    #
    # @example Example: To invite an account to join an organization
    #
    #   # The following example shows the admin of the master account owned by bill@example.com inviting the account owned by
    #   # juan@example.com to join an organization.
    #
    #   resp = client.invite_account_to_organization({
    #     notes: "This is a request for Juan's account to join Bill's organization", 
    #     target: {
    #       id: "juan@example.com", 
    #       type: "EMAIL", 
    #     }, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     handshake: {
    #       action: "INVITE", 
    #       arn: "arn:aws:organizations::111111111111:handshake/o-exampleorgid/invite/h-examplehandshakeid111", 
    #       expiration_timestamp: Time.parse("2017-02-16T09:36:05.02Z"), 
    #       id: "h-examplehandshakeid111", 
    #       parties: [
    #         {
    #           id: "o-exampleorgid", 
    #           type: "ORGANIZATION", 
    #         }, 
    #         {
    #           id: "juan@example.com", 
    #           type: "EMAIL", 
    #         }, 
    #       ], 
    #       requested_timestamp: Time.parse("2017-02-01T09:36:05.02Z"), 
    #       resources: [
    #         {
    #           resources: [
    #             {
    #               type: "MASTER_EMAIL", 
    #               value: "bill@amazon.com", 
    #             }, 
    #             {
    #               type: "MASTER_NAME", 
    #               value: "Org Master Account", 
    #             }, 
    #             {
    #               type: "ORGANIZATION_FEATURE_SET", 
    #               value: "FULL", 
    #             }, 
    #           ], 
    #           type: "ORGANIZATION", 
    #           value: "o-exampleorgid", 
    #         }, 
    #         {
    #           type: "EMAIL", 
    #           value: "juan@example.com", 
    #         }, 
    #       ], 
    #       state: "OPEN", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.invite_account_to_organization({
    #     target: { # required
    #       id: "HandshakePartyId", # required
    #       type: "ACCOUNT", # required, accepts ACCOUNT, ORGANIZATION, EMAIL
    #     },
    #     notes: "HandshakeNotes",
    #   })
    #
    # @example Response structure
    #
    #   resp.handshake.id #=> String
    #   resp.handshake.arn #=> String
    #   resp.handshake.parties #=> Array
    #   resp.handshake.parties[0].id #=> String
    #   resp.handshake.parties[0].type #=> String, one of "ACCOUNT", "ORGANIZATION", "EMAIL"
    #   resp.handshake.state #=> String, one of "REQUESTED", "OPEN", "CANCELED", "ACCEPTED", "DECLINED", "EXPIRED"
    #   resp.handshake.requested_timestamp #=> Time
    #   resp.handshake.expiration_timestamp #=> Time
    #   resp.handshake.action #=> String, one of "INVITE", "ENABLE_ALL_FEATURES", "APPROVE_ALL_FEATURES", "ADD_ORGANIZATIONS_SERVICE_LINKED_ROLE"
    #   resp.handshake.resources #=> Array
    #   resp.handshake.resources[0].value #=> String
    #   resp.handshake.resources[0].type #=> String, one of "ACCOUNT", "ORGANIZATION", "ORGANIZATION_FEATURE_SET", "EMAIL", "MASTER_EMAIL", "MASTER_NAME", "NOTES", "PARENT_HANDSHAKE"
    #   resp.handshake.resources[0].resources #=> Types::HandshakeResources
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/InviteAccountToOrganization AWS API Documentation
    #
    # @overload invite_account_to_organization(params = {})
    # @param [Hash] params ({})
    def invite_account_to_organization(params = {}, options = {})
      req = build_request(:invite_account_to_organization, params)
      req.send_request(options)
    end

    # Removes a member account from its parent organization. This version of
    # the operation is performed by the account that wants to leave. To
    # remove a member account as a user in the master account, use
    # RemoveAccountFromOrganization instead.
    #
    # This operation can be called only from a member account in the
    # organization.
    #
    # * The master account in an organization with all features enabled can
    #   set service control policies (SCPs) that can restrict what
    #   administrators of member accounts can do, including preventing them
    #   from successfully calling `LeaveOrganization` and leaving the
    #   organization.
    #
    # * You can leave an organization as a member account only if the
    #   account is configured with the information required to operate as a
    #   standalone account. When you create an account in an organization
    #   using the AWS Organizations console, API, or CLI commands, the
    #   information required of standalone accounts is *not* automatically
    #   collected. For each account that you want to make standalone, you
    #   must accept the End User License Agreement (EULA), choose a support
    #   plan, provide and verify the required contact information, and
    #   provide a current payment method. AWS uses the payment method to
    #   charge for any billable (not free tier) AWS activity that occurs
    #   while the account is not attached to an organization. Follow the
    #   steps at [ To leave an organization when all required account
    #   information has not yet been provided][1] in the *AWS Organizations
    #   User Guide*.
    #
    # * You can leave an organization only after you enable IAM user access
    #   to billing in your account. For more information, see [Activating
    #   Access to the Billing and Cost Management Console][2] in the *AWS
    #   Billing and Cost Management User Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_remove.html#leave-without-all-info
    # [2]: http://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/grantaccess.html#ControllingAccessWebsite-Activate
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To leave an organization as a member account
    #
    #   # TThe following example shows how to remove your member account from an organization:
    #
    #   resp = client.leave_organization({
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/LeaveOrganization AWS API Documentation
    #
    # @overload leave_organization(params = {})
    # @param [Hash] params ({})
    def leave_organization(params = {}, options = {})
      req = build_request(:leave_organization, params)
      req.send_request(options)
    end

    # Returns a list of the AWS services that you enabled to integrate with
    # your organization. After a service on this list creates the resources
    # that it requires for the integration, it can perform operations on
    # your organization and its accounts.
    #
    # For more information about integrating other services with AWS
    # Organizations, including the list of services that currently work with
    # Organizations, see [Integrating AWS Organizations with Other AWS
    # Services][1] in the *AWS Organizations User Guide*.
    #
    # This operation can be called only from the organization's master
    # account.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/organizations/latest/userguide/orgs_integrate_services.html
    #
    # @option params [String] :next_token
    #   Use this parameter if you receive a `NextToken` response in a previous
    #   request that indicates that there is more output available. Set it to
    #   the value of the previous call's `NextToken` response to indicate
    #   where the output should continue from.
    #
    # @option params [Integer] :max_results
    #   (Optional) Use this to limit the number of results you want included
    #   per page in the response. If you do not include this parameter, it
    #   defaults to a value that is specific to the operation. If additional
    #   items exist beyond the maximum you specify, the `NextToken` response
    #   element is present and has a value (is not null). Include that value
    #   as the `NextToken` request parameter in the next call to the operation
    #   to get the next part of the results. Note that Organizations might
    #   return fewer results than the maximum even when there are more results
    #   available. You should check `NextToken` after every operation to
    #   ensure that you receive all of the results.
    #
    # @return [Types::ListAWSServiceAccessForOrganizationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAWSServiceAccessForOrganizationResponse#enabled_service_principals #enabled_service_principals} => Array&lt;Types::EnabledServicePrincipal&gt;
    #   * {Types::ListAWSServiceAccessForOrganizationResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_aws_service_access_for_organization({
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.enabled_service_principals #=> Array
    #   resp.enabled_service_principals[0].service_principal #=> String
    #   resp.enabled_service_principals[0].date_enabled #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/ListAWSServiceAccessForOrganization AWS API Documentation
    #
    # @overload list_aws_service_access_for_organization(params = {})
    # @param [Hash] params ({})
    def list_aws_service_access_for_organization(params = {}, options = {})
      req = build_request(:list_aws_service_access_for_organization, params)
      req.send_request(options)
    end

    # Lists all the accounts in the organization. To request only the
    # accounts in a specified root or organizational unit (OU), use the
    # ListAccountsForParent operation instead.
    #
    # <note markdown="1"> Always check the `NextToken` response parameter for a `null` value
    # when calling a `List*` operation. These operations can occasionally
    # return an empty set of results even when there are more results
    # available. The `NextToken` response parameter value is `null` *only*
    # when there are no more results to display.
    #
    #  </note>
    #
    # This operation can be called only from the organization's master
    # account.
    #
    # @option params [String] :next_token
    #   Use this parameter if you receive a `NextToken` response in a previous
    #   request that indicates that there is more output available. Set it to
    #   the value of the previous call's `NextToken` response to indicate
    #   where the output should continue from.
    #
    # @option params [Integer] :max_results
    #   (Optional) Use this to limit the number of results you want included
    #   per page in the response. If you do not include this parameter, it
    #   defaults to a value that is specific to the operation. If additional
    #   items exist beyond the maximum you specify, the `NextToken` response
    #   element is present and has a value (is not null). Include that value
    #   as the `NextToken` request parameter in the next call to the operation
    #   to get the next part of the results. Note that Organizations might
    #   return fewer results than the maximum even when there are more results
    #   available. You should check `NextToken` after every operation to
    #   ensure that you receive all of the results.
    #
    # @return [Types::ListAccountsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAccountsResponse#accounts #accounts} => Array&lt;Types::Account&gt;
    #   * {Types::ListAccountsResponse#next_token #next_token} => String
    #
    #
    # @example Example: To retrieve a list of all of the accounts in an organization
    #
    #   # The following example shows you how to request a list of the accounts in an organization:
    #
    #   resp = client.list_accounts({
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     accounts: [
    #       {
    #         arn: "arn:aws:organizations::111111111111:account/o-exampleorgid/111111111111", 
    #         email: "bill@example.com", 
    #         id: "111111111111", 
    #         joined_method: "INVITED", 
    #         joined_timestamp: Time.parse("20161215T193015Z"), 
    #         name: "Master Account", 
    #         status: "ACTIVE", 
    #       }, 
    #       {
    #         arn: "arn:aws:organizations::111111111111:account/o-exampleorgid/222222222222", 
    #         email: "alice@example.com", 
    #         id: "222222222222", 
    #         joined_method: "INVITED", 
    #         joined_timestamp: Time.parse("20161215T210221Z"), 
    #         name: "Developer Account", 
    #         status: "ACTIVE", 
    #       }, 
    #       {
    #         arn: "arn:aws:organizations::111111111111:account/o-exampleorgid/333333333333", 
    #         email: "juan@example.com", 
    #         id: "333333333333", 
    #         joined_method: "INVITED", 
    #         joined_timestamp: Time.parse("20161215T210347Z"), 
    #         name: "Test Account", 
    #         status: "ACTIVE", 
    #       }, 
    #       {
    #         arn: "arn:aws:organizations::111111111111:account/o-exampleorgid/444444444444", 
    #         email: "anika@example.com", 
    #         id: "444444444444", 
    #         joined_method: "INVITED", 
    #         joined_timestamp: Time.parse("20161215T210332Z"), 
    #         name: "Production Account", 
    #         status: "ACTIVE", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_accounts({
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.accounts #=> Array
    #   resp.accounts[0].id #=> String
    #   resp.accounts[0].arn #=> String
    #   resp.accounts[0].email #=> String
    #   resp.accounts[0].name #=> String
    #   resp.accounts[0].status #=> String, one of "ACTIVE", "SUSPENDED"
    #   resp.accounts[0].joined_method #=> String, one of "INVITED", "CREATED"
    #   resp.accounts[0].joined_timestamp #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/ListAccounts AWS API Documentation
    #
    # @overload list_accounts(params = {})
    # @param [Hash] params ({})
    def list_accounts(params = {}, options = {})
      req = build_request(:list_accounts, params)
      req.send_request(options)
    end

    # Lists the accounts in an organization that are contained by the
    # specified target root or organizational unit (OU). If you specify the
    # root, you get a list of all the accounts that are not in any OU. If
    # you specify an OU, you get a list of all the accounts in only that OU,
    # and not in any child OUs. To get a list of all accounts in the
    # organization, use the ListAccounts operation.
    #
    # <note markdown="1"> Always check the `NextToken` response parameter for a `null` value
    # when calling a `List*` operation. These operations can occasionally
    # return an empty set of results even when there are more results
    # available. The `NextToken` response parameter value is `null` *only*
    # when there are no more results to display.
    #
    #  </note>
    #
    # This operation can be called only from the organization's master
    # account.
    #
    # @option params [required, String] :parent_id
    #   The unique identifier (ID) for the parent root or organization unit
    #   (OU) whose accounts you want to list.
    #
    # @option params [String] :next_token
    #   Use this parameter if you receive a `NextToken` response in a previous
    #   request that indicates that there is more output available. Set it to
    #   the value of the previous call's `NextToken` response to indicate
    #   where the output should continue from.
    #
    # @option params [Integer] :max_results
    #   (Optional) Use this to limit the number of results you want included
    #   per page in the response. If you do not include this parameter, it
    #   defaults to a value that is specific to the operation. If additional
    #   items exist beyond the maximum you specify, the `NextToken` response
    #   element is present and has a value (is not null). Include that value
    #   as the `NextToken` request parameter in the next call to the operation
    #   to get the next part of the results. Note that Organizations might
    #   return fewer results than the maximum even when there are more results
    #   available. You should check `NextToken` after every operation to
    #   ensure that you receive all of the results.
    #
    # @return [Types::ListAccountsForParentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAccountsForParentResponse#accounts #accounts} => Array&lt;Types::Account&gt;
    #   * {Types::ListAccountsForParentResponse#next_token #next_token} => String
    #
    #
    # @example Example: To retrieve a list of all of the accounts in a root or OU
    #
    #   # The following example shows how to request a list of the accounts in an OU:/n/n
    #
    #   resp = client.list_accounts_for_parent({
    #     parent_id: "ou-examplerootid111-exampleouid111", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     accounts: [
    #       {
    #         arn: "arn:aws:organizations::111111111111:account/o-exampleorgid/333333333333", 
    #         email: "juan@example.com", 
    #         id: "333333333333", 
    #         joined_method: "INVITED", 
    #         joined_timestamp: Time.parse(1481835795.536), 
    #         name: "Development Account", 
    #         status: "ACTIVE", 
    #       }, 
    #       {
    #         arn: "arn:aws:organizations::111111111111:account/o-exampleorgid/444444444444", 
    #         email: "anika@example.com", 
    #         id: "444444444444", 
    #         joined_method: "INVITED", 
    #         joined_timestamp: Time.parse(1481835812.143), 
    #         name: "Test Account", 
    #         status: "ACTIVE", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_accounts_for_parent({
    #     parent_id: "ParentId", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.accounts #=> Array
    #   resp.accounts[0].id #=> String
    #   resp.accounts[0].arn #=> String
    #   resp.accounts[0].email #=> String
    #   resp.accounts[0].name #=> String
    #   resp.accounts[0].status #=> String, one of "ACTIVE", "SUSPENDED"
    #   resp.accounts[0].joined_method #=> String, one of "INVITED", "CREATED"
    #   resp.accounts[0].joined_timestamp #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/ListAccountsForParent AWS API Documentation
    #
    # @overload list_accounts_for_parent(params = {})
    # @param [Hash] params ({})
    def list_accounts_for_parent(params = {}, options = {})
      req = build_request(:list_accounts_for_parent, params)
      req.send_request(options)
    end

    # Lists all of the organizational units (OUs) or accounts that are
    # contained in the specified parent OU or root. This operation, along
    # with ListParents enables you to traverse the tree structure that makes
    # up this root.
    #
    # <note markdown="1"> Always check the `NextToken` response parameter for a `null` value
    # when calling a `List*` operation. These operations can occasionally
    # return an empty set of results even when there are more results
    # available. The `NextToken` response parameter value is `null` *only*
    # when there are no more results to display.
    #
    #  </note>
    #
    # This operation can be called only from the organization's master
    # account.
    #
    # @option params [required, String] :parent_id
    #   The unique identifier (ID) for the parent root or OU whose children
    #   you want to list.
    #
    #   The [regex pattern][1] for a parent ID string requires one of the
    #   following:
    #
    #   * Root: a string that begins with "r-" followed by from 4 to 32
    #     lower-case letters or digits.
    #
    #   * Organizational unit (OU): a string that begins with "ou-" followed
    #     by from 4 to 32 lower-case letters or digits (the ID of the root
    #     that the OU is in) followed by a second "-" dash and from 8 to 32
    #     additional lower-case letters or digits.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @option params [required, String] :child_type
    #   Filters the output to include only the specified child type.
    #
    # @option params [String] :next_token
    #   Use this parameter if you receive a `NextToken` response in a previous
    #   request that indicates that there is more output available. Set it to
    #   the value of the previous call's `NextToken` response to indicate
    #   where the output should continue from.
    #
    # @option params [Integer] :max_results
    #   (Optional) Use this to limit the number of results you want included
    #   per page in the response. If you do not include this parameter, it
    #   defaults to a value that is specific to the operation. If additional
    #   items exist beyond the maximum you specify, the `NextToken` response
    #   element is present and has a value (is not null). Include that value
    #   as the `NextToken` request parameter in the next call to the operation
    #   to get the next part of the results. Note that Organizations might
    #   return fewer results than the maximum even when there are more results
    #   available. You should check `NextToken` after every operation to
    #   ensure that you receive all of the results.
    #
    # @return [Types::ListChildrenResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListChildrenResponse#children #children} => Array&lt;Types::Child&gt;
    #   * {Types::ListChildrenResponse#next_token #next_token} => String
    #
    #
    # @example Example: To retrieve a list of all of the child accounts and OUs in a parent root or OU
    #
    #   # The following example shows how to request a list of the child OUs in a parent root or OU:/n/n
    #
    #   resp = client.list_children({
    #     child_type: "ORGANIZATIONAL_UNIT", 
    #     parent_id: "ou-examplerootid111-exampleouid111", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     children: [
    #       {
    #         id: "ou-examplerootid111-exampleouid111", 
    #         type: "ORGANIZATIONAL_UNIT", 
    #       }, 
    #       {
    #         id: "ou-examplerootid111-exampleouid222", 
    #         type: "ORGANIZATIONAL_UNIT", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_children({
    #     parent_id: "ParentId", # required
    #     child_type: "ACCOUNT", # required, accepts ACCOUNT, ORGANIZATIONAL_UNIT
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.children #=> Array
    #   resp.children[0].id #=> String
    #   resp.children[0].type #=> String, one of "ACCOUNT", "ORGANIZATIONAL_UNIT"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/ListChildren AWS API Documentation
    #
    # @overload list_children(params = {})
    # @param [Hash] params ({})
    def list_children(params = {}, options = {})
      req = build_request(:list_children, params)
      req.send_request(options)
    end

    # Lists the account creation requests that match the specified status
    # that is currently being tracked for the organization.
    #
    # <note markdown="1"> Always check the `NextToken` response parameter for a `null` value
    # when calling a `List*` operation. These operations can occasionally
    # return an empty set of results even when there are more results
    # available. The `NextToken` response parameter value is `null` *only*
    # when there are no more results to display.
    #
    #  </note>
    #
    # This operation can be called only from the organization's master
    # account.
    #
    # @option params [Array<String>] :states
    #   A list of one or more states that you want included in the response.
    #   If this parameter is not present, then all requests are included in
    #   the response.
    #
    # @option params [String] :next_token
    #   Use this parameter if you receive a `NextToken` response in a previous
    #   request that indicates that there is more output available. Set it to
    #   the value of the previous call's `NextToken` response to indicate
    #   where the output should continue from.
    #
    # @option params [Integer] :max_results
    #   (Optional) Use this to limit the number of results you want included
    #   per page in the response. If you do not include this parameter, it
    #   defaults to a value that is specific to the operation. If additional
    #   items exist beyond the maximum you specify, the `NextToken` response
    #   element is present and has a value (is not null). Include that value
    #   as the `NextToken` request parameter in the next call to the operation
    #   to get the next part of the results. Note that Organizations might
    #   return fewer results than the maximum even when there are more results
    #   available. You should check `NextToken` after every operation to
    #   ensure that you receive all of the results.
    #
    # @return [Types::ListCreateAccountStatusResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListCreateAccountStatusResponse#create_account_statuses #create_account_statuses} => Array&lt;Types::CreateAccountStatus&gt;
    #   * {Types::ListCreateAccountStatusResponse#next_token #next_token} => String
    #
    #
    # @example Example: To get a list of completed account creation requests made in the organization
    #
    #   # The following example shows a user requesting a list of only the completed account creation requests made for the
    #   # current organization:
    #
    #   resp = client.list_create_account_status({
    #     states: [
    #       "SUCCEEDED", 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     create_account_statuses: [
    #       {
    #         account_id: "444444444444", 
    #         account_name: "Developer Test Account", 
    #         completed_timestamp: Time.parse("2017-01-15T13:45:23.6Z"), 
    #         id: "car-exampleaccountcreationrequestid1", 
    #         requested_timestamp: Time.parse("2017-01-15T13:45:23.01Z"), 
    #         state: "SUCCEEDED", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Example: To get a list of all account creation requests made in the organization
    #
    #   # The following example shows a user requesting a list of only the in-progress account creation requests made for the
    #   # current organization:
    #
    #   resp = client.list_create_account_status({
    #     states: [
    #       "IN_PROGRESS", 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     create_account_statuses: [
    #       {
    #         account_name: "Production Account", 
    #         id: "car-exampleaccountcreationrequestid2", 
    #         requested_timestamp: Time.parse("2017-01-15T13:45:23.01Z"), 
    #         state: "IN_PROGRESS", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_create_account_status({
    #     states: ["IN_PROGRESS"], # accepts IN_PROGRESS, SUCCEEDED, FAILED
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.create_account_statuses #=> Array
    #   resp.create_account_statuses[0].id #=> String
    #   resp.create_account_statuses[0].account_name #=> String
    #   resp.create_account_statuses[0].state #=> String, one of "IN_PROGRESS", "SUCCEEDED", "FAILED"
    #   resp.create_account_statuses[0].requested_timestamp #=> Time
    #   resp.create_account_statuses[0].completed_timestamp #=> Time
    #   resp.create_account_statuses[0].account_id #=> String
    #   resp.create_account_statuses[0].failure_reason #=> String, one of "ACCOUNT_LIMIT_EXCEEDED", "EMAIL_ALREADY_EXISTS", "INVALID_ADDRESS", "INVALID_EMAIL", "CONCURRENT_ACCOUNT_MODIFICATION", "INTERNAL_FAILURE"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/ListCreateAccountStatus AWS API Documentation
    #
    # @overload list_create_account_status(params = {})
    # @param [Hash] params ({})
    def list_create_account_status(params = {}, options = {})
      req = build_request(:list_create_account_status, params)
      req.send_request(options)
    end

    # Lists the current handshakes that are associated with the account of
    # the requesting user.
    #
    # Handshakes that are ACCEPTED, DECLINED, or CANCELED appear in the
    # results of this API for only 30 days after changing to that state.
    # After that they are deleted and no longer accessible.
    #
    # <note markdown="1"> Always check the `NextToken` response parameter for a `null` value
    # when calling a `List*` operation. These operations can occasionally
    # return an empty set of results even when there are more results
    # available. The `NextToken` response parameter value is `null` *only*
    # when there are no more results to display.
    #
    #  </note>
    #
    # This operation can be called from any account in the organization.
    #
    # @option params [Types::HandshakeFilter] :filter
    #   Filters the handshakes that you want included in the response. The
    #   default is all types. Use the `ActionType` element to limit the output
    #   to only a specified type, such as `INVITE`, `ENABLE-FULL-CONTROL`, or
    #   `APPROVE-FULL-CONTROL`. Alternatively, for the `ENABLE-FULL-CONTROL`
    #   handshake that generates a separate child handshake for each member
    #   account, you can specify `ParentHandshakeId` to see only the
    #   handshakes that were generated by that parent request.
    #
    # @option params [String] :next_token
    #   Use this parameter if you receive a `NextToken` response in a previous
    #   request that indicates that there is more output available. Set it to
    #   the value of the previous call's `NextToken` response to indicate
    #   where the output should continue from.
    #
    # @option params [Integer] :max_results
    #   (Optional) Use this to limit the number of results you want included
    #   per page in the response. If you do not include this parameter, it
    #   defaults to a value that is specific to the operation. If additional
    #   items exist beyond the maximum you specify, the `NextToken` response
    #   element is present and has a value (is not null). Include that value
    #   as the `NextToken` request parameter in the next call to the operation
    #   to get the next part of the results. Note that Organizations might
    #   return fewer results than the maximum even when there are more results
    #   available. You should check `NextToken` after every operation to
    #   ensure that you receive all of the results.
    #
    # @return [Types::ListHandshakesForAccountResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListHandshakesForAccountResponse#handshakes #handshakes} => Array&lt;Types::Handshake&gt;
    #   * {Types::ListHandshakesForAccountResponse#next_token #next_token} => String
    #
    #
    # @example Example: To retrieve a list of the handshakes sent to an account
    #
    #   # The following example shows you how to get a list of handshakes that are associated with the account of the credentials
    #   # used to call the operation:
    #
    #   resp = client.list_handshakes_for_account({
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     handshakes: [
    #       {
    #         action: "INVITE", 
    #         arn: "arn:aws:organizations::111111111111:handshake/o-exampleorgid/invite/h-examplehandshakeid111", 
    #         expiration_timestamp: Time.parse("2017-01-28T14:35:23.3Z"), 
    #         id: "h-examplehandshakeid111", 
    #         parties: [
    #           {
    #             id: "o-exampleorgid", 
    #             type: "ORGANIZATION", 
    #           }, 
    #           {
    #             id: "juan@example.com", 
    #             type: "EMAIL", 
    #           }, 
    #         ], 
    #         requested_timestamp: Time.parse("2017-01-13T14:35:23.3Z"), 
    #         resources: [
    #           {
    #             resources: [
    #               {
    #                 type: "MASTER_EMAIL", 
    #                 value: "bill@amazon.com", 
    #               }, 
    #               {
    #                 type: "MASTER_NAME", 
    #                 value: "Org Master Account", 
    #               }, 
    #               {
    #                 type: "ORGANIZATION_FEATURE_SET", 
    #                 value: "FULL", 
    #               }, 
    #             ], 
    #             type: "ORGANIZATION", 
    #             value: "o-exampleorgid", 
    #           }, 
    #           {
    #             type: "EMAIL", 
    #             value: "juan@example.com", 
    #           }, 
    #         ], 
    #         state: "OPEN", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_handshakes_for_account({
    #     filter: {
    #       action_type: "INVITE", # accepts INVITE, ENABLE_ALL_FEATURES, APPROVE_ALL_FEATURES, ADD_ORGANIZATIONS_SERVICE_LINKED_ROLE
    #       parent_handshake_id: "HandshakeId",
    #     },
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.handshakes #=> Array
    #   resp.handshakes[0].id #=> String
    #   resp.handshakes[0].arn #=> String
    #   resp.handshakes[0].parties #=> Array
    #   resp.handshakes[0].parties[0].id #=> String
    #   resp.handshakes[0].parties[0].type #=> String, one of "ACCOUNT", "ORGANIZATION", "EMAIL"
    #   resp.handshakes[0].state #=> String, one of "REQUESTED", "OPEN", "CANCELED", "ACCEPTED", "DECLINED", "EXPIRED"
    #   resp.handshakes[0].requested_timestamp #=> Time
    #   resp.handshakes[0].expiration_timestamp #=> Time
    #   resp.handshakes[0].action #=> String, one of "INVITE", "ENABLE_ALL_FEATURES", "APPROVE_ALL_FEATURES", "ADD_ORGANIZATIONS_SERVICE_LINKED_ROLE"
    #   resp.handshakes[0].resources #=> Array
    #   resp.handshakes[0].resources[0].value #=> String
    #   resp.handshakes[0].resources[0].type #=> String, one of "ACCOUNT", "ORGANIZATION", "ORGANIZATION_FEATURE_SET", "EMAIL", "MASTER_EMAIL", "MASTER_NAME", "NOTES", "PARENT_HANDSHAKE"
    #   resp.handshakes[0].resources[0].resources #=> Types::HandshakeResources
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/ListHandshakesForAccount AWS API Documentation
    #
    # @overload list_handshakes_for_account(params = {})
    # @param [Hash] params ({})
    def list_handshakes_for_account(params = {}, options = {})
      req = build_request(:list_handshakes_for_account, params)
      req.send_request(options)
    end

    # Lists the handshakes that are associated with the organization that
    # the requesting user is part of. The `ListHandshakesForOrganization`
    # operation returns a list of handshake structures. Each structure
    # contains details and status about a handshake.
    #
    # Handshakes that are ACCEPTED, DECLINED, or CANCELED appear in the
    # results of this API for only 30 days after changing to that state.
    # After that they are deleted and no longer accessible.
    #
    # <note markdown="1"> Always check the `NextToken` response parameter for a `null` value
    # when calling a `List*` operation. These operations can occasionally
    # return an empty set of results even when there are more results
    # available. The `NextToken` response parameter value is `null` *only*
    # when there are no more results to display.
    #
    #  </note>
    #
    # This operation can be called only from the organization's master
    # account.
    #
    # @option params [Types::HandshakeFilter] :filter
    #   A filter of the handshakes that you want included in the response. The
    #   default is all types. Use the `ActionType` element to limit the output
    #   to only a specified type, such as `INVITE`, `ENABLE-ALL-FEATURES`, or
    #   `APPROVE-ALL-FEATURES`. Alternatively, for the `ENABLE-ALL-FEATURES`
    #   handshake that generates a separate child handshake for each member
    #   account, you can specify the `ParentHandshakeId` to see only the
    #   handshakes that were generated by that parent request.
    #
    # @option params [String] :next_token
    #   Use this parameter if you receive a `NextToken` response in a previous
    #   request that indicates that there is more output available. Set it to
    #   the value of the previous call's `NextToken` response to indicate
    #   where the output should continue from.
    #
    # @option params [Integer] :max_results
    #   (Optional) Use this to limit the number of results you want included
    #   per page in the response. If you do not include this parameter, it
    #   defaults to a value that is specific to the operation. If additional
    #   items exist beyond the maximum you specify, the `NextToken` response
    #   element is present and has a value (is not null). Include that value
    #   as the `NextToken` request parameter in the next call to the operation
    #   to get the next part of the results. Note that Organizations might
    #   return fewer results than the maximum even when there are more results
    #   available. You should check `NextToken` after every operation to
    #   ensure that you receive all of the results.
    #
    # @return [Types::ListHandshakesForOrganizationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListHandshakesForOrganizationResponse#handshakes #handshakes} => Array&lt;Types::Handshake&gt;
    #   * {Types::ListHandshakesForOrganizationResponse#next_token #next_token} => String
    #
    #
    # @example Example: To retrieve a list of the handshakes associated with an organization
    #
    #   # The following example shows you how to get a list of handshakes associated with the current organization:
    #
    #   resp = client.list_handshakes_for_organization({
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     handshakes: [
    #       {
    #         action: "INVITE", 
    #         arn: "arn:aws:organizations::111111111111:handshake/o-exampleorgid/invite/h-examplehandshakeid111", 
    #         expiration_timestamp: Time.parse("2017-01-28T14:35:23.3Z"), 
    #         id: "h-examplehandshakeid111", 
    #         parties: [
    #           {
    #             id: "o-exampleorgid", 
    #             type: "ORGANIZATION", 
    #           }, 
    #           {
    #             id: "juan@example.com", 
    #             type: "EMAIL", 
    #           }, 
    #         ], 
    #         requested_timestamp: Time.parse("2017-01-13T14:35:23.3Z"), 
    #         resources: [
    #           {
    #             resources: [
    #               {
    #                 type: "MASTER_EMAIL", 
    #                 value: "bill@amazon.com", 
    #               }, 
    #               {
    #                 type: "MASTER_NAME", 
    #                 value: "Org Master Account", 
    #               }, 
    #               {
    #                 type: "ORGANIZATION_FEATURE_SET", 
    #                 value: "FULL", 
    #               }, 
    #             ], 
    #             type: "ORGANIZATION", 
    #             value: "o-exampleorgid", 
    #           }, 
    #           {
    #             type: "EMAIL", 
    #             value: "juan@example.com", 
    #           }, 
    #         ], 
    #         state: "OPEN", 
    #       }, 
    #       {
    #         action: "INVITE", 
    #         arn: "arn:aws:organizations::111111111111:handshake/o-exampleorgid/invite/h-examplehandshakeid111", 
    #         expiration_timestamp: Time.parse("2017-01-28T14:35:23.3Z"), 
    #         id: "h-examplehandshakeid222", 
    #         parties: [
    #           {
    #             id: "o-exampleorgid", 
    #             type: "ORGANIZATION", 
    #           }, 
    #           {
    #             id: "anika@example.com", 
    #             type: "EMAIL", 
    #           }, 
    #         ], 
    #         requested_timestamp: Time.parse("2017-01-13T14:35:23.3Z"), 
    #         resources: [
    #           {
    #             resources: [
    #               {
    #                 type: "MASTER_EMAIL", 
    #                 value: "bill@example.com", 
    #               }, 
    #               {
    #                 type: "MASTER_NAME", 
    #                 value: "Master Account", 
    #               }, 
    #             ], 
    #             type: "ORGANIZATION", 
    #             value: "o-exampleorgid", 
    #           }, 
    #           {
    #             type: "EMAIL", 
    #             value: "anika@example.com", 
    #           }, 
    #           {
    #             type: "NOTES", 
    #             value: "This is an invitation to Anika's account to join Bill's organization.", 
    #           }, 
    #         ], 
    #         state: "ACCEPTED", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_handshakes_for_organization({
    #     filter: {
    #       action_type: "INVITE", # accepts INVITE, ENABLE_ALL_FEATURES, APPROVE_ALL_FEATURES, ADD_ORGANIZATIONS_SERVICE_LINKED_ROLE
    #       parent_handshake_id: "HandshakeId",
    #     },
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.handshakes #=> Array
    #   resp.handshakes[0].id #=> String
    #   resp.handshakes[0].arn #=> String
    #   resp.handshakes[0].parties #=> Array
    #   resp.handshakes[0].parties[0].id #=> String
    #   resp.handshakes[0].parties[0].type #=> String, one of "ACCOUNT", "ORGANIZATION", "EMAIL"
    #   resp.handshakes[0].state #=> String, one of "REQUESTED", "OPEN", "CANCELED", "ACCEPTED", "DECLINED", "EXPIRED"
    #   resp.handshakes[0].requested_timestamp #=> Time
    #   resp.handshakes[0].expiration_timestamp #=> Time
    #   resp.handshakes[0].action #=> String, one of "INVITE", "ENABLE_ALL_FEATURES", "APPROVE_ALL_FEATURES", "ADD_ORGANIZATIONS_SERVICE_LINKED_ROLE"
    #   resp.handshakes[0].resources #=> Array
    #   resp.handshakes[0].resources[0].value #=> String
    #   resp.handshakes[0].resources[0].type #=> String, one of "ACCOUNT", "ORGANIZATION", "ORGANIZATION_FEATURE_SET", "EMAIL", "MASTER_EMAIL", "MASTER_NAME", "NOTES", "PARENT_HANDSHAKE"
    #   resp.handshakes[0].resources[0].resources #=> Types::HandshakeResources
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/ListHandshakesForOrganization AWS API Documentation
    #
    # @overload list_handshakes_for_organization(params = {})
    # @param [Hash] params ({})
    def list_handshakes_for_organization(params = {}, options = {})
      req = build_request(:list_handshakes_for_organization, params)
      req.send_request(options)
    end

    # Lists the organizational units (OUs) in a parent organizational unit
    # or root.
    #
    # <note markdown="1"> Always check the `NextToken` response parameter for a `null` value
    # when calling a `List*` operation. These operations can occasionally
    # return an empty set of results even when there are more results
    # available. The `NextToken` response parameter value is `null` *only*
    # when there are no more results to display.
    #
    #  </note>
    #
    # This operation can be called only from the organization's master
    # account.
    #
    # @option params [required, String] :parent_id
    #   The unique identifier (ID) of the root or OU whose child OUs you want
    #   to list.
    #
    #   The [regex pattern][1] for a parent ID string requires one of the
    #   following:
    #
    #   * Root: a string that begins with "r-" followed by from 4 to 32
    #     lower-case letters or digits.
    #
    #   * Organizational unit (OU): a string that begins with "ou-" followed
    #     by from 4 to 32 lower-case letters or digits (the ID of the root
    #     that the OU is in) followed by a second "-" dash and from 8 to 32
    #     additional lower-case letters or digits.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @option params [String] :next_token
    #   Use this parameter if you receive a `NextToken` response in a previous
    #   request that indicates that there is more output available. Set it to
    #   the value of the previous call's `NextToken` response to indicate
    #   where the output should continue from.
    #
    # @option params [Integer] :max_results
    #   (Optional) Use this to limit the number of results you want included
    #   per page in the response. If you do not include this parameter, it
    #   defaults to a value that is specific to the operation. If additional
    #   items exist beyond the maximum you specify, the `NextToken` response
    #   element is present and has a value (is not null). Include that value
    #   as the `NextToken` request parameter in the next call to the operation
    #   to get the next part of the results. Note that Organizations might
    #   return fewer results than the maximum even when there are more results
    #   available. You should check `NextToken` after every operation to
    #   ensure that you receive all of the results.
    #
    # @return [Types::ListOrganizationalUnitsForParentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListOrganizationalUnitsForParentResponse#organizational_units #organizational_units} => Array&lt;Types::OrganizationalUnit&gt;
    #   * {Types::ListOrganizationalUnitsForParentResponse#next_token #next_token} => String
    #
    #
    # @example Example: To retrieve a list of all of the child OUs in a parent root or OU
    #
    #   # The following example shows how to get a list of OUs in a specified root:/n/n
    #
    #   resp = client.list_organizational_units_for_parent({
    #     parent_id: "r-examplerootid111", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     organizational_units: [
    #       {
    #         arn: "arn:aws:organizations::111111111111:ou/o-exampleorgid/ou-examlerootid111-exampleouid111", 
    #         id: "ou-examplerootid111-exampleouid111", 
    #         name: "Development", 
    #       }, 
    #       {
    #         arn: "arn:aws:organizations::111111111111:ou/o-exampleorgid/ou-examlerootid111-exampleouid222", 
    #         id: "ou-examplerootid111-exampleouid222", 
    #         name: "Production", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_organizational_units_for_parent({
    #     parent_id: "ParentId", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.organizational_units #=> Array
    #   resp.organizational_units[0].id #=> String
    #   resp.organizational_units[0].arn #=> String
    #   resp.organizational_units[0].name #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/ListOrganizationalUnitsForParent AWS API Documentation
    #
    # @overload list_organizational_units_for_parent(params = {})
    # @param [Hash] params ({})
    def list_organizational_units_for_parent(params = {}, options = {})
      req = build_request(:list_organizational_units_for_parent, params)
      req.send_request(options)
    end

    # Lists the root or organizational units (OUs) that serve as the
    # immediate parent of the specified child OU or account. This operation,
    # along with ListChildren enables you to traverse the tree structure
    # that makes up this root.
    #
    # <note markdown="1"> Always check the `NextToken` response parameter for a `null` value
    # when calling a `List*` operation. These operations can occasionally
    # return an empty set of results even when there are more results
    # available. The `NextToken` response parameter value is `null` *only*
    # when there are no more results to display.
    #
    #  </note>
    #
    # This operation can be called only from the organization's master
    # account.
    #
    # <note markdown="1"> In the current release, a child can have only a single parent.
    #
    #  </note>
    #
    # @option params [required, String] :child_id
    #   The unique identifier (ID) of the OU or account whose parent
    #   containers you want to list. Do not specify a root.
    #
    #   The [regex pattern][1] for a child ID string requires one of the
    #   following:
    #
    #   * Account: a string that consists of exactly 12 digits.
    #
    #   * Organizational unit (OU): a string that begins with "ou-" followed
    #     by from 4 to 32 lower-case letters or digits (the ID of the root
    #     that contains the OU) followed by a second "-" dash and from 8 to
    #     32 additional lower-case letters or digits.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @option params [String] :next_token
    #   Use this parameter if you receive a `NextToken` response in a previous
    #   request that indicates that there is more output available. Set it to
    #   the value of the previous call's `NextToken` response to indicate
    #   where the output should continue from.
    #
    # @option params [Integer] :max_results
    #   (Optional) Use this to limit the number of results you want included
    #   per page in the response. If you do not include this parameter, it
    #   defaults to a value that is specific to the operation. If additional
    #   items exist beyond the maximum you specify, the `NextToken` response
    #   element is present and has a value (is not null). Include that value
    #   as the `NextToken` request parameter in the next call to the operation
    #   to get the next part of the results. Note that Organizations might
    #   return fewer results than the maximum even when there are more results
    #   available. You should check `NextToken` after every operation to
    #   ensure that you receive all of the results.
    #
    # @return [Types::ListParentsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListParentsResponse#parents #parents} => Array&lt;Types::Parent&gt;
    #   * {Types::ListParentsResponse#next_token #next_token} => String
    #
    #
    # @example Example: To retrieve a list of all of the parents of a child OU or account
    #
    #   # The following example shows how to list the root or OUs that contain account 444444444444:/n/n
    #
    #   resp = client.list_parents({
    #     child_id: "444444444444", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     parents: [
    #       {
    #         id: "ou-examplerootid111-exampleouid111", 
    #         type: "ORGANIZATIONAL_UNIT", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_parents({
    #     child_id: "ChildId", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.parents #=> Array
    #   resp.parents[0].id #=> String
    #   resp.parents[0].type #=> String, one of "ROOT", "ORGANIZATIONAL_UNIT"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/ListParents AWS API Documentation
    #
    # @overload list_parents(params = {})
    # @param [Hash] params ({})
    def list_parents(params = {}, options = {})
      req = build_request(:list_parents, params)
      req.send_request(options)
    end

    # Retrieves the list of all policies in an organization of a specified
    # type.
    #
    # <note markdown="1"> Always check the `NextToken` response parameter for a `null` value
    # when calling a `List*` operation. These operations can occasionally
    # return an empty set of results even when there are more results
    # available. The `NextToken` response parameter value is `null` *only*
    # when there are no more results to display.
    #
    #  </note>
    #
    # This operation can be called only from the organization's master
    # account.
    #
    # @option params [required, String] :filter
    #   Specifies the type of policy that you want to include in the response.
    #
    # @option params [String] :next_token
    #   Use this parameter if you receive a `NextToken` response in a previous
    #   request that indicates that there is more output available. Set it to
    #   the value of the previous call's `NextToken` response to indicate
    #   where the output should continue from.
    #
    # @option params [Integer] :max_results
    #   (Optional) Use this to limit the number of results you want included
    #   per page in the response. If you do not include this parameter, it
    #   defaults to a value that is specific to the operation. If additional
    #   items exist beyond the maximum you specify, the `NextToken` response
    #   element is present and has a value (is not null). Include that value
    #   as the `NextToken` request parameter in the next call to the operation
    #   to get the next part of the results. Note that Organizations might
    #   return fewer results than the maximum even when there are more results
    #   available. You should check `NextToken` after every operation to
    #   ensure that you receive all of the results.
    #
    # @return [Types::ListPoliciesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPoliciesResponse#policies #policies} => Array&lt;Types::PolicySummary&gt;
    #   * {Types::ListPoliciesResponse#next_token #next_token} => String
    #
    #
    # @example Example: To retrieve a list policies in the organization
    #
    #   # The following example shows how to get a list of service control policies (SCPs):/n/n
    #
    #   resp = client.list_policies({
    #     filter: "SERVICE_CONTROL_POLICY", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     policies: [
    #       {
    #         arn: "arn:aws:organizations::111111111111:policy/o-exampleorgid/service_control_policy/p-examplepolicyid111", 
    #         aws_managed: false, 
    #         description: "Enables account admins to delegate permissions for any S3 actions to users and roles in their accounts.", 
    #         id: "p-examplepolicyid111", 
    #         name: "AllowAllS3Actions", 
    #         type: "SERVICE_CONTROL_POLICY", 
    #       }, 
    #       {
    #         arn: "arn:aws:organizations::111111111111:policy/o-exampleorgid/service_control_policy/p-examplepolicyid222", 
    #         aws_managed: false, 
    #         description: "Enables account admins to delegate permissions for any EC2 actions to users and roles in their accounts.", 
    #         id: "p-examplepolicyid222", 
    #         name: "AllowAllEC2Actions", 
    #         type: "SERVICE_CONTROL_POLICY", 
    #       }, 
    #       {
    #         arn: "arn:aws:organizations::aws:policy/service_control_policy/p-FullAWSAccess", 
    #         aws_managed: true, 
    #         description: "Allows access to every operation", 
    #         id: "p-FullAWSAccess", 
    #         name: "FullAWSAccess", 
    #         type: "SERVICE_CONTROL_POLICY", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_policies({
    #     filter: "SERVICE_CONTROL_POLICY", # required, accepts SERVICE_CONTROL_POLICY
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.policies #=> Array
    #   resp.policies[0].id #=> String
    #   resp.policies[0].arn #=> String
    #   resp.policies[0].name #=> String
    #   resp.policies[0].description #=> String
    #   resp.policies[0].type #=> String, one of "SERVICE_CONTROL_POLICY"
    #   resp.policies[0].aws_managed #=> Boolean
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/ListPolicies AWS API Documentation
    #
    # @overload list_policies(params = {})
    # @param [Hash] params ({})
    def list_policies(params = {}, options = {})
      req = build_request(:list_policies, params)
      req.send_request(options)
    end

    # Lists the policies that are directly attached to the specified target
    # root, organizational unit (OU), or account. You must specify the
    # policy type that you want included in the returned list.
    #
    # <note markdown="1"> Always check the `NextToken` response parameter for a `null` value
    # when calling a `List*` operation. These operations can occasionally
    # return an empty set of results even when there are more results
    # available. The `NextToken` response parameter value is `null` *only*
    # when there are no more results to display.
    #
    #  </note>
    #
    # This operation can be called only from the organization's master
    # account.
    #
    # @option params [required, String] :target_id
    #   The unique identifier (ID) of the root, organizational unit, or
    #   account whose policies you want to list.
    #
    #   The [regex pattern][1] for a target ID string requires one of the
    #   following:
    #
    #   * Root: a string that begins with "r-" followed by from 4 to 32
    #     lower-case letters or digits.
    #
    #   * Account: a string that consists of exactly 12 digits.
    #
    #   * Organizational unit (OU): a string that begins with "ou-" followed
    #     by from 4 to 32 lower-case letters or digits (the ID of the root
    #     that the OU is in) followed by a second "-" dash and from 8 to 32
    #     additional lower-case letters or digits.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @option params [required, String] :filter
    #   The type of policy that you want to include in the returned list.
    #
    # @option params [String] :next_token
    #   Use this parameter if you receive a `NextToken` response in a previous
    #   request that indicates that there is more output available. Set it to
    #   the value of the previous call's `NextToken` response to indicate
    #   where the output should continue from.
    #
    # @option params [Integer] :max_results
    #   (Optional) Use this to limit the number of results you want included
    #   per page in the response. If you do not include this parameter, it
    #   defaults to a value that is specific to the operation. If additional
    #   items exist beyond the maximum you specify, the `NextToken` response
    #   element is present and has a value (is not null). Include that value
    #   as the `NextToken` request parameter in the next call to the operation
    #   to get the next part of the results. Note that Organizations might
    #   return fewer results than the maximum even when there are more results
    #   available. You should check `NextToken` after every operation to
    #   ensure that you receive all of the results.
    #
    # @return [Types::ListPoliciesForTargetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPoliciesForTargetResponse#policies #policies} => Array&lt;Types::PolicySummary&gt;
    #   * {Types::ListPoliciesForTargetResponse#next_token #next_token} => String
    #
    #
    # @example Example: To retrieve a list policies attached to a root, OU, or account
    #
    #   # The following example shows how to get a list of all service control policies (SCPs) of the type specified by the Filter
    #   # parameter, that are directly attached to an account. The returned list does not include policies that apply to the
    #   # account because of inheritance from its location in an OU hierarchy:/n/n
    #
    #   resp = client.list_policies_for_target({
    #     filter: "SERVICE_CONTROL_POLICY", 
    #     target_id: "444444444444", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     policies: [
    #       {
    #         arn: "arn:aws:organizations::111111111111:policy/o-exampleorgid/service_control_policy/p-examplepolicyid222", 
    #         aws_managed: false, 
    #         description: "Enables account admins to delegate permissions for any EC2 actions to users and roles in their accounts.", 
    #         id: "p-examplepolicyid222", 
    #         name: "AllowAllEC2Actions", 
    #         type: "SERVICE_CONTROL_POLICY", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_policies_for_target({
    #     target_id: "PolicyTargetId", # required
    #     filter: "SERVICE_CONTROL_POLICY", # required, accepts SERVICE_CONTROL_POLICY
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.policies #=> Array
    #   resp.policies[0].id #=> String
    #   resp.policies[0].arn #=> String
    #   resp.policies[0].name #=> String
    #   resp.policies[0].description #=> String
    #   resp.policies[0].type #=> String, one of "SERVICE_CONTROL_POLICY"
    #   resp.policies[0].aws_managed #=> Boolean
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/ListPoliciesForTarget AWS API Documentation
    #
    # @overload list_policies_for_target(params = {})
    # @param [Hash] params ({})
    def list_policies_for_target(params = {}, options = {})
      req = build_request(:list_policies_for_target, params)
      req.send_request(options)
    end

    # Lists the roots that are defined in the current organization.
    #
    # <note markdown="1"> Always check the `NextToken` response parameter for a `null` value
    # when calling a `List*` operation. These operations can occasionally
    # return an empty set of results even when there are more results
    # available. The `NextToken` response parameter value is `null` *only*
    # when there are no more results to display.
    #
    #  </note>
    #
    # This operation can be called only from the organization's master
    # account.
    #
    # <note markdown="1"> Policy types can be enabled and disabled in roots. This is distinct
    # from whether they are available in the organization. When you enable
    # all features, you make policy types available for use in that
    # organization. Individual policy types can then be enabled and disabled
    # in a root. To see the availability of a policy type in an
    # organization, use DescribeOrganization.
    #
    #  </note>
    #
    # @option params [String] :next_token
    #   Use this parameter if you receive a `NextToken` response in a previous
    #   request that indicates that there is more output available. Set it to
    #   the value of the previous call's `NextToken` response to indicate
    #   where the output should continue from.
    #
    # @option params [Integer] :max_results
    #   (Optional) Use this to limit the number of results you want included
    #   per page in the response. If you do not include this parameter, it
    #   defaults to a value that is specific to the operation. If additional
    #   items exist beyond the maximum you specify, the `NextToken` response
    #   element is present and has a value (is not null). Include that value
    #   as the `NextToken` request parameter in the next call to the operation
    #   to get the next part of the results. Note that Organizations might
    #   return fewer results than the maximum even when there are more results
    #   available. You should check `NextToken` after every operation to
    #   ensure that you receive all of the results.
    #
    # @return [Types::ListRootsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListRootsResponse#roots #roots} => Array&lt;Types::Root&gt;
    #   * {Types::ListRootsResponse#next_token #next_token} => String
    #
    #
    # @example Example: To retrieve a list of roots in the organization
    #
    #   # The following example shows how to get the list of the roots in the current organization:/n/n
    #
    #   resp = client.list_roots({
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     roots: [
    #       {
    #         arn: "arn:aws:organizations::111111111111:root/o-exampleorgid/r-examplerootid111", 
    #         id: "r-examplerootid111", 
    #         name: "Root", 
    #         policy_types: [
    #           {
    #             status: "ENABLED", 
    #             type: "SERVICE_CONTROL_POLICY", 
    #           }, 
    #         ], 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_roots({
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.roots #=> Array
    #   resp.roots[0].id #=> String
    #   resp.roots[0].arn #=> String
    #   resp.roots[0].name #=> String
    #   resp.roots[0].policy_types #=> Array
    #   resp.roots[0].policy_types[0].type #=> String, one of "SERVICE_CONTROL_POLICY"
    #   resp.roots[0].policy_types[0].status #=> String, one of "ENABLED", "PENDING_ENABLE", "PENDING_DISABLE"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/ListRoots AWS API Documentation
    #
    # @overload list_roots(params = {})
    # @param [Hash] params ({})
    def list_roots(params = {}, options = {})
      req = build_request(:list_roots, params)
      req.send_request(options)
    end

    # Lists all the roots, organizaitonal units (OUs), and accounts to which
    # the specified policy is attached.
    #
    # <note markdown="1"> Always check the `NextToken` response parameter for a `null` value
    # when calling a `List*` operation. These operations can occasionally
    # return an empty set of results even when there are more results
    # available. The `NextToken` response parameter value is `null` *only*
    # when there are no more results to display.
    #
    #  </note>
    #
    # This operation can be called only from the organization's master
    # account.
    #
    # @option params [required, String] :policy_id
    #   The unique identifier (ID) of the policy for which you want to know
    #   its attachments.
    #
    #   The [regex pattern][1] for a policy ID string requires "p-" followed
    #   by from 8 to 128 lower-case letters or digits.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @option params [String] :next_token
    #   Use this parameter if you receive a `NextToken` response in a previous
    #   request that indicates that there is more output available. Set it to
    #   the value of the previous call's `NextToken` response to indicate
    #   where the output should continue from.
    #
    # @option params [Integer] :max_results
    #   (Optional) Use this to limit the number of results you want included
    #   per page in the response. If you do not include this parameter, it
    #   defaults to a value that is specific to the operation. If additional
    #   items exist beyond the maximum you specify, the `NextToken` response
    #   element is present and has a value (is not null). Include that value
    #   as the `NextToken` request parameter in the next call to the operation
    #   to get the next part of the results. Note that Organizations might
    #   return fewer results than the maximum even when there are more results
    #   available. You should check `NextToken` after every operation to
    #   ensure that you receive all of the results.
    #
    # @return [Types::ListTargetsForPolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTargetsForPolicyResponse#targets #targets} => Array&lt;Types::PolicyTargetSummary&gt;
    #   * {Types::ListTargetsForPolicyResponse#next_token #next_token} => String
    #
    #
    # @example Example: To retrieve a list of roots, OUs, and accounts to which a policy is attached
    #
    #   # The following example shows how to get the list of roots, OUs, and accounts to which the specified policy is
    #   # attached:/n/n
    #
    #   resp = client.list_targets_for_policy({
    #     policy_id: "p-FullAWSAccess", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     targets: [
    #       {
    #         arn: "arn:aws:organizations::111111111111:root/o-exampleorgid/r-examplerootid111", 
    #         name: "Root", 
    #         target_id: "r-examplerootid111", 
    #         type: "ROOT", 
    #       }, 
    #       {
    #         arn: "arn:aws:organizations::111111111111:account/o-exampleorgid/333333333333;", 
    #         name: "Developer Test Account", 
    #         target_id: "333333333333", 
    #         type: "ACCOUNT", 
    #       }, 
    #       {
    #         arn: "arn:aws:organizations::111111111111:ou/o-exampleorgid/ou-examplerootid111-exampleouid111", 
    #         name: "Accounting", 
    #         target_id: "ou-examplerootid111-exampleouid111", 
    #         type: "ORGANIZATIONAL_UNIT", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_targets_for_policy({
    #     policy_id: "PolicyId", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.targets #=> Array
    #   resp.targets[0].target_id #=> String
    #   resp.targets[0].arn #=> String
    #   resp.targets[0].name #=> String
    #   resp.targets[0].type #=> String, one of "ACCOUNT", "ORGANIZATIONAL_UNIT", "ROOT"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/ListTargetsForPolicy AWS API Documentation
    #
    # @overload list_targets_for_policy(params = {})
    # @param [Hash] params ({})
    def list_targets_for_policy(params = {}, options = {})
      req = build_request(:list_targets_for_policy, params)
      req.send_request(options)
    end

    # Moves an account from its current source parent root or organizational
    # unit (OU) to the specified destination parent root or OU.
    #
    # This operation can be called only from the organization's master
    # account.
    #
    # @option params [required, String] :account_id
    #   The unique identifier (ID) of the account that you want to move.
    #
    #   The [regex pattern][1] for an account ID string requires exactly 12
    #   digits.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @option params [required, String] :source_parent_id
    #   The unique identifier (ID) of the root or organizational unit that you
    #   want to move the account from.
    #
    #   The [regex pattern][1] for a parent ID string requires one of the
    #   following:
    #
    #   * Root: a string that begins with "r-" followed by from 4 to 32
    #     lower-case letters or digits.
    #
    #   * Organizational unit (OU): a string that begins with "ou-" followed
    #     by from 4 to 32 lower-case letters or digits (the ID of the root
    #     that the OU is in) followed by a second "-" dash and from 8 to 32
    #     additional lower-case letters or digits.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @option params [required, String] :destination_parent_id
    #   The unique identifier (ID) of the root or organizational unit that you
    #   want to move the account to.
    #
    #   The [regex pattern][1] for a parent ID string requires one of the
    #   following:
    #
    #   * Root: a string that begins with "r-" followed by from 4 to 32
    #     lower-case letters or digits.
    #
    #   * Organizational unit (OU): a string that begins with "ou-" followed
    #     by from 4 to 32 lower-case letters or digits (the ID of the root
    #     that the OU is in) followed by a second "-" dash and from 8 to 32
    #     additional lower-case letters or digits.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To move an OU or account to another OU or the root
    #
    #   # The following example shows how to move a member account from the root to an OU:/n/n
    #
    #   resp = client.move_account({
    #     account_id: "333333333333", 
    #     destination_parent_id: "ou-examplerootid111-exampleouid111", 
    #     source_parent_id: "r-examplerootid111", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.move_account({
    #     account_id: "AccountId", # required
    #     source_parent_id: "ParentId", # required
    #     destination_parent_id: "ParentId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/MoveAccount AWS API Documentation
    #
    # @overload move_account(params = {})
    # @param [Hash] params ({})
    def move_account(params = {}, options = {})
      req = build_request(:move_account, params)
      req.send_request(options)
    end

    # Removes the specified account from the organization.
    #
    # The removed account becomes a stand-alone account that is not a member
    # of any organization. It is no longer subject to any policies and is
    # responsible for its own bill payments. The organization's master
    # account is no longer charged for any expenses accrued by the member
    # account after it is removed from the organization.
    #
    # This operation can be called only from the organization's master
    # account. Member accounts can remove themselves with LeaveOrganization
    # instead.
    #
    # You can remove an account from your organization only if the account
    # is configured with the information required to operate as a standalone
    # account. When you create an account in an organization using the AWS
    # Organizations console, API, or CLI commands, the information required
    # of standalone accounts is *not* automatically collected. For an
    # account that you want to make standalone, you must accept the End User
    # License Agreement (EULA), choose a support plan, provide and verify
    # the required contact information, and provide a current payment
    # method. AWS uses the payment method to charge for any billable (not
    # free tier) AWS activity that occurs while the account is not attached
    # to an organization. To remove an account that does not yet have this
    # information, you must sign in as the member account and follow the
    # steps at [ To leave an organization when all required account
    # information has not yet been provided][1] in the *AWS Organizations
    # User Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_remove.html#leave-without-all-info
    #
    # @option params [required, String] :account_id
    #   The unique identifier (ID) of the member account that you want to
    #   remove from the organization.
    #
    #   The [regex pattern][1] for an account ID string requires exactly 12
    #   digits.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To remove an account from an organization as the master account
    #
    #   # The following example shows you how to remove an account from an organization:
    #
    #   resp = client.remove_account_from_organization({
    #     account_id: "333333333333", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.remove_account_from_organization({
    #     account_id: "AccountId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/RemoveAccountFromOrganization AWS API Documentation
    #
    # @overload remove_account_from_organization(params = {})
    # @param [Hash] params ({})
    def remove_account_from_organization(params = {}, options = {})
      req = build_request(:remove_account_from_organization, params)
      req.send_request(options)
    end

    # Renames the specified organizational unit (OU). The ID and ARN do not
    # change. The child OUs and accounts remain in place, and any attached
    # policies of the OU remain attached.
    #
    # This operation can be called only from the organization's master
    # account.
    #
    # @option params [required, String] :organizational_unit_id
    #   The unique identifier (ID) of the OU that you want to rename. You can
    #   get the ID from the ListOrganizationalUnitsForParent operation.
    #
    #   The [regex pattern][1] for an organizational unit ID string requires
    #   "ou-" followed by from 4 to 32 lower-case letters or digits (the ID
    #   of the root that contains the OU) followed by a second "-" dash and
    #   from 8 to 32 additional lower-case letters or digits.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @option params [String] :name
    #   The new name that you want to assign to the OU.
    #
    #   The [regex pattern][1] that is used to validate this parameter is a
    #   string of any of the characters in the ASCII character range.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @return [Types::UpdateOrganizationalUnitResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateOrganizationalUnitResponse#organizational_unit #organizational_unit} => Types::OrganizationalUnit
    #
    #
    # @example Example: To rename an organizational unit
    #
    #   # The following example shows how to rename an OU. The output confirms the new name:/n/n
    #
    #   resp = client.update_organizational_unit({
    #     name: "AccountingOU", 
    #     organizational_unit_id: "ou-examplerootid111-exampleouid111", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     organizational_unit: {
    #       arn: "arn:aws:organizations::111111111111:ou/o-exampleorgid/ou-examplerootid111-exampleouid111", 
    #       id: "ou-examplerootid111-exampleouid111", 
    #       name: "AccountingOU", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_organizational_unit({
    #     organizational_unit_id: "OrganizationalUnitId", # required
    #     name: "OrganizationalUnitName",
    #   })
    #
    # @example Response structure
    #
    #   resp.organizational_unit.id #=> String
    #   resp.organizational_unit.arn #=> String
    #   resp.organizational_unit.name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/UpdateOrganizationalUnit AWS API Documentation
    #
    # @overload update_organizational_unit(params = {})
    # @param [Hash] params ({})
    def update_organizational_unit(params = {}, options = {})
      req = build_request(:update_organizational_unit, params)
      req.send_request(options)
    end

    # Updates an existing policy with a new name, description, or content.
    # If any parameter is not supplied, that value remains unchanged. Note
    # that you cannot change a policy's type.
    #
    # This operation can be called only from the organization's master
    # account.
    #
    # @option params [required, String] :policy_id
    #   The unique identifier (ID) of the policy that you want to update.
    #
    #   The [regex pattern][1] for a policy ID string requires "p-" followed
    #   by from 8 to 128 lower-case letters or digits.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @option params [String] :name
    #   If provided, the new name for the policy.
    #
    #   The [regex pattern][1] that is used to validate this parameter is a
    #   string of any of the characters in the ASCII character range.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @option params [String] :description
    #   If provided, the new description for the policy.
    #
    # @option params [String] :content
    #   If provided, the new content for the policy. The text must be
    #   correctly formatted JSON that complies with the syntax for the
    #   policy's type. For more information, see [Service Control Policy
    #   Syntax][1] in the *AWS Organizations User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/organizations/latest/userguide/orgs_reference_scp-syntax.html
    #
    # @return [Types::UpdatePolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdatePolicyResponse#policy #policy} => Types::Policy
    #
    #
    # @example Example: To update the details of a policy
    #
    #   # The following example shows how to rename a policy and give it a new description and new content. The output confirms
    #   # the new name and description text:/n/n
    #
    #   resp = client.update_policy({
    #     description: "This description replaces the original.", 
    #     name: "Renamed-Policy", 
    #     policy_id: "p-examplepolicyid111", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     policy: {
    #       content: "{ \"Version\": \"2012-10-17\", \"Statement\": { \"Effect\": \"Allow\", \"Action\": \"ec2:*\", \"Resource\": \"*\" } }", 
    #       policy_summary: {
    #         arn: "arn:aws:organizations::111111111111:policy/o-exampleorgid/service_control_policy/p-examplepolicyid111", 
    #         aws_managed: false, 
    #         description: "This description replaces the original.", 
    #         id: "p-examplepolicyid111", 
    #         name: "Renamed-Policy", 
    #         type: "SERVICE_CONTROL_POLICY", 
    #       }, 
    #     }, 
    #   }
    #
    # @example Example: To update the content of a policy
    #
    #   # The following example shows how to replace the JSON text of the SCP from the preceding example with a new JSON policy
    #   # text string that allows S3 actions instead of EC2 actions:/n/n
    #
    #   resp = client.update_policy({
    #     content: "{ \\\"Version\\\": \\\"2012-10-17\\\", \\\"Statement\\\": {\\\"Effect\\\": \\\"Allow\\\", \\\"Action\\\": \\\"s3:*\\\", \\\"Resource\\\": \\\"*\\\" } }", 
    #     policy_id: "p-examplepolicyid111", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     policy: {
    #       content: "{ \\\"Version\\\": \\\"2012-10-17\\\", \\\"Statement\\\": { \\\"Effect\\\": \\\"Allow\\\", \\\"Action\\\": \\\"s3:*\\\", \\\"Resource\\\": \\\"*\\\" } }", 
    #       policy_summary: {
    #         arn: "arn:aws:organizations::111111111111:policy/o-exampleorgid/service_control_policy/p-examplepolicyid111", 
    #         aws_managed: false, 
    #         description: "This description replaces the original.", 
    #         id: "p-examplepolicyid111", 
    #         name: "Renamed-Policy", 
    #         type: "SERVICE_CONTROL_POLICY", 
    #       }, 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_policy({
    #     policy_id: "PolicyId", # required
    #     name: "PolicyName",
    #     description: "PolicyDescription",
    #     content: "PolicyContent",
    #   })
    #
    # @example Response structure
    #
    #   resp.policy.policy_summary.id #=> String
    #   resp.policy.policy_summary.arn #=> String
    #   resp.policy.policy_summary.name #=> String
    #   resp.policy.policy_summary.description #=> String
    #   resp.policy.policy_summary.type #=> String, one of "SERVICE_CONTROL_POLICY"
    #   resp.policy.policy_summary.aws_managed #=> Boolean
    #   resp.policy.content #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/UpdatePolicy AWS API Documentation
    #
    # @overload update_policy(params = {})
    # @param [Hash] params ({})
    def update_policy(params = {}, options = {})
      req = build_request(:update_policy, params)
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
      context[:gem_name] = 'aws-sdk-organizations'
      context[:gem_version] = '1.13.0'
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
