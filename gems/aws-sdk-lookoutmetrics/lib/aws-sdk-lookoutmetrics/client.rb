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

Aws::Plugins::GlobalConfiguration.add_identifier(:lookoutmetrics)

module Aws::LookoutMetrics
  # An API client for LookoutMetrics.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::LookoutMetrics::Client.new(
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

    @identifier = :lookoutmetrics

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
    add_plugin(Aws::LookoutMetrics::Plugins::Endpoints)

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
    #   @option options [Aws::LookoutMetrics::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to `Aws::LookoutMetrics::EndpointParameters`
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

    # Activates an anomaly detector.
    #
    # @option params [required, String] :anomaly_detector_arn
    #   The ARN of the anomaly detector.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.activate_anomaly_detector({
    #     anomaly_detector_arn: "Arn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutmetrics-2017-07-25/ActivateAnomalyDetector AWS API Documentation
    #
    # @overload activate_anomaly_detector(params = {})
    # @param [Hash] params ({})
    def activate_anomaly_detector(params = {}, options = {})
      req = build_request(:activate_anomaly_detector, params)
      req.send_request(options)
    end

    # Runs a backtest for anomaly detection for the specified resource.
    #
    # @option params [required, String] :anomaly_detector_arn
    #   The Amazon Resource Name (ARN) of the anomaly detector.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.back_test_anomaly_detector({
    #     anomaly_detector_arn: "Arn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutmetrics-2017-07-25/BackTestAnomalyDetector AWS API Documentation
    #
    # @overload back_test_anomaly_detector(params = {})
    # @param [Hash] params ({})
    def back_test_anomaly_detector(params = {}, options = {})
      req = build_request(:back_test_anomaly_detector, params)
      req.send_request(options)
    end

    # Creates an alert for an anomaly detector.
    #
    # @option params [required, String] :alert_name
    #   The name of the alert.
    #
    # @option params [Integer] :alert_sensitivity_threshold
    #   An integer from 0 to 100 specifying the alert sensitivity threshold.
    #
    # @option params [String] :alert_description
    #   A description of the alert.
    #
    # @option params [required, String] :anomaly_detector_arn
    #   The ARN of the detector to which the alert is attached.
    #
    # @option params [required, Types::Action] :action
    #   Action that will be triggered when there is an alert.
    #
    # @option params [Hash<String,String>] :tags
    #   A list of [tags][1] to apply to the alert.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lookoutmetrics/latest/dev/detectors-tags.html
    #
    # @option params [Types::AlertFilters] :alert_filters
    #   The configuration of the alert filters, containing MetricList and
    #   DimensionFilterList.
    #
    # @return [Types::CreateAlertResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateAlertResponse#alert_arn #alert_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_alert({
    #     alert_name: "AlertName", # required
    #     alert_sensitivity_threshold: 1,
    #     alert_description: "AlertDescription",
    #     anomaly_detector_arn: "Arn", # required
    #     action: { # required
    #       sns_configuration: {
    #         role_arn: "Arn", # required
    #         sns_topic_arn: "Arn", # required
    #         sns_format: "LONG_TEXT", # accepts LONG_TEXT, SHORT_TEXT, JSON
    #       },
    #       lambda_configuration: {
    #         role_arn: "Arn", # required
    #         lambda_arn: "Arn", # required
    #       },
    #     },
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     alert_filters: {
    #       metric_list: ["MetricName"],
    #       dimension_filter_list: [
    #         {
    #           dimension_name: "ColumnName",
    #           dimension_value_list: ["DimensionValue"],
    #         },
    #       ],
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.alert_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutmetrics-2017-07-25/CreateAlert AWS API Documentation
    #
    # @overload create_alert(params = {})
    # @param [Hash] params ({})
    def create_alert(params = {}, options = {})
      req = build_request(:create_alert, params)
      req.send_request(options)
    end

    # Creates an anomaly detector.
    #
    # @option params [required, String] :anomaly_detector_name
    #   The name of the detector.
    #
    # @option params [String] :anomaly_detector_description
    #   A description of the detector.
    #
    # @option params [required, Types::AnomalyDetectorConfig] :anomaly_detector_config
    #   Contains information about the configuration of the anomaly detector.
    #
    # @option params [String] :kms_key_arn
    #   The ARN of the KMS key to use to encrypt your data.
    #
    # @option params [Hash<String,String>] :tags
    #   A list of [tags][1] to apply to the anomaly detector.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lookoutmetrics/latest/dev/detectors-tags.html
    #
    # @return [Types::CreateAnomalyDetectorResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateAnomalyDetectorResponse#anomaly_detector_arn #anomaly_detector_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_anomaly_detector({
    #     anomaly_detector_name: "AnomalyDetectorName", # required
    #     anomaly_detector_description: "AnomalyDetectorDescription",
    #     anomaly_detector_config: { # required
    #       anomaly_detector_frequency: "P1D", # accepts P1D, PT1H, PT10M, PT5M
    #     },
    #     kms_key_arn: "KmsKeyArn",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.anomaly_detector_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutmetrics-2017-07-25/CreateAnomalyDetector AWS API Documentation
    #
    # @overload create_anomaly_detector(params = {})
    # @param [Hash] params ({})
    def create_anomaly_detector(params = {}, options = {})
      req = build_request(:create_anomaly_detector, params)
      req.send_request(options)
    end

    # Creates a dataset.
    #
    # @option params [required, String] :anomaly_detector_arn
    #   The ARN of the anomaly detector that will use the dataset.
    #
    # @option params [required, String] :metric_set_name
    #   The name of the dataset.
    #
    # @option params [String] :metric_set_description
    #   A description of the dataset you are creating.
    #
    # @option params [required, Array<Types::Metric>] :metric_list
    #   A list of metrics that the dataset will contain.
    #
    # @option params [Integer] :offset
    #   After an interval ends, the amount of seconds that the detector waits
    #   before importing data. Offset is only supported for S3, Redshift,
    #   Athena and datasources.
    #
    # @option params [Types::TimestampColumn] :timestamp_column
    #   Contains information about the column used for tracking time in your
    #   source data.
    #
    # @option params [Array<String>] :dimension_list
    #   A list of the fields you want to treat as dimensions.
    #
    # @option params [String] :metric_set_frequency
    #   The frequency with which the source data will be analyzed for
    #   anomalies.
    #
    # @option params [required, Types::MetricSource] :metric_source
    #   Contains information about how the source data should be interpreted.
    #
    # @option params [String] :timezone
    #   The time zone in which your source data was recorded.
    #
    # @option params [Hash<String,String>] :tags
    #   A list of [tags][1] to apply to the dataset.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lookoutmetrics/latest/dev/detectors-tags.html
    #
    # @option params [Array<Types::MetricSetDimensionFilter>] :dimension_filter_list
    #   A list of filters that specify which data is kept for anomaly
    #   detection.
    #
    # @return [Types::CreateMetricSetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateMetricSetResponse#metric_set_arn #metric_set_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_metric_set({
    #     anomaly_detector_arn: "Arn", # required
    #     metric_set_name: "MetricSetName", # required
    #     metric_set_description: "MetricSetDescription",
    #     metric_list: [ # required
    #       {
    #         metric_name: "ColumnName", # required
    #         aggregation_function: "AVG", # required, accepts AVG, SUM
    #         namespace: "Namespace",
    #       },
    #     ],
    #     offset: 1,
    #     timestamp_column: {
    #       column_name: "ColumnName",
    #       column_format: "DateTimeFormat",
    #     },
    #     dimension_list: ["ColumnName"],
    #     metric_set_frequency: "P1D", # accepts P1D, PT1H, PT10M, PT5M
    #     metric_source: { # required
    #       s3_source_config: {
    #         role_arn: "Arn",
    #         templated_path_list: ["TemplatedPath"],
    #         historical_data_path_list: ["HistoricalDataPath"],
    #         file_format_descriptor: {
    #           csv_format_descriptor: {
    #             file_compression: "NONE", # accepts NONE, GZIP
    #             charset: "Charset",
    #             contains_header: false,
    #             delimiter: "Delimiter",
    #             header_list: ["ColumnName"],
    #             quote_symbol: "QuoteSymbol",
    #           },
    #           json_format_descriptor: {
    #             file_compression: "NONE", # accepts NONE, GZIP
    #             charset: "Charset",
    #           },
    #         },
    #       },
    #       app_flow_config: {
    #         role_arn: "Arn",
    #         flow_name: "FlowName",
    #       },
    #       cloud_watch_config: {
    #         role_arn: "Arn",
    #         back_test_configuration: {
    #           run_back_test_mode: false, # required
    #         },
    #       },
    #       rds_source_config: {
    #         db_instance_identifier: "RDSDatabaseIdentifier",
    #         database_host: "DatabaseHost",
    #         database_port: 1,
    #         secret_manager_arn: "PoirotSecretManagerArn",
    #         database_name: "RDSDatabaseName",
    #         table_name: "TableName",
    #         role_arn: "Arn",
    #         vpc_configuration: {
    #           subnet_id_list: ["SubnetId"], # required
    #           security_group_id_list: ["SecurityGroupId"], # required
    #         },
    #       },
    #       redshift_source_config: {
    #         cluster_identifier: "RedshiftClusterIdentifier",
    #         database_host: "DatabaseHost",
    #         database_port: 1,
    #         secret_manager_arn: "PoirotSecretManagerArn",
    #         database_name: "RedshiftDatabaseName",
    #         table_name: "TableName",
    #         role_arn: "Arn",
    #         vpc_configuration: {
    #           subnet_id_list: ["SubnetId"], # required
    #           security_group_id_list: ["SecurityGroupId"], # required
    #         },
    #       },
    #       athena_source_config: {
    #         role_arn: "Arn",
    #         database_name: "AthenaDatabaseName",
    #         data_catalog: "AthenaDataCatalog",
    #         table_name: "AthenaTableName",
    #         work_group_name: "AthenaWorkGroupName",
    #         s3_results_path: "AthenaS3ResultsPath",
    #         back_test_configuration: {
    #           run_back_test_mode: false, # required
    #         },
    #       },
    #     },
    #     timezone: "Timezone",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     dimension_filter_list: [
    #       {
    #         name: "ColumnName",
    #         filter_list: [
    #           {
    #             dimension_value: "DimensionValue",
    #             filter_operation: "EQUALS", # accepts EQUALS
    #           },
    #         ],
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.metric_set_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutmetrics-2017-07-25/CreateMetricSet AWS API Documentation
    #
    # @overload create_metric_set(params = {})
    # @param [Hash] params ({})
    def create_metric_set(params = {}, options = {})
      req = build_request(:create_metric_set, params)
      req.send_request(options)
    end

    # Deactivates an anomaly detector.
    #
    # @option params [required, String] :anomaly_detector_arn
    #   The Amazon Resource Name (ARN) of the anomaly detector.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.deactivate_anomaly_detector({
    #     anomaly_detector_arn: "Arn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutmetrics-2017-07-25/DeactivateAnomalyDetector AWS API Documentation
    #
    # @overload deactivate_anomaly_detector(params = {})
    # @param [Hash] params ({})
    def deactivate_anomaly_detector(params = {}, options = {})
      req = build_request(:deactivate_anomaly_detector, params)
      req.send_request(options)
    end

    # Deletes an alert.
    #
    # @option params [required, String] :alert_arn
    #   The ARN of the alert to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_alert({
    #     alert_arn: "Arn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutmetrics-2017-07-25/DeleteAlert AWS API Documentation
    #
    # @overload delete_alert(params = {})
    # @param [Hash] params ({})
    def delete_alert(params = {}, options = {})
      req = build_request(:delete_alert, params)
      req.send_request(options)
    end

    # Deletes a detector. Deleting an anomaly detector will delete all of
    # its corresponding resources including any configured datasets and
    # alerts.
    #
    # @option params [required, String] :anomaly_detector_arn
    #   The ARN of the detector to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_anomaly_detector({
    #     anomaly_detector_arn: "Arn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutmetrics-2017-07-25/DeleteAnomalyDetector AWS API Documentation
    #
    # @overload delete_anomaly_detector(params = {})
    # @param [Hash] params ({})
    def delete_anomaly_detector(params = {}, options = {})
      req = build_request(:delete_anomaly_detector, params)
      req.send_request(options)
    end

    # Describes an alert.
    #
    # Amazon Lookout for Metrics API actions are eventually consistent. If
    # you do a read operation on a resource immediately after creating or
    # modifying it, use retries to allow time for the write operation to
    # complete.
    #
    # @option params [required, String] :alert_arn
    #   The ARN of the alert to describe.
    #
    # @return [Types::DescribeAlertResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeAlertResponse#alert #alert} => Types::Alert
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_alert({
    #     alert_arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.alert.action.sns_configuration.role_arn #=> String
    #   resp.alert.action.sns_configuration.sns_topic_arn #=> String
    #   resp.alert.action.sns_configuration.sns_format #=> String, one of "LONG_TEXT", "SHORT_TEXT", "JSON"
    #   resp.alert.action.lambda_configuration.role_arn #=> String
    #   resp.alert.action.lambda_configuration.lambda_arn #=> String
    #   resp.alert.alert_description #=> String
    #   resp.alert.alert_arn #=> String
    #   resp.alert.anomaly_detector_arn #=> String
    #   resp.alert.alert_name #=> String
    #   resp.alert.alert_sensitivity_threshold #=> Integer
    #   resp.alert.alert_type #=> String, one of "SNS", "LAMBDA"
    #   resp.alert.alert_status #=> String, one of "ACTIVE", "INACTIVE"
    #   resp.alert.last_modification_time #=> Time
    #   resp.alert.creation_time #=> Time
    #   resp.alert.alert_filters.metric_list #=> Array
    #   resp.alert.alert_filters.metric_list[0] #=> String
    #   resp.alert.alert_filters.dimension_filter_list #=> Array
    #   resp.alert.alert_filters.dimension_filter_list[0].dimension_name #=> String
    #   resp.alert.alert_filters.dimension_filter_list[0].dimension_value_list #=> Array
    #   resp.alert.alert_filters.dimension_filter_list[0].dimension_value_list[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutmetrics-2017-07-25/DescribeAlert AWS API Documentation
    #
    # @overload describe_alert(params = {})
    # @param [Hash] params ({})
    def describe_alert(params = {}, options = {})
      req = build_request(:describe_alert, params)
      req.send_request(options)
    end

    # Returns information about the status of the specified anomaly
    # detection jobs.
    #
    # @option params [required, String] :anomaly_detector_arn
    #   The Amazon Resource Name (ARN) of the anomaly detector.
    #
    # @option params [String] :timestamp
    #   The timestamp of the anomaly detection job.
    #
    # @option params [Integer] :max_results
    #   The number of items to return in the response.
    #
    # @option params [String] :next_token
    #   Specify the pagination token that's returned by a previous request to
    #   retrieve the next page of results.
    #
    # @return [Types::DescribeAnomalyDetectionExecutionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeAnomalyDetectionExecutionsResponse#execution_list #execution_list} => Array&lt;Types::ExecutionStatus&gt;
    #   * {Types::DescribeAnomalyDetectionExecutionsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_anomaly_detection_executions({
    #     anomaly_detector_arn: "Arn", # required
    #     timestamp: "TimestampString",
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.execution_list #=> Array
    #   resp.execution_list[0].timestamp #=> String
    #   resp.execution_list[0].status #=> String, one of "PENDING", "IN_PROGRESS", "COMPLETED", "FAILED", "FAILED_TO_SCHEDULE"
    #   resp.execution_list[0].failure_reason #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutmetrics-2017-07-25/DescribeAnomalyDetectionExecutions AWS API Documentation
    #
    # @overload describe_anomaly_detection_executions(params = {})
    # @param [Hash] params ({})
    def describe_anomaly_detection_executions(params = {}, options = {})
      req = build_request(:describe_anomaly_detection_executions, params)
      req.send_request(options)
    end

    # Describes a detector.
    #
    # Amazon Lookout for Metrics API actions are eventually consistent. If
    # you do a read operation on a resource immediately after creating or
    # modifying it, use retries to allow time for the write operation to
    # complete.
    #
    # @option params [required, String] :anomaly_detector_arn
    #   The ARN of the detector to describe.
    #
    # @return [Types::DescribeAnomalyDetectorResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeAnomalyDetectorResponse#anomaly_detector_arn #anomaly_detector_arn} => String
    #   * {Types::DescribeAnomalyDetectorResponse#anomaly_detector_name #anomaly_detector_name} => String
    #   * {Types::DescribeAnomalyDetectorResponse#anomaly_detector_description #anomaly_detector_description} => String
    #   * {Types::DescribeAnomalyDetectorResponse#anomaly_detector_config #anomaly_detector_config} => Types::AnomalyDetectorConfigSummary
    #   * {Types::DescribeAnomalyDetectorResponse#creation_time #creation_time} => Time
    #   * {Types::DescribeAnomalyDetectorResponse#last_modification_time #last_modification_time} => Time
    #   * {Types::DescribeAnomalyDetectorResponse#status #status} => String
    #   * {Types::DescribeAnomalyDetectorResponse#failure_reason #failure_reason} => String
    #   * {Types::DescribeAnomalyDetectorResponse#kms_key_arn #kms_key_arn} => String
    #   * {Types::DescribeAnomalyDetectorResponse#failure_type #failure_type} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_anomaly_detector({
    #     anomaly_detector_arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.anomaly_detector_arn #=> String
    #   resp.anomaly_detector_name #=> String
    #   resp.anomaly_detector_description #=> String
    #   resp.anomaly_detector_config.anomaly_detector_frequency #=> String, one of "P1D", "PT1H", "PT10M", "PT5M"
    #   resp.creation_time #=> Time
    #   resp.last_modification_time #=> Time
    #   resp.status #=> String, one of "ACTIVE", "ACTIVATING", "DELETING", "FAILED", "INACTIVE", "LEARNING", "BACK_TEST_ACTIVATING", "BACK_TEST_ACTIVE", "BACK_TEST_COMPLETE", "DEACTIVATED", "DEACTIVATING"
    #   resp.failure_reason #=> String
    #   resp.kms_key_arn #=> String
    #   resp.failure_type #=> String, one of "ACTIVATION_FAILURE", "BACK_TEST_ACTIVATION_FAILURE", "DELETION_FAILURE", "DEACTIVATION_FAILURE"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutmetrics-2017-07-25/DescribeAnomalyDetector AWS API Documentation
    #
    # @overload describe_anomaly_detector(params = {})
    # @param [Hash] params ({})
    def describe_anomaly_detector(params = {}, options = {})
      req = build_request(:describe_anomaly_detector, params)
      req.send_request(options)
    end

    # Describes a dataset.
    #
    # Amazon Lookout for Metrics API actions are eventually consistent. If
    # you do a read operation on a resource immediately after creating or
    # modifying it, use retries to allow time for the write operation to
    # complete.
    #
    # @option params [required, String] :metric_set_arn
    #   The ARN of the dataset.
    #
    # @return [Types::DescribeMetricSetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeMetricSetResponse#metric_set_arn #metric_set_arn} => String
    #   * {Types::DescribeMetricSetResponse#anomaly_detector_arn #anomaly_detector_arn} => String
    #   * {Types::DescribeMetricSetResponse#metric_set_name #metric_set_name} => String
    #   * {Types::DescribeMetricSetResponse#metric_set_description #metric_set_description} => String
    #   * {Types::DescribeMetricSetResponse#creation_time #creation_time} => Time
    #   * {Types::DescribeMetricSetResponse#last_modification_time #last_modification_time} => Time
    #   * {Types::DescribeMetricSetResponse#offset #offset} => Integer
    #   * {Types::DescribeMetricSetResponse#metric_list #metric_list} => Array&lt;Types::Metric&gt;
    #   * {Types::DescribeMetricSetResponse#timestamp_column #timestamp_column} => Types::TimestampColumn
    #   * {Types::DescribeMetricSetResponse#dimension_list #dimension_list} => Array&lt;String&gt;
    #   * {Types::DescribeMetricSetResponse#metric_set_frequency #metric_set_frequency} => String
    #   * {Types::DescribeMetricSetResponse#timezone #timezone} => String
    #   * {Types::DescribeMetricSetResponse#metric_source #metric_source} => Types::MetricSource
    #   * {Types::DescribeMetricSetResponse#dimension_filter_list #dimension_filter_list} => Array&lt;Types::MetricSetDimensionFilter&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_metric_set({
    #     metric_set_arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.metric_set_arn #=> String
    #   resp.anomaly_detector_arn #=> String
    #   resp.metric_set_name #=> String
    #   resp.metric_set_description #=> String
    #   resp.creation_time #=> Time
    #   resp.last_modification_time #=> Time
    #   resp.offset #=> Integer
    #   resp.metric_list #=> Array
    #   resp.metric_list[0].metric_name #=> String
    #   resp.metric_list[0].aggregation_function #=> String, one of "AVG", "SUM"
    #   resp.metric_list[0].namespace #=> String
    #   resp.timestamp_column.column_name #=> String
    #   resp.timestamp_column.column_format #=> String
    #   resp.dimension_list #=> Array
    #   resp.dimension_list[0] #=> String
    #   resp.metric_set_frequency #=> String, one of "P1D", "PT1H", "PT10M", "PT5M"
    #   resp.timezone #=> String
    #   resp.metric_source.s3_source_config.role_arn #=> String
    #   resp.metric_source.s3_source_config.templated_path_list #=> Array
    #   resp.metric_source.s3_source_config.templated_path_list[0] #=> String
    #   resp.metric_source.s3_source_config.historical_data_path_list #=> Array
    #   resp.metric_source.s3_source_config.historical_data_path_list[0] #=> String
    #   resp.metric_source.s3_source_config.file_format_descriptor.csv_format_descriptor.file_compression #=> String, one of "NONE", "GZIP"
    #   resp.metric_source.s3_source_config.file_format_descriptor.csv_format_descriptor.charset #=> String
    #   resp.metric_source.s3_source_config.file_format_descriptor.csv_format_descriptor.contains_header #=> Boolean
    #   resp.metric_source.s3_source_config.file_format_descriptor.csv_format_descriptor.delimiter #=> String
    #   resp.metric_source.s3_source_config.file_format_descriptor.csv_format_descriptor.header_list #=> Array
    #   resp.metric_source.s3_source_config.file_format_descriptor.csv_format_descriptor.header_list[0] #=> String
    #   resp.metric_source.s3_source_config.file_format_descriptor.csv_format_descriptor.quote_symbol #=> String
    #   resp.metric_source.s3_source_config.file_format_descriptor.json_format_descriptor.file_compression #=> String, one of "NONE", "GZIP"
    #   resp.metric_source.s3_source_config.file_format_descriptor.json_format_descriptor.charset #=> String
    #   resp.metric_source.app_flow_config.role_arn #=> String
    #   resp.metric_source.app_flow_config.flow_name #=> String
    #   resp.metric_source.cloud_watch_config.role_arn #=> String
    #   resp.metric_source.cloud_watch_config.back_test_configuration.run_back_test_mode #=> Boolean
    #   resp.metric_source.rds_source_config.db_instance_identifier #=> String
    #   resp.metric_source.rds_source_config.database_host #=> String
    #   resp.metric_source.rds_source_config.database_port #=> Integer
    #   resp.metric_source.rds_source_config.secret_manager_arn #=> String
    #   resp.metric_source.rds_source_config.database_name #=> String
    #   resp.metric_source.rds_source_config.table_name #=> String
    #   resp.metric_source.rds_source_config.role_arn #=> String
    #   resp.metric_source.rds_source_config.vpc_configuration.subnet_id_list #=> Array
    #   resp.metric_source.rds_source_config.vpc_configuration.subnet_id_list[0] #=> String
    #   resp.metric_source.rds_source_config.vpc_configuration.security_group_id_list #=> Array
    #   resp.metric_source.rds_source_config.vpc_configuration.security_group_id_list[0] #=> String
    #   resp.metric_source.redshift_source_config.cluster_identifier #=> String
    #   resp.metric_source.redshift_source_config.database_host #=> String
    #   resp.metric_source.redshift_source_config.database_port #=> Integer
    #   resp.metric_source.redshift_source_config.secret_manager_arn #=> String
    #   resp.metric_source.redshift_source_config.database_name #=> String
    #   resp.metric_source.redshift_source_config.table_name #=> String
    #   resp.metric_source.redshift_source_config.role_arn #=> String
    #   resp.metric_source.redshift_source_config.vpc_configuration.subnet_id_list #=> Array
    #   resp.metric_source.redshift_source_config.vpc_configuration.subnet_id_list[0] #=> String
    #   resp.metric_source.redshift_source_config.vpc_configuration.security_group_id_list #=> Array
    #   resp.metric_source.redshift_source_config.vpc_configuration.security_group_id_list[0] #=> String
    #   resp.metric_source.athena_source_config.role_arn #=> String
    #   resp.metric_source.athena_source_config.database_name #=> String
    #   resp.metric_source.athena_source_config.data_catalog #=> String
    #   resp.metric_source.athena_source_config.table_name #=> String
    #   resp.metric_source.athena_source_config.work_group_name #=> String
    #   resp.metric_source.athena_source_config.s3_results_path #=> String
    #   resp.metric_source.athena_source_config.back_test_configuration.run_back_test_mode #=> Boolean
    #   resp.dimension_filter_list #=> Array
    #   resp.dimension_filter_list[0].name #=> String
    #   resp.dimension_filter_list[0].filter_list #=> Array
    #   resp.dimension_filter_list[0].filter_list[0].dimension_value #=> String
    #   resp.dimension_filter_list[0].filter_list[0].filter_operation #=> String, one of "EQUALS"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutmetrics-2017-07-25/DescribeMetricSet AWS API Documentation
    #
    # @overload describe_metric_set(params = {})
    # @param [Hash] params ({})
    def describe_metric_set(params = {}, options = {})
      req = build_request(:describe_metric_set, params)
      req.send_request(options)
    end

    # Detects an Amazon S3 dataset's file format, interval, and offset.
    #
    # @option params [required, String] :anomaly_detector_arn
    #   An anomaly detector ARN.
    #
    # @option params [required, Types::AutoDetectionMetricSource] :auto_detection_metric_source
    #   A data source.
    #
    # @return [Types::DetectMetricSetConfigResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DetectMetricSetConfigResponse#detected_metric_set_config #detected_metric_set_config} => Types::DetectedMetricSetConfig
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.detect_metric_set_config({
    #     anomaly_detector_arn: "Arn", # required
    #     auto_detection_metric_source: { # required
    #       s3_source_config: {
    #         templated_path_list: ["TemplatedPath"],
    #         historical_data_path_list: ["HistoricalDataPath"],
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.detected_metric_set_config.offset.value #=> <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #   resp.detected_metric_set_config.offset.confidence #=> String, one of "HIGH", "LOW", "NONE"
    #   resp.detected_metric_set_config.offset.message #=> String
    #   resp.detected_metric_set_config.metric_set_frequency.value #=> <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #   resp.detected_metric_set_config.metric_set_frequency.confidence #=> String, one of "HIGH", "LOW", "NONE"
    #   resp.detected_metric_set_config.metric_set_frequency.message #=> String
    #   resp.detected_metric_set_config.metric_source.s3_source_config.file_format_descriptor.csv_format_descriptor.file_compression.value #=> <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #   resp.detected_metric_set_config.metric_source.s3_source_config.file_format_descriptor.csv_format_descriptor.file_compression.confidence #=> String, one of "HIGH", "LOW", "NONE"
    #   resp.detected_metric_set_config.metric_source.s3_source_config.file_format_descriptor.csv_format_descriptor.file_compression.message #=> String
    #   resp.detected_metric_set_config.metric_source.s3_source_config.file_format_descriptor.csv_format_descriptor.charset.value #=> <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #   resp.detected_metric_set_config.metric_source.s3_source_config.file_format_descriptor.csv_format_descriptor.charset.confidence #=> String, one of "HIGH", "LOW", "NONE"
    #   resp.detected_metric_set_config.metric_source.s3_source_config.file_format_descriptor.csv_format_descriptor.charset.message #=> String
    #   resp.detected_metric_set_config.metric_source.s3_source_config.file_format_descriptor.csv_format_descriptor.contains_header.value #=> <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #   resp.detected_metric_set_config.metric_source.s3_source_config.file_format_descriptor.csv_format_descriptor.contains_header.confidence #=> String, one of "HIGH", "LOW", "NONE"
    #   resp.detected_metric_set_config.metric_source.s3_source_config.file_format_descriptor.csv_format_descriptor.contains_header.message #=> String
    #   resp.detected_metric_set_config.metric_source.s3_source_config.file_format_descriptor.csv_format_descriptor.delimiter.value #=> <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #   resp.detected_metric_set_config.metric_source.s3_source_config.file_format_descriptor.csv_format_descriptor.delimiter.confidence #=> String, one of "HIGH", "LOW", "NONE"
    #   resp.detected_metric_set_config.metric_source.s3_source_config.file_format_descriptor.csv_format_descriptor.delimiter.message #=> String
    #   resp.detected_metric_set_config.metric_source.s3_source_config.file_format_descriptor.csv_format_descriptor.header_list.value #=> <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #   resp.detected_metric_set_config.metric_source.s3_source_config.file_format_descriptor.csv_format_descriptor.header_list.confidence #=> String, one of "HIGH", "LOW", "NONE"
    #   resp.detected_metric_set_config.metric_source.s3_source_config.file_format_descriptor.csv_format_descriptor.header_list.message #=> String
    #   resp.detected_metric_set_config.metric_source.s3_source_config.file_format_descriptor.csv_format_descriptor.quote_symbol.value #=> <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #   resp.detected_metric_set_config.metric_source.s3_source_config.file_format_descriptor.csv_format_descriptor.quote_symbol.confidence #=> String, one of "HIGH", "LOW", "NONE"
    #   resp.detected_metric_set_config.metric_source.s3_source_config.file_format_descriptor.csv_format_descriptor.quote_symbol.message #=> String
    #   resp.detected_metric_set_config.metric_source.s3_source_config.file_format_descriptor.json_format_descriptor.file_compression.value #=> <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #   resp.detected_metric_set_config.metric_source.s3_source_config.file_format_descriptor.json_format_descriptor.file_compression.confidence #=> String, one of "HIGH", "LOW", "NONE"
    #   resp.detected_metric_set_config.metric_source.s3_source_config.file_format_descriptor.json_format_descriptor.file_compression.message #=> String
    #   resp.detected_metric_set_config.metric_source.s3_source_config.file_format_descriptor.json_format_descriptor.charset.value #=> <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #   resp.detected_metric_set_config.metric_source.s3_source_config.file_format_descriptor.json_format_descriptor.charset.confidence #=> String, one of "HIGH", "LOW", "NONE"
    #   resp.detected_metric_set_config.metric_source.s3_source_config.file_format_descriptor.json_format_descriptor.charset.message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutmetrics-2017-07-25/DetectMetricSetConfig AWS API Documentation
    #
    # @overload detect_metric_set_config(params = {})
    # @param [Hash] params ({})
    def detect_metric_set_config(params = {}, options = {})
      req = build_request(:detect_metric_set_config, params)
      req.send_request(options)
    end

    # Returns details about a group of anomalous metrics.
    #
    # @option params [required, String] :anomaly_group_id
    #   The ID of the anomaly group.
    #
    # @option params [required, String] :anomaly_detector_arn
    #   The Amazon Resource Name (ARN) of the anomaly detector.
    #
    # @return [Types::GetAnomalyGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAnomalyGroupResponse#anomaly_group #anomaly_group} => Types::AnomalyGroup
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_anomaly_group({
    #     anomaly_group_id: "UUID", # required
    #     anomaly_detector_arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.anomaly_group.start_time #=> String
    #   resp.anomaly_group.end_time #=> String
    #   resp.anomaly_group.anomaly_group_id #=> String
    #   resp.anomaly_group.anomaly_group_score #=> Float
    #   resp.anomaly_group.primary_metric_name #=> String
    #   resp.anomaly_group.metric_level_impact_list #=> Array
    #   resp.anomaly_group.metric_level_impact_list[0].metric_name #=> String
    #   resp.anomaly_group.metric_level_impact_list[0].num_time_series #=> Integer
    #   resp.anomaly_group.metric_level_impact_list[0].contribution_matrix.dimension_contribution_list #=> Array
    #   resp.anomaly_group.metric_level_impact_list[0].contribution_matrix.dimension_contribution_list[0].dimension_name #=> String
    #   resp.anomaly_group.metric_level_impact_list[0].contribution_matrix.dimension_contribution_list[0].dimension_value_contribution_list #=> Array
    #   resp.anomaly_group.metric_level_impact_list[0].contribution_matrix.dimension_contribution_list[0].dimension_value_contribution_list[0].dimension_value #=> String
    #   resp.anomaly_group.metric_level_impact_list[0].contribution_matrix.dimension_contribution_list[0].dimension_value_contribution_list[0].contribution_score #=> Float
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutmetrics-2017-07-25/GetAnomalyGroup AWS API Documentation
    #
    # @overload get_anomaly_group(params = {})
    # @param [Hash] params ({})
    def get_anomaly_group(params = {}, options = {})
      req = build_request(:get_anomaly_group, params)
      req.send_request(options)
    end

    # Returns details about the requested data quality metrics.
    #
    # @option params [required, String] :anomaly_detector_arn
    #   The Amazon Resource Name (ARN) of the anomaly detector that you want
    #   to investigate.
    #
    # @option params [String] :metric_set_arn
    #   The Amazon Resource Name (ARN) of a specific data quality metric set.
    #
    # @return [Types::GetDataQualityMetricsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDataQualityMetricsResponse#anomaly_detector_data_quality_metric_list #anomaly_detector_data_quality_metric_list} => Array&lt;Types::AnomalyDetectorDataQualityMetric&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_data_quality_metrics({
    #     anomaly_detector_arn: "Arn", # required
    #     metric_set_arn: "Arn",
    #   })
    #
    # @example Response structure
    #
    #   resp.anomaly_detector_data_quality_metric_list #=> Array
    #   resp.anomaly_detector_data_quality_metric_list[0].start_timestamp #=> Time
    #   resp.anomaly_detector_data_quality_metric_list[0].metric_set_data_quality_metric_list #=> Array
    #   resp.anomaly_detector_data_quality_metric_list[0].metric_set_data_quality_metric_list[0].metric_set_arn #=> String
    #   resp.anomaly_detector_data_quality_metric_list[0].metric_set_data_quality_metric_list[0].data_quality_metric_list #=> Array
    #   resp.anomaly_detector_data_quality_metric_list[0].metric_set_data_quality_metric_list[0].data_quality_metric_list[0].metric_type #=> String, one of "COLUMN_COMPLETENESS", "DIMENSION_UNIQUENESS", "TIME_SERIES_COUNT", "ROWS_PROCESSED", "ROWS_PARTIAL_COMPLIANCE", "INVALID_ROWS_COMPLIANCE", "BACKTEST_TRAINING_DATA_START_TIME_STAMP", "BACKTEST_TRAINING_DATA_END_TIME_STAMP", "BACKTEST_INFERENCE_DATA_START_TIME_STAMP", "BACKTEST_INFERENCE_DATA_END_TIME_STAMP"
    #   resp.anomaly_detector_data_quality_metric_list[0].metric_set_data_quality_metric_list[0].data_quality_metric_list[0].metric_description #=> String
    #   resp.anomaly_detector_data_quality_metric_list[0].metric_set_data_quality_metric_list[0].data_quality_metric_list[0].related_column_name #=> String
    #   resp.anomaly_detector_data_quality_metric_list[0].metric_set_data_quality_metric_list[0].data_quality_metric_list[0].metric_value #=> Float
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutmetrics-2017-07-25/GetDataQualityMetrics AWS API Documentation
    #
    # @overload get_data_quality_metrics(params = {})
    # @param [Hash] params ({})
    def get_data_quality_metrics(params = {}, options = {})
      req = build_request(:get_data_quality_metrics, params)
      req.send_request(options)
    end

    # Get feedback for an anomaly group.
    #
    # @option params [required, String] :anomaly_detector_arn
    #   The Amazon Resource Name (ARN) of the anomaly detector.
    #
    # @option params [required, Types::AnomalyGroupTimeSeries] :anomaly_group_time_series_feedback
    #   The anomalous metric and group ID.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return.
    #
    # @option params [String] :next_token
    #   Specify the pagination token that's returned by a previous request to
    #   retrieve the next page of results.
    #
    # @return [Types::GetFeedbackResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetFeedbackResponse#anomaly_group_time_series_feedback #anomaly_group_time_series_feedback} => Array&lt;Types::TimeSeriesFeedback&gt;
    #   * {Types::GetFeedbackResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_feedback({
    #     anomaly_detector_arn: "Arn", # required
    #     anomaly_group_time_series_feedback: { # required
    #       anomaly_group_id: "UUID", # required
    #       time_series_id: "TimeSeriesId",
    #     },
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.anomaly_group_time_series_feedback #=> Array
    #   resp.anomaly_group_time_series_feedback[0].time_series_id #=> String
    #   resp.anomaly_group_time_series_feedback[0].is_anomaly #=> Boolean
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutmetrics-2017-07-25/GetFeedback AWS API Documentation
    #
    # @overload get_feedback(params = {})
    # @param [Hash] params ({})
    def get_feedback(params = {}, options = {})
      req = build_request(:get_feedback, params)
      req.send_request(options)
    end

    # Returns a selection of sample records from an Amazon S3 datasource.
    #
    # @option params [Types::SampleDataS3SourceConfig] :s3_source_config
    #   A datasource bucket in Amazon S3.
    #
    # @return [Types::GetSampleDataResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetSampleDataResponse#header_values #header_values} => Array&lt;String&gt;
    #   * {Types::GetSampleDataResponse#sample_rows #sample_rows} => Array&lt;Array&lt;String&gt;&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_sample_data({
    #     s3_source_config: {
    #       role_arn: "Arn", # required
    #       templated_path_list: ["TemplatedPath"],
    #       historical_data_path_list: ["HistoricalDataPath"],
    #       file_format_descriptor: { # required
    #         csv_format_descriptor: {
    #           file_compression: "NONE", # accepts NONE, GZIP
    #           charset: "Charset",
    #           contains_header: false,
    #           delimiter: "Delimiter",
    #           header_list: ["ColumnName"],
    #           quote_symbol: "QuoteSymbol",
    #         },
    #         json_format_descriptor: {
    #           file_compression: "NONE", # accepts NONE, GZIP
    #           charset: "Charset",
    #         },
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.header_values #=> Array
    #   resp.header_values[0] #=> String
    #   resp.sample_rows #=> Array
    #   resp.sample_rows[0] #=> Array
    #   resp.sample_rows[0][0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutmetrics-2017-07-25/GetSampleData AWS API Documentation
    #
    # @overload get_sample_data(params = {})
    # @param [Hash] params ({})
    def get_sample_data(params = {}, options = {})
      req = build_request(:get_sample_data, params)
      req.send_request(options)
    end

    # Lists the alerts attached to a detector.
    #
    # Amazon Lookout for Metrics API actions are eventually consistent. If
    # you do a read operation on a resource immediately after creating or
    # modifying it, use retries to allow time for the write operation to
    # complete.
    #
    # @option params [String] :anomaly_detector_arn
    #   The ARN of the alert's detector.
    #
    # @option params [String] :next_token
    #   If the result of the previous request is truncated, the response
    #   includes a `NextToken`. To retrieve the next set of results, use the
    #   token in the next request. Tokens expire after 24 hours.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results that will be displayed by the request.
    #
    # @return [Types::ListAlertsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAlertsResponse#alert_summary_list #alert_summary_list} => Array&lt;Types::AlertSummary&gt;
    #   * {Types::ListAlertsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_alerts({
    #     anomaly_detector_arn: "Arn",
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.alert_summary_list #=> Array
    #   resp.alert_summary_list[0].alert_arn #=> String
    #   resp.alert_summary_list[0].anomaly_detector_arn #=> String
    #   resp.alert_summary_list[0].alert_name #=> String
    #   resp.alert_summary_list[0].alert_sensitivity_threshold #=> Integer
    #   resp.alert_summary_list[0].alert_type #=> String, one of "SNS", "LAMBDA"
    #   resp.alert_summary_list[0].alert_status #=> String, one of "ACTIVE", "INACTIVE"
    #   resp.alert_summary_list[0].last_modification_time #=> Time
    #   resp.alert_summary_list[0].creation_time #=> Time
    #   resp.alert_summary_list[0].tags #=> Hash
    #   resp.alert_summary_list[0].tags["TagKey"] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutmetrics-2017-07-25/ListAlerts AWS API Documentation
    #
    # @overload list_alerts(params = {})
    # @param [Hash] params ({})
    def list_alerts(params = {}, options = {})
      req = build_request(:list_alerts, params)
      req.send_request(options)
    end

    # Lists the detectors in the current AWS Region.
    #
    # Amazon Lookout for Metrics API actions are eventually consistent. If
    # you do a read operation on a resource immediately after creating or
    # modifying it, use retries to allow time for the write operation to
    # complete.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return.
    #
    # @option params [String] :next_token
    #   If the result of the previous request was truncated, the response
    #   includes a `NextToken`. To retrieve the next set of results, use the
    #   token in the next request. Tokens expire after 24 hours.
    #
    # @return [Types::ListAnomalyDetectorsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAnomalyDetectorsResponse#anomaly_detector_summary_list #anomaly_detector_summary_list} => Array&lt;Types::AnomalyDetectorSummary&gt;
    #   * {Types::ListAnomalyDetectorsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_anomaly_detectors({
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.anomaly_detector_summary_list #=> Array
    #   resp.anomaly_detector_summary_list[0].anomaly_detector_arn #=> String
    #   resp.anomaly_detector_summary_list[0].anomaly_detector_name #=> String
    #   resp.anomaly_detector_summary_list[0].anomaly_detector_description #=> String
    #   resp.anomaly_detector_summary_list[0].creation_time #=> Time
    #   resp.anomaly_detector_summary_list[0].last_modification_time #=> Time
    #   resp.anomaly_detector_summary_list[0].status #=> String, one of "ACTIVE", "ACTIVATING", "DELETING", "FAILED", "INACTIVE", "LEARNING", "BACK_TEST_ACTIVATING", "BACK_TEST_ACTIVE", "BACK_TEST_COMPLETE", "DEACTIVATED", "DEACTIVATING"
    #   resp.anomaly_detector_summary_list[0].tags #=> Hash
    #   resp.anomaly_detector_summary_list[0].tags["TagKey"] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutmetrics-2017-07-25/ListAnomalyDetectors AWS API Documentation
    #
    # @overload list_anomaly_detectors(params = {})
    # @param [Hash] params ({})
    def list_anomaly_detectors(params = {}, options = {})
      req = build_request(:list_anomaly_detectors, params)
      req.send_request(options)
    end

    # Returns a list of measures that are potential causes or effects of an
    # anomaly group.
    #
    # @option params [required, String] :anomaly_detector_arn
    #   The Amazon Resource Name (ARN) of the anomaly detector.
    #
    # @option params [required, String] :anomaly_group_id
    #   The ID of the anomaly group.
    #
    # @option params [String] :relationship_type_filter
    #   Filter for potential causes (`CAUSE_OF_INPUT_ANOMALY_GROUP`) or
    #   downstream effects (`EFFECT_OF_INPUT_ANOMALY_GROUP`) of the anomaly
    #   group.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return.
    #
    # @option params [String] :next_token
    #   Specify the pagination token that's returned by a previous request to
    #   retrieve the next page of results.
    #
    # @return [Types::ListAnomalyGroupRelatedMetricsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAnomalyGroupRelatedMetricsResponse#inter_metric_impact_list #inter_metric_impact_list} => Array&lt;Types::InterMetricImpactDetails&gt;
    #   * {Types::ListAnomalyGroupRelatedMetricsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_anomaly_group_related_metrics({
    #     anomaly_detector_arn: "Arn", # required
    #     anomaly_group_id: "UUID", # required
    #     relationship_type_filter: "CAUSE_OF_INPUT_ANOMALY_GROUP", # accepts CAUSE_OF_INPUT_ANOMALY_GROUP, EFFECT_OF_INPUT_ANOMALY_GROUP
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.inter_metric_impact_list #=> Array
    #   resp.inter_metric_impact_list[0].metric_name #=> String
    #   resp.inter_metric_impact_list[0].anomaly_group_id #=> String
    #   resp.inter_metric_impact_list[0].relationship_type #=> String, one of "CAUSE_OF_INPUT_ANOMALY_GROUP", "EFFECT_OF_INPUT_ANOMALY_GROUP"
    #   resp.inter_metric_impact_list[0].contribution_percentage #=> Float
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutmetrics-2017-07-25/ListAnomalyGroupRelatedMetrics AWS API Documentation
    #
    # @overload list_anomaly_group_related_metrics(params = {})
    # @param [Hash] params ({})
    def list_anomaly_group_related_metrics(params = {}, options = {})
      req = build_request(:list_anomaly_group_related_metrics, params)
      req.send_request(options)
    end

    # Returns a list of anomaly groups.
    #
    # @option params [required, String] :anomaly_detector_arn
    #   The Amazon Resource Name (ARN) of the anomaly detector.
    #
    # @option params [required, Integer] :sensitivity_threshold
    #   The minimum severity score for inclusion in the output.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return.
    #
    # @option params [String] :next_token
    #   Specify the pagination token that's returned by a previous request to
    #   retrieve the next page of results.
    #
    # @return [Types::ListAnomalyGroupSummariesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAnomalyGroupSummariesResponse#anomaly_group_summary_list #anomaly_group_summary_list} => Array&lt;Types::AnomalyGroupSummary&gt;
    #   * {Types::ListAnomalyGroupSummariesResponse#anomaly_group_statistics #anomaly_group_statistics} => Types::AnomalyGroupStatistics
    #   * {Types::ListAnomalyGroupSummariesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_anomaly_group_summaries({
    #     anomaly_detector_arn: "Arn", # required
    #     sensitivity_threshold: 1, # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.anomaly_group_summary_list #=> Array
    #   resp.anomaly_group_summary_list[0].start_time #=> String
    #   resp.anomaly_group_summary_list[0].end_time #=> String
    #   resp.anomaly_group_summary_list[0].anomaly_group_id #=> String
    #   resp.anomaly_group_summary_list[0].anomaly_group_score #=> Float
    #   resp.anomaly_group_summary_list[0].primary_metric_name #=> String
    #   resp.anomaly_group_statistics.evaluation_start_date #=> String
    #   resp.anomaly_group_statistics.total_count #=> Integer
    #   resp.anomaly_group_statistics.itemized_metric_stats_list #=> Array
    #   resp.anomaly_group_statistics.itemized_metric_stats_list[0].metric_name #=> String
    #   resp.anomaly_group_statistics.itemized_metric_stats_list[0].occurrence_count #=> Integer
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutmetrics-2017-07-25/ListAnomalyGroupSummaries AWS API Documentation
    #
    # @overload list_anomaly_group_summaries(params = {})
    # @param [Hash] params ({})
    def list_anomaly_group_summaries(params = {}, options = {})
      req = build_request(:list_anomaly_group_summaries, params)
      req.send_request(options)
    end

    # Gets a list of anomalous metrics for a measure in an anomaly group.
    #
    # @option params [required, String] :anomaly_detector_arn
    #   The Amazon Resource Name (ARN) of the anomaly detector.
    #
    # @option params [required, String] :anomaly_group_id
    #   The ID of the anomaly group.
    #
    # @option params [required, String] :metric_name
    #   The name of the measure field.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return.
    #
    # @option params [String] :next_token
    #   Specify the pagination token that's returned by a previous request to
    #   retrieve the next page of results.
    #
    # @return [Types::ListAnomalyGroupTimeSeriesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAnomalyGroupTimeSeriesResponse#anomaly_group_id #anomaly_group_id} => String
    #   * {Types::ListAnomalyGroupTimeSeriesResponse#metric_name #metric_name} => String
    #   * {Types::ListAnomalyGroupTimeSeriesResponse#timestamp_list #timestamp_list} => Array&lt;String&gt;
    #   * {Types::ListAnomalyGroupTimeSeriesResponse#next_token #next_token} => String
    #   * {Types::ListAnomalyGroupTimeSeriesResponse#time_series_list #time_series_list} => Array&lt;Types::TimeSeries&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_anomaly_group_time_series({
    #     anomaly_detector_arn: "Arn", # required
    #     anomaly_group_id: "UUID", # required
    #     metric_name: "MetricName", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.anomaly_group_id #=> String
    #   resp.metric_name #=> String
    #   resp.timestamp_list #=> Array
    #   resp.timestamp_list[0] #=> String
    #   resp.next_token #=> String
    #   resp.time_series_list #=> Array
    #   resp.time_series_list[0].time_series_id #=> String
    #   resp.time_series_list[0].dimension_list #=> Array
    #   resp.time_series_list[0].dimension_list[0].dimension_name #=> String
    #   resp.time_series_list[0].dimension_list[0].dimension_value #=> String
    #   resp.time_series_list[0].metric_value_list #=> Array
    #   resp.time_series_list[0].metric_value_list[0] #=> Float
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutmetrics-2017-07-25/ListAnomalyGroupTimeSeries AWS API Documentation
    #
    # @overload list_anomaly_group_time_series(params = {})
    # @param [Hash] params ({})
    def list_anomaly_group_time_series(params = {}, options = {})
      req = build_request(:list_anomaly_group_time_series, params)
      req.send_request(options)
    end

    # Lists the datasets in the current AWS Region.
    #
    # Amazon Lookout for Metrics API actions are eventually consistent. If
    # you do a read operation on a resource immediately after creating or
    # modifying it, use retries to allow time for the write operation to
    # complete.
    #
    # @option params [String] :anomaly_detector_arn
    #   The ARN of the anomaly detector containing the metrics sets to list.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return.
    #
    # @option params [String] :next_token
    #   If the result of the previous request was truncated, the response
    #   includes a `NextToken`. To retrieve the next set of results, use the
    #   token in the next request. Tokens expire after 24 hours.
    #
    # @return [Types::ListMetricSetsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListMetricSetsResponse#metric_set_summary_list #metric_set_summary_list} => Array&lt;Types::MetricSetSummary&gt;
    #   * {Types::ListMetricSetsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_metric_sets({
    #     anomaly_detector_arn: "Arn",
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.metric_set_summary_list #=> Array
    #   resp.metric_set_summary_list[0].metric_set_arn #=> String
    #   resp.metric_set_summary_list[0].anomaly_detector_arn #=> String
    #   resp.metric_set_summary_list[0].metric_set_description #=> String
    #   resp.metric_set_summary_list[0].metric_set_name #=> String
    #   resp.metric_set_summary_list[0].creation_time #=> Time
    #   resp.metric_set_summary_list[0].last_modification_time #=> Time
    #   resp.metric_set_summary_list[0].tags #=> Hash
    #   resp.metric_set_summary_list[0].tags["TagKey"] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutmetrics-2017-07-25/ListMetricSets AWS API Documentation
    #
    # @overload list_metric_sets(params = {})
    # @param [Hash] params ({})
    def list_metric_sets(params = {}, options = {})
      req = build_request(:list_metric_sets, params)
      req.send_request(options)
    end

    # Gets a list of [tags][1] for a detector, dataset, or alert.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/lookoutmetrics/latest/dev/detectors-tags.html
    #
    # @option params [required, String] :resource_arn
    #   The resource's Amazon Resource Name (ARN).
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Hash&lt;String,String&gt;
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutmetrics-2017-07-25/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Add feedback for an anomalous metric.
    #
    # @option params [required, String] :anomaly_detector_arn
    #   The Amazon Resource Name (ARN) of the anomaly detector.
    #
    # @option params [required, Types::AnomalyGroupTimeSeriesFeedback] :anomaly_group_time_series_feedback
    #   Feedback for an anomalous metric.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_feedback({
    #     anomaly_detector_arn: "Arn", # required
    #     anomaly_group_time_series_feedback: { # required
    #       anomaly_group_id: "UUID", # required
    #       time_series_id: "TimeSeriesId", # required
    #       is_anomaly: false, # required
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutmetrics-2017-07-25/PutFeedback AWS API Documentation
    #
    # @overload put_feedback(params = {})
    # @param [Hash] params ({})
    def put_feedback(params = {}, options = {})
      req = build_request(:put_feedback, params)
      req.send_request(options)
    end

    # Adds [tags][1] to a detector, dataset, or alert.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/lookoutmetrics/latest/dev/detectors-tags.html
    #
    # @option params [required, String] :resource_arn
    #   The resource's Amazon Resource Name (ARN).
    #
    # @option params [required, Hash<String,String>] :tags
    #   Tags to apply to the resource. Tag keys and values can contain
    #   letters, numbers, spaces, and the following symbols: `_.:/=+@-`
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutmetrics-2017-07-25/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes [tags][1] from a detector, dataset, or alert.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/lookoutmetrics/latest/dev/detectors-tags.html
    #
    # @option params [required, String] :resource_arn
    #   The resource's Amazon Resource Name (ARN).
    #
    # @option params [required, Array<String>] :tag_keys
    #   Keys to remove from the resource's tags.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutmetrics-2017-07-25/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Make changes to an existing alert.
    #
    # @option params [required, String] :alert_arn
    #   The ARN of the alert to update.
    #
    # @option params [String] :alert_description
    #   A description of the alert.
    #
    # @option params [Integer] :alert_sensitivity_threshold
    #   An integer from 0 to 100 specifying the alert sensitivity threshold.
    #
    # @option params [Types::Action] :action
    #   Action that will be triggered when there is an alert.
    #
    # @option params [Types::AlertFilters] :alert_filters
    #   The configuration of the alert filters, containing MetricList and
    #   DimensionFilterList.
    #
    # @return [Types::UpdateAlertResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateAlertResponse#alert_arn #alert_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_alert({
    #     alert_arn: "Arn", # required
    #     alert_description: "AlertDescription",
    #     alert_sensitivity_threshold: 1,
    #     action: {
    #       sns_configuration: {
    #         role_arn: "Arn", # required
    #         sns_topic_arn: "Arn", # required
    #         sns_format: "LONG_TEXT", # accepts LONG_TEXT, SHORT_TEXT, JSON
    #       },
    #       lambda_configuration: {
    #         role_arn: "Arn", # required
    #         lambda_arn: "Arn", # required
    #       },
    #     },
    #     alert_filters: {
    #       metric_list: ["MetricName"],
    #       dimension_filter_list: [
    #         {
    #           dimension_name: "ColumnName",
    #           dimension_value_list: ["DimensionValue"],
    #         },
    #       ],
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.alert_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutmetrics-2017-07-25/UpdateAlert AWS API Documentation
    #
    # @overload update_alert(params = {})
    # @param [Hash] params ({})
    def update_alert(params = {}, options = {})
      req = build_request(:update_alert, params)
      req.send_request(options)
    end

    # Updates a detector. After activation, you can only change a
    # detector's ingestion delay and description.
    #
    # @option params [required, String] :anomaly_detector_arn
    #   The ARN of the detector to update.
    #
    # @option params [String] :kms_key_arn
    #   The Amazon Resource Name (ARN) of an AWS KMS encryption key.
    #
    # @option params [String] :anomaly_detector_description
    #   The updated detector description.
    #
    # @option params [Types::AnomalyDetectorConfig] :anomaly_detector_config
    #   Contains information about the configuration to which the detector
    #   will be updated.
    #
    # @return [Types::UpdateAnomalyDetectorResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateAnomalyDetectorResponse#anomaly_detector_arn #anomaly_detector_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_anomaly_detector({
    #     anomaly_detector_arn: "Arn", # required
    #     kms_key_arn: "KmsKeyArn",
    #     anomaly_detector_description: "AnomalyDetectorDescription",
    #     anomaly_detector_config: {
    #       anomaly_detector_frequency: "P1D", # accepts P1D, PT1H, PT10M, PT5M
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.anomaly_detector_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutmetrics-2017-07-25/UpdateAnomalyDetector AWS API Documentation
    #
    # @overload update_anomaly_detector(params = {})
    # @param [Hash] params ({})
    def update_anomaly_detector(params = {}, options = {})
      req = build_request(:update_anomaly_detector, params)
      req.send_request(options)
    end

    # Updates a dataset.
    #
    # @option params [required, String] :metric_set_arn
    #   The ARN of the dataset to update.
    #
    # @option params [String] :metric_set_description
    #   The dataset's description.
    #
    # @option params [Array<Types::Metric>] :metric_list
    #   The metric list.
    #
    # @option params [Integer] :offset
    #   After an interval ends, the amount of seconds that the detector waits
    #   before importing data. Offset is only supported for S3, Redshift,
    #   Athena and datasources.
    #
    # @option params [Types::TimestampColumn] :timestamp_column
    #   The timestamp column.
    #
    # @option params [Array<String>] :dimension_list
    #   The dimension list.
    #
    # @option params [String] :metric_set_frequency
    #   The dataset's interval.
    #
    # @option params [Types::MetricSource] :metric_source
    #   Contains information about source data used to generate metrics.
    #
    # @option params [Array<Types::MetricSetDimensionFilter>] :dimension_filter_list
    #   Describes a list of filters for choosing specific dimensions and
    #   specific values. Each filter consists of the dimension and one of its
    #   values that you want to include. When multiple dimensions or values
    #   are specified, the dimensions are joined with an AND operation and the
    #   values are joined with an OR operation.
    #
    # @return [Types::UpdateMetricSetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateMetricSetResponse#metric_set_arn #metric_set_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_metric_set({
    #     metric_set_arn: "Arn", # required
    #     metric_set_description: "MetricSetDescription",
    #     metric_list: [
    #       {
    #         metric_name: "ColumnName", # required
    #         aggregation_function: "AVG", # required, accepts AVG, SUM
    #         namespace: "Namespace",
    #       },
    #     ],
    #     offset: 1,
    #     timestamp_column: {
    #       column_name: "ColumnName",
    #       column_format: "DateTimeFormat",
    #     },
    #     dimension_list: ["ColumnName"],
    #     metric_set_frequency: "P1D", # accepts P1D, PT1H, PT10M, PT5M
    #     metric_source: {
    #       s3_source_config: {
    #         role_arn: "Arn",
    #         templated_path_list: ["TemplatedPath"],
    #         historical_data_path_list: ["HistoricalDataPath"],
    #         file_format_descriptor: {
    #           csv_format_descriptor: {
    #             file_compression: "NONE", # accepts NONE, GZIP
    #             charset: "Charset",
    #             contains_header: false,
    #             delimiter: "Delimiter",
    #             header_list: ["ColumnName"],
    #             quote_symbol: "QuoteSymbol",
    #           },
    #           json_format_descriptor: {
    #             file_compression: "NONE", # accepts NONE, GZIP
    #             charset: "Charset",
    #           },
    #         },
    #       },
    #       app_flow_config: {
    #         role_arn: "Arn",
    #         flow_name: "FlowName",
    #       },
    #       cloud_watch_config: {
    #         role_arn: "Arn",
    #         back_test_configuration: {
    #           run_back_test_mode: false, # required
    #         },
    #       },
    #       rds_source_config: {
    #         db_instance_identifier: "RDSDatabaseIdentifier",
    #         database_host: "DatabaseHost",
    #         database_port: 1,
    #         secret_manager_arn: "PoirotSecretManagerArn",
    #         database_name: "RDSDatabaseName",
    #         table_name: "TableName",
    #         role_arn: "Arn",
    #         vpc_configuration: {
    #           subnet_id_list: ["SubnetId"], # required
    #           security_group_id_list: ["SecurityGroupId"], # required
    #         },
    #       },
    #       redshift_source_config: {
    #         cluster_identifier: "RedshiftClusterIdentifier",
    #         database_host: "DatabaseHost",
    #         database_port: 1,
    #         secret_manager_arn: "PoirotSecretManagerArn",
    #         database_name: "RedshiftDatabaseName",
    #         table_name: "TableName",
    #         role_arn: "Arn",
    #         vpc_configuration: {
    #           subnet_id_list: ["SubnetId"], # required
    #           security_group_id_list: ["SecurityGroupId"], # required
    #         },
    #       },
    #       athena_source_config: {
    #         role_arn: "Arn",
    #         database_name: "AthenaDatabaseName",
    #         data_catalog: "AthenaDataCatalog",
    #         table_name: "AthenaTableName",
    #         work_group_name: "AthenaWorkGroupName",
    #         s3_results_path: "AthenaS3ResultsPath",
    #         back_test_configuration: {
    #           run_back_test_mode: false, # required
    #         },
    #       },
    #     },
    #     dimension_filter_list: [
    #       {
    #         name: "ColumnName",
    #         filter_list: [
    #           {
    #             dimension_value: "DimensionValue",
    #             filter_operation: "EQUALS", # accepts EQUALS
    #           },
    #         ],
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.metric_set_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutmetrics-2017-07-25/UpdateMetricSet AWS API Documentation
    #
    # @overload update_metric_set(params = {})
    # @param [Hash] params ({})
    def update_metric_set(params = {}, options = {})
      req = build_request(:update_metric_set, params)
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
      context[:gem_name] = 'aws-sdk-lookoutmetrics'
      context[:gem_version] = '1.29.0'
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
