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

Aws::Plugins::GlobalConfiguration.add_identifier(:codeguruprofiler)

module Aws::CodeGuruProfiler
  # An API client for CodeGuruProfiler.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::CodeGuruProfiler::Client.new(
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

    @identifier = :codeguruprofiler

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

    # Add up to 2 anomaly notifications channels for a profiling group.
    #
    # @option params [required, Array<Types::Channel>] :channels
    #   One or 2 channels to report to when anomalies are detected.
    #
    # @option params [required, String] :profiling_group_name
    #   The name of the profiling group that we are setting up notifications
    #   for.
    #
    # @return [Types::AddNotificationChannelsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AddNotificationChannelsResponse#notification_configuration #notification_configuration} => Types::NotificationConfiguration
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.add_notification_channels({
    #     channels: [ # required
    #       {
    #         event_publishers: ["AnomalyDetection"], # required, accepts AnomalyDetection
    #         id: "ChannelId",
    #         uri: "ChannelUri", # required
    #       },
    #     ],
    #     profiling_group_name: "ProfilingGroupName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.notification_configuration.channels #=> Array
    #   resp.notification_configuration.channels[0].event_publishers #=> Array
    #   resp.notification_configuration.channels[0].event_publishers[0] #=> String, one of "AnomalyDetection"
    #   resp.notification_configuration.channels[0].id #=> String
    #   resp.notification_configuration.channels[0].uri #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguruprofiler-2019-07-18/AddNotificationChannels AWS API Documentation
    #
    # @overload add_notification_channels(params = {})
    # @param [Hash] params ({})
    def add_notification_channels(params = {}, options = {})
      req = build_request(:add_notification_channels, params)
      req.send_request(options)
    end

    # Returns the time series of values for a requested list of frame
    # metrics from a time period.
    #
    # @option params [Time,DateTime,Date,Integer,String] :end_time
    #   The end time of the time period for the returned time series values.
    #   This is specified using the ISO 8601 format. For example,
    #   2020-06-01T13:15:02.001Z represents 1 millisecond past June 1, 2020
    #   1:15:02 PM UTC.
    #
    # @option params [Array<Types::FrameMetric>] :frame_metrics
    #   The details of the metrics that are used to request a time series of
    #   values. The metric includes the name of the frame, the aggregation
    #   type to calculate the metric value for the frame, and the thread
    #   states to use to get the count for the metric value of the frame.
    #
    # @option params [String] :period
    #   The duration of the frame metrics used to return the time series
    #   values. Specify using the ISO 8601 format. The maximum period duration
    #   is one day (`PT24H` or `P1D`).
    #
    # @option params [required, String] :profiling_group_name
    #   The name of the profiling group associated with the the frame metrics
    #   used to return the time series values.
    #
    # @option params [Time,DateTime,Date,Integer,String] :start_time
    #   The start time of the time period for the frame metrics used to return
    #   the time series values. This is specified using the ISO 8601 format.
    #   For example, 2020-06-01T13:15:02.001Z represents 1 millisecond past
    #   June 1, 2020 1:15:02 PM UTC.
    #
    # @option params [String] :target_resolution
    #   The requested resolution of time steps for the returned time series of
    #   values. If the requested target resolution is not available due to
    #   data not being retained we provide a best effort result by falling
    #   back to the most granular available resolution after the target
    #   resolution. There are 3 valid values.
    #
    #   * `P1D` — 1 day
    #
    #   * `PT1H` — 1 hour
    #
    #   * `PT5M` — 5 minutes
    #
    # @return [Types::BatchGetFrameMetricDataResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchGetFrameMetricDataResponse#end_time #end_time} => Time
    #   * {Types::BatchGetFrameMetricDataResponse#end_times #end_times} => Array&lt;Types::TimestampStructure&gt;
    #   * {Types::BatchGetFrameMetricDataResponse#frame_metric_data #frame_metric_data} => Array&lt;Types::FrameMetricDatum&gt;
    #   * {Types::BatchGetFrameMetricDataResponse#resolution #resolution} => String
    #   * {Types::BatchGetFrameMetricDataResponse#start_time #start_time} => Time
    #   * {Types::BatchGetFrameMetricDataResponse#unprocessed_end_times #unprocessed_end_times} => Hash&lt;String,Array&lt;Types::TimestampStructure&gt;&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_get_frame_metric_data({
    #     end_time: Time.now,
    #     frame_metrics: [
    #       {
    #         frame_name: "String", # required
    #         thread_states: ["String"], # required
    #         type: "AggregatedRelativeTotalTime", # required, accepts AggregatedRelativeTotalTime
    #       },
    #     ],
    #     period: "Period",
    #     profiling_group_name: "ProfilingGroupName", # required
    #     start_time: Time.now,
    #     target_resolution: "P1D", # accepts P1D, PT1H, PT5M
    #   })
    #
    # @example Response structure
    #
    #   resp.end_time #=> Time
    #   resp.end_times #=> Array
    #   resp.end_times[0].value #=> Time
    #   resp.frame_metric_data #=> Array
    #   resp.frame_metric_data[0].frame_metric.frame_name #=> String
    #   resp.frame_metric_data[0].frame_metric.thread_states #=> Array
    #   resp.frame_metric_data[0].frame_metric.thread_states[0] #=> String
    #   resp.frame_metric_data[0].frame_metric.type #=> String, one of "AggregatedRelativeTotalTime"
    #   resp.frame_metric_data[0].values #=> Array
    #   resp.frame_metric_data[0].values[0] #=> Float
    #   resp.resolution #=> String, one of "P1D", "PT1H", "PT5M"
    #   resp.start_time #=> Time
    #   resp.unprocessed_end_times #=> Hash
    #   resp.unprocessed_end_times["String"] #=> Array
    #   resp.unprocessed_end_times["String"][0].value #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguruprofiler-2019-07-18/BatchGetFrameMetricData AWS API Documentation
    #
    # @overload batch_get_frame_metric_data(params = {})
    # @param [Hash] params ({})
    def batch_get_frame_metric_data(params = {}, options = {})
      req = build_request(:batch_get_frame_metric_data, params)
      req.send_request(options)
    end

    # Used by profiler agents to report their current state and to receive
    # remote configuration updates. For example, `ConfigureAgent` can be
    # used to tell and agent whether to profile or not and for how long to
    # return profiling data.
    #
    # @option params [String] :fleet_instance_id
    #   A universally unique identifier (UUID) for a profiling instance. For
    #   example, if the profiling instance is an Amazon EC2 instance, it is
    #   the instance ID. If it is an AWS Fargate container, it is the
    #   container's task ID.
    #
    # @option params [Hash<String,String>] :metadata
    #   Metadata captured about the compute platform the agent is running on.
    #   It includes information about sampling and reporting. The valid fields
    #   are:
    #
    #   * `COMPUTE_PLATFORM` - The compute platform on which the agent is
    #     running
    #
    #   * `AGENT_ID` - The ID for an agent instance.
    #
    #   * `AWS_REQUEST_ID` - The AWS request ID of a Lambda invocation.
    #
    #   * `EXECUTION_ENVIRONMENT` - The execution environment a Lambda
    #     function is running on.
    #
    #   * `LAMBDA_FUNCTION_ARN` - The Amazon Resource Name (ARN) that is used
    #     to invoke a Lambda function.
    #
    #   * `LAMBDA_MEMORY_LIMIT_IN_MB` - The memory allocated to a Lambda
    #     function.
    #
    #   * `LAMBDA_REMAINING_TIME_IN_MILLISECONDS` - The time in milliseconds
    #     before execution of a Lambda function times out.
    #
    #   * `LAMBDA_TIME_GAP_BETWEEN_INVOKES_IN_MILLISECONDS` - The time in
    #     milliseconds between two invocations of a Lambda function.
    #
    #   * `LAMBDA_PREVIOUS_EXECUTION_TIME_IN_MILLISECONDS` - The time in
    #     milliseconds for the previous Lambda invocation.
    #
    # @option params [required, String] :profiling_group_name
    #   The name of the profiling group for which the configured agent is
    #   collecting profiling data.
    #
    # @return [Types::ConfigureAgentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ConfigureAgentResponse#configuration #configuration} => Types::AgentConfiguration
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.configure_agent({
    #     fleet_instance_id: "FleetInstanceId",
    #     metadata: {
    #       "AgentId" => "String",
    #     },
    #     profiling_group_name: "ProfilingGroupName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.configuration.agent_parameters #=> Hash
    #   resp.configuration.agent_parameters["AgentParameterField"] #=> String
    #   resp.configuration.period_in_seconds #=> Integer
    #   resp.configuration.should_profile #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguruprofiler-2019-07-18/ConfigureAgent AWS API Documentation
    #
    # @overload configure_agent(params = {})
    # @param [Hash] params ({})
    def configure_agent(params = {}, options = {})
      req = build_request(:configure_agent, params)
      req.send_request(options)
    end

    # Creates a profiling group.
    #
    # @option params [Types::AgentOrchestrationConfig] :agent_orchestration_config
    #   Specifies whether profiling is enabled or disabled for the created
    #   profiling group.
    #
    # @option params [required, String] :client_token
    #   Amazon CodeGuru Profiler uses this universally unique identifier
    #   (UUID) to prevent the accidental creation of duplicate profiling
    #   groups if there are failures and retries.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [String] :compute_platform
    #   The compute platform of the profiling group. Use `AWSLambda` if your
    #   application runs on AWS Lambda. Use `Default` if your application runs
    #   on a compute platform that is not AWS Lambda, such an Amazon EC2
    #   instance, an on-premises server, or a different platform. If not
    #   specified, `Default` is used.
    #
    # @option params [required, String] :profiling_group_name
    #   The name of the profiling group to create.
    #
    # @option params [Hash<String,String>] :tags
    #   A list of tags to add to the created profiling group.
    #
    # @return [Types::CreateProfilingGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateProfilingGroupResponse#profiling_group #profiling_group} => Types::ProfilingGroupDescription
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_profiling_group({
    #     agent_orchestration_config: {
    #       profiling_enabled: false, # required
    #     },
    #     client_token: "ClientToken", # required
    #     compute_platform: "AWSLambda", # accepts AWSLambda, Default
    #     profiling_group_name: "ProfilingGroupName", # required
    #     tags: {
    #       "String" => "String",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.profiling_group.agent_orchestration_config.profiling_enabled #=> Boolean
    #   resp.profiling_group.arn #=> String
    #   resp.profiling_group.compute_platform #=> String, one of "AWSLambda", "Default"
    #   resp.profiling_group.created_at #=> Time
    #   resp.profiling_group.name #=> String
    #   resp.profiling_group.profiling_status.latest_agent_orchestrated_at #=> Time
    #   resp.profiling_group.profiling_status.latest_agent_profile_reported_at #=> Time
    #   resp.profiling_group.profiling_status.latest_aggregated_profile.period #=> String, one of "P1D", "PT1H", "PT5M"
    #   resp.profiling_group.profiling_status.latest_aggregated_profile.start #=> Time
    #   resp.profiling_group.tags #=> Hash
    #   resp.profiling_group.tags["String"] #=> String
    #   resp.profiling_group.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguruprofiler-2019-07-18/CreateProfilingGroup AWS API Documentation
    #
    # @overload create_profiling_group(params = {})
    # @param [Hash] params ({})
    def create_profiling_group(params = {}, options = {})
      req = build_request(:create_profiling_group, params)
      req.send_request(options)
    end

    # Deletes a profiling group.
    #
    # @option params [required, String] :profiling_group_name
    #   The name of the profiling group to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_profiling_group({
    #     profiling_group_name: "ProfilingGroupName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguruprofiler-2019-07-18/DeleteProfilingGroup AWS API Documentation
    #
    # @overload delete_profiling_group(params = {})
    # @param [Hash] params ({})
    def delete_profiling_group(params = {}, options = {})
      req = build_request(:delete_profiling_group, params)
      req.send_request(options)
    end

    # Returns a [ `ProfilingGroupDescription` ][1] object that contains
    # information about the requested profiling group.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_ProfilingGroupDescription.html
    #
    # @option params [required, String] :profiling_group_name
    #   The name of the profiling group to get information about.
    #
    # @return [Types::DescribeProfilingGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeProfilingGroupResponse#profiling_group #profiling_group} => Types::ProfilingGroupDescription
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_profiling_group({
    #     profiling_group_name: "ProfilingGroupName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.profiling_group.agent_orchestration_config.profiling_enabled #=> Boolean
    #   resp.profiling_group.arn #=> String
    #   resp.profiling_group.compute_platform #=> String, one of "AWSLambda", "Default"
    #   resp.profiling_group.created_at #=> Time
    #   resp.profiling_group.name #=> String
    #   resp.profiling_group.profiling_status.latest_agent_orchestrated_at #=> Time
    #   resp.profiling_group.profiling_status.latest_agent_profile_reported_at #=> Time
    #   resp.profiling_group.profiling_status.latest_aggregated_profile.period #=> String, one of "P1D", "PT1H", "PT5M"
    #   resp.profiling_group.profiling_status.latest_aggregated_profile.start #=> Time
    #   resp.profiling_group.tags #=> Hash
    #   resp.profiling_group.tags["String"] #=> String
    #   resp.profiling_group.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguruprofiler-2019-07-18/DescribeProfilingGroup AWS API Documentation
    #
    # @overload describe_profiling_group(params = {})
    # @param [Hash] params ({})
    def describe_profiling_group(params = {}, options = {})
      req = build_request(:describe_profiling_group, params)
      req.send_request(options)
    end

    # Returns a list of [ `FindingsReportSummary` ][1] objects that contain
    # analysis results for all profiling groups in your AWS account.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_FindingsReportSummary.html
    #
    # @option params [Boolean] :daily_reports_only
    #   A `Boolean` value indicating whether to only return reports from daily
    #   profiles. If set to `True`, only analysis data from daily profiles is
    #   returned. If set to `False`, analysis data is returned from smaller
    #   time windows (for example, one hour).
    #
    # @option params [Integer] :max_results
    #   The maximum number of results returned by `
    #   GetFindingsReportAccountSummary` in paginated output. When this
    #   parameter is used, `GetFindingsReportAccountSummary` only returns
    #   `maxResults` results in a single page along with a `nextToken`
    #   response element. The remaining results of the initial request can be
    #   seen by sending another `GetFindingsReportAccountSummary` request with
    #   the returned `nextToken` value.
    #
    # @option params [String] :next_token
    #   The `nextToken` value returned from a previous paginated
    #   `GetFindingsReportAccountSummary` request where `maxResults` was used
    #   and the results exceeded the value of that parameter. Pagination
    #   continues from the end of the previous results that returned the
    #   `nextToken` value.
    #
    #   <note markdown="1"> This token should be treated as an opaque identifier that is only used
    #   to retrieve the next items in a list and not for other programmatic
    #   purposes.
    #
    #    </note>
    #
    # @return [Types::GetFindingsReportAccountSummaryResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetFindingsReportAccountSummaryResponse#next_token #next_token} => String
    #   * {Types::GetFindingsReportAccountSummaryResponse#report_summaries #report_summaries} => Array&lt;Types::FindingsReportSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_findings_report_account_summary({
    #     daily_reports_only: false,
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.report_summaries #=> Array
    #   resp.report_summaries[0].id #=> String
    #   resp.report_summaries[0].profile_end_time #=> Time
    #   resp.report_summaries[0].profile_start_time #=> Time
    #   resp.report_summaries[0].profiling_group_name #=> String
    #   resp.report_summaries[0].total_number_of_findings #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguruprofiler-2019-07-18/GetFindingsReportAccountSummary AWS API Documentation
    #
    # @overload get_findings_report_account_summary(params = {})
    # @param [Hash] params ({})
    def get_findings_report_account_summary(params = {}, options = {})
      req = build_request(:get_findings_report_account_summary, params)
      req.send_request(options)
    end

    # Get the current configuration for anomaly notifications for a
    # profiling group.
    #
    # @option params [required, String] :profiling_group_name
    #   The name of the profiling group we want to get the notification
    #   configuration for.
    #
    # @return [Types::GetNotificationConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetNotificationConfigurationResponse#notification_configuration #notification_configuration} => Types::NotificationConfiguration
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_notification_configuration({
    #     profiling_group_name: "ProfilingGroupName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.notification_configuration.channels #=> Array
    #   resp.notification_configuration.channels[0].event_publishers #=> Array
    #   resp.notification_configuration.channels[0].event_publishers[0] #=> String, one of "AnomalyDetection"
    #   resp.notification_configuration.channels[0].id #=> String
    #   resp.notification_configuration.channels[0].uri #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguruprofiler-2019-07-18/GetNotificationConfiguration AWS API Documentation
    #
    # @overload get_notification_configuration(params = {})
    # @param [Hash] params ({})
    def get_notification_configuration(params = {}, options = {})
      req = build_request(:get_notification_configuration, params)
      req.send_request(options)
    end

    # Returns the JSON-formatted resource-based policy on a profiling group.
    #
    # @option params [required, String] :profiling_group_name
    #   The name of the profiling group.
    #
    # @return [Types::GetPolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetPolicyResponse#policy #policy} => String
    #   * {Types::GetPolicyResponse#revision_id #revision_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_policy({
    #     profiling_group_name: "ProfilingGroupName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.policy #=> String
    #   resp.revision_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguruprofiler-2019-07-18/GetPolicy AWS API Documentation
    #
    # @overload get_policy(params = {})
    # @param [Hash] params ({})
    def get_policy(params = {}, options = {})
      req = build_request(:get_policy, params)
      req.send_request(options)
    end

    # Gets the aggregated profile of a profiling group for a specified time
    # range. Amazon CodeGuru Profiler collects posted agent profiles for a
    # profiling group into aggregated profiles.
    #
    #      <note> <p> Because aggregated profiles expire over time <code>GetProfile</code> is not idempotent. </p> </note> <p> Specify the time range for the requested aggregated profile using 1 or 2 of the following parameters: <code>startTime</code>, <code>endTime</code>, <code>period</code>. The maximum time range allowed is 7 days. If you specify all 3 parameters, an exception is thrown. If you specify only <code>period</code>, the latest aggregated profile is returned. </p> <p> Aggregated profiles are available with aggregation periods of 5 minutes, 1 hour, and 1 day, aligned to UTC. The aggregation period of an aggregated profile determines how long it is retained. For more information, see <a href="https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_AggregatedProfileTime.html"> <code>AggregatedProfileTime</code> </a>. The aggregated profile's aggregation period determines how long it is retained by CodeGuru Profiler. </p> <ul> <li> <p> If the aggregation period is 5 minutes, the aggregated profile is retained for 15 days. </p> </li> <li> <p> If the aggregation period is 1 hour, the aggregated profile is retained for 60 days. </p> </li> <li> <p> If the aggregation period is 1 day, the aggregated profile is retained for 3 years. </p> </li> </ul> <p>There are two use cases for calling <code>GetProfile</code>.</p> <ol> <li> <p> If you want to return an aggregated profile that already exists, use <a href="https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_ListProfileTimes.html"> <code>ListProfileTimes</code> </a> to view the time ranges of existing aggregated profiles. Use them in a <code>GetProfile</code> request to return a specific, existing aggregated profile. </p> </li> <li> <p> If you want to return an aggregated profile for a time range that doesn't align with an existing aggregated profile, then CodeGuru Profiler makes a best effort to combine existing aggregated profiles from the requested time range and return them as one aggregated profile. </p> <p> If aggregated profiles do not exist for the full time range requested, then aggregated profiles for a smaller time range are returned. For example, if the requested time range is from 00:00 to 00:20, and the existing aggregated profiles are from 00:15 and 00:25, then the aggregated profiles from 00:15 to 00:20 are returned. </p> </li> </ol>
    #
    # @option params [String] :accept
    #   The format of the returned profiling data. The format maps to the
    #   `Accept` and `Content-Type` headers of the HTTP request. You can
    #   specify one of the following: or the default .
    #
    #        <ul> <li> <p> <code>application/json</code> — standard JSON format </p> </li> <li> <p> <code>application/x-amzn-ion</code> — the Amazon Ion data format. For more information, see <a href="http://amzn.github.io/ion-docs/">Amazon Ion</a>. </p> </li> </ul>
    #
    # @option params [Time,DateTime,Date,Integer,String] :end_time
    #   The end time of the requested profile. Specify using the ISO 8601
    #   format. For example, 2020-06-01T13:15:02.001Z represents 1 millisecond
    #   past June 1, 2020 1:15:02 PM UTC.
    #
    #   If you specify `endTime`, then you must also specify `period` or
    #   `startTime`, but not both.
    #
    # @option params [Integer] :max_depth
    #   The maximum depth of the stacks in the code that is represented in the
    #   aggregated profile. For example, if CodeGuru Profiler finds a method
    #   `A`, which calls method `B`, which calls method `C`, which calls
    #   method `D`, then the depth is 4. If the `maxDepth` is set to 2, then
    #   the aggregated profile contains representations of methods `A` and
    #   `B`.
    #
    # @option params [String] :period
    #   Used with `startTime` or `endTime` to specify the time range for the
    #   returned aggregated profile. Specify using the ISO 8601 format. For
    #   example, `P1DT1H1M1S`.
    #
    #        <p> To get the latest aggregated profile, specify only <code>period</code>. </p>
    #
    # @option params [required, String] :profiling_group_name
    #   The name of the profiling group to get.
    #
    # @option params [Time,DateTime,Date,Integer,String] :start_time
    #   The start time of the profile to get. Specify using the ISO 8601
    #   format. For example, 2020-06-01T13:15:02.001Z represents 1 millisecond
    #   past June 1, 2020 1:15:02 PM UTC.
    #
    #        <p> If you specify <code>startTime</code>, then you must also specify <code>period</code> or <code>endTime</code>, but not both. </p>
    #
    # @return [Types::GetProfileResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetProfileResponse#content_encoding #content_encoding} => String
    #   * {Types::GetProfileResponse#content_type #content_type} => String
    #   * {Types::GetProfileResponse#profile #profile} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_profile({
    #     accept: "String",
    #     end_time: Time.now,
    #     max_depth: 1,
    #     period: "Period",
    #     profiling_group_name: "ProfilingGroupName", # required
    #     start_time: Time.now,
    #   })
    #
    # @example Response structure
    #
    #   resp.content_encoding #=> String
    #   resp.content_type #=> String
    #   resp.profile #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguruprofiler-2019-07-18/GetProfile AWS API Documentation
    #
    # @overload get_profile(params = {})
    # @param [Hash] params ({})
    def get_profile(params = {}, options = {})
      req = build_request(:get_profile, params)
      req.send_request(options)
    end

    # Returns a list of [ `Recommendation` ][1] objects that contain
    # recommendations for a profiling group for a given time period. A list
    # of [ `Anomaly` ][2] objects that contains details about anomalies
    # detected in the profiling group for the same time period is also
    # returned.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_Recommendation.html
    # [2]: https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_Anomaly.html
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :end_time
    #   The start time of the profile to get analysis data about. You must
    #   specify `startTime` and `endTime`. This is specified using the ISO
    #   8601 format. For example, 2020-06-01T13:15:02.001Z represents 1
    #   millisecond past June 1, 2020 1:15:02 PM UTC.
    #
    # @option params [String] :locale
    #   The language used to provide analysis. Specify using a string that is
    #   one of the following `BCP 47` language codes.
    #
    #   * `de-DE` - German, Germany
    #
    #   * `en-GB` - English, United Kingdom
    #
    #   * `en-US` - English, United States
    #
    #   * `es-ES` - Spanish, Spain
    #
    #   * `fr-FR` - French, France
    #
    #   * `it-IT` - Italian, Italy
    #
    #   * `ja-JP` - Japanese, Japan
    #
    #   * `ko-KR` - Korean, Republic of Korea
    #
    #   * `pt-BR` - Portugese, Brazil
    #
    #   * `zh-CN` - Chinese, China
    #
    #   * `zh-TW` - Chinese, Taiwan
    #
    # @option params [required, String] :profiling_group_name
    #   The name of the profiling group to get analysis data about.
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :start_time
    #   The end time of the profile to get analysis data about. You must
    #   specify `startTime` and `endTime`. This is specified using the ISO
    #   8601 format. For example, 2020-06-01T13:15:02.001Z represents 1
    #   millisecond past June 1, 2020 1:15:02 PM UTC.
    #
    # @return [Types::GetRecommendationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetRecommendationsResponse#anomalies #anomalies} => Array&lt;Types::Anomaly&gt;
    #   * {Types::GetRecommendationsResponse#profile_end_time #profile_end_time} => Time
    #   * {Types::GetRecommendationsResponse#profile_start_time #profile_start_time} => Time
    #   * {Types::GetRecommendationsResponse#profiling_group_name #profiling_group_name} => String
    #   * {Types::GetRecommendationsResponse#recommendations #recommendations} => Array&lt;Types::Recommendation&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_recommendations({
    #     end_time: Time.now, # required
    #     locale: "Locale",
    #     profiling_group_name: "ProfilingGroupName", # required
    #     start_time: Time.now, # required
    #   })
    #
    # @example Response structure
    #
    #   resp.anomalies #=> Array
    #   resp.anomalies[0].instances #=> Array
    #   resp.anomalies[0].instances[0].end_time #=> Time
    #   resp.anomalies[0].instances[0].id #=> String
    #   resp.anomalies[0].instances[0].start_time #=> Time
    #   resp.anomalies[0].instances[0].user_feedback.type #=> String, one of "Negative", "Positive"
    #   resp.anomalies[0].metric.frame_name #=> String
    #   resp.anomalies[0].metric.thread_states #=> Array
    #   resp.anomalies[0].metric.thread_states[0] #=> String
    #   resp.anomalies[0].metric.type #=> String, one of "AggregatedRelativeTotalTime"
    #   resp.anomalies[0].reason #=> String
    #   resp.profile_end_time #=> Time
    #   resp.profile_start_time #=> Time
    #   resp.profiling_group_name #=> String
    #   resp.recommendations #=> Array
    #   resp.recommendations[0].all_matches_count #=> Integer
    #   resp.recommendations[0].all_matches_sum #=> Float
    #   resp.recommendations[0].end_time #=> Time
    #   resp.recommendations[0].pattern.counters_to_aggregate #=> Array
    #   resp.recommendations[0].pattern.counters_to_aggregate[0] #=> String
    #   resp.recommendations[0].pattern.description #=> String
    #   resp.recommendations[0].pattern.id #=> String
    #   resp.recommendations[0].pattern.name #=> String
    #   resp.recommendations[0].pattern.resolution_steps #=> String
    #   resp.recommendations[0].pattern.target_frames #=> Array
    #   resp.recommendations[0].pattern.target_frames[0] #=> Array
    #   resp.recommendations[0].pattern.target_frames[0][0] #=> String
    #   resp.recommendations[0].pattern.threshold_percent #=> Float
    #   resp.recommendations[0].start_time #=> Time
    #   resp.recommendations[0].top_matches #=> Array
    #   resp.recommendations[0].top_matches[0].frame_address #=> String
    #   resp.recommendations[0].top_matches[0].target_frames_index #=> Integer
    #   resp.recommendations[0].top_matches[0].threshold_breach_value #=> Float
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguruprofiler-2019-07-18/GetRecommendations AWS API Documentation
    #
    # @overload get_recommendations(params = {})
    # @param [Hash] params ({})
    def get_recommendations(params = {}, options = {})
      req = build_request(:get_recommendations, params)
      req.send_request(options)
    end

    # List the available reports for a given profiling group and time range.
    #
    # @option params [Boolean] :daily_reports_only
    #   A `Boolean` value indicating whether to only return reports from daily
    #   profiles. If set to `True`, only analysis data from daily profiles is
    #   returned. If set to `False`, analysis data is returned from smaller
    #   time windows (for example, one hour).
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :end_time
    #   The end time of the profile to get analysis data about. You must
    #   specify `startTime` and `endTime`. This is specified using the ISO
    #   8601 format. For example, 2020-06-01T13:15:02.001Z represents 1
    #   millisecond past June 1, 2020 1:15:02 PM UTC.
    #
    # @option params [Integer] :max_results
    #   The maximum number of report results returned by `ListFindingsReports`
    #   in paginated output. When this parameter is used,
    #   `ListFindingsReports` only returns `maxResults` results in a single
    #   page along with a `nextToken` response element. The remaining results
    #   of the initial request can be seen by sending another
    #   `ListFindingsReports` request with the returned `nextToken` value.
    #
    # @option params [String] :next_token
    #   The `nextToken` value returned from a previous paginated
    #   `ListFindingsReportsRequest` request where `maxResults` was used and
    #   the results exceeded the value of that parameter. Pagination continues
    #   from the end of the previous results that returned the `nextToken`
    #   value.
    #
    #   <note markdown="1"> This token should be treated as an opaque identifier that is only used
    #   to retrieve the next items in a list and not for other programmatic
    #   purposes.
    #
    #    </note>
    #
    # @option params [required, String] :profiling_group_name
    #   The name of the profiling group from which to search for analysis
    #   data.
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :start_time
    #   The start time of the profile to get analysis data about. You must
    #   specify `startTime` and `endTime`. This is specified using the ISO
    #   8601 format. For example, 2020-06-01T13:15:02.001Z represents 1
    #   millisecond past June 1, 2020 1:15:02 PM UTC.
    #
    # @return [Types::ListFindingsReportsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListFindingsReportsResponse#findings_report_summaries #findings_report_summaries} => Array&lt;Types::FindingsReportSummary&gt;
    #   * {Types::ListFindingsReportsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_findings_reports({
    #     daily_reports_only: false,
    #     end_time: Time.now, # required
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #     profiling_group_name: "ProfilingGroupName", # required
    #     start_time: Time.now, # required
    #   })
    #
    # @example Response structure
    #
    #   resp.findings_report_summaries #=> Array
    #   resp.findings_report_summaries[0].id #=> String
    #   resp.findings_report_summaries[0].profile_end_time #=> Time
    #   resp.findings_report_summaries[0].profile_start_time #=> Time
    #   resp.findings_report_summaries[0].profiling_group_name #=> String
    #   resp.findings_report_summaries[0].total_number_of_findings #=> Integer
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguruprofiler-2019-07-18/ListFindingsReports AWS API Documentation
    #
    # @overload list_findings_reports(params = {})
    # @param [Hash] params ({})
    def list_findings_reports(params = {}, options = {})
      req = build_request(:list_findings_reports, params)
      req.send_request(options)
    end

    # Lists the start times of the available aggregated profiles of a
    # profiling group for an aggregation period within the specified time
    # range.
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :end_time
    #   The end time of the time range from which to list the profiles.
    #
    # @option params [Integer] :max_results
    #   The maximum number of profile time results returned by
    #   `ListProfileTimes` in paginated output. When this parameter is used,
    #   `ListProfileTimes` only returns `maxResults` results in a single page
    #   with a `nextToken` response element. The remaining results of the
    #   initial request can be seen by sending another `ListProfileTimes`
    #   request with the returned `nextToken` value.
    #
    # @option params [String] :next_token
    #   The `nextToken` value returned from a previous paginated
    #   `ListProfileTimes` request where `maxResults` was used and the results
    #   exceeded the value of that parameter. Pagination continues from the
    #   end of the previous results that returned the `nextToken` value.
    #
    #   <note markdown="1"> This token should be treated as an opaque identifier that is only used
    #   to retrieve the next items in a list and not for other programmatic
    #   purposes.
    #
    #    </note>
    #
    # @option params [String] :order_by
    #   The order (ascending or descending by start time of the profile) to
    #   use when listing profiles. Defaults to `TIMESTAMP_DESCENDING`.
    #
    # @option params [required, String] :period
    #   The aggregation period. This specifies the period during which an
    #   aggregation profile collects posted agent profiles for a profiling
    #   group. There are 3 valid values.
    #
    #   * `P1D` — 1 day
    #
    #   * `PT1H` — 1 hour
    #
    #   * `PT5M` — 5 minutes
    #
    # @option params [required, String] :profiling_group_name
    #   The name of the profiling group.
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :start_time
    #   The start time of the time range from which to list the profiles.
    #
    # @return [Types::ListProfileTimesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListProfileTimesResponse#next_token #next_token} => String
    #   * {Types::ListProfileTimesResponse#profile_times #profile_times} => Array&lt;Types::ProfileTime&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_profile_times({
    #     end_time: Time.now, # required
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #     order_by: "TimestampAscending", # accepts TimestampAscending, TimestampDescending
    #     period: "P1D", # required, accepts P1D, PT1H, PT5M
    #     profiling_group_name: "ProfilingGroupName", # required
    #     start_time: Time.now, # required
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.profile_times #=> Array
    #   resp.profile_times[0].start #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguruprofiler-2019-07-18/ListProfileTimes AWS API Documentation
    #
    # @overload list_profile_times(params = {})
    # @param [Hash] params ({})
    def list_profile_times(params = {}, options = {})
      req = build_request(:list_profile_times, params)
      req.send_request(options)
    end

    # Returns a list of profiling groups. The profiling groups are returned
    # as [ `ProfilingGroupDescription` ][1] objects.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_ProfilingGroupDescription.html
    #
    # @option params [Boolean] :include_description
    #   A `Boolean` value indicating whether to include a description. If
    #   `true`, then a list of [ `ProfilingGroupDescription` ][1] objects that
    #   contain detailed information about profiling groups is returned. If
    #   `false`, then a list of profiling group names is returned.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_ProfilingGroupDescription.html
    #
    # @option params [Integer] :max_results
    #   The maximum number of profiling groups results returned by
    #   `ListProfilingGroups` in paginated output. When this parameter is
    #   used, `ListProfilingGroups` only returns `maxResults` results in a
    #   single page along with a `nextToken` response element. The remaining
    #   results of the initial request can be seen by sending another
    #   `ListProfilingGroups` request with the returned `nextToken` value.
    #
    # @option params [String] :next_token
    #   The `nextToken` value returned from a previous paginated
    #   `ListProfilingGroups` request where `maxResults` was used and the
    #   results exceeded the value of that parameter. Pagination continues
    #   from the end of the previous results that returned the `nextToken`
    #   value.
    #
    #   <note markdown="1"> This token should be treated as an opaque identifier that is only used
    #   to retrieve the next items in a list and not for other programmatic
    #   purposes.
    #
    #    </note>
    #
    # @return [Types::ListProfilingGroupsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListProfilingGroupsResponse#next_token #next_token} => String
    #   * {Types::ListProfilingGroupsResponse#profiling_group_names #profiling_group_names} => Array&lt;String&gt;
    #   * {Types::ListProfilingGroupsResponse#profiling_groups #profiling_groups} => Array&lt;Types::ProfilingGroupDescription&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_profiling_groups({
    #     include_description: false,
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.profiling_group_names #=> Array
    #   resp.profiling_group_names[0] #=> String
    #   resp.profiling_groups #=> Array
    #   resp.profiling_groups[0].agent_orchestration_config.profiling_enabled #=> Boolean
    #   resp.profiling_groups[0].arn #=> String
    #   resp.profiling_groups[0].compute_platform #=> String, one of "AWSLambda", "Default"
    #   resp.profiling_groups[0].created_at #=> Time
    #   resp.profiling_groups[0].name #=> String
    #   resp.profiling_groups[0].profiling_status.latest_agent_orchestrated_at #=> Time
    #   resp.profiling_groups[0].profiling_status.latest_agent_profile_reported_at #=> Time
    #   resp.profiling_groups[0].profiling_status.latest_aggregated_profile.period #=> String, one of "P1D", "PT1H", "PT5M"
    #   resp.profiling_groups[0].profiling_status.latest_aggregated_profile.start #=> Time
    #   resp.profiling_groups[0].tags #=> Hash
    #   resp.profiling_groups[0].tags["String"] #=> String
    #   resp.profiling_groups[0].updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguruprofiler-2019-07-18/ListProfilingGroups AWS API Documentation
    #
    # @overload list_profiling_groups(params = {})
    # @param [Hash] params ({})
    def list_profiling_groups(params = {}, options = {})
      req = build_request(:list_profiling_groups, params)
      req.send_request(options)
    end

    # Returns a list of the tags that are assigned to a specified resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource that contains the tags
    #   to return.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "ProfilingGroupArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Hash
    #   resp.tags["String"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguruprofiler-2019-07-18/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Submits profiling data to an aggregated profile of a profiling group.
    # To get an aggregated profile that is created with this profiling data,
    # use [ `GetProfile` ][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_GetProfile.html
    #
    # @option params [required, String, StringIO, File] :agent_profile
    #   The submitted profiling data.
    #
    # @option params [required, String] :content_type
    #   The format of the submitted profiling data. The format maps to the
    #   `Accept` and `Content-Type` headers of the HTTP request. You can
    #   specify one of the following: or the default .
    #
    #        <ul> <li> <p> <code>application/json</code> — standard JSON format </p> </li> <li> <p> <code>application/x-amzn-ion</code> — the Amazon Ion data format. For more information, see <a href="http://amzn.github.io/ion-docs/">Amazon Ion</a>. </p> </li> </ul>
    #
    # @option params [String] :profile_token
    #   Amazon CodeGuru Profiler uses this universally unique identifier
    #   (UUID) to prevent the accidental submission of duplicate profiling
    #   data if there are failures and retries.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :profiling_group_name
    #   The name of the profiling group with the aggregated profile that
    #   receives the submitted profiling data.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.post_agent_profile({
    #     agent_profile: "data", # required
    #     content_type: "String", # required
    #     profile_token: "ClientToken",
    #     profiling_group_name: "ProfilingGroupName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguruprofiler-2019-07-18/PostAgentProfile AWS API Documentation
    #
    # @overload post_agent_profile(params = {})
    # @param [Hash] params ({})
    def post_agent_profile(params = {}, options = {})
      req = build_request(:post_agent_profile, params)
      req.send_request(options)
    end

    # Adds permissions to a profiling group's resource-based policy that
    # are provided using an action group. If a profiling group doesn't have
    # a resource-based policy, one is created for it using the permissions
    # in the action group and the roles and users in the `principals`
    # parameter.
    #
    #      <p> The one supported action group that can be added is <code>agentPermission</code> which grants <code>ConfigureAgent</code> and <code>PostAgent</code> permissions. For more information, see <a href="https://docs.aws.amazon.com/codeguru/latest/profiler-ug/resource-based-policies.html">Resource-based policies in CodeGuru Profiler</a> in the <i>Amazon CodeGuru Profiler User Guide</i>, <a href="https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_ConfigureAgent.html"> <code>ConfigureAgent</code> </a>, and <a href="https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_PostAgentProfile.html"> <code>PostAgentProfile</code> </a>. </p> <p> The first time you call <code>PutPermission</code> on a profiling group, do not specify a <code>revisionId</code> because it doesn't have a resource-based policy. Subsequent calls must provide a <code>revisionId</code> to specify which revision of the resource-based policy to add the permissions to. </p> <p> The response contains the profiling group's JSON-formatted resource policy. </p>
    #
    # @option params [required, String] :action_group
    #   Specifies an action group that contains permissions to add to a
    #   profiling group resource. One action group is supported,
    #   `agentPermissions`, which grants permission to perform actions
    #   required by the profiling agent, `ConfigureAgent` and
    #   `PostAgentProfile` permissions.
    #
    # @option params [required, Array<String>] :principals
    #   A list ARNs for the roles and users you want to grant access to the
    #   profiling group. Wildcards are not are supported in the ARNs.
    #
    # @option params [required, String] :profiling_group_name
    #   The name of the profiling group to grant access to.
    #
    # @option params [String] :revision_id
    #   A universally unique identifier (UUID) for the revision of the policy
    #   you are adding to the profiling group. Do not specify this when you
    #   add permissions to a profiling group for the first time. If a policy
    #   already exists on the profiling group, you must specify the
    #   `revisionId`.
    #
    # @return [Types::PutPermissionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutPermissionResponse#policy #policy} => String
    #   * {Types::PutPermissionResponse#revision_id #revision_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_permission({
    #     action_group: "agentPermissions", # required, accepts agentPermissions
    #     principals: ["Principal"], # required
    #     profiling_group_name: "ProfilingGroupName", # required
    #     revision_id: "RevisionId",
    #   })
    #
    # @example Response structure
    #
    #   resp.policy #=> String
    #   resp.revision_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguruprofiler-2019-07-18/PutPermission AWS API Documentation
    #
    # @overload put_permission(params = {})
    # @param [Hash] params ({})
    def put_permission(params = {}, options = {})
      req = build_request(:put_permission, params)
      req.send_request(options)
    end

    # Remove one anomaly notifications channel for a profiling group.
    #
    # @option params [required, String] :channel_id
    #   The id of the channel that we want to stop receiving notifications.
    #
    # @option params [required, String] :profiling_group_name
    #   The name of the profiling group we want to change notification
    #   configuration for.
    #
    # @return [Types::RemoveNotificationChannelResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RemoveNotificationChannelResponse#notification_configuration #notification_configuration} => Types::NotificationConfiguration
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.remove_notification_channel({
    #     channel_id: "ChannelId", # required
    #     profiling_group_name: "ProfilingGroupName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.notification_configuration.channels #=> Array
    #   resp.notification_configuration.channels[0].event_publishers #=> Array
    #   resp.notification_configuration.channels[0].event_publishers[0] #=> String, one of "AnomalyDetection"
    #   resp.notification_configuration.channels[0].id #=> String
    #   resp.notification_configuration.channels[0].uri #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguruprofiler-2019-07-18/RemoveNotificationChannel AWS API Documentation
    #
    # @overload remove_notification_channel(params = {})
    # @param [Hash] params ({})
    def remove_notification_channel(params = {}, options = {})
      req = build_request(:remove_notification_channel, params)
      req.send_request(options)
    end

    # Removes permissions from a profiling group's resource-based policy
    # that are provided using an action group. The one supported action
    # group that can be removed is `agentPermission` which grants
    # `ConfigureAgent` and `PostAgent` permissions. For more information,
    # see [Resource-based policies in CodeGuru Profiler][1] in the *Amazon
    # CodeGuru Profiler User Guide*, [ `ConfigureAgent` ][2], and [
    # `PostAgentProfile` ][3].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/codeguru/latest/profiler-ug/resource-based-policies.html
    # [2]: https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_ConfigureAgent.html
    # [3]: https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_PostAgentProfile.html
    #
    # @option params [required, String] :action_group
    #   Specifies an action group that contains the permissions to remove from
    #   a profiling group's resource-based policy. One action group is
    #   supported, `agentPermissions`, which grants `ConfigureAgent` and
    #   `PostAgentProfile` permissions.
    #
    # @option params [required, String] :profiling_group_name
    #   The name of the profiling group.
    #
    # @option params [required, String] :revision_id
    #   A universally unique identifier (UUID) for the revision of the
    #   resource-based policy from which you want to remove permissions.
    #
    # @return [Types::RemovePermissionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RemovePermissionResponse#policy #policy} => String
    #   * {Types::RemovePermissionResponse#revision_id #revision_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.remove_permission({
    #     action_group: "agentPermissions", # required, accepts agentPermissions
    #     profiling_group_name: "ProfilingGroupName", # required
    #     revision_id: "RevisionId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.policy #=> String
    #   resp.revision_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguruprofiler-2019-07-18/RemovePermission AWS API Documentation
    #
    # @overload remove_permission(params = {})
    # @param [Hash] params ({})
    def remove_permission(params = {}, options = {})
      req = build_request(:remove_permission, params)
      req.send_request(options)
    end

    # Sends feedback to CodeGuru Profiler about whether the anomaly detected
    # by the analysis is useful or not.
    #
    # @option params [required, String] :anomaly_instance_id
    #   The universally unique identifier (UUID) of the [ `AnomalyInstance`
    #   ][1] object that is included in the analysis data.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_AnomalyInstance.html
    #
    # @option params [String] :comment
    #   Optional feedback about this anomaly.
    #
    # @option params [required, String] :profiling_group_name
    #   The name of the profiling group that is associated with the analysis
    #   data.
    #
    # @option params [required, String] :type
    #   The feedback tpye. Thee are two valid values, `Positive` and
    #   `Negative`.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.submit_feedback({
    #     anomaly_instance_id: "AnomalyInstanceId", # required
    #     comment: "String",
    #     profiling_group_name: "ProfilingGroupName", # required
    #     type: "Negative", # required, accepts Negative, Positive
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguruprofiler-2019-07-18/SubmitFeedback AWS API Documentation
    #
    # @overload submit_feedback(params = {})
    # @param [Hash] params ({})
    def submit_feedback(params = {}, options = {})
      req = build_request(:submit_feedback, params)
      req.send_request(options)
    end

    # Use to assign one or more tags to a resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource that the tags are added
    #   to.
    #
    # @option params [required, Hash<String,String>] :tags
    #   The list of tags that are added to the specified resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "ProfilingGroupArn", # required
    #     tags: { # required
    #       "String" => "String",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguruprofiler-2019-07-18/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Use to remove one or more tags from a resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource that contains the tags
    #   to remove.
    #
    # @option params [required, Array<String>] :tag_keys
    #   A list of tag keys. Existing tags of resources with keys in this list
    #   are removed from the specified resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "ProfilingGroupArn", # required
    #     tag_keys: ["String"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguruprofiler-2019-07-18/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates a profiling group.
    #
    # @option params [required, Types::AgentOrchestrationConfig] :agent_orchestration_config
    #   Specifies whether profiling is enabled or disabled for a profiling
    #   group.
    #
    # @option params [required, String] :profiling_group_name
    #   The name of the profiling group to update.
    #
    # @return [Types::UpdateProfilingGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateProfilingGroupResponse#profiling_group #profiling_group} => Types::ProfilingGroupDescription
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_profiling_group({
    #     agent_orchestration_config: { # required
    #       profiling_enabled: false, # required
    #     },
    #     profiling_group_name: "ProfilingGroupName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.profiling_group.agent_orchestration_config.profiling_enabled #=> Boolean
    #   resp.profiling_group.arn #=> String
    #   resp.profiling_group.compute_platform #=> String, one of "AWSLambda", "Default"
    #   resp.profiling_group.created_at #=> Time
    #   resp.profiling_group.name #=> String
    #   resp.profiling_group.profiling_status.latest_agent_orchestrated_at #=> Time
    #   resp.profiling_group.profiling_status.latest_agent_profile_reported_at #=> Time
    #   resp.profiling_group.profiling_status.latest_aggregated_profile.period #=> String, one of "P1D", "PT1H", "PT5M"
    #   resp.profiling_group.profiling_status.latest_aggregated_profile.start #=> Time
    #   resp.profiling_group.tags #=> Hash
    #   resp.profiling_group.tags["String"] #=> String
    #   resp.profiling_group.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguruprofiler-2019-07-18/UpdateProfilingGroup AWS API Documentation
    #
    # @overload update_profiling_group(params = {})
    # @param [Hash] params ({})
    def update_profiling_group(params = {}, options = {})
      req = build_request(:update_profiling_group, params)
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
      context[:gem_name] = 'aws-sdk-codeguruprofiler'
      context[:gem_version] = '1.12.0'
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
