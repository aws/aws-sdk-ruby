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
require 'aws-sdk-core/plugins/jsonvalue_converter.rb'
require 'aws-sdk-core/plugins/client_metrics_plugin.rb'
require 'aws-sdk-core/plugins/client_metrics_send_plugin.rb'
require 'aws-sdk-core/plugins/transfer_encoding.rb'
require 'aws-sdk-core/plugins/http_checksum.rb'
require 'aws-sdk-core/plugins/checksum_algorithm.rb'
require 'aws-sdk-core/plugins/request_compression.rb'
require 'aws-sdk-core/plugins/defaults_mode.rb'
require 'aws-sdk-core/plugins/recursion_detection.rb'
require 'aws-sdk-core/plugins/sign.rb'
require 'aws-sdk-core/plugins/protocols/rest_json.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:internetmonitor)

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
    add_plugin(Aws::Plugins::JsonvalueConverter)
    add_plugin(Aws::Plugins::ClientMetricsPlugin)
    add_plugin(Aws::Plugins::ClientMetricsSendPlugin)
    add_plugin(Aws::Plugins::TransferEncoding)
    add_plugin(Aws::Plugins::HttpChecksum)
    add_plugin(Aws::Plugins::ChecksumAlgorithm)
    add_plugin(Aws::Plugins::RequestCompression)
    add_plugin(Aws::Plugins::DefaultsMode)
    add_plugin(Aws::Plugins::RecursionDetection)
    add_plugin(Aws::Plugins::Sign)
    add_plugin(Aws::Plugins::Protocols::RestJson)
    add_plugin(Aws::InternetMonitor::Plugins::Endpoints)

    # @overload initialize(options)
    #   @param [Hash] options
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
    #     * The `:access_key_id`, `:secret_access_key`, and `:session_token` options.
    #     * ENV['AWS_ACCESS_KEY_ID'], ENV['AWS_SECRET_ACCESS_KEY']
    #     * `~/.aws/credentials`
    #     * `~/.aws/config`
    #     * EC2/ECS IMDS instance profile - When used by default, the timeouts
    #       are very aggressive. Construct and pass an instance of
    #       `Aws::InstanceProfileCredentails` or `Aws::ECSCredentials` to
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
    #   @option options [String] :endpoint
    #     The client endpoint is normally constructed from the `:region`
    #     option. You should only configure an `:endpoint` when connecting
    #     to test or custom endpoints. This should be a valid HTTP(S) URI.
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
    #   @option options [Integer] :request_min_compression_size_bytes (10240)
    #     The minimum size in bytes that triggers compression for request
    #     bodies. The value must be non-negative integer value between 0
    #     and 10485780 bytes inclusive.
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
    #
    #   @option options [String] :sdk_ua_app_id
    #     A unique and opaque application ID that is appended to the
    #     User-Agent header as app/<sdk_ua_app_id>. It should have a
    #     maximum length of 50.
    #
    #   @option options [String] :secret_access_key
    #
    #   @option options [String] :session_token
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
    #   @option options [Aws::InternetMonitor::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to `Aws::InternetMonitor::EndpointParameters`
    #
    #   @option options [URI::HTTP,String] :http_proxy A proxy to send
    #     requests through.  Formatted like 'http://proxy.com:123'.
    #
    #   @option options [Float] :http_open_timeout (15) The number of
    #     seconds to wait when opening a HTTP session before raising a
    #     `Timeout::Error`.
    #
    #   @option options [Float] :http_read_timeout (60) The default
    #     number of seconds to wait for response data.  This value can
    #     safely be set per-request on the session.
    #
    #   @option options [Float] :http_idle_timeout (5) The number of
    #     seconds a connection is allowed to sit idle before it is
    #     considered stale.  Stale connections are closed and removed
    #     from the pool before making a request.
    #
    #   @option options [Float] :http_continue_timeout (1) The number of
    #     seconds to wait for a 100-continue response before sending the
    #     request body.  This option has no effect unless the request has
    #     "Expect" header set to "100-continue".  Defaults to `nil` which
    #     disables this behaviour.  This value can safely be set per
    #     request on the session.
    #
    #   @option options [Float] :ssl_timeout (nil) Sets the SSL timeout
    #     in seconds.
    #
    #   @option options [Boolean] :http_wire_trace (false) When `true`,
    #     HTTP debug output will be sent to the `:logger`.
    #
    #   @option options [Boolean] :ssl_verify_peer (true) When `true`,
    #     SSL peer certificates are verified when establishing a
    #     connection.
    #
    #   @option options [String] :ssl_ca_bundle Full path to the SSL
    #     certificate authority bundle file that should be used when
    #     verifying peer certificates.  If you do not pass
    #     `:ssl_ca_bundle` or `:ssl_ca_directory` the the system default
    #     will be used if available.
    #
    #   @option options [String] :ssl_ca_directory Full path of the
    #     directory that contains the unbundled SSL certificate
    #     authority files for verifying peer certificates.  If you do
    #     not pass `:ssl_ca_bundle` or `:ssl_ca_directory` the the
    #     system default will be used if available.
    #
    def initialize(*args)
      super
    end

    # @!group API Operations

    # Creates a monitor in Amazon CloudWatch Internet Monitor. A monitor is
    # built based on information from the application resources that you
    # add: Amazon Virtual Private Clouds (VPCs), Amazon CloudFront
    # distributions, and WorkSpaces directories. Internet Monitor then
    # publishes internet measurements from Amazon Web Services that are
    # specific to the *city-networks*, that is, the locations and ASNs
    # (typically internet service providers or ISPs), where clients access
    # your application. For more information, see [Using Amazon CloudWatch
    # Internet Monitor][1] in the *Amazon CloudWatch User Guide*.
    #
    # When you create a monitor, you set a maximum limit for the number of
    # city-networks where client traffic is monitored. The city-network
    # maximum that you choose is the limit, but you only pay for the number
    # of city-networks that are actually monitored. You can change the
    # maximum at any time by updating your monitor. For more information,
    # see [Choosing a city-network maximum value][2] in the *Amazon
    # CloudWatch User Guide*.
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
    #   Amazon Resource Names (ARNs).
    #
    #   You can add a combination of Amazon Virtual Private Clouds (VPCs) and
    #   Amazon CloudFront distributions, or you can add Amazon WorkSpaces
    #   directories. You can't add all three types of resources.
    #
    #   <note markdown="1"> If you add only VPC resources, at least one VPC must have an Internet
    #   Gateway attached to it, to make sure that it has internet
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
    #   application resources from and the network or ASN, such as an internet
    #   service provider (ISP), that clients access the resources through.
    #   This limit helps control billing costs.
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
    #   that you want to monitor with this monitor.
    #
    # @option params [Types::HealthEventsConfig] :health_events_config
    #   Defines the health event threshold percentages, for performance score
    #   and availability score. Internet Monitor creates a health event when
    #   there's an internet issue that affects your application end users
    #   where a health score percentage is at or below a set threshold. If you
    #   don't set a health event threshold, the default calue is 95%.
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

    # Gets information the Amazon CloudWatch Internet Monitor has created
    # and stored about a health event for a specified monitor. This
    # information includes the impacted locations, and all of the
    # information related to the event by location.
    #
    # The information returned includes the performance, availability, and
    # round-trip time impact, information about the network providers, the
    # event type, and so on.
    #
    # Information rolled up at the global traffic level is also returned,
    # including the impact type and total traffic impact.
    #
    # @option params [required, String] :monitor_name
    #   The name of the monitor.
    #
    # @option params [required, String] :event_id
    #   The internally generated identifier of a health event. Because
    #   `EventID` contains the forward slash (“/”) character, you must
    #   URL-encode the `EventID` field in the request URL.
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
    #   resp.status #=> String, one of "ACTIVE", "RESOLVED"
    #   resp.percent_of_total_traffic_impacted #=> Float
    #   resp.impact_type #=> String, one of "AVAILABILITY", "PERFORMANCE"
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

    # Gets information about a monitor in Amazon CloudWatch Internet Monitor
    # based on a monitor name. The information returned includes the Amazon
    # Resource Name (ARN), create time, modified time, resources included in
    # the monitor, and status information.
    #
    # @option params [required, String] :monitor_name
    #   The name of the monitor.
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
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/internetmonitor-2021-06-03/GetMonitor AWS API Documentation
    #
    # @overload get_monitor(params = {})
    # @param [Hash] params ({})
    def get_monitor(params = {}, options = {})
      req = build_request(:get_monitor, params)
      req.send_request(options)
    end

    # Lists all health events for a monitor in Amazon CloudWatch Internet
    # Monitor. Returns all information for health events including the
    # client location information the network cause and status, event start
    # and end time, percentage of total traffic impacted, and status.
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
    #   resp.health_events[0].status #=> String, one of "ACTIVE", "RESOLVED"
    #   resp.health_events[0].percent_of_total_traffic_impacted #=> Float
    #   resp.health_events[0].impact_type #=> String, one of "AVAILABILITY", "PERFORMANCE"
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

    # Updates a monitor. You can update a monitor to change the maximum
    # number of city-networks (locations and ASNs or internet service
    # providers), to add or remove resources, or to change the status of the
    # monitor. Note that you can't change the name of a monitor.
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
    #   Amazon Resource Names (ARNs).
    #
    #   You can add a combination of Amazon Virtual Private Clouds (VPCs) and
    #   Amazon CloudFront distributions, or you can add Amazon WorkSpaces
    #   directories. You can't add all three types of resources.
    #
    #   <note markdown="1"> If you add only VPC resources, at least one VPC must have an Internet
    #   Gateway attached to it, to make sure that it has internet
    #   connectivity.
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
    #   The maximum number of city-networks to monitor for your resources. A
    #   city-network is the location (city) where clients access your
    #   application resources from and the network or ASN, such as an internet
    #   service provider, that clients access the resources through.
    #
    # @option params [Types::InternetMeasurementsLogDelivery] :internet_measurements_log_delivery
    #   Publish internet measurements for Internet Monitor to another
    #   location, such as an Amazon S3 bucket. The measurements are also
    #   published to Amazon CloudWatch Logs.
    #
    # @option params [Integer] :traffic_percentage_to_monitor
    #   The percentage of the internet-facing traffic for your application
    #   that you want to monitor with this monitor.
    #
    # @option params [Types::HealthEventsConfig] :health_events_config
    #   The list of health event thresholds. A health event threshold
    #   percentage, for performance and availability, determines when Internet
    #   Monitor creates a health event when there's an internet issue that
    #   affects your application end users.
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
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config)
      context[:gem_name] = 'aws-sdk-internetmonitor'
      context[:gem_version] = '1.7.0'
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
