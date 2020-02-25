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
require 'aws-sdk-core/plugins/client_metrics.rb'
require 'aws-sdk-core/plugins/client_metrics_send_plugin.rb'
require 'aws-sdk-core/plugins/transfer_encoding.rb'
require 'aws-sdk-core/plugins/signature_v4.rb'
require 'aws-sdk-core/plugins/protocols/json_rpc.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:computeoptimizer)

module Aws::ComputeOptimizer
  class Client < Seahorse::Client::Base

    include Aws::ClientStubs

    @identifier = :computeoptimizer

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
    add_plugin(Aws::Plugins::ClientMetrics)
    add_plugin(Aws::Plugins::ClientMetricsSendPlugin)
    add_plugin(Aws::Plugins::TransferEncoding)
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
    #     * `Aws::InstanceProfileCredentials` - Used for loading credentials
    #       from an EC2 IMDS on an EC2 instance.
    #
    #     * `Aws::SharedCredentials` - Used for loading credentials from a
    #       shared file, such as `~/.aws/config`.
    #
    #     * `Aws::AssumeRoleCredentials` - Used when you need to assume a role.
    #
    #     When `:credentials` are not configured directly, the following
    #     locations will be searched for credentials:
    #
    #     * `Aws.config[:credentials]`
    #     * The `:access_key_id`, `:secret_access_key`, and `:session_token` options.
    #     * ENV['AWS_ACCESS_KEY_ID'], ENV['AWS_SECRET_ACCESS_KEY']
    #     * `~/.aws/credentials`
    #     * `~/.aws/config`
    #     * EC2 IMDS instance profile - When used by default, the timeouts are
    #       very aggressive. Construct and pass an instance of
    #       `Aws::InstanceProfileCredentails` to enable retries and extended
    #       timeouts.
    #
    #   @option options [required, String] :region
    #     The AWS region to connect to.  The configured `:region` is
    #     used to determine the service `:endpoint`. When not passed,
    #     a default `:region` is search for in the following locations:
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
    #   @option options [Boolean] :disable_host_prefix_injection (false)
    #     Set to true to disable SDK automatically adding host prefix
    #     to default service endpoint when available.
    #
    #   @option options [String] :endpoint
    #     The client endpoint is normally constructed from the `:region`
    #     option. You should only configure an `:endpoint` when connecting
    #     to test endpoints. This should be avalid HTTP(S) URI.
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
    #     When set to `true`, endpoint discovery will be enabled for operations when available. Defaults to `false`.
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
    #   @option options [String] :profile ("default")
    #     Used when loading credentials from the shared credentials file
    #     at HOME/.aws/credentials.  When not specified, 'default' is used.
    #
    #   @option options [Float] :retry_base_delay (0.3)
    #     The base delay in seconds used by the default backoff function.
    #
    #   @option options [Symbol] :retry_jitter (:none)
    #     A delay randomiser function used by the default backoff function. Some predefined functions can be referenced by name - :none, :equal, :full, otherwise a Proc that takes and returns a number.
    #
    #     @see https://www.awsarchitectureblog.com/2015/03/backoff.html
    #
    #   @option options [Integer] :retry_limit (3)
    #     The maximum number of times to retry failed requests.  Only
    #     ~ 500 level server errors and certain ~ 400 level client errors
    #     are retried.  Generally, these are throttling errors, data
    #     checksum errors, networking errors, timeout errors and auth
    #     errors from expired credentials.
    #
    #   @option options [Integer] :retry_max_delay (0)
    #     The maximum number of seconds to delay between retries (0 for no limit) used by the default backoff function.
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
    #     seconds to wait when opening a HTTP session before rasing a
    #     `Timeout::Error`.
    #
    #   @option options [Integer] :http_read_timeout (60) The default
    #     number of seconds to wait for response data.  This value can
    #     safely be set
    #     per-request on the session yeidled by {#session_for}.
    #
    #   @option options [Float] :http_idle_timeout (5) The number of
    #     seconds a connection is allowed to sit idble before it is
    #     considered stale.  Stale connections are closed and removed
    #     from the pool before making a request.
    #
    #   @option options [Float] :http_continue_timeout (1) The number of
    #     seconds to wait for a 100-continue response before sending the
    #     request body.  This option has no effect unless the request has
    #     "Expect" header set to "100-continue".  Defaults to `nil` which
    #     disables this behaviour.  This value can safely be set per
    #     request on the session yeidled by {#session_for}.
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

    # Returns Auto Scaling group recommendations.
    #
    # AWS Compute Optimizer currently generates recommendations for Auto
    # Scaling groups that are configured to run instances of the M, C, R, T,
    # and X instance families. The service does not generate recommendations
    # for Auto Scaling groups that have a scaling policy attached to them,
    # or that do not have the same values for desired, minimum, and maximum
    # capacity. In order for Compute Optimizer to analyze your Auto Scaling
    # groups, they must be of a fixed size. For more information, see the
    # [AWS Compute Optimizer User Guide][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/compute-optimizer/latest/ug/what-is.html
    #
    # @option params [Array<String>] :account_ids
    #   The AWS account IDs for which to return Auto Scaling group
    #   recommendations.
    #
    #   Only one account ID can be specified per request.
    #
    # @option params [Array<String>] :auto_scaling_group_arns
    #   The Amazon Resource Name (ARN) of the Auto Scaling groups for which to
    #   return recommendations.
    #
    # @option params [String] :next_token
    #   The token to advance to the next page of Auto Scaling group
    #   recommendations.
    #
    # @option params [Integer] :max_results
    #   The maximum number of Auto Scaling group recommendations to return
    #   with a single call.
    #
    #   To retrieve the remaining results, make another call with the returned
    #   `NextToken` value.
    #
    # @option params [Array<Types::Filter>] :filters
    #   An array of objects that describe a filter that returns a more
    #   specific list of Auto Scaling group recommendations.
    #
    # @return [Types::GetAutoScalingGroupRecommendationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAutoScalingGroupRecommendationsResponse#next_token #next_token} => String
    #   * {Types::GetAutoScalingGroupRecommendationsResponse#auto_scaling_group_recommendations #auto_scaling_group_recommendations} => Array&lt;Types::AutoScalingGroupRecommendation&gt;
    #   * {Types::GetAutoScalingGroupRecommendationsResponse#errors #errors} => Array&lt;Types::GetRecommendationError&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_auto_scaling_group_recommendations({
    #     account_ids: ["AccountId"],
    #     auto_scaling_group_arns: ["AutoScalingGroupArn"],
    #     next_token: "NextToken",
    #     max_results: 1,
    #     filters: [
    #       {
    #         name: "Finding", # accepts Finding, RecommendationSourceType
    #         values: ["FilterValue"],
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.auto_scaling_group_recommendations #=> Array
    #   resp.auto_scaling_group_recommendations[0].account_id #=> String
    #   resp.auto_scaling_group_recommendations[0].auto_scaling_group_arn #=> String
    #   resp.auto_scaling_group_recommendations[0].auto_scaling_group_name #=> String
    #   resp.auto_scaling_group_recommendations[0].finding #=> String, one of "Underprovisioned", "Overprovisioned", "Optimized", "NotOptimized"
    #   resp.auto_scaling_group_recommendations[0].utilization_metrics #=> Array
    #   resp.auto_scaling_group_recommendations[0].utilization_metrics[0].name #=> String, one of "Cpu", "Memory"
    #   resp.auto_scaling_group_recommendations[0].utilization_metrics[0].statistic #=> String, one of "Maximum", "Average"
    #   resp.auto_scaling_group_recommendations[0].utilization_metrics[0].value #=> Float
    #   resp.auto_scaling_group_recommendations[0].look_back_period_in_days #=> Float
    #   resp.auto_scaling_group_recommendations[0].current_configuration.desired_capacity #=> Integer
    #   resp.auto_scaling_group_recommendations[0].current_configuration.min_size #=> Integer
    #   resp.auto_scaling_group_recommendations[0].current_configuration.max_size #=> Integer
    #   resp.auto_scaling_group_recommendations[0].current_configuration.instance_type #=> String
    #   resp.auto_scaling_group_recommendations[0].recommendation_options #=> Array
    #   resp.auto_scaling_group_recommendations[0].recommendation_options[0].configuration.desired_capacity #=> Integer
    #   resp.auto_scaling_group_recommendations[0].recommendation_options[0].configuration.min_size #=> Integer
    #   resp.auto_scaling_group_recommendations[0].recommendation_options[0].configuration.max_size #=> Integer
    #   resp.auto_scaling_group_recommendations[0].recommendation_options[0].configuration.instance_type #=> String
    #   resp.auto_scaling_group_recommendations[0].recommendation_options[0].projected_utilization_metrics #=> Array
    #   resp.auto_scaling_group_recommendations[0].recommendation_options[0].projected_utilization_metrics[0].name #=> String, one of "Cpu", "Memory"
    #   resp.auto_scaling_group_recommendations[0].recommendation_options[0].projected_utilization_metrics[0].statistic #=> String, one of "Maximum", "Average"
    #   resp.auto_scaling_group_recommendations[0].recommendation_options[0].projected_utilization_metrics[0].value #=> Float
    #   resp.auto_scaling_group_recommendations[0].recommendation_options[0].performance_risk #=> Float
    #   resp.auto_scaling_group_recommendations[0].recommendation_options[0].rank #=> Integer
    #   resp.auto_scaling_group_recommendations[0].last_refresh_timestamp #=> Time
    #   resp.errors #=> Array
    #   resp.errors[0].identifier #=> String
    #   resp.errors[0].code #=> String
    #   resp.errors[0].message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/GetAutoScalingGroupRecommendations AWS API Documentation
    #
    # @overload get_auto_scaling_group_recommendations(params = {})
    # @param [Hash] params ({})
    def get_auto_scaling_group_recommendations(params = {}, options = {})
      req = build_request(:get_auto_scaling_group_recommendations, params)
      req.send_request(options)
    end

    # Returns Amazon EC2 instance recommendations.
    #
    # AWS Compute Optimizer currently generates recommendations for Amazon
    # Elastic Compute Cloud (Amazon EC2) and Amazon EC2 Auto Scaling. It
    # generates recommendations for M, C, R, T, and X instance families. For
    # more information, see the [AWS Compute Optimizer User Guide][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/compute-optimizer/latest/ug/what-is.html
    #
    # @option params [Array<String>] :instance_arns
    #   The Amazon Resource Name (ARN) of the instances for which to return
    #   recommendations.
    #
    # @option params [String] :next_token
    #   The token to advance to the next page of instance recommendations.
    #
    # @option params [Integer] :max_results
    #   The maximum number of instance recommendations to return with a single
    #   call.
    #
    #   To retrieve the remaining results, make another call with the returned
    #   `NextToken` value.
    #
    # @option params [Array<Types::Filter>] :filters
    #   An array of objects that describe a filter that returns a more
    #   specific list of instance recommendations.
    #
    # @option params [Array<String>] :account_ids
    #   The AWS account IDs for which to return instance recommendations.
    #
    #   Only one account ID can be specified per request.
    #
    # @return [Types::GetEC2InstanceRecommendationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetEC2InstanceRecommendationsResponse#next_token #next_token} => String
    #   * {Types::GetEC2InstanceRecommendationsResponse#instance_recommendations #instance_recommendations} => Array&lt;Types::InstanceRecommendation&gt;
    #   * {Types::GetEC2InstanceRecommendationsResponse#errors #errors} => Array&lt;Types::GetRecommendationError&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_ec2_instance_recommendations({
    #     instance_arns: ["InstanceArn"],
    #     next_token: "NextToken",
    #     max_results: 1,
    #     filters: [
    #       {
    #         name: "Finding", # accepts Finding, RecommendationSourceType
    #         values: ["FilterValue"],
    #       },
    #     ],
    #     account_ids: ["AccountId"],
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.instance_recommendations #=> Array
    #   resp.instance_recommendations[0].instance_arn #=> String
    #   resp.instance_recommendations[0].account_id #=> String
    #   resp.instance_recommendations[0].instance_name #=> String
    #   resp.instance_recommendations[0].current_instance_type #=> String
    #   resp.instance_recommendations[0].finding #=> String, one of "Underprovisioned", "Overprovisioned", "Optimized", "NotOptimized"
    #   resp.instance_recommendations[0].utilization_metrics #=> Array
    #   resp.instance_recommendations[0].utilization_metrics[0].name #=> String, one of "Cpu", "Memory"
    #   resp.instance_recommendations[0].utilization_metrics[0].statistic #=> String, one of "Maximum", "Average"
    #   resp.instance_recommendations[0].utilization_metrics[0].value #=> Float
    #   resp.instance_recommendations[0].look_back_period_in_days #=> Float
    #   resp.instance_recommendations[0].recommendation_options #=> Array
    #   resp.instance_recommendations[0].recommendation_options[0].instance_type #=> String
    #   resp.instance_recommendations[0].recommendation_options[0].projected_utilization_metrics #=> Array
    #   resp.instance_recommendations[0].recommendation_options[0].projected_utilization_metrics[0].name #=> String, one of "Cpu", "Memory"
    #   resp.instance_recommendations[0].recommendation_options[0].projected_utilization_metrics[0].statistic #=> String, one of "Maximum", "Average"
    #   resp.instance_recommendations[0].recommendation_options[0].projected_utilization_metrics[0].value #=> Float
    #   resp.instance_recommendations[0].recommendation_options[0].performance_risk #=> Float
    #   resp.instance_recommendations[0].recommendation_options[0].rank #=> Integer
    #   resp.instance_recommendations[0].recommendation_sources #=> Array
    #   resp.instance_recommendations[0].recommendation_sources[0].recommendation_source_arn #=> String
    #   resp.instance_recommendations[0].recommendation_sources[0].recommendation_source_type #=> String, one of "Ec2Instance", "AutoScalingGroup"
    #   resp.instance_recommendations[0].last_refresh_timestamp #=> Time
    #   resp.errors #=> Array
    #   resp.errors[0].identifier #=> String
    #   resp.errors[0].code #=> String
    #   resp.errors[0].message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/GetEC2InstanceRecommendations AWS API Documentation
    #
    # @overload get_ec2_instance_recommendations(params = {})
    # @param [Hash] params ({})
    def get_ec2_instance_recommendations(params = {}, options = {})
      req = build_request(:get_ec2_instance_recommendations, params)
      req.send_request(options)
    end

    # Returns the projected utilization metrics of Amazon EC2 instance
    # recommendations.
    #
    # @option params [required, String] :instance_arn
    #   The Amazon Resource Name (ARN) of the instances for which to return
    #   recommendation projected metrics.
    #
    # @option params [required, String] :stat
    #   The statistic of the projected metrics.
    #
    # @option params [required, Integer] :period
    #   The granularity, in seconds, of the projected metrics data points.
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :start_time
    #   The time stamp of the first projected metrics data point to return.
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :end_time
    #   The time stamp of the last projected metrics data point to return.
    #
    # @return [Types::GetEC2RecommendationProjectedMetricsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetEC2RecommendationProjectedMetricsResponse#recommended_option_projected_metrics #recommended_option_projected_metrics} => Array&lt;Types::RecommendedOptionProjectedMetric&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_ec2_recommendation_projected_metrics({
    #     instance_arn: "InstanceArn", # required
    #     stat: "Maximum", # required, accepts Maximum, Average
    #     period: 1, # required
    #     start_time: Time.now, # required
    #     end_time: Time.now, # required
    #   })
    #
    # @example Response structure
    #
    #   resp.recommended_option_projected_metrics #=> Array
    #   resp.recommended_option_projected_metrics[0].recommended_instance_type #=> String
    #   resp.recommended_option_projected_metrics[0].rank #=> Integer
    #   resp.recommended_option_projected_metrics[0].projected_metrics #=> Array
    #   resp.recommended_option_projected_metrics[0].projected_metrics[0].name #=> String, one of "Cpu", "Memory"
    #   resp.recommended_option_projected_metrics[0].projected_metrics[0].timestamps #=> Array
    #   resp.recommended_option_projected_metrics[0].projected_metrics[0].timestamps[0] #=> Time
    #   resp.recommended_option_projected_metrics[0].projected_metrics[0].values #=> Array
    #   resp.recommended_option_projected_metrics[0].projected_metrics[0].values[0] #=> Float
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/GetEC2RecommendationProjectedMetrics AWS API Documentation
    #
    # @overload get_ec2_recommendation_projected_metrics(params = {})
    # @param [Hash] params ({})
    def get_ec2_recommendation_projected_metrics(params = {}, options = {})
      req = build_request(:get_ec2_recommendation_projected_metrics, params)
      req.send_request(options)
    end

    # Returns the enrollment (opt in) status of an account to the AWS
    # Compute Optimizer service.
    #
    # If the account is a master account of an organization, this operation
    # also confirms the enrollment status of member accounts within the
    # organization.
    #
    # @return [Types::GetEnrollmentStatusResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetEnrollmentStatusResponse#status #status} => String
    #   * {Types::GetEnrollmentStatusResponse#status_reason #status_reason} => String
    #   * {Types::GetEnrollmentStatusResponse#member_accounts_enrolled #member_accounts_enrolled} => Boolean
    #
    # @example Response structure
    #
    #   resp.status #=> String, one of "Active", "Inactive", "Pending", "Failed"
    #   resp.status_reason #=> String
    #   resp.member_accounts_enrolled #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/GetEnrollmentStatus AWS API Documentation
    #
    # @overload get_enrollment_status(params = {})
    # @param [Hash] params ({})
    def get_enrollment_status(params = {}, options = {})
      req = build_request(:get_enrollment_status, params)
      req.send_request(options)
    end

    # Returns the optimization findings for an account.
    #
    # For example, it returns the number of Amazon EC2 instances in an
    # account that are under-provisioned, over-provisioned, or optimized. It
    # also returns the number of Auto Scaling groups in an account that are
    # not optimized, or optimized.
    #
    # @option params [Array<String>] :account_ids
    #   The AWS account IDs for which to return recommendation summaries.
    #
    #   Only one account ID can be specified per request.
    #
    # @option params [String] :next_token
    #   The token to advance to the next page of recommendation summaries.
    #
    # @option params [Integer] :max_results
    #   The maximum number of recommendation summaries to return with a single
    #   call.
    #
    #   To retrieve the remaining results, make another call with the returned
    #   `NextToken` value.
    #
    # @return [Types::GetRecommendationSummariesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetRecommendationSummariesResponse#next_token #next_token} => String
    #   * {Types::GetRecommendationSummariesResponse#recommendation_summaries #recommendation_summaries} => Array&lt;Types::RecommendationSummary&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_recommendation_summaries({
    #     account_ids: ["AccountId"],
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.recommendation_summaries #=> Array
    #   resp.recommendation_summaries[0].summaries #=> Array
    #   resp.recommendation_summaries[0].summaries[0].name #=> String, one of "Underprovisioned", "Overprovisioned", "Optimized", "NotOptimized"
    #   resp.recommendation_summaries[0].summaries[0].value #=> Float
    #   resp.recommendation_summaries[0].recommendation_resource_type #=> String, one of "Ec2Instance", "AutoScalingGroup"
    #   resp.recommendation_summaries[0].account_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/GetRecommendationSummaries AWS API Documentation
    #
    # @overload get_recommendation_summaries(params = {})
    # @param [Hash] params ({})
    def get_recommendation_summaries(params = {}, options = {})
      req = build_request(:get_recommendation_summaries, params)
      req.send_request(options)
    end

    # Updates the enrollment (opt in) status of an account to the AWS
    # Compute Optimizer service.
    #
    # If the account is a master account of an organization, this operation
    # can also enroll member accounts within the organization.
    #
    # @option params [required, String] :status
    #   The new enrollment status of the account.
    #
    #   Accepted options are `Active` or `Inactive`. You will get an error if
    #   `Pending` or `Failed` are specified.
    #
    # @option params [Boolean] :include_member_accounts
    #   Indicates whether to enroll member accounts within the organization,
    #   if the account is a master account of an organization.
    #
    # @return [Types::UpdateEnrollmentStatusResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateEnrollmentStatusResponse#status #status} => String
    #   * {Types::UpdateEnrollmentStatusResponse#status_reason #status_reason} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_enrollment_status({
    #     status: "Active", # required, accepts Active, Inactive, Pending, Failed
    #     include_member_accounts: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.status #=> String, one of "Active", "Inactive", "Pending", "Failed"
    #   resp.status_reason #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/UpdateEnrollmentStatus AWS API Documentation
    #
    # @overload update_enrollment_status(params = {})
    # @param [Hash] params ({})
    def update_enrollment_status(params = {}, options = {})
      req = build_request(:update_enrollment_status, params)
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
      context[:gem_name] = 'aws-sdk-computeoptimizer'
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
