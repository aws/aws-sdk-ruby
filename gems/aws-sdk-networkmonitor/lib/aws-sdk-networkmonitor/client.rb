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

module Aws::NetworkMonitor
  # An API client for NetworkMonitor.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::NetworkMonitor::Client.new(
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

    @identifier = :networkmonitor

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
    add_plugin(Aws::NetworkMonitor::Plugins::Endpoints)

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
    #   @option options [Aws::NetworkMonitor::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::NetworkMonitor::EndpointParameters`.
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

    # Creates a monitor between a source subnet and destination IP address.
    # Within a monitor you'll create one or more probes that monitor
    # network traffic between your source Amazon Web Services VPC subnets
    # and your destination IP addresses. Each probe then aggregates and
    # sends metrics to Amazon CloudWatch.
    #
    # You can also create a monitor with probes using this command. For each
    # probe, you define the following:
    #
    # * `source`—The subnet IDs where the probes will be created.
    #
    # * `destination`— The target destination IP address for the probe.
    #
    # * `destinationPort`—Required only if the protocol is `TCP`.
    #
    # * `protocol`—The communication protocol between the source and
    #   destination. This will be either `TCP` or `ICMP`.
    #
    # * `packetSize`—The size of the packets. This must be a number between
    #   `56` and `8500`.
    #
    # * (Optional) `tags` —Key-value pairs created and assigned to the
    #   probe.
    #
    # @option params [required, String] :monitor_name
    #   The name identifying the monitor. It can contain only letters,
    #   underscores (\_), or dashes (-), and can be up to 200 characters.
    #
    # @option params [Array<Types::CreateMonitorProbeInput>] :probes
    #   Displays a list of all of the probes created for a monitor.
    #
    # @option params [Integer] :aggregation_period
    #   The time, in seconds, that metrics are aggregated and sent to Amazon
    #   CloudWatch. Valid values are either `30` or `60`. `60` is the default
    #   if no period is chosen.
    #
    # @option params [String] :client_token
    #   Unique, case-sensitive identifier to ensure the idempotency of the
    #   request. Only returned if a client token was provided in the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Hash<String,String>] :tags
    #   The list of key-value pairs created and assigned to the monitor.
    #
    # @return [Types::CreateMonitorOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateMonitorOutput#monitor_arn #monitor_arn} => String
    #   * {Types::CreateMonitorOutput#monitor_name #monitor_name} => String
    #   * {Types::CreateMonitorOutput#state #state} => String
    #   * {Types::CreateMonitorOutput#aggregation_period #aggregation_period} => Integer
    #   * {Types::CreateMonitorOutput#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_monitor({
    #     monitor_name: "ResourceName", # required
    #     probes: [
    #       {
    #         source_arn: "Arn", # required
    #         destination: "Destination", # required
    #         destination_port: 1,
    #         protocol: "TCP", # required, accepts TCP, ICMP
    #         packet_size: 1,
    #         probe_tags: {
    #           "TagKey" => "TagValue",
    #         },
    #       },
    #     ],
    #     aggregation_period: 1,
    #     client_token: "String",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.monitor_arn #=> String
    #   resp.monitor_name #=> String
    #   resp.state #=> String, one of "PENDING", "ACTIVE", "INACTIVE", "ERROR", "DELETING"
    #   resp.aggregation_period #=> Integer
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmonitor-2023-08-01/CreateMonitor AWS API Documentation
    #
    # @overload create_monitor(params = {})
    # @param [Hash] params ({})
    def create_monitor(params = {}, options = {})
      req = build_request(:create_monitor, params)
      req.send_request(options)
    end

    # Create a probe within a monitor. Once you create a probe, and it
    # begins monitoring your network traffic, you'll incur billing charges
    # for that probe. This action requires the `monitorName` parameter. Run
    # `ListMonitors` to get a list of monitor names. Note the name of the
    # `monitorName` you want to create the probe for.
    #
    # @option params [required, String] :monitor_name
    #   The name of the monitor to associated with the probe.
    #
    # @option params [required, Types::ProbeInput] :probe
    #   Describes the details of an individual probe for a monitor.
    #
    # @option params [String] :client_token
    #   Unique, case-sensitive identifier to ensure the idempotency of the
    #   request. Only returned if a client token was provided in the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Hash<String,String>] :tags
    #   The list of key-value pairs created and assigned to the probe.
    #
    # @return [Types::CreateProbeOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateProbeOutput#probe_id #probe_id} => String
    #   * {Types::CreateProbeOutput#probe_arn #probe_arn} => String
    #   * {Types::CreateProbeOutput#source_arn #source_arn} => String
    #   * {Types::CreateProbeOutput#destination #destination} => String
    #   * {Types::CreateProbeOutput#destination_port #destination_port} => Integer
    #   * {Types::CreateProbeOutput#protocol #protocol} => String
    #   * {Types::CreateProbeOutput#packet_size #packet_size} => Integer
    #   * {Types::CreateProbeOutput#address_family #address_family} => String
    #   * {Types::CreateProbeOutput#vpc_id #vpc_id} => String
    #   * {Types::CreateProbeOutput#state #state} => String
    #   * {Types::CreateProbeOutput#created_at #created_at} => Time
    #   * {Types::CreateProbeOutput#modified_at #modified_at} => Time
    #   * {Types::CreateProbeOutput#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_probe({
    #     monitor_name: "ResourceName", # required
    #     probe: { # required
    #       source_arn: "Arn", # required
    #       destination: "Destination", # required
    #       destination_port: 1,
    #       protocol: "TCP", # required, accepts TCP, ICMP
    #       packet_size: 1,
    #       tags: {
    #         "TagKey" => "TagValue",
    #       },
    #     },
    #     client_token: "String",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.probe_id #=> String
    #   resp.probe_arn #=> String
    #   resp.source_arn #=> String
    #   resp.destination #=> String
    #   resp.destination_port #=> Integer
    #   resp.protocol #=> String, one of "TCP", "ICMP"
    #   resp.packet_size #=> Integer
    #   resp.address_family #=> String, one of "IPV4", "IPV6"
    #   resp.vpc_id #=> String
    #   resp.state #=> String, one of "PENDING", "ACTIVE", "INACTIVE", "ERROR", "DELETING", "DELETED"
    #   resp.created_at #=> Time
    #   resp.modified_at #=> Time
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmonitor-2023-08-01/CreateProbe AWS API Documentation
    #
    # @overload create_probe(params = {})
    # @param [Hash] params ({})
    def create_probe(params = {}, options = {})
      req = build_request(:create_probe, params)
      req.send_request(options)
    end

    # Deletes a specified monitor.
    #
    # This action requires the `monitorName` parameter. Run `ListMonitors`
    # to get a list of monitor names.
    #
    # @option params [required, String] :monitor_name
    #   The name of the monitor to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_monitor({
    #     monitor_name: "ResourceName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmonitor-2023-08-01/DeleteMonitor AWS API Documentation
    #
    # @overload delete_monitor(params = {})
    # @param [Hash] params ({})
    def delete_monitor(params = {}, options = {})
      req = build_request(:delete_monitor, params)
      req.send_request(options)
    end

    # Deletes the specified probe. Once a probe is deleted you'll no longer
    # incur any billing fees for that probe.
    #
    # This action requires both the `monitorName` and `probeId` parameters.
    # Run `ListMonitors` to get a list of monitor names. Run `GetMonitor` to
    # get a list of probes and probe IDs. You can only delete a single probe
    # at a time using this action.
    #
    # @option params [required, String] :monitor_name
    #   The name of the monitor to delete.
    #
    # @option params [required, String] :probe_id
    #   The ID of the probe to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_probe({
    #     monitor_name: "ResourceName", # required
    #     probe_id: "ProbeId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmonitor-2023-08-01/DeleteProbe AWS API Documentation
    #
    # @overload delete_probe(params = {})
    # @param [Hash] params ({})
    def delete_probe(params = {}, options = {})
      req = build_request(:delete_probe, params)
      req.send_request(options)
    end

    # Returns details about a specific monitor.
    #
    # This action requires the `monitorName` parameter. Run `ListMonitors`
    # to get a list of monitor names.
    #
    # @option params [required, String] :monitor_name
    #   The name of the monitor that details are returned for.
    #
    # @return [Types::GetMonitorOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetMonitorOutput#monitor_arn #monitor_arn} => String
    #   * {Types::GetMonitorOutput#monitor_name #monitor_name} => String
    #   * {Types::GetMonitorOutput#state #state} => String
    #   * {Types::GetMonitorOutput#aggregation_period #aggregation_period} => Integer
    #   * {Types::GetMonitorOutput#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::GetMonitorOutput#probes #probes} => Array&lt;Types::Probe&gt;
    #   * {Types::GetMonitorOutput#created_at #created_at} => Time
    #   * {Types::GetMonitorOutput#modified_at #modified_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_monitor({
    #     monitor_name: "ResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.monitor_arn #=> String
    #   resp.monitor_name #=> String
    #   resp.state #=> String, one of "PENDING", "ACTIVE", "INACTIVE", "ERROR", "DELETING"
    #   resp.aggregation_period #=> Integer
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #   resp.probes #=> Array
    #   resp.probes[0].probe_id #=> String
    #   resp.probes[0].probe_arn #=> String
    #   resp.probes[0].source_arn #=> String
    #   resp.probes[0].destination #=> String
    #   resp.probes[0].destination_port #=> Integer
    #   resp.probes[0].protocol #=> String, one of "TCP", "ICMP"
    #   resp.probes[0].packet_size #=> Integer
    #   resp.probes[0].address_family #=> String, one of "IPV4", "IPV6"
    #   resp.probes[0].vpc_id #=> String
    #   resp.probes[0].state #=> String, one of "PENDING", "ACTIVE", "INACTIVE", "ERROR", "DELETING", "DELETED"
    #   resp.probes[0].created_at #=> Time
    #   resp.probes[0].modified_at #=> Time
    #   resp.probes[0].tags #=> Hash
    #   resp.probes[0].tags["TagKey"] #=> String
    #   resp.created_at #=> Time
    #   resp.modified_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmonitor-2023-08-01/GetMonitor AWS API Documentation
    #
    # @overload get_monitor(params = {})
    # @param [Hash] params ({})
    def get_monitor(params = {}, options = {})
      req = build_request(:get_monitor, params)
      req.send_request(options)
    end

    # Returns the details about a probe. This action requires both the
    # `monitorName` and `probeId` parameters. Run `ListMonitors` to get a
    # list of monitor names. Run `GetMonitor` to get a list of probes and
    # probe IDs.
    #
    # @option params [required, String] :monitor_name
    #   The name of the monitor associated with the probe. Run `ListMonitors`
    #   to get a list of monitor names.
    #
    # @option params [required, String] :probe_id
    #   The ID of the probe to get information about. Run `GetMonitor` action
    #   to get a list of probes and probe IDs for the monitor.
    #
    # @return [Types::GetProbeOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetProbeOutput#probe_id #probe_id} => String
    #   * {Types::GetProbeOutput#probe_arn #probe_arn} => String
    #   * {Types::GetProbeOutput#source_arn #source_arn} => String
    #   * {Types::GetProbeOutput#destination #destination} => String
    #   * {Types::GetProbeOutput#destination_port #destination_port} => Integer
    #   * {Types::GetProbeOutput#protocol #protocol} => String
    #   * {Types::GetProbeOutput#packet_size #packet_size} => Integer
    #   * {Types::GetProbeOutput#address_family #address_family} => String
    #   * {Types::GetProbeOutput#vpc_id #vpc_id} => String
    #   * {Types::GetProbeOutput#state #state} => String
    #   * {Types::GetProbeOutput#created_at #created_at} => Time
    #   * {Types::GetProbeOutput#modified_at #modified_at} => Time
    #   * {Types::GetProbeOutput#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_probe({
    #     monitor_name: "ResourceName", # required
    #     probe_id: "ProbeId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.probe_id #=> String
    #   resp.probe_arn #=> String
    #   resp.source_arn #=> String
    #   resp.destination #=> String
    #   resp.destination_port #=> Integer
    #   resp.protocol #=> String, one of "TCP", "ICMP"
    #   resp.packet_size #=> Integer
    #   resp.address_family #=> String, one of "IPV4", "IPV6"
    #   resp.vpc_id #=> String
    #   resp.state #=> String, one of "PENDING", "ACTIVE", "INACTIVE", "ERROR", "DELETING", "DELETED"
    #   resp.created_at #=> Time
    #   resp.modified_at #=> Time
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmonitor-2023-08-01/GetProbe AWS API Documentation
    #
    # @overload get_probe(params = {})
    # @param [Hash] params ({})
    def get_probe(params = {}, options = {})
      req = build_request(:get_probe, params)
      req.send_request(options)
    end

    # Returns a list of all of your monitors.
    #
    # @option params [String] :next_token
    #   The token for the next page of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return with a single call. To
    #   retrieve the remaining results, make another call with the returned
    #   `nextToken` value.
    #
    #   If `MaxResults` is given a value larger than 100, only 100 results are
    #   returned.
    #
    # @option params [String] :state
    #   The list of all monitors and their states.
    #
    # @return [Types::ListMonitorsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListMonitorsOutput#monitors #monitors} => Array&lt;Types::MonitorSummary&gt;
    #   * {Types::ListMonitorsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_monitors({
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #     state: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.monitors #=> Array
    #   resp.monitors[0].monitor_arn #=> String
    #   resp.monitors[0].monitor_name #=> String
    #   resp.monitors[0].state #=> String, one of "PENDING", "ACTIVE", "INACTIVE", "ERROR", "DELETING"
    #   resp.monitors[0].aggregation_period #=> Integer
    #   resp.monitors[0].tags #=> Hash
    #   resp.monitors[0].tags["TagKey"] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmonitor-2023-08-01/ListMonitors AWS API Documentation
    #
    # @overload list_monitors(params = {})
    # @param [Hash] params ({})
    def list_monitors(params = {}, options = {})
      req = build_request(:list_monitors, params)
      req.send_request(options)
    end

    # Lists the tags assigned to this resource.
    #
    # @option params [required, String] :resource_arn
    #   The
    #
    # @return [Types::ListTagsForResourceOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceOutput#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmonitor-2023-08-01/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Adds key-value pairs to a monitor or probe.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the monitor or probe to tag.
    #
    # @option params [required, Hash<String,String>] :tags
    #   The list of key-value pairs assigned to the monitor or probe.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "Arn", # required
    #     tags: { # required
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmonitor-2023-08-01/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes a key-value pair from a monitor or probe.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the monitor or probe that the tag should be removed from.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The key-value pa
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "Arn", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmonitor-2023-08-01/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates the `aggregationPeriod` for a monitor. Monitors support an
    # `aggregationPeriod` of either `30` or `60` seconds. This action
    # requires the `monitorName` and `probeId` parameter. Run `ListMonitors`
    # to get a list of monitor names.
    #
    # @option params [required, String] :monitor_name
    #   The name of the monitor to update.
    #
    # @option params [required, Integer] :aggregation_period
    #   The aggregation time, in seconds, to change to. This must be either
    #   `30` or `60`.
    #
    # @return [Types::UpdateMonitorOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateMonitorOutput#monitor_arn #monitor_arn} => String
    #   * {Types::UpdateMonitorOutput#monitor_name #monitor_name} => String
    #   * {Types::UpdateMonitorOutput#state #state} => String
    #   * {Types::UpdateMonitorOutput#aggregation_period #aggregation_period} => Integer
    #   * {Types::UpdateMonitorOutput#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_monitor({
    #     monitor_name: "ResourceName", # required
    #     aggregation_period: 1, # required
    #   })
    #
    # @example Response structure
    #
    #   resp.monitor_arn #=> String
    #   resp.monitor_name #=> String
    #   resp.state #=> String, one of "PENDING", "ACTIVE", "INACTIVE", "ERROR", "DELETING"
    #   resp.aggregation_period #=> Integer
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmonitor-2023-08-01/UpdateMonitor AWS API Documentation
    #
    # @overload update_monitor(params = {})
    # @param [Hash] params ({})
    def update_monitor(params = {}, options = {})
      req = build_request(:update_monitor, params)
      req.send_request(options)
    end

    # Updates a monitor probe. This action requires both the `monitorName`
    # and `probeId` parameters. Run `ListMonitors` to get a list of monitor
    # names. Run `GetMonitor` to get a list of probes and probe IDs.
    #
    # You can update the following para create a monitor with probes using
    # this command. For each probe, you define the following:
    #
    # * `state`—The state of the probe.
    #
    # * `destination`— The target destination IP address for the probe.
    #
    # * `destinationPort`—Required only if the protocol is `TCP`.
    #
    # * `protocol`—The communication protocol between the source and
    #   destination. This will be either `TCP` or `ICMP`.
    #
    # * `packetSize`—The size of the packets. This must be a number between
    #   `56` and `8500`.
    #
    # * (Optional) `tags` —Key-value pairs created and assigned to the
    #   probe.
    #
    # @option params [required, String] :monitor_name
    #   The name of the monitor that the probe was updated for.
    #
    # @option params [required, String] :probe_id
    #   The ID of the probe to update.
    #
    # @option params [String] :state
    #   The state of the probe update.
    #
    # @option params [String] :destination
    #   The updated IP address for the probe destination. This must be either
    #   an IPv4 or IPv6 address.
    #
    # @option params [Integer] :destination_port
    #   The updated port for the probe destination. This is required only if
    #   the `protocol` is `TCP` and must be a number between `1` and `65536`.
    #
    # @option params [String] :protocol
    #   The updated network protocol for the destination. This can be either
    #   `TCP` or `ICMP`. If the protocol is `TCP`, then `port` is also
    #   required.
    #
    # @option params [Integer] :packet_size
    #   he updated packets size for network traffic between the source and
    #   destination. This must be a number between `56` and `8500`.
    #
    # @return [Types::UpdateProbeOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateProbeOutput#probe_id #probe_id} => String
    #   * {Types::UpdateProbeOutput#probe_arn #probe_arn} => String
    #   * {Types::UpdateProbeOutput#source_arn #source_arn} => String
    #   * {Types::UpdateProbeOutput#destination #destination} => String
    #   * {Types::UpdateProbeOutput#destination_port #destination_port} => Integer
    #   * {Types::UpdateProbeOutput#protocol #protocol} => String
    #   * {Types::UpdateProbeOutput#packet_size #packet_size} => Integer
    #   * {Types::UpdateProbeOutput#address_family #address_family} => String
    #   * {Types::UpdateProbeOutput#vpc_id #vpc_id} => String
    #   * {Types::UpdateProbeOutput#state #state} => String
    #   * {Types::UpdateProbeOutput#created_at #created_at} => Time
    #   * {Types::UpdateProbeOutput#modified_at #modified_at} => Time
    #   * {Types::UpdateProbeOutput#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_probe({
    #     monitor_name: "ResourceName", # required
    #     probe_id: "ProbeId", # required
    #     state: "PENDING", # accepts PENDING, ACTIVE, INACTIVE, ERROR, DELETING, DELETED
    #     destination: "Destination",
    #     destination_port: 1,
    #     protocol: "TCP", # accepts TCP, ICMP
    #     packet_size: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.probe_id #=> String
    #   resp.probe_arn #=> String
    #   resp.source_arn #=> String
    #   resp.destination #=> String
    #   resp.destination_port #=> Integer
    #   resp.protocol #=> String, one of "TCP", "ICMP"
    #   resp.packet_size #=> Integer
    #   resp.address_family #=> String, one of "IPV4", "IPV6"
    #   resp.vpc_id #=> String
    #   resp.state #=> String, one of "PENDING", "ACTIVE", "INACTIVE", "ERROR", "DELETING", "DELETED"
    #   resp.created_at #=> Time
    #   resp.modified_at #=> Time
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmonitor-2023-08-01/UpdateProbe AWS API Documentation
    #
    # @overload update_probe(params = {})
    # @param [Hash] params ({})
    def update_probe(params = {}, options = {})
      req = build_request(:update_probe, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::NetworkMonitor')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-networkmonitor'
      context[:gem_version] = '1.24.0'
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
