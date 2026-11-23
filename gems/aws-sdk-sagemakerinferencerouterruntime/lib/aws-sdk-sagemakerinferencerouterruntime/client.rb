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

module Aws::SageMakerInferenceRouterRuntime
  # An API client for SageMakerInferenceRouterRuntime.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::SageMakerInferenceRouterRuntime::Client.new(
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

    @identifier = :sagemakerinferencerouterruntime

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
    add_plugin(Aws::SageMakerInferenceRouterRuntime::Plugins::Endpoints)

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
    #     4 times. Used in `standard` and `adaptive` retry modes. Defaults to 3,
    #     except for DynamoDB and DynamoDB Streams, which default to 4.
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
    #   @option options [String] :retry_mode ("standard")
    #     Specifies which retry algorithm to use. Values are:
    #
    #     * `legacy` - The pre-existing retry behavior.
    #
    #     * `standard` - A standardized set of retry rules across the AWS SDKs.
    #       This includes support for retry quotas, which limit the number of
    #       unsuccessful retries a client can make. This is the default value
    #       if no retry mode is provided.
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
    #   @option options [Aws::SageMakerInferenceRouterRuntime::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::SageMakerInferenceRouterRuntime::EndpointParameters`.
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

    # Sends a real-time inference request to an inference router. In the
    # request, you name the routing target, and the router sends the request
    # to one of the routing target's destinations. The response includes
    # the destination that served the request and the reason that the router
    # chose it.
    #
    # The following limits apply:
    #
    # * The maximum request payload is 6 MB. A request with a larger body
    #   fails with HTTP status code 413.
    #
    # * Your model has up to 60 seconds for each attempt, the same limit as
    #   `InvokeEndpoint`. If your account has a higher model execution
    #   timeout for `InvokeEndpoint`, it doesn't apply through an inference
    #   router. For models that take longer, use
    #   `InvokeInferenceRouterAsync`.
    #
    # If a destination returns an error that the router can retry, such as a
    # throttling error, before your model produces a response, the router
    # retries the request once on another destination. A request that times
    # out on a destination isn't retried. Because a request can make two
    # attempts, set your client read timeout to at least 170 seconds.
    #
    # The caller needs permission to invoke the inference router and every
    # destination of the routing target. For information about permissions,
    # see [Route requests across Regions with inference routers][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/sagemaker/latest/dg/inference-router.html
    #
    # @option params [required, String] :inference_router_name
    #   The name of the inference router to invoke.
    #
    # @option params [required, String] :routing_target_name
    #   The name of the routing target in the inference router. The routing
    #   target lists the destinations that can serve the request.
    #
    # @option params [String] :content_type
    #   The MIME type of the input data in the request body. The router passes
    #   it to the destination.
    #
    # @option params [String] :accept
    #   The MIME type that you want for the inference response. The router
    #   passes it to the destination.
    #
    # @option params [String] :inference_id
    #   An identifier for the inference request. The router passes it to the
    #   destination.
    #
    # @option params [String] :prefix_aware_id
    #   An optional, stable identifier that serves as a routing hint for
    #   prefix-aware routing. The router passes it to the destination that
    #   serves the request. Within that destination, requests with the same
    #   prefix and the same identifier go to the same instance. If requests
    #   from different applications might have the same prompt prefix, set a
    #   different identifier for each application to differentiate their
    #   routing decisions.
    #
    #   Applies only to destination endpoints configured with a
    #   `RoutingStrategy` of `PREFIX_AWARE`.
    #
    # @option params [String] :custom_attributes
    #   Provides additional information about the inference request. The value
    #   is an opaque string that the router passes, unchanged, to the model
    #   container of the destination that serves the request. The value can
    #   contain up to 1,024 visible US-ASCII characters.
    #
    # @option params [required, String, StringIO, File] :body
    #   The input data for the inference, in the format that your model
    #   expects. The body can't be empty.
    #
    # @return [Types::InvokeInferenceRouterOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::InvokeInferenceRouterOutput#body #body} => String
    #   * {Types::InvokeInferenceRouterOutput#content_type #content_type} => String
    #   * {Types::InvokeInferenceRouterOutput#invoked_routed_resource_arn #invoked_routed_resource_arn} => String
    #   * {Types::InvokeInferenceRouterOutput#routing_reason #routing_reason} => String
    #   * {Types::InvokeInferenceRouterOutput#invoked_production_variant #invoked_production_variant} => String
    #   * {Types::InvokeInferenceRouterOutput#custom_attributes #custom_attributes} => String
    #
    #
    # @example Example: Invoke an inference router
    #
    #   # The following example sends a JSON request to the my-target routing target of the my-router inference router. The
    #   # response shows that a destination in the router's Region served the request.
    #
    #   resp = client.invoke_inference_router({
    #     body: "{\"instances\": [[1.0, 2.0, 5.0]]}", 
    #     content_type: "application/json", 
    #     inference_router_name: "my-router", 
    #     routing_target_name: "my-target", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     content_type: "application/json", 
    #     routing_reason: "local-preferred", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.invoke_inference_router({
    #     inference_router_name: "InvokeInferenceRouterInputInferenceRouterNameString", # required
    #     routing_target_name: "InvokeInferenceRouterInputRoutingTargetNameString", # required
    #     content_type: "InvokeInferenceRouterInputContentTypeString",
    #     accept: "InvokeInferenceRouterInputAcceptString",
    #     inference_id: "InvokeInferenceRouterInputInferenceIdString",
    #     prefix_aware_id: "InvokeInferenceRouterInputPrefixAwareIdString",
    #     custom_attributes: "CustomAttributesHeader",
    #     body: "data", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.body #=> String
    #   resp.content_type #=> String
    #   resp.invoked_routed_resource_arn #=> String
    #   resp.routing_reason #=> String
    #   resp.invoked_production_variant #=> String
    #   resp.custom_attributes #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-inference-router-runtime-2026-01-01/InvokeInferenceRouter AWS API Documentation
    #
    # @overload invoke_inference_router(params = {})
    # @param [Hash] params ({})
    def invoke_inference_router(params = {}, options = {})
      req = build_request(:invoke_inference_router, params)
      req.send_request(options)
    end

    # Submits an asynchronous inference request to an inference router.
    # Before you call this operation, upload the input data to Amazon S3 in
    # the router's Amazon Web Services Region. The router returns as soon
    # as it accepts the request, and sends the request to one of the
    # destinations of the routing target. The destination reads the input
    # from Amazon S3, and the inference response is written to the Amazon S3
    # output path that the routing target specifies.
    #
    # If a destination doesn't start the request within the routing
    # target's `MaxTimeInBacklogSeconds`, the router moves the request to
    # another destination. After your model starts processing the request,
    # the request doesn't move. If no destination can take the request
    # before `RequestTTLSeconds` runs out, or every destination has been
    # tried, the router writes a failure object to the `FailureLocation` and
    # publishes a notification to the routing target's error topic, if one
    # is configured.
    #
    # For information about the permissions that the caller and each
    # destination need, see [Send asynchronous requests through an inference
    # router][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/sagemaker/latest/dg/inference-router-async.html
    #
    # @option params [required, String] :inference_router_name
    #   The name of the inference router to invoke.
    #
    # @option params [required, String] :routing_target_name
    #   The name of the routing target in the inference router. The routing
    #   target must be configured for asynchronous inference.
    #
    # @option params [String] :content_type
    #   The MIME type of the input data in Amazon S3. The router passes it to
    #   the destination.
    #
    # @option params [String] :accept
    #   The MIME type that you want for the inference response. The router
    #   passes it to the destination.
    #
    # @option params [String] :custom_attributes
    #   Provides additional information about the inference request. The value
    #   is an opaque string that the router passes, unchanged, to the model
    #   container of the destination that serves the request. The value can
    #   contain up to 1,024 visible US-ASCII characters.
    #
    # @option params [String] :inference_id
    #   An identifier for the inference request. If you don't provide one,
    #   SageMaker AI generates one and returns it in the response.
    #
    # @option params [required, String] :input_location
    #   The Amazon S3 URI of the object that contains the input data for the
    #   inference. The bucket must be in the inference router's Amazon Web
    #   Services Region and owned by the router's account. The destination
    #   endpoint's execution role reads the object, and the destination's
    #   asynchronous inference limits apply to it.
    #
    # @option params [String] :s3_output_path_extension
    #   The path extension that is appended to the routing target's Amazon S3
    #   output path where the inference response is stored.
    #
    # @option params [String] :filename
    #   The file name of the inference response stored in Amazon S3. If you
    #   don't provide one, SageMaker AI generates one.
    #
    # @option params [Integer] :request_ttl_seconds
    #   The time to live of the request, in seconds, measured from when the
    #   router accepts it. If no destination starts the request in this time,
    #   the request fails. The default is 21,600 seconds (6 hours).
    #
    # @option params [Integer] :invocation_timeout_seconds
    #   The maximum time, in seconds, that a destination can spend processing
    #   the request before the request is marked as expired. The default is
    #   900 seconds (15 minutes).
    #
    # @return [Types::InvokeInferenceRouterAsyncOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::InvokeInferenceRouterAsyncOutput#inference_id #inference_id} => String
    #   * {Types::InvokeInferenceRouterAsyncOutput#output_location #output_location} => String
    #   * {Types::InvokeInferenceRouterAsyncOutput#failure_location #failure_location} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.invoke_inference_router_async({
    #     inference_router_name: "InvokeInferenceRouterAsyncInputInferenceRouterNameString", # required
    #     routing_target_name: "InvokeInferenceRouterAsyncInputRoutingTargetNameString", # required
    #     content_type: "InvokeInferenceRouterAsyncInputContentTypeString",
    #     accept: "InvokeInferenceRouterAsyncInputAcceptString",
    #     custom_attributes: "CustomAttributesHeader",
    #     inference_id: "InvokeInferenceRouterAsyncInputInferenceIdString",
    #     input_location: "InvokeInferenceRouterAsyncInputInputLocationString", # required
    #     s3_output_path_extension: "InvokeInferenceRouterAsyncInputS3OutputPathExtensionString",
    #     filename: "InvokeInferenceRouterAsyncInputFilenameString",
    #     request_ttl_seconds: 1,
    #     invocation_timeout_seconds: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.inference_id #=> String
    #   resp.output_location #=> String
    #   resp.failure_location #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-inference-router-runtime-2026-01-01/InvokeInferenceRouterAsync AWS API Documentation
    #
    # @overload invoke_inference_router_async(params = {})
    # @param [Hash] params ({})
    def invoke_inference_router_async(params = {}, options = {})
      req = build_request(:invoke_inference_router_async, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::SageMakerInferenceRouterRuntime')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-sagemakerinferencerouterruntime'
      context[:gem_version] = '1.1.0'
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
