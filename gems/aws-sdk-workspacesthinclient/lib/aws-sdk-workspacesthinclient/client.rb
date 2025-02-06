# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'seahorse/client/plugins/content_length.rb'
require 'aws-sdk-core/plugins/credentials_configuration.rb'
require 'aws-sdk-core/plugins/logging.rb'
require 'aws-sdk-core/plugins/param_converter.rb'
require 'aws-sdk-core/plugins/param_validator.rb'
require 'aws-sdk-core/plugins/user_agent.rb'
require 'aws-sdk-core/plugins/helpful_socket_errors.rb'
require 'aws-sdk-core/plugins/retry_errors.rb'
require 'aws-sdk-core/plugins/global_configuration.rb'
require 'aws-sdk-core/plugins/regional_endpoint.rb'
require 'aws-sdk-core/plugins/endpoint_discovery.rb'
require 'aws-sdk-core/plugins/endpoint_pattern.rb'
require 'aws-sdk-core/plugins/response_paging.rb'
require 'aws-sdk-core/plugins/stub_responses.rb'
require 'aws-sdk-core/plugins/idempotency_token.rb'
require 'aws-sdk-core/plugins/invocation_id.rb'
require 'aws-sdk-core/plugins/jsonvalue_converter.rb'
require 'aws-sdk-core/plugins/client_metrics_plugin.rb'
require 'aws-sdk-core/plugins/client_metrics_send_plugin.rb'
require 'aws-sdk-core/plugins/transfer_encoding.rb'
require 'aws-sdk-core/plugins/http_checksum.rb'
require 'aws-sdk-core/plugins/checksum_algorithm.rb'
require 'aws-sdk-core/plugins/request_compression.rb'
require 'aws-sdk-core/plugins/defaults_mode.rb'
require 'aws-sdk-core/plugins/recursion_detection.rb'
require 'aws-sdk-core/plugins/telemetry.rb'
require 'aws-sdk-core/plugins/sign.rb'
require 'aws-sdk-core/plugins/protocols/rest_json.rb'

module Aws::WorkSpacesThinClient
  # An API client for WorkSpacesThinClient.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::WorkSpacesThinClient::Client.new(
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

    @identifier = :workspacesthinclient

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
    add_plugin(Aws::WorkSpacesThinClient::Plugins::Endpoints)

    # @overload initialize(options)
    #   @param [Hash] options
    #
    #   @option options [Array<Seahorse::Client::Plugin>] :plugins ([]])
    #     A list of plugins to apply to the client. Each plugin is either a
    #     class name or an instance of a plugin class.
    #
    #   @option options [required, Aws::CredentialProvider] :credentials
    #     Your AWS credentials. This can be an instance of any one of the
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
    #     * The `:access_key_id`, `:secret_access_key`, `:session_token`, and
    #       `:account_id` options.
    #     * ENV['AWS_ACCESS_KEY_ID'], ENV['AWS_SECRET_ACCESS_KEY'],
    #       ENV['AWS_SESSION_TOKEN'], and ENV['AWS_ACCOUNT_ID']
    #     * `~/.aws/credentials`
    #     * `~/.aws/config`
    #     * EC2/ECS IMDS instance profile - When used by default, the timeouts
    #       are very aggressive. Construct and pass an instance of
    #       `Aws::InstanceProfileCredentials` or `Aws::ECSCredentials` to
    #       enable retries and extended timeouts. Instance profile credential
    #       fetching can be disabled by setting ENV['AWS_EC2_METADATA_DISABLED']
    #       to true.
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
    #     Set to true to disable SDK automatically adding host prefix
    #     to default service endpoint when available.
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
    #     Used when loading credentials from the shared credentials file
    #     at HOME/.aws/credentials.  When not specified, 'default' is used.
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
    #     A Bearer Token Provider. This can be an instance of any one of the
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
    #   @option options [Aws::WorkSpacesThinClient::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::WorkSpacesThinClient::EndpointParameters`.
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

    # Creates an environment for your thin client devices.
    #
    # @option params [String] :name
    #   The name for the environment.
    #
    # @option params [required, String] :desktop_arn
    #   The Amazon Resource Name (ARN) of the desktop to stream from Amazon
    #   WorkSpaces, WorkSpaces Secure Browser, or AppStream 2.0.
    #
    # @option params [String] :desktop_endpoint
    #   The URL for the identity provider login (only for environments that
    #   use AppStream 2.0).
    #
    # @option params [String] :software_set_update_schedule
    #   An option to define if software updates should be applied within a
    #   maintenance window.
    #
    # @option params [Types::MaintenanceWindow] :maintenance_window
    #   A specification for a time window to apply software updates.
    #
    # @option params [String] :software_set_update_mode
    #   An option to define which software updates to apply.
    #
    # @option params [String] :desired_software_set_id
    #   The ID of the software set to apply.
    #
    # @option params [String] :kms_key_arn
    #   The Amazon Resource Name (ARN) of the Key Management Service key to
    #   use to encrypt the environment.
    #
    # @option params [String] :client_token
    #   Specifies a unique, case-sensitive identifier that you provide to
    #   ensure the idempotency of the request. This lets you safely retry the
    #   request without accidentally performing the same operation a second
    #   time. Passing the same value to a later call to an operation requires
    #   that you also pass the same value for all other parameters. We
    #   recommend that you use a [UUID type of value][1].
    #
    #   If you don't provide this value, then Amazon Web Services generates a
    #   random one for you.
    #
    #   If you retry the operation with the same `ClientToken`, but with
    #   different parameters, the retry fails with an
    #   `IdempotentParameterMismatch` error.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://wikipedia.org/wiki/Universally_unique_identifier
    #
    # @option params [Hash<String,String>] :tags
    #   A map of the key-value pairs of the tag or tags to assign to the
    #   resource.
    #
    # @option params [Hash<String,String>] :device_creation_tags
    #   A map of the key-value pairs of the tag or tags to assign to the newly
    #   created devices for this environment.
    #
    # @return [Types::CreateEnvironmentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateEnvironmentResponse#environment #environment} => Types::EnvironmentSummary
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_environment({
    #     name: "EnvironmentName",
    #     desktop_arn: "Arn", # required
    #     desktop_endpoint: "DesktopEndpoint",
    #     software_set_update_schedule: "USE_MAINTENANCE_WINDOW", # accepts USE_MAINTENANCE_WINDOW, APPLY_IMMEDIATELY
    #     maintenance_window: {
    #       type: "SYSTEM", # required, accepts SYSTEM, CUSTOM
    #       start_time_hour: 1,
    #       start_time_minute: 1,
    #       end_time_hour: 1,
    #       end_time_minute: 1,
    #       days_of_the_week: ["MONDAY"], # accepts MONDAY, TUESDAY, WEDNESDAY, THURSDAY, FRIDAY, SATURDAY, SUNDAY
    #       apply_time_of: "UTC", # accepts UTC, DEVICE
    #     },
    #     software_set_update_mode: "USE_LATEST", # accepts USE_LATEST, USE_DESIRED
    #     desired_software_set_id: "SoftwareSetId",
    #     kms_key_arn: "KmsKeyArn",
    #     client_token: "ClientToken",
    #     tags: {
    #       "String" => "String",
    #     },
    #     device_creation_tags: {
    #       "DeviceCreationTagKey" => "DeviceCreationTagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.environment.id #=> String
    #   resp.environment.name #=> String
    #   resp.environment.desktop_arn #=> String
    #   resp.environment.desktop_endpoint #=> String
    #   resp.environment.desktop_type #=> String, one of "workspaces", "appstream", "workspaces-web"
    #   resp.environment.activation_code #=> String
    #   resp.environment.software_set_update_schedule #=> String, one of "USE_MAINTENANCE_WINDOW", "APPLY_IMMEDIATELY"
    #   resp.environment.maintenance_window.type #=> String, one of "SYSTEM", "CUSTOM"
    #   resp.environment.maintenance_window.start_time_hour #=> Integer
    #   resp.environment.maintenance_window.start_time_minute #=> Integer
    #   resp.environment.maintenance_window.end_time_hour #=> Integer
    #   resp.environment.maintenance_window.end_time_minute #=> Integer
    #   resp.environment.maintenance_window.days_of_the_week #=> Array
    #   resp.environment.maintenance_window.days_of_the_week[0] #=> String, one of "MONDAY", "TUESDAY", "WEDNESDAY", "THURSDAY", "FRIDAY", "SATURDAY", "SUNDAY"
    #   resp.environment.maintenance_window.apply_time_of #=> String, one of "UTC", "DEVICE"
    #   resp.environment.software_set_update_mode #=> String, one of "USE_LATEST", "USE_DESIRED"
    #   resp.environment.desired_software_set_id #=> String
    #   resp.environment.pending_software_set_id #=> String
    #   resp.environment.created_at #=> Time
    #   resp.environment.updated_at #=> Time
    #   resp.environment.arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-thin-client-2023-08-22/CreateEnvironment AWS API Documentation
    #
    # @overload create_environment(params = {})
    # @param [Hash] params ({})
    def create_environment(params = {}, options = {})
      req = build_request(:create_environment, params)
      req.send_request(options)
    end

    # Deletes a thin client device.
    #
    # @option params [required, String] :id
    #   The ID of the device to delete.
    #
    # @option params [String] :client_token
    #   Specifies a unique, case-sensitive identifier that you provide to
    #   ensure the idempotency of the request. This lets you safely retry the
    #   request without accidentally performing the same operation a second
    #   time. Passing the same value to a later call to an operation requires
    #   that you also pass the same value for all other parameters. We
    #   recommend that you use a [UUID type of value][1].
    #
    #   If you don't provide this value, then Amazon Web Services generates a
    #   random one for you.
    #
    #   If you retry the operation with the same `ClientToken`, but with
    #   different parameters, the retry fails with an
    #   `IdempotentParameterMismatch` error.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://wikipedia.org/wiki/Universally_unique_identifier
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_device({
    #     id: "DeviceId", # required
    #     client_token: "ClientToken",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-thin-client-2023-08-22/DeleteDevice AWS API Documentation
    #
    # @overload delete_device(params = {})
    # @param [Hash] params ({})
    def delete_device(params = {}, options = {})
      req = build_request(:delete_device, params)
      req.send_request(options)
    end

    # Deletes an environment.
    #
    # @option params [required, String] :id
    #   The ID of the environment to delete.
    #
    # @option params [String] :client_token
    #   Specifies a unique, case-sensitive identifier that you provide to
    #   ensure the idempotency of the request. This lets you safely retry the
    #   request without accidentally performing the same operation a second
    #   time. Passing the same value to a later call to an operation requires
    #   that you also pass the same value for all other parameters. We
    #   recommend that you use a [UUID type of value][1].
    #
    #   If you don't provide this value, then Amazon Web Services generates a
    #   random one for you.
    #
    #   If you retry the operation with the same `ClientToken`, but with
    #   different parameters, the retry fails with an
    #   `IdempotentParameterMismatch` error.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://wikipedia.org/wiki/Universally_unique_identifier
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_environment({
    #     id: "EnvironmentId", # required
    #     client_token: "ClientToken",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-thin-client-2023-08-22/DeleteEnvironment AWS API Documentation
    #
    # @overload delete_environment(params = {})
    # @param [Hash] params ({})
    def delete_environment(params = {}, options = {})
      req = build_request(:delete_environment, params)
      req.send_request(options)
    end

    # Deregisters a thin client device.
    #
    # @option params [required, String] :id
    #   The ID of the device to deregister.
    #
    # @option params [String] :target_device_status
    #   The desired new status for the device.
    #
    # @option params [String] :client_token
    #   Specifies a unique, case-sensitive identifier that you provide to
    #   ensure the idempotency of the request. This lets you safely retry the
    #   request without accidentally performing the same operation a second
    #   time. Passing the same value to a later call to an operation requires
    #   that you also pass the same value for all other parameters. We
    #   recommend that you use a [UUID type of value][1].
    #
    #   If you don't provide this value, then Amazon Web Services generates a
    #   random one for you.
    #
    #   If you retry the operation with the same `ClientToken`, but with
    #   different parameters, the retry fails with an
    #   `IdempotentParameterMismatch` error.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://wikipedia.org/wiki/Universally_unique_identifier
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.deregister_device({
    #     id: "DeviceId", # required
    #     target_device_status: "DEREGISTERED", # accepts DEREGISTERED, ARCHIVED
    #     client_token: "ClientToken",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-thin-client-2023-08-22/DeregisterDevice AWS API Documentation
    #
    # @overload deregister_device(params = {})
    # @param [Hash] params ({})
    def deregister_device(params = {}, options = {})
      req = build_request(:deregister_device, params)
      req.send_request(options)
    end

    # Returns information for a thin client device.
    #
    # @option params [required, String] :id
    #   The ID of the device for which to return information.
    #
    # @return [Types::GetDeviceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDeviceResponse#device #device} => Types::Device
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_device({
    #     id: "DeviceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.device.id #=> String
    #   resp.device.serial_number #=> String
    #   resp.device.name #=> String
    #   resp.device.model #=> String
    #   resp.device.environment_id #=> String
    #   resp.device.status #=> String, one of "REGISTERED", "DEREGISTERING", "DEREGISTERED", "ARCHIVED"
    #   resp.device.current_software_set_id #=> String
    #   resp.device.current_software_set_version #=> String
    #   resp.device.desired_software_set_id #=> String
    #   resp.device.pending_software_set_id #=> String
    #   resp.device.pending_software_set_version #=> String
    #   resp.device.software_set_update_schedule #=> String, one of "USE_MAINTENANCE_WINDOW", "APPLY_IMMEDIATELY"
    #   resp.device.software_set_compliance_status #=> String, one of "NONE", "COMPLIANT", "NOT_COMPLIANT"
    #   resp.device.software_set_update_status #=> String, one of "AVAILABLE", "IN_PROGRESS", "UP_TO_DATE"
    #   resp.device.last_connected_at #=> Time
    #   resp.device.last_posture_at #=> Time
    #   resp.device.created_at #=> Time
    #   resp.device.updated_at #=> Time
    #   resp.device.arn #=> String
    #   resp.device.kms_key_arn #=> String
    #   resp.device.tags #=> Hash
    #   resp.device.tags["String"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-thin-client-2023-08-22/GetDevice AWS API Documentation
    #
    # @overload get_device(params = {})
    # @param [Hash] params ({})
    def get_device(params = {}, options = {})
      req = build_request(:get_device, params)
      req.send_request(options)
    end

    # Returns information for an environment.
    #
    # @option params [required, String] :id
    #   The ID of the environment for which to return information.
    #
    # @return [Types::GetEnvironmentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetEnvironmentResponse#environment #environment} => Types::Environment
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_environment({
    #     id: "EnvironmentId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.environment.id #=> String
    #   resp.environment.name #=> String
    #   resp.environment.desktop_arn #=> String
    #   resp.environment.desktop_endpoint #=> String
    #   resp.environment.desktop_type #=> String, one of "workspaces", "appstream", "workspaces-web"
    #   resp.environment.activation_code #=> String
    #   resp.environment.registered_devices_count #=> Integer
    #   resp.environment.software_set_update_schedule #=> String, one of "USE_MAINTENANCE_WINDOW", "APPLY_IMMEDIATELY"
    #   resp.environment.maintenance_window.type #=> String, one of "SYSTEM", "CUSTOM"
    #   resp.environment.maintenance_window.start_time_hour #=> Integer
    #   resp.environment.maintenance_window.start_time_minute #=> Integer
    #   resp.environment.maintenance_window.end_time_hour #=> Integer
    #   resp.environment.maintenance_window.end_time_minute #=> Integer
    #   resp.environment.maintenance_window.days_of_the_week #=> Array
    #   resp.environment.maintenance_window.days_of_the_week[0] #=> String, one of "MONDAY", "TUESDAY", "WEDNESDAY", "THURSDAY", "FRIDAY", "SATURDAY", "SUNDAY"
    #   resp.environment.maintenance_window.apply_time_of #=> String, one of "UTC", "DEVICE"
    #   resp.environment.software_set_update_mode #=> String, one of "USE_LATEST", "USE_DESIRED"
    #   resp.environment.desired_software_set_id #=> String
    #   resp.environment.pending_software_set_id #=> String
    #   resp.environment.pending_software_set_version #=> String
    #   resp.environment.software_set_compliance_status #=> String, one of "NO_REGISTERED_DEVICES", "COMPLIANT", "NOT_COMPLIANT"
    #   resp.environment.created_at #=> Time
    #   resp.environment.updated_at #=> Time
    #   resp.environment.arn #=> String
    #   resp.environment.kms_key_arn #=> String
    #   resp.environment.tags #=> Hash
    #   resp.environment.tags["String"] #=> String
    #   resp.environment.device_creation_tags #=> Hash
    #   resp.environment.device_creation_tags["DeviceCreationTagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-thin-client-2023-08-22/GetEnvironment AWS API Documentation
    #
    # @overload get_environment(params = {})
    # @param [Hash] params ({})
    def get_environment(params = {}, options = {})
      req = build_request(:get_environment, params)
      req.send_request(options)
    end

    # Returns information for a software set.
    #
    # @option params [required, String] :id
    #   The ID of the software set for which to return information.
    #
    # @return [Types::GetSoftwareSetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetSoftwareSetResponse#software_set #software_set} => Types::SoftwareSet
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_software_set({
    #     id: "SoftwareSetId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.software_set.id #=> String
    #   resp.software_set.version #=> String
    #   resp.software_set.released_at #=> Time
    #   resp.software_set.supported_until #=> Time
    #   resp.software_set.validation_status #=> String, one of "VALIDATED", "NOT_VALIDATED"
    #   resp.software_set.software #=> Array
    #   resp.software_set.software[0].name #=> String
    #   resp.software_set.software[0].version #=> String
    #   resp.software_set.arn #=> String
    #   resp.software_set.tags #=> Hash
    #   resp.software_set.tags["String"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-thin-client-2023-08-22/GetSoftwareSet AWS API Documentation
    #
    # @overload get_software_set(params = {})
    # @param [Hash] params ({})
    def get_software_set(params = {}, options = {})
      req = build_request(:get_software_set, params)
      req.send_request(options)
    end

    # Returns a list of thin client devices.
    #
    # @option params [String] :next_token
    #   If `nextToken` is returned, there are more results available. The
    #   value of `nextToken` is a unique pagination token for each page. Make
    #   the call again using the returned token to retrieve the next page.
    #   Keep all other arguments unchanged. Each pagination token expires
    #   after 24 hours. Using an expired pagination token will return an *HTTP
    #   400 InvalidToken error*.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results that are returned per call. You can use
    #   `nextToken` to obtain further pages of results.
    #
    #   This is only an upper limit. The actual number of results returned per
    #   call might be fewer than the specified maximum.
    #
    # @return [Types::ListDevicesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDevicesResponse#devices #devices} => Array&lt;Types::DeviceSummary&gt;
    #   * {Types::ListDevicesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_devices({
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.devices #=> Array
    #   resp.devices[0].id #=> String
    #   resp.devices[0].serial_number #=> String
    #   resp.devices[0].name #=> String
    #   resp.devices[0].model #=> String
    #   resp.devices[0].environment_id #=> String
    #   resp.devices[0].status #=> String, one of "REGISTERED", "DEREGISTERING", "DEREGISTERED", "ARCHIVED"
    #   resp.devices[0].current_software_set_id #=> String
    #   resp.devices[0].desired_software_set_id #=> String
    #   resp.devices[0].pending_software_set_id #=> String
    #   resp.devices[0].software_set_update_schedule #=> String, one of "USE_MAINTENANCE_WINDOW", "APPLY_IMMEDIATELY"
    #   resp.devices[0].last_connected_at #=> Time
    #   resp.devices[0].last_posture_at #=> Time
    #   resp.devices[0].created_at #=> Time
    #   resp.devices[0].updated_at #=> Time
    #   resp.devices[0].arn #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-thin-client-2023-08-22/ListDevices AWS API Documentation
    #
    # @overload list_devices(params = {})
    # @param [Hash] params ({})
    def list_devices(params = {}, options = {})
      req = build_request(:list_devices, params)
      req.send_request(options)
    end

    # Returns a list of environments.
    #
    # @option params [String] :next_token
    #   If `nextToken` is returned, there are more results available. The
    #   value of `nextToken` is a unique pagination token for each page. Make
    #   the call again using the returned token to retrieve the next page.
    #   Keep all other arguments unchanged. Each pagination token expires
    #   after 24 hours. Using an expired pagination token will return an *HTTP
    #   400 InvalidToken error*.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results that are returned per call. You can use
    #   `nextToken` to obtain further pages of results.
    #
    #   This is only an upper limit. The actual number of results returned per
    #   call might be fewer than the specified maximum.
    #
    # @return [Types::ListEnvironmentsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListEnvironmentsResponse#environments #environments} => Array&lt;Types::EnvironmentSummary&gt;
    #   * {Types::ListEnvironmentsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_environments({
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.environments #=> Array
    #   resp.environments[0].id #=> String
    #   resp.environments[0].name #=> String
    #   resp.environments[0].desktop_arn #=> String
    #   resp.environments[0].desktop_endpoint #=> String
    #   resp.environments[0].desktop_type #=> String, one of "workspaces", "appstream", "workspaces-web"
    #   resp.environments[0].activation_code #=> String
    #   resp.environments[0].software_set_update_schedule #=> String, one of "USE_MAINTENANCE_WINDOW", "APPLY_IMMEDIATELY"
    #   resp.environments[0].maintenance_window.type #=> String, one of "SYSTEM", "CUSTOM"
    #   resp.environments[0].maintenance_window.start_time_hour #=> Integer
    #   resp.environments[0].maintenance_window.start_time_minute #=> Integer
    #   resp.environments[0].maintenance_window.end_time_hour #=> Integer
    #   resp.environments[0].maintenance_window.end_time_minute #=> Integer
    #   resp.environments[0].maintenance_window.days_of_the_week #=> Array
    #   resp.environments[0].maintenance_window.days_of_the_week[0] #=> String, one of "MONDAY", "TUESDAY", "WEDNESDAY", "THURSDAY", "FRIDAY", "SATURDAY", "SUNDAY"
    #   resp.environments[0].maintenance_window.apply_time_of #=> String, one of "UTC", "DEVICE"
    #   resp.environments[0].software_set_update_mode #=> String, one of "USE_LATEST", "USE_DESIRED"
    #   resp.environments[0].desired_software_set_id #=> String
    #   resp.environments[0].pending_software_set_id #=> String
    #   resp.environments[0].created_at #=> Time
    #   resp.environments[0].updated_at #=> Time
    #   resp.environments[0].arn #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-thin-client-2023-08-22/ListEnvironments AWS API Documentation
    #
    # @overload list_environments(params = {})
    # @param [Hash] params ({})
    def list_environments(params = {}, options = {})
      req = build_request(:list_environments, params)
      req.send_request(options)
    end

    # Returns a list of software sets.
    #
    # @option params [String] :next_token
    #   If `nextToken` is returned, there are more results available. The
    #   value of `nextToken` is a unique pagination token for each page. Make
    #   the call again using the returned token to retrieve the next page.
    #   Keep all other arguments unchanged. Each pagination token expires
    #   after 24 hours. Using an expired pagination token will return an *HTTP
    #   400 InvalidToken error*.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results that are returned per call. You can use
    #   `nextToken` to obtain further pages of results.
    #
    #   This is only an upper limit. The actual number of results returned per
    #   call might be fewer than the specified maximum.
    #
    # @return [Types::ListSoftwareSetsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListSoftwareSetsResponse#software_sets #software_sets} => Array&lt;Types::SoftwareSetSummary&gt;
    #   * {Types::ListSoftwareSetsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_software_sets({
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.software_sets #=> Array
    #   resp.software_sets[0].id #=> String
    #   resp.software_sets[0].version #=> String
    #   resp.software_sets[0].released_at #=> Time
    #   resp.software_sets[0].supported_until #=> Time
    #   resp.software_sets[0].validation_status #=> String, one of "VALIDATED", "NOT_VALIDATED"
    #   resp.software_sets[0].arn #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-thin-client-2023-08-22/ListSoftwareSets AWS API Documentation
    #
    # @overload list_software_sets(params = {})
    # @param [Hash] params ({})
    def list_software_sets(params = {}, options = {})
      req = build_request(:list_software_sets, params)
      req.send_request(options)
    end

    # Returns a list of tags for a resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource for which you want to
    #   retrieve tags.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-thin-client-2023-08-22/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Assigns one or more tags (key-value pairs) to the specified resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource that you want to tag.
    #
    # @option params [required, Hash<String,String>] :tags
    #   A map of the key-value pairs of the tag or tags to assign to the
    #   resource.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-thin-client-2023-08-22/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes a tag or tags from a resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource that you want to untag.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The keys of the key-value pairs for the tag or tags you want to remove
    #   from the specified resource.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-thin-client-2023-08-22/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates a thin client device.
    #
    # @option params [required, String] :id
    #   The ID of the device to update.
    #
    # @option params [String] :name
    #   The name of the device to update.
    #
    # @option params [String] :desired_software_set_id
    #   The ID of the software set to apply.
    #
    # @option params [String] :software_set_update_schedule
    #   An option to define if software updates should be applied within a
    #   maintenance window.
    #
    # @return [Types::UpdateDeviceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateDeviceResponse#device #device} => Types::DeviceSummary
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_device({
    #     id: "DeviceId", # required
    #     name: "DeviceName",
    #     desired_software_set_id: "SoftwareSetId",
    #     software_set_update_schedule: "USE_MAINTENANCE_WINDOW", # accepts USE_MAINTENANCE_WINDOW, APPLY_IMMEDIATELY
    #   })
    #
    # @example Response structure
    #
    #   resp.device.id #=> String
    #   resp.device.serial_number #=> String
    #   resp.device.name #=> String
    #   resp.device.model #=> String
    #   resp.device.environment_id #=> String
    #   resp.device.status #=> String, one of "REGISTERED", "DEREGISTERING", "DEREGISTERED", "ARCHIVED"
    #   resp.device.current_software_set_id #=> String
    #   resp.device.desired_software_set_id #=> String
    #   resp.device.pending_software_set_id #=> String
    #   resp.device.software_set_update_schedule #=> String, one of "USE_MAINTENANCE_WINDOW", "APPLY_IMMEDIATELY"
    #   resp.device.last_connected_at #=> Time
    #   resp.device.last_posture_at #=> Time
    #   resp.device.created_at #=> Time
    #   resp.device.updated_at #=> Time
    #   resp.device.arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-thin-client-2023-08-22/UpdateDevice AWS API Documentation
    #
    # @overload update_device(params = {})
    # @param [Hash] params ({})
    def update_device(params = {}, options = {})
      req = build_request(:update_device, params)
      req.send_request(options)
    end

    # Updates an environment.
    #
    # @option params [required, String] :id
    #   The ID of the environment to update.
    #
    # @option params [String] :name
    #   The name of the environment to update.
    #
    # @option params [String] :desktop_arn
    #   The Amazon Resource Name (ARN) of the desktop to stream from Amazon
    #   WorkSpaces, WorkSpaces Secure Browser, or AppStream 2.0.
    #
    # @option params [String] :desktop_endpoint
    #   The URL for the identity provider login (only for environments that
    #   use AppStream 2.0).
    #
    # @option params [String] :software_set_update_schedule
    #   An option to define if software updates should be applied within a
    #   maintenance window.
    #
    # @option params [Types::MaintenanceWindow] :maintenance_window
    #   A specification for a time window to apply software updates.
    #
    # @option params [String] :software_set_update_mode
    #   An option to define which software updates to apply.
    #
    # @option params [String] :desired_software_set_id
    #   The ID of the software set to apply.
    #
    # @option params [Hash<String,String>] :device_creation_tags
    #   A map of the key-value pairs of the tag or tags to assign to the newly
    #   created devices for this environment.
    #
    # @return [Types::UpdateEnvironmentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateEnvironmentResponse#environment #environment} => Types::EnvironmentSummary
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_environment({
    #     id: "EnvironmentId", # required
    #     name: "EnvironmentName",
    #     desktop_arn: "Arn",
    #     desktop_endpoint: "DesktopEndpoint",
    #     software_set_update_schedule: "USE_MAINTENANCE_WINDOW", # accepts USE_MAINTENANCE_WINDOW, APPLY_IMMEDIATELY
    #     maintenance_window: {
    #       type: "SYSTEM", # required, accepts SYSTEM, CUSTOM
    #       start_time_hour: 1,
    #       start_time_minute: 1,
    #       end_time_hour: 1,
    #       end_time_minute: 1,
    #       days_of_the_week: ["MONDAY"], # accepts MONDAY, TUESDAY, WEDNESDAY, THURSDAY, FRIDAY, SATURDAY, SUNDAY
    #       apply_time_of: "UTC", # accepts UTC, DEVICE
    #     },
    #     software_set_update_mode: "USE_LATEST", # accepts USE_LATEST, USE_DESIRED
    #     desired_software_set_id: "SoftwareSetIdOrEmptyString",
    #     device_creation_tags: {
    #       "DeviceCreationTagKey" => "DeviceCreationTagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.environment.id #=> String
    #   resp.environment.name #=> String
    #   resp.environment.desktop_arn #=> String
    #   resp.environment.desktop_endpoint #=> String
    #   resp.environment.desktop_type #=> String, one of "workspaces", "appstream", "workspaces-web"
    #   resp.environment.activation_code #=> String
    #   resp.environment.software_set_update_schedule #=> String, one of "USE_MAINTENANCE_WINDOW", "APPLY_IMMEDIATELY"
    #   resp.environment.maintenance_window.type #=> String, one of "SYSTEM", "CUSTOM"
    #   resp.environment.maintenance_window.start_time_hour #=> Integer
    #   resp.environment.maintenance_window.start_time_minute #=> Integer
    #   resp.environment.maintenance_window.end_time_hour #=> Integer
    #   resp.environment.maintenance_window.end_time_minute #=> Integer
    #   resp.environment.maintenance_window.days_of_the_week #=> Array
    #   resp.environment.maintenance_window.days_of_the_week[0] #=> String, one of "MONDAY", "TUESDAY", "WEDNESDAY", "THURSDAY", "FRIDAY", "SATURDAY", "SUNDAY"
    #   resp.environment.maintenance_window.apply_time_of #=> String, one of "UTC", "DEVICE"
    #   resp.environment.software_set_update_mode #=> String, one of "USE_LATEST", "USE_DESIRED"
    #   resp.environment.desired_software_set_id #=> String
    #   resp.environment.pending_software_set_id #=> String
    #   resp.environment.created_at #=> Time
    #   resp.environment.updated_at #=> Time
    #   resp.environment.arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-thin-client-2023-08-22/UpdateEnvironment AWS API Documentation
    #
    # @overload update_environment(params = {})
    # @param [Hash] params ({})
    def update_environment(params = {}, options = {})
      req = build_request(:update_environment, params)
      req.send_request(options)
    end

    # Updates a software set.
    #
    # @option params [required, String] :id
    #   The ID of the software set to update.
    #
    # @option params [required, String] :validation_status
    #   An option to define if the software set has been validated.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_software_set({
    #     id: "SoftwareSetId", # required
    #     validation_status: "VALIDATED", # required, accepts VALIDATED, NOT_VALIDATED
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-thin-client-2023-08-22/UpdateSoftwareSet AWS API Documentation
    #
    # @overload update_software_set(params = {})
    # @param [Hash] params ({})
    def update_software_set(params = {}, options = {})
      req = build_request(:update_software_set, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::WorkSpacesThinClient')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-workspacesthinclient'
      context[:gem_version] = '1.21.0'
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
