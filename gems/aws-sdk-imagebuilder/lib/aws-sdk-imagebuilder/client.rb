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
    #     Used only in `standard` and `adaptive` retry modes. Specifies whether to apply
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

    # Cancels the creation of an image. This operation can only be used on
    # images in a non-terminal state. Cancellation is asynchronous: the
    # request returns immediately, then Image Builder stops the running
    # build and moves the image to the `CANCELLED` state. Output resources
    # that the build already created, such as AMIs and snapshots, aren't
    # removed.
    #
    # @option params [required, String] :image_build_version_arn
    #   The Amazon Resource Name (ARN) of the image that you want to cancel
    #   creation for.
    #
    # @option params [required, String] :client_token
    #   A unique, case-sensitive identifier you provide to ensure that the
    #   operation runs no more than one time. If you retry a request with the
    #   same client token, Image Builder returns the original response without
    #   running the operation again. For more information, see [Ensuring
    #   idempotency][1] in the *Amazon EC2 API Reference*.
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
    #
    # @example Example: Cancel an image build
    #
    #   # The following example cancels a build that is in progress for the specified image build version.
    #
    #   resp = client.cancel_image_creation({
    #     client_token: "a1b2c3d4-5678-90ab-cdef-EXAMPLE77777", 
    #     image_build_version_arn: "arn:aws:imagebuilder:us-west-2:111122223333:image/my-example-recipe/1.0.0/1", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     client_token: "a1b2c3d4-5678-90ab-cdef-EXAMPLE77777", 
    #     image_build_version_arn: "arn:aws:imagebuilder:us-west-2:111122223333:image/my-example-recipe/1.0.0/1", 
    #     request_id: "fead325f-72d9-42b5-b2ed-c5294984c6a9", 
    #   }
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

    # Cancels a lifecycle execution – a single run of lifecycle actions that
    # a lifecycle policy or a StartResourceStateUpdate request started. You
    # can only cancel an execution that hasn't reached a terminal state.
    # Cancellation is asynchronous and doesn't undo completed lifecycle
    # actions.
    #
    # @option params [required, String] :lifecycle_execution_id
    #   Identifies the specific runtime instance of the image lifecycle to
    #   cancel.
    #
    # @option params [required, String] :client_token
    #   A unique, case-sensitive identifier you provide to ensure that the
    #   operation runs no more than one time. If you retry a request with the
    #   same client token, Image Builder returns the original response without
    #   running the operation again. For more information, see [Ensuring
    #   idempotency][1] in the *Amazon EC2 API Reference*.
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
    #
    # @example Example: Cancel a lifecycle execution
    #
    #   # The following example cancels the scheduled resource state update associated with the specified lifecycle execution ID
    #   # before it runs.
    #
    #   resp = client.cancel_lifecycle_execution({
    #     client_token: "a1b2c3d4-5678-90ab-cdef-EXAMPLE97531", 
    #     lifecycle_execution_id: "lce-401aefc3-a829-46f6-8fc2-91497988a503", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     lifecycle_execution_id: "lce-401aefc3-a829-46f6-8fc2-91497988a503", 
    #   }
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
    # Image Builder determines the component type from the document. If the
    # document contains a single phase named `test`, the component type is
    # `TEST`. Otherwise, the component type is `BUILD`.
    #
    # @option params [required, String] :name
    #   The name of the component. Image Builder generates the component ARN
    #   from a normalized form of the name, so names that differ only in case,
    #   spaces, or underscores count as the same name. If a component with the
    #   same name and semantic version already exists in your account in the
    #   same Amazon Web Services Region, the request creates a new build
    #   version for it. If the content is also identical to the latest build
    #   version, the request fails because the component already exists.
    #
    # @option params [required, String] :semantic_version
    #   The semantic version of the component. This version follows the
    #   semantic version syntax.
    #
    #   <note markdown="1"> The semantic version has four nodes:
    #   &lt;major&gt;.&lt;minor&gt;.&lt;patch&gt;/&lt;build&gt;. You can
    #   assign values for the first three, and can filter on all of them.
    #
    #    **Assignment:** For the first three nodes, you can assign any positive
    #   integer value, including zero. The upper limit is 2^30-1, or
    #   1073741823, for each node. Image Builder automatically assigns the
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
    #   (`s3://bucket/key`), and you must have permission to access the S3
    #   bucket it points to. If you use Amazon S3, you can specify component
    #   content up to your service quota for component size, which is 64 KB by
    #   default.
    #
    #   Alternatively, you can specify the YAML document inline, using the
    #   component `data` property. You cannot specify both properties.
    #
    # @option params [String] :kms_key_id
    #   The Amazon Resource Name (ARN) that uniquely identifies the KMS key
    #   used to encrypt this component. This can be either the Key ARN or the
    #   Alias ARN. For more information, see [Key identifiers (KeyId)][1] in
    #   the *Key Management Service Developer Guide*. If you don't specify a
    #   key, Image Builder encrypts the component data with a KMS key that
    #   Image Builder owns.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-id-key-ARN
    #
    # @option params [Hash<String,String>] :tags
    #   The tags that apply to the component.
    #
    # @option params [required, String] :client_token
    #   A unique, case-sensitive identifier you provide to ensure that the
    #   operation runs no more than one time. If you retry a request with the
    #   same client token, Image Builder returns the original response without
    #   running the operation again. For more information, see [Ensuring
    #   idempotency][1] in the *Amazon EC2 API Reference*.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html
    #
    # @option params [Boolean] :dry_run
    #   Validates the required permissions and request parameters without
    #   performing the operation. If validation succeeds, the operation
    #   returns a `DryRunOperationException` error response.
    #
    # @return [Types::CreateComponentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateComponentResponse#request_id #request_id} => String
    #   * {Types::CreateComponentResponse#client_token #client_token} => String
    #   * {Types::CreateComponentResponse#component_build_version_arn #component_build_version_arn} => String
    #   * {Types::CreateComponentResponse#latest_version_references #latest_version_references} => Types::LatestVersionReferences
    #
    #
    # @example Example: Create a component from an inline document
    #
    #   # The following example creates a build component from a YAML document provided inline in the request.
    #
    #   resp = client.create_component({
    #     name: "my-example-component", 
    #     client_token: "a1b2c3d4-5678-90ab-cdef-EXAMPLE11111", 
    #     data: "name: InstallMyApp\ndescription: Installs my application\nschemaVersion: 1.0\nphases:\n  - name: build\n    steps:\n      - name: InstallApp\n        action: ExecuteBash\n        inputs:\n          commands:\n            - sudo yum -y install my-app\n", 
    #     description: "Installs the latest version of my application", 
    #     platform: "Linux", 
    #     semantic_version: "1.0.0", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     client_token: "a1b2c3d4-5678-90ab-cdef-EXAMPLE11111", 
    #     component_build_version_arn: "arn:aws:imagebuilder:us-west-2:111122223333:component/my-example-component/1.0.0/1", 
    #     latest_version_references: {
    #       latest_major_version_arn: "arn:aws:imagebuilder:us-west-2:111122223333:component/my-example-component/1.x.x", 
    #       latest_minor_version_arn: "arn:aws:imagebuilder:us-west-2:111122223333:component/my-example-component/1.0.x", 
    #       latest_patch_version_arn: "arn:aws:imagebuilder:us-west-2:111122223333:component/my-example-component/1.0.0", 
    #       latest_version_arn: "arn:aws:imagebuilder:us-west-2:111122223333:component/my-example-component/x.x.x", 
    #     }, 
    #     request_id: "e769f240-fb6a-4253-88d1-20a80cbe787d", 
    #   }
    #
    # @example Example: Create a component from a document stored in Amazon S3
    #
    #   # The following example creates a component from a YAML definition document that's stored in an Amazon S3 bucket. The
    #   # definition document for this component includes an AppVersion parameter that recipes can set when they include the
    #   # component.
    #
    #   resp = client.create_component({
    #     name: "my-example-parameterized-component", 
    #     client_token: "a1b2c3d4-5678-90ab-cdef-EXAMPLE10101", 
    #     description: "Installs a configurable version of my application", 
    #     platform: "Linux", 
    #     semantic_version: "1.0.0", 
    #     uri: "s3://amzn-s3-demo-bucket/components/install-my-app.yaml", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     client_token: "a1b2c3d4-5678-90ab-cdef-EXAMPLE10101", 
    #     component_build_version_arn: "arn:aws:imagebuilder:us-west-2:111122223333:component/my-example-parameterized-component/1.0.0/1", 
    #     latest_version_references: {
    #       latest_major_version_arn: "arn:aws:imagebuilder:us-west-2:111122223333:component/my-example-parameterized-component/1.x.x", 
    #       latest_minor_version_arn: "arn:aws:imagebuilder:us-west-2:111122223333:component/my-example-parameterized-component/1.0.x", 
    #       latest_patch_version_arn: "arn:aws:imagebuilder:us-west-2:111122223333:component/my-example-parameterized-component/1.0.0", 
    #       latest_version_arn: "arn:aws:imagebuilder:us-west-2:111122223333:component/my-example-parameterized-component/x.x.x", 
    #     }, 
    #     request_id: "0cec8e32-a5c6-4aeb-ac3a-6471c8a2a8a9", 
    #   }
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
    #     dry_run: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.request_id #=> String
    #   resp.client_token #=> String
    #   resp.component_build_version_arn #=> String
    #   resp.latest_version_references.latest_version_arn #=> String
    #   resp.latest_version_references.latest_major_version_arn #=> String
    #   resp.latest_version_references.latest_minor_version_arn #=> String
    #   resp.latest_version_references.latest_patch_version_arn #=> String
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
    #   The name of the container recipe. The recipe name, combined with the
    #   semantic version, must be unique to your account in each Amazon Web
    #   Services Region. Image Builder generates the container recipe ARN from
    #   a normalized form of the name, so names that differ only in case,
    #   spaces, or underscores count as the same name.
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
    #    **Assignment:** For the first three nodes, you can assign any positive
    #   integer value, including zero. The upper limit is 2^30-1, or
    #   1073741823, for each node. Image Builder automatically assigns the
    #   build number to the fourth node.
    #
    #    **Patterns:** You can use any numeric pattern that adheres to the
    #   assignment requirements for the nodes that you can assign. For
    #   example, you might choose a software version pattern, such as 1.0.0,
    #   or a date, such as 2021.01.01.
    #
    #    </note>
    #
    # @option params [Array<Types::ComponentConfiguration>] :components
    #   The components included in the container recipe. You can specify each
    #   component only one time in a recipe.
    #
    # @option params [Types::InstanceConfiguration] :instance_configuration
    #   A group of options that can be used to configure an instance for
    #   building and testing container images.
    #
    # @option params [String] :dockerfile_template_data
    #   The Dockerfile template used to build your image, as an inline data
    #   blob. You must specify exactly one of the `dockerfileTemplateData` or
    #   `dockerfileTemplateUri` properties. For the contextual variables that
    #   the template can include, see [Create a new version of a container
    #   recipe][1] in the *EC2 Image Builder User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/imagebuilder/latest/userguide/create-container-recipes.html
    #
    # @option params [String] :dockerfile_template_uri
    #   The Amazon S3 URI for the Dockerfile template that is used to build
    #   your container image. You must have permission to read the object.
    #   Image Builder reads the object once, when it creates the recipe, and
    #   stores its content in the recipe. Later changes to the S3 object
    #   don't affect the recipe. You must specify exactly one of the
    #   `dockerfileTemplateData` or `dockerfileTemplateUri` properties.
    #
    # @option params [String] :platform_override
    #   Specifies the operating system platform when you use a custom base
    #   image. Container recipes support only the Linux and Windows platforms.
    #
    # @option params [String] :image_os_version_override
    #   Specifies the operating system version for the base image. Use this
    #   property only when the base image is a container image from a
    #   registry. When the base image is an Image Builder image, the operating
    #   system version comes from the parent image.
    #
    # @option params [required, String] :parent_image
    #   The base image for the container recipe. This can be an Image Builder
    #   image resource ARN or a container image URI from a registry, for
    #   example `amazonlinux:latest`.
    #
    # @option params [Hash<String,String>] :tags
    #   Tags that are attached to the container recipe.
    #
    # @option params [String] :working_directory
    #   The working directory for use during build and test workflows.
    #
    # @option params [required, Types::TargetContainerRepository] :target_repository
    #   The destination repository for the container image. The Amazon ECR
    #   repository must already exist in the Amazon Web Services Region where
    #   the build runs.
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
    #   A unique, case-sensitive identifier you provide to ensure that the
    #   operation runs no more than one time. If you retry a request with the
    #   same client token, Image Builder returns the original response without
    #   running the operation again. For more information, see [Ensuring
    #   idempotency][1] in the *Amazon EC2 API Reference*.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html
    #
    # @option params [Boolean] :dry_run
    #   Validates the required permissions and request parameters without
    #   performing the operation. If validation succeeds, the operation
    #   returns a `DryRunOperationException` error response.
    #
    # @return [Types::CreateContainerRecipeResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateContainerRecipeResponse#request_id #request_id} => String
    #   * {Types::CreateContainerRecipeResponse#client_token #client_token} => String
    #   * {Types::CreateContainerRecipeResponse#container_recipe_arn #container_recipe_arn} => String
    #   * {Types::CreateContainerRecipeResponse#latest_version_references #latest_version_references} => Types::LatestVersionReferences
    #
    #
    # @example Example: Create a container recipe with an inline Dockerfile template
    #
    #   # The following example creates a Docker container recipe that applies one build component, using the latest Amazon Linux
    #   # container image as the parent and an existing ECR repository as the target.
    #
    #   resp = client.create_container_recipe({
    #     name: "my-example-container-recipe", 
    #     client_token: "a1b2c3d4-5678-90ab-cdef-EXAMPLE99999", 
    #     components: [
    #       {
    #         component_arn: "arn:aws:imagebuilder:us-west-2:111122223333:component/my-example-container-component/1.0.0/1", 
    #       }, 
    #     ], 
    #     container_type: "DOCKER", 
    #     dockerfile_template_data: "FROM {{{ imagebuilder:parentImage }}}\n{{{ imagebuilder:environments }}}\n{{{ imagebuilder:components }}}\n", 
    #     parent_image: "amazonlinux:latest", 
    #     semantic_version: "1.0.0", 
    #     target_repository: {
    #       repository_name: "my-example-container-repo", 
    #       service: "ECR", 
    #     }, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     client_token: "a1b2c3d4-5678-90ab-cdef-EXAMPLE99999", 
    #     container_recipe_arn: "arn:aws:imagebuilder:us-west-2:111122223333:container-recipe/my-example-container-recipe/1.0.0", 
    #     latest_version_references: {
    #       latest_major_version_arn: "arn:aws:imagebuilder:us-west-2:111122223333:container-recipe/my-example-container-recipe/1.x.x", 
    #       latest_minor_version_arn: "arn:aws:imagebuilder:us-west-2:111122223333:container-recipe/my-example-container-recipe/1.0.x", 
    #       latest_patch_version_arn: "arn:aws:imagebuilder:us-west-2:111122223333:container-recipe/my-example-container-recipe/1.0.0", 
    #       latest_version_arn: "arn:aws:imagebuilder:us-west-2:111122223333:container-recipe/my-example-container-recipe/x.x.x", 
    #     }, 
    #     request_id: "20b16948-45a4-4b3a-9a17-d54779847365", 
    #   }
    #
    # @example Example: Create a container recipe with a custom build instance configuration
    #
    #   # The following example creates a container recipe that customizes the Amazon EC2 instance that builds the container
    #   # image. The build instance launches from an Amazon ECS-optimized instance image and uses a 40 GiB gp3 volume.
    #
    #   resp = client.create_container_recipe({
    #     name: "my-example-container-recipe", 
    #     client_token: "a1b2c3d4-5678-90ab-cdef-EXAMPLE40404", 
    #     components: [
    #       {
    #         component_arn: "arn:aws:imagebuilder:us-west-2:111122223333:component/my-example-container-component/1.0.0/1", 
    #       }, 
    #     ], 
    #     container_type: "DOCKER", 
    #     description: "A container recipe that builds on an ECS-optimized instance image with a larger build volume", 
    #     dockerfile_template_data: "FROM {{{ imagebuilder:parentImage }}}\n{{{ imagebuilder:environments }}}\n{{{ imagebuilder:components }}}\n", 
    #     instance_configuration: {
    #       block_device_mappings: [
    #         {
    #           device_name: "/dev/xvda", 
    #           ebs: {
    #             delete_on_termination: true, 
    #             volume_size: 40, 
    #             volume_type: "gp3", 
    #           }, 
    #         }, 
    #       ], 
    #       image: "ami-1234567890abcdef0", 
    #     }, 
    #     parent_image: "amazonlinux:latest", 
    #     semantic_version: "1.1.0", 
    #     target_repository: {
    #       repository_name: "my-example-container-repo", 
    #       service: "ECR", 
    #     }, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     client_token: "a1b2c3d4-5678-90ab-cdef-EXAMPLE40404", 
    #     container_recipe_arn: "arn:aws:imagebuilder:us-west-2:111122223333:container-recipe/my-example-container-recipe/1.1.0", 
    #     latest_version_references: {
    #       latest_major_version_arn: "arn:aws:imagebuilder:us-west-2:111122223333:container-recipe/my-example-container-recipe/1.x.x", 
    #       latest_minor_version_arn: "arn:aws:imagebuilder:us-west-2:111122223333:container-recipe/my-example-container-recipe/1.1.x", 
    #       latest_patch_version_arn: "arn:aws:imagebuilder:us-west-2:111122223333:container-recipe/my-example-container-recipe/1.1.0", 
    #       latest_version_arn: "arn:aws:imagebuilder:us-west-2:111122223333:container-recipe/my-example-container-recipe/x.x.x", 
    #     }, 
    #     request_id: "4b6fc7f3-5b6b-4086-858e-22d4c7f9a37f", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_container_recipe({
    #     container_type: "DOCKER", # required, accepts DOCKER
    #     name: "ResourceName", # required
    #     description: "NonEmptyString",
    #     semantic_version: "WildcardVersionNumber", # required
    #     components: [
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
    #     dry_run: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.request_id #=> String
    #   resp.client_token #=> String
    #   resp.container_recipe_arn #=> String
    #   resp.latest_version_references.latest_version_arn #=> String
    #   resp.latest_version_references.latest_major_version_arn #=> String
    #   resp.latest_version_references.latest_minor_version_arn #=> String
    #   resp.latest_version_references.latest_patch_version_arn #=> String
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
    # define and configure the outputs for your images, including the target
    # Regions, accounts, and settings for each Region.
    #
    # @option params [required, String] :name
    #   The name of the distribution configuration. Distribution configuration
    #   names must be unique to your account in each Amazon Web Services
    #   Region. Image Builder generates the distribution configuration ARN
    #   from a normalized form of the name, so names that differ only in case,
    #   spaces, or underscores count as the same name.
    #
    # @option params [String] :description
    #   The description of the distribution configuration.
    #
    # @option params [required, Array<Types::Distribution>] :distributions
    #   The distribution settings for the configuration. Each entry defines
    #   how output images are distributed in one target Amazon Web Services
    #   Region. A Region can appear at most once in the list.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags of the distribution configuration.
    #
    # @option params [required, String] :client_token
    #   A unique, case-sensitive identifier you provide to ensure that the
    #   operation runs no more than one time. If you retry a request with the
    #   same client token, Image Builder returns the original response without
    #   running the operation again. For more information, see [Ensuring
    #   idempotency][1] in the *Amazon EC2 API Reference*.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html
    #
    # @option params [Boolean] :dry_run
    #   Validates the required permissions and request parameters without
    #   performing the operation. If validation succeeds, the operation
    #   returns a `DryRunOperationException` error response.
    #
    # @return [Types::CreateDistributionConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDistributionConfigurationResponse#request_id #request_id} => String
    #   * {Types::CreateDistributionConfigurationResponse#client_token #client_token} => String
    #   * {Types::CreateDistributionConfigurationResponse#distribution_configuration_arn #distribution_configuration_arn} => String
    #
    #
    # @example Example: Create a distribution configuration
    #
    #   # The following example creates a distribution configuration that distributes the output AMI to two Regions. The AMI name
    #   # includes the build date, so that repeated builds create unique AMI names.
    #
    #   resp = client.create_distribution_configuration({
    #     name: "my-example-distribution", 
    #     client_token: "a1b2c3d4-5678-90ab-cdef-EXAMPLE44444", 
    #     description: "Copies the output AMI to a second Region", 
    #     distributions: [
    #       {
    #         ami_distribution_configuration: {
    #           name: "my-example-image-{{ imagebuilder:buildDate }}", 
    #         }, 
    #         region: "us-west-2", 
    #       }, 
    #       {
    #         ami_distribution_configuration: {
    #           name: "my-example-image-{{ imagebuilder:buildDate }}", 
    #         }, 
    #         region: "us-east-1", 
    #       }, 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     client_token: "a1b2c3d4-5678-90ab-cdef-EXAMPLE44444", 
    #     distribution_configuration_arn: "arn:aws:imagebuilder:us-west-2:111122223333:distribution-configuration/my-example-distribution", 
    #     request_id: "ca5312ad-a273-4c8c-817e-042941a5762d", 
    #   }
    #
    # @example Example: Create a distribution configuration with launch permissions and a launch template update
    #
    #   # The following example creates a distribution configuration that distributes the output AMI to two Regions. In us-east-1,
    #   # it shares the AMI with another AWS account. In us-west-2, it sets the new AMI as the default version of your launch
    #   # template.
    #
    #   resp = client.create_distribution_configuration({
    #     name: "my-example-distribution", 
    #     client_token: "a1b2c3d4-5678-90ab-cdef-EXAMPLE56789", 
    #     description: "Distributes the output AMI to two Regions and shares it with another account", 
    #     distributions: [
    #       {
    #         ami_distribution_configuration: {
    #           name: "my-example-image-{{ imagebuilder:buildDate }}", 
    #         }, 
    #         launch_template_configurations: [
    #           {
    #             launch_template_id: "lt-1234567890abcdef0", 
    #             set_default_version: true, 
    #           }, 
    #         ], 
    #         region: "us-west-2", 
    #       }, 
    #       {
    #         ami_distribution_configuration: {
    #           name: "my-example-image-{{ imagebuilder:buildDate }}", 
    #           launch_permission: {
    #             user_ids: [
    #               "444455556666", 
    #             ], 
    #           }, 
    #         }, 
    #         region: "us-east-1", 
    #       }, 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     client_token: "a1b2c3d4-5678-90ab-cdef-EXAMPLE56789", 
    #     distribution_configuration_arn: "arn:aws:imagebuilder:us-west-2:111122223333:distribution-configuration/my-example-distribution", 
    #     request_id: "13c97ae8-8e39-4e12-af78-25e70def0933", 
    #   }
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
    #     dry_run: false,
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

    # Creates a new image along with all configured output resources defined
    # in the distribution configuration. You must specify exactly one recipe
    # for your image, using either a `containerRecipeArn` or an
    # `imageRecipeArn`.
    #
    # The response returns as soon as Image Builder creates the new image
    # resource. The image build process runs asynchronously. To check its
    # progress, call [GetImage][1] and check the image status.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/imagebuilder/latest/APIReference/API_GetImage.html
    #
    # @option params [String] :image_recipe_arn
    #   The Amazon Resource Name (ARN) of the image recipe that defines how
    #   images are configured, tested, and assessed. You must specify either
    #   this property or `containerRecipeArn`, but not both.
    #
    # @option params [String] :container_recipe_arn
    #   The Amazon Resource Name (ARN) of the container recipe that defines
    #   how images are configured and tested. You must specify either this
    #   property or `imageRecipeArn`, but not both.
    #
    # @option params [String] :distribution_configuration_arn
    #   The Amazon Resource Name (ARN) of the distribution configuration that
    #   defines and configures the outputs of the image build. If you don't
    #   specify a distribution configuration, Image Builder creates the output
    #   image only in the account and Amazon Web Services Region where the
    #   build runs.
    #
    # @option params [required, String] :infrastructure_configuration_arn
    #   The Amazon Resource Name (ARN) of the infrastructure configuration
    #   that defines the environment in which your image will be built and
    #   tested.
    #
    # @option params [Types::ImageTestsConfiguration] :image_tests_configuration
    #   Settings that determine whether Image Builder runs tests on the image
    #   after building it. Image tests are enabled by default.
    #
    # @option params [Boolean] :enhanced_image_metadata_enabled
    #   Specifies whether to collect additional information about the image
    #   being created, including the operating system (OS) version and package
    #   list. Defaults to `true`.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags of the image.
    #
    # @option params [required, String] :client_token
    #   A unique, case-sensitive identifier you provide to ensure that the
    #   operation runs no more than one time. If you retry a request with the
    #   same client token, Image Builder returns the original response without
    #   running the operation again. For more information, see [Ensuring
    #   idempotency][1] in the *Amazon EC2 API Reference*.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html
    #
    # @option params [Types::ImageScanningConfiguration] :image_scanning_configuration
    #   Settings for vulnerability scans that Amazon Inspector runs during
    #   image creation. For AMI output, Amazon Inspector scans the test
    #   instance. For container output, Amazon Inspector scans the container
    #   image that Image Builder pushes to the Amazon ECR repository specified
    #   in `ecrConfiguration`.
    #
    # @option params [Array<Types::WorkflowConfiguration>] :workflows
    #   The array of workflow configuration objects for the build. If you
    #   specify workflows, they replace the default workflows that Image
    #   Builder otherwise runs for the build, and you must also provide an
    #   `executionRole`.
    #
    # @option params [String] :execution_role
    #   The name or Amazon Resource Name (ARN) for the IAM role you create
    #   that grants Image Builder access to perform workflow actions. This
    #   property is required if you specify `workflows`. If you don't provide
    #   a role, Image Builder uses the Image Builder service-linked role in
    #   your account, and creates it if it doesn't exist.
    #
    # @option params [Types::ImageLoggingConfiguration] :logging_configuration
    #   The CloudWatch Logs log group where Image Builder sends the image
    #   build logs. If you specify a log group name outside of the
    #   `/aws/imagebuilder/` namespace, you must also provide an
    #   `executionRole` that has permission to write to that log group.
    #
    # @return [Types::CreateImageResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateImageResponse#request_id #request_id} => String
    #   * {Types::CreateImageResponse#client_token #client_token} => String
    #   * {Types::CreateImageResponse#image_build_version_arn #image_build_version_arn} => String
    #   * {Types::CreateImageResponse#latest_version_references #latest_version_references} => Types::LatestVersionReferences
    #
    #
    # @example Example: Create an image
    #
    #   # The following example creates a new image from the specified image recipe and infrastructure configuration.
    #
    #   resp = client.create_image({
    #     client_token: "a1b2c3d4-5678-90ab-cdef-EXAMPLEeeeee", 
    #     image_recipe_arn: "arn:aws:imagebuilder:us-west-2:111122223333:image-recipe/my-example-recipe/1.0.0", 
    #     infrastructure_configuration_arn: "arn:aws:imagebuilder:us-west-2:111122223333:infrastructure-configuration/my-example-infrastructure", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     client_token: "a1b2c3d4-5678-90ab-cdef-EXAMPLEeeeee", 
    #     image_build_version_arn: "arn:aws:imagebuilder:us-west-2:111122223333:image/my-example-recipe/1.0.0/1", 
    #     latest_version_references: {
    #       latest_major_version_arn: "arn:aws:imagebuilder:us-west-2:111122223333:image/my-example-recipe/1.x.x", 
    #       latest_minor_version_arn: "arn:aws:imagebuilder:us-west-2:111122223333:image/my-example-recipe/1.0.x", 
    #       latest_patch_version_arn: "arn:aws:imagebuilder:us-west-2:111122223333:image/my-example-recipe/1.0.0", 
    #       latest_version_arn: "arn:aws:imagebuilder:us-west-2:111122223333:image/my-example-recipe/x.x.x", 
    #     }, 
    #     request_id: "62e9b43f-a9fd-4272-89fb-ce6235d07ab4", 
    #   }
    #
    # @example Example: Create an image with custom build and parallel test workflows
    #
    #   # The following example creates an image that uses your custom build and test workflows. It uses the Image Builder
    #   # service-linked role as the execution role. Both test workflows are in the same parallel group, so they can run at the
    #   # same time after the build workflow completes.
    #
    #   resp = client.create_image({
    #     client_token: "a1b2c3d4-5678-90ab-cdef-EXAMPLE01234", 
    #     execution_role: "arn:aws:iam::111122223333:role/aws-service-role/imagebuilder.amazonaws.com/AWSServiceRoleForImageBuilder", 
    #     image_recipe_arn: "arn:aws:imagebuilder:us-west-2:111122223333:image-recipe/my-example-recipe/1.0.0", 
    #     infrastructure_configuration_arn: "arn:aws:imagebuilder:us-west-2:111122223333:infrastructure-configuration/my-example-infrastructure", 
    #     workflows: [
    #       {
    #         workflow_arn: "arn:aws:imagebuilder:us-west-2:111122223333:workflow/build/my-example-workflow/1.0.0/1", 
    #       }, 
    #       {
    #         parallel_group: "post-build-tests", 
    #         workflow_arn: "arn:aws:imagebuilder:us-west-2:111122223333:workflow/test/my-example-integration-tests/1.0.0/1", 
    #       }, 
    #       {
    #         parallel_group: "post-build-tests", 
    #         workflow_arn: "arn:aws:imagebuilder:us-west-2:111122223333:workflow/test/my-example-compliance-tests/1.0.0/1", 
    #       }, 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     client_token: "a1b2c3d4-5678-90ab-cdef-EXAMPLE01234", 
    #     image_build_version_arn: "arn:aws:imagebuilder:us-west-2:111122223333:image/my-example-recipe/1.0.0/1", 
    #     latest_version_references: {
    #       latest_major_version_arn: "arn:aws:imagebuilder:us-west-2:111122223333:image/my-example-recipe/1.x.x", 
    #       latest_minor_version_arn: "arn:aws:imagebuilder:us-west-2:111122223333:image/my-example-recipe/1.0.x", 
    #       latest_patch_version_arn: "arn:aws:imagebuilder:us-west-2:111122223333:image/my-example-recipe/1.0.0", 
    #       latest_version_arn: "arn:aws:imagebuilder:us-west-2:111122223333:image/my-example-recipe/x.x.x", 
    #     }, 
    #     request_id: "359f18b1-814f-4857-987f-924214970897", 
    #   }
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
    #   resp.latest_version_references.latest_version_arn #=> String
    #   resp.latest_version_references.latest_major_version_arn #=> String
    #   resp.latest_version_references.latest_minor_version_arn #=> String
    #   resp.latest_version_references.latest_patch_version_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/CreateImage AWS API Documentation
    #
    # @overload create_image(params = {})
    # @param [Hash] params ({})
    def create_image(params = {}, options = {})
      req = build_request(:create_image, params)
      req.send_request(options)
    end

    # Creates a new image pipeline. Use image pipelines to automate the
    # creation and distribution of images. You must specify exactly one
    # recipe for the pipeline, using either a `containerRecipeArn` or an
    # `imageRecipeArn`.
    #
    # @option params [required, String] :name
    #   The name of the image pipeline. Pipeline names must be unique to your
    #   account in each Amazon Web Services Region. Image Builder generates
    #   the pipeline ARN from a normalized form of the name, so names that
    #   differ only in case, spaces, or underscores count as the same name.
    #
    # @option params [String] :description
    #   The description of the image pipeline.
    #
    # @option params [String] :image_recipe_arn
    #   The Amazon Resource Name (ARN) of the image recipe that configures
    #   images created by this image pipeline. You must specify either this
    #   property or `containerRecipeArn`, but not both.
    #
    # @option params [String] :container_recipe_arn
    #   The Amazon Resource Name (ARN) of the container recipe that is used to
    #   configure images created by this container pipeline. You must specify
    #   either this property or `imageRecipeArn`, but not both.
    #
    # @option params [required, String] :infrastructure_configuration_arn
    #   The Amazon Resource Name (ARN) of the infrastructure configuration
    #   that builds images created by this image pipeline.
    #
    # @option params [String] :distribution_configuration_arn
    #   The Amazon Resource Name (ARN) of the distribution configuration that
    #   configures and distributes images created by this image pipeline.
    #
    # @option params [Types::ImageTestsConfiguration] :image_tests_configuration
    #   Specifies the test settings that Image Builder applies to images that
    #   this pipeline creates. If you don't provide test settings, Image
    #   Builder stores a default configuration with image tests enabled.
    #
    # @option params [Boolean] :enhanced_image_metadata_enabled
    #   Specifies whether to collect additional information about the image
    #   being created, including the operating system (OS) version and package
    #   list. Defaults to `true`.
    #
    # @option params [Types::Schedule] :schedule
    #   The schedule of the image pipeline. If you don't provide a schedule,
    #   the pipeline runs only when you call StartImagePipelineExecution.
    #
    # @option params [String] :status
    #   The status of the image pipeline. If you don't specify a status, it
    #   defaults to `ENABLED`. A disabled pipeline doesn't run on its
    #   schedule, but you can still start builds manually.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags of the image pipeline.
    #
    # @option params [Hash<String,String>] :image_tags
    #   The tags that Image Builder applies to the Image Builder image
    #   resource that this pipeline's scheduled executions create. These tags
    #   don't apply to the output AMI. To tag output AMIs, use `amiTags` in
    #   the pipeline's distribution configuration.
    #
    # @option params [required, String] :client_token
    #   A unique, case-sensitive identifier you provide to ensure that the
    #   operation runs no more than one time. If you retry a request with the
    #   same client token, Image Builder returns the original response without
    #   running the operation again. For more information, see [Ensuring
    #   idempotency][1] in the *Amazon EC2 API Reference*.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html
    #
    # @option params [Types::ImageScanningConfiguration] :image_scanning_configuration
    #   Contains settings for vulnerability scans that Amazon Inspector runs
    #   against the test instance during image creation.
    #
    # @option params [Array<Types::WorkflowConfiguration>] :workflows
    #   The array of workflow configuration objects for builds that this
    #   pipeline starts. You must also specify `executionRole` when you
    #   provide workflows.
    #
    # @option params [String] :execution_role
    #   The name or Amazon Resource Name (ARN) for the IAM role you create
    #   that grants Image Builder access to perform workflow actions.
    #
    # @option params [Types::PipelineLoggingConfiguration] :logging_configuration
    #   Specifies the logging configuration for the image pipeline. Use this
    #   to define custom CloudWatch Logs log groups for your pipeline
    #   execution logs and image build logs. The service manages log groups
    #   with names starting with `/aws/imagebuilder/` using the service-linked
    #   role. For custom log group names outside of this prefix, you must also
    #   provide an `executionRole`.
    #
    # @option params [Boolean] :dry_run
    #   Validates the required permissions and request parameters without
    #   performing the operation. If validation succeeds, the operation
    #   returns a `DryRunOperationException` error response.
    #
    # @return [Types::CreateImagePipelineResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateImagePipelineResponse#request_id #request_id} => String
    #   * {Types::CreateImagePipelineResponse#client_token #client_token} => String
    #   * {Types::CreateImagePipelineResponse#image_pipeline_arn #image_pipeline_arn} => String
    #
    #
    # @example Example: Create an image pipeline
    #
    #   # The following example creates a pipeline that builds a new image version every Sunday at 9:00 AM UTC, if the base image
    #   # or components have updates.
    #
    #   resp = client.create_image_pipeline({
    #     name: "my-example-pipeline", 
    #     client_token: "a1b2c3d4-5678-90ab-cdef-EXAMPLE55555", 
    #     description: "Builds a new version of my image every Sunday", 
    #     distribution_configuration_arn: "arn:aws:imagebuilder:us-west-2:111122223333:distribution-configuration/my-example-distribution", 
    #     image_recipe_arn: "arn:aws:imagebuilder:us-west-2:111122223333:image-recipe/my-example-recipe/1.0.0", 
    #     infrastructure_configuration_arn: "arn:aws:imagebuilder:us-west-2:111122223333:infrastructure-configuration/my-example-infrastructure", 
    #     schedule: {
    #       pipeline_execution_start_condition: "EXPRESSION_MATCH_AND_DEPENDENCY_UPDATES_AVAILABLE", 
    #       schedule_expression: "cron(0 9 ? * SUN *)", 
    #     }, 
    #     status: "ENABLED", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     client_token: "a1b2c3d4-5678-90ab-cdef-EXAMPLE55555", 
    #     image_pipeline_arn: "arn:aws:imagebuilder:us-west-2:111122223333:image-pipeline/my-example-pipeline", 
    #     request_id: "db0a9329-35ef-4b53-98d0-a34385e44e28", 
    #   }
    #
    # @example Example: Create an image pipeline with scanning, custom workflows, and an auto-disable policy
    #
    #   # The following example creates a pipeline that uses your custom build workflow and enables image scanning. The schedule
    #   # evaluates its cron expression in the America/Los_Angeles time zone. The auto-disable policy disables the pipeline after
    #   # 3 consecutive failed scheduled builds.
    #
    #   resp = client.create_image_pipeline({
    #     name: "my-example-pipeline", 
    #     client_token: "a1b2c3d4-5678-90ab-cdef-EXAMPLE30303", 
    #     description: "Builds a scanned image with my custom build workflow on Sunday mornings when dependency updates are available", 
    #     distribution_configuration_arn: "arn:aws:imagebuilder:us-west-2:111122223333:distribution-configuration/my-example-distribution", 
    #     execution_role: "arn:aws:iam::111122223333:role/aws-service-role/imagebuilder.amazonaws.com/AWSServiceRoleForImageBuilder", 
    #     image_recipe_arn: "arn:aws:imagebuilder:us-west-2:111122223333:image-recipe/my-example-recipe/1.1.0", 
    #     image_scanning_configuration: {
    #       image_scanning_enabled: true, 
    #     }, 
    #     infrastructure_configuration_arn: "arn:aws:imagebuilder:us-west-2:111122223333:infrastructure-configuration/my-example-infrastructure", 
    #     schedule: {
    #       auto_disable_policy: {
    #         failure_count: 3, 
    #       }, 
    #       pipeline_execution_start_condition: "EXPRESSION_MATCH_AND_DEPENDENCY_UPDATES_AVAILABLE", 
    #       schedule_expression: "cron(0 9 ? * SUN *)", 
    #       timezone: "America/Los_Angeles", 
    #     }, 
    #     status: "ENABLED", 
    #     workflows: [
    #       {
    #         workflow_arn: "arn:aws:imagebuilder:us-west-2:111122223333:workflow/build/my-example-workflow/1.0.0/1", 
    #       }, 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     client_token: "a1b2c3d4-5678-90ab-cdef-EXAMPLE30303", 
    #     image_pipeline_arn: "arn:aws:imagebuilder:us-west-2:111122223333:image-pipeline/my-example-pipeline", 
    #     request_id: "f8da3ec9-4b76-4aa3-817a-c35a90f59dca", 
    #   }
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
    #     image_tags: {
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
    #     dry_run: false,
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
    #   The name of the image recipe. The recipe name, combined with the
    #   semantic version, must be unique to your account in each Amazon Web
    #   Services Region. Image Builder generates the image recipe ARN from a
    #   normalized form of the name, so names that differ only in case,
    #   spaces, or underscores count as the same name.
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
    #    **Assignment:** For the first three nodes, you can assign any positive
    #   integer value, including zero. The upper limit is 2^30-1, or
    #   1073741823, for each node. Image Builder automatically assigns the
    #   build number to the fourth node.
    #
    #    **Patterns:** You can use any numeric pattern that adheres to the
    #   assignment requirements for the nodes that you can assign. For
    #   example, you might choose a software version pattern, such as 1.0.0,
    #   or a date, such as 2021.01.01.
    #
    #    </note>
    #
    # @option params [Array<Types::ComponentConfiguration>] :components
    #   The components included in the image recipe. Components are optional.
    #   A recipe with no components bakes the base image without additional
    #   customization. You can specify each component only one time in a
    #   recipe. Components with a status of `DEPRECATED` or `DISABLED` can't
    #   be added to new recipes.
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
    #   you must have access to the AMI. The AMI must also be in the Region
    #   where you're creating the recipe.
    #
    # @option params [Array<Types::InstanceBlockDeviceMapping>] :block_device_mappings
    #   The block device mappings that Image Builder applies to the build
    #   instance and the output AMI. For example, you can override the size of
    #   the base image's root volume or attach additional EBS volumes.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags of the image recipe.
    #
    # @option params [String] :working_directory
    #   The working directory used during build and test workflows. If you
    #   don't specify a working directory, Image Builder uses `/tmp` for
    #   Linux and macOS build instances, and `C:/` for Windows build
    #   instances.
    #
    # @option params [Types::AdditionalInstanceConfiguration] :additional_instance_configuration
    #   The additional settings and launch scripts for your build instances.
    #
    # @option params [Hash<String,String>] :ami_tags
    #   Tags that are applied to the AMI that Image Builder creates during the
    #   Build phase prior to image distribution.
    #
    # @option params [Array<String>] :ami_watermarks
    #   The AMI watermark names to attach to the output AMI from this recipe.
    #   AMI watermarks are lineage markers. They automatically propagate to
    #   derivative AMIs when the source AMI is copied or distributed across
    #   Regions or accounts.
    #
    #   <note markdown="1"> AMI watermarks are supported only for image recipes. AMIs with
    #   watermarks cannot be made public.
    #
    #    </note>
    #
    # @option params [required, String] :client_token
    #   A unique, case-sensitive identifier you provide to ensure that the
    #   operation runs no more than one time. If you retry a request with the
    #   same client token, Image Builder returns the original response without
    #   running the operation again. For more information, see [Ensuring
    #   idempotency][1] in the *Amazon EC2 API Reference*.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html
    #
    # @option params [Boolean] :dry_run
    #   Validates the required permissions and request parameters without
    #   performing the operation. If validation succeeds, the operation
    #   returns a `DryRunOperationException` error response.
    #
    # @return [Types::CreateImageRecipeResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateImageRecipeResponse#request_id #request_id} => String
    #   * {Types::CreateImageRecipeResponse#client_token #client_token} => String
    #   * {Types::CreateImageRecipeResponse#image_recipe_arn #image_recipe_arn} => String
    #   * {Types::CreateImageRecipeResponse#latest_version_references #latest_version_references} => Types::LatestVersionReferences
    #
    #
    # @example Example: Create an image recipe
    #
    #   # The following example creates an image recipe that applies a custom component on top of the latest Amazon Linux 2023
    #   # base image.
    #
    #   resp = client.create_image_recipe({
    #     name: "my-example-recipe", 
    #     client_token: "a1b2c3d4-5678-90ab-cdef-EXAMPLE22222", 
    #     components: [
    #       {
    #         component_arn: "arn:aws:imagebuilder:us-west-2:111122223333:component/my-example-component/1.0.0/1", 
    #       }, 
    #     ], 
    #     description: "An image recipe that installs my application on Amazon Linux 2023", 
    #     parent_image: "arn:aws:imagebuilder:us-west-2:aws:image/amazon-linux-2023-x86/x.x.x", 
    #     semantic_version: "1.0.0", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     client_token: "a1b2c3d4-5678-90ab-cdef-EXAMPLE22222", 
    #     image_recipe_arn: "arn:aws:imagebuilder:us-west-2:111122223333:image-recipe/my-example-recipe/1.0.0", 
    #     latest_version_references: {
    #       latest_major_version_arn: "arn:aws:imagebuilder:us-west-2:111122223333:image-recipe/my-example-recipe/1.x.x", 
    #       latest_minor_version_arn: "arn:aws:imagebuilder:us-west-2:111122223333:image-recipe/my-example-recipe/1.0.x", 
    #       latest_patch_version_arn: "arn:aws:imagebuilder:us-west-2:111122223333:image-recipe/my-example-recipe/1.0.0", 
    #       latest_version_arn: "arn:aws:imagebuilder:us-west-2:111122223333:image-recipe/my-example-recipe/x.x.x", 
    #     }, 
    #     request_id: "89f4af2f-4f28-45e6-a9d8-abeba591df6a", 
    #   }
    #
    # @example Example: Create an image recipe with component parameters and block device mappings
    #
    #   # The following example creates an image recipe that configures its components and storage. The AppVersion component
    #   # parameter selects the application version to install. The block device mapping increases the root volume to an encrypted
    #   # 30 GiB gp3 volume.
    #
    #   resp = client.create_image_recipe({
    #     name: "my-example-recipe", 
    #     block_device_mappings: [
    #       {
    #         device_name: "/dev/xvda", 
    #         ebs: {
    #           delete_on_termination: true, 
    #           encrypted: true, 
    #           volume_size: 30, 
    #           volume_type: "gp3", 
    #         }, 
    #       }, 
    #     ], 
    #     client_token: "a1b2c3d4-5678-90ab-cdef-EXAMPLE20202", 
    #     components: [
    #       {
    #         component_arn: "arn:aws:imagebuilder:us-west-2:111122223333:component/my-example-parameterized-component/1.0.0/1", 
    #         parameters: [
    #           {
    #             name: "AppVersion", 
    #             value: [
    #               "2.5.0", 
    #             ], 
    #           }, 
    #         ], 
    #       }, 
    #     ], 
    #     description: "Installs a specific version of my application on Amazon Linux 2023 with a larger encrypted root volume", 
    #     parent_image: "arn:aws:imagebuilder:us-west-2:aws:image/amazon-linux-2023-x86/x.x.x", 
    #     semantic_version: "1.1.0", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     client_token: "a1b2c3d4-5678-90ab-cdef-EXAMPLE20202", 
    #     image_recipe_arn: "arn:aws:imagebuilder:us-west-2:111122223333:image-recipe/my-example-recipe/1.1.0", 
    #     latest_version_references: {
    #       latest_major_version_arn: "arn:aws:imagebuilder:us-west-2:111122223333:image-recipe/my-example-recipe/1.x.x", 
    #       latest_minor_version_arn: "arn:aws:imagebuilder:us-west-2:111122223333:image-recipe/my-example-recipe/1.1.x", 
    #       latest_patch_version_arn: "arn:aws:imagebuilder:us-west-2:111122223333:image-recipe/my-example-recipe/1.1.0", 
    #       latest_version_arn: "arn:aws:imagebuilder:us-west-2:111122223333:image-recipe/my-example-recipe/x.x.x", 
    #     }, 
    #     request_id: "e3bdc054-d12e-4578-a847-68a18da724ca", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_image_recipe({
    #     name: "ResourceName", # required
    #     description: "NonEmptyString",
    #     semantic_version: "WildcardVersionNumber", # required
    #     components: [
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
    #     ami_watermarks: ["AmiWatermarkName"],
    #     client_token: "ClientToken", # required
    #     dry_run: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.request_id #=> String
    #   resp.client_token #=> String
    #   resp.image_recipe_arn #=> String
    #   resp.latest_version_references.latest_version_arn #=> String
    #   resp.latest_version_references.latest_major_version_arn #=> String
    #   resp.latest_version_references.latest_minor_version_arn #=> String
    #   resp.latest_version_references.latest_patch_version_arn #=> String
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
    #   The name of the infrastructure configuration. Infrastructure
    #   configuration names must be unique to your account in each Amazon Web
    #   Services Region. Image Builder generates the infrastructure
    #   configuration ARN from a normalized form of the name, so names that
    #   differ only in case, spaces, or underscores count as the same name.
    #
    # @option params [String] :description
    #   The description of the infrastructure configuration.
    #
    # @option params [Array<String>] :instance_types
    #   The instance types of the infrastructure configuration. You can
    #   specify one or more instance types to use for this build. Image
    #   Builder picks one of these instance types based on availability. If
    #   you don't specify instance types, Image Builder selects compatible
    #   instance types automatically. If you specify a Dedicated Host, Image
    #   Builder uses only instance types that the host supports.
    #
    # @option params [required, String] :instance_profile_name
    #   The instance profile to associate with the instance used to customize
    #   your Amazon EC2 AMI. The instance profile must exist in your account.
    #
    # @option params [Array<String>] :security_group_ids
    #   The security group IDs to associate with the instance used to
    #   customize your Amazon EC2 AMI.
    #
    # @option params [String] :subnet_id
    #   The subnet ID in which to place the instance used to customize your
    #   Amazon EC2 AMI. If you specify `subnetId`, you must also specify one
    #   or more security group IDs in `securityGroupIds`. Otherwise, the
    #   request fails.
    #
    # @option params [Types::Logging] :logging
    #   The logging configuration of the infrastructure configuration. When
    #   you configure S3 logs, Image Builder writes logs from the build and
    #   test process to the specified bucket under the key prefix.
    #
    # @option params [String] :key_pair
    #   The key pair of the infrastructure configuration. You can use this to
    #   log on to and debug the instance used to create your image.
    #
    # @option params [Boolean] :terminate_instance_on_failure
    #   Specifies whether to terminate the instance on failure. Set to false
    #   if you want Image Builder to retain the instance used to configure
    #   your AMI if the build or test phase of your workflow fails. Defaults
    #   to `true`.
    #
    # @option params [String] :sns_topic_arn
    #   The Amazon Resource Name (ARN) of the SNS topic to which Image Builder
    #   sends image build event notifications. Specify a standard topic. Image
    #   Builder doesn't support FIFO topics. Image Builder validates the
    #   topic when you create or update the configuration. You must have
    #   permission to publish to the topic.
    #
    #   <note markdown="1"> EC2 Image Builder can't send notifications to SNS topics that are
    #   encrypted using keys from other accounts. If your SNS topic is
    #   encrypted, the key must be owned by the same account that owns your
    #   Image Builder resources.
    #
    #    </note>
    #
    # @option params [Hash<String,String>] :resource_tags
    #   The metadata tags to assign to the Amazon EC2 instance that Image
    #   Builder launches during the build process. Tags are formatted as key
    #   value pairs. Tag keys can't begin with `aws:` or match one of the
    #   following reserved keys: `CreatedBy`, `Ec2ImageBuilderArn`, `Name`, or
    #   `Tags`.
    #
    # @option params [Types::InstanceMetadataOptions] :instance_metadata_options
    #   The instance metadata service (IMDS) settings that Image Builder
    #   applies to the EC2 build and test instances it launches during image
    #   creation. If you don't set these options, the EC2 launch defaults for
    #   the instance apply. For more information about instance metadata
    #   options, see one of the following links:
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
    # @option params [Hash<String,String>] :tags
    #   The metadata tags to assign to the infrastructure configuration
    #   resource that Image Builder creates as output. Tags are formatted as
    #   key value pairs.
    #
    # @option params [Types::Placement] :placement
    #   The instance placement settings that define where the build and test
    #   instances that Image Builder launches during image creation run. These
    #   settings don't affect instances that you launch from the output
    #   image.
    #
    # @option params [required, String] :client_token
    #   A unique, case-sensitive identifier you provide to ensure that the
    #   operation runs no more than one time. If you retry a request with the
    #   same client token, Image Builder returns the original response without
    #   running the operation again. For more information, see [Ensuring
    #   idempotency][1] in the *Amazon EC2 API Reference*.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html
    #
    # @option params [Boolean] :dry_run
    #   Validates the required permissions and request parameters without
    #   performing the operation. If validation succeeds, the operation
    #   returns a `DryRunOperationException` error response.
    #
    # @return [Types::CreateInfrastructureConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateInfrastructureConfigurationResponse#request_id #request_id} => String
    #   * {Types::CreateInfrastructureConfigurationResponse#client_token #client_token} => String
    #   * {Types::CreateInfrastructureConfigurationResponse#infrastructure_configuration_arn #infrastructure_configuration_arn} => String
    #
    #
    # @example Example: Create an infrastructure configuration
    #
    #   # The following example creates an infrastructure configuration that gives Image Builder a choice of two instance types
    #   # for its build and test instances.
    #
    #   resp = client.create_infrastructure_configuration({
    #     name: "my-example-infrastructure", 
    #     client_token: "a1b2c3d4-5678-90ab-cdef-EXAMPLE33333", 
    #     description: "An infrastructure configuration for Amazon Linux builds", 
    #     instance_profile_name: "EC2InstanceProfileForImageBuilder", 
    #     instance_types: [
    #       "t3.medium", 
    #       "t3.large", 
    #     ], 
    #     terminate_instance_on_failure: true, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     client_token: "a1b2c3d4-5678-90ab-cdef-EXAMPLE33333", 
    #     infrastructure_configuration_arn: "arn:aws:imagebuilder:us-west-2:111122223333:infrastructure-configuration/my-example-infrastructure", 
    #     request_id: "67082698-415b-4d9f-8be0-84a58380b93f", 
    #   }
    #
    # @example Example: Create an infrastructure configuration with instance placement and metadata options
    #
    #   # The following example creates an infrastructure configuration. It places your build and test instances in a single
    #   # Availability Zone and requires IMDSv2 for instance metadata requests. It also applies resource tags to the resources
    #   # that Image Builder creates during the build.
    #
    #   resp = client.create_infrastructure_configuration({
    #     name: "my-example-infrastructure", 
    #     client_token: "a1b2c3d4-5678-90ab-cdef-EXAMPLE98765", 
    #     description: "An infrastructure configuration that pins build instances to one Availability Zone and requires IMDSv2", 
    #     instance_metadata_options: {
    #       http_put_response_hop_limit: 2, 
    #       http_tokens: "required", 
    #     }, 
    #     instance_profile_name: "my-example-instance-role", 
    #     placement: {
    #       availability_zone: "us-west-2a", 
    #     }, 
    #     resource_tags: {
    #       "CostCenter" => "12345", 
    #       "Environment" => "test", 
    #     }, 
    #     terminate_instance_on_failure: true, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     client_token: "a1b2c3d4-5678-90ab-cdef-EXAMPLE98765", 
    #     infrastructure_configuration_arn: "arn:aws:imagebuilder:us-west-2:111122223333:infrastructure-configuration/my-example-infrastructure", 
    #     request_id: "b96b54d8-daa6-4fdf-b25a-7b570bc2ab25", 
    #   }
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
    #     dry_run: false,
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

    # Creates a lifecycle policy resource.
    #
    # @option params [required, String] :name
    #   The name of the lifecycle policy to create. Policy names must be
    #   unique to your account in each Amazon Web Services Region. Image
    #   Builder generates the policy ARN from a normalized form of the name,
    #   so names that differ only in case, spaces, or underscores count as the
    #   same name. You can't change the name after creation.
    #
    # @option params [String] :description
    #   Optional description for the lifecycle policy.
    #
    # @option params [String] :status
    #   Indicates whether the lifecycle policy resource is enabled. If you
    #   don't specify a status, it defaults to `ENABLED`. Only enabled
    #   policies run on their schedule.
    #
    # @option params [required, String] :execution_role
    #   The name or Amazon Resource Name (ARN) for the IAM role you create
    #   that grants Image Builder access to run lifecycle actions. You must
    #   have permission to pass the role, and the role's trust policy must
    #   allow the Image Builder service principal to assume it.
    #
    # @option params [required, String] :resource_type
    #   The type of Image Builder resource that the lifecycle policy applies
    #   to. The resource type determines the allowed rule actions: policies
    #   for AMI-based Image Builder images support `DELETE`, `DEPRECATE`, and
    #   `DISABLE`, and policies for container-based Image Builder images
    #   support only `DELETE`. You can't change the resource type after
    #   creation.
    #
    # @option params [required, Array<Types::LifecyclePolicyDetail>] :policy_details
    #   Configuration details for the lifecycle policy rules. A policy can
    #   contain at most one rule per action type: one `DELETE`, one
    #   `DEPRECATE`, and one `DISABLE`.
    #
    # @option params [required, Types::LifecyclePolicyResourceSelection] :resource_selection
    #   Selection criteria for the resources that the lifecycle policy applies
    #   to. You must specify exactly one selection criteria: either recipes or
    #   a tag map, not both.
    #
    # @option params [Hash<String,String>] :tags
    #   Tags to apply to the lifecycle policy resource.
    #
    # @option params [required, String] :client_token
    #   A unique, case-sensitive identifier you provide to ensure that the
    #   operation runs no more than one time. If you retry a request with the
    #   same client token, Image Builder returns the original response without
    #   running the operation again. For more information, see [Ensuring
    #   idempotency][1] in the *Amazon EC2 API Reference*.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html
    #
    # @option params [Boolean] :dry_run
    #   Validates the required permissions and request parameters without
    #   performing the operation. If validation succeeds, the operation
    #   returns a `DryRunOperationException` error response.
    #
    # @return [Types::CreateLifecyclePolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateLifecyclePolicyResponse#client_token #client_token} => String
    #   * {Types::CreateLifecyclePolicyResponse#lifecycle_policy_arn #lifecycle_policy_arn} => String
    #
    #
    # @example Example: Create a lifecycle policy
    #
    #   # The following example creates a lifecycle policy that deletes AMI-based images six months after they were created,
    #   # selecting the images that match the specified resource tags.
    #
    #   resp = client.create_lifecycle_policy({
    #     name: "my-example-lifecycle-policy", 
    #     client_token: "a1b2c3d4-5678-90ab-cdef-EXAMPLE13579", 
    #     execution_role: "arn:aws:iam::111122223333:role/my-example-lifecycle-role", 
    #     policy_details: [
    #       {
    #         action: {
    #           type: "DELETE", 
    #         }, 
    #         filter: {
    #           type: "AGE", 
    #           value: 6, 
    #           unit: "MONTHS", 
    #         }, 
    #       }, 
    #     ], 
    #     resource_selection: {
    #       tag_map: {
    #         "Environment" => "test", 
    #       }, 
    #     }, 
    #     resource_type: "AMI_IMAGE", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     client_token: "a1b2c3d4-5678-90ab-cdef-EXAMPLE13579", 
    #     lifecycle_policy_arn: "arn:aws:imagebuilder:us-west-2:111122223333:lifecycle-policy/my-example-lifecycle-policy", 
    #   }
    #
    # @example Example: Create a lifecycle policy with exclusion rules
    #
    #   # The following example creates a lifecycle policy that deletes images created from the specified recipe version after six
    #   # months. The policy excludes images whose AMIs launched an instance within the last 30 days or are tagged to be retained.
    #
    #   resp = client.create_lifecycle_policy({
    #     name: "my-example-lifecycle-policy", 
    #     client_token: "a1b2c3d4-5678-90ab-cdef-EXAMPLE43210", 
    #     execution_role: "arn:aws:iam::111122223333:role/my-example-lifecycle-role", 
    #     policy_details: [
    #       {
    #         action: {
    #           type: "DELETE", 
    #         }, 
    #         exclusion_rules: {
    #           amis: {
    #             last_launched: {
    #               value: 30, 
    #               unit: "DAYS", 
    #             }, 
    #             tag_map: {
    #               "Retention" => "keep", 
    #             }, 
    #           }, 
    #         }, 
    #         filter: {
    #           type: "AGE", 
    #           value: 6, 
    #           unit: "MONTHS", 
    #         }, 
    #       }, 
    #     ], 
    #     resource_selection: {
    #       recipes: [
    #         {
    #           name: "my-example-recipe", 
    #           semantic_version: "1.0.0", 
    #         }, 
    #       ], 
    #     }, 
    #     resource_type: "AMI_IMAGE", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     client_token: "a1b2c3d4-5678-90ab-cdef-EXAMPLE43210", 
    #     lifecycle_policy_arn: "arn:aws:imagebuilder:us-west-2:111122223333:lifecycle-policy/my-example-lifecycle-policy", 
    #   }
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
    #           semantic_version: "WildcardVersionNumber", # required
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
    #     dry_run: false,
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

    # Creates a new workflow or a new version of an existing workflow. If a
    # workflow with the same name and semantic version already exists, and
    # your request changes its configuration, Image Builder creates a new
    # build version. If the configuration is identical to the latest build
    # version, the request fails because that workflow configuration already
    # exists.
    #
    # @option params [required, String] :name
    #   The name of the workflow to create. Image Builder generates the
    #   workflow ARN from a normalized form of the name, so names that differ
    #   only in case, spaces, or underscores count as the same name. If a
    #   workflow with the same name and semantic version already exists in
    #   your account in the same Amazon Web Services Region, the request
    #   creates a new build version for it. If the content is also identical
    #   to the latest build version, the request fails because the workflow
    #   already exists.
    #
    # @option params [required, String] :semantic_version
    #   The semantic version of this workflow resource. The semantic version
    #   syntax adheres to the following rules.
    #
    #   <note markdown="1"> The semantic version has four nodes:
    #   &lt;major&gt;.&lt;minor&gt;.&lt;patch&gt;/&lt;build&gt;. You can
    #   assign values for the first three, and can filter on all of them.
    #
    #    **Assignment:** For the first three nodes, you can assign any positive
    #   integer value, including zero. The upper limit is 2^30-1, or
    #   1073741823, for each node. Image Builder automatically assigns the
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
    #   The UTF-8 encoded YAML document content for the workflow, up to 16,000
    #   characters. For larger documents, store the document in Amazon S3 and
    #   specify the `uri` property instead. You must specify exactly one of
    #   the `data` or `uri` properties.
    #
    # @option params [String] :uri
    #   The `uri` of a YAML workflow document file stored in Amazon S3. This
    #   must be an S3 URL (`s3://bucket/key`), and you must have permission to
    #   access the S3 bucket it points to. A workflow document that you
    #   provide from Amazon S3 can be up to your service quota for workflow
    #   size.
    #
    #   Alternatively, you can specify the YAML document inline, using the
    #   workflow `data` property. You must specify exactly one of the `data`
    #   or `uri` properties.
    #
    # @option params [String] :kms_key_id
    #   The Amazon Resource Name (ARN) that uniquely identifies the KMS key
    #   used to encrypt this workflow resource. This can be either the Key ARN
    #   or the Alias ARN. For more information, see [Key identifiers
    #   (KeyId)][1] in the *Key Management Service Developer Guide*. If you
    #   don't specify a key, Image Builder encrypts the workflow document
    #   with a KMS key that Image Builder owns.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-id-key-ARN
    #
    # @option params [Hash<String,String>] :tags
    #   Tags that apply to the workflow resource.
    #
    # @option params [required, String] :client_token
    #   A unique, case-sensitive identifier you provide to ensure that the
    #   operation runs no more than one time. If you retry a request with the
    #   same client token, Image Builder returns the original response without
    #   running the operation again. For more information, see [Ensuring
    #   idempotency][1] in the *Amazon EC2 API Reference*.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html
    #
    # @option params [required, String] :type
    #   The image creation stage that this workflow applies to. Image Builder
    #   validates the workflow document steps against the stage you specify.
    #
    # @option params [Boolean] :dry_run
    #   Validates the required permissions and request parameters without
    #   performing the operation. If validation succeeds, the operation
    #   returns a `DryRunOperationException` error response.
    #
    # @return [Types::CreateWorkflowResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateWorkflowResponse#client_token #client_token} => String
    #   * {Types::CreateWorkflowResponse#workflow_build_version_arn #workflow_build_version_arn} => String
    #   * {Types::CreateWorkflowResponse#latest_version_references #latest_version_references} => Types::LatestVersionReferences
    #
    #
    # @example Example: Create a build workflow from an inline document
    #
    #   # The following example creates a build workflow from a YAML workflow document provided inline in the request.
    #
    #   resp = client.create_workflow({
    #     name: "my-example-workflow", 
    #     type: "BUILD", 
    #     client_token: "a1b2c3d4-5678-90ab-cdef-EXAMPLE54321", 
    #     data: "name: my-example-workflow\ndescription: Workflow to build an AMI\nschemaVersion: 1.0\nsteps:\n  - name: LaunchBuildInstance\n    action: LaunchInstance\n    onFailure: Abort\n    inputs:\n      waitFor: ssmAgent\n  - name: ApplyBuildComponents\n    action: ExecuteComponents\n    onFailure: Abort\n    inputs:\n      instanceId.$: $.stepOutputs.LaunchBuildInstance.instanceId\n  - name: CreateOutputAMI\n    action: CreateImage\n    onFailure: Abort\n    inputs:\n      instanceId.$: $.stepOutputs.LaunchBuildInstance.instanceId\n  - name: TerminateBuildInstance\n    action: TerminateInstance\n    onFailure: Continue\n    inputs:\n      instanceId.$: $.stepOutputs.LaunchBuildInstance.instanceId\n", 
    #     description: "Workflow to build an AMI", 
    #     semantic_version: "1.0.0", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     client_token: "a1b2c3d4-5678-90ab-cdef-EXAMPLE54321", 
    #     latest_version_references: {
    #       latest_major_version_arn: "arn:aws:imagebuilder:us-west-2:111122223333:workflow/build/my-example-workflow/1.x.x", 
    #       latest_minor_version_arn: "arn:aws:imagebuilder:us-west-2:111122223333:workflow/build/my-example-workflow/1.0.x", 
    #       latest_patch_version_arn: "arn:aws:imagebuilder:us-west-2:111122223333:workflow/build/my-example-workflow/1.0.0", 
    #       latest_version_arn: "arn:aws:imagebuilder:us-west-2:111122223333:workflow/build/my-example-workflow/x.x.x", 
    #     }, 
    #     workflow_build_version_arn: "arn:aws:imagebuilder:us-west-2:111122223333:workflow/build/my-example-workflow/1.0.0/1", 
    #   }
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
    #     dry_run: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.client_token #=> String
    #   resp.workflow_build_version_arn #=> String
    #   resp.latest_version_references.latest_version_arn #=> String
    #   resp.latest_version_references.latest_major_version_arn #=> String
    #   resp.latest_version_references.latest_minor_version_arn #=> String
    #   resp.latest_version_references.latest_patch_version_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/CreateWorkflow AWS API Documentation
    #
    # @overload create_workflow(params = {})
    # @param [Hash] params ({})
    def create_workflow(params = {}, options = {})
      req = build_request(:create_workflow, params)
      req.send_request(options)
    end

    # Deletes a component build version. The request fails with
    # `ResourceDependencyException` if an image recipe or container recipe
    # references this component version. It also fails if the component
    # build version is shared with other accounts.
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
    #
    # @example Example: Delete a component build version
    #
    #   # The following example deletes the specified component build version.
    #
    #   resp = client.delete_component({
    #     component_build_version_arn: "arn:aws:imagebuilder:us-west-2:111122223333:component/my-example-component/1.0.0/1", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     component_build_version_arn: "arn:aws:imagebuilder:us-west-2:111122223333:component/my-example-component/1.0.0/1", 
    #     request_id: "c75a1764-2ca3-4cb4-9ce9-6d49f87942b0", 
    #   }
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

    # Deletes a container recipe. The request fails with
    # `ResourceDependencyException` if the recipe is shared with other
    # accounts, or if an image pipeline references it.
    #
    # @option params [required, String] :container_recipe_arn
    #   The Amazon Resource Name (ARN) of the container recipe to delete.
    #
    # @return [Types::DeleteContainerRecipeResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteContainerRecipeResponse#request_id #request_id} => String
    #   * {Types::DeleteContainerRecipeResponse#container_recipe_arn #container_recipe_arn} => String
    #
    #
    # @example Example: Delete a container recipe
    #
    #   # The following example deletes the specified container recipe.
    #
    #   resp = client.delete_container_recipe({
    #     container_recipe_arn: "arn:aws:imagebuilder:us-west-2:111122223333:container-recipe/my-example-container-recipe/1.0.0", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     container_recipe_arn: "arn:aws:imagebuilder:us-west-2:111122223333:container-recipe/my-example-container-recipe/1.0.0", 
    #     request_id: "988e934a-b785-4705-aff1-4d9840a165aa", 
    #   }
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

    # Deletes a distribution configuration. You can't delete a
    # configuration that an image pipeline still references. The request
    # fails with `ResourceDependencyException`. Update or delete the
    # referencing pipelines first.
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
    #
    # @example Example: Delete a distribution configuration
    #
    #   # The following example deletes the specified distribution configuration.
    #
    #   resp = client.delete_distribution_configuration({
    #     distribution_configuration_arn: "arn:aws:imagebuilder:us-west-2:111122223333:distribution-configuration/my-example-distribution-configuration", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     distribution_configuration_arn: "arn:aws:imagebuilder:us-west-2:111122223333:distribution-configuration/my-example-distribution-configuration", 
    #     request_id: "2b752b77-2038-40f4-996a-0a6da1be5e92", 
    #   }
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
    # The request fails with `ResourceDependencyException` if the image is
    # shared with other accounts, or if other resources depend on it. It
    # also fails while the image build is still running. Cancel an
    # in-progress build with CancelImageCreation before you delete the
    # image.
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
    #
    # @example Example: Delete an image build version
    #
    #   # The following example deletes the Image Builder image record for the specified build version - EC2 AMIs or ECR container
    #   # images that the build created aren't removed.
    #
    #   resp = client.delete_image({
    #     image_build_version_arn: "arn:aws:imagebuilder:us-west-2:111122223333:image/my-example-recipe/1.0.0/1", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     image_build_version_arn: "arn:aws:imagebuilder:us-west-2:111122223333:image/my-example-recipe/1.0.0/1", 
    #     request_id: "fd45526c-ec37-4345-8843-329e4268e00e", 
    #   }
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

    # Deletes an image pipeline. Images that the pipeline created aren't
    # deleted - remove those separately with DeleteImage. You can delete a
    # pipeline while a build that it started is still running. The build
    # continues independently.
    #
    # @option params [required, String] :image_pipeline_arn
    #   The Amazon Resource Name (ARN) of the image pipeline to delete.
    #
    # @return [Types::DeleteImagePipelineResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteImagePipelineResponse#request_id #request_id} => String
    #   * {Types::DeleteImagePipelineResponse#image_pipeline_arn #image_pipeline_arn} => String
    #
    #
    # @example Example: Delete an image pipeline
    #
    #   # The following example deletes an image pipeline.
    #
    #   resp = client.delete_image_pipeline({
    #     image_pipeline_arn: "arn:aws:imagebuilder:us-west-2:111122223333:image-pipeline/my-example-pipeline", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     image_pipeline_arn: "arn:aws:imagebuilder:us-west-2:111122223333:image-pipeline/my-example-pipeline", 
    #     request_id: "0536e4e9-5331-493a-921e-e8f86d367043", 
    #   }
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
    #
    # @example Example: Delete an image recipe
    #
    #   # The following example deletes the specified image recipe version.
    #
    #   resp = client.delete_image_recipe({
    #     image_recipe_arn: "arn:aws:imagebuilder:us-west-2:111122223333:image-recipe/my-example-recipe/1.0.0", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     image_recipe_arn: "arn:aws:imagebuilder:us-west-2:111122223333:image-recipe/my-example-recipe/1.0.0", 
    #     request_id: "a27ae6de-0adc-4cbb-9705-a4b8751857b8", 
    #   }
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

    # Deletes an infrastructure configuration. You can't delete a
    # configuration that an image pipeline still references. The request
    # fails with `ResourceDependencyException`. Update or delete the
    # referencing pipelines first.
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
    #
    # @example Example: Delete an infrastructure configuration
    #
    #   # The following example deletes the infrastructure configuration with the specified ARN.
    #
    #   resp = client.delete_infrastructure_configuration({
    #     infrastructure_configuration_arn: "arn:aws:imagebuilder:us-west-2:111122223333:infrastructure-configuration/my-example-infrastructure", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     infrastructure_configuration_arn: "arn:aws:imagebuilder:us-west-2:111122223333:infrastructure-configuration/my-example-infrastructure", 
    #     request_id: "fbae57f4-59fc-48ab-a25e-c67b0d9b454c", 
    #   }
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

    # Deletes the specified lifecycle policy resource. Deleting the policy
    # removes its schedule, so no further lifecycle runs occur for that
    # policy. If a lifecycle execution is in progress for the policy, Image
    # Builder cancels it. Deletion doesn't revert actions that the policy
    # already applied to your resources.
    #
    # @option params [required, String] :lifecycle_policy_arn
    #   The Amazon Resource Name (ARN) of the lifecycle policy resource to
    #   delete.
    #
    # @return [Types::DeleteLifecyclePolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteLifecyclePolicyResponse#lifecycle_policy_arn #lifecycle_policy_arn} => String
    #
    #
    # @example Example: Delete a lifecycle policy
    #
    #   # The following example deletes the specified lifecycle policy.
    #
    #   resp = client.delete_lifecycle_policy({
    #     lifecycle_policy_arn: "arn:aws:imagebuilder:us-west-2:111122223333:lifecycle-policy/my-example-lifecycle-policy", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     lifecycle_policy_arn: "arn:aws:imagebuilder:us-west-2:111122223333:lifecycle-policy/my-example-lifecycle-policy", 
    #   }
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

    # Deletes a specific workflow resource. You can't delete a workflow
    # build version while an image pipeline references it. The request fails
    # with `ResourceDependencyException`.
    #
    # @option params [required, String] :workflow_build_version_arn
    #   The Amazon Resource Name (ARN) of the workflow resource to delete.
    #
    # @return [Types::DeleteWorkflowResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteWorkflowResponse#workflow_build_version_arn #workflow_build_version_arn} => String
    #
    #
    # @example Example: Delete a workflow build version
    #
    #   # The following example deletes the workflow build version that the ARN specifies.
    #
    #   resp = client.delete_workflow({
    #     workflow_build_version_arn: "arn:aws:imagebuilder:us-west-2:111122223333:workflow/build/my-example-workflow/1.0.0/1", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     workflow_build_version_arn: "arn:aws:imagebuilder:us-west-2:111122223333:workflow/build/my-example-workflow/1.0.0/1", 
    #   }
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

    # Distributes an existing AMI to target Regions and accounts without
    # running the full image build process. This operation only runs the
    # distribution phase on an image that has already been built.
    #
    # @option params [required, String] :source_image
    #   The source image to distribute. You can specify the source in any of
    #   the following formats:
    #
    #   * An AMI ID.
    #
    #   * An Amazon Web Services Systems Manager Parameter Store reference,
    #     prefixed by `ssm:`, followed by the parameter name or ARN.
    #
    #   * An Image Builder image Amazon Resource Name (ARN). An image version
    #     ARN resolves to the latest available build version.
    #
    #   Whichever format you use, the source must resolve to an AMI in the
    #   current Amazon Web Services Region.
    #
    # @option params [required, String] :distribution_configuration_arn
    #   The Amazon Resource Name (ARN) of the distribution configuration. The
    #   configuration defines target Regions, accounts, and AMI settings. The
    #   distribution configuration must be in the same Region as this
    #   operation.
    #
    # @option params [required, String] :execution_role
    #   The name or Amazon Resource Name (ARN) of the IAM role that Image
    #   Builder assumes to distribute the image.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags to apply to the new Image Builder image resource that this
    #   operation creates. To tag the output AMIs, use `amiTags` in the
    #   distribution configuration.
    #
    # @option params [required, String] :client_token
    #   A unique, case-sensitive identifier you provide to ensure that the
    #   operation runs no more than one time. If you retry a request with the
    #   same client token, Image Builder returns the original response without
    #   running the operation again. For more information, see [Ensuring
    #   idempotency][1] in the *Amazon EC2 API Reference*.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html
    #
    # @option params [Types::ImageLoggingConfiguration] :logging_configuration
    #   The logging configuration for the distribution.
    #
    # @return [Types::DistributeImageResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DistributeImageResponse#client_token #client_token} => String
    #   * {Types::DistributeImageResponse#image_build_version_arn #image_build_version_arn} => String
    #
    #
    # @example Example: Distribute an existing AMI
    #
    #   # The following example distributes an AMI that you own to the targets defined in the specified distribution
    #   # configuration. It returns the ARN of a new Image Builder image resource that you can use with GetImage to monitor
    #   # distribution progress.
    #
    #   resp = client.distribute_image({
    #     client_token: "a1b2c3d4-5678-90ab-cdef-EXAMPLE86420", 
    #     distribution_configuration_arn: "arn:aws:imagebuilder:us-west-2:111122223333:distribution-configuration/my-example-distribution-configuration", 
    #     execution_role: "arn:aws:iam::111122223333:role/aws-service-role/imagebuilder.amazonaws.com/AWSServiceRoleForImageBuilder", 
    #     source_image: "ami-1234567890abcdef0", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     client_token: "a1b2c3d4-5678-90ab-cdef-EXAMPLE86420", 
    #     image_build_version_arn: "arn:aws:imagebuilder:us-west-2:111122223333:image/my-example-source-ami/1.0.0/1", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.distribute_image({
    #     source_image: "NonEmptyString", # required
    #     distribution_configuration_arn: "DistributionConfigurationArn", # required
    #     execution_role: "RoleNameOrArn", # required
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     client_token: "ClientToken", # required
    #     logging_configuration: {
    #       log_group_name: "LogGroupName",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.client_token #=> String
    #   resp.image_build_version_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/DistributeImage AWS API Documentation
    #
    # @overload distribute_image(params = {})
    # @param [Hash] params ({})
    def distribute_image(params = {}, options = {})
      req = build_request(:distribute_image, params)
      req.send_request(options)
    end

    # Retrieves a component object.
    #
    # @option params [required, String] :component_build_version_arn
    #   The Amazon Resource Name (ARN) of the component that you want to get.
    #   You can specify a build version ARN, or a component version ARN. The
    #   version can use the `x` wildcard in trailing positions, for example
    #   `1.0.x` or `1.x.x`. Version ARNs resolve to the latest available
    #   matching component build version.
    #
    # @return [Types::GetComponentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetComponentResponse#request_id #request_id} => String
    #   * {Types::GetComponentResponse#component #component} => Types::Component
    #   * {Types::GetComponentResponse#latest_version_references #latest_version_references} => Types::LatestVersionReferences
    #
    #
    # @example Example: Get the details of a component build version
    #
    #   # The following example retrieves a component build version. The data field in the response contains the YAML document
    #   # that defines the component.
    #
    #   resp = client.get_component({
    #     component_build_version_arn: "arn:aws:imagebuilder:us-west-2:111122223333:component/my-example-component/1.0.0/1", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     component: {
    #       version: "1.0.0", 
    #       name: "my-example-component", 
    #       type: "BUILD", 
    #       arn: "arn:aws:imagebuilder:us-west-2:111122223333:component/my-example-component/1.0.0/1", 
    #       change_description: "Initial version", 
    #       data: "name: InstallMyApp\ndescription: Installs my application\nschemaVersion: 1.0\nphases:\n  - name: build\n    steps:\n      - name: InstallApp\n        action: ExecuteBash\n        inputs:\n          commands:\n            - sudo yum -y install my-app\n", 
    #       date_created: "2026-09-09T18:31:30.404Z", 
    #       description: "Installs the latest version of my application", 
    #       encrypted: true, 
    #       owner: "111122223333", 
    #       platform: "Linux", 
    #       state: {
    #         status: "ACTIVE", 
    #       }, 
    #     }, 
    #     latest_version_references: {
    #       latest_major_version_arn: "arn:aws:imagebuilder:us-west-2:111122223333:component/my-example-component/1.x.x", 
    #       latest_minor_version_arn: "arn:aws:imagebuilder:us-west-2:111122223333:component/my-example-component/1.0.x", 
    #       latest_patch_version_arn: "arn:aws:imagebuilder:us-west-2:111122223333:component/my-example-component/1.0.0", 
    #       latest_version_arn: "arn:aws:imagebuilder:us-west-2:111122223333:component/my-example-component/x.x.x", 
    #     }, 
    #     request_id: "f5401098-035f-4be2-9eee-784c388ed04b", 
    #   }
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
    #   resp.latest_version_references.latest_version_arn #=> String
    #   resp.latest_version_references.latest_major_version_arn #=> String
    #   resp.latest_version_references.latest_minor_version_arn #=> String
    #   resp.latest_version_references.latest_patch_version_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/GetComponent AWS API Documentation
    #
    # @overload get_component(params = {})
    # @param [Hash] params ({})
    def get_component(params = {}, options = {})
      req = build_request(:get_component, params)
      req.send_request(options)
    end

    # Retrieves a component policy.
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
    #
    # @example Example: Get the resource policy for a component
    #
    #   # The following example retrieves the resource policy that's applied to a component that the owner shared with another
    #   # account.
    #
    #   resp = client.get_component_policy({
    #     component_arn: "arn:aws:imagebuilder:us-west-2:111122223333:component/my-shared-component/1.0.0/1", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     policy: "{\"Version\": \"2012-10-17\", \"Statement\": [{\"Effect\": \"Allow\", \"Principal\": {\"AWS\": \"arn:aws:iam::444455556666:root\"}, \"Action\": [\"imagebuilder:GetComponent\", \"imagebuilder:ListComponents\"], \"Resource\": [\"arn:aws:imagebuilder:us-west-2:111122223333:component/my-shared-component/1.0.0/1\"]}]}", 
    #     request_id: "cb458998-6e6f-442a-9325-78c730b80895", 
    #   }
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
    #   * {Types::GetContainerRecipeResponse#latest_version_references #latest_version_references} => Types::LatestVersionReferences
    #
    #
    # @example Example: Get the details of a container recipe
    #
    #   # The following example retrieves the details of the specified container recipe.
    #
    #   resp = client.get_container_recipe({
    #     container_recipe_arn: "arn:aws:imagebuilder:us-west-2:111122223333:container-recipe/my-example-container-recipe/1.0.0", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     container_recipe: {
    #       version: "1.0.0", 
    #       name: "my-example-container-recipe", 
    #       arn: "arn:aws:imagebuilder:us-west-2:111122223333:container-recipe/my-example-container-recipe/1.0.0", 
    #       components: [
    #         {
    #           component_arn: "arn:aws:imagebuilder:us-west-2:111122223333:component/my-example-container-component/1.0.0/1", 
    #         }, 
    #       ], 
    #       container_type: "DOCKER", 
    #       date_created: "2026-09-09T19:32:53.983Z", 
    #       description: "A container recipe that installs my application on Amazon Linux", 
    #       dockerfile_template_data: "FROM {{{ imagebuilder:parentImage }}}\n{{{ imagebuilder:environments }}}\n{{{ imagebuilder:components }}}\n", 
    #       encrypted: true, 
    #       owner: "111122223333", 
    #       parent_image: "amazonlinux:latest", 
    #       platform: "Linux", 
    #       target_repository: {
    #         repository_name: "my-example-container-repo", 
    #         service: "ECR", 
    #       }, 
    #     }, 
    #     latest_version_references: {
    #       latest_major_version_arn: "arn:aws:imagebuilder:us-west-2:111122223333:container-recipe/my-example-container-recipe/1.x.x", 
    #       latest_minor_version_arn: "arn:aws:imagebuilder:us-west-2:111122223333:container-recipe/my-example-container-recipe/1.0.x", 
    #       latest_patch_version_arn: "arn:aws:imagebuilder:us-west-2:111122223333:container-recipe/my-example-container-recipe/1.0.0", 
    #       latest_version_arn: "arn:aws:imagebuilder:us-west-2:111122223333:container-recipe/my-example-container-recipe/x.x.x", 
    #     }, 
    #     request_id: "15b03ca7-050f-46d4-945e-00232cff6b19", 
    #   }
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
    #   resp.latest_version_references.latest_version_arn #=> String
    #   resp.latest_version_references.latest_major_version_arn #=> String
    #   resp.latest_version_references.latest_minor_version_arn #=> String
    #   resp.latest_version_references.latest_patch_version_arn #=> String
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
    #
    # @example Example: Get the policy attached to a container recipe
    #
    #   # The following example retrieves the resource policy for a container recipe that you shared with another AWS account. The
    #   # policy property contains the resource-based policy document as a JSON-encoded string.
    #
    #   resp = client.get_container_recipe_policy({
    #     container_recipe_arn: "arn:aws:imagebuilder:us-west-2:111122223333:container-recipe/my-example-container-recipe-shared/1.0.0", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     policy: "{\"Version\": \"2012-10-17\", \"Statement\": [{\"Sid\": \"AllowSharedAccountContainerRecipeAccess\", \"Effect\": \"Allow\", \"Principal\": {\"AWS\": \"arn:aws:iam::444455556666:root\"}, \"Action\": [\"imagebuilder:GetContainerRecipe\", \"imagebuilder:ListContainerRecipes\"], \"Resource\": \"arn:aws:imagebuilder:us-west-2:111122223333:container-recipe/my-example-container-recipe-shared/1.0.0\"}]}", 
    #     request_id: "1b8334a0-5ae7-4c3c-8092-5d589dab7a2b", 
    #   }
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

    # Retrieves a distribution configuration.
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
    #
    # @example Example: Get the details of a distribution configuration
    #
    #   # The following example retrieves a distribution configuration that distributes the output AMI to two Regions.
    #
    #   resp = client.get_distribution_configuration({
    #     distribution_configuration_arn: "arn:aws:imagebuilder:us-west-2:111122223333:distribution-configuration/my-example-distribution", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     distribution_configuration: {
    #       name: "my-example-distribution", 
    #       arn: "arn:aws:imagebuilder:us-west-2:111122223333:distribution-configuration/my-example-distribution", 
    #       date_created: "2026-09-09T19:37:37.231Z", 
    #       description: "Copies the output AMI to a second Region", 
    #       distributions: [
    #         {
    #           ami_distribution_configuration: {
    #             name: "my-example-image-{{ imagebuilder:buildDate }}", 
    #           }, 
    #           region: "us-west-2", 
    #         }, 
    #         {
    #           ami_distribution_configuration: {
    #             name: "my-example-image-{{ imagebuilder:buildDate }}", 
    #           }, 
    #           region: "us-east-1", 
    #         }, 
    #       ], 
    #       timeout_minutes: 720, 
    #     }, 
    #     request_id: "2d0a8dc0-99d5-4d7a-af7a-d1aeafd71c2e", 
    #   }
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

    # Retrieves an image.
    #
    # @option params [required, String] :image_build_version_arn
    #   The Amazon Resource Name (ARN) of the image that you want to get. You
    #   can specify a full build version ARN, or a version ARN with or without
    #   wildcards (`x.x.x`, `1.x.x`, or `1.0.x`). A version or wildcard ARN
    #   resolves to the latest matching build version that has reached
    #   `AVAILABLE` status. Builds that were later deprecated, disabled, or
    #   deleted don't resolve. To get an image in any other state, such as a
    #   failed or in-progress build, specify the full build version ARN.
    #
    # @return [Types::GetImageResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetImageResponse#request_id #request_id} => String
    #   * {Types::GetImageResponse#image #image} => Types::Image
    #   * {Types::GetImageResponse#latest_version_references #latest_version_references} => Types::LatestVersionReferences
    #
    #
    # @example Example: Check the status of an image build
    #
    #   # The following example retrieves an image build version to check its status while the build is running. The response is
    #   # shortened to show a subset of the fields that Image Builder returns.
    #
    #   resp = client.get_image({
    #     image_build_version_arn: "arn:aws:imagebuilder:us-west-2:111122223333:image/my-example-recipe/1.0.0/1", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     image: {
    #       version: "1.0.0/1", 
    #       name: "my-example-recipe", 
    #       type: "AMI", 
    #       arn: "arn:aws:imagebuilder:us-west-2:111122223333:image/my-example-recipe/1.0.0/1", 
    #       date_created: "2026-09-03T05:44:21.121Z", 
    #       enhanced_image_metadata_enabled: true, 
    #       platform: "Linux", 
    #       source_pipeline_arn: "arn:aws:imagebuilder:us-west-2:111122223333:image-pipeline/my-example-pipeline", 
    #       state: {
    #         status: "BUILDING", 
    #       }, 
    #     }, 
    #     request_id: "4be892f0-e1d1-47f9-8bc1-d08ec5dec640", 
    #   }
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
    #   resp.image.state.failure_context.image_status #=> String, one of "PENDING", "CREATING", "BUILDING", "TESTING", "DISTRIBUTING", "INTEGRATING", "AVAILABLE", "CANCELLED", "FAILED", "DEPRECATED", "DELETED", "DISABLED"
    #   resp.image.state.failure_context.workflow_execution_id #=> String
    #   resp.image.state.failure_context.workflow_arn #=> String
    #   resp.image.state.failure_context.step_execution_id #=> String
    #   resp.image.state.failure_context.failed_step #=> String
    #   resp.image.state.failure_context.component_failure.component_arn #=> String
    #   resp.image.state.failure_context.component_failure.phase_name #=> String
    #   resp.image.state.failure_context.component_failure.step_name #=> String
    #   resp.image.state.failure_context.component_failure.action #=> String
    #   resp.image.state.failure_context.component_failure.error_message #=> String
    #   resp.image.state.failure_context.distribution_failure.error_message #=> String
    #   resp.image.state.failure_context.distribution_failure.region_failures #=> Array
    #   resp.image.state.failure_context.distribution_failure.region_failures[0].region #=> String
    #   resp.image.state.failure_context.distribution_failure.region_failures[0].status #=> String, one of "FAILED", "CANCELLED", "TIMED_OUT"
    #   resp.image.state.failure_context.distribution_failure.region_failures[0].image_configuration_step #=> String, one of "ASSOCIATE_LICENSES", "UPDATE_LAUNCH_TEMPLATES", "PUT_SSM_PARAMETERS", "UPDATE_FAST_LAUNCH_CONFIGURATIONS", "EXPORT_AMI"
    #   resp.image.state.failure_context.distribution_failure.region_failures[0].error_message #=> String
    #   resp.image.state.failure_context.distribution_failure.region_failures[0].target_account_id #=> String
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
    #   resp.image.image_recipe.ami_watermarks #=> Array
    #   resp.image.image_recipe.ami_watermarks[0] #=> String
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
    #   resp.image.output_resources.amis[0].state.failure_context.image_status #=> String, one of "PENDING", "CREATING", "BUILDING", "TESTING", "DISTRIBUTING", "INTEGRATING", "AVAILABLE", "CANCELLED", "FAILED", "DEPRECATED", "DELETED", "DISABLED"
    #   resp.image.output_resources.amis[0].state.failure_context.workflow_execution_id #=> String
    #   resp.image.output_resources.amis[0].state.failure_context.workflow_arn #=> String
    #   resp.image.output_resources.amis[0].state.failure_context.step_execution_id #=> String
    #   resp.image.output_resources.amis[0].state.failure_context.failed_step #=> String
    #   resp.image.output_resources.amis[0].state.failure_context.component_failure.component_arn #=> String
    #   resp.image.output_resources.amis[0].state.failure_context.component_failure.phase_name #=> String
    #   resp.image.output_resources.amis[0].state.failure_context.component_failure.step_name #=> String
    #   resp.image.output_resources.amis[0].state.failure_context.component_failure.action #=> String
    #   resp.image.output_resources.amis[0].state.failure_context.component_failure.error_message #=> String
    #   resp.image.output_resources.amis[0].state.failure_context.distribution_failure.error_message #=> String
    #   resp.image.output_resources.amis[0].state.failure_context.distribution_failure.region_failures #=> Array
    #   resp.image.output_resources.amis[0].state.failure_context.distribution_failure.region_failures[0].region #=> String
    #   resp.image.output_resources.amis[0].state.failure_context.distribution_failure.region_failures[0].status #=> String, one of "FAILED", "CANCELLED", "TIMED_OUT"
    #   resp.image.output_resources.amis[0].state.failure_context.distribution_failure.region_failures[0].image_configuration_step #=> String, one of "ASSOCIATE_LICENSES", "UPDATE_LAUNCH_TEMPLATES", "PUT_SSM_PARAMETERS", "UPDATE_FAST_LAUNCH_CONFIGURATIONS", "EXPORT_AMI"
    #   resp.image.output_resources.amis[0].state.failure_context.distribution_failure.region_failures[0].error_message #=> String
    #   resp.image.output_resources.amis[0].state.failure_context.distribution_failure.region_failures[0].target_account_id #=> String
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
    #   resp.latest_version_references.latest_version_arn #=> String
    #   resp.latest_version_references.latest_major_version_arn #=> String
    #   resp.latest_version_references.latest_minor_version_arn #=> String
    #   resp.latest_version_references.latest_patch_version_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/GetImage AWS API Documentation
    #
    # @overload get_image(params = {})
    # @param [Hash] params ({})
    def get_image(params = {}, options = {})
      req = build_request(:get_image, params)
      req.send_request(options)
    end

    # Retrieves an image pipeline.
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
    #
    # @example Example: Get the details of an image pipeline
    #
    #   # The following example retrieves an image pipeline that builds a new image every Sunday, including the image tests
    #   # configuration and schedule start condition defaults that Image Builder applied at creation.
    #
    #   resp = client.get_image_pipeline({
    #     image_pipeline_arn: "arn:aws:imagebuilder:us-west-2:111122223333:image-pipeline/my-example-pipeline", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     image_pipeline: {
    #       name: "my-example-pipeline", 
    #       arn: "arn:aws:imagebuilder:us-west-2:111122223333:image-pipeline/my-example-pipeline", 
    #       date_created: "2026-09-09T19:38:26.574Z", 
    #       date_updated: "2026-09-09T19:38:26.574Z", 
    #       description: "Builds an Amazon Linux 2023 image every Sunday", 
    #       enhanced_image_metadata_enabled: true, 
    #       image_recipe_arn: "arn:aws:imagebuilder:us-west-2:111122223333:image-recipe/my-example-recipe/1.0.0", 
    #       image_tests_configuration: {
    #         image_tests_enabled: true, 
    #         timeout_minutes: 720, 
    #       }, 
    #       infrastructure_configuration_arn: "arn:aws:imagebuilder:us-west-2:111122223333:infrastructure-configuration/my-example-infrastructure", 
    #       platform: "Linux", 
    #       schedule: {
    #         pipeline_execution_start_condition: "EXPRESSION_MATCH_AND_DEPENDENCY_UPDATES_AVAILABLE", 
    #         schedule_expression: "cron(0 0 ? * SUN *)", 
    #       }, 
    #       status: "ENABLED", 
    #     }, 
    #     request_id: "b7e58d62-36dc-43a5-87ff-546e04cdabf1", 
    #   }
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
    #   resp.image_pipeline.image_tags #=> Hash
    #   resp.image_pipeline.image_tags["TagKey"] #=> String
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

    # Retrieves an image policy.
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
    #
    # @example Example: Retrieve the resource policy for an image
    #
    #   # The following example retrieves the resource policy for an image build version that was shared with account
    #   # 444455556666.
    #
    #   resp = client.get_image_policy({
    #     image_arn: "arn:aws:imagebuilder:us-west-2:111122223333:image/my-example-recipe/1.0.0/1", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     policy: "{\"Version\": \"2012-10-17\", \"Statement\": [{\"Effect\": \"Allow\", \"Principal\": {\"AWS\": \"arn:aws:iam::444455556666:root\"}, \"Action\": [\"imagebuilder:GetImage\", \"imagebuilder:ListImages\"], \"Resource\": [\"arn:aws:imagebuilder:us-west-2:111122223333:image/my-example-recipe/1.0.0/1\"]}]}", 
    #     request_id: "bc0c8348-c0d9-452a-af20-2640430df585", 
    #   }
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

    # Retrieves an image recipe.
    #
    # @option params [required, String] :image_recipe_arn
    #   The Amazon Resource Name (ARN) of the image recipe that you want to
    #   retrieve. You can use the `x` wildcard in trailing version positions
    #   to retrieve the latest matching version, for example `x.x.x` or
    #   `1.x.x`.
    #
    # @return [Types::GetImageRecipeResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetImageRecipeResponse#request_id #request_id} => String
    #   * {Types::GetImageRecipeResponse#image_recipe #image_recipe} => Types::ImageRecipe
    #   * {Types::GetImageRecipeResponse#latest_version_references #latest_version_references} => Types::LatestVersionReferences
    #
    #
    # @example Example: Get the details of an image recipe
    #
    #   # The following example retrieves the full definition of an image recipe, including the components it applies and the base
    #   # image it builds on.
    #
    #   resp = client.get_image_recipe({
    #     image_recipe_arn: "arn:aws:imagebuilder:us-west-2:111122223333:image-recipe/my-example-app-recipe/1.0.0", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     image_recipe: {
    #       version: "1.0.0", 
    #       name: "my-example-app-recipe", 
    #       arn: "arn:aws:imagebuilder:us-west-2:111122223333:image-recipe/my-example-app-recipe/1.0.0", 
    #       components: [
    #         {
    #           component_arn: "arn:aws:imagebuilder:us-west-2:111122223333:component/my-example-app/1.0.0/1", 
    #         }, 
    #       ], 
    #       date_created: "2026-09-09T19:30:21.183Z", 
    #       description: "An image recipe that installs my application on Amazon Linux 2023", 
    #       owner: "111122223333", 
    #       parent_image: "arn:aws:imagebuilder:us-west-2:aws:image/amazon-linux-2023-x86/x.x.x", 
    #       platform: "Linux", 
    #       working_directory: "/tmp", 
    #     }, 
    #     latest_version_references: {
    #       latest_major_version_arn: "arn:aws:imagebuilder:us-west-2:111122223333:image-recipe/my-example-app-recipe/1.x.x", 
    #       latest_minor_version_arn: "arn:aws:imagebuilder:us-west-2:111122223333:image-recipe/my-example-app-recipe/1.0.x", 
    #       latest_patch_version_arn: "arn:aws:imagebuilder:us-west-2:111122223333:image-recipe/my-example-app-recipe/1.0.0", 
    #       latest_version_arn: "arn:aws:imagebuilder:us-west-2:111122223333:image-recipe/my-example-app-recipe/x.x.x", 
    #     }, 
    #     request_id: "adb3ff9a-df84-4b4e-8ecf-11d38281ead7", 
    #   }
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
    #   resp.image_recipe.ami_watermarks #=> Array
    #   resp.image_recipe.ami_watermarks[0] #=> String
    #   resp.latest_version_references.latest_version_arn #=> String
    #   resp.latest_version_references.latest_major_version_arn #=> String
    #   resp.latest_version_references.latest_minor_version_arn #=> String
    #   resp.latest_version_references.latest_patch_version_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/GetImageRecipe AWS API Documentation
    #
    # @overload get_image_recipe(params = {})
    # @param [Hash] params ({})
    def get_image_recipe(params = {}, options = {})
      req = build_request(:get_image_recipe, params)
      req.send_request(options)
    end

    # Retrieves an image recipe policy.
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
    #
    # @example Example: Get the resource policy for an image recipe
    #
    #   # The following example retrieves the resource policy that's applied to the specified image recipe.
    #
    #   resp = client.get_image_recipe_policy({
    #     image_recipe_arn: "arn:aws:imagebuilder:us-west-2:111122223333:image-recipe/my-example-recipe/1.0.0", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     policy: "{\"Version\": \"2012-10-17\", \"Statement\": [{\"Effect\": \"Allow\", \"Principal\": {\"AWS\": \"arn:aws:iam::444455556666:root\"}, \"Action\": [\"imagebuilder:GetImageRecipe\", \"imagebuilder:ListImageRecipes\"], \"Resource\": \"arn:aws:imagebuilder:us-west-2:111122223333:image-recipe/my-example-recipe/1.0.0\"}]}", 
    #     request_id: "0cf42efc-4b2c-4ba3-b6e3-542a796fffaf", 
    #   }
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

    # Retrieves an infrastructure configuration.
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
    #
    # @example Example: Get the details of an infrastructure configuration
    #
    #   # The following example retrieves an infrastructure configuration that specifies the instance types, instance profile, and
    #   # instance metadata options that Image Builder uses for build and test instances.
    #
    #   resp = client.get_infrastructure_configuration({
    #     infrastructure_configuration_arn: "arn:aws:imagebuilder:us-west-2:111122223333:infrastructure-configuration/my-example-infrastructure-configuration", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     infrastructure_configuration: {
    #       name: "my-example-infrastructure-configuration", 
    #       arn: "arn:aws:imagebuilder:us-west-2:111122223333:infrastructure-configuration/my-example-infrastructure-configuration", 
    #       date_created: "2026-09-09T19:36:48.933Z", 
    #       description: "Infrastructure configuration for my application image builds", 
    #       instance_metadata_options: {
    #         http_put_response_hop_limit: 2, 
    #         http_tokens: "required", 
    #       }, 
    #       instance_profile_name: "EC2InstanceProfileForImageBuilder", 
    #       instance_types: [
    #         "m5.large", 
    #         "m5.xlarge", 
    #       ], 
    #       resource_tags: {
    #         "CostCenter" => "12345", 
    #       }, 
    #       tags: {
    #         "Environment" => "test", 
    #       }, 
    #       terminate_instance_on_failure: true, 
    #     }, 
    #     request_id: "7ba25cd0-0735-4f44-bc67-2f231e96503f", 
    #   }
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

    # Retrieves runtime information for a lifecycle execution – a single run
    # of lifecycle actions that a lifecycle policy or a
    # StartResourceStateUpdate request started.
    #
    # @option params [required, String] :lifecycle_execution_id
    #   The unique identifier for a runtime instance of the lifecycle policy.
    #
    # @return [Types::GetLifecycleExecutionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetLifecycleExecutionResponse#lifecycle_execution #lifecycle_execution} => Types::LifecycleExecution
    #
    #
    # @example Example: Get the details of a lifecycle execution
    #
    #   # The following example retrieves the runtime status of the specified lifecycle execution. If the execution was started by
    #   # StartResourceStateUpdate rather than a lifecycle policy run, the response doesn't include the lifecyclePolicyArn field.
    #
    #   resp = client.get_lifecycle_execution({
    #     lifecycle_execution_id: "lce-401aefc3-a829-46f6-8fc2-91497988a503", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     lifecycle_execution: {
    #       lifecycle_execution_id: "lce-401aefc3-a829-46f6-8fc2-91497988a503", 
    #       resources_impacted_summary: {
    #         has_impacted_resources: false, 
    #       }, 
    #       start_time: Time.parse("2026-09-09T21:42:29Z"), 
    #       state: {
    #         status: "IN_PROGRESS", 
    #       }, 
    #     }, 
    #   }
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

    # Retrieves details for the specified image lifecycle policy.
    #
    # @option params [required, String] :lifecycle_policy_arn
    #   Specifies the Amazon Resource Name (ARN) of the image lifecycle policy
    #   resource to get.
    #
    # @return [Types::GetLifecyclePolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetLifecyclePolicyResponse#lifecycle_policy #lifecycle_policy} => Types::LifecyclePolicy
    #
    #
    # @example Example: Get the details of a lifecycle policy
    #
    #   # The following example retrieves the full definition of the specified lifecycle policy.
    #
    #   resp = client.get_lifecycle_policy({
    #     lifecycle_policy_arn: "arn:aws:imagebuilder:us-west-2:111122223333:lifecycle-policy/my-example-lifecycle-policy", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     lifecycle_policy: {
    #       name: "my-example-lifecycle-policy", 
    #       arn: "arn:aws:imagebuilder:us-west-2:111122223333:lifecycle-policy/my-example-lifecycle-policy", 
    #       date_created: Time.parse("2026-09-09T19:34:38Z"), 
    #       description: "Deletes AMIs and snapshots for builds older than six months, keeping at least the five most recent", 
    #       execution_role: "arn:aws:iam::111122223333:role/my-example-lifecycle-role", 
    #       policy_details: [
    #         {
    #           action: {
    #             type: "DELETE", 
    #             include_resources: {
    #               amis: true, 
    #               snapshots: true, 
    #             }, 
    #           }, 
    #           filter: {
    #             type: "AGE", 
    #             value: 6, 
    #             retain_at_least: 5, 
    #             unit: "MONTHS", 
    #           }, 
    #         }, 
    #       ], 
    #       resource_selection: {
    #         tag_map: {
    #           "Environment" => "my-example-environment", 
    #         }, 
    #       }, 
    #       resource_type: "AMI_IMAGE", 
    #       status: "ENABLED", 
    #     }, 
    #   }
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

    # Verifies the subscription and performs resource dependency checks on
    # the requested Amazon Web Services Marketplace resource. The caller
    # must be entitled to the resource. For Amazon Web Services Marketplace
    # components, the response contains fields to download the components
    # and their artifacts.
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
    #   The Amazon S3 location of the component artifact to retrieve, in
    #   `s3://bucket/key` form.
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

    # Retrieves a workflow resource object.
    #
    # @option params [required, String] :workflow_build_version_arn
    #   The Amazon Resource Name (ARN) of the workflow resource that you want
    #   to get. You can specify a build version ARN, or a version ARN with or
    #   without wildcards (`x`) in its version segments. Image Builder
    #   resolves version and wildcard ARNs to the most recent matching build
    #   version.
    #
    # @return [Types::GetWorkflowResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetWorkflowResponse#workflow #workflow} => Types::Workflow
    #   * {Types::GetWorkflowResponse#latest_version_references #latest_version_references} => Types::LatestVersionReferences
    #
    #
    # @example Example: Get the details of a workflow build version
    #
    #   # The following example retrieves a workflow build version. The response includes the YAML workflow document in the data
    #   # field and the parameters that Image Builder extracted from it when the workflow was created.
    #
    #   resp = client.get_workflow({
    #     workflow_build_version_arn: "arn:aws:imagebuilder:us-west-2:111122223333:workflow/build/my-example-workflow/1.0.0/1", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     latest_version_references: {
    #       latest_major_version_arn: "arn:aws:imagebuilder:us-west-2:111122223333:workflow/build/my-example-workflow/1.x.x", 
    #       latest_minor_version_arn: "arn:aws:imagebuilder:us-west-2:111122223333:workflow/build/my-example-workflow/1.0.x", 
    #       latest_patch_version_arn: "arn:aws:imagebuilder:us-west-2:111122223333:workflow/build/my-example-workflow/1.0.0", 
    #       latest_version_arn: "arn:aws:imagebuilder:us-west-2:111122223333:workflow/build/my-example-workflow/x.x.x", 
    #     }, 
    #     workflow: {
    #       version: "1.0.0", 
    #       name: "my-example-workflow", 
    #       type: "BUILD", 
    #       arn: "arn:aws:imagebuilder:us-west-2:111122223333:workflow/build/my-example-workflow/1.0.0/1", 
    #       change_description: "Initial version", 
    #       data: "name: my-example-workflow\ndescription: Workflow to build an AMI, then wait for an external action before it completes\nschemaVersion: 1.0\n\nparameters:\n  - name: waitForActionAtEnd\n    type: boolean\n    default: true\n\nsteps:\n  - name: LaunchBuildInstance\n    action: LaunchInstance\n    onFailure: Abort\n    inputs:\n      waitFor: \"ssmAgent\"\n\n  - name: ApplyBuildComponents\n    action: ExecuteComponents\n    onFailure: Abort\n    inputs:\n      instanceId.$: \"$.stepOutputs.LaunchBuildInstance.instanceId\"\n\n  - name: CreateOutputAMI\n    action: CreateImage\n    onFailure: Abort\n    inputs:\n      instanceId.$: \"$.stepOutputs.LaunchBuildInstance.instanceId\"\n\n  - name: TerminateBuildInstance\n    action: TerminateInstance\n    onFailure: Continue\n    inputs:\n      instanceId.$: \"$.stepOutputs.LaunchBuildInstance.instanceId\"\n\n  - name: WaitForActionAtEnd\n    action: WaitForAction\n    if:\n      booleanEquals: true\n      value: \"$.parameters.waitForActionAtEnd\"\n", 
    #       date_created: "2026-09-09T19:55:55.731Z", 
    #       description: "Builds an AMI, and then waits for an external action before the workflow completes", 
    #       owner: "111122223333", 
    #       parameters: [
    #         {
    #           name: "waitForActionAtEnd", 
    #           type: "boolean", 
    #           default_value: [
    #             "true", 
    #           ], 
    #         }, 
    #       ], 
    #     }, 
    #   }
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
    #   resp.latest_version_references.latest_version_arn #=> String
    #   resp.latest_version_references.latest_major_version_arn #=> String
    #   resp.latest_version_references.latest_minor_version_arn #=> String
    #   resp.latest_version_references.latest_patch_version_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/GetWorkflow AWS API Documentation
    #
    # @overload get_workflow(params = {})
    # @param [Hash] params ({})
    def get_workflow(params = {}, options = {})
      req = build_request(:get_workflow, params)
      req.send_request(options)
    end

    # Retrieves runtime information for a specific runtime instance of the
    # workflow.
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
    #
    # @example Example: Get the runtime details for a workflow execution
    #
    #   # The following example retrieves runtime status and step counts for the build workflow that ran for an image build
    #   # version, using the workflow execution ID returned by ListWorkflowExecutions.
    #
    #   resp = client.get_workflow_execution({
    #     workflow_execution_id: "wf-165b1cb6-3a62-4618-a021-94ddcbe32908", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     type: "BUILD", 
    #     end_time: "2026-09-09T19:19:06.158Z", 
    #     image_build_version_arn: "arn:aws:imagebuilder:us-west-2:111122223333:image/my-example-recipe/1.0.0/1", 
    #     request_id: "cd69c813-51c3-4261-8e59-382a1af96f73", 
    #     start_time: "2026-09-09T19:12:23.175Z", 
    #     status: "COMPLETED", 
    #     total_step_count: 7, 
    #     total_steps_failed: 0, 
    #     total_steps_skipped: 2, 
    #     total_steps_succeeded: 5, 
    #     workflow_build_version_arn: "arn:aws:imagebuilder:us-west-2:aws:workflow/build/build-image/1.0.3/1", 
    #     workflow_execution_id: "wf-165b1cb6-3a62-4618-a021-94ddcbe32908", 
    #   }
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

    # Retrieves runtime information for a specific runtime instance of the
    # workflow step.
    #
    # @option params [required, String] :step_execution_id
    #   The unique identifier for the runtime instance of the workflow step
    #   that you want to get runtime details for. To get the identifiers for
    #   the steps that ran in a workflow, call ListWorkflowStepExecutions.
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
    #   * {Types::GetWorkflowStepExecutionResponse#attempt_number #attempt_number} => Integer
    #   * {Types::GetWorkflowStepExecutionResponse#max_attempts #max_attempts} => Integer
    #
    #
    # @example Example: Get the runtime details of a workflow step
    #
    #   # The following example retrieves runtime details for the step that launched the build instance during an image build,
    #   # with the step's input parameters and output values returned as JSON-encoded strings.
    #
    #   resp = client.get_workflow_step_execution({
    #     step_execution_id: "step-2e6fef0d-657c-4b7e-8706-ff24da9afa01", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     name: "LaunchBuildInstance", 
    #     action: "LaunchInstance", 
    #     end_time: "2026-09-09T19:14:50.822Z", 
    #     image_build_version_arn: "arn:aws:imagebuilder:us-west-2:111122223333:image/my-example-recipe/1.0.0/1", 
    #     inputs: "{\"waitFor\": \"ssmAgent\"}", 
    #     on_failure: "Abort", 
    #     outputs: "{\"instanceId\": \"i-1234567890abcdef0\"}", 
    #     request_id: "9ba63d27-9568-4ea3-bfed-6b1ad4c09200", 
    #     start_time: "2026-09-09T19:12:23.418Z", 
    #     status: "COMPLETED", 
    #     step_execution_id: "step-2e6fef0d-657c-4b7e-8706-ff24da9afa01", 
    #     timeout_seconds: 4500, 
    #     workflow_build_version_arn: "arn:aws:imagebuilder:us-west-2:aws:workflow/build/build-image/1.0.3/1", 
    #     workflow_execution_id: "wf-165b1cb6-3a62-4618-a021-94ddcbe32908", 
    #   }
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
    #   resp.attempt_number #=> Integer
    #   resp.max_attempts #=> Integer
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
    # For the `SHELL` format, Image Builder wraps your script in a component
    # document with a single step that runs the script.
    #
    # @option params [required, String] :name
    #   The name of the component. Image Builder generates the component ARN
    #   from a normalized form of the name, so names that differ only in case,
    #   spaces, or underscores count as the same name. If a component with the
    #   same name and semantic version already exists in your account in the
    #   same Amazon Web Services Region, the request creates a new build
    #   version for it. If the content is also identical to the latest build
    #   version, the request fails because the component already exists.
    #
    # @option params [required, String] :semantic_version
    #   The semantic version of the component. This version follows the
    #   semantic version syntax.
    #
    #   <note markdown="1"> The semantic version has four nodes:
    #   &lt;major&gt;.&lt;minor&gt;.&lt;patch&gt;/&lt;build&gt;. You can
    #   assign values for the first three, and can filter on all of them.
    #
    #    **Assignment:** For the first three nodes, you can assign any positive
    #   integer value, including zero. The upper limit is 2^30-1, or
    #   1073741823, for each node. Image Builder automatically assigns the
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
    #   The data of the component. For the `SHELL` format, this is the plain
    #   script content. You must specify exactly one of the `data` or `uri`
    #   properties. For scripts that exceed the inline length constraint, use
    #   the `uri` property.
    #
    # @option params [String] :uri
    #   The uri of the component. Must be an Amazon S3 URL and you must have
    #   permission to access the Amazon S3 bucket. If you use Amazon S3, you
    #   can specify component content up to your service quota. Either `data`
    #   or `uri` can be used to specify the data within the component.
    #
    # @option params [String] :kms_key_id
    #   The Amazon Resource Name (ARN) of the KMS key that is used to encrypt
    #   this component. This can be either the Key ARN or the Alias ARN. For
    #   more information, see [Key identifiers (KeyId)][1] in the *Key
    #   Management Service Developer Guide*. If you don't specify a key,
    #   Image Builder encrypts the component data with a KMS key that Image
    #   Builder owns.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-id-key-ARN
    #
    # @option params [Hash<String,String>] :tags
    #   The tags of the component.
    #
    # @option params [required, String] :client_token
    #   A unique, case-sensitive identifier you provide to ensure that the
    #   operation runs no more than one time. If you retry a request with the
    #   same client token, Image Builder returns the original response without
    #   running the operation again. For more information, see [Ensuring
    #   idempotency][1] in the *Amazon EC2 API Reference*.
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
    #
    # @example Example: Import a component from a shell script
    #
    #   # The following example imports a plain shell script as a Linux build component.
    #
    #   resp = client.import_component({
    #     name: "my-example-imported-component", 
    #     type: "BUILD", 
    #     client_token: "a1b2c3d4-5678-90ab-cdef-EXAMPLE88888", 
    #     data: "sudo yum update -y\nsudo yum -y install my-app\n", 
    #     description: "Installs my application from an imported shell script", 
    #     format: "SHELL", 
    #     platform: "Linux", 
    #     semantic_version: "1.0.0", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     client_token: "a1b2c3d4-5678-90ab-cdef-EXAMPLE88888", 
    #     component_build_version_arn: "arn:aws:imagebuilder:us-west-2:111122223333:component/my-example-imported-component/1.0.0/1", 
    #     request_id: "e62cb87f-e291-4fb2-9305-54a7878c3b99", 
    #   }
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

    # Imports a Windows operating system image from a verified Microsoft ISO
    # disk file. The following disk images are supported:
    #
    # * Windows 11 Enterprise
    #
    # ^
    #
    # The response returns as soon as Image Builder creates the new image
    # resource in the `PENDING` state. The conversion from ISO file to AMI
    # then runs asynchronously on an EC2 instance that Image Builder
    # launches with the specified infrastructure configuration.
    #
    # @option params [required, String] :name
    #   The name of the image resource that's created from the import. Image
    #   Builder generates the image ARN from a normalized form of the name, so
    #   names that differ only in case, spaces, or underscores count as the
    #   same name. If an image with the same name and semantic version already
    #   exists in your account in the same Amazon Web Services Region, the
    #   import creates a new build version for it.
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
    #   The operating system version for the imported image. The only
    #   supported value is `Microsoft Windows 11`.
    #
    # @option params [String] :execution_role
    #   The name or Amazon Resource Name (ARN) for the IAM role you create
    #   that grants Image Builder access to perform workflow actions to import
    #   an image from a Microsoft ISO file. If you don't provide a role,
    #   Image Builder uses the Image Builder service-linked role in your
    #   account, and creates it if it doesn't exist.
    #
    # @option params [required, String] :infrastructure_configuration_arn
    #   The Amazon Resource Name (ARN) of the infrastructure configuration
    #   resource that's used for launching the EC2 instance on which the ISO
    #   image is built.
    #
    # @option params [required, String] :uri
    #   The `uri` of the ISO disk file that's stored in Amazon S3, in
    #   `s3://bucket/key` format. The key must end with the `.iso`, `.ISO`, or
    #   `.Iso` extension, and the bucket must be owned by the account that
    #   makes the request.
    #
    # @option params [Types::ImageLoggingConfiguration] :logging_configuration
    #   The CloudWatch Logs log group where Image Builder sends the import
    #   logs. If you specify a log group name outside of the
    #   `/aws/imagebuilder/` namespace, you must also provide an
    #   `executionRole` that has permission to write to that log group.
    #
    # @option params [Hash<String,String>] :tags
    #   Tags that are attached to image resources created from the import.
    #
    # @option params [Types::RegisterImageOptions] :register_image_options
    #   Configures Secure Boot and UEFI settings for the imported image.
    #
    # @option params [Types::WindowsConfiguration] :windows_configuration
    #   Specifies Windows settings for ISO imports.
    #
    # @option params [required, String] :client_token
    #   A unique, case-sensitive identifier you provide to ensure that the
    #   operation runs no more than one time. If you retry a request with the
    #   same client token, Image Builder returns the original response without
    #   running the operation again. For more information, see [Ensuring
    #   idempotency][1] in the *Amazon EC2 API Reference*.
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
    #
    # @example Example: Import a Windows 11 ISO disk image
    #
    #   # The following example starts an image build that converts a Windows 11 ISO disk file stored in Amazon S3 into an AMI;
    #   # the imageBuildVersionArn in the response identifies the Image Builder image resource that tracks the build, not the
    #   # output AMI.
    #
    #   resp = client.import_disk_image({
    #     name: "my-example-imported-image", 
    #     client_token: "a1b2c3d4-5678-90ab-cdef-EXAMPLE12345", 
    #     infrastructure_configuration_arn: "arn:aws:imagebuilder:us-west-2:111122223333:infrastructure-configuration/my-example-infrastructure", 
    #     os_version: "Microsoft Windows 11", 
    #     platform: "Windows", 
    #     semantic_version: "1.0.0", 
    #     uri: "s3://amzn-s3-demo-bucket/Win11_23H2_English_x64.iso", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     client_token: "a1b2c3d4-5678-90ab-cdef-EXAMPLE12345", 
    #     image_build_version_arn: "arn:aws:imagebuilder:us-west-2:111122223333:image/my-example-imported-image/1.0.0/1", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.import_disk_image({
    #     name: "ResourceName", # required
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
    #     register_image_options: {
    #       secure_boot_enabled: false,
    #       uefi_data: "UefiData",
    #     },
    #     windows_configuration: {
    #       image_index: 1, # required
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

    # Creates an Image Builder image resource from an Amazon EC2 VM import
    # task. The response returns as soon as Image Builder creates the image
    # resource in the `PENDING` state. Image Builder then monitors the
    # import task asynchronously. When the task completes, Image Builder
    # records the AMI that it produced as the new image's output resource
    # and marks the image `AVAILABLE`. You can then use the imported image
    # as the base image for your recipes.
    #
    # To create the VM import task, use the Amazon EC2 API [ImportImage][1]
    # operation, or the [import-image][2] CLI command.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_ImportImage.html
    # [2]: https://docs.aws.amazon.com/cli/latest/reference/ec2/import-image.html
    #
    # @option params [required, String] :name
    #   The name of the base image that is created by the import process.
    #   Image Builder generates the image ARN from a normalized form of the
    #   name, so names that differ only in case, spaces, or underscores count
    #   as the same name. If an image with the same name and semantic version
    #   already exists in your account in the same Amazon Web Services Region,
    #   the import creates a new build version for it.
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
    #    **Assignment:** For the first three nodes, you can assign any positive
    #   integer value, including zero. The upper limit is 2^30-1, or
    #   1073741823, for each node. Image Builder automatically assigns the
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
    #   VM import process. The import task doesn't need to be complete when
    #   you call ImportVmImage - Image Builder monitors the task and finishes
    #   creating the image when the task completes.
    #
    # @option params [Types::ImageLoggingConfiguration] :logging_configuration
    #   The CloudWatch Logs log group where Image Builder sends the import
    #   logs. For ImportVmImage, the log group name must be within the
    #   `/aws/imagebuilder/` namespace.
    #
    # @option params [Hash<String,String>] :tags
    #   Tags that are attached to the import resources.
    #
    # @option params [required, String] :client_token
    #   A unique, case-sensitive identifier you provide to ensure that the
    #   operation runs no more than one time. If you retry a request with the
    #   same client token, Image Builder returns the original response without
    #   running the operation again. For more information, see [Ensuring
    #   idempotency][1] in the *Amazon EC2 API Reference*.
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
    #
    # @example Example: Import a virtual machine as an Image Builder image
    #
    #   # The following example registers the output of an EC2 VM Import/Export task (import-ami) as a new Image Builder image, so
    #   # you can use the imported virtual machine as a base image.
    #
    #   resp = client.import_vm_image({
    #     name: "my-example-imported-image", 
    #     client_token: "a1b2c3d4-5678-90ab-cdef-EXAMPLE00000", 
    #     os_version: "Amazon Linux 2", 
    #     platform: "Linux", 
    #     semantic_version: "1.0.0", 
    #     vm_import_task_id: "import-ami-1234567890abcdef0", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     client_token: "a1b2c3d4-5678-90ab-cdef-EXAMPLE00000", 
    #     image_arn: "arn:aws:imagebuilder:us-west-2:111122223333:image/my-example-imported-image/1.0.0/1", 
    #     request_id: "f8a1d0ce-42b7-4d6a-9b12-3c84a02e5f19", 
    #   }
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

    # Returns a list of component build versions for the specified component
    # version ARN. You can only list build versions for components that your
    # account owns. Deprecated build versions aren't included in the
    # results.
    #
    # @option params [String] :component_version_arn
    #   The component version ARN whose build versions you want to list. The
    #   ARN must specify an exact version, without a build number suffix. If
    #   you don't specify an ARN, Image Builder returns build versions for
    #   the components that your account owns.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return in a single request.
    #
    # @option params [String] :next_token
    #   A token to specify where to start paginating. Use the `nextToken`
    #   value from a previously truncated response.
    #
    # @return [Types::ListComponentBuildVersionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListComponentBuildVersionsResponse#request_id #request_id} => String
    #   * {Types::ListComponentBuildVersionsResponse#component_summary_list #component_summary_list} => Array&lt;Types::ComponentSummary&gt;
    #   * {Types::ListComponentBuildVersionsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: List the build versions of a component
    #
    #   # The following example lists the build versions that exist for version 1.0.0 of the specified component. The list returns
    #   # the most recent build version first.
    #
    #   resp = client.list_component_build_versions({
    #     component_version_arn: "arn:aws:imagebuilder:us-west-2:111122223333:component/my-example-component/1.0.0", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     component_summary_list: [
    #       {
    #         version: "1.0.0", 
    #         name: "my-example-component", 
    #         type: "BUILD", 
    #         arn: "arn:aws:imagebuilder:us-west-2:111122223333:component/my-example-component/1.0.0/2", 
    #         change_description: "Updated the install command to use dnf", 
    #         date_created: "2026-09-09T18:35:23.098Z", 
    #         description: "Installs the latest version of my application", 
    #         owner: "111122223333", 
    #         platform: "Linux", 
    #         state: {
    #           status: "ACTIVE", 
    #         }, 
    #         supported_os_versions: [
    #           "Amazon Linux 2023", 
    #         ], 
    #         tags: {
    #           "Environment" => "Production", 
    #         }, 
    #       }, 
    #       {
    #         version: "1.0.0", 
    #         name: "my-example-component", 
    #         type: "BUILD", 
    #         arn: "arn:aws:imagebuilder:us-west-2:111122223333:component/my-example-component/1.0.0/1", 
    #         change_description: "Initial version", 
    #         date_created: "2026-09-09T18:35:20.731Z", 
    #         description: "Installs the latest version of my application", 
    #         owner: "111122223333", 
    #         platform: "Linux", 
    #         state: {
    #           status: "ACTIVE", 
    #         }, 
    #         supported_os_versions: [
    #           "Amazon Linux 2023", 
    #         ], 
    #         tags: {
    #           "Environment" => "Production", 
    #         }, 
    #       }, 
    #     ], 
    #     request_id: "1d8693f0-26e1-42d7-ba35-d95ace1ce7e0", 
    #   }
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

    # Returns the list of components that you have access to. By default,
    # the response doesn't include components in the `DEPRECATED` state. To
    # list deprecated components, use the `status` filter with the value
    # `DEPRECATED`.
    #
    # <note markdown="1"> The semantic version has four nodes:
    # &lt;major&gt;.&lt;minor&gt;.&lt;patch&gt;/&lt;build&gt;. You can
    # assign values for the first three, and can filter on all of them.
    #
    #  **Filtering:** You can use wildcards (x) to specify the most recent
    # versions or nodes when selecting the base image or components for your
    # recipe. When you use a wildcard in any node, all nodes to the right of
    # the first wildcard must also be wildcards.
    #
    #  </note>
    #
    # @option params [String] :owner
    #   Filters results based on the type of owner for the component. By
    #   default, this request returns a list of components that your account
    #   owns. To see results for other types of owners, you can specify
    #   components that Amazon manages, components from the Amazon Web
    #   Services Marketplace, third party components, or components that other
    #   accounts have shared with you.
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
    #   * `productCodes`
    #
    #   * `status`
    #
    #   * `supportedOsVersion`
    #
    #   * `type`
    #
    #   * `version`
    #
    # @option params [Boolean] :by_name
    #   Specifies whether to return one entry per component name, with all
    #   versions of each component aggregated. Defaults to `false`, which
    #   returns one entry per component version. You can't combine this
    #   option with the `version` filter.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return in a single request.
    #
    # @option params [String] :next_token
    #   A token to specify where to start paginating. Use the `nextToken`
    #   value from a previously truncated response.
    #
    # @return [Types::ListComponentsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListComponentsResponse#request_id #request_id} => String
    #   * {Types::ListComponentsResponse#component_version_list #component_version_list} => Array&lt;Types::ComponentVersion&gt;
    #   * {Types::ListComponentsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: List components that you own
    #
    #   # The following example lists the component versions that your account owns, filtered to components for the Linux
    #   # platform.
    #
    #   resp = client.list_components({
    #     filters: [
    #       {
    #         name: "platform", 
    #         values: [
    #           "Linux", 
    #         ], 
    #       }, 
    #     ], 
    #     owner: "Self", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     component_version_list: [
    #       {
    #         version: "1.0.0", 
    #         name: "my-example-component", 
    #         type: "BUILD", 
    #         arn: "arn:aws:imagebuilder:us-west-2:111122223333:component/my-example-component/1.0.0", 
    #         date_created: "2026-09-09T18:31:49.661Z", 
    #         description: "Installs my example application", 
    #         owner: "111122223333", 
    #         platform: "Linux", 
    #         status: "ACTIVE", 
    #         supported_os_versions: [
    #           "Amazon Linux 2023", 
    #         ], 
    #       }, 
    #       {
    #         version: "1.0.0", 
    #         name: "my-example-imported-component", 
    #         type: "BUILD", 
    #         arn: "arn:aws:imagebuilder:us-west-2:111122223333:component/my-example-imported-component/1.0.0", 
    #         date_created: "2026-09-09T18:31:21.941Z", 
    #         description: "Installs my application from an imported shell script", 
    #         owner: "111122223333", 
    #         platform: "Linux", 
    #         status: "ACTIVE", 
    #       }, 
    #       {
    #         version: "1.0.0", 
    #         name: "my-example-test-component", 
    #         type: "TEST", 
    #         arn: "arn:aws:imagebuilder:us-west-2:111122223333:component/my-example-test-component/1.0.0", 
    #         date_created: "2026-09-09T18:31:52.888Z", 
    #         description: "Verifies that my example application is installed", 
    #         owner: "111122223333", 
    #         platform: "Linux", 
    #         status: "ACTIVE", 
    #       }, 
    #     ], 
    #     request_id: "fc51d989-ca0a-4ac7-9ca6-fb7786e70955", 
    #   }
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
    #   recipes belonging to your account. For container recipes, the valid
    #   owner values are `Self`, `Shared`, and `Amazon`.
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
    #   The maximum number of items to return in a single request.
    #
    # @option params [String] :next_token
    #   A token to specify where to start paginating. Use the `nextToken`
    #   value from a previously truncated response.
    #
    # @return [Types::ListContainerRecipesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListContainerRecipesResponse#request_id #request_id} => String
    #   * {Types::ListContainerRecipesResponse#container_recipe_summary_list #container_recipe_summary_list} => Array&lt;Types::ContainerRecipeSummary&gt;
    #   * {Types::ListContainerRecipesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: List the container recipes you own
    #
    #   # The following example lists the container recipes that you own.
    #
    #   resp = client.list_container_recipes({
    #     owner: "Self", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     container_recipe_summary_list: [
    #       {
    #         name: "my-example-container-recipe", 
    #         arn: "arn:aws:imagebuilder:us-west-2:111122223333:container-recipe/my-example-container-recipe/1.0.0", 
    #         container_type: "DOCKER", 
    #         date_created: "2026-09-09T19:31:26.363Z", 
    #         owner: "111122223333", 
    #         parent_image: "amazonlinux:latest", 
    #         platform: "Linux", 
    #       }, 
    #     ], 
    #     request_id: "883e6f0e-8883-4c1a-9710-791afb74be0d", 
    #   }
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
    #     next_token: "PaginationToken",
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
    #   The maximum number of items to return in a single request.
    #
    # @option params [String] :next_token
    #   A token to specify where to start paginating. Use the `nextToken`
    #   value from a previously truncated response.
    #
    # @return [Types::ListDistributionConfigurationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDistributionConfigurationsResponse#request_id #request_id} => String
    #   * {Types::ListDistributionConfigurationsResponse#distribution_configuration_summary_list #distribution_configuration_summary_list} => Array&lt;Types::DistributionConfigurationSummary&gt;
    #   * {Types::ListDistributionConfigurationsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: List distribution configurations that match a name filter
    #
    #   # The following example lists the distribution configurations whose name matches the filter value.
    #
    #   resp = client.list_distribution_configurations({
    #     filters: [
    #       {
    #         name: "name", 
    #         values: [
    #           "my-example-distribution-configuration", 
    #         ], 
    #       }, 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     distribution_configuration_summary_list: [
    #       {
    #         name: "my-example-distribution-configuration", 
    #         arn: "arn:aws:imagebuilder:us-west-2:111122223333:distribution-configuration/my-example-distribution-configuration", 
    #         date_created: "2026-09-09T21:09:02.581Z", 
    #         description: "Distributes AMIs to us-west-2", 
    #         regions: [
    #           "us-west-2", 
    #         ], 
    #       }, 
    #     ], 
    #     request_id: "1057325c-6b4a-4e16-ac6e-12f1d8fcc6f9", 
    #   }
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
    #   The Amazon Resource Name (ARN) of the image version whose build
    #   versions you want to retrieve. The ARN must specify an exact version
    #   (`<major>.<minor>.<patch>`) - wildcards aren't allowed. This
    #   parameter is optional. If you don't specify it, Image Builder returns
    #   build versions for all of the images in your account.
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
    #   The maximum number of items to return in a single request.
    #
    # @option params [String] :next_token
    #   A token to specify where to start paginating. Use the `nextToken`
    #   value from a previously truncated response.
    #
    # @return [Types::ListImageBuildVersionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListImageBuildVersionsResponse#request_id #request_id} => String
    #   * {Types::ListImageBuildVersionsResponse#image_summary_list #image_summary_list} => Array&lt;Types::ImageSummary&gt;
    #   * {Types::ListImageBuildVersionsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: List the build versions of an image
    #
    #   # The following example lists the build versions that exist for version 1.0.0 of the specified image, with the output AMI
    #   # that each build produced.
    #
    #   resp = client.list_image_build_versions({
    #     image_version_arn: "arn:aws:imagebuilder:us-west-2:111122223333:image/my-example-recipe/1.0.0", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     image_summary_list: [
    #       {
    #         version: "1.0.0/1", 
    #         name: "my-example-recipe", 
    #         type: "AMI", 
    #         arn: "arn:aws:imagebuilder:us-west-2:111122223333:image/my-example-recipe/1.0.0/1", 
    #         build_type: "USER_INITIATED", 
    #         date_created: "2026-09-09T19:12:18.677Z", 
    #         os_version: "Amazon Linux 2023", 
    #         output_resources: {
    #           amis: [
    #             {
    #               name: "my-example-recipe 2026-09-09T19-19-08.103311Z", 
    #               account_id: "111122223333", 
    #               image: "ami-1234567890abcdef0", 
    #               region: "us-west-2", 
    #             }, 
    #           ], 
    #         }, 
    #         owner: "111122223333", 
    #         platform: "Linux", 
    #         state: {
    #           status: "AVAILABLE", 
    #         }, 
    #       }, 
    #     ], 
    #     request_id: "b4808907-dcad-4951-ada5-dd151e93135a", 
    #   }
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
    #   resp.image_summary_list[0].state.failure_context.image_status #=> String, one of "PENDING", "CREATING", "BUILDING", "TESTING", "DISTRIBUTING", "INTEGRATING", "AVAILABLE", "CANCELLED", "FAILED", "DEPRECATED", "DELETED", "DISABLED"
    #   resp.image_summary_list[0].state.failure_context.workflow_execution_id #=> String
    #   resp.image_summary_list[0].state.failure_context.workflow_arn #=> String
    #   resp.image_summary_list[0].state.failure_context.step_execution_id #=> String
    #   resp.image_summary_list[0].state.failure_context.failed_step #=> String
    #   resp.image_summary_list[0].state.failure_context.component_failure.component_arn #=> String
    #   resp.image_summary_list[0].state.failure_context.component_failure.phase_name #=> String
    #   resp.image_summary_list[0].state.failure_context.component_failure.step_name #=> String
    #   resp.image_summary_list[0].state.failure_context.component_failure.action #=> String
    #   resp.image_summary_list[0].state.failure_context.component_failure.error_message #=> String
    #   resp.image_summary_list[0].state.failure_context.distribution_failure.error_message #=> String
    #   resp.image_summary_list[0].state.failure_context.distribution_failure.region_failures #=> Array
    #   resp.image_summary_list[0].state.failure_context.distribution_failure.region_failures[0].region #=> String
    #   resp.image_summary_list[0].state.failure_context.distribution_failure.region_failures[0].status #=> String, one of "FAILED", "CANCELLED", "TIMED_OUT"
    #   resp.image_summary_list[0].state.failure_context.distribution_failure.region_failures[0].image_configuration_step #=> String, one of "ASSOCIATE_LICENSES", "UPDATE_LAUNCH_TEMPLATES", "PUT_SSM_PARAMETERS", "UPDATE_FAST_LAUNCH_CONFIGURATIONS", "EXPORT_AMI"
    #   resp.image_summary_list[0].state.failure_context.distribution_failure.region_failures[0].error_message #=> String
    #   resp.image_summary_list[0].state.failure_context.distribution_failure.region_failures[0].target_account_id #=> String
    #   resp.image_summary_list[0].owner #=> String
    #   resp.image_summary_list[0].date_created #=> String
    #   resp.image_summary_list[0].output_resources.amis #=> Array
    #   resp.image_summary_list[0].output_resources.amis[0].region #=> String
    #   resp.image_summary_list[0].output_resources.amis[0].image #=> String
    #   resp.image_summary_list[0].output_resources.amis[0].name #=> String
    #   resp.image_summary_list[0].output_resources.amis[0].description #=> String
    #   resp.image_summary_list[0].output_resources.amis[0].state.status #=> String, one of "PENDING", "CREATING", "BUILDING", "TESTING", "DISTRIBUTING", "INTEGRATING", "AVAILABLE", "CANCELLED", "FAILED", "DEPRECATED", "DELETED", "DISABLED"
    #   resp.image_summary_list[0].output_resources.amis[0].state.reason #=> String
    #   resp.image_summary_list[0].output_resources.amis[0].state.failure_context.image_status #=> String, one of "PENDING", "CREATING", "BUILDING", "TESTING", "DISTRIBUTING", "INTEGRATING", "AVAILABLE", "CANCELLED", "FAILED", "DEPRECATED", "DELETED", "DISABLED"
    #   resp.image_summary_list[0].output_resources.amis[0].state.failure_context.workflow_execution_id #=> String
    #   resp.image_summary_list[0].output_resources.amis[0].state.failure_context.workflow_arn #=> String
    #   resp.image_summary_list[0].output_resources.amis[0].state.failure_context.step_execution_id #=> String
    #   resp.image_summary_list[0].output_resources.amis[0].state.failure_context.failed_step #=> String
    #   resp.image_summary_list[0].output_resources.amis[0].state.failure_context.component_failure.component_arn #=> String
    #   resp.image_summary_list[0].output_resources.amis[0].state.failure_context.component_failure.phase_name #=> String
    #   resp.image_summary_list[0].output_resources.amis[0].state.failure_context.component_failure.step_name #=> String
    #   resp.image_summary_list[0].output_resources.amis[0].state.failure_context.component_failure.action #=> String
    #   resp.image_summary_list[0].output_resources.amis[0].state.failure_context.component_failure.error_message #=> String
    #   resp.image_summary_list[0].output_resources.amis[0].state.failure_context.distribution_failure.error_message #=> String
    #   resp.image_summary_list[0].output_resources.amis[0].state.failure_context.distribution_failure.region_failures #=> Array
    #   resp.image_summary_list[0].output_resources.amis[0].state.failure_context.distribution_failure.region_failures[0].region #=> String
    #   resp.image_summary_list[0].output_resources.amis[0].state.failure_context.distribution_failure.region_failures[0].status #=> String, one of "FAILED", "CANCELLED", "TIMED_OUT"
    #   resp.image_summary_list[0].output_resources.amis[0].state.failure_context.distribution_failure.region_failures[0].image_configuration_step #=> String, one of "ASSOCIATE_LICENSES", "UPDATE_LAUNCH_TEMPLATES", "PUT_SSM_PARAMETERS", "UPDATE_FAST_LAUNCH_CONFIGURATIONS", "EXPORT_AMI"
    #   resp.image_summary_list[0].output_resources.amis[0].state.failure_context.distribution_failure.region_failures[0].error_message #=> String
    #   resp.image_summary_list[0].output_resources.amis[0].state.failure_context.distribution_failure.region_failures[0].target_account_id #=> String
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

    # Lists the packages that are associated with an image build version, as
    # determined by Amazon Web Services Systems Manager Inventory at build
    # time.
    #
    # @option params [required, String] :image_build_version_arn
    #   The Amazon Resource Name (ARN) of the image build version whose
    #   packages you want to list. The value must be a full build version ARN.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return in a single request.
    #
    # @option params [String] :next_token
    #   A token to specify where to start paginating. Use the `nextToken`
    #   value from a previously truncated response.
    #
    # @return [Types::ListImagePackagesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListImagePackagesResponse#request_id #request_id} => String
    #   * {Types::ListImagePackagesResponse#image_package_list #image_package_list} => Array&lt;Types::ImagePackage&gt;
    #   * {Types::ListImagePackagesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: List the packages in an image build version
    #
    #   # The following example lists the operating system packages that Image Builder detected in the specified image build
    #   # version.
    #
    #   resp = client.list_image_packages({
    #     image_build_version_arn: "arn:aws:imagebuilder:us-west-2:111122223333:image/my-example-recipe/1.0.0/1", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     image_package_list: [
    #       {
    #         package_name: "passwd", 
    #         package_version: "0.80", 
    #       }, 
    #       {
    #         package_name: "dracut-config-ec2", 
    #         package_version: "3.1", 
    #       }, 
    #       {
    #         package_name: "libsolv", 
    #         package_version: "0.7.22", 
    #       }, 
    #       {
    #         package_name: "libxcrypt", 
    #         package_version: "4.4.33", 
    #       }, 
    #       {
    #         package_name: "python3-policycoreutils", 
    #         package_version: "3.4", 
    #       }, 
    #     ], 
    #     request_id: "0363bd96-1a54-4736-a307-7ac6095744e0", 
    #   }
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
    #   The maximum number of items to return in a single request.
    #
    # @option params [String] :next_token
    #   A token to specify where to start paginating. Use the `nextToken`
    #   value from a previously truncated response.
    #
    # @return [Types::ListImagePipelineImagesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListImagePipelineImagesResponse#request_id #request_id} => String
    #   * {Types::ListImagePipelineImagesResponse#image_summary_list #image_summary_list} => Array&lt;Types::ImageSummary&gt;
    #   * {Types::ListImagePipelineImagesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: List the images that an image pipeline created
    #
    #   # The following example lists the images that the specified pipeline created, including a build that is still in progress.
    #
    #   resp = client.list_image_pipeline_images({
    #     image_pipeline_arn: "arn:aws:imagebuilder:us-west-2:111122223333:image-pipeline/my-example-pipeline", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     image_summary_list: [
    #       {
    #         version: "1.0.0/1", 
    #         name: "my-example-recipe", 
    #         type: "AMI", 
    #         arn: "arn:aws:imagebuilder:us-west-2:111122223333:image/my-example-recipe/1.0.0/1", 
    #         build_type: "USER_INITIATED", 
    #         date_created: "2026-09-09T19:39:20.458Z", 
    #         output_resources: {
    #           amis: [
    #           ], 
    #         }, 
    #         owner: "111122223333", 
    #         platform: "Linux", 
    #         state: {
    #           status: "BUILDING", 
    #         }, 
    #       }, 
    #     ], 
    #     request_id: "071a0ecb-b07d-4485-832c-e6b88de8ebed", 
    #   }
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
    #   resp.image_summary_list[0].state.failure_context.image_status #=> String, one of "PENDING", "CREATING", "BUILDING", "TESTING", "DISTRIBUTING", "INTEGRATING", "AVAILABLE", "CANCELLED", "FAILED", "DEPRECATED", "DELETED", "DISABLED"
    #   resp.image_summary_list[0].state.failure_context.workflow_execution_id #=> String
    #   resp.image_summary_list[0].state.failure_context.workflow_arn #=> String
    #   resp.image_summary_list[0].state.failure_context.step_execution_id #=> String
    #   resp.image_summary_list[0].state.failure_context.failed_step #=> String
    #   resp.image_summary_list[0].state.failure_context.component_failure.component_arn #=> String
    #   resp.image_summary_list[0].state.failure_context.component_failure.phase_name #=> String
    #   resp.image_summary_list[0].state.failure_context.component_failure.step_name #=> String
    #   resp.image_summary_list[0].state.failure_context.component_failure.action #=> String
    #   resp.image_summary_list[0].state.failure_context.component_failure.error_message #=> String
    #   resp.image_summary_list[0].state.failure_context.distribution_failure.error_message #=> String
    #   resp.image_summary_list[0].state.failure_context.distribution_failure.region_failures #=> Array
    #   resp.image_summary_list[0].state.failure_context.distribution_failure.region_failures[0].region #=> String
    #   resp.image_summary_list[0].state.failure_context.distribution_failure.region_failures[0].status #=> String, one of "FAILED", "CANCELLED", "TIMED_OUT"
    #   resp.image_summary_list[0].state.failure_context.distribution_failure.region_failures[0].image_configuration_step #=> String, one of "ASSOCIATE_LICENSES", "UPDATE_LAUNCH_TEMPLATES", "PUT_SSM_PARAMETERS", "UPDATE_FAST_LAUNCH_CONFIGURATIONS", "EXPORT_AMI"
    #   resp.image_summary_list[0].state.failure_context.distribution_failure.region_failures[0].error_message #=> String
    #   resp.image_summary_list[0].state.failure_context.distribution_failure.region_failures[0].target_account_id #=> String
    #   resp.image_summary_list[0].owner #=> String
    #   resp.image_summary_list[0].date_created #=> String
    #   resp.image_summary_list[0].output_resources.amis #=> Array
    #   resp.image_summary_list[0].output_resources.amis[0].region #=> String
    #   resp.image_summary_list[0].output_resources.amis[0].image #=> String
    #   resp.image_summary_list[0].output_resources.amis[0].name #=> String
    #   resp.image_summary_list[0].output_resources.amis[0].description #=> String
    #   resp.image_summary_list[0].output_resources.amis[0].state.status #=> String, one of "PENDING", "CREATING", "BUILDING", "TESTING", "DISTRIBUTING", "INTEGRATING", "AVAILABLE", "CANCELLED", "FAILED", "DEPRECATED", "DELETED", "DISABLED"
    #   resp.image_summary_list[0].output_resources.amis[0].state.reason #=> String
    #   resp.image_summary_list[0].output_resources.amis[0].state.failure_context.image_status #=> String, one of "PENDING", "CREATING", "BUILDING", "TESTING", "DISTRIBUTING", "INTEGRATING", "AVAILABLE", "CANCELLED", "FAILED", "DEPRECATED", "DELETED", "DISABLED"
    #   resp.image_summary_list[0].output_resources.amis[0].state.failure_context.workflow_execution_id #=> String
    #   resp.image_summary_list[0].output_resources.amis[0].state.failure_context.workflow_arn #=> String
    #   resp.image_summary_list[0].output_resources.amis[0].state.failure_context.step_execution_id #=> String
    #   resp.image_summary_list[0].output_resources.amis[0].state.failure_context.failed_step #=> String
    #   resp.image_summary_list[0].output_resources.amis[0].state.failure_context.component_failure.component_arn #=> String
    #   resp.image_summary_list[0].output_resources.amis[0].state.failure_context.component_failure.phase_name #=> String
    #   resp.image_summary_list[0].output_resources.amis[0].state.failure_context.component_failure.step_name #=> String
    #   resp.image_summary_list[0].output_resources.amis[0].state.failure_context.component_failure.action #=> String
    #   resp.image_summary_list[0].output_resources.amis[0].state.failure_context.component_failure.error_message #=> String
    #   resp.image_summary_list[0].output_resources.amis[0].state.failure_context.distribution_failure.error_message #=> String
    #   resp.image_summary_list[0].output_resources.amis[0].state.failure_context.distribution_failure.region_failures #=> Array
    #   resp.image_summary_list[0].output_resources.amis[0].state.failure_context.distribution_failure.region_failures[0].region #=> String
    #   resp.image_summary_list[0].output_resources.amis[0].state.failure_context.distribution_failure.region_failures[0].status #=> String, one of "FAILED", "CANCELLED", "TIMED_OUT"
    #   resp.image_summary_list[0].output_resources.amis[0].state.failure_context.distribution_failure.region_failures[0].image_configuration_step #=> String, one of "ASSOCIATE_LICENSES", "UPDATE_LAUNCH_TEMPLATES", "PUT_SSM_PARAMETERS", "UPDATE_FAST_LAUNCH_CONFIGURATIONS", "EXPORT_AMI"
    #   resp.image_summary_list[0].output_resources.amis[0].state.failure_context.distribution_failure.region_failures[0].error_message #=> String
    #   resp.image_summary_list[0].output_resources.amis[0].state.failure_context.distribution_failure.region_failures[0].target_account_id #=> String
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
    #   The maximum number of items to return in a single request.
    #
    # @option params [String] :next_token
    #   A token to specify where to start paginating. Use the `nextToken`
    #   value from a previously truncated response.
    #
    # @return [Types::ListImagePipelinesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListImagePipelinesResponse#request_id #request_id} => String
    #   * {Types::ListImagePipelinesResponse#image_pipeline_list #image_pipeline_list} => Array&lt;Types::ImagePipeline&gt;
    #   * {Types::ListImagePipelinesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: List image pipelines filtered by name
    #
    #   # The following example lists the image pipelines in your account, using a filter to match a specific pipeline name.
    #
    #   resp = client.list_image_pipelines({
    #     filters: [
    #       {
    #         name: "name", 
    #         values: [
    #           "my-example-pipeline", 
    #         ], 
    #       }, 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     image_pipeline_list: [
    #       {
    #         name: "my-example-pipeline", 
    #         arn: "arn:aws:imagebuilder:us-west-2:111122223333:image-pipeline/my-example-pipeline", 
    #         date_created: "2026-09-09T19:52:05.146Z", 
    #         date_updated: "2026-09-09T19:52:05.146Z", 
    #         description: "Builds a new version of my image every Sunday", 
    #         enhanced_image_metadata_enabled: true, 
    #         image_recipe_arn: "arn:aws:imagebuilder:us-west-2:111122223333:image-recipe/my-example-recipe/1.0.0", 
    #         image_tests_configuration: {
    #           image_tests_enabled: true, 
    #           timeout_minutes: 720, 
    #         }, 
    #         infrastructure_configuration_arn: "arn:aws:imagebuilder:us-west-2:111122223333:infrastructure-configuration/my-example-infrastructure", 
    #         platform: "Linux", 
    #         schedule: {
    #           pipeline_execution_start_condition: "EXPRESSION_MATCH_AND_DEPENDENCY_UPDATES_AVAILABLE", 
    #           schedule_expression: "cron(0 9 ? * SUN *)", 
    #         }, 
    #         status: "ENABLED", 
    #       }, 
    #     ], 
    #     request_id: "b818f3f9-b851-4de7-95f3-8fabed4e1841", 
    #   }
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
    #   resp.image_pipeline_list[0].image_tags #=> Hash
    #   resp.image_pipeline_list[0].image_tags["TagKey"] #=> String
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
    #   The maximum number of items to return in a single request.
    #
    # @option params [String] :next_token
    #   A token to specify where to start paginating. Use the `nextToken`
    #   value from a previously truncated response.
    #
    # @return [Types::ListImageRecipesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListImageRecipesResponse#request_id #request_id} => String
    #   * {Types::ListImageRecipesResponse#image_recipe_summary_list #image_recipe_summary_list} => Array&lt;Types::ImageRecipeSummary&gt;
    #   * {Types::ListImageRecipesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: List the image recipes that you own
    #
    #   # The following example lists the image recipes that you own.
    #
    #   resp = client.list_image_recipes({
    #     owner: "Self", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     image_recipe_summary_list: [
    #       {
    #         name: "my-example-linux-recipe", 
    #         arn: "arn:aws:imagebuilder:us-west-2:111122223333:image-recipe/my-example-linux-recipe/1.0.0", 
    #         date_created: "2026-09-09T19:30:33.064Z", 
    #         owner: "111122223333", 
    #         parent_image: "arn:aws:imagebuilder:us-west-2:aws:image/amazon-linux-2023-x86/x.x.x", 
    #         platform: "Linux", 
    #       }, 
    #       {
    #         name: "my-example-windows-recipe", 
    #         arn: "arn:aws:imagebuilder:us-west-2:111122223333:image-recipe/my-example-windows-recipe/1.0.0", 
    #         date_created: "2026-09-09T19:30:35.110Z", 
    #         owner: "111122223333", 
    #         parent_image: "arn:aws:imagebuilder:us-west-2:aws:image/windows-server-2022-english-full-base-x86/x.x.x", 
    #         platform: "Windows", 
    #       }, 
    #     ], 
    #     request_id: "4b036f1a-3716-441d-a401-419249f6569e", 
    #   }
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
    # * `imageBuildVersionArn`
    #
    # * `imagePipelineArn`
    #
    # * `vulnerabilityId`
    #
    # @option params [Types::Filter] :filter
    #   A filter name and value pair that determines the type of aggregation
    #   that Image Builder returns. Use one of the following filter names:
    #
    #   * `imageBuildVersionArn`
    #
    #   * `imagePipelineArn`
    #
    #   * `vulnerabilityId`
    #
    #   If you don't specify a filter, Image Builder returns an aggregation
    #   for your account.
    #
    # @option params [String] :next_token
    #   A token to specify where to start paginating. Use the `nextToken`
    #   value from a previously truncated response.
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
    #
    # @example Example: List image scan finding aggregations for an image pipeline
    #
    #   # The following example aggregates vulnerability findings for images that the specified pipeline created, with counts
    #   # grouped by severity level.
    #
    #   resp = client.list_image_scan_finding_aggregations({
    #     filter: {
    #       name: "imagePipelineArn", 
    #       values: [
    #         "arn:aws:imagebuilder:us-west-2:111122223333:image-pipeline/my-example-pipeline", 
    #       ], 
    #     }, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     aggregation_type: "imagePipelineArn", 
    #     request_id: "b1c9dd23-7a9c-4a52-a1f7-3b8e9e17b2c4", 
    #     responses: [
    #       {
    #         image_pipeline_aggregation: {
    #           image_pipeline_arn: "arn:aws:imagebuilder:us-west-2:111122223333:image-pipeline/my-example-pipeline", 
    #           severity_counts: {
    #             all: 25, 
    #             critical: 1, 
    #             high: 7, 
    #             medium: 12, 
    #           }, 
    #         }, 
    #       }, 
    #     ], 
    #   }
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

    # Returns a list of image scan findings for your account. Amazon
    # Inspector generates the findings when it scans images that have
    # scanning enabled.
    #
    # @option params [Array<Types::ImageScanFindingsFilter>] :filters
    #   An array of name value pairs that you can use to filter your results.
    #   You can use the following filters to streamline results:
    #
    #   * `imageBuildVersionArn` – Filters findings by the image build version
    #     that was scanned.
    #
    #   * `imagePipelineArn` – Filters findings by the pipeline that created
    #     the scanned image.
    #
    #   * `vulnerabilityId` – Filters findings by vulnerability ID, for
    #     example a CVE ID.
    #
    #   * `severity` – Filters findings by severity level.
    #
    #   If you don't request a filter, then all findings in your account are
    #   listed.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return in a single request.
    #
    # @option params [String] :next_token
    #   A token to specify where to start paginating. Use the `nextToken`
    #   value from a previously truncated response.
    #
    # @return [Types::ListImageScanFindingsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListImageScanFindingsResponse#request_id #request_id} => String
    #   * {Types::ListImageScanFindingsResponse#findings #findings} => Array&lt;Types::ImageScanFinding&gt;
    #   * {Types::ListImageScanFindingsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: List vulnerability findings for an image build
    #
    #   # The following example lists the vulnerability findings that Amazon Inspector detected for the specified image build
    #   # version.
    #
    #   resp = client.list_image_scan_findings({
    #     filters: [
    #       {
    #         name: "imageBuildVersionArn", 
    #         values: [
    #           "arn:aws:imagebuilder:us-west-2:111122223333:image/my-example-recipe/1.0.0/1", 
    #         ], 
    #       }, 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     findings: [
    #       {
    #         type: "PACKAGE_VULNERABILITY", 
    #         aws_account_id: "111122223333", 
    #         description: "In the Linux kernel, the following vulnerability has been resolved:\n\nvirtio: break and reset virtio devices on device_shutdown()", 
    #         first_observed_at: Time.parse("2026-01-06T20:12:57Z"), 
    #         fix_available: "YES", 
    #         image_build_version_arn: "arn:aws:imagebuilder:us-west-2:111122223333:image/my-example-recipe/1.0.0/1", 
    #         image_pipeline_arn: "arn:aws:imagebuilder:us-west-2:111122223333:image-pipeline/my-example-pipeline", 
    #         inspector_score: 7.0, 
    #         inspector_score_details: {
    #           adjusted_cvss: {
    #             version: "3.1", 
    #             adjustments: [
    #             ], 
    #             cvss_source: "AMAZON_CVE", 
    #             score: 7.0, 
    #             score_source: "AMAZON_CVE", 
    #             scoring_vector: "CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:H/A:H", 
    #           }, 
    #         }, 
    #         package_vulnerability_details: {
    #           cvss: [
    #             {
    #               version: "3.1", 
    #               base_score: 7.0, 
    #               scoring_vector: "CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:H/A:H", 
    #               source: "AMAZON_CVE", 
    #             }, 
    #           ], 
    #           reference_urls: [
    #             "https://alas.aws.amazon.com/AL2/ALAS2-2025-2955.html", 
    #             "https://alas.aws.amazon.com/AL2023/ALAS2023-2025-1130.html", 
    #           ], 
    #           related_vulnerabilities: [
    #             "ALAS2-2025-2955", 
    #             "ALAS2023-2025-1130", 
    #           ], 
    #           source: "AMAZON_CVE", 
    #           source_url: "https://alas.aws.amazon.com/cve/json/v1/CVE-2025-38064.json", 
    #           vendor_created_at: Time.parse("2025-06-18T00:00:00Z"), 
    #           vendor_severity: "Important", 
    #           vendor_updated_at: Time.parse("2025-06-25T00:00:00Z"), 
    #           vulnerability_id: "CVE-2025-38064", 
    #           vulnerable_packages: [
    #             {
    #               version: "4.14.355", 
    #               name: "kernel", 
    #               arch: "X86_64", 
    #               epoch: 0, 
    #               fixed_in_version: "0:5.15.189-131.202.amzn2", 
    #               package_manager: "OS", 
    #               release: "280.652.amzn2", 
    #               remediation: "yum update kernel", 
    #             }, 
    #           ], 
    #         }, 
    #         remediation: {
    #           recommendation: {
    #             text: "None Provided", 
    #           }, 
    #         }, 
    #         severity: "HIGH", 
    #         title: "CVE-2025-38064 - kernel", 
    #         updated_at: Time.parse("2026-01-06T20:12:57Z"), 
    #       }, 
    #     ], 
    #     request_id: "233de8e7-3b58-4319-a6af-f6774cf7d371", 
    #   }
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

    # Returns the list of images that you have access to.
    #
    # @option params [String] :owner
    #   Filters the list to images owned by you, by Amazon, or shared with you
    #   by other accounts. By default, only your account's images are
    #   returned.
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
    #   Specifies whether to return one entry per image name, with all
    #   versions of each image aggregated. Defaults to `false`, which returns
    #   one entry per image version. You can't combine this option with the
    #   `version` filter.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return in a single request.
    #
    # @option params [String] :next_token
    #   A token to specify where to start paginating. Use the `nextToken`
    #   value from a previously truncated response.
    #
    # @option params [Boolean] :include_deprecated
    #   Specifies whether to include deprecated Amazon-managed images in the
    #   results. Deprecated images that you own are always returned. Defaults
    #   to `false`.
    #
    # @return [Types::ListImagesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListImagesResponse#request_id #request_id} => String
    #   * {Types::ListImagesResponse#image_version_list #image_version_list} => Array&lt;Types::ImageVersion&gt;
    #   * {Types::ListImagesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: List images that you own
    #
    #   # The following example lists the image versions that you own. Setting byName to false returns each image version as its
    #   # own entry, instead of grouping build versions under their image name.
    #
    #   resp = client.list_images({
    #     by_name: false, 
    #     owner: "Self", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     image_version_list: [
    #       {
    #         version: "1.0.0", 
    #         name: "my-example-recipe", 
    #         type: "AMI", 
    #         arn: "arn:aws:imagebuilder:us-west-2:111122223333:image/my-example-recipe/1.0.0", 
    #         build_type: "USER_INITIATED", 
    #         date_created: "2026-09-09T19:12:18.677Z", 
    #         os_version: "Amazon Linux 2023", 
    #         owner: "111122223333", 
    #         platform: "Linux", 
    #       }, 
    #       {
    #         version: "1.0.0", 
    #         name: "my-example-windows-image", 
    #         type: "AMI", 
    #         arn: "arn:aws:imagebuilder:us-west-2:111122223333:image/my-example-windows-image/1.0.0", 
    #         build_type: "USER_INITIATED", 
    #         date_created: "2026-03-10T19:57:27.323Z", 
    #         os_version: "Microsoft Windows Server 2025", 
    #         owner: "111122223333", 
    #         platform: "Windows", 
    #       }, 
    #       {
    #         version: "1.0.1", 
    #         name: "my-example-windows-image", 
    #         type: "AMI", 
    #         arn: "arn:aws:imagebuilder:us-west-2:111122223333:image/my-example-windows-image/1.0.1", 
    #         build_type: "USER_INITIATED", 
    #         date_created: "2026-03-10T20:32:31.795Z", 
    #         os_version: "Microsoft Windows Server 2025", 
    #         owner: "111122223333", 
    #         platform: "Windows", 
    #       }, 
    #     ], 
    #     request_id: "19794296-a45f-4079-8741-e00d3c916318", 
    #   }
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
    #   The maximum number of items to return in a single request.
    #
    # @option params [String] :next_token
    #   A token to specify where to start paginating. Use the `nextToken`
    #   value from a previously truncated response.
    #
    # @return [Types::ListInfrastructureConfigurationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListInfrastructureConfigurationsResponse#request_id #request_id} => String
    #   * {Types::ListInfrastructureConfigurationsResponse#infrastructure_configuration_summary_list #infrastructure_configuration_summary_list} => Array&lt;Types::InfrastructureConfigurationSummary&gt;
    #   * {Types::ListInfrastructureConfigurationsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: List infrastructure configurations by name
    #
    #   # The following example lists your infrastructure configurations, filtered to a specific resource name.
    #
    #   resp = client.list_infrastructure_configurations({
    #     filters: [
    #       {
    #         name: "name", 
    #         values: [
    #           "my-example-infrastructure-configuration", 
    #         ], 
    #       }, 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     infrastructure_configuration_summary_list: [
    #       {
    #         name: "my-example-infrastructure-configuration", 
    #         arn: "arn:aws:imagebuilder:us-west-2:111122223333:infrastructure-configuration/my-example-infrastructure-configuration", 
    #         date_created: "2026-09-09T19:37:17.350Z", 
    #         description: "An example infrastructure configuration for Amazon Linux builds", 
    #         instance_profile_name: "EC2InstanceProfileForImageBuilder", 
    #         instance_types: [
    #           "m5.large", 
    #           "m5.xlarge", 
    #         ], 
    #         tags: {
    #           "Environment" => "test", 
    #         }, 
    #       }, 
    #     ], 
    #     request_id: "dbadaf86-3a9d-48fc-8e34-6062ef0a70f2", 
    #   }
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

    # Lists resources that the runtime instance of the image lifecycle
    # identified for lifecycle actions.
    #
    # @option params [required, String] :lifecycle_execution_id
    #   The unique identifier for a runtime instance of the lifecycle policy.
    #
    # @option params [String] :parent_resource_id
    #   The Amazon Resource Name (ARN) of an image build version to get the
    #   output resources for, such as AMIs or container images in Amazon ECR.
    #   You can get this value from the `resourceId` in the top-level
    #   response. If you leave this property empty, the response lists the
    #   Image Builder resources that the lifecycle execution identified for
    #   lifecycle actions. If the image build version that you specify in
    #   `parentResourceId` wasn't part of this lifecycle execution, the
    #   response contains an empty list.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return in a single request.
    #
    # @option params [String] :next_token
    #   A token to specify where to start paginating. Use the `nextToken`
    #   value from a previously truncated response.
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
    #
    # @example Example: List the resources that a lifecycle execution acted on
    #
    #   # The following example lists the resources that the specified lifecycle execution acted on. For a scheduled resource
    #   # state update that hasn't started to apply changes yet, the resources list is empty.
    #
    #   resp = client.list_lifecycle_execution_resources({
    #     lifecycle_execution_id: "lce-401aefc3-a829-46f6-8fc2-91497988a503", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     lifecycle_execution_id: "lce-401aefc3-a829-46f6-8fc2-91497988a503", 
    #     lifecycle_execution_state: {
    #       status: "IN_PROGRESS", 
    #     }, 
    #     resources: [
    #     ], 
    #   }
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

    # Retrieves the lifecycle runtime history for the specified resource.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return in a single request.
    #
    # @option params [String] :next_token
    #   A token to specify where to start paginating. Use the `nextToken`
    #   value from a previously truncated response.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource for which to list
    #   lifecycle executions. Specify a lifecycle policy ARN to list its
    #   executions, or an image build version ARN to list the executions that
    #   StartResourceStateUpdate started for that image. Other ARN types
    #   aren't valid for this request.
    #
    # @return [Types::ListLifecycleExecutionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListLifecycleExecutionsResponse#lifecycle_executions #lifecycle_executions} => Array&lt;Types::LifecycleExecution&gt;
    #   * {Types::ListLifecycleExecutionsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: List lifecycle executions for an image build version
    #
    #   # The following example lists the lifecycle executions that have run against the specified image build version. The
    #   # execution shown was started with StartResourceStateUpdate rather than a lifecycle policy, so it has no
    #   # lifecyclePolicyArn.
    #
    #   resp = client.list_lifecycle_executions({
    #     resource_arn: "arn:aws:imagebuilder:us-west-2:111122223333:image/my-example-recipe/1.0.0/1", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     lifecycle_executions: [
    #       {
    #         lifecycle_execution_id: "lce-401aefc3-a829-46f6-8fc2-91497988a503", 
    #         resources_impacted_summary: {
    #           has_impacted_resources: false, 
    #         }, 
    #         start_time: Time.parse("2026-09-09T21:42:29Z"), 
    #         state: {
    #           status: "IN_PROGRESS", 
    #         }, 
    #       }, 
    #     ], 
    #   }
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

    # Retrieves a list of lifecycle policies in your Amazon Web Services
    # account.
    #
    # @option params [Array<Types::Filter>] :filters
    #   Use the following filters to streamline results: `name`,
    #   `resourceType`, and `status`. Filter names are matched exactly as
    #   shown.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return in a single request.
    #
    # @option params [String] :next_token
    #   A token to specify where to start paginating. Use the `nextToken`
    #   value from a previously truncated response.
    #
    # @return [Types::ListLifecyclePoliciesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListLifecyclePoliciesResponse#lifecycle_policy_summary_list #lifecycle_policy_summary_list} => Array&lt;Types::LifecyclePolicySummary&gt;
    #   * {Types::ListLifecyclePoliciesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: List enabled lifecycle policies
    #
    #   # The following example lists the lifecycle policies in your account that have ENABLED status.
    #
    #   resp = client.list_lifecycle_policies({
    #     filters: [
    #       {
    #         name: "status", 
    #         values: [
    #           "ENABLED", 
    #         ], 
    #       }, 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     lifecycle_policy_summary_list: [
    #       {
    #         name: "my-example-ami-policy", 
    #         arn: "arn:aws:imagebuilder:us-west-2:111122223333:lifecycle-policy/my-example-ami-policy", 
    #         date_created: Time.parse("2026-09-09T19:36:17Z"), 
    #         description: "Deletes AMI image builds after they reach 6 months old", 
    #         execution_role: "arn:aws:iam::111122223333:role/my-example-lifecycle-role", 
    #         resource_type: "AMI_IMAGE", 
    #         status: "ENABLED", 
    #       }, 
    #       {
    #         name: "my-example-container-policy", 
    #         arn: "arn:aws:imagebuilder:us-west-2:111122223333:lifecycle-policy/my-example-container-policy", 
    #         date_created: Time.parse("2026-09-09T19:36:19Z"), 
    #         description: "Deletes container image builds after they reach 6 months old", 
    #         execution_role: "arn:aws:iam::111122223333:role/my-example-lifecycle-role", 
    #         resource_type: "CONTAINER_IMAGE", 
    #         status: "ENABLED", 
    #       }, 
    #     ], 
    #   }
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
    #
    # @example Example: List the tags for a resource
    #
    #   # The following example lists the tags that are assigned to an existing component build version.
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "arn:aws:imagebuilder:us-west-2:111122223333:component/my-example-component/1.0.0/1", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     tags: {
    #       "CostCenter" => "12345", 
    #       "Environment" => "Production", 
    #     }, 
    #   }
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

    # Lists the workflow steps in your Amazon Web Services account that have
    # paused at a `WaitForAction` step, and are waiting for you to respond.
    # To send a response, call SendWorkflowStepAction.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return in a single request.
    #
    # @option params [String] :next_token
    #   A token to specify where to start paginating. Use the `nextToken`
    #   value from a previously truncated response.
    #
    # @return [Types::ListWaitingWorkflowStepsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListWaitingWorkflowStepsResponse#steps #steps} => Array&lt;Types::WorkflowStepExecution&gt;
    #   * {Types::ListWaitingWorkflowStepsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: List workflow steps that are waiting for an action
    #
    #   # The following example lists the workflow steps in your account that are paused at a WaitForAction step, waiting for you
    #   # to resume or stop the workflow with SendWorkflowStepAction.
    #
    #   resp = client.list_waiting_workflow_steps({
    #     max_results: 25, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     steps: [
    #       {
    #         name: "WaitForApproval", 
    #         action: "WaitForAction", 
    #         image_build_version_arn: "arn:aws:imagebuilder:us-west-2:111122223333:image/my-example-wait-recipe/1.0.0/1", 
    #         start_time: "2026-09-09T20:02:59.931Z", 
    #         step_execution_id: "step-8eb24d7a-036e-46b5-94a3-90a5d8b5ac4a", 
    #         workflow_build_version_arn: "arn:aws:imagebuilder:us-west-2:111122223333:workflow/build/my-example-wait-workflow/1.0.0/1", 
    #         workflow_execution_id: "wf-782460a6-8dc5-4262-90ff-0509eef0053c", 
    #       }, 
    #     ], 
    #   }
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
    #   get a list of build versions. The version segments can contain
    #   wildcards (`x`) to match multiple versions of the workflow. If you
    #   don't specify an ARN, the response lists build versions for all of
    #   the workflows in your account.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return in a single request.
    #
    # @option params [String] :next_token
    #   A token to specify where to start paginating. Use the `nextToken`
    #   value from a previously truncated response.
    #
    # @return [Types::ListWorkflowBuildVersionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListWorkflowBuildVersionsResponse#workflow_summary_list #workflow_summary_list} => Array&lt;Types::WorkflowSummary&gt;
    #   * {Types::ListWorkflowBuildVersionsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: List the build versions of a workflow
    #
    #   # The following example lists the build versions that exist for version 1.0.0 of the specified workflow, with the most
    #   # recent build version first and the change description for each build version showing what changed.
    #
    #   resp = client.list_workflow_build_versions({
    #     workflow_version_arn: "arn:aws:imagebuilder:us-west-2:111122223333:workflow/build/my-example-workflow/1.0.0", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     workflow_summary_list: [
    #       {
    #         version: "1.0.0", 
    #         name: "my-example-workflow", 
    #         type: "BUILD", 
    #         arn: "arn:aws:imagebuilder:us-west-2:111122223333:workflow/build/my-example-workflow/1.0.0/2", 
    #         change_description: "Added a step to collect image metadata from the build instance", 
    #         date_created: "2026-09-09T19:56:38.339Z", 
    #         description: "Workflow to build my example image", 
    #         owner: "111122223333", 
    #       }, 
    #       {
    #         version: "1.0.0", 
    #         name: "my-example-workflow", 
    #         type: "BUILD", 
    #         arn: "arn:aws:imagebuilder:us-west-2:111122223333:workflow/build/my-example-workflow/1.0.0/1", 
    #         change_description: "Initial version", 
    #         date_created: "2026-09-09T19:41:14.997Z", 
    #         description: "Workflow to build my example image", 
    #         owner: "111122223333", 
    #       }, 
    #     ], 
    #   }
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
    #   The maximum number of items to return in a single request.
    #
    # @option params [String] :next_token
    #   A token to specify where to start paginating. Use the `nextToken`
    #   value from a previously truncated response.
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
    #
    # @example Example: List the workflow runtime instances for an image build version
    #
    #   # The following example lists the workflow runtime instances that ran for the specified image build version, which was
    #   # built with the Image Builder default build and test workflows.
    #
    #   resp = client.list_workflow_executions({
    #     image_build_version_arn: "arn:aws:imagebuilder:us-west-2:111122223333:image/my-example-recipe/1.0.0/1", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     image_build_version_arn: "arn:aws:imagebuilder:us-west-2:111122223333:image/my-example-recipe/1.0.0/1", 
    #     request_id: "c78ef9a3-cce8-4e7d-ae96-426fb7e59f5d", 
    #     workflow_executions: [
    #       {
    #         type: "BUILD", 
    #         end_time: "2026-09-09T19:19:06.158Z", 
    #         retried: false, 
    #         start_time: "2026-09-09T19:12:23.175Z", 
    #         status: "COMPLETED", 
    #         total_step_count: 7, 
    #         total_steps_failed: 0, 
    #         total_steps_skipped: 2, 
    #         total_steps_succeeded: 5, 
    #         workflow_build_version_arn: "arn:aws:imagebuilder:us-west-2:aws:workflow/build/build-image/1.0.3/1", 
    #         workflow_execution_id: "wf-165b1cb6-3a62-4618-a021-94ddcbe32908", 
    #       }, 
    #       {
    #         type: "TEST", 
    #         end_time: "2026-09-09T19:21:47.830Z", 
    #         retried: false, 
    #         start_time: "2026-09-09T19:19:11.709Z", 
    #         status: "COMPLETED", 
    #         total_step_count: 4, 
    #         total_steps_failed: 0, 
    #         total_steps_skipped: 2, 
    #         total_steps_succeeded: 2, 
    #         workflow_build_version_arn: "arn:aws:imagebuilder:us-west-2:aws:workflow/test/test-image/1.0.3/1", 
    #         workflow_execution_id: "wf-1a3639b8-1366-4b73-8347-706874020dad", 
    #       }, 
    #     ], 
    #   }
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
    #   resp.workflow_executions[0].retried #=> Boolean
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
    #   The maximum number of items to return in a single request.
    #
    # @option params [String] :next_token
    #   A token to specify where to start paginating. Use the `nextToken`
    #   value from a previously truncated response.
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
    #
    # @example Example: List the steps that ran in a workflow execution
    #
    #   # The following example lists runtime details for each step in the specified runtime instance of a workflow, in this case
    #   # the build workflow from an image build.
    #
    #   resp = client.list_workflow_step_executions({
    #     workflow_execution_id: "wf-165b1cb6-3a62-4618-a021-94ddcbe32908", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     image_build_version_arn: "arn:aws:imagebuilder:us-west-2:111122223333:image/my-example-recipe/1.0.0/1", 
    #     request_id: "c6258beb-bc78-40dc-8bf9-fa5a8a93d3f3", 
    #     steps: [
    #       {
    #         name: "LaunchBuildInstance", 
    #         action: "LaunchInstance", 
    #         end_time: "2026-09-09T19:14:50.822Z", 
    #         inputs: "{\"waitFor\": \"ssmAgent\"}", 
    #         outputs: "{\"instanceId\": \"i-1234567890abcdef0\"}", 
    #         start_time: "2026-09-09T19:12:23.418Z", 
    #         status: "COMPLETED", 
    #         step_execution_id: "step-2e6fef0d-657c-4b7e-8706-ff24da9afa01", 
    #       }, 
    #       {
    #         name: "ApplyBuildComponents", 
    #         action: "ExecuteComponents", 
    #         end_time: "2026-09-09T19:14:51.229Z", 
    #         inputs: "{\"instanceId.$\": \"$.stepOutputs.LaunchBuildInstance.instanceId\"}", 
    #         start_time: "2026-09-09T19:14:51.229Z", 
    #         status: "SKIPPED", 
    #         step_execution_id: "step-f76c24fe-dc70-435b-8dc1-987a0ca6d5a5", 
    #       }, 
    #       {
    #         name: "InventoryCollection", 
    #         action: "CollectImageMetadata", 
    #         end_time: "2026-09-09T19:16:26.267Z", 
    #         inputs: "{\"instanceId\": \"i-1234567890abcdef0\"}", 
    #         outputs: "{\"osVersion\": \"Amazon Linux 2023\", \"associationId\": \"7416ce2e-4ee8-4660-8c42-a09a03f61010\"}", 
    #         start_time: "2026-09-09T19:14:51.818Z", 
    #         status: "COMPLETED", 
    #         step_execution_id: "step-aa880a39-e72c-4561-aa05-eb3de860441a", 
    #       }, 
    #       {
    #         name: "RunSanitizeScript", 
    #         action: "SanitizeInstance", 
    #         end_time: "2026-09-09T19:16:36.559Z", 
    #         outputs: "{\"status\": \"Success\", \"output\": \"Skipping cleanup\\n\", \"runCommandId\": \"9eef9fe1-12e8-4c97-8e9a-4e79632864f4\"}", 
    #         start_time: "2026-09-09T19:16:26.742Z", 
    #         status: "COMPLETED", 
    #         step_execution_id: "step-572bdd17-25c4-4729-9f2e-7fd611807751", 
    #       }, 
    #       {
    #         name: "RunSysPrepScript", 
    #         action: "RunSysPrep", 
    #         end_time: "2026-09-09T19:16:36.973Z", 
    #         inputs: "{\"instanceId.$\": \"$.stepOutputs.LaunchBuildInstance.instanceId\"}", 
    #         start_time: "2026-09-09T19:16:36.973Z", 
    #         status: "SKIPPED", 
    #         step_execution_id: "step-06026579-939d-4b1b-b36e-fa58cb712a48", 
    #       }, 
    #       {
    #         name: "CreateOutputAMI", 
    #         action: "CreateImage", 
    #         end_time: "2026-09-09T19:19:02.135Z", 
    #         inputs: "{\"instanceId\": \"i-1234567890abcdef0\"}", 
    #         outputs: "{\"imageId\": \"ami-1234567890abcdef0\"}", 
    #         start_time: "2026-09-09T19:16:37.499Z", 
    #         status: "COMPLETED", 
    #         step_execution_id: "step-50e4312d-400c-453e-957c-714cbee6961c", 
    #       }, 
    #       {
    #         name: "TerminateBuildInstance", 
    #         action: "TerminateInstance", 
    #         end_time: "2026-09-09T19:19:06.132Z", 
    #         inputs: "{\"instanceId\": \"i-1234567890abcdef0\"}", 
    #         start_time: "2026-09-09T19:19:02.546Z", 
    #         status: "COMPLETED", 
    #         step_execution_id: "step-22673db0-e280-4948-b9b5-789791531c34", 
    #       }, 
    #     ], 
    #     workflow_build_version_arn: "arn:aws:imagebuilder:us-west-2:aws:workflow/build/build-image/1.0.3/1", 
    #     workflow_execution_id: "wf-165b1cb6-3a62-4618-a021-94ddcbe32908", 
    #   }
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
    #   resp.steps[0].attempt_number #=> Integer
    #   resp.steps[0].max_attempts #=> Integer
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

    # Lists workflow versions based on filtering parameters. To list the
    # build versions of a specific workflow version, call
    # ListWorkflowBuildVersions.
    #
    # @option params [String] :owner
    #   Filters results based on the workflow owner. By default, this request
    #   returns the workflows that your account owns (`Self`). Specify
    #   `Amazon` to list the workflows that Image Builder manages. Image
    #   Builder rejects the `Shared` and `ThirdParty` owner values for
    #   workflows, and `AWSMarketplace` returns no results.
    #
    # @option params [Array<Types::Filter>] :filters
    #   Filters to narrow the list of workflows. You can filter on `name`,
    #   `version`, `description`, and `type`.
    #
    # @option params [Boolean] :by_name
    #   Specifies whether to return one entry per workflow name, with all
    #   versions of each workflow aggregated. Defaults to `false`, which
    #   returns one entry per workflow version. You can't combine this option
    #   with the `version` filter.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return in a single request.
    #
    # @option params [String] :next_token
    #   A token to specify where to start paginating. Use the `nextToken`
    #   value from a previously truncated response.
    #
    # @return [Types::ListWorkflowsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListWorkflowsResponse#workflow_version_list #workflow_version_list} => Array&lt;Types::WorkflowVersion&gt;
    #   * {Types::ListWorkflowsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: List workflows that you own
    #
    #   # The following example lists the workflow versions that you own.
    #
    #   resp = client.list_workflows({
    #     owner: "Self", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     workflow_version_list: [
    #       {
    #         version: "1.0.0", 
    #         name: "my-example-build-workflow", 
    #         type: "BUILD", 
    #         arn: "arn:aws:imagebuilder:us-west-2:111122223333:workflow/build/my-example-build-workflow/1.0.0", 
    #         date_created: "2026-09-09T19:56:09.033Z", 
    #         description: "Builds my example image", 
    #         owner: "111122223333", 
    #       }, 
    #       {
    #         version: "1.0.0", 
    #         name: "my-example-test-workflow", 
    #         type: "TEST", 
    #         arn: "arn:aws:imagebuilder:us-west-2:111122223333:workflow/test/my-example-test-workflow/1.0.0", 
    #         date_created: "2026-09-09T19:56:12.440Z", 
    #         description: "Tests my example image", 
    #         owner: "111122223333", 
    #       }, 
    #     ], 
    #   }
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

    # Applies a policy to a component. The preferred way to share resources
    # is with the RAM API [CreateResourceShare][1]. If you use the
    # PutComponentPolicy operation instead, you must also call the RAM API
    # [PromoteResourceShareCreatedFromPolicy][2]. Otherwise, the resource
    # isn't visible to the principals that it's shared with.
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
    #
    # @example Example: Share a component with another account
    #
    #   # The following example applies a resource policy that grants another account permission to get and list the component.
    #
    #   resp = client.put_component_policy({
    #     component_arn: "arn:aws:imagebuilder:us-west-2:111122223333:component/my-shared-component/1.0.0/1", 
    #     policy: "{\"Version\": \"2012-10-17\", \"Statement\": [{\"Effect\": \"Allow\", \"Principal\": {\"AWS\": \"arn:aws:iam::444455556666:root\"}, \"Action\": [\"imagebuilder:GetComponent\", \"imagebuilder:ListComponents\"], \"Resource\": [\"arn:aws:imagebuilder:us-west-2:111122223333:component/my-shared-component/1.0.0/1\"]}]}", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     component_arn: "arn:aws:imagebuilder:us-west-2:111122223333:component/my-shared-component/1.0.0/1", 
    #     request_id: "ad5a3a66-95c0-4eb5-b34e-f28980256275", 
    #   }
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

    # Applies a policy to a container recipe. The preferred way to share
    # resources is with the RAM API [CreateResourceShare][1]. If you use the
    # PutContainerRecipePolicy operation instead, you must also call the RAM
    # API [PromoteResourceShareCreatedFromPolicy][2]. Otherwise, the
    # resource isn't visible to the principals that it's shared with.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/ram/latest/APIReference/API_CreateResourceShare.html
    # [2]: https://docs.aws.amazon.com/ram/latest/APIReference/API_PromoteResourceShareCreatedFromPolicy.html
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
    #
    # @example Example: Share a container recipe with another account
    #
    #   # The following example applies a resource policy that grants another AWS account permission to view and use the specified
    #   # container recipe.
    #
    #   resp = client.put_container_recipe_policy({
    #     container_recipe_arn: "arn:aws:imagebuilder:us-west-2:111122223333:container-recipe/my-example-container-recipe-shared/1.0.0", 
    #     policy: "{\"Version\": \"2012-10-17\", \"Statement\": [{\"Sid\": \"AllowSharedAccountContainerRecipeAccess\", \"Effect\": \"Allow\", \"Principal\": {\"AWS\": \"arn:aws:iam::444455556666:root\"}, \"Action\": [\"imagebuilder:GetContainerRecipe\", \"imagebuilder:ListContainerRecipes\"], \"Resource\": \"arn:aws:imagebuilder:us-west-2:111122223333:container-recipe/my-example-container-recipe-shared/1.0.0\"}]}", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     container_recipe_arn: "arn:aws:imagebuilder:us-west-2:111122223333:container-recipe/my-example-container-recipe-shared/1.0.0", 
    #     request_id: "dd917975-9d5d-49ce-9d94-daa753088dec", 
    #   }
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

    # Applies a policy to an image. The preferred way to share resources is
    # with the RAM API [CreateResourceShare][1]. If you use the
    # PutImagePolicy operation instead, you must also call the RAM API
    # [PromoteResourceShareCreatedFromPolicy][2]. Otherwise, the resource
    # isn't visible to the principals that it's shared with.
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
    #   The resource policy to apply to the image, as a JSON policy document.
    #   Image Builder validates the policy with Amazon Web Services RAM before
    #   applying it, and rejects invalid policies with
    #   `InvalidParameterValueException`.
    #
    # @return [Types::PutImagePolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutImagePolicyResponse#request_id #request_id} => String
    #   * {Types::PutImagePolicyResponse#image_arn #image_arn} => String
    #
    #
    # @example Example: Share an image with another AWS account
    #
    #   # The following example applies a resource policy to an image build version that grants another AWS account permission to
    #   # view the image.
    #
    #   resp = client.put_image_policy({
    #     image_arn: "arn:aws:imagebuilder:us-west-2:111122223333:image/my-example-recipe/1.0.0/1", 
    #     policy: "{\"Version\": \"2012-10-17\", \"Statement\": [{\"Effect\": \"Allow\", \"Principal\": {\"AWS\": \"arn:aws:iam::444455556666:root\"}, \"Action\": [\"imagebuilder:GetImage\", \"imagebuilder:ListImages\"], \"Resource\": [\"arn:aws:imagebuilder:us-west-2:111122223333:image/my-example-recipe/1.0.0/1\"]}]}", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     image_arn: "arn:aws:imagebuilder:us-west-2:111122223333:image/my-example-recipe/1.0.0/1", 
    #     request_id: "7bbf7e76-0f08-430d-b77e-17c161725825", 
    #   }
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

    # Applies a policy to an image recipe. The preferred way to share
    # resources is with the RAM API [CreateResourceShare][1]. If you use the
    # PutImageRecipePolicy operation instead, you must also call the RAM API
    # [PromoteResourceShareCreatedFromPolicy][2]. Otherwise, the resource
    # isn't visible to the principals that it's shared with.
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
    #
    # @example Example: Share an image recipe with another account
    #
    #   # The following example applies a resource policy that grants another AWS account permission to view the specified image
    #   # recipe.
    #
    #   resp = client.put_image_recipe_policy({
    #     image_recipe_arn: "arn:aws:imagebuilder:us-west-2:111122223333:image-recipe/my-example-recipe/1.0.0", 
    #     policy: "{\"Version\": \"2012-10-17\", \"Statement\": [{\"Effect\": \"Allow\", \"Principal\": {\"AWS\": \"arn:aws:iam::444455556666:root\"}, \"Action\": [\"imagebuilder:GetImageRecipe\", \"imagebuilder:ListImageRecipes\"], \"Resource\": \"arn:aws:imagebuilder:us-west-2:111122223333:image-recipe/my-example-recipe/1.0.0\"}]}", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     image_recipe_arn: "arn:aws:imagebuilder:us-west-2:111122223333:image-recipe/my-example-recipe/1.0.0", 
    #     request_id: "3a27bb63-329e-40ab-88f2-c1638504bd35", 
    #   }
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

    # Retries a failed or canceled image build without rebuilding the phases
    # that already completed. The image re-runs asynchronously in place: the
    # same build version returns to the test or distribution phase where it
    # failed and continues from there. No new image build version is
    # created. Retry is only supported for AMI-based images.
    #
    # @option params [required, String] :image_build_version_arn
    #   The Amazon Resource Name (ARN) of the image build version that you
    #   want to retry. The image must be in the `FAILED` or `CANCELLED` state.
    #
    # @option params [required, String] :client_token
    #   A unique, case-sensitive identifier you provide to ensure that the
    #   operation runs no more than one time. If you retry a request with the
    #   same client token, Image Builder returns the original response without
    #   running the operation again. For more information, see [Ensuring
    #   idempotency][1] in the *Amazon EC2 API Reference*.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html
    #
    # @return [Types::RetryImageResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RetryImageResponse#client_token #client_token} => String
    #   * {Types::RetryImageResponse#image_build_version_arn #image_build_version_arn} => String
    #
    #
    # @example Example: Retry an image build
    #
    #   # The following example retries a cancelled image build, which resumes in place from the phase where it stopped.
    #
    #   resp = client.retry_image({
    #     client_token: "a1b2c3d4-5678-90ab-cdef-EXAMPLEfffff", 
    #     image_build_version_arn: "arn:aws:imagebuilder:us-west-2:111122223333:image/my-example-recipe/1.0.0/1", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     client_token: "a1b2c3d4-5678-90ab-cdef-EXAMPLEfffff", 
    #     image_build_version_arn: "arn:aws:imagebuilder:us-west-2:111122223333:image/my-example-recipe/1.0.0/1", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.retry_image({
    #     image_build_version_arn: "ImageBuildVersionArn", # required
    #     client_token: "ClientToken", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.client_token #=> String
    #   resp.image_build_version_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/RetryImage AWS API Documentation
    #
    # @overload retry_image(params = {})
    # @param [Hash] params ({})
    def retry_image(params = {}, options = {})
      req = build_request(:retry_image, params)
      req.send_request(options)
    end

    # Sends an action to a workflow step that has paused at a
    # `WaitForAction` step, so that image creation can continue. To find the
    # steps that are waiting for an action, call ListWaitingWorkflowSteps.
    #
    # @option params [required, String] :step_execution_id
    #   Uniquely identifies the waiting workflow step that you send the action
    #   to. To get this identifier, call ListWaitingWorkflowSteps.
    #
    # @option params [required, String] :image_build_version_arn
    #   The Amazon Resource Name (ARN) of the image build version associated
    #   with the workflow step execution. This value must match the image that
    #   owns the waiting step. If the ARN does not correspond to the image
    #   running the workflow, then the request fails with a validation error.
    #
    # @option params [required, String] :action
    #   The action to perform on the paused workflow step. `RESUME` completes
    #   the waiting step, and the workflow continues. `STOP` fails the step,
    #   and the step's `onFailure` setting determines whether the workflow
    #   continues or aborts. The workflow step must be in a waiting state to
    #   accept an action. The request fails if the step has already timed out
    #   or been actioned.
    #
    # @option params [String] :reason
    #   The reason for the action. This value is stored with the step
    #   execution record and is accessible in subsequent workflow steps via
    #   step output references.
    #
    # @option params [required, String] :client_token
    #   A unique, case-sensitive identifier you provide to ensure that the
    #   operation runs no more than one time. If you retry a request with the
    #   same client token, Image Builder returns the original response without
    #   running the operation again. For more information, see [Ensuring
    #   idempotency][1] in the *Amazon EC2 API Reference*.
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
    #
    # @example Example: Stop a workflow step that is waiting for action
    #
    #   # The following example sends the STOP action to a workflow step that has paused the image build, identified by the step
    #   # execution ID that ListWaitingWorkflowSteps returns.
    #
    #   resp = client.send_workflow_step_action({
    #     action: "STOP", 
    #     client_token: "a1b2c3d4-5678-90ab-cdef-EXAMPLE67890", 
    #     image_build_version_arn: "arn:aws:imagebuilder:us-west-2:111122223333:image/my-example-wait-recipe/1.0.0/1", 
    #     step_execution_id: "step-8eb24d7a-036e-46b5-94a3-90a5d8b5ac4a", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     client_token: "a1b2c3d4-5678-90ab-cdef-EXAMPLE67890", 
    #     image_build_version_arn: "arn:aws:imagebuilder:us-west-2:111122223333:image/my-example-wait-recipe/1.0.0/1", 
    #     step_execution_id: "step-8eb24d7a-036e-46b5-94a3-90a5d8b5ac4a", 
    #   }
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

    # Manually triggers a pipeline to create an image. You can start a build
    # this way whether the pipeline is enabled or disabled. The response
    # returns as soon as Image Builder creates the new image resource and
    # queues the build. Use the returned `imageBuildVersionArn` with
    # GetImage to track build progress.
    #
    # @option params [required, String] :image_pipeline_arn
    #   The Amazon Resource Name (ARN) of the image pipeline that you want to
    #   manually invoke.
    #
    # @option params [required, String] :client_token
    #   A unique, case-sensitive identifier you provide to ensure that the
    #   operation runs no more than one time. If you retry a request with the
    #   same client token, Image Builder returns the original response without
    #   running the operation again. For more information, see [Ensuring
    #   idempotency][1] in the *Amazon EC2 API Reference*.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html
    #
    # @option params [Hash<String,String>] :tags
    #   The tags for Image Builder to apply to the image resource that's
    #   created when pipeline execution starts.
    #
    # @return [Types::StartImagePipelineExecutionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartImagePipelineExecutionResponse#request_id #request_id} => String
    #   * {Types::StartImagePipelineExecutionResponse#client_token #client_token} => String
    #   * {Types::StartImagePipelineExecutionResponse#image_build_version_arn #image_build_version_arn} => String
    #
    #
    # @example Example: Start a pipeline build manually
    #
    #   # The following example starts a build for the specified pipeline. The response returns the ARN of the new image build
    #   # version.
    #
    #   resp = client.start_image_pipeline_execution({
    #     client_token: "a1b2c3d4-5678-90ab-cdef-EXAMPLE66666", 
    #     image_pipeline_arn: "arn:aws:imagebuilder:us-west-2:111122223333:image-pipeline/my-example-pipeline", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     client_token: "a1b2c3d4-5678-90ab-cdef-EXAMPLE66666", 
    #     image_build_version_arn: "arn:aws:imagebuilder:us-west-2:111122223333:image/my-example-recipe/1.0.0/1", 
    #     request_id: "f477f64c-9ece-4478-977d-5821f8ed051b", 
    #   }
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

    # Begins an ad-hoc state change for the specified image build version.
    # This is a one-time operation - if you schedule the update, it runs
    # only once. If the request includes underlying resources, or schedules
    # the update far enough in the future, Image Builder runs the update as
    # an asynchronous lifecycle execution and returns its identifier.
    # Otherwise, for target states other than `DELETED`, the state change
    # applies immediately. If a request that starts a lifecycle execution
    # arrives while the image already has one in progress, Image Builder
    # rejects it.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the image build version to update.
    #   The image must be in one of these terminal states: `AVAILABLE`,
    #   `DEPRECATED`, `DISABLED`, `FAILED`, or `CANCELLED`. Images with
    #   `FAILED` or `CANCELLED` status can transition only to `DELETED`.
    #
    # @option params [required, Types::ResourceState] :state
    #   Specifies the lifecycle action to take for this request. For AMI-based
    #   images, valid values are `AVAILABLE`, `DEPRECATED`, `DISABLED`, and
    #   `DELETED`. For container-based images, only `DELETED` is supported.
    #
    # @option params [String] :execution_role
    #   The name or Amazon Resource Name (ARN) of the IAM role that's used to
    #   update image state. You must provide this property together with
    #   `includeResources`. Neither is valid without the other.
    #
    # @option params [Types::ResourceStateUpdateIncludeResources] :include_resources
    #   Specifies which underlying resources to update, in addition to the
    #   Image Builder image resource itself. Snapshots and containers are only
    #   valid for the `DELETED` state. To set an image to `DELETED`, you must
    #   include its underlying resources. To delete only the Image Builder
    #   image record, use the DeleteImage operation instead.
    #
    # @option params [Types::ResourceStateUpdateExclusionRules] :exclusion_rules
    #   Rules that Image Builder evaluates against each of the image's AMIs.
    #   Matching AMIs and their snapshots are skipped. Exclusion rules only
    #   take effect when the request includes AMIs. If the target state is
    #   `DELETED` and any resource was skipped, the Image Builder image
    #   resource itself is also retained. For the `DEPRECATED` and `DISABLED`
    #   target states, Image Builder updates the image resource's state
    #   regardless of exclusions.
    #
    # @option params [Time,DateTime,Date,Integer,String] :update_at
    #   The timestamp that indicates when resources are updated by a lifecycle
    #   action. This property is valid only when the target status is
    #   `DEPRECATED`, and the value must be a future time. If you don't
    #   specify a value, Image Builder begins the state update right away. For
    #   a scheduled deprecation, included AMIs get their EC2 deprecation time
    #   set immediately, and Image Builder schedules the image resource to
    #   transition to `DEPRECATED` at that time.
    #
    # @option params [required, String] :client_token
    #   A unique, case-sensitive identifier you provide to ensure that the
    #   operation runs no more than one time. If you retry a request with the
    #   same client token, Image Builder returns the original response without
    #   running the operation again. For more information, see [Ensuring
    #   idempotency][1] in the *Amazon EC2 API Reference*.
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
    #
    # @example Example: Schedule an image build version for deprecation
    #
    #   # The following example schedules the specified image build version and its AMI to move to the DEPRECATED state at the
    #   # requested future time. It returns the ID of the lifecycle execution that applies the update.
    #
    #   resp = client.start_resource_state_update({
    #     client_token: "a1b2c3d4-5678-90ab-cdef-EXAMPLE24680", 
    #     execution_role: "arn:aws:iam::111122223333:role/my-example-state-update-role", 
    #     include_resources: {
    #       amis: true, 
    #     }, 
    #     resource_arn: "arn:aws:imagebuilder:us-west-2:111122223333:image/my-example-recipe/1.0.0/1", 
    #     state: {
    #       status: "DEPRECATED", 
    #     }, 
    #     update_at: Time.parse("2026-09-11T21:20:00Z"), 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     lifecycle_execution_id: "lce-401aefc3-a829-46f6-8fc2-91497988a503", 
    #     resource_arn: "arn:aws:imagebuilder:us-west-2:111122223333:image/my-example-recipe/1.0.0/1", 
    #   }
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
    #
    # @example Example: Add tags to a component build version
    #
    #   # The following example adds two tags to a component build version.
    #
    #   resp = client.tag_resource({
    #     resource_arn: "arn:aws:imagebuilder:us-west-2:111122223333:component/my-example-tagged-component/1.0.0/1", 
    #     tags: {
    #       "CostCenter" => "12345", 
    #       "Environment" => "Production", 
    #     }, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
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
    #
    # @example Example: Remove a tag from a resource
    #
    #   # The following example removes the CostCenter tag key from the specified component build version.
    #
    #   resp = client.untag_resource({
    #     resource_arn: "arn:aws:imagebuilder:us-west-2:111122223333:component/my-example-tagged-component/1.0.0/1", 
    #     tag_keys: [
    #       "CostCenter", 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
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

    # Updates a distribution configuration. Distribution configurations
    # define and configure the outputs for your images, including the target
    # Regions, accounts, and settings for each Region.
    #
    # <note markdown="1"> This operation doesn't support selective updates. The request
    # replaces the stored configuration, so include every setting that you
    # want to keep.
    #
    #  </note>
    #
    # @option params [required, String] :distribution_configuration_arn
    #   The Amazon Resource Name (ARN) of the distribution configuration that
    #   you want to update.
    #
    # @option params [String] :description
    #   The description of the distribution configuration.
    #
    # @option params [required, Array<Types::Distribution>] :distributions
    #   The distribution settings for the configuration. Each entry defines
    #   how output images are distributed in one target Amazon Web Services
    #   Region. A Region can appear at most once in the list. This list
    #   replaces the configuration's existing distributions entirely.
    #
    # @option params [required, String] :client_token
    #   A unique, case-sensitive identifier you provide to ensure that the
    #   operation runs no more than one time. If you retry a request with the
    #   same client token, Image Builder returns the original response without
    #   running the operation again. For more information, see [Ensuring
    #   idempotency][1] in the *Amazon EC2 API Reference*.
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
    #
    # @example Example: Update a distribution configuration
    #
    #   # The following example replaces the distribution settings for the specified configuration with a single distribution that
    #   # names the output AMI with the build date.
    #
    #   resp = client.update_distribution_configuration({
    #     client_token: "a1b2c3d4-5678-90ab-cdef-EXAMPLEccccc", 
    #     distribution_configuration_arn: "arn:aws:imagebuilder:us-west-2:111122223333:distribution-configuration/my-example-distribution", 
    #     distributions: [
    #       {
    #         ami_distribution_configuration: {
    #           name: "my-example-image-{{ imagebuilder:buildDate }}", 
    #         }, 
    #         region: "us-west-2", 
    #       }, 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     distribution_configuration_arn: "arn:aws:imagebuilder:us-west-2:111122223333:distribution-configuration/my-example-distribution", 
    #     request_id: "97d5c3e8-93d6-424c-90e0-bab18b20bf54", 
    #   }
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

    # Updates an image pipeline. Use image pipelines to automate the
    # creation and distribution of images. You must specify exactly one
    # recipe for your image, using either a `containerRecipeArn` or an
    # `imageRecipeArn`. The recipe must be the same type, image or
    # container, as the pipeline's current recipe.
    #
    # <note markdown="1"> UpdateImagePipeline does not support selective updates. The request
    # replaces the pipeline's entire configuration, so include every
    # setting that you want to keep. Any optional property that you omit is
    # removed or reset to its default.
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
    #   The Amazon Resource Name (ARN) of the image recipe that configures
    #   images created by this image pipeline. You must specify either this
    #   property or `containerRecipeArn`, but not both.
    #
    # @option params [String] :container_recipe_arn
    #   The Amazon Resource Name (ARN) of the container recipe that is used to
    #   configure images created by this container pipeline. You must specify
    #   either this property or `imageRecipeArn`, but not both.
    #
    # @option params [required, String] :infrastructure_configuration_arn
    #   The Amazon Resource Name (ARN) of the infrastructure configuration
    #   that Image Builder uses to build images created by this image
    #   pipeline.
    #
    # @option params [String] :distribution_configuration_arn
    #   The Amazon Resource Name (ARN) of the distribution configuration that
    #   Image Builder uses to configure and distribute images created by this
    #   image pipeline.
    #
    # @option params [Types::ImageTestsConfiguration] :image_tests_configuration
    #   Specifies the test settings that Image Builder applies to images that
    #   this pipeline creates. If you don't provide test settings, Image
    #   Builder stores a default configuration with image tests enabled.
    #
    # @option params [Boolean] :enhanced_image_metadata_enabled
    #   Specifies whether to collect additional information about the image
    #   being created, including the operating system (OS) version and package
    #   list. Defaults to `true`.
    #
    # @option params [Types::Schedule] :schedule
    #   The schedule of the image pipeline. Because the update replaces the
    #   entire configuration, omitting this property removes any existing
    #   schedule. The pipeline then runs only when you call
    #   StartImagePipelineExecution.
    #
    # @option params [String] :status
    #   The status of the image pipeline. Defaults to `ENABLED` when omitted.
    #   To keep a pipeline disabled, include this property set to `DISABLED`
    #   in your update request.
    #
    # @option params [required, String] :client_token
    #   A unique, case-sensitive identifier you provide to ensure that the
    #   operation runs no more than one time. If you retry a request with the
    #   same client token, Image Builder returns the original response without
    #   running the operation again. For more information, see [Ensuring
    #   idempotency][1] in the *Amazon EC2 API Reference*.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html
    #
    # @option params [Types::ImageScanningConfiguration] :image_scanning_configuration
    #   Contains settings for vulnerability scans that Amazon Inspector runs
    #   against the test instance during image creation.
    #
    # @option params [Array<Types::WorkflowConfiguration>] :workflows
    #   The array of workflow configuration objects for builds that this
    #   pipeline starts. You must also specify `executionRole` when you
    #   provide workflows.
    #
    # @option params [Types::PipelineLoggingConfiguration] :logging_configuration
    #   Specifies the logging configuration for the image pipeline. Use this
    #   to define custom CloudWatch Logs log groups for your pipeline
    #   execution logs and image build logs. The service manages log groups
    #   with names starting with `/aws/imagebuilder/` using the service-linked
    #   role. For custom log group names outside of this prefix, you must also
    #   provide an `executionRole`.
    #
    # @option params [String] :execution_role
    #   The name or Amazon Resource Name (ARN) for the IAM role you create
    #   that grants Image Builder access to perform workflow actions. If you
    #   omit this property, the pipeline reverts to the Image Builder
    #   service-linked role.
    #
    # @option params [Hash<String,String>] :image_tags
    #   The tags that Image Builder applies to the Image Builder image
    #   resource that this pipeline's scheduled executions create. These tags
    #   don't apply to the output AMI. To tag output AMIs, use `amiTags` in
    #   the pipeline's distribution configuration.
    #
    # @return [Types::UpdateImagePipelineResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateImagePipelineResponse#request_id #request_id} => String
    #   * {Types::UpdateImagePipelineResponse#client_token #client_token} => String
    #   * {Types::UpdateImagePipelineResponse#image_pipeline_arn #image_pipeline_arn} => String
    #
    #
    # @example Example: Update an image pipeline
    #
    #   # The following example changes the pipeline's schedule to build every day at 6:00 AM UTC.
    #
    #   resp = client.update_image_pipeline({
    #     client_token: "a1b2c3d4-5678-90ab-cdef-EXAMPLEddddd", 
    #     image_pipeline_arn: "arn:aws:imagebuilder:us-west-2:111122223333:image-pipeline/my-example-pipeline", 
    #     image_recipe_arn: "arn:aws:imagebuilder:us-west-2:111122223333:image-recipe/my-example-recipe/1.0.0", 
    #     infrastructure_configuration_arn: "arn:aws:imagebuilder:us-west-2:111122223333:infrastructure-configuration/my-example-infrastructure", 
    #     schedule: {
    #       pipeline_execution_start_condition: "EXPRESSION_MATCH_AND_DEPENDENCY_UPDATES_AVAILABLE", 
    #       schedule_expression: "cron(0 6 * * ? *)", 
    #     }, 
    #     status: "ENABLED", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     image_pipeline_arn: "arn:aws:imagebuilder:us-west-2:111122223333:image-pipeline/my-example-pipeline", 
    #     request_id: "7a414b2d-e462-4850-ae7a-fe25a1223e0f", 
    #   }
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
    #     image_tags: {
    #       "TagKey" => "TagValue",
    #     },
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

    # Updates an infrastructure configuration. An infrastructure
    # configuration defines the environment in which Image Builder builds
    # and tests your image.
    #
    # <note markdown="1"> This operation doesn't support selective updates. The request
    # replaces the configuration, so include every setting that you want to
    # keep. Omitted optional properties are cleared.
    #
    #  </note>
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
    #   specify one or more instance types to use for this build. Image
    #   Builder picks one of these instance types based on availability. If
    #   you don't specify instance types, Image Builder selects compatible
    #   instance types automatically. If you specify a Dedicated Host, Image
    #   Builder uses only instance types that the host supports.
    #
    # @option params [required, String] :instance_profile_name
    #   The instance profile to associate with the instance used to customize
    #   your Amazon EC2 AMI. The instance profile must exist in your account.
    #
    # @option params [Array<String>] :security_group_ids
    #   The security group IDs to associate with the instance used to
    #   customize your Amazon EC2 AMI.
    #
    # @option params [String] :subnet_id
    #   The subnet ID in which to place the instance used to customize your
    #   Amazon EC2 AMI. If you specify `subnetId`, you must also specify one
    #   or more security group IDs in `securityGroupIds`. Otherwise, the
    #   request fails.
    #
    # @option params [Types::Logging] :logging
    #   The logging configuration of the infrastructure configuration. When
    #   you configure S3 logs, Image Builder writes logs from the build and
    #   test process to the specified bucket under the key prefix.
    #
    # @option params [String] :key_pair
    #   The key pair of the infrastructure configuration. You can use this to
    #   log on to and debug the instance used to create your image.
    #
    # @option params [Boolean] :terminate_instance_on_failure
    #   Specifies whether to terminate the instance on failure. Set to false
    #   if you want Image Builder to retain the instance used to configure
    #   your AMI if the build or test phase of your workflow fails. Defaults
    #   to `true`.
    #
    # @option params [String] :sns_topic_arn
    #   The Amazon Resource Name (ARN) of the SNS topic to which Image Builder
    #   sends image build event notifications. Specify a standard topic. Image
    #   Builder doesn't support FIFO topics. Image Builder validates the
    #   topic when you create or update the configuration. You must have
    #   permission to publish to the topic.
    #
    #   <note markdown="1"> EC2 Image Builder can't send notifications to SNS topics that are
    #   encrypted using keys from other accounts. If your SNS topic is
    #   encrypted, the key must be owned by the same account that owns your
    #   Image Builder resources.
    #
    #    </note>
    #
    # @option params [Hash<String,String>] :resource_tags
    #   The metadata tags to assign to the Amazon EC2 instance that Image
    #   Builder launches during the build process. Tags are formatted as key
    #   value pairs. Tag keys can't begin with `aws:` or match one of the
    #   following reserved keys: `CreatedBy`, `Ec2ImageBuilderArn`, `Name`, or
    #   `Tags`.
    #
    # @option params [Types::InstanceMetadataOptions] :instance_metadata_options
    #   The instance metadata service (IMDS) settings that Image Builder
    #   applies to the EC2 build and test instances it launches during image
    #   creation. If you don't set these options, the EC2 launch defaults for
    #   the instance apply. For more information about instance metadata
    #   options, see one of the following links:
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
    #   The instance placement settings that define where the build and test
    #   instances that Image Builder launches during image creation run. These
    #   settings don't affect instances that you launch from the output
    #   image.
    #
    # @option params [required, String] :client_token
    #   A unique, case-sensitive identifier you provide to ensure that the
    #   operation runs no more than one time. If you retry a request with the
    #   same client token, Image Builder returns the original response without
    #   running the operation again. For more information, see [Ensuring
    #   idempotency][1] in the *Amazon EC2 API Reference*.
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
    #
    # @example Example: Update an infrastructure configuration
    #
    #   # The following example updates an infrastructure configuration to use larger instance types and to keep the build
    #   # instance running when the image build fails.
    #
    #   resp = client.update_infrastructure_configuration({
    #     client_token: "a1b2c3d4-5678-90ab-cdef-EXAMPLEbbbbb", 
    #     description: "An infrastructure configuration for Amazon Linux builds", 
    #     infrastructure_configuration_arn: "arn:aws:imagebuilder:us-west-2:111122223333:infrastructure-configuration/my-example-infrastructure", 
    #     instance_profile_name: "EC2InstanceProfileForImageBuilder", 
    #     instance_types: [
    #       "t3.large", 
    #       "t3.xlarge", 
    #     ], 
    #     terminate_instance_on_failure: false, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     infrastructure_configuration_arn: "arn:aws:imagebuilder:us-west-2:111122223333:infrastructure-configuration/my-example-infrastructure", 
    #     request_id: "ffe990d5-7720-4061-a8d6-da6a7c4a6a3e", 
    #   }
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

    # Updates the specified lifecycle policy. The request replaces the
    # existing policy configuration rather than merging changes, so
    # re-specify every setting that you want to keep. The `resourceType`
    # must match the existing policy's value.
    #
    # @option params [required, String] :lifecycle_policy_arn
    #   The Amazon Resource Name (ARN) of the lifecycle policy resource.
    #
    # @option params [String] :description
    #   Optional description for the lifecycle policy. Because the update
    #   replaces the entire configuration, omitting this property removes any
    #   existing description.
    #
    # @option params [String] :status
    #   Indicates whether the lifecycle policy resource is enabled. Defaults
    #   to `ENABLED` when omitted, so updating a disabled policy without
    #   setting this property re-enables it.
    #
    # @option params [required, String] :execution_role
    #   The name or Amazon Resource Name (ARN) for the IAM role you create
    #   that grants Image Builder access to run lifecycle actions.
    #
    # @option params [required, String] :resource_type
    #   The type of image resource that the lifecycle policy applies to. The
    #   value must match the policy's existing resource type. You can't
    #   change the resource type of an existing lifecycle policy.
    #
    # @option params [required, Array<Types::LifecyclePolicyDetail>] :policy_details
    #   The configuration details for a lifecycle policy resource.
    #
    # @option params [required, Types::LifecyclePolicyResourceSelection] :resource_selection
    #   Selection criteria for resources that the lifecycle policy applies to.
    #   You must specify exactly one selection criteria: either recipes or a
    #   tag map, not both.
    #
    # @option params [required, String] :client_token
    #   A unique, case-sensitive identifier you provide to ensure that the
    #   operation runs no more than one time. If you retry a request with the
    #   same client token, Image Builder returns the original response without
    #   running the operation again. For more information, see [Ensuring
    #   idempotency][1] in the *Amazon EC2 API Reference*.
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
    #
    # @example Example: Update a lifecycle policy
    #
    #   # The following example updates a lifecycle policy to delete AMI images and their associated snapshots after 12 months,
    #   # retaining the 3 most recent images.
    #
    #   resp = client.update_lifecycle_policy({
    #     client_token: "a1b2c3d4-5678-90ab-cdef-EXAMPLEaaaaa", 
    #     description: "Deletes AMI images and their snapshots after 12 months, retaining the 3 most recent", 
    #     execution_role: "arn:aws:iam::111122223333:role/my-example-lifecycle-role", 
    #     lifecycle_policy_arn: "arn:aws:imagebuilder:us-west-2:111122223333:lifecycle-policy/my-example-policy", 
    #     policy_details: [
    #       {
    #         action: {
    #           type: "DELETE", 
    #           include_resources: {
    #             amis: true, 
    #             snapshots: true, 
    #           }, 
    #         }, 
    #         filter: {
    #           type: "AGE", 
    #           value: 12, 
    #           retain_at_least: 3, 
    #           unit: "MONTHS", 
    #         }, 
    #       }, 
    #     ], 
    #     resource_selection: {
    #       tag_map: {
    #         "environment" => "production", 
    #       }, 
    #     }, 
    #     resource_type: "AMI_IMAGE", 
    #     status: "ENABLED", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     lifecycle_policy_arn: "arn:aws:imagebuilder:us-west-2:111122223333:lifecycle-policy/my-example-policy", 
    #   }
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
    #           semantic_version: "WildcardVersionNumber", # required
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
      context[:gem_version] = '1.113.0'
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
