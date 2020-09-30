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

    # Accepts the invitation to be a member account and be monitored by the
    # Security Hub master account that the invitation was sent from.
    #
    # When the member account accepts the invitation, permission is granted
    # to the master account to view findings generated in the member
    # account.
    #
    # @option params [required, String] :master_id
    #   The account ID of the Security Hub master account that sent the
    #   invitation.
    #
    # @option params [required, String] :invitation_id
    #   The ID of the invitation sent from the Security Hub master account.
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
    # For more information, see [Security Standards][1] section of the *AWS
    # Security Hub User Guide*.
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
    # obtain the ARN for a standard, use the ` DescribeStandards `
    # operation.
    #
    # For more information, see the [Security Standards][1] section of the
    # *AWS Security Hub User Guide*.
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
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/BatchEnableStandards AWS API Documentation
    #
    # @overload batch_enable_standards(params = {})
    # @param [Hash] params ({})
    def batch_enable_standards(params = {}, options = {})
      req = build_request(:batch_enable_standards, params)
      req.send_request(options)
    end

    # Imports security findings generated from an integrated third-party
    # product into Security Hub. This action is requested by the integrated
    # product to import its findings into Security Hub.
    #
    # The maximum allowed size for a finding is 240 Kb. An error is returned
    # for any finding larger than 240 Kb.
    #
    # After a finding is created, `BatchImportFindings` cannot be used to
    # update the following finding fields and objects, which Security Hub
    # customers use to manage their investigation workflow.
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
    # @option params [required, Array<Types::AwsSecurityFinding>] :findings
    #   A list of findings to import. To successfully import a finding, it
    #   must follow the [AWS Security Finding Format][1]. Maximum of 100
    #   findings per request.
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
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_import_findings({
    #     findings: [ # required
    #       {
    #         schema_version: "NonEmptyString", # required
    #         id: "NonEmptyString", # required
    #         product_arn: "NonEmptyString", # required
    #         generator_id: "NonEmptyString", # required
    #         aws_account_id: "NonEmptyString", # required
    #         types: ["NonEmptyString"], # required
    #         first_observed_at: "NonEmptyString",
    #         last_observed_at: "NonEmptyString",
    #         created_at: "NonEmptyString", # required
    #         updated_at: "NonEmptyString", # required
    #         severity: { # required
    #           product: 1.0,
    #           label: "INFORMATIONAL", # accepts INFORMATIONAL, LOW, MEDIUM, HIGH, CRITICAL
    #           normalized: 1,
    #           original: "NonEmptyString",
    #         },
    #         confidence: 1,
    #         criticality: 1,
    #         title: "NonEmptyString", # required
    #         description: "NonEmptyString", # required
    #         remediation: {
    #           recommendation: {
    #             text: "NonEmptyString",
    #             url: "NonEmptyString",
    #           },
    #         },
    #         source_url: "NonEmptyString",
    #         product_fields: {
    #           "NonEmptyString" => "NonEmptyString",
    #         },
    #         user_defined_fields: {
    #           "NonEmptyString" => "NonEmptyString",
    #         },
    #         malware: [
    #           {
    #             name: "NonEmptyString", # required
    #             type: "ADWARE", # accepts ADWARE, BLENDED_THREAT, BOTNET_AGENT, COIN_MINER, EXPLOIT_KIT, KEYLOGGER, MACRO, POTENTIALLY_UNWANTED, SPYWARE, RANSOMWARE, REMOTE_ACCESS, ROOTKIT, TROJAN, VIRUS, WORM
    #             path: "NonEmptyString",
    #             state: "OBSERVED", # accepts OBSERVED, REMOVAL_FAILED, REMOVED
    #           },
    #         ],
    #         network: {
    #           direction: "IN", # accepts IN, OUT
    #           protocol: "NonEmptyString",
    #           open_port_range: {
    #             begin: 1,
    #             end: 1,
    #           },
    #           source_ip_v4: "NonEmptyString",
    #           source_ip_v6: "NonEmptyString",
    #           source_port: 1,
    #           source_domain: "NonEmptyString",
    #           source_mac: "NonEmptyString",
    #           destination_ip_v4: "NonEmptyString",
    #           destination_ip_v6: "NonEmptyString",
    #           destination_port: 1,
    #           destination_domain: "NonEmptyString",
    #         },
    #         network_path: [
    #           {
    #             component_id: "NonEmptyString",
    #             component_type: "NonEmptyString",
    #             egress: {
    #               protocol: "NonEmptyString",
    #               destination: {
    #                 address: ["NonEmptyString"],
    #                 port_ranges: [
    #                   {
    #                     begin: 1,
    #                     end: 1,
    #                   },
    #                 ],
    #               },
    #               source: {
    #                 address: ["NonEmptyString"],
    #                 port_ranges: [
    #                   {
    #                     begin: 1,
    #                     end: 1,
    #                   },
    #                 ],
    #               },
    #             },
    #             ingress: {
    #               protocol: "NonEmptyString",
    #               destination: {
    #                 address: ["NonEmptyString"],
    #                 port_ranges: [
    #                   {
    #                     begin: 1,
    #                     end: 1,
    #                   },
    #                 ],
    #               },
    #               source: {
    #                 address: ["NonEmptyString"],
    #                 port_ranges: [
    #                   {
    #                     begin: 1,
    #                     end: 1,
    #                   },
    #                 ],
    #               },
    #             },
    #           },
    #         ],
    #         process: {
    #           name: "NonEmptyString",
    #           path: "NonEmptyString",
    #           pid: 1,
    #           parent_pid: 1,
    #           launched_at: "NonEmptyString",
    #           terminated_at: "NonEmptyString",
    #         },
    #         threat_intel_indicators: [
    #           {
    #             type: "DOMAIN", # accepts DOMAIN, EMAIL_ADDRESS, HASH_MD5, HASH_SHA1, HASH_SHA256, HASH_SHA512, IPV4_ADDRESS, IPV6_ADDRESS, MUTEX, PROCESS, URL
    #             value: "NonEmptyString",
    #             category: "BACKDOOR", # accepts BACKDOOR, CARD_STEALER, COMMAND_AND_CONTROL, DROP_SITE, EXPLOIT_SITE, KEYLOGGER
    #             last_observed_at: "NonEmptyString",
    #             source: "NonEmptyString",
    #             source_url: "NonEmptyString",
    #           },
    #         ],
    #         resources: [ # required
    #           {
    #             type: "NonEmptyString", # required
    #             id: "NonEmptyString", # required
    #             partition: "aws", # accepts aws, aws-cn, aws-us-gov
    #             region: "NonEmptyString",
    #             resource_role: "NonEmptyString",
    #             tags: {
    #               "NonEmptyString" => "NonEmptyString",
    #             },
    #             details: {
    #               aws_auto_scaling_auto_scaling_group: {
    #                 launch_configuration_name: "NonEmptyString",
    #                 load_balancer_names: ["NonEmptyString"],
    #                 health_check_type: "NonEmptyString",
    #                 health_check_grace_period: 1,
    #                 created_time: "NonEmptyString",
    #               },
    #               aws_code_build_project: {
    #                 encryption_key: "NonEmptyString",
    #                 environment: {
    #                   certificate: "NonEmptyString",
    #                   image_pull_credentials_type: "NonEmptyString",
    #                   registry_credential: {
    #                     credential: "NonEmptyString",
    #                     credential_provider: "NonEmptyString",
    #                   },
    #                   type: "NonEmptyString",
    #                 },
    #                 name: "NonEmptyString",
    #                 source: {
    #                   type: "NonEmptyString",
    #                   location: "NonEmptyString",
    #                   git_clone_depth: 1,
    #                   insecure_ssl: false,
    #                 },
    #                 service_role: "NonEmptyString",
    #                 vpc_config: {
    #                   vpc_id: "NonEmptyString",
    #                   subnets: ["NonEmptyString"],
    #                   security_group_ids: ["NonEmptyString"],
    #                 },
    #               },
    #               aws_cloud_front_distribution: {
    #                 cache_behaviors: {
    #                   items: [
    #                     {
    #                       viewer_protocol_policy: "NonEmptyString",
    #                     },
    #                   ],
    #                 },
    #                 default_cache_behavior: {
    #                   viewer_protocol_policy: "NonEmptyString",
    #                 },
    #                 default_root_object: "NonEmptyString",
    #                 domain_name: "NonEmptyString",
    #                 etag: "NonEmptyString",
    #                 last_modified_time: "NonEmptyString",
    #                 logging: {
    #                   bucket: "NonEmptyString",
    #                   enabled: false,
    #                   include_cookies: false,
    #                   prefix: "NonEmptyString",
    #                 },
    #                 origins: {
    #                   items: [
    #                     {
    #                       domain_name: "NonEmptyString",
    #                       id: "NonEmptyString",
    #                       origin_path: "NonEmptyString",
    #                       s3_origin_config: {
    #                         origin_access_identity: "NonEmptyString",
    #                       },
    #                     },
    #                   ],
    #                 },
    #                 origin_groups: {
    #                   items: [
    #                     {
    #                       failover_criteria: {
    #                         status_codes: {
    #                           items: [1],
    #                           quantity: 1,
    #                         },
    #                       },
    #                     },
    #                   ],
    #                 },
    #                 status: "NonEmptyString",
    #                 web_acl_id: "NonEmptyString",
    #               },
    #               aws_ec2_instance: {
    #                 type: "NonEmptyString",
    #                 image_id: "NonEmptyString",
    #                 ip_v4_addresses: ["NonEmptyString"],
    #                 ip_v6_addresses: ["NonEmptyString"],
    #                 key_name: "NonEmptyString",
    #                 iam_instance_profile_arn: "NonEmptyString",
    #                 vpc_id: "NonEmptyString",
    #                 subnet_id: "NonEmptyString",
    #                 launched_at: "NonEmptyString",
    #               },
    #               aws_ec2_network_interface: {
    #                 attachment: {
    #                   attach_time: "NonEmptyString",
    #                   attachment_id: "NonEmptyString",
    #                   delete_on_termination: false,
    #                   device_index: 1,
    #                   instance_id: "NonEmptyString",
    #                   instance_owner_id: "NonEmptyString",
    #                   status: "NonEmptyString",
    #                 },
    #                 network_interface_id: "NonEmptyString",
    #                 security_groups: [
    #                   {
    #                     group_name: "NonEmptyString",
    #                     group_id: "NonEmptyString",
    #                   },
    #                 ],
    #                 source_dest_check: false,
    #               },
    #               aws_ec2_security_group: {
    #                 group_name: "NonEmptyString",
    #                 group_id: "NonEmptyString",
    #                 owner_id: "NonEmptyString",
    #                 vpc_id: "NonEmptyString",
    #                 ip_permissions: [
    #                   {
    #                     ip_protocol: "NonEmptyString",
    #                     from_port: 1,
    #                     to_port: 1,
    #                     user_id_group_pairs: [
    #                       {
    #                         group_id: "NonEmptyString",
    #                         group_name: "NonEmptyString",
    #                         peering_status: "NonEmptyString",
    #                         user_id: "NonEmptyString",
    #                         vpc_id: "NonEmptyString",
    #                         vpc_peering_connection_id: "NonEmptyString",
    #                       },
    #                     ],
    #                     ip_ranges: [
    #                       {
    #                         cidr_ip: "NonEmptyString",
    #                       },
    #                     ],
    #                     ipv_6_ranges: [
    #                       {
    #                         cidr_ipv_6: "NonEmptyString",
    #                       },
    #                     ],
    #                     prefix_list_ids: [
    #                       {
    #                         prefix_list_id: "NonEmptyString",
    #                       },
    #                     ],
    #                   },
    #                 ],
    #                 ip_permissions_egress: [
    #                   {
    #                     ip_protocol: "NonEmptyString",
    #                     from_port: 1,
    #                     to_port: 1,
    #                     user_id_group_pairs: [
    #                       {
    #                         group_id: "NonEmptyString",
    #                         group_name: "NonEmptyString",
    #                         peering_status: "NonEmptyString",
    #                         user_id: "NonEmptyString",
    #                         vpc_id: "NonEmptyString",
    #                         vpc_peering_connection_id: "NonEmptyString",
    #                       },
    #                     ],
    #                     ip_ranges: [
    #                       {
    #                         cidr_ip: "NonEmptyString",
    #                       },
    #                     ],
    #                     ipv_6_ranges: [
    #                       {
    #                         cidr_ipv_6: "NonEmptyString",
    #                       },
    #                     ],
    #                     prefix_list_ids: [
    #                       {
    #                         prefix_list_id: "NonEmptyString",
    #                       },
    #                     ],
    #                   },
    #                 ],
    #               },
    #               aws_ec2_volume: {
    #                 create_time: "NonEmptyString",
    #                 encrypted: false,
    #                 size: 1,
    #                 snapshot_id: "NonEmptyString",
    #                 status: "NonEmptyString",
    #                 kms_key_id: "NonEmptyString",
    #                 attachments: [
    #                   {
    #                     attach_time: "NonEmptyString",
    #                     delete_on_termination: false,
    #                     instance_id: "NonEmptyString",
    #                     status: "NonEmptyString",
    #                   },
    #                 ],
    #               },
    #               aws_ec2_vpc: {
    #                 cidr_block_association_set: [
    #                   {
    #                     association_id: "NonEmptyString",
    #                     cidr_block: "NonEmptyString",
    #                     cidr_block_state: "NonEmptyString",
    #                   },
    #                 ],
    #                 ipv_6_cidr_block_association_set: [
    #                   {
    #                     association_id: "NonEmptyString",
    #                     ipv_6_cidr_block: "NonEmptyString",
    #                     cidr_block_state: "NonEmptyString",
    #                   },
    #                 ],
    #                 dhcp_options_id: "NonEmptyString",
    #                 state: "NonEmptyString",
    #               },
    #               aws_ec2_eip: {
    #                 instance_id: "NonEmptyString",
    #                 public_ip: "NonEmptyString",
    #                 allocation_id: "NonEmptyString",
    #                 association_id: "NonEmptyString",
    #                 domain: "NonEmptyString",
    #                 public_ipv_4_pool: "NonEmptyString",
    #                 network_border_group: "NonEmptyString",
    #                 network_interface_id: "NonEmptyString",
    #                 network_interface_owner_id: "NonEmptyString",
    #                 private_ip_address: "NonEmptyString",
    #               },
    #               aws_elbv_2_load_balancer: {
    #                 availability_zones: [
    #                   {
    #                     zone_name: "NonEmptyString",
    #                     subnet_id: "NonEmptyString",
    #                   },
    #                 ],
    #                 canonical_hosted_zone_id: "NonEmptyString",
    #                 created_time: "NonEmptyString",
    #                 dns_name: "NonEmptyString",
    #                 ip_address_type: "NonEmptyString",
    #                 scheme: "NonEmptyString",
    #                 security_groups: ["NonEmptyString"],
    #                 state: {
    #                   code: "NonEmptyString",
    #                   reason: "NonEmptyString",
    #                 },
    #                 type: "NonEmptyString",
    #                 vpc_id: "NonEmptyString",
    #               },
    #               aws_elasticsearch_domain: {
    #                 access_policies: "NonEmptyString",
    #                 domain_endpoint_options: {
    #                   enforce_https: false,
    #                   tls_security_policy: "NonEmptyString",
    #                 },
    #                 domain_id: "NonEmptyString",
    #                 domain_name: "NonEmptyString",
    #                 endpoint: "NonEmptyString",
    #                 endpoints: {
    #                   "NonEmptyString" => "NonEmptyString",
    #                 },
    #                 elasticsearch_version: "NonEmptyString",
    #                 encryption_at_rest_options: {
    #                   enabled: false,
    #                   kms_key_id: "NonEmptyString",
    #                 },
    #                 node_to_node_encryption_options: {
    #                   enabled: false,
    #                 },
    #                 vpc_options: {
    #                   availability_zones: ["NonEmptyString"],
    #                   security_group_ids: ["NonEmptyString"],
    #                   subnet_ids: ["NonEmptyString"],
    #                   vpc_id: "NonEmptyString",
    #                 },
    #               },
    #               aws_s3_bucket: {
    #                 owner_id: "NonEmptyString",
    #                 owner_name: "NonEmptyString",
    #                 created_at: "NonEmptyString",
    #                 server_side_encryption_configuration: {
    #                   rules: [
    #                     {
    #                       apply_server_side_encryption_by_default: {
    #                         sse_algorithm: "NonEmptyString",
    #                         kms_master_key_id: "NonEmptyString",
    #                       },
    #                     },
    #                   ],
    #                 },
    #               },
    #               aws_s3_object: {
    #                 last_modified: "NonEmptyString",
    #                 etag: "NonEmptyString",
    #                 version_id: "NonEmptyString",
    #                 content_type: "NonEmptyString",
    #                 server_side_encryption: "NonEmptyString",
    #                 ssekms_key_id: "NonEmptyString",
    #               },
    #               aws_secrets_manager_secret: {
    #                 rotation_rules: {
    #                   automatically_after_days: 1,
    #                 },
    #                 rotation_occurred_within_frequency: false,
    #                 kms_key_id: "NonEmptyString",
    #                 rotation_enabled: false,
    #                 rotation_lambda_arn: "NonEmptyString",
    #                 deleted: false,
    #                 name: "NonEmptyString",
    #                 description: "NonEmptyString",
    #               },
    #               aws_iam_access_key: {
    #                 user_name: "NonEmptyString",
    #                 status: "Active", # accepts Active, Inactive
    #                 created_at: "NonEmptyString",
    #                 principal_id: "NonEmptyString",
    #                 principal_type: "NonEmptyString",
    #                 principal_name: "NonEmptyString",
    #                 account_id: "NonEmptyString",
    #                 access_key_id: "NonEmptyString",
    #                 session_context: {
    #                   attributes: {
    #                     mfa_authenticated: false,
    #                     creation_date: "NonEmptyString",
    #                   },
    #                   session_issuer: {
    #                     type: "NonEmptyString",
    #                     principal_id: "NonEmptyString",
    #                     arn: "NonEmptyString",
    #                     account_id: "NonEmptyString",
    #                     user_name: "NonEmptyString",
    #                   },
    #                 },
    #               },
    #               aws_iam_user: {
    #                 attached_managed_policies: [
    #                   {
    #                     policy_name: "NonEmptyString",
    #                     policy_arn: "NonEmptyString",
    #                   },
    #                 ],
    #                 create_date: "NonEmptyString",
    #                 group_list: ["NonEmptyString"],
    #                 path: "NonEmptyString",
    #                 permissions_boundary: {
    #                   permissions_boundary_arn: "NonEmptyString",
    #                   permissions_boundary_type: "NonEmptyString",
    #                 },
    #                 user_id: "NonEmptyString",
    #                 user_name: "NonEmptyString",
    #                 user_policy_list: [
    #                   {
    #                     policy_name: "NonEmptyString",
    #                   },
    #                 ],
    #               },
    #               aws_iam_policy: {
    #                 attachment_count: 1,
    #                 create_date: "NonEmptyString",
    #                 default_version_id: "NonEmptyString",
    #                 description: "NonEmptyString",
    #                 is_attachable: false,
    #                 path: "NonEmptyString",
    #                 permissions_boundary_usage_count: 1,
    #                 policy_id: "NonEmptyString",
    #                 policy_name: "NonEmptyString",
    #                 policy_version_list: [
    #                   {
    #                     version_id: "NonEmptyString",
    #                     is_default_version: false,
    #                     create_date: "NonEmptyString",
    #                   },
    #                 ],
    #                 update_date: "NonEmptyString",
    #               },
    #               aws_api_gateway_v2_stage: {
    #                 created_date: "NonEmptyString",
    #                 description: "NonEmptyString",
    #                 default_route_settings: {
    #                   detailed_metrics_enabled: false,
    #                   logging_level: "NonEmptyString",
    #                   data_trace_enabled: false,
    #                   throttling_burst_limit: 1,
    #                   throttling_rate_limit: 1.0,
    #                 },
    #                 deployment_id: "NonEmptyString",
    #                 last_updated_date: "NonEmptyString",
    #                 route_settings: {
    #                   detailed_metrics_enabled: false,
    #                   logging_level: "NonEmptyString",
    #                   data_trace_enabled: false,
    #                   throttling_burst_limit: 1,
    #                   throttling_rate_limit: 1.0,
    #                 },
    #                 stage_name: "NonEmptyString",
    #                 stage_variables: {
    #                   "NonEmptyString" => "NonEmptyString",
    #                 },
    #                 access_log_settings: {
    #                   format: "NonEmptyString",
    #                   destination_arn: "NonEmptyString",
    #                 },
    #                 auto_deploy: false,
    #                 last_deployment_status_message: "NonEmptyString",
    #                 api_gateway_managed: false,
    #               },
    #               aws_api_gateway_v2_api: {
    #                 api_endpoint: "NonEmptyString",
    #                 api_id: "NonEmptyString",
    #                 api_key_selection_expression: "NonEmptyString",
    #                 created_date: "NonEmptyString",
    #                 description: "NonEmptyString",
    #                 version: "NonEmptyString",
    #                 name: "NonEmptyString",
    #                 protocol_type: "NonEmptyString",
    #                 route_selection_expression: "NonEmptyString",
    #                 cors_configuration: {
    #                   allow_origins: ["NonEmptyString"],
    #                   allow_credentials: false,
    #                   expose_headers: ["NonEmptyString"],
    #                   max_age: 1,
    #                   allow_methods: ["NonEmptyString"],
    #                   allow_headers: ["NonEmptyString"],
    #                 },
    #               },
    #               aws_dynamo_db_table: {
    #                 attribute_definitions: [
    #                   {
    #                     attribute_name: "NonEmptyString",
    #                     attribute_type: "NonEmptyString",
    #                   },
    #                 ],
    #                 billing_mode_summary: {
    #                   billing_mode: "NonEmptyString",
    #                   last_update_to_pay_per_request_date_time: "NonEmptyString",
    #                 },
    #                 creation_date_time: "NonEmptyString",
    #                 global_secondary_indexes: [
    #                   {
    #                     backfilling: false,
    #                     index_arn: "NonEmptyString",
    #                     index_name: "NonEmptyString",
    #                     index_size_bytes: 1,
    #                     index_status: "NonEmptyString",
    #                     item_count: 1,
    #                     key_schema: [
    #                       {
    #                         attribute_name: "NonEmptyString",
    #                         key_type: "NonEmptyString",
    #                       },
    #                     ],
    #                     projection: {
    #                       non_key_attributes: ["NonEmptyString"],
    #                       projection_type: "NonEmptyString",
    #                     },
    #                     provisioned_throughput: {
    #                       last_decrease_date_time: "NonEmptyString",
    #                       last_increase_date_time: "NonEmptyString",
    #                       number_of_decreases_today: 1,
    #                       read_capacity_units: 1,
    #                       write_capacity_units: 1,
    #                     },
    #                   },
    #                 ],
    #                 global_table_version: "NonEmptyString",
    #                 item_count: 1,
    #                 key_schema: [
    #                   {
    #                     attribute_name: "NonEmptyString",
    #                     key_type: "NonEmptyString",
    #                   },
    #                 ],
    #                 latest_stream_arn: "NonEmptyString",
    #                 latest_stream_label: "NonEmptyString",
    #                 local_secondary_indexes: [
    #                   {
    #                     index_arn: "NonEmptyString",
    #                     index_name: "NonEmptyString",
    #                     key_schema: [
    #                       {
    #                         attribute_name: "NonEmptyString",
    #                         key_type: "NonEmptyString",
    #                       },
    #                     ],
    #                     projection: {
    #                       non_key_attributes: ["NonEmptyString"],
    #                       projection_type: "NonEmptyString",
    #                     },
    #                   },
    #                 ],
    #                 provisioned_throughput: {
    #                   last_decrease_date_time: "NonEmptyString",
    #                   last_increase_date_time: "NonEmptyString",
    #                   number_of_decreases_today: 1,
    #                   read_capacity_units: 1,
    #                   write_capacity_units: 1,
    #                 },
    #                 replicas: [
    #                   {
    #                     global_secondary_indexes: [
    #                       {
    #                         index_name: "NonEmptyString",
    #                         provisioned_throughput_override: {
    #                           read_capacity_units: 1,
    #                         },
    #                       },
    #                     ],
    #                     kms_master_key_id: "NonEmptyString",
    #                     provisioned_throughput_override: {
    #                       read_capacity_units: 1,
    #                     },
    #                     region_name: "NonEmptyString",
    #                     replica_status: "NonEmptyString",
    #                     replica_status_description: "NonEmptyString",
    #                   },
    #                 ],
    #                 restore_summary: {
    #                   source_backup_arn: "NonEmptyString",
    #                   source_table_arn: "NonEmptyString",
    #                   restore_date_time: "NonEmptyString",
    #                   restore_in_progress: false,
    #                 },
    #                 sse_description: {
    #                   inaccessible_encryption_date_time: "NonEmptyString",
    #                   status: "NonEmptyString",
    #                   sse_type: "NonEmptyString",
    #                   kms_master_key_arn: "NonEmptyString",
    #                 },
    #                 stream_specification: {
    #                   stream_enabled: false,
    #                   stream_view_type: "NonEmptyString",
    #                 },
    #                 table_id: "NonEmptyString",
    #                 table_name: "NonEmptyString",
    #                 table_size_bytes: 1,
    #                 table_status: "NonEmptyString",
    #               },
    #               aws_api_gateway_stage: {
    #                 deployment_id: "NonEmptyString",
    #                 client_certificate_id: "NonEmptyString",
    #                 stage_name: "NonEmptyString",
    #                 description: "NonEmptyString",
    #                 cache_cluster_enabled: false,
    #                 cache_cluster_size: "NonEmptyString",
    #                 cache_cluster_status: "NonEmptyString",
    #                 method_settings: [
    #                   {
    #                     metrics_enabled: false,
    #                     logging_level: "NonEmptyString",
    #                     data_trace_enabled: false,
    #                     throttling_burst_limit: 1,
    #                     throttling_rate_limit: 1.0,
    #                     caching_enabled: false,
    #                     cache_ttl_in_seconds: 1,
    #                     cache_data_encrypted: false,
    #                     require_authorization_for_cache_control: false,
    #                     unauthorized_cache_control_header_strategy: "NonEmptyString",
    #                     http_method: "NonEmptyString",
    #                     resource_path: "NonEmptyString",
    #                   },
    #                 ],
    #                 variables: {
    #                   "NonEmptyString" => "NonEmptyString",
    #                 },
    #                 documentation_version: "NonEmptyString",
    #                 access_log_settings: {
    #                   format: "NonEmptyString",
    #                   destination_arn: "NonEmptyString",
    #                 },
    #                 canary_settings: {
    #                   percent_traffic: 1.0,
    #                   deployment_id: "NonEmptyString",
    #                   stage_variable_overrides: {
    #                     "NonEmptyString" => "NonEmptyString",
    #                   },
    #                   use_stage_cache: false,
    #                 },
    #                 tracing_enabled: false,
    #                 created_date: "NonEmptyString",
    #                 last_updated_date: "NonEmptyString",
    #                 web_acl_arn: "NonEmptyString",
    #               },
    #               aws_api_gateway_rest_api: {
    #                 id: "NonEmptyString",
    #                 name: "NonEmptyString",
    #                 description: "NonEmptyString",
    #                 created_date: "NonEmptyString",
    #                 version: "NonEmptyString",
    #                 binary_media_types: ["NonEmptyString"],
    #                 minimum_compression_size: 1,
    #                 api_key_source: "NonEmptyString",
    #                 endpoint_configuration: {
    #                   types: ["NonEmptyString"],
    #                 },
    #               },
    #               aws_cloud_trail_trail: {
    #                 cloud_watch_logs_log_group_arn: "NonEmptyString",
    #                 cloud_watch_logs_role_arn: "NonEmptyString",
    #                 has_custom_event_selectors: false,
    #                 home_region: "NonEmptyString",
    #                 include_global_service_events: false,
    #                 is_multi_region_trail: false,
    #                 is_organization_trail: false,
    #                 kms_key_id: "NonEmptyString",
    #                 log_file_validation_enabled: false,
    #                 name: "NonEmptyString",
    #                 s3_bucket_name: "NonEmptyString",
    #                 s3_key_prefix: "NonEmptyString",
    #                 sns_topic_arn: "NonEmptyString",
    #                 sns_topic_name: "NonEmptyString",
    #                 trail_arn: "NonEmptyString",
    #               },
    #               aws_certificate_manager_certificate: {
    #                 certificate_authority_arn: "NonEmptyString",
    #                 created_at: "NonEmptyString",
    #                 domain_name: "NonEmptyString",
    #                 domain_validation_options: [
    #                   {
    #                     domain_name: "NonEmptyString",
    #                     resource_record: {
    #                       name: "NonEmptyString",
    #                       type: "NonEmptyString",
    #                       value: "NonEmptyString",
    #                     },
    #                     validation_domain: "NonEmptyString",
    #                     validation_emails: ["NonEmptyString"],
    #                     validation_method: "NonEmptyString",
    #                     validation_status: "NonEmptyString",
    #                   },
    #                 ],
    #                 extended_key_usages: [
    #                   {
    #                     name: "NonEmptyString",
    #                     o_id: "NonEmptyString",
    #                   },
    #                 ],
    #                 failure_reason: "NonEmptyString",
    #                 imported_at: "NonEmptyString",
    #                 in_use_by: ["NonEmptyString"],
    #                 issued_at: "NonEmptyString",
    #                 issuer: "NonEmptyString",
    #                 key_algorithm: "NonEmptyString",
    #                 key_usages: [
    #                   {
    #                     name: "NonEmptyString",
    #                   },
    #                 ],
    #                 not_after: "NonEmptyString",
    #                 not_before: "NonEmptyString",
    #                 options: {
    #                   certificate_transparency_logging_preference: "NonEmptyString",
    #                 },
    #                 renewal_eligibility: "NonEmptyString",
    #                 renewal_summary: {
    #                   domain_validation_options: [
    #                     {
    #                       domain_name: "NonEmptyString",
    #                       resource_record: {
    #                         name: "NonEmptyString",
    #                         type: "NonEmptyString",
    #                         value: "NonEmptyString",
    #                       },
    #                       validation_domain: "NonEmptyString",
    #                       validation_emails: ["NonEmptyString"],
    #                       validation_method: "NonEmptyString",
    #                       validation_status: "NonEmptyString",
    #                     },
    #                   ],
    #                   renewal_status: "NonEmptyString",
    #                   renewal_status_reason: "NonEmptyString",
    #                   updated_at: "NonEmptyString",
    #                 },
    #                 serial: "NonEmptyString",
    #                 signature_algorithm: "NonEmptyString",
    #                 status: "NonEmptyString",
    #                 subject: "NonEmptyString",
    #                 subject_alternative_names: ["NonEmptyString"],
    #                 type: "NonEmptyString",
    #               },
    #               aws_redshift_cluster: {
    #                 allow_version_upgrade: false,
    #                 automated_snapshot_retention_period: 1,
    #                 availability_zone: "NonEmptyString",
    #                 cluster_availability_status: "NonEmptyString",
    #                 cluster_create_time: "NonEmptyString",
    #                 cluster_identifier: "NonEmptyString",
    #                 cluster_nodes: [
    #                   {
    #                     node_role: "NonEmptyString",
    #                     private_ip_address: "NonEmptyString",
    #                     public_ip_address: "NonEmptyString",
    #                   },
    #                 ],
    #                 cluster_parameter_groups: [
    #                   {
    #                     cluster_parameter_status_list: [
    #                       {
    #                         parameter_name: "NonEmptyString",
    #                         parameter_apply_status: "NonEmptyString",
    #                         parameter_apply_error_description: "NonEmptyString",
    #                       },
    #                     ],
    #                     parameter_apply_status: "NonEmptyString",
    #                     parameter_group_name: "NonEmptyString",
    #                   },
    #                 ],
    #                 cluster_public_key: "NonEmptyString",
    #                 cluster_revision_number: "NonEmptyString",
    #                 cluster_security_groups: [
    #                   {
    #                     cluster_security_group_name: "NonEmptyString",
    #                     status: "NonEmptyString",
    #                   },
    #                 ],
    #                 cluster_snapshot_copy_status: {
    #                   destination_region: "NonEmptyString",
    #                   manual_snapshot_retention_period: 1,
    #                   retention_period: 1,
    #                   snapshot_copy_grant_name: "NonEmptyString",
    #                 },
    #                 cluster_status: "NonEmptyString",
    #                 cluster_subnet_group_name: "NonEmptyString",
    #                 cluster_version: "NonEmptyString",
    #                 db_name: "NonEmptyString",
    #                 deferred_maintenance_windows: [
    #                   {
    #                     defer_maintenance_end_time: "NonEmptyString",
    #                     defer_maintenance_identifier: "NonEmptyString",
    #                     defer_maintenance_start_time: "NonEmptyString",
    #                   },
    #                 ],
    #                 elastic_ip_status: {
    #                   elastic_ip: "NonEmptyString",
    #                   status: "NonEmptyString",
    #                 },
    #                 elastic_resize_number_of_node_options: "NonEmptyString",
    #                 encrypted: false,
    #                 endpoint: {
    #                   address: "NonEmptyString",
    #                   port: 1,
    #                 },
    #                 enhanced_vpc_routing: false,
    #                 expected_next_snapshot_schedule_time: "NonEmptyString",
    #                 expected_next_snapshot_schedule_time_status: "NonEmptyString",
    #                 hsm_status: {
    #                   hsm_client_certificate_identifier: "NonEmptyString",
    #                   hsm_configuration_identifier: "NonEmptyString",
    #                   status: "NonEmptyString",
    #                 },
    #                 iam_roles: [
    #                   {
    #                     apply_status: "NonEmptyString",
    #                     iam_role_arn: "NonEmptyString",
    #                   },
    #                 ],
    #                 kms_key_id: "NonEmptyString",
    #                 maintenance_track_name: "NonEmptyString",
    #                 manual_snapshot_retention_period: 1,
    #                 master_username: "NonEmptyString",
    #                 next_maintenance_window_start_time: "NonEmptyString",
    #                 node_type: "NonEmptyString",
    #                 number_of_nodes: 1,
    #                 pending_actions: ["NonEmptyString"],
    #                 pending_modified_values: {
    #                   automated_snapshot_retention_period: 1,
    #                   cluster_identifier: "NonEmptyString",
    #                   cluster_type: "NonEmptyString",
    #                   cluster_version: "NonEmptyString",
    #                   encryption_type: "NonEmptyString",
    #                   enhanced_vpc_routing: false,
    #                   maintenance_track_name: "NonEmptyString",
    #                   master_user_password: "NonEmptyString",
    #                   node_type: "NonEmptyString",
    #                   number_of_nodes: 1,
    #                   publicly_accessible: false,
    #                 },
    #                 preferred_maintenance_window: "NonEmptyString",
    #                 publicly_accessible: false,
    #                 resize_info: {
    #                   allow_cancel_resize: false,
    #                   resize_type: "NonEmptyString",
    #                 },
    #                 restore_status: {
    #                   current_restore_rate_in_mega_bytes_per_second: 1.0,
    #                   elapsed_time_in_seconds: 1,
    #                   estimated_time_to_completion_in_seconds: 1,
    #                   progress_in_mega_bytes: 1,
    #                   snapshot_size_in_mega_bytes: 1,
    #                   status: "NonEmptyString",
    #                 },
    #                 snapshot_schedule_identifier: "NonEmptyString",
    #                 snapshot_schedule_state: "NonEmptyString",
    #                 vpc_id: "NonEmptyString",
    #                 vpc_security_groups: [
    #                   {
    #                     status: "NonEmptyString",
    #                     vpc_security_group_id: "NonEmptyString",
    #                   },
    #                 ],
    #               },
    #               aws_elb_load_balancer: {
    #                 availability_zones: ["NonEmptyString"],
    #                 backend_server_descriptions: [
    #                   {
    #                     instance_port: 1,
    #                     policy_names: ["NonEmptyString"],
    #                   },
    #                 ],
    #                 canonical_hosted_zone_name: "NonEmptyString",
    #                 canonical_hosted_zone_name_id: "NonEmptyString",
    #                 created_time: "NonEmptyString",
    #                 dns_name: "NonEmptyString",
    #                 health_check: {
    #                   healthy_threshold: 1,
    #                   interval: 1,
    #                   target: "NonEmptyString",
    #                   timeout: 1,
    #                   unhealthy_threshold: 1,
    #                 },
    #                 instances: [
    #                   {
    #                     instance_id: "NonEmptyString",
    #                   },
    #                 ],
    #                 listener_descriptions: [
    #                   {
    #                     listener: {
    #                       instance_port: 1,
    #                       instance_protocol: "NonEmptyString",
    #                       load_balancer_port: 1,
    #                       protocol: "NonEmptyString",
    #                       ssl_certificate_id: "NonEmptyString",
    #                     },
    #                     policy_names: ["NonEmptyString"],
    #                   },
    #                 ],
    #                 load_balancer_attributes: {
    #                   access_log: {
    #                     emit_interval: 1,
    #                     enabled: false,
    #                     s3_bucket_name: "NonEmptyString",
    #                     s3_bucket_prefix: "NonEmptyString",
    #                   },
    #                   connection_draining: {
    #                     enabled: false,
    #                     timeout: 1,
    #                   },
    #                   connection_settings: {
    #                     idle_timeout: 1,
    #                   },
    #                   cross_zone_load_balancing: {
    #                     enabled: false,
    #                   },
    #                 },
    #                 load_balancer_name: "NonEmptyString",
    #                 policies: {
    #                   app_cookie_stickiness_policies: [
    #                     {
    #                       cookie_name: "NonEmptyString",
    #                       policy_name: "NonEmptyString",
    #                     },
    #                   ],
    #                   lb_cookie_stickiness_policies: [
    #                     {
    #                       cookie_expiration_period: 1,
    #                       policy_name: "NonEmptyString",
    #                     },
    #                   ],
    #                   other_policies: ["NonEmptyString"],
    #                 },
    #                 scheme: "NonEmptyString",
    #                 security_groups: ["NonEmptyString"],
    #                 source_security_group: {
    #                   group_name: "NonEmptyString",
    #                   owner_alias: "NonEmptyString",
    #                 },
    #                 subnets: ["NonEmptyString"],
    #                 vpc_id: "NonEmptyString",
    #               },
    #               aws_iam_group: {
    #                 attached_managed_policies: [
    #                   {
    #                     policy_name: "NonEmptyString",
    #                     policy_arn: "NonEmptyString",
    #                   },
    #                 ],
    #                 create_date: "NonEmptyString",
    #                 group_id: "NonEmptyString",
    #                 group_name: "NonEmptyString",
    #                 group_policy_list: [
    #                   {
    #                     policy_name: "NonEmptyString",
    #                   },
    #                 ],
    #                 path: "NonEmptyString",
    #               },
    #               aws_iam_role: {
    #                 assume_role_policy_document: "AwsIamRoleAssumeRolePolicyDocument",
    #                 attached_managed_policies: [
    #                   {
    #                     policy_name: "NonEmptyString",
    #                     policy_arn: "NonEmptyString",
    #                   },
    #                 ],
    #                 create_date: "NonEmptyString",
    #                 instance_profile_list: [
    #                   {
    #                     arn: "NonEmptyString",
    #                     create_date: "NonEmptyString",
    #                     instance_profile_id: "NonEmptyString",
    #                     instance_profile_name: "NonEmptyString",
    #                     path: "NonEmptyString",
    #                     roles: [
    #                       {
    #                         arn: "NonEmptyString",
    #                         assume_role_policy_document: "AwsIamRoleAssumeRolePolicyDocument",
    #                         create_date: "NonEmptyString",
    #                         path: "NonEmptyString",
    #                         role_id: "NonEmptyString",
    #                         role_name: "NonEmptyString",
    #                       },
    #                     ],
    #                   },
    #                 ],
    #                 permissions_boundary: {
    #                   permissions_boundary_arn: "NonEmptyString",
    #                   permissions_boundary_type: "NonEmptyString",
    #                 },
    #                 role_id: "NonEmptyString",
    #                 role_name: "NonEmptyString",
    #                 role_policy_list: [
    #                   {
    #                     policy_name: "NonEmptyString",
    #                   },
    #                 ],
    #                 max_session_duration: 1,
    #                 path: "NonEmptyString",
    #               },
    #               aws_kms_key: {
    #                 aws_account_id: "NonEmptyString",
    #                 creation_date: 1.0,
    #                 key_id: "NonEmptyString",
    #                 key_manager: "NonEmptyString",
    #                 key_state: "NonEmptyString",
    #                 origin: "NonEmptyString",
    #                 description: "NonEmptyString",
    #               },
    #               aws_lambda_function: {
    #                 code: {
    #                   s3_bucket: "NonEmptyString",
    #                   s3_key: "NonEmptyString",
    #                   s3_object_version: "NonEmptyString",
    #                   zip_file: "NonEmptyString",
    #                 },
    #                 code_sha_256: "NonEmptyString",
    #                 dead_letter_config: {
    #                   target_arn: "NonEmptyString",
    #                 },
    #                 environment: {
    #                   variables: {
    #                     "NonEmptyString" => "NonEmptyString",
    #                   },
    #                   error: {
    #                     error_code: "NonEmptyString",
    #                     message: "NonEmptyString",
    #                   },
    #                 },
    #                 function_name: "NonEmptyString",
    #                 handler: "NonEmptyString",
    #                 kms_key_arn: "NonEmptyString",
    #                 last_modified: "NonEmptyString",
    #                 layers: [
    #                   {
    #                     arn: "NonEmptyString",
    #                     code_size: 1,
    #                   },
    #                 ],
    #                 master_arn: "NonEmptyString",
    #                 memory_size: 1,
    #                 revision_id: "NonEmptyString",
    #                 role: "NonEmptyString",
    #                 runtime: "NonEmptyString",
    #                 timeout: 1,
    #                 tracing_config: {
    #                   mode: "NonEmptyString",
    #                 },
    #                 vpc_config: {
    #                   security_group_ids: ["NonEmptyString"],
    #                   subnet_ids: ["NonEmptyString"],
    #                   vpc_id: "NonEmptyString",
    #                 },
    #                 version: "NonEmptyString",
    #               },
    #               aws_lambda_layer_version: {
    #                 version: 1,
    #                 compatible_runtimes: ["NonEmptyString"],
    #                 created_date: "NonEmptyString",
    #               },
    #               aws_rds_db_instance: {
    #                 associated_roles: [
    #                   {
    #                     role_arn: "NonEmptyString",
    #                     feature_name: "NonEmptyString",
    #                     status: "NonEmptyString",
    #                   },
    #                 ],
    #                 ca_certificate_identifier: "NonEmptyString",
    #                 db_cluster_identifier: "NonEmptyString",
    #                 db_instance_identifier: "NonEmptyString",
    #                 db_instance_class: "NonEmptyString",
    #                 db_instance_port: 1,
    #                 dbi_resource_id: "NonEmptyString",
    #                 db_name: "NonEmptyString",
    #                 deletion_protection: false,
    #                 endpoint: {
    #                   address: "NonEmptyString",
    #                   port: 1,
    #                   hosted_zone_id: "NonEmptyString",
    #                 },
    #                 engine: "NonEmptyString",
    #                 engine_version: "NonEmptyString",
    #                 iam_database_authentication_enabled: false,
    #                 instance_create_time: "NonEmptyString",
    #                 kms_key_id: "NonEmptyString",
    #                 publicly_accessible: false,
    #                 storage_encrypted: false,
    #                 tde_credential_arn: "NonEmptyString",
    #                 vpc_security_groups: [
    #                   {
    #                     vpc_security_group_id: "NonEmptyString",
    #                     status: "NonEmptyString",
    #                   },
    #                 ],
    #                 multi_az: false,
    #                 enhanced_monitoring_resource_arn: "NonEmptyString",
    #                 db_instance_status: "NonEmptyString",
    #                 master_username: "NonEmptyString",
    #                 allocated_storage: 1,
    #                 preferred_backup_window: "NonEmptyString",
    #                 backup_retention_period: 1,
    #                 db_security_groups: ["NonEmptyString"],
    #                 db_parameter_groups: [
    #                   {
    #                     db_parameter_group_name: "NonEmptyString",
    #                     parameter_apply_status: "NonEmptyString",
    #                   },
    #                 ],
    #                 availability_zone: "NonEmptyString",
    #                 db_subnet_group: {
    #                   db_subnet_group_name: "NonEmptyString",
    #                   db_subnet_group_description: "NonEmptyString",
    #                   vpc_id: "NonEmptyString",
    #                   subnet_group_status: "NonEmptyString",
    #                   subnets: [
    #                     {
    #                       subnet_identifier: "NonEmptyString",
    #                       subnet_availability_zone: {
    #                         name: "NonEmptyString",
    #                       },
    #                       subnet_status: "NonEmptyString",
    #                     },
    #                   ],
    #                   db_subnet_group_arn: "NonEmptyString",
    #                 },
    #                 preferred_maintenance_window: "NonEmptyString",
    #                 pending_modified_values: {
    #                   db_instance_class: "NonEmptyString",
    #                   allocated_storage: 1,
    #                   master_user_password: "NonEmptyString",
    #                   port: 1,
    #                   backup_retention_period: 1,
    #                   multi_az: false,
    #                   engine_version: "NonEmptyString",
    #                   license_model: "NonEmptyString",
    #                   iops: 1,
    #                   db_instance_identifier: "NonEmptyString",
    #                   storage_type: "NonEmptyString",
    #                   ca_certificate_identifier: "NonEmptyString",
    #                   db_subnet_group_name: "NonEmptyString",
    #                   pending_cloud_watch_logs_exports: {
    #                     log_types_to_enable: ["NonEmptyString"],
    #                     log_types_to_disable: ["NonEmptyString"],
    #                   },
    #                   processor_features: [
    #                     {
    #                       name: "NonEmptyString",
    #                       value: "NonEmptyString",
    #                     },
    #                   ],
    #                 },
    #                 latest_restorable_time: "NonEmptyString",
    #                 auto_minor_version_upgrade: false,
    #                 read_replica_source_db_instance_identifier: "NonEmptyString",
    #                 read_replica_db_instance_identifiers: ["NonEmptyString"],
    #                 read_replica_db_cluster_identifiers: ["NonEmptyString"],
    #                 license_model: "NonEmptyString",
    #                 iops: 1,
    #                 option_group_memberships: [
    #                   {
    #                     option_group_name: "NonEmptyString",
    #                     status: "NonEmptyString",
    #                   },
    #                 ],
    #                 character_set_name: "NonEmptyString",
    #                 secondary_availability_zone: "NonEmptyString",
    #                 status_infos: [
    #                   {
    #                     status_type: "NonEmptyString",
    #                     normal: false,
    #                     status: "NonEmptyString",
    #                     message: "NonEmptyString",
    #                   },
    #                 ],
    #                 storage_type: "NonEmptyString",
    #                 domain_memberships: [
    #                   {
    #                     domain: "NonEmptyString",
    #                     status: "NonEmptyString",
    #                     fqdn: "NonEmptyString",
    #                     iam_role_name: "NonEmptyString",
    #                   },
    #                 ],
    #                 copy_tags_to_snapshot: false,
    #                 monitoring_interval: 1,
    #                 monitoring_role_arn: "NonEmptyString",
    #                 promotion_tier: 1,
    #                 timezone: "NonEmptyString",
    #                 performance_insights_enabled: false,
    #                 performance_insights_kms_key_id: "NonEmptyString",
    #                 performance_insights_retention_period: 1,
    #                 enabled_cloud_watch_logs_exports: ["NonEmptyString"],
    #                 processor_features: [
    #                   {
    #                     name: "NonEmptyString",
    #                     value: "NonEmptyString",
    #                   },
    #                 ],
    #                 listener_endpoint: {
    #                   address: "NonEmptyString",
    #                   port: 1,
    #                   hosted_zone_id: "NonEmptyString",
    #                 },
    #                 max_allocated_storage: 1,
    #               },
    #               aws_sns_topic: {
    #                 kms_master_key_id: "NonEmptyString",
    #                 subscription: [
    #                   {
    #                     endpoint: "NonEmptyString",
    #                     protocol: "NonEmptyString",
    #                   },
    #                 ],
    #                 topic_name: "NonEmptyString",
    #                 owner: "NonEmptyString",
    #               },
    #               aws_sqs_queue: {
    #                 kms_data_key_reuse_period_seconds: 1,
    #                 kms_master_key_id: "NonEmptyString",
    #                 queue_name: "NonEmptyString",
    #                 dead_letter_target_arn: "NonEmptyString",
    #               },
    #               aws_waf_web_acl: {
    #                 name: "NonEmptyString",
    #                 default_action: "NonEmptyString",
    #                 rules: [
    #                   {
    #                     action: {
    #                       type: "NonEmptyString",
    #                     },
    #                     excluded_rules: [
    #                       {
    #                         rule_id: "NonEmptyString",
    #                       },
    #                     ],
    #                     override_action: {
    #                       type: "NonEmptyString",
    #                     },
    #                     priority: 1,
    #                     rule_id: "NonEmptyString",
    #                     type: "NonEmptyString",
    #                   },
    #                 ],
    #                 web_acl_id: "NonEmptyString",
    #               },
    #               aws_rds_db_snapshot: {
    #                 db_snapshot_identifier: "NonEmptyString",
    #                 db_instance_identifier: "NonEmptyString",
    #                 snapshot_create_time: "NonEmptyString",
    #                 engine: "NonEmptyString",
    #                 allocated_storage: 1,
    #                 status: "NonEmptyString",
    #                 port: 1,
    #                 availability_zone: "NonEmptyString",
    #                 vpc_id: "NonEmptyString",
    #                 instance_create_time: "NonEmptyString",
    #                 master_username: "NonEmptyString",
    #                 engine_version: "NonEmptyString",
    #                 license_model: "NonEmptyString",
    #                 snapshot_type: "NonEmptyString",
    #                 iops: 1,
    #                 option_group_name: "NonEmptyString",
    #                 percent_progress: 1,
    #                 source_region: "NonEmptyString",
    #                 source_db_snapshot_identifier: "NonEmptyString",
    #                 storage_type: "NonEmptyString",
    #                 tde_credential_arn: "NonEmptyString",
    #                 encrypted: false,
    #                 kms_key_id: "NonEmptyString",
    #                 timezone: "NonEmptyString",
    #                 iam_database_authentication_enabled: false,
    #                 processor_features: [
    #                   {
    #                     name: "NonEmptyString",
    #                     value: "NonEmptyString",
    #                   },
    #                 ],
    #                 dbi_resource_id: "NonEmptyString",
    #               },
    #               aws_rds_db_cluster_snapshot: {
    #                 availability_zones: ["NonEmptyString"],
    #                 snapshot_create_time: "NonEmptyString",
    #                 engine: "NonEmptyString",
    #                 allocated_storage: 1,
    #                 status: "NonEmptyString",
    #                 port: 1,
    #                 vpc_id: "NonEmptyString",
    #                 cluster_create_time: "NonEmptyString",
    #                 master_username: "NonEmptyString",
    #                 engine_version: "NonEmptyString",
    #                 license_model: "NonEmptyString",
    #                 snapshot_type: "NonEmptyString",
    #                 percent_progress: 1,
    #                 storage_encrypted: false,
    #                 kms_key_id: "NonEmptyString",
    #                 db_cluster_identifier: "NonEmptyString",
    #                 db_cluster_snapshot_identifier: "NonEmptyString",
    #                 iam_database_authentication_enabled: false,
    #               },
    #               aws_rds_db_cluster: {
    #                 allocated_storage: 1,
    #                 availability_zones: ["NonEmptyString"],
    #                 backup_retention_period: 1,
    #                 database_name: "NonEmptyString",
    #                 status: "NonEmptyString",
    #                 endpoint: "NonEmptyString",
    #                 reader_endpoint: "NonEmptyString",
    #                 custom_endpoints: ["NonEmptyString"],
    #                 multi_az: false,
    #                 engine: "NonEmptyString",
    #                 engine_version: "NonEmptyString",
    #                 port: 1,
    #                 master_username: "NonEmptyString",
    #                 preferred_backup_window: "NonEmptyString",
    #                 preferred_maintenance_window: "NonEmptyString",
    #                 read_replica_identifiers: ["NonEmptyString"],
    #                 vpc_security_groups: [
    #                   {
    #                     vpc_security_group_id: "NonEmptyString",
    #                     status: "NonEmptyString",
    #                   },
    #                 ],
    #                 hosted_zone_id: "NonEmptyString",
    #                 storage_encrypted: false,
    #                 kms_key_id: "NonEmptyString",
    #                 db_cluster_resource_id: "NonEmptyString",
    #                 associated_roles: [
    #                   {
    #                     role_arn: "NonEmptyString",
    #                     status: "NonEmptyString",
    #                   },
    #                 ],
    #                 cluster_create_time: "NonEmptyString",
    #                 enabled_cloud_watch_logs_exports: ["NonEmptyString"],
    #                 engine_mode: "NonEmptyString",
    #                 deletion_protection: false,
    #                 http_endpoint_enabled: false,
    #                 activity_stream_status: "NonEmptyString",
    #                 copy_tags_to_snapshot: false,
    #                 cross_account_clone: false,
    #                 domain_memberships: [
    #                   {
    #                     domain: "NonEmptyString",
    #                     status: "NonEmptyString",
    #                     fqdn: "NonEmptyString",
    #                     iam_role_name: "NonEmptyString",
    #                   },
    #                 ],
    #                 db_cluster_parameter_group: "NonEmptyString",
    #                 db_subnet_group: "NonEmptyString",
    #                 db_cluster_option_group_memberships: [
    #                   {
    #                     db_cluster_option_group_name: "NonEmptyString",
    #                     status: "NonEmptyString",
    #                   },
    #                 ],
    #                 db_cluster_identifier: "NonEmptyString",
    #                 db_cluster_members: [
    #                   {
    #                     is_cluster_writer: false,
    #                     promotion_tier: 1,
    #                     db_instance_identifier: "NonEmptyString",
    #                     db_cluster_parameter_group_status: "NonEmptyString",
    #                   },
    #                 ],
    #                 iam_database_authentication_enabled: false,
    #               },
    #               container: {
    #                 name: "NonEmptyString",
    #                 image_id: "NonEmptyString",
    #                 image_name: "NonEmptyString",
    #                 launched_at: "NonEmptyString",
    #               },
    #               other: {
    #                 "NonEmptyString" => "NonEmptyString",
    #               },
    #             },
    #           },
    #         ],
    #         compliance: {
    #           status: "PASSED", # accepts PASSED, WARNING, FAILED, NOT_AVAILABLE
    #           related_requirements: ["NonEmptyString"],
    #           status_reasons: [
    #             {
    #               reason_code: "NonEmptyString", # required
    #               description: "NonEmptyString",
    #             },
    #           ],
    #         },
    #         verification_state: "UNKNOWN", # accepts UNKNOWN, TRUE_POSITIVE, FALSE_POSITIVE, BENIGN_POSITIVE
    #         workflow_state: "NEW", # accepts NEW, ASSIGNED, IN_PROGRESS, DEFERRED, RESOLVED
    #         workflow: {
    #           status: "NEW", # accepts NEW, NOTIFIED, RESOLVED, SUPPRESSED
    #         },
    #         record_state: "ACTIVE", # accepts ACTIVE, ARCHIVED
    #         related_findings: [
    #           {
    #             product_arn: "NonEmptyString", # required
    #             id: "NonEmptyString", # required
    #           },
    #         ],
    #         note: {
    #           text: "NonEmptyString", # required
    #           updated_by: "NonEmptyString", # required
    #           updated_at: "NonEmptyString", # required
    #         },
    #         vulnerabilities: [
    #           {
    #             id: "NonEmptyString", # required
    #             vulnerable_packages: [
    #               {
    #                 name: "NonEmptyString",
    #                 version: "NonEmptyString",
    #                 epoch: "NonEmptyString",
    #                 release: "NonEmptyString",
    #                 architecture: "NonEmptyString",
    #               },
    #             ],
    #             cvss: [
    #               {
    #                 version: "NonEmptyString",
    #                 base_score: 1.0,
    #                 base_vector: "NonEmptyString",
    #               },
    #             ],
    #             related_vulnerabilities: ["NonEmptyString"],
    #             vendor: {
    #               name: "NonEmptyString", # required
    #               url: "NonEmptyString",
    #               vendor_severity: "NonEmptyString",
    #               vendor_created_at: "NonEmptyString",
    #               vendor_updated_at: "NonEmptyString",
    #             },
    #             reference_urls: ["NonEmptyString"],
    #           },
    #         ],
    #         patch_summary: {
    #           id: "NonEmptyString", # required
    #           installed_count: 1,
    #           missing_count: 1,
    #           failed_count: 1,
    #           installed_other_count: 1,
    #           installed_rejected_count: 1,
    #           installed_pending_reboot: 1,
    #           operation_start_time: "NonEmptyString",
    #           operation_end_time: "NonEmptyString",
    #           reboot_option: "NonEmptyString",
    #           operation: "NonEmptyString",
    #         },
    #       },
    #     ],
    #   })
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
    # investigation into a finding. Requested by master accounts or member
    # accounts. Master accounts can update findings for their account and
    # their member accounts. Member accounts can update findings for their
    # account.
    #
    # Updates from `BatchUpdateFindings` do not affect the value of
    # `UpdatedAt` for a finding.
    #
    # Master and member accounts can use `BatchUpdateFindings` to update the
    # following finding fields and objects.
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
    # access to BatchUpdateFindings][1] in the *AWS Security Hub User
    # Guide*.
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
    #   The name of the custom action target.
    #
    # @option params [required, String] :description
    #   The description for the custom action target.
    #
    # @option params [required, String] :id
    #   The ID for the custom action target.
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
    # accounts and the account used to make the request, which is the master
    # account. To successfully create a member, you must use this action
    # from an account that already has Security Hub enabled. To enable
    # Security Hub, you can use the ` EnableSecurityHub ` operation.
    #
    # After you use `CreateMembers` to create member account associations in
    # Security Hub, you must use the ` InviteMembers ` operation to invite
    # the accounts to enable Security Hub and become member accounts in
    # Security Hub.
    #
    # If the account owner accepts the invitation, the account becomes a
    # member account in Security Hub. A permissions policy is added that
    # permits the master account to view the findings generated in the
    # member account. When Security Hub is enabled in the invited account,
    # findings start to be sent to both the member and master accounts.
    #
    # To remove the association between the master and member accounts, use
    # the ` DisassociateFromMasterAccount ` or ` DisassociateMembers `
    # operation.
    #
    # @option params [Array<Types::AccountDetails>] :account_details
    #   The list of accounts to associate with the Security Hub master
    #   account. For each account, the list includes the account ID and the
    #   email address.
    #
    # @return [Types::CreateMembersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateMembersResponse#unprocessed_accounts #unprocessed_accounts} => Array&lt;Types::Result&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_members({
    #     account_details: [
    #       {
    #         account_id: "AccountId",
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

    # Deletes invitations received by the AWS account to become a member
    # account.
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
    # @option params [Array<String>] :account_ids
    #   The list of account IDs for the member accounts to delete.
    #
    # @return [Types::DeleteMembersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteMembersResponse#unprocessed_accounts #unprocessed_accounts} => Array&lt;Types::Result&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_members({
    #     account_ids: ["NonEmptyString"],
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

    # Returns information about the available products that you can
    # subscribe to and integrate with Security Hub in order to consolidate
    # findings.
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
    #   resp.products[0].integration_types[0] #=> String, one of "SEND_FINDINGS_TO_SECURITY_HUB", "RECEIVE_FINDINGS_FROM_SECURITY_HUB"
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
    #   standard.
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

    # Disables Security Hub in your account only in the current Region. To
    # disable Security Hub in all Regions, you must submit one request per
    # Region where you have enabled Security Hub.
    #
    # When you disable Security Hub for a master account, it doesn't
    # disable Security Hub for any associated member accounts.
    #
    # When you disable Security Hub, your existing findings and insights and
    # any Security Hub configuration settings are deleted after 90 days and
    # cannot be recovered. Any standards that were enabled are disabled, and
    # your master and member account associations are removed.
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
    # associated master account.
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

    # Disassociates the specified member accounts from the associated master
    # account.
    #
    # @option params [Array<String>] :account_ids
    #   The account IDs of the member accounts to disassociate from the master
    #   account.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_members({
    #     account_ids: ["NonEmptyString"],
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
    # * CIS AWS Foundations
    #
    # * AWS Foundational Security Best Practices
    #
    # You do not enable the Payment Card Industry Data Security Standard
    # (PCI DSS) standard.
    #
    # To not enable the automatically enabled standards, set
    # `EnableDefaultStandards` to `false`.
    #
    # After you enable Security Hub, to enable a standard, use the `
    # BatchEnableStandards ` operation. To disable a standard, use the `
    # BatchDisableStandards ` operation.
    #
    # To learn more, see [Setting Up AWS Security Hub][1] in the *AWS
    # Security Hub User Guide*.
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

    # Returns a list of findings that match the specified criteria.
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
    # @example Response structure
    #
    #   resp.findings #=> Array
    #   resp.findings[0].schema_version #=> String
    #   resp.findings[0].id #=> String
    #   resp.findings[0].product_arn #=> String
    #   resp.findings[0].generator_id #=> String
    #   resp.findings[0].aws_account_id #=> String
    #   resp.findings[0].types #=> Array
    #   resp.findings[0].types[0] #=> String
    #   resp.findings[0].first_observed_at #=> String
    #   resp.findings[0].last_observed_at #=> String
    #   resp.findings[0].created_at #=> String
    #   resp.findings[0].updated_at #=> String
    #   resp.findings[0].severity.product #=> Float
    #   resp.findings[0].severity.label #=> String, one of "INFORMATIONAL", "LOW", "MEDIUM", "HIGH", "CRITICAL"
    #   resp.findings[0].severity.normalized #=> Integer
    #   resp.findings[0].severity.original #=> String
    #   resp.findings[0].confidence #=> Integer
    #   resp.findings[0].criticality #=> Integer
    #   resp.findings[0].title #=> String
    #   resp.findings[0].description #=> String
    #   resp.findings[0].remediation.recommendation.text #=> String
    #   resp.findings[0].remediation.recommendation.url #=> String
    #   resp.findings[0].source_url #=> String
    #   resp.findings[0].product_fields #=> Hash
    #   resp.findings[0].product_fields["NonEmptyString"] #=> String
    #   resp.findings[0].user_defined_fields #=> Hash
    #   resp.findings[0].user_defined_fields["NonEmptyString"] #=> String
    #   resp.findings[0].malware #=> Array
    #   resp.findings[0].malware[0].name #=> String
    #   resp.findings[0].malware[0].type #=> String, one of "ADWARE", "BLENDED_THREAT", "BOTNET_AGENT", "COIN_MINER", "EXPLOIT_KIT", "KEYLOGGER", "MACRO", "POTENTIALLY_UNWANTED", "SPYWARE", "RANSOMWARE", "REMOTE_ACCESS", "ROOTKIT", "TROJAN", "VIRUS", "WORM"
    #   resp.findings[0].malware[0].path #=> String
    #   resp.findings[0].malware[0].state #=> String, one of "OBSERVED", "REMOVAL_FAILED", "REMOVED"
    #   resp.findings[0].network.direction #=> String, one of "IN", "OUT"
    #   resp.findings[0].network.protocol #=> String
    #   resp.findings[0].network.open_port_range.begin #=> Integer
    #   resp.findings[0].network.open_port_range.end #=> Integer
    #   resp.findings[0].network.source_ip_v4 #=> String
    #   resp.findings[0].network.source_ip_v6 #=> String
    #   resp.findings[0].network.source_port #=> Integer
    #   resp.findings[0].network.source_domain #=> String
    #   resp.findings[0].network.source_mac #=> String
    #   resp.findings[0].network.destination_ip_v4 #=> String
    #   resp.findings[0].network.destination_ip_v6 #=> String
    #   resp.findings[0].network.destination_port #=> Integer
    #   resp.findings[0].network.destination_domain #=> String
    #   resp.findings[0].network_path #=> Array
    #   resp.findings[0].network_path[0].component_id #=> String
    #   resp.findings[0].network_path[0].component_type #=> String
    #   resp.findings[0].network_path[0].egress.protocol #=> String
    #   resp.findings[0].network_path[0].egress.destination.address #=> Array
    #   resp.findings[0].network_path[0].egress.destination.address[0] #=> String
    #   resp.findings[0].network_path[0].egress.destination.port_ranges #=> Array
    #   resp.findings[0].network_path[0].egress.destination.port_ranges[0].begin #=> Integer
    #   resp.findings[0].network_path[0].egress.destination.port_ranges[0].end #=> Integer
    #   resp.findings[0].network_path[0].egress.source.address #=> Array
    #   resp.findings[0].network_path[0].egress.source.address[0] #=> String
    #   resp.findings[0].network_path[0].egress.source.port_ranges #=> Array
    #   resp.findings[0].network_path[0].egress.source.port_ranges[0].begin #=> Integer
    #   resp.findings[0].network_path[0].egress.source.port_ranges[0].end #=> Integer
    #   resp.findings[0].network_path[0].ingress.protocol #=> String
    #   resp.findings[0].network_path[0].ingress.destination.address #=> Array
    #   resp.findings[0].network_path[0].ingress.destination.address[0] #=> String
    #   resp.findings[0].network_path[0].ingress.destination.port_ranges #=> Array
    #   resp.findings[0].network_path[0].ingress.destination.port_ranges[0].begin #=> Integer
    #   resp.findings[0].network_path[0].ingress.destination.port_ranges[0].end #=> Integer
    #   resp.findings[0].network_path[0].ingress.source.address #=> Array
    #   resp.findings[0].network_path[0].ingress.source.address[0] #=> String
    #   resp.findings[0].network_path[0].ingress.source.port_ranges #=> Array
    #   resp.findings[0].network_path[0].ingress.source.port_ranges[0].begin #=> Integer
    #   resp.findings[0].network_path[0].ingress.source.port_ranges[0].end #=> Integer
    #   resp.findings[0].process.name #=> String
    #   resp.findings[0].process.path #=> String
    #   resp.findings[0].process.pid #=> Integer
    #   resp.findings[0].process.parent_pid #=> Integer
    #   resp.findings[0].process.launched_at #=> String
    #   resp.findings[0].process.terminated_at #=> String
    #   resp.findings[0].threat_intel_indicators #=> Array
    #   resp.findings[0].threat_intel_indicators[0].type #=> String, one of "DOMAIN", "EMAIL_ADDRESS", "HASH_MD5", "HASH_SHA1", "HASH_SHA256", "HASH_SHA512", "IPV4_ADDRESS", "IPV6_ADDRESS", "MUTEX", "PROCESS", "URL"
    #   resp.findings[0].threat_intel_indicators[0].value #=> String
    #   resp.findings[0].threat_intel_indicators[0].category #=> String, one of "BACKDOOR", "CARD_STEALER", "COMMAND_AND_CONTROL", "DROP_SITE", "EXPLOIT_SITE", "KEYLOGGER"
    #   resp.findings[0].threat_intel_indicators[0].last_observed_at #=> String
    #   resp.findings[0].threat_intel_indicators[0].source #=> String
    #   resp.findings[0].threat_intel_indicators[0].source_url #=> String
    #   resp.findings[0].resources #=> Array
    #   resp.findings[0].resources[0].type #=> String
    #   resp.findings[0].resources[0].id #=> String
    #   resp.findings[0].resources[0].partition #=> String, one of "aws", "aws-cn", "aws-us-gov"
    #   resp.findings[0].resources[0].region #=> String
    #   resp.findings[0].resources[0].resource_role #=> String
    #   resp.findings[0].resources[0].tags #=> Hash
    #   resp.findings[0].resources[0].tags["NonEmptyString"] #=> String
    #   resp.findings[0].resources[0].details.aws_auto_scaling_auto_scaling_group.launch_configuration_name #=> String
    #   resp.findings[0].resources[0].details.aws_auto_scaling_auto_scaling_group.load_balancer_names #=> Array
    #   resp.findings[0].resources[0].details.aws_auto_scaling_auto_scaling_group.load_balancer_names[0] #=> String
    #   resp.findings[0].resources[0].details.aws_auto_scaling_auto_scaling_group.health_check_type #=> String
    #   resp.findings[0].resources[0].details.aws_auto_scaling_auto_scaling_group.health_check_grace_period #=> Integer
    #   resp.findings[0].resources[0].details.aws_auto_scaling_auto_scaling_group.created_time #=> String
    #   resp.findings[0].resources[0].details.aws_code_build_project.encryption_key #=> String
    #   resp.findings[0].resources[0].details.aws_code_build_project.environment.certificate #=> String
    #   resp.findings[0].resources[0].details.aws_code_build_project.environment.image_pull_credentials_type #=> String
    #   resp.findings[0].resources[0].details.aws_code_build_project.environment.registry_credential.credential #=> String
    #   resp.findings[0].resources[0].details.aws_code_build_project.environment.registry_credential.credential_provider #=> String
    #   resp.findings[0].resources[0].details.aws_code_build_project.environment.type #=> String
    #   resp.findings[0].resources[0].details.aws_code_build_project.name #=> String
    #   resp.findings[0].resources[0].details.aws_code_build_project.source.type #=> String
    #   resp.findings[0].resources[0].details.aws_code_build_project.source.location #=> String
    #   resp.findings[0].resources[0].details.aws_code_build_project.source.git_clone_depth #=> Integer
    #   resp.findings[0].resources[0].details.aws_code_build_project.source.insecure_ssl #=> Boolean
    #   resp.findings[0].resources[0].details.aws_code_build_project.service_role #=> String
    #   resp.findings[0].resources[0].details.aws_code_build_project.vpc_config.vpc_id #=> String
    #   resp.findings[0].resources[0].details.aws_code_build_project.vpc_config.subnets #=> Array
    #   resp.findings[0].resources[0].details.aws_code_build_project.vpc_config.subnets[0] #=> String
    #   resp.findings[0].resources[0].details.aws_code_build_project.vpc_config.security_group_ids #=> Array
    #   resp.findings[0].resources[0].details.aws_code_build_project.vpc_config.security_group_ids[0] #=> String
    #   resp.findings[0].resources[0].details.aws_cloud_front_distribution.cache_behaviors.items #=> Array
    #   resp.findings[0].resources[0].details.aws_cloud_front_distribution.cache_behaviors.items[0].viewer_protocol_policy #=> String
    #   resp.findings[0].resources[0].details.aws_cloud_front_distribution.default_cache_behavior.viewer_protocol_policy #=> String
    #   resp.findings[0].resources[0].details.aws_cloud_front_distribution.default_root_object #=> String
    #   resp.findings[0].resources[0].details.aws_cloud_front_distribution.domain_name #=> String
    #   resp.findings[0].resources[0].details.aws_cloud_front_distribution.etag #=> String
    #   resp.findings[0].resources[0].details.aws_cloud_front_distribution.last_modified_time #=> String
    #   resp.findings[0].resources[0].details.aws_cloud_front_distribution.logging.bucket #=> String
    #   resp.findings[0].resources[0].details.aws_cloud_front_distribution.logging.enabled #=> Boolean
    #   resp.findings[0].resources[0].details.aws_cloud_front_distribution.logging.include_cookies #=> Boolean
    #   resp.findings[0].resources[0].details.aws_cloud_front_distribution.logging.prefix #=> String
    #   resp.findings[0].resources[0].details.aws_cloud_front_distribution.origins.items #=> Array
    #   resp.findings[0].resources[0].details.aws_cloud_front_distribution.origins.items[0].domain_name #=> String
    #   resp.findings[0].resources[0].details.aws_cloud_front_distribution.origins.items[0].id #=> String
    #   resp.findings[0].resources[0].details.aws_cloud_front_distribution.origins.items[0].origin_path #=> String
    #   resp.findings[0].resources[0].details.aws_cloud_front_distribution.origins.items[0].s3_origin_config.origin_access_identity #=> String
    #   resp.findings[0].resources[0].details.aws_cloud_front_distribution.origin_groups.items #=> Array
    #   resp.findings[0].resources[0].details.aws_cloud_front_distribution.origin_groups.items[0].failover_criteria.status_codes.items #=> Array
    #   resp.findings[0].resources[0].details.aws_cloud_front_distribution.origin_groups.items[0].failover_criteria.status_codes.items[0] #=> Integer
    #   resp.findings[0].resources[0].details.aws_cloud_front_distribution.origin_groups.items[0].failover_criteria.status_codes.quantity #=> Integer
    #   resp.findings[0].resources[0].details.aws_cloud_front_distribution.status #=> String
    #   resp.findings[0].resources[0].details.aws_cloud_front_distribution.web_acl_id #=> String
    #   resp.findings[0].resources[0].details.aws_ec2_instance.type #=> String
    #   resp.findings[0].resources[0].details.aws_ec2_instance.image_id #=> String
    #   resp.findings[0].resources[0].details.aws_ec2_instance.ip_v4_addresses #=> Array
    #   resp.findings[0].resources[0].details.aws_ec2_instance.ip_v4_addresses[0] #=> String
    #   resp.findings[0].resources[0].details.aws_ec2_instance.ip_v6_addresses #=> Array
    #   resp.findings[0].resources[0].details.aws_ec2_instance.ip_v6_addresses[0] #=> String
    #   resp.findings[0].resources[0].details.aws_ec2_instance.key_name #=> String
    #   resp.findings[0].resources[0].details.aws_ec2_instance.iam_instance_profile_arn #=> String
    #   resp.findings[0].resources[0].details.aws_ec2_instance.vpc_id #=> String
    #   resp.findings[0].resources[0].details.aws_ec2_instance.subnet_id #=> String
    #   resp.findings[0].resources[0].details.aws_ec2_instance.launched_at #=> String
    #   resp.findings[0].resources[0].details.aws_ec2_network_interface.attachment.attach_time #=> String
    #   resp.findings[0].resources[0].details.aws_ec2_network_interface.attachment.attachment_id #=> String
    #   resp.findings[0].resources[0].details.aws_ec2_network_interface.attachment.delete_on_termination #=> Boolean
    #   resp.findings[0].resources[0].details.aws_ec2_network_interface.attachment.device_index #=> Integer
    #   resp.findings[0].resources[0].details.aws_ec2_network_interface.attachment.instance_id #=> String
    #   resp.findings[0].resources[0].details.aws_ec2_network_interface.attachment.instance_owner_id #=> String
    #   resp.findings[0].resources[0].details.aws_ec2_network_interface.attachment.status #=> String
    #   resp.findings[0].resources[0].details.aws_ec2_network_interface.network_interface_id #=> String
    #   resp.findings[0].resources[0].details.aws_ec2_network_interface.security_groups #=> Array
    #   resp.findings[0].resources[0].details.aws_ec2_network_interface.security_groups[0].group_name #=> String
    #   resp.findings[0].resources[0].details.aws_ec2_network_interface.security_groups[0].group_id #=> String
    #   resp.findings[0].resources[0].details.aws_ec2_network_interface.source_dest_check #=> Boolean
    #   resp.findings[0].resources[0].details.aws_ec2_security_group.group_name #=> String
    #   resp.findings[0].resources[0].details.aws_ec2_security_group.group_id #=> String
    #   resp.findings[0].resources[0].details.aws_ec2_security_group.owner_id #=> String
    #   resp.findings[0].resources[0].details.aws_ec2_security_group.vpc_id #=> String
    #   resp.findings[0].resources[0].details.aws_ec2_security_group.ip_permissions #=> Array
    #   resp.findings[0].resources[0].details.aws_ec2_security_group.ip_permissions[0].ip_protocol #=> String
    #   resp.findings[0].resources[0].details.aws_ec2_security_group.ip_permissions[0].from_port #=> Integer
    #   resp.findings[0].resources[0].details.aws_ec2_security_group.ip_permissions[0].to_port #=> Integer
    #   resp.findings[0].resources[0].details.aws_ec2_security_group.ip_permissions[0].user_id_group_pairs #=> Array
    #   resp.findings[0].resources[0].details.aws_ec2_security_group.ip_permissions[0].user_id_group_pairs[0].group_id #=> String
    #   resp.findings[0].resources[0].details.aws_ec2_security_group.ip_permissions[0].user_id_group_pairs[0].group_name #=> String
    #   resp.findings[0].resources[0].details.aws_ec2_security_group.ip_permissions[0].user_id_group_pairs[0].peering_status #=> String
    #   resp.findings[0].resources[0].details.aws_ec2_security_group.ip_permissions[0].user_id_group_pairs[0].user_id #=> String
    #   resp.findings[0].resources[0].details.aws_ec2_security_group.ip_permissions[0].user_id_group_pairs[0].vpc_id #=> String
    #   resp.findings[0].resources[0].details.aws_ec2_security_group.ip_permissions[0].user_id_group_pairs[0].vpc_peering_connection_id #=> String
    #   resp.findings[0].resources[0].details.aws_ec2_security_group.ip_permissions[0].ip_ranges #=> Array
    #   resp.findings[0].resources[0].details.aws_ec2_security_group.ip_permissions[0].ip_ranges[0].cidr_ip #=> String
    #   resp.findings[0].resources[0].details.aws_ec2_security_group.ip_permissions[0].ipv_6_ranges #=> Array
    #   resp.findings[0].resources[0].details.aws_ec2_security_group.ip_permissions[0].ipv_6_ranges[0].cidr_ipv_6 #=> String
    #   resp.findings[0].resources[0].details.aws_ec2_security_group.ip_permissions[0].prefix_list_ids #=> Array
    #   resp.findings[0].resources[0].details.aws_ec2_security_group.ip_permissions[0].prefix_list_ids[0].prefix_list_id #=> String
    #   resp.findings[0].resources[0].details.aws_ec2_security_group.ip_permissions_egress #=> Array
    #   resp.findings[0].resources[0].details.aws_ec2_security_group.ip_permissions_egress[0].ip_protocol #=> String
    #   resp.findings[0].resources[0].details.aws_ec2_security_group.ip_permissions_egress[0].from_port #=> Integer
    #   resp.findings[0].resources[0].details.aws_ec2_security_group.ip_permissions_egress[0].to_port #=> Integer
    #   resp.findings[0].resources[0].details.aws_ec2_security_group.ip_permissions_egress[0].user_id_group_pairs #=> Array
    #   resp.findings[0].resources[0].details.aws_ec2_security_group.ip_permissions_egress[0].user_id_group_pairs[0].group_id #=> String
    #   resp.findings[0].resources[0].details.aws_ec2_security_group.ip_permissions_egress[0].user_id_group_pairs[0].group_name #=> String
    #   resp.findings[0].resources[0].details.aws_ec2_security_group.ip_permissions_egress[0].user_id_group_pairs[0].peering_status #=> String
    #   resp.findings[0].resources[0].details.aws_ec2_security_group.ip_permissions_egress[0].user_id_group_pairs[0].user_id #=> String
    #   resp.findings[0].resources[0].details.aws_ec2_security_group.ip_permissions_egress[0].user_id_group_pairs[0].vpc_id #=> String
    #   resp.findings[0].resources[0].details.aws_ec2_security_group.ip_permissions_egress[0].user_id_group_pairs[0].vpc_peering_connection_id #=> String
    #   resp.findings[0].resources[0].details.aws_ec2_security_group.ip_permissions_egress[0].ip_ranges #=> Array
    #   resp.findings[0].resources[0].details.aws_ec2_security_group.ip_permissions_egress[0].ip_ranges[0].cidr_ip #=> String
    #   resp.findings[0].resources[0].details.aws_ec2_security_group.ip_permissions_egress[0].ipv_6_ranges #=> Array
    #   resp.findings[0].resources[0].details.aws_ec2_security_group.ip_permissions_egress[0].ipv_6_ranges[0].cidr_ipv_6 #=> String
    #   resp.findings[0].resources[0].details.aws_ec2_security_group.ip_permissions_egress[0].prefix_list_ids #=> Array
    #   resp.findings[0].resources[0].details.aws_ec2_security_group.ip_permissions_egress[0].prefix_list_ids[0].prefix_list_id #=> String
    #   resp.findings[0].resources[0].details.aws_ec2_volume.create_time #=> String
    #   resp.findings[0].resources[0].details.aws_ec2_volume.encrypted #=> Boolean
    #   resp.findings[0].resources[0].details.aws_ec2_volume.size #=> Integer
    #   resp.findings[0].resources[0].details.aws_ec2_volume.snapshot_id #=> String
    #   resp.findings[0].resources[0].details.aws_ec2_volume.status #=> String
    #   resp.findings[0].resources[0].details.aws_ec2_volume.kms_key_id #=> String
    #   resp.findings[0].resources[0].details.aws_ec2_volume.attachments #=> Array
    #   resp.findings[0].resources[0].details.aws_ec2_volume.attachments[0].attach_time #=> String
    #   resp.findings[0].resources[0].details.aws_ec2_volume.attachments[0].delete_on_termination #=> Boolean
    #   resp.findings[0].resources[0].details.aws_ec2_volume.attachments[0].instance_id #=> String
    #   resp.findings[0].resources[0].details.aws_ec2_volume.attachments[0].status #=> String
    #   resp.findings[0].resources[0].details.aws_ec2_vpc.cidr_block_association_set #=> Array
    #   resp.findings[0].resources[0].details.aws_ec2_vpc.cidr_block_association_set[0].association_id #=> String
    #   resp.findings[0].resources[0].details.aws_ec2_vpc.cidr_block_association_set[0].cidr_block #=> String
    #   resp.findings[0].resources[0].details.aws_ec2_vpc.cidr_block_association_set[0].cidr_block_state #=> String
    #   resp.findings[0].resources[0].details.aws_ec2_vpc.ipv_6_cidr_block_association_set #=> Array
    #   resp.findings[0].resources[0].details.aws_ec2_vpc.ipv_6_cidr_block_association_set[0].association_id #=> String
    #   resp.findings[0].resources[0].details.aws_ec2_vpc.ipv_6_cidr_block_association_set[0].ipv_6_cidr_block #=> String
    #   resp.findings[0].resources[0].details.aws_ec2_vpc.ipv_6_cidr_block_association_set[0].cidr_block_state #=> String
    #   resp.findings[0].resources[0].details.aws_ec2_vpc.dhcp_options_id #=> String
    #   resp.findings[0].resources[0].details.aws_ec2_vpc.state #=> String
    #   resp.findings[0].resources[0].details.aws_ec2_eip.instance_id #=> String
    #   resp.findings[0].resources[0].details.aws_ec2_eip.public_ip #=> String
    #   resp.findings[0].resources[0].details.aws_ec2_eip.allocation_id #=> String
    #   resp.findings[0].resources[0].details.aws_ec2_eip.association_id #=> String
    #   resp.findings[0].resources[0].details.aws_ec2_eip.domain #=> String
    #   resp.findings[0].resources[0].details.aws_ec2_eip.public_ipv_4_pool #=> String
    #   resp.findings[0].resources[0].details.aws_ec2_eip.network_border_group #=> String
    #   resp.findings[0].resources[0].details.aws_ec2_eip.network_interface_id #=> String
    #   resp.findings[0].resources[0].details.aws_ec2_eip.network_interface_owner_id #=> String
    #   resp.findings[0].resources[0].details.aws_ec2_eip.private_ip_address #=> String
    #   resp.findings[0].resources[0].details.aws_elbv_2_load_balancer.availability_zones #=> Array
    #   resp.findings[0].resources[0].details.aws_elbv_2_load_balancer.availability_zones[0].zone_name #=> String
    #   resp.findings[0].resources[0].details.aws_elbv_2_load_balancer.availability_zones[0].subnet_id #=> String
    #   resp.findings[0].resources[0].details.aws_elbv_2_load_balancer.canonical_hosted_zone_id #=> String
    #   resp.findings[0].resources[0].details.aws_elbv_2_load_balancer.created_time #=> String
    #   resp.findings[0].resources[0].details.aws_elbv_2_load_balancer.dns_name #=> String
    #   resp.findings[0].resources[0].details.aws_elbv_2_load_balancer.ip_address_type #=> String
    #   resp.findings[0].resources[0].details.aws_elbv_2_load_balancer.scheme #=> String
    #   resp.findings[0].resources[0].details.aws_elbv_2_load_balancer.security_groups #=> Array
    #   resp.findings[0].resources[0].details.aws_elbv_2_load_balancer.security_groups[0] #=> String
    #   resp.findings[0].resources[0].details.aws_elbv_2_load_balancer.state.code #=> String
    #   resp.findings[0].resources[0].details.aws_elbv_2_load_balancer.state.reason #=> String
    #   resp.findings[0].resources[0].details.aws_elbv_2_load_balancer.type #=> String
    #   resp.findings[0].resources[0].details.aws_elbv_2_load_balancer.vpc_id #=> String
    #   resp.findings[0].resources[0].details.aws_elasticsearch_domain.access_policies #=> String
    #   resp.findings[0].resources[0].details.aws_elasticsearch_domain.domain_endpoint_options.enforce_https #=> Boolean
    #   resp.findings[0].resources[0].details.aws_elasticsearch_domain.domain_endpoint_options.tls_security_policy #=> String
    #   resp.findings[0].resources[0].details.aws_elasticsearch_domain.domain_id #=> String
    #   resp.findings[0].resources[0].details.aws_elasticsearch_domain.domain_name #=> String
    #   resp.findings[0].resources[0].details.aws_elasticsearch_domain.endpoint #=> String
    #   resp.findings[0].resources[0].details.aws_elasticsearch_domain.endpoints #=> Hash
    #   resp.findings[0].resources[0].details.aws_elasticsearch_domain.endpoints["NonEmptyString"] #=> String
    #   resp.findings[0].resources[0].details.aws_elasticsearch_domain.elasticsearch_version #=> String
    #   resp.findings[0].resources[0].details.aws_elasticsearch_domain.encryption_at_rest_options.enabled #=> Boolean
    #   resp.findings[0].resources[0].details.aws_elasticsearch_domain.encryption_at_rest_options.kms_key_id #=> String
    #   resp.findings[0].resources[0].details.aws_elasticsearch_domain.node_to_node_encryption_options.enabled #=> Boolean
    #   resp.findings[0].resources[0].details.aws_elasticsearch_domain.vpc_options.availability_zones #=> Array
    #   resp.findings[0].resources[0].details.aws_elasticsearch_domain.vpc_options.availability_zones[0] #=> String
    #   resp.findings[0].resources[0].details.aws_elasticsearch_domain.vpc_options.security_group_ids #=> Array
    #   resp.findings[0].resources[0].details.aws_elasticsearch_domain.vpc_options.security_group_ids[0] #=> String
    #   resp.findings[0].resources[0].details.aws_elasticsearch_domain.vpc_options.subnet_ids #=> Array
    #   resp.findings[0].resources[0].details.aws_elasticsearch_domain.vpc_options.subnet_ids[0] #=> String
    #   resp.findings[0].resources[0].details.aws_elasticsearch_domain.vpc_options.vpc_id #=> String
    #   resp.findings[0].resources[0].details.aws_s3_bucket.owner_id #=> String
    #   resp.findings[0].resources[0].details.aws_s3_bucket.owner_name #=> String
    #   resp.findings[0].resources[0].details.aws_s3_bucket.created_at #=> String
    #   resp.findings[0].resources[0].details.aws_s3_bucket.server_side_encryption_configuration.rules #=> Array
    #   resp.findings[0].resources[0].details.aws_s3_bucket.server_side_encryption_configuration.rules[0].apply_server_side_encryption_by_default.sse_algorithm #=> String
    #   resp.findings[0].resources[0].details.aws_s3_bucket.server_side_encryption_configuration.rules[0].apply_server_side_encryption_by_default.kms_master_key_id #=> String
    #   resp.findings[0].resources[0].details.aws_s3_object.last_modified #=> String
    #   resp.findings[0].resources[0].details.aws_s3_object.etag #=> String
    #   resp.findings[0].resources[0].details.aws_s3_object.version_id #=> String
    #   resp.findings[0].resources[0].details.aws_s3_object.content_type #=> String
    #   resp.findings[0].resources[0].details.aws_s3_object.server_side_encryption #=> String
    #   resp.findings[0].resources[0].details.aws_s3_object.ssekms_key_id #=> String
    #   resp.findings[0].resources[0].details.aws_secrets_manager_secret.rotation_rules.automatically_after_days #=> Integer
    #   resp.findings[0].resources[0].details.aws_secrets_manager_secret.rotation_occurred_within_frequency #=> Boolean
    #   resp.findings[0].resources[0].details.aws_secrets_manager_secret.kms_key_id #=> String
    #   resp.findings[0].resources[0].details.aws_secrets_manager_secret.rotation_enabled #=> Boolean
    #   resp.findings[0].resources[0].details.aws_secrets_manager_secret.rotation_lambda_arn #=> String
    #   resp.findings[0].resources[0].details.aws_secrets_manager_secret.deleted #=> Boolean
    #   resp.findings[0].resources[0].details.aws_secrets_manager_secret.name #=> String
    #   resp.findings[0].resources[0].details.aws_secrets_manager_secret.description #=> String
    #   resp.findings[0].resources[0].details.aws_iam_access_key.user_name #=> String
    #   resp.findings[0].resources[0].details.aws_iam_access_key.status #=> String, one of "Active", "Inactive"
    #   resp.findings[0].resources[0].details.aws_iam_access_key.created_at #=> String
    #   resp.findings[0].resources[0].details.aws_iam_access_key.principal_id #=> String
    #   resp.findings[0].resources[0].details.aws_iam_access_key.principal_type #=> String
    #   resp.findings[0].resources[0].details.aws_iam_access_key.principal_name #=> String
    #   resp.findings[0].resources[0].details.aws_iam_access_key.account_id #=> String
    #   resp.findings[0].resources[0].details.aws_iam_access_key.access_key_id #=> String
    #   resp.findings[0].resources[0].details.aws_iam_access_key.session_context.attributes.mfa_authenticated #=> Boolean
    #   resp.findings[0].resources[0].details.aws_iam_access_key.session_context.attributes.creation_date #=> String
    #   resp.findings[0].resources[0].details.aws_iam_access_key.session_context.session_issuer.type #=> String
    #   resp.findings[0].resources[0].details.aws_iam_access_key.session_context.session_issuer.principal_id #=> String
    #   resp.findings[0].resources[0].details.aws_iam_access_key.session_context.session_issuer.arn #=> String
    #   resp.findings[0].resources[0].details.aws_iam_access_key.session_context.session_issuer.account_id #=> String
    #   resp.findings[0].resources[0].details.aws_iam_access_key.session_context.session_issuer.user_name #=> String
    #   resp.findings[0].resources[0].details.aws_iam_user.attached_managed_policies #=> Array
    #   resp.findings[0].resources[0].details.aws_iam_user.attached_managed_policies[0].policy_name #=> String
    #   resp.findings[0].resources[0].details.aws_iam_user.attached_managed_policies[0].policy_arn #=> String
    #   resp.findings[0].resources[0].details.aws_iam_user.create_date #=> String
    #   resp.findings[0].resources[0].details.aws_iam_user.group_list #=> Array
    #   resp.findings[0].resources[0].details.aws_iam_user.group_list[0] #=> String
    #   resp.findings[0].resources[0].details.aws_iam_user.path #=> String
    #   resp.findings[0].resources[0].details.aws_iam_user.permissions_boundary.permissions_boundary_arn #=> String
    #   resp.findings[0].resources[0].details.aws_iam_user.permissions_boundary.permissions_boundary_type #=> String
    #   resp.findings[0].resources[0].details.aws_iam_user.user_id #=> String
    #   resp.findings[0].resources[0].details.aws_iam_user.user_name #=> String
    #   resp.findings[0].resources[0].details.aws_iam_user.user_policy_list #=> Array
    #   resp.findings[0].resources[0].details.aws_iam_user.user_policy_list[0].policy_name #=> String
    #   resp.findings[0].resources[0].details.aws_iam_policy.attachment_count #=> Integer
    #   resp.findings[0].resources[0].details.aws_iam_policy.create_date #=> String
    #   resp.findings[0].resources[0].details.aws_iam_policy.default_version_id #=> String
    #   resp.findings[0].resources[0].details.aws_iam_policy.description #=> String
    #   resp.findings[0].resources[0].details.aws_iam_policy.is_attachable #=> Boolean
    #   resp.findings[0].resources[0].details.aws_iam_policy.path #=> String
    #   resp.findings[0].resources[0].details.aws_iam_policy.permissions_boundary_usage_count #=> Integer
    #   resp.findings[0].resources[0].details.aws_iam_policy.policy_id #=> String
    #   resp.findings[0].resources[0].details.aws_iam_policy.policy_name #=> String
    #   resp.findings[0].resources[0].details.aws_iam_policy.policy_version_list #=> Array
    #   resp.findings[0].resources[0].details.aws_iam_policy.policy_version_list[0].version_id #=> String
    #   resp.findings[0].resources[0].details.aws_iam_policy.policy_version_list[0].is_default_version #=> Boolean
    #   resp.findings[0].resources[0].details.aws_iam_policy.policy_version_list[0].create_date #=> String
    #   resp.findings[0].resources[0].details.aws_iam_policy.update_date #=> String
    #   resp.findings[0].resources[0].details.aws_api_gateway_v2_stage.created_date #=> String
    #   resp.findings[0].resources[0].details.aws_api_gateway_v2_stage.description #=> String
    #   resp.findings[0].resources[0].details.aws_api_gateway_v2_stage.default_route_settings.detailed_metrics_enabled #=> Boolean
    #   resp.findings[0].resources[0].details.aws_api_gateway_v2_stage.default_route_settings.logging_level #=> String
    #   resp.findings[0].resources[0].details.aws_api_gateway_v2_stage.default_route_settings.data_trace_enabled #=> Boolean
    #   resp.findings[0].resources[0].details.aws_api_gateway_v2_stage.default_route_settings.throttling_burst_limit #=> Integer
    #   resp.findings[0].resources[0].details.aws_api_gateway_v2_stage.default_route_settings.throttling_rate_limit #=> Float
    #   resp.findings[0].resources[0].details.aws_api_gateway_v2_stage.deployment_id #=> String
    #   resp.findings[0].resources[0].details.aws_api_gateway_v2_stage.last_updated_date #=> String
    #   resp.findings[0].resources[0].details.aws_api_gateway_v2_stage.route_settings.detailed_metrics_enabled #=> Boolean
    #   resp.findings[0].resources[0].details.aws_api_gateway_v2_stage.route_settings.logging_level #=> String
    #   resp.findings[0].resources[0].details.aws_api_gateway_v2_stage.route_settings.data_trace_enabled #=> Boolean
    #   resp.findings[0].resources[0].details.aws_api_gateway_v2_stage.route_settings.throttling_burst_limit #=> Integer
    #   resp.findings[0].resources[0].details.aws_api_gateway_v2_stage.route_settings.throttling_rate_limit #=> Float
    #   resp.findings[0].resources[0].details.aws_api_gateway_v2_stage.stage_name #=> String
    #   resp.findings[0].resources[0].details.aws_api_gateway_v2_stage.stage_variables #=> Hash
    #   resp.findings[0].resources[0].details.aws_api_gateway_v2_stage.stage_variables["NonEmptyString"] #=> String
    #   resp.findings[0].resources[0].details.aws_api_gateway_v2_stage.access_log_settings.format #=> String
    #   resp.findings[0].resources[0].details.aws_api_gateway_v2_stage.access_log_settings.destination_arn #=> String
    #   resp.findings[0].resources[0].details.aws_api_gateway_v2_stage.auto_deploy #=> Boolean
    #   resp.findings[0].resources[0].details.aws_api_gateway_v2_stage.last_deployment_status_message #=> String
    #   resp.findings[0].resources[0].details.aws_api_gateway_v2_stage.api_gateway_managed #=> Boolean
    #   resp.findings[0].resources[0].details.aws_api_gateway_v2_api.api_endpoint #=> String
    #   resp.findings[0].resources[0].details.aws_api_gateway_v2_api.api_id #=> String
    #   resp.findings[0].resources[0].details.aws_api_gateway_v2_api.api_key_selection_expression #=> String
    #   resp.findings[0].resources[0].details.aws_api_gateway_v2_api.created_date #=> String
    #   resp.findings[0].resources[0].details.aws_api_gateway_v2_api.description #=> String
    #   resp.findings[0].resources[0].details.aws_api_gateway_v2_api.version #=> String
    #   resp.findings[0].resources[0].details.aws_api_gateway_v2_api.name #=> String
    #   resp.findings[0].resources[0].details.aws_api_gateway_v2_api.protocol_type #=> String
    #   resp.findings[0].resources[0].details.aws_api_gateway_v2_api.route_selection_expression #=> String
    #   resp.findings[0].resources[0].details.aws_api_gateway_v2_api.cors_configuration.allow_origins #=> Array
    #   resp.findings[0].resources[0].details.aws_api_gateway_v2_api.cors_configuration.allow_origins[0] #=> String
    #   resp.findings[0].resources[0].details.aws_api_gateway_v2_api.cors_configuration.allow_credentials #=> Boolean
    #   resp.findings[0].resources[0].details.aws_api_gateway_v2_api.cors_configuration.expose_headers #=> Array
    #   resp.findings[0].resources[0].details.aws_api_gateway_v2_api.cors_configuration.expose_headers[0] #=> String
    #   resp.findings[0].resources[0].details.aws_api_gateway_v2_api.cors_configuration.max_age #=> Integer
    #   resp.findings[0].resources[0].details.aws_api_gateway_v2_api.cors_configuration.allow_methods #=> Array
    #   resp.findings[0].resources[0].details.aws_api_gateway_v2_api.cors_configuration.allow_methods[0] #=> String
    #   resp.findings[0].resources[0].details.aws_api_gateway_v2_api.cors_configuration.allow_headers #=> Array
    #   resp.findings[0].resources[0].details.aws_api_gateway_v2_api.cors_configuration.allow_headers[0] #=> String
    #   resp.findings[0].resources[0].details.aws_dynamo_db_table.attribute_definitions #=> Array
    #   resp.findings[0].resources[0].details.aws_dynamo_db_table.attribute_definitions[0].attribute_name #=> String
    #   resp.findings[0].resources[0].details.aws_dynamo_db_table.attribute_definitions[0].attribute_type #=> String
    #   resp.findings[0].resources[0].details.aws_dynamo_db_table.billing_mode_summary.billing_mode #=> String
    #   resp.findings[0].resources[0].details.aws_dynamo_db_table.billing_mode_summary.last_update_to_pay_per_request_date_time #=> String
    #   resp.findings[0].resources[0].details.aws_dynamo_db_table.creation_date_time #=> String
    #   resp.findings[0].resources[0].details.aws_dynamo_db_table.global_secondary_indexes #=> Array
    #   resp.findings[0].resources[0].details.aws_dynamo_db_table.global_secondary_indexes[0].backfilling #=> Boolean
    #   resp.findings[0].resources[0].details.aws_dynamo_db_table.global_secondary_indexes[0].index_arn #=> String
    #   resp.findings[0].resources[0].details.aws_dynamo_db_table.global_secondary_indexes[0].index_name #=> String
    #   resp.findings[0].resources[0].details.aws_dynamo_db_table.global_secondary_indexes[0].index_size_bytes #=> Integer
    #   resp.findings[0].resources[0].details.aws_dynamo_db_table.global_secondary_indexes[0].index_status #=> String
    #   resp.findings[0].resources[0].details.aws_dynamo_db_table.global_secondary_indexes[0].item_count #=> Integer
    #   resp.findings[0].resources[0].details.aws_dynamo_db_table.global_secondary_indexes[0].key_schema #=> Array
    #   resp.findings[0].resources[0].details.aws_dynamo_db_table.global_secondary_indexes[0].key_schema[0].attribute_name #=> String
    #   resp.findings[0].resources[0].details.aws_dynamo_db_table.global_secondary_indexes[0].key_schema[0].key_type #=> String
    #   resp.findings[0].resources[0].details.aws_dynamo_db_table.global_secondary_indexes[0].projection.non_key_attributes #=> Array
    #   resp.findings[0].resources[0].details.aws_dynamo_db_table.global_secondary_indexes[0].projection.non_key_attributes[0] #=> String
    #   resp.findings[0].resources[0].details.aws_dynamo_db_table.global_secondary_indexes[0].projection.projection_type #=> String
    #   resp.findings[0].resources[0].details.aws_dynamo_db_table.global_secondary_indexes[0].provisioned_throughput.last_decrease_date_time #=> String
    #   resp.findings[0].resources[0].details.aws_dynamo_db_table.global_secondary_indexes[0].provisioned_throughput.last_increase_date_time #=> String
    #   resp.findings[0].resources[0].details.aws_dynamo_db_table.global_secondary_indexes[0].provisioned_throughput.number_of_decreases_today #=> Integer
    #   resp.findings[0].resources[0].details.aws_dynamo_db_table.global_secondary_indexes[0].provisioned_throughput.read_capacity_units #=> Integer
    #   resp.findings[0].resources[0].details.aws_dynamo_db_table.global_secondary_indexes[0].provisioned_throughput.write_capacity_units #=> Integer
    #   resp.findings[0].resources[0].details.aws_dynamo_db_table.global_table_version #=> String
    #   resp.findings[0].resources[0].details.aws_dynamo_db_table.item_count #=> Integer
    #   resp.findings[0].resources[0].details.aws_dynamo_db_table.key_schema #=> Array
    #   resp.findings[0].resources[0].details.aws_dynamo_db_table.key_schema[0].attribute_name #=> String
    #   resp.findings[0].resources[0].details.aws_dynamo_db_table.key_schema[0].key_type #=> String
    #   resp.findings[0].resources[0].details.aws_dynamo_db_table.latest_stream_arn #=> String
    #   resp.findings[0].resources[0].details.aws_dynamo_db_table.latest_stream_label #=> String
    #   resp.findings[0].resources[0].details.aws_dynamo_db_table.local_secondary_indexes #=> Array
    #   resp.findings[0].resources[0].details.aws_dynamo_db_table.local_secondary_indexes[0].index_arn #=> String
    #   resp.findings[0].resources[0].details.aws_dynamo_db_table.local_secondary_indexes[0].index_name #=> String
    #   resp.findings[0].resources[0].details.aws_dynamo_db_table.local_secondary_indexes[0].key_schema #=> Array
    #   resp.findings[0].resources[0].details.aws_dynamo_db_table.local_secondary_indexes[0].key_schema[0].attribute_name #=> String
    #   resp.findings[0].resources[0].details.aws_dynamo_db_table.local_secondary_indexes[0].key_schema[0].key_type #=> String
    #   resp.findings[0].resources[0].details.aws_dynamo_db_table.local_secondary_indexes[0].projection.non_key_attributes #=> Array
    #   resp.findings[0].resources[0].details.aws_dynamo_db_table.local_secondary_indexes[0].projection.non_key_attributes[0] #=> String
    #   resp.findings[0].resources[0].details.aws_dynamo_db_table.local_secondary_indexes[0].projection.projection_type #=> String
    #   resp.findings[0].resources[0].details.aws_dynamo_db_table.provisioned_throughput.last_decrease_date_time #=> String
    #   resp.findings[0].resources[0].details.aws_dynamo_db_table.provisioned_throughput.last_increase_date_time #=> String
    #   resp.findings[0].resources[0].details.aws_dynamo_db_table.provisioned_throughput.number_of_decreases_today #=> Integer
    #   resp.findings[0].resources[0].details.aws_dynamo_db_table.provisioned_throughput.read_capacity_units #=> Integer
    #   resp.findings[0].resources[0].details.aws_dynamo_db_table.provisioned_throughput.write_capacity_units #=> Integer
    #   resp.findings[0].resources[0].details.aws_dynamo_db_table.replicas #=> Array
    #   resp.findings[0].resources[0].details.aws_dynamo_db_table.replicas[0].global_secondary_indexes #=> Array
    #   resp.findings[0].resources[0].details.aws_dynamo_db_table.replicas[0].global_secondary_indexes[0].index_name #=> String
    #   resp.findings[0].resources[0].details.aws_dynamo_db_table.replicas[0].global_secondary_indexes[0].provisioned_throughput_override.read_capacity_units #=> Integer
    #   resp.findings[0].resources[0].details.aws_dynamo_db_table.replicas[0].kms_master_key_id #=> String
    #   resp.findings[0].resources[0].details.aws_dynamo_db_table.replicas[0].provisioned_throughput_override.read_capacity_units #=> Integer
    #   resp.findings[0].resources[0].details.aws_dynamo_db_table.replicas[0].region_name #=> String
    #   resp.findings[0].resources[0].details.aws_dynamo_db_table.replicas[0].replica_status #=> String
    #   resp.findings[0].resources[0].details.aws_dynamo_db_table.replicas[0].replica_status_description #=> String
    #   resp.findings[0].resources[0].details.aws_dynamo_db_table.restore_summary.source_backup_arn #=> String
    #   resp.findings[0].resources[0].details.aws_dynamo_db_table.restore_summary.source_table_arn #=> String
    #   resp.findings[0].resources[0].details.aws_dynamo_db_table.restore_summary.restore_date_time #=> String
    #   resp.findings[0].resources[0].details.aws_dynamo_db_table.restore_summary.restore_in_progress #=> Boolean
    #   resp.findings[0].resources[0].details.aws_dynamo_db_table.sse_description.inaccessible_encryption_date_time #=> String
    #   resp.findings[0].resources[0].details.aws_dynamo_db_table.sse_description.status #=> String
    #   resp.findings[0].resources[0].details.aws_dynamo_db_table.sse_description.sse_type #=> String
    #   resp.findings[0].resources[0].details.aws_dynamo_db_table.sse_description.kms_master_key_arn #=> String
    #   resp.findings[0].resources[0].details.aws_dynamo_db_table.stream_specification.stream_enabled #=> Boolean
    #   resp.findings[0].resources[0].details.aws_dynamo_db_table.stream_specification.stream_view_type #=> String
    #   resp.findings[0].resources[0].details.aws_dynamo_db_table.table_id #=> String
    #   resp.findings[0].resources[0].details.aws_dynamo_db_table.table_name #=> String
    #   resp.findings[0].resources[0].details.aws_dynamo_db_table.table_size_bytes #=> Integer
    #   resp.findings[0].resources[0].details.aws_dynamo_db_table.table_status #=> String
    #   resp.findings[0].resources[0].details.aws_api_gateway_stage.deployment_id #=> String
    #   resp.findings[0].resources[0].details.aws_api_gateway_stage.client_certificate_id #=> String
    #   resp.findings[0].resources[0].details.aws_api_gateway_stage.stage_name #=> String
    #   resp.findings[0].resources[0].details.aws_api_gateway_stage.description #=> String
    #   resp.findings[0].resources[0].details.aws_api_gateway_stage.cache_cluster_enabled #=> Boolean
    #   resp.findings[0].resources[0].details.aws_api_gateway_stage.cache_cluster_size #=> String
    #   resp.findings[0].resources[0].details.aws_api_gateway_stage.cache_cluster_status #=> String
    #   resp.findings[0].resources[0].details.aws_api_gateway_stage.method_settings #=> Array
    #   resp.findings[0].resources[0].details.aws_api_gateway_stage.method_settings[0].metrics_enabled #=> Boolean
    #   resp.findings[0].resources[0].details.aws_api_gateway_stage.method_settings[0].logging_level #=> String
    #   resp.findings[0].resources[0].details.aws_api_gateway_stage.method_settings[0].data_trace_enabled #=> Boolean
    #   resp.findings[0].resources[0].details.aws_api_gateway_stage.method_settings[0].throttling_burst_limit #=> Integer
    #   resp.findings[0].resources[0].details.aws_api_gateway_stage.method_settings[0].throttling_rate_limit #=> Float
    #   resp.findings[0].resources[0].details.aws_api_gateway_stage.method_settings[0].caching_enabled #=> Boolean
    #   resp.findings[0].resources[0].details.aws_api_gateway_stage.method_settings[0].cache_ttl_in_seconds #=> Integer
    #   resp.findings[0].resources[0].details.aws_api_gateway_stage.method_settings[0].cache_data_encrypted #=> Boolean
    #   resp.findings[0].resources[0].details.aws_api_gateway_stage.method_settings[0].require_authorization_for_cache_control #=> Boolean
    #   resp.findings[0].resources[0].details.aws_api_gateway_stage.method_settings[0].unauthorized_cache_control_header_strategy #=> String
    #   resp.findings[0].resources[0].details.aws_api_gateway_stage.method_settings[0].http_method #=> String
    #   resp.findings[0].resources[0].details.aws_api_gateway_stage.method_settings[0].resource_path #=> String
    #   resp.findings[0].resources[0].details.aws_api_gateway_stage.variables #=> Hash
    #   resp.findings[0].resources[0].details.aws_api_gateway_stage.variables["NonEmptyString"] #=> String
    #   resp.findings[0].resources[0].details.aws_api_gateway_stage.documentation_version #=> String
    #   resp.findings[0].resources[0].details.aws_api_gateway_stage.access_log_settings.format #=> String
    #   resp.findings[0].resources[0].details.aws_api_gateway_stage.access_log_settings.destination_arn #=> String
    #   resp.findings[0].resources[0].details.aws_api_gateway_stage.canary_settings.percent_traffic #=> Float
    #   resp.findings[0].resources[0].details.aws_api_gateway_stage.canary_settings.deployment_id #=> String
    #   resp.findings[0].resources[0].details.aws_api_gateway_stage.canary_settings.stage_variable_overrides #=> Hash
    #   resp.findings[0].resources[0].details.aws_api_gateway_stage.canary_settings.stage_variable_overrides["NonEmptyString"] #=> String
    #   resp.findings[0].resources[0].details.aws_api_gateway_stage.canary_settings.use_stage_cache #=> Boolean
    #   resp.findings[0].resources[0].details.aws_api_gateway_stage.tracing_enabled #=> Boolean
    #   resp.findings[0].resources[0].details.aws_api_gateway_stage.created_date #=> String
    #   resp.findings[0].resources[0].details.aws_api_gateway_stage.last_updated_date #=> String
    #   resp.findings[0].resources[0].details.aws_api_gateway_stage.web_acl_arn #=> String
    #   resp.findings[0].resources[0].details.aws_api_gateway_rest_api.id #=> String
    #   resp.findings[0].resources[0].details.aws_api_gateway_rest_api.name #=> String
    #   resp.findings[0].resources[0].details.aws_api_gateway_rest_api.description #=> String
    #   resp.findings[0].resources[0].details.aws_api_gateway_rest_api.created_date #=> String
    #   resp.findings[0].resources[0].details.aws_api_gateway_rest_api.version #=> String
    #   resp.findings[0].resources[0].details.aws_api_gateway_rest_api.binary_media_types #=> Array
    #   resp.findings[0].resources[0].details.aws_api_gateway_rest_api.binary_media_types[0] #=> String
    #   resp.findings[0].resources[0].details.aws_api_gateway_rest_api.minimum_compression_size #=> Integer
    #   resp.findings[0].resources[0].details.aws_api_gateway_rest_api.api_key_source #=> String
    #   resp.findings[0].resources[0].details.aws_api_gateway_rest_api.endpoint_configuration.types #=> Array
    #   resp.findings[0].resources[0].details.aws_api_gateway_rest_api.endpoint_configuration.types[0] #=> String
    #   resp.findings[0].resources[0].details.aws_cloud_trail_trail.cloud_watch_logs_log_group_arn #=> String
    #   resp.findings[0].resources[0].details.aws_cloud_trail_trail.cloud_watch_logs_role_arn #=> String
    #   resp.findings[0].resources[0].details.aws_cloud_trail_trail.has_custom_event_selectors #=> Boolean
    #   resp.findings[0].resources[0].details.aws_cloud_trail_trail.home_region #=> String
    #   resp.findings[0].resources[0].details.aws_cloud_trail_trail.include_global_service_events #=> Boolean
    #   resp.findings[0].resources[0].details.aws_cloud_trail_trail.is_multi_region_trail #=> Boolean
    #   resp.findings[0].resources[0].details.aws_cloud_trail_trail.is_organization_trail #=> Boolean
    #   resp.findings[0].resources[0].details.aws_cloud_trail_trail.kms_key_id #=> String
    #   resp.findings[0].resources[0].details.aws_cloud_trail_trail.log_file_validation_enabled #=> Boolean
    #   resp.findings[0].resources[0].details.aws_cloud_trail_trail.name #=> String
    #   resp.findings[0].resources[0].details.aws_cloud_trail_trail.s3_bucket_name #=> String
    #   resp.findings[0].resources[0].details.aws_cloud_trail_trail.s3_key_prefix #=> String
    #   resp.findings[0].resources[0].details.aws_cloud_trail_trail.sns_topic_arn #=> String
    #   resp.findings[0].resources[0].details.aws_cloud_trail_trail.sns_topic_name #=> String
    #   resp.findings[0].resources[0].details.aws_cloud_trail_trail.trail_arn #=> String
    #   resp.findings[0].resources[0].details.aws_certificate_manager_certificate.certificate_authority_arn #=> String
    #   resp.findings[0].resources[0].details.aws_certificate_manager_certificate.created_at #=> String
    #   resp.findings[0].resources[0].details.aws_certificate_manager_certificate.domain_name #=> String
    #   resp.findings[0].resources[0].details.aws_certificate_manager_certificate.domain_validation_options #=> Array
    #   resp.findings[0].resources[0].details.aws_certificate_manager_certificate.domain_validation_options[0].domain_name #=> String
    #   resp.findings[0].resources[0].details.aws_certificate_manager_certificate.domain_validation_options[0].resource_record.name #=> String
    #   resp.findings[0].resources[0].details.aws_certificate_manager_certificate.domain_validation_options[0].resource_record.type #=> String
    #   resp.findings[0].resources[0].details.aws_certificate_manager_certificate.domain_validation_options[0].resource_record.value #=> String
    #   resp.findings[0].resources[0].details.aws_certificate_manager_certificate.domain_validation_options[0].validation_domain #=> String
    #   resp.findings[0].resources[0].details.aws_certificate_manager_certificate.domain_validation_options[0].validation_emails #=> Array
    #   resp.findings[0].resources[0].details.aws_certificate_manager_certificate.domain_validation_options[0].validation_emails[0] #=> String
    #   resp.findings[0].resources[0].details.aws_certificate_manager_certificate.domain_validation_options[0].validation_method #=> String
    #   resp.findings[0].resources[0].details.aws_certificate_manager_certificate.domain_validation_options[0].validation_status #=> String
    #   resp.findings[0].resources[0].details.aws_certificate_manager_certificate.extended_key_usages #=> Array
    #   resp.findings[0].resources[0].details.aws_certificate_manager_certificate.extended_key_usages[0].name #=> String
    #   resp.findings[0].resources[0].details.aws_certificate_manager_certificate.extended_key_usages[0].o_id #=> String
    #   resp.findings[0].resources[0].details.aws_certificate_manager_certificate.failure_reason #=> String
    #   resp.findings[0].resources[0].details.aws_certificate_manager_certificate.imported_at #=> String
    #   resp.findings[0].resources[0].details.aws_certificate_manager_certificate.in_use_by #=> Array
    #   resp.findings[0].resources[0].details.aws_certificate_manager_certificate.in_use_by[0] #=> String
    #   resp.findings[0].resources[0].details.aws_certificate_manager_certificate.issued_at #=> String
    #   resp.findings[0].resources[0].details.aws_certificate_manager_certificate.issuer #=> String
    #   resp.findings[0].resources[0].details.aws_certificate_manager_certificate.key_algorithm #=> String
    #   resp.findings[0].resources[0].details.aws_certificate_manager_certificate.key_usages #=> Array
    #   resp.findings[0].resources[0].details.aws_certificate_manager_certificate.key_usages[0].name #=> String
    #   resp.findings[0].resources[0].details.aws_certificate_manager_certificate.not_after #=> String
    #   resp.findings[0].resources[0].details.aws_certificate_manager_certificate.not_before #=> String
    #   resp.findings[0].resources[0].details.aws_certificate_manager_certificate.options.certificate_transparency_logging_preference #=> String
    #   resp.findings[0].resources[0].details.aws_certificate_manager_certificate.renewal_eligibility #=> String
    #   resp.findings[0].resources[0].details.aws_certificate_manager_certificate.renewal_summary.domain_validation_options #=> Array
    #   resp.findings[0].resources[0].details.aws_certificate_manager_certificate.renewal_summary.domain_validation_options[0].domain_name #=> String
    #   resp.findings[0].resources[0].details.aws_certificate_manager_certificate.renewal_summary.domain_validation_options[0].resource_record.name #=> String
    #   resp.findings[0].resources[0].details.aws_certificate_manager_certificate.renewal_summary.domain_validation_options[0].resource_record.type #=> String
    #   resp.findings[0].resources[0].details.aws_certificate_manager_certificate.renewal_summary.domain_validation_options[0].resource_record.value #=> String
    #   resp.findings[0].resources[0].details.aws_certificate_manager_certificate.renewal_summary.domain_validation_options[0].validation_domain #=> String
    #   resp.findings[0].resources[0].details.aws_certificate_manager_certificate.renewal_summary.domain_validation_options[0].validation_emails #=> Array
    #   resp.findings[0].resources[0].details.aws_certificate_manager_certificate.renewal_summary.domain_validation_options[0].validation_emails[0] #=> String
    #   resp.findings[0].resources[0].details.aws_certificate_manager_certificate.renewal_summary.domain_validation_options[0].validation_method #=> String
    #   resp.findings[0].resources[0].details.aws_certificate_manager_certificate.renewal_summary.domain_validation_options[0].validation_status #=> String
    #   resp.findings[0].resources[0].details.aws_certificate_manager_certificate.renewal_summary.renewal_status #=> String
    #   resp.findings[0].resources[0].details.aws_certificate_manager_certificate.renewal_summary.renewal_status_reason #=> String
    #   resp.findings[0].resources[0].details.aws_certificate_manager_certificate.renewal_summary.updated_at #=> String
    #   resp.findings[0].resources[0].details.aws_certificate_manager_certificate.serial #=> String
    #   resp.findings[0].resources[0].details.aws_certificate_manager_certificate.signature_algorithm #=> String
    #   resp.findings[0].resources[0].details.aws_certificate_manager_certificate.status #=> String
    #   resp.findings[0].resources[0].details.aws_certificate_manager_certificate.subject #=> String
    #   resp.findings[0].resources[0].details.aws_certificate_manager_certificate.subject_alternative_names #=> Array
    #   resp.findings[0].resources[0].details.aws_certificate_manager_certificate.subject_alternative_names[0] #=> String
    #   resp.findings[0].resources[0].details.aws_certificate_manager_certificate.type #=> String
    #   resp.findings[0].resources[0].details.aws_redshift_cluster.allow_version_upgrade #=> Boolean
    #   resp.findings[0].resources[0].details.aws_redshift_cluster.automated_snapshot_retention_period #=> Integer
    #   resp.findings[0].resources[0].details.aws_redshift_cluster.availability_zone #=> String
    #   resp.findings[0].resources[0].details.aws_redshift_cluster.cluster_availability_status #=> String
    #   resp.findings[0].resources[0].details.aws_redshift_cluster.cluster_create_time #=> String
    #   resp.findings[0].resources[0].details.aws_redshift_cluster.cluster_identifier #=> String
    #   resp.findings[0].resources[0].details.aws_redshift_cluster.cluster_nodes #=> Array
    #   resp.findings[0].resources[0].details.aws_redshift_cluster.cluster_nodes[0].node_role #=> String
    #   resp.findings[0].resources[0].details.aws_redshift_cluster.cluster_nodes[0].private_ip_address #=> String
    #   resp.findings[0].resources[0].details.aws_redshift_cluster.cluster_nodes[0].public_ip_address #=> String
    #   resp.findings[0].resources[0].details.aws_redshift_cluster.cluster_parameter_groups #=> Array
    #   resp.findings[0].resources[0].details.aws_redshift_cluster.cluster_parameter_groups[0].cluster_parameter_status_list #=> Array
    #   resp.findings[0].resources[0].details.aws_redshift_cluster.cluster_parameter_groups[0].cluster_parameter_status_list[0].parameter_name #=> String
    #   resp.findings[0].resources[0].details.aws_redshift_cluster.cluster_parameter_groups[0].cluster_parameter_status_list[0].parameter_apply_status #=> String
    #   resp.findings[0].resources[0].details.aws_redshift_cluster.cluster_parameter_groups[0].cluster_parameter_status_list[0].parameter_apply_error_description #=> String
    #   resp.findings[0].resources[0].details.aws_redshift_cluster.cluster_parameter_groups[0].parameter_apply_status #=> String
    #   resp.findings[0].resources[0].details.aws_redshift_cluster.cluster_parameter_groups[0].parameter_group_name #=> String
    #   resp.findings[0].resources[0].details.aws_redshift_cluster.cluster_public_key #=> String
    #   resp.findings[0].resources[0].details.aws_redshift_cluster.cluster_revision_number #=> String
    #   resp.findings[0].resources[0].details.aws_redshift_cluster.cluster_security_groups #=> Array
    #   resp.findings[0].resources[0].details.aws_redshift_cluster.cluster_security_groups[0].cluster_security_group_name #=> String
    #   resp.findings[0].resources[0].details.aws_redshift_cluster.cluster_security_groups[0].status #=> String
    #   resp.findings[0].resources[0].details.aws_redshift_cluster.cluster_snapshot_copy_status.destination_region #=> String
    #   resp.findings[0].resources[0].details.aws_redshift_cluster.cluster_snapshot_copy_status.manual_snapshot_retention_period #=> Integer
    #   resp.findings[0].resources[0].details.aws_redshift_cluster.cluster_snapshot_copy_status.retention_period #=> Integer
    #   resp.findings[0].resources[0].details.aws_redshift_cluster.cluster_snapshot_copy_status.snapshot_copy_grant_name #=> String
    #   resp.findings[0].resources[0].details.aws_redshift_cluster.cluster_status #=> String
    #   resp.findings[0].resources[0].details.aws_redshift_cluster.cluster_subnet_group_name #=> String
    #   resp.findings[0].resources[0].details.aws_redshift_cluster.cluster_version #=> String
    #   resp.findings[0].resources[0].details.aws_redshift_cluster.db_name #=> String
    #   resp.findings[0].resources[0].details.aws_redshift_cluster.deferred_maintenance_windows #=> Array
    #   resp.findings[0].resources[0].details.aws_redshift_cluster.deferred_maintenance_windows[0].defer_maintenance_end_time #=> String
    #   resp.findings[0].resources[0].details.aws_redshift_cluster.deferred_maintenance_windows[0].defer_maintenance_identifier #=> String
    #   resp.findings[0].resources[0].details.aws_redshift_cluster.deferred_maintenance_windows[0].defer_maintenance_start_time #=> String
    #   resp.findings[0].resources[0].details.aws_redshift_cluster.elastic_ip_status.elastic_ip #=> String
    #   resp.findings[0].resources[0].details.aws_redshift_cluster.elastic_ip_status.status #=> String
    #   resp.findings[0].resources[0].details.aws_redshift_cluster.elastic_resize_number_of_node_options #=> String
    #   resp.findings[0].resources[0].details.aws_redshift_cluster.encrypted #=> Boolean
    #   resp.findings[0].resources[0].details.aws_redshift_cluster.endpoint.address #=> String
    #   resp.findings[0].resources[0].details.aws_redshift_cluster.endpoint.port #=> Integer
    #   resp.findings[0].resources[0].details.aws_redshift_cluster.enhanced_vpc_routing #=> Boolean
    #   resp.findings[0].resources[0].details.aws_redshift_cluster.expected_next_snapshot_schedule_time #=> String
    #   resp.findings[0].resources[0].details.aws_redshift_cluster.expected_next_snapshot_schedule_time_status #=> String
    #   resp.findings[0].resources[0].details.aws_redshift_cluster.hsm_status.hsm_client_certificate_identifier #=> String
    #   resp.findings[0].resources[0].details.aws_redshift_cluster.hsm_status.hsm_configuration_identifier #=> String
    #   resp.findings[0].resources[0].details.aws_redshift_cluster.hsm_status.status #=> String
    #   resp.findings[0].resources[0].details.aws_redshift_cluster.iam_roles #=> Array
    #   resp.findings[0].resources[0].details.aws_redshift_cluster.iam_roles[0].apply_status #=> String
    #   resp.findings[0].resources[0].details.aws_redshift_cluster.iam_roles[0].iam_role_arn #=> String
    #   resp.findings[0].resources[0].details.aws_redshift_cluster.kms_key_id #=> String
    #   resp.findings[0].resources[0].details.aws_redshift_cluster.maintenance_track_name #=> String
    #   resp.findings[0].resources[0].details.aws_redshift_cluster.manual_snapshot_retention_period #=> Integer
    #   resp.findings[0].resources[0].details.aws_redshift_cluster.master_username #=> String
    #   resp.findings[0].resources[0].details.aws_redshift_cluster.next_maintenance_window_start_time #=> String
    #   resp.findings[0].resources[0].details.aws_redshift_cluster.node_type #=> String
    #   resp.findings[0].resources[0].details.aws_redshift_cluster.number_of_nodes #=> Integer
    #   resp.findings[0].resources[0].details.aws_redshift_cluster.pending_actions #=> Array
    #   resp.findings[0].resources[0].details.aws_redshift_cluster.pending_actions[0] #=> String
    #   resp.findings[0].resources[0].details.aws_redshift_cluster.pending_modified_values.automated_snapshot_retention_period #=> Integer
    #   resp.findings[0].resources[0].details.aws_redshift_cluster.pending_modified_values.cluster_identifier #=> String
    #   resp.findings[0].resources[0].details.aws_redshift_cluster.pending_modified_values.cluster_type #=> String
    #   resp.findings[0].resources[0].details.aws_redshift_cluster.pending_modified_values.cluster_version #=> String
    #   resp.findings[0].resources[0].details.aws_redshift_cluster.pending_modified_values.encryption_type #=> String
    #   resp.findings[0].resources[0].details.aws_redshift_cluster.pending_modified_values.enhanced_vpc_routing #=> Boolean
    #   resp.findings[0].resources[0].details.aws_redshift_cluster.pending_modified_values.maintenance_track_name #=> String
    #   resp.findings[0].resources[0].details.aws_redshift_cluster.pending_modified_values.master_user_password #=> String
    #   resp.findings[0].resources[0].details.aws_redshift_cluster.pending_modified_values.node_type #=> String
    #   resp.findings[0].resources[0].details.aws_redshift_cluster.pending_modified_values.number_of_nodes #=> Integer
    #   resp.findings[0].resources[0].details.aws_redshift_cluster.pending_modified_values.publicly_accessible #=> Boolean
    #   resp.findings[0].resources[0].details.aws_redshift_cluster.preferred_maintenance_window #=> String
    #   resp.findings[0].resources[0].details.aws_redshift_cluster.publicly_accessible #=> Boolean
    #   resp.findings[0].resources[0].details.aws_redshift_cluster.resize_info.allow_cancel_resize #=> Boolean
    #   resp.findings[0].resources[0].details.aws_redshift_cluster.resize_info.resize_type #=> String
    #   resp.findings[0].resources[0].details.aws_redshift_cluster.restore_status.current_restore_rate_in_mega_bytes_per_second #=> Float
    #   resp.findings[0].resources[0].details.aws_redshift_cluster.restore_status.elapsed_time_in_seconds #=> Integer
    #   resp.findings[0].resources[0].details.aws_redshift_cluster.restore_status.estimated_time_to_completion_in_seconds #=> Integer
    #   resp.findings[0].resources[0].details.aws_redshift_cluster.restore_status.progress_in_mega_bytes #=> Integer
    #   resp.findings[0].resources[0].details.aws_redshift_cluster.restore_status.snapshot_size_in_mega_bytes #=> Integer
    #   resp.findings[0].resources[0].details.aws_redshift_cluster.restore_status.status #=> String
    #   resp.findings[0].resources[0].details.aws_redshift_cluster.snapshot_schedule_identifier #=> String
    #   resp.findings[0].resources[0].details.aws_redshift_cluster.snapshot_schedule_state #=> String
    #   resp.findings[0].resources[0].details.aws_redshift_cluster.vpc_id #=> String
    #   resp.findings[0].resources[0].details.aws_redshift_cluster.vpc_security_groups #=> Array
    #   resp.findings[0].resources[0].details.aws_redshift_cluster.vpc_security_groups[0].status #=> String
    #   resp.findings[0].resources[0].details.aws_redshift_cluster.vpc_security_groups[0].vpc_security_group_id #=> String
    #   resp.findings[0].resources[0].details.aws_elb_load_balancer.availability_zones #=> Array
    #   resp.findings[0].resources[0].details.aws_elb_load_balancer.availability_zones[0] #=> String
    #   resp.findings[0].resources[0].details.aws_elb_load_balancer.backend_server_descriptions #=> Array
    #   resp.findings[0].resources[0].details.aws_elb_load_balancer.backend_server_descriptions[0].instance_port #=> Integer
    #   resp.findings[0].resources[0].details.aws_elb_load_balancer.backend_server_descriptions[0].policy_names #=> Array
    #   resp.findings[0].resources[0].details.aws_elb_load_balancer.backend_server_descriptions[0].policy_names[0] #=> String
    #   resp.findings[0].resources[0].details.aws_elb_load_balancer.canonical_hosted_zone_name #=> String
    #   resp.findings[0].resources[0].details.aws_elb_load_balancer.canonical_hosted_zone_name_id #=> String
    #   resp.findings[0].resources[0].details.aws_elb_load_balancer.created_time #=> String
    #   resp.findings[0].resources[0].details.aws_elb_load_balancer.dns_name #=> String
    #   resp.findings[0].resources[0].details.aws_elb_load_balancer.health_check.healthy_threshold #=> Integer
    #   resp.findings[0].resources[0].details.aws_elb_load_balancer.health_check.interval #=> Integer
    #   resp.findings[0].resources[0].details.aws_elb_load_balancer.health_check.target #=> String
    #   resp.findings[0].resources[0].details.aws_elb_load_balancer.health_check.timeout #=> Integer
    #   resp.findings[0].resources[0].details.aws_elb_load_balancer.health_check.unhealthy_threshold #=> Integer
    #   resp.findings[0].resources[0].details.aws_elb_load_balancer.instances #=> Array
    #   resp.findings[0].resources[0].details.aws_elb_load_balancer.instances[0].instance_id #=> String
    #   resp.findings[0].resources[0].details.aws_elb_load_balancer.listener_descriptions #=> Array
    #   resp.findings[0].resources[0].details.aws_elb_load_balancer.listener_descriptions[0].listener.instance_port #=> Integer
    #   resp.findings[0].resources[0].details.aws_elb_load_balancer.listener_descriptions[0].listener.instance_protocol #=> String
    #   resp.findings[0].resources[0].details.aws_elb_load_balancer.listener_descriptions[0].listener.load_balancer_port #=> Integer
    #   resp.findings[0].resources[0].details.aws_elb_load_balancer.listener_descriptions[0].listener.protocol #=> String
    #   resp.findings[0].resources[0].details.aws_elb_load_balancer.listener_descriptions[0].listener.ssl_certificate_id #=> String
    #   resp.findings[0].resources[0].details.aws_elb_load_balancer.listener_descriptions[0].policy_names #=> Array
    #   resp.findings[0].resources[0].details.aws_elb_load_balancer.listener_descriptions[0].policy_names[0] #=> String
    #   resp.findings[0].resources[0].details.aws_elb_load_balancer.load_balancer_attributes.access_log.emit_interval #=> Integer
    #   resp.findings[0].resources[0].details.aws_elb_load_balancer.load_balancer_attributes.access_log.enabled #=> Boolean
    #   resp.findings[0].resources[0].details.aws_elb_load_balancer.load_balancer_attributes.access_log.s3_bucket_name #=> String
    #   resp.findings[0].resources[0].details.aws_elb_load_balancer.load_balancer_attributes.access_log.s3_bucket_prefix #=> String
    #   resp.findings[0].resources[0].details.aws_elb_load_balancer.load_balancer_attributes.connection_draining.enabled #=> Boolean
    #   resp.findings[0].resources[0].details.aws_elb_load_balancer.load_balancer_attributes.connection_draining.timeout #=> Integer
    #   resp.findings[0].resources[0].details.aws_elb_load_balancer.load_balancer_attributes.connection_settings.idle_timeout #=> Integer
    #   resp.findings[0].resources[0].details.aws_elb_load_balancer.load_balancer_attributes.cross_zone_load_balancing.enabled #=> Boolean
    #   resp.findings[0].resources[0].details.aws_elb_load_balancer.load_balancer_name #=> String
    #   resp.findings[0].resources[0].details.aws_elb_load_balancer.policies.app_cookie_stickiness_policies #=> Array
    #   resp.findings[0].resources[0].details.aws_elb_load_balancer.policies.app_cookie_stickiness_policies[0].cookie_name #=> String
    #   resp.findings[0].resources[0].details.aws_elb_load_balancer.policies.app_cookie_stickiness_policies[0].policy_name #=> String
    #   resp.findings[0].resources[0].details.aws_elb_load_balancer.policies.lb_cookie_stickiness_policies #=> Array
    #   resp.findings[0].resources[0].details.aws_elb_load_balancer.policies.lb_cookie_stickiness_policies[0].cookie_expiration_period #=> Integer
    #   resp.findings[0].resources[0].details.aws_elb_load_balancer.policies.lb_cookie_stickiness_policies[0].policy_name #=> String
    #   resp.findings[0].resources[0].details.aws_elb_load_balancer.policies.other_policies #=> Array
    #   resp.findings[0].resources[0].details.aws_elb_load_balancer.policies.other_policies[0] #=> String
    #   resp.findings[0].resources[0].details.aws_elb_load_balancer.scheme #=> String
    #   resp.findings[0].resources[0].details.aws_elb_load_balancer.security_groups #=> Array
    #   resp.findings[0].resources[0].details.aws_elb_load_balancer.security_groups[0] #=> String
    #   resp.findings[0].resources[0].details.aws_elb_load_balancer.source_security_group.group_name #=> String
    #   resp.findings[0].resources[0].details.aws_elb_load_balancer.source_security_group.owner_alias #=> String
    #   resp.findings[0].resources[0].details.aws_elb_load_balancer.subnets #=> Array
    #   resp.findings[0].resources[0].details.aws_elb_load_balancer.subnets[0] #=> String
    #   resp.findings[0].resources[0].details.aws_elb_load_balancer.vpc_id #=> String
    #   resp.findings[0].resources[0].details.aws_iam_group.attached_managed_policies #=> Array
    #   resp.findings[0].resources[0].details.aws_iam_group.attached_managed_policies[0].policy_name #=> String
    #   resp.findings[0].resources[0].details.aws_iam_group.attached_managed_policies[0].policy_arn #=> String
    #   resp.findings[0].resources[0].details.aws_iam_group.create_date #=> String
    #   resp.findings[0].resources[0].details.aws_iam_group.group_id #=> String
    #   resp.findings[0].resources[0].details.aws_iam_group.group_name #=> String
    #   resp.findings[0].resources[0].details.aws_iam_group.group_policy_list #=> Array
    #   resp.findings[0].resources[0].details.aws_iam_group.group_policy_list[0].policy_name #=> String
    #   resp.findings[0].resources[0].details.aws_iam_group.path #=> String
    #   resp.findings[0].resources[0].details.aws_iam_role.assume_role_policy_document #=> String
    #   resp.findings[0].resources[0].details.aws_iam_role.attached_managed_policies #=> Array
    #   resp.findings[0].resources[0].details.aws_iam_role.attached_managed_policies[0].policy_name #=> String
    #   resp.findings[0].resources[0].details.aws_iam_role.attached_managed_policies[0].policy_arn #=> String
    #   resp.findings[0].resources[0].details.aws_iam_role.create_date #=> String
    #   resp.findings[0].resources[0].details.aws_iam_role.instance_profile_list #=> Array
    #   resp.findings[0].resources[0].details.aws_iam_role.instance_profile_list[0].arn #=> String
    #   resp.findings[0].resources[0].details.aws_iam_role.instance_profile_list[0].create_date #=> String
    #   resp.findings[0].resources[0].details.aws_iam_role.instance_profile_list[0].instance_profile_id #=> String
    #   resp.findings[0].resources[0].details.aws_iam_role.instance_profile_list[0].instance_profile_name #=> String
    #   resp.findings[0].resources[0].details.aws_iam_role.instance_profile_list[0].path #=> String
    #   resp.findings[0].resources[0].details.aws_iam_role.instance_profile_list[0].roles #=> Array
    #   resp.findings[0].resources[0].details.aws_iam_role.instance_profile_list[0].roles[0].arn #=> String
    #   resp.findings[0].resources[0].details.aws_iam_role.instance_profile_list[0].roles[0].assume_role_policy_document #=> String
    #   resp.findings[0].resources[0].details.aws_iam_role.instance_profile_list[0].roles[0].create_date #=> String
    #   resp.findings[0].resources[0].details.aws_iam_role.instance_profile_list[0].roles[0].path #=> String
    #   resp.findings[0].resources[0].details.aws_iam_role.instance_profile_list[0].roles[0].role_id #=> String
    #   resp.findings[0].resources[0].details.aws_iam_role.instance_profile_list[0].roles[0].role_name #=> String
    #   resp.findings[0].resources[0].details.aws_iam_role.permissions_boundary.permissions_boundary_arn #=> String
    #   resp.findings[0].resources[0].details.aws_iam_role.permissions_boundary.permissions_boundary_type #=> String
    #   resp.findings[0].resources[0].details.aws_iam_role.role_id #=> String
    #   resp.findings[0].resources[0].details.aws_iam_role.role_name #=> String
    #   resp.findings[0].resources[0].details.aws_iam_role.role_policy_list #=> Array
    #   resp.findings[0].resources[0].details.aws_iam_role.role_policy_list[0].policy_name #=> String
    #   resp.findings[0].resources[0].details.aws_iam_role.max_session_duration #=> Integer
    #   resp.findings[0].resources[0].details.aws_iam_role.path #=> String
    #   resp.findings[0].resources[0].details.aws_kms_key.aws_account_id #=> String
    #   resp.findings[0].resources[0].details.aws_kms_key.creation_date #=> Float
    #   resp.findings[0].resources[0].details.aws_kms_key.key_id #=> String
    #   resp.findings[0].resources[0].details.aws_kms_key.key_manager #=> String
    #   resp.findings[0].resources[0].details.aws_kms_key.key_state #=> String
    #   resp.findings[0].resources[0].details.aws_kms_key.origin #=> String
    #   resp.findings[0].resources[0].details.aws_kms_key.description #=> String
    #   resp.findings[0].resources[0].details.aws_lambda_function.code.s3_bucket #=> String
    #   resp.findings[0].resources[0].details.aws_lambda_function.code.s3_key #=> String
    #   resp.findings[0].resources[0].details.aws_lambda_function.code.s3_object_version #=> String
    #   resp.findings[0].resources[0].details.aws_lambda_function.code.zip_file #=> String
    #   resp.findings[0].resources[0].details.aws_lambda_function.code_sha_256 #=> String
    #   resp.findings[0].resources[0].details.aws_lambda_function.dead_letter_config.target_arn #=> String
    #   resp.findings[0].resources[0].details.aws_lambda_function.environment.variables #=> Hash
    #   resp.findings[0].resources[0].details.aws_lambda_function.environment.variables["NonEmptyString"] #=> String
    #   resp.findings[0].resources[0].details.aws_lambda_function.environment.error.error_code #=> String
    #   resp.findings[0].resources[0].details.aws_lambda_function.environment.error.message #=> String
    #   resp.findings[0].resources[0].details.aws_lambda_function.function_name #=> String
    #   resp.findings[0].resources[0].details.aws_lambda_function.handler #=> String
    #   resp.findings[0].resources[0].details.aws_lambda_function.kms_key_arn #=> String
    #   resp.findings[0].resources[0].details.aws_lambda_function.last_modified #=> String
    #   resp.findings[0].resources[0].details.aws_lambda_function.layers #=> Array
    #   resp.findings[0].resources[0].details.aws_lambda_function.layers[0].arn #=> String
    #   resp.findings[0].resources[0].details.aws_lambda_function.layers[0].code_size #=> Integer
    #   resp.findings[0].resources[0].details.aws_lambda_function.master_arn #=> String
    #   resp.findings[0].resources[0].details.aws_lambda_function.memory_size #=> Integer
    #   resp.findings[0].resources[0].details.aws_lambda_function.revision_id #=> String
    #   resp.findings[0].resources[0].details.aws_lambda_function.role #=> String
    #   resp.findings[0].resources[0].details.aws_lambda_function.runtime #=> String
    #   resp.findings[0].resources[0].details.aws_lambda_function.timeout #=> Integer
    #   resp.findings[0].resources[0].details.aws_lambda_function.tracing_config.mode #=> String
    #   resp.findings[0].resources[0].details.aws_lambda_function.vpc_config.security_group_ids #=> Array
    #   resp.findings[0].resources[0].details.aws_lambda_function.vpc_config.security_group_ids[0] #=> String
    #   resp.findings[0].resources[0].details.aws_lambda_function.vpc_config.subnet_ids #=> Array
    #   resp.findings[0].resources[0].details.aws_lambda_function.vpc_config.subnet_ids[0] #=> String
    #   resp.findings[0].resources[0].details.aws_lambda_function.vpc_config.vpc_id #=> String
    #   resp.findings[0].resources[0].details.aws_lambda_function.version #=> String
    #   resp.findings[0].resources[0].details.aws_lambda_layer_version.version #=> Integer
    #   resp.findings[0].resources[0].details.aws_lambda_layer_version.compatible_runtimes #=> Array
    #   resp.findings[0].resources[0].details.aws_lambda_layer_version.compatible_runtimes[0] #=> String
    #   resp.findings[0].resources[0].details.aws_lambda_layer_version.created_date #=> String
    #   resp.findings[0].resources[0].details.aws_rds_db_instance.associated_roles #=> Array
    #   resp.findings[0].resources[0].details.aws_rds_db_instance.associated_roles[0].role_arn #=> String
    #   resp.findings[0].resources[0].details.aws_rds_db_instance.associated_roles[0].feature_name #=> String
    #   resp.findings[0].resources[0].details.aws_rds_db_instance.associated_roles[0].status #=> String
    #   resp.findings[0].resources[0].details.aws_rds_db_instance.ca_certificate_identifier #=> String
    #   resp.findings[0].resources[0].details.aws_rds_db_instance.db_cluster_identifier #=> String
    #   resp.findings[0].resources[0].details.aws_rds_db_instance.db_instance_identifier #=> String
    #   resp.findings[0].resources[0].details.aws_rds_db_instance.db_instance_class #=> String
    #   resp.findings[0].resources[0].details.aws_rds_db_instance.db_instance_port #=> Integer
    #   resp.findings[0].resources[0].details.aws_rds_db_instance.dbi_resource_id #=> String
    #   resp.findings[0].resources[0].details.aws_rds_db_instance.db_name #=> String
    #   resp.findings[0].resources[0].details.aws_rds_db_instance.deletion_protection #=> Boolean
    #   resp.findings[0].resources[0].details.aws_rds_db_instance.endpoint.address #=> String
    #   resp.findings[0].resources[0].details.aws_rds_db_instance.endpoint.port #=> Integer
    #   resp.findings[0].resources[0].details.aws_rds_db_instance.endpoint.hosted_zone_id #=> String
    #   resp.findings[0].resources[0].details.aws_rds_db_instance.engine #=> String
    #   resp.findings[0].resources[0].details.aws_rds_db_instance.engine_version #=> String
    #   resp.findings[0].resources[0].details.aws_rds_db_instance.iam_database_authentication_enabled #=> Boolean
    #   resp.findings[0].resources[0].details.aws_rds_db_instance.instance_create_time #=> String
    #   resp.findings[0].resources[0].details.aws_rds_db_instance.kms_key_id #=> String
    #   resp.findings[0].resources[0].details.aws_rds_db_instance.publicly_accessible #=> Boolean
    #   resp.findings[0].resources[0].details.aws_rds_db_instance.storage_encrypted #=> Boolean
    #   resp.findings[0].resources[0].details.aws_rds_db_instance.tde_credential_arn #=> String
    #   resp.findings[0].resources[0].details.aws_rds_db_instance.vpc_security_groups #=> Array
    #   resp.findings[0].resources[0].details.aws_rds_db_instance.vpc_security_groups[0].vpc_security_group_id #=> String
    #   resp.findings[0].resources[0].details.aws_rds_db_instance.vpc_security_groups[0].status #=> String
    #   resp.findings[0].resources[0].details.aws_rds_db_instance.multi_az #=> Boolean
    #   resp.findings[0].resources[0].details.aws_rds_db_instance.enhanced_monitoring_resource_arn #=> String
    #   resp.findings[0].resources[0].details.aws_rds_db_instance.db_instance_status #=> String
    #   resp.findings[0].resources[0].details.aws_rds_db_instance.master_username #=> String
    #   resp.findings[0].resources[0].details.aws_rds_db_instance.allocated_storage #=> Integer
    #   resp.findings[0].resources[0].details.aws_rds_db_instance.preferred_backup_window #=> String
    #   resp.findings[0].resources[0].details.aws_rds_db_instance.backup_retention_period #=> Integer
    #   resp.findings[0].resources[0].details.aws_rds_db_instance.db_security_groups #=> Array
    #   resp.findings[0].resources[0].details.aws_rds_db_instance.db_security_groups[0] #=> String
    #   resp.findings[0].resources[0].details.aws_rds_db_instance.db_parameter_groups #=> Array
    #   resp.findings[0].resources[0].details.aws_rds_db_instance.db_parameter_groups[0].db_parameter_group_name #=> String
    #   resp.findings[0].resources[0].details.aws_rds_db_instance.db_parameter_groups[0].parameter_apply_status #=> String
    #   resp.findings[0].resources[0].details.aws_rds_db_instance.availability_zone #=> String
    #   resp.findings[0].resources[0].details.aws_rds_db_instance.db_subnet_group.db_subnet_group_name #=> String
    #   resp.findings[0].resources[0].details.aws_rds_db_instance.db_subnet_group.db_subnet_group_description #=> String
    #   resp.findings[0].resources[0].details.aws_rds_db_instance.db_subnet_group.vpc_id #=> String
    #   resp.findings[0].resources[0].details.aws_rds_db_instance.db_subnet_group.subnet_group_status #=> String
    #   resp.findings[0].resources[0].details.aws_rds_db_instance.db_subnet_group.subnets #=> Array
    #   resp.findings[0].resources[0].details.aws_rds_db_instance.db_subnet_group.subnets[0].subnet_identifier #=> String
    #   resp.findings[0].resources[0].details.aws_rds_db_instance.db_subnet_group.subnets[0].subnet_availability_zone.name #=> String
    #   resp.findings[0].resources[0].details.aws_rds_db_instance.db_subnet_group.subnets[0].subnet_status #=> String
    #   resp.findings[0].resources[0].details.aws_rds_db_instance.db_subnet_group.db_subnet_group_arn #=> String
    #   resp.findings[0].resources[0].details.aws_rds_db_instance.preferred_maintenance_window #=> String
    #   resp.findings[0].resources[0].details.aws_rds_db_instance.pending_modified_values.db_instance_class #=> String
    #   resp.findings[0].resources[0].details.aws_rds_db_instance.pending_modified_values.allocated_storage #=> Integer
    #   resp.findings[0].resources[0].details.aws_rds_db_instance.pending_modified_values.master_user_password #=> String
    #   resp.findings[0].resources[0].details.aws_rds_db_instance.pending_modified_values.port #=> Integer
    #   resp.findings[0].resources[0].details.aws_rds_db_instance.pending_modified_values.backup_retention_period #=> Integer
    #   resp.findings[0].resources[0].details.aws_rds_db_instance.pending_modified_values.multi_az #=> Boolean
    #   resp.findings[0].resources[0].details.aws_rds_db_instance.pending_modified_values.engine_version #=> String
    #   resp.findings[0].resources[0].details.aws_rds_db_instance.pending_modified_values.license_model #=> String
    #   resp.findings[0].resources[0].details.aws_rds_db_instance.pending_modified_values.iops #=> Integer
    #   resp.findings[0].resources[0].details.aws_rds_db_instance.pending_modified_values.db_instance_identifier #=> String
    #   resp.findings[0].resources[0].details.aws_rds_db_instance.pending_modified_values.storage_type #=> String
    #   resp.findings[0].resources[0].details.aws_rds_db_instance.pending_modified_values.ca_certificate_identifier #=> String
    #   resp.findings[0].resources[0].details.aws_rds_db_instance.pending_modified_values.db_subnet_group_name #=> String
    #   resp.findings[0].resources[0].details.aws_rds_db_instance.pending_modified_values.pending_cloud_watch_logs_exports.log_types_to_enable #=> Array
    #   resp.findings[0].resources[0].details.aws_rds_db_instance.pending_modified_values.pending_cloud_watch_logs_exports.log_types_to_enable[0] #=> String
    #   resp.findings[0].resources[0].details.aws_rds_db_instance.pending_modified_values.pending_cloud_watch_logs_exports.log_types_to_disable #=> Array
    #   resp.findings[0].resources[0].details.aws_rds_db_instance.pending_modified_values.pending_cloud_watch_logs_exports.log_types_to_disable[0] #=> String
    #   resp.findings[0].resources[0].details.aws_rds_db_instance.pending_modified_values.processor_features #=> Array
    #   resp.findings[0].resources[0].details.aws_rds_db_instance.pending_modified_values.processor_features[0].name #=> String
    #   resp.findings[0].resources[0].details.aws_rds_db_instance.pending_modified_values.processor_features[0].value #=> String
    #   resp.findings[0].resources[0].details.aws_rds_db_instance.latest_restorable_time #=> String
    #   resp.findings[0].resources[0].details.aws_rds_db_instance.auto_minor_version_upgrade #=> Boolean
    #   resp.findings[0].resources[0].details.aws_rds_db_instance.read_replica_source_db_instance_identifier #=> String
    #   resp.findings[0].resources[0].details.aws_rds_db_instance.read_replica_db_instance_identifiers #=> Array
    #   resp.findings[0].resources[0].details.aws_rds_db_instance.read_replica_db_instance_identifiers[0] #=> String
    #   resp.findings[0].resources[0].details.aws_rds_db_instance.read_replica_db_cluster_identifiers #=> Array
    #   resp.findings[0].resources[0].details.aws_rds_db_instance.read_replica_db_cluster_identifiers[0] #=> String
    #   resp.findings[0].resources[0].details.aws_rds_db_instance.license_model #=> String
    #   resp.findings[0].resources[0].details.aws_rds_db_instance.iops #=> Integer
    #   resp.findings[0].resources[0].details.aws_rds_db_instance.option_group_memberships #=> Array
    #   resp.findings[0].resources[0].details.aws_rds_db_instance.option_group_memberships[0].option_group_name #=> String
    #   resp.findings[0].resources[0].details.aws_rds_db_instance.option_group_memberships[0].status #=> String
    #   resp.findings[0].resources[0].details.aws_rds_db_instance.character_set_name #=> String
    #   resp.findings[0].resources[0].details.aws_rds_db_instance.secondary_availability_zone #=> String
    #   resp.findings[0].resources[0].details.aws_rds_db_instance.status_infos #=> Array
    #   resp.findings[0].resources[0].details.aws_rds_db_instance.status_infos[0].status_type #=> String
    #   resp.findings[0].resources[0].details.aws_rds_db_instance.status_infos[0].normal #=> Boolean
    #   resp.findings[0].resources[0].details.aws_rds_db_instance.status_infos[0].status #=> String
    #   resp.findings[0].resources[0].details.aws_rds_db_instance.status_infos[0].message #=> String
    #   resp.findings[0].resources[0].details.aws_rds_db_instance.storage_type #=> String
    #   resp.findings[0].resources[0].details.aws_rds_db_instance.domain_memberships #=> Array
    #   resp.findings[0].resources[0].details.aws_rds_db_instance.domain_memberships[0].domain #=> String
    #   resp.findings[0].resources[0].details.aws_rds_db_instance.domain_memberships[0].status #=> String
    #   resp.findings[0].resources[0].details.aws_rds_db_instance.domain_memberships[0].fqdn #=> String
    #   resp.findings[0].resources[0].details.aws_rds_db_instance.domain_memberships[0].iam_role_name #=> String
    #   resp.findings[0].resources[0].details.aws_rds_db_instance.copy_tags_to_snapshot #=> Boolean
    #   resp.findings[0].resources[0].details.aws_rds_db_instance.monitoring_interval #=> Integer
    #   resp.findings[0].resources[0].details.aws_rds_db_instance.monitoring_role_arn #=> String
    #   resp.findings[0].resources[0].details.aws_rds_db_instance.promotion_tier #=> Integer
    #   resp.findings[0].resources[0].details.aws_rds_db_instance.timezone #=> String
    #   resp.findings[0].resources[0].details.aws_rds_db_instance.performance_insights_enabled #=> Boolean
    #   resp.findings[0].resources[0].details.aws_rds_db_instance.performance_insights_kms_key_id #=> String
    #   resp.findings[0].resources[0].details.aws_rds_db_instance.performance_insights_retention_period #=> Integer
    #   resp.findings[0].resources[0].details.aws_rds_db_instance.enabled_cloud_watch_logs_exports #=> Array
    #   resp.findings[0].resources[0].details.aws_rds_db_instance.enabled_cloud_watch_logs_exports[0] #=> String
    #   resp.findings[0].resources[0].details.aws_rds_db_instance.processor_features #=> Array
    #   resp.findings[0].resources[0].details.aws_rds_db_instance.processor_features[0].name #=> String
    #   resp.findings[0].resources[0].details.aws_rds_db_instance.processor_features[0].value #=> String
    #   resp.findings[0].resources[0].details.aws_rds_db_instance.listener_endpoint.address #=> String
    #   resp.findings[0].resources[0].details.aws_rds_db_instance.listener_endpoint.port #=> Integer
    #   resp.findings[0].resources[0].details.aws_rds_db_instance.listener_endpoint.hosted_zone_id #=> String
    #   resp.findings[0].resources[0].details.aws_rds_db_instance.max_allocated_storage #=> Integer
    #   resp.findings[0].resources[0].details.aws_sns_topic.kms_master_key_id #=> String
    #   resp.findings[0].resources[0].details.aws_sns_topic.subscription #=> Array
    #   resp.findings[0].resources[0].details.aws_sns_topic.subscription[0].endpoint #=> String
    #   resp.findings[0].resources[0].details.aws_sns_topic.subscription[0].protocol #=> String
    #   resp.findings[0].resources[0].details.aws_sns_topic.topic_name #=> String
    #   resp.findings[0].resources[0].details.aws_sns_topic.owner #=> String
    #   resp.findings[0].resources[0].details.aws_sqs_queue.kms_data_key_reuse_period_seconds #=> Integer
    #   resp.findings[0].resources[0].details.aws_sqs_queue.kms_master_key_id #=> String
    #   resp.findings[0].resources[0].details.aws_sqs_queue.queue_name #=> String
    #   resp.findings[0].resources[0].details.aws_sqs_queue.dead_letter_target_arn #=> String
    #   resp.findings[0].resources[0].details.aws_waf_web_acl.name #=> String
    #   resp.findings[0].resources[0].details.aws_waf_web_acl.default_action #=> String
    #   resp.findings[0].resources[0].details.aws_waf_web_acl.rules #=> Array
    #   resp.findings[0].resources[0].details.aws_waf_web_acl.rules[0].action.type #=> String
    #   resp.findings[0].resources[0].details.aws_waf_web_acl.rules[0].excluded_rules #=> Array
    #   resp.findings[0].resources[0].details.aws_waf_web_acl.rules[0].excluded_rules[0].rule_id #=> String
    #   resp.findings[0].resources[0].details.aws_waf_web_acl.rules[0].override_action.type #=> String
    #   resp.findings[0].resources[0].details.aws_waf_web_acl.rules[0].priority #=> Integer
    #   resp.findings[0].resources[0].details.aws_waf_web_acl.rules[0].rule_id #=> String
    #   resp.findings[0].resources[0].details.aws_waf_web_acl.rules[0].type #=> String
    #   resp.findings[0].resources[0].details.aws_waf_web_acl.web_acl_id #=> String
    #   resp.findings[0].resources[0].details.aws_rds_db_snapshot.db_snapshot_identifier #=> String
    #   resp.findings[0].resources[0].details.aws_rds_db_snapshot.db_instance_identifier #=> String
    #   resp.findings[0].resources[0].details.aws_rds_db_snapshot.snapshot_create_time #=> String
    #   resp.findings[0].resources[0].details.aws_rds_db_snapshot.engine #=> String
    #   resp.findings[0].resources[0].details.aws_rds_db_snapshot.allocated_storage #=> Integer
    #   resp.findings[0].resources[0].details.aws_rds_db_snapshot.status #=> String
    #   resp.findings[0].resources[0].details.aws_rds_db_snapshot.port #=> Integer
    #   resp.findings[0].resources[0].details.aws_rds_db_snapshot.availability_zone #=> String
    #   resp.findings[0].resources[0].details.aws_rds_db_snapshot.vpc_id #=> String
    #   resp.findings[0].resources[0].details.aws_rds_db_snapshot.instance_create_time #=> String
    #   resp.findings[0].resources[0].details.aws_rds_db_snapshot.master_username #=> String
    #   resp.findings[0].resources[0].details.aws_rds_db_snapshot.engine_version #=> String
    #   resp.findings[0].resources[0].details.aws_rds_db_snapshot.license_model #=> String
    #   resp.findings[0].resources[0].details.aws_rds_db_snapshot.snapshot_type #=> String
    #   resp.findings[0].resources[0].details.aws_rds_db_snapshot.iops #=> Integer
    #   resp.findings[0].resources[0].details.aws_rds_db_snapshot.option_group_name #=> String
    #   resp.findings[0].resources[0].details.aws_rds_db_snapshot.percent_progress #=> Integer
    #   resp.findings[0].resources[0].details.aws_rds_db_snapshot.source_region #=> String
    #   resp.findings[0].resources[0].details.aws_rds_db_snapshot.source_db_snapshot_identifier #=> String
    #   resp.findings[0].resources[0].details.aws_rds_db_snapshot.storage_type #=> String
    #   resp.findings[0].resources[0].details.aws_rds_db_snapshot.tde_credential_arn #=> String
    #   resp.findings[0].resources[0].details.aws_rds_db_snapshot.encrypted #=> Boolean
    #   resp.findings[0].resources[0].details.aws_rds_db_snapshot.kms_key_id #=> String
    #   resp.findings[0].resources[0].details.aws_rds_db_snapshot.timezone #=> String
    #   resp.findings[0].resources[0].details.aws_rds_db_snapshot.iam_database_authentication_enabled #=> Boolean
    #   resp.findings[0].resources[0].details.aws_rds_db_snapshot.processor_features #=> Array
    #   resp.findings[0].resources[0].details.aws_rds_db_snapshot.processor_features[0].name #=> String
    #   resp.findings[0].resources[0].details.aws_rds_db_snapshot.processor_features[0].value #=> String
    #   resp.findings[0].resources[0].details.aws_rds_db_snapshot.dbi_resource_id #=> String
    #   resp.findings[0].resources[0].details.aws_rds_db_cluster_snapshot.availability_zones #=> Array
    #   resp.findings[0].resources[0].details.aws_rds_db_cluster_snapshot.availability_zones[0] #=> String
    #   resp.findings[0].resources[0].details.aws_rds_db_cluster_snapshot.snapshot_create_time #=> String
    #   resp.findings[0].resources[0].details.aws_rds_db_cluster_snapshot.engine #=> String
    #   resp.findings[0].resources[0].details.aws_rds_db_cluster_snapshot.allocated_storage #=> Integer
    #   resp.findings[0].resources[0].details.aws_rds_db_cluster_snapshot.status #=> String
    #   resp.findings[0].resources[0].details.aws_rds_db_cluster_snapshot.port #=> Integer
    #   resp.findings[0].resources[0].details.aws_rds_db_cluster_snapshot.vpc_id #=> String
    #   resp.findings[0].resources[0].details.aws_rds_db_cluster_snapshot.cluster_create_time #=> String
    #   resp.findings[0].resources[0].details.aws_rds_db_cluster_snapshot.master_username #=> String
    #   resp.findings[0].resources[0].details.aws_rds_db_cluster_snapshot.engine_version #=> String
    #   resp.findings[0].resources[0].details.aws_rds_db_cluster_snapshot.license_model #=> String
    #   resp.findings[0].resources[0].details.aws_rds_db_cluster_snapshot.snapshot_type #=> String
    #   resp.findings[0].resources[0].details.aws_rds_db_cluster_snapshot.percent_progress #=> Integer
    #   resp.findings[0].resources[0].details.aws_rds_db_cluster_snapshot.storage_encrypted #=> Boolean
    #   resp.findings[0].resources[0].details.aws_rds_db_cluster_snapshot.kms_key_id #=> String
    #   resp.findings[0].resources[0].details.aws_rds_db_cluster_snapshot.db_cluster_identifier #=> String
    #   resp.findings[0].resources[0].details.aws_rds_db_cluster_snapshot.db_cluster_snapshot_identifier #=> String
    #   resp.findings[0].resources[0].details.aws_rds_db_cluster_snapshot.iam_database_authentication_enabled #=> Boolean
    #   resp.findings[0].resources[0].details.aws_rds_db_cluster.allocated_storage #=> Integer
    #   resp.findings[0].resources[0].details.aws_rds_db_cluster.availability_zones #=> Array
    #   resp.findings[0].resources[0].details.aws_rds_db_cluster.availability_zones[0] #=> String
    #   resp.findings[0].resources[0].details.aws_rds_db_cluster.backup_retention_period #=> Integer
    #   resp.findings[0].resources[0].details.aws_rds_db_cluster.database_name #=> String
    #   resp.findings[0].resources[0].details.aws_rds_db_cluster.status #=> String
    #   resp.findings[0].resources[0].details.aws_rds_db_cluster.endpoint #=> String
    #   resp.findings[0].resources[0].details.aws_rds_db_cluster.reader_endpoint #=> String
    #   resp.findings[0].resources[0].details.aws_rds_db_cluster.custom_endpoints #=> Array
    #   resp.findings[0].resources[0].details.aws_rds_db_cluster.custom_endpoints[0] #=> String
    #   resp.findings[0].resources[0].details.aws_rds_db_cluster.multi_az #=> Boolean
    #   resp.findings[0].resources[0].details.aws_rds_db_cluster.engine #=> String
    #   resp.findings[0].resources[0].details.aws_rds_db_cluster.engine_version #=> String
    #   resp.findings[0].resources[0].details.aws_rds_db_cluster.port #=> Integer
    #   resp.findings[0].resources[0].details.aws_rds_db_cluster.master_username #=> String
    #   resp.findings[0].resources[0].details.aws_rds_db_cluster.preferred_backup_window #=> String
    #   resp.findings[0].resources[0].details.aws_rds_db_cluster.preferred_maintenance_window #=> String
    #   resp.findings[0].resources[0].details.aws_rds_db_cluster.read_replica_identifiers #=> Array
    #   resp.findings[0].resources[0].details.aws_rds_db_cluster.read_replica_identifiers[0] #=> String
    #   resp.findings[0].resources[0].details.aws_rds_db_cluster.vpc_security_groups #=> Array
    #   resp.findings[0].resources[0].details.aws_rds_db_cluster.vpc_security_groups[0].vpc_security_group_id #=> String
    #   resp.findings[0].resources[0].details.aws_rds_db_cluster.vpc_security_groups[0].status #=> String
    #   resp.findings[0].resources[0].details.aws_rds_db_cluster.hosted_zone_id #=> String
    #   resp.findings[0].resources[0].details.aws_rds_db_cluster.storage_encrypted #=> Boolean
    #   resp.findings[0].resources[0].details.aws_rds_db_cluster.kms_key_id #=> String
    #   resp.findings[0].resources[0].details.aws_rds_db_cluster.db_cluster_resource_id #=> String
    #   resp.findings[0].resources[0].details.aws_rds_db_cluster.associated_roles #=> Array
    #   resp.findings[0].resources[0].details.aws_rds_db_cluster.associated_roles[0].role_arn #=> String
    #   resp.findings[0].resources[0].details.aws_rds_db_cluster.associated_roles[0].status #=> String
    #   resp.findings[0].resources[0].details.aws_rds_db_cluster.cluster_create_time #=> String
    #   resp.findings[0].resources[0].details.aws_rds_db_cluster.enabled_cloud_watch_logs_exports #=> Array
    #   resp.findings[0].resources[0].details.aws_rds_db_cluster.enabled_cloud_watch_logs_exports[0] #=> String
    #   resp.findings[0].resources[0].details.aws_rds_db_cluster.engine_mode #=> String
    #   resp.findings[0].resources[0].details.aws_rds_db_cluster.deletion_protection #=> Boolean
    #   resp.findings[0].resources[0].details.aws_rds_db_cluster.http_endpoint_enabled #=> Boolean
    #   resp.findings[0].resources[0].details.aws_rds_db_cluster.activity_stream_status #=> String
    #   resp.findings[0].resources[0].details.aws_rds_db_cluster.copy_tags_to_snapshot #=> Boolean
    #   resp.findings[0].resources[0].details.aws_rds_db_cluster.cross_account_clone #=> Boolean
    #   resp.findings[0].resources[0].details.aws_rds_db_cluster.domain_memberships #=> Array
    #   resp.findings[0].resources[0].details.aws_rds_db_cluster.domain_memberships[0].domain #=> String
    #   resp.findings[0].resources[0].details.aws_rds_db_cluster.domain_memberships[0].status #=> String
    #   resp.findings[0].resources[0].details.aws_rds_db_cluster.domain_memberships[0].fqdn #=> String
    #   resp.findings[0].resources[0].details.aws_rds_db_cluster.domain_memberships[0].iam_role_name #=> String
    #   resp.findings[0].resources[0].details.aws_rds_db_cluster.db_cluster_parameter_group #=> String
    #   resp.findings[0].resources[0].details.aws_rds_db_cluster.db_subnet_group #=> String
    #   resp.findings[0].resources[0].details.aws_rds_db_cluster.db_cluster_option_group_memberships #=> Array
    #   resp.findings[0].resources[0].details.aws_rds_db_cluster.db_cluster_option_group_memberships[0].db_cluster_option_group_name #=> String
    #   resp.findings[0].resources[0].details.aws_rds_db_cluster.db_cluster_option_group_memberships[0].status #=> String
    #   resp.findings[0].resources[0].details.aws_rds_db_cluster.db_cluster_identifier #=> String
    #   resp.findings[0].resources[0].details.aws_rds_db_cluster.db_cluster_members #=> Array
    #   resp.findings[0].resources[0].details.aws_rds_db_cluster.db_cluster_members[0].is_cluster_writer #=> Boolean
    #   resp.findings[0].resources[0].details.aws_rds_db_cluster.db_cluster_members[0].promotion_tier #=> Integer
    #   resp.findings[0].resources[0].details.aws_rds_db_cluster.db_cluster_members[0].db_instance_identifier #=> String
    #   resp.findings[0].resources[0].details.aws_rds_db_cluster.db_cluster_members[0].db_cluster_parameter_group_status #=> String
    #   resp.findings[0].resources[0].details.aws_rds_db_cluster.iam_database_authentication_enabled #=> Boolean
    #   resp.findings[0].resources[0].details.container.name #=> String
    #   resp.findings[0].resources[0].details.container.image_id #=> String
    #   resp.findings[0].resources[0].details.container.image_name #=> String
    #   resp.findings[0].resources[0].details.container.launched_at #=> String
    #   resp.findings[0].resources[0].details.other #=> Hash
    #   resp.findings[0].resources[0].details.other["NonEmptyString"] #=> String
    #   resp.findings[0].compliance.status #=> String, one of "PASSED", "WARNING", "FAILED", "NOT_AVAILABLE"
    #   resp.findings[0].compliance.related_requirements #=> Array
    #   resp.findings[0].compliance.related_requirements[0] #=> String
    #   resp.findings[0].compliance.status_reasons #=> Array
    #   resp.findings[0].compliance.status_reasons[0].reason_code #=> String
    #   resp.findings[0].compliance.status_reasons[0].description #=> String
    #   resp.findings[0].verification_state #=> String, one of "UNKNOWN", "TRUE_POSITIVE", "FALSE_POSITIVE", "BENIGN_POSITIVE"
    #   resp.findings[0].workflow_state #=> String, one of "NEW", "ASSIGNED", "IN_PROGRESS", "DEFERRED", "RESOLVED"
    #   resp.findings[0].workflow.status #=> String, one of "NEW", "NOTIFIED", "RESOLVED", "SUPPRESSED"
    #   resp.findings[0].record_state #=> String, one of "ACTIVE", "ARCHIVED"
    #   resp.findings[0].related_findings #=> Array
    #   resp.findings[0].related_findings[0].product_arn #=> String
    #   resp.findings[0].related_findings[0].id #=> String
    #   resp.findings[0].note.text #=> String
    #   resp.findings[0].note.updated_by #=> String
    #   resp.findings[0].note.updated_at #=> String
    #   resp.findings[0].vulnerabilities #=> Array
    #   resp.findings[0].vulnerabilities[0].id #=> String
    #   resp.findings[0].vulnerabilities[0].vulnerable_packages #=> Array
    #   resp.findings[0].vulnerabilities[0].vulnerable_packages[0].name #=> String
    #   resp.findings[0].vulnerabilities[0].vulnerable_packages[0].version #=> String
    #   resp.findings[0].vulnerabilities[0].vulnerable_packages[0].epoch #=> String
    #   resp.findings[0].vulnerabilities[0].vulnerable_packages[0].release #=> String
    #   resp.findings[0].vulnerabilities[0].vulnerable_packages[0].architecture #=> String
    #   resp.findings[0].vulnerabilities[0].cvss #=> Array
    #   resp.findings[0].vulnerabilities[0].cvss[0].version #=> String
    #   resp.findings[0].vulnerabilities[0].cvss[0].base_score #=> Float
    #   resp.findings[0].vulnerabilities[0].cvss[0].base_vector #=> String
    #   resp.findings[0].vulnerabilities[0].related_vulnerabilities #=> Array
    #   resp.findings[0].vulnerabilities[0].related_vulnerabilities[0] #=> String
    #   resp.findings[0].vulnerabilities[0].vendor.name #=> String
    #   resp.findings[0].vulnerabilities[0].vendor.url #=> String
    #   resp.findings[0].vulnerabilities[0].vendor.vendor_severity #=> String
    #   resp.findings[0].vulnerabilities[0].vendor.vendor_created_at #=> String
    #   resp.findings[0].vulnerabilities[0].vendor.vendor_updated_at #=> String
    #   resp.findings[0].vulnerabilities[0].reference_urls #=> Array
    #   resp.findings[0].vulnerabilities[0].reference_urls[0] #=> String
    #   resp.findings[0].patch_summary.id #=> String
    #   resp.findings[0].patch_summary.installed_count #=> Integer
    #   resp.findings[0].patch_summary.missing_count #=> Integer
    #   resp.findings[0].patch_summary.failed_count #=> Integer
    #   resp.findings[0].patch_summary.installed_other_count #=> Integer
    #   resp.findings[0].patch_summary.installed_rejected_count #=> Integer
    #   resp.findings[0].patch_summary.installed_pending_reboot #=> Integer
    #   resp.findings[0].patch_summary.operation_start_time #=> String
    #   resp.findings[0].patch_summary.operation_end_time #=> String
    #   resp.findings[0].patch_summary.reboot_option #=> String
    #   resp.findings[0].patch_summary.operation #=> String
    #   resp.next_token #=> String
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
    #   resp.insights[0].filters.resource_aws_iam_access_key_status #=> Array
    #   resp.insights[0].filters.resource_aws_iam_access_key_status[0].value #=> String
    #   resp.insights[0].filters.resource_aws_iam_access_key_status[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS"
    #   resp.insights[0].filters.resource_aws_iam_access_key_created_at #=> Array
    #   resp.insights[0].filters.resource_aws_iam_access_key_created_at[0].start #=> String
    #   resp.insights[0].filters.resource_aws_iam_access_key_created_at[0].end #=> String
    #   resp.insights[0].filters.resource_aws_iam_access_key_created_at[0].date_range.value #=> Integer
    #   resp.insights[0].filters.resource_aws_iam_access_key_created_at[0].date_range.unit #=> String, one of "DAYS"
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

    # Provides the details for the Security Hub master account for the
    # current member account.
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

    # Invites other AWS accounts to become member accounts for the Security
    # Hub master account that the invitation is sent from.
    #
    # Before you can use this action to invite a member, you must first use
    # the ` CreateMembers ` action to create the member account in Security
    # Hub.
    #
    # When the account owner accepts the invitation to become a member
    # account and enables Security Hub, the master account can view the
    # findings generated from the member account.
    #
    # @option params [Array<String>] :account_ids
    #   The list of account IDs of the AWS accounts to invite to Security Hub
    #   as members.
    #
    # @return [Types::InviteMembersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::InviteMembersResponse#unprocessed_accounts #unprocessed_accounts} => Array&lt;Types::Result&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.invite_members({
    #     account_ids: ["NonEmptyString"],
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

    # Lists all Security Hub membership invitations that were sent to the
    # current AWS account.
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
    # master account.
    #
    # @option params [Boolean] :only_associated
    #   Specifies which member accounts to include in the response based on
    #   their relationship status with the master account. The default value
    #   is `TRUE`.
    #
    #   If `OnlyAssociated` is set to `TRUE`, the response includes member
    #   accounts whose relationship status with the master is set to `ENABLED`
    #   or `DISABLED`.
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
    #   The tags to add to the resource.
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
    #   The tag keys associated with the tags to remove from the resource.
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
      context[:gem_version] = '1.35.0'
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
