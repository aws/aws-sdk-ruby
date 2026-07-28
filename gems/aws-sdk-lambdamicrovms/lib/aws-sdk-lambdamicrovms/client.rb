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

module Aws::LambdaMicrovms
  # An API client for LambdaMicrovms.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::LambdaMicrovms::Client.new(
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

    @identifier = :lambdamicrovms

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
    add_plugin(Aws::LambdaMicrovms::Plugins::Endpoints)

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
    #   @option options [Aws::LambdaMicrovms::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::LambdaMicrovms::EndpointParameters`.
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

    # Creates an authentication token for accessing a running MicroVM. The
    # token grants access to the specified ports on the MicroVM endpoint.
    #
    # @option params [required, String] :microvm_identifier
    #   The ID of the MicroVM to create an authentication token for.
    #
    # @option params [required, Integer] :expiration_in_minutes
    #   The duration in minutes before the authentication token expires.
    #   Maximum: 60 minutes.
    #
    # @option params [required, Array<Types::PortSpecification>] :allowed_ports
    #   The list of port specifications that the authentication token grants
    #   access to on the MicroVM.
    #
    # @return [Types::CreateMicrovmAuthTokenResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateMicrovmAuthTokenResponse#auth_token #auth_token} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_microvm_auth_token({
    #     microvm_identifier: "MicrovmIdentifier", # required
    #     expiration_in_minutes: 1, # required
    #     allowed_ports: [ # required
    #       {
    #         port: 1,
    #         range: {
    #           start_port: 1, # required
    #           end_port: 1, # required
    #         },
    #         all_ports: {
    #         },
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.auth_token #=> Hash
    #   resp.auth_token["AuthTokenKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-microvms-2025-09-09/CreateMicrovmAuthToken AWS API Documentation
    #
    # @overload create_microvm_auth_token(params = {})
    # @param [Hash] params ({})
    def create_microvm_auth_token(params = {}, options = {})
      req = build_request(:create_microvm_auth_token, params)
      req.send_request(options)
    end

    # Creates a MicroVM image from the specified code artifact and base
    # image. The build is asynchronous — the image transitions from CREATING
    # to CREATED on success, or CREATE\_FAILED on failure. Use
    # GetMicrovmImage to poll for completion.
    #
    # @option params [required, String] :base_image_arn
    #   The ARN of the Lambda-managed base MicroVM image to build upon. Use
    #   ListManagedMicrovmImages to discover available base images.
    #
    # @option params [String] :base_image_version
    #   The specific version of the base MicroVM image to use.
    #
    # @option params [required, String] :build_role_arn
    #   The ARN of the IAM role assumed during the image build process. This
    #   role must have permissions to access the code artifact and any
    #   required resources.
    #
    # @option params [String] :description
    #   A description of the MicroVM image.
    #
    # @option params [required, Types::CodeArtifact] :code_artifact
    #   The code artifact containing the application code and metadata for the
    #   MicroVM image.
    #
    # @option params [Types::Logging] :logging
    #   The logging configuration for build-time and runtime logs. Specify
    #   \{"cloudWatch": \{"logGroup": "..."}} to stream logs to a custom
    #   CloudWatch log group, or \{"disabled": \{}} to turn off logging.
    #
    # @option params [Array<String>] :egress_network_connectors
    #   The list of egress network connectors available to the MicroVM at
    #   runtime.
    #
    # @option params [Array<Types::CpuConfiguration>] :cpu_configurations
    #   The list of supported CPU configurations for the MicroVM.
    #
    # @option params [Array<Types::Resources>] :resources
    #   The resource requirements for the MicroVM.
    #
    # @option params [Array<String>] :additional_os_capabilities
    #   Additional OS capabilities granted to the MicroVM runtime environment.
    #
    # @option params [Types::Hooks] :hooks
    #   Lifecycle hook configuration for MicroVMs and MicroVM images.
    #
    # @option params [Hash<String,String>] :environment_variables
    #   Environment variables set in the MicroVM runtime environment.
    #
    # @option params [required, String] :name
    #   The name of the MicroVM image. Must be unique within the AWS account.
    #
    # @option params [Hash<String,String>] :tags
    #   A set of key-value pairs that you can attach to the resource. Use tags
    #   to categorize resources for cost allocation, access control (ABAC),
    #   and organization.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier you provide to ensure the
    #   idempotency of the request. If you retry a request that completed
    #   successfully using the same client token, the operation returns the
    #   successful response without performing any further actions.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreateMicrovmImageResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateMicrovmImageResponse#image_arn #image_arn} => String
    #   * {Types::CreateMicrovmImageResponse#name #name} => String
    #   * {Types::CreateMicrovmImageResponse#state #state} => String
    #   * {Types::CreateMicrovmImageResponse#latest_active_image_version #latest_active_image_version} => String
    #   * {Types::CreateMicrovmImageResponse#latest_failed_image_version #latest_failed_image_version} => String
    #   * {Types::CreateMicrovmImageResponse#created_at #created_at} => Time
    #   * {Types::CreateMicrovmImageResponse#base_image_arn #base_image_arn} => String
    #   * {Types::CreateMicrovmImageResponse#base_image_version #base_image_version} => String
    #   * {Types::CreateMicrovmImageResponse#build_role_arn #build_role_arn} => String
    #   * {Types::CreateMicrovmImageResponse#description #description} => String
    #   * {Types::CreateMicrovmImageResponse#code_artifact #code_artifact} => Types::CodeArtifact
    #   * {Types::CreateMicrovmImageResponse#logging #logging} => Types::Logging
    #   * {Types::CreateMicrovmImageResponse#egress_network_connectors #egress_network_connectors} => Array&lt;String&gt;
    #   * {Types::CreateMicrovmImageResponse#cpu_configurations #cpu_configurations} => Array&lt;Types::CpuConfiguration&gt;
    #   * {Types::CreateMicrovmImageResponse#resources #resources} => Array&lt;Types::Resources&gt;
    #   * {Types::CreateMicrovmImageResponse#additional_os_capabilities #additional_os_capabilities} => Array&lt;String&gt;
    #   * {Types::CreateMicrovmImageResponse#hooks #hooks} => Types::Hooks
    #   * {Types::CreateMicrovmImageResponse#environment_variables #environment_variables} => Hash&lt;String,String&gt;
    #   * {Types::CreateMicrovmImageResponse#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::CreateMicrovmImageResponse#updated_at #updated_at} => Time
    #   * {Types::CreateMicrovmImageResponse#image_version #image_version} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_microvm_image({
    #     base_image_arn: "NonBlankString", # required
    #     base_image_version: "Version",
    #     build_role_arn: "RoleArn", # required
    #     description: "String",
    #     code_artifact: { # required
    #       uri: "NonBlankString",
    #     },
    #     logging: {
    #       disabled: {
    #       },
    #       cloud_watch: {
    #         log_group: "CloudWatchLoggingLogGroupString",
    #         log_stream: "CloudWatchLoggingLogStreamString",
    #       },
    #     },
    #     egress_network_connectors: ["NetworkConnector"],
    #     cpu_configurations: [
    #       {
    #         architecture: "ARM_64", # required, accepts ARM_64
    #       },
    #     ],
    #     resources: [
    #       {
    #         minimum_memory_in_mi_b: 1, # required
    #       },
    #     ],
    #     additional_os_capabilities: ["ALL"], # accepts ALL
    #     hooks: {
    #       port: 1,
    #       microvm_hooks: {
    #         run: "DISABLED", # accepts DISABLED, ENABLED
    #         run_timeout_in_seconds: 1,
    #         resume: "DISABLED", # accepts DISABLED, ENABLED
    #         resume_timeout_in_seconds: 1,
    #         suspend: "DISABLED", # accepts DISABLED, ENABLED
    #         suspend_timeout_in_seconds: 1,
    #         terminate: "DISABLED", # accepts DISABLED, ENABLED
    #         terminate_timeout_in_seconds: 1,
    #       },
    #       microvm_image_hooks: {
    #         ready: "DISABLED", # accepts DISABLED, ENABLED
    #         ready_timeout_in_seconds: 1,
    #         validate: "DISABLED", # accepts DISABLED, ENABLED
    #         validate_timeout_in_seconds: 1,
    #       },
    #     },
    #     environment_variables: {
    #       "EnvironmentVariableKey" => "EnvironmentVariableValue",
    #     },
    #     name: "ImageName", # required
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     client_token: "CreateMicrovmImageRequestClientTokenString",
    #   })
    #
    # @example Response structure
    #
    #   resp.image_arn #=> String
    #   resp.name #=> String
    #   resp.state #=> String, one of "CREATING", "CREATED", "CREATE_FAILED", "UPDATING", "UPDATED", "UPDATE_FAILED", "DELETING", "DELETE_FAILED", "DELETED"
    #   resp.latest_active_image_version #=> String
    #   resp.latest_failed_image_version #=> String
    #   resp.created_at #=> Time
    #   resp.base_image_arn #=> String
    #   resp.base_image_version #=> String
    #   resp.build_role_arn #=> String
    #   resp.description #=> String
    #   resp.code_artifact.uri #=> String
    #   resp.logging.cloud_watch.log_group #=> String
    #   resp.logging.cloud_watch.log_stream #=> String
    #   resp.egress_network_connectors #=> Array
    #   resp.egress_network_connectors[0] #=> String
    #   resp.cpu_configurations #=> Array
    #   resp.cpu_configurations[0].architecture #=> String, one of "ARM_64"
    #   resp.resources #=> Array
    #   resp.resources[0].minimum_memory_in_mi_b #=> Integer
    #   resp.additional_os_capabilities #=> Array
    #   resp.additional_os_capabilities[0] #=> String, one of "ALL"
    #   resp.hooks.port #=> Integer
    #   resp.hooks.microvm_hooks.run #=> String, one of "DISABLED", "ENABLED"
    #   resp.hooks.microvm_hooks.run_timeout_in_seconds #=> Integer
    #   resp.hooks.microvm_hooks.resume #=> String, one of "DISABLED", "ENABLED"
    #   resp.hooks.microvm_hooks.resume_timeout_in_seconds #=> Integer
    #   resp.hooks.microvm_hooks.suspend #=> String, one of "DISABLED", "ENABLED"
    #   resp.hooks.microvm_hooks.suspend_timeout_in_seconds #=> Integer
    #   resp.hooks.microvm_hooks.terminate #=> String, one of "DISABLED", "ENABLED"
    #   resp.hooks.microvm_hooks.terminate_timeout_in_seconds #=> Integer
    #   resp.hooks.microvm_image_hooks.ready #=> String, one of "DISABLED", "ENABLED"
    #   resp.hooks.microvm_image_hooks.ready_timeout_in_seconds #=> Integer
    #   resp.hooks.microvm_image_hooks.validate #=> String, one of "DISABLED", "ENABLED"
    #   resp.hooks.microvm_image_hooks.validate_timeout_in_seconds #=> Integer
    #   resp.environment_variables #=> Hash
    #   resp.environment_variables["EnvironmentVariableKey"] #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #   resp.updated_at #=> Time
    #   resp.image_version #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-microvms-2025-09-09/CreateMicrovmImage AWS API Documentation
    #
    # @overload create_microvm_image(params = {})
    # @param [Hash] params ({})
    def create_microvm_image(params = {}, options = {})
      req = build_request(:create_microvm_image, params)
      req.send_request(options)
    end

    # Creates a shell authentication token for interactive shell access to a
    # running MicroVM. The MicroVM must have been run with the
    # SHELL\_INGRESS network connector attached.
    #
    # @option params [required, String] :microvm_identifier
    #   The ID of the MicroVM to create a shell authentication token for.
    #
    # @option params [required, Integer] :expiration_in_minutes
    #   The duration in minutes before the shell authentication token expires.
    #
    # @return [Types::CreateMicrovmShellAuthTokenResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateMicrovmShellAuthTokenResponse#auth_token #auth_token} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_microvm_shell_auth_token({
    #     microvm_identifier: "MicrovmIdentifier", # required
    #     expiration_in_minutes: 1, # required
    #   })
    #
    # @example Response structure
    #
    #   resp.auth_token #=> Hash
    #   resp.auth_token["AuthTokenKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-microvms-2025-09-09/CreateMicrovmShellAuthToken AWS API Documentation
    #
    # @overload create_microvm_shell_auth_token(params = {})
    # @param [Hash] params ({})
    def create_microvm_shell_auth_token(params = {}, options = {})
      req = build_request(:create_microvm_shell_auth_token, params)
      req.send_request(options)
    end

    # Deletes a MicroVM image. This operation is idempotent; deleting an
    # image that has already been deleted succeeds without error.
    #
    # @option params [required, String] :image_identifier
    #   The unique identifier (ARN or ID) of the MicroVM image to delete.
    #
    # @return [Types::DeleteMicrovmImageOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteMicrovmImageOutput#image_identifier #image_identifier} => String
    #   * {Types::DeleteMicrovmImageOutput#state #state} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_microvm_image({
    #     image_identifier: "MicrovmImageIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.image_identifier #=> String
    #   resp.state #=> String, one of "CREATING", "CREATED", "CREATE_FAILED", "UPDATING", "UPDATED", "UPDATE_FAILED", "DELETING", "DELETE_FAILED", "DELETED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-microvms-2025-09-09/DeleteMicrovmImage AWS API Documentation
    #
    # @overload delete_microvm_image(params = {})
    # @param [Hash] params ({})
    def delete_microvm_image(params = {}, options = {})
      req = build_request(:delete_microvm_image, params)
      req.send_request(options)
    end

    # Deletes a specific version of a MicroVM image. This operation is
    # idempotent; deleting a version that has already been deleted succeeds
    # without error.
    #
    # @option params [required, String] :image_identifier
    #   The unique identifier (ARN or ID) of the MicroVM image.
    #
    # @option params [required, String] :image_version
    #   The version of the MicroVM image to delete.
    #
    # @return [Types::DeleteMicrovmImageVersionOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteMicrovmImageVersionOutput#image_identifier #image_identifier} => String
    #   * {Types::DeleteMicrovmImageVersionOutput#image_version #image_version} => String
    #   * {Types::DeleteMicrovmImageVersionOutput#state #state} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_microvm_image_version({
    #     image_identifier: "MicrovmImageIdentifier", # required
    #     image_version: "NonBlankString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.image_identifier #=> String
    #   resp.image_version #=> String
    #   resp.state #=> String, one of "PENDING", "IN_PROGRESS", "SUCCESSFUL", "FAILED", "DELETING", "DELETED", "DELETE_FAILED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-microvms-2025-09-09/DeleteMicrovmImageVersion AWS API Documentation
    #
    # @overload delete_microvm_image_version(params = {})
    # @param [Hash] params ({})
    def delete_microvm_image_version(params = {}, options = {})
      req = build_request(:delete_microvm_image_version, params)
      req.send_request(options)
    end

    # Retrieves the details of a specific MicroVM, including its state,
    # endpoint, image information, and configuration. The state field is
    # eventually consistent — determine readiness by connecting to the
    # endpoint.
    #
    # @option params [required, String] :microvm_identifier
    #   The ID of the MicroVM to retrieve.
    #
    # @return [Types::GetMicrovmResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetMicrovmResponse#microvm_id #microvm_id} => String
    #   * {Types::GetMicrovmResponse#state #state} => String
    #   * {Types::GetMicrovmResponse#endpoint #endpoint} => String
    #   * {Types::GetMicrovmResponse#image_arn #image_arn} => String
    #   * {Types::GetMicrovmResponse#image_version #image_version} => String
    #   * {Types::GetMicrovmResponse#execution_role_arn #execution_role_arn} => String
    #   * {Types::GetMicrovmResponse#idle_policy #idle_policy} => Types::IdlePolicy
    #   * {Types::GetMicrovmResponse#maximum_duration_in_seconds #maximum_duration_in_seconds} => Integer
    #   * {Types::GetMicrovmResponse#started_at #started_at} => Time
    #   * {Types::GetMicrovmResponse#terminated_at #terminated_at} => Time
    #   * {Types::GetMicrovmResponse#state_reason #state_reason} => String
    #   * {Types::GetMicrovmResponse#ingress_network_connectors #ingress_network_connectors} => Array&lt;String&gt;
    #   * {Types::GetMicrovmResponse#egress_network_connectors #egress_network_connectors} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_microvm({
    #     microvm_identifier: "MicrovmIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.microvm_id #=> String
    #   resp.state #=> String, one of "PENDING", "RUNNING", "SUSPENDING", "SUSPENDED", "TERMINATING", "TERMINATED"
    #   resp.endpoint #=> String
    #   resp.image_arn #=> String
    #   resp.image_version #=> String
    #   resp.execution_role_arn #=> String
    #   resp.idle_policy.max_idle_duration_seconds #=> Integer
    #   resp.idle_policy.suspended_duration_seconds #=> Integer
    #   resp.idle_policy.auto_resume_enabled #=> Boolean
    #   resp.maximum_duration_in_seconds #=> Integer
    #   resp.started_at #=> Time
    #   resp.terminated_at #=> Time
    #   resp.state_reason #=> String
    #   resp.ingress_network_connectors #=> Array
    #   resp.ingress_network_connectors[0] #=> String
    #   resp.egress_network_connectors #=> Array
    #   resp.egress_network_connectors[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-microvms-2025-09-09/GetMicrovm AWS API Documentation
    #
    # @overload get_microvm(params = {})
    # @param [Hash] params ({})
    def get_microvm(params = {}, options = {})
      req = build_request(:get_microvm, params)
      req.send_request(options)
    end

    # Retrieves the details of a MicroVM image, including its state,
    # versions, and configuration.
    #
    # @option params [required, String] :image_identifier
    #   The unique identifier (ARN or ID) of the MicroVM image to retrieve.
    #
    # @return [Types::GetMicrovmImageOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetMicrovmImageOutput#image_arn #image_arn} => String
    #   * {Types::GetMicrovmImageOutput#name #name} => String
    #   * {Types::GetMicrovmImageOutput#state #state} => String
    #   * {Types::GetMicrovmImageOutput#latest_active_image_version #latest_active_image_version} => String
    #   * {Types::GetMicrovmImageOutput#latest_failed_image_version #latest_failed_image_version} => String
    #   * {Types::GetMicrovmImageOutput#created_at #created_at} => Time
    #   * {Types::GetMicrovmImageOutput#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::GetMicrovmImageOutput#updated_at #updated_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_microvm_image({
    #     image_identifier: "MicrovmImageIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.image_arn #=> String
    #   resp.name #=> String
    #   resp.state #=> String, one of "CREATING", "CREATED", "CREATE_FAILED", "UPDATING", "UPDATED", "UPDATE_FAILED", "DELETING", "DELETE_FAILED", "DELETED"
    #   resp.latest_active_image_version #=> String
    #   resp.latest_failed_image_version #=> String
    #   resp.created_at #=> Time
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #   resp.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-microvms-2025-09-09/GetMicrovmImage AWS API Documentation
    #
    # @overload get_microvm_image(params = {})
    # @param [Hash] params ({})
    def get_microvm_image(params = {}, options = {})
      req = build_request(:get_microvm_image, params)
      req.send_request(options)
    end

    # Retrieves the details of a specific MicroVM image build, including its
    # state, target architecture, and snapshot information.
    #
    # @option params [required, String] :image_identifier
    #   The unique identifier (ARN or ID) of the MicroVM image.
    #
    # @option params [required, String] :image_version
    #   The version of the MicroVM image.
    #
    # @option params [required, String] :build_id
    #   The unique identifier of the build to retrieve.
    #
    # @return [Types::GetMicrovmImageBuildOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetMicrovmImageBuildOutput#image_arn #image_arn} => String
    #   * {Types::GetMicrovmImageBuildOutput#image_version #image_version} => String
    #   * {Types::GetMicrovmImageBuildOutput#build_id #build_id} => String
    #   * {Types::GetMicrovmImageBuildOutput#build_state #build_state} => String
    #   * {Types::GetMicrovmImageBuildOutput#architecture #architecture} => String
    #   * {Types::GetMicrovmImageBuildOutput#chipset #chipset} => String
    #   * {Types::GetMicrovmImageBuildOutput#chipset_generation #chipset_generation} => String
    #   * {Types::GetMicrovmImageBuildOutput#state_reason #state_reason} => String
    #   * {Types::GetMicrovmImageBuildOutput#created_at #created_at} => Time
    #   * {Types::GetMicrovmImageBuildOutput#snapshot_build #snapshot_build} => Types::SnapshotBuild
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_microvm_image_build({
    #     image_identifier: "MicrovmImageIdentifier", # required
    #     image_version: "NonBlankString", # required
    #     build_id: "NonBlankString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.image_arn #=> String
    #   resp.image_version #=> String
    #   resp.build_id #=> String
    #   resp.build_state #=> String, one of "PENDING", "IN_PROGRESS", "SUCCESSFUL", "FAILED"
    #   resp.architecture #=> String, one of "ARM_64"
    #   resp.chipset #=> String, one of "GRAVITON"
    #   resp.chipset_generation #=> String
    #   resp.state_reason #=> String
    #   resp.created_at #=> Time
    #   resp.snapshot_build.memory_snapshot_size_in_bytes #=> Integer
    #   resp.snapshot_build.code_install_size_in_bytes #=> Integer
    #   resp.snapshot_build.disk_snapshot_size_in_bytes #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-microvms-2025-09-09/GetMicrovmImageBuild AWS API Documentation
    #
    # @overload get_microvm_image_build(params = {})
    # @param [Hash] params ({})
    def get_microvm_image_build(params = {}, options = {})
      req = build_request(:get_microvm_image_build, params)
      req.send_request(options)
    end

    # Retrieves the details of a specific version of a MicroVM image,
    # including its configuration, state, and build information.
    #
    # @option params [required, String] :image_identifier
    #   The unique identifier (ARN or ID) of the MicroVM image.
    #
    # @option params [required, String] :image_version
    #   The version of the MicroVM image to retrieve.
    #
    # @return [Types::GetMicrovmImageVersionOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetMicrovmImageVersionOutput#base_image_arn #base_image_arn} => String
    #   * {Types::GetMicrovmImageVersionOutput#base_image_version #base_image_version} => String
    #   * {Types::GetMicrovmImageVersionOutput#build_role_arn #build_role_arn} => String
    #   * {Types::GetMicrovmImageVersionOutput#description #description} => String
    #   * {Types::GetMicrovmImageVersionOutput#code_artifact #code_artifact} => Types::CodeArtifact
    #   * {Types::GetMicrovmImageVersionOutput#logging #logging} => Types::Logging
    #   * {Types::GetMicrovmImageVersionOutput#egress_network_connectors #egress_network_connectors} => Array&lt;String&gt;
    #   * {Types::GetMicrovmImageVersionOutput#cpu_configurations #cpu_configurations} => Array&lt;Types::CpuConfiguration&gt;
    #   * {Types::GetMicrovmImageVersionOutput#resources #resources} => Array&lt;Types::Resources&gt;
    #   * {Types::GetMicrovmImageVersionOutput#additional_os_capabilities #additional_os_capabilities} => Array&lt;String&gt;
    #   * {Types::GetMicrovmImageVersionOutput#hooks #hooks} => Types::Hooks
    #   * {Types::GetMicrovmImageVersionOutput#environment_variables #environment_variables} => Hash&lt;String,String&gt;
    #   * {Types::GetMicrovmImageVersionOutput#image_arn #image_arn} => String
    #   * {Types::GetMicrovmImageVersionOutput#image_version #image_version} => String
    #   * {Types::GetMicrovmImageVersionOutput#state #state} => String
    #   * {Types::GetMicrovmImageVersionOutput#status #status} => String
    #   * {Types::GetMicrovmImageVersionOutput#created_at #created_at} => Time
    #   * {Types::GetMicrovmImageVersionOutput#updated_at #updated_at} => Time
    #   * {Types::GetMicrovmImageVersionOutput#state_reason #state_reason} => String
    #   * {Types::GetMicrovmImageVersionOutput#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_microvm_image_version({
    #     image_identifier: "MicrovmImageIdentifier", # required
    #     image_version: "NonBlankString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.base_image_arn #=> String
    #   resp.base_image_version #=> String
    #   resp.build_role_arn #=> String
    #   resp.description #=> String
    #   resp.code_artifact.uri #=> String
    #   resp.logging.cloud_watch.log_group #=> String
    #   resp.logging.cloud_watch.log_stream #=> String
    #   resp.egress_network_connectors #=> Array
    #   resp.egress_network_connectors[0] #=> String
    #   resp.cpu_configurations #=> Array
    #   resp.cpu_configurations[0].architecture #=> String, one of "ARM_64"
    #   resp.resources #=> Array
    #   resp.resources[0].minimum_memory_in_mi_b #=> Integer
    #   resp.additional_os_capabilities #=> Array
    #   resp.additional_os_capabilities[0] #=> String, one of "ALL"
    #   resp.hooks.port #=> Integer
    #   resp.hooks.microvm_hooks.run #=> String, one of "DISABLED", "ENABLED"
    #   resp.hooks.microvm_hooks.run_timeout_in_seconds #=> Integer
    #   resp.hooks.microvm_hooks.resume #=> String, one of "DISABLED", "ENABLED"
    #   resp.hooks.microvm_hooks.resume_timeout_in_seconds #=> Integer
    #   resp.hooks.microvm_hooks.suspend #=> String, one of "DISABLED", "ENABLED"
    #   resp.hooks.microvm_hooks.suspend_timeout_in_seconds #=> Integer
    #   resp.hooks.microvm_hooks.terminate #=> String, one of "DISABLED", "ENABLED"
    #   resp.hooks.microvm_hooks.terminate_timeout_in_seconds #=> Integer
    #   resp.hooks.microvm_image_hooks.ready #=> String, one of "DISABLED", "ENABLED"
    #   resp.hooks.microvm_image_hooks.ready_timeout_in_seconds #=> Integer
    #   resp.hooks.microvm_image_hooks.validate #=> String, one of "DISABLED", "ENABLED"
    #   resp.hooks.microvm_image_hooks.validate_timeout_in_seconds #=> Integer
    #   resp.environment_variables #=> Hash
    #   resp.environment_variables["EnvironmentVariableKey"] #=> String
    #   resp.image_arn #=> String
    #   resp.image_version #=> String
    #   resp.state #=> String, one of "PENDING", "IN_PROGRESS", "SUCCESSFUL", "FAILED", "DELETING", "DELETED", "DELETE_FAILED"
    #   resp.status #=> String, one of "ACTIVE", "INACTIVE"
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #   resp.state_reason #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-microvms-2025-09-09/GetMicrovmImageVersion AWS API Documentation
    #
    # @overload get_microvm_image_version(params = {})
    # @param [Hash] params ({})
    def get_microvm_image_version(params = {}, options = {})
      req = build_request(:get_microvm_image_version, params)
      req.send_request(options)
    end

    # Lists versions of a managed MicroVM image. We recommend using
    # pagination to ensure that the operation returns quickly and
    # successfully.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call.
    #
    # @option params [String] :next_token
    #   The pagination token from a previous call. Use this token to retrieve
    #   the next page of results.
    #
    # @option params [required, String] :image_identifier
    #   The unique identifier (ARN or ID) of the managed MicroVM image to list
    #   versions for.
    #
    # @return [Types::ListManagedMicrovmImageVersionsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListManagedMicrovmImageVersionsOutput#next_token #next_token} => String
    #   * {Types::ListManagedMicrovmImageVersionsOutput#items #items} => Array&lt;Types::ManagedMicrovmImageVersion&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_managed_microvm_image_versions({
    #     max_results: 1,
    #     next_token: "String",
    #     image_identifier: "MicrovmImageIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.items #=> Array
    #   resp.items[0].image_arn #=> String
    #   resp.items[0].image_version #=> String
    #   resp.items[0].created_at #=> Time
    #   resp.items[0].updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-microvms-2025-09-09/ListManagedMicrovmImageVersions AWS API Documentation
    #
    # @overload list_managed_microvm_image_versions(params = {})
    # @param [Hash] params ({})
    def list_managed_microvm_image_versions(params = {}, options = {})
      req = build_request(:list_managed_microvm_image_versions, params)
      req.send_request(options)
    end

    # Lists AWS managed MicroVM images available for use as base images. We
    # recommend using pagination to ensure that the operation returns
    # quickly and successfully.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call.
    #
    # @option params [String] :next_token
    #   The pagination token from a previous call. Use this token to retrieve
    #   the next page of results.
    #
    # @return [Types::ListManagedMicrovmImagesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListManagedMicrovmImagesOutput#next_token #next_token} => String
    #   * {Types::ListManagedMicrovmImagesOutput#items #items} => Array&lt;Types::ManagedMicrovmImageSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_managed_microvm_images({
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.items #=> Array
    #   resp.items[0].image_arn #=> String
    #   resp.items[0].created_at #=> Time
    #   resp.items[0].updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-microvms-2025-09-09/ListManagedMicrovmImages AWS API Documentation
    #
    # @overload list_managed_microvm_images(params = {})
    # @param [Hash] params ({})
    def list_managed_microvm_images(params = {}, options = {})
      req = build_request(:list_managed_microvm_images, params)
      req.send_request(options)
    end

    # Lists builds for a MicroVM image version with optional filtering by
    # architecture and chipset. We recommend using pagination to ensure that
    # the operation returns quickly and successfully.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call.
    #
    # @option params [String] :next_token
    #   The pagination token from a previous call. Use this token to retrieve
    #   the next page of results.
    #
    # @option params [required, String] :image_identifier
    #   The unique identifier (ARN or ID) of the MicroVM image.
    #
    # @option params [required, String] :image_version
    #   The version of the MicroVM image to list builds for.
    #
    # @option params [String] :architecture
    #   Filters builds by target CPU architecture.
    #
    # @option params [String] :chipset
    #   Filters builds by target chipset.
    #
    # @option params [String] :chipset_generation
    #   Filters builds by target chipset generation.
    #
    # @return [Types::ListMicrovmImageBuildsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListMicrovmImageBuildsOutput#next_token #next_token} => String
    #   * {Types::ListMicrovmImageBuildsOutput#items #items} => Array&lt;Types::MicrovmImageBuildSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_microvm_image_builds({
    #     max_results: 1,
    #     next_token: "String",
    #     image_identifier: "MicrovmImageIdentifier", # required
    #     image_version: "NonBlankString", # required
    #     architecture: "ARM_64", # accepts ARM_64
    #     chipset: "GRAVITON", # accepts GRAVITON
    #     chipset_generation: "NonBlankString",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.items #=> Array
    #   resp.items[0].image_arn #=> String
    #   resp.items[0].image_version #=> String
    #   resp.items[0].build_id #=> String
    #   resp.items[0].build_state #=> String, one of "PENDING", "IN_PROGRESS", "SUCCESSFUL", "FAILED"
    #   resp.items[0].architecture #=> String, one of "ARM_64"
    #   resp.items[0].chipset #=> String, one of "GRAVITON"
    #   resp.items[0].chipset_generation #=> String
    #   resp.items[0].state_reason #=> String
    #   resp.items[0].created_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-microvms-2025-09-09/ListMicrovmImageBuilds AWS API Documentation
    #
    # @overload list_microvm_image_builds(params = {})
    # @param [Hash] params ({})
    def list_microvm_image_builds(params = {}, options = {})
      req = build_request(:list_microvm_image_builds, params)
      req.send_request(options)
    end

    # Lists versions of a MicroVM image. We recommend using pagination to
    # ensure that the operation returns quickly and successfully.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call.
    #
    # @option params [String] :next_token
    #   The pagination token from a previous call. Use this token to retrieve
    #   the next page of results.
    #
    # @option params [required, String] :image_identifier
    #   The unique identifier (ARN or ID) of the MicroVM image to list
    #   versions for.
    #
    # @return [Types::ListMicrovmImageVersionsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListMicrovmImageVersionsOutput#next_token #next_token} => String
    #   * {Types::ListMicrovmImageVersionsOutput#items #items} => Array&lt;Types::MicrovmImageVersionSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_microvm_image_versions({
    #     max_results: 1,
    #     next_token: "String",
    #     image_identifier: "MicrovmImageIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.items #=> Array
    #   resp.items[0].base_image_arn #=> String
    #   resp.items[0].base_image_version #=> String
    #   resp.items[0].build_role_arn #=> String
    #   resp.items[0].description #=> String
    #   resp.items[0].code_artifact.uri #=> String
    #   resp.items[0].logging.cloud_watch.log_group #=> String
    #   resp.items[0].logging.cloud_watch.log_stream #=> String
    #   resp.items[0].egress_network_connectors #=> Array
    #   resp.items[0].egress_network_connectors[0] #=> String
    #   resp.items[0].cpu_configurations #=> Array
    #   resp.items[0].cpu_configurations[0].architecture #=> String, one of "ARM_64"
    #   resp.items[0].resources #=> Array
    #   resp.items[0].resources[0].minimum_memory_in_mi_b #=> Integer
    #   resp.items[0].additional_os_capabilities #=> Array
    #   resp.items[0].additional_os_capabilities[0] #=> String, one of "ALL"
    #   resp.items[0].hooks.port #=> Integer
    #   resp.items[0].hooks.microvm_hooks.run #=> String, one of "DISABLED", "ENABLED"
    #   resp.items[0].hooks.microvm_hooks.run_timeout_in_seconds #=> Integer
    #   resp.items[0].hooks.microvm_hooks.resume #=> String, one of "DISABLED", "ENABLED"
    #   resp.items[0].hooks.microvm_hooks.resume_timeout_in_seconds #=> Integer
    #   resp.items[0].hooks.microvm_hooks.suspend #=> String, one of "DISABLED", "ENABLED"
    #   resp.items[0].hooks.microvm_hooks.suspend_timeout_in_seconds #=> Integer
    #   resp.items[0].hooks.microvm_hooks.terminate #=> String, one of "DISABLED", "ENABLED"
    #   resp.items[0].hooks.microvm_hooks.terminate_timeout_in_seconds #=> Integer
    #   resp.items[0].hooks.microvm_image_hooks.ready #=> String, one of "DISABLED", "ENABLED"
    #   resp.items[0].hooks.microvm_image_hooks.ready_timeout_in_seconds #=> Integer
    #   resp.items[0].hooks.microvm_image_hooks.validate #=> String, one of "DISABLED", "ENABLED"
    #   resp.items[0].hooks.microvm_image_hooks.validate_timeout_in_seconds #=> Integer
    #   resp.items[0].environment_variables #=> Hash
    #   resp.items[0].environment_variables["EnvironmentVariableKey"] #=> String
    #   resp.items[0].image_arn #=> String
    #   resp.items[0].image_version #=> String
    #   resp.items[0].state #=> String, one of "PENDING", "IN_PROGRESS", "SUCCESSFUL", "FAILED", "DELETING", "DELETED", "DELETE_FAILED"
    #   resp.items[0].status #=> String, one of "ACTIVE", "INACTIVE"
    #   resp.items[0].created_at #=> Time
    #   resp.items[0].updated_at #=> Time
    #   resp.items[0].state_reason #=> String
    #   resp.items[0].tags #=> Hash
    #   resp.items[0].tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-microvms-2025-09-09/ListMicrovmImageVersions AWS API Documentation
    #
    # @overload list_microvm_image_versions(params = {})
    # @param [Hash] params ({})
    def list_microvm_image_versions(params = {}, options = {})
      req = build_request(:list_microvm_image_versions, params)
      req.send_request(options)
    end

    # Lists MicroVM images in the account with optional name filtering. We
    # recommend using pagination to ensure that the operation returns
    # quickly and successfully.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call.
    #
    # @option params [String] :next_token
    #   The pagination token from a previous call. Use this token to retrieve
    #   the next page of results.
    #
    # @option params [String] :name_filter
    #   Filters images whose name contains the specified string.
    #
    # @return [Types::ListMicrovmImagesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListMicrovmImagesResponse#next_token #next_token} => String
    #   * {Types::ListMicrovmImagesResponse#items #items} => Array&lt;Types::MicrovmImageSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_microvm_images({
    #     max_results: 1,
    #     next_token: "String",
    #     name_filter: "NonBlankString",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.items #=> Array
    #   resp.items[0].image_arn #=> String
    #   resp.items[0].name #=> String
    #   resp.items[0].state #=> String, one of "CREATING", "CREATED", "CREATE_FAILED", "UPDATING", "UPDATED", "UPDATE_FAILED", "DELETING", "DELETE_FAILED", "DELETED"
    #   resp.items[0].latest_active_image_version #=> String
    #   resp.items[0].latest_failed_image_version #=> String
    #   resp.items[0].created_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-microvms-2025-09-09/ListMicrovmImages AWS API Documentation
    #
    # @overload list_microvm_images(params = {})
    # @param [Hash] params ({})
    def list_microvm_images(params = {}, options = {})
      req = build_request(:list_microvm_images, params)
      req.send_request(options)
    end

    # Lists MicroVMs in the account with optional filtering by image and
    # version. We recommend using pagination to ensure that the operation
    # returns quickly and successfully.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call.
    #
    # @option params [String] :next_token
    #   The pagination token from a previous call. Use this token to retrieve
    #   the next page of results.
    #
    # @option params [String] :image_identifier
    #   Optional filter to list only MicroVMs running the specified image.
    #
    # @option params [String] :image_version
    #   Optional filter to list only MicroVMs running the specified image
    #   version.
    #
    # @return [Types::ListMicrovmsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListMicrovmsResponse#next_token #next_token} => String
    #   * {Types::ListMicrovmsResponse#items #items} => Array&lt;Types::MicrovmItem&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_microvms({
    #     max_results: 1,
    #     next_token: "String",
    #     image_identifier: "MicrovmImageIdentifier",
    #     image_version: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.items #=> Array
    #   resp.items[0].microvm_id #=> String
    #   resp.items[0].state #=> String, one of "PENDING", "RUNNING", "SUSPENDING", "SUSPENDED", "TERMINATING", "TERMINATED"
    #   resp.items[0].image_arn #=> String
    #   resp.items[0].image_version #=> String
    #   resp.items[0].started_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-microvms-2025-09-09/ListMicrovms AWS API Documentation
    #
    # @overload list_microvms(params = {})
    # @param [Hash] params ({})
    def list_microvms(params = {}, options = {})
      req = build_request(:list_microvms, params)
      req.send_request(options)
    end

    # Lists the tags associated with a Lambda MicroVM resource.
    #
    # @option params [required, String] :resource
    #   The ARN of the resource to list tags for.
    #
    # @return [Types::ListTagsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags({
    #     resource: "TaggableResource", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-microvms-2025-09-09/ListTags AWS API Documentation
    #
    # @overload list_tags(params = {})
    # @param [Hash] params ({})
    def list_tags(params = {}, options = {})
      req = build_request(:list_tags, params)
      req.send_request(options)
    end

    # Resumes a suspended MicroVM, restoring it to RUNNING state with all
    # state intact. The MicroVM must be in SUSPENDED state.
    #
    # @option params [required, String] :microvm_identifier
    #   The ID of the MicroVM to resume.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.resume_microvm({
    #     microvm_identifier: "MicrovmIdentifier", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-microvms-2025-09-09/ResumeMicrovm AWS API Documentation
    #
    # @overload resume_microvm(params = {})
    # @param [Hash] params ({})
    def resume_microvm(params = {}, options = {})
      req = build_request(:resume_microvm, params)
      req.send_request(options)
    end

    # Runs a new MicroVM from the specified image. The MicroVM starts in
    # PENDING state and transitions to RUNNING once provisioning completes.
    # To connect, generate an authentication token using
    # CreateMicrovmAuthToken.
    #
    # @option params [Array<String>] :ingress_network_connectors
    #   The list of ingress network connectors to configure for the MicroVM.
    #
    # @option params [Array<String>] :egress_network_connectors
    #   The list of egress network connectors to configure for the MicroVM.
    #
    # @option params [required, String] :image_identifier
    #   The identifier (ARN or ID) of the MicroVM image to run.
    #
    # @option params [String] :image_version
    #   The version of the MicroVM image to run.
    #
    # @option params [String] :execution_role_arn
    #   The ARN of the IAM role to be assumed by the MicroVM during execution.
    #
    # @option params [Types::IdlePolicy] :idle_policy
    #   Configuration to control auto-suspend and auto-resume behavior.
    #
    # @option params [Types::Logging] :logging
    #   The logging configuration for this MicroVM instance. Specify
    #   \{"cloudWatch": \{"logGroup": "..."}} to stream application logs
    #   to a custom CloudWatch log group, or \{"disabled": \{}} to turn off
    #   logging.
    #
    # @option params [String] :run_hook_payload
    #   Per-MicroVM initialization data delivered as the request body of the
    #   /run lifecycle hook. Use to pass tenant-specific configuration such as
    #   session IDs or secret references. Maximum: 16,384 bytes.
    #
    # @option params [Integer] :maximum_duration_in_seconds
    #   The maximum duration in seconds that the MicroVM can exist before
    #   being terminated by the platform. Valid range: 1–28,800 (8 hours).
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier you provide to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::RunMicrovmResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RunMicrovmResponse#microvm_id #microvm_id} => String
    #   * {Types::RunMicrovmResponse#state #state} => String
    #   * {Types::RunMicrovmResponse#endpoint #endpoint} => String
    #   * {Types::RunMicrovmResponse#image_arn #image_arn} => String
    #   * {Types::RunMicrovmResponse#image_version #image_version} => String
    #   * {Types::RunMicrovmResponse#execution_role_arn #execution_role_arn} => String
    #   * {Types::RunMicrovmResponse#idle_policy #idle_policy} => Types::IdlePolicy
    #   * {Types::RunMicrovmResponse#maximum_duration_in_seconds #maximum_duration_in_seconds} => Integer
    #   * {Types::RunMicrovmResponse#started_at #started_at} => Time
    #   * {Types::RunMicrovmResponse#terminated_at #terminated_at} => Time
    #   * {Types::RunMicrovmResponse#state_reason #state_reason} => String
    #   * {Types::RunMicrovmResponse#ingress_network_connectors #ingress_network_connectors} => Array&lt;String&gt;
    #   * {Types::RunMicrovmResponse#egress_network_connectors #egress_network_connectors} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.run_microvm({
    #     ingress_network_connectors: ["NetworkConnector"],
    #     egress_network_connectors: ["NetworkConnector"],
    #     image_identifier: "MicrovmImageIdentifier", # required
    #     image_version: "Version",
    #     execution_role_arn: "RoleArn",
    #     idle_policy: {
    #       max_idle_duration_seconds: 1, # required
    #       suspended_duration_seconds: 1, # required
    #       auto_resume_enabled: false, # required
    #     },
    #     logging: {
    #       disabled: {
    #       },
    #       cloud_watch: {
    #         log_group: "CloudWatchLoggingLogGroupString",
    #         log_stream: "CloudWatchLoggingLogStreamString",
    #       },
    #     },
    #     run_hook_payload: "RunMicrovmRequestRunHookPayloadString",
    #     maximum_duration_in_seconds: 1,
    #     client_token: "RunMicrovmRequestClientTokenString",
    #   })
    #
    # @example Response structure
    #
    #   resp.microvm_id #=> String
    #   resp.state #=> String, one of "PENDING", "RUNNING", "SUSPENDING", "SUSPENDED", "TERMINATING", "TERMINATED"
    #   resp.endpoint #=> String
    #   resp.image_arn #=> String
    #   resp.image_version #=> String
    #   resp.execution_role_arn #=> String
    #   resp.idle_policy.max_idle_duration_seconds #=> Integer
    #   resp.idle_policy.suspended_duration_seconds #=> Integer
    #   resp.idle_policy.auto_resume_enabled #=> Boolean
    #   resp.maximum_duration_in_seconds #=> Integer
    #   resp.started_at #=> Time
    #   resp.terminated_at #=> Time
    #   resp.state_reason #=> String
    #   resp.ingress_network_connectors #=> Array
    #   resp.ingress_network_connectors[0] #=> String
    #   resp.egress_network_connectors #=> Array
    #   resp.egress_network_connectors[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-microvms-2025-09-09/RunMicrovm AWS API Documentation
    #
    # @overload run_microvm(params = {})
    # @param [Hash] params ({})
    def run_microvm(params = {}, options = {})
      req = build_request(:run_microvm, params)
      req.send_request(options)
    end

    # Suspends a running MicroVM, preserving its full memory and disk state.
    # The MicroVM transitions through SUSPENDING to SUSPENDED. To restore,
    # call ResumeMicrovm or send traffic to the endpoint if
    # autoResumeEnabled is true.
    #
    # @option params [required, String] :microvm_identifier
    #   The ID of the MicroVM to suspend.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.suspend_microvm({
    #     microvm_identifier: "MicrovmIdentifier", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-microvms-2025-09-09/SuspendMicrovm AWS API Documentation
    #
    # @overload suspend_microvm(params = {})
    # @param [Hash] params ({})
    def suspend_microvm(params = {}, options = {})
      req = build_request(:suspend_microvm, params)
      req.send_request(options)
    end

    # Adds tags to a Lambda MicroVM resource.
    #
    # @option params [required, String] :resource
    #   The ARN of the resource to tag.
    #
    # @option params [required, Hash<String,String>] :tags
    #   The key-value pairs of tags to add to the resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource: "TaggableResource", # required
    #     tags: { # required
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-microvms-2025-09-09/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Terminates a MicroVM. This operation is idempotent; terminating a
    # MicroVM that has already been terminated succeeds without error.
    #
    # @option params [required, String] :microvm_identifier
    #   The ID of the MicroVM to terminate.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.terminate_microvm({
    #     microvm_identifier: "MicrovmIdentifier", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-microvms-2025-09-09/TerminateMicrovm AWS API Documentation
    #
    # @overload terminate_microvm(params = {})
    # @param [Hash] params ({})
    def terminate_microvm(params = {}, options = {})
      req = build_request(:terminate_microvm, params)
      req.send_request(options)
    end

    # Removes tags from a Lambda MicroVM resource.
    #
    # @option params [required, String] :resource
    #   The ARN of the resource to remove tags from.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The list of tag keys to remove from the resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource: "TaggableResource", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-microvms-2025-09-09/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates the configuration of a MicroVM image and triggers a new
    # version build. This operation uses PUT semantics — all required fields
    # (codeArtifact, baseImageArn, buildRoleArn) must be provided with every
    # request.
    #
    # @option params [required, String] :base_image_arn
    #   The ARN of the base MicroVM image.
    #
    # @option params [String] :base_image_version
    #   The specific version of the base MicroVM image to use.
    #
    # @option params [required, String] :build_role_arn
    #   The ARN of the IAM build role.
    #
    # @option params [String] :description
    #   The description of the MicroVM image.
    #
    # @option params [required, Types::CodeArtifact] :code_artifact
    #   The code artifact containing the application code and metadata for the
    #   MicroVM image.
    #
    # @option params [Types::Logging] :logging
    #   The logging configuration for build-time and runtime logs. Specify
    #   \{"cloudWatch": \{"logGroup": "..."}} to stream logs to a custom
    #   CloudWatch log group, or \{"disabled": \{}} to turn off logging.
    #
    # @option params [Array<String>] :egress_network_connectors
    #   The list of egress network connectors available to the MicroVM at
    #   runtime.
    #
    # @option params [Array<Types::CpuConfiguration>] :cpu_configurations
    #   The list of supported CPU configurations for the MicroVM.
    #
    # @option params [Array<Types::Resources>] :resources
    #   The resource requirements for the MicroVM.
    #
    # @option params [Array<String>] :additional_os_capabilities
    #   Additional OS capabilities granted to the MicroVM runtime environment.
    #
    # @option params [Types::Hooks] :hooks
    #   Lifecycle hook configuration for MicroVMs and MicroVM images.
    #
    # @option params [Hash<String,String>] :environment_variables
    #   Environment variables set in the MicroVM runtime environment.
    #
    # @option params [required, String] :image_identifier
    #   The unique identifier (ARN or ID) of the MicroVM image to update.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier you provide to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::UpdateMicrovmImageResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateMicrovmImageResponse#image_arn #image_arn} => String
    #   * {Types::UpdateMicrovmImageResponse#name #name} => String
    #   * {Types::UpdateMicrovmImageResponse#state #state} => String
    #   * {Types::UpdateMicrovmImageResponse#latest_active_image_version #latest_active_image_version} => String
    #   * {Types::UpdateMicrovmImageResponse#latest_failed_image_version #latest_failed_image_version} => String
    #   * {Types::UpdateMicrovmImageResponse#created_at #created_at} => Time
    #   * {Types::UpdateMicrovmImageResponse#base_image_arn #base_image_arn} => String
    #   * {Types::UpdateMicrovmImageResponse#base_image_version #base_image_version} => String
    #   * {Types::UpdateMicrovmImageResponse#build_role_arn #build_role_arn} => String
    #   * {Types::UpdateMicrovmImageResponse#description #description} => String
    #   * {Types::UpdateMicrovmImageResponse#code_artifact #code_artifact} => Types::CodeArtifact
    #   * {Types::UpdateMicrovmImageResponse#logging #logging} => Types::Logging
    #   * {Types::UpdateMicrovmImageResponse#egress_network_connectors #egress_network_connectors} => Array&lt;String&gt;
    #   * {Types::UpdateMicrovmImageResponse#cpu_configurations #cpu_configurations} => Array&lt;Types::CpuConfiguration&gt;
    #   * {Types::UpdateMicrovmImageResponse#resources #resources} => Array&lt;Types::Resources&gt;
    #   * {Types::UpdateMicrovmImageResponse#additional_os_capabilities #additional_os_capabilities} => Array&lt;String&gt;
    #   * {Types::UpdateMicrovmImageResponse#hooks #hooks} => Types::Hooks
    #   * {Types::UpdateMicrovmImageResponse#environment_variables #environment_variables} => Hash&lt;String,String&gt;
    #   * {Types::UpdateMicrovmImageResponse#updated_at #updated_at} => Time
    #   * {Types::UpdateMicrovmImageResponse#image_version #image_version} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_microvm_image({
    #     base_image_arn: "NonBlankString", # required
    #     base_image_version: "Version",
    #     build_role_arn: "RoleArn", # required
    #     description: "String",
    #     code_artifact: { # required
    #       uri: "NonBlankString",
    #     },
    #     logging: {
    #       disabled: {
    #       },
    #       cloud_watch: {
    #         log_group: "CloudWatchLoggingLogGroupString",
    #         log_stream: "CloudWatchLoggingLogStreamString",
    #       },
    #     },
    #     egress_network_connectors: ["NetworkConnector"],
    #     cpu_configurations: [
    #       {
    #         architecture: "ARM_64", # required, accepts ARM_64
    #       },
    #     ],
    #     resources: [
    #       {
    #         minimum_memory_in_mi_b: 1, # required
    #       },
    #     ],
    #     additional_os_capabilities: ["ALL"], # accepts ALL
    #     hooks: {
    #       port: 1,
    #       microvm_hooks: {
    #         run: "DISABLED", # accepts DISABLED, ENABLED
    #         run_timeout_in_seconds: 1,
    #         resume: "DISABLED", # accepts DISABLED, ENABLED
    #         resume_timeout_in_seconds: 1,
    #         suspend: "DISABLED", # accepts DISABLED, ENABLED
    #         suspend_timeout_in_seconds: 1,
    #         terminate: "DISABLED", # accepts DISABLED, ENABLED
    #         terminate_timeout_in_seconds: 1,
    #       },
    #       microvm_image_hooks: {
    #         ready: "DISABLED", # accepts DISABLED, ENABLED
    #         ready_timeout_in_seconds: 1,
    #         validate: "DISABLED", # accepts DISABLED, ENABLED
    #         validate_timeout_in_seconds: 1,
    #       },
    #     },
    #     environment_variables: {
    #       "EnvironmentVariableKey" => "EnvironmentVariableValue",
    #     },
    #     image_identifier: "MicrovmImageIdentifier", # required
    #     client_token: "UpdateMicrovmImageRequestClientTokenString",
    #   })
    #
    # @example Response structure
    #
    #   resp.image_arn #=> String
    #   resp.name #=> String
    #   resp.state #=> String, one of "CREATING", "CREATED", "CREATE_FAILED", "UPDATING", "UPDATED", "UPDATE_FAILED", "DELETING", "DELETE_FAILED", "DELETED"
    #   resp.latest_active_image_version #=> String
    #   resp.latest_failed_image_version #=> String
    #   resp.created_at #=> Time
    #   resp.base_image_arn #=> String
    #   resp.base_image_version #=> String
    #   resp.build_role_arn #=> String
    #   resp.description #=> String
    #   resp.code_artifact.uri #=> String
    #   resp.logging.cloud_watch.log_group #=> String
    #   resp.logging.cloud_watch.log_stream #=> String
    #   resp.egress_network_connectors #=> Array
    #   resp.egress_network_connectors[0] #=> String
    #   resp.cpu_configurations #=> Array
    #   resp.cpu_configurations[0].architecture #=> String, one of "ARM_64"
    #   resp.resources #=> Array
    #   resp.resources[0].minimum_memory_in_mi_b #=> Integer
    #   resp.additional_os_capabilities #=> Array
    #   resp.additional_os_capabilities[0] #=> String, one of "ALL"
    #   resp.hooks.port #=> Integer
    #   resp.hooks.microvm_hooks.run #=> String, one of "DISABLED", "ENABLED"
    #   resp.hooks.microvm_hooks.run_timeout_in_seconds #=> Integer
    #   resp.hooks.microvm_hooks.resume #=> String, one of "DISABLED", "ENABLED"
    #   resp.hooks.microvm_hooks.resume_timeout_in_seconds #=> Integer
    #   resp.hooks.microvm_hooks.suspend #=> String, one of "DISABLED", "ENABLED"
    #   resp.hooks.microvm_hooks.suspend_timeout_in_seconds #=> Integer
    #   resp.hooks.microvm_hooks.terminate #=> String, one of "DISABLED", "ENABLED"
    #   resp.hooks.microvm_hooks.terminate_timeout_in_seconds #=> Integer
    #   resp.hooks.microvm_image_hooks.ready #=> String, one of "DISABLED", "ENABLED"
    #   resp.hooks.microvm_image_hooks.ready_timeout_in_seconds #=> Integer
    #   resp.hooks.microvm_image_hooks.validate #=> String, one of "DISABLED", "ENABLED"
    #   resp.hooks.microvm_image_hooks.validate_timeout_in_seconds #=> Integer
    #   resp.environment_variables #=> Hash
    #   resp.environment_variables["EnvironmentVariableKey"] #=> String
    #   resp.updated_at #=> Time
    #   resp.image_version #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-microvms-2025-09-09/UpdateMicrovmImage AWS API Documentation
    #
    # @overload update_microvm_image(params = {})
    # @param [Hash] params ({})
    def update_microvm_image(params = {}, options = {})
      req = build_request(:update_microvm_image, params)
      req.send_request(options)
    end

    # Updates the status of a specific MicroVM image version.
    #
    # @option params [required, String] :image_identifier
    #   The unique identifier (ARN or ID) of the MicroVM image.
    #
    # @option params [required, String] :image_version
    #   The version of the MicroVM image to update.
    #
    # @option params [required, String] :status
    #   The new status to set for the MicroVM image version.
    #
    # @return [Types::UpdateMicrovmImageVersionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateMicrovmImageVersionResponse#base_image_arn #base_image_arn} => String
    #   * {Types::UpdateMicrovmImageVersionResponse#base_image_version #base_image_version} => String
    #   * {Types::UpdateMicrovmImageVersionResponse#build_role_arn #build_role_arn} => String
    #   * {Types::UpdateMicrovmImageVersionResponse#description #description} => String
    #   * {Types::UpdateMicrovmImageVersionResponse#code_artifact #code_artifact} => Types::CodeArtifact
    #   * {Types::UpdateMicrovmImageVersionResponse#logging #logging} => Types::Logging
    #   * {Types::UpdateMicrovmImageVersionResponse#egress_network_connectors #egress_network_connectors} => Array&lt;String&gt;
    #   * {Types::UpdateMicrovmImageVersionResponse#cpu_configurations #cpu_configurations} => Array&lt;Types::CpuConfiguration&gt;
    #   * {Types::UpdateMicrovmImageVersionResponse#resources #resources} => Array&lt;Types::Resources&gt;
    #   * {Types::UpdateMicrovmImageVersionResponse#additional_os_capabilities #additional_os_capabilities} => Array&lt;String&gt;
    #   * {Types::UpdateMicrovmImageVersionResponse#hooks #hooks} => Types::Hooks
    #   * {Types::UpdateMicrovmImageVersionResponse#environment_variables #environment_variables} => Hash&lt;String,String&gt;
    #   * {Types::UpdateMicrovmImageVersionResponse#image_arn #image_arn} => String
    #   * {Types::UpdateMicrovmImageVersionResponse#image_version #image_version} => String
    #   * {Types::UpdateMicrovmImageVersionResponse#state #state} => String
    #   * {Types::UpdateMicrovmImageVersionResponse#status #status} => String
    #   * {Types::UpdateMicrovmImageVersionResponse#created_at #created_at} => Time
    #   * {Types::UpdateMicrovmImageVersionResponse#updated_at #updated_at} => Time
    #   * {Types::UpdateMicrovmImageVersionResponse#state_reason #state_reason} => String
    #   * {Types::UpdateMicrovmImageVersionResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_microvm_image_version({
    #     image_identifier: "MicrovmImageIdentifier", # required
    #     image_version: "NonBlankString", # required
    #     status: "ACTIVE", # required, accepts ACTIVE, INACTIVE
    #   })
    #
    # @example Response structure
    #
    #   resp.base_image_arn #=> String
    #   resp.base_image_version #=> String
    #   resp.build_role_arn #=> String
    #   resp.description #=> String
    #   resp.code_artifact.uri #=> String
    #   resp.logging.cloud_watch.log_group #=> String
    #   resp.logging.cloud_watch.log_stream #=> String
    #   resp.egress_network_connectors #=> Array
    #   resp.egress_network_connectors[0] #=> String
    #   resp.cpu_configurations #=> Array
    #   resp.cpu_configurations[0].architecture #=> String, one of "ARM_64"
    #   resp.resources #=> Array
    #   resp.resources[0].minimum_memory_in_mi_b #=> Integer
    #   resp.additional_os_capabilities #=> Array
    #   resp.additional_os_capabilities[0] #=> String, one of "ALL"
    #   resp.hooks.port #=> Integer
    #   resp.hooks.microvm_hooks.run #=> String, one of "DISABLED", "ENABLED"
    #   resp.hooks.microvm_hooks.run_timeout_in_seconds #=> Integer
    #   resp.hooks.microvm_hooks.resume #=> String, one of "DISABLED", "ENABLED"
    #   resp.hooks.microvm_hooks.resume_timeout_in_seconds #=> Integer
    #   resp.hooks.microvm_hooks.suspend #=> String, one of "DISABLED", "ENABLED"
    #   resp.hooks.microvm_hooks.suspend_timeout_in_seconds #=> Integer
    #   resp.hooks.microvm_hooks.terminate #=> String, one of "DISABLED", "ENABLED"
    #   resp.hooks.microvm_hooks.terminate_timeout_in_seconds #=> Integer
    #   resp.hooks.microvm_image_hooks.ready #=> String, one of "DISABLED", "ENABLED"
    #   resp.hooks.microvm_image_hooks.ready_timeout_in_seconds #=> Integer
    #   resp.hooks.microvm_image_hooks.validate #=> String, one of "DISABLED", "ENABLED"
    #   resp.hooks.microvm_image_hooks.validate_timeout_in_seconds #=> Integer
    #   resp.environment_variables #=> Hash
    #   resp.environment_variables["EnvironmentVariableKey"] #=> String
    #   resp.image_arn #=> String
    #   resp.image_version #=> String
    #   resp.state #=> String, one of "PENDING", "IN_PROGRESS", "SUCCESSFUL", "FAILED", "DELETING", "DELETED", "DELETE_FAILED"
    #   resp.status #=> String, one of "ACTIVE", "INACTIVE"
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #   resp.state_reason #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-microvms-2025-09-09/UpdateMicrovmImageVersion AWS API Documentation
    #
    # @overload update_microvm_image_version(params = {})
    # @param [Hash] params ({})
    def update_microvm_image_version(params = {}, options = {})
      req = build_request(:update_microvm_image_version, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::LambdaMicrovms')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-lambdamicrovms'
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
