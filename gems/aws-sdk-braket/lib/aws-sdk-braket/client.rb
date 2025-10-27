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

module Aws::Braket
  # An API client for Braket.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::Braket::Client.new(
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

    @identifier = :braket

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
    add_plugin(Aws::Braket::Plugins::Endpoints)

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
    #   @option options [Aws::Braket::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::Braket::EndpointParameters`.
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

    # Cancels an Amazon Braket hybrid job.
    #
    # @option params [required, String] :job_arn
    #   The ARN of the Amazon Braket hybrid job to cancel.
    #
    # @return [Types::CancelJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CancelJobResponse#job_arn #job_arn} => String
    #   * {Types::CancelJobResponse#cancellation_status #cancellation_status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_job({
    #     job_arn: "JobArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.job_arn #=> String
    #   resp.cancellation_status #=> String, one of "CANCELLING", "CANCELLED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/braket-2019-09-01/CancelJob AWS API Documentation
    #
    # @overload cancel_job(params = {})
    # @param [Hash] params ({})
    def cancel_job(params = {}, options = {})
      req = build_request(:cancel_job, params)
      req.send_request(options)
    end

    # Cancels the specified task.
    #
    # @option params [required, String] :quantum_task_arn
    #   The ARN of the quantum task to cancel.
    #
    # @option params [required, String] :client_token
    #   The client token associated with the cancellation request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CancelQuantumTaskResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CancelQuantumTaskResponse#quantum_task_arn #quantum_task_arn} => String
    #   * {Types::CancelQuantumTaskResponse#cancellation_status #cancellation_status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_quantum_task({
    #     quantum_task_arn: "QuantumTaskArn", # required
    #     client_token: "String64", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.quantum_task_arn #=> String
    #   resp.cancellation_status #=> String, one of "CANCELLING", "CANCELLED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/braket-2019-09-01/CancelQuantumTask AWS API Documentation
    #
    # @overload cancel_quantum_task(params = {})
    # @param [Hash] params ({})
    def cancel_quantum_task(params = {}, options = {})
      req = build_request(:cancel_quantum_task, params)
      req.send_request(options)
    end

    # Creates an Amazon Braket hybrid job.
    #
    # @option params [required, String] :client_token
    #   The client token associated with this request that guarantees that the
    #   request is idempotent.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, Types::AlgorithmSpecification] :algorithm_specification
    #   Definition of the Amazon Braket job to be created. Specifies the
    #   container image the job uses and information about the Python scripts
    #   used for entry and training.
    #
    # @option params [Array<Types::InputFileConfig>] :input_data_config
    #   A list of parameters that specify the name and type of input data and
    #   where it is located.
    #
    # @option params [required, Types::JobOutputDataConfig] :output_data_config
    #   The path to the S3 location where you want to store hybrid job
    #   artifacts and the encryption key used to store them.
    #
    # @option params [Types::JobCheckpointConfig] :checkpoint_config
    #   Information about the output locations for hybrid job checkpoint data.
    #
    # @option params [required, String] :job_name
    #   The name of the Amazon Braket hybrid job.
    #
    # @option params [required, String] :role_arn
    #   The Amazon Resource Name (ARN) of an IAM role that Amazon Braket can
    #   assume to perform tasks on behalf of a user. It can access user
    #   resources, run an Amazon Braket job container on behalf of user, and
    #   output results and hybrid job details to the users' s3 buckets.
    #
    # @option params [Types::JobStoppingCondition] :stopping_condition
    #   The user-defined criteria that specifies when a hybrid job stops
    #   running.
    #
    # @option params [required, Types::InstanceConfig] :instance_config
    #   Configuration of the resource instances to use while running the
    #   hybrid job on Amazon Braket.
    #
    # @option params [Hash<String,String>] :hyper_parameters
    #   Algorithm-specific parameters used by an Amazon Braket hybrid job that
    #   influence the quality of the training job. The values are set with a
    #   map of JSON key:value pairs, where the key is the name of the
    #   hyperparameter and the value is the value of the hyperparameter.
    #
    #   Do not include any security-sensitive information including account
    #   access IDs, secrets, or tokens in any hyperparameter fields. As part
    #   of the shared responsibility model, you are responsible for any
    #   potential exposure, unauthorized access, or compromise of your
    #   sensitive data if caused by security-sensitive information included in
    #   the request hyperparameter variable or plain text fields.
    #
    # @option params [required, Types::DeviceConfig] :device_config
    #   The quantum processing unit (QPU) or simulator used to create an
    #   Amazon Braket hybrid job.
    #
    # @option params [Hash<String,String>] :tags
    #   Tags to be added to the hybrid job you're creating.
    #
    # @option params [Array<Types::Association>] :associations
    #   The list of Amazon Braket resources associated with the hybrid job.
    #
    # @return [Types::CreateJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateJobResponse#job_arn #job_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_job({
    #     client_token: "String64", # required
    #     algorithm_specification: { # required
    #       script_mode_config: {
    #         entry_point: "String", # required
    #         s3_uri: "S3Path", # required
    #         compression_type: "NONE", # accepts NONE, GZIP
    #       },
    #       container_image: {
    #         uri: "Uri", # required
    #       },
    #     },
    #     input_data_config: [
    #       {
    #         channel_name: "InputFileConfigChannelNameString", # required
    #         content_type: "String256",
    #         data_source: { # required
    #           s3_data_source: { # required
    #             s3_uri: "S3Path", # required
    #           },
    #         },
    #       },
    #     ],
    #     output_data_config: { # required
    #       kms_key_id: "String2048",
    #       s3_path: "S3Path", # required
    #     },
    #     checkpoint_config: {
    #       local_path: "String4096",
    #       s3_uri: "S3Path", # required
    #     },
    #     job_name: "CreateJobRequestJobNameString", # required
    #     role_arn: "RoleArn", # required
    #     stopping_condition: {
    #       max_runtime_in_seconds: 1,
    #     },
    #     instance_config: { # required
    #       instance_type: "ml.m4.xlarge", # required, accepts ml.m4.xlarge, ml.m4.2xlarge, ml.m4.4xlarge, ml.m4.10xlarge, ml.m4.16xlarge, ml.g4dn.xlarge, ml.g4dn.2xlarge, ml.g4dn.4xlarge, ml.g4dn.8xlarge, ml.g4dn.12xlarge, ml.g4dn.16xlarge, ml.m5.large, ml.m5.xlarge, ml.m5.2xlarge, ml.m5.4xlarge, ml.m5.12xlarge, ml.m5.24xlarge, ml.c4.xlarge, ml.c4.2xlarge, ml.c4.4xlarge, ml.c4.8xlarge, ml.p2.xlarge, ml.p2.8xlarge, ml.p2.16xlarge, ml.p3.2xlarge, ml.p3.8xlarge, ml.p3.16xlarge, ml.p3dn.24xlarge, ml.p4d.24xlarge, ml.c5.xlarge, ml.c5.2xlarge, ml.c5.4xlarge, ml.c5.9xlarge, ml.c5.18xlarge, ml.c5n.xlarge, ml.c5n.2xlarge, ml.c5n.4xlarge, ml.c5n.9xlarge, ml.c5n.18xlarge
    #       volume_size_in_gb: 1, # required
    #       instance_count: 1,
    #     },
    #     hyper_parameters: {
    #       "String256" => "HyperParametersValueString",
    #     },
    #     device_config: { # required
    #       device: "String256", # required
    #     },
    #     tags: {
    #       "String" => "String",
    #     },
    #     associations: [
    #       {
    #         arn: "BraketResourceArn", # required
    #         type: "RESERVATION_TIME_WINDOW_ARN", # required, accepts RESERVATION_TIME_WINDOW_ARN
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.job_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/braket-2019-09-01/CreateJob AWS API Documentation
    #
    # @overload create_job(params = {})
    # @param [Hash] params ({})
    def create_job(params = {}, options = {})
      req = build_request(:create_job, params)
      req.send_request(options)
    end

    # Creates a quantum task.
    #
    # @option params [required, String] :client_token
    #   The client token associated with the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :device_arn
    #   The ARN of the device to run the quantum task on.
    #
    # @option params [String] :device_parameters
    #   The parameters for the device to run the quantum task on.
    #
    #   **SDK automatically handles json encoding and base64 encoding for you
    #   when the required value (Hash, Array, etc.) is provided according to
    #   the description.**
    #
    # @option params [required, Integer] :shots
    #   The number of shots to use for the quantum task.
    #
    # @option params [required, String] :output_s3_bucket
    #   The S3 bucket to store quantum task result files in.
    #
    # @option params [required, String] :output_s3_key_prefix
    #   The key prefix for the location in the S3 bucket to store quantum task
    #   results in.
    #
    # @option params [required, String] :action
    #   The action associated with the quantum task.
    #
    #   **SDK automatically handles json encoding and base64 encoding for you
    #   when the required value (Hash, Array, etc.) is provided according to
    #   the description.**
    #
    # @option params [Hash<String,String>] :tags
    #   Tags to be added to the quantum task you're creating.
    #
    # @option params [String] :job_token
    #   The token for an Amazon Braket hybrid job that associates it with the
    #   quantum task.
    #
    # @option params [Array<Types::Association>] :associations
    #   The list of Amazon Braket resources associated with the quantum task.
    #
    # @return [Types::CreateQuantumTaskResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateQuantumTaskResponse#quantum_task_arn #quantum_task_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_quantum_task({
    #     client_token: "String64", # required
    #     device_arn: "DeviceArn", # required
    #     device_parameters: "CreateQuantumTaskRequestDeviceParametersString",
    #     shots: 1, # required
    #     output_s3_bucket: "CreateQuantumTaskRequestOutputS3BucketString", # required
    #     output_s3_key_prefix: "CreateQuantumTaskRequestOutputS3KeyPrefixString", # required
    #     action: "JsonValue", # required
    #     tags: {
    #       "String" => "String",
    #     },
    #     job_token: "JobToken",
    #     associations: [
    #       {
    #         arn: "BraketResourceArn", # required
    #         type: "RESERVATION_TIME_WINDOW_ARN", # required, accepts RESERVATION_TIME_WINDOW_ARN
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.quantum_task_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/braket-2019-09-01/CreateQuantumTask AWS API Documentation
    #
    # @overload create_quantum_task(params = {})
    # @param [Hash] params ({})
    def create_quantum_task(params = {}, options = {})
      req = build_request(:create_quantum_task, params)
      req.send_request(options)
    end

    # Retrieves the devices available in Amazon Braket.
    #
    # <note markdown="1"> For backwards compatibility with older versions of BraketSchemas,
    # OpenQASM information is omitted from GetDevice API calls. To get this
    # information the user-agent needs to present a recent version of the
    # BraketSchemas (1.8.0 or later). The Braket SDK automatically reports
    # this for you. If you do not see OpenQASM results in the GetDevice
    # response when using a Braket SDK, you may need to set
    # AWS\_EXECUTION\_ENV environment variable to configure user-agent. See
    # the code examples provided below for how to do this for the AWS CLI,
    # Boto3, and the Go, Java, and JavaScript/TypeScript SDKs.
    #
    #  </note>
    #
    # @option params [required, String] :device_arn
    #   The ARN of the device to retrieve.
    #
    # @return [Types::GetDeviceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDeviceResponse#device_arn #device_arn} => String
    #   * {Types::GetDeviceResponse#device_name #device_name} => String
    #   * {Types::GetDeviceResponse#provider_name #provider_name} => String
    #   * {Types::GetDeviceResponse#device_type #device_type} => String
    #   * {Types::GetDeviceResponse#device_status #device_status} => String
    #   * {Types::GetDeviceResponse#device_capabilities #device_capabilities} => String
    #   * {Types::GetDeviceResponse#device_queue_info #device_queue_info} => Array&lt;Types::DeviceQueueInfo&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_device({
    #     device_arn: "DeviceArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.device_arn #=> String
    #   resp.device_name #=> String
    #   resp.provider_name #=> String
    #   resp.device_type #=> String, one of "QPU", "SIMULATOR"
    #   resp.device_status #=> String, one of "ONLINE", "OFFLINE", "RETIRED"
    #   resp.device_capabilities #=> String
    #   resp.device_queue_info #=> Array
    #   resp.device_queue_info[0].queue #=> String, one of "QUANTUM_TASKS_QUEUE", "JOBS_QUEUE"
    #   resp.device_queue_info[0].queue_size #=> String
    #   resp.device_queue_info[0].queue_priority #=> String, one of "Normal", "Priority"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/braket-2019-09-01/GetDevice AWS API Documentation
    #
    # @overload get_device(params = {})
    # @param [Hash] params ({})
    def get_device(params = {}, options = {})
      req = build_request(:get_device, params)
      req.send_request(options)
    end

    # Retrieves the specified Amazon Braket hybrid job.
    #
    # @option params [required, String] :job_arn
    #   The ARN of the hybrid job to retrieve.
    #
    # @option params [Array<String>] :additional_attribute_names
    #   A list of attributes to return additional information for. Only the
    #   QueueInfo additional attribute name is currently supported.
    #
    # @return [Types::GetJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetJobResponse#status #status} => String
    #   * {Types::GetJobResponse#job_arn #job_arn} => String
    #   * {Types::GetJobResponse#role_arn #role_arn} => String
    #   * {Types::GetJobResponse#failure_reason #failure_reason} => String
    #   * {Types::GetJobResponse#job_name #job_name} => String
    #   * {Types::GetJobResponse#hyper_parameters #hyper_parameters} => Hash&lt;String,String&gt;
    #   * {Types::GetJobResponse#input_data_config #input_data_config} => Array&lt;Types::InputFileConfig&gt;
    #   * {Types::GetJobResponse#output_data_config #output_data_config} => Types::JobOutputDataConfig
    #   * {Types::GetJobResponse#stopping_condition #stopping_condition} => Types::JobStoppingCondition
    #   * {Types::GetJobResponse#checkpoint_config #checkpoint_config} => Types::JobCheckpointConfig
    #   * {Types::GetJobResponse#algorithm_specification #algorithm_specification} => Types::AlgorithmSpecification
    #   * {Types::GetJobResponse#instance_config #instance_config} => Types::InstanceConfig
    #   * {Types::GetJobResponse#created_at #created_at} => Time
    #   * {Types::GetJobResponse#started_at #started_at} => Time
    #   * {Types::GetJobResponse#ended_at #ended_at} => Time
    #   * {Types::GetJobResponse#billable_duration #billable_duration} => Integer
    #   * {Types::GetJobResponse#device_config #device_config} => Types::DeviceConfig
    #   * {Types::GetJobResponse#events #events} => Array&lt;Types::JobEventDetails&gt;
    #   * {Types::GetJobResponse#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::GetJobResponse#queue_info #queue_info} => Types::HybridJobQueueInfo
    #   * {Types::GetJobResponse#associations #associations} => Array&lt;Types::Association&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_job({
    #     job_arn: "JobArn", # required
    #     additional_attribute_names: ["QueueInfo"], # accepts QueueInfo
    #   })
    #
    # @example Response structure
    #
    #   resp.status #=> String, one of "QUEUED", "RUNNING", "COMPLETED", "FAILED", "CANCELLING", "CANCELLED"
    #   resp.job_arn #=> String
    #   resp.role_arn #=> String
    #   resp.failure_reason #=> String
    #   resp.job_name #=> String
    #   resp.hyper_parameters #=> Hash
    #   resp.hyper_parameters["String256"] #=> String
    #   resp.input_data_config #=> Array
    #   resp.input_data_config[0].channel_name #=> String
    #   resp.input_data_config[0].content_type #=> String
    #   resp.input_data_config[0].data_source.s3_data_source.s3_uri #=> String
    #   resp.output_data_config.kms_key_id #=> String
    #   resp.output_data_config.s3_path #=> String
    #   resp.stopping_condition.max_runtime_in_seconds #=> Integer
    #   resp.checkpoint_config.local_path #=> String
    #   resp.checkpoint_config.s3_uri #=> String
    #   resp.algorithm_specification.script_mode_config.entry_point #=> String
    #   resp.algorithm_specification.script_mode_config.s3_uri #=> String
    #   resp.algorithm_specification.script_mode_config.compression_type #=> String, one of "NONE", "GZIP"
    #   resp.algorithm_specification.container_image.uri #=> String
    #   resp.instance_config.instance_type #=> String, one of "ml.m4.xlarge", "ml.m4.2xlarge", "ml.m4.4xlarge", "ml.m4.10xlarge", "ml.m4.16xlarge", "ml.g4dn.xlarge", "ml.g4dn.2xlarge", "ml.g4dn.4xlarge", "ml.g4dn.8xlarge", "ml.g4dn.12xlarge", "ml.g4dn.16xlarge", "ml.m5.large", "ml.m5.xlarge", "ml.m5.2xlarge", "ml.m5.4xlarge", "ml.m5.12xlarge", "ml.m5.24xlarge", "ml.c4.xlarge", "ml.c4.2xlarge", "ml.c4.4xlarge", "ml.c4.8xlarge", "ml.p2.xlarge", "ml.p2.8xlarge", "ml.p2.16xlarge", "ml.p3.2xlarge", "ml.p3.8xlarge", "ml.p3.16xlarge", "ml.p3dn.24xlarge", "ml.p4d.24xlarge", "ml.c5.xlarge", "ml.c5.2xlarge", "ml.c5.4xlarge", "ml.c5.9xlarge", "ml.c5.18xlarge", "ml.c5n.xlarge", "ml.c5n.2xlarge", "ml.c5n.4xlarge", "ml.c5n.9xlarge", "ml.c5n.18xlarge"
    #   resp.instance_config.volume_size_in_gb #=> Integer
    #   resp.instance_config.instance_count #=> Integer
    #   resp.created_at #=> Time
    #   resp.started_at #=> Time
    #   resp.ended_at #=> Time
    #   resp.billable_duration #=> Integer
    #   resp.device_config.device #=> String
    #   resp.events #=> Array
    #   resp.events[0].event_type #=> String, one of "WAITING_FOR_PRIORITY", "QUEUED_FOR_EXECUTION", "STARTING_INSTANCE", "DOWNLOADING_DATA", "RUNNING", "DEPRIORITIZED_DUE_TO_INACTIVITY", "UPLOADING_RESULTS", "COMPLETED", "FAILED", "MAX_RUNTIME_EXCEEDED", "CANCELLED"
    #   resp.events[0].time_of_event #=> Time
    #   resp.events[0].message #=> String
    #   resp.tags #=> Hash
    #   resp.tags["String"] #=> String
    #   resp.queue_info.queue #=> String, one of "QUANTUM_TASKS_QUEUE", "JOBS_QUEUE"
    #   resp.queue_info.position #=> String
    #   resp.queue_info.message #=> String
    #   resp.associations #=> Array
    #   resp.associations[0].arn #=> String
    #   resp.associations[0].type #=> String, one of "RESERVATION_TIME_WINDOW_ARN"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/braket-2019-09-01/GetJob AWS API Documentation
    #
    # @overload get_job(params = {})
    # @param [Hash] params ({})
    def get_job(params = {}, options = {})
      req = build_request(:get_job, params)
      req.send_request(options)
    end

    # Retrieves the specified quantum task.
    #
    # @option params [required, String] :quantum_task_arn
    #   The ARN of the quantum task to retrieve.
    #
    # @option params [Array<String>] :additional_attribute_names
    #   A list of attributes to return additional information for. Only the
    #   QueueInfo additional attribute name is currently supported.
    #
    # @return [Types::GetQuantumTaskResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetQuantumTaskResponse#quantum_task_arn #quantum_task_arn} => String
    #   * {Types::GetQuantumTaskResponse#status #status} => String
    #   * {Types::GetQuantumTaskResponse#failure_reason #failure_reason} => String
    #   * {Types::GetQuantumTaskResponse#device_arn #device_arn} => String
    #   * {Types::GetQuantumTaskResponse#device_parameters #device_parameters} => String
    #   * {Types::GetQuantumTaskResponse#shots #shots} => Integer
    #   * {Types::GetQuantumTaskResponse#output_s3_bucket #output_s3_bucket} => String
    #   * {Types::GetQuantumTaskResponse#output_s3_directory #output_s3_directory} => String
    #   * {Types::GetQuantumTaskResponse#created_at #created_at} => Time
    #   * {Types::GetQuantumTaskResponse#ended_at #ended_at} => Time
    #   * {Types::GetQuantumTaskResponse#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::GetQuantumTaskResponse#job_arn #job_arn} => String
    #   * {Types::GetQuantumTaskResponse#queue_info #queue_info} => Types::QuantumTaskQueueInfo
    #   * {Types::GetQuantumTaskResponse#associations #associations} => Array&lt;Types::Association&gt;
    #   * {Types::GetQuantumTaskResponse#num_successful_shots #num_successful_shots} => Integer
    #   * {Types::GetQuantumTaskResponse#action_metadata #action_metadata} => Types::ActionMetadata
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_quantum_task({
    #     quantum_task_arn: "QuantumTaskArn", # required
    #     additional_attribute_names: ["QueueInfo"], # accepts QueueInfo
    #   })
    #
    # @example Response structure
    #
    #   resp.quantum_task_arn #=> String
    #   resp.status #=> String, one of "CREATED", "QUEUED", "RUNNING", "COMPLETED", "FAILED", "CANCELLING", "CANCELLED"
    #   resp.failure_reason #=> String
    #   resp.device_arn #=> String
    #   resp.device_parameters #=> String
    #   resp.shots #=> Integer
    #   resp.output_s3_bucket #=> String
    #   resp.output_s3_directory #=> String
    #   resp.created_at #=> Time
    #   resp.ended_at #=> Time
    #   resp.tags #=> Hash
    #   resp.tags["String"] #=> String
    #   resp.job_arn #=> String
    #   resp.queue_info.queue #=> String, one of "QUANTUM_TASKS_QUEUE", "JOBS_QUEUE"
    #   resp.queue_info.position #=> String
    #   resp.queue_info.queue_priority #=> String, one of "Normal", "Priority"
    #   resp.queue_info.message #=> String
    #   resp.associations #=> Array
    #   resp.associations[0].arn #=> String
    #   resp.associations[0].type #=> String, one of "RESERVATION_TIME_WINDOW_ARN"
    #   resp.num_successful_shots #=> Integer
    #   resp.action_metadata.action_type #=> String
    #   resp.action_metadata.program_count #=> Integer
    #   resp.action_metadata.executable_count #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/braket-2019-09-01/GetQuantumTask AWS API Documentation
    #
    # @overload get_quantum_task(params = {})
    # @param [Hash] params ({})
    def get_quantum_task(params = {}, options = {})
      req = build_request(:get_quantum_task, params)
      req.send_request(options)
    end

    # Shows the tags associated with this resource.
    #
    # @option params [required, String] :resource_arn
    #   Specify the `resourceArn` for the resource whose tags to display.
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
    #   resp.tags["String"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/braket-2019-09-01/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Searches for devices using the specified filters.
    #
    # @option params [String] :next_token
    #   A token used for pagination of results returned in the response. Use
    #   the token returned from the previous request to continue search where
    #   the previous request ended.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in the response.
    #
    # @option params [required, Array<Types::SearchDevicesFilter>] :filters
    #   Array of SearchDevicesFilter objects to use when searching for
    #   devices.
    #
    # @return [Types::SearchDevicesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SearchDevicesResponse#devices #devices} => Array&lt;Types::DeviceSummary&gt;
    #   * {Types::SearchDevicesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_devices({
    #     next_token: "String",
    #     max_results: 1,
    #     filters: [ # required
    #       {
    #         name: "SearchDevicesFilterNameString", # required
    #         values: ["String256"], # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.devices #=> Array
    #   resp.devices[0].device_arn #=> String
    #   resp.devices[0].device_name #=> String
    #   resp.devices[0].provider_name #=> String
    #   resp.devices[0].device_type #=> String, one of "QPU", "SIMULATOR"
    #   resp.devices[0].device_status #=> String, one of "ONLINE", "OFFLINE", "RETIRED"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/braket-2019-09-01/SearchDevices AWS API Documentation
    #
    # @overload search_devices(params = {})
    # @param [Hash] params ({})
    def search_devices(params = {}, options = {})
      req = build_request(:search_devices, params)
      req.send_request(options)
    end

    # Searches for Amazon Braket hybrid jobs that match the specified filter
    # values.
    #
    # @option params [String] :next_token
    #   A token used for pagination of results returned in the response. Use
    #   the token returned from the previous request to continue search where
    #   the previous request ended.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in the response.
    #
    # @option params [required, Array<Types::SearchJobsFilter>] :filters
    #   Array of SearchJobsFilter objects to use when searching for hybrid
    #   jobs.
    #
    # @return [Types::SearchJobsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SearchJobsResponse#jobs #jobs} => Array&lt;Types::JobSummary&gt;
    #   * {Types::SearchJobsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_jobs({
    #     next_token: "String",
    #     max_results: 1,
    #     filters: [ # required
    #       {
    #         name: "String64", # required
    #         values: ["String256"], # required
    #         operator: "LT", # required, accepts LT, LTE, EQUAL, GT, GTE, BETWEEN, CONTAINS
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.jobs #=> Array
    #   resp.jobs[0].status #=> String, one of "QUEUED", "RUNNING", "COMPLETED", "FAILED", "CANCELLING", "CANCELLED"
    #   resp.jobs[0].job_arn #=> String
    #   resp.jobs[0].job_name #=> String
    #   resp.jobs[0].device #=> String
    #   resp.jobs[0].created_at #=> Time
    #   resp.jobs[0].started_at #=> Time
    #   resp.jobs[0].ended_at #=> Time
    #   resp.jobs[0].tags #=> Hash
    #   resp.jobs[0].tags["String"] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/braket-2019-09-01/SearchJobs AWS API Documentation
    #
    # @overload search_jobs(params = {})
    # @param [Hash] params ({})
    def search_jobs(params = {}, options = {})
      req = build_request(:search_jobs, params)
      req.send_request(options)
    end

    # Searches for tasks that match the specified filter values.
    #
    # @option params [String] :next_token
    #   A token used for pagination of results returned in the response. Use
    #   the token returned from the previous request to continue search where
    #   the previous request ended.
    #
    # @option params [Integer] :max_results
    #   Maximum number of results to return in the response.
    #
    # @option params [required, Array<Types::SearchQuantumTasksFilter>] :filters
    #   Array of `SearchQuantumTasksFilter` objects to use when searching for
    #   quantum tasks.
    #
    # @return [Types::SearchQuantumTasksResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SearchQuantumTasksResponse#quantum_tasks #quantum_tasks} => Array&lt;Types::QuantumTaskSummary&gt;
    #   * {Types::SearchQuantumTasksResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_quantum_tasks({
    #     next_token: "String",
    #     max_results: 1,
    #     filters: [ # required
    #       {
    #         name: "String64", # required
    #         values: ["String256"], # required
    #         operator: "LT", # required, accepts LT, LTE, EQUAL, GT, GTE, BETWEEN
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.quantum_tasks #=> Array
    #   resp.quantum_tasks[0].quantum_task_arn #=> String
    #   resp.quantum_tasks[0].status #=> String, one of "CREATED", "QUEUED", "RUNNING", "COMPLETED", "FAILED", "CANCELLING", "CANCELLED"
    #   resp.quantum_tasks[0].device_arn #=> String
    #   resp.quantum_tasks[0].shots #=> Integer
    #   resp.quantum_tasks[0].output_s3_bucket #=> String
    #   resp.quantum_tasks[0].output_s3_directory #=> String
    #   resp.quantum_tasks[0].created_at #=> Time
    #   resp.quantum_tasks[0].ended_at #=> Time
    #   resp.quantum_tasks[0].tags #=> Hash
    #   resp.quantum_tasks[0].tags["String"] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/braket-2019-09-01/SearchQuantumTasks AWS API Documentation
    #
    # @overload search_quantum_tasks(params = {})
    # @param [Hash] params ({})
    def search_quantum_tasks(params = {}, options = {})
      req = build_request(:search_quantum_tasks, params)
      req.send_request(options)
    end

    # Add a tag to the specified resource.
    #
    # @option params [required, String] :resource_arn
    #   Specify the `resourceArn` of the resource to which a tag will be
    #   added.
    #
    # @option params [required, Hash<String,String>] :tags
    #   Specify the tags to add to the resource. Tags can be specified as a
    #   key-value map.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "String", # required
    #     tags: { # required
    #       "String" => "String",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/braket-2019-09-01/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Remove tags from a resource.
    #
    # @option params [required, String] :resource_arn
    #   Specify the `resourceArn` for the resource from which to remove the
    #   tags.
    #
    # @option params [required, Array<String>] :tag_keys
    #   Specify the keys for the tags to remove from the resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "String", # required
    #     tag_keys: ["String"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/braket-2019-09-01/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::Braket')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-braket'
      context[:gem_version] = '1.60.0'
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
