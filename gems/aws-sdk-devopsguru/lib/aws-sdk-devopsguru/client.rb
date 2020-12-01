# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
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
require 'aws-sdk-core/plugins/signature_v4.rb'
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
    add_plugin(Aws::Plugins::SignatureV4)
    add_plugin(Aws::Plugins::Protocols::RestJson)

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
    #       enable retries and extended timeouts.
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
    #   @option options [Boolean] :disable_host_prefix_injection (false)
    #     Set to true to disable SDK automatically adding host prefix
    #     to default service endpoint when available.
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
    #   @option options [Boolean] :validate_params (true)
    #     When `true`, request parameters are validated before
    #     sending the request.
    #
    #   @option options [URI::HTTP,String] :http_proxy A proxy to send
    #     requests through.  Formatted like 'http://proxy.com:123'.
    #
    #   @option options [Float] :http_open_timeout (15) The number of
    #     seconds to wait when opening a HTTP session before raising a
    #     `Timeout::Error`.
    #
    #   @option options [Integer] :http_read_timeout (60) The default
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

    # @option params [required, Types::NotificationChannelConfig] :config
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
    #         topic_arn: "__stringMin36Max1024PatternArnAwsAZ09SnsAZ09D12",
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

    # @return [Types::DescribeAccountHealthResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeAccountHealthResponse#metrics_analyzed #metrics_analyzed} => Integer
    #   * {Types::DescribeAccountHealthResponse#open_proactive_insights #open_proactive_insights} => Integer
    #   * {Types::DescribeAccountHealthResponse#open_reactive_insights #open_reactive_insights} => Integer
    #
    # @example Response structure
    #
    #   resp.metrics_analyzed #=> Integer
    #   resp.open_proactive_insights #=> Integer
    #   resp.open_reactive_insights #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/DescribeAccountHealth AWS API Documentation
    #
    # @overload describe_account_health(params = {})
    # @param [Hash] params ({})
    def describe_account_health(params = {}, options = {})
      req = build_request(:describe_account_health, params)
      req.send_request(options)
    end

    # @option params [required, Time,DateTime,Date,Integer,String] :from_time
    #
    # @option params [Time,DateTime,Date,Integer,String] :to_time
    #
    # @return [Types::DescribeAccountOverviewResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeAccountOverviewResponse#mean_time_to_recover_in_milliseconds #mean_time_to_recover_in_milliseconds} => Integer
    #   * {Types::DescribeAccountOverviewResponse#proactive_insights #proactive_insights} => Integer
    #   * {Types::DescribeAccountOverviewResponse#reactive_insights #reactive_insights} => Integer
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
    #   resp.mean_time_to_recover_in_milliseconds #=> Integer
    #   resp.proactive_insights #=> Integer
    #   resp.reactive_insights #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/DescribeAccountOverview AWS API Documentation
    #
    # @overload describe_account_overview(params = {})
    # @param [Hash] params ({})
    def describe_account_overview(params = {}, options = {})
      req = build_request(:describe_account_overview, params)
      req.send_request(options)
    end

    # @option params [required, String] :id
    #
    # @return [Types::DescribeAnomalyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeAnomalyResponse#proactive_anomaly #proactive_anomaly} => Types::ProactiveAnomaly
    #   * {Types::DescribeAnomalyResponse#reactive_anomaly #reactive_anomaly} => Types::ReactiveAnomaly
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_anomaly({
    #     id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.proactive_anomaly.anomaly_time_range.end_time #=> Time
    #   resp.proactive_anomaly.anomaly_time_range.start_time #=> Time
    #   resp.proactive_anomaly.associated_insight_id #=> String
    #   resp.proactive_anomaly.id #=> String
    #   resp.proactive_anomaly.limit #=> Float
    #   resp.proactive_anomaly.prediction_time_range.end_time #=> Time
    #   resp.proactive_anomaly.prediction_time_range.start_time #=> Time
    #   resp.proactive_anomaly.resource_collection.cloud_formation.stack_names #=> Array
    #   resp.proactive_anomaly.resource_collection.cloud_formation.stack_names[0] #=> String
    #   resp.proactive_anomaly.severity #=> String, one of "LOW", "MEDIUM", "HIGH"
    #   resp.proactive_anomaly.source_details.cloud_watch_metrics #=> Array
    #   resp.proactive_anomaly.source_details.cloud_watch_metrics[0].dimensions #=> Array
    #   resp.proactive_anomaly.source_details.cloud_watch_metrics[0].dimensions[0].name #=> String
    #   resp.proactive_anomaly.source_details.cloud_watch_metrics[0].dimensions[0].value #=> String
    #   resp.proactive_anomaly.source_details.cloud_watch_metrics[0].metric_name #=> String
    #   resp.proactive_anomaly.source_details.cloud_watch_metrics[0].namespace #=> String
    #   resp.proactive_anomaly.source_details.cloud_watch_metrics[0].period #=> Integer
    #   resp.proactive_anomaly.source_details.cloud_watch_metrics[0].stat #=> String, one of "Sum", "Average", "SampleCount", "Minimum", "Maximum", "p99", "p90", "p50"
    #   resp.proactive_anomaly.source_details.cloud_watch_metrics[0].unit #=> String
    #   resp.proactive_anomaly.status #=> String, one of "ONGOING", "CLOSED"
    #   resp.proactive_anomaly.update_time #=> Time
    #   resp.reactive_anomaly.anomaly_time_range.end_time #=> Time
    #   resp.reactive_anomaly.anomaly_time_range.start_time #=> Time
    #   resp.reactive_anomaly.associated_insight_id #=> String
    #   resp.reactive_anomaly.id #=> String
    #   resp.reactive_anomaly.resource_collection.cloud_formation.stack_names #=> Array
    #   resp.reactive_anomaly.resource_collection.cloud_formation.stack_names[0] #=> String
    #   resp.reactive_anomaly.severity #=> String, one of "LOW", "MEDIUM", "HIGH"
    #   resp.reactive_anomaly.source_details.cloud_watch_metrics #=> Array
    #   resp.reactive_anomaly.source_details.cloud_watch_metrics[0].dimensions #=> Array
    #   resp.reactive_anomaly.source_details.cloud_watch_metrics[0].dimensions[0].name #=> String
    #   resp.reactive_anomaly.source_details.cloud_watch_metrics[0].dimensions[0].value #=> String
    #   resp.reactive_anomaly.source_details.cloud_watch_metrics[0].metric_name #=> String
    #   resp.reactive_anomaly.source_details.cloud_watch_metrics[0].namespace #=> String
    #   resp.reactive_anomaly.source_details.cloud_watch_metrics[0].period #=> Integer
    #   resp.reactive_anomaly.source_details.cloud_watch_metrics[0].stat #=> String, one of "Sum", "Average", "SampleCount", "Minimum", "Maximum", "p99", "p90", "p50"
    #   resp.reactive_anomaly.source_details.cloud_watch_metrics[0].unit #=> String
    #   resp.reactive_anomaly.status #=> String, one of "ONGOING", "CLOSED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/DescribeAnomaly AWS API Documentation
    #
    # @overload describe_anomaly(params = {})
    # @param [Hash] params ({})
    def describe_anomaly(params = {}, options = {})
      req = build_request(:describe_anomaly, params)
      req.send_request(options)
    end

    # @option params [required, String] :id
    #
    # @return [Types::DescribeInsightResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeInsightResponse#proactive_insight #proactive_insight} => Types::ProactiveInsight
    #   * {Types::DescribeInsightResponse#reactive_insight #reactive_insight} => Types::ReactiveInsight
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_insight({
    #     id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.proactive_insight.id #=> String
    #   resp.proactive_insight.insight_time_range.end_time #=> Time
    #   resp.proactive_insight.insight_time_range.start_time #=> Time
    #   resp.proactive_insight.name #=> String
    #   resp.proactive_insight.prediction_time_range.end_time #=> Time
    #   resp.proactive_insight.prediction_time_range.start_time #=> Time
    #   resp.proactive_insight.resource_collection.cloud_formation.stack_names #=> Array
    #   resp.proactive_insight.resource_collection.cloud_formation.stack_names[0] #=> String
    #   resp.proactive_insight.severity #=> String, one of "LOW", "MEDIUM", "HIGH"
    #   resp.proactive_insight.ssm_ops_item_id #=> String
    #   resp.proactive_insight.status #=> String, one of "ONGOING", "CLOSED"
    #   resp.reactive_insight.id #=> String
    #   resp.reactive_insight.insight_time_range.end_time #=> Time
    #   resp.reactive_insight.insight_time_range.start_time #=> Time
    #   resp.reactive_insight.name #=> String
    #   resp.reactive_insight.resource_collection.cloud_formation.stack_names #=> Array
    #   resp.reactive_insight.resource_collection.cloud_formation.stack_names[0] #=> String
    #   resp.reactive_insight.severity #=> String, one of "LOW", "MEDIUM", "HIGH"
    #   resp.reactive_insight.ssm_ops_item_id #=> String
    #   resp.reactive_insight.status #=> String, one of "ONGOING", "CLOSED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/DescribeInsight AWS API Documentation
    #
    # @overload describe_insight(params = {})
    # @param [Hash] params ({})
    def describe_insight(params = {}, options = {})
      req = build_request(:describe_insight, params)
      req.send_request(options)
    end

    # @option params [String] :next_token
    #
    # @option params [required, String] :resource_collection_type
    #
    # @return [Types::DescribeResourceCollectionHealthResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeResourceCollectionHealthResponse#cloud_formation #cloud_formation} => Array&lt;Types::CloudFormationHealth&gt;
    #   * {Types::DescribeResourceCollectionHealthResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_resource_collection_health({
    #     next_token: "__string",
    #     resource_collection_type: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.cloud_formation #=> Array
    #   resp.cloud_formation[0].insight.mean_time_to_recover_in_milliseconds #=> Integer
    #   resp.cloud_formation[0].insight.open_proactive_insights #=> Integer
    #   resp.cloud_formation[0].insight.open_reactive_insights #=> Integer
    #   resp.cloud_formation[0].stack_name #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/DescribeResourceCollectionHealth AWS API Documentation
    #
    # @overload describe_resource_collection_health(params = {})
    # @param [Hash] params ({})
    def describe_resource_collection_health(params = {}, options = {})
      req = build_request(:describe_resource_collection_health, params)
      req.send_request(options)
    end

    # @return [Types::DescribeServiceIntegrationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeServiceIntegrationResponse#service_integration #service_integration} => Types::ServiceIntegrationConfig
    #
    # @example Response structure
    #
    #   resp.service_integration.ops_center.opt_in_status #=> String, one of "ENABLED", "DISABLED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/DescribeServiceIntegration AWS API Documentation
    #
    # @overload describe_service_integration(params = {})
    # @param [Hash] params ({})
    def describe_service_integration(params = {}, options = {})
      req = build_request(:describe_service_integration, params)
      req.send_request(options)
    end

    # @option params [String] :next_token
    #
    # @option params [required, String] :resource_collection_type
    #
    # @return [Types::GetResourceCollectionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetResourceCollectionResponse#next_token #next_token} => String
    #   * {Types::GetResourceCollectionResponse#resource_collection #resource_collection} => Types::ResourceCollectionFilter
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_resource_collection({
    #     next_token: "__string",
    #     resource_collection_type: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.resource_collection.cloud_formation.stack_names #=> Array
    #   resp.resource_collection.cloud_formation.stack_names[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/GetResourceCollection AWS API Documentation
    #
    # @overload get_resource_collection(params = {})
    # @param [Hash] params ({})
    def get_resource_collection(params = {}, options = {})
      req = build_request(:get_resource_collection, params)
      req.send_request(options)
    end

    # @option params [required, String] :insight_id
    #
    # @option params [Integer] :max_results
    #
    # @option params [String] :next_token
    #
    # @option params [Types::StartTimeRange] :start_time_range
    #
    # @return [Types::ListAnomaliesForInsightResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAnomaliesForInsightResponse#next_token #next_token} => String
    #   * {Types::ListAnomaliesForInsightResponse#proactive_anomalies #proactive_anomalies} => Array&lt;Types::ProactiveAnomalySummary&gt;
    #   * {Types::ListAnomaliesForInsightResponse#reactive_anomalies #reactive_anomalies} => Array&lt;Types::ReactiveAnomalySummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_anomalies_for_insight({
    #     insight_id: "__string", # required
    #     max_results: 1,
    #     next_token: "__stringMin36Max36PatternAF098AF094AF094AF094AF0912",
    #     start_time_range: {
    #       from_time: Time.now,
    #       to_time: Time.now,
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.proactive_anomalies #=> Array
    #   resp.proactive_anomalies[0].anomaly_time_range.end_time #=> Time
    #   resp.proactive_anomalies[0].anomaly_time_range.start_time #=> Time
    #   resp.proactive_anomalies[0].associated_insight_id #=> String
    #   resp.proactive_anomalies[0].id #=> String
    #   resp.proactive_anomalies[0].limit #=> Float
    #   resp.proactive_anomalies[0].prediction_time_range.end_time #=> Time
    #   resp.proactive_anomalies[0].prediction_time_range.start_time #=> Time
    #   resp.proactive_anomalies[0].resource_collection.cloud_formation.stack_names #=> Array
    #   resp.proactive_anomalies[0].resource_collection.cloud_formation.stack_names[0] #=> String
    #   resp.proactive_anomalies[0].severity #=> String, one of "LOW", "MEDIUM", "HIGH"
    #   resp.proactive_anomalies[0].source_details.cloud_watch_metrics #=> Array
    #   resp.proactive_anomalies[0].source_details.cloud_watch_metrics[0].dimensions #=> Array
    #   resp.proactive_anomalies[0].source_details.cloud_watch_metrics[0].dimensions[0].name #=> String
    #   resp.proactive_anomalies[0].source_details.cloud_watch_metrics[0].dimensions[0].value #=> String
    #   resp.proactive_anomalies[0].source_details.cloud_watch_metrics[0].metric_name #=> String
    #   resp.proactive_anomalies[0].source_details.cloud_watch_metrics[0].namespace #=> String
    #   resp.proactive_anomalies[0].source_details.cloud_watch_metrics[0].period #=> Integer
    #   resp.proactive_anomalies[0].source_details.cloud_watch_metrics[0].stat #=> String, one of "Sum", "Average", "SampleCount", "Minimum", "Maximum", "p99", "p90", "p50"
    #   resp.proactive_anomalies[0].source_details.cloud_watch_metrics[0].unit #=> String
    #   resp.proactive_anomalies[0].status #=> String, one of "ONGOING", "CLOSED"
    #   resp.proactive_anomalies[0].update_time #=> Time
    #   resp.reactive_anomalies #=> Array
    #   resp.reactive_anomalies[0].anomaly_time_range.end_time #=> Time
    #   resp.reactive_anomalies[0].anomaly_time_range.start_time #=> Time
    #   resp.reactive_anomalies[0].associated_insight_id #=> String
    #   resp.reactive_anomalies[0].id #=> String
    #   resp.reactive_anomalies[0].resource_collection.cloud_formation.stack_names #=> Array
    #   resp.reactive_anomalies[0].resource_collection.cloud_formation.stack_names[0] #=> String
    #   resp.reactive_anomalies[0].severity #=> String, one of "LOW", "MEDIUM", "HIGH"
    #   resp.reactive_anomalies[0].source_details.cloud_watch_metrics #=> Array
    #   resp.reactive_anomalies[0].source_details.cloud_watch_metrics[0].dimensions #=> Array
    #   resp.reactive_anomalies[0].source_details.cloud_watch_metrics[0].dimensions[0].name #=> String
    #   resp.reactive_anomalies[0].source_details.cloud_watch_metrics[0].dimensions[0].value #=> String
    #   resp.reactive_anomalies[0].source_details.cloud_watch_metrics[0].metric_name #=> String
    #   resp.reactive_anomalies[0].source_details.cloud_watch_metrics[0].namespace #=> String
    #   resp.reactive_anomalies[0].source_details.cloud_watch_metrics[0].period #=> Integer
    #   resp.reactive_anomalies[0].source_details.cloud_watch_metrics[0].stat #=> String, one of "Sum", "Average", "SampleCount", "Minimum", "Maximum", "p99", "p90", "p50"
    #   resp.reactive_anomalies[0].source_details.cloud_watch_metrics[0].unit #=> String
    #   resp.reactive_anomalies[0].status #=> String, one of "ONGOING", "CLOSED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/ListAnomaliesForInsight AWS API Documentation
    #
    # @overload list_anomalies_for_insight(params = {})
    # @param [Hash] params ({})
    def list_anomalies_for_insight(params = {}, options = {})
      req = build_request(:list_anomalies_for_insight, params)
      req.send_request(options)
    end

    # @option params [required, Types::ListEventsFilters] :filters
    #
    # @option params [Integer] :max_results
    #
    # @option params [String] :next_token
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
    #       data_source: "AWS_CLOUD_TRAIL", # accepts AWS_CLOUD_TRAIL, AWS_CODE_DEPLOY
    #       event_class: "INFRASTRUCTURE", # accepts INFRASTRUCTURE, DEPLOYMENT, SECURITY_CHANGE, CONFIG_CHANGE, SCHEMA_CHANGE
    #       event_source: "__stringMin10Max50PatternAZAZ09AmazonawsComAwsEvents",
    #       event_time_range: {
    #         from_time: Time.now, # required
    #         to_time: Time.now, # required
    #       },
    #       insight_id: "__stringMin1Max100PatternW",
    #       resource_collection: {
    #         cloud_formation: {
    #           stack_names: ["__stringMin1Max128PatternAZAZAZAZ09"],
    #         },
    #       },
    #     },
    #     max_results: 1,
    #     next_token: "__stringMin36Max36PatternAF098AF094AF094AF094AF0912",
    #   })
    #
    # @example Response structure
    #
    #   resp.events #=> Array
    #   resp.events[0].data_source #=> String, one of "AWS_CLOUD_TRAIL", "AWS_CODE_DEPLOY"
    #   resp.events[0].event_class #=> String, one of "INFRASTRUCTURE", "DEPLOYMENT", "SECURITY_CHANGE", "CONFIG_CHANGE", "SCHEMA_CHANGE"
    #   resp.events[0].event_source #=> String
    #   resp.events[0].id #=> String
    #   resp.events[0].name #=> String
    #   resp.events[0].resource_collection.cloud_formation.stack_names #=> Array
    #   resp.events[0].resource_collection.cloud_formation.stack_names[0] #=> String
    #   resp.events[0].resources #=> Array
    #   resp.events[0].resources[0].arn #=> String
    #   resp.events[0].resources[0].name #=> String
    #   resp.events[0].resources[0].type #=> String
    #   resp.events[0].time #=> Time
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

    # @option params [Integer] :max_results
    #
    # @option params [String] :next_token
    #
    # @option params [required, Types::ListInsightsStatusFilter] :status_filter
    #
    # @return [Types::ListInsightsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListInsightsResponse#next_token #next_token} => String
    #   * {Types::ListInsightsResponse#proactive_insights #proactive_insights} => Array&lt;Types::ProactiveInsightSummary&gt;
    #   * {Types::ListInsightsResponse#reactive_insights #reactive_insights} => Array&lt;Types::ReactiveInsightSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_insights({
    #     max_results: 1,
    #     next_token: "__stringMin36Max36PatternAF098AF094AF094AF094AF0912",
    #     status_filter: { # required
    #       any: {
    #         start_time_range: { # required
    #           from_time: Time.now,
    #           to_time: Time.now,
    #         },
    #         type: "REACTIVE", # required, accepts REACTIVE, PROACTIVE
    #       },
    #       closed: {
    #         end_time_range: { # required
    #           from_time: Time.now,
    #           to_time: Time.now,
    #         },
    #         type: "REACTIVE", # required, accepts REACTIVE, PROACTIVE
    #       },
    #       ongoing: {
    #         type: "REACTIVE", # required, accepts REACTIVE, PROACTIVE
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.proactive_insights #=> Array
    #   resp.proactive_insights[0].id #=> String
    #   resp.proactive_insights[0].insight_time_range.end_time #=> Time
    #   resp.proactive_insights[0].insight_time_range.start_time #=> Time
    #   resp.proactive_insights[0].name #=> String
    #   resp.proactive_insights[0].prediction_time_range.end_time #=> Time
    #   resp.proactive_insights[0].prediction_time_range.start_time #=> Time
    #   resp.proactive_insights[0].resource_collection.cloud_formation.stack_names #=> Array
    #   resp.proactive_insights[0].resource_collection.cloud_formation.stack_names[0] #=> String
    #   resp.proactive_insights[0].severity #=> String, one of "LOW", "MEDIUM", "HIGH"
    #   resp.proactive_insights[0].status #=> String, one of "ONGOING", "CLOSED"
    #   resp.reactive_insights #=> Array
    #   resp.reactive_insights[0].id #=> String
    #   resp.reactive_insights[0].insight_time_range.end_time #=> Time
    #   resp.reactive_insights[0].insight_time_range.start_time #=> Time
    #   resp.reactive_insights[0].name #=> String
    #   resp.reactive_insights[0].resource_collection.cloud_formation.stack_names #=> Array
    #   resp.reactive_insights[0].resource_collection.cloud_formation.stack_names[0] #=> String
    #   resp.reactive_insights[0].severity #=> String, one of "LOW", "MEDIUM", "HIGH"
    #   resp.reactive_insights[0].status #=> String, one of "ONGOING", "CLOSED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/ListInsights AWS API Documentation
    #
    # @overload list_insights(params = {})
    # @param [Hash] params ({})
    def list_insights(params = {}, options = {})
      req = build_request(:list_insights, params)
      req.send_request(options)
    end

    # @option params [String] :next_token
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
    #     next_token: "__stringMin36Max36PatternAF098AF094AF094AF094AF0912",
    #   })
    #
    # @example Response structure
    #
    #   resp.channels #=> Array
    #   resp.channels[0].config.sns.topic_arn #=> String
    #   resp.channels[0].id #=> String
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

    # @option params [required, String] :insight_id
    #
    # @option params [String] :next_token
    #
    # @return [Types::ListRecommendationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListRecommendationsResponse#next_token #next_token} => String
    #   * {Types::ListRecommendationsResponse#recommendations #recommendations} => Array&lt;Types::Recommendation&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_recommendations({
    #     insight_id: "__stringMin1Max100PatternW", # required
    #     next_token: "__stringMin36Max36PatternAF098AF094AF094AF094AF0912",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.recommendations #=> Array
    #   resp.recommendations[0].description #=> String
    #   resp.recommendations[0].link #=> String
    #   resp.recommendations[0].name #=> String
    #   resp.recommendations[0].reason #=> String
    #   resp.recommendations[0].related_anomalies #=> Array
    #   resp.recommendations[0].related_anomalies[0].resources #=> Array
    #   resp.recommendations[0].related_anomalies[0].resources[0].name #=> String
    #   resp.recommendations[0].related_anomalies[0].resources[0].type #=> String
    #   resp.recommendations[0].related_anomalies[0].source_details #=> Array
    #   resp.recommendations[0].related_anomalies[0].source_details[0].cloud_watch_metrics #=> Array
    #   resp.recommendations[0].related_anomalies[0].source_details[0].cloud_watch_metrics[0].metric_name #=> String
    #   resp.recommendations[0].related_anomalies[0].source_details[0].cloud_watch_metrics[0].namespace #=> String
    #   resp.recommendations[0].related_events #=> Array
    #   resp.recommendations[0].related_events[0].name #=> String
    #   resp.recommendations[0].related_events[0].resources #=> Array
    #   resp.recommendations[0].related_events[0].resources[0].name #=> String
    #   resp.recommendations[0].related_events[0].resources[0].type #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/ListRecommendations AWS API Documentation
    #
    # @overload list_recommendations(params = {})
    # @param [Hash] params ({})
    def list_recommendations(params = {}, options = {})
      req = build_request(:list_recommendations, params)
      req.send_request(options)
    end

    # @option params [Types::InsightFeedback] :insight_feedback
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_feedback({
    #     insight_feedback: {
    #       feedback: "VALID_COLLECTION", # accepts VALID_COLLECTION, RECOMMENDATION_USEFUL, ALERT_TOO_SENSITIVE, DATA_NOISY_ANOMALY, DATA_INCORRECT
    #       id: "__stringMin1Max100PatternW",
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

    # @option params [required, String] :id
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.remove_notification_channel({
    #     id: "__string", # required
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

    # @option params [Types::SearchInsightsFilters] :filters
    #
    # @option params [Integer] :max_results
    #
    # @option params [String] :next_token
    #
    # @option params [required, Types::StartTimeRange] :start_time_range
    #
    # @option params [required, String] :type
    #
    # @return [Types::SearchInsightsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SearchInsightsResponse#next_token #next_token} => String
    #   * {Types::SearchInsightsResponse#proactive_insights #proactive_insights} => Array&lt;Types::ProactiveInsightSummary&gt;
    #   * {Types::SearchInsightsResponse#reactive_insights #reactive_insights} => Array&lt;Types::ReactiveInsightSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_insights({
    #     filters: {
    #       resource_collection: {
    #         cloud_formation: {
    #           stack_names: ["__stringMin1Max128PatternAZAZAZAZ09"],
    #         },
    #       },
    #       severities: ["LOW"], # accepts LOW, MEDIUM, HIGH
    #       statuses: ["ONGOING"], # accepts ONGOING, CLOSED
    #     },
    #     max_results: 1,
    #     next_token: "__stringMin36Max36PatternAF098AF094AF094AF094AF0912",
    #     start_time_range: { # required
    #       from_time: Time.now,
    #       to_time: Time.now,
    #     },
    #     type: "REACTIVE", # required, accepts REACTIVE, PROACTIVE
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.proactive_insights #=> Array
    #   resp.proactive_insights[0].id #=> String
    #   resp.proactive_insights[0].insight_time_range.end_time #=> Time
    #   resp.proactive_insights[0].insight_time_range.start_time #=> Time
    #   resp.proactive_insights[0].name #=> String
    #   resp.proactive_insights[0].prediction_time_range.end_time #=> Time
    #   resp.proactive_insights[0].prediction_time_range.start_time #=> Time
    #   resp.proactive_insights[0].resource_collection.cloud_formation.stack_names #=> Array
    #   resp.proactive_insights[0].resource_collection.cloud_formation.stack_names[0] #=> String
    #   resp.proactive_insights[0].severity #=> String, one of "LOW", "MEDIUM", "HIGH"
    #   resp.proactive_insights[0].status #=> String, one of "ONGOING", "CLOSED"
    #   resp.reactive_insights #=> Array
    #   resp.reactive_insights[0].id #=> String
    #   resp.reactive_insights[0].insight_time_range.end_time #=> Time
    #   resp.reactive_insights[0].insight_time_range.start_time #=> Time
    #   resp.reactive_insights[0].name #=> String
    #   resp.reactive_insights[0].resource_collection.cloud_formation.stack_names #=> Array
    #   resp.reactive_insights[0].resource_collection.cloud_formation.stack_names[0] #=> String
    #   resp.reactive_insights[0].severity #=> String, one of "LOW", "MEDIUM", "HIGH"
    #   resp.reactive_insights[0].status #=> String, one of "ONGOING", "CLOSED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/SearchInsights AWS API Documentation
    #
    # @overload search_insights(params = {})
    # @param [Hash] params ({})
    def search_insights(params = {}, options = {})
      req = build_request(:search_insights, params)
      req.send_request(options)
    end

    # @option params [required, String] :action
    #
    # @option params [required, Types::UpdateResourceCollectionFilter] :resource_collection
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_resource_collection({
    #     action: "ADD", # required, accepts ADD, REMOVE
    #     resource_collection: { # required
    #       cloud_formation: {
    #         stack_names: ["__stringMin1Max128PatternAZAZAZAZ09"],
    #       },
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

    # @option params [required, Types::UpdateServiceIntegrationConfig] :service_integration
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
      context[:gem_version] = '1.0.0'
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
