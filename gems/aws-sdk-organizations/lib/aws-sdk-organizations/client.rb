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

Aws::Plugins::GlobalConfiguration.add_identifier(:organizations)

module Aws::Organizations
  # An API client for Organizations.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::Organizations::Client.new(
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
    #   features in the organization, the user must also have the
    #   `iam:CreateServiceLinkedRole` permission so that AWS Organizations
    #   can create the required service-linked role named
    #   `AWSServiceRoleForOrganizations`. For more information, see [AWS
    #   Organizations and Service-Linked Roles][1] in the *AWS Organizations
    #   User Guide*.
    #
    # * **Enable all features final confirmation** handshake: only a
    #   principal from the master account.
    #
    #   For more information about invitations, see [Inviting an AWS Account
    #   to Join Your Organization][2] in the *AWS Organizations User Guide.*
    #   For more information about requests to enable all features in the
    #   organization, see [Enabling All Features in Your Organization][3] in
    #   the *AWS Organizations User Guide.*
    #
    # After you accept a handshake, it continues to appear in the results of
    # relevant APIs for only 30 days. After that, it's deleted.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/organizations/latest/userguide/orgs_integration_services.html#orgs_integration_service-linked-roles
    # [2]: https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_invites.html
    # [3]: https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_org_support-all-features.html
    #
    # @option params [required, String] :handshake_id
    #   The unique identifier (ID) of the handshake that you want to accept.
    #
    #   The [regex pattern][1] for handshake ID string requires "h-"
    #   followed by from 8 to 32 lowercase letters or digits.
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
    # type of policy. Refer to the *AWS Organizations User Guide* for
    # information about each policy type:
    #
    # * [AISERVICES\_OPT\_OUT\_POLICY][1]
    #
    # * [BACKUP\_POLICY][2]
    #
    # * [SERVICE\_CONTROL\_POLICY][3]
    #
    # * [TAG\_POLICY][4]
    #
    # This operation can be called only from the organization's master
    # account.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_ai-opt-out.html
    # [2]: https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_backup.html
    # [3]: https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_scp.html
    # [4]: https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_tag-policies.html
    #
    # @option params [required, String] :policy_id
    #   The unique identifier (ID) of the policy that you want to attach to
    #   the target. You can get the ID for the policy by calling the
    #   ListPolicies operation.
    #
    #   The [regex pattern][1] for a policy ID string requires "p-" followed
    #   by from 8 to 128 lowercase or uppercase letters, digits, or the
    #   underscore character (\_).
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
    #   * **Root** - A string that begins with "r-" followed by from 4 to 32
    #     lowercase letters or digits.
    #
    #   * **Account** - A string that consists of exactly 12 digits.
    #
    #   * **Organizational unit (OU)** - A string that begins with "ou-"
    #     followed by from 4 to 32 lowercase letters or digits (the ID of the
    #     root that the OU is in). This string is followed by a second "-"
    #     dash and from 8 to 32 additional lowercase letters or digits.
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
    # relevant APIs for only 30 days. After that, it's deleted.
    #
    # @option params [required, String] :handshake_id
    #   The unique identifier (ID) of the handshake that you want to cancel.
    #   You can get the ID from the ListHandshakesForOrganization operation.
    #
    #   The [regex pattern][1] for handshake ID string requires "h-"
    #   followed by from 8 to 32 lowercase letters or digits.
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
    # * Use the `Id` member of the `CreateAccountStatus` response element
    #   from this operation to provide as a parameter to the
    #   DescribeCreateAccountStatus operation.
    #
    # * Check the AWS CloudTrail log for the `CreateAccountResult` event.
    #   For information on using AWS CloudTrail with AWS Organizations, see
    #   [Monitoring the Activity in Your Organization][1] in the *AWS
    #   Organizations User Guide.*
    #
    # The user who calls the API to create an account must have the
    # `organizations:CreateAccount` permission. If you enabled all features
    # in the organization, AWS Organizations creates the required
    # service-linked role named `AWSServiceRoleForOrganizations`. For more
    # information, see [AWS Organizations and Service-Linked Roles][2] in
    # the *AWS Organizations User Guide*.
    #
    # If the request includes tags, then the requester must have the
    # `organizations:TagResource` permission.
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
    # Guide.*
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
    # * Using `CreateAccount` to create multiple temporary accounts isn't
    #   recommended. You can only close an account from the Billing and Cost
    #   Management Console, and you must be signed in as the root user. For
    #   information on the requirements and process for closing an account,
    #   see [Closing an AWS Account][6] in the *AWS Organizations User
    #   Guide*.
    #
    # <note markdown="1"> When you create a member account with this operation, you can choose
    # whether to create the account with the **IAM User and Role Access to
    # Billing Information** switch enabled. If you enable it, IAM users and
    # roles that have appropriate permissions can view billing information
    # for the account. If you disable it, only the account root user can
    # access billing information. For information about how to disable this
    # switch for an account, see [Granting Access to Your Billing
    # Information and Tools][7].
    #
    #  </note>
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/organizations/latest/userguide/orgs_monitoring.html
    # [2]: http://docs.aws.amazon.com/organizations/latest/userguide/orgs_integrate_services.html#orgs_integrate_services-using_slrs
    # [3]: https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_create.html
    # [4]: http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_remove.html#leave-without-all-info
    # [5]: https://console.aws.amazon.com/support/home#/
    # [6]: http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_close.html
    # [7]: https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/grantaccess.html
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
    #   account, see the following links:
    #
    #   * [Accessing and Administering the Member Accounts in Your
    #     Organization][1] in the *AWS Organizations User Guide*
    #
    #   * Steps 2 and 3 in [Tutorial: Delegate Access Across AWS Accounts
    #     Using IAM Roles][2] in the *IAM User Guide*
    #
    #   The [regex pattern][3] that is used to validate this parameter. The
    #   pattern can include uppercase letters, lowercase letters, digits with
    #   no spaces, and any of the following characters: =,.@-
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_access.html#orgs_manage_accounts_create-cross-account-role
    #   [2]: https://docs.aws.amazon.com/IAM/latest/UserGuide/tutorial_cross-account-with-roles.html
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
    #   [1]: https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/grantaccess.html#ControllingAccessWebsite-Activate
    #
    # @option params [Array<Types::Tag>] :tags
    #   A list of tags that you want to attach to the newly created account.
    #   For each tag in the list, you must specify both a tag key and a value.
    #   You can set the value to an empty string, but you can't set it to
    #   `null`. For more information about tagging, see [Tagging AWS
    #   Organizations resources][1] in the AWS Organizations User Guide.
    #
    #   <note markdown="1"> If any one of the tags is invalid or if you exceed the allowed number
    #   of tags for an account, then the entire request fails and the account
    #   is not created.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/organizations/latest/userguide/orgs_tagging.html
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
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
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
    #   resp.create_account_status.gov_cloud_account_id #=> String
    #   resp.create_account_status.failure_reason #=> String, one of "ACCOUNT_LIMIT_EXCEEDED", "EMAIL_ALREADY_EXISTS", "INVALID_ADDRESS", "INVALID_EMAIL", "CONCURRENT_ACCOUNT_MODIFICATION", "INTERNAL_FAILURE", "GOVCLOUD_ACCOUNT_ALREADY_EXISTS", "MISSING_BUSINESS_VALIDATION", "MISSING_PAYMENT_INSTRUMENT"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/CreateAccount AWS API Documentation
    #
    # @overload create_account(params = {})
    # @param [Hash] params ({})
    def create_account(params = {}, options = {})
      req = build_request(:create_account, params)
      req.send_request(options)
    end

    # This action is available if all of the following are true:
    #
    # * You're authorized to create accounts in the AWS GovCloud (US)
    #   Region. For more information on the AWS GovCloud (US) Region, see
    #   the [ *AWS GovCloud User Guide*.][1]
    #
    # * You already have an account in the AWS GovCloud (US) Region that is
    #   paired with a master account of an organization in the commercial
    #   Region.
    #
    # * You call this action from the master account of your organization in
    #   the commercial Region.
    #
    # * You have the `organizations:CreateGovCloudAccount` permission.
    #
    # AWS Organizations automatically creates the required service-linked
    # role named `AWSServiceRoleForOrganizations`. For more information, see
    # [AWS Organizations and Service-Linked Roles][2] in the *AWS
    # Organizations User Guide.*
    #
    # AWS automatically enables AWS CloudTrail for AWS GovCloud (US)
    # accounts, but you should also do the following:
    #
    # * Verify that AWS CloudTrail is enabled to store logs.
    #
    # * Create an S3 bucket for AWS CloudTrail log storage.
    #
    #   For more information, see [Verifying AWS CloudTrail Is Enabled][3]
    #   in the *AWS GovCloud User Guide*.
    #
    # If the request includes tags, then the requester must have the
    # `organizations:TagResource` permission. The tags are attached to the
    # commercial account associated with the GovCloud account, rather than
    # the GovCloud account itself. To add tags to the GovCloud account, call
    # the TagResource operation in the GovCloud Region after the new
    # GovCloud account exists.
    #
    # You call this action from the master account of your organization in
    # the commercial Region to create a standalone AWS account in the AWS
    # GovCloud (US) Region. After the account is created, the master account
    # of an organization in the AWS GovCloud (US) Region can invite it to
    # that organization. For more information on inviting standalone
    # accounts in the AWS GovCloud (US) to join an organization, see [AWS
    # Organizations][4] in the *AWS GovCloud User Guide.*
    #
    # Calling `CreateGovCloudAccount` is an asynchronous request that AWS
    # performs in the background. Because `CreateGovCloudAccount` operates
    # asynchronously, it can return a successful completion message even
    # though account initialization might still be in progress. You might
    # need to wait a few minutes before you can successfully access the
    # account. To check the status of the request, do one of the following:
    #
    # * Use the `OperationId` response element from this operation to
    #   provide as a parameter to the DescribeCreateAccountStatus operation.
    #
    # * Check the AWS CloudTrail log for the `CreateAccountResult` event.
    #   For information on using AWS CloudTrail with Organizations, see
    #   [Monitoring the Activity in Your Organization][5] in the *AWS
    #   Organizations User Guide.*
    #
    #
    #
    # When you call the `CreateGovCloudAccount` action, you create two
    # accounts: a standalone account in the AWS GovCloud (US) Region and an
    # associated account in the commercial Region for billing and support
    # purposes. The account in the commercial Region is automatically a
    # member of the organization whose credentials made the request. Both
    # accounts are associated with the same email address.
    #
    # A role is created in the new account in the commercial Region that
    # allows the master account in the organization in the commercial Region
    # to assume it. An AWS GovCloud (US) account is then created and
    # associated with the commercial account that you just created. A role
    # is also created in the new AWS GovCloud (US) account that can be
    # assumed by the AWS GovCloud (US) account that is associated with the
    # master account of the commercial organization. For more information
    # and to view a diagram that explains how account access works, see [AWS
    # Organizations][4] in the *AWS GovCloud User Guide.*
    #
    # For more information about creating accounts, see [Creating an AWS
    # Account in Your Organization][6] in the *AWS Organizations User
    # Guide.*
    #
    # * When you create an account in an organization using the AWS
    #   Organizations console, API, or CLI commands, the information
    #   required for the account to operate as a standalone account is *not*
    #   automatically collected. This includes a payment method and signing
    #   the end user license agreement (EULA). If you must remove an account
    #   from your organization later, you can do so only after you provide
    #   the missing information. Follow the steps at [ To leave an
    #   organization as a member account][7] in the *AWS Organizations User
    #   Guide.*
    #
    # * If you get an exception that indicates that you exceeded your
    #   account limits for the organization, contact [AWS Support][8].
    #
    # * If you get an exception that indicates that the operation failed
    #   because your organization is still initializing, wait one hour and
    #   then try again. If the error persists, contact [AWS Support][8].
    #
    # * Using `CreateGovCloudAccount` to create multiple temporary accounts
    #   isn't recommended. You can only close an account from the AWS
    #   Billing and Cost Management console, and you must be signed in as
    #   the root user. For information on the requirements and process for
    #   closing an account, see [Closing an AWS Account][9] in the *AWS
    #   Organizations User Guide*.
    #
    # <note markdown="1"> When you create a member account with this operation, you can choose
    # whether to create the account with the **IAM User and Role Access to
    # Billing Information** switch enabled. If you enable it, IAM users and
    # roles that have appropriate permissions can view billing information
    # for the account. If you disable it, only the account root user can
    # access billing information. For information about how to disable this
    # switch for an account, see [Granting Access to Your Billing
    # Information and Tools][10].
    #
    #  </note>
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/govcloud-us/latest/UserGuide/welcome.html
    # [2]: http://docs.aws.amazon.com/organizations/latest/userguide/orgs_integrate_services.html#orgs_integrate_services-using_slrs
    # [3]: http://docs.aws.amazon.com/govcloud-us/latest/UserGuide/verifying-cloudtrail.html
    # [4]: http://docs.aws.amazon.com/govcloud-us/latest/UserGuide/govcloud-organizations.html
    # [5]: http://docs.aws.amazon.com/organizations/latest/userguide/orgs_monitoring.html
    # [6]: https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_create.html
    # [7]: http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_remove.html#leave-without-all-info
    # [8]: https://console.aws.amazon.com/support/home#/
    # [9]: http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_close.html
    # [10]: https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/grantaccess.html
    #
    # @option params [required, String] :email
    #   The email address of the owner to assign to the new member account in
    #   the commercial Region. This email address must not already be
    #   associated with another AWS account. You must use a valid email
    #   address to complete account creation. You can't access the root user
    #   of the account or remove an account that was created with an invalid
    #   email address. Like all request parameters for
    #   `CreateGovCloudAccount`, the request for the email address for the AWS
    #   GovCloud (US) account originates from the commercial Region, not from
    #   the AWS GovCloud (US) Region.
    #
    # @option params [required, String] :account_name
    #   The friendly name of the member account.
    #
    # @option params [String] :role_name
    #   (Optional)
    #
    #   The name of an IAM role that AWS Organizations automatically
    #   preconfigures in the new member accounts in both the AWS GovCloud (US)
    #   Region and in the commercial Region. This role trusts the master
    #   account, allowing users in the master account to assume the role, as
    #   permitted by the master account administrator. The role has
    #   administrator permissions in the new member account.
    #
    #   If you don't specify this parameter, the role name defaults to
    #   `OrganizationAccountAccessRole`.
    #
    #   For more information about how to use this role to access the member
    #   account, see [Accessing and Administering the Member Accounts in Your
    #   Organization][1] in the *AWS Organizations User Guide* and steps 2 and
    #   3 in [Tutorial: Delegate Access Across AWS Accounts Using IAM
    #   Roles][2] in the *IAM User Guide.*
    #
    #   The [regex pattern][3] that is used to validate this parameter. The
    #   pattern can include uppercase letters, lowercase letters, digits with
    #   no spaces, and any of the following characters: =,.@-
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_access.html#orgs_manage_accounts_create-cross-account-role
    #   [2]: https://docs.aws.amazon.com/IAM/latest/UserGuide/tutorial_cross-account-with-roles.html
    #   [3]: http://wikipedia.org/wiki/regex
    #
    # @option params [String] :iam_user_access_to_billing
    #   If set to `ALLOW`, the new linked account in the commercial Region
    #   enables IAM users to access account billing information *if* they have
    #   the required permissions. If set to `DENY`, only the root user of the
    #   new account can access account billing information. For more
    #   information, see [Activating Access to the Billing and Cost Management
    #   Console][1] in the *AWS Billing and Cost Management User Guide.*
    #
    #   If you don't specify this parameter, the value defaults to `ALLOW`,
    #   and IAM users and roles with the required permissions can access
    #   billing information for the new account.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/grantaccess.html#ControllingAccessWebsite-Activate
    #
    # @option params [Array<Types::Tag>] :tags
    #   A list of tags that you want to attach to the newly created account.
    #   These tags are attached to the commercial account associated with the
    #   GovCloud account, and not to the GovCloud account itself. To add tags
    #   to the actual GovCloud account, call the TagResource operation in the
    #   GovCloud region after the new GovCloud account exists.
    #
    #   For each tag in the list, you must specify both a tag key and a value.
    #   You can set the value to an empty string, but you can't set it to
    #   `null`. For more information about tagging, see [Tagging AWS
    #   Organizations resources][1] in the AWS Organizations User Guide.
    #
    #   <note markdown="1"> If any one of the tags is invalid or if you exceed the allowed number
    #   of tags for an account, then the entire request fails and the account
    #   is not created.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/organizations/latest/userguide/orgs_tagging.html
    #
    # @return [Types::CreateGovCloudAccountResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateGovCloudAccountResponse#create_account_status #create_account_status} => Types::CreateAccountStatus
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_gov_cloud_account({
    #     email: "Email", # required
    #     account_name: "AccountName", # required
    #     role_name: "RoleName",
    #     iam_user_access_to_billing: "ALLOW", # accepts ALLOW, DENY
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
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
    #   resp.create_account_status.gov_cloud_account_id #=> String
    #   resp.create_account_status.failure_reason #=> String, one of "ACCOUNT_LIMIT_EXCEEDED", "EMAIL_ALREADY_EXISTS", "INVALID_ADDRESS", "INVALID_EMAIL", "CONCURRENT_ACCOUNT_MODIFICATION", "INTERNAL_FAILURE", "GOVCLOUD_ACCOUNT_ALREADY_EXISTS", "MISSING_BUSINESS_VALIDATION", "MISSING_PAYMENT_INSTRUMENT"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/CreateGovCloudAccount AWS API Documentation
    #
    # @overload create_gov_cloud_account(params = {})
    # @param [Hash] params ({})
    def create_gov_cloud_account(params = {}, options = {})
      req = build_request(:create_gov_cloud_account, params)
      req.send_request(options)
    end

    # Creates an AWS organization. The account whose user is calling the
    # `CreateOrganization` operation automatically becomes the [master
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
    # `CONSOLIDATED_BILLING"`, no policy types are enabled by default, and
    # you can't use organization policies
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/organizations/latest/userguide/orgs_getting-started_concepts.html#account
    #
    # @option params [String] :feature_set
    #   Specifies the feature set supported by the new organization. Each
    #   feature set supports different levels of functionality.
    #
    #   * `CONSOLIDATED_BILLING`\: All member accounts have their bills
    #     consolidated to and paid by the master account. For more
    #     information, see [Consolidated billing][1] in the *AWS Organizations
    #     User Guide.*
    #
    #     The consolidated billing feature subset isn't available for
    #     organizations in the AWS GovCloud (US) Region.
    #
    #   * `ALL`\: In addition to all the features supported by the
    #     consolidated billing feature set, the master account can also apply
    #     any policy type to any member account in the organization. For more
    #     information, see [All features][2] in the *AWS Organizations User
    #     Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/organizations/latest/userguide/orgs_getting-started_concepts.html#feature-set-cb-only
    #   [2]: https://docs.aws.amazon.com/organizations/latest/userguide/orgs_getting-started_concepts.html#feature-set-all
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
    #   resp.organization.available_policy_types[0].type #=> String, one of "SERVICE_CONTROL_POLICY", "TAG_POLICY", "BACKUP_POLICY", "AISERVICES_OPT_OUT_POLICY"
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
    # in the *AWS Organizations User Guide.*
    #
    # If the request includes tags, then the requester must have the
    # `organizations:TagResource` permission.
    #
    # This operation can be called only from the organization's master
    # account.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_ous.html
    #
    # @option params [required, String] :parent_id
    #   The unique identifier (ID) of the parent root or OU that you want to
    #   create the new OU in.
    #
    #   The [regex pattern][1] for a parent ID string requires one of the
    #   following:
    #
    #   * **Root** - A string that begins with "r-" followed by from 4 to 32
    #     lowercase letters or digits.
    #
    #   * **Organizational unit (OU)** - A string that begins with "ou-"
    #     followed by from 4 to 32 lowercase letters or digits (the ID of the
    #     root that the OU is in). This string is followed by a second "-"
    #     dash and from 8 to 32 additional lowercase letters or digits.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @option params [required, String] :name
    #   The friendly name to assign to the new OU.
    #
    # @option params [Array<Types::Tag>] :tags
    #   A list of tags that you want to attach to the newly created OU. For
    #   each tag in the list, you must specify both a tag key and a value. You
    #   can set the value to an empty string, but you can't set it to `null`.
    #   For more information about tagging, see [Tagging AWS Organizations
    #   resources][1] in the AWS Organizations User Guide.
    #
    #   <note markdown="1"> If any one of the tags is invalid or if you exceed the allowed number
    #   of tags for an OU, then the entire request fails and the OU is not
    #   created.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/organizations/latest/userguide/orgs_tagging.html
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
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
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
    # If the request includes tags, then the requester must have the
    # `organizations:TagResource` permission.
    #
    # This operation can be called only from the organization's master
    # account.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies.html
    #
    # @option params [required, String] :content
    #   The policy text content to add to the new policy. The text that you
    #   supply must adhere to the rules of the policy type you specify in the
    #   `Type` parameter.
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
    #   The type of policy to create. You can specify one of the following
    #   values:
    #
    #   * [AISERVICES\_OPT\_OUT\_POLICY][1]
    #
    #   * [BACKUP\_POLICY][2]
    #
    #   * [SERVICE\_CONTROL\_POLICY][3]
    #
    #   * [TAG\_POLICY][4]
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_ai-opt-out.html
    #   [2]: https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_backup.html
    #   [3]: https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_scp.html
    #   [4]: https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_tag-policies.html
    #
    # @option params [Array<Types::Tag>] :tags
    #   A list of tags that you want to attach to the newly created policy.
    #   For each tag in the list, you must specify both a tag key and a value.
    #   You can set the value to an empty string, but you can't set it to
    #   `null`. For more information about tagging, see [Tagging AWS
    #   Organizations resources][1] in the AWS Organizations User Guide.
    #
    #   <note markdown="1"> If any one of the tags is invalid or if you exceed the allowed number
    #   of tags for a policy, then the entire request fails and the policy is
    #   not created.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/organizations/latest/userguide/orgs_tagging.html
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
    #     type: "SERVICE_CONTROL_POLICY", # required, accepts SERVICE_CONTROL_POLICY, TAG_POLICY, BACKUP_POLICY, AISERVICES_OPT_OUT_POLICY
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.policy.policy_summary.id #=> String
    #   resp.policy.policy_summary.arn #=> String
    #   resp.policy.policy_summary.name #=> String
    #   resp.policy.policy_summary.description #=> String
    #   resp.policy.policy_summary.type #=> String, one of "SERVICE_CONTROL_POLICY", "TAG_POLICY", "BACKUP_POLICY", "AISERVICES_OPT_OUT_POLICY"
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
    # reinitiate the process with a new handshake request.
    #
    # After you decline a handshake, it continues to appear in the results
    # of relevant APIs for only 30 days. After that, it's deleted.
    #
    # @option params [required, String] :handshake_id
    #   The unique identifier (ID) of the handshake that you want to decline.
    #   You can get the ID from the ListHandshakesForAccount operation.
    #
    #   The [regex pattern][1] for handshake ID string requires "h-"
    #   followed by from 8 to 32 lowercase letters or digits.
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
    #   "ou-" followed by from 4 to 32 lowercase letters or digits (the ID
    #   of the root that contains the OU). This string is followed by a second
    #   "-" dash and from 8 to 32 additional lowercase letters or digits.
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
    #   by from 8 to 128 lowercase or uppercase letters, digits, or the
    #   underscore character (\_).
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

    # Removes the specified member AWS account as a delegated administrator
    # for the specified AWS service.
    #
    # Deregistering a delegated administrator can have unintended impacts on
    # the functionality of the enabled AWS service. See the documentation
    # for the enabled service before you deregister a delegated
    # administrator so that you understand any potential impacts.
    #
    # You can run this action only for AWS services that support this
    # feature. For a current list of services that support it, see the
    # column *Supports Delegated Administrator* in the table at [AWS
    # Services that you can use with AWS Organizations][1] in the *AWS
    # Organizations User Guide.*
    #
    # This operation can be called only from the organization's master
    # account.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/organizations/latest/userguide/orgs_integrated-services-list.html
    #
    # @option params [required, String] :account_id
    #   The account ID number of the member account in the organization that
    #   you want to deregister as a delegated administrator.
    #
    # @option params [required, String] :service_principal
    #   The service principal name of an AWS service for which the account is
    #   a delegated administrator.
    #
    #   Delegated administrator privileges are revoked for only the specified
    #   AWS service from the member account. If the specified service is the
    #   only service for which the member account is a delegated
    #   administrator, the operation also revokes Organizations read action
    #   permissions.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.deregister_delegated_administrator({
    #     account_id: "AccountId", # required
    #     service_principal: "ServicePrincipal", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/DeregisterDelegatedAdministrator AWS API Documentation
    #
    # @overload deregister_delegated_administrator(params = {})
    # @param [Hash] params ({})
    def deregister_delegated_administrator(params = {}, options = {})
      req = build_request(:deregister_delegated_administrator, params)
      req.send_request(options)
    end

    # Retrieves AWS Organizations-related information about the specified
    # account.
    #
    # This operation can be called only from the organization's master
    # account or by a member account that is a delegated administrator for
    # an AWS service.
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
    # account or by a member account that is a delegated administrator for
    # an AWS service.
    #
    # @option params [required, String] :create_account_request_id
    #   Specifies the `Id` value that uniquely identifies the `CreateAccount`
    #   request. You can get the value from the `CreateAccountStatus.Id`
    #   response in an earlier CreateAccount request, or from the
    #   ListCreateAccountStatus operation.
    #
    #   The [regex pattern][1] for a create account request ID string requires
    #   "car-" followed by from 8 to 32 lowercase letters or digits.
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
    #   resp.create_account_status.gov_cloud_account_id #=> String
    #   resp.create_account_status.failure_reason #=> String, one of "ACCOUNT_LIMIT_EXCEEDED", "EMAIL_ALREADY_EXISTS", "INVALID_ADDRESS", "INVALID_EMAIL", "CONCURRENT_ACCOUNT_MODIFICATION", "INTERNAL_FAILURE", "GOVCLOUD_ACCOUNT_ALREADY_EXISTS", "MISSING_BUSINESS_VALIDATION", "MISSING_PAYMENT_INSTRUMENT"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/DescribeCreateAccountStatus AWS API Documentation
    #
    # @overload describe_create_account_status(params = {})
    # @param [Hash] params ({})
    def describe_create_account_status(params = {}, options = {})
      req = build_request(:describe_create_account_status, params)
      req.send_request(options)
    end

    # Returns the contents of the effective policy for specified policy type
    # and account. The effective policy is the aggregation of any policies
    # of the specified type that the account inherits, plus any policy of
    # that type that is directly attached to the account.
    #
    # This operation applies only to policy types *other* than service
    # control policies (SCPs).
    #
    # For more information about policy inheritance, see [How Policy
    # Inheritance Works][1] in the *AWS Organizations User Guide*.
    #
    # This operation can be called only from the organization's master
    # account or by a member account that is a delegated administrator for
    # an AWS service.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies-inheritance.html
    #
    # @option params [required, String] :policy_type
    #   The type of policy that you want information about. You can specify
    #   one of the following values:
    #
    #   * [AISERVICES\_OPT\_OUT\_POLICY][1]
    #
    #   * [BACKUP\_POLICY][2]
    #
    #   * [TAG\_POLICY][3]
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_ai-opt-out.html
    #   [2]: https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_backup.html
    #   [3]: https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_tag-policies.html
    #
    # @option params [String] :target_id
    #   When you're signed in as the master account, specify the ID of the
    #   account that you want details about. Specifying an organization root
    #   or organizational unit (OU) as the target is not supported.
    #
    # @return [Types::DescribeEffectivePolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeEffectivePolicyResponse#effective_policy #effective_policy} => Types::EffectivePolicy
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_effective_policy({
    #     policy_type: "TAG_POLICY", # required, accepts TAG_POLICY, BACKUP_POLICY, AISERVICES_OPT_OUT_POLICY
    #     target_id: "PolicyTargetId",
    #   })
    #
    # @example Response structure
    #
    #   resp.effective_policy.policy_content #=> String
    #   resp.effective_policy.last_updated_timestamp #=> Time
    #   resp.effective_policy.target_id #=> String
    #   resp.effective_policy.policy_type #=> String, one of "TAG_POLICY", "BACKUP_POLICY", "AISERVICES_OPT_OUT_POLICY"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/DescribeEffectivePolicy AWS API Documentation
    #
    # @overload describe_effective_policy(params = {})
    # @param [Hash] params ({})
    def describe_effective_policy(params = {}, options = {})
      req = build_request(:describe_effective_policy, params)
      req.send_request(options)
    end

    # Retrieves information about a previously requested handshake. The
    # handshake ID comes from the response to the original
    # InviteAccountToOrganization operation that generated the handshake.
    #
    # You can access handshakes that are `ACCEPTED`, `DECLINED`, or
    # `CANCELED` for only 30 days after they change to that state. They're
    # then deleted and no longer accessible.
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
    #   followed by from 8 to 32 lowercase letters or digits.
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
    # <note markdown="1"> Even if a policy type is shown as available in the organization, you
    # can disable it separately at the root level with DisablePolicyType.
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
    #   resp.organization.available_policy_types[0].type #=> String, one of "SERVICE_CONTROL_POLICY", "TAG_POLICY", "BACKUP_POLICY", "AISERVICES_OPT_OUT_POLICY"
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
    # account or by a member account that is a delegated administrator for
    # an AWS service.
    #
    # @option params [required, String] :organizational_unit_id
    #   The unique identifier (ID) of the organizational unit that you want
    #   details about. You can get the ID from the
    #   ListOrganizationalUnitsForParent operation.
    #
    #   The [regex pattern][1] for an organizational unit ID string requires
    #   "ou-" followed by from 4 to 32 lowercase letters or digits (the ID
    #   of the root that contains the OU). This string is followed by a second
    #   "-" dash and from 8 to 32 additional lowercase letters or digits.
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
    # account or by a member account that is a delegated administrator for
    # an AWS service.
    #
    # @option params [required, String] :policy_id
    #   The unique identifier (ID) of the policy that you want details about.
    #   You can get the ID from the ListPolicies or ListPoliciesForTarget
    #   operations.
    #
    #   The [regex pattern][1] for a policy ID string requires "p-" followed
    #   by from 8 to 128 lowercase or uppercase letters, digits, or the
    #   underscore character (\_).
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
    #   resp.policy.policy_summary.type #=> String, one of "SERVICE_CONTROL_POLICY", "TAG_POLICY", "BACKUP_POLICY", "AISERVICES_OPT_OUT_POLICY"
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
    # account.
    #
    # If the policy being detached is a service control policy (SCP), the
    # changes to permissions for AWS Identity and Access Management (IAM)
    # users and roles in affected accounts are immediate.
    #
    # Every root, OU, and account must have at least one SCP attached. If
    # you want to replace the default `FullAWSAccess` policy with an SCP
    # that limits the permissions that can be delegated, you must attach the
    # replacement SCP before you can remove the default SCP. This is the
    # authorization strategy of an "[allow list][1]". If you instead
    # attach a second SCP and leave the `FullAWSAccess` SCP still attached,
    # and specify `"Effect": "Deny"` in the second SCP to override the
    # `"Effect": "Allow"` in the `FullAWSAccess` policy (or any other
    # attached SCP), you're using the authorization strategy of a "[deny
    # list][2]".
    #
    # This operation can be called only from the organization's master
    # account.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/organizations/latest/userguide/SCP_strategies.html#orgs_policies_allowlist
    # [2]: https://docs.aws.amazon.com/organizations/latest/userguide/SCP_strategies.html#orgs_policies_denylist
    #
    # @option params [required, String] :policy_id
    #   The unique identifier (ID) of the policy you want to detach. You can
    #   get the ID from the ListPolicies or ListPoliciesForTarget operations.
    #
    #   The [regex pattern][1] for a policy ID string requires "p-" followed
    #   by from 8 to 128 lowercase or uppercase letters, digits, or the
    #   underscore character (\_).
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @option params [required, String] :target_id
    #   The unique identifier (ID) of the root, OU, or account that you want
    #   to detach the policy from. You can get the ID from the ListRoots,
    #   ListOrganizationalUnitsForParent, or ListAccounts operations.
    #
    #   The [regex pattern][1] for a target ID string requires one of the
    #   following:
    #
    #   * **Root** - A string that begins with "r-" followed by from 4 to 32
    #     lowercase letters or digits.
    #
    #   * **Account** - A string that consists of exactly 12 digits.
    #
    #   * **Organizational unit (OU)** - A string that begins with "ou-"
    #     followed by from 4 to 32 lowercase letters or digits (the ID of the
    #     root that the OU is in). This string is followed by a second "-"
    #     dash and from 8 to 32 additional lowercase letters or digits.
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
    # Services][2] in the *AWS Organizations User Guide.*
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

    # Disables an organizational policy type in a root. A policy of a
    # certain type can be attached to entities in a root only if that type
    # is enabled in the root. After you perform this operation, you no
    # longer can attach policies of the specified type to that root or to
    # any organizational unit (OU) or account in that root. You can undo
    # this by using the EnablePolicyType operation.
    #
    # This is an asynchronous request that AWS performs in the background.
    # If you disable a policy type for a root, it still appears enabled for
    # the organization if [all features][1] are enabled for the
    # organization. AWS recommends that you first use ListRoots to see the
    # status of policy types for a specified root, and then use this
    # operation.
    #
    # This operation can be called only from the organization's master
    # account.
    #
    # To view the status of available policy types in the organization, use
    # DescribeOrganization.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_org_support-all-features.html
    #
    # @option params [required, String] :root_id
    #   The unique identifier (ID) of the root in which you want to disable a
    #   policy type. You can get the ID from the ListRoots operation.
    #
    #   The [regex pattern][1] for a root ID string requires "r-" followed
    #   by from 4 to 32 lowercase letters or digits.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @option params [required, String] :policy_type
    #   The policy type that you want to disable in this root. You can specify
    #   one of the following values:
    #
    #   * [AISERVICES\_OPT\_OUT\_POLICY][1]
    #
    #   * [BACKUP\_POLICY][2]
    #
    #   * [SERVICE\_CONTROL\_POLICY][3]
    #
    #   * [TAG\_POLICY][4]
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_ai-opt-out.html
    #   [2]: https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_backup.html
    #   [3]: https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_scp.html
    #   [4]: https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_tag-policies.html
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
    #     policy_type: "SERVICE_CONTROL_POLICY", # required, accepts SERVICE_CONTROL_POLICY, TAG_POLICY, BACKUP_POLICY, AISERVICES_OPT_OUT_POLICY
    #   })
    #
    # @example Response structure
    #
    #   resp.root.id #=> String
    #   resp.root.arn #=> String
    #   resp.root.name #=> String
    #   resp.root.policy_types #=> Array
    #   resp.root.policy_types[0].type #=> String, one of "SERVICE_CONTROL_POLICY", "TAG_POLICY", "BACKUP_POLICY", "AISERVICES_OPT_OUT_POLICY"
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
    # Services][2] in the *AWS Organizations User Guide.*
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
    # Organization][1] in the *AWS Organizations User Guide.*
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
    # [1]: https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_org_support-all-features.html
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
    # This is an asynchronous request that AWS performs in the background.
    # AWS recommends that you first use ListRoots to see the status of
    # policy types for a specified root, and then use this operation.
    #
    # This operation can be called only from the organization's master
    # account.
    #
    # You can enable a policy type in a root only if that policy type is
    # available in the organization. To view the status of available policy
    # types in the organization, use DescribeOrganization.
    #
    # @option params [required, String] :root_id
    #   The unique identifier (ID) of the root in which you want to enable a
    #   policy type. You can get the ID from the ListRoots operation.
    #
    #   The [regex pattern][1] for a root ID string requires "r-" followed
    #   by from 4 to 32 lowercase letters or digits.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @option params [required, String] :policy_type
    #   The policy type that you want to enable. You can specify one of the
    #   following values:
    #
    #   * [AISERVICES\_OPT\_OUT\_POLICY][1]
    #
    #   * [BACKUP\_POLICY][2]
    #
    #   * [SERVICE\_CONTROL\_POLICY][3]
    #
    #   * [TAG\_POLICY][4]
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_ai-opt-out.html
    #   [2]: https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_backup.html
    #   [3]: https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_scp.html
    #   [4]: https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_tag-policies.html
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
    #     policy_type: "SERVICE_CONTROL_POLICY", # required, accepts SERVICE_CONTROL_POLICY, TAG_POLICY, BACKUP_POLICY, AISERVICES_OPT_OUT_POLICY
    #   })
    #
    # @example Response structure
    #
    #   resp.root.id #=> String
    #   resp.root.arn #=> String
    #   resp.root.name #=> String
    #   resp.root.policy_types #=> Array
    #   resp.root.policy_types[0].type #=> String, one of "SERVICE_CONTROL_POLICY", "TAG_POLICY", "BACKUP_POLICY", "AISERVICES_OPT_OUT_POLICY"
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
    # member account. AWS Organizations sends email on your behalf to the
    # email address that is associated with the other account's owner. The
    # invitation is implemented as a Handshake whose details are in the
    # response.
    #
    # * You can invite AWS accounts only from the same seller as the master
    #   account. For example, if your organization's master account was
    #   created by Amazon Internet Services Pvt. Ltd (AISPL), an AWS seller
    #   in India, you can invite only other AISPL accounts to your
    #   organization. You can't combine accounts from AISPL and AWS or from
    #   any other AWS seller. For more information, see [Consolidated
    #   Billing in India][1].
    #
    # * If you receive an exception that indicates that you exceeded your
    #   account limits for the organization or that the operation failed
    #   because your organization is still initializing, wait one hour and
    #   then try again. If the error persists after an hour, contact [AWS
    #   Support][2].
    #
    # If the request includes tags, then the requester must have the
    # `organizations:TagResource` permission.
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
    #   If you specify `"Type": "ACCOUNT"`, you must provide the AWS account
    #   ID number as the `Id`. If you specify `"Type": "EMAIL"`, you must
    #   specify the email address that is associated with the account.
    #
    #   `--target Id=diego@example.com,Type=EMAIL`
    #
    # @option params [String] :notes
    #   Additional information that you want to include in the generated email
    #   to the recipient account owner.
    #
    # @option params [Array<Types::Tag>] :tags
    #   A list of tags that you want to attach to the account when it becomes
    #   a member of the organization. For each tag in the list, you must
    #   specify both a tag key and a value. You can set the value to an empty
    #   string, but you can't set it to `null`. For more information about
    #   tagging, see [Tagging AWS Organizations resources][1] in the AWS
    #   Organizations User Guide.
    #
    #   Any tags in the request are checked for compliance with any applicable
    #   tag policies when the request is made. The request is rejected if the
    #   tags in the request don't match the requirements of the policy at
    #   that time. Tag policy compliance is <i> <b>not</b> </i> checked again
    #   when the invitation is accepted and the tags are actually attached to
    #   the account. That means that if the tag policy changes between the
    #   invitation and the acceptance, then that tags could potentially be
    #   non-compliant.
    #
    #   <note markdown="1"> If any one of the tags is invalid or if you exceed the allowed number
    #   of tags for an account, then the entire request fails and invitations
    #   are not sent.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/organizations/latest/userguide/orgs_tagging.html
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
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
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
    #   administrators of member accounts can do. This includes preventing
    #   them from successfully calling `LeaveOrganization` and leaving the
    #   organization.
    #
    # * You can leave an organization as a member account only if the
    #   account is configured with the information required to operate as a
    #   standalone account. When you create an account in an organization
    #   using the AWS Organizations console, API, or CLI commands, the
    #   information required of standalone accounts is *not* automatically
    #   collected. For each account that you want to make standalone, you
    #   must perform the following steps. If any of the steps are already
    #   completed for this account, that step doesn't appear.
    #
    #   * Choose a support plan
    #
    #   * Provide and verify the required contact information
    #
    #   * Provide a current payment method
    #
    #   AWS uses the payment method to charge for any billable (not free
    #   tier) AWS activity that occurs while the account isn't attached to
    #   an organization. Follow the steps at [ To leave an organization when
    #   all required account information has not yet been provided][1] in
    #   the *AWS Organizations User Guide.*
    #
    # * You can leave an organization only after you enable IAM user access
    #   to billing in your account. For more information, see [Activating
    #   Access to the Billing and Cost Management Console][2] in the *AWS
    #   Billing and Cost Management User Guide.*
    #
    # * After the account leaves the organization, all tags that were
    #   attached to the account object in the organization are deleted. AWS
    #   accounts outside of an organization do not support tags.
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
    # Services][1] in the *AWS Organizations User Guide.*
    #
    # This operation can be called only from the organization's master
    # account or by a member account that is a delegated administrator for
    # an AWS service.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/organizations/latest/userguide/orgs_integrate_services.html
    #
    # @option params [String] :next_token
    #   The parameter for receiving additional results if you receive a
    #   `NextToken` response in a previous request. A `NextToken` response
    #   indicates that more output is available. Set this parameter to the
    #   value of the previous call's `NextToken` response to indicate where
    #   the output should continue from.
    #
    # @option params [Integer] :max_results
    #   The total number of results that you want included on each page of the
    #   response. If you do not include this parameter, it defaults to a value
    #   that is specific to the operation. If additional items exist beyond
    #   the maximum you specify, the `NextToken` response element is present
    #   and has a value (is not null). Include that value as the `NextToken`
    #   request parameter in the next call to the operation to get the next
    #   part of the results. Note that Organizations might return fewer
    #   results than the maximum even when there are more results available.
    #   You should check `NextToken` after every operation to ensure that you
    #   receive all of the results.
    #
    # @return [Types::ListAWSServiceAccessForOrganizationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAWSServiceAccessForOrganizationResponse#enabled_service_principals #enabled_service_principals} => Array&lt;Types::EnabledServicePrincipal&gt;
    #   * {Types::ListAWSServiceAccessForOrganizationResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
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
    # account or by a member account that is a delegated administrator for
    # an AWS service.
    #
    # @option params [String] :next_token
    #   The parameter for receiving additional results if you receive a
    #   `NextToken` response in a previous request. A `NextToken` response
    #   indicates that more output is available. Set this parameter to the
    #   value of the previous call's `NextToken` response to indicate where
    #   the output should continue from.
    #
    # @option params [Integer] :max_results
    #   The total number of results that you want included on each page of the
    #   response. If you do not include this parameter, it defaults to a value
    #   that is specific to the operation. If additional items exist beyond
    #   the maximum you specify, the `NextToken` response element is present
    #   and has a value (is not null). Include that value as the `NextToken`
    #   request parameter in the next call to the operation to get the next
    #   part of the results. Note that Organizations might return fewer
    #   results than the maximum even when there are more results available.
    #   You should check `NextToken` after every operation to ensure that you
    #   receive all of the results.
    #
    # @return [Types::ListAccountsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAccountsResponse#accounts #accounts} => Array&lt;Types::Account&gt;
    #   * {Types::ListAccountsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
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
    # root, you get a list of all the accounts that aren't in any OU. If
    # you specify an OU, you get a list of all the accounts in only that OU
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
    # account or by a member account that is a delegated administrator for
    # an AWS service.
    #
    # @option params [required, String] :parent_id
    #   The unique identifier (ID) for the parent root or organization unit
    #   (OU) whose accounts you want to list.
    #
    # @option params [String] :next_token
    #   The parameter for receiving additional results if you receive a
    #   `NextToken` response in a previous request. A `NextToken` response
    #   indicates that more output is available. Set this parameter to the
    #   value of the previous call's `NextToken` response to indicate where
    #   the output should continue from.
    #
    # @option params [Integer] :max_results
    #   The total number of results that you want included on each page of the
    #   response. If you do not include this parameter, it defaults to a value
    #   that is specific to the operation. If additional items exist beyond
    #   the maximum you specify, the `NextToken` response element is present
    #   and has a value (is not null). Include that value as the `NextToken`
    #   request parameter in the next call to the operation to get the next
    #   part of the results. Note that Organizations might return fewer
    #   results than the maximum even when there are more results available.
    #   You should check `NextToken` after every operation to ensure that you
    #   receive all of the results.
    #
    # @return [Types::ListAccountsForParentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAccountsForParentResponse#accounts #accounts} => Array&lt;Types::Account&gt;
    #   * {Types::ListAccountsForParentResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
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
    # account or by a member account that is a delegated administrator for
    # an AWS service.
    #
    # @option params [required, String] :parent_id
    #   The unique identifier (ID) for the parent root or OU whose children
    #   you want to list.
    #
    #   The [regex pattern][1] for a parent ID string requires one of the
    #   following:
    #
    #   * **Root** - A string that begins with "r-" followed by from 4 to 32
    #     lowercase letters or digits.
    #
    #   * **Organizational unit (OU)** - A string that begins with "ou-"
    #     followed by from 4 to 32 lowercase letters or digits (the ID of the
    #     root that the OU is in). This string is followed by a second "-"
    #     dash and from 8 to 32 additional lowercase letters or digits.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @option params [required, String] :child_type
    #   Filters the output to include only the specified child type.
    #
    # @option params [String] :next_token
    #   The parameter for receiving additional results if you receive a
    #   `NextToken` response in a previous request. A `NextToken` response
    #   indicates that more output is available. Set this parameter to the
    #   value of the previous call's `NextToken` response to indicate where
    #   the output should continue from.
    #
    # @option params [Integer] :max_results
    #   The total number of results that you want included on each page of the
    #   response. If you do not include this parameter, it defaults to a value
    #   that is specific to the operation. If additional items exist beyond
    #   the maximum you specify, the `NextToken` response element is present
    #   and has a value (is not null). Include that value as the `NextToken`
    #   request parameter in the next call to the operation to get the next
    #   part of the results. Note that Organizations might return fewer
    #   results than the maximum even when there are more results available.
    #   You should check `NextToken` after every operation to ensure that you
    #   receive all of the results.
    #
    # @return [Types::ListChildrenResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListChildrenResponse#children #children} => Array&lt;Types::Child&gt;
    #   * {Types::ListChildrenResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
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
    # account or by a member account that is a delegated administrator for
    # an AWS service.
    #
    # @option params [Array<String>] :states
    #   A list of one or more states that you want included in the response.
    #   If this parameter isn't present, all requests are included in the
    #   response.
    #
    # @option params [String] :next_token
    #   The parameter for receiving additional results if you receive a
    #   `NextToken` response in a previous request. A `NextToken` response
    #   indicates that more output is available. Set this parameter to the
    #   value of the previous call's `NextToken` response to indicate where
    #   the output should continue from.
    #
    # @option params [Integer] :max_results
    #   The total number of results that you want included on each page of the
    #   response. If you do not include this parameter, it defaults to a value
    #   that is specific to the operation. If additional items exist beyond
    #   the maximum you specify, the `NextToken` response element is present
    #   and has a value (is not null). Include that value as the `NextToken`
    #   request parameter in the next call to the operation to get the next
    #   part of the results. Note that Organizations might return fewer
    #   results than the maximum even when there are more results available.
    #   You should check `NextToken` after every operation to ensure that you
    #   receive all of the results.
    #
    # @return [Types::ListCreateAccountStatusResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListCreateAccountStatusResponse#create_account_statuses #create_account_statuses} => Array&lt;Types::CreateAccountStatus&gt;
    #   * {Types::ListCreateAccountStatusResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
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
    #   resp.create_account_statuses[0].gov_cloud_account_id #=> String
    #   resp.create_account_statuses[0].failure_reason #=> String, one of "ACCOUNT_LIMIT_EXCEEDED", "EMAIL_ALREADY_EXISTS", "INVALID_ADDRESS", "INVALID_EMAIL", "CONCURRENT_ACCOUNT_MODIFICATION", "INTERNAL_FAILURE", "GOVCLOUD_ACCOUNT_ALREADY_EXISTS", "MISSING_BUSINESS_VALIDATION", "MISSING_PAYMENT_INSTRUMENT"
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

    # Lists the AWS accounts that are designated as delegated administrators
    # in this organization.
    #
    # This operation can be called only from the organization's master
    # account or by a member account that is a delegated administrator for
    # an AWS service.
    #
    # @option params [String] :service_principal
    #   Specifies a service principal name. If specified, then the operation
    #   lists the delegated administrators only for the specified service.
    #
    #   If you don't specify a service principal, the operation lists all
    #   delegated administrators for all services in your organization.
    #
    # @option params [String] :next_token
    #   The parameter for receiving additional results if you receive a
    #   `NextToken` response in a previous request. A `NextToken` response
    #   indicates that more output is available. Set this parameter to the
    #   value of the previous call's `NextToken` response to indicate where
    #   the output should continue from.
    #
    # @option params [Integer] :max_results
    #   The total number of results that you want included on each page of the
    #   response. If you do not include this parameter, it defaults to a value
    #   that is specific to the operation. If additional items exist beyond
    #   the maximum you specify, the `NextToken` response element is present
    #   and has a value (is not null). Include that value as the `NextToken`
    #   request parameter in the next call to the operation to get the next
    #   part of the results. Note that Organizations might return fewer
    #   results than the maximum even when there are more results available.
    #   You should check `NextToken` after every operation to ensure that you
    #   receive all of the results.
    #
    # @return [Types::ListDelegatedAdministratorsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDelegatedAdministratorsResponse#delegated_administrators #delegated_administrators} => Array&lt;Types::DelegatedAdministrator&gt;
    #   * {Types::ListDelegatedAdministratorsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_delegated_administrators({
    #     service_principal: "ServicePrincipal",
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.delegated_administrators #=> Array
    #   resp.delegated_administrators[0].id #=> String
    #   resp.delegated_administrators[0].arn #=> String
    #   resp.delegated_administrators[0].email #=> String
    #   resp.delegated_administrators[0].name #=> String
    #   resp.delegated_administrators[0].status #=> String, one of "ACTIVE", "SUSPENDED"
    #   resp.delegated_administrators[0].joined_method #=> String, one of "INVITED", "CREATED"
    #   resp.delegated_administrators[0].joined_timestamp #=> Time
    #   resp.delegated_administrators[0].delegation_enabled_date #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/ListDelegatedAdministrators AWS API Documentation
    #
    # @overload list_delegated_administrators(params = {})
    # @param [Hash] params ({})
    def list_delegated_administrators(params = {}, options = {})
      req = build_request(:list_delegated_administrators, params)
      req.send_request(options)
    end

    # List the AWS services for which the specified account is a delegated
    # administrator.
    #
    # This operation can be called only from the organization's master
    # account or by a member account that is a delegated administrator for
    # an AWS service.
    #
    # @option params [required, String] :account_id
    #   The account ID number of a delegated administrator account in the
    #   organization.
    #
    # @option params [String] :next_token
    #   The parameter for receiving additional results if you receive a
    #   `NextToken` response in a previous request. A `NextToken` response
    #   indicates that more output is available. Set this parameter to the
    #   value of the previous call's `NextToken` response to indicate where
    #   the output should continue from.
    #
    # @option params [Integer] :max_results
    #   The total number of results that you want included on each page of the
    #   response. If you do not include this parameter, it defaults to a value
    #   that is specific to the operation. If additional items exist beyond
    #   the maximum you specify, the `NextToken` response element is present
    #   and has a value (is not null). Include that value as the `NextToken`
    #   request parameter in the next call to the operation to get the next
    #   part of the results. Note that Organizations might return fewer
    #   results than the maximum even when there are more results available.
    #   You should check `NextToken` after every operation to ensure that you
    #   receive all of the results.
    #
    # @return [Types::ListDelegatedServicesForAccountResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDelegatedServicesForAccountResponse#delegated_services #delegated_services} => Array&lt;Types::DelegatedService&gt;
    #   * {Types::ListDelegatedServicesForAccountResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_delegated_services_for_account({
    #     account_id: "AccountId", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.delegated_services #=> Array
    #   resp.delegated_services[0].service_principal #=> String
    #   resp.delegated_services[0].delegation_enabled_date #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/ListDelegatedServicesForAccount AWS API Documentation
    #
    # @overload list_delegated_services_for_account(params = {})
    # @param [Hash] params ({})
    def list_delegated_services_for_account(params = {}, options = {})
      req = build_request(:list_delegated_services_for_account, params)
      req.send_request(options)
    end

    # Lists the current handshakes that are associated with the account of
    # the requesting user.
    #
    # Handshakes that are `ACCEPTED`, `DECLINED`, or `CANCELED` appear in
    # the results of this API for only 30 days after changing to that state.
    # After that, they're deleted and no longer accessible.
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
    #   to only a specified type, such as `INVITE`, `ENABLE_ALL_FEATURES`, or
    #   `APPROVE_ALL_FEATURES`. Alternatively, for the `ENABLE_ALL_FEATURES`
    #   handshake that generates a separate child handshake for each member
    #   account, you can specify `ParentHandshakeId` to see only the
    #   handshakes that were generated by that parent request.
    #
    # @option params [String] :next_token
    #   The parameter for receiving additional results if you receive a
    #   `NextToken` response in a previous request. A `NextToken` response
    #   indicates that more output is available. Set this parameter to the
    #   value of the previous call's `NextToken` response to indicate where
    #   the output should continue from.
    #
    # @option params [Integer] :max_results
    #   The total number of results that you want included on each page of the
    #   response. If you do not include this parameter, it defaults to a value
    #   that is specific to the operation. If additional items exist beyond
    #   the maximum you specify, the `NextToken` response element is present
    #   and has a value (is not null). Include that value as the `NextToken`
    #   request parameter in the next call to the operation to get the next
    #   part of the results. Note that Organizations might return fewer
    #   results than the maximum even when there are more results available.
    #   You should check `NextToken` after every operation to ensure that you
    #   receive all of the results.
    #
    # @return [Types::ListHandshakesForAccountResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListHandshakesForAccountResponse#handshakes #handshakes} => Array&lt;Types::Handshake&gt;
    #   * {Types::ListHandshakesForAccountResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
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
    # Handshakes that are `ACCEPTED`, `DECLINED`, or `CANCELED` appear in
    # the results of this API for only 30 days after changing to that state.
    # After that, they're deleted and no longer accessible.
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
    # account or by a member account that is a delegated administrator for
    # an AWS service.
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
    #   The parameter for receiving additional results if you receive a
    #   `NextToken` response in a previous request. A `NextToken` response
    #   indicates that more output is available. Set this parameter to the
    #   value of the previous call's `NextToken` response to indicate where
    #   the output should continue from.
    #
    # @option params [Integer] :max_results
    #   The total number of results that you want included on each page of the
    #   response. If you do not include this parameter, it defaults to a value
    #   that is specific to the operation. If additional items exist beyond
    #   the maximum you specify, the `NextToken` response element is present
    #   and has a value (is not null). Include that value as the `NextToken`
    #   request parameter in the next call to the operation to get the next
    #   part of the results. Note that Organizations might return fewer
    #   results than the maximum even when there are more results available.
    #   You should check `NextToken` after every operation to ensure that you
    #   receive all of the results.
    #
    # @return [Types::ListHandshakesForOrganizationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListHandshakesForOrganizationResponse#handshakes #handshakes} => Array&lt;Types::Handshake&gt;
    #   * {Types::ListHandshakesForOrganizationResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
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
    # account or by a member account that is a delegated administrator for
    # an AWS service.
    #
    # @option params [required, String] :parent_id
    #   The unique identifier (ID) of the root or OU whose child OUs you want
    #   to list.
    #
    #   The [regex pattern][1] for a parent ID string requires one of the
    #   following:
    #
    #   * **Root** - A string that begins with "r-" followed by from 4 to 32
    #     lowercase letters or digits.
    #
    #   * **Organizational unit (OU)** - A string that begins with "ou-"
    #     followed by from 4 to 32 lowercase letters or digits (the ID of the
    #     root that the OU is in). This string is followed by a second "-"
    #     dash and from 8 to 32 additional lowercase letters or digits.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @option params [String] :next_token
    #   The parameter for receiving additional results if you receive a
    #   `NextToken` response in a previous request. A `NextToken` response
    #   indicates that more output is available. Set this parameter to the
    #   value of the previous call's `NextToken` response to indicate where
    #   the output should continue from.
    #
    # @option params [Integer] :max_results
    #   The total number of results that you want included on each page of the
    #   response. If you do not include this parameter, it defaults to a value
    #   that is specific to the operation. If additional items exist beyond
    #   the maximum you specify, the `NextToken` response element is present
    #   and has a value (is not null). Include that value as the `NextToken`
    #   request parameter in the next call to the operation to get the next
    #   part of the results. Note that Organizations might return fewer
    #   results than the maximum even when there are more results available.
    #   You should check `NextToken` after every operation to ensure that you
    #   receive all of the results.
    #
    # @return [Types::ListOrganizationalUnitsForParentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListOrganizationalUnitsForParentResponse#organizational_units #organizational_units} => Array&lt;Types::OrganizationalUnit&gt;
    #   * {Types::ListOrganizationalUnitsForParentResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
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
    # account or by a member account that is a delegated administrator for
    # an AWS service.
    #
    # <note markdown="1"> In the current release, a child can have only a single parent.
    #
    #  </note>
    #
    # @option params [required, String] :child_id
    #   The unique identifier (ID) of the OU or account whose parent
    #   containers you want to list. Don't specify a root.
    #
    #   The [regex pattern][1] for a child ID string requires one of the
    #   following:
    #
    #   * **Account** - A string that consists of exactly 12 digits.
    #
    #   * **Organizational unit (OU)** - A string that begins with "ou-"
    #     followed by from 4 to 32 lowercase letters or digits (the ID of the
    #     root that contains the OU). This string is followed by a second
    #     "-" dash and from 8 to 32 additional lowercase letters or digits.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @option params [String] :next_token
    #   The parameter for receiving additional results if you receive a
    #   `NextToken` response in a previous request. A `NextToken` response
    #   indicates that more output is available. Set this parameter to the
    #   value of the previous call's `NextToken` response to indicate where
    #   the output should continue from.
    #
    # @option params [Integer] :max_results
    #   The total number of results that you want included on each page of the
    #   response. If you do not include this parameter, it defaults to a value
    #   that is specific to the operation. If additional items exist beyond
    #   the maximum you specify, the `NextToken` response element is present
    #   and has a value (is not null). Include that value as the `NextToken`
    #   request parameter in the next call to the operation to get the next
    #   part of the results. Note that Organizations might return fewer
    #   results than the maximum even when there are more results available.
    #   You should check `NextToken` after every operation to ensure that you
    #   receive all of the results.
    #
    # @return [Types::ListParentsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListParentsResponse#parents #parents} => Array&lt;Types::Parent&gt;
    #   * {Types::ListParentsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
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
    # account or by a member account that is a delegated administrator for
    # an AWS service.
    #
    # @option params [required, String] :filter
    #   Specifies the type of policy that you want to include in the response.
    #   You must specify one of the following values:
    #
    #   * [AISERVICES\_OPT\_OUT\_POLICY][1]
    #
    #   * [BACKUP\_POLICY][2]
    #
    #   * [SERVICE\_CONTROL\_POLICY][3]
    #
    #   * [TAG\_POLICY][4]
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_ai-opt-out.html
    #   [2]: https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_backup.html
    #   [3]: https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_scp.html
    #   [4]: https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_tag-policies.html
    #
    # @option params [String] :next_token
    #   The parameter for receiving additional results if you receive a
    #   `NextToken` response in a previous request. A `NextToken` response
    #   indicates that more output is available. Set this parameter to the
    #   value of the previous call's `NextToken` response to indicate where
    #   the output should continue from.
    #
    # @option params [Integer] :max_results
    #   The total number of results that you want included on each page of the
    #   response. If you do not include this parameter, it defaults to a value
    #   that is specific to the operation. If additional items exist beyond
    #   the maximum you specify, the `NextToken` response element is present
    #   and has a value (is not null). Include that value as the `NextToken`
    #   request parameter in the next call to the operation to get the next
    #   part of the results. Note that Organizations might return fewer
    #   results than the maximum even when there are more results available.
    #   You should check `NextToken` after every operation to ensure that you
    #   receive all of the results.
    #
    # @return [Types::ListPoliciesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPoliciesResponse#policies #policies} => Array&lt;Types::PolicySummary&gt;
    #   * {Types::ListPoliciesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
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
    #     filter: "SERVICE_CONTROL_POLICY", # required, accepts SERVICE_CONTROL_POLICY, TAG_POLICY, BACKUP_POLICY, AISERVICES_OPT_OUT_POLICY
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
    #   resp.policies[0].type #=> String, one of "SERVICE_CONTROL_POLICY", "TAG_POLICY", "BACKUP_POLICY", "AISERVICES_OPT_OUT_POLICY"
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
    # account or by a member account that is a delegated administrator for
    # an AWS service.
    #
    # @option params [required, String] :target_id
    #   The unique identifier (ID) of the root, organizational unit, or
    #   account whose policies you want to list.
    #
    #   The [regex pattern][1] for a target ID string requires one of the
    #   following:
    #
    #   * **Root** - A string that begins with "r-" followed by from 4 to 32
    #     lowercase letters or digits.
    #
    #   * **Account** - A string that consists of exactly 12 digits.
    #
    #   * **Organizational unit (OU)** - A string that begins with "ou-"
    #     followed by from 4 to 32 lowercase letters or digits (the ID of the
    #     root that the OU is in). This string is followed by a second "-"
    #     dash and from 8 to 32 additional lowercase letters or digits.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @option params [required, String] :filter
    #   The type of policy that you want to include in the returned list. You
    #   must specify one of the following values:
    #
    #   * [AISERVICES\_OPT\_OUT\_POLICY][1]
    #
    #   * [BACKUP\_POLICY][2]
    #
    #   * [SERVICE\_CONTROL\_POLICY][3]
    #
    #   * [TAG\_POLICY][4]
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_ai-opt-out.html
    #   [2]: https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_backup.html
    #   [3]: https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_scp.html
    #   [4]: https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_tag-policies.html
    #
    # @option params [String] :next_token
    #   The parameter for receiving additional results if you receive a
    #   `NextToken` response in a previous request. A `NextToken` response
    #   indicates that more output is available. Set this parameter to the
    #   value of the previous call's `NextToken` response to indicate where
    #   the output should continue from.
    #
    # @option params [Integer] :max_results
    #   The total number of results that you want included on each page of the
    #   response. If you do not include this parameter, it defaults to a value
    #   that is specific to the operation. If additional items exist beyond
    #   the maximum you specify, the `NextToken` response element is present
    #   and has a value (is not null). Include that value as the `NextToken`
    #   request parameter in the next call to the operation to get the next
    #   part of the results. Note that Organizations might return fewer
    #   results than the maximum even when there are more results available.
    #   You should check `NextToken` after every operation to ensure that you
    #   receive all of the results.
    #
    # @return [Types::ListPoliciesForTargetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPoliciesForTargetResponse#policies #policies} => Array&lt;Types::PolicySummary&gt;
    #   * {Types::ListPoliciesForTargetResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
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
    #     filter: "SERVICE_CONTROL_POLICY", # required, accepts SERVICE_CONTROL_POLICY, TAG_POLICY, BACKUP_POLICY, AISERVICES_OPT_OUT_POLICY
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
    #   resp.policies[0].type #=> String, one of "SERVICE_CONTROL_POLICY", "TAG_POLICY", "BACKUP_POLICY", "AISERVICES_OPT_OUT_POLICY"
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
    # account or by a member account that is a delegated administrator for
    # an AWS service.
    #
    # <note markdown="1"> Policy types can be enabled and disabled in roots. This is distinct
    # from whether they're available in the organization. When you enable
    # all features, you make policy types available for use in that
    # organization. Individual policy types can then be enabled and disabled
    # in a root. To see the availability of a policy type in an
    # organization, use DescribeOrganization.
    #
    #  </note>
    #
    # @option params [String] :next_token
    #   The parameter for receiving additional results if you receive a
    #   `NextToken` response in a previous request. A `NextToken` response
    #   indicates that more output is available. Set this parameter to the
    #   value of the previous call's `NextToken` response to indicate where
    #   the output should continue from.
    #
    # @option params [Integer] :max_results
    #   The total number of results that you want included on each page of the
    #   response. If you do not include this parameter, it defaults to a value
    #   that is specific to the operation. If additional items exist beyond
    #   the maximum you specify, the `NextToken` response element is present
    #   and has a value (is not null). Include that value as the `NextToken`
    #   request parameter in the next call to the operation to get the next
    #   part of the results. Note that Organizations might return fewer
    #   results than the maximum even when there are more results available.
    #   You should check `NextToken` after every operation to ensure that you
    #   receive all of the results.
    #
    # @return [Types::ListRootsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListRootsResponse#roots #roots} => Array&lt;Types::Root&gt;
    #   * {Types::ListRootsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
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
    #   resp.roots[0].policy_types[0].type #=> String, one of "SERVICE_CONTROL_POLICY", "TAG_POLICY", "BACKUP_POLICY", "AISERVICES_OPT_OUT_POLICY"
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

    # Lists tags that are attached to the specified resource.
    #
    # You can attach tags to the following resources in AWS Organizations.
    #
    # * AWS account
    #
    # * Organization root
    #
    # * Organizational unit (OU)
    #
    # * Policy (any type)
    #
    # This operation can be called only from the organization's master
    # account or by a member account that is a delegated administrator for
    # an AWS service.
    #
    # @option params [required, String] :resource_id
    #   The ID of the resource with the tags to list.
    #
    #   You can specify any of the following taggable resources.
    #
    #   * AWS account – specify the account ID number.
    #
    #   * Organizational unit – specify the OU ID that begins with `ou-` and
    #     looks similar to: `ou-1a2b-34uvwxyz `
    #
    #   * Root – specify the root ID that begins with `r-` and looks similar
    #     to: `r-1a2b `
    #
    #   * Policy – specify the policy ID that begins with `p-` andlooks
    #     similar to: `p-12abcdefg3 `
    #
    # @option params [String] :next_token
    #   The parameter for receiving additional results if you receive a
    #   `NextToken` response in a previous request. A `NextToken` response
    #   indicates that more output is available. Set this parameter to the
    #   value of the previous call's `NextToken` response to indicate where
    #   the output should continue from.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Array&lt;Types::Tag&gt;
    #   * {Types::ListTagsForResourceResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_id: "TaggableResourceId", # required
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Lists all the roots, organizational units (OUs), and accounts that the
    # specified policy is attached to.
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
    # account or by a member account that is a delegated administrator for
    # an AWS service.
    #
    # @option params [required, String] :policy_id
    #   The unique identifier (ID) of the policy whose attachments you want to
    #   know.
    #
    #   The [regex pattern][1] for a policy ID string requires "p-" followed
    #   by from 8 to 128 lowercase or uppercase letters, digits, or the
    #   underscore character (\_).
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #
    # @option params [String] :next_token
    #   The parameter for receiving additional results if you receive a
    #   `NextToken` response in a previous request. A `NextToken` response
    #   indicates that more output is available. Set this parameter to the
    #   value of the previous call's `NextToken` response to indicate where
    #   the output should continue from.
    #
    # @option params [Integer] :max_results
    #   The total number of results that you want included on each page of the
    #   response. If you do not include this parameter, it defaults to a value
    #   that is specific to the operation. If additional items exist beyond
    #   the maximum you specify, the `NextToken` response element is present
    #   and has a value (is not null). Include that value as the `NextToken`
    #   request parameter in the next call to the operation to get the next
    #   part of the results. Note that Organizations might return fewer
    #   results than the maximum even when there are more results available.
    #   You should check `NextToken` after every operation to ensure that you
    #   receive all of the results.
    #
    # @return [Types::ListTargetsForPolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTargetsForPolicyResponse#targets #targets} => Array&lt;Types::PolicyTargetSummary&gt;
    #   * {Types::ListTargetsForPolicyResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
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
    #   * **Root** - A string that begins with "r-" followed by from 4 to 32
    #     lowercase letters or digits.
    #
    #   * **Organizational unit (OU)** - A string that begins with "ou-"
    #     followed by from 4 to 32 lowercase letters or digits (the ID of the
    #     root that the OU is in). This string is followed by a second "-"
    #     dash and from 8 to 32 additional lowercase letters or digits.
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
    #   * **Root** - A string that begins with "r-" followed by from 4 to 32
    #     lowercase letters or digits.
    #
    #   * **Organizational unit (OU)** - A string that begins with "ou-"
    #     followed by from 4 to 32 lowercase letters or digits (the ID of the
    #     root that the OU is in). This string is followed by a second "-"
    #     dash and from 8 to 32 additional lowercase letters or digits.
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

    # Enables the specified member account to administer the Organizations
    # features of the specified AWS service. It grants read-only access to
    # AWS Organizations service data. The account still requires IAM
    # permissions to access and administer the AWS service.
    #
    # You can run this action only for AWS services that support this
    # feature. For a current list of services that support it, see the
    # column *Supports Delegated Administrator* in the table at [AWS
    # Services that you can use with AWS Organizations][1] in the *AWS
    # Organizations User Guide.*
    #
    # This operation can be called only from the organization's master
    # account.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/organizations/latest/userguide/orgs_integrated-services-list.html
    #
    # @option params [required, String] :account_id
    #   The account ID number of the member account in the organization to
    #   register as a delegated administrator.
    #
    # @option params [required, String] :service_principal
    #   The service principal of the AWS service for which you want to make
    #   the member account a delegated administrator.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.register_delegated_administrator({
    #     account_id: "AccountId", # required
    #     service_principal: "ServicePrincipal", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/RegisterDelegatedAdministrator AWS API Documentation
    #
    # @overload register_delegated_administrator(params = {})
    # @param [Hash] params ({})
    def register_delegated_administrator(params = {}, options = {})
      req = build_request(:register_delegated_administrator, params)
      req.send_request(options)
    end

    # Removes the specified account from the organization.
    #
    # The removed account becomes a standalone account that isn't a member
    # of any organization. It's no longer subject to any policies and is
    # responsible for its own bill payments. The organization's master
    # account is no longer charged for any expenses accrued by the member
    # account after it's removed from the organization.
    #
    # This operation can be called only from the organization's master
    # account. Member accounts can remove themselves with LeaveOrganization
    # instead.
    #
    # * You can remove an account from your organization only if the account
    #   is configured with the information required to operate as a
    #   standalone account. When you create an account in an organization
    #   using the AWS Organizations console, API, or CLI commands, the
    #   information required of standalone accounts is *not* automatically
    #   collected. For an account that you want to make standalone, you must
    #   choose a support plan, provide and verify the required contact
    #   information, and provide a current payment method. AWS uses the
    #   payment method to charge for any billable (not free tier) AWS
    #   activity that occurs while the account isn't attached to an
    #   organization. To remove an account that doesn't yet have this
    #   information, you must sign in as the member account and follow the
    #   steps at [ To leave an organization when all required account
    #   information has not yet been provided][1] in the *AWS Organizations
    #   User Guide.*
    #
    # * After the account leaves the organization, all tags that were
    #   attached to the account object in the organization are deleted. AWS
    #   accounts outside of an organization do not support tags.
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

    # Adds one or more tags to the specified resource.
    #
    # Currently, you can attach tags to the following resources in AWS
    # Organizations.
    #
    # * AWS account
    #
    # * Organization root
    #
    # * Organizational unit (OU)
    #
    # * Policy (any type)
    #
    # This operation can be called only from the organization's master
    # account.
    #
    # @option params [required, String] :resource_id
    #   The ID of the resource to add a tag to.
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   A list of tags to add to the specified resource.
    #
    #   You can specify any of the following taggable resources.
    #
    #   * AWS account – specify the account ID number.
    #
    #   * Organizational unit – specify the OU ID that begins with `ou-` and
    #     looks similar to: `ou-1a2b-34uvwxyz `
    #
    #   * Root – specify the root ID that begins with `r-` and looks similar
    #     to: `r-1a2b `
    #
    #   * Policy – specify the policy ID that begins with `p-` andlooks
    #     similar to: `p-12abcdefg3 `
    #
    #   For each tag in the list, you must specify both a tag key and a value.
    #   You can set the value to an empty string, but you can't set it to
    #   `null`.
    #
    #   <note markdown="1"> If any one of the tags is invalid or if you exceed the allowed number
    #   of tags for an account user, then the entire request fails and the
    #   account is not created.
    #
    #    </note>
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_id: "TaggableResourceId", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes any tags with the specified keys from the specified resource.
    #
    # You can attach tags to the following resources in AWS Organizations.
    #
    # * AWS account
    #
    # * Organization root
    #
    # * Organizational unit (OU)
    #
    # * Policy (any type)
    #
    # This operation can be called only from the organization's master
    # account.
    #
    # @option params [required, String] :resource_id
    #   The ID of the resource to remove a tag from.
    #
    #   You can specify any of the following taggable resources.
    #
    #   * AWS account – specify the account ID number.
    #
    #   * Organizational unit – specify the OU ID that begins with `ou-` and
    #     looks similar to: `ou-1a2b-34uvwxyz `
    #
    #   * Root – specify the root ID that begins with `r-` and looks similar
    #     to: `r-1a2b `
    #
    #   * Policy – specify the policy ID that begins with `p-` andlooks
    #     similar to: `p-12abcdefg3 `
    #
    # @option params [required, Array<String>] :tag_keys
    #   The list of keys for tags to remove from the specified resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_id: "TaggableResourceId", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Renames the specified organizational unit (OU). The ID and ARN don't
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
    #   "ou-" followed by from 4 to 32 lowercase letters or digits (the ID
    #   of the root that contains the OU). This string is followed by a second
    #   "-" dash and from 8 to 32 additional lowercase letters or digits.
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
    # If you don't supply any parameter, that value remains unchanged. You
    # can't change a policy's type.
    #
    # This operation can be called only from the organization's master
    # account.
    #
    # @option params [required, String] :policy_id
    #   The unique identifier (ID) of the policy that you want to update.
    #
    #   The [regex pattern][1] for a policy ID string requires "p-" followed
    #   by from 8 to 128 lowercase or uppercase letters, digits, or the
    #   underscore character (\_).
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
    #   Syntax][1] in the *AWS Organizations User Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/organizations/latest/userguide/orgs_reference_scp-syntax.html
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
    #   resp.policy.policy_summary.type #=> String, one of "SERVICE_CONTROL_POLICY", "TAG_POLICY", "BACKUP_POLICY", "AISERVICES_OPT_OUT_POLICY"
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
      context[:gem_version] = '1.53.0'
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
