# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'seahorse/client/plugins/content_length'
require 'aws-sdk-core/plugins/credentials_configuration'
require 'aws-sdk-core/plugins/logging'
require 'aws-sdk-core/plugins/param_converter'
require 'aws-sdk-core/plugins/param_validator'
require 'aws-sdk-core/plugins/user_agent'
require 'aws-sdk-core/plugins/helpful_socket_errors'
require 'aws-sdk-core/plugins/retry_errors'
require 'aws-sdk-core/plugins/global_configuration'
require 'aws-sdk-core/plugins/regional_endpoint'
require 'aws-sdk-core/plugins/endpoint_discovery'
require 'aws-sdk-core/plugins/endpoint_pattern'
require 'aws-sdk-core/plugins/response_paging'
require 'aws-sdk-core/plugins/stub_responses'
require 'aws-sdk-core/plugins/idempotency_token'
require 'aws-sdk-core/plugins/invocation_id'
require 'aws-sdk-core/plugins/jsonvalue_converter'
require 'aws-sdk-core/plugins/client_metrics_plugin'
require 'aws-sdk-core/plugins/client_metrics_send_plugin'
require 'aws-sdk-core/plugins/transfer_encoding'
require 'aws-sdk-core/plugins/http_checksum'
require 'aws-sdk-core/plugins/checksum_algorithm'
require 'aws-sdk-core/plugins/request_compression'
require 'aws-sdk-core/plugins/defaults_mode'
require 'aws-sdk-core/plugins/recursion_detection'
require 'aws-sdk-core/plugins/telemetry'
require 'aws-sdk-core/plugins/sign'
require 'aws-sdk-core/plugins/protocols/json_rpc'

module Aws::ARCRegionswitch
  # An API client for ARCRegionswitch.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::ARCRegionswitch::Client.new(
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

    @identifier = :arcregionswitch

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
    add_plugin(Aws::Plugins::InvocationId)
    add_plugin(Aws::Plugins::JsonvalueConverter)
    add_plugin(Aws::Plugins::ClientMetricsPlugin)
    add_plugin(Aws::Plugins::ClientMetricsSendPlugin)
    add_plugin(Aws::Plugins::TransferEncoding)
    add_plugin(Aws::Plugins::HttpChecksum)
    add_plugin(Aws::Plugins::ChecksumAlgorithm)
    add_plugin(Aws::Plugins::RequestCompression)
    add_plugin(Aws::Plugins::DefaultsMode)
    add_plugin(Aws::Plugins::RecursionDetection)
    add_plugin(Aws::Plugins::Telemetry)
    add_plugin(Aws::Plugins::Sign)
    add_plugin(Aws::Plugins::Protocols::JsonRpc)
    add_plugin(Aws::ARCRegionswitch::Plugins::Endpoints)

    # @overload initialize(options)
    #   @param [Hash] options
    #
    #   @option options [Array<Seahorse::Client::Plugin>] :plugins ([]])
    #     A list of plugins to apply to the client. Each plugin is either a
    #     class name or an instance of a plugin class.
    #
    #   @option options [required, Aws::CredentialProvider] :credentials
    #     Your AWS credentials used for authentication. This can be an instance of any one of the
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
    #
    #     * The `:access_key_id`, `:secret_access_key`, `:session_token`, and
    #       `:account_id` options.
    #
    #     * `ENV['AWS_ACCESS_KEY_ID']`, `ENV['AWS_SECRET_ACCESS_KEY']`,
    #       `ENV['AWS_SESSION_TOKEN']`, and `ENV['AWS_ACCOUNT_ID']`.
    #
    #     * `~/.aws/credentials`
    #
    #     * `~/.aws/config`
    #
    #     * EC2/ECS IMDS instance profile - When used by default, the timeouts
    #       are very aggressive. Construct and pass an instance of
    #       `Aws::InstanceProfileCredentials` or `Aws::ECSCredentials` to
    #       enable retries and extended timeouts. Instance profile credential
    #       fetching can be disabled by setting `ENV['AWS_EC2_METADATA_DISABLED']`
    #       to `true`.
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
    #   @option options [String] :account_id
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
    #   @option options [Array<String>] :auth_scheme_preference
    #     A list of preferred authentication schemes to use when making a request. Supported values are:
    #     `sigv4`, `sigv4a`, `httpBearerAuth`, and `noAuth`. When set using `ENV['AWS_AUTH_SCHEME_PREFERENCE']` or in
    #     shared config as `auth_scheme_preference`, the value should be a comma-separated list.
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
    #     When `true`, the SDK will not prepend the modeled host prefix to the endpoint.
    #
    #   @option options [Boolean] :disable_request_compression (false)
    #     When set to 'true' the request body will not be compressed
    #     for supported operations.
    #
    #   @option options [String, URI::HTTPS, URI::HTTP] :endpoint
    #     Normally you should not configure the `:endpoint` option
    #     directly. This is normally constructed from the `:region`
    #     option. Configuring `:endpoint` is normally reserved for
    #     connecting to test or custom endpoints. The endpoint should
    #     be a URI formatted like:
    #
    #         'http://example.com'
    #         'https://example.com'
    #         'http://example.com:123'
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
    #     Used when loading credentials from the shared credentials file at `HOME/.aws/credentials`.
    #     When not specified, 'default' is used.
    #
    #   @option options [String] :request_checksum_calculation ("when_supported")
    #     Determines when a checksum will be calculated for request payloads. Values are:
    #
    #     * `when_supported` - (default) When set, a checksum will be
    #       calculated for all request payloads of operations modeled with the
    #       `httpChecksum` trait where `requestChecksumRequired` is `true` and/or a
    #       `requestAlgorithmMember` is modeled.
    #     * `when_required` - When set, a checksum will only be calculated for
    #       request payloads of operations modeled with the  `httpChecksum` trait where
    #       `requestChecksumRequired` is `true` or where a `requestAlgorithmMember`
    #       is modeled and supplied.
    #
    #   @option options [Integer] :request_min_compression_size_bytes (10240)
    #     The minimum size in bytes that triggers compression for request
    #     bodies. The value must be non-negative integer value between 0
    #     and 10485780 bytes inclusive.
    #
    #   @option options [String] :response_checksum_validation ("when_supported")
    #     Determines when checksum validation will be performed on response payloads. Values are:
    #
    #     * `when_supported` - (default) When set, checksum validation is performed on all
    #       response payloads of operations modeled with the `httpChecksum` trait where
    #       `responseAlgorithms` is modeled, except when no modeled checksum algorithms
    #       are supported.
    #     * `when_required` - When set, checksum validation is not performed on
    #       response payloads of operations unless the checksum algorithm is supported and
    #       the `requestValidationModeMember` member is set to `ENABLED`.
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
    #   @option options [String] :sdk_ua_app_id
    #     A unique and opaque application ID that is appended to the
    #     User-Agent header as app/sdk_ua_app_id. It should have a
    #     maximum length of 50. This variable is sourced from environment
    #     variable AWS_SDK_UA_APP_ID or the shared config profile attribute sdk_ua_app_id.
    #
    #   @option options [String] :secret_access_key
    #
    #   @option options [String] :session_token
    #
    #   @option options [Array] :sigv4a_signing_region_set
    #     A list of regions that should be signed with SigV4a signing. When
    #     not passed, a default `:sigv4a_signing_region_set` is searched for
    #     in the following locations:
    #
    #     * `Aws.config[:sigv4a_signing_region_set]`
    #     * `ENV['AWS_SIGV4A_SIGNING_REGION_SET']`
    #     * `~/.aws/config`
    #
    #   @option options [Boolean] :simple_json (false)
    #     Disables request parameter conversion, validation, and formatting.
    #     Also disables response data type conversions. The request parameters
    #     hash must be formatted exactly as the API expects.This option is useful
    #     when you want to ensure the highest level of performance by avoiding
    #     overhead of walking request parameters and response data structures.
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
    #   @option options [Aws::Telemetry::TelemetryProviderBase] :telemetry_provider (Aws::Telemetry::NoOpTelemetryProvider)
    #     Allows you to provide a telemetry provider, which is used to
    #     emit telemetry data. By default, uses `NoOpTelemetryProvider` which
    #     will not record or emit any telemetry data. The SDK supports the
    #     following telemetry providers:
    #
    #     * OpenTelemetry (OTel) - To use the OTel provider, install and require the
    #     `opentelemetry-sdk` gem and then, pass in an instance of a
    #     `Aws::Telemetry::OTelProvider` for telemetry provider.
    #
    #   @option options [Aws::TokenProvider] :token_provider
    #     Your Bearer token used for authentication. This can be an instance of any one of the
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
    #   @option options [Aws::ARCRegionswitch::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::ARCRegionswitch::EndpointParameters`.
    #
    #   @option options [Float] :http_continue_timeout (1)
    #     The number of seconds to wait for a 100-continue response before sending the
    #     request body.  This option has no effect unless the request has "Expect"
    #     header set to "100-continue".  Defaults to `nil` which  disables this
    #     behaviour.  This value can safely be set per request on the session.
    #
    #   @option options [Float] :http_idle_timeout (5)
    #     The number of seconds a connection is allowed to sit idle before it
    #     is considered stale.  Stale connections are closed and removed from the
    #     pool before making a request.
    #
    #   @option options [Float] :http_open_timeout (15)
    #     The default number of seconds to wait for response data.
    #     This value can safely be set per-request on the session.
    #
    #   @option options [URI::HTTP,String] :http_proxy
    #     A proxy to send requests through.  Formatted like 'http://proxy.com:123'.
    #
    #   @option options [Float] :http_read_timeout (60)
    #     The default number of seconds to wait for response data.
    #     This value can safely be set per-request on the session.
    #
    #   @option options [Boolean] :http_wire_trace (false)
    #     When `true`,  HTTP debug output will be sent to the `:logger`.
    #
    #   @option options [Proc] :on_chunk_received
    #     When a Proc object is provided, it will be used as callback when each chunk
    #     of the response body is received. It provides three arguments: the chunk,
    #     the number of bytes received, and the total number of
    #     bytes in the response (or nil if the server did not send a `content-length`).
    #
    #   @option options [Proc] :on_chunk_sent
    #     When a Proc object is provided, it will be used as callback when each chunk
    #     of the request body is sent. It provides three arguments: the chunk,
    #     the number of bytes read from the body, and the total number of
    #     bytes in the body.
    #
    #   @option options [Boolean] :raise_response_errors (true)
    #     When `true`, response errors are raised.
    #
    #   @option options [String] :ssl_ca_bundle
    #     Full path to the SSL certificate authority bundle file that should be used when
    #     verifying peer certificates.  If you do not pass `:ssl_ca_bundle` or
    #     `:ssl_ca_directory` the the system default will be used if available.
    #
    #   @option options [String] :ssl_ca_directory
    #     Full path of the directory that contains the unbundled SSL certificate
    #     authority files for verifying peer certificates.  If you do
    #     not pass `:ssl_ca_bundle` or `:ssl_ca_directory` the the system
    #     default will be used if available.
    #
    #   @option options [String] :ssl_ca_store
    #     Sets the X509::Store to verify peer certificate.
    #
    #   @option options [OpenSSL::X509::Certificate] :ssl_cert
    #     Sets a client certificate when creating http connections.
    #
    #   @option options [OpenSSL::PKey] :ssl_key
    #     Sets a client key when creating http connections.
    #
    #   @option options [Float] :ssl_timeout
    #     Sets the SSL timeout in seconds
    #
    #   @option options [Boolean] :ssl_verify_peer (true)
    #     When `true`, SSL peer certificates are verified when establishing a connection.
    #
    def initialize(*args)
      super
    end

    # @!group API Operations

    # Approves a step in a plan execution that requires manual approval.
    # When you create a plan, you can include approval steps that require
    # manual intervention before the execution can proceed. This operation
    # allows you to provide that approval.
    #
    # You must specify the plan ARN, execution ID, step name, and approval
    # status. You can also provide an optional comment explaining the
    # approval decision.
    #
    # @option params [required, String] :plan_arn
    #   The Amazon Resource Name (ARN) of the plan.
    #
    # @option params [required, String] :execution_id
    #   The execution identifier of a plan execution.
    #
    # @option params [required, String] :step_name
    #   The name of a step in a plan execution.
    #
    # @option params [required, String] :approval
    #   The status of approval for a plan execution step.
    #
    # @option params [String] :comment
    #   A comment that you can enter about a plan execution.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.approve_plan_execution_step({
    #     plan_arn: "PlanArn", # required
    #     execution_id: "ExecutionId", # required
    #     step_name: "StepName", # required
    #     approval: "approve", # required, accepts approve, decline
    #     comment: "ExecutionComment",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/arc-region-switch-2022-07-26/ApprovePlanExecutionStep AWS API Documentation
    #
    # @overload approve_plan_execution_step(params = {})
    # @param [Hash] params ({})
    def approve_plan_execution_step(params = {}, options = {})
      req = build_request(:approve_plan_execution_step, params)
      req.send_request(options)
    end

    # Cancels an in-progress plan execution. This operation stops the
    # execution of the plan and prevents any further steps from being
    # processed.
    #
    # You must specify the plan ARN and execution ID. You can also provide
    # an optional comment explaining why the execution was canceled.
    #
    # @option params [required, String] :plan_arn
    #   The Amazon Resource Name (ARN) of the plan.
    #
    # @option params [required, String] :execution_id
    #   The execution identifier of a plan execution.
    #
    # @option params [String] :comment
    #   A comment that you can enter about canceling a plan execution step.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_plan_execution({
    #     plan_arn: "PlanArn", # required
    #     execution_id: "ExecutionId", # required
    #     comment: "ExecutionComment",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/arc-region-switch-2022-07-26/CancelPlanExecution AWS API Documentation
    #
    # @overload cancel_plan_execution(params = {})
    # @param [Hash] params ({})
    def cancel_plan_execution(params = {}, options = {})
      req = build_request(:cancel_plan_execution, params)
      req.send_request(options)
    end

    # Creates a new Region switch plan. A plan defines the steps required to
    # shift traffic from one Amazon Web Services Region to another.
    #
    # You must specify a name for the plan, the primary Region, and at least
    # one additional Region. You can also provide a description, execution
    # role, recovery time objective, associated alarms, triggers, and
    # workflows that define the steps to execute during a Region switch.
    #
    # @option params [String] :description
    #   The description of a Region switch plan.
    #
    # @option params [required, Array<Types::Workflow>] :workflows
    #   An array of workflows included in a Region switch plan.
    #
    # @option params [required, String] :execution_role
    #   An execution role is a way to categorize a Region switch plan.
    #
    # @option params [Integer] :recovery_time_objective_minutes
    #   Optionally, you can specify an recovery time objective for a Region
    #   switch plan, in minutes.
    #
    # @option params [Hash<String,Types::AssociatedAlarm>] :associated_alarms
    #   The alarms associated with a Region switch plan.
    #
    # @option params [Array<Types::Trigger>] :triggers
    #   The triggers associated with a Region switch plan.
    #
    # @option params [required, String] :name
    #   The name of a Region switch plan.
    #
    # @option params [required, Array<String>] :regions
    #   An array that specifies the Amazon Web Services Regions for a Region
    #   switch plan. Specify two Regions.
    #
    # @option params [required, String] :recovery_approach
    #   The recovery approach for a Region switch plan, which can be
    #   active/active (activeActive) or active/passive (activePassive).
    #
    # @option params [String] :primary_region
    #   The primary Amazon Web Services Region for the application. This is
    #   the Region where the application normally runs before any Region
    #   switch occurs.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags to apply to the Region switch plan.
    #
    # @return [Types::CreatePlanResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreatePlanResponse#plan #plan} => Types::Plan
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_plan({
    #     description: "String",
    #     workflows: [ # required
    #       {
    #         steps: [
    #           {
    #             name: "StepName", # required
    #             description: "String",
    #             execution_block_configuration: { # required
    #               custom_action_lambda_config: {
    #                 timeout_minutes: 1,
    #                 lambdas: [ # required
    #                   {
    #                     cross_account_role: "IamRoleArn",
    #                     external_id: "String",
    #                     arn: "LambdaArn",
    #                   },
    #                 ],
    #                 retry_interval_minutes: 1.0, # required
    #                 region_to_run: "activatingRegion", # required, accepts activatingRegion, deactivatingRegion
    #                 ungraceful: {
    #                   behavior: "skip", # accepts skip
    #                 },
    #               },
    #               ec2_asg_capacity_increase_config: {
    #                 timeout_minutes: 1,
    #                 asgs: [ # required
    #                   {
    #                     cross_account_role: "IamRoleArn",
    #                     external_id: "String",
    #                     arn: "AsgArn",
    #                   },
    #                 ],
    #                 ungraceful: {
    #                   minimum_success_percentage: 1, # required
    #                 },
    #                 target_percent: 1,
    #                 capacity_monitoring_approach: "sampledMaxInLast24Hours", # accepts sampledMaxInLast24Hours, autoscalingMaxInLast24Hours
    #               },
    #               execution_approval_config: {
    #                 timeout_minutes: 1,
    #                 approval_role: "RoleArn", # required
    #               },
    #               arc_routing_control_config: {
    #                 timeout_minutes: 1,
    #                 cross_account_role: "IamRoleArn",
    #                 external_id: "String",
    #                 region_and_routing_controls: { # required
    #                   "String" => [
    #                     {
    #                       routing_control_arn: "RoutingControlArn", # required
    #                       state: "On", # required, accepts On, Off
    #                     },
    #                   ],
    #                 },
    #               },
    #               global_aurora_config: {
    #                 timeout_minutes: 1,
    #                 cross_account_role: "IamRoleArn",
    #                 external_id: "String",
    #                 behavior: "switchoverOnly", # required, accepts switchoverOnly, failover
    #                 ungraceful: {
    #                   ungraceful: "failover", # accepts failover
    #                 },
    #                 global_cluster_identifier: "GlobalClusterIdentifier", # required
    #                 database_cluster_arns: ["AuroraClusterArn"], # required
    #               },
    #               parallel_config: {
    #                 steps: { # required
    #                   # recursive Steps
    #                 },
    #               },
    #               region_switch_plan_config: {
    #                 cross_account_role: "IamRoleArn",
    #                 external_id: "String",
    #                 arn: "PlanArn", # required
    #               },
    #               ecs_capacity_increase_config: {
    #                 timeout_minutes: 1,
    #                 services: [ # required
    #                   {
    #                     cross_account_role: "IamRoleArn",
    #                     external_id: "String",
    #                     cluster_arn: "EcsClusterArn",
    #                     service_arn: "EcsServiceArn",
    #                   },
    #                 ],
    #                 ungraceful: {
    #                   minimum_success_percentage: 1, # required
    #                 },
    #                 target_percent: 1,
    #                 capacity_monitoring_approach: "sampledMaxInLast24Hours", # accepts sampledMaxInLast24Hours, containerInsightsMaxInLast24Hours
    #               },
    #               eks_resource_scaling_config: {
    #                 timeout_minutes: 1,
    #                 kubernetes_resource_type: { # required
    #                   api_version: "String", # required
    #                   kind: "String", # required
    #                 },
    #                 scaling_resources: [
    #                   {
    #                     "String" => {
    #                       "Region" => {
    #                         namespace: "KubernetesNamespace", # required
    #                         name: "String", # required
    #                         hpa_name: "String",
    #                       },
    #                     },
    #                   },
    #                 ],
    #                 eks_clusters: [
    #                   {
    #                     cross_account_role: "IamRoleArn",
    #                     external_id: "String",
    #                     cluster_arn: "EksClusterArn", # required
    #                   },
    #                 ],
    #                 ungraceful: {
    #                   minimum_success_percentage: 1, # required
    #                 },
    #                 target_percent: 1,
    #                 capacity_monitoring_approach: "sampledMaxInLast24Hours", # accepts sampledMaxInLast24Hours
    #               },
    #               route53_health_check_config: {
    #                 timeout_minutes: 1,
    #                 cross_account_role: "IamRoleArn",
    #                 external_id: "String",
    #                 hosted_zone_id: "Route53HostedZoneId", # required
    #                 record_name: "Route53RecordName", # required
    #                 record_sets: [
    #                   {
    #                     record_set_identifier: "Route53ResourceRecordSetIdentifier",
    #                     region: "Region",
    #                   },
    #                 ],
    #               },
    #             },
    #             execution_block_type: "CustomActionLambda", # required, accepts CustomActionLambda, ManualApproval, AuroraGlobalDatabase, EC2AutoScaling, ARCRoutingControl, ARCRegionSwitchPlan, Parallel, ECSServiceScaling, EKSResourceScaling, Route53HealthCheck
    #           },
    #         ],
    #         workflow_target_action: "activate", # required, accepts activate, deactivate
    #         workflow_target_region: "Region",
    #         workflow_description: "String",
    #       },
    #     ],
    #     execution_role: "IamRoleArn", # required
    #     recovery_time_objective_minutes: 1,
    #     associated_alarms: {
    #       "String" => {
    #         cross_account_role: "IamRoleArn",
    #         external_id: "String",
    #         resource_identifier: "String", # required
    #         alarm_type: "applicationHealth", # required, accepts applicationHealth, trigger
    #       },
    #     },
    #     triggers: [
    #       {
    #         description: "String",
    #         target_region: "Region", # required
    #         action: "activate", # required, accepts activate, deactivate
    #         conditions: [ # required
    #           {
    #             associated_alarm_name: "String", # required
    #             condition: "red", # required, accepts red, green
    #           },
    #         ],
    #         min_delay_minutes_between_executions: 1, # required
    #       },
    #     ],
    #     name: "PlanName", # required
    #     regions: ["Region"], # required
    #     recovery_approach: "activeActive", # required, accepts activeActive, activePassive
    #     primary_region: "Region",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.plan.arn #=> String
    #   resp.plan.description #=> String
    #   resp.plan.workflows #=> Array
    #   resp.plan.workflows[0].steps #=> Array
    #   resp.plan.workflows[0].steps[0].name #=> String
    #   resp.plan.workflows[0].steps[0].description #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.custom_action_lambda_config.timeout_minutes #=> Integer
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.custom_action_lambda_config.lambdas #=> Array
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.custom_action_lambda_config.lambdas[0].cross_account_role #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.custom_action_lambda_config.lambdas[0].external_id #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.custom_action_lambda_config.lambdas[0].arn #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.custom_action_lambda_config.retry_interval_minutes #=> Float
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.custom_action_lambda_config.region_to_run #=> String, one of "activatingRegion", "deactivatingRegion"
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.custom_action_lambda_config.ungraceful.behavior #=> String, one of "skip"
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.ec2_asg_capacity_increase_config.timeout_minutes #=> Integer
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.ec2_asg_capacity_increase_config.asgs #=> Array
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.ec2_asg_capacity_increase_config.asgs[0].cross_account_role #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.ec2_asg_capacity_increase_config.asgs[0].external_id #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.ec2_asg_capacity_increase_config.asgs[0].arn #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.ec2_asg_capacity_increase_config.ungraceful.minimum_success_percentage #=> Integer
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.ec2_asg_capacity_increase_config.target_percent #=> Integer
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.ec2_asg_capacity_increase_config.capacity_monitoring_approach #=> String, one of "sampledMaxInLast24Hours", "autoscalingMaxInLast24Hours"
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.execution_approval_config.timeout_minutes #=> Integer
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.execution_approval_config.approval_role #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.arc_routing_control_config.timeout_minutes #=> Integer
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.arc_routing_control_config.cross_account_role #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.arc_routing_control_config.external_id #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.arc_routing_control_config.region_and_routing_controls #=> Hash
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.arc_routing_control_config.region_and_routing_controls["String"] #=> Array
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.arc_routing_control_config.region_and_routing_controls["String"][0].routing_control_arn #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.arc_routing_control_config.region_and_routing_controls["String"][0].state #=> String, one of "On", "Off"
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.global_aurora_config.timeout_minutes #=> Integer
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.global_aurora_config.cross_account_role #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.global_aurora_config.external_id #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.global_aurora_config.behavior #=> String, one of "switchoverOnly", "failover"
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.global_aurora_config.ungraceful.ungraceful #=> String, one of "failover"
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.global_aurora_config.global_cluster_identifier #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.global_aurora_config.database_cluster_arns #=> Array
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.global_aurora_config.database_cluster_arns[0] #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.parallel_config.steps #=> Types::Steps
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.region_switch_plan_config.cross_account_role #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.region_switch_plan_config.external_id #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.region_switch_plan_config.arn #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.ecs_capacity_increase_config.timeout_minutes #=> Integer
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.ecs_capacity_increase_config.services #=> Array
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.ecs_capacity_increase_config.services[0].cross_account_role #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.ecs_capacity_increase_config.services[0].external_id #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.ecs_capacity_increase_config.services[0].cluster_arn #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.ecs_capacity_increase_config.services[0].service_arn #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.ecs_capacity_increase_config.ungraceful.minimum_success_percentage #=> Integer
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.ecs_capacity_increase_config.target_percent #=> Integer
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.ecs_capacity_increase_config.capacity_monitoring_approach #=> String, one of "sampledMaxInLast24Hours", "containerInsightsMaxInLast24Hours"
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.eks_resource_scaling_config.timeout_minutes #=> Integer
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.eks_resource_scaling_config.kubernetes_resource_type.api_version #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.eks_resource_scaling_config.kubernetes_resource_type.kind #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.eks_resource_scaling_config.scaling_resources #=> Array
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.eks_resource_scaling_config.scaling_resources[0] #=> Hash
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.eks_resource_scaling_config.scaling_resources[0]["String"] #=> Hash
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.eks_resource_scaling_config.scaling_resources[0]["String"]["Region"].namespace #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.eks_resource_scaling_config.scaling_resources[0]["String"]["Region"].name #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.eks_resource_scaling_config.scaling_resources[0]["String"]["Region"].hpa_name #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.eks_resource_scaling_config.eks_clusters #=> Array
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.eks_resource_scaling_config.eks_clusters[0].cross_account_role #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.eks_resource_scaling_config.eks_clusters[0].external_id #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.eks_resource_scaling_config.eks_clusters[0].cluster_arn #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.eks_resource_scaling_config.ungraceful.minimum_success_percentage #=> Integer
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.eks_resource_scaling_config.target_percent #=> Integer
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.eks_resource_scaling_config.capacity_monitoring_approach #=> String, one of "sampledMaxInLast24Hours"
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.route53_health_check_config.timeout_minutes #=> Integer
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.route53_health_check_config.cross_account_role #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.route53_health_check_config.external_id #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.route53_health_check_config.hosted_zone_id #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.route53_health_check_config.record_name #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.route53_health_check_config.record_sets #=> Array
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.route53_health_check_config.record_sets[0].record_set_identifier #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.route53_health_check_config.record_sets[0].region #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_type #=> String, one of "CustomActionLambda", "ManualApproval", "AuroraGlobalDatabase", "EC2AutoScaling", "ARCRoutingControl", "ARCRegionSwitchPlan", "Parallel", "ECSServiceScaling", "EKSResourceScaling", "Route53HealthCheck"
    #   resp.plan.workflows[0].workflow_target_action #=> String, one of "activate", "deactivate"
    #   resp.plan.workflows[0].workflow_target_region #=> String
    #   resp.plan.workflows[0].workflow_description #=> String
    #   resp.plan.execution_role #=> String
    #   resp.plan.recovery_time_objective_minutes #=> Integer
    #   resp.plan.associated_alarms #=> Hash
    #   resp.plan.associated_alarms["String"].cross_account_role #=> String
    #   resp.plan.associated_alarms["String"].external_id #=> String
    #   resp.plan.associated_alarms["String"].resource_identifier #=> String
    #   resp.plan.associated_alarms["String"].alarm_type #=> String, one of "applicationHealth", "trigger"
    #   resp.plan.triggers #=> Array
    #   resp.plan.triggers[0].description #=> String
    #   resp.plan.triggers[0].target_region #=> String
    #   resp.plan.triggers[0].action #=> String, one of "activate", "deactivate"
    #   resp.plan.triggers[0].conditions #=> Array
    #   resp.plan.triggers[0].conditions[0].associated_alarm_name #=> String
    #   resp.plan.triggers[0].conditions[0].condition #=> String, one of "red", "green"
    #   resp.plan.triggers[0].min_delay_minutes_between_executions #=> Integer
    #   resp.plan.name #=> String
    #   resp.plan.regions #=> Array
    #   resp.plan.regions[0] #=> String
    #   resp.plan.recovery_approach #=> String, one of "activeActive", "activePassive"
    #   resp.plan.primary_region #=> String
    #   resp.plan.owner #=> String
    #   resp.plan.version #=> String
    #   resp.plan.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/arc-region-switch-2022-07-26/CreatePlan AWS API Documentation
    #
    # @overload create_plan(params = {})
    # @param [Hash] params ({})
    def create_plan(params = {}, options = {})
      req = build_request(:create_plan, params)
      req.send_request(options)
    end

    # Deletes a Region switch plan. You must specify the ARN of the plan to
    # delete.
    #
    # You cannot delete a plan that has an active execution in progress.
    #
    # @option params [required, String] :arn
    #   The Amazon Resource Name (ARN) of the plan.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_plan({
    #     arn: "PlanArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/arc-region-switch-2022-07-26/DeletePlan AWS API Documentation
    #
    # @overload delete_plan(params = {})
    # @param [Hash] params ({})
    def delete_plan(params = {}, options = {})
      req = build_request(:delete_plan, params)
      req.send_request(options)
    end

    # Retrieves detailed information about a Region switch plan. You must
    # specify the ARN of the plan.
    #
    # @option params [required, String] :arn
    #   The Amazon Resource Name (ARN) of the plan.
    #
    # @return [Types::GetPlanResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetPlanResponse#plan #plan} => Types::Plan
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_plan({
    #     arn: "PlanArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.plan.arn #=> String
    #   resp.plan.description #=> String
    #   resp.plan.workflows #=> Array
    #   resp.plan.workflows[0].steps #=> Array
    #   resp.plan.workflows[0].steps[0].name #=> String
    #   resp.plan.workflows[0].steps[0].description #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.custom_action_lambda_config.timeout_minutes #=> Integer
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.custom_action_lambda_config.lambdas #=> Array
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.custom_action_lambda_config.lambdas[0].cross_account_role #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.custom_action_lambda_config.lambdas[0].external_id #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.custom_action_lambda_config.lambdas[0].arn #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.custom_action_lambda_config.retry_interval_minutes #=> Float
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.custom_action_lambda_config.region_to_run #=> String, one of "activatingRegion", "deactivatingRegion"
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.custom_action_lambda_config.ungraceful.behavior #=> String, one of "skip"
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.ec2_asg_capacity_increase_config.timeout_minutes #=> Integer
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.ec2_asg_capacity_increase_config.asgs #=> Array
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.ec2_asg_capacity_increase_config.asgs[0].cross_account_role #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.ec2_asg_capacity_increase_config.asgs[0].external_id #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.ec2_asg_capacity_increase_config.asgs[0].arn #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.ec2_asg_capacity_increase_config.ungraceful.minimum_success_percentage #=> Integer
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.ec2_asg_capacity_increase_config.target_percent #=> Integer
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.ec2_asg_capacity_increase_config.capacity_monitoring_approach #=> String, one of "sampledMaxInLast24Hours", "autoscalingMaxInLast24Hours"
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.execution_approval_config.timeout_minutes #=> Integer
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.execution_approval_config.approval_role #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.arc_routing_control_config.timeout_minutes #=> Integer
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.arc_routing_control_config.cross_account_role #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.arc_routing_control_config.external_id #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.arc_routing_control_config.region_and_routing_controls #=> Hash
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.arc_routing_control_config.region_and_routing_controls["String"] #=> Array
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.arc_routing_control_config.region_and_routing_controls["String"][0].routing_control_arn #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.arc_routing_control_config.region_and_routing_controls["String"][0].state #=> String, one of "On", "Off"
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.global_aurora_config.timeout_minutes #=> Integer
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.global_aurora_config.cross_account_role #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.global_aurora_config.external_id #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.global_aurora_config.behavior #=> String, one of "switchoverOnly", "failover"
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.global_aurora_config.ungraceful.ungraceful #=> String, one of "failover"
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.global_aurora_config.global_cluster_identifier #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.global_aurora_config.database_cluster_arns #=> Array
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.global_aurora_config.database_cluster_arns[0] #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.parallel_config.steps #=> Types::Steps
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.region_switch_plan_config.cross_account_role #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.region_switch_plan_config.external_id #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.region_switch_plan_config.arn #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.ecs_capacity_increase_config.timeout_minutes #=> Integer
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.ecs_capacity_increase_config.services #=> Array
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.ecs_capacity_increase_config.services[0].cross_account_role #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.ecs_capacity_increase_config.services[0].external_id #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.ecs_capacity_increase_config.services[0].cluster_arn #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.ecs_capacity_increase_config.services[0].service_arn #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.ecs_capacity_increase_config.ungraceful.minimum_success_percentage #=> Integer
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.ecs_capacity_increase_config.target_percent #=> Integer
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.ecs_capacity_increase_config.capacity_monitoring_approach #=> String, one of "sampledMaxInLast24Hours", "containerInsightsMaxInLast24Hours"
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.eks_resource_scaling_config.timeout_minutes #=> Integer
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.eks_resource_scaling_config.kubernetes_resource_type.api_version #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.eks_resource_scaling_config.kubernetes_resource_type.kind #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.eks_resource_scaling_config.scaling_resources #=> Array
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.eks_resource_scaling_config.scaling_resources[0] #=> Hash
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.eks_resource_scaling_config.scaling_resources[0]["String"] #=> Hash
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.eks_resource_scaling_config.scaling_resources[0]["String"]["Region"].namespace #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.eks_resource_scaling_config.scaling_resources[0]["String"]["Region"].name #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.eks_resource_scaling_config.scaling_resources[0]["String"]["Region"].hpa_name #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.eks_resource_scaling_config.eks_clusters #=> Array
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.eks_resource_scaling_config.eks_clusters[0].cross_account_role #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.eks_resource_scaling_config.eks_clusters[0].external_id #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.eks_resource_scaling_config.eks_clusters[0].cluster_arn #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.eks_resource_scaling_config.ungraceful.minimum_success_percentage #=> Integer
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.eks_resource_scaling_config.target_percent #=> Integer
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.eks_resource_scaling_config.capacity_monitoring_approach #=> String, one of "sampledMaxInLast24Hours"
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.route53_health_check_config.timeout_minutes #=> Integer
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.route53_health_check_config.cross_account_role #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.route53_health_check_config.external_id #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.route53_health_check_config.hosted_zone_id #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.route53_health_check_config.record_name #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.route53_health_check_config.record_sets #=> Array
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.route53_health_check_config.record_sets[0].record_set_identifier #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.route53_health_check_config.record_sets[0].region #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_type #=> String, one of "CustomActionLambda", "ManualApproval", "AuroraGlobalDatabase", "EC2AutoScaling", "ARCRoutingControl", "ARCRegionSwitchPlan", "Parallel", "ECSServiceScaling", "EKSResourceScaling", "Route53HealthCheck"
    #   resp.plan.workflows[0].workflow_target_action #=> String, one of "activate", "deactivate"
    #   resp.plan.workflows[0].workflow_target_region #=> String
    #   resp.plan.workflows[0].workflow_description #=> String
    #   resp.plan.execution_role #=> String
    #   resp.plan.recovery_time_objective_minutes #=> Integer
    #   resp.plan.associated_alarms #=> Hash
    #   resp.plan.associated_alarms["String"].cross_account_role #=> String
    #   resp.plan.associated_alarms["String"].external_id #=> String
    #   resp.plan.associated_alarms["String"].resource_identifier #=> String
    #   resp.plan.associated_alarms["String"].alarm_type #=> String, one of "applicationHealth", "trigger"
    #   resp.plan.triggers #=> Array
    #   resp.plan.triggers[0].description #=> String
    #   resp.plan.triggers[0].target_region #=> String
    #   resp.plan.triggers[0].action #=> String, one of "activate", "deactivate"
    #   resp.plan.triggers[0].conditions #=> Array
    #   resp.plan.triggers[0].conditions[0].associated_alarm_name #=> String
    #   resp.plan.triggers[0].conditions[0].condition #=> String, one of "red", "green"
    #   resp.plan.triggers[0].min_delay_minutes_between_executions #=> Integer
    #   resp.plan.name #=> String
    #   resp.plan.regions #=> Array
    #   resp.plan.regions[0] #=> String
    #   resp.plan.recovery_approach #=> String, one of "activeActive", "activePassive"
    #   resp.plan.primary_region #=> String
    #   resp.plan.owner #=> String
    #   resp.plan.version #=> String
    #   resp.plan.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/arc-region-switch-2022-07-26/GetPlan AWS API Documentation
    #
    # @overload get_plan(params = {})
    # @param [Hash] params ({})
    def get_plan(params = {}, options = {})
      req = build_request(:get_plan, params)
      req.send_request(options)
    end

    # Retrieves the evaluation status of a Region switch plan. The
    # evaluation status provides information about the last time the plan
    # was evaluated and any warnings or issues detected.
    #
    # @option params [required, String] :plan_arn
    #   The Amazon Resource Name (ARN) of the Region switch plan to retrieve
    #   evaluation status for.
    #
    # @option params [Integer] :max_results
    #   The number of objects that you want to return with this call.
    #
    # @option params [String] :next_token
    #   Specifies that you want to receive the next page of results. Valid
    #   only if you received a `nextToken` response in the previous request.
    #   If you did, it indicates that more output is available. Set this
    #   parameter to the value provided by the previous call's `nextToken`
    #   response to request the next page of results.
    #
    # @return [Types::GetPlanEvaluationStatusResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetPlanEvaluationStatusResponse#plan_arn #plan_arn} => String
    #   * {Types::GetPlanEvaluationStatusResponse#last_evaluation_time #last_evaluation_time} => Time
    #   * {Types::GetPlanEvaluationStatusResponse#last_evaluated_version #last_evaluated_version} => String
    #   * {Types::GetPlanEvaluationStatusResponse#region #region} => String
    #   * {Types::GetPlanEvaluationStatusResponse#evaluation_state #evaluation_state} => String
    #   * {Types::GetPlanEvaluationStatusResponse#warnings #warnings} => Array&lt;Types::ResourceWarning&gt;
    #   * {Types::GetPlanEvaluationStatusResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_plan_evaluation_status({
    #     plan_arn: "PlanArn", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.plan_arn #=> String
    #   resp.last_evaluation_time #=> Time
    #   resp.last_evaluated_version #=> String
    #   resp.region #=> String
    #   resp.evaluation_state #=> String, one of "passed", "actionRequired", "pendingEvaluation", "unknown"
    #   resp.warnings #=> Array
    #   resp.warnings[0].workflow.action #=> String, one of "activate", "deactivate"
    #   resp.warnings[0].workflow.name #=> String
    #   resp.warnings[0].version #=> String
    #   resp.warnings[0].step_name #=> String
    #   resp.warnings[0].resource_arn #=> String
    #   resp.warnings[0].warning_status #=> String, one of "active", "resolved"
    #   resp.warnings[0].warning_updated_time #=> Time
    #   resp.warnings[0].warning_message #=> String
    #   resp.next_token #=> String
    #
    #
    # The following waiters are defined for this operation (see {Client#wait_until} for detailed usage):
    #
    #   * plan_evaluation_status_passed
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/arc-region-switch-2022-07-26/GetPlanEvaluationStatus AWS API Documentation
    #
    # @overload get_plan_evaluation_status(params = {})
    # @param [Hash] params ({})
    def get_plan_evaluation_status(params = {}, options = {})
      req = build_request(:get_plan_evaluation_status, params)
      req.send_request(options)
    end

    # Retrieves detailed information about a specific plan execution. You
    # must specify the plan ARN and execution ID.
    #
    # @option params [required, String] :plan_arn
    #   The Amazon Resource Name (ARN) of the plan with the execution to
    #   retrieve.
    #
    # @option params [required, String] :execution_id
    #   The execution identifier of a plan execution.
    #
    # @option params [Integer] :max_results
    #   The number of objects that you want to return with this call.
    #
    # @option params [String] :next_token
    #   Specifies that you want to receive the next page of results. Valid
    #   only if you received a `nextToken` response in the previous request.
    #   If you did, it indicates that more output is available. Set this
    #   parameter to the value provided by the previous call's `nextToken`
    #   response to request the next page of results.
    #
    # @return [Types::GetPlanExecutionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetPlanExecutionResponse#plan_arn #plan_arn} => String
    #   * {Types::GetPlanExecutionResponse#execution_id #execution_id} => String
    #   * {Types::GetPlanExecutionResponse#version #version} => String
    #   * {Types::GetPlanExecutionResponse#updated_at #updated_at} => Time
    #   * {Types::GetPlanExecutionResponse#comment #comment} => String
    #   * {Types::GetPlanExecutionResponse#start_time #start_time} => Time
    #   * {Types::GetPlanExecutionResponse#end_time #end_time} => Time
    #   * {Types::GetPlanExecutionResponse#mode #mode} => String
    #   * {Types::GetPlanExecutionResponse#execution_state #execution_state} => String
    #   * {Types::GetPlanExecutionResponse#execution_action #execution_action} => String
    #   * {Types::GetPlanExecutionResponse#execution_region #execution_region} => String
    #   * {Types::GetPlanExecutionResponse#step_states #step_states} => Array&lt;Types::StepState&gt;
    #   * {Types::GetPlanExecutionResponse#plan #plan} => Types::Plan
    #   * {Types::GetPlanExecutionResponse#actual_recovery_time #actual_recovery_time} => String
    #   * {Types::GetPlanExecutionResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_plan_execution({
    #     plan_arn: "PlanArn", # required
    #     execution_id: "ExecutionId", # required
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.plan_arn #=> String
    #   resp.execution_id #=> String
    #   resp.version #=> String
    #   resp.updated_at #=> Time
    #   resp.comment #=> String
    #   resp.start_time #=> Time
    #   resp.end_time #=> Time
    #   resp.mode #=> String, one of "graceful", "ungraceful"
    #   resp.execution_state #=> String, one of "inProgress", "pausedByFailedStep", "pausedByOperator", "completed", "completedWithExceptions", "canceled", "planExecutionTimedOut", "pendingManualApproval", "failed", "pending", "completedMonitoringApplicationHealth"
    #   resp.execution_action #=> String, one of "activate", "deactivate"
    #   resp.execution_region #=> String
    #   resp.step_states #=> Array
    #   resp.step_states[0].name #=> String
    #   resp.step_states[0].status #=> String, one of "notStarted", "running", "failed", "completed", "canceled", "skipped", "pendingApproval"
    #   resp.step_states[0].start_time #=> Time
    #   resp.step_states[0].end_time #=> Time
    #   resp.step_states[0].step_mode #=> String, one of "graceful", "ungraceful"
    #   resp.plan.arn #=> String
    #   resp.plan.description #=> String
    #   resp.plan.workflows #=> Array
    #   resp.plan.workflows[0].steps #=> Array
    #   resp.plan.workflows[0].steps[0].name #=> String
    #   resp.plan.workflows[0].steps[0].description #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.custom_action_lambda_config.timeout_minutes #=> Integer
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.custom_action_lambda_config.lambdas #=> Array
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.custom_action_lambda_config.lambdas[0].cross_account_role #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.custom_action_lambda_config.lambdas[0].external_id #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.custom_action_lambda_config.lambdas[0].arn #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.custom_action_lambda_config.retry_interval_minutes #=> Float
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.custom_action_lambda_config.region_to_run #=> String, one of "activatingRegion", "deactivatingRegion"
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.custom_action_lambda_config.ungraceful.behavior #=> String, one of "skip"
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.ec2_asg_capacity_increase_config.timeout_minutes #=> Integer
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.ec2_asg_capacity_increase_config.asgs #=> Array
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.ec2_asg_capacity_increase_config.asgs[0].cross_account_role #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.ec2_asg_capacity_increase_config.asgs[0].external_id #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.ec2_asg_capacity_increase_config.asgs[0].arn #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.ec2_asg_capacity_increase_config.ungraceful.minimum_success_percentage #=> Integer
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.ec2_asg_capacity_increase_config.target_percent #=> Integer
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.ec2_asg_capacity_increase_config.capacity_monitoring_approach #=> String, one of "sampledMaxInLast24Hours", "autoscalingMaxInLast24Hours"
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.execution_approval_config.timeout_minutes #=> Integer
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.execution_approval_config.approval_role #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.arc_routing_control_config.timeout_minutes #=> Integer
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.arc_routing_control_config.cross_account_role #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.arc_routing_control_config.external_id #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.arc_routing_control_config.region_and_routing_controls #=> Hash
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.arc_routing_control_config.region_and_routing_controls["String"] #=> Array
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.arc_routing_control_config.region_and_routing_controls["String"][0].routing_control_arn #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.arc_routing_control_config.region_and_routing_controls["String"][0].state #=> String, one of "On", "Off"
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.global_aurora_config.timeout_minutes #=> Integer
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.global_aurora_config.cross_account_role #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.global_aurora_config.external_id #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.global_aurora_config.behavior #=> String, one of "switchoverOnly", "failover"
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.global_aurora_config.ungraceful.ungraceful #=> String, one of "failover"
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.global_aurora_config.global_cluster_identifier #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.global_aurora_config.database_cluster_arns #=> Array
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.global_aurora_config.database_cluster_arns[0] #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.parallel_config.steps #=> Types::Steps
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.region_switch_plan_config.cross_account_role #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.region_switch_plan_config.external_id #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.region_switch_plan_config.arn #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.ecs_capacity_increase_config.timeout_minutes #=> Integer
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.ecs_capacity_increase_config.services #=> Array
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.ecs_capacity_increase_config.services[0].cross_account_role #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.ecs_capacity_increase_config.services[0].external_id #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.ecs_capacity_increase_config.services[0].cluster_arn #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.ecs_capacity_increase_config.services[0].service_arn #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.ecs_capacity_increase_config.ungraceful.minimum_success_percentage #=> Integer
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.ecs_capacity_increase_config.target_percent #=> Integer
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.ecs_capacity_increase_config.capacity_monitoring_approach #=> String, one of "sampledMaxInLast24Hours", "containerInsightsMaxInLast24Hours"
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.eks_resource_scaling_config.timeout_minutes #=> Integer
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.eks_resource_scaling_config.kubernetes_resource_type.api_version #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.eks_resource_scaling_config.kubernetes_resource_type.kind #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.eks_resource_scaling_config.scaling_resources #=> Array
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.eks_resource_scaling_config.scaling_resources[0] #=> Hash
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.eks_resource_scaling_config.scaling_resources[0]["String"] #=> Hash
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.eks_resource_scaling_config.scaling_resources[0]["String"]["Region"].namespace #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.eks_resource_scaling_config.scaling_resources[0]["String"]["Region"].name #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.eks_resource_scaling_config.scaling_resources[0]["String"]["Region"].hpa_name #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.eks_resource_scaling_config.eks_clusters #=> Array
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.eks_resource_scaling_config.eks_clusters[0].cross_account_role #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.eks_resource_scaling_config.eks_clusters[0].external_id #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.eks_resource_scaling_config.eks_clusters[0].cluster_arn #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.eks_resource_scaling_config.ungraceful.minimum_success_percentage #=> Integer
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.eks_resource_scaling_config.target_percent #=> Integer
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.eks_resource_scaling_config.capacity_monitoring_approach #=> String, one of "sampledMaxInLast24Hours"
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.route53_health_check_config.timeout_minutes #=> Integer
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.route53_health_check_config.cross_account_role #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.route53_health_check_config.external_id #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.route53_health_check_config.hosted_zone_id #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.route53_health_check_config.record_name #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.route53_health_check_config.record_sets #=> Array
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.route53_health_check_config.record_sets[0].record_set_identifier #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.route53_health_check_config.record_sets[0].region #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_type #=> String, one of "CustomActionLambda", "ManualApproval", "AuroraGlobalDatabase", "EC2AutoScaling", "ARCRoutingControl", "ARCRegionSwitchPlan", "Parallel", "ECSServiceScaling", "EKSResourceScaling", "Route53HealthCheck"
    #   resp.plan.workflows[0].workflow_target_action #=> String, one of "activate", "deactivate"
    #   resp.plan.workflows[0].workflow_target_region #=> String
    #   resp.plan.workflows[0].workflow_description #=> String
    #   resp.plan.execution_role #=> String
    #   resp.plan.recovery_time_objective_minutes #=> Integer
    #   resp.plan.associated_alarms #=> Hash
    #   resp.plan.associated_alarms["String"].cross_account_role #=> String
    #   resp.plan.associated_alarms["String"].external_id #=> String
    #   resp.plan.associated_alarms["String"].resource_identifier #=> String
    #   resp.plan.associated_alarms["String"].alarm_type #=> String, one of "applicationHealth", "trigger"
    #   resp.plan.triggers #=> Array
    #   resp.plan.triggers[0].description #=> String
    #   resp.plan.triggers[0].target_region #=> String
    #   resp.plan.triggers[0].action #=> String, one of "activate", "deactivate"
    #   resp.plan.triggers[0].conditions #=> Array
    #   resp.plan.triggers[0].conditions[0].associated_alarm_name #=> String
    #   resp.plan.triggers[0].conditions[0].condition #=> String, one of "red", "green"
    #   resp.plan.triggers[0].min_delay_minutes_between_executions #=> Integer
    #   resp.plan.name #=> String
    #   resp.plan.regions #=> Array
    #   resp.plan.regions[0] #=> String
    #   resp.plan.recovery_approach #=> String, one of "activeActive", "activePassive"
    #   resp.plan.primary_region #=> String
    #   resp.plan.owner #=> String
    #   resp.plan.version #=> String
    #   resp.plan.updated_at #=> Time
    #   resp.actual_recovery_time #=> String
    #   resp.next_token #=> String
    #
    #
    # The following waiters are defined for this operation (see {Client#wait_until} for detailed usage):
    #
    #   * plan_execution_completed
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/arc-region-switch-2022-07-26/GetPlanExecution AWS API Documentation
    #
    # @overload get_plan_execution(params = {})
    # @param [Hash] params ({})
    def get_plan_execution(params = {}, options = {})
      req = build_request(:get_plan_execution, params)
      req.send_request(options)
    end

    # Retrieves information about a Region switch plan in a specific Amazon
    # Web Services Region. This operation is useful for getting
    # Region-specific information about a plan.
    #
    # @option params [required, String] :arn
    #   The Amazon Resource Name (ARN) of the plan in Region.
    #
    # @return [Types::GetPlanInRegionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetPlanInRegionResponse#plan #plan} => Types::Plan
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_plan_in_region({
    #     arn: "PlanArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.plan.arn #=> String
    #   resp.plan.description #=> String
    #   resp.plan.workflows #=> Array
    #   resp.plan.workflows[0].steps #=> Array
    #   resp.plan.workflows[0].steps[0].name #=> String
    #   resp.plan.workflows[0].steps[0].description #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.custom_action_lambda_config.timeout_minutes #=> Integer
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.custom_action_lambda_config.lambdas #=> Array
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.custom_action_lambda_config.lambdas[0].cross_account_role #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.custom_action_lambda_config.lambdas[0].external_id #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.custom_action_lambda_config.lambdas[0].arn #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.custom_action_lambda_config.retry_interval_minutes #=> Float
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.custom_action_lambda_config.region_to_run #=> String, one of "activatingRegion", "deactivatingRegion"
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.custom_action_lambda_config.ungraceful.behavior #=> String, one of "skip"
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.ec2_asg_capacity_increase_config.timeout_minutes #=> Integer
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.ec2_asg_capacity_increase_config.asgs #=> Array
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.ec2_asg_capacity_increase_config.asgs[0].cross_account_role #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.ec2_asg_capacity_increase_config.asgs[0].external_id #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.ec2_asg_capacity_increase_config.asgs[0].arn #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.ec2_asg_capacity_increase_config.ungraceful.minimum_success_percentage #=> Integer
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.ec2_asg_capacity_increase_config.target_percent #=> Integer
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.ec2_asg_capacity_increase_config.capacity_monitoring_approach #=> String, one of "sampledMaxInLast24Hours", "autoscalingMaxInLast24Hours"
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.execution_approval_config.timeout_minutes #=> Integer
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.execution_approval_config.approval_role #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.arc_routing_control_config.timeout_minutes #=> Integer
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.arc_routing_control_config.cross_account_role #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.arc_routing_control_config.external_id #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.arc_routing_control_config.region_and_routing_controls #=> Hash
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.arc_routing_control_config.region_and_routing_controls["String"] #=> Array
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.arc_routing_control_config.region_and_routing_controls["String"][0].routing_control_arn #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.arc_routing_control_config.region_and_routing_controls["String"][0].state #=> String, one of "On", "Off"
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.global_aurora_config.timeout_minutes #=> Integer
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.global_aurora_config.cross_account_role #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.global_aurora_config.external_id #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.global_aurora_config.behavior #=> String, one of "switchoverOnly", "failover"
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.global_aurora_config.ungraceful.ungraceful #=> String, one of "failover"
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.global_aurora_config.global_cluster_identifier #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.global_aurora_config.database_cluster_arns #=> Array
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.global_aurora_config.database_cluster_arns[0] #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.parallel_config.steps #=> Types::Steps
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.region_switch_plan_config.cross_account_role #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.region_switch_plan_config.external_id #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.region_switch_plan_config.arn #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.ecs_capacity_increase_config.timeout_minutes #=> Integer
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.ecs_capacity_increase_config.services #=> Array
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.ecs_capacity_increase_config.services[0].cross_account_role #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.ecs_capacity_increase_config.services[0].external_id #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.ecs_capacity_increase_config.services[0].cluster_arn #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.ecs_capacity_increase_config.services[0].service_arn #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.ecs_capacity_increase_config.ungraceful.minimum_success_percentage #=> Integer
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.ecs_capacity_increase_config.target_percent #=> Integer
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.ecs_capacity_increase_config.capacity_monitoring_approach #=> String, one of "sampledMaxInLast24Hours", "containerInsightsMaxInLast24Hours"
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.eks_resource_scaling_config.timeout_minutes #=> Integer
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.eks_resource_scaling_config.kubernetes_resource_type.api_version #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.eks_resource_scaling_config.kubernetes_resource_type.kind #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.eks_resource_scaling_config.scaling_resources #=> Array
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.eks_resource_scaling_config.scaling_resources[0] #=> Hash
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.eks_resource_scaling_config.scaling_resources[0]["String"] #=> Hash
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.eks_resource_scaling_config.scaling_resources[0]["String"]["Region"].namespace #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.eks_resource_scaling_config.scaling_resources[0]["String"]["Region"].name #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.eks_resource_scaling_config.scaling_resources[0]["String"]["Region"].hpa_name #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.eks_resource_scaling_config.eks_clusters #=> Array
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.eks_resource_scaling_config.eks_clusters[0].cross_account_role #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.eks_resource_scaling_config.eks_clusters[0].external_id #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.eks_resource_scaling_config.eks_clusters[0].cluster_arn #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.eks_resource_scaling_config.ungraceful.minimum_success_percentage #=> Integer
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.eks_resource_scaling_config.target_percent #=> Integer
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.eks_resource_scaling_config.capacity_monitoring_approach #=> String, one of "sampledMaxInLast24Hours"
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.route53_health_check_config.timeout_minutes #=> Integer
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.route53_health_check_config.cross_account_role #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.route53_health_check_config.external_id #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.route53_health_check_config.hosted_zone_id #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.route53_health_check_config.record_name #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.route53_health_check_config.record_sets #=> Array
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.route53_health_check_config.record_sets[0].record_set_identifier #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.route53_health_check_config.record_sets[0].region #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_type #=> String, one of "CustomActionLambda", "ManualApproval", "AuroraGlobalDatabase", "EC2AutoScaling", "ARCRoutingControl", "ARCRegionSwitchPlan", "Parallel", "ECSServiceScaling", "EKSResourceScaling", "Route53HealthCheck"
    #   resp.plan.workflows[0].workflow_target_action #=> String, one of "activate", "deactivate"
    #   resp.plan.workflows[0].workflow_target_region #=> String
    #   resp.plan.workflows[0].workflow_description #=> String
    #   resp.plan.execution_role #=> String
    #   resp.plan.recovery_time_objective_minutes #=> Integer
    #   resp.plan.associated_alarms #=> Hash
    #   resp.plan.associated_alarms["String"].cross_account_role #=> String
    #   resp.plan.associated_alarms["String"].external_id #=> String
    #   resp.plan.associated_alarms["String"].resource_identifier #=> String
    #   resp.plan.associated_alarms["String"].alarm_type #=> String, one of "applicationHealth", "trigger"
    #   resp.plan.triggers #=> Array
    #   resp.plan.triggers[0].description #=> String
    #   resp.plan.triggers[0].target_region #=> String
    #   resp.plan.triggers[0].action #=> String, one of "activate", "deactivate"
    #   resp.plan.triggers[0].conditions #=> Array
    #   resp.plan.triggers[0].conditions[0].associated_alarm_name #=> String
    #   resp.plan.triggers[0].conditions[0].condition #=> String, one of "red", "green"
    #   resp.plan.triggers[0].min_delay_minutes_between_executions #=> Integer
    #   resp.plan.name #=> String
    #   resp.plan.regions #=> Array
    #   resp.plan.regions[0] #=> String
    #   resp.plan.recovery_approach #=> String, one of "activeActive", "activePassive"
    #   resp.plan.primary_region #=> String
    #   resp.plan.owner #=> String
    #   resp.plan.version #=> String
    #   resp.plan.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/arc-region-switch-2022-07-26/GetPlanInRegion AWS API Documentation
    #
    # @overload get_plan_in_region(params = {})
    # @param [Hash] params ({})
    def get_plan_in_region(params = {}, options = {})
      req = build_request(:get_plan_in_region, params)
      req.send_request(options)
    end

    # Lists the events that occurred during a plan execution. These events
    # provide a detailed timeline of the execution process.
    #
    # @option params [required, String] :plan_arn
    #   The Amazon Resource Name (ARN) of the plan.
    #
    # @option params [required, String] :execution_id
    #   The execution identifier of a plan execution.
    #
    # @option params [Integer] :max_results
    #   The number of objects that you want to return with this call.
    #
    # @option params [String] :next_token
    #   Specifies that you want to receive the next page of results. Valid
    #   only if you received a `nextToken` response in the previous request.
    #   If you did, it indicates that more output is available. Set this
    #   parameter to the value provided by the previous call's `nextToken`
    #   response to request the next page of results.
    #
    # @option params [String] :name
    #   The name of the plan execution event.
    #
    # @return [Types::ListPlanExecutionEventsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPlanExecutionEventsResponse#items #items} => Array&lt;Types::ExecutionEvent&gt;
    #   * {Types::ListPlanExecutionEventsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_plan_execution_events({
    #     plan_arn: "PlanArn", # required
    #     execution_id: "ExecutionId", # required
    #     max_results: 1,
    #     next_token: "String",
    #     name: "StepName",
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].timestamp #=> Time
    #   resp.items[0].type #=> String, one of "unknown", "executionPending", "executionStarted", "executionSucceeded", "executionFailed", "executionPausing", "executionPaused", "executionCanceling", "executionCanceled", "executionPendingApproval", "executionBehaviorChangedToUngraceful", "executionBehaviorChangedToGraceful", "executionPendingChildPlanManualApproval", "executionSuccessMonitoringApplicationHealth", "stepStarted", "stepUpdate", "stepSucceeded", "stepFailed", "stepSkipped", "stepPausedByError", "stepPausedByOperator", "stepCanceled", "stepPendingApproval", "stepExecutionBehaviorChangedToUngraceful", "stepPendingApplicationHealthMonitor"
    #   resp.items[0].step_name #=> String
    #   resp.items[0].execution_block_type #=> String, one of "CustomActionLambda", "ManualApproval", "AuroraGlobalDatabase", "EC2AutoScaling", "ARCRoutingControl", "ARCRegionSwitchPlan", "Parallel", "ECSServiceScaling", "EKSResourceScaling", "Route53HealthCheck"
    #   resp.items[0].resources #=> Array
    #   resp.items[0].resources[0] #=> String
    #   resp.items[0].error #=> String
    #   resp.items[0].description #=> String
    #   resp.items[0].event_id #=> String
    #   resp.items[0].previous_event_id #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/arc-region-switch-2022-07-26/ListPlanExecutionEvents AWS API Documentation
    #
    # @overload list_plan_execution_events(params = {})
    # @param [Hash] params ({})
    def list_plan_execution_events(params = {}, options = {})
      req = build_request(:list_plan_execution_events, params)
      req.send_request(options)
    end

    # Lists the executions of a Region switch plan. This operation returns
    # information about both current and historical executions.
    #
    # @option params [required, String] :plan_arn
    #   The ARN for the plan.
    #
    # @option params [Integer] :max_results
    #   The number of objects that you want to return with this call.
    #
    # @option params [String] :next_token
    #   Specifies that you want to receive the next page of results. Valid
    #   only if you received a `nextToken` response in the previous request.
    #   If you did, it indicates that more output is available. Set this
    #   parameter to the value provided by the previous call's `nextToken`
    #   response to request the next page of results.
    #
    # @option params [String] :state
    #   The state of the plan execution. For example, the plan execution might
    #   be In Progress.
    #
    # @return [Types::ListPlanExecutionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPlanExecutionsResponse#items #items} => Array&lt;Types::AbbreviatedExecution&gt;
    #   * {Types::ListPlanExecutionsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_plan_executions({
    #     plan_arn: "PlanArn", # required
    #     max_results: 1,
    #     next_token: "String",
    #     state: "inProgress", # accepts inProgress, pausedByFailedStep, pausedByOperator, completed, completedWithExceptions, canceled, planExecutionTimedOut, pendingManualApproval, failed, pending, completedMonitoringApplicationHealth
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].plan_arn #=> String
    #   resp.items[0].execution_id #=> String
    #   resp.items[0].version #=> String
    #   resp.items[0].updated_at #=> Time
    #   resp.items[0].comment #=> String
    #   resp.items[0].start_time #=> Time
    #   resp.items[0].end_time #=> Time
    #   resp.items[0].mode #=> String, one of "graceful", "ungraceful"
    #   resp.items[0].execution_state #=> String, one of "inProgress", "pausedByFailedStep", "pausedByOperator", "completed", "completedWithExceptions", "canceled", "planExecutionTimedOut", "pendingManualApproval", "failed", "pending", "completedMonitoringApplicationHealth"
    #   resp.items[0].execution_action #=> String, one of "activate", "deactivate"
    #   resp.items[0].execution_region #=> String
    #   resp.items[0].actual_recovery_time #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/arc-region-switch-2022-07-26/ListPlanExecutions AWS API Documentation
    #
    # @overload list_plan_executions(params = {})
    # @param [Hash] params ({})
    def list_plan_executions(params = {}, options = {})
      req = build_request(:list_plan_executions, params)
      req.send_request(options)
    end

    # Lists all Region switch plans in your Amazon Web Services account.
    #
    # @option params [Integer] :max_results
    #   The number of objects that you want to return with this call.
    #
    # @option params [String] :next_token
    #   Specifies that you want to receive the next page of results. Valid
    #   only if you received a `nextToken` response in the previous request.
    #   If you did, it indicates that more output is available. Set this
    #   parameter to the value provided by the previous call's `nextToken`
    #   response to request the next page of results.
    #
    # @return [Types::ListPlansResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPlansResponse#plans #plans} => Array&lt;Types::AbbreviatedPlan&gt;
    #   * {Types::ListPlansResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_plans({
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.plans #=> Array
    #   resp.plans[0].arn #=> String
    #   resp.plans[0].owner #=> String
    #   resp.plans[0].name #=> String
    #   resp.plans[0].regions #=> Array
    #   resp.plans[0].regions[0] #=> String
    #   resp.plans[0].recovery_approach #=> String, one of "activeActive", "activePassive"
    #   resp.plans[0].primary_region #=> String
    #   resp.plans[0].version #=> String
    #   resp.plans[0].updated_at #=> Time
    #   resp.plans[0].description #=> String
    #   resp.plans[0].execution_role #=> String
    #   resp.plans[0].active_plan_execution #=> String
    #   resp.plans[0].recovery_time_objective_minutes #=> Integer
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/arc-region-switch-2022-07-26/ListPlans AWS API Documentation
    #
    # @overload list_plans(params = {})
    # @param [Hash] params ({})
    def list_plans(params = {}, options = {})
      req = build_request(:list_plans, params)
      req.send_request(options)
    end

    # Lists all Region switch plans in your Amazon Web Services account that
    # are available in the current Amazon Web Services Region.
    #
    # @option params [Integer] :max_results
    #   The number of objects that you want to return with this call.
    #
    # @option params [String] :next_token
    #   Specifies that you want to receive the next page of results. Valid
    #   only if you received a `nextToken` response in the previous request.
    #   If you did, it indicates that more output is available. Set this
    #   parameter to the value provided by the previous call's `nextToken`
    #   response to request the next page of results.
    #
    # @return [Types::ListPlansInRegionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPlansInRegionResponse#plans #plans} => Array&lt;Types::AbbreviatedPlan&gt;
    #   * {Types::ListPlansInRegionResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_plans_in_region({
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.plans #=> Array
    #   resp.plans[0].arn #=> String
    #   resp.plans[0].owner #=> String
    #   resp.plans[0].name #=> String
    #   resp.plans[0].regions #=> Array
    #   resp.plans[0].regions[0] #=> String
    #   resp.plans[0].recovery_approach #=> String, one of "activeActive", "activePassive"
    #   resp.plans[0].primary_region #=> String
    #   resp.plans[0].version #=> String
    #   resp.plans[0].updated_at #=> Time
    #   resp.plans[0].description #=> String
    #   resp.plans[0].execution_role #=> String
    #   resp.plans[0].active_plan_execution #=> String
    #   resp.plans[0].recovery_time_objective_minutes #=> Integer
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/arc-region-switch-2022-07-26/ListPlansInRegion AWS API Documentation
    #
    # @overload list_plans_in_region(params = {})
    # @param [Hash] params ({})
    def list_plans_in_region(params = {}, options = {})
      req = build_request(:list_plans_in_region, params)
      req.send_request(options)
    end

    # List the Amazon Route 53 health checks.
    #
    # @option params [required, String] :arn
    #   The Amazon Resource Name (ARN) of the Amazon Route 53 health check
    #   request.
    #
    # @option params [String] :hosted_zone_id
    #   The hosted zone ID for the health checks.
    #
    # @option params [String] :record_name
    #   The record name for the health checks.
    #
    # @option params [Integer] :max_results
    #   The number of objects that you want to return with this call.
    #
    # @option params [String] :next_token
    #   Specifies that you want to receive the next page of results. Valid
    #   only if you received a `nextToken` response in the previous request.
    #   If you did, it indicates that more output is available. Set this
    #   parameter to the value provided by the previous call's `nextToken`
    #   response to request the next page of results.
    #
    # @return [Types::ListRoute53HealthChecksResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListRoute53HealthChecksResponse#health_checks #health_checks} => Array&lt;Types::Route53HealthCheck&gt;
    #   * {Types::ListRoute53HealthChecksResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_route_53_health_checks({
    #     arn: "PlanArn", # required
    #     hosted_zone_id: "Route53HostedZoneId",
    #     record_name: "Route53RecordName",
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.health_checks #=> Array
    #   resp.health_checks[0].hosted_zone_id #=> String
    #   resp.health_checks[0].record_name #=> String
    #   resp.health_checks[0].health_check_id #=> String
    #   resp.health_checks[0].region #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/arc-region-switch-2022-07-26/ListRoute53HealthChecks AWS API Documentation
    #
    # @overload list_route_53_health_checks(params = {})
    # @param [Hash] params ({})
    def list_route_53_health_checks(params = {}, options = {})
      req = build_request(:list_route_53_health_checks, params)
      req.send_request(options)
    end

    # Lists the tags attached to a Region switch resource.
    #
    # @option params [required, String] :arn
    #   The Amazon Resource Name (ARN) of the resource.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#resource_tags #resource_tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     arn: "PlanArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.resource_tags #=> Hash
    #   resp.resource_tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/arc-region-switch-2022-07-26/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Starts the execution of a Region switch plan. You can execute a plan
    # in either PRACTICE or RECOVERY mode.
    #
    # In PRACTICE mode, the execution simulates the steps without making
    # actual changes to your application's traffic routing. In RECOVERY
    # mode, the execution performs actual changes to shift traffic between
    # Regions.
    #
    # @option params [required, String] :plan_arn
    #   The Amazon Resource Name (ARN) of the plan to execute.
    #
    # @option params [required, String] :target_region
    #   The Amazon Web Services Region to target with this execution. This is
    #   the Region that traffic will be shifted to or from, depending on the
    #   action.
    #
    # @option params [required, String] :action
    #   The action to perform. Valid values are ACTIVATE (to shift traffic to
    #   the target Region) or DEACTIVATE (to shift traffic away from the
    #   target Region).
    #
    # @option params [String] :mode
    #   The plan execution mode. Valid values are `Practice`, for testing
    #   without making actual changes, or `Recovery`, for actual traffic
    #   shifting and application recovery.
    #
    # @option params [String] :comment
    #   An optional comment explaining why the plan execution is being
    #   started.
    #
    # @option params [String] :latest_version
    #   A boolean value indicating whether to use the latest version of the
    #   plan. If set to false, you must specify a specific version.
    #
    # @return [Types::StartPlanExecutionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartPlanExecutionResponse#execution_id #execution_id} => String
    #   * {Types::StartPlanExecutionResponse#plan #plan} => String
    #   * {Types::StartPlanExecutionResponse#plan_version #plan_version} => String
    #   * {Types::StartPlanExecutionResponse#activate_region #activate_region} => String
    #   * {Types::StartPlanExecutionResponse#deactivate_region #deactivate_region} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_plan_execution({
    #     plan_arn: "PlanArn", # required
    #     target_region: "String", # required
    #     action: "activate", # required, accepts activate, deactivate
    #     mode: "graceful", # accepts graceful, ungraceful
    #     comment: "ExecutionComment",
    #     latest_version: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.execution_id #=> String
    #   resp.plan #=> String
    #   resp.plan_version #=> String
    #   resp.activate_region #=> String
    #   resp.deactivate_region #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/arc-region-switch-2022-07-26/StartPlanExecution AWS API Documentation
    #
    # @overload start_plan_execution(params = {})
    # @param [Hash] params ({})
    def start_plan_execution(params = {}, options = {})
      req = build_request(:start_plan_execution, params)
      req.send_request(options)
    end

    # Adds or updates tags for a Region switch resource. You can assign
    # metadata to your resources in the form of tags, which are key-value
    # pairs.
    #
    # @option params [required, String] :arn
    #   The Amazon Resource Name (ARN) for a tag that you add to a resource.
    #
    # @option params [required, Hash<String,String>] :tags
    #   Tags that you add to a resource. You can add a maximum of 50 tags in
    #   Region switch.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     arn: "PlanArn", # required
    #     tags: { # required
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/arc-region-switch-2022-07-26/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes tags from a Region switch resource.
    #
    # @option params [required, String] :arn
    #   The Amazon Resource Name (ARN) for a tag you remove a resource from.
    #
    # @option params [required, Array<String>] :resource_tag_keys
    #   Tag keys that you remove from a resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     arn: "PlanArn", # required
    #     resource_tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/arc-region-switch-2022-07-26/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates an existing Region switch plan. You can modify the plan's
    # description, workflows, execution role, recovery time objective,
    # associated alarms, and triggers.
    #
    # @option params [required, String] :arn
    #   The Amazon Resource Name (ARN) of the plan.
    #
    # @option params [String] :description
    #   The updated description for the Region switch plan.
    #
    # @option params [required, Array<Types::Workflow>] :workflows
    #   The updated workflows for the Region switch plan.
    #
    # @option params [required, String] :execution_role
    #   The updated IAM role ARN that grants Region switch the permissions
    #   needed to execute the plan steps.
    #
    # @option params [Integer] :recovery_time_objective_minutes
    #   The updated target recovery time objective (RTO) in minutes for the
    #   plan.
    #
    # @option params [Hash<String,Types::AssociatedAlarm>] :associated_alarms
    #   The updated CloudWatch alarms associated with the plan.
    #
    # @option params [Array<Types::Trigger>] :triggers
    #   The updated conditions that can automatically trigger the execution of
    #   the plan.
    #
    # @return [Types::UpdatePlanResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdatePlanResponse#plan #plan} => Types::Plan
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_plan({
    #     arn: "PlanArn", # required
    #     description: "String",
    #     workflows: [ # required
    #       {
    #         steps: [
    #           {
    #             name: "StepName", # required
    #             description: "String",
    #             execution_block_configuration: { # required
    #               custom_action_lambda_config: {
    #                 timeout_minutes: 1,
    #                 lambdas: [ # required
    #                   {
    #                     cross_account_role: "IamRoleArn",
    #                     external_id: "String",
    #                     arn: "LambdaArn",
    #                   },
    #                 ],
    #                 retry_interval_minutes: 1.0, # required
    #                 region_to_run: "activatingRegion", # required, accepts activatingRegion, deactivatingRegion
    #                 ungraceful: {
    #                   behavior: "skip", # accepts skip
    #                 },
    #               },
    #               ec2_asg_capacity_increase_config: {
    #                 timeout_minutes: 1,
    #                 asgs: [ # required
    #                   {
    #                     cross_account_role: "IamRoleArn",
    #                     external_id: "String",
    #                     arn: "AsgArn",
    #                   },
    #                 ],
    #                 ungraceful: {
    #                   minimum_success_percentage: 1, # required
    #                 },
    #                 target_percent: 1,
    #                 capacity_monitoring_approach: "sampledMaxInLast24Hours", # accepts sampledMaxInLast24Hours, autoscalingMaxInLast24Hours
    #               },
    #               execution_approval_config: {
    #                 timeout_minutes: 1,
    #                 approval_role: "RoleArn", # required
    #               },
    #               arc_routing_control_config: {
    #                 timeout_minutes: 1,
    #                 cross_account_role: "IamRoleArn",
    #                 external_id: "String",
    #                 region_and_routing_controls: { # required
    #                   "String" => [
    #                     {
    #                       routing_control_arn: "RoutingControlArn", # required
    #                       state: "On", # required, accepts On, Off
    #                     },
    #                   ],
    #                 },
    #               },
    #               global_aurora_config: {
    #                 timeout_minutes: 1,
    #                 cross_account_role: "IamRoleArn",
    #                 external_id: "String",
    #                 behavior: "switchoverOnly", # required, accepts switchoverOnly, failover
    #                 ungraceful: {
    #                   ungraceful: "failover", # accepts failover
    #                 },
    #                 global_cluster_identifier: "GlobalClusterIdentifier", # required
    #                 database_cluster_arns: ["AuroraClusterArn"], # required
    #               },
    #               parallel_config: {
    #                 steps: { # required
    #                   # recursive Steps
    #                 },
    #               },
    #               region_switch_plan_config: {
    #                 cross_account_role: "IamRoleArn",
    #                 external_id: "String",
    #                 arn: "PlanArn", # required
    #               },
    #               ecs_capacity_increase_config: {
    #                 timeout_minutes: 1,
    #                 services: [ # required
    #                   {
    #                     cross_account_role: "IamRoleArn",
    #                     external_id: "String",
    #                     cluster_arn: "EcsClusterArn",
    #                     service_arn: "EcsServiceArn",
    #                   },
    #                 ],
    #                 ungraceful: {
    #                   minimum_success_percentage: 1, # required
    #                 },
    #                 target_percent: 1,
    #                 capacity_monitoring_approach: "sampledMaxInLast24Hours", # accepts sampledMaxInLast24Hours, containerInsightsMaxInLast24Hours
    #               },
    #               eks_resource_scaling_config: {
    #                 timeout_minutes: 1,
    #                 kubernetes_resource_type: { # required
    #                   api_version: "String", # required
    #                   kind: "String", # required
    #                 },
    #                 scaling_resources: [
    #                   {
    #                     "String" => {
    #                       "Region" => {
    #                         namespace: "KubernetesNamespace", # required
    #                         name: "String", # required
    #                         hpa_name: "String",
    #                       },
    #                     },
    #                   },
    #                 ],
    #                 eks_clusters: [
    #                   {
    #                     cross_account_role: "IamRoleArn",
    #                     external_id: "String",
    #                     cluster_arn: "EksClusterArn", # required
    #                   },
    #                 ],
    #                 ungraceful: {
    #                   minimum_success_percentage: 1, # required
    #                 },
    #                 target_percent: 1,
    #                 capacity_monitoring_approach: "sampledMaxInLast24Hours", # accepts sampledMaxInLast24Hours
    #               },
    #               route53_health_check_config: {
    #                 timeout_minutes: 1,
    #                 cross_account_role: "IamRoleArn",
    #                 external_id: "String",
    #                 hosted_zone_id: "Route53HostedZoneId", # required
    #                 record_name: "Route53RecordName", # required
    #                 record_sets: [
    #                   {
    #                     record_set_identifier: "Route53ResourceRecordSetIdentifier",
    #                     region: "Region",
    #                   },
    #                 ],
    #               },
    #             },
    #             execution_block_type: "CustomActionLambda", # required, accepts CustomActionLambda, ManualApproval, AuroraGlobalDatabase, EC2AutoScaling, ARCRoutingControl, ARCRegionSwitchPlan, Parallel, ECSServiceScaling, EKSResourceScaling, Route53HealthCheck
    #           },
    #         ],
    #         workflow_target_action: "activate", # required, accepts activate, deactivate
    #         workflow_target_region: "Region",
    #         workflow_description: "String",
    #       },
    #     ],
    #     execution_role: "IamRoleArn", # required
    #     recovery_time_objective_minutes: 1,
    #     associated_alarms: {
    #       "String" => {
    #         cross_account_role: "IamRoleArn",
    #         external_id: "String",
    #         resource_identifier: "String", # required
    #         alarm_type: "applicationHealth", # required, accepts applicationHealth, trigger
    #       },
    #     },
    #     triggers: [
    #       {
    #         description: "String",
    #         target_region: "Region", # required
    #         action: "activate", # required, accepts activate, deactivate
    #         conditions: [ # required
    #           {
    #             associated_alarm_name: "String", # required
    #             condition: "red", # required, accepts red, green
    #           },
    #         ],
    #         min_delay_minutes_between_executions: 1, # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.plan.arn #=> String
    #   resp.plan.description #=> String
    #   resp.plan.workflows #=> Array
    #   resp.plan.workflows[0].steps #=> Array
    #   resp.plan.workflows[0].steps[0].name #=> String
    #   resp.plan.workflows[0].steps[0].description #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.custom_action_lambda_config.timeout_minutes #=> Integer
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.custom_action_lambda_config.lambdas #=> Array
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.custom_action_lambda_config.lambdas[0].cross_account_role #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.custom_action_lambda_config.lambdas[0].external_id #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.custom_action_lambda_config.lambdas[0].arn #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.custom_action_lambda_config.retry_interval_minutes #=> Float
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.custom_action_lambda_config.region_to_run #=> String, one of "activatingRegion", "deactivatingRegion"
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.custom_action_lambda_config.ungraceful.behavior #=> String, one of "skip"
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.ec2_asg_capacity_increase_config.timeout_minutes #=> Integer
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.ec2_asg_capacity_increase_config.asgs #=> Array
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.ec2_asg_capacity_increase_config.asgs[0].cross_account_role #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.ec2_asg_capacity_increase_config.asgs[0].external_id #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.ec2_asg_capacity_increase_config.asgs[0].arn #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.ec2_asg_capacity_increase_config.ungraceful.minimum_success_percentage #=> Integer
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.ec2_asg_capacity_increase_config.target_percent #=> Integer
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.ec2_asg_capacity_increase_config.capacity_monitoring_approach #=> String, one of "sampledMaxInLast24Hours", "autoscalingMaxInLast24Hours"
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.execution_approval_config.timeout_minutes #=> Integer
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.execution_approval_config.approval_role #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.arc_routing_control_config.timeout_minutes #=> Integer
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.arc_routing_control_config.cross_account_role #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.arc_routing_control_config.external_id #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.arc_routing_control_config.region_and_routing_controls #=> Hash
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.arc_routing_control_config.region_and_routing_controls["String"] #=> Array
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.arc_routing_control_config.region_and_routing_controls["String"][0].routing_control_arn #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.arc_routing_control_config.region_and_routing_controls["String"][0].state #=> String, one of "On", "Off"
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.global_aurora_config.timeout_minutes #=> Integer
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.global_aurora_config.cross_account_role #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.global_aurora_config.external_id #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.global_aurora_config.behavior #=> String, one of "switchoverOnly", "failover"
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.global_aurora_config.ungraceful.ungraceful #=> String, one of "failover"
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.global_aurora_config.global_cluster_identifier #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.global_aurora_config.database_cluster_arns #=> Array
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.global_aurora_config.database_cluster_arns[0] #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.parallel_config.steps #=> Types::Steps
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.region_switch_plan_config.cross_account_role #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.region_switch_plan_config.external_id #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.region_switch_plan_config.arn #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.ecs_capacity_increase_config.timeout_minutes #=> Integer
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.ecs_capacity_increase_config.services #=> Array
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.ecs_capacity_increase_config.services[0].cross_account_role #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.ecs_capacity_increase_config.services[0].external_id #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.ecs_capacity_increase_config.services[0].cluster_arn #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.ecs_capacity_increase_config.services[0].service_arn #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.ecs_capacity_increase_config.ungraceful.minimum_success_percentage #=> Integer
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.ecs_capacity_increase_config.target_percent #=> Integer
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.ecs_capacity_increase_config.capacity_monitoring_approach #=> String, one of "sampledMaxInLast24Hours", "containerInsightsMaxInLast24Hours"
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.eks_resource_scaling_config.timeout_minutes #=> Integer
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.eks_resource_scaling_config.kubernetes_resource_type.api_version #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.eks_resource_scaling_config.kubernetes_resource_type.kind #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.eks_resource_scaling_config.scaling_resources #=> Array
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.eks_resource_scaling_config.scaling_resources[0] #=> Hash
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.eks_resource_scaling_config.scaling_resources[0]["String"] #=> Hash
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.eks_resource_scaling_config.scaling_resources[0]["String"]["Region"].namespace #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.eks_resource_scaling_config.scaling_resources[0]["String"]["Region"].name #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.eks_resource_scaling_config.scaling_resources[0]["String"]["Region"].hpa_name #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.eks_resource_scaling_config.eks_clusters #=> Array
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.eks_resource_scaling_config.eks_clusters[0].cross_account_role #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.eks_resource_scaling_config.eks_clusters[0].external_id #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.eks_resource_scaling_config.eks_clusters[0].cluster_arn #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.eks_resource_scaling_config.ungraceful.minimum_success_percentage #=> Integer
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.eks_resource_scaling_config.target_percent #=> Integer
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.eks_resource_scaling_config.capacity_monitoring_approach #=> String, one of "sampledMaxInLast24Hours"
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.route53_health_check_config.timeout_minutes #=> Integer
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.route53_health_check_config.cross_account_role #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.route53_health_check_config.external_id #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.route53_health_check_config.hosted_zone_id #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.route53_health_check_config.record_name #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.route53_health_check_config.record_sets #=> Array
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.route53_health_check_config.record_sets[0].record_set_identifier #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_configuration.route53_health_check_config.record_sets[0].region #=> String
    #   resp.plan.workflows[0].steps[0].execution_block_type #=> String, one of "CustomActionLambda", "ManualApproval", "AuroraGlobalDatabase", "EC2AutoScaling", "ARCRoutingControl", "ARCRegionSwitchPlan", "Parallel", "ECSServiceScaling", "EKSResourceScaling", "Route53HealthCheck"
    #   resp.plan.workflows[0].workflow_target_action #=> String, one of "activate", "deactivate"
    #   resp.plan.workflows[0].workflow_target_region #=> String
    #   resp.plan.workflows[0].workflow_description #=> String
    #   resp.plan.execution_role #=> String
    #   resp.plan.recovery_time_objective_minutes #=> Integer
    #   resp.plan.associated_alarms #=> Hash
    #   resp.plan.associated_alarms["String"].cross_account_role #=> String
    #   resp.plan.associated_alarms["String"].external_id #=> String
    #   resp.plan.associated_alarms["String"].resource_identifier #=> String
    #   resp.plan.associated_alarms["String"].alarm_type #=> String, one of "applicationHealth", "trigger"
    #   resp.plan.triggers #=> Array
    #   resp.plan.triggers[0].description #=> String
    #   resp.plan.triggers[0].target_region #=> String
    #   resp.plan.triggers[0].action #=> String, one of "activate", "deactivate"
    #   resp.plan.triggers[0].conditions #=> Array
    #   resp.plan.triggers[0].conditions[0].associated_alarm_name #=> String
    #   resp.plan.triggers[0].conditions[0].condition #=> String, one of "red", "green"
    #   resp.plan.triggers[0].min_delay_minutes_between_executions #=> Integer
    #   resp.plan.name #=> String
    #   resp.plan.regions #=> Array
    #   resp.plan.regions[0] #=> String
    #   resp.plan.recovery_approach #=> String, one of "activeActive", "activePassive"
    #   resp.plan.primary_region #=> String
    #   resp.plan.owner #=> String
    #   resp.plan.version #=> String
    #   resp.plan.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/arc-region-switch-2022-07-26/UpdatePlan AWS API Documentation
    #
    # @overload update_plan(params = {})
    # @param [Hash] params ({})
    def update_plan(params = {}, options = {})
      req = build_request(:update_plan, params)
      req.send_request(options)
    end

    # Updates an in-progress plan execution. This operation allows you to
    # modify certain aspects of the execution, such as adding a comment or
    # changing the action.
    #
    # @option params [required, String] :plan_arn
    #   The Amazon Resource Name (ARN) of the plan with the execution to
    #   update.
    #
    # @option params [required, String] :execution_id
    #   The execution identifier of a plan execution.
    #
    # @option params [required, String] :action
    #   The action specified for a plan execution, for example, Switch to
    #   Graceful or Pause.
    #
    # @option params [String] :comment
    #   An optional comment about the plan execution.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_plan_execution({
    #     plan_arn: "PlanArn", # required
    #     execution_id: "ExecutionId", # required
    #     action: "switchToGraceful", # required, accepts switchToGraceful, switchToUngraceful, pause, resume
    #     comment: "ExecutionComment",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/arc-region-switch-2022-07-26/UpdatePlanExecution AWS API Documentation
    #
    # @overload update_plan_execution(params = {})
    # @param [Hash] params ({})
    def update_plan_execution(params = {}, options = {})
      req = build_request(:update_plan_execution, params)
      req.send_request(options)
    end

    # Updates a specific step in an in-progress plan execution. This
    # operation allows you to modify the step's comment or action.
    #
    # @option params [required, String] :plan_arn
    #   The Amazon Resource Name (ARN) of the plan containing the execution
    #   step to update.
    #
    # @option params [required, String] :execution_id
    #   The unique identifier of the plan execution containing the step to
    #   update.
    #
    # @option params [required, String] :comment
    #   An optional comment about the plan execution.
    #
    # @option params [required, String] :step_name
    #   The name of the execution step to update.
    #
    # @option params [required, String] :action_to_take
    #   The updated action to take for the step. This can be used to skip or
    #   retry a step.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_plan_execution_step({
    #     plan_arn: "PlanArn", # required
    #     execution_id: "ExecutionId", # required
    #     comment: "ExecutionComment", # required
    #     step_name: "String", # required
    #     action_to_take: "switchToUngraceful", # required, accepts switchToUngraceful, skip
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/arc-region-switch-2022-07-26/UpdatePlanExecutionStep AWS API Documentation
    #
    # @overload update_plan_execution_step(params = {})
    # @param [Hash] params ({})
    def update_plan_execution_step(params = {}, options = {})
      req = build_request(:update_plan_execution_step, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::ARCRegionswitch')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-arcregionswitch'
      context[:gem_version] = '1.0.0'
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
    # | waiter_name                   | params                              | :delay   | :max_attempts |
    # | ----------------------------- | ----------------------------------- | -------- | ------------- |
    # | plan_evaluation_status_passed | {Client#get_plan_evaluation_status} | 30       | 5             |
    # | plan_execution_completed      | {Client#get_plan_execution}         | 30       | 5             |
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
        plan_evaluation_status_passed: Waiters::PlanEvaluationStatusPassed,
        plan_execution_completed: Waiters::PlanExecutionCompleted
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
