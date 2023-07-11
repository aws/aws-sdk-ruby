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

Aws::Plugins::GlobalConfiguration.add_identifier(:route53recoverycontrolconfig)

module Aws::Route53RecoveryControlConfig
  # An API client for Route53RecoveryControlConfig.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::Route53RecoveryControlConfig::Client.new(
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

    @identifier = :route53recoverycontrolconfig

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
    add_plugin(Aws::Route53RecoveryControlConfig::Plugins::Endpoints)

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
    #   @option options [Aws::Route53RecoveryControlConfig::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to `Aws::Route53RecoveryControlConfig::EndpointParameters`
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

    # Create a new cluster. A cluster is a set of redundant Regional
    # endpoints against which you can run API calls to update or get the
    # state of one or more routing controls. Each cluster has a name,
    # status, Amazon Resource Name (ARN), and an array of the five cluster
    # endpoints (one for each supported Amazon Web Services Region) that you
    # can use with API calls to the cluster data plane.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive string of up to 64 ASCII characters. To make
    #   an idempotent API request with an action, specify a client token in
    #   the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :cluster_name
    #   The name of the cluster.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags associated with the cluster.
    #
    # @return [Types::CreateClusterResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateClusterResponse#cluster #cluster} => Types::Cluster
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_cluster({
    #     client_token: "__stringMin1Max64PatternS",
    #     cluster_name: "__stringMin1Max64PatternS", # required
    #     tags: {
    #       "__string" => "__stringMin0Max256PatternS",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.cluster.cluster_arn #=> String
    #   resp.cluster.cluster_endpoints #=> Array
    #   resp.cluster.cluster_endpoints[0].endpoint #=> String
    #   resp.cluster.cluster_endpoints[0].region #=> String
    #   resp.cluster.name #=> String
    #   resp.cluster.status #=> String, one of "PENDING", "DEPLOYED", "PENDING_DELETION"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-control-config-2020-11-02/CreateCluster AWS API Documentation
    #
    # @overload create_cluster(params = {})
    # @param [Hash] params ({})
    def create_cluster(params = {}, options = {})
      req = build_request(:create_cluster, params)
      req.send_request(options)
    end

    # Creates a new control panel. A control panel represents a group of
    # routing controls that can be changed together in a single transaction.
    # You can use a control panel to centrally view the operational status
    # of applications across your organization, and trigger multi-app
    # failovers in a single transaction, for example, to fail over an
    # Availability Zone or Amazon Web Services Region.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive string of up to 64 ASCII characters. To make
    #   an idempotent API request with an action, specify a client token in
    #   the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :cluster_arn
    #   The Amazon Resource Name (ARN) of the cluster for the control panel.
    #
    # @option params [required, String] :control_panel_name
    #   The name of the control panel.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags associated with the control panel.
    #
    # @return [Types::CreateControlPanelResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateControlPanelResponse#control_panel #control_panel} => Types::ControlPanel
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_control_panel({
    #     client_token: "__stringMin1Max64PatternS",
    #     cluster_arn: "__stringMin1Max256PatternAZaZ09", # required
    #     control_panel_name: "__stringMin1Max64PatternS", # required
    #     tags: {
    #       "__string" => "__stringMin0Max256PatternS",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.control_panel.cluster_arn #=> String
    #   resp.control_panel.control_panel_arn #=> String
    #   resp.control_panel.default_control_panel #=> Boolean
    #   resp.control_panel.name #=> String
    #   resp.control_panel.routing_control_count #=> Integer
    #   resp.control_panel.status #=> String, one of "PENDING", "DEPLOYED", "PENDING_DELETION"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-control-config-2020-11-02/CreateControlPanel AWS API Documentation
    #
    # @overload create_control_panel(params = {})
    # @param [Hash] params ({})
    def create_control_panel(params = {}, options = {})
      req = build_request(:create_control_panel, params)
      req.send_request(options)
    end

    # Creates a new routing control.
    #
    # A routing control has one of two states: ON and OFF. You can map the
    # routing control state to the state of an Amazon Route 53 health check,
    # which can be used to control traffic routing.
    #
    # To get or update the routing control state, see the Recovery Cluster
    # (data plane) API actions for Amazon Route 53 Application Recovery
    # Controller.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive string of up to 64 ASCII characters. To make
    #   an idempotent API request with an action, specify a client token in
    #   the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :cluster_arn
    #   The Amazon Resource Name (ARN) of the cluster that includes the
    #   routing control.
    #
    # @option params [String] :control_panel_arn
    #   The Amazon Resource Name (ARN) of the control panel that includes the
    #   routing control.
    #
    # @option params [required, String] :routing_control_name
    #   The name of the routing control.
    #
    # @return [Types::CreateRoutingControlResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateRoutingControlResponse#routing_control #routing_control} => Types::RoutingControl
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_routing_control({
    #     client_token: "__stringMin1Max64PatternS",
    #     cluster_arn: "__stringMin1Max256PatternAZaZ09", # required
    #     control_panel_arn: "__stringMin1Max256PatternAZaZ09",
    #     routing_control_name: "__stringMin1Max64PatternS", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.routing_control.control_panel_arn #=> String
    #   resp.routing_control.name #=> String
    #   resp.routing_control.routing_control_arn #=> String
    #   resp.routing_control.status #=> String, one of "PENDING", "DEPLOYED", "PENDING_DELETION"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-control-config-2020-11-02/CreateRoutingControl AWS API Documentation
    #
    # @overload create_routing_control(params = {})
    # @param [Hash] params ({})
    def create_routing_control(params = {}, options = {})
      req = build_request(:create_routing_control, params)
      req.send_request(options)
    end

    # Creates a safety rule in a control panel. Safety rules let you add
    # safeguards around changing routing control states, and for enabling
    # and disabling routing controls, to help prevent unexpected outcomes.
    #
    # There are two types of safety rules: assertion rules and gating rules.
    #
    # Assertion rule: An assertion rule enforces that, when you change a
    # routing control state, that a certain criteria is met. For example,
    # the criteria might be that at least one routing control state is On
    # after the transaction so that traffic continues to flow to at least
    # one cell for the application. This ensures that you avoid a fail-open
    # scenario.
    #
    # Gating rule: A gating rule lets you configure a gating routing control
    # as an overall "on/off" switch for a group of routing controls. Or,
    # you can configure more complex gating scenarios, for example by
    # configuring multiple gating routing controls.
    #
    # For more information, see [Safety rules][1] in the Amazon Route 53
    # Application Recovery Controller Developer Guide.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/r53recovery/latest/dg/routing-control.safety-rules.html
    #
    # @option params [Types::NewAssertionRule] :assertion_rule
    #   The assertion rule requested.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive string of up to 64 ASCII characters. To make
    #   an idempotent API request with an action, specify a client token in
    #   the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Types::NewGatingRule] :gating_rule
    #   The gating rule requested.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags associated with the safety rule.
    #
    # @return [Types::CreateSafetyRuleResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateSafetyRuleResponse#assertion_rule #assertion_rule} => Types::AssertionRule
    #   * {Types::CreateSafetyRuleResponse#gating_rule #gating_rule} => Types::GatingRule
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_safety_rule({
    #     assertion_rule: {
    #       asserted_controls: ["__stringMin1Max256PatternAZaZ09"], # required
    #       control_panel_arn: "__stringMin1Max256PatternAZaZ09", # required
    #       name: "__stringMin1Max64PatternS", # required
    #       rule_config: { # required
    #         inverted: false, # required
    #         threshold: 1, # required
    #         type: "ATLEAST", # required, accepts ATLEAST, AND, OR
    #       },
    #       wait_period_ms: 1, # required
    #     },
    #     client_token: "__stringMin1Max64PatternS",
    #     gating_rule: {
    #       control_panel_arn: "__stringMin1Max256PatternAZaZ09", # required
    #       gating_controls: ["__stringMin1Max256PatternAZaZ09"], # required
    #       name: "__stringMin1Max64PatternS", # required
    #       rule_config: { # required
    #         inverted: false, # required
    #         threshold: 1, # required
    #         type: "ATLEAST", # required, accepts ATLEAST, AND, OR
    #       },
    #       target_controls: ["__stringMin1Max256PatternAZaZ09"], # required
    #       wait_period_ms: 1, # required
    #     },
    #     tags: {
    #       "__string" => "__stringMin0Max256PatternS",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.assertion_rule.asserted_controls #=> Array
    #   resp.assertion_rule.asserted_controls[0] #=> String
    #   resp.assertion_rule.control_panel_arn #=> String
    #   resp.assertion_rule.name #=> String
    #   resp.assertion_rule.rule_config.inverted #=> Boolean
    #   resp.assertion_rule.rule_config.threshold #=> Integer
    #   resp.assertion_rule.rule_config.type #=> String, one of "ATLEAST", "AND", "OR"
    #   resp.assertion_rule.safety_rule_arn #=> String
    #   resp.assertion_rule.status #=> String, one of "PENDING", "DEPLOYED", "PENDING_DELETION"
    #   resp.assertion_rule.wait_period_ms #=> Integer
    #   resp.gating_rule.control_panel_arn #=> String
    #   resp.gating_rule.gating_controls #=> Array
    #   resp.gating_rule.gating_controls[0] #=> String
    #   resp.gating_rule.name #=> String
    #   resp.gating_rule.rule_config.inverted #=> Boolean
    #   resp.gating_rule.rule_config.threshold #=> Integer
    #   resp.gating_rule.rule_config.type #=> String, one of "ATLEAST", "AND", "OR"
    #   resp.gating_rule.safety_rule_arn #=> String
    #   resp.gating_rule.status #=> String, one of "PENDING", "DEPLOYED", "PENDING_DELETION"
    #   resp.gating_rule.target_controls #=> Array
    #   resp.gating_rule.target_controls[0] #=> String
    #   resp.gating_rule.wait_period_ms #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-control-config-2020-11-02/CreateSafetyRule AWS API Documentation
    #
    # @overload create_safety_rule(params = {})
    # @param [Hash] params ({})
    def create_safety_rule(params = {}, options = {})
      req = build_request(:create_safety_rule, params)
      req.send_request(options)
    end

    # Delete a cluster.
    #
    # @option params [required, String] :cluster_arn
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_cluster({
    #     cluster_arn: "__string", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-control-config-2020-11-02/DeleteCluster AWS API Documentation
    #
    # @overload delete_cluster(params = {})
    # @param [Hash] params ({})
    def delete_cluster(params = {}, options = {})
      req = build_request(:delete_cluster, params)
      req.send_request(options)
    end

    # Deletes a control panel.
    #
    # @option params [required, String] :control_panel_arn
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_control_panel({
    #     control_panel_arn: "__string", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-control-config-2020-11-02/DeleteControlPanel AWS API Documentation
    #
    # @overload delete_control_panel(params = {})
    # @param [Hash] params ({})
    def delete_control_panel(params = {}, options = {})
      req = build_request(:delete_control_panel, params)
      req.send_request(options)
    end

    # Deletes a routing control.
    #
    # @option params [required, String] :routing_control_arn
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_routing_control({
    #     routing_control_arn: "__string", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-control-config-2020-11-02/DeleteRoutingControl AWS API Documentation
    #
    # @overload delete_routing_control(params = {})
    # @param [Hash] params ({})
    def delete_routing_control(params = {}, options = {})
      req = build_request(:delete_routing_control, params)
      req.send_request(options)
    end

    # Deletes a safety rule.
    #
    # /&gt;
    #
    # @option params [required, String] :safety_rule_arn
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_safety_rule({
    #     safety_rule_arn: "__string", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-control-config-2020-11-02/DeleteSafetyRule AWS API Documentation
    #
    # @overload delete_safety_rule(params = {})
    # @param [Hash] params ({})
    def delete_safety_rule(params = {}, options = {})
      req = build_request(:delete_safety_rule, params)
      req.send_request(options)
    end

    # Display the details about a cluster. The response includes the cluster
    # name, endpoints, status, and Amazon Resource Name (ARN).
    #
    # @option params [required, String] :cluster_arn
    #
    # @return [Types::DescribeClusterResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeClusterResponse#cluster #cluster} => Types::Cluster
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_cluster({
    #     cluster_arn: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.cluster.cluster_arn #=> String
    #   resp.cluster.cluster_endpoints #=> Array
    #   resp.cluster.cluster_endpoints[0].endpoint #=> String
    #   resp.cluster.cluster_endpoints[0].region #=> String
    #   resp.cluster.name #=> String
    #   resp.cluster.status #=> String, one of "PENDING", "DEPLOYED", "PENDING_DELETION"
    #
    #
    # The following waiters are defined for this operation (see {Client#wait_until} for detailed usage):
    #
    #   * cluster_created
    #   * cluster_deleted
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-control-config-2020-11-02/DescribeCluster AWS API Documentation
    #
    # @overload describe_cluster(params = {})
    # @param [Hash] params ({})
    def describe_cluster(params = {}, options = {})
      req = build_request(:describe_cluster, params)
      req.send_request(options)
    end

    # Displays details about a control panel.
    #
    # @option params [required, String] :control_panel_arn
    #
    # @return [Types::DescribeControlPanelResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeControlPanelResponse#control_panel #control_panel} => Types::ControlPanel
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_control_panel({
    #     control_panel_arn: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.control_panel.cluster_arn #=> String
    #   resp.control_panel.control_panel_arn #=> String
    #   resp.control_panel.default_control_panel #=> Boolean
    #   resp.control_panel.name #=> String
    #   resp.control_panel.routing_control_count #=> Integer
    #   resp.control_panel.status #=> String, one of "PENDING", "DEPLOYED", "PENDING_DELETION"
    #
    #
    # The following waiters are defined for this operation (see {Client#wait_until} for detailed usage):
    #
    #   * control_panel_created
    #   * control_panel_deleted
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-control-config-2020-11-02/DescribeControlPanel AWS API Documentation
    #
    # @overload describe_control_panel(params = {})
    # @param [Hash] params ({})
    def describe_control_panel(params = {}, options = {})
      req = build_request(:describe_control_panel, params)
      req.send_request(options)
    end

    # Displays details about a routing control. A routing control has one of
    # two states: ON and OFF. You can map the routing control state to the
    # state of an Amazon Route 53 health check, which can be used to control
    # routing.
    #
    # To get or update the routing control state, see the Recovery Cluster
    # (data plane) API actions for Amazon Route 53 Application Recovery
    # Controller.
    #
    # @option params [required, String] :routing_control_arn
    #
    # @return [Types::DescribeRoutingControlResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeRoutingControlResponse#routing_control #routing_control} => Types::RoutingControl
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_routing_control({
    #     routing_control_arn: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.routing_control.control_panel_arn #=> String
    #   resp.routing_control.name #=> String
    #   resp.routing_control.routing_control_arn #=> String
    #   resp.routing_control.status #=> String, one of "PENDING", "DEPLOYED", "PENDING_DELETION"
    #
    #
    # The following waiters are defined for this operation (see {Client#wait_until} for detailed usage):
    #
    #   * routing_control_created
    #   * routing_control_deleted
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-control-config-2020-11-02/DescribeRoutingControl AWS API Documentation
    #
    # @overload describe_routing_control(params = {})
    # @param [Hash] params ({})
    def describe_routing_control(params = {}, options = {})
      req = build_request(:describe_routing_control, params)
      req.send_request(options)
    end

    # Returns information about a safety rule.
    #
    # @option params [required, String] :safety_rule_arn
    #
    # @return [Types::DescribeSafetyRuleResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeSafetyRuleResponse#assertion_rule #assertion_rule} => Types::AssertionRule
    #   * {Types::DescribeSafetyRuleResponse#gating_rule #gating_rule} => Types::GatingRule
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_safety_rule({
    #     safety_rule_arn: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.assertion_rule.asserted_controls #=> Array
    #   resp.assertion_rule.asserted_controls[0] #=> String
    #   resp.assertion_rule.control_panel_arn #=> String
    #   resp.assertion_rule.name #=> String
    #   resp.assertion_rule.rule_config.inverted #=> Boolean
    #   resp.assertion_rule.rule_config.threshold #=> Integer
    #   resp.assertion_rule.rule_config.type #=> String, one of "ATLEAST", "AND", "OR"
    #   resp.assertion_rule.safety_rule_arn #=> String
    #   resp.assertion_rule.status #=> String, one of "PENDING", "DEPLOYED", "PENDING_DELETION"
    #   resp.assertion_rule.wait_period_ms #=> Integer
    #   resp.gating_rule.control_panel_arn #=> String
    #   resp.gating_rule.gating_controls #=> Array
    #   resp.gating_rule.gating_controls[0] #=> String
    #   resp.gating_rule.name #=> String
    #   resp.gating_rule.rule_config.inverted #=> Boolean
    #   resp.gating_rule.rule_config.threshold #=> Integer
    #   resp.gating_rule.rule_config.type #=> String, one of "ATLEAST", "AND", "OR"
    #   resp.gating_rule.safety_rule_arn #=> String
    #   resp.gating_rule.status #=> String, one of "PENDING", "DEPLOYED", "PENDING_DELETION"
    #   resp.gating_rule.target_controls #=> Array
    #   resp.gating_rule.target_controls[0] #=> String
    #   resp.gating_rule.wait_period_ms #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-control-config-2020-11-02/DescribeSafetyRule AWS API Documentation
    #
    # @overload describe_safety_rule(params = {})
    # @param [Hash] params ({})
    def describe_safety_rule(params = {}, options = {})
      req = build_request(:describe_safety_rule, params)
      req.send_request(options)
    end

    # Returns an array of all Amazon Route 53 health checks associated with
    # a specific routing control.
    #
    # @option params [Integer] :max_results
    #
    # @option params [String] :next_token
    #
    # @option params [required, String] :routing_control_arn
    #
    # @return [Types::ListAssociatedRoute53HealthChecksResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAssociatedRoute53HealthChecksResponse#health_check_ids #health_check_ids} => Array&lt;String&gt;
    #   * {Types::ListAssociatedRoute53HealthChecksResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_associated_route_53_health_checks({
    #     max_results: 1,
    #     next_token: "__string",
    #     routing_control_arn: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.health_check_ids #=> Array
    #   resp.health_check_ids[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-control-config-2020-11-02/ListAssociatedRoute53HealthChecks AWS API Documentation
    #
    # @overload list_associated_route_53_health_checks(params = {})
    # @param [Hash] params ({})
    def list_associated_route_53_health_checks(params = {}, options = {})
      req = build_request(:list_associated_route_53_health_checks, params)
      req.send_request(options)
    end

    # Returns an array of all the clusters in an account.
    #
    # @option params [Integer] :max_results
    #
    # @option params [String] :next_token
    #
    # @return [Types::ListClustersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListClustersResponse#clusters #clusters} => Array&lt;Types::Cluster&gt;
    #   * {Types::ListClustersResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_clusters({
    #     max_results: 1,
    #     next_token: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.clusters #=> Array
    #   resp.clusters[0].cluster_arn #=> String
    #   resp.clusters[0].cluster_endpoints #=> Array
    #   resp.clusters[0].cluster_endpoints[0].endpoint #=> String
    #   resp.clusters[0].cluster_endpoints[0].region #=> String
    #   resp.clusters[0].name #=> String
    #   resp.clusters[0].status #=> String, one of "PENDING", "DEPLOYED", "PENDING_DELETION"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-control-config-2020-11-02/ListClusters AWS API Documentation
    #
    # @overload list_clusters(params = {})
    # @param [Hash] params ({})
    def list_clusters(params = {}, options = {})
      req = build_request(:list_clusters, params)
      req.send_request(options)
    end

    # Returns an array of control panels in an account or in a cluster.
    #
    # @option params [String] :cluster_arn
    #
    # @option params [Integer] :max_results
    #
    # @option params [String] :next_token
    #
    # @return [Types::ListControlPanelsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListControlPanelsResponse#control_panels #control_panels} => Array&lt;Types::ControlPanel&gt;
    #   * {Types::ListControlPanelsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_control_panels({
    #     cluster_arn: "__string",
    #     max_results: 1,
    #     next_token: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.control_panels #=> Array
    #   resp.control_panels[0].cluster_arn #=> String
    #   resp.control_panels[0].control_panel_arn #=> String
    #   resp.control_panels[0].default_control_panel #=> Boolean
    #   resp.control_panels[0].name #=> String
    #   resp.control_panels[0].routing_control_count #=> Integer
    #   resp.control_panels[0].status #=> String, one of "PENDING", "DEPLOYED", "PENDING_DELETION"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-control-config-2020-11-02/ListControlPanels AWS API Documentation
    #
    # @overload list_control_panels(params = {})
    # @param [Hash] params ({})
    def list_control_panels(params = {}, options = {})
      req = build_request(:list_control_panels, params)
      req.send_request(options)
    end

    # Returns an array of routing controls for a control panel. A routing
    # control is an Amazon Route 53 Application Recovery Controller
    # construct that has one of two states: ON and OFF. You can map the
    # routing control state to the state of an Amazon Route 53 health check,
    # which can be used to control routing.
    #
    # @option params [required, String] :control_panel_arn
    #
    # @option params [Integer] :max_results
    #
    # @option params [String] :next_token
    #
    # @return [Types::ListRoutingControlsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListRoutingControlsResponse#next_token #next_token} => String
    #   * {Types::ListRoutingControlsResponse#routing_controls #routing_controls} => Array&lt;Types::RoutingControl&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_routing_controls({
    #     control_panel_arn: "__string", # required
    #     max_results: 1,
    #     next_token: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.routing_controls #=> Array
    #   resp.routing_controls[0].control_panel_arn #=> String
    #   resp.routing_controls[0].name #=> String
    #   resp.routing_controls[0].routing_control_arn #=> String
    #   resp.routing_controls[0].status #=> String, one of "PENDING", "DEPLOYED", "PENDING_DELETION"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-control-config-2020-11-02/ListRoutingControls AWS API Documentation
    #
    # @overload list_routing_controls(params = {})
    # @param [Hash] params ({})
    def list_routing_controls(params = {}, options = {})
      req = build_request(:list_routing_controls, params)
      req.send_request(options)
    end

    # List the safety rules (the assertion rules and gating rules) that
    # you've defined for the routing controls in a control panel.
    #
    # @option params [required, String] :control_panel_arn
    #
    # @option params [Integer] :max_results
    #
    # @option params [String] :next_token
    #
    # @return [Types::ListSafetyRulesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListSafetyRulesResponse#next_token #next_token} => String
    #   * {Types::ListSafetyRulesResponse#safety_rules #safety_rules} => Array&lt;Types::Rule&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_safety_rules({
    #     control_panel_arn: "__string", # required
    #     max_results: 1,
    #     next_token: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.safety_rules #=> Array
    #   resp.safety_rules[0].assertion.asserted_controls #=> Array
    #   resp.safety_rules[0].assertion.asserted_controls[0] #=> String
    #   resp.safety_rules[0].assertion.control_panel_arn #=> String
    #   resp.safety_rules[0].assertion.name #=> String
    #   resp.safety_rules[0].assertion.rule_config.inverted #=> Boolean
    #   resp.safety_rules[0].assertion.rule_config.threshold #=> Integer
    #   resp.safety_rules[0].assertion.rule_config.type #=> String, one of "ATLEAST", "AND", "OR"
    #   resp.safety_rules[0].assertion.safety_rule_arn #=> String
    #   resp.safety_rules[0].assertion.status #=> String, one of "PENDING", "DEPLOYED", "PENDING_DELETION"
    #   resp.safety_rules[0].assertion.wait_period_ms #=> Integer
    #   resp.safety_rules[0].gating.control_panel_arn #=> String
    #   resp.safety_rules[0].gating.gating_controls #=> Array
    #   resp.safety_rules[0].gating.gating_controls[0] #=> String
    #   resp.safety_rules[0].gating.name #=> String
    #   resp.safety_rules[0].gating.rule_config.inverted #=> Boolean
    #   resp.safety_rules[0].gating.rule_config.threshold #=> Integer
    #   resp.safety_rules[0].gating.rule_config.type #=> String, one of "ATLEAST", "AND", "OR"
    #   resp.safety_rules[0].gating.safety_rule_arn #=> String
    #   resp.safety_rules[0].gating.status #=> String, one of "PENDING", "DEPLOYED", "PENDING_DELETION"
    #   resp.safety_rules[0].gating.target_controls #=> Array
    #   resp.safety_rules[0].gating.target_controls[0] #=> String
    #   resp.safety_rules[0].gating.wait_period_ms #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-control-config-2020-11-02/ListSafetyRules AWS API Documentation
    #
    # @overload list_safety_rules(params = {})
    # @param [Hash] params ({})
    def list_safety_rules(params = {}, options = {})
      req = build_request(:list_safety_rules, params)
      req.send_request(options)
    end

    # Lists the tags for a resource.
    #
    # @option params [required, String] :resource_arn
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Hash
    #   resp.tags["__string"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-control-config-2020-11-02/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Adds a tag to a resource.
    #
    # @option params [required, String] :resource_arn
    #
    # @option params [required, Hash<String,String>] :tags
    #   The tags associated with the resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "__string", # required
    #     tags: { # required
    #       "__string" => "__stringMin0Max256PatternS",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-control-config-2020-11-02/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes a tag from a resource.
    #
    # @option params [required, String] :resource_arn
    #
    # @option params [required, Array<String>] :tag_keys
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "__string", # required
    #     tag_keys: ["__string"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-control-config-2020-11-02/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates a control panel. The only update you can make to a control
    # panel is to change the name of the control panel.
    #
    # @option params [required, String] :control_panel_arn
    #   The Amazon Resource Name (ARN) of the control panel.
    #
    # @option params [required, String] :control_panel_name
    #   The name of the control panel.
    #
    # @return [Types::UpdateControlPanelResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateControlPanelResponse#control_panel #control_panel} => Types::ControlPanel
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_control_panel({
    #     control_panel_arn: "__stringMin1Max256PatternAZaZ09", # required
    #     control_panel_name: "__stringMin1Max64PatternS", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.control_panel.cluster_arn #=> String
    #   resp.control_panel.control_panel_arn #=> String
    #   resp.control_panel.default_control_panel #=> Boolean
    #   resp.control_panel.name #=> String
    #   resp.control_panel.routing_control_count #=> Integer
    #   resp.control_panel.status #=> String, one of "PENDING", "DEPLOYED", "PENDING_DELETION"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-control-config-2020-11-02/UpdateControlPanel AWS API Documentation
    #
    # @overload update_control_panel(params = {})
    # @param [Hash] params ({})
    def update_control_panel(params = {}, options = {})
      req = build_request(:update_control_panel, params)
      req.send_request(options)
    end

    # Updates a routing control. You can only update the name of the routing
    # control. To get or update the routing control state, see the Recovery
    # Cluster (data plane) API actions for Amazon Route 53 Application
    # Recovery Controller.
    #
    # @option params [required, String] :routing_control_arn
    #   The Amazon Resource Name (ARN) of the routing control.
    #
    # @option params [required, String] :routing_control_name
    #   The name of the routing control.
    #
    # @return [Types::UpdateRoutingControlResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateRoutingControlResponse#routing_control #routing_control} => Types::RoutingControl
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_routing_control({
    #     routing_control_arn: "__stringMin1Max256PatternAZaZ09", # required
    #     routing_control_name: "__stringMin1Max64PatternS", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.routing_control.control_panel_arn #=> String
    #   resp.routing_control.name #=> String
    #   resp.routing_control.routing_control_arn #=> String
    #   resp.routing_control.status #=> String, one of "PENDING", "DEPLOYED", "PENDING_DELETION"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-control-config-2020-11-02/UpdateRoutingControl AWS API Documentation
    #
    # @overload update_routing_control(params = {})
    # @param [Hash] params ({})
    def update_routing_control(params = {}, options = {})
      req = build_request(:update_routing_control, params)
      req.send_request(options)
    end

    # Update a safety rule (an assertion rule or gating rule). You can only
    # update the name and the waiting period for a safety rule. To make
    # other updates, delete the safety rule and create a new one.
    #
    # @option params [Types::AssertionRuleUpdate] :assertion_rule_update
    #   The assertion rule to update.
    #
    # @option params [Types::GatingRuleUpdate] :gating_rule_update
    #   The gating rule to update.
    #
    # @return [Types::UpdateSafetyRuleResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateSafetyRuleResponse#assertion_rule #assertion_rule} => Types::AssertionRule
    #   * {Types::UpdateSafetyRuleResponse#gating_rule #gating_rule} => Types::GatingRule
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_safety_rule({
    #     assertion_rule_update: {
    #       name: "__stringMin1Max64PatternS", # required
    #       safety_rule_arn: "__stringMin1Max256PatternAZaZ09", # required
    #       wait_period_ms: 1, # required
    #     },
    #     gating_rule_update: {
    #       name: "__stringMin1Max64PatternS", # required
    #       safety_rule_arn: "__stringMin1Max256PatternAZaZ09", # required
    #       wait_period_ms: 1, # required
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.assertion_rule.asserted_controls #=> Array
    #   resp.assertion_rule.asserted_controls[0] #=> String
    #   resp.assertion_rule.control_panel_arn #=> String
    #   resp.assertion_rule.name #=> String
    #   resp.assertion_rule.rule_config.inverted #=> Boolean
    #   resp.assertion_rule.rule_config.threshold #=> Integer
    #   resp.assertion_rule.rule_config.type #=> String, one of "ATLEAST", "AND", "OR"
    #   resp.assertion_rule.safety_rule_arn #=> String
    #   resp.assertion_rule.status #=> String, one of "PENDING", "DEPLOYED", "PENDING_DELETION"
    #   resp.assertion_rule.wait_period_ms #=> Integer
    #   resp.gating_rule.control_panel_arn #=> String
    #   resp.gating_rule.gating_controls #=> Array
    #   resp.gating_rule.gating_controls[0] #=> String
    #   resp.gating_rule.name #=> String
    #   resp.gating_rule.rule_config.inverted #=> Boolean
    #   resp.gating_rule.rule_config.threshold #=> Integer
    #   resp.gating_rule.rule_config.type #=> String, one of "ATLEAST", "AND", "OR"
    #   resp.gating_rule.safety_rule_arn #=> String
    #   resp.gating_rule.status #=> String, one of "PENDING", "DEPLOYED", "PENDING_DELETION"
    #   resp.gating_rule.target_controls #=> Array
    #   resp.gating_rule.target_controls[0] #=> String
    #   resp.gating_rule.wait_period_ms #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-control-config-2020-11-02/UpdateSafetyRule AWS API Documentation
    #
    # @overload update_safety_rule(params = {})
    # @param [Hash] params ({})
    def update_safety_rule(params = {}, options = {})
      req = build_request(:update_safety_rule, params)
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
      context[:gem_name] = 'aws-sdk-route53recoverycontrolconfig'
      context[:gem_version] = '1.18.0'
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
    # | waiter_name             | params                            | :delay   | :max_attempts |
    # | ----------------------- | --------------------------------- | -------- | ------------- |
    # | cluster_created         | {Client#describe_cluster}         | 5        | 26            |
    # | cluster_deleted         | {Client#describe_cluster}         | 5        | 26            |
    # | control_panel_created   | {Client#describe_control_panel}   | 5        | 26            |
    # | control_panel_deleted   | {Client#describe_control_panel}   | 5        | 26            |
    # | routing_control_created | {Client#describe_routing_control} | 5        | 26            |
    # | routing_control_deleted | {Client#describe_routing_control} | 5        | 26            |
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
        cluster_created: Waiters::ClusterCreated,
        cluster_deleted: Waiters::ClusterDeleted,
        control_panel_created: Waiters::ControlPanelCreated,
        control_panel_deleted: Waiters::ControlPanelDeleted,
        routing_control_created: Waiters::RoutingControlCreated,
        routing_control_deleted: Waiters::RoutingControlDeleted
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
