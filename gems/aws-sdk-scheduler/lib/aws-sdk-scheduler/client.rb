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

Aws::Plugins::GlobalConfiguration.add_identifier(:scheduler)

module Aws::Scheduler
  # An API client for Scheduler.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::Scheduler::Client.new(
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

    @identifier = :scheduler

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
    add_plugin(Aws::Scheduler::Plugins::Endpoints)

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
    #   @option options [Aws::Scheduler::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to `Aws::Scheduler::EndpointParameters`
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

    # Creates the specified schedule.
    #
    # @option params [String] :client_token
    #   Unique, case-sensitive identifier you provide to ensure the
    #   idempotency of the request. If you do not specify a client token,
    #   EventBridge Scheduler uses a randomly generated token for the request
    #   to ensure idempotency.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [String] :description
    #   The description you specify for the schedule.
    #
    # @option params [Time,DateTime,Date,Integer,String] :end_date
    #   The date, in UTC, before which the schedule can invoke its target.
    #   Depending on the schedule's recurrence expression, invocations might
    #   stop on, or before, the `EndDate` you specify. EventBridge Scheduler
    #   ignores `EndDate` for one-time schedules.
    #
    # @option params [required, Types::FlexibleTimeWindow] :flexible_time_window
    #   Allows you to configure a time window during which EventBridge
    #   Scheduler invokes the schedule.
    #
    # @option params [String] :group_name
    #   The name of the schedule group to associate with this schedule. If you
    #   omit this, the default schedule group is used.
    #
    # @option params [String] :kms_key_arn
    #   The Amazon Resource Name (ARN) for the customer managed KMS key that
    #   EventBridge Scheduler will use to encrypt and decrypt your data.
    #
    # @option params [required, String] :name
    #   The name of the schedule that you are creating.
    #
    # @option params [required, String] :schedule_expression
    #   The expression that defines when the schedule runs. The following
    #   formats are supported.
    #
    #   * `at` expression - `at(yyyy-mm-ddThh:mm:ss)`
    #
    #   * `rate` expression - `rate(unit value)`
    #
    #   * `cron` expression - `cron(fields)`
    #
    #   You can use `at` expressions to create one-time schedules that invoke
    #   a target once, at the time and in the time zone, that you specify. You
    #   can use `rate` and `cron` expressions to create recurring schedules.
    #   Rate-based schedules are useful when you want to invoke a target at
    #   regular intervals, such as every 15 minutes or every five days.
    #   Cron-based schedules are useful when you want to invoke a target
    #   periodically at a specific time, such as at 8:00 am (UTC+0) every 1st
    #   day of the month.
    #
    #   A `cron` expression consists of six fields separated by white spaces:
    #   `(minutes hours day_of_month month day_of_week year)`.
    #
    #   A `rate` expression consists of a *value* as a positive integer, and a
    #   *unit* with the following options: `minute` \| `minutes` \| `hour` \|
    #   `hours` \| `day` \| `days`
    #
    #   For more information and examples, see [Schedule types on EventBridge
    #   Scheduler][1] in the *EventBridge Scheduler User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/scheduler/latest/UserGuide/schedule-types.html
    #
    # @option params [String] :schedule_expression_timezone
    #   The timezone in which the scheduling expression is evaluated.
    #
    # @option params [Time,DateTime,Date,Integer,String] :start_date
    #   The date, in UTC, after which the schedule can begin invoking its
    #   target. Depending on the schedule's recurrence expression,
    #   invocations might occur on, or after, the `StartDate` you specify.
    #   EventBridge Scheduler ignores `StartDate` for one-time schedules.
    #
    # @option params [String] :state
    #   Specifies whether the schedule is enabled or disabled.
    #
    # @option params [required, Types::Target] :target
    #   The schedule's target.
    #
    # @return [Types::CreateScheduleOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateScheduleOutput#schedule_arn #schedule_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_schedule({
    #     client_token: "ClientToken",
    #     description: "Description",
    #     end_date: Time.now,
    #     flexible_time_window: { # required
    #       maximum_window_in_minutes: 1,
    #       mode: "OFF", # required, accepts OFF, FLEXIBLE
    #     },
    #     group_name: "ScheduleGroupName",
    #     kms_key_arn: "KmsKeyArn",
    #     name: "Name", # required
    #     schedule_expression: "ScheduleExpression", # required
    #     schedule_expression_timezone: "ScheduleExpressionTimezone",
    #     start_date: Time.now,
    #     state: "ENABLED", # accepts ENABLED, DISABLED
    #     target: { # required
    #       arn: "TargetArn", # required
    #       dead_letter_config: {
    #         arn: "DeadLetterConfigArnString",
    #       },
    #       ecs_parameters: {
    #         capacity_provider_strategy: [
    #           {
    #             base: 1,
    #             capacity_provider: "CapacityProvider", # required
    #             weight: 1,
    #           },
    #         ],
    #         enable_ecs_managed_tags: false,
    #         enable_execute_command: false,
    #         group: "Group",
    #         launch_type: "EC2", # accepts EC2, FARGATE, EXTERNAL
    #         network_configuration: {
    #           awsvpc_configuration: {
    #             assign_public_ip: "ENABLED", # accepts ENABLED, DISABLED
    #             security_groups: ["SecurityGroup"],
    #             subnets: ["Subnet"], # required
    #           },
    #         },
    #         placement_constraints: [
    #           {
    #             expression: "PlacementConstraintExpression",
    #             type: "distinctInstance", # accepts distinctInstance, memberOf
    #           },
    #         ],
    #         placement_strategy: [
    #           {
    #             field: "PlacementStrategyField",
    #             type: "random", # accepts random, spread, binpack
    #           },
    #         ],
    #         platform_version: "PlatformVersion",
    #         propagate_tags: "TASK_DEFINITION", # accepts TASK_DEFINITION
    #         reference_id: "ReferenceId",
    #         tags: [
    #           {
    #             "TagKey" => "TagValue",
    #           },
    #         ],
    #         task_count: 1,
    #         task_definition_arn: "TaskDefinitionArn", # required
    #       },
    #       event_bridge_parameters: {
    #         detail_type: "DetailType", # required
    #         source: "Source", # required
    #       },
    #       input: "TargetInput",
    #       kinesis_parameters: {
    #         partition_key: "TargetPartitionKey", # required
    #       },
    #       retry_policy: {
    #         maximum_event_age_in_seconds: 1,
    #         maximum_retry_attempts: 1,
    #       },
    #       role_arn: "RoleArn", # required
    #       sage_maker_pipeline_parameters: {
    #         pipeline_parameter_list: [
    #           {
    #             name: "SageMakerPipelineParameterName", # required
    #             value: "SageMakerPipelineParameterValue", # required
    #           },
    #         ],
    #       },
    #       sqs_parameters: {
    #         message_group_id: "MessageGroupId",
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.schedule_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/scheduler-2021-06-30/CreateSchedule AWS API Documentation
    #
    # @overload create_schedule(params = {})
    # @param [Hash] params ({})
    def create_schedule(params = {}, options = {})
      req = build_request(:create_schedule, params)
      req.send_request(options)
    end

    # Creates the specified schedule group.
    #
    # @option params [String] :client_token
    #   Unique, case-sensitive identifier you provide to ensure the
    #   idempotency of the request. If you do not specify a client token,
    #   EventBridge Scheduler uses a randomly generated token for the request
    #   to ensure idempotency.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :name
    #   The name of the schedule group that you are creating.
    #
    # @option params [Array<Types::Tag>] :tags
    #   The list of tags to associate with the schedule group.
    #
    # @return [Types::CreateScheduleGroupOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateScheduleGroupOutput#schedule_group_arn #schedule_group_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_schedule_group({
    #     client_token: "ClientToken",
    #     name: "ScheduleGroupName", # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.schedule_group_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/scheduler-2021-06-30/CreateScheduleGroup AWS API Documentation
    #
    # @overload create_schedule_group(params = {})
    # @param [Hash] params ({})
    def create_schedule_group(params = {}, options = {})
      req = build_request(:create_schedule_group, params)
      req.send_request(options)
    end

    # Deletes the specified schedule.
    #
    # @option params [String] :client_token
    #   Unique, case-sensitive identifier you provide to ensure the
    #   idempotency of the request. If you do not specify a client token,
    #   EventBridge Scheduler uses a randomly generated token for the request
    #   to ensure idempotency.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [String] :group_name
    #   The name of the schedule group associated with this schedule. If you
    #   omit this, the default schedule group is used.
    #
    # @option params [required, String] :name
    #   The name of the schedule to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_schedule({
    #     client_token: "ClientToken",
    #     group_name: "ScheduleGroupName",
    #     name: "Name", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/scheduler-2021-06-30/DeleteSchedule AWS API Documentation
    #
    # @overload delete_schedule(params = {})
    # @param [Hash] params ({})
    def delete_schedule(params = {}, options = {})
      req = build_request(:delete_schedule, params)
      req.send_request(options)
    end

    # Deletes the specified schedule group. Deleting a schedule group
    # results in EventBridge Scheduler deleting all schedules associated
    # with the group. When you delete a group, it remains in a `DELETING`
    # state until all of its associated schedules are deleted. Schedules
    # associated with the group that are set to run while the schedule group
    # is in the process of being deleted might continue to invoke their
    # targets until the schedule group and its associated schedules are
    # deleted.
    #
    # <note markdown="1"> This operation is eventually consistent.
    #
    #  </note>
    #
    # @option params [String] :client_token
    #   Unique, case-sensitive identifier you provide to ensure the
    #   idempotency of the request. If you do not specify a client token,
    #   EventBridge Scheduler uses a randomly generated token for the request
    #   to ensure idempotency.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :name
    #   The name of the schedule group to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_schedule_group({
    #     client_token: "ClientToken",
    #     name: "ScheduleGroupName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/scheduler-2021-06-30/DeleteScheduleGroup AWS API Documentation
    #
    # @overload delete_schedule_group(params = {})
    # @param [Hash] params ({})
    def delete_schedule_group(params = {}, options = {})
      req = build_request(:delete_schedule_group, params)
      req.send_request(options)
    end

    # Retrieves the specified schedule.
    #
    # @option params [String] :group_name
    #   The name of the schedule group associated with this schedule. If you
    #   omit this, EventBridge Scheduler assumes that the schedule is
    #   associated with the default group.
    #
    # @option params [required, String] :name
    #   The name of the schedule to retrieve.
    #
    # @return [Types::GetScheduleOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetScheduleOutput#arn #arn} => String
    #   * {Types::GetScheduleOutput#creation_date #creation_date} => Time
    #   * {Types::GetScheduleOutput#description #description} => String
    #   * {Types::GetScheduleOutput#end_date #end_date} => Time
    #   * {Types::GetScheduleOutput#flexible_time_window #flexible_time_window} => Types::FlexibleTimeWindow
    #   * {Types::GetScheduleOutput#group_name #group_name} => String
    #   * {Types::GetScheduleOutput#kms_key_arn #kms_key_arn} => String
    #   * {Types::GetScheduleOutput#last_modification_date #last_modification_date} => Time
    #   * {Types::GetScheduleOutput#name #name} => String
    #   * {Types::GetScheduleOutput#schedule_expression #schedule_expression} => String
    #   * {Types::GetScheduleOutput#schedule_expression_timezone #schedule_expression_timezone} => String
    #   * {Types::GetScheduleOutput#start_date #start_date} => Time
    #   * {Types::GetScheduleOutput#state #state} => String
    #   * {Types::GetScheduleOutput#target #target} => Types::Target
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_schedule({
    #     group_name: "ScheduleGroupName",
    #     name: "Name", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.creation_date #=> Time
    #   resp.description #=> String
    #   resp.end_date #=> Time
    #   resp.flexible_time_window.maximum_window_in_minutes #=> Integer
    #   resp.flexible_time_window.mode #=> String, one of "OFF", "FLEXIBLE"
    #   resp.group_name #=> String
    #   resp.kms_key_arn #=> String
    #   resp.last_modification_date #=> Time
    #   resp.name #=> String
    #   resp.schedule_expression #=> String
    #   resp.schedule_expression_timezone #=> String
    #   resp.start_date #=> Time
    #   resp.state #=> String, one of "ENABLED", "DISABLED"
    #   resp.target.arn #=> String
    #   resp.target.dead_letter_config.arn #=> String
    #   resp.target.ecs_parameters.capacity_provider_strategy #=> Array
    #   resp.target.ecs_parameters.capacity_provider_strategy[0].base #=> Integer
    #   resp.target.ecs_parameters.capacity_provider_strategy[0].capacity_provider #=> String
    #   resp.target.ecs_parameters.capacity_provider_strategy[0].weight #=> Integer
    #   resp.target.ecs_parameters.enable_ecs_managed_tags #=> Boolean
    #   resp.target.ecs_parameters.enable_execute_command #=> Boolean
    #   resp.target.ecs_parameters.group #=> String
    #   resp.target.ecs_parameters.launch_type #=> String, one of "EC2", "FARGATE", "EXTERNAL"
    #   resp.target.ecs_parameters.network_configuration.awsvpc_configuration.assign_public_ip #=> String, one of "ENABLED", "DISABLED"
    #   resp.target.ecs_parameters.network_configuration.awsvpc_configuration.security_groups #=> Array
    #   resp.target.ecs_parameters.network_configuration.awsvpc_configuration.security_groups[0] #=> String
    #   resp.target.ecs_parameters.network_configuration.awsvpc_configuration.subnets #=> Array
    #   resp.target.ecs_parameters.network_configuration.awsvpc_configuration.subnets[0] #=> String
    #   resp.target.ecs_parameters.placement_constraints #=> Array
    #   resp.target.ecs_parameters.placement_constraints[0].expression #=> String
    #   resp.target.ecs_parameters.placement_constraints[0].type #=> String, one of "distinctInstance", "memberOf"
    #   resp.target.ecs_parameters.placement_strategy #=> Array
    #   resp.target.ecs_parameters.placement_strategy[0].field #=> String
    #   resp.target.ecs_parameters.placement_strategy[0].type #=> String, one of "random", "spread", "binpack"
    #   resp.target.ecs_parameters.platform_version #=> String
    #   resp.target.ecs_parameters.propagate_tags #=> String, one of "TASK_DEFINITION"
    #   resp.target.ecs_parameters.reference_id #=> String
    #   resp.target.ecs_parameters.tags #=> Array
    #   resp.target.ecs_parameters.tags[0] #=> Hash
    #   resp.target.ecs_parameters.tags[0]["TagKey"] #=> String
    #   resp.target.ecs_parameters.task_count #=> Integer
    #   resp.target.ecs_parameters.task_definition_arn #=> String
    #   resp.target.event_bridge_parameters.detail_type #=> String
    #   resp.target.event_bridge_parameters.source #=> String
    #   resp.target.input #=> String
    #   resp.target.kinesis_parameters.partition_key #=> String
    #   resp.target.retry_policy.maximum_event_age_in_seconds #=> Integer
    #   resp.target.retry_policy.maximum_retry_attempts #=> Integer
    #   resp.target.role_arn #=> String
    #   resp.target.sage_maker_pipeline_parameters.pipeline_parameter_list #=> Array
    #   resp.target.sage_maker_pipeline_parameters.pipeline_parameter_list[0].name #=> String
    #   resp.target.sage_maker_pipeline_parameters.pipeline_parameter_list[0].value #=> String
    #   resp.target.sqs_parameters.message_group_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/scheduler-2021-06-30/GetSchedule AWS API Documentation
    #
    # @overload get_schedule(params = {})
    # @param [Hash] params ({})
    def get_schedule(params = {}, options = {})
      req = build_request(:get_schedule, params)
      req.send_request(options)
    end

    # Retrieves the specified schedule group.
    #
    # @option params [required, String] :name
    #   The name of the schedule group to retrieve.
    #
    # @return [Types::GetScheduleGroupOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetScheduleGroupOutput#arn #arn} => String
    #   * {Types::GetScheduleGroupOutput#creation_date #creation_date} => Time
    #   * {Types::GetScheduleGroupOutput#last_modification_date #last_modification_date} => Time
    #   * {Types::GetScheduleGroupOutput#name #name} => String
    #   * {Types::GetScheduleGroupOutput#state #state} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_schedule_group({
    #     name: "ScheduleGroupName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.creation_date #=> Time
    #   resp.last_modification_date #=> Time
    #   resp.name #=> String
    #   resp.state #=> String, one of "ACTIVE", "DELETING"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/scheduler-2021-06-30/GetScheduleGroup AWS API Documentation
    #
    # @overload get_schedule_group(params = {})
    # @param [Hash] params ({})
    def get_schedule_group(params = {}, options = {})
      req = build_request(:get_schedule_group, params)
      req.send_request(options)
    end

    # Returns a paginated list of your schedule groups.
    #
    # @option params [Integer] :max_results
    #   If specified, limits the number of results returned by this operation.
    #   The operation also returns a `NextToken` which you can use in a
    #   subsequent operation to retrieve the next set of results.
    #
    # @option params [String] :name_prefix
    #   The name prefix that you can use to return a filtered list of your
    #   schedule groups.
    #
    # @option params [String] :next_token
    #   The token returned by a previous call to retrieve the next set of
    #   results.
    #
    # @return [Types::ListScheduleGroupsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListScheduleGroupsOutput#next_token #next_token} => String
    #   * {Types::ListScheduleGroupsOutput#schedule_groups #schedule_groups} => Array&lt;Types::ScheduleGroupSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_schedule_groups({
    #     max_results: 1,
    #     name_prefix: "ScheduleGroupNamePrefix",
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.schedule_groups #=> Array
    #   resp.schedule_groups[0].arn #=> String
    #   resp.schedule_groups[0].creation_date #=> Time
    #   resp.schedule_groups[0].last_modification_date #=> Time
    #   resp.schedule_groups[0].name #=> String
    #   resp.schedule_groups[0].state #=> String, one of "ACTIVE", "DELETING"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/scheduler-2021-06-30/ListScheduleGroups AWS API Documentation
    #
    # @overload list_schedule_groups(params = {})
    # @param [Hash] params ({})
    def list_schedule_groups(params = {}, options = {})
      req = build_request(:list_schedule_groups, params)
      req.send_request(options)
    end

    # Returns a paginated list of your EventBridge Scheduler schedules.
    #
    # @option params [String] :group_name
    #   If specified, only lists the schedules whose associated schedule group
    #   matches the given filter.
    #
    # @option params [Integer] :max_results
    #   If specified, limits the number of results returned by this operation.
    #   The operation also returns a `NextToken` which you can use in a
    #   subsequent operation to retrieve the next set of results.
    #
    # @option params [String] :name_prefix
    #   Schedule name prefix to return the filtered list of resources.
    #
    # @option params [String] :next_token
    #   The token returned by a previous call to retrieve the next set of
    #   results.
    #
    # @option params [String] :state
    #   If specified, only lists the schedules whose current state matches the
    #   given filter.
    #
    # @return [Types::ListSchedulesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListSchedulesOutput#next_token #next_token} => String
    #   * {Types::ListSchedulesOutput#schedules #schedules} => Array&lt;Types::ScheduleSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_schedules({
    #     group_name: "ScheduleGroupName",
    #     max_results: 1,
    #     name_prefix: "NamePrefix",
    #     next_token: "NextToken",
    #     state: "ENABLED", # accepts ENABLED, DISABLED
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.schedules #=> Array
    #   resp.schedules[0].arn #=> String
    #   resp.schedules[0].creation_date #=> Time
    #   resp.schedules[0].group_name #=> String
    #   resp.schedules[0].last_modification_date #=> Time
    #   resp.schedules[0].name #=> String
    #   resp.schedules[0].state #=> String, one of "ENABLED", "DISABLED"
    #   resp.schedules[0].target.arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/scheduler-2021-06-30/ListSchedules AWS API Documentation
    #
    # @overload list_schedules(params = {})
    # @param [Hash] params ({})
    def list_schedules(params = {}, options = {})
      req = build_request(:list_schedules, params)
      req.send_request(options)
    end

    # Lists the tags associated with the Scheduler resource.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the EventBridge Scheduler resource for which you want to
    #   view tags.
    #
    # @return [Types::ListTagsForResourceOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceOutput#tags #tags} => Array&lt;Types::Tag&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "TagResourceArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/scheduler-2021-06-30/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Assigns one or more tags (key-value pairs) to the specified
    # EventBridge Scheduler resource. You can only assign tags to schedule
    # groups.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the schedule group that you are
    #   adding tags to.
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   The list of tags to associate with the schedule group.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "TagResourceArn", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/scheduler-2021-06-30/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes one or more tags from the specified EventBridge Scheduler
    # schedule group.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the schedule group from which you
    #   are removing tags.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The list of tag keys to remove from the resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "TagResourceArn", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/scheduler-2021-06-30/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates the specified schedule. When you call `UpdateSchedule`,
    # EventBridge Scheduler uses all values, including empty values,
    # specified in the request and overrides the existing schedule. This is
    # by design. This means that if you do not set an optional field in your
    # request, that field will be set to its system-default value after the
    # update.
    #
    # Before calling this operation, we recommend that you call the
    # `GetSchedule` API operation and make a note of all optional parameters
    # for your `UpdateSchedule` call.
    #
    # @option params [String] :client_token
    #   Unique, case-sensitive identifier you provide to ensure the
    #   idempotency of the request. If you do not specify a client token,
    #   EventBridge Scheduler uses a randomly generated token for the request
    #   to ensure idempotency.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [String] :description
    #   The description you specify for the schedule.
    #
    # @option params [Time,DateTime,Date,Integer,String] :end_date
    #   The date, in UTC, before which the schedule can invoke its target.
    #   Depending on the schedule's recurrence expression, invocations might
    #   stop on, or before, the `EndDate` you specify. EventBridge Scheduler
    #   ignores `EndDate` for one-time schedules.
    #
    # @option params [required, Types::FlexibleTimeWindow] :flexible_time_window
    #   Allows you to configure a time window during which EventBridge
    #   Scheduler invokes the schedule.
    #
    # @option params [String] :group_name
    #   The name of the schedule group with which the schedule is associated.
    #   You must provide this value in order for EventBridge Scheduler to find
    #   the schedule you want to update. If you omit this value, EventBridge
    #   Scheduler assumes the group is associated to the default group.
    #
    # @option params [String] :kms_key_arn
    #   The ARN for the customer managed KMS key that that you want
    #   EventBridge Scheduler to use to encrypt and decrypt your data.
    #
    # @option params [required, String] :name
    #   The name of the schedule that you are updating.
    #
    # @option params [required, String] :schedule_expression
    #   The expression that defines when the schedule runs. The following
    #   formats are supported.
    #
    #   * `at` expression - `at(yyyy-mm-ddThh:mm:ss)`
    #
    #   * `rate` expression - `rate(unit value)`
    #
    #   * `cron` expression - `cron(fields)`
    #
    #   You can use `at` expressions to create one-time schedules that invoke
    #   a target once, at the time and in the time zone, that you specify. You
    #   can use `rate` and `cron` expressions to create recurring schedules.
    #   Rate-based schedules are useful when you want to invoke a target at
    #   regular intervals, such as every 15 minutes or every five days.
    #   Cron-based schedules are useful when you want to invoke a target
    #   periodically at a specific time, such as at 8:00 am (UTC+0) every 1st
    #   day of the month.
    #
    #   A `cron` expression consists of six fields separated by white spaces:
    #   `(minutes hours day_of_month month day_of_week year)`.
    #
    #   A `rate` expression consists of a *value* as a positive integer, and a
    #   *unit* with the following options: `minute` \| `minutes` \| `hour` \|
    #   `hours` \| `day` \| `days`
    #
    #   For more information and examples, see [Schedule types on EventBridge
    #   Scheduler][1] in the *EventBridge Scheduler User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/scheduler/latest/UserGuide/schedule-types.html
    #
    # @option params [String] :schedule_expression_timezone
    #   The timezone in which the scheduling expression is evaluated.
    #
    # @option params [Time,DateTime,Date,Integer,String] :start_date
    #   The date, in UTC, after which the schedule can begin invoking its
    #   target. Depending on the schedule's recurrence expression,
    #   invocations might occur on, or after, the `StartDate` you specify.
    #   EventBridge Scheduler ignores `StartDate` for one-time schedules.
    #
    # @option params [String] :state
    #   Specifies whether the schedule is enabled or disabled.
    #
    # @option params [required, Types::Target] :target
    #   The schedule target. You can use this operation to change the target
    #   that your schedule invokes.
    #
    # @return [Types::UpdateScheduleOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateScheduleOutput#schedule_arn #schedule_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_schedule({
    #     client_token: "ClientToken",
    #     description: "Description",
    #     end_date: Time.now,
    #     flexible_time_window: { # required
    #       maximum_window_in_minutes: 1,
    #       mode: "OFF", # required, accepts OFF, FLEXIBLE
    #     },
    #     group_name: "ScheduleGroupName",
    #     kms_key_arn: "KmsKeyArn",
    #     name: "Name", # required
    #     schedule_expression: "ScheduleExpression", # required
    #     schedule_expression_timezone: "ScheduleExpressionTimezone",
    #     start_date: Time.now,
    #     state: "ENABLED", # accepts ENABLED, DISABLED
    #     target: { # required
    #       arn: "TargetArn", # required
    #       dead_letter_config: {
    #         arn: "DeadLetterConfigArnString",
    #       },
    #       ecs_parameters: {
    #         capacity_provider_strategy: [
    #           {
    #             base: 1,
    #             capacity_provider: "CapacityProvider", # required
    #             weight: 1,
    #           },
    #         ],
    #         enable_ecs_managed_tags: false,
    #         enable_execute_command: false,
    #         group: "Group",
    #         launch_type: "EC2", # accepts EC2, FARGATE, EXTERNAL
    #         network_configuration: {
    #           awsvpc_configuration: {
    #             assign_public_ip: "ENABLED", # accepts ENABLED, DISABLED
    #             security_groups: ["SecurityGroup"],
    #             subnets: ["Subnet"], # required
    #           },
    #         },
    #         placement_constraints: [
    #           {
    #             expression: "PlacementConstraintExpression",
    #             type: "distinctInstance", # accepts distinctInstance, memberOf
    #           },
    #         ],
    #         placement_strategy: [
    #           {
    #             field: "PlacementStrategyField",
    #             type: "random", # accepts random, spread, binpack
    #           },
    #         ],
    #         platform_version: "PlatformVersion",
    #         propagate_tags: "TASK_DEFINITION", # accepts TASK_DEFINITION
    #         reference_id: "ReferenceId",
    #         tags: [
    #           {
    #             "TagKey" => "TagValue",
    #           },
    #         ],
    #         task_count: 1,
    #         task_definition_arn: "TaskDefinitionArn", # required
    #       },
    #       event_bridge_parameters: {
    #         detail_type: "DetailType", # required
    #         source: "Source", # required
    #       },
    #       input: "TargetInput",
    #       kinesis_parameters: {
    #         partition_key: "TargetPartitionKey", # required
    #       },
    #       retry_policy: {
    #         maximum_event_age_in_seconds: 1,
    #         maximum_retry_attempts: 1,
    #       },
    #       role_arn: "RoleArn", # required
    #       sage_maker_pipeline_parameters: {
    #         pipeline_parameter_list: [
    #           {
    #             name: "SageMakerPipelineParameterName", # required
    #             value: "SageMakerPipelineParameterValue", # required
    #           },
    #         ],
    #       },
    #       sqs_parameters: {
    #         message_group_id: "MessageGroupId",
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.schedule_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/scheduler-2021-06-30/UpdateSchedule AWS API Documentation
    #
    # @overload update_schedule(params = {})
    # @param [Hash] params ({})
    def update_schedule(params = {}, options = {})
      req = build_request(:update_schedule, params)
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
      context[:gem_name] = 'aws-sdk-scheduler'
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
