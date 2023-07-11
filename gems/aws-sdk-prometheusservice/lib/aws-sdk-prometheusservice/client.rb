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
require 'aws-sdk-core/plugins/request_compression.rb'
require 'aws-sdk-core/plugins/defaults_mode.rb'
require 'aws-sdk-core/plugins/recursion_detection.rb'
require 'aws-sdk-core/plugins/sign.rb'
require 'aws-sdk-core/plugins/protocols/rest_json.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:prometheusservice)

module Aws::PrometheusService
  # An API client for PrometheusService.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::PrometheusService::Client.new(
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

    @identifier = :prometheusservice

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
    add_plugin(Aws::Plugins::RequestCompression)
    add_plugin(Aws::Plugins::DefaultsMode)
    add_plugin(Aws::Plugins::RecursionDetection)
    add_plugin(Aws::Plugins::Sign)
    add_plugin(Aws::Plugins::Protocols::RestJson)
    add_plugin(Aws::PrometheusService::Plugins::Endpoints)

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
    #   @option options [Boolean] :disable_request_compression (false)
    #     When set to 'true' the request body will not be compressed
    #     for supported operations.
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
    #   @option options [Boolean] :ignore_configured_endpoint_urls
    #     Setting to true disables use of endpoint URLs provided via environment
    #     variables and the shared configuration file.
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
    #   @option options [Integer] :request_min_compression_size_bytes (10240)
    #     The minimum size in bytes that triggers compression for request
    #     bodies. The value must be non-negative integer value between 0
    #     and 10485780 bytes inclusive.
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
    #   @option options [String] :sdk_ua_app_id
    #     A unique and opaque application ID that is appended to the
    #     User-Agent header as app/<sdk_ua_app_id>. It should have a
    #     maximum length of 50.
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
    #   @option options [Aws::PrometheusService::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to `Aws::PrometheusService::EndpointParameters`
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

    # Create an alert manager definition.
    #
    # @option params [required, String] :workspace_id
    #   The ID of the workspace in which to create the alert manager
    #   definition.
    #
    # @option params [required, String, StringIO, File] :data
    #   The alert manager definition data.
    #
    # @option params [String] :client_token
    #   Optional, unique, case-sensitive, user-provided identifier to ensure
    #   the idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreateAlertManagerDefinitionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateAlertManagerDefinitionResponse#status #status} => Types::AlertManagerDefinitionStatus
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_alert_manager_definition({
    #     workspace_id: "WorkspaceId", # required
    #     data: "data", # required
    #     client_token: "IdempotencyToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.status.status_code #=> String, one of "CREATING", "ACTIVE", "UPDATING", "DELETING", "CREATION_FAILED", "UPDATE_FAILED"
    #   resp.status.status_reason #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/CreateAlertManagerDefinition AWS API Documentation
    #
    # @overload create_alert_manager_definition(params = {})
    # @param [Hash] params ({})
    def create_alert_manager_definition(params = {}, options = {})
      req = build_request(:create_alert_manager_definition, params)
      req.send_request(options)
    end

    # Create logging configuration.
    #
    # @option params [required, String] :workspace_id
    #   The ID of the workspace to vend logs to.
    #
    # @option params [required, String] :log_group_arn
    #   The ARN of the CW log group to which the vended log data will be
    #   published.
    #
    # @option params [String] :client_token
    #   Optional, unique, case-sensitive, user-provided identifier to ensure
    #   the idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreateLoggingConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateLoggingConfigurationResponse#status #status} => Types::LoggingConfigurationStatus
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_logging_configuration({
    #     workspace_id: "WorkspaceId", # required
    #     log_group_arn: "LogGroupArn", # required
    #     client_token: "IdempotencyToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.status.status_code #=> String, one of "CREATING", "ACTIVE", "UPDATING", "DELETING", "CREATION_FAILED", "UPDATE_FAILED"
    #   resp.status.status_reason #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/CreateLoggingConfiguration AWS API Documentation
    #
    # @overload create_logging_configuration(params = {})
    # @param [Hash] params ({})
    def create_logging_configuration(params = {}, options = {})
      req = build_request(:create_logging_configuration, params)
      req.send_request(options)
    end

    # Create a rule group namespace.
    #
    # @option params [required, String] :workspace_id
    #   The ID of the workspace in which to create the rule group namespace.
    #
    # @option params [required, String] :name
    #   The rule groups namespace name.
    #
    # @option params [required, String, StringIO, File] :data
    #   The namespace data that define the rule groups.
    #
    # @option params [String] :client_token
    #   Optional, unique, case-sensitive, user-provided identifier to ensure
    #   the idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Hash<String,String>] :tags
    #   Optional, user-provided tags for this rule groups namespace.
    #
    # @return [Types::CreateRuleGroupsNamespaceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateRuleGroupsNamespaceResponse#name #name} => String
    #   * {Types::CreateRuleGroupsNamespaceResponse#arn #arn} => String
    #   * {Types::CreateRuleGroupsNamespaceResponse#status #status} => Types::RuleGroupsNamespaceStatus
    #   * {Types::CreateRuleGroupsNamespaceResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_rule_groups_namespace({
    #     workspace_id: "WorkspaceId", # required
    #     name: "RuleGroupsNamespaceName", # required
    #     data: "data", # required
    #     client_token: "IdempotencyToken",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #   resp.arn #=> String
    #   resp.status.status_code #=> String, one of "CREATING", "ACTIVE", "UPDATING", "DELETING", "CREATION_FAILED", "UPDATE_FAILED"
    #   resp.status.status_reason #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/CreateRuleGroupsNamespace AWS API Documentation
    #
    # @overload create_rule_groups_namespace(params = {})
    # @param [Hash] params ({})
    def create_rule_groups_namespace(params = {}, options = {})
      req = build_request(:create_rule_groups_namespace, params)
      req.send_request(options)
    end

    # Creates a new AMP workspace.
    #
    # @option params [String] :alias
    #   An optional user-assigned alias for this workspace. This alias is for
    #   user reference and does not need to be unique.
    #
    # @option params [String] :client_token
    #   Optional, unique, case-sensitive, user-provided identifier to ensure
    #   the idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Hash<String,String>] :tags
    #   Optional, user-provided tags for this workspace.
    #
    # @return [Types::CreateWorkspaceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateWorkspaceResponse#workspace_id #workspace_id} => String
    #   * {Types::CreateWorkspaceResponse#arn #arn} => String
    #   * {Types::CreateWorkspaceResponse#status #status} => Types::WorkspaceStatus
    #   * {Types::CreateWorkspaceResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_workspace({
    #     alias: "WorkspaceAlias",
    #     client_token: "IdempotencyToken",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.workspace_id #=> String
    #   resp.arn #=> String
    #   resp.status.status_code #=> String, one of "CREATING", "ACTIVE", "UPDATING", "DELETING", "CREATION_FAILED"
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/CreateWorkspace AWS API Documentation
    #
    # @overload create_workspace(params = {})
    # @param [Hash] params ({})
    def create_workspace(params = {}, options = {})
      req = build_request(:create_workspace, params)
      req.send_request(options)
    end

    # Deletes an alert manager definition.
    #
    # @option params [required, String] :workspace_id
    #   The ID of the workspace in which to delete the alert manager
    #   definition.
    #
    # @option params [String] :client_token
    #   Optional, unique, case-sensitive, user-provided identifier to ensure
    #   the idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_alert_manager_definition({
    #     workspace_id: "WorkspaceId", # required
    #     client_token: "IdempotencyToken",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/DeleteAlertManagerDefinition AWS API Documentation
    #
    # @overload delete_alert_manager_definition(params = {})
    # @param [Hash] params ({})
    def delete_alert_manager_definition(params = {}, options = {})
      req = build_request(:delete_alert_manager_definition, params)
      req.send_request(options)
    end

    # Delete logging configuration.
    #
    # @option params [required, String] :workspace_id
    #   The ID of the workspace to vend logs to.
    #
    # @option params [String] :client_token
    #   Optional, unique, case-sensitive, user-provided identifier to ensure
    #   the idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_logging_configuration({
    #     workspace_id: "WorkspaceId", # required
    #     client_token: "IdempotencyToken",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/DeleteLoggingConfiguration AWS API Documentation
    #
    # @overload delete_logging_configuration(params = {})
    # @param [Hash] params ({})
    def delete_logging_configuration(params = {}, options = {})
      req = build_request(:delete_logging_configuration, params)
      req.send_request(options)
    end

    # Delete a rule groups namespace.
    #
    # @option params [required, String] :workspace_id
    #   The ID of the workspace to delete rule group definition.
    #
    # @option params [required, String] :name
    #   The rule groups namespace name.
    #
    # @option params [String] :client_token
    #   Optional, unique, case-sensitive, user-provided identifier to ensure
    #   the idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_rule_groups_namespace({
    #     workspace_id: "WorkspaceId", # required
    #     name: "RuleGroupsNamespaceName", # required
    #     client_token: "IdempotencyToken",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/DeleteRuleGroupsNamespace AWS API Documentation
    #
    # @overload delete_rule_groups_namespace(params = {})
    # @param [Hash] params ({})
    def delete_rule_groups_namespace(params = {}, options = {})
      req = build_request(:delete_rule_groups_namespace, params)
      req.send_request(options)
    end

    # Deletes an AMP workspace.
    #
    # @option params [required, String] :workspace_id
    #   The ID of the workspace to delete.
    #
    # @option params [String] :client_token
    #   Optional, unique, case-sensitive, user-provided identifier to ensure
    #   the idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_workspace({
    #     workspace_id: "WorkspaceId", # required
    #     client_token: "IdempotencyToken",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/DeleteWorkspace AWS API Documentation
    #
    # @overload delete_workspace(params = {})
    # @param [Hash] params ({})
    def delete_workspace(params = {}, options = {})
      req = build_request(:delete_workspace, params)
      req.send_request(options)
    end

    # Describes an alert manager definition.
    #
    # @option params [required, String] :workspace_id
    #   The ID of the workspace to describe.
    #
    # @return [Types::DescribeAlertManagerDefinitionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeAlertManagerDefinitionResponse#alert_manager_definition #alert_manager_definition} => Types::AlertManagerDefinitionDescription
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_alert_manager_definition({
    #     workspace_id: "WorkspaceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.alert_manager_definition.status.status_code #=> String, one of "CREATING", "ACTIVE", "UPDATING", "DELETING", "CREATION_FAILED", "UPDATE_FAILED"
    #   resp.alert_manager_definition.status.status_reason #=> String
    #   resp.alert_manager_definition.data #=> String
    #   resp.alert_manager_definition.created_at #=> Time
    #   resp.alert_manager_definition.modified_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/DescribeAlertManagerDefinition AWS API Documentation
    #
    # @overload describe_alert_manager_definition(params = {})
    # @param [Hash] params ({})
    def describe_alert_manager_definition(params = {}, options = {})
      req = build_request(:describe_alert_manager_definition, params)
      req.send_request(options)
    end

    # Describes logging configuration.
    #
    # @option params [required, String] :workspace_id
    #   The ID of the workspace to vend logs to.
    #
    # @return [Types::DescribeLoggingConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeLoggingConfigurationResponse#logging_configuration #logging_configuration} => Types::LoggingConfigurationMetadata
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_logging_configuration({
    #     workspace_id: "WorkspaceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.logging_configuration.status.status_code #=> String, one of "CREATING", "ACTIVE", "UPDATING", "DELETING", "CREATION_FAILED", "UPDATE_FAILED"
    #   resp.logging_configuration.status.status_reason #=> String
    #   resp.logging_configuration.workspace #=> String
    #   resp.logging_configuration.log_group_arn #=> String
    #   resp.logging_configuration.created_at #=> Time
    #   resp.logging_configuration.modified_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/DescribeLoggingConfiguration AWS API Documentation
    #
    # @overload describe_logging_configuration(params = {})
    # @param [Hash] params ({})
    def describe_logging_configuration(params = {}, options = {})
      req = build_request(:describe_logging_configuration, params)
      req.send_request(options)
    end

    # Describe a rule groups namespace.
    #
    # @option params [required, String] :workspace_id
    #   The ID of the workspace to describe.
    #
    # @option params [required, String] :name
    #   The rule groups namespace.
    #
    # @return [Types::DescribeRuleGroupsNamespaceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeRuleGroupsNamespaceResponse#rule_groups_namespace #rule_groups_namespace} => Types::RuleGroupsNamespaceDescription
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_rule_groups_namespace({
    #     workspace_id: "WorkspaceId", # required
    #     name: "RuleGroupsNamespaceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.rule_groups_namespace.arn #=> String
    #   resp.rule_groups_namespace.name #=> String
    #   resp.rule_groups_namespace.status.status_code #=> String, one of "CREATING", "ACTIVE", "UPDATING", "DELETING", "CREATION_FAILED", "UPDATE_FAILED"
    #   resp.rule_groups_namespace.status.status_reason #=> String
    #   resp.rule_groups_namespace.data #=> String
    #   resp.rule_groups_namespace.created_at #=> Time
    #   resp.rule_groups_namespace.modified_at #=> Time
    #   resp.rule_groups_namespace.tags #=> Hash
    #   resp.rule_groups_namespace.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/DescribeRuleGroupsNamespace AWS API Documentation
    #
    # @overload describe_rule_groups_namespace(params = {})
    # @param [Hash] params ({})
    def describe_rule_groups_namespace(params = {}, options = {})
      req = build_request(:describe_rule_groups_namespace, params)
      req.send_request(options)
    end

    # Describes an existing AMP workspace.
    #
    # @option params [required, String] :workspace_id
    #   The ID of the workspace to describe.
    #
    # @return [Types::DescribeWorkspaceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeWorkspaceResponse#workspace #workspace} => Types::WorkspaceDescription
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_workspace({
    #     workspace_id: "WorkspaceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.workspace.workspace_id #=> String
    #   resp.workspace.alias #=> String
    #   resp.workspace.arn #=> String
    #   resp.workspace.status.status_code #=> String, one of "CREATING", "ACTIVE", "UPDATING", "DELETING", "CREATION_FAILED"
    #   resp.workspace.prometheus_endpoint #=> String
    #   resp.workspace.created_at #=> Time
    #   resp.workspace.tags #=> Hash
    #   resp.workspace.tags["TagKey"] #=> String
    #
    #
    # The following waiters are defined for this operation (see {Client#wait_until} for detailed usage):
    #
    #   * workspace_active
    #   * workspace_deleted
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/DescribeWorkspace AWS API Documentation
    #
    # @overload describe_workspace(params = {})
    # @param [Hash] params ({})
    def describe_workspace(params = {}, options = {})
      req = build_request(:describe_workspace, params)
      req.send_request(options)
    end

    # Lists rule groups namespaces.
    #
    # @option params [required, String] :workspace_id
    #   The ID of the workspace.
    #
    # @option params [String] :name
    #   Optional filter for rule groups namespace name. Only the rule groups
    #   namespace that begin with this value will be returned.
    #
    # @option params [String] :next_token
    #   Pagination token to request the next page in a paginated list. This
    #   token is obtained from the output of the previous
    #   ListRuleGroupsNamespaces request.
    #
    # @option params [Integer] :max_results
    #   Maximum results to return in response (default=100, maximum=1000).
    #
    # @return [Types::ListRuleGroupsNamespacesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListRuleGroupsNamespacesResponse#rule_groups_namespaces #rule_groups_namespaces} => Array&lt;Types::RuleGroupsNamespaceSummary&gt;
    #   * {Types::ListRuleGroupsNamespacesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_rule_groups_namespaces({
    #     workspace_id: "WorkspaceId", # required
    #     name: "RuleGroupsNamespaceName",
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.rule_groups_namespaces #=> Array
    #   resp.rule_groups_namespaces[0].arn #=> String
    #   resp.rule_groups_namespaces[0].name #=> String
    #   resp.rule_groups_namespaces[0].status.status_code #=> String, one of "CREATING", "ACTIVE", "UPDATING", "DELETING", "CREATION_FAILED", "UPDATE_FAILED"
    #   resp.rule_groups_namespaces[0].status.status_reason #=> String
    #   resp.rule_groups_namespaces[0].created_at #=> Time
    #   resp.rule_groups_namespaces[0].modified_at #=> Time
    #   resp.rule_groups_namespaces[0].tags #=> Hash
    #   resp.rule_groups_namespaces[0].tags["TagKey"] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/ListRuleGroupsNamespaces AWS API Documentation
    #
    # @overload list_rule_groups_namespaces(params = {})
    # @param [Hash] params ({})
    def list_rule_groups_namespaces(params = {}, options = {})
      req = build_request(:list_rule_groups_namespaces, params)
      req.send_request(options)
    end

    # Lists the tags you have assigned to the resource.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the resource.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Lists all AMP workspaces, including workspaces being created or
    # deleted.
    #
    # @option params [String] :next_token
    #   Pagination token to request the next page in a paginated list. This
    #   token is obtained from the output of the previous ListWorkspaces
    #   request.
    #
    # @option params [String] :alias
    #   Optional filter for workspace alias. Only the workspaces with aliases
    #   that begin with this value will be returned.
    #
    # @option params [Integer] :max_results
    #   Maximum results to return in response (default=100, maximum=1000).
    #
    # @return [Types::ListWorkspacesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListWorkspacesResponse#workspaces #workspaces} => Array&lt;Types::WorkspaceSummary&gt;
    #   * {Types::ListWorkspacesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_workspaces({
    #     next_token: "PaginationToken",
    #     alias: "WorkspaceAlias",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.workspaces #=> Array
    #   resp.workspaces[0].workspace_id #=> String
    #   resp.workspaces[0].alias #=> String
    #   resp.workspaces[0].arn #=> String
    #   resp.workspaces[0].status.status_code #=> String, one of "CREATING", "ACTIVE", "UPDATING", "DELETING", "CREATION_FAILED"
    #   resp.workspaces[0].created_at #=> Time
    #   resp.workspaces[0].tags #=> Hash
    #   resp.workspaces[0].tags["TagKey"] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/ListWorkspaces AWS API Documentation
    #
    # @overload list_workspaces(params = {})
    # @param [Hash] params ({})
    def list_workspaces(params = {}, options = {})
      req = build_request(:list_workspaces, params)
      req.send_request(options)
    end

    # Update an alert manager definition.
    #
    # @option params [required, String] :workspace_id
    #   The ID of the workspace in which to update the alert manager
    #   definition.
    #
    # @option params [required, String, StringIO, File] :data
    #   The alert manager definition data.
    #
    # @option params [String] :client_token
    #   Optional, unique, case-sensitive, user-provided identifier to ensure
    #   the idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::PutAlertManagerDefinitionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutAlertManagerDefinitionResponse#status #status} => Types::AlertManagerDefinitionStatus
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_alert_manager_definition({
    #     workspace_id: "WorkspaceId", # required
    #     data: "data", # required
    #     client_token: "IdempotencyToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.status.status_code #=> String, one of "CREATING", "ACTIVE", "UPDATING", "DELETING", "CREATION_FAILED", "UPDATE_FAILED"
    #   resp.status.status_reason #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/PutAlertManagerDefinition AWS API Documentation
    #
    # @overload put_alert_manager_definition(params = {})
    # @param [Hash] params ({})
    def put_alert_manager_definition(params = {}, options = {})
      req = build_request(:put_alert_manager_definition, params)
      req.send_request(options)
    end

    # Update a rule groups namespace.
    #
    # @option params [required, String] :workspace_id
    #   The ID of the workspace in which to update the rule group namespace.
    #
    # @option params [required, String] :name
    #   The rule groups namespace name.
    #
    # @option params [required, String, StringIO, File] :data
    #   The namespace data that define the rule groups.
    #
    # @option params [String] :client_token
    #   Optional, unique, case-sensitive, user-provided identifier to ensure
    #   the idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::PutRuleGroupsNamespaceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutRuleGroupsNamespaceResponse#name #name} => String
    #   * {Types::PutRuleGroupsNamespaceResponse#arn #arn} => String
    #   * {Types::PutRuleGroupsNamespaceResponse#status #status} => Types::RuleGroupsNamespaceStatus
    #   * {Types::PutRuleGroupsNamespaceResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_rule_groups_namespace({
    #     workspace_id: "WorkspaceId", # required
    #     name: "RuleGroupsNamespaceName", # required
    #     data: "data", # required
    #     client_token: "IdempotencyToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #   resp.arn #=> String
    #   resp.status.status_code #=> String, one of "CREATING", "ACTIVE", "UPDATING", "DELETING", "CREATION_FAILED", "UPDATE_FAILED"
    #   resp.status.status_reason #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/PutRuleGroupsNamespace AWS API Documentation
    #
    # @overload put_rule_groups_namespace(params = {})
    # @param [Hash] params ({})
    def put_rule_groups_namespace(params = {}, options = {})
      req = build_request(:put_rule_groups_namespace, params)
      req.send_request(options)
    end

    # Creates tags for the specified resource.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the resource.
    #
    # @option params [required, Hash<String,String>] :tags
    #   The list of tags assigned to the resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "String", # required
    #     tags: { # required
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Deletes tags from the specified resource.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the resource.
    #
    # @option params [required, Array<String>] :tag_keys
    #   One or more tag keys
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "String", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Update logging configuration.
    #
    # @option params [required, String] :workspace_id
    #   The ID of the workspace to vend logs to.
    #
    # @option params [required, String] :log_group_arn
    #   The ARN of the CW log group to which the vended log data will be
    #   published.
    #
    # @option params [String] :client_token
    #   Optional, unique, case-sensitive, user-provided identifier to ensure
    #   the idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::UpdateLoggingConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateLoggingConfigurationResponse#status #status} => Types::LoggingConfigurationStatus
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_logging_configuration({
    #     workspace_id: "WorkspaceId", # required
    #     log_group_arn: "LogGroupArn", # required
    #     client_token: "IdempotencyToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.status.status_code #=> String, one of "CREATING", "ACTIVE", "UPDATING", "DELETING", "CREATION_FAILED", "UPDATE_FAILED"
    #   resp.status.status_reason #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/UpdateLoggingConfiguration AWS API Documentation
    #
    # @overload update_logging_configuration(params = {})
    # @param [Hash] params ({})
    def update_logging_configuration(params = {}, options = {})
      req = build_request(:update_logging_configuration, params)
      req.send_request(options)
    end

    # Updates an AMP workspace alias.
    #
    # @option params [required, String] :workspace_id
    #   The ID of the workspace being updated.
    #
    # @option params [String] :alias
    #   The new alias of the workspace.
    #
    # @option params [String] :client_token
    #   Optional, unique, case-sensitive, user-provided identifier to ensure
    #   the idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_workspace_alias({
    #     workspace_id: "WorkspaceId", # required
    #     alias: "WorkspaceAlias",
    #     client_token: "IdempotencyToken",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/UpdateWorkspaceAlias AWS API Documentation
    #
    # @overload update_workspace_alias(params = {})
    # @param [Hash] params ({})
    def update_workspace_alias(params = {}, options = {})
      req = build_request(:update_workspace_alias, params)
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
      context[:gem_name] = 'aws-sdk-prometheusservice'
      context[:gem_version] = '1.23.0'
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
    # | waiter_name       | params                      | :delay   | :max_attempts |
    # | ----------------- | --------------------------- | -------- | ------------- |
    # | workspace_active  | {Client#describe_workspace} | 2        | 60            |
    # | workspace_deleted | {Client#describe_workspace} | 2        | 60            |
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
        workspace_active: Waiters::WorkspaceActive,
        workspace_deleted: Waiters::WorkspaceDeleted
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
