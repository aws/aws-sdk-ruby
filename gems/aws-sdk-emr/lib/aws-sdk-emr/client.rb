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
require 'aws-sdk-core/plugins/protocols/json_rpc.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:emr)

module Aws::EMR
  # An API client for EMR.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::EMR::Client.new(
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

    @identifier = :emr

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
    add_plugin(Aws::Plugins::Protocols::JsonRpc)

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
    #   @option options [Boolean] :simple_json (false)
    #     Disables request parameter conversion, validation, and formatting.
    #     Also disable response data type conversions. This option is useful
    #     when you want to ensure the highest level of performance by
    #     avoiding overhead of walking request parameters and response data
    #     structures.
    #
    #     When `:simple_json` is enabled, the request parameters hash must
    #     be formatted exactly as the DynamoDB API expects.
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

    # Adds an instance fleet to a running cluster.
    #
    # <note markdown="1"> The instance fleet configuration is available only in Amazon EMR
    # versions 4.8.0 and later, excluding 5.0.x.
    #
    #  </note>
    #
    # @option params [required, String] :cluster_id
    #   The unique identifier of the cluster.
    #
    # @option params [required, Types::InstanceFleetConfig] :instance_fleet
    #   Specifies the configuration of the instance fleet.
    #
    # @return [Types::AddInstanceFleetOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AddInstanceFleetOutput#cluster_id #cluster_id} => String
    #   * {Types::AddInstanceFleetOutput#instance_fleet_id #instance_fleet_id} => String
    #   * {Types::AddInstanceFleetOutput#cluster_arn #cluster_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.add_instance_fleet({
    #     cluster_id: "XmlStringMaxLen256", # required
    #     instance_fleet: { # required
    #       name: "XmlStringMaxLen256",
    #       instance_fleet_type: "MASTER", # required, accepts MASTER, CORE, TASK
    #       target_on_demand_capacity: 1,
    #       target_spot_capacity: 1,
    #       instance_type_configs: [
    #         {
    #           instance_type: "InstanceType", # required
    #           weighted_capacity: 1,
    #           bid_price: "XmlStringMaxLen256",
    #           bid_price_as_percentage_of_on_demand_price: 1.0,
    #           ebs_configuration: {
    #             ebs_block_device_configs: [
    #               {
    #                 volume_specification: { # required
    #                   volume_type: "String", # required
    #                   iops: 1,
    #                   size_in_gb: 1, # required
    #                 },
    #                 volumes_per_instance: 1,
    #               },
    #             ],
    #             ebs_optimized: false,
    #           },
    #           configurations: [
    #             {
    #               classification: "String",
    #               configurations: {
    #                 # recursive ConfigurationList
    #               },
    #               properties: {
    #                 "String" => "String",
    #               },
    #             },
    #           ],
    #         },
    #       ],
    #       launch_specifications: {
    #         spot_specification: {
    #           timeout_duration_minutes: 1, # required
    #           timeout_action: "SWITCH_TO_ON_DEMAND", # required, accepts SWITCH_TO_ON_DEMAND, TERMINATE_CLUSTER
    #           block_duration_minutes: 1,
    #           allocation_strategy: "capacity-optimized", # accepts capacity-optimized
    #         },
    #         on_demand_specification: {
    #           allocation_strategy: "lowest-price", # required, accepts lowest-price
    #         },
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.cluster_id #=> String
    #   resp.instance_fleet_id #=> String
    #   resp.cluster_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/AddInstanceFleet AWS API Documentation
    #
    # @overload add_instance_fleet(params = {})
    # @param [Hash] params ({})
    def add_instance_fleet(params = {}, options = {})
      req = build_request(:add_instance_fleet, params)
      req.send_request(options)
    end

    # Adds one or more instance groups to a running cluster.
    #
    # @option params [required, Array<Types::InstanceGroupConfig>] :instance_groups
    #   Instance groups to add.
    #
    # @option params [required, String] :job_flow_id
    #   Job flow in which to add the instance groups.
    #
    # @return [Types::AddInstanceGroupsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AddInstanceGroupsOutput#job_flow_id #job_flow_id} => String
    #   * {Types::AddInstanceGroupsOutput#instance_group_ids #instance_group_ids} => Array&lt;String&gt;
    #   * {Types::AddInstanceGroupsOutput#cluster_arn #cluster_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.add_instance_groups({
    #     instance_groups: [ # required
    #       {
    #         name: "XmlStringMaxLen256",
    #         market: "ON_DEMAND", # accepts ON_DEMAND, SPOT
    #         instance_role: "MASTER", # required, accepts MASTER, CORE, TASK
    #         bid_price: "XmlStringMaxLen256",
    #         instance_type: "InstanceType", # required
    #         instance_count: 1, # required
    #         configurations: [
    #           {
    #             classification: "String",
    #             configurations: {
    #               # recursive ConfigurationList
    #             },
    #             properties: {
    #               "String" => "String",
    #             },
    #           },
    #         ],
    #         ebs_configuration: {
    #           ebs_block_device_configs: [
    #             {
    #               volume_specification: { # required
    #                 volume_type: "String", # required
    #                 iops: 1,
    #                 size_in_gb: 1, # required
    #               },
    #               volumes_per_instance: 1,
    #             },
    #           ],
    #           ebs_optimized: false,
    #         },
    #         auto_scaling_policy: {
    #           constraints: { # required
    #             min_capacity: 1, # required
    #             max_capacity: 1, # required
    #           },
    #           rules: [ # required
    #             {
    #               name: "String", # required
    #               description: "String",
    #               action: { # required
    #                 market: "ON_DEMAND", # accepts ON_DEMAND, SPOT
    #                 simple_scaling_policy_configuration: { # required
    #                   adjustment_type: "CHANGE_IN_CAPACITY", # accepts CHANGE_IN_CAPACITY, PERCENT_CHANGE_IN_CAPACITY, EXACT_CAPACITY
    #                   scaling_adjustment: 1, # required
    #                   cool_down: 1,
    #                 },
    #               },
    #               trigger: { # required
    #                 cloud_watch_alarm_definition: { # required
    #                   comparison_operator: "GREATER_THAN_OR_EQUAL", # required, accepts GREATER_THAN_OR_EQUAL, GREATER_THAN, LESS_THAN, LESS_THAN_OR_EQUAL
    #                   evaluation_periods: 1,
    #                   metric_name: "String", # required
    #                   namespace: "String",
    #                   period: 1, # required
    #                   statistic: "SAMPLE_COUNT", # accepts SAMPLE_COUNT, AVERAGE, SUM, MINIMUM, MAXIMUM
    #                   threshold: 1.0, # required
    #                   unit: "NONE", # accepts NONE, SECONDS, MICRO_SECONDS, MILLI_SECONDS, BYTES, KILO_BYTES, MEGA_BYTES, GIGA_BYTES, TERA_BYTES, BITS, KILO_BITS, MEGA_BITS, GIGA_BITS, TERA_BITS, PERCENT, COUNT, BYTES_PER_SECOND, KILO_BYTES_PER_SECOND, MEGA_BYTES_PER_SECOND, GIGA_BYTES_PER_SECOND, TERA_BYTES_PER_SECOND, BITS_PER_SECOND, KILO_BITS_PER_SECOND, MEGA_BITS_PER_SECOND, GIGA_BITS_PER_SECOND, TERA_BITS_PER_SECOND, COUNT_PER_SECOND
    #                   dimensions: [
    #                     {
    #                       key: "String",
    #                       value: "String",
    #                     },
    #                   ],
    #                 },
    #               },
    #             },
    #           ],
    #         },
    #       },
    #     ],
    #     job_flow_id: "XmlStringMaxLen256", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.job_flow_id #=> String
    #   resp.instance_group_ids #=> Array
    #   resp.instance_group_ids[0] #=> String
    #   resp.cluster_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/AddInstanceGroups AWS API Documentation
    #
    # @overload add_instance_groups(params = {})
    # @param [Hash] params ({})
    def add_instance_groups(params = {}, options = {})
      req = build_request(:add_instance_groups, params)
      req.send_request(options)
    end

    # AddJobFlowSteps adds new steps to a running cluster. A maximum of 256
    # steps are allowed in each job flow.
    #
    # If your cluster is long-running (such as a Hive data warehouse) or
    # complex, you may require more than 256 steps to process your data. You
    # can bypass the 256-step limitation in various ways, including using
    # SSH to connect to the master node and submitting queries directly to
    # the software running on the master node, such as Hive and Hadoop. For
    # more information on how to do this, see [Add More than 256 Steps to a
    # Cluster][1] in the *Amazon EMR Management Guide*.
    #
    # A step specifies the location of a JAR file stored either on the
    # master node of the cluster or in Amazon S3. Each step is performed by
    # the main function of the main class of the JAR file. The main class
    # can be specified either in the manifest of the JAR or by using the
    # MainFunction parameter of the step.
    #
    # Amazon EMR executes each step in the order listed. For a step to be
    # considered complete, the main function must exit with a zero exit code
    # and all Hadoop jobs started while the step was running must have
    # completed and run successfully.
    #
    # You can only add steps to a cluster that is in one of the following
    # states: STARTING, BOOTSTRAPPING, RUNNING, or WAITING.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/emr/latest/ManagementGuide/AddMoreThan256Steps.html
    #
    # @option params [required, String] :job_flow_id
    #   A string that uniquely identifies the job flow. This identifier is
    #   returned by RunJobFlow and can also be obtained from ListClusters.
    #
    # @option params [required, Array<Types::StepConfig>] :steps
    #   A list of StepConfig to be executed by the job flow.
    #
    # @return [Types::AddJobFlowStepsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AddJobFlowStepsOutput#step_ids #step_ids} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.add_job_flow_steps({
    #     job_flow_id: "XmlStringMaxLen256", # required
    #     steps: [ # required
    #       {
    #         name: "XmlStringMaxLen256", # required
    #         action_on_failure: "TERMINATE_JOB_FLOW", # accepts TERMINATE_JOB_FLOW, TERMINATE_CLUSTER, CANCEL_AND_WAIT, CONTINUE
    #         hadoop_jar_step: { # required
    #           properties: [
    #             {
    #               key: "XmlString",
    #               value: "XmlString",
    #             },
    #           ],
    #           jar: "XmlString", # required
    #           main_class: "XmlString",
    #           args: ["XmlString"],
    #         },
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.step_ids #=> Array
    #   resp.step_ids[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/AddJobFlowSteps AWS API Documentation
    #
    # @overload add_job_flow_steps(params = {})
    # @param [Hash] params ({})
    def add_job_flow_steps(params = {}, options = {})
      req = build_request(:add_job_flow_steps, params)
      req.send_request(options)
    end

    # Adds tags to an Amazon EMR resource. Tags make it easier to associate
    # clusters in various ways, such as grouping clusters to track your
    # Amazon EMR resource allocation costs. For more information, see [Tag
    # Clusters][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-plan-tags.html
    #
    # @option params [required, String] :resource_id
    #   The Amazon EMR resource identifier to which tags will be added. This
    #   value must be a cluster identifier.
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   A list of tags to associate with a cluster and propagate to EC2
    #   instances. Tags are user-defined key/value pairs that consist of a
    #   required key string with a maximum of 128 characters, and an optional
    #   value string with a maximum of 256 characters.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.add_tags({
    #     resource_id: "ResourceId", # required
    #     tags: [ # required
    #       {
    #         key: "String",
    #         value: "String",
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/AddTags AWS API Documentation
    #
    # @overload add_tags(params = {})
    # @param [Hash] params ({})
    def add_tags(params = {}, options = {})
      req = build_request(:add_tags, params)
      req.send_request(options)
    end

    # Cancels a pending step or steps in a running cluster. Available only
    # in Amazon EMR versions 4.8.0 and later, excluding version 5.0.0. A
    # maximum of 256 steps are allowed in each CancelSteps request.
    # CancelSteps is idempotent but asynchronous; it does not guarantee a
    # step will be canceled, even if the request is successfully submitted.
    # You can only cancel steps that are in a `PENDING` state.
    #
    # @option params [required, String] :cluster_id
    #   The `ClusterID` for which specified steps will be canceled. Use
    #   RunJobFlow and ListClusters to get ClusterIDs.
    #
    # @option params [required, Array<String>] :step_ids
    #   The list of `StepIDs` to cancel. Use ListSteps to get steps and their
    #   states for the specified cluster.
    #
    # @option params [String] :step_cancellation_option
    #   The option to choose for cancelling `RUNNING` steps. By default, the
    #   value is `SEND_INTERRUPT`.
    #
    # @return [Types::CancelStepsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CancelStepsOutput#cancel_steps_info_list #cancel_steps_info_list} => Array&lt;Types::CancelStepsInfo&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_steps({
    #     cluster_id: "XmlStringMaxLen256", # required
    #     step_ids: ["XmlStringMaxLen256"], # required
    #     step_cancellation_option: "SEND_INTERRUPT", # accepts SEND_INTERRUPT, TERMINATE_PROCESS
    #   })
    #
    # @example Response structure
    #
    #   resp.cancel_steps_info_list #=> Array
    #   resp.cancel_steps_info_list[0].step_id #=> String
    #   resp.cancel_steps_info_list[0].status #=> String, one of "SUBMITTED", "FAILED"
    #   resp.cancel_steps_info_list[0].reason #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/CancelSteps AWS API Documentation
    #
    # @overload cancel_steps(params = {})
    # @param [Hash] params ({})
    def cancel_steps(params = {}, options = {})
      req = build_request(:cancel_steps, params)
      req.send_request(options)
    end

    # Creates a security configuration, which is stored in the service and
    # can be specified when a cluster is created.
    #
    # @option params [required, String] :name
    #   The name of the security configuration.
    #
    # @option params [required, String] :security_configuration
    #   The security configuration details in JSON format. For JSON parameters
    #   and examples, see [Use Security Configurations to Set Up Cluster
    #   Security][1] in the *Amazon EMR Management Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-security-configurations.html
    #
    # @return [Types::CreateSecurityConfigurationOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateSecurityConfigurationOutput#name #name} => String
    #   * {Types::CreateSecurityConfigurationOutput#creation_date_time #creation_date_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_security_configuration({
    #     name: "XmlString", # required
    #     security_configuration: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #   resp.creation_date_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/CreateSecurityConfiguration AWS API Documentation
    #
    # @overload create_security_configuration(params = {})
    # @param [Hash] params ({})
    def create_security_configuration(params = {}, options = {})
      req = build_request(:create_security_configuration, params)
      req.send_request(options)
    end

    # Deletes a security configuration.
    #
    # @option params [required, String] :name
    #   The name of the security configuration.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_security_configuration({
    #     name: "XmlString", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/DeleteSecurityConfiguration AWS API Documentation
    #
    # @overload delete_security_configuration(params = {})
    # @param [Hash] params ({})
    def delete_security_configuration(params = {}, options = {})
      req = build_request(:delete_security_configuration, params)
      req.send_request(options)
    end

    # Provides cluster-level details including status, hardware and software
    # configuration, VPC settings, and so on.
    #
    # @option params [required, String] :cluster_id
    #   The identifier of the cluster to describe.
    #
    # @return [Types::DescribeClusterOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeClusterOutput#cluster #cluster} => Types::Cluster
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_cluster({
    #     cluster_id: "ClusterId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.cluster.id #=> String
    #   resp.cluster.name #=> String
    #   resp.cluster.status.state #=> String, one of "STARTING", "BOOTSTRAPPING", "RUNNING", "WAITING", "TERMINATING", "TERMINATED", "TERMINATED_WITH_ERRORS"
    #   resp.cluster.status.state_change_reason.code #=> String, one of "INTERNAL_ERROR", "VALIDATION_ERROR", "INSTANCE_FAILURE", "INSTANCE_FLEET_TIMEOUT", "BOOTSTRAP_FAILURE", "USER_REQUEST", "STEP_FAILURE", "ALL_STEPS_COMPLETED"
    #   resp.cluster.status.state_change_reason.message #=> String
    #   resp.cluster.status.timeline.creation_date_time #=> Time
    #   resp.cluster.status.timeline.ready_date_time #=> Time
    #   resp.cluster.status.timeline.end_date_time #=> Time
    #   resp.cluster.ec2_instance_attributes.ec2_key_name #=> String
    #   resp.cluster.ec2_instance_attributes.ec2_subnet_id #=> String
    #   resp.cluster.ec2_instance_attributes.requested_ec2_subnet_ids #=> Array
    #   resp.cluster.ec2_instance_attributes.requested_ec2_subnet_ids[0] #=> String
    #   resp.cluster.ec2_instance_attributes.ec2_availability_zone #=> String
    #   resp.cluster.ec2_instance_attributes.requested_ec2_availability_zones #=> Array
    #   resp.cluster.ec2_instance_attributes.requested_ec2_availability_zones[0] #=> String
    #   resp.cluster.ec2_instance_attributes.iam_instance_profile #=> String
    #   resp.cluster.ec2_instance_attributes.emr_managed_master_security_group #=> String
    #   resp.cluster.ec2_instance_attributes.emr_managed_slave_security_group #=> String
    #   resp.cluster.ec2_instance_attributes.service_access_security_group #=> String
    #   resp.cluster.ec2_instance_attributes.additional_master_security_groups #=> Array
    #   resp.cluster.ec2_instance_attributes.additional_master_security_groups[0] #=> String
    #   resp.cluster.ec2_instance_attributes.additional_slave_security_groups #=> Array
    #   resp.cluster.ec2_instance_attributes.additional_slave_security_groups[0] #=> String
    #   resp.cluster.instance_collection_type #=> String, one of "INSTANCE_FLEET", "INSTANCE_GROUP"
    #   resp.cluster.log_uri #=> String
    #   resp.cluster.log_encryption_kms_key_id #=> String
    #   resp.cluster.requested_ami_version #=> String
    #   resp.cluster.running_ami_version #=> String
    #   resp.cluster.release_label #=> String
    #   resp.cluster.auto_terminate #=> Boolean
    #   resp.cluster.termination_protected #=> Boolean
    #   resp.cluster.visible_to_all_users #=> Boolean
    #   resp.cluster.applications #=> Array
    #   resp.cluster.applications[0].name #=> String
    #   resp.cluster.applications[0].version #=> String
    #   resp.cluster.applications[0].args #=> Array
    #   resp.cluster.applications[0].args[0] #=> String
    #   resp.cluster.applications[0].additional_info #=> Hash
    #   resp.cluster.applications[0].additional_info["String"] #=> String
    #   resp.cluster.tags #=> Array
    #   resp.cluster.tags[0].key #=> String
    #   resp.cluster.tags[0].value #=> String
    #   resp.cluster.service_role #=> String
    #   resp.cluster.normalized_instance_hours #=> Integer
    #   resp.cluster.master_public_dns_name #=> String
    #   resp.cluster.configurations #=> Array
    #   resp.cluster.configurations[0].classification #=> String
    #   resp.cluster.configurations[0].configurations #=> Types::ConfigurationList
    #   resp.cluster.configurations[0].properties #=> Hash
    #   resp.cluster.configurations[0].properties["String"] #=> String
    #   resp.cluster.security_configuration #=> String
    #   resp.cluster.auto_scaling_role #=> String
    #   resp.cluster.scale_down_behavior #=> String, one of "TERMINATE_AT_INSTANCE_HOUR", "TERMINATE_AT_TASK_COMPLETION"
    #   resp.cluster.custom_ami_id #=> String
    #   resp.cluster.ebs_root_volume_size #=> Integer
    #   resp.cluster.repo_upgrade_on_boot #=> String, one of "SECURITY", "NONE"
    #   resp.cluster.kerberos_attributes.realm #=> String
    #   resp.cluster.kerberos_attributes.kdc_admin_password #=> String
    #   resp.cluster.kerberos_attributes.cross_realm_trust_principal_password #=> String
    #   resp.cluster.kerberos_attributes.ad_domain_join_user #=> String
    #   resp.cluster.kerberos_attributes.ad_domain_join_password #=> String
    #   resp.cluster.cluster_arn #=> String
    #   resp.cluster.outpost_arn #=> String
    #   resp.cluster.step_concurrency_level #=> Integer
    #   resp.cluster.placement_groups #=> Array
    #   resp.cluster.placement_groups[0].instance_role #=> String, one of "MASTER", "CORE", "TASK"
    #   resp.cluster.placement_groups[0].placement_strategy #=> String, one of "SPREAD", "PARTITION", "CLUSTER", "NONE"
    #
    #
    # The following waiters are defined for this operation (see {Client#wait_until} for detailed usage):
    #
    #   * cluster_running
    #   * cluster_terminated
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/DescribeCluster AWS API Documentation
    #
    # @overload describe_cluster(params = {})
    # @param [Hash] params ({})
    def describe_cluster(params = {}, options = {})
      req = build_request(:describe_cluster, params)
      req.send_request(options)
    end

    # This API is deprecated and will eventually be removed. We recommend
    # you use ListClusters, DescribeCluster, ListSteps, ListInstanceGroups
    # and ListBootstrapActions instead.
    #
    # DescribeJobFlows returns a list of job flows that match all of the
    # supplied parameters. The parameters can include a list of job flow
    # IDs, job flow states, and restrictions on job flow creation date and
    # time.
    #
    # Regardless of supplied parameters, only job flows created within the
    # last two months are returned.
    #
    # If no parameters are supplied, then job flows matching either of the
    # following criteria are returned:
    #
    # * Job flows created and completed in the last two weeks
    #
    # * Job flows created within the last two months that are in one of the
    #   following states: `RUNNING`, `WAITING`, `SHUTTING_DOWN`, `STARTING`
    #
    # Amazon EMR can return a maximum of 512 job flow descriptions.
    #
    # @option params [Time,DateTime,Date,Integer,String] :created_after
    #   Return only job flows created after this date and time.
    #
    # @option params [Time,DateTime,Date,Integer,String] :created_before
    #   Return only job flows created before this date and time.
    #
    # @option params [Array<String>] :job_flow_ids
    #   Return only job flows whose job flow ID is contained in this list.
    #
    # @option params [Array<String>] :job_flow_states
    #   Return only job flows whose state is contained in this list.
    #
    # @return [Types::DescribeJobFlowsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeJobFlowsOutput#job_flows #job_flows} => Array&lt;Types::JobFlowDetail&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_job_flows({
    #     created_after: Time.now,
    #     created_before: Time.now,
    #     job_flow_ids: ["XmlString"],
    #     job_flow_states: ["STARTING"], # accepts STARTING, BOOTSTRAPPING, RUNNING, WAITING, SHUTTING_DOWN, TERMINATED, COMPLETED, FAILED
    #   })
    #
    # @example Response structure
    #
    #   resp.job_flows #=> Array
    #   resp.job_flows[0].job_flow_id #=> String
    #   resp.job_flows[0].name #=> String
    #   resp.job_flows[0].log_uri #=> String
    #   resp.job_flows[0].log_encryption_kms_key_id #=> String
    #   resp.job_flows[0].ami_version #=> String
    #   resp.job_flows[0].execution_status_detail.state #=> String, one of "STARTING", "BOOTSTRAPPING", "RUNNING", "WAITING", "SHUTTING_DOWN", "TERMINATED", "COMPLETED", "FAILED"
    #   resp.job_flows[0].execution_status_detail.creation_date_time #=> Time
    #   resp.job_flows[0].execution_status_detail.start_date_time #=> Time
    #   resp.job_flows[0].execution_status_detail.ready_date_time #=> Time
    #   resp.job_flows[0].execution_status_detail.end_date_time #=> Time
    #   resp.job_flows[0].execution_status_detail.last_state_change_reason #=> String
    #   resp.job_flows[0].instances.master_instance_type #=> String
    #   resp.job_flows[0].instances.master_public_dns_name #=> String
    #   resp.job_flows[0].instances.master_instance_id #=> String
    #   resp.job_flows[0].instances.slave_instance_type #=> String
    #   resp.job_flows[0].instances.instance_count #=> Integer
    #   resp.job_flows[0].instances.instance_groups #=> Array
    #   resp.job_flows[0].instances.instance_groups[0].instance_group_id #=> String
    #   resp.job_flows[0].instances.instance_groups[0].name #=> String
    #   resp.job_flows[0].instances.instance_groups[0].market #=> String, one of "ON_DEMAND", "SPOT"
    #   resp.job_flows[0].instances.instance_groups[0].instance_role #=> String, one of "MASTER", "CORE", "TASK"
    #   resp.job_flows[0].instances.instance_groups[0].bid_price #=> String
    #   resp.job_flows[0].instances.instance_groups[0].instance_type #=> String
    #   resp.job_flows[0].instances.instance_groups[0].instance_request_count #=> Integer
    #   resp.job_flows[0].instances.instance_groups[0].instance_running_count #=> Integer
    #   resp.job_flows[0].instances.instance_groups[0].state #=> String, one of "PROVISIONING", "BOOTSTRAPPING", "RUNNING", "RECONFIGURING", "RESIZING", "SUSPENDED", "TERMINATING", "TERMINATED", "ARRESTED", "SHUTTING_DOWN", "ENDED"
    #   resp.job_flows[0].instances.instance_groups[0].last_state_change_reason #=> String
    #   resp.job_flows[0].instances.instance_groups[0].creation_date_time #=> Time
    #   resp.job_flows[0].instances.instance_groups[0].start_date_time #=> Time
    #   resp.job_flows[0].instances.instance_groups[0].ready_date_time #=> Time
    #   resp.job_flows[0].instances.instance_groups[0].end_date_time #=> Time
    #   resp.job_flows[0].instances.normalized_instance_hours #=> Integer
    #   resp.job_flows[0].instances.ec2_key_name #=> String
    #   resp.job_flows[0].instances.ec2_subnet_id #=> String
    #   resp.job_flows[0].instances.placement.availability_zone #=> String
    #   resp.job_flows[0].instances.placement.availability_zones #=> Array
    #   resp.job_flows[0].instances.placement.availability_zones[0] #=> String
    #   resp.job_flows[0].instances.keep_job_flow_alive_when_no_steps #=> Boolean
    #   resp.job_flows[0].instances.termination_protected #=> Boolean
    #   resp.job_flows[0].instances.hadoop_version #=> String
    #   resp.job_flows[0].steps #=> Array
    #   resp.job_flows[0].steps[0].step_config.name #=> String
    #   resp.job_flows[0].steps[0].step_config.action_on_failure #=> String, one of "TERMINATE_JOB_FLOW", "TERMINATE_CLUSTER", "CANCEL_AND_WAIT", "CONTINUE"
    #   resp.job_flows[0].steps[0].step_config.hadoop_jar_step.properties #=> Array
    #   resp.job_flows[0].steps[0].step_config.hadoop_jar_step.properties[0].key #=> String
    #   resp.job_flows[0].steps[0].step_config.hadoop_jar_step.properties[0].value #=> String
    #   resp.job_flows[0].steps[0].step_config.hadoop_jar_step.jar #=> String
    #   resp.job_flows[0].steps[0].step_config.hadoop_jar_step.main_class #=> String
    #   resp.job_flows[0].steps[0].step_config.hadoop_jar_step.args #=> Array
    #   resp.job_flows[0].steps[0].step_config.hadoop_jar_step.args[0] #=> String
    #   resp.job_flows[0].steps[0].execution_status_detail.state #=> String, one of "PENDING", "RUNNING", "CONTINUE", "COMPLETED", "CANCELLED", "FAILED", "INTERRUPTED"
    #   resp.job_flows[0].steps[0].execution_status_detail.creation_date_time #=> Time
    #   resp.job_flows[0].steps[0].execution_status_detail.start_date_time #=> Time
    #   resp.job_flows[0].steps[0].execution_status_detail.end_date_time #=> Time
    #   resp.job_flows[0].steps[0].execution_status_detail.last_state_change_reason #=> String
    #   resp.job_flows[0].bootstrap_actions #=> Array
    #   resp.job_flows[0].bootstrap_actions[0].bootstrap_action_config.name #=> String
    #   resp.job_flows[0].bootstrap_actions[0].bootstrap_action_config.script_bootstrap_action.path #=> String
    #   resp.job_flows[0].bootstrap_actions[0].bootstrap_action_config.script_bootstrap_action.args #=> Array
    #   resp.job_flows[0].bootstrap_actions[0].bootstrap_action_config.script_bootstrap_action.args[0] #=> String
    #   resp.job_flows[0].supported_products #=> Array
    #   resp.job_flows[0].supported_products[0] #=> String
    #   resp.job_flows[0].visible_to_all_users #=> Boolean
    #   resp.job_flows[0].job_flow_role #=> String
    #   resp.job_flows[0].service_role #=> String
    #   resp.job_flows[0].auto_scaling_role #=> String
    #   resp.job_flows[0].scale_down_behavior #=> String, one of "TERMINATE_AT_INSTANCE_HOUR", "TERMINATE_AT_TASK_COMPLETION"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/DescribeJobFlows AWS API Documentation
    #
    # @overload describe_job_flows(params = {})
    # @param [Hash] params ({})
    def describe_job_flows(params = {}, options = {})
      req = build_request(:describe_job_flows, params)
      req.send_request(options)
    end

    # Provides details of a notebook execution.
    #
    # @option params [required, String] :notebook_execution_id
    #   The unique identifier of the notebook execution.
    #
    # @return [Types::DescribeNotebookExecutionOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeNotebookExecutionOutput#notebook_execution #notebook_execution} => Types::NotebookExecution
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_notebook_execution({
    #     notebook_execution_id: "XmlStringMaxLen256", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.notebook_execution.notebook_execution_id #=> String
    #   resp.notebook_execution.editor_id #=> String
    #   resp.notebook_execution.execution_engine.id #=> String
    #   resp.notebook_execution.execution_engine.type #=> String, one of "EMR"
    #   resp.notebook_execution.execution_engine.master_instance_security_group_id #=> String
    #   resp.notebook_execution.notebook_execution_name #=> String
    #   resp.notebook_execution.notebook_params #=> String
    #   resp.notebook_execution.status #=> String, one of "START_PENDING", "STARTING", "RUNNING", "FINISHING", "FINISHED", "FAILING", "FAILED", "STOP_PENDING", "STOPPING", "STOPPED"
    #   resp.notebook_execution.start_time #=> Time
    #   resp.notebook_execution.end_time #=> Time
    #   resp.notebook_execution.arn #=> String
    #   resp.notebook_execution.output_notebook_uri #=> String
    #   resp.notebook_execution.last_state_change_reason #=> String
    #   resp.notebook_execution.notebook_instance_security_group_id #=> String
    #   resp.notebook_execution.tags #=> Array
    #   resp.notebook_execution.tags[0].key #=> String
    #   resp.notebook_execution.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/DescribeNotebookExecution AWS API Documentation
    #
    # @overload describe_notebook_execution(params = {})
    # @param [Hash] params ({})
    def describe_notebook_execution(params = {}, options = {})
      req = build_request(:describe_notebook_execution, params)
      req.send_request(options)
    end

    # Provides the details of a security configuration by returning the
    # configuration JSON.
    #
    # @option params [required, String] :name
    #   The name of the security configuration.
    #
    # @return [Types::DescribeSecurityConfigurationOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeSecurityConfigurationOutput#name #name} => String
    #   * {Types::DescribeSecurityConfigurationOutput#security_configuration #security_configuration} => String
    #   * {Types::DescribeSecurityConfigurationOutput#creation_date_time #creation_date_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_security_configuration({
    #     name: "XmlString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #   resp.security_configuration #=> String
    #   resp.creation_date_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/DescribeSecurityConfiguration AWS API Documentation
    #
    # @overload describe_security_configuration(params = {})
    # @param [Hash] params ({})
    def describe_security_configuration(params = {}, options = {})
      req = build_request(:describe_security_configuration, params)
      req.send_request(options)
    end

    # Provides more detail about the cluster step.
    #
    # @option params [required, String] :cluster_id
    #   The identifier of the cluster with steps to describe.
    #
    # @option params [required, String] :step_id
    #   The identifier of the step to describe.
    #
    # @return [Types::DescribeStepOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeStepOutput#step #step} => Types::Step
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_step({
    #     cluster_id: "ClusterId", # required
    #     step_id: "StepId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.step.id #=> String
    #   resp.step.name #=> String
    #   resp.step.config.jar #=> String
    #   resp.step.config.properties #=> Hash
    #   resp.step.config.properties["String"] #=> String
    #   resp.step.config.main_class #=> String
    #   resp.step.config.args #=> Array
    #   resp.step.config.args[0] #=> String
    #   resp.step.action_on_failure #=> String, one of "TERMINATE_JOB_FLOW", "TERMINATE_CLUSTER", "CANCEL_AND_WAIT", "CONTINUE"
    #   resp.step.status.state #=> String, one of "PENDING", "CANCEL_PENDING", "RUNNING", "COMPLETED", "CANCELLED", "FAILED", "INTERRUPTED"
    #   resp.step.status.state_change_reason.code #=> String, one of "NONE"
    #   resp.step.status.state_change_reason.message #=> String
    #   resp.step.status.failure_details.reason #=> String
    #   resp.step.status.failure_details.message #=> String
    #   resp.step.status.failure_details.log_file #=> String
    #   resp.step.status.timeline.creation_date_time #=> Time
    #   resp.step.status.timeline.start_date_time #=> Time
    #   resp.step.status.timeline.end_date_time #=> Time
    #
    #
    # The following waiters are defined for this operation (see {Client#wait_until} for detailed usage):
    #
    #   * step_complete
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/DescribeStep AWS API Documentation
    #
    # @overload describe_step(params = {})
    # @param [Hash] params ({})
    def describe_step(params = {}, options = {})
      req = build_request(:describe_step, params)
      req.send_request(options)
    end

    # Returns the Amazon EMR block public access configuration for your AWS
    # account in the current Region. For more information see [Configure
    # Block Public Access for Amazon EMR][1] in the *Amazon EMR Management
    # Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/emr/latest/ManagementGuide/configure-block-public-access.html
    #
    # @return [Types::GetBlockPublicAccessConfigurationOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetBlockPublicAccessConfigurationOutput#block_public_access_configuration #block_public_access_configuration} => Types::BlockPublicAccessConfiguration
    #   * {Types::GetBlockPublicAccessConfigurationOutput#block_public_access_configuration_metadata #block_public_access_configuration_metadata} => Types::BlockPublicAccessConfigurationMetadata
    #
    # @example Response structure
    #
    #   resp.block_public_access_configuration.block_public_security_group_rules #=> Boolean
    #   resp.block_public_access_configuration.permitted_public_security_group_rule_ranges #=> Array
    #   resp.block_public_access_configuration.permitted_public_security_group_rule_ranges[0].min_range #=> Integer
    #   resp.block_public_access_configuration.permitted_public_security_group_rule_ranges[0].max_range #=> Integer
    #   resp.block_public_access_configuration_metadata.creation_date_time #=> Time
    #   resp.block_public_access_configuration_metadata.created_by_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/GetBlockPublicAccessConfiguration AWS API Documentation
    #
    # @overload get_block_public_access_configuration(params = {})
    # @param [Hash] params ({})
    def get_block_public_access_configuration(params = {}, options = {})
      req = build_request(:get_block_public_access_configuration, params)
      req.send_request(options)
    end

    # Fetches the attached managed scaling policy for an Amazon EMR cluster.
    #
    # @option params [required, String] :cluster_id
    #   Specifies the ID of the cluster for which the managed scaling policy
    #   will be fetched.
    #
    # @return [Types::GetManagedScalingPolicyOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetManagedScalingPolicyOutput#managed_scaling_policy #managed_scaling_policy} => Types::ManagedScalingPolicy
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_managed_scaling_policy({
    #     cluster_id: "ClusterId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.managed_scaling_policy.compute_limits.unit_type #=> String, one of "InstanceFleetUnits", "Instances", "VCPU"
    #   resp.managed_scaling_policy.compute_limits.minimum_capacity_units #=> Integer
    #   resp.managed_scaling_policy.compute_limits.maximum_capacity_units #=> Integer
    #   resp.managed_scaling_policy.compute_limits.maximum_on_demand_capacity_units #=> Integer
    #   resp.managed_scaling_policy.compute_limits.maximum_core_capacity_units #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/GetManagedScalingPolicy AWS API Documentation
    #
    # @overload get_managed_scaling_policy(params = {})
    # @param [Hash] params ({})
    def get_managed_scaling_policy(params = {}, options = {})
      req = build_request(:get_managed_scaling_policy, params)
      req.send_request(options)
    end

    # Provides information about the bootstrap actions associated with a
    # cluster.
    #
    # @option params [required, String] :cluster_id
    #   The cluster identifier for the bootstrap actions to list.
    #
    # @option params [String] :marker
    #   The pagination token that indicates the next set of results to
    #   retrieve.
    #
    # @return [Types::ListBootstrapActionsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListBootstrapActionsOutput#bootstrap_actions #bootstrap_actions} => Array&lt;Types::Command&gt;
    #   * {Types::ListBootstrapActionsOutput#marker #marker} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_bootstrap_actions({
    #     cluster_id: "ClusterId", # required
    #     marker: "Marker",
    #   })
    #
    # @example Response structure
    #
    #   resp.bootstrap_actions #=> Array
    #   resp.bootstrap_actions[0].name #=> String
    #   resp.bootstrap_actions[0].script_path #=> String
    #   resp.bootstrap_actions[0].args #=> Array
    #   resp.bootstrap_actions[0].args[0] #=> String
    #   resp.marker #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/ListBootstrapActions AWS API Documentation
    #
    # @overload list_bootstrap_actions(params = {})
    # @param [Hash] params ({})
    def list_bootstrap_actions(params = {}, options = {})
      req = build_request(:list_bootstrap_actions, params)
      req.send_request(options)
    end

    # Provides the status of all clusters visible to this AWS account.
    # Allows you to filter the list of clusters based on certain criteria;
    # for example, filtering by cluster creation date and time or by status.
    # This call returns a maximum of 50 clusters per call, but returns a
    # marker to track the paging of the cluster list across multiple
    # ListClusters calls.
    #
    # @option params [Time,DateTime,Date,Integer,String] :created_after
    #   The creation date and time beginning value filter for listing
    #   clusters.
    #
    # @option params [Time,DateTime,Date,Integer,String] :created_before
    #   The creation date and time end value filter for listing clusters.
    #
    # @option params [Array<String>] :cluster_states
    #   The cluster state filters to apply when listing clusters.
    #
    # @option params [String] :marker
    #   The pagination token that indicates the next set of results to
    #   retrieve.
    #
    # @return [Types::ListClustersOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListClustersOutput#clusters #clusters} => Array&lt;Types::ClusterSummary&gt;
    #   * {Types::ListClustersOutput#marker #marker} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_clusters({
    #     created_after: Time.now,
    #     created_before: Time.now,
    #     cluster_states: ["STARTING"], # accepts STARTING, BOOTSTRAPPING, RUNNING, WAITING, TERMINATING, TERMINATED, TERMINATED_WITH_ERRORS
    #     marker: "Marker",
    #   })
    #
    # @example Response structure
    #
    #   resp.clusters #=> Array
    #   resp.clusters[0].id #=> String
    #   resp.clusters[0].name #=> String
    #   resp.clusters[0].status.state #=> String, one of "STARTING", "BOOTSTRAPPING", "RUNNING", "WAITING", "TERMINATING", "TERMINATED", "TERMINATED_WITH_ERRORS"
    #   resp.clusters[0].status.state_change_reason.code #=> String, one of "INTERNAL_ERROR", "VALIDATION_ERROR", "INSTANCE_FAILURE", "INSTANCE_FLEET_TIMEOUT", "BOOTSTRAP_FAILURE", "USER_REQUEST", "STEP_FAILURE", "ALL_STEPS_COMPLETED"
    #   resp.clusters[0].status.state_change_reason.message #=> String
    #   resp.clusters[0].status.timeline.creation_date_time #=> Time
    #   resp.clusters[0].status.timeline.ready_date_time #=> Time
    #   resp.clusters[0].status.timeline.end_date_time #=> Time
    #   resp.clusters[0].normalized_instance_hours #=> Integer
    #   resp.clusters[0].cluster_arn #=> String
    #   resp.clusters[0].outpost_arn #=> String
    #   resp.marker #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/ListClusters AWS API Documentation
    #
    # @overload list_clusters(params = {})
    # @param [Hash] params ({})
    def list_clusters(params = {}, options = {})
      req = build_request(:list_clusters, params)
      req.send_request(options)
    end

    # Lists all available details about the instance fleets in a cluster.
    #
    # <note markdown="1"> The instance fleet configuration is available only in Amazon EMR
    # versions 4.8.0 and later, excluding 5.0.x versions.
    #
    #  </note>
    #
    # @option params [required, String] :cluster_id
    #   The unique identifier of the cluster.
    #
    # @option params [String] :marker
    #   The pagination token that indicates the next set of results to
    #   retrieve.
    #
    # @return [Types::ListInstanceFleetsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListInstanceFleetsOutput#instance_fleets #instance_fleets} => Array&lt;Types::InstanceFleet&gt;
    #   * {Types::ListInstanceFleetsOutput#marker #marker} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_instance_fleets({
    #     cluster_id: "ClusterId", # required
    #     marker: "Marker",
    #   })
    #
    # @example Response structure
    #
    #   resp.instance_fleets #=> Array
    #   resp.instance_fleets[0].id #=> String
    #   resp.instance_fleets[0].name #=> String
    #   resp.instance_fleets[0].status.state #=> String, one of "PROVISIONING", "BOOTSTRAPPING", "RUNNING", "RESIZING", "SUSPENDED", "TERMINATING", "TERMINATED"
    #   resp.instance_fleets[0].status.state_change_reason.code #=> String, one of "INTERNAL_ERROR", "VALIDATION_ERROR", "INSTANCE_FAILURE", "CLUSTER_TERMINATED"
    #   resp.instance_fleets[0].status.state_change_reason.message #=> String
    #   resp.instance_fleets[0].status.timeline.creation_date_time #=> Time
    #   resp.instance_fleets[0].status.timeline.ready_date_time #=> Time
    #   resp.instance_fleets[0].status.timeline.end_date_time #=> Time
    #   resp.instance_fleets[0].instance_fleet_type #=> String, one of "MASTER", "CORE", "TASK"
    #   resp.instance_fleets[0].target_on_demand_capacity #=> Integer
    #   resp.instance_fleets[0].target_spot_capacity #=> Integer
    #   resp.instance_fleets[0].provisioned_on_demand_capacity #=> Integer
    #   resp.instance_fleets[0].provisioned_spot_capacity #=> Integer
    #   resp.instance_fleets[0].instance_type_specifications #=> Array
    #   resp.instance_fleets[0].instance_type_specifications[0].instance_type #=> String
    #   resp.instance_fleets[0].instance_type_specifications[0].weighted_capacity #=> Integer
    #   resp.instance_fleets[0].instance_type_specifications[0].bid_price #=> String
    #   resp.instance_fleets[0].instance_type_specifications[0].bid_price_as_percentage_of_on_demand_price #=> Float
    #   resp.instance_fleets[0].instance_type_specifications[0].configurations #=> Array
    #   resp.instance_fleets[0].instance_type_specifications[0].configurations[0].classification #=> String
    #   resp.instance_fleets[0].instance_type_specifications[0].configurations[0].configurations #=> Types::ConfigurationList
    #   resp.instance_fleets[0].instance_type_specifications[0].configurations[0].properties #=> Hash
    #   resp.instance_fleets[0].instance_type_specifications[0].configurations[0].properties["String"] #=> String
    #   resp.instance_fleets[0].instance_type_specifications[0].ebs_block_devices #=> Array
    #   resp.instance_fleets[0].instance_type_specifications[0].ebs_block_devices[0].volume_specification.volume_type #=> String
    #   resp.instance_fleets[0].instance_type_specifications[0].ebs_block_devices[0].volume_specification.iops #=> Integer
    #   resp.instance_fleets[0].instance_type_specifications[0].ebs_block_devices[0].volume_specification.size_in_gb #=> Integer
    #   resp.instance_fleets[0].instance_type_specifications[0].ebs_block_devices[0].device #=> String
    #   resp.instance_fleets[0].instance_type_specifications[0].ebs_optimized #=> Boolean
    #   resp.instance_fleets[0].launch_specifications.spot_specification.timeout_duration_minutes #=> Integer
    #   resp.instance_fleets[0].launch_specifications.spot_specification.timeout_action #=> String, one of "SWITCH_TO_ON_DEMAND", "TERMINATE_CLUSTER"
    #   resp.instance_fleets[0].launch_specifications.spot_specification.block_duration_minutes #=> Integer
    #   resp.instance_fleets[0].launch_specifications.spot_specification.allocation_strategy #=> String, one of "capacity-optimized"
    #   resp.instance_fleets[0].launch_specifications.on_demand_specification.allocation_strategy #=> String, one of "lowest-price"
    #   resp.marker #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/ListInstanceFleets AWS API Documentation
    #
    # @overload list_instance_fleets(params = {})
    # @param [Hash] params ({})
    def list_instance_fleets(params = {}, options = {})
      req = build_request(:list_instance_fleets, params)
      req.send_request(options)
    end

    # Provides all available details about the instance groups in a cluster.
    #
    # @option params [required, String] :cluster_id
    #   The identifier of the cluster for which to list the instance groups.
    #
    # @option params [String] :marker
    #   The pagination token that indicates the next set of results to
    #   retrieve.
    #
    # @return [Types::ListInstanceGroupsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListInstanceGroupsOutput#instance_groups #instance_groups} => Array&lt;Types::InstanceGroup&gt;
    #   * {Types::ListInstanceGroupsOutput#marker #marker} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_instance_groups({
    #     cluster_id: "ClusterId", # required
    #     marker: "Marker",
    #   })
    #
    # @example Response structure
    #
    #   resp.instance_groups #=> Array
    #   resp.instance_groups[0].id #=> String
    #   resp.instance_groups[0].name #=> String
    #   resp.instance_groups[0].market #=> String, one of "ON_DEMAND", "SPOT"
    #   resp.instance_groups[0].instance_group_type #=> String, one of "MASTER", "CORE", "TASK"
    #   resp.instance_groups[0].bid_price #=> String
    #   resp.instance_groups[0].instance_type #=> String
    #   resp.instance_groups[0].requested_instance_count #=> Integer
    #   resp.instance_groups[0].running_instance_count #=> Integer
    #   resp.instance_groups[0].status.state #=> String, one of "PROVISIONING", "BOOTSTRAPPING", "RUNNING", "RECONFIGURING", "RESIZING", "SUSPENDED", "TERMINATING", "TERMINATED", "ARRESTED", "SHUTTING_DOWN", "ENDED"
    #   resp.instance_groups[0].status.state_change_reason.code #=> String, one of "INTERNAL_ERROR", "VALIDATION_ERROR", "INSTANCE_FAILURE", "CLUSTER_TERMINATED"
    #   resp.instance_groups[0].status.state_change_reason.message #=> String
    #   resp.instance_groups[0].status.timeline.creation_date_time #=> Time
    #   resp.instance_groups[0].status.timeline.ready_date_time #=> Time
    #   resp.instance_groups[0].status.timeline.end_date_time #=> Time
    #   resp.instance_groups[0].configurations #=> Array
    #   resp.instance_groups[0].configurations[0].classification #=> String
    #   resp.instance_groups[0].configurations[0].configurations #=> Types::ConfigurationList
    #   resp.instance_groups[0].configurations[0].properties #=> Hash
    #   resp.instance_groups[0].configurations[0].properties["String"] #=> String
    #   resp.instance_groups[0].configurations_version #=> Integer
    #   resp.instance_groups[0].last_successfully_applied_configurations #=> Array
    #   resp.instance_groups[0].last_successfully_applied_configurations[0].classification #=> String
    #   resp.instance_groups[0].last_successfully_applied_configurations[0].configurations #=> Types::ConfigurationList
    #   resp.instance_groups[0].last_successfully_applied_configurations[0].properties #=> Hash
    #   resp.instance_groups[0].last_successfully_applied_configurations[0].properties["String"] #=> String
    #   resp.instance_groups[0].last_successfully_applied_configurations_version #=> Integer
    #   resp.instance_groups[0].ebs_block_devices #=> Array
    #   resp.instance_groups[0].ebs_block_devices[0].volume_specification.volume_type #=> String
    #   resp.instance_groups[0].ebs_block_devices[0].volume_specification.iops #=> Integer
    #   resp.instance_groups[0].ebs_block_devices[0].volume_specification.size_in_gb #=> Integer
    #   resp.instance_groups[0].ebs_block_devices[0].device #=> String
    #   resp.instance_groups[0].ebs_optimized #=> Boolean
    #   resp.instance_groups[0].shrink_policy.decommission_timeout #=> Integer
    #   resp.instance_groups[0].shrink_policy.instance_resize_policy.instances_to_terminate #=> Array
    #   resp.instance_groups[0].shrink_policy.instance_resize_policy.instances_to_terminate[0] #=> String
    #   resp.instance_groups[0].shrink_policy.instance_resize_policy.instances_to_protect #=> Array
    #   resp.instance_groups[0].shrink_policy.instance_resize_policy.instances_to_protect[0] #=> String
    #   resp.instance_groups[0].shrink_policy.instance_resize_policy.instance_termination_timeout #=> Integer
    #   resp.instance_groups[0].auto_scaling_policy.status.state #=> String, one of "PENDING", "ATTACHING", "ATTACHED", "DETACHING", "DETACHED", "FAILED"
    #   resp.instance_groups[0].auto_scaling_policy.status.state_change_reason.code #=> String, one of "USER_REQUEST", "PROVISION_FAILURE", "CLEANUP_FAILURE"
    #   resp.instance_groups[0].auto_scaling_policy.status.state_change_reason.message #=> String
    #   resp.instance_groups[0].auto_scaling_policy.constraints.min_capacity #=> Integer
    #   resp.instance_groups[0].auto_scaling_policy.constraints.max_capacity #=> Integer
    #   resp.instance_groups[0].auto_scaling_policy.rules #=> Array
    #   resp.instance_groups[0].auto_scaling_policy.rules[0].name #=> String
    #   resp.instance_groups[0].auto_scaling_policy.rules[0].description #=> String
    #   resp.instance_groups[0].auto_scaling_policy.rules[0].action.market #=> String, one of "ON_DEMAND", "SPOT"
    #   resp.instance_groups[0].auto_scaling_policy.rules[0].action.simple_scaling_policy_configuration.adjustment_type #=> String, one of "CHANGE_IN_CAPACITY", "PERCENT_CHANGE_IN_CAPACITY", "EXACT_CAPACITY"
    #   resp.instance_groups[0].auto_scaling_policy.rules[0].action.simple_scaling_policy_configuration.scaling_adjustment #=> Integer
    #   resp.instance_groups[0].auto_scaling_policy.rules[0].action.simple_scaling_policy_configuration.cool_down #=> Integer
    #   resp.instance_groups[0].auto_scaling_policy.rules[0].trigger.cloud_watch_alarm_definition.comparison_operator #=> String, one of "GREATER_THAN_OR_EQUAL", "GREATER_THAN", "LESS_THAN", "LESS_THAN_OR_EQUAL"
    #   resp.instance_groups[0].auto_scaling_policy.rules[0].trigger.cloud_watch_alarm_definition.evaluation_periods #=> Integer
    #   resp.instance_groups[0].auto_scaling_policy.rules[0].trigger.cloud_watch_alarm_definition.metric_name #=> String
    #   resp.instance_groups[0].auto_scaling_policy.rules[0].trigger.cloud_watch_alarm_definition.namespace #=> String
    #   resp.instance_groups[0].auto_scaling_policy.rules[0].trigger.cloud_watch_alarm_definition.period #=> Integer
    #   resp.instance_groups[0].auto_scaling_policy.rules[0].trigger.cloud_watch_alarm_definition.statistic #=> String, one of "SAMPLE_COUNT", "AVERAGE", "SUM", "MINIMUM", "MAXIMUM"
    #   resp.instance_groups[0].auto_scaling_policy.rules[0].trigger.cloud_watch_alarm_definition.threshold #=> Float
    #   resp.instance_groups[0].auto_scaling_policy.rules[0].trigger.cloud_watch_alarm_definition.unit #=> String, one of "NONE", "SECONDS", "MICRO_SECONDS", "MILLI_SECONDS", "BYTES", "KILO_BYTES", "MEGA_BYTES", "GIGA_BYTES", "TERA_BYTES", "BITS", "KILO_BITS", "MEGA_BITS", "GIGA_BITS", "TERA_BITS", "PERCENT", "COUNT", "BYTES_PER_SECOND", "KILO_BYTES_PER_SECOND", "MEGA_BYTES_PER_SECOND", "GIGA_BYTES_PER_SECOND", "TERA_BYTES_PER_SECOND", "BITS_PER_SECOND", "KILO_BITS_PER_SECOND", "MEGA_BITS_PER_SECOND", "GIGA_BITS_PER_SECOND", "TERA_BITS_PER_SECOND", "COUNT_PER_SECOND"
    #   resp.instance_groups[0].auto_scaling_policy.rules[0].trigger.cloud_watch_alarm_definition.dimensions #=> Array
    #   resp.instance_groups[0].auto_scaling_policy.rules[0].trigger.cloud_watch_alarm_definition.dimensions[0].key #=> String
    #   resp.instance_groups[0].auto_scaling_policy.rules[0].trigger.cloud_watch_alarm_definition.dimensions[0].value #=> String
    #   resp.marker #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/ListInstanceGroups AWS API Documentation
    #
    # @overload list_instance_groups(params = {})
    # @param [Hash] params ({})
    def list_instance_groups(params = {}, options = {})
      req = build_request(:list_instance_groups, params)
      req.send_request(options)
    end

    # Provides information for all active EC2 instances and EC2 instances
    # terminated in the last 30 days, up to a maximum of 2,000. EC2
    # instances in any of the following states are considered active:
    # AWAITING\_FULFILLMENT, PROVISIONING, BOOTSTRAPPING, RUNNING.
    #
    # @option params [required, String] :cluster_id
    #   The identifier of the cluster for which to list the instances.
    #
    # @option params [String] :instance_group_id
    #   The identifier of the instance group for which to list the instances.
    #
    # @option params [Array<String>] :instance_group_types
    #   The type of instance group for which to list the instances.
    #
    # @option params [String] :instance_fleet_id
    #   The unique identifier of the instance fleet.
    #
    # @option params [String] :instance_fleet_type
    #   The node type of the instance fleet. For example MASTER, CORE, or
    #   TASK.
    #
    # @option params [Array<String>] :instance_states
    #   A list of instance states that will filter the instances returned with
    #   this request.
    #
    # @option params [String] :marker
    #   The pagination token that indicates the next set of results to
    #   retrieve.
    #
    # @return [Types::ListInstancesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListInstancesOutput#instances #instances} => Array&lt;Types::Instance&gt;
    #   * {Types::ListInstancesOutput#marker #marker} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_instances({
    #     cluster_id: "ClusterId", # required
    #     instance_group_id: "InstanceGroupId",
    #     instance_group_types: ["MASTER"], # accepts MASTER, CORE, TASK
    #     instance_fleet_id: "InstanceFleetId",
    #     instance_fleet_type: "MASTER", # accepts MASTER, CORE, TASK
    #     instance_states: ["AWAITING_FULFILLMENT"], # accepts AWAITING_FULFILLMENT, PROVISIONING, BOOTSTRAPPING, RUNNING, TERMINATED
    #     marker: "Marker",
    #   })
    #
    # @example Response structure
    #
    #   resp.instances #=> Array
    #   resp.instances[0].id #=> String
    #   resp.instances[0].ec2_instance_id #=> String
    #   resp.instances[0].public_dns_name #=> String
    #   resp.instances[0].public_ip_address #=> String
    #   resp.instances[0].private_dns_name #=> String
    #   resp.instances[0].private_ip_address #=> String
    #   resp.instances[0].status.state #=> String, one of "AWAITING_FULFILLMENT", "PROVISIONING", "BOOTSTRAPPING", "RUNNING", "TERMINATED"
    #   resp.instances[0].status.state_change_reason.code #=> String, one of "INTERNAL_ERROR", "VALIDATION_ERROR", "INSTANCE_FAILURE", "BOOTSTRAP_FAILURE", "CLUSTER_TERMINATED"
    #   resp.instances[0].status.state_change_reason.message #=> String
    #   resp.instances[0].status.timeline.creation_date_time #=> Time
    #   resp.instances[0].status.timeline.ready_date_time #=> Time
    #   resp.instances[0].status.timeline.end_date_time #=> Time
    #   resp.instances[0].instance_group_id #=> String
    #   resp.instances[0].instance_fleet_id #=> String
    #   resp.instances[0].market #=> String, one of "ON_DEMAND", "SPOT"
    #   resp.instances[0].instance_type #=> String
    #   resp.instances[0].ebs_volumes #=> Array
    #   resp.instances[0].ebs_volumes[0].device #=> String
    #   resp.instances[0].ebs_volumes[0].volume_id #=> String
    #   resp.marker #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/ListInstances AWS API Documentation
    #
    # @overload list_instances(params = {})
    # @param [Hash] params ({})
    def list_instances(params = {}, options = {})
      req = build_request(:list_instances, params)
      req.send_request(options)
    end

    # Provides summaries of all notebook executions. You can filter the list
    # based on multiple criteria such as status, time range, and editor id.
    # Returns a maximum of 50 notebook executions and a marker to track the
    # paging of a longer notebook execution list across multiple
    # `ListNotebookExecution` calls.
    #
    # @option params [String] :editor_id
    #   The unique ID of the editor associated with the notebook execution.
    #
    # @option params [String] :status
    #   The status filter for listing notebook executions.
    #
    #   * `START_PENDING` indicates that the cluster has received the
    #     execution request but execution has not begun.
    #
    #   * `STARTING` indicates that the execution is starting on the cluster.
    #
    #   * `RUNNING` indicates that the execution is being processed by the
    #     cluster.
    #
    #   * `FINISHING` indicates that execution processing is in the final
    #     stages.
    #
    #   * `FINISHED` indicates that the execution has completed without error.
    #
    #   * `FAILING` indicates that the execution is failing and will not
    #     finish successfully.
    #
    #   * `FAILED` indicates that the execution failed.
    #
    #   * `STOP_PENDING` indicates that the cluster has received a
    #     `StopNotebookExecution` request and the stop is pending.
    #
    #   * `STOPPING` indicates that the cluster is in the process of stopping
    #     the execution as a result of a `StopNotebookExecution` request.
    #
    #   * `STOPPED` indicates that the execution stopped because of a
    #     `StopNotebookExecution` request.
    #
    # @option params [Time,DateTime,Date,Integer,String] :from
    #   The beginning of time range filter for listing notebook executions.
    #   The default is the timestamp of 30 days ago.
    #
    # @option params [Time,DateTime,Date,Integer,String] :to
    #   The end of time range filter for listing notebook executions. The
    #   default is the current timestamp.
    #
    # @option params [String] :marker
    #   The pagination token, returned by a previous `ListNotebookExecutions`
    #   call, that indicates the start of the list for this
    #   `ListNotebookExecutions` call.
    #
    # @return [Types::ListNotebookExecutionsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListNotebookExecutionsOutput#notebook_executions #notebook_executions} => Array&lt;Types::NotebookExecutionSummary&gt;
    #   * {Types::ListNotebookExecutionsOutput#marker #marker} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_notebook_executions({
    #     editor_id: "XmlStringMaxLen256",
    #     status: "START_PENDING", # accepts START_PENDING, STARTING, RUNNING, FINISHING, FINISHED, FAILING, FAILED, STOP_PENDING, STOPPING, STOPPED
    #     from: Time.now,
    #     to: Time.now,
    #     marker: "Marker",
    #   })
    #
    # @example Response structure
    #
    #   resp.notebook_executions #=> Array
    #   resp.notebook_executions[0].notebook_execution_id #=> String
    #   resp.notebook_executions[0].editor_id #=> String
    #   resp.notebook_executions[0].notebook_execution_name #=> String
    #   resp.notebook_executions[0].status #=> String, one of "START_PENDING", "STARTING", "RUNNING", "FINISHING", "FINISHED", "FAILING", "FAILED", "STOP_PENDING", "STOPPING", "STOPPED"
    #   resp.notebook_executions[0].start_time #=> Time
    #   resp.notebook_executions[0].end_time #=> Time
    #   resp.marker #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/ListNotebookExecutions AWS API Documentation
    #
    # @overload list_notebook_executions(params = {})
    # @param [Hash] params ({})
    def list_notebook_executions(params = {}, options = {})
      req = build_request(:list_notebook_executions, params)
      req.send_request(options)
    end

    # Lists all the security configurations visible to this account,
    # providing their creation dates and times, and their names. This call
    # returns a maximum of 50 clusters per call, but returns a marker to
    # track the paging of the cluster list across multiple
    # ListSecurityConfigurations calls.
    #
    # @option params [String] :marker
    #   The pagination token that indicates the set of results to retrieve.
    #
    # @return [Types::ListSecurityConfigurationsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListSecurityConfigurationsOutput#security_configurations #security_configurations} => Array&lt;Types::SecurityConfigurationSummary&gt;
    #   * {Types::ListSecurityConfigurationsOutput#marker #marker} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_security_configurations({
    #     marker: "Marker",
    #   })
    #
    # @example Response structure
    #
    #   resp.security_configurations #=> Array
    #   resp.security_configurations[0].name #=> String
    #   resp.security_configurations[0].creation_date_time #=> Time
    #   resp.marker #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/ListSecurityConfigurations AWS API Documentation
    #
    # @overload list_security_configurations(params = {})
    # @param [Hash] params ({})
    def list_security_configurations(params = {}, options = {})
      req = build_request(:list_security_configurations, params)
      req.send_request(options)
    end

    # Provides a list of steps for the cluster in reverse order unless you
    # specify `stepIds` with the request of filter by `StepStates`. You can
    # specify a maximum of ten `stepIDs`.
    #
    # @option params [required, String] :cluster_id
    #   The identifier of the cluster for which to list the steps.
    #
    # @option params [Array<String>] :step_states
    #   The filter to limit the step list based on certain states.
    #
    # @option params [Array<String>] :step_ids
    #   The filter to limit the step list based on the identifier of the
    #   steps. You can specify a maximum of ten Step IDs. The character
    #   constraint applies to the overall length of the array.
    #
    # @option params [String] :marker
    #   The pagination token that indicates the next set of results to
    #   retrieve.
    #
    # @return [Types::ListStepsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListStepsOutput#steps #steps} => Array&lt;Types::StepSummary&gt;
    #   * {Types::ListStepsOutput#marker #marker} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_steps({
    #     cluster_id: "ClusterId", # required
    #     step_states: ["PENDING"], # accepts PENDING, CANCEL_PENDING, RUNNING, COMPLETED, CANCELLED, FAILED, INTERRUPTED
    #     step_ids: ["XmlString"],
    #     marker: "Marker",
    #   })
    #
    # @example Response structure
    #
    #   resp.steps #=> Array
    #   resp.steps[0].id #=> String
    #   resp.steps[0].name #=> String
    #   resp.steps[0].config.jar #=> String
    #   resp.steps[0].config.properties #=> Hash
    #   resp.steps[0].config.properties["String"] #=> String
    #   resp.steps[0].config.main_class #=> String
    #   resp.steps[0].config.args #=> Array
    #   resp.steps[0].config.args[0] #=> String
    #   resp.steps[0].action_on_failure #=> String, one of "TERMINATE_JOB_FLOW", "TERMINATE_CLUSTER", "CANCEL_AND_WAIT", "CONTINUE"
    #   resp.steps[0].status.state #=> String, one of "PENDING", "CANCEL_PENDING", "RUNNING", "COMPLETED", "CANCELLED", "FAILED", "INTERRUPTED"
    #   resp.steps[0].status.state_change_reason.code #=> String, one of "NONE"
    #   resp.steps[0].status.state_change_reason.message #=> String
    #   resp.steps[0].status.failure_details.reason #=> String
    #   resp.steps[0].status.failure_details.message #=> String
    #   resp.steps[0].status.failure_details.log_file #=> String
    #   resp.steps[0].status.timeline.creation_date_time #=> Time
    #   resp.steps[0].status.timeline.start_date_time #=> Time
    #   resp.steps[0].status.timeline.end_date_time #=> Time
    #   resp.marker #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/ListSteps AWS API Documentation
    #
    # @overload list_steps(params = {})
    # @param [Hash] params ({})
    def list_steps(params = {}, options = {})
      req = build_request(:list_steps, params)
      req.send_request(options)
    end

    # Modifies the number of steps that can be executed concurrently for the
    # cluster specified using ClusterID.
    #
    # @option params [required, String] :cluster_id
    #   The unique identifier of the cluster.
    #
    # @option params [Integer] :step_concurrency_level
    #   The number of steps that can be executed concurrently. You can specify
    #   a maximum of 256 steps.
    #
    # @return [Types::ModifyClusterOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ModifyClusterOutput#step_concurrency_level #step_concurrency_level} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.modify_cluster({
    #     cluster_id: "String", # required
    #     step_concurrency_level: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.step_concurrency_level #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/ModifyCluster AWS API Documentation
    #
    # @overload modify_cluster(params = {})
    # @param [Hash] params ({})
    def modify_cluster(params = {}, options = {})
      req = build_request(:modify_cluster, params)
      req.send_request(options)
    end

    # Modifies the target On-Demand and target Spot capacities for the
    # instance fleet with the specified InstanceFleetID within the cluster
    # specified using ClusterID. The call either succeeds or fails
    # atomically.
    #
    # <note markdown="1"> The instance fleet configuration is available only in Amazon EMR
    # versions 4.8.0 and later, excluding 5.0.x versions.
    #
    #  </note>
    #
    # @option params [required, String] :cluster_id
    #   The unique identifier of the cluster.
    #
    # @option params [required, Types::InstanceFleetModifyConfig] :instance_fleet
    #   The unique identifier of the instance fleet.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.modify_instance_fleet({
    #     cluster_id: "ClusterId", # required
    #     instance_fleet: { # required
    #       instance_fleet_id: "InstanceFleetId", # required
    #       target_on_demand_capacity: 1,
    #       target_spot_capacity: 1,
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/ModifyInstanceFleet AWS API Documentation
    #
    # @overload modify_instance_fleet(params = {})
    # @param [Hash] params ({})
    def modify_instance_fleet(params = {}, options = {})
      req = build_request(:modify_instance_fleet, params)
      req.send_request(options)
    end

    # ModifyInstanceGroups modifies the number of nodes and configuration
    # settings of an instance group. The input parameters include the new
    # target instance count for the group and the instance group ID. The
    # call will either succeed or fail atomically.
    #
    # @option params [String] :cluster_id
    #   The ID of the cluster to which the instance group belongs.
    #
    # @option params [Array<Types::InstanceGroupModifyConfig>] :instance_groups
    #   Instance groups to change.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.modify_instance_groups({
    #     cluster_id: "ClusterId",
    #     instance_groups: [
    #       {
    #         instance_group_id: "XmlStringMaxLen256", # required
    #         instance_count: 1,
    #         ec2_instance_ids_to_terminate: ["InstanceId"],
    #         shrink_policy: {
    #           decommission_timeout: 1,
    #           instance_resize_policy: {
    #             instances_to_terminate: ["InstanceId"],
    #             instances_to_protect: ["InstanceId"],
    #             instance_termination_timeout: 1,
    #           },
    #         },
    #         configurations: [
    #           {
    #             classification: "String",
    #             configurations: {
    #               # recursive ConfigurationList
    #             },
    #             properties: {
    #               "String" => "String",
    #             },
    #           },
    #         ],
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/ModifyInstanceGroups AWS API Documentation
    #
    # @overload modify_instance_groups(params = {})
    # @param [Hash] params ({})
    def modify_instance_groups(params = {}, options = {})
      req = build_request(:modify_instance_groups, params)
      req.send_request(options)
    end

    # Creates or updates an automatic scaling policy for a core instance
    # group or task instance group in an Amazon EMR cluster. The automatic
    # scaling policy defines how an instance group dynamically adds and
    # terminates EC2 instances in response to the value of a CloudWatch
    # metric.
    #
    # @option params [required, String] :cluster_id
    #   Specifies the ID of a cluster. The instance group to which the
    #   automatic scaling policy is applied is within this cluster.
    #
    # @option params [required, String] :instance_group_id
    #   Specifies the ID of the instance group to which the automatic scaling
    #   policy is applied.
    #
    # @option params [required, Types::AutoScalingPolicy] :auto_scaling_policy
    #   Specifies the definition of the automatic scaling policy.
    #
    # @return [Types::PutAutoScalingPolicyOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutAutoScalingPolicyOutput#cluster_id #cluster_id} => String
    #   * {Types::PutAutoScalingPolicyOutput#instance_group_id #instance_group_id} => String
    #   * {Types::PutAutoScalingPolicyOutput#auto_scaling_policy #auto_scaling_policy} => Types::AutoScalingPolicyDescription
    #   * {Types::PutAutoScalingPolicyOutput#cluster_arn #cluster_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_auto_scaling_policy({
    #     cluster_id: "ClusterId", # required
    #     instance_group_id: "InstanceGroupId", # required
    #     auto_scaling_policy: { # required
    #       constraints: { # required
    #         min_capacity: 1, # required
    #         max_capacity: 1, # required
    #       },
    #       rules: [ # required
    #         {
    #           name: "String", # required
    #           description: "String",
    #           action: { # required
    #             market: "ON_DEMAND", # accepts ON_DEMAND, SPOT
    #             simple_scaling_policy_configuration: { # required
    #               adjustment_type: "CHANGE_IN_CAPACITY", # accepts CHANGE_IN_CAPACITY, PERCENT_CHANGE_IN_CAPACITY, EXACT_CAPACITY
    #               scaling_adjustment: 1, # required
    #               cool_down: 1,
    #             },
    #           },
    #           trigger: { # required
    #             cloud_watch_alarm_definition: { # required
    #               comparison_operator: "GREATER_THAN_OR_EQUAL", # required, accepts GREATER_THAN_OR_EQUAL, GREATER_THAN, LESS_THAN, LESS_THAN_OR_EQUAL
    #               evaluation_periods: 1,
    #               metric_name: "String", # required
    #               namespace: "String",
    #               period: 1, # required
    #               statistic: "SAMPLE_COUNT", # accepts SAMPLE_COUNT, AVERAGE, SUM, MINIMUM, MAXIMUM
    #               threshold: 1.0, # required
    #               unit: "NONE", # accepts NONE, SECONDS, MICRO_SECONDS, MILLI_SECONDS, BYTES, KILO_BYTES, MEGA_BYTES, GIGA_BYTES, TERA_BYTES, BITS, KILO_BITS, MEGA_BITS, GIGA_BITS, TERA_BITS, PERCENT, COUNT, BYTES_PER_SECOND, KILO_BYTES_PER_SECOND, MEGA_BYTES_PER_SECOND, GIGA_BYTES_PER_SECOND, TERA_BYTES_PER_SECOND, BITS_PER_SECOND, KILO_BITS_PER_SECOND, MEGA_BITS_PER_SECOND, GIGA_BITS_PER_SECOND, TERA_BITS_PER_SECOND, COUNT_PER_SECOND
    #               dimensions: [
    #                 {
    #                   key: "String",
    #                   value: "String",
    #                 },
    #               ],
    #             },
    #           },
    #         },
    #       ],
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.cluster_id #=> String
    #   resp.instance_group_id #=> String
    #   resp.auto_scaling_policy.status.state #=> String, one of "PENDING", "ATTACHING", "ATTACHED", "DETACHING", "DETACHED", "FAILED"
    #   resp.auto_scaling_policy.status.state_change_reason.code #=> String, one of "USER_REQUEST", "PROVISION_FAILURE", "CLEANUP_FAILURE"
    #   resp.auto_scaling_policy.status.state_change_reason.message #=> String
    #   resp.auto_scaling_policy.constraints.min_capacity #=> Integer
    #   resp.auto_scaling_policy.constraints.max_capacity #=> Integer
    #   resp.auto_scaling_policy.rules #=> Array
    #   resp.auto_scaling_policy.rules[0].name #=> String
    #   resp.auto_scaling_policy.rules[0].description #=> String
    #   resp.auto_scaling_policy.rules[0].action.market #=> String, one of "ON_DEMAND", "SPOT"
    #   resp.auto_scaling_policy.rules[0].action.simple_scaling_policy_configuration.adjustment_type #=> String, one of "CHANGE_IN_CAPACITY", "PERCENT_CHANGE_IN_CAPACITY", "EXACT_CAPACITY"
    #   resp.auto_scaling_policy.rules[0].action.simple_scaling_policy_configuration.scaling_adjustment #=> Integer
    #   resp.auto_scaling_policy.rules[0].action.simple_scaling_policy_configuration.cool_down #=> Integer
    #   resp.auto_scaling_policy.rules[0].trigger.cloud_watch_alarm_definition.comparison_operator #=> String, one of "GREATER_THAN_OR_EQUAL", "GREATER_THAN", "LESS_THAN", "LESS_THAN_OR_EQUAL"
    #   resp.auto_scaling_policy.rules[0].trigger.cloud_watch_alarm_definition.evaluation_periods #=> Integer
    #   resp.auto_scaling_policy.rules[0].trigger.cloud_watch_alarm_definition.metric_name #=> String
    #   resp.auto_scaling_policy.rules[0].trigger.cloud_watch_alarm_definition.namespace #=> String
    #   resp.auto_scaling_policy.rules[0].trigger.cloud_watch_alarm_definition.period #=> Integer
    #   resp.auto_scaling_policy.rules[0].trigger.cloud_watch_alarm_definition.statistic #=> String, one of "SAMPLE_COUNT", "AVERAGE", "SUM", "MINIMUM", "MAXIMUM"
    #   resp.auto_scaling_policy.rules[0].trigger.cloud_watch_alarm_definition.threshold #=> Float
    #   resp.auto_scaling_policy.rules[0].trigger.cloud_watch_alarm_definition.unit #=> String, one of "NONE", "SECONDS", "MICRO_SECONDS", "MILLI_SECONDS", "BYTES", "KILO_BYTES", "MEGA_BYTES", "GIGA_BYTES", "TERA_BYTES", "BITS", "KILO_BITS", "MEGA_BITS", "GIGA_BITS", "TERA_BITS", "PERCENT", "COUNT", "BYTES_PER_SECOND", "KILO_BYTES_PER_SECOND", "MEGA_BYTES_PER_SECOND", "GIGA_BYTES_PER_SECOND", "TERA_BYTES_PER_SECOND", "BITS_PER_SECOND", "KILO_BITS_PER_SECOND", "MEGA_BITS_PER_SECOND", "GIGA_BITS_PER_SECOND", "TERA_BITS_PER_SECOND", "COUNT_PER_SECOND"
    #   resp.auto_scaling_policy.rules[0].trigger.cloud_watch_alarm_definition.dimensions #=> Array
    #   resp.auto_scaling_policy.rules[0].trigger.cloud_watch_alarm_definition.dimensions[0].key #=> String
    #   resp.auto_scaling_policy.rules[0].trigger.cloud_watch_alarm_definition.dimensions[0].value #=> String
    #   resp.cluster_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/PutAutoScalingPolicy AWS API Documentation
    #
    # @overload put_auto_scaling_policy(params = {})
    # @param [Hash] params ({})
    def put_auto_scaling_policy(params = {}, options = {})
      req = build_request(:put_auto_scaling_policy, params)
      req.send_request(options)
    end

    # Creates or updates an Amazon EMR block public access configuration for
    # your AWS account in the current Region. For more information see
    # [Configure Block Public Access for Amazon EMR][1] in the *Amazon EMR
    # Management Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/emr/latest/ManagementGuide/configure-block-public-access.html
    #
    # @option params [required, Types::BlockPublicAccessConfiguration] :block_public_access_configuration
    #   A configuration for Amazon EMR block public access. The configuration
    #   applies to all clusters created in your account for the current
    #   Region. The configuration specifies whether block public access is
    #   enabled. If block public access is enabled, security groups associated
    #   with the cluster cannot have rules that allow inbound traffic from
    #   0.0.0.0/0 or ::/0 on a port, unless the port is specified as an
    #   exception using `PermittedPublicSecurityGroupRuleRanges` in the
    #   `BlockPublicAccessConfiguration`. By default, Port 22 (SSH) is an
    #   exception, and public access is allowed on this port. You can change
    #   this by updating `BlockPublicSecurityGroupRules` to remove the
    #   exception.
    #
    #   <note markdown="1"> For accounts that created clusters in a Region before November 25,
    #   2019, block public access is disabled by default in that Region. To
    #   use this feature, you must manually enable and configure it. For
    #   accounts that did not create an EMR cluster in a Region before this
    #   date, block public access is enabled by default in that Region.
    #
    #    </note>
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_block_public_access_configuration({
    #     block_public_access_configuration: { # required
    #       block_public_security_group_rules: false, # required
    #       permitted_public_security_group_rule_ranges: [
    #         {
    #           min_range: 1, # required
    #           max_range: 1,
    #         },
    #       ],
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/PutBlockPublicAccessConfiguration AWS API Documentation
    #
    # @overload put_block_public_access_configuration(params = {})
    # @param [Hash] params ({})
    def put_block_public_access_configuration(params = {}, options = {})
      req = build_request(:put_block_public_access_configuration, params)
      req.send_request(options)
    end

    # Creates or updates a managed scaling policy for an Amazon EMR cluster.
    # The managed scaling policy defines the limits for resources, such as
    # EC2 instances that can be added or terminated from a cluster. The
    # policy only applies to the core and task nodes. The master node cannot
    # be scaled after initial configuration.
    #
    # @option params [required, String] :cluster_id
    #   Specifies the ID of an EMR cluster where the managed scaling policy is
    #   attached.
    #
    # @option params [required, Types::ManagedScalingPolicy] :managed_scaling_policy
    #   Specifies the constraints for the managed scaling policy.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_managed_scaling_policy({
    #     cluster_id: "ClusterId", # required
    #     managed_scaling_policy: { # required
    #       compute_limits: {
    #         unit_type: "InstanceFleetUnits", # required, accepts InstanceFleetUnits, Instances, VCPU
    #         minimum_capacity_units: 1, # required
    #         maximum_capacity_units: 1, # required
    #         maximum_on_demand_capacity_units: 1,
    #         maximum_core_capacity_units: 1,
    #       },
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/PutManagedScalingPolicy AWS API Documentation
    #
    # @overload put_managed_scaling_policy(params = {})
    # @param [Hash] params ({})
    def put_managed_scaling_policy(params = {}, options = {})
      req = build_request(:put_managed_scaling_policy, params)
      req.send_request(options)
    end

    # Removes an automatic scaling policy from a specified instance group
    # within an EMR cluster.
    #
    # @option params [required, String] :cluster_id
    #   Specifies the ID of a cluster. The instance group to which the
    #   automatic scaling policy is applied is within this cluster.
    #
    # @option params [required, String] :instance_group_id
    #   Specifies the ID of the instance group to which the scaling policy is
    #   applied.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.remove_auto_scaling_policy({
    #     cluster_id: "ClusterId", # required
    #     instance_group_id: "InstanceGroupId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/RemoveAutoScalingPolicy AWS API Documentation
    #
    # @overload remove_auto_scaling_policy(params = {})
    # @param [Hash] params ({})
    def remove_auto_scaling_policy(params = {}, options = {})
      req = build_request(:remove_auto_scaling_policy, params)
      req.send_request(options)
    end

    # Removes a managed scaling policy from a specified EMR cluster.
    #
    # @option params [required, String] :cluster_id
    #   Specifies the ID of the cluster from which the managed scaling policy
    #   will be removed.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.remove_managed_scaling_policy({
    #     cluster_id: "ClusterId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/RemoveManagedScalingPolicy AWS API Documentation
    #
    # @overload remove_managed_scaling_policy(params = {})
    # @param [Hash] params ({})
    def remove_managed_scaling_policy(params = {}, options = {})
      req = build_request(:remove_managed_scaling_policy, params)
      req.send_request(options)
    end

    # Removes tags from an Amazon EMR resource. Tags make it easier to
    # associate clusters in various ways, such as grouping clusters to track
    # your Amazon EMR resource allocation costs. For more information, see
    # [Tag Clusters][1].
    #
    # The following example removes the stack tag with value Prod from a
    # cluster:
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-plan-tags.html
    #
    # @option params [required, String] :resource_id
    #   The Amazon EMR resource identifier from which tags will be removed.
    #   This value must be a cluster identifier.
    #
    # @option params [required, Array<String>] :tag_keys
    #   A list of tag keys to remove from a resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.remove_tags({
    #     resource_id: "ResourceId", # required
    #     tag_keys: ["String"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/RemoveTags AWS API Documentation
    #
    # @overload remove_tags(params = {})
    # @param [Hash] params ({})
    def remove_tags(params = {}, options = {})
      req = build_request(:remove_tags, params)
      req.send_request(options)
    end

    # RunJobFlow creates and starts running a new cluster (job flow). The
    # cluster runs the steps specified. After the steps complete, the
    # cluster stops and the HDFS partition is lost. To prevent loss of data,
    # configure the last step of the job flow to store results in Amazon S3.
    # If the JobFlowInstancesConfig `KeepJobFlowAliveWhenNoSteps` parameter
    # is set to `TRUE`, the cluster transitions to the WAITING state rather
    # than shutting down after the steps have completed.
    #
    # For additional protection, you can set the JobFlowInstancesConfig
    # `TerminationProtected` parameter to `TRUE` to lock the cluster and
    # prevent it from being terminated by API call, user intervention, or in
    # the event of a job flow error.
    #
    # A maximum of 256 steps are allowed in each job flow.
    #
    # If your cluster is long-running (such as a Hive data warehouse) or
    # complex, you may require more than 256 steps to process your data. You
    # can bypass the 256-step limitation in various ways, including using
    # the SSH shell to connect to the master node and submitting queries
    # directly to the software running on the master node, such as Hive and
    # Hadoop. For more information on how to do this, see [Add More than 256
    # Steps to a Cluster][1] in the *Amazon EMR Management Guide*.
    #
    # For long running clusters, we recommend that you periodically store
    # your results.
    #
    # <note markdown="1"> The instance fleets configuration is available only in Amazon EMR
    # versions 4.8.0 and later, excluding 5.0.x versions. The RunJobFlow
    # request can contain InstanceFleets parameters or InstanceGroups
    # parameters, but not both.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/emr/latest/ManagementGuide/AddMoreThan256Steps.html
    #
    # @option params [required, String] :name
    #   The name of the job flow.
    #
    # @option params [String] :log_uri
    #   The location in Amazon S3 to write the log files of the job flow. If a
    #   value is not provided, logs are not created.
    #
    # @option params [String] :log_encryption_kms_key_id
    #   The AWS KMS customer master key (CMK) used for encrypting log files.
    #   If a value is not provided, the logs will remain encrypted by AES-256.
    #   This attribute is only available with EMR version 5.30.0 and later,
    #   excluding EMR 6.0.0.
    #
    # @option params [String] :additional_info
    #   A JSON string for selecting additional features.
    #
    # @option params [String] :ami_version
    #   Applies only to Amazon EMR AMI versions 3.x and 2.x. For Amazon EMR
    #   releases 4.0 and later, `ReleaseLabel` is used. To specify a custom
    #   AMI, use `CustomAmiID`.
    #
    # @option params [String] :release_label
    #   The Amazon EMR release label, which determines the version of
    #   open-source application packages installed on the cluster. Release
    #   labels are in the form `emr-x.x.x`, where x.x.x is an Amazon EMR
    #   release version such as `emr-5.14.0`. For more information about
    #   Amazon EMR release versions and included application versions and
    #   features, see
    #   [https://docs.aws.amazon.com/emr/latest/ReleaseGuide/][1]. The release
    #   label applies only to Amazon EMR releases version 4.0 and later.
    #   Earlier versions use `AmiVersion`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/emr/latest/ReleaseGuide/
    #
    # @option params [required, Types::JobFlowInstancesConfig] :instances
    #   A specification of the number and type of Amazon EC2 instances.
    #
    # @option params [Array<Types::StepConfig>] :steps
    #   A list of steps to run.
    #
    # @option params [Array<Types::BootstrapActionConfig>] :bootstrap_actions
    #   A list of bootstrap actions to run before Hadoop starts on the cluster
    #   nodes.
    #
    # @option params [Array<String>] :supported_products
    #   <note markdown="1"> For Amazon EMR releases 3.x and 2.x. For Amazon EMR releases 4.x and
    #   later, use Applications.
    #
    #    </note>
    #
    #   A list of strings that indicates third-party software to use. For more
    #   information, see the [Amazon EMR Developer Guide][1]. Currently
    #   supported values are:
    #
    #   * "mapr-m3" - launch the job flow using MapR M3 Edition.
    #
    #   * "mapr-m5" - launch the job flow using MapR M5 Edition.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/emr/latest/DeveloperGuide/emr-dg.pdf
    #
    # @option params [Array<Types::SupportedProductConfig>] :new_supported_products
    #   <note markdown="1"> For Amazon EMR releases 3.x and 2.x. For Amazon EMR releases 4.x and
    #   later, use Applications.
    #
    #    </note>
    #
    #   A list of strings that indicates third-party software to use with the
    #   job flow that accepts a user argument list. EMR accepts and forwards
    #   the argument list to the corresponding installation script as
    #   bootstrap action arguments. For more information, see "Launch a Job
    #   Flow on the MapR Distribution for Hadoop" in the [Amazon EMR
    #   Developer Guide][1]. Supported values are:
    #
    #   * "mapr-m3" - launch the cluster using MapR M3 Edition.
    #
    #   * "mapr-m5" - launch the cluster using MapR M5 Edition.
    #
    #   * "mapr" with the user arguments specifying "--edition,m3" or
    #     "--edition,m5" - launch the job flow using MapR M3 or M5 Edition
    #     respectively.
    #
    #   * "mapr-m7" - launch the cluster using MapR M7 Edition.
    #
    #   * "hunk" - launch the cluster with the Hunk Big Data Analtics
    #     Platform.
    #
    #   * "hue"- launch the cluster with Hue installed.
    #
    #   * "spark" - launch the cluster with Apache Spark installed.
    #
    #   * "ganglia" - launch the cluster with the Ganglia Monitoring System
    #     installed.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/emr/latest/DeveloperGuide/emr-dg.pdf
    #
    # @option params [Array<Types::Application>] :applications
    #   Applies to Amazon EMR releases 4.0 and later. A case-insensitive list
    #   of applications for Amazon EMR to install and configure when launching
    #   the cluster. For a list of applications available for each Amazon EMR
    #   release version, see the [Amazon EMR Release Guide][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/emr/latest/ReleaseGuide/
    #
    # @option params [Array<Types::Configuration>] :configurations
    #   For Amazon EMR releases 4.0 and later. The list of configurations
    #   supplied for the EMR cluster you are creating.
    #
    # @option params [Boolean] :visible_to_all_users
    #   A value of `true` indicates that all IAM users in the AWS account can
    #   perform cluster actions if they have the proper IAM policy
    #   permissions. This is the default. A value of `false` indicates that
    #   only the IAM user who created the cluster can perform actions.
    #
    # @option params [String] :job_flow_role
    #   Also called instance profile and EC2 role. An IAM role for an EMR
    #   cluster. The EC2 instances of the cluster assume this role. The
    #   default role is `EMR_EC2_DefaultRole`. In order to use the default
    #   role, you must have already created it using the CLI or console.
    #
    # @option params [String] :service_role
    #   The IAM role that will be assumed by the Amazon EMR service to access
    #   AWS resources on your behalf.
    #
    # @option params [Array<Types::Tag>] :tags
    #   A list of tags to associate with a cluster and propagate to Amazon EC2
    #   instances.
    #
    # @option params [String] :security_configuration
    #   The name of a security configuration to apply to the cluster.
    #
    # @option params [String] :auto_scaling_role
    #   An IAM role for automatic scaling policies. The default role is
    #   `EMR_AutoScaling_DefaultRole`. The IAM role provides permissions that
    #   the automatic scaling feature requires to launch and terminate EC2
    #   instances in an instance group.
    #
    # @option params [String] :scale_down_behavior
    #   Specifies the way that individual Amazon EC2 instances terminate when
    #   an automatic scale-in activity occurs or an instance group is resized.
    #   `TERMINATE_AT_INSTANCE_HOUR` indicates that Amazon EMR terminates
    #   nodes at the instance-hour boundary, regardless of when the request to
    #   terminate the instance was submitted. This option is only available
    #   with Amazon EMR 5.1.0 and later and is the default for clusters
    #   created using that version. `TERMINATE_AT_TASK_COMPLETION` indicates
    #   that Amazon EMR blacklists and drains tasks from nodes before
    #   terminating the Amazon EC2 instances, regardless of the instance-hour
    #   boundary. With either behavior, Amazon EMR removes the least active
    #   nodes first and blocks instance termination if it could lead to HDFS
    #   corruption. `TERMINATE_AT_TASK_COMPLETION` available only in Amazon
    #   EMR version 4.1.0 and later, and is the default for versions of Amazon
    #   EMR earlier than 5.1.0.
    #
    # @option params [String] :custom_ami_id
    #   Available only in Amazon EMR version 5.7.0 and later. The ID of a
    #   custom Amazon EBS-backed Linux AMI. If specified, Amazon EMR uses this
    #   AMI when it launches cluster EC2 instances. For more information about
    #   custom AMIs in Amazon EMR, see [Using a Custom AMI][1] in the *Amazon
    #   EMR Management Guide*. If omitted, the cluster uses the base Linux AMI
    #   for the `ReleaseLabel` specified. For Amazon EMR versions 2.x and 3.x,
    #   use `AmiVersion` instead.
    #
    #   For information about creating a custom AMI, see [Creating an Amazon
    #   EBS-Backed Linux AMI][2] in the *Amazon Elastic Compute Cloud User
    #   Guide for Linux Instances*. For information about finding an AMI ID,
    #   see [Finding a Linux AMI][3].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-custom-ami.html
    #   [2]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/creating-an-ami-ebs.html
    #   [3]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/finding-an-ami.html
    #
    # @option params [Integer] :ebs_root_volume_size
    #   The size, in GiB, of the EBS root device volume of the Linux AMI that
    #   is used for each EC2 instance. Available in Amazon EMR version 4.x and
    #   later.
    #
    # @option params [String] :repo_upgrade_on_boot
    #   Applies only when `CustomAmiID` is used. Specifies which updates from
    #   the Amazon Linux AMI package repositories to apply automatically when
    #   the instance boots using the AMI. If omitted, the default is
    #   `SECURITY`, which indicates that only security updates are applied. If
    #   `NONE` is specified, no updates are applied, and all updates must be
    #   applied manually.
    #
    # @option params [Types::KerberosAttributes] :kerberos_attributes
    #   Attributes for Kerberos configuration when Kerberos authentication is
    #   enabled using a security configuration. For more information see [Use
    #   Kerberos Authentication][1] in the *EMR Management Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-kerberos.html
    #
    # @option params [Integer] :step_concurrency_level
    #   Specifies the number of steps that can be executed concurrently. The
    #   default value is `1`. The maximum value is `256`.
    #
    # @option params [Types::ManagedScalingPolicy] :managed_scaling_policy
    #   The specified managed scaling policy for an Amazon EMR cluster.
    #
    # @option params [Array<Types::PlacementGroupConfig>] :placement_group_configs
    #   The specified placement group configuration for an Amazon EMR cluster.
    #
    # @return [Types::RunJobFlowOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RunJobFlowOutput#job_flow_id #job_flow_id} => String
    #   * {Types::RunJobFlowOutput#cluster_arn #cluster_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.run_job_flow({
    #     name: "XmlStringMaxLen256", # required
    #     log_uri: "XmlString",
    #     log_encryption_kms_key_id: "XmlString",
    #     additional_info: "XmlString",
    #     ami_version: "XmlStringMaxLen256",
    #     release_label: "XmlStringMaxLen256",
    #     instances: { # required
    #       master_instance_type: "InstanceType",
    #       slave_instance_type: "InstanceType",
    #       instance_count: 1,
    #       instance_groups: [
    #         {
    #           name: "XmlStringMaxLen256",
    #           market: "ON_DEMAND", # accepts ON_DEMAND, SPOT
    #           instance_role: "MASTER", # required, accepts MASTER, CORE, TASK
    #           bid_price: "XmlStringMaxLen256",
    #           instance_type: "InstanceType", # required
    #           instance_count: 1, # required
    #           configurations: [
    #             {
    #               classification: "String",
    #               configurations: {
    #                 # recursive ConfigurationList
    #               },
    #               properties: {
    #                 "String" => "String",
    #               },
    #             },
    #           ],
    #           ebs_configuration: {
    #             ebs_block_device_configs: [
    #               {
    #                 volume_specification: { # required
    #                   volume_type: "String", # required
    #                   iops: 1,
    #                   size_in_gb: 1, # required
    #                 },
    #                 volumes_per_instance: 1,
    #               },
    #             ],
    #             ebs_optimized: false,
    #           },
    #           auto_scaling_policy: {
    #             constraints: { # required
    #               min_capacity: 1, # required
    #               max_capacity: 1, # required
    #             },
    #             rules: [ # required
    #               {
    #                 name: "String", # required
    #                 description: "String",
    #                 action: { # required
    #                   market: "ON_DEMAND", # accepts ON_DEMAND, SPOT
    #                   simple_scaling_policy_configuration: { # required
    #                     adjustment_type: "CHANGE_IN_CAPACITY", # accepts CHANGE_IN_CAPACITY, PERCENT_CHANGE_IN_CAPACITY, EXACT_CAPACITY
    #                     scaling_adjustment: 1, # required
    #                     cool_down: 1,
    #                   },
    #                 },
    #                 trigger: { # required
    #                   cloud_watch_alarm_definition: { # required
    #                     comparison_operator: "GREATER_THAN_OR_EQUAL", # required, accepts GREATER_THAN_OR_EQUAL, GREATER_THAN, LESS_THAN, LESS_THAN_OR_EQUAL
    #                     evaluation_periods: 1,
    #                     metric_name: "String", # required
    #                     namespace: "String",
    #                     period: 1, # required
    #                     statistic: "SAMPLE_COUNT", # accepts SAMPLE_COUNT, AVERAGE, SUM, MINIMUM, MAXIMUM
    #                     threshold: 1.0, # required
    #                     unit: "NONE", # accepts NONE, SECONDS, MICRO_SECONDS, MILLI_SECONDS, BYTES, KILO_BYTES, MEGA_BYTES, GIGA_BYTES, TERA_BYTES, BITS, KILO_BITS, MEGA_BITS, GIGA_BITS, TERA_BITS, PERCENT, COUNT, BYTES_PER_SECOND, KILO_BYTES_PER_SECOND, MEGA_BYTES_PER_SECOND, GIGA_BYTES_PER_SECOND, TERA_BYTES_PER_SECOND, BITS_PER_SECOND, KILO_BITS_PER_SECOND, MEGA_BITS_PER_SECOND, GIGA_BITS_PER_SECOND, TERA_BITS_PER_SECOND, COUNT_PER_SECOND
    #                     dimensions: [
    #                       {
    #                         key: "String",
    #                         value: "String",
    #                       },
    #                     ],
    #                   },
    #                 },
    #               },
    #             ],
    #           },
    #         },
    #       ],
    #       instance_fleets: [
    #         {
    #           name: "XmlStringMaxLen256",
    #           instance_fleet_type: "MASTER", # required, accepts MASTER, CORE, TASK
    #           target_on_demand_capacity: 1,
    #           target_spot_capacity: 1,
    #           instance_type_configs: [
    #             {
    #               instance_type: "InstanceType", # required
    #               weighted_capacity: 1,
    #               bid_price: "XmlStringMaxLen256",
    #               bid_price_as_percentage_of_on_demand_price: 1.0,
    #               ebs_configuration: {
    #                 ebs_block_device_configs: [
    #                   {
    #                     volume_specification: { # required
    #                       volume_type: "String", # required
    #                       iops: 1,
    #                       size_in_gb: 1, # required
    #                     },
    #                     volumes_per_instance: 1,
    #                   },
    #                 ],
    #                 ebs_optimized: false,
    #               },
    #               configurations: [
    #                 {
    #                   classification: "String",
    #                   configurations: {
    #                     # recursive ConfigurationList
    #                   },
    #                   properties: {
    #                     "String" => "String",
    #                   },
    #                 },
    #               ],
    #             },
    #           ],
    #           launch_specifications: {
    #             spot_specification: {
    #               timeout_duration_minutes: 1, # required
    #               timeout_action: "SWITCH_TO_ON_DEMAND", # required, accepts SWITCH_TO_ON_DEMAND, TERMINATE_CLUSTER
    #               block_duration_minutes: 1,
    #               allocation_strategy: "capacity-optimized", # accepts capacity-optimized
    #             },
    #             on_demand_specification: {
    #               allocation_strategy: "lowest-price", # required, accepts lowest-price
    #             },
    #           },
    #         },
    #       ],
    #       ec2_key_name: "XmlStringMaxLen256",
    #       placement: {
    #         availability_zone: "XmlString",
    #         availability_zones: ["XmlStringMaxLen256"],
    #       },
    #       keep_job_flow_alive_when_no_steps: false,
    #       termination_protected: false,
    #       hadoop_version: "XmlStringMaxLen256",
    #       ec2_subnet_id: "XmlStringMaxLen256",
    #       ec2_subnet_ids: ["XmlStringMaxLen256"],
    #       emr_managed_master_security_group: "XmlStringMaxLen256",
    #       emr_managed_slave_security_group: "XmlStringMaxLen256",
    #       service_access_security_group: "XmlStringMaxLen256",
    #       additional_master_security_groups: ["XmlStringMaxLen256"],
    #       additional_slave_security_groups: ["XmlStringMaxLen256"],
    #     },
    #     steps: [
    #       {
    #         name: "XmlStringMaxLen256", # required
    #         action_on_failure: "TERMINATE_JOB_FLOW", # accepts TERMINATE_JOB_FLOW, TERMINATE_CLUSTER, CANCEL_AND_WAIT, CONTINUE
    #         hadoop_jar_step: { # required
    #           properties: [
    #             {
    #               key: "XmlString",
    #               value: "XmlString",
    #             },
    #           ],
    #           jar: "XmlString", # required
    #           main_class: "XmlString",
    #           args: ["XmlString"],
    #         },
    #       },
    #     ],
    #     bootstrap_actions: [
    #       {
    #         name: "XmlStringMaxLen256", # required
    #         script_bootstrap_action: { # required
    #           path: "XmlString", # required
    #           args: ["XmlString"],
    #         },
    #       },
    #     ],
    #     supported_products: ["XmlStringMaxLen256"],
    #     new_supported_products: [
    #       {
    #         name: "XmlStringMaxLen256",
    #         args: ["XmlString"],
    #       },
    #     ],
    #     applications: [
    #       {
    #         name: "String",
    #         version: "String",
    #         args: ["String"],
    #         additional_info: {
    #           "String" => "String",
    #         },
    #       },
    #     ],
    #     configurations: [
    #       {
    #         classification: "String",
    #         configurations: {
    #           # recursive ConfigurationList
    #         },
    #         properties: {
    #           "String" => "String",
    #         },
    #       },
    #     ],
    #     visible_to_all_users: false,
    #     job_flow_role: "XmlString",
    #     service_role: "XmlString",
    #     tags: [
    #       {
    #         key: "String",
    #         value: "String",
    #       },
    #     ],
    #     security_configuration: "XmlString",
    #     auto_scaling_role: "XmlString",
    #     scale_down_behavior: "TERMINATE_AT_INSTANCE_HOUR", # accepts TERMINATE_AT_INSTANCE_HOUR, TERMINATE_AT_TASK_COMPLETION
    #     custom_ami_id: "XmlStringMaxLen256",
    #     ebs_root_volume_size: 1,
    #     repo_upgrade_on_boot: "SECURITY", # accepts SECURITY, NONE
    #     kerberos_attributes: {
    #       realm: "XmlStringMaxLen256", # required
    #       kdc_admin_password: "XmlStringMaxLen256", # required
    #       cross_realm_trust_principal_password: "XmlStringMaxLen256",
    #       ad_domain_join_user: "XmlStringMaxLen256",
    #       ad_domain_join_password: "XmlStringMaxLen256",
    #     },
    #     step_concurrency_level: 1,
    #     managed_scaling_policy: {
    #       compute_limits: {
    #         unit_type: "InstanceFleetUnits", # required, accepts InstanceFleetUnits, Instances, VCPU
    #         minimum_capacity_units: 1, # required
    #         maximum_capacity_units: 1, # required
    #         maximum_on_demand_capacity_units: 1,
    #         maximum_core_capacity_units: 1,
    #       },
    #     },
    #     placement_group_configs: [
    #       {
    #         instance_role: "MASTER", # required, accepts MASTER, CORE, TASK
    #         placement_strategy: "SPREAD", # accepts SPREAD, PARTITION, CLUSTER, NONE
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.job_flow_id #=> String
    #   resp.cluster_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/RunJobFlow AWS API Documentation
    #
    # @overload run_job_flow(params = {})
    # @param [Hash] params ({})
    def run_job_flow(params = {}, options = {})
      req = build_request(:run_job_flow, params)
      req.send_request(options)
    end

    # SetTerminationProtection locks a cluster (job flow) so the EC2
    # instances in the cluster cannot be terminated by user intervention, an
    # API call, or in the event of a job-flow error. The cluster still
    # terminates upon successful completion of the job flow. Calling
    # `SetTerminationProtection` on a cluster is similar to calling the
    # Amazon EC2 `DisableAPITermination` API on all EC2 instances in a
    # cluster.
    #
    # `SetTerminationProtection` is used to prevent accidental termination
    # of a cluster and to ensure that in the event of an error, the
    # instances persist so that you can recover any data stored in their
    # ephemeral instance storage.
    #
    # To terminate a cluster that has been locked by setting
    # `SetTerminationProtection` to `true`, you must first unlock the job
    # flow by a subsequent call to `SetTerminationProtection` in which you
    # set the value to `false`.
    #
    # For more information, see[Managing Cluster Termination][1] in the
    # *Amazon EMR Management Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/emr/latest/ManagementGuide/UsingEMR_TerminationProtection.html
    #
    # @option params [required, Array<String>] :job_flow_ids
    #   A list of strings that uniquely identify the clusters to protect. This
    #   identifier is returned by RunJobFlow and can also be obtained from
    #   DescribeJobFlows .
    #
    # @option params [required, Boolean] :termination_protected
    #   A Boolean that indicates whether to protect the cluster and prevent
    #   the Amazon EC2 instances in the cluster from shutting down due to API
    #   calls, user intervention, or job-flow error.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.set_termination_protection({
    #     job_flow_ids: ["XmlString"], # required
    #     termination_protected: false, # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/SetTerminationProtection AWS API Documentation
    #
    # @overload set_termination_protection(params = {})
    # @param [Hash] params ({})
    def set_termination_protection(params = {}, options = {})
      req = build_request(:set_termination_protection, params)
      req.send_request(options)
    end

    # Sets the Cluster$VisibleToAllUsers value, which determines whether the
    # cluster is visible to all IAM users of the AWS account associated with
    # the cluster. Only the IAM user who created the cluster or the AWS
    # account root user can call this action. The default value, `true`,
    # indicates that all IAM users in the AWS account can perform cluster
    # actions if they have the proper IAM policy permissions. If set to
    # `false`, only the IAM user that created the cluster can perform
    # actions. This action works on running clusters. You can override the
    # default `true` setting when you create a cluster by using the
    # `VisibleToAllUsers` parameter with `RunJobFlow`.
    #
    # @option params [required, Array<String>] :job_flow_ids
    #   The unique identifier of the job flow (cluster).
    #
    # @option params [required, Boolean] :visible_to_all_users
    #   A value of `true` indicates that all IAM users in the AWS account can
    #   perform cluster actions if they have the proper IAM policy
    #   permissions. This is the default. A value of `false` indicates that
    #   only the IAM user who created the cluster can perform actions.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.set_visible_to_all_users({
    #     job_flow_ids: ["XmlString"], # required
    #     visible_to_all_users: false, # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/SetVisibleToAllUsers AWS API Documentation
    #
    # @overload set_visible_to_all_users(params = {})
    # @param [Hash] params ({})
    def set_visible_to_all_users(params = {}, options = {})
      req = build_request(:set_visible_to_all_users, params)
      req.send_request(options)
    end

    # Starts a notebook execution.
    #
    # @option params [required, String] :editor_id
    #   The unique identifier of the EMR Notebook to use for notebook
    #   execution.
    #
    # @option params [required, String] :relative_path
    #   The path and file name of the notebook file for this execution,
    #   relative to the path specified for the EMR Notebook. For example, if
    #   you specify a path of `s3://MyBucket/MyNotebooks` when you create an
    #   EMR Notebook for a notebook with an ID of
    #   `e-ABCDEFGHIJK1234567890ABCD` (the `EditorID` of this request), and
    #   you specify a `RelativePath` of
    #   `my_notebook_executions/notebook_execution.ipynb`, the location of the
    #   file for the notebook execution is
    #   `s3://MyBucket/MyNotebooks/e-ABCDEFGHIJK1234567890ABCD/my_notebook_executions/notebook_execution.ipynb`.
    #
    # @option params [String] :notebook_execution_name
    #   An optional name for the notebook execution.
    #
    # @option params [String] :notebook_params
    #   Input parameters in JSON format passed to the EMR Notebook at runtime
    #   for execution.
    #
    # @option params [required, Types::ExecutionEngineConfig] :execution_engine
    #   Specifies the execution engine (cluster) that runs the notebook
    #   execution.
    #
    # @option params [required, String] :service_role
    #   The name or ARN of the IAM role that is used as the service role for
    #   Amazon EMR (the EMR role) for the notebook execution.
    #
    # @option params [String] :notebook_instance_security_group_id
    #   The unique identifier of the Amazon EC2 security group to associate
    #   with the EMR Notebook for this notebook execution.
    #
    # @option params [Array<Types::Tag>] :tags
    #   A list of tags associated with a notebook execution. Tags are
    #   user-defined key value pairs that consist of a required key string
    #   with a maximum of 128 characters and an optional value string with a
    #   maximum of 256 characters.
    #
    # @return [Types::StartNotebookExecutionOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartNotebookExecutionOutput#notebook_execution_id #notebook_execution_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_notebook_execution({
    #     editor_id: "XmlStringMaxLen256", # required
    #     relative_path: "XmlString", # required
    #     notebook_execution_name: "XmlStringMaxLen256",
    #     notebook_params: "XmlString",
    #     execution_engine: { # required
    #       id: "XmlStringMaxLen256", # required
    #       type: "EMR", # accepts EMR
    #       master_instance_security_group_id: "XmlStringMaxLen256",
    #     },
    #     service_role: "XmlString", # required
    #     notebook_instance_security_group_id: "XmlStringMaxLen256",
    #     tags: [
    #       {
    #         key: "String",
    #         value: "String",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.notebook_execution_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/StartNotebookExecution AWS API Documentation
    #
    # @overload start_notebook_execution(params = {})
    # @param [Hash] params ({})
    def start_notebook_execution(params = {}, options = {})
      req = build_request(:start_notebook_execution, params)
      req.send_request(options)
    end

    # Stops a notebook execution.
    #
    # @option params [required, String] :notebook_execution_id
    #   The unique identifier of the notebook execution.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_notebook_execution({
    #     notebook_execution_id: "XmlStringMaxLen256", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/StopNotebookExecution AWS API Documentation
    #
    # @overload stop_notebook_execution(params = {})
    # @param [Hash] params ({})
    def stop_notebook_execution(params = {}, options = {})
      req = build_request(:stop_notebook_execution, params)
      req.send_request(options)
    end

    # TerminateJobFlows shuts a list of clusters (job flows) down. When a
    # job flow is shut down, any step not yet completed is canceled and the
    # EC2 instances on which the cluster is running are stopped. Any log
    # files not already saved are uploaded to Amazon S3 if a LogUri was
    # specified when the cluster was created.
    #
    # The maximum number of clusters allowed is 10. The call to
    # `TerminateJobFlows` is asynchronous. Depending on the configuration of
    # the cluster, it may take up to 1-5 minutes for the cluster to
    # completely terminate and release allocated resources, such as Amazon
    # EC2 instances.
    #
    # @option params [required, Array<String>] :job_flow_ids
    #   A list of job flows to be shutdown.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.terminate_job_flows({
    #     job_flow_ids: ["XmlString"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/TerminateJobFlows AWS API Documentation
    #
    # @overload terminate_job_flows(params = {})
    # @param [Hash] params ({})
    def terminate_job_flows(params = {}, options = {})
      req = build_request(:terminate_job_flows, params)
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
      context[:gem_name] = 'aws-sdk-emr'
      context[:gem_version] = '1.39.0'
      Seahorse::Client::Request.new(handlers, context)
    end

    # Polls an API operation until a resource enters a desired state.
    #
    # ## Basic Usage
    #
    # A waiter will call an API operation until:
    #
    # * It is successful
    # * It enters a terminal state
    # * It makes the maximum number of attempts
    #
    # In between attempts, the waiter will sleep.
    #
    #     # polls in a loop, sleeping between attempts
    #     client.wait_until(waiter_name, params)
    #
    # ## Configuration
    #
    # You can configure the maximum number of polling attempts, and the
    # delay (in seconds) between each polling attempt. You can pass
    # configuration as the final arguments hash.
    #
    #     # poll for ~25 seconds
    #     client.wait_until(waiter_name, params, {
    #       max_attempts: 5,
    #       delay: 5,
    #     })
    #
    # ## Callbacks
    #
    # You can be notified before each polling attempt and before each
    # delay. If you throw `:success` or `:failure` from these callbacks,
    # it will terminate the waiter.
    #
    #     started_at = Time.now
    #     client.wait_until(waiter_name, params, {
    #
    #       # disable max attempts
    #       max_attempts: nil,
    #
    #       # poll for 1 hour, instead of a number of attempts
    #       before_wait: -> (attempts, response) do
    #         throw :failure if Time.now - started_at > 3600
    #       end
    #     })
    #
    # ## Handling Errors
    #
    # When a waiter is unsuccessful, it will raise an error.
    # All of the failure errors extend from
    # {Aws::Waiters::Errors::WaiterFailed}.
    #
    #     begin
    #       client.wait_until(...)
    #     rescue Aws::Waiters::Errors::WaiterFailed
    #       # resource did not enter the desired state in time
    #     end
    #
    # ## Valid Waiters
    #
    # The following table lists the valid waiter names, the operations they call,
    # and the default `:delay` and `:max_attempts` values.
    #
    # | waiter_name        | params                    | :delay   | :max_attempts |
    # | ------------------ | ------------------------- | -------- | ------------- |
    # | cluster_running    | {Client#describe_cluster} | 30       | 60            |
    # | cluster_terminated | {Client#describe_cluster} | 30       | 60            |
    # | step_complete      | {Client#describe_step}    | 30       | 60            |
    #
    # @raise [Errors::FailureStateError] Raised when the waiter terminates
    #   because the waiter has entered a state that it will not transition
    #   out of, preventing success.
    #
    # @raise [Errors::TooManyAttemptsError] Raised when the configured
    #   maximum number of attempts have been made, and the waiter is not
    #   yet successful.
    #
    # @raise [Errors::UnexpectedError] Raised when an error is encounted
    #   while polling for a resource that is not expected.
    #
    # @raise [Errors::NoSuchWaiterError] Raised when you request to wait
    #   for an unknown state.
    #
    # @return [Boolean] Returns `true` if the waiter was successful.
    # @param [Symbol] waiter_name
    # @param [Hash] params ({})
    # @param [Hash] options ({})
    # @option options [Integer] :max_attempts
    # @option options [Integer] :delay
    # @option options [Proc] :before_attempt
    # @option options [Proc] :before_wait
    def wait_until(waiter_name, params = {}, options = {})
      w = waiter(waiter_name, options)
      yield(w.waiter) if block_given? # deprecated
      w.wait(params)
    end

    # @api private
    # @deprecated
    def waiter_names
      waiters.keys
    end

    private

    # @param [Symbol] waiter_name
    # @param [Hash] options ({})
    def waiter(waiter_name, options = {})
      waiter_class = waiters[waiter_name]
      if waiter_class
        waiter_class.new(options.merge(client: self))
      else
        raise Aws::Waiters::Errors::NoSuchWaiterError.new(waiter_name, waiters.keys)
      end
    end

    def waiters
      {
        cluster_running: Waiters::ClusterRunning,
        cluster_terminated: Waiters::ClusterTerminated,
        step_complete: Waiters::StepComplete
      }
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
