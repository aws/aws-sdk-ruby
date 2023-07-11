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

Aws::Plugins::GlobalConfiguration.add_identifier(:devopsguru)

module Aws::DevOpsGuru
  # An API client for DevOpsGuru.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::DevOpsGuru::Client.new(
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

    @identifier = :devopsguru

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
    add_plugin(Aws::DevOpsGuru::Plugins::Endpoints)

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
    #   @option options [Aws::DevOpsGuru::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to `Aws::DevOpsGuru::EndpointParameters`
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

    # Adds a notification channel to DevOps Guru. A notification channel is
    # used to notify you about important DevOps Guru events, such as when an
    # insight is generated.
    #
    # If you use an Amazon SNS topic in another account, you must attach a
    # policy to it that grants DevOps Guru permission to send it
    # notifications. DevOps Guru adds the required policy on your behalf to
    # send notifications using Amazon SNS in your account. DevOps Guru only
    # supports standard SNS topics. For more information, see [Permissions
    # for Amazon SNS topics][1].
    #
    # If you use an Amazon SNS topic that is encrypted by an Amazon Web
    # Services Key Management Service customer-managed key (CMK), then you
    # must add permissions to the CMK. For more information, see
    # [Permissions for Amazon Web Services KMS–encrypted Amazon SNS
    # topics][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/devops-guru/latest/userguide/sns-required-permissions.html
    # [2]: https://docs.aws.amazon.com/devops-guru/latest/userguide/sns-kms-permissions.html
    #
    # @option params [required, Types::NotificationChannelConfig] :config
    #   A `NotificationChannelConfig` object that specifies what type of
    #   notification channel to add. The one supported notification channel is
    #   Amazon Simple Notification Service (Amazon SNS).
    #
    # @return [Types::AddNotificationChannelResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AddNotificationChannelResponse#id #id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.add_notification_channel({
    #     config: { # required
    #       sns: { # required
    #         topic_arn: "TopicArn",
    #       },
    #       filters: {
    #         severities: ["LOW"], # accepts LOW, MEDIUM, HIGH
    #         message_types: ["NEW_INSIGHT"], # accepts NEW_INSIGHT, CLOSED_INSIGHT, NEW_ASSOCIATION, SEVERITY_UPGRADED, NEW_RECOMMENDATION
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/AddNotificationChannel AWS API Documentation
    #
    # @overload add_notification_channel(params = {})
    # @param [Hash] params ({})
    def add_notification_channel(params = {}, options = {})
      req = build_request(:add_notification_channel, params)
      req.send_request(options)
    end

    # Deletes the insight along with the associated anomalies, events and
    # recommendations.
    #
    # @option params [required, String] :id
    #   The ID of the insight.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_insight({
    #     id: "InsightId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/DeleteInsight AWS API Documentation
    #
    # @overload delete_insight(params = {})
    # @param [Hash] params ({})
    def delete_insight(params = {}, options = {})
      req = build_request(:delete_insight, params)
      req.send_request(options)
    end

    # Returns the number of open reactive insights, the number of open
    # proactive insights, and the number of metrics analyzed in your Amazon
    # Web Services account. Use these numbers to gauge the health of
    # operations in your Amazon Web Services account.
    #
    # @return [Types::DescribeAccountHealthResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeAccountHealthResponse#open_reactive_insights #open_reactive_insights} => Integer
    #   * {Types::DescribeAccountHealthResponse#open_proactive_insights #open_proactive_insights} => Integer
    #   * {Types::DescribeAccountHealthResponse#metrics_analyzed #metrics_analyzed} => Integer
    #   * {Types::DescribeAccountHealthResponse#resource_hours #resource_hours} => Integer
    #   * {Types::DescribeAccountHealthResponse#analyzed_resource_count #analyzed_resource_count} => Integer
    #
    # @example Response structure
    #
    #   resp.open_reactive_insights #=> Integer
    #   resp.open_proactive_insights #=> Integer
    #   resp.metrics_analyzed #=> Integer
    #   resp.resource_hours #=> Integer
    #   resp.analyzed_resource_count #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/DescribeAccountHealth AWS API Documentation
    #
    # @overload describe_account_health(params = {})
    # @param [Hash] params ({})
    def describe_account_health(params = {}, options = {})
      req = build_request(:describe_account_health, params)
      req.send_request(options)
    end

    # For the time range passed in, returns the number of open reactive
    # insight that were created, the number of open proactive insights that
    # were created, and the Mean Time to Recover (MTTR) for all closed
    # reactive insights.
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :from_time
    #   The start of the time range passed in. The start time granularity is
    #   at the day level. The floor of the start time is used. Returned
    #   information occurred after this day.
    #
    # @option params [Time,DateTime,Date,Integer,String] :to_time
    #   The end of the time range passed in. The start time granularity is at
    #   the day level. The floor of the start time is used. Returned
    #   information occurred before this day. If this is not specified, then
    #   the current day is used.
    #
    # @return [Types::DescribeAccountOverviewResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeAccountOverviewResponse#reactive_insights #reactive_insights} => Integer
    #   * {Types::DescribeAccountOverviewResponse#proactive_insights #proactive_insights} => Integer
    #   * {Types::DescribeAccountOverviewResponse#mean_time_to_recover_in_milliseconds #mean_time_to_recover_in_milliseconds} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_account_overview({
    #     from_time: Time.now, # required
    #     to_time: Time.now,
    #   })
    #
    # @example Response structure
    #
    #   resp.reactive_insights #=> Integer
    #   resp.proactive_insights #=> Integer
    #   resp.mean_time_to_recover_in_milliseconds #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/DescribeAccountOverview AWS API Documentation
    #
    # @overload describe_account_overview(params = {})
    # @param [Hash] params ({})
    def describe_account_overview(params = {}, options = {})
      req = build_request(:describe_account_overview, params)
      req.send_request(options)
    end

    # Returns details about an anomaly that you specify using its ID.
    #
    # @option params [required, String] :id
    #   The ID of the anomaly.
    #
    # @option params [String] :account_id
    #   The ID of the member account.
    #
    # @return [Types::DescribeAnomalyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeAnomalyResponse#proactive_anomaly #proactive_anomaly} => Types::ProactiveAnomaly
    #   * {Types::DescribeAnomalyResponse#reactive_anomaly #reactive_anomaly} => Types::ReactiveAnomaly
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_anomaly({
    #     id: "AnomalyId", # required
    #     account_id: "AwsAccountId",
    #   })
    #
    # @example Response structure
    #
    #   resp.proactive_anomaly.id #=> String
    #   resp.proactive_anomaly.severity #=> String, one of "LOW", "MEDIUM", "HIGH"
    #   resp.proactive_anomaly.status #=> String, one of "ONGOING", "CLOSED"
    #   resp.proactive_anomaly.update_time #=> Time
    #   resp.proactive_anomaly.anomaly_time_range.start_time #=> Time
    #   resp.proactive_anomaly.anomaly_time_range.end_time #=> Time
    #   resp.proactive_anomaly.anomaly_reported_time_range.open_time #=> Time
    #   resp.proactive_anomaly.anomaly_reported_time_range.close_time #=> Time
    #   resp.proactive_anomaly.prediction_time_range.start_time #=> Time
    #   resp.proactive_anomaly.prediction_time_range.end_time #=> Time
    #   resp.proactive_anomaly.source_details.cloud_watch_metrics #=> Array
    #   resp.proactive_anomaly.source_details.cloud_watch_metrics[0].metric_name #=> String
    #   resp.proactive_anomaly.source_details.cloud_watch_metrics[0].namespace #=> String
    #   resp.proactive_anomaly.source_details.cloud_watch_metrics[0].dimensions #=> Array
    #   resp.proactive_anomaly.source_details.cloud_watch_metrics[0].dimensions[0].name #=> String
    #   resp.proactive_anomaly.source_details.cloud_watch_metrics[0].dimensions[0].value #=> String
    #   resp.proactive_anomaly.source_details.cloud_watch_metrics[0].stat #=> String, one of "Sum", "Average", "SampleCount", "Minimum", "Maximum", "p99", "p90", "p50"
    #   resp.proactive_anomaly.source_details.cloud_watch_metrics[0].unit #=> String
    #   resp.proactive_anomaly.source_details.cloud_watch_metrics[0].period #=> Integer
    #   resp.proactive_anomaly.source_details.cloud_watch_metrics[0].metric_data_summary.timestamp_metric_value_pair_list #=> Array
    #   resp.proactive_anomaly.source_details.cloud_watch_metrics[0].metric_data_summary.timestamp_metric_value_pair_list[0].timestamp #=> Time
    #   resp.proactive_anomaly.source_details.cloud_watch_metrics[0].metric_data_summary.timestamp_metric_value_pair_list[0].metric_value #=> Float
    #   resp.proactive_anomaly.source_details.cloud_watch_metrics[0].metric_data_summary.status_code #=> String, one of "Complete", "InternalError", "PartialData"
    #   resp.proactive_anomaly.source_details.performance_insights_metrics #=> Array
    #   resp.proactive_anomaly.source_details.performance_insights_metrics[0].metric_display_name #=> String
    #   resp.proactive_anomaly.source_details.performance_insights_metrics[0].unit #=> String
    #   resp.proactive_anomaly.source_details.performance_insights_metrics[0].metric_query.metric #=> String
    #   resp.proactive_anomaly.source_details.performance_insights_metrics[0].metric_query.group_by.group #=> String
    #   resp.proactive_anomaly.source_details.performance_insights_metrics[0].metric_query.group_by.dimensions #=> Array
    #   resp.proactive_anomaly.source_details.performance_insights_metrics[0].metric_query.group_by.dimensions[0] #=> String
    #   resp.proactive_anomaly.source_details.performance_insights_metrics[0].metric_query.group_by.limit #=> Integer
    #   resp.proactive_anomaly.source_details.performance_insights_metrics[0].metric_query.filter #=> Hash
    #   resp.proactive_anomaly.source_details.performance_insights_metrics[0].metric_query.filter["PerformanceInsightsMetricFilterKey"] #=> String
    #   resp.proactive_anomaly.source_details.performance_insights_metrics[0].reference_data #=> Array
    #   resp.proactive_anomaly.source_details.performance_insights_metrics[0].reference_data[0].name #=> String
    #   resp.proactive_anomaly.source_details.performance_insights_metrics[0].reference_data[0].comparison_values.reference_scalar.value #=> Float
    #   resp.proactive_anomaly.source_details.performance_insights_metrics[0].reference_data[0].comparison_values.reference_metric.metric_query.metric #=> String
    #   resp.proactive_anomaly.source_details.performance_insights_metrics[0].reference_data[0].comparison_values.reference_metric.metric_query.group_by.group #=> String
    #   resp.proactive_anomaly.source_details.performance_insights_metrics[0].reference_data[0].comparison_values.reference_metric.metric_query.group_by.dimensions #=> Array
    #   resp.proactive_anomaly.source_details.performance_insights_metrics[0].reference_data[0].comparison_values.reference_metric.metric_query.group_by.dimensions[0] #=> String
    #   resp.proactive_anomaly.source_details.performance_insights_metrics[0].reference_data[0].comparison_values.reference_metric.metric_query.group_by.limit #=> Integer
    #   resp.proactive_anomaly.source_details.performance_insights_metrics[0].reference_data[0].comparison_values.reference_metric.metric_query.filter #=> Hash
    #   resp.proactive_anomaly.source_details.performance_insights_metrics[0].reference_data[0].comparison_values.reference_metric.metric_query.filter["PerformanceInsightsMetricFilterKey"] #=> String
    #   resp.proactive_anomaly.source_details.performance_insights_metrics[0].stats_at_anomaly #=> Array
    #   resp.proactive_anomaly.source_details.performance_insights_metrics[0].stats_at_anomaly[0].type #=> String
    #   resp.proactive_anomaly.source_details.performance_insights_metrics[0].stats_at_anomaly[0].value #=> Float
    #   resp.proactive_anomaly.source_details.performance_insights_metrics[0].stats_at_baseline #=> Array
    #   resp.proactive_anomaly.source_details.performance_insights_metrics[0].stats_at_baseline[0].type #=> String
    #   resp.proactive_anomaly.source_details.performance_insights_metrics[0].stats_at_baseline[0].value #=> Float
    #   resp.proactive_anomaly.associated_insight_id #=> String
    #   resp.proactive_anomaly.resource_collection.cloud_formation.stack_names #=> Array
    #   resp.proactive_anomaly.resource_collection.cloud_formation.stack_names[0] #=> String
    #   resp.proactive_anomaly.resource_collection.tags #=> Array
    #   resp.proactive_anomaly.resource_collection.tags[0].app_boundary_key #=> String
    #   resp.proactive_anomaly.resource_collection.tags[0].tag_values #=> Array
    #   resp.proactive_anomaly.resource_collection.tags[0].tag_values[0] #=> String
    #   resp.proactive_anomaly.limit #=> Float
    #   resp.proactive_anomaly.source_metadata.source #=> String
    #   resp.proactive_anomaly.source_metadata.source_resource_name #=> String
    #   resp.proactive_anomaly.source_metadata.source_resource_type #=> String
    #   resp.proactive_anomaly.anomaly_resources #=> Array
    #   resp.proactive_anomaly.anomaly_resources[0].name #=> String
    #   resp.proactive_anomaly.anomaly_resources[0].type #=> String
    #   resp.proactive_anomaly.description #=> String
    #   resp.reactive_anomaly.id #=> String
    #   resp.reactive_anomaly.severity #=> String, one of "LOW", "MEDIUM", "HIGH"
    #   resp.reactive_anomaly.status #=> String, one of "ONGOING", "CLOSED"
    #   resp.reactive_anomaly.anomaly_time_range.start_time #=> Time
    #   resp.reactive_anomaly.anomaly_time_range.end_time #=> Time
    #   resp.reactive_anomaly.anomaly_reported_time_range.open_time #=> Time
    #   resp.reactive_anomaly.anomaly_reported_time_range.close_time #=> Time
    #   resp.reactive_anomaly.source_details.cloud_watch_metrics #=> Array
    #   resp.reactive_anomaly.source_details.cloud_watch_metrics[0].metric_name #=> String
    #   resp.reactive_anomaly.source_details.cloud_watch_metrics[0].namespace #=> String
    #   resp.reactive_anomaly.source_details.cloud_watch_metrics[0].dimensions #=> Array
    #   resp.reactive_anomaly.source_details.cloud_watch_metrics[0].dimensions[0].name #=> String
    #   resp.reactive_anomaly.source_details.cloud_watch_metrics[0].dimensions[0].value #=> String
    #   resp.reactive_anomaly.source_details.cloud_watch_metrics[0].stat #=> String, one of "Sum", "Average", "SampleCount", "Minimum", "Maximum", "p99", "p90", "p50"
    #   resp.reactive_anomaly.source_details.cloud_watch_metrics[0].unit #=> String
    #   resp.reactive_anomaly.source_details.cloud_watch_metrics[0].period #=> Integer
    #   resp.reactive_anomaly.source_details.cloud_watch_metrics[0].metric_data_summary.timestamp_metric_value_pair_list #=> Array
    #   resp.reactive_anomaly.source_details.cloud_watch_metrics[0].metric_data_summary.timestamp_metric_value_pair_list[0].timestamp #=> Time
    #   resp.reactive_anomaly.source_details.cloud_watch_metrics[0].metric_data_summary.timestamp_metric_value_pair_list[0].metric_value #=> Float
    #   resp.reactive_anomaly.source_details.cloud_watch_metrics[0].metric_data_summary.status_code #=> String, one of "Complete", "InternalError", "PartialData"
    #   resp.reactive_anomaly.source_details.performance_insights_metrics #=> Array
    #   resp.reactive_anomaly.source_details.performance_insights_metrics[0].metric_display_name #=> String
    #   resp.reactive_anomaly.source_details.performance_insights_metrics[0].unit #=> String
    #   resp.reactive_anomaly.source_details.performance_insights_metrics[0].metric_query.metric #=> String
    #   resp.reactive_anomaly.source_details.performance_insights_metrics[0].metric_query.group_by.group #=> String
    #   resp.reactive_anomaly.source_details.performance_insights_metrics[0].metric_query.group_by.dimensions #=> Array
    #   resp.reactive_anomaly.source_details.performance_insights_metrics[0].metric_query.group_by.dimensions[0] #=> String
    #   resp.reactive_anomaly.source_details.performance_insights_metrics[0].metric_query.group_by.limit #=> Integer
    #   resp.reactive_anomaly.source_details.performance_insights_metrics[0].metric_query.filter #=> Hash
    #   resp.reactive_anomaly.source_details.performance_insights_metrics[0].metric_query.filter["PerformanceInsightsMetricFilterKey"] #=> String
    #   resp.reactive_anomaly.source_details.performance_insights_metrics[0].reference_data #=> Array
    #   resp.reactive_anomaly.source_details.performance_insights_metrics[0].reference_data[0].name #=> String
    #   resp.reactive_anomaly.source_details.performance_insights_metrics[0].reference_data[0].comparison_values.reference_scalar.value #=> Float
    #   resp.reactive_anomaly.source_details.performance_insights_metrics[0].reference_data[0].comparison_values.reference_metric.metric_query.metric #=> String
    #   resp.reactive_anomaly.source_details.performance_insights_metrics[0].reference_data[0].comparison_values.reference_metric.metric_query.group_by.group #=> String
    #   resp.reactive_anomaly.source_details.performance_insights_metrics[0].reference_data[0].comparison_values.reference_metric.metric_query.group_by.dimensions #=> Array
    #   resp.reactive_anomaly.source_details.performance_insights_metrics[0].reference_data[0].comparison_values.reference_metric.metric_query.group_by.dimensions[0] #=> String
    #   resp.reactive_anomaly.source_details.performance_insights_metrics[0].reference_data[0].comparison_values.reference_metric.metric_query.group_by.limit #=> Integer
    #   resp.reactive_anomaly.source_details.performance_insights_metrics[0].reference_data[0].comparison_values.reference_metric.metric_query.filter #=> Hash
    #   resp.reactive_anomaly.source_details.performance_insights_metrics[0].reference_data[0].comparison_values.reference_metric.metric_query.filter["PerformanceInsightsMetricFilterKey"] #=> String
    #   resp.reactive_anomaly.source_details.performance_insights_metrics[0].stats_at_anomaly #=> Array
    #   resp.reactive_anomaly.source_details.performance_insights_metrics[0].stats_at_anomaly[0].type #=> String
    #   resp.reactive_anomaly.source_details.performance_insights_metrics[0].stats_at_anomaly[0].value #=> Float
    #   resp.reactive_anomaly.source_details.performance_insights_metrics[0].stats_at_baseline #=> Array
    #   resp.reactive_anomaly.source_details.performance_insights_metrics[0].stats_at_baseline[0].type #=> String
    #   resp.reactive_anomaly.source_details.performance_insights_metrics[0].stats_at_baseline[0].value #=> Float
    #   resp.reactive_anomaly.associated_insight_id #=> String
    #   resp.reactive_anomaly.resource_collection.cloud_formation.stack_names #=> Array
    #   resp.reactive_anomaly.resource_collection.cloud_formation.stack_names[0] #=> String
    #   resp.reactive_anomaly.resource_collection.tags #=> Array
    #   resp.reactive_anomaly.resource_collection.tags[0].app_boundary_key #=> String
    #   resp.reactive_anomaly.resource_collection.tags[0].tag_values #=> Array
    #   resp.reactive_anomaly.resource_collection.tags[0].tag_values[0] #=> String
    #   resp.reactive_anomaly.type #=> String, one of "CAUSAL", "CONTEXTUAL"
    #   resp.reactive_anomaly.name #=> String
    #   resp.reactive_anomaly.description #=> String
    #   resp.reactive_anomaly.causal_anomaly_id #=> String
    #   resp.reactive_anomaly.anomaly_resources #=> Array
    #   resp.reactive_anomaly.anomaly_resources[0].name #=> String
    #   resp.reactive_anomaly.anomaly_resources[0].type #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/DescribeAnomaly AWS API Documentation
    #
    # @overload describe_anomaly(params = {})
    # @param [Hash] params ({})
    def describe_anomaly(params = {}, options = {})
      req = build_request(:describe_anomaly, params)
      req.send_request(options)
    end

    # Returns the integration status of services that are integrated with
    # DevOps Guru as Consumer via EventBridge. The one service that can be
    # integrated with DevOps Guru is Amazon CodeGuru Profiler, which can
    # produce proactive recommendations which can be stored and viewed in
    # DevOps Guru.
    #
    # @return [Types::DescribeEventSourcesConfigResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeEventSourcesConfigResponse#event_sources #event_sources} => Types::EventSourcesConfig
    #
    # @example Response structure
    #
    #   resp.event_sources.amazon_code_guru_profiler.status #=> String, one of "ENABLED", "DISABLED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/DescribeEventSourcesConfig AWS API Documentation
    #
    # @overload describe_event_sources_config(params = {})
    # @param [Hash] params ({})
    def describe_event_sources_config(params = {}, options = {})
      req = build_request(:describe_event_sources_config, params)
      req.send_request(options)
    end

    # Returns the most recent feedback submitted in the current Amazon Web
    # Services account and Region.
    #
    # @option params [String] :insight_id
    #   The ID of the insight for which the feedback was provided.
    #
    # @return [Types::DescribeFeedbackResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeFeedbackResponse#insight_feedback #insight_feedback} => Types::InsightFeedback
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_feedback({
    #     insight_id: "InsightId",
    #   })
    #
    # @example Response structure
    #
    #   resp.insight_feedback.id #=> String
    #   resp.insight_feedback.feedback #=> String, one of "VALID_COLLECTION", "RECOMMENDATION_USEFUL", "ALERT_TOO_SENSITIVE", "DATA_NOISY_ANOMALY", "DATA_INCORRECT"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/DescribeFeedback AWS API Documentation
    #
    # @overload describe_feedback(params = {})
    # @param [Hash] params ({})
    def describe_feedback(params = {}, options = {})
      req = build_request(:describe_feedback, params)
      req.send_request(options)
    end

    # Returns details about an insight that you specify using its ID.
    #
    # @option params [required, String] :id
    #   The ID of the insight.
    #
    # @option params [String] :account_id
    #   The ID of the member account in the organization.
    #
    # @return [Types::DescribeInsightResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeInsightResponse#proactive_insight #proactive_insight} => Types::ProactiveInsight
    #   * {Types::DescribeInsightResponse#reactive_insight #reactive_insight} => Types::ReactiveInsight
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_insight({
    #     id: "InsightId", # required
    #     account_id: "AwsAccountId",
    #   })
    #
    # @example Response structure
    #
    #   resp.proactive_insight.id #=> String
    #   resp.proactive_insight.name #=> String
    #   resp.proactive_insight.severity #=> String, one of "LOW", "MEDIUM", "HIGH"
    #   resp.proactive_insight.status #=> String, one of "ONGOING", "CLOSED"
    #   resp.proactive_insight.insight_time_range.start_time #=> Time
    #   resp.proactive_insight.insight_time_range.end_time #=> Time
    #   resp.proactive_insight.prediction_time_range.start_time #=> Time
    #   resp.proactive_insight.prediction_time_range.end_time #=> Time
    #   resp.proactive_insight.resource_collection.cloud_formation.stack_names #=> Array
    #   resp.proactive_insight.resource_collection.cloud_formation.stack_names[0] #=> String
    #   resp.proactive_insight.resource_collection.tags #=> Array
    #   resp.proactive_insight.resource_collection.tags[0].app_boundary_key #=> String
    #   resp.proactive_insight.resource_collection.tags[0].tag_values #=> Array
    #   resp.proactive_insight.resource_collection.tags[0].tag_values[0] #=> String
    #   resp.proactive_insight.ssm_ops_item_id #=> String
    #   resp.proactive_insight.description #=> String
    #   resp.reactive_insight.id #=> String
    #   resp.reactive_insight.name #=> String
    #   resp.reactive_insight.severity #=> String, one of "LOW", "MEDIUM", "HIGH"
    #   resp.reactive_insight.status #=> String, one of "ONGOING", "CLOSED"
    #   resp.reactive_insight.insight_time_range.start_time #=> Time
    #   resp.reactive_insight.insight_time_range.end_time #=> Time
    #   resp.reactive_insight.resource_collection.cloud_formation.stack_names #=> Array
    #   resp.reactive_insight.resource_collection.cloud_formation.stack_names[0] #=> String
    #   resp.reactive_insight.resource_collection.tags #=> Array
    #   resp.reactive_insight.resource_collection.tags[0].app_boundary_key #=> String
    #   resp.reactive_insight.resource_collection.tags[0].tag_values #=> Array
    #   resp.reactive_insight.resource_collection.tags[0].tag_values[0] #=> String
    #   resp.reactive_insight.ssm_ops_item_id #=> String
    #   resp.reactive_insight.description #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/DescribeInsight AWS API Documentation
    #
    # @overload describe_insight(params = {})
    # @param [Hash] params ({})
    def describe_insight(params = {}, options = {})
      req = build_request(:describe_insight, params)
      req.send_request(options)
    end

    # Returns active insights, predictive insights, and resource hours
    # analyzed in last hour.
    #
    # @option params [Array<String>] :account_ids
    #   The ID of the Amazon Web Services account.
    #
    # @option params [Array<String>] :organizational_unit_ids
    #   The ID of the organizational unit.
    #
    # @return [Types::DescribeOrganizationHealthResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeOrganizationHealthResponse#open_reactive_insights #open_reactive_insights} => Integer
    #   * {Types::DescribeOrganizationHealthResponse#open_proactive_insights #open_proactive_insights} => Integer
    #   * {Types::DescribeOrganizationHealthResponse#metrics_analyzed #metrics_analyzed} => Integer
    #   * {Types::DescribeOrganizationHealthResponse#resource_hours #resource_hours} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_organization_health({
    #     account_ids: ["AwsAccountId"],
    #     organizational_unit_ids: ["OrganizationalUnitId"],
    #   })
    #
    # @example Response structure
    #
    #   resp.open_reactive_insights #=> Integer
    #   resp.open_proactive_insights #=> Integer
    #   resp.metrics_analyzed #=> Integer
    #   resp.resource_hours #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/DescribeOrganizationHealth AWS API Documentation
    #
    # @overload describe_organization_health(params = {})
    # @param [Hash] params ({})
    def describe_organization_health(params = {}, options = {})
      req = build_request(:describe_organization_health, params)
      req.send_request(options)
    end

    # Returns an overview of your organization's history based on the
    # specified time range. The overview includes the total reactive and
    # proactive insights.
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :from_time
    #   The start of the time range passed in. The start time granularity is
    #   at the day level. The floor of the start time is used. Returned
    #   information occurred after this day.
    #
    # @option params [Time,DateTime,Date,Integer,String] :to_time
    #   The end of the time range passed in. The start time granularity is at
    #   the day level. The floor of the start time is used. Returned
    #   information occurred before this day. If this is not specified, then
    #   the current day is used.
    #
    # @option params [Array<String>] :account_ids
    #   The ID of the Amazon Web Services account.
    #
    # @option params [Array<String>] :organizational_unit_ids
    #   The ID of the organizational unit.
    #
    # @return [Types::DescribeOrganizationOverviewResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeOrganizationOverviewResponse#reactive_insights #reactive_insights} => Integer
    #   * {Types::DescribeOrganizationOverviewResponse#proactive_insights #proactive_insights} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_organization_overview({
    #     from_time: Time.now, # required
    #     to_time: Time.now,
    #     account_ids: ["AwsAccountId"],
    #     organizational_unit_ids: ["OrganizationalUnitId"],
    #   })
    #
    # @example Response structure
    #
    #   resp.reactive_insights #=> Integer
    #   resp.proactive_insights #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/DescribeOrganizationOverview AWS API Documentation
    #
    # @overload describe_organization_overview(params = {})
    # @param [Hash] params ({})
    def describe_organization_overview(params = {}, options = {})
      req = build_request(:describe_organization_overview, params)
      req.send_request(options)
    end

    # Provides an overview of your system's health. If additional member
    # accounts are part of your organization, you can filter those accounts
    # using the `AccountIds` field.
    #
    # @option params [required, String] :organization_resource_collection_type
    #   An Amazon Web Services resource collection type. This type specifies
    #   how analyzed Amazon Web Services resources are defined. The two types
    #   of Amazon Web Services resource collections supported are Amazon Web
    #   Services CloudFormation stacks and Amazon Web Services resources that
    #   contain the same Amazon Web Services tag. DevOps Guru can be
    #   configured to analyze the Amazon Web Services resources that are
    #   defined in the stacks or that are tagged using the same tag *key*. You
    #   can specify up to 500 Amazon Web Services CloudFormation stacks.
    #
    # @option params [Array<String>] :account_ids
    #   The ID of the Amazon Web Services account.
    #
    # @option params [Array<String>] :organizational_unit_ids
    #   The ID of the organizational unit.
    #
    # @option params [String] :next_token
    #   The pagination token to use to retrieve the next page of results for
    #   this operation. If this value is null, it retrieves the first page.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return with a single call. To
    #   retrieve the remaining results, make another call with the returned
    #   `nextToken` value.
    #
    # @return [Types::DescribeOrganizationResourceCollectionHealthResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeOrganizationResourceCollectionHealthResponse#cloud_formation #cloud_formation} => Array&lt;Types::CloudFormationHealth&gt;
    #   * {Types::DescribeOrganizationResourceCollectionHealthResponse#service #service} => Array&lt;Types::ServiceHealth&gt;
    #   * {Types::DescribeOrganizationResourceCollectionHealthResponse#account #account} => Array&lt;Types::AccountHealth&gt;
    #   * {Types::DescribeOrganizationResourceCollectionHealthResponse#next_token #next_token} => String
    #   * {Types::DescribeOrganizationResourceCollectionHealthResponse#tags #tags} => Array&lt;Types::TagHealth&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_organization_resource_collection_health({
    #     organization_resource_collection_type: "AWS_CLOUD_FORMATION", # required, accepts AWS_CLOUD_FORMATION, AWS_SERVICE, AWS_ACCOUNT, AWS_TAGS
    #     account_ids: ["AwsAccountId"],
    #     organizational_unit_ids: ["OrganizationalUnitId"],
    #     next_token: "UuidNextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.cloud_formation #=> Array
    #   resp.cloud_formation[0].stack_name #=> String
    #   resp.cloud_formation[0].insight.open_proactive_insights #=> Integer
    #   resp.cloud_formation[0].insight.open_reactive_insights #=> Integer
    #   resp.cloud_formation[0].insight.mean_time_to_recover_in_milliseconds #=> Integer
    #   resp.cloud_formation[0].analyzed_resource_count #=> Integer
    #   resp.service #=> Array
    #   resp.service[0].service_name #=> String, one of "API_GATEWAY", "APPLICATION_ELB", "AUTO_SCALING_GROUP", "CLOUD_FRONT", "DYNAMO_DB", "EC2", "ECS", "EKS", "ELASTIC_BEANSTALK", "ELASTI_CACHE", "ELB", "ES", "KINESIS", "LAMBDA", "NAT_GATEWAY", "NETWORK_ELB", "RDS", "REDSHIFT", "ROUTE_53", "S3", "SAGE_MAKER", "SNS", "SQS", "STEP_FUNCTIONS", "SWF"
    #   resp.service[0].insight.open_proactive_insights #=> Integer
    #   resp.service[0].insight.open_reactive_insights #=> Integer
    #   resp.service[0].analyzed_resource_count #=> Integer
    #   resp.account #=> Array
    #   resp.account[0].account_id #=> String
    #   resp.account[0].insight.open_proactive_insights #=> Integer
    #   resp.account[0].insight.open_reactive_insights #=> Integer
    #   resp.next_token #=> String
    #   resp.tags #=> Array
    #   resp.tags[0].app_boundary_key #=> String
    #   resp.tags[0].tag_value #=> String
    #   resp.tags[0].insight.open_proactive_insights #=> Integer
    #   resp.tags[0].insight.open_reactive_insights #=> Integer
    #   resp.tags[0].insight.mean_time_to_recover_in_milliseconds #=> Integer
    #   resp.tags[0].analyzed_resource_count #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/DescribeOrganizationResourceCollectionHealth AWS API Documentation
    #
    # @overload describe_organization_resource_collection_health(params = {})
    # @param [Hash] params ({})
    def describe_organization_resource_collection_health(params = {}, options = {})
      req = build_request(:describe_organization_resource_collection_health, params)
      req.send_request(options)
    end

    # Returns the number of open proactive insights, open reactive insights,
    # and the Mean Time to Recover (MTTR) for all closed insights in
    # resource collections in your account. You specify the type of Amazon
    # Web Services resources collection. The two types of Amazon Web
    # Services resource collections supported are Amazon Web Services
    # CloudFormation stacks and Amazon Web Services resources that contain
    # the same Amazon Web Services tag. DevOps Guru can be configured to
    # analyze the Amazon Web Services resources that are defined in the
    # stacks or that are tagged using the same tag *key*. You can specify up
    # to 500 Amazon Web Services CloudFormation stacks.
    #
    # @option params [required, String] :resource_collection_type
    #   An Amazon Web Services resource collection type. This type specifies
    #   how analyzed Amazon Web Services resources are defined. The two types
    #   of Amazon Web Services resource collections supported are Amazon Web
    #   Services CloudFormation stacks and Amazon Web Services resources that
    #   contain the same Amazon Web Services tag. DevOps Guru can be
    #   configured to analyze the Amazon Web Services resources that are
    #   defined in the stacks or that are tagged using the same tag *key*. You
    #   can specify up to 500 Amazon Web Services CloudFormation stacks.
    #
    # @option params [String] :next_token
    #   The pagination token to use to retrieve the next page of results for
    #   this operation. If this value is null, it retrieves the first page.
    #
    # @return [Types::DescribeResourceCollectionHealthResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeResourceCollectionHealthResponse#cloud_formation #cloud_formation} => Array&lt;Types::CloudFormationHealth&gt;
    #   * {Types::DescribeResourceCollectionHealthResponse#service #service} => Array&lt;Types::ServiceHealth&gt;
    #   * {Types::DescribeResourceCollectionHealthResponse#next_token #next_token} => String
    #   * {Types::DescribeResourceCollectionHealthResponse#tags #tags} => Array&lt;Types::TagHealth&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_resource_collection_health({
    #     resource_collection_type: "AWS_CLOUD_FORMATION", # required, accepts AWS_CLOUD_FORMATION, AWS_SERVICE, AWS_TAGS
    #     next_token: "UuidNextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.cloud_formation #=> Array
    #   resp.cloud_formation[0].stack_name #=> String
    #   resp.cloud_formation[0].insight.open_proactive_insights #=> Integer
    #   resp.cloud_formation[0].insight.open_reactive_insights #=> Integer
    #   resp.cloud_formation[0].insight.mean_time_to_recover_in_milliseconds #=> Integer
    #   resp.cloud_formation[0].analyzed_resource_count #=> Integer
    #   resp.service #=> Array
    #   resp.service[0].service_name #=> String, one of "API_GATEWAY", "APPLICATION_ELB", "AUTO_SCALING_GROUP", "CLOUD_FRONT", "DYNAMO_DB", "EC2", "ECS", "EKS", "ELASTIC_BEANSTALK", "ELASTI_CACHE", "ELB", "ES", "KINESIS", "LAMBDA", "NAT_GATEWAY", "NETWORK_ELB", "RDS", "REDSHIFT", "ROUTE_53", "S3", "SAGE_MAKER", "SNS", "SQS", "STEP_FUNCTIONS", "SWF"
    #   resp.service[0].insight.open_proactive_insights #=> Integer
    #   resp.service[0].insight.open_reactive_insights #=> Integer
    #   resp.service[0].analyzed_resource_count #=> Integer
    #   resp.next_token #=> String
    #   resp.tags #=> Array
    #   resp.tags[0].app_boundary_key #=> String
    #   resp.tags[0].tag_value #=> String
    #   resp.tags[0].insight.open_proactive_insights #=> Integer
    #   resp.tags[0].insight.open_reactive_insights #=> Integer
    #   resp.tags[0].insight.mean_time_to_recover_in_milliseconds #=> Integer
    #   resp.tags[0].analyzed_resource_count #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/DescribeResourceCollectionHealth AWS API Documentation
    #
    # @overload describe_resource_collection_health(params = {})
    # @param [Hash] params ({})
    def describe_resource_collection_health(params = {}, options = {})
      req = build_request(:describe_resource_collection_health, params)
      req.send_request(options)
    end

    # Returns the integration status of services that are integrated with
    # DevOps Guru. The one service that can be integrated with DevOps Guru
    # is Amazon Web Services Systems Manager, which can be used to create an
    # OpsItem for each generated insight.
    #
    # @return [Types::DescribeServiceIntegrationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeServiceIntegrationResponse#service_integration #service_integration} => Types::ServiceIntegrationConfig
    #
    # @example Response structure
    #
    #   resp.service_integration.ops_center.opt_in_status #=> String, one of "ENABLED", "DISABLED"
    #   resp.service_integration.logs_anomaly_detection.opt_in_status #=> String, one of "ENABLED", "DISABLED"
    #   resp.service_integration.kms_server_side_encryption.kms_key_id #=> String
    #   resp.service_integration.kms_server_side_encryption.opt_in_status #=> String, one of "ENABLED", "DISABLED"
    #   resp.service_integration.kms_server_side_encryption.type #=> String, one of "CUSTOMER_MANAGED_KEY", "AWS_OWNED_KMS_KEY"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/DescribeServiceIntegration AWS API Documentation
    #
    # @overload describe_service_integration(params = {})
    # @param [Hash] params ({})
    def describe_service_integration(params = {}, options = {})
      req = build_request(:describe_service_integration, params)
      req.send_request(options)
    end

    # Returns an estimate of the monthly cost for DevOps Guru to analyze
    # your Amazon Web Services resources. For more information, see
    # [Estimate your Amazon DevOps Guru costs][1] and [Amazon DevOps Guru
    # pricing][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/devops-guru/latest/userguide/cost-estimate.html
    # [2]: http://aws.amazon.com/devops-guru/pricing/
    #
    # @option params [String] :next_token
    #   The pagination token to use to retrieve the next page of results for
    #   this operation. If this value is null, it retrieves the first page.
    #
    # @return [Types::GetCostEstimationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetCostEstimationResponse#resource_collection #resource_collection} => Types::CostEstimationResourceCollectionFilter
    #   * {Types::GetCostEstimationResponse#status #status} => String
    #   * {Types::GetCostEstimationResponse#costs #costs} => Array&lt;Types::ServiceResourceCost&gt;
    #   * {Types::GetCostEstimationResponse#time_range #time_range} => Types::CostEstimationTimeRange
    #   * {Types::GetCostEstimationResponse#total_cost #total_cost} => Float
    #   * {Types::GetCostEstimationResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_cost_estimation({
    #     next_token: "UuidNextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.resource_collection.cloud_formation.stack_names #=> Array
    #   resp.resource_collection.cloud_formation.stack_names[0] #=> String
    #   resp.resource_collection.tags #=> Array
    #   resp.resource_collection.tags[0].app_boundary_key #=> String
    #   resp.resource_collection.tags[0].tag_values #=> Array
    #   resp.resource_collection.tags[0].tag_values[0] #=> String
    #   resp.status #=> String, one of "ONGOING", "COMPLETED"
    #   resp.costs #=> Array
    #   resp.costs[0].type #=> String
    #   resp.costs[0].state #=> String, one of "ACTIVE", "INACTIVE"
    #   resp.costs[0].count #=> Integer
    #   resp.costs[0].unit_cost #=> Float
    #   resp.costs[0].cost #=> Float
    #   resp.time_range.start_time #=> Time
    #   resp.time_range.end_time #=> Time
    #   resp.total_cost #=> Float
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/GetCostEstimation AWS API Documentation
    #
    # @overload get_cost_estimation(params = {})
    # @param [Hash] params ({})
    def get_cost_estimation(params = {}, options = {})
      req = build_request(:get_cost_estimation, params)
      req.send_request(options)
    end

    # Returns lists Amazon Web Services resources that are of the specified
    # resource collection type. The two types of Amazon Web Services
    # resource collections supported are Amazon Web Services CloudFormation
    # stacks and Amazon Web Services resources that contain the same Amazon
    # Web Services tag. DevOps Guru can be configured to analyze the Amazon
    # Web Services resources that are defined in the stacks or that are
    # tagged using the same tag *key*. You can specify up to 500 Amazon Web
    # Services CloudFormation stacks.
    #
    # @option params [required, String] :resource_collection_type
    #   The type of Amazon Web Services resource collections to return. The
    #   one valid value is `CLOUD_FORMATION` for Amazon Web Services
    #   CloudFormation stacks.
    #
    # @option params [String] :next_token
    #   The pagination token to use to retrieve the next page of results for
    #   this operation. If this value is null, it retrieves the first page.
    #
    # @return [Types::GetResourceCollectionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetResourceCollectionResponse#resource_collection #resource_collection} => Types::ResourceCollectionFilter
    #   * {Types::GetResourceCollectionResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_resource_collection({
    #     resource_collection_type: "AWS_CLOUD_FORMATION", # required, accepts AWS_CLOUD_FORMATION, AWS_SERVICE, AWS_TAGS
    #     next_token: "UuidNextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.resource_collection.cloud_formation.stack_names #=> Array
    #   resp.resource_collection.cloud_formation.stack_names[0] #=> String
    #   resp.resource_collection.tags #=> Array
    #   resp.resource_collection.tags[0].app_boundary_key #=> String
    #   resp.resource_collection.tags[0].tag_values #=> Array
    #   resp.resource_collection.tags[0].tag_values[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/GetResourceCollection AWS API Documentation
    #
    # @overload get_resource_collection(params = {})
    # @param [Hash] params ({})
    def get_resource_collection(params = {}, options = {})
      req = build_request(:get_resource_collection, params)
      req.send_request(options)
    end

    # Returns a list of the anomalies that belong to an insight that you
    # specify using its ID.
    #
    # @option params [required, String] :insight_id
    #   The ID of the insight. The returned anomalies belong to this insight.
    #
    # @option params [Types::StartTimeRange] :start_time_range
    #   A time range used to specify when the requested anomalies started. All
    #   returned anomalies started during this time range.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return with a single call. To
    #   retrieve the remaining results, make another call with the returned
    #   `nextToken` value.
    #
    # @option params [String] :next_token
    #   The pagination token to use to retrieve the next page of results for
    #   this operation. If this value is null, it retrieves the first page.
    #
    # @option params [String] :account_id
    #   The ID of the Amazon Web Services account.
    #
    # @option params [Types::ListAnomaliesForInsightFilters] :filters
    #   Specifies one or more service names that are used to list anomalies.
    #
    # @return [Types::ListAnomaliesForInsightResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAnomaliesForInsightResponse#proactive_anomalies #proactive_anomalies} => Array&lt;Types::ProactiveAnomalySummary&gt;
    #   * {Types::ListAnomaliesForInsightResponse#reactive_anomalies #reactive_anomalies} => Array&lt;Types::ReactiveAnomalySummary&gt;
    #   * {Types::ListAnomaliesForInsightResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_anomalies_for_insight({
    #     insight_id: "InsightId", # required
    #     start_time_range: {
    #       from_time: Time.now,
    #       to_time: Time.now,
    #     },
    #     max_results: 1,
    #     next_token: "UuidNextToken",
    #     account_id: "AwsAccountId",
    #     filters: {
    #       service_collection: {
    #         service_names: ["API_GATEWAY"], # accepts API_GATEWAY, APPLICATION_ELB, AUTO_SCALING_GROUP, CLOUD_FRONT, DYNAMO_DB, EC2, ECS, EKS, ELASTIC_BEANSTALK, ELASTI_CACHE, ELB, ES, KINESIS, LAMBDA, NAT_GATEWAY, NETWORK_ELB, RDS, REDSHIFT, ROUTE_53, S3, SAGE_MAKER, SNS, SQS, STEP_FUNCTIONS, SWF
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.proactive_anomalies #=> Array
    #   resp.proactive_anomalies[0].id #=> String
    #   resp.proactive_anomalies[0].severity #=> String, one of "LOW", "MEDIUM", "HIGH"
    #   resp.proactive_anomalies[0].status #=> String, one of "ONGOING", "CLOSED"
    #   resp.proactive_anomalies[0].update_time #=> Time
    #   resp.proactive_anomalies[0].anomaly_time_range.start_time #=> Time
    #   resp.proactive_anomalies[0].anomaly_time_range.end_time #=> Time
    #   resp.proactive_anomalies[0].anomaly_reported_time_range.open_time #=> Time
    #   resp.proactive_anomalies[0].anomaly_reported_time_range.close_time #=> Time
    #   resp.proactive_anomalies[0].prediction_time_range.start_time #=> Time
    #   resp.proactive_anomalies[0].prediction_time_range.end_time #=> Time
    #   resp.proactive_anomalies[0].source_details.cloud_watch_metrics #=> Array
    #   resp.proactive_anomalies[0].source_details.cloud_watch_metrics[0].metric_name #=> String
    #   resp.proactive_anomalies[0].source_details.cloud_watch_metrics[0].namespace #=> String
    #   resp.proactive_anomalies[0].source_details.cloud_watch_metrics[0].dimensions #=> Array
    #   resp.proactive_anomalies[0].source_details.cloud_watch_metrics[0].dimensions[0].name #=> String
    #   resp.proactive_anomalies[0].source_details.cloud_watch_metrics[0].dimensions[0].value #=> String
    #   resp.proactive_anomalies[0].source_details.cloud_watch_metrics[0].stat #=> String, one of "Sum", "Average", "SampleCount", "Minimum", "Maximum", "p99", "p90", "p50"
    #   resp.proactive_anomalies[0].source_details.cloud_watch_metrics[0].unit #=> String
    #   resp.proactive_anomalies[0].source_details.cloud_watch_metrics[0].period #=> Integer
    #   resp.proactive_anomalies[0].source_details.cloud_watch_metrics[0].metric_data_summary.timestamp_metric_value_pair_list #=> Array
    #   resp.proactive_anomalies[0].source_details.cloud_watch_metrics[0].metric_data_summary.timestamp_metric_value_pair_list[0].timestamp #=> Time
    #   resp.proactive_anomalies[0].source_details.cloud_watch_metrics[0].metric_data_summary.timestamp_metric_value_pair_list[0].metric_value #=> Float
    #   resp.proactive_anomalies[0].source_details.cloud_watch_metrics[0].metric_data_summary.status_code #=> String, one of "Complete", "InternalError", "PartialData"
    #   resp.proactive_anomalies[0].source_details.performance_insights_metrics #=> Array
    #   resp.proactive_anomalies[0].source_details.performance_insights_metrics[0].metric_display_name #=> String
    #   resp.proactive_anomalies[0].source_details.performance_insights_metrics[0].unit #=> String
    #   resp.proactive_anomalies[0].source_details.performance_insights_metrics[0].metric_query.metric #=> String
    #   resp.proactive_anomalies[0].source_details.performance_insights_metrics[0].metric_query.group_by.group #=> String
    #   resp.proactive_anomalies[0].source_details.performance_insights_metrics[0].metric_query.group_by.dimensions #=> Array
    #   resp.proactive_anomalies[0].source_details.performance_insights_metrics[0].metric_query.group_by.dimensions[0] #=> String
    #   resp.proactive_anomalies[0].source_details.performance_insights_metrics[0].metric_query.group_by.limit #=> Integer
    #   resp.proactive_anomalies[0].source_details.performance_insights_metrics[0].metric_query.filter #=> Hash
    #   resp.proactive_anomalies[0].source_details.performance_insights_metrics[0].metric_query.filter["PerformanceInsightsMetricFilterKey"] #=> String
    #   resp.proactive_anomalies[0].source_details.performance_insights_metrics[0].reference_data #=> Array
    #   resp.proactive_anomalies[0].source_details.performance_insights_metrics[0].reference_data[0].name #=> String
    #   resp.proactive_anomalies[0].source_details.performance_insights_metrics[0].reference_data[0].comparison_values.reference_scalar.value #=> Float
    #   resp.proactive_anomalies[0].source_details.performance_insights_metrics[0].reference_data[0].comparison_values.reference_metric.metric_query.metric #=> String
    #   resp.proactive_anomalies[0].source_details.performance_insights_metrics[0].reference_data[0].comparison_values.reference_metric.metric_query.group_by.group #=> String
    #   resp.proactive_anomalies[0].source_details.performance_insights_metrics[0].reference_data[0].comparison_values.reference_metric.metric_query.group_by.dimensions #=> Array
    #   resp.proactive_anomalies[0].source_details.performance_insights_metrics[0].reference_data[0].comparison_values.reference_metric.metric_query.group_by.dimensions[0] #=> String
    #   resp.proactive_anomalies[0].source_details.performance_insights_metrics[0].reference_data[0].comparison_values.reference_metric.metric_query.group_by.limit #=> Integer
    #   resp.proactive_anomalies[0].source_details.performance_insights_metrics[0].reference_data[0].comparison_values.reference_metric.metric_query.filter #=> Hash
    #   resp.proactive_anomalies[0].source_details.performance_insights_metrics[0].reference_data[0].comparison_values.reference_metric.metric_query.filter["PerformanceInsightsMetricFilterKey"] #=> String
    #   resp.proactive_anomalies[0].source_details.performance_insights_metrics[0].stats_at_anomaly #=> Array
    #   resp.proactive_anomalies[0].source_details.performance_insights_metrics[0].stats_at_anomaly[0].type #=> String
    #   resp.proactive_anomalies[0].source_details.performance_insights_metrics[0].stats_at_anomaly[0].value #=> Float
    #   resp.proactive_anomalies[0].source_details.performance_insights_metrics[0].stats_at_baseline #=> Array
    #   resp.proactive_anomalies[0].source_details.performance_insights_metrics[0].stats_at_baseline[0].type #=> String
    #   resp.proactive_anomalies[0].source_details.performance_insights_metrics[0].stats_at_baseline[0].value #=> Float
    #   resp.proactive_anomalies[0].associated_insight_id #=> String
    #   resp.proactive_anomalies[0].resource_collection.cloud_formation.stack_names #=> Array
    #   resp.proactive_anomalies[0].resource_collection.cloud_formation.stack_names[0] #=> String
    #   resp.proactive_anomalies[0].resource_collection.tags #=> Array
    #   resp.proactive_anomalies[0].resource_collection.tags[0].app_boundary_key #=> String
    #   resp.proactive_anomalies[0].resource_collection.tags[0].tag_values #=> Array
    #   resp.proactive_anomalies[0].resource_collection.tags[0].tag_values[0] #=> String
    #   resp.proactive_anomalies[0].limit #=> Float
    #   resp.proactive_anomalies[0].source_metadata.source #=> String
    #   resp.proactive_anomalies[0].source_metadata.source_resource_name #=> String
    #   resp.proactive_anomalies[0].source_metadata.source_resource_type #=> String
    #   resp.proactive_anomalies[0].anomaly_resources #=> Array
    #   resp.proactive_anomalies[0].anomaly_resources[0].name #=> String
    #   resp.proactive_anomalies[0].anomaly_resources[0].type #=> String
    #   resp.proactive_anomalies[0].description #=> String
    #   resp.reactive_anomalies #=> Array
    #   resp.reactive_anomalies[0].id #=> String
    #   resp.reactive_anomalies[0].severity #=> String, one of "LOW", "MEDIUM", "HIGH"
    #   resp.reactive_anomalies[0].status #=> String, one of "ONGOING", "CLOSED"
    #   resp.reactive_anomalies[0].anomaly_time_range.start_time #=> Time
    #   resp.reactive_anomalies[0].anomaly_time_range.end_time #=> Time
    #   resp.reactive_anomalies[0].anomaly_reported_time_range.open_time #=> Time
    #   resp.reactive_anomalies[0].anomaly_reported_time_range.close_time #=> Time
    #   resp.reactive_anomalies[0].source_details.cloud_watch_metrics #=> Array
    #   resp.reactive_anomalies[0].source_details.cloud_watch_metrics[0].metric_name #=> String
    #   resp.reactive_anomalies[0].source_details.cloud_watch_metrics[0].namespace #=> String
    #   resp.reactive_anomalies[0].source_details.cloud_watch_metrics[0].dimensions #=> Array
    #   resp.reactive_anomalies[0].source_details.cloud_watch_metrics[0].dimensions[0].name #=> String
    #   resp.reactive_anomalies[0].source_details.cloud_watch_metrics[0].dimensions[0].value #=> String
    #   resp.reactive_anomalies[0].source_details.cloud_watch_metrics[0].stat #=> String, one of "Sum", "Average", "SampleCount", "Minimum", "Maximum", "p99", "p90", "p50"
    #   resp.reactive_anomalies[0].source_details.cloud_watch_metrics[0].unit #=> String
    #   resp.reactive_anomalies[0].source_details.cloud_watch_metrics[0].period #=> Integer
    #   resp.reactive_anomalies[0].source_details.cloud_watch_metrics[0].metric_data_summary.timestamp_metric_value_pair_list #=> Array
    #   resp.reactive_anomalies[0].source_details.cloud_watch_metrics[0].metric_data_summary.timestamp_metric_value_pair_list[0].timestamp #=> Time
    #   resp.reactive_anomalies[0].source_details.cloud_watch_metrics[0].metric_data_summary.timestamp_metric_value_pair_list[0].metric_value #=> Float
    #   resp.reactive_anomalies[0].source_details.cloud_watch_metrics[0].metric_data_summary.status_code #=> String, one of "Complete", "InternalError", "PartialData"
    #   resp.reactive_anomalies[0].source_details.performance_insights_metrics #=> Array
    #   resp.reactive_anomalies[0].source_details.performance_insights_metrics[0].metric_display_name #=> String
    #   resp.reactive_anomalies[0].source_details.performance_insights_metrics[0].unit #=> String
    #   resp.reactive_anomalies[0].source_details.performance_insights_metrics[0].metric_query.metric #=> String
    #   resp.reactive_anomalies[0].source_details.performance_insights_metrics[0].metric_query.group_by.group #=> String
    #   resp.reactive_anomalies[0].source_details.performance_insights_metrics[0].metric_query.group_by.dimensions #=> Array
    #   resp.reactive_anomalies[0].source_details.performance_insights_metrics[0].metric_query.group_by.dimensions[0] #=> String
    #   resp.reactive_anomalies[0].source_details.performance_insights_metrics[0].metric_query.group_by.limit #=> Integer
    #   resp.reactive_anomalies[0].source_details.performance_insights_metrics[0].metric_query.filter #=> Hash
    #   resp.reactive_anomalies[0].source_details.performance_insights_metrics[0].metric_query.filter["PerformanceInsightsMetricFilterKey"] #=> String
    #   resp.reactive_anomalies[0].source_details.performance_insights_metrics[0].reference_data #=> Array
    #   resp.reactive_anomalies[0].source_details.performance_insights_metrics[0].reference_data[0].name #=> String
    #   resp.reactive_anomalies[0].source_details.performance_insights_metrics[0].reference_data[0].comparison_values.reference_scalar.value #=> Float
    #   resp.reactive_anomalies[0].source_details.performance_insights_metrics[0].reference_data[0].comparison_values.reference_metric.metric_query.metric #=> String
    #   resp.reactive_anomalies[0].source_details.performance_insights_metrics[0].reference_data[0].comparison_values.reference_metric.metric_query.group_by.group #=> String
    #   resp.reactive_anomalies[0].source_details.performance_insights_metrics[0].reference_data[0].comparison_values.reference_metric.metric_query.group_by.dimensions #=> Array
    #   resp.reactive_anomalies[0].source_details.performance_insights_metrics[0].reference_data[0].comparison_values.reference_metric.metric_query.group_by.dimensions[0] #=> String
    #   resp.reactive_anomalies[0].source_details.performance_insights_metrics[0].reference_data[0].comparison_values.reference_metric.metric_query.group_by.limit #=> Integer
    #   resp.reactive_anomalies[0].source_details.performance_insights_metrics[0].reference_data[0].comparison_values.reference_metric.metric_query.filter #=> Hash
    #   resp.reactive_anomalies[0].source_details.performance_insights_metrics[0].reference_data[0].comparison_values.reference_metric.metric_query.filter["PerformanceInsightsMetricFilterKey"] #=> String
    #   resp.reactive_anomalies[0].source_details.performance_insights_metrics[0].stats_at_anomaly #=> Array
    #   resp.reactive_anomalies[0].source_details.performance_insights_metrics[0].stats_at_anomaly[0].type #=> String
    #   resp.reactive_anomalies[0].source_details.performance_insights_metrics[0].stats_at_anomaly[0].value #=> Float
    #   resp.reactive_anomalies[0].source_details.performance_insights_metrics[0].stats_at_baseline #=> Array
    #   resp.reactive_anomalies[0].source_details.performance_insights_metrics[0].stats_at_baseline[0].type #=> String
    #   resp.reactive_anomalies[0].source_details.performance_insights_metrics[0].stats_at_baseline[0].value #=> Float
    #   resp.reactive_anomalies[0].associated_insight_id #=> String
    #   resp.reactive_anomalies[0].resource_collection.cloud_formation.stack_names #=> Array
    #   resp.reactive_anomalies[0].resource_collection.cloud_formation.stack_names[0] #=> String
    #   resp.reactive_anomalies[0].resource_collection.tags #=> Array
    #   resp.reactive_anomalies[0].resource_collection.tags[0].app_boundary_key #=> String
    #   resp.reactive_anomalies[0].resource_collection.tags[0].tag_values #=> Array
    #   resp.reactive_anomalies[0].resource_collection.tags[0].tag_values[0] #=> String
    #   resp.reactive_anomalies[0].type #=> String, one of "CAUSAL", "CONTEXTUAL"
    #   resp.reactive_anomalies[0].name #=> String
    #   resp.reactive_anomalies[0].description #=> String
    #   resp.reactive_anomalies[0].causal_anomaly_id #=> String
    #   resp.reactive_anomalies[0].anomaly_resources #=> Array
    #   resp.reactive_anomalies[0].anomaly_resources[0].name #=> String
    #   resp.reactive_anomalies[0].anomaly_resources[0].type #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/ListAnomaliesForInsight AWS API Documentation
    #
    # @overload list_anomalies_for_insight(params = {})
    # @param [Hash] params ({})
    def list_anomalies_for_insight(params = {}, options = {})
      req = build_request(:list_anomalies_for_insight, params)
      req.send_request(options)
    end

    # Returns the list of log groups that contain log anomalies.
    #
    # @option params [required, String] :insight_id
    #   The ID of the insight containing the log groups.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return with a single call. To
    #   retrieve the remaining results, make another call with the returned
    #   `nextToken` value.
    #
    # @option params [String] :next_token
    #   The pagination token to use to retrieve the next page of results for
    #   this operation. If this value is null, it retrieves the first page.
    #
    # @return [Types::ListAnomalousLogGroupsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAnomalousLogGroupsResponse#insight_id #insight_id} => String
    #   * {Types::ListAnomalousLogGroupsResponse#anomalous_log_groups #anomalous_log_groups} => Array&lt;Types::AnomalousLogGroup&gt;
    #   * {Types::ListAnomalousLogGroupsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_anomalous_log_groups({
    #     insight_id: "InsightId", # required
    #     max_results: 1,
    #     next_token: "UuidNextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.insight_id #=> String
    #   resp.anomalous_log_groups #=> Array
    #   resp.anomalous_log_groups[0].log_group_name #=> String
    #   resp.anomalous_log_groups[0].impact_start_time #=> Time
    #   resp.anomalous_log_groups[0].impact_end_time #=> Time
    #   resp.anomalous_log_groups[0].number_of_log_lines_scanned #=> Integer
    #   resp.anomalous_log_groups[0].log_anomaly_showcases #=> Array
    #   resp.anomalous_log_groups[0].log_anomaly_showcases[0].log_anomaly_classes #=> Array
    #   resp.anomalous_log_groups[0].log_anomaly_showcases[0].log_anomaly_classes[0].log_stream_name #=> String
    #   resp.anomalous_log_groups[0].log_anomaly_showcases[0].log_anomaly_classes[0].log_anomaly_type #=> String, one of "KEYWORD", "KEYWORD_TOKEN", "FORMAT", "HTTP_CODE", "BLOCK_FORMAT", "NUMERICAL_POINT", "NUMERICAL_NAN", "NEW_FIELD_NAME"
    #   resp.anomalous_log_groups[0].log_anomaly_showcases[0].log_anomaly_classes[0].log_anomaly_token #=> String
    #   resp.anomalous_log_groups[0].log_anomaly_showcases[0].log_anomaly_classes[0].log_event_id #=> String
    #   resp.anomalous_log_groups[0].log_anomaly_showcases[0].log_anomaly_classes[0].explanation #=> String
    #   resp.anomalous_log_groups[0].log_anomaly_showcases[0].log_anomaly_classes[0].number_of_log_lines_occurrences #=> Integer
    #   resp.anomalous_log_groups[0].log_anomaly_showcases[0].log_anomaly_classes[0].log_event_timestamp #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/ListAnomalousLogGroups AWS API Documentation
    #
    # @overload list_anomalous_log_groups(params = {})
    # @param [Hash] params ({})
    def list_anomalous_log_groups(params = {}, options = {})
      req = build_request(:list_anomalous_log_groups, params)
      req.send_request(options)
    end

    # Returns a list of the events emitted by the resources that are
    # evaluated by DevOps Guru. You can use filters to specify which events
    # are returned.
    #
    # @option params [required, Types::ListEventsFilters] :filters
    #   A `ListEventsFilters` object used to specify which events to return.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return with a single call. To
    #   retrieve the remaining results, make another call with the returned
    #   `nextToken` value.
    #
    # @option params [String] :next_token
    #   The pagination token to use to retrieve the next page of results for
    #   this operation. If this value is null, it retrieves the first page.
    #
    # @option params [String] :account_id
    #   The ID of the Amazon Web Services account.
    #
    # @return [Types::ListEventsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListEventsResponse#events #events} => Array&lt;Types::Event&gt;
    #   * {Types::ListEventsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_events({
    #     filters: { # required
    #       insight_id: "InsightId",
    #       event_time_range: {
    #         from_time: Time.now, # required
    #         to_time: Time.now, # required
    #       },
    #       event_class: "INFRASTRUCTURE", # accepts INFRASTRUCTURE, DEPLOYMENT, SECURITY_CHANGE, CONFIG_CHANGE, SCHEMA_CHANGE
    #       event_source: "EventSource",
    #       data_source: "AWS_CLOUD_TRAIL", # accepts AWS_CLOUD_TRAIL, AWS_CODE_DEPLOY
    #       resource_collection: {
    #         cloud_formation: {
    #           stack_names: ["StackName"],
    #         },
    #         tags: [
    #           {
    #             app_boundary_key: "AppBoundaryKey", # required
    #             tag_values: ["TagValue"], # required
    #           },
    #         ],
    #       },
    #     },
    #     max_results: 1,
    #     next_token: "UuidNextToken",
    #     account_id: "AwsAccountId",
    #   })
    #
    # @example Response structure
    #
    #   resp.events #=> Array
    #   resp.events[0].resource_collection.cloud_formation.stack_names #=> Array
    #   resp.events[0].resource_collection.cloud_formation.stack_names[0] #=> String
    #   resp.events[0].resource_collection.tags #=> Array
    #   resp.events[0].resource_collection.tags[0].app_boundary_key #=> String
    #   resp.events[0].resource_collection.tags[0].tag_values #=> Array
    #   resp.events[0].resource_collection.tags[0].tag_values[0] #=> String
    #   resp.events[0].id #=> String
    #   resp.events[0].time #=> Time
    #   resp.events[0].event_source #=> String
    #   resp.events[0].name #=> String
    #   resp.events[0].data_source #=> String, one of "AWS_CLOUD_TRAIL", "AWS_CODE_DEPLOY"
    #   resp.events[0].event_class #=> String, one of "INFRASTRUCTURE", "DEPLOYMENT", "SECURITY_CHANGE", "CONFIG_CHANGE", "SCHEMA_CHANGE"
    #   resp.events[0].resources #=> Array
    #   resp.events[0].resources[0].type #=> String
    #   resp.events[0].resources[0].name #=> String
    #   resp.events[0].resources[0].arn #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/ListEvents AWS API Documentation
    #
    # @overload list_events(params = {})
    # @param [Hash] params ({})
    def list_events(params = {}, options = {})
      req = build_request(:list_events, params)
      req.send_request(options)
    end

    # Returns a list of insights in your Amazon Web Services account. You
    # can specify which insights are returned by their start time and status
    # (`ONGOING`, `CLOSED`, or `ANY`).
    #
    # @option params [required, Types::ListInsightsStatusFilter] :status_filter
    #   A filter used to filter the returned insights by their status. You can
    #   specify one status filter.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return with a single call. To
    #   retrieve the remaining results, make another call with the returned
    #   `nextToken` value.
    #
    # @option params [String] :next_token
    #   The pagination token to use to retrieve the next page of results for
    #   this operation. If this value is null, it retrieves the first page.
    #
    # @return [Types::ListInsightsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListInsightsResponse#proactive_insights #proactive_insights} => Array&lt;Types::ProactiveInsightSummary&gt;
    #   * {Types::ListInsightsResponse#reactive_insights #reactive_insights} => Array&lt;Types::ReactiveInsightSummary&gt;
    #   * {Types::ListInsightsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_insights({
    #     status_filter: { # required
    #       ongoing: {
    #         type: "REACTIVE", # required, accepts REACTIVE, PROACTIVE
    #       },
    #       closed: {
    #         type: "REACTIVE", # required, accepts REACTIVE, PROACTIVE
    #         end_time_range: { # required
    #           from_time: Time.now,
    #           to_time: Time.now,
    #         },
    #       },
    #       any: {
    #         type: "REACTIVE", # required, accepts REACTIVE, PROACTIVE
    #         start_time_range: { # required
    #           from_time: Time.now,
    #           to_time: Time.now,
    #         },
    #       },
    #     },
    #     max_results: 1,
    #     next_token: "UuidNextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.proactive_insights #=> Array
    #   resp.proactive_insights[0].id #=> String
    #   resp.proactive_insights[0].name #=> String
    #   resp.proactive_insights[0].severity #=> String, one of "LOW", "MEDIUM", "HIGH"
    #   resp.proactive_insights[0].status #=> String, one of "ONGOING", "CLOSED"
    #   resp.proactive_insights[0].insight_time_range.start_time #=> Time
    #   resp.proactive_insights[0].insight_time_range.end_time #=> Time
    #   resp.proactive_insights[0].prediction_time_range.start_time #=> Time
    #   resp.proactive_insights[0].prediction_time_range.end_time #=> Time
    #   resp.proactive_insights[0].resource_collection.cloud_formation.stack_names #=> Array
    #   resp.proactive_insights[0].resource_collection.cloud_formation.stack_names[0] #=> String
    #   resp.proactive_insights[0].resource_collection.tags #=> Array
    #   resp.proactive_insights[0].resource_collection.tags[0].app_boundary_key #=> String
    #   resp.proactive_insights[0].resource_collection.tags[0].tag_values #=> Array
    #   resp.proactive_insights[0].resource_collection.tags[0].tag_values[0] #=> String
    #   resp.proactive_insights[0].service_collection.service_names #=> Array
    #   resp.proactive_insights[0].service_collection.service_names[0] #=> String, one of "API_GATEWAY", "APPLICATION_ELB", "AUTO_SCALING_GROUP", "CLOUD_FRONT", "DYNAMO_DB", "EC2", "ECS", "EKS", "ELASTIC_BEANSTALK", "ELASTI_CACHE", "ELB", "ES", "KINESIS", "LAMBDA", "NAT_GATEWAY", "NETWORK_ELB", "RDS", "REDSHIFT", "ROUTE_53", "S3", "SAGE_MAKER", "SNS", "SQS", "STEP_FUNCTIONS", "SWF"
    #   resp.proactive_insights[0].associated_resource_arns #=> Array
    #   resp.proactive_insights[0].associated_resource_arns[0] #=> String
    #   resp.reactive_insights #=> Array
    #   resp.reactive_insights[0].id #=> String
    #   resp.reactive_insights[0].name #=> String
    #   resp.reactive_insights[0].severity #=> String, one of "LOW", "MEDIUM", "HIGH"
    #   resp.reactive_insights[0].status #=> String, one of "ONGOING", "CLOSED"
    #   resp.reactive_insights[0].insight_time_range.start_time #=> Time
    #   resp.reactive_insights[0].insight_time_range.end_time #=> Time
    #   resp.reactive_insights[0].resource_collection.cloud_formation.stack_names #=> Array
    #   resp.reactive_insights[0].resource_collection.cloud_formation.stack_names[0] #=> String
    #   resp.reactive_insights[0].resource_collection.tags #=> Array
    #   resp.reactive_insights[0].resource_collection.tags[0].app_boundary_key #=> String
    #   resp.reactive_insights[0].resource_collection.tags[0].tag_values #=> Array
    #   resp.reactive_insights[0].resource_collection.tags[0].tag_values[0] #=> String
    #   resp.reactive_insights[0].service_collection.service_names #=> Array
    #   resp.reactive_insights[0].service_collection.service_names[0] #=> String, one of "API_GATEWAY", "APPLICATION_ELB", "AUTO_SCALING_GROUP", "CLOUD_FRONT", "DYNAMO_DB", "EC2", "ECS", "EKS", "ELASTIC_BEANSTALK", "ELASTI_CACHE", "ELB", "ES", "KINESIS", "LAMBDA", "NAT_GATEWAY", "NETWORK_ELB", "RDS", "REDSHIFT", "ROUTE_53", "S3", "SAGE_MAKER", "SNS", "SQS", "STEP_FUNCTIONS", "SWF"
    #   resp.reactive_insights[0].associated_resource_arns #=> Array
    #   resp.reactive_insights[0].associated_resource_arns[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/ListInsights AWS API Documentation
    #
    # @overload list_insights(params = {})
    # @param [Hash] params ({})
    def list_insights(params = {}, options = {})
      req = build_request(:list_insights, params)
      req.send_request(options)
    end

    # Returns the list of all log groups that are being monitored and tagged
    # by DevOps Guru.
    #
    # @option params [Types::ListMonitoredResourcesFilters] :filters
    #   Filters to determine which monitored resources you want to retrieve.
    #   You can filter by resource type or resource permission status.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return with a single call. To
    #   retrieve the remaining results, make another call with the returned
    #   `nextToken` value.
    #
    # @option params [String] :next_token
    #   The pagination token to use to retrieve the next page of results for
    #   this operation. If this value is null, it retrieves the first page.
    #
    # @return [Types::ListMonitoredResourcesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListMonitoredResourcesResponse#monitored_resource_identifiers #monitored_resource_identifiers} => Array&lt;Types::MonitoredResourceIdentifier&gt;
    #   * {Types::ListMonitoredResourcesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_monitored_resources({
    #     filters: {
    #       resource_permission: "FULL_PERMISSION", # required, accepts FULL_PERMISSION, MISSING_PERMISSION
    #       resource_type_filters: ["LOG_GROUPS"], # required, accepts LOG_GROUPS, CLOUDFRONT_DISTRIBUTION, DYNAMODB_TABLE, EC2_NAT_GATEWAY, ECS_CLUSTER, ECS_SERVICE, EKS_CLUSTER, ELASTIC_BEANSTALK_ENVIRONMENT, ELASTIC_LOAD_BALANCER_LOAD_BALANCER, ELASTIC_LOAD_BALANCING_V2_LOAD_BALANCER, ELASTIC_LOAD_BALANCING_V2_TARGET_GROUP, ELASTICACHE_CACHE_CLUSTER, ELASTICSEARCH_DOMAIN, KINESIS_STREAM, LAMBDA_FUNCTION, OPEN_SEARCH_SERVICE_DOMAIN, RDS_DB_INSTANCE, RDS_DB_CLUSTER, REDSHIFT_CLUSTER, ROUTE53_HOSTED_ZONE, ROUTE53_HEALTH_CHECK, S3_BUCKET, SAGEMAKER_ENDPOINT, SNS_TOPIC, SQS_QUEUE, STEP_FUNCTIONS_ACTIVITY, STEP_FUNCTIONS_STATE_MACHINE
    #     },
    #     max_results: 1,
    #     next_token: "UuidNextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.monitored_resource_identifiers #=> Array
    #   resp.monitored_resource_identifiers[0].monitored_resource_name #=> String
    #   resp.monitored_resource_identifiers[0].type #=> String
    #   resp.monitored_resource_identifiers[0].resource_permission #=> String, one of "FULL_PERMISSION", "MISSING_PERMISSION"
    #   resp.monitored_resource_identifiers[0].last_updated #=> Time
    #   resp.monitored_resource_identifiers[0].resource_collection.cloud_formation.stack_names #=> Array
    #   resp.monitored_resource_identifiers[0].resource_collection.cloud_formation.stack_names[0] #=> String
    #   resp.monitored_resource_identifiers[0].resource_collection.tags #=> Array
    #   resp.monitored_resource_identifiers[0].resource_collection.tags[0].app_boundary_key #=> String
    #   resp.monitored_resource_identifiers[0].resource_collection.tags[0].tag_values #=> Array
    #   resp.monitored_resource_identifiers[0].resource_collection.tags[0].tag_values[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/ListMonitoredResources AWS API Documentation
    #
    # @overload list_monitored_resources(params = {})
    # @param [Hash] params ({})
    def list_monitored_resources(params = {}, options = {})
      req = build_request(:list_monitored_resources, params)
      req.send_request(options)
    end

    # Returns a list of notification channels configured for DevOps Guru.
    # Each notification channel is used to notify you when DevOps Guru
    # generates an insight that contains information about how to improve
    # your operations. The one supported notification channel is Amazon
    # Simple Notification Service (Amazon SNS).
    #
    # @option params [String] :next_token
    #   The pagination token to use to retrieve the next page of results for
    #   this operation. If this value is null, it retrieves the first page.
    #
    # @return [Types::ListNotificationChannelsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListNotificationChannelsResponse#channels #channels} => Array&lt;Types::NotificationChannel&gt;
    #   * {Types::ListNotificationChannelsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_notification_channels({
    #     next_token: "UuidNextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.channels #=> Array
    #   resp.channels[0].id #=> String
    #   resp.channels[0].config.sns.topic_arn #=> String
    #   resp.channels[0].config.filters.severities #=> Array
    #   resp.channels[0].config.filters.severities[0] #=> String, one of "LOW", "MEDIUM", "HIGH"
    #   resp.channels[0].config.filters.message_types #=> Array
    #   resp.channels[0].config.filters.message_types[0] #=> String, one of "NEW_INSIGHT", "CLOSED_INSIGHT", "NEW_ASSOCIATION", "SEVERITY_UPGRADED", "NEW_RECOMMENDATION"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/ListNotificationChannels AWS API Documentation
    #
    # @overload list_notification_channels(params = {})
    # @param [Hash] params ({})
    def list_notification_channels(params = {}, options = {})
      req = build_request(:list_notification_channels, params)
      req.send_request(options)
    end

    # Returns a list of insights associated with the account or OU Id.
    #
    # @option params [required, Types::ListInsightsStatusFilter] :status_filter
    #   A filter used by `ListInsights` to specify which insights to return.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return with a single call. To
    #   retrieve the remaining results, make another call with the returned
    #   `nextToken` value.
    #
    # @option params [Array<String>] :account_ids
    #   The ID of the Amazon Web Services account.
    #
    # @option params [Array<String>] :organizational_unit_ids
    #   The ID of the organizational unit.
    #
    # @option params [String] :next_token
    #   The pagination token to use to retrieve the next page of results for
    #   this operation. If this value is null, it retrieves the first page.
    #
    # @return [Types::ListOrganizationInsightsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListOrganizationInsightsResponse#proactive_insights #proactive_insights} => Array&lt;Types::ProactiveOrganizationInsightSummary&gt;
    #   * {Types::ListOrganizationInsightsResponse#reactive_insights #reactive_insights} => Array&lt;Types::ReactiveOrganizationInsightSummary&gt;
    #   * {Types::ListOrganizationInsightsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_organization_insights({
    #     status_filter: { # required
    #       ongoing: {
    #         type: "REACTIVE", # required, accepts REACTIVE, PROACTIVE
    #       },
    #       closed: {
    #         type: "REACTIVE", # required, accepts REACTIVE, PROACTIVE
    #         end_time_range: { # required
    #           from_time: Time.now,
    #           to_time: Time.now,
    #         },
    #       },
    #       any: {
    #         type: "REACTIVE", # required, accepts REACTIVE, PROACTIVE
    #         start_time_range: { # required
    #           from_time: Time.now,
    #           to_time: Time.now,
    #         },
    #       },
    #     },
    #     max_results: 1,
    #     account_ids: ["AwsAccountId"],
    #     organizational_unit_ids: ["OrganizationalUnitId"],
    #     next_token: "UuidNextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.proactive_insights #=> Array
    #   resp.proactive_insights[0].id #=> String
    #   resp.proactive_insights[0].account_id #=> String
    #   resp.proactive_insights[0].organizational_unit_id #=> String
    #   resp.proactive_insights[0].name #=> String
    #   resp.proactive_insights[0].severity #=> String, one of "LOW", "MEDIUM", "HIGH"
    #   resp.proactive_insights[0].status #=> String, one of "ONGOING", "CLOSED"
    #   resp.proactive_insights[0].insight_time_range.start_time #=> Time
    #   resp.proactive_insights[0].insight_time_range.end_time #=> Time
    #   resp.proactive_insights[0].prediction_time_range.start_time #=> Time
    #   resp.proactive_insights[0].prediction_time_range.end_time #=> Time
    #   resp.proactive_insights[0].resource_collection.cloud_formation.stack_names #=> Array
    #   resp.proactive_insights[0].resource_collection.cloud_formation.stack_names[0] #=> String
    #   resp.proactive_insights[0].resource_collection.tags #=> Array
    #   resp.proactive_insights[0].resource_collection.tags[0].app_boundary_key #=> String
    #   resp.proactive_insights[0].resource_collection.tags[0].tag_values #=> Array
    #   resp.proactive_insights[0].resource_collection.tags[0].tag_values[0] #=> String
    #   resp.proactive_insights[0].service_collection.service_names #=> Array
    #   resp.proactive_insights[0].service_collection.service_names[0] #=> String, one of "API_GATEWAY", "APPLICATION_ELB", "AUTO_SCALING_GROUP", "CLOUD_FRONT", "DYNAMO_DB", "EC2", "ECS", "EKS", "ELASTIC_BEANSTALK", "ELASTI_CACHE", "ELB", "ES", "KINESIS", "LAMBDA", "NAT_GATEWAY", "NETWORK_ELB", "RDS", "REDSHIFT", "ROUTE_53", "S3", "SAGE_MAKER", "SNS", "SQS", "STEP_FUNCTIONS", "SWF"
    #   resp.reactive_insights #=> Array
    #   resp.reactive_insights[0].id #=> String
    #   resp.reactive_insights[0].account_id #=> String
    #   resp.reactive_insights[0].organizational_unit_id #=> String
    #   resp.reactive_insights[0].name #=> String
    #   resp.reactive_insights[0].severity #=> String, one of "LOW", "MEDIUM", "HIGH"
    #   resp.reactive_insights[0].status #=> String, one of "ONGOING", "CLOSED"
    #   resp.reactive_insights[0].insight_time_range.start_time #=> Time
    #   resp.reactive_insights[0].insight_time_range.end_time #=> Time
    #   resp.reactive_insights[0].resource_collection.cloud_formation.stack_names #=> Array
    #   resp.reactive_insights[0].resource_collection.cloud_formation.stack_names[0] #=> String
    #   resp.reactive_insights[0].resource_collection.tags #=> Array
    #   resp.reactive_insights[0].resource_collection.tags[0].app_boundary_key #=> String
    #   resp.reactive_insights[0].resource_collection.tags[0].tag_values #=> Array
    #   resp.reactive_insights[0].resource_collection.tags[0].tag_values[0] #=> String
    #   resp.reactive_insights[0].service_collection.service_names #=> Array
    #   resp.reactive_insights[0].service_collection.service_names[0] #=> String, one of "API_GATEWAY", "APPLICATION_ELB", "AUTO_SCALING_GROUP", "CLOUD_FRONT", "DYNAMO_DB", "EC2", "ECS", "EKS", "ELASTIC_BEANSTALK", "ELASTI_CACHE", "ELB", "ES", "KINESIS", "LAMBDA", "NAT_GATEWAY", "NETWORK_ELB", "RDS", "REDSHIFT", "ROUTE_53", "S3", "SAGE_MAKER", "SNS", "SQS", "STEP_FUNCTIONS", "SWF"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/ListOrganizationInsights AWS API Documentation
    #
    # @overload list_organization_insights(params = {})
    # @param [Hash] params ({})
    def list_organization_insights(params = {}, options = {})
      req = build_request(:list_organization_insights, params)
      req.send_request(options)
    end

    # Returns a list of a specified insight's recommendations. Each
    # recommendation includes a list of related metrics and a list of
    # related events.
    #
    # @option params [required, String] :insight_id
    #   The ID of the requested insight.
    #
    # @option params [String] :next_token
    #   The pagination token to use to retrieve the next page of results for
    #   this operation. If this value is null, it retrieves the first page.
    #
    # @option params [String] :locale
    #   A locale that specifies the language to use for recommendations.
    #
    # @option params [String] :account_id
    #   The ID of the Amazon Web Services account.
    #
    # @return [Types::ListRecommendationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListRecommendationsResponse#recommendations #recommendations} => Array&lt;Types::Recommendation&gt;
    #   * {Types::ListRecommendationsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_recommendations({
    #     insight_id: "InsightId", # required
    #     next_token: "UuidNextToken",
    #     locale: "DE_DE", # accepts DE_DE, EN_US, EN_GB, ES_ES, FR_FR, IT_IT, JA_JP, KO_KR, PT_BR, ZH_CN, ZH_TW
    #     account_id: "AwsAccountId",
    #   })
    #
    # @example Response structure
    #
    #   resp.recommendations #=> Array
    #   resp.recommendations[0].description #=> String
    #   resp.recommendations[0].link #=> String
    #   resp.recommendations[0].name #=> String
    #   resp.recommendations[0].reason #=> String
    #   resp.recommendations[0].related_events #=> Array
    #   resp.recommendations[0].related_events[0].name #=> String
    #   resp.recommendations[0].related_events[0].resources #=> Array
    #   resp.recommendations[0].related_events[0].resources[0].name #=> String
    #   resp.recommendations[0].related_events[0].resources[0].type #=> String
    #   resp.recommendations[0].related_anomalies #=> Array
    #   resp.recommendations[0].related_anomalies[0].resources #=> Array
    #   resp.recommendations[0].related_anomalies[0].resources[0].name #=> String
    #   resp.recommendations[0].related_anomalies[0].resources[0].type #=> String
    #   resp.recommendations[0].related_anomalies[0].source_details #=> Array
    #   resp.recommendations[0].related_anomalies[0].source_details[0].cloud_watch_metrics #=> Array
    #   resp.recommendations[0].related_anomalies[0].source_details[0].cloud_watch_metrics[0].metric_name #=> String
    #   resp.recommendations[0].related_anomalies[0].source_details[0].cloud_watch_metrics[0].namespace #=> String
    #   resp.recommendations[0].related_anomalies[0].anomaly_id #=> String
    #   resp.recommendations[0].category #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/ListRecommendations AWS API Documentation
    #
    # @overload list_recommendations(params = {})
    # @param [Hash] params ({})
    def list_recommendations(params = {}, options = {})
      req = build_request(:list_recommendations, params)
      req.send_request(options)
    end

    # Collects customer feedback about the specified insight.
    #
    # @option params [Types::InsightFeedback] :insight_feedback
    #   The feedback from customers is about the recommendations in this
    #   insight.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_feedback({
    #     insight_feedback: {
    #       id: "InsightId",
    #       feedback: "VALID_COLLECTION", # accepts VALID_COLLECTION, RECOMMENDATION_USEFUL, ALERT_TOO_SENSITIVE, DATA_NOISY_ANOMALY, DATA_INCORRECT
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/PutFeedback AWS API Documentation
    #
    # @overload put_feedback(params = {})
    # @param [Hash] params ({})
    def put_feedback(params = {}, options = {})
      req = build_request(:put_feedback, params)
      req.send_request(options)
    end

    # Removes a notification channel from DevOps Guru. A notification
    # channel is used to notify you when DevOps Guru generates an insight
    # that contains information about how to improve your operations.
    #
    # @option params [required, String] :id
    #   The ID of the notification channel to be removed.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.remove_notification_channel({
    #     id: "NotificationChannelId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/RemoveNotificationChannel AWS API Documentation
    #
    # @overload remove_notification_channel(params = {})
    # @param [Hash] params ({})
    def remove_notification_channel(params = {}, options = {})
      req = build_request(:remove_notification_channel, params)
      req.send_request(options)
    end

    # Returns a list of insights in your Amazon Web Services account. You
    # can specify which insights are returned by their start time, one or
    # more statuses (`ONGOING` or `CLOSED`), one or more severities (`LOW`,
    # `MEDIUM`, and `HIGH`), and type (`REACTIVE` or `PROACTIVE`).
    #
    # Use the `Filters` parameter to specify status and severity search
    # parameters. Use the `Type` parameter to specify `REACTIVE` or
    # `PROACTIVE` in your search.
    #
    # @option params [required, Types::StartTimeRange] :start_time_range
    #   The start of the time range passed in. Returned insights occurred
    #   after this time.
    #
    # @option params [Types::SearchInsightsFilters] :filters
    #   A `SearchInsightsFilters` object that is used to set the severity and
    #   status filters on your insight search.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return with a single call. To
    #   retrieve the remaining results, make another call with the returned
    #   `nextToken` value.
    #
    # @option params [String] :next_token
    #   The pagination token to use to retrieve the next page of results for
    #   this operation. If this value is null, it retrieves the first page.
    #
    # @option params [required, String] :type
    #   The type of insights you are searching for (`REACTIVE` or
    #   `PROACTIVE`).
    #
    # @return [Types::SearchInsightsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SearchInsightsResponse#proactive_insights #proactive_insights} => Array&lt;Types::ProactiveInsightSummary&gt;
    #   * {Types::SearchInsightsResponse#reactive_insights #reactive_insights} => Array&lt;Types::ReactiveInsightSummary&gt;
    #   * {Types::SearchInsightsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_insights({
    #     start_time_range: { # required
    #       from_time: Time.now,
    #       to_time: Time.now,
    #     },
    #     filters: {
    #       severities: ["LOW"], # accepts LOW, MEDIUM, HIGH
    #       statuses: ["ONGOING"], # accepts ONGOING, CLOSED
    #       resource_collection: {
    #         cloud_formation: {
    #           stack_names: ["StackName"],
    #         },
    #         tags: [
    #           {
    #             app_boundary_key: "AppBoundaryKey", # required
    #             tag_values: ["TagValue"], # required
    #           },
    #         ],
    #       },
    #       service_collection: {
    #         service_names: ["API_GATEWAY"], # accepts API_GATEWAY, APPLICATION_ELB, AUTO_SCALING_GROUP, CLOUD_FRONT, DYNAMO_DB, EC2, ECS, EKS, ELASTIC_BEANSTALK, ELASTI_CACHE, ELB, ES, KINESIS, LAMBDA, NAT_GATEWAY, NETWORK_ELB, RDS, REDSHIFT, ROUTE_53, S3, SAGE_MAKER, SNS, SQS, STEP_FUNCTIONS, SWF
    #       },
    #     },
    #     max_results: 1,
    #     next_token: "UuidNextToken",
    #     type: "REACTIVE", # required, accepts REACTIVE, PROACTIVE
    #   })
    #
    # @example Response structure
    #
    #   resp.proactive_insights #=> Array
    #   resp.proactive_insights[0].id #=> String
    #   resp.proactive_insights[0].name #=> String
    #   resp.proactive_insights[0].severity #=> String, one of "LOW", "MEDIUM", "HIGH"
    #   resp.proactive_insights[0].status #=> String, one of "ONGOING", "CLOSED"
    #   resp.proactive_insights[0].insight_time_range.start_time #=> Time
    #   resp.proactive_insights[0].insight_time_range.end_time #=> Time
    #   resp.proactive_insights[0].prediction_time_range.start_time #=> Time
    #   resp.proactive_insights[0].prediction_time_range.end_time #=> Time
    #   resp.proactive_insights[0].resource_collection.cloud_formation.stack_names #=> Array
    #   resp.proactive_insights[0].resource_collection.cloud_formation.stack_names[0] #=> String
    #   resp.proactive_insights[0].resource_collection.tags #=> Array
    #   resp.proactive_insights[0].resource_collection.tags[0].app_boundary_key #=> String
    #   resp.proactive_insights[0].resource_collection.tags[0].tag_values #=> Array
    #   resp.proactive_insights[0].resource_collection.tags[0].tag_values[0] #=> String
    #   resp.proactive_insights[0].service_collection.service_names #=> Array
    #   resp.proactive_insights[0].service_collection.service_names[0] #=> String, one of "API_GATEWAY", "APPLICATION_ELB", "AUTO_SCALING_GROUP", "CLOUD_FRONT", "DYNAMO_DB", "EC2", "ECS", "EKS", "ELASTIC_BEANSTALK", "ELASTI_CACHE", "ELB", "ES", "KINESIS", "LAMBDA", "NAT_GATEWAY", "NETWORK_ELB", "RDS", "REDSHIFT", "ROUTE_53", "S3", "SAGE_MAKER", "SNS", "SQS", "STEP_FUNCTIONS", "SWF"
    #   resp.proactive_insights[0].associated_resource_arns #=> Array
    #   resp.proactive_insights[0].associated_resource_arns[0] #=> String
    #   resp.reactive_insights #=> Array
    #   resp.reactive_insights[0].id #=> String
    #   resp.reactive_insights[0].name #=> String
    #   resp.reactive_insights[0].severity #=> String, one of "LOW", "MEDIUM", "HIGH"
    #   resp.reactive_insights[0].status #=> String, one of "ONGOING", "CLOSED"
    #   resp.reactive_insights[0].insight_time_range.start_time #=> Time
    #   resp.reactive_insights[0].insight_time_range.end_time #=> Time
    #   resp.reactive_insights[0].resource_collection.cloud_formation.stack_names #=> Array
    #   resp.reactive_insights[0].resource_collection.cloud_formation.stack_names[0] #=> String
    #   resp.reactive_insights[0].resource_collection.tags #=> Array
    #   resp.reactive_insights[0].resource_collection.tags[0].app_boundary_key #=> String
    #   resp.reactive_insights[0].resource_collection.tags[0].tag_values #=> Array
    #   resp.reactive_insights[0].resource_collection.tags[0].tag_values[0] #=> String
    #   resp.reactive_insights[0].service_collection.service_names #=> Array
    #   resp.reactive_insights[0].service_collection.service_names[0] #=> String, one of "API_GATEWAY", "APPLICATION_ELB", "AUTO_SCALING_GROUP", "CLOUD_FRONT", "DYNAMO_DB", "EC2", "ECS", "EKS", "ELASTIC_BEANSTALK", "ELASTI_CACHE", "ELB", "ES", "KINESIS", "LAMBDA", "NAT_GATEWAY", "NETWORK_ELB", "RDS", "REDSHIFT", "ROUTE_53", "S3", "SAGE_MAKER", "SNS", "SQS", "STEP_FUNCTIONS", "SWF"
    #   resp.reactive_insights[0].associated_resource_arns #=> Array
    #   resp.reactive_insights[0].associated_resource_arns[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/SearchInsights AWS API Documentation
    #
    # @overload search_insights(params = {})
    # @param [Hash] params ({})
    def search_insights(params = {}, options = {})
      req = build_request(:search_insights, params)
      req.send_request(options)
    end

    # Returns a list of insights in your organization. You can specify which
    # insights are returned by their start time, one or more statuses
    # (`ONGOING`, `CLOSED`, and `CLOSED`), one or more severities (`LOW`,
    # `MEDIUM`, and `HIGH`), and type (`REACTIVE` or `PROACTIVE`).
    #
    # Use the `Filters` parameter to specify status and severity search
    # parameters. Use the `Type` parameter to specify `REACTIVE` or
    # `PROACTIVE` in your search.
    #
    # @option params [required, Array<String>] :account_ids
    #   The ID of the Amazon Web Services account.
    #
    # @option params [required, Types::StartTimeRange] :start_time_range
    #   A time range used to specify when the behavior of an insight or
    #   anomaly started.
    #
    # @option params [Types::SearchOrganizationInsightsFilters] :filters
    #   A `SearchOrganizationInsightsFilters` object that is used to set the
    #   severity and status filters on your insight search.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return with a single call. To
    #   retrieve the remaining results, make another call with the returned
    #   `nextToken` value.
    #
    # @option params [String] :next_token
    #   The pagination token to use to retrieve the next page of results for
    #   this operation. If this value is null, it retrieves the first page.
    #
    # @option params [required, String] :type
    #   The type of insights you are searching for (`REACTIVE` or
    #   `PROACTIVE`).
    #
    # @return [Types::SearchOrganizationInsightsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SearchOrganizationInsightsResponse#proactive_insights #proactive_insights} => Array&lt;Types::ProactiveInsightSummary&gt;
    #   * {Types::SearchOrganizationInsightsResponse#reactive_insights #reactive_insights} => Array&lt;Types::ReactiveInsightSummary&gt;
    #   * {Types::SearchOrganizationInsightsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_organization_insights({
    #     account_ids: ["AwsAccountId"], # required
    #     start_time_range: { # required
    #       from_time: Time.now,
    #       to_time: Time.now,
    #     },
    #     filters: {
    #       severities: ["LOW"], # accepts LOW, MEDIUM, HIGH
    #       statuses: ["ONGOING"], # accepts ONGOING, CLOSED
    #       resource_collection: {
    #         cloud_formation: {
    #           stack_names: ["StackName"],
    #         },
    #         tags: [
    #           {
    #             app_boundary_key: "AppBoundaryKey", # required
    #             tag_values: ["TagValue"], # required
    #           },
    #         ],
    #       },
    #       service_collection: {
    #         service_names: ["API_GATEWAY"], # accepts API_GATEWAY, APPLICATION_ELB, AUTO_SCALING_GROUP, CLOUD_FRONT, DYNAMO_DB, EC2, ECS, EKS, ELASTIC_BEANSTALK, ELASTI_CACHE, ELB, ES, KINESIS, LAMBDA, NAT_GATEWAY, NETWORK_ELB, RDS, REDSHIFT, ROUTE_53, S3, SAGE_MAKER, SNS, SQS, STEP_FUNCTIONS, SWF
    #       },
    #     },
    #     max_results: 1,
    #     next_token: "UuidNextToken",
    #     type: "REACTIVE", # required, accepts REACTIVE, PROACTIVE
    #   })
    #
    # @example Response structure
    #
    #   resp.proactive_insights #=> Array
    #   resp.proactive_insights[0].id #=> String
    #   resp.proactive_insights[0].name #=> String
    #   resp.proactive_insights[0].severity #=> String, one of "LOW", "MEDIUM", "HIGH"
    #   resp.proactive_insights[0].status #=> String, one of "ONGOING", "CLOSED"
    #   resp.proactive_insights[0].insight_time_range.start_time #=> Time
    #   resp.proactive_insights[0].insight_time_range.end_time #=> Time
    #   resp.proactive_insights[0].prediction_time_range.start_time #=> Time
    #   resp.proactive_insights[0].prediction_time_range.end_time #=> Time
    #   resp.proactive_insights[0].resource_collection.cloud_formation.stack_names #=> Array
    #   resp.proactive_insights[0].resource_collection.cloud_formation.stack_names[0] #=> String
    #   resp.proactive_insights[0].resource_collection.tags #=> Array
    #   resp.proactive_insights[0].resource_collection.tags[0].app_boundary_key #=> String
    #   resp.proactive_insights[0].resource_collection.tags[0].tag_values #=> Array
    #   resp.proactive_insights[0].resource_collection.tags[0].tag_values[0] #=> String
    #   resp.proactive_insights[0].service_collection.service_names #=> Array
    #   resp.proactive_insights[0].service_collection.service_names[0] #=> String, one of "API_GATEWAY", "APPLICATION_ELB", "AUTO_SCALING_GROUP", "CLOUD_FRONT", "DYNAMO_DB", "EC2", "ECS", "EKS", "ELASTIC_BEANSTALK", "ELASTI_CACHE", "ELB", "ES", "KINESIS", "LAMBDA", "NAT_GATEWAY", "NETWORK_ELB", "RDS", "REDSHIFT", "ROUTE_53", "S3", "SAGE_MAKER", "SNS", "SQS", "STEP_FUNCTIONS", "SWF"
    #   resp.proactive_insights[0].associated_resource_arns #=> Array
    #   resp.proactive_insights[0].associated_resource_arns[0] #=> String
    #   resp.reactive_insights #=> Array
    #   resp.reactive_insights[0].id #=> String
    #   resp.reactive_insights[0].name #=> String
    #   resp.reactive_insights[0].severity #=> String, one of "LOW", "MEDIUM", "HIGH"
    #   resp.reactive_insights[0].status #=> String, one of "ONGOING", "CLOSED"
    #   resp.reactive_insights[0].insight_time_range.start_time #=> Time
    #   resp.reactive_insights[0].insight_time_range.end_time #=> Time
    #   resp.reactive_insights[0].resource_collection.cloud_formation.stack_names #=> Array
    #   resp.reactive_insights[0].resource_collection.cloud_formation.stack_names[0] #=> String
    #   resp.reactive_insights[0].resource_collection.tags #=> Array
    #   resp.reactive_insights[0].resource_collection.tags[0].app_boundary_key #=> String
    #   resp.reactive_insights[0].resource_collection.tags[0].tag_values #=> Array
    #   resp.reactive_insights[0].resource_collection.tags[0].tag_values[0] #=> String
    #   resp.reactive_insights[0].service_collection.service_names #=> Array
    #   resp.reactive_insights[0].service_collection.service_names[0] #=> String, one of "API_GATEWAY", "APPLICATION_ELB", "AUTO_SCALING_GROUP", "CLOUD_FRONT", "DYNAMO_DB", "EC2", "ECS", "EKS", "ELASTIC_BEANSTALK", "ELASTI_CACHE", "ELB", "ES", "KINESIS", "LAMBDA", "NAT_GATEWAY", "NETWORK_ELB", "RDS", "REDSHIFT", "ROUTE_53", "S3", "SAGE_MAKER", "SNS", "SQS", "STEP_FUNCTIONS", "SWF"
    #   resp.reactive_insights[0].associated_resource_arns #=> Array
    #   resp.reactive_insights[0].associated_resource_arns[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/SearchOrganizationInsights AWS API Documentation
    #
    # @overload search_organization_insights(params = {})
    # @param [Hash] params ({})
    def search_organization_insights(params = {}, options = {})
      req = build_request(:search_organization_insights, params)
      req.send_request(options)
    end

    # Starts the creation of an estimate of the monthly cost to analyze your
    # Amazon Web Services resources.
    #
    # @option params [required, Types::CostEstimationResourceCollectionFilter] :resource_collection
    #   The collection of Amazon Web Services resources used to create a
    #   monthly DevOps Guru cost estimate.
    #
    # @option params [String] :client_token
    #   The idempotency token used to identify each cost estimate request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_cost_estimation({
    #     resource_collection: { # required
    #       cloud_formation: {
    #         stack_names: ["StackName"],
    #       },
    #       tags: [
    #         {
    #           app_boundary_key: "AppBoundaryKey", # required
    #           tag_values: ["TagValue"], # required
    #         },
    #       ],
    #     },
    #     client_token: "ClientToken",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/StartCostEstimation AWS API Documentation
    #
    # @overload start_cost_estimation(params = {})
    # @param [Hash] params ({})
    def start_cost_estimation(params = {}, options = {})
      req = build_request(:start_cost_estimation, params)
      req.send_request(options)
    end

    # Enables or disables integration with a service that can be integrated
    # with DevOps Guru. The one service that can be integrated with DevOps
    # Guru is Amazon CodeGuru Profiler, which can produce proactive
    # recommendations which can be stored and viewed in DevOps Guru.
    #
    # @option params [Types::EventSourcesConfig] :event_sources
    #   Configuration information about the integration of DevOps Guru as the
    #   Consumer via EventBridge with another AWS Service.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_event_sources_config({
    #     event_sources: {
    #       amazon_code_guru_profiler: {
    #         status: "ENABLED", # accepts ENABLED, DISABLED
    #       },
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/UpdateEventSourcesConfig AWS API Documentation
    #
    # @overload update_event_sources_config(params = {})
    # @param [Hash] params ({})
    def update_event_sources_config(params = {}, options = {})
      req = build_request(:update_event_sources_config, params)
      req.send_request(options)
    end

    # Updates the collection of resources that DevOps Guru analyzes. The two
    # types of Amazon Web Services resource collections supported are Amazon
    # Web Services CloudFormation stacks and Amazon Web Services resources
    # that contain the same Amazon Web Services tag. DevOps Guru can be
    # configured to analyze the Amazon Web Services resources that are
    # defined in the stacks or that are tagged using the same tag *key*. You
    # can specify up to 500 Amazon Web Services CloudFormation stacks. This
    # method also creates the IAM role required for you to use DevOps Guru.
    #
    # @option params [required, String] :action
    #   Specifies if the resource collection in the request is added or
    #   deleted to the resource collection.
    #
    # @option params [required, Types::UpdateResourceCollectionFilter] :resource_collection
    #   Contains information used to update a collection of Amazon Web
    #   Services resources.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_resource_collection({
    #     action: "ADD", # required, accepts ADD, REMOVE
    #     resource_collection: { # required
    #       cloud_formation: {
    #         stack_names: ["StackName"],
    #       },
    #       tags: [
    #         {
    #           app_boundary_key: "AppBoundaryKey", # required
    #           tag_values: ["TagValue"], # required
    #         },
    #       ],
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/UpdateResourceCollection AWS API Documentation
    #
    # @overload update_resource_collection(params = {})
    # @param [Hash] params ({})
    def update_resource_collection(params = {}, options = {})
      req = build_request(:update_resource_collection, params)
      req.send_request(options)
    end

    # Enables or disables integration with a service that can be integrated
    # with DevOps Guru. The one service that can be integrated with DevOps
    # Guru is Amazon Web Services Systems Manager, which can be used to
    # create an OpsItem for each generated insight.
    #
    # @option params [required, Types::UpdateServiceIntegrationConfig] :service_integration
    #   An `IntegratedServiceConfig` object used to specify the integrated
    #   service you want to update, and whether you want to update it to
    #   enabled or disabled.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_service_integration({
    #     service_integration: { # required
    #       ops_center: {
    #         opt_in_status: "ENABLED", # accepts ENABLED, DISABLED
    #       },
    #       logs_anomaly_detection: {
    #         opt_in_status: "ENABLED", # accepts ENABLED, DISABLED
    #       },
    #       kms_server_side_encryption: {
    #         kms_key_id: "KMSKeyId",
    #         opt_in_status: "ENABLED", # accepts ENABLED, DISABLED
    #         type: "CUSTOMER_MANAGED_KEY", # accepts CUSTOMER_MANAGED_KEY, AWS_OWNED_KMS_KEY
    #       },
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/UpdateServiceIntegration AWS API Documentation
    #
    # @overload update_service_integration(params = {})
    # @param [Hash] params ({})
    def update_service_integration(params = {}, options = {})
      req = build_request(:update_service_integration, params)
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
      context[:gem_name] = 'aws-sdk-devopsguru'
      context[:gem_version] = '1.36.0'
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
