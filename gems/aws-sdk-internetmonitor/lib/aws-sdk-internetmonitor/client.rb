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

module Aws::InternetMonitor
  # An API client for InternetMonitor.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::InternetMonitor::Client.new(
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

    @identifier = :internetmonitor

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
    add_plugin(Aws::InternetMonitor::Plugins::Endpoints)

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
    #   @option options [Aws::InternetMonitor::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::InternetMonitor::EndpointParameters`.
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

    # Creates a monitor in Amazon CloudWatch Internet Monitor. A monitor is
    # built based on information from the application resources that you
    # add: VPCs, Network Load Balancers (NLBs), Amazon CloudFront
    # distributions, and Amazon WorkSpaces directories. Internet Monitor
    # then publishes internet measurements from Amazon Web Services that are
    # specific to the *city-networks*. That is, the locations and ASNs
    # (typically internet service providers or ISPs), where clients access
    # your application. For more information, see [Using Amazon CloudWatch
    # Internet Monitor][1] in the *Amazon CloudWatch User Guide*.
    #
    # When you create a monitor, you choose the percentage of traffic that
    # you want to monitor. You can also set a maximum limit for the number
    # of city-networks where client traffic is monitored, that caps the
    # total traffic that Internet Monitor monitors. A city-network maximum
    # is the limit of city-networks, but you only pay for the number of
    # city-networks that are actually monitored. You can update your monitor
    # at any time to change the percentage of traffic to monitor or the
    # city-networks maximum. For more information, see [Choosing a
    # city-network maximum value][2] in the *Amazon CloudWatch User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-InternetMonitor.html
    # [2]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/IMCityNetworksMaximum.html
    #
    # @option params [required, String] :monitor_name
    #   The name of the monitor.
    #
    # @option params [Array<String>] :resources
    #   The resources to include in a monitor, which you provide as a set of
    #   Amazon Resource Names (ARNs). Resources can be VPCs, NLBs, Amazon
    #   CloudFront distributions, or Amazon WorkSpaces directories.
    #
    #   You can add a combination of VPCs and CloudFront distributions, or you
    #   can add WorkSpaces directories, or you can add NLBs. You can't add
    #   NLBs or WorkSpaces directories together with any other resources.
    #
    #   <note markdown="1"> If you add only Amazon VPC resources, at least one VPC must have an
    #   Internet Gateway attached to it, to make sure that it has internet
    #   connectivity.
    #
    #    </note>
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
    #   The tags for a monitor. You can add a maximum of 50 tags in Internet
    #   Monitor.
    #
    # @option params [Integer] :max_city_networks_to_monitor
    #   The maximum number of city-networks to monitor for your resources. A
    #   city-network is the location (city) where clients access your
    #   application resources from and the ASN or network provider, such as an
    #   internet service provider (ISP), that clients access the resources
    #   through. Setting this limit can help control billing costs.
    #
    #   To learn more, see [Choosing a city-network maximum value ][1] in the
    #   Amazon CloudWatch Internet Monitor section of the *CloudWatch User
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/IMCityNetworksMaximum.html
    #
    # @option params [Types::InternetMeasurementsLogDelivery] :internet_measurements_log_delivery
    #   Publish internet measurements for Internet Monitor to an Amazon S3
    #   bucket in addition to CloudWatch Logs.
    #
    # @option params [Integer] :traffic_percentage_to_monitor
    #   The percentage of the internet-facing traffic for your application
    #   that you want to monitor with this monitor. If you set a city-networks
    #   maximum, that limit overrides the traffic percentage that you set.
    #
    #   To learn more, see [Choosing an application traffic percentage to
    #   monitor ][1] in the Amazon CloudWatch Internet Monitor section of the
    #   *CloudWatch User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/IMTrafficPercentage.html
    #
    # @option params [Types::HealthEventsConfig] :health_events_config
    #   Defines the threshold percentages and other configuration information
    #   for when Amazon CloudWatch Internet Monitor creates a health event.
    #   Internet Monitor creates a health event when an internet issue that
    #   affects your application end users has a health score percentage that
    #   is at or below a specific threshold, and, sometimes, when other
    #   criteria are met.
    #
    #   If you don't set a health event threshold, the default value is 95%.
    #
    #   For more information, see [ Change health event thresholds][1] in the
    #   Internet Monitor section of the *CloudWatch User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-IM-overview.html#IMUpdateThresholdFromOverview
    #
    # @return [Types::CreateMonitorOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateMonitorOutput#arn #arn} => String
    #   * {Types::CreateMonitorOutput#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_monitor({
    #     monitor_name: "ResourceName", # required
    #     resources: ["Arn"],
    #     client_token: "String",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     max_city_networks_to_monitor: 1,
    #     internet_measurements_log_delivery: {
    #       s3_config: {
    #         bucket_name: "S3ConfigBucketNameString",
    #         bucket_prefix: "String",
    #         log_delivery_status: "ENABLED", # accepts ENABLED, DISABLED
    #       },
    #     },
    #     traffic_percentage_to_monitor: 1,
    #     health_events_config: {
    #       availability_score_threshold: 1.0,
    #       performance_score_threshold: 1.0,
    #       availability_local_health_events_config: {
    #         status: "ENABLED", # accepts ENABLED, DISABLED
    #         health_score_threshold: 1.0,
    #         min_traffic_impact: 1.0,
    #       },
    #       performance_local_health_events_config: {
    #         status: "ENABLED", # accepts ENABLED, DISABLED
    #         health_score_threshold: 1.0,
    #         min_traffic_impact: 1.0,
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.status #=> String, one of "PENDING", "ACTIVE", "INACTIVE", "ERROR"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/internetmonitor-2021-06-03/CreateMonitor AWS API Documentation
    #
    # @overload create_monitor(params = {})
    # @param [Hash] params ({})
    def create_monitor(params = {}, options = {})
      req = build_request(:create_monitor, params)
      req.send_request(options)
    end

    # Deletes a monitor in Amazon CloudWatch Internet Monitor.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/internetmonitor-2021-06-03/DeleteMonitor AWS API Documentation
    #
    # @overload delete_monitor(params = {})
    # @param [Hash] params ({})
    def delete_monitor(params = {}, options = {})
      req = build_request(:delete_monitor, params)
      req.send_request(options)
    end

    # Gets information that Amazon CloudWatch Internet Monitor has created
    # and stored about a health event for a specified monitor. This
    # information includes the impacted locations, and all the information
    # related to the event, by location.
    #
    # The information returned includes the impact on performance,
    # availability, and round-trip time, information about the network
    # providers (ASNs), the event type, and so on.
    #
    # Information rolled up at the global traffic level is also returned,
    # including the impact type and total traffic impact.
    #
    # @option params [required, String] :monitor_name
    #   The name of the monitor.
    #
    # @option params [required, String] :event_id
    #   The internally-generated identifier of a health event. Because
    #   `EventID` contains the forward slash (“/”) character, you must
    #   URL-encode the `EventID` field in the request URL.
    #
    # @option params [String] :linked_account_id
    #   The account ID for an account that you've set up cross-account
    #   sharing for in Amazon CloudWatch Internet Monitor. You configure
    #   cross-account sharing by using Amazon CloudWatch Observability Access
    #   Manager. For more information, see [Internet Monitor cross-account
    #   observability][1] in the Amazon CloudWatch Internet Monitor User
    #   Guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/cwim-cross-account.html
    #
    # @return [Types::GetHealthEventOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetHealthEventOutput#event_arn #event_arn} => String
    #   * {Types::GetHealthEventOutput#event_id #event_id} => String
    #   * {Types::GetHealthEventOutput#started_at #started_at} => Time
    #   * {Types::GetHealthEventOutput#ended_at #ended_at} => Time
    #   * {Types::GetHealthEventOutput#created_at #created_at} => Time
    #   * {Types::GetHealthEventOutput#last_updated_at #last_updated_at} => Time
    #   * {Types::GetHealthEventOutput#impacted_locations #impacted_locations} => Array&lt;Types::ImpactedLocation&gt;
    #   * {Types::GetHealthEventOutput#status #status} => String
    #   * {Types::GetHealthEventOutput#percent_of_total_traffic_impacted #percent_of_total_traffic_impacted} => Float
    #   * {Types::GetHealthEventOutput#impact_type #impact_type} => String
    #   * {Types::GetHealthEventOutput#health_score_threshold #health_score_threshold} => Float
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_health_event({
    #     monitor_name: "ResourceName", # required
    #     event_id: "HealthEventName", # required
    #     linked_account_id: "AccountId",
    #   })
    #
    # @example Response structure
    #
    #   resp.event_arn #=> String
    #   resp.event_id #=> String
    #   resp.started_at #=> Time
    #   resp.ended_at #=> Time
    #   resp.created_at #=> Time
    #   resp.last_updated_at #=> Time
    #   resp.impacted_locations #=> Array
    #   resp.impacted_locations[0].as_name #=> String
    #   resp.impacted_locations[0].as_number #=> Integer
    #   resp.impacted_locations[0].country #=> String
    #   resp.impacted_locations[0].subdivision #=> String
    #   resp.impacted_locations[0].metro #=> String
    #   resp.impacted_locations[0].city #=> String
    #   resp.impacted_locations[0].latitude #=> Float
    #   resp.impacted_locations[0].longitude #=> Float
    #   resp.impacted_locations[0].country_code #=> String
    #   resp.impacted_locations[0].subdivision_code #=> String
    #   resp.impacted_locations[0].service_location #=> String
    #   resp.impacted_locations[0].status #=> String, one of "ACTIVE", "RESOLVED"
    #   resp.impacted_locations[0].caused_by.networks #=> Array
    #   resp.impacted_locations[0].caused_by.networks[0].as_name #=> String
    #   resp.impacted_locations[0].caused_by.networks[0].as_number #=> Integer
    #   resp.impacted_locations[0].caused_by.as_path #=> Array
    #   resp.impacted_locations[0].caused_by.as_path[0].as_name #=> String
    #   resp.impacted_locations[0].caused_by.as_path[0].as_number #=> Integer
    #   resp.impacted_locations[0].caused_by.network_event_type #=> String, one of "AWS", "Internet"
    #   resp.impacted_locations[0].internet_health.availability.experience_score #=> Float
    #   resp.impacted_locations[0].internet_health.availability.percent_of_total_traffic_impacted #=> Float
    #   resp.impacted_locations[0].internet_health.availability.percent_of_client_location_impacted #=> Float
    #   resp.impacted_locations[0].internet_health.performance.experience_score #=> Float
    #   resp.impacted_locations[0].internet_health.performance.percent_of_total_traffic_impacted #=> Float
    #   resp.impacted_locations[0].internet_health.performance.percent_of_client_location_impacted #=> Float
    #   resp.impacted_locations[0].internet_health.performance.round_trip_time.p50 #=> Float
    #   resp.impacted_locations[0].internet_health.performance.round_trip_time.p90 #=> Float
    #   resp.impacted_locations[0].internet_health.performance.round_trip_time.p95 #=> Float
    #   resp.impacted_locations[0].ipv_4_prefixes #=> Array
    #   resp.impacted_locations[0].ipv_4_prefixes[0] #=> String
    #   resp.status #=> String, one of "ACTIVE", "RESOLVED"
    #   resp.percent_of_total_traffic_impacted #=> Float
    #   resp.impact_type #=> String, one of "AVAILABILITY", "PERFORMANCE", "LOCAL_AVAILABILITY", "LOCAL_PERFORMANCE"
    #   resp.health_score_threshold #=> Float
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/internetmonitor-2021-06-03/GetHealthEvent AWS API Documentation
    #
    # @overload get_health_event(params = {})
    # @param [Hash] params ({})
    def get_health_event(params = {}, options = {})
      req = build_request(:get_health_event, params)
      req.send_request(options)
    end

    # Gets information that Amazon CloudWatch Internet Monitor has generated
    # about an internet event. Internet Monitor displays information about
    # recent global health events, called internet events, on a global
    # outages map that is available to all Amazon Web Services customers.
    #
    # The information returned here includes the impacted location, when the
    # event started and (if the event is over) ended, the type of event
    # (`PERFORMANCE` or `AVAILABILITY`), and the status (`ACTIVE` or
    # `RESOLVED`).
    #
    # @option params [required, String] :event_id
    #   The `EventId` of the internet event to return information for.
    #
    # @return [Types::GetInternetEventOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetInternetEventOutput#event_id #event_id} => String
    #   * {Types::GetInternetEventOutput#event_arn #event_arn} => String
    #   * {Types::GetInternetEventOutput#started_at #started_at} => Time
    #   * {Types::GetInternetEventOutput#ended_at #ended_at} => Time
    #   * {Types::GetInternetEventOutput#client_location #client_location} => Types::ClientLocation
    #   * {Types::GetInternetEventOutput#event_type #event_type} => String
    #   * {Types::GetInternetEventOutput#event_status #event_status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_internet_event({
    #     event_id: "InternetEventId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.event_id #=> String
    #   resp.event_arn #=> String
    #   resp.started_at #=> Time
    #   resp.ended_at #=> Time
    #   resp.client_location.as_name #=> String
    #   resp.client_location.as_number #=> Integer
    #   resp.client_location.country #=> String
    #   resp.client_location.subdivision #=> String
    #   resp.client_location.metro #=> String
    #   resp.client_location.city #=> String
    #   resp.client_location.latitude #=> Float
    #   resp.client_location.longitude #=> Float
    #   resp.event_type #=> String, one of "AVAILABILITY", "PERFORMANCE"
    #   resp.event_status #=> String, one of "ACTIVE", "RESOLVED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/internetmonitor-2021-06-03/GetInternetEvent AWS API Documentation
    #
    # @overload get_internet_event(params = {})
    # @param [Hash] params ({})
    def get_internet_event(params = {}, options = {})
      req = build_request(:get_internet_event, params)
      req.send_request(options)
    end

    # Gets information about a monitor in Amazon CloudWatch Internet Monitor
    # based on a monitor name. The information returned includes the Amazon
    # Resource Name (ARN), create time, modified time, resources included in
    # the monitor, and status information.
    #
    # @option params [required, String] :monitor_name
    #   The name of the monitor.
    #
    # @option params [String] :linked_account_id
    #   The account ID for an account that you've set up cross-account
    #   sharing for in Amazon CloudWatch Internet Monitor. You configure
    #   cross-account sharing by using Amazon CloudWatch Observability Access
    #   Manager. For more information, see [Internet Monitor cross-account
    #   observability][1] in the Amazon CloudWatch Internet Monitor User
    #   Guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/cwim-cross-account.html
    #
    # @return [Types::GetMonitorOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetMonitorOutput#monitor_name #monitor_name} => String
    #   * {Types::GetMonitorOutput#monitor_arn #monitor_arn} => String
    #   * {Types::GetMonitorOutput#resources #resources} => Array&lt;String&gt;
    #   * {Types::GetMonitorOutput#status #status} => String
    #   * {Types::GetMonitorOutput#created_at #created_at} => Time
    #   * {Types::GetMonitorOutput#modified_at #modified_at} => Time
    #   * {Types::GetMonitorOutput#processing_status #processing_status} => String
    #   * {Types::GetMonitorOutput#processing_status_info #processing_status_info} => String
    #   * {Types::GetMonitorOutput#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::GetMonitorOutput#max_city_networks_to_monitor #max_city_networks_to_monitor} => Integer
    #   * {Types::GetMonitorOutput#internet_measurements_log_delivery #internet_measurements_log_delivery} => Types::InternetMeasurementsLogDelivery
    #   * {Types::GetMonitorOutput#traffic_percentage_to_monitor #traffic_percentage_to_monitor} => Integer
    #   * {Types::GetMonitorOutput#health_events_config #health_events_config} => Types::HealthEventsConfig
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_monitor({
    #     monitor_name: "ResourceName", # required
    #     linked_account_id: "AccountId",
    #   })
    #
    # @example Response structure
    #
    #   resp.monitor_name #=> String
    #   resp.monitor_arn #=> String
    #   resp.resources #=> Array
    #   resp.resources[0] #=> String
    #   resp.status #=> String, one of "PENDING", "ACTIVE", "INACTIVE", "ERROR"
    #   resp.created_at #=> Time
    #   resp.modified_at #=> Time
    #   resp.processing_status #=> String, one of "OK", "INACTIVE", "COLLECTING_DATA", "INSUFFICIENT_DATA", "FAULT_SERVICE", "FAULT_ACCESS_CLOUDWATCH"
    #   resp.processing_status_info #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #   resp.max_city_networks_to_monitor #=> Integer
    #   resp.internet_measurements_log_delivery.s3_config.bucket_name #=> String
    #   resp.internet_measurements_log_delivery.s3_config.bucket_prefix #=> String
    #   resp.internet_measurements_log_delivery.s3_config.log_delivery_status #=> String, one of "ENABLED", "DISABLED"
    #   resp.traffic_percentage_to_monitor #=> Integer
    #   resp.health_events_config.availability_score_threshold #=> Float
    #   resp.health_events_config.performance_score_threshold #=> Float
    #   resp.health_events_config.availability_local_health_events_config.status #=> String, one of "ENABLED", "DISABLED"
    #   resp.health_events_config.availability_local_health_events_config.health_score_threshold #=> Float
    #   resp.health_events_config.availability_local_health_events_config.min_traffic_impact #=> Float
    #   resp.health_events_config.performance_local_health_events_config.status #=> String, one of "ENABLED", "DISABLED"
    #   resp.health_events_config.performance_local_health_events_config.health_score_threshold #=> Float
    #   resp.health_events_config.performance_local_health_events_config.min_traffic_impact #=> Float
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/internetmonitor-2021-06-03/GetMonitor AWS API Documentation
    #
    # @overload get_monitor(params = {})
    # @param [Hash] params ({})
    def get_monitor(params = {}, options = {})
      req = build_request(:get_monitor, params)
      req.send_request(options)
    end

    # Return the data for a query with the Amazon CloudWatch Internet
    # Monitor query interface. Specify the query that you want to return
    # results for by providing a `QueryId` and a monitor name.
    #
    # For more information about using the query interface, including
    # examples, see [Using the Amazon CloudWatch Internet Monitor query
    # interface][1] in the Amazon CloudWatch Internet Monitor User Guide.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-IM-view-cw-tools-cwim-query.html
    #
    # @option params [required, String] :monitor_name
    #   The name of the monitor to return data for.
    #
    # @option params [required, String] :query_id
    #   The ID of the query that you want to return data results for. A
    #   `QueryId` is an internally-generated identifier for a specific query.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. You receive this token from a
    #   previous call.
    #
    # @option params [Integer] :max_results
    #   The number of query results that you want to return with this call.
    #
    # @return [Types::GetQueryResultsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetQueryResultsOutput#fields #fields} => Array&lt;Types::QueryField&gt;
    #   * {Types::GetQueryResultsOutput#data #data} => Array&lt;Array&lt;String&gt;&gt;
    #   * {Types::GetQueryResultsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_query_results({
    #     monitor_name: "ResourceName", # required
    #     query_id: "String", # required
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.fields #=> Array
    #   resp.fields[0].name #=> String
    #   resp.fields[0].type #=> String
    #   resp.data #=> Array
    #   resp.data[0] #=> Array
    #   resp.data[0][0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/internetmonitor-2021-06-03/GetQueryResults AWS API Documentation
    #
    # @overload get_query_results(params = {})
    # @param [Hash] params ({})
    def get_query_results(params = {}, options = {})
      req = build_request(:get_query_results, params)
      req.send_request(options)
    end

    # Returns the current status of a query for the Amazon CloudWatch
    # Internet Monitor query interface, for a specified query ID and
    # monitor. When you run a query, check the status to make sure that the
    # query has `SUCCEEDED` before you review the results.
    #
    # * `QUEUED`: The query is scheduled to run.
    #
    # * `RUNNING`: The query is in progress but not complete.
    #
    # * `SUCCEEDED`: The query completed sucessfully.
    #
    # * `FAILED`: The query failed due to an error.
    #
    # * `CANCELED`: The query was canceled.
    #
    # @option params [required, String] :monitor_name
    #   The name of the monitor.
    #
    # @option params [required, String] :query_id
    #   The ID of the query that you want to return the status for. A
    #   `QueryId` is an internally-generated dentifier for a specific query.
    #
    # @return [Types::GetQueryStatusOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetQueryStatusOutput#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_query_status({
    #     monitor_name: "ResourceName", # required
    #     query_id: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.status #=> String, one of "QUEUED", "RUNNING", "SUCCEEDED", "FAILED", "CANCELED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/internetmonitor-2021-06-03/GetQueryStatus AWS API Documentation
    #
    # @overload get_query_status(params = {})
    # @param [Hash] params ({})
    def get_query_status(params = {}, options = {})
      req = build_request(:get_query_status, params)
      req.send_request(options)
    end

    # Lists all health events for a monitor in Amazon CloudWatch Internet
    # Monitor. Returns information for health events including the event
    # start and end times, and the status.
    #
    # <note markdown="1"> Health events that have start times during the time frame that is
    # requested are not included in the list of health events.
    #
    #  </note>
    #
    # @option params [required, String] :monitor_name
    #   The name of the monitor.
    #
    # @option params [Time,DateTime,Date,Integer,String] :start_time
    #   The time when a health event started.
    #
    # @option params [Time,DateTime,Date,Integer,String] :end_time
    #   The time when a health event ended. If the health event is still
    #   ongoing, then the end time is not set.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. You receive this token from a
    #   previous call.
    #
    # @option params [Integer] :max_results
    #   The number of health event objects that you want to return with this
    #   call.
    #
    # @option params [String] :event_status
    #   The status of a health event.
    #
    # @option params [String] :linked_account_id
    #   The account ID for an account that you've set up cross-account
    #   sharing for in Amazon CloudWatch Internet Monitor. You configure
    #   cross-account sharing by using Amazon CloudWatch Observability Access
    #   Manager. For more information, see [Internet Monitor cross-account
    #   observability][1] in the Amazon CloudWatch Internet Monitor User
    #   Guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/cwim-cross-account.html
    #
    # @return [Types::ListHealthEventsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListHealthEventsOutput#health_events #health_events} => Array&lt;Types::HealthEvent&gt;
    #   * {Types::ListHealthEventsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_health_events({
    #     monitor_name: "ResourceName", # required
    #     start_time: Time.now,
    #     end_time: Time.now,
    #     next_token: "String",
    #     max_results: 1,
    #     event_status: "ACTIVE", # accepts ACTIVE, RESOLVED
    #     linked_account_id: "AccountId",
    #   })
    #
    # @example Response structure
    #
    #   resp.health_events #=> Array
    #   resp.health_events[0].event_arn #=> String
    #   resp.health_events[0].event_id #=> String
    #   resp.health_events[0].started_at #=> Time
    #   resp.health_events[0].ended_at #=> Time
    #   resp.health_events[0].created_at #=> Time
    #   resp.health_events[0].last_updated_at #=> Time
    #   resp.health_events[0].impacted_locations #=> Array
    #   resp.health_events[0].impacted_locations[0].as_name #=> String
    #   resp.health_events[0].impacted_locations[0].as_number #=> Integer
    #   resp.health_events[0].impacted_locations[0].country #=> String
    #   resp.health_events[0].impacted_locations[0].subdivision #=> String
    #   resp.health_events[0].impacted_locations[0].metro #=> String
    #   resp.health_events[0].impacted_locations[0].city #=> String
    #   resp.health_events[0].impacted_locations[0].latitude #=> Float
    #   resp.health_events[0].impacted_locations[0].longitude #=> Float
    #   resp.health_events[0].impacted_locations[0].country_code #=> String
    #   resp.health_events[0].impacted_locations[0].subdivision_code #=> String
    #   resp.health_events[0].impacted_locations[0].service_location #=> String
    #   resp.health_events[0].impacted_locations[0].status #=> String, one of "ACTIVE", "RESOLVED"
    #   resp.health_events[0].impacted_locations[0].caused_by.networks #=> Array
    #   resp.health_events[0].impacted_locations[0].caused_by.networks[0].as_name #=> String
    #   resp.health_events[0].impacted_locations[0].caused_by.networks[0].as_number #=> Integer
    #   resp.health_events[0].impacted_locations[0].caused_by.as_path #=> Array
    #   resp.health_events[0].impacted_locations[0].caused_by.as_path[0].as_name #=> String
    #   resp.health_events[0].impacted_locations[0].caused_by.as_path[0].as_number #=> Integer
    #   resp.health_events[0].impacted_locations[0].caused_by.network_event_type #=> String, one of "AWS", "Internet"
    #   resp.health_events[0].impacted_locations[0].internet_health.availability.experience_score #=> Float
    #   resp.health_events[0].impacted_locations[0].internet_health.availability.percent_of_total_traffic_impacted #=> Float
    #   resp.health_events[0].impacted_locations[0].internet_health.availability.percent_of_client_location_impacted #=> Float
    #   resp.health_events[0].impacted_locations[0].internet_health.performance.experience_score #=> Float
    #   resp.health_events[0].impacted_locations[0].internet_health.performance.percent_of_total_traffic_impacted #=> Float
    #   resp.health_events[0].impacted_locations[0].internet_health.performance.percent_of_client_location_impacted #=> Float
    #   resp.health_events[0].impacted_locations[0].internet_health.performance.round_trip_time.p50 #=> Float
    #   resp.health_events[0].impacted_locations[0].internet_health.performance.round_trip_time.p90 #=> Float
    #   resp.health_events[0].impacted_locations[0].internet_health.performance.round_trip_time.p95 #=> Float
    #   resp.health_events[0].impacted_locations[0].ipv_4_prefixes #=> Array
    #   resp.health_events[0].impacted_locations[0].ipv_4_prefixes[0] #=> String
    #   resp.health_events[0].status #=> String, one of "ACTIVE", "RESOLVED"
    #   resp.health_events[0].percent_of_total_traffic_impacted #=> Float
    #   resp.health_events[0].impact_type #=> String, one of "AVAILABILITY", "PERFORMANCE", "LOCAL_AVAILABILITY", "LOCAL_PERFORMANCE"
    #   resp.health_events[0].health_score_threshold #=> Float
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/internetmonitor-2021-06-03/ListHealthEvents AWS API Documentation
    #
    # @overload list_health_events(params = {})
    # @param [Hash] params ({})
    def list_health_events(params = {}, options = {})
      req = build_request(:list_health_events, params)
      req.send_request(options)
    end

    # Lists internet events that cause performance or availability issues
    # for client locations. Amazon CloudWatch Internet Monitor displays
    # information about recent global health events, called internet events,
    # on a global outages map that is available to all Amazon Web Services
    # customers.
    #
    # You can constrain the list of internet events returned by providing a
    # start time and end time to define a total time frame for events you
    # want to list. Both start time and end time specify the time when an
    # event started. End time is optional. If you don't include it, the
    # default end time is the current time.
    #
    # You can also limit the events returned to a specific status (`ACTIVE`
    # or `RESOLVED`) or type (`PERFORMANCE` or `AVAILABILITY`).
    #
    # @option params [String] :next_token
    #   The token for the next set of results. You receive this token from a
    #   previous call.
    #
    # @option params [Integer] :max_results
    #   The number of query results that you want to return with this call.
    #
    # @option params [Time,DateTime,Date,Integer,String] :start_time
    #   The start time of the time window that you want to get a list of
    #   internet events for.
    #
    # @option params [Time,DateTime,Date,Integer,String] :end_time
    #   The end time of the time window that you want to get a list of
    #   internet events for.
    #
    # @option params [String] :event_status
    #   The status of an internet event.
    #
    # @option params [String] :event_type
    #   The type of network impairment.
    #
    # @return [Types::ListInternetEventsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListInternetEventsOutput#internet_events #internet_events} => Array&lt;Types::InternetEventSummary&gt;
    #   * {Types::ListInternetEventsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_internet_events({
    #     next_token: "String",
    #     max_results: 1,
    #     start_time: Time.now,
    #     end_time: Time.now,
    #     event_status: "String",
    #     event_type: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.internet_events #=> Array
    #   resp.internet_events[0].event_id #=> String
    #   resp.internet_events[0].event_arn #=> String
    #   resp.internet_events[0].started_at #=> Time
    #   resp.internet_events[0].ended_at #=> Time
    #   resp.internet_events[0].client_location.as_name #=> String
    #   resp.internet_events[0].client_location.as_number #=> Integer
    #   resp.internet_events[0].client_location.country #=> String
    #   resp.internet_events[0].client_location.subdivision #=> String
    #   resp.internet_events[0].client_location.metro #=> String
    #   resp.internet_events[0].client_location.city #=> String
    #   resp.internet_events[0].client_location.latitude #=> Float
    #   resp.internet_events[0].client_location.longitude #=> Float
    #   resp.internet_events[0].event_type #=> String, one of "AVAILABILITY", "PERFORMANCE"
    #   resp.internet_events[0].event_status #=> String, one of "ACTIVE", "RESOLVED"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/internetmonitor-2021-06-03/ListInternetEvents AWS API Documentation
    #
    # @overload list_internet_events(params = {})
    # @param [Hash] params ({})
    def list_internet_events(params = {}, options = {})
      req = build_request(:list_internet_events, params)
      req.send_request(options)
    end

    # Lists all of your monitors for Amazon CloudWatch Internet Monitor and
    # their statuses, along with the Amazon Resource Name (ARN) and name of
    # each monitor.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. You receive this token from a
    #   previous call.
    #
    # @option params [Integer] :max_results
    #   The number of monitor objects that you want to return with this call.
    #
    # @option params [String] :monitor_status
    #   The status of a monitor. This includes the status of the data
    #   processing for the monitor and the status of the monitor itself.
    #
    #   For information about the statuses for a monitor, see [ Monitor][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/internet-monitor/latest/api/API_Monitor.html
    #
    # @option params [Boolean] :include_linked_accounts
    #   A boolean option that you can set to `TRUE` to include monitors for
    #   linked accounts in a list of monitors, when you've set up
    #   cross-account sharing in Amazon CloudWatch Internet Monitor. You
    #   configure cross-account sharing by using Amazon CloudWatch
    #   Observability Access Manager. For more information, see [Internet
    #   Monitor cross-account observability][1] in the Amazon CloudWatch
    #   Internet Monitor User Guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/cwim-cross-account.html
    #
    # @return [Types::ListMonitorsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListMonitorsOutput#monitors #monitors} => Array&lt;Types::Monitor&gt;
    #   * {Types::ListMonitorsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_monitors({
    #     next_token: "String",
    #     max_results: 1,
    #     monitor_status: "String",
    #     include_linked_accounts: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.monitors #=> Array
    #   resp.monitors[0].monitor_name #=> String
    #   resp.monitors[0].monitor_arn #=> String
    #   resp.monitors[0].status #=> String, one of "PENDING", "ACTIVE", "INACTIVE", "ERROR"
    #   resp.monitors[0].processing_status #=> String, one of "OK", "INACTIVE", "COLLECTING_DATA", "INSUFFICIENT_DATA", "FAULT_SERVICE", "FAULT_ACCESS_CLOUDWATCH"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/internetmonitor-2021-06-03/ListMonitors AWS API Documentation
    #
    # @overload list_monitors(params = {})
    # @param [Hash] params ({})
    def list_monitors(params = {}, options = {})
      req = build_request(:list_monitors, params)
      req.send_request(options)
    end

    # Lists the tags for a resource. Tags are supported only for monitors in
    # Amazon CloudWatch Internet Monitor.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) for a resource.
    #
    # @return [Types::ListTagsForResourceOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceOutput#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "MonitorArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/internetmonitor-2021-06-03/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Start a query to return data for a specific query type for the Amazon
    # CloudWatch Internet Monitor query interface. Specify a time period for
    # the data that you want returned by using `StartTime` and `EndTime`.
    # You filter the query results to return by providing parameters that
    # you specify with `FilterParameters`.
    #
    # For more information about using the query interface, including
    # examples, see [Using the Amazon CloudWatch Internet Monitor query
    # interface][1] in the Amazon CloudWatch Internet Monitor User Guide.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-IM-view-cw-tools-cwim-query.html
    #
    # @option params [required, String] :monitor_name
    #   The name of the monitor to query.
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :start_time
    #   The timestamp that is the beginning of the period that you want to
    #   retrieve data for with your query.
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :end_time
    #   The timestamp that is the end of the period that you want to retrieve
    #   data for with your query.
    #
    # @option params [required, String] :query_type
    #   The type of query to run. The following are the three types of queries
    #   that you can run using the Internet Monitor query interface:
    #
    #   * `MEASUREMENTS`: Provides availability score, performance score,
    #     total traffic, and round-trip times, at 5 minute intervals.
    #
    #   * `TOP_LOCATIONS`: Provides availability score, performance score,
    #     total traffic, and time to first byte (TTFB) information, for the
    #     top location and ASN combinations that you're monitoring, by
    #     traffic volume.
    #
    #   * `TOP_LOCATION_DETAILS`: Provides TTFB for Amazon CloudFront, your
    #     current configuration, and the best performing EC2 configuration, at
    #     1 hour intervals.
    #
    #   * `OVERALL_TRAFFIC_SUGGESTIONS`: Provides TTFB, using a 30-day
    #     weighted average, for all traffic in each Amazon Web Services
    #     location that is monitored.
    #
    #   * `OVERALL_TRAFFIC_SUGGESTIONS_DETAILS`: Provides TTFB, using a 30-day
    #     weighted average, for each top location, for a proposed Amazon Web
    #     Services location. Must provide an Amazon Web Services location to
    #     search.
    #
    #   * `ROUTING_SUGGESTIONS`: Provides the predicted average round-trip
    #     time (RTT) from an IP prefix toward an Amazon Web Services location
    #     for a DNS resolver. The RTT is calculated at one hour intervals,
    #     over a one hour period.
    #
    #   For lists of the fields returned with each query type and more
    #   information about how each type of query is performed, see [ Using the
    #   Amazon CloudWatch Internet Monitor query interface][1] in the Amazon
    #   CloudWatch Internet Monitor User Guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-IM-view-cw-tools-cwim-query.html
    #
    # @option params [Array<Types::FilterParameter>] :filter_parameters
    #   The `FilterParameters` field that you use with Amazon CloudWatch
    #   Internet Monitor queries is a string the defines how you want a query
    #   to be filtered. The filter parameters that you can specify depend on
    #   the query type, since each query type returns a different set of
    #   Internet Monitor data.
    #
    #   For more information about specifying filter parameters, see [Using
    #   the Amazon CloudWatch Internet Monitor query interface][1] in the
    #   Amazon CloudWatch Internet Monitor User Guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-IM-view-cw-tools-cwim-query.html
    #
    # @option params [String] :linked_account_id
    #   The account ID for an account that you've set up cross-account
    #   sharing for in Amazon CloudWatch Internet Monitor. You configure
    #   cross-account sharing by using Amazon CloudWatch Observability Access
    #   Manager. For more information, see [Internet Monitor cross-account
    #   observability][1] in the Amazon CloudWatch Internet Monitor User
    #   Guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/cwim-cross-account.html
    #
    # @return [Types::StartQueryOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartQueryOutput#query_id #query_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_query({
    #     monitor_name: "ResourceName", # required
    #     start_time: Time.now, # required
    #     end_time: Time.now, # required
    #     query_type: "MEASUREMENTS", # required, accepts MEASUREMENTS, TOP_LOCATIONS, TOP_LOCATION_DETAILS, OVERALL_TRAFFIC_SUGGESTIONS, OVERALL_TRAFFIC_SUGGESTIONS_DETAILS, ROUTING_SUGGESTIONS
    #     filter_parameters: [
    #       {
    #         field: "String",
    #         operator: "EQUALS", # accepts EQUALS, NOT_EQUALS
    #         values: ["String"],
    #       },
    #     ],
    #     linked_account_id: "AccountId",
    #   })
    #
    # @example Response structure
    #
    #   resp.query_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/internetmonitor-2021-06-03/StartQuery AWS API Documentation
    #
    # @overload start_query(params = {})
    # @param [Hash] params ({})
    def start_query(params = {}, options = {})
      req = build_request(:start_query, params)
      req.send_request(options)
    end

    # Stop a query that is progress for a specific monitor.
    #
    # @option params [required, String] :monitor_name
    #   The name of the monitor.
    #
    # @option params [required, String] :query_id
    #   The ID of the query that you want to stop. A `QueryId` is an
    #   internally-generated identifier for a specific query.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_query({
    #     monitor_name: "ResourceName", # required
    #     query_id: "String", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/internetmonitor-2021-06-03/StopQuery AWS API Documentation
    #
    # @overload stop_query(params = {})
    # @param [Hash] params ({})
    def stop_query(params = {}, options = {})
      req = build_request(:stop_query, params)
      req.send_request(options)
    end

    # Adds a tag to a resource. Tags are supported only for monitors in
    # Amazon CloudWatch Internet Monitor. You can add a maximum of 50 tags
    # in Internet Monitor.
    #
    # A minimum of one tag is required for this call. It returns an error if
    # you use the `TagResource` request with 0 tags.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) for a tag that you add to a resource.
    #   Tags are supported only for monitors in Amazon CloudWatch Internet
    #   Monitor.
    #
    # @option params [required, Hash<String,String>] :tags
    #   Tags that you add to a resource. You can add a maximum of 50 tags in
    #   Internet Monitor.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "MonitorArn", # required
    #     tags: { # required
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/internetmonitor-2021-06-03/TagResource AWS API Documentation
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
    #   The Amazon Resource Name (ARN) for a tag you remove a resource from.
    #
    # @option params [required, Array<String>] :tag_keys
    #   Tag keys that you remove from a resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "MonitorArn", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/internetmonitor-2021-06-03/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates a monitor. You can update a monitor to change the percentage
    # of traffic to monitor or the maximum number of city-networks
    # (locations and ASNs), to add or remove resources, or to change the
    # status of the monitor. Note that you can't change the name of a
    # monitor.
    #
    # The city-network maximum that you choose is the limit, but you only
    # pay for the number of city-networks that are actually monitored. For
    # more information, see [Choosing a city-network maximum value][1] in
    # the *Amazon CloudWatch User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/IMCityNetworksMaximum.html
    #
    # @option params [required, String] :monitor_name
    #   The name of the monitor.
    #
    # @option params [Array<String>] :resources_to_add
    #   The resources to include in a monitor, which you provide as a set of
    #   Amazon Resource Names (ARNs). Resources can be VPCs, NLBs, Amazon
    #   CloudFront distributions, or Amazon WorkSpaces directories.
    #
    #   You can add a combination of VPCs and CloudFront distributions, or you
    #   can add WorkSpaces directories, or you can add NLBs. You can't add
    #   NLBs or WorkSpaces directories together with any other resources.
    #
    #   <note markdown="1"> If you add only Amazon Virtual Private Clouds resources, at least one
    #   VPC must have an Internet Gateway attached to it, to make sure that it
    #   has internet connectivity.
    #
    #    </note>
    #
    # @option params [Array<String>] :resources_to_remove
    #   The resources to remove from a monitor, which you provide as a set of
    #   Amazon Resource Names (ARNs).
    #
    # @option params [String] :status
    #   The status for a monitor. The accepted values for `Status` with the
    #   `UpdateMonitor` API call are the following: `ACTIVE` and `INACTIVE`.
    #   The following values are *not* accepted: `PENDING`, and `ERROR`.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive string of up to 64 ASCII characters that you
    #   specify to make an idempotent API request. You should not reuse the
    #   same client token for other API requests.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Integer] :max_city_networks_to_monitor
    #   The maximum number of city-networks to monitor for your application. A
    #   city-network is the location (city) where clients access your
    #   application resources from and the ASN or network provider, such as an
    #   internet service provider (ISP), that clients access the resources
    #   through. Setting this limit can help control billing costs.
    #
    # @option params [Types::InternetMeasurementsLogDelivery] :internet_measurements_log_delivery
    #   Publish internet measurements for Internet Monitor to another
    #   location, such as an Amazon S3 bucket. The measurements are also
    #   published to Amazon CloudWatch Logs.
    #
    # @option params [Integer] :traffic_percentage_to_monitor
    #   The percentage of the internet-facing traffic for your application
    #   that you want to monitor with this monitor. If you set a city-networks
    #   maximum, that limit overrides the traffic percentage that you set.
    #
    #   To learn more, see [Choosing an application traffic percentage to
    #   monitor ][1] in the Amazon CloudWatch Internet Monitor section of the
    #   *CloudWatch User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/IMTrafficPercentage.html
    #
    # @option params [Types::HealthEventsConfig] :health_events_config
    #   The list of health score thresholds. A threshold percentage for health
    #   scores, along with other configuration information, determines when
    #   Internet Monitor creates a health event when there's an internet
    #   issue that affects your application end users.
    #
    #   For more information, see [ Change health event thresholds][1] in the
    #   Internet Monitor section of the *CloudWatch User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-IM-overview.html#IMUpdateThresholdFromOverview
    #
    # @return [Types::UpdateMonitorOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateMonitorOutput#monitor_arn #monitor_arn} => String
    #   * {Types::UpdateMonitorOutput#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_monitor({
    #     monitor_name: "ResourceName", # required
    #     resources_to_add: ["Arn"],
    #     resources_to_remove: ["Arn"],
    #     status: "PENDING", # accepts PENDING, ACTIVE, INACTIVE, ERROR
    #     client_token: "String",
    #     max_city_networks_to_monitor: 1,
    #     internet_measurements_log_delivery: {
    #       s3_config: {
    #         bucket_name: "S3ConfigBucketNameString",
    #         bucket_prefix: "String",
    #         log_delivery_status: "ENABLED", # accepts ENABLED, DISABLED
    #       },
    #     },
    #     traffic_percentage_to_monitor: 1,
    #     health_events_config: {
    #       availability_score_threshold: 1.0,
    #       performance_score_threshold: 1.0,
    #       availability_local_health_events_config: {
    #         status: "ENABLED", # accepts ENABLED, DISABLED
    #         health_score_threshold: 1.0,
    #         min_traffic_impact: 1.0,
    #       },
    #       performance_local_health_events_config: {
    #         status: "ENABLED", # accepts ENABLED, DISABLED
    #         health_score_threshold: 1.0,
    #         min_traffic_impact: 1.0,
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.monitor_arn #=> String
    #   resp.status #=> String, one of "PENDING", "ACTIVE", "INACTIVE", "ERROR"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/internetmonitor-2021-06-03/UpdateMonitor AWS API Documentation
    #
    # @overload update_monitor(params = {})
    # @param [Hash] params ({})
    def update_monitor(params = {}, options = {})
      req = build_request(:update_monitor, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::InternetMonitor')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-internetmonitor'
      context[:gem_version] = '1.41.0'
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
