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

module Aws::LambdaWeb
  # An API client for LambdaWeb.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::LambdaWeb::Client.new(
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

    @identifier = :lambdaweb

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
    add_plugin(Aws::LambdaWeb::Plugins::Endpoints)

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
    #   @option options [Aws::LambdaWeb::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::LambdaWeb::EndpointParameters`.
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

    # Creates a web function with an initial revision and endpoint. To
    # create a web function, you provide the function name, revision
    # configuration (code and service settings), and endpoint configuration.
    #
    # To use this operation, you must have the `CreateWebFunction`
    # permission on the web function. You don't need separate permissions
    # for the initial revision or endpoint.
    #
    # @option params [required, String] :function_name
    #   The name of the web function. The name can contain letters, numbers,
    #   hyphens (-), and underscores (\_), and can't begin or end with a
    #   hyphen or an underscore. The length constraint applies only to the
    #   full ARN. If you specify only the function name, it is limited to 64
    #   characters in length.
    #
    # @option params [Types::RevisionConfig] :revision_config
    #   The configuration for the initial revision of the web function,
    #   including code and service settings.
    #
    # @option params [Types::EndpointConfig] :endpoint_config
    #   The configuration for the initial endpoint of the web function.
    #
    # @option params [Hash<String,String>] :tags
    #   A map of tag keys and values to apply to the web function.
    #
    # @return [Types::CreateWebFunctionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateWebFunctionResponse#function_name #function_name} => String
    #   * {Types::CreateWebFunctionResponse#function_arn #function_arn} => String
    #   * {Types::CreateWebFunctionResponse#state #state} => String
    #   * {Types::CreateWebFunctionResponse#state_reason #state_reason} => String
    #   * {Types::CreateWebFunctionResponse#created_at #created_at} => Time
    #   * {Types::CreateWebFunctionResponse#updated_at #updated_at} => Time
    #   * {Types::CreateWebFunctionResponse#revision #revision} => Types::FunctionRevisionSummary
    #   * {Types::CreateWebFunctionResponse#endpoint #endpoint} => Types::FunctionEndpointSummary
    #   * {Types::CreateWebFunctionResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_web_function({
    #     function_name: "FunctionName", # required
    #     revision_config: {
    #       description: "Description",
    #       kms_key_arn: "KmsKeyArn",
    #       build_config: { # required
    #         code_config: { # required
    #           s3_object: { # required
    #             bucket: "S3ObjectBucketString", # required
    #             key: "S3ObjectKeyString", # required
    #             version_id: "S3ObjectVersionIdString",
    #           },
    #         },
    #         runtime_config: { # required
    #           runtime: "RuntimeConfigRuntimeString", # required
    #         },
    #       },
    #       service_config: { # required
    #         execution_role_arn: "RoleArn", # required
    #         timeout_seconds: 1,
    #         max_concurrency_per_environment: 1,
    #         environment_variables: {
    #           "EnvironmentVariablesKeyString" => "EnvironmentVariablesValueString",
    #         },
    #         telemetry_config: {
    #           logging_config: {
    #             log_group: "LoggingConfigLogGroupString",
    #             application_log_level: "TRACE", # accepts TRACE, DEBUG, INFO, WARN, ERROR, FATAL
    #             system_log_level: "DEBUG", # accepts DEBUG, INFO, WARN
    #           },
    #         },
    #       },
    #     },
    #     endpoint_config: {
    #       endpoint_name: "EndpointName", # required
    #       description: "Description",
    #       endpoint_type: "HomeRegion", # required, accepts HomeRegion, MultiRegion, PerRegion
    #       auth_type: "ApplicationManaged", # required, accepts ApplicationManaged, IamAuth
    #       auto_deployment_mode: "LatestRevision", # accepts LatestRevision, Disabled
    #       regions: ["Region"],
    #       scaling_config: {
    #         max_environments: 1,
    #       },
    #       throttle_config: {
    #         rate_limit: 1,
    #       },
    #     },
    #     tags: {
    #       "TagKey" => "TagsValueString",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.function_name #=> String
    #   resp.function_arn #=> String
    #   resp.state #=> String, one of "Pending", "Active", "Failed", "Deleting"
    #   resp.state_reason #=> String
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #   resp.revision.revision_arn #=> String
    #   resp.revision.revision_id #=> String
    #   resp.revision.description #=> String
    #   resp.revision.state #=> String, one of "Pending", "Active", "Failed"
    #   resp.revision.state_reason #=> String
    #   resp.revision.created_at #=> Time
    #   resp.endpoint.endpoint_arn #=> String
    #   resp.endpoint.endpoint_name #=> String
    #   resp.endpoint.description #=> String
    #   resp.endpoint.endpoint_type #=> String, one of "HomeRegion", "MultiRegion", "PerRegion"
    #   resp.endpoint.domain_name #=> String
    #   resp.endpoint.auth_type #=> String, one of "ApplicationManaged", "IamAuth"
    #   resp.endpoint.auto_deployment_mode #=> String, one of "LatestRevision", "Disabled"
    #   resp.endpoint.revision_weights #=> Array
    #   resp.endpoint.revision_weights[0].revision_id #=> String
    #   resp.endpoint.revision_weights[0].weight #=> Integer
    #   resp.endpoint.regions #=> Array
    #   resp.endpoint.regions[0] #=> String
    #   resp.endpoint.scaling_config.max_environments #=> Integer
    #   resp.endpoint.throttle_config.rate_limit #=> Integer
    #   resp.endpoint.state #=> String, one of "Pending", "Active", "Failed", "Deleting"
    #   resp.endpoint.state_reason #=> String
    #   resp.endpoint.update_status #=> String, one of "InProgress", "Successful", "Failed"
    #   resp.endpoint.update_status_reason #=> String
    #   resp.endpoint.created_at #=> Time
    #   resp.endpoint.updated_at #=> Time
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-web-2025-03-07/CreateWebFunction AWS API Documentation
    #
    # @overload create_web_function(params = {})
    # @param [Hash] params ({})
    def create_web_function(params = {}, options = {})
      req = build_request(:create_web_function, params)
      req.send_request(options)
    end

    # Creates an endpoint for a web function. An endpoint exposes the web
    # function over HTTPS and routes traffic to one or more revisions.
    #
    # To use this operation, you must have the `CreateWebFunctionEndpoint`
    # permission on the web function, not on the endpoint being created.
    #
    # @option params [required, String] :function_name
    #   The name of the web function to create the endpoint for. You can
    #   specify the function name or the function ARN. The length constraint
    #   applies only to the full ARN. If you specify only the function name,
    #   it is limited to 64 characters in length.
    #
    # @option params [required, String] :endpoint_name
    #   The name of the endpoint to create. The name can contain letters,
    #   numbers, hyphens (-), and underscores (\_), and can't begin or end
    #   with a hyphen or an underscore. The length constraint applies only to
    #   the full ARN. If you specify only the endpoint name, it is limited to
    #   64 characters in length.
    #
    # @option params [String] :description
    #   A description of the endpoint.
    #
    # @option params [required, String] :endpoint_type
    #   The type of endpoint to create. Determines how traffic is served and
    #   routed across Regions.
    #
    # @option params [required, String] :auth_type
    #   The authorization type for the endpoint.
    #
    # @option params [String] :auto_deployment_mode
    #   The auto-deployment mode for the endpoint. Controls whether the
    #   endpoint automatically serves the newest revision. If you don't
    #   specify a value, the default is `Disabled`, and this default is
    #   returned in the response.
    #
    # @option params [Array<Types::RevisionWeight>] :revision_weights
    #   A list of revision weights that determine how traffic is distributed
    #   across revisions. Up to two revisions can be specified for canary or
    #   blue-green deployments.
    #
    # @option params [Array<String>] :regions
    #   The list of Regions for the endpoint. Required when the endpoint type
    #   is `MultiRegion` or `PerRegion`: specify at least one Region other
    #   than the Region where you create the endpoint (the home Region). The
    #   home Region is added automatically if you don't include it;
    #   specifying only the home Region isn't allowed. When the endpoint type
    #   is `HomeRegion`, omit this field or specify only the home Region.
    #
    # @option params [Types::ScalingConfig] :scaling_config
    #   The scaling configuration for the endpoint. There is no default value.
    #   If you don't specify a scaling configuration, it is absent from the
    #   response.
    #
    # @option params [Types::ThrottleConfig] :throttle_config
    #   The throttling configuration for the endpoint. There is no default
    #   value. If you don't specify a throttling configuration, it is absent
    #   from the response.
    #
    # @return [Types::CreateWebFunctionEndpointResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateWebFunctionEndpointResponse#function_arn #function_arn} => String
    #   * {Types::CreateWebFunctionEndpointResponse#endpoint_arn #endpoint_arn} => String
    #   * {Types::CreateWebFunctionEndpointResponse#endpoint_name #endpoint_name} => String
    #   * {Types::CreateWebFunctionEndpointResponse#description #description} => String
    #   * {Types::CreateWebFunctionEndpointResponse#endpoint_type #endpoint_type} => String
    #   * {Types::CreateWebFunctionEndpointResponse#domain_name #domain_name} => String
    #   * {Types::CreateWebFunctionEndpointResponse#auth_type #auth_type} => String
    #   * {Types::CreateWebFunctionEndpointResponse#auto_deployment_mode #auto_deployment_mode} => String
    #   * {Types::CreateWebFunctionEndpointResponse#revision_weights #revision_weights} => Array&lt;Types::RevisionWeight&gt;
    #   * {Types::CreateWebFunctionEndpointResponse#regions #regions} => Array&lt;String&gt;
    #   * {Types::CreateWebFunctionEndpointResponse#scaling_config #scaling_config} => Types::ScalingConfig
    #   * {Types::CreateWebFunctionEndpointResponse#throttle_config #throttle_config} => Types::ThrottleConfig
    #   * {Types::CreateWebFunctionEndpointResponse#state #state} => String
    #   * {Types::CreateWebFunctionEndpointResponse#state_reason #state_reason} => String
    #   * {Types::CreateWebFunctionEndpointResponse#update_status #update_status} => String
    #   * {Types::CreateWebFunctionEndpointResponse#update_status_reason #update_status_reason} => String
    #   * {Types::CreateWebFunctionEndpointResponse#regional_endpoints #regional_endpoints} => Hash&lt;String,Types::RegionalEndpoint&gt;
    #   * {Types::CreateWebFunctionEndpointResponse#created_at #created_at} => Time
    #   * {Types::CreateWebFunctionEndpointResponse#updated_at #updated_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_web_function_endpoint({
    #     function_name: "FunctionName", # required
    #     endpoint_name: "EndpointName", # required
    #     description: "Description",
    #     endpoint_type: "HomeRegion", # required, accepts HomeRegion, MultiRegion, PerRegion
    #     auth_type: "ApplicationManaged", # required, accepts ApplicationManaged, IamAuth
    #     auto_deployment_mode: "LatestRevision", # accepts LatestRevision, Disabled
    #     revision_weights: [
    #       {
    #         revision_id: "RevisionId", # required
    #         weight: 1, # required
    #       },
    #     ],
    #     regions: ["Region"],
    #     scaling_config: {
    #       max_environments: 1,
    #     },
    #     throttle_config: {
    #       rate_limit: 1,
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.function_arn #=> String
    #   resp.endpoint_arn #=> String
    #   resp.endpoint_name #=> String
    #   resp.description #=> String
    #   resp.endpoint_type #=> String, one of "HomeRegion", "MultiRegion", "PerRegion"
    #   resp.domain_name #=> String
    #   resp.auth_type #=> String, one of "ApplicationManaged", "IamAuth"
    #   resp.auto_deployment_mode #=> String, one of "LatestRevision", "Disabled"
    #   resp.revision_weights #=> Array
    #   resp.revision_weights[0].revision_id #=> String
    #   resp.revision_weights[0].weight #=> Integer
    #   resp.regions #=> Array
    #   resp.regions[0] #=> String
    #   resp.scaling_config.max_environments #=> Integer
    #   resp.throttle_config.rate_limit #=> Integer
    #   resp.state #=> String, one of "Pending", "Active", "Failed", "Deleting"
    #   resp.state_reason #=> String
    #   resp.update_status #=> String, one of "InProgress", "Successful", "Failed"
    #   resp.update_status_reason #=> String
    #   resp.regional_endpoints #=> Hash
    #   resp.regional_endpoints["Region"].domain_name #=> String
    #   resp.regional_endpoints["Region"].auth_type #=> String, one of "ApplicationManaged", "IamAuth"
    #   resp.regional_endpoints["Region"].revision_weights #=> Array
    #   resp.regional_endpoints["Region"].revision_weights[0].revision_id #=> String
    #   resp.regional_endpoints["Region"].revision_weights[0].weight #=> Integer
    #   resp.regional_endpoints["Region"].scaling_config.max_environments #=> Integer
    #   resp.regional_endpoints["Region"].throttle_config.rate_limit #=> Integer
    #   resp.regional_endpoints["Region"].state #=> String, one of "Pending", "Active", "Failed", "Deleting"
    #   resp.regional_endpoints["Region"].state_reason #=> String
    #   resp.regional_endpoints["Region"].update_status #=> String, one of "InProgress", "Successful", "Failed"
    #   resp.regional_endpoints["Region"].update_status_reason #=> String
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-web-2025-03-07/CreateWebFunctionEndpoint AWS API Documentation
    #
    # @overload create_web_function_endpoint(params = {})
    # @param [Hash] params ({})
    def create_web_function_endpoint(params = {}, options = {})
      req = build_request(:create_web_function_endpoint, params)
      req.send_request(options)
    end

    # Creates an immutable revision for a web function. A revision
    # represents a specific version of the function code and configuration.
    #
    # To use this operation, you must have the `CreateWebFunctionRevision`
    # permission on the web function, not on the revision being created.
    #
    # @option params [required, String] :function_name
    #   The name of the web function. You can specify the function name or the
    #   function ARN. The length constraint applies only to the full ARN. If
    #   you specify only the function name, it is limited to 64 characters in
    #   length.
    #
    # @option params [String] :description
    #   A description of the revision.
    #
    # @option params [String] :kms_key_arn
    #   The Amazon Resource Name (ARN) of the AWS Key Management Service (AWS
    #   KMS) key used to encrypt the revision's code and environment
    #   variables.
    #
    # @option params [required, Types::BuildConfig] :build_config
    #   The build configuration for the revision, including code location and
    #   runtime settings.
    #
    # @option params [required, Types::ServiceConfig] :service_config
    #   The service configuration for the revision, including execution role,
    #   timeout, and concurrency settings.
    #
    # @return [Types::CreateWebFunctionRevisionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateWebFunctionRevisionResponse#function_arn #function_arn} => String
    #   * {Types::CreateWebFunctionRevisionResponse#revision_arn #revision_arn} => String
    #   * {Types::CreateWebFunctionRevisionResponse#revision_id #revision_id} => String
    #   * {Types::CreateWebFunctionRevisionResponse#description #description} => String
    #   * {Types::CreateWebFunctionRevisionResponse#kms_key_arn #kms_key_arn} => String
    #   * {Types::CreateWebFunctionRevisionResponse#build_config #build_config} => Types::BuildConfig
    #   * {Types::CreateWebFunctionRevisionResponse#service_config #service_config} => Types::ServiceConfig
    #   * {Types::CreateWebFunctionRevisionResponse#state #state} => String
    #   * {Types::CreateWebFunctionRevisionResponse#state_reason #state_reason} => String
    #   * {Types::CreateWebFunctionRevisionResponse#errors #errors} => Array&lt;Types::RevisionError&gt;
    #   * {Types::CreateWebFunctionRevisionResponse#created_at #created_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_web_function_revision({
    #     function_name: "FunctionName", # required
    #     description: "Description",
    #     kms_key_arn: "KmsKeyArn",
    #     build_config: { # required
    #       code_config: { # required
    #         s3_object: { # required
    #           bucket: "S3ObjectBucketString", # required
    #           key: "S3ObjectKeyString", # required
    #           version_id: "S3ObjectVersionIdString",
    #         },
    #       },
    #       runtime_config: { # required
    #         runtime: "RuntimeConfigRuntimeString", # required
    #       },
    #     },
    #     service_config: { # required
    #       execution_role_arn: "RoleArn", # required
    #       timeout_seconds: 1,
    #       max_concurrency_per_environment: 1,
    #       environment_variables: {
    #         "EnvironmentVariablesKeyString" => "EnvironmentVariablesValueString",
    #       },
    #       telemetry_config: {
    #         logging_config: {
    #           log_group: "LoggingConfigLogGroupString",
    #           application_log_level: "TRACE", # accepts TRACE, DEBUG, INFO, WARN, ERROR, FATAL
    #           system_log_level: "DEBUG", # accepts DEBUG, INFO, WARN
    #         },
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.function_arn #=> String
    #   resp.revision_arn #=> String
    #   resp.revision_id #=> String
    #   resp.description #=> String
    #   resp.kms_key_arn #=> String
    #   resp.build_config.code_config.s3_object.bucket #=> String
    #   resp.build_config.code_config.s3_object.key #=> String
    #   resp.build_config.code_config.s3_object.version_id #=> String
    #   resp.build_config.runtime_config.runtime #=> String
    #   resp.service_config.execution_role_arn #=> String
    #   resp.service_config.timeout_seconds #=> Integer
    #   resp.service_config.max_concurrency_per_environment #=> Integer
    #   resp.service_config.environment_variables #=> Hash
    #   resp.service_config.environment_variables["EnvironmentVariablesKeyString"] #=> String
    #   resp.service_config.telemetry_config.logging_config.log_group #=> String
    #   resp.service_config.telemetry_config.logging_config.application_log_level #=> String, one of "TRACE", "DEBUG", "INFO", "WARN", "ERROR", "FATAL"
    #   resp.service_config.telemetry_config.logging_config.system_log_level #=> String, one of "DEBUG", "INFO", "WARN"
    #   resp.state #=> String, one of "Pending", "Active", "Failed"
    #   resp.state_reason #=> String
    #   resp.errors #=> Array
    #   resp.errors[0].attribute #=> String
    #   resp.errors[0].error_code #=> String
    #   resp.errors[0].error_message #=> String
    #   resp.created_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-web-2025-03-07/CreateWebFunctionRevision AWS API Documentation
    #
    # @overload create_web_function_revision(params = {})
    # @param [Hash] params ({})
    def create_web_function_revision(params = {}, options = {})
      req = build_request(:create_web_function_revision, params)
      req.send_request(options)
    end

    # Removes the resource-based policy from a web function.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the web function.
    #
    # @option params [String] :revision_id
    #   The revision ID of the policy. Use this to prevent deleting a policy
    #   that has been updated since you last retrieved it. If you don't
    #   specify a value, the policy is deleted regardless of its current
    #   revision.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_resource_policy({
    #     resource_arn: "ResourceArn", # required
    #     revision_id: "PolicyRevisionId",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-web-2025-03-07/DeleteResourcePolicy AWS API Documentation
    #
    # @overload delete_resource_policy(params = {})
    # @param [Hash] params ({})
    def delete_resource_policy(params = {}, options = {})
      req = build_request(:delete_resource_policy, params)
      req.send_request(options)
    end

    # Deletes a web function and all of its associated revisions and
    # endpoints.
    #
    # To use this operation, you must have the `DeleteWebFunction`
    # permission on the web function. You don't need the
    # `DeleteWebFunctionRevision` or `DeleteWebFunctionEndpoint` permission.
    #
    # @option params [required, String] :function_name
    #   The name of the web function to delete. You can specify the function
    #   name or the function ARN. The length constraint applies only to the
    #   full ARN. If you specify only the function name, it is limited to 64
    #   characters in length.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_web_function({
    #     function_name: "FunctionName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-web-2025-03-07/DeleteWebFunction AWS API Documentation
    #
    # @overload delete_web_function(params = {})
    # @param [Hash] params ({})
    def delete_web_function(params = {}, options = {})
      req = build_request(:delete_web_function, params)
      req.send_request(options)
    end

    # Deletes a web function endpoint.
    #
    # @option params [required, String] :function_name
    #   The name of the web function. You can specify the function name or the
    #   function ARN. The length constraint applies only to the full ARN. If
    #   you specify only the function name, it is limited to 64 characters in
    #   length.
    #
    # @option params [required, String] :endpoint_name
    #   The name of the endpoint to delete. You can specify the endpoint name
    #   or the endpoint ARN. The length constraint applies only to the full
    #   ARN. If you specify only the endpoint name, it is limited to 64
    #   characters in length.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_web_function_endpoint({
    #     function_name: "FunctionName", # required
    #     endpoint_name: "EndpointName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-web-2025-03-07/DeleteWebFunctionEndpoint AWS API Documentation
    #
    # @overload delete_web_function_endpoint(params = {})
    # @param [Hash] params ({})
    def delete_web_function_endpoint(params = {}, options = {})
      req = build_request(:delete_web_function_endpoint, params)
      req.send_request(options)
    end

    # Deletes a web function revision. You cannot delete a revision that is
    # currently serving traffic on an endpoint.
    #
    # @option params [required, String] :function_name
    #   The name of the web function. You can specify the function name or the
    #   function ARN. The length constraint applies only to the full ARN. If
    #   you specify only the function name, it is limited to 64 characters in
    #   length.
    #
    # @option params [required, String] :revision_id
    #   The identifier of the revision to delete. You can specify the revision
    #   identifier or the revision ARN. The length constraint applies only to
    #   the full ARN.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_web_function_revision({
    #     function_name: "FunctionName", # required
    #     revision_id: "RevisionId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-web-2025-03-07/DeleteWebFunctionRevision AWS API Documentation
    #
    # @overload delete_web_function_revision(params = {})
    # @param [Hash] params ({})
    def delete_web_function_revision(params = {}, options = {})
      req = build_request(:delete_web_function_revision, params)
      req.send_request(options)
    end

    # Retrieves the resource-based policy attached to a web function.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the web function.
    #
    # @return [Types::GetResourcePolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetResourcePolicyResponse#policy #policy} => String
    #   * {Types::GetResourcePolicyResponse#revision_id #revision_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_resource_policy({
    #     resource_arn: "ResourceArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.policy #=> String
    #   resp.revision_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-web-2025-03-07/GetResourcePolicy AWS API Documentation
    #
    # @overload get_resource_policy(params = {})
    # @param [Hash] params ({})
    def get_resource_policy(params = {}, options = {})
      req = build_request(:get_resource_policy, params)
      req.send_request(options)
    end

    # Retrieves details about your AWS Lambda Web Functions account settings
    # for the current AWS Region, including the quotas that apply to web
    # functions and your current usage.
    #
    # @return [Types::GetWebAccountSettingsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetWebAccountSettingsResponse#account_quotas #account_quotas} => Types::AccountQuotas
    #   * {Types::GetWebAccountSettingsResponse#account_usage #account_usage} => Types::AccountUsage
    #
    # @example Response structure
    #
    #   resp.account_quotas.max_total_arm_v_cpus #=> Integer
    #   resp.account_quotas.max_total_rate_limit #=> Integer
    #   resp.account_quotas.max_revisions_per_function #=> Integer
    #   resp.account_quotas.max_endpoints_per_function #=> Integer
    #   resp.account_usage.function_count #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-web-2025-03-07/GetWebAccountSettings AWS API Documentation
    #
    # @overload get_web_account_settings(params = {})
    # @param [Hash] params ({})
    def get_web_account_settings(params = {}, options = {})
      req = build_request(:get_web_account_settings, params)
      req.send_request(options)
    end

    # Retrieves details about a web function, including its current state
    # and configuration.
    #
    # @option params [required, String] :function_name
    #   The name of the web function to retrieve. You can specify the function
    #   name or the function ARN. The length constraint applies only to the
    #   full ARN. If you specify only the function name, it is limited to 64
    #   characters in length.
    #
    # @return [Types::GetWebFunctionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetWebFunctionResponse#function_name #function_name} => String
    #   * {Types::GetWebFunctionResponse#function_arn #function_arn} => String
    #   * {Types::GetWebFunctionResponse#state #state} => String
    #   * {Types::GetWebFunctionResponse#state_reason #state_reason} => String
    #   * {Types::GetWebFunctionResponse#created_at #created_at} => Time
    #   * {Types::GetWebFunctionResponse#updated_at #updated_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_web_function({
    #     function_name: "FunctionName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.function_name #=> String
    #   resp.function_arn #=> String
    #   resp.state #=> String, one of "Pending", "Active", "Failed", "Deleting"
    #   resp.state_reason #=> String
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #
    #
    # The following waiters are defined for this operation (see {Client#wait_until} for detailed usage):
    #
    #   * web_function_active
    #   * web_function_deleted
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-web-2025-03-07/GetWebFunction AWS API Documentation
    #
    # @overload get_web_function(params = {})
    # @param [Hash] params ({})
    def get_web_function(params = {}, options = {})
      req = build_request(:get_web_function, params)
      req.send_request(options)
    end

    # Retrieves details about a web function endpoint, including its current
    # state, configuration, and domain name.
    #
    # @option params [required, String] :function_name
    #   The name of the web function. You can specify the function name or the
    #   function ARN. The length constraint applies only to the full ARN. If
    #   you specify only the function name, it is limited to 64 characters in
    #   length.
    #
    # @option params [required, String] :endpoint_name
    #   The name of the endpoint to retrieve. You can specify the endpoint
    #   name or the endpoint ARN. The length constraint applies only to the
    #   full ARN. If you specify only the endpoint name, it is limited to 64
    #   characters in length.
    #
    # @return [Types::GetWebFunctionEndpointResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetWebFunctionEndpointResponse#function_arn #function_arn} => String
    #   * {Types::GetWebFunctionEndpointResponse#endpoint_arn #endpoint_arn} => String
    #   * {Types::GetWebFunctionEndpointResponse#endpoint_name #endpoint_name} => String
    #   * {Types::GetWebFunctionEndpointResponse#description #description} => String
    #   * {Types::GetWebFunctionEndpointResponse#endpoint_type #endpoint_type} => String
    #   * {Types::GetWebFunctionEndpointResponse#domain_name #domain_name} => String
    #   * {Types::GetWebFunctionEndpointResponse#auth_type #auth_type} => String
    #   * {Types::GetWebFunctionEndpointResponse#auto_deployment_mode #auto_deployment_mode} => String
    #   * {Types::GetWebFunctionEndpointResponse#revision_weights #revision_weights} => Array&lt;Types::RevisionWeight&gt;
    #   * {Types::GetWebFunctionEndpointResponse#regions #regions} => Array&lt;String&gt;
    #   * {Types::GetWebFunctionEndpointResponse#scaling_config #scaling_config} => Types::ScalingConfig
    #   * {Types::GetWebFunctionEndpointResponse#throttle_config #throttle_config} => Types::ThrottleConfig
    #   * {Types::GetWebFunctionEndpointResponse#state #state} => String
    #   * {Types::GetWebFunctionEndpointResponse#state_reason #state_reason} => String
    #   * {Types::GetWebFunctionEndpointResponse#update_status #update_status} => String
    #   * {Types::GetWebFunctionEndpointResponse#update_status_reason #update_status_reason} => String
    #   * {Types::GetWebFunctionEndpointResponse#regional_endpoints #regional_endpoints} => Hash&lt;String,Types::RegionalEndpoint&gt;
    #   * {Types::GetWebFunctionEndpointResponse#created_at #created_at} => Time
    #   * {Types::GetWebFunctionEndpointResponse#updated_at #updated_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_web_function_endpoint({
    #     function_name: "FunctionName", # required
    #     endpoint_name: "EndpointName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.function_arn #=> String
    #   resp.endpoint_arn #=> String
    #   resp.endpoint_name #=> String
    #   resp.description #=> String
    #   resp.endpoint_type #=> String, one of "HomeRegion", "MultiRegion", "PerRegion"
    #   resp.domain_name #=> String
    #   resp.auth_type #=> String, one of "ApplicationManaged", "IamAuth"
    #   resp.auto_deployment_mode #=> String, one of "LatestRevision", "Disabled"
    #   resp.revision_weights #=> Array
    #   resp.revision_weights[0].revision_id #=> String
    #   resp.revision_weights[0].weight #=> Integer
    #   resp.regions #=> Array
    #   resp.regions[0] #=> String
    #   resp.scaling_config.max_environments #=> Integer
    #   resp.throttle_config.rate_limit #=> Integer
    #   resp.state #=> String, one of "Pending", "Active", "Failed", "Deleting"
    #   resp.state_reason #=> String
    #   resp.update_status #=> String, one of "InProgress", "Successful", "Failed"
    #   resp.update_status_reason #=> String
    #   resp.regional_endpoints #=> Hash
    #   resp.regional_endpoints["Region"].domain_name #=> String
    #   resp.regional_endpoints["Region"].auth_type #=> String, one of "ApplicationManaged", "IamAuth"
    #   resp.regional_endpoints["Region"].revision_weights #=> Array
    #   resp.regional_endpoints["Region"].revision_weights[0].revision_id #=> String
    #   resp.regional_endpoints["Region"].revision_weights[0].weight #=> Integer
    #   resp.regional_endpoints["Region"].scaling_config.max_environments #=> Integer
    #   resp.regional_endpoints["Region"].throttle_config.rate_limit #=> Integer
    #   resp.regional_endpoints["Region"].state #=> String, one of "Pending", "Active", "Failed", "Deleting"
    #   resp.regional_endpoints["Region"].state_reason #=> String
    #   resp.regional_endpoints["Region"].update_status #=> String, one of "InProgress", "Successful", "Failed"
    #   resp.regional_endpoints["Region"].update_status_reason #=> String
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #
    #
    # The following waiters are defined for this operation (see {Client#wait_until} for detailed usage):
    #
    #   * web_function_endpoint_active
    #   * web_function_endpoint_deleted
    #   * web_function_endpoint_updated
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-web-2025-03-07/GetWebFunctionEndpoint AWS API Documentation
    #
    # @overload get_web_function_endpoint(params = {})
    # @param [Hash] params ({})
    def get_web_function_endpoint(params = {}, options = {})
      req = build_request(:get_web_function_endpoint, params)
      req.send_request(options)
    end

    # Retrieves details about a web function revision, including its state
    # and configuration.
    #
    # @option params [required, String] :function_name
    #   The name of the web function. You can specify the function name or the
    #   function ARN. The length constraint applies only to the full ARN. If
    #   you specify only the function name, it is limited to 64 characters in
    #   length.
    #
    # @option params [required, String] :revision_id
    #   The identifier of the revision to retrieve. You can specify the
    #   revision identifier or the revision ARN. The length constraint applies
    #   only to the full ARN.
    #
    # @return [Types::GetWebFunctionRevisionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetWebFunctionRevisionResponse#function_arn #function_arn} => String
    #   * {Types::GetWebFunctionRevisionResponse#revision_arn #revision_arn} => String
    #   * {Types::GetWebFunctionRevisionResponse#revision_id #revision_id} => String
    #   * {Types::GetWebFunctionRevisionResponse#description #description} => String
    #   * {Types::GetWebFunctionRevisionResponse#kms_key_arn #kms_key_arn} => String
    #   * {Types::GetWebFunctionRevisionResponse#build_config #build_config} => Types::BuildConfig
    #   * {Types::GetWebFunctionRevisionResponse#service_config #service_config} => Types::ServiceConfig
    #   * {Types::GetWebFunctionRevisionResponse#state #state} => String
    #   * {Types::GetWebFunctionRevisionResponse#state_reason #state_reason} => String
    #   * {Types::GetWebFunctionRevisionResponse#errors #errors} => Array&lt;Types::RevisionError&gt;
    #   * {Types::GetWebFunctionRevisionResponse#created_at #created_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_web_function_revision({
    #     function_name: "FunctionName", # required
    #     revision_id: "RevisionId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.function_arn #=> String
    #   resp.revision_arn #=> String
    #   resp.revision_id #=> String
    #   resp.description #=> String
    #   resp.kms_key_arn #=> String
    #   resp.build_config.code_config.s3_object.bucket #=> String
    #   resp.build_config.code_config.s3_object.key #=> String
    #   resp.build_config.code_config.s3_object.version_id #=> String
    #   resp.build_config.runtime_config.runtime #=> String
    #   resp.service_config.execution_role_arn #=> String
    #   resp.service_config.timeout_seconds #=> Integer
    #   resp.service_config.max_concurrency_per_environment #=> Integer
    #   resp.service_config.environment_variables #=> Hash
    #   resp.service_config.environment_variables["EnvironmentVariablesKeyString"] #=> String
    #   resp.service_config.telemetry_config.logging_config.log_group #=> String
    #   resp.service_config.telemetry_config.logging_config.application_log_level #=> String, one of "TRACE", "DEBUG", "INFO", "WARN", "ERROR", "FATAL"
    #   resp.service_config.telemetry_config.logging_config.system_log_level #=> String, one of "DEBUG", "INFO", "WARN"
    #   resp.state #=> String, one of "Pending", "Active", "Failed"
    #   resp.state_reason #=> String
    #   resp.errors #=> Array
    #   resp.errors[0].attribute #=> String
    #   resp.errors[0].error_code #=> String
    #   resp.errors[0].error_message #=> String
    #   resp.created_at #=> Time
    #
    #
    # The following waiters are defined for this operation (see {Client#wait_until} for detailed usage):
    #
    #   * web_function_revision_active
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-web-2025-03-07/GetWebFunctionRevision AWS API Documentation
    #
    # @overload get_web_function_revision(params = {})
    # @param [Hash] params ({})
    def get_web_function_revision(params = {}, options = {})
      req = build_request(:get_web_function_revision, params)
      req.send_request(options)
    end

    # Returns a list of tags applied to a web function.
    #
    # @option params [required, String] :resource
    #   The Amazon Resource Name (ARN) of the web function.
    #
    # @return [Types::ListTagsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags({
    #     resource: "ResourceArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-web-2025-03-07/ListTags AWS API Documentation
    #
    # @overload list_tags(params = {})
    # @param [Hash] params ({})
    def list_tags(params = {}, options = {})
      req = build_request(:list_tags, params)
      req.send_request(options)
    end

    # Lists endpoints for a web function. We recommend using pagination to
    # ensure that the operation returns quickly and successfully.
    #
    # @option params [required, String] :function_name
    #   The name of the web function. You can specify the function name or the
    #   function ARN. The length constraint applies only to the full ARN. If
    #   you specify only the function name, it is limited to 64 characters in
    #   length.
    #
    # @option params [Array<Types::Filter>] :filters
    #   A list of filters to apply to the results. Supported filter names:
    #   `authType`, `autoDeploymentMode`, `endpointType`, `state`, and
    #   `updateStatus`.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call. Minimum
    #   value of 1, maximum value of 50. Default is 50.
    #
    # @option params [String] :next_token
    #   The pagination token that's returned by a previous request to
    #   retrieve the next page of results.
    #
    # @return [Types::ListWebFunctionEndpointsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListWebFunctionEndpointsResponse#endpoints #endpoints} => Array&lt;Types::FunctionEndpointSummary&gt;
    #   * {Types::ListWebFunctionEndpointsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_web_function_endpoints({
    #     function_name: "FunctionName", # required
    #     filters: [
    #       {
    #         name: "FilterNameString", # required
    #         values: ["FilterValueListMemberString"], # required
    #       },
    #     ],
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.endpoints #=> Array
    #   resp.endpoints[0].endpoint_arn #=> String
    #   resp.endpoints[0].endpoint_name #=> String
    #   resp.endpoints[0].description #=> String
    #   resp.endpoints[0].endpoint_type #=> String, one of "HomeRegion", "MultiRegion", "PerRegion"
    #   resp.endpoints[0].domain_name #=> String
    #   resp.endpoints[0].auth_type #=> String, one of "ApplicationManaged", "IamAuth"
    #   resp.endpoints[0].auto_deployment_mode #=> String, one of "LatestRevision", "Disabled"
    #   resp.endpoints[0].revision_weights #=> Array
    #   resp.endpoints[0].revision_weights[0].revision_id #=> String
    #   resp.endpoints[0].revision_weights[0].weight #=> Integer
    #   resp.endpoints[0].regions #=> Array
    #   resp.endpoints[0].regions[0] #=> String
    #   resp.endpoints[0].scaling_config.max_environments #=> Integer
    #   resp.endpoints[0].throttle_config.rate_limit #=> Integer
    #   resp.endpoints[0].state #=> String, one of "Pending", "Active", "Failed", "Deleting"
    #   resp.endpoints[0].state_reason #=> String
    #   resp.endpoints[0].update_status #=> String, one of "InProgress", "Successful", "Failed"
    #   resp.endpoints[0].update_status_reason #=> String
    #   resp.endpoints[0].created_at #=> Time
    #   resp.endpoints[0].updated_at #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-web-2025-03-07/ListWebFunctionEndpoints AWS API Documentation
    #
    # @overload list_web_function_endpoints(params = {})
    # @param [Hash] params ({})
    def list_web_function_endpoints(params = {}, options = {})
      req = build_request(:list_web_function_endpoints, params)
      req.send_request(options)
    end

    # Lists revisions for a web function. We recommend using pagination to
    # ensure that the operation returns quickly and successfully.
    #
    # @option params [required, String] :function_name
    #   The name of the web function. You can specify the function name or the
    #   function ARN. The length constraint applies only to the full ARN. If
    #   you specify only the function name, it is limited to 64 characters in
    #   length.
    #
    # @option params [Array<Types::Filter>] :filters
    #   A list of filters to apply to the results. The only supported filter
    #   name is `state`.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call. Minimum
    #   value of 1, maximum value of 50. Default is 50.
    #
    # @option params [String] :next_token
    #   The pagination token that's returned by a previous request to
    #   retrieve the next page of results.
    #
    # @return [Types::ListWebFunctionRevisionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListWebFunctionRevisionsResponse#revisions #revisions} => Array&lt;Types::FunctionRevisionSummary&gt;
    #   * {Types::ListWebFunctionRevisionsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_web_function_revisions({
    #     function_name: "FunctionName", # required
    #     filters: [
    #       {
    #         name: "FilterNameString", # required
    #         values: ["FilterValueListMemberString"], # required
    #       },
    #     ],
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.revisions #=> Array
    #   resp.revisions[0].revision_arn #=> String
    #   resp.revisions[0].revision_id #=> String
    #   resp.revisions[0].description #=> String
    #   resp.revisions[0].state #=> String, one of "Pending", "Active", "Failed"
    #   resp.revisions[0].state_reason #=> String
    #   resp.revisions[0].created_at #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-web-2025-03-07/ListWebFunctionRevisions AWS API Documentation
    #
    # @overload list_web_function_revisions(params = {})
    # @param [Hash] params ({})
    def list_web_function_revisions(params = {}, options = {})
      req = build_request(:list_web_function_revisions, params)
      req.send_request(options)
    end

    # Lists web functions in your account. We recommend using pagination to
    # ensure that the operation returns quickly and successfully.
    #
    # @option params [Array<Types::Filter>] :filters
    #   A list of filters to apply to the results. The only supported filter
    #   name is `state`.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call. Minimum
    #   value of 1, maximum value of 50. Default is 50.
    #
    # @option params [String] :next_token
    #   The pagination token that's returned by a previous request to
    #   retrieve the next page of results.
    #
    # @return [Types::ListWebFunctionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListWebFunctionsResponse#functions #functions} => Array&lt;Types::FunctionSummary&gt;
    #   * {Types::ListWebFunctionsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_web_functions({
    #     filters: [
    #       {
    #         name: "FilterNameString", # required
    #         values: ["FilterValueListMemberString"], # required
    #       },
    #     ],
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.functions #=> Array
    #   resp.functions[0].function_name #=> String
    #   resp.functions[0].function_arn #=> String
    #   resp.functions[0].state #=> String, one of "Pending", "Active", "Failed", "Deleting"
    #   resp.functions[0].state_reason #=> String
    #   resp.functions[0].created_at #=> Time
    #   resp.functions[0].updated_at #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-web-2025-03-07/ListWebFunctions AWS API Documentation
    #
    # @overload list_web_functions(params = {})
    # @param [Hash] params ({})
    def list_web_functions(params = {}, options = {})
      req = build_request(:list_web_functions, params)
      req.send_request(options)
    end

    # Adds or updates a resource-based policy on a web function. A
    # resource-based policy grants permissions to other AWS accounts or
    # services to perform actions on the web function.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the web function.
    #
    # @option params [required, String] :policy
    #   The JSON-formatted resource-based policy to attach to the web
    #   function.
    #
    # @option params [String] :revision_id
    #   The revision ID of the existing policy. Use this to prevent conflicts
    #   when updating a policy concurrently. If you don't specify a value,
    #   the update proceeds without checking the current revision.
    #
    # @return [Types::PutResourcePolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutResourcePolicyResponse#policy #policy} => String
    #   * {Types::PutResourcePolicyResponse#revision_id #revision_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_resource_policy({
    #     resource_arn: "ResourceArn", # required
    #     policy: "ResourcePolicy", # required
    #     revision_id: "PolicyRevisionId",
    #   })
    #
    # @example Response structure
    #
    #   resp.policy #=> String
    #   resp.revision_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-web-2025-03-07/PutResourcePolicy AWS API Documentation
    #
    # @overload put_resource_policy(params = {})
    # @param [Hash] params ({})
    def put_resource_policy(params = {}, options = {})
      req = build_request(:put_resource_policy, params)
      req.send_request(options)
    end

    # Adds tags to a web function. If a tag key already exists, the existing
    # value is overwritten with the new value.
    #
    # @option params [required, String] :resource
    #   The Amazon Resource Name (ARN) of the web function.
    #
    # @option params [required, Hash<String,String>] :tags
    #   A map of tag keys and values to add to the web function.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource: "ResourceArn", # required
    #     tags: { # required
    #       "TagKey" => "TagsValueString",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-web-2025-03-07/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes tags from a web function.
    #
    # @option params [required, String] :resource
    #   The Amazon Resource Name (ARN) of the web function.
    #
    # @option params [required, Array<String>] :tag_keys
    #   A list of tag keys to remove from the web function.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource: "ResourceArn", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-web-2025-03-07/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates the configuration of a web function endpoint. You can modify
    # the authorization type, auto-deployment mode, revision weights,
    # scaling, and throttling settings.
    #
    # @option params [required, String] :function_name
    #   The name of the web function. You can specify the function name or the
    #   function ARN. The length constraint applies only to the full ARN. If
    #   you specify only the function name, it is limited to 64 characters in
    #   length.
    #
    # @option params [required, String] :endpoint_name
    #   The name of the endpoint to update. You can specify the endpoint name
    #   or the endpoint ARN. The length constraint applies only to the full
    #   ARN. If you specify only the endpoint name, it is limited to 64
    #   characters in length.
    #
    # @option params [String] :description
    #   A description of the endpoint.
    #
    # @option params [String] :auth_type
    #   The authorization type for the endpoint.
    #
    # @option params [String] :auto_deployment_mode
    #   The auto-deployment mode for the endpoint.
    #
    # @option params [Array<Types::RevisionWeight>] :revision_weights
    #   A list of revision weights that determine how traffic is distributed
    #   across revisions.
    #
    # @option params [Types::ScalingConfig] :scaling_config
    #   The scaling configuration for the endpoint. Omit this field to keep
    #   the current scaling configuration. To clear a previously set
    #   `maxEnvironments` value, specify an empty object.
    #
    # @option params [Types::ThrottleConfig] :throttle_config
    #   The throttling configuration for the endpoint. Omit this field to keep
    #   the current throttling configuration. To clear a previously set
    #   `rateLimit` value, specify an empty object.
    #
    # @return [Types::UpdateWebFunctionEndpointResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateWebFunctionEndpointResponse#function_arn #function_arn} => String
    #   * {Types::UpdateWebFunctionEndpointResponse#endpoint_arn #endpoint_arn} => String
    #   * {Types::UpdateWebFunctionEndpointResponse#endpoint_name #endpoint_name} => String
    #   * {Types::UpdateWebFunctionEndpointResponse#description #description} => String
    #   * {Types::UpdateWebFunctionEndpointResponse#endpoint_type #endpoint_type} => String
    #   * {Types::UpdateWebFunctionEndpointResponse#domain_name #domain_name} => String
    #   * {Types::UpdateWebFunctionEndpointResponse#auth_type #auth_type} => String
    #   * {Types::UpdateWebFunctionEndpointResponse#auto_deployment_mode #auto_deployment_mode} => String
    #   * {Types::UpdateWebFunctionEndpointResponse#revision_weights #revision_weights} => Array&lt;Types::RevisionWeight&gt;
    #   * {Types::UpdateWebFunctionEndpointResponse#regions #regions} => Array&lt;String&gt;
    #   * {Types::UpdateWebFunctionEndpointResponse#scaling_config #scaling_config} => Types::ScalingConfig
    #   * {Types::UpdateWebFunctionEndpointResponse#throttle_config #throttle_config} => Types::ThrottleConfig
    #   * {Types::UpdateWebFunctionEndpointResponse#state #state} => String
    #   * {Types::UpdateWebFunctionEndpointResponse#state_reason #state_reason} => String
    #   * {Types::UpdateWebFunctionEndpointResponse#update_status #update_status} => String
    #   * {Types::UpdateWebFunctionEndpointResponse#update_status_reason #update_status_reason} => String
    #   * {Types::UpdateWebFunctionEndpointResponse#regional_endpoints #regional_endpoints} => Hash&lt;String,Types::RegionalEndpoint&gt;
    #   * {Types::UpdateWebFunctionEndpointResponse#created_at #created_at} => Time
    #   * {Types::UpdateWebFunctionEndpointResponse#updated_at #updated_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_web_function_endpoint({
    #     function_name: "FunctionName", # required
    #     endpoint_name: "EndpointName", # required
    #     description: "Description",
    #     auth_type: "ApplicationManaged", # accepts ApplicationManaged, IamAuth
    #     auto_deployment_mode: "LatestRevision", # accepts LatestRevision, Disabled
    #     revision_weights: [
    #       {
    #         revision_id: "RevisionId", # required
    #         weight: 1, # required
    #       },
    #     ],
    #     scaling_config: {
    #       max_environments: 1,
    #     },
    #     throttle_config: {
    #       rate_limit: 1,
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.function_arn #=> String
    #   resp.endpoint_arn #=> String
    #   resp.endpoint_name #=> String
    #   resp.description #=> String
    #   resp.endpoint_type #=> String, one of "HomeRegion", "MultiRegion", "PerRegion"
    #   resp.domain_name #=> String
    #   resp.auth_type #=> String, one of "ApplicationManaged", "IamAuth"
    #   resp.auto_deployment_mode #=> String, one of "LatestRevision", "Disabled"
    #   resp.revision_weights #=> Array
    #   resp.revision_weights[0].revision_id #=> String
    #   resp.revision_weights[0].weight #=> Integer
    #   resp.regions #=> Array
    #   resp.regions[0] #=> String
    #   resp.scaling_config.max_environments #=> Integer
    #   resp.throttle_config.rate_limit #=> Integer
    #   resp.state #=> String, one of "Pending", "Active", "Failed", "Deleting"
    #   resp.state_reason #=> String
    #   resp.update_status #=> String, one of "InProgress", "Successful", "Failed"
    #   resp.update_status_reason #=> String
    #   resp.regional_endpoints #=> Hash
    #   resp.regional_endpoints["Region"].domain_name #=> String
    #   resp.regional_endpoints["Region"].auth_type #=> String, one of "ApplicationManaged", "IamAuth"
    #   resp.regional_endpoints["Region"].revision_weights #=> Array
    #   resp.regional_endpoints["Region"].revision_weights[0].revision_id #=> String
    #   resp.regional_endpoints["Region"].revision_weights[0].weight #=> Integer
    #   resp.regional_endpoints["Region"].scaling_config.max_environments #=> Integer
    #   resp.regional_endpoints["Region"].throttle_config.rate_limit #=> Integer
    #   resp.regional_endpoints["Region"].state #=> String, one of "Pending", "Active", "Failed", "Deleting"
    #   resp.regional_endpoints["Region"].state_reason #=> String
    #   resp.regional_endpoints["Region"].update_status #=> String, one of "InProgress", "Successful", "Failed"
    #   resp.regional_endpoints["Region"].update_status_reason #=> String
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-web-2025-03-07/UpdateWebFunctionEndpoint AWS API Documentation
    #
    # @overload update_web_function_endpoint(params = {})
    # @param [Hash] params ({})
    def update_web_function_endpoint(params = {}, options = {})
      req = build_request(:update_web_function_endpoint, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::LambdaWeb')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-lambdaweb'
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
    # | waiter_name                   | params                             | :delay   | :max_attempts |
    # | ----------------------------- | ---------------------------------- | -------- | ------------- |
    # | web_function_active           | {Client#get_web_function}          | 1        | 300           |
    # | web_function_deleted          | {Client#get_web_function}          | 1        | 300           |
    # | web_function_endpoint_active  | {Client#get_web_function_endpoint} | 1        | 300           |
    # | web_function_endpoint_deleted | {Client#get_web_function_endpoint} | 1        | 300           |
    # | web_function_endpoint_updated | {Client#get_web_function_endpoint} | 1        | 300           |
    # | web_function_revision_active  | {Client#get_web_function_revision} | 1        | 300           |
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
        web_function_active: Waiters::WebFunctionActive,
        web_function_deleted: Waiters::WebFunctionDeleted,
        web_function_endpoint_active: Waiters::WebFunctionEndpointActive,
        web_function_endpoint_deleted: Waiters::WebFunctionEndpointDeleted,
        web_function_endpoint_updated: Waiters::WebFunctionEndpointUpdated,
        web_function_revision_active: Waiters::WebFunctionRevisionActive
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
