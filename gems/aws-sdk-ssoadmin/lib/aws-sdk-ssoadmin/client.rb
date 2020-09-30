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

Aws::Plugins::GlobalConfiguration.add_identifier(:ssoadmin)

module Aws::SSOAdmin
  # An API client for SSOAdmin.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::SSOAdmin::Client.new(
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

    @identifier = :ssoadmin

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

    # Attaches an IAM managed policy ARN to a permission set.
    #
    # <note markdown="1"> If the permission set is already referenced by one or more account
    # assignments, you will need to call ` ProvisionPermissionSet ` after
    # this action to apply the corresponding IAM policy updates to all
    # assigned accounts.
    #
    #  </note>
    #
    # @option params [required, String] :instance_arn
    #   The ARN of the SSO instance under which the operation will be
    #   executed. For more information about ARNs, see [Amazon Resource Names
    #   (ARNs) and AWS Service
    #   Namespaces](/general/latest/gr/aws-arns-and-namespaces.html) in the
    #   *AWS General Reference*.
    #
    # @option params [required, String] :permission_set_arn
    #   The ARN of the PermissionSet that the managed policy should be
    #   attached to.
    #
    # @option params [required, String] :managed_policy_arn
    #   The IAM managed policy ARN to be attached to a permission set.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.attach_managed_policy_to_permission_set({
    #     instance_arn: "InstanceArn", # required
    #     permission_set_arn: "PermissionSetArn", # required
    #     managed_policy_arn: "ManagedPolicyArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/AttachManagedPolicyToPermissionSet AWS API Documentation
    #
    # @overload attach_managed_policy_to_permission_set(params = {})
    # @param [Hash] params ({})
    def attach_managed_policy_to_permission_set(params = {}, options = {})
      req = build_request(:attach_managed_policy_to_permission_set, params)
      req.send_request(options)
    end

    # Assigns access to a principal for a specified AWS account using a
    # specified permission set.
    #
    # <note markdown="1"> The term *principal* here refers to a user or group that is defined in
    # AWS SSO.
    #
    #  </note>
    #
    # <note markdown="1"> As part of a successful `CreateAccountAssignment` call, the specified
    # permission set will automatically be provisioned to the account in the
    # form of an IAM policy attached to the SSO-created IAM role. If the
    # permission set is subsequently updated, the corresponding IAM policies
    # attached to roles in your accounts will not be updated automatically.
    # In this case, you will need to call ` ProvisionPermissionSet ` to make
    # these updates.
    #
    #  </note>
    #
    # @option params [required, String] :instance_arn
    #   The ARN of the SSO instance under which the operation will be
    #   executed. For more information about ARNs, see [Amazon Resource Names
    #   (ARNs) and AWS Service
    #   Namespaces](/general/latest/gr/aws-arns-and-namespaces.html) in the
    #   *AWS General Reference*.
    #
    # @option params [required, String] :target_id
    #   TargetID is an AWS account identifier, typically a 10-12 digit string
    #   (For example, 123456789012).
    #
    # @option params [required, String] :target_type
    #   The entity type for which the assignment will be created.
    #
    # @option params [required, String] :permission_set_arn
    #   The ARN of the permission set that the admin wants to grant the
    #   principal access to.
    #
    # @option params [required, String] :principal_type
    #   The entity type for which the assignment will be created.
    #
    # @option params [required, String] :principal_id
    #   An identifier for an object in AWS SSO, such as a user or group.
    #   PrincipalIds are GUIDs (For example,
    #   f81d4fae-7dec-11d0-a765-00a0c91e6bf6). For more information about
    #   PrincipalIds in AWS SSO, see the [AWS SSO Identity Store API
    #   Reference](/singlesignon/latest/IdentityStoreAPIReference/welcome.html).
    #
    # @return [Types::CreateAccountAssignmentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateAccountAssignmentResponse#account_assignment_creation_status #account_assignment_creation_status} => Types::AccountAssignmentOperationStatus
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_account_assignment({
    #     instance_arn: "InstanceArn", # required
    #     target_id: "TargetId", # required
    #     target_type: "AWS_ACCOUNT", # required, accepts AWS_ACCOUNT
    #     permission_set_arn: "PermissionSetArn", # required
    #     principal_type: "USER", # required, accepts USER, GROUP
    #     principal_id: "PrincipalId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.account_assignment_creation_status.status #=> String, one of "IN_PROGRESS", "FAILED", "SUCCEEDED"
    #   resp.account_assignment_creation_status.request_id #=> String
    #   resp.account_assignment_creation_status.failure_reason #=> String
    #   resp.account_assignment_creation_status.target_id #=> String
    #   resp.account_assignment_creation_status.target_type #=> String, one of "AWS_ACCOUNT"
    #   resp.account_assignment_creation_status.permission_set_arn #=> String
    #   resp.account_assignment_creation_status.principal_type #=> String, one of "USER", "GROUP"
    #   resp.account_assignment_creation_status.principal_id #=> String
    #   resp.account_assignment_creation_status.created_date #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/CreateAccountAssignment AWS API Documentation
    #
    # @overload create_account_assignment(params = {})
    # @param [Hash] params ({})
    def create_account_assignment(params = {}, options = {})
      req = build_request(:create_account_assignment, params)
      req.send_request(options)
    end

    # Creates a permission set within a specified SSO instance.
    #
    # <note markdown="1"> To grant users and groups access to AWS account resources, use `
    # CreateAccountAssignment `.
    #
    #  </note>
    #
    # @option params [required, String] :name
    #   The name of the PermissionSet.
    #
    # @option params [String] :description
    #   The description of the PermissionSet.
    #
    # @option params [required, String] :instance_arn
    #   The ARN of the SSO instance under which the operation will be
    #   executed. For more information about ARNs, see [Amazon Resource Names
    #   (ARNs) and AWS Service
    #   Namespaces](/general/latest/gr/aws-arns-and-namespaces.html) in the
    #   *AWS General Reference*.
    #
    # @option params [String] :session_duration
    #   The length of time that the application user sessions are valid in the
    #   ISO-8601 standard.
    #
    # @option params [String] :relay_state
    #   Used to redirect users within the application during the federation
    #   authentication process.
    #
    # @option params [Array<Types::Tag>] :tags
    #   The tags to attach to the new PermissionSet.
    #
    # @return [Types::CreatePermissionSetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreatePermissionSetResponse#permission_set #permission_set} => Types::PermissionSet
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_permission_set({
    #     name: "PermissionSetName", # required
    #     description: "PermissionSetDescription",
    #     instance_arn: "InstanceArn", # required
    #     session_duration: "Duration",
    #     relay_state: "RelayState",
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
    #   resp.permission_set.name #=> String
    #   resp.permission_set.permission_set_arn #=> String
    #   resp.permission_set.description #=> String
    #   resp.permission_set.created_date #=> Time
    #   resp.permission_set.session_duration #=> String
    #   resp.permission_set.relay_state #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/CreatePermissionSet AWS API Documentation
    #
    # @overload create_permission_set(params = {})
    # @param [Hash] params ({})
    def create_permission_set(params = {}, options = {})
      req = build_request(:create_permission_set, params)
      req.send_request(options)
    end

    # Deletes a principal's access from a specified AWS account using a
    # specified permission set.
    #
    # @option params [required, String] :instance_arn
    #   The ARN of the SSO instance under which the operation will be
    #   executed. For more information about ARNs, see [Amazon Resource Names
    #   (ARNs) and AWS Service
    #   Namespaces](/general/latest/gr/aws-arns-and-namespaces.html) in the
    #   *AWS General Reference*.
    #
    # @option params [required, String] :target_id
    #   TargetID is an AWS account identifier, typically a 10-12 digit string
    #   (For example, 123456789012).
    #
    # @option params [required, String] :target_type
    #   The entity type for which the assignment will be deleted.
    #
    # @option params [required, String] :permission_set_arn
    #   The ARN of the permission set that will be used to remove access.
    #
    # @option params [required, String] :principal_type
    #   The entity type for which the assignment will be deleted.
    #
    # @option params [required, String] :principal_id
    #   An identifier for an object in AWS SSO, such as a user or group.
    #   PrincipalIds are GUIDs (For example,
    #   f81d4fae-7dec-11d0-a765-00a0c91e6bf6). For more information about
    #   PrincipalIds in AWS SSO, see the [AWS SSO Identity Store API
    #   Reference](/singlesignon/latest/IdentityStoreAPIReference/welcome.html).
    #
    # @return [Types::DeleteAccountAssignmentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteAccountAssignmentResponse#account_assignment_deletion_status #account_assignment_deletion_status} => Types::AccountAssignmentOperationStatus
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_account_assignment({
    #     instance_arn: "InstanceArn", # required
    #     target_id: "TargetId", # required
    #     target_type: "AWS_ACCOUNT", # required, accepts AWS_ACCOUNT
    #     permission_set_arn: "PermissionSetArn", # required
    #     principal_type: "USER", # required, accepts USER, GROUP
    #     principal_id: "PrincipalId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.account_assignment_deletion_status.status #=> String, one of "IN_PROGRESS", "FAILED", "SUCCEEDED"
    #   resp.account_assignment_deletion_status.request_id #=> String
    #   resp.account_assignment_deletion_status.failure_reason #=> String
    #   resp.account_assignment_deletion_status.target_id #=> String
    #   resp.account_assignment_deletion_status.target_type #=> String, one of "AWS_ACCOUNT"
    #   resp.account_assignment_deletion_status.permission_set_arn #=> String
    #   resp.account_assignment_deletion_status.principal_type #=> String, one of "USER", "GROUP"
    #   resp.account_assignment_deletion_status.principal_id #=> String
    #   resp.account_assignment_deletion_status.created_date #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/DeleteAccountAssignment AWS API Documentation
    #
    # @overload delete_account_assignment(params = {})
    # @param [Hash] params ({})
    def delete_account_assignment(params = {}, options = {})
      req = build_request(:delete_account_assignment, params)
      req.send_request(options)
    end

    # Deletes the inline policy from a specified permission set.
    #
    # @option params [required, String] :instance_arn
    #   The ARN of the SSO instance under which the operation will be
    #   executed. For more information about ARNs, see [Amazon Resource Names
    #   (ARNs) and AWS Service
    #   Namespaces](/general/latest/gr/aws-arns-and-namespaces.html) in the
    #   *AWS General Reference*.
    #
    # @option params [required, String] :permission_set_arn
    #   The ARN of the permission set that will be used to remove access.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_inline_policy_from_permission_set({
    #     instance_arn: "InstanceArn", # required
    #     permission_set_arn: "PermissionSetArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/DeleteInlinePolicyFromPermissionSet AWS API Documentation
    #
    # @overload delete_inline_policy_from_permission_set(params = {})
    # @param [Hash] params ({})
    def delete_inline_policy_from_permission_set(params = {}, options = {})
      req = build_request(:delete_inline_policy_from_permission_set, params)
      req.send_request(options)
    end

    # Deletes the specified permission set.
    #
    # @option params [required, String] :instance_arn
    #   The ARN of the SSO instance under which the operation will be
    #   executed. For more information about ARNs, see [Amazon Resource Names
    #   (ARNs) and AWS Service
    #   Namespaces](/general/latest/gr/aws-arns-and-namespaces.html) in the
    #   *AWS General Reference*.
    #
    # @option params [required, String] :permission_set_arn
    #   The ARN of the permission set that should be deleted.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_permission_set({
    #     instance_arn: "InstanceArn", # required
    #     permission_set_arn: "PermissionSetArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/DeletePermissionSet AWS API Documentation
    #
    # @overload delete_permission_set(params = {})
    # @param [Hash] params ({})
    def delete_permission_set(params = {}, options = {})
      req = build_request(:delete_permission_set, params)
      req.send_request(options)
    end

    # Describes the status of the assignment creation request.
    #
    # @option params [required, String] :instance_arn
    #   The ARN of the SSO instance under which the operation will be
    #   executed. For more information about ARNs, see [Amazon Resource Names
    #   (ARNs) and AWS Service
    #   Namespaces](/general/latest/gr/aws-arns-and-namespaces.html) in the
    #   *AWS General Reference*.
    #
    # @option params [required, String] :account_assignment_creation_request_id
    #   The identifier that is used to track the request operation progress.
    #
    # @return [Types::DescribeAccountAssignmentCreationStatusResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeAccountAssignmentCreationStatusResponse#account_assignment_creation_status #account_assignment_creation_status} => Types::AccountAssignmentOperationStatus
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_account_assignment_creation_status({
    #     instance_arn: "InstanceArn", # required
    #     account_assignment_creation_request_id: "UUId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.account_assignment_creation_status.status #=> String, one of "IN_PROGRESS", "FAILED", "SUCCEEDED"
    #   resp.account_assignment_creation_status.request_id #=> String
    #   resp.account_assignment_creation_status.failure_reason #=> String
    #   resp.account_assignment_creation_status.target_id #=> String
    #   resp.account_assignment_creation_status.target_type #=> String, one of "AWS_ACCOUNT"
    #   resp.account_assignment_creation_status.permission_set_arn #=> String
    #   resp.account_assignment_creation_status.principal_type #=> String, one of "USER", "GROUP"
    #   resp.account_assignment_creation_status.principal_id #=> String
    #   resp.account_assignment_creation_status.created_date #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/DescribeAccountAssignmentCreationStatus AWS API Documentation
    #
    # @overload describe_account_assignment_creation_status(params = {})
    # @param [Hash] params ({})
    def describe_account_assignment_creation_status(params = {}, options = {})
      req = build_request(:describe_account_assignment_creation_status, params)
      req.send_request(options)
    end

    # Describes the status of the assignment deletion request.
    #
    # @option params [required, String] :instance_arn
    #   The ARN of the SSO instance under which the operation will be
    #   executed. For more information about ARNs, see [Amazon Resource Names
    #   (ARNs) and AWS Service
    #   Namespaces](/general/latest/gr/aws-arns-and-namespaces.html) in the
    #   *AWS General Reference*.
    #
    # @option params [required, String] :account_assignment_deletion_request_id
    #   The identifier that is used to track the request operation progress.
    #
    # @return [Types::DescribeAccountAssignmentDeletionStatusResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeAccountAssignmentDeletionStatusResponse#account_assignment_deletion_status #account_assignment_deletion_status} => Types::AccountAssignmentOperationStatus
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_account_assignment_deletion_status({
    #     instance_arn: "InstanceArn", # required
    #     account_assignment_deletion_request_id: "UUId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.account_assignment_deletion_status.status #=> String, one of "IN_PROGRESS", "FAILED", "SUCCEEDED"
    #   resp.account_assignment_deletion_status.request_id #=> String
    #   resp.account_assignment_deletion_status.failure_reason #=> String
    #   resp.account_assignment_deletion_status.target_id #=> String
    #   resp.account_assignment_deletion_status.target_type #=> String, one of "AWS_ACCOUNT"
    #   resp.account_assignment_deletion_status.permission_set_arn #=> String
    #   resp.account_assignment_deletion_status.principal_type #=> String, one of "USER", "GROUP"
    #   resp.account_assignment_deletion_status.principal_id #=> String
    #   resp.account_assignment_deletion_status.created_date #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/DescribeAccountAssignmentDeletionStatus AWS API Documentation
    #
    # @overload describe_account_assignment_deletion_status(params = {})
    # @param [Hash] params ({})
    def describe_account_assignment_deletion_status(params = {}, options = {})
      req = build_request(:describe_account_assignment_deletion_status, params)
      req.send_request(options)
    end

    # Gets the details of the permission set.
    #
    # @option params [required, String] :instance_arn
    #   The ARN of the SSO instance under which the operation will be
    #   executed. For more information about ARNs, see [Amazon Resource Names
    #   (ARNs) and AWS Service
    #   Namespaces](/general/latest/gr/aws-arns-and-namespaces.html) in the
    #   *AWS General Reference*.
    #
    # @option params [required, String] :permission_set_arn
    #   The ARN of the permission set.
    #
    # @return [Types::DescribePermissionSetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribePermissionSetResponse#permission_set #permission_set} => Types::PermissionSet
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_permission_set({
    #     instance_arn: "InstanceArn", # required
    #     permission_set_arn: "PermissionSetArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.permission_set.name #=> String
    #   resp.permission_set.permission_set_arn #=> String
    #   resp.permission_set.description #=> String
    #   resp.permission_set.created_date #=> Time
    #   resp.permission_set.session_duration #=> String
    #   resp.permission_set.relay_state #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/DescribePermissionSet AWS API Documentation
    #
    # @overload describe_permission_set(params = {})
    # @param [Hash] params ({})
    def describe_permission_set(params = {}, options = {})
      req = build_request(:describe_permission_set, params)
      req.send_request(options)
    end

    # Describes the status for the given permission set provisioning
    # request.
    #
    # @option params [required, String] :instance_arn
    #   The ARN of the SSO instance under which the operation will be
    #   executed. For more information about ARNs, see [Amazon Resource Names
    #   (ARNs) and AWS Service
    #   Namespaces](/general/latest/gr/aws-arns-and-namespaces.html) in the
    #   *AWS General Reference*.
    #
    # @option params [required, String] :provision_permission_set_request_id
    #   The identifier that is provided by the ProvisionPermissionSet call to
    #   retrieve the current status of the provisioning workflow.
    #
    # @return [Types::DescribePermissionSetProvisioningStatusResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribePermissionSetProvisioningStatusResponse#permission_set_provisioning_status #permission_set_provisioning_status} => Types::PermissionSetProvisioningStatus
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_permission_set_provisioning_status({
    #     instance_arn: "InstanceArn", # required
    #     provision_permission_set_request_id: "UUId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.permission_set_provisioning_status.status #=> String, one of "IN_PROGRESS", "FAILED", "SUCCEEDED"
    #   resp.permission_set_provisioning_status.request_id #=> String
    #   resp.permission_set_provisioning_status.account_id #=> String
    #   resp.permission_set_provisioning_status.permission_set_arn #=> String
    #   resp.permission_set_provisioning_status.failure_reason #=> String
    #   resp.permission_set_provisioning_status.created_date #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/DescribePermissionSetProvisioningStatus AWS API Documentation
    #
    # @overload describe_permission_set_provisioning_status(params = {})
    # @param [Hash] params ({})
    def describe_permission_set_provisioning_status(params = {}, options = {})
      req = build_request(:describe_permission_set_provisioning_status, params)
      req.send_request(options)
    end

    # Detaches the attached IAM managed policy ARN from the specified
    # permission set.
    #
    # @option params [required, String] :instance_arn
    #   The ARN of the SSO instance under which the operation will be
    #   executed. For more information about ARNs, see [Amazon Resource Names
    #   (ARNs) and AWS Service
    #   Namespaces](/general/latest/gr/aws-arns-and-namespaces.html) in the
    #   *AWS General Reference*.
    #
    # @option params [required, String] :permission_set_arn
    #   The ARN of the PermissionSet from which the policy should be detached.
    #
    # @option params [required, String] :managed_policy_arn
    #   The IAM managed policy ARN to be attached to a permission set.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.detach_managed_policy_from_permission_set({
    #     instance_arn: "InstanceArn", # required
    #     permission_set_arn: "PermissionSetArn", # required
    #     managed_policy_arn: "ManagedPolicyArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/DetachManagedPolicyFromPermissionSet AWS API Documentation
    #
    # @overload detach_managed_policy_from_permission_set(params = {})
    # @param [Hash] params ({})
    def detach_managed_policy_from_permission_set(params = {}, options = {})
      req = build_request(:detach_managed_policy_from_permission_set, params)
      req.send_request(options)
    end

    # Obtains the inline policy assigned to the permission set.
    #
    # @option params [required, String] :instance_arn
    #   The ARN of the SSO instance under which the operation will be
    #   executed. For more information about ARNs, see [Amazon Resource Names
    #   (ARNs) and AWS Service
    #   Namespaces](/general/latest/gr/aws-arns-and-namespaces.html) in the
    #   *AWS General Reference*.
    #
    # @option params [required, String] :permission_set_arn
    #   The ARN of the permission set.
    #
    # @return [Types::GetInlinePolicyForPermissionSetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetInlinePolicyForPermissionSetResponse#inline_policy #inline_policy} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_inline_policy_for_permission_set({
    #     instance_arn: "InstanceArn", # required
    #     permission_set_arn: "PermissionSetArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.inline_policy #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/GetInlinePolicyForPermissionSet AWS API Documentation
    #
    # @overload get_inline_policy_for_permission_set(params = {})
    # @param [Hash] params ({})
    def get_inline_policy_for_permission_set(params = {}, options = {})
      req = build_request(:get_inline_policy_for_permission_set, params)
      req.send_request(options)
    end

    # Lists the status of the AWS account assignment creation requests for a
    # specified SSO instance.
    #
    # @option params [required, String] :instance_arn
    #   The ARN of the SSO instance under which the operation will be
    #   executed. For more information about ARNs, see [Amazon Resource Names
    #   (ARNs) and AWS Service
    #   Namespaces](/general/latest/gr/aws-arns-and-namespaces.html) in the
    #   *AWS General Reference*.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to display for the assignment.
    #
    # @option params [String] :next_token
    #   The pagination token for the list API. Initially the value is null.
    #   Use the output of previous API calls to make subsequent calls.
    #
    # @option params [Types::OperationStatusFilter] :filter
    #   Filters results based on the passed attribute value.
    #
    # @return [Types::ListAccountAssignmentCreationStatusResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAccountAssignmentCreationStatusResponse#account_assignments_creation_status #account_assignments_creation_status} => Array&lt;Types::AccountAssignmentOperationStatusMetadata&gt;
    #   * {Types::ListAccountAssignmentCreationStatusResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_account_assignment_creation_status({
    #     instance_arn: "InstanceArn", # required
    #     max_results: 1,
    #     next_token: "Token",
    #     filter: {
    #       status: "IN_PROGRESS", # accepts IN_PROGRESS, FAILED, SUCCEEDED
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.account_assignments_creation_status #=> Array
    #   resp.account_assignments_creation_status[0].status #=> String, one of "IN_PROGRESS", "FAILED", "SUCCEEDED"
    #   resp.account_assignments_creation_status[0].request_id #=> String
    #   resp.account_assignments_creation_status[0].created_date #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/ListAccountAssignmentCreationStatus AWS API Documentation
    #
    # @overload list_account_assignment_creation_status(params = {})
    # @param [Hash] params ({})
    def list_account_assignment_creation_status(params = {}, options = {})
      req = build_request(:list_account_assignment_creation_status, params)
      req.send_request(options)
    end

    # Lists the status of the AWS account assignment deletion requests for a
    # specified SSO instance.
    #
    # @option params [required, String] :instance_arn
    #   The ARN of the SSO instance under which the operation will be
    #   executed. For more information about ARNs, see [Amazon Resource Names
    #   (ARNs) and AWS Service
    #   Namespaces](/general/latest/gr/aws-arns-and-namespaces.html) in the
    #   *AWS General Reference*.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to display for the assignment.
    #
    # @option params [String] :next_token
    #   The pagination token for the list API. Initially the value is null.
    #   Use the output of previous API calls to make subsequent calls.
    #
    # @option params [Types::OperationStatusFilter] :filter
    #   Filters results based on the passed attribute value.
    #
    # @return [Types::ListAccountAssignmentDeletionStatusResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAccountAssignmentDeletionStatusResponse#account_assignments_deletion_status #account_assignments_deletion_status} => Array&lt;Types::AccountAssignmentOperationStatusMetadata&gt;
    #   * {Types::ListAccountAssignmentDeletionStatusResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_account_assignment_deletion_status({
    #     instance_arn: "InstanceArn", # required
    #     max_results: 1,
    #     next_token: "Token",
    #     filter: {
    #       status: "IN_PROGRESS", # accepts IN_PROGRESS, FAILED, SUCCEEDED
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.account_assignments_deletion_status #=> Array
    #   resp.account_assignments_deletion_status[0].status #=> String, one of "IN_PROGRESS", "FAILED", "SUCCEEDED"
    #   resp.account_assignments_deletion_status[0].request_id #=> String
    #   resp.account_assignments_deletion_status[0].created_date #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/ListAccountAssignmentDeletionStatus AWS API Documentation
    #
    # @overload list_account_assignment_deletion_status(params = {})
    # @param [Hash] params ({})
    def list_account_assignment_deletion_status(params = {}, options = {})
      req = build_request(:list_account_assignment_deletion_status, params)
      req.send_request(options)
    end

    # Lists the assignee of the specified AWS account with the specified
    # permission set.
    #
    # @option params [required, String] :instance_arn
    #   The ARN of the SSO instance under which the operation will be
    #   executed. For more information about ARNs, see [Amazon Resource Names
    #   (ARNs) and AWS Service
    #   Namespaces](/general/latest/gr/aws-arns-and-namespaces.html) in the
    #   *AWS General Reference*.
    #
    # @option params [required, String] :account_id
    #   The identifier of the AWS account from which to list the assignments.
    #
    # @option params [required, String] :permission_set_arn
    #   The ARN of the permission set from which to list assignments.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to display for the assignment.
    #
    # @option params [String] :next_token
    #   The pagination token for the list API. Initially the value is null.
    #   Use the output of previous API calls to make subsequent calls.
    #
    # @return [Types::ListAccountAssignmentsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAccountAssignmentsResponse#account_assignments #account_assignments} => Array&lt;Types::AccountAssignment&gt;
    #   * {Types::ListAccountAssignmentsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_account_assignments({
    #     instance_arn: "InstanceArn", # required
    #     account_id: "TargetId", # required
    #     permission_set_arn: "PermissionSetArn", # required
    #     max_results: 1,
    #     next_token: "Token",
    #   })
    #
    # @example Response structure
    #
    #   resp.account_assignments #=> Array
    #   resp.account_assignments[0].account_id #=> String
    #   resp.account_assignments[0].permission_set_arn #=> String
    #   resp.account_assignments[0].principal_type #=> String, one of "USER", "GROUP"
    #   resp.account_assignments[0].principal_id #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/ListAccountAssignments AWS API Documentation
    #
    # @overload list_account_assignments(params = {})
    # @param [Hash] params ({})
    def list_account_assignments(params = {}, options = {})
      req = build_request(:list_account_assignments, params)
      req.send_request(options)
    end

    # Lists all the AWS accounts where the specified permission set is
    # provisioned.
    #
    # @option params [required, String] :instance_arn
    #   The ARN of the SSO instance under which the operation will be
    #   executed. For more information about ARNs, see [Amazon Resource Names
    #   (ARNs) and AWS Service
    #   Namespaces](/general/latest/gr/aws-arns-and-namespaces.html) in the
    #   *AWS General Reference*.
    #
    # @option params [required, String] :permission_set_arn
    #   The ARN of the PermissionSet from which the associated AWS accounts
    #   will be listed.
    #
    # @option params [String] :provisioning_status
    #   The permission set provisioning status for an AWS account.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to display for the PermissionSet.
    #
    # @option params [String] :next_token
    #   The pagination token for the list API. Initially the value is null.
    #   Use the output of previous API calls to make subsequent calls.
    #
    # @return [Types::ListAccountsForProvisionedPermissionSetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAccountsForProvisionedPermissionSetResponse#account_ids #account_ids} => Array&lt;String&gt;
    #   * {Types::ListAccountsForProvisionedPermissionSetResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_accounts_for_provisioned_permission_set({
    #     instance_arn: "InstanceArn", # required
    #     permission_set_arn: "PermissionSetArn", # required
    #     provisioning_status: "LATEST_PERMISSION_SET_PROVISIONED", # accepts LATEST_PERMISSION_SET_PROVISIONED, LATEST_PERMISSION_SET_NOT_PROVISIONED
    #     max_results: 1,
    #     next_token: "Token",
    #   })
    #
    # @example Response structure
    #
    #   resp.account_ids #=> Array
    #   resp.account_ids[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/ListAccountsForProvisionedPermissionSet AWS API Documentation
    #
    # @overload list_accounts_for_provisioned_permission_set(params = {})
    # @param [Hash] params ({})
    def list_accounts_for_provisioned_permission_set(params = {}, options = {})
      req = build_request(:list_accounts_for_provisioned_permission_set, params)
      req.send_request(options)
    end

    # Lists the SSO instances that the caller has access to.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to display for the instance.
    #
    # @option params [String] :next_token
    #   The pagination token for the list API. Initially the value is null.
    #   Use the output of previous API calls to make subsequent calls.
    #
    # @return [Types::ListInstancesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListInstancesResponse#instances #instances} => Array&lt;Types::InstanceMetadata&gt;
    #   * {Types::ListInstancesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_instances({
    #     max_results: 1,
    #     next_token: "Token",
    #   })
    #
    # @example Response structure
    #
    #   resp.instances #=> Array
    #   resp.instances[0].instance_arn #=> String
    #   resp.instances[0].identity_store_id #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/ListInstances AWS API Documentation
    #
    # @overload list_instances(params = {})
    # @param [Hash] params ({})
    def list_instances(params = {}, options = {})
      req = build_request(:list_instances, params)
      req.send_request(options)
    end

    # Lists the IAM managed policy that is attached to a specified
    # permission set.
    #
    # @option params [required, String] :instance_arn
    #   The ARN of the SSO instance under which the operation will be
    #   executed. For more information about ARNs, see [Amazon Resource Names
    #   (ARNs) and AWS Service
    #   Namespaces](/general/latest/gr/aws-arns-and-namespaces.html) in the
    #   *AWS General Reference*.
    #
    # @option params [required, String] :permission_set_arn
    #   The ARN of the PermissionSet whose managed policies will be listed.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to display for the PermissionSet.
    #
    # @option params [String] :next_token
    #   The pagination token for the list API. Initially the value is null.
    #   Use the output of previous API calls to make subsequent calls.
    #
    # @return [Types::ListManagedPoliciesInPermissionSetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListManagedPoliciesInPermissionSetResponse#attached_managed_policies #attached_managed_policies} => Array&lt;Types::AttachedManagedPolicy&gt;
    #   * {Types::ListManagedPoliciesInPermissionSetResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_managed_policies_in_permission_set({
    #     instance_arn: "InstanceArn", # required
    #     permission_set_arn: "PermissionSetArn", # required
    #     max_results: 1,
    #     next_token: "Token",
    #   })
    #
    # @example Response structure
    #
    #   resp.attached_managed_policies #=> Array
    #   resp.attached_managed_policies[0].name #=> String
    #   resp.attached_managed_policies[0].arn #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/ListManagedPoliciesInPermissionSet AWS API Documentation
    #
    # @overload list_managed_policies_in_permission_set(params = {})
    # @param [Hash] params ({})
    def list_managed_policies_in_permission_set(params = {}, options = {})
      req = build_request(:list_managed_policies_in_permission_set, params)
      req.send_request(options)
    end

    # Lists the status of the permission set provisioning requests for a
    # specified SSO instance.
    #
    # @option params [required, String] :instance_arn
    #   The ARN of the SSO instance under which the operation will be
    #   executed. For more information about ARNs, see [Amazon Resource Names
    #   (ARNs) and AWS Service
    #   Namespaces](/general/latest/gr/aws-arns-and-namespaces.html) in the
    #   *AWS General Reference*.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to display for the assignment.
    #
    # @option params [String] :next_token
    #   The pagination token for the list API. Initially the value is null.
    #   Use the output of previous API calls to make subsequent calls.
    #
    # @option params [Types::OperationStatusFilter] :filter
    #   Filters results based on the passed attribute value.
    #
    # @return [Types::ListPermissionSetProvisioningStatusResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPermissionSetProvisioningStatusResponse#permission_sets_provisioning_status #permission_sets_provisioning_status} => Array&lt;Types::PermissionSetProvisioningStatusMetadata&gt;
    #   * {Types::ListPermissionSetProvisioningStatusResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_permission_set_provisioning_status({
    #     instance_arn: "InstanceArn", # required
    #     max_results: 1,
    #     next_token: "Token",
    #     filter: {
    #       status: "IN_PROGRESS", # accepts IN_PROGRESS, FAILED, SUCCEEDED
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.permission_sets_provisioning_status #=> Array
    #   resp.permission_sets_provisioning_status[0].status #=> String, one of "IN_PROGRESS", "FAILED", "SUCCEEDED"
    #   resp.permission_sets_provisioning_status[0].request_id #=> String
    #   resp.permission_sets_provisioning_status[0].created_date #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/ListPermissionSetProvisioningStatus AWS API Documentation
    #
    # @overload list_permission_set_provisioning_status(params = {})
    # @param [Hash] params ({})
    def list_permission_set_provisioning_status(params = {}, options = {})
      req = build_request(:list_permission_set_provisioning_status, params)
      req.send_request(options)
    end

    # Lists the PermissionSets in an SSO instance.
    #
    # @option params [required, String] :instance_arn
    #   The ARN of the SSO instance under which the operation will be
    #   executed. For more information about ARNs, see [Amazon Resource Names
    #   (ARNs) and AWS Service
    #   Namespaces](/general/latest/gr/aws-arns-and-namespaces.html) in the
    #   *AWS General Reference*.
    #
    # @option params [String] :next_token
    #   The pagination token for the list API. Initially the value is null.
    #   Use the output of previous API calls to make subsequent calls.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to display for the assignment.
    #
    # @return [Types::ListPermissionSetsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPermissionSetsResponse#permission_sets #permission_sets} => Array&lt;String&gt;
    #   * {Types::ListPermissionSetsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_permission_sets({
    #     instance_arn: "InstanceArn", # required
    #     next_token: "Token",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.permission_sets #=> Array
    #   resp.permission_sets[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/ListPermissionSets AWS API Documentation
    #
    # @overload list_permission_sets(params = {})
    # @param [Hash] params ({})
    def list_permission_sets(params = {}, options = {})
      req = build_request(:list_permission_sets, params)
      req.send_request(options)
    end

    # Lists all the permission sets that are provisioned to a specified AWS
    # account.
    #
    # @option params [required, String] :instance_arn
    #   The ARN of the SSO instance under which the operation will be
    #   executed. For more information about ARNs, see [Amazon Resource Names
    #   (ARNs) and AWS Service
    #   Namespaces](/general/latest/gr/aws-arns-and-namespaces.html) in the
    #   *AWS General Reference*.
    #
    # @option params [required, String] :account_id
    #   The identifier of the AWS account from which to list the assignments.
    #
    # @option params [String] :provisioning_status
    #   The status object for the permission set provisioning operation.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to display for the assignment.
    #
    # @option params [String] :next_token
    #   The pagination token for the list API. Initially the value is null.
    #   Use the output of previous API calls to make subsequent calls.
    #
    # @return [Types::ListPermissionSetsProvisionedToAccountResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPermissionSetsProvisionedToAccountResponse#next_token #next_token} => String
    #   * {Types::ListPermissionSetsProvisionedToAccountResponse#permission_sets #permission_sets} => Array&lt;String&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_permission_sets_provisioned_to_account({
    #     instance_arn: "InstanceArn", # required
    #     account_id: "AccountId", # required
    #     provisioning_status: "LATEST_PERMISSION_SET_PROVISIONED", # accepts LATEST_PERMISSION_SET_PROVISIONED, LATEST_PERMISSION_SET_NOT_PROVISIONED
    #     max_results: 1,
    #     next_token: "Token",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.permission_sets #=> Array
    #   resp.permission_sets[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/ListPermissionSetsProvisionedToAccount AWS API Documentation
    #
    # @overload list_permission_sets_provisioned_to_account(params = {})
    # @param [Hash] params ({})
    def list_permission_sets_provisioned_to_account(params = {}, options = {})
      req = build_request(:list_permission_sets_provisioned_to_account, params)
      req.send_request(options)
    end

    # Lists the tags that are attached to a specified resource.
    #
    # @option params [required, String] :instance_arn
    #   The ARN of the SSO instance under which the operation will be
    #   executed. For more information about ARNs, see [Amazon Resource Names
    #   (ARNs) and AWS Service
    #   Namespaces](/general/latest/gr/aws-arns-and-namespaces.html) in the
    #   *AWS General Reference*.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the resource with the tags to be listed.
    #
    # @option params [String] :next_token
    #   The pagination token for the list API. Initially the value is null.
    #   Use the output of previous API calls to make subsequent calls.
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
    #     instance_arn: "InstanceArn", # required
    #     resource_arn: "GeneralArn", # required
    #     next_token: "Token",
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # The process by which a specified permission set is provisioned to the
    # specified target.
    #
    # @option params [required, String] :instance_arn
    #   The ARN of the SSO instance under which the operation will be
    #   executed. For more information about ARNs, see [Amazon Resource Names
    #   (ARNs) and AWS Service
    #   Namespaces](/general/latest/gr/aws-arns-and-namespaces.html) in the
    #   *AWS General Reference*.
    #
    # @option params [required, String] :permission_set_arn
    #   The ARN of the permission set.
    #
    # @option params [String] :target_id
    #   TargetID is an AWS account identifier, typically a 10-12 digit string
    #   (For example, 123456789012).
    #
    # @option params [required, String] :target_type
    #   The entity type for which the assignment will be created.
    #
    # @return [Types::ProvisionPermissionSetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ProvisionPermissionSetResponse#permission_set_provisioning_status #permission_set_provisioning_status} => Types::PermissionSetProvisioningStatus
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.provision_permission_set({
    #     instance_arn: "InstanceArn", # required
    #     permission_set_arn: "PermissionSetArn", # required
    #     target_id: "TargetId",
    #     target_type: "AWS_ACCOUNT", # required, accepts AWS_ACCOUNT, ALL_PROVISIONED_ACCOUNTS
    #   })
    #
    # @example Response structure
    #
    #   resp.permission_set_provisioning_status.status #=> String, one of "IN_PROGRESS", "FAILED", "SUCCEEDED"
    #   resp.permission_set_provisioning_status.request_id #=> String
    #   resp.permission_set_provisioning_status.account_id #=> String
    #   resp.permission_set_provisioning_status.permission_set_arn #=> String
    #   resp.permission_set_provisioning_status.failure_reason #=> String
    #   resp.permission_set_provisioning_status.created_date #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/ProvisionPermissionSet AWS API Documentation
    #
    # @overload provision_permission_set(params = {})
    # @param [Hash] params ({})
    def provision_permission_set(params = {}, options = {})
      req = build_request(:provision_permission_set, params)
      req.send_request(options)
    end

    # Attaches an IAM inline policy to a permission set.
    #
    # <note markdown="1"> If the permission set is already referenced by one or more account
    # assignments, you will need to call ` ProvisionPermissionSet ` after
    # this action to apply the corresponding IAM policy updates to all
    # assigned accounts.
    #
    #  </note>
    #
    # @option params [required, String] :instance_arn
    #   The ARN of the SSO instance under which the operation will be
    #   executed. For more information about ARNs, see [Amazon Resource Names
    #   (ARNs) and AWS Service
    #   Namespaces](/general/latest/gr/aws-arns-and-namespaces.html) in the
    #   *AWS General Reference*.
    #
    # @option params [required, String] :permission_set_arn
    #   The ARN of the permission set.
    #
    # @option params [required, String] :inline_policy
    #   The IAM inline policy to attach to a PermissionSet.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_inline_policy_to_permission_set({
    #     instance_arn: "InstanceArn", # required
    #     permission_set_arn: "PermissionSetArn", # required
    #     inline_policy: "PermissionSetPolicyDocument", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/PutInlinePolicyToPermissionSet AWS API Documentation
    #
    # @overload put_inline_policy_to_permission_set(params = {})
    # @param [Hash] params ({})
    def put_inline_policy_to_permission_set(params = {}, options = {})
      req = build_request(:put_inline_policy_to_permission_set, params)
      req.send_request(options)
    end

    # Associates a set of tags with a specified resource.
    #
    # @option params [required, String] :instance_arn
    #   The ARN of the SSO instance under which the operation will be
    #   executed. For more information about ARNs, see [Amazon Resource Names
    #   (ARNs) and AWS Service
    #   Namespaces](/general/latest/gr/aws-arns-and-namespaces.html) in the
    #   *AWS General Reference*.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the resource with the tags to be listed.
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   A set of key-value pairs that are used to manage the resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     instance_arn: "InstanceArn", # required
    #     resource_arn: "GeneralArn", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey",
    #         value: "TagValue",
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Disassociates a set of tags from a specified resource.
    #
    # @option params [required, String] :instance_arn
    #   The ARN of the SSO instance under which the operation will be
    #   executed. For more information about ARNs, see [Amazon Resource Names
    #   (ARNs) and AWS Service
    #   Namespaces](/general/latest/gr/aws-arns-and-namespaces.html) in the
    #   *AWS General Reference*.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the resource with the tags to be listed.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The keys of tags that are attached to the resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     instance_arn: "InstanceArn", # required
    #     resource_arn: "GeneralArn", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates an existing permission set.
    #
    # @option params [required, String] :instance_arn
    #   The ARN of the SSO instance under which the operation will be
    #   executed. For more information about ARNs, see [Amazon Resource Names
    #   (ARNs) and AWS Service
    #   Namespaces](/general/latest/gr/aws-arns-and-namespaces.html) in the
    #   *AWS General Reference*.
    #
    # @option params [required, String] :permission_set_arn
    #   The ARN of the permission set.
    #
    # @option params [String] :description
    #   The description of the PermissionSet.
    #
    # @option params [String] :session_duration
    #   The length of time that the application user sessions are valid for in
    #   the ISO-8601 standard.
    #
    # @option params [String] :relay_state
    #   Used to redirect users within the application during the federation
    #   authentication process.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_permission_set({
    #     instance_arn: "InstanceArn", # required
    #     permission_set_arn: "PermissionSetArn", # required
    #     description: "PermissionSetDescription",
    #     session_duration: "Duration",
    #     relay_state: "RelayState",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/UpdatePermissionSet AWS API Documentation
    #
    # @overload update_permission_set(params = {})
    # @param [Hash] params ({})
    def update_permission_set(params = {}, options = {})
      req = build_request(:update_permission_set, params)
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
      context[:gem_name] = 'aws-sdk-ssoadmin'
      context[:gem_version] = '1.3.0'
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
