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
require 'aws-sdk-core/plugins/event_stream_configuration'

module Aws::SageMakerRuntime
  # An API client for SageMakerRuntime.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::SageMakerRuntime::Client.new(
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

    @identifier = :sagemakerruntime

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
    add_plugin(Aws::Plugins::EventStreamConfiguration)
    add_plugin(Aws::SageMakerRuntime::Plugins::Endpoints)

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
    #   @option options [Proc] :event_stream_handler
    #     When an EventStream or Proc object is provided, it will be used as callback for each chunk of event stream response received along the way.
    #
    #   @option options [Boolean] :ignore_configured_endpoint_urls
    #     Setting to true disables use of endpoint URLs provided via environment
    #     variables and the shared configuration file.
    #
    #   @option options [Proc] :input_event_stream_handler
    #     When an EventStream or Proc object is provided, it can be used for sending events for the event stream.
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
    #   @option options [Proc] :output_event_stream_handler
    #     When an EventStream or Proc object is provided, it will be used as callback for each chunk of event stream response received along the way.
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
    #   @option options [Aws::SageMakerRuntime::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::SageMakerRuntime::EndpointParameters`.
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

    # After you deploy a model into production using Amazon SageMaker AI
    # hosting services, your client applications use this API to get
    # inferences from the model hosted at the specified endpoint.
    #
    # For an overview of Amazon SageMaker AI, see [How It Works][1].
    #
    # Amazon SageMaker AI strips all POST headers except those supported by
    # the API. Amazon SageMaker AI might add additional headers. You should
    # not rely on the behavior of headers outside those enumerated in the
    # request syntax.
    #
    # Calls to `InvokeEndpoint` are authenticated by using Amazon Web
    # Services Signature Version 4. For information, see [Authenticating
    # Requests (Amazon Web Services Signature Version 4)][2] in the *Amazon
    # S3 API Reference*.
    #
    # A customer's model containers must respond to requests within 60
    # seconds. The model itself can have a maximum processing time of 60
    # seconds before responding to invocations. If your model is going to
    # take 50-60 seconds of processing time, the SDK socket timeout should
    # be set to be 70 seconds.
    #
    # <note markdown="1"> Endpoints are scoped to an individual account, and are not public. The
    # URL does not contain the account ID, but Amazon SageMaker AI
    # determines the account ID from the authentication token that is
    # supplied by the caller.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/sagemaker/latest/dg/how-it-works.html
    # [2]: https://docs.aws.amazon.com/AmazonS3/latest/API/sig-v4-authenticating-requests.html
    #
    # @option params [required, String] :endpoint_name
    #   The name of the endpoint that you specified when you created the
    #   endpoint using the [CreateEndpoint][1] API.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/sagemaker/latest/dg/API_CreateEndpoint.html
    #
    # @option params [required, String, StringIO, File] :body
    #   Provides input data, in the format specified in the `ContentType`
    #   request header. Amazon SageMaker AI passes all of the data in the body
    #   to the model.
    #
    #   For information about the format of the request body, see [Common Data
    #   Formats-Inference][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/sagemaker/latest/dg/cdf-inference.html
    #
    # @option params [String] :content_type
    #   The MIME type of the input data in the request body.
    #
    # @option params [String] :accept
    #   The desired MIME type of the inference response from the model
    #   container.
    #
    # @option params [String] :custom_attributes
    #   Provides additional information about a request for an inference
    #   submitted to a model hosted at an Amazon SageMaker AI endpoint. The
    #   information is an opaque value that is forwarded verbatim. You could
    #   use this value, for example, to provide an ID that you can use to
    #   track a request or to provide other metadata that a service endpoint
    #   was programmed to process. The value must consist of no more than 1024
    #   visible US-ASCII characters as specified in [Section 3.3.6. Field
    #   Value Components][1] of the Hypertext Transfer Protocol (HTTP/1.1).
    #
    #   The code in your model is responsible for setting or updating any
    #   custom attributes in the response. If your code does not set this
    #   value in the response, an empty value is returned. For example, if a
    #   custom attribute represents the trace ID, your model can prepend the
    #   custom attribute with `Trace ID:` in your post-processing function.
    #
    #   This feature is currently supported in the Amazon Web Services SDKs
    #   but not in the Amazon SageMaker AI Python SDK.
    #
    #
    #
    #   [1]: https://datatracker.ietf.org/doc/html/rfc7230#section-3.2.6
    #
    # @option params [String] :target_model
    #   The model to request for inference when invoking a multi-model
    #   endpoint.
    #
    # @option params [String] :target_variant
    #   Specify the production variant to send the inference request to when
    #   invoking an endpoint that is running two or more variants. Note that
    #   this parameter overrides the default behavior for the endpoint, which
    #   is to distribute the invocation traffic based on the variant weights.
    #
    #   For information about how to use variant targeting to perform a/b
    #   testing, see [Test models in production][1]
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/sagemaker/latest/dg/model-ab-testing.html
    #
    # @option params [String] :target_container_hostname
    #   If the endpoint hosts multiple containers and is configured to use
    #   direct invocation, this parameter specifies the host name of the
    #   container to invoke.
    #
    # @option params [String] :inference_id
    #   If you provide a value, it is added to the captured data when you
    #   enable data capture on the endpoint. For information about data
    #   capture, see [Capture Data][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/sagemaker/latest/dg/model-monitor-data-capture.html
    #
    # @option params [String] :enable_explanations
    #   An optional JMESPath expression used to override the
    #   `EnableExplanations` parameter of the `ClarifyExplainerConfig` API.
    #   See the [EnableExplanations][1] section in the developer guide for
    #   more information.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/sagemaker/latest/dg/clarify-online-explainability-create-endpoint.html#clarify-online-explainability-create-endpoint-enable
    #
    # @option params [String] :inference_component_name
    #   If the endpoint hosts one or more inference components, this parameter
    #   specifies the name of inference component to invoke.
    #
    # @option params [String] :session_id
    #   Creates a stateful session or identifies an existing one. You can do
    #   one of the following:
    #
    #   * Create a stateful session by specifying the value `NEW_SESSION`.
    #
    #   * Send your request to an existing stateful session by specifying the
    #     ID of that session.
    #
    #   With a stateful session, you can send multiple requests to a stateful
    #   model. When you create a session with a stateful model, the model must
    #   create the session ID and set the expiration time. The model must also
    #   provide that information in the response to your request. You can get
    #   the ID and timestamp from the `NewSessionId` response parameter. For
    #   any subsequent request where you specify that session ID, SageMaker AI
    #   routes the request to the same instance that supports the session.
    #
    # @return [Types::InvokeEndpointOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::InvokeEndpointOutput#body #body} => String
    #   * {Types::InvokeEndpointOutput#content_type #content_type} => String
    #   * {Types::InvokeEndpointOutput#invoked_production_variant #invoked_production_variant} => String
    #   * {Types::InvokeEndpointOutput#custom_attributes #custom_attributes} => String
    #   * {Types::InvokeEndpointOutput#new_session_id #new_session_id} => String
    #   * {Types::InvokeEndpointOutput#closed_session_id #closed_session_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.invoke_endpoint({
    #     endpoint_name: "EndpointName", # required
    #     body: "data", # required
    #     content_type: "Header",
    #     accept: "Header",
    #     custom_attributes: "CustomAttributesHeader",
    #     target_model: "TargetModelHeader",
    #     target_variant: "TargetVariantHeader",
    #     target_container_hostname: "TargetContainerHostnameHeader",
    #     inference_id: "InferenceId",
    #     enable_explanations: "EnableExplanationsHeader",
    #     inference_component_name: "InferenceComponentHeader",
    #     session_id: "SessionIdOrNewSessionConstantHeader",
    #   })
    #
    # @example Response structure
    #
    #   resp.body #=> String
    #   resp.content_type #=> String
    #   resp.invoked_production_variant #=> String
    #   resp.custom_attributes #=> String
    #   resp.new_session_id #=> String
    #   resp.closed_session_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/runtime.sagemaker-2017-05-13/InvokeEndpoint AWS API Documentation
    #
    # @overload invoke_endpoint(params = {})
    # @param [Hash] params ({})
    def invoke_endpoint(params = {}, options = {})
      req = build_request(:invoke_endpoint, params)
      req.send_request(options)
    end

    # After you deploy a model into production using Amazon SageMaker AI
    # hosting services, your client applications use this API to get
    # inferences from the model hosted at the specified endpoint in an
    # asynchronous manner.
    #
    # Inference requests sent to this API are enqueued for asynchronous
    # processing. The processing of the inference request may or may not
    # complete before you receive a response from this API. The response
    # from this API will not contain the result of the inference request but
    # contain information about where you can locate it.
    #
    # Amazon SageMaker AI strips all POST headers except those supported by
    # the API. Amazon SageMaker AI might add additional headers. You should
    # not rely on the behavior of headers outside those enumerated in the
    # request syntax.
    #
    # Calls to `InvokeEndpointAsync` are authenticated by using Amazon Web
    # Services Signature Version 4. For information, see [Authenticating
    # Requests (Amazon Web Services Signature Version 4)][1] in the *Amazon
    # S3 API Reference*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonS3/latest/API/sig-v4-authenticating-requests.html
    #
    # @option params [required, String] :endpoint_name
    #   The name of the endpoint that you specified when you created the
    #   endpoint using the [CreateEndpoint][1] API.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/sagemaker/latest/dg/API_CreateEndpoint.html
    #
    # @option params [String] :content_type
    #   The MIME type of the input data in the request body.
    #
    # @option params [String] :accept
    #   The desired MIME type of the inference response from the model
    #   container.
    #
    # @option params [String] :custom_attributes
    #   Provides additional information about a request for an inference
    #   submitted to a model hosted at an Amazon SageMaker AI endpoint. The
    #   information is an opaque value that is forwarded verbatim. You could
    #   use this value, for example, to provide an ID that you can use to
    #   track a request or to provide other metadata that a service endpoint
    #   was programmed to process. The value must consist of no more than 1024
    #   visible US-ASCII characters as specified in [Section 3.3.6. Field
    #   Value Components][1] of the Hypertext Transfer Protocol (HTTP/1.1).
    #
    #   The code in your model is responsible for setting or updating any
    #   custom attributes in the response. If your code does not set this
    #   value in the response, an empty value is returned. For example, if a
    #   custom attribute represents the trace ID, your model can prepend the
    #   custom attribute with `Trace ID:` in your post-processing function.
    #
    #   This feature is currently supported in the Amazon Web Services SDKs
    #   but not in the Amazon SageMaker AI Python SDK.
    #
    #
    #
    #   [1]: https://datatracker.ietf.org/doc/html/rfc7230#section-3.2.6
    #
    # @option params [String] :inference_id
    #   The identifier for the inference request. Amazon SageMaker AI will
    #   generate an identifier for you if none is specified.
    #
    # @option params [required, String] :input_location
    #   The Amazon S3 URI where the inference request payload is stored.
    #
    # @option params [Integer] :request_ttl_seconds
    #   Maximum age in seconds a request can be in the queue before it is
    #   marked as expired. The default is 6 hours, or 21,600 seconds.
    #
    # @option params [Integer] :invocation_timeout_seconds
    #   Maximum amount of time in seconds a request can be processed before it
    #   is marked as expired. The default is 15 minutes, or 900 seconds.
    #
    # @return [Types::InvokeEndpointAsyncOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::InvokeEndpointAsyncOutput#inference_id #inference_id} => String
    #   * {Types::InvokeEndpointAsyncOutput#output_location #output_location} => String
    #   * {Types::InvokeEndpointAsyncOutput#failure_location #failure_location} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.invoke_endpoint_async({
    #     endpoint_name: "EndpointName", # required
    #     content_type: "Header",
    #     accept: "Header",
    #     custom_attributes: "CustomAttributesHeader",
    #     inference_id: "InferenceId",
    #     input_location: "InputLocationHeader", # required
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/runtime.sagemaker-2017-05-13/InvokeEndpointAsync AWS API Documentation
    #
    # @overload invoke_endpoint_async(params = {})
    # @param [Hash] params ({})
    def invoke_endpoint_async(params = {}, options = {})
      req = build_request(:invoke_endpoint_async, params)
      req.send_request(options)
    end

    # Invokes a model at the specified endpoint to return the inference
    # response as a stream. The inference stream provides the response
    # payload incrementally as a series of parts. Before you can get an
    # inference stream, you must have access to a model that's deployed
    # using Amazon SageMaker AI hosting services, and the container for that
    # model must support inference streaming.
    #
    # For more information that can help you use this API, see the following
    # sections in the *Amazon SageMaker AI Developer Guide*:
    #
    # * For information about how to add streaming support to a model, see
    #   [How Containers Serve Requests][1].
    #
    # * For information about how to process the streaming response, see
    #   [Invoke real-time endpoints][2].
    #
    # Before you can use this operation, your IAM permissions must allow the
    # `sagemaker:InvokeEndpoint` action. For more information about Amazon
    # SageMaker AI actions for IAM policies, see [Actions, resources, and
    # condition keys for Amazon SageMaker AI][3] in the *IAM Service
    # Authorization Reference*.
    #
    # Amazon SageMaker AI strips all POST headers except those supported by
    # the API. Amazon SageMaker AI might add additional headers. You should
    # not rely on the behavior of headers outside those enumerated in the
    # request syntax.
    #
    # Calls to `InvokeEndpointWithResponseStream` are authenticated by using
    # Amazon Web Services Signature Version 4. For information, see
    # [Authenticating Requests (Amazon Web Services Signature Version 4)][4]
    # in the *Amazon S3 API Reference*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/sagemaker/latest/dg/your-algorithms-inference-code.html#your-algorithms-inference-code-how-containe-serves-requests
    # [2]: https://docs.aws.amazon.com/sagemaker/latest/dg/realtime-endpoints-test-endpoints.html
    # [3]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazonsagemaker.html
    # [4]: https://docs.aws.amazon.com/AmazonS3/latest/API/sig-v4-authenticating-requests.html
    #
    # @option params [required, String] :endpoint_name
    #   The name of the endpoint that you specified when you created the
    #   endpoint using the [CreateEndpoint][1] API.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/sagemaker/latest/dg/API_CreateEndpoint.html
    #
    # @option params [required, String, StringIO, File] :body
    #   Provides input data, in the format specified in the `ContentType`
    #   request header. Amazon SageMaker AI passes all of the data in the body
    #   to the model.
    #
    #   For information about the format of the request body, see [Common Data
    #   Formats-Inference][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/sagemaker/latest/dg/cdf-inference.html
    #
    # @option params [String] :content_type
    #   The MIME type of the input data in the request body.
    #
    # @option params [String] :accept
    #   The desired MIME type of the inference response from the model
    #   container.
    #
    # @option params [String] :custom_attributes
    #   Provides additional information about a request for an inference
    #   submitted to a model hosted at an Amazon SageMaker AI endpoint. The
    #   information is an opaque value that is forwarded verbatim. You could
    #   use this value, for example, to provide an ID that you can use to
    #   track a request or to provide other metadata that a service endpoint
    #   was programmed to process. The value must consist of no more than 1024
    #   visible US-ASCII characters as specified in [Section 3.3.6. Field
    #   Value Components][1] of the Hypertext Transfer Protocol (HTTP/1.1).
    #
    #   The code in your model is responsible for setting or updating any
    #   custom attributes in the response. If your code does not set this
    #   value in the response, an empty value is returned. For example, if a
    #   custom attribute represents the trace ID, your model can prepend the
    #   custom attribute with `Trace ID:` in your post-processing function.
    #
    #   This feature is currently supported in the Amazon Web Services SDKs
    #   but not in the Amazon SageMaker AI Python SDK.
    #
    #
    #
    #   [1]: https://datatracker.ietf.org/doc/html/rfc7230#section-3.2.6
    #
    # @option params [String] :target_variant
    #   Specify the production variant to send the inference request to when
    #   invoking an endpoint that is running two or more variants. Note that
    #   this parameter overrides the default behavior for the endpoint, which
    #   is to distribute the invocation traffic based on the variant weights.
    #
    #   For information about how to use variant targeting to perform a/b
    #   testing, see [Test models in production][1]
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/sagemaker/latest/dg/model-ab-testing.html
    #
    # @option params [String] :target_container_hostname
    #   If the endpoint hosts multiple containers and is configured to use
    #   direct invocation, this parameter specifies the host name of the
    #   container to invoke.
    #
    # @option params [String] :inference_id
    #   An identifier that you assign to your request.
    #
    # @option params [String] :inference_component_name
    #   If the endpoint hosts one or more inference components, this parameter
    #   specifies the name of inference component to invoke for a streaming
    #   response.
    #
    # @option params [String] :session_id
    #   The ID of a stateful session to handle your request.
    #
    #   You can't create a stateful session by using the
    #   `InvokeEndpointWithResponseStream` action. Instead, you can create one
    #   by using the ` InvokeEndpoint ` action. In your request, you specify
    #   `NEW_SESSION` for the `SessionId` request parameter. The response to
    #   that request provides the session ID for the `NewSessionId` response
    #   parameter.
    #
    # @return [Types::InvokeEndpointWithResponseStreamOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::InvokeEndpointWithResponseStreamOutput#body #body} => Types::ResponseStream
    #   * {Types::InvokeEndpointWithResponseStreamOutput#content_type #content_type} => String
    #   * {Types::InvokeEndpointWithResponseStreamOutput#invoked_production_variant #invoked_production_variant} => String
    #   * {Types::InvokeEndpointWithResponseStreamOutput#custom_attributes #custom_attributes} => String
    #
    # @example EventStream Operation Example
    #
    #   # You can process the event once it arrives immediately, or wait until the
    #   # full response is complete and iterate through the eventstream enumerator.
    #
    #   # To interact with event immediately, you need to register invoke_endpoint_with_response_stream
    #   # with callbacks. Callbacks can be registered for specific events or for all
    #   # events, including error events.
    #
    #   # Callbacks can be passed into the `:event_stream_handler` option or within a
    #   # block statement attached to the #invoke_endpoint_with_response_stream call directly. Hybrid
    #   # pattern of both is also supported.
    #
    #   # `:event_stream_handler` option takes in either a Proc object or
    #   # Aws::SageMakerRuntime::EventStreams::ResponseStream object.
    #
    #   # Usage pattern a): Callbacks with a block attached to #invoke_endpoint_with_response_stream
    #   # Example for registering callbacks for all event types and an error event
    #   client.invoke_endpoint_with_response_stream(
    #     # params input
    #   ) do |stream|
    #     stream.on_error_event do |event|
    #       # catch unmodeled error event in the stream
    #       raise event
    #       # => Aws::Errors::EventError
    #       # event.event_type => :error
    #       # event.error_code => String
    #       # event.error_message => String
    #     end
    #
    #     stream.on_event do |event|
    #       # process all events arrive
    #       puts event.event_type
    #       # ...
    #     end
    #   end
    #
    #   # Usage pattern b): Pass in `:event_stream_handler` for #invoke_endpoint_with_response_stream
    #   #  1) Create a Aws::SageMakerRuntime::EventStreams::ResponseStream object
    #   #  Example for registering callbacks with specific events
    #
    #   handler = Aws::SageMakerRuntime::EventStreams::ResponseStream.new
    #   handler.on_payload_part_event do |event|
    #     event # => Aws::SageMakerRuntime::Types::PayloadPart
    #   end
    #   handler.on_model_stream_error_event do |event|
    #     event # => Aws::SageMakerRuntime::Types::ModelStreamError
    #   end
    #   handler.on_internal_stream_failure_event do |event|
    #     event # => Aws::SageMakerRuntime::Types::InternalStreamFailure
    #   end
    #
    #   client.invoke_endpoint_with_response_stream(
    #     # params inputs
    #     event_stream_handler: handler
    #   )
    #
    #   #  2) Use a Ruby Proc object
    #   #  Example for registering callbacks with specific events
    #   handler = Proc.new do |stream|
    #     stream.on_payload_part_event do |event|
    #       event # => Aws::SageMakerRuntime::Types::PayloadPart
    #     end
    #     stream.on_model_stream_error_event do |event|
    #       event # => Aws::SageMakerRuntime::Types::ModelStreamError
    #     end
    #     stream.on_internal_stream_failure_event do |event|
    #       event # => Aws::SageMakerRuntime::Types::InternalStreamFailure
    #     end
    #   end
    #
    #   client.invoke_endpoint_with_response_stream(
    #     # params inputs
    #     event_stream_handler: handler
    #   )
    #
    #   #  Usage pattern c): Hybrid pattern of a) and b)
    #   handler = Aws::SageMakerRuntime::EventStreams::ResponseStream.new
    #   handler.on_payload_part_event do |event|
    #     event # => Aws::SageMakerRuntime::Types::PayloadPart
    #   end
    #   handler.on_model_stream_error_event do |event|
    #     event # => Aws::SageMakerRuntime::Types::ModelStreamError
    #   end
    #   handler.on_internal_stream_failure_event do |event|
    #     event # => Aws::SageMakerRuntime::Types::InternalStreamFailure
    #   end
    #
    #   client.invoke_endpoint_with_response_stream(
    #     # params input
    #     event_stream_handler: handler
    #   ) do |stream|
    #     stream.on_error_event do |event|
    #       # catch unmodeled error event in the stream
    #       raise event
    #       # => Aws::Errors::EventError
    #       # event.event_type => :error
    #       # event.error_code => String
    #       # event.error_message => String
    #     end
    #   end
    #
    #   # You can also iterate through events after the response complete.
    #   # Events are available at
    #   resp.body # => Enumerator
    #   # For parameter input example, please refer to following request syntax.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.invoke_endpoint_with_response_stream({
    #     endpoint_name: "EndpointName", # required
    #     body: "data", # required
    #     content_type: "Header",
    #     accept: "Header",
    #     custom_attributes: "CustomAttributesHeader",
    #     target_variant: "TargetVariantHeader",
    #     target_container_hostname: "TargetContainerHostnameHeader",
    #     inference_id: "InferenceId",
    #     inference_component_name: "InferenceComponentHeader",
    #     session_id: "SessionIdHeader",
    #   })
    #
    # @example Response structure
    #
    #   # All events are available at resp.body:
    #   resp.body #=> Enumerator
    #   resp.body.event_types #=> [:payload_part, :model_stream_error, :internal_stream_failure]
    #
    #   # For :payload_part event available at #on_payload_part_event callback and response eventstream enumerator:
    #   event.bytes #=> String
    #
    #   # For :model_stream_error event available at #on_model_stream_error_event callback and response eventstream enumerator:
    #   event.message #=> String
    #   event.error_code #=> String
    #
    #   # For :internal_stream_failure event available at #on_internal_stream_failure_event callback and response eventstream enumerator:
    #   event.message #=> String
    #
    #   resp.content_type #=> String
    #   resp.invoked_production_variant #=> String
    #   resp.custom_attributes #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/runtime.sagemaker-2017-05-13/InvokeEndpointWithResponseStream AWS API Documentation
    #
    # @overload invoke_endpoint_with_response_stream(params = {})
    # @param [Hash] params ({})
    def invoke_endpoint_with_response_stream(params = {}, options = {}, &block)
      params = params.dup
      event_stream_handler = case handler = params.delete(:event_stream_handler)
        when EventStreams::ResponseStream then handler
        when Proc then EventStreams::ResponseStream.new.tap(&handler)
        when nil then EventStreams::ResponseStream.new
        else
          msg = "expected :event_stream_handler to be a block or "\
                "instance of Aws::SageMakerRuntime::EventStreams::ResponseStream"\
                ", got `#{handler.inspect}` instead"
          raise ArgumentError, msg
        end

      yield(event_stream_handler) if block_given?

      req = build_request(:invoke_endpoint_with_response_stream, params)

      req.context[:event_stream_handler] = event_stream_handler
      req.handlers.add(Aws::Binary::DecodeHandler, priority: 95)

      req.send_request(options, &block)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::SageMakerRuntime')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-sagemakerruntime'
      context[:gem_version] = '1.87.0'
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
