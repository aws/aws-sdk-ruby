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

module Aws::NetworkFlowMonitor
  # An API client for NetworkFlowMonitor.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::NetworkFlowMonitor::Client.new(
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

    @identifier = :networkflowmonitor

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
    add_plugin(Aws::NetworkFlowMonitor::Plugins::Endpoints)

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
    #   @option options [Aws::NetworkFlowMonitor::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::NetworkFlowMonitor::EndpointParameters`.
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

    # Create a monitor for specific network flows between local and remote
    # resources, so that you can monitor network performance for one or
    # several of your workloads. For each monitor, Network Flow Monitor
    # publishes detailed end-to-end performance metrics and a network health
    # indicator (NHI) that informs you whether there were Amazon Web
    # Services network issues for one or more of the network flows tracked
    # by a monitor, during a time period that you choose.
    #
    # @option params [required, String] :monitor_name
    #   The name of the monitor.
    #
    # @option params [required, Array<Types::MonitorLocalResource>] :local_resources
    #   The local resources to monitor. A local resource in a workload is the
    #   location of the host, or hosts, where the Network Flow Monitor agent
    #   is installed. For example, if a workload consists of an interaction
    #   between a web service and a backend database (for example, Amazon
    #   Dynamo DB), the subnet with the EC2 instance that hosts the web
    #   service, which also runs the agent, is the local resource.
    #
    #   Be aware that all local resources must belong to the current Region.
    #
    # @option params [Array<Types::MonitorRemoteResource>] :remote_resources
    #   The remote resources to monitor. A remote resource is the other
    #   endpoint in the bi-directional flow of a workload, with a local
    #   resource. For example, Amazon Dynamo DB can be a remote resource.
    #
    #   When you specify remote resources, be aware that specific combinations
    #   of resources are allowed and others are not, including the following
    #   constraints:
    #
    #   * All remote resources that you specify must all belong to a single
    #     Region.
    #
    #   * If you specify Amazon Web Services services as remote resources, any
    #     other remote resources that you specify must be in the current
    #     Region.
    #
    #   * When you specify a remote resource for another Region, you can only
    #     specify the `Region` resource type. You cannot specify a subnet,
    #     VPC, or Availability Zone in another Region.
    #
    #   * If you leave the `RemoteResources` parameter empty, the monitor will
    #     include all network flows that terminate in the current Region.
    #
    # @option params [required, String] :scope_arn
    #   The Amazon Resource Name (ARN) of the scope for the monitor.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive string of up to 64 ASCII characters that you
    #   specify to make an idempotent API request. Don't reuse the same
    #   client token for other API requests.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Hash<String,String>] :tags
    #   The tags for a monitor. You can add a maximum of 200 tags.
    #
    # @return [Types::CreateMonitorOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateMonitorOutput#monitor_arn #monitor_arn} => String
    #   * {Types::CreateMonitorOutput#monitor_name #monitor_name} => String
    #   * {Types::CreateMonitorOutput#monitor_status #monitor_status} => String
    #   * {Types::CreateMonitorOutput#local_resources #local_resources} => Array&lt;Types::MonitorLocalResource&gt;
    #   * {Types::CreateMonitorOutput#remote_resources #remote_resources} => Array&lt;Types::MonitorRemoteResource&gt;
    #   * {Types::CreateMonitorOutput#created_at #created_at} => Time
    #   * {Types::CreateMonitorOutput#modified_at #modified_at} => Time
    #   * {Types::CreateMonitorOutput#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_monitor({
    #     monitor_name: "ResourceName", # required
    #     local_resources: [ # required
    #       {
    #         type: "AWS::EC2::VPC", # required, accepts AWS::EC2::VPC, AWS::AvailabilityZone, AWS::EC2::Subnet, AWS::Region
    #         identifier: "String", # required
    #       },
    #     ],
    #     remote_resources: [
    #       {
    #         type: "AWS::EC2::VPC", # required, accepts AWS::EC2::VPC, AWS::AvailabilityZone, AWS::EC2::Subnet, AWS::AWSService, AWS::Region
    #         identifier: "String", # required
    #       },
    #     ],
    #     scope_arn: "Arn", # required
    #     client_token: "UuidString",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.monitor_arn #=> String
    #   resp.monitor_name #=> String
    #   resp.monitor_status #=> String, one of "PENDING", "ACTIVE", "INACTIVE", "ERROR", "DELETING"
    #   resp.local_resources #=> Array
    #   resp.local_resources[0].type #=> String, one of "AWS::EC2::VPC", "AWS::AvailabilityZone", "AWS::EC2::Subnet", "AWS::Region"
    #   resp.local_resources[0].identifier #=> String
    #   resp.remote_resources #=> Array
    #   resp.remote_resources[0].type #=> String, one of "AWS::EC2::VPC", "AWS::AvailabilityZone", "AWS::EC2::Subnet", "AWS::AWSService", "AWS::Region"
    #   resp.remote_resources[0].identifier #=> String
    #   resp.created_at #=> Time
    #   resp.modified_at #=> Time
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkflowmonitor-2023-04-19/CreateMonitor AWS API Documentation
    #
    # @overload create_monitor(params = {})
    # @param [Hash] params ({})
    def create_monitor(params = {}, options = {})
      req = build_request(:create_monitor, params)
      req.send_request(options)
    end

    # In Network Flow Monitor, you specify a scope for the service to
    # generate metrics for. By using the scope, Network Flow Monitor can
    # generate a topology of all the resources to measure performance
    # metrics for. When you create a scope, you enable permissions for
    # Network Flow Monitor.
    #
    # A scope is a Region-account pair or multiple Region-account pairs.
    # Network Flow Monitor uses your scope to determine all the resources
    # (the topology) where Network Flow Monitor will gather network flow
    # performance metrics for you. To provide performance metrics, Network
    # Flow Monitor uses the data that is sent by the Network Flow Monitor
    # agents you install on the resources.
    #
    # To define the Region-account pairs for your scope, the Network Flow
    # Monitor API uses the following constucts, which allow for future
    # flexibility in defining scopes:
    #
    # * *Targets*, which are arrays of targetResources.
    #
    # * *Target resources*, which are Region-targetIdentifier pairs.
    #
    # * *Target identifiers*, made up of a targetID (currently always an
    #   account ID) and a targetType (currently always an account).
    #
    # @option params [required, Array<Types::TargetResource>] :targets
    #   The targets to define the scope to be monitored. A target is an array
    #   of targetResources, which are currently Region-account pairs, defined
    #   by targetResource constructs.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive string of up to 64 ASCII characters that you
    #   specify to make an idempotent API request. Don't reuse the same
    #   client token for other API requests.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Hash<String,String>] :tags
    #   The tags for a scope. You can add a maximum of 200 tags.
    #
    # @return [Types::CreateScopeOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateScopeOutput#scope_id #scope_id} => String
    #   * {Types::CreateScopeOutput#status #status} => String
    #   * {Types::CreateScopeOutput#scope_arn #scope_arn} => String
    #   * {Types::CreateScopeOutput#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_scope({
    #     targets: [ # required
    #       {
    #         target_identifier: { # required
    #           target_id: { # required
    #             account_id: "AccountId",
    #           },
    #           target_type: "ACCOUNT", # required, accepts ACCOUNT
    #         },
    #         region: "AwsRegion", # required
    #       },
    #     ],
    #     client_token: "UuidString",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.scope_id #=> String
    #   resp.status #=> String, one of "SUCCEEDED", "IN_PROGRESS", "FAILED", "DEACTIVATING", "DEACTIVATED"
    #   resp.scope_arn #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkflowmonitor-2023-04-19/CreateScope AWS API Documentation
    #
    # @overload create_scope(params = {})
    # @param [Hash] params ({})
    def create_scope(params = {}, options = {})
      req = build_request(:create_scope, params)
      req.send_request(options)
    end

    # Deletes a monitor in Network Flow Monitor.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkflowmonitor-2023-04-19/DeleteMonitor AWS API Documentation
    #
    # @overload delete_monitor(params = {})
    # @param [Hash] params ({})
    def delete_monitor(params = {}, options = {})
      req = build_request(:delete_monitor, params)
      req.send_request(options)
    end

    # Deletes a scope that has been defined.
    #
    # @option params [required, String] :scope_id
    #   The identifier for the scope that includes the resources you want to
    #   get data results for. A scope ID is an internally-generated identifier
    #   that includes all the resources for a specific root account.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_scope({
    #     scope_id: "ScopeId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkflowmonitor-2023-04-19/DeleteScope AWS API Documentation
    #
    # @overload delete_scope(params = {})
    # @param [Hash] params ({})
    def delete_scope(params = {}, options = {})
      req = build_request(:delete_scope, params)
      req.send_request(options)
    end

    # Gets information about a monitor in Network Flow Monitor based on a
    # monitor name. The information returned includes the Amazon Resource
    # Name (ARN), create time, modified time, resources included in the
    # monitor, and status information.
    #
    # @option params [required, String] :monitor_name
    #   The name of the monitor.
    #
    # @return [Types::GetMonitorOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetMonitorOutput#monitor_arn #monitor_arn} => String
    #   * {Types::GetMonitorOutput#monitor_name #monitor_name} => String
    #   * {Types::GetMonitorOutput#monitor_status #monitor_status} => String
    #   * {Types::GetMonitorOutput#local_resources #local_resources} => Array&lt;Types::MonitorLocalResource&gt;
    #   * {Types::GetMonitorOutput#remote_resources #remote_resources} => Array&lt;Types::MonitorRemoteResource&gt;
    #   * {Types::GetMonitorOutput#created_at #created_at} => Time
    #   * {Types::GetMonitorOutput#modified_at #modified_at} => Time
    #   * {Types::GetMonitorOutput#tags #tags} => Hash&lt;String,String&gt;
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
    #   resp.monitor_status #=> String, one of "PENDING", "ACTIVE", "INACTIVE", "ERROR", "DELETING"
    #   resp.local_resources #=> Array
    #   resp.local_resources[0].type #=> String, one of "AWS::EC2::VPC", "AWS::AvailabilityZone", "AWS::EC2::Subnet", "AWS::Region"
    #   resp.local_resources[0].identifier #=> String
    #   resp.remote_resources #=> Array
    #   resp.remote_resources[0].type #=> String, one of "AWS::EC2::VPC", "AWS::AvailabilityZone", "AWS::EC2::Subnet", "AWS::AWSService", "AWS::Region"
    #   resp.remote_resources[0].identifier #=> String
    #   resp.created_at #=> Time
    #   resp.modified_at #=> Time
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkflowmonitor-2023-04-19/GetMonitor AWS API Documentation
    #
    # @overload get_monitor(params = {})
    # @param [Hash] params ({})
    def get_monitor(params = {}, options = {})
      req = build_request(:get_monitor, params)
      req.send_request(options)
    end

    # Return the data for a query with the Network Flow Monitor query
    # interface. You specify the query that you want to return results for
    # by providing a query ID and a monitor name. This query returns the top
    # contributors for a specific monitor.
    #
    # Create a query ID for this call by calling the corresponding API call
    # to start the query, `StartQueryMonitorTopContributors`. Use the scope
    # ID that was returned for your account by `CreateScope`.
    #
    # Top contributors in Network Flow Monitor are network flows with the
    # highest values for a specific metric type. Top contributors can be
    # across all workload insights, for a given scope, or for a specific
    # monitor. Use the applicable call for the top contributors that you
    # want to be returned.
    #
    # @option params [required, String] :monitor_name
    #   The name of the monitor.
    #
    # @option params [required, String] :query_id
    #   The identifier for the query. A query ID is an internally-generated
    #   identifier for a specific query returned from an API call to create a
    #   query.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. You receive this token from a
    #   previous call.
    #
    # @option params [Integer] :max_results
    #   The number of query results that you want to return with this call.
    #
    # @return [Types::GetQueryResultsMonitorTopContributorsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetQueryResultsMonitorTopContributorsOutput#unit #unit} => String
    #   * {Types::GetQueryResultsMonitorTopContributorsOutput#top_contributors #top_contributors} => Array&lt;Types::MonitorTopContributorsRow&gt;
    #   * {Types::GetQueryResultsMonitorTopContributorsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_query_results_monitor_top_contributors({
    #     monitor_name: "ResourceName", # required
    #     query_id: "String", # required
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.unit #=> String, one of "Seconds", "Microseconds", "Milliseconds", "Bytes", "Kilobytes", "Megabytes", "Gigabytes", "Terabytes", "Bits", "Kilobits", "Megabits", "Gigabits", "Terabits", "Percent", "Count", "Bytes/Second", "Kilobytes/Second", "Megabytes/Second", "Gigabytes/Second", "Terabytes/Second", "Bits/Second", "Kilobits/Second", "Megabits/Second", "Gigabits/Second", "Terabits/Second", "Count/Second", "None"
    #   resp.top_contributors #=> Array
    #   resp.top_contributors[0].local_ip #=> String
    #   resp.top_contributors[0].snat_ip #=> String
    #   resp.top_contributors[0].local_instance_id #=> String
    #   resp.top_contributors[0].local_vpc_id #=> String
    #   resp.top_contributors[0].local_region #=> String
    #   resp.top_contributors[0].local_az #=> String
    #   resp.top_contributors[0].local_subnet_id #=> String
    #   resp.top_contributors[0].target_port #=> Integer
    #   resp.top_contributors[0].destination_category #=> String, one of "INTRA_AZ", "INTER_AZ", "INTER_VPC", "UNCLASSIFIED", "AMAZON_S3", "AMAZON_DYNAMODB", "INTER_REGION"
    #   resp.top_contributors[0].remote_vpc_id #=> String
    #   resp.top_contributors[0].remote_region #=> String
    #   resp.top_contributors[0].remote_az #=> String
    #   resp.top_contributors[0].remote_subnet_id #=> String
    #   resp.top_contributors[0].remote_instance_id #=> String
    #   resp.top_contributors[0].remote_ip #=> String
    #   resp.top_contributors[0].dnat_ip #=> String
    #   resp.top_contributors[0].value #=> Integer
    #   resp.top_contributors[0].traversed_constructs #=> Array
    #   resp.top_contributors[0].traversed_constructs[0].component_id #=> String
    #   resp.top_contributors[0].traversed_constructs[0].component_type #=> String
    #   resp.top_contributors[0].traversed_constructs[0].component_arn #=> String
    #   resp.top_contributors[0].traversed_constructs[0].service_name #=> String
    #   resp.top_contributors[0].kubernetes_metadata.local_service_name #=> String
    #   resp.top_contributors[0].kubernetes_metadata.local_pod_name #=> String
    #   resp.top_contributors[0].kubernetes_metadata.local_pod_namespace #=> String
    #   resp.top_contributors[0].kubernetes_metadata.remote_service_name #=> String
    #   resp.top_contributors[0].kubernetes_metadata.remote_pod_name #=> String
    #   resp.top_contributors[0].kubernetes_metadata.remote_pod_namespace #=> String
    #   resp.top_contributors[0].local_instance_arn #=> String
    #   resp.top_contributors[0].local_subnet_arn #=> String
    #   resp.top_contributors[0].local_vpc_arn #=> String
    #   resp.top_contributors[0].remote_instance_arn #=> String
    #   resp.top_contributors[0].remote_subnet_arn #=> String
    #   resp.top_contributors[0].remote_vpc_arn #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkflowmonitor-2023-04-19/GetQueryResultsMonitorTopContributors AWS API Documentation
    #
    # @overload get_query_results_monitor_top_contributors(params = {})
    # @param [Hash] params ({})
    def get_query_results_monitor_top_contributors(params = {}, options = {})
      req = build_request(:get_query_results_monitor_top_contributors, params)
      req.send_request(options)
    end

    # Return the data for a query with the Network Flow Monitor query
    # interface. You specify the query that you want to return results for
    # by providing a query ID and a monitor name.
    #
    # This query returns the top contributors for a scope for workload
    # insights. Workload insights provide a high level view of network flow
    # performance data collected by agents. To return the data for the top
    # contributors, see
    # `GetQueryResultsWorkloadInsightsTopContributorsData`.
    #
    # Create a query ID for this call by calling the corresponding API call
    # to start the query, `StartQueryWorkloadInsightsTopContributors`. Use
    # the scope ID that was returned for your account by `CreateScope`.
    #
    # Top contributors in Network Flow Monitor are network flows with the
    # highest values for a specific metric type. Top contributors can be
    # across all workload insights, for a given scope, or for a specific
    # monitor. Use the applicable call for the top contributors that you
    # want to be returned.
    #
    # @option params [required, String] :scope_id
    #   The identifier for the scope that includes the resources you want to
    #   get data results for. A scope ID is an internally-generated identifier
    #   that includes all the resources for a specific root account.
    #
    # @option params [required, String] :query_id
    #   The identifier for the query. A query ID is an internally-generated
    #   identifier for a specific query returned from an API call to create a
    #   query.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. You receive this token from a
    #   previous call.
    #
    # @option params [Integer] :max_results
    #   The number of query results that you want to return with this call.
    #
    # @return [Types::GetQueryResultsWorkloadInsightsTopContributorsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetQueryResultsWorkloadInsightsTopContributorsOutput#top_contributors #top_contributors} => Array&lt;Types::WorkloadInsightsTopContributorsRow&gt;
    #   * {Types::GetQueryResultsWorkloadInsightsTopContributorsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_query_results_workload_insights_top_contributors({
    #     scope_id: "ScopeId", # required
    #     query_id: "String", # required
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.top_contributors #=> Array
    #   resp.top_contributors[0].account_id #=> String
    #   resp.top_contributors[0].local_subnet_id #=> String
    #   resp.top_contributors[0].local_az #=> String
    #   resp.top_contributors[0].local_vpc_id #=> String
    #   resp.top_contributors[0].local_region #=> String
    #   resp.top_contributors[0].remote_identifier #=> String
    #   resp.top_contributors[0].value #=> Integer
    #   resp.top_contributors[0].local_subnet_arn #=> String
    #   resp.top_contributors[0].local_vpc_arn #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkflowmonitor-2023-04-19/GetQueryResultsWorkloadInsightsTopContributors AWS API Documentation
    #
    # @overload get_query_results_workload_insights_top_contributors(params = {})
    # @param [Hash] params ({})
    def get_query_results_workload_insights_top_contributors(params = {}, options = {})
      req = build_request(:get_query_results_workload_insights_top_contributors, params)
      req.send_request(options)
    end

    # Return the data for a query with the Network Flow Monitor query
    # interface. Specify the query that you want to return results for by
    # providing a query ID and a scope ID.
    #
    # This query returns the data for top contributors for workload insights
    # for a specific scope. Workload insights provide a high level view of
    # network flow performance data collected by agents for a scope. To
    # return just the top contributors, see
    # `GetQueryResultsWorkloadInsightsTopContributors`.
    #
    # Create a query ID for this call by calling the corresponding API call
    # to start the query, `StartQueryWorkloadInsightsTopContributorsData`.
    # Use the scope ID that was returned for your account by `CreateScope`.
    #
    # Top contributors in Network Flow Monitor are network flows with the
    # highest values for a specific metric type. Top contributors can be
    # across all workload insights, for a given scope, or for a specific
    # monitor. Use the applicable call for the top contributors that you
    # want to be returned.
    #
    # The top contributor network flows overall are for a specific metric
    # type, for example, the number of retransmissions.
    #
    # @option params [required, String] :scope_id
    #   The identifier for the scope that includes the resources you want to
    #   get data results for. A scope ID is an internally-generated identifier
    #   that includes all the resources for a specific root account.
    #
    # @option params [required, String] :query_id
    #   The identifier for the query. A query ID is an internally-generated
    #   identifier for a specific query returned from an API call to create a
    #   query.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. You receive this token from a
    #   previous call.
    #
    # @option params [Integer] :max_results
    #   The number of query results that you want to return with this call.
    #
    # @return [Types::GetQueryResultsWorkloadInsightsTopContributorsDataOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetQueryResultsWorkloadInsightsTopContributorsDataOutput#unit #unit} => String
    #   * {Types::GetQueryResultsWorkloadInsightsTopContributorsDataOutput#datapoints #datapoints} => Array&lt;Types::WorkloadInsightsTopContributorsDataPoint&gt;
    #   * {Types::GetQueryResultsWorkloadInsightsTopContributorsDataOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_query_results_workload_insights_top_contributors_data({
    #     scope_id: "ScopeId", # required
    #     query_id: "String", # required
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.unit #=> String, one of "Seconds", "Microseconds", "Milliseconds", "Bytes", "Kilobytes", "Megabytes", "Gigabytes", "Terabytes", "Bits", "Kilobits", "Megabits", "Gigabits", "Terabits", "Percent", "Count", "Bytes/Second", "Kilobytes/Second", "Megabytes/Second", "Gigabytes/Second", "Terabytes/Second", "Bits/Second", "Kilobits/Second", "Megabits/Second", "Gigabits/Second", "Terabits/Second", "Count/Second", "None"
    #   resp.datapoints #=> Array
    #   resp.datapoints[0].timestamps #=> Array
    #   resp.datapoints[0].timestamps[0] #=> Time
    #   resp.datapoints[0].values #=> Array
    #   resp.datapoints[0].values[0] #=> Float
    #   resp.datapoints[0].label #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkflowmonitor-2023-04-19/GetQueryResultsWorkloadInsightsTopContributorsData AWS API Documentation
    #
    # @overload get_query_results_workload_insights_top_contributors_data(params = {})
    # @param [Hash] params ({})
    def get_query_results_workload_insights_top_contributors_data(params = {}, options = {})
      req = build_request(:get_query_results_workload_insights_top_contributors_data, params)
      req.send_request(options)
    end

    # Returns the current status of a query for the Network Flow Monitor
    # query interface, for a specified query ID and monitor. This call
    # returns the query status for the top contributors for a monitor.
    #
    # When you create a query, use this call to check the status of the
    # query to make sure that it has has `SUCCEEDED` before you review the
    # results. Use the same query ID that you used for the corresponding API
    # call to start (create) the query, `StartQueryMonitorTopContributors`.
    #
    # When you run a query, use this call to check the status of the query
    # to make sure that the query has `SUCCEEDED` before you review the
    # results.
    #
    # @option params [required, String] :monitor_name
    #   The name of the monitor.
    #
    # @option params [required, String] :query_id
    #   The identifier for the query. A query ID is an internally-generated
    #   identifier for a specific query returned from an API call to start a
    #   query.
    #
    # @return [Types::GetQueryStatusMonitorTopContributorsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetQueryStatusMonitorTopContributorsOutput#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_query_status_monitor_top_contributors({
    #     monitor_name: "ResourceName", # required
    #     query_id: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.status #=> String, one of "QUEUED", "RUNNING", "SUCCEEDED", "FAILED", "CANCELED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkflowmonitor-2023-04-19/GetQueryStatusMonitorTopContributors AWS API Documentation
    #
    # @overload get_query_status_monitor_top_contributors(params = {})
    # @param [Hash] params ({})
    def get_query_status_monitor_top_contributors(params = {}, options = {})
      req = build_request(:get_query_status_monitor_top_contributors, params)
      req.send_request(options)
    end

    # Return the data for a query with the Network Flow Monitor query
    # interface. Specify the query that you want to return results for by
    # providing a query ID and a monitor name. This query returns the top
    # contributors for workload insights.
    #
    # When you start a query, use this call to check the status of the query
    # to make sure that it has has `SUCCEEDED` before you review the
    # results. Use the same query ID that you used for the corresponding API
    # call to start the query, `StartQueryWorkloadInsightsTopContributors`.
    #
    # Top contributors in Network Flow Monitor are network flows with the
    # highest values for a specific metric type. Top contributors can be
    # across all workload insights, for a given scope, or for a specific
    # monitor. Use the applicable call for the top contributors that you
    # want to be returned.
    #
    # @option params [required, String] :scope_id
    #   The identifier for the scope that includes the resources you want to
    #   get data results for. A scope ID is an internally-generated identifier
    #   that includes all the resources for a specific root account.
    #
    # @option params [required, String] :query_id
    #   The identifier for the query. A query ID is an internally-generated
    #   identifier for a specific query returned from an API call to start a
    #   query.
    #
    # @return [Types::GetQueryStatusWorkloadInsightsTopContributorsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetQueryStatusWorkloadInsightsTopContributorsOutput#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_query_status_workload_insights_top_contributors({
    #     scope_id: "ScopeId", # required
    #     query_id: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.status #=> String, one of "QUEUED", "RUNNING", "SUCCEEDED", "FAILED", "CANCELED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkflowmonitor-2023-04-19/GetQueryStatusWorkloadInsightsTopContributors AWS API Documentation
    #
    # @overload get_query_status_workload_insights_top_contributors(params = {})
    # @param [Hash] params ({})
    def get_query_status_workload_insights_top_contributors(params = {}, options = {})
      req = build_request(:get_query_status_workload_insights_top_contributors, params)
      req.send_request(options)
    end

    # Returns the current status of a query for the Network Flow Monitor
    # query interface, for a specified query ID and monitor. This call
    # returns the query status for the top contributors data for workload
    # insights.
    #
    # When you start a query, use this call to check the status of the query
    # to make sure that it has has `SUCCEEDED` before you review the
    # results. Use the same query ID that you used for the corresponding API
    # call to start the query,
    # `StartQueryWorkloadInsightsTopContributorsData`.
    #
    # Top contributors in Network Flow Monitor are network flows with the
    # highest values for a specific metric type. Top contributors can be
    # across all workload insights, for a given scope, or for a specific
    # monitor. Use the applicable call for the top contributors that you
    # want to be returned.
    #
    # The top contributor network flows overall are for a specific metric
    # type, for example, the number of retransmissions.
    #
    # @option params [required, String] :scope_id
    #   The identifier for the scope that includes the resources you want to
    #   get data results for. A scope ID is an internally-generated identifier
    #   that includes all the resources for a specific root account. A scope
    #   ID is returned from a `CreateScope` API call.
    #
    # @option params [required, String] :query_id
    #   The identifier for the query. A query ID is an internally-generated
    #   identifier for a specific query returned from an API call to start a
    #   query.
    #
    # @return [Types::GetQueryStatusWorkloadInsightsTopContributorsDataOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetQueryStatusWorkloadInsightsTopContributorsDataOutput#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_query_status_workload_insights_top_contributors_data({
    #     scope_id: "ScopeId", # required
    #     query_id: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.status #=> String, one of "QUEUED", "RUNNING", "SUCCEEDED", "FAILED", "CANCELED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkflowmonitor-2023-04-19/GetQueryStatusWorkloadInsightsTopContributorsData AWS API Documentation
    #
    # @overload get_query_status_workload_insights_top_contributors_data(params = {})
    # @param [Hash] params ({})
    def get_query_status_workload_insights_top_contributors_data(params = {}, options = {})
      req = build_request(:get_query_status_workload_insights_top_contributors_data, params)
      req.send_request(options)
    end

    # Gets information about a scope, including the name, status, tags, and
    # target details. The scope in Network Flow Monitor is an account.
    #
    # @option params [required, String] :scope_id
    #   The identifier for the scope that includes the resources you want to
    #   get data results for. A scope ID is an internally-generated identifier
    #   that includes all the resources for a specific root account. A scope
    #   ID is returned from a `CreateScope` API call.
    #
    # @return [Types::GetScopeOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetScopeOutput#scope_id #scope_id} => String
    #   * {Types::GetScopeOutput#status #status} => String
    #   * {Types::GetScopeOutput#scope_arn #scope_arn} => String
    #   * {Types::GetScopeOutput#targets #targets} => Array&lt;Types::TargetResource&gt;
    #   * {Types::GetScopeOutput#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_scope({
    #     scope_id: "GetScopeInputScopeIdString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.scope_id #=> String
    #   resp.status #=> String, one of "SUCCEEDED", "IN_PROGRESS", "FAILED", "DEACTIVATING", "DEACTIVATED"
    #   resp.scope_arn #=> String
    #   resp.targets #=> Array
    #   resp.targets[0].target_identifier.target_id.account_id #=> String
    #   resp.targets[0].target_identifier.target_type #=> String, one of "ACCOUNT"
    #   resp.targets[0].region #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkflowmonitor-2023-04-19/GetScope AWS API Documentation
    #
    # @overload get_scope(params = {})
    # @param [Hash] params ({})
    def get_scope(params = {}, options = {})
      req = build_request(:get_scope, params)
      req.send_request(options)
    end

    # List all monitors in an account. Optionally, you can list only
    # monitors that have a specific status, by using the `STATUS` parameter.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. You receive this token from a
    #   previous call.
    #
    # @option params [Integer] :max_results
    #   The number of query results that you want to return with this call.
    #
    # @option params [String] :monitor_status
    #   The status of a monitor. The status can be one of the following
    #
    #   * `PENDING`: The monitor is in the process of being created.
    #
    #   * `ACTIVE`: The monitor is active.
    #
    #   * `INACTIVE`: The monitor is inactive.
    #
    #   * `ERROR`: Monitor creation failed due to an error.
    #
    #   * `DELETING`: The monitor is in the process of being deleted.
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
    #     next_token: "String",
    #     max_results: 1,
    #     monitor_status: "PENDING", # accepts PENDING, ACTIVE, INACTIVE, ERROR, DELETING
    #   })
    #
    # @example Response structure
    #
    #   resp.monitors #=> Array
    #   resp.monitors[0].monitor_arn #=> String
    #   resp.monitors[0].monitor_name #=> String
    #   resp.monitors[0].monitor_status #=> String, one of "PENDING", "ACTIVE", "INACTIVE", "ERROR", "DELETING"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkflowmonitor-2023-04-19/ListMonitors AWS API Documentation
    #
    # @overload list_monitors(params = {})
    # @param [Hash] params ({})
    def list_monitors(params = {}, options = {})
      req = build_request(:list_monitors, params)
      req.send_request(options)
    end

    # List all the scopes for an account.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. You receive this token from a
    #   previous call.
    #
    # @option params [Integer] :max_results
    #   The number of query results that you want to return with this call.
    #
    # @return [Types::ListScopesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListScopesOutput#scopes #scopes} => Array&lt;Types::ScopeSummary&gt;
    #   * {Types::ListScopesOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_scopes({
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.scopes #=> Array
    #   resp.scopes[0].scope_id #=> String
    #   resp.scopes[0].status #=> String, one of "SUCCEEDED", "IN_PROGRESS", "FAILED", "DEACTIVATING", "DEACTIVATED"
    #   resp.scopes[0].scope_arn #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkflowmonitor-2023-04-19/ListScopes AWS API Documentation
    #
    # @overload list_scopes(params = {})
    # @param [Hash] params ({})
    def list_scopes(params = {}, options = {})
      req = build_request(:list_scopes, params)
      req.send_request(options)
    end

    # Returns all the tags for a resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkflowmonitor-2023-04-19/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Create a query that you can use with the Network Flow Monitor query
    # interface to return the top contributors for a monitor. Specify the
    # monitor that you want to create the query for.
    #
    # The call returns a query ID that you can use with [
    # GetQueryResultsMonitorTopContributors][1] to run the query and return
    # the top contributors for a specific monitor.
    #
    # Top contributors in Network Flow Monitor are network flows with the
    # highest values for a specific metric type. Top contributors can be
    # across all workload insights, for a given scope, or for a specific
    # monitor. Use the applicable APIs for the top contributors that you
    # want to be returned.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/networkflowmonitor/2.0/APIReference/API_GetQueryResultsMonitorTopContributors.html
    #
    # @option params [required, String] :monitor_name
    #   The name of the monitor.
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :start_time
    #   The timestamp that is the date and time that is the beginning of the
    #   period that you want to retrieve results for with your query.
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :end_time
    #   The timestamp that is the date and time end of the period that you
    #   want to retrieve results for with your query.
    #
    # @option params [required, String] :metric_name
    #   The metric that you want to query top contributors for. That is, you
    #   can specify a metric with this call and return the top contributor
    #   network flows, for that type of metric, for a monitor and (optionally)
    #   within a specific category, such as network flows between Availability
    #   Zones.
    #
    # @option params [required, String] :destination_category
    #   The category that you want to query top contributors for, for a
    #   specific monitor. Destination categories can be one of the following:
    #
    #   * `INTRA_AZ`: Top contributor network flows within a single
    #     Availability Zone
    #
    #   * `INTER_AZ`: Top contributor network flows between Availability Zones
    #
    #   * `INTER_REGION`: Top contributor network flows between Regions (to
    #     the edge of another Region)
    #
    #   * `INTER_VPC`: Top contributor network flows between VPCs
    #
    #   * `AMAZON_S3`: Top contributor network flows to or from Amazon S3
    #
    #   * `AMAZON_DYNAMODB`: Top contributor network flows to or from Amazon
    #     Dynamo DB
    #
    #   * `UNCLASSIFIED`: Top contributor network flows that do not have a
    #     bucket classification
    #
    # @option params [Integer] :limit
    #   The maximum number of top contributors to return.
    #
    # @return [Types::StartQueryMonitorTopContributorsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartQueryMonitorTopContributorsOutput#query_id #query_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_query_monitor_top_contributors({
    #     monitor_name: "ResourceName", # required
    #     start_time: Time.now, # required
    #     end_time: Time.now, # required
    #     metric_name: "ROUND_TRIP_TIME", # required, accepts ROUND_TRIP_TIME, TIMEOUTS, RETRANSMISSIONS, DATA_TRANSFERRED
    #     destination_category: "INTRA_AZ", # required, accepts INTRA_AZ, INTER_AZ, INTER_VPC, UNCLASSIFIED, AMAZON_S3, AMAZON_DYNAMODB, INTER_REGION
    #     limit: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.query_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkflowmonitor-2023-04-19/StartQueryMonitorTopContributors AWS API Documentation
    #
    # @overload start_query_monitor_top_contributors(params = {})
    # @param [Hash] params ({})
    def start_query_monitor_top_contributors(params = {}, options = {})
      req = build_request(:start_query_monitor_top_contributors, params)
      req.send_request(options)
    end

    # Create a query with the Network Flow Monitor query interface that you
    # can run to return workload insights top contributors. Specify the
    # scope that you want to create a query for.
    #
    # The call returns a query ID that you can use with [
    # GetQueryResultsWorkloadInsightsTopContributors][1] to run the query
    # and return the top contributors for the workload insights for a scope.
    #
    # Top contributors in Network Flow Monitor are network flows with the
    # highest values for a specific metric type. Top contributors can be
    # across all workload insights, for a given scope, or for a specific
    # monitor. Use the applicable APIs for the top contributors that you
    # want to be returned.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/networkflowmonitor/2.0/APIReference/API_GetQueryResultsWorkloadInsightsTopContributors.html
    #
    # @option params [required, String] :scope_id
    #   The identifier for the scope that includes the resources you want to
    #   get data results for. A scope ID is an internally-generated identifier
    #   that includes all the resources for a specific root account. A scope
    #   ID is returned from a `CreateScope` API call.
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :start_time
    #   The timestamp that is the date and time that is the beginning of the
    #   period that you want to retrieve results for with your query.
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :end_time
    #   The timestamp that is the date and time end of the period that you
    #   want to retrieve results for with your query.
    #
    # @option params [required, String] :metric_name
    #   The metric that you want to query top contributors for. That is, you
    #   can specify this metric to return the top contributor network flows,
    #   for this type of metric, for a monitor and (optionally) within a
    #   specific category, such as network flows between Availability Zones.
    #
    # @option params [required, String] :destination_category
    #   The destination category for a top contributors row. Destination
    #   categories can be one of the following:
    #
    #   * `INTRA_AZ`: Top contributor network flows within a single
    #     Availability Zone
    #
    #   * `INTER_AZ`: Top contributor network flows between Availability Zones
    #
    #   * `INTER_REGION`: Top contributor network flows between Regions (to
    #     the edge of another Region)
    #
    #   * `INTER_VPC`: Top contributor network flows between VPCs
    #
    #   * `AWS_SERVICES`: Top contributor network flows to or from Amazon Web
    #     Services services
    #
    #   * `UNCLASSIFIED`: Top contributor network flows that do not have a
    #     bucket classification
    #
    # @option params [Integer] :limit
    #   The maximum number of top contributors to return.
    #
    # @return [Types::StartQueryWorkloadInsightsTopContributorsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartQueryWorkloadInsightsTopContributorsOutput#query_id #query_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_query_workload_insights_top_contributors({
    #     scope_id: "ScopeId", # required
    #     start_time: Time.now, # required
    #     end_time: Time.now, # required
    #     metric_name: "TIMEOUTS", # required, accepts TIMEOUTS, RETRANSMISSIONS, DATA_TRANSFERRED
    #     destination_category: "INTRA_AZ", # required, accepts INTRA_AZ, INTER_AZ, INTER_VPC, UNCLASSIFIED, AMAZON_S3, AMAZON_DYNAMODB, INTER_REGION
    #     limit: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.query_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkflowmonitor-2023-04-19/StartQueryWorkloadInsightsTopContributors AWS API Documentation
    #
    # @overload start_query_workload_insights_top_contributors(params = {})
    # @param [Hash] params ({})
    def start_query_workload_insights_top_contributors(params = {}, options = {})
      req = build_request(:start_query_workload_insights_top_contributors, params)
      req.send_request(options)
    end

    # Create a query with the Network Flow Monitor query interface that you
    # can run to return data for workload insights top contributors. Specify
    # the scope that you want to create a query for.
    #
    # The call returns a query ID that you can use with [
    # GetQueryResultsWorkloadInsightsTopContributorsData][1] to run the
    # query and return the data for the top contributors for the workload
    # insights for a scope.
    #
    # Top contributors in Network Flow Monitor are network flows with the
    # highest values for a specific metric type. Top contributors can be
    # across all workload insights, for a given scope, or for a specific
    # monitor. Use the applicable call for the top contributors that you
    # want to be returned.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/networkflowmonitor/2.0/APIReference/API_GetQueryResultsWorkloadInsightsTopContributorsData.html
    #
    # @option params [required, String] :scope_id
    #   The identifier for the scope that includes the resources you want to
    #   get data results for. A scope ID is an internally-generated identifier
    #   that includes all the resources for a specific root account.
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :start_time
    #   The timestamp that is the date and time that is the beginning of the
    #   period that you want to retrieve results for with your query.
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :end_time
    #   The timestamp that is the date and time end of the period that you
    #   want to retrieve results for with your query.
    #
    # @option params [required, String] :metric_name
    #   The metric that you want to query top contributors for. That is, you
    #   can specify this metric to return the top contributor network flows,
    #   for this type of metric, for a monitor and (optionally) within a
    #   specific category, such as network flows between Availability Zones.
    #
    # @option params [required, String] :destination_category
    #   The destination category for a top contributors. Destination
    #   categories can be one of the following:
    #
    #   * `INTRA_AZ`: Top contributor network flows within a single
    #     Availability Zone
    #
    #   * `INTER_AZ`: Top contributor network flows between Availability Zones
    #
    #   * `INTER_REGION`: Top contributor network flows between Regions (to
    #     the edge of another Region)
    #
    #   * `INTER_VPC`: Top contributor network flows between VPCs
    #
    #   * `AWS_SERVICES`: Top contributor network flows to or from Amazon Web
    #     Services services
    #
    #   * `UNCLASSIFIED`: Top contributor network flows that do not have a
    #     bucket classification
    #
    # @return [Types::StartQueryWorkloadInsightsTopContributorsDataOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartQueryWorkloadInsightsTopContributorsDataOutput#query_id #query_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_query_workload_insights_top_contributors_data({
    #     scope_id: "ScopeId", # required
    #     start_time: Time.now, # required
    #     end_time: Time.now, # required
    #     metric_name: "TIMEOUTS", # required, accepts TIMEOUTS, RETRANSMISSIONS, DATA_TRANSFERRED
    #     destination_category: "INTRA_AZ", # required, accepts INTRA_AZ, INTER_AZ, INTER_VPC, UNCLASSIFIED, AMAZON_S3, AMAZON_DYNAMODB, INTER_REGION
    #   })
    #
    # @example Response structure
    #
    #   resp.query_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkflowmonitor-2023-04-19/StartQueryWorkloadInsightsTopContributorsData AWS API Documentation
    #
    # @overload start_query_workload_insights_top_contributors_data(params = {})
    # @param [Hash] params ({})
    def start_query_workload_insights_top_contributors_data(params = {}, options = {})
      req = build_request(:start_query_workload_insights_top_contributors_data, params)
      req.send_request(options)
    end

    # Stop a top contributors query for a monitor. Specify the query that
    # you want to stop by providing a query ID and a monitor name.
    #
    # Top contributors in Network Flow Monitor are network flows with the
    # highest values for a specific metric type. Top contributors can be
    # across all workload insights, for a given scope, or for a specific
    # monitor. Use the applicable call for the top contributors that you
    # want to be returned.
    #
    # @option params [required, String] :monitor_name
    #   The name of the monitor.
    #
    # @option params [required, String] :query_id
    #   The identifier for the query. A query ID is an internally-generated
    #   identifier for a specific query returned from an API call to create a
    #   query.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_query_monitor_top_contributors({
    #     monitor_name: "ResourceName", # required
    #     query_id: "String", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkflowmonitor-2023-04-19/StopQueryMonitorTopContributors AWS API Documentation
    #
    # @overload stop_query_monitor_top_contributors(params = {})
    # @param [Hash] params ({})
    def stop_query_monitor_top_contributors(params = {}, options = {})
      req = build_request(:stop_query_monitor_top_contributors, params)
      req.send_request(options)
    end

    # Stop a top contributors query for workload insights. Specify the query
    # that you want to stop by providing a query ID and a scope ID.
    #
    # Top contributors in Network Flow Monitor are network flows with the
    # highest values for a specific metric type. Top contributors can be
    # across all workload insights, for a given scope, or for a specific
    # monitor. Use the applicable call for the top contributors that you
    # want to be returned.
    #
    # @option params [required, String] :scope_id
    #   The identifier for the scope that includes the resources you want to
    #   get data results for. A scope ID is an internally-generated identifier
    #   that includes all the resources for a specific root account.
    #
    # @option params [required, String] :query_id
    #   The identifier for the query. A query ID is an internally-generated
    #   identifier for a specific query returned from an API call to create a
    #   query.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_query_workload_insights_top_contributors({
    #     scope_id: "ScopeId", # required
    #     query_id: "String", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkflowmonitor-2023-04-19/StopQueryWorkloadInsightsTopContributors AWS API Documentation
    #
    # @overload stop_query_workload_insights_top_contributors(params = {})
    # @param [Hash] params ({})
    def stop_query_workload_insights_top_contributors(params = {}, options = {})
      req = build_request(:stop_query_workload_insights_top_contributors, params)
      req.send_request(options)
    end

    # Stop a top contributors data query for workload insights. Specify the
    # query that you want to stop by providing a query ID and a scope ID.
    #
    # Top contributors in Network Flow Monitor are network flows with the
    # highest values for a specific metric type. Top contributors can be
    # across all workload insights, for a given scope, or for a specific
    # monitor. Use the applicable call for the top contributors that you
    # want to be returned.
    #
    # @option params [required, String] :scope_id
    #   The identifier for the scope that includes the resources you want to
    #   get data results for. A scope ID is an internally-generated identifier
    #   that includes all the resources for a specific root account.
    #
    # @option params [required, String] :query_id
    #   The identifier for the query. A query ID is an internally-generated
    #   identifier for a specific query returned from an API call to create a
    #   query.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_query_workload_insights_top_contributors_data({
    #     scope_id: "ScopeId", # required
    #     query_id: "String", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkflowmonitor-2023-04-19/StopQueryWorkloadInsightsTopContributorsData AWS API Documentation
    #
    # @overload stop_query_workload_insights_top_contributors_data(params = {})
    # @param [Hash] params ({})
    def stop_query_workload_insights_top_contributors_data(params = {}, options = {})
      req = build_request(:stop_query_workload_insights_top_contributors_data, params)
      req.send_request(options)
    end

    # Adds a tag to a resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #
    # @option params [required, Hash<String,String>] :tags
    #   The tags for a resource.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkflowmonitor-2023-04-19/TagResource AWS API Documentation
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
    #   The Amazon Resource Name (ARN) of the resource.
    #
    # @option params [required, Array<String>] :tag_keys
    #   Keys that you specified when you tagged a resource.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkflowmonitor-2023-04-19/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Update a monitor to add or remove local or remote resources.
    #
    # @option params [required, String] :monitor_name
    #   The name of the monitor.
    #
    # @option params [Array<Types::MonitorLocalResource>] :local_resources_to_add
    #   Additional local resources to specify network flows for a monitor, as
    #   an array of resources with identifiers and types. A local resource in
    #   a workload is the location of hosts where the Network Flow Monitor
    #   agent is installed.
    #
    # @option params [Array<Types::MonitorLocalResource>] :local_resources_to_remove
    #   The local resources to remove, as an array of resources with
    #   identifiers and types.
    #
    # @option params [Array<Types::MonitorRemoteResource>] :remote_resources_to_add
    #   The remote resources to add, as an array of resources with identifiers
    #   and types.
    #
    #   A remote resource is the other endpoint in the flow of a workload,
    #   with a local resource. For example, Amazon Dynamo DB can be a remote
    #   resource.
    #
    # @option params [Array<Types::MonitorRemoteResource>] :remote_resources_to_remove
    #   The remote resources to remove, as an array of resources with
    #   identifiers and types.
    #
    #   A remote resource is the other endpoint specified for the network flow
    #   of a workload, with a local resource. For example, Amazon Dynamo DB
    #   can be a remote resource.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive string of up to 64 ASCII characters that you
    #   specify to make an idempotent API request. Don't reuse the same
    #   client token for other API requests.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::UpdateMonitorOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateMonitorOutput#monitor_arn #monitor_arn} => String
    #   * {Types::UpdateMonitorOutput#monitor_name #monitor_name} => String
    #   * {Types::UpdateMonitorOutput#monitor_status #monitor_status} => String
    #   * {Types::UpdateMonitorOutput#local_resources #local_resources} => Array&lt;Types::MonitorLocalResource&gt;
    #   * {Types::UpdateMonitorOutput#remote_resources #remote_resources} => Array&lt;Types::MonitorRemoteResource&gt;
    #   * {Types::UpdateMonitorOutput#created_at #created_at} => Time
    #   * {Types::UpdateMonitorOutput#modified_at #modified_at} => Time
    #   * {Types::UpdateMonitorOutput#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_monitor({
    #     monitor_name: "ResourceName", # required
    #     local_resources_to_add: [
    #       {
    #         type: "AWS::EC2::VPC", # required, accepts AWS::EC2::VPC, AWS::AvailabilityZone, AWS::EC2::Subnet, AWS::Region
    #         identifier: "String", # required
    #       },
    #     ],
    #     local_resources_to_remove: [
    #       {
    #         type: "AWS::EC2::VPC", # required, accepts AWS::EC2::VPC, AWS::AvailabilityZone, AWS::EC2::Subnet, AWS::Region
    #         identifier: "String", # required
    #       },
    #     ],
    #     remote_resources_to_add: [
    #       {
    #         type: "AWS::EC2::VPC", # required, accepts AWS::EC2::VPC, AWS::AvailabilityZone, AWS::EC2::Subnet, AWS::AWSService, AWS::Region
    #         identifier: "String", # required
    #       },
    #     ],
    #     remote_resources_to_remove: [
    #       {
    #         type: "AWS::EC2::VPC", # required, accepts AWS::EC2::VPC, AWS::AvailabilityZone, AWS::EC2::Subnet, AWS::AWSService, AWS::Region
    #         identifier: "String", # required
    #       },
    #     ],
    #     client_token: "UuidString",
    #   })
    #
    # @example Response structure
    #
    #   resp.monitor_arn #=> String
    #   resp.monitor_name #=> String
    #   resp.monitor_status #=> String, one of "PENDING", "ACTIVE", "INACTIVE", "ERROR", "DELETING"
    #   resp.local_resources #=> Array
    #   resp.local_resources[0].type #=> String, one of "AWS::EC2::VPC", "AWS::AvailabilityZone", "AWS::EC2::Subnet", "AWS::Region"
    #   resp.local_resources[0].identifier #=> String
    #   resp.remote_resources #=> Array
    #   resp.remote_resources[0].type #=> String, one of "AWS::EC2::VPC", "AWS::AvailabilityZone", "AWS::EC2::Subnet", "AWS::AWSService", "AWS::Region"
    #   resp.remote_resources[0].identifier #=> String
    #   resp.created_at #=> Time
    #   resp.modified_at #=> Time
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkflowmonitor-2023-04-19/UpdateMonitor AWS API Documentation
    #
    # @overload update_monitor(params = {})
    # @param [Hash] params ({})
    def update_monitor(params = {}, options = {})
      req = build_request(:update_monitor, params)
      req.send_request(options)
    end

    # Update a scope to add or remove resources that you want to be
    # available for Network Flow Monitor to generate metrics for, when you
    # have active agents on those resources sending metrics reports to the
    # Network Flow Monitor backend.
    #
    # @option params [required, String] :scope_id
    #   The identifier for the scope that includes the resources you want to
    #   get data results for. A scope ID is an internally-generated identifier
    #   that includes all the resources for a specific root account.
    #
    # @option params [Array<Types::TargetResource>] :resources_to_add
    #   A list of resources to add to a scope.
    #
    # @option params [Array<Types::TargetResource>] :resources_to_delete
    #   A list of resources to delete from a scope.
    #
    # @return [Types::UpdateScopeOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateScopeOutput#scope_id #scope_id} => String
    #   * {Types::UpdateScopeOutput#status #status} => String
    #   * {Types::UpdateScopeOutput#scope_arn #scope_arn} => String
    #   * {Types::UpdateScopeOutput#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_scope({
    #     scope_id: "ScopeId", # required
    #     resources_to_add: [
    #       {
    #         target_identifier: { # required
    #           target_id: { # required
    #             account_id: "AccountId",
    #           },
    #           target_type: "ACCOUNT", # required, accepts ACCOUNT
    #         },
    #         region: "AwsRegion", # required
    #       },
    #     ],
    #     resources_to_delete: [
    #       {
    #         target_identifier: { # required
    #           target_id: { # required
    #             account_id: "AccountId",
    #           },
    #           target_type: "ACCOUNT", # required, accepts ACCOUNT
    #         },
    #         region: "AwsRegion", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.scope_id #=> String
    #   resp.status #=> String, one of "SUCCEEDED", "IN_PROGRESS", "FAILED", "DEACTIVATING", "DEACTIVATED"
    #   resp.scope_arn #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkflowmonitor-2023-04-19/UpdateScope AWS API Documentation
    #
    # @overload update_scope(params = {})
    # @param [Hash] params ({})
    def update_scope(params = {}, options = {})
      req = build_request(:update_scope, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::NetworkFlowMonitor')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-networkflowmonitor'
      context[:gem_version] = '1.17.0'
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
