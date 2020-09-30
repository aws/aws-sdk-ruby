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
require 'aws-sdk-core/plugins/protocols/query.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:cloudformation)

module Aws::CloudFormation
  # An API client for CloudFormation.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::CloudFormation::Client.new(
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

    @identifier = :cloudformation

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
    add_plugin(Aws::Plugins::Protocols::Query)

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

    # Cancels an update on the specified stack. If the call completes
    # successfully, the stack rolls back the update and reverts to the
    # previous stack configuration.
    #
    # <note markdown="1"> You can cancel only stacks that are in the UPDATE\_IN\_PROGRESS state.
    #
    #  </note>
    #
    # @option params [required, String] :stack_name
    #   The name or the unique stack ID that is associated with the stack.
    #
    # @option params [String] :client_request_token
    #   A unique identifier for this `CancelUpdateStack` request. Specify this
    #   token if you plan to retry requests so that AWS CloudFormation knows
    #   that you're not attempting to cancel an update on a stack with the
    #   same name. You might retry `CancelUpdateStack` requests to ensure that
    #   AWS CloudFormation successfully received them.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_update_stack({
    #     stack_name: "StackName", # required
    #     client_request_token: "ClientRequestToken",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/CancelUpdateStack AWS API Documentation
    #
    # @overload cancel_update_stack(params = {})
    # @param [Hash] params ({})
    def cancel_update_stack(params = {}, options = {})
      req = build_request(:cancel_update_stack, params)
      req.send_request(options)
    end

    # For a specified stack that is in the `UPDATE_ROLLBACK_FAILED` state,
    # continues rolling it back to the `UPDATE_ROLLBACK_COMPLETE` state.
    # Depending on the cause of the failure, you can manually [ fix the
    # error][1] and continue the rollback. By continuing the rollback, you
    # can return your stack to a working state (the
    # `UPDATE_ROLLBACK_COMPLETE` state), and then try to update the stack
    # again.
    #
    # A stack goes into the `UPDATE_ROLLBACK_FAILED` state when AWS
    # CloudFormation cannot roll back all changes after a failed stack
    # update. For example, you might have a stack that is rolling back to an
    # old database instance that was deleted outside of AWS CloudFormation.
    # Because AWS CloudFormation doesn't know the database was deleted, it
    # assumes that the database instance still exists and attempts to roll
    # back to it, causing the update rollback to fail.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/troubleshooting.html#troubleshooting-errors-update-rollback-failed
    #
    # @option params [required, String] :stack_name
    #   The name or the unique ID of the stack that you want to continue
    #   rolling back.
    #
    #   <note markdown="1"> Don't specify the name of a nested stack (a stack that was created by
    #   using the `AWS::CloudFormation::Stack` resource). Instead, use this
    #   operation on the parent stack (the stack that contains the
    #   `AWS::CloudFormation::Stack` resource).
    #
    #    </note>
    #
    # @option params [String] :role_arn
    #   The Amazon Resource Name (ARN) of an AWS Identity and Access
    #   Management (IAM) role that AWS CloudFormation assumes to roll back the
    #   stack. AWS CloudFormation uses the role's credentials to make calls
    #   on your behalf. AWS CloudFormation always uses this role for all
    #   future operations on the stack. As long as users have permission to
    #   operate on the stack, AWS CloudFormation uses this role even if the
    #   users don't have permission to pass it. Ensure that the role grants
    #   least privilege.
    #
    #   If you don't specify a value, AWS CloudFormation uses the role that
    #   was previously associated with the stack. If no role is available, AWS
    #   CloudFormation uses a temporary session that is generated from your
    #   user credentials.
    #
    # @option params [Array<String>] :resources_to_skip
    #   A list of the logical IDs of the resources that AWS CloudFormation
    #   skips during the continue update rollback operation. You can specify
    #   only resources that are in the `UPDATE_FAILED` state because a
    #   rollback failed. You can't specify resources that are in the
    #   `UPDATE_FAILED` state for other reasons, for example, because an
    #   update was cancelled. To check why a resource update failed, use the
    #   DescribeStackResources action, and view the resource status reason.
    #
    #   Specify this property to skip rolling back resources that AWS
    #   CloudFormation can't successfully roll back. We recommend that you [
    #   troubleshoot][1] resources before skipping them. AWS CloudFormation
    #   sets the status of the specified resources to `UPDATE_COMPLETE` and
    #   continues to roll back the stack. After the rollback is complete, the
    #   state of the skipped resources will be inconsistent with the state of
    #   the resources in the stack template. Before performing another stack
    #   update, you must update the stack or resources to be consistent with
    #   each other. If you don't, subsequent stack updates might fail, and
    #   the stack will become unrecoverable.
    #
    #   Specify the minimum number of resources required to successfully roll
    #   back your stack. For example, a failed resource update might cause
    #   dependent resources to fail. In this case, it might not be necessary
    #   to skip the dependent resources.
    #
    #   To skip resources that are part of nested stacks, use the following
    #   format: `NestedStackName.ResourceLogicalID`. If you want to specify
    #   the logical ID of a stack resource (`Type:
    #   AWS::CloudFormation::Stack`) in the `ResourcesToSkip` list, then its
    #   corresponding embedded stack must be in one of the following states:
    #   `DELETE_IN_PROGRESS`, `DELETE_COMPLETE`, or `DELETE_FAILED`.
    #
    #   <note markdown="1"> Don't confuse a child stack's name with its corresponding logical ID
    #   defined in the parent stack. For an example of a continue update
    #   rollback operation with nested stacks, see [Using ResourcesToSkip to
    #   recover a nested stacks hierarchy][2].
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/troubleshooting.html#troubleshooting-errors-update-rollback-failed
    #   [2]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-updating-stacks-continueupdaterollback.html#nested-stacks
    #
    # @option params [String] :client_request_token
    #   A unique identifier for this `ContinueUpdateRollback` request. Specify
    #   this token if you plan to retry requests so that AWS CloudFormation
    #   knows that you're not attempting to continue the rollback to a stack
    #   with the same name. You might retry `ContinueUpdateRollback` requests
    #   to ensure that AWS CloudFormation successfully received them.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.continue_update_rollback({
    #     stack_name: "StackNameOrId", # required
    #     role_arn: "RoleARN",
    #     resources_to_skip: ["ResourceToSkip"],
    #     client_request_token: "ClientRequestToken",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/ContinueUpdateRollback AWS API Documentation
    #
    # @overload continue_update_rollback(params = {})
    # @param [Hash] params ({})
    def continue_update_rollback(params = {}, options = {})
      req = build_request(:continue_update_rollback, params)
      req.send_request(options)
    end

    # Creates a list of changes that will be applied to a stack so that you
    # can review the changes before executing them. You can create a change
    # set for a stack that doesn't exist or an existing stack. If you
    # create a change set for a stack that doesn't exist, the change set
    # shows all of the resources that AWS CloudFormation will create. If you
    # create a change set for an existing stack, AWS CloudFormation compares
    # the stack's information with the information that you submit in the
    # change set and lists the differences. Use change sets to understand
    # which resources AWS CloudFormation will create or change, and how it
    # will change resources in an existing stack, before you create or
    # update a stack.
    #
    # To create a change set for a stack that doesn't exist, for the
    # `ChangeSetType` parameter, specify `CREATE`. To create a change set
    # for an existing stack, specify `UPDATE` for the `ChangeSetType`
    # parameter. To create a change set for an import operation, specify
    # `IMPORT` for the `ChangeSetType` parameter. After the
    # `CreateChangeSet` call successfully completes, AWS CloudFormation
    # starts creating the change set. To check the status of the change set
    # or to review it, use the DescribeChangeSet action.
    #
    # When you are satisfied with the changes the change set will make,
    # execute the change set by using the ExecuteChangeSet action. AWS
    # CloudFormation doesn't make changes until you execute the change set.
    #
    # @option params [required, String] :stack_name
    #   The name or the unique ID of the stack for which you are creating a
    #   change set. AWS CloudFormation generates the change set by comparing
    #   this stack's information with the information that you submit, such
    #   as a modified template or different parameter input values.
    #
    # @option params [String] :template_body
    #   A structure that contains the body of the revised template, with a
    #   minimum length of 1 byte and a maximum length of 51,200 bytes. AWS
    #   CloudFormation generates the change set by comparing this template
    #   with the template of the stack that you specified.
    #
    #   Conditional: You must specify only `TemplateBody` or `TemplateURL`.
    #
    # @option params [String] :template_url
    #   The location of the file that contains the revised template. The URL
    #   must point to a template (max size: 460,800 bytes) that is located in
    #   an S3 bucket. AWS CloudFormation generates the change set by comparing
    #   this template with the stack that you specified.
    #
    #   Conditional: You must specify only `TemplateBody` or `TemplateURL`.
    #
    # @option params [Boolean] :use_previous_template
    #   Whether to reuse the template that is associated with the stack to
    #   create the change set.
    #
    # @option params [Array<Types::Parameter>] :parameters
    #   A list of `Parameter` structures that specify input parameters for the
    #   change set. For more information, see the Parameter data type.
    #
    # @option params [Array<String>] :capabilities
    #   In some cases, you must explicitly acknowledge that your stack
    #   template contains certain capabilities in order for AWS CloudFormation
    #   to create the stack.
    #
    #   * `CAPABILITY_IAM` and `CAPABILITY_NAMED_IAM`
    #
    #     Some stack templates might include resources that can affect
    #     permissions in your AWS account; for example, by creating new AWS
    #     Identity and Access Management (IAM) users. For those stacks, you
    #     must explicitly acknowledge this by specifying one of these
    #     capabilities.
    #
    #     The following IAM resources require you to specify either the
    #     `CAPABILITY_IAM` or `CAPABILITY_NAMED_IAM` capability.
    #
    #     * If you have IAM resources, you can specify either capability.
    #
    #     * If you have IAM resources with custom names, you *must* specify
    #       `CAPABILITY_NAMED_IAM`.
    #
    #     * If you don't specify either of these capabilities, AWS
    #       CloudFormation returns an `InsufficientCapabilities` error.
    #
    #     If your stack template contains these resources, we recommend that
    #     you review all permissions associated with them and edit their
    #     permissions if necessary.
    #
    #     * [ AWS::IAM::AccessKey][1]
    #
    #     * [ AWS::IAM::Group][2]
    #
    #     * [ AWS::IAM::InstanceProfile][3]
    #
    #     * [ AWS::IAM::Policy][4]
    #
    #     * [ AWS::IAM::Role][5]
    #
    #     * [ AWS::IAM::User][6]
    #
    #     * [ AWS::IAM::UserToGroupAddition][7]
    #
    #     For more information, see [Acknowledging IAM Resources in AWS
    #     CloudFormation Templates][8].
    #
    #   * `CAPABILITY_AUTO_EXPAND`
    #
    #     Some template contain macros. Macros perform custom processing on
    #     templates; this can include simple actions like find-and-replace
    #     operations, all the way to extensive transformations of entire
    #     templates. Because of this, users typically create a change set from
    #     the processed template, so that they can review the changes
    #     resulting from the macros before actually creating the stack. If
    #     your stack template contains one or more macros, and you choose to
    #     create a stack directly from the processed template, without first
    #     reviewing the resulting changes in a change set, you must
    #     acknowledge this capability. This includes the [AWS::Include][9] and
    #     [AWS::Serverless][10] transforms, which are macros hosted by AWS
    #     CloudFormation.
    #
    #     <note markdown="1"> This capacity does not apply to creating change sets, and specifying
    #     it when creating change sets has no effect.
    #
    #      Also, change sets do not currently support nested stacks. If you
    #     want to create a stack from a stack template that contains macros
    #     *and* nested stacks, you must create or update the stack directly
    #     from the template using the CreateStack or UpdateStack action, and
    #     specifying this capability.
    #
    #      </note>
    #
    #     For more information on macros, see [Using AWS CloudFormation Macros
    #     to Perform Custom Processing on Templates][11].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-accesskey.html
    #   [2]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-group.html
    #   [3]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-instanceprofile.html
    #   [4]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-policy.html
    #   [5]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-role.html
    #   [6]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-user.html
    #   [7]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-addusertogroup.html
    #   [8]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-iam-template.html#capabilities
    #   [9]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/create-reusable-transform-function-snippets-and-add-to-your-template-with-aws-include-transform.html
    #   [10]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/transform-aws-serverless.html
    #   [11]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-macros.html
    #
    # @option params [Array<String>] :resource_types
    #   The template resource types that you have permissions to work with if
    #   you execute this change set, such as `AWS::EC2::Instance`,
    #   `AWS::EC2::*`, or `Custom::MyCustomInstance`.
    #
    #   If the list of resource types doesn't include a resource type that
    #   you're updating, the stack update fails. By default, AWS
    #   CloudFormation grants permissions to all resource types. AWS Identity
    #   and Access Management (IAM) uses this parameter for condition keys in
    #   IAM policies for AWS CloudFormation. For more information, see
    #   [Controlling Access with AWS Identity and Access Management][1] in the
    #   AWS CloudFormation User Guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-iam-template.html
    #
    # @option params [String] :role_arn
    #   The Amazon Resource Name (ARN) of an AWS Identity and Access
    #   Management (IAM) role that AWS CloudFormation assumes when executing
    #   the change set. AWS CloudFormation uses the role's credentials to
    #   make calls on your behalf. AWS CloudFormation uses this role for all
    #   future operations on the stack. As long as users have permission to
    #   operate on the stack, AWS CloudFormation uses this role even if the
    #   users don't have permission to pass it. Ensure that the role grants
    #   least privilege.
    #
    #   If you don't specify a value, AWS CloudFormation uses the role that
    #   was previously associated with the stack. If no role is available, AWS
    #   CloudFormation uses a temporary session that is generated from your
    #   user credentials.
    #
    # @option params [Types::RollbackConfiguration] :rollback_configuration
    #   The rollback triggers for AWS CloudFormation to monitor during stack
    #   creation and updating operations, and for the specified monitoring
    #   period afterwards.
    #
    # @option params [Array<String>] :notification_arns
    #   The Amazon Resource Names (ARNs) of Amazon Simple Notification Service
    #   (Amazon SNS) topics that AWS CloudFormation associates with the stack.
    #   To remove all associated notification topics, specify an empty list.
    #
    # @option params [Array<Types::Tag>] :tags
    #   Key-value pairs to associate with this stack. AWS CloudFormation also
    #   propagates these tags to resources in the stack. You can specify a
    #   maximum of 50 tags.
    #
    # @option params [required, String] :change_set_name
    #   The name of the change set. The name must be unique among all change
    #   sets that are associated with the specified stack.
    #
    #   A change set name can contain only alphanumeric, case sensitive
    #   characters and hyphens. It must start with an alphabetic character and
    #   cannot exceed 128 characters.
    #
    # @option params [String] :client_token
    #   A unique identifier for this `CreateChangeSet` request. Specify this
    #   token if you plan to retry requests so that AWS CloudFormation knows
    #   that you're not attempting to create another change set with the same
    #   name. You might retry `CreateChangeSet` requests to ensure that AWS
    #   CloudFormation successfully received them.
    #
    # @option params [String] :description
    #   A description to help you identify this change set.
    #
    # @option params [String] :change_set_type
    #   The type of change set operation. To create a change set for a new
    #   stack, specify `CREATE`. To create a change set for an existing stack,
    #   specify `UPDATE`. To create a change set for an import operation,
    #   specify `IMPORT`.
    #
    #   If you create a change set for a new stack, AWS Cloudformation creates
    #   a stack with a unique stack ID, but no template or resources. The
    #   stack will be in the [ `REVIEW_IN_PROGRESS` ][1] state until you
    #   execute the change set.
    #
    #   By default, AWS CloudFormation specifies `UPDATE`. You can't use the
    #   `UPDATE` type to create a change set for a new stack or the `CREATE`
    #   type to create a change set for an existing stack.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-describing-stacks.html#d0e11995
    #
    # @option params [Array<Types::ResourceToImport>] :resources_to_import
    #   The resources to import into your stack.
    #
    # @return [Types::CreateChangeSetOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateChangeSetOutput#id #id} => String
    #   * {Types::CreateChangeSetOutput#stack_id #stack_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_change_set({
    #     stack_name: "StackNameOrId", # required
    #     template_body: "TemplateBody",
    #     template_url: "TemplateURL",
    #     use_previous_template: false,
    #     parameters: [
    #       {
    #         parameter_key: "ParameterKey",
    #         parameter_value: "ParameterValue",
    #         use_previous_value: false,
    #         resolved_value: "ParameterValue",
    #       },
    #     ],
    #     capabilities: ["CAPABILITY_IAM"], # accepts CAPABILITY_IAM, CAPABILITY_NAMED_IAM, CAPABILITY_AUTO_EXPAND
    #     resource_types: ["ResourceType"],
    #     role_arn: "RoleARN",
    #     rollback_configuration: {
    #       rollback_triggers: [
    #         {
    #           arn: "Arn", # required
    #           type: "Type", # required
    #         },
    #       ],
    #       monitoring_time_in_minutes: 1,
    #     },
    #     notification_arns: ["NotificationARN"],
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     change_set_name: "ChangeSetName", # required
    #     client_token: "ClientToken",
    #     description: "Description",
    #     change_set_type: "CREATE", # accepts CREATE, UPDATE, IMPORT
    #     resources_to_import: [
    #       {
    #         resource_type: "ResourceType", # required
    #         logical_resource_id: "LogicalResourceId", # required
    #         resource_identifier: { # required
    #           "ResourceIdentifierPropertyKey" => "ResourceIdentifierPropertyValue",
    #         },
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.stack_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/CreateChangeSet AWS API Documentation
    #
    # @overload create_change_set(params = {})
    # @param [Hash] params ({})
    def create_change_set(params = {}, options = {})
      req = build_request(:create_change_set, params)
      req.send_request(options)
    end

    # Creates a stack as specified in the template. After the call completes
    # successfully, the stack creation starts. You can check the status of
    # the stack via the DescribeStacks API.
    #
    # @option params [required, String] :stack_name
    #   The name that is associated with the stack. The name must be unique in
    #   the Region in which you are creating the stack.
    #
    #   <note markdown="1"> A stack name can contain only alphanumeric characters (case sensitive)
    #   and hyphens. It must start with an alphabetic character and cannot be
    #   longer than 128 characters.
    #
    #    </note>
    #
    # @option params [String] :template_body
    #   Structure containing the template body with a minimum length of 1 byte
    #   and a maximum length of 51,200 bytes. For more information, go to
    #   [Template Anatomy][1] in the AWS CloudFormation User Guide.
    #
    #   Conditional: You must specify either the `TemplateBody` or the
    #   `TemplateURL` parameter, but not both.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html
    #
    # @option params [String] :template_url
    #   Location of file containing the template body. The URL must point to a
    #   template (max size: 460,800 bytes) that is located in an Amazon S3
    #   bucket. For more information, go to the [Template Anatomy][1] in the
    #   AWS CloudFormation User Guide.
    #
    #   Conditional: You must specify either the `TemplateBody` or the
    #   `TemplateURL` parameter, but not both.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html
    #
    # @option params [Array<Types::Parameter>] :parameters
    #   A list of `Parameter` structures that specify input parameters for the
    #   stack. For more information, see the [Parameter][1] data type.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_Parameter.html
    #
    # @option params [Boolean] :disable_rollback
    #   Set to `true` to disable rollback of the stack if stack creation
    #   failed. You can specify either `DisableRollback` or `OnFailure`, but
    #   not both.
    #
    #   Default: `false`
    #
    # @option params [Types::RollbackConfiguration] :rollback_configuration
    #   The rollback triggers for AWS CloudFormation to monitor during stack
    #   creation and updating operations, and for the specified monitoring
    #   period afterwards.
    #
    # @option params [Integer] :timeout_in_minutes
    #   The amount of time that can pass before the stack status becomes
    #   CREATE\_FAILED; if `DisableRollback` is not set or is set to `false`,
    #   the stack will be rolled back.
    #
    # @option params [Array<String>] :notification_arns
    #   The Simple Notification Service (SNS) topic ARNs to publish stack
    #   related events. You can find your SNS topic ARNs using the SNS console
    #   or your Command Line Interface (CLI).
    #
    # @option params [Array<String>] :capabilities
    #   In some cases, you must explicitly acknowledge that your stack
    #   template contains certain capabilities in order for AWS CloudFormation
    #   to create the stack.
    #
    #   * `CAPABILITY_IAM` and `CAPABILITY_NAMED_IAM`
    #
    #     Some stack templates might include resources that can affect
    #     permissions in your AWS account; for example, by creating new AWS
    #     Identity and Access Management (IAM) users. For those stacks, you
    #     must explicitly acknowledge this by specifying one of these
    #     capabilities.
    #
    #     The following IAM resources require you to specify either the
    #     `CAPABILITY_IAM` or `CAPABILITY_NAMED_IAM` capability.
    #
    #     * If you have IAM resources, you can specify either capability.
    #
    #     * If you have IAM resources with custom names, you *must* specify
    #       `CAPABILITY_NAMED_IAM`.
    #
    #     * If you don't specify either of these capabilities, AWS
    #       CloudFormation returns an `InsufficientCapabilities` error.
    #
    #     If your stack template contains these resources, we recommend that
    #     you review all permissions associated with them and edit their
    #     permissions if necessary.
    #
    #     * [ AWS::IAM::AccessKey][1]
    #
    #     * [ AWS::IAM::Group][2]
    #
    #     * [ AWS::IAM::InstanceProfile][3]
    #
    #     * [ AWS::IAM::Policy][4]
    #
    #     * [ AWS::IAM::Role][5]
    #
    #     * [ AWS::IAM::User][6]
    #
    #     * [ AWS::IAM::UserToGroupAddition][7]
    #
    #     For more information, see [Acknowledging IAM Resources in AWS
    #     CloudFormation Templates][8].
    #
    #   * `CAPABILITY_AUTO_EXPAND`
    #
    #     Some template contain macros. Macros perform custom processing on
    #     templates; this can include simple actions like find-and-replace
    #     operations, all the way to extensive transformations of entire
    #     templates. Because of this, users typically create a change set from
    #     the processed template, so that they can review the changes
    #     resulting from the macros before actually creating the stack. If
    #     your stack template contains one or more macros, and you choose to
    #     create a stack directly from the processed template, without first
    #     reviewing the resulting changes in a change set, you must
    #     acknowledge this capability. This includes the [AWS::Include][9] and
    #     [AWS::Serverless][10] transforms, which are macros hosted by AWS
    #     CloudFormation.
    #
    #     Change sets do not currently support nested stacks. If you want to
    #     create a stack from a stack template that contains macros *and*
    #     nested stacks, you must create the stack directly from the template
    #     using this capability.
    #
    #     You should only create stacks directly from a stack template that
    #     contains macros if you know what processing the macro performs.
    #
    #      Each macro relies on an underlying Lambda service function for
    #     processing stack templates. Be aware that the Lambda function owner
    #     can update the function operation without AWS CloudFormation being
    #     notified.
    #
    #     For more information, see [Using AWS CloudFormation Macros to
    #     Perform Custom Processing on Templates][11].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-accesskey.html
    #   [2]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-group.html
    #   [3]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-instanceprofile.html
    #   [4]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-policy.html
    #   [5]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-role.html
    #   [6]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-user.html
    #   [7]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-addusertogroup.html
    #   [8]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-iam-template.html#capabilities
    #   [9]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/create-reusable-transform-function-snippets-and-add-to-your-template-with-aws-include-transform.html
    #   [10]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/transform-aws-serverless.html
    #   [11]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-macros.html
    #
    # @option params [Array<String>] :resource_types
    #   The template resource types that you have permissions to work with for
    #   this create stack action, such as `AWS::EC2::Instance`, `AWS::EC2::*`,
    #   or `Custom::MyCustomInstance`. Use the following syntax to describe
    #   template resource types: `AWS::*` (for all AWS resource), `Custom::*`
    #   (for all custom resources), `Custom::logical_ID ` (for a specific
    #   custom resource), `AWS::service_name::*` (for all resources of a
    #   particular AWS service), and `AWS::service_name::resource_logical_ID `
    #   (for a specific AWS resource).
    #
    #   If the list of resource types doesn't include a resource that you're
    #   creating, the stack creation fails. By default, AWS CloudFormation
    #   grants permissions to all resource types. AWS Identity and Access
    #   Management (IAM) uses this parameter for AWS CloudFormation-specific
    #   condition keys in IAM policies. For more information, see [Controlling
    #   Access with AWS Identity and Access Management][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-iam-template.html
    #
    # @option params [String] :role_arn
    #   The Amazon Resource Name (ARN) of an AWS Identity and Access
    #   Management (IAM) role that AWS CloudFormation assumes to create the
    #   stack. AWS CloudFormation uses the role's credentials to make calls
    #   on your behalf. AWS CloudFormation always uses this role for all
    #   future operations on the stack. As long as users have permission to
    #   operate on the stack, AWS CloudFormation uses this role even if the
    #   users don't have permission to pass it. Ensure that the role grants
    #   least privilege.
    #
    #   If you don't specify a value, AWS CloudFormation uses the role that
    #   was previously associated with the stack. If no role is available, AWS
    #   CloudFormation uses a temporary session that is generated from your
    #   user credentials.
    #
    # @option params [String] :on_failure
    #   Determines what action will be taken if stack creation fails. This
    #   must be one of: DO\_NOTHING, ROLLBACK, or DELETE. You can specify
    #   either `OnFailure` or `DisableRollback`, but not both.
    #
    #   Default: `ROLLBACK`
    #
    # @option params [String] :stack_policy_body
    #   Structure containing the stack policy body. For more information, go
    #   to [ Prevent Updates to Stack Resources][1] in the *AWS CloudFormation
    #   User Guide*. You can specify either the `StackPolicyBody` or the
    #   `StackPolicyURL` parameter, but not both.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/protect-stack-resources.html
    #
    # @option params [String] :stack_policy_url
    #   Location of a file containing the stack policy. The URL must point to
    #   a policy (maximum size: 16 KB) located in an S3 bucket in the same
    #   Region as the stack. You can specify either the `StackPolicyBody` or
    #   the `StackPolicyURL` parameter, but not both.
    #
    # @option params [Array<Types::Tag>] :tags
    #   Key-value pairs to associate with this stack. AWS CloudFormation also
    #   propagates these tags to the resources created in the stack. A maximum
    #   number of 50 tags can be specified.
    #
    # @option params [String] :client_request_token
    #   A unique identifier for this `CreateStack` request. Specify this token
    #   if you plan to retry requests so that AWS CloudFormation knows that
    #   you're not attempting to create a stack with the same name. You might
    #   retry `CreateStack` requests to ensure that AWS CloudFormation
    #   successfully received them.
    #
    #   All events triggered by a given stack operation are assigned the same
    #   client request token, which you can use to track operations. For
    #   example, if you execute a `CreateStack` operation with the token
    #   `token1`, then all the `StackEvents` generated by that operation will
    #   have `ClientRequestToken` set as `token1`.
    #
    #   In the console, stack operations display the client request token on
    #   the Events tab. Stack operations that are initiated from the console
    #   use the token format *Console-StackOperation-ID*, which helps you
    #   easily identify the stack operation . For example, if you create a
    #   stack using the console, each stack event would be assigned the same
    #   token in the following format:
    #   `Console-CreateStack-7f59c3cf-00d2-40c7-b2ff-e75db0987002`.
    #
    # @option params [Boolean] :enable_termination_protection
    #   Whether to enable termination protection on the specified stack. If a
    #   user attempts to delete a stack with termination protection enabled,
    #   the operation fails and the stack remains unchanged. For more
    #   information, see [Protecting a Stack From Being Deleted][1] in the
    #   *AWS CloudFormation User Guide*. Termination protection is disabled on
    #   stacks by default.
    #
    #   For [nested stacks][2], termination protection is set on the root
    #   stack and cannot be changed directly on the nested stack.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-protect-stacks.html
    #   [2]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-nested-stacks.html
    #
    # @return [Types::CreateStackOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateStackOutput#stack_id #stack_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_stack({
    #     stack_name: "StackName", # required
    #     template_body: "TemplateBody",
    #     template_url: "TemplateURL",
    #     parameters: [
    #       {
    #         parameter_key: "ParameterKey",
    #         parameter_value: "ParameterValue",
    #         use_previous_value: false,
    #         resolved_value: "ParameterValue",
    #       },
    #     ],
    #     disable_rollback: false,
    #     rollback_configuration: {
    #       rollback_triggers: [
    #         {
    #           arn: "Arn", # required
    #           type: "Type", # required
    #         },
    #       ],
    #       monitoring_time_in_minutes: 1,
    #     },
    #     timeout_in_minutes: 1,
    #     notification_arns: ["NotificationARN"],
    #     capabilities: ["CAPABILITY_IAM"], # accepts CAPABILITY_IAM, CAPABILITY_NAMED_IAM, CAPABILITY_AUTO_EXPAND
    #     resource_types: ["ResourceType"],
    #     role_arn: "RoleARN",
    #     on_failure: "DO_NOTHING", # accepts DO_NOTHING, ROLLBACK, DELETE
    #     stack_policy_body: "StackPolicyBody",
    #     stack_policy_url: "StackPolicyURL",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     client_request_token: "ClientRequestToken",
    #     enable_termination_protection: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.stack_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/CreateStack AWS API Documentation
    #
    # @overload create_stack(params = {})
    # @param [Hash] params ({})
    def create_stack(params = {}, options = {})
      req = build_request(:create_stack, params)
      req.send_request(options)
    end

    # Creates stack instances for the specified accounts, within the
    # specified Regions. A stack instance refers to a stack in a specific
    # account and Region. You must specify at least one value for either
    # `Accounts` or `DeploymentTargets`, and you must specify at least one
    # value for `Regions`.
    #
    # @option params [required, String] :stack_set_name
    #   The name or unique ID of the stack set that you want to create stack
    #   instances from.
    #
    # @option params [Array<String>] :accounts
    #   \[`Self-managed` permissions\] The names of one or more AWS accounts
    #   that you want to create stack instances in the specified Region(s)
    #   for.
    #
    #   You can specify `Accounts` or `DeploymentTargets`, but not both.
    #
    # @option params [Types::DeploymentTargets] :deployment_targets
    #   \[`Service-managed` permissions\] The AWS Organizations accounts for
    #   which to create stack instances in the specified Regions.
    #
    #   You can specify `Accounts` or `DeploymentTargets`, but not both.
    #
    # @option params [required, Array<String>] :regions
    #   The names of one or more Regions where you want to create stack
    #   instances using the specified AWS account(s).
    #
    # @option params [Array<Types::Parameter>] :parameter_overrides
    #   A list of stack set parameters whose values you want to override in
    #   the selected stack instances.
    #
    #   Any overridden parameter values will be applied to all stack instances
    #   in the specified accounts and Regions. When specifying parameters and
    #   their values, be aware of how AWS CloudFormation sets parameter values
    #   during stack instance operations:
    #
    #   * To override the current value for a parameter, include the parameter
    #     and specify its value.
    #
    #   * To leave a parameter set to its present value, you can do one of the
    #     following:
    #
    #     * Do not include the parameter in the list.
    #
    #     * Include the parameter and specify `UsePreviousValue` as `true`.
    #       (You cannot specify both a value and set `UsePreviousValue` to
    #       `true`.)
    #
    #   * To set all overridden parameter back to the values specified in the
    #     stack set, specify a parameter list but do not include any
    #     parameters.
    #
    #   * To leave all parameters set to their present values, do not specify
    #     this property at all.
    #
    #   During stack set updates, any parameter values overridden for a stack
    #   instance are not updated, but retain their overridden value.
    #
    #   You can only override the parameter *values* that are specified in the
    #   stack set; to add or delete a parameter itself, use
    #   [UpdateStackSet][1] to update the stack set template.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_UpdateStackSet.html
    #
    # @option params [Types::StackSetOperationPreferences] :operation_preferences
    #   Preferences for how AWS CloudFormation performs this stack set
    #   operation.
    #
    # @option params [String] :operation_id
    #   The unique identifier for this stack set operation.
    #
    #   The operation ID also functions as an idempotency token, to ensure
    #   that AWS CloudFormation performs the stack set operation only once,
    #   even if you retry the request multiple times. You might retry stack
    #   set operation requests to ensure that AWS CloudFormation successfully
    #   received them.
    #
    #   If you don't specify an operation ID, the SDK generates one
    #   automatically.
    #
    #   Repeating this stack set operation with a new operation ID retries all
    #   stack instances whose status is `OUTDATED`.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreateStackInstancesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateStackInstancesOutput#operation_id #operation_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_stack_instances({
    #     stack_set_name: "StackSetName", # required
    #     accounts: ["Account"],
    #     deployment_targets: {
    #       accounts: ["Account"],
    #       organizational_unit_ids: ["OrganizationalUnitId"],
    #     },
    #     regions: ["Region"], # required
    #     parameter_overrides: [
    #       {
    #         parameter_key: "ParameterKey",
    #         parameter_value: "ParameterValue",
    #         use_previous_value: false,
    #         resolved_value: "ParameterValue",
    #       },
    #     ],
    #     operation_preferences: {
    #       region_order: ["Region"],
    #       failure_tolerance_count: 1,
    #       failure_tolerance_percentage: 1,
    #       max_concurrent_count: 1,
    #       max_concurrent_percentage: 1,
    #     },
    #     operation_id: "ClientRequestToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.operation_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/CreateStackInstances AWS API Documentation
    #
    # @overload create_stack_instances(params = {})
    # @param [Hash] params ({})
    def create_stack_instances(params = {}, options = {})
      req = build_request(:create_stack_instances, params)
      req.send_request(options)
    end

    # Creates a stack set.
    #
    # @option params [required, String] :stack_set_name
    #   The name to associate with the stack set. The name must be unique in
    #   the Region where you create your stack set.
    #
    #   <note markdown="1"> A stack name can contain only alphanumeric characters (case-sensitive)
    #   and hyphens. It must start with an alphabetic character and can't be
    #   longer than 128 characters.
    #
    #    </note>
    #
    # @option params [String] :description
    #   A description of the stack set. You can use the description to
    #   identify the stack set's purpose or other important information.
    #
    # @option params [String] :template_body
    #   The structure that contains the template body, with a minimum length
    #   of 1 byte and a maximum length of 51,200 bytes. For more information,
    #   see [Template Anatomy][1] in the AWS CloudFormation User Guide.
    #
    #   Conditional: You must specify either the TemplateBody or the
    #   TemplateURL parameter, but not both.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html
    #
    # @option params [String] :template_url
    #   The location of the file that contains the template body. The URL must
    #   point to a template (maximum size: 460,800 bytes) that's located in
    #   an Amazon S3 bucket. For more information, see [Template Anatomy][1]
    #   in the AWS CloudFormation User Guide.
    #
    #   Conditional: You must specify either the TemplateBody or the
    #   TemplateURL parameter, but not both.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html
    #
    # @option params [Array<Types::Parameter>] :parameters
    #   The input parameters for the stack set template.
    #
    # @option params [Array<String>] :capabilities
    #   In some cases, you must explicitly acknowledge that your stack set
    #   template contains certain capabilities in order for AWS CloudFormation
    #   to create the stack set and related stack instances.
    #
    #   * `CAPABILITY_IAM` and `CAPABILITY_NAMED_IAM`
    #
    #     Some stack templates might include resources that can affect
    #     permissions in your AWS account; for example, by creating new AWS
    #     Identity and Access Management (IAM) users. For those stack sets,
    #     you must explicitly acknowledge this by specifying one of these
    #     capabilities.
    #
    #     The following IAM resources require you to specify either the
    #     `CAPABILITY_IAM` or `CAPABILITY_NAMED_IAM` capability.
    #
    #     * If you have IAM resources, you can specify either capability.
    #
    #     * If you have IAM resources with custom names, you *must* specify
    #       `CAPABILITY_NAMED_IAM`.
    #
    #     * If you don't specify either of these capabilities, AWS
    #       CloudFormation returns an `InsufficientCapabilities` error.
    #
    #     If your stack template contains these resources, we recommend that
    #     you review all permissions associated with them and edit their
    #     permissions if necessary.
    #
    #     * [ AWS::IAM::AccessKey][1]
    #
    #     * [ AWS::IAM::Group][2]
    #
    #     * [ AWS::IAM::InstanceProfile][3]
    #
    #     * [ AWS::IAM::Policy][4]
    #
    #     * [ AWS::IAM::Role][5]
    #
    #     * [ AWS::IAM::User][6]
    #
    #     * [ AWS::IAM::UserToGroupAddition][7]
    #
    #     For more information, see [Acknowledging IAM Resources in AWS
    #     CloudFormation Templates][8].
    #
    #   * `CAPABILITY_AUTO_EXPAND`
    #
    #     Some templates contain macros. If your stack template contains one
    #     or more macros, and you choose to create a stack directly from the
    #     processed template, without first reviewing the resulting changes in
    #     a change set, you must acknowledge this capability. For more
    #     information, see [Using AWS CloudFormation Macros to Perform Custom
    #     Processing on Templates][9].
    #
    #     <note markdown="1"> Stack sets do not currently support macros in stack templates. (This
    #     includes the [AWS::Include][10] and [AWS::Serverless][11]
    #     transforms, which are macros hosted by AWS CloudFormation.) Even if
    #     you specify this capability, if you include a macro in your template
    #     the stack set operation will fail.
    #
    #      </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-accesskey.html
    #   [2]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-group.html
    #   [3]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-instanceprofile.html
    #   [4]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-policy.html
    #   [5]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-role.html
    #   [6]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-user.html
    #   [7]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-addusertogroup.html
    #   [8]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-iam-template.html#capabilities
    #   [9]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-macros.html
    #   [10]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/create-reusable-transform-function-snippets-and-add-to-your-template-with-aws-include-transform.html
    #   [11]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/transform-aws-serverless.html
    #
    # @option params [Array<Types::Tag>] :tags
    #   The key-value pairs to associate with this stack set and the stacks
    #   created from it. AWS CloudFormation also propagates these tags to
    #   supported resources that are created in the stacks. A maximum number
    #   of 50 tags can be specified.
    #
    #   If you specify tags as part of a `CreateStackSet` action, AWS
    #   CloudFormation checks to see if you have the required IAM permission
    #   to tag resources. If you don't, the entire `CreateStackSet` action
    #   fails with an `access denied` error, and the stack set is not created.
    #
    # @option params [String] :administration_role_arn
    #   The Amazon Resource Number (ARN) of the IAM role to use to create this
    #   stack set.
    #
    #   Specify an IAM role only if you are using customized administrator
    #   roles to control which users or groups can manage specific stack sets
    #   within the same administrator account. For more information, see
    #   [Prerequisites: Granting Permissions for Stack Set Operations][1] in
    #   the *AWS CloudFormation User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-prereqs.html
    #
    # @option params [String] :execution_role_name
    #   The name of the IAM execution role to use to create the stack set. If
    #   you do not specify an execution role, AWS CloudFormation uses the
    #   `AWSCloudFormationStackSetExecutionRole` role for the stack set
    #   operation.
    #
    #   Specify an IAM role only if you are using customized execution roles
    #   to control which stack resources users and groups can include in their
    #   stack sets.
    #
    # @option params [String] :permission_model
    #   Describes how the IAM roles required for stack set operations are
    #   created. By default, `SELF-MANAGED` is specified.
    #
    #   * With `self-managed` permissions, you must create the administrator
    #     and execution roles required to deploy to target accounts. For more
    #     information, see [Grant Self-Managed Stack Set Permissions][1].
    #
    #   * With `service-managed` permissions, StackSets automatically creates
    #     the IAM roles required to deploy to accounts managed by AWS
    #     Organizations. For more information, see [Grant Service-Managed
    #     Stack Set Permissions][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-prereqs-self-managed.html
    #   [2]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-prereqs-service-managed.html
    #
    # @option params [Types::AutoDeployment] :auto_deployment
    #   Describes whether StackSets automatically deploys to AWS Organizations
    #   accounts that are added to the target organization or organizational
    #   unit (OU). Specify only if `PermissionModel` is `SERVICE_MANAGED`.
    #
    # @option params [String] :client_request_token
    #   A unique identifier for this `CreateStackSet` request. Specify this
    #   token if you plan to retry requests so that AWS CloudFormation knows
    #   that you're not attempting to create another stack set with the same
    #   name. You might retry `CreateStackSet` requests to ensure that AWS
    #   CloudFormation successfully received them.
    #
    #   If you don't specify an operation ID, the SDK generates one
    #   automatically.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreateStackSetOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateStackSetOutput#stack_set_id #stack_set_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_stack_set({
    #     stack_set_name: "StackSetName", # required
    #     description: "Description",
    #     template_body: "TemplateBody",
    #     template_url: "TemplateURL",
    #     parameters: [
    #       {
    #         parameter_key: "ParameterKey",
    #         parameter_value: "ParameterValue",
    #         use_previous_value: false,
    #         resolved_value: "ParameterValue",
    #       },
    #     ],
    #     capabilities: ["CAPABILITY_IAM"], # accepts CAPABILITY_IAM, CAPABILITY_NAMED_IAM, CAPABILITY_AUTO_EXPAND
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     administration_role_arn: "RoleARN",
    #     execution_role_name: "ExecutionRoleName",
    #     permission_model: "SERVICE_MANAGED", # accepts SERVICE_MANAGED, SELF_MANAGED
    #     auto_deployment: {
    #       enabled: false,
    #       retain_stacks_on_account_removal: false,
    #     },
    #     client_request_token: "ClientRequestToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.stack_set_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/CreateStackSet AWS API Documentation
    #
    # @overload create_stack_set(params = {})
    # @param [Hash] params ({})
    def create_stack_set(params = {}, options = {})
      req = build_request(:create_stack_set, params)
      req.send_request(options)
    end

    # Deletes the specified change set. Deleting change sets ensures that no
    # one executes the wrong change set.
    #
    # If the call successfully completes, AWS CloudFormation successfully
    # deleted the change set.
    #
    # @option params [required, String] :change_set_name
    #   The name or Amazon Resource Name (ARN) of the change set that you want
    #   to delete.
    #
    # @option params [String] :stack_name
    #   If you specified the name of a change set to delete, specify the stack
    #   name or ID (ARN) that is associated with it.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_change_set({
    #     change_set_name: "ChangeSetNameOrId", # required
    #     stack_name: "StackNameOrId",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/DeleteChangeSet AWS API Documentation
    #
    # @overload delete_change_set(params = {})
    # @param [Hash] params ({})
    def delete_change_set(params = {}, options = {})
      req = build_request(:delete_change_set, params)
      req.send_request(options)
    end

    # Deletes a specified stack. Once the call completes successfully, stack
    # deletion starts. Deleted stacks do not show up in the DescribeStacks
    # API if the deletion has been completed successfully.
    #
    # @option params [required, String] :stack_name
    #   The name or the unique stack ID that is associated with the stack.
    #
    # @option params [Array<String>] :retain_resources
    #   For stacks in the `DELETE_FAILED` state, a list of resource logical
    #   IDs that are associated with the resources you want to retain. During
    #   deletion, AWS CloudFormation deletes the stack but does not delete the
    #   retained resources.
    #
    #   Retaining resources is useful when you cannot delete a resource, such
    #   as a non-empty S3 bucket, but you want to delete the stack.
    #
    # @option params [String] :role_arn
    #   The Amazon Resource Name (ARN) of an AWS Identity and Access
    #   Management (IAM) role that AWS CloudFormation assumes to delete the
    #   stack. AWS CloudFormation uses the role's credentials to make calls
    #   on your behalf.
    #
    #   If you don't specify a value, AWS CloudFormation uses the role that
    #   was previously associated with the stack. If no role is available, AWS
    #   CloudFormation uses a temporary session that is generated from your
    #   user credentials.
    #
    # @option params [String] :client_request_token
    #   A unique identifier for this `DeleteStack` request. Specify this token
    #   if you plan to retry requests so that AWS CloudFormation knows that
    #   you're not attempting to delete a stack with the same name. You might
    #   retry `DeleteStack` requests to ensure that AWS CloudFormation
    #   successfully received them.
    #
    #   All events triggered by a given stack operation are assigned the same
    #   client request token, which you can use to track operations. For
    #   example, if you execute a `CreateStack` operation with the token
    #   `token1`, then all the `StackEvents` generated by that operation will
    #   have `ClientRequestToken` set as `token1`.
    #
    #   In the console, stack operations display the client request token on
    #   the Events tab. Stack operations that are initiated from the console
    #   use the token format *Console-StackOperation-ID*, which helps you
    #   easily identify the stack operation . For example, if you create a
    #   stack using the console, each stack event would be assigned the same
    #   token in the following format:
    #   `Console-CreateStack-7f59c3cf-00d2-40c7-b2ff-e75db0987002`.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_stack({
    #     stack_name: "StackName", # required
    #     retain_resources: ["LogicalResourceId"],
    #     role_arn: "RoleARN",
    #     client_request_token: "ClientRequestToken",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/DeleteStack AWS API Documentation
    #
    # @overload delete_stack(params = {})
    # @param [Hash] params ({})
    def delete_stack(params = {}, options = {})
      req = build_request(:delete_stack, params)
      req.send_request(options)
    end

    # Deletes stack instances for the specified accounts, in the specified
    # Regions.
    #
    # @option params [required, String] :stack_set_name
    #   The name or unique ID of the stack set that you want to delete stack
    #   instances for.
    #
    # @option params [Array<String>] :accounts
    #   \[`Self-managed` permissions\] The names of the AWS accounts that you
    #   want to delete stack instances for.
    #
    #   You can specify `Accounts` or `DeploymentTargets`, but not both.
    #
    # @option params [Types::DeploymentTargets] :deployment_targets
    #   \[`Service-managed` permissions\] The AWS Organizations accounts from
    #   which to delete stack instances.
    #
    #   You can specify `Accounts` or `DeploymentTargets`, but not both.
    #
    # @option params [required, Array<String>] :regions
    #   The Regions where you want to delete stack set instances.
    #
    # @option params [Types::StackSetOperationPreferences] :operation_preferences
    #   Preferences for how AWS CloudFormation performs this stack set
    #   operation.
    #
    # @option params [required, Boolean] :retain_stacks
    #   Removes the stack instances from the specified stack set, but doesn't
    #   delete the stacks. You can't reassociate a retained stack or add an
    #   existing, saved stack to a new stack set.
    #
    #   For more information, see [Stack set operation options][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-concepts.html#stackset-ops-options
    #
    # @option params [String] :operation_id
    #   The unique identifier for this stack set operation.
    #
    #   If you don't specify an operation ID, the SDK generates one
    #   automatically.
    #
    #   The operation ID also functions as an idempotency token, to ensure
    #   that AWS CloudFormation performs the stack set operation only once,
    #   even if you retry the request multiple times. You can retry stack set
    #   operation requests to ensure that AWS CloudFormation successfully
    #   received them.
    #
    #   Repeating this stack set operation with a new operation ID retries all
    #   stack instances whose status is `OUTDATED`.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::DeleteStackInstancesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteStackInstancesOutput#operation_id #operation_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_stack_instances({
    #     stack_set_name: "StackSetName", # required
    #     accounts: ["Account"],
    #     deployment_targets: {
    #       accounts: ["Account"],
    #       organizational_unit_ids: ["OrganizationalUnitId"],
    #     },
    #     regions: ["Region"], # required
    #     operation_preferences: {
    #       region_order: ["Region"],
    #       failure_tolerance_count: 1,
    #       failure_tolerance_percentage: 1,
    #       max_concurrent_count: 1,
    #       max_concurrent_percentage: 1,
    #     },
    #     retain_stacks: false, # required
    #     operation_id: "ClientRequestToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.operation_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/DeleteStackInstances AWS API Documentation
    #
    # @overload delete_stack_instances(params = {})
    # @param [Hash] params ({})
    def delete_stack_instances(params = {}, options = {})
      req = build_request(:delete_stack_instances, params)
      req.send_request(options)
    end

    # Deletes a stack set. Before you can delete a stack set, all of its
    # member stack instances must be deleted. For more information about how
    # to do this, see DeleteStackInstances.
    #
    # @option params [required, String] :stack_set_name
    #   The name or unique ID of the stack set that you're deleting. You can
    #   obtain this value by running ListStackSets.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_stack_set({
    #     stack_set_name: "StackSetName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/DeleteStackSet AWS API Documentation
    #
    # @overload delete_stack_set(params = {})
    # @param [Hash] params ({})
    def delete_stack_set(params = {}, options = {})
      req = build_request(:delete_stack_set, params)
      req.send_request(options)
    end

    # Removes a type or type version from active use in the CloudFormation
    # registry. If a type or type version is deregistered, it cannot be used
    # in CloudFormation operations.
    #
    # To deregister a type, you must individually deregister all registered
    # versions of that type. If a type has only a single registered version,
    # deregistering that version results in the type itself being
    # deregistered.
    #
    # You cannot deregister the default version of a type, unless it is the
    # only registered version of that type, in which case the type itself is
    # deregistered as well.
    #
    # @option params [String] :arn
    #   The Amazon Resource Name (ARN) of the type.
    #
    #   Conditional: You must specify either `TypeName` and `Type`, or `Arn`.
    #
    # @option params [String] :type
    #   The kind of type.
    #
    #   Currently the only valid value is `RESOURCE`.
    #
    #   Conditional: You must specify either `TypeName` and `Type`, or `Arn`.
    #
    # @option params [String] :type_name
    #   The name of the type.
    #
    #   Conditional: You must specify either `TypeName` and `Type`, or `Arn`.
    #
    # @option params [String] :version_id
    #   The ID of a specific version of the type. The version ID is the value
    #   at the end of the Amazon Resource Name (ARN) assigned to the type
    #   version when it is registered.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.deregister_type({
    #     arn: "PrivateTypeArn",
    #     type: "RESOURCE", # accepts RESOURCE
    #     type_name: "TypeName",
    #     version_id: "TypeVersionId",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/DeregisterType AWS API Documentation
    #
    # @overload deregister_type(params = {})
    # @param [Hash] params ({})
    def deregister_type(params = {}, options = {})
      req = build_request(:deregister_type, params)
      req.send_request(options)
    end

    # Retrieves your account's AWS CloudFormation limits, such as the
    # maximum number of stacks that you can create in your account. For more
    # information about account limits, see [AWS CloudFormation Limits][1]
    # in the *AWS CloudFormation User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/cloudformation-limits.html
    #
    # @option params [String] :next_token
    #   A string that identifies the next page of limits that you want to
    #   retrieve.
    #
    # @return [Types::DescribeAccountLimitsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeAccountLimitsOutput#account_limits #account_limits} => Array&lt;Types::AccountLimit&gt;
    #   * {Types::DescribeAccountLimitsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_account_limits({
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.account_limits #=> Array
    #   resp.account_limits[0].name #=> String
    #   resp.account_limits[0].value #=> Integer
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/DescribeAccountLimits AWS API Documentation
    #
    # @overload describe_account_limits(params = {})
    # @param [Hash] params ({})
    def describe_account_limits(params = {}, options = {})
      req = build_request(:describe_account_limits, params)
      req.send_request(options)
    end

    # Returns the inputs for the change set and a list of changes that AWS
    # CloudFormation will make if you execute the change set. For more
    # information, see [Updating Stacks Using Change Sets][1] in the AWS
    # CloudFormation User Guide.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-updating-stacks-changesets.html
    #
    # @option params [required, String] :change_set_name
    #   The name or Amazon Resource Name (ARN) of the change set that you want
    #   to describe.
    #
    # @option params [String] :stack_name
    #   If you specified the name of a change set, specify the stack name or
    #   ID (ARN) of the change set you want to describe.
    #
    # @option params [String] :next_token
    #   A string (provided by the DescribeChangeSet response output) that
    #   identifies the next page of information that you want to retrieve.
    #
    # @return [Types::DescribeChangeSetOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeChangeSetOutput#change_set_name #change_set_name} => String
    #   * {Types::DescribeChangeSetOutput#change_set_id #change_set_id} => String
    #   * {Types::DescribeChangeSetOutput#stack_id #stack_id} => String
    #   * {Types::DescribeChangeSetOutput#stack_name #stack_name} => String
    #   * {Types::DescribeChangeSetOutput#description #description} => String
    #   * {Types::DescribeChangeSetOutput#parameters #parameters} => Array&lt;Types::Parameter&gt;
    #   * {Types::DescribeChangeSetOutput#creation_time #creation_time} => Time
    #   * {Types::DescribeChangeSetOutput#execution_status #execution_status} => String
    #   * {Types::DescribeChangeSetOutput#status #status} => String
    #   * {Types::DescribeChangeSetOutput#status_reason #status_reason} => String
    #   * {Types::DescribeChangeSetOutput#notification_arns #notification_arns} => Array&lt;String&gt;
    #   * {Types::DescribeChangeSetOutput#rollback_configuration #rollback_configuration} => Types::RollbackConfiguration
    #   * {Types::DescribeChangeSetOutput#capabilities #capabilities} => Array&lt;String&gt;
    #   * {Types::DescribeChangeSetOutput#tags #tags} => Array&lt;Types::Tag&gt;
    #   * {Types::DescribeChangeSetOutput#changes #changes} => Array&lt;Types::Change&gt;
    #   * {Types::DescribeChangeSetOutput#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_change_set({
    #     change_set_name: "ChangeSetNameOrId", # required
    #     stack_name: "StackNameOrId",
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.change_set_name #=> String
    #   resp.change_set_id #=> String
    #   resp.stack_id #=> String
    #   resp.stack_name #=> String
    #   resp.description #=> String
    #   resp.parameters #=> Array
    #   resp.parameters[0].parameter_key #=> String
    #   resp.parameters[0].parameter_value #=> String
    #   resp.parameters[0].use_previous_value #=> Boolean
    #   resp.parameters[0].resolved_value #=> String
    #   resp.creation_time #=> Time
    #   resp.execution_status #=> String, one of "UNAVAILABLE", "AVAILABLE", "EXECUTE_IN_PROGRESS", "EXECUTE_COMPLETE", "EXECUTE_FAILED", "OBSOLETE"
    #   resp.status #=> String, one of "CREATE_PENDING", "CREATE_IN_PROGRESS", "CREATE_COMPLETE", "DELETE_COMPLETE", "FAILED"
    #   resp.status_reason #=> String
    #   resp.notification_arns #=> Array
    #   resp.notification_arns[0] #=> String
    #   resp.rollback_configuration.rollback_triggers #=> Array
    #   resp.rollback_configuration.rollback_triggers[0].arn #=> String
    #   resp.rollback_configuration.rollback_triggers[0].type #=> String
    #   resp.rollback_configuration.monitoring_time_in_minutes #=> Integer
    #   resp.capabilities #=> Array
    #   resp.capabilities[0] #=> String, one of "CAPABILITY_IAM", "CAPABILITY_NAMED_IAM", "CAPABILITY_AUTO_EXPAND"
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #   resp.changes #=> Array
    #   resp.changes[0].type #=> String, one of "Resource"
    #   resp.changes[0].resource_change.action #=> String, one of "Add", "Modify", "Remove", "Import"
    #   resp.changes[0].resource_change.logical_resource_id #=> String
    #   resp.changes[0].resource_change.physical_resource_id #=> String
    #   resp.changes[0].resource_change.resource_type #=> String
    #   resp.changes[0].resource_change.replacement #=> String, one of "True", "False", "Conditional"
    #   resp.changes[0].resource_change.scope #=> Array
    #   resp.changes[0].resource_change.scope[0] #=> String, one of "Properties", "Metadata", "CreationPolicy", "UpdatePolicy", "DeletionPolicy", "Tags"
    #   resp.changes[0].resource_change.details #=> Array
    #   resp.changes[0].resource_change.details[0].target.attribute #=> String, one of "Properties", "Metadata", "CreationPolicy", "UpdatePolicy", "DeletionPolicy", "Tags"
    #   resp.changes[0].resource_change.details[0].target.name #=> String
    #   resp.changes[0].resource_change.details[0].target.requires_recreation #=> String, one of "Never", "Conditionally", "Always"
    #   resp.changes[0].resource_change.details[0].evaluation #=> String, one of "Static", "Dynamic"
    #   resp.changes[0].resource_change.details[0].change_source #=> String, one of "ResourceReference", "ParameterReference", "ResourceAttribute", "DirectModification", "Automatic"
    #   resp.changes[0].resource_change.details[0].causing_entity #=> String
    #   resp.next_token #=> String
    #
    #
    # The following waiters are defined for this operation (see {Client#wait_until} for detailed usage):
    #
    #   * change_set_create_complete
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/DescribeChangeSet AWS API Documentation
    #
    # @overload describe_change_set(params = {})
    # @param [Hash] params ({})
    def describe_change_set(params = {}, options = {})
      req = build_request(:describe_change_set, params)
      req.send_request(options)
    end

    # Returns information about a stack drift detection operation. A stack
    # drift detection operation detects whether a stack's actual
    # configuration differs, or has *drifted*, from it's expected
    # configuration, as defined in the stack template and any values
    # specified as template parameters. A stack is considered to have
    # drifted if one or more of its resources have drifted. For more
    # information on stack and resource drift, see [Detecting Unregulated
    # Configuration Changes to Stacks and Resources][1].
    #
    # Use DetectStackDrift to initiate a stack drift detection operation.
    # `DetectStackDrift` returns a `StackDriftDetectionId` you can use to
    # monitor the progress of the operation using
    # `DescribeStackDriftDetectionStatus`. Once the drift detection
    # operation has completed, use DescribeStackResourceDrifts to return
    # drift information about the stack and its resources.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-drift.html
    #
    # @option params [required, String] :stack_drift_detection_id
    #   The ID of the drift detection results of this operation.
    #
    #   AWS CloudFormation generates new results, with a new drift detection
    #   ID, each time this operation is run. However, the number of drift
    #   results AWS CloudFormation retains for any given stack, and for how
    #   long, may vary.
    #
    # @return [Types::DescribeStackDriftDetectionStatusOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeStackDriftDetectionStatusOutput#stack_id #stack_id} => String
    #   * {Types::DescribeStackDriftDetectionStatusOutput#stack_drift_detection_id #stack_drift_detection_id} => String
    #   * {Types::DescribeStackDriftDetectionStatusOutput#stack_drift_status #stack_drift_status} => String
    #   * {Types::DescribeStackDriftDetectionStatusOutput#detection_status #detection_status} => String
    #   * {Types::DescribeStackDriftDetectionStatusOutput#detection_status_reason #detection_status_reason} => String
    #   * {Types::DescribeStackDriftDetectionStatusOutput#drifted_stack_resource_count #drifted_stack_resource_count} => Integer
    #   * {Types::DescribeStackDriftDetectionStatusOutput#timestamp #timestamp} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_stack_drift_detection_status({
    #     stack_drift_detection_id: "StackDriftDetectionId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.stack_id #=> String
    #   resp.stack_drift_detection_id #=> String
    #   resp.stack_drift_status #=> String, one of "DRIFTED", "IN_SYNC", "UNKNOWN", "NOT_CHECKED"
    #   resp.detection_status #=> String, one of "DETECTION_IN_PROGRESS", "DETECTION_FAILED", "DETECTION_COMPLETE"
    #   resp.detection_status_reason #=> String
    #   resp.drifted_stack_resource_count #=> Integer
    #   resp.timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/DescribeStackDriftDetectionStatus AWS API Documentation
    #
    # @overload describe_stack_drift_detection_status(params = {})
    # @param [Hash] params ({})
    def describe_stack_drift_detection_status(params = {}, options = {})
      req = build_request(:describe_stack_drift_detection_status, params)
      req.send_request(options)
    end

    # Returns all stack related events for a specified stack in reverse
    # chronological order. For more information about a stack's event
    # history, go to [Stacks][1] in the AWS CloudFormation User Guide.
    #
    # <note markdown="1"> You can list events for stacks that have failed to create or have been
    # deleted by specifying the unique stack identifier (stack ID).
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/concept-stack.html
    #
    # @option params [String] :stack_name
    #   The name or the unique stack ID that is associated with the stack,
    #   which are not always interchangeable:
    #
    #   * Running stacks: You can specify either the stack's name or its
    #     unique stack ID.
    #
    #   * Deleted stacks: You must specify the unique stack ID.
    #
    #   Default: There is no default value.
    #
    # @option params [String] :next_token
    #   A string that identifies the next page of events that you want to
    #   retrieve.
    #
    # @return [Types::DescribeStackEventsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeStackEventsOutput#stack_events #stack_events} => Array&lt;Types::StackEvent&gt;
    #   * {Types::DescribeStackEventsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_stack_events({
    #     stack_name: "StackName",
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.stack_events #=> Array
    #   resp.stack_events[0].stack_id #=> String
    #   resp.stack_events[0].event_id #=> String
    #   resp.stack_events[0].stack_name #=> String
    #   resp.stack_events[0].logical_resource_id #=> String
    #   resp.stack_events[0].physical_resource_id #=> String
    #   resp.stack_events[0].resource_type #=> String
    #   resp.stack_events[0].timestamp #=> Time
    #   resp.stack_events[0].resource_status #=> String, one of "CREATE_IN_PROGRESS", "CREATE_FAILED", "CREATE_COMPLETE", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETE_COMPLETE", "DELETE_SKIPPED", "UPDATE_IN_PROGRESS", "UPDATE_FAILED", "UPDATE_COMPLETE", "IMPORT_FAILED", "IMPORT_COMPLETE", "IMPORT_IN_PROGRESS", "IMPORT_ROLLBACK_IN_PROGRESS", "IMPORT_ROLLBACK_FAILED", "IMPORT_ROLLBACK_COMPLETE"
    #   resp.stack_events[0].resource_status_reason #=> String
    #   resp.stack_events[0].resource_properties #=> String
    #   resp.stack_events[0].client_request_token #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/DescribeStackEvents AWS API Documentation
    #
    # @overload describe_stack_events(params = {})
    # @param [Hash] params ({})
    def describe_stack_events(params = {}, options = {})
      req = build_request(:describe_stack_events, params)
      req.send_request(options)
    end

    # Returns the stack instance that's associated with the specified stack
    # set, AWS account, and Region.
    #
    # For a list of stack instances that are associated with a specific
    # stack set, use ListStackInstances.
    #
    # @option params [required, String] :stack_set_name
    #   The name or the unique stack ID of the stack set that you want to get
    #   stack instance information for.
    #
    # @option params [required, String] :stack_instance_account
    #   The ID of an AWS account that's associated with this stack instance.
    #
    # @option params [required, String] :stack_instance_region
    #   The name of a Region that's associated with this stack instance.
    #
    # @return [Types::DescribeStackInstanceOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeStackInstanceOutput#stack_instance #stack_instance} => Types::StackInstance
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_stack_instance({
    #     stack_set_name: "StackSetName", # required
    #     stack_instance_account: "Account", # required
    #     stack_instance_region: "Region", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.stack_instance.stack_set_id #=> String
    #   resp.stack_instance.region #=> String
    #   resp.stack_instance.account #=> String
    #   resp.stack_instance.stack_id #=> String
    #   resp.stack_instance.parameter_overrides #=> Array
    #   resp.stack_instance.parameter_overrides[0].parameter_key #=> String
    #   resp.stack_instance.parameter_overrides[0].parameter_value #=> String
    #   resp.stack_instance.parameter_overrides[0].use_previous_value #=> Boolean
    #   resp.stack_instance.parameter_overrides[0].resolved_value #=> String
    #   resp.stack_instance.status #=> String, one of "CURRENT", "OUTDATED", "INOPERABLE"
    #   resp.stack_instance.stack_instance_status.detailed_status #=> String, one of "PENDING", "RUNNING", "SUCCEEDED", "FAILED", "CANCELLED", "INOPERABLE"
    #   resp.stack_instance.status_reason #=> String
    #   resp.stack_instance.organizational_unit_id #=> String
    #   resp.stack_instance.drift_status #=> String, one of "DRIFTED", "IN_SYNC", "UNKNOWN", "NOT_CHECKED"
    #   resp.stack_instance.last_drift_check_timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/DescribeStackInstance AWS API Documentation
    #
    # @overload describe_stack_instance(params = {})
    # @param [Hash] params ({})
    def describe_stack_instance(params = {}, options = {})
      req = build_request(:describe_stack_instance, params)
      req.send_request(options)
    end

    # Returns a description of the specified resource in the specified
    # stack.
    #
    # For deleted stacks, DescribeStackResource returns resource information
    # for up to 90 days after the stack has been deleted.
    #
    # @option params [required, String] :stack_name
    #   The name or the unique stack ID that is associated with the stack,
    #   which are not always interchangeable:
    #
    #   * Running stacks: You can specify either the stack's name or its
    #     unique stack ID.
    #
    #   * Deleted stacks: You must specify the unique stack ID.
    #
    #   Default: There is no default value.
    #
    # @option params [required, String] :logical_resource_id
    #   The logical name of the resource as specified in the template.
    #
    #   Default: There is no default value.
    #
    # @return [Types::DescribeStackResourceOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeStackResourceOutput#stack_resource_detail #stack_resource_detail} => Types::StackResourceDetail
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_stack_resource({
    #     stack_name: "StackName", # required
    #     logical_resource_id: "LogicalResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.stack_resource_detail.stack_name #=> String
    #   resp.stack_resource_detail.stack_id #=> String
    #   resp.stack_resource_detail.logical_resource_id #=> String
    #   resp.stack_resource_detail.physical_resource_id #=> String
    #   resp.stack_resource_detail.resource_type #=> String
    #   resp.stack_resource_detail.last_updated_timestamp #=> Time
    #   resp.stack_resource_detail.resource_status #=> String, one of "CREATE_IN_PROGRESS", "CREATE_FAILED", "CREATE_COMPLETE", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETE_COMPLETE", "DELETE_SKIPPED", "UPDATE_IN_PROGRESS", "UPDATE_FAILED", "UPDATE_COMPLETE", "IMPORT_FAILED", "IMPORT_COMPLETE", "IMPORT_IN_PROGRESS", "IMPORT_ROLLBACK_IN_PROGRESS", "IMPORT_ROLLBACK_FAILED", "IMPORT_ROLLBACK_COMPLETE"
    #   resp.stack_resource_detail.resource_status_reason #=> String
    #   resp.stack_resource_detail.description #=> String
    #   resp.stack_resource_detail.metadata #=> String
    #   resp.stack_resource_detail.drift_information.stack_resource_drift_status #=> String, one of "IN_SYNC", "MODIFIED", "DELETED", "NOT_CHECKED"
    #   resp.stack_resource_detail.drift_information.last_check_timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/DescribeStackResource AWS API Documentation
    #
    # @overload describe_stack_resource(params = {})
    # @param [Hash] params ({})
    def describe_stack_resource(params = {}, options = {})
      req = build_request(:describe_stack_resource, params)
      req.send_request(options)
    end

    # Returns drift information for the resources that have been checked for
    # drift in the specified stack. This includes actual and expected
    # configuration values for resources where AWS CloudFormation detects
    # configuration drift.
    #
    # For a given stack, there will be one `StackResourceDrift` for each
    # stack resource that has been checked for drift. Resources that have
    # not yet been checked for drift are not included. Resources that do not
    # currently support drift detection are not checked, and so not
    # included. For a list of resources that support drift detection, see
    # [Resources that Support Drift Detection][1].
    #
    # Use DetectStackResourceDrift to detect drift on individual resources,
    # or DetectStackDrift to detect drift on all supported resources for a
    # given stack.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-drift-resource-list.html
    #
    # @option params [required, String] :stack_name
    #   The name of the stack for which you want drift information.
    #
    # @option params [Array<String>] :stack_resource_drift_status_filters
    #   The resource drift status values to use as filters for the resource
    #   drift results returned.
    #
    #   * `DELETED`\: The resource differs from its expected template
    #     configuration in that the resource has been deleted.
    #
    #   * `MODIFIED`\: One or more resource properties differ from their
    #     expected template values.
    #
    #   * `IN_SYNC`\: The resources's actual configuration matches its
    #     expected template configuration.
    #
    #   * `NOT_CHECKED`\: AWS CloudFormation does not currently return this
    #     value.
    #
    # @option params [String] :next_token
    #   A string that identifies the next page of stack resource drift
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to be returned with a single call. If
    #   the number of available results exceeds this maximum, the response
    #   includes a `NextToken` value that you can assign to the `NextToken`
    #   request parameter to get the next set of results.
    #
    # @return [Types::DescribeStackResourceDriftsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeStackResourceDriftsOutput#stack_resource_drifts #stack_resource_drifts} => Array&lt;Types::StackResourceDrift&gt;
    #   * {Types::DescribeStackResourceDriftsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_stack_resource_drifts({
    #     stack_name: "StackNameOrId", # required
    #     stack_resource_drift_status_filters: ["IN_SYNC"], # accepts IN_SYNC, MODIFIED, DELETED, NOT_CHECKED
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.stack_resource_drifts #=> Array
    #   resp.stack_resource_drifts[0].stack_id #=> String
    #   resp.stack_resource_drifts[0].logical_resource_id #=> String
    #   resp.stack_resource_drifts[0].physical_resource_id #=> String
    #   resp.stack_resource_drifts[0].physical_resource_id_context #=> Array
    #   resp.stack_resource_drifts[0].physical_resource_id_context[0].key #=> String
    #   resp.stack_resource_drifts[0].physical_resource_id_context[0].value #=> String
    #   resp.stack_resource_drifts[0].resource_type #=> String
    #   resp.stack_resource_drifts[0].expected_properties #=> String
    #   resp.stack_resource_drifts[0].actual_properties #=> String
    #   resp.stack_resource_drifts[0].property_differences #=> Array
    #   resp.stack_resource_drifts[0].property_differences[0].property_path #=> String
    #   resp.stack_resource_drifts[0].property_differences[0].expected_value #=> String
    #   resp.stack_resource_drifts[0].property_differences[0].actual_value #=> String
    #   resp.stack_resource_drifts[0].property_differences[0].difference_type #=> String, one of "ADD", "REMOVE", "NOT_EQUAL"
    #   resp.stack_resource_drifts[0].stack_resource_drift_status #=> String, one of "IN_SYNC", "MODIFIED", "DELETED", "NOT_CHECKED"
    #   resp.stack_resource_drifts[0].timestamp #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/DescribeStackResourceDrifts AWS API Documentation
    #
    # @overload describe_stack_resource_drifts(params = {})
    # @param [Hash] params ({})
    def describe_stack_resource_drifts(params = {}, options = {})
      req = build_request(:describe_stack_resource_drifts, params)
      req.send_request(options)
    end

    # Returns AWS resource descriptions for running and deleted stacks. If
    # `StackName` is specified, all the associated resources that are part
    # of the stack are returned. If `PhysicalResourceId` is specified, the
    # associated resources of the stack that the resource belongs to are
    # returned.
    #
    # <note markdown="1"> Only the first 100 resources will be returned. If your stack has more
    # resources than this, you should use `ListStackResources` instead.
    #
    #  </note>
    #
    # For deleted stacks, `DescribeStackResources` returns resource
    # information for up to 90 days after the stack has been deleted.
    #
    # You must specify either `StackName` or `PhysicalResourceId`, but not
    # both. In addition, you can specify `LogicalResourceId` to filter the
    # returned result. For more information about resources, the
    # `LogicalResourceId` and `PhysicalResourceId`, go to the [AWS
    # CloudFormation User Guide][1].
    #
    # <note markdown="1"> A `ValidationError` is returned if you specify both `StackName` and
    # `PhysicalResourceId` in the same request.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/
    #
    # @option params [String] :stack_name
    #   The name or the unique stack ID that is associated with the stack,
    #   which are not always interchangeable:
    #
    #   * Running stacks: You can specify either the stack's name or its
    #     unique stack ID.
    #
    #   * Deleted stacks: You must specify the unique stack ID.
    #
    #   Default: There is no default value.
    #
    #   Required: Conditional. If you do not specify `StackName`, you must
    #   specify `PhysicalResourceId`.
    #
    # @option params [String] :logical_resource_id
    #   The logical name of the resource as specified in the template.
    #
    #   Default: There is no default value.
    #
    # @option params [String] :physical_resource_id
    #   The name or unique identifier that corresponds to a physical instance
    #   ID of a resource supported by AWS CloudFormation.
    #
    #   For example, for an Amazon Elastic Compute Cloud (EC2) instance,
    #   `PhysicalResourceId` corresponds to the `InstanceId`. You can pass the
    #   EC2 `InstanceId` to `DescribeStackResources` to find which stack the
    #   instance belongs to and what other resources are part of the stack.
    #
    #   Required: Conditional. If you do not specify `PhysicalResourceId`, you
    #   must specify `StackName`.
    #
    #   Default: There is no default value.
    #
    # @return [Types::DescribeStackResourcesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeStackResourcesOutput#stack_resources #stack_resources} => Array&lt;Types::StackResource&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_stack_resources({
    #     stack_name: "StackName",
    #     logical_resource_id: "LogicalResourceId",
    #     physical_resource_id: "PhysicalResourceId",
    #   })
    #
    # @example Response structure
    #
    #   resp.stack_resources #=> Array
    #   resp.stack_resources[0].stack_name #=> String
    #   resp.stack_resources[0].stack_id #=> String
    #   resp.stack_resources[0].logical_resource_id #=> String
    #   resp.stack_resources[0].physical_resource_id #=> String
    #   resp.stack_resources[0].resource_type #=> String
    #   resp.stack_resources[0].timestamp #=> Time
    #   resp.stack_resources[0].resource_status #=> String, one of "CREATE_IN_PROGRESS", "CREATE_FAILED", "CREATE_COMPLETE", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETE_COMPLETE", "DELETE_SKIPPED", "UPDATE_IN_PROGRESS", "UPDATE_FAILED", "UPDATE_COMPLETE", "IMPORT_FAILED", "IMPORT_COMPLETE", "IMPORT_IN_PROGRESS", "IMPORT_ROLLBACK_IN_PROGRESS", "IMPORT_ROLLBACK_FAILED", "IMPORT_ROLLBACK_COMPLETE"
    #   resp.stack_resources[0].resource_status_reason #=> String
    #   resp.stack_resources[0].description #=> String
    #   resp.stack_resources[0].drift_information.stack_resource_drift_status #=> String, one of "IN_SYNC", "MODIFIED", "DELETED", "NOT_CHECKED"
    #   resp.stack_resources[0].drift_information.last_check_timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/DescribeStackResources AWS API Documentation
    #
    # @overload describe_stack_resources(params = {})
    # @param [Hash] params ({})
    def describe_stack_resources(params = {}, options = {})
      req = build_request(:describe_stack_resources, params)
      req.send_request(options)
    end

    # Returns the description of the specified stack set.
    #
    # @option params [required, String] :stack_set_name
    #   The name or unique ID of the stack set whose description you want.
    #
    # @return [Types::DescribeStackSetOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeStackSetOutput#stack_set #stack_set} => Types::StackSet
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_stack_set({
    #     stack_set_name: "StackSetName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.stack_set.stack_set_name #=> String
    #   resp.stack_set.stack_set_id #=> String
    #   resp.stack_set.description #=> String
    #   resp.stack_set.status #=> String, one of "ACTIVE", "DELETED"
    #   resp.stack_set.template_body #=> String
    #   resp.stack_set.parameters #=> Array
    #   resp.stack_set.parameters[0].parameter_key #=> String
    #   resp.stack_set.parameters[0].parameter_value #=> String
    #   resp.stack_set.parameters[0].use_previous_value #=> Boolean
    #   resp.stack_set.parameters[0].resolved_value #=> String
    #   resp.stack_set.capabilities #=> Array
    #   resp.stack_set.capabilities[0] #=> String, one of "CAPABILITY_IAM", "CAPABILITY_NAMED_IAM", "CAPABILITY_AUTO_EXPAND"
    #   resp.stack_set.tags #=> Array
    #   resp.stack_set.tags[0].key #=> String
    #   resp.stack_set.tags[0].value #=> String
    #   resp.stack_set.stack_set_arn #=> String
    #   resp.stack_set.administration_role_arn #=> String
    #   resp.stack_set.execution_role_name #=> String
    #   resp.stack_set.stack_set_drift_detection_details.drift_status #=> String, one of "DRIFTED", "IN_SYNC", "NOT_CHECKED"
    #   resp.stack_set.stack_set_drift_detection_details.drift_detection_status #=> String, one of "COMPLETED", "FAILED", "PARTIAL_SUCCESS", "IN_PROGRESS", "STOPPED"
    #   resp.stack_set.stack_set_drift_detection_details.last_drift_check_timestamp #=> Time
    #   resp.stack_set.stack_set_drift_detection_details.total_stack_instances_count #=> Integer
    #   resp.stack_set.stack_set_drift_detection_details.drifted_stack_instances_count #=> Integer
    #   resp.stack_set.stack_set_drift_detection_details.in_sync_stack_instances_count #=> Integer
    #   resp.stack_set.stack_set_drift_detection_details.in_progress_stack_instances_count #=> Integer
    #   resp.stack_set.stack_set_drift_detection_details.failed_stack_instances_count #=> Integer
    #   resp.stack_set.auto_deployment.enabled #=> Boolean
    #   resp.stack_set.auto_deployment.retain_stacks_on_account_removal #=> Boolean
    #   resp.stack_set.permission_model #=> String, one of "SERVICE_MANAGED", "SELF_MANAGED"
    #   resp.stack_set.organizational_unit_ids #=> Array
    #   resp.stack_set.organizational_unit_ids[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/DescribeStackSet AWS API Documentation
    #
    # @overload describe_stack_set(params = {})
    # @param [Hash] params ({})
    def describe_stack_set(params = {}, options = {})
      req = build_request(:describe_stack_set, params)
      req.send_request(options)
    end

    # Returns the description of the specified stack set operation.
    #
    # @option params [required, String] :stack_set_name
    #   The name or the unique stack ID of the stack set for the stack
    #   operation.
    #
    # @option params [required, String] :operation_id
    #   The unique ID of the stack set operation.
    #
    # @return [Types::DescribeStackSetOperationOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeStackSetOperationOutput#stack_set_operation #stack_set_operation} => Types::StackSetOperation
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_stack_set_operation({
    #     stack_set_name: "StackSetName", # required
    #     operation_id: "ClientRequestToken", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.stack_set_operation.operation_id #=> String
    #   resp.stack_set_operation.stack_set_id #=> String
    #   resp.stack_set_operation.action #=> String, one of "CREATE", "UPDATE", "DELETE", "DETECT_DRIFT"
    #   resp.stack_set_operation.status #=> String, one of "RUNNING", "SUCCEEDED", "FAILED", "STOPPING", "STOPPED", "QUEUED"
    #   resp.stack_set_operation.operation_preferences.region_order #=> Array
    #   resp.stack_set_operation.operation_preferences.region_order[0] #=> String
    #   resp.stack_set_operation.operation_preferences.failure_tolerance_count #=> Integer
    #   resp.stack_set_operation.operation_preferences.failure_tolerance_percentage #=> Integer
    #   resp.stack_set_operation.operation_preferences.max_concurrent_count #=> Integer
    #   resp.stack_set_operation.operation_preferences.max_concurrent_percentage #=> Integer
    #   resp.stack_set_operation.retain_stacks #=> Boolean
    #   resp.stack_set_operation.administration_role_arn #=> String
    #   resp.stack_set_operation.execution_role_name #=> String
    #   resp.stack_set_operation.creation_timestamp #=> Time
    #   resp.stack_set_operation.end_timestamp #=> Time
    #   resp.stack_set_operation.deployment_targets.accounts #=> Array
    #   resp.stack_set_operation.deployment_targets.accounts[0] #=> String
    #   resp.stack_set_operation.deployment_targets.organizational_unit_ids #=> Array
    #   resp.stack_set_operation.deployment_targets.organizational_unit_ids[0] #=> String
    #   resp.stack_set_operation.stack_set_drift_detection_details.drift_status #=> String, one of "DRIFTED", "IN_SYNC", "NOT_CHECKED"
    #   resp.stack_set_operation.stack_set_drift_detection_details.drift_detection_status #=> String, one of "COMPLETED", "FAILED", "PARTIAL_SUCCESS", "IN_PROGRESS", "STOPPED"
    #   resp.stack_set_operation.stack_set_drift_detection_details.last_drift_check_timestamp #=> Time
    #   resp.stack_set_operation.stack_set_drift_detection_details.total_stack_instances_count #=> Integer
    #   resp.stack_set_operation.stack_set_drift_detection_details.drifted_stack_instances_count #=> Integer
    #   resp.stack_set_operation.stack_set_drift_detection_details.in_sync_stack_instances_count #=> Integer
    #   resp.stack_set_operation.stack_set_drift_detection_details.in_progress_stack_instances_count #=> Integer
    #   resp.stack_set_operation.stack_set_drift_detection_details.failed_stack_instances_count #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/DescribeStackSetOperation AWS API Documentation
    #
    # @overload describe_stack_set_operation(params = {})
    # @param [Hash] params ({})
    def describe_stack_set_operation(params = {}, options = {})
      req = build_request(:describe_stack_set_operation, params)
      req.send_request(options)
    end

    # Returns the description for the specified stack; if no stack name was
    # specified, then it returns the description for all the stacks created.
    #
    # <note markdown="1"> If the stack does not exist, an `AmazonCloudFormationException` is
    # returned.
    #
    #  </note>
    #
    # @option params [String] :stack_name
    #   The name or the unique stack ID that is associated with the stack,
    #   which are not always interchangeable:
    #
    #   * Running stacks: You can specify either the stack's name or its
    #     unique stack ID.
    #
    #   * Deleted stacks: You must specify the unique stack ID.
    #
    #   Default: There is no default value.
    #
    # @option params [String] :next_token
    #   A string that identifies the next page of stacks that you want to
    #   retrieve.
    #
    # @return [Types::DescribeStacksOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeStacksOutput#stacks #stacks} => Array&lt;Types::Stack&gt;
    #   * {Types::DescribeStacksOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_stacks({
    #     stack_name: "StackName",
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.stacks #=> Array
    #   resp.stacks[0].stack_id #=> String
    #   resp.stacks[0].stack_name #=> String
    #   resp.stacks[0].change_set_id #=> String
    #   resp.stacks[0].description #=> String
    #   resp.stacks[0].parameters #=> Array
    #   resp.stacks[0].parameters[0].parameter_key #=> String
    #   resp.stacks[0].parameters[0].parameter_value #=> String
    #   resp.stacks[0].parameters[0].use_previous_value #=> Boolean
    #   resp.stacks[0].parameters[0].resolved_value #=> String
    #   resp.stacks[0].creation_time #=> Time
    #   resp.stacks[0].deletion_time #=> Time
    #   resp.stacks[0].last_updated_time #=> Time
    #   resp.stacks[0].rollback_configuration.rollback_triggers #=> Array
    #   resp.stacks[0].rollback_configuration.rollback_triggers[0].arn #=> String
    #   resp.stacks[0].rollback_configuration.rollback_triggers[0].type #=> String
    #   resp.stacks[0].rollback_configuration.monitoring_time_in_minutes #=> Integer
    #   resp.stacks[0].stack_status #=> String, one of "CREATE_IN_PROGRESS", "CREATE_FAILED", "CREATE_COMPLETE", "ROLLBACK_IN_PROGRESS", "ROLLBACK_FAILED", "ROLLBACK_COMPLETE", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETE_COMPLETE", "UPDATE_IN_PROGRESS", "UPDATE_COMPLETE_CLEANUP_IN_PROGRESS", "UPDATE_COMPLETE", "UPDATE_ROLLBACK_IN_PROGRESS", "UPDATE_ROLLBACK_FAILED", "UPDATE_ROLLBACK_COMPLETE_CLEANUP_IN_PROGRESS", "UPDATE_ROLLBACK_COMPLETE", "REVIEW_IN_PROGRESS", "IMPORT_IN_PROGRESS", "IMPORT_COMPLETE", "IMPORT_ROLLBACK_IN_PROGRESS", "IMPORT_ROLLBACK_FAILED", "IMPORT_ROLLBACK_COMPLETE"
    #   resp.stacks[0].stack_status_reason #=> String
    #   resp.stacks[0].disable_rollback #=> Boolean
    #   resp.stacks[0].notification_arns #=> Array
    #   resp.stacks[0].notification_arns[0] #=> String
    #   resp.stacks[0].timeout_in_minutes #=> Integer
    #   resp.stacks[0].capabilities #=> Array
    #   resp.stacks[0].capabilities[0] #=> String, one of "CAPABILITY_IAM", "CAPABILITY_NAMED_IAM", "CAPABILITY_AUTO_EXPAND"
    #   resp.stacks[0].outputs #=> Array
    #   resp.stacks[0].outputs[0].output_key #=> String
    #   resp.stacks[0].outputs[0].output_value #=> String
    #   resp.stacks[0].outputs[0].description #=> String
    #   resp.stacks[0].outputs[0].export_name #=> String
    #   resp.stacks[0].role_arn #=> String
    #   resp.stacks[0].tags #=> Array
    #   resp.stacks[0].tags[0].key #=> String
    #   resp.stacks[0].tags[0].value #=> String
    #   resp.stacks[0].enable_termination_protection #=> Boolean
    #   resp.stacks[0].parent_id #=> String
    #   resp.stacks[0].root_id #=> String
    #   resp.stacks[0].drift_information.stack_drift_status #=> String, one of "DRIFTED", "IN_SYNC", "UNKNOWN", "NOT_CHECKED"
    #   resp.stacks[0].drift_information.last_check_timestamp #=> Time
    #   resp.next_token #=> String
    #
    #
    # The following waiters are defined for this operation (see {Client#wait_until} for detailed usage):
    #
    #   * stack_create_complete
    #   * stack_delete_complete
    #   * stack_exists
    #   * stack_import_complete
    #   * stack_rollback_complete
    #   * stack_update_complete
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/DescribeStacks AWS API Documentation
    #
    # @overload describe_stacks(params = {})
    # @param [Hash] params ({})
    def describe_stacks(params = {}, options = {})
      req = build_request(:describe_stacks, params)
      req.send_request(options)
    end

    # Returns detailed information about a type that has been registered.
    #
    # If you specify a `VersionId`, `DescribeType` returns information about
    # that specific type version. Otherwise, it returns information about
    # the default type version.
    #
    # @option params [String] :type
    #   The kind of type.
    #
    #   Currently the only valid value is `RESOURCE`.
    #
    #   Conditional: You must specify either `TypeName` and `Type`, or `Arn`.
    #
    # @option params [String] :type_name
    #   The name of the type.
    #
    #   Conditional: You must specify either `TypeName` and `Type`, or `Arn`.
    #
    # @option params [String] :arn
    #   The Amazon Resource Name (ARN) of the type.
    #
    #   Conditional: You must specify either `TypeName` and `Type`, or `Arn`.
    #
    # @option params [String] :version_id
    #   The ID of a specific version of the type. The version ID is the value
    #   at the end of the Amazon Resource Name (ARN) assigned to the type
    #   version when it is registered.
    #
    #   If you specify a `VersionId`, `DescribeType` returns information about
    #   that specific type version. Otherwise, it returns information about
    #   the default type version.
    #
    # @return [Types::DescribeTypeOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeTypeOutput#arn #arn} => String
    #   * {Types::DescribeTypeOutput#type #type} => String
    #   * {Types::DescribeTypeOutput#type_name #type_name} => String
    #   * {Types::DescribeTypeOutput#default_version_id #default_version_id} => String
    #   * {Types::DescribeTypeOutput#is_default_version #is_default_version} => Boolean
    #   * {Types::DescribeTypeOutput#description #description} => String
    #   * {Types::DescribeTypeOutput#schema #schema} => String
    #   * {Types::DescribeTypeOutput#provisioning_type #provisioning_type} => String
    #   * {Types::DescribeTypeOutput#deprecated_status #deprecated_status} => String
    #   * {Types::DescribeTypeOutput#logging_config #logging_config} => Types::LoggingConfig
    #   * {Types::DescribeTypeOutput#execution_role_arn #execution_role_arn} => String
    #   * {Types::DescribeTypeOutput#visibility #visibility} => String
    #   * {Types::DescribeTypeOutput#source_url #source_url} => String
    #   * {Types::DescribeTypeOutput#documentation_url #documentation_url} => String
    #   * {Types::DescribeTypeOutput#last_updated #last_updated} => Time
    #   * {Types::DescribeTypeOutput#time_created #time_created} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_type({
    #     type: "RESOURCE", # accepts RESOURCE
    #     type_name: "TypeName",
    #     arn: "TypeArn",
    #     version_id: "TypeVersionId",
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.type #=> String, one of "RESOURCE"
    #   resp.type_name #=> String
    #   resp.default_version_id #=> String
    #   resp.is_default_version #=> Boolean
    #   resp.description #=> String
    #   resp.schema #=> String
    #   resp.provisioning_type #=> String, one of "NON_PROVISIONABLE", "IMMUTABLE", "FULLY_MUTABLE"
    #   resp.deprecated_status #=> String, one of "LIVE", "DEPRECATED"
    #   resp.logging_config.log_role_arn #=> String
    #   resp.logging_config.log_group_name #=> String
    #   resp.execution_role_arn #=> String
    #   resp.visibility #=> String, one of "PUBLIC", "PRIVATE"
    #   resp.source_url #=> String
    #   resp.documentation_url #=> String
    #   resp.last_updated #=> Time
    #   resp.time_created #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/DescribeType AWS API Documentation
    #
    # @overload describe_type(params = {})
    # @param [Hash] params ({})
    def describe_type(params = {}, options = {})
      req = build_request(:describe_type, params)
      req.send_request(options)
    end

    # Returns information about a type's registration, including its
    # current status and type and version identifiers.
    #
    # When you initiate a registration request using ` RegisterType `, you
    # can then use ` DescribeTypeRegistration ` to monitor the progress of
    # that registration request.
    #
    # Once the registration request has completed, use ` DescribeType ` to
    # return detailed informaiton about a type.
    #
    # @option params [required, String] :registration_token
    #   The identifier for this registration request.
    #
    #   This registration token is generated by CloudFormation when you
    #   initiate a registration request using ` RegisterType `.
    #
    # @return [Types::DescribeTypeRegistrationOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeTypeRegistrationOutput#progress_status #progress_status} => String
    #   * {Types::DescribeTypeRegistrationOutput#description #description} => String
    #   * {Types::DescribeTypeRegistrationOutput#type_arn #type_arn} => String
    #   * {Types::DescribeTypeRegistrationOutput#type_version_arn #type_version_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_type_registration({
    #     registration_token: "RegistrationToken", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.progress_status #=> String, one of "COMPLETE", "IN_PROGRESS", "FAILED"
    #   resp.description #=> String
    #   resp.type_arn #=> String
    #   resp.type_version_arn #=> String
    #
    #
    # The following waiters are defined for this operation (see {Client#wait_until} for detailed usage):
    #
    #   * type_registration_complete
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/DescribeTypeRegistration AWS API Documentation
    #
    # @overload describe_type_registration(params = {})
    # @param [Hash] params ({})
    def describe_type_registration(params = {}, options = {})
      req = build_request(:describe_type_registration, params)
      req.send_request(options)
    end

    # Detects whether a stack's actual configuration differs, or has
    # *drifted*, from it's expected configuration, as defined in the stack
    # template and any values specified as template parameters. For each
    # resource in the stack that supports drift detection, AWS
    # CloudFormation compares the actual configuration of the resource with
    # its expected template configuration. Only resource properties
    # explicitly defined in the stack template are checked for drift. A
    # stack is considered to have drifted if one or more of its resources
    # differ from their expected template configurations. For more
    # information, see [Detecting Unregulated Configuration Changes to
    # Stacks and Resources][1].
    #
    # Use `DetectStackDrift` to detect drift on all supported resources for
    # a given stack, or DetectStackResourceDrift to detect drift on
    # individual resources.
    #
    # For a list of stack resources that currently support drift detection,
    # see [Resources that Support Drift Detection][2].
    #
    # `DetectStackDrift` can take up to several minutes, depending on the
    # number of resources contained within the stack. Use
    # DescribeStackDriftDetectionStatus to monitor the progress of a detect
    # stack drift operation. Once the drift detection operation has
    # completed, use DescribeStackResourceDrifts to return drift information
    # about the stack and its resources.
    #
    # When detecting drift on a stack, AWS CloudFormation does not detect
    # drift on any nested stacks belonging to that stack. Perform
    # `DetectStackDrift` directly on the nested stack itself.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-drift.html
    # [2]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-drift-resource-list.html
    #
    # @option params [required, String] :stack_name
    #   The name of the stack for which you want to detect drift.
    #
    # @option params [Array<String>] :logical_resource_ids
    #   The logical names of any resources you want to use as filters.
    #
    # @return [Types::DetectStackDriftOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DetectStackDriftOutput#stack_drift_detection_id #stack_drift_detection_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.detect_stack_drift({
    #     stack_name: "StackNameOrId", # required
    #     logical_resource_ids: ["LogicalResourceId"],
    #   })
    #
    # @example Response structure
    #
    #   resp.stack_drift_detection_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/DetectStackDrift AWS API Documentation
    #
    # @overload detect_stack_drift(params = {})
    # @param [Hash] params ({})
    def detect_stack_drift(params = {}, options = {})
      req = build_request(:detect_stack_drift, params)
      req.send_request(options)
    end

    # Returns information about whether a resource's actual configuration
    # differs, or has *drifted*, from it's expected configuration, as
    # defined in the stack template and any values specified as template
    # parameters. This information includes actual and expected property
    # values for resources in which AWS CloudFormation detects drift. Only
    # resource properties explicitly defined in the stack template are
    # checked for drift. For more information about stack and resource
    # drift, see [Detecting Unregulated Configuration Changes to Stacks and
    # Resources][1].
    #
    # Use `DetectStackResourceDrift` to detect drift on individual
    # resources, or DetectStackDrift to detect drift on all resources in a
    # given stack that support drift detection.
    #
    # Resources that do not currently support drift detection cannot be
    # checked. For a list of resources that support drift detection, see
    # [Resources that Support Drift Detection][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-drift.html
    # [2]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-drift-resource-list.html
    #
    # @option params [required, String] :stack_name
    #   The name of the stack to which the resource belongs.
    #
    # @option params [required, String] :logical_resource_id
    #   The logical name of the resource for which to return drift
    #   information.
    #
    # @return [Types::DetectStackResourceDriftOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DetectStackResourceDriftOutput#stack_resource_drift #stack_resource_drift} => Types::StackResourceDrift
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.detect_stack_resource_drift({
    #     stack_name: "StackNameOrId", # required
    #     logical_resource_id: "LogicalResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.stack_resource_drift.stack_id #=> String
    #   resp.stack_resource_drift.logical_resource_id #=> String
    #   resp.stack_resource_drift.physical_resource_id #=> String
    #   resp.stack_resource_drift.physical_resource_id_context #=> Array
    #   resp.stack_resource_drift.physical_resource_id_context[0].key #=> String
    #   resp.stack_resource_drift.physical_resource_id_context[0].value #=> String
    #   resp.stack_resource_drift.resource_type #=> String
    #   resp.stack_resource_drift.expected_properties #=> String
    #   resp.stack_resource_drift.actual_properties #=> String
    #   resp.stack_resource_drift.property_differences #=> Array
    #   resp.stack_resource_drift.property_differences[0].property_path #=> String
    #   resp.stack_resource_drift.property_differences[0].expected_value #=> String
    #   resp.stack_resource_drift.property_differences[0].actual_value #=> String
    #   resp.stack_resource_drift.property_differences[0].difference_type #=> String, one of "ADD", "REMOVE", "NOT_EQUAL"
    #   resp.stack_resource_drift.stack_resource_drift_status #=> String, one of "IN_SYNC", "MODIFIED", "DELETED", "NOT_CHECKED"
    #   resp.stack_resource_drift.timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/DetectStackResourceDrift AWS API Documentation
    #
    # @overload detect_stack_resource_drift(params = {})
    # @param [Hash] params ({})
    def detect_stack_resource_drift(params = {}, options = {})
      req = build_request(:detect_stack_resource_drift, params)
      req.send_request(options)
    end

    # Detect drift on a stack set. When CloudFormation performs drift
    # detection on a stack set, it performs drift detection on the stack
    # associated with each stack instance in the stack set. For more
    # information, see [How CloudFormation Performs Drift Detection on a
    # Stack Set][1].
    #
    # `DetectStackSetDrift` returns the `OperationId` of the stack set drift
    # detection operation. Use this operation id with `
    # DescribeStackSetOperation ` to monitor the progress of the drift
    # detection operation. The drift detection operation may take some time,
    # depending on the number of stack instances included in the stack set,
    # as well as the number of resources included in each stack.
    #
    # Once the operation has completed, use the following actions to return
    # drift information:
    #
    # * Use ` DescribeStackSet ` to return detailed informaiton about the
    #   stack set, including detailed information about the last *completed*
    #   drift operation performed on the stack set. (Information about drift
    #   operations that are in progress is not included.)
    #
    # * Use ` ListStackInstances ` to return a list of stack instances
    #   belonging to the stack set, including the drift status and last
    #   drift time checked of each instance.
    #
    # * Use ` DescribeStackInstance ` to return detailed information about a
    #   specific stack instance, including its drift status and last drift
    #   time checked.
    #
    # For more information on performing a drift detection operation on a
    # stack set, see [Detecting Unmanaged Changes in Stack Sets][1].
    #
    # You can only run a single drift detection operation on a given stack
    # set at one time.
    #
    # To stop a drift detection stack set operation, use `
    # StopStackSetOperation `.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-drift.html
    #
    # @option params [required, String] :stack_set_name
    #   The name of the stack set on which to perform the drift detection
    #   operation.
    #
    # @option params [Types::StackSetOperationPreferences] :operation_preferences
    #   The user-specified preferences for how AWS CloudFormation performs a
    #   stack set operation.
    #
    #   For more information on maximum concurrent accounts and failure
    #   tolerance, see [Stack set operation options][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-concepts.html#stackset-ops-options
    #
    # @option params [String] :operation_id
    #   *The ID of the stack set operation.*
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::DetectStackSetDriftOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DetectStackSetDriftOutput#operation_id #operation_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.detect_stack_set_drift({
    #     stack_set_name: "StackSetNameOrId", # required
    #     operation_preferences: {
    #       region_order: ["Region"],
    #       failure_tolerance_count: 1,
    #       failure_tolerance_percentage: 1,
    #       max_concurrent_count: 1,
    #       max_concurrent_percentage: 1,
    #     },
    #     operation_id: "ClientRequestToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.operation_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/DetectStackSetDrift AWS API Documentation
    #
    # @overload detect_stack_set_drift(params = {})
    # @param [Hash] params ({})
    def detect_stack_set_drift(params = {}, options = {})
      req = build_request(:detect_stack_set_drift, params)
      req.send_request(options)
    end

    # Returns the estimated monthly cost of a template. The return value is
    # an AWS Simple Monthly Calculator URL with a query string that
    # describes the resources required to run the template.
    #
    # @option params [String] :template_body
    #   Structure containing the template body with a minimum length of 1 byte
    #   and a maximum length of 51,200 bytes. (For more information, go to
    #   [Template Anatomy][1] in the AWS CloudFormation User Guide.)
    #
    #   Conditional: You must pass `TemplateBody` or `TemplateURL`. If both
    #   are passed, only `TemplateBody` is used.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html
    #
    # @option params [String] :template_url
    #   Location of file containing the template body. The URL must point to a
    #   template that is located in an Amazon S3 bucket. For more information,
    #   go to [Template Anatomy][1] in the AWS CloudFormation User Guide.
    #
    #   Conditional: You must pass `TemplateURL` or `TemplateBody`. If both
    #   are passed, only `TemplateBody` is used.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html
    #
    # @option params [Array<Types::Parameter>] :parameters
    #   A list of `Parameter` structures that specify input parameters.
    #
    # @return [Types::EstimateTemplateCostOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::EstimateTemplateCostOutput#url #url} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.estimate_template_cost({
    #     template_body: "TemplateBody",
    #     template_url: "TemplateURL",
    #     parameters: [
    #       {
    #         parameter_key: "ParameterKey",
    #         parameter_value: "ParameterValue",
    #         use_previous_value: false,
    #         resolved_value: "ParameterValue",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.url #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/EstimateTemplateCost AWS API Documentation
    #
    # @overload estimate_template_cost(params = {})
    # @param [Hash] params ({})
    def estimate_template_cost(params = {}, options = {})
      req = build_request(:estimate_template_cost, params)
      req.send_request(options)
    end

    # Updates a stack using the input information that was provided when the
    # specified change set was created. After the call successfully
    # completes, AWS CloudFormation starts updating the stack. Use the
    # DescribeStacks action to view the status of the update.
    #
    # When you execute a change set, AWS CloudFormation deletes all other
    # change sets associated with the stack because they aren't valid for
    # the updated stack.
    #
    # If a stack policy is associated with the stack, AWS CloudFormation
    # enforces the policy during the update. You can't specify a temporary
    # stack policy that overrides the current policy.
    #
    # @option params [required, String] :change_set_name
    #   The name or ARN of the change set that you want use to update the
    #   specified stack.
    #
    # @option params [String] :stack_name
    #   If you specified the name of a change set, specify the stack name or
    #   ID (ARN) that is associated with the change set you want to execute.
    #
    # @option params [String] :client_request_token
    #   A unique identifier for this `ExecuteChangeSet` request. Specify this
    #   token if you plan to retry requests so that AWS CloudFormation knows
    #   that you're not attempting to execute a change set to update a stack
    #   with the same name. You might retry `ExecuteChangeSet` requests to
    #   ensure that AWS CloudFormation successfully received them.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.execute_change_set({
    #     change_set_name: "ChangeSetNameOrId", # required
    #     stack_name: "StackNameOrId",
    #     client_request_token: "ClientRequestToken",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/ExecuteChangeSet AWS API Documentation
    #
    # @overload execute_change_set(params = {})
    # @param [Hash] params ({})
    def execute_change_set(params = {}, options = {})
      req = build_request(:execute_change_set, params)
      req.send_request(options)
    end

    # Returns the stack policy for a specified stack. If a stack doesn't
    # have a policy, a null value is returned.
    #
    # @option params [required, String] :stack_name
    #   The name or unique stack ID that is associated with the stack whose
    #   policy you want to get.
    #
    # @return [Types::GetStackPolicyOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetStackPolicyOutput#stack_policy_body #stack_policy_body} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_stack_policy({
    #     stack_name: "StackName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.stack_policy_body #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/GetStackPolicy AWS API Documentation
    #
    # @overload get_stack_policy(params = {})
    # @param [Hash] params ({})
    def get_stack_policy(params = {}, options = {})
      req = build_request(:get_stack_policy, params)
      req.send_request(options)
    end

    # Returns the template body for a specified stack. You can get the
    # template for running or deleted stacks.
    #
    # For deleted stacks, GetTemplate returns the template for up to 90 days
    # after the stack has been deleted.
    #
    # <note markdown="1"> If the template does not exist, a `ValidationError` is returned.
    #
    #  </note>
    #
    # @option params [String] :stack_name
    #   The name or the unique stack ID that is associated with the stack,
    #   which are not always interchangeable:
    #
    #   * Running stacks: You can specify either the stack's name or its
    #     unique stack ID.
    #
    #   * Deleted stacks: You must specify the unique stack ID.
    #
    #   Default: There is no default value.
    #
    # @option params [String] :change_set_name
    #   The name or Amazon Resource Name (ARN) of a change set for which AWS
    #   CloudFormation returns the associated template. If you specify a name,
    #   you must also specify the `StackName`.
    #
    # @option params [String] :template_stage
    #   For templates that include transforms, the stage of the template that
    #   AWS CloudFormation returns. To get the user-submitted template,
    #   specify `Original`. To get the template after AWS CloudFormation has
    #   processed all transforms, specify `Processed`.
    #
    #   If the template doesn't include transforms, `Original` and
    #   `Processed` return the same template. By default, AWS CloudFormation
    #   specifies `Original`.
    #
    # @return [Types::GetTemplateOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetTemplateOutput#template_body #template_body} => String
    #   * {Types::GetTemplateOutput#stages_available #stages_available} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_template({
    #     stack_name: "StackName",
    #     change_set_name: "ChangeSetNameOrId",
    #     template_stage: "Original", # accepts Original, Processed
    #   })
    #
    # @example Response structure
    #
    #   resp.template_body #=> String
    #   resp.stages_available #=> Array
    #   resp.stages_available[0] #=> String, one of "Original", "Processed"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/GetTemplate AWS API Documentation
    #
    # @overload get_template(params = {})
    # @param [Hash] params ({})
    def get_template(params = {}, options = {})
      req = build_request(:get_template, params)
      req.send_request(options)
    end

    # Returns information about a new or existing template. The
    # `GetTemplateSummary` action is useful for viewing parameter
    # information, such as default parameter values and parameter types,
    # before you create or update a stack or stack set.
    #
    # You can use the `GetTemplateSummary` action when you submit a
    # template, or you can get template information for a stack set, or a
    # running or deleted stack.
    #
    # For deleted stacks, `GetTemplateSummary` returns the template
    # information for up to 90 days after the stack has been deleted. If the
    # template does not exist, a `ValidationError` is returned.
    #
    # @option params [String] :template_body
    #   Structure containing the template body with a minimum length of 1 byte
    #   and a maximum length of 51,200 bytes. For more information about
    #   templates, see [Template Anatomy][1] in the AWS CloudFormation User
    #   Guide.
    #
    #   Conditional: You must specify only one of the following parameters:
    #   `StackName`, `StackSetName`, `TemplateBody`, or `TemplateURL`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html
    #
    # @option params [String] :template_url
    #   Location of file containing the template body. The URL must point to a
    #   template (max size: 460,800 bytes) that is located in an Amazon S3
    #   bucket. For more information about templates, see [Template
    #   Anatomy][1] in the AWS CloudFormation User Guide.
    #
    #   Conditional: You must specify only one of the following parameters:
    #   `StackName`, `StackSetName`, `TemplateBody`, or `TemplateURL`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html
    #
    # @option params [String] :stack_name
    #   The name or the stack ID that is associated with the stack, which are
    #   not always interchangeable. For running stacks, you can specify either
    #   the stack's name or its unique stack ID. For deleted stack, you must
    #   specify the unique stack ID.
    #
    #   Conditional: You must specify only one of the following parameters:
    #   `StackName`, `StackSetName`, `TemplateBody`, or `TemplateURL`.
    #
    # @option params [String] :stack_set_name
    #   The name or unique ID of the stack set from which the stack was
    #   created.
    #
    #   Conditional: You must specify only one of the following parameters:
    #   `StackName`, `StackSetName`, `TemplateBody`, or `TemplateURL`.
    #
    # @return [Types::GetTemplateSummaryOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetTemplateSummaryOutput#parameters #parameters} => Array&lt;Types::ParameterDeclaration&gt;
    #   * {Types::GetTemplateSummaryOutput#description #description} => String
    #   * {Types::GetTemplateSummaryOutput#capabilities #capabilities} => Array&lt;String&gt;
    #   * {Types::GetTemplateSummaryOutput#capabilities_reason #capabilities_reason} => String
    #   * {Types::GetTemplateSummaryOutput#resource_types #resource_types} => Array&lt;String&gt;
    #   * {Types::GetTemplateSummaryOutput#version #version} => String
    #   * {Types::GetTemplateSummaryOutput#metadata #metadata} => String
    #   * {Types::GetTemplateSummaryOutput#declared_transforms #declared_transforms} => Array&lt;String&gt;
    #   * {Types::GetTemplateSummaryOutput#resource_identifier_summaries #resource_identifier_summaries} => Array&lt;Types::ResourceIdentifierSummary&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_template_summary({
    #     template_body: "TemplateBody",
    #     template_url: "TemplateURL",
    #     stack_name: "StackNameOrId",
    #     stack_set_name: "StackSetNameOrId",
    #   })
    #
    # @example Response structure
    #
    #   resp.parameters #=> Array
    #   resp.parameters[0].parameter_key #=> String
    #   resp.parameters[0].default_value #=> String
    #   resp.parameters[0].parameter_type #=> String
    #   resp.parameters[0].no_echo #=> Boolean
    #   resp.parameters[0].description #=> String
    #   resp.parameters[0].parameter_constraints.allowed_values #=> Array
    #   resp.parameters[0].parameter_constraints.allowed_values[0] #=> String
    #   resp.description #=> String
    #   resp.capabilities #=> Array
    #   resp.capabilities[0] #=> String, one of "CAPABILITY_IAM", "CAPABILITY_NAMED_IAM", "CAPABILITY_AUTO_EXPAND"
    #   resp.capabilities_reason #=> String
    #   resp.resource_types #=> Array
    #   resp.resource_types[0] #=> String
    #   resp.version #=> String
    #   resp.metadata #=> String
    #   resp.declared_transforms #=> Array
    #   resp.declared_transforms[0] #=> String
    #   resp.resource_identifier_summaries #=> Array
    #   resp.resource_identifier_summaries[0].resource_type #=> String
    #   resp.resource_identifier_summaries[0].logical_resource_ids #=> Array
    #   resp.resource_identifier_summaries[0].logical_resource_ids[0] #=> String
    #   resp.resource_identifier_summaries[0].resource_identifiers #=> Array
    #   resp.resource_identifier_summaries[0].resource_identifiers[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/GetTemplateSummary AWS API Documentation
    #
    # @overload get_template_summary(params = {})
    # @param [Hash] params ({})
    def get_template_summary(params = {}, options = {})
      req = build_request(:get_template_summary, params)
      req.send_request(options)
    end

    # Returns the ID and status of each active change set for a stack. For
    # example, AWS CloudFormation lists change sets that are in the
    # `CREATE_IN_PROGRESS` or `CREATE_PENDING` state.
    #
    # @option params [required, String] :stack_name
    #   The name or the Amazon Resource Name (ARN) of the stack for which you
    #   want to list change sets.
    #
    # @option params [String] :next_token
    #   A string (provided by the ListChangeSets response output) that
    #   identifies the next page of change sets that you want to retrieve.
    #
    # @return [Types::ListChangeSetsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListChangeSetsOutput#summaries #summaries} => Array&lt;Types::ChangeSetSummary&gt;
    #   * {Types::ListChangeSetsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_change_sets({
    #     stack_name: "StackNameOrId", # required
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.summaries #=> Array
    #   resp.summaries[0].stack_id #=> String
    #   resp.summaries[0].stack_name #=> String
    #   resp.summaries[0].change_set_id #=> String
    #   resp.summaries[0].change_set_name #=> String
    #   resp.summaries[0].execution_status #=> String, one of "UNAVAILABLE", "AVAILABLE", "EXECUTE_IN_PROGRESS", "EXECUTE_COMPLETE", "EXECUTE_FAILED", "OBSOLETE"
    #   resp.summaries[0].status #=> String, one of "CREATE_PENDING", "CREATE_IN_PROGRESS", "CREATE_COMPLETE", "DELETE_COMPLETE", "FAILED"
    #   resp.summaries[0].status_reason #=> String
    #   resp.summaries[0].creation_time #=> Time
    #   resp.summaries[0].description #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/ListChangeSets AWS API Documentation
    #
    # @overload list_change_sets(params = {})
    # @param [Hash] params ({})
    def list_change_sets(params = {}, options = {})
      req = build_request(:list_change_sets, params)
      req.send_request(options)
    end

    # Lists all exported output values in the account and Region in which
    # you call this action. Use this action to see the exported output
    # values that you can import into other stacks. To import values, use
    # the [ `Fn::ImportValue` ][1] function.
    #
    # For more information, see [ AWS CloudFormation Export Stack Output
    # Values][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-importvalue.html
    # [2]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-exports.html
    #
    # @option params [String] :next_token
    #   A string (provided by the ListExports response output) that identifies
    #   the next page of exported output values that you asked to retrieve.
    #
    # @return [Types::ListExportsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListExportsOutput#exports #exports} => Array&lt;Types::Export&gt;
    #   * {Types::ListExportsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_exports({
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.exports #=> Array
    #   resp.exports[0].exporting_stack_id #=> String
    #   resp.exports[0].name #=> String
    #   resp.exports[0].value #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/ListExports AWS API Documentation
    #
    # @overload list_exports(params = {})
    # @param [Hash] params ({})
    def list_exports(params = {}, options = {})
      req = build_request(:list_exports, params)
      req.send_request(options)
    end

    # Lists all stacks that are importing an exported output value. To
    # modify or remove an exported output value, first use this action to
    # see which stacks are using it. To see the exported output values in
    # your account, see ListExports.
    #
    # For more information about importing an exported output value, see the
    # [ `Fn::ImportValue` ][1] function.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-importvalue.html
    #
    # @option params [required, String] :export_name
    #   The name of the exported output value. AWS CloudFormation returns the
    #   stack names that are importing this value.
    #
    # @option params [String] :next_token
    #   A string (provided by the ListImports response output) that identifies
    #   the next page of stacks that are importing the specified exported
    #   output value.
    #
    # @return [Types::ListImportsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListImportsOutput#imports #imports} => Array&lt;String&gt;
    #   * {Types::ListImportsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_imports({
    #     export_name: "ExportName", # required
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.imports #=> Array
    #   resp.imports[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/ListImports AWS API Documentation
    #
    # @overload list_imports(params = {})
    # @param [Hash] params ({})
    def list_imports(params = {}, options = {})
      req = build_request(:list_imports, params)
      req.send_request(options)
    end

    # Returns summary information about stack instances that are associated
    # with the specified stack set. You can filter for stack instances that
    # are associated with a specific AWS account name or Region, or that
    # have a specific status.
    #
    # @option params [required, String] :stack_set_name
    #   The name or unique ID of the stack set that you want to list stack
    #   instances for.
    #
    # @option params [String] :next_token
    #   If the previous request didn't return all of the remaining results,
    #   the response's `NextToken` parameter value is set to a token. To
    #   retrieve the next set of results, call `ListStackInstances` again and
    #   assign that token to the request object's `NextToken` parameter. If
    #   there are no remaining results, the previous response object's
    #   `NextToken` parameter is set to `null`.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to be returned with a single call. If
    #   the number of available results exceeds this maximum, the response
    #   includes a `NextToken` value that you can assign to the `NextToken`
    #   request parameter to get the next set of results.
    #
    # @option params [Array<Types::StackInstanceFilter>] :filters
    #   The status that stack instances are filtered by.
    #
    # @option params [String] :stack_instance_account
    #   The name of the AWS account that you want to list stack instances for.
    #
    # @option params [String] :stack_instance_region
    #   The name of the Region where you want to list stack instances.
    #
    # @return [Types::ListStackInstancesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListStackInstancesOutput#summaries #summaries} => Array&lt;Types::StackInstanceSummary&gt;
    #   * {Types::ListStackInstancesOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_stack_instances({
    #     stack_set_name: "StackSetName", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #     filters: [
    #       {
    #         name: "DETAILED_STATUS", # accepts DETAILED_STATUS
    #         values: "StackInstanceFilterValues",
    #       },
    #     ],
    #     stack_instance_account: "Account",
    #     stack_instance_region: "Region",
    #   })
    #
    # @example Response structure
    #
    #   resp.summaries #=> Array
    #   resp.summaries[0].stack_set_id #=> String
    #   resp.summaries[0].region #=> String
    #   resp.summaries[0].account #=> String
    #   resp.summaries[0].stack_id #=> String
    #   resp.summaries[0].status #=> String, one of "CURRENT", "OUTDATED", "INOPERABLE"
    #   resp.summaries[0].status_reason #=> String
    #   resp.summaries[0].stack_instance_status.detailed_status #=> String, one of "PENDING", "RUNNING", "SUCCEEDED", "FAILED", "CANCELLED", "INOPERABLE"
    #   resp.summaries[0].organizational_unit_id #=> String
    #   resp.summaries[0].drift_status #=> String, one of "DRIFTED", "IN_SYNC", "UNKNOWN", "NOT_CHECKED"
    #   resp.summaries[0].last_drift_check_timestamp #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/ListStackInstances AWS API Documentation
    #
    # @overload list_stack_instances(params = {})
    # @param [Hash] params ({})
    def list_stack_instances(params = {}, options = {})
      req = build_request(:list_stack_instances, params)
      req.send_request(options)
    end

    # Returns descriptions of all resources of the specified stack.
    #
    # For deleted stacks, ListStackResources returns resource information
    # for up to 90 days after the stack has been deleted.
    #
    # @option params [required, String] :stack_name
    #   The name or the unique stack ID that is associated with the stack,
    #   which are not always interchangeable:
    #
    #   * Running stacks: You can specify either the stack's name or its
    #     unique stack ID.
    #
    #   * Deleted stacks: You must specify the unique stack ID.
    #
    #   Default: There is no default value.
    #
    # @option params [String] :next_token
    #   A string that identifies the next page of stack resources that you
    #   want to retrieve.
    #
    # @return [Types::ListStackResourcesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListStackResourcesOutput#stack_resource_summaries #stack_resource_summaries} => Array&lt;Types::StackResourceSummary&gt;
    #   * {Types::ListStackResourcesOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_stack_resources({
    #     stack_name: "StackName", # required
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.stack_resource_summaries #=> Array
    #   resp.stack_resource_summaries[0].logical_resource_id #=> String
    #   resp.stack_resource_summaries[0].physical_resource_id #=> String
    #   resp.stack_resource_summaries[0].resource_type #=> String
    #   resp.stack_resource_summaries[0].last_updated_timestamp #=> Time
    #   resp.stack_resource_summaries[0].resource_status #=> String, one of "CREATE_IN_PROGRESS", "CREATE_FAILED", "CREATE_COMPLETE", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETE_COMPLETE", "DELETE_SKIPPED", "UPDATE_IN_PROGRESS", "UPDATE_FAILED", "UPDATE_COMPLETE", "IMPORT_FAILED", "IMPORT_COMPLETE", "IMPORT_IN_PROGRESS", "IMPORT_ROLLBACK_IN_PROGRESS", "IMPORT_ROLLBACK_FAILED", "IMPORT_ROLLBACK_COMPLETE"
    #   resp.stack_resource_summaries[0].resource_status_reason #=> String
    #   resp.stack_resource_summaries[0].drift_information.stack_resource_drift_status #=> String, one of "IN_SYNC", "MODIFIED", "DELETED", "NOT_CHECKED"
    #   resp.stack_resource_summaries[0].drift_information.last_check_timestamp #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/ListStackResources AWS API Documentation
    #
    # @overload list_stack_resources(params = {})
    # @param [Hash] params ({})
    def list_stack_resources(params = {}, options = {})
      req = build_request(:list_stack_resources, params)
      req.send_request(options)
    end

    # Returns summary information about the results of a stack set
    # operation.
    #
    # @option params [required, String] :stack_set_name
    #   The name or unique ID of the stack set that you want to get operation
    #   results for.
    #
    # @option params [required, String] :operation_id
    #   The ID of the stack set operation.
    #
    # @option params [String] :next_token
    #   If the previous request didn't return all of the remaining results,
    #   the response object's `NextToken` parameter value is set to a token.
    #   To retrieve the next set of results, call
    #   `ListStackSetOperationResults` again and assign that token to the
    #   request object's `NextToken` parameter. If there are no remaining
    #   results, the previous response object's `NextToken` parameter is set
    #   to `null`.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to be returned with a single call. If
    #   the number of available results exceeds this maximum, the response
    #   includes a `NextToken` value that you can assign to the `NextToken`
    #   request parameter to get the next set of results.
    #
    # @return [Types::ListStackSetOperationResultsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListStackSetOperationResultsOutput#summaries #summaries} => Array&lt;Types::StackSetOperationResultSummary&gt;
    #   * {Types::ListStackSetOperationResultsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_stack_set_operation_results({
    #     stack_set_name: "StackSetName", # required
    #     operation_id: "ClientRequestToken", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.summaries #=> Array
    #   resp.summaries[0].account #=> String
    #   resp.summaries[0].region #=> String
    #   resp.summaries[0].status #=> String, one of "PENDING", "RUNNING", "SUCCEEDED", "FAILED", "CANCELLED"
    #   resp.summaries[0].status_reason #=> String
    #   resp.summaries[0].account_gate_result.status #=> String, one of "SUCCEEDED", "FAILED", "SKIPPED"
    #   resp.summaries[0].account_gate_result.status_reason #=> String
    #   resp.summaries[0].organizational_unit_id #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/ListStackSetOperationResults AWS API Documentation
    #
    # @overload list_stack_set_operation_results(params = {})
    # @param [Hash] params ({})
    def list_stack_set_operation_results(params = {}, options = {})
      req = build_request(:list_stack_set_operation_results, params)
      req.send_request(options)
    end

    # Returns summary information about operations performed on a stack set.
    #
    # @option params [required, String] :stack_set_name
    #   The name or unique ID of the stack set that you want to get operation
    #   summaries for.
    #
    # @option params [String] :next_token
    #   If the previous paginated request didn't return all of the remaining
    #   results, the response object's `NextToken` parameter value is set to
    #   a token. To retrieve the next set of results, call
    #   `ListStackSetOperations` again and assign that token to the request
    #   object's `NextToken` parameter. If there are no remaining results,
    #   the previous response object's `NextToken` parameter is set to
    #   `null`.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to be returned with a single call. If
    #   the number of available results exceeds this maximum, the response
    #   includes a `NextToken` value that you can assign to the `NextToken`
    #   request parameter to get the next set of results.
    #
    # @return [Types::ListStackSetOperationsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListStackSetOperationsOutput#summaries #summaries} => Array&lt;Types::StackSetOperationSummary&gt;
    #   * {Types::ListStackSetOperationsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_stack_set_operations({
    #     stack_set_name: "StackSetName", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.summaries #=> Array
    #   resp.summaries[0].operation_id #=> String
    #   resp.summaries[0].action #=> String, one of "CREATE", "UPDATE", "DELETE", "DETECT_DRIFT"
    #   resp.summaries[0].status #=> String, one of "RUNNING", "SUCCEEDED", "FAILED", "STOPPING", "STOPPED", "QUEUED"
    #   resp.summaries[0].creation_timestamp #=> Time
    #   resp.summaries[0].end_timestamp #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/ListStackSetOperations AWS API Documentation
    #
    # @overload list_stack_set_operations(params = {})
    # @param [Hash] params ({})
    def list_stack_set_operations(params = {}, options = {})
      req = build_request(:list_stack_set_operations, params)
      req.send_request(options)
    end

    # Returns summary information about stack sets that are associated with
    # the user.
    #
    # @option params [String] :next_token
    #   If the previous paginated request didn't return all of the remaining
    #   results, the response object's `NextToken` parameter value is set to
    #   a token. To retrieve the next set of results, call `ListStackSets`
    #   again and assign that token to the request object's `NextToken`
    #   parameter. If there are no remaining results, the previous response
    #   object's `NextToken` parameter is set to `null`.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to be returned with a single call. If
    #   the number of available results exceeds this maximum, the response
    #   includes a `NextToken` value that you can assign to the `NextToken`
    #   request parameter to get the next set of results.
    #
    # @option params [String] :status
    #   The status of the stack sets that you want to get summary information
    #   about.
    #
    # @return [Types::ListStackSetsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListStackSetsOutput#summaries #summaries} => Array&lt;Types::StackSetSummary&gt;
    #   * {Types::ListStackSetsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_stack_sets({
    #     next_token: "NextToken",
    #     max_results: 1,
    #     status: "ACTIVE", # accepts ACTIVE, DELETED
    #   })
    #
    # @example Response structure
    #
    #   resp.summaries #=> Array
    #   resp.summaries[0].stack_set_name #=> String
    #   resp.summaries[0].stack_set_id #=> String
    #   resp.summaries[0].description #=> String
    #   resp.summaries[0].status #=> String, one of "ACTIVE", "DELETED"
    #   resp.summaries[0].auto_deployment.enabled #=> Boolean
    #   resp.summaries[0].auto_deployment.retain_stacks_on_account_removal #=> Boolean
    #   resp.summaries[0].permission_model #=> String, one of "SERVICE_MANAGED", "SELF_MANAGED"
    #   resp.summaries[0].drift_status #=> String, one of "DRIFTED", "IN_SYNC", "UNKNOWN", "NOT_CHECKED"
    #   resp.summaries[0].last_drift_check_timestamp #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/ListStackSets AWS API Documentation
    #
    # @overload list_stack_sets(params = {})
    # @param [Hash] params ({})
    def list_stack_sets(params = {}, options = {})
      req = build_request(:list_stack_sets, params)
      req.send_request(options)
    end

    # Returns the summary information for stacks whose status matches the
    # specified StackStatusFilter. Summary information for stacks that have
    # been deleted is kept for 90 days after the stack is deleted. If no
    # StackStatusFilter is specified, summary information for all stacks is
    # returned (including existing stacks and stacks that have been
    # deleted).
    #
    # @option params [String] :next_token
    #   A string that identifies the next page of stacks that you want to
    #   retrieve.
    #
    # @option params [Array<String>] :stack_status_filter
    #   Stack status to use as a filter. Specify one or more stack status
    #   codes to list only stacks with the specified status codes. For a
    #   complete list of stack status codes, see the `StackStatus` parameter
    #   of the Stack data type.
    #
    # @return [Types::ListStacksOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListStacksOutput#stack_summaries #stack_summaries} => Array&lt;Types::StackSummary&gt;
    #   * {Types::ListStacksOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_stacks({
    #     next_token: "NextToken",
    #     stack_status_filter: ["CREATE_IN_PROGRESS"], # accepts CREATE_IN_PROGRESS, CREATE_FAILED, CREATE_COMPLETE, ROLLBACK_IN_PROGRESS, ROLLBACK_FAILED, ROLLBACK_COMPLETE, DELETE_IN_PROGRESS, DELETE_FAILED, DELETE_COMPLETE, UPDATE_IN_PROGRESS, UPDATE_COMPLETE_CLEANUP_IN_PROGRESS, UPDATE_COMPLETE, UPDATE_ROLLBACK_IN_PROGRESS, UPDATE_ROLLBACK_FAILED, UPDATE_ROLLBACK_COMPLETE_CLEANUP_IN_PROGRESS, UPDATE_ROLLBACK_COMPLETE, REVIEW_IN_PROGRESS, IMPORT_IN_PROGRESS, IMPORT_COMPLETE, IMPORT_ROLLBACK_IN_PROGRESS, IMPORT_ROLLBACK_FAILED, IMPORT_ROLLBACK_COMPLETE
    #   })
    #
    # @example Response structure
    #
    #   resp.stack_summaries #=> Array
    #   resp.stack_summaries[0].stack_id #=> String
    #   resp.stack_summaries[0].stack_name #=> String
    #   resp.stack_summaries[0].template_description #=> String
    #   resp.stack_summaries[0].creation_time #=> Time
    #   resp.stack_summaries[0].last_updated_time #=> Time
    #   resp.stack_summaries[0].deletion_time #=> Time
    #   resp.stack_summaries[0].stack_status #=> String, one of "CREATE_IN_PROGRESS", "CREATE_FAILED", "CREATE_COMPLETE", "ROLLBACK_IN_PROGRESS", "ROLLBACK_FAILED", "ROLLBACK_COMPLETE", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETE_COMPLETE", "UPDATE_IN_PROGRESS", "UPDATE_COMPLETE_CLEANUP_IN_PROGRESS", "UPDATE_COMPLETE", "UPDATE_ROLLBACK_IN_PROGRESS", "UPDATE_ROLLBACK_FAILED", "UPDATE_ROLLBACK_COMPLETE_CLEANUP_IN_PROGRESS", "UPDATE_ROLLBACK_COMPLETE", "REVIEW_IN_PROGRESS", "IMPORT_IN_PROGRESS", "IMPORT_COMPLETE", "IMPORT_ROLLBACK_IN_PROGRESS", "IMPORT_ROLLBACK_FAILED", "IMPORT_ROLLBACK_COMPLETE"
    #   resp.stack_summaries[0].stack_status_reason #=> String
    #   resp.stack_summaries[0].parent_id #=> String
    #   resp.stack_summaries[0].root_id #=> String
    #   resp.stack_summaries[0].drift_information.stack_drift_status #=> String, one of "DRIFTED", "IN_SYNC", "UNKNOWN", "NOT_CHECKED"
    #   resp.stack_summaries[0].drift_information.last_check_timestamp #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/ListStacks AWS API Documentation
    #
    # @overload list_stacks(params = {})
    # @param [Hash] params ({})
    def list_stacks(params = {}, options = {})
      req = build_request(:list_stacks, params)
      req.send_request(options)
    end

    # Returns a list of registration tokens for the specified type(s).
    #
    # @option params [String] :type
    #   The kind of type.
    #
    #   Currently the only valid value is `RESOURCE`.
    #
    #   Conditional: You must specify either `TypeName` and `Type`, or `Arn`.
    #
    # @option params [String] :type_name
    #   The name of the type.
    #
    #   Conditional: You must specify either `TypeName` and `Type`, or `Arn`.
    #
    # @option params [String] :type_arn
    #   The Amazon Resource Name (ARN) of the type.
    #
    #   Conditional: You must specify either `TypeName` and `Type`, or `Arn`.
    #
    # @option params [String] :registration_status_filter
    #   The current status of the type registration request.
    #
    #   The default is `IN_PROGRESS`.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to be returned with a single call. If
    #   the number of available results exceeds this maximum, the response
    #   includes a `NextToken` value that you can assign to the `NextToken`
    #   request parameter to get the next set of results.
    #
    # @option params [String] :next_token
    #   If the previous paginated request didn't return all of the remaining
    #   results, the response object's `NextToken` parameter value is set to
    #   a token. To retrieve the next set of results, call this action again
    #   and assign that token to the request object's `NextToken` parameter.
    #   If there are no remaining results, the previous response object's
    #   `NextToken` parameter is set to `null`.
    #
    # @return [Types::ListTypeRegistrationsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTypeRegistrationsOutput#registration_token_list #registration_token_list} => Array&lt;String&gt;
    #   * {Types::ListTypeRegistrationsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_type_registrations({
    #     type: "RESOURCE", # accepts RESOURCE
    #     type_name: "TypeName",
    #     type_arn: "TypeArn",
    #     registration_status_filter: "COMPLETE", # accepts COMPLETE, IN_PROGRESS, FAILED
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.registration_token_list #=> Array
    #   resp.registration_token_list[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/ListTypeRegistrations AWS API Documentation
    #
    # @overload list_type_registrations(params = {})
    # @param [Hash] params ({})
    def list_type_registrations(params = {}, options = {})
      req = build_request(:list_type_registrations, params)
      req.send_request(options)
    end

    # Returns summary information about the versions of a type.
    #
    # @option params [String] :type
    #   The kind of the type.
    #
    #   Currently the only valid value is `RESOURCE`.
    #
    #   Conditional: You must specify either `TypeName` and `Type`, or `Arn`.
    #
    # @option params [String] :type_name
    #   The name of the type for which you want version summary information.
    #
    #   Conditional: You must specify either `TypeName` and `Type`, or `Arn`.
    #
    # @option params [String] :arn
    #   The Amazon Resource Name (ARN) of the type for which you want version
    #   summary information.
    #
    #   Conditional: You must specify either `TypeName` and `Type`, or `Arn`.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to be returned with a single call. If
    #   the number of available results exceeds this maximum, the response
    #   includes a `NextToken` value that you can assign to the `NextToken`
    #   request parameter to get the next set of results.
    #
    # @option params [String] :next_token
    #   If the previous paginated request didn't return all of the remaining
    #   results, the response object's `NextToken` parameter value is set to
    #   a token. To retrieve the next set of results, call this action again
    #   and assign that token to the request object's `NextToken` parameter.
    #   If there are no remaining results, the previous response object's
    #   `NextToken` parameter is set to `null`.
    #
    # @option params [String] :deprecated_status
    #   The deprecation status of the type versions that you want to get
    #   summary information about.
    #
    #   Valid values include:
    #
    #   * `LIVE`\: The type version is registered and can be used in
    #     CloudFormation operations, dependent on its provisioning behavior
    #     and visibility scope.
    #
    #   * `DEPRECATED`\: The type version has been deregistered and can no
    #     longer be used in CloudFormation operations.
    #
    #   The default is `LIVE`.
    #
    # @return [Types::ListTypeVersionsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTypeVersionsOutput#type_version_summaries #type_version_summaries} => Array&lt;Types::TypeVersionSummary&gt;
    #   * {Types::ListTypeVersionsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_type_versions({
    #     type: "RESOURCE", # accepts RESOURCE
    #     type_name: "TypeName",
    #     arn: "PrivateTypeArn",
    #     max_results: 1,
    #     next_token: "NextToken",
    #     deprecated_status: "LIVE", # accepts LIVE, DEPRECATED
    #   })
    #
    # @example Response structure
    #
    #   resp.type_version_summaries #=> Array
    #   resp.type_version_summaries[0].type #=> String, one of "RESOURCE"
    #   resp.type_version_summaries[0].type_name #=> String
    #   resp.type_version_summaries[0].version_id #=> String
    #   resp.type_version_summaries[0].is_default_version #=> Boolean
    #   resp.type_version_summaries[0].arn #=> String
    #   resp.type_version_summaries[0].time_created #=> Time
    #   resp.type_version_summaries[0].description #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/ListTypeVersions AWS API Documentation
    #
    # @overload list_type_versions(params = {})
    # @param [Hash] params ({})
    def list_type_versions(params = {}, options = {})
      req = build_request(:list_type_versions, params)
      req.send_request(options)
    end

    # Returns summary information about types that have been registered with
    # CloudFormation.
    #
    # @option params [String] :visibility
    #   The scope at which the type is visible and usable in CloudFormation
    #   operations.
    #
    #   Valid values include:
    #
    #   * `PRIVATE`\: The type is only visible and usable within the account
    #     in which it is registered. Currently, AWS CloudFormation marks any
    #     types you create as `PRIVATE`.
    #
    #   * `PUBLIC`\: The type is publically visible and usable within any
    #     Amazon account.
    #
    #   The default is `PRIVATE`.
    #
    # @option params [String] :provisioning_type
    #   The provisioning behavior of the type. AWS CloudFormation determines
    #   the provisioning type during registration, based on the types of
    #   handlers in the schema handler package submitted.
    #
    #   Valid values include:
    #
    #   * `FULLY_MUTABLE`\: The type includes an update handler to process
    #     updates to the type during stack update operations.
    #
    #   * `IMMUTABLE`\: The type does not include an update handler, so the
    #     type cannot be updated and must instead be replaced during stack
    #     update operations.
    #
    #   * `NON_PROVISIONABLE`\: The type does not include create, read, and
    #     delete handlers, and therefore cannot actually be provisioned.
    #
    # @option params [String] :deprecated_status
    #   The deprecation status of the types that you want to get summary
    #   information about.
    #
    #   Valid values include:
    #
    #   * `LIVE`\: The type is registered for use in CloudFormation
    #     operations.
    #
    #   * `DEPRECATED`\: The type has been deregistered and can no longer be
    #     used in CloudFormation operations.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to be returned with a single call. If
    #   the number of available results exceeds this maximum, the response
    #   includes a `NextToken` value that you can assign to the `NextToken`
    #   request parameter to get the next set of results.
    #
    # @option params [String] :next_token
    #   If the previous paginated request didn't return all of the remaining
    #   results, the response object's `NextToken` parameter value is set to
    #   a token. To retrieve the next set of results, call this action again
    #   and assign that token to the request object's `NextToken` parameter.
    #   If there are no remaining results, the previous response object's
    #   `NextToken` parameter is set to `null`.
    #
    # @return [Types::ListTypesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTypesOutput#type_summaries #type_summaries} => Array&lt;Types::TypeSummary&gt;
    #   * {Types::ListTypesOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_types({
    #     visibility: "PUBLIC", # accepts PUBLIC, PRIVATE
    #     provisioning_type: "NON_PROVISIONABLE", # accepts NON_PROVISIONABLE, IMMUTABLE, FULLY_MUTABLE
    #     deprecated_status: "LIVE", # accepts LIVE, DEPRECATED
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.type_summaries #=> Array
    #   resp.type_summaries[0].type #=> String, one of "RESOURCE"
    #   resp.type_summaries[0].type_name #=> String
    #   resp.type_summaries[0].default_version_id #=> String
    #   resp.type_summaries[0].type_arn #=> String
    #   resp.type_summaries[0].last_updated #=> Time
    #   resp.type_summaries[0].description #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/ListTypes AWS API Documentation
    #
    # @overload list_types(params = {})
    # @param [Hash] params ({})
    def list_types(params = {}, options = {})
      req = build_request(:list_types, params)
      req.send_request(options)
    end

    # Reports progress of a resource handler to CloudFormation.
    #
    # Reserved for use by the [CloudFormation CLI][1]. Do not use this API
    # in your code.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/what-is-cloudformation-cli.html
    #
    # @option params [required, String] :bearer_token
    #   Reserved for use by the [CloudFormation CLI][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/what-is-cloudformation-cli.html
    #
    # @option params [required, String] :operation_status
    #   Reserved for use by the [CloudFormation CLI][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/what-is-cloudformation-cli.html
    #
    # @option params [String] :current_operation_status
    #   Reserved for use by the [CloudFormation CLI][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/what-is-cloudformation-cli.html
    #
    # @option params [String] :status_message
    #   Reserved for use by the [CloudFormation CLI][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/what-is-cloudformation-cli.html
    #
    # @option params [String] :error_code
    #   Reserved for use by the [CloudFormation CLI][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/what-is-cloudformation-cli.html
    #
    # @option params [String] :resource_model
    #   Reserved for use by the [CloudFormation CLI][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/what-is-cloudformation-cli.html
    #
    # @option params [String] :client_request_token
    #   Reserved for use by the [CloudFormation CLI][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/what-is-cloudformation-cli.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.record_handler_progress({
    #     bearer_token: "ClientToken", # required
    #     operation_status: "PENDING", # required, accepts PENDING, IN_PROGRESS, SUCCESS, FAILED
    #     current_operation_status: "PENDING", # accepts PENDING, IN_PROGRESS, SUCCESS, FAILED
    #     status_message: "StatusMessage",
    #     error_code: "NotUpdatable", # accepts NotUpdatable, InvalidRequest, AccessDenied, InvalidCredentials, AlreadyExists, NotFound, ResourceConflict, Throttling, ServiceLimitExceeded, NotStabilized, GeneralServiceException, ServiceInternalError, NetworkFailure, InternalFailure
    #     resource_model: "ResourceModel",
    #     client_request_token: "ClientRequestToken",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/RecordHandlerProgress AWS API Documentation
    #
    # @overload record_handler_progress(params = {})
    # @param [Hash] params ({})
    def record_handler_progress(params = {}, options = {})
      req = build_request(:record_handler_progress, params)
      req.send_request(options)
    end

    # Registers a type with the CloudFormation service. Registering a type
    # makes it available for use in CloudFormation templates in your AWS
    # account, and includes:
    #
    # * Validating the resource schema
    #
    # * Determining which handlers have been specified for the resource
    #
    # * Making the resource type available for use in your account
    #
    # For more information on how to develop types and ready them for
    # registeration, see [Creating Resource Providers][1] in the
    # *CloudFormation CLI User Guide*.
    #
    # You can have a maximum of 50 resource type versions registered at a
    # time. This maximum is per account and per region. Use
    # [DeregisterType](AWSCloudFormation/latest/APIReference/API_DeregisterType.html)
    # to deregister specific resource type versions if necessary.
    #
    # Once you have initiated a registration request using ` RegisterType `,
    # you can use ` DescribeTypeRegistration ` to monitor the progress of
    # the registration request.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/resource-types.html
    #
    # @option params [String] :type
    #   The kind of type.
    #
    #   Currently, the only valid value is `RESOURCE`.
    #
    # @option params [required, String] :type_name
    #   The name of the type being registered.
    #
    #   We recommend that type names adhere to the following pattern:
    #   *company\_or\_organization*\::*service*\::*type*.
    #
    #   <note markdown="1"> The following organization namespaces are reserved and cannot be used
    #   in your resource type names:
    #
    #    * `Alexa`
    #
    #   * `AMZN`
    #
    #   * `Amazon`
    #
    #   * `AWS`
    #
    #   * `Custom`
    #
    #   * `Dev`
    #
    #    </note>
    #
    # @option params [required, String] :schema_handler_package
    #   A url to the S3 bucket containing the schema handler package that
    #   contains the schema, event handlers, and associated files for the type
    #   you want to register.
    #
    #   For information on generating a schema handler package for the type
    #   you want to register, see [submit][1] in the *CloudFormation CLI User
    #   Guide*.
    #
    #   <note markdown="1"> As part of registering a resource provider type, CloudFormation must
    #   be able to access the S3 bucket which contains the schema handler
    #   package for that resource provider. For more information, see [IAM
    #   Permissions for Registering a Resource Provider][2] in the *AWS
    #   CloudFormation User Guide*.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/resource-type-cli-submit.html
    #   [2]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/registry.html#registry-register-permissions
    #
    # @option params [Types::LoggingConfig] :logging_config
    #   Specifies logging configuration information for a type.
    #
    # @option params [String] :execution_role_arn
    #   The Amazon Resource Name (ARN) of the IAM role for CloudFormation to
    #   assume when invoking the resource provider. If your resource type
    #   calls AWS APIs in any of its handlers, you must create an <i> <a
    #   href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles.html">IAM
    #   execution role</a> </i> that includes the necessary permissions to
    #   call those AWS APIs, and provision that execution role in your
    #   account. When CloudFormation needs to invoke the resource provider
    #   handler, CloudFormation assumes this execution role to create a
    #   temporary session token, which it then passes to the resource provider
    #   handler, thereby supplying your resource provider with the appropriate
    #   credentials.
    #
    # @option params [String] :client_request_token
    #   A unique identifier that acts as an idempotency key for this
    #   registration request. Specifying a client request token prevents
    #   CloudFormation from generating more than one version of a type from
    #   the same registeration request, even if the request is submitted
    #   multiple times.
    #
    # @return [Types::RegisterTypeOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RegisterTypeOutput#registration_token #registration_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.register_type({
    #     type: "RESOURCE", # accepts RESOURCE
    #     type_name: "TypeName", # required
    #     schema_handler_package: "S3Url", # required
    #     logging_config: {
    #       log_role_arn: "RoleArn", # required
    #       log_group_name: "LogGroupName", # required
    #     },
    #     execution_role_arn: "RoleArn",
    #     client_request_token: "RequestToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.registration_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/RegisterType AWS API Documentation
    #
    # @overload register_type(params = {})
    # @param [Hash] params ({})
    def register_type(params = {}, options = {})
      req = build_request(:register_type, params)
      req.send_request(options)
    end

    # Sets a stack policy for a specified stack.
    #
    # @option params [required, String] :stack_name
    #   The name or unique stack ID that you want to associate a policy with.
    #
    # @option params [String] :stack_policy_body
    #   Structure containing the stack policy body. For more information, go
    #   to [ Prevent Updates to Stack Resources][1] in the AWS CloudFormation
    #   User Guide. You can specify either the `StackPolicyBody` or the
    #   `StackPolicyURL` parameter, but not both.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/protect-stack-resources.html
    #
    # @option params [String] :stack_policy_url
    #   Location of a file containing the stack policy. The URL must point to
    #   a policy (maximum size: 16 KB) located in an S3 bucket in the same
    #   Region as the stack. You can specify either the `StackPolicyBody` or
    #   the `StackPolicyURL` parameter, but not both.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.set_stack_policy({
    #     stack_name: "StackName", # required
    #     stack_policy_body: "StackPolicyBody",
    #     stack_policy_url: "StackPolicyURL",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/SetStackPolicy AWS API Documentation
    #
    # @overload set_stack_policy(params = {})
    # @param [Hash] params ({})
    def set_stack_policy(params = {}, options = {})
      req = build_request(:set_stack_policy, params)
      req.send_request(options)
    end

    # Specify the default version of a type. The default version of a type
    # will be used in CloudFormation operations.
    #
    # @option params [String] :arn
    #   The Amazon Resource Name (ARN) of the type for which you want version
    #   summary information.
    #
    #   Conditional: You must specify either `TypeName` and `Type`, or `Arn`.
    #
    # @option params [String] :type
    #   The kind of type.
    #
    #   Conditional: You must specify either `TypeName` and `Type`, or `Arn`.
    #
    # @option params [String] :type_name
    #   The name of the type.
    #
    #   Conditional: You must specify either `TypeName` and `Type`, or `Arn`.
    #
    # @option params [String] :version_id
    #   The ID of a specific version of the type. The version ID is the value
    #   at the end of the Amazon Resource Name (ARN) assigned to the type
    #   version when it is registered.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.set_type_default_version({
    #     arn: "PrivateTypeArn",
    #     type: "RESOURCE", # accepts RESOURCE
    #     type_name: "TypeName",
    #     version_id: "TypeVersionId",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/SetTypeDefaultVersion AWS API Documentation
    #
    # @overload set_type_default_version(params = {})
    # @param [Hash] params ({})
    def set_type_default_version(params = {}, options = {})
      req = build_request(:set_type_default_version, params)
      req.send_request(options)
    end

    # Sends a signal to the specified resource with a success or failure
    # status. You can use the SignalResource API in conjunction with a
    # creation policy or update policy. AWS CloudFormation doesn't proceed
    # with a stack creation or update until resources receive the required
    # number of signals or the timeout period is exceeded. The
    # SignalResource API is useful in cases where you want to send signals
    # from anywhere other than an Amazon EC2 instance.
    #
    # @option params [required, String] :stack_name
    #   The stack name or unique stack ID that includes the resource that you
    #   want to signal.
    #
    # @option params [required, String] :logical_resource_id
    #   The logical ID of the resource that you want to signal. The logical ID
    #   is the name of the resource that given in the template.
    #
    # @option params [required, String] :unique_id
    #   A unique ID of the signal. When you signal Amazon EC2 instances or
    #   Auto Scaling groups, specify the instance ID that you are signaling as
    #   the unique ID. If you send multiple signals to a single resource (such
    #   as signaling a wait condition), each signal requires a different
    #   unique ID.
    #
    # @option params [required, String] :status
    #   The status of the signal, which is either success or failure. A
    #   failure signal causes AWS CloudFormation to immediately fail the stack
    #   creation or update.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.signal_resource({
    #     stack_name: "StackNameOrId", # required
    #     logical_resource_id: "LogicalResourceId", # required
    #     unique_id: "ResourceSignalUniqueId", # required
    #     status: "SUCCESS", # required, accepts SUCCESS, FAILURE
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/SignalResource AWS API Documentation
    #
    # @overload signal_resource(params = {})
    # @param [Hash] params ({})
    def signal_resource(params = {}, options = {})
      req = build_request(:signal_resource, params)
      req.send_request(options)
    end

    # Stops an in-progress operation on a stack set and its associated stack
    # instances.
    #
    # @option params [required, String] :stack_set_name
    #   The name or unique ID of the stack set that you want to stop the
    #   operation for.
    #
    # @option params [required, String] :operation_id
    #   The ID of the stack operation.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_stack_set_operation({
    #     stack_set_name: "StackSetName", # required
    #     operation_id: "ClientRequestToken", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/StopStackSetOperation AWS API Documentation
    #
    # @overload stop_stack_set_operation(params = {})
    # @param [Hash] params ({})
    def stop_stack_set_operation(params = {}, options = {})
      req = build_request(:stop_stack_set_operation, params)
      req.send_request(options)
    end

    # Updates a stack as specified in the template. After the call completes
    # successfully, the stack update starts. You can check the status of the
    # stack via the DescribeStacks action.
    #
    # To get a copy of the template for an existing stack, you can use the
    # GetTemplate action.
    #
    # For more information about creating an update template, updating a
    # stack, and monitoring the progress of the update, see [Updating a
    # Stack][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-updating-stacks.html
    #
    # @option params [required, String] :stack_name
    #   The name or unique stack ID of the stack to update.
    #
    # @option params [String] :template_body
    #   Structure containing the template body with a minimum length of 1 byte
    #   and a maximum length of 51,200 bytes. (For more information, go to
    #   [Template Anatomy][1] in the AWS CloudFormation User Guide.)
    #
    #   Conditional: You must specify only one of the following parameters:
    #   `TemplateBody`, `TemplateURL`, or set the `UsePreviousTemplate` to
    #   `true`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html
    #
    # @option params [String] :template_url
    #   Location of file containing the template body. The URL must point to a
    #   template that is located in an Amazon S3 bucket. For more information,
    #   go to [Template Anatomy][1] in the AWS CloudFormation User Guide.
    #
    #   Conditional: You must specify only one of the following parameters:
    #   `TemplateBody`, `TemplateURL`, or set the `UsePreviousTemplate` to
    #   `true`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html
    #
    # @option params [Boolean] :use_previous_template
    #   Reuse the existing template that is associated with the stack that you
    #   are updating.
    #
    #   Conditional: You must specify only one of the following parameters:
    #   `TemplateBody`, `TemplateURL`, or set the `UsePreviousTemplate` to
    #   `true`.
    #
    # @option params [String] :stack_policy_during_update_body
    #   Structure containing the temporary overriding stack policy body. You
    #   can specify either the `StackPolicyDuringUpdateBody` or the
    #   `StackPolicyDuringUpdateURL` parameter, but not both.
    #
    #   If you want to update protected resources, specify a temporary
    #   overriding stack policy during this update. If you do not specify a
    #   stack policy, the current policy that is associated with the stack
    #   will be used.
    #
    # @option params [String] :stack_policy_during_update_url
    #   Location of a file containing the temporary overriding stack policy.
    #   The URL must point to a policy (max size: 16KB) located in an S3
    #   bucket in the same Region as the stack. You can specify either the
    #   `StackPolicyDuringUpdateBody` or the `StackPolicyDuringUpdateURL`
    #   parameter, but not both.
    #
    #   If you want to update protected resources, specify a temporary
    #   overriding stack policy during this update. If you do not specify a
    #   stack policy, the current policy that is associated with the stack
    #   will be used.
    #
    # @option params [Array<Types::Parameter>] :parameters
    #   A list of `Parameter` structures that specify input parameters for the
    #   stack. For more information, see the [Parameter][1] data type.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_Parameter.html
    #
    # @option params [Array<String>] :capabilities
    #   In some cases, you must explicitly acknowledge that your stack
    #   template contains certain capabilities in order for AWS CloudFormation
    #   to update the stack.
    #
    #   * `CAPABILITY_IAM` and `CAPABILITY_NAMED_IAM`
    #
    #     Some stack templates might include resources that can affect
    #     permissions in your AWS account; for example, by creating new AWS
    #     Identity and Access Management (IAM) users. For those stacks, you
    #     must explicitly acknowledge this by specifying one of these
    #     capabilities.
    #
    #     The following IAM resources require you to specify either the
    #     `CAPABILITY_IAM` or `CAPABILITY_NAMED_IAM` capability.
    #
    #     * If you have IAM resources, you can specify either capability.
    #
    #     * If you have IAM resources with custom names, you *must* specify
    #       `CAPABILITY_NAMED_IAM`.
    #
    #     * If you don't specify either of these capabilities, AWS
    #       CloudFormation returns an `InsufficientCapabilities` error.
    #
    #     If your stack template contains these resources, we recommend that
    #     you review all permissions associated with them and edit their
    #     permissions if necessary.
    #
    #     * [ AWS::IAM::AccessKey][1]
    #
    #     * [ AWS::IAM::Group][2]
    #
    #     * [ AWS::IAM::InstanceProfile][3]
    #
    #     * [ AWS::IAM::Policy][4]
    #
    #     * [ AWS::IAM::Role][5]
    #
    #     * [ AWS::IAM::User][6]
    #
    #     * [ AWS::IAM::UserToGroupAddition][7]
    #
    #     For more information, see [Acknowledging IAM Resources in AWS
    #     CloudFormation Templates][8].
    #
    #   * `CAPABILITY_AUTO_EXPAND`
    #
    #     Some template contain macros. Macros perform custom processing on
    #     templates; this can include simple actions like find-and-replace
    #     operations, all the way to extensive transformations of entire
    #     templates. Because of this, users typically create a change set from
    #     the processed template, so that they can review the changes
    #     resulting from the macros before actually updating the stack. If
    #     your stack template contains one or more macros, and you choose to
    #     update a stack directly from the processed template, without first
    #     reviewing the resulting changes in a change set, you must
    #     acknowledge this capability. This includes the [AWS::Include][9] and
    #     [AWS::Serverless][10] transforms, which are macros hosted by AWS
    #     CloudFormation.
    #
    #     Change sets do not currently support nested stacks. If you want to
    #     update a stack from a stack template that contains macros *and*
    #     nested stacks, you must update the stack directly from the template
    #     using this capability.
    #
    #     You should only update stacks directly from a stack template that
    #     contains macros if you know what processing the macro performs.
    #
    #      Each macro relies on an underlying Lambda service function for
    #     processing stack templates. Be aware that the Lambda function owner
    #     can update the function operation without AWS CloudFormation being
    #     notified.
    #
    #     For more information, see [Using AWS CloudFormation Macros to
    #     Perform Custom Processing on Templates][11].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-accesskey.html
    #   [2]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-group.html
    #   [3]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-instanceprofile.html
    #   [4]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-policy.html
    #   [5]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-role.html
    #   [6]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-user.html
    #   [7]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-addusertogroup.html
    #   [8]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-iam-template.html#capabilities
    #   [9]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/create-reusable-transform-function-snippets-and-add-to-your-template-with-aws-include-transform.html
    #   [10]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/transform-aws-serverless.html
    #   [11]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-macros.html
    #
    # @option params [Array<String>] :resource_types
    #   The template resource types that you have permissions to work with for
    #   this update stack action, such as `AWS::EC2::Instance`, `AWS::EC2::*`,
    #   or `Custom::MyCustomInstance`.
    #
    #   If the list of resource types doesn't include a resource that you're
    #   updating, the stack update fails. By default, AWS CloudFormation
    #   grants permissions to all resource types. AWS Identity and Access
    #   Management (IAM) uses this parameter for AWS CloudFormation-specific
    #   condition keys in IAM policies. For more information, see [Controlling
    #   Access with AWS Identity and Access Management][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-iam-template.html
    #
    # @option params [String] :role_arn
    #   The Amazon Resource Name (ARN) of an AWS Identity and Access
    #   Management (IAM) role that AWS CloudFormation assumes to update the
    #   stack. AWS CloudFormation uses the role's credentials to make calls
    #   on your behalf. AWS CloudFormation always uses this role for all
    #   future operations on the stack. As long as users have permission to
    #   operate on the stack, AWS CloudFormation uses this role even if the
    #   users don't have permission to pass it. Ensure that the role grants
    #   least privilege.
    #
    #   If you don't specify a value, AWS CloudFormation uses the role that
    #   was previously associated with the stack. If no role is available, AWS
    #   CloudFormation uses a temporary session that is generated from your
    #   user credentials.
    #
    # @option params [Types::RollbackConfiguration] :rollback_configuration
    #   The rollback triggers for AWS CloudFormation to monitor during stack
    #   creation and updating operations, and for the specified monitoring
    #   period afterwards.
    #
    # @option params [String] :stack_policy_body
    #   Structure containing a new stack policy body. You can specify either
    #   the `StackPolicyBody` or the `StackPolicyURL` parameter, but not both.
    #
    #   You might update the stack policy, for example, in order to protect a
    #   new resource that you created during a stack update. If you do not
    #   specify a stack policy, the current policy that is associated with the
    #   stack is unchanged.
    #
    # @option params [String] :stack_policy_url
    #   Location of a file containing the updated stack policy. The URL must
    #   point to a policy (max size: 16KB) located in an S3 bucket in the same
    #   Region as the stack. You can specify either the `StackPolicyBody` or
    #   the `StackPolicyURL` parameter, but not both.
    #
    #   You might update the stack policy, for example, in order to protect a
    #   new resource that you created during a stack update. If you do not
    #   specify a stack policy, the current policy that is associated with the
    #   stack is unchanged.
    #
    # @option params [Array<String>] :notification_arns
    #   Amazon Simple Notification Service topic Amazon Resource Names (ARNs)
    #   that AWS CloudFormation associates with the stack. Specify an empty
    #   list to remove all notification topics.
    #
    # @option params [Array<Types::Tag>] :tags
    #   Key-value pairs to associate with this stack. AWS CloudFormation also
    #   propagates these tags to supported resources in the stack. You can
    #   specify a maximum number of 50 tags.
    #
    #   If you don't specify this parameter, AWS CloudFormation doesn't
    #   modify the stack's tags. If you specify an empty value, AWS
    #   CloudFormation removes all associated tags.
    #
    # @option params [String] :client_request_token
    #   A unique identifier for this `UpdateStack` request. Specify this token
    #   if you plan to retry requests so that AWS CloudFormation knows that
    #   you're not attempting to update a stack with the same name. You might
    #   retry `UpdateStack` requests to ensure that AWS CloudFormation
    #   successfully received them.
    #
    #   All events triggered by a given stack operation are assigned the same
    #   client request token, which you can use to track operations. For
    #   example, if you execute a `CreateStack` operation with the token
    #   `token1`, then all the `StackEvents` generated by that operation will
    #   have `ClientRequestToken` set as `token1`.
    #
    #   In the console, stack operations display the client request token on
    #   the Events tab. Stack operations that are initiated from the console
    #   use the token format *Console-StackOperation-ID*, which helps you
    #   easily identify the stack operation . For example, if you create a
    #   stack using the console, each stack event would be assigned the same
    #   token in the following format:
    #   `Console-CreateStack-7f59c3cf-00d2-40c7-b2ff-e75db0987002`.
    #
    # @return [Types::UpdateStackOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateStackOutput#stack_id #stack_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_stack({
    #     stack_name: "StackName", # required
    #     template_body: "TemplateBody",
    #     template_url: "TemplateURL",
    #     use_previous_template: false,
    #     stack_policy_during_update_body: "StackPolicyDuringUpdateBody",
    #     stack_policy_during_update_url: "StackPolicyDuringUpdateURL",
    #     parameters: [
    #       {
    #         parameter_key: "ParameterKey",
    #         parameter_value: "ParameterValue",
    #         use_previous_value: false,
    #         resolved_value: "ParameterValue",
    #       },
    #     ],
    #     capabilities: ["CAPABILITY_IAM"], # accepts CAPABILITY_IAM, CAPABILITY_NAMED_IAM, CAPABILITY_AUTO_EXPAND
    #     resource_types: ["ResourceType"],
    #     role_arn: "RoleARN",
    #     rollback_configuration: {
    #       rollback_triggers: [
    #         {
    #           arn: "Arn", # required
    #           type: "Type", # required
    #         },
    #       ],
    #       monitoring_time_in_minutes: 1,
    #     },
    #     stack_policy_body: "StackPolicyBody",
    #     stack_policy_url: "StackPolicyURL",
    #     notification_arns: ["NotificationARN"],
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     client_request_token: "ClientRequestToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.stack_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/UpdateStack AWS API Documentation
    #
    # @overload update_stack(params = {})
    # @param [Hash] params ({})
    def update_stack(params = {}, options = {})
      req = build_request(:update_stack, params)
      req.send_request(options)
    end

    # Updates the parameter values for stack instances for the specified
    # accounts, within the specified Regions. A stack instance refers to a
    # stack in a specific account and Region.
    #
    # You can only update stack instances in Regions and accounts where they
    # already exist; to create additional stack instances, use
    # [CreateStackInstances][1].
    #
    # During stack set updates, any parameters overridden for a stack
    # instance are not updated, but retain their overridden value.
    #
    # You can only update the parameter *values* that are specified in the
    # stack set; to add or delete a parameter itself, use
    # [UpdateStackSet][2] to update the stack set template. If you add a
    # parameter to a template, before you can override the parameter value
    # specified in the stack set you must first use [UpdateStackSet][2] to
    # update all stack instances with the updated template and parameter
    # value specified in the stack set. Once a stack instance has been
    # updated with the new parameter, you can then override the parameter
    # value using `UpdateStackInstances`.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_CreateStackInstances.html
    # [2]: https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_UpdateStackSet.html
    #
    # @option params [required, String] :stack_set_name
    #   The name or unique ID of the stack set associated with the stack
    #   instances.
    #
    # @option params [Array<String>] :accounts
    #   \[`Self-managed` permissions\] The names of one or more AWS accounts
    #   for which you want to update parameter values for stack instances. The
    #   overridden parameter values will be applied to all stack instances in
    #   the specified accounts and Regions.
    #
    #   You can specify `Accounts` or `DeploymentTargets`, but not both.
    #
    # @option params [Types::DeploymentTargets] :deployment_targets
    #   \[`Service-managed` permissions\] The AWS Organizations accounts for
    #   which you want to update parameter values for stack instances. If your
    #   update targets OUs, the overridden parameter values only apply to the
    #   accounts that are currently in the target OUs and their child OUs.
    #   Accounts added to the target OUs and their child OUs in the future
    #   won't use the overridden values.
    #
    #   You can specify `Accounts` or `DeploymentTargets`, but not both.
    #
    # @option params [required, Array<String>] :regions
    #   The names of one or more Regions in which you want to update parameter
    #   values for stack instances. The overridden parameter values will be
    #   applied to all stack instances in the specified accounts and Regions.
    #
    # @option params [Array<Types::Parameter>] :parameter_overrides
    #   A list of input parameters whose values you want to update for the
    #   specified stack instances.
    #
    #   Any overridden parameter values will be applied to all stack instances
    #   in the specified accounts and Regions. When specifying parameters and
    #   their values, be aware of how AWS CloudFormation sets parameter values
    #   during stack instance update operations:
    #
    #   * To override the current value for a parameter, include the parameter
    #     and specify its value.
    #
    #   * To leave a parameter set to its present value, you can do one of the
    #     following:
    #
    #     * Do not include the parameter in the list.
    #
    #     * Include the parameter and specify `UsePreviousValue` as `true`.
    #       (You cannot specify both a value and set `UsePreviousValue` to
    #       `true`.)
    #
    #   * To set all overridden parameter back to the values specified in the
    #     stack set, specify a parameter list but do not include any
    #     parameters.
    #
    #   * To leave all parameters set to their present values, do not specify
    #     this property at all.
    #
    #   During stack set updates, any parameter values overridden for a stack
    #   instance are not updated, but retain their overridden value.
    #
    #   You can only override the parameter *values* that are specified in the
    #   stack set; to add or delete a parameter itself, use `UpdateStackSet`
    #   to update the stack set template. If you add a parameter to a
    #   template, before you can override the parameter value specified in the
    #   stack set you must first use [UpdateStackSet][1] to update all stack
    #   instances with the updated template and parameter value specified in
    #   the stack set. Once a stack instance has been updated with the new
    #   parameter, you can then override the parameter value using
    #   `UpdateStackInstances`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_UpdateStackSet.html
    #
    # @option params [Types::StackSetOperationPreferences] :operation_preferences
    #   Preferences for how AWS CloudFormation performs this stack set
    #   operation.
    #
    # @option params [String] :operation_id
    #   The unique identifier for this stack set operation.
    #
    #   The operation ID also functions as an idempotency token, to ensure
    #   that AWS CloudFormation performs the stack set operation only once,
    #   even if you retry the request multiple times. You might retry stack
    #   set operation requests to ensure that AWS CloudFormation successfully
    #   received them.
    #
    #   If you don't specify an operation ID, the SDK generates one
    #   automatically.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::UpdateStackInstancesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateStackInstancesOutput#operation_id #operation_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_stack_instances({
    #     stack_set_name: "StackSetNameOrId", # required
    #     accounts: ["Account"],
    #     deployment_targets: {
    #       accounts: ["Account"],
    #       organizational_unit_ids: ["OrganizationalUnitId"],
    #     },
    #     regions: ["Region"], # required
    #     parameter_overrides: [
    #       {
    #         parameter_key: "ParameterKey",
    #         parameter_value: "ParameterValue",
    #         use_previous_value: false,
    #         resolved_value: "ParameterValue",
    #       },
    #     ],
    #     operation_preferences: {
    #       region_order: ["Region"],
    #       failure_tolerance_count: 1,
    #       failure_tolerance_percentage: 1,
    #       max_concurrent_count: 1,
    #       max_concurrent_percentage: 1,
    #     },
    #     operation_id: "ClientRequestToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.operation_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/UpdateStackInstances AWS API Documentation
    #
    # @overload update_stack_instances(params = {})
    # @param [Hash] params ({})
    def update_stack_instances(params = {}, options = {})
      req = build_request(:update_stack_instances, params)
      req.send_request(options)
    end

    # Updates the stack set, and associated stack instances in the specified
    # accounts and Regions.
    #
    # Even if the stack set operation created by updating the stack set
    # fails (completely or partially, below or above a specified failure
    # tolerance), the stack set is updated with your changes. Subsequent
    # CreateStackInstances calls on the specified stack set use the updated
    # stack set.
    #
    # @option params [required, String] :stack_set_name
    #   The name or unique ID of the stack set that you want to update.
    #
    # @option params [String] :description
    #   A brief description of updates that you are making.
    #
    # @option params [String] :template_body
    #   The structure that contains the template body, with a minimum length
    #   of 1 byte and a maximum length of 51,200 bytes. For more information,
    #   see [Template Anatomy][1] in the AWS CloudFormation User Guide.
    #
    #   Conditional: You must specify only one of the following parameters:
    #   `TemplateBody` or `TemplateURL`—or set `UsePreviousTemplate` to true.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html
    #
    # @option params [String] :template_url
    #   The location of the file that contains the template body. The URL must
    #   point to a template (maximum size: 460,800 bytes) that is located in
    #   an Amazon S3 bucket. For more information, see [Template Anatomy][1]
    #   in the AWS CloudFormation User Guide.
    #
    #   Conditional: You must specify only one of the following parameters:
    #   `TemplateBody` or `TemplateURL`—or set `UsePreviousTemplate` to true.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html
    #
    # @option params [Boolean] :use_previous_template
    #   Use the existing template that's associated with the stack set that
    #   you're updating.
    #
    #   Conditional: You must specify only one of the following parameters:
    #   `TemplateBody` or `TemplateURL`—or set `UsePreviousTemplate` to true.
    #
    # @option params [Array<Types::Parameter>] :parameters
    #   A list of input parameters for the stack set template.
    #
    # @option params [Array<String>] :capabilities
    #   In some cases, you must explicitly acknowledge that your stack
    #   template contains certain capabilities in order for AWS CloudFormation
    #   to update the stack set and its associated stack instances.
    #
    #   * `CAPABILITY_IAM` and `CAPABILITY_NAMED_IAM`
    #
    #     Some stack templates might include resources that can affect
    #     permissions in your AWS account; for example, by creating new AWS
    #     Identity and Access Management (IAM) users. For those stacks sets,
    #     you must explicitly acknowledge this by specifying one of these
    #     capabilities.
    #
    #     The following IAM resources require you to specify either the
    #     `CAPABILITY_IAM` or `CAPABILITY_NAMED_IAM` capability.
    #
    #     * If you have IAM resources, you can specify either capability.
    #
    #     * If you have IAM resources with custom names, you *must* specify
    #       `CAPABILITY_NAMED_IAM`.
    #
    #     * If you don't specify either of these capabilities, AWS
    #       CloudFormation returns an `InsufficientCapabilities` error.
    #
    #     If your stack template contains these resources, we recommend that
    #     you review all permissions associated with them and edit their
    #     permissions if necessary.
    #
    #     * [ AWS::IAM::AccessKey][1]
    #
    #     * [ AWS::IAM::Group][2]
    #
    #     * [ AWS::IAM::InstanceProfile][3]
    #
    #     * [ AWS::IAM::Policy][4]
    #
    #     * [ AWS::IAM::Role][5]
    #
    #     * [ AWS::IAM::User][6]
    #
    #     * [ AWS::IAM::UserToGroupAddition][7]
    #
    #     For more information, see [Acknowledging IAM Resources in AWS
    #     CloudFormation Templates][8].
    #
    #   * `CAPABILITY_AUTO_EXPAND`
    #
    #     Some templates contain macros. If your stack template contains one
    #     or more macros, and you choose to update a stack directly from the
    #     processed template, without first reviewing the resulting changes in
    #     a change set, you must acknowledge this capability. For more
    #     information, see [Using AWS CloudFormation Macros to Perform Custom
    #     Processing on Templates][9].
    #
    #     Stack sets do not currently support macros in stack templates. (This
    #     includes the [AWS::Include][10] and [AWS::Serverless][11]
    #     transforms, which are macros hosted by AWS CloudFormation.) Even if
    #     you specify this capability, if you include a macro in your template
    #     the stack set operation will fail.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-accesskey.html
    #   [2]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-group.html
    #   [3]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-instanceprofile.html
    #   [4]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-policy.html
    #   [5]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-role.html
    #   [6]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-user.html
    #   [7]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-addusertogroup.html
    #   [8]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-iam-template.html#capabilities
    #   [9]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-macros.html
    #   [10]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/create-reusable-transform-function-snippets-and-add-to-your-template-with-aws-include-transform.html
    #   [11]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/transform-aws-serverless.html
    #
    # @option params [Array<Types::Tag>] :tags
    #   The key-value pairs to associate with this stack set and the stacks
    #   created from it. AWS CloudFormation also propagates these tags to
    #   supported resources that are created in the stacks. You can specify a
    #   maximum number of 50 tags.
    #
    #   If you specify tags for this parameter, those tags replace any list of
    #   tags that are currently associated with this stack set. This means:
    #
    #   * If you don't specify this parameter, AWS CloudFormation doesn't
    #     modify the stack's tags.
    #
    #   * If you specify *any* tags using this parameter, you must specify
    #     *all* the tags that you want associated with this stack set, even
    #     tags you've specifed before (for example, when creating the stack
    #     set or during a previous update of the stack set.). Any tags that
    #     you don't include in the updated list of tags are removed from the
    #     stack set, and therefore from the stacks and resources as well.
    #
    #   * If you specify an empty value, AWS CloudFormation removes all
    #     currently associated tags.
    #
    #   If you specify new tags as part of an `UpdateStackSet` action, AWS
    #   CloudFormation checks to see if you have the required IAM permission
    #   to tag resources. If you omit tags that are currently associated with
    #   the stack set from the list of tags you specify, AWS CloudFormation
    #   assumes that you want to remove those tags from the stack set, and
    #   checks to see if you have permission to untag resources. If you don't
    #   have the necessary permission(s), the entire `UpdateStackSet` action
    #   fails with an `access denied` error, and the stack set is not updated.
    #
    # @option params [Types::StackSetOperationPreferences] :operation_preferences
    #   Preferences for how AWS CloudFormation performs this stack set
    #   operation.
    #
    # @option params [String] :administration_role_arn
    #   The Amazon Resource Number (ARN) of the IAM role to use to update this
    #   stack set.
    #
    #   Specify an IAM role only if you are using customized administrator
    #   roles to control which users or groups can manage specific stack sets
    #   within the same administrator account. For more information, see
    #   [Granting Permissions for Stack Set Operations][1] in the *AWS
    #   CloudFormation User Guide*.
    #
    #   If you specified a customized administrator role when you created the
    #   stack set, you must specify a customized administrator role, even if
    #   it is the same customized administrator role used with this stack set
    #   previously.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-prereqs.html
    #
    # @option params [String] :execution_role_name
    #   The name of the IAM execution role to use to update the stack set. If
    #   you do not specify an execution role, AWS CloudFormation uses the
    #   `AWSCloudFormationStackSetExecutionRole` role for the stack set
    #   operation.
    #
    #   Specify an IAM role only if you are using customized execution roles
    #   to control which stack resources users and groups can include in their
    #   stack sets.
    #
    #   If you specify a customized execution role, AWS CloudFormation uses
    #   that role to update the stack. If you do not specify a customized
    #   execution role, AWS CloudFormation performs the update using the role
    #   previously associated with the stack set, so long as you have
    #   permissions to perform operations on the stack set.
    #
    # @option params [Types::DeploymentTargets] :deployment_targets
    #   \[`Service-managed` permissions\] The AWS Organizations accounts in
    #   which to update associated stack instances.
    #
    #   To update all the stack instances associated with this stack set, do
    #   not specify `DeploymentTargets` or `Regions`.
    #
    #   If the stack set update includes changes to the template (that is, if
    #   `TemplateBody` or `TemplateURL` is specified), or the `Parameters`,
    #   AWS CloudFormation marks all stack instances with a status of
    #   `OUTDATED` prior to updating the stack instances in the specified
    #   accounts and Regions. If the stack set update does not include changes
    #   to the template or parameters, AWS CloudFormation updates the stack
    #   instances in the specified accounts and Regions, while leaving all
    #   other stack instances with their existing stack instance status.
    #
    # @option params [String] :permission_model
    #   Describes how the IAM roles required for stack set operations are
    #   created. You cannot modify `PermissionModel` if there are stack
    #   instances associated with your stack set.
    #
    #   * With `self-managed` permissions, you must create the administrator
    #     and execution roles required to deploy to target accounts. For more
    #     information, see [Grant Self-Managed Stack Set Permissions][1].
    #
    #   * With `service-managed` permissions, StackSets automatically creates
    #     the IAM roles required to deploy to accounts managed by AWS
    #     Organizations. For more information, see [Grant Service-Managed
    #     Stack Set Permissions][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-prereqs-self-managed.html
    #   [2]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-prereqs-service-managed.html
    #
    # @option params [Types::AutoDeployment] :auto_deployment
    #   \[`Service-managed` permissions\] Describes whether StackSets
    #   automatically deploys to AWS Organizations accounts that are added to
    #   a target organization or organizational unit (OU).
    #
    #   If you specify `AutoDeployment`, do not specify `DeploymentTargets` or
    #   `Regions`.
    #
    # @option params [String] :operation_id
    #   The unique ID for this stack set operation.
    #
    #   The operation ID also functions as an idempotency token, to ensure
    #   that AWS CloudFormation performs the stack set operation only once,
    #   even if you retry the request multiple times. You might retry stack
    #   set operation requests to ensure that AWS CloudFormation successfully
    #   received them.
    #
    #   If you don't specify an operation ID, AWS CloudFormation generates
    #   one automatically.
    #
    #   Repeating this stack set operation with a new operation ID retries all
    #   stack instances whose status is `OUTDATED`.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Array<String>] :accounts
    #   \[`Self-managed` permissions\] The accounts in which to update
    #   associated stack instances. If you specify accounts, you must also
    #   specify the Regions in which to update stack set instances.
    #
    #   To update *all* the stack instances associated with this stack set, do
    #   not specify the `Accounts` or `Regions` properties.
    #
    #   If the stack set update includes changes to the template (that is, if
    #   the `TemplateBody` or `TemplateURL` properties are specified), or the
    #   `Parameters` property, AWS CloudFormation marks all stack instances
    #   with a status of `OUTDATED` prior to updating the stack instances in
    #   the specified accounts and Regions. If the stack set update does not
    #   include changes to the template or parameters, AWS CloudFormation
    #   updates the stack instances in the specified accounts and Regions,
    #   while leaving all other stack instances with their existing stack
    #   instance status.
    #
    # @option params [Array<String>] :regions
    #   The Regions in which to update associated stack instances. If you
    #   specify Regions, you must also specify accounts in which to update
    #   stack set instances.
    #
    #   To update *all* the stack instances associated with this stack set, do
    #   not specify the `Accounts` or `Regions` properties.
    #
    #   If the stack set update includes changes to the template (that is, if
    #   the `TemplateBody` or `TemplateURL` properties are specified), or the
    #   `Parameters` property, AWS CloudFormation marks all stack instances
    #   with a status of `OUTDATED` prior to updating the stack instances in
    #   the specified accounts and Regions. If the stack set update does not
    #   include changes to the template or parameters, AWS CloudFormation
    #   updates the stack instances in the specified accounts and Regions,
    #   while leaving all other stack instances with their existing stack
    #   instance status.
    #
    # @return [Types::UpdateStackSetOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateStackSetOutput#operation_id #operation_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_stack_set({
    #     stack_set_name: "StackSetName", # required
    #     description: "Description",
    #     template_body: "TemplateBody",
    #     template_url: "TemplateURL",
    #     use_previous_template: false,
    #     parameters: [
    #       {
    #         parameter_key: "ParameterKey",
    #         parameter_value: "ParameterValue",
    #         use_previous_value: false,
    #         resolved_value: "ParameterValue",
    #       },
    #     ],
    #     capabilities: ["CAPABILITY_IAM"], # accepts CAPABILITY_IAM, CAPABILITY_NAMED_IAM, CAPABILITY_AUTO_EXPAND
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     operation_preferences: {
    #       region_order: ["Region"],
    #       failure_tolerance_count: 1,
    #       failure_tolerance_percentage: 1,
    #       max_concurrent_count: 1,
    #       max_concurrent_percentage: 1,
    #     },
    #     administration_role_arn: "RoleARN",
    #     execution_role_name: "ExecutionRoleName",
    #     deployment_targets: {
    #       accounts: ["Account"],
    #       organizational_unit_ids: ["OrganizationalUnitId"],
    #     },
    #     permission_model: "SERVICE_MANAGED", # accepts SERVICE_MANAGED, SELF_MANAGED
    #     auto_deployment: {
    #       enabled: false,
    #       retain_stacks_on_account_removal: false,
    #     },
    #     operation_id: "ClientRequestToken",
    #     accounts: ["Account"],
    #     regions: ["Region"],
    #   })
    #
    # @example Response structure
    #
    #   resp.operation_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/UpdateStackSet AWS API Documentation
    #
    # @overload update_stack_set(params = {})
    # @param [Hash] params ({})
    def update_stack_set(params = {}, options = {})
      req = build_request(:update_stack_set, params)
      req.send_request(options)
    end

    # Updates termination protection for the specified stack. If a user
    # attempts to delete a stack with termination protection enabled, the
    # operation fails and the stack remains unchanged. For more information,
    # see [Protecting a Stack From Being Deleted][1] in the *AWS
    # CloudFormation User Guide*.
    #
    # For [nested stacks][2], termination protection is set on the root
    # stack and cannot be changed directly on the nested stack.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-protect-stacks.html
    # [2]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-nested-stacks.html
    #
    # @option params [required, Boolean] :enable_termination_protection
    #   Whether to enable termination protection on the specified stack.
    #
    # @option params [required, String] :stack_name
    #   The name or unique ID of the stack for which you want to set
    #   termination protection.
    #
    # @return [Types::UpdateTerminationProtectionOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateTerminationProtectionOutput#stack_id #stack_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_termination_protection({
    #     enable_termination_protection: false, # required
    #     stack_name: "StackNameOrId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.stack_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/UpdateTerminationProtection AWS API Documentation
    #
    # @overload update_termination_protection(params = {})
    # @param [Hash] params ({})
    def update_termination_protection(params = {}, options = {})
      req = build_request(:update_termination_protection, params)
      req.send_request(options)
    end

    # Validates a specified template. AWS CloudFormation first checks if the
    # template is valid JSON. If it isn't, AWS CloudFormation checks if the
    # template is valid YAML. If both these checks fail, AWS CloudFormation
    # returns a template validation error.
    #
    # @option params [String] :template_body
    #   Structure containing the template body with a minimum length of 1 byte
    #   and a maximum length of 51,200 bytes. For more information, go to
    #   [Template Anatomy][1] in the AWS CloudFormation User Guide.
    #
    #   Conditional: You must pass `TemplateURL` or `TemplateBody`. If both
    #   are passed, only `TemplateBody` is used.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html
    #
    # @option params [String] :template_url
    #   Location of file containing the template body. The URL must point to a
    #   template (max size: 460,800 bytes) that is located in an Amazon S3
    #   bucket. For more information, go to [Template Anatomy][1] in the AWS
    #   CloudFormation User Guide.
    #
    #   Conditional: You must pass `TemplateURL` or `TemplateBody`. If both
    #   are passed, only `TemplateBody` is used.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html
    #
    # @return [Types::ValidateTemplateOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ValidateTemplateOutput#parameters #parameters} => Array&lt;Types::TemplateParameter&gt;
    #   * {Types::ValidateTemplateOutput#description #description} => String
    #   * {Types::ValidateTemplateOutput#capabilities #capabilities} => Array&lt;String&gt;
    #   * {Types::ValidateTemplateOutput#capabilities_reason #capabilities_reason} => String
    #   * {Types::ValidateTemplateOutput#declared_transforms #declared_transforms} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.validate_template({
    #     template_body: "TemplateBody",
    #     template_url: "TemplateURL",
    #   })
    #
    # @example Response structure
    #
    #   resp.parameters #=> Array
    #   resp.parameters[0].parameter_key #=> String
    #   resp.parameters[0].default_value #=> String
    #   resp.parameters[0].no_echo #=> Boolean
    #   resp.parameters[0].description #=> String
    #   resp.description #=> String
    #   resp.capabilities #=> Array
    #   resp.capabilities[0] #=> String, one of "CAPABILITY_IAM", "CAPABILITY_NAMED_IAM", "CAPABILITY_AUTO_EXPAND"
    #   resp.capabilities_reason #=> String
    #   resp.declared_transforms #=> Array
    #   resp.declared_transforms[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/ValidateTemplate AWS API Documentation
    #
    # @overload validate_template(params = {})
    # @param [Hash] params ({})
    def validate_template(params = {}, options = {})
      req = build_request(:validate_template, params)
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
      context[:gem_name] = 'aws-sdk-cloudformation'
      context[:gem_version] = '1.44.0'
      Seahorse::Client::Request.new(handlers, context)
    end

    # Polls an API operation until a resource enters a desired state.
    #
    # ## Basic Usage
    #
    # A waiter will call an API operation until:
    #
    # * It is successful
    # * It enters a terminal state
    # * It makes the maximum number of attempts
    #
    # In between attempts, the waiter will sleep.
    #
    #     # polls in a loop, sleeping between attempts
    #     client.wait_until(waiter_name, params)
    #
    # ## Configuration
    #
    # You can configure the maximum number of polling attempts, and the
    # delay (in seconds) between each polling attempt. You can pass
    # configuration as the final arguments hash.
    #
    #     # poll for ~25 seconds
    #     client.wait_until(waiter_name, params, {
    #       max_attempts: 5,
    #       delay: 5,
    #     })
    #
    # ## Callbacks
    #
    # You can be notified before each polling attempt and before each
    # delay. If you throw `:success` or `:failure` from these callbacks,
    # it will terminate the waiter.
    #
    #     started_at = Time.now
    #     client.wait_until(waiter_name, params, {
    #
    #       # disable max attempts
    #       max_attempts: nil,
    #
    #       # poll for 1 hour, instead of a number of attempts
    #       before_wait: -> (attempts, response) do
    #         throw :failure if Time.now - started_at > 3600
    #       end
    #     })
    #
    # ## Handling Errors
    #
    # When a waiter is unsuccessful, it will raise an error.
    # All of the failure errors extend from
    # {Aws::Waiters::Errors::WaiterFailed}.
    #
    #     begin
    #       client.wait_until(...)
    #     rescue Aws::Waiters::Errors::WaiterFailed
    #       # resource did not enter the desired state in time
    #     end
    #
    # ## Valid Waiters
    #
    # The following table lists the valid waiter names, the operations they call,
    # and the default `:delay` and `:max_attempts` values.
    #
    # | waiter_name                | params                              | :delay   | :max_attempts |
    # | -------------------------- | ----------------------------------- | -------- | ------------- |
    # | change_set_create_complete | {Client#describe_change_set}        | 30       | 120           |
    # | stack_create_complete      | {Client#describe_stacks}            | 30       | 120           |
    # | stack_delete_complete      | {Client#describe_stacks}            | 30       | 120           |
    # | stack_exists               | {Client#describe_stacks}            | 5        | 20            |
    # | stack_import_complete      | {Client#describe_stacks}            | 30       | 120           |
    # | stack_rollback_complete    | {Client#describe_stacks}            | 30       | 120           |
    # | stack_update_complete      | {Client#describe_stacks}            | 30       | 120           |
    # | type_registration_complete | {Client#describe_type_registration} | 30       | 120           |
    #
    # @raise [Errors::FailureStateError] Raised when the waiter terminates
    #   because the waiter has entered a state that it will not transition
    #   out of, preventing success.
    #
    # @raise [Errors::TooManyAttemptsError] Raised when the configured
    #   maximum number of attempts have been made, and the waiter is not
    #   yet successful.
    #
    # @raise [Errors::UnexpectedError] Raised when an error is encounted
    #   while polling for a resource that is not expected.
    #
    # @raise [Errors::NoSuchWaiterError] Raised when you request to wait
    #   for an unknown state.
    #
    # @return [Boolean] Returns `true` if the waiter was successful.
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

    # @api private
    # @deprecated
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
      {
        change_set_create_complete: Waiters::ChangeSetCreateComplete,
        stack_create_complete: Waiters::StackCreateComplete,
        stack_delete_complete: Waiters::StackDeleteComplete,
        stack_exists: Waiters::StackExists,
        stack_import_complete: Waiters::StackImportComplete,
        stack_rollback_complete: Waiters::StackRollbackComplete,
        stack_update_complete: Waiters::StackUpdateComplete,
        type_registration_complete: Waiters::TypeRegistrationComplete
      }
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
