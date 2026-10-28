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

module Aws::SageMakerTrainingSessionRuntime
  # An API client for SageMakerTrainingSessionRuntime.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::SageMakerTrainingSessionRuntime::Client.new(
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

    @identifier = :sagemakertrainingsessionruntime

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
    add_plugin(Aws::SageMakerTrainingSessionRuntime::Plugins::Endpoints)

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
    #     Used only in `standard` and `adaptive` retry modes. Specifies whether
    #     to apply a clock skew correction and retry requests with skewed client
    #     clocks. Takes effect only when `disable_clock_skew_correction` is not set.
    #
    #   @option options [String] :defaults_mode ("legacy")
    #     See {Aws::DefaultsModeConfiguration} for a list of the
    #     accepted modes and the configuration defaults that are included.
    #
    #   @option options [Boolean] :disable_clock_skew_correction
    #     Used only in `standard` and `adaptive` retry modes. When `true`, the
    #     SDK does not apply a clock skew correction, does not update its stored
    #     skew from responses, and does not retry clock skew errors. Clock skew
    #     correction is enabled by default.
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
    #     * `legacy` - The pre-existing retry behavior. This is the default
    #       value if no retry mode is provided.
    #
    #     * `standard` - A standardized set of retry rules across the AWS SDKs.
    #       This includes support for retry quotas, which limit the number of
    #       unsuccessful retries a client can make.
    #
    #     * `adaptive` - A retry mode that includes all the functionality of
    #       `standard` mode along with automatic client side throttling.
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
    #   @option options [Aws::SageMakerTrainingSessionRuntime::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::SageMakerTrainingSessionRuntime::EndpointParameters`.
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

    # Submits an asynchronous sampling operation to generate text or compute
    # log-probabilities from the model associated with the specified
    # training session. The session must be in `Running` or `Blocked` state.
    # Use `GetSamplingOperationResult` to poll for the result.
    #
    # @option params [required, String] :training_session_name
    #   The name of the training session to sample from.
    #
    # @option params [required, Types::SampleOperationConfig] :operation_config
    #   The configuration for the sample operation. Specify either a sample
    #   configuration to generate text or a computeLogprobs configuration to
    #   compute token log-probabilities.
    #
    # @return [Types::ExecuteSamplingOperationOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ExecuteSamplingOperationOutput#operation_id #operation_id} => String
    #
    #
    # @example Example: Generate samples from a prompt
    #
    #   # Generates completions for a tokenized prompt using the session's current weights. Generation behavior is controlled by
    #   # `samplingParams`, and the operation is dispatched asynchronously.
    #
    #   resp = client.execute_sampling_operation({
    #     operation_config: {
    #       sample: {
    #         num_samples: 4, 
    #         prompt: {
    #           chunks: [
    #             {
    #               type: "encoded_text", 
    #               tokens: [
    #                 791, 
    #                 6864, 
    #                 315, 
    #                 9822, 
    #                 374, 
    #               ], 
    #             }, 
    #           ], 
    #         }, 
    #         sampling_params: {
    #           max_tokens: 1024, 
    #           temperature: 0.7, 
    #           top_p: 0.9, 
    #         }, 
    #       }, 
    #     }, 
    #     training_session_name: "my-training-session", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     operation_id: "b2c3d4e5-6789-01bc-def0-234567890abc", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.execute_sampling_operation({
    #     training_session_name: "TrainingSessionName", # required
    #     operation_config: { # required
    #       sample: {
    #         prompt: { # required
    #           chunks: [ # required
    #             {
    #               tokens: [1], # required
    #               type: "encoded_text", # required, accepts encoded_text
    #             },
    #           ],
    #         },
    #         num_samples: 1, # required
    #         sampling_params: { # required
    #           max_tokens: 1, # required
    #           temperature: 1.0,
    #           top_k: 1,
    #           top_p: 1.0,
    #           seed: 1,
    #           stop: ["String"],
    #         },
    #         include_prompt_logprobs: false,
    #         topk_prompt_logprobs: 1,
    #         model_package_arn: "String",
    #       },
    #       compute_logprobs: {
    #         prompt: { # required
    #           chunks: [ # required
    #             {
    #               tokens: [1], # required
    #               type: "encoded_text", # required, accepts encoded_text
    #             },
    #           ],
    #         },
    #         model_package_arn: "String",
    #       },
    #       load_weights_for_sampling: {
    #         model_package_arn: "String", # required
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.operation_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemakertrainingsessionruntime-2025-02-10/ExecuteSamplingOperation AWS API Documentation
    #
    # @overload execute_sampling_operation(params = {})
    # @param [Hash] params ({})
    def execute_sampling_operation(params = {}, options = {})
      req = build_request(:execute_sampling_operation, params)
      req.send_request(options)
    end

    # Submits an asynchronous training operation to the specified training
    # session. The service executes operations in sequence number order. The
    # session must be in `Running` or `Blocked` state. Use
    # `GetTrainingOperationResult` to poll for the result. Supported
    # operation types: `forward`, `forwardBackward`, `optimizerStep`,
    # `saveWeights`, `saveState`, and `loadState`.
    #
    # @option params [required, String] :training_session_name
    #   The name of the training session to submit the operation to.
    #
    # @option params [required, Integer] :sequence_number
    #   The monotonically increasing sequence number that determines execution
    #   order. The training session processes operations strictly in sequence
    #   number order. If a gap exists, the session blocks until the missing
    #   operation arrives or times out. Must be at least 1.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure that
    #   the operation completes no more than one time. If you retry a request
    #   with the same client token and the same parameters, the service
    #   ignores the request but does not return an error.
    #
    # @option params [required, Types::OperationConfig] :operation_config
    #   The configuration that specifies the type and parameters of the
    #   training operation. Exactly one member of the union must be set.
    #
    # @return [Types::ExecuteTrainingOperationOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ExecuteTrainingOperationOutput#operation_id #operation_id} => String
    #
    #
    # @example Example: Run a forward and backward pass
    #
    #   # Computes gradients for a batch of tokenized prompts and accumulates them into the session. Operations are applied in
    #   # `sequenceNumber` order, so each call must supply the next number in the sequence.
    #
    #   resp = client.execute_training_operation({
    #     operation_config: {
    #       forward_backward: {
    #         datum_list: [
    #           {
    #             model_input: {
    #               chunks: [
    #                 {
    #                   type: "encoded_text", 
    #                   tokens: [
    #                     791, 
    #                     6864, 
    #                     315, 
    #                     9822, 
    #                     374, 
    #                     12366, 
    #                   ], 
    #                 }, 
    #               ], 
    #             }, 
    #           }, 
    #         ], 
    #         loss_fn_name: "cross_entropy", 
    #       }, 
    #     }, 
    #     sequence_number: 1, 
    #     training_session_name: "my-training-session", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     operation_id: "a1b2c3d4-5678-90ab-cdef-1234567890ab", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.execute_training_operation({
    #     training_session_name: "TrainingSessionName", # required
    #     sequence_number: 1, # required
    #     client_token: "ClientToken",
    #     operation_config: { # required
    #       forward: {
    #         loss_fn_name: "cross_entropy", # required, accepts cross_entropy, importance_sampling, ppo, cispo
    #         datum_list: [ # required
    #           {
    #             model_input: { # required
    #               chunks: [ # required
    #                 {
    #                   tokens: [1], # required
    #                   type: "encoded_text", # required, accepts encoded_text
    #                 },
    #               ],
    #             },
    #             loss_fn_inputs: {
    #               "String" => {
    #                 data: { # required
    #                 },
    #                 dtype: "String", # required
    #                 shape: [1],
    #               },
    #             },
    #           },
    #         ],
    #         loss_fn_config: {
    #         },
    #       },
    #       forward_backward: {
    #         loss_fn_name: "cross_entropy", # required, accepts cross_entropy, importance_sampling, ppo, cispo
    #         datum_list: [ # required
    #           {
    #             model_input: { # required
    #               chunks: [ # required
    #                 {
    #                   tokens: [1], # required
    #                   type: "encoded_text", # required, accepts encoded_text
    #                 },
    #               ],
    #             },
    #             loss_fn_inputs: {
    #               "String" => {
    #                 data: { # required
    #                 },
    #                 dtype: "String", # required
    #                 shape: [1],
    #               },
    #             },
    #           },
    #         ],
    #         loss_fn_config: {
    #         },
    #       },
    #       optimizer_step: {
    #         adam_params_config: { # required
    #           learning_rate: 1.0, # required
    #           beta1: 1.0,
    #           beta2: 1.0,
    #           eps: 1.0,
    #           weight_decay: 1.0,
    #           grad_clip_norm: 1.0,
    #           lora_plus_lr_ratio: 1.0,
    #         },
    #       },
    #       save_weights: {
    #         merge_weights: false,
    #         description: "SaveWeightsConfigDescriptionString",
    #       },
    #       save_state: {
    #         description: "SaveStateConfigDescriptionString",
    #       },
    #       load_state: {
    #         model_package_arn: "String", # required
    #         load_optimizer: false, # required
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.operation_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemakertrainingsessionruntime-2025-02-10/ExecuteTrainingOperation AWS API Documentation
    #
    # @overload execute_training_operation(params = {})
    # @param [Hash] params ({})
    def execute_training_operation(params = {}, options = {})
      req = build_request(:execute_training_operation, params)
      req.send_request(options)
    end

    # Retrieves the current status and result of a previously submitted
    # sampling operation. Poll this operation until the status reaches a
    # terminal state (Completed or Failed).
    #
    # @option params [required, String] :training_session_name
    #   The name of the training session that owns the sample operation.
    #
    # @option params [required, String] :operation_id
    #   The unique identifier of the sample operation to retrieve, returned by
    #   `ExecuteSamplingOperation`.
    #
    # @return [Types::GetSamplingOperationResultOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetSamplingOperationResultOutput#status #status} => String
    #   * {Types::GetSamplingOperationResultOutput#operation_result #operation_result} => Types::SampleOperationResult
    #   * {Types::GetSamplingOperationResultOutput#error_details #error_details} => String
    #
    #
    # @example Example: Get the result of a sampling operation
    #
    #   # Retrieves the status and generated sequences for a sampling operation submitted with ExecuteSamplingOperation.
    #
    #   resp = client.get_sampling_operation_result({
    #     operation_id: "a1b2c3d4-5678-90ab-cdef-1234567890ab", 
    #     training_session_name: "my-training-session", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     operation_result: {
    #       sample: {
    #         sequences: [
    #           {
    #             stop_reason: "stop", 
    #             token_usage: {
    #               decode: 7, 
    #               prefill: 5, 
    #             }, 
    #             tokens: [
    #               791, 
    #               6864, 
    #               315, 
    #               9822, 
    #               374, 
    #               12366, 
    #               13, 
    #             ], 
    #           }, 
    #         ], 
    #       }, 
    #     }, 
    #     status: "Completed", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_sampling_operation_result({
    #     training_session_name: "TrainingSessionName", # required
    #     operation_id: "OperationId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.status #=> String, one of "Pending", "InProgress", "Completed", "Failed", "Skipped"
    #   resp.operation_result.sample.sequences #=> Array
    #   resp.operation_result.sample.sequences[0].stop_reason #=> String, one of "stop", "length"
    #   resp.operation_result.sample.sequences[0].tokens #=> Array
    #   resp.operation_result.sample.sequences[0].tokens[0] #=> Integer
    #   resp.operation_result.sample.sequences[0].logprobs #=> Array
    #   resp.operation_result.sample.sequences[0].logprobs[0] #=> Float
    #   resp.operation_result.sample.sequences[0].token_usage.prefill #=> Integer
    #   resp.operation_result.sample.sequences[0].token_usage.decode #=> Integer
    #   resp.operation_result.sample.prompt_logprobs #=> Array
    #   resp.operation_result.sample.prompt_logprobs[0] #=> Float
    #   resp.operation_result.sample.topk_prompt_logprobs #=> Array
    #   resp.operation_result.sample.topk_prompt_logprobs[0] #=> Array
    #   resp.operation_result.sample.topk_prompt_logprobs[0][0].token_id #=> Integer
    #   resp.operation_result.sample.topk_prompt_logprobs[0][0].logprob #=> Float
    #   resp.operation_result.compute_logprobs.logprobs #=> Array
    #   resp.operation_result.compute_logprobs.logprobs[0] #=> Float
    #   resp.error_details #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemakertrainingsessionruntime-2025-02-10/GetSamplingOperationResult AWS API Documentation
    #
    # @overload get_sampling_operation_result(params = {})
    # @param [Hash] params ({})
    def get_sampling_operation_result(params = {}, options = {})
      req = build_request(:get_sampling_operation_result, params)
      req.send_request(options)
    end

    # Retrieves the current status and result of a previously submitted
    # training operation. Poll this operation until the status reaches a
    # terminal state (Completed, Failed, or Skipped).
    #
    # @option params [required, String] :training_session_name
    #   The name of the training session that owns the operation.
    #
    # @option params [required, String] :operation_id
    #   The unique identifier of the operation to retrieve, returned by
    #   `ExecuteTrainingOperation`.
    #
    # @return [Types::GetTrainingOperationResultOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetTrainingOperationResultOutput#status #status} => String
    #   * {Types::GetTrainingOperationResultOutput#operation_result #operation_result} => Types::OperationResult
    #   * {Types::GetTrainingOperationResultOutput#error_details #error_details} => String
    #   * {Types::GetTrainingOperationResultOutput#token_usage #token_usage} => Types::TrainingTokenUsage
    #
    #
    # @example Example: Get the result of a training operation
    #
    #   # Retrieves the status and result of a training operation submitted with ExecuteTrainingOperation.
    #
    #   resp = client.get_training_operation_result({
    #     operation_id: "a1b2c3d4-5678-90ab-cdef-1234567890ab", 
    #     training_session_name: "my-training-session", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     operation_result: {
    #       forward_backward: {
    #         loss_fn_output_type: "logprobs", 
    #         metrics: {
    #           "loss" => 1.8342, 
    #         }, 
    #       }, 
    #     }, 
    #     status: "Completed", 
    #     token_usage: {
    #       training_tokens: 4096, 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_training_operation_result({
    #     training_session_name: "TrainingSessionName", # required
    #     operation_id: "OperationId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.status #=> String, one of "Pending", "InProgress", "Completed", "Failed", "Skipped"
    #   resp.operation_result.forward.loss_fn_output_type #=> String
    #   resp.operation_result.forward.loss_fn_outputs #=> Array
    #   resp.operation_result.forward.loss_fn_outputs[0] #=> Hash
    #   resp.operation_result.forward.loss_fn_outputs[0]["String"].dtype #=> String
    #   resp.operation_result.forward.loss_fn_outputs[0]["String"].shape #=> Array
    #   resp.operation_result.forward.loss_fn_outputs[0]["String"].shape[0] #=> Integer
    #   resp.operation_result.forward.metrics #=> Hash
    #   resp.operation_result.forward.metrics["String"] #=> Float
    #   resp.operation_result.forward.token_usage.training_tokens #=> Integer
    #   resp.operation_result.forward_backward.loss_fn_output_type #=> String
    #   resp.operation_result.forward_backward.loss_fn_outputs #=> Array
    #   resp.operation_result.forward_backward.loss_fn_outputs[0] #=> Hash
    #   resp.operation_result.forward_backward.loss_fn_outputs[0]["String"].dtype #=> String
    #   resp.operation_result.forward_backward.loss_fn_outputs[0]["String"].shape #=> Array
    #   resp.operation_result.forward_backward.loss_fn_outputs[0]["String"].shape[0] #=> Integer
    #   resp.operation_result.forward_backward.metrics #=> Hash
    #   resp.operation_result.forward_backward.metrics["String"] #=> Float
    #   resp.operation_result.forward_backward.token_usage.training_tokens #=> Integer
    #   resp.operation_result.optimizer_step.metrics #=> Hash
    #   resp.operation_result.optimizer_step.metrics["String"] #=> Float
    #   resp.operation_result.save_weights.model_package_arn #=> String
    #   resp.operation_result.save_state.model_package_arn #=> String
    #   resp.error_details #=> String
    #   resp.token_usage.training_tokens #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemakertrainingsessionruntime-2025-02-10/GetTrainingOperationResult AWS API Documentation
    #
    # @overload get_training_operation_result(params = {})
    # @param [Hash] params ({})
    def get_training_operation_result(params = {}, options = {})
      req = build_request(:get_training_operation_result, params)
      req.send_request(options)
    end

    # Sends an inference request to the model associated with the specified
    # training session and returns the response synchronously. The service
    # passes the request and response bodies to and from the model without
    # modification.
    #
    # @option params [required, String] :training_session_name
    #   The name of the training session whose model to invoke.
    #
    # @option params [String] :content_type
    #   The MIME type of the input data in the request body.
    #
    # @option params [String] :accept
    #   The desired MIME type of the inference body in the response.
    #
    # @option params [String] :model_package_arn
    #   The ARN of the model package whose checkpoint to invoke.
    #
    # @option params [String, StringIO, File] :body
    #   The raw inference request body.
    #
    # @return [Types::SampleTrainingSessionOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SampleTrainingSessionOutput#content_type #content_type} => String
    #   * {Types::SampleTrainingSessionOutput#body #body} => String
    #
    #
    # @example Example: Sample from a training session
    #
    #   # Sends a chat completion request to the session's current weights and receives the complete response in a single payload.
    #
    #   resp = client.sample_training_session({
    #     accept: "application/json", 
    #     body: "eyJtZXNzYWdlcyI6W3sicm9sZSI6InVzZXIiLCJjb250ZW50IjoiV2hhdCBpcyB0aGUgY2FwaXRhbCBvZiBGcmFuY2U/In1dLCJtYXhfdG9rZW5zIjoxMjh9", 
    #     content_type: "application/json", 
    #     training_session_name: "my-training-session", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     body: "eyJjaG9pY2VzIjpbeyJtZXNzYWdlIjp7InJvbGUiOiJhc3Npc3RhbnQiLCJjb250ZW50IjoiUGFyaXMifSwiZmluaXNoX3JlYXNvbiI6InN0b3AifV19", 
    #     content_type: "application/json", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.sample_training_session({
    #     training_session_name: "TrainingSessionName", # required
    #     content_type: "String",
    #     accept: "String",
    #     model_package_arn: "String",
    #     body: "data",
    #   })
    #
    # @example Response structure
    #
    #   resp.content_type #=> String
    #   resp.body #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemakertrainingsessionruntime-2025-02-10/SampleTrainingSession AWS API Documentation
    #
    # @overload sample_training_session(params = {})
    # @param [Hash] params ({})
    def sample_training_session(params = {}, options = {})
      req = build_request(:sample_training_session, params)
      req.send_request(options)
    end

    # Streams inference responses from the model associated with the
    # specified training session. Use this operation for real-time
    # token-by-token generation. The service passes the request body to the
    # model without modification.
    #
    # @option params [required, String] :training_session_name
    #   The name of the training session whose model to invoke.
    #
    # @option params [String] :content_type
    #   The MIME type of the input data in the request body.
    #
    # @option params [String] :accept
    #   The desired MIME type of the inference body in the response.
    #
    # @option params [String] :model_package_arn
    #   The ARN of the model package whose checkpoint to invoke.
    #
    # @option params [String, StringIO, File] :body
    #   The raw inference request body.
    #
    # @return [Types::SampleTrainingSessionWithResponseStreamOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SampleTrainingSessionWithResponseStreamOutput#content_type #content_type} => String
    #   * {Types::SampleTrainingSessionWithResponseStreamOutput#body #body} => IO
    #
    #
    # @example Example: Stream samples from a training session
    #
    #   # Sends a chat completion request to the session's current weights and receives the response as a stream of payload
    #   # chunks.
    #
    #   resp = client.sample_training_session_with_response_stream({
    #     accept: "application/json", 
    #     body: "eyJtZXNzYWdlcyI6W3sicm9sZSI6InVzZXIiLCJjb250ZW50IjoiV2hhdCBpcyB0aGUgY2FwaXRhbCBvZiBGcmFuY2U/In1dLCJtYXhfdG9rZW5zIjoxMjgsInN0cmVhbSI6dHJ1ZX0=", 
    #     content_type: "application/json", 
    #     training_session_name: "my-training-session", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.sample_training_session_with_response_stream({
    #     training_session_name: "TrainingSessionName", # required
    #     content_type: "String",
    #     accept: "String",
    #     model_package_arn: "String",
    #     body: "data",
    #   })
    #
    # @example Response structure
    #
    #   resp.content_type #=> String
    #   resp.body #=> IO
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemakertrainingsessionruntime-2025-02-10/SampleTrainingSessionWithResponseStream AWS API Documentation
    #
    # @overload sample_training_session_with_response_stream(params = {})
    # @param [Hash] params ({})
    def sample_training_session_with_response_stream(params = {}, options = {}, &block)
      req = build_request(:sample_training_session_with_response_stream, params)
      req.send_request(options, &block)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::SageMakerTrainingSessionRuntime')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-sagemakertrainingsessionruntime'
      context[:gem_version] = '1.4.0'
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
