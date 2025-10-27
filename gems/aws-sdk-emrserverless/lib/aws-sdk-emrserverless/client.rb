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
require 'aws-sdk-core/plugins/protocols/rest_json'

module Aws::EMRServerless
  # An API client for EMRServerless.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::EMRServerless::Client.new(
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

    @identifier = :emrserverless

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
    add_plugin(Aws::Plugins::Protocols::RestJson)
    add_plugin(Aws::EMRServerless::Plugins::Endpoints)

    # @overload initialize(options)
    #   @param [Hash] options
    #
    #   @option options [Array<Seahorse::Client::Plugin>] :plugins ([]])
    #     A list of plugins to apply to the client. Each plugin is either a
    #     class name or an instance of a plugin class.
    #
    #   @option options [required, Aws::CredentialProvider] :credentials
    #     Your AWS credentials used for authentication. This can be any class that includes and implements
    #     `Aws::CredentialProvider`, or instance of any one of the following classes:
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
    #     When `:credentials` are not configured directly, the following locations will be searched for credentials:
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
    #     * EC2/ECS IMDS instance profile - When used by default, the timeouts are very aggressive.
    #       Construct and pass an instance of `Aws::InstanceProfileCredentials` or `Aws::ECSCredentials` to
    #       enable retries and extended timeouts. Instance profile credential fetching can be disabled by
    #       setting `ENV['AWS_EC2_METADATA_DISABLED']` to `true`.
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
    #     Your Bearer token used for authentication. This can be any class that includes and implements
    #     `Aws::TokenProvider`, or instance of any one of the following classes:
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
    #   @option options [Aws::EMRServerless::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::EMRServerless::EndpointParameters`.
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

    # Cancels a job run.
    #
    # @option params [required, String] :application_id
    #   The ID of the application on which the job run will be canceled.
    #
    # @option params [required, String] :job_run_id
    #   The ID of the job run to cancel.
    #
    # @option params [Integer] :shutdown_grace_period_in_seconds
    #   The duration in seconds to wait before forcefully terminating the job
    #   after cancellation is requested.
    #
    # @return [Types::CancelJobRunResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CancelJobRunResponse#application_id #application_id} => String
    #   * {Types::CancelJobRunResponse#job_run_id #job_run_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_job_run({
    #     application_id: "ApplicationId", # required
    #     job_run_id: "JobRunId", # required
    #     shutdown_grace_period_in_seconds: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.application_id #=> String
    #   resp.job_run_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-serverless-2021-07-13/CancelJobRun AWS API Documentation
    #
    # @overload cancel_job_run(params = {})
    # @param [Hash] params ({})
    def cancel_job_run(params = {}, options = {})
      req = build_request(:cancel_job_run, params)
      req.send_request(options)
    end

    # Creates an application.
    #
    # @option params [String] :name
    #   The name of the application.
    #
    # @option params [required, String] :release_label
    #   The Amazon EMR release associated with the application.
    #
    # @option params [required, String] :type
    #   The type of application you want to start, such as Spark or Hive.
    #
    # @option params [required, String] :client_token
    #   The client idempotency token of the application to create. Its value
    #   must be unique for each request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Hash<String,Types::InitialCapacityConfig>] :initial_capacity
    #   The capacity to initialize when the application is created.
    #
    # @option params [Types::MaximumAllowedResources] :maximum_capacity
    #   The maximum capacity to allocate when the application is created. This
    #   is cumulative across all workers at any given point in time, not just
    #   when an application is created. No new resources will be created once
    #   any one of the defined limits is hit.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags assigned to the application.
    #
    # @option params [Types::AutoStartConfig] :auto_start_configuration
    #   The configuration for an application to automatically start on job
    #   submission.
    #
    # @option params [Types::AutoStopConfig] :auto_stop_configuration
    #   The configuration for an application to automatically stop after a
    #   certain amount of time being idle.
    #
    # @option params [Types::NetworkConfiguration] :network_configuration
    #   The network configuration for customer VPC connectivity.
    #
    # @option params [String] :architecture
    #   The CPU architecture of an application.
    #
    # @option params [Types::ImageConfigurationInput] :image_configuration
    #   The image configuration for all worker types. You can either set this
    #   parameter or `imageConfiguration` for each worker type in
    #   `workerTypeSpecifications`.
    #
    # @option params [Hash<String,Types::WorkerTypeSpecificationInput>] :worker_type_specifications
    #   The key-value pairs that specify worker type to
    #   `WorkerTypeSpecificationInput`. This parameter must contain all valid
    #   worker types for a Spark or Hive application. Valid worker types
    #   include `Driver` and `Executor` for Spark applications and
    #   `HiveDriver` and `TezTask` for Hive applications. You can either set
    #   image details in this parameter for each worker type, or in
    #   `imageConfiguration` for all worker types.
    #
    # @option params [Array<Types::Configuration>] :runtime_configuration
    #   The [Configuration][1] specifications to use when creating an
    #   application. Each configuration consists of a classification and
    #   properties. This configuration is applied to all the job runs
    #   submitted under the application.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/emr-serverless/latest/APIReference/API_Configuration.html
    #
    # @option params [Types::MonitoringConfiguration] :monitoring_configuration
    #   The configuration setting for monitoring.
    #
    # @option params [Types::InteractiveConfiguration] :interactive_configuration
    #   The interactive configuration object that enables the interactive use
    #   cases to use when running an application.
    #
    # @option params [Types::SchedulerConfiguration] :scheduler_configuration
    #   The scheduler configuration for batch and streaming jobs running on
    #   this application. Supported with release labels emr-7.0.0 and above.
    #
    # @option params [Types::IdentityCenterConfigurationInput] :identity_center_configuration
    #   The IAM Identity Center Configuration accepts the Identity Center
    #   instance parameter required to enable trusted identity propagation.
    #   This configuration allows identity propagation between integrated
    #   services and the Identity Center instance.
    #
    # @return [Types::CreateApplicationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateApplicationResponse#application_id #application_id} => String
    #   * {Types::CreateApplicationResponse#name #name} => String
    #   * {Types::CreateApplicationResponse#arn #arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_application({
    #     name: "ApplicationName",
    #     release_label: "ReleaseLabel", # required
    #     type: "EngineType", # required
    #     client_token: "ClientToken", # required
    #     initial_capacity: {
    #       "WorkerTypeString" => {
    #         worker_count: 1, # required
    #         worker_configuration: {
    #           cpu: "CpuSize", # required
    #           memory: "MemorySize", # required
    #           disk: "DiskSize",
    #           disk_type: "DiskType",
    #         },
    #       },
    #     },
    #     maximum_capacity: {
    #       cpu: "CpuSize", # required
    #       memory: "MemorySize", # required
    #       disk: "DiskSize",
    #     },
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     auto_start_configuration: {
    #       enabled: false,
    #     },
    #     auto_stop_configuration: {
    #       enabled: false,
    #       idle_timeout_minutes: 1,
    #     },
    #     network_configuration: {
    #       subnet_ids: ["SubnetString"],
    #       security_group_ids: ["SecurityGroupString"],
    #     },
    #     architecture: "ARM64", # accepts ARM64, X86_64
    #     image_configuration: {
    #       image_uri: "ImageUri",
    #     },
    #     worker_type_specifications: {
    #       "WorkerTypeString" => {
    #         image_configuration: {
    #           image_uri: "ImageUri",
    #         },
    #       },
    #     },
    #     runtime_configuration: [
    #       {
    #         classification: "String1024", # required
    #         properties: {
    #           "ConfigurationPropertyKey" => "ConfigurationPropertyValue",
    #         },
    #         configurations: {
    #           # recursive ConfigurationList
    #         },
    #       },
    #     ],
    #     monitoring_configuration: {
    #       s3_monitoring_configuration: {
    #         log_uri: "UriString",
    #         encryption_key_arn: "EncryptionKeyArn",
    #       },
    #       managed_persistence_monitoring_configuration: {
    #         enabled: false,
    #         encryption_key_arn: "EncryptionKeyArn",
    #       },
    #       cloud_watch_logging_configuration: {
    #         enabled: false, # required
    #         log_group_name: "LogGroupName",
    #         log_stream_name_prefix: "LogStreamNamePrefix",
    #         encryption_key_arn: "EncryptionKeyArn",
    #         log_types: {
    #           "WorkerTypeString" => ["LogTypeString"],
    #         },
    #       },
    #       prometheus_monitoring_configuration: {
    #         remote_write_url: "PrometheusUrlString",
    #       },
    #     },
    #     interactive_configuration: {
    #       studio_enabled: false,
    #       livy_endpoint_enabled: false,
    #     },
    #     scheduler_configuration: {
    #       queue_timeout_minutes: 1,
    #       max_concurrent_runs: 1,
    #     },
    #     identity_center_configuration: {
    #       identity_center_instance_arn: "IdentityCenterInstanceArn",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.application_id #=> String
    #   resp.name #=> String
    #   resp.arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-serverless-2021-07-13/CreateApplication AWS API Documentation
    #
    # @overload create_application(params = {})
    # @param [Hash] params ({})
    def create_application(params = {}, options = {})
      req = build_request(:create_application, params)
      req.send_request(options)
    end

    # Deletes an application. An application has to be in a stopped or
    # created state in order to be deleted.
    #
    # @option params [required, String] :application_id
    #   The ID of the application that will be deleted.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_application({
    #     application_id: "ApplicationId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-serverless-2021-07-13/DeleteApplication AWS API Documentation
    #
    # @overload delete_application(params = {})
    # @param [Hash] params ({})
    def delete_application(params = {}, options = {})
      req = build_request(:delete_application, params)
      req.send_request(options)
    end

    # Displays detailed information about a specified application.
    #
    # @option params [required, String] :application_id
    #   The ID of the application that will be described.
    #
    # @return [Types::GetApplicationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetApplicationResponse#application #application} => Types::Application
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_application({
    #     application_id: "ApplicationId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.application.application_id #=> String
    #   resp.application.name #=> String
    #   resp.application.arn #=> String
    #   resp.application.release_label #=> String
    #   resp.application.type #=> String
    #   resp.application.state #=> String, one of "CREATING", "CREATED", "STARTING", "STARTED", "STOPPING", "STOPPED", "TERMINATED"
    #   resp.application.state_details #=> String
    #   resp.application.initial_capacity #=> Hash
    #   resp.application.initial_capacity["WorkerTypeString"].worker_count #=> Integer
    #   resp.application.initial_capacity["WorkerTypeString"].worker_configuration.cpu #=> String
    #   resp.application.initial_capacity["WorkerTypeString"].worker_configuration.memory #=> String
    #   resp.application.initial_capacity["WorkerTypeString"].worker_configuration.disk #=> String
    #   resp.application.initial_capacity["WorkerTypeString"].worker_configuration.disk_type #=> String
    #   resp.application.maximum_capacity.cpu #=> String
    #   resp.application.maximum_capacity.memory #=> String
    #   resp.application.maximum_capacity.disk #=> String
    #   resp.application.created_at #=> Time
    #   resp.application.updated_at #=> Time
    #   resp.application.tags #=> Hash
    #   resp.application.tags["TagKey"] #=> String
    #   resp.application.auto_start_configuration.enabled #=> Boolean
    #   resp.application.auto_stop_configuration.enabled #=> Boolean
    #   resp.application.auto_stop_configuration.idle_timeout_minutes #=> Integer
    #   resp.application.network_configuration.subnet_ids #=> Array
    #   resp.application.network_configuration.subnet_ids[0] #=> String
    #   resp.application.network_configuration.security_group_ids #=> Array
    #   resp.application.network_configuration.security_group_ids[0] #=> String
    #   resp.application.architecture #=> String, one of "ARM64", "X86_64"
    #   resp.application.image_configuration.image_uri #=> String
    #   resp.application.image_configuration.resolved_image_digest #=> String
    #   resp.application.worker_type_specifications #=> Hash
    #   resp.application.worker_type_specifications["WorkerTypeString"].image_configuration.image_uri #=> String
    #   resp.application.worker_type_specifications["WorkerTypeString"].image_configuration.resolved_image_digest #=> String
    #   resp.application.runtime_configuration #=> Array
    #   resp.application.runtime_configuration[0].classification #=> String
    #   resp.application.runtime_configuration[0].properties #=> Hash
    #   resp.application.runtime_configuration[0].properties["ConfigurationPropertyKey"] #=> String
    #   resp.application.runtime_configuration[0].configurations #=> Types::ConfigurationList
    #   resp.application.monitoring_configuration.s3_monitoring_configuration.log_uri #=> String
    #   resp.application.monitoring_configuration.s3_monitoring_configuration.encryption_key_arn #=> String
    #   resp.application.monitoring_configuration.managed_persistence_monitoring_configuration.enabled #=> Boolean
    #   resp.application.monitoring_configuration.managed_persistence_monitoring_configuration.encryption_key_arn #=> String
    #   resp.application.monitoring_configuration.cloud_watch_logging_configuration.enabled #=> Boolean
    #   resp.application.monitoring_configuration.cloud_watch_logging_configuration.log_group_name #=> String
    #   resp.application.monitoring_configuration.cloud_watch_logging_configuration.log_stream_name_prefix #=> String
    #   resp.application.monitoring_configuration.cloud_watch_logging_configuration.encryption_key_arn #=> String
    #   resp.application.monitoring_configuration.cloud_watch_logging_configuration.log_types #=> Hash
    #   resp.application.monitoring_configuration.cloud_watch_logging_configuration.log_types["WorkerTypeString"] #=> Array
    #   resp.application.monitoring_configuration.cloud_watch_logging_configuration.log_types["WorkerTypeString"][0] #=> String
    #   resp.application.monitoring_configuration.prometheus_monitoring_configuration.remote_write_url #=> String
    #   resp.application.interactive_configuration.studio_enabled #=> Boolean
    #   resp.application.interactive_configuration.livy_endpoint_enabled #=> Boolean
    #   resp.application.scheduler_configuration.queue_timeout_minutes #=> Integer
    #   resp.application.scheduler_configuration.max_concurrent_runs #=> Integer
    #   resp.application.identity_center_configuration.identity_center_instance_arn #=> String
    #   resp.application.identity_center_configuration.identity_center_application_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-serverless-2021-07-13/GetApplication AWS API Documentation
    #
    # @overload get_application(params = {})
    # @param [Hash] params ({})
    def get_application(params = {}, options = {})
      req = build_request(:get_application, params)
      req.send_request(options)
    end

    # Creates and returns a URL that you can use to access the application
    # UIs for a job run.
    #
    # For jobs in a running state, the application UI is a live user
    # interface such as the Spark or Tez web UI. For completed jobs, the
    # application UI is a persistent application user interface such as the
    # Spark History Server or persistent Tez UI.
    #
    # <note markdown="1"> The URL is valid for one hour after you generate it. To access the
    # application UI after that hour elapses, you must invoke the API again
    # to generate a new URL.
    #
    #  </note>
    #
    # @option params [required, String] :application_id
    #   The ID of the application.
    #
    # @option params [required, String] :job_run_id
    #   The ID of the job run.
    #
    # @option params [Integer] :attempt
    #   An optimal parameter that indicates the amount of attempts for the
    #   job. If not specified, this value defaults to the attempt of the
    #   latest job.
    #
    # @option params [Boolean] :access_system_profile_logs
    #   Allows access to system profile logs for Lake Formation-enabled jobs.
    #   Default is false.
    #
    # @return [Types::GetDashboardForJobRunResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDashboardForJobRunResponse#url #url} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_dashboard_for_job_run({
    #     application_id: "ApplicationId", # required
    #     job_run_id: "JobRunId", # required
    #     attempt: 1,
    #     access_system_profile_logs: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.url #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-serverless-2021-07-13/GetDashboardForJobRun AWS API Documentation
    #
    # @overload get_dashboard_for_job_run(params = {})
    # @param [Hash] params ({})
    def get_dashboard_for_job_run(params = {}, options = {})
      req = build_request(:get_dashboard_for_job_run, params)
      req.send_request(options)
    end

    # Displays detailed information about a job run.
    #
    # @option params [required, String] :application_id
    #   The ID of the application on which the job run is submitted.
    #
    # @option params [required, String] :job_run_id
    #   The ID of the job run.
    #
    # @option params [Integer] :attempt
    #   An optimal parameter that indicates the amount of attempts for the
    #   job. If not specified, this value defaults to the attempt of the
    #   latest job.
    #
    # @return [Types::GetJobRunResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetJobRunResponse#job_run #job_run} => Types::JobRun
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_job_run({
    #     application_id: "ApplicationId", # required
    #     job_run_id: "JobRunId", # required
    #     attempt: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.job_run.application_id #=> String
    #   resp.job_run.job_run_id #=> String
    #   resp.job_run.name #=> String
    #   resp.job_run.arn #=> String
    #   resp.job_run.created_by #=> String
    #   resp.job_run.created_at #=> Time
    #   resp.job_run.updated_at #=> Time
    #   resp.job_run.execution_role #=> String
    #   resp.job_run.execution_iam_policy.policy #=> String
    #   resp.job_run.execution_iam_policy.policy_arns #=> Array
    #   resp.job_run.execution_iam_policy.policy_arns[0] #=> String
    #   resp.job_run.state #=> String, one of "SUBMITTED", "PENDING", "SCHEDULED", "RUNNING", "SUCCESS", "FAILED", "CANCELLING", "CANCELLED", "QUEUED"
    #   resp.job_run.state_details #=> String
    #   resp.job_run.release_label #=> String
    #   resp.job_run.configuration_overrides.application_configuration #=> Array
    #   resp.job_run.configuration_overrides.application_configuration[0].classification #=> String
    #   resp.job_run.configuration_overrides.application_configuration[0].properties #=> Hash
    #   resp.job_run.configuration_overrides.application_configuration[0].properties["ConfigurationPropertyKey"] #=> String
    #   resp.job_run.configuration_overrides.application_configuration[0].configurations #=> Types::ConfigurationList
    #   resp.job_run.configuration_overrides.monitoring_configuration.s3_monitoring_configuration.log_uri #=> String
    #   resp.job_run.configuration_overrides.monitoring_configuration.s3_monitoring_configuration.encryption_key_arn #=> String
    #   resp.job_run.configuration_overrides.monitoring_configuration.managed_persistence_monitoring_configuration.enabled #=> Boolean
    #   resp.job_run.configuration_overrides.monitoring_configuration.managed_persistence_monitoring_configuration.encryption_key_arn #=> String
    #   resp.job_run.configuration_overrides.monitoring_configuration.cloud_watch_logging_configuration.enabled #=> Boolean
    #   resp.job_run.configuration_overrides.monitoring_configuration.cloud_watch_logging_configuration.log_group_name #=> String
    #   resp.job_run.configuration_overrides.monitoring_configuration.cloud_watch_logging_configuration.log_stream_name_prefix #=> String
    #   resp.job_run.configuration_overrides.monitoring_configuration.cloud_watch_logging_configuration.encryption_key_arn #=> String
    #   resp.job_run.configuration_overrides.monitoring_configuration.cloud_watch_logging_configuration.log_types #=> Hash
    #   resp.job_run.configuration_overrides.monitoring_configuration.cloud_watch_logging_configuration.log_types["WorkerTypeString"] #=> Array
    #   resp.job_run.configuration_overrides.monitoring_configuration.cloud_watch_logging_configuration.log_types["WorkerTypeString"][0] #=> String
    #   resp.job_run.configuration_overrides.monitoring_configuration.prometheus_monitoring_configuration.remote_write_url #=> String
    #   resp.job_run.job_driver.spark_submit.entry_point #=> String
    #   resp.job_run.job_driver.spark_submit.entry_point_arguments #=> Array
    #   resp.job_run.job_driver.spark_submit.entry_point_arguments[0] #=> String
    #   resp.job_run.job_driver.spark_submit.spark_submit_parameters #=> String
    #   resp.job_run.job_driver.hive.query #=> String
    #   resp.job_run.job_driver.hive.init_query_file #=> String
    #   resp.job_run.job_driver.hive.parameters #=> String
    #   resp.job_run.tags #=> Hash
    #   resp.job_run.tags["TagKey"] #=> String
    #   resp.job_run.total_resource_utilization.v_cpu_hour #=> Float
    #   resp.job_run.total_resource_utilization.memory_gb_hour #=> Float
    #   resp.job_run.total_resource_utilization.storage_gb_hour #=> Float
    #   resp.job_run.network_configuration.subnet_ids #=> Array
    #   resp.job_run.network_configuration.subnet_ids[0] #=> String
    #   resp.job_run.network_configuration.security_group_ids #=> Array
    #   resp.job_run.network_configuration.security_group_ids[0] #=> String
    #   resp.job_run.total_execution_duration_seconds #=> Integer
    #   resp.job_run.execution_timeout_minutes #=> Integer
    #   resp.job_run.billed_resource_utilization.v_cpu_hour #=> Float
    #   resp.job_run.billed_resource_utilization.memory_gb_hour #=> Float
    #   resp.job_run.billed_resource_utilization.storage_gb_hour #=> Float
    #   resp.job_run.mode #=> String, one of "BATCH", "STREAMING"
    #   resp.job_run.retry_policy.max_attempts #=> Integer
    #   resp.job_run.retry_policy.max_failed_attempts_per_hour #=> Integer
    #   resp.job_run.attempt #=> Integer
    #   resp.job_run.attempt_created_at #=> Time
    #   resp.job_run.attempt_updated_at #=> Time
    #   resp.job_run.started_at #=> Time
    #   resp.job_run.ended_at #=> Time
    #   resp.job_run.queued_duration_milliseconds #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-serverless-2021-07-13/GetJobRun AWS API Documentation
    #
    # @overload get_job_run(params = {})
    # @param [Hash] params ({})
    def get_job_run(params = {}, options = {})
      req = build_request(:get_job_run, params)
      req.send_request(options)
    end

    # Lists applications based on a set of parameters.
    #
    # @option params [String] :next_token
    #   The token for the next set of application results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of applications that can be listed.
    #
    # @option params [Array<String>] :states
    #   An optional filter for application states. Note that if this filter
    #   contains multiple states, the resulting list will be grouped by the
    #   state.
    #
    # @return [Types::ListApplicationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListApplicationsResponse#applications #applications} => Array&lt;Types::ApplicationSummary&gt;
    #   * {Types::ListApplicationsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_applications({
    #     next_token: "NextToken",
    #     max_results: 1,
    #     states: ["CREATING"], # accepts CREATING, CREATED, STARTING, STARTED, STOPPING, STOPPED, TERMINATED
    #   })
    #
    # @example Response structure
    #
    #   resp.applications #=> Array
    #   resp.applications[0].id #=> String
    #   resp.applications[0].name #=> String
    #   resp.applications[0].arn #=> String
    #   resp.applications[0].release_label #=> String
    #   resp.applications[0].type #=> String
    #   resp.applications[0].state #=> String, one of "CREATING", "CREATED", "STARTING", "STARTED", "STOPPING", "STOPPED", "TERMINATED"
    #   resp.applications[0].state_details #=> String
    #   resp.applications[0].created_at #=> Time
    #   resp.applications[0].updated_at #=> Time
    #   resp.applications[0].architecture #=> String, one of "ARM64", "X86_64"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-serverless-2021-07-13/ListApplications AWS API Documentation
    #
    # @overload list_applications(params = {})
    # @param [Hash] params ({})
    def list_applications(params = {}, options = {})
      req = build_request(:list_applications, params)
      req.send_request(options)
    end

    # Lists all attempt of a job run.
    #
    # @option params [required, String] :application_id
    #   The ID of the application for which to list job runs.
    #
    # @option params [required, String] :job_run_id
    #   The ID of the job run to list.
    #
    # @option params [String] :next_token
    #   The token for the next set of job run attempt results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of job run attempts to list.
    #
    # @return [Types::ListJobRunAttemptsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListJobRunAttemptsResponse#job_run_attempts #job_run_attempts} => Array&lt;Types::JobRunAttemptSummary&gt;
    #   * {Types::ListJobRunAttemptsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_job_run_attempts({
    #     application_id: "ApplicationId", # required
    #     job_run_id: "JobRunId", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.job_run_attempts #=> Array
    #   resp.job_run_attempts[0].application_id #=> String
    #   resp.job_run_attempts[0].id #=> String
    #   resp.job_run_attempts[0].name #=> String
    #   resp.job_run_attempts[0].mode #=> String, one of "BATCH", "STREAMING"
    #   resp.job_run_attempts[0].arn #=> String
    #   resp.job_run_attempts[0].created_by #=> String
    #   resp.job_run_attempts[0].job_created_at #=> Time
    #   resp.job_run_attempts[0].created_at #=> Time
    #   resp.job_run_attempts[0].updated_at #=> Time
    #   resp.job_run_attempts[0].execution_role #=> String
    #   resp.job_run_attempts[0].state #=> String, one of "SUBMITTED", "PENDING", "SCHEDULED", "RUNNING", "SUCCESS", "FAILED", "CANCELLING", "CANCELLED", "QUEUED"
    #   resp.job_run_attempts[0].state_details #=> String
    #   resp.job_run_attempts[0].release_label #=> String
    #   resp.job_run_attempts[0].type #=> String
    #   resp.job_run_attempts[0].attempt #=> Integer
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-serverless-2021-07-13/ListJobRunAttempts AWS API Documentation
    #
    # @overload list_job_run_attempts(params = {})
    # @param [Hash] params ({})
    def list_job_run_attempts(params = {}, options = {})
      req = build_request(:list_job_run_attempts, params)
      req.send_request(options)
    end

    # Lists job runs based on a set of parameters.
    #
    # @option params [required, String] :application_id
    #   The ID of the application for which to list the job run.
    #
    # @option params [String] :next_token
    #   The token for the next set of job run results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of job runs that can be listed.
    #
    # @option params [Time,DateTime,Date,Integer,String] :created_at_after
    #   The lower bound of the option to filter by creation date and time.
    #
    # @option params [Time,DateTime,Date,Integer,String] :created_at_before
    #   The upper bound of the option to filter by creation date and time.
    #
    # @option params [Array<String>] :states
    #   An optional filter for job run states. Note that if this filter
    #   contains multiple states, the resulting list will be grouped by the
    #   state.
    #
    # @option params [String] :mode
    #   The mode of the job runs to list.
    #
    # @return [Types::ListJobRunsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListJobRunsResponse#job_runs #job_runs} => Array&lt;Types::JobRunSummary&gt;
    #   * {Types::ListJobRunsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_job_runs({
    #     application_id: "ApplicationId", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #     created_at_after: Time.now,
    #     created_at_before: Time.now,
    #     states: ["SUBMITTED"], # accepts SUBMITTED, PENDING, SCHEDULED, RUNNING, SUCCESS, FAILED, CANCELLING, CANCELLED, QUEUED
    #     mode: "BATCH", # accepts BATCH, STREAMING
    #   })
    #
    # @example Response structure
    #
    #   resp.job_runs #=> Array
    #   resp.job_runs[0].application_id #=> String
    #   resp.job_runs[0].id #=> String
    #   resp.job_runs[0].name #=> String
    #   resp.job_runs[0].mode #=> String, one of "BATCH", "STREAMING"
    #   resp.job_runs[0].arn #=> String
    #   resp.job_runs[0].created_by #=> String
    #   resp.job_runs[0].created_at #=> Time
    #   resp.job_runs[0].updated_at #=> Time
    #   resp.job_runs[0].execution_role #=> String
    #   resp.job_runs[0].state #=> String, one of "SUBMITTED", "PENDING", "SCHEDULED", "RUNNING", "SUCCESS", "FAILED", "CANCELLING", "CANCELLED", "QUEUED"
    #   resp.job_runs[0].state_details #=> String
    #   resp.job_runs[0].release_label #=> String
    #   resp.job_runs[0].type #=> String
    #   resp.job_runs[0].attempt #=> Integer
    #   resp.job_runs[0].attempt_created_at #=> Time
    #   resp.job_runs[0].attempt_updated_at #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-serverless-2021-07-13/ListJobRuns AWS API Documentation
    #
    # @overload list_job_runs(params = {})
    # @param [Hash] params ({})
    def list_job_runs(params = {}, options = {})
      req = build_request(:list_job_runs, params)
      req.send_request(options)
    end

    # Lists the tags assigned to the resources.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) that identifies the resource to list
    #   the tags for. Currently, the supported resources are Amazon EMR
    #   Serverless applications and job runs.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-serverless-2021-07-13/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Starts a specified application and initializes initial capacity if
    # configured.
    #
    # @option params [required, String] :application_id
    #   The ID of the application to start.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_application({
    #     application_id: "ApplicationId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-serverless-2021-07-13/StartApplication AWS API Documentation
    #
    # @overload start_application(params = {})
    # @param [Hash] params ({})
    def start_application(params = {}, options = {})
      req = build_request(:start_application, params)
      req.send_request(options)
    end

    # Starts a job run.
    #
    # @option params [required, String] :application_id
    #   The ID of the application on which to run the job.
    #
    # @option params [required, String] :client_token
    #   The client idempotency token of the job run to start. Its value must
    #   be unique for each request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :execution_role_arn
    #   The execution role ARN for the job run.
    #
    # @option params [Types::JobRunExecutionIamPolicy] :execution_iam_policy
    #   You can pass an optional IAM policy. The resulting job IAM role
    #   permissions will be an intersection of this policy and the policy
    #   associated with your job execution role.
    #
    # @option params [Types::JobDriver] :job_driver
    #   The job driver for the job run.
    #
    # @option params [Types::ConfigurationOverrides] :configuration_overrides
    #   The configuration overrides for the job run.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags assigned to the job run.
    #
    # @option params [Integer] :execution_timeout_minutes
    #   The maximum duration for the job run to run. If the job run runs
    #   beyond this duration, it will be automatically cancelled.
    #
    # @option params [String] :name
    #   The optional job run name. This doesn't have to be unique.
    #
    # @option params [String] :mode
    #   The mode of the job run when it starts.
    #
    # @option params [Types::RetryPolicy] :retry_policy
    #   The retry policy when job run starts.
    #
    # @return [Types::StartJobRunResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartJobRunResponse#application_id #application_id} => String
    #   * {Types::StartJobRunResponse#job_run_id #job_run_id} => String
    #   * {Types::StartJobRunResponse#arn #arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_job_run({
    #     application_id: "ApplicationId", # required
    #     client_token: "ClientToken", # required
    #     execution_role_arn: "IAMRoleArn", # required
    #     execution_iam_policy: {
    #       policy: "PolicyDocument",
    #       policy_arns: ["Arn"],
    #     },
    #     job_driver: {
    #       spark_submit: {
    #         entry_point: "EntryPointPath", # required
    #         entry_point_arguments: ["EntryPointArgument"],
    #         spark_submit_parameters: "SparkSubmitParameters",
    #       },
    #       hive: {
    #         query: "Query", # required
    #         init_query_file: "InitScriptPath",
    #         parameters: "HiveCliParameters",
    #       },
    #     },
    #     configuration_overrides: {
    #       application_configuration: [
    #         {
    #           classification: "String1024", # required
    #           properties: {
    #             "ConfigurationPropertyKey" => "ConfigurationPropertyValue",
    #           },
    #           configurations: {
    #             # recursive ConfigurationList
    #           },
    #         },
    #       ],
    #       monitoring_configuration: {
    #         s3_monitoring_configuration: {
    #           log_uri: "UriString",
    #           encryption_key_arn: "EncryptionKeyArn",
    #         },
    #         managed_persistence_monitoring_configuration: {
    #           enabled: false,
    #           encryption_key_arn: "EncryptionKeyArn",
    #         },
    #         cloud_watch_logging_configuration: {
    #           enabled: false, # required
    #           log_group_name: "LogGroupName",
    #           log_stream_name_prefix: "LogStreamNamePrefix",
    #           encryption_key_arn: "EncryptionKeyArn",
    #           log_types: {
    #             "WorkerTypeString" => ["LogTypeString"],
    #           },
    #         },
    #         prometheus_monitoring_configuration: {
    #           remote_write_url: "PrometheusUrlString",
    #         },
    #       },
    #     },
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     execution_timeout_minutes: 1,
    #     name: "String256",
    #     mode: "BATCH", # accepts BATCH, STREAMING
    #     retry_policy: {
    #       max_attempts: 1,
    #       max_failed_attempts_per_hour: 1,
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.application_id #=> String
    #   resp.job_run_id #=> String
    #   resp.arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-serverless-2021-07-13/StartJobRun AWS API Documentation
    #
    # @overload start_job_run(params = {})
    # @param [Hash] params ({})
    def start_job_run(params = {}, options = {})
      req = build_request(:start_job_run, params)
      req.send_request(options)
    end

    # Stops a specified application and releases initial capacity if
    # configured. All scheduled and running jobs must be completed or
    # cancelled before stopping an application.
    #
    # @option params [required, String] :application_id
    #   The ID of the application to stop.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_application({
    #     application_id: "ApplicationId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-serverless-2021-07-13/StopApplication AWS API Documentation
    #
    # @overload stop_application(params = {})
    # @param [Hash] params ({})
    def stop_application(params = {}, options = {})
      req = build_request(:stop_application, params)
      req.send_request(options)
    end

    # Assigns tags to resources. A tag is a label that you assign to an
    # Amazon Web Services resource. Each tag consists of a key and an
    # optional value, both of which you define. Tags enable you to
    # categorize your Amazon Web Services resources by attributes such as
    # purpose, owner, or environment. When you have many resources of the
    # same type, you can quickly identify a specific resource based on the
    # tags you've assigned to it.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) that identifies the resource to list
    #   the tags for. Currently, the supported resources are Amazon EMR
    #   Serverless applications and job runs.
    #
    # @option params [required, Hash<String,String>] :tags
    #   The tags to add to the resource. A tag is an array of key-value pairs.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-serverless-2021-07-13/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes tags from resources.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) that identifies the resource to list
    #   the tags for. Currently, the supported resources are Amazon EMR
    #   Serverless applications and job runs.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The keys of the tags to be removed.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-serverless-2021-07-13/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates a specified application. An application has to be in a stopped
    # or created state in order to be updated.
    #
    # @option params [required, String] :application_id
    #   The ID of the application to update.
    #
    # @option params [required, String] :client_token
    #   The client idempotency token of the application to update. Its value
    #   must be unique for each request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Hash<String,Types::InitialCapacityConfig>] :initial_capacity
    #   The capacity to initialize when the application is updated.
    #
    # @option params [Types::MaximumAllowedResources] :maximum_capacity
    #   The maximum capacity to allocate when the application is updated. This
    #   is cumulative across all workers at any given point in time during the
    #   lifespan of the application. No new resources will be created once any
    #   one of the defined limits is hit.
    #
    # @option params [Types::AutoStartConfig] :auto_start_configuration
    #   The configuration for an application to automatically start on job
    #   submission.
    #
    # @option params [Types::AutoStopConfig] :auto_stop_configuration
    #   The configuration for an application to automatically stop after a
    #   certain amount of time being idle.
    #
    # @option params [Types::NetworkConfiguration] :network_configuration
    #   The network configuration for customer VPC connectivity.
    #
    # @option params [String] :architecture
    #   The CPU architecture of an application.
    #
    # @option params [Types::ImageConfigurationInput] :image_configuration
    #   The image configuration to be used for all worker types. You can
    #   either set this parameter or `imageConfiguration` for each worker type
    #   in `WorkerTypeSpecificationInput`.
    #
    # @option params [Hash<String,Types::WorkerTypeSpecificationInput>] :worker_type_specifications
    #   The key-value pairs that specify worker type to
    #   `WorkerTypeSpecificationInput`. This parameter must contain all valid
    #   worker types for a Spark or Hive application. Valid worker types
    #   include `Driver` and `Executor` for Spark applications and
    #   `HiveDriver` and `TezTask` for Hive applications. You can either set
    #   image details in this parameter for each worker type, or in
    #   `imageConfiguration` for all worker types.
    #
    # @option params [Types::InteractiveConfiguration] :interactive_configuration
    #   The interactive configuration object that contains new interactive use
    #   cases when the application is updated.
    #
    # @option params [String] :release_label
    #   The Amazon EMR release label for the application. You can change the
    #   release label to use a different release of Amazon EMR.
    #
    # @option params [Array<Types::Configuration>] :runtime_configuration
    #   The [Configuration][1] specifications to use when updating an
    #   application. Each configuration consists of a classification and
    #   properties. This configuration is applied across all the job runs
    #   submitted under the application.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/emr-serverless/latest/APIReference/API_Configuration.html
    #
    # @option params [Types::MonitoringConfiguration] :monitoring_configuration
    #   The configuration setting for monitoring.
    #
    # @option params [Types::SchedulerConfiguration] :scheduler_configuration
    #   The scheduler configuration for batch and streaming jobs running on
    #   this application. Supported with release labels emr-7.0.0 and above.
    #
    # @option params [Types::IdentityCenterConfigurationInput] :identity_center_configuration
    #   Specifies the IAM Identity Center configuration used to enable or
    #   disable trusted identity propagation. When provided, this
    #   configuration determines how the application interacts with IAM
    #   Identity Center for user authentication and access control.
    #
    # @return [Types::UpdateApplicationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateApplicationResponse#application #application} => Types::Application
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_application({
    #     application_id: "ApplicationId", # required
    #     client_token: "ClientToken", # required
    #     initial_capacity: {
    #       "WorkerTypeString" => {
    #         worker_count: 1, # required
    #         worker_configuration: {
    #           cpu: "CpuSize", # required
    #           memory: "MemorySize", # required
    #           disk: "DiskSize",
    #           disk_type: "DiskType",
    #         },
    #       },
    #     },
    #     maximum_capacity: {
    #       cpu: "CpuSize", # required
    #       memory: "MemorySize", # required
    #       disk: "DiskSize",
    #     },
    #     auto_start_configuration: {
    #       enabled: false,
    #     },
    #     auto_stop_configuration: {
    #       enabled: false,
    #       idle_timeout_minutes: 1,
    #     },
    #     network_configuration: {
    #       subnet_ids: ["SubnetString"],
    #       security_group_ids: ["SecurityGroupString"],
    #     },
    #     architecture: "ARM64", # accepts ARM64, X86_64
    #     image_configuration: {
    #       image_uri: "ImageUri",
    #     },
    #     worker_type_specifications: {
    #       "WorkerTypeString" => {
    #         image_configuration: {
    #           image_uri: "ImageUri",
    #         },
    #       },
    #     },
    #     interactive_configuration: {
    #       studio_enabled: false,
    #       livy_endpoint_enabled: false,
    #     },
    #     release_label: "ReleaseLabel",
    #     runtime_configuration: [
    #       {
    #         classification: "String1024", # required
    #         properties: {
    #           "ConfigurationPropertyKey" => "ConfigurationPropertyValue",
    #         },
    #         configurations: {
    #           # recursive ConfigurationList
    #         },
    #       },
    #     ],
    #     monitoring_configuration: {
    #       s3_monitoring_configuration: {
    #         log_uri: "UriString",
    #         encryption_key_arn: "EncryptionKeyArn",
    #       },
    #       managed_persistence_monitoring_configuration: {
    #         enabled: false,
    #         encryption_key_arn: "EncryptionKeyArn",
    #       },
    #       cloud_watch_logging_configuration: {
    #         enabled: false, # required
    #         log_group_name: "LogGroupName",
    #         log_stream_name_prefix: "LogStreamNamePrefix",
    #         encryption_key_arn: "EncryptionKeyArn",
    #         log_types: {
    #           "WorkerTypeString" => ["LogTypeString"],
    #         },
    #       },
    #       prometheus_monitoring_configuration: {
    #         remote_write_url: "PrometheusUrlString",
    #       },
    #     },
    #     scheduler_configuration: {
    #       queue_timeout_minutes: 1,
    #       max_concurrent_runs: 1,
    #     },
    #     identity_center_configuration: {
    #       identity_center_instance_arn: "IdentityCenterInstanceArn",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.application.application_id #=> String
    #   resp.application.name #=> String
    #   resp.application.arn #=> String
    #   resp.application.release_label #=> String
    #   resp.application.type #=> String
    #   resp.application.state #=> String, one of "CREATING", "CREATED", "STARTING", "STARTED", "STOPPING", "STOPPED", "TERMINATED"
    #   resp.application.state_details #=> String
    #   resp.application.initial_capacity #=> Hash
    #   resp.application.initial_capacity["WorkerTypeString"].worker_count #=> Integer
    #   resp.application.initial_capacity["WorkerTypeString"].worker_configuration.cpu #=> String
    #   resp.application.initial_capacity["WorkerTypeString"].worker_configuration.memory #=> String
    #   resp.application.initial_capacity["WorkerTypeString"].worker_configuration.disk #=> String
    #   resp.application.initial_capacity["WorkerTypeString"].worker_configuration.disk_type #=> String
    #   resp.application.maximum_capacity.cpu #=> String
    #   resp.application.maximum_capacity.memory #=> String
    #   resp.application.maximum_capacity.disk #=> String
    #   resp.application.created_at #=> Time
    #   resp.application.updated_at #=> Time
    #   resp.application.tags #=> Hash
    #   resp.application.tags["TagKey"] #=> String
    #   resp.application.auto_start_configuration.enabled #=> Boolean
    #   resp.application.auto_stop_configuration.enabled #=> Boolean
    #   resp.application.auto_stop_configuration.idle_timeout_minutes #=> Integer
    #   resp.application.network_configuration.subnet_ids #=> Array
    #   resp.application.network_configuration.subnet_ids[0] #=> String
    #   resp.application.network_configuration.security_group_ids #=> Array
    #   resp.application.network_configuration.security_group_ids[0] #=> String
    #   resp.application.architecture #=> String, one of "ARM64", "X86_64"
    #   resp.application.image_configuration.image_uri #=> String
    #   resp.application.image_configuration.resolved_image_digest #=> String
    #   resp.application.worker_type_specifications #=> Hash
    #   resp.application.worker_type_specifications["WorkerTypeString"].image_configuration.image_uri #=> String
    #   resp.application.worker_type_specifications["WorkerTypeString"].image_configuration.resolved_image_digest #=> String
    #   resp.application.runtime_configuration #=> Array
    #   resp.application.runtime_configuration[0].classification #=> String
    #   resp.application.runtime_configuration[0].properties #=> Hash
    #   resp.application.runtime_configuration[0].properties["ConfigurationPropertyKey"] #=> String
    #   resp.application.runtime_configuration[0].configurations #=> Types::ConfigurationList
    #   resp.application.monitoring_configuration.s3_monitoring_configuration.log_uri #=> String
    #   resp.application.monitoring_configuration.s3_monitoring_configuration.encryption_key_arn #=> String
    #   resp.application.monitoring_configuration.managed_persistence_monitoring_configuration.enabled #=> Boolean
    #   resp.application.monitoring_configuration.managed_persistence_monitoring_configuration.encryption_key_arn #=> String
    #   resp.application.monitoring_configuration.cloud_watch_logging_configuration.enabled #=> Boolean
    #   resp.application.monitoring_configuration.cloud_watch_logging_configuration.log_group_name #=> String
    #   resp.application.monitoring_configuration.cloud_watch_logging_configuration.log_stream_name_prefix #=> String
    #   resp.application.monitoring_configuration.cloud_watch_logging_configuration.encryption_key_arn #=> String
    #   resp.application.monitoring_configuration.cloud_watch_logging_configuration.log_types #=> Hash
    #   resp.application.monitoring_configuration.cloud_watch_logging_configuration.log_types["WorkerTypeString"] #=> Array
    #   resp.application.monitoring_configuration.cloud_watch_logging_configuration.log_types["WorkerTypeString"][0] #=> String
    #   resp.application.monitoring_configuration.prometheus_monitoring_configuration.remote_write_url #=> String
    #   resp.application.interactive_configuration.studio_enabled #=> Boolean
    #   resp.application.interactive_configuration.livy_endpoint_enabled #=> Boolean
    #   resp.application.scheduler_configuration.queue_timeout_minutes #=> Integer
    #   resp.application.scheduler_configuration.max_concurrent_runs #=> Integer
    #   resp.application.identity_center_configuration.identity_center_instance_arn #=> String
    #   resp.application.identity_center_configuration.identity_center_application_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-serverless-2021-07-13/UpdateApplication AWS API Documentation
    #
    # @overload update_application(params = {})
    # @param [Hash] params ({})
    def update_application(params = {}, options = {})
      req = build_request(:update_application, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::EMRServerless')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-emrserverless'
      context[:gem_version] = '1.55.0'
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
