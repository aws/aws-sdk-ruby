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

module Aws::Imagebuilder
  # An API client for Imagebuilder.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::Imagebuilder::Client.new(
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

    @identifier = :imagebuilder

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
    add_plugin(Aws::Imagebuilder::Plugins::Endpoints)

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
    #   @option options [Aws::Imagebuilder::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::Imagebuilder::EndpointParameters`.
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

    # CancelImageCreation cancels the creation of Image. This operation can
    # only be used on images in a non-terminal state.
    #
    # @option params [required, String] :image_build_version_arn
    #   The Amazon Resource Name (ARN) of the image that you want to cancel
    #   creation for.
    #
    # @option params [required, String] :client_token
    #   Unique, case-sensitive identifier you provide to ensure idempotency of
    #   the request. For more information, see [Ensuring idempotency][1] in
    #   the *Amazon EC2 API Reference*.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html
    #
    # @return [Types::CancelImageCreationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CancelImageCreationResponse#request_id #request_id} => String
    #   * {Types::CancelImageCreationResponse#client_token #client_token} => String
    #   * {Types::CancelImageCreationResponse#image_build_version_arn #image_build_version_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_image_creation({
    #     image_build_version_arn: "ImageBuildVersionArn", # required
    #     client_token: "ClientToken", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.request_id #=> String
    #   resp.client_token #=> String
    #   resp.image_build_version_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/CancelImageCreation AWS API Documentation
    #
    # @overload cancel_image_creation(params = {})
    # @param [Hash] params ({})
    def cancel_image_creation(params = {}, options = {})
      req = build_request(:cancel_image_creation, params)
      req.send_request(options)
    end

    # Cancel a specific image lifecycle policy runtime instance.
    #
    # @option params [required, String] :lifecycle_execution_id
    #   Identifies the specific runtime instance of the image lifecycle to
    #   cancel.
    #
    # @option params [required, String] :client_token
    #   Unique, case-sensitive identifier you provide to ensure idempotency of
    #   the request. For more information, see [Ensuring idempotency][1] in
    #   the *Amazon EC2 API Reference*.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html
    #
    # @return [Types::CancelLifecycleExecutionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CancelLifecycleExecutionResponse#lifecycle_execution_id #lifecycle_execution_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_lifecycle_execution({
    #     lifecycle_execution_id: "LifecycleExecutionId", # required
    #     client_token: "ClientToken", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.lifecycle_execution_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/CancelLifecycleExecution AWS API Documentation
    #
    # @overload cancel_lifecycle_execution(params = {})
    # @param [Hash] params ({})
    def cancel_lifecycle_execution(params = {}, options = {})
      req = build_request(:cancel_lifecycle_execution, params)
      req.send_request(options)
    end

    # Creates a new component that can be used to build, validate, test, and
    # assess your image. The component is based on a YAML document that you
    # specify using exactly one of the following methods:
    #
    # * Inline, using the `data` property in the request body.
    #
    # * A URL that points to a YAML document file stored in Amazon S3, using
    #   the `uri` property in the request body.
    #
    # @option params [required, String] :name
    #   The name of the component.
    #
    # @option params [required, String] :semantic_version
    #   The semantic version of the component. This version follows the
    #   semantic version syntax.
    #
    #   <note markdown="1"> The semantic version has four nodes:
    #   &lt;major&gt;.&lt;minor&gt;.&lt;patch&gt;/&lt;build&gt;. You can
    #   assign values for the first three, and can filter on all of them.
    #
    #    **Assignment:** For the first three nodes you can assign any positive
    #   integer value, including zero, with an upper limit of 2^30-1, or
    #   1073741823 for each node. Image Builder automatically assigns the
    #   build number to the fourth node.
    #
    #    **Patterns:** You can use any numeric pattern that adheres to the
    #   assignment requirements for the nodes that you can assign. For
    #   example, you might choose a software version pattern, such as 1.0.0,
    #   or a date, such as 2021.01.01.
    #
    #    </note>
    #
    # @option params [String] :description
    #   Describes the contents of the component.
    #
    # @option params [String] :change_description
    #   The change description of the component. Describes what change has
    #   been made in this version, or what makes this version different from
    #   other versions of the component.
    #
    # @option params [required, String] :platform
    #   The operating system platform of the component.
    #
    # @option params [Array<String>] :supported_os_versions
    #   The operating system (OS) version supported by the component. If the
    #   OS information is available, a prefix match is performed against the
    #   base image OS version during image recipe creation.
    #
    # @option params [String] :data
    #   Component `data` contains inline YAML document content for the
    #   component. Alternatively, you can specify the `uri` of a YAML document
    #   file stored in Amazon S3. However, you cannot specify both properties.
    #
    # @option params [String] :uri
    #   The `uri` of a YAML component document file. This must be an S3 URL
    #   (`s3://bucket/key`), and the requester must have permission to access
    #   the S3 bucket it points to. If you use Amazon S3, you can specify
    #   component content up to your service quota.
    #
    #   Alternatively, you can specify the YAML document inline, using the
    #   component `data` property. You cannot specify both properties.
    #
    # @option params [String] :kms_key_id
    #   The Amazon Resource Name (ARN) that uniquely identifies the KMS key
    #   used to encrypt this component. This can be either the Key ARN or the
    #   Alias ARN. For more information, see [Key identifiers (KeyId)][1] in
    #   the *Key Management Service Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-id-key-ARN
    #
    # @option params [Hash<String,String>] :tags
    #   The tags that apply to the component.
    #
    # @option params [required, String] :client_token
    #   Unique, case-sensitive identifier you provide to ensure idempotency of
    #   the request. For more information, see [Ensuring idempotency][1] in
    #   the *Amazon EC2 API Reference*.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html
    #
    # @return [Types::CreateComponentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateComponentResponse#request_id #request_id} => String
    #   * {Types::CreateComponentResponse#client_token #client_token} => String
    #   * {Types::CreateComponentResponse#component_build_version_arn #component_build_version_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_component({
    #     name: "ResourceName", # required
    #     semantic_version: "VersionNumber", # required
    #     description: "NonEmptyString",
    #     change_description: "NonEmptyString",
    #     platform: "Windows", # required, accepts Windows, Linux, macOS
    #     supported_os_versions: ["OsVersion"],
    #     data: "InlineComponentData",
    #     uri: "Uri",
    #     kms_key_id: "NonEmptyString",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     client_token: "ClientToken", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.request_id #=> String
    #   resp.client_token #=> String
    #   resp.component_build_version_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/CreateComponent AWS API Documentation
    #
    # @overload create_component(params = {})
    # @param [Hash] params ({})
    def create_component(params = {}, options = {})
      req = build_request(:create_component, params)
      req.send_request(options)
    end

    # Creates a new container recipe. Container recipes define how images
    # are configured, tested, and assessed.
    #
    # @option params [required, String] :container_type
    #   The type of container to create.
    #
    # @option params [required, String] :name
    #   The name of the container recipe.
    #
    # @option params [String] :description
    #   The description of the container recipe.
    #
    # @option params [required, String] :semantic_version
    #   The semantic version of the container recipe. This version follows the
    #   semantic version syntax.
    #
    #   <note markdown="1"> The semantic version has four nodes:
    #   &lt;major&gt;.&lt;minor&gt;.&lt;patch&gt;/&lt;build&gt;. You can
    #   assign values for the first three, and can filter on all of them.
    #
    #    **Assignment:** For the first three nodes you can assign any positive
    #   integer value, including zero, with an upper limit of 2^30-1, or
    #   1073741823 for each node. Image Builder automatically assigns the
    #   build number to the fourth node.
    #
    #    **Patterns:** You can use any numeric pattern that adheres to the
    #   assignment requirements for the nodes that you can assign. For
    #   example, you might choose a software version pattern, such as 1.0.0,
    #   or a date, such as 2021.01.01.
    #
    #    </note>
    #
    # @option params [required, Array<Types::ComponentConfiguration>] :components
    #   Components for build and test that are included in the container
    #   recipe. Recipes require a minimum of one build component, and can have
    #   a maximum of 20 build and test components in any combination.
    #
    # @option params [Types::InstanceConfiguration] :instance_configuration
    #   A group of options that can be used to configure an instance for
    #   building and testing container images.
    #
    # @option params [String] :dockerfile_template_data
    #   The Dockerfile template used to build your image as an inline data
    #   blob.
    #
    # @option params [String] :dockerfile_template_uri
    #   The Amazon S3 URI for the Dockerfile that will be used to build your
    #   container image.
    #
    # @option params [String] :platform_override
    #   Specifies the operating system platform when you use a custom base
    #   image.
    #
    # @option params [String] :image_os_version_override
    #   Specifies the operating system version for the base image.
    #
    # @option params [required, String] :parent_image
    #   The base image for the container recipe.
    #
    # @option params [Hash<String,String>] :tags
    #   Tags that are attached to the container recipe.
    #
    # @option params [String] :working_directory
    #   The working directory for use during build and test workflows.
    #
    # @option params [required, Types::TargetContainerRepository] :target_repository
    #   The destination repository for the container image.
    #
    # @option params [String] :kms_key_id
    #   The Amazon Resource Name (ARN) that uniquely identifies which KMS key
    #   is used to encrypt the Dockerfile template. This can be either the Key
    #   ARN or the Alias ARN. For more information, see [Key identifiers
    #   (KeyId)][1] in the *Key Management Service Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-id-key-ARN
    #
    # @option params [required, String] :client_token
    #   Unique, case-sensitive identifier you provide to ensure idempotency of
    #   the request. For more information, see [Ensuring idempotency][1] in
    #   the *Amazon EC2 API Reference*.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html
    #
    # @return [Types::CreateContainerRecipeResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateContainerRecipeResponse#request_id #request_id} => String
    #   * {Types::CreateContainerRecipeResponse#client_token #client_token} => String
    #   * {Types::CreateContainerRecipeResponse#container_recipe_arn #container_recipe_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_container_recipe({
    #     container_type: "DOCKER", # required, accepts DOCKER
    #     name: "ResourceName", # required
    #     description: "NonEmptyString",
    #     semantic_version: "VersionNumber", # required
    #     components: [ # required
    #       {
    #         component_arn: "ComponentVersionArnOrBuildVersionArn", # required
    #         parameters: [
    #           {
    #             name: "ComponentParameterName", # required
    #             value: ["ComponentParameterValue"], # required
    #           },
    #         ],
    #       },
    #     ],
    #     instance_configuration: {
    #       image: "NonEmptyString",
    #       block_device_mappings: [
    #         {
    #           device_name: "NonEmptyString",
    #           ebs: {
    #             encrypted: false,
    #             delete_on_termination: false,
    #             iops: 1,
    #             kms_key_id: "NonEmptyString",
    #             snapshot_id: "NonEmptyString",
    #             volume_size: 1,
    #             volume_type: "standard", # accepts standard, io1, io2, gp2, gp3, sc1, st1
    #             throughput: 1,
    #           },
    #           virtual_name: "NonEmptyString",
    #           no_device: "EmptyString",
    #         },
    #       ],
    #     },
    #     dockerfile_template_data: "InlineDockerFileTemplate",
    #     dockerfile_template_uri: "Uri",
    #     platform_override: "Windows", # accepts Windows, Linux, macOS
    #     image_os_version_override: "NonEmptyString",
    #     parent_image: "NonEmptyString", # required
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     working_directory: "NonEmptyString",
    #     target_repository: { # required
    #       service: "ECR", # required, accepts ECR
    #       repository_name: "NonEmptyString", # required
    #     },
    #     kms_key_id: "NonEmptyString",
    #     client_token: "ClientToken", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.request_id #=> String
    #   resp.client_token #=> String
    #   resp.container_recipe_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/CreateContainerRecipe AWS API Documentation
    #
    # @overload create_container_recipe(params = {})
    # @param [Hash] params ({})
    def create_container_recipe(params = {}, options = {})
      req = build_request(:create_container_recipe, params)
      req.send_request(options)
    end

    # Creates a new distribution configuration. Distribution configurations
    # define and configure the outputs of your pipeline.
    #
    # @option params [required, String] :name
    #   The name of the distribution configuration.
    #
    # @option params [String] :description
    #   The description of the distribution configuration.
    #
    # @option params [required, Array<Types::Distribution>] :distributions
    #   The distributions of the distribution configuration.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags of the distribution configuration.
    #
    # @option params [required, String] :client_token
    #   Unique, case-sensitive identifier you provide to ensure idempotency of
    #   the request. For more information, see [Ensuring idempotency][1] in
    #   the *Amazon EC2 API Reference*.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html
    #
    # @return [Types::CreateDistributionConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDistributionConfigurationResponse#request_id #request_id} => String
    #   * {Types::CreateDistributionConfigurationResponse#client_token #client_token} => String
    #   * {Types::CreateDistributionConfigurationResponse#distribution_configuration_arn #distribution_configuration_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_distribution_configuration({
    #     name: "ResourceName", # required
    #     description: "NonEmptyString",
    #     distributions: [ # required
    #       {
    #         region: "NonEmptyString", # required
    #         ami_distribution_configuration: {
    #           name: "AmiNameString",
    #           description: "NonEmptyString",
    #           target_account_ids: ["AccountId"],
    #           ami_tags: {
    #             "TagKey" => "TagValue",
    #           },
    #           kms_key_id: "NonEmptyString",
    #           launch_permission: {
    #             user_ids: ["AccountId"],
    #             user_groups: ["NonEmptyString"],
    #             organization_arns: ["OrganizationArn"],
    #             organizational_unit_arns: ["OrganizationalUnitArn"],
    #           },
    #         },
    #         container_distribution_configuration: {
    #           description: "NonEmptyString",
    #           container_tags: ["NonEmptyString"],
    #           target_repository: { # required
    #             service: "ECR", # required, accepts ECR
    #             repository_name: "NonEmptyString", # required
    #           },
    #         },
    #         license_configuration_arns: ["LicenseConfigurationArn"],
    #         launch_template_configurations: [
    #           {
    #             launch_template_id: "LaunchTemplateId", # required
    #             account_id: "AccountId",
    #             set_default_version: false,
    #           },
    #         ],
    #         s3_export_configuration: {
    #           role_name: "NonEmptyString", # required
    #           disk_image_format: "VMDK", # required, accepts VMDK, RAW, VHD
    #           s3_bucket: "NonEmptyString", # required
    #           s3_prefix: "NonEmptyString",
    #         },
    #         fast_launch_configurations: [
    #           {
    #             enabled: false, # required
    #             snapshot_configuration: {
    #               target_resource_count: 1,
    #             },
    #             max_parallel_launches: 1,
    #             launch_template: {
    #               launch_template_id: "LaunchTemplateId",
    #               launch_template_name: "NonEmptyString",
    #               launch_template_version: "NonEmptyString",
    #             },
    #             account_id: "AccountId",
    #           },
    #         ],
    #         ssm_parameter_configurations: [
    #           {
    #             ami_account_id: "AccountId",
    #             parameter_name: "SsmParameterName", # required
    #             data_type: "text", # accepts text, aws:ec2:image
    #           },
    #         ],
    #       },
    #     ],
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     client_token: "ClientToken", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.request_id #=> String
    #   resp.client_token #=> String
    #   resp.distribution_configuration_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/CreateDistributionConfiguration AWS API Documentation
    #
    # @overload create_distribution_configuration(params = {})
    # @param [Hash] params ({})
    def create_distribution_configuration(params = {}, options = {})
      req = build_request(:create_distribution_configuration, params)
      req.send_request(options)
    end

    # Creates a new image. This request will create a new image along with
    # all of the configured output resources defined in the distribution
    # configuration. You must specify exactly one recipe for your image,
    # using either a ContainerRecipeArn or an ImageRecipeArn.
    #
    # @option params [String] :image_recipe_arn
    #   The Amazon Resource Name (ARN) of the image recipe that defines how
    #   images are configured, tested, and assessed.
    #
    # @option params [String] :container_recipe_arn
    #   The Amazon Resource Name (ARN) of the container recipe that defines
    #   how images are configured and tested.
    #
    # @option params [String] :distribution_configuration_arn
    #   The Amazon Resource Name (ARN) of the distribution configuration that
    #   defines and configures the outputs of your pipeline.
    #
    # @option params [required, String] :infrastructure_configuration_arn
    #   The Amazon Resource Name (ARN) of the infrastructure configuration
    #   that defines the environment in which your image will be built and
    #   tested.
    #
    # @option params [Types::ImageTestsConfiguration] :image_tests_configuration
    #   The image tests configuration of the image.
    #
    # @option params [Boolean] :enhanced_image_metadata_enabled
    #   Collects additional information about the image being created,
    #   including the operating system (OS) version and package list. This
    #   information is used to enhance the overall experience of using EC2
    #   Image Builder. Enabled by default.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags of the image.
    #
    # @option params [required, String] :client_token
    #   Unique, case-sensitive identifier you provide to ensure idempotency of
    #   the request. For more information, see [Ensuring idempotency][1] in
    #   the *Amazon EC2 API Reference*.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html
    #
    # @option params [Types::ImageScanningConfiguration] :image_scanning_configuration
    #   Contains settings for vulnerability scans.
    #
    # @option params [Array<Types::WorkflowConfiguration>] :workflows
    #   Contains an array of workflow configuration objects.
    #
    # @option params [String] :execution_role
    #   The name or Amazon Resource Name (ARN) for the IAM role you create
    #   that grants Image Builder access to perform workflow actions.
    #
    # @option params [Types::ImageLoggingConfiguration] :logging_configuration
    #   Define logging configuration for the image build process.
    #
    # @return [Types::CreateImageResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateImageResponse#request_id #request_id} => String
    #   * {Types::CreateImageResponse#client_token #client_token} => String
    #   * {Types::CreateImageResponse#image_build_version_arn #image_build_version_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_image({
    #     image_recipe_arn: "ImageRecipeArn",
    #     container_recipe_arn: "ContainerRecipeArn",
    #     distribution_configuration_arn: "DistributionConfigurationArn",
    #     infrastructure_configuration_arn: "InfrastructureConfigurationArn", # required
    #     image_tests_configuration: {
    #       image_tests_enabled: false,
    #       timeout_minutes: 1,
    #     },
    #     enhanced_image_metadata_enabled: false,
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     client_token: "ClientToken", # required
    #     image_scanning_configuration: {
    #       image_scanning_enabled: false,
    #       ecr_configuration: {
    #         repository_name: "NonEmptyString",
    #         container_tags: ["NonEmptyString"],
    #       },
    #     },
    #     workflows: [
    #       {
    #         workflow_arn: "WorkflowVersionArnOrBuildVersionArn", # required
    #         parameters: [
    #           {
    #             name: "WorkflowParameterName", # required
    #             value: ["WorkflowParameterValue"], # required
    #           },
    #         ],
    #         parallel_group: "ParallelGroup",
    #         on_failure: "CONTINUE", # accepts CONTINUE, ABORT
    #       },
    #     ],
    #     execution_role: "RoleNameOrArn",
    #     logging_configuration: {
    #       log_group_name: "LogGroupName",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.request_id #=> String
    #   resp.client_token #=> String
    #   resp.image_build_version_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/CreateImage AWS API Documentation
    #
    # @overload create_image(params = {})
    # @param [Hash] params ({})
    def create_image(params = {}, options = {})
      req = build_request(:create_image, params)
      req.send_request(options)
    end

    # Creates a new image pipeline. Image pipelines enable you to automate
    # the creation and distribution of images.
    #
    # @option params [required, String] :name
    #   The name of the image pipeline.
    #
    # @option params [String] :description
    #   The description of the image pipeline.
    #
    # @option params [String] :image_recipe_arn
    #   The Amazon Resource Name (ARN) of the image recipe that will be used
    #   to configure images created by this image pipeline.
    #
    # @option params [String] :container_recipe_arn
    #   The Amazon Resource Name (ARN) of the container recipe that is used to
    #   configure images created by this container pipeline.
    #
    # @option params [required, String] :infrastructure_configuration_arn
    #   The Amazon Resource Name (ARN) of the infrastructure configuration
    #   that will be used to build images created by this image pipeline.
    #
    # @option params [String] :distribution_configuration_arn
    #   The Amazon Resource Name (ARN) of the distribution configuration that
    #   will be used to configure and distribute images created by this image
    #   pipeline.
    #
    # @option params [Types::ImageTestsConfiguration] :image_tests_configuration
    #   The image test configuration of the image pipeline.
    #
    # @option params [Boolean] :enhanced_image_metadata_enabled
    #   Collects additional information about the image being created,
    #   including the operating system (OS) version and package list. This
    #   information is used to enhance the overall experience of using EC2
    #   Image Builder. Enabled by default.
    #
    # @option params [Types::Schedule] :schedule
    #   The schedule of the image pipeline.
    #
    # @option params [String] :status
    #   The status of the image pipeline.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags of the image pipeline.
    #
    # @option params [required, String] :client_token
    #   Unique, case-sensitive identifier you provide to ensure idempotency of
    #   the request. For more information, see [Ensuring idempotency][1] in
    #   the *Amazon EC2 API Reference*.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html
    #
    # @option params [Types::ImageScanningConfiguration] :image_scanning_configuration
    #   Contains settings for vulnerability scans.
    #
    # @option params [Array<Types::WorkflowConfiguration>] :workflows
    #   Contains an array of workflow configuration objects.
    #
    # @option params [String] :execution_role
    #   The name or Amazon Resource Name (ARN) for the IAM role you create
    #   that grants Image Builder access to perform workflow actions.
    #
    # @option params [Types::PipelineLoggingConfiguration] :logging_configuration
    #   Define logging configuration for the image build process.
    #
    # @return [Types::CreateImagePipelineResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateImagePipelineResponse#request_id #request_id} => String
    #   * {Types::CreateImagePipelineResponse#client_token #client_token} => String
    #   * {Types::CreateImagePipelineResponse#image_pipeline_arn #image_pipeline_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_image_pipeline({
    #     name: "ResourceName", # required
    #     description: "NonEmptyString",
    #     image_recipe_arn: "ImageRecipeArn",
    #     container_recipe_arn: "ContainerRecipeArn",
    #     infrastructure_configuration_arn: "InfrastructureConfigurationArn", # required
    #     distribution_configuration_arn: "DistributionConfigurationArn",
    #     image_tests_configuration: {
    #       image_tests_enabled: false,
    #       timeout_minutes: 1,
    #     },
    #     enhanced_image_metadata_enabled: false,
    #     schedule: {
    #       schedule_expression: "NonEmptyString",
    #       timezone: "Timezone",
    #       pipeline_execution_start_condition: "EXPRESSION_MATCH_ONLY", # accepts EXPRESSION_MATCH_ONLY, EXPRESSION_MATCH_AND_DEPENDENCY_UPDATES_AVAILABLE
    #       auto_disable_policy: {
    #         failure_count: 1, # required
    #       },
    #     },
    #     status: "DISABLED", # accepts DISABLED, ENABLED
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     client_token: "ClientToken", # required
    #     image_scanning_configuration: {
    #       image_scanning_enabled: false,
    #       ecr_configuration: {
    #         repository_name: "NonEmptyString",
    #         container_tags: ["NonEmptyString"],
    #       },
    #     },
    #     workflows: [
    #       {
    #         workflow_arn: "WorkflowVersionArnOrBuildVersionArn", # required
    #         parameters: [
    #           {
    #             name: "WorkflowParameterName", # required
    #             value: ["WorkflowParameterValue"], # required
    #           },
    #         ],
    #         parallel_group: "ParallelGroup",
    #         on_failure: "CONTINUE", # accepts CONTINUE, ABORT
    #       },
    #     ],
    #     execution_role: "RoleNameOrArn",
    #     logging_configuration: {
    #       image_log_group_name: "LogGroupName",
    #       pipeline_log_group_name: "LogGroupName",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.request_id #=> String
    #   resp.client_token #=> String
    #   resp.image_pipeline_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/CreateImagePipeline AWS API Documentation
    #
    # @overload create_image_pipeline(params = {})
    # @param [Hash] params ({})
    def create_image_pipeline(params = {}, options = {})
      req = build_request(:create_image_pipeline, params)
      req.send_request(options)
    end

    # Creates a new image recipe. Image recipes define how images are
    # configured, tested, and assessed.
    #
    # @option params [required, String] :name
    #   The name of the image recipe.
    #
    # @option params [String] :description
    #   The description of the image recipe.
    #
    # @option params [required, String] :semantic_version
    #   The semantic version of the image recipe. This version follows the
    #   semantic version syntax.
    #
    #   <note markdown="1"> The semantic version has four nodes:
    #   &lt;major&gt;.&lt;minor&gt;.&lt;patch&gt;/&lt;build&gt;. You can
    #   assign values for the first three, and can filter on all of them.
    #
    #    **Assignment:** For the first three nodes you can assign any positive
    #   integer value, including zero, with an upper limit of 2^30-1, or
    #   1073741823 for each node. Image Builder automatically assigns the
    #   build number to the fourth node.
    #
    #    **Patterns:** You can use any numeric pattern that adheres to the
    #   assignment requirements for the nodes that you can assign. For
    #   example, you might choose a software version pattern, such as 1.0.0,
    #   or a date, such as 2021.01.01.
    #
    #    </note>
    #
    # @option params [required, Array<Types::ComponentConfiguration>] :components
    #   The components included in the image recipe.
    #
    # @option params [required, String] :parent_image
    #   The base image for customizations specified in the image recipe. You
    #   can specify the parent image using one of the following options:
    #
    #   * AMI ID
    #
    #   * Image Builder image Amazon Resource Name (ARN)
    #
    #   * Amazon Web Services Systems Manager (SSM) Parameter Store Parameter,
    #     prefixed by `ssm:`, followed by the parameter name or ARN.
    #
    #   * Amazon Web Services Marketplace product ID
    #
    #   If you enter an AMI ID or an SSM parameter that contains the AMI ID,
    #   you must have access to the AMI, and the AMI must be in the source
    #   Region.
    #
    # @option params [Array<Types::InstanceBlockDeviceMapping>] :block_device_mappings
    #   The block device mappings of the image recipe.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags of the image recipe.
    #
    # @option params [String] :working_directory
    #   The working directory used during build and test workflows.
    #
    # @option params [Types::AdditionalInstanceConfiguration] :additional_instance_configuration
    #   Specify additional settings and launch scripts for your build
    #   instances.
    #
    # @option params [Hash<String,String>] :ami_tags
    #   Tags that are applied to the AMI that Image Builder creates during the
    #   Build phase prior to image distribution.
    #
    # @option params [required, String] :client_token
    #   Unique, case-sensitive identifier you provide to ensure idempotency of
    #   the request. For more information, see [Ensuring idempotency][1] in
    #   the *Amazon EC2 API Reference*.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html
    #
    # @return [Types::CreateImageRecipeResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateImageRecipeResponse#request_id #request_id} => String
    #   * {Types::CreateImageRecipeResponse#client_token #client_token} => String
    #   * {Types::CreateImageRecipeResponse#image_recipe_arn #image_recipe_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_image_recipe({
    #     name: "ResourceName", # required
    #     description: "NonEmptyString",
    #     semantic_version: "VersionNumber", # required
    #     components: [ # required
    #       {
    #         component_arn: "ComponentVersionArnOrBuildVersionArn", # required
    #         parameters: [
    #           {
    #             name: "ComponentParameterName", # required
    #             value: ["ComponentParameterValue"], # required
    #           },
    #         ],
    #       },
    #     ],
    #     parent_image: "NonEmptyString", # required
    #     block_device_mappings: [
    #       {
    #         device_name: "NonEmptyString",
    #         ebs: {
    #           encrypted: false,
    #           delete_on_termination: false,
    #           iops: 1,
    #           kms_key_id: "NonEmptyString",
    #           snapshot_id: "NonEmptyString",
    #           volume_size: 1,
    #           volume_type: "standard", # accepts standard, io1, io2, gp2, gp3, sc1, st1
    #           throughput: 1,
    #         },
    #         virtual_name: "NonEmptyString",
    #         no_device: "EmptyString",
    #       },
    #     ],
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     working_directory: "NonEmptyString",
    #     additional_instance_configuration: {
    #       systems_manager_agent: {
    #         uninstall_after_build: false,
    #       },
    #       user_data_override: "UserDataOverride",
    #     },
    #     ami_tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     client_token: "ClientToken", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.request_id #=> String
    #   resp.client_token #=> String
    #   resp.image_recipe_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/CreateImageRecipe AWS API Documentation
    #
    # @overload create_image_recipe(params = {})
    # @param [Hash] params ({})
    def create_image_recipe(params = {}, options = {})
      req = build_request(:create_image_recipe, params)
      req.send_request(options)
    end

    # Creates a new infrastructure configuration. An infrastructure
    # configuration defines the environment in which your image will be
    # built and tested.
    #
    # @option params [required, String] :name
    #   The name of the infrastructure configuration.
    #
    # @option params [String] :description
    #   The description of the infrastructure configuration.
    #
    # @option params [Array<String>] :instance_types
    #   The instance types of the infrastructure configuration. You can
    #   specify one or more instance types to use for this build. The service
    #   will pick one of these instance types based on availability.
    #
    # @option params [required, String] :instance_profile_name
    #   The instance profile to associate with the instance used to customize
    #   your Amazon EC2 AMI.
    #
    # @option params [Array<String>] :security_group_ids
    #   The security group IDs to associate with the instance used to
    #   customize your Amazon EC2 AMI.
    #
    # @option params [String] :subnet_id
    #   The subnet ID in which to place the instance used to customize your
    #   Amazon EC2 AMI.
    #
    # @option params [Types::Logging] :logging
    #   The logging configuration of the infrastructure configuration.
    #
    # @option params [String] :key_pair
    #   The key pair of the infrastructure configuration. You can use this to
    #   log on to and debug the instance used to create your image.
    #
    # @option params [Boolean] :terminate_instance_on_failure
    #   The terminate instance on failure setting of the infrastructure
    #   configuration. Set to false if you want Image Builder to retain the
    #   instance used to configure your AMI if the build or test phase of your
    #   workflow fails.
    #
    # @option params [String] :sns_topic_arn
    #   The Amazon Resource Name (ARN) for the SNS topic to which we send
    #   image build event notifications.
    #
    #   <note markdown="1"> EC2 Image Builder is unable to send notifications to SNS topics that
    #   are encrypted using keys from other accounts. The key that is used to
    #   encrypt the SNS topic must reside in the account that the Image
    #   Builder service runs under.
    #
    #    </note>
    #
    # @option params [Hash<String,String>] :resource_tags
    #   The metadata tags to assign to the Amazon EC2 instance that Image
    #   Builder launches during the build process. Tags are formatted as key
    #   value pairs.
    #
    # @option params [Types::InstanceMetadataOptions] :instance_metadata_options
    #   The instance metadata options that you can set for the HTTP requests
    #   that pipeline builds use to launch EC2 build and test instances.
    #
    # @option params [Hash<String,String>] :tags
    #   The metadata tags to assign to the infrastructure configuration
    #   resource that Image Builder creates as output. Tags are formatted as
    #   key value pairs.
    #
    # @option params [Types::Placement] :placement
    #   The instance placement settings that define where the instances that
    #   are launched from your image will run.
    #
    # @option params [required, String] :client_token
    #   Unique, case-sensitive identifier you provide to ensure idempotency of
    #   the request. For more information, see [Ensuring idempotency][1] in
    #   the *Amazon EC2 API Reference*.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html
    #
    # @return [Types::CreateInfrastructureConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateInfrastructureConfigurationResponse#request_id #request_id} => String
    #   * {Types::CreateInfrastructureConfigurationResponse#client_token #client_token} => String
    #   * {Types::CreateInfrastructureConfigurationResponse#infrastructure_configuration_arn #infrastructure_configuration_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_infrastructure_configuration({
    #     name: "ResourceName", # required
    #     description: "NonEmptyString",
    #     instance_types: ["InstanceType"],
    #     instance_profile_name: "InstanceProfileNameType", # required
    #     security_group_ids: ["NonEmptyString"],
    #     subnet_id: "NonEmptyString",
    #     logging: {
    #       s3_logs: {
    #         s3_bucket_name: "NonEmptyString",
    #         s3_key_prefix: "NonEmptyString",
    #       },
    #     },
    #     key_pair: "NonEmptyString",
    #     terminate_instance_on_failure: false,
    #     sns_topic_arn: "SnsTopicArn",
    #     resource_tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     instance_metadata_options: {
    #       http_tokens: "HttpTokens",
    #       http_put_response_hop_limit: 1,
    #     },
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     placement: {
    #       availability_zone: "NonEmptyString",
    #       tenancy: "default", # accepts default, dedicated, host
    #       host_id: "NonEmptyString",
    #       host_resource_group_arn: "NonEmptyString",
    #     },
    #     client_token: "ClientToken", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.request_id #=> String
    #   resp.client_token #=> String
    #   resp.infrastructure_configuration_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/CreateInfrastructureConfiguration AWS API Documentation
    #
    # @overload create_infrastructure_configuration(params = {})
    # @param [Hash] params ({})
    def create_infrastructure_configuration(params = {}, options = {})
      req = build_request(:create_infrastructure_configuration, params)
      req.send_request(options)
    end

    # Create a lifecycle policy resource.
    #
    # @option params [required, String] :name
    #   The name of the lifecycle policy to create.
    #
    # @option params [String] :description
    #   Optional description for the lifecycle policy.
    #
    # @option params [String] :status
    #   Indicates whether the lifecycle policy resource is enabled.
    #
    # @option params [required, String] :execution_role
    #   The name or Amazon Resource Name (ARN) for the IAM role you create
    #   that grants Image Builder access to run lifecycle actions.
    #
    # @option params [required, String] :resource_type
    #   The type of Image Builder resource that the lifecycle policy applies
    #   to.
    #
    # @option params [required, Array<Types::LifecyclePolicyDetail>] :policy_details
    #   Configuration details for the lifecycle policy rules.
    #
    # @option params [required, Types::LifecyclePolicyResourceSelection] :resource_selection
    #   Selection criteria for the resources that the lifecycle policy applies
    #   to.
    #
    # @option params [Hash<String,String>] :tags
    #   Tags to apply to the lifecycle policy resource.
    #
    # @option params [required, String] :client_token
    #   Unique, case-sensitive identifier you provide to ensure idempotency of
    #   the request. For more information, see [Ensuring idempotency][1] in
    #   the *Amazon EC2 API Reference*.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html
    #
    # @return [Types::CreateLifecyclePolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateLifecyclePolicyResponse#client_token #client_token} => String
    #   * {Types::CreateLifecyclePolicyResponse#lifecycle_policy_arn #lifecycle_policy_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_lifecycle_policy({
    #     name: "ResourceName", # required
    #     description: "NonEmptyString",
    #     status: "DISABLED", # accepts DISABLED, ENABLED
    #     execution_role: "RoleNameOrArn", # required
    #     resource_type: "AMI_IMAGE", # required, accepts AMI_IMAGE, CONTAINER_IMAGE
    #     policy_details: [ # required
    #       {
    #         action: { # required
    #           type: "DELETE", # required, accepts DELETE, DEPRECATE, DISABLE
    #           include_resources: {
    #             amis: false,
    #             snapshots: false,
    #             containers: false,
    #           },
    #         },
    #         filter: { # required
    #           type: "AGE", # required, accepts AGE, COUNT
    #           value: 1, # required
    #           unit: "DAYS", # accepts DAYS, WEEKS, MONTHS, YEARS
    #           retain_at_least: 1,
    #         },
    #         exclusion_rules: {
    #           tag_map: {
    #             "TagKey" => "TagValue",
    #           },
    #           amis: {
    #             is_public: false,
    #             regions: ["NonEmptyString"],
    #             shared_accounts: ["AccountId"],
    #             last_launched: {
    #               value: 1, # required
    #               unit: "DAYS", # required, accepts DAYS, WEEKS, MONTHS, YEARS
    #             },
    #             tag_map: {
    #               "TagKey" => "TagValue",
    #             },
    #           },
    #         },
    #       },
    #     ],
    #     resource_selection: { # required
    #       recipes: [
    #         {
    #           name: "ResourceName", # required
    #           semantic_version: "VersionNumber", # required
    #         },
    #       ],
    #       tag_map: {
    #         "TagKey" => "TagValue",
    #       },
    #     },
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     client_token: "ClientToken", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.client_token #=> String
    #   resp.lifecycle_policy_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/CreateLifecyclePolicy AWS API Documentation
    #
    # @overload create_lifecycle_policy(params = {})
    # @param [Hash] params ({})
    def create_lifecycle_policy(params = {}, options = {})
      req = build_request(:create_lifecycle_policy, params)
      req.send_request(options)
    end

    # Create a new workflow or a new version of an existing workflow.
    #
    # @option params [required, String] :name
    #   The name of the workflow to create.
    #
    # @option params [required, String] :semantic_version
    #   The semantic version of this workflow resource. The semantic version
    #   syntax adheres to the following rules.
    #
    #   <note markdown="1"> The semantic version has four nodes:
    #   &lt;major&gt;.&lt;minor&gt;.&lt;patch&gt;/&lt;build&gt;. You can
    #   assign values for the first three, and can filter on all of them.
    #
    #    **Assignment:** For the first three nodes you can assign any positive
    #   integer value, including zero, with an upper limit of 2^30-1, or
    #   1073741823 for each node. Image Builder automatically assigns the
    #   build number to the fourth node.
    #
    #    **Patterns:** You can use any numeric pattern that adheres to the
    #   assignment requirements for the nodes that you can assign. For
    #   example, you might choose a software version pattern, such as 1.0.0,
    #   or a date, such as 2021.01.01.
    #
    #    </note>
    #
    # @option params [String] :description
    #   Describes the workflow.
    #
    # @option params [String] :change_description
    #   Describes what change has been made in this version of the workflow,
    #   or what makes this version different from other versions of the
    #   workflow.
    #
    # @option params [String] :data
    #   Contains the UTF-8 encoded YAML document content for the workflow.
    #   Alternatively, you can specify the `uri` of a YAML document file
    #   stored in Amazon S3. However, you cannot specify both properties.
    #
    # @option params [String] :uri
    #   The `uri` of a YAML component document file. This must be an S3 URL
    #   (`s3://bucket/key`), and the requester must have permission to access
    #   the S3 bucket it points to. If you use Amazon S3, you can specify
    #   component content up to your service quota.
    #
    #   Alternatively, you can specify the YAML document inline, using the
    #   component `data` property. You cannot specify both properties.
    #
    # @option params [String] :kms_key_id
    #   The Amazon Resource Name (ARN) that uniquely identifies the KMS key
    #   used to encrypt this workflow resource. This can be either the Key ARN
    #   or the Alias ARN. For more information, see [Key identifiers
    #   (KeyId)][1] in the *Key Management Service Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-id-key-ARN
    #
    # @option params [Hash<String,String>] :tags
    #   Tags that apply to the workflow resource.
    #
    # @option params [required, String] :client_token
    #   Unique, case-sensitive identifier you provide to ensure idempotency of
    #   the request. For more information, see [Ensuring idempotency][1] in
    #   the *Amazon EC2 API Reference*.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html
    #
    # @option params [required, String] :type
    #   The phase in the image build process for which the workflow resource
    #   is responsible.
    #
    # @return [Types::CreateWorkflowResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateWorkflowResponse#client_token #client_token} => String
    #   * {Types::CreateWorkflowResponse#workflow_build_version_arn #workflow_build_version_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_workflow({
    #     name: "ResourceName", # required
    #     semantic_version: "VersionNumber", # required
    #     description: "NonEmptyString",
    #     change_description: "NonEmptyString",
    #     data: "InlineWorkflowData",
    #     uri: "Uri",
    #     kms_key_id: "NonEmptyString",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     client_token: "ClientToken", # required
    #     type: "BUILD", # required, accepts BUILD, TEST, DISTRIBUTION
    #   })
    #
    # @example Response structure
    #
    #   resp.client_token #=> String
    #   resp.workflow_build_version_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/CreateWorkflow AWS API Documentation
    #
    # @overload create_workflow(params = {})
    # @param [Hash] params ({})
    def create_workflow(params = {}, options = {})
      req = build_request(:create_workflow, params)
      req.send_request(options)
    end

    # Deletes a component build version.
    #
    # @option params [required, String] :component_build_version_arn
    #   The Amazon Resource Name (ARN) of the component build version to
    #   delete.
    #
    # @return [Types::DeleteComponentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteComponentResponse#request_id #request_id} => String
    #   * {Types::DeleteComponentResponse#component_build_version_arn #component_build_version_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_component({
    #     component_build_version_arn: "ComponentBuildVersionArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.request_id #=> String
    #   resp.component_build_version_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/DeleteComponent AWS API Documentation
    #
    # @overload delete_component(params = {})
    # @param [Hash] params ({})
    def delete_component(params = {}, options = {})
      req = build_request(:delete_component, params)
      req.send_request(options)
    end

    # Deletes a container recipe.
    #
    # @option params [required, String] :container_recipe_arn
    #   The Amazon Resource Name (ARN) of the container recipe to delete.
    #
    # @return [Types::DeleteContainerRecipeResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteContainerRecipeResponse#request_id #request_id} => String
    #   * {Types::DeleteContainerRecipeResponse#container_recipe_arn #container_recipe_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_container_recipe({
    #     container_recipe_arn: "ContainerRecipeArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.request_id #=> String
    #   resp.container_recipe_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/DeleteContainerRecipe AWS API Documentation
    #
    # @overload delete_container_recipe(params = {})
    # @param [Hash] params ({})
    def delete_container_recipe(params = {}, options = {})
      req = build_request(:delete_container_recipe, params)
      req.send_request(options)
    end

    # Deletes a distribution configuration.
    #
    # @option params [required, String] :distribution_configuration_arn
    #   The Amazon Resource Name (ARN) of the distribution configuration to
    #   delete.
    #
    # @return [Types::DeleteDistributionConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteDistributionConfigurationResponse#request_id #request_id} => String
    #   * {Types::DeleteDistributionConfigurationResponse#distribution_configuration_arn #distribution_configuration_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_distribution_configuration({
    #     distribution_configuration_arn: "DistributionConfigurationArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.request_id #=> String
    #   resp.distribution_configuration_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/DeleteDistributionConfiguration AWS API Documentation
    #
    # @overload delete_distribution_configuration(params = {})
    # @param [Hash] params ({})
    def delete_distribution_configuration(params = {}, options = {})
      req = build_request(:delete_distribution_configuration, params)
      req.send_request(options)
    end

    # Deletes an Image Builder image resource. This does not delete any EC2
    # AMIs or ECR container images that are created during the image build
    # process. You must clean those up separately, using the appropriate
    # Amazon EC2 or Amazon ECR console actions, or API or CLI commands.
    #
    # * To deregister an EC2 Linux AMI, see [Deregister your Linux AMI][1]
    #   in the <i> <i>Amazon EC2 User Guide</i> </i>.
    #
    # * To deregister an EC2 Windows AMI, see [Deregister your Windows
    #   AMI][2] in the <i> <i>Amazon EC2 Windows Guide</i> </i>.
    #
    # * To delete a container image from Amazon ECR, see [Deleting an
    #   image][3] in the *Amazon ECR User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/deregister-ami.html
    # [2]: https://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/deregister-ami.html
    # [3]: https://docs.aws.amazon.com/AmazonECR/latest/userguide/delete_image.html
    #
    # @option params [required, String] :image_build_version_arn
    #   The Amazon Resource Name (ARN) of the Image Builder image resource to
    #   delete.
    #
    # @return [Types::DeleteImageResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteImageResponse#request_id #request_id} => String
    #   * {Types::DeleteImageResponse#image_build_version_arn #image_build_version_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_image({
    #     image_build_version_arn: "ImageBuildVersionArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.request_id #=> String
    #   resp.image_build_version_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/DeleteImage AWS API Documentation
    #
    # @overload delete_image(params = {})
    # @param [Hash] params ({})
    def delete_image(params = {}, options = {})
      req = build_request(:delete_image, params)
      req.send_request(options)
    end

    # Deletes an image pipeline.
    #
    # @option params [required, String] :image_pipeline_arn
    #   The Amazon Resource Name (ARN) of the image pipeline to delete.
    #
    # @return [Types::DeleteImagePipelineResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteImagePipelineResponse#request_id #request_id} => String
    #   * {Types::DeleteImagePipelineResponse#image_pipeline_arn #image_pipeline_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_image_pipeline({
    #     image_pipeline_arn: "ImagePipelineArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.request_id #=> String
    #   resp.image_pipeline_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/DeleteImagePipeline AWS API Documentation
    #
    # @overload delete_image_pipeline(params = {})
    # @param [Hash] params ({})
    def delete_image_pipeline(params = {}, options = {})
      req = build_request(:delete_image_pipeline, params)
      req.send_request(options)
    end

    # Deletes an image recipe.
    #
    # @option params [required, String] :image_recipe_arn
    #   The Amazon Resource Name (ARN) of the image recipe to delete.
    #
    # @return [Types::DeleteImageRecipeResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteImageRecipeResponse#request_id #request_id} => String
    #   * {Types::DeleteImageRecipeResponse#image_recipe_arn #image_recipe_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_image_recipe({
    #     image_recipe_arn: "ImageRecipeArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.request_id #=> String
    #   resp.image_recipe_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/DeleteImageRecipe AWS API Documentation
    #
    # @overload delete_image_recipe(params = {})
    # @param [Hash] params ({})
    def delete_image_recipe(params = {}, options = {})
      req = build_request(:delete_image_recipe, params)
      req.send_request(options)
    end

    # Deletes an infrastructure configuration.
    #
    # @option params [required, String] :infrastructure_configuration_arn
    #   The Amazon Resource Name (ARN) of the infrastructure configuration to
    #   delete.
    #
    # @return [Types::DeleteInfrastructureConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteInfrastructureConfigurationResponse#request_id #request_id} => String
    #   * {Types::DeleteInfrastructureConfigurationResponse#infrastructure_configuration_arn #infrastructure_configuration_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_infrastructure_configuration({
    #     infrastructure_configuration_arn: "InfrastructureConfigurationArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.request_id #=> String
    #   resp.infrastructure_configuration_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/DeleteInfrastructureConfiguration AWS API Documentation
    #
    # @overload delete_infrastructure_configuration(params = {})
    # @param [Hash] params ({})
    def delete_infrastructure_configuration(params = {}, options = {})
      req = build_request(:delete_infrastructure_configuration, params)
      req.send_request(options)
    end

    # Delete the specified lifecycle policy resource.
    #
    # @option params [required, String] :lifecycle_policy_arn
    #   The Amazon Resource Name (ARN) of the lifecycle policy resource to
    #   delete.
    #
    # @return [Types::DeleteLifecyclePolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteLifecyclePolicyResponse#lifecycle_policy_arn #lifecycle_policy_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_lifecycle_policy({
    #     lifecycle_policy_arn: "LifecyclePolicyArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.lifecycle_policy_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/DeleteLifecyclePolicy AWS API Documentation
    #
    # @overload delete_lifecycle_policy(params = {})
    # @param [Hash] params ({})
    def delete_lifecycle_policy(params = {}, options = {})
      req = build_request(:delete_lifecycle_policy, params)
      req.send_request(options)
    end

    # Deletes a specific workflow resource.
    #
    # @option params [required, String] :workflow_build_version_arn
    #   The Amazon Resource Name (ARN) of the workflow resource to delete.
    #
    # @return [Types::DeleteWorkflowResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteWorkflowResponse#workflow_build_version_arn #workflow_build_version_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_workflow({
    #     workflow_build_version_arn: "WorkflowBuildVersionArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.workflow_build_version_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/DeleteWorkflow AWS API Documentation
    #
    # @overload delete_workflow(params = {})
    # @param [Hash] params ({})
    def delete_workflow(params = {}, options = {})
      req = build_request(:delete_workflow, params)
      req.send_request(options)
    end

    # Gets a component object.
    #
    # @option params [required, String] :component_build_version_arn
    #   The Amazon Resource Name (ARN) of the component that you want to get.
    #   Regex requires the suffix `/\d+$`.
    #
    # @return [Types::GetComponentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetComponentResponse#request_id #request_id} => String
    #   * {Types::GetComponentResponse#component #component} => Types::Component
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_component({
    #     component_build_version_arn: "ComponentVersionArnOrBuildVersionArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.request_id #=> String
    #   resp.component.arn #=> String
    #   resp.component.name #=> String
    #   resp.component.version #=> String
    #   resp.component.description #=> String
    #   resp.component.change_description #=> String
    #   resp.component.type #=> String, one of "BUILD", "TEST"
    #   resp.component.platform #=> String, one of "Windows", "Linux", "macOS"
    #   resp.component.supported_os_versions #=> Array
    #   resp.component.supported_os_versions[0] #=> String
    #   resp.component.state.status #=> String, one of "DEPRECATED", "DISABLED", "ACTIVE"
    #   resp.component.state.reason #=> String
    #   resp.component.parameters #=> Array
    #   resp.component.parameters[0].name #=> String
    #   resp.component.parameters[0].type #=> String
    #   resp.component.parameters[0].default_value #=> Array
    #   resp.component.parameters[0].default_value[0] #=> String
    #   resp.component.parameters[0].description #=> String
    #   resp.component.owner #=> String
    #   resp.component.data #=> String
    #   resp.component.kms_key_id #=> String
    #   resp.component.encrypted #=> Boolean
    #   resp.component.date_created #=> String
    #   resp.component.tags #=> Hash
    #   resp.component.tags["TagKey"] #=> String
    #   resp.component.publisher #=> String
    #   resp.component.obfuscate #=> Boolean
    #   resp.component.product_codes #=> Array
    #   resp.component.product_codes[0].product_code_id #=> String
    #   resp.component.product_codes[0].product_code_type #=> String, one of "marketplace"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/GetComponent AWS API Documentation
    #
    # @overload get_component(params = {})
    # @param [Hash] params ({})
    def get_component(params = {}, options = {})
      req = build_request(:get_component, params)
      req.send_request(options)
    end

    # Gets a component policy.
    #
    # @option params [required, String] :component_arn
    #   The Amazon Resource Name (ARN) of the component whose policy you want
    #   to retrieve.
    #
    # @return [Types::GetComponentPolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetComponentPolicyResponse#request_id #request_id} => String
    #   * {Types::GetComponentPolicyResponse#policy #policy} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_component_policy({
    #     component_arn: "ComponentBuildVersionArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.request_id #=> String
    #   resp.policy #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/GetComponentPolicy AWS API Documentation
    #
    # @overload get_component_policy(params = {})
    # @param [Hash] params ({})
    def get_component_policy(params = {}, options = {})
      req = build_request(:get_component_policy, params)
      req.send_request(options)
    end

    # Retrieves a container recipe.
    #
    # @option params [required, String] :container_recipe_arn
    #   The Amazon Resource Name (ARN) of the container recipe to retrieve.
    #
    # @return [Types::GetContainerRecipeResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetContainerRecipeResponse#request_id #request_id} => String
    #   * {Types::GetContainerRecipeResponse#container_recipe #container_recipe} => Types::ContainerRecipe
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_container_recipe({
    #     container_recipe_arn: "ContainerRecipeArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.request_id #=> String
    #   resp.container_recipe.arn #=> String
    #   resp.container_recipe.container_type #=> String, one of "DOCKER"
    #   resp.container_recipe.name #=> String
    #   resp.container_recipe.description #=> String
    #   resp.container_recipe.platform #=> String, one of "Windows", "Linux", "macOS"
    #   resp.container_recipe.owner #=> String
    #   resp.container_recipe.version #=> String
    #   resp.container_recipe.components #=> Array
    #   resp.container_recipe.components[0].component_arn #=> String
    #   resp.container_recipe.components[0].parameters #=> Array
    #   resp.container_recipe.components[0].parameters[0].name #=> String
    #   resp.container_recipe.components[0].parameters[0].value #=> Array
    #   resp.container_recipe.components[0].parameters[0].value[0] #=> String
    #   resp.container_recipe.instance_configuration.image #=> String
    #   resp.container_recipe.instance_configuration.block_device_mappings #=> Array
    #   resp.container_recipe.instance_configuration.block_device_mappings[0].device_name #=> String
    #   resp.container_recipe.instance_configuration.block_device_mappings[0].ebs.encrypted #=> Boolean
    #   resp.container_recipe.instance_configuration.block_device_mappings[0].ebs.delete_on_termination #=> Boolean
    #   resp.container_recipe.instance_configuration.block_device_mappings[0].ebs.iops #=> Integer
    #   resp.container_recipe.instance_configuration.block_device_mappings[0].ebs.kms_key_id #=> String
    #   resp.container_recipe.instance_configuration.block_device_mappings[0].ebs.snapshot_id #=> String
    #   resp.container_recipe.instance_configuration.block_device_mappings[0].ebs.volume_size #=> Integer
    #   resp.container_recipe.instance_configuration.block_device_mappings[0].ebs.volume_type #=> String, one of "standard", "io1", "io2", "gp2", "gp3", "sc1", "st1"
    #   resp.container_recipe.instance_configuration.block_device_mappings[0].ebs.throughput #=> Integer
    #   resp.container_recipe.instance_configuration.block_device_mappings[0].virtual_name #=> String
    #   resp.container_recipe.instance_configuration.block_device_mappings[0].no_device #=> String
    #   resp.container_recipe.dockerfile_template_data #=> String
    #   resp.container_recipe.kms_key_id #=> String
    #   resp.container_recipe.encrypted #=> Boolean
    #   resp.container_recipe.parent_image #=> String
    #   resp.container_recipe.date_created #=> String
    #   resp.container_recipe.tags #=> Hash
    #   resp.container_recipe.tags["TagKey"] #=> String
    #   resp.container_recipe.working_directory #=> String
    #   resp.container_recipe.target_repository.service #=> String, one of "ECR"
    #   resp.container_recipe.target_repository.repository_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/GetContainerRecipe AWS API Documentation
    #
    # @overload get_container_recipe(params = {})
    # @param [Hash] params ({})
    def get_container_recipe(params = {}, options = {})
      req = build_request(:get_container_recipe, params)
      req.send_request(options)
    end

    # Retrieves the policy for a container recipe.
    #
    # @option params [required, String] :container_recipe_arn
    #   The Amazon Resource Name (ARN) of the container recipe for the policy
    #   being requested.
    #
    # @return [Types::GetContainerRecipePolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetContainerRecipePolicyResponse#request_id #request_id} => String
    #   * {Types::GetContainerRecipePolicyResponse#policy #policy} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_container_recipe_policy({
    #     container_recipe_arn: "ContainerRecipeArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.request_id #=> String
    #   resp.policy #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/GetContainerRecipePolicy AWS API Documentation
    #
    # @overload get_container_recipe_policy(params = {})
    # @param [Hash] params ({})
    def get_container_recipe_policy(params = {}, options = {})
      req = build_request(:get_container_recipe_policy, params)
      req.send_request(options)
    end

    # Gets a distribution configuration.
    #
    # @option params [required, String] :distribution_configuration_arn
    #   The Amazon Resource Name (ARN) of the distribution configuration that
    #   you want to retrieve.
    #
    # @return [Types::GetDistributionConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDistributionConfigurationResponse#request_id #request_id} => String
    #   * {Types::GetDistributionConfigurationResponse#distribution_configuration #distribution_configuration} => Types::DistributionConfiguration
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_distribution_configuration({
    #     distribution_configuration_arn: "DistributionConfigurationArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.request_id #=> String
    #   resp.distribution_configuration.arn #=> String
    #   resp.distribution_configuration.name #=> String
    #   resp.distribution_configuration.description #=> String
    #   resp.distribution_configuration.distributions #=> Array
    #   resp.distribution_configuration.distributions[0].region #=> String
    #   resp.distribution_configuration.distributions[0].ami_distribution_configuration.name #=> String
    #   resp.distribution_configuration.distributions[0].ami_distribution_configuration.description #=> String
    #   resp.distribution_configuration.distributions[0].ami_distribution_configuration.target_account_ids #=> Array
    #   resp.distribution_configuration.distributions[0].ami_distribution_configuration.target_account_ids[0] #=> String
    #   resp.distribution_configuration.distributions[0].ami_distribution_configuration.ami_tags #=> Hash
    #   resp.distribution_configuration.distributions[0].ami_distribution_configuration.ami_tags["TagKey"] #=> String
    #   resp.distribution_configuration.distributions[0].ami_distribution_configuration.kms_key_id #=> String
    #   resp.distribution_configuration.distributions[0].ami_distribution_configuration.launch_permission.user_ids #=> Array
    #   resp.distribution_configuration.distributions[0].ami_distribution_configuration.launch_permission.user_ids[0] #=> String
    #   resp.distribution_configuration.distributions[0].ami_distribution_configuration.launch_permission.user_groups #=> Array
    #   resp.distribution_configuration.distributions[0].ami_distribution_configuration.launch_permission.user_groups[0] #=> String
    #   resp.distribution_configuration.distributions[0].ami_distribution_configuration.launch_permission.organization_arns #=> Array
    #   resp.distribution_configuration.distributions[0].ami_distribution_configuration.launch_permission.organization_arns[0] #=> String
    #   resp.distribution_configuration.distributions[0].ami_distribution_configuration.launch_permission.organizational_unit_arns #=> Array
    #   resp.distribution_configuration.distributions[0].ami_distribution_configuration.launch_permission.organizational_unit_arns[0] #=> String
    #   resp.distribution_configuration.distributions[0].container_distribution_configuration.description #=> String
    #   resp.distribution_configuration.distributions[0].container_distribution_configuration.container_tags #=> Array
    #   resp.distribution_configuration.distributions[0].container_distribution_configuration.container_tags[0] #=> String
    #   resp.distribution_configuration.distributions[0].container_distribution_configuration.target_repository.service #=> String, one of "ECR"
    #   resp.distribution_configuration.distributions[0].container_distribution_configuration.target_repository.repository_name #=> String
    #   resp.distribution_configuration.distributions[0].license_configuration_arns #=> Array
    #   resp.distribution_configuration.distributions[0].license_configuration_arns[0] #=> String
    #   resp.distribution_configuration.distributions[0].launch_template_configurations #=> Array
    #   resp.distribution_configuration.distributions[0].launch_template_configurations[0].launch_template_id #=> String
    #   resp.distribution_configuration.distributions[0].launch_template_configurations[0].account_id #=> String
    #   resp.distribution_configuration.distributions[0].launch_template_configurations[0].set_default_version #=> Boolean
    #   resp.distribution_configuration.distributions[0].s3_export_configuration.role_name #=> String
    #   resp.distribution_configuration.distributions[0].s3_export_configuration.disk_image_format #=> String, one of "VMDK", "RAW", "VHD"
    #   resp.distribution_configuration.distributions[0].s3_export_configuration.s3_bucket #=> String
    #   resp.distribution_configuration.distributions[0].s3_export_configuration.s3_prefix #=> String
    #   resp.distribution_configuration.distributions[0].fast_launch_configurations #=> Array
    #   resp.distribution_configuration.distributions[0].fast_launch_configurations[0].enabled #=> Boolean
    #   resp.distribution_configuration.distributions[0].fast_launch_configurations[0].snapshot_configuration.target_resource_count #=> Integer
    #   resp.distribution_configuration.distributions[0].fast_launch_configurations[0].max_parallel_launches #=> Integer
    #   resp.distribution_configuration.distributions[0].fast_launch_configurations[0].launch_template.launch_template_id #=> String
    #   resp.distribution_configuration.distributions[0].fast_launch_configurations[0].launch_template.launch_template_name #=> String
    #   resp.distribution_configuration.distributions[0].fast_launch_configurations[0].launch_template.launch_template_version #=> String
    #   resp.distribution_configuration.distributions[0].fast_launch_configurations[0].account_id #=> String
    #   resp.distribution_configuration.distributions[0].ssm_parameter_configurations #=> Array
    #   resp.distribution_configuration.distributions[0].ssm_parameter_configurations[0].ami_account_id #=> String
    #   resp.distribution_configuration.distributions[0].ssm_parameter_configurations[0].parameter_name #=> String
    #   resp.distribution_configuration.distributions[0].ssm_parameter_configurations[0].data_type #=> String, one of "text", "aws:ec2:image"
    #   resp.distribution_configuration.timeout_minutes #=> Integer
    #   resp.distribution_configuration.date_created #=> String
    #   resp.distribution_configuration.date_updated #=> String
    #   resp.distribution_configuration.tags #=> Hash
    #   resp.distribution_configuration.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/GetDistributionConfiguration AWS API Documentation
    #
    # @overload get_distribution_configuration(params = {})
    # @param [Hash] params ({})
    def get_distribution_configuration(params = {}, options = {})
      req = build_request(:get_distribution_configuration, params)
      req.send_request(options)
    end

    # Gets an image.
    #
    # @option params [required, String] :image_build_version_arn
    #   The Amazon Resource Name (ARN) of the image that you want to get.
    #
    # @return [Types::GetImageResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetImageResponse#request_id #request_id} => String
    #   * {Types::GetImageResponse#image #image} => Types::Image
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_image({
    #     image_build_version_arn: "ImageVersionArnOrBuildVersionArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.request_id #=> String
    #   resp.image.arn #=> String
    #   resp.image.type #=> String, one of "AMI", "DOCKER"
    #   resp.image.name #=> String
    #   resp.image.version #=> String
    #   resp.image.platform #=> String, one of "Windows", "Linux", "macOS"
    #   resp.image.enhanced_image_metadata_enabled #=> Boolean
    #   resp.image.os_version #=> String
    #   resp.image.state.status #=> String, one of "PENDING", "CREATING", "BUILDING", "TESTING", "DISTRIBUTING", "INTEGRATING", "AVAILABLE", "CANCELLED", "FAILED", "DEPRECATED", "DELETED", "DISABLED"
    #   resp.image.state.reason #=> String
    #   resp.image.image_recipe.arn #=> String
    #   resp.image.image_recipe.type #=> String, one of "AMI", "DOCKER"
    #   resp.image.image_recipe.name #=> String
    #   resp.image.image_recipe.description #=> String
    #   resp.image.image_recipe.platform #=> String, one of "Windows", "Linux", "macOS"
    #   resp.image.image_recipe.owner #=> String
    #   resp.image.image_recipe.version #=> String
    #   resp.image.image_recipe.components #=> Array
    #   resp.image.image_recipe.components[0].component_arn #=> String
    #   resp.image.image_recipe.components[0].parameters #=> Array
    #   resp.image.image_recipe.components[0].parameters[0].name #=> String
    #   resp.image.image_recipe.components[0].parameters[0].value #=> Array
    #   resp.image.image_recipe.components[0].parameters[0].value[0] #=> String
    #   resp.image.image_recipe.parent_image #=> String
    #   resp.image.image_recipe.block_device_mappings #=> Array
    #   resp.image.image_recipe.block_device_mappings[0].device_name #=> String
    #   resp.image.image_recipe.block_device_mappings[0].ebs.encrypted #=> Boolean
    #   resp.image.image_recipe.block_device_mappings[0].ebs.delete_on_termination #=> Boolean
    #   resp.image.image_recipe.block_device_mappings[0].ebs.iops #=> Integer
    #   resp.image.image_recipe.block_device_mappings[0].ebs.kms_key_id #=> String
    #   resp.image.image_recipe.block_device_mappings[0].ebs.snapshot_id #=> String
    #   resp.image.image_recipe.block_device_mappings[0].ebs.volume_size #=> Integer
    #   resp.image.image_recipe.block_device_mappings[0].ebs.volume_type #=> String, one of "standard", "io1", "io2", "gp2", "gp3", "sc1", "st1"
    #   resp.image.image_recipe.block_device_mappings[0].ebs.throughput #=> Integer
    #   resp.image.image_recipe.block_device_mappings[0].virtual_name #=> String
    #   resp.image.image_recipe.block_device_mappings[0].no_device #=> String
    #   resp.image.image_recipe.date_created #=> String
    #   resp.image.image_recipe.tags #=> Hash
    #   resp.image.image_recipe.tags["TagKey"] #=> String
    #   resp.image.image_recipe.working_directory #=> String
    #   resp.image.image_recipe.additional_instance_configuration.systems_manager_agent.uninstall_after_build #=> Boolean
    #   resp.image.image_recipe.additional_instance_configuration.user_data_override #=> String
    #   resp.image.image_recipe.ami_tags #=> Hash
    #   resp.image.image_recipe.ami_tags["TagKey"] #=> String
    #   resp.image.container_recipe.arn #=> String
    #   resp.image.container_recipe.container_type #=> String, one of "DOCKER"
    #   resp.image.container_recipe.name #=> String
    #   resp.image.container_recipe.description #=> String
    #   resp.image.container_recipe.platform #=> String, one of "Windows", "Linux", "macOS"
    #   resp.image.container_recipe.owner #=> String
    #   resp.image.container_recipe.version #=> String
    #   resp.image.container_recipe.components #=> Array
    #   resp.image.container_recipe.components[0].component_arn #=> String
    #   resp.image.container_recipe.components[0].parameters #=> Array
    #   resp.image.container_recipe.components[0].parameters[0].name #=> String
    #   resp.image.container_recipe.components[0].parameters[0].value #=> Array
    #   resp.image.container_recipe.components[0].parameters[0].value[0] #=> String
    #   resp.image.container_recipe.instance_configuration.image #=> String
    #   resp.image.container_recipe.instance_configuration.block_device_mappings #=> Array
    #   resp.image.container_recipe.instance_configuration.block_device_mappings[0].device_name #=> String
    #   resp.image.container_recipe.instance_configuration.block_device_mappings[0].ebs.encrypted #=> Boolean
    #   resp.image.container_recipe.instance_configuration.block_device_mappings[0].ebs.delete_on_termination #=> Boolean
    #   resp.image.container_recipe.instance_configuration.block_device_mappings[0].ebs.iops #=> Integer
    #   resp.image.container_recipe.instance_configuration.block_device_mappings[0].ebs.kms_key_id #=> String
    #   resp.image.container_recipe.instance_configuration.block_device_mappings[0].ebs.snapshot_id #=> String
    #   resp.image.container_recipe.instance_configuration.block_device_mappings[0].ebs.volume_size #=> Integer
    #   resp.image.container_recipe.instance_configuration.block_device_mappings[0].ebs.volume_type #=> String, one of "standard", "io1", "io2", "gp2", "gp3", "sc1", "st1"
    #   resp.image.container_recipe.instance_configuration.block_device_mappings[0].ebs.throughput #=> Integer
    #   resp.image.container_recipe.instance_configuration.block_device_mappings[0].virtual_name #=> String
    #   resp.image.container_recipe.instance_configuration.block_device_mappings[0].no_device #=> String
    #   resp.image.container_recipe.dockerfile_template_data #=> String
    #   resp.image.container_recipe.kms_key_id #=> String
    #   resp.image.container_recipe.encrypted #=> Boolean
    #   resp.image.container_recipe.parent_image #=> String
    #   resp.image.container_recipe.date_created #=> String
    #   resp.image.container_recipe.tags #=> Hash
    #   resp.image.container_recipe.tags["TagKey"] #=> String
    #   resp.image.container_recipe.working_directory #=> String
    #   resp.image.container_recipe.target_repository.service #=> String, one of "ECR"
    #   resp.image.container_recipe.target_repository.repository_name #=> String
    #   resp.image.source_pipeline_name #=> String
    #   resp.image.source_pipeline_arn #=> String
    #   resp.image.infrastructure_configuration.arn #=> String
    #   resp.image.infrastructure_configuration.name #=> String
    #   resp.image.infrastructure_configuration.description #=> String
    #   resp.image.infrastructure_configuration.instance_types #=> Array
    #   resp.image.infrastructure_configuration.instance_types[0] #=> String
    #   resp.image.infrastructure_configuration.instance_profile_name #=> String
    #   resp.image.infrastructure_configuration.security_group_ids #=> Array
    #   resp.image.infrastructure_configuration.security_group_ids[0] #=> String
    #   resp.image.infrastructure_configuration.subnet_id #=> String
    #   resp.image.infrastructure_configuration.logging.s3_logs.s3_bucket_name #=> String
    #   resp.image.infrastructure_configuration.logging.s3_logs.s3_key_prefix #=> String
    #   resp.image.infrastructure_configuration.key_pair #=> String
    #   resp.image.infrastructure_configuration.terminate_instance_on_failure #=> Boolean
    #   resp.image.infrastructure_configuration.sns_topic_arn #=> String
    #   resp.image.infrastructure_configuration.date_created #=> String
    #   resp.image.infrastructure_configuration.date_updated #=> String
    #   resp.image.infrastructure_configuration.resource_tags #=> Hash
    #   resp.image.infrastructure_configuration.resource_tags["TagKey"] #=> String
    #   resp.image.infrastructure_configuration.instance_metadata_options.http_tokens #=> String
    #   resp.image.infrastructure_configuration.instance_metadata_options.http_put_response_hop_limit #=> Integer
    #   resp.image.infrastructure_configuration.tags #=> Hash
    #   resp.image.infrastructure_configuration.tags["TagKey"] #=> String
    #   resp.image.infrastructure_configuration.placement.availability_zone #=> String
    #   resp.image.infrastructure_configuration.placement.tenancy #=> String, one of "default", "dedicated", "host"
    #   resp.image.infrastructure_configuration.placement.host_id #=> String
    #   resp.image.infrastructure_configuration.placement.host_resource_group_arn #=> String
    #   resp.image.distribution_configuration.arn #=> String
    #   resp.image.distribution_configuration.name #=> String
    #   resp.image.distribution_configuration.description #=> String
    #   resp.image.distribution_configuration.distributions #=> Array
    #   resp.image.distribution_configuration.distributions[0].region #=> String
    #   resp.image.distribution_configuration.distributions[0].ami_distribution_configuration.name #=> String
    #   resp.image.distribution_configuration.distributions[0].ami_distribution_configuration.description #=> String
    #   resp.image.distribution_configuration.distributions[0].ami_distribution_configuration.target_account_ids #=> Array
    #   resp.image.distribution_configuration.distributions[0].ami_distribution_configuration.target_account_ids[0] #=> String
    #   resp.image.distribution_configuration.distributions[0].ami_distribution_configuration.ami_tags #=> Hash
    #   resp.image.distribution_configuration.distributions[0].ami_distribution_configuration.ami_tags["TagKey"] #=> String
    #   resp.image.distribution_configuration.distributions[0].ami_distribution_configuration.kms_key_id #=> String
    #   resp.image.distribution_configuration.distributions[0].ami_distribution_configuration.launch_permission.user_ids #=> Array
    #   resp.image.distribution_configuration.distributions[0].ami_distribution_configuration.launch_permission.user_ids[0] #=> String
    #   resp.image.distribution_configuration.distributions[0].ami_distribution_configuration.launch_permission.user_groups #=> Array
    #   resp.image.distribution_configuration.distributions[0].ami_distribution_configuration.launch_permission.user_groups[0] #=> String
    #   resp.image.distribution_configuration.distributions[0].ami_distribution_configuration.launch_permission.organization_arns #=> Array
    #   resp.image.distribution_configuration.distributions[0].ami_distribution_configuration.launch_permission.organization_arns[0] #=> String
    #   resp.image.distribution_configuration.distributions[0].ami_distribution_configuration.launch_permission.organizational_unit_arns #=> Array
    #   resp.image.distribution_configuration.distributions[0].ami_distribution_configuration.launch_permission.organizational_unit_arns[0] #=> String
    #   resp.image.distribution_configuration.distributions[0].container_distribution_configuration.description #=> String
    #   resp.image.distribution_configuration.distributions[0].container_distribution_configuration.container_tags #=> Array
    #   resp.image.distribution_configuration.distributions[0].container_distribution_configuration.container_tags[0] #=> String
    #   resp.image.distribution_configuration.distributions[0].container_distribution_configuration.target_repository.service #=> String, one of "ECR"
    #   resp.image.distribution_configuration.distributions[0].container_distribution_configuration.target_repository.repository_name #=> String
    #   resp.image.distribution_configuration.distributions[0].license_configuration_arns #=> Array
    #   resp.image.distribution_configuration.distributions[0].license_configuration_arns[0] #=> String
    #   resp.image.distribution_configuration.distributions[0].launch_template_configurations #=> Array
    #   resp.image.distribution_configuration.distributions[0].launch_template_configurations[0].launch_template_id #=> String
    #   resp.image.distribution_configuration.distributions[0].launch_template_configurations[0].account_id #=> String
    #   resp.image.distribution_configuration.distributions[0].launch_template_configurations[0].set_default_version #=> Boolean
    #   resp.image.distribution_configuration.distributions[0].s3_export_configuration.role_name #=> String
    #   resp.image.distribution_configuration.distributions[0].s3_export_configuration.disk_image_format #=> String, one of "VMDK", "RAW", "VHD"
    #   resp.image.distribution_configuration.distributions[0].s3_export_configuration.s3_bucket #=> String
    #   resp.image.distribution_configuration.distributions[0].s3_export_configuration.s3_prefix #=> String
    #   resp.image.distribution_configuration.distributions[0].fast_launch_configurations #=> Array
    #   resp.image.distribution_configuration.distributions[0].fast_launch_configurations[0].enabled #=> Boolean
    #   resp.image.distribution_configuration.distributions[0].fast_launch_configurations[0].snapshot_configuration.target_resource_count #=> Integer
    #   resp.image.distribution_configuration.distributions[0].fast_launch_configurations[0].max_parallel_launches #=> Integer
    #   resp.image.distribution_configuration.distributions[0].fast_launch_configurations[0].launch_template.launch_template_id #=> String
    #   resp.image.distribution_configuration.distributions[0].fast_launch_configurations[0].launch_template.launch_template_name #=> String
    #   resp.image.distribution_configuration.distributions[0].fast_launch_configurations[0].launch_template.launch_template_version #=> String
    #   resp.image.distribution_configuration.distributions[0].fast_launch_configurations[0].account_id #=> String
    #   resp.image.distribution_configuration.distributions[0].ssm_parameter_configurations #=> Array
    #   resp.image.distribution_configuration.distributions[0].ssm_parameter_configurations[0].ami_account_id #=> String
    #   resp.image.distribution_configuration.distributions[0].ssm_parameter_configurations[0].parameter_name #=> String
    #   resp.image.distribution_configuration.distributions[0].ssm_parameter_configurations[0].data_type #=> String, one of "text", "aws:ec2:image"
    #   resp.image.distribution_configuration.timeout_minutes #=> Integer
    #   resp.image.distribution_configuration.date_created #=> String
    #   resp.image.distribution_configuration.date_updated #=> String
    #   resp.image.distribution_configuration.tags #=> Hash
    #   resp.image.distribution_configuration.tags["TagKey"] #=> String
    #   resp.image.image_tests_configuration.image_tests_enabled #=> Boolean
    #   resp.image.image_tests_configuration.timeout_minutes #=> Integer
    #   resp.image.date_created #=> String
    #   resp.image.output_resources.amis #=> Array
    #   resp.image.output_resources.amis[0].region #=> String
    #   resp.image.output_resources.amis[0].image #=> String
    #   resp.image.output_resources.amis[0].name #=> String
    #   resp.image.output_resources.amis[0].description #=> String
    #   resp.image.output_resources.amis[0].state.status #=> String, one of "PENDING", "CREATING", "BUILDING", "TESTING", "DISTRIBUTING", "INTEGRATING", "AVAILABLE", "CANCELLED", "FAILED", "DEPRECATED", "DELETED", "DISABLED"
    #   resp.image.output_resources.amis[0].state.reason #=> String
    #   resp.image.output_resources.amis[0].account_id #=> String
    #   resp.image.output_resources.containers #=> Array
    #   resp.image.output_resources.containers[0].region #=> String
    #   resp.image.output_resources.containers[0].image_uris #=> Array
    #   resp.image.output_resources.containers[0].image_uris[0] #=> String
    #   resp.image.tags #=> Hash
    #   resp.image.tags["TagKey"] #=> String
    #   resp.image.build_type #=> String, one of "USER_INITIATED", "SCHEDULED", "IMPORT", "IMPORT_ISO"
    #   resp.image.image_source #=> String, one of "AMAZON_MANAGED", "AWS_MARKETPLACE", "IMPORTED", "CUSTOM"
    #   resp.image.scan_state.status #=> String, one of "PENDING", "SCANNING", "COLLECTING", "COMPLETED", "ABANDONED", "FAILED", "TIMED_OUT"
    #   resp.image.scan_state.reason #=> String
    #   resp.image.image_scanning_configuration.image_scanning_enabled #=> Boolean
    #   resp.image.image_scanning_configuration.ecr_configuration.repository_name #=> String
    #   resp.image.image_scanning_configuration.ecr_configuration.container_tags #=> Array
    #   resp.image.image_scanning_configuration.ecr_configuration.container_tags[0] #=> String
    #   resp.image.deprecation_time #=> Time
    #   resp.image.lifecycle_execution_id #=> String
    #   resp.image.execution_role #=> String
    #   resp.image.workflows #=> Array
    #   resp.image.workflows[0].workflow_arn #=> String
    #   resp.image.workflows[0].parameters #=> Array
    #   resp.image.workflows[0].parameters[0].name #=> String
    #   resp.image.workflows[0].parameters[0].value #=> Array
    #   resp.image.workflows[0].parameters[0].value[0] #=> String
    #   resp.image.workflows[0].parallel_group #=> String
    #   resp.image.workflows[0].on_failure #=> String, one of "CONTINUE", "ABORT"
    #   resp.image.logging_configuration.log_group_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/GetImage AWS API Documentation
    #
    # @overload get_image(params = {})
    # @param [Hash] params ({})
    def get_image(params = {}, options = {})
      req = build_request(:get_image, params)
      req.send_request(options)
    end

    # Gets an image pipeline.
    #
    # @option params [required, String] :image_pipeline_arn
    #   The Amazon Resource Name (ARN) of the image pipeline that you want to
    #   retrieve.
    #
    # @return [Types::GetImagePipelineResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetImagePipelineResponse#request_id #request_id} => String
    #   * {Types::GetImagePipelineResponse#image_pipeline #image_pipeline} => Types::ImagePipeline
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_image_pipeline({
    #     image_pipeline_arn: "ImagePipelineArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.request_id #=> String
    #   resp.image_pipeline.arn #=> String
    #   resp.image_pipeline.name #=> String
    #   resp.image_pipeline.description #=> String
    #   resp.image_pipeline.platform #=> String, one of "Windows", "Linux", "macOS"
    #   resp.image_pipeline.enhanced_image_metadata_enabled #=> Boolean
    #   resp.image_pipeline.image_recipe_arn #=> String
    #   resp.image_pipeline.container_recipe_arn #=> String
    #   resp.image_pipeline.infrastructure_configuration_arn #=> String
    #   resp.image_pipeline.distribution_configuration_arn #=> String
    #   resp.image_pipeline.image_tests_configuration.image_tests_enabled #=> Boolean
    #   resp.image_pipeline.image_tests_configuration.timeout_minutes #=> Integer
    #   resp.image_pipeline.schedule.schedule_expression #=> String
    #   resp.image_pipeline.schedule.timezone #=> String
    #   resp.image_pipeline.schedule.pipeline_execution_start_condition #=> String, one of "EXPRESSION_MATCH_ONLY", "EXPRESSION_MATCH_AND_DEPENDENCY_UPDATES_AVAILABLE"
    #   resp.image_pipeline.schedule.auto_disable_policy.failure_count #=> Integer
    #   resp.image_pipeline.status #=> String, one of "DISABLED", "ENABLED"
    #   resp.image_pipeline.date_created #=> String
    #   resp.image_pipeline.date_updated #=> String
    #   resp.image_pipeline.date_last_run #=> String
    #   resp.image_pipeline.last_run_status #=> String, one of "PENDING", "CREATING", "BUILDING", "TESTING", "DISTRIBUTING", "INTEGRATING", "AVAILABLE", "CANCELLED", "FAILED", "DEPRECATED", "DELETED", "DISABLED"
    #   resp.image_pipeline.date_next_run #=> String
    #   resp.image_pipeline.tags #=> Hash
    #   resp.image_pipeline.tags["TagKey"] #=> String
    #   resp.image_pipeline.image_scanning_configuration.image_scanning_enabled #=> Boolean
    #   resp.image_pipeline.image_scanning_configuration.ecr_configuration.repository_name #=> String
    #   resp.image_pipeline.image_scanning_configuration.ecr_configuration.container_tags #=> Array
    #   resp.image_pipeline.image_scanning_configuration.ecr_configuration.container_tags[0] #=> String
    #   resp.image_pipeline.execution_role #=> String
    #   resp.image_pipeline.workflows #=> Array
    #   resp.image_pipeline.workflows[0].workflow_arn #=> String
    #   resp.image_pipeline.workflows[0].parameters #=> Array
    #   resp.image_pipeline.workflows[0].parameters[0].name #=> String
    #   resp.image_pipeline.workflows[0].parameters[0].value #=> Array
    #   resp.image_pipeline.workflows[0].parameters[0].value[0] #=> String
    #   resp.image_pipeline.workflows[0].parallel_group #=> String
    #   resp.image_pipeline.workflows[0].on_failure #=> String, one of "CONTINUE", "ABORT"
    #   resp.image_pipeline.logging_configuration.image_log_group_name #=> String
    #   resp.image_pipeline.logging_configuration.pipeline_log_group_name #=> String
    #   resp.image_pipeline.consecutive_failures #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/GetImagePipeline AWS API Documentation
    #
    # @overload get_image_pipeline(params = {})
    # @param [Hash] params ({})
    def get_image_pipeline(params = {}, options = {})
      req = build_request(:get_image_pipeline, params)
      req.send_request(options)
    end

    # Gets an image policy.
    #
    # @option params [required, String] :image_arn
    #   The Amazon Resource Name (ARN) of the image whose policy you want to
    #   retrieve.
    #
    # @return [Types::GetImagePolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetImagePolicyResponse#request_id #request_id} => String
    #   * {Types::GetImagePolicyResponse#policy #policy} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_image_policy({
    #     image_arn: "ImageBuildVersionArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.request_id #=> String
    #   resp.policy #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/GetImagePolicy AWS API Documentation
    #
    # @overload get_image_policy(params = {})
    # @param [Hash] params ({})
    def get_image_policy(params = {}, options = {})
      req = build_request(:get_image_policy, params)
      req.send_request(options)
    end

    # Gets an image recipe.
    #
    # @option params [required, String] :image_recipe_arn
    #   The Amazon Resource Name (ARN) of the image recipe that you want to
    #   retrieve.
    #
    # @return [Types::GetImageRecipeResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetImageRecipeResponse#request_id #request_id} => String
    #   * {Types::GetImageRecipeResponse#image_recipe #image_recipe} => Types::ImageRecipe
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_image_recipe({
    #     image_recipe_arn: "ImageRecipeArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.request_id #=> String
    #   resp.image_recipe.arn #=> String
    #   resp.image_recipe.type #=> String, one of "AMI", "DOCKER"
    #   resp.image_recipe.name #=> String
    #   resp.image_recipe.description #=> String
    #   resp.image_recipe.platform #=> String, one of "Windows", "Linux", "macOS"
    #   resp.image_recipe.owner #=> String
    #   resp.image_recipe.version #=> String
    #   resp.image_recipe.components #=> Array
    #   resp.image_recipe.components[0].component_arn #=> String
    #   resp.image_recipe.components[0].parameters #=> Array
    #   resp.image_recipe.components[0].parameters[0].name #=> String
    #   resp.image_recipe.components[0].parameters[0].value #=> Array
    #   resp.image_recipe.components[0].parameters[0].value[0] #=> String
    #   resp.image_recipe.parent_image #=> String
    #   resp.image_recipe.block_device_mappings #=> Array
    #   resp.image_recipe.block_device_mappings[0].device_name #=> String
    #   resp.image_recipe.block_device_mappings[0].ebs.encrypted #=> Boolean
    #   resp.image_recipe.block_device_mappings[0].ebs.delete_on_termination #=> Boolean
    #   resp.image_recipe.block_device_mappings[0].ebs.iops #=> Integer
    #   resp.image_recipe.block_device_mappings[0].ebs.kms_key_id #=> String
    #   resp.image_recipe.block_device_mappings[0].ebs.snapshot_id #=> String
    #   resp.image_recipe.block_device_mappings[0].ebs.volume_size #=> Integer
    #   resp.image_recipe.block_device_mappings[0].ebs.volume_type #=> String, one of "standard", "io1", "io2", "gp2", "gp3", "sc1", "st1"
    #   resp.image_recipe.block_device_mappings[0].ebs.throughput #=> Integer
    #   resp.image_recipe.block_device_mappings[0].virtual_name #=> String
    #   resp.image_recipe.block_device_mappings[0].no_device #=> String
    #   resp.image_recipe.date_created #=> String
    #   resp.image_recipe.tags #=> Hash
    #   resp.image_recipe.tags["TagKey"] #=> String
    #   resp.image_recipe.working_directory #=> String
    #   resp.image_recipe.additional_instance_configuration.systems_manager_agent.uninstall_after_build #=> Boolean
    #   resp.image_recipe.additional_instance_configuration.user_data_override #=> String
    #   resp.image_recipe.ami_tags #=> Hash
    #   resp.image_recipe.ami_tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/GetImageRecipe AWS API Documentation
    #
    # @overload get_image_recipe(params = {})
    # @param [Hash] params ({})
    def get_image_recipe(params = {}, options = {})
      req = build_request(:get_image_recipe, params)
      req.send_request(options)
    end

    # Gets an image recipe policy.
    #
    # @option params [required, String] :image_recipe_arn
    #   The Amazon Resource Name (ARN) of the image recipe whose policy you
    #   want to retrieve.
    #
    # @return [Types::GetImageRecipePolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetImageRecipePolicyResponse#request_id #request_id} => String
    #   * {Types::GetImageRecipePolicyResponse#policy #policy} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_image_recipe_policy({
    #     image_recipe_arn: "ImageRecipeArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.request_id #=> String
    #   resp.policy #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/GetImageRecipePolicy AWS API Documentation
    #
    # @overload get_image_recipe_policy(params = {})
    # @param [Hash] params ({})
    def get_image_recipe_policy(params = {}, options = {})
      req = build_request(:get_image_recipe_policy, params)
      req.send_request(options)
    end

    # Gets an infrastructure configuration.
    #
    # @option params [required, String] :infrastructure_configuration_arn
    #   The Amazon Resource Name (ARN) of the infrastructure configuration
    #   that you want to retrieve.
    #
    # @return [Types::GetInfrastructureConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetInfrastructureConfigurationResponse#request_id #request_id} => String
    #   * {Types::GetInfrastructureConfigurationResponse#infrastructure_configuration #infrastructure_configuration} => Types::InfrastructureConfiguration
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_infrastructure_configuration({
    #     infrastructure_configuration_arn: "InfrastructureConfigurationArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.request_id #=> String
    #   resp.infrastructure_configuration.arn #=> String
    #   resp.infrastructure_configuration.name #=> String
    #   resp.infrastructure_configuration.description #=> String
    #   resp.infrastructure_configuration.instance_types #=> Array
    #   resp.infrastructure_configuration.instance_types[0] #=> String
    #   resp.infrastructure_configuration.instance_profile_name #=> String
    #   resp.infrastructure_configuration.security_group_ids #=> Array
    #   resp.infrastructure_configuration.security_group_ids[0] #=> String
    #   resp.infrastructure_configuration.subnet_id #=> String
    #   resp.infrastructure_configuration.logging.s3_logs.s3_bucket_name #=> String
    #   resp.infrastructure_configuration.logging.s3_logs.s3_key_prefix #=> String
    #   resp.infrastructure_configuration.key_pair #=> String
    #   resp.infrastructure_configuration.terminate_instance_on_failure #=> Boolean
    #   resp.infrastructure_configuration.sns_topic_arn #=> String
    #   resp.infrastructure_configuration.date_created #=> String
    #   resp.infrastructure_configuration.date_updated #=> String
    #   resp.infrastructure_configuration.resource_tags #=> Hash
    #   resp.infrastructure_configuration.resource_tags["TagKey"] #=> String
    #   resp.infrastructure_configuration.instance_metadata_options.http_tokens #=> String
    #   resp.infrastructure_configuration.instance_metadata_options.http_put_response_hop_limit #=> Integer
    #   resp.infrastructure_configuration.tags #=> Hash
    #   resp.infrastructure_configuration.tags["TagKey"] #=> String
    #   resp.infrastructure_configuration.placement.availability_zone #=> String
    #   resp.infrastructure_configuration.placement.tenancy #=> String, one of "default", "dedicated", "host"
    #   resp.infrastructure_configuration.placement.host_id #=> String
    #   resp.infrastructure_configuration.placement.host_resource_group_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/GetInfrastructureConfiguration AWS API Documentation
    #
    # @overload get_infrastructure_configuration(params = {})
    # @param [Hash] params ({})
    def get_infrastructure_configuration(params = {}, options = {})
      req = build_request(:get_infrastructure_configuration, params)
      req.send_request(options)
    end

    # Get the runtime information that was logged for a specific runtime
    # instance of the lifecycle policy.
    #
    # @option params [required, String] :lifecycle_execution_id
    #   Use the unique identifier for a runtime instance of the lifecycle
    #   policy to get runtime details.
    #
    # @return [Types::GetLifecycleExecutionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetLifecycleExecutionResponse#lifecycle_execution #lifecycle_execution} => Types::LifecycleExecution
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_lifecycle_execution({
    #     lifecycle_execution_id: "LifecycleExecutionId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.lifecycle_execution.lifecycle_execution_id #=> String
    #   resp.lifecycle_execution.lifecycle_policy_arn #=> String
    #   resp.lifecycle_execution.resources_impacted_summary.has_impacted_resources #=> Boolean
    #   resp.lifecycle_execution.state.status #=> String, one of "IN_PROGRESS", "CANCELLED", "CANCELLING", "FAILED", "SUCCESS", "PENDING"
    #   resp.lifecycle_execution.state.reason #=> String
    #   resp.lifecycle_execution.start_time #=> Time
    #   resp.lifecycle_execution.end_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/GetLifecycleExecution AWS API Documentation
    #
    # @overload get_lifecycle_execution(params = {})
    # @param [Hash] params ({})
    def get_lifecycle_execution(params = {}, options = {})
      req = build_request(:get_lifecycle_execution, params)
      req.send_request(options)
    end

    # Get details for the specified image lifecycle policy.
    #
    # @option params [required, String] :lifecycle_policy_arn
    #   Specifies the Amazon Resource Name (ARN) of the image lifecycle policy
    #   resource to get.
    #
    # @return [Types::GetLifecyclePolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetLifecyclePolicyResponse#lifecycle_policy #lifecycle_policy} => Types::LifecyclePolicy
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_lifecycle_policy({
    #     lifecycle_policy_arn: "LifecyclePolicyArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.lifecycle_policy.arn #=> String
    #   resp.lifecycle_policy.name #=> String
    #   resp.lifecycle_policy.description #=> String
    #   resp.lifecycle_policy.status #=> String, one of "DISABLED", "ENABLED"
    #   resp.lifecycle_policy.execution_role #=> String
    #   resp.lifecycle_policy.resource_type #=> String, one of "AMI_IMAGE", "CONTAINER_IMAGE"
    #   resp.lifecycle_policy.policy_details #=> Array
    #   resp.lifecycle_policy.policy_details[0].action.type #=> String, one of "DELETE", "DEPRECATE", "DISABLE"
    #   resp.lifecycle_policy.policy_details[0].action.include_resources.amis #=> Boolean
    #   resp.lifecycle_policy.policy_details[0].action.include_resources.snapshots #=> Boolean
    #   resp.lifecycle_policy.policy_details[0].action.include_resources.containers #=> Boolean
    #   resp.lifecycle_policy.policy_details[0].filter.type #=> String, one of "AGE", "COUNT"
    #   resp.lifecycle_policy.policy_details[0].filter.value #=> Integer
    #   resp.lifecycle_policy.policy_details[0].filter.unit #=> String, one of "DAYS", "WEEKS", "MONTHS", "YEARS"
    #   resp.lifecycle_policy.policy_details[0].filter.retain_at_least #=> Integer
    #   resp.lifecycle_policy.policy_details[0].exclusion_rules.tag_map #=> Hash
    #   resp.lifecycle_policy.policy_details[0].exclusion_rules.tag_map["TagKey"] #=> String
    #   resp.lifecycle_policy.policy_details[0].exclusion_rules.amis.is_public #=> Boolean
    #   resp.lifecycle_policy.policy_details[0].exclusion_rules.amis.regions #=> Array
    #   resp.lifecycle_policy.policy_details[0].exclusion_rules.amis.regions[0] #=> String
    #   resp.lifecycle_policy.policy_details[0].exclusion_rules.amis.shared_accounts #=> Array
    #   resp.lifecycle_policy.policy_details[0].exclusion_rules.amis.shared_accounts[0] #=> String
    #   resp.lifecycle_policy.policy_details[0].exclusion_rules.amis.last_launched.value #=> Integer
    #   resp.lifecycle_policy.policy_details[0].exclusion_rules.amis.last_launched.unit #=> String, one of "DAYS", "WEEKS", "MONTHS", "YEARS"
    #   resp.lifecycle_policy.policy_details[0].exclusion_rules.amis.tag_map #=> Hash
    #   resp.lifecycle_policy.policy_details[0].exclusion_rules.amis.tag_map["TagKey"] #=> String
    #   resp.lifecycle_policy.resource_selection.recipes #=> Array
    #   resp.lifecycle_policy.resource_selection.recipes[0].name #=> String
    #   resp.lifecycle_policy.resource_selection.recipes[0].semantic_version #=> String
    #   resp.lifecycle_policy.resource_selection.tag_map #=> Hash
    #   resp.lifecycle_policy.resource_selection.tag_map["TagKey"] #=> String
    #   resp.lifecycle_policy.date_created #=> Time
    #   resp.lifecycle_policy.date_updated #=> Time
    #   resp.lifecycle_policy.date_last_run #=> Time
    #   resp.lifecycle_policy.tags #=> Hash
    #   resp.lifecycle_policy.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/GetLifecyclePolicy AWS API Documentation
    #
    # @overload get_lifecycle_policy(params = {})
    # @param [Hash] params ({})
    def get_lifecycle_policy(params = {}, options = {})
      req = build_request(:get_lifecycle_policy, params)
      req.send_request(options)
    end

    # Verify the subscription and perform resource dependency checks on the
    # requested Amazon Web Services Marketplace resource. For Amazon Web
    # Services Marketplace components, the response contains fields to
    # download the components and their artifacts.
    #
    # @option params [required, String] :resource_type
    #   Specifies which type of Amazon Web Services Marketplace resource Image
    #   Builder retrieves.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) that uniquely identifies an Amazon Web
    #   Services Marketplace resource.
    #
    # @option params [String] :resource_location
    #   The bucket path that you can specify to download the resource from
    #   Amazon S3.
    #
    # @return [Types::GetMarketplaceResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetMarketplaceResourceResponse#resource_arn #resource_arn} => String
    #   * {Types::GetMarketplaceResourceResponse#url #url} => String
    #   * {Types::GetMarketplaceResourceResponse#data #data} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_marketplace_resource({
    #     resource_type: "COMPONENT_DATA", # required, accepts COMPONENT_DATA, COMPONENT_ARTIFACT
    #     resource_arn: "ImageBuilderArn", # required
    #     resource_location: "MarketplaceResourceLocation",
    #   })
    #
    # @example Response structure
    #
    #   resp.resource_arn #=> String
    #   resp.url #=> String
    #   resp.data #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/GetMarketplaceResource AWS API Documentation
    #
    # @overload get_marketplace_resource(params = {})
    # @param [Hash] params ({})
    def get_marketplace_resource(params = {}, options = {})
      req = build_request(:get_marketplace_resource, params)
      req.send_request(options)
    end

    # Get a workflow resource object.
    #
    # @option params [required, String] :workflow_build_version_arn
    #   The Amazon Resource Name (ARN) of the workflow resource that you want
    #   to get.
    #
    # @return [Types::GetWorkflowResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetWorkflowResponse#workflow #workflow} => Types::Workflow
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_workflow({
    #     workflow_build_version_arn: "WorkflowVersionArnOrBuildVersionArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.workflow.arn #=> String
    #   resp.workflow.name #=> String
    #   resp.workflow.version #=> String
    #   resp.workflow.description #=> String
    #   resp.workflow.change_description #=> String
    #   resp.workflow.type #=> String, one of "BUILD", "TEST", "DISTRIBUTION"
    #   resp.workflow.state.status #=> String, one of "DEPRECATED"
    #   resp.workflow.state.reason #=> String
    #   resp.workflow.owner #=> String
    #   resp.workflow.data #=> String
    #   resp.workflow.kms_key_id #=> String
    #   resp.workflow.date_created #=> String
    #   resp.workflow.tags #=> Hash
    #   resp.workflow.tags["TagKey"] #=> String
    #   resp.workflow.parameters #=> Array
    #   resp.workflow.parameters[0].name #=> String
    #   resp.workflow.parameters[0].type #=> String
    #   resp.workflow.parameters[0].default_value #=> Array
    #   resp.workflow.parameters[0].default_value[0] #=> String
    #   resp.workflow.parameters[0].description #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/GetWorkflow AWS API Documentation
    #
    # @overload get_workflow(params = {})
    # @param [Hash] params ({})
    def get_workflow(params = {}, options = {})
      req = build_request(:get_workflow, params)
      req.send_request(options)
    end

    # Get the runtime information that was logged for a specific runtime
    # instance of the workflow.
    #
    # @option params [required, String] :workflow_execution_id
    #   Use the unique identifier for a runtime instance of the workflow to
    #   get runtime details.
    #
    # @return [Types::GetWorkflowExecutionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetWorkflowExecutionResponse#request_id #request_id} => String
    #   * {Types::GetWorkflowExecutionResponse#workflow_build_version_arn #workflow_build_version_arn} => String
    #   * {Types::GetWorkflowExecutionResponse#workflow_execution_id #workflow_execution_id} => String
    #   * {Types::GetWorkflowExecutionResponse#image_build_version_arn #image_build_version_arn} => String
    #   * {Types::GetWorkflowExecutionResponse#type #type} => String
    #   * {Types::GetWorkflowExecutionResponse#status #status} => String
    #   * {Types::GetWorkflowExecutionResponse#message #message} => String
    #   * {Types::GetWorkflowExecutionResponse#total_step_count #total_step_count} => Integer
    #   * {Types::GetWorkflowExecutionResponse#total_steps_succeeded #total_steps_succeeded} => Integer
    #   * {Types::GetWorkflowExecutionResponse#total_steps_failed #total_steps_failed} => Integer
    #   * {Types::GetWorkflowExecutionResponse#total_steps_skipped #total_steps_skipped} => Integer
    #   * {Types::GetWorkflowExecutionResponse#start_time #start_time} => String
    #   * {Types::GetWorkflowExecutionResponse#end_time #end_time} => String
    #   * {Types::GetWorkflowExecutionResponse#parallel_group #parallel_group} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_workflow_execution({
    #     workflow_execution_id: "WorkflowExecutionId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.request_id #=> String
    #   resp.workflow_build_version_arn #=> String
    #   resp.workflow_execution_id #=> String
    #   resp.image_build_version_arn #=> String
    #   resp.type #=> String, one of "BUILD", "TEST", "DISTRIBUTION"
    #   resp.status #=> String, one of "PENDING", "SKIPPED", "RUNNING", "COMPLETED", "FAILED", "ROLLBACK_IN_PROGRESS", "ROLLBACK_COMPLETED", "CANCELLED"
    #   resp.message #=> String
    #   resp.total_step_count #=> Integer
    #   resp.total_steps_succeeded #=> Integer
    #   resp.total_steps_failed #=> Integer
    #   resp.total_steps_skipped #=> Integer
    #   resp.start_time #=> String
    #   resp.end_time #=> String
    #   resp.parallel_group #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/GetWorkflowExecution AWS API Documentation
    #
    # @overload get_workflow_execution(params = {})
    # @param [Hash] params ({})
    def get_workflow_execution(params = {}, options = {})
      req = build_request(:get_workflow_execution, params)
      req.send_request(options)
    end

    # Get the runtime information that was logged for a specific runtime
    # instance of the workflow step.
    #
    # @option params [required, String] :step_execution_id
    #   Use the unique identifier for a specific runtime instance of the
    #   workflow step to get runtime details for that step.
    #
    # @return [Types::GetWorkflowStepExecutionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetWorkflowStepExecutionResponse#request_id #request_id} => String
    #   * {Types::GetWorkflowStepExecutionResponse#step_execution_id #step_execution_id} => String
    #   * {Types::GetWorkflowStepExecutionResponse#workflow_build_version_arn #workflow_build_version_arn} => String
    #   * {Types::GetWorkflowStepExecutionResponse#workflow_execution_id #workflow_execution_id} => String
    #   * {Types::GetWorkflowStepExecutionResponse#image_build_version_arn #image_build_version_arn} => String
    #   * {Types::GetWorkflowStepExecutionResponse#name #name} => String
    #   * {Types::GetWorkflowStepExecutionResponse#description #description} => String
    #   * {Types::GetWorkflowStepExecutionResponse#action #action} => String
    #   * {Types::GetWorkflowStepExecutionResponse#status #status} => String
    #   * {Types::GetWorkflowStepExecutionResponse#rollback_status #rollback_status} => String
    #   * {Types::GetWorkflowStepExecutionResponse#message #message} => String
    #   * {Types::GetWorkflowStepExecutionResponse#inputs #inputs} => String
    #   * {Types::GetWorkflowStepExecutionResponse#outputs #outputs} => String
    #   * {Types::GetWorkflowStepExecutionResponse#start_time #start_time} => String
    #   * {Types::GetWorkflowStepExecutionResponse#end_time #end_time} => String
    #   * {Types::GetWorkflowStepExecutionResponse#on_failure #on_failure} => String
    #   * {Types::GetWorkflowStepExecutionResponse#timeout_seconds #timeout_seconds} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_workflow_step_execution({
    #     step_execution_id: "WorkflowStepExecutionId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.request_id #=> String
    #   resp.step_execution_id #=> String
    #   resp.workflow_build_version_arn #=> String
    #   resp.workflow_execution_id #=> String
    #   resp.image_build_version_arn #=> String
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.action #=> String
    #   resp.status #=> String, one of "PENDING", "SKIPPED", "RUNNING", "COMPLETED", "FAILED", "CANCELLED"
    #   resp.rollback_status #=> String, one of "RUNNING", "COMPLETED", "SKIPPED", "FAILED"
    #   resp.message #=> String
    #   resp.inputs #=> String
    #   resp.outputs #=> String
    #   resp.start_time #=> String
    #   resp.end_time #=> String
    #   resp.on_failure #=> String
    #   resp.timeout_seconds #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/GetWorkflowStepExecution AWS API Documentation
    #
    # @overload get_workflow_step_execution(params = {})
    # @param [Hash] params ({})
    def get_workflow_step_execution(params = {}, options = {})
      req = build_request(:get_workflow_step_execution, params)
      req.send_request(options)
    end

    # Imports a component and transforms its data into a component document.
    #
    # @option params [required, String] :name
    #   The name of the component.
    #
    # @option params [required, String] :semantic_version
    #   The semantic version of the component. This version follows the
    #   semantic version syntax.
    #
    #   <note markdown="1"> The semantic version has four nodes:
    #   &lt;major&gt;.&lt;minor&gt;.&lt;patch&gt;/&lt;build&gt;. You can
    #   assign values for the first three, and can filter on all of them.
    #
    #    **Filtering:** With semantic versioning, you have the flexibility to
    #   use wildcards (x) to specify the most recent versions or nodes when
    #   selecting the base image or components for your recipe. When you use a
    #   wildcard in any node, all nodes to the right of the first wildcard
    #   must also be wildcards.
    #
    #    </note>
    #
    # @option params [String] :description
    #   The description of the component. Describes the contents of the
    #   component.
    #
    # @option params [String] :change_description
    #   The change description of the component. This description indicates
    #   the change that has been made in this version, or what makes this
    #   version different from other versions of the component.
    #
    # @option params [required, String] :type
    #   The type of the component denotes whether the component is used to
    #   build the image, or only to test it.
    #
    # @option params [required, String] :format
    #   The format of the resource that you want to import as a component.
    #
    # @option params [required, String] :platform
    #   The platform of the component.
    #
    # @option params [String] :data
    #   The data of the component. Used to specify the data inline. Either
    #   `data` or `uri` can be used to specify the data within the component.
    #
    # @option params [String] :uri
    #   The uri of the component. Must be an Amazon S3 URL and the requester
    #   must have permission to access the Amazon S3 bucket. If you use Amazon
    #   S3, you can specify component content up to your service quota. Either
    #   `data` or `uri` can be used to specify the data within the component.
    #
    # @option params [String] :kms_key_id
    #   The Amazon Resource Name (ARN) that uniquely identifies the KMS key
    #   used to encrypt this component. This can be either the Key ARN or the
    #   Alias ARN. For more information, see [Key identifiers (KeyId)][1] in
    #   the *Key Management Service Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-id-key-ARN
    #
    # @option params [Hash<String,String>] :tags
    #   The tags of the component.
    #
    # @option params [required, String] :client_token
    #   Unique, case-sensitive identifier you provide to ensure idempotency of
    #   the request. For more information, see [Ensuring idempotency][1] in
    #   the *Amazon EC2 API Reference*.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html
    #
    # @return [Types::ImportComponentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ImportComponentResponse#request_id #request_id} => String
    #   * {Types::ImportComponentResponse#client_token #client_token} => String
    #   * {Types::ImportComponentResponse#component_build_version_arn #component_build_version_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.import_component({
    #     name: "ResourceName", # required
    #     semantic_version: "VersionNumber", # required
    #     description: "NonEmptyString",
    #     change_description: "NonEmptyString",
    #     type: "BUILD", # required, accepts BUILD, TEST
    #     format: "SHELL", # required, accepts SHELL
    #     platform: "Windows", # required, accepts Windows, Linux, macOS
    #     data: "NonEmptyString",
    #     uri: "Uri",
    #     kms_key_id: "NonEmptyString",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     client_token: "ClientToken", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.request_id #=> String
    #   resp.client_token #=> String
    #   resp.component_build_version_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/ImportComponent AWS API Documentation
    #
    # @overload import_component(params = {})
    # @param [Hash] params ({})
    def import_component(params = {}, options = {})
      req = build_request(:import_component, params)
      req.send_request(options)
    end

    # Import a Windows operating system image from a verified Microsoft ISO
    # disk file. The following disk images are supported:
    #
    # * Windows 11 Enterprise
    #
    # ^
    #
    # @option params [required, String] :name
    #   The name of the image resource that's created from the import.
    #
    # @option params [required, String] :semantic_version
    #   The semantic version to attach to the image that's created during the
    #   import process. This version follows the semantic version syntax.
    #
    # @option params [String] :description
    #   The description for your disk image import.
    #
    # @option params [required, String] :platform
    #   The operating system platform for the imported image. Allowed values
    #   include the following: `Windows`.
    #
    # @option params [required, String] :os_version
    #   The operating system version for the imported image. Allowed values
    #   include the following: `Microsoft Windows 11`.
    #
    # @option params [String] :execution_role
    #   The name or Amazon Resource Name (ARN) for the IAM role you create
    #   that grants Image Builder access to perform workflow actions to import
    #   an image from a Microsoft ISO file.
    #
    # @option params [required, String] :infrastructure_configuration_arn
    #   The Amazon Resource Name (ARN) of the infrastructure configuration
    #   resource that's used for launching the EC2 instance on which the ISO
    #   image is built.
    #
    # @option params [required, String] :uri
    #   The `uri` of the ISO disk file that's stored in Amazon S3.
    #
    # @option params [Types::ImageLoggingConfiguration] :logging_configuration
    #   Define logging configuration for the image build process.
    #
    # @option params [Hash<String,String>] :tags
    #   Tags that are attached to image resources created from the import.
    #
    # @option params [required, String] :client_token
    #   Unique, case-sensitive identifier you provide to ensure idempotency of
    #   the request. For more information, see [Ensuring idempotency][1] in
    #   the *Amazon EC2 API Reference*.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html
    #
    # @return [Types::ImportDiskImageResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ImportDiskImageResponse#client_token #client_token} => String
    #   * {Types::ImportDiskImageResponse#image_build_version_arn #image_build_version_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.import_disk_image({
    #     name: "NonEmptyString", # required
    #     semantic_version: "VersionNumber", # required
    #     description: "NonEmptyString",
    #     platform: "NonEmptyString", # required
    #     os_version: "OsVersion", # required
    #     execution_role: "RoleNameOrArn",
    #     infrastructure_configuration_arn: "InfrastructureConfigurationArn", # required
    #     uri: "Uri", # required
    #     logging_configuration: {
    #       log_group_name: "LogGroupName",
    #     },
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     client_token: "ClientToken", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.client_token #=> String
    #   resp.image_build_version_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/ImportDiskImage AWS API Documentation
    #
    # @overload import_disk_image(params = {})
    # @param [Hash] params ({})
    def import_disk_image(params = {}, options = {})
      req = build_request(:import_disk_image, params)
      req.send_request(options)
    end

    # When you export your virtual machine (VM) from its virtualization
    # environment, that process creates a set of one or more disk container
    # files that act as snapshots of your VM’s environment, settings, and
    # data. The Amazon EC2 API [ImportImage][1] action uses those files to
    # import your VM and create an AMI. To import using the CLI command, see
    # [import-image][2]
    #
    # You can reference the task ID from the VM import to pull in the AMI
    # that the import created as the base image for your Image Builder
    # recipe.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_ImportImage.html
    # [2]: https://docs.aws.amazon.com/cli/latest/reference/ec2/import-image.html
    #
    # @option params [required, String] :name
    #   The name of the base image that is created by the import process.
    #
    # @option params [required, String] :semantic_version
    #   The semantic version to attach to the base image that was created
    #   during the import process. This version follows the semantic version
    #   syntax.
    #
    #   <note markdown="1"> The semantic version has four nodes:
    #   &lt;major&gt;.&lt;minor&gt;.&lt;patch&gt;/&lt;build&gt;. You can
    #   assign values for the first three, and can filter on all of them.
    #
    #    **Assignment:** For the first three nodes you can assign any positive
    #   integer value, including zero, with an upper limit of 2^30-1, or
    #   1073741823 for each node. Image Builder automatically assigns the
    #   build number to the fourth node.
    #
    #    **Patterns:** You can use any numeric pattern that adheres to the
    #   assignment requirements for the nodes that you can assign. For
    #   example, you might choose a software version pattern, such as 1.0.0,
    #   or a date, such as 2021.01.01.
    #
    #    </note>
    #
    # @option params [String] :description
    #   The description for the base image that is created by the import
    #   process.
    #
    # @option params [required, String] :platform
    #   The operating system platform for the imported VM.
    #
    # @option params [String] :os_version
    #   The operating system version for the imported VM.
    #
    # @option params [required, String] :vm_import_task_id
    #   The `importTaskId` (API) or `ImportTaskId` (CLI) from the Amazon EC2
    #   VM import process. Image Builder retrieves information from the import
    #   process to pull in the AMI that is created from the VM source as the
    #   base image for your recipe.
    #
    # @option params [Types::ImageLoggingConfiguration] :logging_configuration
    #   Define logging configuration for the image build process.
    #
    # @option params [Hash<String,String>] :tags
    #   Tags that are attached to the import resources.
    #
    # @option params [required, String] :client_token
    #   Unique, case-sensitive identifier you provide to ensure idempotency of
    #   the request. For more information, see [Ensuring idempotency][1] in
    #   the *Amazon EC2 API Reference*.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html
    #
    # @return [Types::ImportVmImageResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ImportVmImageResponse#request_id #request_id} => String
    #   * {Types::ImportVmImageResponse#image_arn #image_arn} => String
    #   * {Types::ImportVmImageResponse#client_token #client_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.import_vm_image({
    #     name: "NonEmptyString", # required
    #     semantic_version: "VersionNumber", # required
    #     description: "NonEmptyString",
    #     platform: "Windows", # required, accepts Windows, Linux, macOS
    #     os_version: "OsVersion",
    #     vm_import_task_id: "NonEmptyString", # required
    #     logging_configuration: {
    #       log_group_name: "LogGroupName",
    #     },
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     client_token: "ClientToken", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.request_id #=> String
    #   resp.image_arn #=> String
    #   resp.client_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/ImportVmImage AWS API Documentation
    #
    # @overload import_vm_image(params = {})
    # @param [Hash] params ({})
    def import_vm_image(params = {}, options = {})
      req = build_request(:import_vm_image, params)
      req.send_request(options)
    end

    # Returns the list of component build versions for the specified
    # component version Amazon Resource Name (ARN).
    #
    # @option params [String] :component_version_arn
    #   The component version Amazon Resource Name (ARN) whose versions you
    #   want to list.
    #
    # @option params [Integer] :max_results
    #   Specify the maximum number of items to return in a request.
    #
    # @option params [String] :next_token
    #   A token to specify where to start paginating. This is the nextToken
    #   from a previously truncated response.
    #
    # @return [Types::ListComponentBuildVersionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListComponentBuildVersionsResponse#request_id #request_id} => String
    #   * {Types::ListComponentBuildVersionsResponse#component_summary_list #component_summary_list} => Array&lt;Types::ComponentSummary&gt;
    #   * {Types::ListComponentBuildVersionsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_component_build_versions({
    #     component_version_arn: "ComponentVersionArn",
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.request_id #=> String
    #   resp.component_summary_list #=> Array
    #   resp.component_summary_list[0].arn #=> String
    #   resp.component_summary_list[0].name #=> String
    #   resp.component_summary_list[0].version #=> String
    #   resp.component_summary_list[0].platform #=> String, one of "Windows", "Linux", "macOS"
    #   resp.component_summary_list[0].supported_os_versions #=> Array
    #   resp.component_summary_list[0].supported_os_versions[0] #=> String
    #   resp.component_summary_list[0].state.status #=> String, one of "DEPRECATED", "DISABLED", "ACTIVE"
    #   resp.component_summary_list[0].state.reason #=> String
    #   resp.component_summary_list[0].type #=> String, one of "BUILD", "TEST"
    #   resp.component_summary_list[0].owner #=> String
    #   resp.component_summary_list[0].description #=> String
    #   resp.component_summary_list[0].change_description #=> String
    #   resp.component_summary_list[0].date_created #=> String
    #   resp.component_summary_list[0].tags #=> Hash
    #   resp.component_summary_list[0].tags["TagKey"] #=> String
    #   resp.component_summary_list[0].publisher #=> String
    #   resp.component_summary_list[0].obfuscate #=> Boolean
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/ListComponentBuildVersions AWS API Documentation
    #
    # @overload list_component_build_versions(params = {})
    # @param [Hash] params ({})
    def list_component_build_versions(params = {}, options = {})
      req = build_request(:list_component_build_versions, params)
      req.send_request(options)
    end

    # Returns the list of components that can be filtered by name, or by
    # using the listed `filters` to streamline results. Newly created
    # components can take up to two minutes to appear in the ListComponents
    # API Results.
    #
    # <note markdown="1"> The semantic version has four nodes:
    # &lt;major&gt;.&lt;minor&gt;.&lt;patch&gt;/&lt;build&gt;. You can
    # assign values for the first three, and can filter on all of them.
    #
    #  **Filtering:** With semantic versioning, you have the flexibility to
    # use wildcards (x) to specify the most recent versions or nodes when
    # selecting the base image or components for your recipe. When you use a
    # wildcard in any node, all nodes to the right of the first wildcard
    # must also be wildcards.
    #
    #  </note>
    #
    # @option params [String] :owner
    #   Filters results based on the type of owner for the component. By
    #   default, this request returns a list of components that your account
    #   owns. To see results for other types of owners, you can specify
    #   components that Amazon manages, third party components, or components
    #   that other accounts have shared with you.
    #
    # @option params [Array<Types::Filter>] :filters
    #   Use the following filters to streamline results:
    #
    #   * `description`
    #
    #   * `name`
    #
    #   * `platform`
    #
    #   * `supportedOsVersion`
    #
    #   * `type`
    #
    #   * `version`
    #
    # @option params [Boolean] :by_name
    #   Returns the list of components for the specified name.
    #
    # @option params [Integer] :max_results
    #   Specify the maximum number of items to return in a request.
    #
    # @option params [String] :next_token
    #   A token to specify where to start paginating. This is the nextToken
    #   from a previously truncated response.
    #
    # @return [Types::ListComponentsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListComponentsResponse#request_id #request_id} => String
    #   * {Types::ListComponentsResponse#component_version_list #component_version_list} => Array&lt;Types::ComponentVersion&gt;
    #   * {Types::ListComponentsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_components({
    #     owner: "Self", # accepts Self, Shared, Amazon, ThirdParty, AWSMarketplace
    #     filters: [
    #       {
    #         name: "FilterName",
    #         values: ["FilterValue"],
    #       },
    #     ],
    #     by_name: false,
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.request_id #=> String
    #   resp.component_version_list #=> Array
    #   resp.component_version_list[0].arn #=> String
    #   resp.component_version_list[0].name #=> String
    #   resp.component_version_list[0].version #=> String
    #   resp.component_version_list[0].description #=> String
    #   resp.component_version_list[0].platform #=> String, one of "Windows", "Linux", "macOS"
    #   resp.component_version_list[0].supported_os_versions #=> Array
    #   resp.component_version_list[0].supported_os_versions[0] #=> String
    #   resp.component_version_list[0].type #=> String, one of "BUILD", "TEST"
    #   resp.component_version_list[0].owner #=> String
    #   resp.component_version_list[0].date_created #=> String
    #   resp.component_version_list[0].status #=> String, one of "DEPRECATED", "DISABLED", "ACTIVE"
    #   resp.component_version_list[0].product_codes #=> Array
    #   resp.component_version_list[0].product_codes[0].product_code_id #=> String
    #   resp.component_version_list[0].product_codes[0].product_code_type #=> String, one of "marketplace"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/ListComponents AWS API Documentation
    #
    # @overload list_components(params = {})
    # @param [Hash] params ({})
    def list_components(params = {}, options = {})
      req = build_request(:list_components, params)
      req.send_request(options)
    end

    # Returns a list of container recipes.
    #
    # @option params [String] :owner
    #   Returns container recipes belonging to the specified owner, that have
    #   been shared with you. You can omit this field to return container
    #   recipes belonging to your account.
    #
    # @option params [Array<Types::Filter>] :filters
    #   Use the following filters to streamline results:
    #
    #   * `containerType`
    #
    #   * `name`
    #
    #   * `parentImage`
    #
    #   * `platform`
    #
    # @option params [Integer] :max_results
    #   Specify the maximum number of items to return in a request.
    #
    # @option params [String] :next_token
    #   A token to specify where to start paginating. This is the nextToken
    #   from a previously truncated response.
    #
    # @return [Types::ListContainerRecipesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListContainerRecipesResponse#request_id #request_id} => String
    #   * {Types::ListContainerRecipesResponse#container_recipe_summary_list #container_recipe_summary_list} => Array&lt;Types::ContainerRecipeSummary&gt;
    #   * {Types::ListContainerRecipesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_container_recipes({
    #     owner: "Self", # accepts Self, Shared, Amazon, ThirdParty, AWSMarketplace
    #     filters: [
    #       {
    #         name: "FilterName",
    #         values: ["FilterValue"],
    #       },
    #     ],
    #     max_results: 1,
    #     next_token: "NonEmptyString",
    #   })
    #
    # @example Response structure
    #
    #   resp.request_id #=> String
    #   resp.container_recipe_summary_list #=> Array
    #   resp.container_recipe_summary_list[0].arn #=> String
    #   resp.container_recipe_summary_list[0].container_type #=> String, one of "DOCKER"
    #   resp.container_recipe_summary_list[0].name #=> String
    #   resp.container_recipe_summary_list[0].platform #=> String, one of "Windows", "Linux", "macOS"
    #   resp.container_recipe_summary_list[0].owner #=> String
    #   resp.container_recipe_summary_list[0].parent_image #=> String
    #   resp.container_recipe_summary_list[0].date_created #=> String
    #   resp.container_recipe_summary_list[0].instance_image #=> String
    #   resp.container_recipe_summary_list[0].tags #=> Hash
    #   resp.container_recipe_summary_list[0].tags["TagKey"] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/ListContainerRecipes AWS API Documentation
    #
    # @overload list_container_recipes(params = {})
    # @param [Hash] params ({})
    def list_container_recipes(params = {}, options = {})
      req = build_request(:list_container_recipes, params)
      req.send_request(options)
    end

    # Returns a list of distribution configurations.
    #
    # @option params [Array<Types::Filter>] :filters
    #   You can filter on `name` to streamline results.
    #
    # @option params [Integer] :max_results
    #   Specify the maximum number of items to return in a request.
    #
    # @option params [String] :next_token
    #   A token to specify where to start paginating. This is the nextToken
    #   from a previously truncated response.
    #
    # @return [Types::ListDistributionConfigurationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDistributionConfigurationsResponse#request_id #request_id} => String
    #   * {Types::ListDistributionConfigurationsResponse#distribution_configuration_summary_list #distribution_configuration_summary_list} => Array&lt;Types::DistributionConfigurationSummary&gt;
    #   * {Types::ListDistributionConfigurationsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_distribution_configurations({
    #     filters: [
    #       {
    #         name: "FilterName",
    #         values: ["FilterValue"],
    #       },
    #     ],
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.request_id #=> String
    #   resp.distribution_configuration_summary_list #=> Array
    #   resp.distribution_configuration_summary_list[0].arn #=> String
    #   resp.distribution_configuration_summary_list[0].name #=> String
    #   resp.distribution_configuration_summary_list[0].description #=> String
    #   resp.distribution_configuration_summary_list[0].date_created #=> String
    #   resp.distribution_configuration_summary_list[0].date_updated #=> String
    #   resp.distribution_configuration_summary_list[0].tags #=> Hash
    #   resp.distribution_configuration_summary_list[0].tags["TagKey"] #=> String
    #   resp.distribution_configuration_summary_list[0].regions #=> Array
    #   resp.distribution_configuration_summary_list[0].regions[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/ListDistributionConfigurations AWS API Documentation
    #
    # @overload list_distribution_configurations(params = {})
    # @param [Hash] params ({})
    def list_distribution_configurations(params = {}, options = {})
      req = build_request(:list_distribution_configurations, params)
      req.send_request(options)
    end

    # Returns a list of image build versions.
    #
    # @option params [String] :image_version_arn
    #   The Amazon Resource Name (ARN) of the image whose build versions you
    #   want to retrieve.
    #
    # @option params [Array<Types::Filter>] :filters
    #   Use the following filters to streamline results:
    #
    #   * `name`
    #
    #   * `osVersion`
    #
    #   * `platform`
    #
    #   * `type`
    #
    #   * `version`
    #
    # @option params [Integer] :max_results
    #   Specify the maximum number of items to return in a request.
    #
    # @option params [String] :next_token
    #   A token to specify where to start paginating. This is the nextToken
    #   from a previously truncated response.
    #
    # @return [Types::ListImageBuildVersionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListImageBuildVersionsResponse#request_id #request_id} => String
    #   * {Types::ListImageBuildVersionsResponse#image_summary_list #image_summary_list} => Array&lt;Types::ImageSummary&gt;
    #   * {Types::ListImageBuildVersionsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_image_build_versions({
    #     image_version_arn: "ImageVersionArn",
    #     filters: [
    #       {
    #         name: "FilterName",
    #         values: ["FilterValue"],
    #       },
    #     ],
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.request_id #=> String
    #   resp.image_summary_list #=> Array
    #   resp.image_summary_list[0].arn #=> String
    #   resp.image_summary_list[0].name #=> String
    #   resp.image_summary_list[0].type #=> String, one of "AMI", "DOCKER"
    #   resp.image_summary_list[0].version #=> String
    #   resp.image_summary_list[0].platform #=> String, one of "Windows", "Linux", "macOS"
    #   resp.image_summary_list[0].os_version #=> String
    #   resp.image_summary_list[0].state.status #=> String, one of "PENDING", "CREATING", "BUILDING", "TESTING", "DISTRIBUTING", "INTEGRATING", "AVAILABLE", "CANCELLED", "FAILED", "DEPRECATED", "DELETED", "DISABLED"
    #   resp.image_summary_list[0].state.reason #=> String
    #   resp.image_summary_list[0].owner #=> String
    #   resp.image_summary_list[0].date_created #=> String
    #   resp.image_summary_list[0].output_resources.amis #=> Array
    #   resp.image_summary_list[0].output_resources.amis[0].region #=> String
    #   resp.image_summary_list[0].output_resources.amis[0].image #=> String
    #   resp.image_summary_list[0].output_resources.amis[0].name #=> String
    #   resp.image_summary_list[0].output_resources.amis[0].description #=> String
    #   resp.image_summary_list[0].output_resources.amis[0].state.status #=> String, one of "PENDING", "CREATING", "BUILDING", "TESTING", "DISTRIBUTING", "INTEGRATING", "AVAILABLE", "CANCELLED", "FAILED", "DEPRECATED", "DELETED", "DISABLED"
    #   resp.image_summary_list[0].output_resources.amis[0].state.reason #=> String
    #   resp.image_summary_list[0].output_resources.amis[0].account_id #=> String
    #   resp.image_summary_list[0].output_resources.containers #=> Array
    #   resp.image_summary_list[0].output_resources.containers[0].region #=> String
    #   resp.image_summary_list[0].output_resources.containers[0].image_uris #=> Array
    #   resp.image_summary_list[0].output_resources.containers[0].image_uris[0] #=> String
    #   resp.image_summary_list[0].tags #=> Hash
    #   resp.image_summary_list[0].tags["TagKey"] #=> String
    #   resp.image_summary_list[0].build_type #=> String, one of "USER_INITIATED", "SCHEDULED", "IMPORT", "IMPORT_ISO"
    #   resp.image_summary_list[0].image_source #=> String, one of "AMAZON_MANAGED", "AWS_MARKETPLACE", "IMPORTED", "CUSTOM"
    #   resp.image_summary_list[0].deprecation_time #=> Time
    #   resp.image_summary_list[0].lifecycle_execution_id #=> String
    #   resp.image_summary_list[0].logging_configuration.log_group_name #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/ListImageBuildVersions AWS API Documentation
    #
    # @overload list_image_build_versions(params = {})
    # @param [Hash] params ({})
    def list_image_build_versions(params = {}, options = {})
      req = build_request(:list_image_build_versions, params)
      req.send_request(options)
    end

    # List the Packages that are associated with an Image Build Version, as
    # determined by Amazon Web Services Systems Manager Inventory at build
    # time.
    #
    # @option params [required, String] :image_build_version_arn
    #   Filter results for the ListImagePackages request by the Image Build
    #   Version ARN
    #
    # @option params [Integer] :max_results
    #   Specify the maximum number of items to return in a request.
    #
    # @option params [String] :next_token
    #   A token to specify where to start paginating. This is the nextToken
    #   from a previously truncated response.
    #
    # @return [Types::ListImagePackagesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListImagePackagesResponse#request_id #request_id} => String
    #   * {Types::ListImagePackagesResponse#image_package_list #image_package_list} => Array&lt;Types::ImagePackage&gt;
    #   * {Types::ListImagePackagesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_image_packages({
    #     image_build_version_arn: "ImageBuildVersionArn", # required
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.request_id #=> String
    #   resp.image_package_list #=> Array
    #   resp.image_package_list[0].package_name #=> String
    #   resp.image_package_list[0].package_version #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/ListImagePackages AWS API Documentation
    #
    # @overload list_image_packages(params = {})
    # @param [Hash] params ({})
    def list_image_packages(params = {}, options = {})
      req = build_request(:list_image_packages, params)
      req.send_request(options)
    end

    # Returns a list of images created by the specified pipeline.
    #
    # @option params [required, String] :image_pipeline_arn
    #   The Amazon Resource Name (ARN) of the image pipeline whose images you
    #   want to view.
    #
    # @option params [Array<Types::Filter>] :filters
    #   Use the following filters to streamline results:
    #
    #   * `name`
    #
    #   * `version`
    #
    # @option params [Integer] :max_results
    #   Specify the maximum number of items to return in a request.
    #
    # @option params [String] :next_token
    #   A token to specify where to start paginating. This is the nextToken
    #   from a previously truncated response.
    #
    # @return [Types::ListImagePipelineImagesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListImagePipelineImagesResponse#request_id #request_id} => String
    #   * {Types::ListImagePipelineImagesResponse#image_summary_list #image_summary_list} => Array&lt;Types::ImageSummary&gt;
    #   * {Types::ListImagePipelineImagesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_image_pipeline_images({
    #     image_pipeline_arn: "ImagePipelineArn", # required
    #     filters: [
    #       {
    #         name: "FilterName",
    #         values: ["FilterValue"],
    #       },
    #     ],
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.request_id #=> String
    #   resp.image_summary_list #=> Array
    #   resp.image_summary_list[0].arn #=> String
    #   resp.image_summary_list[0].name #=> String
    #   resp.image_summary_list[0].type #=> String, one of "AMI", "DOCKER"
    #   resp.image_summary_list[0].version #=> String
    #   resp.image_summary_list[0].platform #=> String, one of "Windows", "Linux", "macOS"
    #   resp.image_summary_list[0].os_version #=> String
    #   resp.image_summary_list[0].state.status #=> String, one of "PENDING", "CREATING", "BUILDING", "TESTING", "DISTRIBUTING", "INTEGRATING", "AVAILABLE", "CANCELLED", "FAILED", "DEPRECATED", "DELETED", "DISABLED"
    #   resp.image_summary_list[0].state.reason #=> String
    #   resp.image_summary_list[0].owner #=> String
    #   resp.image_summary_list[0].date_created #=> String
    #   resp.image_summary_list[0].output_resources.amis #=> Array
    #   resp.image_summary_list[0].output_resources.amis[0].region #=> String
    #   resp.image_summary_list[0].output_resources.amis[0].image #=> String
    #   resp.image_summary_list[0].output_resources.amis[0].name #=> String
    #   resp.image_summary_list[0].output_resources.amis[0].description #=> String
    #   resp.image_summary_list[0].output_resources.amis[0].state.status #=> String, one of "PENDING", "CREATING", "BUILDING", "TESTING", "DISTRIBUTING", "INTEGRATING", "AVAILABLE", "CANCELLED", "FAILED", "DEPRECATED", "DELETED", "DISABLED"
    #   resp.image_summary_list[0].output_resources.amis[0].state.reason #=> String
    #   resp.image_summary_list[0].output_resources.amis[0].account_id #=> String
    #   resp.image_summary_list[0].output_resources.containers #=> Array
    #   resp.image_summary_list[0].output_resources.containers[0].region #=> String
    #   resp.image_summary_list[0].output_resources.containers[0].image_uris #=> Array
    #   resp.image_summary_list[0].output_resources.containers[0].image_uris[0] #=> String
    #   resp.image_summary_list[0].tags #=> Hash
    #   resp.image_summary_list[0].tags["TagKey"] #=> String
    #   resp.image_summary_list[0].build_type #=> String, one of "USER_INITIATED", "SCHEDULED", "IMPORT", "IMPORT_ISO"
    #   resp.image_summary_list[0].image_source #=> String, one of "AMAZON_MANAGED", "AWS_MARKETPLACE", "IMPORTED", "CUSTOM"
    #   resp.image_summary_list[0].deprecation_time #=> Time
    #   resp.image_summary_list[0].lifecycle_execution_id #=> String
    #   resp.image_summary_list[0].logging_configuration.log_group_name #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/ListImagePipelineImages AWS API Documentation
    #
    # @overload list_image_pipeline_images(params = {})
    # @param [Hash] params ({})
    def list_image_pipeline_images(params = {}, options = {})
      req = build_request(:list_image_pipeline_images, params)
      req.send_request(options)
    end

    # Returns a list of image pipelines.
    #
    # @option params [Array<Types::Filter>] :filters
    #   Use the following filters to streamline results:
    #
    #   * `description`
    #
    #   * `distributionConfigurationArn`
    #
    #   * `imageRecipeArn`
    #
    #   * `infrastructureConfigurationArn`
    #
    #   * `name`
    #
    #   * `status`
    #
    # @option params [Integer] :max_results
    #   Specify the maximum number of items to return in a request.
    #
    # @option params [String] :next_token
    #   A token to specify where to start paginating. This is the nextToken
    #   from a previously truncated response.
    #
    # @return [Types::ListImagePipelinesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListImagePipelinesResponse#request_id #request_id} => String
    #   * {Types::ListImagePipelinesResponse#image_pipeline_list #image_pipeline_list} => Array&lt;Types::ImagePipeline&gt;
    #   * {Types::ListImagePipelinesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_image_pipelines({
    #     filters: [
    #       {
    #         name: "FilterName",
    #         values: ["FilterValue"],
    #       },
    #     ],
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.request_id #=> String
    #   resp.image_pipeline_list #=> Array
    #   resp.image_pipeline_list[0].arn #=> String
    #   resp.image_pipeline_list[0].name #=> String
    #   resp.image_pipeline_list[0].description #=> String
    #   resp.image_pipeline_list[0].platform #=> String, one of "Windows", "Linux", "macOS"
    #   resp.image_pipeline_list[0].enhanced_image_metadata_enabled #=> Boolean
    #   resp.image_pipeline_list[0].image_recipe_arn #=> String
    #   resp.image_pipeline_list[0].container_recipe_arn #=> String
    #   resp.image_pipeline_list[0].infrastructure_configuration_arn #=> String
    #   resp.image_pipeline_list[0].distribution_configuration_arn #=> String
    #   resp.image_pipeline_list[0].image_tests_configuration.image_tests_enabled #=> Boolean
    #   resp.image_pipeline_list[0].image_tests_configuration.timeout_minutes #=> Integer
    #   resp.image_pipeline_list[0].schedule.schedule_expression #=> String
    #   resp.image_pipeline_list[0].schedule.timezone #=> String
    #   resp.image_pipeline_list[0].schedule.pipeline_execution_start_condition #=> String, one of "EXPRESSION_MATCH_ONLY", "EXPRESSION_MATCH_AND_DEPENDENCY_UPDATES_AVAILABLE"
    #   resp.image_pipeline_list[0].schedule.auto_disable_policy.failure_count #=> Integer
    #   resp.image_pipeline_list[0].status #=> String, one of "DISABLED", "ENABLED"
    #   resp.image_pipeline_list[0].date_created #=> String
    #   resp.image_pipeline_list[0].date_updated #=> String
    #   resp.image_pipeline_list[0].date_last_run #=> String
    #   resp.image_pipeline_list[0].last_run_status #=> String, one of "PENDING", "CREATING", "BUILDING", "TESTING", "DISTRIBUTING", "INTEGRATING", "AVAILABLE", "CANCELLED", "FAILED", "DEPRECATED", "DELETED", "DISABLED"
    #   resp.image_pipeline_list[0].date_next_run #=> String
    #   resp.image_pipeline_list[0].tags #=> Hash
    #   resp.image_pipeline_list[0].tags["TagKey"] #=> String
    #   resp.image_pipeline_list[0].image_scanning_configuration.image_scanning_enabled #=> Boolean
    #   resp.image_pipeline_list[0].image_scanning_configuration.ecr_configuration.repository_name #=> String
    #   resp.image_pipeline_list[0].image_scanning_configuration.ecr_configuration.container_tags #=> Array
    #   resp.image_pipeline_list[0].image_scanning_configuration.ecr_configuration.container_tags[0] #=> String
    #   resp.image_pipeline_list[0].execution_role #=> String
    #   resp.image_pipeline_list[0].workflows #=> Array
    #   resp.image_pipeline_list[0].workflows[0].workflow_arn #=> String
    #   resp.image_pipeline_list[0].workflows[0].parameters #=> Array
    #   resp.image_pipeline_list[0].workflows[0].parameters[0].name #=> String
    #   resp.image_pipeline_list[0].workflows[0].parameters[0].value #=> Array
    #   resp.image_pipeline_list[0].workflows[0].parameters[0].value[0] #=> String
    #   resp.image_pipeline_list[0].workflows[0].parallel_group #=> String
    #   resp.image_pipeline_list[0].workflows[0].on_failure #=> String, one of "CONTINUE", "ABORT"
    #   resp.image_pipeline_list[0].logging_configuration.image_log_group_name #=> String
    #   resp.image_pipeline_list[0].logging_configuration.pipeline_log_group_name #=> String
    #   resp.image_pipeline_list[0].consecutive_failures #=> Integer
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/ListImagePipelines AWS API Documentation
    #
    # @overload list_image_pipelines(params = {})
    # @param [Hash] params ({})
    def list_image_pipelines(params = {}, options = {})
      req = build_request(:list_image_pipelines, params)
      req.send_request(options)
    end

    # Returns a list of image recipes.
    #
    # @option params [String] :owner
    #   You can specify the recipe owner to filter results by that owner. By
    #   default, this request will only show image recipes owned by your
    #   account. To filter by a different owner, specify one of the `Valid
    #   Values` that are listed for this parameter.
    #
    # @option params [Array<Types::Filter>] :filters
    #   Use the following filters to streamline results:
    #
    #   * `name`
    #
    #   * `parentImage`
    #
    #   * `platform`
    #
    # @option params [Integer] :max_results
    #   Specify the maximum number of items to return in a request.
    #
    # @option params [String] :next_token
    #   A token to specify where to start paginating. This is the nextToken
    #   from a previously truncated response.
    #
    # @return [Types::ListImageRecipesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListImageRecipesResponse#request_id #request_id} => String
    #   * {Types::ListImageRecipesResponse#image_recipe_summary_list #image_recipe_summary_list} => Array&lt;Types::ImageRecipeSummary&gt;
    #   * {Types::ListImageRecipesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_image_recipes({
    #     owner: "Self", # accepts Self, Shared, Amazon, ThirdParty, AWSMarketplace
    #     filters: [
    #       {
    #         name: "FilterName",
    #         values: ["FilterValue"],
    #       },
    #     ],
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.request_id #=> String
    #   resp.image_recipe_summary_list #=> Array
    #   resp.image_recipe_summary_list[0].arn #=> String
    #   resp.image_recipe_summary_list[0].name #=> String
    #   resp.image_recipe_summary_list[0].platform #=> String, one of "Windows", "Linux", "macOS"
    #   resp.image_recipe_summary_list[0].owner #=> String
    #   resp.image_recipe_summary_list[0].parent_image #=> String
    #   resp.image_recipe_summary_list[0].date_created #=> String
    #   resp.image_recipe_summary_list[0].tags #=> Hash
    #   resp.image_recipe_summary_list[0].tags["TagKey"] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/ListImageRecipes AWS API Documentation
    #
    # @overload list_image_recipes(params = {})
    # @param [Hash] params ({})
    def list_image_recipes(params = {}, options = {})
      req = build_request(:list_image_recipes, params)
      req.send_request(options)
    end

    # Returns a list of image scan aggregations for your account. You can
    # filter by the type of key that Image Builder uses to group results.
    # For example, if you want to get a list of findings by severity level
    # for one of your pipelines, you might specify your pipeline with the
    # `imagePipelineArn` filter. If you don't specify a filter, Image
    # Builder returns an aggregation for your account.
    #
    # To streamline results, you can use the following filters in your
    # request:
    #
    # * `accountId`
    #
    # * `imageBuildVersionArn`
    #
    # * `imagePipelineArn`
    #
    # * `vulnerabilityId`
    #
    # @option params [Types::Filter] :filter
    #   A filter name and value pair that is used to return a more specific
    #   list of results from a list operation. Filters can be used to match a
    #   set of resources by specific criteria, such as tags, attributes, or
    #   IDs.
    #
    # @option params [String] :next_token
    #   A token to specify where to start paginating. This is the nextToken
    #   from a previously truncated response.
    #
    # @return [Types::ListImageScanFindingAggregationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListImageScanFindingAggregationsResponse#request_id #request_id} => String
    #   * {Types::ListImageScanFindingAggregationsResponse#aggregation_type #aggregation_type} => String
    #   * {Types::ListImageScanFindingAggregationsResponse#responses #responses} => Array&lt;Types::ImageScanFindingAggregation&gt;
    #   * {Types::ListImageScanFindingAggregationsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_image_scan_finding_aggregations({
    #     filter: {
    #       name: "FilterName",
    #       values: ["FilterValue"],
    #     },
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.request_id #=> String
    #   resp.aggregation_type #=> String
    #   resp.responses #=> Array
    #   resp.responses[0].account_aggregation.account_id #=> String
    #   resp.responses[0].account_aggregation.severity_counts.all #=> Integer
    #   resp.responses[0].account_aggregation.severity_counts.critical #=> Integer
    #   resp.responses[0].account_aggregation.severity_counts.high #=> Integer
    #   resp.responses[0].account_aggregation.severity_counts.medium #=> Integer
    #   resp.responses[0].image_aggregation.image_build_version_arn #=> String
    #   resp.responses[0].image_aggregation.severity_counts.all #=> Integer
    #   resp.responses[0].image_aggregation.severity_counts.critical #=> Integer
    #   resp.responses[0].image_aggregation.severity_counts.high #=> Integer
    #   resp.responses[0].image_aggregation.severity_counts.medium #=> Integer
    #   resp.responses[0].image_pipeline_aggregation.image_pipeline_arn #=> String
    #   resp.responses[0].image_pipeline_aggregation.severity_counts.all #=> Integer
    #   resp.responses[0].image_pipeline_aggregation.severity_counts.critical #=> Integer
    #   resp.responses[0].image_pipeline_aggregation.severity_counts.high #=> Integer
    #   resp.responses[0].image_pipeline_aggregation.severity_counts.medium #=> Integer
    #   resp.responses[0].vulnerability_id_aggregation.vulnerability_id #=> String
    #   resp.responses[0].vulnerability_id_aggregation.severity_counts.all #=> Integer
    #   resp.responses[0].vulnerability_id_aggregation.severity_counts.critical #=> Integer
    #   resp.responses[0].vulnerability_id_aggregation.severity_counts.high #=> Integer
    #   resp.responses[0].vulnerability_id_aggregation.severity_counts.medium #=> Integer
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/ListImageScanFindingAggregations AWS API Documentation
    #
    # @overload list_image_scan_finding_aggregations(params = {})
    # @param [Hash] params ({})
    def list_image_scan_finding_aggregations(params = {}, options = {})
      req = build_request(:list_image_scan_finding_aggregations, params)
      req.send_request(options)
    end

    # Returns a list of image scan findings for your account.
    #
    # @option params [Array<Types::ImageScanFindingsFilter>] :filters
    #   An array of name value pairs that you can use to filter your results.
    #   You can use the following filters to streamline results:
    #
    #   * `imageBuildVersionArn`
    #
    #   * `imagePipelineArn`
    #
    #   * `vulnerabilityId`
    #
    #   * `severity`
    #
    #   If you don't request a filter, then all findings in your account are
    #   listed.
    #
    # @option params [Integer] :max_results
    #   Specify the maximum number of items to return in a request.
    #
    # @option params [String] :next_token
    #   A token to specify where to start paginating. This is the nextToken
    #   from a previously truncated response.
    #
    # @return [Types::ListImageScanFindingsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListImageScanFindingsResponse#request_id #request_id} => String
    #   * {Types::ListImageScanFindingsResponse#findings #findings} => Array&lt;Types::ImageScanFinding&gt;
    #   * {Types::ListImageScanFindingsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_image_scan_findings({
    #     filters: [
    #       {
    #         name: "FilterName",
    #         values: ["FilterValue"],
    #       },
    #     ],
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.request_id #=> String
    #   resp.findings #=> Array
    #   resp.findings[0].aws_account_id #=> String
    #   resp.findings[0].image_build_version_arn #=> String
    #   resp.findings[0].image_pipeline_arn #=> String
    #   resp.findings[0].type #=> String
    #   resp.findings[0].description #=> String
    #   resp.findings[0].title #=> String
    #   resp.findings[0].remediation.recommendation.text #=> String
    #   resp.findings[0].remediation.recommendation.url #=> String
    #   resp.findings[0].severity #=> String
    #   resp.findings[0].first_observed_at #=> Time
    #   resp.findings[0].updated_at #=> Time
    #   resp.findings[0].inspector_score #=> Float
    #   resp.findings[0].inspector_score_details.adjusted_cvss.score_source #=> String
    #   resp.findings[0].inspector_score_details.adjusted_cvss.cvss_source #=> String
    #   resp.findings[0].inspector_score_details.adjusted_cvss.version #=> String
    #   resp.findings[0].inspector_score_details.adjusted_cvss.score #=> Float
    #   resp.findings[0].inspector_score_details.adjusted_cvss.scoring_vector #=> String
    #   resp.findings[0].inspector_score_details.adjusted_cvss.adjustments #=> Array
    #   resp.findings[0].inspector_score_details.adjusted_cvss.adjustments[0].metric #=> String
    #   resp.findings[0].inspector_score_details.adjusted_cvss.adjustments[0].reason #=> String
    #   resp.findings[0].package_vulnerability_details.vulnerability_id #=> String
    #   resp.findings[0].package_vulnerability_details.vulnerable_packages #=> Array
    #   resp.findings[0].package_vulnerability_details.vulnerable_packages[0].name #=> String
    #   resp.findings[0].package_vulnerability_details.vulnerable_packages[0].version #=> String
    #   resp.findings[0].package_vulnerability_details.vulnerable_packages[0].source_layer_hash #=> String
    #   resp.findings[0].package_vulnerability_details.vulnerable_packages[0].epoch #=> Integer
    #   resp.findings[0].package_vulnerability_details.vulnerable_packages[0].release #=> String
    #   resp.findings[0].package_vulnerability_details.vulnerable_packages[0].arch #=> String
    #   resp.findings[0].package_vulnerability_details.vulnerable_packages[0].package_manager #=> String
    #   resp.findings[0].package_vulnerability_details.vulnerable_packages[0].file_path #=> String
    #   resp.findings[0].package_vulnerability_details.vulnerable_packages[0].fixed_in_version #=> String
    #   resp.findings[0].package_vulnerability_details.vulnerable_packages[0].remediation #=> String
    #   resp.findings[0].package_vulnerability_details.source #=> String
    #   resp.findings[0].package_vulnerability_details.cvss #=> Array
    #   resp.findings[0].package_vulnerability_details.cvss[0].base_score #=> Float
    #   resp.findings[0].package_vulnerability_details.cvss[0].scoring_vector #=> String
    #   resp.findings[0].package_vulnerability_details.cvss[0].version #=> String
    #   resp.findings[0].package_vulnerability_details.cvss[0].source #=> String
    #   resp.findings[0].package_vulnerability_details.related_vulnerabilities #=> Array
    #   resp.findings[0].package_vulnerability_details.related_vulnerabilities[0] #=> String
    #   resp.findings[0].package_vulnerability_details.source_url #=> String
    #   resp.findings[0].package_vulnerability_details.vendor_severity #=> String
    #   resp.findings[0].package_vulnerability_details.vendor_created_at #=> Time
    #   resp.findings[0].package_vulnerability_details.vendor_updated_at #=> Time
    #   resp.findings[0].package_vulnerability_details.reference_urls #=> Array
    #   resp.findings[0].package_vulnerability_details.reference_urls[0] #=> String
    #   resp.findings[0].fix_available #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/ListImageScanFindings AWS API Documentation
    #
    # @overload list_image_scan_findings(params = {})
    # @param [Hash] params ({})
    def list_image_scan_findings(params = {}, options = {})
      req = build_request(:list_image_scan_findings, params)
      req.send_request(options)
    end

    # Returns the list of images that you have access to. Newly created
    # images can take up to two minutes to appear in the ListImages API
    # Results.
    #
    # @option params [String] :owner
    #   The owner defines which images you want to list. By default, this
    #   request will only show images owned by your account. You can use this
    #   field to specify if you want to view images owned by yourself, by
    #   Amazon, or those images that have been shared with you by other
    #   customers.
    #
    # @option params [Array<Types::Filter>] :filters
    #   Use the following filters to streamline results:
    #
    #   * `name`
    #
    #   * `osVersion`
    #
    #   * `platform`
    #
    #   * `type`
    #
    #   * `version`
    #
    # @option params [Boolean] :by_name
    #   Requests a list of images with a specific recipe name.
    #
    # @option params [Integer] :max_results
    #   Specify the maximum number of items to return in a request.
    #
    # @option params [String] :next_token
    #   A token to specify where to start paginating. This is the nextToken
    #   from a previously truncated response.
    #
    # @option params [Boolean] :include_deprecated
    #   Includes deprecated images in the response list.
    #
    # @return [Types::ListImagesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListImagesResponse#request_id #request_id} => String
    #   * {Types::ListImagesResponse#image_version_list #image_version_list} => Array&lt;Types::ImageVersion&gt;
    #   * {Types::ListImagesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_images({
    #     owner: "Self", # accepts Self, Shared, Amazon, ThirdParty, AWSMarketplace
    #     filters: [
    #       {
    #         name: "FilterName",
    #         values: ["FilterValue"],
    #       },
    #     ],
    #     by_name: false,
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #     include_deprecated: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.request_id #=> String
    #   resp.image_version_list #=> Array
    #   resp.image_version_list[0].arn #=> String
    #   resp.image_version_list[0].name #=> String
    #   resp.image_version_list[0].type #=> String, one of "AMI", "DOCKER"
    #   resp.image_version_list[0].version #=> String
    #   resp.image_version_list[0].platform #=> String, one of "Windows", "Linux", "macOS"
    #   resp.image_version_list[0].os_version #=> String
    #   resp.image_version_list[0].owner #=> String
    #   resp.image_version_list[0].date_created #=> String
    #   resp.image_version_list[0].build_type #=> String, one of "USER_INITIATED", "SCHEDULED", "IMPORT", "IMPORT_ISO"
    #   resp.image_version_list[0].image_source #=> String, one of "AMAZON_MANAGED", "AWS_MARKETPLACE", "IMPORTED", "CUSTOM"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/ListImages AWS API Documentation
    #
    # @overload list_images(params = {})
    # @param [Hash] params ({})
    def list_images(params = {}, options = {})
      req = build_request(:list_images, params)
      req.send_request(options)
    end

    # Returns a list of infrastructure configurations.
    #
    # @option params [Array<Types::Filter>] :filters
    #   You can filter on `name` to streamline results.
    #
    # @option params [Integer] :max_results
    #   Specify the maximum number of items to return in a request.
    #
    # @option params [String] :next_token
    #   A token to specify where to start paginating. This is the nextToken
    #   from a previously truncated response.
    #
    # @return [Types::ListInfrastructureConfigurationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListInfrastructureConfigurationsResponse#request_id #request_id} => String
    #   * {Types::ListInfrastructureConfigurationsResponse#infrastructure_configuration_summary_list #infrastructure_configuration_summary_list} => Array&lt;Types::InfrastructureConfigurationSummary&gt;
    #   * {Types::ListInfrastructureConfigurationsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_infrastructure_configurations({
    #     filters: [
    #       {
    #         name: "FilterName",
    #         values: ["FilterValue"],
    #       },
    #     ],
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.request_id #=> String
    #   resp.infrastructure_configuration_summary_list #=> Array
    #   resp.infrastructure_configuration_summary_list[0].arn #=> String
    #   resp.infrastructure_configuration_summary_list[0].name #=> String
    #   resp.infrastructure_configuration_summary_list[0].description #=> String
    #   resp.infrastructure_configuration_summary_list[0].date_created #=> String
    #   resp.infrastructure_configuration_summary_list[0].date_updated #=> String
    #   resp.infrastructure_configuration_summary_list[0].resource_tags #=> Hash
    #   resp.infrastructure_configuration_summary_list[0].resource_tags["TagKey"] #=> String
    #   resp.infrastructure_configuration_summary_list[0].tags #=> Hash
    #   resp.infrastructure_configuration_summary_list[0].tags["TagKey"] #=> String
    #   resp.infrastructure_configuration_summary_list[0].instance_types #=> Array
    #   resp.infrastructure_configuration_summary_list[0].instance_types[0] #=> String
    #   resp.infrastructure_configuration_summary_list[0].instance_profile_name #=> String
    #   resp.infrastructure_configuration_summary_list[0].placement.availability_zone #=> String
    #   resp.infrastructure_configuration_summary_list[0].placement.tenancy #=> String, one of "default", "dedicated", "host"
    #   resp.infrastructure_configuration_summary_list[0].placement.host_id #=> String
    #   resp.infrastructure_configuration_summary_list[0].placement.host_resource_group_arn #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/ListInfrastructureConfigurations AWS API Documentation
    #
    # @overload list_infrastructure_configurations(params = {})
    # @param [Hash] params ({})
    def list_infrastructure_configurations(params = {}, options = {})
      req = build_request(:list_infrastructure_configurations, params)
      req.send_request(options)
    end

    # List resources that the runtime instance of the image lifecycle
    # identified for lifecycle actions.
    #
    # @option params [required, String] :lifecycle_execution_id
    #   Use the unique identifier for a runtime instance of the lifecycle
    #   policy to get runtime details.
    #
    # @option params [String] :parent_resource_id
    #   You can leave this empty to get a list of Image Builder resources that
    #   were identified for lifecycle actions.
    #
    #   To get a list of associated resources that are impacted for an
    #   individual resource (the parent), specify its Amazon Resource Name
    #   (ARN). Associated resources are produced from your image and
    #   distributed when you run a build, such as AMIs or container images
    #   stored in ECR repositories.
    #
    # @option params [Integer] :max_results
    #   Specify the maximum number of items to return in a request.
    #
    # @option params [String] :next_token
    #   A token to specify where to start paginating. This is the nextToken
    #   from a previously truncated response.
    #
    # @return [Types::ListLifecycleExecutionResourcesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListLifecycleExecutionResourcesResponse#lifecycle_execution_id #lifecycle_execution_id} => String
    #   * {Types::ListLifecycleExecutionResourcesResponse#lifecycle_execution_state #lifecycle_execution_state} => Types::LifecycleExecutionState
    #   * {Types::ListLifecycleExecutionResourcesResponse#resources #resources} => Array&lt;Types::LifecycleExecutionResource&gt;
    #   * {Types::ListLifecycleExecutionResourcesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_lifecycle_execution_resources({
    #     lifecycle_execution_id: "LifecycleExecutionId", # required
    #     parent_resource_id: "NonEmptyString",
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.lifecycle_execution_id #=> String
    #   resp.lifecycle_execution_state.status #=> String, one of "IN_PROGRESS", "CANCELLED", "CANCELLING", "FAILED", "SUCCESS", "PENDING"
    #   resp.lifecycle_execution_state.reason #=> String
    #   resp.resources #=> Array
    #   resp.resources[0].account_id #=> String
    #   resp.resources[0].resource_id #=> String
    #   resp.resources[0].state.status #=> String, one of "FAILED", "IN_PROGRESS", "SKIPPED", "SUCCESS"
    #   resp.resources[0].state.reason #=> String
    #   resp.resources[0].action.name #=> String, one of "AVAILABLE", "DELETE", "DEPRECATE", "DISABLE"
    #   resp.resources[0].action.reason #=> String
    #   resp.resources[0].region #=> String
    #   resp.resources[0].snapshots #=> Array
    #   resp.resources[0].snapshots[0].snapshot_id #=> String
    #   resp.resources[0].snapshots[0].state.status #=> String, one of "FAILED", "IN_PROGRESS", "SKIPPED", "SUCCESS"
    #   resp.resources[0].snapshots[0].state.reason #=> String
    #   resp.resources[0].image_uris #=> Array
    #   resp.resources[0].image_uris[0] #=> String
    #   resp.resources[0].start_time #=> Time
    #   resp.resources[0].end_time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/ListLifecycleExecutionResources AWS API Documentation
    #
    # @overload list_lifecycle_execution_resources(params = {})
    # @param [Hash] params ({})
    def list_lifecycle_execution_resources(params = {}, options = {})
      req = build_request(:list_lifecycle_execution_resources, params)
      req.send_request(options)
    end

    # Get the lifecycle runtime history for the specified resource.
    #
    # @option params [Integer] :max_results
    #   Specify the maximum number of items to return in a request.
    #
    # @option params [String] :next_token
    #   A token to specify where to start paginating. This is the nextToken
    #   from a previously truncated response.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource for which to get a list
    #   of lifecycle runtime instances.
    #
    # @return [Types::ListLifecycleExecutionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListLifecycleExecutionsResponse#lifecycle_executions #lifecycle_executions} => Array&lt;Types::LifecycleExecution&gt;
    #   * {Types::ListLifecycleExecutionsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_lifecycle_executions({
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #     resource_arn: "ImageBuilderArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.lifecycle_executions #=> Array
    #   resp.lifecycle_executions[0].lifecycle_execution_id #=> String
    #   resp.lifecycle_executions[0].lifecycle_policy_arn #=> String
    #   resp.lifecycle_executions[0].resources_impacted_summary.has_impacted_resources #=> Boolean
    #   resp.lifecycle_executions[0].state.status #=> String, one of "IN_PROGRESS", "CANCELLED", "CANCELLING", "FAILED", "SUCCESS", "PENDING"
    #   resp.lifecycle_executions[0].state.reason #=> String
    #   resp.lifecycle_executions[0].start_time #=> Time
    #   resp.lifecycle_executions[0].end_time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/ListLifecycleExecutions AWS API Documentation
    #
    # @overload list_lifecycle_executions(params = {})
    # @param [Hash] params ({})
    def list_lifecycle_executions(params = {}, options = {})
      req = build_request(:list_lifecycle_executions, params)
      req.send_request(options)
    end

    # Get a list of lifecycle policies in your Amazon Web Services account.
    #
    # @option params [Array<Types::Filter>] :filters
    #   Streamline results based on one of the following values: `Name`,
    #   `Status`.
    #
    # @option params [Integer] :max_results
    #   Specify the maximum number of items to return in a request.
    #
    # @option params [String] :next_token
    #   A token to specify where to start paginating. This is the nextToken
    #   from a previously truncated response.
    #
    # @return [Types::ListLifecyclePoliciesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListLifecyclePoliciesResponse#lifecycle_policy_summary_list #lifecycle_policy_summary_list} => Array&lt;Types::LifecyclePolicySummary&gt;
    #   * {Types::ListLifecyclePoliciesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_lifecycle_policies({
    #     filters: [
    #       {
    #         name: "FilterName",
    #         values: ["FilterValue"],
    #       },
    #     ],
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.lifecycle_policy_summary_list #=> Array
    #   resp.lifecycle_policy_summary_list[0].arn #=> String
    #   resp.lifecycle_policy_summary_list[0].name #=> String
    #   resp.lifecycle_policy_summary_list[0].description #=> String
    #   resp.lifecycle_policy_summary_list[0].status #=> String, one of "DISABLED", "ENABLED"
    #   resp.lifecycle_policy_summary_list[0].execution_role #=> String
    #   resp.lifecycle_policy_summary_list[0].resource_type #=> String, one of "AMI_IMAGE", "CONTAINER_IMAGE"
    #   resp.lifecycle_policy_summary_list[0].date_created #=> Time
    #   resp.lifecycle_policy_summary_list[0].date_updated #=> Time
    #   resp.lifecycle_policy_summary_list[0].date_last_run #=> Time
    #   resp.lifecycle_policy_summary_list[0].tags #=> Hash
    #   resp.lifecycle_policy_summary_list[0].tags["TagKey"] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/ListLifecyclePolicies AWS API Documentation
    #
    # @overload list_lifecycle_policies(params = {})
    # @param [Hash] params ({})
    def list_lifecycle_policies(params = {}, options = {})
      req = build_request(:list_lifecycle_policies, params)
      req.send_request(options)
    end

    # Returns the list of tags for the specified resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource whose tags you want to
    #   retrieve.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "ImageBuilderArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Get a list of workflow steps that are waiting for action for workflows
    # in your Amazon Web Services account.
    #
    # @option params [Integer] :max_results
    #   Specify the maximum number of items to return in a request.
    #
    # @option params [String] :next_token
    #   A token to specify where to start paginating. This is the nextToken
    #   from a previously truncated response.
    #
    # @return [Types::ListWaitingWorkflowStepsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListWaitingWorkflowStepsResponse#steps #steps} => Array&lt;Types::WorkflowStepExecution&gt;
    #   * {Types::ListWaitingWorkflowStepsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_waiting_workflow_steps({
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.steps #=> Array
    #   resp.steps[0].step_execution_id #=> String
    #   resp.steps[0].image_build_version_arn #=> String
    #   resp.steps[0].workflow_execution_id #=> String
    #   resp.steps[0].workflow_build_version_arn #=> String
    #   resp.steps[0].name #=> String
    #   resp.steps[0].action #=> String
    #   resp.steps[0].start_time #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/ListWaitingWorkflowSteps AWS API Documentation
    #
    # @overload list_waiting_workflow_steps(params = {})
    # @param [Hash] params ({})
    def list_waiting_workflow_steps(params = {}, options = {})
      req = build_request(:list_waiting_workflow_steps, params)
      req.send_request(options)
    end

    # Returns a list of build versions for a specific workflow resource.
    #
    # @option params [String] :workflow_version_arn
    #   The Amazon Resource Name (ARN) of the workflow resource for which to
    #   get a list of build versions.
    #
    # @option params [Integer] :max_results
    #   Specify the maximum number of items to return in a request.
    #
    # @option params [String] :next_token
    #   A token to specify where to start paginating. This is the nextToken
    #   from a previously truncated response.
    #
    # @return [Types::ListWorkflowBuildVersionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListWorkflowBuildVersionsResponse#workflow_summary_list #workflow_summary_list} => Array&lt;Types::WorkflowSummary&gt;
    #   * {Types::ListWorkflowBuildVersionsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_workflow_build_versions({
    #     workflow_version_arn: "WorkflowWildcardVersionArn",
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.workflow_summary_list #=> Array
    #   resp.workflow_summary_list[0].arn #=> String
    #   resp.workflow_summary_list[0].name #=> String
    #   resp.workflow_summary_list[0].version #=> String
    #   resp.workflow_summary_list[0].description #=> String
    #   resp.workflow_summary_list[0].change_description #=> String
    #   resp.workflow_summary_list[0].type #=> String, one of "BUILD", "TEST", "DISTRIBUTION"
    #   resp.workflow_summary_list[0].owner #=> String
    #   resp.workflow_summary_list[0].state.status #=> String, one of "DEPRECATED"
    #   resp.workflow_summary_list[0].state.reason #=> String
    #   resp.workflow_summary_list[0].date_created #=> String
    #   resp.workflow_summary_list[0].tags #=> Hash
    #   resp.workflow_summary_list[0].tags["TagKey"] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/ListWorkflowBuildVersions AWS API Documentation
    #
    # @overload list_workflow_build_versions(params = {})
    # @param [Hash] params ({})
    def list_workflow_build_versions(params = {}, options = {})
      req = build_request(:list_workflow_build_versions, params)
      req.send_request(options)
    end

    # Returns a list of workflow runtime instance metadata objects for a
    # specific image build version.
    #
    # @option params [Integer] :max_results
    #   Specify the maximum number of items to return in a request.
    #
    # @option params [String] :next_token
    #   A token to specify where to start paginating. This is the nextToken
    #   from a previously truncated response.
    #
    # @option params [required, String] :image_build_version_arn
    #   List all workflow runtime instances for the specified image build
    #   version resource ARN.
    #
    # @return [Types::ListWorkflowExecutionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListWorkflowExecutionsResponse#request_id #request_id} => String
    #   * {Types::ListWorkflowExecutionsResponse#workflow_executions #workflow_executions} => Array&lt;Types::WorkflowExecutionMetadata&gt;
    #   * {Types::ListWorkflowExecutionsResponse#image_build_version_arn #image_build_version_arn} => String
    #   * {Types::ListWorkflowExecutionsResponse#message #message} => String
    #   * {Types::ListWorkflowExecutionsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_workflow_executions({
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #     image_build_version_arn: "ImageBuildVersionArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.request_id #=> String
    #   resp.workflow_executions #=> Array
    #   resp.workflow_executions[0].workflow_build_version_arn #=> String
    #   resp.workflow_executions[0].workflow_execution_id #=> String
    #   resp.workflow_executions[0].type #=> String, one of "BUILD", "TEST", "DISTRIBUTION"
    #   resp.workflow_executions[0].status #=> String, one of "PENDING", "SKIPPED", "RUNNING", "COMPLETED", "FAILED", "ROLLBACK_IN_PROGRESS", "ROLLBACK_COMPLETED", "CANCELLED"
    #   resp.workflow_executions[0].message #=> String
    #   resp.workflow_executions[0].total_step_count #=> Integer
    #   resp.workflow_executions[0].total_steps_succeeded #=> Integer
    #   resp.workflow_executions[0].total_steps_failed #=> Integer
    #   resp.workflow_executions[0].total_steps_skipped #=> Integer
    #   resp.workflow_executions[0].start_time #=> String
    #   resp.workflow_executions[0].end_time #=> String
    #   resp.workflow_executions[0].parallel_group #=> String
    #   resp.image_build_version_arn #=> String
    #   resp.message #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/ListWorkflowExecutions AWS API Documentation
    #
    # @overload list_workflow_executions(params = {})
    # @param [Hash] params ({})
    def list_workflow_executions(params = {}, options = {})
      req = build_request(:list_workflow_executions, params)
      req.send_request(options)
    end

    # Returns runtime data for each step in a runtime instance of the
    # workflow that you specify in the request.
    #
    # @option params [Integer] :max_results
    #   Specify the maximum number of items to return in a request.
    #
    # @option params [String] :next_token
    #   A token to specify where to start paginating. This is the nextToken
    #   from a previously truncated response.
    #
    # @option params [required, String] :workflow_execution_id
    #   The unique identifier that Image Builder assigned to keep track of
    #   runtime details when it ran the workflow.
    #
    # @return [Types::ListWorkflowStepExecutionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListWorkflowStepExecutionsResponse#request_id #request_id} => String
    #   * {Types::ListWorkflowStepExecutionsResponse#steps #steps} => Array&lt;Types::WorkflowStepMetadata&gt;
    #   * {Types::ListWorkflowStepExecutionsResponse#workflow_build_version_arn #workflow_build_version_arn} => String
    #   * {Types::ListWorkflowStepExecutionsResponse#workflow_execution_id #workflow_execution_id} => String
    #   * {Types::ListWorkflowStepExecutionsResponse#image_build_version_arn #image_build_version_arn} => String
    #   * {Types::ListWorkflowStepExecutionsResponse#message #message} => String
    #   * {Types::ListWorkflowStepExecutionsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_workflow_step_executions({
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #     workflow_execution_id: "WorkflowExecutionId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.request_id #=> String
    #   resp.steps #=> Array
    #   resp.steps[0].step_execution_id #=> String
    #   resp.steps[0].name #=> String
    #   resp.steps[0].description #=> String
    #   resp.steps[0].action #=> String
    #   resp.steps[0].status #=> String, one of "PENDING", "SKIPPED", "RUNNING", "COMPLETED", "FAILED", "CANCELLED"
    #   resp.steps[0].rollback_status #=> String, one of "RUNNING", "COMPLETED", "SKIPPED", "FAILED"
    #   resp.steps[0].message #=> String
    #   resp.steps[0].inputs #=> String
    #   resp.steps[0].outputs #=> String
    #   resp.steps[0].start_time #=> String
    #   resp.steps[0].end_time #=> String
    #   resp.workflow_build_version_arn #=> String
    #   resp.workflow_execution_id #=> String
    #   resp.image_build_version_arn #=> String
    #   resp.message #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/ListWorkflowStepExecutions AWS API Documentation
    #
    # @overload list_workflow_step_executions(params = {})
    # @param [Hash] params ({})
    def list_workflow_step_executions(params = {}, options = {})
      req = build_request(:list_workflow_step_executions, params)
      req.send_request(options)
    end

    # Lists workflow build versions based on filtering parameters.
    #
    # @option params [String] :owner
    #   Used to get a list of workflow build version filtered by the identity
    #   of the creator.
    #
    # @option params [Array<Types::Filter>] :filters
    #   Used to streamline search results.
    #
    # @option params [Boolean] :by_name
    #   Specify all or part of the workflow name to streamline results.
    #
    # @option params [Integer] :max_results
    #   Specify the maximum number of items to return in a request.
    #
    # @option params [String] :next_token
    #   A token to specify where to start paginating. This is the nextToken
    #   from a previously truncated response.
    #
    # @return [Types::ListWorkflowsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListWorkflowsResponse#workflow_version_list #workflow_version_list} => Array&lt;Types::WorkflowVersion&gt;
    #   * {Types::ListWorkflowsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_workflows({
    #     owner: "Self", # accepts Self, Shared, Amazon, ThirdParty, AWSMarketplace
    #     filters: [
    #       {
    #         name: "FilterName",
    #         values: ["FilterValue"],
    #       },
    #     ],
    #     by_name: false,
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.workflow_version_list #=> Array
    #   resp.workflow_version_list[0].arn #=> String
    #   resp.workflow_version_list[0].name #=> String
    #   resp.workflow_version_list[0].version #=> String
    #   resp.workflow_version_list[0].description #=> String
    #   resp.workflow_version_list[0].type #=> String, one of "BUILD", "TEST", "DISTRIBUTION"
    #   resp.workflow_version_list[0].owner #=> String
    #   resp.workflow_version_list[0].date_created #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/ListWorkflows AWS API Documentation
    #
    # @overload list_workflows(params = {})
    # @param [Hash] params ({})
    def list_workflows(params = {}, options = {})
      req = build_request(:list_workflows, params)
      req.send_request(options)
    end

    # Applies a policy to a component. We recommend that you call the RAM
    # API [CreateResourceShare][1] to share resources. If you call the Image
    # Builder API `PutComponentPolicy`, you must also call the RAM API
    # [PromoteResourceShareCreatedFromPolicy][2] in order for the resource
    # to be visible to all principals with whom the resource is shared.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/ram/latest/APIReference/API_CreateResourceShare.html
    # [2]: https://docs.aws.amazon.com/ram/latest/APIReference/API_PromoteResourceShareCreatedFromPolicy.html
    #
    # @option params [required, String] :component_arn
    #   The Amazon Resource Name (ARN) of the component that this policy
    #   should be applied to.
    #
    # @option params [required, String] :policy
    #   The policy to apply.
    #
    # @return [Types::PutComponentPolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutComponentPolicyResponse#request_id #request_id} => String
    #   * {Types::PutComponentPolicyResponse#component_arn #component_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_component_policy({
    #     component_arn: "ComponentBuildVersionArn", # required
    #     policy: "ResourcePolicyDocument", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.request_id #=> String
    #   resp.component_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/PutComponentPolicy AWS API Documentation
    #
    # @overload put_component_policy(params = {})
    # @param [Hash] params ({})
    def put_component_policy(params = {}, options = {})
      req = build_request(:put_component_policy, params)
      req.send_request(options)
    end

    # Applies a policy to a container image. We recommend that you call the
    # RAM API CreateResourceShare
    # (https://docs.aws.amazon.com//ram/latest/APIReference/API\_CreateResourceShare.html)
    # to share resources. If you call the Image Builder API
    # `PutContainerImagePolicy`, you must also call the RAM API
    # PromoteResourceShareCreatedFromPolicy
    # (https://docs.aws.amazon.com//ram/latest/APIReference/API\_PromoteResourceShareCreatedFromPolicy.html)
    # in order for the resource to be visible to all principals with whom
    # the resource is shared.
    #
    # @option params [required, String] :container_recipe_arn
    #   The Amazon Resource Name (ARN) of the container recipe that this
    #   policy should be applied to.
    #
    # @option params [required, String] :policy
    #   The policy to apply to the container recipe.
    #
    # @return [Types::PutContainerRecipePolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutContainerRecipePolicyResponse#request_id #request_id} => String
    #   * {Types::PutContainerRecipePolicyResponse#container_recipe_arn #container_recipe_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_container_recipe_policy({
    #     container_recipe_arn: "ContainerRecipeArn", # required
    #     policy: "ResourcePolicyDocument", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.request_id #=> String
    #   resp.container_recipe_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/PutContainerRecipePolicy AWS API Documentation
    #
    # @overload put_container_recipe_policy(params = {})
    # @param [Hash] params ({})
    def put_container_recipe_policy(params = {}, options = {})
      req = build_request(:put_container_recipe_policy, params)
      req.send_request(options)
    end

    # Applies a policy to an image. We recommend that you call the RAM API
    # [CreateResourceShare][1] to share resources. If you call the Image
    # Builder API `PutImagePolicy`, you must also call the RAM API
    # [PromoteResourceShareCreatedFromPolicy][2] in order for the resource
    # to be visible to all principals with whom the resource is shared.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/ram/latest/APIReference/API_CreateResourceShare.html
    # [2]: https://docs.aws.amazon.com/ram/latest/APIReference/API_PromoteResourceShareCreatedFromPolicy.html
    #
    # @option params [required, String] :image_arn
    #   The Amazon Resource Name (ARN) of the image that this policy should be
    #   applied to.
    #
    # @option params [required, String] :policy
    #   The policy to apply.
    #
    # @return [Types::PutImagePolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutImagePolicyResponse#request_id #request_id} => String
    #   * {Types::PutImagePolicyResponse#image_arn #image_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_image_policy({
    #     image_arn: "ImageBuildVersionArn", # required
    #     policy: "ResourcePolicyDocument", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.request_id #=> String
    #   resp.image_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/PutImagePolicy AWS API Documentation
    #
    # @overload put_image_policy(params = {})
    # @param [Hash] params ({})
    def put_image_policy(params = {}, options = {})
      req = build_request(:put_image_policy, params)
      req.send_request(options)
    end

    # Applies a policy to an image recipe. We recommend that you call the
    # RAM API [CreateResourceShare][1] to share resources. If you call the
    # Image Builder API `PutImageRecipePolicy`, you must also call the RAM
    # API [PromoteResourceShareCreatedFromPolicy][2] in order for the
    # resource to be visible to all principals with whom the resource is
    # shared.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/ram/latest/APIReference/API_CreateResourceShare.html
    # [2]: https://docs.aws.amazon.com/ram/latest/APIReference/API_PromoteResourceShareCreatedFromPolicy.html
    #
    # @option params [required, String] :image_recipe_arn
    #   The Amazon Resource Name (ARN) of the image recipe that this policy
    #   should be applied to.
    #
    # @option params [required, String] :policy
    #   The policy to apply.
    #
    # @return [Types::PutImageRecipePolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutImageRecipePolicyResponse#request_id #request_id} => String
    #   * {Types::PutImageRecipePolicyResponse#image_recipe_arn #image_recipe_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_image_recipe_policy({
    #     image_recipe_arn: "ImageRecipeArn", # required
    #     policy: "ResourcePolicyDocument", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.request_id #=> String
    #   resp.image_recipe_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/PutImageRecipePolicy AWS API Documentation
    #
    # @overload put_image_recipe_policy(params = {})
    # @param [Hash] params ({})
    def put_image_recipe_policy(params = {}, options = {})
      req = build_request(:put_image_recipe_policy, params)
      req.send_request(options)
    end

    # Pauses or resumes image creation when the associated workflow runs a
    # `WaitForAction` step.
    #
    # @option params [required, String] :step_execution_id
    #   Uniquely identifies the workflow step that sent the step action.
    #
    # @option params [required, String] :image_build_version_arn
    #   The Amazon Resource Name (ARN) of the image build version to send
    #   action for.
    #
    # @option params [required, String] :action
    #   The action for the image creation process to take while a workflow
    #   `WaitForAction` step waits for an asynchronous action to complete.
    #
    # @option params [String] :reason
    #   The reason why this action is sent.
    #
    # @option params [required, String] :client_token
    #   Unique, case-sensitive identifier you provide to ensure idempotency of
    #   the request. For more information, see [Ensuring idempotency][1] in
    #   the *Amazon EC2 API Reference*.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html
    #
    # @return [Types::SendWorkflowStepActionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SendWorkflowStepActionResponse#step_execution_id #step_execution_id} => String
    #   * {Types::SendWorkflowStepActionResponse#image_build_version_arn #image_build_version_arn} => String
    #   * {Types::SendWorkflowStepActionResponse#client_token #client_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.send_workflow_step_action({
    #     step_execution_id: "WorkflowStepExecutionId", # required
    #     image_build_version_arn: "ImageBuildVersionArn", # required
    #     action: "RESUME", # required, accepts RESUME, STOP
    #     reason: "NonEmptyString",
    #     client_token: "ClientToken", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.step_execution_id #=> String
    #   resp.image_build_version_arn #=> String
    #   resp.client_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/SendWorkflowStepAction AWS API Documentation
    #
    # @overload send_workflow_step_action(params = {})
    # @param [Hash] params ({})
    def send_workflow_step_action(params = {}, options = {})
      req = build_request(:send_workflow_step_action, params)
      req.send_request(options)
    end

    # Manually triggers a pipeline to create an image.
    #
    # @option params [required, String] :image_pipeline_arn
    #   The Amazon Resource Name (ARN) of the image pipeline that you want to
    #   manually invoke.
    #
    # @option params [required, String] :client_token
    #   Unique, case-sensitive identifier you provide to ensure idempotency of
    #   the request. For more information, see [Ensuring idempotency][1] in
    #   the *Amazon EC2 API Reference*.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html
    #
    # @option params [Hash<String,String>] :tags
    #   Specify tags for Image Builder to apply to the image resource that's
    #   created When it starts pipeline execution.
    #
    # @return [Types::StartImagePipelineExecutionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartImagePipelineExecutionResponse#request_id #request_id} => String
    #   * {Types::StartImagePipelineExecutionResponse#client_token #client_token} => String
    #   * {Types::StartImagePipelineExecutionResponse#image_build_version_arn #image_build_version_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_image_pipeline_execution({
    #     image_pipeline_arn: "ImagePipelineArn", # required
    #     client_token: "ClientToken", # required
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.request_id #=> String
    #   resp.client_token #=> String
    #   resp.image_build_version_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/StartImagePipelineExecution AWS API Documentation
    #
    # @overload start_image_pipeline_execution(params = {})
    # @param [Hash] params ({})
    def start_image_pipeline_execution(params = {}, options = {})
      req = build_request(:start_image_pipeline_execution, params)
      req.send_request(options)
    end

    # Begin asynchronous resource state update for lifecycle changes to the
    # specified image resources.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the Image Builder resource that is updated. The state
    #   update might also impact associated resources.
    #
    # @option params [required, Types::ResourceState] :state
    #   Indicates the lifecycle action to take for this request.
    #
    # @option params [String] :execution_role
    #   The name or Amazon Resource Name (ARN) of the IAM role that’s used to
    #   update image state.
    #
    # @option params [Types::ResourceStateUpdateIncludeResources] :include_resources
    #   A list of image resources to update state for.
    #
    # @option params [Types::ResourceStateUpdateExclusionRules] :exclusion_rules
    #   Skip action on the image resource and associated resources if
    #   specified exclusion rules are met.
    #
    # @option params [Time,DateTime,Date,Integer,String] :update_at
    #   The timestamp that indicates when resources are updated by a lifecycle
    #   action.
    #
    # @option params [required, String] :client_token
    #   Unique, case-sensitive identifier you provide to ensure idempotency of
    #   the request. For more information, see [Ensuring idempotency][1] in
    #   the *Amazon EC2 API Reference*.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html
    #
    # @return [Types::StartResourceStateUpdateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartResourceStateUpdateResponse#lifecycle_execution_id #lifecycle_execution_id} => String
    #   * {Types::StartResourceStateUpdateResponse#resource_arn #resource_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_resource_state_update({
    #     resource_arn: "ImageBuildVersionArn", # required
    #     state: { # required
    #       status: "AVAILABLE", # accepts AVAILABLE, DELETED, DEPRECATED, DISABLED
    #     },
    #     execution_role: "RoleNameOrArn",
    #     include_resources: {
    #       amis: false,
    #       snapshots: false,
    #       containers: false,
    #     },
    #     exclusion_rules: {
    #       amis: {
    #         is_public: false,
    #         regions: ["NonEmptyString"],
    #         shared_accounts: ["AccountId"],
    #         last_launched: {
    #           value: 1, # required
    #           unit: "DAYS", # required, accepts DAYS, WEEKS, MONTHS, YEARS
    #         },
    #         tag_map: {
    #           "TagKey" => "TagValue",
    #         },
    #       },
    #     },
    #     update_at: Time.now,
    #     client_token: "ClientToken", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.lifecycle_execution_id #=> String
    #   resp.resource_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/StartResourceStateUpdate AWS API Documentation
    #
    # @overload start_resource_state_update(params = {})
    # @param [Hash] params ({})
    def start_resource_state_update(params = {}, options = {})
      req = build_request(:start_resource_state_update, params)
      req.send_request(options)
    end

    # Adds a tag to a resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource that you want to tag.
    #
    # @option params [required, Hash<String,String>] :tags
    #   The tags to apply to the resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "ImageBuilderArn", # required
    #     tags: { # required
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/TagResource AWS API Documentation
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
    #   The Amazon Resource Name (ARN) of the resource that you want to untag.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The tag keys to remove from the resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "ImageBuilderArn", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates a new distribution configuration. Distribution configurations
    # define and configure the outputs of your pipeline.
    #
    # @option params [required, String] :distribution_configuration_arn
    #   The Amazon Resource Name (ARN) of the distribution configuration that
    #   you want to update.
    #
    # @option params [String] :description
    #   The description of the distribution configuration.
    #
    # @option params [required, Array<Types::Distribution>] :distributions
    #   The distributions of the distribution configuration.
    #
    # @option params [required, String] :client_token
    #   Unique, case-sensitive identifier you provide to ensure idempotency of
    #   the request. For more information, see [Ensuring idempotency][1] in
    #   the *Amazon EC2 API Reference*.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html
    #
    # @return [Types::UpdateDistributionConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateDistributionConfigurationResponse#request_id #request_id} => String
    #   * {Types::UpdateDistributionConfigurationResponse#client_token #client_token} => String
    #   * {Types::UpdateDistributionConfigurationResponse#distribution_configuration_arn #distribution_configuration_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_distribution_configuration({
    #     distribution_configuration_arn: "DistributionConfigurationArn", # required
    #     description: "NonEmptyString",
    #     distributions: [ # required
    #       {
    #         region: "NonEmptyString", # required
    #         ami_distribution_configuration: {
    #           name: "AmiNameString",
    #           description: "NonEmptyString",
    #           target_account_ids: ["AccountId"],
    #           ami_tags: {
    #             "TagKey" => "TagValue",
    #           },
    #           kms_key_id: "NonEmptyString",
    #           launch_permission: {
    #             user_ids: ["AccountId"],
    #             user_groups: ["NonEmptyString"],
    #             organization_arns: ["OrganizationArn"],
    #             organizational_unit_arns: ["OrganizationalUnitArn"],
    #           },
    #         },
    #         container_distribution_configuration: {
    #           description: "NonEmptyString",
    #           container_tags: ["NonEmptyString"],
    #           target_repository: { # required
    #             service: "ECR", # required, accepts ECR
    #             repository_name: "NonEmptyString", # required
    #           },
    #         },
    #         license_configuration_arns: ["LicenseConfigurationArn"],
    #         launch_template_configurations: [
    #           {
    #             launch_template_id: "LaunchTemplateId", # required
    #             account_id: "AccountId",
    #             set_default_version: false,
    #           },
    #         ],
    #         s3_export_configuration: {
    #           role_name: "NonEmptyString", # required
    #           disk_image_format: "VMDK", # required, accepts VMDK, RAW, VHD
    #           s3_bucket: "NonEmptyString", # required
    #           s3_prefix: "NonEmptyString",
    #         },
    #         fast_launch_configurations: [
    #           {
    #             enabled: false, # required
    #             snapshot_configuration: {
    #               target_resource_count: 1,
    #             },
    #             max_parallel_launches: 1,
    #             launch_template: {
    #               launch_template_id: "LaunchTemplateId",
    #               launch_template_name: "NonEmptyString",
    #               launch_template_version: "NonEmptyString",
    #             },
    #             account_id: "AccountId",
    #           },
    #         ],
    #         ssm_parameter_configurations: [
    #           {
    #             ami_account_id: "AccountId",
    #             parameter_name: "SsmParameterName", # required
    #             data_type: "text", # accepts text, aws:ec2:image
    #           },
    #         ],
    #       },
    #     ],
    #     client_token: "ClientToken", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.request_id #=> String
    #   resp.client_token #=> String
    #   resp.distribution_configuration_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/UpdateDistributionConfiguration AWS API Documentation
    #
    # @overload update_distribution_configuration(params = {})
    # @param [Hash] params ({})
    def update_distribution_configuration(params = {}, options = {})
      req = build_request(:update_distribution_configuration, params)
      req.send_request(options)
    end

    # Updates an image pipeline. Image pipelines enable you to automate the
    # creation and distribution of images. You must specify exactly one
    # recipe for your image, using either a `containerRecipeArn` or an
    # `imageRecipeArn`.
    #
    # <note markdown="1"> UpdateImagePipeline does not support selective updates for the
    # pipeline. You must specify all of the required properties in the
    # update request, not just the properties that have changed.
    #
    #  </note>
    #
    # @option params [required, String] :image_pipeline_arn
    #   The Amazon Resource Name (ARN) of the image pipeline that you want to
    #   update.
    #
    # @option params [String] :description
    #   The description of the image pipeline.
    #
    # @option params [String] :image_recipe_arn
    #   The Amazon Resource Name (ARN) of the image recipe that will be used
    #   to configure images updated by this image pipeline.
    #
    # @option params [String] :container_recipe_arn
    #   The Amazon Resource Name (ARN) of the container pipeline to update.
    #
    # @option params [required, String] :infrastructure_configuration_arn
    #   The Amazon Resource Name (ARN) of the infrastructure configuration
    #   that Image Builder uses to build images that this image pipeline has
    #   updated.
    #
    # @option params [String] :distribution_configuration_arn
    #   The Amazon Resource Name (ARN) of the distribution configuration that
    #   Image Builder uses to configure and distribute images that this image
    #   pipeline has updated.
    #
    # @option params [Types::ImageTestsConfiguration] :image_tests_configuration
    #   The image test configuration of the image pipeline.
    #
    # @option params [Boolean] :enhanced_image_metadata_enabled
    #   Collects additional information about the image being created,
    #   including the operating system (OS) version and package list. This
    #   information is used to enhance the overall experience of using EC2
    #   Image Builder. Enabled by default.
    #
    # @option params [Types::Schedule] :schedule
    #   The schedule of the image pipeline.
    #
    # @option params [String] :status
    #   The status of the image pipeline.
    #
    # @option params [required, String] :client_token
    #   Unique, case-sensitive identifier you provide to ensure idempotency of
    #   the request. For more information, see [Ensuring idempotency][1] in
    #   the *Amazon EC2 API Reference*.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html
    #
    # @option params [Types::ImageScanningConfiguration] :image_scanning_configuration
    #   Contains settings for vulnerability scans.
    #
    # @option params [Array<Types::WorkflowConfiguration>] :workflows
    #   Contains the workflows to run for the pipeline.
    #
    # @option params [Types::PipelineLoggingConfiguration] :logging_configuration
    #   Update logging configuration for the output image that's created when
    #   the pipeline runs.
    #
    # @option params [String] :execution_role
    #   The name or Amazon Resource Name (ARN) for the IAM role you create
    #   that grants Image Builder access to perform workflow actions.
    #
    # @return [Types::UpdateImagePipelineResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateImagePipelineResponse#request_id #request_id} => String
    #   * {Types::UpdateImagePipelineResponse#client_token #client_token} => String
    #   * {Types::UpdateImagePipelineResponse#image_pipeline_arn #image_pipeline_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_image_pipeline({
    #     image_pipeline_arn: "ImagePipelineArn", # required
    #     description: "NonEmptyString",
    #     image_recipe_arn: "ImageRecipeArn",
    #     container_recipe_arn: "ContainerRecipeArn",
    #     infrastructure_configuration_arn: "InfrastructureConfigurationArn", # required
    #     distribution_configuration_arn: "DistributionConfigurationArn",
    #     image_tests_configuration: {
    #       image_tests_enabled: false,
    #       timeout_minutes: 1,
    #     },
    #     enhanced_image_metadata_enabled: false,
    #     schedule: {
    #       schedule_expression: "NonEmptyString",
    #       timezone: "Timezone",
    #       pipeline_execution_start_condition: "EXPRESSION_MATCH_ONLY", # accepts EXPRESSION_MATCH_ONLY, EXPRESSION_MATCH_AND_DEPENDENCY_UPDATES_AVAILABLE
    #       auto_disable_policy: {
    #         failure_count: 1, # required
    #       },
    #     },
    #     status: "DISABLED", # accepts DISABLED, ENABLED
    #     client_token: "ClientToken", # required
    #     image_scanning_configuration: {
    #       image_scanning_enabled: false,
    #       ecr_configuration: {
    #         repository_name: "NonEmptyString",
    #         container_tags: ["NonEmptyString"],
    #       },
    #     },
    #     workflows: [
    #       {
    #         workflow_arn: "WorkflowVersionArnOrBuildVersionArn", # required
    #         parameters: [
    #           {
    #             name: "WorkflowParameterName", # required
    #             value: ["WorkflowParameterValue"], # required
    #           },
    #         ],
    #         parallel_group: "ParallelGroup",
    #         on_failure: "CONTINUE", # accepts CONTINUE, ABORT
    #       },
    #     ],
    #     logging_configuration: {
    #       image_log_group_name: "LogGroupName",
    #       pipeline_log_group_name: "LogGroupName",
    #     },
    #     execution_role: "RoleNameOrArn",
    #   })
    #
    # @example Response structure
    #
    #   resp.request_id #=> String
    #   resp.client_token #=> String
    #   resp.image_pipeline_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/UpdateImagePipeline AWS API Documentation
    #
    # @overload update_image_pipeline(params = {})
    # @param [Hash] params ({})
    def update_image_pipeline(params = {}, options = {})
      req = build_request(:update_image_pipeline, params)
      req.send_request(options)
    end

    # Updates a new infrastructure configuration. An infrastructure
    # configuration defines the environment in which your image will be
    # built and tested.
    #
    # @option params [required, String] :infrastructure_configuration_arn
    #   The Amazon Resource Name (ARN) of the infrastructure configuration
    #   that you want to update.
    #
    # @option params [String] :description
    #   The description of the infrastructure configuration.
    #
    # @option params [Array<String>] :instance_types
    #   The instance types of the infrastructure configuration. You can
    #   specify one or more instance types to use for this build. The service
    #   will pick one of these instance types based on availability.
    #
    # @option params [required, String] :instance_profile_name
    #   The instance profile to associate with the instance used to customize
    #   your Amazon EC2 AMI.
    #
    # @option params [Array<String>] :security_group_ids
    #   The security group IDs to associate with the instance used to
    #   customize your Amazon EC2 AMI.
    #
    # @option params [String] :subnet_id
    #   The subnet ID to place the instance used to customize your Amazon EC2
    #   AMI in.
    #
    # @option params [Types::Logging] :logging
    #   The logging configuration of the infrastructure configuration.
    #
    # @option params [String] :key_pair
    #   The key pair of the infrastructure configuration. You can use this to
    #   log on to and debug the instance used to create your image.
    #
    # @option params [Boolean] :terminate_instance_on_failure
    #   The terminate instance on failure setting of the infrastructure
    #   configuration. Set to false if you want Image Builder to retain the
    #   instance used to configure your AMI if the build or test phase of your
    #   workflow fails.
    #
    # @option params [String] :sns_topic_arn
    #   The Amazon Resource Name (ARN) for the SNS topic to which we send
    #   image build event notifications.
    #
    #   <note markdown="1"> EC2 Image Builder is unable to send notifications to SNS topics that
    #   are encrypted using keys from other accounts. The key that is used to
    #   encrypt the SNS topic must reside in the account that the Image
    #   Builder service runs under.
    #
    #    </note>
    #
    # @option params [Hash<String,String>] :resource_tags
    #   The tags attached to the resource created by Image Builder.
    #
    # @option params [Types::InstanceMetadataOptions] :instance_metadata_options
    #   The instance metadata options that you can set for the HTTP requests
    #   that pipeline builds use to launch EC2 build and test instances. For
    #   more information about instance metadata options, see one of the
    #   following links:
    #
    #   * [Configure the instance metadata options][1] in the <i> <i>Amazon
    #     EC2 User Guide</i> </i> for Linux instances.
    #
    #   * [Configure the instance metadata options][2] in the <i> <i>Amazon
    #     EC2 Windows Guide</i> </i> for Windows instances.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/configuring-instance-metadata-options.html
    #   [2]: https://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/configuring-instance-metadata-options.html
    #
    # @option params [Types::Placement] :placement
    #   The instance placement settings that define where the instances that
    #   are launched from your image will run.
    #
    # @option params [required, String] :client_token
    #   Unique, case-sensitive identifier you provide to ensure idempotency of
    #   the request. For more information, see [Ensuring idempotency][1] in
    #   the *Amazon EC2 API Reference*.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html
    #
    # @return [Types::UpdateInfrastructureConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateInfrastructureConfigurationResponse#request_id #request_id} => String
    #   * {Types::UpdateInfrastructureConfigurationResponse#client_token #client_token} => String
    #   * {Types::UpdateInfrastructureConfigurationResponse#infrastructure_configuration_arn #infrastructure_configuration_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_infrastructure_configuration({
    #     infrastructure_configuration_arn: "InfrastructureConfigurationArn", # required
    #     description: "NonEmptyString",
    #     instance_types: ["InstanceType"],
    #     instance_profile_name: "InstanceProfileNameType", # required
    #     security_group_ids: ["NonEmptyString"],
    #     subnet_id: "NonEmptyString",
    #     logging: {
    #       s3_logs: {
    #         s3_bucket_name: "NonEmptyString",
    #         s3_key_prefix: "NonEmptyString",
    #       },
    #     },
    #     key_pair: "NonEmptyString",
    #     terminate_instance_on_failure: false,
    #     sns_topic_arn: "SnsTopicArn",
    #     resource_tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     instance_metadata_options: {
    #       http_tokens: "HttpTokens",
    #       http_put_response_hop_limit: 1,
    #     },
    #     placement: {
    #       availability_zone: "NonEmptyString",
    #       tenancy: "default", # accepts default, dedicated, host
    #       host_id: "NonEmptyString",
    #       host_resource_group_arn: "NonEmptyString",
    #     },
    #     client_token: "ClientToken", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.request_id #=> String
    #   resp.client_token #=> String
    #   resp.infrastructure_configuration_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/UpdateInfrastructureConfiguration AWS API Documentation
    #
    # @overload update_infrastructure_configuration(params = {})
    # @param [Hash] params ({})
    def update_infrastructure_configuration(params = {}, options = {})
      req = build_request(:update_infrastructure_configuration, params)
      req.send_request(options)
    end

    # Update the specified lifecycle policy.
    #
    # @option params [required, String] :lifecycle_policy_arn
    #   The Amazon Resource Name (ARN) of the lifecycle policy resource.
    #
    # @option params [String] :description
    #   Optional description for the lifecycle policy.
    #
    # @option params [String] :status
    #   Indicates whether the lifecycle policy resource is enabled.
    #
    # @option params [required, String] :execution_role
    #   The name or Amazon Resource Name (ARN) of the IAM role that Image
    #   Builder uses to update the lifecycle policy.
    #
    # @option params [required, String] :resource_type
    #   The type of image resource that the lifecycle policy applies to.
    #
    # @option params [required, Array<Types::LifecyclePolicyDetail>] :policy_details
    #   The configuration details for a lifecycle policy resource.
    #
    # @option params [required, Types::LifecyclePolicyResourceSelection] :resource_selection
    #   Selection criteria for resources that the lifecycle policy applies to.
    #
    # @option params [required, String] :client_token
    #   Unique, case-sensitive identifier you provide to ensure idempotency of
    #   the request. For more information, see [Ensuring idempotency][1] in
    #   the *Amazon EC2 API Reference*.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html
    #
    # @return [Types::UpdateLifecyclePolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateLifecyclePolicyResponse#lifecycle_policy_arn #lifecycle_policy_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_lifecycle_policy({
    #     lifecycle_policy_arn: "LifecyclePolicyArn", # required
    #     description: "NonEmptyString",
    #     status: "DISABLED", # accepts DISABLED, ENABLED
    #     execution_role: "RoleNameOrArn", # required
    #     resource_type: "AMI_IMAGE", # required, accepts AMI_IMAGE, CONTAINER_IMAGE
    #     policy_details: [ # required
    #       {
    #         action: { # required
    #           type: "DELETE", # required, accepts DELETE, DEPRECATE, DISABLE
    #           include_resources: {
    #             amis: false,
    #             snapshots: false,
    #             containers: false,
    #           },
    #         },
    #         filter: { # required
    #           type: "AGE", # required, accepts AGE, COUNT
    #           value: 1, # required
    #           unit: "DAYS", # accepts DAYS, WEEKS, MONTHS, YEARS
    #           retain_at_least: 1,
    #         },
    #         exclusion_rules: {
    #           tag_map: {
    #             "TagKey" => "TagValue",
    #           },
    #           amis: {
    #             is_public: false,
    #             regions: ["NonEmptyString"],
    #             shared_accounts: ["AccountId"],
    #             last_launched: {
    #               value: 1, # required
    #               unit: "DAYS", # required, accepts DAYS, WEEKS, MONTHS, YEARS
    #             },
    #             tag_map: {
    #               "TagKey" => "TagValue",
    #             },
    #           },
    #         },
    #       },
    #     ],
    #     resource_selection: { # required
    #       recipes: [
    #         {
    #           name: "ResourceName", # required
    #           semantic_version: "VersionNumber", # required
    #         },
    #       ],
    #       tag_map: {
    #         "TagKey" => "TagValue",
    #       },
    #     },
    #     client_token: "ClientToken", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.lifecycle_policy_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/UpdateLifecyclePolicy AWS API Documentation
    #
    # @overload update_lifecycle_policy(params = {})
    # @param [Hash] params ({})
    def update_lifecycle_policy(params = {}, options = {})
      req = build_request(:update_lifecycle_policy, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::Imagebuilder')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-imagebuilder'
      context[:gem_version] = '1.91.0'
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
