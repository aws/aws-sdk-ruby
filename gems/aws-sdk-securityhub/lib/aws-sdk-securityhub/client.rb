# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
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
require 'aws-sdk-core/plugins/checksum_algorithm.rb'
require 'aws-sdk-core/plugins/defaults_mode.rb'
require 'aws-sdk-core/plugins/recursion_detection.rb'
require 'aws-sdk-core/plugins/sign.rb'
require 'aws-sdk-core/plugins/protocols/rest_json.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:securityhub)

module Aws::SecurityHub
  # An API client for SecurityHub.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::SecurityHub::Client.new(
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

    @identifier = :securityhub

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
    add_plugin(Aws::Plugins::ChecksumAlgorithm)
    add_plugin(Aws::Plugins::DefaultsMode)
    add_plugin(Aws::Plugins::RecursionDetection)
    add_plugin(Aws::Plugins::Sign)
    add_plugin(Aws::Plugins::Protocols::RestJson)
    add_plugin(Aws::SecurityHub::Plugins::Endpoints)

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
    #       enable retries and extended timeouts. Instance profile credential
    #       fetching can be disabled by setting ENV['AWS_EC2_METADATA_DISABLED']
    #       to true.
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
    #   @option options [String] :defaults_mode ("legacy")
    #     See {Aws::DefaultsModeConfiguration} for a list of the
    #     accepted modes and the configuration defaults that are included.
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
    #   @option options [Aws::TokenProvider] :token_provider
    #     A Bearer Token Provider. This can be an instance of any one of the
    #     following classes:
    #
    #     * `Aws::StaticTokenProvider` - Used for configuring static, non-refreshing
    #       tokens.
    #
    #     * `Aws::SSOTokenProvider` - Used for loading tokens from AWS SSO using an
    #       access token generated from `aws login`.
    #
    #     When `:token_provider` is not configured directly, the `Aws::TokenProviderChain`
    #     will be used to search for tokens configured for your profile in shared configuration files.
    #
    #   @option options [Boolean] :use_dualstack_endpoint
    #     When set to `true`, dualstack enabled endpoints (with `.aws` TLD)
    #     will be used if available.
    #
    #   @option options [Boolean] :use_fips_endpoint
    #     When set to `true`, fips compatible endpoints will be used if available.
    #     When a `fips` region is used, the region is normalized and this config
    #     is set to `true`.
    #
    #   @option options [Boolean] :validate_params (true)
    #     When `true`, request parameters are validated before
    #     sending the request.
    #
    #   @option options [Aws::SecurityHub::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to `Aws::SecurityHub::EndpointParameters`
    #
    #   @option options [URI::HTTP,String] :http_proxy A proxy to send
    #     requests through.  Formatted like 'http://proxy.com:123'.
    #
    #   @option options [Float] :http_open_timeout (15) The number of
    #     seconds to wait when opening a HTTP session before raising a
    #     `Timeout::Error`.
    #
    #   @option options [Float] :http_read_timeout (60) The default
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
    #   @option options [Float] :ssl_timeout (nil) Sets the SSL timeout
    #     in seconds.
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

    # Accepts the invitation to be a member account and be monitored by the
    # Security Hub administrator account that the invitation was sent from.
    #
    # This operation is only used by member accounts that are not added
    # through Organizations.
    #
    # When the member account accepts the invitation, permission is granted
    # to the administrator account to view findings generated in the member
    # account.
    #
    # @option params [required, String] :administrator_id
    #   The account ID of the Security Hub administrator account that sent the
    #   invitation.
    #
    # @option params [required, String] :invitation_id
    #   The identifier of the invitation sent from the Security Hub
    #   administrator account.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.accept_administrator_invitation({
    #     administrator_id: "NonEmptyString", # required
    #     invitation_id: "NonEmptyString", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AcceptAdministratorInvitation AWS API Documentation
    #
    # @overload accept_administrator_invitation(params = {})
    # @param [Hash] params ({})
    def accept_administrator_invitation(params = {}, options = {})
      req = build_request(:accept_administrator_invitation, params)
      req.send_request(options)
    end

    # This method is deprecated. Instead, use
    # `AcceptAdministratorInvitation`.
    #
    # The Security Hub console continues to use `AcceptInvitation`. It will
    # eventually change to use `AcceptAdministratorInvitation`. Any IAM
    # policies that specifically control access to this function must
    # continue to use `AcceptInvitation`. You should also add
    # `AcceptAdministratorInvitation` to your policies to ensure that the
    # correct permissions are in place after the console begins to use
    # `AcceptAdministratorInvitation`.
    #
    # Accepts the invitation to be a member account and be monitored by the
    # Security Hub administrator account that the invitation was sent from.
    #
    # This operation is only used by member accounts that are not added
    # through Organizations.
    #
    # When the member account accepts the invitation, permission is granted
    # to the administrator account to view findings generated in the member
    # account.
    #
    # @option params [required, String] :master_id
    #   The account ID of the Security Hub administrator account that sent the
    #   invitation.
    #
    # @option params [required, String] :invitation_id
    #   The identifier of the invitation sent from the Security Hub
    #   administrator account.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.accept_invitation({
    #     master_id: "NonEmptyString", # required
    #     invitation_id: "NonEmptyString", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AcceptInvitation AWS API Documentation
    #
    # @overload accept_invitation(params = {})
    # @param [Hash] params ({})
    def accept_invitation(params = {}, options = {})
      req = build_request(:accept_invitation, params)
      req.send_request(options)
    end

    # Disables the standards specified by the provided
    # `StandardsSubscriptionArns`.
    #
    # For more information, see [Security Standards][1] section of the
    # *Security Hub User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/securityhub/latest/userguide/securityhub-standards.html
    #
    # @option params [required, Array<String>] :standards_subscription_arns
    #   The ARNs of the standards subscriptions to disable.
    #
    # @return [Types::BatchDisableStandardsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchDisableStandardsResponse#standards_subscriptions #standards_subscriptions} => Array&lt;Types::StandardsSubscription&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_disable_standards({
    #     standards_subscription_arns: ["NonEmptyString"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.standards_subscriptions #=> Array
    #   resp.standards_subscriptions[0].standards_subscription_arn #=> String
    #   resp.standards_subscriptions[0].standards_arn #=> String
    #   resp.standards_subscriptions[0].standards_input #=> Hash
    #   resp.standards_subscriptions[0].standards_input["NonEmptyString"] #=> String
    #   resp.standards_subscriptions[0].standards_status #=> String, one of "PENDING", "READY", "FAILED", "DELETING", "INCOMPLETE"
    #   resp.standards_subscriptions[0].standards_status_reason.status_reason_code #=> String, one of "NO_AVAILABLE_CONFIGURATION_RECORDER", "INTERNAL_ERROR"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/BatchDisableStandards AWS API Documentation
    #
    # @overload batch_disable_standards(params = {})
    # @param [Hash] params ({})
    def batch_disable_standards(params = {}, options = {})
      req = build_request(:batch_disable_standards, params)
      req.send_request(options)
    end

    # Enables the standards specified by the provided `StandardsArn`. To
    # obtain the ARN for a standard, use the `DescribeStandards` operation.
    #
    # For more information, see the [Security Standards][1] section of the
    # *Security Hub User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/securityhub/latest/userguide/securityhub-standards.html
    #
    # @option params [required, Array<Types::StandardsSubscriptionRequest>] :standards_subscription_requests
    #   The list of standards checks to enable.
    #
    # @return [Types::BatchEnableStandardsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchEnableStandardsResponse#standards_subscriptions #standards_subscriptions} => Array&lt;Types::StandardsSubscription&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_enable_standards({
    #     standards_subscription_requests: [ # required
    #       {
    #         standards_arn: "NonEmptyString", # required
    #         standards_input: {
    #           "NonEmptyString" => "NonEmptyString",
    #         },
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.standards_subscriptions #=> Array
    #   resp.standards_subscriptions[0].standards_subscription_arn #=> String
    #   resp.standards_subscriptions[0].standards_arn #=> String
    #   resp.standards_subscriptions[0].standards_input #=> Hash
    #   resp.standards_subscriptions[0].standards_input["NonEmptyString"] #=> String
    #   resp.standards_subscriptions[0].standards_status #=> String, one of "PENDING", "READY", "FAILED", "DELETING", "INCOMPLETE"
    #   resp.standards_subscriptions[0].standards_status_reason.status_reason_code #=> String, one of "NO_AVAILABLE_CONFIGURATION_RECORDER", "INTERNAL_ERROR"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/BatchEnableStandards AWS API Documentation
    #
    # @overload batch_enable_standards(params = {})
    # @param [Hash] params ({})
    def batch_enable_standards(params = {}, options = {})
      req = build_request(:batch_enable_standards, params)
      req.send_request(options)
    end

    # Imports security findings generated by a finding provider into
    # Security Hub. This action is requested by the finding provider to
    # import its findings into Security Hub.
    #
    # `BatchImportFindings` must be called by one of the following:
    #
    # * The Amazon Web Services account that is associated with a finding if
    #   you are using the [default product ARN][1] or are a partner sending
    #   findings from within a customer's Amazon Web Services account. In
    #   these cases, the identifier of the account that you are calling
    #   `BatchImportFindings` from needs to be the same as the
    #   `AwsAccountId` attribute for the finding.
    #
    # * An Amazon Web Services account that Security Hub has allow-listed
    #   for an official partner integration. In this case, you can call
    #   `BatchImportFindings` from the allow-listed account and send
    #   findings from different customer accounts in the same batch.
    #
    # The maximum allowed size for a finding is 240 Kb. An error is returned
    # for any finding larger than 240 Kb.
    #
    # After a finding is created, `BatchImportFindings` cannot be used to
    # update the following finding fields and objects, which Security Hub
    # customers use to manage their investigation workflow.
    #
    # * `Note`
    #
    # * `UserDefinedFields`
    #
    # * `VerificationState`
    #
    # * `Workflow`
    #
    # Finding providers also should not use `BatchImportFindings` to update
    # the following attributes.
    #
    # * `Confidence`
    #
    # * `Criticality`
    #
    # * `RelatedFindings`
    #
    # * `Severity`
    #
    # * `Types`
    #
    # Instead, finding providers use `FindingProviderFields` to provide
    # values for these attributes.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/securityhub/latest/userguide/securityhub-custom-providers.html#securityhub-custom-providers-bfi-reqs
    #
    # @option params [required, Array<Types::AwsSecurityFinding>] :findings
    #   A list of findings to import. To successfully import a finding, it
    #   must follow the [Amazon Web Services Security Finding Format][1].
    #   Maximum of 100 findings per request.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/securityhub/latest/userguide/securityhub-findings-format.html
    #
    # @return [Types::BatchImportFindingsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchImportFindingsResponse#failed_count #failed_count} => Integer
    #   * {Types::BatchImportFindingsResponse#success_count #success_count} => Integer
    #   * {Types::BatchImportFindingsResponse#failed_findings #failed_findings} => Array&lt;Types::ImportFindingsError&gt;
    #
    # @example Response structure
    #
    #   resp.failed_count #=> Integer
    #   resp.success_count #=> Integer
    #   resp.failed_findings #=> Array
    #   resp.failed_findings[0].id #=> String
    #   resp.failed_findings[0].error_code #=> String
    #   resp.failed_findings[0].error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/BatchImportFindings AWS API Documentation
    #
    # @overload batch_import_findings(params = {})
    # @param [Hash] params ({})
    def batch_import_findings(params = {}, options = {})
      req = build_request(:batch_import_findings, params)
      req.send_request(options)
    end

    # Used by Security Hub customers to update information about their
    # investigation into a finding. Requested by administrator accounts or
    # member accounts. Administrator accounts can update findings for their
    # account and their member accounts. Member accounts can update findings
    # for their account.
    #
    # Updates from `BatchUpdateFindings` do not affect the value of
    # `UpdatedAt` for a finding.
    #
    # Administrator and member accounts can use `BatchUpdateFindings` to
    # update the following finding fields and objects.
    #
    # * `Confidence`
    #
    # * `Criticality`
    #
    # * `Note`
    #
    # * `RelatedFindings`
    #
    # * `Severity`
    #
    # * `Types`
    #
    # * `UserDefinedFields`
    #
    # * `VerificationState`
    #
    # * `Workflow`
    #
    # You can configure IAM policies to restrict access to fields and field
    # values. For example, you might not want member accounts to be able to
    # suppress findings or change the finding severity. See [Configuring
    # access to BatchUpdateFindings][1] in the *Security Hub User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/securityhub/latest/userguide/finding-update-batchupdatefindings.html#batchupdatefindings-configure-access
    #
    # @option params [required, Array<Types::AwsSecurityFindingIdentifier>] :finding_identifiers
    #   The list of findings to update. `BatchUpdateFindings` can be used to
    #   update up to 100 findings at a time.
    #
    #   For each finding, the list provides the finding identifier and the ARN
    #   of the finding provider.
    #
    # @option params [Types::NoteUpdate] :note
    #   The updated note.
    #
    # @option params [Types::SeverityUpdate] :severity
    #   Used to update the finding severity.
    #
    # @option params [String] :verification_state
    #   Indicates the veracity of a finding.
    #
    #   The available values for `VerificationState` are as follows.
    #
    #   * `UNKNOWN` – The default disposition of a security finding
    #
    #   * `TRUE_POSITIVE` – The security finding is confirmed
    #
    #   * `FALSE_POSITIVE` – The security finding was determined to be a false
    #     alarm
    #
    #   * `BENIGN_POSITIVE` – A special case of `TRUE_POSITIVE` where the
    #     finding doesn't pose any threat, is expected, or both
    #
    # @option params [Integer] :confidence
    #   The updated value for the finding confidence. Confidence is defined as
    #   the likelihood that a finding accurately identifies the behavior or
    #   issue that it was intended to identify.
    #
    #   Confidence is scored on a 0-100 basis using a ratio scale, where 0
    #   means zero percent confidence and 100 means 100 percent confidence.
    #
    # @option params [Integer] :criticality
    #   The updated value for the level of importance assigned to the
    #   resources associated with the findings.
    #
    #   A score of 0 means that the underlying resources have no criticality,
    #   and a score of 100 is reserved for the most critical resources.
    #
    # @option params [Array<String>] :types
    #   One or more finding types in the format of
    #   namespace/category/classifier that classify a finding.
    #
    #   Valid namespace values are as follows.
    #
    #   * Software and Configuration Checks
    #
    #   * TTPs
    #
    #   * Effects
    #
    #   * Unusual Behaviors
    #
    #   * Sensitive Data Identifications
    #
    # @option params [Hash<String,String>] :user_defined_fields
    #   A list of name/value string pairs associated with the finding. These
    #   are custom, user-defined fields added to a finding.
    #
    # @option params [Types::WorkflowUpdate] :workflow
    #   Used to update the workflow status of a finding.
    #
    #   The workflow status indicates the progress of the investigation into
    #   the finding.
    #
    # @option params [Array<Types::RelatedFinding>] :related_findings
    #   A list of findings that are related to the updated findings.
    #
    # @return [Types::BatchUpdateFindingsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchUpdateFindingsResponse#processed_findings #processed_findings} => Array&lt;Types::AwsSecurityFindingIdentifier&gt;
    #   * {Types::BatchUpdateFindingsResponse#unprocessed_findings #unprocessed_findings} => Array&lt;Types::BatchUpdateFindingsUnprocessedFinding&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_update_findings({
    #     finding_identifiers: [ # required
    #       {
    #         id: "NonEmptyString", # required
    #         product_arn: "NonEmptyString", # required
    #       },
    #     ],
    #     note: {
    #       text: "NonEmptyString", # required
    #       updated_by: "NonEmptyString", # required
    #     },
    #     severity: {
    #       normalized: 1,
    #       product: 1.0,
    #       label: "INFORMATIONAL", # accepts INFORMATIONAL, LOW, MEDIUM, HIGH, CRITICAL
    #     },
    #     verification_state: "UNKNOWN", # accepts UNKNOWN, TRUE_POSITIVE, FALSE_POSITIVE, BENIGN_POSITIVE
    #     confidence: 1,
    #     criticality: 1,
    #     types: ["NonEmptyString"],
    #     user_defined_fields: {
    #       "NonEmptyString" => "NonEmptyString",
    #     },
    #     workflow: {
    #       status: "NEW", # accepts NEW, NOTIFIED, RESOLVED, SUPPRESSED
    #     },
    #     related_findings: [
    #       {
    #         product_arn: "NonEmptyString", # required
    #         id: "NonEmptyString", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.processed_findings #=> Array
    #   resp.processed_findings[0].id #=> String
    #   resp.processed_findings[0].product_arn #=> String
    #   resp.unprocessed_findings #=> Array
    #   resp.unprocessed_findings[0].finding_identifier.id #=> String
    #   resp.unprocessed_findings[0].finding_identifier.product_arn #=> String
    #   resp.unprocessed_findings[0].error_code #=> String
    #   resp.unprocessed_findings[0].error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/BatchUpdateFindings AWS API Documentation
    #
    # @overload batch_update_findings(params = {})
    # @param [Hash] params ({})
    def batch_update_findings(params = {}, options = {})
      req = build_request(:batch_update_findings, params)
      req.send_request(options)
    end

    # Creates a custom action target in Security Hub.
    #
    # You can use custom actions on findings and insights in Security Hub to
    # trigger target actions in Amazon CloudWatch Events.
    #
    # @option params [required, String] :name
    #   The name of the custom action target. Can contain up to 20 characters.
    #
    # @option params [required, String] :description
    #   The description for the custom action target.
    #
    # @option params [required, String] :id
    #   The ID for the custom action target. Can contain up to 20 alphanumeric
    #   characters.
    #
    # @return [Types::CreateActionTargetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateActionTargetResponse#action_target_arn #action_target_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_action_target({
    #     name: "NonEmptyString", # required
    #     description: "NonEmptyString", # required
    #     id: "NonEmptyString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.action_target_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/CreateActionTarget AWS API Documentation
    #
    # @overload create_action_target(params = {})
    # @param [Hash] params ({})
    def create_action_target(params = {}, options = {})
      req = build_request(:create_action_target, params)
      req.send_request(options)
    end

    # Used to enable finding aggregation. Must be called from the
    # aggregation Region.
    #
    # For more details about cross-Region replication, see [Configuring
    # finding aggregation][1] in the *Security Hub User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/securityhub/latest/userguide/finding-aggregation.html
    #
    # @option params [required, String] :region_linking_mode
    #   Indicates whether to aggregate findings from all of the available
    #   Regions in the current partition. Also determines whether to
    #   automatically aggregate findings from new Regions as Security Hub
    #   supports them and you opt into them.
    #
    #   The selected option also determines how to use the Regions provided in
    #   the Regions list.
    #
    #   The options are as follows:
    #
    #   * `ALL_REGIONS` - Indicates to aggregate findings from all of the
    #     Regions where Security Hub is enabled. When you choose this option,
    #     Security Hub also automatically aggregates findings from new Regions
    #     as Security Hub supports them and you opt into them.
    #
    #   * `ALL_REGIONS_EXCEPT_SPECIFIED` - Indicates to aggregate findings
    #     from all of the Regions where Security Hub is enabled, except for
    #     the Regions listed in the `Regions` parameter. When you choose this
    #     option, Security Hub also automatically aggregates findings from new
    #     Regions as Security Hub supports them and you opt into them.
    #
    #   * `SPECIFIED_REGIONS` - Indicates to aggregate findings only from the
    #     Regions listed in the `Regions` parameter. Security Hub does not
    #     automatically aggregate findings from new Regions.
    #
    # @option params [Array<String>] :regions
    #   If `RegionLinkingMode` is `ALL_REGIONS_EXCEPT_SPECIFIED`, then this is
    #   a space-separated list of Regions that do not aggregate findings to
    #   the aggregation Region.
    #
    #   If `RegionLinkingMode` is `SPECIFIED_REGIONS`, then this is a
    #   space-separated list of Regions that do aggregate findings to the
    #   aggregation Region.
    #
    # @return [Types::CreateFindingAggregatorResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateFindingAggregatorResponse#finding_aggregator_arn #finding_aggregator_arn} => String
    #   * {Types::CreateFindingAggregatorResponse#finding_aggregation_region #finding_aggregation_region} => String
    #   * {Types::CreateFindingAggregatorResponse#region_linking_mode #region_linking_mode} => String
    #   * {Types::CreateFindingAggregatorResponse#regions #regions} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_finding_aggregator({
    #     region_linking_mode: "NonEmptyString", # required
    #     regions: ["NonEmptyString"],
    #   })
    #
    # @example Response structure
    #
    #   resp.finding_aggregator_arn #=> String
    #   resp.finding_aggregation_region #=> String
    #   resp.region_linking_mode #=> String
    #   resp.regions #=> Array
    #   resp.regions[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/CreateFindingAggregator AWS API Documentation
    #
    # @overload create_finding_aggregator(params = {})
    # @param [Hash] params ({})
    def create_finding_aggregator(params = {}, options = {})
      req = build_request(:create_finding_aggregator, params)
      req.send_request(options)
    end

    # Creates a custom insight in Security Hub. An insight is a
    # consolidation of findings that relate to a security issue that
    # requires attention or remediation.
    #
    # To group the related findings in the insight, use the
    # `GroupByAttribute`.
    #
    # @option params [required, String] :name
    #   The name of the custom insight to create.
    #
    # @option params [required, Types::AwsSecurityFindingFilters] :filters
    #   One or more attributes used to filter the findings included in the
    #   insight. The insight only includes findings that match the criteria
    #   defined in the filters.
    #
    # @option params [required, String] :group_by_attribute
    #   The attribute used to group the findings for the insight. The grouping
    #   attribute identifies the type of item that the insight applies to. For
    #   example, if an insight is grouped by resource identifier, then the
    #   insight produces a list of resource identifiers.
    #
    # @return [Types::CreateInsightResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateInsightResponse#insight_arn #insight_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_insight({
    #     name: "NonEmptyString", # required
    #     filters: { # required
    #       product_arn: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       aws_account_id: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       id: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       generator_id: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       region: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       type: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       first_observed_at: [
    #         {
    #           start: "NonEmptyString",
    #           end: "NonEmptyString",
    #           date_range: {
    #             value: 1,
    #             unit: "DAYS", # accepts DAYS
    #           },
    #         },
    #       ],
    #       last_observed_at: [
    #         {
    #           start: "NonEmptyString",
    #           end: "NonEmptyString",
    #           date_range: {
    #             value: 1,
    #             unit: "DAYS", # accepts DAYS
    #           },
    #         },
    #       ],
    #       created_at: [
    #         {
    #           start: "NonEmptyString",
    #           end: "NonEmptyString",
    #           date_range: {
    #             value: 1,
    #             unit: "DAYS", # accepts DAYS
    #           },
    #         },
    #       ],
    #       updated_at: [
    #         {
    #           start: "NonEmptyString",
    #           end: "NonEmptyString",
    #           date_range: {
    #             value: 1,
    #             unit: "DAYS", # accepts DAYS
    #           },
    #         },
    #       ],
    #       severity_product: [
    #         {
    #           gte: 1.0,
    #           lte: 1.0,
    #           eq: 1.0,
    #         },
    #       ],
    #       severity_normalized: [
    #         {
    #           gte: 1.0,
    #           lte: 1.0,
    #           eq: 1.0,
    #         },
    #       ],
    #       severity_label: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       confidence: [
    #         {
    #           gte: 1.0,
    #           lte: 1.0,
    #           eq: 1.0,
    #         },
    #       ],
    #       criticality: [
    #         {
    #           gte: 1.0,
    #           lte: 1.0,
    #           eq: 1.0,
    #         },
    #       ],
    #       title: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       description: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       recommendation_text: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       source_url: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       product_fields: [
    #         {
    #           key: "NonEmptyString",
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, NOT_EQUALS
    #         },
    #       ],
    #       product_name: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       company_name: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       user_defined_fields: [
    #         {
    #           key: "NonEmptyString",
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, NOT_EQUALS
    #         },
    #       ],
    #       malware_name: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       malware_type: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       malware_path: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       malware_state: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       network_direction: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       network_protocol: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       network_source_ip_v4: [
    #         {
    #           cidr: "NonEmptyString",
    #         },
    #       ],
    #       network_source_ip_v6: [
    #         {
    #           cidr: "NonEmptyString",
    #         },
    #       ],
    #       network_source_port: [
    #         {
    #           gte: 1.0,
    #           lte: 1.0,
    #           eq: 1.0,
    #         },
    #       ],
    #       network_source_domain: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       network_source_mac: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       network_destination_ip_v4: [
    #         {
    #           cidr: "NonEmptyString",
    #         },
    #       ],
    #       network_destination_ip_v6: [
    #         {
    #           cidr: "NonEmptyString",
    #         },
    #       ],
    #       network_destination_port: [
    #         {
    #           gte: 1.0,
    #           lte: 1.0,
    #           eq: 1.0,
    #         },
    #       ],
    #       network_destination_domain: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       process_name: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       process_path: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       process_pid: [
    #         {
    #           gte: 1.0,
    #           lte: 1.0,
    #           eq: 1.0,
    #         },
    #       ],
    #       process_parent_pid: [
    #         {
    #           gte: 1.0,
    #           lte: 1.0,
    #           eq: 1.0,
    #         },
    #       ],
    #       process_launched_at: [
    #         {
    #           start: "NonEmptyString",
    #           end: "NonEmptyString",
    #           date_range: {
    #             value: 1,
    #             unit: "DAYS", # accepts DAYS
    #           },
    #         },
    #       ],
    #       process_terminated_at: [
    #         {
    #           start: "NonEmptyString",
    #           end: "NonEmptyString",
    #           date_range: {
    #             value: 1,
    #             unit: "DAYS", # accepts DAYS
    #           },
    #         },
    #       ],
    #       threat_intel_indicator_type: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       threat_intel_indicator_value: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       threat_intel_indicator_category: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       threat_intel_indicator_last_observed_at: [
    #         {
    #           start: "NonEmptyString",
    #           end: "NonEmptyString",
    #           date_range: {
    #             value: 1,
    #             unit: "DAYS", # accepts DAYS
    #           },
    #         },
    #       ],
    #       threat_intel_indicator_source: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       threat_intel_indicator_source_url: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       resource_type: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       resource_id: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       resource_partition: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       resource_region: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       resource_tags: [
    #         {
    #           key: "NonEmptyString",
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, NOT_EQUALS
    #         },
    #       ],
    #       resource_aws_ec2_instance_type: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       resource_aws_ec2_instance_image_id: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       resource_aws_ec2_instance_ip_v4_addresses: [
    #         {
    #           cidr: "NonEmptyString",
    #         },
    #       ],
    #       resource_aws_ec2_instance_ip_v6_addresses: [
    #         {
    #           cidr: "NonEmptyString",
    #         },
    #       ],
    #       resource_aws_ec2_instance_key_name: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       resource_aws_ec2_instance_iam_instance_profile_arn: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       resource_aws_ec2_instance_vpc_id: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       resource_aws_ec2_instance_subnet_id: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       resource_aws_ec2_instance_launched_at: [
    #         {
    #           start: "NonEmptyString",
    #           end: "NonEmptyString",
    #           date_range: {
    #             value: 1,
    #             unit: "DAYS", # accepts DAYS
    #           },
    #         },
    #       ],
    #       resource_aws_s3_bucket_owner_id: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       resource_aws_s3_bucket_owner_name: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       resource_aws_iam_access_key_user_name: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       resource_aws_iam_access_key_principal_name: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       resource_aws_iam_access_key_status: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       resource_aws_iam_access_key_created_at: [
    #         {
    #           start: "NonEmptyString",
    #           end: "NonEmptyString",
    #           date_range: {
    #             value: 1,
    #             unit: "DAYS", # accepts DAYS
    #           },
    #         },
    #       ],
    #       resource_aws_iam_user_user_name: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       resource_container_name: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       resource_container_image_id: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       resource_container_image_name: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       resource_container_launched_at: [
    #         {
    #           start: "NonEmptyString",
    #           end: "NonEmptyString",
    #           date_range: {
    #             value: 1,
    #             unit: "DAYS", # accepts DAYS
    #           },
    #         },
    #       ],
    #       resource_details_other: [
    #         {
    #           key: "NonEmptyString",
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, NOT_EQUALS
    #         },
    #       ],
    #       compliance_status: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       verification_state: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       workflow_state: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       workflow_status: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       record_state: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       related_findings_product_arn: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       related_findings_id: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       note_text: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       note_updated_at: [
    #         {
    #           start: "NonEmptyString",
    #           end: "NonEmptyString",
    #           date_range: {
    #             value: 1,
    #             unit: "DAYS", # accepts DAYS
    #           },
    #         },
    #       ],
    #       note_updated_by: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       keyword: [
    #         {
    #           value: "NonEmptyString",
    #         },
    #       ],
    #       finding_provider_fields_confidence: [
    #         {
    #           gte: 1.0,
    #           lte: 1.0,
    #           eq: 1.0,
    #         },
    #       ],
    #       finding_provider_fields_criticality: [
    #         {
    #           gte: 1.0,
    #           lte: 1.0,
    #           eq: 1.0,
    #         },
    #       ],
    #       finding_provider_fields_related_findings_id: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       finding_provider_fields_related_findings_product_arn: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       finding_provider_fields_severity_label: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       finding_provider_fields_severity_original: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       finding_provider_fields_types: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       sample: [
    #         {
    #           value: false,
    #         },
    #       ],
    #     },
    #     group_by_attribute: "NonEmptyString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.insight_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/CreateInsight AWS API Documentation
    #
    # @overload create_insight(params = {})
    # @param [Hash] params ({})
    def create_insight(params = {}, options = {})
      req = build_request(:create_insight, params)
      req.send_request(options)
    end

    # Creates a member association in Security Hub between the specified
    # accounts and the account used to make the request, which is the
    # administrator account. If you are integrated with Organizations, then
    # the administrator account is designated by the organization management
    # account.
    #
    # `CreateMembers` is always used to add accounts that are not
    # organization members.
    #
    # For accounts that are managed using Organizations, `CreateMembers` is
    # only used in the following cases:
    #
    # * Security Hub is not configured to automatically add new organization
    #   accounts.
    #
    # * The account was disassociated or deleted in Security Hub.
    #
    # This action can only be used by an account that has Security Hub
    # enabled. To enable Security Hub, you can use the `EnableSecurityHub`
    # operation.
    #
    # For accounts that are not organization members, you create the account
    # association and then send an invitation to the member account. To send
    # the invitation, you use the `InviteMembers` operation. If the account
    # owner accepts the invitation, the account becomes a member account in
    # Security Hub.
    #
    # Accounts that are managed using Organizations do not receive an
    # invitation. They automatically become a member account in Security
    # Hub.
    #
    # * If the organization account does not have Security Hub enabled, then
    #   Security Hub and the default standards are automatically enabled.
    #   Note that Security Hub cannot be enabled automatically for the
    #   organization management account. The organization management account
    #   must enable Security Hub before the administrator account enables it
    #   as a member account.
    #
    # * For organization accounts that already have Security Hub enabled,
    #   Security Hub does not make any other changes to those accounts. It
    #   does not change their enabled standards or controls.
    #
    # A permissions policy is added that permits the administrator account
    # to view the findings generated in the member account.
    #
    # To remove the association between the administrator and member
    # accounts, use the `DisassociateFromMasterAccount` or
    # `DisassociateMembers` operation.
    #
    # @option params [required, Array<Types::AccountDetails>] :account_details
    #   The list of accounts to associate with the Security Hub administrator
    #   account. For each account, the list includes the account ID and
    #   optionally the email address.
    #
    # @return [Types::CreateMembersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateMembersResponse#unprocessed_accounts #unprocessed_accounts} => Array&lt;Types::Result&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_members({
    #     account_details: [ # required
    #       {
    #         account_id: "AccountId", # required
    #         email: "NonEmptyString",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.unprocessed_accounts #=> Array
    #   resp.unprocessed_accounts[0].account_id #=> String
    #   resp.unprocessed_accounts[0].processing_result #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/CreateMembers AWS API Documentation
    #
    # @overload create_members(params = {})
    # @param [Hash] params ({})
    def create_members(params = {}, options = {})
      req = build_request(:create_members, params)
      req.send_request(options)
    end

    # Declines invitations to become a member account.
    #
    # This operation is only used by accounts that are not part of an
    # organization. Organization accounts do not receive invitations.
    #
    # @option params [required, Array<String>] :account_ids
    #   The list of account IDs for the accounts from which to decline the
    #   invitations to Security Hub.
    #
    # @return [Types::DeclineInvitationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeclineInvitationsResponse#unprocessed_accounts #unprocessed_accounts} => Array&lt;Types::Result&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.decline_invitations({
    #     account_ids: ["NonEmptyString"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.unprocessed_accounts #=> Array
    #   resp.unprocessed_accounts[0].account_id #=> String
    #   resp.unprocessed_accounts[0].processing_result #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/DeclineInvitations AWS API Documentation
    #
    # @overload decline_invitations(params = {})
    # @param [Hash] params ({})
    def decline_invitations(params = {}, options = {})
      req = build_request(:decline_invitations, params)
      req.send_request(options)
    end

    # Deletes a custom action target from Security Hub.
    #
    # Deleting a custom action target does not affect any findings or
    # insights that were already sent to Amazon CloudWatch Events using the
    # custom action.
    #
    # @option params [required, String] :action_target_arn
    #   The ARN of the custom action target to delete.
    #
    # @return [Types::DeleteActionTargetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteActionTargetResponse#action_target_arn #action_target_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_action_target({
    #     action_target_arn: "NonEmptyString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.action_target_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/DeleteActionTarget AWS API Documentation
    #
    # @overload delete_action_target(params = {})
    # @param [Hash] params ({})
    def delete_action_target(params = {}, options = {})
      req = build_request(:delete_action_target, params)
      req.send_request(options)
    end

    # Deletes a finding aggregator. When you delete the finding aggregator,
    # you stop finding aggregation.
    #
    # When you stop finding aggregation, findings that were already
    # aggregated to the aggregation Region are still visible from the
    # aggregation Region. New findings and finding updates are not
    # aggregated.
    #
    # @option params [required, String] :finding_aggregator_arn
    #   The ARN of the finding aggregator to delete. To obtain the ARN, use
    #   `ListFindingAggregators`.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_finding_aggregator({
    #     finding_aggregator_arn: "NonEmptyString", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/DeleteFindingAggregator AWS API Documentation
    #
    # @overload delete_finding_aggregator(params = {})
    # @param [Hash] params ({})
    def delete_finding_aggregator(params = {}, options = {})
      req = build_request(:delete_finding_aggregator, params)
      req.send_request(options)
    end

    # Deletes the insight specified by the `InsightArn`.
    #
    # @option params [required, String] :insight_arn
    #   The ARN of the insight to delete.
    #
    # @return [Types::DeleteInsightResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteInsightResponse#insight_arn #insight_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_insight({
    #     insight_arn: "NonEmptyString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.insight_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/DeleteInsight AWS API Documentation
    #
    # @overload delete_insight(params = {})
    # @param [Hash] params ({})
    def delete_insight(params = {}, options = {})
      req = build_request(:delete_insight, params)
      req.send_request(options)
    end

    # Deletes invitations received by the Amazon Web Services account to
    # become a member account.
    #
    # This operation is only used by accounts that are not part of an
    # organization. Organization accounts do not receive invitations.
    #
    # @option params [required, Array<String>] :account_ids
    #   The list of the account IDs that sent the invitations to delete.
    #
    # @return [Types::DeleteInvitationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteInvitationsResponse#unprocessed_accounts #unprocessed_accounts} => Array&lt;Types::Result&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_invitations({
    #     account_ids: ["NonEmptyString"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.unprocessed_accounts #=> Array
    #   resp.unprocessed_accounts[0].account_id #=> String
    #   resp.unprocessed_accounts[0].processing_result #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/DeleteInvitations AWS API Documentation
    #
    # @overload delete_invitations(params = {})
    # @param [Hash] params ({})
    def delete_invitations(params = {}, options = {})
      req = build_request(:delete_invitations, params)
      req.send_request(options)
    end

    # Deletes the specified member accounts from Security Hub.
    #
    # Can be used to delete member accounts that belong to an organization
    # as well as member accounts that were invited manually.
    #
    # @option params [required, Array<String>] :account_ids
    #   The list of account IDs for the member accounts to delete.
    #
    # @return [Types::DeleteMembersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteMembersResponse#unprocessed_accounts #unprocessed_accounts} => Array&lt;Types::Result&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_members({
    #     account_ids: ["NonEmptyString"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.unprocessed_accounts #=> Array
    #   resp.unprocessed_accounts[0].account_id #=> String
    #   resp.unprocessed_accounts[0].processing_result #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/DeleteMembers AWS API Documentation
    #
    # @overload delete_members(params = {})
    # @param [Hash] params ({})
    def delete_members(params = {}, options = {})
      req = build_request(:delete_members, params)
      req.send_request(options)
    end

    # Returns a list of the custom action targets in Security Hub in your
    # account.
    #
    # @option params [Array<String>] :action_target_arns
    #   A list of custom action target ARNs for the custom action targets to
    #   retrieve.
    #
    # @option params [String] :next_token
    #   The token that is required for pagination. On your first call to the
    #   `DescribeActionTargets` operation, set the value of this parameter to
    #   `NULL`.
    #
    #   For subsequent calls to the operation, to continue listing data, set
    #   the value of this parameter to the value returned from the previous
    #   response.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return.
    #
    # @return [Types::DescribeActionTargetsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeActionTargetsResponse#action_targets #action_targets} => Array&lt;Types::ActionTarget&gt;
    #   * {Types::DescribeActionTargetsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_action_targets({
    #     action_target_arns: ["NonEmptyString"],
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.action_targets #=> Array
    #   resp.action_targets[0].action_target_arn #=> String
    #   resp.action_targets[0].name #=> String
    #   resp.action_targets[0].description #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/DescribeActionTargets AWS API Documentation
    #
    # @overload describe_action_targets(params = {})
    # @param [Hash] params ({})
    def describe_action_targets(params = {}, options = {})
      req = build_request(:describe_action_targets, params)
      req.send_request(options)
    end

    # Returns details about the Hub resource in your account, including the
    # `HubArn` and the time when you enabled Security Hub.
    #
    # @option params [String] :hub_arn
    #   The ARN of the Hub resource to retrieve.
    #
    # @return [Types::DescribeHubResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeHubResponse#hub_arn #hub_arn} => String
    #   * {Types::DescribeHubResponse#subscribed_at #subscribed_at} => String
    #   * {Types::DescribeHubResponse#auto_enable_controls #auto_enable_controls} => Boolean
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_hub({
    #     hub_arn: "NonEmptyString",
    #   })
    #
    # @example Response structure
    #
    #   resp.hub_arn #=> String
    #   resp.subscribed_at #=> String
    #   resp.auto_enable_controls #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/DescribeHub AWS API Documentation
    #
    # @overload describe_hub(params = {})
    # @param [Hash] params ({})
    def describe_hub(params = {}, options = {})
      req = build_request(:describe_hub, params)
      req.send_request(options)
    end

    # Returns information about the Organizations configuration for Security
    # Hub. Can only be called from a Security Hub administrator account.
    #
    # @return [Types::DescribeOrganizationConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeOrganizationConfigurationResponse#auto_enable #auto_enable} => Boolean
    #   * {Types::DescribeOrganizationConfigurationResponse#member_account_limit_reached #member_account_limit_reached} => Boolean
    #   * {Types::DescribeOrganizationConfigurationResponse#auto_enable_standards #auto_enable_standards} => String
    #
    # @example Response structure
    #
    #   resp.auto_enable #=> Boolean
    #   resp.member_account_limit_reached #=> Boolean
    #   resp.auto_enable_standards #=> String, one of "NONE", "DEFAULT"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/DescribeOrganizationConfiguration AWS API Documentation
    #
    # @overload describe_organization_configuration(params = {})
    # @param [Hash] params ({})
    def describe_organization_configuration(params = {}, options = {})
      req = build_request(:describe_organization_configuration, params)
      req.send_request(options)
    end

    # Returns information about product integrations in Security Hub.
    #
    # You can optionally provide an integration ARN. If you provide an
    # integration ARN, then the results only include that integration.
    #
    # If you do not provide an integration ARN, then the results include all
    # of the available product integrations.
    #
    # @option params [String] :next_token
    #   The token that is required for pagination. On your first call to the
    #   `DescribeProducts` operation, set the value of this parameter to
    #   `NULL`.
    #
    #   For subsequent calls to the operation, to continue listing data, set
    #   the value of this parameter to the value returned from the previous
    #   response.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return.
    #
    # @option params [String] :product_arn
    #   The ARN of the integration to return.
    #
    # @return [Types::DescribeProductsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeProductsResponse#products #products} => Array&lt;Types::Product&gt;
    #   * {Types::DescribeProductsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_products({
    #     next_token: "NextToken",
    #     max_results: 1,
    #     product_arn: "NonEmptyString",
    #   })
    #
    # @example Response structure
    #
    #   resp.products #=> Array
    #   resp.products[0].product_arn #=> String
    #   resp.products[0].product_name #=> String
    #   resp.products[0].company_name #=> String
    #   resp.products[0].description #=> String
    #   resp.products[0].categories #=> Array
    #   resp.products[0].categories[0] #=> String
    #   resp.products[0].integration_types #=> Array
    #   resp.products[0].integration_types[0] #=> String, one of "SEND_FINDINGS_TO_SECURITY_HUB", "RECEIVE_FINDINGS_FROM_SECURITY_HUB", "UPDATE_FINDINGS_IN_SECURITY_HUB"
    #   resp.products[0].marketplace_url #=> String
    #   resp.products[0].activation_url #=> String
    #   resp.products[0].product_subscription_resource_policy #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/DescribeProducts AWS API Documentation
    #
    # @overload describe_products(params = {})
    # @param [Hash] params ({})
    def describe_products(params = {}, options = {})
      req = build_request(:describe_products, params)
      req.send_request(options)
    end

    # Returns a list of the available standards in Security Hub.
    #
    # For each standard, the results include the standard ARN, the name, and
    # a description.
    #
    # @option params [String] :next_token
    #   The token that is required for pagination. On your first call to the
    #   `DescribeStandards` operation, set the value of this parameter to
    #   `NULL`.
    #
    #   For subsequent calls to the operation, to continue listing data, set
    #   the value of this parameter to the value returned from the previous
    #   response.
    #
    # @option params [Integer] :max_results
    #   The maximum number of standards to return.
    #
    # @return [Types::DescribeStandardsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeStandardsResponse#standards #standards} => Array&lt;Types::Standard&gt;
    #   * {Types::DescribeStandardsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_standards({
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.standards #=> Array
    #   resp.standards[0].standards_arn #=> String
    #   resp.standards[0].name #=> String
    #   resp.standards[0].description #=> String
    #   resp.standards[0].enabled_by_default #=> Boolean
    #   resp.standards[0].standards_managed_by.company #=> String
    #   resp.standards[0].standards_managed_by.product #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/DescribeStandards AWS API Documentation
    #
    # @overload describe_standards(params = {})
    # @param [Hash] params ({})
    def describe_standards(params = {}, options = {})
      req = build_request(:describe_standards, params)
      req.send_request(options)
    end

    # Returns a list of security standards controls.
    #
    # For each control, the results include information about whether it is
    # currently enabled, the severity, and a link to remediation
    # information.
    #
    # @option params [required, String] :standards_subscription_arn
    #   The ARN of a resource that represents your subscription to a supported
    #   standard. To get the subscription ARNs of the standards you have
    #   enabled, use the `GetEnabledStandards` operation.
    #
    # @option params [String] :next_token
    #   The token that is required for pagination. On your first call to the
    #   `DescribeStandardsControls` operation, set the value of this parameter
    #   to `NULL`.
    #
    #   For subsequent calls to the operation, to continue listing data, set
    #   the value of this parameter to the value returned from the previous
    #   response.
    #
    # @option params [Integer] :max_results
    #   The maximum number of security standard controls to return.
    #
    # @return [Types::DescribeStandardsControlsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeStandardsControlsResponse#controls #controls} => Array&lt;Types::StandardsControl&gt;
    #   * {Types::DescribeStandardsControlsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_standards_controls({
    #     standards_subscription_arn: "NonEmptyString", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.controls #=> Array
    #   resp.controls[0].standards_control_arn #=> String
    #   resp.controls[0].control_status #=> String, one of "ENABLED", "DISABLED"
    #   resp.controls[0].disabled_reason #=> String
    #   resp.controls[0].control_status_updated_at #=> Time
    #   resp.controls[0].control_id #=> String
    #   resp.controls[0].title #=> String
    #   resp.controls[0].description #=> String
    #   resp.controls[0].remediation_url #=> String
    #   resp.controls[0].severity_rating #=> String, one of "LOW", "MEDIUM", "HIGH", "CRITICAL"
    #   resp.controls[0].related_requirements #=> Array
    #   resp.controls[0].related_requirements[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/DescribeStandardsControls AWS API Documentation
    #
    # @overload describe_standards_controls(params = {})
    # @param [Hash] params ({})
    def describe_standards_controls(params = {}, options = {})
      req = build_request(:describe_standards_controls, params)
      req.send_request(options)
    end

    # Disables the integration of the specified product with Security Hub.
    # After the integration is disabled, findings from that product are no
    # longer sent to Security Hub.
    #
    # @option params [required, String] :product_subscription_arn
    #   The ARN of the integrated product to disable the integration for.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disable_import_findings_for_product({
    #     product_subscription_arn: "NonEmptyString", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/DisableImportFindingsForProduct AWS API Documentation
    #
    # @overload disable_import_findings_for_product(params = {})
    # @param [Hash] params ({})
    def disable_import_findings_for_product(params = {}, options = {})
      req = build_request(:disable_import_findings_for_product, params)
      req.send_request(options)
    end

    # Disables a Security Hub administrator account. Can only be called by
    # the organization management account.
    #
    # @option params [required, String] :admin_account_id
    #   The Amazon Web Services account identifier of the Security Hub
    #   administrator account.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disable_organization_admin_account({
    #     admin_account_id: "NonEmptyString", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/DisableOrganizationAdminAccount AWS API Documentation
    #
    # @overload disable_organization_admin_account(params = {})
    # @param [Hash] params ({})
    def disable_organization_admin_account(params = {}, options = {})
      req = build_request(:disable_organization_admin_account, params)
      req.send_request(options)
    end

    # Disables Security Hub in your account only in the current Region. To
    # disable Security Hub in all Regions, you must submit one request per
    # Region where you have enabled Security Hub.
    #
    # When you disable Security Hub for an administrator account, it
    # doesn't disable Security Hub for any associated member accounts.
    #
    # When you disable Security Hub, your existing findings and insights and
    # any Security Hub configuration settings are deleted after 90 days and
    # cannot be recovered. Any standards that were enabled are disabled, and
    # your administrator and member account associations are removed.
    #
    # If you want to save your existing findings, you must export them
    # before you disable Security Hub.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/DisableSecurityHub AWS API Documentation
    #
    # @overload disable_security_hub(params = {})
    # @param [Hash] params ({})
    def disable_security_hub(params = {}, options = {})
      req = build_request(:disable_security_hub, params)
      req.send_request(options)
    end

    # Disassociates the current Security Hub member account from the
    # associated administrator account.
    #
    # This operation is only used by accounts that are not part of an
    # organization. For organization accounts, only the administrator
    # account can disassociate a member account.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/DisassociateFromAdministratorAccount AWS API Documentation
    #
    # @overload disassociate_from_administrator_account(params = {})
    # @param [Hash] params ({})
    def disassociate_from_administrator_account(params = {}, options = {})
      req = build_request(:disassociate_from_administrator_account, params)
      req.send_request(options)
    end

    # This method is deprecated. Instead, use
    # `DisassociateFromAdministratorAccount`.
    #
    # The Security Hub console continues to use
    # `DisassociateFromMasterAccount`. It will eventually change to use
    # `DisassociateFromAdministratorAccount`. Any IAM policies that
    # specifically control access to this function must continue to use
    # `DisassociateFromMasterAccount`. You should also add
    # `DisassociateFromAdministratorAccount` to your policies to ensure that
    # the correct permissions are in place after the console begins to use
    # `DisassociateFromAdministratorAccount`.
    #
    # Disassociates the current Security Hub member account from the
    # associated administrator account.
    #
    # This operation is only used by accounts that are not part of an
    # organization. For organization accounts, only the administrator
    # account can disassociate a member account.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/DisassociateFromMasterAccount AWS API Documentation
    #
    # @overload disassociate_from_master_account(params = {})
    # @param [Hash] params ({})
    def disassociate_from_master_account(params = {}, options = {})
      req = build_request(:disassociate_from_master_account, params)
      req.send_request(options)
    end

    # Disassociates the specified member accounts from the associated
    # administrator account.
    #
    # Can be used to disassociate both accounts that are managed using
    # Organizations and accounts that were invited manually.
    #
    # @option params [required, Array<String>] :account_ids
    #   The account IDs of the member accounts to disassociate from the
    #   administrator account.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_members({
    #     account_ids: ["NonEmptyString"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/DisassociateMembers AWS API Documentation
    #
    # @overload disassociate_members(params = {})
    # @param [Hash] params ({})
    def disassociate_members(params = {}, options = {})
      req = build_request(:disassociate_members, params)
      req.send_request(options)
    end

    # Enables the integration of a partner product with Security Hub.
    # Integrated products send findings to Security Hub.
    #
    # When you enable a product integration, a permissions policy that
    # grants permission for the product to send findings to Security Hub is
    # applied.
    #
    # @option params [required, String] :product_arn
    #   The ARN of the product to enable the integration for.
    #
    # @return [Types::EnableImportFindingsForProductResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::EnableImportFindingsForProductResponse#product_subscription_arn #product_subscription_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.enable_import_findings_for_product({
    #     product_arn: "NonEmptyString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.product_subscription_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/EnableImportFindingsForProduct AWS API Documentation
    #
    # @overload enable_import_findings_for_product(params = {})
    # @param [Hash] params ({})
    def enable_import_findings_for_product(params = {}, options = {})
      req = build_request(:enable_import_findings_for_product, params)
      req.send_request(options)
    end

    # Designates the Security Hub administrator account for an organization.
    # Can only be called by the organization management account.
    #
    # @option params [required, String] :admin_account_id
    #   The Amazon Web Services account identifier of the account to designate
    #   as the Security Hub administrator account.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.enable_organization_admin_account({
    #     admin_account_id: "NonEmptyString", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/EnableOrganizationAdminAccount AWS API Documentation
    #
    # @overload enable_organization_admin_account(params = {})
    # @param [Hash] params ({})
    def enable_organization_admin_account(params = {}, options = {})
      req = build_request(:enable_organization_admin_account, params)
      req.send_request(options)
    end

    # Enables Security Hub for your account in the current Region or the
    # Region you specify in the request.
    #
    # When you enable Security Hub, you grant to Security Hub the
    # permissions necessary to gather findings from other services that are
    # integrated with Security Hub.
    #
    # When you use the `EnableSecurityHub` operation to enable Security Hub,
    # you also automatically enable the following standards.
    #
    # * CIS Amazon Web Services Foundations
    #
    # * Amazon Web Services Foundational Security Best Practices
    #
    # You do not enable the Payment Card Industry Data Security Standard
    # (PCI DSS) standard.
    #
    # To not enable the automatically enabled standards, set
    # `EnableDefaultStandards` to `false`.
    #
    # After you enable Security Hub, to enable a standard, use the
    # `BatchEnableStandards` operation. To disable a standard, use the
    # `BatchDisableStandards` operation.
    #
    # To learn more, see the [setup information][1] in the *Security Hub
    # User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/securityhub/latest/userguide/securityhub-settingup.html
    #
    # @option params [Hash<String,String>] :tags
    #   The tags to add to the hub resource when you enable Security Hub.
    #
    # @option params [Boolean] :enable_default_standards
    #   Whether to enable the security standards that Security Hub has
    #   designated as automatically enabled. If you do not provide a value for
    #   `EnableDefaultStandards`, it is set to `true`. To not enable the
    #   automatically enabled standards, set `EnableDefaultStandards` to
    #   `false`.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.enable_security_hub({
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     enable_default_standards: false,
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/EnableSecurityHub AWS API Documentation
    #
    # @overload enable_security_hub(params = {})
    # @param [Hash] params ({})
    def enable_security_hub(params = {}, options = {})
      req = build_request(:enable_security_hub, params)
      req.send_request(options)
    end

    # Provides the details for the Security Hub administrator account for
    # the current member account.
    #
    # Can be used by both member accounts that are managed using
    # Organizations and accounts that were invited manually.
    #
    # @return [Types::GetAdministratorAccountResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAdministratorAccountResponse#administrator #administrator} => Types::Invitation
    #
    # @example Response structure
    #
    #   resp.administrator.account_id #=> String
    #   resp.administrator.invitation_id #=> String
    #   resp.administrator.invited_at #=> Time
    #   resp.administrator.member_status #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/GetAdministratorAccount AWS API Documentation
    #
    # @overload get_administrator_account(params = {})
    # @param [Hash] params ({})
    def get_administrator_account(params = {}, options = {})
      req = build_request(:get_administrator_account, params)
      req.send_request(options)
    end

    # Returns a list of the standards that are currently enabled.
    #
    # @option params [Array<String>] :standards_subscription_arns
    #   The list of the standards subscription ARNs for the standards to
    #   retrieve.
    #
    # @option params [String] :next_token
    #   The token that is required for pagination. On your first call to the
    #   `GetEnabledStandards` operation, set the value of this parameter to
    #   `NULL`.
    #
    #   For subsequent calls to the operation, to continue listing data, set
    #   the value of this parameter to the value returned from the previous
    #   response.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in the response.
    #
    # @return [Types::GetEnabledStandardsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetEnabledStandardsResponse#standards_subscriptions #standards_subscriptions} => Array&lt;Types::StandardsSubscription&gt;
    #   * {Types::GetEnabledStandardsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_enabled_standards({
    #     standards_subscription_arns: ["NonEmptyString"],
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.standards_subscriptions #=> Array
    #   resp.standards_subscriptions[0].standards_subscription_arn #=> String
    #   resp.standards_subscriptions[0].standards_arn #=> String
    #   resp.standards_subscriptions[0].standards_input #=> Hash
    #   resp.standards_subscriptions[0].standards_input["NonEmptyString"] #=> String
    #   resp.standards_subscriptions[0].standards_status #=> String, one of "PENDING", "READY", "FAILED", "DELETING", "INCOMPLETE"
    #   resp.standards_subscriptions[0].standards_status_reason.status_reason_code #=> String, one of "NO_AVAILABLE_CONFIGURATION_RECORDER", "INTERNAL_ERROR"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/GetEnabledStandards AWS API Documentation
    #
    # @overload get_enabled_standards(params = {})
    # @param [Hash] params ({})
    def get_enabled_standards(params = {}, options = {})
      req = build_request(:get_enabled_standards, params)
      req.send_request(options)
    end

    # Returns the current finding aggregation configuration.
    #
    # @option params [required, String] :finding_aggregator_arn
    #   The ARN of the finding aggregator to return details for. To obtain the
    #   ARN, use `ListFindingAggregators`.
    #
    # @return [Types::GetFindingAggregatorResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetFindingAggregatorResponse#finding_aggregator_arn #finding_aggregator_arn} => String
    #   * {Types::GetFindingAggregatorResponse#finding_aggregation_region #finding_aggregation_region} => String
    #   * {Types::GetFindingAggregatorResponse#region_linking_mode #region_linking_mode} => String
    #   * {Types::GetFindingAggregatorResponse#regions #regions} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_finding_aggregator({
    #     finding_aggregator_arn: "NonEmptyString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.finding_aggregator_arn #=> String
    #   resp.finding_aggregation_region #=> String
    #   resp.region_linking_mode #=> String
    #   resp.regions #=> Array
    #   resp.regions[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/GetFindingAggregator AWS API Documentation
    #
    # @overload get_finding_aggregator(params = {})
    # @param [Hash] params ({})
    def get_finding_aggregator(params = {}, options = {})
      req = build_request(:get_finding_aggregator, params)
      req.send_request(options)
    end

    # Returns a list of findings that match the specified criteria.
    #
    # If finding aggregation is enabled, then when you call `GetFindings`
    # from the aggregation Region, the results include all of the matching
    # findings from both the aggregation Region and the linked Regions.
    #
    # @option params [Types::AwsSecurityFindingFilters] :filters
    #   The finding attributes used to define a condition to filter the
    #   returned findings.
    #
    #   You can filter by up to 10 finding attributes. For each attribute, you
    #   can provide up to 20 filter values.
    #
    #   Note that in the available filter fields, `WorkflowState` is
    #   deprecated. To search for a finding based on its workflow status, use
    #   `WorkflowStatus`.
    #
    # @option params [Array<Types::SortCriterion>] :sort_criteria
    #   The finding attributes used to sort the list of returned findings.
    #
    # @option params [String] :next_token
    #   The token that is required for pagination. On your first call to the
    #   `GetFindings` operation, set the value of this parameter to `NULL`.
    #
    #   For subsequent calls to the operation, to continue listing data, set
    #   the value of this parameter to the value returned from the previous
    #   response.
    #
    # @option params [Integer] :max_results
    #   The maximum number of findings to return.
    #
    # @return [Types::GetFindingsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetFindingsResponse#findings #findings} => Array&lt;Types::AwsSecurityFinding&gt;
    #   * {Types::GetFindingsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_findings({
    #     filters: {
    #       product_arn: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       aws_account_id: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       id: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       generator_id: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       region: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       type: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       first_observed_at: [
    #         {
    #           start: "NonEmptyString",
    #           end: "NonEmptyString",
    #           date_range: {
    #             value: 1,
    #             unit: "DAYS", # accepts DAYS
    #           },
    #         },
    #       ],
    #       last_observed_at: [
    #         {
    #           start: "NonEmptyString",
    #           end: "NonEmptyString",
    #           date_range: {
    #             value: 1,
    #             unit: "DAYS", # accepts DAYS
    #           },
    #         },
    #       ],
    #       created_at: [
    #         {
    #           start: "NonEmptyString",
    #           end: "NonEmptyString",
    #           date_range: {
    #             value: 1,
    #             unit: "DAYS", # accepts DAYS
    #           },
    #         },
    #       ],
    #       updated_at: [
    #         {
    #           start: "NonEmptyString",
    #           end: "NonEmptyString",
    #           date_range: {
    #             value: 1,
    #             unit: "DAYS", # accepts DAYS
    #           },
    #         },
    #       ],
    #       severity_product: [
    #         {
    #           gte: 1.0,
    #           lte: 1.0,
    #           eq: 1.0,
    #         },
    #       ],
    #       severity_normalized: [
    #         {
    #           gte: 1.0,
    #           lte: 1.0,
    #           eq: 1.0,
    #         },
    #       ],
    #       severity_label: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       confidence: [
    #         {
    #           gte: 1.0,
    #           lte: 1.0,
    #           eq: 1.0,
    #         },
    #       ],
    #       criticality: [
    #         {
    #           gte: 1.0,
    #           lte: 1.0,
    #           eq: 1.0,
    #         },
    #       ],
    #       title: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       description: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       recommendation_text: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       source_url: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       product_fields: [
    #         {
    #           key: "NonEmptyString",
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, NOT_EQUALS
    #         },
    #       ],
    #       product_name: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       company_name: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       user_defined_fields: [
    #         {
    #           key: "NonEmptyString",
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, NOT_EQUALS
    #         },
    #       ],
    #       malware_name: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       malware_type: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       malware_path: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       malware_state: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       network_direction: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       network_protocol: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       network_source_ip_v4: [
    #         {
    #           cidr: "NonEmptyString",
    #         },
    #       ],
    #       network_source_ip_v6: [
    #         {
    #           cidr: "NonEmptyString",
    #         },
    #       ],
    #       network_source_port: [
    #         {
    #           gte: 1.0,
    #           lte: 1.0,
    #           eq: 1.0,
    #         },
    #       ],
    #       network_source_domain: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       network_source_mac: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       network_destination_ip_v4: [
    #         {
    #           cidr: "NonEmptyString",
    #         },
    #       ],
    #       network_destination_ip_v6: [
    #         {
    #           cidr: "NonEmptyString",
    #         },
    #       ],
    #       network_destination_port: [
    #         {
    #           gte: 1.0,
    #           lte: 1.0,
    #           eq: 1.0,
    #         },
    #       ],
    #       network_destination_domain: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       process_name: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       process_path: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       process_pid: [
    #         {
    #           gte: 1.0,
    #           lte: 1.0,
    #           eq: 1.0,
    #         },
    #       ],
    #       process_parent_pid: [
    #         {
    #           gte: 1.0,
    #           lte: 1.0,
    #           eq: 1.0,
    #         },
    #       ],
    #       process_launched_at: [
    #         {
    #           start: "NonEmptyString",
    #           end: "NonEmptyString",
    #           date_range: {
    #             value: 1,
    #             unit: "DAYS", # accepts DAYS
    #           },
    #         },
    #       ],
    #       process_terminated_at: [
    #         {
    #           start: "NonEmptyString",
    #           end: "NonEmptyString",
    #           date_range: {
    #             value: 1,
    #             unit: "DAYS", # accepts DAYS
    #           },
    #         },
    #       ],
    #       threat_intel_indicator_type: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       threat_intel_indicator_value: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       threat_intel_indicator_category: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       threat_intel_indicator_last_observed_at: [
    #         {
    #           start: "NonEmptyString",
    #           end: "NonEmptyString",
    #           date_range: {
    #             value: 1,
    #             unit: "DAYS", # accepts DAYS
    #           },
    #         },
    #       ],
    #       threat_intel_indicator_source: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       threat_intel_indicator_source_url: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       resource_type: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       resource_id: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       resource_partition: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       resource_region: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       resource_tags: [
    #         {
    #           key: "NonEmptyString",
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, NOT_EQUALS
    #         },
    #       ],
    #       resource_aws_ec2_instance_type: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       resource_aws_ec2_instance_image_id: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       resource_aws_ec2_instance_ip_v4_addresses: [
    #         {
    #           cidr: "NonEmptyString",
    #         },
    #       ],
    #       resource_aws_ec2_instance_ip_v6_addresses: [
    #         {
    #           cidr: "NonEmptyString",
    #         },
    #       ],
    #       resource_aws_ec2_instance_key_name: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       resource_aws_ec2_instance_iam_instance_profile_arn: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       resource_aws_ec2_instance_vpc_id: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       resource_aws_ec2_instance_subnet_id: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       resource_aws_ec2_instance_launched_at: [
    #         {
    #           start: "NonEmptyString",
    #           end: "NonEmptyString",
    #           date_range: {
    #             value: 1,
    #             unit: "DAYS", # accepts DAYS
    #           },
    #         },
    #       ],
    #       resource_aws_s3_bucket_owner_id: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       resource_aws_s3_bucket_owner_name: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       resource_aws_iam_access_key_user_name: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       resource_aws_iam_access_key_principal_name: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       resource_aws_iam_access_key_status: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       resource_aws_iam_access_key_created_at: [
    #         {
    #           start: "NonEmptyString",
    #           end: "NonEmptyString",
    #           date_range: {
    #             value: 1,
    #             unit: "DAYS", # accepts DAYS
    #           },
    #         },
    #       ],
    #       resource_aws_iam_user_user_name: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       resource_container_name: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       resource_container_image_id: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       resource_container_image_name: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       resource_container_launched_at: [
    #         {
    #           start: "NonEmptyString",
    #           end: "NonEmptyString",
    #           date_range: {
    #             value: 1,
    #             unit: "DAYS", # accepts DAYS
    #           },
    #         },
    #       ],
    #       resource_details_other: [
    #         {
    #           key: "NonEmptyString",
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, NOT_EQUALS
    #         },
    #       ],
    #       compliance_status: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       verification_state: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       workflow_state: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       workflow_status: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       record_state: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       related_findings_product_arn: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       related_findings_id: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       note_text: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       note_updated_at: [
    #         {
    #           start: "NonEmptyString",
    #           end: "NonEmptyString",
    #           date_range: {
    #             value: 1,
    #             unit: "DAYS", # accepts DAYS
    #           },
    #         },
    #       ],
    #       note_updated_by: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       keyword: [
    #         {
    #           value: "NonEmptyString",
    #         },
    #       ],
    #       finding_provider_fields_confidence: [
    #         {
    #           gte: 1.0,
    #           lte: 1.0,
    #           eq: 1.0,
    #         },
    #       ],
    #       finding_provider_fields_criticality: [
    #         {
    #           gte: 1.0,
    #           lte: 1.0,
    #           eq: 1.0,
    #         },
    #       ],
    #       finding_provider_fields_related_findings_id: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       finding_provider_fields_related_findings_product_arn: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       finding_provider_fields_severity_label: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       finding_provider_fields_severity_original: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       finding_provider_fields_types: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       sample: [
    #         {
    #           value: false,
    #         },
    #       ],
    #     },
    #     sort_criteria: [
    #       {
    #         field: "NonEmptyString",
    #         sort_order: "asc", # accepts asc, desc
    #       },
    #     ],
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/GetFindings AWS API Documentation
    #
    # @overload get_findings(params = {})
    # @param [Hash] params ({})
    def get_findings(params = {}, options = {})
      req = build_request(:get_findings, params)
      req.send_request(options)
    end

    # Lists the results of the Security Hub insight specified by the insight
    # ARN.
    #
    # @option params [required, String] :insight_arn
    #   The ARN of the insight for which to return results.
    #
    # @return [Types::GetInsightResultsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetInsightResultsResponse#insight_results #insight_results} => Types::InsightResults
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_insight_results({
    #     insight_arn: "NonEmptyString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.insight_results.insight_arn #=> String
    #   resp.insight_results.group_by_attribute #=> String
    #   resp.insight_results.result_values #=> Array
    #   resp.insight_results.result_values[0].group_by_attribute_value #=> String
    #   resp.insight_results.result_values[0].count #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/GetInsightResults AWS API Documentation
    #
    # @overload get_insight_results(params = {})
    # @param [Hash] params ({})
    def get_insight_results(params = {}, options = {})
      req = build_request(:get_insight_results, params)
      req.send_request(options)
    end

    # Lists and describes insights for the specified insight ARNs.
    #
    # @option params [Array<String>] :insight_arns
    #   The ARNs of the insights to describe. If you do not provide any
    #   insight ARNs, then `GetInsights` returns all of your custom insights.
    #   It does not return any managed insights.
    #
    # @option params [String] :next_token
    #   The token that is required for pagination. On your first call to the
    #   `GetInsights` operation, set the value of this parameter to `NULL`.
    #
    #   For subsequent calls to the operation, to continue listing data, set
    #   the value of this parameter to the value returned from the previous
    #   response.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return in the response.
    #
    # @return [Types::GetInsightsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetInsightsResponse#insights #insights} => Array&lt;Types::Insight&gt;
    #   * {Types::GetInsightsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_insights({
    #     insight_arns: ["NonEmptyString"],
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.insights #=> Array
    #   resp.insights[0].insight_arn #=> String
    #   resp.insights[0].name #=> String
    #   resp.insights[0].filters.product_arn #=> Array
    #   resp.insights[0].filters.product_arn[0].value #=> String
    #   resp.insights[0].filters.product_arn[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS"
    #   resp.insights[0].filters.aws_account_id #=> Array
    #   resp.insights[0].filters.aws_account_id[0].value #=> String
    #   resp.insights[0].filters.aws_account_id[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS"
    #   resp.insights[0].filters.id #=> Array
    #   resp.insights[0].filters.id[0].value #=> String
    #   resp.insights[0].filters.id[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS"
    #   resp.insights[0].filters.generator_id #=> Array
    #   resp.insights[0].filters.generator_id[0].value #=> String
    #   resp.insights[0].filters.generator_id[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS"
    #   resp.insights[0].filters.region #=> Array
    #   resp.insights[0].filters.region[0].value #=> String
    #   resp.insights[0].filters.region[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS"
    #   resp.insights[0].filters.type #=> Array
    #   resp.insights[0].filters.type[0].value #=> String
    #   resp.insights[0].filters.type[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS"
    #   resp.insights[0].filters.first_observed_at #=> Array
    #   resp.insights[0].filters.first_observed_at[0].start #=> String
    #   resp.insights[0].filters.first_observed_at[0].end #=> String
    #   resp.insights[0].filters.first_observed_at[0].date_range.value #=> Integer
    #   resp.insights[0].filters.first_observed_at[0].date_range.unit #=> String, one of "DAYS"
    #   resp.insights[0].filters.last_observed_at #=> Array
    #   resp.insights[0].filters.last_observed_at[0].start #=> String
    #   resp.insights[0].filters.last_observed_at[0].end #=> String
    #   resp.insights[0].filters.last_observed_at[0].date_range.value #=> Integer
    #   resp.insights[0].filters.last_observed_at[0].date_range.unit #=> String, one of "DAYS"
    #   resp.insights[0].filters.created_at #=> Array
    #   resp.insights[0].filters.created_at[0].start #=> String
    #   resp.insights[0].filters.created_at[0].end #=> String
    #   resp.insights[0].filters.created_at[0].date_range.value #=> Integer
    #   resp.insights[0].filters.created_at[0].date_range.unit #=> String, one of "DAYS"
    #   resp.insights[0].filters.updated_at #=> Array
    #   resp.insights[0].filters.updated_at[0].start #=> String
    #   resp.insights[0].filters.updated_at[0].end #=> String
    #   resp.insights[0].filters.updated_at[0].date_range.value #=> Integer
    #   resp.insights[0].filters.updated_at[0].date_range.unit #=> String, one of "DAYS"
    #   resp.insights[0].filters.severity_product #=> Array
    #   resp.insights[0].filters.severity_product[0].gte #=> Float
    #   resp.insights[0].filters.severity_product[0].lte #=> Float
    #   resp.insights[0].filters.severity_product[0].eq #=> Float
    #   resp.insights[0].filters.severity_normalized #=> Array
    #   resp.insights[0].filters.severity_normalized[0].gte #=> Float
    #   resp.insights[0].filters.severity_normalized[0].lte #=> Float
    #   resp.insights[0].filters.severity_normalized[0].eq #=> Float
    #   resp.insights[0].filters.severity_label #=> Array
    #   resp.insights[0].filters.severity_label[0].value #=> String
    #   resp.insights[0].filters.severity_label[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS"
    #   resp.insights[0].filters.confidence #=> Array
    #   resp.insights[0].filters.confidence[0].gte #=> Float
    #   resp.insights[0].filters.confidence[0].lte #=> Float
    #   resp.insights[0].filters.confidence[0].eq #=> Float
    #   resp.insights[0].filters.criticality #=> Array
    #   resp.insights[0].filters.criticality[0].gte #=> Float
    #   resp.insights[0].filters.criticality[0].lte #=> Float
    #   resp.insights[0].filters.criticality[0].eq #=> Float
    #   resp.insights[0].filters.title #=> Array
    #   resp.insights[0].filters.title[0].value #=> String
    #   resp.insights[0].filters.title[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS"
    #   resp.insights[0].filters.description #=> Array
    #   resp.insights[0].filters.description[0].value #=> String
    #   resp.insights[0].filters.description[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS"
    #   resp.insights[0].filters.recommendation_text #=> Array
    #   resp.insights[0].filters.recommendation_text[0].value #=> String
    #   resp.insights[0].filters.recommendation_text[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS"
    #   resp.insights[0].filters.source_url #=> Array
    #   resp.insights[0].filters.source_url[0].value #=> String
    #   resp.insights[0].filters.source_url[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS"
    #   resp.insights[0].filters.product_fields #=> Array
    #   resp.insights[0].filters.product_fields[0].key #=> String
    #   resp.insights[0].filters.product_fields[0].value #=> String
    #   resp.insights[0].filters.product_fields[0].comparison #=> String, one of "EQUALS", "NOT_EQUALS"
    #   resp.insights[0].filters.product_name #=> Array
    #   resp.insights[0].filters.product_name[0].value #=> String
    #   resp.insights[0].filters.product_name[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS"
    #   resp.insights[0].filters.company_name #=> Array
    #   resp.insights[0].filters.company_name[0].value #=> String
    #   resp.insights[0].filters.company_name[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS"
    #   resp.insights[0].filters.user_defined_fields #=> Array
    #   resp.insights[0].filters.user_defined_fields[0].key #=> String
    #   resp.insights[0].filters.user_defined_fields[0].value #=> String
    #   resp.insights[0].filters.user_defined_fields[0].comparison #=> String, one of "EQUALS", "NOT_EQUALS"
    #   resp.insights[0].filters.malware_name #=> Array
    #   resp.insights[0].filters.malware_name[0].value #=> String
    #   resp.insights[0].filters.malware_name[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS"
    #   resp.insights[0].filters.malware_type #=> Array
    #   resp.insights[0].filters.malware_type[0].value #=> String
    #   resp.insights[0].filters.malware_type[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS"
    #   resp.insights[0].filters.malware_path #=> Array
    #   resp.insights[0].filters.malware_path[0].value #=> String
    #   resp.insights[0].filters.malware_path[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS"
    #   resp.insights[0].filters.malware_state #=> Array
    #   resp.insights[0].filters.malware_state[0].value #=> String
    #   resp.insights[0].filters.malware_state[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS"
    #   resp.insights[0].filters.network_direction #=> Array
    #   resp.insights[0].filters.network_direction[0].value #=> String
    #   resp.insights[0].filters.network_direction[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS"
    #   resp.insights[0].filters.network_protocol #=> Array
    #   resp.insights[0].filters.network_protocol[0].value #=> String
    #   resp.insights[0].filters.network_protocol[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS"
    #   resp.insights[0].filters.network_source_ip_v4 #=> Array
    #   resp.insights[0].filters.network_source_ip_v4[0].cidr #=> String
    #   resp.insights[0].filters.network_source_ip_v6 #=> Array
    #   resp.insights[0].filters.network_source_ip_v6[0].cidr #=> String
    #   resp.insights[0].filters.network_source_port #=> Array
    #   resp.insights[0].filters.network_source_port[0].gte #=> Float
    #   resp.insights[0].filters.network_source_port[0].lte #=> Float
    #   resp.insights[0].filters.network_source_port[0].eq #=> Float
    #   resp.insights[0].filters.network_source_domain #=> Array
    #   resp.insights[0].filters.network_source_domain[0].value #=> String
    #   resp.insights[0].filters.network_source_domain[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS"
    #   resp.insights[0].filters.network_source_mac #=> Array
    #   resp.insights[0].filters.network_source_mac[0].value #=> String
    #   resp.insights[0].filters.network_source_mac[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS"
    #   resp.insights[0].filters.network_destination_ip_v4 #=> Array
    #   resp.insights[0].filters.network_destination_ip_v4[0].cidr #=> String
    #   resp.insights[0].filters.network_destination_ip_v6 #=> Array
    #   resp.insights[0].filters.network_destination_ip_v6[0].cidr #=> String
    #   resp.insights[0].filters.network_destination_port #=> Array
    #   resp.insights[0].filters.network_destination_port[0].gte #=> Float
    #   resp.insights[0].filters.network_destination_port[0].lte #=> Float
    #   resp.insights[0].filters.network_destination_port[0].eq #=> Float
    #   resp.insights[0].filters.network_destination_domain #=> Array
    #   resp.insights[0].filters.network_destination_domain[0].value #=> String
    #   resp.insights[0].filters.network_destination_domain[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS"
    #   resp.insights[0].filters.process_name #=> Array
    #   resp.insights[0].filters.process_name[0].value #=> String
    #   resp.insights[0].filters.process_name[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS"
    #   resp.insights[0].filters.process_path #=> Array
    #   resp.insights[0].filters.process_path[0].value #=> String
    #   resp.insights[0].filters.process_path[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS"
    #   resp.insights[0].filters.process_pid #=> Array
    #   resp.insights[0].filters.process_pid[0].gte #=> Float
    #   resp.insights[0].filters.process_pid[0].lte #=> Float
    #   resp.insights[0].filters.process_pid[0].eq #=> Float
    #   resp.insights[0].filters.process_parent_pid #=> Array
    #   resp.insights[0].filters.process_parent_pid[0].gte #=> Float
    #   resp.insights[0].filters.process_parent_pid[0].lte #=> Float
    #   resp.insights[0].filters.process_parent_pid[0].eq #=> Float
    #   resp.insights[0].filters.process_launched_at #=> Array
    #   resp.insights[0].filters.process_launched_at[0].start #=> String
    #   resp.insights[0].filters.process_launched_at[0].end #=> String
    #   resp.insights[0].filters.process_launched_at[0].date_range.value #=> Integer
    #   resp.insights[0].filters.process_launched_at[0].date_range.unit #=> String, one of "DAYS"
    #   resp.insights[0].filters.process_terminated_at #=> Array
    #   resp.insights[0].filters.process_terminated_at[0].start #=> String
    #   resp.insights[0].filters.process_terminated_at[0].end #=> String
    #   resp.insights[0].filters.process_terminated_at[0].date_range.value #=> Integer
    #   resp.insights[0].filters.process_terminated_at[0].date_range.unit #=> String, one of "DAYS"
    #   resp.insights[0].filters.threat_intel_indicator_type #=> Array
    #   resp.insights[0].filters.threat_intel_indicator_type[0].value #=> String
    #   resp.insights[0].filters.threat_intel_indicator_type[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS"
    #   resp.insights[0].filters.threat_intel_indicator_value #=> Array
    #   resp.insights[0].filters.threat_intel_indicator_value[0].value #=> String
    #   resp.insights[0].filters.threat_intel_indicator_value[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS"
    #   resp.insights[0].filters.threat_intel_indicator_category #=> Array
    #   resp.insights[0].filters.threat_intel_indicator_category[0].value #=> String
    #   resp.insights[0].filters.threat_intel_indicator_category[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS"
    #   resp.insights[0].filters.threat_intel_indicator_last_observed_at #=> Array
    #   resp.insights[0].filters.threat_intel_indicator_last_observed_at[0].start #=> String
    #   resp.insights[0].filters.threat_intel_indicator_last_observed_at[0].end #=> String
    #   resp.insights[0].filters.threat_intel_indicator_last_observed_at[0].date_range.value #=> Integer
    #   resp.insights[0].filters.threat_intel_indicator_last_observed_at[0].date_range.unit #=> String, one of "DAYS"
    #   resp.insights[0].filters.threat_intel_indicator_source #=> Array
    #   resp.insights[0].filters.threat_intel_indicator_source[0].value #=> String
    #   resp.insights[0].filters.threat_intel_indicator_source[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS"
    #   resp.insights[0].filters.threat_intel_indicator_source_url #=> Array
    #   resp.insights[0].filters.threat_intel_indicator_source_url[0].value #=> String
    #   resp.insights[0].filters.threat_intel_indicator_source_url[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS"
    #   resp.insights[0].filters.resource_type #=> Array
    #   resp.insights[0].filters.resource_type[0].value #=> String
    #   resp.insights[0].filters.resource_type[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS"
    #   resp.insights[0].filters.resource_id #=> Array
    #   resp.insights[0].filters.resource_id[0].value #=> String
    #   resp.insights[0].filters.resource_id[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS"
    #   resp.insights[0].filters.resource_partition #=> Array
    #   resp.insights[0].filters.resource_partition[0].value #=> String
    #   resp.insights[0].filters.resource_partition[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS"
    #   resp.insights[0].filters.resource_region #=> Array
    #   resp.insights[0].filters.resource_region[0].value #=> String
    #   resp.insights[0].filters.resource_region[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS"
    #   resp.insights[0].filters.resource_tags #=> Array
    #   resp.insights[0].filters.resource_tags[0].key #=> String
    #   resp.insights[0].filters.resource_tags[0].value #=> String
    #   resp.insights[0].filters.resource_tags[0].comparison #=> String, one of "EQUALS", "NOT_EQUALS"
    #   resp.insights[0].filters.resource_aws_ec2_instance_type #=> Array
    #   resp.insights[0].filters.resource_aws_ec2_instance_type[0].value #=> String
    #   resp.insights[0].filters.resource_aws_ec2_instance_type[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS"
    #   resp.insights[0].filters.resource_aws_ec2_instance_image_id #=> Array
    #   resp.insights[0].filters.resource_aws_ec2_instance_image_id[0].value #=> String
    #   resp.insights[0].filters.resource_aws_ec2_instance_image_id[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS"
    #   resp.insights[0].filters.resource_aws_ec2_instance_ip_v4_addresses #=> Array
    #   resp.insights[0].filters.resource_aws_ec2_instance_ip_v4_addresses[0].cidr #=> String
    #   resp.insights[0].filters.resource_aws_ec2_instance_ip_v6_addresses #=> Array
    #   resp.insights[0].filters.resource_aws_ec2_instance_ip_v6_addresses[0].cidr #=> String
    #   resp.insights[0].filters.resource_aws_ec2_instance_key_name #=> Array
    #   resp.insights[0].filters.resource_aws_ec2_instance_key_name[0].value #=> String
    #   resp.insights[0].filters.resource_aws_ec2_instance_key_name[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS"
    #   resp.insights[0].filters.resource_aws_ec2_instance_iam_instance_profile_arn #=> Array
    #   resp.insights[0].filters.resource_aws_ec2_instance_iam_instance_profile_arn[0].value #=> String
    #   resp.insights[0].filters.resource_aws_ec2_instance_iam_instance_profile_arn[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS"
    #   resp.insights[0].filters.resource_aws_ec2_instance_vpc_id #=> Array
    #   resp.insights[0].filters.resource_aws_ec2_instance_vpc_id[0].value #=> String
    #   resp.insights[0].filters.resource_aws_ec2_instance_vpc_id[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS"
    #   resp.insights[0].filters.resource_aws_ec2_instance_subnet_id #=> Array
    #   resp.insights[0].filters.resource_aws_ec2_instance_subnet_id[0].value #=> String
    #   resp.insights[0].filters.resource_aws_ec2_instance_subnet_id[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS"
    #   resp.insights[0].filters.resource_aws_ec2_instance_launched_at #=> Array
    #   resp.insights[0].filters.resource_aws_ec2_instance_launched_at[0].start #=> String
    #   resp.insights[0].filters.resource_aws_ec2_instance_launched_at[0].end #=> String
    #   resp.insights[0].filters.resource_aws_ec2_instance_launched_at[0].date_range.value #=> Integer
    #   resp.insights[0].filters.resource_aws_ec2_instance_launched_at[0].date_range.unit #=> String, one of "DAYS"
    #   resp.insights[0].filters.resource_aws_s3_bucket_owner_id #=> Array
    #   resp.insights[0].filters.resource_aws_s3_bucket_owner_id[0].value #=> String
    #   resp.insights[0].filters.resource_aws_s3_bucket_owner_id[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS"
    #   resp.insights[0].filters.resource_aws_s3_bucket_owner_name #=> Array
    #   resp.insights[0].filters.resource_aws_s3_bucket_owner_name[0].value #=> String
    #   resp.insights[0].filters.resource_aws_s3_bucket_owner_name[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS"
    #   resp.insights[0].filters.resource_aws_iam_access_key_user_name #=> Array
    #   resp.insights[0].filters.resource_aws_iam_access_key_user_name[0].value #=> String
    #   resp.insights[0].filters.resource_aws_iam_access_key_user_name[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS"
    #   resp.insights[0].filters.resource_aws_iam_access_key_principal_name #=> Array
    #   resp.insights[0].filters.resource_aws_iam_access_key_principal_name[0].value #=> String
    #   resp.insights[0].filters.resource_aws_iam_access_key_principal_name[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS"
    #   resp.insights[0].filters.resource_aws_iam_access_key_status #=> Array
    #   resp.insights[0].filters.resource_aws_iam_access_key_status[0].value #=> String
    #   resp.insights[0].filters.resource_aws_iam_access_key_status[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS"
    #   resp.insights[0].filters.resource_aws_iam_access_key_created_at #=> Array
    #   resp.insights[0].filters.resource_aws_iam_access_key_created_at[0].start #=> String
    #   resp.insights[0].filters.resource_aws_iam_access_key_created_at[0].end #=> String
    #   resp.insights[0].filters.resource_aws_iam_access_key_created_at[0].date_range.value #=> Integer
    #   resp.insights[0].filters.resource_aws_iam_access_key_created_at[0].date_range.unit #=> String, one of "DAYS"
    #   resp.insights[0].filters.resource_aws_iam_user_user_name #=> Array
    #   resp.insights[0].filters.resource_aws_iam_user_user_name[0].value #=> String
    #   resp.insights[0].filters.resource_aws_iam_user_user_name[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS"
    #   resp.insights[0].filters.resource_container_name #=> Array
    #   resp.insights[0].filters.resource_container_name[0].value #=> String
    #   resp.insights[0].filters.resource_container_name[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS"
    #   resp.insights[0].filters.resource_container_image_id #=> Array
    #   resp.insights[0].filters.resource_container_image_id[0].value #=> String
    #   resp.insights[0].filters.resource_container_image_id[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS"
    #   resp.insights[0].filters.resource_container_image_name #=> Array
    #   resp.insights[0].filters.resource_container_image_name[0].value #=> String
    #   resp.insights[0].filters.resource_container_image_name[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS"
    #   resp.insights[0].filters.resource_container_launched_at #=> Array
    #   resp.insights[0].filters.resource_container_launched_at[0].start #=> String
    #   resp.insights[0].filters.resource_container_launched_at[0].end #=> String
    #   resp.insights[0].filters.resource_container_launched_at[0].date_range.value #=> Integer
    #   resp.insights[0].filters.resource_container_launched_at[0].date_range.unit #=> String, one of "DAYS"
    #   resp.insights[0].filters.resource_details_other #=> Array
    #   resp.insights[0].filters.resource_details_other[0].key #=> String
    #   resp.insights[0].filters.resource_details_other[0].value #=> String
    #   resp.insights[0].filters.resource_details_other[0].comparison #=> String, one of "EQUALS", "NOT_EQUALS"
    #   resp.insights[0].filters.compliance_status #=> Array
    #   resp.insights[0].filters.compliance_status[0].value #=> String
    #   resp.insights[0].filters.compliance_status[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS"
    #   resp.insights[0].filters.verification_state #=> Array
    #   resp.insights[0].filters.verification_state[0].value #=> String
    #   resp.insights[0].filters.verification_state[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS"
    #   resp.insights[0].filters.workflow_state #=> Array
    #   resp.insights[0].filters.workflow_state[0].value #=> String
    #   resp.insights[0].filters.workflow_state[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS"
    #   resp.insights[0].filters.workflow_status #=> Array
    #   resp.insights[0].filters.workflow_status[0].value #=> String
    #   resp.insights[0].filters.workflow_status[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS"
    #   resp.insights[0].filters.record_state #=> Array
    #   resp.insights[0].filters.record_state[0].value #=> String
    #   resp.insights[0].filters.record_state[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS"
    #   resp.insights[0].filters.related_findings_product_arn #=> Array
    #   resp.insights[0].filters.related_findings_product_arn[0].value #=> String
    #   resp.insights[0].filters.related_findings_product_arn[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS"
    #   resp.insights[0].filters.related_findings_id #=> Array
    #   resp.insights[0].filters.related_findings_id[0].value #=> String
    #   resp.insights[0].filters.related_findings_id[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS"
    #   resp.insights[0].filters.note_text #=> Array
    #   resp.insights[0].filters.note_text[0].value #=> String
    #   resp.insights[0].filters.note_text[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS"
    #   resp.insights[0].filters.note_updated_at #=> Array
    #   resp.insights[0].filters.note_updated_at[0].start #=> String
    #   resp.insights[0].filters.note_updated_at[0].end #=> String
    #   resp.insights[0].filters.note_updated_at[0].date_range.value #=> Integer
    #   resp.insights[0].filters.note_updated_at[0].date_range.unit #=> String, one of "DAYS"
    #   resp.insights[0].filters.note_updated_by #=> Array
    #   resp.insights[0].filters.note_updated_by[0].value #=> String
    #   resp.insights[0].filters.note_updated_by[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS"
    #   resp.insights[0].filters.keyword #=> Array
    #   resp.insights[0].filters.keyword[0].value #=> String
    #   resp.insights[0].filters.finding_provider_fields_confidence #=> Array
    #   resp.insights[0].filters.finding_provider_fields_confidence[0].gte #=> Float
    #   resp.insights[0].filters.finding_provider_fields_confidence[0].lte #=> Float
    #   resp.insights[0].filters.finding_provider_fields_confidence[0].eq #=> Float
    #   resp.insights[0].filters.finding_provider_fields_criticality #=> Array
    #   resp.insights[0].filters.finding_provider_fields_criticality[0].gte #=> Float
    #   resp.insights[0].filters.finding_provider_fields_criticality[0].lte #=> Float
    #   resp.insights[0].filters.finding_provider_fields_criticality[0].eq #=> Float
    #   resp.insights[0].filters.finding_provider_fields_related_findings_id #=> Array
    #   resp.insights[0].filters.finding_provider_fields_related_findings_id[0].value #=> String
    #   resp.insights[0].filters.finding_provider_fields_related_findings_id[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS"
    #   resp.insights[0].filters.finding_provider_fields_related_findings_product_arn #=> Array
    #   resp.insights[0].filters.finding_provider_fields_related_findings_product_arn[0].value #=> String
    #   resp.insights[0].filters.finding_provider_fields_related_findings_product_arn[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS"
    #   resp.insights[0].filters.finding_provider_fields_severity_label #=> Array
    #   resp.insights[0].filters.finding_provider_fields_severity_label[0].value #=> String
    #   resp.insights[0].filters.finding_provider_fields_severity_label[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS"
    #   resp.insights[0].filters.finding_provider_fields_severity_original #=> Array
    #   resp.insights[0].filters.finding_provider_fields_severity_original[0].value #=> String
    #   resp.insights[0].filters.finding_provider_fields_severity_original[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS"
    #   resp.insights[0].filters.finding_provider_fields_types #=> Array
    #   resp.insights[0].filters.finding_provider_fields_types[0].value #=> String
    #   resp.insights[0].filters.finding_provider_fields_types[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS"
    #   resp.insights[0].filters.sample #=> Array
    #   resp.insights[0].filters.sample[0].value #=> Boolean
    #   resp.insights[0].group_by_attribute #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/GetInsights AWS API Documentation
    #
    # @overload get_insights(params = {})
    # @param [Hash] params ({})
    def get_insights(params = {}, options = {})
      req = build_request(:get_insights, params)
      req.send_request(options)
    end

    # Returns the count of all Security Hub membership invitations that were
    # sent to the current member account, not including the currently
    # accepted invitation.
    #
    # @return [Types::GetInvitationsCountResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetInvitationsCountResponse#invitations_count #invitations_count} => Integer
    #
    # @example Response structure
    #
    #   resp.invitations_count #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/GetInvitationsCount AWS API Documentation
    #
    # @overload get_invitations_count(params = {})
    # @param [Hash] params ({})
    def get_invitations_count(params = {}, options = {})
      req = build_request(:get_invitations_count, params)
      req.send_request(options)
    end

    # This method is deprecated. Instead, use `GetAdministratorAccount`.
    #
    # The Security Hub console continues to use `GetMasterAccount`. It will
    # eventually change to use `GetAdministratorAccount`. Any IAM policies
    # that specifically control access to this function must continue to use
    # `GetMasterAccount`. You should also add `GetAdministratorAccount` to
    # your policies to ensure that the correct permissions are in place
    # after the console begins to use `GetAdministratorAccount`.
    #
    # Provides the details for the Security Hub administrator account for
    # the current member account.
    #
    # Can be used by both member accounts that are managed using
    # Organizations and accounts that were invited manually.
    #
    # @return [Types::GetMasterAccountResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetMasterAccountResponse#master #master} => Types::Invitation
    #
    # @example Response structure
    #
    #   resp.master.account_id #=> String
    #   resp.master.invitation_id #=> String
    #   resp.master.invited_at #=> Time
    #   resp.master.member_status #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/GetMasterAccount AWS API Documentation
    #
    # @overload get_master_account(params = {})
    # @param [Hash] params ({})
    def get_master_account(params = {}, options = {})
      req = build_request(:get_master_account, params)
      req.send_request(options)
    end

    # Returns the details for the Security Hub member accounts for the
    # specified account IDs.
    #
    # An administrator account can be either the delegated Security Hub
    # administrator account for an organization or an administrator account
    # that enabled Security Hub manually.
    #
    # The results include both member accounts that are managed using
    # Organizations and accounts that were invited manually.
    #
    # @option params [required, Array<String>] :account_ids
    #   The list of account IDs for the Security Hub member accounts to return
    #   the details for.
    #
    # @return [Types::GetMembersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetMembersResponse#members #members} => Array&lt;Types::Member&gt;
    #   * {Types::GetMembersResponse#unprocessed_accounts #unprocessed_accounts} => Array&lt;Types::Result&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_members({
    #     account_ids: ["NonEmptyString"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.members #=> Array
    #   resp.members[0].account_id #=> String
    #   resp.members[0].email #=> String
    #   resp.members[0].master_id #=> String
    #   resp.members[0].administrator_id #=> String
    #   resp.members[0].member_status #=> String
    #   resp.members[0].invited_at #=> Time
    #   resp.members[0].updated_at #=> Time
    #   resp.unprocessed_accounts #=> Array
    #   resp.unprocessed_accounts[0].account_id #=> String
    #   resp.unprocessed_accounts[0].processing_result #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/GetMembers AWS API Documentation
    #
    # @overload get_members(params = {})
    # @param [Hash] params ({})
    def get_members(params = {}, options = {})
      req = build_request(:get_members, params)
      req.send_request(options)
    end

    # Invites other Amazon Web Services accounts to become member accounts
    # for the Security Hub administrator account that the invitation is sent
    # from.
    #
    # This operation is only used to invite accounts that do not belong to
    # an organization. Organization accounts do not receive invitations.
    #
    # Before you can use this action to invite a member, you must first use
    # the `CreateMembers` action to create the member account in Security
    # Hub.
    #
    # When the account owner enables Security Hub and accepts the invitation
    # to become a member account, the administrator account can view the
    # findings generated from the member account.
    #
    # @option params [required, Array<String>] :account_ids
    #   The list of account IDs of the Amazon Web Services accounts to invite
    #   to Security Hub as members.
    #
    # @return [Types::InviteMembersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::InviteMembersResponse#unprocessed_accounts #unprocessed_accounts} => Array&lt;Types::Result&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.invite_members({
    #     account_ids: ["NonEmptyString"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.unprocessed_accounts #=> Array
    #   resp.unprocessed_accounts[0].account_id #=> String
    #   resp.unprocessed_accounts[0].processing_result #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/InviteMembers AWS API Documentation
    #
    # @overload invite_members(params = {})
    # @param [Hash] params ({})
    def invite_members(params = {}, options = {})
      req = build_request(:invite_members, params)
      req.send_request(options)
    end

    # Lists all findings-generating solutions (products) that you are
    # subscribed to receive findings from in Security Hub.
    #
    # @option params [String] :next_token
    #   The token that is required for pagination. On your first call to the
    #   `ListEnabledProductsForImport` operation, set the value of this
    #   parameter to `NULL`.
    #
    #   For subsequent calls to the operation, to continue listing data, set
    #   the value of this parameter to the value returned from the previous
    #   response.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return in the response.
    #
    # @return [Types::ListEnabledProductsForImportResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListEnabledProductsForImportResponse#product_subscriptions #product_subscriptions} => Array&lt;String&gt;
    #   * {Types::ListEnabledProductsForImportResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_enabled_products_for_import({
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.product_subscriptions #=> Array
    #   resp.product_subscriptions[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/ListEnabledProductsForImport AWS API Documentation
    #
    # @overload list_enabled_products_for_import(params = {})
    # @param [Hash] params ({})
    def list_enabled_products_for_import(params = {}, options = {})
      req = build_request(:list_enabled_products_for_import, params)
      req.send_request(options)
    end

    # If finding aggregation is enabled, then `ListFindingAggregators`
    # returns the ARN of the finding aggregator. You can run this operation
    # from any Region.
    #
    # @option params [String] :next_token
    #   The token returned with the previous set of results. Identifies the
    #   next set of results to return.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return. This operation currently only
    #   returns a single result.
    #
    # @return [Types::ListFindingAggregatorsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListFindingAggregatorsResponse#finding_aggregators #finding_aggregators} => Array&lt;Types::FindingAggregator&gt;
    #   * {Types::ListFindingAggregatorsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_finding_aggregators({
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.finding_aggregators #=> Array
    #   resp.finding_aggregators[0].finding_aggregator_arn #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/ListFindingAggregators AWS API Documentation
    #
    # @overload list_finding_aggregators(params = {})
    # @param [Hash] params ({})
    def list_finding_aggregators(params = {}, options = {})
      req = build_request(:list_finding_aggregators, params)
      req.send_request(options)
    end

    # Lists all Security Hub membership invitations that were sent to the
    # current Amazon Web Services account.
    #
    # This operation is only used by accounts that are managed by
    # invitation. Accounts that are managed using the integration with
    # Organizations do not receive invitations.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return in the response.
    #
    # @option params [String] :next_token
    #   The token that is required for pagination. On your first call to the
    #   `ListInvitations` operation, set the value of this parameter to
    #   `NULL`.
    #
    #   For subsequent calls to the operation, to continue listing data, set
    #   the value of this parameter to the value returned from the previous
    #   response.
    #
    # @return [Types::ListInvitationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListInvitationsResponse#invitations #invitations} => Array&lt;Types::Invitation&gt;
    #   * {Types::ListInvitationsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_invitations({
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.invitations #=> Array
    #   resp.invitations[0].account_id #=> String
    #   resp.invitations[0].invitation_id #=> String
    #   resp.invitations[0].invited_at #=> Time
    #   resp.invitations[0].member_status #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/ListInvitations AWS API Documentation
    #
    # @overload list_invitations(params = {})
    # @param [Hash] params ({})
    def list_invitations(params = {}, options = {})
      req = build_request(:list_invitations, params)
      req.send_request(options)
    end

    # Lists details about all member accounts for the current Security Hub
    # administrator account.
    #
    # The results include both member accounts that belong to an
    # organization and member accounts that were invited manually.
    #
    # @option params [Boolean] :only_associated
    #   Specifies which member accounts to include in the response based on
    #   their relationship status with the administrator account. The default
    #   value is `TRUE`.
    #
    #   If `OnlyAssociated` is set to `TRUE`, the response includes member
    #   accounts whose relationship status with the administrator account is
    #   set to `ENABLED`.
    #
    #   If `OnlyAssociated` is set to `FALSE`, the response includes all
    #   existing member accounts.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return in the response.
    #
    # @option params [String] :next_token
    #   The token that is required for pagination. On your first call to the
    #   `ListMembers` operation, set the value of this parameter to `NULL`.
    #
    #   For subsequent calls to the operation, to continue listing data, set
    #   the value of this parameter to the value returned from the previous
    #   response.
    #
    # @return [Types::ListMembersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListMembersResponse#members #members} => Array&lt;Types::Member&gt;
    #   * {Types::ListMembersResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_members({
    #     only_associated: false,
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.members #=> Array
    #   resp.members[0].account_id #=> String
    #   resp.members[0].email #=> String
    #   resp.members[0].master_id #=> String
    #   resp.members[0].administrator_id #=> String
    #   resp.members[0].member_status #=> String
    #   resp.members[0].invited_at #=> Time
    #   resp.members[0].updated_at #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/ListMembers AWS API Documentation
    #
    # @overload list_members(params = {})
    # @param [Hash] params ({})
    def list_members(params = {}, options = {})
      req = build_request(:list_members, params)
      req.send_request(options)
    end

    # Lists the Security Hub administrator accounts. Can only be called by
    # the organization management account.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return in the response.
    #
    # @option params [String] :next_token
    #   The token that is required for pagination. On your first call to the
    #   `ListOrganizationAdminAccounts` operation, set the value of this
    #   parameter to `NULL`. For subsequent calls to the operation, to
    #   continue listing data, set the value of this parameter to the value
    #   returned from the previous response.
    #
    # @return [Types::ListOrganizationAdminAccountsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListOrganizationAdminAccountsResponse#admin_accounts #admin_accounts} => Array&lt;Types::AdminAccount&gt;
    #   * {Types::ListOrganizationAdminAccountsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_organization_admin_accounts({
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.admin_accounts #=> Array
    #   resp.admin_accounts[0].account_id #=> String
    #   resp.admin_accounts[0].status #=> String, one of "ENABLED", "DISABLE_IN_PROGRESS"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/ListOrganizationAdminAccounts AWS API Documentation
    #
    # @overload list_organization_admin_accounts(params = {})
    # @param [Hash] params ({})
    def list_organization_admin_accounts(params = {}, options = {})
      req = build_request(:list_organization_admin_accounts, params)
      req.send_request(options)
    end

    # Returns a list of tags associated with a resource.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the resource to retrieve tags for.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "ResourceArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Adds one or more tags to a resource.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the resource to apply the tags to.
    #
    # @option params [required, Hash<String,String>] :tags
    #   The tags to add to the resource. You can add up to 50 tags at a time.
    #   The tag keys can be no longer than 128 characters. The tag values can
    #   be no longer than 256 characters.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "ResourceArn", # required
    #     tags: { # required
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes one or more tags from a resource.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the resource to remove the tags from.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The tag keys associated with the tags to remove from the resource. You
    #   can remove up to 50 tags at a time.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates the name and description of a custom action target in Security
    # Hub.
    #
    # @option params [required, String] :action_target_arn
    #   The ARN of the custom action target to update.
    #
    # @option params [String] :name
    #   The updated name of the custom action target.
    #
    # @option params [String] :description
    #   The updated description for the custom action target.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_action_target({
    #     action_target_arn: "NonEmptyString", # required
    #     name: "NonEmptyString",
    #     description: "NonEmptyString",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/UpdateActionTarget AWS API Documentation
    #
    # @overload update_action_target(params = {})
    # @param [Hash] params ({})
    def update_action_target(params = {}, options = {})
      req = build_request(:update_action_target, params)
      req.send_request(options)
    end

    # Updates the finding aggregation configuration. Used to update the
    # Region linking mode and the list of included or excluded Regions. You
    # cannot use `UpdateFindingAggregator` to change the aggregation Region.
    #
    # You must run `UpdateFindingAggregator` from the current aggregation
    # Region.
    #
    # @option params [required, String] :finding_aggregator_arn
    #   The ARN of the finding aggregator. To obtain the ARN, use
    #   `ListFindingAggregators`.
    #
    # @option params [required, String] :region_linking_mode
    #   Indicates whether to aggregate findings from all of the available
    #   Regions in the current partition. Also determines whether to
    #   automatically aggregate findings from new Regions as Security Hub
    #   supports them and you opt into them.
    #
    #   The selected option also determines how to use the Regions provided in
    #   the Regions list.
    #
    #   The options are as follows:
    #
    #   * `ALL_REGIONS` - Indicates to aggregate findings from all of the
    #     Regions where Security Hub is enabled. When you choose this option,
    #     Security Hub also automatically aggregates findings from new Regions
    #     as Security Hub supports them and you opt into them.
    #
    #   * `ALL_REGIONS_EXCEPT_SPECIFIED` - Indicates to aggregate findings
    #     from all of the Regions where Security Hub is enabled, except for
    #     the Regions listed in the `Regions` parameter. When you choose this
    #     option, Security Hub also automatically aggregates findings from new
    #     Regions as Security Hub supports them and you opt into them.
    #
    #   * `SPECIFIED_REGIONS` - Indicates to aggregate findings only from the
    #     Regions listed in the `Regions` parameter. Security Hub does not
    #     automatically aggregate findings from new Regions.
    #
    # @option params [Array<String>] :regions
    #   If `RegionLinkingMode` is `ALL_REGIONS_EXCEPT_SPECIFIED`, then this is
    #   a space-separated list of Regions that do not aggregate findings to
    #   the aggregation Region.
    #
    #   If `RegionLinkingMode` is `SPECIFIED_REGIONS`, then this is a
    #   space-separated list of Regions that do aggregate findings to the
    #   aggregation Region.
    #
    # @return [Types::UpdateFindingAggregatorResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateFindingAggregatorResponse#finding_aggregator_arn #finding_aggregator_arn} => String
    #   * {Types::UpdateFindingAggregatorResponse#finding_aggregation_region #finding_aggregation_region} => String
    #   * {Types::UpdateFindingAggregatorResponse#region_linking_mode #region_linking_mode} => String
    #   * {Types::UpdateFindingAggregatorResponse#regions #regions} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_finding_aggregator({
    #     finding_aggregator_arn: "NonEmptyString", # required
    #     region_linking_mode: "NonEmptyString", # required
    #     regions: ["NonEmptyString"],
    #   })
    #
    # @example Response structure
    #
    #   resp.finding_aggregator_arn #=> String
    #   resp.finding_aggregation_region #=> String
    #   resp.region_linking_mode #=> String
    #   resp.regions #=> Array
    #   resp.regions[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/UpdateFindingAggregator AWS API Documentation
    #
    # @overload update_finding_aggregator(params = {})
    # @param [Hash] params ({})
    def update_finding_aggregator(params = {}, options = {})
      req = build_request(:update_finding_aggregator, params)
      req.send_request(options)
    end

    # `UpdateFindings` is deprecated. Instead of `UpdateFindings`, use
    # `BatchUpdateFindings`.
    #
    # Updates the `Note` and `RecordState` of the Security Hub-aggregated
    # findings that the filter attributes specify. Any member account that
    # can view the finding also sees the update to the finding.
    #
    # @option params [required, Types::AwsSecurityFindingFilters] :filters
    #   A collection of attributes that specify which findings you want to
    #   update.
    #
    # @option params [Types::NoteUpdate] :note
    #   The updated note for the finding.
    #
    # @option params [String] :record_state
    #   The updated record state for the finding.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_findings({
    #     filters: { # required
    #       product_arn: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       aws_account_id: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       id: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       generator_id: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       region: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       type: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       first_observed_at: [
    #         {
    #           start: "NonEmptyString",
    #           end: "NonEmptyString",
    #           date_range: {
    #             value: 1,
    #             unit: "DAYS", # accepts DAYS
    #           },
    #         },
    #       ],
    #       last_observed_at: [
    #         {
    #           start: "NonEmptyString",
    #           end: "NonEmptyString",
    #           date_range: {
    #             value: 1,
    #             unit: "DAYS", # accepts DAYS
    #           },
    #         },
    #       ],
    #       created_at: [
    #         {
    #           start: "NonEmptyString",
    #           end: "NonEmptyString",
    #           date_range: {
    #             value: 1,
    #             unit: "DAYS", # accepts DAYS
    #           },
    #         },
    #       ],
    #       updated_at: [
    #         {
    #           start: "NonEmptyString",
    #           end: "NonEmptyString",
    #           date_range: {
    #             value: 1,
    #             unit: "DAYS", # accepts DAYS
    #           },
    #         },
    #       ],
    #       severity_product: [
    #         {
    #           gte: 1.0,
    #           lte: 1.0,
    #           eq: 1.0,
    #         },
    #       ],
    #       severity_normalized: [
    #         {
    #           gte: 1.0,
    #           lte: 1.0,
    #           eq: 1.0,
    #         },
    #       ],
    #       severity_label: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       confidence: [
    #         {
    #           gte: 1.0,
    #           lte: 1.0,
    #           eq: 1.0,
    #         },
    #       ],
    #       criticality: [
    #         {
    #           gte: 1.0,
    #           lte: 1.0,
    #           eq: 1.0,
    #         },
    #       ],
    #       title: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       description: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       recommendation_text: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       source_url: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       product_fields: [
    #         {
    #           key: "NonEmptyString",
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, NOT_EQUALS
    #         },
    #       ],
    #       product_name: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       company_name: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       user_defined_fields: [
    #         {
    #           key: "NonEmptyString",
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, NOT_EQUALS
    #         },
    #       ],
    #       malware_name: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       malware_type: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       malware_path: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       malware_state: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       network_direction: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       network_protocol: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       network_source_ip_v4: [
    #         {
    #           cidr: "NonEmptyString",
    #         },
    #       ],
    #       network_source_ip_v6: [
    #         {
    #           cidr: "NonEmptyString",
    #         },
    #       ],
    #       network_source_port: [
    #         {
    #           gte: 1.0,
    #           lte: 1.0,
    #           eq: 1.0,
    #         },
    #       ],
    #       network_source_domain: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       network_source_mac: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       network_destination_ip_v4: [
    #         {
    #           cidr: "NonEmptyString",
    #         },
    #       ],
    #       network_destination_ip_v6: [
    #         {
    #           cidr: "NonEmptyString",
    #         },
    #       ],
    #       network_destination_port: [
    #         {
    #           gte: 1.0,
    #           lte: 1.0,
    #           eq: 1.0,
    #         },
    #       ],
    #       network_destination_domain: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       process_name: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       process_path: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       process_pid: [
    #         {
    #           gte: 1.0,
    #           lte: 1.0,
    #           eq: 1.0,
    #         },
    #       ],
    #       process_parent_pid: [
    #         {
    #           gte: 1.0,
    #           lte: 1.0,
    #           eq: 1.0,
    #         },
    #       ],
    #       process_launched_at: [
    #         {
    #           start: "NonEmptyString",
    #           end: "NonEmptyString",
    #           date_range: {
    #             value: 1,
    #             unit: "DAYS", # accepts DAYS
    #           },
    #         },
    #       ],
    #       process_terminated_at: [
    #         {
    #           start: "NonEmptyString",
    #           end: "NonEmptyString",
    #           date_range: {
    #             value: 1,
    #             unit: "DAYS", # accepts DAYS
    #           },
    #         },
    #       ],
    #       threat_intel_indicator_type: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       threat_intel_indicator_value: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       threat_intel_indicator_category: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       threat_intel_indicator_last_observed_at: [
    #         {
    #           start: "NonEmptyString",
    #           end: "NonEmptyString",
    #           date_range: {
    #             value: 1,
    #             unit: "DAYS", # accepts DAYS
    #           },
    #         },
    #       ],
    #       threat_intel_indicator_source: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       threat_intel_indicator_source_url: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       resource_type: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       resource_id: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       resource_partition: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       resource_region: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       resource_tags: [
    #         {
    #           key: "NonEmptyString",
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, NOT_EQUALS
    #         },
    #       ],
    #       resource_aws_ec2_instance_type: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       resource_aws_ec2_instance_image_id: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       resource_aws_ec2_instance_ip_v4_addresses: [
    #         {
    #           cidr: "NonEmptyString",
    #         },
    #       ],
    #       resource_aws_ec2_instance_ip_v6_addresses: [
    #         {
    #           cidr: "NonEmptyString",
    #         },
    #       ],
    #       resource_aws_ec2_instance_key_name: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       resource_aws_ec2_instance_iam_instance_profile_arn: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       resource_aws_ec2_instance_vpc_id: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       resource_aws_ec2_instance_subnet_id: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       resource_aws_ec2_instance_launched_at: [
    #         {
    #           start: "NonEmptyString",
    #           end: "NonEmptyString",
    #           date_range: {
    #             value: 1,
    #             unit: "DAYS", # accepts DAYS
    #           },
    #         },
    #       ],
    #       resource_aws_s3_bucket_owner_id: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       resource_aws_s3_bucket_owner_name: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       resource_aws_iam_access_key_user_name: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       resource_aws_iam_access_key_principal_name: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       resource_aws_iam_access_key_status: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       resource_aws_iam_access_key_created_at: [
    #         {
    #           start: "NonEmptyString",
    #           end: "NonEmptyString",
    #           date_range: {
    #             value: 1,
    #             unit: "DAYS", # accepts DAYS
    #           },
    #         },
    #       ],
    #       resource_aws_iam_user_user_name: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       resource_container_name: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       resource_container_image_id: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       resource_container_image_name: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       resource_container_launched_at: [
    #         {
    #           start: "NonEmptyString",
    #           end: "NonEmptyString",
    #           date_range: {
    #             value: 1,
    #             unit: "DAYS", # accepts DAYS
    #           },
    #         },
    #       ],
    #       resource_details_other: [
    #         {
    #           key: "NonEmptyString",
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, NOT_EQUALS
    #         },
    #       ],
    #       compliance_status: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       verification_state: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       workflow_state: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       workflow_status: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       record_state: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       related_findings_product_arn: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       related_findings_id: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       note_text: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       note_updated_at: [
    #         {
    #           start: "NonEmptyString",
    #           end: "NonEmptyString",
    #           date_range: {
    #             value: 1,
    #             unit: "DAYS", # accepts DAYS
    #           },
    #         },
    #       ],
    #       note_updated_by: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       keyword: [
    #         {
    #           value: "NonEmptyString",
    #         },
    #       ],
    #       finding_provider_fields_confidence: [
    #         {
    #           gte: 1.0,
    #           lte: 1.0,
    #           eq: 1.0,
    #         },
    #       ],
    #       finding_provider_fields_criticality: [
    #         {
    #           gte: 1.0,
    #           lte: 1.0,
    #           eq: 1.0,
    #         },
    #       ],
    #       finding_provider_fields_related_findings_id: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       finding_provider_fields_related_findings_product_arn: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       finding_provider_fields_severity_label: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       finding_provider_fields_severity_original: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       finding_provider_fields_types: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       sample: [
    #         {
    #           value: false,
    #         },
    #       ],
    #     },
    #     note: {
    #       text: "NonEmptyString", # required
    #       updated_by: "NonEmptyString", # required
    #     },
    #     record_state: "ACTIVE", # accepts ACTIVE, ARCHIVED
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/UpdateFindings AWS API Documentation
    #
    # @overload update_findings(params = {})
    # @param [Hash] params ({})
    def update_findings(params = {}, options = {})
      req = build_request(:update_findings, params)
      req.send_request(options)
    end

    # Updates the Security Hub insight identified by the specified insight
    # ARN.
    #
    # @option params [required, String] :insight_arn
    #   The ARN of the insight that you want to update.
    #
    # @option params [String] :name
    #   The updated name for the insight.
    #
    # @option params [Types::AwsSecurityFindingFilters] :filters
    #   The updated filters that define this insight.
    #
    # @option params [String] :group_by_attribute
    #   The updated `GroupBy` attribute that defines this insight.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_insight({
    #     insight_arn: "NonEmptyString", # required
    #     name: "NonEmptyString",
    #     filters: {
    #       product_arn: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       aws_account_id: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       id: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       generator_id: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       region: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       type: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       first_observed_at: [
    #         {
    #           start: "NonEmptyString",
    #           end: "NonEmptyString",
    #           date_range: {
    #             value: 1,
    #             unit: "DAYS", # accepts DAYS
    #           },
    #         },
    #       ],
    #       last_observed_at: [
    #         {
    #           start: "NonEmptyString",
    #           end: "NonEmptyString",
    #           date_range: {
    #             value: 1,
    #             unit: "DAYS", # accepts DAYS
    #           },
    #         },
    #       ],
    #       created_at: [
    #         {
    #           start: "NonEmptyString",
    #           end: "NonEmptyString",
    #           date_range: {
    #             value: 1,
    #             unit: "DAYS", # accepts DAYS
    #           },
    #         },
    #       ],
    #       updated_at: [
    #         {
    #           start: "NonEmptyString",
    #           end: "NonEmptyString",
    #           date_range: {
    #             value: 1,
    #             unit: "DAYS", # accepts DAYS
    #           },
    #         },
    #       ],
    #       severity_product: [
    #         {
    #           gte: 1.0,
    #           lte: 1.0,
    #           eq: 1.0,
    #         },
    #       ],
    #       severity_normalized: [
    #         {
    #           gte: 1.0,
    #           lte: 1.0,
    #           eq: 1.0,
    #         },
    #       ],
    #       severity_label: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       confidence: [
    #         {
    #           gte: 1.0,
    #           lte: 1.0,
    #           eq: 1.0,
    #         },
    #       ],
    #       criticality: [
    #         {
    #           gte: 1.0,
    #           lte: 1.0,
    #           eq: 1.0,
    #         },
    #       ],
    #       title: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       description: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       recommendation_text: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       source_url: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       product_fields: [
    #         {
    #           key: "NonEmptyString",
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, NOT_EQUALS
    #         },
    #       ],
    #       product_name: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       company_name: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       user_defined_fields: [
    #         {
    #           key: "NonEmptyString",
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, NOT_EQUALS
    #         },
    #       ],
    #       malware_name: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       malware_type: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       malware_path: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       malware_state: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       network_direction: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       network_protocol: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       network_source_ip_v4: [
    #         {
    #           cidr: "NonEmptyString",
    #         },
    #       ],
    #       network_source_ip_v6: [
    #         {
    #           cidr: "NonEmptyString",
    #         },
    #       ],
    #       network_source_port: [
    #         {
    #           gte: 1.0,
    #           lte: 1.0,
    #           eq: 1.0,
    #         },
    #       ],
    #       network_source_domain: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       network_source_mac: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       network_destination_ip_v4: [
    #         {
    #           cidr: "NonEmptyString",
    #         },
    #       ],
    #       network_destination_ip_v6: [
    #         {
    #           cidr: "NonEmptyString",
    #         },
    #       ],
    #       network_destination_port: [
    #         {
    #           gte: 1.0,
    #           lte: 1.0,
    #           eq: 1.0,
    #         },
    #       ],
    #       network_destination_domain: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       process_name: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       process_path: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       process_pid: [
    #         {
    #           gte: 1.0,
    #           lte: 1.0,
    #           eq: 1.0,
    #         },
    #       ],
    #       process_parent_pid: [
    #         {
    #           gte: 1.0,
    #           lte: 1.0,
    #           eq: 1.0,
    #         },
    #       ],
    #       process_launched_at: [
    #         {
    #           start: "NonEmptyString",
    #           end: "NonEmptyString",
    #           date_range: {
    #             value: 1,
    #             unit: "DAYS", # accepts DAYS
    #           },
    #         },
    #       ],
    #       process_terminated_at: [
    #         {
    #           start: "NonEmptyString",
    #           end: "NonEmptyString",
    #           date_range: {
    #             value: 1,
    #             unit: "DAYS", # accepts DAYS
    #           },
    #         },
    #       ],
    #       threat_intel_indicator_type: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       threat_intel_indicator_value: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       threat_intel_indicator_category: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       threat_intel_indicator_last_observed_at: [
    #         {
    #           start: "NonEmptyString",
    #           end: "NonEmptyString",
    #           date_range: {
    #             value: 1,
    #             unit: "DAYS", # accepts DAYS
    #           },
    #         },
    #       ],
    #       threat_intel_indicator_source: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       threat_intel_indicator_source_url: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       resource_type: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       resource_id: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       resource_partition: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       resource_region: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       resource_tags: [
    #         {
    #           key: "NonEmptyString",
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, NOT_EQUALS
    #         },
    #       ],
    #       resource_aws_ec2_instance_type: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       resource_aws_ec2_instance_image_id: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       resource_aws_ec2_instance_ip_v4_addresses: [
    #         {
    #           cidr: "NonEmptyString",
    #         },
    #       ],
    #       resource_aws_ec2_instance_ip_v6_addresses: [
    #         {
    #           cidr: "NonEmptyString",
    #         },
    #       ],
    #       resource_aws_ec2_instance_key_name: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       resource_aws_ec2_instance_iam_instance_profile_arn: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       resource_aws_ec2_instance_vpc_id: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       resource_aws_ec2_instance_subnet_id: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       resource_aws_ec2_instance_launched_at: [
    #         {
    #           start: "NonEmptyString",
    #           end: "NonEmptyString",
    #           date_range: {
    #             value: 1,
    #             unit: "DAYS", # accepts DAYS
    #           },
    #         },
    #       ],
    #       resource_aws_s3_bucket_owner_id: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       resource_aws_s3_bucket_owner_name: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       resource_aws_iam_access_key_user_name: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       resource_aws_iam_access_key_principal_name: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       resource_aws_iam_access_key_status: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       resource_aws_iam_access_key_created_at: [
    #         {
    #           start: "NonEmptyString",
    #           end: "NonEmptyString",
    #           date_range: {
    #             value: 1,
    #             unit: "DAYS", # accepts DAYS
    #           },
    #         },
    #       ],
    #       resource_aws_iam_user_user_name: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       resource_container_name: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       resource_container_image_id: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       resource_container_image_name: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       resource_container_launched_at: [
    #         {
    #           start: "NonEmptyString",
    #           end: "NonEmptyString",
    #           date_range: {
    #             value: 1,
    #             unit: "DAYS", # accepts DAYS
    #           },
    #         },
    #       ],
    #       resource_details_other: [
    #         {
    #           key: "NonEmptyString",
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, NOT_EQUALS
    #         },
    #       ],
    #       compliance_status: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       verification_state: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       workflow_state: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       workflow_status: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       record_state: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       related_findings_product_arn: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       related_findings_id: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       note_text: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       note_updated_at: [
    #         {
    #           start: "NonEmptyString",
    #           end: "NonEmptyString",
    #           date_range: {
    #             value: 1,
    #             unit: "DAYS", # accepts DAYS
    #           },
    #         },
    #       ],
    #       note_updated_by: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       keyword: [
    #         {
    #           value: "NonEmptyString",
    #         },
    #       ],
    #       finding_provider_fields_confidence: [
    #         {
    #           gte: 1.0,
    #           lte: 1.0,
    #           eq: 1.0,
    #         },
    #       ],
    #       finding_provider_fields_criticality: [
    #         {
    #           gte: 1.0,
    #           lte: 1.0,
    #           eq: 1.0,
    #         },
    #       ],
    #       finding_provider_fields_related_findings_id: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       finding_provider_fields_related_findings_product_arn: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       finding_provider_fields_severity_label: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       finding_provider_fields_severity_original: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       finding_provider_fields_types: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #         },
    #       ],
    #       sample: [
    #         {
    #           value: false,
    #         },
    #       ],
    #     },
    #     group_by_attribute: "NonEmptyString",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/UpdateInsight AWS API Documentation
    #
    # @overload update_insight(params = {})
    # @param [Hash] params ({})
    def update_insight(params = {}, options = {})
      req = build_request(:update_insight, params)
      req.send_request(options)
    end

    # Used to update the configuration related to Organizations. Can only be
    # called from a Security Hub administrator account.
    #
    # @option params [required, Boolean] :auto_enable
    #   Whether to automatically enable Security Hub for new accounts in the
    #   organization.
    #
    #   By default, this is `false`, and new accounts are not added
    #   automatically.
    #
    #   To automatically enable Security Hub for new accounts, set this to
    #   `true`.
    #
    # @option params [String] :auto_enable_standards
    #   Whether to automatically enable Security Hub [default standards][1]
    #   for new member accounts in the organization.
    #
    #   By default, this parameter is equal to `DEFAULT`, and new member
    #   accounts are automatically enabled with default Security Hub
    #   standards.
    #
    #   To opt out of enabling default standards for new member accounts, set
    #   this parameter equal to `NONE`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/securityhub/latest/userguide/securityhub-standards-enable-disable.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_organization_configuration({
    #     auto_enable: false, # required
    #     auto_enable_standards: "NONE", # accepts NONE, DEFAULT
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/UpdateOrganizationConfiguration AWS API Documentation
    #
    # @overload update_organization_configuration(params = {})
    # @param [Hash] params ({})
    def update_organization_configuration(params = {}, options = {})
      req = build_request(:update_organization_configuration, params)
      req.send_request(options)
    end

    # Updates configuration options for Security Hub.
    #
    # @option params [Boolean] :auto_enable_controls
    #   Whether to automatically enable new controls when they are added to
    #   standards that are enabled.
    #
    #   By default, this is set to `true`, and new controls are enabled
    #   automatically. To not automatically enable new controls, set this to
    #   `false`.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_security_hub_configuration({
    #     auto_enable_controls: false,
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/UpdateSecurityHubConfiguration AWS API Documentation
    #
    # @overload update_security_hub_configuration(params = {})
    # @param [Hash] params ({})
    def update_security_hub_configuration(params = {}, options = {})
      req = build_request(:update_security_hub_configuration, params)
      req.send_request(options)
    end

    # Used to control whether an individual security standard control is
    # enabled or disabled.
    #
    # @option params [required, String] :standards_control_arn
    #   The ARN of the security standard control to enable or disable.
    #
    # @option params [String] :control_status
    #   The updated status of the security standard control.
    #
    # @option params [String] :disabled_reason
    #   A description of the reason why you are disabling a security standard
    #   control. If you are disabling a control, then this is required.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_standards_control({
    #     standards_control_arn: "NonEmptyString", # required
    #     control_status: "ENABLED", # accepts ENABLED, DISABLED
    #     disabled_reason: "NonEmptyString",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/UpdateStandardsControl AWS API Documentation
    #
    # @overload update_standards_control(params = {})
    # @param [Hash] params ({})
    def update_standards_control(params = {}, options = {})
      req = build_request(:update_standards_control, params)
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
      context[:gem_name] = 'aws-sdk-securityhub'
      context[:gem_version] = '1.75.0'
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
